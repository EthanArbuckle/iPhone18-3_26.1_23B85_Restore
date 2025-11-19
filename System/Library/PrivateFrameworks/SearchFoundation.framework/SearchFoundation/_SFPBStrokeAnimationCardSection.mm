@interface _SFPBStrokeAnimationCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBStrokeAnimationCardSection)initWithDictionary:(id)a3;
- (_SFPBStrokeAnimationCardSection)initWithFacade:(id)a3;
- (_SFPBStrokeAnimationCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCharacters:(id)a3;
- (void)addPronunciations:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)addStrokeNames:(id)a3;
- (void)setCharacters:(id)a3;
- (void)setPronunciations:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setStrokeAnimationRepresentation:(id)a3;
- (void)setStrokeNames:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBStrokeAnimationCardSection

- (_SFPBStrokeAnimationCardSection)initWithFacade:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBStrokeAnimationCardSection *)self init];
  if (v5)
  {
    v6 = [v4 punchoutOptions];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v63;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v63 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v62 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v10);
    }

    [(_SFPBStrokeAnimationCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBStrokeAnimationCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBStrokeAnimationCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBStrokeAnimationCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBStrokeAnimationCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBStrokeAnimationCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBStrokeAnimationCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBStrokeAnimationCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBStrokeAnimationCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 strokeAnimationRepresentation];

    if (v24)
    {
      v25 = [v4 strokeAnimationRepresentation];
      [(_SFPBStrokeAnimationCardSection *)v5 setStrokeAnimationRepresentation:v25];
    }

    v26 = [v4 strokeNames];
    if (v26)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v28 = [v4 strokeNames];
    v29 = [v28 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v59;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v59 != v31)
          {
            objc_enumerationMutation(v28);
          }

          if (*(*(&v58 + 1) + 8 * j))
          {
            [v27 addObject:?];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v30);
    }

    [(_SFPBStrokeAnimationCardSection *)v5 setStrokeNames:v27];
    v33 = [v4 characters];
    if (v33)
    {
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v34 = 0;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v35 = [v4 characters];
    v36 = [v35 countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v55;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v55 != v38)
          {
            objc_enumerationMutation(v35);
          }

          if (*(*(&v54 + 1) + 8 * k))
          {
            [v34 addObject:?];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v37);
    }

    [(_SFPBStrokeAnimationCardSection *)v5 setCharacters:v34];
    v40 = [v4 pronunciations];
    if (v40)
    {
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v41 = 0;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v42 = [v4 pronunciations];
    v43 = [v42 countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v51;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v51 != v45)
          {
            objc_enumerationMutation(v42);
          }

          if (*(*(&v50 + 1) + 8 * m))
          {
            [v41 addObject:?];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v50 objects:v66 count:16];
      }

      while (v44);
    }

    [(_SFPBStrokeAnimationCardSection *)v5 setPronunciations:v41];
    v47 = v5;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBStrokeAnimationCardSection)initWithDictionary:(id)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v83.receiver = self;
  v83.super_class = _SFPBStrokeAnimationCardSection;
  v5 = [(_SFPBStrokeAnimationCardSection *)&v83 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    v66 = v6;
    if (objc_opt_isKindOfClass())
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v79 objects:v87 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v80;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v80 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v79 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBStrokeAnimationCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v79 objects:v87 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBStrokeAnimationCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBStrokeAnimationCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v65 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStrokeAnimationCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v64 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStrokeAnimationCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v63 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStrokeAnimationCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v62 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBStrokeAnimationCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v61 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStrokeAnimationCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v60 = v14;
    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBStrokeAnimationCardSection *)v5 setBackgroundColor:v25];
    }

    v58 = v24;
    v59 = v16;
    v26 = [v4 objectForKeyedSubscript:@"strokeAnimationRepresentation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBStrokeAnimationCardSection *)v5 setStrokeAnimationRepresentation:v27];
    }

    v57 = v26;
    v28 = [v4 objectForKeyedSubscript:@"strokeNames"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v75 objects:v86 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v76;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v76 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v75 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [v34 copy];
              [(_SFPBStrokeAnimationCardSection *)v5 addStrokeNames:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v75 objects:v86 count:16];
        }

        while (v31);
      }
    }

    v36 = [v4 objectForKeyedSubscript:@"characters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v4;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v38 = v36;
      v39 = [v38 countByEnumeratingWithState:&v71 objects:v85 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v72;
        do
        {
          for (k = 0; k != v40; ++k)
          {
            if (*v72 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v71 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = [v43 copy];
              [(_SFPBStrokeAnimationCardSection *)v5 addCharacters:v44];
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v71 objects:v85 count:16];
        }

        while (v40);
      }

      v4 = v37;
    }

    v45 = [v4 objectForKeyedSubscript:@"pronunciations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = v4;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v46 = v45;
      v47 = [v46 countByEnumeratingWithState:&v67 objects:v84 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v68;
        do
        {
          for (m = 0; m != v48; ++m)
          {
            if (*v68 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v67 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v52 = [v51 copy];
              [(_SFPBStrokeAnimationCardSection *)v5 addPronunciations:v52];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v67 objects:v84 count:16];
        }

        while (v48);
      }

      v4 = v56;
    }

    v53 = v5;
  }

  v54 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBStrokeAnimationCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBStrokeAnimationCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBStrokeAnimationCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBStrokeAnimationCardSection *)self backgroundColor];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBStrokeAnimationCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_characters)
  {
    v8 = [(_SFPBStrokeAnimationCardSection *)self characters];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"characters"];
  }

  if (self->_hasBottomPadding)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBStrokeAnimationCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v10 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBStrokeAnimationCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v11 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_pronunciations)
  {
    v12 = [(_SFPBStrokeAnimationCardSection *)self pronunciations];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"pronunciations"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = self->_punchoutOptions;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          if (v20)
          {
            [v14 addObject:v20];
          }

          else
          {
            v21 = [MEMORY[0x1E695DFB0] null];
            [v14 addObject:v21];
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v22 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerDismissText];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v24 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerTitle];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v26 = [(_SFPBStrokeAnimationCardSection *)self separatorStyle];
    if (v26 >= 6)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v26];
    }

    else
    {
      v27 = off_1E7ACE580[v26];
    }

    [v3 setObject:v27 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_strokeAnimationRepresentation)
  {
    v28 = [(_SFPBStrokeAnimationCardSection *)self strokeAnimationRepresentation];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"strokeAnimationRepresentation"];
  }

  if (self->_strokeNames)
  {
    v30 = [(_SFPBStrokeAnimationCardSection *)self strokeNames];
    v31 = [v30 copy];
    [v3 setObject:v31 forKeyedSubscript:@"strokeNames"];
  }

  if (self->_type)
  {
    v32 = [(_SFPBStrokeAnimationCardSection *)self type];
    v33 = [v32 copy];
    [v3 setObject:v33 forKeyedSubscript:@"type"];
  }

  v34 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_punchoutOptions hash];
  v4 = [(NSString *)self->_punchoutPickerTitle hash];
  v5 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (self->_hasTopPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v8 = 2654435761;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_type hash]^ (2654435761 * self->_separatorStyle);
  v10 = [(_SFPBColor *)self->_backgroundColor hash];
  v11 = v10 ^ [(NSString *)self->_strokeAnimationRepresentation hash];
  v12 = v11 ^ [(NSArray *)self->_strokeNames hash];
  v13 = v12 ^ [(NSArray *)self->_characters hash];
  return v9 ^ v13 ^ [(NSArray *)self->_pronunciations hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  v5 = [(_SFPBStrokeAnimationCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v7 = [(_SFPBStrokeAnimationCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBStrokeAnimationCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v12 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v17 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_51;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_51;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_51;
  }

  v5 = [(_SFPBStrokeAnimationCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v25 = [(_SFPBStrokeAnimationCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBStrokeAnimationCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_51;
  }

  v5 = [(_SFPBStrokeAnimationCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v31 = [(_SFPBStrokeAnimationCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBStrokeAnimationCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBStrokeAnimationCardSection *)self strokeAnimationRepresentation];
  v6 = [v4 strokeAnimationRepresentation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v36 = [(_SFPBStrokeAnimationCardSection *)self strokeAnimationRepresentation];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBStrokeAnimationCardSection *)self strokeAnimationRepresentation];
    v39 = [v4 strokeAnimationRepresentation];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBStrokeAnimationCardSection *)self strokeNames];
  v6 = [v4 strokeNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v41 = [(_SFPBStrokeAnimationCardSection *)self strokeNames];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBStrokeAnimationCardSection *)self strokeNames];
    v44 = [v4 strokeNames];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBStrokeAnimationCardSection *)self characters];
  v6 = [v4 characters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v46 = [(_SFPBStrokeAnimationCardSection *)self characters];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBStrokeAnimationCardSection *)self characters];
    v49 = [v4 characters];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBStrokeAnimationCardSection *)self pronunciations];
  v6 = [v4 pronunciations];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_50:

    goto LABEL_51;
  }

  v51 = [(_SFPBStrokeAnimationCardSection *)self pronunciations];
  if (!v51)
  {

LABEL_54:
    v56 = 1;
    goto LABEL_52;
  }

  v52 = v51;
  v53 = [(_SFPBStrokeAnimationCardSection *)self pronunciations];
  v54 = [v4 pronunciations];
  v55 = [v53 isEqual:v54];

  if (v55)
  {
    goto LABEL_54;
  }

