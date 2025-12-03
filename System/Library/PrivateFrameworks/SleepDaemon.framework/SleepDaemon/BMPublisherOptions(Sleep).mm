@interface BMPublisherOptions(Sleep)
+ (id)hdsp_optionsForDateInterval:()Sleep reversed:;
@end

@implementation BMPublisherOptions(Sleep)

+ (id)hdsp_optionsForDateInterval:()Sleep reversed:
{
  v5 = MEMORY[0x277CF1A50];
  v6 = a3;
  v7 = [v5 alloc];
  if (a4)
  {
    endDate = [v6 endDate];
    startDate = [v6 startDate];

    v10 = v7;
    v11 = endDate;
    v12 = startDate;
    v13 = 1;
  }

  else
  {
    endDate = [v6 startDate];
    startDate = [v6 endDate];

    v10 = v7;
    v11 = endDate;
    v12 = startDate;
    v13 = 0;
  }

  v14 = [v10 initWithStartDate:v11 endDate:v12 maxEvents:0 lastN:0 reversed:v13];

  return v14;
}

@end