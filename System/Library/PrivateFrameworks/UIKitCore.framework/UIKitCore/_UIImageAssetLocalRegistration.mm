@interface _UIImageAssetLocalRegistration
+ (id)registrationWithImage:(id)image configuration:(id)configuration;
- (BOOL)matchesConfiguration:(id)configuration;
@end

@implementation _UIImageAssetLocalRegistration

+ (id)registrationWithImage:(id)image configuration:(id)configuration
{
  imageCopy = image;
  configurationCopy = configuration;
  v7 = objc_opt_new();
  [v7 setImage:imageCopy];
  if (dyld_program_sdk_at_least())
  {
    configuration = [imageCopy configuration];
    v9 = configurationCopy;
    v10 = configuration;
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

- (BOOL)matchesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configuration = [(_UIImageAssetLocalRegistration *)self configuration];
  v6 = configurationCopy;
  v7 = v6;
  if (configuration == v6)
  {
    v9 = 1;
    configuration2 = v6;
    image = configuration;
LABEL_14:

    goto LABEL_15;
  }

  if (!v6 || !configuration)
  {

    goto LABEL_8;
  }

  v8 = [configuration isEqual:v6];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    image = [(_UIImageAssetLocalRegistration *)self image];
    configuration2 = [image configuration];
    v12 = v7;
    if (configuration2 == v12)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
      if (v7 && configuration2)
      {
        v9 = [configuration2 isEqual:v12];
      }
    }

    goto LABEL_14;
  }

  v9 = 1;
LABEL_15:

  return v9;
}

@end