@interface NSUserActivity(SYDocumentWorkflows)
- (id)_syDocumentProvider;
- (id)_syOriginalUserActivity;
- (id)_syRelatedUniqueIdentifier;
- (uint64_t)_syShouldCreateNewMessage;
- (void)set_syRelatedUniqueIdentifier:()SYDocumentWorkflows;
@end

@implementation NSUserActivity(SYDocumentWorkflows)

- (id)_syRelatedUniqueIdentifier
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1 _payloadForIdentifier:@"com.apple.synapse.relatedUniqueIdentifier"];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v2 encoding:4];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v1);

  return v3;
}

- (void)set_syRelatedUniqueIdentifier:()SYDocumentWorkflows
{
  v6 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = [v6 dataUsingEncoding:4];
  [v4 _setPayload:v5 object:0 identifier:@"com.apple.synapse.relatedUniqueIdentifier"];

  objc_sync_exit(v4);
}

- (id)_syDocumentProvider
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1 _payloadForIdentifier:@"com.apple.synapse.document"];

  objc_sync_exit(v1);
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_syShouldCreateNewMessage
{
  v5 = 0;
  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1 _payloadForIdentifier:@"com.apple.synapse.shouldCreateNewMessage"];
  v3 = v2;
  if (v2)
  {
    [v2 getBytes:&v5 length:1];
  }

  objc_sync_exit(v1);
  return v5;
}

- (id)_syOriginalUserActivity
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1 _payloadForIdentifier:@"com.apple.synapse.originalUserActivity"];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityData:v2];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v1);

  return v3;
}

@end