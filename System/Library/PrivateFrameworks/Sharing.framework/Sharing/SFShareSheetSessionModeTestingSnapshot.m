@interface SFShareSheetSessionModeTestingSnapshot
- (BOOL)canTestFinalItemsForActivityType:(id)a3;
- (BOOL)hasSameDiscoveredActivities:(id)a3;
- (BOOL)hasSameFinalItems:(id)a3 forActivityType:(id)a4;
- (BOOL)hasSamePlaceholderItems:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SFShareSheetSessionModeTestingSnapshot)initWithCoder:(id)a3;
- (SFShareSheetSessionModeTestingSnapshot)initWithJSONInfo:(id)a3;
- (SFShareSheetSessionModeTestingSnapshot)initWithPlaceholderItems:(id)a3;
- (id)_removeShortcutsFromDiscoveredActivities:(id)a3;
- (id)jsonInfo;
- (void)encodeWithCoder:(id)a3;
- (void)updateFromSnapshot:(id)a3;
- (void)updateWithDiscoveredShareActivities:(id)a3 visibleShareActivities:(id)a4 actionActivities:(id)a5 visibleActionActivities:(id)a6;
- (void)updateWithFinalItems:(id)a3 forActivityType:(id)a4;
- (void)updateWithPeopleSuggestionActivityTypes:(id)a3;
@end

@implementation SFShareSheetSessionModeTestingSnapshot

- (SFShareSheetSessionModeTestingSnapshot)initWithPlaceholderItems:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFShareSheetSessionModeTestingSnapshot;
  v5 = [(SFShareSheetSessionModeTestingSnapshot *)&v10 init];
  if (v5)
  {
    v6 = [SFShareSheetSessionTestingSnapshot _jsonifyItems:v4];
    placeholderItemDescriptions = v5->_placeholderItemDescriptions;
    v5->_placeholderItemDescriptions = v6;

    v8 = v5;
  }

  return v5;
}

- (void)updateWithPeopleSuggestionActivityTypes:(id)a3
{
  v4 = [a3 copy];
  [(SFShareSheetSessionModeTestingSnapshot *)self setPeopleSuggestionActivityTypes:v4];
}

- (void)updateWithDiscoveredShareActivities:(id)a3 visibleShareActivities:(id)a4 actionActivities:(id)a5 visibleActionActivities:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
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
  [v13 enumerateObjectsUsingBlock:v32];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __142__SFShareSheetSessionModeTestingSnapshot_updateWithDiscoveredShareActivities_visibleShareActivities_actionActivities_visibleActionActivities___block_invoke_2;
  v30[3] = &unk_1E788C828;
  v31 = v15;
  v19 = v15;
  [v12 enumerateObjectsUsingBlock:v30];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __142__SFShareSheetSessionModeTestingSnapshot_updateWithDiscoveredShareActivities_visibleShareActivities_actionActivities_visibleActionActivities___block_invoke_3;
  v28[3] = &unk_1E788C828;
  v29 = v16;
  v20 = v16;
  [v11 enumerateObjectsUsingBlock:v28];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __142__SFShareSheetSessionModeTestingSnapshot_updateWithDiscoveredShareActivities_visibleShareActivities_actionActivities_visibleActionActivities___block_invoke_4;
  v26[3] = &unk_1E788C828;
  v27 = v17;
  v21 = v17;
  [v10 enumerateObjectsUsingBlock:v26];

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

- (void)updateWithFinalItems:(id)a3 forActivityType:(id)a4
{
  v6 = a4;
  v11 = [SFShareSheetSessionTestingSnapshot _jsonifyItems:a3];
  v7 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];

  if (v7)
  {
    v8 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = objc_opt_new();
  }

  [v9 setObject:v11 forKey:v6];

  v10 = [v9 copy];
  [(SFShareSheetSessionModeTestingSnapshot *)self setFinalItemsByActivity:v10];
}

