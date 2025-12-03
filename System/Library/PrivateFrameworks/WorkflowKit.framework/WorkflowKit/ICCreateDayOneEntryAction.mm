@interface ICCreateDayOneEntryAction
- (void)getImagesFromInput:(id)input completionHandler:(id)handler;
- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation ICCreateDayOneEntryAction

- (void)getImagesFromInput:(id)input completionHandler:(id)handler
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6996CF0];
  handlerCopy = handler;
  inputCopy = input;
  v23[0] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v9 = [v5 requestForCoercingToContentClasses:v8 completionHandler:handlerCopy];

  v10 = MEMORY[0x1E695DFB8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 orderedSetWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = MEMORY[0x1E6996CE8];
  v15 = *MEMORY[0x1E6996FF8];
  v20 = v13;
  v21 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v22 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v18 = [v14 optionsWithDictionary:v17];
  [v9 setOptions:v18];

  [inputCopy performCoercion:v9];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler
{
  inputCopy = input;
  parametersCopy = parameters;
  interfaceCopy = interface;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __105__ICCreateDayOneEntryAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke;
  v22[3] = &unk_1E83806C0;
  v23 = parametersCopy;
  v24 = inputCopy;
  v27 = handlerCopy;
  v28 = errorHandlerCopy;
  v25 = interfaceCopy;
  selfCopy = self;
  v17 = errorHandlerCopy;
  v18 = handlerCopy;
  v19 = interfaceCopy;
  v20 = inputCopy;
  v21 = parametersCopy;
  [(ICCreateDayOneEntryAction *)self getImagesFromInput:v20 completionHandler:v22];
}

void __105__ICCreateDayOneEntryAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mutableCopy];
  v6 = [v4 numberOfItems];

  if (v6)
  {
    [v5 setObject:@"1" forKey:@"imageClipboard"];
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11.receiver = *(a1 + 56);
  v11.super_class = ICCreateDayOneEntryAction;
  objc_msgSendSuper2(&v11, sel_performActionWithInput_parameters_userInterface_successHandler_errorHandler_, v7, v5, v8, v9, v10);
}

@end