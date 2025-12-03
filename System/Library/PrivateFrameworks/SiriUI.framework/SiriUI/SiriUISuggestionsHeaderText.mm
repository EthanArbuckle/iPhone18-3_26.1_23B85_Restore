@interface SiriUISuggestionsHeaderText
- (BOOL)isEqual:(id)equal;
- (NSAttributedString)attributedStringForMainScreenTraitCollection;
- (SiriUISuggestionsHeaderText)initWithRegularString:(id)string compactString:(id)compactString;
- (id)_attributedStringWithString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SiriUISuggestionsHeaderText

- (SiriUISuggestionsHeaderText)initWithRegularString:(id)string compactString:(id)compactString
{
  stringCopy = string;
  compactStringCopy = compactString;
  v16.receiver = self;
  v16.super_class = SiriUISuggestionsHeaderText;
  v8 = [(SiriUISuggestionsHeaderText *)&v16 init];
  if (v8)
  {
    v9 = [stringCopy copy];
    regularString = v8->_regularString;
    v8->_regularString = v9;

    v11 = [compactStringCopy copy];
    compactString = v8->_compactString;
    v8->_compactString = v11;

    IsRTL = SiriLanguageIsRTL();
    v14 = 2;
    if (!IsRTL)
    {
      v14 = 0;
    }

    v8->_textAlignment = v14;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setRegularString:self->_regularString];
  [v4 setCompactString:self->_compactString];
  return v4;
}

- (NSAttributedString)attributedStringForMainScreenTraitCollection
{
  if (!SiriUIIsCompactWidth() || (regularString = self->_compactString) == 0)
  {
    regularString = self->_regularString;
  }

  return [(SiriUISuggestionsHeaderText *)self _attributedStringWithString:regularString];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    regularString = self->_regularString;
    regularString = [equalCopy regularString];
    if ([(NSString *)regularString isEqualToString:regularString])
    {
      compactString = self->_compactString;
      compactString = [equalCopy compactString];
      v9 = [(NSString *)compactString isEqualToString:compactString];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_attributedStringWithString:(id)string
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D74240];
  stringCopy = string;
  v6 = objc_alloc_init(v4);
  [v6 setLineSpacing:0.0];
  [v6 setAlignment:self->_textAlignment];
  v7 = objc_alloc(MEMORY[0x277CCA898]);
  if (stringCopy)
  {
    v8 = stringCopy;
  }

  else
  {
    v8 = &stru_2879FFD58;
  }

  v12 = *MEMORY[0x277D74118];
  v13[0] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v7 initWithString:v8 attributes:v9];

  return v10;
}

@end