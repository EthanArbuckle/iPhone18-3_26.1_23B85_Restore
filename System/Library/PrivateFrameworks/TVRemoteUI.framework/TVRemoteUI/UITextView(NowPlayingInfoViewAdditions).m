@interface UITextView(NowPlayingInfoViewAdditions)
- (double)infoview_computedHeight;
@end

@implementation UITextView(NowPlayingInfoViewAdditions)

- (double)infoview_computedHeight
{
  [a1 textContainerInset];
  v3 = v2;
  v5 = v4;
  [a1 contentInset];
  v7 = v6;
  v9 = v8;
  [a1 frame];
  v10 = CGRectGetWidth(v21) - v3 - v5;
  v11 = [a1 textContainer];
  [v11 lineFragmentPadding];
  v13 = v10 + v12 * -2.0 - v7 - v9;

  v14 = [a1 attributedText];
  [v14 boundingRectWithSize:3 options:0 context:{v13, 1.79769313e308}];
  v16 = v15;

  [a1 textContainerInset];
  v18 = v16 + v17;
  [a1 textContainerInset];
  return ceil(v18 + v19);
}

@end