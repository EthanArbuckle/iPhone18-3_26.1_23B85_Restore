@interface VUIAppDocumentModifiedFavoritesEvent
- (BOOL)isEqual:(id)a3;
- (VUIAppDocumentModifiedFavoritesEvent)initWithAction:(unint64_t)a3 entityID:(id)a4 isBackground:(BOOL)a5;
- (VUIAppDocumentModifiedFavoritesEvent)initWithAddedEntityIDs:(id)a3 removedEntityIDs:(id)a4 isBackground:(BOOL)a5;
- (VUIAppDocumentModifiedFavoritesEvent)initWithDescriptor:(id)a3;
- (id)coalescedEvent:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation VUIAppDocumentModifiedFavoritesEvent

- (VUIAppDocumentModifiedFavoritesEvent)initWithDescriptor:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentModifiedFavoritesEvent)initWithAddedEntityIDs:(id)a3 removedEntityIDs:(id)a4 isBackground:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
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
    v12 = [v8 copy];
    addedEntityIDs = v11->_addedEntityIDs;
    v11->_addedEntityIDs = v12;

    v14 = [v9 copy];
    removedEntityIDs = v11->_removedEntityIDs;
    v11->_removedEntityIDs = v14;

    v11->_isBackground = v5;
  }

  return v11;
}

- (VUIAppDocumentModifiedFavoritesEvent)initWithAction:(unint64_t)a3 entityID:(id)a4 isBackground:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  if (a3 == 2)
  {
    v9 = [MEMORY[0x1E695DFD8] set];
    v10 = MEMORY[0x1E695DFD8];
LABEL_7:
    v11 = [v10 set];
    goto LABEL_9;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      v9 = 0;
      v11 = 0;
      goto LABEL_9;
    }

    v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v8, 0}];
    v10 = MEMORY[0x1E695DFD8];
    goto LABEL_7;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v8, 0}];
  v9 = [MEMORY[0x1E695DFD8] set];
LABEL_9:
  v12 = [(VUIAppDocumentModifiedFavoritesEvent *)self initWithAddedEntityIDs:v9 removedEntityIDs:v11 isBackground:v5];

  return v12;
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = VUIAppDocumentModifiedFavoritesEvent;
  v3 = [(VUIAppDocumentUpdateEvent *)&v11 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(VUIAppDocumentModifiedFavoritesEvent *)self addedEntityIDs];
  if ([v5 count])
  {
    v6 = [v5 allObjects];
    [v4 setObject:v6 forKey:@"added"];
  }

  v7 = [(VUIAppDocumentModifiedFavoritesEvent *)self removedEntityIDs];
  if ([v7 count])
  {
    v8 = [v7 allObjects];
    [v4 setObject:v8 forKey:@"removed"];
  }

  v9 = [v4 copy];

  return v9;
}

- (id)coalescedEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[VUIAppDocumentUpdateEvent descriptor](self, "descriptor"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 type], objc_msgSend(v4, "descriptor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, v5, v6 == v8))
  {
    v9 = v4;
    v10 = [(VUIAppDocumentModifiedFavoritesEvent *)self addedEntityIDs];
    v11 = [v10 mutableCopy];

    v12 = [v9 addedEntityIDs];
    [v11 unionSet:v12];

    v13 = [(VUIAppDocumentModifiedFavoritesEvent *)self removedEntityIDs];
    v14 = [v13 mutableCopy];

    v15 = [v9 removedEntityIDs];

    [v14 unionSet:v15];
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
      [(VUIAppDocumentModifiedFavoritesEvent *)self coalescedEvent:v4, v19];
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
  v4 = [(VUIAppDocumentModifiedFavoritesEvent *)self addedEntityIDs];
  v5 = [v4 hash];

  v6 = [(VUIAppDocumentModifiedFavoritesEvent *)self removedEntityIDs];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    if (v4)
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

        v8 = [(VUIAppDocumentModifiedFavoritesEvent *)self addedEntityIDs];
        v9 = [(VUIAppDocumentModifiedFavoritesEvent *)v6 addedEntityIDs];
        v10 = v8;
        v11 = v9;
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

        v15 = [(VUIAppDocumentModifiedFavoritesEvent *)self removedEntityIDs];
        v16 = [(VUIAppDocumentModifiedFavoritesEvent *)v6 removedEntityIDs];
        v10 = v15;
        v17 = v16;
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
  v6 = [(VUIAppDocumentModifiedFavoritesEvent *)self addedEntityIDs];
  v7 = [v5 stringWithFormat:@"%@=%@", @"addedEntityIDs", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIAppDocumentModifiedFavoritesEvent *)self removedEntityIDs];
  v10 = [v8 stringWithFormat:@"%@=%@", @"removedEntityIDs", v9];
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