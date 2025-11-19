@interface PLJournalEntryPayloadIDFactory
+ (id)payloadIDWithString:(id)a3;
+ (id)payloadIDWithUUIDBytes:(unsigned __int8)a3[16];
+ (id)payloadIDWithUUIDString:(id)a3;
@end

@implementation PLJournalEntryPayloadIDFactory

+ (id)payloadIDWithString:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[PLNSStringJournalEntryPayloadID alloc] initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)payloadIDWithUUIDString:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [[PLNSUUIDJournalEntryPayloadID alloc] initWithUUIDString:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [[PLNSStringJournalEntryPayloadID alloc] initWithString:v3];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)payloadIDWithUUIDBytes:(unsigned __int8)a3[16]
{
  v3 = [[PLNSUUIDJournalEntryPayloadID alloc] initWithUUIDBytes:a3];

  return v3;
}

@end