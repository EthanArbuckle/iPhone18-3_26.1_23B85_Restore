@interface TFFeedbackEntry
- (TFFeedbackEntry)initWithType:(unint64_t)a3 identifier:(id)a4 title:(id)a5;
@end

@implementation TFFeedbackEntry

- (TFFeedbackEntry)initWithType:(unint64_t)a3 identifier:(id)a4 title:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = TFFeedbackEntry;
  v10 = [(TFFeedbackEntry *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    title = v11->_title;
    v11->_title = v14;
  }

  return v11;
}

@end