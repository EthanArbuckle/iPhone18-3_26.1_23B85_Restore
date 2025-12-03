@interface SiriUIComponentConstraintFactory
+ (id)sharedConstraintFactory;
- (SiriUIComponentConstraintFactory)init;
- (id)_bestDistanceFromComponentType:(unint64_t)type toComponentType:(unint64_t)componentType layoutStyle:(int64_t)style;
- (id)_createMapForLayoutStyle:(int64_t)style;
- (id)bottomConstraintForView:(id)view fromLayoutGuide:(id)guide templateComponent:(id)component layoutStyle:(int64_t)style;
- (id)bottomConstraintForView:(id)view inSuperview:(id)superview templateComponent:(id)component layoutStyle:(int64_t)style;
- (id)topConstraintForView:(id)view fromLayoutGuide:(id)guide templateComponent:(id)component layoutStyle:(int64_t)style;
- (id)topConstraintForView:(id)view inSuperview:(id)superview templateComponent:(id)component layoutStyle:(int64_t)style;
- (id)verticalConstraintFromUpperView:(id)view lowerView:(id)lowerView upperTemplateComponent:(id)component lowerTemplateComponent:(id)templateComponent layoutStyle:(int64_t)style;
- (int64_t)_layoutAttributeForView:(id)view componentType:(unint64_t)type isLower:(BOOL)lower;
- (unint64_t)_componentTypeForView:(id)view component:(id)component;
- (void)_addConstants:(id)constants forLowerComponentStyle:(unint64_t)style toMap:(id)map;
- (void)_setupMaps;
@end

@implementation SiriUIComponentConstraintFactory

+ (id)sharedConstraintFactory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SiriUIComponentConstraintFactory_sharedConstraintFactory__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedConstraintFactory_onceToken != -1)
  {
    dispatch_once(&sharedConstraintFactory_onceToken, block);
  }

  v2 = s_sharedConstraintFactory;

  return v2;
}

uint64_t __59__SiriUIComponentConstraintFactory_sharedConstraintFactory__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = s_sharedConstraintFactory;
  s_sharedConstraintFactory = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SiriUIComponentConstraintFactory)init
{
  v4.receiver = self;
  v4.super_class = SiriUIComponentConstraintFactory;
  v2 = [(SiriUIComponentConstraintFactory *)&v4 init];
  [(SiriUIComponentConstraintFactory *)v2 _setupMaps];
  return v2;
}

