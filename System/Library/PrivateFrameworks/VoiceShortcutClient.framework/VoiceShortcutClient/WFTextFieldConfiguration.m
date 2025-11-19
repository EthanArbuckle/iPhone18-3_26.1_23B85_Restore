@interface WFTextFieldConfiguration
- (WFTextFieldConfiguration)init;
- (WFTextFieldConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFTextFieldConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFTextFieldConfiguration *)self prefix];
  [v4 encodeObject:v5 forKey:@"prefix"];

  v6 = [(WFTextFieldConfiguration *)self text];
  [v4 encodeObject:v6 forKey:@"text"];

  v7 = [(WFTextFieldConfiguration *)self placeholder];
  [v4 encodeObject:v7 forKey:@"placeholder"];

  [v4 encodeBool:-[WFTextFieldConfiguration isSecureTextEntry](self forKey:{"isSecureTextEntry"), @"secureTextEntry"}];
  [v4 encodeBool:-[WFTextFieldConfiguration isMultiline](self forKey:{"isMultiline"), @"multiline"}];
  [v4 encodeBool:-[WFTextFieldConfiguration allowsNegativeNumbers](self forKey:{"allowsNegativeNumbers"), @"allowsNegativeNumbers"}];
  [v4 encodeBool:-[WFTextFieldConfiguration smartQuotesDisabled](self forKey:{"smartQuotesDisabled"), @"smartQuotesDisabled"}];
  [v4 encodeBool:-[WFTextFieldConfiguration smartDashesDisabled](self forKey:{"smartDashesDisabled"), @"smartDashesDisabled"}];
  v8 = [(WFTextFieldConfiguration *)self keyboardType];
  [v4 encodeObject:v8 forKey:@"keyboardType"];

  v9 = [(WFTextFieldConfiguration *)self clearButtonMode];
  [v4 encodeObject:v9 forKey:@"clearButtonMode"];

  v10 = [(WFTextFieldConfiguration *)self autocapitalizationType];
  [v4 encodeObject:v10 forKey:@"autocapitalizationType"];

  v11 = [(WFTextFieldConfiguration *)self autocorrectionType];
  [v4 encodeObject:v11 forKey:@"autocorrectionType"];

  v12 = [(WFTextFieldConfiguration *)self returnKeyType];
  [v4 encodeObject:v12 forKey:@"returnKeyType"];

  v13 = [(WFTextFieldConfiguration *)self textContentType];
  [v4 encodeObject:v13 forKey:@"textContentType"];

  v14 = [(WFTextFieldConfiguration *)self textAlignment];
  [v4 encodeObject:v14 forKey:@"textAlignment"];

  [v4 encodeBool:-[WFTextFieldConfiguration focusImmediatelyWhenPresented](self forKey:{"focusImmediatelyWhenPresented"), @"focusImmediatelyWhenPresented"}];
  [v4 encodeInteger:-[WFTextFieldConfiguration initialInsertionIndex](self forKey:{"initialInsertionIndex"), @"initialInsertionIndex"}];
  [v4 encodeBool:-[WFTextFieldConfiguration showsDateFormattingHint](self forKey:{"showsDateFormattingHint"), @"showsDateFormattingHint"}];
  [v4 encodeInteger:-[WFTextFieldConfiguration dateFormatStyle](self forKey:{"dateFormatStyle"), @"dateFormatStyle"}];
  [v4 encodeInteger:-[WFTextFieldConfiguration timeFormatStyle](self forKey:{"timeFormatStyle"), @"timeFormatStyle"}];
  [v4 encodeBool:-[WFTextFieldConfiguration dateHintPrefersDateOnly](self forKey:{"dateHintPrefersDateOnly"), @"dateHintPrefersDateOnly"}];
  [v4 encodeBool:-[WFTextFieldConfiguration doesRelativeDateFormatting](self forKey:{"doesRelativeDateFormatting"), @"doesRelativeDateFormatting"}];
  v15 = [(WFTextFieldConfiguration *)self localizedIncompleteHintString];
  [v4 encodeObject:v15 forKey:@"localizedIncompleteHintString"];
}

