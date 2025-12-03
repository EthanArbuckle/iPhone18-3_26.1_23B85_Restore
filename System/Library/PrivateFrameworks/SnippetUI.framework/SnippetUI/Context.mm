@interface Context
- (VRXInteractionDelegate)interactionDelegate;
- (double)snippetWidth;
- (int64_t)backgroundMaterial;
- (void)setBackgroundMaterial:(int64_t)material;
- (void)setCurrentIdiom:(int64_t)idiom;
- (void)setInteractionDelegate:(id)delegate;
- (void)setSnippetWidth:(double)width;
@end

@implementation Context

- (void)setCurrentIdiom:(int64_t)idiom
{
  selfCopy = self;
  sub_26A61D238(idiom);
}

- (double)snippetWidth
{
  selfCopy = self;
  v3 = sub_26A61D870();

  return v3;
}

- (void)setSnippetWidth:(double)width
{
  selfCopy = self;
  v4.n128_f64[0] = width;
  sub_26A61D934(v4);
}

- (VRXInteractionDelegate)interactionDelegate
{
  v2 = sub_26A61DC9C();

  return v2;
}

- (void)setInteractionDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_26A61DD38();
}

- (int64_t)backgroundMaterial
{
  selfCopy = self;
  v3 = sub_26A61E03C();

  return v3;
}

- (void)setBackgroundMaterial:(int64_t)material
{
  materialCopy = material;
  selfCopy = self;
  sub_26A61E0FC(materialCopy);
}

@end