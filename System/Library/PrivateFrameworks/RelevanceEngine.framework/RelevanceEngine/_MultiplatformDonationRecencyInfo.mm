@interface _MultiplatformDonationRecencyInfo
- (id)identifierForMostRecentData;
@end

@implementation _MultiplatformDonationRecencyInfo

- (id)identifierForMostRecentData
{
  if (self->_remoteDonationCreationDate)
  {
    localDonationCreationDate = self->_localDonationCreationDate;
    if (localDonationCreationDate)
    {
      v4 = [(NSDate *)localDonationCreationDate laterDate:?];
      v5 = [v4 isEqual:self->_localDonationCreationDate];

      v6 = 8;
      if (v5)
      {
        v6 = 16;
      }
    }

    else
    {
      v6 = 8;
    }
  }

  else
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);

  return v7;
}

@end