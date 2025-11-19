@interface RCOverrideRule
- (RCOverrideRule)initWithCoder:(id)a3;
- (RCOverrideRule)initWithEmailAddress:(id)a3 displayName:(id)a4 overrideIdentifier:(id)a5 category:(id)a6 categoryUpdateTime:(double)a7;
- (RCOverrideRule)initWithEmailAddress:(id)a3 overrideIdentifier:(id)a4 category:(id)a5 categoryUpdateTime:(double)a6;
- (RCOverrideRule)initWithMessageIdHeader:(id)a3 appleRequestHeader:(id)a4 overrideIdentifier:(id)a5 category:(id)a6 categoryUpdateTime:(double)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RCOverrideRule

- (RCOverrideRule)initWithEmailAddress:(id)a3 overrideIdentifier:(id)a4 category:(id)a5 categoryUpdateTime:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = RCOverrideRule;
  v14 = [(RCOverrideRule *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_category, a5);
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
    categoryUpdateTime = v15->_categoryUpdateTime;
    v15->_categoryUpdateTime = v16;

    objc_storeStrong(&v15->_address, a3);
    objc_storeStrong(&v15->_overrideIdentifier, a4);
  }

  return v15;
}

- (RCOverrideRule)initWithEmailAddress:(id)a3 displayName:(id)a4 overrideIdentifier:(id)a5 category:(id)a6 categoryUpdateTime:(double)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [[RCAddress alloc] initWithAddress:v15 displayName:v14];

  if (v16)
  {
    self = [(RCOverrideRule *)self initWithEmailAddress:v16 overrideIdentifier:v12 category:v13 categoryUpdateTime:a7];
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (RCOverrideRule)initWithMessageIdHeader:(id)a3 appleRequestHeader:(id)a4 overrideIdentifier:(id)a5 category:(id)a6 categoryUpdateTime:(double)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v23.receiver = self;
  v23.super_class = RCOverrideRule;
  v17 = [(RCOverrideRule *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_category, a6);
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
    categoryUpdateTime = v18->_categoryUpdateTime;
    v18->_categoryUpdateTime = v19;

    address = v18->_address;
    v18->_address = 0;

    objc_storeStrong(&v18->_messageIdHeader, a3);
    objc_storeStrong(&v18->_xAppleRequestHeader, a4);
    objc_storeStrong(&v18->_overrideIdentifier, a5);
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)encodeWithCoder:(id)a3
{
  address = self->_address;
  v5 = a3;
  [v5 encodeObject:address forKey:@"_address"];
  [v5 encodeObject:self->_category forKey:@"_category"];
  [v5 encodeObject:self->_categoryUpdateTime forKey:@"_categoryUpdateTime"];
  [v5 encodeObject:self->_xAppleRequestHeader forKey:@"_appleRequestHeader"];
  [v5 encodeObject:self->_messageIdHeader forKey:@"_messageIdHeader"];
  [v5 encodeObject:self->_overrideIdentifier forKey:@"_overrideIdentifier"];
}

- (RCOverrideRule)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RCOverrideRule *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_category"];
    category = v5->_category;
    v5->_category = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_categoryUpdateTime"];
    categoryUpdateTime = v5->_categoryUpdateTime;
    v5->_categoryUpdateTime = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_appleRequestHeader"];
    xAppleRequestHeader = v5->_xAppleRequestHeader;
    v5->_xAppleRequestHeader = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_messageIdHeader"];
    messageIdHeader = v5->_messageIdHeader;
    v5->_messageIdHeader = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_overrideIdentifier"];
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
  v6 = [(RCAddress *)self->_address displayName];
  v7 = [(RCAddress *)self->_address emailAddress];
  v12 = *&self->_xAppleRequestHeader;
  category = self->_category;
  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{-[NSNumber longLongValue](self->_categoryUpdateTime, "longLongValue")}];
  v10 = [v3 stringWithFormat:@"[%@ email:%@<%@> uuid:%@ msgId:%@ cat:%@ lastmod:%@ iungoID:%@]", v5, v6, v7, v12, category, v9, self->_overrideIdentifier];

  return v10;
}

@end