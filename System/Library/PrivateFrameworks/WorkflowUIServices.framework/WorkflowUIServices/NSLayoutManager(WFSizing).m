@interface NSLayoutManager(WFSizing)
- (double)wf_calculateIntrinsicHeightForWidth:()WFSizing textContainer:;
@end

@implementation NSLayoutManager(WFSizing)

- (double)wf_calculateIntrinsicHeightForWidth:()WFSizing textContainer:
{
  v6 = a4;
  v7 = [v6 widthTracksTextView];
  v8 = [v6 heightTracksTextView];
  [v6 size];
  v10 = v9;
  v12 = v11;
  [v6 setWidthTracksTextView:0];
  [v6 setHeightTracksTextView:0];
  [v6 setSize:{a2, 1.79769313e308}];
  [a1 ensureLayoutForTextContainer:v6];
  [a1 usedRectForTextContainer:v6];
  v14 = v13;
  v15 = [a1 glyphRangeForTextContainer:v6];
  [a1 boundingRectForGlyphRange:v15 inTextContainer:{v16, v6}];
  v21.size.height = v18 - v17;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v21.size.width = v14;
  v24.size.width = a2;
  v24.size.height = 1.79769313e308;
  v22 = CGRectIntersection(v21, v24);
  v23 = CGRectIntegral(v22);
  height = v23.size.height;
  [v6 setWidthTracksTextView:{v7, v23.origin.x, v23.origin.y, v23.size.width}];
  [v6 setHeightTracksTextView:v8];
  [v6 setSize:{v10, v12}];

  return height;
}

@end