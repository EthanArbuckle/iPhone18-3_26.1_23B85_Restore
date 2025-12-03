@interface SBFloorDodgingLayerModifier
- (id)_framesForIdentifiersInModel:(id)model;
- (id)_identifierIfAnyIllegallyClippingOtherIdentifiers:(id)identifiers model:(id)model intersectionSize:(CGSize *)size intersectingFrame:(CGRect *)frame;
- (id)_identifierIfAnyIllegallyOutsideContentViewBounds:(id)bounds model:(id)model;
- (id)_modelByClampingOverhangingIdentifiers:(id)identifiers;
- (id)_modelByPerformingDodgingInModel:(id)model;
- (id)_modelsByResizingOverlappingIdentifiers:(id)identifiers;
- (id)_modelsByTranslatingOverlappingIdentifiers:(id)identifiers allowedEdges:(unint64_t)edges;
- (id)framesForIdentifiers;
- (id)layoutSettingsForIdentifier:(id)identifier;
- (id)model;
- (id)modelForInvalidatedModel:(id)model;
- (id)zOrderedIdentifiers;
@end

@implementation SBFloorDodgingLayerModifier

- (id)model
{
  overridingModel = self->_overridingModel;
  if (overridingModel)
  {
    model = overridingModel;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBFloorDodgingLayerModifier;
    model = [(SBFloorDodgingLayerModifier *)&v5 model];
  }

  return model;
}

- (id)modelForInvalidatedModel:(id)model
{
  modelCopy = model;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __56__SBFloorDodgingLayerModifier_modelForInvalidatedModel___block_invoke;
  v15 = &unk_2783B8AD8;
  v16 = modelCopy;
  selfCopy = self;
  v5 = modelCopy;
  v6 = [v5 modelByModifyingModelWithBlock:&v12];
  v7 = [(SBFloorDodgingLayerModifier *)self _modelByPerformingDodgingInModel:v6, v12, v13, v14, v15];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;

  return v9;
}

void __56__SBFloorDodgingLayerModifier_modelForInvalidatedModel___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [*(a1 + 32) identifiers];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [*(a1 + 40) preferenceForIdentifier:v9];
        [v10 preferredSize];
        v12 = v11;
        v14 = v13;
        [v10 minimumSize];
        if (v15 >= v12)
        {
          v12 = v15;
        }

        if (v16 >= v14)
        {
          v14 = v16;
        }

        [v10 preferredCenter];
        v18 = v17;
        v20 = v19;
        [v3 setSize:v9 forIdentifier:{v12, v14}];
        [v3 setCenter:v9 forIdentifier:{v18, v20}];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }
}

