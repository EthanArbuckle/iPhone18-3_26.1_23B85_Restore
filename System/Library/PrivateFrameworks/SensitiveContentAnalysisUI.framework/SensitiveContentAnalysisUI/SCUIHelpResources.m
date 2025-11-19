@interface SCUIHelpResources
+ (void)obtainChatWithParentsURL:(id)a3;
+ (void)openChatWithParents;
@end

@implementation SCUIHelpResources

+ (void)openChatWithParents
{
  v2 = +[SCUIHelpResources getCurrentInterventionType];

  [SCUIContactParentsHelper openChatWithParentsForInterventionType:v2];
}

+ (void)obtainChatWithParentsURL:(id)a3
{
  v3 = a3;
  +[SCUIContactParentsHelper obtainChatWithParentsURLForInterventionType:completionHandler:](SCUIContactParentsHelper, "obtainChatWithParentsURLForInterventionType:completionHandler:", +[SCUIHelpResources getCurrentInterventionType], v3);
}

@end