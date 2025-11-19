@interface LNISIconImage(Workflow)
- (id)initWithSerializedRepresentation:()Workflow variableProvider:parameter:;
- (id)serializedRepresentation;
- (void)wf_image;
@end

@implementation LNISIconImage(Workflow)

- (id)serializedRepresentation
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "iconType")}];
  [v2 if_setObjectIfNonNil:v3 forKey:@"iconType"];

  v4 = [a1 identifier];
  [v2 if_setObjectIfNonNil:v4 forKey:@"identifier"];

  return v2;
}

- (id)initWithSerializedRepresentation:()Workflow variableProvider:parameter:
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = WFEnforceClass_1501(v4, v5);

  if (v6)
  {
    v7 = [v6 objectForKey:@"identifier"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    if ([v10 length])
    {
      v11 = [v6 objectForKey:@"iconType"];
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v14 = [v13 integerValue];
      a1 = [a1 initWithIconType:v14 identifier:v10];
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)wf_image
{
  v2 = [a1 iconType];
  if (v2 == 1)
  {
    v6 = objc_alloc(getISIconClass());
    v4 = [a1 identifier];
    v5 = [v6 initWithType:v4];
    goto LABEL_5;
  }

  if (!v2)
  {
    v3 = objc_alloc(getISIconClass());
    v4 = [a1 identifier];
    v5 = [v3 initWithBundleIdentifier:v4];
LABEL_5:
    v7 = v5;

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v8 = getISImageDescriptorClass_softClass;
  v29 = getISImageDescriptorClass_softClass;
  if (!getISImageDescriptorClass_softClass)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getISImageDescriptorClass_block_invoke;
    v24 = &unk_1E837FAC0;
    v25 = &v26;
    __getISImageDescriptorClass_block_invoke(&v21);
    v8 = v27[3];
  }

  v9 = v8;
  _Block_object_dispose(&v26, 8);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v10 = getkISImageDescriptorTableUINameSymbolLoc_ptr;
  v29 = getkISImageDescriptorTableUINameSymbolLoc_ptr;
  if (!getkISImageDescriptorTableUINameSymbolLoc_ptr)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getkISImageDescriptorTableUINameSymbolLoc_block_invoke;
    v24 = &unk_1E837FAC0;
    v25 = &v26;
    v11 = IconServicesLibrary();
    v12 = dlsym(v11, "kISImageDescriptorTableUIName");
    *(v25[1] + 24) = v12;
    getkISImageDescriptorTableUINameSymbolLoc_ptr = *(v25[1] + 24);
    v10 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (v10)
  {
    v13 = [v8 imageDescriptorNamed:*v10];
    v14 = [v7 prepareImageForDescriptor:v13];
    v15 = [v14 CGImage];
    v16 = objc_alloc(MEMORY[0x1E69E0B58]);
    [v13 scale];
    v17 = [v16 initWithCGImage:v15 scale:1 orientation:?];

    v18 = v17;
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ISImageDescriptorName getkISImageDescriptorTableUIName(void)"];
    [v19 handleFailureInFunction:v20 file:@"LNImage+Workflow.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

@end