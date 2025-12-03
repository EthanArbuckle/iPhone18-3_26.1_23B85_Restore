@interface PGGraphStatisticsMetricEvent
- (PGGraphStatisticsMetricEvent)initWithGraphManager:(id)manager;
- (id)payload;
- (void)_fillBusinessStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillFrequentLocationsStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillGenericStatisticsWithGraph:(id)graph;
- (void)_fillHolidaysStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillHomeWorkStatisticsWithGraph:(id)graph;
- (void)_fillMeaningfulEventsStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillMomentStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillPeopleStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillPetStatisticsWithGraph:(id)graph;
- (void)_fillPublicEventStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillTripStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_saveKey:(id)key doubleValue:(double)value payload:(id)payload;
- (void)_saveKey:(id)key integerValue:(unint64_t)value payload:(id)payload;
- (void)gatherMetricsWithProgressBlock:(id)block;
@end

@implementation PGGraphStatisticsMetricEvent

- (void)_saveKey:(id)key integerValue:(unint64_t)value payload:(id)payload
{
  if (PGMetricsUnavailableIntegerValue != value)
  {
    v8 = MEMORY[0x277CCABB0];
    payloadCopy = payload;
    keyCopy = key;
    v11 = [v8 numberWithUnsignedInteger:value];
    [payloadCopy setObject:v11 forKeyedSubscript:keyCopy];
  }
}

- (void)_saveKey:(id)key doubleValue:(double)value payload:(id)payload
{
  if (*&PGMetricsUnavailableDoubleValue != value)
  {
    v7 = MEMORY[0x277CCABB0];
    payloadCopy = payload;
    keyCopy = key;
    v10 = [v7 numberWithDouble:value];
    [payloadCopy setObject:v10 forKeyedSubscript:keyCopy];
  }
}

