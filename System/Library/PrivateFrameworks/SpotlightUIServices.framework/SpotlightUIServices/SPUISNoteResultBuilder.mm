@interface SPUISNoteResultBuilder
- (SPUISNoteResultBuilder)initWithResult:(id)a3;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildTitle;
@end

@implementation SPUISNoteResultBuilder

- (SPUISNoteResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SPUISNoteResultBuilder;
  v5 = [(SPUISResultBuilder *)&v17 initWithResult:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    v8 = [v6 whiteSpaceCondensedStringForString:v7];
    [(SPUISNoteResultBuilder *)v5 setTitle:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x277CC2DF0] withType:objc_opt_class()];
    -[SPUISNoteResultBuilder setIsShared:](v5, "setIsShared:", [v9 BOOLValue]);

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC2DE8] withType:objc_opt_class()];
    -[SPUISNoteResultBuilder setIsLocked:](v5, "setIsLocked:", [v10 BOOLValue]);

    v11 = [v4 valueForAttribute:*MEMORY[0x277CC2660] withType:objc_opt_class()];
    [(SPUISNoteResultBuilder *)v5 setModificationDate:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
    if (v12)
    {
      [(SPUISNoteResultBuilder *)v5 setFormattedBody:v12];
    }

    else
    {
      v13 = [v4 valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
      [(SPUISNoteResultBuilder *)v5 setFormattedBody:v13];
    }

    v14 = [v4 valueForAttribute:*MEMORY[0x277CC2DE0] withType:objc_opt_class()];
    [(SPUISNoteResultBuilder *)v5 setFolder:v14];

    v15 = [v4 valueForAttribute:*MEMORY[0x277CC2DD8] withType:objc_opt_class()];
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
    v5 = [SPUISUtilities localizedStringForKey:@"LOCKED"];
    v83 = [v4 textWithString:v5];
  }

  else
  {
    v5 = [(SPUISNoteResultBuilder *)self title];
    v6 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:v5 headTruncation:1];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = MEMORY[0x277D4C598];
      v10 = [(SPUISNoteResultBuilder *)self formattedBody];
      v8 = [v9 textWithString:v10];
    }

    v83 = v8;
  }

  v88.receiver = self;
  v88.super_class = SPUISNoteResultBuilder;
  v11 = [(SPUISResultBuilder *)&v88 buildInlineCardSection];
  v12 = objc_opt_new();
  v13 = [(SPUISNoteResultBuilder *)self modificationDate];

  if (v13)
  {
    v14 = MEMORY[0x277D4C3A0];
    v15 = MEMORY[0x277CCACA8];
    v16 = [(SPUISNoteResultBuilder *)self modificationDate];
    v17 = [SPUISDateFormatManager dynamicCompactStringFromDate:v16];
    v18 = [v15 stringWithFormat:@"%@  ", v17];
    v19 = [v14 textWithString:v18];
    [v12 addObject:v19];
  }

  v20 = [(SPUISResultBuilder *)self result];
  v21 = [v20 formattedSnippet];
  v22 = 0x277CBE000uLL;
  if (v21)
  {
    v23 = v21;
    v24 = [(SPUISResultBuilder *)self result];
    v25 = [v24 formattedSnippet];
    v26 = [v25 formattedTextPieces];
    v27 = [v26 count];

    v3 = 0x277D4C000;
    v22 = 0x277CBE000;

    if (v27)
    {
      v28 = [(SPUISResultBuilder *)self result];
      v29 = [v28 formattedSnippet];
      v30 = [v29 formattedTextPieces];
      [v12 addObjectsFromArray:v30];

      goto LABEL_16;
    }
  }

  else
  {
  }

  v28 = [v83 formattedTextPieces];
  if (v28)
  {
    [v12 addObjectsFromArray:v28];
  }

  else
  {
    v31 = MEMORY[0x277D4C3A0];
    v32 = [v83 text];
    v33 = [v31 textWithString:v32];
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
  [v11 setDescriptions:v38];

  v39 = +[SPUISUtilities isMacOS];
  v40 = objc_opt_new();
  v41 = [(SPUISNoteResultBuilder *)self folder];
  v42 = [v41 length];

  if (v39)
  {
    if (v42)
    {
      v43 = [(SPUISNoteResultBuilder *)self folder];
      [v40 addObject:v43];
    }

    v44 = [(SPUISNoteResultBuilder *)self account];
    v45 = [v44 length];

    if (v45)
    {
      v46 = [(SPUISNoteResultBuilder *)self account];
      [v40 addObject:v46];
    }

    v47 = [v40 componentsJoinedByString:@" · "];
    if ([v47 length])
    {
      v48 = objc_opt_new();
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@" — %@", v47];
      [v48 setText:v49];

      v50 = [v11 title];
      v51 = [v50 formattedTextPieces];
      v52 = [v51 arrayByAddingObject:v48];
      v53 = [v11 title];
      [v53 setFormattedTextPieces:v52];

      v54 = [v11 title];
      v55 = [v54 formattedTextPieces];
      v56 = [v55 firstObject];
      [v56 setIsEmphasized:1];
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
      v61 = [(SPUISNoteResultBuilder *)self folder];
      v62 = [v60 stringWithFormat:@" %@", v61];
      v63 = [v59 textWithString:v62];
      [v40 addObject:v63];
    }

    v64 = [(SPUISNoteResultBuilder *)self account];
    v65 = [v64 length];

    if (v65)
    {
      v66 = MEMORY[0x277D4C3A0];
      v67 = MEMORY[0x277CCACA8];
      v68 = [(SPUISNoteResultBuilder *)self folder];
      if ([v68 length])
      {
        v69 = @" — ";
      }

      else
      {
        v69 = &stru_287C50EE8;
      }

      v70 = [(SPUISNoteResultBuilder *)self account];
      v71 = [v67 stringWithFormat:@"%@%@", v69, v70];
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

      [v11 setFootnote:v78];
    }

    v47 = [v11 footnote];
    if (v47)
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

  return v11;
}

- (id)buildTitle
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D4C3A0];
  v5 = [(SPUISNoteResultBuilder *)self title];
  v6 = [v4 textWithString:v5];

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

  v8 = [v6 text];
  v9 = [v8 stringByAppendingString:@" "];
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
  v4 = [(SPUISNoteResultBuilder *)self modificationDate];

  if (v4)
  {
    v5 = [(SPUISNoteResultBuilder *)self modificationDate];
    v6 = [SPUISDateFormatManager dynamicDateTimeStringsFromDate:v5];
    [v3 addObjectsFromArray:v6];
  }

  v7 = [(SPUISNoteResultBuilder *)self formattedBody];
  if (v7)
  {
    v8 = [objc_opt_class() whiteSpaceCondensedStringForString:v7];
    [v3 addObject:v8];
  }

  v12.receiver = self;
  v12.super_class = SPUISNoteResultBuilder;
  v9 = [(SPUISResultBuilder *)&v12 buildCompactCardSection];
  v10 = [objc_opt_class() richTextsFromStrings:v3];
  [v9 setDescriptions:v10];

  return v9;
}

@end