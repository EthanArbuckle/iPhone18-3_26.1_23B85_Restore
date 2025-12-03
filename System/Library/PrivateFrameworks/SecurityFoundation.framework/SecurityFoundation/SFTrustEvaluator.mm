@interface SFTrustEvaluator
- (SFTrustEvaluator)init;
- (SFTrustEvaluator)initWithCoder:(id)coder;
- (SFTrustEvaluator)initWithTrustPolicy:(id)policy;
- (SFTrustEvaluator)initWithTrustPolicy:(id)policy revocationPolicy:(id)revocationPolicy applicationAnchorCertificates:(id)certificates allowCertificateFetching:(BOOL)fetching trustSystemAnchorCertificates:(BOOL)anchorCertificates;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SFTrustEvaluator

- (SFTrustEvaluator)init
{
  v3 = objc_alloc_init(SFX509TrustPolicy);
  v4 = [(SFTrustEvaluator *)self initWithTrustPolicy:v3];

  return v4;
}

- (SFTrustEvaluator)initWithTrustPolicy:(id)policy
{
  policyCopy = policy;
  v5 = objc_alloc_init(SFRevocationPolicy);
  v6 = [(SFTrustEvaluator *)self initWithTrustPolicy:policyCopy revocationPolicy:v5];

  return v6;
}

- (SFTrustEvaluator)initWithTrustPolicy:(id)policy revocationPolicy:(id)revocationPolicy applicationAnchorCertificates:(id)certificates allowCertificateFetching:(BOOL)fetching trustSystemAnchorCertificates:(BOOL)anchorCertificates
{
  anchorCertificatesCopy = anchorCertificates;
  policyCopy = policy;
  revocationPolicyCopy = revocationPolicy;
  certificatesCopy = certificates;
  v20.receiver = self;
  v20.super_class = SFTrustEvaluator;
  v16 = [(SFTrustEvaluator *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(v16->_trustEvaluatorInternal + 1, policy);
    objc_storeStrong(v17->_trustEvaluatorInternal + 2, revocationPolicy);
    objc_storeStrong(v17->_trustEvaluatorInternal + 3, certificates);
    *(v17->_trustEvaluatorInternal + 32) = *(v17->_trustEvaluatorInternal + 32) & 0xFE | fetching;
    if (anchorCertificatesCopy)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    *(v17->_trustEvaluatorInternal + 32) = *(v17->_trustEvaluatorInternal + 32) & 0xFD | v18;
  }

  return v17;
}

- (SFTrustEvaluator)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFTrustEvaluator;
  return [(SFTrustEvaluator *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  trustEvaluatorInternal = self->_trustEvaluatorInternal;
  v6 = trustEvaluatorInternal[1];
  v7 = trustEvaluatorInternal[2];
  v8 = trustEvaluatorInternal[3];
  v9 = *(trustEvaluatorInternal + 32);

  return [v4 initWithTrustPolicy:v6 revocationPolicy:v7 applicationAnchorCertificates:v8 allowCertificateFetching:v9 & 1 trustSystemAnchorCertificates:(v9 >> 1) & 1];
}

@end