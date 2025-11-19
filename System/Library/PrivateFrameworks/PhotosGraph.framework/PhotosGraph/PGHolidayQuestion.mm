@interface PGHolidayQuestion
- (PGHolidayQuestion)initWithAssetUUID:(id)a3 holidayName:(id)a4 localizedHolidayName:(id)a5 localFactoryScore:(double)a6;
@end

@implementation PGHolidayQuestion

- (PGHolidayQuestion)initWithAssetUUID:(id)a3 holidayName:(id)a4 localizedHolidayName:(id)a5 localFactoryScore:(double)a6
{
  v24[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v22.receiver = self;
  v22.super_class = PGHolidayQuestion;
  v14 = [(PGHolidayQuestion *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_entityIdentifier, a3);
    v15->_localFactoryScore = a6;
    v15->_state = 0;
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    v17 = v16;

    v23[0] = *MEMORY[0x277D3C940];
    v23[1] = @"localizedHolidayName";
    v24[0] = v12;
    v24[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    additionalInfo = v15->_additionalInfo;
    v15->_additionalInfo = v18;

    v13 = v17;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

@end