@interface TIAutocorrectionList
+ (TIAutocorrectionList)autocorrectionListWithCandidates:(id)candidates shouldAcceptTopCandidate:(BOOL)candidate;
+ (TIAutocorrectionList)listWithAutocorrection:(id)autocorrection;
+ (TIAutocorrectionList)listWithAutocorrection:(id)autocorrection predictions:(id)predictions;
+ (TIAutocorrectionList)listWithAutocorrection:(id)autocorrection predictions:(id)predictions emojiList:(id)list;
+ (TIAutocorrectionList)listWithAutocorrection:(id)autocorrection predictions:(id)predictions emojiList:(id)list inlineCompletions:(id)completions;
+ (TIAutocorrectionList)listWithAutocorrection:(id)autocorrection predictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers;
+ (TIAutocorrectionList)listWithCorrections:(id)corrections;
+ (TIAutocorrectionList)listWithCorrections:(id)corrections inlineCompletionList:(id)list;
+ (TIAutocorrectionList)listWithCorrections:(id)corrections predictions:(id)predictions;
+ (TIAutocorrectionList)listWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list;
+ (TIAutocorrectionList)listWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list inlineCompletionList:(id)completionList proactiveTriggers:(id)triggers;
+ (TIAutocorrectionList)listWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list inlineCompletions:(id)completions;
+ (TIAutocorrectionList)listWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers;
+ (TIAutocorrectionList)listWithPredictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers;
+ (TIAutocorrectionList)listWithPredictions:(id)predictions proactiveTriggers:(id)triggers;
- (BOOL)empty;
- (BOOL)hasSupplementalCandidates;
- (BOOL)isSupplementalCandidateInPredictions:(id)predictions;
- (BOOL)shouldAcceptInlineCompletion;
- (BOOL)shouldAcceptTopCandidate;
- (NSArray)alternateCorrections;
- (NSArray)candidates;
- (NSArray)predictionsIfSupplemental;
- (TIAutocorrectionList)initWithCandidates:(id)candidates;
- (TIAutocorrectionList)initWithCandidates:(id)candidates shouldAcceptTopCandidate:(BOOL)candidate;
- (TIAutocorrectionList)initWithCoder:(id)coder;
- (TIAutocorrectionList)initWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers;
- (TIAutocorrectionList)initWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers inlineCompletions:(id)completions;
- (TIKeyboardCandidate)autocorrection;
- (TIKeyboardCandidate)autocorrectionIfSupplemental;
- (id)description;
- (id)initListWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers inlineCompletions:(id)completions;
- (id)listBySettingNewAlternateCorrections:(id)corrections;
- (id)listBySettingNewAutocorrection:(id)autocorrection;
- (id)listBySettingNewEmojiList:(id)list;
- (id)listBySettingNewPredictions:(id)predictions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIAutocorrectionList

