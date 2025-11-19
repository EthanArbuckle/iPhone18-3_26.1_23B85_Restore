@interface STUsageReportGraphSegment
- (STUsageReportGraphSegment)initWithAmount:(id)a3 amountAsPercentageOfDataPointTotal:(double)a4 color:(id)a5;
@end

@implementation STUsageReportGraphSegment

- (STUsageReportGraphSegment)initWithAmount:(id)a3 amountAsPercentageOfDataPointTotal:(double)a4 color:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = STUsageReportGraphSegment;
  v10 = [(STUsageReportGraphSegment *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    amount = v10->_amount;
    v10->_amount = v11;

    v10->_amountAsPercentageOfDataPointTotal = a4;
    objc_storeStrong(&v10->_color, a5);
  }

  return v10;
}

@end