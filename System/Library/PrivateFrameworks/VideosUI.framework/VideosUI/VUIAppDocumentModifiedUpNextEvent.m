@interface VUIAppDocumentModifiedUpNextEvent
- (BOOL)isEqual:(id)a3;
- (VUIAppDocumentModifiedUpNextEvent)initWithAction:(unint64_t)a3 canonicalID:(id)a4;
- (VUIAppDocumentModifiedUpNextEvent)initWithAddedCanonicalIDs:(id)a3 removedCanonicalIDs:(id)a4;
- (VUIAppDocumentModifiedUpNextEvent)initWithDescriptor:(id)a3;
- (id)coalescedEvent:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation VUIAppDocumentModifiedUpNextEvent

- (VUIAppDocumentModifiedUpNextEvent)initWithDescriptor:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentModifiedUpNextEvent)initWithAddedCanonicalIDs:(id)a3 removedCanonicalIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v8 = +[VUIAppDocumentUpdateEventDescriptor upNext];
    v16.receiver = self;
    v16.super_class = VUIAppDocumentModifiedUpNextEvent;
    v9 = [(VUIAppDocumentUpdateEvent *)&v16 initWithDescriptor:v8];

    if (v9)
    {
      v10 = [v6 copy];
      addedCanonicalIDs = v9->_addedCanonicalIDs;
      v9->_addedCanonicalIDs = v10;

      v12 = [v7 copy];
      removedCanonicalIDs = v9->_removedCanonicalIDs;
      v9->_removedCanonicalIDs = v12;
    }

    self = v9;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (VUIAppDocumentModifiedUpNextEvent)initWithAction:(unint64_t)a3 canonicalID:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v6, 0}];
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  else if (a3)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v6, 0}];
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v9 = [(VUIAppDocumentModifiedUpNextEvent *)self initWithAddedCanonicalIDs:v7 removedCanonicalIDs:v8];

  return v9;
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = VUIAppDocumentModifiedUpNextEvent;
  v3 = [(VUIAppDocumentUpdateEvent *)&v11 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(VUIAppDocumentModifiedUpNextEvent *)self addedCanonicalIDs];
  if ([v5 count])
  {
    v6 = [v5 allObjects];
    [v4 setObject:v6 forKey:@"added"];
  }

  v7 = [(VUIAppDocumentModifiedUpNextEvent *)self removedCanonicalIDs];
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
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(VUIAppDocumentModifiedUpNextEvent *)self addedCanonicalIDs];
    v7 = [v6 mutableCopy];

    v8 = [v5 addedCanonicalIDs];
    [v7 unionSet:v8];

    v9 = [(VUIAppDocumentModifiedUpNextEvent *)self removedCanonicalIDs];
    v10 = [v9 mutableCopy];

    v11 = [v5 removedCanonicalIDs];

    [v10 unionSet:v11];
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
      [(VUIAppDocumentModifiedFavoritesEvent *)self coalescedEvent:v4, v15];
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
  v4 = [(VUIAppDocumentModifiedUpNextEvent *)self addedCanonicalIDs];
  v5 = [v4 hash];

  v6 = [(VUIAppDocumentModifiedUpNextEvent *)self removedCanonicalIDs];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
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

        v7 = [(VUIAppDocumentModifiedUpNextEvent *)self addedCanonicalIDs];
        v8 = [(VUIAppDocumentModifiedUpNextEvent *)v6 addedCanonicalIDs];
        v9 = v7;
        v10 = v8;
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

        v14 = [(VUIAppDocumentModifiedUpNextEvent *)self removedCanonicalIDs];
        v15 = [(VUIAppDocumentModifiedUpNextEvent *)v6 removedCanonicalIDs];
        v9 = v14;
        v16 = v15;
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
  v6 = [(VUIAppDocumentModifiedUpNextEvent *)self addedCanonicalIDs];
  v7 = [v5 stringWithFormat:@"%@=%@", @"addedCanonicalIDs", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIAppDocumentModifiedUpNextEvent *)self removedCanonicalIDs];
  v10 = [v8 stringWithFormat:@"%@=%@", @"removedCanonicalIDs", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

@end