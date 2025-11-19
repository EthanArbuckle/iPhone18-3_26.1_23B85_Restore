@interface _UIImageAssetLocalRegistration
+ (id)registrationWithImage:(id)a3 configuration:(id)a4;
- (BOOL)matchesConfiguration:(id)a3;
@end

@implementation _UIImageAssetLocalRegistration

+ (id)registrationWithImage:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setImage:v5];
  if (dyld_program_sdk_at_least())
  {
    v8 = [v5 configuration];
    v9 = v6;
    v10 = v8;
    v11 = v10;
    if (v10 == v9)
    {

      goto LABEL_10;
    }

    if (v9 && v10)
    {
      v12 = [v9 isEqual:v10];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    [v7 setConfiguration:v9];
  }

LABEL_10:

  return v7;
}

- (BOOL)matchesConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(_UIImageAssetLocalRegistration *)self configuration];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v9 = 1;
    v10 = v6;
    v11 = v5;
LABEL_14:

    goto LABEL_15;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v8 = [v5 isEqual:v6];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    v11 = [(_UIImageAssetLocalRegistration *)self image];
    v10 = [v11 configuration];
    v12 = v7;
    if (v10 == v12)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
      if (v7 && v10)
      {
        v9 = [v10 isEqual:v12];
      }
    }

    goto LABEL_14;
  }

  v9 = 1;
LABEL_15:

  return v9;
}

@end