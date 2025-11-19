@interface TIAutocorrectionList
+ (TIAutocorrectionList)autocorrectionListWithCandidates:(id)a3 shouldAcceptTopCandidate:(BOOL)a4;
+ (TIAutocorrectionList)listWithAutocorrection:(id)a3;
+ (TIAutocorrectionList)listWithAutocorrection:(id)a3 predictions:(id)a4;
+ (TIAutocorrectionList)listWithAutocorrection:(id)a3 predictions:(id)a4 emojiList:(id)a5;
+ (TIAutocorrectionList)listWithAutocorrection:(id)a3 predictions:(id)a4 emojiList:(id)a5 inlineCompletions:(id)a6;
+ (TIAutocorrectionList)listWithAutocorrection:(id)a3 predictions:(id)a4 emojiList:(id)a5 proactiveTriggers:(id)a6;
+ (TIAutocorrectionList)listWithCorrections:(id)a3;
+ (TIAutocorrectionList)listWithCorrections:(id)a3 inlineCompletionList:(id)a4;
+ (TIAutocorrectionList)listWithCorrections:(id)a3 predictions:(id)a4;
+ (TIAutocorrectionList)listWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5;
+ (TIAutocorrectionList)listWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 inlineCompletionList:(id)a6 proactiveTriggers:(id)a7;
+ (TIAutocorrectionList)listWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 inlineCompletions:(id)a6;
+ (TIAutocorrectionList)listWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 proactiveTriggers:(id)a6;
+ (TIAutocorrectionList)listWithPredictions:(id)a3 emojiList:(id)a4 proactiveTriggers:(id)a5;
+ (TIAutocorrectionList)listWithPredictions:(id)a3 proactiveTriggers:(id)a4;
- (BOOL)empty;
- (BOOL)hasSupplementalCandidates;
- (BOOL)isSupplementalCandidateInPredictions:(id)a3;
- (BOOL)shouldAcceptInlineCompletion;
- (BOOL)shouldAcceptTopCandidate;
- (NSArray)alternateCorrections;
- (NSArray)candidates;
- (NSArray)predictionsIfSupplemental;
- (TIAutocorrectionList)initWithCandidates:(id)a3;
- (TIAutocorrectionList)initWithCandidates:(id)a3 shouldAcceptTopCandidate:(BOOL)a4;
- (TIAutocorrectionList)initWithCoder:(id)a3;
- (TIAutocorrectionList)initWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 proactiveTriggers:(id)a6;
- (TIAutocorrectionList)initWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 proactiveTriggers:(id)a6 inlineCompletions:(id)a7;
- (TIKeyboardCandidate)autocorrection;
- (TIKeyboardCandidate)autocorrectionIfSupplemental;
- (id)description;
- (id)initListWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 proactiveTriggers:(id)a6 inlineCompletions:(id)a7;
- (id)listBySettingNewAlternateCorrections:(id)a3;
- (id)listBySettingNewAutocorrection:(id)a3;
- (id)listBySettingNewEmojiList:(id)a3;
- (id)listBySettingNewPredictions:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIAutocorrectionList

- (NSArray)candidates
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(TIAutocorrectionList *)self corrections];
  v4 = [v3 autocorrection];
  v5 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = [(TIAutocorrectionList *)self corrections];
    v7 = [v6 autocorrection];
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [(TIAutocorrectionList *)self predictions];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  v12 = [v8 arrayByAddingObjectsFromArray:v11];

  return v12;
}

- (TIKeyboardCandidate)autocorrection
{
  v2 = [(TIAutocorrectionList *)self corrections];
  v3 = [v2 autocorrection];

  return v3;
}

- (id)listBySettingNewEmojiList:(id)a3
{
  v4 = a3;
  v5 = [(TIAutocorrectionList *)self corrections];
  v6 = [(TIAutocorrectionList *)self predictions];
  v7 = [(TIAutocorrectionList *)self inlineCompletions];
  v8 = [(TIAutocorrectionList *)self proactiveTriggers];
  v9 = [TIAutocorrectionList listWithCorrections:v5 predictions:v6 emojiList:v4 inlineCompletionList:v7 proactiveTriggers:v8];

  return v9;
}

- (id)listBySettingNewPredictions:(id)a3
{
  v4 = a3;
  v5 = [(TIAutocorrectionList *)self corrections];
  v6 = [(TIAutocorrectionList *)self emojiList];
  v7 = [(TIAutocorrectionList *)self inlineCompletions];
  v8 = [(TIAutocorrectionList *)self proactiveTriggers];
  v9 = [TIAutocorrectionList listWithCorrections:v5 predictions:v4 emojiList:v6 inlineCompletionList:v7 proactiveTriggers:v8];

  return v9;
}

