@interface SBHClockApplicationIcon
- (Class)iconImageViewClassForLocation:(id)location;
@end

@implementation SBHClockApplicationIcon

- (Class)iconImageViewClassForLocation:(id)location
{
  locationCopy = location;
  if ([objc_opt_class() _shouldAnimateInLocation:locationCopy])
  {
    v5 = objc_opt_self();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHClockApplicationIcon;
    v5 = [(SBIcon *)&v8 iconImageViewClassForLocation:locationCopy];
  }

  v6 = v5;

  return v6;
}

@end