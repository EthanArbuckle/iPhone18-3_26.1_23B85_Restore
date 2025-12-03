@interface STAskForTimeCategoryResource
- (STAskForTimeCategoryResource)initWithCategoryIdentifier:(id)identifier changeHandler:(id)handler;
@end

@implementation STAskForTimeCategoryResource

- (STAskForTimeCategoryResource)initWithCategoryIdentifier:(id)identifier changeHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = STCategoryNameWithIdentifier(identifierCopy);
  v11.receiver = self;
  v11.super_class = STAskForTimeCategoryResource;
  v9 = [(STAskForTimeResource *)&v11 initWithResourceIdentifier:identifierCopy resourceDisplayName:v8 usageType:2 changeHandler:handlerCopy];

  return v9;
}

@end