LABEL_51:
  v56 = 0;
LABEL_52:

  return v56;
}

- (void)writeTo:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBStrokeAnimationCardSection *)self punchoutOptions];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      v9 = 0;
      do
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v47 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBStrokeAnimationCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBStrokeAnimationCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBStrokeAnimationCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBStrokeAnimationCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBStrokeAnimationCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBStrokeAnimationCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBStrokeAnimationCardSection *)self strokeAnimationRepresentation];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBStrokeAnimationCardSection *)self strokeNames];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      v20 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v43 + 1) + 8 * v20);
        PBDataWriterWriteStringField();
        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v18);
  }

  v22 = [(_SFPBStrokeAnimationCardSection *)self characters];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      v26 = 0;
      do
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v39 + 1) + 8 * v26);
        PBDataWriterWriteStringField();
        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v24);
  }

  v28 = [(_SFPBStrokeAnimationCardSection *)self pronunciations];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v35 + 1) + 8 * v32);
        PBDataWriterWriteStringField();
        ++v32;
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v30);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)addPronunciations:(id)a3
{
  v4 = a3;
  pronunciations = self->_pronunciations;
  v8 = v4;
  if (!pronunciations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pronunciations;
    self->_pronunciations = v6;

    v4 = v8;
    pronunciations = self->_pronunciations;
  }

  [(NSArray *)pronunciations addObject:v4];
}