- (NSArray)candidates
{
  v14[1] = *MEMORY[0x1E69E9840];
  corrections = [(TIAutocorrectionList *)self corrections];
  autocorrection = [corrections autocorrection];
  v5 = MEMORY[0x1E695E0F0];
  if (autocorrection)
  {
    corrections2 = [(TIAutocorrectionList *)self corrections];
    autocorrection2 = [corrections2 autocorrection];
    v14[0] = autocorrection2;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  predictions = [(TIAutocorrectionList *)self predictions];
  v10 = predictions;
  if (predictions)
  {
    v11 = predictions;
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
  corrections = [(TIAutocorrectionList *)self corrections];
  autocorrection = [corrections autocorrection];

  return autocorrection;
}

- (id)listBySettingNewEmojiList:(id)list
{
  listCopy = list;
  corrections = [(TIAutocorrectionList *)self corrections];
  predictions = [(TIAutocorrectionList *)self predictions];
  inlineCompletions = [(TIAutocorrectionList *)self inlineCompletions];
  proactiveTriggers = [(TIAutocorrectionList *)self proactiveTriggers];
  v9 = [TIAutocorrectionList listWithCorrections:corrections predictions:predictions emojiList:listCopy inlineCompletionList:inlineCompletions proactiveTriggers:proactiveTriggers];

  return v9;
}

- (id)listBySettingNewPredictions:(id)predictions
{
  predictionsCopy = predictions;
  corrections = [(TIAutocorrectionList *)self corrections];
  emojiList = [(TIAutocorrectionList *)self emojiList];
  inlineCompletions = [(TIAutocorrectionList *)self inlineCompletions];
  proactiveTriggers = [(TIAutocorrectionList *)self proactiveTriggers];
  v9 = [TIAutocorrectionList listWithCorrections:corrections predictions:predictionsCopy emojiList:emojiList inlineCompletionList:inlineCompletions proactiveTriggers:proactiveTriggers];

  return v9;
}

- (id)listBySettingNewAlternateCorrections:(id)corrections
{
  correctionsCopy = corrections;
  v5 = [TICorrectionCandidates alloc];
  corrections = [(TIAutocorrectionList *)self corrections];
  autocorrection = [corrections autocorrection];
  v8 = [(TICorrectionCandidates *)v5 initWithAutocorrection:autocorrection alternateCorrections:correctionsCopy];

  predictions = [(TIAutocorrectionList *)self predictions];
  emojiList = [(TIAutocorrectionList *)self emojiList];
  inlineCompletions = [(TIAutocorrectionList *)self inlineCompletions];
  proactiveTriggers = [(TIAutocorrectionList *)self proactiveTriggers];
  v13 = [TIAutocorrectionList listWithCorrections:v8 predictions:predictions emojiList:emojiList inlineCompletionList:inlineCompletions proactiveTriggers:proactiveTriggers];

  return v13;
}

- (id)listBySettingNewAutocorrection:(id)autocorrection
{
  autocorrectionCopy = autocorrection;
  v5 = [TICorrectionCandidates alloc];
  corrections = [(TIAutocorrectionList *)self corrections];
  alternateCorrections = [corrections alternateCorrections];
  v8 = [(TICorrectionCandidates *)v5 initWithAutocorrection:autocorrectionCopy alternateCorrections:alternateCorrections];

  predictions = [(TIAutocorrectionList *)self predictions];
  emojiList = [(TIAutocorrectionList *)self emojiList];
  inlineCompletions = [(TIAutocorrectionList *)self inlineCompletions];
  proactiveTriggers = [(TIAutocorrectionList *)self proactiveTriggers];
  v13 = [TIAutocorrectionList listWithCorrections:v8 predictions:predictions emojiList:emojiList inlineCompletionList:inlineCompletions proactiveTriggers:proactiveTriggers];

  return v13;
}

- (BOOL)shouldAcceptInlineCompletion
{
  inlineCompletions = [(TIAutocorrectionList *)self inlineCompletions];
  v3 = [inlineCompletions count] != 0;

  return v3;
}

- (BOOL)isSupplementalCandidateInPredictions:(id)predictions
{
  v18 = *MEMORY[0x1E69E9840];
  predictionsCopy = predictions;
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
          candidate = [v9 candidate];
          v11 = [predictionsCopy isEqualToString:candidate];

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
  corrections = [(TIAutocorrectionList *)self corrections];
  autocorrection = [corrections autocorrection];
  if ([autocorrection isSupplementalItemCandidate])
  {
    corrections2 = [(TIAutocorrectionList *)self corrections];
    autocorrection2 = [corrections2 autocorrection];
  }

  else
  {
    autocorrection2 = 0;
  }

  return autocorrection2;
}

- (BOOL)hasSupplementalCandidates
{
  v16 = *MEMORY[0x1E69E9840];
  corrections = [(TIAutocorrectionList *)self corrections];
  autocorrection = [corrections autocorrection];
  isSupplementalItemCandidate = [autocorrection isSupplementalItemCandidate];

  if (isSupplementalItemCandidate)
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
  corrections = [(TIAutocorrectionList *)self corrections];
  autocorrection = [corrections autocorrection];
  v4 = autocorrection != 0;

  return v4;
}

- (BOOL)empty
{
  corrections = [(TIAutocorrectionList *)self corrections];
  autocorrection = [corrections autocorrection];
  if (autocorrection)
  {
    v5 = 0;
  }

  else
  {
    corrections2 = [(TIAutocorrectionList *)self corrections];
    alternateCorrections = [corrections2 alternateCorrections];
    v5 = ![alternateCorrections count] && !-[NSArray count](self->_predictions, "count") && -[NSArray count](self->_emojiList, "count") == 0;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  corrections = self->_corrections;
  v9 = coderCopy;
  if (corrections)
  {
    [coderCopy encodeObject:corrections forKey:@"corrections"];
    coderCopy = v9;
  }

  predictions = self->_predictions;
  if (predictions)
  {
    [v9 encodeObject:predictions forKey:@"predictions"];
    coderCopy = v9;
  }

  inlineCompletions = self->_inlineCompletions;
  if (inlineCompletions)
  {
    [v9 encodeObject:inlineCompletions forKey:@"inlineCompletions"];
    coderCopy = v9;
  }

  emojiList = self->_emojiList;
  if (emojiList)
  {
    [v9 encodeObject:emojiList forKey:@"emojiList"];
    coderCopy = v9;
  }

  [coderCopy encodeBool:self->_containsProactiveTriggers forKey:@"containsProactiveTriggers"];
  [v9 encodeBool:self->_proactiveSuggestionsEmpty forKey:@"proactiveSuggestionsEmpty"];
}

- (TIAutocorrectionList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = TIAutocorrectionList;
  v5 = [(TIAutocorrectionList *)&v24 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"corrections"];
    corrections = v5->_corrections;
    v5->_corrections = v9;

    if (!v5->_corrections)
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autocorrection"];
      if (v11)
      {
        v12 = [[TICorrectionCandidates alloc] initWithAutocorrection:v11 alternateCorrections:0];
        v13 = v5->_corrections;
        v5->_corrections = v12;
      }
    }

    v14 = [coderCopy decodeObjectOfClasses:v8 forKey:@"predictions"];
    v15 = [v14 copy];
    predictions = v5->_predictions;
    v5->_predictions = v15;

    v17 = [coderCopy decodeObjectOfClasses:v8 forKey:@"inlineCompletions"];
    v18 = [v17 copy];
    inlineCompletions = v5->_inlineCompletions;
    v5->_inlineCompletions = v18;

    v20 = [coderCopy decodeObjectOfClasses:v8 forKey:@"emojiList"];
    v21 = [v20 copy];
    emojiList = v5->_emojiList;
    v5->_emojiList = v21;

    v5->_containsProactiveTriggers = [coderCopy decodeBoolForKey:@"containsProactiveTriggers"];
    v5->_proactiveSuggestionsEmpty = [coderCopy decodeBoolForKey:@"proactiveSuggestionsEmpty"];
  }

  return v5;
}

- (TIAutocorrectionList)initWithCandidates:(id)candidates shouldAcceptTopCandidate:(BOOL)candidate
{
  candidateCopy = candidate;
  candidatesCopy = candidates;
  v7 = candidatesCopy;
  if (candidateCopy && [candidatesCopy count])
  {
    firstObject = [v7 firstObject];
    v9 = [v7 subarrayWithRange:{1, objc_msgSend(v7, "count") - 1}];
  }

  else
  {
    firstObject = 0;
    v9 = v7;
  }

  v10 = [[TICorrectionCandidates alloc] initWithAutocorrection:firstObject alternateCorrections:0];
  v11 = [(TIAutocorrectionList *)self initWithCorrections:v10 predictions:v9 emojiList:0 proactiveTriggers:0 inlineCompletions:0];

  return v11;
}

- (TIAutocorrectionList)initWithCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v5 = -[TIAutocorrectionList initWithCandidates:shouldAcceptTopCandidate:](self, "initWithCandidates:shouldAcceptTopCandidate:", candidatesCopy, [candidatesCopy count] != 0);

  return v5;
}

