@interface TFKey
- (BOOL)isEqual:(id)equal;
- (TFKey)initWithAddress:(unint64_t)address type:(id)type name:(id)name;
- (TFKey)initWithTypeName:(id)name name:(id)a4;
- (id)copyWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TFKey

- (TFKey)initWithTypeName:(id)name name:(id)a4
{
  nameCopy = name;
  v7 = a4;
  v8 = NSProtocolFromString(nameCopy);
  if (v8)
  {
    selfCopy2 = self;
    v10 = v8;
  }

  else
  {
    v10 = NSClassFromString(nameCopy);
    if (!v10)
    {
      v11 = [(TFKey *)self initWithAddress:0 type:0 name:v7];
      goto LABEL_6;
    }

    selfCopy2 = self;
  }

  v11 = [(TFKey *)selfCopy2 initWithAddressOfType:v10 name:v7];
LABEL_6:
  v12 = v11;

  return v12;
}

- (TFKey)initWithAddress:(unint64_t)address type:(id)type name:(id)name
{
  typeCopy = type;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = TFKey;
  v11 = [(TFKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_address = address;
    objc_storeStrong(&v11->_type, type);
    objc_storeStrong(&v12->_name, name);
  }

  return v12;
}

- (id)copyWithName:(id)name
{
  nameCopy = name;
  v5 = [[TFKey alloc] initWithAddress:self->_address type:self->_type name:nameCopy];

  return v5;
}

- (unint64_t)hash
{
  name = self->_name;
  address = self->_address;
  if (name)
  {
    address ^= [(NSString *)name hash];
  }

  return address;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    address = self->_address;
    if (address == [v5 address])
    {
      if (!self->_name)
      {
        goto LABEL_8;
      }

      name = [v5 name];

      name = self->_name;
      if (name)
      {
        name2 = [v5 name];
        v10 = [(NSString *)name isEqualToString:name2];

LABEL_10:
        goto LABEL_11;
      }

      if (!name)
      {
LABEL_8:
        name3 = [v5 name];

        if (!name3)
        {
          v10 = 1;
          goto LABEL_10;
        }
      }
    }

    v10 = 0;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TFKey alloc];
  name = self->_name;
  type = self->_type;
  address = self->_address;

  return [(TFKey *)v4 initWithAddress:address type:type name:name];
}

@end