@interface SCSharingReminderKVStoreValue
+ (id)defaultForKey:(int64_t)a3;
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)a3;
- (SCSharingReminderKVStoreValue)initWithBoolValue:(BOOL)a3;
- (SCSharingReminderKVStoreValue)initWithCoder:(id)a3;
- (SCSharingReminderKVStoreValue)initWithData:(id)a3;
- (SCSharingReminderKVStoreValue)initWithIntegerValue:(int64_t)a3;
- (id)description;
- (int64_t)integerValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCSharingReminderKVStoreValue

+ (id)defaultForKey:(int64_t)a3
{
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [[SCSharingReminderKVStoreValue alloc] initWithIntegerValue:qword_262564018[a3]];
  }

  return v4;
}

- (SCSharingReminderKVStoreValue)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SCSharingReminderKVStoreValue;
  v6 = [(SCSharingReminderKVStoreValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (SCSharingReminderKVStoreValue)initWithIntegerValue:(int64_t)a3
{
  v7 = a3;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v7 length:8];
  v5 = [(SCSharingReminderKVStoreValue *)self initWithData:v4];

  return v5;
}

- (SCSharingReminderKVStoreValue)initWithBoolValue:(BOOL)a3
{
  v7 = a3;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v7 length:1];
  v5 = [(SCSharingReminderKVStoreValue *)self initWithData:v4];

  return v5;
}

- (int64_t)integerValue
{
  v3 = [(SCSharingReminderKVStoreValue *)self data];
  if (![v3 length])
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

    return v6;
  }

  v4 = [(SCSharingReminderKVStoreValue *)self data];
  v5 = [v4 length];

  if (v5 <= 8)
  {
    v3 = [(SCSharingReminderKVStoreValue *)self data];
    v6 = *[v3 bytes];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(SCSharingReminderKVStoreValue *)self data];
  v5 = [(SCSharingReminderKVStoreValue *)self classKey];
  [v4 encodeObject:v6 forKey:v5];
}

- (SCSharingReminderKVStoreValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(SCSharingReminderKVStoreValue *)self classKey];
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    self = [(SCSharingReminderKVStoreValue *)self initWithData:v7];
    v8 = self;
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
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SCSharingReminderKVStoreValue *)self data];
    v7 = [v5 data];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(SCSharingReminderKVStoreValue *)self data];
      v9 = [v5 data];
      v10 = [v8 isEqual:v9];
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
  v4 = [(SCSharingReminderKVStoreValue *)self integerValue];
  v5 = [(SCSharingReminderKVStoreValue *)self BOOLValue];
  v6 = "No";
  if (v5)
  {
    v6 = "Yes";
  }

  return [v3 stringWithFormat:@"SCSharingReminderKVStoreValue int: {%ld} BOOL: %s", v4, v6];
}

@end