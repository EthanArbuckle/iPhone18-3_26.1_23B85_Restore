@interface SiriPresentationIdentifierTransport
- (SiriPresentationIdentifierTransport)initWithCoder:(id)a3;
- (SiriPresentationIdentifierTransport)initWithSiriPresentationIdentifier:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)siriPresentationIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriPresentationIdentifierTransport

- (SiriPresentationIdentifierTransport)initWithSiriPresentationIdentifier:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SiriPresentationIdentifierTransport;
  v4 = [(SiriPresentationIdentifierTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(SiriPresentationIdentifierTransport *)v4 setIdentifier:v5];
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SiriPresentationIdentifierTransport *)self identifier];
  v4 = [v2 stringWithFormat:@"SiriPresentationIdentifierTransport:%@", v3];

  return v4;
}

- (int64_t)siriPresentationIdentifier
{
  v2 = [(SiriPresentationIdentifierTransport *)self identifier];
  v3 = [v2 longValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SiriPresentationIdentifierTransport *)self siriPresentationIdentifier];

  return [v4 initWithSiriPresentationIdentifier:v5];
}

- (SiriPresentationIdentifierTransport)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SiriPresentationIdentifierTransport;
  v5 = [(SiriPresentationIdentifierTransport *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SiriPresentationIdentifierTransport *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

@end