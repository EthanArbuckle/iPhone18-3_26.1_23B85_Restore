@interface _UIPopoverViewBackgroundComponentView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (id)_newReplicant;
- (id)replicate;
- (void)updateReplicants;
@end

@implementation _UIPopoverViewBackgroundComponentView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"contents"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIPopoverViewBackgroundComponentView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (id)_newReplicant
{
  if (!self->_replicants)
  {
    array = [MEMORY[0x1E695DF70] array];
    replicants = self->_replicants;
    self->_replicants = array;
  }

  v5 = objc_alloc(objc_opt_class());
  [(UIView *)self frame];
  v6 = [v5 initWithFrame:?];
  [(NSMutableArray *)self->_replicants addObject:v6];
  return v6;
}

- (id)replicate
{
  _newReplicant = [(_UIPopoverViewBackgroundComponentView *)self _newReplicant];
  [_newReplicant setDirectionSelector:self->_directionSelector];
  layer = [(UIView *)self layer];
  contents = [layer contents];
  layer2 = [_newReplicant layer];
  [layer2 setContents:contents];

  layer3 = [(UIView *)self layer];
  [layer3 contentsRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  layer4 = [_newReplicant layer];
  [layer4 setContentsRect:{v9, v11, v13, v15}];

  layer5 = [(UIView *)self layer];
  [layer5 contentsCenter];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  layer6 = [_newReplicant layer];
  [layer6 setContentsCenter:{v19, v21, v23, v25}];

  layer7 = [(UIView *)self layer];
  [layer7 contentsScale];
  v29 = v28;
  layer8 = [_newReplicant layer];
  [layer8 setContentsScale:v29];

  layer9 = [(UIView *)self layer];
  edgeAntialiasingMask = [layer9 edgeAntialiasingMask];
  layer10 = [_newReplicant layer];
  [layer10 setEdgeAntialiasingMask:edgeAntialiasingMask];

  return _newReplicant;
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