@interface SXTextTangierLayout
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGSize)adjustedInsets;
- (CGSize)initialTextSize;
- (Class)repClassForTextLayout:(id)layout;
- (id)textWrapperForExteriorWrap;
- (void)invalidate;
@end

@implementation SXTextTangierLayout

- (Class)repClassForTextLayout:(id)layout
{
  v3 = objc_opt_class();

  return v3;
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
  width = size.width;
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
  info = [(TSDLayout *)self info];
  geometry = [info geometry];
  [geometry size];
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
  children = [(TSDAbstractLayout *)self children];
  v4 = [children count];

  if (v4 == 1)
  {
    children2 = [(TSDAbstractLayout *)self children];
    firstObject = [children2 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E69D5768] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierLayout invalidate]"];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierLayout.mm"];
      [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:77 description:@"TSWPLayout expected here"];
    }

    objc_opt_class();
    children3 = [(TSDAbstractLayout *)self children];
    firstObject2 = [children3 firstObject];
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
  textWrapper = [(SXTextTangierLayout *)self textWrapper];

  if (!textWrapper)
  {
    v4 = objc_alloc_init(SXTextTangierTextWrapper);
    [(SXTextTangierLayout *)self setTextWrapper:v4];

    info = [(TSDLayout *)self info];
    fixedExclusionPaths = [info fixedExclusionPaths];
    allObjects = [fixedExclusionPaths allObjects];
    textWrapper2 = [(SXTextTangierLayout *)self textWrapper];
    [textWrapper2 setExclusionPaths:allObjects];
  }

  return [(SXTextTangierLayout *)self textWrapper];
}

@end