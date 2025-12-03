@interface TFFeedbackForm
- (TFFeedbackForm)initWithTitle:(id)title entryGroups:(id)groups;
@end

@implementation TFFeedbackForm

- (TFFeedbackForm)initWithTitle:(id)title entryGroups:(id)groups
{
  titleCopy = title;
  groupsCopy = groups;
  v14.receiver = self;
  v14.super_class = TFFeedbackForm;
  v8 = [(TFFeedbackForm *)&v14 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [groupsCopy copy];
    entryGroups = v8->_entryGroups;
    v8->_entryGroups = v11;
  }

  return v8;
}

@end