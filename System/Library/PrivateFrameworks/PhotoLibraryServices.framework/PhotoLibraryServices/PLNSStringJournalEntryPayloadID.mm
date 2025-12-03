@interface PLNSStringJournalEntryPayloadID
- (BOOL)isEqual:(id)equal;
- (PLNSStringJournalEntryPayloadID)initWithString:(id)string;
@end

@implementation PLNSStringJournalEntryPayloadID

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
      v6 = [(NSString *)self->_payloadID isEqual:equalCopy->_payloadID];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (PLNSStringJournalEntryPayloadID)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = PLNSStringJournalEntryPayloadID;
  v5 = [(PLNSStringJournalEntryPayloadID *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    payloadID = v5->_payloadID;
    v5->_payloadID = v6;
  }

  return v5;
}

@end