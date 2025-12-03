@interface SFShareSheetSessionModeTestingSnapshot
- (BOOL)canTestFinalItemsForActivityType:(id)type;
- (BOOL)hasSameDiscoveredActivities:(id)activities;
- (BOOL)hasSameFinalItems:(id)items forActivityType:(id)type;
- (BOOL)hasSamePlaceholderItems:(id)items;
- (BOOL)isEqual:(id)equal;
- (SFShareSheetSessionModeTestingSnapshot)initWithCoder:(id)coder;
- (SFShareSheetSessionModeTestingSnapshot)initWithJSONInfo:(id)info;
- (SFShareSheetSessionModeTestingSnapshot)initWithPlaceholderItems:(id)items;
- (id)_removeShortcutsFromDiscoveredActivities:(id)activities;
- (id)jsonInfo;
- (void)encodeWithCoder:(id)coder;
- (void)updateFromSnapshot:(id)snapshot;
- (void)updateWithDiscoveredShareActivities:(id)activities visibleShareActivities:(id)shareActivities actionActivities:(id)actionActivities visibleActionActivities:(id)visibleActionActivities;
- (void)updateWithFinalItems:(id)items forActivityType:(id)type;
- (void)updateWithPeopleSuggestionActivityTypes:(id)types;
@end

@implementation SFShareSheetSessionModeTestingSnapshot

- (SFShareSheetSessionModeTestingSnapshot)initWithPlaceholderItems:(id)items
{
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = SFShareSheetSessionModeTestingSnapshot;
  v5 = [(SFShareSheetSessionModeTestingSnapshot *)&v10 init];
  if (v5)
  {
    v6 = [SFShareSheetSessionTestingSnapshot _jsonifyItems:itemsCopy];
    placeholderItemDescriptions = v5->_placeholderItemDescriptions;
    v5->_placeholderItemDescriptions = v6;

    v8 = v5;
  }

  return v5;
}

- (void)updateWithPeopleSuggestionActivityTypes:(id)types
{
  v4 = [types copy];
  [(SFShareSheetSessionModeTestingSnapshot *)self setPeopleSuggestionActivityTypes:v4];
}

- (void)updateWithDiscoveredShareActivities:(id)activities visibleShareActivities:(id)shareActivities actionActivities:(id)actionActivities visibleActionActivities:(id)visibleActionActivities
{
  visibleActionActivitiesCopy = visibleActionActivities;
  actionActivitiesCopy = actionActivities;
  shareActivitiesCopy = shareActivities;
  activitiesCopy = activities;
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __142__SFShareSheetSessionModeTestingSnapshot_updateWithDiscoveredShareActivities_visibleShareActivities_actionActivities_visibleActionActivities___block_invoke;
  v32[3] = &unk_1E788C828;
  v33 = v14;
  v18 = v14;
  [activitiesCopy enumerateObjectsUsingBlock:v32];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __142__SFShareSheetSessionModeTestingSnapshot_updateWithDiscoveredShareActivities_visibleShareActivities_actionActivities_visibleActionActivities___block_invoke_2;
  v30[3] = &unk_1E788C828;
  v31 = v15;
  v19 = v15;
  [shareActivitiesCopy enumerateObjectsUsingBlock:v30];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __142__SFShareSheetSessionModeTestingSnapshot_updateWithDiscoveredShareActivities_visibleShareActivities_actionActivities_visibleActionActivities___block_invoke_3;
  v28[3] = &unk_1E788C828;
  v29 = v16;
  v20 = v16;
  [actionActivitiesCopy enumerateObjectsUsingBlock:v28];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __142__SFShareSheetSessionModeTestingSnapshot_updateWithDiscoveredShareActivities_visibleShareActivities_actionActivities_visibleActionActivities___block_invoke_4;
  v26[3] = &unk_1E788C828;
  v27 = v17;
  v21 = v17;
  [visibleActionActivitiesCopy enumerateObjectsUsingBlock:v26];

  v22 = [v18 copy];
  [(SFShareSheetSessionModeTestingSnapshot *)self setShareActivities:v22];

  v23 = [v19 copy];
  [(SFShareSheetSessionModeTestingSnapshot *)self setVisibleShareActivities:v23];

  v24 = [v20 copy];
  [(SFShareSheetSessionModeTestingSnapshot *)self setActionActivities:v24];

  v25 = [v21 copy];
  [(SFShareSheetSessionModeTestingSnapshot *)self setVisibleActionActivities:v25];
}

