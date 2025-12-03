@interface ICStoreDialogResponseButton
- (ICStoreDialogResponseButton)initWithType:(int64_t)type isDefaultButton:(BOOL)button title:(id)title action:(id)action;
@end

@implementation ICStoreDialogResponseButton

- (ICStoreDialogResponseButton)initWithType:(int64_t)type isDefaultButton:(BOOL)button title:(id)title action:(id)action
{
  titleCopy = title;
  actionCopy = action;
  v19.receiver = self;
  v19.super_class = ICStoreDialogResponseButton;
  v12 = [(ICStoreDialogResponseButton *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = type;
    v12->_isDefaultButton = button;
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [actionCopy copy];
    action = v13->_action;
    v13->_action = v16;
  }

  return v13;
}

@end