- (id)payload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"librarySize" integerValue:self->_librarySize payload:dictionary];
  v4 = [PGCuratedLibraryIntelligenceMetricEvent librarySizeRangeDescriptionForLibrarySizeRange:self->_librarySizeRange];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"librarySizeRange" stringValue:v4 payload:dictionary];

  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfSelfies" integerValue:self->_numberOfSelfies payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfSelfies" doubleValue:dictionary payload:self->_ratioOfSelfies];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMoments" integerValue:self->_numberOfMoments payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfBusinessNodes" integerValue:self->_numberOfBusinessNodes payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsLinkedToABusinessNode" integerValue:self->_numberOfMomentsLinkedToABusinessNode payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsLinkedToABusinessNode" doubleValue:dictionary payload:self->_ratioOfMomentsLinkedToABusinessNode];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMoments" integerValue:self->_numberOfMeaningfulMoments payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMeaningfulMoments" doubleValue:dictionary payload:self->_ratioOfMeaningfulMoments];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsGathering" integerValue:self->_numberOfMeaningfulMomentsGathering payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivity" integerValue:self->_numberOfMeaningfulMomentsActivity payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivityBeach" integerValue:self->_numberOfMeaningfulMomentsActivityBeach payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivityDiving" integerValue:self->_numberOfMeaningfulMomentsActivityDiving payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivityHiking" integerValue:self->_numberOfMeaningfulMomentsActivityHiking payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivityClimbing" integerValue:self->_numberOfMeaningfulMomentsActivityClimbing payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivityWinterSport" integerValue:self->_numberOfMeaningfulMomentsActivityWinterSport payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainment" integerValue:self->_numberOfMeaningfulMomentsEntertainment payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentAmusementPark" integerValue:self->_numberOfMeaningfulMomentsEntertainmentAmusementPark payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentNightOut" integerValue:self->_numberOfMeaningfulMomentsEntertainmentNightOut payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentPerformance" integerValue:self->_numberOfMeaningfulMomentsEntertainmentPerformance payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentConcert" integerValue:self->_numberOfMeaningfulMomentsEntertainmentConcert payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentFestival" integerValue:self->_numberOfMeaningfulMomentsEntertainmentFestival payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentTheater" integerValue:self->_numberOfMeaningfulMomentsEntertainmentTheater payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentDance" integerValue:self->_numberOfMeaningfulMomentsEntertainmentDance payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentMuseum" integerValue:self->_numberOfMeaningfulMomentsEntertainmentMuseum payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentSportEvent" integerValue:self->_numberOfMeaningfulMomentsEntertainmentSportEvent payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsCelebration" integerValue:self->_numberOfMeaningfulMomentsCelebration payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsCelebrationAnniversary" integerValue:self->_numberOfMeaningfulMomentsCelebrationAnniversary payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsCelebrationBirthday" integerValue:self->_numberOfMeaningfulMomentsCelebrationBirthday payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsCelebrationHolidayEvent" integerValue:self->_numberOfMeaningfulMomentsCelebrationHolidayEvent payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsCelebrationWedding" integerValue:self->_numberOfMeaningfulMomentsCelebrationWedding payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsRestaurant" integerValue:self->_numberOfMeaningfulMomentsRestaurant payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsRestaurantBreakfast" integerValue:self->_numberOfMeaningfulMomentsRestaurantBreakfast payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsRestaurantLunch" integerValue:self->_numberOfMeaningfulMomentsRestaurantLunch payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsRestaurantDinner" integerValue:self->_numberOfMeaningfulMomentsRestaurantDinner payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEvents" integerValue:self->_numberOfPublicEvents payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryMusicConcerts" integerValue:self->_numberOfPublicEventsCategoryMusicConcerts payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryNightLife" integerValue:self->_numberOfPublicEventsCategoryNightLife payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryTheater" integerValue:self->_numberOfPublicEventsCategoryTheater payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryDance" integerValue:self->_numberOfPublicEventsCategoryDance payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryFestivalsAndFairs" integerValue:self->_numberOfPublicEventsCategoryFestivalsAndFairs payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryArtsAndMuseums" integerValue:self->_numberOfPublicEventsCategoryArtsAndMuseums payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategorySports" integerValue:self->_numberOfPublicEventsCategorySports payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryBusinessAndTechnology" integerValue:self->_numberOfPublicEventsCategoryBusinessAndTechnology payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryCommunity" integerValue:self->_numberOfPublicEventsCategoryCommunity payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryEducational" integerValue:self->_numberOfPublicEventsCategoryEducational payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryFamilyEvents" integerValue:self->_numberOfPublicEventsCategoryFamilyEvents payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryTours" integerValue:self->_numberOfPublicEventsCategoryTours payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryAppleEvents" integerValue:self->_numberOfPublicEventsCategoryAppleEvents payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsLinkedToAPublicEvent" integerValue:self->_numberOfMomentsLinkedToAPublicEvent payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsLinkedToAPublicEvent" doubleValue:dictionary payload:self->_ratioOfMomentsLinkedToAPublicEvent];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"hasMeNode" BOOLValue:self->_hasMeNode payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"hasNamedMeNode" BOOLValue:self->_hasNamedMeNode payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPeople" integerValue:self->_numberOfPeople payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeopleLinkedToContact" doubleValue:dictionary payload:self->_ratioOfPeopleLinkedToContact];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeopleNotLinkedToContact" doubleValue:dictionary payload:self->_ratioOfPeopleNotLinkedToContact];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeopleNotLinkedToContactWithHighConfidenceContactSuggestion" doubleValue:dictionary payload:self->_ratioOfPeopleNotLinkedToContactWithHighConfidenceContactSuggestion];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfFavoritedPeople" doubleValue:dictionary payload:self->_ratioOfFavoritedPeople];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeopleWithExplicitBirthdayDate" doubleValue:dictionary payload:self->_ratioOfPeopleWithExplicitBirthdayDate];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeopleWithInferredBirthdayDate" doubleValue:dictionary payload:self->_ratioOfPeopleWithInferredBirthdayDate];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfSocialGroups" integerValue:self->_numberOfSocialGroups payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeoplePartOfASocialGroup" doubleValue:dictionary payload:self->_ratioOfPeoplePartOfASocialGroup];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfTwoPeopleSocialGroup" doubleValue:dictionary payload:self->_ratioOfTwoPeopleSocialGroup];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"averageSocialGroupSize" doubleValue:dictionary payload:self->_averageSocialGroupSize];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"maximumSocialGroupSize" integerValue:self->_maximumSocialGroupSize payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"hasMusicData" BOOLValue:self->_hasMusicData payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMusicSessions" integerValue:self->_numberOfMusicSessions payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"maximumMusicSessionSize" integerValue:self->_maximumMusicSessionSize payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"averageMusicSessionSize" doubleValue:dictionary payload:self->_averageMusicSessionSize];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"hasMeHomeNode" BOOLValue:self->_hasMeHomeNode payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"hasMeWorkNode" BOOLValue:self->_hasMeWorkNode payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsAtMyHome" integerValue:self->_numberOfMomentsAtMyHome payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsAtMyWork" integerValue:self->_numberOfMomentsAtMyWork payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsAtMyHome" doubleValue:dictionary payload:self->_ratioOfMomentsAtMyHome];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsAtMyWork" doubleValue:dictionary payload:self->_ratioOfMomentsAtMyWork];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsAtAFrequentLocation" doubleValue:dictionary payload:self->_ratioOfMomentsAtAFrequentLocation];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfFrequentLocations" integerValue:self->_numberOfFrequentLocations payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfFrequentLocationsCities" integerValue:self->_numberOfFrequentLocationsCities payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfFrequentLocationsCountries" integerValue:self->_numberOfFrequentLocationsCountries payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPetNodes" integerValue:self->_numberOfPetNodes payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfCelebratedHolidays" integerValue:self->_numberOfCelebratedHolidays payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsCelebratingAHoliday" integerValue:self->_numberOfMomentsCelebratingAHoliday payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsCelebratingAHoliday" doubleValue:dictionary payload:self->_ratioOfMomentsCelebratingAHoliday];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfShortTrips" integerValue:self->_numberOfShortTrips payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfLongTrips" integerValue:self->_numberOfLongTrips payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsInTrip" integerValue:self->_numberOfMomentsInTrip payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsInTrip" doubleValue:dictionary payload:self->_ratioOfMomentsInTrip];

  return dictionary;
}

