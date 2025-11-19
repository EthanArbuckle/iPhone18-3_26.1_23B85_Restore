@interface SUHitTestView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)addHitTestTarget:(id)a3;
- (void)dealloc;
@end

@implementation SUHitTestView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUHitTestView;
  [(SUHitTestView *)&v3 dealloc];
}

- (void)addHitTestTarget:(id)a3
{
  hitTestTargets = self->_hitTestTargets;
  if (!hitTestTargets)
  {
    hitTestTargets = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_hitTestTargets = hitTestTargets;
  }

  [(NSMutableArray *)hitTestTargets addObject:a3];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  hitTestTargets = self->_hitTestTargets;
  v9 = [(NSMutableArray *)hitTestTargets countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(hitTestTargets);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      [v13 convertPoint:self fromView:{x, y}];
      result = [v13 hitTest:a4 withEvent:?];
      if (result)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)hitTestTargets countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v15.receiver = self;
    v15.super_class = SUHitTestView;
    return [(SUHitTestView *)&v15 hitTest:a4 withEvent:x, y];
  }

  return result;
}

@end