- (id)listBySettingNewAlternateCorrections:(id)a3
{
  v4 = a3;
  v5 = [TICorrectionCandidates alloc];
  v6 = [(TIAutocorrectionList *)self corrections];
  v7 = [v6 autocorrection];
  v8 = [(TICorrectionCandidates *)v5 initWithAutocorrection:v7 alternateCorrections:v4];

  v9 = [(TIAutocorrectionList *)self predictions];
  v10 = [(TIAutocorrectionList *)self emojiList];
  v11 = [(TIAutocorrectionList *)self inlineCompletions];
  v12 = [(TIAutocorrectionList *)self proactiveTriggers];
  v13 = [TIAutocorrectionList listWithCorrections:v8 predictions:v9 emojiList:v10 inlineCompletionList:v11 proactiveTriggers:v12];

  return v13;
}

- (id)listBySettingNewAutocorrection:(id)a3
{
  v4 = a3;
  v5 = [TICorrectionCandidates alloc];
  v6 = [(TIAutocorrectionList *)self corrections];
  v7 = [v6 alternateCorrections];
  v8 = [(TICorrectionCandidates *)v5 initWithAutocorrection:v4 alternateCorrections:v7];

  v9 = [(TIAutocorrectionList *)self predictions];
  v10 = [(TIAutocorrectionList *)self emojiList];
  v11 = [(TIAutocorrectionList *)self inlineCompletions];
  v12 = [(TIAutocorrectionList *)self proactiveTriggers];
  v13 = [TIAutocorrectionList listWithCorrections:v8 predictions:v9 emojiList:v10 inlineCompletionList:v11 proactiveTriggers:v12];

  return v13;
}

- (BOOL)shouldAcceptInlineCompletion
{
  v2 = [(TIAutocorrectionList *)self inlineCompletions];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isSupplementalCandidateInPredictions:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_predictions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isSupplementalItemCandidate])
        {
          v10 = [v9 candidate];
          v11 = [v4 isEqualToString:v10];

          if (v11)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (NSArray)predictionsIfSupplemental
{
  predictions = self->_predictions;
  if (predictions)
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_816];
    v4 = [(NSArray *)predictions filteredArrayUsingPredicate:v3];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (TIKeyboardCandidate)autocorrectionIfSupplemental
{
  v3 = [(TIAutocorrectionList *)self corrections];
  v4 = [v3 autocorrection];
  if ([v4 isSupplementalItemCandidate])
  {
    v5 = [(TIAutocorrectionList *)self corrections];
    v6 = [v5 autocorrection];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasSupplementalCandidates
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(TIAutocorrectionList *)self corrections];
  v4 = [v3 autocorrection];
  v5 = [v4 isSupplementalItemCandidate];

  if (v5)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = self->_predictions;
    v6 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v11 + 1) + 8 * i) isSupplementalItemCandidate])
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v6;
}

- (BOOL)shouldAcceptTopCandidate
{
  v2 = [(TIAutocorrectionList *)self corrections];
  v3 = [v2 autocorrection];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)empty
{
  v3 = [(TIAutocorrectionList *)self corrections];
  v4 = [v3 autocorrection];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(TIAutocorrectionList *)self corrections];
    v7 = [v6 alternateCorrections];
    v5 = ![v7 count] && !-[NSArray count](self->_predictions, "count") && -[NSArray count](self->_emojiList, "count") == 0;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p corrections=%@ predictions=%@", objc_opt_class(), self, self->_corrections, self->_predictions];
  v4 = v3;
  if (self->_emojiList)
  {
    [v3 appendFormat:@" emojiList=%@", self->_emojiList];
  }

  [v4 appendFormat:@">"];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  corrections = self->_corrections;
  v9 = v4;
  if (corrections)
  {
    [v4 encodeObject:corrections forKey:@"corrections"];
    v4 = v9;
  }

  predictions = self->_predictions;
  if (predictions)
  {
    [v9 encodeObject:predictions forKey:@"predictions"];
    v4 = v9;
  }

  inlineCompletions = self->_inlineCompletions;
  if (inlineCompletions)
  {
    [v9 encodeObject:inlineCompletions forKey:@"inlineCompletions"];
    v4 = v9;
  }

  emojiList = self->_emojiList;
  if (emojiList)
  {
    [v9 encodeObject:emojiList forKey:@"emojiList"];
    v4 = v9;
  }

  [v4 encodeBool:self->_containsProactiveTriggers forKey:@"containsProactiveTriggers"];
  [v9 encodeBool:self->_proactiveSuggestionsEmpty forKey:@"proactiveSuggestionsEmpty"];
}

