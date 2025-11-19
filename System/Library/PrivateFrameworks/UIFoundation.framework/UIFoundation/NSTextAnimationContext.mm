@interface NSTextAnimationContext
- (BOOL)_hasRenderableComponentsForRange:(id)a3;
- (BOOL)_updateEnclosingLocation:(id)a3 endLocation:(id)a4;
- (CGRect)presentationLayoutFragmentFrameForTextLayoutFragment:(id)a3 proposedOrigin:(CGPoint)a4;
- (NSTextAnimationContext)initWithTextLayoutManager:(id)a3 textRanges:(id)a4;
- (NSTextLayoutManager)textLayoutManager;
- (NSTextRange)_unionTextRange;
- (NSTextRange)enclosingTextRange;
- (unint64_t)_effectiveComponents;
- (unint64_t)_effectiveExclusiveComponents;
- (void)_contentsReplaced;
- (void)_endAnimationContext:(int64_t)a3;
- (void)snapshotWithComponents:(unint64_t)a3 exclusiveComponents:(unint64_t)a4 usingBlock:(id)a5;
@end

@implementation NSTextAnimationContext

- (NSTextRange)enclosingTextRange
{
  v2 = self;
  objc_sync_enter(v2);
  enclosingTextRange = v2->_enclosingTextRange;
  if (enclosingTextRange)
  {
    v4 = enclosingTextRange;
  }

  else
  {
    v4 = [[NSTextRange alloc] initWithLocation:v2->_enclosingLocation endLocation:v2->_enclosingEndLocation];
  }

  v5 = v4;
  objc_sync_exit(v2);

  return v5;
}

- (NSTextRange)_unionTextRange
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_unionTextRange)
  {
    if ([(NSArray *)v2->_textRanges count]< 2)
    {
      v10 = [(NSArray *)v2->_textRanges firstObject];
      unionTextRange = v2->_unionTextRange;
      v2->_unionTextRange = v10;
    }

    else
    {
      v3 = [NSTextRange alloc];
      unionTextRange = [(NSArray *)v2->_textRanges firstObject];
      v5 = [unionTextRange location];
      v6 = [(NSArray *)v2->_textRanges lastObject];
      v7 = [v6 endLocation];
      v8 = [(NSTextRange *)v3 initWithLocation:v5 endLocation:v7];
      v9 = v2->_unionTextRange;
      v2->_unionTextRange = v8;
    }
  }

  v11 = v2->_unionTextRange;
  objc_sync_exit(v2);

  return v11;
}

- (BOOL)_hasRenderableComponentsForRange:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = 80;
  if (v5->_inSnapshot)
  {
    v6 = 40;
  }

  v7 = *(&v5->super.isa + v6);
  v8 = 88;
  if (v5->_inSnapshot)
  {
    v8 = 48;
  }

  v9 = *(&v5->super.isa + v8);
  v10 = v9 != 0;
  if ((v7 != 0 || v9 != 0) && (-[NSTextAnimationContext enclosingTextRange](v5, "enclosingTextRange"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 intersectsWithTextRange:v4], v11, v12))
  {
    textRanges = v5->_textRanges;
    v14 = 1;
    if (textRanges && (v7 != 0) != (v9 != 0))
    {
      if ([(NSArray *)textRanges count]< 2)
      {
        v25 = [(NSArray *)v5->_textRanges firstObject];
        v26 = [v25 intersectsWithTextRange:v4];

        v14 = v9 != 0;
        if (v26)
        {
          v27 = [(NSArray *)v5->_textRanges firstObject];
          v28 = [v27 containsRange:v4];

LABEL_27:
          if (v7)
          {
            v14 = 1;
          }

          else
          {
            v14 = v28 ^ 1;
          }
        }
      }

      else
      {
        v15 = [(NSTextAnimationContext *)v5 _unionTextRange];
        v16 = [v15 intersectsWithTextRange:v4];

        if (v16)
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          obj = v5->_textRanges;
          v17 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v17)
          {
            v18 = *v31;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v31 != v18)
                {
                  objc_enumerationMutation(obj);
                }

                v20 = *(*(&v30 + 1) + 8 * i);
                if ([v20 intersectsWithTextRange:v4])
                {
                  v28 = [v20 containsRange:v4];

                  goto LABEL_27;
                }

                v21 = [v4 endLocation];
                v22 = [v20 location];
                v23 = [v21 compare:v22] == -1;

                if (!v23)
                {
                  goto LABEL_20;
                }
              }

              v17 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:
        }

        v14 = v10;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  objc_sync_exit(v5);

  return v14;
}

