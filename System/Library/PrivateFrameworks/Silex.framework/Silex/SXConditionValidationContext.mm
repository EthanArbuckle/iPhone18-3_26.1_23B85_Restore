@interface SXConditionValidationContext
- (CGSize)viewportSize;
- (SXConditionValidationContext)initWithLayoutOptions:(id)a3 experiment:(id)a4;
- (int64_t)horizontalSizeClass;
- (int64_t)userInterfaceStyle;
- (int64_t)verticalSizeClass;
- (unint64_t)numberOfColumns;
@end

@implementation SXConditionValidationContext

- (SXConditionValidationContext)initWithLayoutOptions:(id)a3 experiment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXConditionValidationContext;
  v9 = [(SXConditionValidationContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutOptions, a3);
    objc_storeStrong(&v10->_experiment, a4);
  }

  return v10;
}

- (unint64_t)numberOfColumns
{
  v2 = [(SXLayoutOptions *)self->_layoutOptions columnLayout];
  v3 = [v2 numberOfColumns];

  return v3;
}

- (int64_t)horizontalSizeClass
{
  v2 = [(SXLayoutOptions *)self->_layoutOptions traitCollection];
  v3 = [v2 horizontalSizeClass];

  return v3;
}

- (int64_t)verticalSizeClass
{
  v2 = [(SXLayoutOptions *)self->_layoutOptions traitCollection];
  v3 = [v2 verticalSizeClass];

  return v3;
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
  v2 = [(SXLayoutOptions *)self->_layoutOptions traitCollection];
  v3 = [v2 userInterfaceStyle];

  return v3;
}

@end