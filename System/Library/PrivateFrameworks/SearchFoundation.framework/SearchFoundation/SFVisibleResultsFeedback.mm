@interface SFVisibleResultsFeedback
- (SFVisibleResultsFeedback)initWithCoder:(id)a3;
- (SFVisibleResultsFeedback)initWithResults:(id)a3 triggerEvent:(unint64_t)a4;
- (SFVisibleResultsFeedback)initWithResults:(id)a3 triggerEvent:(unint64_t)a4 visibleButtons:(id)a5 visibleCardSections:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFVisibleResultsFeedback

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = SFVisibleResultsFeedback;
  v4 = [(SFFeedback *)&v14 description];
  v5 = [(SFVisibleResultsFeedback *)self results];
  v6 = [v5 valueForKey:@"title"];
  v7 = [v6 valueForKey:@"text"];
  v8 = [(SFVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
  v9 = [(SFVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
  if ([(SFVisibleResultsFeedback *)self isFilterBarShown])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [(SFVisibleResultsFeedback *)self inputToResultShownMs];
  v12 = [v3 stringWithFormat:@"%@ - result: %@ - buttons: %@ - card sections: %@ - isFilterBarShown: %@ - inputToResultShownMs: %@", v4, v7, v8, v9, v10, v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFVisibleResultsFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_results forKey:{@"results", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_triggerEvent forKey:@"trigger_event"];
  [v4 encodeObject:self->_uniqueIdsOfVisibleButtons forKey:@"unique_ids_of_visible_buttons"];
  [v4 encodeObject:self->_uniqueIdentifiersOfVisibleCardSections forKey:@"unique_identifiers_of_visible_card_sections"];
  [v4 encodeBool:self->_isFilterBarShown forKey:@"_isFilterBarShown"];
  [v4 encodeObject:self->_inputToResultShownMs forKey:@"_inputToResultShownMs"];
}

- (SFVisibleResultsFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SFVisibleResultsFeedback;
  v5 = [(SFFeedback *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"results"];
    results = v5->_results;
    v5->_results = v9;

    v5->_triggerEvent = [v4 decodeIntegerForKey:@"trigger_event"];
    v11 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"unique_ids_of_visible_buttons"];
    uniqueIdsOfVisibleButtons = v5->_uniqueIdsOfVisibleButtons;
    v5->_uniqueIdsOfVisibleButtons = v11;

    v13 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"unique_identifiers_of_visible_card_sections"];
    uniqueIdentifiersOfVisibleCardSections = v5->_uniqueIdentifiersOfVisibleCardSections;
    v5->_uniqueIdentifiersOfVisibleCardSections = v13;

    v5->_isFilterBarShown = [v4 decodeBoolForKey:@"_isFilterBarShown"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_inputToResultShownMs"];
    inputToResultShownMs = v5->_inputToResultShownMs;
    v5->_inputToResultShownMs = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20.receiver = self;
  v20.super_class = SFVisibleResultsFeedback;
  v4 = [(SFFeedback *)&v20 copyWithZone:a3];
  v5 = [(SFVisibleResultsFeedback *)self results];
  v6 = [v5 copy];
  v7 = v4[4];
  v4[4] = v6;

  v4[5] = [(SFVisibleResultsFeedback *)self triggerEvent];
  v8 = [(SFVisibleResultsFeedback *)self goTakeoverResult];
  v9 = [v8 copy];
  v10 = v4[6];
  v4[6] = v9;

  v11 = [(SFVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
  v12 = [v11 copy];
  v13 = v4[8];
  v4[8] = v12;

  v14 = [(SFVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
  v15 = [v14 copy];
  v16 = v4[7];
  v4[7] = v15;

  *(v4 + 24) = [(SFVisibleResultsFeedback *)self isFilterBarShown];
  v17 = [(SFVisibleResultsFeedback *)self inputToResultShownMs];
  v18 = v4[9];
  v4[9] = v17;

  return v4;
}

- (SFVisibleResultsFeedback)initWithResults:(id)a3 triggerEvent:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SFVisibleResultsFeedback;
  v7 = [(SFFeedback *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    results = v7->_results;
    v7->_results = v8;

    v7->_triggerEvent = a4;
  }

  return v7;
}

- (SFVisibleResultsFeedback)initWithResults:(id)a3 triggerEvent:(unint64_t)a4 visibleButtons:(id)a5 visibleCardSections:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = [(SFVisibleResultsFeedback *)self initWithResults:a3 triggerEvent:a4];
  if (v12)
  {
    if ([v10 count])
    {
      v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v34 = v10;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v40;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v39 + 1) + 8 * i);
            if ([v19 uniqueId])
            {
              v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v19, "uniqueId")}];
              [v13 addObject:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v16);
      }

      v21 = [v13 copy];
      [(SFVisibleResultsFeedback *)v12 setUniqueIdsOfVisibleButtons:v21];

      v10 = v34;
    }

    if ([v11 count])
    {
      v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = v11;
      v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v36;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v36 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v35 + 1) + 8 * j);
            v29 = [v28 cardSectionId];

            if (v29)
            {
              v30 = [v28 cardSectionId];
              [v22 addObject:v30];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v25);
      }

      v31 = [v22 copy];
      [(SFVisibleResultsFeedback *)v12 setUniqueIdentifiersOfVisibleCardSections:v31];
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v12;
}

@end