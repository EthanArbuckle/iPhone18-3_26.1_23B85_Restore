@interface PPDecayedFeedbackCounts
- (PPDecayedFeedbackCounts)initWithLatestDate:(id)date engagedExplicitly:(double)explicitly engagedImplicitly:(double)implicitly rejectedExplicitly:(double)rejectedExplicitly rejectedImplicitly:(double)rejectedImplicitly;
- (id)toDictionary;
@end

@implementation PPDecayedFeedbackCounts

- (id)toDictionary
{
  v15[5] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setFormatOptions:275];
  v4 = objc_autoreleasePoolPush();
  v14[0] = @"latestDate";
  latestDate = self->_latestDate;
  null = latestDate;
  if (!latestDate)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v15[0] = null;
  v14[1] = @"engagedExplicitly";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_engagedExplicitly];
  v15[1] = v7;
  v14[2] = @"engagedImplicitly";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_engagedImplicitly];
  v15[2] = v8;
  v14[3] = @"rejectedExplicitly";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rejectedExplicitly];
  v15[3] = v9;
  v14[4] = @"rejectedImplicitly";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rejectedImplicitly];
  v15[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  if (!latestDate)
  {
  }

  objc_autoreleasePoolPop(v4);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PPDecayedFeedbackCounts)initWithLatestDate:(id)date engagedExplicitly:(double)explicitly engagedImplicitly:(double)implicitly rejectedExplicitly:(double)rejectedExplicitly rejectedImplicitly:(double)rejectedImplicitly
{
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = PPDecayedFeedbackCounts;
  v14 = [(PPDecayedFeedbackCounts *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_latestDate, date);
    v15->_engagedExplicitly = explicitly;
    v15->_engagedImplicitly = implicitly;
    v15->_rejectedExplicitly = rejectedExplicitly;
    v15->_rejectedImplicitly = rejectedImplicitly;
  }

  return v15;
}

@end