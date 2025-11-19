@interface NSUserActivity(NSUserActivityPayloadServicesSupport)
- (id)_objectForIdentifier:()NSUserActivityPayloadServicesSupport;
- (id)_payloadForIdentifier:()NSUserActivityPayloadServicesSupport;
- (id)_payloadUpdateBlockForIdentifier:()NSUserActivityPayloadServicesSupport;
- (void)_setDirty:()NSUserActivityPayloadServicesSupport identifier:;
- (void)_setPayload:()NSUserActivityPayloadServicesSupport object:identifier:;
- (void)_setPayload:()NSUserActivityPayloadServicesSupport object:identifier:dirty:;
- (void)_setPayloadIdentifier:()NSUserActivityPayloadServicesSupport object:withBlock:;
@end

@implementation NSUserActivity(NSUserActivityPayloadServicesSupport)

- (id)_payloadForIdentifier:()NSUserActivityPayloadServicesSupport
{
  v4 = a3;
  v5 = [a1 _internalUserActivity];
  v6 = [v5 payloadForIdentifier:v4];

  return v6;
}

- (id)_objectForIdentifier:()NSUserActivityPayloadServicesSupport
{
  v4 = a3;
  v5 = [a1 _internalUserActivity];
  v6 = [v5 objectForIdentifier:v4];

  return v6;
}

- (id)_payloadUpdateBlockForIdentifier:()NSUserActivityPayloadServicesSupport
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__NSUserActivity_NSUserActivityPayloadServicesSupport___payloadUpdateBlockForIdentifier___block_invoke;
  aBlock[3] = &unk_2785C3F10;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);
  v2 = _Block_copy(v1);

  return v2;
}

- (void)_setPayload:()NSUserActivityPayloadServicesSupport object:identifier:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 _internalUserActivity];
  [v11 setPayload:v10 object:v9 identifier:v8];
}

- (void)_setPayload:()NSUserActivityPayloadServicesSupport object:identifier:dirty:
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a1 _internalUserActivity];
  [v13 setPayload:v12 object:v11 identifier:v10 dirty:a6];
}

- (void)_setPayloadIdentifier:()NSUserActivityPayloadServicesSupport object:withBlock:
{
  v8 = a3;
  v9 = a5;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __95__NSUserActivity_NSUserActivityPayloadServicesSupport___setPayloadIdentifier_object_withBlock___block_invoke;
  v18 = &unk_2785C3F60;
  v19 = v8;
  v20 = v9;
  v10 = v8;
  v11 = v9;
  v12 = a4;
  v13 = _Block_copy(&v15);
  v14 = [a1 _internalUserActivity];
  [v14 setPayloadIdentifier:v10 object:v12 withBlock:v13];
}

- (void)_setDirty:()NSUserActivityPayloadServicesSupport identifier:
{
  v6 = a4;
  v7 = [a1 _internalUserActivity];
  [v7 setDirty:a3 identifier:v6];
}

@end