@interface PFImageMetadataChangePolicyiCloudPhotoLibrary
+ (id)standardPolicy;
- (id)processMetadata:(id)metadata;
@end

@implementation PFImageMetadataChangePolicyiCloudPhotoLibrary

- (id)processMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [[PFMetadata alloc] initWithImageProperties:metadataCopy contentType:0 timeZoneLookup:0];
  livePhotoPairingIdentifier = [(PFMetadata *)v5 livePhotoPairingIdentifier];
  v13.receiver = self;
  v13.super_class = PFImageMetadataChangePolicyiCloudPhotoLibrary;
  v7 = [(PFImageMetadataChangePolicyDefault *)&v13 processMetadata:metadataCopy];

  if (livePhotoPairingIdentifier)
  {
    v8 = [v7 mutableCopy];
    livePhotoPairingIdentifierMetadataKey = [(PFMetadata *)v5 livePhotoPairingIdentifierMetadataKey];
    v10 = [PFMetadataUtilities addMakerApplePropertyWithKey:livePhotoPairingIdentifierMetadataKey value:livePhotoPairingIdentifier toProperties:v8];

    if (v10)
    {
      v11 = v8;

      v7 = v11;
    }
  }

  return v7;
}

+ (id)standardPolicy
{
  if (standardPolicy_onceToken_78[0] != -1)
  {
    dispatch_once(standardPolicy_onceToken_78, &__block_literal_global_80);
  }

  v3 = standardPolicy_standardPolicy_77;

  return v3;
}

uint64_t __63__PFImageMetadataChangePolicyiCloudPhotoLibrary_standardPolicy__block_invoke()
{
  standardPolicy_standardPolicy_77 = objc_alloc_init(PFImageMetadataChangePolicyiCloudPhotoLibrary);

  return MEMORY[0x1EEE66BB8]();
}

@end