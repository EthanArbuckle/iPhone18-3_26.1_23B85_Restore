@interface _UIFocusUpdateReport
- (BOOL)shouldLog;
- (UIFocusSystem)focusSystem;
- (_UIFocusUpdateReport)init;
- (_UIFocusUpdateReport)initWithFocusSystem:(id)a3;
@end

@implementation _UIFocusUpdateReport

- (_UIFocusUpdateReport)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateReport.m" lineNumber:19 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (_UIFocusUpdateReport)initWithFocusSystem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateReport.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];
  }

  v10.receiver = self;
  v10.super_class = _UIFocusUpdateReport;
  v6 = [(_UIFocusUpdateReport *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_focusSystem, v5);
  }

  return v7;
}

- (BOOL)shouldLog
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  if (WeakRetained && (context = self->_context) != 0)
  {
    v5 = context;
    v6 = [(UIFocusUpdateContext *)v5 _isValidInFocusSystem:WeakRetained];
    v7 = [(UIFocusUpdateContext *)v5 _validationReport];
    v8 = [(UIFocusUpdateContext *)v5 _preferredFocusReport];

    if (v6)
    {
      v9 = 0;
    }

    else if (v7)
    {
      v11 = [v7 issues];
      if ([v11 count])
      {
        v9 = 0;
      }

      else if (v8)
      {
        v9 = [v8 messageCount] == 0;
      }

      else
      {
        v9 = 1;
      }
    }

    else if (v8)
    {
      v9 = [v8 messageCount] == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UIFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  return WeakRetained;
}

@end