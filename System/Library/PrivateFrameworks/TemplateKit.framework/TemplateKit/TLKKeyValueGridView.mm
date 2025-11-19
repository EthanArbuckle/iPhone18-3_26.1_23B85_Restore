@interface TLKKeyValueGridView
- (TLKKeyValueGridView)init;
- (void)updateWithTuples:(id)a3 valueColumnIsTrailing:(BOOL)a4 truncateKey:(BOOL)a5;
@end

@implementation TLKKeyValueGridView

- (TLKKeyValueGridView)init
{
  v7.receiver = self;
  v7.super_class = TLKKeyValueGridView;
  v2 = [(NUIContainerGridView *)&v7 initWithArrangedSubviewRows:0];
  v3 = v2;
  if (v2)
  {
    [(NUIContainerGridView *)v2 setRowSpacing:4.0];
    v4 = objc_opt_new();
    [(TLKKeyValueGridView *)v3 setKeyLabels:v4];

    v5 = objc_opt_new();
    [(TLKKeyValueGridView *)v3 setValueLabels:v5];

    [(NUIContainerGridView *)v3 setColumnSpacing:16.0];
  }

  return v3;
}

- (void)updateWithTuples:(id)a3 valueColumnIsTrailing:(BOOL)a4 truncateKey:(BOOL)a5
{
  v45 = a5;
  v5 = a4;
  v46[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 count];
  if (v8 != [(NUIContainerGridView *)self numberOfRows])
  {
    v29 = [(NUIContainerGridView *)self numberOfRows];
    if (v29 >= [v7 count])
    {
      for (i = [v7 count]; i < -[NUIContainerGridView numberOfRows](self, "numberOfRows"); ++i)
      {
        v44 = [(NUIContainerGridView *)self rowAtIndex:i];
        [v44 setHidden:1];
      }
    }

    else
    {
      v30 = [(NUIContainerGridView *)self numberOfRows];
      if (v30 < [v7 count])
      {
        v31 = *MEMORY[0x1E69DDD28];
        do
        {
          v32 = objc_opt_new();
          v33 = +[TLKFontUtilities footnoteFont];
          [v32 setFont:v33];

          v34 = objc_opt_new();
          v35 = [TLKFontUtilities cachedFontForTextStyle:v31 isShort:0 isBold:1];
          [v34 setFont:v35];

          LODWORD(v36) = 1148846080;
          [v32 setContentHuggingPriority:0 forAxis:v36];
          LODWORD(v37) = 1148829696;
          [v34 setContentHuggingPriority:0 forAxis:v37];
          v38 = [(TLKKeyValueGridView *)self keyLabels];
          [v38 addObject:v32];

          v39 = [(TLKKeyValueGridView *)self valueLabels];
          [v39 addObject:v34];

          v46[0] = v32;
          v46[1] = v34;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
          v41 = [(NUIContainerGridView *)self addRowWithArrangedSubviews:v40];

          v42 = [(NUIContainerGridView *)self numberOfRows];
        }

        while (v42 < [v7 count]);
      }
    }
  }

  if ([v7 count])
  {
    if (v5)
    {
      v9 = 4;
    }

    else
    {
      v9 = 1;
    }

    v10 = [(NUIContainerGridView *)self columnAtIndex:1];
    [v10 setAlignment:v9];
  }

  if ([v7 count])
  {
    v11 = 0;
    do
    {
      v12 = [v7 objectAtIndexedSubscript:v11];
      v13 = [v12 key];
      v14 = [(TLKKeyValueGridView *)self keyLabels];
      v15 = [v14 objectAtIndexedSubscript:v11];
      [v15 setText:v13];

      v16 = [v12 value];
      v17 = [(TLKKeyValueGridView *)self valueLabels];
      v18 = [v17 objectAtIndexedSubscript:v11];
      [v18 setText:v16];

      if (v5)
      {
        if (+[TLKLayoutUtilities isLTR])
        {
          v19 = 2;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = [(TLKKeyValueGridView *)self valueLabels];
      v21 = [v20 objectAtIndexedSubscript:v11];
      [v21 setTextAlignment:v19];

      v22 = [(TLKKeyValueGridView *)self keyLabels];
      v23 = [v22 objectAtIndexedSubscript:v11];
      *&v24 = 1000.0 - v45;
      [v23 setContentCompressionResistancePriority:0 forAxis:v24];

      v25 = [(TLKKeyValueGridView *)self valueLabels];
      v26 = [v25 objectAtIndexedSubscript:v11];
      *&v27 = 1000.0 - !v45;
      [v26 setContentCompressionResistancePriority:0 forAxis:v27];

      v28 = [(NUIContainerGridView *)self rowAtIndex:v11];
      [v28 setHidden:0];

      ++v11;
    }

    while (v11 < [v7 count]);
  }
}

@end