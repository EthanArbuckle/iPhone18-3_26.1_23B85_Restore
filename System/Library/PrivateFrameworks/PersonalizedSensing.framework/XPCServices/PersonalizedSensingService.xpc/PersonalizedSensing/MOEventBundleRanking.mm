@interface MOEventBundleRanking
+ (void)defineClassCollections;
- (MOEventBundleRanking)initWithCoder:(id)coder;
- (MOEventBundleRanking)initWithConfigurationManager:(id)manager;
- (MOEventBundleRanking)initWithUniverse:(id)universe;
- (double)_calculateNormSquare:(double *)square;
- (double)_computeBPROptForPairs:(double *)pairs withTotalBundleCountsForInterfaceTypesHigherTier:(id)tier WithTotalBundleCountsForInterfaceTypesLowerTier:(id)lowerTier bprOpt:(double)opt pairWiseMult:(float)mult;
- (double)_generateBPROptUsing:(double *)using initialParams:(double *)params;
- (id)_checkAndUpdateNumericLimits:(id)limits;
- (id)_fetchBundleInforForRanking:(id)ranking;
- (id)_getDefaultFallbackFactorDict;
- (id)_getDefaultRichnessWeightDict;
- (id)_getRichnessScoreWeightFromConfigurationManager:(id)manager withDefaultWeightDict:(id)dict;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionary;
- (id)generateRankingInput:(id)input;
- (id)loadHolidayTuningParameterJSONFromFilePath;
- (void)_computeGradient:(double *)gradient initialParams:(double *)params Update:(double *)update;
- (void)_fillCurationInfoForRanking:(id)ranking forBundle:(id)bundle;
- (void)_fillDistincnessInfoForRanking:(id)ranking forBundle:(id)bundle;
- (void)_fillEngagementInfoForRanking:(id)ranking forBundle:(id)bundle;
- (void)_fillHeuristicsInfoForRanking:(id)ranking forBundle:(id)bundle;
- (void)_fillQualityInfoForRanking:(id)ranking forBundle:(id)bundle;
- (void)_fillRecencyInfoForRanking:(id)ranking forBundle:(id)bundle;
- (void)_fillRichnessInfoForRanking:(id)ranking forBundle:(id)bundle;
- (void)_lineSearch:(double *)search initialParams:(double *)params With:(double *)with And:(double *)and handler:(id)handler;
- (void)_mergeScoresToBundles:(id)bundles usingScore:(id)score;
- (void)_setToIdentityMatrix:(double *)matrix forNumRows:(unint64_t)rows;
- (void)_submitEventBundleRankingAnalytics:(id)analytics withRankingInput:(id)input andSubmissionDate:(id)date;
- (void)encodeWithCoder:(id)coder;
- (void)generateBundleRanking:(id)ranking withMinRecommendedBundleCountRequirement:(BOOL)requirement;
- (void)identifyRepetitiveSignificantContactBundlesFromBundles:(id)bundles precedingSignificantContactBundles:(id)contactBundles;
- (void)loadHolidayTuningParameterJSONFromFilePath;
- (void)safeSavePropertyToDictionary:(id)dictionary withKey:(id)key andValue:(id)value;
- (void)setHolidayTuningParameters;
- (void)updateEngagementScoreParamsUsingBFGS;
- (void)updateTripMetaDataForRank:(id)rank;
@end

@implementation MOEventBundleRanking

+ (void)defineClassCollections
{
  if (defineClassCollections_onceToken_0 != -1)
  {
    +[MOEventBundleRanking defineClassCollections];
  }
}

void __46__MOEventBundleRanking_defineClassCollections__block_invoke(id a1)
{
  v24[0] = GEOPOICategoryAmusementPark;
  v24[1] = GEOPOICategoryAquarium;
  v24[2] = GEOPOICategoryBeach;
  v24[3] = GEOPOICategoryBrewery;
  v24[4] = GEOPOICategoryCafe;
  v24[5] = GEOPOICategoryFitnessCenter;
  v24[6] = GEOPOICategoryLibrary;
  v24[7] = GEOPOICategoryMarina;
  v24[8] = GEOPOICategoryMovieTheater;
  v24[9] = GEOPOICategoryMuseum;
  v24[10] = GEOPOICategoryNationalPark;
  v24[11] = GEOPOICategoryNightlife;
  v24[12] = GEOPOICategoryPark;
  v24[13] = GEOPOICategoryPlayground;
  v24[14] = GEOPOICategoryReligiousSite;
  v24[15] = GEOPOICategoryRestaurant;
  v24[16] = GEOPOICategoryStadium;
  v24[17] = GEOPOICategoryTheater;
  v24[18] = GEOPOICategoryWinery;
  v24[19] = GEOPOICategoryZoo;
  v24[20] = GEOPOICategoryCampground;
  v24[21] = GEOPOICategoryBaseball;
  v24[22] = GEOPOICategoryBasketball;
  v24[23] = GEOPOICategoryBeauty;
  v24[24] = GEOPOICategoryBowling;
  v24[25] = GEOPOICategoryCastle;
  v24[26] = GEOPOICategoryConventionCenter;
  v24[27] = GEOPOICategoryDistillery;
  v24[28] = GEOPOICategoryFairground;
  v24[29] = GEOPOICategoryFishing;
  v24[30] = GEOPOICategoryFortress;
  v24[31] = GEOPOICategoryGolf;
  v24[32] = GEOPOICategoryGoKart;
  v24[33] = GEOPOICategoryHiking;
  v24[34] = GEOPOICategoryKayaking;
  v24[35] = GEOPOICategoryLandmark;
  v24[36] = GEOPOICategoryMiniGolf;
  v24[37] = GEOPOICategoryMusicVenue;
  v24[38] = GEOPOICategoryNationalMonument;
  v24[39] = GEOPOICategoryPlanetarium;
  v24[40] = GEOPOICategoryRockClimbing;
  v24[41] = GEOPOICategoryRVPark;
  v24[42] = GEOPOICategorySkatePark;
  v24[43] = GEOPOICategorySkating;
  v24[44] = GEOPOICategorySkiing;
  v24[45] = GEOPOICategorySoccer;
  v24[46] = GEOPOICategorySpa;
  v24[47] = GEOPOICategorySurfing;
  v24[48] = GEOPOICategorySwimming;
  v24[49] = GEOPOICategoryTennis;
  v24[50] = GEOPOICategoryVolleyball;
  v1 = [NSArray arrayWithObjects:v24 count:51];
  v2 = interestingPOIcategories;
  interestingPOIcategories = v1;

  v23[0] = GEOPOICategoryAirportGate;
  v23[1] = GEOPOICategoryAirportTerminal;
  v23[2] = GEOPOICategoryATM;
  v23[3] = GEOPOICategoryBank;
  v23[4] = GEOPOICategoryCarRental;
  v23[5] = GEOPOICategoryEVCharger;
  v23[6] = GEOPOICategoryGasStation;
  v23[7] = GEOPOICategoryLaundry;
  v23[8] = GEOPOICategoryParking;
  v23[9] = GEOPOICategoryPostOffice;
  v23[10] = GEOPOICategoryPublicTransport;
  v23[11] = GEOPOICategoryRestroom;
  v23[12] = GEOPOICategoryAutomotiveRepair;
  v23[13] = GEOPOICategoryMailbox;
  v3 = [NSArray arrayWithObjects:v23 count:14];
  v4 = nonInterestingPOIcategories;
  nonInterestingPOIcategories = v3;

  v22[0] = GEOPOICategoryHospital;
  v22[1] = GEOPOICategoryPolice;
  v22[2] = GEOPOICategoryFireStation;
  v22[3] = GEOPOICategoryPharmacy;
  v22[4] = GEOPOICategoryAnimalService;
  v5 = [NSArray arrayWithObjects:v22 count:5];
  v6 = sensitivePOICategories;
  sensitivePOICategories = v5;

  v21[0] = GEOPOICategoryHotel;
  v21[1] = GEOPOICategoryFoodMarket;
  v21[2] = GEOPOICategoryBakery;
  v21[3] = GEOPOICategorySchool;
  v21[4] = GEOPOICategoryStore;
  v21[5] = GEOPOICategoryUniversity;
  v7 = [NSArray arrayWithObjects:v21 count:6];
  v8 = neutralPOIcategories;
  neutralPOIcategories = v7;

  v9 = enrichedActionTags;
  enrichedActionTags = &off_1000C9B98;

  v10 = interestingTimeTags;
  interestingTimeTags = &off_1000C9BB0;

  v11 = visitActionTags;
  visitActionTags = &off_1000C9BC8;

  v12 = visitSubtypeVariants;
  visitSubtypeVariants = &off_1000C9BE0;

  v13 = dailyMediaSubtypeVariants;
  dailyMediaSubtypeVariants = &off_1000C9BF8;

  v14 = MediaWeeklySummarySubtypeVariants;
  MediaWeeklySummarySubtypeVariants = &off_1000C9C10;

  v15 = timeAtHomeSubtypeVariants;
  timeAtHomeSubtypeVariants = &off_1000C9C28;

  v16 = phoneSensedWalkingVariants;
  phoneSensedWalkingVariants = &off_1000C9C40;

  v17 = workoutSubtypeVariants;
  workoutSubtypeVariants = &off_1000C9C58;

  v18 = thirdPartyMediaSubtypeVariants;
  thirdPartyMediaSubtypeVariants = &off_1000C9C70;

  v19 = [NSSet setWithObject:&stru_1000BA000];
  v20 = emptyStringSet;
  emptyStringSet = v19;
}

- (id)generateRankingInput:(id)input
{
  inputCopy = input;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = inputCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MOEventBundleRanking *)self _fetchBundleInforForRanking:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_fetchBundleInforForRanking:(id)ranking
{
  rankingCopy = ranking;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  bundleIdentifier = [rankingCopy bundleIdentifier];
  [v6 setBundleIdentifier:bundleIdentifier];

  suggestionID = [rankingCopy suggestionID];
  [v6 setSuggestionIdentifier:suggestionID];

  events = [rankingCopy events];
  [v6 setEvents:events];

  subSuggestionIDs = [rankingCopy subSuggestionIDs];
  [v6 setSubSuggestionIDs:subSuggestionIDs];

  [(MOEventBundleRanking *)self _fillRecencyInfoForRanking:v6 forBundle:rankingCopy];
  [(MOEventBundleRanking *)self _fillRichnessInfoForRanking:v6 forBundle:rankingCopy];
  [(MOEventBundleRanking *)self _fillDistincnessInfoForRanking:v6 forBundle:rankingCopy];
  [(MOEventBundleRanking *)self _fillHeuristicsInfoForRanking:v6 forBundle:rankingCopy];
  [(MOEventBundleRanking *)self _fillQualityInfoForRanking:v6 forBundle:rankingCopy];
  [(MOEventBundleRanking *)self _fillEngagementInfoForRanking:v6 forBundle:rankingCopy];
  [(MOEventBundleRanking *)self _fillCurationInfoForRanking:v6 forBundle:rankingCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)_fillRecencyInfoForRanking:(id)ranking forBundle:(id)bundle
{
  bundleCopy = bundle;
  rankingCopy = ranking;
  endDate = [bundleCopy endDate];
  v8 = +[NSDate date];
  [endDate timeIntervalSinceDate:v8];
  v10 = v9 / -86400.0;
  *&v10 = v10;
  [rankingCopy setBundleRecencyDaysElapsed:v10];

  startDate = [bundleCopy startDate];
  [rankingCopy setBundleStartDate:startDate];

  endDate2 = [bundleCopy endDate];

  [rankingCopy setBundleEndDate:endDate2];
}

- (void)_fillCurationInfoForRanking:(id)ranking forBundle:(id)bundle
{
  v6 = visitSubtypeVariants;
  bundleCopy = bundle;
  rankingCopy = ranking;
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [rankingCopy bundleSubType]);
  v10 = [v6 containsObject:v9];

  place = [bundleCopy place];
  if ([place placeUserType] == 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  [rankingCopy setIsWorkVisit:v12];

  metaDataForRank = [bundleCopy metaDataForRank];

  v14 = [metaDataForRank objectForKeyedSubscript:@"VisitDuration"];
  [v14 floatValue];
  v16 = v15;

  v19 = [(NSDictionary *)self->_curationParameterDict objectForKeyedSubscript:@"shortVisitDurationThresholdInSec"];
  [v19 floatValue];
  if (v16 < v17)
  {
    v18 = v10;
  }

  else
  {
    v18 = 0;
  }

  [rankingCopy setIsShortVisit:v18];
}

- (void)_fillQualityInfoForRanking:(id)ranking forBundle:(id)bundle
{
  rankingCopy = ranking;
  bundleCopy = bundle;
  action = [bundleCopy action];
  actionType = [action actionType];
  v9 = 0.0;
  if (actionType)
  {
    *&v9 = 0.5;
  }

  [rankingCopy setIsBundleActionSpecific:v9];

  v10 = enrichedActionTags;
  action2 = [bundleCopy action];
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [action2 actionType]);
  LODWORD(v10) = [v10 containsObject:v12];

  if (v10)
  {
    [rankingCopy isBundleActionSpecific];
    if ((*&v13 + 0.5) > 1.0)
    {
      LODWORD(v13) = 1.0;
      [rankingCopy setIsBundleActionSpecific:v13];
      action3 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(action3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }
  }

  else
  {
    action3 = [bundleCopy action];
    if ([action3 actionType]!= 1)
    {
      goto LABEL_12;
    }

    action4 = [bundleCopy action];
    actionSubtype = [action4 actionSubtype];

    if (actionSubtype != 4)
    {
      goto LABEL_14;
    }

    [rankingCopy isBundleActionSpecific];
    if ((*&v17 + 0.5) > 1.0)
    {
      LODWORD(v17) = 1.0;
      [rankingCopy setIsBundleActionSpecific:v17];
      action3 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(action3, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        [MOEventBundleRanking _fillQualityInfoForRanking:forBundle:];
      }

LABEL_12:

      goto LABEL_14;
    }
  }

  [rankingCopy isBundleActionSpecific];
  *&v19 = v18 + 0.5;
  [rankingCopy setIsBundleActionSpecific:v19];
LABEL_14:
  time = [bundleCopy time];
  v22 = 0.0;
  if ([time timeTag])
  {
    *&v21 = 0.5;
  }

  else
  {
    *&v21 = 0.0;
  }

  [rankingCopy setIsBundleTimeTagSpecific:v21];

  v23 = interestingTimeTags;
  time2 = [bundleCopy time];
  v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [time2 timeTag]);
  LODWORD(v23) = [v23 containsObject:v25];

  if (v23)
  {
    [rankingCopy isBundleTimeTagSpecific];
    if ((*&v26 + 0.5) <= 1.0)
    {
      [rankingCopy isBundleTimeTagSpecific];
      *&v29 = v28 + 0.5;
      [rankingCopy setIsBundleTimeTagSpecific:v29];
    }

    else
    {
      LODWORD(v26) = 1.0;
      [rankingCopy setIsBundleTimeTagSpecific:v26];
      v27 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [MOEventBundleRanking _fillQualityInfoForRanking:forBundle:];
      }
    }
  }

  place = [bundleCopy place];
  placeType = [place placeType];

  if (placeType > 4)
  {
    if (placeType <= 99)
    {
      if (placeType == 5)
      {
        v22 = 0.2;
        goto LABEL_38;
      }

      if (placeType != 6)
      {
        goto LABEL_39;
      }
    }

    else if (placeType != 100 && placeType != 101 && placeType != 102)
    {
      goto LABEL_39;
    }

LABEL_37:
    v22 = 1.0;
    goto LABEL_38;
  }

  if (placeType > 2)
  {
    if (placeType != 3)
    {
      v22 = 0.4;
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (placeType < 2)
  {
LABEL_38:
    *&v32 = v22;
    [rankingCopy setIsBundlePlaceTypeSpecific:v32];
    goto LABEL_39;
  }

  if (placeType == 2)
  {
    v22 = 0.8;
    goto LABEL_38;
  }

LABEL_39:
  place2 = [bundleCopy place];
  placeUserType = [place2 placeUserType];

  if ((placeUserType - 1) < 4)
  {
    goto LABEL_40;
  }

  if (!placeUserType)
  {
    v35 = 0.0;
    goto LABEL_41;
  }

  if (placeUserType == 100)
  {
LABEL_40:
    LODWORD(v35) = 1.0;
LABEL_41:
    [rankingCopy setIsBundlePlaceTypeSpecific:v35];
  }

  [rankingCopy isBundlePlaceTypeSpecific];
  v37 = v36;
  [rankingCopy isBundleTimeTagSpecific];
  v39 = v37 + v38;
  [rankingCopy isBundleActionSpecific];
  *&v41 = v39 + v40;
  [rankingCopy setLabelSpecificityNormalized:v41];
  persons = [bundleCopy persons];
  v43 = [persons count];

  if (v43)
  {
    [rankingCopy labelSpecificityNormalized];
    if ((*&v44 + 0.5) <= 4.0)
    {
      [rankingCopy labelSpecificityNormalized];
      *&v47 = v46 + 0.5;
      [rankingCopy setLabelSpecificityNormalized:v47];
    }

    else
    {
      LODWORD(v44) = 4.0;
      [rankingCopy setLabelSpecificityNormalized:v44];
      v45 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [MOEventBundleRanking _fillQualityInfoForRanking:forBundle:];
      }
    }
  }

  [rankingCopy labelSpecificityNormalized];
  *&v49 = v48 * 0.25;
  [rankingCopy setLabelSpecificityNormalized:v49];
  [rankingCopy labelSpecificityNormalized];
  v51 = v50;
  metaDataForRank = [bundleCopy metaDataForRank];
  v53 = [metaDataForRank objectForKey:@"LabelConfidence"];
  [v53 floatValue];
  *&v55 = v51 * v54;
  [rankingCopy setLabelQualityScore:v55];

  metaDataForRank2 = [bundleCopy metaDataForRank];
  v57 = [metaDataForRank2 objectForKey:@"TimeCorrelationScore"];

  if (v57)
  {
    metaDataForRank3 = [bundleCopy metaDataForRank];
    v59 = [metaDataForRank3 objectForKey:@"TimeCorrelationScore"];
    [v59 floatValue];
    [rankingCopy setTimeCorrelationScoreFeature:?];
  }

  else
  {
    [rankingCopy setTimeCorrelationScoreFeature:0.0];
  }
}

- (void)_fillHeuristicsInfoForRanking:(id)ranking forBundle:(id)bundle
{
  rankingCopy = ranking;
  bundleCopy = bundle;
  photoTraits = [bundleCopy photoTraits];
  v9 = [MOMetaDataCurationUtility selectHolidayFromPhotoTraits:photoTraits];

  v280 = bundleCopy;
  v281 = v9;
  selfCopy = self;
  if (v9)
  {
    v288 = 0u;
    v289 = 0u;
    v286 = 0u;
    v287 = 0u;
    holidayTuningParameters = [(MOEventBundleRanking *)self holidayTuningParameters];
    allValues = [holidayTuningParameters allValues];

    v12 = [allValues countByEnumeratingWithState:&v286 objects:v291 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v287;
LABEL_4:
      relevantAssetUUIDs2 = allValues;
      v16 = 0;
      while (1)
      {
        if (*v287 != v14)
        {
          objc_enumerationMutation(relevantAssetUUIDs2);
        }

        v17 = *(*(&v286 + 1) + 8 * v16);
        holidayIdentifier = [v281 holidayIdentifier];
        v19 = [v17 objectForKeyedSubscript:@"holidayIdentifier"];
        v20 = [holidayIdentifier isEqualToString:v19];

        if (v20)
        {
          relevantAssetUUIDs = [v281 relevantAssetUUIDs];
          v22 = [relevantAssetUUIDs count];
          v23 = [v17 objectForKeyedSubscript:@"minPhotoCount"];
          intValue = [v23 intValue];

          if (v22 < intValue)
          {
            break;
          }
        }

        if (v13 == ++v16)
        {
          allValues = relevantAssetUUIDs2;
          v13 = [relevantAssetUUIDs2 countByEnumeratingWithState:&v286 objects:v291 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      relevantAssetUUIDs2 = [v281 relevantAssetUUIDs];
      [rankingCopy setNumHolidayAssets:{objc_msgSend(relevantAssetUUIDs2, "count")}];
    }

    self = selfCopy;
    bundleCopy = v280;
  }

  photoTraits2 = [bundleCopy photoTraits];
  v26 = [MOMetaDataCurationUtility selectBirthdayFromPhotoTraits:photoTraits2];

  if (v26)
  {
    v27 = [MOMetaDataCurationUtility getPersonFromBirthdayPhotoTrait:v26 eventBundle:bundleCopy];
    if (v27)
    {
      relevantAssetUUIDs3 = [v26 relevantAssetUUIDs];
      [rankingCopy setNumBirthdayAssets:{objc_msgSend(relevantAssetUUIDs3, "count")}];
    }
  }

  v278 = v26;
  resources = [bundleCopy resources];
  if (resources)
  {
    v30 = resources;
    resources2 = [bundleCopy resources];
    v32 = [resources2 count];

    if (v32)
    {
      v33 = [NSPredicate predicateWithFormat:@"type == %lu", 17];
      resources3 = [bundleCopy resources];
      v35 = [resources3 filteredArrayUsingPredicate:v33];

      if ([v35 count])
      {
        [rankingCopy setNumInviteEvents:{objc_msgSend(v35, "count")}];
      }
    }
  }

  if ([bundleCopy interfaceType] == 13)
  {
    [(MOEventBundleRanking *)self updateTripMetaDataForRank:bundleCopy];
    v36 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [MOEventBundleRanking _fillHeuristicsInfoForRanking:bundleCopy forBundle:?];
    }
  }

  metaDataForRank = [bundleCopy metaDataForRank];
  v38 = [metaDataForRank objectForKeyedSubscript:@"PoiCategory"];

  v39 = +[NSNull null];
  v277 = v38;
  if ([v38 isEqual:v39])
  {

LABEL_29:
    [rankingCopy setInterestingPOIFeature:0.0];
    goto LABEL_31;
  }

  isSensitive = [bundleCopy isSensitive];

  if (isSensitive)
  {
    goto LABEL_29;
  }

  metaDataForRank2 = [bundleCopy metaDataForRank];
  v42 = [metaDataForRank2 objectForKeyedSubscript:@"PoiCategory"];
  [v42 floatValue];
  [rankingCopy setInterestingPOIFeature:?];

LABEL_31:
  [rankingCopy setFamiliarityIndexFeature:0.0];
  [rankingCopy setDistanceToHomeFeatureNormalized:0.0];
  metaDataForRank3 = [bundleCopy metaDataForRank];
  v44 = [metaDataForRank3 objectForKey:@"FamiliarityIndex"];

  if (!v44)
  {
    goto LABEL_56;
  }

  metaDataForRank4 = [bundleCopy metaDataForRank];
  v46 = [metaDataForRank4 objectForKey:@"FamiliarityIndex"];
  [v46 floatValue];
  v48 = v47;

  rankingScoreThresholdDict = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v50 = [rankingScoreThresholdDict objectForKeyedSubscript:@"FIDownRankThreshold"];
  [v50 floatValue];
  v52 = v51;

  if (v48 != 0.0 || ([rankingCopy interestingPOIFeature], v54 = 1.0, *&v53 != 1.0) && (objc_msgSend(rankingCopy, "numPhotoAssetsResourcesNormalized"), *&v53 <= 0.0))
  {
    if (v48 > 0.0 && v48 <= v52 && (([rankingCopy interestingPOIFeature], *&v53 == 1.0) || (objc_msgSend(rankingCopy, "numPhotoAssetsResourcesNormalized"), *&v53 > 0.0)))
    {
      v54 = (v48 * -4.0) + 3.0;
    }

    else
    {
      v55 = v48;
      if (v48 > v52 && self->_recommendedTabVisitFIThreshold >= v55 && ([rankingCopy numPhotoAssetsResourcesNormalized], *&v53 == 0.0))
      {
        v54 = (v48 * -6.67) + 5.0;
      }

      else
      {
        if (v48 >= 1.0)
        {
          goto LABEL_48;
        }

        if (self->_recommendedTabVisitFIThreshold >= v55)
        {
          goto LABEL_48;
        }

        [rankingCopy numPhotoAssetsResourcesNormalized];
        v54 = -1.0;
        if (*&v53 != 0.0)
        {
          goto LABEL_48;
        }
      }
    }
  }

  *&v53 = v54;
  [rankingCopy setFamiliarityIndexFeature:v53];
LABEL_48:
  [rankingCopy familiarityIndexFeature];
  if (*&v56 > 1.0)
  {
    LODWORD(v56) = 1.0;
    [rankingCopy setFamiliarityIndexFeature:v56];
  }

  metaDataForRank5 = [bundleCopy metaDataForRank];
  v58 = [metaDataForRank5 objectForKeyedSubscript:@"DistanceToHome"];
  [v58 floatValue];
  v60 = v59;

  rankingScoreThresholdDict2 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v62 = [rankingScoreThresholdDict2 objectForKeyedSubscript:@"distanceToHomeThreshold"];
  [v62 floatValue];
  v64 = v63;

  [rankingCopy interestingPOIFeature];
  if (*&v65 != -1.0 && v48 >= 0.0 && v48 <= v52 && v60 > 0.0)
  {
    *&v65 = v60 / v64;
    [rankingCopy setDistanceToHomeFeatureNormalized:v65];
    if (v60 > v64)
    {
      LODWORD(v66) = 1.0;
      [rankingCopy setDistanceToHomeFeatureNormalized:v66];
    }
  }

LABEL_56:
  [rankingCopy setNumFamilyNormalized:0.0];
  [rankingCopy setNumKidsNormalized:0.0];
  [rankingCopy setNumFriendsNormalized:0.0];
  [rankingCopy setNumCoworkersNormalized:0.0];
  [rankingCopy setNumPetsNormalized:0.0];
  [rankingCopy setNumOtherPersonsNormalized:0.0];
  persons = [bundleCopy persons];
  v68 = [persons count];

  if (v68)
  {
    v284 = 0u;
    v285 = 0u;
    v282 = 0u;
    v283 = 0u;
    persons2 = [bundleCopy persons];
    v70 = [persons2 countByEnumeratingWithState:&v282 objects:v290 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v283;
      do
      {
        v73 = 0;
        do
        {
          if (*v283 != v72)
          {
            objc_enumerationMutation(persons2);
          }

          v74 = *(*(&v282 + 1) + 8 * v73);
          if (([v74 isMePerson] & 1) == 0)
          {
            v75 = [MOMetaDataCurationUtility getTheBestPersonRelationtshipTagFor:v74];
            if (v75 > 20)
            {
              switch(v75)
              {
                case 21:
                  [rankingCopy numFriendsNormalized];
                  *&v83 = v82 + 1.0;
                  [rankingCopy setNumFriendsNormalized:v83];
                  break;
                case 22:
                  [rankingCopy numCoworkersNormalized];
                  *&v87 = v86 + 1.0;
                  [rankingCopy setNumCoworkersNormalized:v87];
                  break;
                case 27:
                  [rankingCopy numPetsNormalized];
                  *&v79 = v78 + 1.0;
                  [rankingCopy setNumPetsNormalized:v79];
                  break;
              }
            }

            else
            {
              switch(v75)
              {
                case 1:
                  [rankingCopy numOtherPersonsNormalized];
                  *&v81 = v80 + 1.0;
                  [rankingCopy setNumOtherPersonsNormalized:v81];
                  break;
                case 4:
                  [rankingCopy numFamilyNormalized];
                  *&v85 = v84 + 1.0;
                  [rankingCopy setNumFamilyNormalized:v85];
                  break;
                case 15:
                  [rankingCopy numKidsNormalized];
                  *&v77 = v76 + 1.0;
                  [rankingCopy setNumKidsNormalized:v77];
                  break;
              }
            }
          }

          v73 = v73 + 1;
        }

        while (v71 != v73);
        v88 = [persons2 countByEnumeratingWithState:&v282 objects:v290 count:16];
        v71 = v88;
      }

      while (v88);
    }

    bundleCopy = v280;
  }

  v89 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleRanking _fillHeuristicsInfoForRanking:rankingCopy forBundle:?];
  }

  [rankingCopy numFamilyNormalized];
  v90 = 1.0;
  v91 = *&v92 < 2.0;
  LODWORD(v92) = 1.0;
  if (v91)
  {
    [rankingCopy numFamilyNormalized];
    *&v92 = *&v92 * 0.5;
  }

  [rankingCopy setNumFamilyNormalized:v92];
  [rankingCopy numKidsNormalized];
  if (*&v93 < 2.0)
  {
    [rankingCopy numKidsNormalized];
    v90 = *&v93 * 0.5;
  }

  *&v93 = v90;
  [rankingCopy setNumKidsNormalized:v93];
  [rankingCopy numFriendsNormalized];
  v94 = 1.0;
  v91 = *&v95 < 2.0;
  LODWORD(v95) = 1.0;
  if (v91)
  {
    [rankingCopy numFriendsNormalized];
    *&v95 = *&v95 * 0.5;
  }

  [rankingCopy setNumFriendsNormalized:v95];
  [rankingCopy numCoworkersNormalized];
  if (*&v96 < 2.0)
  {
    [rankingCopy numCoworkersNormalized];
    v94 = *&v96 * 0.5;
  }

  *&v96 = v94;
  [rankingCopy setNumCoworkersNormalized:v96];
  [rankingCopy numPetsNormalized];
  v97 = 1.0;
  v91 = *&v98 < 2.0;
  LODWORD(v98) = 1.0;
  if (v91)
  {
    [rankingCopy numPetsNormalized];
    *&v98 = *&v98 * 0.5;
  }

  [rankingCopy setNumPetsNormalized:v98];
  [rankingCopy numOtherPersonsNormalized];
  if (*&v99 < 2.0)
  {
    [rankingCopy numOtherPersonsNormalized];
    v97 = *&v99 * 0.5;
  }

  *&v99 = v97;
  [rankingCopy setNumOtherPersonsNormalized:v99];
  [rankingCopy setCallDurationFeatureNormalized:0.0];
  rankingScoreThresholdDict3 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v101 = [rankingScoreThresholdDict3 objectForKeyedSubscript:@"callDurationThreshold"];
  [v101 floatValue];
  v103 = v102;

  metaDataForRank6 = [bundleCopy metaDataForRank];
  v105 = [metaDataForRank6 objectForKey:@"callDuration"];
  [v105 doubleValue];
  v107 = v106;

  metaDataForRank7 = [bundleCopy metaDataForRank];
  v109 = metaDataForRank7;
  if (v107 <= 0.0)
  {
    v114 = [metaDataForRank7 objectForKey:@"dailyAggregateCallDuration"];
    [v114 floatValue];
    v116 = v115;

    if (v116 <= 0.0)
    {
      goto LABEL_103;
    }

    metaDataForRank8 = [bundleCopy metaDataForRank];
    v118 = [metaDataForRank8 objectForKey:@"dailyAggregateCallDuration"];
    [v118 floatValue];
    v112 = v119;
  }

  else
  {
    v110 = [metaDataForRank7 objectForKey:@"callDuration"];
    [v110 floatValue];
    v112 = v111;
  }

  *&v113 = v112 / v103;
  [rankingCopy setCallDurationFeatureNormalized:v113];
  if (v112 > v103)
  {
    LODWORD(v120) = 1.0;
    [rankingCopy setCallDurationFeatureNormalized:v120];
  }

LABEL_103:
  [rankingCopy setBurstyInteractionCountFeatureNormalized:0.0];
  metaDataForRank9 = [bundleCopy metaDataForRank];
  v122 = [metaDataForRank9 objectForKey:@"burstyInteractionCount"];
  [v122 doubleValue];
  v124 = v123;

  if (v124 > 0.0)
  {
    metaDataForRank10 = [bundleCopy metaDataForRank];
    v126 = [metaDataForRank10 objectForKey:@"burstyInteractionCount"];
    [v126 floatValue];
    v128 = v127;

    rankingScoreThresholdDict4 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v130 = [rankingScoreThresholdDict4 objectForKeyedSubscript:@"burstyInteractionCountThreshold"];
    *&v131 = v128 / [v130 intValue];
    [rankingCopy setBurstyInteractionCountFeatureNormalized:v131];

    rankingScoreThresholdDict5 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v133 = [rankingScoreThresholdDict5 objectForKeyedSubscript:@"burstyInteractionCountThreshold"];
    intValue2 = [v133 intValue];

    if (v128 > intValue2)
    {
      LODWORD(v135) = 1.0;
      [rankingCopy setBurstyInteractionCountFeatureNormalized:v135];
    }
  }

  [rankingCopy setMultipleInteractionTypesFeature:0];
  metaDataForRank11 = [bundleCopy metaDataForRank];
  v137 = [metaDataForRank11 objectForKey:@"multipleInteractionTypes"];
  bOOLValue = [v137 BOOLValue];

  if (bOOLValue)
  {
    [rankingCopy setMultipleInteractionTypesFeature:1];
  }

  [rankingCopy setContactLocationWorkFeature:0];
  metaDataForRank12 = [bundleCopy metaDataForRank];
  v140 = [metaDataForRank12 objectForKey:@"contactLocationWork"];
  bOOLValue2 = [v140 BOOLValue];

  if (bOOLValue2)
  {
    [rankingCopy setContactLocationWorkFeature:0xFFFFFFFFLL];
  }

  metaDataForRank13 = [bundleCopy metaDataForRank];
  v143 = [metaDataForRank13 objectForKeyedSubscript:@"isFamilyContact"];
  [v143 floatValue];
  [rankingCopy setIsFamilyContact:?];

  metaDataForRank14 = [bundleCopy metaDataForRank];
  v145 = [metaDataForRank14 objectForKeyedSubscript:@"isCoworkerContact"];
  [v145 floatValue];
  [rankingCopy setIsCoworkerContact:?];

  metaDataForRank15 = [bundleCopy metaDataForRank];
  v147 = [metaDataForRank15 objectForKeyedSubscript:@"isRepetitiveContact"];
  [rankingCopy setIsRepetitiveContact:{objc_msgSend(v147, "BOOLValue")}];

  metaDataForRank16 = [bundleCopy metaDataForRank];
  v149 = [metaDataForRank16 objectForKeyedSubscript:@"isGroupConversation"];
  [rankingCopy setGroupConversationFeature:{objc_msgSend(v149, "BOOLValue")}];

  [rankingCopy setWorkoutDurationFeatureNormalized:0.0];
  metaDataForRank17 = [bundleCopy metaDataForRank];
  v151 = [metaDataForRank17 objectForKey:@"WorkoutDuration"];
  [v151 floatValue];
  v153 = v152;

  rankingScoreThresholdDict6 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v155 = [rankingScoreThresholdDict6 objectForKeyedSubscript:@"workoutDurationThreshold"];
  [v155 floatValue];
  v157 = v156;

  if ([rankingCopy bundleSubType] == 202)
  {
    rankingScoreThresholdDict7 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v160 = [rankingScoreThresholdDict7 objectForKeyedSubscript:@"WeeklySummaryWorkoutDurationThreshold"];
    [v160 floatValue];
    v157 = v161;
  }

  if (v153 > 0.0)
  {
    *&v158 = v153 / v157;
    if (v153 >= v157)
    {
      *&v158 = 1.0;
    }

    [rankingCopy setWorkoutDurationFeatureNormalized:v158];
  }

  rankingScoreThresholdDict8 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v163 = [rankingScoreThresholdDict8 objectForKeyedSubscript:@"mediaPlayTimeThreshold"];
  [v163 floatValue];
  v165 = v164;

  v166 = MediaWeeklySummarySubtypeVariants;
  v167 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [rankingCopy bundleSubType]);
  LODWORD(v166) = [v166 containsObject:v167];

  if (v166)
  {
    rankingScoreThresholdDict9 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v169 = [rankingScoreThresholdDict9 objectForKeyedSubscript:@"weeklySummaryMediaPlayTimeThreshold"];
    [v169 floatValue];
    v165 = v170;
  }

  metaDataForRank18 = [bundleCopy metaDataForRank];
  v172 = [metaDataForRank18 objectForKey:@"MediaActionIsRepeat"];
  [v172 floatValue];
  [rankingCopy setMediaScoreFeatureNormalized:?];

  metaDataForRank19 = [bundleCopy metaDataForRank];
  v174 = [metaDataForRank19 objectForKey:@"MediaTotalPlayTime"];
  [v174 floatValue];
  v176 = v175;

  if (v176 > 0.0)
  {
    [rankingCopy mediaScoreFeatureNormalized];
    if (v176 >= v165)
    {
      *&v177 = *&v177 + 0.5;
    }

    else
    {
      v177 = v176 * 0.5 / v165 + *&v177;
      *&v177 = v177;
    }

    [rankingCopy setMediaScoreFeatureNormalized:v177];
  }

  [rankingCopy setItemFromMeFeature:0];
  metaDataForRank20 = [bundleCopy metaDataForRank];
  v179 = [metaDataForRank20 objectForKey:@"ItemShareDirection"];
  if ([v179 intValue] == 1)
  {

LABEL_126:
    [rankingCopy setItemFromMeFeature:1];
    goto LABEL_127;
  }

  metaDataForRank21 = [bundleCopy metaDataForRank];
  v181 = [metaDataForRank21 objectForKey:@"ItemShareDirection"];
  intValue3 = [v181 intValue];

  if (intValue3 == 3)
  {
    goto LABEL_126;
  }

