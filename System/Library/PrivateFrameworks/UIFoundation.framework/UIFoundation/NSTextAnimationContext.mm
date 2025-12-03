@interface NSTextAnimationContext
- (BOOL)_hasRenderableComponentsForRange:(id)range;
- (BOOL)_updateEnclosingLocation:(id)location endLocation:(id)endLocation;
- (CGRect)presentationLayoutFragmentFrameForTextLayoutFragment:(id)fragment proposedOrigin:(CGPoint)origin;
- (NSTextAnimationContext)initWithTextLayoutManager:(id)manager textRanges:(id)ranges;
- (NSTextLayoutManager)textLayoutManager;
- (NSTextRange)_unionTextRange;
- (NSTextRange)enclosingTextRange;
- (unint64_t)_effectiveComponents;
- (unint64_t)_effectiveExclusiveComponents;
- (void)_contentsReplaced;
- (void)_endAnimationContext:(int64_t)context;
- (void)snapshotWithComponents:(unint64_t)components exclusiveComponents:(unint64_t)exclusiveComponents usingBlock:(id)block;
@end

@implementation NSTextAnimationContext

- (NSTextRange)enclosingTextRange
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  enclosingTextRange = selfCopy->_enclosingTextRange;
  if (enclosingTextRange)
  {
    v4 = enclosingTextRange;
  }

  else
  {
    v4 = [[NSTextRange alloc] initWithLocation:selfCopy->_enclosingLocation endLocation:selfCopy->_enclosingEndLocation];
  }

  v5 = v4;
  objc_sync_exit(selfCopy);

  return v5;
}

- (NSTextRange)_unionTextRange
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_unionTextRange)
  {
    if ([(NSArray *)selfCopy->_textRanges count]< 2)
    {
      firstObject = [(NSArray *)selfCopy->_textRanges firstObject];
      unionTextRange = selfCopy->_unionTextRange;
      selfCopy->_unionTextRange = firstObject;
    }

    else
    {
      v3 = [NSTextRange alloc];
      unionTextRange = [(NSArray *)selfCopy->_textRanges firstObject];
      location = [unionTextRange location];
      lastObject = [(NSArray *)selfCopy->_textRanges lastObject];
      endLocation = [lastObject endLocation];
      v8 = [(NSTextRange *)v3 initWithLocation:location endLocation:endLocation];
      v9 = selfCopy->_unionTextRange;
      selfCopy->_unionTextRange = v8;
    }
  }

  v11 = selfCopy->_unionTextRange;
  objc_sync_exit(selfCopy);

  return v11;
}

