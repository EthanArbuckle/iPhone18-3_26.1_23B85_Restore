@interface UIApplicationIsSystemApplication
@end

@implementation UIApplicationIsSystemApplication

void ___UIApplicationIsSystemApplication_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v16 = [v0 bundleURL];

  v1 = [v16 isFileURL];
  v2 = v16;
  if (v1)
  {
    v3 = [v16 path];
    v4 = [v3 stringByResolvingSymlinksInPath];

    v5 = [v4 pathComponents];
    if ([v4 isAbsolutePath])
    {
      v6 = [v5 count];
      if (v6 >= 2)
      {
        v7 = v6;
        v8 = [v5 objectAtIndex:v6 - 2];
        v9 = [v8 isEqualToString:@"Applications"];
        v10 = (v7 - 2);
        if (v7 == 2 || (v9 & 1) != 0)
        {
          byte_1EA992DDA = v9;
LABEL_20:

          goto LABEL_21;
        }

        v11 = [v5 objectAtIndex:v7 - 3];
        v12 = [v11 isEqualToString:@"AppleInternal"];
        v13 = v12;
        if (v12)
        {
          v10 = [v5 objectAtIndex:v7 - 2];
          if ([v10 isEqualToString:@"Applications"])
          {
            v14 = 1;
LABEL_17:
            byte_1EA992DDA = v14;
LABEL_18:

            goto LABEL_19;
          }

          if (v7 <= 4)
          {
            v14 = 0;
            goto LABEL_17;
          }
        }

        else if (v7 <= 4)
        {
          byte_1EA992DDA = 0;
LABEL_19:

          goto LABEL_20;
        }

        v15 = [v5 objectAtIndex:v7 - 4];
        byte_1EA992DDA = [v15 isEqualToString:@"Applications"];

        if ((v13 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      byte_1EA992DDA = 0;
    }

LABEL_21:

    v2 = v16;
  }
}

@end