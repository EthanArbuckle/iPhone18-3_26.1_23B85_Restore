@interface RCOverrideRule
- (RCOverrideRule)initWithCoder:(id)coder;
- (RCOverrideRule)initWithEmailAddress:(id)address displayName:(id)name overrideIdentifier:(id)identifier category:(id)category categoryUpdateTime:(double)time;
- (RCOverrideRule)initWithEmailAddress:(id)address overrideIdentifier:(id)identifier category:(id)category categoryUpdateTime:(double)time;
- (RCOverrideRule)initWithMessageIdHeader:(id)header appleRequestHeader:(id)requestHeader overrideIdentifier:(id)identifier category:(id)category categoryUpdateTime:(double)time;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RCOverrideRule

- (RCOverrideRule)initWithEmailAddress:(id)address overrideIdentifier:(id)identifier category:(id)category categoryUpdateTime:(double)time
{
  addressCopy = address;
  identifierCopy = identifier;
  categoryCopy = category;
  v19.receiver = self;
  v19.super_class = RCOverrideRule;
  v14 = [(RCOverrideRule *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_category, category);
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    categoryUpdateTime = v15->_categoryUpdateTime;
    v15->_categoryUpdateTime = v16;

    objc_storeStrong(&v15->_address, address);
    objc_storeStrong(&v15->_overrideIdentifier, identifier);
  }

  return v15;
}

- (RCOverrideRule)initWithEmailAddress:(id)address displayName:(id)name overrideIdentifier:(id)identifier category:(id)category categoryUpdateTime:(double)time
{
  identifierCopy = identifier;
  categoryCopy = category;
  nameCopy = name;
  addressCopy = address;
  v16 = [[RCAddress alloc] initWithAddress:addressCopy displayName:nameCopy];

  if (v16)
  {
    self = [(RCOverrideRule *)self initWithEmailAddress:v16 overrideIdentifier:identifierCopy category:categoryCopy categoryUpdateTime:time];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RCOverrideRule)initWithMessageIdHeader:(id)header appleRequestHeader:(id)requestHeader overrideIdentifier:(id)identifier category:(id)category categoryUpdateTime:(double)time
{
  headerCopy = header;
  requestHeaderCopy = requestHeader;
  identifierCopy = identifier;
  categoryCopy = category;
  v23.receiver = self;
  v23.super_class = RCOverrideRule;
  v17 = [(RCOverrideRule *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_category, category);
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    categoryUpdateTime = v18->_categoryUpdateTime;
    v18->_categoryUpdateTime = v19;

    address = v18->_address;
    v18->_address = 0;

    objc_storeStrong(&v18->_messageIdHeader, header);
    objc_storeStrong(&v18->_xAppleRequestHeader, requestHeader);
    objc_storeStrong(&v18->_overrideIdentifier, identifier);
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_category copy];
  [v4 setCategory:v5];

  v6 = [(NSNumber *)self->_categoryUpdateTime copy];
  [v4 setCategoryUpdateTime:v6];

  v7 = [(RCAddress *)self->_address copy];
  [v4 setAddress:v7];

  [v4 setXAppleRequestHeader:self->_xAppleRequestHeader];
  [v4 setMessageIdHeader:self->_messageIdHeader];
  v8 = [(NSString *)self->_overrideIdentifier copy];
  [v4 setOverrideIdentifier:v8];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  address = self->_address;
  coderCopy = coder;
  [coderCopy encodeObject:address forKey:@"_address"];
  [coderCopy encodeObject:self->_category forKey:@"_category"];
  [coderCopy encodeObject:self->_categoryUpdateTime forKey:@"_categoryUpdateTime"];
  [coderCopy encodeObject:self->_xAppleRequestHeader forKey:@"_appleRequestHeader"];
  [coderCopy encodeObject:self->_messageIdHeader forKey:@"_messageIdHeader"];
  [coderCopy encodeObject:self->_overrideIdentifier forKey:@"_overrideIdentifier"];
}

- (RCOverrideRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(RCOverrideRule *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_category"];
    category = v5->_category;
    v5->_category = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_categoryUpdateTime"];
    categoryUpdateTime = v5->_categoryUpdateTime;
    v5->_categoryUpdateTime = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_appleRequestHeader"];
    xAppleRequestHeader = v5->_xAppleRequestHeader;
    v5->_xAppleRequestHeader = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_messageIdHeader"];
    messageIdHeader = v5->_messageIdHeader;
    v5->_messageIdHeader = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_overrideIdentifier"];
    overrideIdentifier = v5->_overrideIdentifier;
    v5->_overrideIdentifier = v16;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  displayName = [(RCAddress *)self->_address displayName];
  emailAddress = [(RCAddress *)self->_address emailAddress];
  v12 = *&self->_xAppleRequestHeader;
  category = self->_category;
  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{-[NSNumber longLongValue](self->_categoryUpdateTime, "longLongValue")}];
  v10 = [v3 stringWithFormat:@"[%@ email:%@<%@> uuid:%@ msgId:%@ cat:%@ lastmod:%@ iungoID:%@]", v5, displayName, emailAddress, v12, category, v9, self->_overrideIdentifier];

  return v10;
}

@end