LABEL_127:
  v183 = 0.0;
  [rankingCopy setShareCountFeatureNormalized:0.0];
  v184 = v280;
  metaDataForRank22 = [v280 metaDataForRank];
  v186 = [metaDataForRank22 objectForKey:@"ItemAttributionsCount"];
  intValue4 = [v186 intValue];

  if (intValue4 >= 1)
  {
    metaDataForRank23 = [v280 metaDataForRank];
    v189 = [metaDataForRank23 objectForKey:@"ItemAttributionsCount"];
    [v189 floatValue];
    v191 = v190;

    rankingScoreThresholdDict10 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v193 = [rankingScoreThresholdDict10 objectForKeyedSubscript:@"shareCountThreshold"];
    [v193 floatValue];
    *&v195 = v191 / v194;
    [rankingCopy setShareCountFeatureNormalized:v195];

    rankingScoreThresholdDict11 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v197 = [rankingScoreThresholdDict11 objectForKeyedSubscript:@"shareCountThreshold"];
    [v197 floatValue];
    v199 = v198;

    if (v191 > v199)
    {
      LODWORD(v200) = 1.0;
      [rankingCopy setShareCountFeatureNormalized:v200];
    }
  }

  rankingScoreThresholdDict12 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v202 = [rankingScoreThresholdDict12 objectForKeyedSubscript:@"maxPeopleCountFromSocialContext"];
  [v202 floatValue];
  v204 = v203;

  metaDataForRank24 = [v280 metaDataForRank];
  v206 = [metaDataForRank24 objectForKey:@"PeopleCountWeightedAverage"];

  if (v206)
  {
    [v206 floatValue];
    v183 = *&v207 / v204;
  }

  *&v207 = v183;
  [rankingCopy setPeopleCountWeightedAverageNormalized:v207];
  [rankingCopy peopleCountWeightedAverageNormalized];
  if (*&v208 > 1.0)
  {
    LODWORD(v208) = 1.0;
    [rankingCopy setPeopleCountWeightedAverageNormalized:v208];
  }

  metaDataForRank25 = [v280 metaDataForRank];
  v210 = [metaDataForRank25 objectForKey:@"PeopleCountMax"];

  if (v210)
  {
    [v210 floatValue];
    *&v211 = *&v211 / v204;
  }

  else
  {
    v211 = 0.0;
  }

  v276 = v206;
  [rankingCopy setPeopleCountMaxNormalized:v211];
  [rankingCopy peopleCountMaxNormalized];
  if (*&v212 > 1.0)
  {
    LODWORD(v212) = 1.0;
    [rankingCopy setPeopleCountMaxNormalized:v212];
  }

  endDate = [v280 endDate];
  startDate = [v280 startDate];
  [endDate timeIntervalSinceDate:startDate];
  v216 = v215;

  if (v216 <= 0.0)
  {
    [rankingCopy setPeopleCountWeightedSumNormalized:0.0];
  }

  else
  {
    endDate2 = [v280 endDate];
    startDate2 = [v280 startDate];
    [endDate2 timeIntervalSinceDate:startDate2];
    v220 = v219;

    metaDataForRank26 = [v280 metaDataForRank];
    v222 = [metaDataForRank26 objectForKey:@"PeopleCountWeightedSum"];

    if (v222)
    {
      v223 = v220 * v204;
      [v222 floatValue];
      *&v224 = *&v224 / v223;
    }

    else
    {
      v224 = 0.0;
    }

    [rankingCopy setPeopleCountWeightedSumNormalized:v224];
    [rankingCopy peopleCountWeightedSumNormalized];
    if (*&v225 > 1.0)
    {
      LODWORD(v225) = 1.0;
      [rankingCopy setPeopleCountWeightedSumNormalized:v225];
    }
  }

  metaDataForRank27 = [v280 metaDataForRank];
  v227 = [metaDataForRank27 objectForKey:@"PeopleDensityWeightedAverage"];

  v229 = 0.0;
  if (v227)
  {
    [rankingCopy interestingPOIFeature];
    if (v230 > 0.0 || [v280 interfaceType] == 1)
    {
      [v227 floatValue];
      v229 = *&v228 / v204;
    }
  }

  *&v228 = v229;
  [rankingCopy setPeopleDensityWeightedAverageNormalized:v228];
  [rankingCopy peopleDensityWeightedAverageNormalized];
  if (*&v231 > 1.0)
  {
    LODWORD(v231) = 1.0;
    [rankingCopy setPeopleDensityWeightedAverageNormalized:v231];
  }

  metaDataForRank28 = [v280 metaDataForRank];
  v233 = [metaDataForRank28 objectForKey:@"PeopleDensityMax"];

  if (v233)
  {
    [v233 floatValue];
    *&v234 = *&v234 / v204;
  }

  else
  {
    v234 = 0.0;
  }

  [rankingCopy setPeopleDensityMaxNormalized:v234];
  [rankingCopy peopleDensityMaxNormalized];
  v236 = 1.0;
  if (*&v235 > 1.0)
  {
    LODWORD(v235) = 1.0;
    [rankingCopy setPeopleDensityMaxNormalized:v235];
  }

  metaDataForRank29 = [v280 metaDataForRank];
  v238 = [metaDataForRank29 objectForKeyedSubscript:@"TimeAtHomeDuration"];
  [v238 floatValue];
  v240 = v239;
  rankingScoreThresholdDict13 = [(MOEventBundleRanking *)selfCopy rankingScoreThresholdDict];
  v242 = [rankingScoreThresholdDict13 objectForKeyedSubscript:@"timeAtHomeDurationThreshold"];
  [v242 floatValue];
  *&v244 = v240 / v243;
  [rankingCopy setTimeAtHomeDuration:v244];

  metaDataForRank30 = [v280 metaDataForRank];
  v246 = [metaDataForRank30 objectForKey:@"StateOfMindLabels"];

  rankingScoreThresholdDict14 = [(MOEventBundleRanking *)selfCopy rankingScoreThresholdDict];
  v248 = [rankingScoreThresholdDict14 objectForKeyedSubscript:@"stateOfMindLabelCountThreshold"];
  [v248 doubleValue];
  v250 = v249;

  v251 = [v246 count];
  if (v250 > v251)
  {
    v251 = [v246 count] / v250;
    v236 = v251;
  }

  *&v251 = v236;
  [rankingCopy setStateOfMindLabelCountNormalized:v251];
  metaDataForRank31 = [v280 metaDataForRank];
  v253 = [metaDataForRank31 objectForKey:@"StateOfMindDomains"];

  rankingScoreThresholdDict15 = [(MOEventBundleRanking *)selfCopy rankingScoreThresholdDict];
  v255 = [rankingScoreThresholdDict15 objectForKeyedSubscript:@"stateOfMindDomainCountThreshold"];
  [v255 doubleValue];
  v257 = v256;

  v258 = [v253 count];
  LODWORD(v259) = 1.0;
  if (v257 > v258)
  {
    v259 = [v253 count] / v257;
    *&v259 = v259;
  }

  [rankingCopy setStateOfMindDomainCountNormalized:v259];
  metaDataForRank32 = [v280 metaDataForRank];
  v261 = [metaDataForRank32 objectForKey:@"StateOfMindLoggedIn3pApp"];
  *&v262 = [v261 BOOLValue];
  [rankingCopy setStateOfMindLoggedIn3pApp:v262];

  metaDataForRank33 = [v280 metaDataForRank];
  v264 = [metaDataForRank33 objectForKey:@"StateOfMindLoggedInJournalApp"];
  *&v265 = [v264 BOOLValue];
  [rankingCopy setStateOfMindLoggedInJournalApp:v265];

  [rankingCopy setIsBundleAggregated:{objc_msgSend(v280, "isAggregatedAndSuppressed")}];
  [rankingCopy setSummarizationGranularity:{objc_msgSend(v280, "summarizationGranularity")}];
  [rankingCopy setAvgSubBundleGoodnessScores:0.0];
  if ([v280 interfaceType] == 15 || objc_msgSend(v280, "interfaceType") == 16)
  {
    clusterMetadata = [v280 clusterMetadata];
    subBundleGoodnessScores = [clusterMetadata subBundleGoodnessScores];
    v268 = [subBundleGoodnessScores valueForKeyPath:@"@avg.self"];
    [v268 floatValue];
    [rankingCopy setAvgSubBundleGoodnessScores:?];

    clusterMetadata2 = [v280 clusterMetadata];
    subBundleGoodnessScores2 = [clusterMetadata2 subBundleGoodnessScores];
    v271 = [subBundleGoodnessScores2 valueForKeyPath:@"@max.self"];
    [v271 floatValue];
    [rankingCopy setMaxSubBundleGoodnessScores:?];

    v184 = v280;
    clusterMetadata3 = [v280 clusterMetadata];
    subBundleGoodnessScores3 = [clusterMetadata3 subBundleGoodnessScores];
    [rankingCopy setSubBundleCount:{objc_msgSend(subBundleGoodnessScores3, "count")}];
  }

  [rankingCopy setIsSensitiveLocation:{objc_msgSend(v184, "isSensitive")}];
  metaDataForRank34 = [v184 metaDataForRank];
  v275 = [metaDataForRank34 objectForKey:@"BusinessContact"];

  [rankingCopy setIsBusinessContact:{objc_msgSend(v275, "isEqualToNumber:", &off_1000C8740)}];
}

- (void)_fillRichnessInfoForRanking:(id)ranking forBundle:(id)bundle
{
  rankingCopy = ranking;
  bundleCopy = bundle;
  [rankingCopy setBundleInterfaceType:{objc_msgSend(bundleCopy, "interfaceType")}];
  [rankingCopy setBundleSubType:{objc_msgSend(bundleCopy, "bundleSubType")}];
  [rankingCopy setBundleSuperType:{objc_msgSend(bundleCopy, "bundleSuperType")}];
  [rankingCopy setEvergreenType:0];
  [rankingCopy setEvergreenPromptExists:0];
  if ([bundleCopy interfaceType] == 11)
  {
    resources = [bundleCopy resources];
    v8 = [resources count];

    if (v8)
    {
      resources2 = [bundleCopy resources];
      firstObject = [resources2 firstObject];

      name = [firstObject name];
      [rankingCopy setEvergreenType:name];

      v12 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [MOEventBundleRanking _fillRichnessInfoForRanking:rankingCopy forBundle:?];
      }

      promptIndexes = [firstObject promptIndexes];
      v14 = [promptIndexes count] == 0;

      if (!v14)
      {
        [rankingCopy setEvergreenPromptExists:1];
        v15 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [MOEventBundleRanking _fillRichnessInfoForRanking:forBundle:];
        }
      }
    }
  }

  v16 = visitSubtypeVariants;
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy bundleSubType]);
  if (([v16 containsObject:v17] & 1) != 0 || objc_msgSend(bundleCopy, "bundleSubType") == 105)
  {
    v18 = 0;
  }

  else
  {
    v37 = phoneSensedWalkingVariants;
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy bundleSubType]);
    if (([v37 containsObject:v16] & 1) == 0 && objc_msgSend(bundleCopy, "bundleSuperType") != 10)
    {

LABEL_92:
      [rankingCopy setAllPlaceNames:emptyStringSet];
      goto LABEL_30;
    }

    v18 = 1;
  }

  place = [bundleCopy place];
  if (place)
  {

    if (v18)
    {
    }

    goto LABEL_17;
  }

  places = [bundleCopy places];

  if (v18)
  {

    if (!places)
    {
      goto LABEL_92;
    }
  }

  else
  {

    if (!places)
    {
      goto LABEL_92;
    }
  }

LABEL_17:
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__4;
  v110 = __Block_byref_object_dispose__4;
  v111 = objc_opt_new();
  place2 = [bundleCopy place];
  placeName = [place2 placeName];
  v22 = placeName == 0;

  if (!v22)
  {
    v23 = v107[5];
    place3 = [bundleCopy place];
    placeName2 = [place3 placeName];
    [v23 addObject:placeName2];
  }

  places2 = [bundleCopy places];
  v27 = places2 == 0;

  if (!v27)
  {
    places3 = [bundleCopy places];
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke;
    v105[3] = &unk_1000B72A0;
    v105[4] = &v106;
    [places3 enumerateObjectsUsingBlock:v105];
  }

  v29 = [v107[5] count];
  if (v29)
  {
    v30 = [v107[5] copy];
  }

  else
  {
    v30 = emptyStringSet;
  }

  [rankingCopy setAllPlaceNames:v30];
  if (v29)
  {
  }

  _Block_object_dispose(&v106, 8);

LABEL_30:
  if ([bundleCopy bundleSuperType] != 3 || (objc_msgSend(bundleCopy, "persons"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 == 0, v32, v33))
  {
    [rankingCopy setAllContactIdentifiers:emptyStringSet];
  }

  else
  {
    v106 = 0;
    v107 = &v106;
    v108 = 0x3032000000;
    v109 = __Block_byref_object_copy__4;
    v110 = __Block_byref_object_dispose__4;
    v111 = objc_opt_new();
    persons = [bundleCopy persons];
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_2;
    v104[3] = &unk_1000B72C8;
    v104[4] = &v106;
    [persons enumerateObjectsUsingBlock:v104];

    v35 = [v107[5] count];
    if (v35)
    {
      v36 = [v107[5] copy];
    }

    else
    {
      v36 = emptyStringSet;
    }

    [rankingCopy setAllContactIdentifiers:v36];
    if (v35)
    {
    }

    _Block_object_dispose(&v106, 8);
  }

  v38 = workoutSubtypeVariants;
  v39 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy bundleSubType]);
  if ([v38 containsObject:v39])
  {
    goto LABEL_48;
  }

  v40 = phoneSensedWalkingVariants;
  v41 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy bundleSubType]);
  if (([v40 containsObject:v41] & 1) != 0 || objc_msgSend(bundleCopy, "bundleSubType") == 203)
  {

LABEL_48:
    goto LABEL_49;
  }

  v83 = [bundleCopy bundleSubType] == 202;

  if (!v83)
  {
    [rankingCopy setWorkoutTypes:emptyStringSet];
    goto LABEL_61;
  }

LABEL_49:
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__4;
  v110 = __Block_byref_object_dispose__4;
  v111 = objc_opt_new();
  action = [bundleCopy action];
  actionName = [action actionName];
  if (!actionName)
  {
LABEL_52:

    goto LABEL_53;
  }

  v44 = [bundleCopy bundleSubType] == 202;

  if (!v44)
  {
    v45 = v107[5];
    action = [bundleCopy action];
    actionName2 = [action actionName];
    [v45 addObject:actionName2];

    goto LABEL_52;
  }

LABEL_53:
  actions = [bundleCopy actions];
  v48 = actions == 0;

  if (!v48)
  {
    actions2 = [bundleCopy actions];
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_3;
    v103[3] = &unk_1000B72F0;
    v103[4] = &v106;
    [actions2 enumerateObjectsUsingBlock:v103];
  }

  v50 = [v107[5] count];
  if (v50)
  {
    v51 = [v107[5] copy];
  }

  else
  {
    v51 = emptyStringSet;
  }

  [rankingCopy setWorkoutTypes:v51];
  if (v50)
  {
  }

  _Block_object_dispose(&v106, 8);

LABEL_61:
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_4;
  v101[3] = &unk_1000B6740;
  v52 = objc_alloc_init(NSCountedSet);
  v102 = v52;
  [bundleCopy withResourcesUsingBlock:v101];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v52;
  v53 = [obj countByEnumeratingWithState:&v97 objects:v113 count:16];
  if (v53)
  {
    v54 = 0;
    v55 = *v98;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v98 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v97 + 1) + 8 * i);
        if ([v57 intValue] && objc_msgSend(v57, "intValue") != 12)
        {
          ++v54;
        }
      }

      v53 = [obj countByEnumeratingWithState:&v97 objects:v113 count:16];
    }

    while (v53);
    v58 = v54;
  }

  else
  {
    v58 = 0.0;
  }

  v86 = objc_opt_new();
  *&v59 = v58 / 7.0;
  v60 = [NSNumber numberWithFloat:v59];
  [v86 setObject:v60 forKey:@"RankingRichnessPrimaryPriorityScoreKey"];

  [v86 setObject:&off_1000C9D60 forKey:@"RankingRichnessSecondaryPriorityScoreKey"];
  [v86 setObject:&off_1000C9D60 forKey:@"RankingRichnessAuxiliaryPriorityScoreKey"];
  [rankingCopy setNumPhotoAssetsResourcesNormalized:0.0];
  [rankingCopy setNumMediaTypeResourcesNormalized:0.0];
  v61 = objc_opt_new();
  [v61 setObject:v86 forKey:@"NumUniqueResourceTypesNormalizedKey"];
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_526;
  v93[3] = &unk_1000B7318;
  v85 = rankingCopy;
  v94 = v85;
  v87 = v61;
  v95 = v87;
  v96 = bundleCopy;
  v84 = v96;
  [v96 withResourcesUsingBlock:v93];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  allKeys = [v87 allKeys];
  v63 = [allKeys countByEnumeratingWithState:&v89 objects:v112 count:16];
  if (v63)
  {
    v64 = *v90;
    do
    {
      for (j = 0; j != v63; j = j + 1)
      {
        if (*v90 != v64)
        {
          objc_enumerationMutation(allKeys);
        }

        v66 = *(*(&v89 + 1) + 8 * j);
        if (([v66 isEqualToString:@"NumUniqueResourceTypesNormalizedKey"] & 1) == 0)
        {
          v67 = [v87 objectForKeyedSubscript:v66];
          v68 = [v67 objectForKeyedSubscript:@"RankingRichnessPrimaryPriorityScoreKey"];
          [v68 floatValue];
          v70 = v69;

          *&v71 = v70 / 13.0;
          if ((v70 / 13.0) > 1.0)
          {
            *&v71 = 1.0;
          }

          v72 = [NSNumber numberWithFloat:v71];
          [v67 setObject:v72 forKeyedSubscript:@"RankingRichnessPrimaryPriorityScoreKey"];

          v73 = [v67 objectForKeyedSubscript:@"RankingRichnessSecondaryPriorityScoreKey"];
          [v73 floatValue];
          v75 = v74;

          *&v76 = v75 / 13.0;
          if ((v75 / 13.0) > 1.0)
          {
            *&v76 = 1.0;
          }

          v77 = [NSNumber numberWithFloat:v76];
          [v67 setObject:v77 forKeyedSubscript:@"RankingRichnessSecondaryPriorityScoreKey"];

          v78 = [v67 objectForKeyedSubscript:@"RankingRichnessAuxiliaryPriorityScoreKey"];
          [v78 floatValue];
          v80 = v79;

          *&v81 = v80 / 13.0;
          if ((v80 / 13.0) > 1.0)
          {
            *&v81 = 1.0;
          }

          v82 = [NSNumber numberWithFloat:v81];
          [v67 setObject:v82 forKeyedSubscript:@"RankingRichnessAuxiliaryPriorityScoreKey"];
        }
      }

      v63 = [allKeys countByEnumeratingWithState:&v89 objects:v112 count:16];
    }

    while (v63);
  }

  [v85 setBundleRichnessDict:v87];
}

void __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 placeName];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v6 placeName];
    [v4 addObject:v5];
  }
}

void __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 contactIdentifier];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v6 contactIdentifier];
    [v4 addObject:v5];
  }
}

void __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 actionName];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v6 actionName];
    [v4 addObject:v5];
  }
}

void __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a2 type]);
  [v2 addObject:v3];
}

void __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_526(uint64_t a1, void *a2)
{
  v50 = a2;
  if ([v50 type] == 2)
  {
    v3 = *(a1 + 32);
    [v3 numPhotoAssetsResourcesNormalized];
    *&v5 = v4 + 1.0;
    [v3 setNumPhotoAssetsResourcesNormalized:v5];
  }

  v6 = +[MOResource getStringTypeForResources:](MOResource, "getStringTypeForResources:", [v50 type]);
  v7 = [*(a1 + 40) objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"RankingRichnessPrimaryPriorityScoreKey"];
    [v9 floatValue];
    v11 = v10;

    v12 = [v8 objectForKey:@"RankingRichnessSecondaryPriorityScoreKey"];
    [v12 floatValue];
    v14 = v13;

    v15 = [v8 objectForKey:@"RankingRichnessAuxiliaryPriorityScoreKey"];
    [v15 floatValue];
    v17 = v16;
  }

  else
  {
    v14 = 0.0;
    v17 = 0.0;
    v11 = 0.0;
  }

  [v50 priorityScore];
  if (v18 >= 200.0)
  {
    [v50 priorityScore];
    if (v23 < 300.0)
    {
      if ([v50 type] == 2)
      {
        v24 = [v50 photoCurationScore];
        [v24 floatValue];
        v26 = v25;

        if (v26 == 0.0)
        {
          v14 = v14 + 0.5;
          goto LABEL_36;
        }

        v38 = [v50 photoCurationScore];
        [v38 floatValue];
        v14 = v14 + v43;
        goto LABEL_35;
      }

      v36 = thirdPartyMediaSubtypeVariants;
      v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) bundleSubType]);
      LODWORD(v36) = [v36 containsObject:v37];

      if (!v36)
      {
        v14 = v14 + 1.0;
      }

      goto LABEL_36;
    }

    [v50 priorityScore];
    v30 = v29;
    v31 = [v50 type];
    HIDWORD(v22) = 1081294848;
    if (v30 < 308.0)
    {
      if (v31 == 2)
      {
        v32 = [v50 photoCurationScore];
        [v32 floatValue];
        v34 = v33;

        if (v34 == 0.0)
        {
          v35 = 0.5;
          goto LABEL_27;
        }

        v38 = [v50 photoCurationScore];
        [v38 floatValue];
        v17 = v17 + v44;
      }

      else
      {
        v40 = thirdPartyMediaSubtypeVariants;
        v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) bundleSubType]);
        if (![v40 containsObject:v38])
        {
          v41 = MediaWeeklySummarySubtypeVariants;
          v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) bundleSubType]);
          LOBYTE(v41) = [v41 containsObject:v42];

          if ((v41 & 1) == 0)
          {
            v17 = v17 + 1.0;
          }

          goto LABEL_36;
        }
      }

LABEL_35:

      goto LABEL_36;
    }

    if (v31 != 10 && [v50 type] != 6)
    {
      goto LABEL_36;
    }

    v35 = 1.0;
LABEL_27:
    v17 = v17 + v35;
    goto LABEL_36;
  }

  if ([v50 type] == 2)
  {
    v19 = [v50 photoCurationScore];
    [v19 floatValue];
    v21 = v20;

    if (v21 == 0.0)
    {
      v11 = v11 + 0.5;
      goto LABEL_36;
    }

    v38 = [v50 photoCurationScore];
    [v38 floatValue];
    v11 = v11 + v39;
    goto LABEL_35;
  }

  v27 = thirdPartyMediaSubtypeVariants;
  v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) bundleSubType]);
  LODWORD(v27) = [v27 containsObject:v28];

  if (!v27)
  {
    v11 = v11 + 1.0;
  }

LABEL_36:
  if (!v8)
  {
    v8 = objc_opt_new();
  }

  *&v22 = v11;
  v45 = [NSNumber numberWithFloat:v22];
  [v8 setObject:v45 forKey:@"RankingRichnessPrimaryPriorityScoreKey"];

  *&v46 = v14;
  v47 = [NSNumber numberWithFloat:v46];
  [v8 setObject:v47 forKey:@"RankingRichnessSecondaryPriorityScoreKey"];

  *&v48 = v17;
  v49 = [NSNumber numberWithFloat:v48];
  [v8 setObject:v49 forKey:@"RankingRichnessAuxiliaryPriorityScoreKey"];

  [*(a1 + 40) setObject:v8 forKey:v6];
}

