@interface PLAssetComputeSyncPayloadAdapter
- (id)payloadID;
@end

@implementation PLAssetComputeSyncPayloadAdapter

- (id)payloadID
{
  asset = [(PLAssetComputeSyncPayloadAdapter *)self asset];
  cloudAssetGUID = [asset cloudAssetGUID];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:cloudAssetGUID];

  return v4;
}

@end