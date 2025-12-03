@interface CACAppElementsEvaluatorStandardFilter
- (id)actionableAXElementsFromAXElements:(id)elements;
@end

@implementation CACAppElementsEvaluatorStandardFilter

- (id)actionableAXElementsFromAXElements:(id)elements
{
  v27 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = elementsCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    v10 = *MEMORY[0x277CE6D78] | *MEMORY[0x277CE6D00] | *MEMORY[0x277CE6E08] | *MEMORY[0x277CE6D70];
    v11 = *MEMORY[0x277CE6D38] | *MEMORY[0x277CE6E70] | *MEMORY[0x277CE6D68];
    *&v7 = 138478083;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 hasAnyTraits:{v10 | v11, v17, v18}])
        {
          [array addObject:v13];
        }

        else
        {
          v14 = CACLogElementEvaluation();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [v13 traits];
            v15 = _AXTraitsAsString();
            *buf = v17;
            v23 = v13;
            v24 = 2112;
            v25 = v15;
            _os_log_debug_impl(&dword_26B354000, v14, OS_LOG_TYPE_DEBUG, "Filtering %{private}@ with traits %@", buf, 0x16u);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  return array;
}

@end