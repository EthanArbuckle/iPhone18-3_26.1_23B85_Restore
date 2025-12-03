@interface _UIPreviewActionSheetView
- (UIEdgeInsets)contentInsets;
- (_UIPreviewActionSheetView)initWithCoder:(id)coder;
- (_UIPreviewActionSheetView)initWithFrame:(CGRect)frame title:(id)title items:(id)items contentInsets:(UIEdgeInsets)insets;
- (_UIPreviewActionSheetViewDelegate)delegate;
- (void)_performActionForPreviewAction:(id)action interfaceAction:(id)interfaceAction;
- (void)_setupViewHierarchy;
@end

@implementation _UIPreviewActionSheetView

- (_UIPreviewActionSheetView)initWithFrame:(CGRect)frame title:(id)title items:(id)items contentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  titleCopy = title;
  itemsCopy = items;
  v22.receiver = self;
  v22.super_class = _UIPreviewActionSheetView;
  height = [(UIView *)&v22 initWithFrame:x, y, width, height];
  v20 = height;
  if (height)
  {
    objc_storeStrong(&height->_actions, items);
    objc_storeStrong(&v20->_title, title);
    v20->_contentInsets.top = top;
    v20->_contentInsets.left = left;
    v20->_contentInsets.bottom = bottom;
    v20->_contentInsets.right = right;
    [(_UIPreviewActionSheetView *)v20 _setupViewHierarchy];
  }

  return v20;
}

- (_UIPreviewActionSheetView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UIPreviewActionSheetView;
  return [(UIView *)&v4 initWithCoder:coder];
}

- (void)_setupViewHierarchy
{
  v67 = *MEMORY[0x1E69E9840];
  actions = [(_UIPreviewActionSheetView *)self actions];
  v3 = [actions count];

  if (v3)
  {
    [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E695DF70];
    actions2 = [(_UIPreviewActionSheetView *)self actions];
    v54 = [v4 arrayWithCapacity:{objc_msgSend(actions2, "count")}];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    actions3 = [(_UIPreviewActionSheetView *)self actions];
    v7 = [actions3 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v7)
    {
      v8 = *v58;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v58 != v8)
          {
            objc_enumerationMutation(actions3);
          }

          v10 = *(*(&v57 + 1) + 8 * i);
          style = [v10 style];
          title = [v10 title];
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __48___UIPreviewActionSheetView__setupViewHierarchy__block_invoke;
          v55[3] = &unk_1E711AD50;
          objc_copyWeak(&v56, &location);
          v55[4] = v10;
          v13 = [UIInterfaceAction actionWithTitle:title type:2 * (style == 2) handler:v55];

          if ([v10 style] == 1)
          {
            +[UIPreviewAction _checkmarkImage];
          }

          else
          {
            [v10 image];
          }
          v14 = ;
          [v13 setTrailingImage:v14];
          _color = [v10 _color];
          [v13 _setTitleTextColor:_color];

          _color2 = [v10 _color];
          [v13 _setImageTintColor:_color2];

          [v54 addObject:v13];
          objc_destroyWeak(&v56);
        }

        v7 = [actions3 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v7);
    }

    v17 = [UIInterfaceActionGroup actionGroupWithActions:v54];
    v18 = [[UIInterfaceActionGroupView alloc] initWithActionGroup:v17 actionHandlerInvocationDelegate:0];
    [(UIInterfaceActionGroupView *)v18 setPresentationStyle:1];
    [(UIView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self bounds];
    [(UIInterfaceActionGroupView *)v18 setFrame:?];
    [(UIView *)self addSubview:v18];
    LODWORD(v19) = 1148846080;
    LODWORD(v20) = 1132068864;
    [(UIView *)v18 systemLayoutSizeFittingSize:0.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:v19, v20];
    v22 = v21;
    [(UIView *)self bounds];
    Width = CGRectGetWidth(v68);
    [(_UIPreviewActionSheetView *)self contentInsets];
    v25 = v24;
    [(_UIPreviewActionSheetView *)self contentInsets];
    v27 = v26;
    [(UIView *)self bounds];
    Height = CGRectGetHeight(v69);
    [(_UIPreviewActionSheetView *)self contentInsets];
    v30 = v29;
    [(_UIPreviewActionSheetView *)self contentInsets];
    v32 = Height - (v30 + v31);
    v33 = fabs(v22);
    if (v22 < v32 && v33 > 2.22044605e-16)
    {
      v32 = v22;
    }

    v64[0] = @"height";
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:{v32, v33}];
    v65[0] = v35;
    v64[1] = @"width";
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:Width - (v25 + v27)];
    v65[1] = v36;
    v64[2] = @"left";
    v37 = MEMORY[0x1E696AD98];
    [(_UIPreviewActionSheetView *)self contentInsets];
    v39 = [v37 numberWithDouble:v38];
    v65[2] = v39;
    v64[3] = @"right";
    v40 = MEMORY[0x1E696AD98];
    [(_UIPreviewActionSheetView *)self contentInsets];
    v42 = [v40 numberWithDouble:v41];
    v65[3] = v42;
    v64[4] = @"top";
    v43 = MEMORY[0x1E696AD98];
    [(_UIPreviewActionSheetView *)self contentInsets];
    v44 = [v43 numberWithDouble:?];
    v65[4] = v44;
    v64[5] = @"bottom";
    v45 = MEMORY[0x1E696AD98];
    [(_UIPreviewActionSheetView *)self contentInsets];
    v47 = [v45 numberWithDouble:v46];
    v65[5] = v47;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:6];

    v62 = @"groupView";
    v63 = v18;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v51 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-(left)-[groupView(==width)]-(right)-|" options:0 metrics:v48 views:v49];
    [v50 addObjectsFromArray:v51];

    v52 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|-(top)-[groupView(==height)]-(bottom)-|" options:0 metrics:v48 views:v49];
    [v50 addObjectsFromArray:v52];

    [MEMORY[0x1E69977A0] activateConstraints:v50];
    objc_destroyWeak(&location);
  }
}

- (void)_performActionForPreviewAction:(id)action interfaceAction:(id)interfaceAction
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained previewActionSheetCanSelectItem:self])
  {
    completionHandler = [(_UIPreviewActionSheetView *)self completionHandler];

    if (completionHandler)
    {
      completionHandler2 = [(_UIPreviewActionSheetView *)self completionHandler];
      (completionHandler2)[2](completionHandler2, actionCopy);
    }
  }
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (_UIPreviewActionSheetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end