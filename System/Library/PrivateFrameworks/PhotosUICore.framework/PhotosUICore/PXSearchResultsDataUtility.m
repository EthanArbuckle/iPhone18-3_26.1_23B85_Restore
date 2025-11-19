@interface PXSearchResultsDataUtility
+ (void)suggestionsDisplayDataFromSuggestion:(id)a3 searchText:(id)a4 matchedColor:(id)a5 remainingColor:(id)a6 isTextCompletion:(BOOL)a7 completion:(id)a8;
@end

@implementation PXSearchResultsDataUtility

+ (void)suggestionsDisplayDataFromSuggestion:(id)a3 searchText:(id)a4 matchedColor:(id)a5 remainingColor:(id)a6 isTextCompletion:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = [v22 px_symbolName];
  if ([PXImageUtilities symbolIsEmbeddedGlyph:v17])
  {
    [MEMORY[0x1E69DCAB8] imageNamed:v17];
  }

  else
  {
    [MEMORY[0x1E69DCAB8] _systemImageNamed:v17];
  }
  v18 = ;
  if (v9)
  {
    v19 = [v22 text];
    if (v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = &stru_1F1741150;
    }

    v21 = [PXSearchDisplayUtility highlightedAttributedStringForString:v19 highlightedSubstring:v20 matchedColor:v14 remainingColor:v15];

    (*(v16 + 2))(v16, 0, v21, 0, v18);
  }

  else
  {
    v21 = [v22 text];
    (*(v16 + 2))(v16, v21, 0, 0, v18);
  }
}

@end