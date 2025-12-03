@interface SFApplicationExtensionsCache
+ (id)shared;
- (id)extensionsResultWithMatchingAttributes:(id)attributes testingReferenceSnapshot:(id)snapshot;
- (id)reportExtensionsCacheResult;
- (void)primeExtensionsResultWithMatchingAttributes:(id)attributes;
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

- (void)primeExtensionsResultWithMatchingAttributes:(id)attributes
{
  v4 = sub_1A9976700();
  selfCopy = self;
  SFApplicationExtensionsCache.primeExtensionsResult(with:)(v4);
}

- (id)extensionsResultWithMatchingAttributes:(id)attributes testingReferenceSnapshot:(id)snapshot
{
  v6 = sub_1A9976700();
  snapshotCopy = snapshot;
  selfCopy = self;
  SFApplicationExtensionsCache.extensionsResult(with:testingReferenceSnapshot:)(v6, snapshot);

  sub_1A9812DE0(0, &qword_1EB3AB678, 0x1E696ABD0);
  v9 = sub_1A9976AB0();

  return v9;
}

- (id)reportExtensionsCacheResult
{
  selfCopy = self;
  SFApplicationExtensionsCache.reportResult()();

  sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
  v3 = sub_1A99766E0();

  return v3;
}

@end