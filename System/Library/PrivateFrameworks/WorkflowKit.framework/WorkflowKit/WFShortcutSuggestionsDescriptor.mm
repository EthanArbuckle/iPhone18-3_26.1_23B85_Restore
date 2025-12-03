@interface WFShortcutSuggestionsDescriptor
- (WFShortcutSuggestionsDescriptor)initWithCoder:(id)coder;
- (WFShortcutSuggestionsDescriptor)initWithIdentifier:(id)identifier suggestions:(id)suggestions availability:(unint64_t)availability;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFShortcutSuggestionsDescriptor

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFShortcutSuggestionsDescriptor;
  coderCopy = coder;
  [(WFShortcutSuggestionsDescriptor *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFShortcutSuggestionsDescriptor *)self suggestions:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"suggestions"];

  [coderCopy encodeInteger:-[WFShortcutSuggestionsDescriptor availability](self forKey:{"availability"), @"availability"}];
}

- (WFShortcutSuggestionsDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WFShortcutSuggestionsDescriptor;
  v5 = [(WFShortcutSuggestionsDescriptor *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"suggestions"];
    suggestions = v5->_suggestions;
    v5->_suggestions = v9;

    v5->_availability = [coderCopy decodeIntegerForKey:@"availability"];
    v11 = v5;
  }

  return v5;
}

- (WFShortcutSuggestionsDescriptor)initWithIdentifier:(id)identifier suggestions:(id)suggestions availability:(unint64_t)availability
{
  suggestionsCopy = suggestions;
  v14.receiver = self;
  v14.super_class = WFShortcutSuggestionsDescriptor;
  v9 = [(WFShortcutSuggestionsDescriptor *)&v14 initWithIdentifier:identifier objectType:6];
  if (v9)
  {
    v10 = [suggestionsCopy copy];
    suggestions = v9->_suggestions;
    v9->_suggestions = v10;

    v9->_availability = availability;
    v12 = v9;
  }

  return v9;
}

@end