- (void)updateFromSnapshot:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFShareSheetSessionModeTestingSnapshot *)self placeholderItemDescriptions];

  if (!v5)
  {
    v6 = [v4 placeholderItemDescriptions];
    [(SFShareSheetSessionModeTestingSnapshot *)self setPlaceholderItemDescriptions:v6];
  }

  v7 = [(SFShareSheetSessionModeTestingSnapshot *)self peopleSuggestionActivityTypes];

  if (!v7)
  {
    v8 = [v4 peopleSuggestionActivityTypes];
    [(SFShareSheetSessionModeTestingSnapshot *)self setPeopleSuggestionActivityTypes:v8];
  }

  v9 = [(SFShareSheetSessionModeTestingSnapshot *)self shareActivities];

  if (!v9)
  {
    v10 = [v4 shareActivities];
    [(SFShareSheetSessionModeTestingSnapshot *)self setShareActivities:v10];
  }

  v11 = [(SFShareSheetSessionModeTestingSnapshot *)self visibleShareActivities];

  if (!v11)
  {
    v12 = [v4 visibleShareActivities];
    [(SFShareSheetSessionModeTestingSnapshot *)self setVisibleShareActivities:v12];
  }

  v13 = [(SFShareSheetSessionModeTestingSnapshot *)self actionActivities];

  if (!v13)
  {
    v14 = [v4 actionActivities];
    [(SFShareSheetSessionModeTestingSnapshot *)self setActionActivities:v14];
  }

  v15 = [(SFShareSheetSessionModeTestingSnapshot *)self visibleActionActivities];

  if (!v15)
  {
    v16 = [v4 visibleActionActivities];
    [(SFShareSheetSessionModeTestingSnapshot *)self setVisibleActionActivities:v16];
  }

  v17 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];

  v18 = [v4 finalItemsByActivity];
  v19 = v18;
  if (!v17)
  {
    [(SFShareSheetSessionModeTestingSnapshot *)self setFinalItemsByActivity:v18];
LABEL_33:

    goto LABEL_34;
  }

  if (v18)
  {
    v20 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
    v21 = [v4 finalItemsByActivity];
    v22 = v20;
    v23 = v21;
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

      v26 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
      v19 = [v26 mutableCopy];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v27 = [v4 finalItemsByActivity];
      v28 = [v27 allKeys];

      v29 = [v28 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v39 + 1) + 8 * i);
            v34 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
            v35 = [v34 objectForKeyedSubscript:v33];

            if (!v35)
            {
              v36 = [v4 finalItemsByActivity];
              v37 = [v36 objectForKeyedSubscript:v33];
              [v19 setObject:v37 forKey:v33];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v39 objects:v43 count:16];
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

- (SFShareSheetSessionModeTestingSnapshot)initWithJSONInfo:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SFShareSheetSessionModeTestingSnapshot;
  v5 = [(SFShareSheetSessionModeTestingSnapshot *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"placeholderItemDescriptions"];
    placeholderItemDescriptions = v5->_placeholderItemDescriptions;
    v5->_placeholderItemDescriptions = v6;

    v8 = [v4 objectForKeyedSubscript:@"peopleSuggestionActivityTypes"];
    peopleSuggestionActivityTypes = v5->_peopleSuggestionActivityTypes;
    v5->_peopleSuggestionActivityTypes = v8;

    v10 = [v4 objectForKeyedSubscript:@"shareActivities"];
    shareActivities = v5->_shareActivities;
    v5->_shareActivities = v10;

    v12 = [v4 objectForKeyedSubscript:@"visibleShareActivities"];
    visibleShareActivities = v5->_visibleShareActivities;
    v5->_visibleShareActivities = v12;

    v14 = [v4 objectForKeyedSubscript:@"actionActivities"];
    actionActivities = v5->_actionActivities;
    v5->_actionActivities = v14;

    v16 = [v4 objectForKeyedSubscript:@"visibleActionActivities"];
    visibleActionActivities = v5->_visibleActionActivities;
    v5->_visibleActionActivities = v16;

    v18 = [v4 objectForKeyedSubscript:@"finalItemsByActivity"];
    finalItemsByActivity = v5->_finalItemsByActivity;
    v5->_finalItemsByActivity = v18;

    v20 = v5;
  }

  return v5;
}

