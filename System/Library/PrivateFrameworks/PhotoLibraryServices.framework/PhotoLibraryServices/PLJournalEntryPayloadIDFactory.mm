@interface PLJournalEntryPayloadIDFactory
+ (id)payloadIDWithString:(id)string;
+ (id)payloadIDWithUUIDBytes:(unsigned __int8)bytes[16];
+ (id)payloadIDWithUUIDString:(id)string;
@end

@implementation PLJournalEntryPayloadIDFactory

+ (id)payloadIDWithString:(id)string
{
  if (string)
  {
    stringCopy = string;
    v4 = [[PLNSStringJournalEntryPayloadID alloc] initWithString:stringCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)payloadIDWithUUIDString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = [[PLNSUUIDJournalEntryPayloadID alloc] initWithUUIDString:stringCopy];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [[PLNSStringJournalEntryPayloadID alloc] initWithString:stringCopy];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)payloadIDWithUUIDBytes:(unsigned __int8)bytes[16]
{
  v3 = [[PLNSUUIDJournalEntryPayloadID alloc] initWithUUIDBytes:bytes];

  return v3;
}

@end