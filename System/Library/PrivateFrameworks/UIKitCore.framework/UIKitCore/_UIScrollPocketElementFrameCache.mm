@interface _UIScrollPocketElementFrameCache
- (CGRect)getValueForCoordinateSpace:(id)a3;
- (_UIScrollPocketElementFrameCache)init;
- (void)invalidate;
- (void)putValue:(CGRect)a3 forCoordinateSpace:(id)a4;
@end

@implementation _UIScrollPocketElementFrameCache

- (_UIScrollPocketElementFrameCache)init
{
  *(&self->super.isa + OBJC_IVAR____UIScrollPocketElementFrameCache_storage) = sub_188E8F044(MEMORY[0x1E69E7CC0]);
  v4.receiver = self;
  v4.super_class = _UIScrollPocketElementFrameCache;
  return [(_UIScrollPocketElementFrameCache *)&v4 init];
}

- (CGRect)getValueForCoordinateSpace:(id)a3
{
  v3 = sub_18903568C(a3);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)putValue:(CGRect)a3 forCoordinateSpace:(id)a4
{
  width = a3.size.width;
  height = a3.size.height;
  x = a3.origin.x;
  y = a3.origin.y;
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  v9 = a4;
  v10 = self;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v23.origin.x = v5;
  v23.origin.y = v6;
  v23.size.width = v7;
  v23.size.height = v8;
  v11 = CGRectEqualToRect(v22, v23);
  *v12.i64 = x;
  *&v12.i64[1] = y;
  *v13.i64 = width;
  *&v13.i64[1] = height;
  if (v11)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  v15 = vdupq_n_s64(v14);
  v20[0] = vbicq_s8(v12, v15);
  v20[1] = vbicq_s8(v13, v15);
  v21 = v11;
  swift_beginAccess();
  sub_188F28E1C(v20, v9);
  swift_endAccess();
}

- (void)invalidate
{
  v3 = OBJC_IVAR____UIScrollPocketElementFrameCache_storage;
  swift_beginAccess();
  *(&self->super.isa + v3) = MEMORY[0x1E69E7CC8];
}

@end