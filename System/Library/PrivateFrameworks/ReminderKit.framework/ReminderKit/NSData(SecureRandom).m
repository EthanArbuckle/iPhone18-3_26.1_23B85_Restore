@interface NSData(SecureRandom)
+ (id)rem_dataWithRandomBytesWithLength:()SecureRandom;
@end

@implementation NSData(SecureRandom)

+ (id)rem_dataWithRandomBytesWithLength:()SecureRandom
{
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:a3];
  v5 = SecRandomCopyBytes(*MEMORY[0x1E697B308], a3, [v4 mutableBytes]);
  if (v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"NSData+Random: SecRandomCopyBytes error: %d", v5}];
  }

  v6 = [v4 copy];

  return v6;
}

@end