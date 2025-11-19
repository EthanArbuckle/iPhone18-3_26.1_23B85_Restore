@interface SFQueryTopic
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SFQueryTopic)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFQueryTopic

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = SFQueryTopic;
  v3 = [(SFTopic *)&v10 description];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(SFQueryTopic *)self queryType];
  v6 = [(SFQueryTopic *)self query];
  v7 = [v4 stringWithFormat:@" queryType: %d queryString: %@", v5, v6];
  v8 = [v3 stringByAppendingString:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFQueryTopic;
  if ([(SFTopic *)&v11 isEqual:v4])
  {
    v5 = v4;
    v6 = [(SFQueryTopic *)self query];
    v7 = [v5 query];
    if ([v6 isEqual:v7])
    {
      v8 = [(SFQueryTopic *)self queryType];
      v9 = v8 == [v5 queryType];
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
  v4 = [(SFQueryTopic *)self query];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFQueryTopic *)self queryType];

  return v6 ^ v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFQueryTopic;
  v4 = a3;
  [(SFTopic *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_query forKey:{@"_query", v5.receiver, v5.super_class}];
  [v4 encodeInt32:self->_queryType forKey:@"_queryType"];
}

- (SFQueryTopic)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFQueryTopic;
  v5 = [(SFTopic *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_query"];
    query = v5->_query;
    v5->_query = v6;

    v5->_queryType = [v4 decodeInt32ForKey:@"_queryType"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SFQueryTopic;
  v4 = [(SFTopic *)&v7 copyWithZone:a3];
  v5 = [(SFQueryTopic *)self query];
  [v4 setQuery:v5];

  [v4 setQueryType:{-[SFQueryTopic queryType](self, "queryType")}];
  return v4;
}

@end