@interface SHSheetMetadataUpdateAction
- (LPLinkMetadata)metadata;
- (NSData)serializedMetadata;
- (SHSheetMetadataUpdateAction)initWithSerializedMetadata:(id)metadata;
@end

@implementation SHSheetMetadataUpdateAction

- (SHSheetMetadataUpdateAction)initWithSerializedMetadata:(id)metadata
{
  v4 = MEMORY[0x1E698E700];
  metadataCopy = metadata;
  v6 = objc_alloc_init(v4);
  [v6 setObject:metadataCopy forSetting:1];

  v7 = [(SHSheetMetadataUpdateAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (NSData)serializedMetadata
{
  info = [(SHSheetMetadataUpdateAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (LPLinkMetadata)metadata
{
  LPLinkMetadataClass_0 = getLPLinkMetadataClass_0();
  serializedMetadata = [(SHSheetMetadataUpdateAction *)self serializedMetadata];
  v5 = [(objc_class *)LPLinkMetadataClass_0 metadataWithDataRepresentationForLocalUseOnly:serializedMetadata];

  return v5;
}

@end