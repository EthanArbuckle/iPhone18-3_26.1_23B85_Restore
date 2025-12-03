@interface SearchUIGradientView
- (SearchUIGradientView)init;
- (void)setColors:(id)colors;
@end

@implementation SearchUIGradientView

- (SearchUIGradientView)init
{
  v3.receiver = self;
  v3.super_class = SearchUIGradientView;
  return [(SearchUIGradientView *)&v3 init];
}

- (void)setColors:(id)colors
{
  v22 = *MEMORY[0x1E69E9840];
  colorsCopy = colors;
  if (([colorsCopy isEqualToArray:self->_colors] & 1) == 0)
  {
    objc_storeStrong(&self->_colors, colors);
    if ([colorsCopy count] == 1)
    {
      layer = [(SearchUIGradientView *)self layer];
      [layer setColors:0];

      firstObject = [colorsCopy firstObject];
      selfCopy2 = self;
      v9 = firstObject;
    }

    else
    {
      firstObject = objc_opt_new();
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = colorsCopy;
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
            [firstObject addObject:{objc_msgSend(v15, "CGColor", v17)}];
            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }

      layer2 = [(SearchUIGradientView *)self layer];
      [layer2 setColors:firstObject];

      selfCopy2 = self;
      v9 = 0;
    }

    [(SearchUIGradientView *)selfCopy2 setBackgroundColor:v9, v17];
  }
}

@end