- (void)_fillTripStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v16 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 67109378;
      v13 = 584;
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      v8 = MEMORY[0x277D86220];
LABEL_10:
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v12, 0x12u);
    }
  }

  else
  {
    longTripNodes = [graphCopy longTripNodes];
    self->_numberOfLongTrips = [longTripNodes count];

    if ([reporterCopy isCancelledWithProgress:0.5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = 67109378;
        v13 = 587;
        v14 = 2080;
        v15 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v8 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

    else
    {
      shortTripNodes = [graphCopy shortTripNodes];
      self->_numberOfShortTrips = [shortTripNodes count];

      if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = 67109378;
        v13 = 589;
        v14 = 2080;
        v15 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v8 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_fillFrequentLocationsStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v17 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = 67109378;
      v14 = 572;
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      v8 = MEMORY[0x277D86220];
LABEL_13:
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v13, 0x12u);
    }
  }

  else
  {
    supersets = [graphCopy supersets];
    self->_numberOfFrequentLocations = [supersets count];

    if ([reporterCopy isCancelledWithProgress:0.3])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v13 = 67109378;
        v14 = 575;
        v15 = 2080;
        v16 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v8 = MEMORY[0x277D86220];
        goto LABEL_13;
      }
    }

    else
    {
      supersetCityNodes = [graphCopy supersetCityNodes];
      self->_numberOfFrequentLocationsCities = [supersetCityNodes count];

      if ([reporterCopy isCancelledWithProgress:0.6])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = 67109378;
          v14 = 577;
          v15 = 2080;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
          v8 = MEMORY[0x277D86220];
          goto LABEL_13;
        }
      }

      else
      {
        supersetCountryNodes = [graphCopy supersetCountryNodes];
        self->_numberOfFrequentLocationsCountries = [supersetCountryNodes count];

        if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = 67109378;
          v14 = 579;
          v15 = 2080;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
          v8 = MEMORY[0x277D86220];
          goto LABEL_13;
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_fillHomeWorkStatisticsWithGraph:(id)graph
{
  graphCopy = graph;
  meNodeCollection = [graphCopy meNodeCollection];
  homeNodes = [meNodeCollection homeNodes];
  self->_hasMeHomeNode = [homeNodes count] != 0;

  meNodeCollection2 = [graphCopy meNodeCollection];

  workNodes = [meNodeCollection2 workNodes];
  self->_hasMeWorkNode = [workNodes count] != 0;
}

- (void)_fillPetStatisticsWithGraph:(id)graph
{
  v4 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:graph];
  self->_numberOfPetNodes = [v4 count];
}

