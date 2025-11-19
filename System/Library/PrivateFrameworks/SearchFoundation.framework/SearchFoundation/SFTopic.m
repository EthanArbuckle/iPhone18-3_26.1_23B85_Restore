@interface SFTopic
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SFTopic)initWithCoder:(id)a3;
- (SFTopic)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SFTopic

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SFTopic *)self identifier];
  v4 = [v2 stringWithFormat:@"queryID: %@", v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = [(SFTopic *)self identifier];
    v9 = [v7 identifier];

    v6 = [v8 isEqual:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(SFTopic *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (SFTopic)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFTopic;
  v5 = [(SFTopic *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (SFTopic)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFTopic;
  v5 = [(SFTopic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SFTopic *)v5 setIdentifier:v4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(SFTopic *)self identifier];
  [v4 setIdentifier:v5];

  return v4;
}

@end