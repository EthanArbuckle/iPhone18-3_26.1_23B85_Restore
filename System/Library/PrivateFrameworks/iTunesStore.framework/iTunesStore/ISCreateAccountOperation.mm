@interface ISCreateAccountOperation
- (ISCreateAccountOperation)initWithDSID:(id)d additionalQueryParams:(id)params targetIdentifier:(id)identifier;
@end

@implementation ISCreateAccountOperation

- (ISCreateAccountOperation)initWithDSID:(id)d additionalQueryParams:(id)params targetIdentifier:(id)identifier
{
  dCopy = d;
  paramsCopy = params;
  v10 = MEMORY[0x277CCAB68];
  identifierCopy = identifier;
  v12 = [[v10 alloc] initWithString:@"http://?action=account"];
  if ([dCopy unsignedLongLongValue])
  {
    stringValue = [dCopy stringValue];
    [v12 appendFormat:@"&dsid=%@", stringValue];
  }

  v14 = [MEMORY[0x277CBEBC0] queryStringForDictionary:paramsCopy escapedValues:1];
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
  [(ISOpenURLRequest *)v18 setTargetIdentifier:identifierCopy];

  v21.receiver = self;
  v21.super_class = ISCreateAccountOperation;
  v19 = [(ISOpenURLOperation *)&v21 initWithOpenURLRequest:v18];

  return v19;
}

@end