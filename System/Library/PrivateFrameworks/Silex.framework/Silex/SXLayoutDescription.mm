@interface SXLayoutDescription
- (SXLayoutDescription)initWithTaskIdentifier:(id)identifier;
@end

@implementation SXLayoutDescription

- (SXLayoutDescription)initWithTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SXLayoutDescription;
  v6 = [(SXLayoutDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskIdentifier, identifier);
  }

  return v7;
}

@end