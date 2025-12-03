@interface MOEventBundle
+ (id)getInterfaceTypeString:(unint64_t)string superType:(unint64_t)type;
+ (unint64_t)castEvergreenSubType:(unint64_t)type;
+ (unint64_t)convertNSNumberToContactType:(id)type;
+ (unint64_t)convertNSNumberToRoadType:(id)type;
+ (unint64_t)convertNSNumberToSensitiveLocationType:(id)type;
+ (unint64_t)convertNSNumberToUninterestingLocationType:(id)type;
+ (unint64_t)getSuperTypeEnum:(id)enum;
- (BOOL)containTheSameEventSet:(id)set;
- (BOOL)hasAppEntryEngagementEvent:(id)event;
- (BOOL)hasSuggestionEngagementEvent:(id)event;
- (BOOL)intersectedActivityOrVisitForObject:(id)object other:(id)other;
- (BOOL)intersectedSubBundleIDForObject:(id)object other:(id)other;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualBaseActionForObject:(id)object other:(id)other;
- (BOOL)isEqualBasicPropertiesForObject:(id)object other:(id)other;
- (BOOL)isEqualPersonsForObject:(id)object other:(id)other;
- (BOOL)isEqualPropertyForObject:(id)object other:(id)other propertyPath:(id)path threshold:(double)threshold;
- (BOOL)isEqualResourcesForObject:(id)object other:(id)other resourceType:(unint64_t)type;
- (BOOL)isEqualToEventBundle:(id)bundle;
- (BOOL)shareEvents:(id)events;
- (MOEventBundle)initWithBundleIdentifier:(id)identifier bundleType:(id)type creationDate:(id)date endDate:(id)endDate expirationDate:(id)expirationDate events:(id)events filtered:(BOOL)filtered interfaceType:(unint64_t)self0 photoSource:(unint64_t)self1 promptLanguage:(id)self2 source:(unint64_t)self3 startDate:(id)self4 action:(id)self5 concurrentMediaAction:(id)self6 actions:(id)self7 persons:(id)self8 place:(id)self9 predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)granularity places:(id)places subBundleIDs:(id)identifier0 subSuggestionIDs:(id)identifier1 includedInSummaryBundleOnly:(BOOL)identifier2 bundleSubType:(unint64_t)identifier3 bundleSuperType:(unint64_t)identifier4 photoTraits:(id)identifier5 isSensitive:(BOOL)identifier6;
- (MOEventBundle)initWithBundleIdentifier:(id)identifier bundleType:(id)type creationDate:(id)date endDate:(id)endDate expirationDate:(id)expirationDate events:(id)events filtered:(BOOL)filtered interfaceType:(unint64_t)self0 photoSource:(unint64_t)self1 promptLanguage:(id)self2 source:(unint64_t)self3 startDate:(id)self4 action:(id)self5 concurrentMediaAction:(id)self6 actions:(id)self7 persons:(id)self8 place:(id)self9 predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)granularity places:(id)places subBundleIDs:(id)identifier0 subSuggestionIDs:(id)identifier1 photoTraits:(id)identifier2 isSensitive:(BOOL)identifier3;
- (MOEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d bundleType:(id)type creationDate:(id)date firstCreationDate:(id)creationDate endDate:(id)endDate expirationDate:(id)expirationDate events:(id)self0 filtered:(BOOL)self1 interfaceType:(unint64_t)self2 photoSource:(unint64_t)self3 promptLanguage:(id)self4 source:(unint64_t)self5 startDate:(id)self6 action:(id)self7 concurrentMediaAction:(id)self8 actions:(id)self9 persons:(id)persons place:(id)place predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)identifier0 places:(id)identifier1 subBundleIDs:(id)identifier2 subSuggestionIDs:(id)identifier3 includedInSummaryBundleOnly:(BOOL)identifier4 bundleSubType:(unint64_t)identifier5 bundleSuperType:(unint64_t)identifier6 photoTraits:(id)identifier7 isSensitive:(BOOL)identifier8;
- (MOEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate;
- (MOEventBundle)initWithBundleIdentifier:(id)identifier usingBundle:(id)bundle;
- (MOEventBundle)initWithCoder:(id)coder;
- (MOEventBundle)initWithEventSet:(id)set filtered:(BOOL)filtered;
- (NSSet)getCategories;
- (double)duration;
- (id)_allResourcesImpl;
- (id)dateInterval;
- (id)description;
- (id)displayEndDate;
- (id)displayStartDate;
- (id)getBundleType;
- (id)getCustomLabelsForMetaData:(id)data labelFormatter:(id)formatter;
- (id)getCustomLabelsForMetaData:(id)data templateFilePath:(id)path;
- (id)getCustomPromptsForMetaData:(id)data labelFormatter:(id)formatter;
- (id)getCustomPromptsForMetaData:(id)data templateFilePath:(id)path;
- (id)getSubTypeString;
- (id)getSuperTypeString;
- (id)localEndDate;
- (id)localStartDate;
- (id)shortDescription;
- (unint64_t)getInterfaceTypeEnum:(id)enum;
- (unint64_t)hash;
- (void)addAction:(id)action;
- (void)addBackgroundAction:(id)action;
- (void)addEvent:(id)event;
- (void)addEvents:(id)events;
- (void)addMetaDataForRankForKey:(id)key value:(id)value;
- (void)addPerson:(id)person;
- (void)addPhotoTraits:(id)traits;
- (void)addResource:(id)resource;
- (void)addResources:(id)resources;
- (void)buildResources;
- (void)clearAppEntryEngagementEvent:(id)event;
- (void)clearSuggestionEngagementEvent:(id)event;
- (void)dateInterval;
- (void)encodeWithCoder:(id)coder;
- (void)setAppEntryEngagementEvent:(id)event;
- (void)setPropertiesBasedOnEvents;
- (void)setSuggestionEngagementEvent:(id)event;
- (void)withResourcesUsingBlock:(id)block;
@end

@implementation MOEventBundle

- (MOEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate
{
  identifierCopy = identifier;
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  creationDateCopy = creationDate;
  v23 = creationDateCopy;
  if (!identifierCopy)
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    goto LABEL_19;
  }

  if (!dCopy)
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    goto LABEL_19;
  }

  if (!dateCopy)
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    goto LABEL_19;
  }

  if (!endDateCopy)
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    goto LABEL_19;
  }

  if (!creationDateCopy)
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

LABEL_19:

    selfCopy = 0;
    goto LABEL_20;
  }

  v24.receiver = self;
  v24.super_class = MOEventBundle;
  v18 = [(MOEventBundle *)&v24 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_bundleIdentifier, identifier);
    objc_storeStrong(p_isa + 3, d);
    objc_storeStrong(p_isa + 4, date);
    objc_storeStrong(p_isa + 5, endDate);
    objc_storeStrong(p_isa + 6, creationDate);
  }

  self = p_isa;
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

- (MOEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d bundleType:(id)type creationDate:(id)date firstCreationDate:(id)creationDate endDate:(id)endDate expirationDate:(id)expirationDate events:(id)self0 filtered:(BOOL)self1 interfaceType:(unint64_t)self2 photoSource:(unint64_t)self3 promptLanguage:(id)self4 source:(unint64_t)self5 startDate:(id)self6 action:(id)self7 concurrentMediaAction:(id)self8 actions:(id)self9 persons:(id)persons place:(id)place predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)identifier0 places:(id)identifier1 subBundleIDs:(id)identifier2 subSuggestionIDs:(id)identifier3 includedInSummaryBundleOnly:(BOOL)identifier4 bundleSubType:(unint64_t)identifier5 bundleSuperType:(unint64_t)identifier6 photoTraits:(id)identifier7 isSensitive:(BOOL)identifier8
{
  typeCopy = type;
  obj = creationDate;
  creationDateCopy = creationDate;
  expirationDateCopy = expirationDate;
  eventsCopy = events;
  languageCopy = language;
  actionCopy = action;
  mediaActionCopy = mediaAction;
  actionsCopy = actions;
  personsCopy = persons;
  placeCopy = place;
  weatherCopy = weather;
  resourcesCopy = resources;
  timeCopy = time;
  rankCopy = rank;
  engagementsCopy = engagements;
  entryEngagementsCopy = entryEngagements;
  placesCopy = places;
  dsCopy = ds;
  iDsCopy = iDs;
  traitsCopy = traits;
  v48 = [(MOEventBundle *)self initWithBundleIdentifier:identifier suggestionID:d startDate:startDate endDate:endDate creationDate:date];
  v49 = v48;
  if (v48)
  {
    objc_storeStrong(&v48->_firstCreationDate, obj);
    objc_storeStrong(&v49->_bundleType, type);
    objc_storeStrong(&v49->_expirationDate, expirationDate);
    v50 = [eventsCopy copy];
    events = v49->_events;
    v49->_events = v50;

    v49->_filtered = filtered;
    v49->_interfaceType = interfaceType;
    v49->_photoSource = source;
    objc_storeStrong(&v49->_promptLanguage, language);
    v49->_source = a15;
    objc_storeStrong(&v49->_action, action);
    objc_storeStrong(&v49->_concurrentMediaAction, mediaAction);
    v52 = [actionsCopy copy];
    actions = v49->_actions;
    v49->_actions = v52;

    v54 = [personsCopy copy];
    persons = v49->_persons;
    v49->_persons = v54;

    objc_storeStrong(&v49->_place, place);
    objc_storeStrong(&v49->_predominantWeather, weather);
    v56 = [resourcesCopy copy];
    resources = v49->_resources;
    v49->_resources = v56;

    objc_storeStrong(&v49->_time, time);
    v58 = [rankCopy copy];
    metaDataForRank = v49->_metaDataForRank;
    v49->_metaDataForRank = v58;

    v60 = [engagementsCopy mutableCopy];
    suggestionEngagementEvents = v49->_suggestionEngagementEvents;
    v49->_suggestionEngagementEvents = v60;

    v49->_suggestionEngagementViewCount = count;
    v62 = [entryEngagementsCopy mutableCopy];
    appEntryEngagementEvents = v49->_appEntryEngagementEvents;
    v49->_appEntryEngagementEvents = v62;

    v49->_isAggregatedAndSuppressed = suppressed;
    v49->_summarizationGranularity = granularity;
    v64 = [placesCopy copy];
    places = v49->_places;
    v49->_places = v64;

    v66 = [dsCopy copy];
    subBundleIDs = v49->_subBundleIDs;
    v49->_subBundleIDs = v66;

    v68 = [iDsCopy copy];
    subSuggestionIDs = v49->_subSuggestionIDs;
    v49->_subSuggestionIDs = v68;

    v49->_includedInSummaryBundleOnly = only;
    v49->_bundleSubType = subType;
    v49->_bundleSuperType = superType;
    v70 = [traitsCopy copy];
    photoTraits = v49->_photoTraits;
    v49->_photoTraits = v70;

    v49->_isSensitive = sensitive;
  }

  return v49;
}

- (MOEventBundle)initWithBundleIdentifier:(id)identifier usingBundle:(id)bundle
{
  bundleCopy = bundle;
  identifierCopy = identifier;
  suggestionID = [bundleCopy suggestionID];
  bundleType = [bundleCopy bundleType];
  creationDate = [bundleCopy creationDate];
  firstCreationDate = [bundleCopy firstCreationDate];
  endDate = [bundleCopy endDate];
  expirationDate = [bundleCopy expirationDate];
  events = [bundleCopy events];
  filtered = [bundleCopy filtered];
  interfaceType = [bundleCopy interfaceType];
  photoSource = [bundleCopy photoSource];
  promptLanguage = [bundleCopy promptLanguage];
  source = [bundleCopy source];
  startDate = [bundleCopy startDate];
  action = [bundleCopy action];
  concurrentMediaAction = [bundleCopy concurrentMediaAction];
  actions = [bundleCopy actions];
  persons = [bundleCopy persons];
  place = [bundleCopy place];
  predominantWeather = [bundleCopy predominantWeather];
  resources = [bundleCopy resources];
  time = [bundleCopy time];
  metaDataForRank = [bundleCopy metaDataForRank];
  suggestionEngagementEvents = [bundleCopy suggestionEngagementEvents];
  suggestionEngagementViewCount = [bundleCopy suggestionEngagementViewCount];
  appEntryEngagementEvents = [bundleCopy appEntryEngagementEvents];
  isAggregatedAndSuppressed = [bundleCopy isAggregatedAndSuppressed];
  summarizationGranularity = [bundleCopy summarizationGranularity];
  places = [bundleCopy places];
  subBundleIDs = [bundleCopy subBundleIDs];
  subSuggestionIDs = [bundleCopy subSuggestionIDs];
  LOBYTE(identifier) = [bundleCopy includedInSummaryBundleOnly];
  bundleSubType = [bundleCopy bundleSubType];
  bundleSuperType = [bundleCopy bundleSuperType];
  photoTraits = [bundleCopy photoTraits];
  isSensitive = [bundleCopy isSensitive];

  LOBYTE(v15) = isSensitive;
  LOBYTE(v14) = identifier;
  LOBYTE(v13) = isAggregatedAndSuppressed;
  LOBYTE(v12) = filtered;
  v35 = [(MOEventBundle *)self initWithBundleIdentifier:identifierCopy suggestionID:suggestionID bundleType:bundleType creationDate:creationDate firstCreationDate:firstCreationDate endDate:endDate expirationDate:expirationDate events:events filtered:v12 interfaceType:interfaceType photoSource:photoSource promptLanguage:promptLanguage source:source startDate:startDate action:action concurrentMediaAction:concurrentMediaAction actions:actions persons:persons place:place predominantWeather:predominantWeather resources:resources time:time metaDataForRank:metaDataForRank suggestionEngagements:suggestionEngagementEvents suggestionEngagementViewCount:suggestionEngagementViewCount appEntryEngagements:appEntryEngagementEvents isAggregatedAndSuppressed:v13 summarizationGranularity:summarizationGranularity places:places subBundleIDs:subBundleIDs subSuggestionIDs:subSuggestionIDs includedInSummaryBundleOnly:v14 bundleSubType:bundleSubType bundleSuperType:bundleSuperType photoTraits:photoTraits isSensitive:v15];

  return v35;
}

