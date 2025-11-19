@interface _PXAssistantControllerDelegate
- (_PXAssistantControllerDelegate)init;
- (_PXAssistantControllerDelegate)initWithAssistantController:(id)a3 completionHandler:(id)a4;
@end

@implementation _PXAssistantControllerDelegate

- (_PXAssistantControllerDelegate)initWithAssistantController:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXAssistantUtilities.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"assistantController"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PXAssistantUtilities.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = _PXAssistantControllerDelegate;
  v11 = [(_PXAssistantControllerDelegate *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assistantController, a3);
    [(PXAssistantController *)v12->_assistantController setDelegate:v12];
    v13 = _Block_copy(v10);
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;
  }

  return v12;
}

- (_PXAssistantControllerDelegate)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssistantUtilities.m" lineNumber:27 description:{@"%s is not available as initializer", "-[_PXAssistantControllerDelegate init]"}];

  abort();
}

@end