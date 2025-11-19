@interface _UIReplacementCandidate
+ (id)candidateForAutocorrection:(id)a3 range:(id)a4 underlineStyle:(int64_t)a5 promptStyle:(int64_t)a6 promptButton:(int64_t)a7;
+ (id)candidateForAutocorrectionCandidate:(id)a3 range:(id)a4;
+ (id)candidateForDocumentText:(id)a3 revertText:(id)a4 candidateChoices:(id)a5 range:(id)a6 underlineStyle:(int64_t)a7 promptStyle:(int64_t)a8 promptButton:(int64_t)a9;
+ (id)candidateForDocumentText:(id)a3 revertText:(id)a4 textChoices:(id)a5 range:(id)a6 underlineStyle:(int64_t)a7 promptStyle:(int64_t)a8 promptButton:(int64_t)a9 voiceCommandDisambiguationSelectedIndex:(id)a10 voiceCommandDisambiguationTargetCount:(id)a11;
- (NSArray)textChoices;
- (_UIReplacementCandidate)initWithText:(id)a3;
- (void)setTextChoices:(id)a3;
@end

@implementation _UIReplacementCandidate

- (_UIReplacementCandidate)initWithText:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIReplacementCandidate;
  v6 = [(_UIReplacementCandidate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentTextToReplace, a3);
  }

  return v7;
}

+ (id)candidateForAutocorrectionCandidate:(id)a3 range:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [_UIReplacementCandidate alloc];
  v8 = [v6 candidate];
  v9 = [(_UIReplacementCandidate *)v7 initWithText:v8];

  v10 = [v6 input];

  [(_UIReplacementCandidate *)v9 setRevertText:v10];
  [(_UIReplacementCandidate *)v9 setRangeInDocument:v5];

  [(_UIReplacementCandidate *)v9 setUnderlineStyle:1];
  [(_UIReplacementCandidate *)v9 setPreferredPromptStyle:2];
  [(_UIReplacementCandidate *)v9 setPreferredPromptButton:2];

  return v9;
}

+ (id)candidateForAutocorrection:(id)a3 range:(id)a4 underlineStyle:(int64_t)a5 promptStyle:(int64_t)a6 promptButton:(int64_t)a7
{
  v11 = a4;
  v12 = a3;
  v13 = [_UIReplacementCandidate alloc];
  v14 = [v12 candidate];
  v15 = [(_UIReplacementCandidate *)v13 initWithText:v14];

  v16 = [v12 input];

  [(_UIReplacementCandidate *)v15 setRevertText:v16];
  [(_UIReplacementCandidate *)v15 setRangeInDocument:v11];

  [(_UIReplacementCandidate *)v15 setUnderlineStyle:a5];
  [(_UIReplacementCandidate *)v15 setPreferredPromptStyle:a6];
  [(_UIReplacementCandidate *)v15 setPreferredPromptButton:a7];

  return v15;
}

+ (id)candidateForDocumentText:(id)a3 revertText:(id)a4 textChoices:(id)a5 range:(id)a6 underlineStyle:(int64_t)a7 promptStyle:(int64_t)a8 promptButton:(int64_t)a9 voiceCommandDisambiguationSelectedIndex:(id)a10 voiceCommandDisambiguationTargetCount:(id)a11
{
  v16 = a11;
  v17 = a10;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [[_UIReplacementCandidate alloc] initWithText:v21];
  [(_UIReplacementCandidate *)v22 setRevertText:v20];

  v23 = _candidatesChoicesFromTextChoices(v19, v21);

  [(_UIReplacementCandidate *)v22 setCandidateChoices:v23];
  [(_UIReplacementCandidate *)v22 setRangeInDocument:v18];

  [(_UIReplacementCandidate *)v22 setUnderlineStyle:a7];
  [(_UIReplacementCandidate *)v22 setPreferredPromptStyle:a8];
  [(_UIReplacementCandidate *)v22 setPreferredPromptButton:a9];
  [(_UIReplacementCandidate *)v22 setVoiceCommandDisambiguationSelectedIndex:v17];

  [(_UIReplacementCandidate *)v22 setVoiceCommandDisambiguationTargetCount:v16];

  return v22;
}

+ (id)candidateForDocumentText:(id)a3 revertText:(id)a4 candidateChoices:(id)a5 range:(id)a6 underlineStyle:(int64_t)a7 promptStyle:(int64_t)a8 promptButton:(int64_t)a9
{
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[_UIReplacementCandidate alloc] initWithText:v17];

  [(_UIReplacementCandidate *)v18 setRevertText:v16];
  [(_UIReplacementCandidate *)v18 setCandidateChoices:v15];

  [(_UIReplacementCandidate *)v18 setRangeInDocument:v14];
  [(_UIReplacementCandidate *)v18 setUnderlineStyle:a7];
  [(_UIReplacementCandidate *)v18 setPreferredPromptStyle:a8];
  [(_UIReplacementCandidate *)v18 setPreferredPromptButton:a9];

  return v18;
}

- (NSArray)textChoices
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(_UIReplacementCandidate *)self candidateChoices];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(_UIReplacementCandidate *)self candidateChoices];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 label];
        if (v12)
        {
          [v5 addObject:v12];
        }

        else
        {
          v13 = [v11 candidate];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = &stru_1EFB14550;
          }

          [v5 addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [v5 copy];

  return v16;
}

- (void)setTextChoices:(id)a3
{
  v4 = a3;
  v6 = [(_UIReplacementCandidate *)self documentTextToReplace];
  v5 = _candidatesChoicesFromTextChoices(v4, v6);

  [(_UIReplacementCandidate *)self setCandidateChoices:v5];
}

@end