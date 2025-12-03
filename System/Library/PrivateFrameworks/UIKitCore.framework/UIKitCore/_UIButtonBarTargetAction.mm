@interface _UIButtonBarTargetAction
- (_UIButtonBarTargetAction)init;
- (_UIButtonBarTargetAction)initWithBarButtonItem:(id)item;
- (void)_invoke:(id)_invoke forEvent:(id)event;
@end

@implementation _UIButtonBarTargetAction

- (_UIButtonBarTargetAction)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s should not be called", "-[_UIButtonBarTargetAction init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  [v6 raise];

  return 0;
}

- (_UIButtonBarTargetAction)initWithBarButtonItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = _UIButtonBarTargetAction;
  v6 = [(_UIButtonBarTargetAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_barButtonItem, item);
  }

  return v7;
}

- (void)_invoke:(id)_invoke forEvent:(id)event
{
  _invokeCopy = _invoke;
  eventCopy = event;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __45___UIButtonBarTargetAction__invoke_forEvent___block_invoke;
  v17 = &unk_1E70F35B8;
  selfCopy = self;
  v8 = eventCopy;
  v19 = v8;
  v9 = _Block_copy(&v14);
  actionFilter = self->_actionFilter;
  if (actionFilter)
  {
    actionFilter[2](actionFilter, _invokeCopy, self, v9);
  }

  else
  {
    v9[2](v9);
    v11 = self->_barButtonItem;
    if ((dyld_program_sdk_at_least() & 1) == 0 && qword_1ED49C920 != -1)
    {
      dispatch_once(&qword_1ED49C920, &__block_literal_global_52);
    }

    if (_MergedGlobals_1002 == 1)
    {
      v12 = [(UIBarButtonItem *)v11 target:v14];
      if (-[UIBarButtonItem action](v11, "action") == sel_rightBttnAction && [v12 isMemberOfClass:NSClassFromString(&cfstr_Bahtlocationss.isa)])
      {
        view = [v12 view];
        [view setNeedsLayout];
      }
    }
  }
}

@end