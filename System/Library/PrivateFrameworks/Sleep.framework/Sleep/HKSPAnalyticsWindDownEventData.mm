@interface HKSPAnalyticsWindDownEventData
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualEventData:(id)a3;
- (HKSPAnalyticsWindDownEventData)initWithCoder:(id)a3;
- (HKSPAnalyticsWindDownEventData)initWithWindDownAction:(unint64_t)a3 wasUsed:(BOOL)a4 identifier:(id)a5 wasCollected:(BOOL)a6;
- (id)collectedEventDataCopy;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPAnalyticsWindDownEventData

- (HKSPAnalyticsWindDownEventData)initWithWindDownAction:(unint64_t)a3 wasUsed:(BOOL)a4 identifier:(id)a5 wasCollected:(BOOL)a6
{
  v11 = a5;
  v16.receiver = self;
  v16.super_class = HKSPAnalyticsWindDownEventData;
  v12 = [(HKSPAnalyticsWindDownEventData *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_action = a3;
    v12->_wasUsed = a4;
    objc_storeStrong(&v12->_identifier, a5);
    v13->_wasCollected = a6;
    v14 = v13;
  }

  return v13;
}

- (id)collectedEventDataCopy
{
  v3 = [HKSPAnalyticsWindDownEventData alloc];
  v4 = [(HKSPAnalyticsWindDownEventData *)self action];
  v5 = [(HKSPAnalyticsWindDownEventData *)self wasUsed];
  v6 = [(HKSPAnalyticsWindDownEventData *)self identifier];
  v7 = [v6 copy];
  v8 = [(HKSPAnalyticsWindDownEventData *)v3 initWithWindDownAction:v4 wasUsed:v5 identifier:v7 wasCollected:1];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  action = self->_action;
  v7 = a3;
  v6 = [v4 numberWithUnsignedInteger:action];
  [v7 encodeObject:v6 forKey:@"WindDownAction"];

  [v7 encodeBool:self->_wasUsed forKey:@"WasUsed"];
  [v7 encodeBool:self->_wasCollected forKey:@"WasCollected"];
  [v7 encodeObject:self->_identifier forKey:@"WindDownIdentifier"];
}

- (HKSPAnalyticsWindDownEventData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WindDownAction"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeBoolForKey:@"WasUsed"];
  v8 = [v4 decodeBoolForKey:@"WasCollected"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WindDownIdentifier"];

  v10 = [(HKSPAnalyticsWindDownEventData *)self initWithWindDownAction:v6 wasUsed:v7 identifier:v9 wasCollected:v8];
  return v10;
}

- (unint64_t)hash
{
  v3 = [(HKSPAnalyticsWindDownEventData *)self identifier];
  v4 = [v3 hash];
  v5 = [(HKSPAnalyticsWindDownEventData *)self action];

  return v5 ^ v4;
}

- (BOOL)isEqualEventData:(id)a3
{
  v4 = a3;
  v5 = [(HKSPAnalyticsWindDownEventData *)self identifier];
  v6 = [v4 identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(HKSPAnalyticsWindDownEventData *)self action];
    v8 = v7 == [v4 action];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKSPAnalyticsWindDownEventData *)self isEqualEventData:v4];
  }

  return v5;
}

@end