- (MOEventBundle)initWithBundleIdentifier:(id)identifier bundleType:(id)type creationDate:(id)date endDate:(id)endDate expirationDate:(id)expirationDate events:(id)events filtered:(BOOL)filtered interfaceType:(unint64_t)self0 photoSource:(unint64_t)self1 promptLanguage:(id)self2 source:(unint64_t)self3 startDate:(id)self4 action:(id)self5 concurrentMediaAction:(id)self6 actions:(id)self7 persons:(id)self8 place:(id)self9 predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)granularity places:(id)places subBundleIDs:(id)identifier0 subSuggestionIDs:(id)identifier1 includedInSummaryBundleOnly:(BOOL)identifier2 bundleSubType:(unint64_t)identifier3 bundleSuperType:(unint64_t)identifier4 photoTraits:(id)identifier5 isSensitive:(BOOL)identifier6
{
  traitsCopy = traits;
  iDsCopy = iDs;
  dsCopy = ds;
  placesCopy = places;
  entryEngagementsCopy = entryEngagements;
  rankCopy = rank;
  timeCopy = time;
  resourcesCopy = resources;
  weatherCopy = weather;
  placeCopy = place;
  personsCopy = persons;
  actionsCopy = actions;
  mediaActionCopy = mediaAction;
  actionCopy = action;
  startDateCopy = startDate;
  languageCopy = language;
  eventsCopy = events;
  expirationDateCopy = expirationDate;
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  identifierCopy = identifier;
  v53 = [NSMutableSet setWithSet:engagements];
  v50 = [NSMutableSet setWithSet:entryEngagementsCopy];

  LOBYTE(v43) = sensitive;
  LOBYTE(v42) = only;
  LOBYTE(v41) = suppressed;
  LOBYTE(v40) = filtered;
  v56 = [(MOEventBundle *)self initWithBundleIdentifier:identifierCopy suggestionID:identifierCopy bundleType:typeCopy creationDate:dateCopy firstCreationDate:0 endDate:endDateCopy expirationDate:expirationDateCopy events:eventsCopy filtered:v40 interfaceType:interfaceType photoSource:source promptLanguage:languageCopy source:a13 startDate:startDateCopy action:actionCopy concurrentMediaAction:mediaActionCopy actions:actionsCopy persons:personsCopy place:placeCopy predominantWeather:weatherCopy resources:resourcesCopy time:timeCopy metaDataForRank:rankCopy suggestionEngagements:v53 suggestionEngagementViewCount:count appEntryEngagements:v50 isAggregatedAndSuppressed:v41 summarizationGranularity:granularity places:placesCopy subBundleIDs:dsCopy subSuggestionIDs:iDsCopy includedInSummaryBundleOnly:v42 bundleSubType:subType bundleSuperType:superType photoTraits:traitsCopy isSensitive:v43];

  return v56;
}

- (MOEventBundle)initWithBundleIdentifier:(id)identifier bundleType:(id)type creationDate:(id)date endDate:(id)endDate expirationDate:(id)expirationDate events:(id)events filtered:(BOOL)filtered interfaceType:(unint64_t)self0 photoSource:(unint64_t)self1 promptLanguage:(id)self2 source:(unint64_t)self3 startDate:(id)self4 action:(id)self5 concurrentMediaAction:(id)self6 actions:(id)self7 persons:(id)self8 place:(id)self9 predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)granularity places:(id)places subBundleIDs:(id)identifier0 subSuggestionIDs:(id)identifier1 photoTraits:(id)identifier2 isSensitive:(BOOL)identifier3
{
  traitsCopy = traits;
  iDsCopy = iDs;
  dsCopy = ds;
  placesCopy = places;
  entryEngagementsCopy = entryEngagements;
  rankCopy = rank;
  timeCopy = time;
  resourcesCopy = resources;
  weatherCopy = weather;
  placeCopy = place;
  personsCopy = persons;
  actionsCopy = actions;
  mediaActionCopy = mediaAction;
  actionCopy = action;
  startDateCopy = startDate;
  languageCopy = language;
  eventsCopy = events;
  expirationDateCopy = expirationDate;
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  identifierCopy = identifier;
  v51 = [NSMutableSet setWithSet:engagements];
  v47 = [NSMutableSet setWithSet:entryEngagementsCopy];

  LOBYTE(v40) = 0;
  LOBYTE(v39) = 0;
  LOBYTE(v38) = suppressed;
  LOBYTE(v37) = filtered;
  v53 = [(MOEventBundle *)self initWithBundleIdentifier:identifierCopy suggestionID:identifierCopy bundleType:typeCopy creationDate:dateCopy firstCreationDate:0 endDate:endDateCopy expirationDate:expirationDateCopy events:eventsCopy filtered:v37 interfaceType:interfaceType photoSource:source promptLanguage:languageCopy source:a13 startDate:startDateCopy action:actionCopy concurrentMediaAction:mediaActionCopy actions:actionsCopy persons:personsCopy place:placeCopy predominantWeather:weatherCopy resources:resourcesCopy time:timeCopy metaDataForRank:rankCopy suggestionEngagements:v51 suggestionEngagementViewCount:count appEntryEngagements:v47 isAggregatedAndSuppressed:v38 summarizationGranularity:granularity places:placesCopy subBundleIDs:dsCopy subSuggestionIDs:iDsCopy includedInSummaryBundleOnly:v39 bundleSubType:0 bundleSuperType:0 photoTraits:traitsCopy isSensitive:v40];

  return v53;
}

- (id)getBundleType
{
  interfaceType = [(MOEventBundle *)self interfaceType];
  bundleSuperType = [(MOEventBundle *)self bundleSuperType];

  return [MOEventBundle getInterfaceTypeString:interfaceType superType:bundleSuperType];
}

+ (id)getInterfaceTypeString:(unint64_t)string superType:(unint64_t)type
{
  switch(string)
  {
    case 1uLL:
      v5 = @"activity";

      break;
    case 2uLL:
      v5 = @"outing";

      break;
    case 3uLL:
      v5 = @"photo_moment";

      break;
    case 4uLL:
      v5 = @"significant_contact";

      break;
    case 5uLL:
      v5 = @"media";

      break;
    case 6uLL:
      v5 = @"shared_content";

      break;
    case 7uLL:
      v5 = @"time_at_home";

      break;
    case 8uLL:
      v5 = @"topics_of_interest";

      break;
    case 9uLL:
      if (type)
      {
        v7 = @"workoutTrend";
        if (type == 3)
        {
          v7 = @"conversationTrend";
        }

        v5 = v7;
      }

      else
      {
        v5 = @"trend";
      }

      break;
    case 0xAuLL:
      v5 = @"photo_memory";

      break;
    case 0xBuLL:
      v5 = @"evergreen";

      break;
    case 0xCuLL:
      v5 = @"timeContext";

      break;
    case 0xDuLL:
      v5 = @"trip";

      break;
    case 0xEuLL:
      v5 = @"state_of_mind";

      break;
    case 0xFuLL:
      v5 = @"clustering";

      break;
    case 0x10uLL:
      v5 = @"thematic_summary";

      break;
    default:
      v5 = @"unknown";

      break;
  }

  return v5;
}

- (id)getSuperTypeString
{
  bundleSuperType = [(MOEventBundle *)self bundleSuperType];
  if (bundleSuperType - 1 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_1000B6788[bundleSuperType - 1];
  }
}

