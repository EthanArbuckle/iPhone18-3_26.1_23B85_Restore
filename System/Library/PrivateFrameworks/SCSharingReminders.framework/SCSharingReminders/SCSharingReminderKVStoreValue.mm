@interface SCSharingReminderKVStoreValue
+ (id)defaultForKey:(int64_t)key;
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)equal;
- (SCSharingReminderKVStoreValue)initWithBoolValue:(BOOL)value;
- (SCSharingReminderKVStoreValue)initWithCoder:(id)coder;
- (SCSharingReminderKVStoreValue)initWithData:(id)data;
- (SCSharingReminderKVStoreValue)initWithIntegerValue:(int64_t)value;
- (id)description;
- (int64_t)integerValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCSharingReminderKVStoreValue

+ (id)defaultForKey:(int64_t)key
{
  if (key > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [[SCSharingReminderKVStoreValue alloc] initWithIntegerValue:qword_262564018[key]];
  }

  return v4;
}

- (SCSharingReminderKVStoreValue)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = SCSharingReminderKVStoreValue;
  v6 = [(SCSharingReminderKVStoreValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (SCSharingReminderKVStoreValue)initWithIntegerValue:(int64_t)value
{
  valueCopy = value;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&valueCopy length:8];
  v5 = [(SCSharingReminderKVStoreValue *)self initWithData:v4];

  return v5;
}

- (SCSharingReminderKVStoreValue)initWithBoolValue:(BOOL)value
{
  valueCopy = value;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&valueCopy length:1];
  v5 = [(SCSharingReminderKVStoreValue *)self initWithData:v4];

  return v5;
}

- (int64_t)integerValue
{
  data = [(SCSharingReminderKVStoreValue *)self data];
  if (![data length])
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

    return v6;
  }

  data2 = [(SCSharingReminderKVStoreValue *)self data];
  v5 = [data2 length];

  if (v5 <= 8)
  {
    data = [(SCSharingReminderKVStoreValue *)self data];
    v6 = *[data bytes];
    goto LABEL_6;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)BOOLValue
{
  v3 = 1;
  v4 = [[SCSharingReminderKVStoreValue alloc] initWithBoolValue:1];
  v5 = [[SCSharingReminderKVStoreValue alloc] initWithIntegerValue:1];
  if (![(SCSharingReminderKVStoreValue *)self isEqual:v4])
  {
    v3 = [(SCSharingReminderKVStoreValue *)self isEqual:v5];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(SCSharingReminderKVStoreValue *)self data];
  classKey = [(SCSharingReminderKVStoreValue *)self classKey];
  [coderCopy encodeObject:data forKey:classKey];
}

- (SCSharingReminderKVStoreValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  classKey = [(SCSharingReminderKVStoreValue *)self classKey];
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:classKey];

  if (v7)
  {
    self = [(SCSharingReminderKVStoreValue *)self initWithData:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    data = [(SCSharingReminderKVStoreValue *)self data];
    data2 = [v5 data];
    if (data == data2)
    {
      v10 = 1;
    }

    else
    {
      data3 = [(SCSharingReminderKVStoreValue *)self data];
      data4 = [v5 data];
      v10 = [data3 isEqual:data4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  integerValue = [(SCSharingReminderKVStoreValue *)self integerValue];
  bOOLValue = [(SCSharingReminderKVStoreValue *)self BOOLValue];
  v6 = "No";
  if (bOOLValue)
  {
    v6 = "Yes";
  }

  return [v3 stringWithFormat:@"SCSharingReminderKVStoreValue int: {%ld} BOOL: %s", integerValue, v6];
}

@end