@interface KTOptIOValidatorResult
- (KTOptIOValidatorResult)initWithCoder:(id)a3;
- (KTOptIOValidatorResult)initWithState:(unint64_t)a3 timestamp:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTOptIOValidatorResult

- (KTOptIOValidatorResult)initWithState:(unint64_t)a3 timestamp:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = KTOptIOValidatorResult;
  v7 = [(KTOptIOValidatorResult *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(KTOptIOValidatorResult *)v7 setState:a3];
    [(KTOptIOValidatorResult *)v8 setTimestamp:v6];
    v9 = v8;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeInt:-[KTOptIOValidatorResult state](self forKey:{"state"), @"state"}];
  v4 = [(KTOptIOValidatorResult *)self uriNeedsOptInChange];

  if (v4)
  {
    v5 = [(KTOptIOValidatorResult *)self uriNeedsOptInChange];
    [v10 encodeObject:v5 forKey:@"uriNeedsOptInChange"];
  }

  v6 = [(KTOptIOValidatorResult *)self uris];

  if (v6)
  {
    v7 = [(KTOptIOValidatorResult *)self uris];
    [v10 encodeObject:v7 forKey:@"uris"];
  }

  v8 = [(KTOptIOValidatorResult *)self timestamp];

  if (v8)
  {
    v9 = [(KTOptIOValidatorResult *)self timestamp];
    [v10 encodeObject:v9 forKey:@"timestamp"];
  }

  if ([(KTOptIOValidatorResult *)self usedIntendedState])
  {
    [v10 encodeInt:-[KTOptIOValidatorResult usedIntendedState](self forKey:{"usedIntendedState"), @"usedIntendedState"}];
  }
}

- (KTOptIOValidatorResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"state"];
  v6 = [v4 decodeIntForKey:@"usedIntendedState"];
  if (v5 <= 2 && (v7 = v6, v15.receiver = self, v15.super_class = KTOptIOValidatorResult, v8 = [(KTOptIOValidatorResult *)&v15 init], (self = v8) != 0))
  {
    [(KTOptIOValidatorResult *)v8 setState:v5];
    v9 = objc_opt_class();
    v10 = [v4 decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"uriNeedsOptInChange"];
    [(KTOptIOValidatorResult *)self setUriNeedsOptInChange:v10];

    v11 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"uris"];
    [(KTOptIOValidatorResult *)self setUris:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    [(KTOptIOValidatorResult *)self setTimestamp:v12];

    [(KTOptIOValidatorResult *)self setUsedIntendedState:v7 != 0];
    self = self;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(KTOptIOValidatorResult *)self state];
  v5 = [(KTOptIOValidatorResult *)self timestamp];
  v6 = [(KTOptIOValidatorResult *)self uriNeedsOptInChange];
  v7 = [v3 stringWithFormat:@"<KTOptIOValidatorResult state: %d timestamp: %@ uriNeedsOptInChange: %@>", v4, v5, v6];

  return v7;
}

@end