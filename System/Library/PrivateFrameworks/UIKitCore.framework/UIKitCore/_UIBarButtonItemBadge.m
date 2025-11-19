@interface _UIBarButtonItemBadge
+ (id)_badgeWithCount:(int64_t)a3;
+ (id)_indicatorBadge;
- (_UIBarButtonItemBadge)init;
- (_UIBarButtonItemBadge)initWithCoder:(id)a3;
@end

@implementation _UIBarButtonItemBadge

- (_UIBarButtonItemBadge)init
{
  v3.receiver = self;
  v3.super_class = _UIBarButtonItemBadge;
  return [(UIBarButtonItemBadge *)&v3 init];
}

+ (id)_badgeWithCount:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static _UIBarButtonItemBadge._badge(withCount:)(a3);

  return v4;
}

+ (id)_indicatorBadge
{
  swift_getObjCClassMetadata();
  v2 = j___sSo18UIScrollEdgeEffectC5UIKitEABycfC_0();

  return v2;
}

- (_UIBarButtonItemBadge)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIBarButtonItemBadge;
  v3 = a3;
  v4 = [(UIBarButtonItemBadge *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

@end