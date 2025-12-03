@interface OKSettingCollectionProxy
- (OKSettingCollectionProxy)initWithObjects:(id)objects withBlock:(id)block;
- (OKSettingCollectionProxy)initWithObjects:(id)objects withKeyPath:(id)path;
- (id)settingObjectForKey:(id)key;
- (void)dealloc;
@end

@implementation OKSettingCollectionProxy

- (OKSettingCollectionProxy)initWithObjects:(id)objects withBlock:(id)block
{
  v8.receiver = self;
  v8.super_class = OKSettingCollectionProxy;
  v6 = [(OKSettingCollectionProxy *)&v8 init];
  if (v6)
  {
    v6->_listOfObjects = objects;
    v6->_keyResolverBlock = [block copy];
  }

  return v6;
}

- (OKSettingCollectionProxy)initWithObjects:(id)objects withKeyPath:(id)path
{
  v8.receiver = self;
  v8.super_class = OKSettingCollectionProxy;
  v6 = [(OKSettingCollectionProxy *)&v8 init];
  if (v6)
  {
    v6->_listOfObjects = objects;
    v6->_keyPath = path;
  }

  return v6;
}

- (void)dealloc
{
  listOfObjects = self->_listOfObjects;
  if (listOfObjects)
  {

    self->_listOfObjects = 0;
  }

  keyResolverBlock = self->_keyResolverBlock;
  if (keyResolverBlock)
  {

    self->_keyResolverBlock = 0;
  }

  keyPath = self->_keyPath;
  if (keyPath)
  {

    self->_keyPath = 0;
  }

  v6.receiver = self;
  v6.super_class = OKSettingCollectionProxy;
  [(OKSettingCollectionProxy *)&v6 dealloc];
}

- (id)settingObjectForKey:(id)key
{
  v21 = *MEMORY[0x277D85DE8];
  p_keyResolverBlock = &self->_keyResolverBlock;
  keyResolverBlock = self->_keyResolverBlock;
  if (p_keyResolverBlock[1])
  {
    v7 = keyResolverBlock == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    listOfObjects = self->_listOfObjects;
    v11 = [listOfObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    v13 = *v17;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v17 != v13)
      {
        objc_enumerationMutation(listOfObjects);
      }

      v15 = *(*(&v16 + 1) + 8 * v14);
      if ([objc_msgSend(v15 valueForKeyPath:{self->_keyPath), "isEqualToString:", key}])
      {
        return v15;
      }

      if (v12 == ++v14)
      {
        v12 = [listOfObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v12)
        {
          goto LABEL_10;
        }

        return 0;
      }
    }
  }

  else
  {
    v8 = *(keyResolverBlock + 2);

    return v8();
  }
}

@end