- (void)_setupMaps
{
  v52[6] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  layoutStyleToComponentLayoutMaps = self->_layoutStyleToComponentLayoutMaps;
  self->_layoutStyleToComponentLayoutMaps = dictionary;

  v5 = [(SiriUIComponentConstraintFactory *)self _createMapForLayoutStyle:0];
  v22 = [(SiriUIComponentConstraintFactory *)self _createMapForLayoutStyle:1];
  v17 = [(SiriUIComponentConstraintFactory *)self _createMapForLayoutStyle:2];
  v51[0] = &unk_287A0D220;
  v51[1] = &unk_287A0D238;
  v52[0] = &unk_287A0D448;
  v52[1] = &unk_287A0D458;
  v51[2] = &unk_287A0D250;
  v51[3] = &unk_287A0D268;
  v52[2] = &unk_287A0D468;
  v52[3] = &unk_287A0D468;
  v51[4] = &unk_287A0D280;
  v51[5] = &unk_287A0D298;
  v52[4] = &unk_287A0D458;
  v52[5] = &unk_287A0D478;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:6];
  [(SiriUIComponentConstraintFactory *)self _addConstants:v6 forLowerComponentStyle:1 toMap:v5];
  v49[0] = &unk_287A0D220;
  v49[1] = &unk_287A0D298;
  v50[0] = &unk_287A0D488;
  v50[1] = &unk_287A0D498;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];

  [(SiriUIComponentConstraintFactory *)self _addConstants:v7 forLowerComponentStyle:1 toMap:v22];
  v47[0] = &unk_287A0D220;
  v47[1] = &unk_287A0D298;
  v48[0] = &unk_287A0D488;
  v48[1] = &unk_287A0D4A8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];

  [(SiriUIComponentConstraintFactory *)self _addConstants:v21 forLowerComponentStyle:1 toMap:v17];
  v45[0] = &unk_287A0D220;
  v45[1] = &unk_287A0D238;
  v46[0] = &unk_287A0D4B8;
  v46[1] = &unk_287A0D458;
  v45[2] = &unk_287A0D298;
  v46[2] = &unk_287A0D4C8;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
  [(SiriUIComponentConstraintFactory *)self _addConstants:v20 forLowerComponentStyle:0 toMap:v5];
  v43[0] = &unk_287A0D220;
  v43[1] = &unk_287A0D238;
  v44[0] = &unk_287A0D458;
  v44[1] = &unk_287A0D4C8;
  v43[2] = &unk_287A0D268;
  v43[3] = &unk_287A0D298;
  v44[2] = &unk_287A0D478;
  v44[3] = &unk_287A0D498;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
  [(SiriUIComponentConstraintFactory *)self _addConstants:v8 forLowerComponentStyle:3 toMap:v5];
  v41[0] = &unk_287A0D238;
  v41[1] = &unk_287A0D268;
  v42[0] = &unk_287A0D478;
  v42[1] = &unk_287A0D4D8;
  v41[2] = &unk_287A0D280;
  v41[3] = &unk_287A0D298;
  v42[2] = &unk_287A0D458;
  v42[3] = &unk_287A0D498;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];

  [(SiriUIComponentConstraintFactory *)self _addConstants:v9 forLowerComponentStyle:3 toMap:v22];
  v39[0] = &unk_287A0D238;
  v39[1] = &unk_287A0D268;
  v40[0] = &unk_287A0D478;
  v40[1] = &unk_287A0D4D8;
  v39[2] = &unk_287A0D280;
  v39[3] = &unk_287A0D298;
  v40[2] = &unk_287A0D458;
  v40[3] = &unk_287A0D4A8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];

  [(SiriUIComponentConstraintFactory *)self _addConstants:v19 forLowerComponentStyle:3 toMap:v17];
  v37[0] = &unk_287A0D220;
  v37[1] = &unk_287A0D238;
  v38[0] = &unk_287A0D4E8;
  v38[1] = &unk_287A0D4F8;
  v37[2] = &unk_287A0D250;
  v37[3] = &unk_287A0D268;
  v38[2] = &unk_287A0D4C8;
  v38[3] = &unk_287A0D478;
  v37[4] = &unk_287A0D280;
  v37[5] = &unk_287A0D298;
  v38[4] = &unk_287A0D458;
  v38[5] = &unk_287A0D508;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:6];
  [(SiriUIComponentConstraintFactory *)self _addConstants:v10 forLowerComponentStyle:2 toMap:v5];
  v35[0] = &unk_287A0D238;
  v35[1] = &unk_287A0D268;
  v36[0] = &unk_287A0D458;
  v36[1] = &unk_287A0D4D8;
  v35[2] = &unk_287A0D298;
  v36[2] = &unk_287A0D4A8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];

  [(SiriUIComponentConstraintFactory *)self _addConstants:v16 forLowerComponentStyle:2 toMap:v22];
  [(SiriUIComponentConstraintFactory *)self _addConstants:v16 forLowerComponentStyle:2 toMap:v17];
  v33[0] = &unk_287A0D238;
  v33[1] = &unk_287A0D250;
  v34[0] = &unk_287A0D4F8;
  v34[1] = &unk_287A0D4C8;
  v33[2] = &unk_287A0D268;
  v33[3] = &unk_287A0D298;
  v34[2] = &unk_287A0D478;
  v34[3] = &unk_287A0D498;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
  [(SiriUIComponentConstraintFactory *)self _addConstants:v18 forLowerComponentStyle:4 toMap:v5];
  v31[0] = &unk_287A0D220;
  v31[1] = &unk_287A0D238;
  v32[0] = &unk_287A0D4B8;
  v32[1] = &unk_287A0D518;
  v31[2] = &unk_287A0D250;
  v31[3] = &unk_287A0D298;
  v32[2] = &unk_287A0D518;
  v32[3] = &unk_287A0D4C8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
  [(SiriUIComponentConstraintFactory *)self _addConstants:v11 forLowerComponentStyle:5 toMap:v5];
  v29 = &unk_287A0D298;
  v30 = &unk_287A0D488;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

  [(SiriUIComponentConstraintFactory *)self _addConstants:v12 forLowerComponentStyle:5 toMap:v22];
  [(SiriUIComponentConstraintFactory *)self _addConstants:v12 forLowerComponentStyle:5 toMap:v17];
  v27[0] = &unk_287A0D220;
  v27[1] = &unk_287A0D298;
  v28[0] = &unk_287A0D498;
  v28[1] = &unk_287A0D4A8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  [(SiriUIComponentConstraintFactory *)self _addConstants:v13 forLowerComponentStyle:8 toMap:v5];
  v25 = &unk_287A0D220;
  v26 = &unk_287A0D4A8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

  [(SiriUIComponentConstraintFactory *)self _addConstants:v14 forLowerComponentStyle:8 toMap:v17];
  v23[0] = &unk_287A0D220;
  v23[1] = &unk_287A0D298;
  v24[0] = &unk_287A0D448;
  v24[1] = &unk_287A0D478;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [(SiriUIComponentConstraintFactory *)self _addConstants:v15 forLowerComponentStyle:9 toMap:v5];
}

