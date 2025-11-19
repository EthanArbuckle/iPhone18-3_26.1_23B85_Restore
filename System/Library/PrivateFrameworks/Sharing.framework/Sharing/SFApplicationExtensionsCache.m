@interface SFApplicationExtensionsCache
+ (id)shared;
- (id)extensionsResultWithMatchingAttributes:(id)a3 testingReferenceSnapshot:(id)a4;
- (id)reportExtensionsCacheResult;
- (void)primeExtensionsResultWithMatchingAttributes:(id)a3;
@end

@implementation SFApplicationExtensionsCache

+ (id)shared
{
  if (qword_1EB3AB630 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB3AB638;

  return v3;
}

- (void)primeExtensionsResultWithMatchingAttributes:(id)a3
{
  v4 = sub_1A9976700();
  v5 = self;
  SFApplicationExtensionsCache.primeExtensionsResult(with:)(v4);
}

- (id)extensionsResultWithMatchingAttributes:(id)a3 testingReferenceSnapshot:(id)a4
{
  v6 = sub_1A9976700();
  v7 = a4;
  v8 = self;
  SFApplicationExtensionsCache.extensionsResult(with:testingReferenceSnapshot:)(v6, a4);

  sub_1A9812DE0(0, &qword_1EB3AB678, 0x1E696ABD0);
  v9 = sub_1A9976AB0();

  return v9;
}

- (id)reportExtensionsCacheResult
{
  v2 = self;
  SFApplicationExtensionsCache.reportResult()();

  sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
  v3 = sub_1A99766E0();

  return v3;
}

@end