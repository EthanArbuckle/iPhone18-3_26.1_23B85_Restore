@interface WFParentDirectoryUtilities
+ (id)commonRootForFileURLs:(id)ls;
@end

@implementation WFParentDirectoryUtilities

+ (id)commonRootForFileURLs:(id)ls
{
  lsCopy = ls;
  firstObject = [lsCopy firstObject];
  pathComponents = [firstObject pathComponents];

  if (pathComponents)
  {
    if ([lsCopy count] == 1)
    {
      firstObject2 = [lsCopy firstObject];
      uRLByDeletingLastPathComponent = [firstObject2 URLByDeletingLastPathComponent];
    }

    else
    {
      if ([lsCopy count] >= 2)
      {
        v8 = 1;
        do
        {
          v9 = [lsCopy objectAtIndex:v8];
          pathComponents2 = [v9 pathComponents];

          v11 = [pathComponents count];
          if ([pathComponents2 count] < v11)
          {
            v11 = [pathComponents2 count];
          }

          v12 = 0;
          if (v11)
          {
            while (1)
            {
              v13 = [pathComponents objectAtIndex:v12];
              v14 = [pathComponents2 objectAtIndex:v12];
              v15 = [v13 isEqualToString:v14];

              if (!v15)
              {
                break;
              }

              if (v11 == ++v12)
              {
                v12 = v11;
                break;
              }
            }
          }

          if (v12 < [pathComponents count])
          {
            v16 = [pathComponents subarrayWithRange:{0, v12}];

            pathComponents = v16;
          }

          v17 = [pathComponents count];

          if (!v17)
          {
            break;
          }

          ++v8;
        }

        while (v8 < [lsCopy count]);
      }

      uRLByDeletingLastPathComponent = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:pathComponents];
    }
  }

  else
  {
    uRLByDeletingLastPathComponent = 0;
  }

  return uRLByDeletingLastPathComponent;
}

@end