@interface SIRINLUParser
- (SIRINLUParser)init;
- (SIRINLUParser)initWithAlgorithmType:(int)type parserIdentifier:(int)identifier;
- (SIRINLUParser)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUParser

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[SIRINLUParser algorithmType](self forKey:{"algorithmType"), @"algorithmType"}];
  [coderCopy encodeInt:-[SIRINLUParser parserIdentifier](self forKey:{"parserIdentifier"), @"parserIdentifier"}];
}

- (SIRINLUParser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SIRINLUParser;
  v5 = [(SIRINLUParser *)&v7 init];
  if (v5)
  {
    v5->_algorithmType = [coderCopy decodeIntForKey:@"algorithmType"];
    v5->_parserIdentifier = [coderCopy decodeIntForKey:@"parserIdentifier"];
  }

  return v5;
}

- (SIRINLUParser)initWithAlgorithmType:(int)type parserIdentifier:(int)identifier
{
  v7.receiver = self;
  v7.super_class = SIRINLUParser;
  result = [(SIRINLUParser *)&v7 init];
  if (result)
  {
    result->_algorithmType = type;
    result->_parserIdentifier = identifier;
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