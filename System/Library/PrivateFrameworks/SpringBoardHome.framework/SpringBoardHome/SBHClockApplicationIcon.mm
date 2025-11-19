@interface SBHClockApplicationIcon
- (Class)iconImageViewClassForLocation:(id)a3;
@end

@implementation SBHClockApplicationIcon

- (Class)iconImageViewClassForLocation:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _shouldAnimateInLocation:v4])
  {
    v5 = objc_opt_self();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHClockApplicationIcon;
    v5 = [(SBIcon *)&v8 iconImageViewClassForLocation:v4];
  }

  v6 = v5;

  return v6;
}

@end