- (TIAutocorrectionList)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = TIAutocorrectionList;
  v5 = [(TIAutocorrectionList *)&v24 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"corrections"];
    corrections = v5->_corrections;
    v5->_corrections = v9;

    if (!v5->_corrections)
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autocorrection"];
      if (v11)
      {
        v12 = [[TICorrectionCandidates alloc] initWithAutocorrection:v11 alternateCorrections:0];
        v13 = v5->_corrections;
        v5->_corrections = v12;
      }
    }

    v14 = [v4 decodeObjectOfClasses:v8 forKey:@"predictions"];
    v15 = [v14 copy];
    predictions = v5->_predictions;
    v5->_predictions = v15;

    v17 = [v4 decodeObjectOfClasses:v8 forKey:@"inlineCompletions"];
    v18 = [v17 copy];
    inlineCompletions = v5->_inlineCompletions;
    v5->_inlineCompletions = v18;

    v20 = [v4 decodeObjectOfClasses:v8 forKey:@"emojiList"];
    v21 = [v20 copy];
    emojiList = v5->_emojiList;
    v5->_emojiList = v21;

    v5->_containsProactiveTriggers = [v4 decodeBoolForKey:@"containsProactiveTriggers"];
    v5->_proactiveSuggestionsEmpty = [v4 decodeBoolForKey:@"proactiveSuggestionsEmpty"];
  }

  return v5;
}

- (TIAutocorrectionList)initWithCandidates:(id)a3 shouldAcceptTopCandidate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4 && [v6 count])
  {
    v8 = [v7 firstObject];
    v9 = [v7 subarrayWithRange:{1, objc_msgSend(v7, "count") - 1}];
  }

  else
  {
    v8 = 0;
    v9 = v7;
  }

  v10 = [[TICorrectionCandidates alloc] initWithAutocorrection:v8 alternateCorrections:0];
  v11 = [(TIAutocorrectionList *)self initWithCorrections:v10 predictions:v9 emojiList:0 proactiveTriggers:0 inlineCompletions:0];

  return v11;
}

- (TIAutocorrectionList)initWithCandidates:(id)a3
{
  v4 = a3;
  v5 = -[TIAutocorrectionList initWithCandidates:shouldAcceptTopCandidate:](self, "initWithCandidates:shouldAcceptTopCandidate:", v4, [v4 count] != 0);

  return v5;
}

- (NSArray)alternateCorrections
{
  v2 = [(TIAutocorrectionList *)self corrections];
  v3 = [v2 alternateCorrections];

  return v3;
}

- (TIAutocorrectionList)initWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 proactiveTriggers:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = TIAutocorrectionList;
  v15 = [(TIAutocorrectionList *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_corrections, a3);
    v17 = [v12 copy];
    predictions = v16->_predictions;
    v16->_predictions = v17;

    v19 = [v13 copy];
    emojiList = v16->_emojiList;
    v16->_emojiList = v19;

    v21 = [v14 copy];
    proactiveTriggers = v16->_proactiveTriggers;
    v16->_proactiveTriggers = v21;
  }

  return v16;
}

- (id)initListWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 proactiveTriggers:(id)a6 inlineCompletions:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29.receiver = self;
  v29.super_class = TIAutocorrectionList;
  v18 = [(TIAutocorrectionList *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_corrections, a3);
    v20 = [v14 copy];
    predictions = v19->_predictions;
    v19->_predictions = v20;

    v22 = [v15 copy];
    emojiList = v19->_emojiList;
    v19->_emojiList = v22;

    v24 = [v16 copy];
    proactiveTriggers = v19->_proactiveTriggers;
    v19->_proactiveTriggers = v24;

    v26 = [v17 copy];
    inlineCompletions = v19->_inlineCompletions;
    v19->_inlineCompletions = v26;
  }

  return v19;
}

