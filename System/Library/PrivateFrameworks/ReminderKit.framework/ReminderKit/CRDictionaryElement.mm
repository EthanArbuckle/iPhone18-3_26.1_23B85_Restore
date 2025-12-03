@interface CRDictionaryElement
+ (id)temporaryElementWithValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (CRDictionaryElement)initWithValue:(id)value;
- (CRDictionaryElement)initWithValue:(id)value timestamp:(id)timestamp;
- (id)description;
- (unint64_t)hash;
- (void)mergeWith:(id)with;
@end

@implementation CRDictionaryElement

+ (id)temporaryElementWithValue:(id)value
{
  valueCopy = value;
  v4 = [[CRDictionaryElement alloc] initWithValue:valueCopy timestamp:0];

  return v4;
}

- (CRDictionaryElement)initWithValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = CRDictionaryElement;
  v6 = [(CRDictionaryElement *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
    v8 = objc_alloc_init(CRVectorTimestamp);
    timestamp = v7->_timestamp;
    v7->_timestamp = v8;
  }

  return v7;
}

- (CRDictionaryElement)initWithValue:(id)value timestamp:(id)timestamp
{
  valueCopy = value;
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = CRDictionaryElement;
  v9 = [(CRDictionaryElement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, value);
    objc_storeStrong(&v10->_timestamp, timestamp);
  }

  return v10;
}

- (unint64_t)hash
{
  value = [(CRDictionaryElement *)self value];
  v3 = [value hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [(CRDictionaryElement *)self value];
    value2 = [equalCopy value];
    v7 = [value isEqual:value2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  timestamp = [(CRDictionaryElement *)self timestamp];
  timestamp2 = [withCopy timestamp];
  [timestamp mergeWith:timestamp2];

  value = [(CRDictionaryElement *)self value];
  value2 = [withCopy value];
  [value mergeWith:value2];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  timestamp = [(CRDictionaryElement *)self timestamp];
  shortDescription = [timestamp shortDescription];
  value = [(CRDictionaryElement *)self value];
  v9 = [v3 stringWithFormat:@"<%@ %p %@ %@>", v5, self, shortDescription, value];

  return v9;
}

@end