- (id)getSubTypeString
{
  bundleSubType = [(MOEventBundle *)self bundleSubType];
  result = @"unknown";
  if (bundleSubType <= 600)
  {
    if (bundleSubType <= 301)
    {
      if (bundleSubType <= 201)
      {
        v4 = @"pre_onboarded_visit";
        v21 = @"workout";
        if (bundleSubType != 201)
        {
          v21 = @"unknown";
        }

        if (bundleSubType != 106)
        {
          v4 = v21;
        }

        v22 = @"shopping";
        v23 = @"trip";
        if (bundleSubType != 105)
        {
          v23 = @"unknown";
        }

        if (bundleSubType != 104)
        {
          v22 = v23;
        }

        if (bundleSubType <= 105)
        {
          v4 = v22;
        }

        v7 = @"visit";
        v24 = @"flight";
        v25 = @"dining";
        if (bundleSubType != 103)
        {
          v25 = @"unknown";
        }

        if (bundleSubType != 102)
        {
          v24 = v25;
        }

        if (bundleSubType != 101)
        {
          v7 = v24;
        }

        v10 = bundleSubType <= 103;
      }

      else if (bundleSubType > 205)
      {
        v4 = @"motion_activity_mixed_running_walking";
        v38 = @"contact";
        if (bundleSubType != 301)
        {
          v38 = @"unknown";
        }

        if (bundleSubType != 208)
        {
          v4 = v38;
        }

        v7 = @"motion_activity_transit";
        v39 = @"motion_activity_running";
        if (bundleSubType != 207)
        {
          v39 = @"unknown";
        }

        if (bundleSubType != 206)
        {
          v7 = v39;
        }

        v10 = bundleSubType <= 207;
      }

      else
      {
        v4 = @"motion_activity_walking";
        v13 = @"workout_transit";
        if (bundleSubType != 205)
        {
          v13 = @"unknown";
        }

        if (bundleSubType != 204)
        {
          v4 = v13;
        }

        v7 = @"workout_weekly_summary";
        v14 = @"workout_routine";
        if (bundleSubType != 203)
        {
          v14 = @"unknown";
        }

        if (bundleSubType != 202)
        {
          v7 = v14;
        }

        v10 = bundleSubType <= 203;
      }
    }

    else if (bundleSubType > 406)
    {
      if (bundleSubType > 500)
      {
        v4 = @"hosting_at_home";
        v42 = @"evergreen_at_home";
        if (bundleSubType != 504)
        {
          v42 = @"unknown";
        }

        if (bundleSubType != 503)
        {
          v4 = v42;
        }

        v7 = @"time_at_home";
        v43 = @"photos_at_home";
        if (bundleSubType != 502)
        {
          v43 = @"unknown";
        }

        if (bundleSubType != 501)
        {
          v7 = v43;
        }

        v10 = bundleSubType <= 502;
      }

      else
      {
        v4 = @"media_on_repeat_weekly_summary_third_party";
        v19 = @"played_media_weekly_summary_third_party";
        if (bundleSubType != 410)
        {
          v19 = @"unknown";
        }

        if (bundleSubType != 409)
        {
          v4 = v19;
        }

        v7 = @"media_on_repeat_third_party";
        v20 = @"played_media_third_party";
        if (bundleSubType != 408)
        {
          v20 = @"unknown";
        }

        if (bundleSubType != 407)
        {
          v7 = v20;
        }

        v10 = bundleSubType <= 408;
      }
    }

    else if (bundleSubType > 402)
    {
      v4 = @"played_media_weekly_summary";
      v40 = @"media_suppressed";
      if (bundleSubType != 406)
      {
        v40 = @"unknown";
      }

      if (bundleSubType != 405)
      {
        v4 = v40;
      }

      v7 = @"played_podcast";
      v41 = @"media_on_repeat_weekly_summary";
      if (bundleSubType != 404)
      {
        v41 = @"unknown";
      }

      if (bundleSubType != 403)
      {
        v7 = v41;
      }

      v10 = bundleSubType <= 404;
    }

    else
    {
      v4 = @"song_on_repeat";
      v11 = @"played_song";
      if (bundleSubType != 402)
      {
        v11 = @"unknown";
      }

      if (bundleSubType != 401)
      {
        v4 = v11;
      }

      v7 = @"contact_weekly_summary";
      v12 = @"contact_trend";
      if (bundleSubType != 303)
      {
        v12 = @"unknown";
      }

      if (bundleSubType != 302)
      {
        v7 = v12;
      }

      v10 = bundleSubType <= 400;
    }

    goto LABEL_151;
  }

  if (bundleSubType > 706)
  {
    if (bundleSubType > 907)
    {
      if (bundleSubType > 1003)
      {
        v4 = @"personalized_reflection_outing";
        v34 = @"personalized_reflection_contact";
        v35 = @"personalized_reflection_activity";
        if (bundleSubType != 1103)
        {
          v35 = @"unknown";
        }

        if (bundleSubType != 1102)
        {
          v34 = v35;
        }

        if (bundleSubType != 1101)
        {
          v4 = v34;
        }

        v7 = @"thematic_summary_common_place";
        v36 = @"thematic_summary_photo_subject";
        v37 = @"thematic_summary_state_of_mind";
        if (bundleSubType != 1006)
        {
          v37 = @"unknown";
        }

        if (bundleSubType != 1005)
        {
          v36 = v37;
        }

        if (bundleSubType != 1004)
        {
          v7 = v36;
        }

        v10 = bundleSubType <= 1100;
      }

      else
      {
        v4 = @"thematic_summary_holiday";
        v15 = @"thematic_summary_social";
        v16 = @"thematic_summary_common_activity";
        if (bundleSubType != 1003)
        {
          v16 = @"unknown";
        }

        if (bundleSubType != 1002)
        {
          v15 = v16;
        }

        if (bundleSubType != 1001)
        {
          v4 = v15;
        }

        v7 = @"clustering_thematic_grouping";
        v17 = @"clustering_time_at_home_grouping";
        v18 = @"clustering_unspecified_grouping";
        if (bundleSubType != 910)
        {
          v18 = @"unknown";
        }

        if (bundleSubType != 909)
        {
          v17 = v18;
        }

        if (bundleSubType != 908)
        {
          v7 = v17;
        }

        v10 = bundleSubType <= 1000;
      }
    }

    else if (bundleSubType > 901)
    {
      v4 = @"clustering_location_grouping";
      v30 = @"clustering_activity_grouping";
      v31 = @"clustering_contact_grouping";
      if (bundleSubType != 907)
      {
        v31 = @"unknown";
      }

      if (bundleSubType != 906)
      {
        v30 = v31;
      }

      if (bundleSubType != 905)
      {
        v4 = v30;
      }

      v7 = @"clustering_activity_routine";
      v32 = @"clustering_contact_routine";
      v33 = @"clustering_time_at_home_routine";
      if (bundleSubType != 904)
      {
        v33 = @"unknown";
      }

      if (bundleSubType != 903)
      {
        v32 = v33;
      }

      if (bundleSubType != 902)
      {
        v7 = v32;
      }

      v10 = bundleSubType <= 904;
    }

    else
    {
      v4 = @"daily_mood";
      v5 = @"momentary_emotion";
      v6 = @"clustering_outing_routine";
      if (bundleSubType != 901)
      {
        v6 = @"unknown";
      }

      if (bundleSubType != 802)
      {
        v5 = v6;
      }

      if (bundleSubType != 801)
      {
        v4 = v5;
      }

      v7 = @"evergreen_gratitude";
      v8 = @"evergreen_resilience";
      v9 = @"evergreen_purpose";
      if (bundleSubType != 709)
      {
        v9 = @"unknown";
      }

      if (bundleSubType != 708)
      {
        v8 = v9;
      }

      if (bundleSubType != 707)
      {
        v7 = v8;
      }

      v10 = bundleSubType <= 800;
    }

LABEL_151:
    if (v10)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  if (bundleSubType > 700)
  {
    v4 = @"evergreen_creativity";
    v26 = @"evergreen_kindness";
    v27 = @"evergreen_purpose";
    if (bundleSubType != 706)
    {
      v27 = @"unknown";
    }

    if (bundleSubType != 705)
    {
      v26 = v27;
    }

    if (bundleSubType != 704)
    {
      v4 = v26;
    }

    v7 = @"evergreen_gratitude";
    v28 = @"evergreen_wisdom";
    v29 = @"evergreen_resillience";
    if (bundleSubType != 703)
    {
      v29 = @"unknown";
    }

    if (bundleSubType != 702)
    {
      v28 = v29;
    }

    if (bundleSubType != 701)
    {
      v7 = v28;
    }

    v10 = bundleSubType <= 703;
    goto LABEL_151;
  }

  switch(bundleSubType)
  {
    case 601:
      result = @"photo_memory_single_moment";
      break;
    case 602:
      result = @"photo_memory_person";
      break;
    case 603:
      result = @"photo_memory_social_group";
      break;
    case 604:
      result = @"photo_memory_last_month_at_home";
      break;
    case 605:
      result = @"photo_memory_lookbacks";
      break;
    case 606:
      result = @"photo_memory_foodie";
      break;
    case 607:
      result = @"photo_memory_pet";
      break;
    case 608:
      result = @"photo_memory_location";
      break;
    case 609:
      result = @"photo_memory_meaningful_event";
      break;
    case 610:
      result = @"photo_memory_trip";
      break;
    case 611:
      result = @"photo_memory_past_super_set";
      break;
    case 612:
      result = @"photo_memory_season";
      break;
    case 613:
      result = @"photo_memory_recent_highlights";
      break;
    case 614:
      result = @"photo_memory_family";
      break;
    case 615:
      result = @"photo_memory_exciting_moments";
      break;
    case 616:
      result = @"photo_memory_trends";
      break;
    case 617:
      result = @"photo_memory_others";
      break;
    default:
      return result;
  }

  return result;
}

- (unint64_t)getInterfaceTypeEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([enumCopy isEqualToString:@"activity"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"outing"])
  {
    v4 = 2;
  }

  else if ([enumCopy isEqualToString:@"photo_moment"])
  {
    v4 = 3;
  }

  else if ([enumCopy isEqualToString:@"significant_contact"])
  {
    v4 = 4;
  }

  else if ([enumCopy isEqualToString:@"media"])
  {
    v4 = 5;
  }

  else if ([enumCopy isEqualToString:@"shared_content"])
  {
    v4 = 6;
  }

  else if ([enumCopy isEqualToString:@"time_at_home"])
  {
    v4 = 7;
  }

  else if ([enumCopy isEqualToString:@"evergreen"])
  {
    v4 = 11;
  }

  else if ([enumCopy isEqualToString:@"topics_of_interest"])
  {
    v4 = 8;
  }

  else if ([enumCopy isEqualToString:@"trend"] & 1) != 0 || (objc_msgSend(enumCopy, "isEqualToString:", @"workoutTrend") & 1) != 0 || (objc_msgSend(enumCopy, "isEqualToString:", @"conversationTrend"))
  {
    v4 = 9;
  }

  else if ([enumCopy isEqualToString:@"photo_memory"])
  {
    v4 = 10;
  }

  else if ([enumCopy isEqualToString:@"timeContext"])
  {
    v4 = 12;
  }

  else if ([enumCopy isEqualToString:@"trip"])
  {
    v4 = 13;
  }

  else if ([enumCopy isEqualToString:@"state_of_mind"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)getSuperTypeEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([enumCopy isEqualToString:@"outing"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"activity"])
  {
    v4 = 2;
  }

  else if ([enumCopy isEqualToString:@"contact"])
  {
    v4 = 3;
  }

  else if ([enumCopy isEqualToString:@"media"])
  {
    v4 = 4;
  }

  else if ([enumCopy isEqualToString:@"time_at_home"])
  {
    v4 = 5;
  }

  else if ([enumCopy isEqualToString:@"photo_memory"])
  {
    v4 = 6;
  }

  else if ([enumCopy isEqualToString:@"evergreen"])
  {
    v4 = 7;
  }

  else if ([enumCopy isEqualToString:@"state_of_mind"])
  {
    v4 = 8;
  }

  else if ([enumCopy isEqualToString:@"clustering"])
  {
    v4 = 9;
  }

  else if ([enumCopy isEqualToString:@"personalized_reflection"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v40 = objc_autoreleasePoolPush();
  bundleIdentifier = [(MOEventBundle *)self bundleIdentifier];
  suggestionID = [(MOEventBundle *)self suggestionID];
  subSuggestionIDs = [(MOEventBundle *)self subSuggestionIDs];
  startDate = [(MOEventBundle *)self startDate];
  endDate = [(MOEventBundle *)self endDate];
  creationDate = [(MOEventBundle *)self creationDate];
  expirationDate = [(MOEventBundle *)self expirationDate];
  firstCreationDate = [(MOEventBundle *)self firstCreationDate];
  displayStartDate = [(MOEventBundle *)self displayStartDate];
  displayEndDate = [(MOEventBundle *)self displayEndDate];
  source = [(MOEventBundle *)self source];
  interfaceType = [(MOEventBundle *)self interfaceType];
  bundleSubType = [(MOEventBundle *)self bundleSubType];
  bundleSuperType = [(MOEventBundle *)self bundleSuperType];
  if ([(MOEventBundle *)self filtered])
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  v32 = v3;
  if ([(MOEventBundle *)self isAggregatedAndSuppressed])
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  v31 = v4;
  summarizationGranularity = [(MOEventBundle *)self summarizationGranularity];
  if ([(MOEventBundle *)self includedInSummaryBundleOnly])
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  v28 = v5;
  promptLanguage = [(MOEventBundle *)self promptLanguage];
  mask = [promptLanguage mask];
  photoSource = [(MOEventBundle *)self photoSource];
  photoTraits = [(MOEventBundle *)self photoTraits];
  action = [(MOEventBundle *)self action];
  concurrentMediaAction = [(MOEventBundle *)self concurrentMediaAction];
  place = [(MOEventBundle *)self place];
  time = [(MOEventBundle *)self time];
  predominantWeather = [(MOEventBundle *)self predominantWeather];
  actions = [(MOEventBundle *)self actions];
  persons = [(MOEventBundle *)self persons];
  places = [(MOEventBundle *)self places];
  subBundleIDs = [(MOEventBundle *)self subBundleIDs];
  metaData = [(MOEventBundle *)self metaData];
  v17 = [metaData count];
  events = [(MOEventBundle *)self events];
  v6 = [events count];
  labels = [(MOEventBundle *)self labels];
  promptLanguages = [(MOEventBundle *)self promptLanguages];
  _allResourcesImpl = [(MOEventBundle *)self _allResourcesImpl];
  metaData2 = [(MOEventBundle *)self metaData];
  allKeys = [metaData2 allKeys];
  v7 = [allKeys count];
  metaData3 = [(MOEventBundle *)self metaData];
  allKeys2 = [metaData3 allKeys];
  metaDataForRank = [(MOEventBundle *)self metaDataForRank];
  allKeys3 = [metaDataForRank allKeys];
  rankingDictionary = [(MOEventBundle *)self rankingDictionary];
  suggestionEngagementEvents = [(MOEventBundle *)self suggestionEngagementEvents];
  suggestionEngagementViewCount = [(MOEventBundle *)self suggestionEngagementViewCount];
  appEntryEngagementEvents = [(MOEventBundle *)self appEntryEngagementEvents];
  v38 = [NSString stringWithFormat:@"<MOEventBundle bundleIdentifier, %@, suggestionID, %@, sub Suggestion IDs, %@, startDate, %@, endDate, %@, creationDate, %@, expirationDate, %@, firstCreationDate, %@, displayStartDate, %@, displayEndDate, %@, source, %lu, interfaceType, %lu, bundleSubType, %lu, bundleSuperType, %lu, filtered, %@, agg./suppressed, %@, sum. granularity, %lu, includedInSummaryOnly, %@, promptLanguage, %@, photoSource, %lu, traits, %@, action, %@, concurrentMediaAction, %@, place, %@, time, %@, predominantWeather %@, actions, %@, persons, %@, places, %@, sub bundle IDs, %@, metaData.count, %lu, events.count, %lu, labels, %@, prompts, %@, allResources, %@, meta, %lu, meta keywords, %@, metaDataForRank, %@, rankings, %@, suggestionEngagements, %@, suggestionEngagementViewCount, %lu, appEntryEngagementEvents %@>", bundleIdentifier, suggestionID, subSuggestionIDs, startDate, endDate, creationDate, expirationDate, firstCreationDate, displayStartDate, displayEndDate, source, interfaceType, bundleSubType, bundleSuperType, v32, v31, summarizationGranularity, v28, mask, photoSource, photoTraits, action, concurrentMediaAction, place, time, predominantWeather, actions, persons, places, subBundleIDs, v17, v6, labels, promptLanguages, _allResourcesImpl, v7, allKeys2, allKeys3, rankingDictionary, suggestionEngagementEvents, suggestionEngagementViewCount, appEntryEngagementEvents];

  objc_autoreleasePoolPop(v40);

  return v38;
}

- (id)shortDescription
{
  v32 = objc_autoreleasePoolPush();
  bundleIdentifier = [(MOEventBundle *)self bundleIdentifier];
  suggestionID = [(MOEventBundle *)self suggestionID];
  subSuggestionIDs = [(MOEventBundle *)self subSuggestionIDs];
  startDate = [(MOEventBundle *)self startDate];
  endDate = [(MOEventBundle *)self endDate];
  creationDate = [(MOEventBundle *)self creationDate];
  firstCreationDate = [(MOEventBundle *)self firstCreationDate];
  interfaceType = [(MOEventBundle *)self interfaceType];
  bundleSubType = [(MOEventBundle *)self bundleSubType];
  bundleSuperType = [(MOEventBundle *)self bundleSuperType];
  if ([(MOEventBundle *)self filtered])
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  v21 = v3;
  if ([(MOEventBundle *)self isAggregatedAndSuppressed])
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  v20 = v4;
  summarizationGranularity = [(MOEventBundle *)self summarizationGranularity];
  if ([(MOEventBundle *)self includedInSummaryBundleOnly])
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  v18 = v5;
  promptLanguage = [(MOEventBundle *)self promptLanguage];
  mask = [promptLanguage mask];
  photoSource = [(MOEventBundle *)self photoSource];
  action = [(MOEventBundle *)self action];
  concurrentMediaAction = [(MOEventBundle *)self concurrentMediaAction];
  place = [(MOEventBundle *)self place];
  time = [(MOEventBundle *)self time];
  subBundleIDs = [(MOEventBundle *)self subBundleIDs];
  labels = [(MOEventBundle *)self labels];
  rankingDictionary = [(MOEventBundle *)self rankingDictionary];
  v8 = [rankingDictionary objectForKeyedSubscript:@"visibilityCategoryForUI"];
  rankingDictionary2 = [(MOEventBundle *)self rankingDictionary];
  v10 = [rankingDictionary2 objectForKeyedSubscript:@"bundleGoodnessScore"];
  v31 = [NSString stringWithFormat:@"<MOEventBundle bundleIdentifier, %@, suggestionID, %@, sub Suggestion IDs, %@, startDate, %@, endDate, %@, creationDate, %@, firstCreationDate, %@, interfaceType, %lu, bundleSubType, %lu, bundleSuperType, %lu, filtered, %@, agg./suppressed, %@, sum. granularity, %lu, includedInSummaryOnly, %@, promptLanguage, %@, photoSource, %lu, action, %@, concurrentMediaAction, %@, place, %@, time, %@, sub bundle IDs, %@, labels, %@, rankingVisibilityCategoryForUI, %@, rankingBundleGoodnessScore, %@ >", bundleIdentifier, suggestionID, subSuggestionIDs, startDate, endDate, creationDate, firstCreationDate, interfaceType, bundleSubType, bundleSuperType, v21, v20, summarizationGranularity, v18, mask, photoSource, action, concurrentMediaAction, place, time, subBundleIDs, labels, v8, v10];

  objc_autoreleasePoolPop(v32);

  return v31;
}

- (MOEventBundle)initWithEventSet:(id)set filtered:(BOOL)filtered
{
  setCopy = set;
  v7 = +[NSDate date];
  v8 = +[NSUUID UUID];
  v9 = [(MOEventBundle *)self initWithBundleIdentifier:v8 suggestionID:v8 startDate:v7 endDate:v7 creationDate:v7];
  if (v9)
  {
    allObjects = [setCopy allObjects];
    events = v9->_events;
    v9->_events = allObjects;

    v9->_filtered = filtered;
    [(MOEventBundle *)v9 setPropertiesBasedOnEvents];
  }

  return v9;
}

- (NSSet)getCategories
{
  events = [(MOEventBundle *)self events];
  v3 = [events valueForKeyPath:@"@distinctUnionOfObjects.category"];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

- (void)setPropertiesBasedOnEvents
{
  v3 = +[NSDate distantFuture];
  startDate = self->_startDate;
  self->_startDate = v3;

  v5 = +[NSDate distantPast];
  endDate = self->_endDate;
  self->_endDate = v5;

  v7 = +[NSDate distantFuture];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v7;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  events = [(MOEventBundle *)self events];
  v10 = [events countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(events);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = self->_startDate;
        startDate = [v14 startDate];
        LODWORD(v15) = [(NSDate *)v15 isAfterDate:startDate];

        if (v15)
        {
          startDate2 = [v14 startDate];
          v18 = [startDate2 copy];
          v19 = self->_startDate;
          self->_startDate = v18;
        }

        endDate = [v14 endDate];
        v21 = [endDate isAfterDate:self->_endDate];

        if (v21)
        {
          endDate2 = [v14 endDate];
          v23 = [endDate2 copy];
          v24 = self->_endDate;
          self->_endDate = v23;
        }

        v25 = self->_expirationDate;
        expirationDate = [v14 expirationDate];
        LODWORD(v25) = [(NSDate *)v25 isAfterDate:expirationDate];

        if (v25)
        {
          expirationDate2 = [v14 expirationDate];
          v28 = [expirationDate2 copy];
          v29 = self->_expirationDate;
          self->_expirationDate = v28;
        }

        v30 = [v14 provider] - 1;
        if (v30 <= 0xB)
        {
          self->_source |= qword_1000A7730[v30];
        }
      }

      v11 = [events countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }
}

- (void)addBackgroundAction:(id)action
{
  actionCopy = action;
  backgroundActions = [(MOEventBundle *)self backgroundActions];
  v5 = [NSMutableArray arrayWithArray:backgroundActions];

  if (actionCopy)
  {
    [v5 addObject:actionCopy];
  }

  [(MOEventBundle *)self setBackgroundActions:v5];
}

- (void)addAction:(id)action
{
  actionCopy = action;
  actions = [(MOEventBundle *)self actions];
  v5 = [NSMutableArray arrayWithArray:actions];

  if (actionCopy)
  {
    [v5 addObject:actionCopy];
  }

  [(MOEventBundle *)self setActions:v5];
}

- (id)localStartDate
{
  time = [(MOEventBundle *)self time];
  if (!time)
  {
    goto LABEL_4;
  }

  v4 = time;
  time2 = [(MOEventBundle *)self time];
  timeZone = [time2 timeZone];

  if (timeZone)
  {
    v7 = [NSTimeZone alloc];
    time3 = [(MOEventBundle *)self time];
    timeZone2 = [time3 timeZone];
    v10 = [v7 initWithName:timeZone2];

    startDate = [(MOEventBundle *)self startDate];
    startDate2 = [MOTime localTimeOfDate:startDate timeZone:v10];
  }

  else
  {
LABEL_4:
    startDate2 = [(MOEventBundle *)self startDate];
  }

  return startDate2;
}

- (id)localEndDate
{
  time = [(MOEventBundle *)self time];
  if (!time)
  {
    goto LABEL_4;
  }

  v4 = time;
  time2 = [(MOEventBundle *)self time];
  timeZone = [time2 timeZone];

  if (timeZone)
  {
    v7 = [NSTimeZone alloc];
    time3 = [(MOEventBundle *)self time];
    timeZone2 = [time3 timeZone];
    v10 = [v7 initWithName:timeZone2];

    endDate = [(MOEventBundle *)self endDate];
    endDate2 = [MOTime localTimeOfDate:endDate timeZone:v10];
  }

  else
  {
LABEL_4:
    endDate2 = [(MOEventBundle *)self endDate];
  }

  return endDate2;
}

- (id)displayStartDate
{
  if ([(MOEventBundle *)self bundleSubType]== 202 || [(MOEventBundle *)self bundleSubType]== 404 || [(MOEventBundle *)self bundleSubType]== 405)
  {
    v3 = +[NSDate distantFuture];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    events = [(MOEventBundle *)self events];
    v5 = [events countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v56;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v56 != v7)
          {
            objc_enumerationMutation(events);
          }

          v9 = *(*(&v55 + 1) + 8 * i);
          if (([v9 category] == 2 || objc_msgSend(v9, "category") == 4) && objc_msgSend(v9, "provider") != 5)
          {
            startDate = [v9 startDate];
            v11 = [v3 isAfterDate:startDate];

            if (v11)
            {
              startDate2 = [v9 startDate];

              v3 = startDate2;
            }
          }
        }

        v6 = [events countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v6);
    }

    time = [(MOEventBundle *)self time];
    if (!time)
    {
      goto LABEL_19;
    }

    v14 = time;
    time2 = [(MOEventBundle *)self time];
    timeZone = [time2 timeZone];

    if (timeZone)
    {
      v17 = [NSTimeZone alloc];
      time3 = [(MOEventBundle *)self time];
      timeZone2 = [time3 timeZone];
      v20 = [v17 initWithName:timeZone2];

      startDate3 = [MOTime localTimeOfDate:v3 timeZone:v20];
    }

    else
    {
LABEL_19:
      startDate3 = v3;
    }
  }

  else if ([(MOEventBundle *)self bundleSubType]== 203)
  {
    startDate3 = [(MOEventBundle *)self startDate];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    events2 = [(MOEventBundle *)self events];
    v24 = [events2 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v52;
      v27 = @"kEventResourcePatternWorkoutInfoDictArray";
      v44 = *v52;
      v45 = events2;
      v43 = @"kEventResourcePatternWorkoutInfoDictArray";
      do
      {
        v28 = 0;
        v46 = v25;
        do
        {
          if (*v52 != v26)
          {
            objc_enumerationMutation(events2);
          }

          v29 = *(*(&v51 + 1) + 8 * v28);
          if ([v29 provider] == 5 && objc_msgSend(v29, "category") == 2)
          {
            patterns = [v29 patterns];
            v31 = [patterns objectForKey:v27];

            if (v31)
            {
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              patterns2 = [v29 patterns];
              v33 = [patterns2 objectForKeyedSubscript:v27];

              v34 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v48;
                do
                {
                  for (j = 0; j != v35; j = j + 1)
                  {
                    if (*v48 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = [*(*(&v47 + 1) + 8 * j) objectForKeyedSubscript:@"kEventResourcePatternWorkoutStartDate"];
                    [v38 doubleValue];
                    v40 = v39;

                    v41 = [NSDate dateWithTimeIntervalSince1970:v40];
                    if ([startDate3 isAfterDate:v41])
                    {
                      v42 = v41;

                      startDate3 = v42;
                    }
                  }

                  v35 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
                }

                while (v35);
              }

              v26 = v44;
              events2 = v45;
              v27 = v43;
            }

            v25 = v46;
          }

          v28 = v28 + 1;
        }

        while (v28 != v25);
        v25 = [events2 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v25);
    }
  }

  else
  {
    startDate3 = [(MOEventBundle *)self localStartDate];
  }

  return startDate3;
}

- (id)displayEndDate
{
  if ([(MOEventBundle *)self bundleSubType]== 202 || [(MOEventBundle *)self bundleSubType]== 404 || [(MOEventBundle *)self bundleSubType]== 405)
  {
    v3 = +[NSDate distantPast];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    events = [(MOEventBundle *)self events];
    v5 = [events countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v56;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v56 != v7)
          {
            objc_enumerationMutation(events);
          }

          v9 = *(*(&v55 + 1) + 8 * i);
          if (([v9 category] == 2 || objc_msgSend(v9, "category") == 4) && objc_msgSend(v9, "provider") != 5)
          {
            endDate = [v9 endDate];
            v11 = [v3 isBeforeDate:endDate];

            if (v11)
            {
              endDate2 = [v9 endDate];

              v3 = endDate2;
            }
          }
        }

        v6 = [events countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v6);
    }

    time = [(MOEventBundle *)self time];
    if (!time)
    {
      goto LABEL_19;
    }

    v14 = time;
    time2 = [(MOEventBundle *)self time];
    timeZone = [time2 timeZone];

    if (timeZone)
    {
      v17 = [NSTimeZone alloc];
      time3 = [(MOEventBundle *)self time];
      timeZone2 = [time3 timeZone];
      v20 = [v17 initWithName:timeZone2];

      endDate3 = [MOTime localTimeOfDate:v3 timeZone:v20];
    }

    else
    {
LABEL_19:
      endDate3 = v3;
    }
  }

  else if ([(MOEventBundle *)self bundleSubType]== 203)
  {
    endDate3 = [(MOEventBundle *)self endDate];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    events2 = [(MOEventBundle *)self events];
    v24 = [events2 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v52;
      v27 = @"kEventResourcePatternWorkoutInfoDictArray";
      v44 = *v52;
      v45 = events2;
      v43 = @"kEventResourcePatternWorkoutInfoDictArray";
      do
      {
        v28 = 0;
        v46 = v25;
        do
        {
          if (*v52 != v26)
          {
            objc_enumerationMutation(events2);
          }

          v29 = *(*(&v51 + 1) + 8 * v28);
          if ([v29 provider] == 5 && objc_msgSend(v29, "category") == 2)
          {
            patterns = [v29 patterns];
            v31 = [patterns objectForKey:v27];

            if (v31)
            {
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              patterns2 = [v29 patterns];
              v33 = [patterns2 objectForKeyedSubscript:v27];

              v34 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v48;
                do
                {
                  for (j = 0; j != v35; j = j + 1)
                  {
                    if (*v48 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = [*(*(&v47 + 1) + 8 * j) objectForKeyedSubscript:@"kEventResourcePatternWorkoutEndDate"];
                    [v38 doubleValue];
                    v40 = v39;

                    v41 = [NSDate dateWithTimeIntervalSince1970:v40];
                    if ([endDate3 isBeforeDate:v41])
                    {
                      v42 = v41;

                      endDate3 = v42;
                    }
                  }

                  v35 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
                }

                while (v35);
              }

              v26 = v44;
              events2 = v45;
              v27 = v43;
            }

            v25 = v46;
          }

          v28 = v28 + 1;
        }

        while (v28 != v25);
        v25 = [events2 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v25);
    }
  }

  else
  {
    endDate3 = [(MOEventBundle *)self localEndDate];
  }

  return endDate3;
}

- (void)addPerson:(id)person
{
  personCopy = person;
  persons = [(MOEventBundle *)self persons];
  v5 = [NSMutableArray arrayWithArray:persons];

  if (personCopy)
  {
    [v5 addObject:personCopy];
  }

  [(MOEventBundle *)self setPersons:v5];
}

- (void)addResource:(id)resource
{
  resourceCopy = resource;
  resources = [(MOEventBundle *)self resources];
  v5 = [NSMutableArray arrayWithArray:resources];

  if (resourceCopy)
  {
    [v5 addObject:resourceCopy];
  }

  [(MOEventBundle *)self setResources:v5];
}

- (void)addPhotoTraits:(id)traits
{
  traitsCopy = traits;
  photoTraits = [(MOEventBundle *)self photoTraits];
  v5 = [NSMutableArray arrayWithArray:photoTraits];

  if ([v5 count])
  {
    [v5 addObjectsFromArray:traitsCopy];
  }

  [(MOEventBundle *)self setPhotoTraits:v5];
}

- (void)addResources:(id)resources
{
  resourcesCopy = resources;
  resources = [(MOEventBundle *)self resources];
  v5 = [NSMutableArray arrayWithArray:resources];

  if ([resourcesCopy count])
  {
    [v5 addObjectsFromArray:resourcesCopy];
  }

  [(MOEventBundle *)self setResources:v5];
}

- (void)addMetaDataForRankForKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  metaDataForRank = [(MOEventBundle *)self metaDataForRank];
  v10 = [NSMutableDictionary dictionaryWithDictionary:metaDataForRank];

  [v10 setObject:valueCopy forKey:keyCopy];
  v9 = [v10 copy];
  [(MOEventBundle *)self setMetaDataForRank:v9];
}

- (id)_allResourcesImpl
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __34__MOEventBundle__allResourcesImpl__block_invoke;
  v5[3] = &unk_1000B6740;
  v3 = objc_opt_new();
  v6 = v3;
  [(MOEventBundle *)self withResourcesUsingBlock:v5];

  return v3;
}

