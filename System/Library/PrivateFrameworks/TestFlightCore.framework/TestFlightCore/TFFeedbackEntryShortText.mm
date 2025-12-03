@interface TFFeedbackEntryShortText
- (TFFeedbackEntryShortText)initWithIdentifier:(id)identifier title:(id)title placeholder:(id)placeholder contentType:(unint64_t)type;
@end

@implementation TFFeedbackEntryShortText

- (TFFeedbackEntryShortText)initWithIdentifier:(id)identifier title:(id)title placeholder:(id)placeholder contentType:(unint64_t)type
{
  placeholderCopy = placeholder;
  v15.receiver = self;
  v15.super_class = TFFeedbackEntryShortText;
  v11 = [(TFFeedbackEntry *)&v15 initWithType:0 identifier:identifier title:title];
  if (v11)
  {
    v12 = [placeholderCopy copy];
    placeholder = v11->_placeholder;
    v11->_placeholder = v12;

    v11->_contentType = type;
  }

  return v11;
}

@end