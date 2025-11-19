@interface PXAppIntentsEngagementCompatibility
+ (void)donateSearchEvent;
- (_TtC12PhotosUICore35PXAppIntentsEngagementCompatibility)init;
@end

@implementation PXAppIntentsEngagementCompatibility

+ (void)donateSearchEvent
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524CC94();
  v5 = sub_1A524CCB4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_1A3DCD53C(0, 0, v4, &unk_1A5357B58, v6);

  sub_1A3D97040(v4);
}

- (_TtC12PhotosUICore35PXAppIntentsEngagementCompatibility)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXAppIntentsEngagementCompatibility();
  return [(PXAppIntentsEngagementCompatibility *)&v3 init];
}

@end