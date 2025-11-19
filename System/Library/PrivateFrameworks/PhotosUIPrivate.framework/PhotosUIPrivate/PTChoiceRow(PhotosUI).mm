@interface PTChoiceRow(PhotosUI)
- (id)pu_possibleValues:()PhotosUI;
@end

@implementation PTChoiceRow(PhotosUI)

- (id)pu_possibleValues:()PhotosUI
{
  v4 = a3;
  v5 = [v4 valueForKey:@"description"];
  v6 = [a1 possibleValues:v4 titles:v5];

  return v6;
}

@end