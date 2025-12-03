@interface REAccessoryMatchup
- (REAccessoryMatchup)initWithCoder:(id)coder;
- (REAccessoryMatchup)initWithHomeTeamImage:(id)image homeTeamName:(id)name homeTeamDetail:(id)detail awayTeamImage:(id)teamImage awayTeamName:(id)teamName awayTeamDetail:(id)teamDetail progress:(id)progress startDate:(id)self0 status:(unint64_t)self1 dateFetched:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REAccessoryMatchup

- (REAccessoryMatchup)initWithHomeTeamImage:(id)image homeTeamName:(id)name homeTeamDetail:(id)detail awayTeamImage:(id)teamImage awayTeamName:(id)teamName awayTeamDetail:(id)teamDetail progress:(id)progress startDate:(id)self0 status:(unint64_t)self1 dateFetched:(id)self2
{
  imageCopy = image;
  nameCopy = name;
  detailCopy = detail;
  teamImageCopy = teamImage;
  teamNameCopy = teamName;
  teamDetailCopy = teamDetail;
  progressCopy = progress;
  dateCopy = date;
  fetchedCopy = fetched;
  v47.receiver = self;
  v47.super_class = REAccessoryMatchup;
  v27 = [(REAccessoryMatchup *)&v47 init];
  if (v27)
  {
    v28 = [imageCopy copy];
    homeTeamImage = v27->_homeTeamImage;
    v27->_homeTeamImage = v28;

    v30 = [nameCopy copy];
    homeTeamName = v27->_homeTeamName;
    v27->_homeTeamName = v30;

    v32 = [detailCopy copy];
    homeTeamDetail = v27->_homeTeamDetail;
    v27->_homeTeamDetail = v32;

    v34 = [teamImageCopy copy];
    awayTeamImage = v27->_awayTeamImage;
    v27->_awayTeamImage = v34;

    v36 = [teamNameCopy copy];
    awayTeamName = v27->_awayTeamName;
    v27->_awayTeamName = v36;

    v38 = [teamDetailCopy copy];
    awayTeamDetail = v27->_awayTeamDetail;
    v27->_awayTeamDetail = v38;

    v40 = [progressCopy copy];
    matchupProgress = v27->_matchupProgress;
    v27->_matchupProgress = v40;

    v42 = [dateCopy copy];
    matchupStartDate = v27->_matchupStartDate;
    v27->_matchupStartDate = v42;

    v27->_status = status;
    v44 = [fetchedCopy copy];
    matchupDateFetched = v27->_matchupDateFetched;
    v27->_matchupDateFetched = v44;
  }

  return v27;
}

- (REAccessoryMatchup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingHomeImageKey"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingHomeNameKey"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingHomeDetailKey"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingAwayImageKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingAwayNameKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingAwayDetailKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingMatchupProgressKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingStartDateKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingStatusKey"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"REAccessoryMatchupCodingDateFetchedKey"];

  v13 = [(REAccessoryMatchup *)self initWithHomeTeamImage:v16 homeTeamName:v15 homeTeamDetail:v4 awayTeamImage:v5 awayTeamName:v6 awayTeamDetail:v7 progress:v8 startDate:v9 status:unsignedIntegerValue dateFetched:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  homeTeamImage = self->_homeTeamImage;
  coderCopy = coder;
  [coderCopy encodeObject:homeTeamImage forKey:@"REAccessoryMatchupCodingHomeImageKey"];
  [coderCopy encodeObject:self->_homeTeamName forKey:@"REAccessoryMatchupCodingHomeNameKey"];
  [coderCopy encodeObject:self->_homeTeamDetail forKey:@"REAccessoryMatchupCodingHomeDetailKey"];
  [coderCopy encodeObject:self->_awayTeamImage forKey:@"REAccessoryMatchupCodingAwayImageKey"];
  [coderCopy encodeObject:self->_awayTeamName forKey:@"REAccessoryMatchupCodingAwayNameKey"];
  [coderCopy encodeObject:self->_awayTeamDetail forKey:@"REAccessoryMatchupCodingAwayDetailKey"];
  [coderCopy encodeObject:self->_matchupStartDate forKey:@"REAccessoryMatchupCodingStartDateKey"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_status];
  [coderCopy encodeObject:v5 forKey:@"REAccessoryMatchupCodingStatusKey"];

  [coderCopy encodeObject:self->_matchupDateFetched forKey:@"REAccessoryMatchupCodingDateFetchedKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = [REAccessoryMatchup alloc];
  v16 = [(REImage *)self->_homeTeamImage copyWithZone:zone];
  v5 = [(NSString *)self->_homeTeamName copyWithZone:zone];
  v6 = [(NSString *)self->_homeTeamDetail copyWithZone:zone];
  v7 = [(REImage *)self->_awayTeamImage copyWithZone:zone];
  v8 = [(NSString *)self->_awayTeamName copyWithZone:zone];
  v9 = [(NSString *)self->_awayTeamDetail copyWithZone:zone];
  v10 = [(NSString *)self->_matchupProgress copyWithZone:zone];
  v11 = [(NSDate *)self->_matchupStartDate copyWithZone:zone];
  status = self->_status;
  v13 = [(NSDate *)self->_matchupDateFetched copyWithZone:zone];
  v14 = [(REAccessoryMatchup *)v17 initWithHomeTeamImage:v16 homeTeamName:v5 homeTeamDetail:v6 awayTeamImage:v7 awayTeamName:v8 awayTeamDetail:v9 progress:v10 startDate:v11 status:status dateFetched:v13];

  return v14;
}

@end