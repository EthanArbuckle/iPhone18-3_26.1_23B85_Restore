@interface HKSPAnalyticsWindDownEventData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualEventData:(id)data;
- (HKSPAnalyticsWindDownEventData)initWithCoder:(id)coder;
- (HKSPAnalyticsWindDownEventData)initWithWindDownAction:(unint64_t)action wasUsed:(BOOL)used identifier:(id)identifier wasCollected:(BOOL)collected;
- (id)collectedEventDataCopy;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSPAnalyticsWindDownEventData

- (HKSPAnalyticsWindDownEventData)initWithWindDownAction:(unint64_t)action wasUsed:(BOOL)used identifier:(id)identifier wasCollected:(BOOL)collected
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = HKSPAnalyticsWindDownEventData;
  v12 = [(HKSPAnalyticsWindDownEventData *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_action = action;
    v12->_wasUsed = used;
    objc_storeStrong(&v12->_identifier, identifier);
    v13->_wasCollected = collected;
    v14 = v13;
  }

  return v13;
}

- (id)collectedEventDataCopy
{
  v3 = [HKSPAnalyticsWindDownEventData alloc];
  action = [(HKSPAnalyticsWindDownEventData *)self action];
  wasUsed = [(HKSPAnalyticsWindDownEventData *)self wasUsed];
  identifier = [(HKSPAnalyticsWindDownEventData *)self identifier];
  v7 = [identifier copy];
  v8 = [(HKSPAnalyticsWindDownEventData *)v3 initWithWindDownAction:action wasUsed:wasUsed identifier:v7 wasCollected:1];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  action = self->_action;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:action];
  [coderCopy encodeObject:v6 forKey:@"WindDownAction"];

  [coderCopy encodeBool:self->_wasUsed forKey:@"WasUsed"];
  [coderCopy encodeBool:self->_wasCollected forKey:@"WasCollected"];
  [coderCopy encodeObject:self->_identifier forKey:@"WindDownIdentifier"];
}

- (HKSPAnalyticsWindDownEventData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WindDownAction"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeBoolForKey:@"WasUsed"];
  v8 = [coderCopy decodeBoolForKey:@"WasCollected"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WindDownIdentifier"];

  v10 = [(HKSPAnalyticsWindDownEventData *)self initWithWindDownAction:integerValue wasUsed:v7 identifier:v9 wasCollected:v8];
  return v10;
}

- (unint64_t)hash
{
  identifier = [(HKSPAnalyticsWindDownEventData *)self identifier];
  v4 = [identifier hash];
  action = [(HKSPAnalyticsWindDownEventData *)self action];

  return action ^ v4;
}

- (BOOL)isEqualEventData:(id)data
{
  dataCopy = data;
  identifier = [(HKSPAnalyticsWindDownEventData *)self identifier];
  identifier2 = [dataCopy identifier];
  if ([identifier isEqualToString:identifier2])
  {
    action = [(HKSPAnalyticsWindDownEventData *)self action];
    v8 = action == [dataCopy action];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKSPAnalyticsWindDownEventData *)self isEqualEventData:equalCopy];
  }

  return v5;
}

@end