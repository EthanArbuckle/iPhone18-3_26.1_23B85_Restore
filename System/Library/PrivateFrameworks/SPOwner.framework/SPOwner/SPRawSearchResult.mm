@interface SPRawSearchResult
- (SPRawSearchResult)initWithCoder:(id)coder;
- (SPRawSearchResult)initWithHashedPublicKey:(id)key publicKey:(id)publicKey status:(int64_t)status timestamp:(id)timestamp latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRawSearchResult

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPRawSearchResult alloc];
  hashedPublicKey = [(SPRawSearchResult *)self hashedPublicKey];
  publicKey = [(SPRawSearchResult *)self publicKey];
  status = [(SPRawSearchResult *)self status];
  timestamp = [(SPRawSearchResult *)self timestamp];
  [(SPRawSearchResult *)self latitude];
  v10 = v9;
  [(SPRawSearchResult *)self longitude];
  v12 = v11;
  [(SPRawSearchResult *)self horizontalAccuracy];
  v14 = [(SPRawSearchResult *)v4 initWithHashedPublicKey:hashedPublicKey publicKey:publicKey status:status timestamp:timestamp latitude:v10 longitude:v12 horizontalAccuracy:v13];

  return v14;
}

- (SPRawSearchResult)initWithHashedPublicKey:(id)key publicKey:(id)publicKey status:(int64_t)status timestamp:(id)timestamp latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy
{
  keyCopy = key;
  publicKeyCopy = publicKey;
  timestampCopy = timestamp;
  v23.receiver = self;
  v23.super_class = SPRawSearchResult;
  v20 = [(SPRawSearchResult *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_hashedPublicKey, key);
    objc_storeStrong(&v21->_publicKey, publicKey);
    v21->_status = status;
    objc_storeStrong(&v21->_timestamp, timestamp);
    v21->_latitude = latitude;
    v21->_longitude = longitude;
    v21->_horizontalAccuracy = accuracy;
  }

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  hashedPublicKey = self->_hashedPublicKey;
  coderCopy = coder;
  [coderCopy encodeObject:hashedPublicKey forKey:@"hashedPublicKey"];
  [coderCopy encodeObject:self->_publicKey forKey:@"publicKey"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeDouble:@"latitude" forKey:self->_latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_longitude];
  [coderCopy encodeDouble:@"horizontalAccuracy" forKey:self->_horizontalAccuracy];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
}

- (SPRawSearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashedPublicKey"];
  hashedPublicKey = self->_hashedPublicKey;
  self->_hashedPublicKey = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
  publicKey = self->_publicKey;
  self->_publicKey = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v9;

  [coderCopy decodeDoubleForKey:@"latitude"];
  self->_latitude = v11;
  [coderCopy decodeDoubleForKey:@"longitude"];
  self->_longitude = v12;
  [coderCopy decodeDoubleForKey:@"horizontalAccuracy"];
  self->_horizontalAccuracy = v13;
  v14 = [coderCopy decodeIntegerForKey:@"status"];

  self->_status = v14;
  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(SPRawSearchResult *)self latitude];
  v6 = v5;
  [(SPRawSearchResult *)self longitude];
  v8 = v7;
  timestamp = [(SPRawSearchResult *)self timestamp];
  [(SPRawSearchResult *)self horizontalAccuracy];
  v11 = [v3 stringWithFormat:@"<%@ %p: %.06f/%.06f %@ (%.0f)>", v4, self, v6, v8, timestamp, v10];

  return v11;
}

@end