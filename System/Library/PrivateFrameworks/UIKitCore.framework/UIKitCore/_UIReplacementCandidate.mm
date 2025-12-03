@interface _UIReplacementCandidate
+ (id)candidateForAutocorrection:(id)autocorrection range:(id)range underlineStyle:(int64_t)style promptStyle:(int64_t)promptStyle promptButton:(int64_t)button;
+ (id)candidateForAutocorrectionCandidate:(id)candidate range:(id)range;
+ (id)candidateForDocumentText:(id)text revertText:(id)revertText candidateChoices:(id)choices range:(id)range underlineStyle:(int64_t)style promptStyle:(int64_t)promptStyle promptButton:(int64_t)button;
+ (id)candidateForDocumentText:(id)text revertText:(id)revertText textChoices:(id)choices range:(id)range underlineStyle:(int64_t)style promptStyle:(int64_t)promptStyle promptButton:(int64_t)button voiceCommandDisambiguationSelectedIndex:(id)self0 voiceCommandDisambiguationTargetCount:(id)self1;
- (NSArray)textChoices;
- (_UIReplacementCandidate)initWithText:(id)text;
- (void)setTextChoices:(id)choices;
@end

@implementation _UIReplacementCandidate

- (_UIReplacementCandidate)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = _UIReplacementCandidate;
  v6 = [(_UIReplacementCandidate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentTextToReplace, text);
  }

  return v7;
}

+ (id)candidateForAutocorrectionCandidate:(id)candidate range:(id)range
{
  rangeCopy = range;
  candidateCopy = candidate;
  v7 = [_UIReplacementCandidate alloc];
  candidate = [candidateCopy candidate];
  v9 = [(_UIReplacementCandidate *)v7 initWithText:candidate];

  input = [candidateCopy input];

  [(_UIReplacementCandidate *)v9 setRevertText:input];
  [(_UIReplacementCandidate *)v9 setRangeInDocument:rangeCopy];

  [(_UIReplacementCandidate *)v9 setUnderlineStyle:1];
  [(_UIReplacementCandidate *)v9 setPreferredPromptStyle:2];
  [(_UIReplacementCandidate *)v9 setPreferredPromptButton:2];

  return v9;
}

+ (id)candidateForAutocorrection:(id)autocorrection range:(id)range underlineStyle:(int64_t)style promptStyle:(int64_t)promptStyle promptButton:(int64_t)button
{
  rangeCopy = range;
  autocorrectionCopy = autocorrection;
  v13 = [_UIReplacementCandidate alloc];
  candidate = [autocorrectionCopy candidate];
  v15 = [(_UIReplacementCandidate *)v13 initWithText:candidate];

  input = [autocorrectionCopy input];

  [(_UIReplacementCandidate *)v15 setRevertText:input];
  [(_UIReplacementCandidate *)v15 setRangeInDocument:rangeCopy];

  [(_UIReplacementCandidate *)v15 setUnderlineStyle:style];
  [(_UIReplacementCandidate *)v15 setPreferredPromptStyle:promptStyle];
  [(_UIReplacementCandidate *)v15 setPreferredPromptButton:button];

  return v15;
}

+ (id)candidateForDocumentText:(id)text revertText:(id)revertText textChoices:(id)choices range:(id)range underlineStyle:(int64_t)style promptStyle:(int64_t)promptStyle promptButton:(int64_t)button voiceCommandDisambiguationSelectedIndex:(id)self0 voiceCommandDisambiguationTargetCount:(id)self1
{
  countCopy = count;
  indexCopy = index;
  rangeCopy = range;
  choicesCopy = choices;
  revertTextCopy = revertText;
  textCopy = text;
  v22 = [[_UIReplacementCandidate alloc] initWithText:textCopy];
  [(_UIReplacementCandidate *)v22 setRevertText:revertTextCopy];

  v23 = _candidatesChoicesFromTextChoices(choicesCopy, textCopy);

  [(_UIReplacementCandidate *)v22 setCandidateChoices:v23];
  [(_UIReplacementCandidate *)v22 setRangeInDocument:rangeCopy];

  [(_UIReplacementCandidate *)v22 setUnderlineStyle:style];
  [(_UIReplacementCandidate *)v22 setPreferredPromptStyle:promptStyle];
  [(_UIReplacementCandidate *)v22 setPreferredPromptButton:button];
  [(_UIReplacementCandidate *)v22 setVoiceCommandDisambiguationSelectedIndex:indexCopy];

  [(_UIReplacementCandidate *)v22 setVoiceCommandDisambiguationTargetCount:countCopy];

  return v22;
}

+ (id)candidateForDocumentText:(id)text revertText:(id)revertText candidateChoices:(id)choices range:(id)range underlineStyle:(int64_t)style promptStyle:(int64_t)promptStyle promptButton:(int64_t)button
{
  rangeCopy = range;
  choicesCopy = choices;
  revertTextCopy = revertText;
  textCopy = text;
  v18 = [[_UIReplacementCandidate alloc] initWithText:textCopy];

  [(_UIReplacementCandidate *)v18 setRevertText:revertTextCopy];
  [(_UIReplacementCandidate *)v18 setCandidateChoices:choicesCopy];

  [(_UIReplacementCandidate *)v18 setRangeInDocument:rangeCopy];
  [(_UIReplacementCandidate *)v18 setUnderlineStyle:style];
  [(_UIReplacementCandidate *)v18 setPreferredPromptStyle:promptStyle];
  [(_UIReplacementCandidate *)v18 setPreferredPromptButton:button];

  return v18;
}

- (NSArray)textChoices
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  candidateChoices = [(_UIReplacementCandidate *)self candidateChoices];
  v5 = [v3 initWithCapacity:{objc_msgSend(candidateChoices, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  candidateChoices2 = [(_UIReplacementCandidate *)self candidateChoices];
  v7 = [candidateChoices2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(candidateChoices2);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        label = [v11 label];
        if (label)
        {
          [v5 addObject:label];
        }

        else
        {
          candidate = [v11 candidate];
          v14 = candidate;
          if (candidate)
          {
            v15 = candidate;
          }

          else
          {
            v15 = &stru_1EFB14550;
          }

          [v5 addObject:v15];
        }
      }

      v8 = [candidateChoices2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [v5 copy];

  return v16;
}

- (void)setTextChoices:(id)choices
{
  choicesCopy = choices;
  documentTextToReplace = [(_UIReplacementCandidate *)self documentTextToReplace];
  v5 = _candidatesChoicesFromTextChoices(choicesCopy, documentTextToReplace);

  [(_UIReplacementCandidate *)self setCandidateChoices:v5];
}

@end