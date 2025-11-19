@interface SXTextTangierLayout
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (CGSize)adjustedInsets;
- (CGSize)initialTextSize;
- (Class)repClassForTextLayout:(id)a3;
- (id)textWrapperForExteriorWrap;
- (void)invalidate;
@end

@implementation SXTextTangierLayout

- (Class)repClassForTextLayout:(id)a3
{
  v3 = objc_opt_class();

  return v3;
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
  width = a4.width;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGSize)initialTextSize
{
  v2 = [(TSDLayout *)self info];
  v3 = [v2 geometry];
  [v3 size];
  v5 = v4;

  v6 = 10000000.0;
  v7 = v5;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)invalidate
{
  v16.receiver = self;
  v16.super_class = SXTextTangierLayout;
  [(TSDLayout *)&v16 invalidate];
  [(SXTextTangierLayout *)self setTextWrapper:0];
  v3 = [(TSDAbstractLayout *)self children];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(TSDAbstractLayout *)self children];
    v6 = [v5 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v8 = [MEMORY[0x1E69D5768] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierLayout invalidate]"];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierLayout.mm"];
      [v8 handleFailureInFunction:v9 file:v10 lineNumber:77 description:@"TSWPLayout expected here"];
    }

    objc_opt_class();
    v11 = [(TSDAbstractLayout *)self children];
    v12 = [v11 firstObject];
    v13 = TSUDynamicCast();

    v14 = *MEMORY[0x1E69D5748];
    v15 = *(&self->super.super.super.super.isa + v14);
    if ((v15 & 2) != 0)
    {
      [v13 invalidateTextLayout];
      v15 = *(&self->super.super.super.super.isa + v14);
    }

    if ((~v15 & 3) == 0)
    {
      [v13 invalidateFrame];
    }
  }
}

- (CGSize)adjustedInsets
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)textWrapperForExteriorWrap
{
  v3 = [(SXTextTangierLayout *)self textWrapper];

  if (!v3)
  {
    v4 = objc_alloc_init(SXTextTangierTextWrapper);
    [(SXTextTangierLayout *)self setTextWrapper:v4];

    v5 = [(TSDLayout *)self info];
    v6 = [v5 fixedExclusionPaths];
    v7 = [v6 allObjects];
    v8 = [(SXTextTangierLayout *)self textWrapper];
    [v8 setExclusionPaths:v7];
  }

  return [(SXTextTangierLayout *)self textWrapper];
}

@end