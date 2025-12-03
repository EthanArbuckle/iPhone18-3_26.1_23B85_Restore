@interface WFParameter(WFVariableMenuProvider)
- (id)clearButtonMenuItemWithVariable:()WFVariableMenuProvider parameterState:setVariableHandler:;
- (id)variableMenuElementsWithVariable:()WFVariableMenuProvider parameterState:variableProvider:variableUIDelegate:setVariableHandler:;
- (uint64_t)shouldShowVariable:()WFVariableMenuProvider allowedVariableTypes:variableProvider:variableUIDelegate:;
@end

@implementation WFParameter(WFVariableMenuProvider)

- (id)clearButtonMenuItemWithVariable:()WFVariableMenuProvider parameterState:setVariableHandler:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = @"Clear Variable";
LABEL_7:
    v15 = objc_alloc(MEMORY[0x277D7A158]);
    v16 = [objc_alloc(MEMORY[0x277D79E20]) initWithSystemColor:2];
    clearBackground = [MEMORY[0x277D79FB8] clearBackground];
    v18 = [v15 initWithSymbolName:@"xmark" symbolColor:v16 background:clearBackground];

    v19 = WFLocalizedString(v11);
    v20 = objc_alloc(MEMORY[0x277D7D790]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __105__WFParameter_WFVariableMenuProvider__clearButtonMenuItemWithVariable_parameterState_setVariableHandler___block_invoke;
    v23[3] = &unk_279EDBBD8;
    v24 = v10;
    v21 = [v20 initWithTitle:v19 icon:v18 isDestructive:1 handler:v23];

    goto LABEL_8;
  }

  defaultSerializedRepresentation = [self defaultSerializedRepresentation];
  v13 = defaultSerializedRepresentation;
  if (v9 && !defaultSerializedRepresentation || (v14 = [self allowsMultipleValues], v13, v14))
  {
    v11 = @"Clear";
    goto LABEL_7;
  }

  v21 = 0;
LABEL_8:

  return v21;
}

