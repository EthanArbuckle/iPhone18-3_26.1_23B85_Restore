@interface WBSContactAutoFillSet
+ (id)displayStringsForFillMatches:(id)matches skipMatches:(id)skipMatches matchesForForm:(id)form label:(id)label formDataController:(id)controller;
+ (id)displayStringsForSkipMatches:(id)matches matchesForForm:(id)form formDataController:(id)controller;
- (WBSContactAutoFillSet)initWithControlIDToValueMap:(id)map label:(id)label fillDisplayProperties:(id)properties skipDisplayProperties:(id)displayProperties propertiesToFillOrSkip:(id)skip;
@end

@implementation WBSContactAutoFillSet

- (WBSContactAutoFillSet)initWithControlIDToValueMap:(id)map label:(id)label fillDisplayProperties:(id)properties skipDisplayProperties:(id)displayProperties propertiesToFillOrSkip:(id)skip
{
  mapCopy = map;
  labelCopy = label;
  propertiesCopy = properties;
  displayPropertiesCopy = displayProperties;
  skipCopy = skip;
  v30.receiver = self;
  v30.super_class = WBSContactAutoFillSet;
  v17 = [(WBSContactAutoFillSet *)&v30 init];
  if (v17)
  {
    v18 = [mapCopy copy];
    controlIDToValueMap = v17->_controlIDToValueMap;
    v17->_controlIDToValueMap = v18;

    v20 = [labelCopy copy];
    label = v17->_label;
    v17->_label = v20;

    v22 = [propertiesCopy copy];
    fillDisplayProperties = v17->_fillDisplayProperties;
    v17->_fillDisplayProperties = v22;

    v24 = [displayPropertiesCopy copy];
    skipDisplayProperties = v17->_skipDisplayProperties;
    v17->_skipDisplayProperties = v24;

    v26 = [skipCopy copy];
    propertiesToFillOrSkip = v17->_propertiesToFillOrSkip;
    v17->_propertiesToFillOrSkip = v26;

    v28 = v17;
  }

  return v17;
}

+ (id)displayStringsForSkipMatches:(id)matches matchesForForm:(id)form formDataController:(id)controller
{
  v36 = *MEMORY[0x1E69E9840];
  matchesCopy = matches;
  formCopy = form;
  controllerCopy = controller;
  v10 = [MEMORY[0x1E695DFA8] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = matchesCopy;
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

        property = [*(*(&v30 + 1) + 8 * i) property];
        [v10 addObject:property];
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
  v18 = formCopy;
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

        property2 = [*(*(&v26 + 1) + 8 * j) property];
        if ([v10 containsObject:property2])
        {
          v24 = addressBookStringToBeDisplayed(0, property2, 0, controllerCopy);
          [v17 addObject:v24];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  return v17;
}

+ (id)displayStringsForFillMatches:(id)matches skipMatches:(id)skipMatches matchesForForm:(id)form label:(id)label formDataController:(id)controller
{
  v68 = *MEMORY[0x1E69E9840];
  matchesCopy = matches;
  skipMatchesCopy = skipMatches;
  formCopy = form;
  labelCopy = label;
  controllerCopy = controller;
  v47 = [MEMORY[0x1E695DFA8] set];
  v12 = [MEMORY[0x1E695DFA8] set];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = formCopy;
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
        v15 = matchesCopy;
        v16 = [v15 countByEnumeratingWithState:&v56 objects:v66 count:{16, skipMatchesCopy}];
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
                property = [v20 property];
                [v12 addObject:property];
                if ([WBSFormDataController isNameProperty:property])
                {

                  goto LABEL_18;
                }

                label = [v20 label];
                v23 = addressBookStringToBeDisplayed(labelCopy, property, label, controllerCopy);
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
  v24 = skipMatchesCopy;
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

        property2 = [*(*(&v52 + 1) + 8 * k) property];
        [v12 addObject:property2];
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
        property3 = [v35 property];
        if (([v12 containsObject:property3] & 1) == 0 && !+[WBSFormDataController isNameProperty:](WBSFormDataController, "isNameProperty:", property3))
        {
          label2 = [v35 label];
          v38 = addressBookStringToBeDisplayed(labelCopy, property3, label2, controllerCopy);
          [v47 addObject:v38];

          [v12 addObject:property3];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v32);
  }

  return v47;
}

@end