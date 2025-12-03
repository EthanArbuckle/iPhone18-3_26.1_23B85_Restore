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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = [selfCopy _payloadForIdentifier:@"com.apple.synapse.relatedUniqueIdentifier"];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v2 encoding:4];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)set_syRelatedUniqueIdentifier:()SYDocumentWorkflows
{
  v6 = a3;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [v6 dataUsingEncoding:4];
  [selfCopy _setPayload:v5 object:0 identifier:@"com.apple.synapse.relatedUniqueIdentifier"];

  objc_sync_exit(selfCopy);
}

- (id)_syDocumentProvider
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = [selfCopy _payloadForIdentifier:@"com.apple.synapse.document"];

  objc_sync_exit(selfCopy);
  if (v2)
  {
    v3 = selfCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = [selfCopy _payloadForIdentifier:@"com.apple.synapse.shouldCreateNewMessage"];
  v3 = v2;
  if (v2)
  {
    [v2 getBytes:&v5 length:1];
  }

  objc_sync_exit(selfCopy);
  return v5;
}

- (id)_syOriginalUserActivity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = [selfCopy _payloadForIdentifier:@"com.apple.synapse.originalUserActivity"];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityData:v2];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

@end