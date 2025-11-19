@interface WFInterchangeDocumentActionDefinition
- (NSArray)fileTypes;
- (id)fileTypeForOpeningItem:(id)a3;
- (id)identifier;
- (id)inputContentClasses;
- (id)localizedNameWithContext:(id)a3;
- (void)performActionWithInput:(id)a3 parameters:(id)a4 userInterface:(id)a5 successHandler:(id)a6 errorHandler:(id)a7;
@end

@implementation WFInterchangeDocumentActionDefinition

- (void)performActionWithInput:(id)a3 parameters:(id)a4 userInterface:(id)a5 successHandler:(id)a6 errorHandler:(id)a7
{
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = [v10 items];
  v14 = [v13 firstObject];

  if (v14)
  {
    v15 = [(WFInterchangeDocumentActionDefinition *)self fileTypeForOpeningItem:v14];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __117__WFInterchangeDocumentActionDefinition_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke;
    v16[3] = &unk_1E837ADC0;
    v16[4] = self;
    v17 = v12;
    v18 = v11;
    [v10 getFileRepresentation:v16 forType:v15];
  }

  else
  {
    (*(v11 + 2))(v11, 0, 0);
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

- (id)fileTypeForOpeningItem:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 preferredFileType];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v6 = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
  v7 = [v6 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
          objc_enumerationMutation(v6);
        }

        if ([v5 conformsToType:*(*(&v52 + 1) + 8 * i)])
        {
          v20 = v5;
          goto LABEL_44;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
  v6 = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
  v33 = [v6 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v33)
  {
    v11 = *v49;
    v35 = v4;
    v32 = *v49;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v48 + 1) + 8 * j);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v14 = [v4 supportedTypes];
        v15 = [v14 countByEnumeratingWithState:&v44 objects:v58 count:16];
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
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v44 + 1) + 8 * k);
              if ([v19 conformsToType:v13])
              {
                v20 = v19;

LABEL_43:
                v4 = v35;
                goto LABEL_44;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v44 objects:v58 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v4 = v35;
        v11 = v32;
      }

      v33 = [v6 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v33);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
  v20 = [v6 countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v20)
  {
    v21 = *v41;
    v34 = *v41;
    v35 = v4;
    do
    {
      for (m = 0; m != v20; m = m + 1)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(v6);
        }

        v23 = *(*(&v40 + 1) + 8 * m);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v24 = [v4 allSupportedTypes];
        v25 = [v24 countByEnumeratingWithState:&v36 objects:v56 count:16];
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
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v36 + 1) + 8 * n);
              if ([v29 conformsToType:v23])
              {
                v20 = v29;

                goto LABEL_43;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v36 objects:v56 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v21 = v34;
        v4 = v35;
      }

      v20 = [v6 countByEnumeratingWithState:&v40 objects:v57 count:16];
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
    v4 = [MEMORY[0x1E6996D68] sharedRegistry];
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [v4 contentItemClassForType:*(*(&v17 + 1) + 8 * v10)];
          if (v11)
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = [v5 array];
    v13 = [v12 copy];
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
    v5 = [(WFInterchangeActionDefinition *)self definition];
    v6 = [v5 objectForKey:@"FileTypes"];
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
  v3 = [(WFInterchangeActionDefinition *)&v10 identifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(WFInterchangeActionDefinition *)self app];
    v8 = [v7 bundleIdentifier];
    v5 = [v6 stringWithFormat:@"%@.openin", v8];
  }

  return v5;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFInterchangeDocumentActionDefinition;
  v5 = [(WFInterchangeActionDefinition *)&v12 localizedNameWithContext:v4];
  if (!v5)
  {
    v6 = WFLocalizedStringResourceWithKey(@"Open in %@ (Action Name - Open In)", @"Open in %@");
    v7 = [v4 localize:v6];

    v8 = MEMORY[0x1E696AEC0];
    v9 = [(WFInterchangeActionDefinition *)self app];
    v10 = [v9 localizedName];
    v5 = [v8 localizedStringWithFormat:v7, v10];
  }

  return v5;
}

@end