- (void)_contentsReplaced
{
  obj = self;
  objc_sync_enter(obj);
  textRanges = obj->_textRanges;
  obj->_textRanges = 0;

  unionTextRange = obj->_unionTextRange;
  obj->_unionTextRange = 0;

  objc_sync_exit(obj);
}

- (NSTextAnimationContext)initWithTextLayoutManager:(id)a3 textRanges:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = NSTextAnimationContext;
  v8 = [(NSTextAnimationContext *)&v16 init];
  v9 = v8;
  if (v8 && (objc_storeWeak(&v8->_textLayoutManager, v6), objc_storeStrong(&v9->_textRanges, a4), -[NSTextAnimationContext _unionTextRange](v9, "_unionTextRange"), v10 = objc_claimAutoreleasedReturnValue(), enclosingTextRange = v9->_enclosingTextRange, v9->_enclosingTextRange = v10, enclosingTextRange, *&v9->_components = xmmword_18E8566E0, WeakRetained = objc_loadWeakRetained(&v9->_textLayoutManager), v13 = [WeakRetained _addTextAnimationContext:v9], WeakRetained, !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  return v14;
}

- (BOOL)_updateEnclosingLocation:(id)a3 endLocation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  v10 = v9->_enclosingTextRange;
  if (v7 && ([v7 isEqual:v9->_enclosingLocation] & 1) == 0)
  {
    objc_storeStrong(&v9->_enclosingLocation, a3);
    enclosingTextRange = v9->_enclosingTextRange;
    v9->_enclosingTextRange = 0;
  }

  if (v8 && ([v8 isEqual:v9->_enclosingEndLocation] & 1) == 0)
  {
    objc_storeStrong(&v9->_enclosingEndLocation, a4);
    v12 = v9->_enclosingTextRange;
    v9->_enclosingTextRange = 0;
  }

  v13 = v9->_enclosingTextRange != v10;

  objc_sync_exit(v9);
  return v13;
}

- (void)_endAnimationContext:(int64_t)a3
{
  v7 = [(NSTextAnimationContext *)self completionHandler];
  if (v7)
  {
    v7[2](v7, self, a3 == 0);
  }

  WeakRetained = objc_loadWeakRetained(&self->_textLayoutManager);
  [WeakRetained _removeTextAnimationContext:self];

  textRanges = self->_textRanges;
  self->_textRanges = 0;

  objc_storeWeak(&self->_textLayoutManager, 0);
}

- (CGRect)presentationLayoutFragmentFrameForTextLayoutFragment:(id)a3 proposedOrigin:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  presentationSizeProvider = self->_presentationSizeProvider;
  if (presentationSizeProvider)
  {
    x = presentationSizeProvider[2](presentationSizeProvider, self, a3, a4, *&a4.y);
    y = v10;
  }

  else
  {
    [a3 layoutFragmentFrame];
  }

  v11 = x;
  v12 = y;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (unint64_t)_effectiveComponents
{
  v2 = 80;
  if (self->_inSnapshot)
  {
    v2 = 40;
  }

  return *(&self->super.isa + v2);
}

- (unint64_t)_effectiveExclusiveComponents
{
  v2 = 88;
  if (self->_inSnapshot)
  {
    v2 = 48;
  }

  return *(&self->super.isa + v2);
}

- (void)snapshotWithComponents:(unint64_t)a3 exclusiveComponents:(unint64_t)a4 usingBlock:(id)a5
{
  v18 = a5;
  v8 = self;
  objc_sync_enter(v8);
  snapshotComponents = v8->_snapshotComponents;
  snapshotExclusiveComponents = v8->_snapshotExclusiveComponents;
  inSnapshot = v8->_inSnapshot;
  WeakRetained = objc_loadWeakRetained(&v8->_textLayoutManager);
  v13 = [WeakRetained _hasTextAnimationContextsSnapshotting];

  v8->_snapshotComponents = a3;
  v8->_snapshotExclusiveComponents = a4;
  v8->_inSnapshot = 1;
  v14 = objc_loadWeakRetained(&v8->_textLayoutManager);
  [v14 set_hasTextAnimationContextsSnapshotting:1];

  v15 = objc_loadWeakRetained(&v8->_textLayoutManager);
  v16 = [(NSTextAnimationContext *)v8 enclosingTextRange];
  [v15 ensureLayoutForRange:v16];

  v18[2](v18, v8);
  v8->_snapshotComponents = snapshotComponents;
  v8->_snapshotExclusiveComponents = snapshotExclusiveComponents;
  v8->_inSnapshot = inSnapshot;
  v17 = objc_loadWeakRetained(&v8->_textLayoutManager);
  [v17 set_hasTextAnimationContextsSnapshotting:v13];

  objc_sync_exit(v8);
}

- (NSTextLayoutManager)textLayoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutManager);

  return WeakRetained;
}

@end