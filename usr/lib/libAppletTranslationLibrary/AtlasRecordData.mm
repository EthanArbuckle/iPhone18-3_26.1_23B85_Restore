@interface AtlasRecordData
- (id)description;
@end

@implementation AtlasRecordData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(AtlasRecordData *)self sfi];
  v5 = [(AtlasRecordData *)self recordId];
  v6 = [(AtlasRecordData *)self content];
  v7 = [v6 asHexString];
  v8 = [v3 stringWithFormat:@"SFI : %02X - RecordId : %02X - Content : %@", v4, v5, v7];

  return v8;
}

@end