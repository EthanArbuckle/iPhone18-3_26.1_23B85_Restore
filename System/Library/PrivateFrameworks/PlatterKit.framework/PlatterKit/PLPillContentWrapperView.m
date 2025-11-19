@interface PLPillContentWrapperView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PLPillContentWrapperView)initWithFrame:(CGRect)a3;
- (id)_contentLabel;
- (void)_makeBottomConstraintBreakable;
- (void)_makeTopConstraintBreakable;
- (void)_setContentView:(id)a3 transitionCoordinator:(id)a4;
- (void)_updateConstraintsPriority;
- (void)beginAppearanceTransition:(BOOL)a3;
- (void)endAppearanceTransition:(BOOL)a3;
- (void)setContentItem:(id)a3 transitionCoordinator:(id)a4;
- (void)setTopConstraintBreakable:(BOOL)a3;
- (void)updateWithContentItem:(id)a3;
@end

@implementation PLPillContentWrapperView

- (PLPillContentWrapperView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PLPillContentWrapperView;
  v3 = [(PLPillContentWrapperView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->_preferredContentSizeCategory, *MEMORY[0x277D76860]);
    [(PLPillContentWrapperView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1132068864;
    [(PLPillContentWrapperView *)v4 setContentCompressionResistancePriority:0 forAxis:v5];
  }

  return v4;
}

- (void)setTopConstraintBreakable:(BOOL)a3
{
  if (self->_topConstraintBreakable != a3)
  {
    self->_topConstraintBreakable = a3;
    [(PLPillContentWrapperView *)self _updateConstraintsPriority];
  }
}

- (void)setContentItem:(id)a3 transitionCoordinator:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (([v12 isEqual:self->_contentItem] & 1) == 0)
  {
    objc_storeStrong(&self->_contentItem, a3);
    if (self->_adjustsFontForContentSizeCategory)
    {
      v8 = [(PLPillContentWrapperView *)self traitCollection];
      v9 = [v8 preferredContentSizeCategory];
      preferredContentSizeCategory = self->_preferredContentSizeCategory;
      self->_preferredContentSizeCategory = v9;
    }

    v11 = UIViewForPLPillContentItem(v12, self->_preferredContentSizeCategory);
    [(PLPillContentWrapperView *)self _setContentView:v11 transitionCoordinator:v7];
  }
}

- (void)beginAppearanceTransition:(BOOL)a3
{
  appearState = self->_appearState;
  if (a3)
  {
    if (appearState)
    {
      v5 = appearState == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      return;
    }

    v6 = 1;
  }

  else
  {
    if ((appearState - 1) > 1)
    {
      return;
    }

    v6 = 3;
  }

  self->_appearState = v6;
  if (![(PLPillContentItem *)self->_contentItem isSolo]&& self->_appearState == 3)
  {
    v7 = [(PLPillContentWrapperView *)self _contentLabel];
    [v7 setMarqueeRunning:0];
    [v7 _setMarqueeUpdatable:0];
  }
}

- (void)endAppearanceTransition:(BOOL)a3
{
  appearState = self->_appearState;
  if (a3)
  {
    if (appearState != 1)
    {
      return;
    }

    v5 = 2;
  }

  else
  {
    if (appearState != 3)
    {
      return;
    }

    v5 = 0;
  }

  self->_appearState = v5;
  if (![(PLPillContentItem *)self->_contentItem isSolo]&& self->_appearState == 2)
  {
    v6 = [(PLPillContentWrapperView *)self _contentLabel];
    [v6 setMarqueeRunning:1];
  }
}

- (void)updateWithContentItem:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_contentView)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [(PLPillContentWrapperView *)self _contentLabel];
      if (!v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v8 = [(UIView *)self->_contentView arrangedSubviews];
          v7 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v7)
          {
            v9 = *v35;
            while (2)
            {
              for (i = 0; i != v7; i = i + 1)
              {
                if (*v35 != v9)
                {
                  objc_enumerationMutation(v8);
                }

                v11 = *(*(&v34 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  v7 = v11;
                  goto LABEL_16;
                }
              }

              v7 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
              if (v7)
              {
                continue;
              }

              break;
            }
          }

LABEL_16:
        }

        else
        {
          v7 = 0;
        }
      }

      [v7 _setMarqueeUpdatable:1];
      v12 = [v5 text];
      [v7 setText:v12];
    }

    v13 = [v5 accessoryView];
    v14 = v13 == 0;

    if (!v14)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0x7FFFFFFFFFFFFFFFLL;
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x3032000000;
      v28[3] = __Block_byref_object_copy_;
      v28[4] = __Block_byref_object_dispose_;
      v29 = 0;
      contentView = self->_contentView;
      v16 = objc_opt_class();
      v17 = contentView;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (v19)
      {
        v20 = [(UIView *)v19 arrangedSubviews];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __50__PLPillContentWrapperView_updateWithContentItem___block_invoke;
        v27[3] = &unk_2784253F0;
        v27[4] = &v30;
        v27[5] = v28;
        [v20 enumerateObjectsUsingBlock:v27];

        if (v31[3] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = MEMORY[0x277D75D18];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __50__PLPillContentWrapperView_updateWithContentItem___block_invoke_2;
          v22[3] = &unk_278425418;
          v23 = v19;
          v24 = v5;
          v25 = &v30;
          v26 = v28;
          [v21 performWithoutAnimation:v22];
        }
      }

      _Block_object_dispose(v28, 8);
      _Block_object_dispose(&v30, 8);
    }
  }
}

