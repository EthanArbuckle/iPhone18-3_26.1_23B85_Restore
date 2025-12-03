@interface SKPresentDevice(CoreData)
- (uint64_t)initWithCoreDataPresentDevice:()CoreData;
@end

@implementation SKPresentDevice(CoreData)

- (uint64_t)initWithCoreDataPresentDevice:()CoreData
{
  v4 = MEMORY[0x277D680C0];
  v5 = a3;
  v6 = [v4 alloc];
  handle = [v5 handle];
  v8 = [v6 initWithString:handle];

  v9 = objc_alloc(MEMORY[0x277D68108]);
  presencePayload = [v5 presencePayload];
  v11 = [v9 initWithData:presencePayload];

  deviceIdentifier = [v5 deviceIdentifier];
  deviceTokenURI = [v5 deviceTokenURI];
  assertionTime = [v5 assertionTime];
  isSelfHandle = [v5 isSelfHandle];
  isSelfDevice = [v5 isSelfDevice];

  LOBYTE(v19) = isSelfDevice;
  v17 = [self initWithHandle:v8 deviceIdentifier:deviceIdentifier deviceTokenURI:deviceTokenURI payload:v11 assertionTime:assertionTime selfHandle:isSelfHandle selfDevice:v19];

  return v17;
}

@end