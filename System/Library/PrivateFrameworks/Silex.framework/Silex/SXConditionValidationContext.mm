@interface SXConditionValidationContext
- (CGSize)viewportSize;
- (SXConditionValidationContext)initWithLayoutOptions:(id)options experiment:(id)experiment;
- (int64_t)horizontalSizeClass;
- (int64_t)userInterfaceStyle;
- (int64_t)verticalSizeClass;
- (unint64_t)numberOfColumns;
@end

@implementation SXConditionValidationContext

- (SXConditionValidationContext)initWithLayoutOptions:(id)options experiment:(id)experiment
{
  optionsCopy = options;
  experimentCopy = experiment;
  v12.receiver = self;
  v12.super_class = SXConditionValidationContext;
  v9 = [(SXConditionValidationContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutOptions, options);
    objc_storeStrong(&v10->_experiment, experiment);
  }

  return v10;
}

- (unint64_t)numberOfColumns
{
  columnLayout = [(SXLayoutOptions *)self->_layoutOptions columnLayout];
  numberOfColumns = [columnLayout numberOfColumns];

  return numberOfColumns;
}

- (int64_t)horizontalSizeClass
{
  traitCollection = [(SXLayoutOptions *)self->_layoutOptions traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  return horizontalSizeClass;
}

- (int64_t)verticalSizeClass
{
  traitCollection = [(SXLayoutOptions *)self->_layoutOptions traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  return verticalSizeClass;
}

- (CGSize)viewportSize
{
  [(SXLayoutOptions *)self->_layoutOptions viewportSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)userInterfaceStyle
{
  traitCollection = [(SXLayoutOptions *)self->_layoutOptions traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

@end