@interface SFSportsTopic
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SFSportsTopic)initWithCoder:(id)coder;
- (SFSportsTopic)initWithQuery:(id)query requestedEntityType:(id)type identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSportsTopic

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = SFSportsTopic;
  v3 = [(SFQueryTopic *)&v9 description];
  v4 = MEMORY[0x1E696AEC0];
  requestedEntityType = [(SFSportsTopic *)self requestedEntityType];
  v6 = [v4 stringWithFormat:@" requestedEntityType: %@", requestedEntityType];
  v7 = [v3 stringByAppendingString:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = SFSportsTopic;
  if ([(SFQueryTopic *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    requestedEntityType = [(SFSportsTopic *)self requestedEntityType];
    requestedEntityType2 = [v5 requestedEntityType];

    v8 = [requestedEntityType isEqual:requestedEntityType2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFSportsTopic;
  v3 = [(SFQueryTopic *)&v7 hash];
  requestedEntityType = [(SFSportsTopic *)self requestedEntityType];
  v5 = [requestedEntityType hash];

  return v5 ^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFSportsTopic;
  coderCopy = coder;
  [(SFQueryTopic *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_requestedEntityType forKey:{@"_requestedEntityType", v5.receiver, v5.super_class}];
}

- (SFSportsTopic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFSportsTopic;
  v5 = [(SFQueryTopic *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_requestedEntityType"];
    requestedEntityType = v5->_requestedEntityType;
    v5->_requestedEntityType = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SFSportsTopic;
  v4 = [(SFQueryTopic *)&v7 copyWithZone:zone];
  requestedEntityType = [(SFSportsTopic *)self requestedEntityType];
  [v4 setRequestedEntityType:requestedEntityType];

  return v4;
}

- (SFSportsTopic)initWithQuery:(id)query requestedEntityType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = SFSportsTopic;
  v9 = [(SFQueryTopic *)&v12 initWithType:3 query:query identifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(SFSportsTopic *)v9 setRequestedEntityType:typeCopy];
  }

  return v10;
}

@end