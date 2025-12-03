@interface WFUnionParameter(Summary)
+ (id)_slotsForParameter:()Summary state:;
- (NSObject)subparameterForState:()Summary;
- (NSString)localizedStringFor:()Summary;
- (id)moduleSummarySlotsForState:()Summary;
- (id)substateFromState:()Summary;
- (id)whichSlot;
@end

@implementation WFUnionParameter(Summary)

- (id)moduleSummarySlotsForState:()Summary
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v21 = "WFEnforceClass";
      v22 = 2114;
      v23 = v6;
      v24 = 2114;
      v25 = objc_opt_class();
      v26 = 2114;
      v27 = v5;
      v9 = v25;
      _os_log_impl(&dword_2743F0000, v8, OS_LOG_TYPE_FAULT, "%s %@ is not a class or is not a subclass of WFContentItem.", buf, 0x2Au);
    }

    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  which = [v7 which];
  if (which)
  {
    whichSlot2 = [self subparameterForState:v7];
    v12 = [self substateFromState:v7];
    v13 = [objc_opt_class() _slotsForParameter:whichSlot2 state:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      whichSlot = [self whichSlot];
      v18 = whichSlot;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    }
  }

  else
  {
    whichSlot2 = [self whichSlot];
    v19 = whichSlot2;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  }

  return v15;
}

- (id)whichSlot
{
  v2 = MEMORY[0x277D7D7B0];
  localizedLabel = [self localizedLabel];
  localizedPlaceholder = [self localizedPlaceholder];
  whichSlotKey = [objc_opt_class() whichSlotKey];
  v6 = [v2 slotWithLocalizedName:localizedLabel localizedPlaceholder:localizedPlaceholder key:whichSlotKey];

  [v6 setPrefersNoWrapping:1];

  return v6;
}

- (NSObject)subparameterForState:()Summary
{
  v17 = *MEMORY[0x277D85DE8];
  which = [a3 which];
  if (!which)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v5 = [self subdefinitionForType:which];
  if (v5)
  {
    v6 = [MEMORY[0x277D7C6D8] parameterWithDefinition:v5];
    if (([v6 conformsToProtocol:&unk_2883D7328]& 1) != 0)
    {
      action = [self action];

      if (!action)
      {
        v8 = getWFEditorLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "[WFUnionParameter(Summary) subparameterForState:]";
          v15 = 2112;
          selfCopy = self;
          _os_log_impl(&dword_2743F0000, v8, OS_LOG_TYPE_ERROR, "%s #### parameter %@ does not have an owning action set.", &v13, 0x16u);
        }
      }

      action2 = [self action];
      [action2 configureParameter:v6];

      v6 = v6;
      v10 = v6;
      goto LABEL_16;
    }

    v11 = getWFEditorLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[WFUnionParameter(Summary) subparameterForState:]";
      v15 = 2112;
      selfCopy = which;
      _os_log_impl(&dword_2743F0000, v11, OS_LOG_TYPE_ERROR, "%s %@ is not summary-supporting.", &v13, 0x16u);
    }
  }

  else
  {
    v6 = getWFEditorLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[WFUnionParameter(Summary) subparameterForState:]";
      v15 = 2112;
      selfCopy = which;
      _os_log_impl(&dword_2743F0000, v6, OS_LOG_TYPE_ERROR, "%s %@ has no subdefinition.", &v13, 0x16u);
    }
  }

  v10 = 0;
LABEL_16:

LABEL_17:

  return v10;
}

- (NSString)localizedStringFor:()Summary
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = NSClassFromString(v3);
  if (([(objc_class *)v4 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    localizedTypeDescription = [(objc_class *)v4 localizedTypeDescription];
  }

  else
  {
    v6 = getWFEditorLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[WFUnionParameter(Summary) localizedStringFor:]";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2743F0000, v6, OS_LOG_TYPE_ERROR, "%s %@ is not a class or is not a subclass of WFContentItem.", &v9, 0x16u);
    }

    localizedTypeDescription = v3;
  }

  v7 = localizedTypeDescription;

  return v7;
}

- (id)substateFromState:()Summary
{
  v3 = a3;
  which = [v3 which];
  if (which)
  {
    states = [v3 states];
    v6 = [states objectForKey:which];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_slotsForParameter:()Summary state:
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 moduleSummarySlotsForState:v6];
      goto LABEL_13;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 moduleSummarySlotForState:v6];
      v9 = v8;
      if (v8)
      {
        v17[0] = v8;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_13;
    }

    v10 = getWFEditorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "+[WFUnionParameter(Summary) _slotsForParameter:state:]";
      v15 = 2112;
      v16 = objc_opt_class();
      v11 = v16;
      _os_log_impl(&dword_2743F0000, v10, OS_LOG_TYPE_ERROR, "%s %@ claims to be WFModuleSummarySupporting, but has no moduleSummarySlot method.", &v13, 0x16u);
    }
  }

  v7 = 0;
LABEL_13:

  return v7;
}

@end