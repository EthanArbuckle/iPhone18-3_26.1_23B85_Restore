@interface SNTestContext
- (SNTestContext)initWithApplication:(id)a3 testName:(id)a4;
- (id)objectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation SNTestContext

- (SNTestContext)initWithApplication:(id)a3 testName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SNTestContext;
  v9 = [(SNTestContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_application, a3);
    objc_storeStrong(&v10->_testName, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objects = v10->_objects;
    v10->_objects = v11;
  }

  return v10;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SNTestContext *)self objects];
  [v8 setObject:v7 forKey:v6];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(SNTestContext *)self objects];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end