- (id)framesForIdentifiers
{
  v21 = *MEMORY[0x277D85DE8];
  model = [(SBFloorDodgingLayerModifier *)self model];
  identifiers = [model identifiers];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(identifiers, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = identifiers;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [model sizeForIdentifier:{v10, v14}];
        [model centerForIdentifier:v10];
        SBRectWithSize();
        UIRectCenteredAboutPoint();
        v18 = v10;
        v11 = [MEMORY[0x277CCAE60] valueWithCGRect:?];
        v19 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        [v4 addEntriesFromDictionary:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)zOrderedIdentifiers
{
  v2 = MEMORY[0x277CBEB70];
  model = [(SBFloorDodgingLayerModifier *)self model];
  identifiers = [model identifiers];
  bs_reverse = [identifiers bs_reverse];
  v6 = [v2 orderedSetWithArray:bs_reverse];

  return v6;
}

- (id)layoutSettingsForIdentifier:(id)identifier
{
  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];

  return initWithDefaultValues;
}

- (id)_modelByPerformingDodgingInModel:(id)model
{
  v79 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v52 = [(SBFloorDodgingLayerModifier *)self _modelByClampingOverhangingIdentifiers:modelCopy];
  v5 = [v52 mutableCopy];
  v6 = [(SBFloorDodgingLayerModifier *)self _modelsByTranslatingOverlappingIdentifiers:v5 allowedEdges:15];

  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __64__SBFloorDodgingLayerModifier__modelByPerformingDodgingInModel___block_invoke;
  v75[3] = &unk_2783B8B00;
  v75[4] = self;
  v7 = [v6 bs_map:v75];

  v8 = objc_opt_new();
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v72;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v72 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SBFloorDodgingLayerModifier *)self _modelsByResizingOverlappingIdentifiers:*(*(&v71 + 1) + 8 * i)];
        [v8 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v11);
  }

  v51 = v9;

  v53 = modelCopy;
  v15 = [(SBFloorDodgingLayerModifier *)self _framesForIdentifiersInModel:modelCopy];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v8;
  v16 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (v16)
  {
    v17 = v16;
    selfCopy = self;
    v56 = 0;
    v18 = *v68;
    v54 = *v68;
    do
    {
      v19 = 0;
      v57 = v17;
      do
      {
        if (*v68 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v67 + 1) + 8 * v19);
        v21 = [(SBFloorDodgingLayerModifier *)self _framesForIdentifiersInModel:v20, v51];
        v22 = [(SBFloorDodgingLayerModifier *)self _identifierIfAnyIllegallyOutsideContentViewBounds:v21 model:v20];
        v66[0] = 0;
        v66[1] = 0;
        v23 = [(SBFloorDodgingLayerModifier *)self _identifierIfAnyIllegallyClippingOtherIdentifiers:v21 model:v20 intersectionSize:v66 intersectingFrame:0];
        if (!(v22 | v23))
        {
          v59 = v23;
          v60 = v22;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          identifiers = [v20 identifiers];
          v25 = [identifiers countByEnumeratingWithState:&v62 objects:v76 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v63;
            v28 = 0.0;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                v61 = v28;
                if (*v63 != v27)
                {
                  objc_enumerationMutation(identifiers);
                }

                v30 = *(*(&v62 + 1) + 8 * j);
                v31 = [v15 objectForKey:v30];
                [v31 CGRectValue];
                v33 = v32;
                v35 = v34;

                v36 = [v21 objectForKey:v30];
                [v36 CGRectValue];
                v38 = v37;
                v40 = v39;

                UIRectGetCenter();
                v42 = v41;
                v44 = v43;
                UIRectGetCenter();
                v47 = v61 + hypot(v45 - v42, v46 - v44);
                v28 = v47 + hypot(v38 - v33, v40 - v35);
              }

              v26 = [identifiers countByEnumeratingWithState:&v62 objects:v76 count:16];
            }

            while (v26);
          }

          if (BSFloatLessThanFloat())
          {
            v48 = v20;

            v56 = v48;
          }

          v18 = v54;
          self = selfCopy;
          v17 = v57;
          v23 = v59;
          v22 = v60;
        }

        ++v19;
      }

      while (v19 != v17);
      v17 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
    }

    while (v17);
  }

  else
  {
    v56 = 0;
  }

  v49 = v56;
  return v56;
}

