@interface WSWebSheetInputSessionProxy
- (void)setSuggestions:(id)a3;
@end

@implementation WSWebSheetInputSessionProxy

- (void)setSuggestions:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_WKFormInputSession *)self->_target suggestions];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(_WKFormInputSession *)self->_target suggestions];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v7 addObjectsFromArray:v4];
    [(_WKFormInputSession *)self->_target setSuggestions:v7];
  }

  else
  {
    [(_WKFormInputSession *)self->_target setSuggestions:v4];
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end