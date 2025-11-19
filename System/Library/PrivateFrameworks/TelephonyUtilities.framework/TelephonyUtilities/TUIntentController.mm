@interface TUIntentController
+ (id)tu_INPersonHandleForTUHandle:(id)a3 label:(id)a4;
+ (id)tu_INPersonsFromHandle:(id)a3 contacts:(id)a4;
+ (int64_t)tu_INPersonHandleTypeForTUHandleType:(int64_t)a3;
- (TUIntentController)initWithContactProvider:(id)a3;
- (id)personsByHandleForHandles:(id)a3;
- (id)startCallIntentByHandleForHandles:(id)a3 capability:(int64_t)a4 destinationType:(int64_t)a5;
@end

@implementation TUIntentController

- (TUIntentController)initWithContactProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUIntentController;
  v6 = [(TUIntentController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactProvider, a3);
  }

  return v7;
}

- (id)personsByHandleForHandles:(id)a3
{
  v31[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *MEMORY[0x1E695C330];
  v31[0] = *MEMORY[0x1E695C258];
  v31[1] = v6;
  v7 = [MEMORY[0x1E696ADF0] descriptorForUsedKeys];
  v31[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];

  v9 = [(TUIntentController *)self contactProvider];
  v29 = 0;
  v24 = v8;
  v10 = [v9 tu_contactsByHandleForHandles:v4 keyDescriptors:v8 error:&v29];
  v23 = v29;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = objc_opt_class();
        v18 = [v10 objectForKeyedSubscript:{v16, v23}];
        v19 = [v17 tu_INPersonsFromHandle:v16 contacts:v18];
        [v5 setObject:v19 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }

  v20 = [v5 copy];
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)startCallIntentByHandleForHandles:(id)a3 capability:(int64_t)a4 destinationType:(int64_t)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v9 = [(TUIntentController *)self personsByHandleForHandles:v8];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v9 objectForKeyedSubscript:v13];
        v28 = 0;
        v29 = &v28;
        v30 = 0x2050000000;
        v15 = getINStartCallIntentClass_softClass;
        v31 = getINStartCallIntentClass_softClass;
        if (!getINStartCallIntentClass_softClass)
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __getINStartCallIntentClass_block_invoke;
          v27[3] = &unk_1E7424CD8;
          v27[4] = &v28;
          __getINStartCallIntentClass_block_invoke(v27);
          v15 = v29[3];
        }

        v16 = v15;
        _Block_object_dispose(&v28, 8);
        v17 = [[v15 alloc] initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:a5 contacts:v14 callCapability:a4];
        if (v17)
        {
          [v22 setObject:v17 forKeyedSubscript:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v10);
  }

  v18 = [v22 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (int64_t)tu_INPersonHandleTypeForTUHandleType:(int64_t)a3
{
  if (a3 == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

+ (id)tu_INPersonHandleForTUHandle:(id)a3 label:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 tu_INPersonHandleTypeForTUHandleType:{objc_msgSend(v6, "type")}];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v9 = getINPersonHandleClass_softClass;
  v20 = getINPersonHandleClass_softClass;
  if (!getINPersonHandleClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getINPersonHandleClass_block_invoke;
    v16[3] = &unk_1E7424CD8;
    v16[4] = &v17;
    __getINPersonHandleClass_block_invoke(v16);
    v9 = v18[3];
  }

  v10 = v9;
  _Block_object_dispose(&v17, 8);
  v11 = [v9 alloc];
  v12 = [v6 normalizedValue];
  if (v12)
  {
    v13 = [v11 initWithValue:v12 type:v8 label:v7];
  }

  else
  {
    v14 = [v6 value];
    v13 = [v11 initWithValue:v14 type:v8 label:v7];
  }

  return v13;
}

+ (id)tu_INPersonsFromHandle:(id)a3 contacts:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count", v6)}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v8)
    {
      v31 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v11 = [v10 tu_labeledValueForHandle:v5];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
            v41 = 0;
            v42 = &v41;
            v43 = 0x2020000000;
            v14 = getINPersonHandleLabelForCNLabeledValueSymbolLoc_ptr;
            v44 = getINPersonHandleLabelForCNLabeledValueSymbolLoc_ptr;
            if (!getINPersonHandleLabelForCNLabeledValueSymbolLoc_ptr)
            {
              v36 = MEMORY[0x1E69E9820];
              v37 = 3221225472;
              v38 = __getINPersonHandleLabelForCNLabeledValueSymbolLoc_block_invoke;
              v39 = &unk_1E7424CD8;
              v40 = &v41;
              v15 = IntentsLibrary();
              v16 = dlsym(v15, "INPersonHandleLabelForCNLabeledValue");
              *(v40[1] + 24) = v16;
              getINPersonHandleLabelForCNLabeledValueSymbolLoc_ptr = *(v40[1] + 24);
              v14 = v42[3];
            }

            _Block_object_dispose(&v41, 8);
            if (!v14)
            {
              +[TUIntentController tu_INPersonsFromHandle:contacts:];
            }

            v17 = v14(v13);
          }

          else
          {
            v17 = 0;
          }

          v18 = [objc_opt_class() tu_INPersonHandleForTUHandle:v5 label:v17];
          if (v10)
          {
            v19 = [MEMORY[0x1E696ADF0] componentsForContact:v10];
          }

          else
          {
            v19 = 0;
          }

          v20 = objc_alloc(getINPersonClass());
          v21 = [v10 identifier];
          v22 = [v20 initWithPersonHandle:v18 nameComponents:v19 displayName:0 image:0 contactIdentifier:v21 customIdentifier:0];

          if (v22)
          {
            [v30 addObject:v22];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v23 = [objc_opt_class() tu_INPersonHandleForTUHandle:v5 label:{0, 0}];
    v24 = [objc_alloc(getINPersonClass()) initWithPersonHandle:v23 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
    if (v24)
    {
      v30 = [MEMORY[0x1E695DF70] arrayWithObject:v24];
    }

    else
    {
      v30 = 0;
    }
  }

  v25 = [v30 copy];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (void)tu_INPersonsFromHandle:contacts:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"INPersonHandleLabel _INPersonHandleLabelForCNLabeledValue(CNLabeledValue *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"TUIntentController.m" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
}

@end