- (void)_fillHolidaysStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v42 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v10 = [v9 isCancelledWithProgress:0.0];
  *(v34 + 24) = v10;
  if (!v10)
  {
    celebratedHolidayNodes = [graphCopy celebratedHolidayNodes];
    self->_numberOfCelebratedHolidays = [celebratedHolidayNodes count];
    v24 = [MEMORY[0x277CBEB58] set];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = celebratedHolidayNodes;
    v12 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v12)
    {
      v13 = *v30;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __82__PGGraphStatisticsMetricEvent__fillHolidaysStatisticsWithGraph_progressReporter___block_invoke;
          v25[3] = &unk_27888B3B8;
          v26 = v24;
          v28 = &v33;
          v16 = v9;
          v27 = v16;
          [v15 enumerateCelebratingMomentNodesUsingBlock:v25];
          if (*(v34 + 24) == 1)
          {
            *(v34 + 24) = 1;
LABEL_16:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v39 = 550;
              v40 = 2080;
              v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_19;
          }

          v17 = [v16 isCancelledWithProgress:0.5];
          *(v34 + 24) = v17;
          if (v17)
          {
            goto LABEL_16;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = [v24 count];
    self->_numberOfMomentsCelebratingAHoliday = v18;
    numberOfMoments = self->_numberOfMoments;
    if (numberOfMoments)
    {
      v20 = v18 / numberOfMoments;
    }

    else
    {
      v20 = *&PGMetricsUnavailableDoubleValue;
    }

    self->_ratioOfMomentsCelebratingAHoliday = v20;
    if (v34[3])
    {
      *(v34 + 24) = 1;
    }

    else
    {
      v22 = [v9 isCancelledWithProgress:1.0];
      *(v34 + 24) = v22;
      if ((v22 & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v39 = 555;
      v40 = 2080;
      v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v39 = 538;
    v40 = 2080;
    v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_20:
  _Block_object_dispose(&v33, 8);

  objc_autoreleasePoolPop(v8);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __82__PGGraphStatisticsMetricEvent__fillHolidaysStatisticsWithGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 40) isCancelledWithProgress:0.5];
    v3 = *(*(a1 + 48) + 8);
  }

  *(v3 + 24) = result;
  return result;
}

- (void)_fillPeopleStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v84 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  context = objc_autoreleasePoolPush();
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v61 = reporterCopy;
  v7 = [v61 isCancelledWithProgress:0.0];
  *(v76 + 24) = v7;
  if (!v7)
  {
    selfCopy = self;
    meNode = [graphCopy meNode];
    self->_hasMeNode = meNode != 0;
    contactIdentifier = [meNode contactIdentifier];
    self->_hasNamedMeNode = [contactIdentifier length] != 0;

    v9 = [graphCopy personNodesIncludingMe:0];
    v52 = 456;
    self->_numberOfPeople = [v9 count];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v9;
    v10 = 0;
    v11 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v11)
    {
      v12 = 0;
      v58 = 0;
      v13 = 0;
      v14 = 0;
      v60 = *v72;
      v55 = v67;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v72 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v71 + 1) + 8 * i);
          isFavorite = [v16 isFavorite];
          contactIdentifier2 = [v16 contactIdentifier];
          v19 = [contactIdentifier2 length] == 0;

          if (v19)
          {
            *buf = 0;
            *&v81 = buf;
            *(&v81 + 1) = 0x2020000000;
            v82 = 0;
            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v67[0] = __80__PGGraphStatisticsMetricEvent__fillPeopleStatisticsWithGraph_progressReporter___block_invoke;
            v67[1] = &unk_27888B458;
            v69 = buf;
            v70 = &v75;
            v68 = v61;
            [v16 enumerateContactSuggestionsSortedByConfidenceMatchingQuery:1 usingBlock:v66];
            v23 = *(v81 + 24);

            v58 += v23;
            _Block_object_dispose(buf, 8);
          }

          else
          {
            birthdayDate = [v16 birthdayDate];

            potentialBirthdayDate = [v16 potentialBirthdayDate];
            if (birthdayDate)
            {
              ++v12;
            }

            v22 = potentialBirthdayDate != 0;

            ++v13;
            v10 += v22;
          }

          if (v76[3])
          {
            *(v76 + 24) = 1;
LABEL_36:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *&buf[4] = 466;
              LOWORD(v81) = 2080;
              *(&v81 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_39;
          }

          v24 = [v61 isCancelledWithProgress:0.5];
          *(v76 + 24) = v24;
          if (v24)
          {
            goto LABEL_36;
          }

          v14 += isFavorite;
        }

        v11 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v25 = v14;
      v26 = v12;
      v27 = v58;
    }

    else
    {
      v13 = 0;
      v26 = 0.0;
      v27 = 0.0;
      v25 = 0.0;
    }

    v28 = [obj count];
    *(&selfCopy->super.super.isa + v52) = v28;
    if (v28)
    {
      v29 = v13 / v28;
      selfCopy->_ratioOfPeopleLinkedToContact = v29;
      selfCopy->_ratioOfPeopleNotLinkedToContact = 1.0 - v29;
      selfCopy->_ratioOfFavoritedPeople = v25 / v28;
      selfCopy->_ratioOfPeopleWithExplicitBirthdayDate = v26 / v28;
      selfCopy->_ratioOfPeopleWithInferredBirthdayDate = (v10 / v28);
      selfCopy->_ratioOfPeopleNotLinkedToContactWithHighConfidenceContactSuggestion = v27 / (v28 - v13);
      socialGroupNodesSortedByImportance = [graphCopy socialGroupNodesSortedByImportance];
      selfCopy->_numberOfSocialGroups = [socialGroupNodesSortedByImportance count];
      v31 = [MEMORY[0x277CBEB58] set];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v32 = socialGroupNodesSortedByImportance;
      v33 = [v32 countByEnumeratingWithState:&v62 objects:v79 count:16];
      if (v33)
      {
        v34 = 0;
        v35 = 0;
        v36 = *v63;
        v37 = 0.0;
        while (2)
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v63 != v36)
            {
              objc_enumerationMutation(v32);
            }

            personNodes = [*(*(&v62 + 1) + 8 * j) personNodes];
            [v31 unionSet:personNodes];
            v40 = [personNodes count];
            v41 = v40;
            if (v40 == 1)
            {
              ++v34;
            }

            if (v40 > v35)
            {
              v35 = v40;
            }

            if (*(v76 + 24) == 1)
            {
              *(v76 + 24) = 1;
LABEL_46:
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *&buf[4] = 500;
                LOWORD(v81) = 2080;
                *(&v81 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_39;
            }

            v42 = [v61 isCancelledWithProgress:0.8];
            *(v76 + 24) = v42;
            if (v42)
            {
              goto LABEL_46;
            }

            v37 = v37 + v41;
          }

          v33 = [v32 countByEnumeratingWithState:&v62 objects:v79 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }

        v43 = v34;
      }

      else
      {
        v35 = 0;
        v43 = 0.0;
        v37 = 0.0;
      }

      selfCopy->_ratioOfPeoplePartOfASocialGroup = [v31 count] / *(&selfCopy->super.super.isa + v52);
      numberOfSocialGroups = selfCopy->_numberOfSocialGroups;
      if (numberOfSocialGroups)
      {
        selfCopy->_ratioOfTwoPeopleSocialGroup = v43 / numberOfSocialGroups;
        selfCopy->_averageSocialGroupSize = v37 / numberOfSocialGroups;
      }

      else
      {
        v50 = PGMetricsUnavailableDoubleValue;
        *&selfCopy->_ratioOfTwoPeopleSocialGroup = PGMetricsUnavailableDoubleValue;
        *&selfCopy->_averageSocialGroupSize = v50;
        v35 = PGMetricsUnavailableIntegerValue;
      }

      selfCopy->_maximumSocialGroupSize = v35;
    }

    else
    {
      v45 = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeopleLinkedToContact = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeopleNotLinkedToContact = v45;
      v46 = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfFavoritedPeople = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeopleWithExplicitBirthdayDate = v46;
      v47 = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeopleWithInferredBirthdayDate = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeopleNotLinkedToContactWithHighConfidenceContactSuggestion = v47;
      v48 = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeoplePartOfASocialGroup = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfTwoPeopleSocialGroup = v48;
      *&selfCopy->_averageSocialGroupSize = PGMetricsUnavailableDoubleValue;
      selfCopy->_maximumSocialGroupSize = PGMetricsUnavailableIntegerValue;
    }

    if (v76[3])
    {
      *(v76 + 24) = 1;
    }

    else
    {
      v51 = [v61 isCancelledWithProgress:1.0];
      *(v76 + 24) = v51;
      if ((v51 & 1) == 0)
      {
LABEL_39:

        goto LABEL_40;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 531;
      LOWORD(v81) = 2080;
      *(&v81 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_39;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 417;
    LOWORD(v81) = 2080;
    *(&v81 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_40:
  _Block_object_dispose(&v75, 8);

  objc_autoreleasePoolPop(context);
  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __80__PGGraphStatisticsMetricEvent__fillPeopleStatisticsWithGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v6 = *(*(a1 + 40) + 8);
  result = 1;
  *(v6 + 24) = 1;
  *a5 = 1;
  v8 = *(*(a1 + 48) + 8);
  if ((*(v8 + 24) & 1) == 0)
  {
    result = [*(a1 + 32) isCancelledWithProgress:0.5];
    v8 = *(*(a1 + 48) + 8);
  }

  *(v8 + 24) = result;
  return result;
}

- (void)_fillPublicEventStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v51 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v10 = [v9 isCancelledWithProgress:0.0];
  *(v41 + 24) = v10;
  if (!v10)
  {
    *buf = 0;
    *&v49 = buf;
    *(&v49 + 1) = 0x2020000000;
    v50 = 0;
    v11 = [MEMORY[0x277CBEB58] set];
    v12 = objc_alloc_init(MEMORY[0x277CCA940]);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke;
    v34[3] = &unk_27888B430;
    v38 = buf;
    v13 = v12;
    v35 = v13;
    v39 = &v40;
    v14 = v9;
    v36 = v14;
    v15 = v11;
    v37 = v15;
    [graphCopy enumeratePublicEventNodesUsingBlock:v34];
    self->_numberOfPublicEvents = *(v49 + 24);
    v16 = [v15 count];
    self->_numberOfMomentsLinkedToAPublicEvent = v16;
    numberOfMoments = self->_numberOfMoments;
    if (numberOfMoments)
    {
      v18 = v16 / numberOfMoments;
    }

    else
    {
      v18 = *&PGMetricsUnavailableDoubleValue;
    }

    self->_ratioOfMomentsLinkedToAPublicEvent = v18;
    musicConcerts = [MEMORY[0x277D27780] musicConcerts];
    self->_numberOfPublicEventsCategoryMusicConcerts = [v13 countForObject:musicConcerts];

    nightLife = [MEMORY[0x277D27780] nightLife];
    self->_numberOfPublicEventsCategoryNightLife = [v13 countForObject:nightLife];

    theater = [MEMORY[0x277D27780] theater];
    self->_numberOfPublicEventsCategoryTheater = [v13 countForObject:theater];

    dance = [MEMORY[0x277D27780] dance];
    self->_numberOfPublicEventsCategoryDance = [v13 countForObject:dance];

    festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
    self->_numberOfPublicEventsCategoryFestivalsAndFairs = [v13 countForObject:festivalsAndFairs];

    artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
    self->_numberOfPublicEventsCategoryArtsAndMuseums = [v13 countForObject:artsAndMuseums];

    sports = [MEMORY[0x277D27780] sports];
    self->_numberOfPublicEventsCategorySports = [v13 countForObject:sports];

    businessAndTechnology = [MEMORY[0x277D27780] businessAndTechnology];
    self->_numberOfPublicEventsCategoryBusinessAndTechnology = [v13 countForObject:businessAndTechnology];

    community = [MEMORY[0x277D27780] community];
    self->_numberOfPublicEventsCategoryCommunity = [v13 countForObject:community];

    educational = [MEMORY[0x277D27780] educational];
    self->_numberOfPublicEventsCategoryEducational = [v13 countForObject:educational];

    familyEvents = [MEMORY[0x277D27780] familyEvents];
    self->_numberOfPublicEventsCategoryFamilyEvents = [v13 countForObject:familyEvents];

    tours = [MEMORY[0x277D27780] tours];
    self->_numberOfPublicEventsCategoryTours = [v13 countForObject:tours];

    appleEvents = [MEMORY[0x277D27780] appleEvents];
    self->_numberOfPublicEventsCategoryAppleEvents = [v13 countForObject:appleEvents];

    if (v41[3])
    {
      *(v41 + 24) = 1;
    }

    else
    {
      v32 = [v14 isCancelledWithProgress:1.0];
      *(v41 + 24) = v32;
      if ((v32 & 1) == 0)
      {
LABEL_12:

        _Block_object_dispose(buf, 8);
        goto LABEL_13;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v44 = 67109378;
      v45 = 410;
      v46 = 2080;
      v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v44, 0x12u);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 367;
    LOWORD(v49) = 2080;
    *(&v49 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_13:
  _Block_object_dispose(&v40, 8);

  objc_autoreleasePoolPop(v8);
  v33 = *MEMORY[0x277D85DE8];
}

void __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  ++*(*(*(a1 + 56) + 8) + 24);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke_2;
  v20[3] = &unk_27888B408;
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v21 = v4;
  v23 = v5;
  v22 = *(a1 + 40);
  v6 = a2;
  [v6 enumeratePublicEventCategoryNodesUsingBlock:v20];
  v7 = [v6 collection];

  v8 = [v7 momentNodes];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke_3;
  v16 = &unk_27888B3B8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v17 = v9;
  v19 = v10;
  v18 = *(a1 + 40);
  [v8 enumerateNodesUsingBlock:&v13];

  v11 = *(*(a1 + 64) + 8);
  if (*(v11 + 24))
  {
    v12 = 1;
  }

  else
  {
    v12 = [*(a1 + 40) isCancelledWithProgress:{0.5, v13, v14, v15, v16, v17}];
    v11 = *(*(a1 + 64) + 8);
  }

  *(v11 + 24) = v12;
}

uint64_t __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 label];
  [v3 addObject:v4];

  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 40) isCancelledWithProgress:0.5];
    v5 = *(*(a1 + 48) + 8);
  }

  *(v5 + 24) = result;
  return result;
}

