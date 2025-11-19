@interface WBSBrowsingAssistantAvailabilityLabels
+ (id)possibleLabelsForContentOptions:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)representsSupersetOfContentOptions:(unint64_t)a3;
- (WBSBrowsingAssistantAvailabilityLabels)initWithContentOptions:(unint64_t)a3 template:(int64_t)a4;
- (WBSBrowsingAssistantAvailabilityLabels)initWithRepresentedOptions:(id)a3 groups:(id)a4;
- (id)debugDescription;
- (id)description;
- (id)possibleLabelsByIncorporatingContentOptions:(unint64_t)a3 intoLabelsAfterIndex:(unint64_t)a4;
- (id)textForOptionsAtIndex:(unint64_t)a3;
- (unint64_t)representedOptionsAtIndex:(unint64_t)a3;
@end

@implementation WBSBrowsingAssistantAvailabilityLabels

+ (id)possibleLabelsForContentOptions:(unint64_t)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [[WBSBrowsingAssistantAvailabilityLabels alloc] initWithContentOptions:a3 template:0];
    v5 = [(WBSBrowsingAssistantAvailabilityLabels *)v4 representedOptionsAtIndex:0];
    if ((v5 ^ (v5 - 1)) <= v5 - 1)
    {
      v7 = v5;
      v8 = [[WBSBrowsingAssistantAvailabilityLabels alloc] initWithContentOptions:a3 template:2];
      v9 = v8;
      if ((~v7 & 0x21) != 0 || (v7 & 0xFFFFFFFFFFFFFFDELL) == 0)
      {
        v13[0] = v4;
        v13[1] = v8;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
      }

      else
      {
        v11 = [[WBSBrowsingAssistantAvailabilityLabels alloc] initWithContentOptions:a3 template:1];
        v14[0] = v4;
        v14[1] = v11;
        v14[2] = v9;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
      }
    }

    else
    {
      v15[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (WBSBrowsingAssistantAvailabilityLabels)initWithContentOptions:(unint64_t)a3 template:(int64_t)a4
{
  v5 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  if ((v5 & 0x61) == 0)
  {
    goto LABEL_9;
  }

  switch(a4)
  {
    case 2:
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __74__WBSBrowsingAssistantAvailabilityLabels_initWithContentOptions_template___block_invoke_2;
      v19 = &unk_1E82898B0;
      v20 = v7;
      v21 = v8;
      WBSBrowsingAssistantContentOptionsEnumerateOptionsUsingBlock();

      v11 = v20;
      goto LABEL_8;
    case 1:
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 & 0x21];
      [v7 addObject:v10];

      [v8 addObject:&unk_1F466CF48];
      v22 = v7;
      v23 = v8;
      WBSBrowsingAssistantContentOptionsEnumerateOptionsUsingBlock();

      v11 = v22;
LABEL_8:

      break;
    case 0:
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 & 0x61];
      [v7 addObject:v9];

      [v8 addObject:&unk_1F466CF48];
      break;
  }

LABEL_9:
  v12 = WBSBrowsingAssistantContentOptionsMostProminentRemoteOption();
  if (v12)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    [v7 addObject:v13];

    [v8 addObject:&unk_1F466CF60];
  }

  v14 = [(WBSBrowsingAssistantAvailabilityLabels *)self initWithRepresentedOptions:v7 groups:v8, v16, v17, v18, v19];

  return v14;
}

uint64_t __74__WBSBrowsingAssistantAvailabilityLabels_initWithContentOptions_template___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v3 addObject:v4];

  v5 = *(a1 + 40);

  return [v5 addObject:&unk_1F466CF48];
}

uint64_t __74__WBSBrowsingAssistantAvailabilityLabels_initWithContentOptions_template___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v3 addObject:v4];

  v5 = *(a1 + 40);

  return [v5 addObject:&unk_1F466CF48];
}

