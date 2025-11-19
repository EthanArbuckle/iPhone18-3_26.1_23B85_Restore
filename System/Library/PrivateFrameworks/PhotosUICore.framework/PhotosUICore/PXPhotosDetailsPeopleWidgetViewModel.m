@interface PXPhotosDetailsPeopleWidgetViewModel
+ (BOOL)hasContentAvailableFor:(id)a3;
@end

@implementation PXPhotosDetailsPeopleWidgetViewModel

+ (BOOL)hasContentAvailableFor:(id)a3
{
  v3 = a3;
  v4 = [v3 people];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 count];

    return v6 > 0;
  }

  else
  {

    return 0;
  }
}

@end