void __142__SFShareSheetSessionModeTestingSnapshot_updateWithDiscoveredShareActivities_visibleShareActivities_actionActivities_visibleActionActivities___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 activityType];
  [v2 addObject:v3];
}

void __142__SFShareSheetSessionModeTestingSnapshot_updateWithDiscoveredShareActivities_visibleShareActivities_actionActivities_visibleActionActivities___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 activityType];
  [v2 addObject:v3];
}

void __142__SFShareSheetSessionModeTestingSnapshot_updateWithDiscoveredShareActivities_visibleShareActivities_actionActivities_visibleActionActivities___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 activityType];
  [v2 addObject:v3];
}

void __142__SFShareSheetSessionModeTestingSnapshot_updateWithDiscoveredShareActivities_visibleShareActivities_actionActivities_visibleActionActivities___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 activityType];
  [v2 addObject:v3];
}

- (void)updateWithFinalItems:(id)items forActivityType:(id)type
{
  typeCopy = type;
  v11 = [SFShareSheetSessionTestingSnapshot _jsonifyItems:items];
  finalItemsByActivity = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];

  if (finalItemsByActivity)
  {
    finalItemsByActivity2 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
    v9 = [finalItemsByActivity2 mutableCopy];
  }

  else
  {
    v9 = objc_opt_new();
  }

  [v9 setObject:v11 forKey:typeCopy];

  v10 = [v9 copy];
  [(SFShareSheetSessionModeTestingSnapshot *)self setFinalItemsByActivity:v10];
}

- (void)updateFromSnapshot:(id)snapshot
{
  v44 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  placeholderItemDescriptions = [(SFShareSheetSessionModeTestingSnapshot *)self placeholderItemDescriptions];

  if (!placeholderItemDescriptions)
  {
    placeholderItemDescriptions2 = [snapshotCopy placeholderItemDescriptions];
    [(SFShareSheetSessionModeTestingSnapshot *)self setPlaceholderItemDescriptions:placeholderItemDescriptions2];
  }

  peopleSuggestionActivityTypes = [(SFShareSheetSessionModeTestingSnapshot *)self peopleSuggestionActivityTypes];

  if (!peopleSuggestionActivityTypes)
  {
    peopleSuggestionActivityTypes2 = [snapshotCopy peopleSuggestionActivityTypes];
    [(SFShareSheetSessionModeTestingSnapshot *)self setPeopleSuggestionActivityTypes:peopleSuggestionActivityTypes2];
  }

  shareActivities = [(SFShareSheetSessionModeTestingSnapshot *)self shareActivities];

  if (!shareActivities)
  {
    shareActivities2 = [snapshotCopy shareActivities];
    [(SFShareSheetSessionModeTestingSnapshot *)self setShareActivities:shareActivities2];
  }

  visibleShareActivities = [(SFShareSheetSessionModeTestingSnapshot *)self visibleShareActivities];

  if (!visibleShareActivities)
  {
    visibleShareActivities2 = [snapshotCopy visibleShareActivities];
    [(SFShareSheetSessionModeTestingSnapshot *)self setVisibleShareActivities:visibleShareActivities2];
  }

  actionActivities = [(SFShareSheetSessionModeTestingSnapshot *)self actionActivities];

  if (!actionActivities)
  {
    actionActivities2 = [snapshotCopy actionActivities];
    [(SFShareSheetSessionModeTestingSnapshot *)self setActionActivities:actionActivities2];
  }

  visibleActionActivities = [(SFShareSheetSessionModeTestingSnapshot *)self visibleActionActivities];

  if (!visibleActionActivities)
  {
    visibleActionActivities2 = [snapshotCopy visibleActionActivities];
    [(SFShareSheetSessionModeTestingSnapshot *)self setVisibleActionActivities:visibleActionActivities2];
  }

  finalItemsByActivity = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];

  finalItemsByActivity2 = [snapshotCopy finalItemsByActivity];
  v19 = finalItemsByActivity2;
  if (!finalItemsByActivity)
  {
    [(SFShareSheetSessionModeTestingSnapshot *)self setFinalItemsByActivity:finalItemsByActivity2];
LABEL_33:

    goto LABEL_34;
  }

  if (finalItemsByActivity2)
  {
    finalItemsByActivity3 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
    finalItemsByActivity4 = [snapshotCopy finalItemsByActivity];
    v22 = finalItemsByActivity3;
    v23 = finalItemsByActivity4;
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      if ((v22 != 0) == (v23 == 0))
      {
      }

      else
      {
        v25 = [v22 isEqual:v23];

        if (v25)
        {
          goto LABEL_34;
        }
      }

      finalItemsByActivity5 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
      v19 = [finalItemsByActivity5 mutableCopy];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      finalItemsByActivity6 = [snapshotCopy finalItemsByActivity];
      allKeys = [finalItemsByActivity6 allKeys];

      v29 = [allKeys countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v40;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v40 != v31)
            {
              objc_enumerationMutation(allKeys);
            }

            v33 = *(*(&v39 + 1) + 8 * i);
            finalItemsByActivity7 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
            v35 = [finalItemsByActivity7 objectForKeyedSubscript:v33];

            if (!v35)
            {
              finalItemsByActivity8 = [snapshotCopy finalItemsByActivity];
              v37 = [finalItemsByActivity8 objectForKeyedSubscript:v33];
              [v19 setObject:v37 forKey:v33];
            }
          }

          v30 = [allKeys countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v30);
      }

      v22 = [v19 copy];
      [(SFShareSheetSessionModeTestingSnapshot *)self setFinalItemsByActivity:v22];
    }

    goto LABEL_33;
  }

