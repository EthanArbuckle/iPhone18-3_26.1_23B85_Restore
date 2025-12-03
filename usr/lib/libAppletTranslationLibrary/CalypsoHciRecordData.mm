@interface CalypsoHciRecordData
- (id)description;
@end

@implementation CalypsoHciRecordData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CalypsoHciRecordData *)self sfi];
  recordId = [(CalypsoHciRecordData *)self recordId];
  content = [(CalypsoHciRecordData *)self content];
  asHexString = [content asHexString];
  v8 = [v3 stringWithFormat:@"SFI : %02X - RecordId : %02X - Content : %@", v4, recordId, asHexString];

  return v8;
}

@end