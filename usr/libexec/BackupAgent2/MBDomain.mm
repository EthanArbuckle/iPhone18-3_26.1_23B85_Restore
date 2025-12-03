@interface MBDomain
- (BOOL)adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:(id *)in path:(id)path;
@end

@implementation MBDomain

- (BOOL)adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:(id *)in path:(id)path
{
  pathCopy = path;
  v7 = MBMobileUID();
  if (([(MBDomain *)self isSystemContainerDomain]& 1) != 0 || ([(MBDomain *)self isSystemSharedContainerDomain]& 1) != 0 || [(MBDomain *)self isLegacyPerAppPlaceholderDomain])
  {
    in->var1 = v7;
    in->var2 = v7;
    if (sub_10008E5E0(in))
    {
      inCopy2 = in;
      v9 = 493;
    }

    else
    {
      inCopy2 = in;
      v9 = 420;
    }

    sub_10008E628(inCopy2, v9);
  }

  else
  {
    if (in->var1 || sub_10008E608(in) || !-[MBDomain isCameraRollDomain](self, "isCameraRollDomain") || !sub_10008E5F4(in) && (-[MBDomain rootPath](self, "rootPath"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isEqualToString:pathCopy], v12, (v13 & 1) != 0))
    {
      v10 = 0;
      goto LABEL_9;
    }

    in->var1 = v7;
    in->var2 = v7;
  }

  v10 = 1;
LABEL_9:

  return v10;
}

@end