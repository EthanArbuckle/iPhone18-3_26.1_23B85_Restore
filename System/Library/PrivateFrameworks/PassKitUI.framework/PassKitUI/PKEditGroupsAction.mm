@interface PKEditGroupsAction
- (PKEditGroupsAction)initWithLabel:(id)label type:(id)type;
@end

@implementation PKEditGroupsAction

- (PKEditGroupsAction)initWithLabel:(id)label type:(id)type
{
  labelCopy = label;
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = PKEditGroupsAction;
  v8 = [(PKEditGroupsAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PKEditGroupsAction *)v8 setActionLabel:labelCopy];
    [(PKEditGroupsAction *)v9 setActionType:typeCopy];
  }

  return v9;
}

@end