@interface TILiveConversionCandidate(TextInputCore)
- (void)initWithMecabraCandidate:()TextInputCore candidate:;
@end

@implementation TILiveConversionCandidate(TextInputCore)

- (void)initWithMecabraCandidate:()TextInputCore candidate:
{
  v7 = a4;
  v12.receiver = a1;
  v12.super_class = &off_28403A768;
  v8 = objc_msgSendSuper2(&v12, sel_initWithMecabraCandidate_, a3);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8[*MEMORY[0x277D6F578]], a4);
    v11.receiver = v9;
    v11.super_class = &off_28403A768;
    [v9 setPartialCandidate:{objc_msgSendSuper2(&v11, sel_isPartialCandidate)}];
  }

  return v9;
}

@end