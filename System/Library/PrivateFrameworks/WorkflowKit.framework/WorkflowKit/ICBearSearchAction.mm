@interface ICBearSearchAction
- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation ICBearSearchAction

- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler
{
  errorHandlerCopy = errorHandler;
  handlerCopy = handler;
  interfaceCopy = interface;
  parametersCopy = parameters;
  inputCopy = input;
  v17 = [parametersCopy objectForKey:@"BearTag"];
  v18 = [parametersCopy objectForKey:@"BearTerm"];
  v19 = [parametersCopy mutableCopy];

  if ([v18 length])
  {
    v20 = @"search";
  }

  else
  {
    [v19 removeObjectForKey:@"BearTag"];
    if (v17)
    {
      [v19 setObject:v17 forKey:@"BearName"];
    }

    v20 = @"open-tag";
  }

  [v19 setObject:v20 forKey:@"BearAction"];
  v21.receiver = self;
  v21.super_class = ICBearSearchAction;
  [(WFInterchangeSchemeAction *)&v21 performActionWithInput:inputCopy parameters:v19 userInterface:interfaceCopy successHandler:handlerCopy errorHandler:errorHandlerCopy];
}

@end