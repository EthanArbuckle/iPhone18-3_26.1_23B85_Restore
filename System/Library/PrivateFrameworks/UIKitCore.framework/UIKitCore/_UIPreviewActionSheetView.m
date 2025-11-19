@interface _UIPreviewActionSheetView
- (UIEdgeInsets)contentInsets;
- (_UIPreviewActionSheetView)initWithCoder:(id)a3;
- (_UIPreviewActionSheetView)initWithFrame:(CGRect)a3 title:(id)a4 items:(id)a5 contentInsets:(UIEdgeInsets)a6;
- (_UIPreviewActionSheetViewDelegate)delegate;
- (void)_performActionForPreviewAction:(id)a3 interfaceAction:(id)a4;
- (void)_setupViewHierarchy;
@end

@implementation _UIPreviewActionSheetView

- (_UIPreviewActionSheetView)initWithFrame:(CGRect)a3 title:(id)a4 items:(id)a5 contentInsets:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a5;
  v22.receiver = self;
  v22.super_class = _UIPreviewActionSheetView;
  v19 = [(UIView *)&v22 initWithFrame:x, y, width, height];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_actions, a5);
    objc_storeStrong(&v20->_title, a4);
    v20->_contentInsets.top = top;
    v20->_contentInsets.left = left;
    v20->_contentInsets.bottom = bottom;
    v20->_contentInsets.right = right;
    [(_UIPreviewActionSheetView *)v20 _setupViewHierarchy];
  }

  return v20;
}

- (_UIPreviewActionSheetView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIPreviewActionSheetView;
  return [(UIView *)&v4 initWithCoder:a3];
}

- (void)_setupViewHierarchy
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = [(_UIPreviewActionSheetView *)self actions];
  v3 = [v2 count];

  if (v3)
  {
    [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E695DF70];
    v5 = [(_UIPreviewActionSheetView *)self actions];
    v54 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v6 = [(_UIPreviewActionSheetView *)self actions];
    v7 = [v6 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v7)
    {
      v8 = *v58;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v58 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v57 + 1) + 8 * i);
          v11 = [v10 style];
          v12 = [v10 title];
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __48___UIPreviewActionSheetView__setupViewHierarchy__block_invoke;
          v55[3] = &unk_1E711AD50;
          objc_copyWeak(&v56, &location);
          v55[4] = v10;
          v13 = [UIInterfaceAction actionWithTitle:v12 type:2 * (v11 == 2) handler:v55];

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
          v15 = [v10 _color];
          [v13 _setTitleTextColor:v15];

          v16 = [v10 _color];
          [v13 _setImageTintColor:v16];

          [v54 addObject:v13];
          objc_destroyWeak(&v56);
        }

        v7 = [v6 countByEnumeratingWithState:&v57 objects:v66 count:16];
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

- (void)_performActionForPreviewAction:(id)a3 interfaceAction:(id)a4
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained previewActionSheetCanSelectItem:self])
  {
    v6 = [(_UIPreviewActionSheetView *)self completionHandler];

    if (v6)
    {
      v7 = [(_UIPreviewActionSheetView *)self completionHandler];
      (v7)[2](v7, v8);
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