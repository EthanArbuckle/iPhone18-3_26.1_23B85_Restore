@interface SFKeySearchFilter
- (NSArray)domains;
- (NSArray)specifiers;
- (SFKeySearchFilter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDomains:(id)a3;
- (void)setSpecifiers:(id)a3;
@end

@implementation SFKeySearchFilter

- (SFKeySearchFilter)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFKeySearchFilter;
  return [(SFKeySearchFilter *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSpecifiers:*(self->_keySearchFilterInternal + 1)];
  [v4 setDomains:*(self->_keySearchFilterInternal + 2)];
  return v4;
}

- (NSArray)specifiers
{
  v2 = [*(self->_keySearchFilterInternal + 1) copy];

  return v2;
}

- (void)setSpecifiers:(id)a3
{
  v4 = [a3 copy];
  keySearchFilterInternal = self->_keySearchFilterInternal;
  v6 = keySearchFilterInternal[1];
  keySearchFilterInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

- (NSArray)domains
{
  v2 = [*(self->_keySearchFilterInternal + 2) copy];

  return v2;
}

- (void)setDomains:(id)a3
{
  v4 = [a3 copy];
  keySearchFilterInternal = self->_keySearchFilterInternal;
  v6 = keySearchFilterInternal[2];
  keySearchFilterInternal[2] = v4;

  MEMORY[0x2821F96F8]();
}

@end