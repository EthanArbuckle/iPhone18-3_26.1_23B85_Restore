@interface SCROBrailleUIPasteBoard
+ (id)sharedBoard;
- (NSString)braille;
- (NSString)text;
- (void)reset;
- (void)writeBraille:(id)braille;
- (void)writeText:(id)text;
- (void)writeText:(id)text withBraille:(id)braille;
@end

@implementation SCROBrailleUIPasteBoard

+ (id)sharedBoard
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SCROBrailleUIPasteBoard_sharedBoard__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)writeText:(id)text
{
  textCopy = text;
  textRepresentation = [(SCROBrailleUIPasteBoard *)self textRepresentation];
  v5 = [textRepresentation isEqualToString:textCopy];

  if ((v5 & 1) == 0)
  {
    [(SCROBrailleUIPasteBoard *)self setTextRepresentation:textCopy];
    [(SCROBrailleUIPasteBoard *)self setBrailleRepresentation:0];
  }
}

- (void)writeBraille:(id)braille
{
  brailleCopy = braille;
  brailleRepresentation = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];
  v5 = [brailleRepresentation isEqualToString:brailleCopy];

  if ((v5 & 1) == 0)
  {
    [(SCROBrailleUIPasteBoard *)self setBrailleRepresentation:brailleCopy];
    [(SCROBrailleUIPasteBoard *)self setTextRepresentation:0];
  }
}

- (void)writeText:(id)text withBraille:(id)braille
{
  brailleCopy = braille;
  [(SCROBrailleUIPasteBoard *)self setTextRepresentation:text];
  [(SCROBrailleUIPasteBoard *)self setBrailleRepresentation:brailleCopy];
}

- (NSString)text
{
  v26 = *MEMORY[0x277D85DE8];
  textRepresentation = [(SCROBrailleUIPasteBoard *)self textRepresentation];

  if (textRepresentation)
  {
    textRepresentation2 = [(SCROBrailleUIPasteBoard *)self textRepresentation];
  }

  else
  {
    brailleRepresentation = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];

    if (brailleRepresentation)
    {
      brailleRepresentation2 = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];
      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      v8 = [brailleRepresentation2 componentsSeparatedByCharactersInSet:newlineCharacterSet];

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

      textRepresentation2 = [(SCROBrailleUIPasteBoard *)self textRepresentation];
    }

    else
    {
      textRepresentation2 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return textRepresentation2;
}

- (NSString)braille
{
  v26 = *MEMORY[0x277D85DE8];
  brailleRepresentation = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];

  if (brailleRepresentation)
  {
    brailleRepresentation2 = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];
  }

  else
  {
    textRepresentation = [(SCROBrailleUIPasteBoard *)self textRepresentation];

    if (textRepresentation)
    {
      textRepresentation2 = [(SCROBrailleUIPasteBoard *)self textRepresentation];
      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      v8 = [textRepresentation2 componentsSeparatedByCharactersInSet:newlineCharacterSet];

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

      brailleRepresentation2 = [(SCROBrailleUIPasteBoard *)self brailleRepresentation];
    }

    else
    {
      brailleRepresentation2 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return brailleRepresentation2;
}

- (void)reset
{
  [(SCROBrailleUIPasteBoard *)self setTextRepresentation:0];

  [(SCROBrailleUIPasteBoard *)self setBrailleRepresentation:0];
}

@end