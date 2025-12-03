@interface _PSViewMarkerLayer
- (CACornerRadii)customCornerRadii;
- (NSString)label;
- (NSString)subLabel;
- (_PSViewMarkerLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
- (void)removeLabelWithAlignment:(int64_t)alignment;
- (void)setAlternateColor:(id)color;
- (void)setCustomCornerRadii:(CACornerRadii *)radii;
- (void)setLabel:(id)label;
- (void)setLabel:(id)label subLabel:(id)subLabel withAlignment:(int64_t)alignment;
- (void)setLabelAlignment:(int64_t)alignment;
- (void)setSubLabel:(id)label;
@end

@implementation _PSViewMarkerLayer

- (NSString)label
{

  v2 = sub_18B0F5180();

  return v2;
}

- (void)setLabel:(id)label
{
  v4 = sub_18B0F51B0();
  v5 = (self + OBJC_IVAR____PSViewMarkerLayer_label);
  *v5 = v4;
  v5[1] = v6;
  selfCopy = self;

  sub_18B0EE080();
}

- (NSString)subLabel
{
  if (*(self + OBJC_IVAR____PSViewMarkerLayer_subLabel + 8))
  {

    v2 = sub_18B0F5180();
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
    v4 = sub_18B0F51B0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____PSViewMarkerLayer_subLabel);
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;

  sub_18B0EE270();
}

- (void)setAlternateColor:(id)color
{
  v4 = *(self + OBJC_IVAR____PSViewMarkerLayer_alternateColor);
  *(self + OBJC_IVAR____PSViewMarkerLayer_alternateColor) = color;
  colorCopy = color;
  selfCopy = self;

  sub_18B0EE41C();
}

- (void)setLabelAlignment:(int64_t)alignment
{
  selfCopy = self;
  sub_18B0EE6D8(alignment);
}

- (CACornerRadii)customCornerRadii
{
  v3 = self + OBJC_IVAR____PSViewMarkerLayer_customCornerRadii;
  v4 = *(&self->var1 + OBJC_IVAR____PSViewMarkerLayer_customCornerRadii);
  retstr->var0 = *(&self->var0 + OBJC_IVAR____PSViewMarkerLayer_customCornerRadii);
  retstr->var1 = v4;
  v5 = *(v3 + 3);
  retstr->var2 = *(v3 + 2);
  retstr->var3 = v5;
  return self;
}

- (void)setCustomCornerRadii:(CACornerRadii *)radii
{
  var1 = radii->var1;
  var0 = radii->var0;
  v10 = var1;
  var3 = radii->var3;
  var2 = radii->var2;
  v12 = var3;
  selfCopy = self;
  sub_18B0EEA04(&var0);
  v5 = (selfCopy + OBJC_IVAR____PSViewMarkerLayer_customCornerRadii);
  v6 = v10;
  *v5 = var0;
  v5[1] = v6;
  v7 = v12;
  v5[2] = var2;
  v5[3] = v7;
}

- (_PSViewMarkerLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_18B0F52A0();
  swift_unknownObjectRelease();
  v4 = [(_PSViewMarkerLayer *)self init];
  __swift_destroy_boxed_opaque_existential_0(&v6);
  return v4;
}

- (void)layoutSublayers
{
  selfCopy = self;
  sub_18B0EF7BC();
}

- (void)setLabel:(id)label subLabel:(id)subLabel withAlignment:(int64_t)alignment
{
  v8 = sub_18B0F51B0();
  v10 = v9;
  if (subLabel)
  {
    v11 = sub_18B0F51B0();
    subLabel = v12;
  }

  else
  {
    v11 = 0;
  }

  selfCopy = self;
  sub_18B0EFD04(v8, v10, v11, subLabel, alignment);
}

- (void)removeLabelWithAlignment:(int64_t)alignment
{
  selfCopy = self;
  sub_18B0F03FC(alignment);
}

@end