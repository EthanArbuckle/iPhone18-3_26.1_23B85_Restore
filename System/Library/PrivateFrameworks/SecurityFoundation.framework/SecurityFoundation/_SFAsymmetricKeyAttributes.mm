@interface _SFAsymmetricKeyAttributes
- (_SFAsymmetricKeyAttributes)initWithSpecifier:(id)specifier domain:(id)domain;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _SFAsymmetricKeyAttributes

- (_SFAsymmetricKeyAttributes)initWithSpecifier:(id)specifier domain:(id)domain
{
  specifierCopy = specifier;
  domainCopy = domain;
  v14.receiver = self;
  v14.super_class = _SFAsymmetricKeyAttributes;
  v8 = [(_SFAsymmetricKeyAttributes *)&v14 init];
  if (v8)
  {
    v9 = [specifierCopy copy];
    asymmetricKeySpecifier = v8->_asymmetricKeySpecifier;
    v8->_asymmetricKeySpecifier = v9;

    v11 = [domainCopy copy];
    asymmetricKeyDomain = v8->_asymmetricKeyDomain;
    v8->_asymmetricKeyDomain = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  asymmetricKeySpecifier = self->_asymmetricKeySpecifier;
  asymmetricKeyDomain = self->_asymmetricKeyDomain;

  return [v4 initWithSpecifier:asymmetricKeySpecifier domain:asymmetricKeyDomain];
}

@end