- (void)_fillDistincnessInfoForRanking:(id)ranking forBundle:(id)bundle
{
  rankingCopy = ranking;
  bundleCopy = bundle;
  [rankingCopy setNumAnomalyEventsNormalized:0.0];
  [rankingCopy setNumTrendEventsNormalized:0.0];
  [rankingCopy setNumRoutineEventsNormalized:0.0];
  [rankingCopy setNumStateOfMindEventsNormalized:0.0];
  v47 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [bundleCopy events];
  v7 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v7)
  {
    v8 = *v55;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v54 + 1) + 8 * i);
        if ([v10 provider] == 5)
        {
          patterns = [v10 patterns];
          v12 = [patterns objectForKeyedSubscript:@"kEventPatternAnomalyFeatureType"];
          v13 = [v12 isEqual:&off_1000C8758];

          if (v13)
          {
            continue;
          }

          patterns2 = [v10 patterns];
          v15 = [patterns2 objectForKeyedSubscript:@"kEventPatternType"];
          intValue = [v15 intValue];

          switch(intValue)
          {
            case 2u:
              [rankingCopy numRoutineEventsNormalized];
              *&v22 = v21 + 1.0;
              [rankingCopy setNumRoutineEventsNormalized:v22];
              break;
            case 1u:
              [rankingCopy numTrendEventsNormalized];
              *&v20 = v19 + 1.0;
              [rankingCopy setNumTrendEventsNormalized:v20];
              break;
            case 0u:
              [rankingCopy numAnomalyEventsNormalized];
              *&v18 = v17 + 1.0;
              [rankingCopy setNumAnomalyEventsNormalized:v18];
              break;
          }
        }

        v50 = 0;
        v51 = &v50;
        v52 = 0x2020000000;
        v53 = 0;
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = __65__MOEventBundleRanking__fillDistincnessInfoForRanking_forBundle___block_invoke;
        v49[3] = &unk_1000B7340;
        v49[4] = &v50;
        [bundleCopy withResourcesUsingBlock:v49];
        if ([v10 category] == 24 && objc_msgSend(v10, "provider") != 5 && *(v51 + 24) == 1)
        {
          [rankingCopy numStateOfMindEventsNormalized];
          *&v24 = v23 + 1.0;
          [rankingCopy setNumStateOfMindEventsNormalized:v24];
          identifierFromProvider = [v10 identifierFromProvider];
          [v47 addObject:identifierFromProvider];
        }

        _Block_object_dispose(&v50, 8);
      }

      v7 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v7);
  }

  [rankingCopy numAnomalyEventsNormalized];
  *&v27 = v26 * 0.25;
  [rankingCopy setNumAnomalyEventsNormalized:v27];
  [rankingCopy numAnomalyEventsNormalized];
  if (*&v28 > 1.0)
  {
    LODWORD(v28) = 1.0;
    [rankingCopy setNumAnomalyEventsNormalized:v28];
  }

  [rankingCopy numTrendEventsNormalized];
  *&v30 = v29 * 0.25;
  [rankingCopy setNumTrendEventsNormalized:v30];
  [rankingCopy numTrendEventsNormalized];
  if (*&v31 > 1.0)
  {
    LODWORD(v31) = 1.0;
    [rankingCopy setNumTrendEventsNormalized:v31];
  }

  [rankingCopy numRoutineEventsNormalized];
  *&v33 = v32 * 0.25;
  [rankingCopy setNumRoutineEventsNormalized:v33];
  [rankingCopy numRoutineEventsNormalized];
  if (*&v34 > 1.0)
  {
    LODWORD(v34) = 1.0;
    [rankingCopy setNumRoutineEventsNormalized:v34];
  }

  if ([rankingCopy bundleInterfaceType] == 4)
  {
    [rankingCopy numAnomalyEventsNormalized];
    v36 = v35 <= 0.0;
    v37 = 0.0;
    if (!v36)
    {
      *&v37 = 1.0;
    }

    [rankingCopy setNumAnomalyEventsNormalized:v37];
    [rankingCopy numTrendEventsNormalized];
    v36 = v38 <= 0.0;
    v39 = 0.0;
    if (!v36)
    {
      *&v39 = 1.0;
    }

    [rankingCopy setNumTrendEventsNormalized:v39];
    [rankingCopy numRoutineEventsNormalized];
    v36 = v40 <= 0.0;
    v41 = 0.0;
    if (!v36)
    {
      *&v41 = 1.0;
    }

    [rankingCopy setNumRoutineEventsNormalized:v41];
  }

  [rankingCopy numStateOfMindEventsNormalized];
  if (v42 <= 0.0)
  {
    v46 = emptyStringSet;
  }

  else
  {
    [rankingCopy numStateOfMindEventsNormalized];
    *&v44 = v43 * 0.25;
    [rankingCopy setNumStateOfMindEventsNormalized:v44];
    [rankingCopy numStateOfMindEventsNormalized];
    v46 = v47;
    if (*&v45 > 1.0)
    {
      LODWORD(v45) = 1.0;
      [rankingCopy setNumStateOfMindEventsNormalized:{v47, v45}];
      v46 = v47;
    }
  }

  [rankingCopy setAllStateOfMindIdentifiers:v46];
}

