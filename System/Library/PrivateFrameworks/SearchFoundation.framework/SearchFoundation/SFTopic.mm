@interface SFTopic
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SFTopic)initWithCoder:(id)coder;
- (SFTopic)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SFTopic

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(SFTopic *)self identifier];
  v4 = [v2 stringWithFormat:@"queryID: %@", identifier];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    identifier = [(SFTopic *)self identifier];
    identifier2 = [v7 identifier];

    v6 = [identifier isEqual:identifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  identifier = [(SFTopic *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (SFTopic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFTopic;
  v5 = [(SFTopic *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (SFTopic)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = SFTopic;
  v5 = [(SFTopic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SFTopic *)v5 setIdentifier:identifierCopy];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(SFTopic *)self identifier];
  [v4 setIdentifier:identifier];

  return v4;
}

@end