@interface SCUIHelpResources
+ (void)obtainChatWithParentsURL:(id)l;
+ (void)openChatWithParents;
@end

@implementation SCUIHelpResources

+ (void)openChatWithParents
{
  v2 = +[SCUIHelpResources getCurrentInterventionType];

  [SCUIContactParentsHelper openChatWithParentsForInterventionType:v2];
}

+ (void)obtainChatWithParentsURL:(id)l
{
  lCopy = l;
  +[SCUIContactParentsHelper obtainChatWithParentsURLForInterventionType:completionHandler:](SCUIContactParentsHelper, "obtainChatWithParentsURLForInterventionType:completionHandler:", +[SCUIHelpResources getCurrentInterventionType], lCopy);
}

@end