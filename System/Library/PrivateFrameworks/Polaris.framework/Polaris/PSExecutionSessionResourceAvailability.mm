@interface PSExecutionSessionResourceAvailability
- (PSExecutionSessionResourceAvailability)initWithCoder:(id)a3;
- (PSExecutionSessionResourceAvailability)initWithResourceKey:(id)a3 availability:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSExecutionSessionResourceAvailability

- (PSExecutionSessionResourceAvailability)initWithResourceKey:(id)a3 availability:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PSExecutionSessionResourceAvailability;
  v8 = [(PSExecutionSessionResourceAvailability *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->key, a3);
    v9->availability = a4;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  key = self->key;
  v5 = a3;
  [v5 encodeObject:key forKey:@"key"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->availability];
  [v5 encodeObject:v6 forKey:@"availability"];
}

- (PSExecutionSessionResourceAvailability)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PSExecutionSessionResourceAvailability;
  v5 = [(PSExecutionSessionResourceAvailability *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"key"];
    key = v5->key;
    v5->key = v6;

    v8 = [v4 decodeObjectForKey:@"availability"];
    v5->availability = [v8 unsignedIntValue];
  }

  return v5;
}

@end