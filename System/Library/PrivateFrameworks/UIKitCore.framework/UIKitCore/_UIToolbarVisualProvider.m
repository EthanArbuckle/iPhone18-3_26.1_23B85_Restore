@interface _UIToolbarVisualProvider
- (CGRect)backgroundFrame;
- (CGSize)defaultSizeForOrientation:(int64_t)a3;
- (NSDirectionalEdgeInsets)contentViewMargins;
- (_UIToolbarVisualProvider)initWithToolbar:(id)a3;
@end

@implementation _UIToolbarVisualProvider

- (_UIToolbarVisualProvider)initWithToolbar:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIToolbarVisualProvider;
  result = [(_UIToolbarVisualProvider *)&v5 init];
  if (result)
  {
    result->_toolbar = a3;
  }

  return result;
}

- (CGRect)backgroundFrame
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)defaultSizeForOrientation:(int64_t)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (NSDirectionalEdgeInsets)contentViewMargins
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

@end