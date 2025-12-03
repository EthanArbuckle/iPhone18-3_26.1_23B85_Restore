@interface SLSoftLinks
+ (BOOL)canSendText;
+ (id)newComposeViewControllerDelegateInstance:(id)instance;
+ (id)newComposeViewControllerInstance;
+ (id)newComposeViewControllerInstanceWithDelegate:(id)delegate itemProvider:(id)provider collaborationOptions:(id)options collaborationMetadata:(id)metadata;
@end

@implementation SLSoftLinks

+ (id)newComposeViewControllerInstance
{
  v2 = objc_alloc(getMFMessageComposeViewControllerClass());

  return [v2 init];
}

+ (id)newComposeViewControllerDelegateInstance:(id)instance
{
  instanceCopy = instance;
  v4 = [[SLComposeViewControllerDelegate alloc] initWithCallback:instanceCopy];

  return v4;
}

+ (id)newComposeViewControllerInstanceWithDelegate:(id)delegate itemProvider:(id)provider collaborationOptions:(id)options collaborationMetadata:(id)metadata
{
  metadataCopy = metadata;
  optionsCopy = options;
  providerCopy = provider;
  delegateCopy = delegate;
  v13 = [objc_alloc(getMFMessageComposeViewControllerClass()) init];
  [v13 setMessageComposeDelegate:delegateCopy];

  [v13 insertCollaborationItemProvider:providerCopy collaborationShareOptions:optionsCopy collaborationMetadata:metadataCopy isCollaboration:1];
  return v13;
}

+ (BOOL)canSendText
{
  MFMessageComposeViewControllerClass = getMFMessageComposeViewControllerClass();

  return [MFMessageComposeViewControllerClass canSendText];
}

@end