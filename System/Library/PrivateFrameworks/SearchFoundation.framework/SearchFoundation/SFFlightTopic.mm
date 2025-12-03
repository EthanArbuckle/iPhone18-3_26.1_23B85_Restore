@interface SFFlightTopic
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SFFlightTopic)initWithCoder:(id)coder;
- (SFFlightTopic)initWithQuery:(id)query date:(id)date identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFFlightTopic

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = SFFlightTopic;
  v3 = [(SFQueryTopic *)&v9 description];
  v4 = MEMORY[0x1E696AEC0];
  date = [(SFFlightTopic *)self date];
  v6 = [v4 stringWithFormat:@" date: %@", date];
  v7 = [v3 stringByAppendingString:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = SFFlightTopic;
  if ([(SFQueryTopic *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    date = [(SFFlightTopic *)self date];
    date2 = [v5 date];

    v8 = [date isEqual:date2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SFFlightTopic;
  v3 = [(SFQueryTopic *)&v5 hash];
  return [(NSDate *)self->_date hash]^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFFlightTopic;
  coderCopy = coder;
  [(SFQueryTopic *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_date forKey:{@"_date", v5.receiver, v5.super_class}];
}

- (SFFlightTopic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFFlightTopic;
  v5 = [(SFQueryTopic *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_date"];
    date = v5->_date;
    v5->_date = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SFFlightTopic;
  v4 = [(SFQueryTopic *)&v7 copyWithZone:zone];
  date = [(SFFlightTopic *)self date];
  [v4 setDate:date];

  return v4;
}

- (SFFlightTopic)initWithQuery:(id)query date:(id)date identifier:(id)identifier
{
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = SFFlightTopic;
  v9 = [(SFQueryTopic *)&v12 initWithType:5 query:query identifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(SFFlightTopic *)v9 setDate:dateCopy];
  }

  return v10;
}

@end