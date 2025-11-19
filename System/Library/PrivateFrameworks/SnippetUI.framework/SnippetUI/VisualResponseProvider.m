@interface VisualResponseProvider
+ (id)transformModel:(id)a3 mode:(int64_t)a4 currentIdiom:(int64_t)a5;
+ (void)preWarm:(id)a3;
+ (void)setPatternId:(id)a3 forViewId:(id)a4;
- (id)viewControllerForModel:(id)a3 mode:(int64_t)a4;
- (id)viewControllerForSnippetModel:(id)a3 bundleName:(id)a4 mode:(int64_t)a5;
- (id)viewForModel:(id)a3 mode:(int64_t)a4 overload:(int64_t)a5;
- (id)viewForSnippetModel:(id)a3 bundleName:(id)a4 mode:(int64_t)a5;
- (void)reset;
- (void)viewControllerFor:(id)a3 mode:(int64_t)a4 completion:(id)a5;
@end

@implementation VisualResponseProvider

+ (void)setPatternId:(id)a3 forViewId:(id)a4
{
  v4 = sub_26A8517B8();
  v6 = v5;
  v7 = sub_26A8517B8();
  static VisualResponseProvider.setPatternId(_:forViewId:)(v4, v6, v7, v8);
}

+ (void)preWarm:(id)a3
{
  v3 = a3;
  static VisualResponseProvider.preWarm(using:)();
}

- (id)viewControllerForModel:(id)a3 mode:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_26A84ABF8();

  VisualResponseProvider.viewController(for:mode:)();
}

- (id)viewControllerForSnippetModel:(id)a3 bundleName:(id)a4 mode:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_26A84ABF8();

  sub_26A8517B8();
  VisualResponseProvider.viewController(for:bundleName:mode:)();
}

- (id)viewForModel:(id)a3 mode:(int64_t)a4 overload:(int64_t)a5
{
  v6 = a3;
  v7 = self;
  v8 = sub_26A84ABF8();
  v10 = v9;

  VisualResponseProvider.view(for:mode:overload:)();
  v12 = v11;
  sub_26A513D40(v8, v10);

  return v12;
}

- (id)viewForSnippetModel:(id)a3 bundleName:(id)a4 mode:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_26A84ABF8();
  v12 = v11;

  sub_26A8517B8();
  VisualResponseProvider.view(for:bundleName:mode:)();
  v14 = v13;

  sub_26A513D40(v10, v12);

  return v14;
}

- (void)viewControllerFor:(id)a3 mode:(int64_t)a4 completion:(id)a5
{
  _Block_copy(a5);
  v7 = a3;
  v8 = self;
  sub_26A84ABF8();

  swift_allocObject();
  VisualResponseProvider.viewController(for:mode:completion:)();
}

- (void)reset
{
  v2 = self;
  VisualResponseProvider.reset()();
}

+ (id)transformModel:(id)a3 mode:(int64_t)a4 currentIdiom:(int64_t)a5
{
  v7 = a3;
  v8 = sub_26A84ABF8();
  v10 = v9;

  swift_getObjCClassMetadata();
  v11 = static VisualResponseProvider.transformModel(_:mode:currentIdiom:)(v8, v10, a4, a5);
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