- (uint64_t)shouldShowVariable:()WFVariableMenuProvider allowedVariableTypes:variableProvider:variableUIDelegate:
{
  v9 = a3;
  v10 = a5;
  if (![a4 containsObject:v9])
  {
    goto LABEL_17;
  }

  if (![v9 isEqualToString:*MEMORY[0x277D7D038]])
  {
    if ([v9 isEqualToString:*MEMORY[0x277D7D040]] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D7D048]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D7D050]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D7D058]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D7D060]))
    {
      v12 = 1;
      goto LABEL_18;
    }

    if ([v9 isEqualToString:*MEMORY[0x277D7D070]])
    {
      availableVariableNames = [v10 availableVariableNames];
LABEL_16:
      v14 = availableVariableNames;
      v12 = [availableVariableNames count] != 0;

      goto LABEL_18;
    }

    if ([v9 isEqualToString:*MEMORY[0x277D7D068]])
    {
      availableVariableNames = [v10 workflowInputClasses];
      goto LABEL_16;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  hasAvailableActionOutputVariables = [v10 hasAvailableActionOutputVariables];
  if (a6)
  {
    v12 = hasAvailableActionOutputVariables;
  }

  else
  {
    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (id)variableMenuElementsWithVariable:()WFVariableMenuProvider parameterState:variableProvider:variableUIDelegate:setVariableHandler:
{
  v138 = *MEMORY[0x277D85DE8];
  v107 = a3;
  v83 = a4;
  v108 = a5;
  v12 = a6;
  v105 = a7;
  if ([objc_msgSend(self "stateClass")])
  {
    supportedVariableTypes = [self supportedVariableTypes];
  }

  else
  {
    supportedVariableTypes = 0;
  }

  availableVariableNames = [v108 availableVariableNames];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v86 = supportedVariableTypes;
  v87 = v12;
  v85 = array;
  v106 = array2;
  selfCopy = self;
  if ([self shouldShowVariable:*MEMORY[0x277D7D038] allowedVariableTypes:supportedVariableTypes variableProvider:v108 variableUIDelegate:v12])
  {
    v16 = objc_alloc(MEMORY[0x277D7A158]);
    v17 = [MEMORY[0x277D79E20] colorWithSystemColor:1];
    clearBackground = [MEMORY[0x277D79FB8] clearBackground];
    v19 = [v16 initWithSymbolName:@"wand.and.stars" symbolColor:v17 background:clearBackground];

    v20 = WFLocalizedString(@"Select Variable");
    v21 = objc_alloc(MEMORY[0x277D7D790]);
    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __142__WFParameter_WFVariableMenuProvider__variableMenuElementsWithVariable_parameterState_variableProvider_variableUIDelegate_setVariableHandler___block_invoke;
    v129[3] = &unk_279EDBEF8;
    v130 = supportedVariableTypes;
    v131 = v12;
    v22 = v108;
    v132 = v22;
    v23 = v105;
    v133 = v23;
    v100 = v20;
    v102 = v19;
    v98 = [v21 initWithTitle:v20 subtitle:0 icon:v19 handler:v129];
    [array addObject:?];
    v24 = objc_alloc_init(MEMORY[0x277D7CA40]);
    [v24 setVariableProvider:v22];
    [v24 setUserDefinedVariableNames:availableVariableNames];
    availableOutputActions = [v22 availableOutputActions];
    [v24 setOutputActions:availableOutputActions];

    containedVariables = [v84 containedVariables];
    [v24 setCurrentVariables:containedVariables];

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v95 = v24;
    obj = [v24 suggestedVariables];
    v27 = [obj countByEnumeratingWithState:&v125 objects:v137 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v126;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v126 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v125 + 1) + 8 * i);
          v32 = v107;
          v33 = v31;
          v34 = v33;
          if (v33 == v32)
          {
            v35 = 1;
          }

          else
          {
            v35 = 0;
            if (v107 && v33)
            {
              v35 = [v32 isEqual:v33];
            }
          }

          v36 = objc_alloc(MEMORY[0x277D7D790]);
          name = [v34 name];
          icon = [v34 icon];
          v123[0] = MEMORY[0x277D85DD0];
          v123[1] = 3221225472;
          v123[2] = __142__WFParameter_WFVariableMenuProvider__variableMenuElementsWithVariable_parameterState_variableProvider_variableUIDelegate_setVariableHandler___block_invoke_3;
          v123[3] = &unk_279EDC180;
          v39 = v23;
          v123[4] = v34;
          v124 = v39;
          v40 = [v36 initWithTitle:name subtitle:0 icon:icon state:v35 handler:v123];

          array2 = v106;
          [v106 addObject:v40];
        }

        v28 = [obj countByEnumeratingWithState:&v125 objects:v137 count:16];
      }

      while (v28);
    }

    v12 = v87;
    array = v85;
    self = selfCopy;
  }

  v41 = *MEMORY[0x277D7D048];
  v99 = *MEMORY[0x277D7D040];
  v136[0] = *MEMORY[0x277D7D040];
  v94 = v41;
  v136[1] = v41;
  v92 = *MEMORY[0x277D7D058];
  v93 = *MEMORY[0x277D7D050];
  v136[2] = *MEMORY[0x277D7D050];
  v136[3] = v92;
  v42 = *MEMORY[0x277D7D070];
  v91 = *MEMORY[0x277D7D060];
  v136[4] = *MEMORY[0x277D7D060];
  v89 = v42;
  v136[5] = v42;
  v90 = *MEMORY[0x277D7D068];
  v136[6] = *MEMORY[0x277D7D068];
  [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:7];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v103 = v122 = 0u;
  v43 = [v103 countByEnumeratingWithState:&v119 objects:v135 count:16];
  v44 = v107;
  if (v43)
  {
    v45 = v43;
    v46 = *v120;
    v96 = *v120;
    do
    {
      v47 = 0;
      v101 = v45;
      do
      {
        if (*v120 != v46)
        {
          objc_enumerationMutation(v103);
        }

        v48 = *(*(&v119 + 1) + 8 * v47);
        if ([self shouldShowVariable:v48 allowedVariableTypes:supportedVariableTypes variableProvider:v108 variableUIDelegate:v12])
        {
          if (v48 == v99 || v48 == v94 || v48 == v93 || v48 == v92 || v48 == v91)
          {
            v64 = objc_opt_new();
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
          }

          else
          {
            if (v48 != v90)
            {
              if (v48 != v89)
              {
                goto LABEL_45;
              }

              v117 = 0u;
              v118 = 0u;
              v115 = 0u;
              v116 = 0u;
              v49 = availableVariableNames;
              v50 = [v49 countByEnumeratingWithState:&v115 objects:v134 count:16];
              if (v50)
              {
                v51 = v50;
                v52 = *v116;
                do
                {
                  for (j = 0; j != v51; ++j)
                  {
                    if (*v116 != v52)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v54 = *(*(&v115 + 1) + 8 * j);
                    v55 = [objc_alloc(MEMORY[0x277D7C9E8]) initWithName:v54 variableProvider:v108 aggrandizements:0];
                    objc_opt_class();
                    v56 = 0;
                    if (objc_opt_isKindOfClass())
                    {
                      name2 = [v44 name];
                      v56 = [name2 isEqualToString:v54];
                    }

                    v58 = objc_alloc(MEMORY[0x277D7D790]);
                    name3 = [v55 name];
                    icon2 = [v55 icon];
                    v112[0] = MEMORY[0x277D85DD0];
                    v112[1] = 3221225472;
                    v112[2] = __142__WFParameter_WFVariableMenuProvider__variableMenuElementsWithVariable_parameterState_variableProvider_variableUIDelegate_setVariableHandler___block_invoke_4;
                    v112[3] = &unk_279EDC180;
                    v61 = v105;
                    v113 = v55;
                    v114 = v61;
                    v62 = v55;
                    v63 = [v58 initWithTitle:name3 subtitle:0 icon:icon2 state:v56 handler:v112];

                    v44 = v107;
                    array2 = v106;
                    [v106 addObject:v63];
                  }

                  v51 = [v49 countByEnumeratingWithState:&v115 objects:v134 count:16];
                }

                while (v51);
                supportedVariableTypes = v86;
                v12 = v87;
                array = v85;
LABEL_43:
                v46 = v96;
                self = selfCopy;
              }

              v45 = v101;
              goto LABEL_45;
            }

            v64 = [objc_alloc(MEMORY[0x277D7C888]) initWithVariableProvider:v108 aggrandizements:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              name4 = [v44 name];
              name5 = [v64 name];
              isKindOfClass = [name4 isEqualToString:name5];
            }

            else
            {
              isKindOfClass = 0;
            }
          }

          v66 = objc_alloc(MEMORY[0x277D7D790]);
          name6 = [v64 name];
          icon3 = [v64 icon];
          v109[0] = MEMORY[0x277D85DD0];
          v109[1] = 3221225472;
          v109[2] = __142__WFParameter_WFVariableMenuProvider__variableMenuElementsWithVariable_parameterState_variableProvider_variableUIDelegate_setVariableHandler___block_invoke_5;
          v109[3] = &unk_279EDC180;
          v69 = v105;
          v110 = v64;
          v111 = v69;
          v49 = v64;
          v70 = [v66 initWithTitle:name6 subtitle:0 icon:icon3 state:isKindOfClass & 1 handler:v109];

          [array addObject:v70];
          v44 = v107;
          goto LABEL_43;
        }

LABEL_45:
        ++v47;
      }

      while (v47 != v45);
      v73 = [v103 countByEnumeratingWithState:&v119 objects:v135 count:16];
      v45 = v73;
    }

    while (v73);
  }

  array3 = [MEMORY[0x277CBEB18] array];
  if ([array count])
  {
    v75 = [objc_alloc(MEMORY[0x277D7D7D0]) initWithMenuElements:array];
    [array3 addObject:v75];
  }

  if ([array2 count])
  {
    v76 = [objc_alloc(MEMORY[0x277D7D7D0]) initWithMenuElements:array2];
    [v76 setStyle:2];
    v77 = @"Variables…";
    v78 = @"Variables… (user defined + suggested)";
    v79 = WFCurrentBundle();
    v80 = [v79 localizedStringForKey:@"Variables… (user defined + suggested)" value:@"Variables…" table:0];

    array2 = v106;
    [v76 setTitle:v80];

    [v76 setOnlyDisplayTitleWhenCollapsed:1];
    [array3 addObject:v76];
  }

  if ([array3 count])
  {
    v81 = array3;
  }

  else
  {
    v81 = 0;
  }

  return v81;
}

@end