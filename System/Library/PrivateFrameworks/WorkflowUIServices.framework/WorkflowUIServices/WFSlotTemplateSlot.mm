@interface WFSlotTemplateSlot
+ (id)addingSlotWithIdentifier:(id)a3 imageScaleFactor:(double)a4;
+ (id)addingSlotWithKey:(id)a3;
+ (id)slotWithLocalizedName:(id)a3 localizedPlaceholder:(id)a4 key:(id)a5;
+ (id)slotWithLocalizedName:(id)a3 localizedPlaceholder:(id)a4 languageCode:(id)a5 key:(id)a6;
+ (id)slotWithLocalizedName:(id)a3 localizedPlaceholder:(id)a4 localizedAttributedPlaceholder:(id)a5 key:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPopulated;
- (WFSlotTemplateSlot)initWithLocalizedName:(id)a3 localizedPlaceholder:(id)a4 localizedAttributedPlaceholder:(id)a5 languageCode:(id)a6 identifier:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)populateWithAttributedString:(id)a3;
- (void)populateWithAttributedVariableString:(id)a3 attachmentName:(id)a4;
- (void)populateWithIcon:(id)a3 string:(id)a4;
- (void)populateWithSlotTemplateToken:(id)a3 attachmentName:(id)a4;
- (void)populateWithString:(id)a3;
- (void)setContentAttributedString:(id)a3;
@end