id __65__MOEventBundleRanking__fillDistincnessInfoForRanking_forBundle___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 type];
  if (result == 16)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)_fillEngagementInfoForRanking:(id)ranking forBundle:(id)bundle
{
  rankingCopy = ranking;
  bundleCopy = bundle;
  [rankingCopy setSuggestionIsDeleted:{objc_msgSend(bundleCopy, "hasSuggestionEngagementEvent:", @"suggestionsDeleted"}];
  [rankingCopy setSuggestionIsSelected:{objc_msgSend(bundleCopy, "hasSuggestionEngagementEvent:", @"suggestionsSelected"}];
  [rankingCopy setSuggestionQuickAddEntry:{objc_msgSend(bundleCopy, "hasSuggestionEngagementEvent:", @"suggestionsQuickAddEntry"}];
  [rankingCopy setJournalEntryIsEdited:{objc_msgSend(bundleCopy, "hasAppEntryEngagementEvent:", @"appEntryEdited"}];
  [rankingCopy setJournalEntryIsCreated:{objc_msgSend(bundleCopy, "hasAppEntryEngagementEvent:", @"appEntryCreated"}];
  [rankingCopy setJournalEntryIsCancelled:{objc_msgSend(bundleCopy, "hasAppEntryEngagementEvent:", @"appEntryCancelled"}];
  [rankingCopy setJournalEntryIsDeleted:{objc_msgSend(bundleCopy, "hasAppEntryEngagementEvent:", @"appEntryDeleted"}];
  *&v7 = [bundleCopy suggestionEngagementViewCount];
  [rankingCopy setViewCount:v7];
  [rankingCopy setViewCountNormalized:0.0];
  viewCountBasedAdjustmentParameterDict = [(MOEventBundleRanking *)self viewCountBasedAdjustmentParameterDict];
  v9 = [viewCountBasedAdjustmentParameterDict objectForKeyedSubscript:@"minDaysElapsedForAdjustment"];
  [v9 floatValue];
  v11 = v10;

  viewCountBasedAdjustmentParameterDict2 = [(MOEventBundleRanking *)self viewCountBasedAdjustmentParameterDict];
  v13 = [viewCountBasedAdjustmentParameterDict2 objectForKeyedSubscript:@"minViewCountForAdjustment"];
  [v13 floatValue];
  v15 = v14;

  viewCountBasedAdjustmentParameterDict3 = [(MOEventBundleRanking *)self viewCountBasedAdjustmentParameterDict];
  v17 = [viewCountBasedAdjustmentParameterDict3 objectForKeyedSubscript:@"maxViewCountForAdjustment"];
  [v17 floatValue];
  v19 = v18;

  if ([bundleCopy suggestionEngagementViewCount])
  {
    if (([bundleCopy hasSuggestionEngagementEvent:@"suggestionsSelected"] & 1) == 0 && (objc_msgSend(bundleCopy, "hasSuggestionEngagementEvent:", @"suggestionsQuickAddEntry") & 1) == 0 && (objc_msgSend(bundleCopy, "hasSuggestionEngagementEvent:", @"suggestionsDeleted") & 1) == 0)
    {
      [rankingCopy bundleRecencyDaysElapsed];
      if (v20 > v11)
      {
        v21 = fmax(([bundleCopy suggestionEngagementViewCount] - v15), 0.0);
        *&v21 = v21;
        [rankingCopy setViewCountNormalized:v21];
        [rankingCopy viewCountNormalized];
        *&v23 = v22 / (v19 - v15);
        [rankingCopy setViewCountNormalized:v23];
        [rankingCopy viewCountNormalized];
        if (*&v24 > 1.0)
        {
          LODWORD(v24) = 1.0;
          [rankingCopy setViewCountNormalized:v24];
        }
      }
    }
  }
}

- (MOEventBundleRanking)initWithUniverse:(id)universe
{
  if (universe)
  {
    v4 = [universe getService:@"MOConfigurationManager"];
    v5 = [(MOEventBundleRanking *)self initWithConfigurationManager:v4];
    [(MOEventBundleRanking *)v5 setHolidayTuningParameters];
    self = v5;

    selfCopy = self;
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking initWithUniverse:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (MOEventBundleRanking)initWithConfigurationManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v583.receiver = self;
    v583.super_class = MOEventBundleRanking;
    v6 = [(MOEventBundleRanking *)&v583 init];
    if (v6)
    {
      v564 = managerCopy;
      +[MOEventBundleRanking defineClassCollections];
      [(MOEventBundleRanking *)v6 setHolidayTuningParameters];
      rankingAlgorithmVersion = v6->_rankingAlgorithmVersion;
      v6->_rankingAlgorithmVersion = @"17.2.0";

      objc_storeStrong(&v6->_configurationManager, manager);
      v6->_isInternalBuild = +[MOPlatformInfo isInternalBuild];
      configurationManager = v6->_configurationManager;
      v9 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"diversityCoefficientAlpha"];
      LODWORD(v10) = 1120403456;
      [(MOConfigurationManagerBase *)configurationManager getFloatSettingForKey:v9 withFallback:v10];
      v6->_frequencyPenalty = v11;

      v12 = v6->_configurationManager;
      v13 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"engagementScoreWeight"];
      LODWORD(v14) = 1036831949;
      [(MOConfigurationManagerBase *)v12 getFloatSettingForKey:v13 withFallback:v14];
      v6->_engagementScoreWeight = v15;

      v16 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(MOEventBundleRanking *)&v6->_engagementScoreWeight initWithConfigurationManager:v16, v17, v18, v19, v20, v21, v22];
      }

      HIDWORD(v23) = 1072483532;
      *&v23 = 0.9;
      [(MOConfigurationManagerBase *)v6->_configurationManager getFloatSettingForKey:@"VA_RecommendedTabVisitFIThreshold" withFallback:v23];
      v6->_recommendedTabVisitFIThreshold = v24;
      v25 = objc_opt_new();
      v26 = v6->_configurationManager;
      v578 = v6;
      v27 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"distanceToHomeThreshold"];
      LODWORD(v28) = 10.0;
      [(MOConfigurationManagerBase *)v26 getFloatSettingForKey:v27 withFallback:v28];
      v29 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v29 forKeyedSubscript:@"distanceToHomeThreshold"];

      v30 = v6->_configurationManager;
      v31 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"callDurationThreshold"];
      LODWORD(v32) = 1172373504;
      [(MOConfigurationManagerBase *)v30 getFloatSettingForKey:v31 withFallback:v32];
      v33 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v33 forKeyedSubscript:@"callDurationThreshold"];

      v34 = v6->_configurationManager;
      v35 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"workoutDurationThreshold"];
      LODWORD(v36) = 1172373504;
      [(MOConfigurationManagerBase *)v34 getFloatSettingForKey:v35 withFallback:v36];
      v37 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v37 forKeyedSubscript:@"workoutDurationThreshold"];

      v38 = v6->_configurationManager;
      v39 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"WeeklySummaryWorkoutDurationThreshold"];
      LODWORD(v40) = 1172373504;
      [(MOConfigurationManagerBase *)v38 getFloatSettingForKey:v39 withFallback:v40];
      v41 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v41 forKeyedSubscript:@"WeeklySummaryWorkoutDurationThreshold"];

      v42 = v6->_configurationManager;
      v43 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"timeAtHomeDurationThreshold"];
      LODWORD(v44) = 1202241536;
      [(MOConfigurationManagerBase *)v42 getFloatSettingForKey:v43 withFallback:v44];
      v45 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v45 forKeyedSubscript:@"timeAtHomeDurationThreshold"];

      v46 = v6->_configurationManager;
      v47 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"FIDownRankThreshold"];
      LODWORD(v48) = 0.75;
      [(MOConfigurationManagerBase *)v46 getFloatSettingForKey:v47 withFallback:v48];
      v49 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v49 forKeyedSubscript:@"FIDownRankThreshold"];

      v50 = v6->_configurationManager;
      v51 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"burstyInteractionCountThreshold"];
      LODWORD(v52) = 1125515264;
      [(MOConfigurationManagerBase *)v50 getFloatSettingForKey:v51 withFallback:v52];
      v53 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v53 forKeyedSubscript:@"burstyInteractionCountThreshold"];

      v54 = v6->_configurationManager;
      v55 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxPeopleCountFromSocialContext"];
      LODWORD(v56) = 1115684864;
      [(MOConfigurationManagerBase *)v54 getFloatSettingForKey:v55 withFallback:v56];
      v57 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v57 forKeyedSubscript:@"maxPeopleCountFromSocialContext"];

      v58 = v6->_configurationManager;
      v59 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"mediaPlayTimeThreshold"];
      LODWORD(v60) = 1177075712;
      [(MOConfigurationManagerBase *)v58 getFloatSettingForKey:v59 withFallback:v60];
      v61 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v61 forKeyedSubscript:@"mediaPlayTimeThreshold"];

      v62 = v6->_configurationManager;
      v63 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weeklySummaryMediaPlayTimeThreshold"];
      LODWORD(v64) = 1187307520;
      [(MOConfigurationManagerBase *)v62 getFloatSettingForKey:v63 withFallback:v64];
      v65 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v65 forKeyedSubscript:@"weeklySummaryMediaPlayTimeThreshold"];

      v66 = v6->_configurationManager;
      v67 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"shareCountThreshold"];
      LODWORD(v68) = 5.0;
      [(MOConfigurationManagerBase *)v66 getFloatSettingForKey:v67 withFallback:v68];
      v69 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v69 forKeyedSubscript:@"shareCountThreshold"];

      v70 = v6->_configurationManager;
      v71 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"contactHoldOffThreshold"];
      LODWORD(v72) = -921458688;
      [(MOConfigurationManagerBase *)v70 getFloatSettingForKey:v71 withFallback:v72];
      v73 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v73 forKeyedSubscript:@"contactHoldOffThreshold"];

      v74 = v6->_configurationManager;
      v75 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"stateOfMindLabelCountThreshold"];
      LODWORD(v76) = 5.0;
      [(MOConfigurationManagerBase *)v74 getFloatSettingForKey:v75 withFallback:v76];
      v77 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v77 forKeyedSubscript:@"stateOfMindLabelCountThreshold"];

      v78 = v6->_configurationManager;
      v79 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"stateOfMindDomainCountThreshold"];
      LODWORD(v80) = 5.0;
      [(MOConfigurationManagerBase *)v78 getFloatSettingForKey:v79 withFallback:v80];
      v81 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v81 forKeyedSubscript:@"stateOfMindDomainCountThreshold"];

      v82 = v6->_configurationManager;
      v83 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"sensitiveOnRecommendedThreshold"];
      v84 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v82 getIntegerSettingForKey:v83 withFallback:5]];
      [(NSDictionary *)v25 setObject:v84 forKeyedSubscript:@"sensitiveOnRecommendedThreshold"];

      v85 = v6->_configurationManager;
      v86 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForVisitSubTypeVariants"];
      LODWORD(v87) = -1130113270;
      [(MOConfigurationManagerBase *)v85 getFloatSettingForKey:v86 withFallback:v87];
      v88 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v88 forKeyedSubscript:@"suggestionAcceptThresholdForVisitSubTypeVariants"];

      v89 = v6->_configurationManager;
      v90 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForTripSubType"];
      LODWORD(v91) = -1130113270;
      [(MOConfigurationManagerBase *)v89 getFloatSettingForKey:v90 withFallback:v91];
      v92 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v92 forKeyedSubscript:@"suggestionAcceptThresholdForTripSubType"];

      v93 = v6->_configurationManager;
      v94 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForWorkoutSubtype"];
      LODWORD(v95) = -1130113270;
      [(MOConfigurationManagerBase *)v93 getFloatSettingForKey:v94 withFallback:v95];
      v96 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v96 forKeyedSubscript:@"suggestionAcceptThresholdForWorkoutSubtype"];

      v97 = v6->_configurationManager;
      v98 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForMotionActivityWalkingSubtype"];
      LODWORD(v99) = -1130113270;
      [(MOConfigurationManagerBase *)v97 getFloatSettingForKey:v98 withFallback:v99];
      v100 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v100 forKeyedSubscript:@"suggestionAcceptThresholdForMotionActivityWalkingSubtype"];

      v101 = v6->_configurationManager;
      v102 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForWorkoutWeeklySummarySubType"];
      LODWORD(v103) = -1.0;
      [(MOConfigurationManagerBase *)v101 getFloatSettingForKey:v102 withFallback:v103];
      v104 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v104 forKeyedSubscript:@"suggestionAcceptThresholdForWorkoutWeeklySummarySubType"];

      v105 = v6->_configurationManager;
      v106 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForContactSubType"];
      LODWORD(v107) = -1.0;
      [(MOConfigurationManagerBase *)v105 getFloatSettingForKey:v106 withFallback:v107];
      v108 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v108 forKeyedSubscript:@"suggestionAcceptThresholdForContactSubType"];

      v109 = v6->_configurationManager;
      v110 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForContactWeeklySummarySubType"];
      LODWORD(v111) = 1023671095;
      [(MOConfigurationManagerBase *)v109 getFloatSettingForKey:v110 withFallback:v111];
      v112 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v112 forKeyedSubscript:@"suggestionAcceptThresholdForContactWeeklySummarySubType"];

      v113 = v6->_configurationManager;
      v114 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForDailyMediaVariants"];
      LODWORD(v115) = -1.0;
      [(MOConfigurationManagerBase *)v113 getFloatSettingForKey:v114 withFallback:v115];
      v116 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v116 forKeyedSubscript:@"suggestionAcceptThresholdForDailyMediaVariants"];

      v117 = v6->_configurationManager;
      v118 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForWeeklyMediaSummaryVariants"];
      LODWORD(v119) = -1.0;
      [(MOConfigurationManagerBase *)v117 getFloatSettingForKey:v118 withFallback:v119];
      v120 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v120 forKeyedSubscript:@"suggestionAcceptThresholdForWeeklyMediaSummaryVariants"];

      v121 = v6->_configurationManager;
      v122 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForTimeAtHomeSubTypeVariants"];
      LODWORD(v123) = -1.0;
      [(MOConfigurationManagerBase *)v121 getFloatSettingForKey:v122 withFallback:v123];
      v124 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v124 forKeyedSubscript:@"suggestionAcceptThresholdForTimeAtHomeSubTypeVariants"];

      v125 = v6->_configurationManager;
      v126 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForVisitSubTypeVariants"];
      LODWORD(v127) = 1017370378;
      [(MOConfigurationManagerBase *)v125 getFloatSettingForKey:v126 withFallback:v127];
      v128 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v128 forKeyedSubscript:@"suggestionRecommendThresholdForVisitSubTypeVariants"];

      v129 = v6->_configurationManager;
      v130 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForTripSubType"];
      LODWORD(v131) = 1017370378;
      [(MOConfigurationManagerBase *)v129 getFloatSettingForKey:v130 withFallback:v131];
      v132 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v132 forKeyedSubscript:@"suggestionRecommendThresholdForTripSubType"];

      v133 = v6->_configurationManager;
      v134 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForWorkoutSubtype"];
      LODWORD(v135) = 1025758986;
      [(MOConfigurationManagerBase *)v133 getFloatSettingForKey:v134 withFallback:v135];
      v136 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v136 forKeyedSubscript:@"suggestionRecommendThresholdForWorkoutSubtype"];

      v137 = v6->_configurationManager;
      v138 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForMotionActivityWalkingSubtype"];
      LODWORD(v139) = 1017370378;
      [(MOConfigurationManagerBase *)v137 getFloatSettingForKey:v138 withFallback:v139];
      v140 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v140 forKeyedSubscript:@"suggestionRecommendThresholdForMotionActivityWalkingSubtype"];

      v141 = v6->_configurationManager;
      v142 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForWorkoutWeeklySummarySubType"];
      LODWORD(v143) = 1025758986;
      [(MOConfigurationManagerBase *)v141 getFloatSettingForKey:v142 withFallback:v143];
      v144 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v144 forKeyedSubscript:@"suggestionRecommendThresholdForWorkoutWeeklySummarySubType"];

      v145 = v6->_configurationManager;
      v146 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForContactSubType"];
      LODWORD(v147) = 1028443341;
      [(MOConfigurationManagerBase *)v145 getFloatSettingForKey:v146 withFallback:v147];
      v148 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v148 forKeyedSubscript:@"suggestionRecommendThresholdForContactSubType"];

      v149 = v6->_configurationManager;
      v150 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForContactWeeklySummarySubType"];
      LODWORD(v151) = 1023671095;
      [(MOConfigurationManagerBase *)v149 getFloatSettingForKey:v150 withFallback:v151];
      v152 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v152 forKeyedSubscript:@"suggestionRecommendThresholdForContactWeeklySummarySubType"];

      v153 = v6->_configurationManager;
      v154 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForDailyMediaVariants"];
      LODWORD(v155) = -1.0;
      [(MOConfigurationManagerBase *)v153 getFloatSettingForKey:v154 withFallback:v155];
      v156 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v156 forKeyedSubscript:@"suggestionRecommendThresholdForDailyMediaVariants"];

      v157 = v6->_configurationManager;
      v158 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForWeeklyMediaSummaryVariants"];
      LODWORD(v159) = -1.0;
      [(MOConfigurationManagerBase *)v157 getFloatSettingForKey:v158 withFallback:v159];
      v160 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v160 forKeyedSubscript:@"suggestionRecommendThresholdForWeeklyMediaSummaryVariants"];

      v161 = v6->_configurationManager;
      v162 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForTimeAtHomeSubTypeVariants"];
      LODWORD(v163) = 1025758986;
      [(MOConfigurationManagerBase *)v161 getFloatSettingForKey:v162 withFallback:v163];
      v164 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v164 forKeyedSubscript:@"suggestionRecommendThresholdForTimeAtHomeSubTypeVariants"];

      v165 = v6->_configurationManager;
      v166 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForThematicSummary"];
      LODWORD(v167) = 1025758986;
      [(MOConfigurationManagerBase *)v165 getFloatSettingForKey:v166 withFallback:v167];
      v168 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v168 forKeyedSubscript:@"suggestionRecommendThresholdForThematicSummary"];

      v169 = v6->_configurationManager;
      v170 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"summarizationThresholdForVisitSubTypeVariants"];
      LODWORD(v171) = -1130113270;
      [(MOConfigurationManagerBase *)v169 getFloatSettingForKey:v170 withFallback:v171];
      v172 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v172 forKeyedSubscript:@"summarizationThresholdForVisitSubTypeVariants"];

      v173 = v6->_configurationManager;
      v174 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"summarizationThresholdForWorkoutSubType"];
      LODWORD(v175) = -1130113270;
      [(MOConfigurationManagerBase *)v173 getFloatSettingForKey:v174 withFallback:v175];
      v176 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v176 forKeyedSubscript:@"summarizationThresholdForWorkoutSubType"];

      v177 = v6->_configurationManager;
      v178 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"summarizationThresholdForMotionActivityWalkingSubType"];
      LODWORD(v179) = -1130113270;
      [(MOConfigurationManagerBase *)v177 getFloatSettingForKey:v178 withFallback:v179];
      v180 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v180 forKeyedSubscript:@"summarizationThresholdForMotionActivityWalkingSubType"];

      v181 = v6->_configurationManager;
      v182 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"tripSummarizationThresholdForVisitSubType"];
      LODWORD(v183) = 1025758986;
      [(MOConfigurationManagerBase *)v181 getFloatSettingForKey:v182 withFallback:v183];
      v184 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v25 setObject:v184 forKeyedSubscript:@"tripSummarizationThresholdForVisitSubType"];

      v185 = v6->_configurationManager;
      v186 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"tripSummarizationThresholdForWorkoutSubType"];
      LODWORD(v187) = -1130113270;
      [(MOConfigurationManagerBase *)v185 getFloatSettingForKey:v186 withFallback:v187];
      v188 = [NSNumber numberWithFloat:?];
      v563 = v25;
      [(NSDictionary *)v25 setObject:v188 forKeyedSubscript:@"tripSummarizationThresholdForWorkoutSubType"];

      v189 = objc_opt_new();
      v190 = v578->_configurationManager;
      v191 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"rejectWorkVisitWithPhotos"];
      v192 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)v190 getBoolSettingForKey:v191 withFallback:0]];
      [(NSDictionary *)v189 setObject:v192 forKeyedSubscript:@"rejectWorkVisitWithPhotos"];

      v193 = v578->_configurationManager;
      v194 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"rejectWorkVisitWithNoPhoto"];
      v195 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)v193 getBoolSettingForKey:v194 withFallback:1]];
      [(NSDictionary *)v189 setObject:v195 forKeyedSubscript:@"rejectWorkVisitWithNoPhoto"];

      v196 = v578->_configurationManager;
      v197 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"rejectShortVisit"];
      v198 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)v196 getBoolSettingForKey:v197 withFallback:0]];
      [(NSDictionary *)v189 setObject:v198 forKeyedSubscript:@"rejectShortVisit"];

      v199 = v578->_configurationManager;
      v200 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"shortVisitDurationThresholdInSec"];
      LODWORD(v201) = 1150681088;
      [(MOConfigurationManagerBase *)v199 getFloatSettingForKey:v200 withFallback:v201];
      v202 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v189 setObject:v202 forKeyedSubscript:@"shortVisitDurationThresholdInSec"];

      v203 = v578->_configurationManager;
      v204 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"rejectSignificantContactWithHighSignificanceScore"];
      v205 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)v203 getBoolSettingForKey:v204 withFallback:0]];
      [(NSDictionary *)v189 setObject:v205 forKeyedSubscript:@"rejectSignificantContactWithHighSignificanceScore"];

      v206 = v578->_configurationManager;
      v207 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"highContactSignificanceScoreThreshold"];
      LODWORD(v208) = 1064514355;
      [(MOConfigurationManagerBase *)v206 getFloatSettingForKey:v207 withFallback:v208];
      v209 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v189 setObject:v209 forKeyedSubscript:@"highContactSignificanceScoreThreshold"];

      v210 = v578->_configurationManager;
      v211 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minSensedBundleCountInRecommendedTab"];
      v212 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v210 getIntegerSettingForKey:v211 withFallback:10]];
      [(NSDictionary *)v189 setObject:v212 forKeyedSubscript:@"minSensedBundleCountInRecommendedTab"];

      v213 = v578->_configurationManager;
      v214 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxDaysInRecommendedTabForWorkoutRoutine"];
      LODWORD(v215) = 7.0;
      [(MOConfigurationManagerBase *)v213 getFloatSettingForKey:v214 withFallback:v215];
      v216 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v189 setObject:v216 forKeyedSubscript:@"maxDaysInRecommendedTabForWorkoutRoutine"];

      v217 = v578->_configurationManager;
      v218 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxDaysInRecommendedTabForContact"];
      LODWORD(v219) = 3.0;
      [(MOConfigurationManagerBase *)v217 getFloatSettingForKey:v218 withFallback:v219];
      v220 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v189 setObject:v220 forKeyedSubscript:@"maxDaysInRecommendedTabForContact"];

      v221 = v578->_configurationManager;
      v222 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxDaysInRecommendedTabForStateOfMind"];
      LODWORD(v223) = 2.0;
      [(MOConfigurationManagerBase *)v221 getFloatSettingForKey:v222 withFallback:v223];
      v224 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v189 setObject:v224 forKeyedSubscript:@"maxDaysInRecommendedTabForStateOfMind"];

      v225 = v578->_configurationManager;
      v226 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"daysToSuppressCoarseSummaryAfterOnboarding"];
      LODWORD(v227) = 7.0;
      [(MOConfigurationManagerBase *)v225 getFloatSettingForKey:v226 withFallback:v227];
      v228 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v189 setObject:v228 forKeyedSubscript:@"daysToSuppressCoarseSummaryAfterOnboarding"];

      v229 = v578->_configurationManager;
      v230 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxNumOfHolidayBundlesPerDay"];
      v231 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v229 getIntegerSettingForKey:v230 withFallback:2]];
      [(NSDictionary *)v189 setObject:v231 forKeyedSubscript:@"maxNumOfHolidayBundlesPerDay"];

      v232 = v578->_configurationManager;
      v233 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxNumOfBirthdayBundlesPerDay"];
      v234 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v232 getIntegerSettingForKey:v233 withFallback:2]];
      v565 = v189;
      [(NSDictionary *)v189 setObject:v234 forKeyedSubscript:@"maxNumOfBirthdayBundlesPerDay"];

      v235 = objc_opt_new();
      v236 = v578->_configurationManager;
      v237 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForInterestingPOI"];
      LODWORD(v238) = 1024148374;
      [(MOConfigurationManagerBase *)v236 getFloatSettingForKey:v237 withFallback:v238];
      v239 = [NSNumber numberWithFloat:?];
      [v235 setObject:v239 forKeyedSubscript:@"weightForInterestingPOI"];

      v240 = v578->_configurationManager;
      v241 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForSensitivePOI"];
      LODWORD(v242) = -1123335274;
      [(MOConfigurationManagerBase *)v240 getFloatSettingForKey:v241 withFallback:v242];
      v243 = [NSNumber numberWithFloat:?];
      [v235 setObject:v243 forKeyedSubscript:@"weightForSensitivePOI"];

      v244 = v578->_configurationManager;
      v245 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForDistanceFromHome"];
      LODWORD(v246) = 1024953680;
      [(MOConfigurationManagerBase *)v244 getFloatSettingForKey:v245 withFallback:v246];
      v247 = [NSNumber numberWithFloat:?];
      [v235 setObject:v247 forKeyedSubscript:@"weightForDistanceFromHome"];

      v248 = v578->_configurationManager;
      v249 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForCallDuration"];
      LODWORD(v250) = 1041865114;
      [(MOConfigurationManagerBase *)v248 getFloatSettingForKey:v249 withFallback:v250];
      v251 = [NSNumber numberWithFloat:?];
      [v235 setObject:v251 forKeyedSubscript:@"weightForCallDuration"];

      v252 = v578->_configurationManager;
      v253 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForBurstyInteractionCount"];
      LODWORD(v254) = 1028443341;
      [(MOConfigurationManagerBase *)v252 getFloatSettingForKey:v253 withFallback:v254];
      v255 = [NSNumber numberWithFloat:?];
      [v235 setObject:v255 forKeyedSubscript:@"weightForBurstyInteractionCount"];

      v256 = v578->_configurationManager;
      v257 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForMultipleInteractionTypes"];
      [(MOConfigurationManagerBase *)v256 getFloatSettingForKey:v257 withFallback:0.0];
      v258 = [NSNumber numberWithFloat:?];
      [v235 setObject:v258 forKeyedSubscript:@"weightForMultipleInteractionTypes"];

      v259 = v578->_configurationManager;
      v260 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForContactLocationWork"];
      [(MOConfigurationManagerBase *)v259 getFloatSettingForKey:v260 withFallback:0.0];
      v261 = [NSNumber numberWithFloat:?];
      [v235 setObject:v261 forKeyedSubscript:@"weightForContactLocationWork"];

      v262 = v578->_configurationManager;
      v263 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForGroupConversation"];
      [(MOConfigurationManagerBase *)v262 getFloatSettingForKey:v263 withFallback:0.0];
      v264 = [NSNumber numberWithFloat:?];
      [v235 setObject:v264 forKeyedSubscript:@"weightForGroupConversation"];

      v265 = v578->_configurationManager;
      v266 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForPCountMax"];
      [(MOConfigurationManagerBase *)v265 getFloatSettingForKey:v266 withFallback:0.0];
      v267 = [NSNumber numberWithFloat:?];
      [v235 setObject:v267 forKeyedSubscript:@"weightForPCountMax"];

      v268 = v578->_configurationManager;
      v269 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForPCountWeightedAverage"];
      LODWORD(v270) = 1008981770;
      [(MOConfigurationManagerBase *)v268 getFloatSettingForKey:v269 withFallback:v270];
      v271 = [NSNumber numberWithFloat:?];
      [v235 setObject:v271 forKeyedSubscript:@"weightForPCountWeightedAverage"];

      v272 = v578->_configurationManager;
      v273 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForPDensityWeightedAverage"];
      LODWORD(v274) = 1008981770;
      [(MOConfigurationManagerBase *)v272 getFloatSettingForKey:v273 withFallback:v274];
      v275 = [NSNumber numberWithFloat:?];
      [v235 setObject:v275 forKeyedSubscript:@"weightForPDensityWeightedAverage"];

      v276 = v578->_configurationManager;
      v277 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForPCountWeightedSum"];
      [(MOConfigurationManagerBase *)v276 getFloatSettingForKey:v277 withFallback:0.0];
      v278 = [NSNumber numberWithFloat:?];
      [v235 setObject:v278 forKeyedSubscript:@"weightForPCountWeightedSum"];

      v279 = v578->_configurationManager;
      v280 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForItemFromMe"];
      LODWORD(v281) = 1017370378;
      [(MOConfigurationManagerBase *)v279 getFloatSettingForKey:v280 withFallback:v281];
      v282 = [NSNumber numberWithFloat:?];
      [v235 setObject:v282 forKeyedSubscript:@"weightForItemFromMe"];

      v283 = v578->_configurationManager;
      v284 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightShareCountFeature"];
      LODWORD(v285) = 1017370378;
      [(MOConfigurationManagerBase *)v283 getFloatSettingForKey:v284 withFallback:v285];
      v286 = [NSNumber numberWithFloat:?];
      [v235 setObject:v286 forKeyedSubscript:@"weightShareCountFeature"];

      v287 = v578->_configurationManager;
      v288 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForTimeAtHomeDuration"];
      [(MOConfigurationManagerBase *)v287 getFloatSettingForKey:v288 withFallback:0.0];
      v289 = [NSNumber numberWithFloat:?];
      [v235 setObject:v289 forKeyedSubscript:@"weightForTimeAtHomeDuration"];

      v290 = v578->_configurationManager;
      v291 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForWorkoutDurationNormalized"];
      LODWORD(v292) = 1042536202;
      [(MOConfigurationManagerBase *)v290 getFloatSettingForKey:v291 withFallback:v292];
      v293 = [NSNumber numberWithFloat:?];
      [v235 setObject:v293 forKeyedSubscript:@"weightForWorkoutDurationNormalized"];

      v294 = v578->_configurationManager;
      v295 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForFamiliarityIndex"];
      LODWORD(v296) = 1030322389;
      [(MOConfigurationManagerBase *)v294 getFloatSettingForKey:v295 withFallback:v296];
      v297 = [NSNumber numberWithFloat:?];
      [v235 setObject:v297 forKeyedSubscript:@"weightForFamiliarityIndex"];

      v298 = v578->_configurationManager;
      v299 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForIsFamilyContact"];
      LODWORD(v300) = 1008981770;
      [(MOConfigurationManagerBase *)v298 getFloatSettingForKey:v299 withFallback:v300];
      v301 = [NSNumber numberWithFloat:?];
      [v235 setObject:v301 forKeyedSubscript:@"weightForIsFamilyContact"];

      v302 = v578->_configurationManager;
      v303 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForIsCoworkerContact"];
      LODWORD(v304) = -1130113270;
      [(MOConfigurationManagerBase *)v302 getFloatSettingForKey:v303 withFallback:v304];
      v305 = [NSNumber numberWithFloat:?];
      [v235 setObject:v305 forKeyedSubscript:@"weightForIsCoworkerContact"];

      v306 = v578->_configurationManager;
      v307 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForIsBusinessContact"];
      LODWORD(v308) = -1121724662;
      [(MOConfigurationManagerBase *)v306 getFloatSettingForKey:v307 withFallback:v308];
      v309 = [NSNumber numberWithFloat:?];
      [v235 setObject:v309 forKeyedSubscript:@"weightForIsBusinessContact"];

      v310 = v578->_configurationManager;
      v311 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForMediaPlayTime"];
      LODWORD(v312) = 1026206379;
      [(MOConfigurationManagerBase *)v310 getFloatSettingForKey:v311 withFallback:v312];
      v313 = [NSNumber numberWithFloat:?];
      [v235 setObject:v313 forKeyedSubscript:@"weightForMediaPlayTime"];

      v314 = v578->_configurationManager;
      v315 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxBundleGoodnessScorePhotoMemory"];
      LODWORD(v316) = 1028443341;
      [(MOConfigurationManagerBase *)v314 getFloatSettingForKey:v315 withFallback:v316];
      v317 = [NSNumber numberWithFloat:?];
      [v235 setObject:v317 forKeyedSubscript:@"maxBundleGoodnessScorePhotoMemory"];

      v318 = v578->_configurationManager;
      v319 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"bundleGoodnessScoreIncrementPhotoMemory"];
      LODWORD(v320) = 1017370378;
      [(MOConfigurationManagerBase *)v318 getFloatSettingForKey:v319 withFallback:v320];
      v321 = [NSNumber numberWithFloat:?];
      [v235 setObject:v321 forKeyedSubscript:@"bundleGoodnessScoreIncrementPhotoMemory"];

      v322 = v578->_configurationManager;
      v323 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightStateOfMindLabelCountNormalized"];
      LODWORD(v324) = 1028443341;
      [(MOConfigurationManagerBase *)v322 getFloatSettingForKey:v323 withFallback:v324];
      v325 = [NSNumber numberWithFloat:?];
      [v235 setObject:v325 forKeyedSubscript:@"weightStateOfMindLabelCountNormalized"];

      v326 = v578->_configurationManager;
      v327 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightStateOfMindDomainCountNormalized"];
      LODWORD(v328) = 1028443341;
      [(MOConfigurationManagerBase *)v326 getFloatSettingForKey:v327 withFallback:v328];
      v329 = [NSNumber numberWithFloat:?];
      [v235 setObject:v329 forKeyedSubscript:@"weightStateOfMindDomainCountNormalized"];

      v330 = v578->_configurationManager;
      v331 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightHolidayInclusion"];
      LODWORD(v332) = 1025758986;
      [(MOConfigurationManagerBase *)v330 getFloatSettingForKey:v331 withFallback:v332];
      v333 = [NSNumber numberWithFloat:?];
      [v235 setObject:v333 forKeyedSubscript:@"weightHolidayInclusion"];

      v334 = v578->_configurationManager;
      v335 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightBirthdayInclusion"];
      LODWORD(v336) = 1025758986;
      [(MOConfigurationManagerBase *)v334 getFloatSettingForKey:v335 withFallback:v336];
      v337 = [NSNumber numberWithFloat:?];
      [v235 setObject:v337 forKeyedSubscript:@"weightBirthdayInclusion"];

      v338 = v578->_configurationManager;
      v339 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightInviteEventInclusion"];
      LODWORD(v340) = 1031127695;
      [(MOConfigurationManagerBase *)v338 getFloatSettingForKey:v339 withFallback:v340];
      v341 = [NSNumber numberWithFloat:?];
      [v235 setObject:v341 forKeyedSubscript:@"weightInviteEventInclusion"];

      v342 = v578->_configurationManager;
      v343 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumFamilyNormalized"];
      LODWORD(v344) = 1022739087;
      [(MOConfigurationManagerBase *)v342 getFloatSettingForKey:v343 withFallback:v344];
      v345 = [NSNumber numberWithFloat:?];
      [v235 setObject:v345 forKeyedSubscript:@"weightForNumFamilyNormalized"];

      v346 = v578->_configurationManager;
      v347 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumFriendsNormalized"];
      LODWORD(v348) = 1022739087;
      [(MOConfigurationManagerBase *)v346 getFloatSettingForKey:v347 withFallback:v348];
      v349 = [NSNumber numberWithFloat:?];
      [v235 setObject:v349 forKeyedSubscript:@"weightForNumFidsNormalized"];

      v350 = v578->_configurationManager;
      v351 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumFriendsNormalized"];
      LODWORD(v352) = 1017370378;
      [(MOConfigurationManagerBase *)v350 getFloatSettingForKey:v351 withFallback:v352];
      v353 = [NSNumber numberWithFloat:?];
      [v235 setObject:v353 forKeyedSubscript:@"weightForNumFriendsNormalized"];

      v354 = v578->_configurationManager;
      v355 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumPetsNormalized"];
      LODWORD(v356) = 1017370378;
      [(MOConfigurationManagerBase *)v354 getFloatSettingForKey:v355 withFallback:v356];
      v357 = [NSNumber numberWithFloat:?];
      [v235 setObject:v357 forKeyedSubscript:@"weightForNumPetsNormalized"];

      v358 = v578->_configurationManager;
      v359 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumCoworkersNormalized"];
      LODWORD(v360) = 1014350479;
      [(MOConfigurationManagerBase *)v358 getFloatSettingForKey:v359 withFallback:v360];
      v361 = [NSNumber numberWithFloat:?];
      [v235 setObject:v361 forKeyedSubscript:@"weightForNumCoworkersNormalized"];

      v362 = v578->_configurationManager;
      v363 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumOtherPersonsNormalized"];
      LODWORD(v364) = 1008981770;
      [(MOConfigurationManagerBase *)v362 getFloatSettingForKey:v363 withFallback:v364];
      v365 = [NSNumber numberWithFloat:?];
      v562 = v235;
      [v235 setObject:v365 forKeyedSubscript:@"weightForNumOtherPersonsNormalized"];

      v366 = objc_opt_new();
      v367 = v578->_configurationManager;
      v368 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForViewCountBasedPenalty"];
      LODWORD(v369) = 0.125;
      [(MOConfigurationManagerBase *)v367 getFloatSettingForKey:v368 withFallback:v369];
      v370 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v366 setObject:v370 forKeyedSubscript:@"weightForViewCountBasedPenalty"];

      v371 = v578->_configurationManager;
      v372 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minViewCountForAdjustment"];
      v373 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v371 getIntegerSettingForKey:v372 withFallback:2]];
      [(NSDictionary *)v366 setObject:v373 forKeyedSubscript:@"minViewCountForAdjustment"];

      v374 = v578->_configurationManager;
      v375 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxViewCountForAdjustment"];
      v376 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v374 getIntegerSettingForKey:v375 withFallback:12]];
      [(NSDictionary *)v366 setObject:v376 forKeyedSubscript:@"maxViewCountForAdjustment"];

      v377 = v578->_configurationManager;
      v378 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minDaysElapsedForAdjustment"];
      v379 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v377 getIntegerSettingForKey:v378 withFallback:2]];
      v561 = v366;
      [(NSDictionary *)v366 setObject:v379 forKeyedSubscript:@"minDaysElapsedForAdjustment"];

      v380 = v578;
      fDefaultsManager = [(MOConfigurationManagerBase *)v578->_configurationManager fDefaultsManager];
      v382 = [fDefaultsManager objectForKey:@"OnboardingDate"];

      if (v382 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v383 = v382;
        v384 = +[NSDate date];
        [v384 timeIntervalSinceDate:v383];
        *&v385 = v385 / 86400.0;
        v578->_elapsedDaysSinceOnboardingDate = *&v385;

        v386 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v386, OS_LOG_TYPE_DEBUG))
        {
          [(MOEventBundleRanking *)v383 initWithConfigurationManager:?];
        }
      }

      else
      {
        v389 = [(NSDictionary *)v565 objectForKeyedSubscript:@"daysToSuppressCoarseSummaryAfterOnboarding"];
        [v389 floatValue];
        v578->_elapsedDaysSinceOnboardingDate = v390 + 1.0;

        v383 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v383, OS_LOG_TYPE_DEBUG))
        {
          [(MOEventBundleRanking *)&v578->_elapsedDaysSinceOnboardingDate initWithConfigurationManager:v383, v391, v392, v393, v394, v395, v396];
        }
      }

      v560 = v382;

      v573 = objc_opt_new();
      v569 = objc_opt_new();
      v397 = objc_opt_new();
      v577 = objc_alloc_init(NSString);
      v571 = objc_opt_new();
      v566 = objc_opt_new();
      v398 = 1;
      do
      {
        v575 = v398;
        switch(v398)
        {
          case 1:
            v399 = [NSNumber numberWithInt:1];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v399];

            v400 = v380->_configurationManager;
            v401 = [NSString stringWithFormat:@"%@_ActivityInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v402) = 1120403456;
            [(MOConfigurationManagerBase *)v400 getFloatSettingForKey:v401 withFallback:v402];
            v403 = [NSNumber numberWithFloat:?];
            v404 = [NSNumber numberWithInt:1];
            [(NSDictionary *)v571 setObject:v403 forKeyedSubscript:v404];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            [_getDefaultFallbackFactorDict setObject:&off_1000C9D70 forKeyedSubscript:@"weightForNumRoutineEventsNormalized"];
            v406 = @"%@_ActivityInterfaceType";
            goto LABEL_31;
          case 2:
            v449 = [NSNumber numberWithInt:2];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v449];

            v450 = v380->_configurationManager;
            v451 = [NSString stringWithFormat:@"%@_OutingInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v452) = 1120403456;
            [(MOConfigurationManagerBase *)v450 getFloatSettingForKey:v451 withFallback:v452];
            v453 = [NSNumber numberWithFloat:?];
            v454 = [NSNumber numberWithInt:2];
            [(NSDictionary *)v571 setObject:v453 forKeyedSubscript:v454];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            [_getDefaultFallbackFactorDict setObject:&off_1000C9D80 forKeyedSubscript:@"weightForNumAnamolyEventsNormalized"];
            v406 = @"%@_OutingInterfaceType";
            goto LABEL_31;
          case 3:
            v431 = [NSNumber numberWithInt:3];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v431];

            v432 = v380->_configurationManager;
            v433 = [NSString stringWithFormat:@"%@_PhotoMomentInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v434) = 1120403456;
            [(MOConfigurationManagerBase *)v432 getFloatSettingForKey:v433 withFallback:v434];
            v435 = [NSNumber numberWithFloat:?];
            v436 = [NSNumber numberWithInt:3];
            [(NSDictionary *)v571 setObject:v435 forKeyedSubscript:v436];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            v406 = @"%@_PhotoMomentInterfaceType";
            goto LABEL_31;
          case 4:
            v437 = [NSNumber numberWithInt:4];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v437];

            v438 = v380->_configurationManager;
            v439 = [NSString stringWithFormat:@"%@_SignificantContactInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v440) = 1120403456;
            [(MOConfigurationManagerBase *)v438 getFloatSettingForKey:v439 withFallback:v440];
            v441 = [NSNumber numberWithFloat:?];
            v442 = [NSNumber numberWithInt:4];
            [(NSDictionary *)v571 setObject:v441 forKeyedSubscript:v442];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            [_getDefaultFallbackFactorDict setObject:&off_1000C9D90 forKeyedSubscript:@"weightForNumAnamolyEventsNormalized"];
            [_getDefaultFallbackFactorDict setObject:&off_1000C9D90 forKeyedSubscript:@"weightForNumTrendEventsNormalized"];
            [_getDefaultFallbackFactorDict setObject:&off_1000C9DA0 forKeyedSubscript:@"richnessScoreScalingParameter"];
            [_getDefaultFallbackFactorDict setObject:&off_1000C9DB0 forKeyedSubscript:@"bundleScoreConstant"];
            v406 = @"%@_SignificantContactInterfaceType";
            goto LABEL_31;
          case 5:
            v413 = [NSNumber numberWithInt:5];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v413];

            v414 = v380->_configurationManager;
            v415 = [NSString stringWithFormat:@"%@_YourMediaInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v416) = 1120403456;
            [(MOConfigurationManagerBase *)v414 getFloatSettingForKey:v415 withFallback:v416];
            v417 = [NSNumber numberWithFloat:?];
            v418 = [NSNumber numberWithInt:5];
            [(NSDictionary *)v571 setObject:v417 forKeyedSubscript:v418];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            v406 = @"%@_YourMediaInterfaceType";
            goto LABEL_31;
          case 6:
            v455 = [NSNumber numberWithInt:6];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v455];

            v456 = v380->_configurationManager;
            v457 = [NSString stringWithFormat:@"%@_YourSharedContentInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v458) = 1120403456;
            [(MOConfigurationManagerBase *)v456 getFloatSettingForKey:v457 withFallback:v458];
            v459 = [NSNumber numberWithFloat:?];
            v460 = [NSNumber numberWithInt:6];
            [(NSDictionary *)v571 setObject:v459 forKeyedSubscript:v460];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            [_getDefaultFallbackFactorDict setObject:&off_1000C9DC0 forKeyedSubscript:@"bundleScoreConstant"];
            v406 = @"%@_YourSharedContentInterfaceType";
            goto LABEL_31;
          case 7:
            v467 = [NSNumber numberWithInt:7];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v467];

            v468 = v380->_configurationManager;
            v469 = [NSString stringWithFormat:@"%@_YourTimeAtHomeInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v470) = 1120403456;
            [(MOConfigurationManagerBase *)v468 getFloatSettingForKey:v469 withFallback:v470];
            v471 = [NSNumber numberWithFloat:?];
            v472 = [NSNumber numberWithInt:7];
            [(NSDictionary *)v571 setObject:v471 forKeyedSubscript:v472];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            [_getDefaultFallbackFactorDict setObject:&off_1000C9DD0 forKeyedSubscript:@"bundleScoreConstant"];
            [_getDefaultFallbackFactorDict setObject:&off_1000C9DE0 forKeyedSubscript:@"bundleScoreScalingParameter"];
            v406 = @"%@_YourTimeAtHomeInterfaceType";
            goto LABEL_31;
          case 8:
            v443 = [NSNumber numberWithInt:8];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v443];

            v444 = v380->_configurationManager;
            v445 = [NSString stringWithFormat:@"%@_TopicsOfInterestInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v446) = 1120403456;
            [(MOConfigurationManagerBase *)v444 getFloatSettingForKey:v445 withFallback:v446];
            v447 = [NSNumber numberWithFloat:?];
            v448 = [NSNumber numberWithInt:8];
            [(NSDictionary *)v571 setObject:v447 forKeyedSubscript:v448];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            v406 = @"%@_TopicsOfInterestInterfaceType";
            goto LABEL_31;
          case 9:
            v479 = [NSNumber numberWithInt:9];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v479];

            v480 = v380->_configurationManager;
            v560 = [NSString stringWithFormat:@"%@_TrendInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight", v560];
            LODWORD(v482) = 1120403456;
            [(MOConfigurationManagerBase *)v480 getFloatSettingForKey:v560 withFallback:v482];
            v483 = [NSNumber numberWithFloat:?];
            v484 = [NSNumber numberWithInt:9];
            [(NSDictionary *)v571 setObject:v483 forKeyedSubscript:v484];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            v406 = @"%@_TrendInterfaceType";
            goto LABEL_31;
          case 10:
            v425 = [NSNumber numberWithInt:10];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v425];

            v426 = v380->_configurationManager;
            v427 = [NSString stringWithFormat:@"%@_PhotoMemoryInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v428) = 1120403456;
            [(MOConfigurationManagerBase *)v426 getFloatSettingForKey:v427 withFallback:v428];
            v429 = [NSNumber numberWithFloat:?];
            v430 = [NSNumber numberWithInt:10];
            [(NSDictionary *)v571 setObject:v429 forKeyedSubscript:v430];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            [_getDefaultFallbackFactorDict setObject:&off_1000C9DF0 forKeyedSubscript:@"decayRate"];
            [_getDefaultFallbackFactorDict setObject:&off_1000C9DF0 forKeyedSubscript:@"decayRateAfterViewed"];
            v406 = @"%@_PhotoMemoryInterfaceType";
            goto LABEL_31;
          case 11:
            v473 = [NSNumber numberWithInt:11];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v473];

            v474 = v380->_configurationManager;
            v475 = [NSString stringWithFormat:@"%@_EvergreenInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v476) = 1120403456;
            [(MOConfigurationManagerBase *)v474 getFloatSettingForKey:v475 withFallback:v476];
            v477 = [NSNumber numberWithFloat:?];
            v478 = [NSNumber numberWithInt:11];
            [(NSDictionary *)v571 setObject:v477 forKeyedSubscript:v478];

            [(NSDictionary *)v566 setObject:&off_1000C9D60 forKeyedSubscript:@"WISDOM"];
            [(NSDictionary *)v566 setObject:&off_1000C9D60 forKeyedSubscript:@"GRATITUDE"];
            [(NSDictionary *)v566 setObject:&off_1000C9D60 forKeyedSubscript:@"KINDNESS"];
            [(NSDictionary *)v566 setObject:&off_1000C9D60 forKeyedSubscript:@"PURPOSE"];
            [(NSDictionary *)v566 setObject:&off_1000C9D60 forKeyedSubscript:@"RESILIENCE"];
            [(NSDictionary *)v566 setObject:&off_1000C9D60 forKeyedSubscript:@"CREATIVITY"];
            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            [_getDefaultFallbackFactorDict setObject:&off_1000C9D60 forKeyedSubscript:@"decayRate"];
            [_getDefaultFallbackFactorDict setObject:&off_1000C9D60 forKeyedSubscript:@"weightForLabelQualityScore"];
            v406 = @"%@_EvergreenInterfaceType";
            goto LABEL_31;
          case 12:
            v407 = [NSNumber numberWithInt:12];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v407];

            v408 = v380->_configurationManager;
            v409 = [NSString stringWithFormat:@"%@_TimeContextInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v410) = 1120403456;
            [(MOConfigurationManagerBase *)v408 getFloatSettingForKey:v409 withFallback:v410];
            v411 = [NSNumber numberWithFloat:?];
            v412 = [NSNumber numberWithInt:12];
            [(NSDictionary *)v571 setObject:v411 forKeyedSubscript:v412];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            [_getDefaultFallbackFactorDict setObject:&off_1000C9D70 forKeyedSubscript:@"weightForNumRoutineEventsNormalized"];
            v406 = @"%@_TimeContextInterfaceType";
            goto LABEL_31;
          case 13:
            v419 = [NSNumber numberWithInt:13];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v419];

            v420 = v380->_configurationManager;
            v421 = [NSString stringWithFormat:@"%@_TripInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v422) = 1120403456;
            [(MOConfigurationManagerBase *)v420 getFloatSettingForKey:v421 withFallback:v422];
            v423 = [NSNumber numberWithFloat:?];
            v424 = [NSNumber numberWithInt:13];
            [(NSDictionary *)v571 setObject:v423 forKeyedSubscript:v424];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            v406 = @"%@_TripInterfaceType";
            goto LABEL_31;
          case 14:
            v461 = [NSNumber numberWithInt:14];
            [(NSDictionary *)v569 setObject:&off_1000C9D60 forKeyedSubscript:v461];

            v462 = v380->_configurationManager;
            v463 = [NSString stringWithFormat:@"%@_StateOfMindInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v464) = 1120403456;
            [(MOConfigurationManagerBase *)v462 getFloatSettingForKey:v463 withFallback:v464];
            v465 = [NSNumber numberWithFloat:?];
            v466 = [NSNumber numberWithInt:14];
            [(NSDictionary *)v571 setObject:v465 forKeyedSubscript:v466];

            _getDefaultFallbackFactorDict = [(MOEventBundleRanking *)v380 _getDefaultFallbackFactorDict];

            [_getDefaultFallbackFactorDict setObject:&off_1000C9DA0 forKeyedSubscript:@"bundleScoreConstant"];
            [_getDefaultFallbackFactorDict setObject:&off_1000C9E00 forKeyedSubscript:@"decayRate"];
            v406 = @"%@_StateOfMindInterfaceType";
LABEL_31:
            v397 = _getDefaultFallbackFactorDict;
            v485 = [NSString stringWithFormat:v406, @"rankingParams"];

            v577 = v485;
            break;
          default:
            break;
        }

        v486 = objc_opt_new();
        v579 = 0u;
        v580 = 0u;
        v581 = 0u;
        v582 = 0u;
        v397 = v397;
        v487 = [v397 countByEnumeratingWithState:&v579 objects:v584 count:16];
        if (v487)
        {
          v488 = v487;
          v489 = *v580;
          do
          {
            for (i = 0; i != v488; i = i + 1)
            {
              if (*v580 != v489)
              {
                objc_enumerationMutation(v397);
              }

              v491 = *(*(&v579 + 1) + 8 * i);
              v492 = v578->_configurationManager;
              v491 = [NSString stringWithFormat:@"%@_%@", v577, v491];
              v494 = [v397 objectForKeyedSubscript:v491];
              [v494 floatValue];
              [(MOConfigurationManagerBase *)v492 getFloatSettingForKey:v491 withFallback:?];
              v495 = [NSNumber numberWithFloat:?];
              [v486 setObject:v495 forKeyedSubscript:v491];

              v380 = v578;
            }

            v488 = [v397 countByEnumeratingWithState:&v579 objects:v584 count:16];
          }

          while (v488);
        }

        v496 = [v486 copy];
        v497 = [NSNumber numberWithInt:v575];
        [(NSDictionary *)v573 setObject:v496 forKeyedSubscript:v497];

        v398 = v575 + 1;
      }

      while (v575 != 16);
      v498 = objc_opt_new();
      v499 = v380->_configurationManager;
      v500 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minEngagementCount"];
      v501 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v499 getIntegerSettingForKey:v500 withFallback:5]];
      [(NSDictionary *)v498 setObject:v501 forKeyedSubscript:@"minEngagementCount"];

      v502 = v380->_configurationManager;
      v503 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minInterfaceTypes"];
      v504 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v502 getIntegerSettingForKey:v503 withFallback:2]];
      [(NSDictionary *)v498 setObject:v504 forKeyedSubscript:@"minInterfaceTypes"];

      v505 = v380->_configurationManager;
      v506 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minTimeIntervalForUpdateSec"];
      v507 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v505 getIntegerSettingForKey:v506 withFallback:259200]];
      [(NSDictionary *)v498 setObject:v507 forKeyedSubscript:@"minTimeIntervalForUpdateSec"];

      v508 = v380->_configurationManager;
      v509 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"longTimePeriodSinceEngagementScoreParamsUpdatedSec"];
      v510 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v508 getIntegerSettingForKey:v509 withFallback:2419200]];
      [(NSDictionary *)v498 setObject:v510 forKeyedSubscript:@"longTimePeriodSinceEngagementScoreParamsUpdatedSec"];

      v511 = v380->_configurationManager;
      v512 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"lowerBoundOfEngagementScoreParams"];
      LODWORD(v513) = -1.0;
      [(MOConfigurationManagerBase *)v511 getFloatSettingForKey:v512 withFallback:v513];
      v514 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v498 setObject:v514 forKeyedSubscript:@"lowerBoundOfEngagementScoreParams"];

      v515 = v380->_configurationManager;
      v516 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"upperBoundOfEngagementScoreParams"];
      LODWORD(v517) = 1.0;
      [(MOConfigurationManagerBase *)v515 getFloatSettingForKey:v516 withFallback:v517];
      v518 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v498 setObject:v518 forKeyedSubscript:@"upperBoundOfEngagementScoreParams"];

      v519 = objc_opt_new();
      v520 = v380->_configurationManager;
      v521 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"pairWiseFarthest"];
      LODWORD(v522) = 2.5;
      [(MOConfigurationManagerBase *)v520 getFloatSettingForKey:v521 withFallback:v522];
      v523 = [NSNumber numberWithFloat:?];
      [(NSMutableDictionary *)v519 setObject:v523 forKeyedSubscript:@"pairWiseFarthest"];

      v524 = v380->_configurationManager;
      v525 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"pairWiseFarther"];
      LODWORD(v526) = 2.0;
      [(MOConfigurationManagerBase *)v524 getFloatSettingForKey:v525 withFallback:v526];
      v527 = [NSNumber numberWithFloat:?];
      [(NSMutableDictionary *)v519 setObject:v527 forKeyedSubscript:@"pairWiseFarther"];

      v528 = v380->_configurationManager;
      v529 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"pairWiseFar"];
      LODWORD(v530) = 1.0;
      [(MOConfigurationManagerBase *)v528 getFloatSettingForKey:v529 withFallback:v530];
      v531 = [NSNumber numberWithFloat:?];
      [(NSMutableDictionary *)v519 setObject:v531 forKeyedSubscript:@"pairWiseFar"];

      v532 = objc_opt_new();
      _getDefaultRichnessWeightDict = [(MOEventBundleRanking *)v380 _getDefaultRichnessWeightDict];
      for (j = 0; j != 18; ++j)
      {
        v535 = [MOResource getStringTypeForResources:j];
        v536 = [_getDefaultRichnessWeightDict objectForKeyedSubscript:v535];
        v537 = [(MOEventBundleRanking *)v380 _getRichnessScoreWeightFromConfigurationManager:v535 withDefaultWeightDict:v536];
        [(NSDictionary *)v532 setObject:v537 forKey:v535];

        v380 = v578;
      }

      v538 = [_getDefaultRichnessWeightDict objectForKeyedSubscript:@"NumUniqueResourceTypesNormalizedKey"];
      v539 = [(MOEventBundleRanking *)v578 _getRichnessScoreWeightFromConfigurationManager:@"NumUniqueResourceTypesNormalizedKey" withDefaultWeightDict:v538];
      [(NSDictionary *)v532 setObject:v539 forKey:@"NumUniqueResourceTypesNormalizedKey"];

      v572 = [_getDefaultRichnessWeightDict objectForKeyedSubscript:@"NumWorkoutRouteMapAssets"];

      v540 = [(MOEventBundleRanking *)v578 _getRichnessScoreWeightFromConfigurationManager:@"NumWorkoutRouteMapAssets" withDefaultWeightDict:v572];
      [(NSDictionary *)v532 setObject:v540 forKey:@"NumWorkoutRouteMapAssets"];

      richnessWeightsDict = v578->_richnessWeightsDict;
      v578->_richnessWeightsDict = v532;
      v568 = v532;

      engagementScoreParameterDict = v578->_engagementScoreParameterDict;
      v578->_engagementScoreParameterDict = v498;
      v567 = v498;

      staticModelParameterMatrix = v578->_staticModelParameterMatrix;
      v578->_staticModelParameterMatrix = v573;
      v576 = v573;

      dynamicModelParameterDict = v578->_dynamicModelParameterDict;
      v578->_dynamicModelParameterDict = v569;
      v574 = v569;

      v545 = [(MOEventBundleRanking *)v578 _checkAndUpdateNumericLimits:v562];
      heuristicsParameterDict = v578->_heuristicsParameterDict;
      v578->_heuristicsParameterDict = v545;
      v547 = v545;

      rankingScoreThresholdDict = v578->_rankingScoreThresholdDict;
      v578->_rankingScoreThresholdDict = v563;
      v570 = v563;

      viewCountBasedAdjustmentParameterDict = v578->_viewCountBasedAdjustmentParameterDict;
      v578->_viewCountBasedAdjustmentParameterDict = v561;
      v550 = v561;

      bprRegularizationFactor = v578->_bprRegularizationFactor;
      v578->_bprRegularizationFactor = v571;
      v552 = v571;

      pairWiseWeights = v578->_pairWiseWeights;
      v578->_pairWiseWeights = v519;
      v554 = v519;

      evergreenEngagementScoreParameterDict = v578->_evergreenEngagementScoreParameterDict;
      v578->_evergreenEngagementScoreParameterDict = v566;
      v556 = v566;

      curationParameterDict = v578->_curationParameterDict;
      v578->_curationParameterDict = v565;
      v558 = v565;

      v6 = v578;
      managerCopy = v564;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    v387 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v387, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking initWithConfigurationManager:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_getRichnessScoreWeightFromConfigurationManager:(id)manager withDefaultWeightDict:(id)dict
{
  dictCopy = dict;
  managerCopy = manager;
  v25 = objc_opt_new();
  v23 = [managerCopy stringByAppendingString:@"_Resource_PrimaryWeight"];
  configurationManager = self->_configurationManager;
  v8 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", v23];
  v9 = [dictCopy objectForKeyedSubscript:@"RankingRichnessPrimaryPriorityScoreKey"];
  [v9 floatValue];
  [(MOConfigurationManagerBase *)configurationManager getFloatSettingForKey:v8 withFallback:?];
  v10 = [NSNumber numberWithFloat:?];

  [v25 setObject:v10 forKey:@"RankingRichnessPrimaryPriorityScoreKey"];
  v11 = [managerCopy stringByAppendingString:@"_Resource_SecondaryWeight"];

  v12 = self->_configurationManager;
  v13 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", v11];
  v14 = dictCopy;
  v15 = [dictCopy objectForKeyedSubscript:@"RankingRichnessPrimaryPriorityScoreKey"];
  [v15 floatValue];
  [(MOConfigurationManagerBase *)v12 getFloatSettingForKey:v13 withFallback:?];
  v16 = [NSNumber numberWithFloat:?];

  [v25 setObject:v16 forKey:@"RankingRichnessSecondaryPriorityScoreKey"];
  v17 = [managerCopy stringByAppendingString:@"_Resource_AuxiliaryWeight"];

  v18 = self->_configurationManager;
  v19 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", v17];
  v20 = [v14 objectForKeyedSubscript:@"RankingRichnessPrimaryPriorityScoreKey"];

  [v20 floatValue];
  [(MOConfigurationManagerBase *)v18 getFloatSettingForKey:v19 withFallback:?];
  v21 = [NSNumber numberWithFloat:?];

  [v25 setObject:v21 forKey:@"RankingRichnessAuxiliaryPriorityScoreKey"];

  return v25;
}

