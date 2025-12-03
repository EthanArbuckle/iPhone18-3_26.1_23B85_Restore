@interface SNTestContext
- (SNTestContext)initWithApplication:(id)application testName:(id)name;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation SNTestContext

- (SNTestContext)initWithApplication:(id)application testName:(id)name
{
  applicationCopy = application;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = SNTestContext;
  v9 = [(SNTestContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_application, application);
    objc_storeStrong(&v10->_testName, name);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objects = v10->_objects;
    v10->_objects = v11;
  }

  return v10;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  objects = [(SNTestContext *)self objects];
  [objects setObject:objectCopy forKey:keyCopy];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  objects = [(SNTestContext *)self objects];
  v6 = [objects objectForKey:keyCopy];

  return v6;
}

@end