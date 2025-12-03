@interface PUAnimatableBarButtonItem
+ (id)barButtonItemWithSystemImageName:(id)name;
- (NSString)currentImageName;
- (void)addTarget:(id)target action:(SEL)action for:(unint64_t)for;
- (void)setCurrentImageName:(id)name;
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

- (void)setCurrentImageName:(id)name
{
  if (name)
  {
    v4 = sub_1B3C9C5E8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1B3841874(v4, v6);
}

+ (id)barButtonItemWithSystemImageName:(id)name
{
  v3 = sub_1B3C9C5E8();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_1B3841890(v3, v5);

  return v6;
}

- (void)addTarget:(id)target action:(SEL)action for:(unint64_t)for
{
  if (target)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  sub_1B3842DB4(v10, action, for);

  sub_1B36FA490(v10);
}

@end