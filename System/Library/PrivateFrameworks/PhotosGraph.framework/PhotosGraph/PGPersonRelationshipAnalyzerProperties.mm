@interface PGPersonRelationshipAnalyzerProperties
- (id)description;
- (id)edgeProperties;
- (void)penalizePersonAgeCategoryDifferentThanMeNode;
- (void)penalizePersonScoresForChild;
- (void)registerAttendance:(unint64_t)attendance amongFamilyHolidays:(unint64_t)holidays;
- (void)registerAttendance:(unint64_t)attendance amongWorkCalendarEvents:(unint64_t)events;
- (void)registerNumberOfExchangedLoveEmojis:(unint64_t)emojis amongExchangedLoveEmojis:(unint64_t)loveEmojis;
- (void)registerNumberOfMomentsAtHome:(unint64_t)home amongMomentsAtHome:(unint64_t)atHome;
- (void)registerNumberOfMomentsAtWork:(unint64_t)work amongMomentsAtWork:(unint64_t)atWork;
- (void)registerNumberOfNightsOut:(unint64_t)out amongNightsOut:(unint64_t)nightsOut;
- (void)registerNumberOfTrips:(unint64_t)trips withTripsScore:(double)score amongTrips:(unint64_t)amongTrips;
- (void)registerNumberOfWeekendMoments:(unint64_t)moments amongWeekends:(unint64_t)weekends;
- (void)registerOneOnOneTripAppearance:(unint64_t)appearance amongOneOnOneTrips:(unint64_t)trips;
- (void)registerParentContactName;
- (void)registerPersonAsMeNodeChild;
- (void)registerTopPersonAmongTopPeople:(unint64_t)people;
@end

@implementation PGPersonRelationshipAnalyzerProperties

- (id)edgeProperties
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->_familyHolidayAttendanceRatio > 0.0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [dictionary setObject:v4 forKeyedSubscript:@"rfamhol"];
  }

  if (self->_hasParentContactName)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v5 forKeyedSubscript:@"rparnam"];
  }

  if (self->_hasSameFamilyNameAsMePerson)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v6 forKeyedSubscript:@"rfamnam"];
  }

  if (self->_numberOfMomentsAtHome)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [dictionary setObject:v7 forKeyedSubscript:@"gwnummmtshome"];
  }

  if (self->_hasAnniversaryDate)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v8 forKeyedSubscript:@"rhasanniv"];
  }

  if (self->_isTopTwoPersonSocialGroup)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v9 forKeyedSubscript:@"rtop2sg"];
  }

  if (self->_numberOfLoveEmojisExchanged)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [dictionary setObject:v10 forKeyedSubscript:@"rlovexch"];
  }

  if (self->_isTopPerson)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v11 forKeyedSubscript:@"rtop"];
  }

  if (self->_friendNightOutAttendanceRatio > 0.0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [dictionary setObject:v12 forKeyedSubscript:@"rfrndnghtout"];
  }

  if (self->_oneOnOneTripAttendanceRatio > 0.0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [dictionary setObject:v13 forKeyedSubscript:@"rprtnrtrip"];
  }

  if (self->_tripAttendanceRatio > 0.0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [dictionary setObject:v14 forKeyedSubscript:@"rfrfamtrip"];
  }

  if (self->_weekendAppearanceRatio > 0.0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [dictionary setObject:v15 forKeyedSubscript:@"rwkend"];
  }

  if (self->_momentsAtWorkAppearancesRatio > 0.0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [dictionary setObject:v16 forKeyedSubscript:@"rwork"];
  }

  if (self->_calendarEventAttendanceRatio > 0.0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [dictionary setObject:v17 forKeyedSubscript:@"rcal"];
  }

  if (self->_personAgeDifferentThanMeNode)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v18 forKeyedSubscript:@"ragediff"];
  }

  if (self->_personOldEnoughToBeMeNodeParentOrGrandparent)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v19 forKeyedSubscript:@"rold"];
  }

  if (self->_personInferredToBeMeNodeChild)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v20 forKeyedSubscript:@"rchild"];
  }

  return dictionary;
}

- (id)description
{
  edgeProperties = [(PGPersonRelationshipAnalyzerProperties *)self edgeProperties];
  v3 = [edgeProperties description];

  return v3;
}

- (void)registerPersonAsMeNodeChild
{
  if (!self->_hasParentContactName)
  {
    self->_personInferredToBeMeNodeChild = 1;
    self->_childScore = self->_childScore + 1.0;
  }
}

