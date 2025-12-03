@interface TICompositeMecabraCandidate(TextInputCore)
- (void)initWithMecabraCandidate:()TextInputCore autoconvertedCandidates:;
@end

@implementation TICompositeMecabraCandidate(TextInputCore)

- (void)initWithMecabraCandidate:()TextInputCore autoconvertedCandidates:
{
  v6 = a4;
  v7 = MecabraCandidateGetSurface();
  v8 = MecabraCandidateGetAnalysisString();
  if (!v6)
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v9 = [v6 valueForKey:@"candidate"];
  v10 = [v9 componentsJoinedByString:&stru_283FDFAF8];

  v11 = [v6 valueForKey:@"input"];
  v12 = [v11 componentsJoinedByString:&stru_283FDFAF8];

  v13 = [v10 stringByAppendingString:v7];
  v14 = [v12 stringByAppendingString:v8];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v16 = [self initWithCandidate:v13 forInput:v14 mecabraCandidatePointerValue:v15 withFlags:FlagsForCandidate()];

  if (v16)
  {
    v17 = [v6 valueForKey:*MEMORY[0x277D6FD88]];
    [v16 setAutoconvertedCandidatePointerValues:v17];

    [v16 setRemainderCandidateString:v7];
  }

  return v16;
}

@end