LABEL_34:

  v38 = *MEMORY[0x1E69E9840];
}

- (SFShareSheetSessionModeTestingSnapshot)initWithJSONInfo:(id)info
{
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = SFShareSheetSessionModeTestingSnapshot;
  v5 = [(SFShareSheetSessionModeTestingSnapshot *)&v22 init];
  if (v5)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"placeholderItemDescriptions"];
    placeholderItemDescriptions = v5->_placeholderItemDescriptions;
    v5->_placeholderItemDescriptions = v6;

    v8 = [infoCopy objectForKeyedSubscript:@"peopleSuggestionActivityTypes"];
    peopleSuggestionActivityTypes = v5->_peopleSuggestionActivityTypes;
    v5->_peopleSuggestionActivityTypes = v8;

    v10 = [infoCopy objectForKeyedSubscript:@"shareActivities"];
    shareActivities = v5->_shareActivities;
    v5->_shareActivities = v10;

    v12 = [infoCopy objectForKeyedSubscript:@"visibleShareActivities"];
    visibleShareActivities = v5->_visibleShareActivities;
    v5->_visibleShareActivities = v12;

    v14 = [infoCopy objectForKeyedSubscript:@"actionActivities"];
    actionActivities = v5->_actionActivities;
    v5->_actionActivities = v14;

    v16 = [infoCopy objectForKeyedSubscript:@"visibleActionActivities"];
    visibleActionActivities = v5->_visibleActionActivities;
    v5->_visibleActionActivities = v16;

    v18 = [infoCopy objectForKeyedSubscript:@"finalItemsByActivity"];
    finalItemsByActivity = v5->_finalItemsByActivity;
    v5->_finalItemsByActivity = v18;

    v20 = v5;
  }

  return v5;
}

