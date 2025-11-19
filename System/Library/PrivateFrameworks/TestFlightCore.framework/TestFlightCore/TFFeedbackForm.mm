@interface TFFeedbackForm
- (TFFeedbackForm)initWithTitle:(id)a3 entryGroups:(id)a4;
@end

@implementation TFFeedbackForm

- (TFFeedbackForm)initWithTitle:(id)a3 entryGroups:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TFFeedbackForm;
  v8 = [(TFFeedbackForm *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    entryGroups = v8->_entryGroups;
    v8->_entryGroups = v11;
  }

  return v8;
}

@end