- (WFTextFieldConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = WFTextFieldConfiguration;
  v5 = [(WFTextFieldConfiguration *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prefix"];
    prefix = v5->_prefix;
    v5->_prefix = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholder"];
    placeholder = v5->_placeholder;
    v5->_placeholder = v10;

    v5->_secureTextEntry = [v4 decodeBoolForKey:@"secureTextEntry"];
    v5->_multiline = [v4 decodeBoolForKey:@"multiline"];
    v5->_allowsNegativeNumbers = [v4 decodeBoolForKey:@"allowsNegativeNumbers"];
    v5->_autoPeriodsDisabled = [v4 decodeBoolForKey:@"autoPeriodsDisabled"];
    v5->_smartQuotesDisabled = [v4 decodeBoolForKey:@"smartQuotesDisabled"];
    v5->_smartDashesDisabled = [v4 decodeBoolForKey:@"smartDashesDisabled"];
    v5->_textReplacementDisabled = [v4 decodeBoolForKey:@"textReplacementDisabled"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardType"];
    keyboardType = v5->_keyboardType;
    v5->_keyboardType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clearButtonMode"];
    clearButtonMode = v5->_clearButtonMode;
    v5->_clearButtonMode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autocapitalizationType"];
    autocapitalizationType = v5->_autocapitalizationType;
    v5->_autocapitalizationType = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autocorrectionType"];
    autocorrectionType = v5->_autocorrectionType;
    v5->_autocorrectionType = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"returnKeyType"];
    returnKeyType = v5->_returnKeyType;
    v5->_returnKeyType = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textContentType"];
    textContentType = v5->_textContentType;
    v5->_textContentType = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textAlignment"];
    textAlignment = v5->_textAlignment;
    v5->_textAlignment = v24;

    v5->_focusImmediatelyWhenPresented = [v4 decodeBoolForKey:@"focusImmediatelyWhenPresented"];
    v5->_initialInsertionIndex = [v4 decodeIntegerForKey:@"initialInsertionIndex"];
    v5->_showsDateFormattingHint = [v4 decodeBoolForKey:@"showsDateFormattingHint"];
    v5->_dateFormatStyle = [v4 decodeIntegerForKey:@"dateFormatStyle"];
    v5->_timeFormatStyle = [v4 decodeIntegerForKey:@"timeFormatStyle"];
    v5->_dateHintPrefersDateOnly = [v4 decodeBoolForKey:@"dateHintPrefersDateOnly"];
    v5->_doesRelativeDateFormatting = [v4 decodeBoolForKey:@"doesRelativeDateFormatting"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedIncompleteHintString"];
    localizedIncompleteHintString = v5->_localizedIncompleteHintString;
    v5->_localizedIncompleteHintString = v26;

    v28 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WFTextFieldConfiguration *)self prefix];
  [v4 setPrefix:v5];

  v6 = [(WFTextFieldConfiguration *)self text];
  [v4 setText:v6];

  v7 = [(WFTextFieldConfiguration *)self placeholder];
  [v4 setPlaceholder:v7];

  [v4 setSecureTextEntry:{-[WFTextFieldConfiguration isSecureTextEntry](self, "isSecureTextEntry")}];
  [v4 setMultiline:{-[WFTextFieldConfiguration isMultiline](self, "isMultiline")}];
  [v4 setAllowsNegativeNumbers:{-[WFTextFieldConfiguration allowsNegativeNumbers](self, "allowsNegativeNumbers")}];
  [v4 setAutoPeriodsDisabled:{-[WFTextFieldConfiguration autoPeriodsDisabled](self, "autoPeriodsDisabled")}];
  [v4 setSmartQuotesDisabled:{-[WFTextFieldConfiguration smartQuotesDisabled](self, "smartQuotesDisabled")}];
  [v4 setSmartDashesDisabled:{-[WFTextFieldConfiguration smartDashesDisabled](self, "smartDashesDisabled")}];
  [v4 setTextReplacementDisabled:{-[WFTextFieldConfiguration textReplacementDisabled](self, "textReplacementDisabled")}];
  v8 = [(WFTextFieldConfiguration *)self keyboardType];
  [v4 setKeyboardType:v8];

  v9 = [(WFTextFieldConfiguration *)self clearButtonMode];
  [v4 setClearButtonMode:v9];

  v10 = [(WFTextFieldConfiguration *)self autocapitalizationType];
  [v4 setAutocapitalizationType:v10];

  v11 = [(WFTextFieldConfiguration *)self autocorrectionType];
  [v4 setAutocorrectionType:v11];

  v12 = [(WFTextFieldConfiguration *)self returnKeyType];
  [v4 setReturnKeyType:v12];

  v13 = [(WFTextFieldConfiguration *)self textContentType];
  [v4 setTextContentType:v13];

  v14 = [(WFTextFieldConfiguration *)self textAlignment];
  [v4 setTextAlignment:v14];

  [v4 setFocusImmediatelyWhenPresented:{-[WFTextFieldConfiguration focusImmediatelyWhenPresented](self, "focusImmediatelyWhenPresented")}];
  [v4 setInitialInsertionIndex:{-[WFTextFieldConfiguration initialInsertionIndex](self, "initialInsertionIndex")}];
  [v4 setShowsDateFormattingHint:{-[WFTextFieldConfiguration showsDateFormattingHint](self, "showsDateFormattingHint")}];
  [v4 setDateFormatStyle:{-[WFTextFieldConfiguration dateFormatStyle](self, "dateFormatStyle")}];
  [v4 setTimeFormatStyle:{-[WFTextFieldConfiguration timeFormatStyle](self, "timeFormatStyle")}];
  [v4 setDateHintPrefersDateOnly:{-[WFTextFieldConfiguration dateHintPrefersDateOnly](self, "dateHintPrefersDateOnly")}];
  [v4 setDoesRelativeDateFormatting:{-[WFTextFieldConfiguration doesRelativeDateFormatting](self, "doesRelativeDateFormatting")}];
  v15 = [(WFTextFieldConfiguration *)self localizedIncompleteHintString];
  [v4 setLocalizedIncompleteHintString:v15];

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