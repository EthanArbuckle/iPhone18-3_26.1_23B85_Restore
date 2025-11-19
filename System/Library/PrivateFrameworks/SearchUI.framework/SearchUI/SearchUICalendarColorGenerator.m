@interface SearchUICalendarColorGenerator
- (void)generateUIColorsIsDark:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation SearchUICalendarColorGenerator

- (void)generateUIColorsIsDark:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(SearchUIColorGenerator *)self sfColor];
  v8 = [v7 eventIdentifier];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__SearchUICalendarColorGenerator_generateUIColorsIsDark_completionHandler___block_invoke;
  v10[3] = &unk_1E85B4428;
  v12 = a3;
  v11 = v6;
  v9 = v6;
  [SearchUICalendarStore fetchCalendarItemFromEventIdentifier:v8 completionHandler:v10];
}

void __75__SearchUICalendarColorGenerator_generateUIColorsIsDark_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 calendar];
  v4 = [v3 CGColor];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] colorWithCGColor:v4];
    v6 = CUIKAdjustedColorForColor();

    v7 = [v6 colorWithAlphaComponent:0.9];

    v8 = *(a1 + 32);
    if (v7)
    {
      v11[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      (*(v8 + 16))(v8, v9);

      return;
    }
  }

  else
  {
    v8 = *(a1 + 32);
  }

  v10 = *(v8 + 16);

  v10(v8, 0);
}

@end