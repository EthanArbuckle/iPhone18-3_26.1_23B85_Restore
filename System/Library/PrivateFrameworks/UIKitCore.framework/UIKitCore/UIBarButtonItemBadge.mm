@interface UIBarButtonItemBadge
+ (id)badgeWithCount:(int64_t)a3;
+ (id)indicatorBadge;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)stringValue;
- (UIBarButtonItemBadge)init;
- (UIBarButtonItemBadge)initWithCoder:(id)a3;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setFont:(id)a3;
- (void)setForegroundColor:(id)a3;
@end

@implementation UIBarButtonItemBadge

- (UIBarButtonItemBadge)init
{
  v2 = self + OBJC_IVAR___UIBarButtonItemBadge_backingBadge;
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 2;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  *(v2 + 3) = 0;
  v4.receiver = self;
  v4.super_class = UIBarButtonItemBadge;
  return [(UIBarButtonItemBadge *)&v4 init];
}

+ (id)badgeWithCount:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_189008694(a3);

  return v4;
}

+ (id)indicatorBadge
{
  swift_getObjCClassMetadata();
  v2 = _sSo18UIScrollEdgeEffectC5UIKitEABycfC_0();

  return v2;
}

- (NSString)stringValue
{
  if (!self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8])
  {
    sub_189007B7C();
    sub_18A4A7DD8();
    goto LABEL_5;
  }

  if (self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8] == 1)
  {

LABEL_5:
    v2 = sub_18A4A7258();

    goto LABEL_7;
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (void)setForegroundColor:(id)a3
{
  v4 = *&self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 16];
  *&self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 16] = a3;
  v3 = a3;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = *&self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24];
  *&self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24] = a3;
  v3 = a3;
}

- (void)setFont:(id)a3
{
  v4 = *&self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32];
  *&self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32] = a3;
  v3 = a3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = UIBarButtonItemBadge.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  UIBarButtonItemBadge.description.getter();

  v3 = sub_18A4A7258();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___UIBarButtonItemBadge_backingBadge);
  v4 = *&self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
  v5 = *&self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 16];
  v6 = *&self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24];
  v7 = *&self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32];
  v8 = self->backingBadge[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8];
  v9 = objc_allocWithZone(UIBarButtonItemBadge);
  sub_188EC22E0(v3, v4, v8);
  v10 = v7;
  v11 = v5;
  v12 = v6;
  v13 = [v9 init];
  v14 = &v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
  v15 = *&v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
  v16 = *&v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8];
  v17 = *&v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24];
  v18 = *&v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32];
  v21 = *&v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40];
  *v14 = v3;
  *(v14 + 1) = v4;
  LOBYTE(v3) = v14[16];
  v14[16] = v8;
  *(v14 + 3) = v5;
  *(v14 + 4) = v6;
  *(v14 + 5) = v7;
  v19 = v13;
  sub_188EC226C(v15, v16, v3);

  return v19;
}

- (UIBarButtonItemBadge)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_18900A0F4(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18900903C(v4);
}

@end