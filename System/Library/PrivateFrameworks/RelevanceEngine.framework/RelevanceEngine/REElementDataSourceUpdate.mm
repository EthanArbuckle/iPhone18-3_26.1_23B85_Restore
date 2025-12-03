@interface REElementDataSourceUpdate
+ (id)insertElement:(id)element inSection:(id)section;
+ (id)refreshElement:(id)element inSection:(id)section;
+ (id)reloadElement:(id)element inSection:(id)section;
+ (id)removeElement:(id)element inSection:(id)section;
- (BOOL)isEqual:(id)equal;
- (REElementDataSourceUpdate)initWithElement:(id)element section:(id)section updateType:(unint64_t)type;
- (unint64_t)hash;
@end

@implementation REElementDataSourceUpdate

- (REElementDataSourceUpdate)initWithElement:(id)element section:(id)section updateType:(unint64_t)type
{
  elementCopy = element;
  sectionCopy = section;
  v14.receiver = self;
  v14.super_class = REElementDataSourceUpdate;
  v11 = [(REElementDataSourceUpdate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_element, element);
    objc_storeStrong(&v12->_section, section);
    v12->_type = type;
  }

  return v12;
}

+ (id)reloadElement:(id)element inSection:(id)section
{
  sectionCopy = section;
  elementCopy = element;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:elementCopy section:sectionCopy updateType:0];

  return v7;
}

+ (id)insertElement:(id)element inSection:(id)section
{
  sectionCopy = section;
  elementCopy = element;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:elementCopy section:sectionCopy updateType:2];

  return v7;
}

+ (id)removeElement:(id)element inSection:(id)section
{
  sectionCopy = section;
  elementCopy = element;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:elementCopy section:sectionCopy updateType:1];

  return v7;
}

+ (id)refreshElement:(id)element inSection:(id)section
{
  sectionCopy = section;
  elementCopy = element;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:elementCopy section:sectionCopy updateType:4];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(REElement *)self->_element isEqual:v5[1]]&& [(NSString *)self->_section isEqualToString:v5[3]]&& self->_type == v5[2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end