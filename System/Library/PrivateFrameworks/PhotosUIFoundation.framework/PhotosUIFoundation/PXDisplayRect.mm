@interface PXDisplayRect
- (BOOL)isEqual:(id)a3;
- (CGRect)rectInCoordinateSpace:(id)a3;
- (UICoordinateSpace)coordinateSpace;
- (id)copyWithZone:(void *)a3;
@end

@implementation PXDisplayRect

- (UICoordinateSpace)coordinateSpace
{
  v2 = self;
  v3 = sub_1B3FCB040();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1B405DAF4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = PXDisplayRect.isEqual(_:)(v8);

  sub_1B3F92F94(v8, &qword_1EB87C120);
  return v6 & 1;
}

- (CGRect)rectInCoordinateSpace:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B3FCB498(a3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)copyWithZone:(void *)a3
{
  sub_1B3FCB630(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_1B405DEB4();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

@end