@interface PKEditGroupsAction
- (PKEditGroupsAction)initWithLabel:(id)a3 type:(id)a4;
@end

@implementation PKEditGroupsAction

- (PKEditGroupsAction)initWithLabel:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKEditGroupsAction;
  v8 = [(PKEditGroupsAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PKEditGroupsAction *)v8 setActionLabel:v6];
    [(PKEditGroupsAction *)v9 setActionType:v7];
  }

  return v9;
}

@end