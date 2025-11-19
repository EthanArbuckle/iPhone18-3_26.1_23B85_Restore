@interface ISCreateAccountOperation
- (ISCreateAccountOperation)initWithDSID:(id)a3 additionalQueryParams:(id)a4 targetIdentifier:(id)a5;
@end

@implementation ISCreateAccountOperation

- (ISCreateAccountOperation)initWithDSID:(id)a3 additionalQueryParams:(id)a4 targetIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CCAB68];
  v11 = a5;
  v12 = [[v10 alloc] initWithString:@"http://?action=account"];
  if ([v8 unsignedLongLongValue])
  {
    v13 = [v8 stringValue];
    [v12 appendFormat:@"&dsid=%@", v13];
  }

  v14 = [MEMORY[0x277CBEBC0] queryStringForDictionary:v9 escapedValues:1];
  if ([v14 length])
  {
    v15 = [MEMORY[0x277CBEBC0] escapedStringForString:v14];

    if ([v15 length])
    {
      [v12 appendFormat:@"&continuation=%@", v15];
    }
  }

  else
  {
    v15 = v14;
  }

  v16 = [ISOpenURLRequest alloc];
  v17 = [MEMORY[0x277CBEBC0] URLWithString:v12];
  v18 = [(ISOpenURLRequest *)v16 initWithURL:v17];

  [(ISOpenURLRequest *)v18 setInterruptsKeybagRefresh:1];
  [(ISOpenURLRequest *)v18 setTargetIdentifier:v11];

  v21.receiver = self;
  v21.super_class = ISCreateAccountOperation;
  v19 = [(ISOpenURLOperation *)&v21 initWithOpenURLRequest:v18];

  return v19;
}

@end