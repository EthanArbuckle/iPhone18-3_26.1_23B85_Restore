@interface SBKGenericKeyValuePair
+ (id)pairWithKVSKey:(id)key kvsPayload:(id)payload;
- (SBKGenericKeyValuePair)initWithCoder:(id)coder;
- (SBKGenericKeyValuePair)initWithKVSKey:(id)key kvsPayload:(id)payload;
- (id)kvsValueDescription;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  kvsKey = self->_kvsKey;
  coderCopy = coder;
  [coderCopy encodeObject:kvsKey forKey:@"kvsKey"];
  [coderCopy encodeObject:self->_kvsPayload forKey:@"kvsPayload"];
}

- (SBKGenericKeyValuePair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SBKGenericKeyValuePair;
  v5 = [(SBKGenericKeyValuePair *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kvsKey"];
    kvsKey = v5->_kvsKey;
    v5->_kvsKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kvsPayload"];
    kvsPayload = v5->_kvsPayload;
    v5->_kvsPayload = v8;
  }

  return v5;
}

- (SBKGenericKeyValuePair)initWithKVSKey:(id)key kvsPayload:(id)payload
{
  keyCopy = key;
  payloadCopy = payload;
  v12.receiver = self;
  v12.super_class = SBKGenericKeyValuePair;
  v9 = [(SBKGenericKeyValuePair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_kvsKey, key);
    objc_storeStrong(&v10->_kvsPayload, payload);
  }

  return v10;
}

+ (id)pairWithKVSKey:(id)key kvsPayload:(id)payload
{
  payloadCopy = payload;
  keyCopy = key;
  v8 = [[self alloc] initWithKVSKey:keyCopy kvsPayload:payloadCopy];

  return v8;
}

@end