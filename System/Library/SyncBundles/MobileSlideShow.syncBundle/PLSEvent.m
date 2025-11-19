@interface PLSEvent
+ (id)event;
+ (id)eventWithUUID:(id)a3;
- (BOOL)isEqualToEvent:(id)a3;
- (PLSEvent)init;
- (PLSEvent)initWithCoder:(id)a3;
- (PLSEvent)initWithUUID:(id)a3;
- (id)description;
- (id)initFromPropertyList:(id)a3;
- (id)propertyList;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLSEvent

- (BOOL)isEqualToEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_19;
  }

  if (v4 != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(PLSEvent *)self name];
      v7 = [(PLSEvent *)v5 name];
      v8 = [PLSLibraryChangeSnapshot string:v6 equalsString:v7];

      if (v8)
      {
        v9 = [(PLSEvent *)self parentUUID];
        v10 = [(PLSEvent *)v5 parentUUID];
        v11 = [PLSLibraryChangeSnapshot string:v9 equalsString:v10];

        if (v11)
        {
          v12 = [(PLSEvent *)self keyAssetUUID];
          v13 = [(PLSEvent *)v5 keyAssetUUID];
          v14 = [PLSLibraryChangeSnapshot string:v12 equalsString:v13];

          if (v14)
          {
            goto LABEL_7;
          }

          v16 = [NSString stringWithFormat:@"event keyAssetUUID not equal"];
          v17 = _ATLogCategorySyncBundle();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_18;
          }

          v21 = 138412290;
          v22 = v16;
          goto LABEL_16;
        }

        v16 = [NSString stringWithFormat:@"event parentUUID not equal"];
        v17 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v21 = 138412290;
          v22 = v16;
          goto LABEL_16;
        }
      }

      else
      {
        v16 = [NSString stringWithFormat:@"event name not equal"];
        v17 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v21 = 138412290;
          v22 = v16;
LABEL_16:
          v18 = v17;
          v19 = OS_LOG_TYPE_DEBUG;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v16 = [NSString stringWithFormat:@"otherEvent isn't an event"];
      v17 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        v22 = v16;
        v18 = v17;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_17:
        _os_log_impl(&dword_0, v18, v19, "%@", &v21, 0xCu);
      }
    }

LABEL_18:

LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

LABEL_7:
  v15 = 1;
LABEL_20:

  return v15;
}

- (id)propertyList
{
  v12.receiver = self;
  v12.super_class = PLSEvent;
  v3 = [(PLSItem *)&v12 propertyList];
  v4 = [NSMutableDictionary dictionaryWithDictionary:v3];

  v5 = [(PLSEvent *)self name];

  if (v5)
  {
    v6 = [(PLSEvent *)self name];
    [v4 setObject:v6 forKey:kPLSEventNameKey];
  }

  v7 = [(PLSEvent *)self parentUUID];

  if (v7)
  {
    v8 = [(PLSEvent *)self parentUUID];
    [v4 setObject:v8 forKey:kPLSEventParentUUIDKey];
  }

  v9 = [(PLSEvent *)self keyAssetUUID];

  if (v9)
  {
    v10 = [(PLSEvent *)self keyAssetUUID];
    [v4 setObject:v10 forKey:kPLSKeyAssetUUIDKey];
  }

  return v4;
}

- (id)initFromPropertyList:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PLSEvent;
  v5 = [(PLSItem *)&v13 initFromPropertyList:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:kPLSEventNameKey];
    v7 = v5[4];
    v5[4] = v6;

    v8 = [v4 objectForKey:kPLSEventParentUUIDKey];
    v9 = v5[5];
    v5[5] = v8;

    v10 = [v4 objectForKey:kPLSKeyAssetUUIDKey];
    v11 = v5[6];
    v5[6] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PLSEvent *)self name];
  [v4 encodeObject:v5 forKey:kPLSEventNameKey];

  v6 = [(PLSEvent *)self parentUUID];
  [v4 encodeObject:v6 forKey:kPLSEventParentUUIDKey];

  v7 = [(PLSEvent *)self keyAssetUUID];
  [v4 encodeObject:v7 forKey:kPLSKeyAssetUUIDKey];

  v8.receiver = self;
  v8.super_class = PLSEvent;
  [(PLSItem *)&v8 encodeWithCoder:v4];
}

- (PLSEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PLSEvent;
  v5 = [(PLSItem *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kPLSEventNameKey];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kPLSEventParentUUIDKey];
    parentUUID = v5->_parentUUID;
    v5->_parentUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kPLSKeyAssetUUIDKey];
    keyAssetUUID = v5->_keyAssetUUID;
    v5->_keyAssetUUID = v10;
  }

  return v5;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PLSEvent;
  v3 = [(PLSItem *)&v8 description];
  v4 = [(PLSEvent *)self name];
  v5 = [(PLSEvent *)self keyAssetUUID];
  v6 = [NSString stringWithFormat:@"Event - %@, name: %@, key asset: %@", v3, v4, v5];

  return v6;
}

- (PLSEvent)initWithUUID:(id)a3
{
  v9.receiver = self;
  v9.super_class = PLSEvent;
  v3 = [(PLSItem *)&v9 initWithUUID:a3];
  v4 = v3;
  if (v3)
  {
    name = v3->_name;
    v3->_name = &stru_24CF0;

    parentUUID = v4->_parentUUID;
    v4->_parentUUID = 0;

    keyAssetUUID = v4->_keyAssetUUID;
    v4->_keyAssetUUID = 0;
  }

  return v4;
}

- (PLSEvent)init
{
  v3 = +[PLSUUID generateUUIDAsString];
  v4 = [(PLSEvent *)self initWithUUID:v3];

  return v4;
}

+ (id)eventWithUUID:(id)a3
{
  v3 = a3;
  v4 = [[PLSEvent alloc] initWithUUID:v3];

  return v4;
}

+ (id)event
{
  v2 = objc_alloc_init(PLSEvent);

  return v2;
}

@end