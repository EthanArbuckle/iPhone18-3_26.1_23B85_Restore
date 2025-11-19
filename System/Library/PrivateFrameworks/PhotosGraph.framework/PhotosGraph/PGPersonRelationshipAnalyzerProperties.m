@interface PGPersonRelationshipAnalyzerProperties
- (id)description;
- (id)edgeProperties;
- (void)penalizePersonAgeCategoryDifferentThanMeNode;
- (void)penalizePersonScoresForChild;
- (void)registerAttendance:(unint64_t)a3 amongFamilyHolidays:(unint64_t)a4;
- (void)registerAttendance:(unint64_t)a3 amongWorkCalendarEvents:(unint64_t)a4;
- (void)registerNumberOfExchangedLoveEmojis:(unint64_t)a3 amongExchangedLoveEmojis:(unint64_t)a4;
- (void)registerNumberOfMomentsAtHome:(unint64_t)a3 amongMomentsAtHome:(unint64_t)a4;
- (void)registerNumberOfMomentsAtWork:(unint64_t)a3 amongMomentsAtWork:(unint64_t)a4;
- (void)registerNumberOfNightsOut:(unint64_t)a3 amongNightsOut:(unint64_t)a4;
- (void)registerNumberOfTrips:(unint64_t)a3 withTripsScore:(double)a4 amongTrips:(unint64_t)a5;
- (void)registerNumberOfWeekendMoments:(unint64_t)a3 amongWeekends:(unint64_t)a4;
- (void)registerOneOnOneTripAppearance:(unint64_t)a3 amongOneOnOneTrips:(unint64_t)a4;
- (void)registerParentContactName;
- (void)registerPersonAsMeNodeChild;
- (void)registerTopPersonAmongTopPeople:(unint64_t)a3;
@end

@implementation PGPersonRelationshipAnalyzerProperties

- (id)edgeProperties
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (self->_familyHolidayAttendanceRatio > 0.0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v3 setObject:v4 forKeyedSubscript:@"rfamhol"];
  }

  if (self->_hasParentContactName)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v5 forKeyedSubscript:@"rparnam"];
  }

  if (self->_hasSameFamilyNameAsMePerson)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v6 forKeyedSubscript:@"rfamnam"];
  }

  if (self->_numberOfMomentsAtHome)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v7 forKeyedSubscript:@"gwnummmtshome"];
  }

  if (self->_hasAnniversaryDate)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v8 forKeyedSubscript:@"rhasanniv"];
  }

  if (self->_isTopTwoPersonSocialGroup)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v9 forKeyedSubscript:@"rtop2sg"];
  }

  if (self->_numberOfLoveEmojisExchanged)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v10 forKeyedSubscript:@"rlovexch"];
  }

  if (self->_isTopPerson)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v11 forKeyedSubscript:@"rtop"];
  }

  if (self->_friendNightOutAttendanceRatio > 0.0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v3 setObject:v12 forKeyedSubscript:@"rfrndnghtout"];
  }

  if (self->_oneOnOneTripAttendanceRatio > 0.0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"rprtnrtrip"];
  }

  if (self->_tripAttendanceRatio > 0.0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v3 setObject:v14 forKeyedSubscript:@"rfrfamtrip"];
  }

  if (self->_weekendAppearanceRatio > 0.0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v3 setObject:v15 forKeyedSubscript:@"rwkend"];
  }

  if (self->_momentsAtWorkAppearancesRatio > 0.0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v3 setObject:v16 forKeyedSubscript:@"rwork"];
  }

  if (self->_calendarEventAttendanceRatio > 0.0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v3 setObject:v17 forKeyedSubscript:@"rcal"];
  }

  if (self->_personAgeDifferentThanMeNode)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v18 forKeyedSubscript:@"ragediff"];
  }

  if (self->_personOldEnoughToBeMeNodeParentOrGrandparent)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v19 forKeyedSubscript:@"rold"];
  }

  if (self->_personInferredToBeMeNodeChild)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v20 forKeyedSubscript:@"rchild"];
  }

  return v3;
}

- (id)description
{
  v2 = [(PGPersonRelationshipAnalyzerProperties *)self edgeProperties];
  v3 = [v2 description];

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

- (void)registerNumberOfMomentsAtWork:(unint64_t)a3 amongMomentsAtWork:(unint64_t)a4
{
  if (a3)
  {
    if (a4)
    {
      v4 = a3 / a4;
      self->_momentsAtWorkAppearancesRatio = v4;
      self->_coworkerScore = v4 + self->_coworkerScore;
    }
  }
}

- (void)registerAttendance:(unint64_t)a3 amongWorkCalendarEvents:(unint64_t)a4
{
  if (a4)
  {
    v4 = a3 / a4;
    self->_calendarEventAttendanceRatio = v4;
    self->_coworkerScore = v4 + self->_coworkerScore;
  }
}

- (void)registerNumberOfWeekendMoments:(unint64_t)a3 amongWeekends:(unint64_t)a4
{
  if (a3)
  {
    if (a4)
    {
      v4 = a3 / a4;
      self->_weekendAppearanceRatio = v4;
      self->_friendScore = v4 + self->_friendScore;
    }
  }
}

- (void)registerNumberOfTrips:(unint64_t)a3 withTripsScore:(double)a4 amongTrips:(unint64_t)a5
{
  if (a3)
  {
    if (a4 > 0.0 && a5 != 0)
    {
      v6 = a3 / a5;
      self->_tripAttendanceRatio = v6;
      v7 = v6 * a4;
      self->_friendScore = v7 + self->_friendScore;
      self->_familyScore = self->_familyScore + v7 * 0.25;
    }
  }
}

- (void)registerOneOnOneTripAppearance:(unint64_t)a3 amongOneOnOneTrips:(unint64_t)a4
{
  if (a3)
  {
    if (a4)
    {
      v4 = a3 / a4;
      self->_oneOnOneTripAttendanceRatio = v4;
      self->_partnerScore = v4 + self->_partnerScore;
    }
  }
}

- (void)registerNumberOfNightsOut:(unint64_t)a3 amongNightsOut:(unint64_t)a4
{
  if (a3)
  {
    if (a4)
    {
      v4 = a3 / a4;
      self->_friendNightOutAttendanceRatio = v4;
      self->_friendScore = v4 + self->_friendScore;
    }
  }
}

- (void)registerTopPersonAmongTopPeople:(unint64_t)a3
{
  if (a3)
  {
    self->_isTopPerson = 1;
    v3 = 1.0 / a3;
    self->_friendScore = v3 + self->_friendScore;
    self->_partnerScore = self->_partnerScore + v3 * 0.5;
  }
}

- (void)registerNumberOfExchangedLoveEmojis:(unint64_t)a3 amongExchangedLoveEmojis:(unint64_t)a4
{
  if (a3)
  {
    if (a4)
    {
      self->_numberOfLoveEmojisExchanged = a3;
      self->_partnerScore = a3 / a4 + self->_partnerScore;
    }
  }
}

- (void)registerNumberOfMomentsAtHome:(unint64_t)a3 amongMomentsAtHome:(unint64_t)a4
{
  if (a3)
  {
    if (a4)
    {
      self->_numberOfMomentsAtHome = a3;
      v4 = a3 / a4;
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

- (void)registerAttendance:(unint64_t)a3 amongFamilyHolidays:(unint64_t)a4
{
  if (a3)
  {
    if (a4)
    {
      v4 = a3 / a4;
      self->_familyHolidayAttendanceRatio = v4;
      self->_familyScore = v4 + self->_familyScore;
    }
  }
}

@end