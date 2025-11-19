@interface SASTimeIntervalTransport
- (SASTimeIntervalTransport)initWithCoder:(id)a3;
- (SASTimeIntervalTransport)initWithTimeInterval:(double)a3;
- (double)timeInterval;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SASTimeIntervalTransport

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SASTimeIntervalTransport *)self transport];
  v4 = [v2 stringWithFormat:@"SASTimeIntervalTransport:%@", v3];

  return v4;
}

- (SASTimeIntervalTransport)initWithTimeInterval:(double)a3
{
  v7.receiver = self;
  v7.super_class = SASTimeIntervalTransport;
  v4 = [(SASTimeIntervalTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(SASTimeIntervalTransport *)v4 setTransport:v5];
  }

  return v4;
}

- (double)timeInterval
{
  v2 = [(SASTimeIntervalTransport *)self transport];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  [(SASTimeIntervalTransport *)self timeInterval];

  return [v4 initWithTimeInterval:?];
}

- (SASTimeIntervalTransport)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SASTimeIntervalTransport;
  v5 = [(SASTimeIntervalTransport *)&v9 init];
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
  v5 = [(SASTimeIntervalTransport *)self transport];
  [v4 encodeObject:v5 forKey:@"transport"];
}

@end