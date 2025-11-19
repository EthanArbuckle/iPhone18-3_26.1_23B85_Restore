@interface _SFAsymmetricKeyAttributes
- (_SFAsymmetricKeyAttributes)initWithSpecifier:(id)a3 domain:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _SFAsymmetricKeyAttributes

- (_SFAsymmetricKeyAttributes)initWithSpecifier:(id)a3 domain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _SFAsymmetricKeyAttributes;
  v8 = [(_SFAsymmetricKeyAttributes *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    asymmetricKeySpecifier = v8->_asymmetricKeySpecifier;
    v8->_asymmetricKeySpecifier = v9;

    v11 = [v7 copy];
    asymmetricKeyDomain = v8->_asymmetricKeyDomain;
    v8->_asymmetricKeyDomain = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  asymmetricKeySpecifier = self->_asymmetricKeySpecifier;
  asymmetricKeyDomain = self->_asymmetricKeyDomain;

  return [v4 initWithSpecifier:asymmetricKeySpecifier domain:asymmetricKeyDomain];
}

@end