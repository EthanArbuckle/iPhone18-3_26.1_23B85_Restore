@interface STUsageReportGraphSegment
- (STUsageReportGraphSegment)initWithAmount:(id)amount amountAsPercentageOfDataPointTotal:(double)total color:(id)color;
@end

@implementation STUsageReportGraphSegment

- (STUsageReportGraphSegment)initWithAmount:(id)amount amountAsPercentageOfDataPointTotal:(double)total color:(id)color
{
  amountCopy = amount;
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = STUsageReportGraphSegment;
  v10 = [(STUsageReportGraphSegment *)&v14 init];
  if (v10)
  {
    v11 = [amountCopy copy];
    amount = v10->_amount;
    v10->_amount = v11;

    v10->_amountAsPercentageOfDataPointTotal = total;
    objc_storeStrong(&v10->_color, color);
  }

  return v10;
}

@end