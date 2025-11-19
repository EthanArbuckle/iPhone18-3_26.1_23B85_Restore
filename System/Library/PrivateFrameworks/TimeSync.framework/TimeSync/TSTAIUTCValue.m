@interface TSTAIUTCValue
- (NSDictionary)dictionary;
- (TSTAIUTCValue)init;
- (TSTAIUTCValue)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSTAIUTCValue

- (TSTAIUTCValue)init
{
  v4.receiver = self;
  v4.super_class = TSTAIUTCValue;
  v2 = [(TSTAIUTCValue *)&v4 init];
  if (v2 && init_onceToken_1 != -1)
  {
    [TSTAIUTCValue init];
  }

  return v2;
}

uint64_t __21__TSTAIUTCValue_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = TSTAIUTCValueDateFormatter;
  TSTAIUTCValueDateFormatter = v0;

  v2 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [TSTAIUTCValueDateFormatter setTimeZone:v2];

  v3 = TSTAIUTCValueDateFormatter;

  return [v3 setFormatOptions:3955];
}

- (TSTAIUTCValue)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(TSTAIUTCValue *)self init];
  if (v5)
  {
    v6 = TSTAIUTCValueDateFormatter;
    v7 = [v4 objectForKeyedSubscript:@"utc_date"];
    v8 = [v6 dateFromString:v7];
    utcDate = v5->_utcDate;
    v5->_utcDate = v8;

    v10 = TSTAIUTCValueDateFormatter;
    v11 = [v4 objectForKeyedSubscript:@"tai_date"];
    v12 = [v10 dateFromString:v11];
    taiDate = v5->_taiDate;
    v5->_taiDate = v12;

    v14 = [v4 objectForKeyedSubscript:@"modified_julian_day"];
    v5->_modifiedJulianDay = [v14 integerValue];

    v15 = [v4 objectForKeyedSubscript:@"constant"];
    [v15 doubleValue];
    v5->_constant = v16;

    v17 = [v4 objectForKeyedSubscript:@"offset"];
    v5->_offset = [v17 integerValue];

    v18 = [v4 objectForKeyedSubscript:@"coefficient"];
    [v18 doubleValue];
    v5->_coefficient = v19;

    coefficient = v5->_coefficient;
    if (coefficient != 0.0)
    {
      v21 = [(NSDate *)v5->_utcDate dateByAddingTimeInterval:v5->_constant + (v5->_modifiedJulianDay - v5->_offset) * coefficient];
      v22 = v5->_taiDate;
      v5->_taiDate = v21;
    }
  }

  return v5;
}

- (NSDictionary)dictionary
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18[0] = @"utc_date";
  v3 = TSTAIUTCValueDateFormatter;
  v4 = [(TSTAIUTCValue *)self utcDate];
  v5 = [v3 stringFromDate:v4];
  v19[0] = v5;
  v18[1] = @"tai_date";
  v6 = TSTAIUTCValueDateFormatter;
  v7 = [(TSTAIUTCValue *)self taiDate];
  v8 = [v6 stringFromDate:v7];
  v19[1] = v8;
  v18[2] = @"modified_julian_day";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TSTAIUTCValue modifiedJulianDay](self, "modifiedJulianDay")}];
  v19[2] = v9;
  v18[3] = @"constant";
  v10 = MEMORY[0x277CCABB0];
  [(TSTAIUTCValue *)self constant];
  v11 = [v10 numberWithDouble:?];
  v19[3] = v11;
  v18[4] = @"offset";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TSTAIUTCValue offset](self, "offset")}];
  v19[4] = v12;
  v18[5] = @"coefficient";
  v13 = MEMORY[0x277CCABB0];
  [(TSTAIUTCValue *)self coefficient];
  v14 = [v13 numberWithDouble:?];
  v19[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TSTAIUTCValue *)self utcDate];
  [v4 setUtcDate:v5];

  v6 = [(TSTAIUTCValue *)self taiDate];
  [v4 setTaiDate:v6];

  [v4 setModifiedJulianDay:{-[TSTAIUTCValue modifiedJulianDay](self, "modifiedJulianDay")}];
  [(TSTAIUTCValue *)self constant];
  [v4 setConstant:?];
  [(TSTAIUTCValue *)self coefficient];
  [v4 setCoefficient:?];
  [v4 setOffset:{-[TSTAIUTCValue offset](self, "offset")}];
  return v4;
}

@end