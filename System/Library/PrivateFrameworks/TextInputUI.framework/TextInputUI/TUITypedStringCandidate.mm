@interface TUITypedStringCandidate
+ (id)typedStringCandidateWithLocale:(id)a3 candidateString:(id)a4 inputString:(id)a5 rawInputString:(id)a6;
@end

@implementation TUITypedStringCandidate

+ (id)typedStringCandidateWithLocale:(id)a3 candidateString:(id)a4 inputString:(id)a5 rawInputString:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithCandidate:v12 forInput:v11 rawInput:v10];

  v15 = [v13 objectForKey:*MEMORY[0x1E695D9D8]];
  v16 = v15;
  v17 = @"“";
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [v13 objectForKey:*MEMORY[0x1E695D9E0]];

  v20 = @"”";
  if (v19)
  {
    v20 = v19;
  }

  v21 = v20;

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v18, v12, v21];

  [v14 setDisplayLabel:v22];

  return v14;
}

@end