@interface SXStandaloneTextLayout
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (CGSize)adjustedInsets;
- (SXStandaloneTextLayoutDelegate)delegate;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6;
- (id)childInfosForLayout;
- (id)computeLayoutGeometry;
- (id)p_wpLayoutParent;
- (id)styleProviderForLayout:(id)a3;
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

  v12 = [(TSDAbstractLayout *)self children];
  v13 = [v12 lastObject];

  if (v13)
  {
    [v13 frame];
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
  v2 = [(TSDLayout *)self info];
  v3 = [v2 storage];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)a3
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

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
{
  height = a4.height;
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

- (id)styleProviderForLayout:(id)a3
{
  v4 = a3;
  v5 = [(SXStandaloneTextLayout *)self p_wpLayoutParent];
  v6 = [v5 styleProviderForLayout:v4];

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

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6
{
  if (a3)
  {
    v9 = [MEMORY[0x1E69D5768] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXStandaloneTextLayout positionForColumnIndex:bodyWidth:outWidth:outGap:]"];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXStandaloneTextLayout.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:121 description:@"unexpected column index"];
  }

  if (a5)
  {
    *a5 = a4;
  }

  if (a6)
  {
    *a6 = 0.0;
  }

  return 0.0;
}

- (id)p_wpLayoutParent
{
  v2 = [(TSDAbstractLayout *)self parent];
  v3 = TSUProtocolCast();

  return v3;
}

- (SXStandaloneTextLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end