- (void)penalizePersonScoresForChild
{
  self->_personInferredToBeChild = 1;
  self->_partnerScore = 0.0;
  self->_coworkerScore = 0.0;
  self->_parentScore = 0.0;
}

- (void)penalizePersonAgeCategoryDifferentThanMeNode
{
  self->_personAgeDifferentThanMeNode = 1;
  self->_friendScore = self->_friendScore * 0.75;
  self->_partnerScore = self->_partnerScore * 0.75;
}

- (void)registerNumberOfMomentsAtWork:(unint64_t)work amongMomentsAtWork:(unint64_t)atWork
{
  if (work)
  {
    if (atWork)
    {
      v4 = work / atWork;
      self->_momentsAtWorkAppearancesRatio = v4;
      self->_coworkerScore = v4 + self->_coworkerScore;
    }
  }
}

- (void)registerAttendance:(unint64_t)attendance amongWorkCalendarEvents:(unint64_t)events
{
  if (events)
  {
    v4 = attendance / events;
    self->_calendarEventAttendanceRatio = v4;
    self->_coworkerScore = v4 + self->_coworkerScore;
  }
}

- (void)registerNumberOfWeekendMoments:(unint64_t)moments amongWeekends:(unint64_t)weekends
{
  if (moments)
  {
    if (weekends)
    {
      v4 = moments / weekends;
      self->_weekendAppearanceRatio = v4;
      self->_friendScore = v4 + self->_friendScore;
    }
  }
}

- (void)registerNumberOfTrips:(unint64_t)trips withTripsScore:(double)score amongTrips:(unint64_t)amongTrips
{
  if (trips)
  {
    if (score > 0.0 && amongTrips != 0)
    {
      v6 = trips / amongTrips;
      self->_tripAttendanceRatio = v6;
      v7 = v6 * score;
      self->_friendScore = v7 + self->_friendScore;
      self->_familyScore = self->_familyScore + v7 * 0.25;
    }
  }
}

- (void)registerOneOnOneTripAppearance:(unint64_t)appearance amongOneOnOneTrips:(unint64_t)trips
{
  if (appearance)
  {
    if (trips)
    {
      v4 = appearance / trips;
      self->_oneOnOneTripAttendanceRatio = v4;
      self->_partnerScore = v4 + self->_partnerScore;
    }
  }
}

- (void)registerNumberOfNightsOut:(unint64_t)out amongNightsOut:(unint64_t)nightsOut
{
  if (out)
  {
    if (nightsOut)
    {
      v4 = out / nightsOut;
      self->_friendNightOutAttendanceRatio = v4;
      self->_friendScore = v4 + self->_friendScore;
    }
  }
}

- (void)registerTopPersonAmongTopPeople:(unint64_t)people
{
  if (people)
  {
    self->_isTopPerson = 1;
    v3 = 1.0 / people;
    self->_friendScore = v3 + self->_friendScore;
    self->_partnerScore = self->_partnerScore + v3 * 0.5;
  }
}

- (void)registerNumberOfExchangedLoveEmojis:(unint64_t)emojis amongExchangedLoveEmojis:(unint64_t)loveEmojis
{
  if (emojis)
  {
    if (loveEmojis)
    {
      self->_numberOfLoveEmojisExchanged = emojis;
      self->_partnerScore = emojis / loveEmojis + self->_partnerScore;
    }
  }
}

- (void)registerNumberOfMomentsAtHome:(unint64_t)home amongMomentsAtHome:(unint64_t)atHome
{
  if (home)
  {
    if (atHome)
    {
      self->_numberOfMomentsAtHome = home;
      v4 = home / atHome;
      self->_ratioOfOfMomentsAtHome = v4;
      self->_familyScore = v4 + self->_familyScore;
    }
  }
}

- (void)registerParentContactName
{
  self->_hasParentContactName = 1;
  __asm { FMOV            V1.2D, #1.0 }

  *&self->_familyScore = vaddq_f64(*&self->_familyScore, _Q1);
}

- (void)registerAttendance:(unint64_t)attendance amongFamilyHolidays:(unint64_t)holidays
{
  if (attendance)
  {
    if (holidays)
    {
      v4 = attendance / holidays;
      self->_familyHolidayAttendanceRatio = v4;
      self->_familyScore = v4 + self->_familyScore;
    }
  }
}

@end