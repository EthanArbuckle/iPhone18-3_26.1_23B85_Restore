@interface SiriPresentationIdentifierTransport
- (SiriPresentationIdentifierTransport)initWithCoder:(id)coder;
- (SiriPresentationIdentifierTransport)initWithSiriPresentationIdentifier:(int64_t)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)siriPresentationIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriPresentationIdentifierTransport

- (SiriPresentationIdentifierTransport)initWithSiriPresentationIdentifier:(int64_t)identifier
{
  v7.receiver = self;
  v7.super_class = SiriPresentationIdentifierTransport;
  v4 = [(SiriPresentationIdentifierTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
    [(SiriPresentationIdentifierTransport *)v4 setIdentifier:v5];
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(SiriPresentationIdentifierTransport *)self identifier];
  v4 = [v2 stringWithFormat:@"SiriPresentationIdentifierTransport:%@", identifier];

  return v4;
}

- (int64_t)siriPresentationIdentifier
{
  identifier = [(SiriPresentationIdentifierTransport *)self identifier];
  longValue = [identifier longValue];

  return longValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  siriPresentationIdentifier = [(SiriPresentationIdentifierTransport *)self siriPresentationIdentifier];

  return [v4 initWithSiriPresentationIdentifier:siriPresentationIdentifier];
}

- (SiriPresentationIdentifierTransport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SiriPresentationIdentifierTransport;
  v5 = [(SiriPresentationIdentifierTransport *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SiriPresentationIdentifierTransport *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

@end