uint64_t __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 40) isCancelledWithProgress:0.5];
    v3 = *(*(a1 + 48) + 8);
  }

  *(v3 + 24) = result;
  return result;
}

- (void)_fillBusinessStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v38 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v10 = [v9 isCancelledWithProgress:0.0];
  *(v28 + 24) = v10;
  if (!v10)
  {
    *buf = 0;
    *&v36 = buf;
    *(&v36 + 1) = 0x2020000000;
    v37 = 0;
    array = [MEMORY[0x277CBEB18] array];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __82__PGGraphStatisticsMetricEvent__fillBusinessStatisticsWithGraph_progressReporter___block_invoke;
    v22 = &unk_27888B3E0;
    v25 = buf;
    v12 = array;
    v23 = v12;
    v26 = &v27;
    v13 = v9;
    v24 = v13;
    [graphCopy enumerateBusinessNodesUsingBlock:&v19];
    self->_numberOfBusinessNodes = *(v36 + 24);
    v14 = [v12 count];
    self->_numberOfMomentsLinkedToABusinessNode = v14;
    numberOfMoments = self->_numberOfMoments;
    if (numberOfMoments)
    {
      v16 = v14 / numberOfMoments;
    }

    else
    {
      v16 = *&PGMetricsUnavailableDoubleValue;
    }

    self->_ratioOfMomentsLinkedToABusinessNode = v16;
    if (v28[3])
    {
      *(v28 + 24) = 1;
    }

    else
    {
      v17 = [v13 isCancelledWithProgress:1.0];
      *(v28 + 24) = v17;
      if ((v17 & 1) == 0)
      {
LABEL_12:

        _Block_object_dispose(buf, 8);
        goto LABEL_13;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v31 = 67109378;
      v32 = 360;
      v33 = 2080;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v31, 0x12u);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 338;
    LOWORD(v36) = 2080;
    *(&v36 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_13:
  _Block_object_dispose(&v27, 8);

  objc_autoreleasePoolPop(v8);
  v18 = *MEMORY[0x277D85DE8];
}

void __82__PGGraphStatisticsMetricEvent__fillBusinessStatisticsWithGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  ++*(*(*(a1 + 48) + 8) + 24);
  v3 = [a2 collection];
  v4 = [v3 momentNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__PGGraphStatisticsMetricEvent__fillBusinessStatisticsWithGraph_progressReporter___block_invoke_2;
  v9[3] = &unk_27888B3B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v10 = v5;
  v12 = v6;
  v11 = *(a1 + 40);
  [v4 enumerateNodesUsingBlock:v9];

  v7 = *(*(a1 + 56) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(a1 + 40) isCancelledWithProgress:0.5];
    v7 = *(*(a1 + 56) + 8);
  }

  *(v7 + 24) = v8;
}

uint64_t __82__PGGraphStatisticsMetricEvent__fillBusinessStatisticsWithGraph_progressReporter___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 40) isCancelledWithProgress:0.5];
    v3 = *(*(a1 + 48) + 8);
  }

  *(v3 + 24) = result;
  return result;
}

