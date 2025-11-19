@interface RBSSavedEndowment
+ (id)savedEndowment:(id)a3 withKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSSavedEndowment)initWithRBSXPCCoder:(id)a3;
- (id)_initWithEndowment:(id)a3 andKey:(id)a4;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSSavedEndowment

- (id)_initWithEndowment:(id)a3 andKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RBSSavedEndowment;
  v9 = [(RBSSavedEndowment *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_endowment, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

+ (id)savedEndowment:(id)a3 withKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RBSSavedEndowment alloc] _initWithEndowment:v6 andKey:v5];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_8;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = 0;
    goto LABEL_9;
  }

  key = self->_key;
  v8 = v4->_key;
  if (key == v8)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v6 = 0;
  if (key && v8)
  {
    v6 = [(NSString *)key isEqual:?];
  }

LABEL_9:

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [(NSString *)self->_key description];
  v6 = [(NSSecureCoding *)self->_endowment description];
  v7 = [v3 initWithFormat:@"<%@| key:%@ endowment:%@>", v4, v5, v6];

  return v7;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 encodeObject:key forKey:@"_key"];
  v7 = RBSEndowmentEncode(self->_endowment);
  v6 = RBSXPCPackObject(v7);
  [v5 encodeXPCObject:v6 forKey:@"_endowment"];
}

- (RBSSavedEndowment)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"_key"];
  if (v5)
  {
    v6 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_endowment"];
    v7 = RBSXPCUnpackObject(v6);
    v8 = RBSEndowmentDecode(v7);

    if (v8)
    {
      self = [(RBSSavedEndowment *)self _initWithEndowment:v8 andKey:v5];
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end