- (void)withResourcesUsingBlock:(id)block
{
  blockCopy = block;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  selfCopy = self;
  resources = [(MOEventBundle *)self resources];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = __41__MOEventBundle_withResourcesUsingBlock___block_invoke;
  v57[3] = &unk_1000B6768;
  v6 = blockCopy;
  v58 = v6;
  v59 = &v60;
  [resources enumerateObjectsUsingBlock:v57];

  if ((v61[3] & 1) == 0)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    persons = [(MOEventBundle *)selfCopy persons];
    v8 = [persons countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v8)
    {
      v9 = *v54;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(persons);
        }

        v11 = *(*(&v53 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [[MOResource alloc] initWithPerson:v11];
        if (!v13)
        {
          goto LABEL_10;
        }

        sourceEventIdentifier = [v11 sourceEventIdentifier];
        [(MOResource *)v13 setSourceEventIdentifier:sourceEventIdentifier];

        (*(v6 + 2))(v6, v13, v61 + 3);
        if (v61[3])
        {
          v15 = 0;
        }

        else
        {
LABEL_10:
          v15 = 1;
        }

        objc_autoreleasePoolPop(v12);
        if (!v15)
        {
          goto LABEL_45;
        }

        if (v8 == ++v10)
        {
          v8 = [persons countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    place = [(MOEventBundle *)selfCopy place];
    if (!place)
    {
      goto LABEL_25;
    }

    places = [(MOEventBundle *)selfCopy places];
    v18 = [places count] == 0;

    if (!v18)
    {
      goto LABEL_25;
    }

    v19 = objc_autoreleasePoolPush();
    place2 = [(MOEventBundle *)selfCopy place];
    startDate = [place2 startDate];

    if (!startDate)
    {
      startDate = [(MOEventBundle *)selfCopy startDate];
    }

    place3 = [(MOEventBundle *)selfCopy place];
    endDate = [place3 endDate];

    if (!endDate)
    {
      endDate = [(MOEventBundle *)selfCopy endDate];
    }

    v24 = [MOResource alloc];
    place4 = [(MOEventBundle *)selfCopy place];
    v26 = [(MOResource *)v24 initWithPlace:place4 startDate:startDate endDate:endDate];

    if (!v26)
    {
      goto LABEL_23;
    }

    place5 = [(MOEventBundle *)selfCopy place];
    sourceEventIdentifier2 = [place5 sourceEventIdentifier];
    [(MOResource *)v26 setSourceEventIdentifier:sourceEventIdentifier2];

    (*(v6 + 2))(v6, v26, v61 + 3);
    if (v61[3])
    {
      v29 = 0;
    }

    else
    {
LABEL_23:
      v29 = 1;
    }

    objc_autoreleasePoolPop(v19);
    if (v29)
    {
LABEL_25:
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      persons = [(MOEventBundle *)selfCopy places];
      v30 = [persons countByEnumeratingWithState:&v49 objects:v64 count:16];
      if (v30)
      {
        v31 = *v50;
        v47 = v6 + 16;
LABEL_27:
        v32 = 0;
        while (1)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(persons);
          }

          v33 = *(*(&v49 + 1) + 8 * v32);
          v34 = objc_autoreleasePoolPush();
          startDate2 = [v33 startDate];
          if (!startDate2)
          {
            startDate2 = [(MOEventBundle *)selfCopy startDate];
          }

          endDate2 = [v33 endDate];
          if (!endDate2)
          {
            endDate2 = [(MOEventBundle *)selfCopy endDate];
          }

          v37 = [[MOResource alloc] initWithPlace:v33 startDate:startDate2 endDate:endDate2];
          v39 = 1;
          if (v37)
          {
            sourceEventIdentifier3 = [v33 sourceEventIdentifier];
            [(MOResource *)v37 setSourceEventIdentifier:sourceEventIdentifier3];

            (*(v6 + 2))(v6, v37, v61 + 3);
            if (v61[3])
            {
              v39 = 0;
            }
          }

          objc_autoreleasePoolPop(v34);
          if (!v39)
          {
            break;
          }

          if (v30 == ++v32)
          {
            v30 = [persons countByEnumeratingWithState:&v49 objects:v64 count:16];
            if (v30)
            {
              goto LABEL_27;
            }

            goto LABEL_41;
          }
        }

LABEL_45:

        goto LABEL_46;
      }

LABEL_41:

      predominantWeather = [(MOEventBundle *)selfCopy predominantWeather];

      if (predominantWeather)
      {
        v41 = objc_autoreleasePoolPush();
        v42 = [MOResource alloc];
        predominantWeather2 = [(MOEventBundle *)selfCopy predominantWeather];
        v44 = [(MOResource *)v42 initWithWeather:predominantWeather2];

        if (v44)
        {
          predominantWeather3 = [(MOEventBundle *)selfCopy predominantWeather];
          sourceEventIdentifier4 = [predominantWeather3 sourceEventIdentifier];
          [(MOResource *)v44 setSourceEventIdentifier:sourceEventIdentifier4];

          (*(v6 + 2))(v6, v44, v61 + 3);
        }

        objc_autoreleasePoolPop(v41);
      }
    }
  }

LABEL_46:

  _Block_object_dispose(&v60, 8);
}

uint64_t __41__MOEventBundle_withResourcesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a4;
  return result;
}

