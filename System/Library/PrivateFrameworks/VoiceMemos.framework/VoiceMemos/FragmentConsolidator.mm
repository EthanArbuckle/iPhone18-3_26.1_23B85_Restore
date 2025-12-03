@interface FragmentConsolidator
+ (BOOL)consolidateMovieFragmentsForFileAt:(id)at error:(id *)error;
@end

@implementation FragmentConsolidator

+ (BOOL)consolidateMovieFragmentsForFileAt:(id)at error:(id *)error
{
  atCopy = at;
  v6 = FigMovieUsesFragments();
  if (error && v6)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:0];
  }

  return v6 == 0;
}

@end