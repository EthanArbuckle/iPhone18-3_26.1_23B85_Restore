@interface ProtoVisualResponseProvider
+ (id)transformModel:(id)a3 mode:(int64_t)a4 currentIdiom:(int64_t)a5;
+ (void)preWarm:(id)a3;
+ (void)setPatternId:(id)a3 forViewId:(id)a4;
- (id)viewControllerForModel:(id)a3 mode:(int64_t)a4;
- (id)viewForModel:(id)a3 mode:(int64_t)a4 overload:(int64_t)a5;
- (void)reset;
- (void)viewControllerFor:(id)a3 mode:(int64_t)a4 completion:(id)a5;
@end

@implementation ProtoVisualResponseProvider

+ (void)setPatternId:(id)a3 forViewId:(id)a4
{
  v4 = sub_26A930AFC();
  v6 = v5;
  v7 = sub_26A930AFC();
  static ProtoVisualResponseProvider.setPatternId(_:forViewId:)(v4, v6, v7, v8);
}

+ (void)preWarm:(id)a3
{
  v3 = a3;
  static ProtoVisualResponseProvider.preWarm(using:)(v3);
}

- (id)viewControllerForModel:(id)a3 mode:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_26A93086C();

  ProtoVisualResponseProvider.viewController(for:mode:)();
}

- (id)viewForModel:(id)a3 mode:(int64_t)a4 overload:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  v9 = sub_26A93086C();
  v11 = v10;

  v12 = ProtoVisualResponseProvider.view(for:mode:overload:)(v9, v11, a4);
  sub_26A92E0AC(v9, v11);

  return v12;
}

- (void)viewControllerFor:(id)a3 mode:(int64_t)a4 completion:(id)a5
{
  _Block_copy(a5);
  v7 = a3;
  v8 = self;
  sub_26A93086C();

  swift_allocObject();
  ProtoVisualResponseProvider.viewController(for:mode:completion:)();
}

- (void)reset
{
  v2 = self;
  ProtoVisualResponseProvider.reset()();
}

+ (id)transformModel:(id)a3 mode:(int64_t)a4 currentIdiom:(int64_t)a5
{
  v7 = a3;
  v8 = sub_26A93086C();
  v10 = v9;

  swift_getObjCClassMetadata();
  static ProtoVisualResponseProvider.transformModel(_:mode:currentIdiom:)(v8, v10, a4, a5);
  v12 = v11;
  sub_26A92E0AC(v8, v10);
  if (v12)
  {
    sub_26A92E37C(0, &unk_2803D3270, 0x277D63FB8);
    v13 = sub_26A930B4C();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end