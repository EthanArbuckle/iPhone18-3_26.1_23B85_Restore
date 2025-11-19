@interface UISwipeActionsConfiguration
+ (UISwipeActionsConfiguration)configurationWithActions:(NSArray *)actions;
- (UISwipeActionsConfiguration)init;
- (id)description;
@end

@implementation UISwipeActionsConfiguration

+ (UISwipeActionsConfiguration)configurationWithActions:(NSArray *)actions
{
  v4 = actions;
  v5 = objc_alloc_init(a1);
  v6 = v5[2];
  v5[2] = v4;

  return v5;
}

- (UISwipeActionsConfiguration)init
{
  v4.receiver = self;
  v4.super_class = UISwipeActionsConfiguration;
  v2 = [(UISwipeActionsConfiguration *)&v4 init];
  [(UISwipeActionsConfiguration *)v2 _setAutosizesButtons:1];
  [(UISwipeActionsConfiguration *)v2 setPerformsFirstActionWithFullSwipe:1];
  return v2;
}

- (id)description
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_actions);
  v8[0] = v3;
  v4 = NSStringFromSelector(sel_performsFirstActionWithFullSwipe);
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [UIDescriptionBuilder descriptionForObject:self keys:v5];

  return v6;
}

@end