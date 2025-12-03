@interface SearchUIColorGenerator
- (SearchUIColorGenerator)initWithSFColor:(id)color;
- (void)generateUIColorsIsDark:(BOOL)dark completionHandler:(id)handler;
@end

@implementation SearchUIColorGenerator

- (SearchUIColorGenerator)initWithSFColor:(id)color
{
  colorCopy = color;
  v8.receiver = self;
  v8.super_class = SearchUIColorGenerator;
  v5 = [(SearchUIColorGenerator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUIColorGenerator *)v5 setSfColor:colorCopy];
  }

  return v6;
}

- (void)generateUIColorsIsDark:(BOOL)dark completionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  sfColor = [(SearchUIColorGenerator *)self sfColor];
  v7 = MEMORY[0x1E69DC888];
  [sfColor redComponent];
  v9 = fmin(v8, 1.0);
  [sfColor greenComponent];
  v11 = fmin(v10, 1.0);
  [sfColor blueComponent];
  v13 = fmin(v12, 1.0);
  [sfColor alphaComponent];
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
    handlerCopy[2](handlerCopy, v17);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

@end