- (void)_fillMeaningfulEventsStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v24 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  if (![v9 isCancelledWithProgress:0.0])
  {
    meaningfulEvents = [graphCopy meaningfulEvents];
    if ([v9 isCancelledWithProgress:0.3])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = 67109378;
        v21 = 284;
        v22 = 2080;
        v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v20, 0x12u);
      }

      goto LABEL_21;
    }

    v11 = objc_alloc_init(MEMORY[0x277CCA940]);
    v12 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:meaningfulEvents graph:graphCopy];
    if ([v9 isCancelledWithProgress:0.5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = 67109378;
        v21 = 288;
        v22 = 2080;
        v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v13 = MEMORY[0x277D86220];
LABEL_19:
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v20, 0x12u);
      }
    }

    else
    {
      meaningNodes = [(PGGraphMomentNodeCollection *)v12 meaningNodes];
      meaningLabels = [meaningNodes meaningLabels];
      [v11 unionSet:meaningLabels];

      if (![v9 isCancelledWithProgress:0.8])
      {
        self->_numberOfMeaningfulMomentsGathering = [v11 countForObject:@"Gathering"];
        self->_numberOfMeaningfulMomentsActivity = [v11 countForObject:@"Activity"];
        self->_numberOfMeaningfulMomentsActivityBeach = [v11 countForObject:@"Beaching"];
        self->_numberOfMeaningfulMomentsActivityDiving = [v11 countForObject:@"Diving"];
        self->_numberOfMeaningfulMomentsActivityHiking = [v11 countForObject:@"Hiking"];
        self->_numberOfMeaningfulMomentsActivityWinterSport = [v11 countForObject:@"WinterSport"];
        self->_numberOfMeaningfulMomentsEntertainment = [v11 countForObject:@"Entertainment"];
        self->_numberOfMeaningfulMomentsEntertainmentNightOut = [v11 countForObject:@"NightOut"];
        self->_numberOfMeaningfulMomentsEntertainmentPerformance = [v11 countForObject:@"Performance"];
        self->_numberOfMeaningfulMomentsEntertainmentSportEvent = [v11 countForObject:@"SportEvent"];
        self->_numberOfMeaningfulMomentsEntertainmentConcert = [v11 countForObject:@"Concert"];
        self->_numberOfMeaningfulMomentsEntertainmentDance = [v11 countForObject:@"Dance"];
        self->_numberOfMeaningfulMomentsEntertainmentAmusementPark = [v11 countForObject:@"AmusementPark"];
        self->_numberOfMeaningfulMomentsEntertainmentFestival = [v11 countForObject:@"Festival"];
        self->_numberOfMeaningfulMomentsEntertainmentMuseum = [v11 countForObject:@"Museum"];
        self->_numberOfMeaningfulMomentsEntertainmentTheater = [v11 countForObject:@"Theater"];
        self->_numberOfMeaningfulMomentsCelebration = [v11 countForObject:@"Celebration"];
        self->_numberOfMeaningfulMomentsCelebrationAnniversary = [v11 countForObject:@"Anniversary"];
        self->_numberOfMeaningfulMomentsCelebrationBirthday = [v11 countForObject:@"Birthday"];
        self->_numberOfMeaningfulMomentsCelebrationHolidayEvent = [v11 countForObject:@"HolidayEvent"];
        self->_numberOfMeaningfulMomentsCelebrationWedding = [v11 countForObject:@"Wedding"];
        self->_numberOfMeaningfulMomentsRestaurant = [v11 countForObject:@"Restaurant"];
        self->_numberOfMeaningfulMomentsRestaurantBreakfast = [v11 countForObject:@"Breakfast"];
        self->_numberOfMeaningfulMomentsRestaurantLunch = [v11 countForObject:@"Lunch"];
        self->_numberOfMeaningfulMomentsRestaurantDinner = [v11 countForObject:@"Dinner"];
        v16 = [meaningfulEvents count];
        self->_numberOfMeaningfulMoments = v16;
        numberOfMoments = self->_numberOfMoments;
        if (numberOfMoments)
        {
          v18 = v16 / numberOfMoments;
        }

        else
        {
          v18 = *&PGMetricsUnavailableDoubleValue;
        }

        self->_ratioOfMeaningfulMoments = v18;
        if (![v9 isCancelledWithProgress:1.0] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        v20 = 67109378;
        v21 = 331;
        v22 = 2080;
        v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_19;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = 67109378;
        v21 = 291;
        v22 = 2080;
        v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_19;
      }
    }

LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = 67109378;
    v21 = 281;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v20, 0x12u);
  }