- (id)verticalConstraintFromUpperView:(id)view lowerView:(id)lowerView upperTemplateComponent:(id)component lowerTemplateComponent:(id)templateComponent layoutStyle:(int64_t)style
{
  v34 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  lowerViewCopy = lowerView;
  templateComponentCopy = templateComponent;
  v15 = [(SiriUIComponentConstraintFactory *)self _componentTypeForView:viewCopy component:component];
  v16 = [(SiriUIComponentConstraintFactory *)self _componentTypeForView:lowerViewCopy component:templateComponentCopy];

  v17 = [(SiriUIComponentConstraintFactory *)self _layoutAttributeForView:viewCopy componentType:v15 isLower:0];
  v18 = [(SiriUIComponentConstraintFactory *)self _layoutAttributeForView:lowerViewCopy componentType:v16 isLower:1];
  v19 = [(SiriUIComponentConstraintFactory *)self _bestDistanceFromComponentType:v15 toComponentType:v16 layoutStyle:style];
  if (v19)
  {
    goto LABEL_5;
  }

  v20 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v26 = 136315906;
    v27 = "[SiriUIComponentConstraintFactory verticalConstraintFromUpperView:lowerView:upperTemplateComponent:lowerTemplateComponent:layoutStyle:]";
    v28 = 2048;
    v29 = v15;
    v30 = 2048;
    v31 = v16;
    v32 = 2048;
    styleCopy = style;
    _os_log_error_impl(&dword_26948D000, v20, OS_LOG_TYPE_ERROR, "%s No template distance found for component type %zd to %zd (layoutStyle %zd)", &v26, 0x2Au);
  }

  v19 = [(SiriUIComponentConstraintFactory *)self _bestDistanceFromComponentType:1 toComponentType:v16 layoutStyle:style];
  if (v19)
  {
LABEL_5:
    v21 = v19;
    v22 = MEMORY[0x277CCAAD0];
    [v19 floatValue];
    v24 = [v22 constraintWithItem:lowerViewCopy attribute:v18 relatedBy:0 toItem:viewCopy attribute:v17 multiplier:1.0 constant:v23];
  }

  else
  {
    v24 = [MEMORY[0x277CCAAD0] constraintWithItem:lowerViewCopy attribute:3 relatedBy:0 toItem:viewCopy attribute:4 multiplier:1.0 constant:0.0];
  }

  return v24;
}

