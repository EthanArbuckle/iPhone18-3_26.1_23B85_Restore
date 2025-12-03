@interface UIDeduplicatorCompat
- (UIDeduplicatorCompat)init;
- (id)addElementsForScreenWithTargetScreenshot:(id)screenshot candidateElements:(id)elements screenGroupID:(id)d error:(id *)error;
- (id)identifyElementsWithScreenshot:(id)screenshot rectArray:(id)array error:(id *)error;
- (id)identifyScreenshotWithId:(id)id image:(CGImage *)image error:(id *)error;
- (void)setDebugTo:(BOOL)to;
@end

@implementation UIDeduplicatorCompat

- (id)identifyElementsWithScreenshot:(id)screenshot rectArray:(id)array error:(id *)error
{
  type metadata accessor for CGRect(0);
  v7 = sub_2702B41BC();
  screenshotCopy = screenshot;
  selfCopy = self;
  sub_2702715CC(screenshotCopy, v7);

  type metadata accessor for DedupeElement();
  v10 = sub_2702B41AC();

  return v10;
}

- (id)addElementsForScreenWithTargetScreenshot:(id)screenshot candidateElements:(id)elements screenGroupID:(id)d error:(id *)error
{
  type metadata accessor for DedupeElement();
  v9 = sub_2702B41BC();
  if (d)
  {
    sub_2702B402C();
  }

  screenshotCopy = screenshot;
  selfCopy = self;
  v12 = sub_270273D80(screenshotCopy, v9);

  return v12;
}

- (void)setDebugTo:(BOOL)to
{
  selfCopy = self;
  sub_2702730E0(to);
}

- (id)identifyScreenshotWithId:(id)id image:(CGImage *)image error:(id *)error
{
  v7 = sub_2702B402C();
  v9 = v8;
  imageCopy = image;
  selfCopy = self;
  v12 = sub_2702733A8(v7, v9, imageCopy);

  return v12;
}

- (UIDeduplicatorCompat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end