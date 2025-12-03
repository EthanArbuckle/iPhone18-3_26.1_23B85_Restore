@interface SFRevocationPolicy
- (SFRevocationPolicy)initWithCoder:(id)coder;
- (SFRevocationPolicy)initWithRevocationMethods:(unint64_t)methods networkLookup:(int64_t)lookup;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SFRevocationPolicy

- (SFRevocationPolicy)initWithRevocationMethods:(unint64_t)methods networkLookup:(int64_t)lookup
{
  v7.receiver = self;
  v7.super_class = SFRevocationPolicy;
  result = [(SFRevocationPolicy *)&v7 init];
  if (result)
  {
    *(result->_revocationPolicyInternal + 1) = methods;
    *(result->_revocationPolicyInternal + 2) = lookup;
  }

  return result;
}

- (SFRevocationPolicy)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFRevocationPolicy;
  return [(SFRevocationPolicy *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  revocationPolicyInternal = self->_revocationPolicyInternal;
  v6 = revocationPolicyInternal[1];
  v7 = revocationPolicyInternal[2];

  return [v4 initWithRevocationMethods:v6 networkLookup:v7];
}

@end