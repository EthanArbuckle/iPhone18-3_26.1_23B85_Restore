@interface LSBundleRecord
- (BOOL)swc_isBuiltForDevelopment;
- (BOOL)swc_linkedOnOrAfter:(id)a3;
@end

@implementation LSBundleRecord

- (BOOL)swc_linkedOnOrAfter:(id)a3
{
  v4 = a3;
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v6 = [(LSBundleRecord *)self SDKVersion];
  v7 = [v5 isVersion:v6 greaterThanOrEqualToVersion:v4];

  return v7;
}

- (BOOL)swc_isBuiltForDevelopment
{
  v3 = [(LSBundleRecord *)self isProfileValidated];
  if (v3)
  {
    if (([(LSBundleRecord *)self isUPPValidated]& 1) != 0)
    {
      LOBYTE(v3) = 0;
    }

    else if (objc_opt_respondsToSelector())
    {
      LOBYTE(v3) = [(LSBundleRecord *)self isBeta]^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

@end