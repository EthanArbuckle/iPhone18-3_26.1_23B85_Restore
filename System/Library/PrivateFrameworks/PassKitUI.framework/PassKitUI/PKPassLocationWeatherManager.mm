@interface PKPassLocationWeatherManager
- (PKPassLocationWeatherManager)init;
- (void)fetchWeatherDisplayInformationFor:(id)for at:(id)at completion:(id)completion;
@end

@implementation PKPassLocationWeatherManager

- (void)fetchWeatherDisplayInformationFor:(id)for at:(id)at completion:(id)completion
{
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  sub_1BE04AEE4();
  _Block_copy(v13);
  atCopy = at;
  selfCopy = self;
  sub_1BD138BB0(v12, at, selfCopy, v13);
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