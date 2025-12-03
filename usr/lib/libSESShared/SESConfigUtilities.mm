@interface SESConfigUtilities
+ (float)getVersion:(id)version error:(id *)error;
+ (id)validateKey:(id)key expectedClass:(Class)class dictionary:(id)dictionary;
@end

@implementation SESConfigUtilities

+ (float)getVersion:(id)version error:(id *)error
{
  versionCopy = version;
  [versionCopy floatValue];
  v7 = v6;
  if (error && v6 == 0.0)
  {
    v8 = SESDefaultLogObject();
    *error = SESCreateAndLogError(0, v8, SESErrorDomain, 1, @"Invalid version from string %@", v9, v10, v11, versionCopy);
  }

  return v7;
}

+ (id)validateKey:(id)key expectedClass:(Class)class dictionary:(id)dictionary
{
  keyCopy = key;
  v7 = [dictionary objectForKeyedSubscript:keyCopy];
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = 0;
      goto LABEL_7;
    }

    v9 = SESDefaultLogObject();
    SESCreateAndLogError(0, v9, SESErrorDomain, 1, @"Wrong class for key %@", v13, v14, v15, keyCopy);
  }

  else
  {
    v9 = SESDefaultLogObject();
    SESCreateAndLogError(0, v9, SESErrorDomain, 4, @"Missing key %@", v10, v11, v12, keyCopy);
  }
  v8 = ;

LABEL_7:

  return v8;
}

@end