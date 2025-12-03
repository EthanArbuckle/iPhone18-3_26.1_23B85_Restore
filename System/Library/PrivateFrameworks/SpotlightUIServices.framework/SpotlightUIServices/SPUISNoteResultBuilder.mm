@interface SPUISNoteResultBuilder
- (SPUISNoteResultBuilder)initWithResult:(id)result;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildTitle;
@end

@implementation SPUISNoteResultBuilder

- (SPUISNoteResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v17.receiver = self;
  v17.super_class = SPUISNoteResultBuilder;
  v5 = [(SPUISResultBuilder *)&v17 initWithResult:resultCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    v8 = [v6 whiteSpaceCondensedStringForString:v7];
    [(SPUISNoteResultBuilder *)v5 setTitle:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC2DF0] withType:objc_opt_class()];
    -[SPUISNoteResultBuilder setIsShared:](v5, "setIsShared:", [v9 BOOLValue]);

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC2DE8] withType:objc_opt_class()];
    -[SPUISNoteResultBuilder setIsLocked:](v5, "setIsLocked:", [v10 BOOLValue]);

    v11 = [resultCopy valueForAttribute:*MEMORY[0x277CC2660] withType:objc_opt_class()];
    [(SPUISNoteResultBuilder *)v5 setModificationDate:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
    if (v12)
    {
      [(SPUISNoteResultBuilder *)v5 setFormattedBody:v12];
    }

    else
    {
      v13 = [resultCopy valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
      [(SPUISNoteResultBuilder *)v5 setFormattedBody:v13];
    }

    v14 = [resultCopy valueForAttribute:*MEMORY[0x277CC2DE0] withType:objc_opt_class()];
    [(SPUISNoteResultBuilder *)v5 setFolder:v14];

    v15 = [resultCopy valueForAttribute:*MEMORY[0x277CC2DD8] withType:objc_opt_class()];
    [(SPUISNoteResultBuilder *)v5 setAccount:v15];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v91[1] = *MEMORY[0x277D85DE8];
  v3 = 0x277D4C000uLL;
  if ([(SPUISNoteResultBuilder *)self isLocked])
  {
    v4 = MEMORY[0x277D4C598];
    title = [SPUISUtilities localizedStringForKey:@"LOCKED"];
    v83 = [v4 textWithString:title];
  }

  else
  {
    title = [(SPUISNoteResultBuilder *)self title];
    v6 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:title headTruncation:1];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = MEMORY[0x277D4C598];
      formattedBody = [(SPUISNoteResultBuilder *)self formattedBody];
      v8 = [v9 textWithString:formattedBody];
    }

    v83 = v8;
  }

  v88.receiver = self;
  v88.super_class = SPUISNoteResultBuilder;
  buildInlineCardSection = [(SPUISResultBuilder *)&v88 buildInlineCardSection];
  v12 = objc_opt_new();
  modificationDate = [(SPUISNoteResultBuilder *)self modificationDate];

  if (modificationDate)
  {
    v14 = MEMORY[0x277D4C3A0];
    v15 = MEMORY[0x277CCACA8];
    modificationDate2 = [(SPUISNoteResultBuilder *)self modificationDate];
    v17 = [SPUISDateFormatManager dynamicCompactStringFromDate:modificationDate2];
    v18 = [v15 stringWithFormat:@"%@  ", v17];
    v19 = [v14 textWithString:v18];
    [v12 addObject:v19];
  }

  result = [(SPUISResultBuilder *)self result];
  formattedSnippet = [result formattedSnippet];
  v22 = 0x277CBE000uLL;
  if (formattedSnippet)
  {
    v23 = formattedSnippet;
    result2 = [(SPUISResultBuilder *)self result];
    formattedSnippet2 = [result2 formattedSnippet];
    formattedTextPieces = [formattedSnippet2 formattedTextPieces];
    v27 = [formattedTextPieces count];

    v3 = 0x277D4C000;
    v22 = 0x277CBE000;

    if (v27)
    {
      result3 = [(SPUISResultBuilder *)self result];
      formattedSnippet3 = [result3 formattedSnippet];
      formattedTextPieces2 = [formattedSnippet3 formattedTextPieces];
      [v12 addObjectsFromArray:formattedTextPieces2];

      goto LABEL_16;
    }
  }

  else
  {
  }

  result3 = [v83 formattedTextPieces];
  if (result3)
  {
    [v12 addObjectsFromArray:result3];
  }

  else
  {
    v31 = MEMORY[0x277D4C3A0];
    text = [v83 text];
    v33 = [v31 textWithString:text];
    v91[0] = v33;
    [*(v22 + 2656) arrayWithObjects:v91 count:1];
    v35 = v34 = v22;
    [v12 addObjectsFromArray:v35];

    v22 = v34;
  }

