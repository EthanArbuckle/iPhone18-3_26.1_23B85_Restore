@interface PXSearchResultsDataUtility
+ (void)suggestionsDisplayDataFromSuggestion:(id)suggestion searchText:(id)text matchedColor:(id)color remainingColor:(id)remainingColor isTextCompletion:(BOOL)completion completion:(id)a8;
@end

@implementation PXSearchResultsDataUtility

+ (void)suggestionsDisplayDataFromSuggestion:(id)suggestion searchText:(id)text matchedColor:(id)color remainingColor:(id)remainingColor isTextCompletion:(BOOL)completion completion:(id)a8
{
  completionCopy = completion;
  suggestionCopy = suggestion;
  textCopy = text;
  colorCopy = color;
  remainingColorCopy = remainingColor;
  v16 = a8;
  px_symbolName = [suggestionCopy px_symbolName];
  if ([PXImageUtilities symbolIsEmbeddedGlyph:px_symbolName])
  {
    [MEMORY[0x1E69DCAB8] imageNamed:px_symbolName];
  }

  else
  {
    [MEMORY[0x1E69DCAB8] _systemImageNamed:px_symbolName];
  }
  v18 = ;
  if (completionCopy)
  {
    text = [suggestionCopy text];
    if (textCopy)
    {
      v20 = textCopy;
    }

    else
    {
      v20 = &stru_1F1741150;
    }

    text2 = [PXSearchDisplayUtility highlightedAttributedStringForString:text highlightedSubstring:v20 matchedColor:colorCopy remainingColor:remainingColorCopy];

    (*(v16 + 2))(v16, 0, text2, 0, v18);
  }

  else
  {
    text2 = [suggestionCopy text];
    (*(v16 + 2))(v16, text2, 0, 0, v18);
  }
}

@end