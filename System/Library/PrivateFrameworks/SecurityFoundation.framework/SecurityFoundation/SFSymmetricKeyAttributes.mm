@interface SFSymmetricKeyAttributes
- (NSString)keyDomain;
- (NSString)localizedDescription;
- (NSString)localizedLabel;
- (SFSymmetricKeyAttributes)initWithSpecifier:(id)specifier domain:(id)domain;
- (_SFKeySpecifier)keySpecifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setKeySpecifier:(id)specifier;
- (void)setLocalizedDescription:(id)description;
- (void)setLocalizedLabel:(id)label;
@end

@implementation SFSymmetricKeyAttributes

- (SFSymmetricKeyAttributes)initWithSpecifier:(id)specifier domain:(id)domain
{
  specifierCopy = specifier;
  domainCopy = domain;
  v18.receiver = self;
  v18.super_class = SFSymmetricKeyAttributes;
  v8 = [(SFSymmetricKeyAttributes *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc_init(SFSymmetricKeyAttributes_Ivars);
    symmetricKeyAttributesInternal = v8->_symmetricKeyAttributesInternal;
    v8->_symmetricKeyAttributesInternal = v9;

    v11 = [specifierCopy copy];
    v12 = v8->_symmetricKeyAttributesInternal;
    v13 = v12[3];
    v12[3] = v11;

    v14 = [domainCopy copy];
    v15 = v8->_symmetricKeyAttributesInternal;
    v16 = v15[4];
    v15[4] = v14;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithSpecifier:domain:", *(self->_symmetricKeyAttributesInternal + 3), *(self->_symmetricKeyAttributesInternal + 4)}];
  [v4 setLocalizedLabel:*(self->_symmetricKeyAttributesInternal + 1)];
  [v4 setLocalizedDescription:*(self->_symmetricKeyAttributesInternal + 2)];
  return v4;
}

- (NSString)localizedLabel
{
  v2 = [*(self->_symmetricKeyAttributesInternal + 1) copy];

  return v2;
}

- (void)setLocalizedLabel:(id)label
{
  v4 = [label copy];
  symmetricKeyAttributesInternal = self->_symmetricKeyAttributesInternal;
  v6 = symmetricKeyAttributesInternal[1];
  symmetricKeyAttributesInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

- (NSString)localizedDescription
{
  v2 = [*(self->_symmetricKeyAttributesInternal + 2) copy];

  return v2;
}

- (void)setLocalizedDescription:(id)description
{
  v4 = [description copy];
  symmetricKeyAttributesInternal = self->_symmetricKeyAttributesInternal;
  v6 = symmetricKeyAttributesInternal[2];
  symmetricKeyAttributesInternal[2] = v4;

  MEMORY[0x2821F96F8]();
}

- (_SFKeySpecifier)keySpecifier
{
  v2 = [*(self->_symmetricKeyAttributesInternal + 3) copy];

  return v2;
}

- (void)setKeySpecifier:(id)specifier
{
  v4 = [specifier copy];
  symmetricKeyAttributesInternal = self->_symmetricKeyAttributesInternal;
  v6 = symmetricKeyAttributesInternal[3];
  symmetricKeyAttributesInternal[3] = v4;

  MEMORY[0x2821F96F8]();
}

- (NSString)keyDomain
{
  v2 = [*(self->_symmetricKeyAttributesInternal + 4) copy];

  return v2;
}

@end