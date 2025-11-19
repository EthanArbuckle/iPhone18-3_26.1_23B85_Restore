@interface WBSContactAutoFillSet
+ (id)displayStringsForFillMatches:(id)a3 skipMatches:(id)a4 matchesForForm:(id)a5 label:(id)a6 formDataController:(id)a7;
+ (id)displayStringsForSkipMatches:(id)a3 matchesForForm:(id)a4 formDataController:(id)a5;
- (WBSContactAutoFillSet)initWithControlIDToValueMap:(id)a3 label:(id)a4 fillDisplayProperties:(id)a5 skipDisplayProperties:(id)a6 propertiesToFillOrSkip:(id)a7;
@end

@implementation WBSContactAutoFillSet

- (WBSContactAutoFillSet)initWithControlIDToValueMap:(id)a3 label:(id)a4 fillDisplayProperties:(id)a5 skipDisplayProperties:(id)a6 propertiesToFillOrSkip:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = WBSContactAutoFillSet;
  v17 = [(WBSContactAutoFillSet *)&v30 init];
  if (v17)
  {
    v18 = [v12 copy];
    controlIDToValueMap = v17->_controlIDToValueMap;
    v17->_controlIDToValueMap = v18;

    v20 = [v13 copy];
    label = v17->_label;
    v17->_label = v20;

    v22 = [v14 copy];
    fillDisplayProperties = v17->_fillDisplayProperties;
    v17->_fillDisplayProperties = v22;

    v24 = [v15 copy];
    skipDisplayProperties = v17->_skipDisplayProperties;
    v17->_skipDisplayProperties = v24;

    v26 = [v16 copy];
    propertiesToFillOrSkip = v17->_propertiesToFillOrSkip;
    v17->_propertiesToFillOrSkip = v26;

    v28 = v17;
  }

  return v17;
}

+ (id)displayStringsForSkipMatches:(id)a3 matchesForForm:(id)a4 formDataController:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DFA8] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v30 + 1) + 8 * i) property];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v13);
  }

  v17 = [MEMORY[0x1E695DFA8] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * j) property];
        if ([v10 containsObject:v23])
        {
          v24 = addressBookStringToBeDisplayed(0, v23, 0, v9);
          [v17 addObject:v24];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  return v17;
}

+ (id)displayStringsForFillMatches:(id)a3 skipMatches:(id)a4 matchesForForm:(id)a5 label:(id)a6 formDataController:(id)a7
{
  v68 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v40 = a4;
  v11 = a5;
  v46 = a6;
  v45 = a7;
  v47 = [MEMORY[0x1E695DFA8] set];
  v12 = [MEMORY[0x1E695DFA8] set];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v11;
  v44 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v44)
  {
    v42 = *v61;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v61 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v60 + 1) + 8 * i);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v15 = v43;
        v16 = [v15 countByEnumeratingWithState:&v56 objects:v66 count:{16, v40}];
        if (v16)
        {
          v17 = v16;
          v18 = *v57;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v57 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v56 + 1) + 8 * j);
              if ([v20 isEqual:v14])
              {
                v21 = [v20 property];
                [v12 addObject:v21];
                if ([WBSFormDataController isNameProperty:v21])
                {

                  goto LABEL_18;
                }

                v22 = [v20 label];
                v23 = addressBookStringToBeDisplayed(v46, v21, v22, v45);
                [v47 addObject:v23];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v56 objects:v66 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v44 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v44);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v24 = v40;
  v25 = [v24 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v53;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v53 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v52 + 1) + 8 * k) property];
        [v12 addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v26);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v30 = obj;
  v31 = [v30 countByEnumeratingWithState:&v48 objects:v64 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v49;
    do
    {
      for (m = 0; m != v32; ++m)
      {
        if (*v49 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v48 + 1) + 8 * m);
        v36 = [v35 property];
        if (([v12 containsObject:v36] & 1) == 0 && !+[WBSFormDataController isNameProperty:](WBSFormDataController, "isNameProperty:", v36))
        {
          v37 = [v35 label];
          v38 = addressBookStringToBeDisplayed(v46, v36, v37, v45);
          [v47 addObject:v38];

          [v12 addObject:v36];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v32);
  }

  return v47;
}

@end