@interface SIRINLUParser
- (SIRINLUParser)init;
- (SIRINLUParser)initWithAlgorithmType:(int)a3 parserIdentifier:(int)a4;
- (SIRINLUParser)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUParser

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[SIRINLUParser algorithmType](self forKey:{"algorithmType"), @"algorithmType"}];
  [v4 encodeInt:-[SIRINLUParser parserIdentifier](self forKey:{"parserIdentifier"), @"parserIdentifier"}];
}

- (SIRINLUParser)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SIRINLUParser;
  v5 = [(SIRINLUParser *)&v7 init];
  if (v5)
  {
    v5->_algorithmType = [v4 decodeIntForKey:@"algorithmType"];
    v5->_parserIdentifier = [v4 decodeIntForKey:@"parserIdentifier"];
  }

  return v5;
}

- (SIRINLUParser)initWithAlgorithmType:(int)a3 parserIdentifier:(int)a4
{
  v7.receiver = self;
  v7.super_class = SIRINLUParser;
  result = [(SIRINLUParser *)&v7 init];
  if (result)
  {
    result->_algorithmType = a3;
    result->_parserIdentifier = a4;
  }

  return result;
}

- (SIRINLUParser)init
{
  v3.receiver = self;
  v3.super_class = SIRINLUParser;
  return [(SIRINLUParser *)&v3 init];
}

@end