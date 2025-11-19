@interface UIActivity(PHActivity)
+ (id)ph_PhotosApplicationActivitiesTypePublish:()PHActivity;
+ (id)ph_PhotosApplicationActivityTypeOrder;
@end

@implementation UIActivity(PHActivity)

+ (id)ph_PhotosApplicationActivityTypeOrder
{
  v0 = MEMORY[0x1E695DF70];
  v1 = +[PUActivityViewController defaultActivityTypeOrder];
  v2 = [v0 arrayWithArray:v1];

  [v2 insertObject:*MEMORY[0x1E69C3EB0] atIndex:2];

  return v2;
}

+ (id)ph_PhotosApplicationActivitiesTypePublish:()PHActivity
{
  v27[1] = *MEMORY[0x1E69E9840];
  v15 = [PUActivityViewController photosApplicationActivities:?];
  v27[0] = *MEMORY[0x1E69C3CF0];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v1 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v0;
  v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v14 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v4 = v15;
        v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v18;
          do
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v18 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v17 + 1) + 8 * j);
              v10 = [v9 activityType];
              v11 = [v10 isEqualToString:v3];

              if (v11)
              {
                [v1 addObject:v9];
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v6);
        }
      }

      v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }

  return v1;
}

@end