LABEL_16:

  v36 = *(v3 + 1432);
  v37 = objc_opt_new();
  [v37 setFormattedTextPieces:v12];
  v90 = v37;
  v38 = [*(v22 + 2656) arrayWithObjects:&v90 count:1];
  [buildInlineCardSection setDescriptions:v38];

  v39 = +[SPUISUtilities isMacOS];
  v40 = objc_opt_new();
  folder = [(SPUISNoteResultBuilder *)self folder];
  v42 = [folder length];

  if (v39)
  {
    if (v42)
    {
      folder2 = [(SPUISNoteResultBuilder *)self folder];
      [v40 addObject:folder2];
    }

    account = [(SPUISNoteResultBuilder *)self account];
    v45 = [account length];

    if (v45)
    {
      account2 = [(SPUISNoteResultBuilder *)self account];
      [v40 addObject:account2];
    }

    footnote = [v40 componentsJoinedByString:@" · "];
    if ([footnote length])
    {
      v48 = objc_opt_new();
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@" — %@", footnote];
      [v48 setText:v49];

      title2 = [buildInlineCardSection title];
      formattedTextPieces3 = [title2 formattedTextPieces];
      v52 = [formattedTextPieces3 arrayByAddingObject:v48];
      title3 = [buildInlineCardSection title];
      [title3 setFormattedTextPieces:v52];

      title4 = [buildInlineCardSection title];
      formattedTextPieces4 = [title4 formattedTextPieces];
      firstObject = [formattedTextPieces4 firstObject];
      [firstObject setIsEmphasized:1];
    }
  }

  else
  {
    if (v42)
    {
      v57 = objc_opt_new();
      [v57 setSymbolName:@"folder"];
      [v57 setIsTemplate:1];
      v58 = objc_opt_new();
      [v58 setGlyph:v57];
      [v40 addObject:v58];
      v59 = MEMORY[0x277D4C3A0];
      v60 = MEMORY[0x277CCACA8];
      folder3 = [(SPUISNoteResultBuilder *)self folder];
      v62 = [v60 stringWithFormat:@" %@", folder3];
      v63 = [v59 textWithString:v62];
      [v40 addObject:v63];
    }

    account3 = [(SPUISNoteResultBuilder *)self account];
    v65 = [account3 length];

    if (v65)
    {
      v66 = MEMORY[0x277D4C3A0];
      v67 = MEMORY[0x277CCACA8];
      folder4 = [(SPUISNoteResultBuilder *)self folder];
      if ([folder4 length])
      {
        v69 = @" — ";
      }

      else
      {
        v69 = &stru_287C50EE8;
      }

      account4 = [(SPUISNoteResultBuilder *)self account];
      v71 = [v67 stringWithFormat:@"%@%@", v69, account4];
      v72 = [v66 textWithString:v71];
      [v40 addObject:v72];
    }

    if ([v40 count])
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v73 = v40;
      v74 = [v73 countByEnumeratingWithState:&v84 objects:v89 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v85;
        do
        {
          for (i = 0; i != v75; ++i)
          {
            if (*v85 != v76)
            {
              objc_enumerationMutation(v73);
            }

            [*(*(&v84 + 1) + 8 * i) setIsEmphasized:1];
          }

          v75 = [v73 countByEnumeratingWithState:&v84 objects:v89 count:16];
        }

        while (v75);
      }

      v78 = objc_opt_new();
      v79 = [v73 copy];
      [v78 setFormattedTextPieces:v79];

      [buildInlineCardSection setFootnote:v78];
    }

    footnote = [buildInlineCardSection footnote];
    if (footnote)
    {
      v80 = 1;
    }

    else
    {
      v80 = 2;
    }

    [v37 setMaxLines:v80];
  }

  v81 = *MEMORY[0x277D85DE8];

  return buildInlineCardSection;
}

- (id)buildTitle
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D4C3A0];
  title = [(SPUISNoteResultBuilder *)self title];
  v6 = [v4 textWithString:title];

  [v6 setIsEmphasized:1];
  [v3 addObject:v6];
  if ([(SPUISNoteResultBuilder *)self isShared])
  {
    v7 = @"person.crop.circle";
  }

  else
  {
    if (![(SPUISNoteResultBuilder *)self isLocked])
    {
      goto LABEL_6;
    }

    v7 = @"lock.fill";
  }

  text = [v6 text];
  v9 = [text stringByAppendingString:@" "];
  [v6 setText:v9];

  v10 = objc_opt_new();
  [v10 setSymbolName:v7];
  [v10 setIsTemplate:1];
  v11 = objc_opt_new();
  [v11 setGlyph:v10];
  [v3 addObject:v11];

LABEL_6:
  v12 = objc_opt_new();
  v13 = [v3 copy];
  [v12 setFormattedTextPieces:v13];

  return v12;
}

- (id)buildCompactCardSection
{
  v3 = objc_opt_new();
  modificationDate = [(SPUISNoteResultBuilder *)self modificationDate];

  if (modificationDate)
  {
    modificationDate2 = [(SPUISNoteResultBuilder *)self modificationDate];
    v6 = [SPUISDateFormatManager dynamicDateTimeStringsFromDate:modificationDate2];
    [v3 addObjectsFromArray:v6];
  }

  formattedBody = [(SPUISNoteResultBuilder *)self formattedBody];
  if (formattedBody)
  {
    v8 = [objc_opt_class() whiteSpaceCondensedStringForString:formattedBody];
    [v3 addObject:v8];
  }

  v12.receiver = self;
  v12.super_class = SPUISNoteResultBuilder;
  buildCompactCardSection = [(SPUISResultBuilder *)&v12 buildCompactCardSection];
  v10 = [objc_opt_class() richTextsFromStrings:v3];
  [buildCompactCardSection setDescriptions:v10];

  return buildCompactCardSection;
}

@end