@interface SKPresentDevice(CoreData)
- (uint64_t)initWithCoreDataPresentDevice:()CoreData;
@end

@implementation SKPresentDevice(CoreData)

- (uint64_t)initWithCoreDataPresentDevice:()CoreData
{
  v4 = MEMORY[0x277D680C0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 handle];
  v8 = [v6 initWithString:v7];

  v9 = objc_alloc(MEMORY[0x277D68108]);
  v10 = [v5 presencePayload];
  v11 = [v9 initWithData:v10];

  v12 = [v5 deviceIdentifier];
  v13 = [v5 deviceTokenURI];
  v14 = [v5 assertionTime];
  v15 = [v5 isSelfHandle];
  v16 = [v5 isSelfDevice];

  LOBYTE(v19) = v16;
  v17 = [a1 initWithHandle:v8 deviceIdentifier:v12 deviceTokenURI:v13 payload:v11 assertionTime:v14 selfHandle:v15 selfDevice:v19];

  return v17;
}

@end