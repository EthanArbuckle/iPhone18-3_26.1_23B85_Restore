@interface _UISearchTextFieldCanvasView
- (double)_uiatom_currentScreenScale;
- (void)_updateTokenViews;
- (void)layoutSubviews;
@end

@implementation _UISearchTextFieldCanvasView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UISearchTextFieldCanvasView;
  [(_UITextCanvasView *)&v3 layoutSubviews];
  [(_UISearchTextFieldCanvasView *)self _updateTokenViews];
}

- (double)_uiatom_currentScreenScale
{
  window = [(UIView *)self window];
  screen = [window screen];

  if (!screen)
  {
    screen = [objc_opt_self() mainScreen];
  }

  [screen scale];
  v5 = v4;

  return v5;
}

- (void)_updateTokenViews
{
  v42 = *MEMORY[0x1E69E9840];
  atomViews = self->_atomViews;
  if (atomViews)
  {
    v4 = [(NSMutableSet *)atomViews mutableCopy];
    [(NSMutableSet *)self->_atomViews removeAllObjects];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = self->_atomViews;
    self->_atomViews = v5;

    v4 = objc_opt_new();
  }

  context = [(_UITextCanvasView *)self context];
  [context textContainerOrigin];
  v9 = v8;
  v11 = v10;

  [(_UISearchTextFieldCanvasView *)self _uiatom_currentScreenScale];
  v13 = v12;
  context2 = [(_UITextCanvasView *)self context];
  layoutManager = [context2 layoutManager];

  context3 = [(_UITextCanvasView *)self context];
  textContainer = [context3 textContainer];

  textStorage = [layoutManager textStorage];
  v19 = [textStorage length];
  v20 = *off_1E70EC8C8;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __49___UISearchTextFieldCanvasView__updateTokenViews__block_invoke;
  v33[3] = &unk_1E7125AE0;
  v21 = layoutManager;
  v34 = v21;
  v22 = textContainer;
  v35 = v22;
  v23 = v4;
  v36 = v23;
  selfCopy = self;
  v38 = v13;
  v39 = v9;
  v40 = v11;
  [textStorage enumerateAttribute:v20 inRange:0 options:v19 usingBlock:{0, v33}];
  if ([v23 count])
  {
    [(NSMutableSet *)self->_atomViews minusSet:v23];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v30;
      do
      {
        v28 = 0;
        do
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v29 + 1) + 8 * v28++) removeFromSuperview];
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v26);
    }
  }
}

@end