@interface TSTAIUTCValue
- (NSDictionary)dictionary;
- (TSTAIUTCValue)init;
- (TSTAIUTCValue)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSTAIUTCValue

- (TSTAIUTCValue)init
{
  v4.receiver = self;
  v4.super_class = TSTAIUTCValue;
  v2 = [(TSTAIUTCValue *)&v4 init];
  if (v2 && qword_100058870 != -1)
  {
    sub_10002AE80();
  }

  return v2;
}

- (TSTAIUTCValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(TSTAIUTCValue *)self init];
  if (v5)
  {
    v6 = qword_100058868;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"utc_date"];
    v8 = [v6 dateFromString:v7];
    utcDate = v5->_utcDate;
    v5->_utcDate = v8;

    v10 = qword_100058868;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"tai_date"];
    v12 = [v10 dateFromString:v11];
    taiDate = v5->_taiDate;
    v5->_taiDate = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"modified_julian_day"];
    v5->_modifiedJulianDay = [v14 integerValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"constant"];
    [v15 doubleValue];
    v5->_constant = v16;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"offset"];
    v5->_offset = [v17 integerValue];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"coefficient"];
    [v18 doubleValue];
    v5->_coefficient = v19;

    coefficient = v5->_coefficient;
    if (coefficient != 0.0)
    {
      coefficient = [(NSDate *)v5->_utcDate dateByAddingTimeInterval:v5->_constant + (v5->_modifiedJulianDay - v5->_offset) * coefficient];
      v22 = v5->_taiDate;
      v5->_taiDate = coefficient;
    }
  }

  return v5;
}

- (NSDictionary)dictionary
{
  v15[0] = @"utc_date";
  v3 = qword_100058868;
  utcDate = [(TSTAIUTCValue *)self utcDate];
  v5 = [v3 stringFromDate:utcDate];
  v16[0] = v5;
  v15[1] = @"tai_date";
  v6 = qword_100058868;
  taiDate = [(TSTAIUTCValue *)self taiDate];
  v8 = [v6 stringFromDate:taiDate];
  v16[1] = v8;
  v15[2] = @"modified_julian_day";
  v9 = [NSNumber numberWithUnsignedInteger:[(TSTAIUTCValue *)self modifiedJulianDay]];
  v16[2] = v9;
  v15[3] = @"constant";
  [(TSTAIUTCValue *)self constant];
  v10 = [NSNumber numberWithDouble:?];
  v16[3] = v10;
  v15[4] = @"offset";
  v11 = [NSNumber numberWithUnsignedInteger:[(TSTAIUTCValue *)self offset]];
  v16[4] = v11;
  v15[5] = @"coefficient";
  [(TSTAIUTCValue *)self coefficient];
  v12 = [NSNumber numberWithDouble:?];
  v16[5] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  utcDate = [(TSTAIUTCValue *)self utcDate];
  [v4 setUtcDate:utcDate];

  taiDate = [(TSTAIUTCValue *)self taiDate];
  [v4 setTaiDate:taiDate];

  [v4 setModifiedJulianDay:{-[TSTAIUTCValue modifiedJulianDay](self, "modifiedJulianDay")}];
  [(TSTAIUTCValue *)self constant];
  [v4 setConstant:?];
  [(TSTAIUTCValue *)self coefficient];
  [v4 setCoefficient:?];
  [v4 setOffset:{-[TSTAIUTCValue offset](self, "offset")}];
  return v4;
}

@end