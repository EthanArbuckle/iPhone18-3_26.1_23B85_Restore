@interface WFInterchangeDocumentActionDefinition
- (NSArray)fileTypes;
- (id)fileTypeForOpeningItem:(id)item;
- (id)identifier;
- (id)inputContentClasses;
- (id)localizedNameWithContext:(id)context;
- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation WFInterchangeDocumentActionDefinition

- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler
{
  inputCopy = input;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  items = [inputCopy items];
  firstObject = [items firstObject];

  if (firstObject)
  {
    v15 = [(WFInterchangeDocumentActionDefinition *)self fileTypeForOpeningItem:firstObject];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __117__WFInterchangeDocumentActionDefinition_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke;
    v16[3] = &unk_1E837ADC0;
    v16[4] = self;
    v17 = errorHandlerCopy;
    v18 = handlerCopy;
    [inputCopy getFileRepresentation:v16 forType:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __117__WFInterchangeDocumentActionDefinition_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [a1[4] app];
    v5 = [v3 fileURL];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __117__WFInterchangeDocumentActionDefinition_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_2;
    v6[3] = &unk_1E837B3A0;
    v7 = a1[6];
    v8 = a1[5];
    [v4 openFile:v5 completionHandler:v6];
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

uint64_t __117__WFInterchangeDocumentActionDefinition_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (id)fileTypeForOpeningItem:(id)item
{
  v61 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  preferredFileType = [itemCopy preferredFileType];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  fileTypes = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
  v7 = [fileTypes countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v53;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(fileTypes);
        }

        if ([preferredFileType conformsToType:*(*(&v52 + 1) + 8 * i)])
        {
          v20 = preferredFileType;
          goto LABEL_44;
        }
      }

      v8 = [fileTypes countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  fileTypes = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
  v33 = [fileTypes countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v33)
  {
    v11 = *v49;
    v35 = itemCopy;
    v32 = *v49;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(fileTypes);
        }

        v13 = *(*(&v48 + 1) + 8 * j);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        supportedTypes = [itemCopy supportedTypes];
        v15 = [supportedTypes countByEnumeratingWithState:&v44 objects:v58 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v45;
          while (2)
          {
            for (k = 0; k != v16; ++k)
            {
              if (*v45 != v17)
              {
                objc_enumerationMutation(supportedTypes);
              }

              v19 = *(*(&v44 + 1) + 8 * k);
              if ([v19 conformsToType:v13])
              {
                v20 = v19;

LABEL_43:
                itemCopy = v35;
                goto LABEL_44;
              }
            }

            v16 = [supportedTypes countByEnumeratingWithState:&v44 objects:v58 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        itemCopy = v35;
        v11 = v32;
      }

      v33 = [fileTypes countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v33);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  fileTypes = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
  v20 = [fileTypes countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v20)
  {
    v21 = *v41;
    v34 = *v41;
    v35 = itemCopy;
    do
    {
      for (m = 0; m != v20; m = m + 1)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(fileTypes);
        }

        v23 = *(*(&v40 + 1) + 8 * m);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        allSupportedTypes = [itemCopy allSupportedTypes];
        v25 = [allSupportedTypes countByEnumeratingWithState:&v36 objects:v56 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v37;
          while (2)
          {
            for (n = 0; n != v26; ++n)
            {
              if (*v37 != v27)
              {
                objc_enumerationMutation(allSupportedTypes);
              }

              v29 = *(*(&v36 + 1) + 8 * n);
              if ([v29 conformsToType:v23])
              {
                v20 = v29;

                goto LABEL_43;
              }
            }

            v26 = [allSupportedTypes countByEnumeratingWithState:&v36 objects:v56 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v21 = v34;
        itemCopy = v35;
      }

      v20 = [fileTypes countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v20);
  }

LABEL_44:

  v30 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)inputContentClasses
{
  v22 = *MEMORY[0x1E69E9840];
  inputContentClasses = self->_inputContentClasses;
  if (!inputContentClasses)
  {
    mEMORY[0x1E6996D68] = [MEMORY[0x1E6996D68] sharedRegistry];
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    fileTypes = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
    v7 = [fileTypes countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(fileTypes);
          }

          v11 = [mEMORY[0x1E6996D68] contentItemClassForType:*(*(&v17 + 1) + 8 * v10)];
          if (v11)
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [fileTypes countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    array = [v5 array];
    v13 = [array copy];
    v14 = self->_inputContentClasses;
    self->_inputContentClasses = v13;

    inputContentClasses = self->_inputContentClasses;
  }

  v15 = *MEMORY[0x1E69E9840];

  return inputContentClasses;
}

- (NSArray)fileTypes
{
  fileTypes = self->_fileTypes;
  if (!fileTypes)
  {
    v4 = MEMORY[0x1E69E0AF8];
    definition = [(WFInterchangeActionDefinition *)self definition];
    v6 = [definition objectForKey:@"FileTypes"];
    v7 = [v4 typesFromStrings:v6];
    v8 = [v7 copy];
    v9 = self->_fileTypes;
    self->_fileTypes = v8;

    fileTypes = self->_fileTypes;
  }

  return fileTypes;
}

- (id)identifier
{
  v10.receiver = self;
  v10.super_class = WFInterchangeDocumentActionDefinition;
  identifier = [(WFInterchangeActionDefinition *)&v10 identifier];
  v4 = identifier;
  if (identifier)
  {
    v5 = identifier;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(WFInterchangeActionDefinition *)self app];
    bundleIdentifier = [v7 bundleIdentifier];
    v5 = [v6 stringWithFormat:@"%@.openin", bundleIdentifier];
  }

  return v5;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = WFInterchangeDocumentActionDefinition;
  v5 = [(WFInterchangeActionDefinition *)&v12 localizedNameWithContext:contextCopy];
  if (!v5)
  {
    v6 = WFLocalizedStringResourceWithKey(@"Open in %@ (Action Name - Open In)", @"Open in %@");
    v7 = [contextCopy localize:v6];

    v8 = MEMORY[0x1E696AEC0];
    v9 = [(WFInterchangeActionDefinition *)self app];
    localizedName = [v9 localizedName];
    v5 = [v8 localizedStringWithFormat:v7, localizedName];
  }

  return v5;
}

@end