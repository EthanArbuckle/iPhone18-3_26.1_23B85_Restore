@interface SBKGenericKeyValuePair
+ (id)pairWithKVSKey:(id)a3 kvsPayload:(id)a4;
- (SBKGenericKeyValuePair)initWithCoder:(id)a3;
- (SBKGenericKeyValuePair)initWithKVSKey:(id)a3 kvsPayload:(id)a4;
- (id)kvsValueDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBKGenericKeyValuePair

- (id)kvsValueDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SBKGenericKeyValuePair;
  v4 = [(SBKGenericKeyValuePair *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: key=%@, payload=%@", v4, self->_kvsKey, self->_kvsPayload];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  kvsKey = self->_kvsKey;
  v5 = a3;
  [v5 encodeObject:kvsKey forKey:@"kvsKey"];
  [v5 encodeObject:self->_kvsPayload forKey:@"kvsPayload"];
}

- (SBKGenericKeyValuePair)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBKGenericKeyValuePair;
  v5 = [(SBKGenericKeyValuePair *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kvsKey"];
    kvsKey = v5->_kvsKey;
    v5->_kvsKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kvsPayload"];
    kvsPayload = v5->_kvsPayload;
    v5->_kvsPayload = v8;
  }

  return v5;
}

- (SBKGenericKeyValuePair)initWithKVSKey:(id)a3 kvsPayload:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBKGenericKeyValuePair;
  v9 = [(SBKGenericKeyValuePair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_kvsKey, a3);
    objc_storeStrong(&v10->_kvsPayload, a4);
  }

  return v10;
}

+ (id)pairWithKVSKey:(id)a3 kvsPayload:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithKVSKey:v7 kvsPayload:v6];

  return v8;
}

@end