- (void)generateBundleRanking:(id)ranking withMinRecommendedBundleCountRequirement:(BOOL)requirement
{
  requirementCopy = requirement;
  rankingCopy = ranking;
  context = objc_autoreleasePoolPush();
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v36 = [rankingCopy count];
    v37 = 1024;
    LODWORD(v38) = requirementCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Input bundle count: %lu, minimumRecommendedBundleRequired:%d", buf, 0x12u);
  }

  v28 = requirementCopy;

  v7 = +[NSMutableIndexSet indexSet];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = rankingCopy;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v32;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        bundleIdentifier = [v14 bundleIdentifier];
        if (!bundleIdentifier || (v16 = bundleIdentifier, [v14 suggestionID], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
        {
          [v7 addIndex:v11];
          v18 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            bundleIdentifier2 = [v14 bundleIdentifier];
            suggestionID = [v14 suggestionID];
            *buf = 138412546;
            v36 = bundleIdentifier2;
            v37 = 2112;
            v38 = suggestionID;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "bundle with nil bundleID or nil suggestionID was filtered out: bundleID %@ suggestionID %@", buf, 0x16u);
          }
        }

        ++v11;
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v10);
  }

  [v8 removeObjectsAtIndexes:v7];
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v8 count];
    *buf = 134217984;
    v36 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Input bundle count after nil ID filters: %lu", buf, 0xCu);
  }

  v23 = [(MOEventBundleRanking *)self generateRankingInput:v8];
  v24 = [(MOEventBundleRanking *)self _calculateRankingScore:v23 withMinRecommendedBundleCountRequirement:v28];
  if (self->_isInternalBuild)
  {
    v25 = +[NSDate date];
    [(MOEventBundleRanking *)self _submitEventBundleRankingAnalytics:v24 withRankingInput:v23 andSubmissionDate:v25];
  }

  [(MOEventBundleRanking *)self _mergeScoresToBundles:v8 usingScore:v24];
  v26 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v8 count];
    *buf = 134217984;
    v36 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "generateBundleRanking completed for %lu bundles", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
}

uint64_t __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
  v5 = [v4 isAfterDate:*(a1 + 32)];

  v6 = [v3 objectForKeyedSubscript:@"bundleStartDate"];

  LODWORD(a1) = [v6 isBeforeDate:*(a1 + 40)];
  return v5 & a1;
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_693(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"numHolidayAssets"];
  if ([v6 intValue] <= 0)
  {
  }

  else
  {
    v7 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:@"maxNumOfHolidayBundlesPerDay"];
    v8 = [v7 intValue];

    if (v8 > a3)
    {
      [v5 setObject:&off_1000C87A0 forKeyedSubscript:@"useHolidayLabel"];
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_693_cold_1(v5, @"numHolidayAssets");
      }
    }
  }
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_697(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"numBirthdayAssets"];
  if ([v6 intValue] <= 0)
  {
  }

  else
  {
    v7 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:@"maxNumOfBirthdayBundlesPerDay"];
    v8 = [v7 intValue];

    if (v8 > a3)
    {
      [v5 setObject:&off_1000C87A0 forKeyedSubscript:@"useBirthdayLabel"];
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_697_cold_1(v5, @"numBirthdayAssets");
      }
    }
  }
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_701(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"bundleSuperType"];
  v5 = [v4 intValue];

  if (v5 == 3)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = [v3 objectForKeyedSubscript:@"allContactIdentifiersSet"];
    v68 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (!v68)
    {
      goto LABEL_17;
    }

    v67 = *v70;
    v65 = a1;
    while (1)
    {
      for (i = 0; i != v68; i = i + 1)
      {
        if (*v70 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v69 + 1) + 8 * i);
        v8 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
        v9 = [*(a1 + 32) rankingScoreThresholdDict];
        v10 = [v9 objectForKeyedSubscript:@"contactHoldOffThreshold"];
        [v10 floatValue];
        v12 = [v8 dateByAddingTimeInterval:v11];

        v13 = [*(a1 + 40) objectForKey:v7];

        if (v13)
        {
          v14 = [*(a1 + 40) objectForKey:v7];
          if ([v14 compare:v12]== 1)
          {
            v15 = [v3 objectForKeyedSubscript:@"isWithinHoldOffPeriod"];
            v16 = [v15 isEqual:&off_1000C8770];

            if (!v16)
            {
              goto LABEL_13;
            }

            [v3 setObject:&off_1000C8428 forKeyedSubscript:@"visibilityCategoryForUI"];
            [v3 setObject:&off_1000C8788 forKeyedSubscript:@"rankingCategory"];
            [v3 setObject:&off_1000C87A0 forKeyedSubscript:@"isWithinHoldOffPeriod"];
            [v3 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
            v17 = *(a1 + 48);
            v18 = [v3 objectForKeyedSubscript:@"rankingDictionaryIndex"];
            [v17 replaceObjectAtIndex:objc_msgSend(v18 withObject:{"intValue"), v3}];

            v14 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v19 = [v3 objectForKeyedSubscript:@"suggestionIdentifier"];
              v20 = [v3 objectForKeyedSubscript:@"bundleIdentifier"];
              v21 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
              v22 = [v3 objectForKeyedSubscript:@"bundleSubType"];
              *buf = 138413058;
              v74 = v19;
              v75 = 2112;
              v76 = v20;
              v77 = 2112;
              v78 = v21;
              v79 = 2112;
              v80 = v22;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Contact was suppressed from Recent tab since there is a visible suggestion with same contactID in the hold off period. SuggestionID:%@, BundleID:%@, startDate:%@,subType:%@", buf, 0x2Au);

              a1 = v65;
            }
          }
        }

LABEL_13:
        v23 = [v3 objectForKeyedSubscript:@"rankingCategory"];
        v24 = [v23 intValue];

        if (v24 != 3)
        {
          v25 = *(a1 + 40);
          v26 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
          [v25 setObject:v26 forKey:v7];
        }
      }

      v68 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
      if (!v68)
      {
LABEL_17:

        break;
      }
    }
  }

  v27 = phoneSensedWalkingVariants;
  v28 = [v3 objectForKeyedSubscript:@"bundleSubType"];
  if ([v27 containsObject:v28])
  {
  }

  else
  {
    v29 = visitSubtypeVariants;
    v30 = [v3 objectForKeyedSubscript:@"bundleSubType"];
    LODWORD(v29) = [v29 containsObject:v30];

    if (!v29)
    {
      goto LABEL_44;
    }
  }

  v31 = *(*(*(a1 + 56) + 8) + 40);
  v32 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
  if ([v31 containsObject:v32])
  {
    v33 = [v3 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
    [v33 floatValue];
    v35 = v34;

    if (v35 == 0.0)
    {
      [v3 setObject:&off_1000C8428 forKeyedSubscript:@"visibilityCategoryForUI"];
      [v3 setObject:&off_1000C8788 forKeyedSubscript:@"rankingCategory"];
      [v3 setObject:&off_1000C87A0 forKeyedSubscript:@"isPseudoDupInRecentTab"];
      [v3 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
      v36 = *(a1 + 48);
      v37 = [v3 objectForKeyedSubscript:@"rankingDictionaryIndex"];
      [v36 replaceObjectAtIndex:objc_msgSend(v37 withObject:{"intValue"), v3}];

      v38 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = [v3 objectForKeyedSubscript:@"suggestionIdentifier"];
        v40 = [v3 objectForKeyedSubscript:@"bundleIdentifier"];
        v41 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
        v42 = [v3 objectForKeyedSubscript:@"bundleSubType"];
        *buf = 138413058;
        v74 = v39;
        v75 = 2112;
        v76 = v40;
        v77 = 2112;
        v78 = v41;
        v79 = 2112;
        v80 = v42;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Phone-sensed walk or outing bundle was suppressed from Recent tab since it shares the same place(s) with other bundle(s) with higher goodness score from the same day. SuggestionID:%@, BundleID:%@, startDate:%@,subType:%@", buf, 0x2Au);
      }

      goto LABEL_42;
    }
  }

  else
  {
  }

  if (*(*(*(a1 + 64) + 8) + 24) >= 1)
  {
    v43 = phoneSensedWalkingVariants;
    v44 = [v3 objectForKeyedSubscript:@"bundleSubType"];
    if ([v43 containsObject:v44])
    {
      v45 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
      if ([v45 isEqualToSet:emptyStringSet])
      {
        v46 = [v3 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
        [v46 floatValue];
        v48 = v47;

        if (v48 == 0.0)
        {
          [v3 setObject:&off_1000C8428 forKeyedSubscript:@"visibilityCategoryForUI"];
          [v3 setObject:&off_1000C8788 forKeyedSubscript:@"rankingCategory"];
          [v3 setObject:&off_1000C87A0 forKeyedSubscript:@"isPseudoDupInRecentTab"];
          [v3 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
          v49 = *(a1 + 48);
          v50 = [v3 objectForKeyedSubscript:@"rankingDictionaryIndex"];
          [v49 replaceObjectAtIndex:objc_msgSend(v50 withObject:{"intValue"), v3}];

          v51 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            v52 = [v3 objectForKeyedSubscript:@"suggestionIdentifier"];
            v53 = [v3 objectForKeyedSubscript:@"bundleIdentifier"];
            v54 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
            *buf = 138412802;
            v74 = v52;
            v75 = 2112;
            v76 = v53;
            v77 = 2112;
            v78 = v54;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Phone-sensed walk with no location was suppressed from Recent tab since there is other unsuppressed walking suggestion with higher goodness score. SuggestionID:%@, BundleID:%@, startDate:%@", buf, 0x20u);
          }

          goto LABEL_42;
        }

        goto LABEL_36;
      }
    }
  }

LABEL_36:
  v55 = phoneSensedWalkingVariants;
  v56 = [v3 objectForKeyedSubscript:@"bundleSubType"];
  LODWORD(v55) = [v55 containsObject:v56];

  if (!v55)
  {
    goto LABEL_42;
  }

  ++*(*(*(a1 + 64) + 8) + 24);
  v57 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
  if (([v57 isEqualToSet:emptyStringSet] & 1) == 0)
  {

    goto LABEL_41;
  }

  v58 = [v3 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v58 floatValue];
  v60 = v59;

  if (v60 > 0.0)
  {
LABEL_41:
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

LABEL_42:
  v61 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
  v62 = [v61 isEqualToSet:emptyStringSet];

  if ((v62 & 1) == 0)
  {
    v63 = *(*(*(a1 + 56) + 8) + 40);
    v64 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
    [v63 addObject:v64];
  }

LABEL_44:
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_704(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = phoneSensedWalkingVariants;
  v5 = [v3 objectForKeyedSubscript:@"bundleSubType"];
  if (([v4 containsObject:v5] & 1) == 0)
  {
    goto LABEL_4;
  }

  v6 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
  v7 = v6;
  if (v6 != emptyStringSet)
  {

LABEL_4:
    goto LABEL_5;
  }

  v8 = [v3 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v8 floatValue];
  v10 = v9;

  if (v10 == 0.0)
  {
    [v3 setObject:&off_1000C8428 forKeyedSubscript:@"visibilityCategoryForUI"];
    [v3 setObject:&off_1000C8788 forKeyedSubscript:@"rankingCategory"];
    [v3 setObject:&off_1000C87A0 forKeyedSubscript:@"isPseudoDupInRecentTab"];
    [v3 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v11 = *(a1 + 32);
    v12 = [v3 objectForKeyedSubscript:@"rankingDictionaryIndex"];
    [v11 replaceObjectAtIndex:objc_msgSend(v12 withObject:{"intValue"), v3}];

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v3 objectForKeyedSubscript:@"suggestionIdentifier"];
      v15 = [v3 objectForKeyedSubscript:@"bundleIdentifier"];
      v16 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Phone-sensed walking with no destination or photo got suppressed from Recent tab since richer walking bundle was found in the same day. SuggestionID:%@, BundleID:%@, startDate:%@", &v17, 0x20u);
    }
  }

LABEL_5:
}

uint64_t __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_705(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
  v5 = [v4 isAfterDate:*(a1 + 32)];

  v6 = [v3 objectForKeyedSubscript:@"bundleStartDate"];

  LODWORD(a1) = [v6 isBeforeDate:*(a1 + 40)];
  return v5 & a1;
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:@"bundleSuperType"];
  if ([v3 intValue] != 8)
  {
    v4 = [v7 objectForKeyedSubscript:@"allStateOfMindIdentifiersSet"];
    v5 = [v4 isEqualToSet:emptyStringSet];

    if (v5)
    {
      goto LABEL_5;
    }

    v6 = *(a1 + 32);
    v3 = [v7 objectForKeyedSubscript:@"allStateOfMindIdentifiersSet"];
    [v6 addObjectsFromArray:v3];
  }

LABEL_5:
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 64) + 8) + 40);
  v7 = [v5 objectForKeyedSubscript:?];
  v198 = v5;
  v196 = a1;
  if ([v6 containsObject:v7])
  {
  }

  else
  {
    v8 = *(*(*(a1 + 72) + 8) + 40);
    v9 = [v5 objectForKeyedSubscript:@"suggestionIdentifier"];
    LODWORD(v8) = [v8 containsObject:v9];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  [v198 setObject:&off_1000C8428 forKeyedSubscript:@"visibilityCategoryForUI"];
  [v198 setObject:&off_1000C8788 forKeyedSubscript:@"rankingCategory"];
  [v198 setObject:&off_1000C87A0 forKeyedSubscript:@"isDuplicated"];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
    v12 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
    v13 = [v198 objectForKeyedSubscript:@"rankingScore"];
    [v13 floatValue];
    *buf = 138412802;
    v206 = v11;
    v207 = 2112;
    v208 = v12;
    v209 = 2048;
    v210 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Bundle got rejected since it shares suggestionID(%@) or bundleID(%@) with the other bundle with higher ranking score: %.3f", buf, 0x20u);
  }

LABEL_7:
  v15 = v198;
  v16 = [v198 objectForKeyedSubscript:?];
  if ([v16 intValue] == 11)
  {
    v17 = [v198 objectForKeyedSubscript:@"visibilityCategoryForUI"];
    v18 = [v17 intValue];

    if (v18 != 4)
    {
      v19 = v196;
      v20 = *(*(*(v196 + 80) + 8) + 40);
      v21 = [v198 objectForKeyedSubscript:@"bundleSubType"];
      LODWORD(v20) = [v20 containsObject:v21];

      if (v20)
      {
        [v198 setObject:&off_1000C8428 forKeyedSubscript:@"visibilityCategoryForUI"];
        [v198 setObject:&off_1000C8788 forKeyedSubscript:@"rankingCategory"];
        [v198 setObject:&off_1000C87A0 forKeyedSubscript:@"isDuplicated"];
        v22 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
          v24 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
          *buf = 138412546;
          v206 = v23;
          v207 = 2112;
          v208 = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Evergreen bundle got rejected since it is the same type as the other evergreen bundle: suggestionID %@ bundleID %@", buf, 0x16u);
        }

        v19 = v196;
      }

      else
      {
        ++*(*(*(v196 + 88) + 8) + 24);
      }

      v25 = *(*(*(v19 + 80) + 8) + 40);
      v15 = v198;
      v26 = [v198 objectForKeyedSubscript:@"bundleSubType"];
      [v25 addObject:v26];
    }
  }

  else
  {
  }

  v27 = [v15 objectForKeyedSubscript:@"bundleSubType"];
  v28 = [v27 intValue];

  v29 = v198;
  if (v28 == 802)
  {
    v194 = a3;
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    obj = [v198 objectForKeyedSubscript:@"allStateOfMindIdentifiersSet"];
    v30 = [obj countByEnumeratingWithState:&v200 objects:v204 count:16];
    v31 = v196;
    if (v30)
    {
      v32 = v30;
      v33 = *v201;
      v34 = @"visibilityCategoryForUI";
      v35 = @"rankingCategory";
      v36 = @"isDuplicated";
      v37 = &off_1000C8428;
      do
      {
        v38 = 0;
        v197 = v32;
        do
        {
          if (*v201 != v33)
          {
            objc_enumerationMutation(obj);
          }

          if ([*(v31 + 32) containsObject:*(*(&v200 + 1) + 8 * v38)])
          {
            [v29 setObject:v37 forKeyedSubscript:v34];
            [v29 setObject:&off_1000C8788 forKeyedSubscript:v35];
            [v29 setObject:&off_1000C87A0 forKeyedSubscript:v36];
            v39 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              [v29 objectForKeyedSubscript:@"suggestionIdentifier"];
              v40 = v33;
              v41 = v36;
              v42 = v35;
              v43 = v34;
              v45 = v44 = v37;
              v46 = [v29 objectForKeyedSubscript:@"bundleIdentifier"];
              [v29 objectForKeyedSubscript:@"bundleStartDate"];
              v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412802;
              v206 = v45;
              v207 = 2112;
              v208 = v46;
              v209 = 2112;
              v210 = v47;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Standalone emotion bundle got suppressed from both tabs since the emotion is contained in another bundle. SuggestionID:%@, bundleID:%@, startDate:%@", buf, 0x20u);

              v29 = v198;
              v31 = v196;

              v37 = v44;
              v34 = v43;
              v35 = v42;
              v36 = v41;
              v33 = v40;
              v32 = v197;
            }
          }

          v38 = v38 + 1;
        }

        while (v32 != v38);
        v32 = [obj countByEnumeratingWithState:&v200 objects:v204 count:16];
      }

      while (v32);
    }

    a3 = v194;
  }

  [v29 objectForKeyedSubscript:?];
  v49 = v48 = v29;
  if ([v49 intValue] != 8)
  {
    goto LABEL_32;
  }

  v50 = [v48 objectForKeyedSubscript:@"rankingCategory"];
  if ([v50 isEqual:&off_1000C8788])
  {

LABEL_32:
    goto LABEL_33;
  }

  v79 = [v48 objectForKeyedSubscript:@"stateOfMindLoggedIn3pApp"];
  if ([v79 BOOLValue])
  {
  }

  else
  {
    v80 = [v48 objectForKeyedSubscript:@"stateOfMindLoggedInJournalApp"];
    v81 = [v80 BOOLValue];

    if (!v81)
    {
      goto LABEL_33;
    }
  }

  [v48 setObject:&off_1000C8788 forKeyedSubscript:@"visibilityCategoryForUI"];
  [v48 setObject:&off_1000C8518 forKeyedSubscript:@"rankingCategory"];
LABEL_33:
  v51 = [v48 objectForKeyedSubscript:@"bundleSubType"];
  if ([v51 intValue] == 802)
  {
    v52 = [v48 objectForKeyedSubscript:@"rankingCategory"];
    v53 = [v52 isEqual:&off_1000C8788];

    if ((v53 & 1) == 0)
    {
      [v48 setObject:&off_1000C8788 forKeyedSubscript:@"visibilityCategoryForUI"];
      [v48 setObject:&off_1000C8518 forKeyedSubscript:@"rankingCategory"];
    }
  }

  else
  {
  }

  v54 = [v48 objectForKeyedSubscript:@"visibilityCategoryForUI"];
  v55 = (MOContextTimeMetaData + 32);
  p_info = MOContextTimeMetaData.info;
  if ([v54 intValue] == 1)
  {

    v57 = v196;
  }

  else
  {
    v58 = [v48 objectForKeyedSubscript:@"visibilityCategoryForUI"];
    v59 = [v58 intValue];

    v57 = v196;
    if (v59 != 2)
    {
      [v48 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
      goto LABEL_166;
    }
  }

  v60 = [v48 objectForKeyedSubscript:@"bundleSubType"];
  if ([v60 intValue] == 202)
  {
    v61 = *(v57 + 176);

    if ((v61 & 1) == 0)
    {
      [v198 setObject:&off_1000C8428 forKeyedSubscript:@"visibilityCategoryForUI"];
      [v198 setObject:&off_1000C8788 forKeyedSubscript:@"rankingCategory"];
      [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
      v62 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
LABEL_93:

LABEL_94:
        v48 = v198;
LABEL_95:
        v57 = v196;
        goto LABEL_166;
      }

      v63 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
      v64 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
      [v198 objectForKeyedSubscript:@"bundleStartDate"];
      v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v206 = v63;
      v207 = 2112;
      v208 = v64;
      v209 = 2112;
      v210 = v65;
      v66 = "Weekly summary bundle got suppressed from Recommended tab since workout routine with the same workout types exists. SuggestionID:%@, bundleID:%@, startDate:%@";
LABEL_92:
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, v66, buf, 0x20u);

      goto LABEL_93;
    }
  }

  else
  {
  }

  if (*(v196 + 176) == 1)
  {
    v67 = [v198 objectForKeyedSubscript:@"bundleSubType"];
    if ([v67 intValue] == 201)
    {
      v68 = [v198 objectForKeyedSubscript:@"bundleStartDate"];
      if ([v68 isAfterDate:*(v196 + 40)])
      {
        v69 = [v198 objectForKeyedSubscript:@"bundleEndDate"];
        v70 = [v69 isBeforeDate:*(v196 + 48)];

        v55 = (MOContextTimeMetaData + 32);
        if (v70)
        {
          v71 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
          v72 = [v71 BOOLValue];

          if (v72)
          {
            v73 = &off_1000C8428;
          }

          else
          {
            v73 = &off_1000C8788;
          }

          if (v72)
          {
            v74 = &off_1000C8788;
          }

          else
          {
            v74 = &off_1000C8518;
          }

          [v198 setObject:v73 forKeyedSubscript:@"visibilityCategoryForUI"];
          [v198 setObject:v74 forKeyedSubscript:@"rankingCategory"];
          [v198 setObject:&off_1000C87A0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
          [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
          v75 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            v76 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
            v77 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
            [v198 objectForKeyedSubscript:@"bundleStartDate"];
            v78 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412802;
            v206 = v76;
            v207 = 2112;
            v208 = v77;
            v209 = 2112;
            v210 = v78;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "Workout bundle got suppressed from Recommended tab since weekly workout summary is shown on Recommended tab. SuggestionID:%@, bundleID:%@, startDate:%@", buf, 0x20u);
          }

          goto LABEL_94;
        }

        goto LABEL_65;
      }

      v55 = MOContextTimeMetaData.info;
    }
  }

