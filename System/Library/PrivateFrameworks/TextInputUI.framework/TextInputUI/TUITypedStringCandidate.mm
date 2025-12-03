@interface TUITypedStringCandidate
+ (id)typedStringCandidateWithLocale:(id)locale candidateString:(id)string inputString:(id)inputString rawInputString:(id)rawInputString;
@end

@implementation TUITypedStringCandidate

+ (id)typedStringCandidateWithLocale:(id)locale candidateString:(id)string inputString:(id)inputString rawInputString:(id)rawInputString
{
  rawInputStringCopy = rawInputString;
  inputStringCopy = inputString;
  stringCopy = string;
  localeCopy = locale;
  v14 = [[self alloc] initWithCandidate:stringCopy forInput:inputStringCopy rawInput:rawInputStringCopy];

  v15 = [localeCopy objectForKey:*MEMORY[0x1E695D9D8]];
  v16 = v15;
  v17 = @"“";
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [localeCopy objectForKey:*MEMORY[0x1E695D9E0]];

  v20 = @"”";
  if (v19)
  {
    v20 = v19;
  }

  v21 = v20;

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v18, stringCopy, v21];

  [v14 setDisplayLabel:v22];

  return v14;
}

@end