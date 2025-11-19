@interface SXTextTangierFlowLayout
- (BOOL)isLayoutOffscreen;
- (CGPoint)anchorPoint;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGPoint)pointForCharacterPosition:(unint64_t)a3;
- (CGPoint)position;
- (CGRect)maskRect;
- (CGRect)targetRectForCanvasRect:(CGRect)a3;
- (CGSize)currentSize;
- (SXTextTangierFlowLayout)initWithInfo:(id)a3 layout:(id)a4 frame:(CGRect)a5;
- (TSDCanvas)canvas;
- (double)maxAnchorY;
- (id)currentAnchoredDrawableLayouts;
- (id)layoutForInlineDrawable:(id)a3;
- (id)validatedLayoutForAnchoredDrawable:(id)a3;
- (unint64_t)characterPositionForPoint:(CGPoint)a3;
- (void)addAttachmentLayout:(id)a3;
- (void)dealloc;
@end

@implementation SXTextTangierFlowLayout

- (SXTextTangierFlowLayout)initWithInfo:(id)a3 layout:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v46 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v43.receiver = self;
  v43.super_class = SXTextTangierFlowLayout;
  v13 = [(TSDLayout *)&v43 initWithInfo:v11];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E69D5668]) initWithFrame:{x, y, width, height}];
    [(TSDAbstractLayout *)v13 setGeometry:v14];

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(SXTextTangierFlowLayout *)v13 setColumns:v15];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = [v12 columns];
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      do
      {
        v20 = 0;
        do
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v39 + 1) + 8 * v20);
          v22 = [v11 storage];
          v23 = [v11 range];
          [v21 setStorage:v22 range:{v23, v24}];

          v25 = [(SXTextTangierFlowLayout *)v13 columns];
          [v25 addObject:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v18);
    }

    v26 = [v12 children];
    v27 = [v26 copy];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v36;
      do
      {
        v32 = 0;
        do
        {
          if (*v36 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [(TSDAbstractLayout *)v13 addChild:*(*(&v35 + 1) + 8 * v32++), v35];
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v30);
    }

    v33 = [v12 columns];
    [v33 removeAllObjects];
  }

  return v13;
}

- (void)dealloc
{
  [(SXTextTangierFlowLayout *)self setColumns:0];
  v3.receiver = self;
  v3.super_class = SXTextTangierFlowLayout;
  [(TSDLayout *)&v3 dealloc];
}

- (unint64_t)characterPositionForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SXTextTangierFlowLayout *)self columns];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v10 frameBounds];
        v19.x = x;
        v19.y = y;
        if (CGRectContainsPoint(v20, v19))
        {
          v11 = [v10 charIndexForSelectionFromPoint:0 isTail:{x, y}];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  return v11;
}

- (CGPoint)pointForCharacterPosition:(unint64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [(SXTextTangierFlowLayout *)self columns];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v22 + 1) + 8 * i) range];
        if (v12 <= a3 && v12 + v13 >= a3 + 1)
        {
          v15 = MEMORY[0x1E69D56B8];
          v16 = [MEMORY[0x1E69D5728] selectionWithRange:{a3, 1}];
          v17 = [(SXTextTangierFlowLayout *)self columns];
          [v15 rectForSelection:v16 withColumns:v17];
          v5 = v18;
          v6 = v19;

          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v20 = v5;
  v21 = v6;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGPoint)capturedInfoPositionForAttachment
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGSize)currentSize
{
  v2 = [(TSDAbstractLayout *)self geometry];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGPoint)position
{
  v2 = [(TSDAbstractLayout *)self geometry];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)anchorPoint
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)targetRectForCanvasRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TSDAbstractLayout *)self frameInRoot];
  v8 = -v7;
  v10 = -v9;
  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;

  return CGRectOffset(*&v11, v8, v10);
}

- (TSDCanvas)canvas
{
  v2 = [(TSDLayout *)self layoutController];
  v3 = [v2 canvas];

  return v3;
}

- (id)layoutForInlineDrawable:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(TSDAbstractLayout *)self children:0];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        v10 = TSUDynamicCast();
        v11 = v10;
        if (v10)
        {
          v12 = [v10 info];

          if (v12 == v4)
          {

            goto LABEL_13;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [objc_alloc(objc_msgSend(v4 "layoutClass"))];
  if (v11)
  {
    [(TSDAbstractLayout *)self addChild:v11];
  }

LABEL_13:
  [v11 updateChildrenFromInfo];

  return v11;
}

- (id)validatedLayoutForAnchoredDrawable:(id)a3
{
  v3 = [MEMORY[0x1E69D5768] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierFlowLayout validatedLayoutForAnchoredDrawable:]"];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierFlowLayout.m"];
  [v3 handleFailureInFunction:v4 file:v5 lineNumber:270 description:@"Anchored attachments not supported in non-body text."];

  return 0;
}

- (void)addAttachmentLayout:(id)a3
{
  v5 = a3;
  v4 = [v5 parent];

  if (v4 != self)
  {
    [(TSDAbstractLayout *)self addChild:v5];
  }

  [v5 updateChildrenFromInfo];
}

- (id)currentAnchoredDrawableLayouts
{
  v2 = [MEMORY[0x1E69D5768] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierFlowLayout currentAnchoredDrawableLayouts]"];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierFlowLayout.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:305 description:@"Anchored attachments not supported in flow text."];

  return 0;
}

- (double)maxAnchorY
{
  [(SXTextTangierFlowLayout *)self position];
  v4 = v3;
  [(SXTextTangierFlowLayout *)self maxSize];
  return v4 + v5;
}

- (CGRect)maskRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isLayoutOffscreen
{
  v2 = [(TSDLayout *)self layoutController];
  v3 = [v2 isLayoutOffscreen];

  return v3;
}

@end