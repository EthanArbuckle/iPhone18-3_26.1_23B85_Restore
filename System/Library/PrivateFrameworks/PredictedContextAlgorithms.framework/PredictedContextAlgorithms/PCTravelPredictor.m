@interface PCTravelPredictor
+ (void)predictTravel:(id)a3 results:(id *)a4;
@end

@implementation PCTravelPredictor

+ (void)predictTravel:(id)a3 results:(id *)a4
{
  if (a4)
  {
    *a4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }
}

@end