@interface SBHEditButton
- (SBHEditButton)initWithFrame:(CGRect)a3 backgroundView:(id)a4;
- (SBHEditButton)initWithFrame:(CGRect)a3 material:(int64_t)a4;
@end

@implementation SBHEditButton

- (SBHEditButton)initWithFrame:(CGRect)a3 material:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = SBHBundle();
  v11 = [v10 localizedStringForKey:@"EDIT" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  v12 = [(SBTitledHomeScreenButton *)self initWithFrame:a4 material:1 type:v11 content:x, y, width, height];
  return v12;
}

- (SBHEditButton)initWithFrame:(CGRect)a3 backgroundView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = SBHBundle();
  v11 = [v10 localizedStringForKey:@"EDIT" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  v12 = [(SBTitledHomeScreenButton *)self initWithFrame:v9 backgroundView:1 type:v11 content:x, y, width, height];
  return v12;
}

@end