@interface VUIAppDocumentModifiedFavoritesEvent
- (BOOL)isEqual:(id)equal;
- (VUIAppDocumentModifiedFavoritesEvent)initWithAction:(unint64_t)action entityID:(id)d isBackground:(BOOL)background;
- (VUIAppDocumentModifiedFavoritesEvent)initWithAddedEntityIDs:(id)ds removedEntityIDs:(id)iDs isBackground:(BOOL)background;
- (VUIAppDocumentModifiedFavoritesEvent)initWithDescriptor:(id)descriptor;
- (id)coalescedEvent:(id)event;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation VUIAppDocumentModifiedFavoritesEvent

- (VUIAppDocumentModifiedFavoritesEvent)initWithDescriptor:(id)descriptor
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentModifiedFavoritesEvent)initWithAddedEntityIDs:(id)ds removedEntityIDs:(id)iDs isBackground:(BOOL)background
{
  backgroundCopy = background;
  dsCopy = ds;
  iDsCopy = iDs;
  if (backgroundCopy)
  {
    +[VUIAppDocumentUpdateEventDescriptor favoritesInBackground];
  }

  else
  {
    +[VUIAppDocumentUpdateEventDescriptor favorites];
  }
  v10 = ;
  v17.receiver = self;
  v17.super_class = VUIAppDocumentModifiedFavoritesEvent;
  v11 = [(VUIAppDocumentUpdateEvent *)&v17 initWithDescriptor:v10];

  if (v11)
  {
    v12 = [dsCopy copy];
    addedEntityIDs = v11->_addedEntityIDs;
    v11->_addedEntityIDs = v12;

    v14 = [iDsCopy copy];
    removedEntityIDs = v11->_removedEntityIDs;
    v11->_removedEntityIDs = v14;

    v11->_isBackground = backgroundCopy;
  }

  return v11;
}

- (VUIAppDocumentModifiedFavoritesEvent)initWithAction:(unint64_t)action entityID:(id)d isBackground:(BOOL)background
{
  backgroundCopy = background;
  dCopy = d;
  if (action == 2)
  {
    v9 = [MEMORY[0x1E695DFD8] set];
    v10 = MEMORY[0x1E695DFD8];
LABEL_7:
    v11 = [v10 set];
    goto LABEL_9;
  }

  if (action != 1)
  {
    if (action)
    {
      v9 = 0;
      v11 = 0;
      goto LABEL_9;
    }

    v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{dCopy, 0}];
    v10 = MEMORY[0x1E695DFD8];
    goto LABEL_7;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{dCopy, 0}];
  v9 = [MEMORY[0x1E695DFD8] set];
LABEL_9:
  v12 = [(VUIAppDocumentModifiedFavoritesEvent *)self initWithAddedEntityIDs:v9 removedEntityIDs:v11 isBackground:backgroundCopy];

  return v12;
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = VUIAppDocumentModifiedFavoritesEvent;
  dictionaryRepresentation = [(VUIAppDocumentUpdateEvent *)&v11 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  addedEntityIDs = [(VUIAppDocumentModifiedFavoritesEvent *)self addedEntityIDs];
  if ([addedEntityIDs count])
  {
    allObjects = [addedEntityIDs allObjects];
    [v4 setObject:allObjects forKey:@"added"];
  }

  removedEntityIDs = [(VUIAppDocumentModifiedFavoritesEvent *)self removedEntityIDs];
  if ([removedEntityIDs count])
  {
    allObjects2 = [removedEntityIDs allObjects];
    [v4 setObject:allObjects2 forKey:@"removed"];
  }

  v9 = [v4 copy];

  return v9;
}