LABEL_65:
  v82 = v55[317];
  v83 = [v198 objectForKeyedSubscript:@"bundleSubType"];
  if (![(__objc2_class_ro *)v82 containsObject:v83])
  {
LABEL_77:

    goto LABEL_78;
  }

  v84 = *(*(*(v196 + 96) + 8) + 40);
  v85 = [v198 objectForKeyedSubscript:@"workoutTypesSet"];
  if (([v84 containsObject:v85] & 1) == 0)
  {

    goto LABEL_77;
  }

  v86 = [v198 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v86 floatValue];
  v88 = v87;

  if (v88 == 0.0)
  {
    v89 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
    v90 = [v89 BOOLValue];

    if (v90)
    {
      v91 = &off_1000C8428;
    }

    else
    {
      v91 = &off_1000C8788;
    }

    if (v90)
    {
      v92 = &off_1000C8788;
    }

    else
    {
      v92 = &off_1000C8518;
    }

    [v198 setObject:v91 forKeyedSubscript:@"visibilityCategoryForUI"];
    [v198 setObject:v92 forKeyedSubscript:@"rankingCategory"];
    [v198 setObject:&off_1000C87A0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
    [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v62 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      goto LABEL_93;
    }

    v63 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
    v64 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
    [v198 objectForKeyedSubscript:@"bundleStartDate"];
    v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412802;
    v206 = v63;
    v207 = 2112;
    v208 = v64;
    v209 = 2112;
    v210 = v65;
    v66 = "Workout bundle got suppressed from Recommended tab since it has the same workout type(s) with the other bundle with higher ranking score. SuggestionID:%@, bundleID:%@, startDate:%@";
    goto LABEL_92;
  }

LABEL_78:
  v93 = visitSubtypeVariants;
  v94 = [v198 objectForKeyedSubscript:@"bundleSubType"];
  v95 = [v93 containsObject:v94];
  if ((v95 & 1) == 0)
  {
    v93 = [v198 objectForKeyedSubscript:@"bundleSubType"];
    if ([v93 intValue] != 105)
    {
      goto LABEL_97;
    }
  }

  v96 = *(*(*(v196 + 104) + 8) + 40);
  v97 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
  if (![v96 containsObject:v97])
  {

    if (v95)
    {
LABEL_98:

      goto LABEL_99;
    }

LABEL_97:

    goto LABEL_98;
  }

  v98 = [v198 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v98 floatValue];
  v100 = v99;

  if ((v95 & 1) == 0)
  {
  }

  if (v100 == 0.0)
  {
    v101 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
    v102 = [v101 BOOLValue];

    if (v102)
    {
      v103 = &off_1000C8428;
    }

    else
    {
      v103 = &off_1000C8788;
    }

    if (v102)
    {
      v104 = &off_1000C8788;
    }

    else
    {
      v104 = &off_1000C8518;
    }

    [v198 setObject:v103 forKeyedSubscript:@"visibilityCategoryForUI"];
    [v198 setObject:v104 forKeyedSubscript:@"rankingCategory"];
    [v198 setObject:&off_1000C87A0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
    [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v62 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      goto LABEL_93;
    }

    v63 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
    v64 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
    [v198 objectForKeyedSubscript:@"bundleStartDate"];
    v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412802;
    v206 = v63;
    v207 = 2112;
    v208 = v64;
    v209 = 2112;
    v210 = v65;
    v66 = "Visit bundle got suppressed from Recommended tab since it shared the same place(s) with more highly ranked bundle. SuggestionID:%@, bundleID:%@, startDate:%@";
    goto LABEL_92;
  }

LABEL_99:
  v105 = [v198 objectForKeyedSubscript:@"bundleSuperType"];
  if ([v105 intValue] != 10)
  {
LABEL_105:

    v57 = v196;
    goto LABEL_106;
  }

  v106 = *(*(*(v196 + 104) + 8) + 40);
  v107 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
  if (([v106 containsObject:v107] & 1) == 0)
  {

    goto LABEL_105;
  }

  v108 = [v198 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v108 floatValue];
  v110 = v109;

  v57 = v196;
  if (v110 == 0.0)
  {
    [v198 setObject:&off_1000C8428 forKeyedSubscript:@"visibilityCategoryForUI"];
    [v198 setObject:&off_1000C8788 forKeyedSubscript:@"rankingCategory"];
    [v198 setObject:&off_1000C87A0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
    [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v111 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
    {
      v112 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
      v113 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
      [v198 objectForKeyedSubscript:@"bundleStartDate"];
      v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v206 = v112;
      v207 = 2112;
      v208 = v113;
      v209 = 2112;
      v210 = v114;
      v115 = "Thematic summary bundle got suppressed from Recommended tab since it shared the same place(s) with more highly ranked bundle. SuggestionID:%@, bundleID:%@, startDate:%@";
LABEL_144:
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_INFO, v115, buf, 0x20u);

      v57 = v196;
      goto LABEL_145;
    }

    goto LABEL_145;
  }

LABEL_106:
  v48 = v198;
  v116 = [v198 objectForKeyedSubscript:@"bundleSuperType"];
  if ([v116 intValue] == 3)
  {
    v117 = *(*(*(v57 + 112) + 8) + 40);
    v118 = [v198 objectForKeyedSubscript:@"allContactIdentifiersSet"];
    LODWORD(v117) = [v117 containsObject:v118];

    if (v117)
    {
      v119 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
      if ([v119 BOOLValue])
      {

        v120 = &off_1000C8788;
        v121 = &off_1000C8428;
      }

      else
      {
        v143 = [v198 objectForKeyedSubscript:@"bundleSubType"];
        v144 = [v143 intValue];

        if (v144 == 303)
        {
          v121 = &off_1000C8428;
        }

        else
        {
          v121 = &off_1000C8788;
        }

        if (v144 == 303)
        {
          v120 = &off_1000C8788;
        }

        else
        {
          v120 = &off_1000C8518;
        }
      }

      v57 = v196;
      [v198 setObject:v121 forKeyedSubscript:@"visibilityCategoryForUI"];
      [v198 setObject:v120 forKeyedSubscript:@"rankingCategory"];
      [v198 setObject:&off_1000C87A0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
      [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
      v111 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (!os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
      {
        goto LABEL_145;
      }

      v112 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
      v113 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
      [v198 objectForKeyedSubscript:@"bundleStartDate"];
      v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v206 = v112;
      v207 = 2112;
      v208 = v113;
      v209 = 2112;
      v210 = v114;
      v115 = "Contact bundle got suppressed from Recommended tab since it shares the same contact id(s) with the other bundle with higher ranking score. SuggestionID:%@, bundleID:%@, startDate:%@";
      goto LABEL_144;
    }
  }

  else
  {
  }

  v122 = phoneSensedWalkingVariants;
  v123 = [v198 objectForKeyedSubscript:@"bundleSubType"];
  LODWORD(v122) = [v122 containsObject:v123];

  if (!v122)
  {
    v139 = [v198 objectForKeyedSubscript:@"bundleSubType"];
    v140 = [v139 intValue];

    if (v140 == 401)
    {
      v57 = v196;
      if (*(*(*(v196 + 144) + 8) + 24) == 1)
      {
        [v198 setObject:&off_1000C8788 forKeyedSubscript:@"visibilityCategoryForUI"];
        [v198 setObject:&off_1000C8518 forKeyedSubscript:@"rankingCategory"];
        [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
        v111 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
        {
          v112 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
          v113 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
          [v198 objectForKeyedSubscript:@"bundleStartDate"];
          v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412802;
          v206 = v112;
          v207 = 2112;
          v208 = v113;
          v209 = 2112;
          v210 = v114;
          v115 = "Daily SongOnrepeat bundle was suppressed from Recommended tab since the same type already exists in Recommended tab. SuggestionID:%@, bundleID:%@, startDate:%@";
          goto LABEL_144;
        }

LABEL_145:

        v48 = v198;
        goto LABEL_166;
      }

      ++*(*(*(v196 + 128) + 8) + 24);
      v145 = [NSNumber numberWithUnsignedInteger:?];
      v48 = v198;
      [v198 setObject:v145 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

      v146 = *(v196 + 144);
    }

    else
    {
      v141 = [v198 objectForKeyedSubscript:@"bundleSubType"];
      v142 = [v141 intValue];

      if (v142 == 402)
      {
        v57 = v196;
        if (*(*(*(v196 + 152) + 8) + 24) == 1)
        {
          [v198 setObject:&off_1000C8788 forKeyedSubscript:@"visibilityCategoryForUI"];
          [v198 setObject:&off_1000C8518 forKeyedSubscript:@"rankingCategory"];
          [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
          v111 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
          {
            v112 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
            v113 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
            [v198 objectForKeyedSubscript:@"bundleStartDate"];
            v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412802;
            v206 = v112;
            v207 = 2112;
            v208 = v113;
            v209 = 2112;
            v210 = v114;
            v115 = "Daily PlayedSong bundle was suppressed from Recommended tab since the same type already exists in Recommended tab. SuggestionID:%@, bundleID:%@, startDate:%@";
            goto LABEL_144;
          }

          goto LABEL_145;
        }

        ++*(*(*(v196 + 128) + 8) + 24);
        v160 = [NSNumber numberWithUnsignedInteger:?];
        v48 = v198;
        [v198 setObject:v160 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

        v146 = *(v196 + 152);
      }

      else
      {
        v147 = [v198 objectForKeyedSubscript:@"bundleSubType"];
        v148 = [v147 intValue];

        if (v148 != 403)
        {
          v161 = [v198 objectForKeyedSubscript:@"bundleInterfaceType"];
          v162 = [v161 intValue];

          if (v162 == 11)
          {
            [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
            goto LABEL_95;
          }

          v189 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          v57 = v196;
          if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
          {
            v191 = *(*(*(v196 + 128) + 8) + 24);
            v192 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
            [v198 objectForKeyedSubscript:@"bundleIdentifier"];
            v193 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 134218498;
            v206 = v191;
            v207 = 2112;
            v208 = v192;
            v209 = 2112;
            v210 = v193;
            _os_log_debug_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEBUG, "Ordinal rank %lu:  SuggestionID:%@, bundleID:%@", buf, 0x20u);

            v57 = v196;
          }

          ++*(*(*(v57 + 128) + 8) + 24);
          v190 = [NSNumber numberWithUnsignedInteger:?];
          v48 = v198;
          [v198 setObject:v190 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

          ++*(*(*(v57 + 168) + 8) + 24);
          goto LABEL_166;
        }

        v57 = v196;
        if (*(*(*(v196 + 160) + 8) + 24) == 1)
        {
          [v198 setObject:&off_1000C8788 forKeyedSubscript:@"visibilityCategoryForUI"];
          [v198 setObject:&off_1000C8518 forKeyedSubscript:@"rankingCategory"];
          [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
          v111 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (!os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
          {
            goto LABEL_145;
          }

          v112 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
          v113 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
          [v198 objectForKeyedSubscript:@"bundleStartDate"];
          v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412802;
          v206 = v112;
          v207 = 2112;
          v208 = v113;
          v209 = 2112;
          v210 = v114;
          v115 = "Daily PlayedPodCast bundle was suppressed from Recommended tab since the same type already exists in Recommended tab. SuggestionID:%@, bundleID:%@, startDate:%@";
          goto LABEL_144;
        }

        ++*(*(*(v196 + 128) + 8) + 24);
        v163 = [NSNumber numberWithUnsignedInteger:?];
        v48 = v198;
        [v198 setObject:v163 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

        v146 = *(v196 + 160);
      }
    }

    *(*(v146 + 8) + 24) = 1;
    goto LABEL_166;
  }

  v124 = *(*(*(v196 + 104) + 8) + 40);
  v125 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
  if (![v124 containsObject:v125])
  {
    goto LABEL_122;
  }

  v126 = [v198 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v126 floatValue];
  v128 = v127;

  v57 = v196;
  if (v128 == 0.0)
  {
    v129 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
    v130 = [v129 BOOLValue];

    if (v130)
    {
      v131 = &off_1000C8428;
    }

    else
    {
      v131 = &off_1000C8788;
    }

    if (v130)
    {
      v132 = &off_1000C8788;
    }

    else
    {
      v132 = &off_1000C8518;
    }

    [v198 setObject:v131 forKeyedSubscript:@"visibilityCategoryForUI"];
    [v198 setObject:v132 forKeyedSubscript:@"rankingCategory"];
    [v198 setObject:&off_1000C87A0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
    [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v125 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
    {
      v133 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
      v134 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
      [v198 objectForKeyedSubscript:@"bundleStartDate"];
      v135 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v206 = v133;
      v207 = 2112;
      v208 = v134;
      v209 = 2112;
      v210 = v135;
      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_INFO, "Phone sensed bundle got suppressed from Recommended tab since it shared the same place(s) with more highly ranked bundle and it does not have any photo. SuggestionID:%@, bundleID:%@, startDate:%@", buf, 0x20u);
    }

LABEL_122:

    v57 = v196;
  }

  if (!*(*(*(v57 + 120) + 8) + 24))
  {
    goto LABEL_126;
  }

  v136 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
  v137 = v136;
  if (v136 != emptyStringSet)
  {

    v57 = v196;
    goto LABEL_126;
  }

  v149 = [v198 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v149 floatValue];
  v151 = v150;

  v57 = v196;
  if (v151 != 0.0)
  {
LABEL_126:
    ++*(*(*(v57 + 120) + 8) + 24);
    ++*(*(*(v57 + 128) + 8) + 24);
    v138 = [NSNumber numberWithUnsignedInteger:?];
    v48 = v198;
    [v198 setObject:v138 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

    if (![*(*(*(v57 + 136) + 8) + 40) count])
    {
      objc_storeStrong((*(*(v57 + 136) + 8) + 40), a2);
    }

    goto LABEL_166;
  }

  v152 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
  v153 = [v152 BOOLValue];

  if (v153)
  {
    v154 = &off_1000C8428;
  }

  else
  {
    v154 = &off_1000C8788;
  }

  if (v153)
  {
    v155 = &off_1000C8788;
  }

  else
  {
    v155 = &off_1000C8518;
  }

  [v198 setObject:v154 forKeyedSubscript:@"visibilityCategoryForUI"];
  [v198 setObject:v155 forKeyedSubscript:@"rankingCategory"];
  [v198 setObject:&off_1000C87A0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
  [v198 setObject:&off_1000C87B8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
  v156 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
  {
    v157 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
    v158 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
    [v198 objectForKeyedSubscript:@"bundleStartDate"];
    v159 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412802;
    v206 = v157;
    v207 = 2112;
    v208 = v158;
    v209 = 2112;
    v210 = v159;
    _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_INFO, "Phone-sensed walking bundle got suppressed from Recommended tab since it has the same workout type(s) with the other bundle with higher ranking score. SuggestionID:%@, bundleID:%@, startDate:%@", buf, 0x20u);
  }

  v48 = v198;
  v57 = v196;
LABEL_166:
  [*(v57 + 56) setObject:v48 atIndexedSubscript:a3];
  v164 = *(*(*(v57 + 64) + 8) + 40);
  [v48 objectForKeyedSubscript:@"bundleIdentifier"];
  v166 = v165 = v57;
  [v164 addObject:v166];

  v167 = *(*(*(v165 + 72) + 8) + 40);
  v168 = [v48 objectForKeyedSubscript:@"suggestionIdentifier"];
  [v167 addObject:v168];

  v169 = visitSubtypeVariants;
  v170 = [v48 objectForKeyedSubscript:@"bundleSubType"];
  v171 = [v169 containsObject:v170];
  if (v171)
  {
    v172 = 0;
    v173 = 0;
  }

  else
  {
    v169 = [v48 objectForKeyedSubscript:@"bundleSubType"];
    if ([v169 intValue] == 105)
    {
      v172 = 0;
      v173 = 0;
    }

    else
    {
      v187 = phoneSensedWalkingVariants;
      v188 = [v48 objectForKeyedSubscript:@"bundleSubType"];
      if ([v187 containsObject:v188])
      {
        v197 = v188;
        v173 = 0;
        v172 = 1;
      }

      else
      {
        p_info = [v48 objectForKeyedSubscript:@"bundleSuperType"];
        if ([p_info intValue] != 10)
        {

          goto LABEL_179;
        }

        v197 = v188;
        v172 = 1;
        v173 = 1;
      }
    }
  }

  v174 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
  v175 = [v174 isEqualToSet:emptyStringSet];

  if (!v173)
  {
    if (!v172)
    {
      goto LABEL_175;
    }

    goto LABEL_174;
  }

  if (v172)
  {
LABEL_174:
  }

LABEL_175:
  if ((v171 & 1) == 0)
  {
  }

  if ((v175 & 1) == 0)
  {
    v176 = *(*(*(v196 + 104) + 8) + 40);
    v170 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
    [v176 addObject:v170];
LABEL_179:
  }

  v177 = workoutSubtypeVariants;
  v178 = v198;
  v179 = [v198 objectForKeyedSubscript:@"bundleSubType"];
  if ([v177 containsObject:v179])
  {
    v180 = [v198 objectForKeyedSubscript:@"workoutTypesSet"];
    v181 = [v180 isEqualToSet:emptyStringSet];

    if (v181)
    {
      goto LABEL_184;
    }

    v182 = *(*(*(v196 + 96) + 8) + 40);
    v179 = [v198 objectForKeyedSubscript:@"workoutTypesSet"];
    [v182 addObject:v179];
  }

  v178 = v198;
LABEL_184:
  v183 = [v178 objectForKeyedSubscript:@"bundleSuperType"];
  if ([v183 intValue] != 3)
  {
LABEL_187:

    v178 = v198;
    goto LABEL_188;
  }

  v184 = [v178 objectForKeyedSubscript:@"allContactIdentifiersSet"];
  v185 = [v184 isEqualToSet:emptyStringSet];

  if ((v185 & 1) == 0)
  {
    v186 = *(*(*(v196 + 112) + 8) + 40);
    v183 = [v178 objectForKeyedSubscript:@"allContactIdentifiersSet"];
    [v186 addObject:v183];
    goto LABEL_187;
  }

LABEL_188:
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_709(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"bundleInterfaceType"];
  if ([v6 intValue] == 11)
  {
    v7 = [v5 objectForKeyedSubscript:@"visibilityCategoryForUI"];
    v8 = [v7 intValue];

    if (v8 != 4 && ++*(*(*(a1 + 40) + 8) + 24) > *(a1 + 48))
    {
      [v5 setObject:&off_1000C8428 forKeyedSubscript:@"visibilityCategoryForUI"];
      [v5 setObject:&off_1000C8788 forKeyedSubscript:@"rankingCategory"];
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Evergreen bundle got rejected because allowable evergreen count is reached: %@", &v10, 0xCu);
      }

      [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
    }
  }

  else
  {
  }
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_719(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [v5 objectForKeyedSubscript:@"suggestionIdentifier"];
  if (([v6 containsObject:v7] & 1) != 0 && (objc_msgSend(v5, "objectForKeyedSubscript:", @"rankingScore"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = *(*(*(a1 + 48) + 8) + 40);

    if (v9)
    {
      v10 = [v5 objectForKeyedSubscript:@"rankingScore"];
      [v10 doubleValue];
      v12 = v11;

      [*(*(*(a1 + 48) + 8) + 40) doubleValue];
      v14 = v13 + -0.001;
      if (v12 <= v13 + -0.001)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13 + -0.001;
      }

      v16 = [NSNumber numberWithDouble:v15];
      v17 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      [v17 setObject:v16 forKeyedSubscript:@"rankingScore"];

      v18 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v5 objectForKeyedSubscript:@"suggestionIdentifier"];
        v20 = [NSNumber numberWithDouble:v12];
        v21 = [NSNumber numberWithDouble:v14];
        v22 = 138412802;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Lowering rank of suggestion: %@, from value: %@ to value: %@", &v22, 0x20u);
      }
    }
  }

  else
  {
  }
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_720(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [v11 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
  if (v5)
  {
    v6 = v5;
    v7 = [v11 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v8 = [v7 intValue];

    if (v8 != 100000)
    {
      v9 = [NSNumber numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
      v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      [v10 setObject:v9 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

- (void)_mergeScoresToBundles:(id)bundles usingScore:(id)score
{
  bundlesCopy = bundles;
  scoreCopy = score;
  v8 = [bundlesCopy count];
  if (v8 != [scoreCopy count])
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundleRanking *)bundlesCopy _mergeScoresToBundles:scoreCopy usingScore:v9];
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = bundlesCopy;
  v38 = [obj countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v38)
  {
    v37 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v11 = 0;
    v36 = *v40;
    *&v10 = 138412290;
    v28 = v10;
    selfCopy = self;
    v30 = scoreCopy;
    do
    {
      v12 = 0;
      do
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * v12);
        v14 = [scoreCopy objectAtIndexedSubscript:{v11, v28}];
        v15 = [v14 mutableCopy];

        v16 = [v15 objectForKeyedSubscript:@"bundleInterfaceType"];
        intValue = [v16 intValue];

        if (intValue == 11)
        {
          ++v37;
        }

        else
        {
          v21 = [v15 objectForKeyedSubscript:@"visibilityCategoryForUI"];
          intValue2 = [v21 intValue];

          if (intValue2 > 2)
          {
            if (intValue2 == 3)
            {
              ++v33;
            }

            else if (intValue2 == 4)
            {
              ++v34;
            }
          }

          else if (intValue2 == 1)
          {
            ++v31;
          }

          else if (intValue2 == 2)
          {
            ++v32;
          }
        }

        [v15 removeObjectForKey:@"bundleInterfaceType"];
        [v15 removeObjectForKey:@"bundleSubType"];
        [v15 removeObjectForKey:@"bundleSuperType"];
        [v15 removeObjectForKey:@"elapsedDaysFromBundleEndDate"];
        [v15 removeObjectForKey:@"rankingDictionaryIndex"];
        [v15 removeObjectForKey:@"bundleIdentifier"];
        [v15 removeObjectForKey:@"suggestionIdentifier"];
        [v15 removeObjectForKey:@"allPlaceNamesSet"];
        [v15 removeObjectForKey:@"workoutTypesSet"];
        [v15 removeObjectForKey:@"allContactIdentifiersSet"];
        [v15 removeObjectForKey:@"allStateOfMindIdentifiersSet"];
        [v15 removeObjectForKey:@"numAnomalyEventsNormalized"];
        [v15 removeObjectForKey:@"numPhotoAssetsResourcesNormalized"];
        [v15 removeObjectForKey:@"numMediaAssetsResourcesNormalized"];
        [v15 removeObjectForKey:@"isCoarseGranularitySummaryKey"];
        [v15 removeObjectForKey:@"bundleStartDate"];
        [v15 removeObjectForKey:@"bundleEndDate"];
        [v15 removeObjectForKey:@"stateOfMindLoggedIn3pApp"];
        [v15 removeObjectForKey:@"stateOfMindLoggedInJournalApp"];
        v18 = [(MOEventBundleRanking *)self _checkAndUpdateNumericLimits:v15];
        v19 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          bundleIdentifier = [v13 bundleIdentifier];
          suggestionID = [v13 suggestionID];
          *buf = 134218498;
          v44 = v11;
          v45 = 2112;
          v46 = bundleIdentifier;
          v47 = 2112;
          v48 = suggestionID;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Bundle index %lu, BundleID %@, suggestionID %@", buf, 0x20u);

          self = selfCopy;
          scoreCopy = v30;
        }

        v20 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = v28;
          v44 = v18;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "RankingDict %@", buf, 0xCu);
        }

        [v13 setRankingDictionary:v18];
        v12 = v12 + 1;
        ++v11;
      }

      while (v38 != v12);
      v25 = [obj countByEnumeratingWithState:&v39 objects:v55 count:16];
      v38 = v25;
    }

    while (v25);
  }

  else
  {
    v37 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
  }

  v26 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [obj count];
    *buf = 134219264;
    v44 = v27;
    v45 = 2048;
    v46 = v31;
    v47 = 2048;
    v48 = v32;
    v49 = 2048;
    v50 = v33;
    v51 = 2048;
    v52 = v34;
    v53 = 2048;
    v54 = v37;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Added ranking dictionaries to bundle array: Num totalBundles=%lu, NumSensedBundlesEligibleForBothTabs=%lu,NumSensedBundlesRecommendedOnly=%lu, NumSensedBundlesRecentOnly=%lu, numSensedBundlesRejected=%lu, numEvergreenBundles=%lu  ", buf, 0x3Eu);
  }
}

- (void)_submitEventBundleRankingAnalytics:(id)analytics withRankingInput:(id)input andSubmissionDate:(id)date
{
  analyticsCopy = analytics;
  inputCopy = input;
  dateCopy = date;
  v281 = analyticsCopy;
  v11 = [analyticsCopy count];
  if (v11 != [inputCopy count])
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking _submitEventBundleRankingAnalytics:withRankingInput:andSubmissionDate:];
    }
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v300[0] = [analyticsCopy count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%lu bundle rankings and inputs are set to be submitted to CoreAnalytics.", buf, 0xCu);
  }

  v259 = +[NSCalendar currentCalendar];
  v14 = [v259 components:764 fromDate:dateCopy];
  year = [v14 year];
  month = [v14 month];
  v277 = [v14 day];
  hour = [v14 hour];
  v258 = v14;
  minute = [v14 minute];
  getTrialExperimentIdentifiers = [(MOConfigurationManagerBase *)self->_configurationManager getTrialExperimentIdentifiers];
  v294 = 0u;
  v295 = 0u;
  v296 = 0u;
  v297 = 0u;
  obj = inputCopy;
  v282 = [obj countByEnumeratingWithState:&v294 objects:v298 count:16];
  v284 = getTrialExperimentIdentifiers;
  if (v282)
  {
    v16 = 0;
    v271 = *v295;
    do
    {
      v17 = 0;
      do
      {
        if (*v295 != v271)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v294 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        v20 = [v281 objectAtIndexedSubscript:v16];
        v21 = objc_opt_new();
        v22 = [NSNumber numberWithInteger:year];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"submissionTimeYear" andValue:v22];

        v23 = [NSNumber numberWithInteger:month];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"submissionTimeMonth" andValue:v23];

        v24 = [NSNumber numberWithInteger:v277];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"submissionTimeDay" andValue:v24];

        v25 = [NSNumber numberWithInteger:hour];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"submissionTimeHour" andValue:v25];

        v26 = [NSNumber numberWithInteger:minute];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"submissionTimeMinute" andValue:v26];

        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"scalingFactorForAnalytics" andValue:&off_1000C9E60];
        bundleIdentifier = [v18 bundleIdentifier];
        v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleIdentifier hash]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"bundleId" andValue:v28];

        suggestionIdentifier = [v18 suggestionIdentifier];
        v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [suggestionIdentifier hash]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"suggestionId" andValue:v30];

        getTrialExperimentIdentifiers = v284;
        if (v284)
        {
          experimentId = [v284 experimentId];
          [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"trialExperimentId" andValue:experimentId];

          v32 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v284 deploymentId]);
          stringValue = [v32 stringValue];
          [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"trialDeploymentId" andValue:stringValue];

          getTrialExperimentIdentifiers = v284;
          treatmentId = [v284 treatmentId];
          [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"trialTreatmentId" andValue:treatmentId];
        }

        v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 suggestionIsDeleted]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"isDeleted" andValue:v35];

        v36 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 suggestionIsSelected]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"isSelected" andValue:v36];

        v37 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 suggestionQuickAddEntry]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"quickAddEntry" andValue:v37];

        [v18 viewCountNormalized];
        *&v39 = v38 * 10000.0;
        v40 = [NSNumber numberWithFloat:v39];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"viewCountNormalized" andValue:v40];

        v41 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 journalEntryIsCreated]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"journalEntryIsCreated" andValue:v41];

        v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 journalEntryIsEdited]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"journalEntryIsEdited" andValue:v42];

        v43 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 journalEntryIsCancelled]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"journalEntryIsCancelled" andValue:v43];

        v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 journalEntryIsDeleted]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"journalEntryIsDeleted" andValue:v44];

        [v18 bundleRecencyDaysElapsed];
        v45 = [NSNumber numberWithFloat:?];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"bundleRecencyDaysElapsed" andValue:v45];

        v46 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 bundleInterfaceType]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"bundleInterfaceType" andValue:v46];

        v47 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 bundleSubType]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"bundleSubType" andValue:v47];

        v48 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 bundleSuperType]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"bundleSuperType" andValue:v48];

        [v18 numAnomalyEventsNormalized];
        *&v50 = v49 * 10000.0;
        v51 = [NSNumber numberWithFloat:v50];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numAnomalyEventsNormalized" andValue:v51];

        [v18 numTrendEventsNormalized];
        *&v53 = v52 * 10000.0;
        v54 = [NSNumber numberWithFloat:v53];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numTrendEventsNormalized" andValue:v54];

        [v18 numRoutineEventsNormalized];
        *&v56 = v55 * 10000.0;
        v57 = [NSNumber numberWithFloat:v56];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numRoutineEventsNormalized" andValue:v57];

        [v18 numStateOfMindEventsNormalized];
        *&v59 = v58 * 10000.0;
        v60 = [NSNumber numberWithFloat:v59];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numStateOfMindEventsNormalized" andValue:v60];

        [v18 numUniqueResourceTypesNormalized];
        *&v62 = v61 * 10000.0;
        v63 = [NSNumber numberWithFloat:v62];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numUniqueResourceTypesNormalized" andValue:v63];

        [v18 numValueTypeResourcesNormalized];
        *&v65 = v64 * 10000.0;
        v66 = [NSNumber numberWithFloat:v65];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numValueTypeResourcesNormalized" andValue:v66];

        [v18 numPhotoAssetsResourcesNormalized];
        *&v68 = v67 * 10000.0;
        v69 = [NSNumber numberWithFloat:v68];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numPhotoAssetsResourcesNormalized" andValue:v69];

        [v18 numMediaTypeResourcesNormalized];
        *&v71 = v70 * 10000.0;
        v72 = [NSNumber numberWithFloat:v71];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numMediaTypeResourcesNormalized" andValue:v72];

        [v18 numWebLinkTypeResourcesNormalized];
        *&v74 = v73 * 10000.0;
        v75 = [NSNumber numberWithFloat:v74];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numWebLinkTypeResourcesNormalized" andValue:v75];

        [v18 numInterfaceTagTypeResourcesNormalized];
        *&v77 = v76 * 10000.0;
        v78 = [NSNumber numberWithFloat:v77];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numInterfaceTagTypeResourcesNormalized" andValue:v78];

        [v18 numMapItemTypeResourcesNormalized];
        *&v80 = v79 * 10000.0;
        v81 = [NSNumber numberWithFloat:v80];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numMapItemTypeResourcesNormalized" andValue:v81];

        [v18 numAppTypeResourcesNormalized];
        *&v83 = v82 * 10000.0;
        v84 = [NSNumber numberWithFloat:v83];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numAppTypeResourcesNormalized" andValue:v84];

        [v18 numWorkoutRingAssetsNormalized];
        *&v86 = v85 * 10000.0;
        v87 = [NSNumber numberWithFloat:v86];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numWorkoutRingAssetsNormalized" andValue:v87];

        [v18 numWorkoutIconAssetsNormalized];
        *&v89 = v88 * 10000.0;
        v90 = [NSNumber numberWithFloat:v89];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numWorkoutIconAssetsNormalized" andValue:v90];

        [v18 numWorkoutRouteMapAssetsNormalized];
        *&v92 = v91 * 10000.0;
        v93 = [NSNumber numberWithFloat:v92];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"numWorkoutRouteMapAssetsNormalized" andValue:v93];

        [v18 isBundleActionSpecific];
        *&v95 = v94 * 10000.0;
        v96 = [NSNumber numberWithFloat:v95];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"isBundleActionSpecificGranular" andValue:v96];

        [v18 isBundlePlaceTypeSpecific];
        *&v98 = v97 * 10000.0;
        v99 = [NSNumber numberWithFloat:v98];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"isBundlePlaceTypeSpecificGranular" andValue:v99];

        [v18 isBundleTimeTagSpecific];
        *&v101 = v100 * 10000.0;
        v102 = [NSNumber numberWithFloat:v101];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"isBundleTimeTagSpecificGranular" andValue:v102];

        [v18 labelSpecificityNormalized];
        *&v104 = v103 * 10000.0;
        v105 = [NSNumber numberWithFloat:v104];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"labelSpecificityNormalized" andValue:v105];

        [v18 labelQualityScore];
        *&v107 = v106 * 10000.0;
        v108 = [NSNumber numberWithFloat:v107];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"labelQualityScore" andValue:v108];

        [v18 peopleDensityWeightedAverageNormalized];
        *&v110 = v109 * 10000.0;
        v111 = [NSNumber numberWithFloat:v110];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"pDensityWeightedAverageNormalized" andValue:v111];

        v112 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 isWorkVisit]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"isWorkVisit" andValue:v112];

        v113 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 isShortVisit]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"isShortVisit" andValue:v113];

        v114 = [v20 objectForKeyedSubscript:@"richnessScore"];
        [v114 floatValue];
        *&v116 = v115 * 10000.0;
        v117 = [NSNumber numberWithFloat:v116];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"richnessScore" andValue:v117];

        v118 = [v20 objectForKeyedSubscript:@"distinctnessScore"];
        [v118 floatValue];
        *&v120 = v119 * 10000.0;
        v121 = [NSNumber numberWithFloat:v120];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"distinctnessScore" andValue:v121];

        v122 = [v20 objectForKeyedSubscript:@"heuristicsScore"];
        [v122 floatValue];
        *&v124 = v123 * 10000.0;
        v125 = [NSNumber numberWithFloat:v124];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"heuristicsScore" andValue:v125];

        v126 = [v20 objectForKeyedSubscript:@"qualityScore"];
        [v126 floatValue];
        *&v128 = v127 * 10000.0;
        v129 = [NSNumber numberWithFloat:v128];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"qualityScore" andValue:v129];

        v130 = [v20 objectForKeyedSubscript:@"viewCountBasedScoreAdjustment"];
        [v130 floatValue];
        *&v132 = v131 * 10000.0;
        v133 = [NSNumber numberWithFloat:v132];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"viewCountBasedScoreAdjustment" andValue:v133];

        v134 = [v20 objectForKeyedSubscript:@"baseScore"];
        [v134 floatValue];
        *&v136 = v135 * 10000.0;
        v137 = [NSNumber numberWithFloat:v136];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"baseScore" andValue:v137];

        v138 = [v20 objectForKeyedSubscript:@"engagementScore"];
        [v138 floatValue];
        *&v140 = v139 * 10000.0;
        v141 = [NSNumber numberWithFloat:v140];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"engagementScore" andValue:v141];

        v142 = [v20 objectForKeyedSubscript:@"diversityCoefficient"];
        [v142 floatValue];
        *&v144 = v143 * 10000.0;
        v145 = [NSNumber numberWithFloat:v144];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"diversityCoefficient" andValue:v145];

        v146 = [v20 objectForKeyedSubscript:@"decayFactor"];
        [v146 floatValue];
        *&v148 = v147 * 10000.0;
        v149 = [NSNumber numberWithFloat:v148];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"decayFactor" andValue:v149];

        v150 = [v20 objectForKeyedSubscript:@"rankingScore"];
        [v150 floatValue];
        *&v152 = v151 * 10000.0;
        v153 = [NSNumber numberWithFloat:v152];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"rankingScore" andValue:v153];

        v154 = [v20 objectForKeyedSubscript:@"bundleGoodnessScore"];
        [v154 floatValue];
        *&v156 = v155 * 10000.0;
        v157 = [NSNumber numberWithFloat:v156];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"bundleGoodnessScore" andValue:v157];

        v158 = [v20 objectForKeyedSubscript:@"rankingCategory"];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"rankingCategory" andValue:v158];

        v159 = [v20 objectForKeyedSubscript:@"visibilityCategoryForUI"];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"visibilityCategoryForUI" andValue:v159];

        v160 = [v20 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"ordinalRankInRecommendedTab" andValue:v160];

        if (v21)
        {
          v289 = _NSConcreteStackBlock;
          v290 = 3221225472;
          v291 = __94__MOEventBundleRanking__submitEventBundleRankingAnalytics_withRankingInput_andSubmissionDate___block_invoke;
          v292 = &unk_1000B5550;
          v293 = v21;
          AnalyticsSendEventLazy();
          v161 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
          {
            [MOEventBundleRanking _submitEventBundleRankingAnalytics:v288 withRankingInput:? andSubmissionDate:?];
          }

          v162 = v293;
        }

        else
        {
          v162 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
          {
            [MOEventBundleRanking _submitEventBundleRankingAnalytics:buf withRankingInput:v300 andSubmissionDate:v162];
          }
        }

        objc_autoreleasePoolPop(v19);
        v17 = v17 + 1;
        ++v16;
      }

      while (v282 != v17);
      v282 = [obj countByEnumeratingWithState:&v294 objects:v298 count:16];
    }

    while (v282);
  }

  v163 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
  {
    *v286 = 0;
    _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_INFO, "Completed individual Ranking CoreAnalytics submission.", v286, 2u);
  }

  v164 = objc_opt_new();
  v165 = [NSNumber numberWithInteger:year];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v164 withKey:@"submissionTimeYear" andValue:v165];

  v166 = [NSNumber numberWithInteger:month];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v164 withKey:@"submissionTimeMonth" andValue:v166];

  v167 = [NSNumber numberWithInteger:v277];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v164 withKey:@"submissionTimeDay" andValue:v167];

  v168 = [NSNumber numberWithInteger:hour];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v164 withKey:@"submissionTimeHour" andValue:v168];

  v169 = [NSNumber numberWithInteger:minute];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v164 withKey:@"submissionTimeMinute" andValue:v169];

  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v164 withKey:@"scalingFactorForAnalytics" andValue:&off_1000C9E60];
  if (getTrialExperimentIdentifiers)
  {
    experimentId2 = [getTrialExperimentIdentifiers experimentId];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v164 withKey:@"trialExperimentId" andValue:experimentId2];

    v171 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [getTrialExperimentIdentifiers deploymentId]);
    stringValue2 = [v171 stringValue];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v164 withKey:@"trialDeploymentId" andValue:stringValue2];

    treatmentId2 = [getTrialExperimentIdentifiers treatmentId];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v164 withKey:@"trialTreatmentId" andValue:treatmentId2];
  }

  v174 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v281 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v164 withKey:@"totalBundleCount" andValue:v174];

  v269 = [NSSortDescriptor sortDescriptorWithKey:@"ordinalRankInRecommendedTab" ascending:1];
  v268 = [NSArray arrayWithObject:?];
  v175 = [v281 sortedArrayUsingDescriptors:?];
  v176 = [NSPredicate predicateWithFormat:@"%K IN %@", @"visibilityCategoryForUI", &off_1000C9CE8];
  v177 = [v175 filteredArrayUsingPredicate:v176];

  v178 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v177 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v164 withKey:@"recommendedSuggestionCount" andValue:v178];

  [NSPredicate predicateWithFormat:@"%K == %lu", @"bundleInterfaceType", 11];
  v179 = v270 = v164;

  v267 = [v281 filteredArrayUsingPredicate:v179];
  v180 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v267 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"evergreenBundleCount" andValue:v180];

  v181 = [NSPredicate predicateWithFormat:@"%K == %lu", @"bundleInterfaceType", 10];

  v182 = v270;
  v266 = [v281 filteredArrayUsingPredicate:v181];
  v183 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v266 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"photoMemoryBundleCount" andValue:v183];

  v184 = [NSPredicate predicateWithFormat:@"%K IN %@", @"visibilityCategoryForUI", &off_1000C9D00];

  v185 = [v281 filteredArrayUsingPredicate:v184];
  v186 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v185 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"suggestionCountInRecentTab" andValue:v186];

  v187 = [NSPredicate predicateWithFormat:@"%K <= 1", @"elapsedDaysFromBundleEndDate"];

  v264 = [v185 filteredArrayUsingPredicate:v187];
  v188 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v264 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"suggestionCountInRecenTabFromPast1Day" andValue:v188];

  v189 = [NSPredicate predicateWithFormat:@"%K <= 3", @"elapsedDaysFromBundleEndDate"];

  v263 = [v185 filteredArrayUsingPredicate:v189];
  v190 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v263 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"suggestionCountInRecenTabFromPast3Days" andValue:v190];

  v191 = [NSPredicate predicateWithFormat:@"%K <= 7", @"elapsedDaysFromBundleEndDate"];

  v265 = v185;
  v262 = v191;
  v261 = [v185 filteredArrayUsingPredicate:v191];
  v192 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v261 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"suggestionCountInRecenTabFromPast7Days" andValue:v192];

  v276 = objc_opt_new();
  v274 = objc_opt_new();
  v272 = objc_opt_new();
  v283 = objc_opt_new();
  v193 = objc_opt_new();
  v194 = objc_opt_new();
  v195 = objc_opt_new();
  if ([v177 count] < 3)
  {
    v280 = 0;
  }

  else
  {
    v196 = 0;
    v280 = 0;
    do
    {
      v197 = v193;
      v198 = v194;
      v199 = v195;
      v200 = [v177 objectAtIndexedSubscript:v196];
      v194 = [v200 objectForKeyedSubscript:@"bundleInterfaceType"];

      v201 = [v177 objectAtIndexedSubscript:v196];
      v202 = [v201 objectForKeyedSubscript:@"bundleSubType"];

      v203 = [v177 objectAtIndexedSubscript:v196];
      v193 = [v203 objectForKeyedSubscript:@"bundleSuperType"];

      v204 = [v177 objectAtIndexedSubscript:v196];
      v195 = [v204 objectForKeyedSubscript:@"elapsedDaysFromBundleEndDate"];

      v283 = v202;
      if ([v194 intValue] == 10)
      {
        ++v280;
      }

      else
      {
        [v276 addObject:v202];
        [v274 addObject:v193];
        [v272 addObject:v195];
      }

      ++v196;
    }

    while (v196 != 3);
    v205 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v276 count]);
    v182 = v270;
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"uniqueBundleSubTypeCountForSensedBundlesInTop3" andValue:v205];

    v206 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v274 count]);
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"uniqueBundleSuperTypeCountForSensedBundlesInTop3" andValue:v206];

    v207 = [v272 valueForKeyPath:@"@avg.self"];
    [v207 floatValue];
    *&v209 = v208 * 10000.0;
    v210 = [NSNumber numberWithFloat:v209];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"averageBundleAgeInTop3" andValue:v210];

    v211 = [v272 valueForKeyPath:@"@max.self"];
    [v211 floatValue];
    *&v213 = v212 * 10000.0;
    v214 = [NSNumber numberWithFloat:v213];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"maxBundleAgeInTop3" andValue:v214];

    v215 = [NSNumber numberWithUnsignedInteger:v280];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"numPhotoMemoriesInTop3" andValue:v215];
  }

  if ([v177 count] >= 5)
  {
    for (i = 3; i != 5; ++i)
    {
      v217 = v193;
      v218 = v194;
      v219 = v195;
      v220 = [v177 objectAtIndexedSubscript:i];
      v194 = [v220 objectForKeyedSubscript:@"bundleInterfaceType"];

      v221 = [v177 objectAtIndexedSubscript:i];
      v222 = [v221 objectForKeyedSubscript:@"bundleSubType"];

      v223 = [v177 objectAtIndexedSubscript:i];
      v193 = [v223 objectForKeyedSubscript:@"bundleSuperType"];

      v224 = [v177 objectAtIndexedSubscript:i];
      v195 = [v224 objectForKeyedSubscript:@"elapsedDaysFromBundleEndDate"];

      v283 = v222;
      if ([v194 intValue] == 10)
      {
        ++v280;
      }

      else
      {
        [v276 addObject:v222];
        [v274 addObject:v193];
        [v272 addObject:v195];
      }
    }

    v225 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v276 count]);
    v182 = v270;
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"uniqueBundleSubTypeCountForSensedBundlesInTop5" andValue:v225];

    v226 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v274 count]);
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"uniqueBundleSuperTypeCountForSensedBundlesInTop5" andValue:v226];

    v227 = [v272 valueForKeyPath:@"@avg.self"];
    [v227 floatValue];
    *&v229 = v228 * 10000.0;
    v230 = [NSNumber numberWithFloat:v229];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"averageBundleAgeInTop5" andValue:v230];

    v231 = [v272 valueForKeyPath:@"@max.self"];
    [v231 floatValue];
    *&v233 = v232 * 10000.0;
    v234 = [NSNumber numberWithFloat:v233];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"maxBundleAgeInTop5" andValue:v234];

    v235 = [NSNumber numberWithUnsignedInteger:v280];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"numPhotoMemoriesInTop5" andValue:v235];
  }

  if ([v177 count] >= 0xA)
  {
    for (j = 5; j != 10; ++j)
    {
      v237 = v193;
      v238 = v194;
      v239 = v195;
      v240 = [v177 objectAtIndexedSubscript:j];
      v194 = [v240 objectForKeyedSubscript:@"bundleInterfaceType"];

      v241 = [v177 objectAtIndexedSubscript:j];
      v242 = [v241 objectForKeyedSubscript:@"bundleSubType"];

      v243 = [v177 objectAtIndexedSubscript:j];
      v193 = [v243 objectForKeyedSubscript:@"bundleSuperType"];

      v244 = [v177 objectAtIndexedSubscript:j];
      v195 = [v244 objectForKeyedSubscript:@"elapsedDaysFromBundleEndDate"];

      v283 = v242;
      if ([v194 intValue] == 10)
      {
        ++v280;
      }

      else
      {
        [v276 addObject:v242];
        [v274 addObject:v193];
        [v272 addObject:v195];
      }
    }

    v245 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v276 count]);
    v182 = v270;
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"uniqueBundleSubTypeCountForSensedBundlesInTop10" andValue:v245];

    v246 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v274 count]);
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"uniqueBundleSuperTypeCountForSensedBundlesInTop10" andValue:v246];

    v247 = [v272 valueForKeyPath:@"@avg.self"];
    [v247 floatValue];
    *&v249 = v248 * 10000.0;
    v250 = [NSNumber numberWithFloat:v249];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"averageBundleAgeInTop10" andValue:v250];

    v251 = [v272 valueForKeyPath:@"@max.self"];
    [v251 floatValue];
    *&v253 = v252 * 10000.0;
    v254 = [NSNumber numberWithFloat:v253];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"maxBundleAgeInTop10" andValue:v254];

    v255 = [NSNumber numberWithUnsignedInteger:v280];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v270 withKey:@"numPhotoMemoriesInTop10" andValue:v255];
  }

  if (v182)
  {
    v285 = v182;
    AnalyticsSendEventLazy();
    v256 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v256, OS_LOG_TYPE_DEBUG))
    {
      [MOEventBundleRanking _submitEventBundleRankingAnalytics:withRankingInput:andSubmissionDate:];
    }

    v257 = v285;
  }

  else
  {
    v257 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking _submitEventBundleRankingAnalytics:withRankingInput:andSubmissionDate:];
    }
  }
}

