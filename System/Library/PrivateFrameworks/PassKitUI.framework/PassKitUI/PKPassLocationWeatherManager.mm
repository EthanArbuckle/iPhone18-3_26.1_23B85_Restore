@interface PKPassLocationWeatherManager
- (PKPassLocationWeatherManager)init;
- (void)fetchWeatherDisplayInformationFor:(id)a3 at:(id)a4 completion:(id)a5;
@end

@implementation PKPassLocationWeatherManager

- (void)fetchWeatherDisplayInformationFor:(id)a3 at:(id)a4 completion:(id)a5
{
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_1BE04AEE4();
  _Block_copy(v13);
  v14 = a4;
  v15 = self;
  sub_1BD138BB0(v12, a4, v15, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (PKPassLocationWeatherManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PKPassLocationWeatherManager *)&v3 init];
}

@end