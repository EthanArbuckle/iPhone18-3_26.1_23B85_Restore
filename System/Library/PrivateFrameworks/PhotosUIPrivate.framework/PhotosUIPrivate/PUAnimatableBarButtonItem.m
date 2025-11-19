@interface PUAnimatableBarButtonItem
+ (id)barButtonItemWithSystemImageName:(id)a3;
- (NSString)currentImageName;
- (void)addTarget:(id)a3 action:(SEL)a4 for:(unint64_t)a5;
- (void)setCurrentImageName:(id)a3;
@end

@implementation PUAnimatableBarButtonItem

- (NSString)currentImageName
{
  sub_1B38417B8();
  if (v2)
  {
    v3 = sub_1B3C9C5A8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCurrentImageName:(id)a3
{
  if (a3)
  {
    v4 = sub_1B3C9C5E8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1B3841874(v4, v6);
}

+ (id)barButtonItemWithSystemImageName:(id)a3
{
  v3 = sub_1B3C9C5E8();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_1B3841890(v3, v5);

  return v6;
}

- (void)addTarget:(id)a3 action:(SEL)a4 for:(unint64_t)a5
{
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = self;
  }

  sub_1B3842DB4(v10, a4, a5);

  sub_1B36FA490(v10);
}

@end