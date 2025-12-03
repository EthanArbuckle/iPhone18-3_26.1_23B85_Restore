@interface WFTextFieldConfiguration
- (WFTextFieldConfiguration)init;
- (WFTextFieldConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFTextFieldConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  prefix = [(WFTextFieldConfiguration *)self prefix];
  [coderCopy encodeObject:prefix forKey:@"prefix"];

  text = [(WFTextFieldConfiguration *)self text];
  [coderCopy encodeObject:text forKey:@"text"];

  placeholder = [(WFTextFieldConfiguration *)self placeholder];
  [coderCopy encodeObject:placeholder forKey:@"placeholder"];

  [coderCopy encodeBool:-[WFTextFieldConfiguration isSecureTextEntry](self forKey:{"isSecureTextEntry"), @"secureTextEntry"}];
  [coderCopy encodeBool:-[WFTextFieldConfiguration isMultiline](self forKey:{"isMultiline"), @"multiline"}];
  [coderCopy encodeBool:-[WFTextFieldConfiguration allowsNegativeNumbers](self forKey:{"allowsNegativeNumbers"), @"allowsNegativeNumbers"}];
  [coderCopy encodeBool:-[WFTextFieldConfiguration smartQuotesDisabled](self forKey:{"smartQuotesDisabled"), @"smartQuotesDisabled"}];
  [coderCopy encodeBool:-[WFTextFieldConfiguration smartDashesDisabled](self forKey:{"smartDashesDisabled"), @"smartDashesDisabled"}];
  keyboardType = [(WFTextFieldConfiguration *)self keyboardType];
  [coderCopy encodeObject:keyboardType forKey:@"keyboardType"];

  clearButtonMode = [(WFTextFieldConfiguration *)self clearButtonMode];
  [coderCopy encodeObject:clearButtonMode forKey:@"clearButtonMode"];

  autocapitalizationType = [(WFTextFieldConfiguration *)self autocapitalizationType];
  [coderCopy encodeObject:autocapitalizationType forKey:@"autocapitalizationType"];

  autocorrectionType = [(WFTextFieldConfiguration *)self autocorrectionType];
  [coderCopy encodeObject:autocorrectionType forKey:@"autocorrectionType"];

  returnKeyType = [(WFTextFieldConfiguration *)self returnKeyType];
  [coderCopy encodeObject:returnKeyType forKey:@"returnKeyType"];

  textContentType = [(WFTextFieldConfiguration *)self textContentType];
  [coderCopy encodeObject:textContentType forKey:@"textContentType"];

  textAlignment = [(WFTextFieldConfiguration *)self textAlignment];
  [coderCopy encodeObject:textAlignment forKey:@"textAlignment"];

  [coderCopy encodeBool:-[WFTextFieldConfiguration focusImmediatelyWhenPresented](self forKey:{"focusImmediatelyWhenPresented"), @"focusImmediatelyWhenPresented"}];
  [coderCopy encodeInteger:-[WFTextFieldConfiguration initialInsertionIndex](self forKey:{"initialInsertionIndex"), @"initialInsertionIndex"}];
  [coderCopy encodeBool:-[WFTextFieldConfiguration showsDateFormattingHint](self forKey:{"showsDateFormattingHint"), @"showsDateFormattingHint"}];
  [coderCopy encodeInteger:-[WFTextFieldConfiguration dateFormatStyle](self forKey:{"dateFormatStyle"), @"dateFormatStyle"}];
  [coderCopy encodeInteger:-[WFTextFieldConfiguration timeFormatStyle](self forKey:{"timeFormatStyle"), @"timeFormatStyle"}];
  [coderCopy encodeBool:-[WFTextFieldConfiguration dateHintPrefersDateOnly](self forKey:{"dateHintPrefersDateOnly"), @"dateHintPrefersDateOnly"}];
  [coderCopy encodeBool:-[WFTextFieldConfiguration doesRelativeDateFormatting](self forKey:{"doesRelativeDateFormatting"), @"doesRelativeDateFormatting"}];
  localizedIncompleteHintString = [(WFTextFieldConfiguration *)self localizedIncompleteHintString];
  [coderCopy encodeObject:localizedIncompleteHintString forKey:@"localizedIncompleteHintString"];
}

