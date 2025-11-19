@interface VMHandle
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHandle:(id)a3;
- (VMHandle)init;
- (VMHandle)initWithCoder:(id)a3;
- (VMHandle)initWithHandle:(id)a3;
- (VMHandle)initWithType:(int64_t)a3 value:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VMHandle

- (VMHandle)init
{
  [(VMHandle *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMHandle)initWithHandle:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v4 value];

  v7 = [(VMHandle *)self initWithType:v5 value:v6];
  return v7;
}

- (VMHandle)initWithType:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = VMHandle;
  v7 = [(VMHandle *)&v11 init];
  if (v7)
  {
    if (a3)
    {
      if (v6)
      {
LABEL_4:
        v7->_type = a3;
        v8 = [v6 copy];
        value = v7->_value;
        v7->_value = v8;

        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%s: parameter '%@' cannot be nil", "-[VMHandle initWithType:value:]", @"type"}];
      if (v6)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VMHandle allocWithZone:a3];

  return [(VMHandle *)v4 initWithHandle:self];
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  v6 = NSStringFromSelector(sel_type);
  [v5 encodeInteger:type forKey:v6];

  value = self->_value;
  v8 = NSStringFromSelector(sel_value);
  [v5 encodeObject:value forKey:v8];
}

- (VMHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VMHandle;
  v5 = [(VMHandle *)&v12 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_type);
    v5->_type = [v4 decodeIntegerForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_value);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
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
  v6 = [(VMHandle *)self value];
  [v3 appendFormat:@"%@=%@", v5, v6];

  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VMHandle *)self type];
  v4 = [(VMHandle *)self value];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(VMHandle *)self isEqualToHandle:v4];
  }

  return v5;
}

- (BOOL)isEqualToHandle:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = [(VMHandle *)self type];
    if (v5 == [(VMHandle *)v4 type])
    {
      v6 = [(VMHandle *)self value];
      v7 = [(VMHandle *)v4 value];
      v8 = (v6 | v7) == 0;
      if (v7)
      {
        v8 = [v6 isEqualToString:v7];
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

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAAC8];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

@end