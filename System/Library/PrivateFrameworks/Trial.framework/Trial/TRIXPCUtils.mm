@interface TRIXPCUtils
+ (BOOL)validateSafeASCIISubsetIdentifier:(id)identifier;
@end

@implementation TRIXPCUtils

+ (BOOL)validateSafeASCIISubsetIdentifier:(id)identifier
{
  v3 = qword_280ACAE68;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    dispatch_once(&qword_280ACAE68, &__block_literal_global_14);
  }

  v5 = [identifierCopy rangeOfCharacterFromSet:_MergedGlobals_12];

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

void __49__TRIXPCUtils_validateSafeASCIISubsetIdentifier___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_.-"];
  v2 = [v1 invertedSet];
  v3 = _MergedGlobals_12;
  _MergedGlobals_12 = v2;

  objc_autoreleasePoolPop(v0);
}

@end