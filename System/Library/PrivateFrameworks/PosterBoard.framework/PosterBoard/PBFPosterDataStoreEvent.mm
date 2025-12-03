@interface PBFPosterDataStoreEvent
- (BOOL)couldRevert;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEvent:(id)event;
- (BOOL)isValidWithError:(id *)error;
- (BOOL)revert;
- (PBFPosterDataStoreEvent)init;
- (PBFPosterDataStoreEvent)initWithType:(id)type;
- (id)description;
- (unint64_t)hash;
- (void)dumpLongDescriptionWithPreamble:(id)preamble log:(id)log type:(unsigned __int8)type;
@end

@implementation PBFPosterDataStoreEvent

- (PBFPosterDataStoreEvent)initWithType:(id)type
{
  typeCopy = type;
  if ((PBFPosterDataStoreEventTypeIsValid(typeCopy) & 1) == 0)
  {
    [PBFPosterDataStoreEvent initWithType:a2];
  }

  v12.receiver = self;
  v12.super_class = PBFPosterDataStoreEvent;
  v7 = [(PBFPosterDataStoreEvent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_eventType, type);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = uUID;
  }

  return v8;
}

- (PBFPosterDataStoreEvent)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"PBFPosterDataStoreEvent.m";
    v17 = 1024;
    v18 = 85;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (unint64_t)hash
{
  v2 = [(NSUUID *)self->_uniqueIdentifier hash];
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) >> 27));
  return v3 ^ (v3 >> 31);
}

- (BOOL)isEqualToEvent:(id)event
{
  if (event == self)
  {
    return 1;
  }

  eventCopy = event;
  uniqueIdentifier = [(PBFPosterDataStoreEvent *)self uniqueIdentifier];
  uniqueIdentifier2 = [eventCopy uniqueIdentifier];

  LOBYTE(eventCopy) = BSEqualObjects();
  return eventCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && [(PBFPosterDataStoreEvent *)self isEqualToEvent:equalCopy];
  }

  return v7;
}

- (BOOL)couldRevert
{
  revertBlock = [(PBFPosterDataStoreEvent *)self revertBlock];
  v3 = revertBlock != 0;

  return v3;
}

- (BOOL)revert
{
  couldRevert = [(PBFPosterDataStoreEvent *)self couldRevert];
  if (couldRevert)
  {
    revertBlock = [(PBFPosterDataStoreEvent *)self revertBlock];
    v5 = revertBlock[2]();

    LOBYTE(couldRevert) = v5;
  }

  return couldRevert;
}