- (id)jsonInfo
{
  v3 = objc_opt_new();
  placeholderItemDescriptions = [(SFShareSheetSessionModeTestingSnapshot *)self placeholderItemDescriptions];
  [v3 setObject:placeholderItemDescriptions forKeyedSubscript:@"placeholderItemDescriptions"];

  peopleSuggestionActivityTypes = [(SFShareSheetSessionModeTestingSnapshot *)self peopleSuggestionActivityTypes];
  [v3 setObject:peopleSuggestionActivityTypes forKeyedSubscript:@"peopleSuggestionActivityTypes"];

  shareActivities = [(SFShareSheetSessionModeTestingSnapshot *)self shareActivities];
  [v3 setObject:shareActivities forKeyedSubscript:@"shareActivities"];

  visibleShareActivities = [(SFShareSheetSessionModeTestingSnapshot *)self visibleShareActivities];
  [v3 setObject:visibleShareActivities forKeyedSubscript:@"visibleShareActivities"];

  actionActivities = [(SFShareSheetSessionModeTestingSnapshot *)self actionActivities];
  [v3 setObject:actionActivities forKeyedSubscript:@"actionActivities"];

  visibleActionActivities = [(SFShareSheetSessionModeTestingSnapshot *)self visibleActionActivities];
  [v3 setObject:visibleActionActivities forKeyedSubscript:@"visibleActionActivities"];

  finalItemsByActivity = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
  [v3 setObject:finalItemsByActivity forKeyedSubscript:@"finalItemsByActivity"];

  return v3;
}

