@interface TVFocusableCollectionViewCell
- (_TtC9SeymourUI29TVFocusableCollectionViewCell)initWithCoder:(id)a3;
- (_TtC9SeymourUI29TVFocusableCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation TVFocusableCollectionViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVFocusableCollectionViewCell();
  v2 = v3.receiver;
  [(TVFocusableCollectionViewCell *)&v3 prepareForReuse];
  (*((*MEMORY[0x277D85000] & *v2) + 0x78))(0, 0);
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  sub_20B51C88C(0, &qword_27C764588);
  sub_20B9E0F28();
  v6 = sub_20C13CF74();
  v7 = a4;
  v10 = self;
  if ((sub_20B9E0E84(v6) & 1) != 0 && (v8 = *(&v10->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState), (v8 & 8) != 0))
  {

    (*((*MEMORY[0x277D85000] & v10->super.super.super.super.super.isa) + 0x78))(v8 | 1, 1);
  }

  else
  {
    v9 = sub_20C13CF64();

    v11.receiver = v10;
    v11.super_class = type metadata accessor for TVFocusableCollectionViewCell();
    [(TVFocusableCollectionViewCell *)&v11 pressesBegan:v9 withEvent:v7];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20BBAFCC8(v6, v7);
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4
{
  v7 = (*((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x70))();
  v8 = a4;
  v9 = self;
  v10 = [v7 _preferredConfigurationForFocusAnimation_inContext_];

  return v10;
}

- (_TtC9SeymourUI29TVFocusableCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TVFocusableCollectionViewCell();
  return [(TVFocusableCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI29TVFocusableCollectionViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TVFocusableCollectionViewCell();
  v4 = a3;
  v5 = [(TVFocusableCollectionViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end