@interface SASTimeIntervalTransport
- (SASTimeIntervalTransport)initWithCoder:(id)coder;
- (SASTimeIntervalTransport)initWithTimeInterval:(double)interval;
- (double)timeInterval;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SASTimeIntervalTransport

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  transport = [(SASTimeIntervalTransport *)self transport];
  v4 = [v2 stringWithFormat:@"SASTimeIntervalTransport:%@", transport];

  return v4;
}

- (SASTimeIntervalTransport)initWithTimeInterval:(double)interval
{
  v7.receiver = self;
  v7.super_class = SASTimeIntervalTransport;
  v4 = [(SASTimeIntervalTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
    [(SASTimeIntervalTransport *)v4 setTransport:v5];
  }

  return v4;
}

- (double)timeInterval
{
  transport = [(SASTimeIntervalTransport *)self transport];
  [transport doubleValue];
  v4 = v3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  [(SASTimeIntervalTransport *)self timeInterval];

  return [v4 initWithTimeInterval:?];
}

- (SASTimeIntervalTransport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SASTimeIntervalTransport;
  v5 = [(SASTimeIntervalTransport *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transport"];
    transport = v5->_transport;
    v5->_transport = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  transport = [(SASTimeIntervalTransport *)self transport];
  [coderCopy encodeObject:transport forKey:@"transport"];
}

@end