@interface PTChoiceRow(PhotosUICore)
- (id)px_possibleValues:()PhotosUICore;
- (void)px_possibleValues:()PhotosUICore formatter:;
@end

@implementation PTChoiceRow(PhotosUICore)

- (void)px_possibleValues:()PhotosUICore formatter:
{
  v5 = a4;
  v6 = a3;
  PXMap();
}

- (id)px_possibleValues:()PhotosUICore
{
  v4 = a3;
  v5 = [v4 valueForKey:@"description"];
  v6 = [a1 possibleValues:v4 titles:v5];

  return v6;
}

@end