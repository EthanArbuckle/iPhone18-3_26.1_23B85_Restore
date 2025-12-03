@interface PCTravelPredictor
+ (void)predictTravel:(id)travel results:(id *)results;
@end

@implementation PCTravelPredictor

+ (void)predictTravel:(id)travel results:(id *)results
{
  if (results)
  {
    *results = objc_alloc_init(MEMORY[0x1E695DF70]);
  }
}

@end