- (NSArray)alternateCorrections
{
  corrections = [(TIAutocorrectionList *)self corrections];
  alternateCorrections = [corrections alternateCorrections];

  return alternateCorrections;
}

- (TIAutocorrectionList)initWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers
{
  correctionsCopy = corrections;
  predictionsCopy = predictions;
  listCopy = list;
  triggersCopy = triggers;
  v24.receiver = self;
  v24.super_class = TIAutocorrectionList;
  v15 = [(TIAutocorrectionList *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_corrections, corrections);
    v17 = [predictionsCopy copy];
    predictions = v16->_predictions;
    v16->_predictions = v17;

    v19 = [listCopy copy];
    emojiList = v16->_emojiList;
    v16->_emojiList = v19;

    v21 = [triggersCopy copy];
    proactiveTriggers = v16->_proactiveTriggers;
    v16->_proactiveTriggers = v21;
  }

  return v16;
}

- (id)initListWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers inlineCompletions:(id)completions
{
  correctionsCopy = corrections;
  predictionsCopy = predictions;
  listCopy = list;
  triggersCopy = triggers;
  completionsCopy = completions;
  v29.receiver = self;
  v29.super_class = TIAutocorrectionList;
  v18 = [(TIAutocorrectionList *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_corrections, corrections);
    v20 = [predictionsCopy copy];
    predictions = v19->_predictions;
    v19->_predictions = v20;

    v22 = [listCopy copy];
    emojiList = v19->_emojiList;
    v19->_emojiList = v22;

    v24 = [triggersCopy copy];
    proactiveTriggers = v19->_proactiveTriggers;
    v19->_proactiveTriggers = v24;

    v26 = [completionsCopy copy];
    inlineCompletions = v19->_inlineCompletions;
    v19->_inlineCompletions = v26;
  }

  return v19;
}

