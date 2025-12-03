@interface SPHandle
+ (SPHandle)handleWithEmailAddress:(id)address;
+ (SPHandle)handleWithPhoneNumber:(id)number;
+ (SPHandle)handleWithRecipient:(id)recipient;
+ (SPHandle)handleWithString:(id)string;
+ (SPHandle)handleWithString:(id)string formattedName:(id)name;
+ (SPHandle)handleWithWeb:(id)web;
- (BOOL)isEqual:(id)equal;
- (SPHandle)initWithCoder:(id)coder;
- (SPHandle)initWithType:(int64_t)type destination:(id)destination;
- (SPHandle)initWithType:(int64_t)type destination:(id)destination formattedName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPHandle

+ (SPHandle)handleWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy containsString:@"@"])
  {
    [SPHandle handleWithEmailAddress:stringCopy];
  }

  else
  {
    [SPHandle handleWithPhoneNumber:stringCopy];
  }
  v4 = ;

  return v4;
}

+ (SPHandle)handleWithString:(id)string formattedName:(id)name
{
  nameCopy = name;
  stringCopy = string;
  if ([stringCopy containsString:@"@"])
  {
    [SPHandle handleWithEmailAddress:stringCopy];
  }

  else
  {
    [SPHandle handleWithPhoneNumber:stringCopy];
  }
  v7 = ;

  [v7 setFormattedName:nameCopy];

  return v7;
}

+ (SPHandle)handleWithEmailAddress:(id)address
{
  addressCopy = address;
  v4 = [[SPHandle alloc] initWithType:0 destination:addressCopy];

  return v4;
}

+ (SPHandle)handleWithPhoneNumber:(id)number
{
  numberCopy = number;
  v4 = [[SPHandle alloc] initWithType:1 destination:numberCopy];

  return v4;
}

+ (SPHandle)handleWithWeb:(id)web
{
  webCopy = web;
  v4 = [[SPHandle alloc] initWithType:2 destination:webCopy];

  return v4;
}

+ (SPHandle)handleWithRecipient:(id)recipient
{
  recipientCopy = recipient;
  v4 = [[SPHandle alloc] initWithType:3 destination:recipientCopy];

  return v4;
}

- (SPHandle)initWithType:(int64_t)type destination:(id)destination
{
  destinationCopy = destination;
  v11.receiver = self;
  v11.super_class = SPHandle;
  v8 = [(SPHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_destination, destination);
  }

  return v9;
}

- (SPHandle)initWithType:(int64_t)type destination:(id)destination formattedName:(id)name
{
  destinationCopy = destination;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = SPHandle;
  v11 = [(SPHandle *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_destination, destination);
    objc_storeStrong(&v12->_formattedName, name);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(SPHandle *)self type];
      if (type == [(SPHandle *)v5 type])
      {
        destination = [(SPHandle *)self destination];
        destination2 = [(SPHandle *)v5 destination];
        if ([destination isEqualToString:destination2])
        {
          formattedName = [(SPHandle *)self formattedName];
          formattedName2 = [(SPHandle *)v5 formattedName];
          v11 = [formattedName isEqualToString:formattedName2];
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
  destination = [(SPHandle *)self destination];
  v4 = [destination hash];
  v5 = [(SPHandle *)self type]^ v4;
  formattedName = [(SPHandle *)self formattedName];
  v7 = [formattedName hash];

  return v5 ^ v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPHandle alloc];
  type = [(SPHandle *)self type];
  destination = [(SPHandle *)self destination];
  formattedName = [(SPHandle *)self formattedName];
  v8 = [(SPHandle *)v4 initWithType:type destination:destination formattedName:formattedName];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_destination forKey:@"destination"];
  [coderCopy encodeObject:self->_formattedName forKey:@"formattedName"];
}

- (SPHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_type = [coderCopy decodeIntegerForKey:@"type"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
  destination = self->_destination;
  self->_destination = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formattedName"];

  formattedName = self->_formattedName;
  self->_formattedName = v7;

  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  type = [(SPHandle *)self type];
  destination = [(SPHandle *)self destination];
  formattedName = [(SPHandle *)self formattedName];
  v8 = [v3 stringWithFormat:@"<%@: %p %ld:%@ %@>", v4, self, type, destination, formattedName];

  return v8;
}

@end