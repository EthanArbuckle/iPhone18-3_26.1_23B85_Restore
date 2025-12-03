@interface PKTileContextFindMyView
+ (id)createWithEventName:(id)name;
- (PKTileContextFindMyView)init;
@end

@implementation PKTileContextFindMyView

+ (id)createWithEventName:(id)name
{
  if (name)
  {
    sub_1BE052434();
  }

  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B798));
  v4 = sub_1BE04EAC4();

  return v4;
}

- (PKTileContextFindMyView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TileContextFindMyViewHost();
  return [(PKTileContextFindMyView *)&v3 init];
}

@end