@interface SFQueryTopic
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SFQueryTopic)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFQueryTopic

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = SFQueryTopic;
  v3 = [(SFTopic *)&v10 description];
  v4 = MEMORY[0x1E696AEC0];
  queryType = [(SFQueryTopic *)self queryType];
  query = [(SFQueryTopic *)self query];
  v7 = [v4 stringWithFormat:@" queryType: %d queryString: %@", queryType, query];
  v8 = [v3 stringByAppendingString:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = SFQueryTopic;
  if ([(SFTopic *)&v11 isEqual:equalCopy])
  {
    v5 = equalCopy;
    query = [(SFQueryTopic *)self query];
    query2 = [v5 query];
    if ([query isEqual:query2])
    {
      queryType = [(SFQueryTopic *)self queryType];
      v9 = queryType == [v5 queryType];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFQueryTopic;
  v3 = [(SFTopic *)&v8 hash];
  query = [(SFQueryTopic *)self query];
  v5 = [query hash];
  v6 = v5 ^ [(SFQueryTopic *)self queryType];

  return v6 ^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFQueryTopic;
  coderCopy = coder;
  [(SFTopic *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_query forKey:{@"_query", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_queryType forKey:@"_queryType"];
}

- (SFQueryTopic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFQueryTopic;
  v5 = [(SFTopic *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_query"];
    query = v5->_query;
    v5->_query = v6;

    v5->_queryType = [coderCopy decodeInt32ForKey:@"_queryType"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SFQueryTopic;
  v4 = [(SFTopic *)&v7 copyWithZone:zone];
  query = [(SFQueryTopic *)self query];
  [v4 setQuery:query];

  [v4 setQueryType:{-[SFQueryTopic queryType](self, "queryType")}];
  return v4;
}

@end