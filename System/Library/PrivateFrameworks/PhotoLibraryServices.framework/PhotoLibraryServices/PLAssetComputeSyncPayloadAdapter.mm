@interface PLAssetComputeSyncPayloadAdapter
- (id)payloadID;
@end

@implementation PLAssetComputeSyncPayloadAdapter

- (id)payloadID
{
  v2 = [(PLAssetComputeSyncPayloadAdapter *)self asset];
  v3 = [v2 cloudAssetGUID];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

@end