- (WBSBrowsingAssistantAvailabilityLabels)initWithRepresentedOptions:(id)a3 groups:(id)a4
{
  v13.receiver = self;
  v13.super_class = WBSBrowsingAssistantAvailabilityLabels;
  v5 = a4;
  v6 = a3;
  v7 = [(WBSBrowsingAssistantAvailabilityLabels *)&v13 init];
  v8 = [v6 copy];

  representedOptions = v7->_representedOptions;
  v7->_representedOptions = v8;

  v10 = [v5 copy];
  representedOptionsGroups = v7->_representedOptionsGroups;
  v7->_representedOptionsGroups = v10;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = v3;
  if (self->_previouslyConsumedOptions)
  {
    [v3 appendFormat:@"; previousOptions = %lu", self->_previouslyConsumedOptions];
  }

  [v4 appendFormat:@"; labels = {\n"];
  v5 = [(WBSBrowsingAssistantAvailabilityLabels *)self count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [(WBSBrowsingAssistantAvailabilityLabels *)self textForOptionsAtIndex:i];
      v9 = [(WBSBrowsingAssistantAvailabilityLabels *)self representedOptionsAtIndex:i];
      v10 = [(NSArray *)self->_representedOptionsGroups objectAtIndexedSubscript:i];
      [v4 appendFormat:@"\t%lu = %@ (options = %lu; group = %lu), \n", i, v8, v9, objc_msgSend(v10, "unsignedIntegerValue")];
    }
  }

  [v4 appendString:@"}>"];

  return v4;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = v3;
  if (self->_previouslyConsumedOptions)
  {
    [v3 appendFormat:@"; previousOptions = %lu", self->_previouslyConsumedOptions];
  }

  [v4 appendString:@"; labels ="];
  v5 = [(WBSBrowsingAssistantAvailabilityLabels *)self count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = v5 - 1;
    do
    {
      v9 = [(WBSBrowsingAssistantAvailabilityLabels *)self textForOptionsAtIndex:v7];
      [v4 appendFormat:@" %@", v9];

      if (v7 < v8)
      {
        [v4 appendString:{@", "}];
      }

      ++v7;
    }

    while (v6 != v7);
  }

  [v4 appendString:@">"];

  return v4;
}

- (id)textForOptionsAtIndex:(unint64_t)a3
{
  labels = self->_labels;
  if (!labels)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(NSArray *)self->_representedOptions count];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      while (1)
      {
        v11 = [(NSArray *)self->_representedOptions objectAtIndexedSubscript:v10];
        v12 = [v11 unsignedIntegerValue];
        v13 = [(NSArray *)self->_representedOptionsGroups objectAtIndexedSubscript:v10];
        v14 = [v13 integerValue];
        if ((v12 ^ (v12 - 1)) > v12 - 1 || v14 == 1)
        {
          break;
        }

        if (!v14)
        {
          if (v12 > 95)
          {
            if (v12 != 96)
            {
              v3 = &stru_1F4646D10;
              if (v12 != 97)
              {
                goto LABEL_13;
              }
            }
          }

          else if (v12 != 33)
          {
            v3 = &stru_1F4646D10;
            if (v12 != 65)
            {
              goto LABEL_13;
            }
          }

          v15 = _WBSLocalizedString();
          goto LABEL_12;
        }

LABEL_13:
        [(NSArray *)v7 addObject:v3];

        if (v9 == ++v10)
        {
          goto LABEL_18;
        }
      }

      v15 = WBSBrowsingAssistantContentTypeAvailabilityLabel();
LABEL_12:
      v3 = v15;
      goto LABEL_13;
    }

LABEL_18:
    v16 = self->_labels;
    self->_labels = v7;

    labels = self->_labels;
  }

  return [(NSArray *)labels objectAtIndexedSubscript:a3];
}

- (unint64_t)representedOptionsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_representedOptions objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (BOOL)representsSupersetOfContentOptions:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  previouslyConsumedOptions = self->_previouslyConsumedOptions;
  v5 = self->_representedOptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        previouslyConsumedOptions |= [*(*(&v11 + 1) + 8 * v9++) unsignedIntegerValue];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return (a3 & ~previouslyConsumedOptions) == 0;
}

- (id)possibleLabelsByIncorporatingContentOptions:(unint64_t)a3 intoLabelsAfterIndex:(unint64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  previouslyConsumedOptions = self->_previouslyConsumedOptions;
  representedOptions = self->_representedOptions;
  v23 = previouslyConsumedOptions;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__WBSBrowsingAssistantAvailabilityLabels_possibleLabelsByIncorporatingContentOptions_intoLabelsAfterIndex___block_invoke;
  v15[3] = &unk_1E82898D8;
  v15[5] = &v16;
  v15[6] = a4;
  v15[4] = &v20;
  [(NSArray *)representedOptions enumerateObjectsUsingBlock:v15];
  v17[3] &= ~v21[3];
  [WBSBrowsingAssistantAvailabilityLabels possibleLabelsForContentOptions:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v6 = v12 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v24 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        *(*(*(&v11 + 1) + 8 * i) + 8) = v21[3];
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v24 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v6;
}

uint64_t __107__WBSBrowsingAssistantAvailabilityLabels_possibleLabelsByIncorporatingContentOptions_intoLabelsAfterIndex___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 48);
  result = [a2 unsignedIntegerValue];
  v7 = 40;
  if (v5 > a3)
  {
    v7 = 32;
  }

  *(*(*(a1 + v7) + 8) + 24) |= result;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(NSArray *)self->_representedOptions isEqualToArray:v5->_representedOptions])
      {
        v6 = self->_previouslyConsumedOptions == v5->_previouslyConsumedOptions;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end