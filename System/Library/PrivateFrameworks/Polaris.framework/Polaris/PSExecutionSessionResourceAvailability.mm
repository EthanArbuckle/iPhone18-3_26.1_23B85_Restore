@interface PSExecutionSessionResourceAvailability
- (PSExecutionSessionResourceAvailability)initWithCoder:(id)coder;
- (PSExecutionSessionResourceAvailability)initWithResourceKey:(id)key availability:(unint64_t)availability;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSExecutionSessionResourceAvailability

- (PSExecutionSessionResourceAvailability)initWithResourceKey:(id)key availability:(unint64_t)availability
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = PSExecutionSessionResourceAvailability;
  v8 = [(PSExecutionSessionResourceAvailability *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->key, key);
    v9->availability = availability;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  key = self->key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"key"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->availability];
  [coderCopy encodeObject:v6 forKey:@"availability"];
}

- (PSExecutionSessionResourceAvailability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PSExecutionSessionResourceAvailability;
  v5 = [(PSExecutionSessionResourceAvailability *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"key"];
    key = v5->key;
    v5->key = v6;

    v8 = [coderCopy decodeObjectForKey:@"availability"];
    v5->availability = [v8 unsignedIntValue];
  }

  return v5;
}

@end