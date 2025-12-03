@interface UIStatusBarOpenInSafariItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (id)_displayStringFromURL:(id)l;
- (id)_nominalTitleWithDestinationText:(id)text;
- (id)shortenedTitleWithCompressionLevel:(int)level;
- (void)userDidActivateButton:(id)button;
@end

@implementation UIStatusBarOpenInSafariItemView

- (id)_displayStringFromURL:(id)l
{
  if (l)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
    host = [v3 host];
  }

  else
  {
    host = 0;
  }

  return host;
}

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  dataCopy = data;
  rawData = [dataCopy rawData];
  if (*(rawData + 2793))
  {
    v7 = rawData;
    [(UIStatusBarOpenInSafariItemView *)self setSystemNavigationAction:0];
    v8 = MEMORY[0x1E695DFF8];
    2793 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7 + 2793];
    [v8 URLWithString:2793 encodingInvalidCharacters:0];
  }

  else
  {
    systemNavigationItem = [dataCopy systemNavigationItem];
    [(UIStatusBarOpenInSafariItemView *)self setSystemNavigationAction:systemNavigationItem];

    2793 = [(UIStatusBarOpenInSafariItemView *)self systemNavigationAction];
    [2793 URLForDestination:1];
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
      lastObject = [v15 lastObject];
      if ([v18 containsObject:lastObject])
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

  destinationText = [(UIStatusBarOpenInSafariItemView *)self destinationText];
  v23 = [destinationText isEqualToString:v21];

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

- (void)userDidActivateButton:(id)button
{
  systemNavigationAction = [(UIStatusBarOpenInSafariItemView *)self systemNavigationAction];
  canSendResponse = [systemNavigationAction canSendResponse];

  if (canSendResponse)
  {
    systemNavigationAction2 = [(UIStatusBarOpenInSafariItemView *)self systemNavigationAction];
    [systemNavigationAction2 sendResponseForDestination:1];
  }
}

- (id)_nominalTitleWithDestinationText:(id)text
{
  v3 = MEMORY[0x1E696AEC0];
  textCopy = text;
  v5 = _UILocalizedStringInSystemLanguage(@"StatusBar: Website", @"%@");
  textCopy = [v3 stringWithFormat:v5, textCopy];

  return textCopy;
}

- (id)shortenedTitleWithCompressionLevel:(int)level
{
  if (level == 1)
  {
    v5 = _UILocalizedStringInSystemLanguage(@"StatusBar: Webpage", @"Webpage");
LABEL_7:
    destinationText = 0;
    goto LABEL_8;
  }

  if (level)
  {
    v5 = 0;
    goto LABEL_7;
  }

  destinationText = [(UIStatusBarOpenInSafariItemView *)self destinationText];
  if ([destinationText length])
  {
    v5 = [(UIStatusBarOpenInSafariItemView *)self _nominalTitleWithDestinationText:destinationText];
  }

  else
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

@end