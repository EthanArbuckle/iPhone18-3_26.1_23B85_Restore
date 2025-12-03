@interface _UIStatusBarPersistentAnimationView
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)setPersistentAnimations:(id)animations;
@end

@implementation _UIStatusBarPersistentAnimationView

- (id)actionForLayer:(id)layer forKey:(id)key
{
  layerCopy = layer;
  keyCopy = key;
  if ([keyCopy isEqualToString:*MEMORY[0x1E6979EE8]])
  {
    v8 = [UIViewBlockBasedCAAction alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61___UIStatusBarPersistentAnimationView_actionForLayer_forKey___block_invoke;
    v15[3] = &unk_1E70F3590;
    v15[4] = self;
    v9 = v15;
LABEL_5:
    v10 = [(UIViewBlockBasedCAAction *)v8 initWithEmptyBlock:v9];
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:*MEMORY[0x1E6979EE0]])
  {
    v8 = [UIViewBlockBasedCAAction alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61___UIStatusBarPersistentAnimationView_actionForLayer_forKey___block_invoke_2;
    v14[3] = &unk_1E70F3590;
    v14[4] = self;
    v9 = v14;
    goto LABEL_5;
  }

  v13.receiver = self;
  v13.super_class = _UIStatusBarPersistentAnimationView;
  v10 = [(UIView *)&v13 actionForLayer:layerCopy forKey:keyCopy];
LABEL_7:
  v11 = v10;

  return v11;
}

- (void)setPersistentAnimations:(id)animations
{
  v21 = *MEMORY[0x1E69E9840];
  animationsCopy = animations;
  animations = self->_animations;
  if (animations)
  {
    [(NSHashTable *)animations removeAllObjects];
  }

  else
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_animations;
    self->_animations = weakObjectsHashTable;
  }

  layer = [(UIView *)self layer];
  context = [layer context];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = animationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        [(NSHashTable *)self->_animations addObject:v15, v16];
        if (!context && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v15 pausePersistentAnimation];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

@end