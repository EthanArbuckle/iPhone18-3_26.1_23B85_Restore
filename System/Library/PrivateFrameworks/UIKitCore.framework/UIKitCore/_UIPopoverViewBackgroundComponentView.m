@interface _UIPopoverViewBackgroundComponentView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (id)_newReplicant;
- (id)replicate;
- (void)updateReplicants;
@end

@implementation _UIPopoverViewBackgroundComponentView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"contents"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIPopoverViewBackgroundComponentView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (id)_newReplicant
{
  if (!self->_replicants)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    replicants = self->_replicants;
    self->_replicants = v3;
  }

  v5 = objc_alloc(objc_opt_class());
  [(UIView *)self frame];
  v6 = [v5 initWithFrame:?];
  [(NSMutableArray *)self->_replicants addObject:v6];
  return v6;
}

- (id)replicate
{
  v3 = [(_UIPopoverViewBackgroundComponentView *)self _newReplicant];
  [v3 setDirectionSelector:self->_directionSelector];
  v4 = [(UIView *)self layer];
  v5 = [v4 contents];
  v6 = [v3 layer];
  [v6 setContents:v5];

  v7 = [(UIView *)self layer];
  [v7 contentsRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v3 layer];
  [v16 setContentsRect:{v9, v11, v13, v15}];

  v17 = [(UIView *)self layer];
  [v17 contentsCenter];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v3 layer];
  [v26 setContentsCenter:{v19, v21, v23, v25}];

  v27 = [(UIView *)self layer];
  [v27 contentsScale];
  v29 = v28;
  v30 = [v3 layer];
  [v30 setContentsScale:v29];

  v31 = [(UIView *)self layer];
  v32 = [v31 edgeAntialiasingMask];
  v33 = [v3 layer];
  [v33 setEdgeAntialiasingMask:v32];

  return v3;
}

- (void)updateReplicants
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_replicants;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        [(UIView *)self frame];
        [v8 setFrame:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end