@interface TFKey
- (BOOL)isEqual:(id)a3;
- (TFKey)initWithAddress:(unint64_t)a3 type:(id)a4 name:(id)a5;
- (TFKey)initWithTypeName:(id)a3 name:(id)a4;
- (id)copyWithName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation TFKey

- (TFKey)initWithTypeName:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSProtocolFromString(v6);
  if (v8)
  {
    v9 = self;
    v10 = v8;
  }

  else
  {
    v10 = NSClassFromString(v6);
    if (!v10)
    {
      v11 = [(TFKey *)self initWithAddress:0 type:0 name:v7];
      goto LABEL_6;
    }

    v9 = self;
  }

  v11 = [(TFKey *)v9 initWithAddressOfType:v10 name:v7];
LABEL_6:
  v12 = v11;

  return v12;
}

- (TFKey)initWithAddress:(unint64_t)a3 type:(id)a4 name:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TFKey;
  v11 = [(TFKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_address = a3;
    objc_storeStrong(&v11->_type, a4);
    objc_storeStrong(&v12->_name, a5);
  }

  return v12;
}

- (id)copyWithName:(id)a3
{
  v4 = a3;
  v5 = [[TFKey alloc] initWithAddress:self->_address type:self->_type name:v4];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    address = self->_address;
    if (address == [v5 address])
    {
      if (!self->_name)
      {
        goto LABEL_8;
      }

      v7 = [v5 name];

      name = self->_name;
      if (v7)
      {
        v9 = [v5 name];
        v10 = [(NSString *)name isEqualToString:v9];

LABEL_10:
        goto LABEL_11;
      }

      if (!name)
      {
LABEL_8:
        v11 = [v5 name];

        if (!v11)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TFKey alloc];
  name = self->_name;
  type = self->_type;
  address = self->_address;

  return [(TFKey *)v4 initWithAddress:address type:type name:name];
}

@end