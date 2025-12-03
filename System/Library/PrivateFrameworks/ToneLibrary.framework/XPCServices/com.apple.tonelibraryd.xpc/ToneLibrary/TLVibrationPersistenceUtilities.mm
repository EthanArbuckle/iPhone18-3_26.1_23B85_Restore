@interface TLVibrationPersistenceUtilities
+ (BOOL)_objectIsValidUserGeneratedVibrationPattern:(id)pattern error:(id *)error;
+ (BOOL)_validateObjectWithError:(id *)error validationBlock:(id)block;
+ (BOOL)objectIsValidUserGeneratedVibrationPatternsDictionary:(id)dictionary error:(id *)error;
+ (NSURL)userGeneratedVibrationStoreFileURL;
@end

@implementation TLVibrationPersistenceUtilities

+ (BOOL)_validateObjectWithError:(id *)error validationBlock:(id)block
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  (*(block + 2))(block, &v16, &v15, &v14);
  v5 = v16;
  v6 = v15;
  v7 = v14;
  v8 = v7;
  if (!v5)
  {
    if (!(v6 | v7))
    {
      v10 = 1;
      goto LABEL_9;
    }

    if (error)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *error = [NSError tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:@"Unexpected type for %@: %@ (%@)", v8, v12, v6];
    }

    goto LABEL_7;
  }

  if (!error)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = v5;
  v10 = 0;
  *error = v5;
LABEL_9:

  return v10;
}

+ (BOOL)_objectIsValidUserGeneratedVibrationPattern:(id)pattern error:(id *)error
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000010E8;
  v8[3] = &unk_100008270;
  patternCopy = pattern;
  v6 = patternCopy;
  LOBYTE(error) = [self _validateObjectWithError:error validationBlock:v8];

  return error;
}

+ (BOOL)objectIsValidUserGeneratedVibrationPatternsDictionary:(id)dictionary error:(id *)error
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001510;
  v8[3] = &unk_100008298;
  dictionaryCopy = dictionary;
  selfCopy = self;
  v6 = dictionaryCopy;
  LOBYTE(error) = [self _validateObjectWithError:error validationBlock:v8];

  return error;
}

+ (NSURL)userGeneratedVibrationStoreFileURL
{
  v2 = CPSharedResourcesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Media/Vibrations/UserGeneratedVibrationPatterns.plist"];
  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3 isDirectory:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end