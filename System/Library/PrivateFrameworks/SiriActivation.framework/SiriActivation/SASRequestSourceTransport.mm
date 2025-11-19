@interface SASRequestSourceTransport
- (SASRequestSourceTransport)initWithCoder:(id)a3;
- (SASRequestSourceTransport)initWithSASRequestSource:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)SASRequestSource;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SASRequestSourceTransport

- (SASRequestSourceTransport)initWithSASRequestSource:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SASRequestSourceTransport;
  v4 = [(SASRequestSourceTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(SASRequestSourceTransport *)v4 setTransport:v5];
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SASRequestSourceTransport *)self transport];
  v4 = [v2 stringWithFormat:@"SASRequestSourceTransport:%@", v3];

  return v4;
}

- (int64_t)SASRequestSource
{
  v2 = [(SASRequestSourceTransport *)self transport];
  v3 = [v2 integerValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SASRequestSourceTransport *)self SASRequestSource];

  return [v4 initWithSASRequestSource:v5];
}

- (SASRequestSourceTransport)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SASRequestSourceTransport;
  v5 = [(SASRequestSourceTransport *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transport"];
    transport = v5->_transport;
    v5->_transport = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SASRequestSourceTransport *)self transport];
  [v4 encodeObject:v5 forKey:@"transport"];
}

@end