- (void)buildResources
{
  v4 = objc_opt_new();
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  selfCopy = self;
  persons = [(MOEventBundle *)self persons];
  v6 = [persons countByEnumeratingWithState:&v88 objects:v94 count:16];
  p_cache = MOEventMotionActivity.cache;
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    place4 = *v89;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v89 != place4)
        {
          objc_enumerationMutation(persons);
        }

        v11 = *(*(&v88 + 1) + 8 * i);
        v12 = [[MOResource alloc] initWithPerson:v11];
        v13 = v12;
        if (v12)
        {
          identifier = [(MOResource *)v12 identifier];

          if (identifier)
          {
            sourceEventIdentifier = [v11 sourceEventIdentifier];
            [(MOResource *)v13 setSourceEventIdentifier:sourceEventIdentifier];

            [(MOResource *)v13 priorityScore];
            if (v16 <= 0.0)
            {
              [(MOResource *)v13 setPriorityScore:v9++ + 10000.0];
            }

            [v4 addObject:v13];
          }
        }
      }

      v8 = [persons countByEnumeratingWithState:&v88 objects:v94 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v17 = selfCopy;
  if ([(MOEventBundle *)selfCopy interfaceType]!= 7)
  {
    interfaceType = [(MOEventBundle *)selfCopy interfaceType];
    if (interfaceType == 1)
    {
      obj = [(MOEventBundle *)selfCopy place];
      if ([obj placeUserType] == 1)
      {
LABEL_95:

        goto LABEL_96;
      }
    }

    interfaceType2 = [(MOEventBundle *)selfCopy interfaceType];
    if (interfaceType2 == 1)
    {
      place = [(MOEventBundle *)selfCopy place];
      if ([place placeUserType] == 2)
      {
        v21 = 0;
LABEL_46:

LABEL_47:
        if (interfaceType == 1)
        {

          if (!v21)
          {
            goto LABEL_96;
          }
        }

        else if (!v21)
        {
          goto LABEL_96;
        }

        place2 = [(MOEventBundle *)v17 place];
        [place2 priorityScore];
        if (v30 < 20000.0)
        {
          place3 = [(MOEventBundle *)v17 place];
          if (place3)
          {
            v32 = place3;
            places = [(MOEventBundle *)v17 places];
            v34 = [places count];

            if (v34)
            {
LABEL_64:
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              obj = [(MOEventBundle *)v17 places];
              v44 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
              if (!v44)
              {
                goto LABEL_95;
              }

              v45 = v44;
              v46 = *v85;
              while (1)
              {
                for (j = 0; j != v45; j = j + 1)
                {
                  if (*v85 != v46)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v48 = *(*(&v84 + 1) + 8 * j);
                  [v48 priorityScore];
                  if (v49 < 20000.0)
                  {
                    interfaceType3 = [(MOEventBundle *)v17 interfaceType];
                    if (interfaceType3 == 12)
                    {
                      place4 = [(MOEventBundle *)v17 place];
                      if ([place4 placeUserType] == 1)
                      {
                        startDate = place4;
LABEL_92:

                        continue;
                      }

                      if ([(MOEventBundle *)v17 interfaceType]== 12)
                      {
LABEL_76:
                        v52 = place4;
                        place5 = [(MOEventBundle *)v17 place];
                        placeUserType = [place5 placeUserType];

                        if (interfaceType3 == 12)
                        {

                          v28 = placeUserType == 2;
                          place4 = v52;
                          v17 = selfCopy;
                          if (v28)
                          {
                            goto LABEL_81;
                          }
                        }

                        else
                        {
                          v28 = placeUserType == 2;
                          v17 = selfCopy;
                          place4 = v52;
                          if (v28)
                          {
LABEL_81:
                            p_cache = (MOEventMotionActivity + 16);
                            continue;
                          }
                        }
                      }

                      else
                      {
                      }
                    }

                    else if ([(MOEventBundle *)v17 interfaceType]== 12)
                    {
                      goto LABEL_76;
                    }

                    v55 = place4;
                    startDate = [v48 startDate];
                    if (!startDate)
                    {
                      startDate = [(MOEventBundle *)v17 startDate];
                    }

                    endDate = [v48 endDate];
                    if (!endDate)
                    {
                      endDate = [(MOEventBundle *)v17 endDate];
                    }

                    v57 = [[MOResource alloc] initWithPlace:v48 startDate:startDate endDate:endDate];
                    if (v57)
                    {
                      sourceEventIdentifier2 = [v48 sourceEventIdentifier];
                      [(MOResource *)v57 setSourceEventIdentifier:sourceEventIdentifier2];

                      [(MOResource *)v57 priorityScore];
                      if (v59 <= 0.0)
                      {
                        [(MOResource *)v57 setPriorityScore:v9++ + 10000.0];
                      }

                      [v4 addObject:v57];
                    }

                    v17 = selfCopy;
                    place4 = v55;
                    p_cache = MOEventMotionActivity.cache;
                    goto LABEL_92;
                  }
                }

                v45 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
                if (!v45)
                {
                  goto LABEL_95;
                }
              }
            }

            place6 = [(MOEventBundle *)v17 place];
            place2 = [place6 startDate];

            if (!place2)
            {
              place2 = [(MOEventBundle *)v17 startDate];
            }

            place7 = [(MOEventBundle *)v17 place];
            endDate2 = [place7 endDate];

            if (!endDate2)
            {
              endDate2 = [(MOEventBundle *)v17 endDate];
            }

            v38 = [MOResource alloc];
            place8 = [(MOEventBundle *)v17 place];
            v40 = [(MOResource *)v38 initWithPlace:place8 startDate:place2 endDate:endDate2];

            if (v40)
            {
              place9 = [(MOEventBundle *)v17 place];
              sourceEventIdentifier3 = [place9 sourceEventIdentifier];
              [(MOResource *)v40 setSourceEventIdentifier:sourceEventIdentifier3];

              [(MOResource *)v40 priorityScore];
              if (v43 <= 0.0)
              {
                [(MOResource *)v40 setPriorityScore:v9++ + 10000.0];
              }

              [v4 addObject:v40];
            }
          }
        }

        goto LABEL_64;
      }

      v77 = place;
    }

    place4 = [(MOEventBundle *)selfCopy interfaceType];
    if (place4 == 12)
    {
      place10 = [(MOEventBundle *)selfCopy place];
      if ([place10 placeUserType] == 1)
      {
        v21 = 0;
LABEL_44:

LABEL_45:
        place = v77;
        if (interfaceType2 != 1)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    v22 = selfCopy;
    interfaceType4 = [(MOEventBundle *)selfCopy interfaceType];
    if (interfaceType4 == 12)
    {
      place11 = [(MOEventBundle *)selfCopy place];
      if ([place11 placeUserType] == 2)
      {
        v21 = 0;
        goto LABEL_42;
      }

      v75 = place11;
      v22 = selfCopy;
    }

    interfaceType5 = [(MOEventBundle *)v22 interfaceType];
    if (interfaceType5 == 16)
    {
      place12 = [(MOEventBundle *)v22 place];
      if ([place12 placeUserType] == 1)
      {

        v21 = 0;
        place11 = v75;
        if (interfaceType4 != 12)
        {
LABEL_43:
          v17 = selfCopy;
          if (place4 != 12)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

LABEL_42:

        goto LABEL_43;
      }

      v74 = place12;
      if ([(MOEventBundle *)v22 interfaceType]!= 16)
      {
        v21 = 1;
        place11 = v75;
        goto LABEL_40;
      }

      v22 = selfCopy;
    }

    else if ([(MOEventBundle *)v22 interfaceType]!= 16)
    {
      v21 = 1;
      place11 = v75;
      goto LABEL_41;
    }

    place13 = [(MOEventBundle *)v22 place];
    v21 = [place13 placeUserType] != 2;

    v28 = interfaceType5 == 16;
    place11 = v75;
    if (!v28)
    {
LABEL_41:
      if (interfaceType4 != 12)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_96:
  predominantWeather = [(MOEventBundle *)v17 predominantWeather];

  if (predominantWeather)
  {
    v61 = objc_alloc((p_cache + 8));
    predominantWeather2 = [(MOEventBundle *)v17 predominantWeather];
    v63 = [v61 initWithWeather:predominantWeather2];

    if (v63)
    {
      predominantWeather3 = [(MOEventBundle *)v17 predominantWeather];
      sourceEventIdentifier4 = [predominantWeather3 sourceEventIdentifier];
      [v63 setSourceEventIdentifier:sourceEventIdentifier4];

      [v63 priorityScore];
      if (v66 <= 0.0)
      {
        [v63 setPriorityScore:v9++ + 10000.0];
      }

      [v4 addObject:v63];
    }
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  resources = [(MOEventBundle *)v17 resources];
  v68 = [resources countByEnumeratingWithState:&v80 objects:v92 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v81;
    do
    {
      for (k = 0; k != v69; k = k + 1)
      {
        if (*v81 != v70)
        {
          objc_enumerationMutation(resources);
        }

        v72 = *(*(&v80 + 1) + 8 * k);
        [v72 priorityScore];
        if (v73 <= 0.0)
        {
          [v72 setPriorityScore:v9++ + 10000.0];
        }

        [v4 addObject:v72];
      }

      v69 = [resources countByEnumeratingWithState:&v80 objects:v92 count:16];
    }

    while (v69);
  }

  [(MOEventBundle *)v17 setResources:v4];
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    events = [(MOEventBundle *)self events];

    if (events)
    {
      events2 = [(MOEventBundle *)self events];
      v7 = [NSMutableArray arrayWithArray:events2];

      [v7 addObject:eventCopy];
      v8 = [v7 copy];
      [(MOEventBundle *)self setEvents:v8];
    }

    else
    {
      v9 = eventCopy;
      v7 = [NSArray arrayWithObjects:&v9 count:1];
      [(MOEventBundle *)self setEvents:v7];
    }
  }
}

- (void)addEvents:(id)events
{
  eventsCopy = events;
  if (eventsCopy)
  {
    v9 = eventsCopy;
    if ([eventsCopy count])
    {
      events = [(MOEventBundle *)self events];

      if (events)
      {
        events2 = [(MOEventBundle *)self events];
        v7 = [NSMutableArray arrayWithArray:events2];

        if ([v9 count])
        {
          [v7 addObjectsFromArray:v9];
        }

        v8 = [v7 copy];
        [(MOEventBundle *)self setEvents:v8];
      }

      else
      {
        [(MOEventBundle *)self setEvents:v9];
      }
    }
  }

  _objc_release_x1();
}

- (MOEventBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    v10 = [(MOEventBundle *)self initWithBundleIdentifier:v5 creationDate:v6];
    v11 = v10;
    if (v10)
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
      startDate = v11->_startDate;
      v11->_startDate = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
      endDate = v11->_endDate;
      v11->_endDate = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstCreationDate"];
      firstCreationDate = v11->_firstCreationDate;
      v11->_firstCreationDate = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
      expirationDate = v11->_expirationDate;
      v11->_expirationDate = v18;

      v11->_source = [coderCopy decodeIntegerForKey:@"source"];
      v11->_interfaceType = [coderCopy decodeIntegerForKey:@"interfaceType"];
      v11->_photoSource = [coderCopy decodeIntegerForKey:@"photoSource"];
      v20 = objc_opt_class();
      v21 = [NSSet setWithObjects:v20, objc_opt_class(), 0];
      v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"events"];
      events = v11->_events;
      v11->_events = v22;

      v11->_filtered = [coderCopy decodeBoolForKey:@"filtered"];
      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"promptLanguage"];
      promptLanguage = v11->_promptLanguage;
      v11->_promptLanguage = v24;

      v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
      action = v11->_action;
      v11->_action = v26;

      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"concurrentMediaAction"];
      concurrentMediaAction = v11->_concurrentMediaAction;
      v11->_concurrentMediaAction = v28;

      v30 = objc_opt_class();
      v31 = [NSSet setWithObjects:v30, objc_opt_class(), 0];
      v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"actions"];
      actions = v11->_actions;
      v11->_actions = v32;

      v34 = objc_opt_class();
      v35 = [NSSet setWithObjects:v34, objc_opt_class(), 0];
      v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"backgroundActions"];
      backgroundActions = v11->_backgroundActions;
      v11->_backgroundActions = v36;

      v38 = objc_opt_class();
      v39 = [NSSet setWithObjects:v38, objc_opt_class(), 0];
      v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"persons"];
      persons = v11->_persons;
      v11->_persons = v40;

      v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"place"];
      place = v11->_place;
      v11->_place = v42;

      v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weather"];
      predominantWeather = v11->_predominantWeather;
      v11->_predominantWeather = v44;

      v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
      time = v11->_time;
      v11->_time = v46;

      v48 = objc_opt_class();
      v49 = [NSSet setWithObjects:v48, objc_opt_class(), 0];
      v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"resources"];
      resources = v11->_resources;
      v11->_resources = v50;

      v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rankingDictionary"];
      v53 = [MODictionaryEncoder decodeToDictionary:v52];
      rankingDictionary = v11->_rankingDictionary;
      v11->_rankingDictionary = v53;

      v55 = objc_opt_class();
      v56 = [NSSet setWithObjects:v55, objc_opt_class(), 0];
      v57 = [coderCopy decodeObjectOfClasses:v56 forKey:@"labels"];
      labels = v11->_labels;
      v11->_labels = v57;

      v59 = objc_opt_class();
      v60 = [NSSet setWithObjects:v59, objc_opt_class(), 0];
      v61 = [coderCopy decodeObjectOfClasses:v60 forKey:@"promptLanguages"];
      promptLanguages = v11->_promptLanguages;
      v11->_promptLanguages = v61;

      v63 = [NSMutableDictionary alloc];
      v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metaData"];
      v65 = [MODictionaryEncoder decodeToDictionary:v64];
      v66 = [v63 initWithDictionary:v65];
      metaData = v11->_metaData;
      v11->_metaData = v66;

      v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metaDataForRank"];
      v69 = [MODictionaryEncoder decodeToDictionary:v68];
      metaDataForRank = v11->_metaDataForRank;
      v11->_metaDataForRank = v69;

      v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionID"];
      suggestionID = v11->_suggestionID;
      v11->_suggestionID = v71;

      v73 = objc_opt_class();
      v74 = [NSSet setWithObjects:v73, objc_opt_class(), 0];
      v75 = [coderCopy decodeObjectOfClasses:v74 forKey:@"suggestionEngagements"];
      v76 = [NSMutableSet setWithArray:v75];
      suggestionEngagementEvents = v11->_suggestionEngagementEvents;
      v11->_suggestionEngagementEvents = v76;

      v78 = objc_opt_class();
      v79 = [NSSet setWithObjects:v78, objc_opt_class(), 0];
      v80 = [coderCopy decodeObjectOfClasses:v79 forKey:@"places"];
      places = v11->_places;
      v11->_places = v80;

      v11->_isAggregatedAndSuppressed = [coderCopy decodeBoolForKey:@"isAggregatedAndSuppressed"];
      v11->_summarizationGranularity = [coderCopy decodeIntegerForKey:@"summarizationGranularity"];
      v82 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subBundleIDs"];
      subBundleIDs = v11->_subBundleIDs;
      v11->_subBundleIDs = v82;

      v84 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subSuggestionIDs"];
      subSuggestionIDs = v11->_subSuggestionIDs;
      v11->_subSuggestionIDs = v84;

      v11->_suggestionEngagementViewCount = [coderCopy decodeIntegerForKey:@"suggestionViewCount"];
      v86 = objc_opt_class();
      v87 = [NSSet setWithObjects:v86, objc_opt_class(), 0];
      v88 = [coderCopy decodeObjectOfClasses:v87 forKey:@"appEntryEngagements"];
      v89 = [NSMutableSet setWithArray:v88];
      appEntryEngagementEvents = v11->_appEntryEngagementEvents;
      v11->_appEntryEngagementEvents = v89;

      v91 = objc_opt_class();
      v92 = [NSSet setWithObjects:v91, objc_opt_class(), 0];
      v93 = [coderCopy decodeObjectOfClasses:v92 forKey:@"visitEventsRejectedByWatchLocation"];
      visitEventsRejectedByWatchLocation = v11->_visitEventsRejectedByWatchLocation;
      v11->_visitEventsRejectedByWatchLocation = v93;

      v11->_bundleSubType = [coderCopy decodeIntegerForKey:@"bundleSubType"];
      v11->_bundleSuperType = [coderCopy decodeIntegerForKey:@"bundleSuperType"];
      v95 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterMetadata"];
      clusterMetadata = v11->_clusterMetadata;
      v11->_clusterMetadata = v95;

      v97 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outlierMetadata"];
      outlierMetadata = v11->_outlierMetadata;
      v11->_outlierMetadata = v97;

      v99 = objc_opt_class();
      v100 = [NSSet setWithObjects:v99, objc_opt_class(), 0];
      v101 = [coderCopy decodeObjectOfClasses:v100 forKey:@"photoTraits"];
      photoTraits = v11->_photoTraits;
      v11->_photoTraits = v101;

      v11->_isSensitive = [coderCopy decodeBoolForKey:@"isSensitive"];
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_firstCreationDate forKey:@"firstCreationDate"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeInteger:self->_interfaceType forKey:@"interfaceType"];
  [coderCopy encodeInteger:self->_photoSource forKey:@"photoSource"];
  [coderCopy encodeObject:self->_events forKey:@"events"];
  [coderCopy encodeBool:self->_filtered forKey:@"filtered"];
  [coderCopy encodeObject:self->_promptLanguage forKey:@"promptLanguage"];
  [coderCopy encodeObject:self->_action forKey:@"action"];
  [coderCopy encodeObject:self->_concurrentMediaAction forKey:@"concurrentMediaAction"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
  [coderCopy encodeObject:self->_backgroundActions forKey:@"backgroundActions"];
  [coderCopy encodeObject:self->_persons forKey:@"persons"];
  [coderCopy encodeObject:self->_place forKey:@"place"];
  [coderCopy encodeObject:self->_predominantWeather forKey:@"weather"];
  [coderCopy encodeObject:self->_time forKey:@"time"];
  [coderCopy encodeObject:self->_resources forKey:@"resources"];
  v5 = [MODictionaryEncoder encodeDictionary:self->_rankingDictionary];
  [coderCopy encodeObject:v5 forKey:@"rankingDictionary"];

  [coderCopy encodeObject:self->_labels forKey:@"labels"];
  [coderCopy encodeObject:self->_promptLanguages forKey:@"promptLanguages"];
  v6 = [MODictionaryEncoder encodeDictionary:self->_metaData];
  [coderCopy encodeObject:v6 forKey:@"metaData"];

  v7 = [MODictionaryEncoder encodeDictionary:self->_metaDataForRank];
  [coderCopy encodeObject:v7 forKey:@"metaDataForRank"];

  [coderCopy encodeObject:self->_suggestionID forKey:@"suggestionID"];
  suggestionEngagementEvents = [(MOEventBundle *)self suggestionEngagementEvents];
  allObjects = [suggestionEngagementEvents allObjects];
  [coderCopy encodeObject:allObjects forKey:@"suggestionEngagements"];

  [coderCopy encodeObject:self->_places forKey:@"places"];
  [coderCopy encodeBool:self->_isAggregatedAndSuppressed forKey:@"isAggregatedAndSuppressed"];
  [coderCopy encodeInteger:self->_summarizationGranularity forKey:@"summarizationGranularity"];
  [coderCopy encodeObject:self->_subBundleIDs forKey:@"subBundleIDs"];
  [coderCopy encodeObject:self->_subSuggestionIDs forKey:@"subSuggestionIDs"];
  [coderCopy encodeInteger:self->_suggestionEngagementViewCount forKey:@"suggestionViewCount"];
  [coderCopy encodeObject:self->_visitEventsRejectedByWatchLocation forKey:@"visitEventsRejectedByWatchLocation"];
  appEntryEngagementEvents = [(MOEventBundle *)self appEntryEngagementEvents];
  allObjects2 = [appEntryEngagementEvents allObjects];
  [coderCopy encodeObject:allObjects2 forKey:@"appEntryEngagements"];

  [coderCopy encodeInteger:self->_bundleSubType forKey:@"bundleSubType"];
  [coderCopy encodeInteger:self->_bundleSuperType forKey:@"bundleSuperType"];
  [coderCopy encodeObject:self->_clusterMetadata forKey:@"clusterMetadata"];
  [coderCopy encodeObject:self->_outlierMetadata forKey:@"outlierMetadata"];
  [coderCopy encodeObject:self->_photoTraits forKey:@"photoTraits"];
  [coderCopy encodeBool:self->_isSensitive forKey:@"isSensitive"];
}

