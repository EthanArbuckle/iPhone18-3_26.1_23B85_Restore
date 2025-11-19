@interface SearchUIColorGenerator
- (SearchUIColorGenerator)initWithSFColor:(id)a3;
- (void)generateUIColorsIsDark:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation SearchUIColorGenerator

- (SearchUIColorGenerator)initWithSFColor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SearchUIColorGenerator;
  v5 = [(SearchUIColorGenerator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUIColorGenerator *)v5 setSfColor:v4];
  }

  return v6;
}

- (void)generateUIColorsIsDark:(BOOL)a3 completionHandler:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SearchUIColorGenerator *)self sfColor];
  v7 = MEMORY[0x1E69DC888];
  [v6 redComponent];
  v9 = fmin(v8, 1.0);
  [v6 greenComponent];
  v11 = fmin(v10, 1.0);
  [v6 blueComponent];
  v13 = fmin(v12, 1.0);
  [v6 alphaComponent];
  if (v14 == 0.0)
  {
    v14 = 1.0;
  }

  v15 = [v7 colorWithRed:v9 green:v11 blue:v13 alpha:{fmin(v14, 1.0)}];
  v16 = v15;
  if (v15)
  {
    v18[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v5[2](v5, v17);
  }

  else
  {
    v5[2](v5, 0);
  }
}

@end