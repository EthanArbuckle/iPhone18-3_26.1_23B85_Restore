@interface SIRINLUReferenceContext
- (SIRINLUReferenceContext)initWithCoder:(id)a3;
- (SIRINLUReferenceContext)initWithContextualReference:(BOOL)a3 DisambiguationNeeded:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUReferenceContext

- (SIRINLUReferenceContext)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SIRINLUReferenceContext;
  v5 = [(SIRINLUReferenceContext *)&v7 init];
  if (v5)
  {
    v5->_contextualReference = [v4 decodeBoolForKey:@"contextualReference"];
    v5->_disambiguationNeeded = [v4 decodeBoolForKey:@"disambiguationNeeded"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contextualReference = self->_contextualReference;
  v5 = a3;
  [v5 encodeBool:contextualReference forKey:@"contextualReference"];
  [v5 encodeBool:self->_disambiguationNeeded forKey:@"disambiguationNeeded"];
}

- (SIRINLUReferenceContext)initWithContextualReference:(BOOL)a3 DisambiguationNeeded:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = SIRINLUReferenceContext;
  result = [(SIRINLUReferenceContext *)&v7 init];
  if (result)
  {
    result->_contextualReference = a3;
    result->_disambiguationNeeded = a4;
  }

  return result;
}

@end