@interface UIMutableTransformer
- (UIMutableTransformerDelegate)_delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)_ensureTransformsStructuresExists;
- (void)_updateTransform;
- (void)addTransform:(id)transform reason:(id)reason;
- (void)removeAll;
- (void)removeTransform:(id)transform;
- (void)replaceTransform:(id)transform withTransform:(id)withTransform reason:(id)reason;
@end

@implementation UIMutableTransformer

- (void)addTransform:(id)transform reason:(id)reason
{
  transformCopy = transform;
  reasonCopy = reason;
  if (!transformCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITransform.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"transform"}];
  }

  [(UIMutableTransformer *)self _ensureTransformsStructuresExists];
  [(NSMutableArray *)self->super._transforms addObject:transformCopy];
  transformReasonAssociations = self->super._transformReasonAssociations;
  v9 = [_UITransformToReasonAssociation association:transformCopy reason:reasonCopy];
  [(NSMutableArray *)transformReasonAssociations addObject:v9];

  [(UIMutableTransformer *)self _updateTransform];
}

- (void)replaceTransform:(id)transform withTransform:(id)withTransform reason:(id)reason
{
  transformCopy = transform;
  withTransformCopy = withTransform;
  reasonCopy = reason;
  if (!transformCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITransform.m" lineNumber:262 description:{@"Invalid parameter not satisfying: %@", @"priorTransform"}];

    if (withTransformCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UITransform.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"newTransform"}];

    goto LABEL_3;
  }

  if (!withTransformCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  v11 = [(NSMutableArray *)self->super._transforms indexOfObject:transformCopy];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v11;
    if (v11 < [(NSMutableArray *)self->super._transforms count])
    {
      [(NSMutableArray *)self->super._transforms replaceObjectAtIndex:v12 withObject:withTransformCopy];
      transformReasonAssociations = self->super._transformReasonAssociations;
      v14 = [_UITransformToReasonAssociation association:withTransformCopy reason:reasonCopy];
      [(NSMutableArray *)transformReasonAssociations replaceObjectAtIndex:v12 withObject:v14];

      [(UIMutableTransformer *)self _updateTransform];
    }
  }
}

- (void)removeTransform:(id)transform
{
  transformCopy = transform;
  v9 = transformCopy;
  if (!transformCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITransform.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"transform"}];

    transformCopy = 0;
  }

  v6 = [(NSMutableArray *)self->super._transforms indexOfObject:transformCopy];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    if (v6 < [(NSMutableArray *)self->super._transforms count])
    {
      [(NSMutableArray *)self->super._transforms removeObjectAtIndex:v7];
      [(NSMutableArray *)self->super._transformReasonAssociations removeObjectAtIndex:v7];
      [(UIMutableTransformer *)self _updateTransform];
    }
  }
}

- (void)removeAll
{
  if ([(NSMutableArray *)self->super._transforms count])
  {
    [(NSMutableArray *)self->super._transforms removeAllObjects];
    [(NSMutableArray *)self->super._transformReasonAssociations removeAllObjects];

    [(UIMutableTransformer *)self _updateTransform];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UITransformer alloc];

  return [(UITransformer *)v4 _initWithTransformer:self];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = UIMutableTransformer;
  v4 = [(UITransformer *)&v12 descriptionBuilderWithMultilinePrefix:prefix];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__UIMutableTransformer_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v5 = v4;
  v10 = v5;
  selfCopy = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

void __62__UIMutableTransformer_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
  v2 = [v1 appendObject:WeakRetained withName:@"delegate"];
}

- (void)_ensureTransformsStructuresExists
{
  if (!self->super._transforms)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transforms = self->super._transforms;
    self->super._transforms = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transformReasonAssociations = self->super._transformReasonAssociations;
    self->super._transformReasonAssociations = v5;
  }
}

- (void)_updateTransform
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *&v19.a = *MEMORY[0x1E695EFD0];
  *&v19.c = v3;
  *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->super._transforms;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (v9)
        {
          [v9 transform];
        }

        else
        {
          memset(&t2, 0, sizeof(t2));
        }

        v13 = v19;
        CGAffineTransformConcat(&v19, &v13, &t2);
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = *&self->super.super._transform.c;
  *&t2.a = *&self->super.super._transform.a;
  *&t2.c = v10;
  *&t2.tx = *&self->super.super._transform.tx;
  v13 = v19;
  if (!CGAffineTransformEqualToTransform(&t2, &v13))
  {
    v11 = *&v19.c;
    *&self->super.super._transform.a = *&v19.a;
    *&self->super.super._transform.c = v11;
    *&self->super.super._transform.tx = *&v19.tx;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained transformsDidChange:self];
  }
}

- (UIMutableTransformerDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end