- (id)jsonInfo
{
  v3 = objc_opt_new();
  v4 = [(SFShareSheetSessionModeTestingSnapshot *)self placeholderItemDescriptions];
  [v3 setObject:v4 forKeyedSubscript:@"placeholderItemDescriptions"];

  v5 = [(SFShareSheetSessionModeTestingSnapshot *)self peopleSuggestionActivityTypes];
  [v3 setObject:v5 forKeyedSubscript:@"peopleSuggestionActivityTypes"];

  v6 = [(SFShareSheetSessionModeTestingSnapshot *)self shareActivities];
  [v3 setObject:v6 forKeyedSubscript:@"shareActivities"];

  v7 = [(SFShareSheetSessionModeTestingSnapshot *)self visibleShareActivities];
  [v3 setObject:v7 forKeyedSubscript:@"visibleShareActivities"];

  v8 = [(SFShareSheetSessionModeTestingSnapshot *)self actionActivities];
  [v3 setObject:v8 forKeyedSubscript:@"actionActivities"];

  v9 = [(SFShareSheetSessionModeTestingSnapshot *)self visibleActionActivities];
  [v3 setObject:v9 forKeyedSubscript:@"visibleActionActivities"];

  v10 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
  [v3 setObject:v10 forKeyedSubscript:@"finalItemsByActivity"];

  return v3;
}

- (SFShareSheetSessionModeTestingSnapshot)initWithCoder:(id)a3
{
  v51[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"placeholderItemDescriptions"];
    placeholderItemDescriptions = v5->_placeholderItemDescriptions;
    v5->_placeholderItemDescriptions = v9;

    v11 = MEMORY[0x1E695DFD8];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"peopleSuggestionActivityTypes"];
    peopleSuggestionActivityTypes = v5->_peopleSuggestionActivityTypes;
    v5->_peopleSuggestionActivityTypes = v14;

    v16 = MEMORY[0x1E695DFD8];
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"shareActivities"];
    shareActivities = v5->_shareActivities;
    v5->_shareActivities = v19;

    v21 = MEMORY[0x1E695DFD8];
    v48[0] = objc_opt_class();
    v48[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"visibleShareActivities"];
    visibleShareActivities = v5->_visibleShareActivities;
    v5->_visibleShareActivities = v24;

    v26 = MEMORY[0x1E695DFD8];
    v47[0] = objc_opt_class();
    v47[1] = objc_opt_class();
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v28 = [v26 setWithArray:v27];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"actionActivities"];
    actionActivities = v5->_actionActivities;
    v5->_actionActivities = v29;

    v31 = MEMORY[0x1E695DFD8];
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v33 = [v31 setWithArray:v32];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"visibleActionActivities"];
    visibleActionActivities = v5->_visibleActionActivities;
    v5->_visibleActionActivities = v34;

    v36 = MEMORY[0x1E695DFD8];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v45[2] = objc_opt_class();
    v45[3] = objc_opt_class();
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
    v38 = [v36 setWithArray:v37];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"finalItemsByActivity"];
    finalItemsByActivity = v5->_finalItemsByActivity;
    v5->_finalItemsByActivity = v39;

    v41 = v5;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  placeholderItemDescriptions = self->_placeholderItemDescriptions;
  v5 = a3;
  [v5 encodeObject:placeholderItemDescriptions forKey:@"placeholderItemDescriptions"];
  [v5 encodeObject:self->_peopleSuggestionActivityTypes forKey:@"peopleSuggestionActivityTypes"];
  [v5 encodeObject:self->_shareActivities forKey:@"shareActivities"];
  [v5 encodeObject:self->_visibleShareActivities forKey:@"visibleShareActivities"];
  [v5 encodeObject:self->_actionActivities forKey:@"actionActivities"];
  [v5 encodeObject:self->_visibleActionActivities forKey:@"visibleActionActivities"];
  [v5 encodeObject:self->_finalItemsByActivity forKey:@"finalItemsByActivity"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFShareSheetSessionModeTestingSnapshot *)v5 placeholderItemDescriptions];
      v7 = [(SFShareSheetSessionModeTestingSnapshot *)self placeholderItemDescriptions];
      v8 = v6;
      v9 = v7;
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

      v13 = [(SFShareSheetSessionModeTestingSnapshot *)v5 peopleSuggestionActivityTypes];
      v14 = [(SFShareSheetSessionModeTestingSnapshot *)self peopleSuggestionActivityTypes];
      v15 = v13;
      v16 = v14;
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

      v19 = [(SFShareSheetSessionModeTestingSnapshot *)v5 shareActivities];
      v20 = [(SFShareSheetSessionModeTestingSnapshot *)self shareActivities];
      v21 = v19;
      v22 = v20;
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
      v25 = [(SFShareSheetSessionModeTestingSnapshot *)v5 visibleShareActivities];
      v26 = [(SFShareSheetSessionModeTestingSnapshot *)self visibleShareActivities];
      v27 = v25;
      v28 = v26;
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
      v33 = [(SFShareSheetSessionModeTestingSnapshot *)v5 actionActivities];
      v34 = [(SFShareSheetSessionModeTestingSnapshot *)self actionActivities];
      v35 = v33;
      v36 = v34;
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

      v42 = [(SFShareSheetSessionModeTestingSnapshot *)v5 visibleActionActivities];
      v43 = [(SFShareSheetSessionModeTestingSnapshot *)self visibleActionActivities];
      v44 = v42;
      v45 = v43;
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

      v49 = [(SFShareSheetSessionModeTestingSnapshot *)v5 finalItemsByActivity];
      v50 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
      v51 = v49;
      v52 = v50;
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

