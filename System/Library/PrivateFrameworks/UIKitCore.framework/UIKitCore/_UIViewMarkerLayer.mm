@interface _UIViewMarkerLayer
- (NSString)label;
- (NSString)subLabel;
- (_UIViewMarkerLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
- (void)removeLabelWithAlignment:(int64_t)alignment;
- (void)setAlternateColor:(id)color;
- (void)setLabel:(id)label;
- (void)setLabel:(id)label subLabel:(id)subLabel withAlignment:(int64_t)alignment;
- (void)setLabelAlignment:(int64_t)alignment;
- (void)setSubLabel:(id)label;
@end

@implementation _UIViewMarkerLayer

- (NSString)label
{

  v2 = sub_18A4A7258();

  return v2;
}

- (void)setLabel:(id)label
{
  v4 = sub_18A4A7288();
  v5 = (self + OBJC_IVAR____UIViewMarkerLayer_label);
  *v5 = v4;
  v5[1] = v6;
  selfCopy = self;

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

- (void)setSubLabel:(id)label
{
  if (label)
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
  selfCopy = self;

  sub_1891806E8();
}

- (void)setAlternateColor:(id)color
{
  v4 = *(self + OBJC_IVAR____UIViewMarkerLayer_alternateColor);
  *(self + OBJC_IVAR____UIViewMarkerLayer_alternateColor) = color;
  colorCopy = color;
  selfCopy = self;

  sub_189180894();
}

- (void)setLabelAlignment:(int64_t)alignment
{
  selfCopy = self;
  sub_189180B50(alignment);
}

- (_UIViewMarkerLayer)initWithLayer:(id)layer
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
  selfCopy = self;
  sub_1891818BC();
}

- (void)setLabel:(id)label subLabel:(id)subLabel withAlignment:(int64_t)alignment
{
  v8 = sub_18A4A7288();
  v10 = v9;
  if (subLabel)
  {
    v11 = sub_18A4A7288();
    subLabel = v12;
  }

  else
  {
    v11 = 0;
  }

  selfCopy = self;
  sub_189181D14(v8, v10, v11, subLabel, alignment);
}

- (void)removeLabelWithAlignment:(int64_t)alignment
{
  selfCopy = self;
  sub_1891823F0(alignment);
}

@end