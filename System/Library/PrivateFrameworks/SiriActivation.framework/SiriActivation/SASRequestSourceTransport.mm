@interface SASRequestSourceTransport
- (SASRequestSourceTransport)initWithCoder:(id)coder;
- (SASRequestSourceTransport)initWithSASRequestSource:(int64_t)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)SASRequestSource;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SASRequestSourceTransport

- (SASRequestSourceTransport)initWithSASRequestSource:(int64_t)source
{
  v7.receiver = self;
  v7.super_class = SASRequestSourceTransport;
  v4 = [(SASRequestSourceTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:source];
    [(SASRequestSourceTransport *)v4 setTransport:v5];
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  transport = [(SASRequestSourceTransport *)self transport];
  v4 = [v2 stringWithFormat:@"SASRequestSourceTransport:%@", transport];

  return v4;
}

- (int64_t)SASRequestSource
{
  transport = [(SASRequestSourceTransport *)self transport];
  integerValue = [transport integerValue];

  return integerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  sASRequestSource = [(SASRequestSourceTransport *)self SASRequestSource];

  return [v4 initWithSASRequestSource:sASRequestSource];
}

- (SASRequestSourceTransport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SASRequestSourceTransport;
  v5 = [(SASRequestSourceTransport *)&v9 init];
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
  transport = [(SASRequestSourceTransport *)self transport];
  [coderCopy encodeObject:transport forKey:@"transport"];
}

@end