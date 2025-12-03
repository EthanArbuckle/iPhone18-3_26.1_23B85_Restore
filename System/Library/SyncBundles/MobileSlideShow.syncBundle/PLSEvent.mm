@interface PLSEvent
+ (id)event;
+ (id)eventWithUUID:(id)d;
- (BOOL)isEqualToEvent:(id)event;
- (PLSEvent)init;
- (PLSEvent)initWithCoder:(id)coder;
- (PLSEvent)initWithUUID:(id)d;
- (id)description;
- (id)initFromPropertyList:(id)list;
- (id)propertyList;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLSEvent

- (BOOL)isEqualToEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (!eventCopy)
  {
    goto LABEL_19;
  }

  if (eventCopy != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = [(PLSEvent *)self name];
      name2 = [(PLSEvent *)v5 name];
      v8 = [PLSLibraryChangeSnapshot string:name equalsString:name2];

      if (v8)
      {
        parentUUID = [(PLSEvent *)self parentUUID];
        parentUUID2 = [(PLSEvent *)v5 parentUUID];
        v11 = [PLSLibraryChangeSnapshot string:parentUUID equalsString:parentUUID2];

        if (v11)
        {
          keyAssetUUID = [(PLSEvent *)self keyAssetUUID];
          keyAssetUUID2 = [(PLSEvent *)v5 keyAssetUUID];
          v14 = [PLSLibraryChangeSnapshot string:keyAssetUUID equalsString:keyAssetUUID2];

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
  propertyList = [(PLSItem *)&v12 propertyList];
  v4 = [NSMutableDictionary dictionaryWithDictionary:propertyList];

  name = [(PLSEvent *)self name];

  if (name)
  {
    name2 = [(PLSEvent *)self name];
    [v4 setObject:name2 forKey:kPLSEventNameKey];
  }

  parentUUID = [(PLSEvent *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(PLSEvent *)self parentUUID];
    [v4 setObject:parentUUID2 forKey:kPLSEventParentUUIDKey];
  }

  keyAssetUUID = [(PLSEvent *)self keyAssetUUID];

  if (keyAssetUUID)
  {
    keyAssetUUID2 = [(PLSEvent *)self keyAssetUUID];
    [v4 setObject:keyAssetUUID2 forKey:kPLSKeyAssetUUIDKey];
  }

  return v4;
}

- (id)initFromPropertyList:(id)list
{
  listCopy = list;
  v13.receiver = self;
  v13.super_class = PLSEvent;
  v5 = [(PLSItem *)&v13 initFromPropertyList:listCopy];
  if (v5)
  {
    v6 = [listCopy objectForKey:kPLSEventNameKey];
    v7 = v5[4];
    v5[4] = v6;

    v8 = [listCopy objectForKey:kPLSEventParentUUIDKey];
    v9 = v5[5];
    v5[5] = v8;

    v10 = [listCopy objectForKey:kPLSKeyAssetUUIDKey];
    v11 = v5[6];
    v5[6] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(PLSEvent *)self name];
  [coderCopy encodeObject:name forKey:kPLSEventNameKey];

  parentUUID = [(PLSEvent *)self parentUUID];
  [coderCopy encodeObject:parentUUID forKey:kPLSEventParentUUIDKey];

  keyAssetUUID = [(PLSEvent *)self keyAssetUUID];
  [coderCopy encodeObject:keyAssetUUID forKey:kPLSKeyAssetUUIDKey];

  v8.receiver = self;
  v8.super_class = PLSEvent;
  [(PLSItem *)&v8 encodeWithCoder:coderCopy];
}

- (PLSEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PLSEvent;
  v5 = [(PLSItem *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSEventNameKey];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSEventParentUUIDKey];
    parentUUID = v5->_parentUUID;
    v5->_parentUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSKeyAssetUUIDKey];
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
  name = [(PLSEvent *)self name];
  keyAssetUUID = [(PLSEvent *)self keyAssetUUID];
  v6 = [NSString stringWithFormat:@"Event - %@, name: %@, key asset: %@", v3, name, keyAssetUUID];

  return v6;
}

- (PLSEvent)initWithUUID:(id)d
{
  v9.receiver = self;
  v9.super_class = PLSEvent;
  v3 = [(PLSItem *)&v9 initWithUUID:d];
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

+ (id)eventWithUUID:(id)d
{
  dCopy = d;
  v4 = [[PLSEvent alloc] initWithUUID:dCopy];

  return v4;
}

+ (id)event
{
  v2 = objc_alloc_init(PLSEvent);

  return v2;
}

@end