- (id)_modelsByTranslatingOverlappingIdentifiers:(id)identifiers allowedEdges:(unint64_t)edges
{
  v70[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v7 = [(SBFloorDodgingLayerModifier *)self _framesForIdentifiersInModel:identifiersCopy];
  v67 = 0u;
  *v68 = 0u;
  v66[0] = 0;
  v66[1] = 0;
  v8 = [(SBFloorDodgingLayerModifier *)self _identifierIfAnyIllegallyClippingOtherIdentifiers:v7 model:identifiersCopy intersectionSize:v66 intersectingFrame:&v67];
  if (v8)
  {
    [(SBFloorDodgingLayerModifier *)self spaceBetweenIdentifiers];
    v10 = v9;
    v11 = [(SBFloorDodgingLayerModifier *)self preferenceForIdentifier:v8];
    dodgingAxisMask = [v11 dodgingAxisMask];

    v13 = [v7 objectForKey:v8];
    [v13 CGRectValue];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v72.origin.x = v15;
    v72.origin.y = v17;
    v72.size.width = v19;
    v72.size.height = v21;
    v73 = CGRectInset(v72, -(v10 * 0.5), -(v10 * 0.5));
    x = v73.origin.x;
    y = v73.origin.y;
    width = v73.size.width;
    height = v73.size.height;
    v26 = objc_opt_new();
    if ((edges & 2) != 0 && SBDodgingAxisMaskContainsAxis(dodgingAxisMask, 0))
    {
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __87__SBFloorDodgingLayerModifier__modelsByTranslatingOverlappingIdentifiers_allowedEdges___block_invoke;
      v60[3] = &unk_2783B8B28;
      v62 = *&v67 - width;
      v63 = y;
      v64 = width;
      v65 = height;
      v61 = v8;
      v27 = [identifiersCopy modelByModifyingModelWithBlock:v60];
      0xFFFFFFFFFFFFFFF7 = [(SBFloorDodgingLayerModifier *)self _modelsByTranslatingOverlappingIdentifiers:v27 allowedEdges:edges & 0xFFFFFFFFFFFFFFF7];
      [v26 addObjectsFromArray:0xFFFFFFFFFFFFFFF7];
    }

    v29 = v10 * 0.5;
    if ((edges & 8) != 0 && SBDodgingAxisMaskContainsAxis(dodgingAxisMask, 0))
    {
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __87__SBFloorDodgingLayerModifier__modelsByTranslatingOverlappingIdentifiers_allowedEdges___block_invoke_2;
      v54[3] = &unk_2783B8B28;
      v56 = v29 + *&v67 + v68[0];
      v57 = y;
      v58 = width;
      v59 = height;
      v55 = v8;
      v30 = [identifiersCopy modelByModifyingModelWithBlock:v54];
      0xFFFFFFFFFFFFFFFDLL = [(SBFloorDodgingLayerModifier *)self _modelsByTranslatingOverlappingIdentifiers:v30 allowedEdges:edges & 0xFFFFFFFFFFFFFFFDLL];
      [v26 addObjectsFromArray:0xFFFFFFFFFFFFFFFDLL];
    }

    if ((edges & 1) != 0 && SBDodgingAxisMaskContainsAxis(dodgingAxisMask, 1))
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __87__SBFloorDodgingLayerModifier__modelsByTranslatingOverlappingIdentifiers_allowedEdges___block_invoke_3;
      v48[3] = &unk_2783B8B28;
      v50 = x;
      v51 = *(&v67 + 1) - height;
      v52 = width;
      v53 = height;
      v49 = v8;
      v32 = [identifiersCopy modelByModifyingModelWithBlock:v48];
      0xFFFFFFFFFFFFFFFBLL = [(SBFloorDodgingLayerModifier *)self _modelsByTranslatingOverlappingIdentifiers:v32 allowedEdges:edges & 0xFFFFFFFFFFFFFFFBLL];
      [v26 addObjectsFromArray:0xFFFFFFFFFFFFFFFBLL];
    }

    if ((edges & 4) != 0 && SBDodgingAxisMaskContainsAxis(dodgingAxisMask, 1))
    {
      v39 = MEMORY[0x277D85DD0];
      v40 = 3221225472;
      v41 = __87__SBFloorDodgingLayerModifier__modelsByTranslatingOverlappingIdentifiers_allowedEdges___block_invoke_4;
      v42 = &unk_2783B8B28;
      v44 = x;
      v45 = v29 + *(&v67 + 1) + v68[1];
      v46 = width;
      v47 = height;
      v43 = v8;
      v34 = [identifiersCopy modelByModifyingModelWithBlock:&v39];
      v35 = [(SBFloorDodgingLayerModifier *)self _modelsByTranslatingOverlappingIdentifiers:v34 allowedEdges:edges & 0xFFFFFFFFFFFFFFFELL, v39, v40, v41, v42];
      [v26 addObjectsFromArray:v35];
    }

    if ([v26 count])
    {
      v36 = v26;
    }

    else
    {
      v70[0] = identifiersCopy;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:1];
    }

    v37 = v36;
  }

  else
  {
    v69 = identifiersCopy;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
  }

  return v37;
}

void __87__SBFloorDodgingLayerModifier__modelsByTranslatingOverlappingIdentifiers_allowedEdges___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  UIRectGetCenter();
  [v3 setCenter:*(a1 + 32) forIdentifier:?];
}

void __87__SBFloorDodgingLayerModifier__modelsByTranslatingOverlappingIdentifiers_allowedEdges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  UIRectGetCenter();
  [v3 setCenter:*(a1 + 32) forIdentifier:?];
}

