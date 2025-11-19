@interface SHSheetMetadataChangedAction
- (LPLinkMetadata)metadata;
- (NSData)serializedMetadata;
- (SHSheetMetadataChangedAction)initWithSerializedMetadata:(id)a3;
@end

@implementation SHSheetMetadataChangedAction

- (SHSheetMetadataChangedAction)initWithSerializedMetadata:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:0];

  v7 = [(SHSheetMetadataChangedAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (NSData)serializedMetadata
{
  v2 = [(SHSheetMetadataChangedAction *)self info];
  v3 = [v2 objectForSetting:0];

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
  v5 = [(SHSheetMetadataChangedAction *)self serializedMetadata];
  v6 = [v3 metadataWithDataRepresentationForLocalUseOnly:v5];

  return v6;
}

@end