@interface UIKBRenderFactory10Key_Portrait
- (CGPoint)dictationKeyTextOffset;
- (CGPoint)globeKeyTextOffset;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (id)multitapCompleteKeyImageName;
- (id)muttitapReverseKeyImageName;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactory10Key_Portrait

- (UIEdgeInsets)wideShadowPaddleInsets
{
  v2 = 18.0;
  v3 = 6.0;
  v4 = 28.0;
  v5 = 6.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)multitapCompleteKeyImageName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @"bold_kana_multitap_complete_arrow.png";
  }

  else
  {
    v2 = @"kana_multitap_complete_arrow.png";
  }

  return v2;
}

- (id)muttitapReverseKeyImageName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @"bold_kana_multitap_reverse_arrow.png";
  }

  else
  {
    v2 = @"kana_multitap_reverse_arrow.png";
  }

  return v2;
}

- (CGPoint)globeKeyTextOffset
{
  v2 = 0.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dictationKeyTextOffset
{
  v2 = 0.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setupLayoutSegments
{
  [(UIKBRenderFactory10Key_Portrait *)self controlColumnWidthFactor];

  [(UIKBRenderFactory10Key *)self setupColumnLayoutSegmentsWithControlWidth:?];
}

@end