@interface _UIDragMonitorSessionPresentationUpdate
- (_UIDragMonitorSessionPresentationUpdate)initWithDragPresentationUpdate:(id)update;
- (_UIDragMonitorSessionPresentationUpdate)initWithDragPreviewUpdates:(id)updates badgeUpdate:(id)update;
- (_UIDragMonitorSessionPresentationUpdate)initWithPreviewUpdates:(id)updates badgeUpdate:(id)update;
@end

@implementation _UIDragMonitorSessionPresentationUpdate

- (_UIDragMonitorSessionPresentationUpdate)initWithPreviewUpdates:(id)updates badgeUpdate:(id)update
{
  updatesCopy = updates;
  updateCopy = update;
  v12.receiver = self;
  v12.super_class = _UIDragMonitorSessionPresentationUpdate;
  v9 = [(_UIDragMonitorSessionPresentationUpdate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_previewUpdates, updates);
    objc_storeStrong(&v10->_badgeUpdate, update);
  }

  return v10;
}

- (_UIDragMonitorSessionPresentationUpdate)initWithDragPreviewUpdates:(id)updates badgeUpdate:(id)update
{
  v24 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  updateCopy = update;
  if ([updatesCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = updatesCopy;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = [_UIDragMonitorSessionPreviewUpdate alloc];
          v16 = [(_UIDragMonitorSessionPreviewUpdate *)v15 initWithPreviewAndImageComponentUpdate:v14, v19];
          [array addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    array = 0;
  }

  v17 = [(_UIDragMonitorSessionPresentationUpdate *)self initWithPreviewUpdates:array badgeUpdate:updateCopy, v19];

  return v17;
}

- (_UIDragMonitorSessionPresentationUpdate)initWithDragPresentationUpdate:(id)update
{
  updateCopy = update;
  v5 = -[_UIDragMonitorSessionBadgeUpdate initWithDragBadgeStyle:]([_UIDragMonitorSessionBadgeUpdate alloc], "initWithDragBadgeStyle:", [updateCopy badgeStyle]);
  modifiedPreviews = [updateCopy modifiedPreviews];

  v7 = [(_UIDragMonitorSessionPresentationUpdate *)self initWithDragPreviewUpdates:modifiedPreviews badgeUpdate:v5];
  return v7;
}

@end