@interface TFFeedbackEntryLongText
- (TFFeedbackEntryLongText)initWithIdentifier:(id)identifier title:(id)title placeholder:(id)placeholder;
@end

@implementation TFFeedbackEntryLongText

- (TFFeedbackEntryLongText)initWithIdentifier:(id)identifier title:(id)title placeholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v13.receiver = self;
  v13.super_class = TFFeedbackEntryLongText;
  v9 = [(TFFeedbackEntry *)&v13 initWithType:1 identifier:identifier title:title];
  if (v9)
  {
    v10 = [placeholderCopy copy];
    placeholder = v9->_placeholder;
    v9->_placeholder = v10;
  }

  return v9;
}

@end