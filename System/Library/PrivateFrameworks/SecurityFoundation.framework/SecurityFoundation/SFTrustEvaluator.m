@interface SFTrustEvaluator
- (SFTrustEvaluator)init;
- (SFTrustEvaluator)initWithCoder:(id)a3;
- (SFTrustEvaluator)initWithTrustPolicy:(id)a3;
- (SFTrustEvaluator)initWithTrustPolicy:(id)a3 revocationPolicy:(id)a4 applicationAnchorCertificates:(id)a5 allowCertificateFetching:(BOOL)a6 trustSystemAnchorCertificates:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SFTrustEvaluator

- (SFTrustEvaluator)init
{
  v3 = objc_alloc_init(SFX509TrustPolicy);
  v4 = [(SFTrustEvaluator *)self initWithTrustPolicy:v3];

  return v4;
}

- (SFTrustEvaluator)initWithTrustPolicy:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SFRevocationPolicy);
  v6 = [(SFTrustEvaluator *)self initWithTrustPolicy:v4 revocationPolicy:v5];

  return v6;
}

- (SFTrustEvaluator)initWithTrustPolicy:(id)a3 revocationPolicy:(id)a4 applicationAnchorCertificates:(id)a5 allowCertificateFetching:(BOOL)a6 trustSystemAnchorCertificates:(BOOL)a7
{
  v7 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v20.receiver = self;
  v20.super_class = SFTrustEvaluator;
  v16 = [(SFTrustEvaluator *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(v16->_trustEvaluatorInternal + 1, a3);
    objc_storeStrong(v17->_trustEvaluatorInternal + 2, a4);
    objc_storeStrong(v17->_trustEvaluatorInternal + 3, a5);
    *(v17->_trustEvaluatorInternal + 32) = *(v17->_trustEvaluatorInternal + 32) & 0xFE | a6;
    if (v7)
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

- (SFTrustEvaluator)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFTrustEvaluator;
  return [(SFTrustEvaluator *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  trustEvaluatorInternal = self->_trustEvaluatorInternal;
  v6 = trustEvaluatorInternal[1];
  v7 = trustEvaluatorInternal[2];
  v8 = trustEvaluatorInternal[3];
  v9 = *(trustEvaluatorInternal + 32);

  return [v4 initWithTrustPolicy:v6 revocationPolicy:v7 applicationAnchorCertificates:v8 allowCertificateFetching:v9 & 1 trustSystemAnchorCertificates:(v9 >> 1) & 1];
}

@end