@implementation WFSlotTemplateSlot

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WFSlotTemplateSlot *)self localizedName];
  v6 = [(WFSlotTemplateSlot *)self localizedPlaceholder];
  v7 = [(WFSlotTemplateSlot *)self localizedAttributedPlaceholder];
  v8 = [(WFSlotTemplateSlot *)self languageCode];
  v9 = [(WFSlotTemplateSlot *)self identifier];
  v10 = [v4 initWithLocalizedName:v5 localizedPlaceholder:v6 localizedAttributedPlaceholder:v7 languageCode:v8 identifier:v9];

  v11 = [(WFSlotTemplateSlot *)self contentAttributedString];
  [v10 setContentAttributedString:v11];

  [v10 setEnabled:{-[WFSlotTemplateSlot isEnabled](self, "isEnabled")}];
  [v10 setInvalid:{-[WFSlotTemplateSlot isInvalid](self, "isInvalid")}];
  [v10 setPrefersNoWrapping:{-[WFSlotTemplateSlot prefersNoWrapping](self, "prefersNoWrapping")}];
  [v10 setStandaloneTextAttachment:{-[WFSlotTemplateSlot standaloneTextAttachment](self, "standaloneTextAttachment")}];
  [v10 setUserInputInsertionIndex:{-[WFSlotTemplateSlot userInputInsertionIndex](self, "userInputInsertionIndex")}];
  [v10 setRepresentsButton:{-[WFSlotTemplateSlot representsButton](self, "representsButton")}];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v11) = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v11) = 0;
    goto LABEL_10;
  }

  v7 = [(WFSlotTemplateSlot *)self identifier];
  v8 = [(WFSlotTemplateSlot *)v6 identifier];
  if ([v7 isEqual:v8])
  {
    v9 = [(WFSlotTemplateSlot *)self isEnabled];
    if (v9 == [(WFSlotTemplateSlot *)v6 isEnabled])
    {
      v10 = [(WFSlotTemplateSlot *)self isInvalid];
      if (v10 == [(WFSlotTemplateSlot *)v6 isInvalid])
      {
        v13 = [(WFSlotTemplateSlot *)self localizedName];
        v14 = [(WFSlotTemplateSlot *)v6 localizedName];
        if (v13 != v14)
        {
          v15 = [(WFSlotTemplateSlot *)self localizedName];
          v3 = [(WFSlotTemplateSlot *)v6 localizedName];
          if (![v15 isEqualToString:v3])
          {
            LOBYTE(v11) = 0;
            goto LABEL_42;
          }

          v49 = v3;
          v50 = v15;
        }

        v16 = [(WFSlotTemplateSlot *)self localizedPlaceholder];
        v17 = [(WFSlotTemplateSlot *)v6 localizedPlaceholder];
        v18 = v17;
        if (v16 == v17)
        {
          v47 = v17;
        }

        else
        {
          v3 = [(WFSlotTemplateSlot *)self localizedPlaceholder];
          v4 = [(WFSlotTemplateSlot *)v6 localizedPlaceholder];
          if (![v3 isEqualToString:v4])
          {
            LOBYTE(v11) = 0;
LABEL_40:

LABEL_41:
            v3 = v49;
            v15 = v50;
            if (v13 == v14)
            {
LABEL_43:

              goto LABEL_7;
            }

LABEL_42:

            goto LABEL_43;
          }

          v47 = v18;
        }

        v19 = [(WFSlotTemplateSlot *)self localizedAttributedPlaceholder];
        v20 = [(WFSlotTemplateSlot *)v6 localizedAttributedPlaceholder];
        v48 = v19;
        v21 = v19 == v20;
        v22 = v20;
        v46 = v13;
        if (v21)
        {
          v44 = v3;
          v45 = v16;
        }

        else
        {
          v38 = v14;
          v23 = v20;
          v42 = [(WFSlotTemplateSlot *)self localizedAttributedPlaceholder];
          v24 = [v42 string];
          v40 = [(WFSlotTemplateSlot *)v6 localizedAttributedPlaceholder];
          [v40 string];
          v39 = v41 = v24;
          if (![v24 isEqualToString:?])
          {
            LOBYTE(v11) = 0;
            v22 = v23;
            v30 = v48;
            v14 = v38;
LABEL_38:

LABEL_39:
            v13 = v46;
            v18 = v47;
            if (v16 == v47)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }

          v44 = v3;
          v45 = v16;
          v22 = v23;
          v14 = v38;
        }

        v25 = [(WFSlotTemplateSlot *)self contentAttributedString];
        v26 = [(WFSlotTemplateSlot *)v6 contentAttributedString];
        v27 = v26;
        v43 = v4;
        if (v25 != v26)
        {
          v36 = v26;
          v28 = v25;
          v29 = [(WFSlotTemplateSlot *)self contentAttributedString];
          v37 = [(WFSlotTemplateSlot *)v6 contentAttributedString];
          v38 = v29;
          if (![v29 isEqualToAttributedString:?])
          {
            LOBYTE(v11) = 0;
            v25 = v28;
            v27 = v36;
            goto LABEL_36;
          }

          v25 = v28;
          v27 = v36;
        }

        v31 = [(WFSlotTemplateSlot *)self prefersNoWrapping];
        if (v31 == [(WFSlotTemplateSlot *)v6 prefersNoWrapping]&& (v32 = [(WFSlotTemplateSlot *)self standaloneTextAttachment], v32 == [(WFSlotTemplateSlot *)v6 standaloneTextAttachment]) && (v33 = [(WFSlotTemplateSlot *)self userInputInsertionIndex], v33 == [(WFSlotTemplateSlot *)v6 userInputInsertionIndex]))
        {
          v34 = [(WFSlotTemplateSlot *)self representsButton];
          v11 = v34 ^ [(WFSlotTemplateSlot *)v6 representsButton]^ 1;
          v35 = v11;
        }

        else
        {
          LOBYTE(v11) = 0;
          v35 = 0;
        }

        if (v25 == v27)
        {

          LOBYTE(v11) = v35;
          goto LABEL_37;
        }

LABEL_36:

LABEL_37:
        v30 = v48;
        v4 = v43;
        v3 = v44;
        v16 = v45;
        if (v48 == v22)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }
  }

  LOBYTE(v11) = 0;
LABEL_7:

LABEL_10:
  return v11;
}

- (unint64_t)hash
{
  v2 = [(WFSlotTemplateSlot *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)setContentAttributedString:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [v4 length];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __49__WFSlotTemplateSlot_setContentAttributedString___block_invoke;
  v12 = &unk_1E8308330;
  v13 = self;
  v14 = v4;
  v6 = v4;
  [v6 enumerateAttributesInRange:0 options:v5 usingBlock:{0, &v9}];
  v7 = [v6 copy];
  contentAttributedString = self->_contentAttributedString;
  self->_contentAttributedString = v7;
}

void __49__WFSlotTemplateSlot_setContentAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__WFSlotTemplateSlot_setContentAttributedString___block_invoke_2;
  v8[3] = &unk_1E8308308;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  v10 = a3;
  v11 = a4;
  [a2 enumerateKeysAndObjectsUsingBlock:v8];
}

