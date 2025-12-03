@interface PGHolidayQuestion
- (PGHolidayQuestion)initWithAssetUUID:(id)d holidayName:(id)name localizedHolidayName:(id)holidayName localFactoryScore:(double)score;
@end

@implementation PGHolidayQuestion

- (PGHolidayQuestion)initWithAssetUUID:(id)d holidayName:(id)name localizedHolidayName:(id)holidayName localFactoryScore:(double)score
{
  v24[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  holidayNameCopy = holidayName;
  v22.receiver = self;
  v22.super_class = PGHolidayQuestion;
  v14 = [(PGHolidayQuestion *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_entityIdentifier, d);
    v15->_localFactoryScore = score;
    v15->_state = 0;
    if (holidayNameCopy)
    {
      v16 = holidayNameCopy;
    }

    else
    {
      v16 = nameCopy;
    }

    v17 = v16;

    v23[0] = *MEMORY[0x277D3C940];
    v23[1] = @"localizedHolidayName";
    v24[0] = nameCopy;
    v24[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    additionalInfo = v15->_additionalInfo;
    v15->_additionalInfo = v18;

    holidayNameCopy = v17;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

@end