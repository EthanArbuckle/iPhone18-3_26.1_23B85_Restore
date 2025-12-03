@interface WFSlotTemplateSlot
+ (id)addingSlotWithIdentifier:(id)identifier imageScaleFactor:(double)factor;
+ (id)addingSlotWithKey:(id)key;
+ (id)slotWithLocalizedName:(id)name localizedPlaceholder:(id)placeholder key:(id)key;
+ (id)slotWithLocalizedName:(id)name localizedPlaceholder:(id)placeholder languageCode:(id)code key:(id)key;
+ (id)slotWithLocalizedName:(id)name localizedPlaceholder:(id)placeholder localizedAttributedPlaceholder:(id)attributedPlaceholder key:(id)key;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPopulated;
- (WFSlotTemplateSlot)initWithLocalizedName:(id)name localizedPlaceholder:(id)placeholder localizedAttributedPlaceholder:(id)attributedPlaceholder languageCode:(id)code identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)populateWithAttributedString:(id)string;
- (void)populateWithAttributedVariableString:(id)string attachmentName:(id)name;
- (void)populateWithIcon:(id)icon string:(id)string;
- (void)populateWithSlotTemplateToken:(id)token attachmentName:(id)name;
- (void)populateWithString:(id)string;
- (void)setContentAttributedString:(id)string;
@end