- (id)dateInterval
{
  startDate = [(MOEventBundle *)self startDate];
  if (startDate)
  {
  }

  else
  {
    endDate = [(MOEventBundle *)self endDate];

    if (!endDate)
    {
LABEL_11:
      v15 = 0;
      goto LABEL_16;
    }
  }

  endDate2 = [(MOEventBundle *)self endDate];

  startDate2 = [(MOEventBundle *)self startDate];
  endDate3 = startDate2;
  if (!endDate2)
  {
    [(MOEventBundle *)self setEndDate:startDate2];
LABEL_14:

    goto LABEL_15;
  }

  if (!endDate3)
  {
    endDate3 = [(MOEventBundle *)self endDate];
    [(MOEventBundle *)self setStartDate:endDate3];
    goto LABEL_14;
  }

  startDate3 = [(MOEventBundle *)self startDate];
  endDate4 = [(MOEventBundle *)self endDate];
  v10 = [startDate3 isOnOrBefore:endDate4];

  if ((v10 & 1) == 0)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundle *)self dateInterval];
    }
  }

  startDate4 = [(MOEventBundle *)self startDate];
  endDate5 = [(MOEventBundle *)self endDate];
  v14 = [startDate4 isBeforeDate:endDate5];

  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v16 = [NSDateInterval alloc];
  startDate5 = [(MOEventBundle *)self startDate];
  endDate6 = [(MOEventBundle *)self endDate];
  v15 = [v16 initWithStartDate:startDate5 endDate:endDate6];

LABEL_16:

  return v15;
}

