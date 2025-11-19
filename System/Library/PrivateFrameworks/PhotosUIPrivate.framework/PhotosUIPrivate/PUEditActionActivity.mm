@interface PUEditActionActivity
- (BOOL)_isDisabled;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (PUEditActionActivity)initWithActionName:(id)a3 activityType:(id)a4 systemImageName:(id)a5;
- (void)performActivity;
@end

@implementation PUEditActionActivity

- (void)performActivity
{
  v3 = [(PUEditActionActivity *)self performActivityActionHandler];

  if (v3)
  {
    v4 = [(PUEditActionActivity *)self performActivityActionHandler];
    (v4)[2](v4, self);
  }

  [(UIActivity *)self activityDidFinish:1];
}

- (BOOL)_isDisabled
{
  if ([(PUEditActionActivity *)self disablesInsteadOfHides])
  {
    v3 = [(PUEditActionActivity *)self canPerformActivityActionHandler];
    v4 = (v3)[2](v3, MEMORY[0x1E695E0F0], self) ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = a3;
  v5 = [(PUEditActionActivity *)self canPerformActivityActionHandler];

  if (v5)
  {
    if ([(PUEditActionActivity *)self disablesInsteadOfHides])
    {
      v6 = 1;
    }

    else
    {
      v7 = [(PUEditActionActivity *)self canPerformActivityActionHandler];
      v6 = (v7)[2](v7, v4, self);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PUEditActionActivity)initWithActionName:(id)a3 activityType:(id)a4 systemImageName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PUEditActionActivity;
  v11 = [(UIActivity *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    actionName = v11->_actionName;
    v11->_actionName = v12;

    v14 = [v10 copy];
    systemImageName = v11->_systemImageName;
    v11->_systemImageName = v14;

    objc_storeStrong(&v11->_internalActivityType, a4);
  }

  return v11;
}

@end