void __49__WFSlotTemplateSlot_setContentAttributedString___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *MEMORY[0x1E69DB5F8];
  if ([v12 isEqualToString:*MEMORY[0x1E69DB5F8]])
  {
    v7 = v5;
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v9 copy];
    if (v10)
    {
      v11 = [*(a1 + 32) identifier];
      [v10 setContainingSlotIdentifier:v11];

      [*(a1 + 40) addAttribute:v6 value:v10 range:{*(a1 + 48), *(a1 + 56)}];
    }
  }

  else
  {
    [*(a1 + 40) removeAttribute:v12 range:{*(a1 + 48), *(a1 + 56)}];
  }
}

- (BOOL)isPopulated
{
  v2 = [(WFSlotTemplateSlot *)self contentAttributedString];
  v3 = [v2 length] != 0;

  return v3;
}

- (WFSlotTemplateSlot)initWithLocalizedName:(id)a3 localizedPlaceholder:(id)a4 localizedAttributedPlaceholder:(id)a5 languageCode:(id)a6 identifier:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v17)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateSlot.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v30.receiver = self;
  v30.super_class = WFSlotTemplateSlot;
  v18 = [(WFSlotTemplateSlot *)&v30 init];
  if (v18)
  {
    v19 = [v13 copy];
    localizedName = v18->_localizedName;
    v18->_localizedName = v19;

    v21 = [v14 copy];
    localizedPlaceholder = v18->_localizedPlaceholder;
    v18->_localizedPlaceholder = v21;

    v23 = [v15 copy];
    localizedAttributedPlaceholder = v18->_localizedAttributedPlaceholder;
    v18->_localizedAttributedPlaceholder = v23;

    v25 = [v16 copy];
    languageCode = v18->_languageCode;
    v18->_languageCode = v25;

    objc_storeStrong(&v18->_identifier, a7);
    v18->_userInputInsertionIndex = -1;
    v18->_enabled = 1;
    v27 = v18;
  }

  return v18;
}

+ (id)slotWithLocalizedName:(id)a3 localizedPlaceholder:(id)a4 localizedAttributedPlaceholder:(id)a5 key:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a1 alloc];
  v15 = [[WFSlotIdentifier alloc] initWithKey:v10];

  v16 = [v14 initWithLocalizedName:v13 localizedPlaceholder:v12 localizedAttributedPlaceholder:v11 languageCode:0 identifier:v15];

  return v16;
}

+ (id)slotWithLocalizedName:(id)a3 localizedPlaceholder:(id)a4 languageCode:(id)a5 key:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a1 alloc];
  v15 = [[WFSlotIdentifier alloc] initWithKey:v10];

  v16 = [v14 initWithLocalizedName:v13 localizedPlaceholder:v12 localizedAttributedPlaceholder:0 languageCode:v11 identifier:v15];

  return v16;
}

+ (id)slotWithLocalizedName:(id)a3 localizedPlaceholder:(id)a4 key:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [[WFSlotIdentifier alloc] initWithKey:v8];

  v13 = [v11 initWithLocalizedName:v10 localizedPlaceholder:v9 localizedAttributedPlaceholder:0 languageCode:0 identifier:v12];

  return v13;
}

- (void)populateWithAttributedVariableString:(id)a3 attachmentName:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  v8 = *MEMORY[0x1E69DB5F8];
  v9 = [v7 length];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __95__WFSlotTemplateSlot_WFVariableUtilities__populateWithAttributedVariableString_attachmentName___block_invoke;
  v14 = &unk_1E8308380;
  v15 = self;
  v16 = v6;
  v10 = v6;
  [v7 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, &v11}];
  [(WFSlotTemplateSlot *)self setContentAttributedString:v7, v11, v12, v13, v14, v15];
  [(WFSlotTemplateSlot *)self setStandaloneTextAttachment:0];
}