- (WFTextFieldConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = WFTextFieldConfiguration;
  v5 = [(WFTextFieldConfiguration *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prefix"];
    prefix = v5->_prefix;
    v5->_prefix = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholder"];
    placeholder = v5->_placeholder;
    v5->_placeholder = v10;

    v5->_secureTextEntry = [coderCopy decodeBoolForKey:@"secureTextEntry"];
    v5->_multiline = [coderCopy decodeBoolForKey:@"multiline"];
    v5->_allowsNegativeNumbers = [coderCopy decodeBoolForKey:@"allowsNegativeNumbers"];
    v5->_autoPeriodsDisabled = [coderCopy decodeBoolForKey:@"autoPeriodsDisabled"];
    v5->_smartQuotesDisabled = [coderCopy decodeBoolForKey:@"smartQuotesDisabled"];
    v5->_smartDashesDisabled = [coderCopy decodeBoolForKey:@"smartDashesDisabled"];
    v5->_textReplacementDisabled = [coderCopy decodeBoolForKey:@"textReplacementDisabled"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardType"];
    keyboardType = v5->_keyboardType;
    v5->_keyboardType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clearButtonMode"];
    clearButtonMode = v5->_clearButtonMode;
    v5->_clearButtonMode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autocapitalizationType"];
    autocapitalizationType = v5->_autocapitalizationType;
    v5->_autocapitalizationType = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autocorrectionType"];
    autocorrectionType = v5->_autocorrectionType;
    v5->_autocorrectionType = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"returnKeyType"];
    returnKeyType = v5->_returnKeyType;
    v5->_returnKeyType = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textContentType"];
    textContentType = v5->_textContentType;
    v5->_textContentType = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textAlignment"];
    textAlignment = v5->_textAlignment;
    v5->_textAlignment = v24;

    v5->_focusImmediatelyWhenPresented = [coderCopy decodeBoolForKey:@"focusImmediatelyWhenPresented"];
    v5->_initialInsertionIndex = [coderCopy decodeIntegerForKey:@"initialInsertionIndex"];
    v5->_showsDateFormattingHint = [coderCopy decodeBoolForKey:@"showsDateFormattingHint"];
    v5->_dateFormatStyle = [coderCopy decodeIntegerForKey:@"dateFormatStyle"];
    v5->_timeFormatStyle = [coderCopy decodeIntegerForKey:@"timeFormatStyle"];
    v5->_dateHintPrefersDateOnly = [coderCopy decodeBoolForKey:@"dateHintPrefersDateOnly"];
    v5->_doesRelativeDateFormatting = [coderCopy decodeBoolForKey:@"doesRelativeDateFormatting"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedIncompleteHintString"];
    localizedIncompleteHintString = v5->_localizedIncompleteHintString;
    v5->_localizedIncompleteHintString = v26;

    v28 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  prefix = [(WFTextFieldConfiguration *)self prefix];
  [v4 setPrefix:prefix];

  text = [(WFTextFieldConfiguration *)self text];
  [v4 setText:text];

  placeholder = [(WFTextFieldConfiguration *)self placeholder];
  [v4 setPlaceholder:placeholder];

  [v4 setSecureTextEntry:{-[WFTextFieldConfiguration isSecureTextEntry](self, "isSecureTextEntry")}];
  [v4 setMultiline:{-[WFTextFieldConfiguration isMultiline](self, "isMultiline")}];
  [v4 setAllowsNegativeNumbers:{-[WFTextFieldConfiguration allowsNegativeNumbers](self, "allowsNegativeNumbers")}];
  [v4 setAutoPeriodsDisabled:{-[WFTextFieldConfiguration autoPeriodsDisabled](self, "autoPeriodsDisabled")}];
  [v4 setSmartQuotesDisabled:{-[WFTextFieldConfiguration smartQuotesDisabled](self, "smartQuotesDisabled")}];
  [v4 setSmartDashesDisabled:{-[WFTextFieldConfiguration smartDashesDisabled](self, "smartDashesDisabled")}];
  [v4 setTextReplacementDisabled:{-[WFTextFieldConfiguration textReplacementDisabled](self, "textReplacementDisabled")}];
  keyboardType = [(WFTextFieldConfiguration *)self keyboardType];
  [v4 setKeyboardType:keyboardType];

  clearButtonMode = [(WFTextFieldConfiguration *)self clearButtonMode];
  [v4 setClearButtonMode:clearButtonMode];

  autocapitalizationType = [(WFTextFieldConfiguration *)self autocapitalizationType];
  [v4 setAutocapitalizationType:autocapitalizationType];

  autocorrectionType = [(WFTextFieldConfiguration *)self autocorrectionType];
  [v4 setAutocorrectionType:autocorrectionType];

  returnKeyType = [(WFTextFieldConfiguration *)self returnKeyType];
  [v4 setReturnKeyType:returnKeyType];

  textContentType = [(WFTextFieldConfiguration *)self textContentType];
  [v4 setTextContentType:textContentType];

  textAlignment = [(WFTextFieldConfiguration *)self textAlignment];
  [v4 setTextAlignment:textAlignment];

  [v4 setFocusImmediatelyWhenPresented:{-[WFTextFieldConfiguration focusImmediatelyWhenPresented](self, "focusImmediatelyWhenPresented")}];
  [v4 setInitialInsertionIndex:{-[WFTextFieldConfiguration initialInsertionIndex](self, "initialInsertionIndex")}];
  [v4 setShowsDateFormattingHint:{-[WFTextFieldConfiguration showsDateFormattingHint](self, "showsDateFormattingHint")}];
  [v4 setDateFormatStyle:{-[WFTextFieldConfiguration dateFormatStyle](self, "dateFormatStyle")}];
  [v4 setTimeFormatStyle:{-[WFTextFieldConfiguration timeFormatStyle](self, "timeFormatStyle")}];
  [v4 setDateHintPrefersDateOnly:{-[WFTextFieldConfiguration dateHintPrefersDateOnly](self, "dateHintPrefersDateOnly")}];
  [v4 setDoesRelativeDateFormatting:{-[WFTextFieldConfiguration doesRelativeDateFormatting](self, "doesRelativeDateFormatting")}];
  localizedIncompleteHintString = [(WFTextFieldConfiguration *)self localizedIncompleteHintString];
  [v4 setLocalizedIncompleteHintString:localizedIncompleteHintString];

  return v4;
}

- (WFTextFieldConfiguration)init
{
  v7.receiver = self;
  v7.super_class = WFTextFieldConfiguration;
  v2 = [(WFTextFieldConfiguration *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowsNegativeNumbers = 1;
    v2->_focusImmediatelyWhenPresented = 1;
    v2->_initialInsertionIndex = -1;
    clearButtonMode = v2->_clearButtonMode;
    v2->_clearButtonMode = @"Always";

    v5 = v3;
  }

  return v3;
}

@end