@implementation WFSlotTemplateSlot

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  localizedName = [(WFSlotTemplateSlot *)self localizedName];
  localizedPlaceholder = [(WFSlotTemplateSlot *)self localizedPlaceholder];
  localizedAttributedPlaceholder = [(WFSlotTemplateSlot *)self localizedAttributedPlaceholder];
  languageCode = [(WFSlotTemplateSlot *)self languageCode];
  identifier = [(WFSlotTemplateSlot *)self identifier];
  v10 = [v4 initWithLocalizedName:localizedName localizedPlaceholder:localizedPlaceholder localizedAttributedPlaceholder:localizedAttributedPlaceholder languageCode:languageCode identifier:identifier];

  contentAttributedString = [(WFSlotTemplateSlot *)self contentAttributedString];
  [v10 setContentAttributedString:contentAttributedString];

  [v10 setEnabled:{-[WFSlotTemplateSlot isEnabled](self, "isEnabled")}];
  [v10 setInvalid:{-[WFSlotTemplateSlot isInvalid](self, "isInvalid")}];
  [v10 setPrefersNoWrapping:{-[WFSlotTemplateSlot prefersNoWrapping](self, "prefersNoWrapping")}];
  [v10 setStandaloneTextAttachment:{-[WFSlotTemplateSlot standaloneTextAttachment](self, "standaloneTextAttachment")}];
  [v10 setUserInputInsertionIndex:{-[WFSlotTemplateSlot userInputInsertionIndex](self, "userInputInsertionIndex")}];
  [v10 setRepresentsButton:{-[WFSlotTemplateSlot representsButton](self, "representsButton")}];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

  identifier = [(WFSlotTemplateSlot *)self identifier];
  identifier2 = [(WFSlotTemplateSlot *)equalCopy identifier];
  if ([identifier isEqual:identifier2])
  {
    isEnabled = [(WFSlotTemplateSlot *)self isEnabled];
    if (isEnabled == [(WFSlotTemplateSlot *)equalCopy isEnabled])
    {
      isInvalid = [(WFSlotTemplateSlot *)self isInvalid];
      if (isInvalid == [(WFSlotTemplateSlot *)equalCopy isInvalid])
      {
        localizedName = [(WFSlotTemplateSlot *)self localizedName];
        localizedName2 = [(WFSlotTemplateSlot *)equalCopy localizedName];
        if (localizedName != localizedName2)
        {
          localizedName3 = [(WFSlotTemplateSlot *)self localizedName];
          localizedName4 = [(WFSlotTemplateSlot *)equalCopy localizedName];
          if (![localizedName3 isEqualToString:localizedName4])
          {
            LOBYTE(v11) = 0;
            goto LABEL_42;
          }

          v49 = localizedName4;
          v50 = localizedName3;
        }

        localizedPlaceholder = [(WFSlotTemplateSlot *)self localizedPlaceholder];
        localizedPlaceholder2 = [(WFSlotTemplateSlot *)equalCopy localizedPlaceholder];
        v18 = localizedPlaceholder2;
        if (localizedPlaceholder == localizedPlaceholder2)
        {
          v47 = localizedPlaceholder2;
        }

        else
        {
          localizedName4 = [(WFSlotTemplateSlot *)self localizedPlaceholder];
          localizedPlaceholder3 = [(WFSlotTemplateSlot *)equalCopy localizedPlaceholder];
          if (![localizedName4 isEqualToString:localizedPlaceholder3])
          {
            LOBYTE(v11) = 0;
LABEL_40:

LABEL_41:
            localizedName4 = v49;
            localizedName3 = v50;
            if (localizedName == localizedName2)
            {
LABEL_43:

              goto LABEL_7;
            }

LABEL_42:

            goto LABEL_43;
          }

          v47 = v18;
        }

        localizedAttributedPlaceholder = [(WFSlotTemplateSlot *)self localizedAttributedPlaceholder];
        localizedAttributedPlaceholder2 = [(WFSlotTemplateSlot *)equalCopy localizedAttributedPlaceholder];
        v48 = localizedAttributedPlaceholder;
        v21 = localizedAttributedPlaceholder == localizedAttributedPlaceholder2;
        v22 = localizedAttributedPlaceholder2;
        v46 = localizedName;
        if (v21)
        {
          v44 = localizedName4;
          v45 = localizedPlaceholder;
        }

        else
        {
          v38 = localizedName2;
          v23 = localizedAttributedPlaceholder2;
          localizedAttributedPlaceholder3 = [(WFSlotTemplateSlot *)self localizedAttributedPlaceholder];
          string = [localizedAttributedPlaceholder3 string];
          localizedAttributedPlaceholder4 = [(WFSlotTemplateSlot *)equalCopy localizedAttributedPlaceholder];
          [localizedAttributedPlaceholder4 string];
          v39 = v41 = string;
          if (![string isEqualToString:?])
          {
            LOBYTE(v11) = 0;
            v22 = v23;
            v30 = v48;
            localizedName2 = v38;
LABEL_38:

LABEL_39:
            localizedName = v46;
            v18 = v47;
            if (localizedPlaceholder == v47)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }

          v44 = localizedName4;
          v45 = localizedPlaceholder;
          v22 = v23;
          localizedName2 = v38;
        }

        contentAttributedString = [(WFSlotTemplateSlot *)self contentAttributedString];
        contentAttributedString2 = [(WFSlotTemplateSlot *)equalCopy contentAttributedString];
        v27 = contentAttributedString2;
        v43 = localizedPlaceholder3;
        if (contentAttributedString != contentAttributedString2)
        {
          v36 = contentAttributedString2;
          v28 = contentAttributedString;
          contentAttributedString3 = [(WFSlotTemplateSlot *)self contentAttributedString];
          contentAttributedString4 = [(WFSlotTemplateSlot *)equalCopy contentAttributedString];
          v38 = contentAttributedString3;
          if (![contentAttributedString3 isEqualToAttributedString:?])
          {
            LOBYTE(v11) = 0;
            contentAttributedString = v28;
            v27 = v36;
            goto LABEL_36;
          }

          contentAttributedString = v28;
          v27 = v36;
        }

        prefersNoWrapping = [(WFSlotTemplateSlot *)self prefersNoWrapping];
        if (prefersNoWrapping == [(WFSlotTemplateSlot *)equalCopy prefersNoWrapping]&& (v32 = [(WFSlotTemplateSlot *)self standaloneTextAttachment], v32 == [(WFSlotTemplateSlot *)equalCopy standaloneTextAttachment]) && (v33 = [(WFSlotTemplateSlot *)self userInputInsertionIndex], v33 == [(WFSlotTemplateSlot *)equalCopy userInputInsertionIndex]))
        {
          representsButton = [(WFSlotTemplateSlot *)self representsButton];
          v11 = representsButton ^ [(WFSlotTemplateSlot *)equalCopy representsButton]^ 1;
          v35 = v11;
        }

        else
        {
          LOBYTE(v11) = 0;
          v35 = 0;
        }

        if (contentAttributedString == v27)
        {

          LOBYTE(v11) = v35;
          goto LABEL_37;
        }

LABEL_36:

LABEL_37:
        v30 = v48;
        localizedPlaceholder3 = v43;
        localizedName4 = v44;
        localizedPlaceholder = v45;
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
  identifier = [(WFSlotTemplateSlot *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)setContentAttributedString:(id)string
{
  v4 = [string mutableCopy];
  v5 = [v4 length];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __49__WFSlotTemplateSlot_setContentAttributedString___block_invoke;
  v12 = &unk_1E8308330;
  selfCopy = self;
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
  contentAttributedString = [(WFSlotTemplateSlot *)self contentAttributedString];
  v3 = [contentAttributedString length] != 0;

  return v3;
}

- (WFSlotTemplateSlot)initWithLocalizedName:(id)name localizedPlaceholder:(id)placeholder localizedAttributedPlaceholder:(id)attributedPlaceholder languageCode:(id)code identifier:(id)identifier
{
  nameCopy = name;
  placeholderCopy = placeholder;
  attributedPlaceholderCopy = attributedPlaceholder;
  codeCopy = code;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateSlot.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v30.receiver = self;
  v30.super_class = WFSlotTemplateSlot;
  v18 = [(WFSlotTemplateSlot *)&v30 init];
  if (v18)
  {
    v19 = [nameCopy copy];
    localizedName = v18->_localizedName;
    v18->_localizedName = v19;

    v21 = [placeholderCopy copy];
    localizedPlaceholder = v18->_localizedPlaceholder;
    v18->_localizedPlaceholder = v21;

    v23 = [attributedPlaceholderCopy copy];
    localizedAttributedPlaceholder = v18->_localizedAttributedPlaceholder;
    v18->_localizedAttributedPlaceholder = v23;

    v25 = [codeCopy copy];
    languageCode = v18->_languageCode;
    v18->_languageCode = v25;

    objc_storeStrong(&v18->_identifier, identifier);
    v18->_userInputInsertionIndex = -1;
    v18->_enabled = 1;
    v27 = v18;
  }

  return v18;
}

+ (id)slotWithLocalizedName:(id)name localizedPlaceholder:(id)placeholder localizedAttributedPlaceholder:(id)attributedPlaceholder key:(id)key
{
  keyCopy = key;
  attributedPlaceholderCopy = attributedPlaceholder;
  placeholderCopy = placeholder;
  nameCopy = name;
  v14 = [self alloc];
  v15 = [[WFSlotIdentifier alloc] initWithKey:keyCopy];

  v16 = [v14 initWithLocalizedName:nameCopy localizedPlaceholder:placeholderCopy localizedAttributedPlaceholder:attributedPlaceholderCopy languageCode:0 identifier:v15];

  return v16;
}

+ (id)slotWithLocalizedName:(id)name localizedPlaceholder:(id)placeholder languageCode:(id)code key:(id)key
{
  keyCopy = key;
  codeCopy = code;
  placeholderCopy = placeholder;
  nameCopy = name;
  v14 = [self alloc];
  v15 = [[WFSlotIdentifier alloc] initWithKey:keyCopy];

  v16 = [v14 initWithLocalizedName:nameCopy localizedPlaceholder:placeholderCopy localizedAttributedPlaceholder:0 languageCode:codeCopy identifier:v15];

  return v16;
}

+ (id)slotWithLocalizedName:(id)name localizedPlaceholder:(id)placeholder key:(id)key
{
  keyCopy = key;
  placeholderCopy = placeholder;
  nameCopy = name;
  v11 = [self alloc];
  v12 = [[WFSlotIdentifier alloc] initWithKey:keyCopy];

  v13 = [v11 initWithLocalizedName:nameCopy localizedPlaceholder:placeholderCopy localizedAttributedPlaceholder:0 languageCode:0 identifier:v12];

  return v13;
}

- (void)populateWithAttributedVariableString:(id)string attachmentName:(id)name
{
  nameCopy = name;
  v7 = [string mutableCopy];
  v8 = *MEMORY[0x1E69DB5F8];
  v9 = [v7 length];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __95__WFSlotTemplateSlot_WFVariableUtilities__populateWithAttributedVariableString_attachmentName___block_invoke;
  v14 = &unk_1E8308380;
  selfCopy = self;
  v16 = nameCopy;
  v10 = nameCopy;
  [v7 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, &v11}];
  [(WFSlotTemplateSlot *)self setContentAttributedString:v7, v11, v12, v13, v14, selfCopy];
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

- (void)populateWithSlotTemplateToken:(id)token attachmentName:(id)name
{
  nameCopy = name;
  tokenCopy = token;
  v7 = [[WFSlotTextAttachment alloc] initWithSlotTemplateToken:tokenCopy];

  identifier = [(WFSlotTemplateSlot *)self identifier];
  [(WFSlotTextAttachment *)v7 setContainingSlotIdentifier:identifier];

  [(WFSlotTextAttachment *)v7 setStandalone:1];
  if ([nameCopy length])
  {
    [(WFSlotTextAttachment *)v7 setOverrideVariableName:nameCopy];
  }

  v9 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
  [(WFSlotTemplateSlot *)self setContentAttributedString:v9];

  [(WFSlotTemplateSlot *)self setStandaloneTextAttachment:1];
}

- (void)populateWithIcon:(id)icon string:(id)string
{
  iconCopy = icon;
  stringCopy = string;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if (iconCopy)
  {
    v8 = [[WFSlotTemplateImageAttachment alloc] initWithData:0 ofType:0];
    platformImage = [iconCopy platformImage];
    [(WFSlotTemplateImageAttachment *)v8 setImage:platformImage];

    v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
    [v7 appendAttributedString:v10];

    if (!stringCopy)
    {
      goto LABEL_6;
    }

    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v7 appendAttributedString:v11];
  }

  else if (!stringCopy)
  {
    goto LABEL_6;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy];
  [v7 appendAttributedString:v12];

LABEL_6:
  [(WFSlotTemplateSlot *)self setContentAttributedString:v7];
  [(WFSlotTemplateSlot *)self setStandaloneTextAttachment:0];
}

- (void)populateWithAttributedString:(id)string
{
  stringCopy = string;
  [(WFSlotTemplateSlot *)self setContentAttributedString:stringCopy];
  if ([stringCopy length] == 1 && (objc_msgSend(stringCopy, "string"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "characterAtIndex:", 0), v5, v6 == 65532))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [stringCopy length];
    v8 = *MEMORY[0x1E69DB5F8];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__WFSlotTemplateSlot_WFVariableUtilities__populateWithAttributedString___block_invoke;
    v9[3] = &unk_1E8308358;
    v9[4] = &v10;
    [stringCopy enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v9}];
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

- (void)populateWithString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy];
    [(WFSlotTemplateSlot *)self populateWithAttributedString:v4];
  }

  else
  {
    [(WFSlotTemplateSlot *)self populateWithAttributedString:0];
  }
}