- (unint64_t)hash
{
  bundleIdentifier = [(MOEventBundle *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

- (BOOL)isEqualToEventBundle:(id)bundle
{
  bundleCopy = bundle;
  if (self == bundleCopy)
  {
    goto LABEL_3;
  }

  bundleIdentifier = [(MOEventBundle *)self bundleIdentifier];
  bundleIdentifier2 = [(MOEventBundle *)bundleCopy bundleIdentifier];
  v7 = [bundleIdentifier isEqual:bundleIdentifier2];

  if (v7)
  {
    goto LABEL_3;
  }

  suggestionID = [(MOEventBundle *)self suggestionID];
  if (suggestionID)
  {
    v11 = suggestionID;
    suggestionID2 = [(MOEventBundle *)bundleCopy suggestionID];
    if (suggestionID2)
    {
      v13 = suggestionID2;
      suggestionID3 = [(MOEventBundle *)self suggestionID];
      suggestionID4 = [(MOEventBundle *)bundleCopy suggestionID];
      v16 = [suggestionID3 isEqual:suggestionID4];

      if (v16)
      {
LABEL_3:
        LOBYTE(v8) = 1;
        goto LABEL_4;
      }
    }

    else
    {
    }
  }

  interfaceType = [(MOEventBundle *)self interfaceType];
  if (interfaceType != [(MOEventBundle *)bundleCopy interfaceType])
  {
LABEL_84:
    LOBYTE(v8) = 0;
    goto LABEL_4;
  }

  LOBYTE(v8) = 0;
  switch([(MOEventBundle *)bundleCopy interfaceType])
  {
    case 0uLL:
      if (![(MOEventBundle *)self isEqualPropertyForObject:self other:bundleCopy propertyPath:@"startDate" threshold:60.0])
      {
        goto LABEL_84;
      }

      v18 = @"endDate";
      v22 = 60.0;
      goto LABEL_42;
    case 1uLL:
    case 2uLL:
      if (![(MOEventBundle *)self isEqualPropertyForObject:self other:bundleCopy propertyPath:@"startDate" threshold:600.0])
      {
        goto LABEL_84;
      }

      v18 = @"endDate";
      selfCopy3 = self;
      selfCopy4 = self;
      v21 = bundleCopy;
      v22 = 600.0;
      goto LABEL_43;
    case 4uLL:
      if (![(MOEventBundle *)self isEqualBasicPropertiesForObject:self other:bundleCopy])
      {
        goto LABEL_84;
      }

      startDate = [(MOEventBundle *)self startDate];
      startDate2 = [(MOEventBundle *)bundleCopy startDate];
      v8 = [startDate isSameDayWithDate:startDate2];

      if (!v8)
      {
        goto LABEL_4;
      }

      v26 = [(MOEventBundle *)self isEqualPersonsForObject:self other:bundleCopy];
      goto LABEL_44;
    case 5uLL:
      if (![(MOEventBundle *)self isEqualBasicPropertiesForObject:self other:bundleCopy])
      {
        goto LABEL_84;
      }

      startDate3 = [(MOEventBundle *)self startDate];
      startDate4 = [(MOEventBundle *)bundleCopy startDate];
      v8 = [startDate3 isSameDayWithDate:startDate4];

      if (!v8)
      {
        goto LABEL_4;
      }

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      resources = [(MOEventBundle *)self resources];
      v30 = [resources countByEnumeratingWithState:&v106 objects:v113 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = 0;
        v33 = *v107;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v107 != v33)
            {
              objc_enumerationMutation(resources);
            }

            v35 = *(*(&v106 + 1) + 8 * i);
            v36 = objc_autoreleasePoolPush();
            if ([v35 type] == 3)
            {
              getDictionary = [v35 getDictionary];

              v32 = getDictionary;
            }

            objc_autoreleasePoolPop(v36);
          }

          v31 = [resources countByEnumeratingWithState:&v106 objects:v113 count:16];
        }

        while (v31);
      }

      else
      {
        v32 = 0;
      }

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      resources2 = [(MOEventBundle *)bundleCopy resources];
      v84 = [resources2 countByEnumeratingWithState:&v102 objects:v112 count:16];
      if (!v84)
      {
        v86 = 0;
LABEL_106:

        goto LABEL_107;
      }

      v85 = v84;
      v86 = 0;
      v87 = *v103;
      do
      {
        for (j = 0; j != v85; j = j + 1)
        {
          if (*v103 != v87)
          {
            objc_enumerationMutation(resources2);
          }

          v89 = *(*(&v102 + 1) + 8 * j);
          v90 = objc_autoreleasePoolPush();
          if ([v89 type] == 3)
          {
            getDictionary2 = [v89 getDictionary];

            v86 = getDictionary2;
          }

          objc_autoreleasePoolPop(v90);
        }

        v85 = [resources2 countByEnumeratingWithState:&v102 objects:v112 count:16];
      }

      while (v85);

      if (v32 && v86)
      {
        resources2 = [v32 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
        v92 = [v86 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
        v93 = v92;
        if (resources2 && v92)
        {
          [resources2 isEqualToString:v92];
        }

        goto LABEL_106;
      }

LABEL_107:

      goto LABEL_3;
    case 6uLL:
      v18 = @"dateInterval";
      v22 = 0.8;
LABEL_42:
      selfCopy3 = self;
      selfCopy4 = self;
      v21 = bundleCopy;
LABEL_43:
      v26 = [(MOEventBundle *)selfCopy3 isEqualPropertyForObject:selfCopy4 other:v21 propertyPath:v18 threshold:v22];
      goto LABEL_44;
    case 7uLL:
      bundleSubType = [(MOEventBundle *)self bundleSubType];
      if (bundleSubType != [(MOEventBundle *)bundleCopy bundleSubType])
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    case 8uLL:
      if (![(MOEventBundle *)self isEqualPropertyForObject:self other:bundleCopy propertyPath:@"dateInterval" threshold:0.8])
      {
        goto LABEL_84;
      }

      v26 = [(MOEventBundle *)self isEqualResourcesForObject:self other:bundleCopy resourceType:8];
      goto LABEL_44;
    case 0xAuLL:
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      resources3 = [(MOEventBundle *)self resources];
      v47 = [resources3 countByEnumeratingWithState:&v98 objects:v111 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = 0;
        v50 = *v99;
        do
        {
          for (k = 0; k != v48; k = k + 1)
          {
            if (*v99 != v50)
            {
              objc_enumerationMutation(resources3);
            }

            v52 = *(*(&v98 + 1) + 8 * k);
            v53 = objc_autoreleasePoolPush();
            if ([v52 type] == 15)
            {
              getDictionary3 = [v52 getDictionary];

              v49 = getDictionary3;
            }

            objc_autoreleasePoolPop(v53);
          }

          v48 = [resources3 countByEnumeratingWithState:&v98 objects:v111 count:16];
        }

        while (v48);
      }

      else
      {
        v49 = 0;
      }

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      resources4 = [(MOEventBundle *)bundleCopy resources];
      v56 = [resources4 countByEnumeratingWithState:&v94 objects:v110 count:16];
      if (!v56)
      {

        v58 = 0;
LABEL_76:
        LOBYTE(v8) = [(MOEventBundle *)self isEqualBaseActionForObject:self other:bundleCopy];

        goto LABEL_4;
      }

      v57 = v56;
      v58 = 0;
      v59 = *v95;
      do
      {
        for (m = 0; m != v57; m = m + 1)
        {
          if (*v95 != v59)
          {
            objc_enumerationMutation(resources4);
          }

          v61 = *(*(&v94 + 1) + 8 * m);
          v62 = objc_autoreleasePoolPush();
          if ([v61 type] == 15)
          {
            getDictionary4 = [v61 getDictionary];

            v58 = getDictionary4;
          }

          objc_autoreleasePoolPop(v62);
        }

        v57 = [resources4 countByEnumeratingWithState:&v94 objects:v110 count:16];
      }

      while (v57);

      if (!v49 || !v58)
      {
        goto LABEL_76;
      }

      v64 = [v49 objectForKey:@"MOPHMemoryMetaDataKeyMemoryIdentifier"];
      v65 = [v58 objectForKey:@"MOPHMemoryMetaDataKeyMemoryIdentifier"];
      v66 = v65;
      if (v64 && v65 && ([v64 isEqualToString:v65] & 1) != 0)
      {

        goto LABEL_3;
      }

LABEL_88:
      v82 = [objc_opt_class() castEvergreenSubType:{-[MOEventBundle bundleSubType](bundleCopy, "bundleSubType")}];
      LOBYTE(v8) = v82 == [objc_opt_class() castEvergreenSubType:{-[MOEventBundle bundleSubType](self, "bundleSubType")}];
LABEL_4:

      return v8;
    case 0xBuLL:
      goto LABEL_88;
    case 0xCuLL:
      summarizationGranularity = [(MOEventBundle *)self summarizationGranularity];
      if (summarizationGranularity != [(MOEventBundle *)bundleCopy summarizationGranularity])
      {
        goto LABEL_84;
      }

      if ([(MOEventBundle *)self isEqualPropertyForObject:self other:bundleCopy propertyPath:@"startDate" threshold:600.0])
      {
        goto LABEL_3;
      }

      subBundleIDs = [(MOEventBundle *)self subBundleIDs];
      v25 = [subBundleIDs count];

      if (v25)
      {
        if ([(MOEventBundle *)self intersectedSubBundleIDForObject:self other:bundleCopy])
        {
          goto LABEL_3;
        }
      }

      v26 = [(MOEventBundle *)self intersectedActivityOrVisitForObject:self other:bundleCopy];
LABEL_44:
      LOBYTE(v8) = v26;
      goto LABEL_4;
    case 0xDuLL:
      place = [(MOEventBundle *)self place];
      if (!place)
      {
        goto LABEL_84;
      }

      v39 = place;
      place2 = [(MOEventBundle *)bundleCopy place];

      if (!place2)
      {
        goto LABEL_84;
      }

      place3 = [(MOEventBundle *)self place];
      placeType = [place3 placeType];
      if (placeType > 0x64 || (-[MOEventBundle place](bundleCopy, "place"), place2 = objc_claimAutoreleasedReturnValue(), [place2 placeType] > 0x64))
      {
        place4 = [(MOEventBundle *)self place];
        placeType2 = [place4 placeType];
        place5 = [(MOEventBundle *)bundleCopy place];
        placeType3 = [place5 placeType];

        if (placeType <= 0x64)
        {
        }

        if (placeType2 != placeType3)
        {
          goto LABEL_84;
        }
      }

      else
      {
      }

      v71 = [NSDateInterval alloc];
      startDate5 = [(MOEventBundle *)self startDate];
      endDate = [(MOEventBundle *)self endDate];
      v74 = [v71 initWithStartDate:startDate5 endDate:endDate];

      v75 = [NSDateInterval alloc];
      startDate6 = [(MOEventBundle *)bundleCopy startDate];
      endDate2 = [(MOEventBundle *)bundleCopy endDate];
      v78 = [v75 initWithStartDate:startDate6 endDate:endDate2];

      LOBYTE(startDate6) = [v74 intersectsDateInterval:v78];
      if (startDate6)
      {
        goto LABEL_3;
      }

LABEL_81:
      if ([(MOEventBundle *)self bundleSubType]== 801 && [(MOEventBundle *)bundleCopy bundleSubType]== 801)
      {
LABEL_83:
        startDate7 = [(MOEventBundle *)self startDate];
        startDate8 = [(MOEventBundle *)bundleCopy startDate];
        LOBYTE(v8) = [startDate7 isSameDayWithDate:startDate8];
      }

      else
      {
        startDate7 = [(MOEventBundle *)self startDate];
        startDate9 = [(MOEventBundle *)bundleCopy startDate];
        LOBYTE(v8) = startDate7 == startDate9;
      }

      goto LABEL_4;
    case 0xEuLL:
      goto LABEL_81;
    default:
      goto LABEL_4;
  }
}

+ (unint64_t)castEvergreenSubType:(unint64_t)type
{
  result = type;
  if (type - 707 <= 2)
  {
    return qword_1000A7790[type - 707];
  }

  return result;
}

- (BOOL)intersectedSubBundleIDForObject:(id)object other:(id)other
{
  otherCopy = other;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  subBundleIDs = [object subBundleIDs];
  v7 = [subBundleIDs countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(subBundleIDs);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        subBundleIDs2 = [otherCopy subBundleIDs];
        v13 = [subBundleIDs2 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          while (2)
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(subBundleIDs2);
              }

              if ([v11 isEqualToString:*(*(&v19 + 1) + 8 * j)])
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v14 = [subBundleIDs2 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [subBundleIDs countByEnumeratingWithState:&v23 objects:v28 count:16];
      v17 = 0;
    }

    while (v8);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (BOOL)intersectedActivityOrVisitForObject:(id)object other:(id)other
{
  otherCopy = other;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  events = [object events];
  v8 = [events countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    v25 = events;
    v26 = otherCopy;
    v23 = *v32;
    do
    {
      v11 = 0;
      v24 = v9;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(events);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        if ([v12 category] == 1 || objc_msgSend(v12, "category") == 2)
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          events2 = [otherCopy events];
          v14 = [events2 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v28;
            while (2)
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v28 != v16)
                {
                  objc_enumerationMutation(events2);
                }

                v18 = *(*(&v27 + 1) + 8 * i);
                if ([v18 category] == 1 || objc_msgSend(v18, "category") == 2)
                {
                  if ((v19 = [v12 category], v19 == objc_msgSend(v18, "category")) && objc_msgSend(v12, "category") == 1 && -[MOEventBundle isEqualPropertyForObject:other:propertyPath:threshold:](self, "isEqualPropertyForObject:other:propertyPath:threshold:", v12, v18, @"startDate", 600.0) || (v20 = objc_msgSend(v12, "category"), v20 == objc_msgSend(v18, "category")) && objc_msgSend(v12, "category") == 2 && -[MOEventBundle isEqualPropertyForObject:other:propertyPath:threshold:](self, "isEqualPropertyForObject:other:propertyPath:threshold:", v12, v18, @"startDate", 600.0))
                  {

                    v21 = 1;
                    events = v25;
                    otherCopy = v26;
                    goto LABEL_29;
                  }
                }
              }

              v15 = [events2 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          events = v25;
          otherCopy = v26;
          v10 = v23;
          v9 = v24;
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [events countByEnumeratingWithState:&v31 objects:v36 count:16];
      v21 = 0;
    }

    while (v9);
  }

  else
  {
    v21 = 0;
  }

LABEL_29:

  return v21;
}

- (BOOL)isEqualBasicPropertiesForObject:(id)object other:(id)other
{
  objectCopy = object;
  otherCopy = other;
  bundleSuperType = [objectCopy bundleSuperType];
  if (bundleSuperType == [otherCopy bundleSuperType] && (v8 = objc_msgSend(objectCopy, "bundleSubType"), v8 == objc_msgSend(otherCopy, "bundleSubType")) && (v9 = objc_msgSend(objectCopy, "interfaceType"), v9 == objc_msgSend(otherCopy, "interfaceType")))
  {
    summarizationGranularity = [objectCopy summarizationGranularity];
    v11 = summarizationGranularity == [otherCopy summarizationGranularity];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualPropertyForObject:(id)object other:(id)other propertyPath:(id)path threshold:(double)threshold
{
  objectCopy = object;
  otherCopy = other;
  pathCopy = path;
  v12 = [objectCopy valueForKeyPath:pathCopy];
  v13 = [otherCopy valueForKeyPath:pathCopy];

  if (!(v12 | v13))
  {
    v14 = 1;
    goto LABEL_22;
  }

  v14 = 0;
  if (v12 && v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 timeIntervalSinceDate:v13];
      v16 = fabs(v15);
LABEL_7:
      v14 = v16 < threshold;
      goto LABEL_22;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v12 isEqualToString:v13];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v13;
          [v12 doubleValue];
          v28 = v27;
          [v26 doubleValue];
          v30 = v29;

          v16 = v28 - v30;
          if (v28 - v30 < 0.0)
          {
            v16 = -(v28 - v30);
          }

          goto LABEL_7;
        }

        v25 = [objectCopy isEqual:otherCopy];
      }

      v14 = v25;
      goto LABEL_22;
    }

    v17 = v12;
    v18 = v13;
    if (![v17 intersectsDateInterval:v18])
    {
      goto LABEL_14;
    }

    v19 = [v17 intersectionWithDateInterval:v18];
    [v19 duration];
    v21 = v20;

    v22 = [v17 unionWithDateInterval:v18];
    [v22 duration];
    v24 = v23;

    if (v24 == 0.0)
    {
LABEL_14:
      v14 = 0;
    }

    else
    {
      v14 = v21 / v24 > threshold;
    }
  }

LABEL_22:

  return v14;
}

- (BOOL)isEqualResourcesForObject:(id)object other:(id)other resourceType:(unint64_t)type
{
  objectCopy = object;
  otherCopy = other;
  v35 = objc_opt_new();
  v34 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = objectCopy;
  resources = [objectCopy resources];
  v9 = [resources countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(resources);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        if ([v13 type] == type)
        {
          v14 = [NSString alloc];
          name = [v13 name];
          assets = [v13 assets];
          [v13 value];
          v18 = [v14 initWithFormat:@"%@, %@, %f", name, assets, v17];

          if (v18)
          {
            [v35 addObject:v18];
          }
        }
      }

      v10 = [resources countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v10);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  resources2 = [otherCopy resources];
  v20 = [resources2 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(resources2);
        }

        v24 = *(*(&v36 + 1) + 8 * j);
        if ([v24 type] == type)
        {
          v25 = [NSString alloc];
          name2 = [v24 name];
          assets2 = [v24 assets];
          [v24 value];
          v29 = [v25 initWithFormat:@"%@, %@, %f", name2, assets2, v28];

          if (v29)
          {
            [v34 addObject:v29];
          }
        }
      }

      v21 = [resources2 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v21);
  }

  v30 = [v35 isEqualToSet:v34];
  return v30;
}

