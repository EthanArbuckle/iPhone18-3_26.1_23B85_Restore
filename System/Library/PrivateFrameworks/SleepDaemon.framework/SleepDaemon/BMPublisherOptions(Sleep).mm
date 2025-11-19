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
    v8 = [v6 endDate];
    v9 = [v6 startDate];

    v10 = v7;
    v11 = v8;
    v12 = v9;
    v13 = 1;
  }

  else
  {
    v8 = [v6 startDate];
    v9 = [v6 endDate];

    v10 = v7;
    v11 = v8;
    v12 = v9;
    v13 = 0;
  }

  v14 = [v10 initWithStartDate:v11 endDate:v12 maxEvents:0 lastN:0 reversed:v13];

  return v14;
}

@end