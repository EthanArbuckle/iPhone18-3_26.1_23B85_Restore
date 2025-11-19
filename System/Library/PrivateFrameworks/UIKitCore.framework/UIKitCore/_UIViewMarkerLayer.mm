@interface _UIViewMarkerLayer
- (NSString)label;
- (NSString)subLabel;
- (_UIViewMarkerLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
- (void)removeLabelWithAlignment:(int64_t)a3;
- (void)setAlternateColor:(id)a3;
- (void)setLabel:(id)a3;
- (void)setLabel:(id)a3 subLabel:(id)a4 withAlignment:(int64_t)a5;
- (void)setLabelAlignment:(int64_t)a3;
- (void)setSubLabel:(id)a3;
@end

@implementation _UIViewMarkerLayer

- (NSString)label
{

  v2 = sub_18A4A7258();

  return v2;
}

- (void)setLabel:(id)a3
{
  v4 = sub_18A4A7288();
  v5 = (self + OBJC_IVAR____UIViewMarkerLayer_label);
  *v5 = v4;
  v5[1] = v6;
  v7 = self;

  sub_1891804F8();
}

- (NSString)subLabel
{
  if (*(self + OBJC_IVAR____UIViewMarkerLayer_subLabel + 8))
  {

    v2 = sub_18A4A7258();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setSubLabel:(id)a3
{
  if (a3)
  {
    v4 = sub_18A4A7288();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____UIViewMarkerLayer_subLabel);
  *v6 = v4;
  v6[1] = v5;
  v7 = self;

  sub_1891806E8();
}

- (void)setAlternateColor:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIViewMarkerLayer_alternateColor);
  *(self + OBJC_IVAR____UIViewMarkerLayer_alternateColor) = a3;
  v5 = a3;
  v6 = self;

  sub_189180894();
}

- (void)setLabelAlignment:(int64_t)a3
{
  v4 = self;
  sub_189180B50(a3);
}

- (_UIViewMarkerLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4 = [(_UIViewMarkerLayer *)self init];
  __swift_destroy_boxed_opaque_existential_0Tm(&v6);
  return v4;
}

- (void)layoutSublayers
{
  v2 = self;
  sub_1891818BC();
}

- (void)setLabel:(id)a3 subLabel:(id)a4 withAlignment:(int64_t)a5
{
  v8 = sub_18A4A7288();
  v10 = v9;
  if (a4)
  {
    v11 = sub_18A4A7288();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = self;
  sub_189181D14(v8, v10, v11, a4, a5);
}

- (void)removeLabelWithAlignment:(int64_t)a3
{
  v4 = self;
  sub_1891823F0(a3);
}

@end