- (SFShareSheetSessionModeTestingSnapshot)initWithCoder:(id)coder
{
  v51[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v44.receiver = self;
  v44.super_class = SFShareSheetSessionModeTestingSnapshot;
  v5 = [(SFShareSheetSessionModeTestingSnapshot *)&v44 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v51[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"placeholderItemDescriptions"];
    placeholderItemDescriptions = v5->_placeholderItemDescriptions;
    v5->_placeholderItemDescriptions = v9;

    v11 = MEMORY[0x1E695DFD8];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"peopleSuggestionActivityTypes"];
    peopleSuggestionActivityTypes = v5->_peopleSuggestionActivityTypes;
    v5->_peopleSuggestionActivityTypes = v14;

    v16 = MEMORY[0x1E695DFD8];
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"shareActivities"];
    shareActivities = v5->_shareActivities;
    v5->_shareActivities = v19;

    v21 = MEMORY[0x1E695DFD8];
    v48[0] = objc_opt_class();
    v48[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"visibleShareActivities"];
    visibleShareActivities = v5->_visibleShareActivities;
    v5->_visibleShareActivities = v24;

    v26 = MEMORY[0x1E695DFD8];
    v47[0] = objc_opt_class();
    v47[1] = objc_opt_class();
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v28 = [v26 setWithArray:v27];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"actionActivities"];
    actionActivities = v5->_actionActivities;
    v5->_actionActivities = v29;

    v31 = MEMORY[0x1E695DFD8];
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v33 = [v31 setWithArray:v32];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"visibleActionActivities"];
    visibleActionActivities = v5->_visibleActionActivities;
    v5->_visibleActionActivities = v34;

    v36 = MEMORY[0x1E695DFD8];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v45[2] = objc_opt_class();
    v45[3] = objc_opt_class();
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
    v38 = [v36 setWithArray:v37];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"finalItemsByActivity"];
    finalItemsByActivity = v5->_finalItemsByActivity;
    v5->_finalItemsByActivity = v39;

    v41 = v5;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  placeholderItemDescriptions = self->_placeholderItemDescriptions;
  coderCopy = coder;
  [coderCopy encodeObject:placeholderItemDescriptions forKey:@"placeholderItemDescriptions"];
  [coderCopy encodeObject:self->_peopleSuggestionActivityTypes forKey:@"peopleSuggestionActivityTypes"];
  [coderCopy encodeObject:self->_shareActivities forKey:@"shareActivities"];
  [coderCopy encodeObject:self->_visibleShareActivities forKey:@"visibleShareActivities"];
  [coderCopy encodeObject:self->_actionActivities forKey:@"actionActivities"];
  [coderCopy encodeObject:self->_visibleActionActivities forKey:@"visibleActionActivities"];
  [coderCopy encodeObject:self->_finalItemsByActivity forKey:@"finalItemsByActivity"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      placeholderItemDescriptions = [(SFShareSheetSessionModeTestingSnapshot *)v5 placeholderItemDescriptions];
      placeholderItemDescriptions2 = [(SFShareSheetSessionModeTestingSnapshot *)self placeholderItemDescriptions];
      v8 = placeholderItemDescriptions;
      v9 = placeholderItemDescriptions2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
          v17 = v9;
          v15 = v8;
          goto LABEL_55;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          v12 = 0;
LABEL_56:

          goto LABEL_57;
        }
      }

      peopleSuggestionActivityTypes = [(SFShareSheetSessionModeTestingSnapshot *)v5 peopleSuggestionActivityTypes];
      peopleSuggestionActivityTypes2 = [(SFShareSheetSessionModeTestingSnapshot *)self peopleSuggestionActivityTypes];
      v15 = peopleSuggestionActivityTypes;
      v16 = peopleSuggestionActivityTypes2;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {
          v12 = 0;
          v23 = v16;
          v21 = v15;
          goto LABEL_54;
        }

        v18 = [v15 isEqual:v16];

        if (!v18)
        {
          v12 = 0;
LABEL_55:

          goto LABEL_56;
        }
      }

      shareActivities = [(SFShareSheetSessionModeTestingSnapshot *)v5 shareActivities];
      shareActivities2 = [(SFShareSheetSessionModeTestingSnapshot *)self shareActivities];
      v21 = shareActivities;
      v22 = shareActivities2;
      v23 = v22;
      if (v21 == v22)
      {
      }

      else
      {
        if ((v21 != 0) == (v22 == 0))
        {
          v12 = 0;
          v64 = v22;
          v32 = v22;
          v27 = v21;
LABEL_53:

          v23 = v64;
          goto LABEL_54;
        }

        v24 = [v21 isEqual:v22];

        if (!v24)
        {
          v12 = 0;
LABEL_54:

          goto LABEL_55;
        }
      }

      v63 = v21;
      v64 = v23;
      visibleShareActivities = [(SFShareSheetSessionModeTestingSnapshot *)v5 visibleShareActivities];
      visibleShareActivities2 = [(SFShareSheetSessionModeTestingSnapshot *)self visibleShareActivities];
      v27 = visibleShareActivities;
      v28 = visibleShareActivities2;
      v29 = v28;
      v62 = v28;
      if (v27 == v28)
      {
      }

      else
      {
        if ((v27 != 0) == (v28 == 0))
        {
          v12 = 0;
          v41 = v27;
          v21 = v63;
LABEL_51:

          goto LABEL_52;
        }

        v30 = v28;
        v31 = [v27 isEqual:v28];

        if (!v31)
        {
          v12 = 0;
          v21 = v63;
LABEL_52:
          v32 = v62;
          goto LABEL_53;
        }
      }

      v59 = v27;
      actionActivities = [(SFShareSheetSessionModeTestingSnapshot *)v5 actionActivities];
      actionActivities2 = [(SFShareSheetSessionModeTestingSnapshot *)self actionActivities];
      v35 = actionActivities;
      v36 = actionActivities2;
      v37 = v36;
      v57 = v36;
      v58 = v35;
      if (v35 == v36)
      {
      }

      else
      {
        if ((v35 != 0) == (v36 == 0))
        {
          v12 = 0;
          v61 = v35;
          v21 = v63;
LABEL_49:

          goto LABEL_50;
        }

        v38 = v36;
        v39 = v35;
        v40 = [v35 isEqual:v36];

        if (!v40)
        {
          v12 = 0;
          v21 = v63;
          v27 = v59;
LABEL_50:
          v29 = v57;
          v41 = v58;
          goto LABEL_51;
        }
      }

      visibleActionActivities = [(SFShareSheetSessionModeTestingSnapshot *)v5 visibleActionActivities];
      visibleActionActivities2 = [(SFShareSheetSessionModeTestingSnapshot *)self visibleActionActivities];
      v44 = visibleActionActivities;
      v45 = visibleActionActivities2;
      v46 = v45;
      v61 = v44;
      v56 = v45;
      if (v44 == v45)
      {

        v27 = v59;
      }

      else
      {
        if ((v44 != 0) == (v45 == 0))
        {
          v12 = 0;
          v27 = v59;
          v53 = v44;
          v21 = v63;
LABEL_47:

          goto LABEL_48;
        }

        v47 = v45;
        v48 = [v44 isEqual:v45];

        v27 = v59;
        if (!v48)
        {
          v12 = 0;
          v21 = v63;
LABEL_48:
          v37 = v56;
          goto LABEL_49;
        }
      }

      finalItemsByActivity = [(SFShareSheetSessionModeTestingSnapshot *)v5 finalItemsByActivity];
      finalItemsByActivity2 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
      v51 = finalItemsByActivity;
      v52 = finalItemsByActivity2;
      v60 = v52;
      v55 = v51;
      if (v51 == v52)
      {
        v12 = 1;
      }

      else if ((v51 != 0) == (v52 == 0))
      {
        v12 = 0;
      }

      else
      {
        v12 = [v51 isEqual:v52];
      }

      v21 = v63;

      v53 = v55;
      v46 = v60;
      goto LABEL_47;
    }

    v12 = 0;
  }