- (BOOL)isValidWithError:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (PBFPosterDataStoreEventTypeIsValid(self->_eventType))
  {
    v16 = @"eventDescription";
    v5 = [(PBFPosterDataStoreEvent *)self description];
    v6 = v5;
    v7 = @"(null)";
    if (v5)
    {
      v7 = v5;
    }

    v17 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    if ([(NSString *)self->_eventType isEqualToString:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"]|| [(NSString *)self->_eventType isEqualToString:@"PBFPosterDataStoreEventTypeExtensionsUpdated"]|| [(NSString *)self->_eventType isEqualToString:@"PBFPosterDataStoreEventTypePosterActivated"]|| [(NSString *)self->_eventType isEqualToString:@"PBFPosterDataStoreEventTypePosterSelected"])
    {
      if (*&self->_fromValue == 0 || (BSEqualObjects() & 1) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

    if (![(NSString *)self->_eventType isEqualToString:@"PBFPosterDataStoreEventTypePosterDeleted"])
    {
      if ([(NSString *)self->_eventType isEqualToString:@"PBFPosterDataStoreEventTypePosterAdded"])
      {
        if (!self->_toValue)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }

      if (![(NSString *)self->_eventType isEqualToString:@"PBFPosterDataStoreEventTypePosterUpdated"])
      {
        if ([(NSString *)self->_eventType isEqualToString:@"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated"]&& BSEqualStrings())
        {
LABEL_10:
          v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PBFPosterDataStoreEventErrorDomain" code:-3453 userInfo:v8];
          v10 = v9;
          v11 = v9 == 0;
          if (error && v9)
          {
            v12 = v9;
            v11 = 0;
            *error = v10;
          }

          goto LABEL_30;
        }

LABEL_29:
        v10 = 0;
        v11 = 1;
LABEL_30:

LABEL_31:
        return v11;
      }

      if (self->_toValue)
      {
        goto LABEL_29;
      }
    }

    if (!self->_fromValue)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

  if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    eventType = @"(null event type)";
    if (self->_eventType)
    {
      eventType = self->_eventType;
    }

    v18 = @"eventType";
    v19[0] = eventType;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v13 errorWithDomain:@"PBFPosterDataStoreEventErrorDomain" code:-3454 userInfo:v10];
    *error = v11 = 0;
    goto LABEL_31;
  }

  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_eventType withName:@"eventType"];
  v4 = [v3 appendBool:-[PBFPosterDataStoreEvent couldRevert](self withName:"couldRevert") ifEqualTo:{@"couldRevert", 1}];
  v5 = [v3 appendObject:self->_originatingRoleCoordinatorChange withName:@"_originatingRoleCoordinatorChange" skipIfNil:1];
  [v3 appendDictionarySection:self->_userInfo withName:@"userInfo" skipIfEmpty:1];
  if (self->_fromValue || self->_toValue)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __38__PBFPosterDataStoreEvent_description__block_invoke;
    v15 = &unk_2782C58B0;
    v16 = v3;
    selfCopy = self;
    [v16 appendBodySectionWithName:@"changes" multilinePrefix:@"\n" block:&v12];
  }

  v6 = [(PBFPosterDataStoreEvent *)self relatedProviders:v12];
  allObjects = [v6 allObjects];
  [v3 appendArraySection:allObjects withName:@"relatedProviders" skipIfEmpty:1];

  relatedPosters = [(PBFPosterDataStoreEvent *)self relatedPosters];
  allObjects2 = [relatedPosters allObjects];
  [v3 appendArraySection:allObjects2 withName:@"relatedPosters" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

- (void)dumpLongDescriptionWithPreamble:(id)preamble log:(id)log type:(unsigned __int8)type
{
  v74 = *MEMORY[0x277D85DE8];
  preambleCopy = preamble;
  logCopy = log;
  if (os_log_type_enabled(logCopy, type))
  {
    eventType = self->_eventType;
    *buf = 138543618;
    v68 = preambleCopy;
    v69 = 2114;
    v70 = eventType;
    _os_log_impl(&dword_21B526000, logCopy, type, "[%{public}@]\tEventType: %{public}@", buf, 0x16u);
  }

  v10 = logCopy;
  if (os_log_type_enabled(v10, type))
  {
    couldRevert = [(PBFPosterDataStoreEvent *)self couldRevert];
    *buf = 138543618;
    v68 = preambleCopy;
    v69 = 1024;
    LODWORD(v70) = couldRevert;
    _os_log_impl(&dword_21B526000, v10, type, "[%{public}@]\t\tcouldRevert: %{BOOL}u", buf, 0x12u);
  }

  if (self->_originatingRoleCoordinatorChange && os_log_type_enabled(v10, type))
  {
    originatingRoleCoordinatorChange = self->_originatingRoleCoordinatorChange;
    *buf = 138543618;
    v68 = preambleCopy;
    v69 = 2114;
    v70 = originatingRoleCoordinatorChange;
    _os_log_impl(&dword_21B526000, v10, type, "[%{public}@]\t\toriginatingRoleCoordinatorChange: %{public}@", buf, 0x16u);
  }

  selfCopy = self;
  if (self->_fromValue)
  {
    if (os_log_type_enabled(v10, type))
    {
      fromValue = self->_fromValue;
      *buf = 138543618;
      v68 = preambleCopy;
      v69 = 2114;
      v70 = fromValue;
      _os_log_impl(&dword_21B526000, v10, type, "[%{public}@]\t\tfromValue: %{public}@", buf, 0x16u);
    }

    if ([self->_fromValue conformsToProtocol:&unk_282D7B988])
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v14 = self->_fromValue;
      v15 = [v14 countByEnumeratingWithState:&v60 objects:v73 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v61;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v61 != v18)
            {
              objc_enumerationMutation(v14);
            }

            if (os_log_type_enabled(v10, type))
            {
              v20 = *(*(&v60 + 1) + 8 * i);
              *buf = 138543874;
              v68 = preambleCopy;
              v69 = 2048;
              v70 = v17;
              v71 = 2114;
              v72 = v20;
              _os_log_impl(&dword_21B526000, v10, type, "[%{public}@]\t\tfromValue @ idx %lu: %{public}@", buf, 0x20u);
              ++v17;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v60 objects:v73 count:16];
        }

        while (v16);
      }
    }
  }

  if (self->_toValue)
  {
    if (os_log_type_enabled(v10, type))
    {
      toValue = self->_toValue;
      *buf = 138543618;
      v68 = preambleCopy;
      v69 = 2114;
      v70 = toValue;
      _os_log_impl(&dword_21B526000, v10, type, "[%{public}@]\t\ttoValue: %{public}@", buf, 0x16u);
    }

    if ([self->_toValue conformsToProtocol:&unk_282D7B988])
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v22 = self->_toValue;
      v23 = [v22 countByEnumeratingWithState:&v56 objects:v66 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        v26 = *v57;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v57 != v26)
            {
              objc_enumerationMutation(v22);
            }

            if (os_log_type_enabled(v10, type))
            {
              v28 = *(*(&v56 + 1) + 8 * j);
              *buf = 138543874;
              v68 = preambleCopy;
              v69 = 2048;
              v70 = v25;
              v71 = 2114;
              v72 = v28;
              _os_log_impl(&dword_21B526000, v10, type, "[%{public}@]\t\ttoValue @ idx %lu: %{public}@", buf, 0x20u);
              ++v25;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v56 objects:v66 count:16];
        }

        while (v24);
      }
    }
  }

  relatedPosters = [(PBFPosterDataStoreEvent *)self relatedPosters];
  v30 = [relatedPosters count];

  if (v30)
  {
    if (os_log_type_enabled(v10, type))
    {
      *buf = 138543362;
      v68 = preambleCopy;
      _os_log_impl(&dword_21B526000, v10, type, "[%{public}@]\t\trelatedPosters:", buf, 0xCu);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    relatedPosters2 = [(PBFPosterDataStoreEvent *)self relatedPosters];
    v32 = [relatedPosters2 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v53;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v53 != v34)
          {
            objc_enumerationMutation(relatedPosters2);
          }

          if (os_log_type_enabled(v10, type))
          {
            v36 = *(*(&v52 + 1) + 8 * k);
            *buf = 138543618;
            v68 = preambleCopy;
            v69 = 2114;
            v70 = v36;
            _os_log_impl(&dword_21B526000, v10, type, "[%{public}@]\t\t\t %{public}@", buf, 0x16u);
          }
        }

        v33 = [relatedPosters2 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v33);
    }

    self = selfCopy;
  }

  relatedProviders = [(PBFPosterDataStoreEvent *)self relatedProviders];
  v38 = [relatedProviders count];

  if (v38)
  {
    if (os_log_type_enabled(v10, type))
    {
      *buf = 138543362;
      v68 = preambleCopy;
      _os_log_impl(&dword_21B526000, v10, type, "[%{public}@]\t\trelatedProviders:", buf, 0xCu);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    relatedProviders2 = [(PBFPosterDataStoreEvent *)self relatedProviders];
    v40 = [relatedProviders2 countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v49;
      do
      {
        for (m = 0; m != v41; ++m)
        {
          if (*v49 != v42)
          {
            objc_enumerationMutation(relatedProviders2);
          }

          if (os_log_type_enabled(v10, type))
          {
            v44 = *(*(&v48 + 1) + 8 * m);
            *buf = 138543618;
            v68 = preambleCopy;
            v69 = 2114;
            v70 = v44;
            _os_log_impl(&dword_21B526000, v10, type, "[%{public}@]\t\t\t %{public}@", buf, 0x16u);
          }
        }

        v41 = [relatedProviders2 countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v41);
    }

    self = selfCopy;
  }

  if (self->_userInfo && os_log_type_enabled(v10, type))
  {
    userInfo = self->_userInfo;
    *buf = 138543618;
    v68 = preambleCopy;
    v69 = 2114;
    v70 = userInfo;
    _os_log_impl(&dword_21B526000, v10, type, "[%{public}@]\t\tuserInfo: %{public}@", buf, 0x16u);
  }
}

- (void)initWithType:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PBFPosterDataStoreEventTypeIsValid(type)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end