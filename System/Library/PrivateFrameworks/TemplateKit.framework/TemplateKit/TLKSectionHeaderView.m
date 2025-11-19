@interface TLKSectionHeaderView
- (id)headerLabelText;
- (id)setupContentView;
- (void)observedPropertiesChanged;
- (void)setHeaderText:(id)a3;
@end

@implementation TLKSectionHeaderView

- (id)setupContentView
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = [TLKProminenceView viewWithProminence:3];
  [(TLKSectionHeaderView *)self setBackgroundView:v3];
  v4 = objc_opt_new();
  v5 = +[TLKFontUtilities subheadFont];
  [v4 setFont:v5];

  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:8.0];
  v7 = -v6;
  +[TLKUtilities standardTableCellContentInset];
  v9 = -v8;
  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:8.0];
  v11 = -v10;
  +[TLKUtilities standardTableCellContentInset];
  [v4 setCustomAlignmentRectInsets:{v7, v9, v11, -v12}];
  [(TLKSectionHeaderView *)self setHeaderTextLabel:v4];
  v13 = objc_alloc(MEMORY[0x1E698B718]);
  v17[0] = v3;
  v17[1] = v4;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v15 = [v13 initWithArrangedSubviews:v14];

  [v15 setHorizontalAlignment:1];
  [v15 setAlignment:0 forView:v3 inAxis:0];
  [v15 setAlignment:0 forView:v3 inAxis:1];
  [v15 setLayoutMargins:{0.0, 0.0, 0.0, 0.0}];
  [(TLKSectionHeaderView *)self setMinimumLayoutSize:0.0, 8.0];

  return v15;
}

- (void)setHeaderText:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_headerText setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_headerText;
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_headerText, a3);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_headerText setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_headerText;
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)observedPropertiesChanged
{
  v3 = [(TLKSectionHeaderView *)self headerText];
  v4 = [(TLKSectionHeaderView *)self headerTextLabel];
  [v4 setMultilineText:v3];

  v5 = [(TLKSectionHeaderView *)self headerText];
  v6 = [v5 text];
  v7 = [v6 length];

  v8 = [(TLKSectionHeaderView *)self headerTextLabel];
  LODWORD(v6) = [v8 isHidden];

  if ((v7 == 0) != v6)
  {
    v9 = [(TLKSectionHeaderView *)self headerTextLabel];
    [v9 setHidden:v7 == 0];
  }
}

- (id)headerLabelText
{
  v2 = [(TLKSectionHeaderView *)self headerTextLabel];
  v3 = [v2 text];

  return v3;
}

@end