- (id)coalescedEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[VUIAppDocumentUpdateEvent descriptor](self, "descriptor"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 type], objc_msgSend(eventCopy, "descriptor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, v5, v6 == v8))
  {
    v9 = eventCopy;
    addedEntityIDs = [(VUIAppDocumentModifiedFavoritesEvent *)self addedEntityIDs];
    v11 = [addedEntityIDs mutableCopy];

    addedEntityIDs2 = [v9 addedEntityIDs];
    [v11 unionSet:addedEntityIDs2];

    removedEntityIDs = [(VUIAppDocumentModifiedFavoritesEvent *)self removedEntityIDs];
    v14 = [removedEntityIDs mutableCopy];

    removedEntityIDs2 = [v9 removedEntityIDs];

    [v14 unionSet:removedEntityIDs2];
    v16 = [v11 mutableCopy];
    [v16 minusSet:v14];
    v17 = [v14 mutableCopy];
    [v17 minusSet:v11];
    v18 = [[VUIAppDocumentModifiedFavoritesEvent alloc] initWithAddedEntityIDs:v16 removedEntityIDs:v17 isBackground:self->_isBackground];
  }

  else
  {
    v19 = VUIDefaultLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(VUIAppDocumentModifiedFavoritesEvent *)self coalescedEvent:eventCopy, v19];
    }

    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = VUIAppDocumentModifiedFavoritesEvent;
  v3 = [(VUIAppDocumentUpdateEvent *)&v9 hash];
  addedEntityIDs = [(VUIAppDocumentModifiedFavoritesEvent *)self addedEntityIDs];
  v5 = [addedEntityIDs hash];

  removedEntityIDs = [(VUIAppDocumentModifiedFavoritesEvent *)self removedEntityIDs];
  v7 = v5 ^ [removedEntityIDs hash];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v19.receiver = self;
        v19.super_class = VUIAppDocumentModifiedFavoritesEvent;
        if (![(VUIAppDocumentUpdateEvent *)&v19 isEqual:v6])
        {
          goto LABEL_10;
        }

        isBackground = self->_isBackground;
        if (isBackground != [(VUIAppDocumentModifiedFavoritesEvent *)v6 isBackground])
        {
          goto LABEL_10;
        }

        addedEntityIDs = [(VUIAppDocumentModifiedFavoritesEvent *)self addedEntityIDs];
        addedEntityIDs2 = [(VUIAppDocumentModifiedFavoritesEvent *)v6 addedEntityIDs];
        v10 = addedEntityIDs;
        v11 = addedEntityIDs2;
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          v13 = 0;
          if (!v10 || !v11)
          {
LABEL_19:

            goto LABEL_20;
          }

          v14 = [v10 isEqual:v11];

          if ((v14 & 1) == 0)
          {
LABEL_10:
            v13 = 0;
LABEL_20:

            goto LABEL_21;
          }
        }

        removedEntityIDs = [(VUIAppDocumentModifiedFavoritesEvent *)self removedEntityIDs];
        removedEntityIDs2 = [(VUIAppDocumentModifiedFavoritesEvent *)v6 removedEntityIDs];
        v10 = removedEntityIDs;
        v17 = removedEntityIDs2;
        v12 = v17;
        if (v10 == v17)
        {
          v13 = 1;
        }

        else
        {
          v13 = 0;
          if (v10 && v17)
          {
            v13 = [v10 isEqual:v17];
          }
        }

        goto LABEL_19;
      }
    }

    v13 = 0;
  }

LABEL_21:

  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUIAppDocumentModifiedFavoritesEvent;
  v4 = [(VUIAppDocumentUpdateEvent *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  addedEntityIDs = [(VUIAppDocumentModifiedFavoritesEvent *)self addedEntityIDs];
  v7 = [v5 stringWithFormat:@"%@=%@", @"addedEntityIDs", addedEntityIDs];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  removedEntityIDs = [(VUIAppDocumentModifiedFavoritesEvent *)self removedEntityIDs];
  v10 = [v8 stringWithFormat:@"%@=%@", @"removedEntityIDs", removedEntityIDs];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

- (void)coalescedEvent:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 descriptor];
  v6 = [a2 descriptor];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1E323F000, a3, OS_LOG_TYPE_ERROR, "VUIAppDocumentUpdateEvent: Can't coalesce events as the descriptors don't match. Events: %@, %@", &v7, 0x16u);
}

@end