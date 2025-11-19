@interface CalypsoHciRecordData
- (id)description;
@end

@implementation CalypsoHciRecordData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CalypsoHciRecordData *)self sfi];
  v5 = [(CalypsoHciRecordData *)self recordId];
  v6 = [(CalypsoHciRecordData *)self content];
  v7 = [v6 asHexString];
  v8 = [v3 stringWithFormat:@"SFI : %02X - RecordId : %02X - Content : %@", v4, v5, v7];

  return v8;
}

@end