@interface SFRevocationPolicy
- (SFRevocationPolicy)initWithCoder:(id)a3;
- (SFRevocationPolicy)initWithRevocationMethods:(unint64_t)a3 networkLookup:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SFRevocationPolicy

- (SFRevocationPolicy)initWithRevocationMethods:(unint64_t)a3 networkLookup:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SFRevocationPolicy;
  result = [(SFRevocationPolicy *)&v7 init];
  if (result)
  {
    *(result->_revocationPolicyInternal + 1) = a3;
    *(result->_revocationPolicyInternal + 2) = a4;
  }

  return result;
}

- (SFRevocationPolicy)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFRevocationPolicy;
  return [(SFRevocationPolicy *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  revocationPolicyInternal = self->_revocationPolicyInternal;
  v6 = revocationPolicyInternal[1];
  v7 = revocationPolicyInternal[2];

  return [v4 initWithRevocationMethods:v6 networkLookup:v7];
}

@end