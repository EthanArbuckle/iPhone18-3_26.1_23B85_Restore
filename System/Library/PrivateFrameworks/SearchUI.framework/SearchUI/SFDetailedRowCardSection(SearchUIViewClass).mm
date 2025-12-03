@interface SFDetailedRowCardSection(SearchUIViewClass)
- (id)_searchUIHorizontalViewClass;
@end

@implementation SFDetailedRowCardSection(SearchUIViewClass)

- (id)_searchUIHorizontalViewClass
{
  thumbnail = [self thumbnail];
  [thumbnail size];
  v3 = v2;

  if (v3 <= 150.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

@end