@interface KTOptIOValidatorResult
- (KTOptIOValidatorResult)initWithCoder:(id)coder;
- (KTOptIOValidatorResult)initWithState:(unint64_t)state timestamp:(id)timestamp;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTOptIOValidatorResult

- (KTOptIOValidatorResult)initWithState:(unint64_t)state timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v11.receiver = self;
  v11.super_class = KTOptIOValidatorResult;
  v7 = [(KTOptIOValidatorResult *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(KTOptIOValidatorResult *)v7 setState:state];
    [(KTOptIOValidatorResult *)v8 setTimestamp:timestampCopy];
    v9 = v8;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[KTOptIOValidatorResult state](self forKey:{"state"), @"state"}];
  uriNeedsOptInChange = [(KTOptIOValidatorResult *)self uriNeedsOptInChange];

  if (uriNeedsOptInChange)
  {
    uriNeedsOptInChange2 = [(KTOptIOValidatorResult *)self uriNeedsOptInChange];
    [coderCopy encodeObject:uriNeedsOptInChange2 forKey:@"uriNeedsOptInChange"];
  }

  uris = [(KTOptIOValidatorResult *)self uris];

  if (uris)
  {
    uris2 = [(KTOptIOValidatorResult *)self uris];
    [coderCopy encodeObject:uris2 forKey:@"uris"];
  }

  timestamp = [(KTOptIOValidatorResult *)self timestamp];

  if (timestamp)
  {
    timestamp2 = [(KTOptIOValidatorResult *)self timestamp];
    [coderCopy encodeObject:timestamp2 forKey:@"timestamp"];
  }

  if ([(KTOptIOValidatorResult *)self usedIntendedState])
  {
    [coderCopy encodeInt:-[KTOptIOValidatorResult usedIntendedState](self forKey:{"usedIntendedState"), @"usedIntendedState"}];
  }
}

- (KTOptIOValidatorResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"state"];
  v6 = [coderCopy decodeIntForKey:@"usedIntendedState"];
  if (v5 <= 2 && (v7 = v6, v15.receiver = self, v15.super_class = KTOptIOValidatorResult, v8 = [(KTOptIOValidatorResult *)&v15 init], (self = v8) != 0))
  {
    [(KTOptIOValidatorResult *)v8 setState:v5];
    v9 = objc_opt_class();
    v10 = [coderCopy decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"uriNeedsOptInChange"];
    [(KTOptIOValidatorResult *)self setUriNeedsOptInChange:v10];

    v11 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"uris"];
    [(KTOptIOValidatorResult *)self setUris:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    [(KTOptIOValidatorResult *)self setTimestamp:v12];

    [(KTOptIOValidatorResult *)self setUsedIntendedState:v7 != 0];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  state = [(KTOptIOValidatorResult *)self state];
  timestamp = [(KTOptIOValidatorResult *)self timestamp];
  uriNeedsOptInChange = [(KTOptIOValidatorResult *)self uriNeedsOptInChange];
  v7 = [v3 stringWithFormat:@"<KTOptIOValidatorResult state: %d timestamp: %@ uriNeedsOptInChange: %@>", state, timestamp, uriNeedsOptInChange];

  return v7;
}

@end