- (void)updateEngagementScoreParamsUsingBFGS
{
  v2 = __chkstk_darwin(self, a2);
  for (i = 0; i != 16; ++i)
  {
    v4 = v2[6];
    v5 = [NSNumber numberWithUnsignedInteger:i + 1];
    v6 = [v4 objectForKeyedSubscript:v5];
    [v6 floatValue];
    *(v74 + i) = v7;
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v2[6];
    v72 = 138412290;
    v73 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Engagement params before optimization %@", &v72, 0xCu);
  }

  __B = -1.0;
  [v2 _setToIdentityMatrix:&v72 forNumRows:16];
  [v2 _computeGradient:v74 initialParams:v74 Update:v71];
  [v2 _setToIdentityMatrix:v70 forNumRows:16];
  v66 = v74[4];
  v67 = v74[5];
  v68 = v74[6];
  v69 = v74[7];
  v62 = v74[0];
  v63 = v74[1];
  v10 = 2;
  v64 = v74[2];
  v65 = v74[3];
  while (1)
  {
    [v2 _calculateNormSquare:v71];
    if (v11 <= 1.0e-10 || v10 > 0x63)
    {
      break;
    }

    vDSP_vsmulD(v70, 1, &__B, &v60, 1, 0x100uLL);
    vDSP_mmulD(&v60, 1, v71, 1, v59, 1, 0x10uLL, 1uLL, 0x10uLL);
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = __60__MOEventBundleRanking_updateEngagementScoreParamsUsingBFGS__block_invoke;
    v40[3] = &unk_1000B7458;
    v40[4] = &v41;
    v40[5] = &v45;
    [v2 _lineSearch:&v62 initialParams:v74 With:v59 And:v71 handler:v40];
    if (*(v42 + 24) == 1)
    {
      v30 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        LOWORD(v54[0]) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Exited BFGS as linesearch hit max iteration count", v54, 2u);
      }

      _Block_object_dispose(&v41, 8);
      _Block_object_dispose(&v45, 8);
      return;
    }

    vDSP_vsmulD(v59, 1, v46 + 3, v58, 1, 0x10uLL);
    vDSP_vaddD(&v62, 1, v58, 1, v57, 1, 0x10uLL);
    [v2 _computeGradient:v57 initialParams:v74 Update:v56];
    vDSP_vsubD(v71, 1, v56, 1, v55, 1, 0x10uLL);
    __C = 0.0;
    vDSP_mmulD(v55, 1, v58, 1, &__C, 1, 1uLL, 1uLL, 0x10uLL);
    v12 = 1.0 / __C;
    v38 = 1.0 / __C;
    if (COERCE__INT64(fabs(1.0 / __C)) >= 0x7FF0000000000000)
    {
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v54[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Exited BFGS as r is not finite", v54, 2u);
      }
    }

    else
    {
      vDSP_mmulD(v58, 1, v55, 1, v54, 1, 0x10uLL, 0x10uLL, 1uLL);
      vDSP_vsmulD(v54, 1, &v38, v54, 1, 0x100uLL);
      vDSP_vsubD(v54, 1, &v72, 1, v53, 1, 0x100uLL);
      vDSP_mmulD(v55, 1, v58, 1, v54, 1, 0x10uLL, 0x10uLL, 1uLL);
      vDSP_vsmulD(v54, 1, &v38, v54, 1, 0x100uLL);
      vDSP_vsubD(v54, 1, &v72, 1, v52, 1, 0x100uLL);
      vDSP_mmulD(v53, 1, v70, 1, __A, 1, 0x10uLL, 0x10uLL, 0x10uLL);
      vDSP_mmulD(__A, 1, v52, 1, v70, 1, 0x10uLL, 0x10uLL, 0x10uLL);
      vDSP_mmulD(v58, 1, v58, 1, v50, 1, 0x10uLL, 0x10uLL, 1uLL);
      vDSP_vsmulD(v50, 1, &v38, v50, 1, 0x100uLL);
      vDSP_vaddD(v70, 1, v50, 1, v70, 1, 0x100uLL);
      v71[4] = v56[4];
      v71[5] = v56[5];
      v71[6] = v56[6];
      v71[7] = v56[7];
      v71[0] = v56[0];
      v71[1] = v56[1];
      v71[2] = v56[2];
      v71[3] = v56[3];
      v65 = v57[3];
      v64 = v57[2];
      v63 = v57[1];
      v62 = v57[0];
      v69 = v57[7];
      v68 = v57[6];
      v67 = v57[5];
      v66 = v57[4];
    }

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);
    ++v10;
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      return;
    }
  }

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleRanking updateEngagementScoreParamsUsingBFGS];
  }

  v15 = objc_opt_new();
  v16 = 0;
  v17 = 0.0;
  do
  {
    v18 = *(&v62 + v16);
    v19 = [NSNumber numberWithDouble:v18];
    [v15 addObject:v19];

    v20 = fabs(v18);
    if (v20 >= v17)
    {
      v17 = v20;
    }

    v16 += 8;
  }

  while (v16 != 128);
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v60 = 138412290;
    v61 = v15;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Engagement params after optimization before normalization %@", &v60, 0xCu);
  }

  if (v17 >= 2.22507386e-308 && v17 <= 1.79769313e308)
  {
    v23 = objc_opt_new();
    v31 = &v62;
    for (j = 1; j != 17; ++j)
    {
      v33 = *v31 / v17;
      *&v33 = v33;
      v34 = [NSNumber numberWithFloat:v33];
      v35 = [NSNumber numberWithUnsignedInteger:j];
      [v23 setObject:v34 forKeyedSubscript:v35];

      ++v31;
    }

    objc_storeStrong(v2 + 6, v23);
    v36 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = v2[6];
      v60 = 138412290;
      v61 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Engagement params after optimization after normalization %@", &v60, 0xCu);
    }
  }

  else
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [(MOEventBundleRanking *)v2 + 6 updateEngagementScoreParamsUsingBFGS:v23];
    }
  }
}

uint64_t __60__MOEventBundleRanking_updateEngagementScoreParamsUsingBFGS__block_invoke(uint64_t result, int a2, double a3)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(result + 40) + 8) + 24) = a3;
  }

  return result;
}

- (void)_computeGradient:(double *)gradient initialParams:(double *)params Update:(double *)update
{
  v9 = 0;
  v10 = *(gradient + 5);
  v11 = *(gradient + 3);
  v34 = *(gradient + 4);
  v35 = v10;
  v12 = *(gradient + 5);
  v13 = *(gradient + 7);
  v36 = *(gradient + 6);
  v37 = v13;
  v14 = *(gradient + 1);
  v31[0] = *gradient;
  v31[1] = v14;
  v15 = *(gradient + 3);
  v17 = *gradient;
  v16 = *(gradient + 1);
  v32 = *(gradient + 2);
  v33 = v15;
  v27 = v34;
  v28 = v12;
  v18 = *(gradient + 7);
  v29 = v36;
  v30 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v32;
  v26 = v11;
  do
  {
    *(v31 + v9) = *(v31 + v9) + 0.000001;
    *(&v23 + v9) = *(&v23 + v9) + -0.000001;
    [(MOEventBundleRanking *)self _generateBPROptUsing:v31 initialParams:params, v23, v24, v25, v26, v27, v28, v29, v30];
    v20 = v19;
    [(MOEventBundleRanking *)self _generateBPROptUsing:&v23 initialParams:params];
    update[v9 / 8] = (v20 - v21) / 0.000002;
    v22 = gradient[v9 / 8];
    *(v31 + v9) = v22;
    *(&v23 + v9) = v22;
    v9 += 8;
  }

  while (v9 != 128);
}

- (double)_computeBPROptForPairs:(double *)pairs withTotalBundleCountsForInterfaceTypesHigherTier:(id)tier WithTotalBundleCountsForInterfaceTypesLowerTier:(id)lowerTier bprOpt:(double)opt pairWiseMult:(float)mult
{
  tierCopy = tier;
  lowerTierCopy = lowerTier;
  if ([tierCopy count] && objc_msgSend(lowerTierCopy, "count"))
  {
    pairsCopy = pairs;
    v52 = lowerTierCopy;
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v50 = tierCopy;
    v15 = tierCopy;
    obj = [v15 countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (obj)
    {
      v53 = *v71;
      do
      {
        for (i = 0; i != obj; i = i + 1)
        {
          if (*v71 != v53)
          {
            objc_enumerationMutation(v15);
          }

          v17 = *(*(&v70 + 1) + 8 * i);
          v18 = [v15 objectForKeyedSubscript:v17];
          intValue = [v18 intValue];

          if (intValue >= 1)
          {
            v20 = 0;
            do
            {
              v21 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", pairsCopy[[v17 intValue] - 1]);
              [v13 addObject:v21];

              ++v20;
              v22 = [v15 objectForKeyedSubscript:v17];
              intValue2 = [v22 intValue];
            }

            while (v20 < intValue2);
          }
        }

        obj = [v15 countByEnumeratingWithState:&v70 objects:v77 count:16];
      }

      while (obj);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v24 = v52;
    obja = [v24 countByEnumeratingWithState:&v66 objects:v76 count:16];
    if (obja)
    {
      v54 = *v67;
      do
      {
        for (j = 0; j != obja; j = j + 1)
        {
          if (*v67 != v54)
          {
            objc_enumerationMutation(v24);
          }

          v26 = *(*(&v66 + 1) + 8 * j);
          v27 = [v24 objectForKeyedSubscript:v26];
          intValue3 = [v27 intValue];

          if (intValue3 >= 1)
          {
            v29 = 0;
            do
            {
              v30 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", pairsCopy[[v26 intValue] - 1]);
              [v14 addObject:v30];

              ++v29;
              v31 = [v24 objectForKeyedSubscript:v26];
              intValue4 = [v31 intValue];
            }

            while (v29 < intValue4);
          }
        }

        obja = [v24 countByEnumeratingWithState:&v66 objects:v76 count:16];
      }

      while (obja);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    objb = v13;
    v33 = [objb countByEnumeratingWithState:&v62 objects:v75 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v63;
      multCopy = mult;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v63 != v35)
          {
            objc_enumerationMutation(objb);
          }

          v38 = *(*(&v62 + 1) + 8 * k);
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v39 = v14;
          v40 = [v39 countByEnumeratingWithState:&v58 objects:v74 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v59;
            do
            {
              for (m = 0; m != v41; m = m + 1)
              {
                if (*v59 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v58 + 1) + 8 * m);
                [v38 doubleValue];
                v46 = v45;
                [v44 doubleValue];
                v48 = exp(-(v46 - v47));
                opt = opt + log(1.0 / (v48 + 1.0)) * multCopy;
              }

              v41 = [v39 countByEnumeratingWithState:&v58 objects:v74 count:16];
            }

            while (v41);
          }
        }

        v34 = [objb countByEnumeratingWithState:&v62 objects:v75 count:16];
      }

      while (v34);
    }

    tierCopy = v50;
    lowerTierCopy = v52;
  }

  return opt;
}

- (double)_generateBPROptUsing:(double *)using initialParams:(double *)params
{
  v7 = 0;
  v8 = 0.0;
  do
  {
    bprRegularizationFactor = self->_bprRegularizationFactor;
    v10 = [NSNumber numberWithUnsignedInteger:v7 + 1];
    v11 = [(NSDictionary *)bprRegularizationFactor objectForKeyedSubscript:v10];
    [v11 floatValue];
    v13 = using[v7] - params[v7];
    v8 = v8 + -(v13 * v12) * v13;

    ++v7;
  }

  while (v7 != 16);
  v14 = [(NSDictionary *)self->_interfaceTypeCountFromSuggestionEngagementDict objectForKeyedSubscript:@"journalWasWritten"];
  v15 = [(NSDictionary *)self->_interfaceTypeCountFromSuggestionEngagementDict objectForKeyedSubscript:@"journalEntryWasCreatedWithNoWriting"];
  v16 = [(NSDictionary *)self->_interfaceTypeCountFromSuggestionEngagementDict objectForKeyedSubscript:@"suggestionWasViewedButNotEngaged"];
  v17 = [(NSDictionary *)self->_interfaceTypeCountFromSuggestionEngagementDict objectForKeyedSubscript:@"suggestionWasDeleted"];
  v18 = [(NSMutableDictionary *)self->_pairWiseWeights objectForKeyedSubscript:@"pairWiseFarthest"];
  [v18 floatValue];
  LODWORD(v20) = v19;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:using withTotalBundleCountsForInterfaceTypesHigherTier:v14 WithTotalBundleCountsForInterfaceTypesLowerTier:v17 bprOpt:v8 pairWiseMult:v20];
  v22 = v21;

  v23 = [(NSMutableDictionary *)self->_pairWiseWeights objectForKeyedSubscript:@"pairWiseFarther"];
  [v23 floatValue];
  LODWORD(v25) = v24;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:using withTotalBundleCountsForInterfaceTypesHigherTier:v14 WithTotalBundleCountsForInterfaceTypesLowerTier:v16 bprOpt:v22 pairWiseMult:v25];
  v27 = v26;

  v28 = [(NSMutableDictionary *)self->_pairWiseWeights objectForKeyedSubscript:@"pairWiseFarther"];
  [v28 floatValue];
  LODWORD(v30) = v29;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:using withTotalBundleCountsForInterfaceTypesHigherTier:v15 WithTotalBundleCountsForInterfaceTypesLowerTier:v17 bprOpt:v27 pairWiseMult:v30];
  v32 = v31;

  v33 = [(NSDictionary *)self->_engagementScoreParameterDict objectForKeyedSubscript:@"pairWiseFar"];
  [v33 floatValue];
  LODWORD(v35) = v34;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:using withTotalBundleCountsForInterfaceTypesHigherTier:v14 WithTotalBundleCountsForInterfaceTypesLowerTier:v15 bprOpt:v32 pairWiseMult:v35];
  v37 = v36;

  v38 = [(NSMutableDictionary *)self->_pairWiseWeights objectForKeyedSubscript:@"pairWiseFar"];
  [v38 floatValue];
  LODWORD(v40) = v39;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:using withTotalBundleCountsForInterfaceTypesHigherTier:v15 WithTotalBundleCountsForInterfaceTypesLowerTier:v16 bprOpt:v37 pairWiseMult:v40];
  v42 = v41;

  v43 = [(NSMutableDictionary *)self->_pairWiseWeights objectForKeyedSubscript:@"pairWiseFar"];
  [v43 floatValue];
  LODWORD(v45) = v44;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:using withTotalBundleCountsForInterfaceTypesHigherTier:v16 WithTotalBundleCountsForInterfaceTypesLowerTier:v17 bprOpt:v42 pairWiseMult:v45];
  v47 = v46;

  return -v47;
}

- (double)_calculateNormSquare:(double *)square
{
  __C = 0.0;
  vDSP_dotprD(square, 1, square, 1, &__C, 0x10uLL);
  return __C;
}

- (void)_setToIdentityMatrix:(double *)matrix forNumRows:(unint64_t)rows
{
  if (rows)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      for (i = 0; i != rows; ++i)
      {
        if (v4 == i)
        {
          v7 = 1.0;
        }

        else
        {
          v7 = 0.0;
        }

        matrix[v5 + i] = v7;
      }

      ++v4;
      v5 += i;
    }

    while (v4 != rows);
  }
}

- (void)_lineSearch:(double *)search initialParams:(double *)params With:(double *)with And:(double *)and handler:(id)handler
{
  handlerCopy = handler;
  __B = 1.0;
  [(MOEventBundleRanking *)self _generateBPROptUsing:search initialParams:params];
  v14 = v13;
  v15 = 1;
  vDSP_vsmulD(with, 1, &__B, __C, 1, 0x10uLL);
  vDSP_vaddD(search, 1, __C, 1, v26, 1, 0x10uLL);
  [(MOEventBundleRanking *)self _computeGradient:v26 initialParams:params Update:__A];
  v16 = 0;
  while (1)
  {
    [(MOEventBundleRanking *)self _generateBPROptUsing:v26 initialParams:params];
    v18 = v17;
    v23 = 0.0;
    vDSP_mmulD(and, 1, with, 1, &v23, 1, 1uLL, 1uLL, 0x10uLL);
    v19 = v14 + v23 * 0.0001 * __B;
    v22 = 0.0;
    vDSP_mmulD(__A, 1, with, 1, &v22, 1, 1uLL, 1uLL, 0x10uLL);
    if (v18 <= v19 && v22 > v23 * 0.9)
    {
      break;
    }

    __B = __B * 0.5;
    vDSP_vsmulD(with, 1, &__B, __C, 1, 0x10uLL);
    vDSP_vaddD(search, 1, __C, 1, v26, 1, 0x10uLL);
    [(MOEventBundleRanking *)self _computeGradient:v26 initialParams:params Update:__A];
    v16 = v15++ > 0x63;
    if (v15 == 101)
    {
      v20 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MOEventBundleRanking _lineSearch:initialParams:With:And:handler:];
      }

      v16 = 1;
      break;
    }
  }

  v21 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleRanking _lineSearch:initialParams:With:And:handler:];
  }

  (handlerCopy)[2](handlerCopy, v16, __B);
}

- (id)_getDefaultFallbackFactorDict
{
  v5[0] = @"decayRate";
  v5[1] = @"decayRateAfterViewed";
  v6[0] = &off_1000C9E70;
  v6[1] = &off_1000C9E80;
  v5[2] = @"weightForNumAnamolyEventsNormalized";
  v5[3] = @"weightForNumTrendEventsNormalized";
  v6[2] = &off_1000C9E90;
  v6[3] = &off_1000C9E90;
  v5[4] = @"weightForNumRoutineEventsNormalized";
  v5[5] = @"weightForNumStateOfMindEventsNormalized";
  v6[4] = &off_1000C9EA0;
  v6[5] = &off_1000C9D80;
  v5[6] = @"weightForLabelQualityScore";
  v5[7] = @"weightForTimeCorrelationScore";
  v6[6] = &off_1000C9D60;
  v6[7] = &off_1000C9D60;
  v5[8] = @"richnessScoreScalingParameter";
  v5[9] = @"bundleScoreScalingParameter";
  v6[8] = &off_1000C9D40;
  v6[9] = &off_1000C9D40;
  v5[10] = @"bundleScoreConstant";
  v6[10] = &off_1000C9D60;
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:11];
  v3 = [v2 mutableCopy];

  return v3;
}

