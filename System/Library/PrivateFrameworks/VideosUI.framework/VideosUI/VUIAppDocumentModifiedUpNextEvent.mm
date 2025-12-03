@interface VUIAppDocumentModifiedUpNextEvent
- (BOOL)isEqual:(id)equal;
- (VUIAppDocumentModifiedUpNextEvent)initWithAction:(unint64_t)action canonicalID:(id)d;
- (VUIAppDocumentModifiedUpNextEvent)initWithAddedCanonicalIDs:(id)ds removedCanonicalIDs:(id)iDs;
- (VUIAppDocumentModifiedUpNextEvent)initWithDescriptor:(id)descriptor;
- (id)coalescedEvent:(id)event;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation VUIAppDocumentModifiedUpNextEvent

- (VUIAppDocumentModifiedUpNextEvent)initWithDescriptor:(id)descriptor
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentModifiedUpNextEvent)initWithAddedCanonicalIDs:(id)ds removedCanonicalIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  if ([dsCopy count] || objc_msgSend(iDsCopy, "count"))
  {
    v8 = +[VUIAppDocumentUpdateEventDescriptor upNext];
    v16.receiver = self;
    v16.super_class = VUIAppDocumentModifiedUpNextEvent;
    v9 = [(VUIAppDocumentUpdateEvent *)&v16 initWithDescriptor:v8];

    if (v9)
    {
      v10 = [dsCopy copy];
      addedCanonicalIDs = v9->_addedCanonicalIDs;
      v9->_addedCanonicalIDs = v10;

      v12 = [iDsCopy copy];
      removedCanonicalIDs = v9->_removedCanonicalIDs;
      v9->_removedCanonicalIDs = v12;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VUIAppDocumentModifiedUpNextEvent)initWithAction:(unint64_t)action canonicalID:(id)d
{
  dCopy = d;
  if (action == 1)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{dCopy, 0}];
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  else if (action)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{dCopy, 0}];
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v9 = [(VUIAppDocumentModifiedUpNextEvent *)self initWithAddedCanonicalIDs:v7 removedCanonicalIDs:v8];

  return v9;
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = VUIAppDocumentModifiedUpNextEvent;
  dictionaryRepresentation = [(VUIAppDocumentUpdateEvent *)&v11 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  addedCanonicalIDs = [(VUIAppDocumentModifiedUpNextEvent *)self addedCanonicalIDs];
  if ([addedCanonicalIDs count])
  {
    allObjects = [addedCanonicalIDs allObjects];
    [v4 setObject:allObjects forKey:@"added"];
  }

  removedCanonicalIDs = [(VUIAppDocumentModifiedUpNextEvent *)self removedCanonicalIDs];
  if ([removedCanonicalIDs count])
  {
    allObjects2 = [removedCanonicalIDs allObjects];
    [v4 setObject:allObjects2 forKey:@"removed"];
  }

  v9 = [v4 copy];

  return v9;
}

- (id)coalescedEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    addedCanonicalIDs = [(VUIAppDocumentModifiedUpNextEvent *)self addedCanonicalIDs];
    v7 = [addedCanonicalIDs mutableCopy];

    addedCanonicalIDs2 = [v5 addedCanonicalIDs];
    [v7 unionSet:addedCanonicalIDs2];

    removedCanonicalIDs = [(VUIAppDocumentModifiedUpNextEvent *)self removedCanonicalIDs];
    v10 = [removedCanonicalIDs mutableCopy];

    removedCanonicalIDs2 = [v5 removedCanonicalIDs];

    [v10 unionSet:removedCanonicalIDs2];
    v12 = [v7 mutableCopy];
    [v12 minusSet:v10];
    v13 = [v10 mutableCopy];
    [v13 minusSet:v7];
    v14 = [[VUIAppDocumentModifiedUpNextEvent alloc] initWithAddedCanonicalIDs:v12 removedCanonicalIDs:v13];
  }

  else
  {
    v15 = VUIDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(VUIAppDocumentModifiedFavoritesEvent *)self coalescedEvent:eventCopy, v15];
    }

    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = VUIAppDocumentModifiedUpNextEvent;
  v3 = [(VUIAppDocumentUpdateEvent *)&v9 hash];
  addedCanonicalIDs = [(VUIAppDocumentModifiedUpNextEvent *)self addedCanonicalIDs];
  v5 = [addedCanonicalIDs hash];

  removedCanonicalIDs = [(VUIAppDocumentModifiedUpNextEvent *)self removedCanonicalIDs];
  v7 = v5 ^ [removedCanonicalIDs hash];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v18.receiver = self;
        v18.super_class = VUIAppDocumentModifiedUpNextEvent;
        if (![(VUIAppDocumentUpdateEvent *)&v18 isEqual:v6])
        {
LABEL_9:
          v12 = 0;
LABEL_19:

          goto LABEL_20;
        }

        addedCanonicalIDs = [(VUIAppDocumentModifiedUpNextEvent *)self addedCanonicalIDs];
        addedCanonicalIDs2 = [(VUIAppDocumentModifiedUpNextEvent *)v6 addedCanonicalIDs];
        v9 = addedCanonicalIDs;
        v10 = addedCanonicalIDs2;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v10)
          {
LABEL_18:

            goto LABEL_19;
          }

          v13 = [v9 isEqual:v10];

          if ((v13 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        removedCanonicalIDs = [(VUIAppDocumentModifiedUpNextEvent *)self removedCanonicalIDs];
        removedCanonicalIDs2 = [(VUIAppDocumentModifiedUpNextEvent *)v6 removedCanonicalIDs];
        v9 = removedCanonicalIDs;
        v16 = removedCanonicalIDs2;
        v11 = v16;
        if (v9 == v16)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0;
          if (v9 && v16)
          {
            v12 = [v9 isEqual:v16];
          }
        }

        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_20:

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUIAppDocumentModifiedUpNextEvent;
  v4 = [(VUIAppDocumentUpdateEvent *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  addedCanonicalIDs = [(VUIAppDocumentModifiedUpNextEvent *)self addedCanonicalIDs];
  v7 = [v5 stringWithFormat:@"%@=%@", @"addedCanonicalIDs", addedCanonicalIDs];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  removedCanonicalIDs = [(VUIAppDocumentModifiedUpNextEvent *)self removedCanonicalIDs];
  v10 = [v8 stringWithFormat:@"%@=%@", @"removedCanonicalIDs", removedCanonicalIDs];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

@end