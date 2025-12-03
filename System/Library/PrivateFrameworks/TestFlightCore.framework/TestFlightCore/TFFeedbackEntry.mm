@interface TFFeedbackEntry
- (TFFeedbackEntry)initWithType:(unint64_t)type identifier:(id)identifier title:(id)title;
@end

@implementation TFFeedbackEntry

- (TFFeedbackEntry)initWithType:(unint64_t)type identifier:(id)identifier title:(id)title
{
  identifierCopy = identifier;
  titleCopy = title;
  v17.receiver = self;
  v17.super_class = TFFeedbackEntry;
  v10 = [(TFFeedbackEntry *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v14;
  }

  return v11;
}

@end