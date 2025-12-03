@interface CHRecognitionResult(TIAdditions)
- (id)mecabraHandwritingCandidate;
@end

@implementation CHRecognitionResult(TIAdditions)

- (id)mecabraHandwritingCandidate
{
  v41 = *MEMORY[0x277D85DE8];
  wordIDs = [self wordIDs];
  v3 = [wordIDs count];

  if (v3 && ([self wordRanges], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3 == v5))
  {
    v28[1] = v28;
    MEMORY[0x28223BE20]();
    v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    wordIDs2 = [self wordIDs];
    v9 = [wordIDs2 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v36;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(wordIDs2);
          }

          v11 = v14 + 1;
          *&v7[4 * v14++] = [*(*(&v35 + 1) + 8 * v13++) unsignedIntValue];
        }

        while (v10 != v13);
        v10 = [wordIDs2 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v10);
    }

    MEMORY[0x28223BE20]();
    selfCopy = self;
    v30 = &v28[-2 * v3];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    wordRanges = [self wordRanges];
    v16 = [wordRanges countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v32;
      v20 = v30 + 1;
      do
      {
        v21 = 0;
        v22 = &v20[2 * v18];
        v18 += v17;
        do
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(wordRanges);
          }

          *(v22 - 1) = [*(*(&v31 + 1) + 8 * v21) rangeValue];
          *v22 = v23;
          ++v21;
          v22 += 2;
        }

        while (v17 != v21);
        v17 = [wordRanges countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v17);
    }

    string = [selfCopy string];
    v25 = MecabraCreateHandwritingCandidate();
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

@end