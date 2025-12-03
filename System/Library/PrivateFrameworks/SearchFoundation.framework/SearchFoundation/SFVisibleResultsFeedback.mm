@interface SFVisibleResultsFeedback
- (SFVisibleResultsFeedback)initWithCoder:(id)coder;
- (SFVisibleResultsFeedback)initWithResults:(id)results triggerEvent:(unint64_t)event;
- (SFVisibleResultsFeedback)initWithResults:(id)results triggerEvent:(unint64_t)event visibleButtons:(id)buttons visibleCardSections:(id)sections;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFVisibleResultsFeedback

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = SFVisibleResultsFeedback;
  v4 = [(SFFeedback *)&v14 description];
  results = [(SFVisibleResultsFeedback *)self results];
  v6 = [results valueForKey:@"title"];
  v7 = [v6 valueForKey:@"text"];
  uniqueIdsOfVisibleButtons = [(SFVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
  uniqueIdentifiersOfVisibleCardSections = [(SFVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
  if ([(SFVisibleResultsFeedback *)self isFilterBarShown])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  inputToResultShownMs = [(SFVisibleResultsFeedback *)self inputToResultShownMs];
  v12 = [v3 stringWithFormat:@"%@ - result: %@ - buttons: %@ - card sections: %@ - isFilterBarShown: %@ - inputToResultShownMs: %@", v4, v7, uniqueIdsOfVisibleButtons, uniqueIdentifiersOfVisibleCardSections, v10, inputToResultShownMs];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFVisibleResultsFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_results forKey:{@"results", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_triggerEvent forKey:@"trigger_event"];
  [coderCopy encodeObject:self->_uniqueIdsOfVisibleButtons forKey:@"unique_ids_of_visible_buttons"];
  [coderCopy encodeObject:self->_uniqueIdentifiersOfVisibleCardSections forKey:@"unique_identifiers_of_visible_card_sections"];
  [coderCopy encodeBool:self->_isFilterBarShown forKey:@"_isFilterBarShown"];
  [coderCopy encodeObject:self->_inputToResultShownMs forKey:@"_inputToResultShownMs"];
}

- (SFVisibleResultsFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SFVisibleResultsFeedback;
  v5 = [(SFFeedback *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"results"];
    results = v5->_results;
    v5->_results = v9;

    v5->_triggerEvent = [coderCopy decodeIntegerForKey:@"trigger_event"];
    v11 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"unique_ids_of_visible_buttons"];
    uniqueIdsOfVisibleButtons = v5->_uniqueIdsOfVisibleButtons;
    v5->_uniqueIdsOfVisibleButtons = v11;

    v13 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"unique_identifiers_of_visible_card_sections"];
    uniqueIdentifiersOfVisibleCardSections = v5->_uniqueIdentifiersOfVisibleCardSections;
    v5->_uniqueIdentifiersOfVisibleCardSections = v13;

    v5->_isFilterBarShown = [coderCopy decodeBoolForKey:@"_isFilterBarShown"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_inputToResultShownMs"];
    inputToResultShownMs = v5->_inputToResultShownMs;
    v5->_inputToResultShownMs = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = SFVisibleResultsFeedback;
  v4 = [(SFFeedback *)&v20 copyWithZone:zone];
  results = [(SFVisibleResultsFeedback *)self results];
  v6 = [results copy];
  v7 = v4[4];
  v4[4] = v6;

  v4[5] = [(SFVisibleResultsFeedback *)self triggerEvent];
  goTakeoverResult = [(SFVisibleResultsFeedback *)self goTakeoverResult];
  v9 = [goTakeoverResult copy];
  v10 = v4[6];
  v4[6] = v9;

  uniqueIdentifiersOfVisibleCardSections = [(SFVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
  v12 = [uniqueIdentifiersOfVisibleCardSections copy];
  v13 = v4[8];
  v4[8] = v12;

  uniqueIdsOfVisibleButtons = [(SFVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
  v15 = [uniqueIdsOfVisibleButtons copy];
  v16 = v4[7];
  v4[7] = v15;

  *(v4 + 24) = [(SFVisibleResultsFeedback *)self isFilterBarShown];
  inputToResultShownMs = [(SFVisibleResultsFeedback *)self inputToResultShownMs];
  v18 = v4[9];
  v4[9] = inputToResultShownMs;

  return v4;
}

- (SFVisibleResultsFeedback)initWithResults:(id)results triggerEvent:(unint64_t)event
{
  resultsCopy = results;
  v11.receiver = self;
  v11.super_class = SFVisibleResultsFeedback;
  v7 = [(SFFeedback *)&v11 init];
  if (v7)
  {
    v8 = [resultsCopy copy];
    results = v7->_results;
    v7->_results = v8;

    v7->_triggerEvent = event;
  }

  return v7;
}

- (SFVisibleResultsFeedback)initWithResults:(id)results triggerEvent:(unint64_t)event visibleButtons:(id)buttons visibleCardSections:(id)sections
{
  v45 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  sectionsCopy = sections;
  v12 = [(SFVisibleResultsFeedback *)self initWithResults:results triggerEvent:event];
  if (v12)
  {
    if ([buttonsCopy count])
    {
      v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(buttonsCopy, "count")}];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v34 = buttonsCopy;
      v14 = buttonsCopy;
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

      buttonsCopy = v34;
    }

    if ([sectionsCopy count])
    {
      v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(sectionsCopy, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = sectionsCopy;
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
            cardSectionId = [v28 cardSectionId];

            if (cardSectionId)
            {
              cardSectionId2 = [v28 cardSectionId];
              [v22 addObject:cardSectionId2];
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