- (TIAutocorrectionList)initWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 proactiveTriggers:(id)a6 inlineCompletions:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29.receiver = self;
  v29.super_class = TIAutocorrectionList;
  v18 = [(TIAutocorrectionList *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_corrections, a3);
    v20 = [v14 copy];
    predictions = v19->_predictions;
    v19->_predictions = v20;

    v22 = [v15 copy];
    emojiList = v19->_emojiList;
    v19->_emojiList = v22;

    v24 = [v16 copy];
    proactiveTriggers = v19->_proactiveTriggers;
    v19->_proactiveTriggers = v24;

    v26 = [v17 copy];
    inlineCompletions = v19->_inlineCompletions;
    v19->_inlineCompletions = v26;
  }

  return v19;
}

+ (TIAutocorrectionList)autocorrectionListWithCandidates:(id)a3 shouldAcceptTopCandidate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[a1 alloc] initWithCandidates:v6 shouldAcceptTopCandidate:v4];

  return v7;
}

+ (TIAutocorrectionList)listWithAutocorrection:(id)a3 predictions:(id)a4 emojiList:(id)a5 proactiveTriggers:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[TICorrectionCandidates alloc] initWithAutocorrection:v12 alternateCorrections:0];

  v14 = [TIAutocorrectionList listWithCorrections:v13 predictions:v11 emojiList:v10 proactiveTriggers:v9];

  return v14;
}

+ (TIAutocorrectionList)listWithAutocorrection:(id)a3 predictions:(id)a4 emojiList:(id)a5 inlineCompletions:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[TICorrectionCandidates alloc] initWithAutocorrection:v12 alternateCorrections:0];

  v14 = [TIAutocorrectionList listWithCorrections:v13 predictions:v11 emojiList:v10 inlineCompletions:v9];

  return v14;
}

+ (TIAutocorrectionList)listWithAutocorrection:(id)a3 predictions:(id)a4 emojiList:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[TICorrectionCandidates alloc] initWithAutocorrection:v9 alternateCorrections:0];

  v11 = [TIAutocorrectionList listWithCorrections:v10 predictions:v8 emojiList:v7];

  return v11;
}

+ (TIAutocorrectionList)listWithAutocorrection:(id)a3 predictions:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TICorrectionCandidates alloc] initWithAutocorrection:v6 alternateCorrections:0];

  v8 = [TIAutocorrectionList listWithCorrections:v7 predictions:v5];

  return v8;
}

+ (TIAutocorrectionList)listWithAutocorrection:(id)a3
{
  v3 = a3;
  v4 = [[TICorrectionCandidates alloc] initWithAutocorrection:v3 alternateCorrections:0];

  v5 = [TIAutocorrectionList listWithCorrections:v4];

  return v5;
}

+ (TIAutocorrectionList)listWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 inlineCompletions:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithCorrections:v13 predictions:v12 emojiList:v11 proactiveTriggers:0 inlineCompletions:v10];

  return v14;
}

+ (TIAutocorrectionList)listWithPredictions:(id)a3 emojiList:(id)a4 proactiveTriggers:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithCorrections:0 predictions:v10 emojiList:v9 proactiveTriggers:v8];

  return v11;
}

+ (TIAutocorrectionList)listWithPredictions:(id)a3 proactiveTriggers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithCorrections:0 predictions:v7 emojiList:0 proactiveTriggers:v6 inlineCompletions:0];

  return v8;
}

+ (TIAutocorrectionList)listWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 inlineCompletionList:(id)a6 proactiveTriggers:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initListWithCorrections:v16 predictions:v15 emojiList:v14 proactiveTriggers:v12 inlineCompletions:v13];

  return v17;
}

+ (TIAutocorrectionList)listWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5 proactiveTriggers:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithCorrections:v13 predictions:v12 emojiList:v11 proactiveTriggers:v10];

  return v14;
}

+ (TIAutocorrectionList)listWithCorrections:(id)a3 predictions:(id)a4 emojiList:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithCorrections:v10 predictions:v9 emojiList:v8 proactiveTriggers:0 inlineCompletions:0];

  return v11;
}

+ (TIAutocorrectionList)listWithCorrections:(id)a3 inlineCompletionList:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithCorrections:v7 predictions:0 emojiList:0 proactiveTriggers:0 inlineCompletions:v6];

  return v8;
}

+ (TIAutocorrectionList)listWithCorrections:(id)a3 predictions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithCorrections:v7 predictions:v6 emojiList:0 proactiveTriggers:0 inlineCompletions:0];

  return v8;
}

+ (TIAutocorrectionList)listWithCorrections:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCorrections:v4 predictions:0 emojiList:0 proactiveTriggers:0 inlineCompletions:0];

  return v5;
}

@end