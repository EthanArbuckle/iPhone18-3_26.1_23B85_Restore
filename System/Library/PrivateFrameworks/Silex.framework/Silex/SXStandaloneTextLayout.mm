@interface SXStandaloneTextLayout
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGSize)adjustedInsets;
- (SXStandaloneTextLayoutDelegate)delegate;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap;
- (id)childInfosForLayout;
- (id)computeLayoutGeometry;
- (id)p_wpLayoutParent;
- (id)styleProviderForLayout:(id)layout;
@end

@implementation SXStandaloneTextLayout

- (id)computeLayoutGeometry
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained positionForTextLayout:self];
  v5 = v4;

  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 marginForTextLayout:self];
  v8 = v7;

  v9 = objc_loadWeakRetained(&self->_delegate);
  [v9 widthForTextLayout:self];
  v11 = v10;

  children = [(TSDAbstractLayout *)self children];
  lastObject = [children lastObject];

  if (lastObject)
  {
    [lastObject frame];
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = [objc_alloc(MEMORY[0x1E69D5668]) initWithFrame:{v8, v5, v11 + v8 * -2.0, v15}];

  return v16;
}

- (id)childInfosForLayout
{
  v6[1] = *MEMORY[0x1E69E9840];
  info = [(TSDLayout *)self info];
  storage = [info storage];
  v6[0] = storage;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  height = size.height;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained marginForTextLayout:self];
  v8 = v7;

  v9 = objc_loadWeakRetained(&self->_delegate);
  [v9 widthForTextLayout:self];
  v11 = v10 + v8 * -2.0;

  v12 = 0.0;
  v13 = 0.0;
  v14 = v11;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)styleProviderForLayout:(id)layout
{
  layoutCopy = layout;
  p_wpLayoutParent = [(SXStandaloneTextLayout *)self p_wpLayoutParent];
  v6 = [p_wpLayoutParent styleProviderForLayout:layoutCopy];

  return v6;
}

- (CGSize)adjustedInsets
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap
{
  if (index)
  {
    currentHandler = [MEMORY[0x1E69D5768] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXStandaloneTextLayout positionForColumnIndex:bodyWidth:outWidth:outGap:]"];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXStandaloneTextLayout.m"];
    [currentHandler handleFailureInFunction:v10 file:v11 lineNumber:121 description:@"unexpected column index"];
  }

  if (outWidth)
  {
    *outWidth = width;
  }

  if (gap)
  {
    *gap = 0.0;
  }

  return 0.0;
}

- (id)p_wpLayoutParent
{
  parent = [(TSDAbstractLayout *)self parent];
  v3 = TSUProtocolCast();

  return v3;
}

- (SXStandaloneTextLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end