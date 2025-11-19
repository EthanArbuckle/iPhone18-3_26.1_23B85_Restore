@interface PLNSStringJournalEntryPayloadID
- (BOOL)isEqual:(id)a3;
- (PLNSStringJournalEntryPayloadID)initWithString:(id)a3;
@end

@implementation PLNSStringJournalEntryPayloadID

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = [(NSString *)self->_payloadID isEqual:v4->_payloadID];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (PLNSStringJournalEntryPayloadID)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLNSStringJournalEntryPayloadID;
  v5 = [(PLNSStringJournalEntryPayloadID *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    payloadID = v5->_payloadID;
    v5->_payloadID = v6;
  }

  return v5;
}

@end