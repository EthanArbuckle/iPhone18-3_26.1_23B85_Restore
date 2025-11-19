@interface SPHandle
+ (SPHandle)handleWithEmailAddress:(id)a3;
+ (SPHandle)handleWithPhoneNumber:(id)a3;
+ (SPHandle)handleWithRecipient:(id)a3;
+ (SPHandle)handleWithString:(id)a3;
+ (SPHandle)handleWithString:(id)a3 formattedName:(id)a4;
+ (SPHandle)handleWithWeb:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SPHandle)initWithCoder:(id)a3;
- (SPHandle)initWithType:(int64_t)a3 destination:(id)a4;
- (SPHandle)initWithType:(int64_t)a3 destination:(id)a4 formattedName:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPHandle

+ (SPHandle)handleWithString:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@"@"])
  {
    [SPHandle handleWithEmailAddress:v3];
  }

  else
  {
    [SPHandle handleWithPhoneNumber:v3];
  }
  v4 = ;

  return v4;
}

+ (SPHandle)handleWithString:(id)a3 formattedName:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([v6 containsString:@"@"])
  {
    [SPHandle handleWithEmailAddress:v6];
  }

  else
  {
    [SPHandle handleWithPhoneNumber:v6];
  }
  v7 = ;

  [v7 setFormattedName:v5];

  return v7;
}

+ (SPHandle)handleWithEmailAddress:(id)a3
{
  v3 = a3;
  v4 = [[SPHandle alloc] initWithType:0 destination:v3];

  return v4;
}

+ (SPHandle)handleWithPhoneNumber:(id)a3
{
  v3 = a3;
  v4 = [[SPHandle alloc] initWithType:1 destination:v3];

  return v4;
}

+ (SPHandle)handleWithWeb:(id)a3
{
  v3 = a3;
  v4 = [[SPHandle alloc] initWithType:2 destination:v3];

  return v4;
}

+ (SPHandle)handleWithRecipient:(id)a3
{
  v3 = a3;
  v4 = [[SPHandle alloc] initWithType:3 destination:v3];

  return v4;
}

- (SPHandle)initWithType:(int64_t)a3 destination:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SPHandle;
  v8 = [(SPHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_destination, a4);
  }

  return v9;
}

- (SPHandle)initWithType:(int64_t)a3 destination:(id)a4 formattedName:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SPHandle;
  v11 = [(SPHandle *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_destination, a4);
    objc_storeStrong(&v12->_formattedName, a5);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPHandle *)self type];
      if (v6 == [(SPHandle *)v5 type])
      {
        v7 = [(SPHandle *)self destination];
        v8 = [(SPHandle *)v5 destination];
        if ([v7 isEqualToString:v8])
        {
          v9 = [(SPHandle *)self formattedName];
          v10 = [(SPHandle *)v5 formattedName];
          v11 = [v9 isEqualToString:v10];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(SPHandle *)self destination];
  v4 = [v3 hash];
  v5 = [(SPHandle *)self type]^ v4;
  v6 = [(SPHandle *)self formattedName];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPHandle alloc];
  v5 = [(SPHandle *)self type];
  v6 = [(SPHandle *)self destination];
  v7 = [(SPHandle *)self formattedName];
  v8 = [(SPHandle *)v4 initWithType:v5 destination:v6 formattedName:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_destination forKey:@"destination"];
  [v5 encodeObject:self->_formattedName forKey:@"formattedName"];
}

- (SPHandle)initWithCoder:(id)a3
{
  v4 = a3;
  self->_type = [v4 decodeIntegerForKey:@"type"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
  destination = self->_destination;
  self->_destination = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formattedName"];

  formattedName = self->_formattedName;
  self->_formattedName = v7;

  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPHandle *)self type];
  v6 = [(SPHandle *)self destination];
  v7 = [(SPHandle *)self formattedName];
  v8 = [v3 stringWithFormat:@"<%@: %p %ld:%@ %@>", v4, self, v5, v6, v7];

  return v8;
}

@end