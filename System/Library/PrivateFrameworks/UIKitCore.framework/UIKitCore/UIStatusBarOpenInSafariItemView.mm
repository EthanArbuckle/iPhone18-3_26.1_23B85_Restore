@interface UIStatusBarOpenInSafariItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (id)_displayStringFromURL:(id)a3;
- (id)_nominalTitleWithDestinationText:(id)a3;
- (id)shortenedTitleWithCompressionLevel:(int)a3;
- (void)userDidActivateButton:(id)a3;
@end

@implementation UIStatusBarOpenInSafariItemView

- (id)_displayStringFromURL:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
    v4 = [v3 host];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = a3;
  v6 = [v5 rawData];
  if (*(v6 + 2793))
  {
    v7 = v6;
    [(UIStatusBarOpenInSafariItemView *)self setSystemNavigationAction:0];
    v8 = MEMORY[0x1E695DFF8];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7 + 2793];
    [v8 URLWithString:v9 encodingInvalidCharacters:0];
  }

  else
  {
    v10 = [v5 systemNavigationItem];
    [(UIStatusBarOpenInSafariItemView *)self setSystemNavigationAction:v10];

    v9 = [(UIStatusBarOpenInSafariItemView *)self systemNavigationAction];
    [v9 URLForDestination:1];
  }
  v11 = ;

  v12 = [(UIStatusBarOpenInSafariItemView *)self _displayStringFromURL:v11];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 componentsSeparatedByString:@"."];
    v15 = [v14 mutableCopy];

    if ([v15 count])
    {
      v16 = [v15 objectAtIndexedSubscript:0];
      v17 = [v16 isEqualToString:@"www"];

      if (v17)
      {
        [v15 removeObjectAtIndex:0];
      }
    }

    if ([v15 count])
    {
      if (qword_1ED499438 != -1)
      {
        dispatch_once(&qword_1ED499438, &__block_literal_global_507);
      }

      v18 = _MergedGlobals_1_23;
      v19 = [v15 lastObject];
      if ([v18 containsObject:v19])
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      if ([v15 count] > v20)
      {
        [v15 removeObjectsInRange:{0, objc_msgSend(v15, "count") - v20}];
      }
    }

    v21 = [v15 componentsJoinedByString:@"."];
  }

  else
  {
    v21 = 0;
  }

  v22 = [(UIStatusBarOpenInSafariItemView *)self destinationText];
  v23 = [v22 isEqualToString:v21];

  if ((v23 & 1) == 0)
  {
    [(UIStatusBarOpenInSafariItemView *)self setDestinationText:v21];
    [(UIStatusBarSystemNavigationItemView *)self setCurrentLabelCompressionLevel:0];
    v24 = [(UIStatusBarOpenInSafariItemView *)self shortenedTitleWithCompressionLevel:0];
    [(UIStatusBarSystemNavigationItemView *)self setTitle:v24];
  }

  return v23 ^ 1;
}

void __60__UIStatusBarOpenInSafariItemView_updateForNewData_actions___block_invoke()
{
  v0 = _MergedGlobals_1_23;
  _MergedGlobals_1_23 = &unk_1EFE2D558;
}

- (void)userDidActivateButton:(id)a3
{
  v4 = [(UIStatusBarOpenInSafariItemView *)self systemNavigationAction];
  v5 = [v4 canSendResponse];

  if (v5)
  {
    v6 = [(UIStatusBarOpenInSafariItemView *)self systemNavigationAction];
    [v6 sendResponseForDestination:1];
  }
}

- (id)_nominalTitleWithDestinationText:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = _UILocalizedStringInSystemLanguage(@"StatusBar: Website", @"%@");
  v6 = [v3 stringWithFormat:v5, v4];

  return v6;
}

- (id)shortenedTitleWithCompressionLevel:(int)a3
{
  if (a3 == 1)
  {
    v5 = _UILocalizedStringInSystemLanguage(@"StatusBar: Webpage", @"Webpage");
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (a3)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = [(UIStatusBarOpenInSafariItemView *)self destinationText];
  if ([v4 length])
  {
    v5 = [(UIStatusBarOpenInSafariItemView *)self _nominalTitleWithDestinationText:v4];
  }

  else
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

@end