void __87__SBFloorDodgingLayerModifier__modelsByTranslatingOverlappingIdentifiers_allowedEdges___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  UIRectGetCenter();
  [v3 setCenter:*(a1 + 32) forIdentifier:?];
}

void __87__SBFloorDodgingLayerModifier__modelsByTranslatingOverlappingIdentifiers_allowedEdges___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  UIRectGetCenter();
  [v3 setCenter:*(a1 + 32) forIdentifier:?];
}

- (id)_modelByClampingOverhangingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  [(SBFloorDodgingLayerModifier *)self contentViewBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBFloorDodgingLayerModifier *)self spaceBetweenIdentifiers];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__SBFloorDodgingLayerModifier__modelByClampingOverhangingIdentifiers___block_invoke;
  v16[3] = &unk_2783A8BA0;
  v16[4] = self;
  v16[5] = v6;
  v16[6] = v8;
  v16[7] = v10;
  v16[8] = v12;
  v16[9] = v13;
  v14 = [identifiersCopy modelByModifyingModelWithBlock:v16];

  return v14;
}

void __70__SBFloorDodgingLayerModifier__modelByClampingOverhangingIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 identifiers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [*(a1 + 32) preferenceForIdentifier:v9];
        v11 = [v10 canBePositionedOutsideContainerBounds];

        if ((v11 & 1) == 0)
        {
          [v3 sizeForIdentifier:v9];
          SBRectWithSize();
          [v3 centerForIdentifier:v9];
          UIRectCenteredAboutPoint();
          UIRectGetCenter();
          [v3 setCenter:v9 forIdentifier:?];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)_modelsByResizingOverlappingIdentifiers:(id)identifiers
{
  v55[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [(SBFloorDodgingLayerModifier *)self _framesForIdentifiersInModel:identifiersCopy];
  v52 = 0.0;
  v53 = 0.0;
  v6 = [(SBFloorDodgingLayerModifier *)self _identifierIfAnyIllegallyClippingOtherIdentifiers:v5 model:identifiersCopy intersectionSize:&v52 intersectingFrame:0];
  if (v6)
  {
    v7 = [v5 objectForKey:v6];
    [v7 CGRectValue];
    v32 = v9;
    v33 = v8;
    v11 = v10;
    v13 = v12;

    v14 = objc_opt_new();
    v15 = [(SBFloorDodgingLayerModifier *)self preferenceForIdentifier:v6];
    [v15 minimumSize];

    for (i = 0; i != 4; ++i)
    {
      v17 = v52;
      if (BSFloatGreaterThanOrEqualToFloat())
      {
        if (i)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0.0;
        }

        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __71__SBFloorDodgingLayerModifier__modelsByResizingOverlappingIdentifiers___block_invoke;
        v46[3] = &unk_2783B8B28;
        v48 = v33 + v18;
        v49 = v32;
        v50 = v11 - v17;
        v51 = v13;
        v47 = v6;
        v19 = [identifiersCopy modelByModifyingModelWithBlock:v46];
        [v14 addObject:v19];
      }

      v20 = v53;
      if (BSFloatGreaterThanOrEqualToFloat())
      {
        if (i >= 2)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0.0;
        }

        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __71__SBFloorDodgingLayerModifier__modelsByResizingOverlappingIdentifiers___block_invoke_2;
        v40[3] = &unk_2783B8B28;
        v42 = v33;
        v43 = v32 + v21;
        v44 = v11;
        v45 = v13 - v20;
        v41 = v6;
        v22 = [identifiersCopy modelByModifyingModelWithBlock:v40];
        [v14 addObject:v22];
      }

      v23 = v52;
      if (i)
      {
        v24 = v52;
      }

      else
      {
        v24 = 0.0;
      }

      if (i >= 2)
      {
        v25 = v53;
      }

      else
      {
        v25 = 0.0;
      }

      v26 = v13 - v53;
      if (BSFloatGreaterThanOrEqualToFloat())
      {
        v27 = v11 - v23;
        if (BSFloatGreaterThanOrEqualToFloat())
        {
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __71__SBFloorDodgingLayerModifier__modelsByResizingOverlappingIdentifiers___block_invoke_3;
          v34[3] = &unk_2783B8B28;
          v36 = v33 + v24;
          v37 = v32 + v25;
          v38 = v27;
          v39 = v26;
          v35 = v6;
          v28 = [identifiersCopy modelByModifyingModelWithBlock:v34];
          [v14 addObject:v28];
        }
      }
    }

    if ([v14 count])
    {
      v29 = v14;
    }

    else
    {
      v55[0] = identifiersCopy;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
    }

    v30 = v29;
  }

  else
  {
    v54 = identifiersCopy;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  }

  return v30;
}

