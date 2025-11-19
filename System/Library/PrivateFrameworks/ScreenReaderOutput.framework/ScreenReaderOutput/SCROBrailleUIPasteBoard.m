@interface SCROBrailleUIPasteBoard
+ (id)sharedBoard;
- (NSString)braille;
- (NSString)text;
- (void)reset;
- (void)writeBraille:(id)a3;
- (void)writeText:(id)a3;
- (void)writeText:(id)a3 withBraille:(id)a4;
@end

@implementation SCROBrailleUIPasteBoard

+ (id)sharedBoard
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SCROBrailleUIPasteBoard_sharedBoard__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedBoard_onceToken != -1)
  {
    dispatch_once(&sharedBoard_onceToken, block);
  }

  v2 = sharedBoard__sharedBoard;

  return v2;
}

uint64_t __38__SCROBrailleUIPasteBoard_sharedBoard__block_invoke(uint64_t a1)
{
  sharedBoard__sharedBoard = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)writeText:(id)a3
{
  v6 = a3;
  v4 = [(SCROBrailleUIPasteBoard *)self textRepresentation];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(SCROBrailleUIPasteBoard *)self setTextRepresentation:v6];
    [(SCROBrailleUIPasteBoard *)self setBrailleRepresentation:0];
  }
}

- (void)writeBraille:(id)a3
{
  v6 = a3;
  v4 = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(SCROBrailleUIPasteBoard *)self setBrailleRepresentation:v6];
    [(SCROBrailleUIPasteBoard *)self setTextRepresentation:0];
  }
}

- (void)writeText:(id)a3 withBraille:(id)a4
{
  v6 = a4;
  [(SCROBrailleUIPasteBoard *)self setTextRepresentation:a3];
  [(SCROBrailleUIPasteBoard *)self setBrailleRepresentation:v6];
}

- (NSString)text
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(SCROBrailleUIPasteBoard *)self textRepresentation];

  if (v3)
  {
    v4 = [(SCROBrailleUIPasteBoard *)self textRepresentation];
  }

  else
  {
    v5 = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];

    if (v5)
    {
      v6 = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];
      v7 = [MEMORY[0x277CCA900] newlineCharacterSet];
      v8 = [v6 componentsSeparatedByCharactersInSet:v7];

      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v16 = +[SCROBrailleTranslationManager inputManager];
            v17 = [v16 textForPrintBraille:v15 language:0 mode:1 locations:0];

            if (v17)
            {
              [v9 addObject:v17];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      v18 = [v9 componentsJoinedByString:@"\n"];
      [(SCROBrailleUIPasteBoard *)self setTextRepresentation:v18];

      v4 = [(SCROBrailleUIPasteBoard *)self textRepresentation];
    }

    else
    {
      v4 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSString)braille
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];

  if (v3)
  {
    v4 = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];
  }

  else
  {
    v5 = [(SCROBrailleUIPasteBoard *)self textRepresentation];

    if (v5)
    {
      v6 = [(SCROBrailleUIPasteBoard *)self textRepresentation];
      v7 = [MEMORY[0x277CCA900] newlineCharacterSet];
      v8 = [v6 componentsSeparatedByCharactersInSet:v7];

      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v16 = +[SCROBrailleTranslationManager sharedManager];
            v17 = [v16 printBrailleForText:v15 language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];
            [v9 addObject:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      v18 = [v9 componentsJoinedByString:@"\n"];
      [(SCROBrailleUIPasteBoard *)self setBrailleRepresentation:v18];

      v4 = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];
    }

    else
    {
      v4 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)reset
{
  [(SCROBrailleUIPasteBoard *)self setTextRepresentation:0];

  [(SCROBrailleUIPasteBoard *)self setBrailleRepresentation:0];
}

@end