@interface TIKeyboardCandidate(TextInputCore)
- (void)core_updateWithSupplementalItemPrefix:()TextInputCore;
@end

@implementation TIKeyboardCandidate(TextInputCore)

- (void)core_updateWithSupplementalItemPrefix:()TextInputCore
{
  v5 = [a1 supplementalItemPrefix];
  [a1 setSupplementalItemPrefix:a3];
  if (v5)
  {
    v6 = [a1 input];
    v7 = [v6 substringFromIndex:1];
    [a1 setInput:v7];
  }

  if (a3)
  {
    v8 = MEMORY[0x277CCACA8];
    v10 = [a1 input];
    v9 = [v8 stringWithFormat:@"%C%@", a3, v10];
    [a1 setInput:v9];
  }
}

@end