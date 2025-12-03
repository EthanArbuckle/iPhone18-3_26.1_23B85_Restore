@interface VisualResponseProvider
+ (id)transformModel:(id)model mode:(int64_t)mode currentIdiom:(int64_t)idiom;
+ (void)preWarm:(id)warm;
+ (void)setPatternId:(id)id forViewId:(id)viewId;
- (id)viewControllerForModel:(id)model mode:(int64_t)mode;
- (id)viewControllerForSnippetModel:(id)model bundleName:(id)name mode:(int64_t)mode;
- (id)viewForModel:(id)model mode:(int64_t)mode overload:(int64_t)overload;
- (id)viewForSnippetModel:(id)model bundleName:(id)name mode:(int64_t)mode;
- (void)reset;
- (void)viewControllerFor:(id)for mode:(int64_t)mode completion:(id)completion;
@end

@implementation VisualResponseProvider

+ (void)setPatternId:(id)id forViewId:(id)viewId
{
  v4 = sub_26A8517B8();
  v6 = v5;
  v7 = sub_26A8517B8();
  static VisualResponseProvider.setPatternId(_:forViewId:)(v4, v6, v7, v8);
}

+ (void)preWarm:(id)warm
{
  warmCopy = warm;
  static VisualResponseProvider.preWarm(using:)();
}

- (id)viewControllerForModel:(id)model mode:(int64_t)mode
{
  modelCopy = model;
  selfCopy = self;
  sub_26A84ABF8();

  VisualResponseProvider.viewController(for:mode:)();
}

- (id)viewControllerForSnippetModel:(id)model bundleName:(id)name mode:(int64_t)mode
{
  modelCopy = model;
  nameCopy = name;
  selfCopy = self;
  sub_26A84ABF8();

  sub_26A8517B8();
  VisualResponseProvider.viewController(for:bundleName:mode:)();
}

- (id)viewForModel:(id)model mode:(int64_t)mode overload:(int64_t)overload
{
  modelCopy = model;
  selfCopy = self;
  v8 = sub_26A84ABF8();
  v10 = v9;

  VisualResponseProvider.view(for:mode:overload:)();
  v12 = v11;
  sub_26A513D40(v8, v10);

  return v12;
}

- (id)viewForSnippetModel:(id)model bundleName:(id)name mode:(int64_t)mode
{
  modelCopy = model;
  nameCopy = name;
  selfCopy = self;
  v10 = sub_26A84ABF8();
  v12 = v11;

  sub_26A8517B8();
  VisualResponseProvider.view(for:bundleName:mode:)();
  v14 = v13;

  sub_26A513D40(v10, v12);

  return v14;
}

- (void)viewControllerFor:(id)for mode:(int64_t)mode completion:(id)completion
{
  _Block_copy(completion);
  forCopy = for;
  selfCopy = self;
  sub_26A84ABF8();

  swift_allocObject();
  VisualResponseProvider.viewController(for:mode:completion:)();
}

- (void)reset
{
  selfCopy = self;
  VisualResponseProvider.reset()();
}

+ (id)transformModel:(id)model mode:(int64_t)mode currentIdiom:(int64_t)idiom
{
  modelCopy = model;
  v8 = sub_26A84ABF8();
  v10 = v9;

  swift_getObjCClassMetadata();
  v11 = static VisualResponseProvider.transformModel(_:mode:currentIdiom:)(v8, v10, mode, idiom);
  sub_26A513D40(v8, v10);
  if (v11)
  {
    sub_26A4EC5B0(0, &unk_2803B1CB0);
    v12 = sub_26A851A88();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end