@interface SHSheetMetadataChangedAction
- (LPLinkMetadata)metadata;
- (NSData)serializedMetadata;
- (SHSheetMetadataChangedAction)initWithSerializedMetadata:(id)metadata;
@end

@implementation SHSheetMetadataChangedAction

- (SHSheetMetadataChangedAction)initWithSerializedMetadata:(id)metadata
{
  v4 = MEMORY[0x1E698E700];
  metadataCopy = metadata;
  v6 = objc_alloc_init(v4);
  [v6 setObject:metadataCopy forSetting:0];

  v7 = [(SHSheetMetadataChangedAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (NSData)serializedMetadata
{
  info = [(SHSheetMetadataChangedAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (LPLinkMetadata)metadata
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getLPLinkMetadataClass_softClass_0;
  v12 = getLPLinkMetadataClass_softClass_0;
  if (!getLPLinkMetadataClass_softClass_0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getLPLinkMetadataClass_block_invoke_0;
    v8[3] = &unk_1E71F91F0;
    v8[4] = &v9;
    __getLPLinkMetadataClass_block_invoke_0(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  serializedMetadata = [(SHSheetMetadataChangedAction *)self serializedMetadata];
  v6 = [v3 metadataWithDataRepresentationForLocalUseOnly:serializedMetadata];

  return v6;
}

@end