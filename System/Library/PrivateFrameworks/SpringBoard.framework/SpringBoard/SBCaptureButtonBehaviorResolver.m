@interface SBCaptureButtonBehaviorResolver
+ (id)resolveInteractionForBehaviors:(id)a3 inContext:(id)a4;
@end

@implementation SBCaptureButtonBehaviorResolver

+ (id)resolveInteractionForBehaviors:(id)a3 inContext:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SBCaptureButtonBehaviorsResponse emptyResponse];
  v8 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
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
        v15 = [[SBCaptureButtonBehaviorsResponse alloc] initWithBehavior:v14 context:v6];
        v7 = [v13 responseByMergingResponse:v15];

        v16 = [[SBCaptureButtonBehaviorsResponseLog alloc] initWithBehavior:v14 response:v15];
        [v8 addObject:v16];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = [[SBCaptureButtonInteraction alloc] initWithContext:v6 response:v7 responseLogs:v8];

  return v17;
}

@end