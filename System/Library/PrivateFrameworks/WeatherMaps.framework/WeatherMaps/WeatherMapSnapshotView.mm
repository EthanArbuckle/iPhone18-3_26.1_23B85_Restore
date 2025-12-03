@interface WeatherMapSnapshotView
- (void)darkerSystemColorsStatusDidChange:(id)change;
- (void)layoutSubviews;
@end

@implementation WeatherMapSnapshotView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_220E50828();
}

- (void)darkerSystemColorsStatusDidChange:(id)change
{
  v4 = sub_220FBFDC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FBFD90();
  selfCopy = self;
  sub_220E55240(v8);

  (*(v5 + 8))(v8, v4);
}

@end