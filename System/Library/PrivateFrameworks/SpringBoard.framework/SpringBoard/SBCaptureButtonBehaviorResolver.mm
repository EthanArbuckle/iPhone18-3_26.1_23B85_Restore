@interface SBCaptureButtonBehaviorResolver
+ (id)resolveInteractionForBehaviors:(id)behaviors inContext:(id)context;
@end

@implementation SBCaptureButtonBehaviorResolver

+ (id)resolveInteractionForBehaviors:(id)behaviors inContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  behaviorsCopy = behaviors;
  contextCopy = context;
  v7 = +[SBCaptureButtonBehaviorsResponse emptyResponse];
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = behaviorsCopy;
  v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v20 + 1) + 8 * v12);
        v15 = [[SBCaptureButtonBehaviorsResponse alloc] initWithBehavior:v14 context:contextCopy];
        v7 = [v13 responseByMergingResponse:v15];

        v16 = [[SBCaptureButtonBehaviorsResponseLog alloc] initWithBehavior:v14 response:v15];
        [array addObject:v16];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = [[SBCaptureButtonInteraction alloc] initWithContext:contextCopy response:v7 responseLogs:array];

  return v17;
}

@end