@interface MBDomain
- (BOOL)adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:(id *)a3 path:(id)a4;
@end

@implementation MBDomain

- (BOOL)adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:(id *)a3 path:(id)a4
{
  v6 = a4;
  v7 = MBMobileUID();
  if (([(MBDomain *)self isSystemContainerDomain]& 1) != 0 || ([(MBDomain *)self isSystemSharedContainerDomain]& 1) != 0 || [(MBDomain *)self isLegacyPerAppPlaceholderDomain])
  {
    a3->var1 = v7;
    a3->var2 = v7;
    if (sub_10008E5E0(a3))
    {
      v8 = a3;
      v9 = 493;
    }

    else
    {
      v8 = a3;
      v9 = 420;
    }

    sub_10008E628(v8, v9);
  }

  else
  {
    if (a3->var1 || sub_10008E608(a3) || !-[MBDomain isCameraRollDomain](self, "isCameraRollDomain") || !sub_10008E5F4(a3) && (-[MBDomain rootPath](self, "rootPath"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isEqualToString:v6], v12, (v13 & 1) != 0))
    {
      v10 = 0;
      goto LABEL_9;
    }

    a3->var1 = v7;
    a3->var2 = v7;
  }

  v10 = 1;
LABEL_9:

  return v10;
}

@end