- (TIAutocorrectionList)initWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers inlineCompletions:(id)completions
{
  correctionsCopy = corrections;
  predictionsCopy = predictions;
  listCopy = list;
  triggersCopy = triggers;
  completionsCopy = completions;
  v29.receiver = self;
  v29.super_class = TIAutocorrectionList;
  v18 = [(TIAutocorrectionList *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_corrections, corrections);
    v20 = [predictionsCopy copy];
    predictions = v19->_predictions;
    v19->_predictions = v20;

    v22 = [listCopy copy];
    emojiList = v19->_emojiList;
    v19->_emojiList = v22;

    v24 = [triggersCopy copy];
    proactiveTriggers = v19->_proactiveTriggers;
    v19->_proactiveTriggers = v24;

    v26 = [completionsCopy copy];
    inlineCompletions = v19->_inlineCompletions;
    v19->_inlineCompletions = v26;
  }

  return v19;
}

+ (TIAutocorrectionList)autocorrectionListWithCandidates:(id)candidates shouldAcceptTopCandidate:(BOOL)candidate
{
  candidateCopy = candidate;
  candidatesCopy = candidates;
  v7 = [[self alloc] initWithCandidates:candidatesCopy shouldAcceptTopCandidate:candidateCopy];

  return v7;
}

+ (TIAutocorrectionList)listWithAutocorrection:(id)autocorrection predictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers
{
  triggersCopy = triggers;
  listCopy = list;
  predictionsCopy = predictions;
  autocorrectionCopy = autocorrection;
  v13 = [[TICorrectionCandidates alloc] initWithAutocorrection:autocorrectionCopy alternateCorrections:0];

  v14 = [TIAutocorrectionList listWithCorrections:v13 predictions:predictionsCopy emojiList:listCopy proactiveTriggers:triggersCopy];

  return v14;
}

+ (TIAutocorrectionList)listWithAutocorrection:(id)autocorrection predictions:(id)predictions emojiList:(id)list inlineCompletions:(id)completions
{
  completionsCopy = completions;
  listCopy = list;
  predictionsCopy = predictions;
  autocorrectionCopy = autocorrection;
  v13 = [[TICorrectionCandidates alloc] initWithAutocorrection:autocorrectionCopy alternateCorrections:0];

  v14 = [TIAutocorrectionList listWithCorrections:v13 predictions:predictionsCopy emojiList:listCopy inlineCompletions:completionsCopy];

  return v14;
}

+ (TIAutocorrectionList)listWithAutocorrection:(id)autocorrection predictions:(id)predictions emojiList:(id)list
{
  listCopy = list;
  predictionsCopy = predictions;
  autocorrectionCopy = autocorrection;
  v10 = [[TICorrectionCandidates alloc] initWithAutocorrection:autocorrectionCopy alternateCorrections:0];

  v11 = [TIAutocorrectionList listWithCorrections:v10 predictions:predictionsCopy emojiList:listCopy];

  return v11;
}

