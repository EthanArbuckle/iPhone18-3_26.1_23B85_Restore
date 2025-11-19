@interface PXHitTestTransparentView
- (BOOL)_isPoint:(CGPoint)a3 insideView:(id)a4 withEvent:(id)a5 adjustedPoint:(CGPoint *)a6;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (PXHitTestTransparentView)initWithFrame:(CGRect)a3;
- (PXHitTestTransparentViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)_hitTestBehaviorForView:(id)a3;
@end

@implementation PXHitTestTransparentView

- (PXHitTestTransparentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)_hitTestBehaviorForView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (([(PXHitTestTransparentView *)v4 isHidden]& 1) != 0 || ([(PXHitTestTransparentView *)v5 alpha], v6 == 0.0))
  {
    v7 = 2;
  }

  else
  {
    v8 = [(PXHitTestTransparentView *)self delegate];
    v7 = [v8 hitTestTransparentView:self hitTestBehaviorForView:v5];
  }

  return v7;
}

- (BOOL)_isPoint:(CGPoint)a3 insideView:(id)a4 withEvent:(id)a5 adjustedPoint:(CGPoint *)a6
{
  v7 = a4;
  v8 = a5;
  [v7 bounds];
  CGRectInset(v10, 1.0, 1.0);
  PXRectClampPoint();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = PXHitTestTransparentView;
  if ([(PXHitTestTransparentView *)&v22 pointInside:v8 withEvent:x, y])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__PXHitTestTransparentView_pointInside_withEvent___block_invoke;
    v17[3] = &unk_1E7746FD8;
    v17[4] = self;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__PXHitTestTransparentView_pointInside_withEvent___block_invoke_2;
    v11[3] = &unk_1E7747000;
    v11[4] = self;
    v14 = a2;
    v15 = x;
    v16 = y;
    v12 = v8;
    v13 = &v18;
    [(PXHitTestTransparentView *)self px_enumerateDescendantSubviewsPassingTest:v17 usingBlock:v11];
    v9 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void __50__PXHitTestTransparentView_pointInside_withEvent___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [*(a1 + 32) _hitTestBehaviorForView:?];
  if (v5)
  {
    if (v5 == 2)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXHitTestTransparentView.m" lineNumber:68 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else
  {
    [v11 convertPoint:*(a1 + 32) fromView:{*(a1 + 64), *(a1 + 72)}];
    v8 = v7;
    v10 = v9;
    if ([v11 isUserInteractionEnabled] && objc_msgSend(*(a1 + 32), "_isPoint:insideView:withEvent:adjustedPoint:", v11, *(a1 + 40), 0, v8, v10))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v26.receiver = self;
  v26.super_class = PXHitTestTransparentView;
  v8 = [(PXHitTestTransparentView *)&v26 hitTest:v7 withEvent:x, y];
  v9 = v8;
  if (v8 == self)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [(PXHitTestTransparentView *)self subviews];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          [v16 convertPoint:self fromView:{x, y, 0, 0}];
          v20 = v17;
          v21 = v18;
          if ([(PXHitTestTransparentView *)self _isPoint:v16 insideView:v7 withEvent:&v20 adjustedPoint:?])
          {
            v10 = [v16 hitTest:v7 withEvent:{v20, v21}];

            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

LABEL_13:

  return v10;
}

- (PXHitTestTransparentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXHitTestTransparentView;
  v3 = [(PXHitTestTransparentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [(PXHitTestTransparentView *)v3 layer];
    [v4 setAllowsGroupOpacity:0];

    sub_1A524D1F4();
  }

  return 0;
}

@end