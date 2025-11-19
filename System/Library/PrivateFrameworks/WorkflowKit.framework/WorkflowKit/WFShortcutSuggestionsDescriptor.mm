@interface WFShortcutSuggestionsDescriptor
- (WFShortcutSuggestionsDescriptor)initWithCoder:(id)a3;
- (WFShortcutSuggestionsDescriptor)initWithIdentifier:(id)a3 suggestions:(id)a4 availability:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFShortcutSuggestionsDescriptor

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFShortcutSuggestionsDescriptor;
  v4 = a3;
  [(WFShortcutSuggestionsDescriptor *)&v6 encodeWithCoder:v4];
  v5 = [(WFShortcutSuggestionsDescriptor *)self suggestions:v6.receiver];
  [v4 encodeObject:v5 forKey:@"suggestions"];

  [v4 encodeInteger:-[WFShortcutSuggestionsDescriptor availability](self forKey:{"availability"), @"availability"}];
}

- (WFShortcutSuggestionsDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFShortcutSuggestionsDescriptor;
  v5 = [(WFShortcutSuggestionsDescriptor *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"suggestions"];
    suggestions = v5->_suggestions;
    v5->_suggestions = v9;

    v5->_availability = [v4 decodeIntegerForKey:@"availability"];
    v11 = v5;
  }

  return v5;
}

- (WFShortcutSuggestionsDescriptor)initWithIdentifier:(id)a3 suggestions:(id)a4 availability:(unint64_t)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WFShortcutSuggestionsDescriptor;
  v9 = [(WFShortcutSuggestionsDescriptor *)&v14 initWithIdentifier:a3 objectType:6];
  if (v9)
  {
    v10 = [v8 copy];
    suggestions = v9->_suggestions;
    v9->_suggestions = v10;

    v9->_availability = a5;
    v12 = v9;
  }

  return v9;
}

@end