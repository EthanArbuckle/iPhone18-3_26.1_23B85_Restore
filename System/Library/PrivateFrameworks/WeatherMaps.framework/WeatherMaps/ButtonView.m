@interface ButtonView
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)recognizedHover:(id)a3;
@end

@implementation ButtonView

- (void)recognizedHover:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220E328EC(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_220E32A78(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220E32C98(v4);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

@end