@interface PXToastPlacardView
- (void)addActionWithTitle:(id)a3 action:(id)a4;
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
    v4 = self;
    v5 = [(PXToastPlacardView *)v4 layer];
    [v5 setCornerRadius:8.0];
    LODWORD(v6) = 1050253722;
    [v5 setShadowOpacity:v6];
    [v5 setShadowRadius:10.0];
    v50 = v5;
    [v5 setShadowOffset:{3.0, 3.0}];
    v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXToastPlacardView *)v4 setBackgroundColor:v7];

    [(PXToastPlacardView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v9 = [(PXToastPlacardView *)v4 message];
    [v8 setText:v9];

    [v8 setNumberOfLines:0];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = v4;
    v51 = v8;
    [(PXToastPlacardView *)v4 addSubview:v8];
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
          v16 = [v13 title];
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 3221225472;
          v71[2] = __40__PXToastPlacardView_didMoveToSuperview__block_invoke;
          v71[3] = &unk_1E7743BF8;
          v71[4] = v13;
          v17 = [v15 actionWithTitle:v16 image:0 identifier:0 handler:v71];
          v10 = [v14 buttonWithType:1 primaryAction:v17];

          [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(PXToastPlacardView *)v56 addSubview:v10];
          v63 = MEMORY[0x1E696ACD8];
          v18 = [v10 trailingAnchor];
          v69 = v18;
          v65 = v12;
          if (v12)
          {
            v19 = [v12 leadingAnchor];
            v20 = -10.0;
          }

          else
          {
            v19 = [(PXToastPlacardView *)v56 trailingAnchor];
            v20 = -20.0;
          }

          v67 = v19;
          v61 = [v18 constraintEqualToAnchor:v20 constant:?];
          v78[0] = v61;
          v59 = [v10 centerYAnchor];
          v21 = [(PXToastPlacardView *)v56 centerYAnchor];
          v22 = [v59 constraintEqualToAnchor:v21];
          v78[1] = v22;
          v23 = [v10 widthAnchor];
          [v10 intrinsicContentSize];
          v24 = [v23 constraintGreaterThanOrEqualToConstant:?];
          v78[2] = v24;
          v25 = [v10 heightAnchor];
          v26 = [(PXToastPlacardView *)v56 heightAnchor];
          v27 = [v25 constraintLessThanOrEqualToAnchor:v26 constant:-40.0];
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

    v29 = [(PXToastPlacardView *)v56 px_screen];
    [v29 bounds];
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
    v36 = [v51 leadingAnchor];
    v68 = [(PXToastPlacardView *)v56 leadingAnchor];
    v70 = v36;
    v66 = [v36 constraintEqualToAnchor:20.0 constant:?];
    v77[0] = v66;
    v37 = [v51 trailingAnchor];
    v64 = v37;
    v60 = v10;
    if (v10)
    {
      v38 = [v10 leadingAnchor];
      v39 = -10.0;
    }

    else
    {
      v38 = [(PXToastPlacardView *)v56 trailingAnchor];
      v39 = -20.0;
    }

    v62 = v38;
    v55 = [v37 constraintEqualToAnchor:v39 constant:?];
    v77[1] = v55;
    v53 = [v51 centerYAnchor];
    v49 = [(PXToastPlacardView *)v56 centerYAnchor];
    v40 = [v53 constraintEqualToAnchor:v49];
    v77[2] = v40;
    v41 = [v51 heightAnchor];
    v42 = [(PXToastPlacardView *)v56 heightAnchor];
    v43 = [v41 constraintLessThanOrEqualToAnchor:v42 constant:-40.0];
    v77[3] = v43;
    v44 = [(PXToastPlacardView *)v56 heightAnchor];
    v45 = [v44 constraintGreaterThanOrEqualToConstant:80.0];
    v77[4] = v45;
    v46 = [(PXToastPlacardView *)v56 widthAnchor];
    v47 = [v46 constraintEqualToConstant:v35];
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

- (void)addActionWithTitle:(id)a3 action:(id)a4
{
  v11 = a3;
  v6 = a4;
  actions = self->_actions;
  if (!actions)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = self->_actions;
    self->_actions = v8;

    actions = self->_actions;
  }

  v10 = [[_PXToastAction alloc] initWithTitle:v11 action:v6];
  [(NSMutableArray *)actions addObject:v10];
}

@end