@interface TIWordSearchCandidateResultSet(TIWordSearchCangjie)
- (uint64_t)nthIndexIgnoringExtensionCandidates:()TIWordSearchCangjie;
@end

@implementation TIWordSearchCandidateResultSet(TIWordSearchCangjie)

- (uint64_t)nthIndexIgnoringExtensionCandidates:()TIWordSearchCangjie
{
  candidates = [self candidates];
  v5 = [candidates count];
  v6 = 0;
  if (v5 && a3)
  {
    v7 = v5;
    v6 = 0;
    do
    {
      v8 = [candidates objectAtIndexedSubscript:v6];
      isExtensionCandidate = [v8 isExtensionCandidate];

      if (++v6 >= v7)
      {
        break;
      }

      a3 -= isExtensionCandidate ^ 1u;
    }

    while (a3);
  }

  return v6;
}

@end