void __71__SBFloorDodgingLayerModifier__modelsByResizingOverlappingIdentifiers___block_invoke(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = a1[7];
  v5 = a1[8];
  v6 = a2;
  [v6 setSize:v3 forIdentifier:{v4, v5}];
  UIRectGetCenter();
  [v6 setCenter:*(a1 + 4) forIdentifier:?];
}

void __71__SBFloorDodgingLayerModifier__modelsByResizingOverlappingIdentifiers___block_invoke_2(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = a1[7];
  v5 = a1[8];
  v6 = a2;
  [v6 setSize:v3 forIdentifier:{v4, v5}];
  UIRectGetCenter();
  [v6 setCenter:*(a1 + 4) forIdentifier:?];
}

void __71__SBFloorDodgingLayerModifier__modelsByResizingOverlappingIdentifiers___block_invoke_3(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = a1[7];
  v5 = a1[8];
  v6 = a2;
  [v6 setSize:v3 forIdentifier:{v4, v5}];
  UIRectGetCenter();
  [v6 setCenter:*(a1 + 4) forIdentifier:?];
}

- (id)_framesForIdentifiersInModel:(id)model
{
  modelCopy = model;
  v5 = self->_overridingModel;
  overridingModel = self->_overridingModel;
  self->_overridingModel = modelCopy;
  v7 = modelCopy;

  framesForIdentifiers = [(SBFloorDodgingLayerModifier *)self framesForIdentifiers];
  v9 = self->_overridingModel;
  self->_overridingModel = v5;

  return framesForIdentifiers;
}

- (id)_identifierIfAnyIllegallyOutsideContentViewBounds:(id)bounds model:(id)model
{
  v39 = *MEMORY[0x277D85DE8];
  boundsCopy = bounds;
  [(SBFloorDodgingLayerModifier *)self contentViewBounds];
  rect1[0] = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBFloorDodgingLayerModifier *)self spaceBetweenIdentifiers];
  v14 = v13;
  memset(&rect1[1], 0, 32);
  v36 = 0u;
  v37 = 0u;
  allKeys = [boundsCopy allKeys];
  v16 = [allKeys countByEnumeratingWithState:&rect1[1] objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *rect1[3];
    v19 = -v14;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*rect1[3] != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        v21 = *(rect1[2] + 8 * i);
        v22 = [(SBFloorDodgingLayerModifier *)self preferenceForIdentifier:v21];
        canBePositionedOutsideContainerBounds = [v22 canBePositionedOutsideContainerBounds];

        if ((canBePositionedOutsideContainerBounds & 1) == 0)
        {
          v24 = [boundsCopy objectForKey:v21];
          [v24 CGRectValue];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v41.origin.x = v26;
          v41.origin.y = v28;
          v41.size.width = v30;
          v41.size.height = v32;
          v43 = CGRectInset(v41, v19, v19);
          *&v42.origin.x = rect1[0];
          v42.origin.y = v8;
          v42.size.width = v10;
          v42.size.height = v12;
          if (!CGRectContainsRect(v42, v43))
          {
            v33 = v21;
            goto LABEL_12;
          }
        }
      }

      v17 = [allKeys countByEnumeratingWithState:&rect1[1] objects:v38 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v33 = 0;
LABEL_12:

  return v33;
}

