@interface REAccessoryMatchup
- (REAccessoryMatchup)initWithCoder:(id)a3;
- (REAccessoryMatchup)initWithHomeTeamImage:(id)a3 homeTeamName:(id)a4 homeTeamDetail:(id)a5 awayTeamImage:(id)a6 awayTeamName:(id)a7 awayTeamDetail:(id)a8 progress:(id)a9 startDate:(id)a10 status:(unint64_t)a11 dateFetched:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REAccessoryMatchup

- (REAccessoryMatchup)initWithHomeTeamImage:(id)a3 homeTeamName:(id)a4 homeTeamDetail:(id)a5 awayTeamImage:(id)a6 awayTeamName:(id)a7 awayTeamDetail:(id)a8 progress:(id)a9 startDate:(id)a10 status:(unint64_t)a11 dateFetched:(id)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a12;
  v47.receiver = self;
  v47.super_class = REAccessoryMatchup;
  v27 = [(REAccessoryMatchup *)&v47 init];
  if (v27)
  {
    v28 = [v18 copy];
    homeTeamImage = v27->_homeTeamImage;
    v27->_homeTeamImage = v28;

    v30 = [v19 copy];
    homeTeamName = v27->_homeTeamName;
    v27->_homeTeamName = v30;

    v32 = [v20 copy];
    homeTeamDetail = v27->_homeTeamDetail;
    v27->_homeTeamDetail = v32;

    v34 = [v21 copy];
    awayTeamImage = v27->_awayTeamImage;
    v27->_awayTeamImage = v34;

    v36 = [v22 copy];
    awayTeamName = v27->_awayTeamName;
    v27->_awayTeamName = v36;

    v38 = [v23 copy];
    awayTeamDetail = v27->_awayTeamDetail;
    v27->_awayTeamDetail = v38;

    v40 = [v24 copy];
    matchupProgress = v27->_matchupProgress;
    v27->_matchupProgress = v40;

    v42 = [v25 copy];
    matchupStartDate = v27->_matchupStartDate;
    v27->_matchupStartDate = v42;

    v27->_status = a11;
    v44 = [v26 copy];
    matchupDateFetched = v27->_matchupDateFetched;
    v27->_matchupDateFetched = v44;
  }

  return v27;
}

- (REAccessoryMatchup)initWithCoder:(id)a3
{
  v3 = a3;
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingHomeImageKey"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingHomeNameKey"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingHomeDetailKey"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingAwayImageKey"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingAwayNameKey"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingAwayDetailKey"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingMatchupProgressKey"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingStartDateKey"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingStatusKey"];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingDateFetchedKey"];

  v13 = [(REAccessoryMatchup *)self initWithHomeTeamImage:v16 homeTeamName:v15 homeTeamDetail:v4 awayTeamImage:v5 awayTeamName:v6 awayTeamDetail:v7 progress:v8 startDate:v9 status:v11 dateFetched:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  homeTeamImage = self->_homeTeamImage;
  v6 = a3;
  [v6 encodeObject:homeTeamImage forKey:@"REAccessoryMatchupCodingHomeImageKey"];
  [v6 encodeObject:self->_homeTeamName forKey:@"REAccessoryMatchupCodingHomeNameKey"];
  [v6 encodeObject:self->_homeTeamDetail forKey:@"REAccessoryMatchupCodingHomeDetailKey"];
  [v6 encodeObject:self->_awayTeamImage forKey:@"REAccessoryMatchupCodingAwayImageKey"];
  [v6 encodeObject:self->_awayTeamName forKey:@"REAccessoryMatchupCodingAwayNameKey"];
  [v6 encodeObject:self->_awayTeamDetail forKey:@"REAccessoryMatchupCodingAwayDetailKey"];
  [v6 encodeObject:self->_matchupStartDate forKey:@"REAccessoryMatchupCodingStartDateKey"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_status];
  [v6 encodeObject:v5 forKey:@"REAccessoryMatchupCodingStatusKey"];

  [v6 encodeObject:self->_matchupDateFetched forKey:@"REAccessoryMatchupCodingDateFetchedKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = [REAccessoryMatchup alloc];
  v16 = [(REImage *)self->_homeTeamImage copyWithZone:a3];
  v5 = [(NSString *)self->_homeTeamName copyWithZone:a3];
  v6 = [(NSString *)self->_homeTeamDetail copyWithZone:a3];
  v7 = [(REImage *)self->_awayTeamImage copyWithZone:a3];
  v8 = [(NSString *)self->_awayTeamName copyWithZone:a3];
  v9 = [(NSString *)self->_awayTeamDetail copyWithZone:a3];
  v10 = [(NSString *)self->_matchupProgress copyWithZone:a3];
  v11 = [(NSDate *)self->_matchupStartDate copyWithZone:a3];
  status = self->_status;
  v13 = [(NSDate *)self->_matchupDateFetched copyWithZone:a3];
  v14 = [(REAccessoryMatchup *)v17 initWithHomeTeamImage:v16 homeTeamName:v5 homeTeamDetail:v6 awayTeamImage:v7 awayTeamName:v8 awayTeamDetail:v9 progress:v10 startDate:v11 status:status dateFetched:v13];

  return v14;
}

@end