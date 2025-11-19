@interface _UISwipePropertyAnimator
- (id)copyWithZone:(_NSZone *)a3;
- (void)addViewsToAnimateAdditively:(id)a3;
@end

@implementation _UISwipePropertyAnimator

- (void)addViewsToAnimateAdditively:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    if (!self->_viewsToAnimateAdditively)
    {
      v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      viewsToAnimateAdditively = self->_viewsToAnimateAdditively;
      self->_viewsToAnimateAdditively = v5;
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(NSHashTable *)self->_viewsToAnimateAdditively addObject:*(*(&v12 + 1) + 8 * v11++), v12];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _UISwipePropertyAnimator;
  v4 = [(UIViewPropertyAnimator *)&v8 copyWithZone:a3];
  if (v4)
  {
    v5 = [(NSHashTable *)self->_viewsToAnimateAdditively copy];
    v6 = v4[32];
    v4[32] = v5;
  }

  return v4;
}

@end