+ (id)addingSlotWithIdentifier:(id)identifier imageScaleFactor:(double)factor
{
  if (factor == 1.0)
  {
    v8 = MEMORY[0x1E69DB7F0];
    identifierCopy = identifier;
    v7 = [[v8 alloc] initWithData:0 ofType:0];
  }

  else
  {
    identifierCopy2 = identifier;
    v7 = [[WFSlotTemplateImageAttachment alloc] initWithData:0 ofType:0];
    [(WFSlotTemplateImageAttachment *)v7 setImageScaleFactor:factor];
  }

  v10 = [MEMORY[0x1E69E0B68] configurationWithPointSize:20.0];
  v11 = [MEMORY[0x1E69E0B58] systemImageNamed:@"plus" configuration:v10 renderingMode:0];
  v12 = [v11 imageWithRenderingMode:2];
  platformImage = [v12 platformImage];
  [(WFSlotTemplateImageAttachment *)v7 setImage:platformImage];

  v14 = [[WFSlotTemplateSlot alloc] initWithLocalizedName:0 localizedPlaceholder:0 localizedAttributedPlaceholder:0 languageCode:0 identifier:identifier];
  v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
  [(WFSlotTemplateSlot *)v14 setContentAttributedString:v15];

  [(WFSlotTemplateSlot *)v14 setRepresentsButton:1];

  return v14;
}

+ (id)addingSlotWithKey:(id)key
{
  keyCopy = key;
  v5 = [[WFSlotIdentifier alloc] initWithKey:keyCopy];

  v6 = [self addingSlotWithIdentifier:v5 imageScaleFactor:1.0];

  return v6;
}

@end