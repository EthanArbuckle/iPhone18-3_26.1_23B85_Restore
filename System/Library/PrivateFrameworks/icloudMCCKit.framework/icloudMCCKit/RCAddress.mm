@interface RCAddress
+ (RCAddress)addressWith:(id)with;
- (RCAddress)initWithAddress:(id)address displayName:(id)name;
- (RCAddress)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RCAddress

- (RCAddress)initWithAddress:(id)address displayName:(id)name
{
  addressCopy = address;
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = RCAddress;
  v8 = [(RCAddress *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(RCAddress *)v8 setDisplayName:nameCopy];
    [(RCAddress *)v9 setEmailAddress:addressCopy];
  }

  return v9;
}

+ (RCAddress)addressWith:(id)with
{
  v3 = MEMORY[0x1E696AB08];
  withCopy = with;
  v5 = [v3 characterSetWithCharactersInString:@"<>"];
  v6 = [withCopy componentsSeparatedByCharactersInSet:v5];

  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndex:0];
    v8 = [[RCAddress alloc] initWithAddress:v7 displayName:v7];
LABEL_5:

    goto LABEL_7;
  }

  if ([v6 count] >= 2)
  {
    v7 = [v6 objectAtIndex:0];
    v9 = [v6 objectAtIndex:1];
    v8 = [[RCAddress alloc] initWithAddress:v9 displayName:v7];

    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_displayName copy];
  [v4 setDisplayName:v5];

  v6 = [(NSString *)self->_emailAddress copy];
  [v4 setEmailAddress:v6];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  displayName = self->_displayName;
  coderCopy = coder;
  [coderCopy encodeObject:displayName forKey:@"_displayName"];
  [coderCopy encodeObject:self->_emailAddress forKey:@"_emailAddress"];
}

- (RCAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(RCAddress *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v8;
  }

  return v5;
}

@end