@interface TIKeyboardCandidate(TextInputCore)
- (void)core_updateWithSupplementalItemPrefix:()TextInputCore;
@end

@implementation TIKeyboardCandidate(TextInputCore)

- (void)core_updateWithSupplementalItemPrefix:()TextInputCore
{
  supplementalItemPrefix = [self supplementalItemPrefix];
  [self setSupplementalItemPrefix:a3];
  if (supplementalItemPrefix)
  {
    input = [self input];
    v7 = [input substringFromIndex:1];
    [self setInput:v7];
  }

  if (a3)
  {
    v8 = MEMORY[0x277CCACA8];
    input2 = [self input];
    v9 = [v8 stringWithFormat:@"%C%@", a3, input2];
    [self setInput:v9];
  }
}

@end