@interface PLNSUUIDJournalEntryPayloadID
- (BOOL)isEqual:(id)equal;
- (PLNSUUIDJournalEntryPayloadID)initWithUUIDBytes:(unsigned __int8)bytes[16];
- (PLNSUUIDJournalEntryPayloadID)initWithUUIDString:(id)string;
- (id)payloadUUIDData;
@end

@implementation PLNSUUIDJournalEntryPayloadID

- (id)payloadUUIDData
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  [(NSUUID *)self->_payloadID getUUIDBytes:v4];
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v4 length:16];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = [(NSUUID *)self->_payloadID isEqual:equalCopy->_payloadID];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (PLNSUUIDJournalEntryPayloadID)initWithUUIDString:(id)string
{
  v4 = MEMORY[0x1E696AFB0];
  stringCopy = string;
  v6 = [[v4 alloc] initWithUUIDString:stringCopy];

  if (v6)
  {
    v10.receiver = self;
    v10.super_class = PLNSUUIDJournalEntryPayloadID;
    v7 = [(PLNSUUIDJournalEntryPayloadID *)&v10 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_payloadID, v6);
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (PLNSUUIDJournalEntryPayloadID)initWithUUIDBytes:(unsigned __int8)bytes[16]
{
  v8.receiver = self;
  v8.super_class = PLNSUUIDJournalEntryPayloadID;
  v4 = [(PLNSUUIDJournalEntryPayloadID *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:bytes];
    payloadID = v4->_payloadID;
    v4->_payloadID = v5;
  }

  return v4;
}

@end