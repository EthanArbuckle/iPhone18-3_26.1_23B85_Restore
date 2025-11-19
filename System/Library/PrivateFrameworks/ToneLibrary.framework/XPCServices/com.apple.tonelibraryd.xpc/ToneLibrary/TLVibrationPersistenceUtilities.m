@interface TLVibrationPersistenceUtilities
+ (BOOL)_objectIsValidUserGeneratedVibrationPattern:(id)a3 error:(id *)a4;
+ (BOOL)_validateObjectWithError:(id *)a3 validationBlock:(id)a4;
+ (BOOL)objectIsValidUserGeneratedVibrationPatternsDictionary:(id)a3 error:(id *)a4;
+ (NSURL)userGeneratedVibrationStoreFileURL;
@end

@implementation TLVibrationPersistenceUtilities

+ (BOOL)_validateObjectWithError:(id *)a3 validationBlock:(id)a4
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  (*(a4 + 2))(a4, &v16, &v15, &v14);
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

    if (a3)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *a3 = [NSError tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:@"Unexpected type for %@: %@ (%@)", v8, v12, v6];
    }

    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = v5;
  v10 = 0;
  *a3 = v5;
LABEL_9:

  return v10;
}

+ (BOOL)_objectIsValidUserGeneratedVibrationPattern:(id)a3 error:(id *)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000010E8;
  v8[3] = &unk_100008270;
  v9 = a3;
  v6 = v9;
  LOBYTE(a4) = [a1 _validateObjectWithError:a4 validationBlock:v8];

  return a4;
}

+ (BOOL)objectIsValidUserGeneratedVibrationPatternsDictionary:(id)a3 error:(id *)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001510;
  v8[3] = &unk_100008298;
  v9 = a3;
  v10 = a1;
  v6 = v9;
  LOBYTE(a4) = [a1 _validateObjectWithError:a4 validationBlock:v8];

  return a4;
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