@interface RBSSavedEndowment
+ (id)savedEndowment:(id)endowment withKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSSavedEndowment)initWithRBSXPCCoder:(id)coder;
- (id)_initWithEndowment:(id)endowment andKey:(id)key;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSSavedEndowment

- (id)_initWithEndowment:(id)endowment andKey:(id)key
{
  endowmentCopy = endowment;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = RBSSavedEndowment;
  v9 = [(RBSSavedEndowment *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_endowment, endowment);
    objc_storeStrong(p_isa + 2, key);
  }

  return p_isa;
}

+ (id)savedEndowment:(id)endowment withKey:(id)key
{
  keyCopy = key;
  endowmentCopy = endowment;
  v7 = [[RBSSavedEndowment alloc] _initWithEndowment:endowmentCopy andKey:keyCopy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
  v8 = equalCopy->_key;
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

- (void)encodeWithRBSXPCCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"_key"];
  v7 = RBSEndowmentEncode(self->_endowment);
  v6 = RBSXPCPackObject(v7);
  [coderCopy encodeXPCObject:v6 forKey:@"_endowment"];
}

- (RBSSavedEndowment)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"_key"];
  if (v5)
  {
    v6 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_endowment"];
    v7 = RBSXPCUnpackObject(v6);
    v8 = RBSEndowmentDecode(v7);

    if (v8)
    {
      self = [(RBSSavedEndowment *)self _initWithEndowment:v8 andKey:v5];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end