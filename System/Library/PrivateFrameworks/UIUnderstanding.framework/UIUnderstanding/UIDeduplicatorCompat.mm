@interface UIDeduplicatorCompat
- (UIDeduplicatorCompat)init;
- (id)addElementsForScreenWithTargetScreenshot:(id)a3 candidateElements:(id)a4 screenGroupID:(id)a5 error:(id *)a6;
- (id)identifyElementsWithScreenshot:(id)a3 rectArray:(id)a4 error:(id *)a5;
- (id)identifyScreenshotWithId:(id)a3 image:(CGImage *)a4 error:(id *)a5;
- (void)setDebugTo:(BOOL)a3;
@end

@implementation UIDeduplicatorCompat

- (id)identifyElementsWithScreenshot:(id)a3 rectArray:(id)a4 error:(id *)a5
{
  type metadata accessor for CGRect(0);
  v7 = sub_2702B41BC();
  v8 = a3;
  v9 = self;
  sub_2702715CC(v8, v7);

  type metadata accessor for DedupeElement();
  v10 = sub_2702B41AC();

  return v10;
}

- (id)addElementsForScreenWithTargetScreenshot:(id)a3 candidateElements:(id)a4 screenGroupID:(id)a5 error:(id *)a6
{
  type metadata accessor for DedupeElement();
  v9 = sub_2702B41BC();
  if (a5)
  {
    sub_2702B402C();
  }

  v10 = a3;
  v11 = self;
  v12 = sub_270273D80(v10, v9);

  return v12;
}

- (void)setDebugTo:(BOOL)a3
{
  v4 = self;
  sub_2702730E0(a3);
}

- (id)identifyScreenshotWithId:(id)a3 image:(CGImage *)a4 error:(id *)a5
{
  v7 = sub_2702B402C();
  v9 = v8;
  v10 = a4;
  v11 = self;
  v12 = sub_2702733A8(v7, v9, v10);

  return v12;
}

- (UIDeduplicatorCompat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end