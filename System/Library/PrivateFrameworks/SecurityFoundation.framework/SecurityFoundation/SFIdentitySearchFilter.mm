@interface SFIdentitySearchFilter
- (NSArray)certificateSerialNumbers;
- (NSArray)certificateTypes;
- (NSArray)keySpecifiers;
- (SFIdentitySearchFilter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCertificateSerialNumbers:(id)numbers;
- (void)setCertificateTypes:(id)types;
- (void)setKeySpecifiers:(id)specifiers;
@end

@implementation SFIdentitySearchFilter

- (SFIdentitySearchFilter)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFIdentitySearchFilter;
  return [(SFIdentitySearchFilter *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setCertificateSerialNumbers:*(self->_identitySearchFilterInternal + 1)];
  [v4 setCertificateTypes:*(self->_identitySearchFilterInternal + 2)];
  [v4 setKeySpecifiers:*(self->_identitySearchFilterInternal + 3)];
  return v4;
}

- (NSArray)certificateSerialNumbers
{
  v2 = [*(self->_identitySearchFilterInternal + 1) copy];

  return v2;
}

- (void)setCertificateSerialNumbers:(id)numbers
{
  v4 = [numbers copy];
  identitySearchFilterInternal = self->_identitySearchFilterInternal;
  v6 = identitySearchFilterInternal[1];
  identitySearchFilterInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

- (NSArray)certificateTypes
{
  v2 = [*(self->_identitySearchFilterInternal + 2) copy];

  return v2;
}

- (void)setCertificateTypes:(id)types
{
  v4 = [types copy];
  identitySearchFilterInternal = self->_identitySearchFilterInternal;
  v6 = identitySearchFilterInternal[2];
  identitySearchFilterInternal[2] = v4;

  MEMORY[0x2821F96F8]();
}

- (NSArray)keySpecifiers
{
  v2 = [*(self->_identitySearchFilterInternal + 3) copy];

  return v2;
}

- (void)setKeySpecifiers:(id)specifiers
{
  v4 = [specifiers copy];
  identitySearchFilterInternal = self->_identitySearchFilterInternal;
  v6 = identitySearchFilterInternal[3];
  identitySearchFilterInternal[3] = v4;

  MEMORY[0x2821F96F8]();
}

@end