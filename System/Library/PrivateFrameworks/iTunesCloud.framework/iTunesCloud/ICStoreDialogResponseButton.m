@interface ICStoreDialogResponseButton
- (ICStoreDialogResponseButton)initWithType:(int64_t)a3 isDefaultButton:(BOOL)a4 title:(id)a5 action:(id)a6;
@end

@implementation ICStoreDialogResponseButton

- (ICStoreDialogResponseButton)initWithType:(int64_t)a3 isDefaultButton:(BOOL)a4 title:(id)a5 action:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = ICStoreDialogResponseButton;
  v12 = [(ICStoreDialogResponseButton *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = a3;
    v12->_isDefaultButton = a4;
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [v11 copy];
    action = v13->_action;
    v13->_action = v16;
  }

  return v13;
}

@end