- (void)setPronunciations:(id)a3
{
  v4 = [a3 copy];
  pronunciations = self->_pronunciations;
  self->_pronunciations = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCharacters:(id)a3
{
  v4 = a3;
  characters = self->_characters;
  v8 = v4;
  if (!characters)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_characters;
    self->_characters = v6;

    v4 = v8;
    characters = self->_characters;
  }

  [(NSArray *)characters addObject:v4];
}

- (void)setCharacters:(id)a3
{
  v4 = [a3 copy];
  characters = self->_characters;
  self->_characters = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addStrokeNames:(id)a3
{
  v4 = a3;
  strokeNames = self->_strokeNames;
  v8 = v4;
  if (!strokeNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_strokeNames;
    self->_strokeNames = v6;

    v4 = v8;
    strokeNames = self->_strokeNames;
  }

  [(NSArray *)strokeNames addObject:v4];
}

- (void)setStrokeNames:(id)a3
{
  v4 = [a3 copy];
  strokeNames = self->_strokeNames;
  self->_strokeNames = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setStrokeAnimationRepresentation:(id)a3
{
  v4 = [a3 copy];
  strokeAnimationRepresentation = self->_strokeAnimationRepresentation;
  self->_strokeAnimationRepresentation = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)a3
{
  v4 = [a3 copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)a3
{
  v4 = [a3 copy];
  punchoutPickerDismissText = self->_punchoutPickerDismissText;
  self->_punchoutPickerDismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)a3
{
  v4 = [a3 copy];
  punchoutPickerTitle = self->_punchoutPickerTitle;
  self->_punchoutPickerTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)a3
{
  v4 = a3;
  punchoutOptions = self->_punchoutOptions;
  v8 = v4;
  if (!punchoutOptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = v6;

    v4 = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:v4];
}

- (void)setPunchoutOptions:(id)a3
{
  v4 = [a3 copy];
  punchoutOptions = self->_punchoutOptions;
  self->_punchoutOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

@end