- (id)_identifierIfAnyIllegallyClippingOtherIdentifiers:(id)identifiers model:(id)model intersectionSize:(CGSize *)size intersectingFrame:(CGRect *)frame
{
  v71 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  modelCopy = model;
  [(SBFloorDodgingLayerModifier *)self spaceBetweenIdentifiers];
  v13 = v12;
  identifiers = [modelCopy identifiers];
  v15 = malloc_type_malloc(32 * [identifiers count], 0x1000040E0EAB150uLL);

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = [modelCopy identifiers];
  v57 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v57)
  {
    sizeCopy = size;
    frameCopy = frame;
    v16 = 0;
    v56 = *v67;
    v60 = *(MEMORY[0x277CBF398] + 8);
    v61 = *MEMORY[0x277CBF398];
    v58 = *(MEMORY[0x277CBF398] + 24);
    v59 = *(MEMORY[0x277CBF398] + 16);
    dx = v13 * -0.5;
    v51 = (v15 + 16);
    v52 = v15;
    v53 = identifiersCopy;
    while (2)
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v67 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v66 + 1) + 8 * i);
        allKeys = [identifiersCopy allKeys];
        v20 = [allKeys containsObject:v18];

        if (v20)
        {
          v21 = [identifiersCopy objectForKey:v18];
          [v21 CGRectValue];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v73.origin.x = v23;
          v73.origin.y = v25;
          v73.size.width = v27;
          v73.size.height = v29;
          v74 = CGRectInset(v73, dx, dx);
          y = v74.origin.y;
          x = v74.origin.x;
          height = v74.size.height;
          width = v74.size.width;
          v30 = v60;
          v31 = v61;
          v32 = v61;
          v33 = v60;
          v34 = v58;
          v35 = v59;
          v36 = v59;
          v37 = v58;
          if (v16)
          {
            v38 = 0;
            v39 = v51;
            v37 = v58;
            v36 = v59;
            v33 = v60;
            v32 = v61;
            while (1)
            {
              v31 = *(v39 - 2);
              v30 = *(v39 - 1);
              v35 = *v39;
              v34 = v39[1];
              identifiers2 = [modelCopy identifiers];
              v41 = [identifiers2 objectAtIndex:v38];

              v42 = [(SBFloorDodgingLayerModifier *)self preferenceForIdentifier:v18];
              excludedDodgingIdentifiers = [v42 excludedDodgingIdentifiers];

              if (([excludedDodgingIdentifiers containsObject:v41] & 1) == 0)
              {
                v75.origin.y = y;
                v75.origin.x = x;
                v75.size.height = height;
                v75.size.width = width;
                v79.origin.x = v31;
                v79.origin.y = v30;
                v79.size.width = v35;
                v79.size.height = v34;
                v76 = CGRectIntersection(v75, v79);
                v32 = v76.origin.x;
                v33 = v76.origin.y;
                v36 = v76.size.width;
                v37 = v76.size.height;
                if ((BSFloatLessThanFloat() & 1) != 0 || BSFloatLessThanFloat())
                {
                  v33 = v60;
                  v32 = v61;
                  v37 = v58;
                  v36 = v59;
                }

                v77.origin.x = v32;
                v77.origin.y = v33;
                v77.size.width = v36;
                v77.size.height = v37;
                if (!CGRectIsNull(v77))
                {
                  break;
                }
              }

              ++v38;
              v39 += 4;
              if (v16 == v38)
              {
                v34 = v58;
                v35 = v59;
                v30 = v60;
                v31 = v61;
                goto LABEL_17;
              }
            }

LABEL_17:
            v15 = v52;
            identifiersCopy = v53;
          }

          v78.origin.x = v32;
          v78.origin.y = v33;
          v78.size.width = v36;
          v78.size.height = v37;
          if (!CGRectIsNull(v78))
          {
            v45 = v18;
            if (sizeCopy)
            {
              v46 = v36;
              v47 = v37;
              sizeCopy->width = ceilf(v46);
              sizeCopy->height = ceilf(v47);
            }

            if (frameCopy)
            {
              frameCopy->origin.x = v31;
              frameCopy->origin.y = v30;
              frameCopy->size.width = v35;
              frameCopy->size.height = v34;
            }

            goto LABEL_27;
          }

          v44 = &v15[32 * v16];
          *v44 = x;
          v44[1] = y;
          ++v16;
          v44[2] = width;
          v44[3] = height;
        }
      }

      v57 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
      if (v57)
      {
        continue;
      }

      break;
    }
  }

  v45 = 0;
LABEL_27:

  free(v15);

  return v45;
}

@end