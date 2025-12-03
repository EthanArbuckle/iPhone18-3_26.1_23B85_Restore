@interface WSWebSheetInputSessionProxy
- (void)setSuggestions:(id)suggestions;
@end

@implementation WSWebSheetInputSessionProxy

- (void)setSuggestions:(id)suggestions
{
  v20 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  suggestions = [(_WKFormInputSession *)self->_target suggestions];
  v6 = [suggestions count];

  if (v6)
  {
    array = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    suggestions2 = [(_WKFormInputSession *)self->_target suggestions];
    v9 = [suggestions2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(suggestions2);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [suggestions2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [array addObjectsFromArray:suggestionsCopy];
    [(_WKFormInputSession *)self->_target setSuggestions:array];
  }

  else
  {
    [(_WKFormInputSession *)self->_target setSuggestions:suggestionsCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end