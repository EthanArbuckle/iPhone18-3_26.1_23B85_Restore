@interface AtlasRecordData
- (id)description;
@end

@implementation AtlasRecordData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(AtlasRecordData *)self sfi];
  recordId = [(AtlasRecordData *)self recordId];
  content = [(AtlasRecordData *)self content];
  asHexString = [content asHexString];
  v8 = [v3 stringWithFormat:@"SFI : %02X - RecordId : %02X - Content : %@", v4, recordId, asHexString];

  return v8;
}

@end