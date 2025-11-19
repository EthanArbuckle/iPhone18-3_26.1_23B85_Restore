@interface TFFeedbackEntryShortText
- (TFFeedbackEntryShortText)initWithIdentifier:(id)a3 title:(id)a4 placeholder:(id)a5 contentType:(unint64_t)a6;
@end

@implementation TFFeedbackEntryShortText

- (TFFeedbackEntryShortText)initWithIdentifier:(id)a3 title:(id)a4 placeholder:(id)a5 contentType:(unint64_t)a6
{
  v10 = a5;
  v15.receiver = self;
  v15.super_class = TFFeedbackEntryShortText;
  v11 = [(TFFeedbackEntry *)&v15 initWithType:0 identifier:a3 title:a4];
  if (v11)
  {
    v12 = [v10 copy];
    placeholder = v11->_placeholder;
    v11->_placeholder = v12;

    v11->_contentType = a6;
  }

  return v11;
}

@end