LABEL_57:

  return v12;
}

- (BOOL)hasSamePlaceholderItems:(id)items
{
  placeholderItemDescriptions = [items placeholderItemDescriptions];
  placeholderItemDescriptions2 = [(SFShareSheetSessionModeTestingSnapshot *)self placeholderItemDescriptions];
  v6 = placeholderItemDescriptions;
  v7 = placeholderItemDescriptions2;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else if ((v6 != 0) == (v7 == 0))
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 isEqual:v7];
  }

  return v9;
}

- (BOOL)hasSameDiscoveredActivities:(id)activities
{
  activitiesCopy = activities;
  shareActivities = [activitiesCopy shareActivities];
  v6 = [(SFShareSheetSessionModeTestingSnapshot *)self _removeShortcutsFromDiscoveredActivities:shareActivities];
  shareActivities2 = [(SFShareSheetSessionModeTestingSnapshot *)self shareActivities];
  v8 = [(SFShareSheetSessionModeTestingSnapshot *)self _removeShortcutsFromDiscoveredActivities:shareActivities2];
  if ([v6 isEqualToSet:v8])
  {
    actionActivities = [activitiesCopy actionActivities];
    v10 = [(SFShareSheetSessionModeTestingSnapshot *)self _removeShortcutsFromDiscoveredActivities:actionActivities];
    actionActivities2 = [(SFShareSheetSessionModeTestingSnapshot *)self actionActivities];
    v12 = [(SFShareSheetSessionModeTestingSnapshot *)self _removeShortcutsFromDiscoveredActivities:actionActivities2];
    v13 = [v10 isEqualToSet:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)hasSameFinalItems:(id)items forActivityType:(id)type
{
  typeCopy = type;
  finalItemsByActivity = [items finalItemsByActivity];
  v8 = [finalItemsByActivity objectForKey:typeCopy];

  finalItemsByActivity2 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
  v10 = [finalItemsByActivity2 objectForKey:typeCopy];

  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
    v14 = 1;
  }

  else if ((v11 != 0) == (v12 == 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = [v11 isEqual:v12];
  }

  return v14;
}

- (BOOL)canTestFinalItemsForActivityType:(id)type
{
  typeCopy = type;
  shareActivities = [(SFShareSheetSessionModeTestingSnapshot *)self shareActivities];
  if ([shareActivities containsObject:typeCopy])
  {
    v6 = 1;
  }

  else
  {
    actionActivities = [(SFShareSheetSessionModeTestingSnapshot *)self actionActivities];
    v6 = [actionActivities containsObject:typeCopy];
  }

  return v6;
}

- (id)_removeShortcutsFromDiscoveredActivities:(id)activities
{
  v3 = MEMORY[0x1E696AE18];
  activitiesCopy = activities;
  v5 = [v3 predicateWithFormat:@"NOT SELF BEGINSWITH 'com.apple.shortcuts.Run-Workflow'"];
  v6 = [activitiesCopy mutableCopy];

  [v6 filterUsingPredicate:v5];
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];

  return v7;
}

@end