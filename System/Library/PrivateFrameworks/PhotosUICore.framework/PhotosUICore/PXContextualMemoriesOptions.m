@interface PXContextualMemoriesOptions
- (PXContextualMemoriesOptions)init;
@end

@implementation PXContextualMemoriesOptions

- (PXContextualMemoriesOptions)init
{
  v9.receiver = self;
  v9.super_class = PXContextualMemoriesOptions;
  v2 = [(PXContextualMemoriesOptions *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_accuracy = *MEMORY[0x1E6985CA0];
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = [v4 startOfDayForDate:v5];
    peopleProximityDate = v3->_peopleProximityDate;
    v3->_peopleProximityDate = v6;
  }

  return v3;
}

@end