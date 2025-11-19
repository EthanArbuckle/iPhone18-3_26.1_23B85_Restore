@interface REElementDataSourceUpdate
+ (id)insertElement:(id)a3 inSection:(id)a4;
+ (id)refreshElement:(id)a3 inSection:(id)a4;
+ (id)reloadElement:(id)a3 inSection:(id)a4;
+ (id)removeElement:(id)a3 inSection:(id)a4;
- (BOOL)isEqual:(id)a3;
- (REElementDataSourceUpdate)initWithElement:(id)a3 section:(id)a4 updateType:(unint64_t)a5;
- (unint64_t)hash;
@end

@implementation REElementDataSourceUpdate

- (REElementDataSourceUpdate)initWithElement:(id)a3 section:(id)a4 updateType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = REElementDataSourceUpdate;
  v11 = [(REElementDataSourceUpdate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_element, a3);
    objc_storeStrong(&v12->_section, a4);
    v12->_type = a5;
  }

  return v12;
}

+ (id)reloadElement:(id)a3 inSection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:v6 section:v5 updateType:0];

  return v7;
}

+ (id)insertElement:(id)a3 inSection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:v6 section:v5 updateType:2];

  return v7;
}

+ (id)removeElement:(id)a3 inSection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:v6 section:v5 updateType:1];

  return v7;
}

+ (id)refreshElement:(id)a3 inSection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:v6 section:v5 updateType:4];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(REElement *)self->_element hash];
  v4 = [(NSString *)self->_section hash]^ v3;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(REElement *)self->_element isEqual:v5[1]]&& [(NSString *)self->_section isEqualToString:v5[3]]&& self->_type == v5[2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end