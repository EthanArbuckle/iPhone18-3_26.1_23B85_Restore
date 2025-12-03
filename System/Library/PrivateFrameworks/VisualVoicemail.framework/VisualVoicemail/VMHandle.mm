@interface VMHandle
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHandle:(id)handle;
- (VMHandle)init;
- (VMHandle)initWithCoder:(id)coder;
- (VMHandle)initWithHandle:(id)handle;
- (VMHandle)initWithType:(int64_t)type value:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VMHandle

- (VMHandle)init
{
  [(VMHandle *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMHandle)initWithHandle:(id)handle
{
  handleCopy = handle;
  type = [handleCopy type];
  value = [handleCopy value];

  v7 = [(VMHandle *)self initWithType:type value:value];
  return v7;
}

- (VMHandle)initWithType:(int64_t)type value:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = VMHandle;
  v7 = [(VMHandle *)&v11 init];
  if (v7)
  {
    if (type)
    {
      if (valueCopy)
      {
LABEL_4:
        v7->_type = type;
        v8 = [valueCopy copy];
        value = v7->_value;
        v7->_value = v8;

        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%s: parameter '%@' cannot be nil", "-[VMHandle initWithType:value:]", @"type"}];
      if (valueCopy)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%s: parameter '%@' cannot be nil", "-[VMHandle initWithType:value:]", @"value"}];
    goto LABEL_4;
  }

LABEL_5:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VMHandle allocWithZone:zone];

  return [(VMHandle *)v4 initWithHandle:self];
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v6];

  value = self->_value;
  v8 = NSStringFromSelector(sel_value);
  [coderCopy encodeObject:value forKey:v8];
}

- (VMHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = VMHandle;
  v5 = [(VMHandle *)&v12 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_type);
    v5->_type = [coderCopy decodeIntegerForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_value);
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    value = v5->_value;
    v5->_value = v9;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_type);
  [v3 appendFormat:@"%@=%ld", v4, -[VMHandle type](self, "type")];

  [v3 appendFormat:@", "];
  v5 = NSStringFromSelector(sel_value);
  value = [(VMHandle *)self value];
  [v3 appendFormat:@"%@=%@", v5, value];

  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  type = [(VMHandle *)self type];
  value = [(VMHandle *)self value];
  v5 = [value hash];

  return v5 ^ type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(VMHandle *)self isEqualToHandle:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToHandle:(id)handle
{
  handleCopy = handle;
  if (self == handleCopy)
  {
    v8 = 1;
  }

  else
  {
    type = [(VMHandle *)self type];
    if (type == [(VMHandle *)handleCopy type])
    {
      value = [(VMHandle *)self value];
      value2 = [(VMHandle *)handleCopy value];
      v8 = (value | value2) == 0;
      if (value2)
      {
        v8 = [value isEqualToString:value2];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end