void __50__PLPillContentWrapperView_updateWithContentItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __50__PLPillContentWrapperView_updateWithContentItem___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) accessoryView];
  [v2 insertArrangedSubview:v3 atIndex:*(*(*(a1 + 48) + 8) + 24)];

  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 56) + 8) + 40);

  return [v4 removeArrangedSubview:v5];
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_contentView intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(PLPillContentWrapperView *)self _contentLabel];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 font];
    [v9 capHeight];
    v11 = v10;
    [v9 descender];
    v13 = v11 - v12;
    [v9 _scaledValueForValue:2.0];
    v6 = ceil(v13 + v14);
  }

  v15 = v4;
  v16 = v6;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self->_contentView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)adjustsFontForContentSizeCategory
{
  if (!self->_adjustsFontForContentSizeCategory)
  {
    return 0;
  }

  v2 = [(PLPillContentWrapperView *)self _contentLabel];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(PLPillContentWrapperView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (self->_adjustsFontForContentSizeCategory && (BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, v4);
    v6 = [(PLPillContentWrapperView *)self _contentLabel];
    if (v6)
    {
      PLConfigureUILabelWithPLPillContentItemStyle(v6, [(PLPillContentItem *)self->_contentItem style], [(PLPillContentItem *)self->_contentItem isSolo]^ 1, self->_preferredContentSizeCategory);
    }

    [(PLPillContentWrapperView *)self invalidateIntrinsicContentSize];
    [(PLPillContentWrapperView *)self setNeedsLayout];

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateConstraintsPriority
{
  if (self->_topConstraintBreakable)
  {
    [(PLPillContentWrapperView *)self _makeTopConstraintBreakable];
  }

  else
  {
    [(PLPillContentWrapperView *)self _makeBottomConstraintBreakable];
  }
}

- (void)_makeTopConstraintBreakable
{
  LODWORD(v2) = 1132068864;
  [(NSLayoutConstraint *)self->_topConstraint setPriority:v2];
  bottomConstraint = self->_bottomConstraint;
  LODWORD(v5) = 1148846080;

  [(NSLayoutConstraint *)bottomConstraint setPriority:v5];
}

- (void)_makeBottomConstraintBreakable
{
  LODWORD(v2) = 1132068864;
  [(NSLayoutConstraint *)self->_bottomConstraint setPriority:v2];
  topConstraint = self->_topConstraint;
  LODWORD(v5) = 1148846080;

  [(NSLayoutConstraint *)topConstraint setPriority:v5];
}

- (void)_setContentView:(id)a3 transitionCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  contentView = self->_contentView;
  if (contentView != v7)
  {
    v32 = contentView;
    objc_storeStrong(&self->_contentView, a3);
    [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PLPillContentWrapperView *)self addSubview:v7];
    v10 = [(PLPillContentWrapperView *)self leftAnchor];
    v11 = [(UIView *)v7 leftAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    v13 = [(PLPillContentWrapperView *)self rightAnchor];
    v14 = [(UIView *)v7 rightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    LODWORD(v16) = 1144750080;
    [(PLPillContentWrapperView *)self setContentHuggingPriority:1 forAxis:v16];
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v12, v15, 0}];
    v18 = [(PLPillContentWrapperView *)self _contentLabel];

    if (v18)
    {
      v19 = [(PLPillContentWrapperView *)self centerYAnchor];
      v20 = [(UIView *)v7 centerYAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];

      LODWORD(v22) = 1148846080;
      [(NSLayoutConstraint *)v21 setPriority:v22];
    }

    else
    {
      v23 = [(PLPillContentWrapperView *)self topAnchor];
      v24 = [(UIView *)v7 topAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];

      topConstraint = self->_topConstraint;
      self->_topConstraint = v25;
      v27 = v25;

      v28 = [(PLPillContentWrapperView *)self bottomAnchor];
      v29 = [(UIView *)v7 bottomAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];

      bottomConstraint = self->_bottomConstraint;
      self->_bottomConstraint = v30;
      v21 = v30;

      [v17 addObject:v27];
    }

    [v17 addObject:v21];

    [MEMORY[0x277CCAAD0] activateConstraints:v17];
    [(PLPillContentWrapperView *)self _updateConstraintsPriority];
    [(PLPillContentWrapperView *)self invalidateIntrinsicContentSize];
    if (v8)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __66__PLPillContentWrapperView__setContentView_transitionCoordinator___block_invoke;
      v38[3] = &unk_2784250D8;
      v38[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v38];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __66__PLPillContentWrapperView__setContentView_transitionCoordinator___block_invoke_2;
      v35[3] = &unk_278425440;
      v36 = v32;
      v37 = self;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __66__PLPillContentWrapperView__setContentView_transitionCoordinator___block_invoke_3;
      v33[3] = &unk_2784251C8;
      v34 = v36;
      [v8 animateAlongsideTransition:v35 completion:v33];
    }

    else
    {
      [(UIView *)v32 removeFromSuperview];
      [(UIView *)self pl_performCrossFadeIfNecessary];
    }
  }
}

uint64_t __66__PLPillContentWrapperView__setContentView_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(*(a1 + 40) + 408);

  return [v2 setAlpha:1.0];
}

- (id)_contentLabel
{
  contentView = self->_contentView;
  v3 = objc_opt_class();
  v4 = contentView;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

@end