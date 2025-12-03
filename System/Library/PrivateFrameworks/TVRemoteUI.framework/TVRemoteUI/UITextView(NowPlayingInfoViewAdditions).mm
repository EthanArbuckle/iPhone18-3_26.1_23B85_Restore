@interface UITextView(NowPlayingInfoViewAdditions)
- (double)infoview_computedHeight;
@end

@implementation UITextView(NowPlayingInfoViewAdditions)

- (double)infoview_computedHeight
{
  [self textContainerInset];
  v3 = v2;
  v5 = v4;
  [self contentInset];
  v7 = v6;
  v9 = v8;
  [self frame];
  v10 = CGRectGetWidth(v21) - v3 - v5;
  textContainer = [self textContainer];
  [textContainer lineFragmentPadding];
  v13 = v10 + v12 * -2.0 - v7 - v9;

  attributedText = [self attributedText];
  [attributedText boundingRectWithSize:3 options:0 context:{v13, 1.79769313e308}];
  v16 = v15;

  [self textContainerInset];
  v18 = v16 + v17;
  [self textContainerInset];
  return ceil(v18 + v19);
}

@end