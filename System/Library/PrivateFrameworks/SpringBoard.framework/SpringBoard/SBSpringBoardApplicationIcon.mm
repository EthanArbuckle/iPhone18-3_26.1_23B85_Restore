@interface SBSpringBoardApplicationIcon
- (SBSpringBoardApplicationIcon)init;
@end

@implementation SBSpringBoardApplicationIcon

- (SBSpringBoardApplicationIcon)init
{
  v9.receiver = self;
  v9.super_class = SBSpringBoardApplicationIcon;
  v3 = [(SBLeafIcon *)&v9 initWithLeafIdentifier:@"com.apple.springboard" applicationBundleID:@"com.apple.springboard"];
  if (v3)
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = [MEMORY[0x277D75418] currentDevice];
      v5 = [v4 userInterfaceIdiom];

      if (v5 == 1)
      {
LABEL_7:
        v7 = objc_alloc_init(SBSpringBoardApplicationIconDataSource);
        [(SBLeafIcon *)v3 addIconDataSource:v7];

        return v3;
      }
    }

    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:v3 file:@"SBSpringBoardApplicationIcon.m" lineNumber:25 description:@"This icon can only be created on iPad"];

    goto LABEL_7;
  }

  return v3;
}

@end