@interface WFCachedDonations
- (BOOL)isValidWithBallpark:(unint64_t)a3;
- (WFCachedDonations)initWithDonations:(id)a3 ballpark:(unint64_t)a4;
@end

@implementation WFCachedDonations

- (BOOL)isValidWithBallpark:(unint64_t)a3
{
  if ([(WFCachedDonations *)self ballpark]!= a3)
  {
    return 0;
  }

  v4 = [(WFCachedDonations *)self fetchDate];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-600.0];
  v6 = [v4 compare:v5] == 1;

  return v6;
}

- (WFCachedDonations)initWithDonations:(id)a3 ballpark:(unint64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = WFCachedDonations;
  v7 = [(WFCachedDonations *)&v14 init];
  if (v7)
  {
    v8 = [v6 copy];
    donations = v7->_donations;
    v7->_donations = v8;

    v10 = [MEMORY[0x1E695DF00] date];
    fetchDate = v7->_fetchDate;
    v7->_fetchDate = v10;

    v7->_ballpark = a4;
    v12 = v7;
  }

  return v7;
}

@end