@interface IPAPreviewSizeRegistry
- (IPAPreviewSizeRegistry)init;
- (IPAPreviewSizeRegistry)initWithName:(id)name;
- (id)description;
- (id)policyForStyle:(unint64_t)style;
- (id)policyForStyleObject:(id)object;
- (void)addPolicy:(id)policy;
@end

@implementation IPAPreviewSizeRegistry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  allValues = [(NSMutableDictionary *)self->_policies allValues];
  v6 = [allValues valueForKey:@"name"];
  v7 = [v3 stringWithFormat:@"<%@:%p> %@", v4, self, v6];

  return v7;
}

- (id)policyForStyleObject:(id)object
{
  objectCopy = object;
  v5 = [(NSMutableDictionary *)self->_policies objectForKeyedSubscript:objectCopy];
  if (v5)
  {
    v6 = v5;

    return v6;
  }

  else
  {
    v8 = _PFAssertFailHandler();
    return [(IPAPreviewSizeRegistry *)v8 policyForStyle:v9, v10];
  }
}

- (id)policyForStyle:(unint64_t)style
{
  policies = self->_policies;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v5 = [(NSMutableDictionary *)policies objectForKeyedSubscript:v4];

  if (v5)
  {

    return v5;
  }

  else
  {
    v7 = _PFAssertFailHandler();
    [(IPAPreviewSizeRegistry *)v7 addPolicy:v8, v9];
  }

  return result;
}

- (void)addPolicy:(id)policy
{
  policies = self->_policies;
  policyCopy = policy;
  style = [policyCopy style];
  [(NSMutableDictionary *)policies setObject:policyCopy forKeyedSubscript:style];
}

- (IPAPreviewSizeRegistry)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = IPAPreviewSizeRegistry;
  v6 = [(IPAPreviewSizeRegistry *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    policies = v7->_policies;
    v7->_policies = v8;
  }

  return v7;
}

- (IPAPreviewSizeRegistry)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"%@ not supported for %@: use initWithName:", v5, objc_opt_class()}];

  return 0;
}

@end