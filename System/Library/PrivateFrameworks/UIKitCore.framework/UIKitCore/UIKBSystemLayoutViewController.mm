@interface UIKBSystemLayoutViewController
+ (id)systemLayoutViewControllerWithViewController:(id)a3;
- (CGSize)centeredOffsets;
- (UIEdgeInsets)minimumInsets;
- (void)updateViewConstraints;
@end

@implementation UIKBSystemLayoutViewController

+ (id)systemLayoutViewControllerWithViewController:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithNibName:0 bundle:0];
  v6 = [v5 view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5[125] = 1;
  v5[126] = 1;
  [v5 addChildViewController:v4];
  v7 = [v5 view];
  v8 = [v4 view];
  [v7 addSubview:v8];

  [v4 didMoveToParentViewController:v5];
  v9 = [v4 view];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 updateViewConstraints];

  return v5;
}

- (void)updateViewConstraints
{
  v47 = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = UIKBSystemLayoutViewController;
  [(UIViewController *)&v45 updateViewConstraints];
  v3 = [(UIViewController *)self view];
  [v3 removeConstraints:self->_constraints];

  [(NSMutableArray *)self->_constraints removeAllObjects];
  v4 = [(UIViewController *)self view];
  v5 = [v4 subviews];
  v6 = [v5 firstObject];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [(UIKBSystemLayoutViewController *)self horizontalLayoutType];
  v13 = 0;
  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_14;
      }

      v13 = 0;
      v14 = &unk_1EFE30F70;
    }

    else
    {
      v14 = &unk_1EFE30F58;
    }
  }

  else
  {
    if (v12 == 2)
    {
      v13 = 0;
    }

    else
    {
      if (v12 != 3)
      {
        if (v12 != 4)
        {
          goto LABEL_14;
        }

        v13 = v8 > 0.0;
      }

      [v11 addObject:&unk_1EFE30F58];
    }

    v14 = &unk_1EFE30F88;
  }

  [v11 addObject:v14];
LABEL_14:
  v15 = [(UIKBSystemLayoutViewController *)self verticalLayoutType];
  v16 = 0;
  v39 = v13;
  if (v15 <= 1)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_27;
      }

      v16 = 0;
      v17 = &unk_1EFE30FB8;
    }

    else
    {
      v17 = &unk_1EFE30FA0;
    }
  }

  else
  {
    if (v15 == 2)
    {
      v16 = 0;
    }

    else
    {
      if (v15 != 3)
      {
        if (v15 != 4)
        {
          goto LABEL_27;
        }

        v16 = v10 > 0.0;
      }

      [v11 addObject:&unk_1EFE30FA0];
    }

    v17 = &unk_1EFE30FD0;
  }

  [v11 addObject:v17];
LABEL_27:
  v38 = v16;
  if (!self->_constraints)
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
    constraints = self->_constraints;
    self->_constraints = v18;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v11;
  v20 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v42;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [*(*(&v41 + 1) + 8 * i) integerValue];
        v25 = v24;
        v26 = 0.0;
        if (v24 > 3)
        {
          switch(v24)
          {
            case 10:
              v27 = &OBJC_IVAR___UIKBSystemLayoutViewController__centeredOffsets;
LABEL_44:
              p_responderFlags = &self->super.super._responderFlags;
              break;
            case 9:
              v27 = &OBJC_IVAR___UIKBSystemLayoutViewController__centeredOffsets;
              p_responderFlags = self;
              break;
            case 4:
              v27 = &OBJC_IVAR___UIKBSystemLayoutViewController__minimumInsets;
              p_responderFlags = &self->super._overrideTransitioningDelegate;
              break;
            default:
              goto LABEL_48;
          }

LABEL_47:
          v26 = *&p_responderFlags[*v27];
          goto LABEL_48;
        }

        v27 = &OBJC_IVAR___UIKBSystemLayoutViewController__minimumInsets;
        if (v24 == 1)
        {
          goto LABEL_44;
        }

        if (v24 == 2)
        {
          p_responderFlags = &self->super._view;
          goto LABEL_47;
        }

        p_responderFlags = self;
        if (v24 == 3)
        {
          goto LABEL_47;
        }

LABEL_48:
        v29 = MEMORY[0x1E69977A0];
        v30 = [(UIViewController *)self view];
        v31 = [v29 constraintWithItem:v30 attribute:v25 relatedBy:0 toItem:v6 attribute:v25 multiplier:1.0 constant:v26];

        LODWORD(v32) = 1148846080;
        [v31 setPriority:v32];
        [(NSMutableArray *)self->_constraints addObject:v31];
      }

      v21 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v21);
  }

  if (v38)
  {
    v33 = self->_constraints;
    v34 = [MEMORY[0x1E69977A0] constraintWithItem:v6 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v10];
    [(NSMutableArray *)v33 addObject:v34];
  }

  if (v39)
  {
    v35 = self->_constraints;
    v36 = [MEMORY[0x1E69977A0] constraintWithItem:v6 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v8];
    [(NSMutableArray *)v35 addObject:v36];
  }

  v37 = [(UIViewController *)self view];
  [v37 addConstraints:self->_constraints];
}

- (UIEdgeInsets)minimumInsets
{
  top = self->_minimumInsets.top;
  left = self->_minimumInsets.left;
  bottom = self->_minimumInsets.bottom;
  right = self->_minimumInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)centeredOffsets
{
  width = self->_centeredOffsets.width;
  height = self->_centeredOffsets.height;
  result.height = height;
  result.width = width;
  return result;
}

@end