- (void)identifyRepetitiveSignificantContactBundlesFromBundles:(id)bundles precedingSignificantContactBundles:(id)contactBundles
{
  bundlesCopy = bundles;
  contactBundlesCopy = contactBundles;
  if ([bundlesCopy count])
  {
    v132[0] = _NSConcreteStackBlock;
    v132[1] = 3221225472;
    v132[2] = __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke;
    v132[3] = &unk_1000B7480;
    v8 = objc_opt_new();
    v133 = v8;
    [bundlesCopy enumerateObjectsUsingBlock:v132];
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    v101 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v11 = [bundlesCopy count];
      v12 = [v101 count];
      v13 = [contactBundlesCopy count];
      *buf = 138413058;
      v138 = v10;
      v139 = 2048;
      v140 = v11;
      v141 = 2048;
      v142 = v12;
      v143 = 2048;
      v144 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@, event bundle count, %lu, contact bundle count, %lu, preceding contact bundle count, %lu", buf, 0x2Au);

      v8 = v101;
    }

    v102 = bundlesCopy;

    if ([contactBundlesCopy count])
    {
      [v8 addObjectsFromArray:contactBundlesCopy];
    }

    v100 = contactBundlesCopy;
    allObjects = [v8 allObjects];
    v15 = [NSMutableArray arrayWithArray:allObjects];

    v99 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v150 = v99;
    v16 = [NSArray arrayWithObjects:&v150 count:1];
    [v15 sortUsingDescriptors:v16];

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    v104 = a2;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromSelector(a2);
      v19 = [v15 count];
      firstObject = [v102 firstObject];
      startDate = [firstObject startDate];
      lastObject = [v102 lastObject];
      startDate2 = [lastObject startDate];
      *buf = 138413058;
      v138 = v18;
      v139 = 2048;
      v140 = v19;
      v141 = 2112;
      v142 = startDate;
      v143 = 2112;
      v144 = startDate2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@, merged contact bundle count, %lu, first bundle start date, %@, last bundle start date, %@", buf, 0x2Au);

      a2 = v104;
    }

    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_756;
    v131[3] = &__block_descriptor_40_e30_v32__0__MOEventBundle_8Q16_B24l;
    v131[4] = a2;
    [v15 enumerateObjectsUsingBlock:v131];
    firstObject2 = [v15 firstObject];
    startDate3 = [firstObject2 startDate];
    v26 = [NSDate firstSaturdayBeforeReferenceDate:startDate3];

    v27 = objc_opt_new();
    lastObject2 = [v15 lastObject];
    endDate = [lastObject2 endDate];
    v30 = v26;
    LODWORD(v26) = [v26 isBeforeDate:endDate];

    if (v26)
    {
      do
      {
        v31 = v30;
        v32 = objc_autoreleasePoolPush();
        v33 = [v30 dateByAddingTimeInterval:604800.0];
        v34 = v33;
        if (v30)
        {
          if (v33)
          {
            v35 = v30;
            v36 = v34;
            v37 = [v35 isBeforeDate:v34];
            v34 = v36;
            if (v37)
            {
              v38 = [[NSDateInterval alloc] initWithStartDate:v31 endDate:v36];
              [v27 addObject:v38];

              v34 = v36;
            }
          }
        }

        v30 = v34;

        objc_autoreleasePoolPop(v32);
        lastObject3 = [v15 lastObject];
        endDate2 = [lastObject3 endDate];
        v41 = [v30 isBeforeDate:endDate2];
      }

      while ((v41 & 1) != 0);
    }

    v98 = v30;
    v111 = objc_opt_new();
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    obj = v27;
    v106 = [obj countByEnumeratingWithState:&v127 objects:v149 count:16];
    if (v106)
    {
      v42 = 0;
      v105 = *v128;
      do
      {
        v43 = 0;
        do
        {
          if (*v128 != v105)
          {
            objc_enumerationMutation(obj);
          }

          v112 = *(*(&v127 + 1) + 8 * v43);
          context = objc_autoreleasePoolPush();
          v44 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            v86 = NSStringFromSelector(a2);
            startDate4 = [v112 startDate];
            endDate3 = [v112 endDate];
            *buf = 138412802;
            v138 = v86;
            v139 = 2112;
            v140 = startDate4;
            v141 = 2112;
            v142 = endDate3;
            _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "%@, interval startDate, %@, interval endDate, %@", buf, 0x20u);
          }

          v110 = v43;

          v45 = objc_opt_new();
          while (v42 < [v15 count])
          {
            v46 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v107 = NSStringFromSelector(a2);
              v108 = [v15 objectAtIndexedSubscript:v42];
              bundleIdentifier = [v108 bundleIdentifier];
              v76 = [v15 objectAtIndexedSubscript:v42];
              startDate5 = [v76 startDate];
              v78 = [v15 objectAtIndexedSubscript:v42];
              summarizationGranularity = [v78 summarizationGranularity];
              v80 = [v45 count];
              *buf = 138413570;
              v138 = v107;
              v139 = 2048;
              v140 = v42;
              v141 = 2112;
              v142 = bundleIdentifier;
              v143 = 2112;
              v144 = startDate5;
              v145 = 2048;
              v146 = summarizationGranularity;
              v147 = 2048;
              v148 = v80;
              _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%@, bundle idx, %lu, identifier, %@, startDate, %@, summarizationGranularity, %lu, contactIdentifierList count, %lu", buf, 0x3Eu);

              a2 = v104;
            }

            v126[0] = _NSConcreteStackBlock;
            v126[1] = 3221225472;
            v126[2] = __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_758;
            v126[3] = &__block_descriptor_48_e22_v24__0__NSString_8_B16l;
            v126[4] = a2;
            v126[5] = v42;
            [v45 enumerateObjectsUsingBlock:v126];
            v47 = [v15 objectAtIndexedSubscript:v42];
            summarizationGranularity2 = [v47 summarizationGranularity];

            if (summarizationGranularity2 == 1)
            {
              v49 = [v15 objectAtIndexedSubscript:v42];
              startDate6 = [v49 startDate];
              endDate4 = [v112 endDate];
              v52 = [startDate6 isAfterDate:endDate4];

              if (v52)
              {
                break;
              }

              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v53 = [v15 objectAtIndexedSubscript:v42];
              persons = [v53 persons];

              v55 = [persons countByEnumeratingWithState:&v122 objects:v136 count:16];
              if (v55)
              {
                v56 = v55;
                v57 = *v123;
                while (2)
                {
                  for (i = 0; i != v56; i = i + 1)
                  {
                    if (*v123 != v57)
                    {
                      objc_enumerationMutation(persons);
                    }

                    contactIdentifier = [*(*(&v122 + 1) + 8 * i) contactIdentifier];
                    v60 = [v45 containsObject:contactIdentifier];

                    if (v60)
                    {
                      v62 = [v15 objectAtIndexedSubscript:v42];
                      bundleIdentifier2 = [v62 bundleIdentifier];
                      uUIDString = [bundleIdentifier2 UUIDString];
                      [v111 addObject:uUIDString];

                      v61 = 1;
                      goto LABEL_38;
                    }
                  }

                  v56 = [persons countByEnumeratingWithState:&v122 objects:v136 count:16];
                  if (v56)
                  {
                    continue;
                  }

                  break;
                }

                v61 = 0;
              }

              else
              {
                v61 = 0;
              }

LABEL_38:

              v65 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
              {
                v81 = NSStringFromSelector(a2);
                v82 = [v15 objectAtIndexedSubscript:v42];
                bundleIdentifier3 = [v82 bundleIdentifier];
                v84 = bundleIdentifier3;
                *buf = 138413058;
                v85 = @"NO";
                if (v61)
                {
                  v85 = @"YES";
                }

                v138 = v81;
                v139 = 2048;
                v140 = v42;
                v141 = 2112;
                v142 = bundleIdentifier3;
                v143 = 2112;
                v144 = v85;
                _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "%@, bundle idx, %lu, identifier, %@, repetitiveBundle, %@", buf, 0x2Au);
              }

              if ((v61 & 1) == 0)
              {
                v120 = 0u;
                v121 = 0u;
                v118 = 0u;
                v119 = 0u;
                v66 = [v15 objectAtIndexedSubscript:v42];
                persons2 = [v66 persons];

                v68 = [persons2 countByEnumeratingWithState:&v118 objects:v135 count:16];
                if (v68)
                {
                  v69 = v68;
                  v70 = *v119;
                  do
                  {
                    for (j = 0; j != v69; j = j + 1)
                    {
                      if (*v119 != v70)
                      {
                        objc_enumerationMutation(persons2);
                      }

                      v72 = *(*(&v118 + 1) + 8 * j);
                      contactIdentifier2 = [v72 contactIdentifier];

                      if (contactIdentifier2)
                      {
                        contactIdentifier3 = [v72 contactIdentifier];
                        [v45 addObject:contactIdentifier3];
                      }
                    }

                    v69 = [persons2 countByEnumeratingWithState:&v118 objects:v135 count:16];
                  }

                  while (v69);
                }
              }
            }

            ++v42;
          }

          objc_autoreleasePoolPop(context);
          v43 = v110 + 1;
        }

        while ((v110 + 1) != v106);
        v106 = [obj countByEnumeratingWithState:&v127 objects:v149 count:16];
      }

      while (v106);
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = v102;
    v89 = [v113 countByEnumeratingWithState:&v114 objects:v134 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v115;
      do
      {
        for (k = 0; k != v90; k = k + 1)
        {
          if (*v115 != v91)
          {
            objc_enumerationMutation(v113);
          }

          v93 = *(*(&v114 + 1) + 8 * k);
          bundleIdentifier4 = [v93 bundleIdentifier];
          uUIDString2 = [bundleIdentifier4 UUIDString];
          v96 = [v111 containsObject:uUIDString2];

          if (v96)
          {
            v97 = &__kCFBooleanTrue;
          }

          else
          {
            v97 = &__kCFBooleanFalse;
          }

          [v93 addMetaDataForRankForKey:@"isRepetitiveContact" value:v97];
        }

        v90 = [v113 countByEnumeratingWithState:&v114 objects:v134 count:16];
      }

      while (v90);
    }

    bundlesCopy = v102;
    contactBundlesCopy = v100;
  }
}

void __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 interfaceType] == 4)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_756(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(*(a1 + 32));
    v8 = 138412802;
    v9 = v7;
    v10 = 2048;
    v11 = a3;
    v12 = 2112;
    v13 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@, idx, %lu, bundle, %@", &v8, 0x20u);
  }
}

void __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_758(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_758_cold_1(a1);
  }
}

- (id)_getDefaultRichnessWeightDict
{
  v2 = objc_opt_new();
  for (i = 0; i != 18; ++i)
  {
    v4 = objc_opt_new();
    v5 = v4;
    if (i <= 0x10)
    {
      v6 = off_1000B75B8[i];
      v7 = off_1000B7640[i];
      [v4 setObject:off_1000B7530[i] forKey:@"RankingRichnessPrimaryPriorityScoreKey"];
      [v5 setObject:v6 forKey:@"RankingRichnessSecondaryPriorityScoreKey"];
      [v5 setObject:v7 forKey:@"RankingRichnessAuxiliaryPriorityScoreKey"];
    }

    v8 = [MOResource getStringTypeForResources:i];
    [v2 setObject:v5 forKey:v8];
  }

  v15[0] = @"RankingRichnessPrimaryPriorityScoreKey";
  v15[1] = @"RankingRichnessSecondaryPriorityScoreKey";
  v16[0] = &off_1000C9EB0;
  v16[1] = &off_1000C9EB0;
  v15[2] = @"RankingRichnessAuxiliaryPriorityScoreKey";
  v16[2] = &off_1000C9EB0;
  v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  [v2 setObject:v9 forKey:@"NumUniqueResourceTypesNormalizedKey"];
  v13[0] = @"RankingRichnessPrimaryPriorityScoreKey";
  v13[1] = @"RankingRichnessSecondaryPriorityScoreKey";
  v14[0] = &off_1000C9EB0;
  v14[1] = &off_1000C9EB0;
  v13[2] = @"RankingRichnessAuxiliaryPriorityScoreKey";
  v14[2] = &off_1000C9EB0;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v2 setObject:v10 forKey:@"NumWorkoutRouteMapAssets"];
  v11 = [v2 copy];

  return v11;
}

- (id)_checkAndUpdateNumericLimits:(id)limits
{
  limitsCopy = limits;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [limitsCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 138412290;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [limitsCopy objectForKeyedSubscript:{v11, v17}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        [v12 doubleValue];
        if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          [v12 doubleValue];
LABEL_12:
          v15 = [limitsCopy objectForKeyedSubscript:v11];
          [v4 setObject:v15 forKeyedSubscript:v11];

          goto LABEL_13;
        }

        v14 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = v17;
          v23 = v11;
          _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Value is either infinite or NaN for key %@", buf, 0xCu);
        }

        [v4 setObject:&off_1000C9F00 forKeyedSubscript:v11];
LABEL_13:
      }

      v8 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)dictionary
{
  v3 = objc_opt_new();
  rankingAlgorithmVersion = [(MOEventBundleRanking *)self rankingAlgorithmVersion];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"kMORankingAlgorithmVersion" andValue:rankingAlgorithmVersion];

  v5 = objc_opt_new();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__4;
  v36[4] = __Block_byref_object_dispose__4;
  v37 = 0;
  staticModelParameterMatrix = [(MOEventBundleRanking *)self staticModelParameterMatrix];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = __34__MOEventBundleRanking_dictionary__block_invoke;
  v33[3] = &unk_1000B74E8;
  v35 = v36;
  v7 = v5;
  v34 = v7;
  [staticModelParameterMatrix enumerateKeysAndObjectsUsingBlock:v33];

  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"staticModelParameterMatrix" andValue:v7];
  v8 = objc_opt_new();
  dynamicModelParameterDict = [(MOEventBundleRanking *)self dynamicModelParameterDict];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __34__MOEventBundleRanking_dictionary__block_invoke_2;
  v30[3] = &unk_1000B74E8;
  v32 = v36;
  v10 = v8;
  v31 = v10;
  [dynamicModelParameterDict enumerateKeysAndObjectsUsingBlock:v30];

  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"dynamicModelParameterDict" andValue:v10];
  heuristicsParameterDict = [(MOEventBundleRanking *)self heuristicsParameterDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"heuristicsParameterDict" andValue:heuristicsParameterDict];

  engagementScoreParameterDict = [(MOEventBundleRanking *)self engagementScoreParameterDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"engagementScoreParameterDict" andValue:engagementScoreParameterDict];

  [(MOEventBundleRanking *)self engagementScoreWeight];
  v13 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"engagementScoreWeight" andValue:v13];

  rankingScoreThresholdDict = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"rankingScoreThresholdDict" andValue:rankingScoreThresholdDict];

  [(MOEventBundleRanking *)self frequencyPenalty];
  v15 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"frequencyPenaltyCoefficient" andValue:v15];

  curationParameterDict = [(MOEventBundleRanking *)self curationParameterDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"curationParameterDict" andValue:curationParameterDict];

  evergreenEngagementScoreParameterDict = [(MOEventBundleRanking *)self evergreenEngagementScoreParameterDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"evergreenEngagementScoreParameterDict" andValue:evergreenEngagementScoreParameterDict];

  viewCountBasedAdjustmentParameterDict = [(MOEventBundleRanking *)self viewCountBasedAdjustmentParameterDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"viewCountBasedAdjustmentParameterDict" andValue:viewCountBasedAdjustmentParameterDict];

  v19 = objc_opt_new();
  bprRegularizationFactor = [(MOEventBundleRanking *)self bprRegularizationFactor];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __34__MOEventBundleRanking_dictionary__block_invoke_3;
  v27[3] = &unk_1000B7510;
  v29 = v36;
  v27[4] = self;
  v21 = v3;
  v28 = v21;
  [bprRegularizationFactor enumerateKeysAndObjectsUsingBlock:v27];

  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"bprRegularizationFactor" andValue:v19];
  pairWiseWeights = [(MOEventBundleRanking *)self pairWiseWeights];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"pairWiseWeights" andValue:pairWiseWeights];

  richnessWeightsDict = [(MOEventBundleRanking *)self richnessWeightsDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"richnessWeightsDict" andValue:richnessWeightsDict];

  v24 = v28;
  v25 = v21;

  _Block_object_dispose(v36, 8);

  return v25;
}

void __34__MOEventBundleRanking_dictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = +[MOEventBundle getInterfaceTypeString:superType:](MOEventBundle, "getInterfaceTypeString:superType:", [a2 intValue], 0);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) setObject:v8 forKey:*(*(*(a1 + 40) + 8) + 40)];
}

void __34__MOEventBundleRanking_dictionary__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = +[MOEventBundle getInterfaceTypeString:superType:](MOEventBundle, "getInterfaceTypeString:superType:", [a2 intValue], 0);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) setObject:v8 forKey:*(*(*(a1 + 40) + 8) + 40)];
}

void __34__MOEventBundleRanking_dictionary__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = +[MOEventBundle getInterfaceTypeString:superType:](MOEventBundle, "getInterfaceTypeString:superType:", [a2 intValue], 0);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) safeSavePropertyToDictionary:*(a1 + 40) withKey:*(*(*(a1 + 48) + 8) + 40) andValue:v8];
}

- (void)safeSavePropertyToDictionary:(id)dictionary withKey:(id)key andValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v9 = valueCopy;
  if (keyCopy && valueCopy)
  {
    [dictionary setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [MOEventBundleRanking safeSavePropertyToDictionary:withKey:andValue:];
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  frequencyPenalty = self->_frequencyPenalty;
  coderCopy = coder;
  *&v5 = frequencyPenalty;
  v6 = [NSNumber numberWithFloat:v5];
  [coderCopy encodeObject:v6 forKey:@"frequencyPenaltyCoefficient"];

  v7 = [NSNumber numberWithDouble:self->_recommendedTabVisitFIThreshold];
  [coderCopy encodeObject:v7 forKey:@"recommendedTabVisitFIThreshold"];

  [coderCopy encodeObject:self->_richnessWeightsDict forKey:@"richnessWeightsDict"];
  [coderCopy encodeObject:self->_staticModelParameterMatrix forKey:@"staticModelParameterMatrix"];
  [coderCopy encodeObject:self->_dynamicModelParameterDict forKey:@"dynamicModelParameterDict"];
  [coderCopy encodeObject:self->_heuristicsParameterDict forKey:@"heuristicsParameterDict"];
  [coderCopy encodeObject:self->_engagementScoreParameterDict forKey:@"engagementScoreParameterDict"];
  [coderCopy encodeObject:self->_rankingScoreThresholdDict forKey:@"rankingScoreThresholdDict"];
  [coderCopy encodeObject:self->_viewCountBasedAdjustmentParameterDict forKey:@"viewCountBasedAdjustmentParameterDict"];
  [coderCopy encodeObject:self->_interfaceTypeCountFromSuggestionEngagementDict forKey:@"interfaceTypeCountFromSuggestionEngagement"];
  [coderCopy encodeObject:self->_bprRegularizationFactor forKey:@"bprRegularizationFactor"];
  [coderCopy encodeObject:self->_pairWiseWeights forKey:@"pairWiseWeights"];
  [coderCopy encodeObject:self->_evergreenEngagementScoreParameterDict forKey:@"evergreenEngagementScoreParameterDict"];
  [coderCopy encodeObject:self->_curationParameterDict forKey:@"curationParameterDict"];
}

- (MOEventBundleRanking)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(MOConfigurationManagerBase);
  v6 = [(MOEventBundleRanking *)self initWithConfigurationManager:v5];

  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frequencyPenaltyCoefficient"];
    [v7 floatValue];
    v6->_frequencyPenalty = v8;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recommendedTabVisitFIThreshold"];
    [v9 doubleValue];
    v6->_recommendedTabVisitFIThreshold = v10;

    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"richnessWeightsDict"];
    richnessWeightsDict = v6->_richnessWeightsDict;
    v6->_richnessWeightsDict = v14;

    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [NSSet setWithObjects:v16, v17, objc_opt_class(), 0];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"staticModelParameterMatrix"];
    staticModelParameterMatrix = v6->_staticModelParameterMatrix;
    v6->_staticModelParameterMatrix = v19;

    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [NSSet setWithObjects:v21, v22, objc_opt_class(), 0];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"dynamicModelParameterDict"];
    dynamicModelParameterDict = v6->_dynamicModelParameterDict;
    v6->_dynamicModelParameterDict = v24;

    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [NSSet setWithObjects:v26, v27, objc_opt_class(), 0];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"heuristicsParameterDict"];
    heuristicsParameterDict = v6->_heuristicsParameterDict;
    v6->_heuristicsParameterDict = v29;

    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [NSSet setWithObjects:v31, v32, objc_opt_class(), 0];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"engagementScoreParameterDict"];
    engagementScoreParameterDict = v6->_engagementScoreParameterDict;
    v6->_engagementScoreParameterDict = v34;

    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [NSSet setWithObjects:v36, v37, objc_opt_class(), 0];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"rankingScoreThresholdDict"];
    rankingScoreThresholdDict = v6->_rankingScoreThresholdDict;
    v6->_rankingScoreThresholdDict = v39;

    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = [NSSet setWithObjects:v41, v42, objc_opt_class(), 0];
    v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"viewCountBasedAdjustmentParameterDict"];
    viewCountBasedAdjustmentParameterDict = v6->_viewCountBasedAdjustmentParameterDict;
    v6->_viewCountBasedAdjustmentParameterDict = v44;

    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v48 = [NSSet setWithObjects:v46, v47, objc_opt_class(), 0];
    v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"interfaceTypeCountFromSuggestionEngagement"];
    interfaceTypeCountFromSuggestionEngagementDict = v6->_interfaceTypeCountFromSuggestionEngagementDict;
    v6->_interfaceTypeCountFromSuggestionEngagementDict = v49;

    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = [NSSet setWithObjects:v51, v52, objc_opt_class(), 0];
    v54 = [coderCopy decodeObjectOfClasses:v53 forKey:@"bprRegularizationFactor"];
    bprRegularizationFactor = v6->_bprRegularizationFactor;
    v6->_bprRegularizationFactor = v54;

    v56 = objc_opt_class();
    v57 = objc_opt_class();
    v58 = [NSSet setWithObjects:v56, v57, objc_opt_class(), 0];
    v59 = [coderCopy decodeObjectOfClasses:v58 forKey:@"pairWiseWeights"];
    pairWiseWeights = v6->_pairWiseWeights;
    v6->_pairWiseWeights = v59;

    v61 = objc_opt_class();
    v62 = objc_opt_class();
    v63 = [NSSet setWithObjects:v61, v62, objc_opt_class(), 0];
    v64 = [coderCopy decodeObjectOfClasses:v63 forKey:@"evergreenEngagementScoreParameterDict"];
    evergreenEngagementScoreParameterDict = v6->_evergreenEngagementScoreParameterDict;
    v6->_evergreenEngagementScoreParameterDict = v64;

    v66 = objc_opt_class();
    v67 = objc_opt_class();
    v68 = [NSSet setWithObjects:v66, v67, objc_opt_class(), 0];
    v69 = [coderCopy decodeObjectOfClasses:v68 forKey:@"curationParameterDict"];
    curationParameterDict = v6->_curationParameterDict;
    v6->_curationParameterDict = v69;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOEventBundleRanking alloc];
  configurationManager = [(MOEventBundleRanking *)self configurationManager];
  v6 = [(MOEventBundleRanking *)v4 initWithConfigurationManager:configurationManager];

  if (v6)
  {
    [(MOEventBundleRanking *)self frequencyPenalty];
    [(MOEventBundleRanking *)v6 setFrequencyPenalty:?];
    [(MOEventBundleRanking *)self recommendedTabVisitFIThreshold];
    [(MOEventBundleRanking *)v6 setRecommendedTabVisitFIThreshold:?];
    richnessWeightsDict = [(MOEventBundleRanking *)self richnessWeightsDict];
    v8 = [richnessWeightsDict copy];
    [(MOEventBundleRanking *)v6 setRichnessWeightsDict:v8];

    staticModelParameterMatrix = [(MOEventBundleRanking *)self staticModelParameterMatrix];
    v10 = [staticModelParameterMatrix copy];
    [(MOEventBundleRanking *)v6 setStaticModelParameterMatrix:v10];

    dynamicModelParameterDict = [(MOEventBundleRanking *)self dynamicModelParameterDict];
    v12 = [dynamicModelParameterDict copy];
    [(MOEventBundleRanking *)v6 setDynamicModelParameterDict:v12];

    heuristicsParameterDict = [(MOEventBundleRanking *)self heuristicsParameterDict];
    v14 = [heuristicsParameterDict copy];
    [(MOEventBundleRanking *)v6 setHeuristicsParameterDict:v14];

    engagementScoreParameterDict = [(MOEventBundleRanking *)self engagementScoreParameterDict];
    v16 = [engagementScoreParameterDict copy];
    [(MOEventBundleRanking *)v6 setEngagementScoreParameterDict:v16];

    rankingScoreThresholdDict = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v18 = [rankingScoreThresholdDict copy];
    [(MOEventBundleRanking *)v6 setRankingScoreThresholdDict:v18];

    viewCountBasedAdjustmentParameterDict = [(MOEventBundleRanking *)self viewCountBasedAdjustmentParameterDict];
    v20 = [viewCountBasedAdjustmentParameterDict copy];
    [(MOEventBundleRanking *)v6 setViewCountBasedAdjustmentParameterDict:v20];

    interfaceTypeCountFromSuggestionEngagementDict = [(MOEventBundleRanking *)self interfaceTypeCountFromSuggestionEngagementDict];
    v22 = [interfaceTypeCountFromSuggestionEngagementDict copy];
    [(MOEventBundleRanking *)v6 setInterfaceTypeCountFromSuggestionEngagementDict:v22];

    bprRegularizationFactor = [(MOEventBundleRanking *)self bprRegularizationFactor];
    v24 = [bprRegularizationFactor copy];
    [(MOEventBundleRanking *)v6 setBprRegularizationFactor:v24];

    pairWiseWeights = [(MOEventBundleRanking *)self pairWiseWeights];
    v26 = [pairWiseWeights copy];
    [(MOEventBundleRanking *)v6 setPairWiseWeights:v26];

    evergreenEngagementScoreParameterDict = [(MOEventBundleRanking *)self evergreenEngagementScoreParameterDict];
    v28 = [evergreenEngagementScoreParameterDict copy];
    [(MOEventBundleRanking *)v6 setEvergreenEngagementScoreParameterDict:v28];

    curationParameterDict = [(MOEventBundleRanking *)self curationParameterDict];
    v30 = [curationParameterDict copy];
    [(MOEventBundleRanking *)v6 setCurationParameterDict:v30];
  }

  return v6;
}

- (void)updateTripMetaDataForRank:(id)rank
{
  rankCopy = rank;
  places = [rankCopy places];
  v5 = [places count];

  if (v5)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    places2 = [rankCopy places];
    v7 = [places2 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (!v7)
    {
LABEL_24:

      goto LABEL_25;
    }

    v9 = v7;
    v10 = *v39;
    v11 = 0.0;
    *&v8 = 136315394;
    v35 = v8;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(places2);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        endDate = [v15 endDate];
        if (endDate)
        {
          v17 = endDate;
          startDate = [v15 startDate];

          if (startDate)
          {
            endDate2 = [v15 endDate];
            startDate2 = [v15 startDate];
            [endDate2 timeIntervalSinceDate:startDate2];
            v22 = v21;

            [v15 distanceToHomeInMiles];
            *&v23 = v23;
            if (*&v23 >= 0.0)
            {
              [v15 distanceToHomeInMiles];
              *&v25 = v25;
              [v15 distanceToHomeInMiles];
              *&v26 = v26;
              v13 = v13 + *&v26 * v22;
            }

            else
            {
              v24 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = v35;
                v43 = "[MOEventBundleRanking updateTripMetaDataForRank:]";
                v44 = 1024;
                v45 = 3572;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Trip bundle distanceToHomeInMiles is negative (in %s:%d)", buf, 0x12u);
              }
            }

            [v15 familiarityIndexLOI];
            *&v27 = v27;
            if (*&v27 == -1.0)
            {
              v29 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
              {
                [(MOEventBundleRanking *)&v36 updateTripMetaDataForRank:v37];
              }
            }

            else
            {
              [v15 familiarityIndexLOI];
              *&v28 = v28;
              v12 = v12 + *&v28 * v22;
            }

            v11 = v22 + v11;
          }
        }
      }

      v9 = [places2 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v9);

    if (v11 > 0.0)
    {
      *&v30 = v13 / v11;
      v31 = [NSNumber numberWithFloat:v30];
      [rankCopy addMetaDataForRankForKey:@"DistanceToHome" value:v31];

      *&v32 = v11;
      v33 = [NSNumber numberWithFloat:v32];
      [rankCopy addMetaDataForRankForKey:@"VisitDuration" value:v33];

      *&v34 = v12 / v11;
      places2 = [NSNumber numberWithFloat:v34];
      [rankCopy addMetaDataForRankForKey:@"FamiliarityIndex" value:places2];
      goto LABEL_24;
    }
  }

LABEL_25:
}

- (void)setHolidayTuningParameters
{
  loadHolidayTuningParameterJSONFromFilePath = [(MOEventBundleRanking *)self loadHolidayTuningParameterJSONFromFilePath];
  [(MOEventBundleRanking *)self setHolidayTuningParameters:loadHolidayTuningParameterJSONFromFilePath];
}

- (id)loadHolidayTuningParameterJSONFromFilePath
{
  v11 = 0;
  v2 = [NSData dataWithContentsOfFile:@"/System/Library/Moments/HolidayTuningParameters.json" options:0 error:&v11];
  v3 = v11;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (v4)
  {
    v7 = v3;
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking loadHolidayTuningParameterJSONFromFilePath];
    }

    goto LABEL_13;
  }

  v10 = 0;
  v6 = [NSJSONSerialization JSONObjectWithData:v2 options:0 error:&v10];
  v7 = v10;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  v5 = v8;
  if (!v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking loadHolidayTuningParameterJSONFromFilePath];
    }

LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = @"/System/Library/Moments/HolidayTuningParameters.json";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "The holiday tuning parameter json file was successfully read from path, %@", buf, 0xCu);
  }

LABEL_14:

  return v6;
}

- (void)_fillHeuristicsInfoForRanking:(void *)a1 forBundle:.cold.1(void *a1)
{
  v1 = [a1 metaDataForRank];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_fillHeuristicsInfoForRanking:(void *)a1 forBundle:.cold.2(void *a1)
{
  [a1 numFamilyNormalized];
  [a1 numKidsNormalized];
  [a1 numFriendsNormalized];
  [a1 numCoworkersNormalized];
  [a1 numPetsNormalized];
  [a1 numOtherPersonsNormalized];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x3Eu);
}

- (void)_fillRichnessInfoForRanking:(void *)a1 forBundle:.cold.1(void *a1)
{
  v1 = [a1 evergreenType];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithUniverse:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (double)initWithConfigurationManager:(uint64_t)a3 .cold.1(float *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  OUTLINED_FUNCTION_1_3(&_mh_execute_header, a2, a3, "EngagementScoreWeight is set to %f", a5, a6, a7, a8, 0);
  return result;
}

- (void)initWithConfigurationManager:(uint64_t)a1 .cold.2(uint64_t a1, float *a2)
{
  v7 = *a2;
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (double)initWithConfigurationManager:(uint64_t)a3 .cold.3(float *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  OUTLINED_FUNCTION_1_3(&_mh_execute_header, a2, a3, "User onboarding date is not available. Setting elapsedDaysSinceOnboardingDate to %.3f for default behavior", a5, a6, a7, a8, 0);
  return result;
}

- (void)initWithConfigurationManager:.cold.4()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_calculateRankingScore:(uint64_t)a1 withMinRecommendedBundleCountRequirement:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_1_6(a1 a2)];
  OUTLINED_FUNCTION_9(v2, 5.7779e-34);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11(v3, v4, v5, v6);
}

- (void)_calculateRankingScore:withMinRecommendedBundleCountRequirement:.cold.4()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_calculateRankingScore:withMinRecommendedBundleCountRequirement:.cold.7()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_calculateRankingScore:(uint64_t)a1 withMinRecommendedBundleCountRequirement:(uint64_t)a2 .cold.8(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_1_6(a1 a2)];
  OUTLINED_FUNCTION_9(v2, 3.852e-34);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11(v3, v4, v5, v6);
}

- (void)_calculateRankingScore:(uint64_t)a1 withMinRecommendedBundleCountRequirement:(uint64_t)a2 .cold.9(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_1_6(a1 a2)];
  OUTLINED_FUNCTION_9(v2, 3.852e-34);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11(v3, v4, v5, v6);
}

- (void)_calculateRankingScore:(uint64_t)a1 withMinRecommendedBundleCountRequirement:(uint64_t)a2 .cold.10(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_1_6(a1 a2)];
  OUTLINED_FUNCTION_9(v2, 3.852e-34);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11(v3, v4, v5, v6);
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_693_cold_1(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_697_cold_1(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_mergeScoresToBundles:(NSObject *)a3 usingScore:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v5 = 134218754;
  v6 = [a1 count];
  v7 = 2048;
  v8 = [a2 count];
  v9 = 2080;
  v10 = "[MOEventBundleRanking _mergeScoresToBundles:usingScore:]";
  v11 = 1024;
  v12 = 2569;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Mismatch between bundle count %lu and score array count %lu (in %s:%d)", &v5, 0x26u);
}

- (void)_submitEventBundleRankingAnalytics:(uint8_t *)buf withRankingInput:(void *)a2 andSubmissionDate:(os_log_t)log .cold.3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = @"com.apple.Moments.MOEventBundleRanking";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "CA payload (%@) is nil. Skip submission", buf, 0xCu);
}

void __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_758_cold_1(uint64_t a1)
{
  v2 = NSStringFromSelector(*(a1 + 32));
  v3 = *(a1 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)loadHolidayTuningParameterJSONFromFilePath
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end