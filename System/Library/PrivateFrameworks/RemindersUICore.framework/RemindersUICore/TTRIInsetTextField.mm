@interface TTRIInsetTextField
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (_TtC15RemindersUICore18TTRIInsetTextField)initWithCoder:(id)coder;
- (_TtC15RemindersUICore18TTRIInsetTextField)initWithFrame:(CGRect)frame;
- (double)horizontalInset;
- (double)verticalInset;
- (void)setHorizontalInset:(double)inset;
- (void)setVerticalInset:(double)inset;
@end

@implementation TTRIInsetTextField

- (double)horizontalInset
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setHorizontalInset:(double)inset
{
  v5 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = inset;
}

- (double)verticalInset
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_verticalInset;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setVerticalInset:(double)inset
{
  v5 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_verticalInset;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = inset;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  v3 = sub_21D3FF130(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, &selRef_textRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  v3 = sub_21D3FF130(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, &selRef_editingRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  v3 = sub_21D3FF130(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, &selRef_placeholderRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v21.receiver = self;
  v21.super_class = swift_getObjectType();
  v7 = v21.receiver;
  [(TTRIInsetTextField *)&v21 clearButtonRectForBounds:x, y, width, height];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MaxX = CGRectGetMaxX(v22);
  v15 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset;
  swift_beginAccess();
  v16 = *&v7[v15];

  v17 = MaxX - (v11 + v16);
  v18 = v9;
  v19 = v11;
  v20 = v13;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (_TtC15RemindersUICore18TTRIInsetTextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_verticalInset) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(TTRITextField *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore18TTRIInsetTextField)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_verticalInset) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(TTRITextField *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end