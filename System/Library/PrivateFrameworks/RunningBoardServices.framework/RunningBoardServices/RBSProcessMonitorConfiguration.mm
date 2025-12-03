@interface RBSProcessMonitorConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesProcess:(id)process;
- (NSArray)predicates;
- (NSString)debugDescription;
- (NSString)description;
- (RBSProcessMonitorConfiguration)init;
- (RBSProcessMonitorConfiguration)initWithRBSXPCCoder:(id)coder;
- (RBSProcessStateDescriptor)stateDescriptor;
- (_DWORD)_initWithIdentifier:(int)identifier andPid:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)updateHandler;
- (os_unfair_lock_s)preventLaunchUpdateHandler;
- (unint64_t)events;
- (unsigned)serviceClass;
- (void)_validate;
- (void)encodeWithRBSXPCCoder:(id)coder;
- (void)setEvents:(unint64_t)events;
- (void)setPredicates:(id)predicates;
- (void)setPreventLaunchUpdateHandle:(id)handle;
- (void)setPreventLaunchUpdateHandler:(void *)handler;
- (void)setServiceClass:(unsigned int)class;
- (void)setStateDescriptor:(id)descriptor;
- (void)setUpdateHandler:(id)handler;
@end

@implementation RBSProcessMonitorConfiguration

- (RBSProcessStateDescriptor)stateDescriptor
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_stateDescriptor;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (RBSProcessMonitorConfiguration)init
{
  objc_opt_self();
  add_explicit = atomic_fetch_add_explicit(&_nextIdentifier___count, 1uLL, memory_order_relaxed);
  v4 = getpid();

  return [(RBSProcessMonitorConfiguration *)self _initWithIdentifier:v4 andPid:?];
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  desc = self->_desc;
  if (!desc)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"M%d-%llu", self->_clientPid, self->_identifier];
    v5 = self->_desc;
    self->_desc = v4;

    desc = self->_desc;
  }

  v6 = desc;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)updateHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x193AD5470](self->_updateHandler);
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x193AD5470](v3);

  return v4;
}

- (unsigned)serviceClass
{
  os_unfair_lock_lock(&self->_lock);
  serviceClass = self->_serviceClass;
  os_unfair_lock_unlock(&self->_lock);
  return serviceClass;
}

- (NSArray)predicates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_predicates;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)events
{
  os_unfair_lock_lock(&self->_lock);
  events = self->_events;
  os_unfair_lock_unlock(&self->_lock);
  return events;
}

- (void)_validate
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 16));
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = *(self + 48);
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v16 + 1) + 8 * i);
          v8 = +[RBSProcessBKSLegacyPredicate legacyPredicate];

          if (v7 == v8)
          {
            v9 = *(self + 36);
            if (v9 >= 0x11)
            {
              v9 = 17;
            }

            *(self + 36) = v9;
            goto LABEL_14;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    HIDWORD(v11) = *(self + 36) - 9;
    LODWORD(v11) = HIDWORD(v11);
    v10 = v11 >> 2;
    v12 = v10 > 6;
    v13 = (1 << v10) & 0x5D;
    if (v12 || v13 == 0)
    {
      *(self + 36) = 17;
    }

    os_unfair_lock_unlock((self + 16));
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = [(RBSProcessMonitorConfiguration *)self description];
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [objc_opt_class() description];
  serviceClass = self->_serviceClass;
  v7 = [(NSArray *)self->_predicates componentsJoinedByString:@", "];
  v8 = [(RBSProcessStateDescriptor *)self->_stateDescriptor debugDescription];
  v9 = [v4 initWithFormat:@"<%@| id:%@ qos:%u predicates:[%@] descriptor:%@ events:0x%x>", v5, v3, serviceClass, v7, v8, self->_events];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)setPredicates:(id)predicates
{
  predicatesCopy = predicates;
  os_unfair_lock_lock(&self->_lock);
  v5 = [predicatesCopy copy];

  predicates = self->_predicates;
  self->_predicates = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setStateDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  os_unfair_lock_lock(&self->_lock);
  v5 = [descriptorCopy copy];

  stateDescriptor = self->_stateDescriptor;
  self->_stateDescriptor = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setServiceClass:(unsigned int)class
{
  os_unfair_lock_lock(&self->_lock);
  self->_serviceClass = class;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setEvents:(unint64_t)events
{
  os_unfair_lock_lock(&self->_lock);
  self->_events = events;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUpdateHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = [handlerCopy copy];

  updateHandler = self->_updateHandler;
  self->_updateHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPreventLaunchUpdateHandle:(id)handle
{
  handleCopy = handle;
  os_unfair_lock_lock(&self->_lock);
  v5 = [handleCopy copy];

  preventLaunchUpdateHandler = self->_preventLaunchUpdateHandler;
  self->_preventLaunchUpdateHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)matchesProcess:(id)process
{
  v18 = *MEMORY[0x1E69E9840];
  processCopy = process;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lastMatch);
  v6 = [WeakRetained isEqual:processCopy];

  if (v6)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_predicates;
    v7 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v13 + 1) + 8 * i) matchesProcess:{processCopy, v13}])
          {
            objc_storeWeak(&self->_lastMatch, processCopy);
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  os_unfair_lock_unlock(&self->_lock);

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (identifier = self->_identifier, identifier == [(RBSProcessMonitorConfiguration *)equalCopy identifier]))
    {
      if (equalCopy)
      {
        clientPid = equalCopy->_clientPid;
      }

      else
      {
        clientPid = 0;
      }

      v8 = self->_clientPid == clientPid;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (RBSProcessMonitorConfiguration)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"_identifier"])
  {
    if ([coderCopy containsValueForKey:@"_clientPid"])
    {
      [(RBSProcessMonitorConfiguration *)coderCopy initWithRBSXPCCoder:&v8];
      self = v8;
      v6 = v8;
      goto LABEL_8;
    }

    v5 = rbs_monitor_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessMonitorConfiguration initWithRBSXPCCoder:v5];
    }
  }

  else
  {
    v5 = rbs_monitor_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessMonitorConfiguration initWithRBSXPCCoder:v5];
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (_DWORD)_initWithIdentifier:(int)identifier andPid:
{
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = RBSProcessMonitorConfiguration;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = v5;
  if (v5)
  {
    v5[4] = 0;
    *(v5 + 5) = a2;
    v5[8] = identifier;
    v7 = *(v5 + 7);
    *(v5 + 7) = 0;

    *(v6 + 8) = 0;
    v6[9] = 17;
  }

  return v6;
}