void __95__WFSlotTemplateSlot_WFVariableUtilities__populateWithAttributedVariableString_attachmentName___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) identifier];
    [v8 setContainingSlotIdentifier:v3];

    v4 = [v8 token];
    v5 = [v4 displayName];

    v6 = [v5 length];
    v7 = v5;
    if (!v6)
    {
      if (![*(a1 + 40) length])
      {
LABEL_6:

        goto LABEL_7;
      }

      v7 = *(a1 + 40);
    }

    [v8 setOverrideVariableName:v7];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)populateWithSlotTemplateToken:(id)a3 attachmentName:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [[WFSlotTextAttachment alloc] initWithSlotTemplateToken:v6];

  v8 = [(WFSlotTemplateSlot *)self identifier];
  [(WFSlotTextAttachment *)v7 setContainingSlotIdentifier:v8];

  [(WFSlotTextAttachment *)v7 setStandalone:1];
  if ([v10 length])
  {
    [(WFSlotTextAttachment *)v7 setOverrideVariableName:v10];
  }

  v9 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
  [(WFSlotTemplateSlot *)self setContentAttributedString:v9];

  [(WFSlotTemplateSlot *)self setStandaloneTextAttachment:1];
}

- (void)populateWithIcon:(id)a3 string:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if (v13)
  {
    v8 = [[WFSlotTemplateImageAttachment alloc] initWithData:0 ofType:0];
    v9 = [v13 platformImage];
    [(WFSlotTemplateImageAttachment *)v8 setImage:v9];

    v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
    [v7 appendAttributedString:v10];

    if (!v6)
    {
      goto LABEL_6;
    }

    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v7 appendAttributedString:v11];
  }

  else if (!v6)
  {
    goto LABEL_6;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
  [v7 appendAttributedString:v12];

LABEL_6:
  [(WFSlotTemplateSlot *)self setContentAttributedString:v7];
  [(WFSlotTemplateSlot *)self setStandaloneTextAttachment:0];
}

- (void)populateWithAttributedString:(id)a3
{
  v4 = a3;
  [(WFSlotTemplateSlot *)self setContentAttributedString:v4];
  if ([v4 length] == 1 && (objc_msgSend(v4, "string"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "characterAtIndex:", 0), v5, v6 == 65532))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [v4 length];
    v8 = *MEMORY[0x1E69DB5F8];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__WFSlotTemplateSlot_WFVariableUtilities__populateWithAttributedString___block_invoke;
    v9[3] = &unk_1E8308358;
    v9[4] = &v10;
    [v4 enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v9}];
    [(WFSlotTemplateSlot *)self setStandaloneTextAttachment:*(v11 + 24)];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    [(WFSlotTemplateSlot *)self setStandaloneTextAttachment:0];
  }
}

void __72__WFSlotTemplateSlot_WFVariableUtilities__populateWithAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 24) = [v7 standalone];
    *a5 = 1;
  }
}

- (void)populateWithString:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
    [(WFSlotTemplateSlot *)self populateWithAttributedString:v4];
  }

  else
  {
    [(WFSlotTemplateSlot *)self populateWithAttributedString:0];
  }
}

+ (id)addingSlotWithIdentifier:(id)a3 imageScaleFactor:(double)a4
{
  if (a4 == 1.0)
  {
    v8 = MEMORY[0x1E69DB7F0];
    v9 = a3;
    v7 = [[v8 alloc] initWithData:0 ofType:0];
  }

  else
  {
    v6 = a3;
    v7 = [[WFSlotTemplateImageAttachment alloc] initWithData:0 ofType:0];
    [(WFSlotTemplateImageAttachment *)v7 setImageScaleFactor:a4];
  }

  v10 = [MEMORY[0x1E69E0B68] configurationWithPointSize:20.0];
  v11 = [MEMORY[0x1E69E0B58] systemImageNamed:@"plus" configuration:v10 renderingMode:0];
  v12 = [v11 imageWithRenderingMode:2];
  v13 = [v12 platformImage];
  [(WFSlotTemplateImageAttachment *)v7 setImage:v13];

  v14 = [[WFSlotTemplateSlot alloc] initWithLocalizedName:0 localizedPlaceholder:0 localizedAttributedPlaceholder:0 languageCode:0 identifier:a3];
  v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
  [(WFSlotTemplateSlot *)v14 setContentAttributedString:v15];

  [(WFSlotTemplateSlot *)v14 setRepresentsButton:1];

  return v14;
}

+ (id)addingSlotWithKey:(id)a3
{
  v4 = a3;
  v5 = [[WFSlotIdentifier alloc] initWithKey:v4];

  v6 = [a1 addingSlotWithIdentifier:v5 imageScaleFactor:1.0];

  return v6;
}

@end