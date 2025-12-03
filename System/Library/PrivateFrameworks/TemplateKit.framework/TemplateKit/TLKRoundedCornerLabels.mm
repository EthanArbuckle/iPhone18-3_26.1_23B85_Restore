@interface TLKRoundedCornerLabels
- (TLKRoundedCornerLabels)init;
- (void)setProminence:(unint64_t)prominence;
- (void)setSizeConfiguration:(unint64_t)configuration;
- (void)updateRoundedText:(id)text;
@end

@implementation TLKRoundedCornerLabels

- (TLKRoundedCornerLabels)init
{
  v5.receiver = self;
  v5.super_class = TLKRoundedCornerLabels;
  v2 = [(TLKRoundedCornerLabels *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(TLKRoundedCornerLabels *)v2 setRoundedLabels:v3];

    [TLKLayoutUtilities deviceScaledRoundedValue:v2 forView:5.0];
    [(NUIContainerStackView *)v2 setSpacing:?];
  }

  return v2;
}

- (void)setProminence:(unint64_t)prominence
{
  v15 = *MEMORY[0x1E69E9840];
  self->_prominence = prominence;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  roundedLabels = [(TLKRoundedCornerLabels *)self roundedLabels];
  v5 = [roundedLabels countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(roundedLabels);
        }

        label = [*(*(&v10 + 1) + 8 * v8) label];
        [label setProminence:prominence];

        ++v8;
      }

      while (v6 != v8);
      v6 = [roundedLabels countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setSizeConfiguration:(unint64_t)configuration
{
  v14 = *MEMORY[0x1E69E9840];
  self->_sizeConfiguration = configuration;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  roundedLabels = [(TLKRoundedCornerLabels *)self roundedLabels];
  v5 = [roundedLabels countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(roundedLabels);
        }

        [*(*(&v9 + 1) + 8 * v8++) setSizeConfiguration:configuration];
      }

      while (v6 != v8);
      v6 = [roundedLabels countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)updateRoundedText:(id)text
{
  textCopy = text;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__TLKRoundedCornerLabels_updateRoundedText___block_invoke;
  v6[3] = &unk_1E7FD8DA8;
  v7 = textCopy;
  selfCopy = self;
  v5 = textCopy;
  [(TLKRoundedCornerLabels *)self performBatchUpdates:v6];
}

void __44__TLKRoundedCornerLabels_updateRoundedText___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = [*(a1 + 40) roundedLabels];
  v4 = [v3 count];

  if (v2 > v4)
  {
    do
    {
      v5 = -[TLKRoundedCornerLabel initWithProminence:]([TLKRoundedCornerLabel alloc], "initWithProminence:", [*(a1 + 40) prominence]);
      -[TLKRoundedCornerLabel setSizeConfiguration:](v5, "setSizeConfiguration:", [*(a1 + 40) sizeConfiguration]);
      [TLKLayoutUtilities requireIntrinsicSizeForView:v5];
      v6 = [*(a1 + 40) roundedLabels];
      [v6 addObject:v5];

      [*(a1 + 40) addArrangedSubview:v5];
      v7 = [*(a1 + 32) count];
      v8 = [*(a1 + 40) roundedLabels];
      v9 = [v8 count];
    }

    while (v7 > v9);
  }

  v10 = [*(a1 + 40) roundedLabels];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = [*(a1 + 32) count];
      v14 = [*(a1 + 40) roundedLabels];
      v15 = [v14 objectAtIndexedSubscript:v12];
      v16 = v15;
      if (v12 >= v13)
      {
        [v15 setHidden:1];
      }

      else
      {
        [v15 setHidden:0];

        v14 = [*(a1 + 32) objectAtIndexedSubscript:v12];
        v16 = [v14 string];
        v17 = [*(a1 + 40) roundedLabels];
        v18 = [v17 objectAtIndexedSubscript:v12];
        v19 = [v18 label];
        [v19 setText:v16];
      }

      ++v12;
      v20 = [*(a1 + 40) roundedLabels];
      v21 = [v20 count];
    }

    while (v12 < v21);
  }
}

@end