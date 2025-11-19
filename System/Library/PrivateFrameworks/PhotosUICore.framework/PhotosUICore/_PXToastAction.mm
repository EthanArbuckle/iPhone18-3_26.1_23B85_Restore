@interface _PXToastAction
- (_PXToastAction)initWithTitle:(id)a3 action:(id)a4;
@end

@implementation _PXToastAction

- (_PXToastAction)initWithTitle:(id)a3 action:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXToastPlacardView.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"title != nil"}];
  }

  v16.receiver = self;
  v16.super_class = _PXToastAction;
  v9 = [(_PXToastAction *)&v16 init];
  if (v9)
  {
    v10 = [v7 copy];
    title = v9->_title;
    v9->_title = v10;

    v12 = [v8 copy];
    action = v9->_action;
    v9->_action = v12;
  }

  return v9;
}

@end