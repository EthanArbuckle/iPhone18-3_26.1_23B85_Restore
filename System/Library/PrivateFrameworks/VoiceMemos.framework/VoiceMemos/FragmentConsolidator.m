@interface FragmentConsolidator
+ (BOOL)consolidateMovieFragmentsForFileAt:(id)a3 error:(id *)a4;
@end

@implementation FragmentConsolidator

+ (BOOL)consolidateMovieFragmentsForFileAt:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = FigMovieUsesFragments();
  if (a4 && v6)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:0];
  }

  return v6 == 0;
}

@end