- (BOOL)isEqualPersonsForObject:(id)object other:(id)other
{
  objectCopy = object;
  otherCopy = other;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  persons = [objectCopy persons];
  v10 = [persons countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(persons);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        contactIdentifier = [v14 contactIdentifier];

        if (contactIdentifier)
        {
          contactIdentifier2 = [v14 contactIdentifier];
          [v7 addObject:contactIdentifier2];
        }
      }

      v11 = [persons countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  persons2 = [otherCopy persons];
  v18 = [persons2 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(persons2);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        contactIdentifier3 = [v22 contactIdentifier];

        if (contactIdentifier3)
        {
          contactIdentifier4 = [v22 contactIdentifier];
          [v8 addObject:contactIdentifier4];
        }
      }

      v19 = [persons2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  v25 = [v7 isEqualToSet:v8];
  return v25;
}

- (BOOL)isEqualBaseActionForObject:(id)object other:(id)other
{
  otherCopy = other;
  action = [object action];
  action2 = [otherCopy action];

  if (action | action2)
  {
    v8 = 0;
    if (action2)
    {
      v10 = 0;
    }

    else
    {
      v10 = action != 0;
    }

    if (action2)
    {
      v11 = action == 0;
    }

    else
    {
      v11 = 0;
    }

    if (!v11 && !v10)
    {
      actionType = [action actionType];
      if (actionType == [action2 actionType])
      {
        actionName = [action actionName];
        actionName2 = [action2 actionName];
        v8 = [actionName isEqualToString:actionName2];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        bundleIdentifier = [(MOEventBundle *)self bundleIdentifier];
        if (bundleIdentifier || ([(MOEventBundle *)v7 bundleIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          bundleIdentifier2 = [(MOEventBundle *)self bundleIdentifier];
          bundleIdentifier3 = [(MOEventBundle *)v7 bundleIdentifier];
          v11 = [bundleIdentifier2 isEqual:bundleIdentifier3];

          if (bundleIdentifier)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (BOOL)containTheSameEventSet:(id)set
{
  setCopy = set;
  if (setCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = setCopy;
    events = [(MOEventBundle *)self events];
    v7 = [events mutableCopy];

    events2 = [v5 events];

    v9 = [events2 mutableCopy];
    v10 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v18 = v10;
    v11 = [NSArray arrayWithObjects:&v18 count:1];
    v12 = [v7 sortedArrayUsingDescriptors:v11];

    v17 = v10;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
    v14 = [v9 sortedArrayUsingDescriptors:v13];

    v15 = [v12 isEqualToArray:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)shareEvents:(id)events
{
  eventsCopy = events;
  if (eventsCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v31 = eventsCopy;
    v5 = eventsCopy;
    v6 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v30 = v5;
    events = [v5 events];
    v8 = [events countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v44;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v44 != v10)
          {
            objc_enumerationMutation(events);
          }

          v12 = *(*(&v43 + 1) + 8 * i);
          eventIdentifier = [v12 eventIdentifier];

          if (eventIdentifier)
          {
            eventIdentifier2 = [v12 eventIdentifier];
            [v6 addObject:eventIdentifier2];
          }
        }

        v9 = [events countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v9);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [(MOEventBundle *)self events];
    v15 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v15)
    {
      v16 = v15;
      v33 = 0;
      v34 = *v40;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v39 + 1) + 8 * j);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v19 = v6;
          v20 = [v19 countByEnumeratingWithState:&v35 objects:v47 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = v6;
            v23 = *v36;
            while (2)
            {
              for (k = 0; k != v21; k = k + 1)
              {
                if (*v36 != v23)
                {
                  objc_enumerationMutation(v19);
                }

                v25 = *(*(&v35 + 1) + 8 * k);
                eventIdentifier3 = [v18 eventIdentifier];
                v27 = [v25 compare:eventIdentifier3];

                if (!v27)
                {
                  v33 = 1;
                  goto LABEL_27;
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v35 objects:v47 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }

LABEL_27:
            v6 = v22;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v16);
    }

    else
    {
      v33 = 0;
    }

    eventsCopy = v31;
    v28 = v33;
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

- (id)getCustomLabelsForMetaData:(id)data templateFilePath:(id)path
{
  pathCopy = path;
  dataCopy = data;
  if (pathCopy)
  {
    v8 = [[MOEventBundleLabelFormatter alloc] initWithTemplatePath:pathCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = [(MOEventBundle *)self getCustomLabelsForMetaData:dataCopy labelFormatter:v8];

  return v10;
}

- (id)getCustomLabelsForMetaData:(id)data labelFormatter:(id)formatter
{
  dataCopy = data;
  formatterCopy = formatter;
  if (dataCopy)
  {
    getBundleType = [(MOEventBundle *)self getBundleType];
    v9 = [formatterCopy formattedBundleLabelsForMetaData:dataCopy bundleType:getBundleType];
  }

  else
  {
    getBundleType = [(MOEventBundle *)self metaData];
    getBundleType2 = [(MOEventBundle *)self getBundleType];
    v9 = [formatterCopy formattedBundleLabelsForMetaData:getBundleType bundleType:getBundleType2];

    formatterCopy = getBundleType2;
  }

  return v9;
}

- (id)getCustomPromptsForMetaData:(id)data templateFilePath:(id)path
{
  pathCopy = path;
  dataCopy = data;
  if (pathCopy)
  {
    v8 = [[MOEventBundleLabelFormatter alloc] initWithTemplatePath:pathCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = [(MOEventBundle *)self getCustomPromptsForMetaData:dataCopy labelFormatter:v8];

  return v10;
}

- (id)getCustomPromptsForMetaData:(id)data labelFormatter:(id)formatter
{
  dataCopy = data;
  formatterCopy = formatter;
  if (dataCopy)
  {
    getBundleType = [(MOEventBundle *)self getBundleType];
    v9 = [formatterCopy formattedBundlePromptsForMetaData:dataCopy bundleType:getBundleType];
  }

  else
  {
    getBundleType = [(MOEventBundle *)self metaData];
    getBundleType2 = [(MOEventBundle *)self getBundleType];
    v9 = [formatterCopy formattedBundlePromptsForMetaData:getBundleType bundleType:getBundleType2];

    formatterCopy = getBundleType2;
  }

  return v9;
}

- (BOOL)hasSuggestionEngagementEvent:(id)event
{
  eventCopy = event;
  suggestionEngagementEvents = [(MOEventBundle *)self suggestionEngagementEvents];
  v6 = [suggestionEngagementEvents containsObject:eventCopy];

  return v6;
}

- (void)setSuggestionEngagementEvent:(id)event
{
  eventCopy = event;
  suggestionEngagementEvents = [(MOEventBundle *)self suggestionEngagementEvents];

  if (!suggestionEngagementEvents)
  {
    v5 = objc_opt_new();
    [(MOEventBundle *)self setSuggestionEngagementEvents:v5];
  }

  v6 = eventCopy;
  if (eventCopy)
  {
    suggestionEngagementEvents2 = [(MOEventBundle *)self suggestionEngagementEvents];
    [suggestionEngagementEvents2 addObject:eventCopy];

    v6 = eventCopy;
  }
}

- (void)clearSuggestionEngagementEvent:(id)event
{
  eventCopy = event;
  suggestionEngagementEvents = [(MOEventBundle *)self suggestionEngagementEvents];
  [suggestionEngagementEvents removeObject:eventCopy];
}

- (BOOL)hasAppEntryEngagementEvent:(id)event
{
  eventCopy = event;
  appEntryEngagementEvents = [(MOEventBundle *)self appEntryEngagementEvents];
  v6 = [appEntryEngagementEvents containsObject:eventCopy];

  return v6;
}

- (void)setAppEntryEngagementEvent:(id)event
{
  eventCopy = event;
  appEntryEngagementEvents = [(MOEventBundle *)self appEntryEngagementEvents];

  if (!appEntryEngagementEvents)
  {
    v5 = objc_opt_new();
    [(MOEventBundle *)self setAppEntryEngagementEvents:v5];
  }

  v6 = eventCopy;
  if (eventCopy)
  {
    appEntryEngagementEvents2 = [(MOEventBundle *)self appEntryEngagementEvents];
    [appEntryEngagementEvents2 addObject:eventCopy];

    v6 = eventCopy;
  }
}

- (void)clearAppEntryEngagementEvent:(id)event
{
  eventCopy = event;
  appEntryEngagementEvents = [(MOEventBundle *)self appEntryEngagementEvents];
  [appEntryEngagementEvents removeObject:eventCopy];
}

- (double)duration
{
  endDate = [(MOEventBundle *)self endDate];
  startDate = [(MOEventBundle *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

+ (unint64_t)convertNSNumberToSensitiveLocationType:(id)type
{
  result = [type integerValue];
  if (result - 1 >= 5)
  {
    return 0;
  }

  return result;
}

+ (unint64_t)convertNSNumberToUninterestingLocationType:(id)type
{
  result = [type integerValue];
  if (result - 1 >= 5)
  {
    return 0;
  }

  return result;
}

+ (unint64_t)convertNSNumberToContactType:(id)type
{
  result = [type integerValue];
  if (result - 1 >= 4)
  {
    return 0;
  }

  return result;
}

+ (unint64_t)convertNSNumberToRoadType:(id)type
{
  result = [type integerValue];
  if (result - 1 >= 4)
  {
    return 0;
  }

  return result;
}

- (void)dateInterval
{
  v2 = 138412802;
  selfCopy = self;
  v4 = 2080;
  v5 = "[MOEventBundle dateInterval]";
  v6 = 1024;
  v7 = 1586;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "startDate is NOT earlier than endDate, bundle, %@ (in %s:%d)", &v2, 0x1Cu);
}

@end