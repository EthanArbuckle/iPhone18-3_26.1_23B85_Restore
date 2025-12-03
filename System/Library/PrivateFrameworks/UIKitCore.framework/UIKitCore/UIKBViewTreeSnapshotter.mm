@interface UIKBViewTreeSnapshotter
+ (id)snapshotterForKeyboardView:(id)view afterScreenUpdates:(BOOL)updates;
@end

@implementation UIKBViewTreeSnapshotter

+ (id)snapshotterForKeyboardView:(id)view afterScreenUpdates:(BOOL)updates
{
  updatesCopy = updates;
  viewCopy = view;
  v6 = objc_alloc_init(UIKBViewTreeSnapshotter);
  v7 = [_UIViewBlockVisitor alloc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__UIKBViewTreeSnapshotter_snapshotterForKeyboardView_afterScreenUpdates___block_invoke;
  v14[3] = &unk_1E7102B18;
  v8 = v6;
  v15 = v8;
  v9 = [(_UIViewBlockVisitor *)v7 initWithTraversalDirection:2 visitorBlock:v14];
  [(_UIViewVisitor *)v9 setVisitMaskViews:0];
  [viewCopy _receiveVisitor:v9];
  v10 = [viewCopy snapshotViewAfterScreenUpdates:updatesCopy];

  snapshotView = v8->_snapshotView;
  v8->_snapshotView = v10;

  if (v8->_snapshotView)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL __73__UIKBViewTreeSnapshotter_snapshotterForKeyboardView_afterScreenUpdates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = *(*(a1 + 32) + 8);
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = *(a1 + 32);
      v8 = *(v7 + 8);
      *(v7 + 8) = v6;

      v5 = *(*(a1 + 32) + 8);
    }

    [v5 addObject:v3];
  }

  return (isKindOfClass & 1) == 0;
}

@end