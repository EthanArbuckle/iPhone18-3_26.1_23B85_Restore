@interface TLKKeyValueGridView
- (TLKKeyValueGridView)init;
- (void)updateWithTuples:(id)tuples valueColumnIsTrailing:(BOOL)trailing truncateKey:(BOOL)key;
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

- (void)updateWithTuples:(id)tuples valueColumnIsTrailing:(BOOL)trailing truncateKey:(BOOL)key
{
  keyCopy = key;
  trailingCopy = trailing;
  v46[2] = *MEMORY[0x1E69E9840];
  tuplesCopy = tuples;
  v8 = [tuplesCopy count];
  if (v8 != [(NUIContainerGridView *)self numberOfRows])
  {
    numberOfRows = [(NUIContainerGridView *)self numberOfRows];
    if (numberOfRows >= [tuplesCopy count])
    {
      for (i = [tuplesCopy count]; i < -[NUIContainerGridView numberOfRows](self, "numberOfRows"); ++i)
      {
        v44 = [(NUIContainerGridView *)self rowAtIndex:i];
        [v44 setHidden:1];
      }
    }

    else
    {
      numberOfRows2 = [(NUIContainerGridView *)self numberOfRows];
      if (numberOfRows2 < [tuplesCopy count])
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
          keyLabels = [(TLKKeyValueGridView *)self keyLabels];
          [keyLabels addObject:v32];

          valueLabels = [(TLKKeyValueGridView *)self valueLabels];
          [valueLabels addObject:v34];

          v46[0] = v32;
          v46[1] = v34;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
          v41 = [(NUIContainerGridView *)self addRowWithArrangedSubviews:v40];

          numberOfRows3 = [(NUIContainerGridView *)self numberOfRows];
        }

        while (numberOfRows3 < [tuplesCopy count]);
      }
    }
  }

  if ([tuplesCopy count])
  {
    if (trailingCopy)
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

  if ([tuplesCopy count])
  {
    v11 = 0;
    do
    {
      v12 = [tuplesCopy objectAtIndexedSubscript:v11];
      v13 = [v12 key];
      keyLabels2 = [(TLKKeyValueGridView *)self keyLabels];
      v15 = [keyLabels2 objectAtIndexedSubscript:v11];
      [v15 setText:v13];

      value = [v12 value];
      valueLabels2 = [(TLKKeyValueGridView *)self valueLabels];
      v18 = [valueLabels2 objectAtIndexedSubscript:v11];
      [v18 setText:value];

      if (trailingCopy)
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

      valueLabels3 = [(TLKKeyValueGridView *)self valueLabels];
      v21 = [valueLabels3 objectAtIndexedSubscript:v11];
      [v21 setTextAlignment:v19];

      keyLabels3 = [(TLKKeyValueGridView *)self keyLabels];
      v23 = [keyLabels3 objectAtIndexedSubscript:v11];
      *&v24 = 1000.0 - keyCopy;
      [v23 setContentCompressionResistancePriority:0 forAxis:v24];

      valueLabels4 = [(TLKKeyValueGridView *)self valueLabels];
      v26 = [valueLabels4 objectAtIndexedSubscript:v11];
      *&v27 = 1000.0 - !keyCopy;
      [v26 setContentCompressionResistancePriority:0 forAxis:v27];

      v28 = [(NUIContainerGridView *)self rowAtIndex:v11];
      [v28 setHidden:0];

      ++v11;
    }

    while (v11 < [tuplesCopy count]);
  }
}

@end