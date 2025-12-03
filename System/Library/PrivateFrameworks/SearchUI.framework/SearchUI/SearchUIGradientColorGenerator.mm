@interface SearchUIGradientColorGenerator
- (void)generateUIColorsIsDark:(BOOL)dark completionHandler:(id)handler;
@end

@implementation SearchUIGradientColorGenerator

- (void)generateUIColorsIsDark:(BOOL)dark completionHandler:(id)handler
{
  darkCopy = dark;
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  sfColor = [(SearchUIColorGenerator *)self sfColor];
  colors = [sfColor colors];

  v9 = [colors countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(colors);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if ([v13 isMemberOfClass:objc_opt_class()])
        {
          v14 = [objc_alloc(objc_msgSend(v13 "searchUI_colorGeneratorClass"))];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __75__SearchUIGradientColorGenerator_generateUIColorsIsDark_completionHandler___block_invoke;
          v16[3] = &unk_1E85B4200;
          v17 = v6;
          [v14 generateUIColorsIsDark:darkCopy completionHandler:v16];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [colors countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  handlerCopy[2](handlerCopy, v6);
}

@end