- (id)topConstraintForView:(id)view inSuperview:(id)superview templateComponent:(id)component layoutStyle:(int64_t)style
{
  viewCopy = view;
  superviewCopy = superview;
  v12 = [(SiriUIComponentConstraintFactory *)self _componentTypeForView:viewCopy component:component];
  v13 = [(SiriUIComponentConstraintFactory *)self _layoutAttributeForView:viewCopy componentType:6 isLower:1];
  v14 = [(SiriUIComponentConstraintFactory *)self _bestDistanceFromComponentType:6 toComponentType:v12 layoutStyle:style];
  v15 = v14;
  if (v14)
  {
    v16 = MEMORY[0x277CCAAD0];
    [v14 floatValue];
    v18 = [v16 constraintWithItem:viewCopy attribute:v13 relatedBy:0 toItem:superviewCopy attribute:3 multiplier:1.0 constant:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)bottomConstraintForView:(id)view inSuperview:(id)superview templateComponent:(id)component layoutStyle:(int64_t)style
{
  viewCopy = view;
  superviewCopy = superview;
  v12 = [(SiriUIComponentConstraintFactory *)self _componentTypeForView:viewCopy component:component];
  v13 = [(SiriUIComponentConstraintFactory *)self _layoutAttributeForView:viewCopy componentType:v12 isLower:0];
  v14 = [(SiriUIComponentConstraintFactory *)self _bestDistanceFromComponentType:7 toComponentType:v12 layoutStyle:style];
  v15 = v14;
  if (v14)
  {
    v16 = MEMORY[0x277CCAAD0];
    [v14 floatValue];
    v18 = [v16 constraintWithItem:superviewCopy attribute:4 relatedBy:1 toItem:viewCopy attribute:v13 multiplier:1.0 constant:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)topConstraintForView:(id)view fromLayoutGuide:(id)guide templateComponent:(id)component layoutStyle:(int64_t)style
{
  viewCopy = view;
  guideCopy = guide;
  v12 = [(SiriUIComponentConstraintFactory *)self _componentTypeForView:viewCopy component:component];
  v13 = [(SiriUIComponentConstraintFactory *)self _layoutAttributeForView:viewCopy componentType:6 isLower:1];
  v14 = [(SiriUIComponentConstraintFactory *)self _bestDistanceFromComponentType:6 toComponentType:v12 layoutStyle:style];
  v15 = v14;
  if (v14)
  {
    v16 = MEMORY[0x277CCAAD0];
    [v14 floatValue];
    v18 = [v16 constraintWithItem:viewCopy attribute:v13 relatedBy:0 toItem:guideCopy attribute:3 multiplier:1.0 constant:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)bottomConstraintForView:(id)view fromLayoutGuide:(id)guide templateComponent:(id)component layoutStyle:(int64_t)style
{
  viewCopy = view;
  guideCopy = guide;
  v12 = [(SiriUIComponentConstraintFactory *)self _componentTypeForView:viewCopy component:component];
  v13 = [(SiriUIComponentConstraintFactory *)self _layoutAttributeForView:viewCopy componentType:v12 isLower:0];
  v14 = [(SiriUIComponentConstraintFactory *)self _bestDistanceFromComponentType:7 toComponentType:v12 layoutStyle:style];
  v15 = v14;
  if (v14)
  {
    v16 = MEMORY[0x277CCAAD0];
    [v14 floatValue];
    v18 = [v16 constraintWithItem:guideCopy attribute:4 relatedBy:1 toItem:viewCopy attribute:v13 multiplier:1.0 constant:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_bestDistanceFromComponentType:(unint64_t)type toComponentType:(unint64_t)componentType layoutStyle:(int64_t)style
{
  v31 = *MEMORY[0x277D85DE8];
  layoutStyleToComponentLayoutMaps = self->_layoutStyleToComponentLayoutMaps;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  v11 = [(NSMutableDictionary *)layoutStyleToComponentLayoutMaps objectForKeyedSubscript:v10];
  componentTypeCopy = componentType;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:componentType];
  v13 = [v11 objectForKey:v12];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v15 = [v13 objectForKey:v14];

  if (!v15)
  {
    v16 = [(NSMutableDictionary *)self->_layoutStyleToComponentLayoutMaps objectForKeyedSubscript:&unk_287A0D2B0];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:componentTypeCopy];
    v18 = [v16 objectForKey:v17];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v15 = [v18 objectForKey:v19];

    if (!v15)
    {
      v20 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = "[SiriUIComponentConstraintFactory _bestDistanceFromComponentType:toComponentType:layoutStyle:]";
        v25 = 2048;
        typeCopy = type;
        v27 = 2048;
        v28 = componentTypeCopy;
        v29 = 2048;
        styleCopy = style;
        _os_log_impl(&dword_26948D000, v20, OS_LOG_TYPE_DEFAULT, "%s Template component distance is not specified between types %zd and %zd for layoutStyle: %zd", buf, 0x2Au);
      }

      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)_componentTypeForView:(id)view component:(id)component
{
  viewCopy = view;
  componentCopy = component;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      style = 9;
    }

    else
    {
      style = [componentCopy style];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      style = 8;
    }

    else
    {
      style = -1;
    }
  }

  return style;
}

- (int64_t)_layoutAttributeForView:(id)view componentType:(unint64_t)type isLower:(BOOL)lower
{
  lowerCopy = lower;
  viewCopy = view;
  viewForFirstBaselineLayout = [viewCopy viewForFirstBaselineLayout];

  viewForLastBaselineLayout = [viewCopy viewForLastBaselineLayout];

  v10 = 12;
  if (!viewForFirstBaselineLayout)
  {
    v10 = 3;
  }

  if (!lowerCopy)
  {
    v10 = 3;
  }

  v11 = 11;
  if (!viewForLastBaselineLayout)
  {
    v11 = 4;
  }

  v12 = 12;
  if (!viewForFirstBaselineLayout)
  {
    v12 = 3;
  }

  if (lowerCopy)
  {
    v11 = v12;
  }

  if (viewForLastBaselineLayout)
  {
    v13 = lowerCopy;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 == 0;
  v15 = 11;
  if (!v14)
  {
    v15 = 4;
  }

  if (type == 7)
  {
    v11 = v15;
  }

  if (type == 6)
  {
    return v10;
  }

  else
  {
    return v11;
  }
}

- (id)_createMapForLayoutStyle:(int64_t)style
{
  layoutStyleToComponentLayoutMaps = self->_layoutStyleToComponentLayoutMaps;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)layoutStyleToComponentLayoutMaps objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_layoutStyleToComponentLayoutMaps;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:style];
    [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];
  }

  v11 = self->_layoutStyleToComponentLayoutMaps;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];

  return v13;
}

- (void)_addConstants:(id)constants forLowerComponentStyle:(unint64_t)style toMap:(id)map
{
  v7 = MEMORY[0x277CCABB0];
  mapCopy = map;
  constantsCopy = constants;
  v10 = [v7 numberWithUnsignedInteger:style];
  [mapCopy setObject:constantsCopy forKey:v10];
}

@end