@interface Context
- (VRXInteractionDelegate)interactionDelegate;
- (double)snippetWidth;
- (int64_t)backgroundMaterial;
- (void)setBackgroundMaterial:(int64_t)a3;
- (void)setCurrentIdiom:(int64_t)a3;
- (void)setInteractionDelegate:(id)a3;
- (void)setSnippetWidth:(double)a3;
@end

@implementation Context

- (void)setCurrentIdiom:(int64_t)a3
{
  v4 = self;
  sub_26A61D238(a3);
}

- (double)snippetWidth
{
  v2 = self;
  v3 = sub_26A61D870();

  return v3;
}

- (void)setSnippetWidth:(double)a3
{
  v5 = self;
  v4.n128_f64[0] = a3;
  sub_26A61D934(v4);
}

- (VRXInteractionDelegate)interactionDelegate
{
  v2 = sub_26A61DC9C();

  return v2;
}

- (void)setInteractionDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_26A61DD38();
}

- (int64_t)backgroundMaterial
{
  v2 = self;
  v3 = sub_26A61E03C();

  return v3;
}

- (void)setBackgroundMaterial:(int64_t)a3
{
  v3 = a3;
  v4 = self;
  sub_26A61E0FC(v3);
}

@end