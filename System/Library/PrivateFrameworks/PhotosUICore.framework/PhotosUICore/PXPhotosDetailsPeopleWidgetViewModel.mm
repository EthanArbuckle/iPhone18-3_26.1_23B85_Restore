@interface PXPhotosDetailsPeopleWidgetViewModel
+ (BOOL)hasContentAvailableFor:(id)for;
@end

@implementation PXPhotosDetailsPeopleWidgetViewModel

+ (BOOL)hasContentAvailableFor:(id)for
{
  forCopy = for;
  people = [forCopy people];
  if (people)
  {
    v5 = people;
    v6 = [people count];

    return v6 > 0;
  }

  else
  {

    return 0;
  }
}

@end