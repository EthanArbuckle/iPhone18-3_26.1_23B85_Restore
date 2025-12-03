@interface SMCatalogLockup
- (NSNumber)mediaTypeRawValue;
- (NSString)recencyTag;
- (SMArtwork)artwork;
- (SMCatalogLockup)init;
- (int64_t)assetLoadStatus;
- (int64_t)bundleReason;
@end

@implementation SMCatalogLockup

- (SMArtwork)artwork
{
  selfCopy = self;
  v3 = CatalogLockupBridge.artwork.getter();

  return v3;
}

- (NSNumber)mediaTypeRawValue
{
  selfCopy = self;
  v3 = CatalogLockupBridge.mediaTypeRawValue.getter();

  return v3;
}

- (int64_t)assetLoadStatus
{
  selfCopy = self;
  v3 = CatalogLockupBridge.assetLoadStatus.getter();

  return v3;
}

- (int64_t)bundleReason
{
  selfCopy = self;
  v3 = CatalogLockupBridge.bundleReason.getter();

  return v3;
}

- (NSString)recencyTag
{
  selfCopy = self;
  v3 = CatalogLockup.recencyTag.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x20F30BAD0](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SMCatalogLockup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end