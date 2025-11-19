@interface WTSettingsDestination
+ (NSURL)rootURL;
- (WTSettingsDestination)init;
@end

@implementation WTSettingsDestination

+ (NSURL)rootURL
{
  v2 = sub_1D455563C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D45555CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x1E69A07D8], v2);
  sub_1D455562C();
  (*(v3 + 8))(v5, v2);
  v10 = sub_1D45555BC();
  (*(v7 + 8))(v9, v6);

  return v10;
}

- (WTSettingsDestination)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SettingsDestination();
  return [(WTSettingsDestination *)&v3 init];
}

@end