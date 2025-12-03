@interface SIRINLUReferenceContext
- (SIRINLUReferenceContext)initWithCoder:(id)coder;
- (SIRINLUReferenceContext)initWithContextualReference:(BOOL)reference DisambiguationNeeded:(BOOL)needed;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUReferenceContext

- (SIRINLUReferenceContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SIRINLUReferenceContext;
  v5 = [(SIRINLUReferenceContext *)&v7 init];
  if (v5)
  {
    v5->_contextualReference = [coderCopy decodeBoolForKey:@"contextualReference"];
    v5->_disambiguationNeeded = [coderCopy decodeBoolForKey:@"disambiguationNeeded"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contextualReference = self->_contextualReference;
  coderCopy = coder;
  [coderCopy encodeBool:contextualReference forKey:@"contextualReference"];
  [coderCopy encodeBool:self->_disambiguationNeeded forKey:@"disambiguationNeeded"];
}

- (SIRINLUReferenceContext)initWithContextualReference:(BOOL)reference DisambiguationNeeded:(BOOL)needed
{
  v7.receiver = self;
  v7.super_class = SIRINLUReferenceContext;
  result = [(SIRINLUReferenceContext *)&v7 init];
  if (result)
  {
    result->_contextualReference = reference;
    result->_disambiguationNeeded = needed;
  }

  return result;
}

@end