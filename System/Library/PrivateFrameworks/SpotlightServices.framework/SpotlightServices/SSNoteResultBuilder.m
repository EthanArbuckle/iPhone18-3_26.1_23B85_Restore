@interface SSNoteResultBuilder
- (SSNoteResultBuilder)initWithResult:(id)a3;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildTitle;
@end

@implementation SSNoteResultBuilder

- (SSNoteResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SSNoteResultBuilder;
  v5 = [(SSResultBuilder *)&v17 initWithResult:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    v8 = [v6 whiteSpaceCondensedStringForString:v7];
    [(SSNoteResultBuilder *)v5 setTitle:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x1E6964620] withType:objc_opt_class()];
    -[SSNoteResultBuilder setIsShared:](v5, "setIsShared:", [v9 BOOLValue]);

    v10 = [v4 valueForAttribute:*MEMORY[0x1E6964618] withType:objc_opt_class()];
    -[SSNoteResultBuilder setIsLocked:](v5, "setIsLocked:", [v10 BOOLValue]);

    v11 = [v4 valueForAttribute:*MEMORY[0x1E6963E88] withType:objc_opt_class()];
    [(SSNoteResultBuilder *)v5 setModificationDate:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    if (v12)
    {
      [(SSNoteResultBuilder *)v5 setFormattedBody:v12];
    }

    else
    {
      v13 = [v4 valueForAttribute:*MEMORY[0x1E6964B18] withType:objc_opt_class()];
      [(SSNoteResultBuilder *)v5 setFormattedBody:v13];
    }

    v14 = [v4 valueForAttribute:*MEMORY[0x1E6964610] withType:objc_opt_class()];
    [(SSNoteResultBuilder *)v5 setFolder:v14];

    v15 = [v4 valueForAttribute:*MEMORY[0x1E6964608] withType:objc_opt_class()];
    [(SSNoteResultBuilder *)v5 setAccount:v15];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v91[1] = *MEMORY[0x1E69E9840];
  v3 = 0x1E69CA000uLL;
  if ([(SSNoteResultBuilder *)self isLocked])
  {
    v4 = MEMORY[0x1E69CA3A0];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"LOCKED" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v7 = [v4 textWithString:v6];
LABEL_5:
    v83 = v7;
    goto LABEL_6;
  }

  v5 = [(SSNoteResultBuilder *)self title];
  v8 = [(SSResultBuilder *)self buildHighlightedMatchedTextWithTitle:v5 headTruncation:1];
  v6 = v8;
  if (v8)
  {
    v7 = v8;
    v6 = v7;
    goto LABEL_5;
  }

  v81 = MEMORY[0x1E69CA3A0];
  v82 = [(SSNoteResultBuilder *)self formattedBody];
  v83 = [v81 textWithString:v82];

LABEL_6:
  v88.receiver = self;
  v88.super_class = SSNoteResultBuilder;
  v9 = [(SSResultBuilder *)&v88 buildInlineCardSection];
  v10 = objc_opt_new();
  v11 = [(SSNoteResultBuilder *)self modificationDate];

  if (v11)
  {
    v12 = MEMORY[0x1E69CA0F0];
    v13 = MEMORY[0x1E696AEC0];
    v14 = [(SSNoteResultBuilder *)self modificationDate];
    v15 = [SSDateFormatManager dynamicCompactStringFromDate:v14];
    v16 = [v13 stringWithFormat:@"%@  ", v15];
    v17 = [v12 textWithString:v16];
    [v10 addObject:v17];
  }

  v18 = [(SSResultBuilder *)self result];
  v19 = [v18 formattedSnippet];
  v20 = 0x1E695D000uLL;
  if (v19)
  {
    v21 = v19;
    v22 = [(SSResultBuilder *)self result];
    v23 = [v22 formattedSnippet];
    v24 = [v23 formattedTextPieces];
    v25 = [v24 count];

    v3 = 0x1E69CA000;
    v20 = 0x1E695D000;

    if (v25)
    {
      v26 = [(SSResultBuilder *)self result];
      v27 = [v26 formattedSnippet];
      v28 = [v27 formattedTextPieces];
      [v10 addObjectsFromArray:v28];

      goto LABEL_15;
    }
  }

  else
  {
  }

  v26 = [v83 formattedTextPieces];
  if (v26)
  {
    [v10 addObjectsFromArray:v26];
  }

  else
  {
    v29 = MEMORY[0x1E69CA0F0];
    v30 = [v83 text];
    v31 = [v29 textWithString:v30];
    v91[0] = v31;
    [*(v20 + 3784) arrayWithObjects:v91 count:1];
    v33 = v32 = v20;
    [v10 addObjectsFromArray:v33];

    v20 = v32;
  }

LABEL_15:

  v34 = *(v3 + 928);
  v35 = objc_opt_new();
  [v35 setFormattedTextPieces:v10];
  v90 = v35;
  v36 = [*(v20 + 3784) arrayWithObjects:&v90 count:1];
  [v9 setDescriptions:v36];

  v37 = isMacOS();
  v38 = objc_opt_new();
  v39 = [(SSNoteResultBuilder *)self folder];
  v40 = [v39 length];

  if (v37)
  {
    if (v40)
    {
      v41 = [(SSNoteResultBuilder *)self folder];
      [v38 addObject:v41];
    }

    v42 = [(SSNoteResultBuilder *)self account];
    v43 = [v42 length];

    if (v43)
    {
      v44 = [(SSNoteResultBuilder *)self account];
      [v38 addObject:v44];
    }

    v45 = [v38 componentsJoinedByString:@" · "];
    if ([v45 length])
    {
      v46 = objc_opt_new();
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@" — %@", v45];
      [v46 setText:v47];

      v48 = [v9 title];
      v49 = [v48 formattedTextPieces];
      v50 = [v49 arrayByAddingObject:v46];
      v51 = [v9 title];
      [v51 setFormattedTextPieces:v50];

      v52 = [v9 title];
      v53 = [v52 formattedTextPieces];
      v54 = [v53 firstObject];
      [v54 setIsEmphasized:1];
    }
  }

  else
  {
    if (v40)
    {
      v55 = objc_opt_new();
      [v55 setSymbolName:@"folder"];
      [v55 setIsTemplate:1];
      v56 = objc_opt_new();
      [v56 setGlyph:v55];
      [v38 addObject:v56];
      v57 = MEMORY[0x1E69CA0F0];
      v58 = MEMORY[0x1E696AEC0];
      v59 = [(SSNoteResultBuilder *)self folder];
      v60 = [v58 stringWithFormat:@" %@", v59];
      v61 = [v57 textWithString:v60];
      [v38 addObject:v61];
    }

    v62 = [(SSNoteResultBuilder *)self account];
    v63 = [v62 length];

    if (v63)
    {
      v64 = MEMORY[0x1E69CA0F0];
      v65 = MEMORY[0x1E696AEC0];
      v66 = [(SSNoteResultBuilder *)self folder];
      if ([v66 length])
      {
        v67 = @" — ";
      }

      else
      {
        v67 = &stru_1F556FE60;
      }

      v68 = [(SSNoteResultBuilder *)self account];
      v69 = [v65 stringWithFormat:@"%@%@", v67, v68];
      v70 = [v64 textWithString:v69];
      [v38 addObject:v70];
    }

    if ([v38 count])
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v71 = v38;
      v72 = [v71 countByEnumeratingWithState:&v84 objects:v89 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v85;
        do
        {
          for (i = 0; i != v73; ++i)
          {
            if (*v85 != v74)
            {
              objc_enumerationMutation(v71);
            }

            [*(*(&v84 + 1) + 8 * i) setIsEmphasized:1];
          }

          v73 = [v71 countByEnumeratingWithState:&v84 objects:v89 count:16];
        }

        while (v73);
      }

      v76 = objc_opt_new();
      v77 = [v71 copy];
      [v76 setFormattedTextPieces:v77];

      [v9 setFootnote:v76];
    }

    v45 = [v9 footnote];
    if (v45)
    {
      v78 = 1;
    }

    else
    {
      v78 = 2;
    }

    [v35 setMaxLines:v78];
  }

  v79 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)buildTitle
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E69CA0F0];
  v5 = [(SSNoteResultBuilder *)self title];
  v6 = [v4 textWithString:v5];

  [v6 setIsEmphasized:1];
  [v3 addObject:v6];
  if ([(SSNoteResultBuilder *)self isShared])
  {
    v7 = @"person.crop.circle";
  }

  else
  {
    if (![(SSNoteResultBuilder *)self isLocked])
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
  v4 = [(SSNoteResultBuilder *)self modificationDate];

  if (v4)
  {
    v5 = [(SSNoteResultBuilder *)self modificationDate];
    v6 = [SSDateFormatManager dynamicDateTimeStringsFromDate:v5];
    [v3 addObjectsFromArray:v6];
  }

  v7 = [(SSNoteResultBuilder *)self formattedBody];
  if (v7)
  {
    v8 = [objc_opt_class() whiteSpaceCondensedStringForString:v7];
    [v3 addObject:v8];
  }

  v12.receiver = self;
  v12.super_class = SSNoteResultBuilder;
  v9 = [(SSResultBuilder *)&v12 buildCompactCardSection];
  v10 = [objc_opt_class() richTextsFromStrings:v3];
  [v9 setDescriptions:v10];

  return v9;
}

@end