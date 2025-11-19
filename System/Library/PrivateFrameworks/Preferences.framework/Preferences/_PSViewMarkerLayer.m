@interface _PSViewMarkerLayer
- (CACornerRadii)customCornerRadii;
- (NSString)label;
- (NSString)subLabel;
- (_PSViewMarkerLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
- (void)removeLabelWithAlignment:(int64_t)a3;
- (void)setAlternateColor:(id)a3;
- (void)setCustomCornerRadii:(CACornerRadii *)a3;
- (void)setLabel:(id)a3;
- (void)setLabel:(id)a3 subLabel:(id)a4 withAlignment:(int64_t)a5;
- (void)setLabelAlignment:(int64_t)a3;
- (void)setSubLabel:(id)a3;
@end

@implementation _PSViewMarkerLayer

- (NSString)label
{

  v2 = sub_18B0F5180();

  return v2;
}

- (void)setLabel:(id)a3
{
  v4 = sub_18B0F51B0();
  v5 = (self + OBJC_IVAR____PSViewMarkerLayer_label);
  *v5 = v4;
  v5[1] = v6;
  v7 = self;

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

- (void)setSubLabel:(id)a3
{
  if (a3)
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
  v7 = self;

  sub_18B0EE270();
}

- (void)setAlternateColor:(id)a3
{
  v4 = *(self + OBJC_IVAR____PSViewMarkerLayer_alternateColor);
  *(self + OBJC_IVAR____PSViewMarkerLayer_alternateColor) = a3;
  v5 = a3;
  v6 = self;

  sub_18B0EE41C();
}

- (void)setLabelAlignment:(int64_t)a3
{
  v4 = self;
  sub_18B0EE6D8(a3);
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

- (void)setCustomCornerRadii:(CACornerRadii *)a3
{
  var1 = a3->var1;
  var0 = a3->var0;
  v10 = var1;
  var3 = a3->var3;
  var2 = a3->var2;
  v12 = var3;
  v8 = self;
  sub_18B0EEA04(&var0);
  v5 = (v8 + OBJC_IVAR____PSViewMarkerLayer_customCornerRadii);
  v6 = v10;
  *v5 = var0;
  v5[1] = v6;
  v7 = v12;
  v5[2] = var2;
  v5[3] = v7;
}

- (_PSViewMarkerLayer)initWithLayer:(id)a3
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
  v2 = self;
  sub_18B0EF7BC();
}

- (void)setLabel:(id)a3 subLabel:(id)a4 withAlignment:(int64_t)a5
{
  v8 = sub_18B0F51B0();
  v10 = v9;
  if (a4)
  {
    v11 = sub_18B0F51B0();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = self;
  sub_18B0EFD04(v8, v10, v11, a4, a5);
}

- (void)removeLabelWithAlignment:(int64_t)a3
{
  v4 = self;
  sub_18B0F03FC(a3);
}

@end