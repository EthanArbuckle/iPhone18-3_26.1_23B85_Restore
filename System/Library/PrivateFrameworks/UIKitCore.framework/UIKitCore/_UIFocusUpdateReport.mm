@interface _UIFocusUpdateReport
- (BOOL)shouldLog;
- (UIFocusSystem)focusSystem;
- (_UIFocusUpdateReport)init;
- (_UIFocusUpdateReport)initWithFocusSystem:(id)system;
@end

@implementation _UIFocusUpdateReport

- (_UIFocusUpdateReport)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateReport.m" lineNumber:19 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (_UIFocusUpdateReport)initWithFocusSystem:(id)system
{
  systemCopy = system;
  if (!systemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateReport.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];
  }

  v10.receiver = self;
  v10.super_class = _UIFocusUpdateReport;
  v6 = [(_UIFocusUpdateReport *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_focusSystem, systemCopy);
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
    _validationReport = [(UIFocusUpdateContext *)v5 _validationReport];
    _preferredFocusReport = [(UIFocusUpdateContext *)v5 _preferredFocusReport];

    if (v6)
    {
      v9 = 0;
    }

    else if (_validationReport)
    {
      issues = [_validationReport issues];
      if ([issues count])
      {
        v9 = 0;
      }

      else if (_preferredFocusReport)
      {
        v9 = [_preferredFocusReport messageCount] == 0;
      }

      else
      {
        v9 = 1;
      }
    }

    else if (_preferredFocusReport)
    {
      v9 = [_preferredFocusReport messageCount] == 0;
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