- (BOOL)_hasRenderableComponentsForRange:(id)range
{
  v35 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = 80;
  if (selfCopy->_inSnapshot)
  {
    v6 = 40;
  }

  v7 = *(&selfCopy->super.isa + v6);
  v8 = 88;
  if (selfCopy->_inSnapshot)
  {
    v8 = 48;
  }

  v9 = *(&selfCopy->super.isa + v8);
  v10 = v9 != 0;
  if ((v7 != 0 || v9 != 0) && (-[NSTextAnimationContext enclosingTextRange](selfCopy, "enclosingTextRange"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 intersectsWithTextRange:rangeCopy], v11, v12))
  {
    textRanges = selfCopy->_textRanges;
    v14 = 1;
    if (textRanges && (v7 != 0) != (v9 != 0))
    {
      if ([(NSArray *)textRanges count]< 2)
      {
        firstObject = [(NSArray *)selfCopy->_textRanges firstObject];
        v26 = [firstObject intersectsWithTextRange:rangeCopy];

        v14 = v9 != 0;
        if (v26)
        {
          firstObject2 = [(NSArray *)selfCopy->_textRanges firstObject];
          v28 = [firstObject2 containsRange:rangeCopy];

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
        _unionTextRange = [(NSTextAnimationContext *)selfCopy _unionTextRange];
        v16 = [_unionTextRange intersectsWithTextRange:rangeCopy];

        if (v16)
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          obj = selfCopy->_textRanges;
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
                if ([v20 intersectsWithTextRange:rangeCopy])
                {
                  v28 = [v20 containsRange:rangeCopy];

                  goto LABEL_27;
                }

                endLocation = [rangeCopy endLocation];
                location = [v20 location];
                v23 = [endLocation compare:location] == -1;

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

  objc_sync_exit(selfCopy);

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

- (NSTextAnimationContext)initWithTextLayoutManager:(id)manager textRanges:(id)ranges
{
  managerCopy = manager;
  rangesCopy = ranges;
  v16.receiver = self;
  v16.super_class = NSTextAnimationContext;
  v8 = [(NSTextAnimationContext *)&v16 init];
  v9 = v8;
  if (v8 && (objc_storeWeak(&v8->_textLayoutManager, managerCopy), objc_storeStrong(&v9->_textRanges, ranges), -[NSTextAnimationContext _unionTextRange](v9, "_unionTextRange"), v10 = objc_claimAutoreleasedReturnValue(), enclosingTextRange = v9->_enclosingTextRange, v9->_enclosingTextRange = v10, enclosingTextRange, *&v9->_components = xmmword_18E8566E0, WeakRetained = objc_loadWeakRetained(&v9->_textLayoutManager), v13 = [WeakRetained _addTextAnimationContext:v9], WeakRetained, !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  return v14;
}

- (BOOL)_updateEnclosingLocation:(id)location endLocation:(id)endLocation
{
  locationCopy = location;
  endLocationCopy = endLocation;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = selfCopy->_enclosingTextRange;
  if (locationCopy && ([locationCopy isEqual:selfCopy->_enclosingLocation] & 1) == 0)
  {
    objc_storeStrong(&selfCopy->_enclosingLocation, location);
    enclosingTextRange = selfCopy->_enclosingTextRange;
    selfCopy->_enclosingTextRange = 0;
  }

  if (endLocationCopy && ([endLocationCopy isEqual:selfCopy->_enclosingEndLocation] & 1) == 0)
  {
    objc_storeStrong(&selfCopy->_enclosingEndLocation, endLocation);
    v12 = selfCopy->_enclosingTextRange;
    selfCopy->_enclosingTextRange = 0;
  }

  v13 = selfCopy->_enclosingTextRange != v10;

  objc_sync_exit(selfCopy);
  return v13;
}

- (void)_endAnimationContext:(int64_t)context
{
  completionHandler = [(NSTextAnimationContext *)self completionHandler];
  if (completionHandler)
  {
    completionHandler[2](completionHandler, self, context == 0);
  }

  WeakRetained = objc_loadWeakRetained(&self->_textLayoutManager);
  [WeakRetained _removeTextAnimationContext:self];

  textRanges = self->_textRanges;
  self->_textRanges = 0;

  objc_storeWeak(&self->_textLayoutManager, 0);
}

- (CGRect)presentationLayoutFragmentFrameForTextLayoutFragment:(id)fragment proposedOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  presentationSizeProvider = self->_presentationSizeProvider;
  if (presentationSizeProvider)
  {
    x = presentationSizeProvider[2](presentationSizeProvider, self, fragment, origin, *&origin.y);
    y = v10;
  }

  else
  {
    [fragment layoutFragmentFrame];
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

- (void)snapshotWithComponents:(unint64_t)components exclusiveComponents:(unint64_t)exclusiveComponents usingBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  snapshotComponents = selfCopy->_snapshotComponents;
  snapshotExclusiveComponents = selfCopy->_snapshotExclusiveComponents;
  inSnapshot = selfCopy->_inSnapshot;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_textLayoutManager);
  _hasTextAnimationContextsSnapshotting = [WeakRetained _hasTextAnimationContextsSnapshotting];

  selfCopy->_snapshotComponents = components;
  selfCopy->_snapshotExclusiveComponents = exclusiveComponents;
  selfCopy->_inSnapshot = 1;
  v14 = objc_loadWeakRetained(&selfCopy->_textLayoutManager);
  [v14 set_hasTextAnimationContextsSnapshotting:1];

  v15 = objc_loadWeakRetained(&selfCopy->_textLayoutManager);
  enclosingTextRange = [(NSTextAnimationContext *)selfCopy enclosingTextRange];
  [v15 ensureLayoutForRange:enclosingTextRange];

  blockCopy[2](blockCopy, selfCopy);
  selfCopy->_snapshotComponents = snapshotComponents;
  selfCopy->_snapshotExclusiveComponents = snapshotExclusiveComponents;
  selfCopy->_inSnapshot = inSnapshot;
  v17 = objc_loadWeakRetained(&selfCopy->_textLayoutManager);
  [v17 set_hasTextAnimationContextsSnapshotting:_hasTextAnimationContextsSnapshotting];

  objc_sync_exit(selfCopy);
}

- (NSTextLayoutManager)textLayoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutManager);

  return WeakRetained;
}

@end