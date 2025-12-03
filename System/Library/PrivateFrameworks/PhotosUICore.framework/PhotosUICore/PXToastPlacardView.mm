@interface PXToastPlacardView
- (void)addActionWithTitle:(id)title action:(id)action;
- (void)didMoveToSuperview;
@end

@implementation PXToastPlacardView

- (void)didMoveToSuperview
{
  v80 = *MEMORY[0x1E69E9840];
  v76.receiver = self;
  v76.super_class = PXToastPlacardView;
  [(PXToastPlacardView *)&v76 didMoveToSuperview];
  if (!self->_didLoad)
  {
    self->_didLoad = 1;
    v3 = self->_actions;
    selfCopy = self;
    layer = [(PXToastPlacardView *)selfCopy layer];
    [layer setCornerRadius:8.0];
    LODWORD(v6) = 1050253722;
    [layer setShadowOpacity:v6];
    [layer setShadowRadius:10.0];
    v50 = layer;
    [layer setShadowOffset:{3.0, 3.0}];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXToastPlacardView *)selfCopy setBackgroundColor:secondarySystemBackgroundColor];

    [(PXToastPlacardView *)selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    message = [(PXToastPlacardView *)selfCopy message];
    [v8 setText:message];

    [v8 setNumberOfLines:0];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = selfCopy;
    v51 = v8;
    [(PXToastPlacardView *)selfCopy addSubview:v8];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v3;
    v57 = [(NSMutableArray *)obj countByEnumeratingWithState:&v72 objects:v79 count:16];
    v10 = 0;
    if (v57)
    {
      v54 = *v73;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v73 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v72 + 1) + 8 * v11);
          v14 = MEMORY[0x1E69DC738];
          v15 = MEMORY[0x1E69DC628];
          title = [v13 title];
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 3221225472;
          v71[2] = __40__PXToastPlacardView_didMoveToSuperview__block_invoke;
          v71[3] = &unk_1E7743BF8;
          v71[4] = v13;
          v17 = [v15 actionWithTitle:title image:0 identifier:0 handler:v71];
          v10 = [v14 buttonWithType:1 primaryAction:v17];

          [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(PXToastPlacardView *)v56 addSubview:v10];
          v63 = MEMORY[0x1E696ACD8];
          trailingAnchor = [v10 trailingAnchor];
          v69 = trailingAnchor;
          v65 = v12;
          if (v12)
          {
            leadingAnchor = [v12 leadingAnchor];
            v20 = -10.0;
          }

          else
          {
            leadingAnchor = [(PXToastPlacardView *)v56 trailingAnchor];
            v20 = -20.0;
          }

          v67 = leadingAnchor;
          v61 = [trailingAnchor constraintEqualToAnchor:v20 constant:?];
          v78[0] = v61;
          centerYAnchor = [v10 centerYAnchor];
          centerYAnchor2 = [(PXToastPlacardView *)v56 centerYAnchor];
          v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          v78[1] = v22;
          widthAnchor = [v10 widthAnchor];
          [v10 intrinsicContentSize];
          v24 = [widthAnchor constraintGreaterThanOrEqualToConstant:?];
          v78[2] = v24;
          heightAnchor = [v10 heightAnchor];
          heightAnchor2 = [(PXToastPlacardView *)v56 heightAnchor];
          v27 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 constant:-40.0];
          v78[3] = v27;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:4];
          [v63 activateConstraints:v28];

          ++v11;
          v12 = v10;
        }

        while (v57 != v11);
        v57 = [(NSMutableArray *)obj countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v57);
    }

    px_screen = [(PXToastPlacardView *)v56 px_screen];
    [px_screen bounds];
    v31 = v30;
    v33 = v32;

    if (v31 >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = v31;
    }

    v35 = v34 + -40.0;
    v58 = MEMORY[0x1E696ACD8];
    leadingAnchor2 = [v51 leadingAnchor];
    leadingAnchor3 = [(PXToastPlacardView *)v56 leadingAnchor];
    v70 = leadingAnchor2;
    v66 = [leadingAnchor2 constraintEqualToAnchor:20.0 constant:?];
    v77[0] = v66;
    trailingAnchor2 = [v51 trailingAnchor];
    v64 = trailingAnchor2;
    v60 = v10;
    if (v10)
    {
      leadingAnchor4 = [v10 leadingAnchor];
      v39 = -10.0;
    }

    else
    {
      leadingAnchor4 = [(PXToastPlacardView *)v56 trailingAnchor];
      v39 = -20.0;
    }

    v62 = leadingAnchor4;
    v55 = [trailingAnchor2 constraintEqualToAnchor:v39 constant:?];
    v77[1] = v55;
    centerYAnchor3 = [v51 centerYAnchor];
    centerYAnchor4 = [(PXToastPlacardView *)v56 centerYAnchor];
    v40 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v77[2] = v40;
    heightAnchor3 = [v51 heightAnchor];
    heightAnchor4 = [(PXToastPlacardView *)v56 heightAnchor];
    v43 = [heightAnchor3 constraintLessThanOrEqualToAnchor:heightAnchor4 constant:-40.0];
    v77[3] = v43;
    heightAnchor5 = [(PXToastPlacardView *)v56 heightAnchor];
    v45 = [heightAnchor5 constraintGreaterThanOrEqualToConstant:80.0];
    v77[4] = v45;
    widthAnchor2 = [(PXToastPlacardView *)v56 widthAnchor];
    v47 = [widthAnchor2 constraintEqualToConstant:v35];
    v77[5] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:6];
    [v58 activateConstraints:v48];
  }
}

void __40__PXToastPlacardView_didMoveToSuperview__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) action];

  if (v2)
  {
    v3 = [*(a1 + 32) action];
    v3[2]();
  }
}

- (void)addActionWithTitle:(id)title action:(id)action
{
  titleCopy = title;
  actionCopy = action;
  actions = self->_actions;
  if (!actions)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = self->_actions;
    self->_actions = v8;

    actions = self->_actions;
  }

  v10 = [[_PXToastAction alloc] initWithTitle:titleCopy action:actionCopy];
  [(NSMutableArray *)actions addObject:v10];
}

@end