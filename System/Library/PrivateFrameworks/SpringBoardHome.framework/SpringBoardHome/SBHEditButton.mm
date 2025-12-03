@interface SBHEditButton
- (SBHEditButton)initWithFrame:(CGRect)frame backgroundView:(id)view;
- (SBHEditButton)initWithFrame:(CGRect)frame material:(int64_t)material;
@end

@implementation SBHEditButton

- (SBHEditButton)initWithFrame:(CGRect)frame material:(int64_t)material
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = SBHBundle();
  v11 = [v10 localizedStringForKey:@"EDIT" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  height = [(SBTitledHomeScreenButton *)self initWithFrame:material material:1 type:v11 content:x, y, width, height];
  return height;
}

- (SBHEditButton)initWithFrame:(CGRect)frame backgroundView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v10 = SBHBundle();
  v11 = [v10 localizedStringForKey:@"EDIT" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  height = [(SBTitledHomeScreenButton *)self initWithFrame:viewCopy backgroundView:1 type:v11 content:x, y, width, height];
  return height;
}

@end