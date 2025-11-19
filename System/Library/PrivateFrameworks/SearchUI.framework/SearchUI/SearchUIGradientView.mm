@interface SearchUIGradientView
- (SearchUIGradientView)init;
- (void)setColors:(id)a3;
@end

@implementation SearchUIGradientView

- (SearchUIGradientView)init
{
  v3.receiver = self;
  v3.super_class = SearchUIGradientView;
  return [(SearchUIGradientView *)&v3 init];
}

- (void)setColors:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([v5 isEqualToArray:self->_colors] & 1) == 0)
  {
    objc_storeStrong(&self->_colors, a3);
    if ([v5 count] == 1)
    {
      v6 = [(SearchUIGradientView *)self layer];
      [v6 setColors:0];

      v7 = [v5 firstObject];
      v8 = self;
      v9 = v7;
    }

    else
    {
      v7 = objc_opt_new();
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v5;
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          v14 = 0;
          do
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v17 + 1) + 8 * v14);
            [v7 addObject:{objc_msgSend(v15, "CGColor", v17)}];
            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }

      v16 = [(SearchUIGradientView *)self layer];
      [v16 setColors:v7];

      v8 = self;
      v9 = 0;
    }

    [(SearchUIGradientView *)v8 setBackgroundColor:v9, v17];
  }
}

@end