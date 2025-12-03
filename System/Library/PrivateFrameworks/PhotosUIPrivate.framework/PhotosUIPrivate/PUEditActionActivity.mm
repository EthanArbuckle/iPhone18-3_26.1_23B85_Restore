@interface PUEditActionActivity
- (BOOL)_isDisabled;
- (BOOL)canPerformWithActivityItems:(id)items;
- (PUEditActionActivity)initWithActionName:(id)name activityType:(id)type systemImageName:(id)imageName;
- (void)performActivity;
@end

@implementation PUEditActionActivity

- (void)performActivity
{
  performActivityActionHandler = [(PUEditActionActivity *)self performActivityActionHandler];

  if (performActivityActionHandler)
  {
    performActivityActionHandler2 = [(PUEditActionActivity *)self performActivityActionHandler];
    (performActivityActionHandler2)[2](performActivityActionHandler2, self);
  }

  [(UIActivity *)self activityDidFinish:1];
}

- (BOOL)_isDisabled
{
  if ([(PUEditActionActivity *)self disablesInsteadOfHides])
  {
    canPerformActivityActionHandler = [(PUEditActionActivity *)self canPerformActivityActionHandler];
    v4 = (canPerformActivityActionHandler)[2](canPerformActivityActionHandler, MEMORY[0x1E695E0F0], self) ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemsCopy = items;
  canPerformActivityActionHandler = [(PUEditActionActivity *)self canPerformActivityActionHandler];

  if (canPerformActivityActionHandler)
  {
    if ([(PUEditActionActivity *)self disablesInsteadOfHides])
    {
      v6 = 1;
    }

    else
    {
      canPerformActivityActionHandler2 = [(PUEditActionActivity *)self canPerformActivityActionHandler];
      v6 = (canPerformActivityActionHandler2)[2](canPerformActivityActionHandler2, itemsCopy, self);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PUEditActionActivity)initWithActionName:(id)name activityType:(id)type systemImageName:(id)imageName
{
  nameCopy = name;
  typeCopy = type;
  imageNameCopy = imageName;
  v17.receiver = self;
  v17.super_class = PUEditActionActivity;
  v11 = [(UIActivity *)&v17 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    actionName = v11->_actionName;
    v11->_actionName = v12;

    v14 = [imageNameCopy copy];
    systemImageName = v11->_systemImageName;
    v11->_systemImageName = v14;

    objc_storeStrong(&v11->_internalActivityType, type);
  }

  return v11;
}

@end