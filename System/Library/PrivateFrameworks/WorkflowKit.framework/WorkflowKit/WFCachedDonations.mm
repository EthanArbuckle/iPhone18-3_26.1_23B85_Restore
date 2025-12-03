@interface WFCachedDonations
- (BOOL)isValidWithBallpark:(unint64_t)ballpark;
- (WFCachedDonations)initWithDonations:(id)donations ballpark:(unint64_t)ballpark;
@end

@implementation WFCachedDonations

- (BOOL)isValidWithBallpark:(unint64_t)ballpark
{
  if ([(WFCachedDonations *)self ballpark]!= ballpark)
  {
    return 0;
  }

  fetchDate = [(WFCachedDonations *)self fetchDate];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-600.0];
  v6 = [fetchDate compare:v5] == 1;

  return v6;
}

- (WFCachedDonations)initWithDonations:(id)donations ballpark:(unint64_t)ballpark
{
  donationsCopy = donations;
  v14.receiver = self;
  v14.super_class = WFCachedDonations;
  v7 = [(WFCachedDonations *)&v14 init];
  if (v7)
  {
    v8 = [donationsCopy copy];
    donations = v7->_donations;
    v7->_donations = v8;

    date = [MEMORY[0x1E695DF00] date];
    fetchDate = v7->_fetchDate;
    v7->_fetchDate = date;

    v7->_ballpark = ballpark;
    v12 = v7;
  }

  return v7;
}

@end