+ (TIAutocorrectionList)listWithAutocorrection:(id)autocorrection predictions:(id)predictions
{
  predictionsCopy = predictions;
  autocorrectionCopy = autocorrection;
  v7 = [[TICorrectionCandidates alloc] initWithAutocorrection:autocorrectionCopy alternateCorrections:0];

  v8 = [TIAutocorrectionList listWithCorrections:v7 predictions:predictionsCopy];

  return v8;
}

+ (TIAutocorrectionList)listWithAutocorrection:(id)autocorrection
{
  autocorrectionCopy = autocorrection;
  v4 = [[TICorrectionCandidates alloc] initWithAutocorrection:autocorrectionCopy alternateCorrections:0];

  v5 = [TIAutocorrectionList listWithCorrections:v4];

  return v5;
}

+ (TIAutocorrectionList)listWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list inlineCompletions:(id)completions
{
  completionsCopy = completions;
  listCopy = list;
  predictionsCopy = predictions;
  correctionsCopy = corrections;
  v14 = [[self alloc] initWithCorrections:correctionsCopy predictions:predictionsCopy emojiList:listCopy proactiveTriggers:0 inlineCompletions:completionsCopy];

  return v14;
}

+ (TIAutocorrectionList)listWithPredictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers
{
  triggersCopy = triggers;
  listCopy = list;
  predictionsCopy = predictions;
  v11 = [[self alloc] initWithCorrections:0 predictions:predictionsCopy emojiList:listCopy proactiveTriggers:triggersCopy];

  return v11;
}

+ (TIAutocorrectionList)listWithPredictions:(id)predictions proactiveTriggers:(id)triggers
{
  triggersCopy = triggers;
  predictionsCopy = predictions;
  v8 = [[self alloc] initWithCorrections:0 predictions:predictionsCopy emojiList:0 proactiveTriggers:triggersCopy inlineCompletions:0];

  return v8;
}

+ (TIAutocorrectionList)listWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list inlineCompletionList:(id)completionList proactiveTriggers:(id)triggers
{
  triggersCopy = triggers;
  completionListCopy = completionList;
  listCopy = list;
  predictionsCopy = predictions;
  correctionsCopy = corrections;
  v17 = [[self alloc] initListWithCorrections:correctionsCopy predictions:predictionsCopy emojiList:listCopy proactiveTriggers:triggersCopy inlineCompletions:completionListCopy];

  return v17;
}

+ (TIAutocorrectionList)listWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list proactiveTriggers:(id)triggers
{
  triggersCopy = triggers;
  listCopy = list;
  predictionsCopy = predictions;
  correctionsCopy = corrections;
  v14 = [[self alloc] initWithCorrections:correctionsCopy predictions:predictionsCopy emojiList:listCopy proactiveTriggers:triggersCopy];

  return v14;
}

+ (TIAutocorrectionList)listWithCorrections:(id)corrections predictions:(id)predictions emojiList:(id)list
{
  listCopy = list;
  predictionsCopy = predictions;
  correctionsCopy = corrections;
  v11 = [[self alloc] initWithCorrections:correctionsCopy predictions:predictionsCopy emojiList:listCopy proactiveTriggers:0 inlineCompletions:0];

  return v11;
}

+ (TIAutocorrectionList)listWithCorrections:(id)corrections inlineCompletionList:(id)list
{
  listCopy = list;
  correctionsCopy = corrections;
  v8 = [[self alloc] initWithCorrections:correctionsCopy predictions:0 emojiList:0 proactiveTriggers:0 inlineCompletions:listCopy];

  return v8;
}

+ (TIAutocorrectionList)listWithCorrections:(id)corrections predictions:(id)predictions
{
  predictionsCopy = predictions;
  correctionsCopy = corrections;
  v8 = [[self alloc] initWithCorrections:correctionsCopy predictions:predictionsCopy emojiList:0 proactiveTriggers:0 inlineCompletions:0];

  return v8;
}

+ (TIAutocorrectionList)listWithCorrections:(id)corrections
{
  correctionsCopy = corrections;
  v5 = [[self alloc] initWithCorrections:correctionsCopy predictions:0 emojiList:0 proactiveTriggers:0 inlineCompletions:0];

  return v5;
}

@end