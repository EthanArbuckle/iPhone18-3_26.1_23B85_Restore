@interface _PXToastAction
- (_PXToastAction)initWithTitle:(id)title action:(id)action;
@end

@implementation _PXToastAction

- (_PXToastAction)initWithTitle:(id)title action:(id)action
{
  titleCopy = title;
  actionCopy = action;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXToastPlacardView.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"title != nil"}];
  }

  v16.receiver = self;
  v16.super_class = _PXToastAction;
  v9 = [(_PXToastAction *)&v16 init];
  if (v9)
  {
    v10 = [titleCopy copy];
    title = v9->_title;
    v9->_title = v10;

    v12 = [actionCopy copy];
    action = v9->_action;
    v9->_action = v12;
  }

  return v9;
}

@end