- (BOOL)hasSamePlaceholderItems:(id)a3
{
  v4 = [a3 placeholderItemDescriptions];
  v5 = [(SFShareSheetSessionModeTestingSnapshot *)self placeholderItemDescriptions];
  v6 = v4;
  v7 = v5;
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

- (BOOL)hasSameDiscoveredActivities:(id)a3
{
  v4 = a3;
  v5 = [v4 shareActivities];
  v6 = [(SFShareSheetSessionModeTestingSnapshot *)self _removeShortcutsFromDiscoveredActivities:v5];
  v7 = [(SFShareSheetSessionModeTestingSnapshot *)self shareActivities];
  v8 = [(SFShareSheetSessionModeTestingSnapshot *)self _removeShortcutsFromDiscoveredActivities:v7];
  if ([v6 isEqualToSet:v8])
  {
    v9 = [v4 actionActivities];
    v10 = [(SFShareSheetSessionModeTestingSnapshot *)self _removeShortcutsFromDiscoveredActivities:v9];
    v11 = [(SFShareSheetSessionModeTestingSnapshot *)self actionActivities];
    v12 = [(SFShareSheetSessionModeTestingSnapshot *)self _removeShortcutsFromDiscoveredActivities:v11];
    v13 = [v10 isEqualToSet:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)hasSameFinalItems:(id)a3 forActivityType:(id)a4
{
  v6 = a4;
  v7 = [a3 finalItemsByActivity];
  v8 = [v7 objectForKey:v6];

  v9 = [(SFShareSheetSessionModeTestingSnapshot *)self finalItemsByActivity];
  v10 = [v9 objectForKey:v6];

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

- (BOOL)canTestFinalItemsForActivityType:(id)a3
{
  v4 = a3;
  v5 = [(SFShareSheetSessionModeTestingSnapshot *)self shareActivities];
  if ([v5 containsObject:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SFShareSheetSessionModeTestingSnapshot *)self actionActivities];
    v6 = [v7 containsObject:v4];
  }

  return v6;
}

- (id)_removeShortcutsFromDiscoveredActivities:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"NOT SELF BEGINSWITH 'com.apple.shortcuts.Run-Workflow'"];
  v6 = [v4 mutableCopy];

  [v6 filterUsingPredicate:v5];
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];

  return v7;
}

@end