LABEL_22:

  objc_autoreleasePoolPop(v8);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_fillMomentStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v37 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  if (![v9 isCancelledWithProgress:0.0])
  {
    momentNodes = [graphCopy momentNodes];
    self->_numberOfMoments = [momentNodes count];
    if ([v9 isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v34 = 246;
        v35 = 2080;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_18;
    }

    meNodeCollection = [graphCopy meNodeCollection];
    if ([v9 isCancelledWithProgress:0.4])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      *buf = 67109378;
      v34 = 249;
      v35 = 2080;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      if (self->_numberOfMoments)
      {
        homeNodes = [meNodeCollection homeNodes];
        addressNodes = [homeNodes addressNodes];
        momentNodes2 = [addressNodes momentNodes];
        self->_numberOfMomentsAtMyHome = [momentNodes2 count];

        workNodes = [meNodeCollection workNodes];
        addressNodes2 = [workNodes addressNodes];
        momentNodes3 = [addressNodes2 momentNodes];
        v30 = 584;
        self->_numberOfMomentsAtMyWork = [momentNodes3 count];

        v31 = [PGGraphHighlightTypeNodeCollection concludedTripTypeNodesInGraph:graphCopy];
        highlightGroupNodes = [v31 highlightGroupNodes];
        highlightNodes = [highlightGroupNodes highlightNodes];
        [highlightNodes momentNodes];
        v21 = v32 = meNodeCollection;
        self->_numberOfMomentsInTrip = [v21 count];

        v22 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:graphCopy];
        momentNodes4 = [v22 momentNodes];
        v24 = [momentNodes4 count];

        numberOfMoments = self->_numberOfMoments;
        self->_ratioOfMomentsAtMyHome = self->_numberOfMomentsAtMyHome / numberOfMoments;
        self->_ratioOfMomentsAtMyWork = self->_numberOfMomentsAtMyWork / numberOfMoments;
        v26 = v24;
        meNodeCollection = v32;
        self->_ratioOfMomentsAtAFrequentLocation = v26 / numberOfMoments;
        self->_ratioOfMomentsInTrip = self->_numberOfMomentsInTrip / numberOfMoments;
      }

      else
      {
        v27 = *&PGMetricsUnavailableDoubleValue;
        *&self->_ratioOfMomentsAtMyHome = PGMetricsUnavailableDoubleValue;
        self->_ratioOfMomentsAtMyWork = v27;
        v28 = *&PGMetricsUnavailableDoubleValue;
        *&self->_ratioOfMomentsAtAFrequentLocation = PGMetricsUnavailableDoubleValue;
        self->_ratioOfMomentsInTrip = v28;
      }

      if (![v9 isCancelledWithProgress:{1.0, v30}] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 67109378;
      v34 = 274;
      v35 = 2080;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      v12 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v34 = 242;
    v35 = 2080;
    v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_19:

  objc_autoreleasePoolPop(v8);
  v29 = *MEMORY[0x277D85DE8];
}

- (void)_fillGenericStatisticsWithGraph:(id)graph
{
  graphCopy = graph;
  infoNode = [graphCopy infoNode];
  self->_librarySize = [infoNode numberOfAssets];
  librarySizeRange = [graphCopy librarySizeRange];

  self->_librarySizeRange = librarySizeRange;
  numberOfSelfies = [infoNode numberOfSelfies];
  self->_numberOfSelfies = numberOfSelfies;
  librarySize = self->_librarySize;
  if (librarySize)
  {
    v8 = numberOfSelfies / librarySize;
  }

  else
  {
    v8 = *&PGMetricsUnavailableDoubleValue;
  }

  self->_ratioOfSelfies = v8;
}

- (void)gatherMetricsWithProgressBlock:(id)block
{
  blockCopy = block;
  enrichmentLoggingConnection = [(PGManager *)self->_manager enrichmentLoggingConnection];
  manager = self->_manager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__PGGraphStatisticsMetricEvent_gatherMetricsWithProgressBlock___block_invoke;
  v9[3] = &unk_27888B2F8;
  selfCopy = self;
  v12 = blockCopy;
  v10 = enrichmentLoggingConnection;
  v7 = enrichmentLoggingConnection;
  v8 = blockCopy;
  [(PGManager *)manager performSynchronousConcurrentGraphReadUsingBlock:v9];
}

void __63__PGGraphStatisticsMetricEvent_gatherMetricsWithProgressBlock___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48))
  {
    [MEMORY[0x277D22C80] progressReporterWithProgressBlock:?];
  }

  else
  {
    [MEMORY[0x277D22C80] ignoreProgress];
  }
  v4 = ;
  if (![v4 isCancelledWithProgress:0.0])
  {
    v5 = [v3 graph];
    v6 = *(a1 + 32);
    v7 = os_signpost_id_generate(v6);
    v8 = v6;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "GraphStatisticsMetrics", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v10 = mach_absolute_time();
    [*(a1 + 40) _fillGenericStatisticsWithGraph:v5];
    if ([v4 isCancelledWithProgress:0.1])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v31 = 170;
        *&v31[4] = 2080;
        *&v31[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_55;
    }

    v11 = [v4 childProgressReporterFromStart:0.11 toEnd:0.19];
    [*(a1 + 40) _fillMomentStatisticsWithGraph:v5 progressReporter:v11];
    if ([v4 isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v31 = 175;
        *&v31[4] = 2080;
        *&v31[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_54;
    }

    v12 = [v4 childProgressReporterFromStart:0.21 toEnd:0.29];
    [*(a1 + 40) _fillBusinessStatisticsWithGraph:v5 progressReporter:v12];
    if ([v4 isCancelledWithProgress:0.3])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v31 = 180;
        *&v31[4] = 2080;
        *&v31[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_53;
    }

    v28 = [v4 childProgressReporterFromStart:0.31 toEnd:0.39];
    [*(a1 + 40) _fillMeaningfulEventsStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:0.4])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v31 = 185;
        *&v31[4] = 2080;
        *&v31[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_52;
    }

    v27 = [v4 childProgressReporterFromStart:0.41 toEnd:0.49];
    [*(a1 + 40) _fillPublicEventStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:0.5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v31 = 190;
        *&v31[4] = 2080;
        *&v31[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_51;
    }

    v26 = [v4 childProgressReporterFromStart:0.51 toEnd:0.59];
    [*(a1 + 40) _fillPeopleStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:0.6])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v31 = 195;
        *&v31[4] = 2080;
        *&v31[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_50;
    }

    v25 = [v4 childProgressReporterFromStart:0.61 toEnd:0.69];
    [*(a1 + 40) _fillTripStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:0.7])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v31 = 200;
        *&v31[4] = 2080;
        *&v31[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_49;
    }

    v24 = [v4 childProgressReporterFromStart:0.71 toEnd:0.79];
    [*(a1 + 40) _fillHolidaysStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:0.8])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v31 = 205;
        *&v31[4] = 2080;
        *&v31[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v13 = MEMORY[0x277D86220];
LABEL_37:
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

    [*(a1 + 40) _fillPetStatisticsWithGraph:v5];
    [*(a1 + 40) _fillHomeWorkStatisticsWithGraph:v5];
    if ([v4 isCancelledWithProgress:0.9])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v31 = 212;
        *&v31[4] = 2080;
        *&v31[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_37;
      }

LABEL_48:

LABEL_49:
LABEL_50:

LABEL_51:
LABEL_52:

LABEL_53:
LABEL_54:

LABEL_55:
      goto LABEL_56;
    }

    v23 = [v4 childProgressReporterFromStart:0.91 toEnd:0.99];
    [*(a1 + 40) _fillFrequentLocationsStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:1.0])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_47:

        goto LABEL_48;
      }

      *buf = 67109378;
      *v31 = 217;
      *&v31[4] = 2080;
      *&v31[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      v14 = MEMORY[0x277D86220];
      v15 = "Cancelled at line %d in file %s";
      v16 = 18;
    }

    else
    {
      v22 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v19 = v9;
      v20 = v19;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v7, "GraphStatisticsMetrics", "", buf, 2u);
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      *buf = 136315394;
      *v31 = "GraphStatisticsMetrics";
      *&v31[8] = 2048;
      *&v31[10] = ((((v22 - v10) * numer) / denom) / 1000000.0);
      v15 = "[Performance] %s: %f ms";
      v14 = v20;
      v16 = 22;
    }

    _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, v15, buf, v16);
    goto LABEL_47;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v31 = 162;
    *&v31[4] = 2080;
    *&v31[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_56:

  v21 = *MEMORY[0x277D85DE8];
}

- (PGGraphStatisticsMetricEvent)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PGGraphStatisticsMetricEvent;
  v6 = [(PGGraphStatisticsMetricEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
  }

  return v7;
}

@end