- (os_unfair_lock_s)preventLaunchUpdateHandler
{
  selfCopy = self;
  if (self)
  {
    os_unfair_lock_lock(self + 4);
    v2 = MEMORY[0x193AD5470](*&selfCopy[20]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(selfCopy + 4);
    selfCopy = MEMORY[0x193AD5470](v2);
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RBSProcessMonitorConfiguration allocWithZone:zone];
  identifier = [(RBSProcessMonitorConfiguration *)self identifier];
  if (self)
  {
    clientPid = self->_clientPid;
  }

  else
  {
    clientPid = 0;
  }

  v7 = [(RBSProcessMonitorConfiguration *)v4 _initWithIdentifier:identifier andPid:clientPid];
  [v7 setServiceClass:{-[RBSProcessMonitorConfiguration serviceClass](self, "serviceClass")}];
  predicates = [(RBSProcessMonitorConfiguration *)self predicates];
  [v7 setPredicates:predicates];

  stateDescriptor = [(RBSProcessMonitorConfiguration *)self stateDescriptor];
  [v7 setStateDescriptor:stateDescriptor];

  [v7 setEvents:{-[RBSProcessMonitorConfiguration events](self, "events")}];
  updateHandler = [(RBSProcessMonitorConfiguration *)self updateHandler];
  [v7 setUpdateHandler:updateHandler];

  [(RBSProcessMonitorConfiguration *)v7 _validate];
  return v7;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [(RBSProcessMonitorConfiguration *)self _validate];
  if (self)
  {
    clientPid = self->_clientPid;
  }

  else
  {
    clientPid = 0;
  }

  [coderCopy encodeInt64:clientPid forKey:@"_clientPid"];
  [coderCopy encodeInt64:-[RBSProcessMonitorConfiguration identifier](self forKey:{"identifier"), @"_identifier"}];
  [coderCopy encodeInt64:-[RBSProcessMonitorConfiguration events](self forKey:{"events"), @"_events"}];
  [coderCopy encodeInt64:-[RBSProcessMonitorConfiguration serviceClass](self forKey:{"serviceClass"), @"_serviceClass"}];
  predicates = [(RBSProcessMonitorConfiguration *)self predicates];
  [coderCopy encodeObject:predicates forKey:@"_predicates"];

  stateDescriptor = [(RBSProcessMonitorConfiguration *)self stateDescriptor];
  [coderCopy encodeObject:stateDescriptor forKey:@"_stateDescriptor"];
}

- (void)setPreventLaunchUpdateHandler:(void *)handler
{
  if (handler)
  {
    objc_setProperty_nonatomic_copy(handler, newValue, newValue, 80);
  }
}

- (_DWORD)initWithRBSXPCCoder:(void *)a3 .cold.3(void *a1, void *a2, void *a3)
{
  v5 = -[RBSProcessMonitorConfiguration _initWithIdentifier:andPid:](a2, [a1 decodeInt64ForKey:@"_identifier"], objc_msgSend(a1, "decodeInt64ForKey:", @"_clientPid"));
  *a3 = v5;
  if (v5)
  {
    v5[4] = 0;
    v12 = v5;
    *(v5 + 8) = [a1 decodeInt64ForKey:@"_events"];
    *(v12 + 36) = [a1 decodeInt64ForKey:@"_serviceClass"];
    v7 = objc_opt_class();
    v8 = [a1 decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"_predicates"];
    v9 = *(v12 + 48);
    *(v12 + 48) = v8;

    v10 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"_stateDescriptor"];
    v11 = *(v12 + 56);
    *(v12 + 56) = v10;

    [(RBSProcessMonitorConfiguration *)v12 _validate];
    v5 = v12;
  }

  return v5;
}

@end