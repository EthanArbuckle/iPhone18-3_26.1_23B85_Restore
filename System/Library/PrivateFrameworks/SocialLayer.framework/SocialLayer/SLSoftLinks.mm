@interface SLSoftLinks
+ (BOOL)canSendText;
+ (id)newComposeViewControllerDelegateInstance:(id)a3;
+ (id)newComposeViewControllerInstance;
+ (id)newComposeViewControllerInstanceWithDelegate:(id)a3 itemProvider:(id)a4 collaborationOptions:(id)a5 collaborationMetadata:(id)a6;
@end

@implementation SLSoftLinks

+ (id)newComposeViewControllerInstance
{
  v2 = objc_alloc(getMFMessageComposeViewControllerClass());

  return [v2 init];
}

+ (id)newComposeViewControllerDelegateInstance:(id)a3
{
  v3 = a3;
  v4 = [[SLComposeViewControllerDelegate alloc] initWithCallback:v3];

  return v4;
}

+ (id)newComposeViewControllerInstanceWithDelegate:(id)a3 itemProvider:(id)a4 collaborationOptions:(id)a5 collaborationMetadata:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_alloc(getMFMessageComposeViewControllerClass()) init];
  [v13 setMessageComposeDelegate:v12];

  [v13 insertCollaborationItemProvider:v11 collaborationShareOptions:v10 collaborationMetadata:v9 isCollaboration:1];
  return v13;
}

+ (BOOL)canSendText
{
  MFMessageComposeViewControllerClass = getMFMessageComposeViewControllerClass();

  return [MFMessageComposeViewControllerClass canSendText];
}

@end