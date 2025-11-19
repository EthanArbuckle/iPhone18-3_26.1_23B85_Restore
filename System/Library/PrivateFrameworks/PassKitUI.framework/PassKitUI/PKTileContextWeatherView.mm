@interface PKTileContextWeatherView
+ (id)createWithWeatherInformation:(id)a3;
- (PKTileContextWeatherView)init;
@end

@implementation PKTileContextWeatherView

+ (id)createWithWeatherInformation:(id)a3
{
  v4 = type metadata accessor for TileContextWeatherView();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - v10;
  *(&v17 - v10) = a3;
  v13 = *(v12 + 28);
  *&v11[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD483C8));
  sub_1BD4E70A4(v11, v7);
  v14 = a3;
  v15 = sub_1BE04EAC4();
  sub_1BD4E7108(v11);
  [v15 setUserInteractionEnabled_];

  return v15;
}

- (PKTileContextWeatherView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TileContextWeatherViewHost();
  return [(PKTileContextWeatherView *)&v3 init];
}

@end