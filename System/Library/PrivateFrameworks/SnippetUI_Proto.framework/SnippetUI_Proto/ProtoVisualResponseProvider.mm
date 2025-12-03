@interface ProtoVisualResponseProvider
+ (id)transformModel:(id)model mode:(int64_t)mode currentIdiom:(int64_t)idiom;
+ (void)preWarm:(id)warm;
+ (void)setPatternId:(id)id forViewId:(id)viewId;
- (id)viewControllerForModel:(id)model mode:(int64_t)mode;
- (id)viewForModel:(id)model mode:(int64_t)mode overload:(int64_t)overload;
- (void)reset;
- (void)viewControllerFor:(id)for mode:(int64_t)mode completion:(id)completion;
@end

@implementation ProtoVisualResponseProvider

+ (void)setPatternId:(id)id forViewId:(id)viewId
{
  v4 = sub_26A930AFC();
  v6 = v5;
  v7 = sub_26A930AFC();
  static ProtoVisualResponseProvider.setPatternId(_:forViewId:)(v4, v6, v7, v8);
}

+ (void)preWarm:(id)warm
{
  warmCopy = warm;
  static ProtoVisualResponseProvider.preWarm(using:)(warmCopy);
}

- (id)viewControllerForModel:(id)model mode:(int64_t)mode
{
  modelCopy = model;
  selfCopy = self;
  sub_26A93086C();

  ProtoVisualResponseProvider.viewController(for:mode:)();
}

- (id)viewForModel:(id)model mode:(int64_t)mode overload:(int64_t)overload
{
  modelCopy = model;
  selfCopy = self;
  v9 = sub_26A93086C();
  v11 = v10;

  v12 = ProtoVisualResponseProvider.view(for:mode:overload:)(v9, v11, mode);
  sub_26A92E0AC(v9, v11);

  return v12;
}

- (void)viewControllerFor:(id)for mode:(int64_t)mode completion:(id)completion
{
  _Block_copy(completion);
  forCopy = for;
  selfCopy = self;
  sub_26A93086C();

  swift_allocObject();
  ProtoVisualResponseProvider.viewController(for:mode:completion:)();
}

- (void)reset
{
  selfCopy = self;
  ProtoVisualResponseProvider.reset()();
}

+ (id)transformModel:(id)model mode:(int64_t)mode currentIdiom:(int64_t)idiom
{
  modelCopy = model;
  v8 = sub_26A93086C();
  v10 = v9;

  swift_getObjCClassMetadata();
  static ProtoVisualResponseProvider.transformModel(_:mode:currentIdiom:)(v8, v10, mode, idiom);
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