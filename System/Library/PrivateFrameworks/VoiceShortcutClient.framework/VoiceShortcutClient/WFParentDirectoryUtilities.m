@interface WFParentDirectoryUtilities
+ (id)commonRootForFileURLs:(id)a3;
@end

@implementation WFParentDirectoryUtilities

+ (id)commonRootForFileURLs:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 pathComponents];

  if (v5)
  {
    if ([v3 count] == 1)
    {
      v6 = [v3 firstObject];
      v7 = [v6 URLByDeletingLastPathComponent];
    }

    else
    {
      if ([v3 count] >= 2)
      {
        v8 = 1;
        do
        {
          v9 = [v3 objectAtIndex:v8];
          v10 = [v9 pathComponents];

          v11 = [v5 count];
          if ([v10 count] < v11)
          {
            v11 = [v10 count];
          }

          v12 = 0;
          if (v11)
          {
            while (1)
            {
              v13 = [v5 objectAtIndex:v12];
              v14 = [v10 objectAtIndex:v12];
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

          if (v12 < [v5 count])
          {
            v16 = [v5 subarrayWithRange:{0, v12}];

            v5 = v16;
          }

          v17 = [v5 count];

          if (!v17)
          {
            break;
          }

          ++v8;
        }

        while (v8 < [v3 count]);
      }

      v7 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:v5];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end