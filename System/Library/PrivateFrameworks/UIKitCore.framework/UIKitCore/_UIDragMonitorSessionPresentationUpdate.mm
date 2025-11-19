@interface _UIDragMonitorSessionPresentationUpdate
- (_UIDragMonitorSessionPresentationUpdate)initWithDragPresentationUpdate:(id)a3;
- (_UIDragMonitorSessionPresentationUpdate)initWithDragPreviewUpdates:(id)a3 badgeUpdate:(id)a4;
- (_UIDragMonitorSessionPresentationUpdate)initWithPreviewUpdates:(id)a3 badgeUpdate:(id)a4;
@end

@implementation _UIDragMonitorSessionPresentationUpdate

- (_UIDragMonitorSessionPresentationUpdate)initWithPreviewUpdates:(id)a3 badgeUpdate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UIDragMonitorSessionPresentationUpdate;
  v9 = [(_UIDragMonitorSessionPresentationUpdate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_previewUpdates, a3);
    objc_storeStrong(&v10->_badgeUpdate, a4);
  }

  return v10;
}

- (_UIDragMonitorSessionPresentationUpdate)initWithDragPreviewUpdates:(id)a3 badgeUpdate:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v6;
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
          [v8 addObject:v16];

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
    v8 = 0;
  }

  v17 = [(_UIDragMonitorSessionPresentationUpdate *)self initWithPreviewUpdates:v8 badgeUpdate:v7, v19];

  return v17;
}

- (_UIDragMonitorSessionPresentationUpdate)initWithDragPresentationUpdate:(id)a3
{
  v4 = a3;
  v5 = -[_UIDragMonitorSessionBadgeUpdate initWithDragBadgeStyle:]([_UIDragMonitorSessionBadgeUpdate alloc], "initWithDragBadgeStyle:", [v4 badgeStyle]);
  v6 = [v4 modifiedPreviews];

  v7 = [(_UIDragMonitorSessionPresentationUpdate *)self initWithDragPreviewUpdates:v6 badgeUpdate:v5];
  return v7;
}

@end