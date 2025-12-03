@interface USUsageQuerying
+ (_DKKnowledgeStore)userKnowledgeStore;
+ (id)_chronologicalPublisherWithOptions:(id)options eventStreams:(id)streams;
+ (id)_generatePickupsByBundleIdentifierWithPickupIntervals:(id)intervals applicationUsageIntervals:(id)usageIntervals pickupsWithoutApplicationUsage:(unint64_t *)usage firstPickup:(id *)pickup;
+ (id)_newReportWithNonIntersectingScreenTimeIntervals:(id)intervals pickupsByBundleIdentifier:(id)identifier pickupsWithoutApplicationUsage:(unint64_t)usage firstPickup:(id)pickup longestSession:(id)session applicationUsageIntervals:(id)usageIntervals webUsageIntervals:(id)webUsageIntervals categoryUsageIntervals:(id)self0 aggregatedApplicationUsageIntervals:(id)self1 aggregatedWebUsageIntervals:(id)self2 categoryByBundleIdentifier:(id)self3 categoryByWebDomain:(id)self4 notifications:(id)self5 interval:(id)self6 timeZone:(id)self7 lastEventDate:(id)self8;
+ (id)getLocalDeviceIdentifierAndReturnError:(id *)error;
+ (void)_completion:(id)_completion options:(id)options;
+ (void)queryUsageDuringInterval:(id)interval partitionInterval:(double)partitionInterval adjustedStartDate:(id)date eventStreams:(id)streams categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)domain usageReportHandler:(id)handler completionHandler:(id)self0;
+ (void)synchronizeUsageWithCompletionHandler:(id)handler;
- (USUsageQuerying)init;
- (USUsageQuerying)initWithContext:(id)context coreDuetStream:(id)stream;
- (USUsageQuerying)initWithContext:(id)context eventStorage:(id)storage;
- (double)_computeUsageForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories applicationUsageEvents:(id)events webUsageEvents:(id)usageEvents nowPlayingEvents:(id)playingEvents videoUsageEvents:(id)self0 categoryByBundleIdentifier:(id)self1 categoryByWebDomain:(id)self2 interval:(id)self3 referenceDate:(id)self4 focalOnly:(BOOL)self5;
- (double)_generateUsageTimeWithApplicationUsageIntervals:(id)intervals webUsageIntervalsByDevice:(id)device categoryUsageIntervalsByDevice:(id)byDevice aggregatedApplicationUsageIntervalsByDevice:(id)intervalsByDevice aggregatedWebUsageIntervalsByDevice:(id)usageIntervalsByDevice categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)domain applications:(id)self0 webDomains:(id)self1 categories:(id)self2;
- (id)_calculateAllExemptBundleIdentifiersFromExemptApplications:(id)applications categoryByBundleIdentifier:(id)identifier;
- (id)_calculateAllExemptWebDomainsFromExemptApplications:(id)applications categoryByBundleIdentifier:(id)identifier;
- (id)_computeApplicationUsageWithEvents:(id)events exemptApplications:(id)applications exemptWebDomains:(id)domains unboundApplicationUsageIntervalsByDevice:(id *)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice categoryUsageIntervalsByDevice:(id)intervalsByDevice aggregatedApplicationUsageIntervalsByDevice:(id)self0 categoryByBundleIdentifier:(id)self1 partition:(id)self2 referenceDate:(id)self3 focalOnly:(BOOL)self4;
- (id)_computeNotificationsWithEvents:(id)events timeZoneByDevice:(id)device lastEventDateByDevice:(id)byDevice partition:(id)partition;
- (id)_computeScreenTime:(BOOL)time withEvents:(id)events intersectingScreenTimeIntervalsByDevice:(id *)device longestSessionByDevice:(id *)byDevice timeZoneByDevice:(id)zoneByDevice lastEventDateByDevice:(id)dateByDevice partition:(id)partition referenceDate:(id)self0;
- (id)_computeWebUsageWithEvents:(id)events exemptWebDomains:(id)domains timeZoneByDevice:(id)device lastEventDateByDevice:(id)byDevice categoryUsageIntervalsByDevice:(id)intervalsByDevice aggregatedApplicationUsageIntervalsByDevice:(id)usageIntervalsByDevice aggregatedWebUsageIntervalsByDevice:(id)webUsageIntervalsByDevice categoryByWebDomain:(id)self0 partition:(id)self1 referenceDate:(id)self2 focalOnly:(BOOL)self3;
- (id)_currentNowPlayingUsageIntervalsDuringInterval:(id)interval referenceDate:(id)date;
- (id)_currentScreenTimeIntervalDuringInterval:(id)interval usageStartDate:(id *)date referenceDate:(id)referenceDate;
- (id)_generateUncategorizedLocalWebUsageWithWebUsageIntervals:(id)intervals uncategorizedDomains:(id)domains;
- (id)_getBundleIdentiersFromApplicationUsageEvents:(id)events videoUsageEvents:(id)usageEvents interval:(id)interval referenceDate:(id)date focalOnly:(BOOL)only;
- (id)_getWebDomainsFromWebUsageEvents:(id)events videoUsageEvents:(id)usageEvents interval:(id)interval referenceDate:(id)date focalOnly:(BOOL)only;
- (id)queryForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories interval:(id)interval focalOnly:(BOOL)only error:(id *)error;
- (id)queryForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories interval:(id)interval segmentInterval:(double)segmentInterval error:(id *)error;
- (void)_computeNowPlayingUsageWithEvents:(id)events categoryUsageIntervalsByDevice:(id)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice partition:(id)partition referenceDate:(id)date;
- (void)_computeUncategorizedLocalWebUsageWithWebUsageEvents:(id)events uncategorizedDomains:(id)domains interval:(id)interval referenceDate:(id)date completionHandler:(id)handler;
- (void)_computeUsageWithDisplayBacklitEvents:(id)events applicationUsageEvents:(id)usageEvents webUsageEvents:(id)webUsageEvents nowPlayingEvents:(id)playingEvents videoUsageEvents:(id)videoUsageEvents notificationEvents:(id)notificationEvents categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)self0 interval:(id)self1 partitionInterval:(double)self2 referenceDate:(id)self3 focalOnly:(BOOL)self4 completionHandler:(id)self5;
- (void)_enumerateCurrentApplicationUsageIntervalsDuringInterval:(id)interval exemptApplications:(id)applications referenceDate:(id)date focalOnly:(BOOL)only block:(id)block;
- (void)_enumerateCurrentVideoUsageIntervalsDuringInterval:(id)interval exemptApplications:(id)applications exemptWebDomains:(id)domains referenceDate:(id)date block:(id)block;
- (void)_enumerateCurrentWebUsageIntervalsDuringInterval:(id)interval exemptWebDomains:(id)domains referenceDate:(id)date focalOnly:(BOOL)only block:(id)block;
- (void)_enumerateEvents:(id)events intervalEndDate:(id)date block:(id)block;
- (void)_updateLocalReports:(id)reports remoteReports:(id)remoteReports aggregateReports:(id)aggregateReports nonIntersectingScreenTimeIntervals:(id)intervals intersectingScreenTimeIntervals:(id)timeIntervals longestSessionByDevice:(id)device applicationUsageIntervals:(id)usageIntervals unboundApplicationUsageIntervals:(id)self0 webUsageIntervalsByDevice:(id)self1 categoryUsageIntervalsByDevice:(id)self2 aggregatedApplicationUsageIntervalsByDevice:(id)self3 aggregatedWebUsageIntervalsByDevice:(id)self4 categoryByBundleIdentifier:(id)self5 categoryByWebDomain:(id)self6 notificationsByDevice:(id)self7 interval:(id)self8 timeZoneByDevice:(id)self9 lastEventDateByDevice:(id)dateByDevice;
- (void)_updateNowPlayingUsageWithInterval:(id)interval event:(id)event deviceIdentifier:(id)identifier categoryUsageIntervalsByDevice:(id)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice;
- (void)_updateScreenTimeWithInterval:(id)interval rawInterval:(id)rawInterval deviceIdentifier:(id)identifier partition:(id)partition event:(id)event nonIntersectingScreenTimeIntervalsByDevice:(id)device intersectingScreenTimeIntervalsByDevice:(id)byDevice longestSessionByDevice:(id)self0 timeZoneByDevice:(id)self1 lastEventDateByDevice:(id)self2;
- (void)queryForUncategorizedLocalWebUsageDuringInterval:(id)interval completionHandler:(id)handler;
- (void)queryUsageDuringInterval:(id)interval partitionInterval:(double)partitionInterval focalOnly:(BOOL)only completionHandler:(id)handler;
@end

@implementation USUsageQuerying

- (USUsageQuerying)initWithContext:(id)context coreDuetStream:(id)stream
{
  contextCopy = context;
  streamCopy = stream;
  v13.receiver = self;
  v13.super_class = USUsageQuerying;
  v8 = [(USUsageQuerying *)&v13 init];
  context = v8->_context;
  v8->_context = contextCopy;
  v10 = contextCopy;

  duetStream = v8->_duetStream;
  v8->_duetStream = streamCopy;

  return v8;
}

- (USUsageQuerying)initWithContext:(id)context eventStorage:(id)storage
{
  v6 = MEMORY[0x277CF1930];
  storageCopy = storage;
  contextCopy = context;
  v9 = [[v6 alloc] initWithKnowledgeStore:storageCopy clientContext:contextCopy identifier:@"CoreDuetStream"];

  v10 = [(USUsageQuerying *)self initWithContext:contextCopy coreDuetStream:v9];
  return v10;
}

- (USUsageQuerying)init
{
  userContext = [MEMORY[0x277CFE318] userContext];
  coreDuetStream = [MEMORY[0x277CF1B58] coreDuetStream];
  v5 = [(USUsageQuerying *)self initWithContext:userContext coreDuetStream:coreDuetStream];

  return v5;
}

+ (_DKKnowledgeStore)userKnowledgeStore
{
  if (userKnowledgeStore_onceToken != -1)
  {
    +[USUsageQuerying userKnowledgeStore];
  }

  v3 = userKnowledgeStore_userKnowledgeStore;

  return v3;
}

uint64_t __37__USUsageQuerying_userKnowledgeStore__block_invoke()
{
  userKnowledgeStore_userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];

  return MEMORY[0x2821F96F8]();
}

+ (id)getLocalDeviceIdentifierAndReturnError:(id *)error
{
  userKnowledgeStore = [self userKnowledgeStore];
  v5 = [userKnowledgeStore sourceDeviceIdentityWithError:error];

  return v5;
}

+ (void)synchronizeUsageWithCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  MainBundle = CFBundleGetMainBundle();
  Identifier = CFBundleGetIdentifier(MainBundle);
  if (Identifier)
  {
    processName = Identifier;
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = processName;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Requesting high urgency synchronization on behalf of %{public}@", &v12, 0xCu);
  }

  v8 = qos_class_self();
  v9 = dispatch_get_global_queue(v8, 0);
  userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];
  [userKnowledgeStore synchronizeWithUrgency:10 client:@"UsageTracking" responseQueue:v9 completion:handlerCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)queryUsageDuringInterval:(id)interval partitionInterval:(double)partitionInterval focalOnly:(BOOL)only completionHandler:(id)handler
{
  onlyCopy = only;
  v170 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v147 = objc_opt_new();
  selfCopy = self;
  duetStream = [(USUsageQuerying *)self duetStream];
  v11 = intervalCopy;
  v12 = objc_opt_new();
  allDevices = [MEMORY[0x277CFE1E0] allDevices];
  [v12 setDeviceIDs:allDevices];

  displayIsBacklit = [MEMORY[0x277CFE298] displayIsBacklit];
  v161 = displayIsBacklit;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:1];
  [v12 setEventStreams:v15];

  v16 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v163 = v16;
  v17 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v164 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v163 count:2];
  [v12 setSortDescriptors:v18];

  v19 = MEMORY[0x277CFE260];
  startDate = [v11 startDate];
  endDate = [v11 endDate];
  v22 = [v19 predicateForEventsIntersectingDateRangeFrom:startDate to:endDate];

  v23 = MEMORY[0x277CFE260];
  v24 = [MEMORY[0x277CFE1A0] yes];
  v25 = [v23 predicateForEventsWithCategoryValue:v24];

  v26 = objc_alloc(MEMORY[0x277CCA920]);
  v168 = v22;
  v169 = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v168 count:2];

  v28 = [v26 initWithType:1 subpredicates:v27];
  [v12 setPredicate:v28];

  v29 = [duetStream publisherForQuery:v12];

  collect = [v29 collect];

  duetStream2 = [(USUsageQuerying *)self duetStream];
  v30 = MEMORY[0x277CFE260];
  v31 = v11;
  startDate2 = [v31 startDate];
  endDate2 = [v31 endDate];
  v34 = [v30 predicateForEventsIntersectingDateRangeFrom:startDate2 to:endDate2];

  usageType = [MEMORY[0x277CFE1D0] usageType];
  v139 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType andIntegerValue:1];
  v148 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType];
  v36 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v148];
  v37 = MEMORY[0x277CCA920];
  v163 = v139;
  v164 = v36;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v163 count:2];
  v39 = [v37 orPredicateWithSubpredicates:v38];

  v40 = objc_alloc(MEMORY[0x277CCA920]);
  v168 = v34;
  v169 = v39;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v168 count:2];
  v42 = [v40 initWithType:1 subpredicates:v41];

  v43 = objc_opt_new();
  allDevices2 = [MEMORY[0x277CFE1E0] allDevices];
  [v43 setDeviceIDs:allDevices2];

  appUsageStream = [MEMORY[0x277CFE298] appUsageStream];
  v167 = appUsageStream;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:1];
  [v43 setEventStreams:v46];

  if (onlyCopy)
  {
    v47 = v42;
  }

  else
  {
    v47 = v34;
  }

  [v43 setPredicate:v47];
  v48 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v161 = v48;
  v49 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v162 = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:2];

  [v43 setSortDescriptors:v50];
  v51 = [duetStream2 publisherForQuery:v43];

  collect2 = [v51 collect];

  duetStream3 = [(USUsageQuerying *)selfCopy duetStream];
  v52 = v31;
  v53 = MEMORY[0x277CFE260];
  startDate3 = [v52 startDate];
  endDate3 = [v52 endDate];
  v56 = [v53 predicateForEventsIntersectingDateRangeFrom:startDate3 to:endDate3];

  usageType2 = [MEMORY[0x277CFE1D0] usageType];
  v58 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType2 andIntegerValue:1];
  v59 = v58;
  if (!onlyCopy)
  {
    v60 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType2 andIntegerValue:0];
    v61 = objc_alloc(MEMORY[0x277CCA920]);
    v163 = v58;
    v164 = v60;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v163 count:2];
    v59 = [v61 initWithType:2 subpredicates:v62];
  }

  v63 = objc_opt_new();
  allDevices3 = [MEMORY[0x277CFE1E0] allDevices];
  [v63 setDeviceIDs:allDevices3];

  appWebUsageStream = [MEMORY[0x277CFE298] appWebUsageStream];
  v167 = appWebUsageStream;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:1];
  [v63 setEventStreams:v66];

  v67 = objc_alloc(MEMORY[0x277CCA920]);
  v168 = v56;
  v169 = v59;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v168 count:2];
  v69 = [v67 initWithType:1 subpredicates:v68];
  [v63 setPredicate:v69];

  v70 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v161 = v70;
  v71 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v162 = v71;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:2];
  [v63 setSortDescriptors:v72];

  v73 = [duetStream3 publisherForQuery:v63];

  collect3 = [v73 collect];

  duetStream4 = [(USUsageQuerying *)selfCopy duetStream];
  v74 = MEMORY[0x277CFE260];
  v75 = v52;
  startDate4 = [v75 startDate];
  endDate4 = [v75 endDate];
  v135 = [v74 predicateForEventsIntersectingDateRangeFrom:startDate4 to:endDate4];

  v78 = MEMORY[0x277CFE260];
  playing = [MEMORY[0x277CFE248] playing];
  v134 = [v78 predicateForObjectsWithMetadataKey:playing andIntegerValue:1];

  v80 = MEMORY[0x277CFE260];
  mediaType = [MEMORY[0x277CFE248] mediaType];
  v82 = [v80 predicateForObjectsWithMetadataKey:mediaType andStringValue:*MEMORY[0x277D27CB8]];

  v141 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:@"com.apple.quicklook.QuickLookUIService"];
  v136 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:@"com.apple.quicklook.extension.previewUI"];
  v83 = objc_alloc(MEMORY[0x277CCA920]);
  v168 = v141;
  v169 = v136;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v168 count:2];
  v85 = [v83 initWithType:2 subpredicates:v84];

  v86 = objc_opt_new();
  allDevices4 = [MEMORY[0x277CFE1E0] allDevices];
  [v86 setDeviceIDs:allDevices4];

  nowPlayingStream = [MEMORY[0x277CFE298] nowPlayingStream];
  v167 = nowPlayingStream;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:1];
  [v86 setEventStreams:v89];

  v90 = objc_alloc(MEMORY[0x277CCA920]);
  v163 = v135;
  v164 = v134;
  v165 = v82;
  v166 = v85;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v163 count:4];
  v92 = [v90 initWithType:1 subpredicates:v91];
  [v86 setPredicate:v92];

  v93 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v161 = v93;
  v94 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v162 = v94;
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:2];

  [v86 setSortDescriptors:v95];
  v96 = [duetStream4 publisherForQuery:v86];

  collect4 = [v96 collect];

  duetStream5 = [(USUsageQuerying *)selfCopy duetStream];
  v98 = v75;
  v99 = objc_opt_new();
  allDevices5 = [MEMORY[0x277CFE1E0] allDevices];
  [v99 setDeviceIDs:allDevices5];

  appMediaUsageStream = [MEMORY[0x277CFE298] appMediaUsageStream];
  v168 = appMediaUsageStream;
  v102 = [MEMORY[0x277CBEA60] arrayWithObjects:&v168 count:1];
  [v99 setEventStreams:v102];

  v103 = MEMORY[0x277CFE260];
  startDate5 = [v98 startDate];
  endDate5 = [v98 endDate];
  v106 = [v103 predicateForEventsIntersectingDateRangeFrom:startDate5 to:endDate5];
  [v99 setPredicate:v106];

  v107 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v163 = v107;
  v108 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v164 = v108;
  v109 = [MEMORY[0x277CBEA60] arrayWithObjects:&v163 count:2];

  [v99 setSortDescriptors:v109];
  v110 = [duetStream5 publisherForQuery:v99];

  collect5 = [v110 collect];

  duetStream6 = [(USUsageQuerying *)selfCopy duetStream];
  v112 = v98;
  v113 = objc_opt_new();
  allDevices6 = [MEMORY[0x277CFE1E0] allDevices];
  [v113 setDeviceIDs:allDevices6];

  notificationUsageStream = [MEMORY[0x277CFE298] notificationUsageStream];
  v168 = notificationUsageStream;
  v116 = [MEMORY[0x277CBEA60] arrayWithObjects:&v168 count:1];
  [v113 setEventStreams:v116];

  v117 = MEMORY[0x277CFE260];
  startDate6 = [v112 startDate];
  endDate6 = [v112 endDate];
  v120 = [v117 predicateForEventsWithStartInDateRangeFrom:startDate6 to:endDate6];

  v121 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:@"Receive"];
  v122 = objc_alloc(MEMORY[0x277CCA920]);
  v163 = v120;
  v164 = v121;
  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v163 count:2];

  v124 = [v122 initWithType:1 subpredicates:v123];
  [v113 setPredicate:v124];

  v125 = [duetStream6 publisherForQuery:v113];

  collect6 = [v125 collect];

  v160[0] = collect2;
  v160[1] = collect3;
  v160[2] = collect4;
  v160[3] = collect5;
  v160[4] = collect6;
  v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:5];
  v128 = [collect zipWithOthers:v127];
  v158[0] = MEMORY[0x277D85DD0];
  v158[1] = 3221225472;
  v158[2] = __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke;
  v158[3] = &unk_279E09C00;
  v159 = handlerCopy;
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2;
  v152[3] = &unk_279E09C50;
  v152[4] = selfCopy;
  v153 = v112;
  v157 = onlyCopy;
  v154 = v147;
  v155 = v159;
  partitionIntervalCopy = partitionInterval;
  v129 = v159;
  v130 = v147;
  v131 = v112;
  v132 = [v128 sinkWithCompletion:v158 receiveInput:v152];

  v133 = *MEMORY[0x277D85DE8];
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 state] == 1)
  {
    v3 = *(a1 + 32);
    v4 = [v5 error];
    (*(v3 + 16))(v3, 0, 0, 0, v4);
  }
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] != 6)
  {
    __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2_cold_1();
  }

  v39 = [v3 objectAtIndexedSubscript:0];
  v4 = [v3 objectAtIndexedSubscript:1];
  v42 = [v3 objectAtIndexedSubscript:2];
  v41 = [v3 objectAtIndexedSubscript:3];
  v5 = [v3 objectAtIndexedSubscript:4];
  v40 = v3;
  v6 = [v3 objectAtIndexedSubscript:5];
  v7 = [MEMORY[0x277CFE158] appBundleID];
  v8 = [MEMORY[0x277CFE240] bundleID];
  v36 = a1;
  v37 = v5;
  v38 = v4;
  v9 = [*(a1 + 32) _getBundleIdentiersFromApplicationUsageEvents:v4 videoUsageEvents:v5 interval:*(a1 + 40) referenceDate:*(a1 + 48) focalOnly:*(a1 + 72)];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v59;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v59 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v58 + 1) + 8 * i);
        v16 = [v15 metadata];
        v17 = [v16 objectForKeyedSubscript:v7];

        v18 = [v15 metadata];
        v19 = [v18 objectForKeyedSubscript:v8];

        if (v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        v21 = v20;
        if (v21)
        {
          [v9 addObject:v21];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2_cold_2(&buf, v57);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v22 = v38;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2_cold_3();
    }

    v23 = [MEMORY[0x277CF9650] sharedCategories];
    v24 = [v9 array];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_38;
    v43[3] = &unk_279E09C28;
    v25 = *(v36 + 56);
    v26 = *(v36 + 32);
    v53 = v25;
    v43[4] = v26;
    v44 = v42;
    v27 = v37;
    v45 = v37;
    v46 = *(v36 + 40);
    v28 = *(v36 + 48);
    v55 = *(v36 + 72);
    v47 = v28;
    v48 = v23;
    v29 = v39;
    v49 = v39;
    v50 = v38;
    v51 = v41;
    v52 = v10;
    v54 = *(v36 + 64);
    v30 = v23;
    [v30 categoriesForBundleIDs:v24 completionHandler:v43];

    v31 = v42;
    v32 = v41;
  }

  else
  {
    v33 = *(v36 + 40);
    LOBYTE(v35) = *(v36 + 72);
    v22 = v38;
    v29 = v39;
    v32 = v41;
    v31 = v42;
    v27 = v37;
    [*(v36 + 32) _computeUsageWithDisplayBacklitEvents:v39 applicationUsageEvents:v38 webUsageEvents:v42 nowPlayingEvents:v41 videoUsageEvents:v37 notificationEvents:v10 categoryByBundleIdentifier:*(v36 + 64) categoryByWebDomain:0 interval:0 partitionInterval:v33 referenceDate:*(v36 + 48) focalOnly:v35 completionHandler:*(v36 + 56)];
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _getWebDomainsFromWebUsageEvents:*(a1 + 40) videoUsageEvents:*(a1 + 48) interval:*(a1 + 56) referenceDate:*(a1 + 64) focalOnly:*(a1 + 128)];
    if ([v4 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_38_cold_1();
      }

      v5 = *(a1 + 72);
      v6 = [v4 array];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_39;
      v11[3] = &unk_279E09C28;
      v7 = *(a1 + 112);
      v8 = *(a1 + 32);
      v21 = v7;
      v11[4] = v8;
      v12 = *(a1 + 80);
      v13 = *(a1 + 88);
      v14 = *(a1 + 40);
      v15 = *(a1 + 96);
      v16 = *(a1 + 48);
      v17 = *(a1 + 104);
      v18 = v3;
      v19 = *(a1 + 56);
      v22 = *(a1 + 120);
      v20 = *(a1 + 64);
      v23 = *(a1 + 128);
      [v5 categoriesForDomainNames:v6 completionHandler:v11];
    }

    else
    {
      v9 = *(a1 + 56);
      LOBYTE(v10) = *(a1 + 128);
      [*(a1 + 32) _computeUsageWithDisplayBacklitEvents:*(a1 + 80) applicationUsageEvents:*(a1 + 88) webUsageEvents:*(a1 + 40) nowPlayingEvents:*(a1 + 96) videoUsageEvents:*(a1 + 48) notificationEvents:*(a1 + 104) categoryByBundleIdentifier:*(a1 + 120) categoryByWebDomain:v3 interval:0 partitionInterval:v9 referenceDate:*(a1 + 64) focalOnly:v10 completionHandler:*(a1 + 112)];
    }
  }

  else
  {
    (*(*(a1 + 112) + 16))();
  }
}

uint64_t __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_39(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    LOBYTE(v5) = *(a1 + 128);
    return [*(a1 + 32) _computeUsageWithDisplayBacklitEvents:*(a1 + 40) applicationUsageEvents:*(a1 + 48) webUsageEvents:*(a1 + 56) nowPlayingEvents:*(a1 + 64) videoUsageEvents:*(a1 + 72) notificationEvents:*(a1 + 80) categoryByBundleIdentifier:*(a1 + 120) categoryByWebDomain:*(a1 + 88) interval:a2 partitionInterval:*(a1 + 96) referenceDate:*(a1 + 104) focalOnly:v5 completionHandler:*(a1 + 112)];
  }

  else
  {
    v4 = *(*(a1 + 112) + 16);

    return v4();
  }
}

- (void)_computeUsageWithDisplayBacklitEvents:(id)events applicationUsageEvents:(id)usageEvents webUsageEvents:(id)webUsageEvents nowPlayingEvents:(id)playingEvents videoUsageEvents:(id)videoUsageEvents notificationEvents:(id)notificationEvents categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)self0 interval:(id)self1 partitionInterval:(double)self2 referenceDate:(id)self3 focalOnly:(BOOL)self4 completionHandler:(id)self5
{
  eventsCopy = events;
  usageEventsCopy = usageEvents;
  webUsageEventsCopy = webUsageEvents;
  playingEventsCopy = playingEvents;
  videoUsageEventsCopy = videoUsageEvents;
  notificationEventsCopy = notificationEvents;
  identifierCopy = identifier;
  domainCopy = domain;
  intervalCopy = interval;
  dateCopy = date;
  handlerCopy = handler;
  v66 = objc_opt_new();
  v65 = objc_opt_new();
  v64 = objc_opt_new();
  v56 = eventsCopy;
  v63 = [eventsCopy mutableCopy];
  v55 = usageEventsCopy;
  v28 = [usageEventsCopy mutableCopy];
  v54 = webUsageEventsCopy;
  v29 = [webUsageEventsCopy mutableCopy];
  v53 = playingEventsCopy;
  v60 = [playingEventsCopy mutableCopy];
  v51 = notificationEventsCopy;
  v30 = [notificationEventsCopy mutableCopy];
  v62 = v28;
  [v28 addObjectsFromArray:videoUsageEventsCopy];
  v61 = v29;
  v52 = videoUsageEventsCopy;
  [v29 addObjectsFromArray:videoUsageEventsCopy];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v50 = intervalCopy;
  [intervalCopy duration];
  if (v33 <= partitionInterval)
  {
    v34 = endDate;
  }

  else
  {
    v34 = [startDate dateByAddingTimeInterval:partitionInterval];
  }

  v35 = v34;
  v59 = v30;
  v58 = endDate;
  if ([startDate compare:endDate] == -1)
  {
    do
    {
      v37 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate endDate:v35];
      v38 = objc_opt_new();
      v39 = objc_opt_new();
      v40 = objc_opt_new();
      v41 = objc_opt_new();
      v42 = objc_opt_new();
      v77 = 0;
      v78[0] = 0;
      v75 = [(USUsageQuerying *)self _computeScreenTime:1 withEvents:v63 intersectingScreenTimeIntervalsByDevice:v78 longestSessionByDevice:&v77 timeZoneByDevice:v41 lastEventDateByDevice:v42 partition:v37 referenceDate:dateCopy];
      v74 = v78[0];
      v73 = v77;
      v76 = 0;
      LOBYTE(v48) = only;
      v72 = [(USUsageQuerying *)self _computeApplicationUsageWithEvents:v62 exemptApplications:0 exemptWebDomains:0 unboundApplicationUsageIntervalsByDevice:&v76 timeZoneByDevice:v41 lastEventDateByDevice:v42 categoryUsageIntervalsByDevice:v38 aggregatedApplicationUsageIntervalsByDevice:v39 categoryByBundleIdentifier:identifierCopy partition:v37 referenceDate:dateCopy focalOnly:v48];
      v71 = v76;
      LOBYTE(v47) = only;
      v43 = v40;
      v70 = [(USUsageQuerying *)self _computeWebUsageWithEvents:v61 exemptWebDomains:0 timeZoneByDevice:v41 lastEventDateByDevice:v42 categoryUsageIntervalsByDevice:v38 aggregatedApplicationUsageIntervalsByDevice:v39 aggregatedWebUsageIntervalsByDevice:v40 categoryByWebDomain:domainCopy partition:v37 referenceDate:dateCopy focalOnly:v47];
      [(USUsageQuerying *)self _computeNowPlayingUsageWithEvents:v60 categoryUsageIntervalsByDevice:v38 timeZoneByDevice:v41 lastEventDateByDevice:v42 partition:v37 referenceDate:dateCopy];
      if ([v59 count])
      {
        v44 = [(USUsageQuerying *)self _computeNotificationsWithEvents:v59 timeZoneByDevice:v41 lastEventDateByDevice:v42 partition:v37];
      }

      else
      {
        v44 = 0;
      }

      [(USUsageQuerying *)self _updateLocalReports:v66 remoteReports:v65 aggregateReports:v64 nonIntersectingScreenTimeIntervals:v75 intersectingScreenTimeIntervals:v74 longestSessionByDevice:v73 applicationUsageIntervals:v72 unboundApplicationUsageIntervals:v71 webUsageIntervalsByDevice:v70 categoryUsageIntervalsByDevice:v38 aggregatedApplicationUsageIntervalsByDevice:v39 aggregatedWebUsageIntervalsByDevice:v43 categoryByBundleIdentifier:identifierCopy categoryByWebDomain:domainCopy notificationsByDevice:v44 interval:v37 timeZoneByDevice:v41 lastEventDateByDevice:v42];
      v36 = v35;

      [v58 timeIntervalSinceDate:v36];
      if (v45 <= partitionInterval)
      {
        v46 = v58;
      }

      else
      {
        v46 = [v36 dateByAddingTimeInterval:partitionInterval];
      }

      v35 = v46;

      startDate = v36;
    }

    while ([v36 compare:v58] == -1);
  }

  else
  {
    v36 = startDate;
  }

  handlerCopy[2](handlerCopy, v66, v65, v64, 0);
}

- (void)_updateLocalReports:(id)reports remoteReports:(id)remoteReports aggregateReports:(id)aggregateReports nonIntersectingScreenTimeIntervals:(id)intervals intersectingScreenTimeIntervals:(id)timeIntervals longestSessionByDevice:(id)device applicationUsageIntervals:(id)usageIntervals unboundApplicationUsageIntervals:(id)self0 webUsageIntervalsByDevice:(id)self1 categoryUsageIntervalsByDevice:(id)self2 aggregatedApplicationUsageIntervalsByDevice:(id)self3 aggregatedWebUsageIntervalsByDevice:(id)self4 categoryByBundleIdentifier:(id)self5 categoryByWebDomain:(id)self6 notificationsByDevice:(id)self7 interval:(id)self8 timeZoneByDevice:(id)self9 lastEventDateByDevice:(id)dateByDevice
{
  reportsCopy = reports;
  remoteReportsCopy = remoteReports;
  aggregateReportsCopy = aggregateReports;
  intervalsCopy = intervals;
  timeIntervalsCopy = timeIntervals;
  deviceCopy = device;
  usageIntervalsCopy = usageIntervals;
  applicationUsageIntervalsCopy = applicationUsageIntervals;
  byDeviceCopy = byDevice;
  intervalsByDeviceCopy = intervalsByDevice;
  usageIntervalsByDeviceCopy = usageIntervalsByDevice;
  webUsageIntervalsByDeviceCopy = webUsageIntervalsByDevice;
  identifierCopy = identifier;
  domainCopy = domain;
  notificationsByDeviceCopy = notificationsByDevice;
  intervalCopy = interval;
  zoneByDeviceCopy = zoneByDevice;
  dateByDeviceCopy = dateByDevice;
  v84 = zoneByDeviceCopy;
  v35 = zoneByDeviceCopy;
  v36 = remoteReportsCopy;
  if ([v35 count])
  {
    v67 = webUsageIntervalsByDeviceCopy;
    v68 = usageIntervalsByDeviceCopy;
    v69 = intervalsByDeviceCopy;
    v70 = byDeviceCopy;
    v71 = applicationUsageIntervalsCopy;
    v72 = usageIntervalsCopy;
    v73 = deviceCopy;
    v74 = timeIntervalsCopy;
    v75 = intervalsCopy;
    v114 = 0;
    v115 = &v114;
    v116 = 0x2020000000;
    v117 = 0;
    v108 = 0;
    v109 = &v108;
    v110 = 0x3032000000;
    v111 = __Block_byref_object_copy__0;
    v112 = __Block_byref_object_dispose__0;
    v113 = 0;
    v37 = objc_opt_new();
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke;
    v86[3] = &unk_279E09CA0;
    v38 = intervalsCopy;
    v87 = v38;
    v39 = usageIntervalsCopy;
    v88 = v39;
    v89 = applicationUsageIntervalsCopy;
    v40 = byDeviceCopy;
    v90 = v40;
    v41 = intervalsByDeviceCopy;
    v91 = v41;
    v42 = v68;
    v92 = v42;
    v43 = v67;
    v93 = v43;
    v94 = v74;
    v44 = v73;
    v95 = v44;
    v62 = notificationsByDeviceCopy;
    v96 = v62;
    selfCopy = self;
    v105 = &v114;
    v106 = &v108;
    v66 = v37;
    v98 = v66;
    v45 = dateByDeviceCopy;
    v99 = v45;
    v107 = a2;
    v61 = identifierCopy;
    v100 = v61;
    v60 = domainCopy;
    v101 = v60;
    v46 = intervalCopy;
    v102 = v46;
    v103 = reportsCopy;
    v104 = remoteReportsCopy;
    [v84 enumerateKeysAndObjectsUsingBlock:v86];
    v65 = [v84 objectForKeyedSubscript:@"AllDevices"];
    v64 = [v38 objectForKeyedSubscript:@"AllDevices"];
    v47 = [v39 objectForKeyedSubscript:@"AllDevices"];
    v48 = [v40 objectForKeyedSubscript:@"AllDevices"];
    v49 = [v41 objectForKeyedSubscript:@"AllDevices"];
    v50 = [v42 objectForKeyedSubscript:@"AllDevices"];
    v51 = [v43 objectForKeyedSubscript:@"AllDevices"];
    v52 = [v44 objectForKeyedSubscript:@"AllDevices"];
    v53 = [v62 objectForKeyedSubscript:@"AllDevices"];
    v54 = v53;
    v55 = MEMORY[0x277CBEC10];
    if (v53)
    {
      v55 = v53;
    }

    v56 = v55;

    v57 = [v45 objectForKeyedSubscript:@"AllDevices"];
    if (!v57)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"USUsageQuerying.m" lineNumber:359 description:@"lastEventDate for a USUsageReport must not be nil"];
    }

    v58 = [objc_opt_class() _newReportWithNonIntersectingScreenTimeIntervals:v64 pickupsByBundleIdentifier:v66 pickupsWithoutApplicationUsage:v115[3] firstPickup:v109[5] longestSession:v52 applicationUsageIntervals:v47 webUsageIntervals:v48 categoryUsageIntervals:v49 aggregatedApplicationUsageIntervals:v50 aggregatedWebUsageIntervals:v51 categoryByBundleIdentifier:v61 categoryByWebDomain:v60 notifications:v56 interval:v46 timeZone:v65 lastEventDate:v57];
    [aggregateReportsCopy addObject:v58];

    _Block_object_dispose(&v108, 8);
    _Block_object_dispose(&v114, 8);
    v36 = remoteReportsCopy;
    timeIntervalsCopy = v74;
    intervalsCopy = v75;
    usageIntervalsCopy = v72;
    deviceCopy = v73;
    byDeviceCopy = v70;
    applicationUsageIntervalsCopy = v71;
    usageIntervalsByDeviceCopy = v68;
    intervalsByDeviceCopy = v69;
    webUsageIntervalsByDeviceCopy = v67;
  }
}

void __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"AllDevices"])
  {
    goto LABEL_17;
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v9 = [*(a1 + 48) objectForKeyedSubscript:v5];
  v35 = [*(a1 + 56) objectForKeyedSubscript:v5];
  v34 = [*(a1 + 64) objectForKeyedSubscript:v5];
  v33 = [*(a1 + 72) objectForKeyedSubscript:v5];
  v32 = [*(a1 + 80) objectForKeyedSubscript:v5];
  v10 = [*(a1 + 88) objectForKeyedSubscript:v5];
  v31 = [*(a1 + 96) objectForKeyedSubscript:v5];
  v11 = [*(a1 + 104) objectForKeyedSubscript:v5];
  v12 = v11;
  v13 = MEMORY[0x277CBEC10];
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v39 = 0;
  v15 = *(a1 + 112);
  v38 = 0;
  v29 = v10;
  v30 = v9;
  v16 = [objc_opt_class() _generatePickupsByBundleIdentifierWithPickupIntervals:v10 applicationUsageIntervals:v9 pickupsWithoutApplicationUsage:&v39 firstPickup:&v38];
  v17 = v38;
  v18 = v38;
  v19 = v18;
  *(*(*(a1 + 176) + 8) + 24) += v39;
  v20 = *(*(a1 + 184) + 8);
  if (!*(v20 + 40))
  {
    goto LABEL_7;
  }

  if ([v18 compare:?] == -1)
  {
    v20 = *(*(a1 + 184) + 8);
LABEL_7:
    objc_storeStrong((v20 + 40), v17);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke_2;
  v36[3] = &unk_279E09C78;
  v37 = *(a1 + 120);
  [v16 enumerateKeysAndObjectsUsingBlock:v36];
  v21 = [*(a1 + 128) objectForKeyedSubscript:v5];
  if (!v21)
  {
    __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke_cold_1(a1, (a1 + 112));
  }

  v22 = *(a1 + 112);
  v23 = [objc_opt_class() _newReportWithNonIntersectingScreenTimeIntervals:v7 pickupsByBundleIdentifier:v16 pickupsWithoutApplicationUsage:v39 firstPickup:v19 longestSession:v31 applicationUsageIntervals:v8 webUsageIntervals:v35 categoryUsageIntervals:v34 aggregatedApplicationUsageIntervals:v33 aggregatedWebUsageIntervals:v32 categoryByBundleIdentifier:*(a1 + 136) categoryByWebDomain:*(a1 + 144) notifications:v14 interval:*(a1 + 152) timeZone:v6 lastEventDate:v21];

  if ([v5 isEqualToString:@"LocalDevice"])
  {
    [*(a1 + 160) addObject:v23];
  }

  else
  {
    v24 = [*(a1 + 168) objectForKeyedSubscript:v5];
    v25 = v24;
    if (v24)
    {
      [v24 addObject:v23];
    }

    else
    {
      v28 = v8;
      v26 = v7;
      v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v23, 0}];
      [*(a1 + 168) setObject:v27 forKeyedSubscript:v5];

      v7 = v26;
      v8 = v28;
    }
  }

LABEL_17:
}

void __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v12 = [v5 objectForKeyedSubscript:v7];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v12 unsignedIntegerValue];
  v10 = [v6 unsignedIntegerValue];

  v11 = [v8 numberWithUnsignedInteger:v10 + v9];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v7];
}

+ (id)_generatePickupsByBundleIdentifierWithPickupIntervals:(id)intervals applicationUsageIntervals:(id)usageIntervals pickupsWithoutApplicationUsage:(unint64_t *)usage firstPickup:(id *)pickup
{
  pickupCopy = pickup;
  v49 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  usageIntervalsCopy = usageIntervals;
  v30 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = intervalsCopy;
  startDate = 0;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v48 count:16];
  if (!v9)
  {
    v27 = 0;
    goto LABEL_17;
  }

  v10 = *v32;
  v27 = 0;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v31 + 1) + 8 * i);
      [v12 duration];
      v14 = v13;
      if (v13 >= 5.0)
      {
        v15 = usageIntervalsCopy;
        v16 = v12;
        v42 = 0;
        v43 = &v42;
        v44 = 0x3032000000;
        v45 = __Block_byref_object_copy__0;
        v46 = __Block_byref_object_dispose__0;
        v47 = 0;
        v40[0] = 0;
        v40[1] = v40;
        v40[2] = 0x3032000000;
        v40[3] = __Block_byref_object_copy__0;
        v40[4] = __Block_byref_object_dispose__0;
        v41 = 0;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __USTrustIdentifierKeyedNonIntersectingIntervalsGetKeyOfEarliestIntersectionWithThreshold_block_invoke;
        v35[3] = &unk_279E0A150;
        v17 = v16;
        v36 = v17;
        v37 = v40;
        v38 = &v42;
        v39 = 0x4014000000000000;
        [v15 enumerateKeysAndObjectsUsingBlock:v35];
        v18 = v43[5];

        _Block_object_dispose(v40, 8);
        _Block_object_dispose(&v42, 8);

        identifier = [v18 identifier];
        if (identifier)
        {
          v20 = [v30 objectForKeyedSubscript:identifier];
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "unsignedIntegerValue") + 1}];
          [v30 setObject:v21 forKeyedSubscript:identifier];

          if (!startDate)
          {
            goto LABEL_9;
          }
        }

        else if (v14 >= 9.0)
        {
          ++v27;
          if (!startDate)
          {
LABEL_9:
            startDate = [v17 startDate];
          }
        }

        continue;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v31 objects:v48 count:16];
  }

  while (v9);
LABEL_17:

  *usage = v27;
  v22 = startDate;
  *pickupCopy = startDate;

  v23 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)_newReportWithNonIntersectingScreenTimeIntervals:(id)intervals pickupsByBundleIdentifier:(id)identifier pickupsWithoutApplicationUsage:(unint64_t)usage firstPickup:(id)pickup longestSession:(id)session applicationUsageIntervals:(id)usageIntervals webUsageIntervals:(id)webUsageIntervals categoryUsageIntervals:(id)self0 aggregatedApplicationUsageIntervals:(id)self1 aggregatedWebUsageIntervals:(id)self2 categoryByBundleIdentifier:(id)self3 categoryByWebDomain:(id)self4 notifications:(id)self5 interval:(id)self6 timeZone:(id)self7 lastEventDate:(id)self8
{
  v107 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  identifierCopy = identifier;
  pickupCopy = pickup;
  sessionCopy = session;
  usageIntervalsCopy = usageIntervals;
  webUsageIntervalsCopy = webUsageIntervals;
  categoryUsageIntervalsCopy = categoryUsageIntervals;
  applicationUsageIntervalsCopy = applicationUsageIntervals;
  aggregatedWebUsageIntervalsCopy = aggregatedWebUsageIntervals;
  bundleIdentifierCopy = bundleIdentifier;
  domainCopy = domain;
  notificationsCopy = notifications;
  intervalCopy = interval;
  zoneCopy = zone;
  dateCopy = date;
  v59 = intervalsCopy;
  if (intervalsCopy)
  {
    v27 = intervalsCopy;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v95 objects:&v103 count:16];
    if (v28)
    {
      v29 = *v96;
      v30 = 0.0;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v96 != v29)
          {
            objc_enumerationMutation(v27);
          }

          [*(*(&v95 + 1) + 8 * i) duration];
          v30 = v30 + v32;
        }

        v28 = [v27 countByEnumeratingWithState:&v95 objects:&v103 count:16];
      }

      while (v28);
    }

    else
    {
      v30 = 0.0;
    }
  }

  else
  {
    v30 = 0.0;
  }

  v33 = applicationUsageIntervalsCopy;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v34 = objc_opt_new();
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke;
  v91[3] = &unk_279E09CC8;
  v94 = &v103;
  v35 = bundleIdentifierCopy;
  v92 = v35;
  v36 = v34;
  v93 = v36;
  [usageIntervalsCopy enumerateKeysAndObjectsUsingBlock:v91];
  v37 = aggregatedWebUsageIntervalsCopy;
  *&v95 = 0;
  *(&v95 + 1) = &v95;
  v96 = 0x2020000000uLL;
  v38 = objc_opt_new();
  v39 = objc_opt_new();
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_2;
  v86[3] = &unk_279E09CF0;
  v90 = &v95;
  v62 = domainCopy;
  v87 = v62;
  v40 = v38;
  v88 = v40;
  v41 = v39;
  v89 = v41;
  [webUsageIntervalsCopy enumerateKeysAndObjectsUsingBlock:v86];
  if (v104[3] >= *(*(&v95 + 1) + 24))
  {
    v42 = v104[3];
  }

  else
  {
    v42 = *(*(&v95 + 1) + 24);
  }

  if (v30 >= v42)
  {
    v42 = v30;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v100 = v30;
    v101 = 2048;
    v102 = v42;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Adjusting total Screen Time usage (%f) to be at least as long as the max application or web usage (%f)", buf, 0x16u);
  }

  v43 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_54;
  v83[3] = &unk_279E09D18;
  v58 = v35;
  v84 = v58;
  v44 = v43;
  v85 = v44;
  [notificationsCopy enumerateKeysAndObjectsUsingBlock:v83];
  v45 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(categoryUsageIntervalsCopy, "count")}];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_2_56;
  v74[3] = &unk_279E09DE0;
  v46 = v40;
  v75 = v46;
  v47 = v44;
  v76 = v47;
  v48 = v36;
  v77 = v48;
  v49 = v33;
  v78 = v49;
  v50 = identifierCopy;
  v79 = v50;
  v51 = v41;
  v80 = v51;
  v52 = v37;
  v81 = v52;
  v53 = v45;
  v82 = v53;
  [categoryUsageIntervalsCopy enumerateKeysAndObjectsUsingBlock:v74];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_7;
  v72[3] = &unk_279E09E08;
  v54 = v53;
  v73 = v54;
  [v47 enumerateKeysAndObjectsUsingBlock:v72];
  v55 = [[USUsageReport alloc] initWithScreenTime:sessionCopy longestSession:v54 categoryUsage:usage pickupsWithoutApplicationUsage:pickupCopy firstPickup:intervalCopy interval:zoneCopy timeZone:v42 lastEventDate:dateCopy];

  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v103, 8);

  v56 = *MEMORY[0x277D85DE8];
  return v55;
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v32 + 1) + 8 * i) duration];
        v10 = v10 + v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v13 = *(*(a1 + 48) + 8);
  if (v10 > *(v13 + 24))
  {
    *(v13 + 24) = v10;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v15 = [v5 identifier];
  v16 = [*(a1 + 32) objectForKeyedSubscript:v15];
  v17 = [v16 identifier];
  v18 = v17;
  v19 = *MEMORY[0x277CF95E8];
  if (v17)
  {
    v19 = v17;
  }

  v20 = v19;

  v21 = [v16 canonicalBundleIdentifier];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v15;
  }

  v24 = v23;

  v25 = +[USTrustIdentifier identifierWithIdentifier:trusted:](USTrustIdentifier, "identifierWithIdentifier:trusted:", v24, [v5 trusted]);

  v26 = [*(a1 + 40) objectForKeyedSubscript:v20];
  v27 = [v26 objectForKeyedSubscript:v25];
  if (v27)
  {
    v28 = v27;
    v29 = v14;
    v30 = v5;
  }

  else
  {
    v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v14, v5, 0}];
    if (v26)
    {
      v27 = v26;
      v29 = v28;
      v30 = v25;
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v28, v25, 0}];
      v27 = *(a1 + 40);
      v29 = v26;
      v30 = v20;
    }
  }

  [v27 setObject:v29 forKeyedSubscript:v30];

  v31 = *MEMORY[0x277D85DE8];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v35 + 1) + 8 * i) duration];
        v10 = v10 + v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v13 = *(*(a1 + 56) + 8);
  if (v10 > *(v13 + 24))
  {
    *(v13 + 24) = v10;
  }

  v34 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v14 = [v5 identifier];
  v15 = [*(a1 + 32) objectForKeyedSubscript:v14];
  v16 = [v15 identifier];
  v17 = v16;
  v18 = *MEMORY[0x277CF95E8];
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = [v15 canonicalBundleIdentifier];
  if (v20)
  {
    v21 = +[USTrustIdentifier identifierWithIdentifier:trusted:](USTrustIdentifier, "identifierWithIdentifier:trusted:", v20, [v5 trusted]);
    v22 = [*(a1 + 40) objectForKeyedSubscript:v19];
    v23 = [v22 objectForKeyedSubscript:v21];
    if (!v23)
    {
      v24 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v34, v5, 0}];
      if (!v22)
      {
        v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v24, v21, 0}];
        v25 = *(a1 + 40);
LABEL_26:
        v31 = v22;
        v32 = v19;
        goto LABEL_27;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v26 = [v15 primaryWebDomain];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v14;
    }

    v29 = v28;

    v21 = +[USTrustIdentifier identifierWithIdentifier:trusted:](USTrustIdentifier, "identifierWithIdentifier:trusted:", v29, [v5 trusted]);

    v22 = [*(a1 + 48) objectForKeyedSubscript:v19];
    v23 = [v22 objectForKeyedSubscript:v21];
    if (!v23)
    {
      v24 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v34, v5, 0}];
      if (!v22)
      {
        v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v24, v21, 0}];
        v25 = *(a1 + 48);
        goto LABEL_26;
      }

LABEL_24:
      v25 = v22;
      v31 = v24;
      v32 = v21;
LABEL_27:
      [v25 setObject:v31 forKeyedSubscript:v32];
      v30 = v34;
      goto LABEL_28;
    }
  }

  v24 = v23;
  v30 = v34;
  [v23 setObject:v34 forKeyedSubscript:v5];
LABEL_28:

  v33 = *MEMORY[0x277D85DE8];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = [v22 identifier];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = [v7 identifier];
  v9 = v8;
  v10 = *MEMORY[0x277CF95E8];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v7 canonicalBundleIdentifier];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  v15 = v14;

  v16 = +[USTrustIdentifier identifierWithIdentifier:trusted:](USTrustIdentifier, "identifierWithIdentifier:trusted:", v15, [v22 trusted]);

  v17 = [*(a1 + 40) objectForKeyedSubscript:v11];
  v18 = [v17 objectForKeyedSubscript:v16];
  if (v18)
  {
    v19 = v18;
    v20 = v5;
    v21 = v22;
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v5, v22, 0}];
    if (v17)
    {
      v18 = v17;
      v20 = v19;
      v21 = v16;
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v19, v16, 0}];
      v18 = *(a1 + 40);
      v20 = v17;
      v21 = v11;
    }
  }

  [v18 setObject:v20 forKeyedSubscript:v21];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_2_56(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v9 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v10 = [*(a1 + 48) objectForKeyedSubscript:v5];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_3;
  v41[3] = &unk_279E09D40;
  v42 = *(a1 + 56);
  v11 = v8;
  v43 = v11;
  v12 = v9;
  v44 = v12;
  v45 = *(a1 + 64);
  v13 = v7;
  v46 = v13;
  v31 = v10;
  [v10 enumerateKeysAndObjectsUsingBlock:v41];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_4;
  v37[3] = &unk_279E09D68;
  v38 = *(a1 + 56);
  v14 = v12;
  v39 = v14;
  v15 = v13;
  v40 = v15;
  v30 = v11;
  [v11 enumerateKeysAndObjectsUsingBlock:v37];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_5;
  v35[3] = &unk_279E09D90;
  v16 = v15;
  v36 = v16;
  [v14 enumerateKeysAndObjectsUsingBlock:v35];
  v17 = objc_opt_new();
  v18 = [*(a1 + 72) objectForKeyedSubscript:v5];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_6;
  v32[3] = &unk_279E09DB8;
  v33 = *(a1 + 80);
  v19 = v17;
  v34 = v19;
  [v18 enumerateKeysAndObjectsUsingBlock:v32];
  v20 = v6;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    v24 = 0.0;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v47 + 1) + 8 * i) duration];
        v24 = v24 + v26;
      }

      v22 = [v20 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v22);
  }

  else
  {
    v24 = 0.0;
  }

  v27 = *(a1 + 88);
  v28 = [[USCategoryUsageReport alloc] initWithCategoryIdentifier:v5 totalUsageTime:v16 applicationUsage:v19 webUsage:v24];
  [v27 addObject:v28];

  [*(a1 + 40) setObject:0 forKeyedSubscript:v5];
  v29 = *MEMORY[0x277D85DE8];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v57 objects:&v62 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v58;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v58 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v57 + 1) + 8 * i) duration];
        v11 = v11 + v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v57 objects:&v62 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  v14 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v15 = v14;
  v16 = MEMORY[0x277CBEC10];
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = MEMORY[0x277CBEC10];
  }

  v18 = v17;

  v52 = v5;
  v19 = [*(a1 + 48) objectForKeyedSubscript:v5];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v16;
  }

  v51 = v21;

  v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v23 = v6;
  v24 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v54;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v54 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v53 + 1) + 8 * j) identifier];
        v29 = [*(a1 + 56) objectForKeyedSubscript:v28];
        [v22 setObject:v29 forKeyedSubscript:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v25);
  }

  v30 = MEMORY[0x277CBEB38];
  v31 = v23;
  v32 = [[v30 alloc] initWithCapacity:{objc_msgSend(v31, "count")}];
  v62 = MEMORY[0x277D85DD0];
  v63 = 3221225472;
  v64 = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v65 = &unk_279E0A1F0;
  v66 = v32;
  v33 = v32;
  v50 = v31;
  [v31 enumerateKeysAndObjectsUsingBlock:&v62];

  v49 = [v33 copy];
  v34 = MEMORY[0x277CBEB38];
  v35 = v18;
  v36 = [[v34 alloc] initWithCapacity:{objc_msgSend(v35, "count")}];
  v62 = MEMORY[0x277D85DD0];
  v63 = 3221225472;
  v64 = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v65 = &unk_279E0A1F0;
  v66 = v36;
  v37 = v36;
  [v35 enumerateKeysAndObjectsUsingBlock:&v62];

  v38 = [v37 copy];
  v39 = MEMORY[0x277CBEB38];
  v40 = v51;
  v41 = [[v39 alloc] initWithCapacity:{objc_msgSend(v40, "count")}];
  v62 = MEMORY[0x277D85DD0];
  v63 = 3221225472;
  v64 = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v65 = &unk_279E0A1F0;
  v66 = v41;
  v42 = v41;
  [v40 enumerateKeysAndObjectsUsingBlock:&v62];

  v43 = [v42 copy];
  v44 = *(a1 + 64);
  v45 = [USApplicationUsageReport alloc];
  v46 = [v52 identifier];
  v47 = -[USApplicationUsageReport initWithCanonicalBundleIdentifier:applicationUsageTrusted:totalUsageTime:applicationUsageByBundleIdentifier:webUsageByDomain:userNotificationsByBundleIdentifier:pickupsByBundleIdentifier:](v45, "initWithCanonicalBundleIdentifier:applicationUsageTrusted:totalUsageTime:applicationUsageByBundleIdentifier:webUsageByDomain:userNotificationsByBundleIdentifier:pickupsByBundleIdentifier:", v46, [v52 trusted], v49, v38, v43, v22, v11);
  [v44 addObject:v47];

  [*(a1 + 40) setObject:0 forKeyedSubscript:v52];
  [*(a1 + 48) setObject:0 forKeyedSubscript:v52];

  v48 = *MEMORY[0x277D85DE8];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:&v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v34 + 1) + 8 * i) duration];
        v11 = v11 + v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:&v38 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  v14 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v15 = v14;
  v16 = MEMORY[0x277CBEC10];
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = MEMORY[0x277CBEB38];
  v19 = v6;
  v20 = [[v18 alloc] initWithCapacity:{objc_msgSend(v19, "count")}];
  v38 = MEMORY[0x277D85DD0];
  v39 = 3221225472;
  v40 = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v41 = &unk_279E0A1F0;
  v42 = v20;
  v21 = v20;
  [v19 enumerateKeysAndObjectsUsingBlock:&v38];

  v22 = [v21 copy];
  v23 = MEMORY[0x277CBEB38];
  v24 = v17;
  v25 = [[v23 alloc] initWithCapacity:{objc_msgSend(v24, "count")}];
  v38 = MEMORY[0x277D85DD0];
  v39 = 3221225472;
  v40 = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v41 = &unk_279E0A1F0;
  v42 = v25;
  v26 = v25;
  [v24 enumerateKeysAndObjectsUsingBlock:&v38];

  v27 = [v26 copy];
  v28 = *(a1 + 48);
  v29 = [USApplicationUsageReport alloc];
  v30 = [v5 identifier];
  v31 = [v5 trusted];
  v32 = [(USApplicationUsageReport *)v29 initWithCanonicalBundleIdentifier:v30 applicationUsageTrusted:v31 totalUsageTime:MEMORY[0x277CBEC10] applicationUsageByBundleIdentifier:v22 webUsageByDomain:v27 userNotificationsByBundleIdentifier:MEMORY[0x277CBEC10] pickupsByBundleIdentifier:v11];
  [v28 addObject:v32];

  [*(a1 + 40) setObject:0 forKeyedSubscript:v5];
  v33 = *MEMORY[0x277D85DE8];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = a2;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v16[3] = &unk_279E0A1F0;
  v17 = v8;
  v9 = v8;
  [v5 enumerateKeysAndObjectsUsingBlock:v16];
  v10 = [v9 copy];

  v11 = *(a1 + 32);
  v12 = [USApplicationUsageReport alloc];
  v13 = [v7 identifier];
  v14 = [v7 trusted];

  v15 = [(USApplicationUsageReport *)v12 initWithCanonicalBundleIdentifier:v13 applicationUsageTrusted:v14 totalUsageTime:MEMORY[0x277CBEC10] applicationUsageByBundleIdentifier:MEMORY[0x277CBEC10] webUsageByDomain:v10 userNotificationsByBundleIdentifier:MEMORY[0x277CBEC10] pickupsByBundleIdentifier:0.0];
  [v11 addObject:v15];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v24 + 1) + 8 * i) duration];
        v11 = v11 + v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  v14 = MEMORY[0x277CBEB38];
  v15 = v6;
  v16 = [[v14 alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v28[3] = &unk_279E0A1F0;
  v29 = v16;
  v17 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v28];

  v18 = [v17 copy];
  v19 = *(a1 + 40);
  v20 = [USWebUsageReport alloc];
  v21 = [v5 identifier];
  v22 = -[USWebUsageReport initWithDomainIdentifier:webUsageTrusted:totalUsageTime:webUsageByDomain:](v20, "initWithDomainIdentifier:webUsageTrusted:totalUsageTime:webUsageByDomain:", v21, [v5 trusted], v18, v11);
  [v19 addObject:v22];

  v23 = *MEMORY[0x277D85DE8];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_8;
  v13[3] = &unk_279E09D90;
  v14 = v8;
  v9 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];

  v10 = *(a1 + 32);
  v11 = [USCategoryUsageReport alloc];
  v12 = [(USCategoryUsageReport *)v11 initWithCategoryIdentifier:v7 totalUsageTime:v9 applicationUsage:MEMORY[0x277CBEBF8] webUsage:0.0];

  [v10 addObject:v12];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = a2;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v15[3] = &unk_279E0A1F0;
  v16 = v8;
  v9 = v8;
  [v5 enumerateKeysAndObjectsUsingBlock:v15];
  v10 = [v9 copy];

  v11 = *(a1 + 32);
  v12 = [USApplicationUsageReport alloc];
  v13 = [v7 identifier];

  v14 = [(USApplicationUsageReport *)v12 initWithCanonicalBundleIdentifier:v13 applicationUsageTrusted:1 totalUsageTime:MEMORY[0x277CBEC10] applicationUsageByBundleIdentifier:MEMORY[0x277CBEC10] webUsageByDomain:v10 userNotificationsByBundleIdentifier:MEMORY[0x277CBEC10] pickupsByBundleIdentifier:0.0];
  [v11 addObject:v14];
}

- (id)queryForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories interval:(id)interval segmentInterval:(double)segmentInterval error:(id *)error
{
  applicationsCopy = applications;
  exemptApplicationsCopy = exemptApplications;
  domainsCopy = domains;
  categoriesCopy = categories;
  intervalCopy = interval;
  endDate = [intervalCopy endDate];
  startDate = [intervalCopy startDate];
  v35 = intervalCopy;
  [intervalCopy duration];
  if (v21 <= segmentInterval)
  {
    v22 = endDate;
  }

  else
  {
    v22 = [startDate dateByAddingTimeInterval:segmentInterval];
  }

  v23 = v22;
  v24 = 0.0;
  if ([startDate compare:endDate] == -1)
  {
    while (1)
    {
      v33 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate endDate:v23];
      v34 = [(USUsageQuerying *)self queryForApplications:applicationsCopy exemptApplications:exemptApplicationsCopy webDomains:domainsCopy categories:categoriesCopy interval:v33 focalOnly:1 error:error];
      if (!v34)
      {
        break;
      }

      v28 = v34;
      [v34 doubleValue];
      v30 = v29;
      v25 = v23;

      [endDate timeIntervalSinceDate:v25];
      if (v31 <= segmentInterval)
      {
        v32 = endDate;
      }

      else
      {
        v32 = [v25 dateByAddingTimeInterval:segmentInterval];
      }

      v23 = v32;
      v24 = v24 + v30;

      startDate = v25;
      if ([v25 compare:endDate] != -1)
      {
        goto LABEL_6;
      }
    }

    v26 = 0;
  }

  else
  {
    v25 = startDate;
LABEL_6:
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
    startDate = v25;
  }

  return v26;
}

- (id)queryForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories interval:(id)interval focalOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v161[1] = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  exemptApplicationsCopy = exemptApplications;
  domainsCopy = domains;
  categoriesCopy = categories;
  intervalCopy = interval;
  v115 = objc_opt_new();
  selfCopy = self;
  duetStream = [(USUsageQuerying *)self duetStream];
  v15 = MEMORY[0x277CFE260];
  v16 = intervalCopy;
  startDate = [v16 startDate];
  endDate = [v16 endDate];
  v19 = [v15 predicateForEventsIntersectingDateRangeFrom:startDate to:endDate];

  usageType = [MEMORY[0x277CFE1D0] usageType];
  v123 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType andIntegerValue:1];
  v125 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType];
  v21 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v125];
  v22 = MEMORY[0x277CCA920];
  v153 = v123;
  v154 = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v153 count:2];
  v24 = [v22 orPredicateWithSubpredicates:v23];

  v25 = objc_alloc(MEMORY[0x277CCA920]);
  v147 = v19;
  v148 = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:2];
  v27 = [v25 initWithType:1 subpredicates:v26];

  v28 = objc_opt_new();
  allDevices = [MEMORY[0x277CFE1E0] allDevices];
  [v28 setDeviceIDs:allDevices];

  appUsageStream = [MEMORY[0x277CFE298] appUsageStream];
  v161[0] = appUsageStream;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:1];
  [v28 setEventStreams:v31];

  if (onlyCopy)
  {
    v32 = v27;
  }

  else
  {
    v32 = v19;
  }

  [v28 setPredicate:v32];
  v33 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v159 = v33;
  v34 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v160 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v159 count:2];

  [v28 setSortDescriptors:v35];
  v36 = [duetStream publisherForQuery:v28];

  collect = [v36 collect];

  duetStream2 = [(USUsageQuerying *)selfCopy duetStream];
  v38 = v16;
  v39 = MEMORY[0x277CFE260];
  startDate2 = [v38 startDate];
  endDate2 = [v38 endDate];
  v42 = [v39 predicateForEventsIntersectingDateRangeFrom:startDate2 to:endDate2];

  usageType2 = [MEMORY[0x277CFE1D0] usageType];
  v44 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType2 andIntegerValue:1];
  v45 = v44;
  if (!onlyCopy)
  {
    v46 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType2 andIntegerValue:0];
    v47 = objc_alloc(MEMORY[0x277CCA920]);
    v153 = v44;
    v154 = v46;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v153 count:2];
    v45 = [v47 initWithType:2 subpredicates:v48];
  }

  v49 = objc_opt_new();
  allDevices2 = [MEMORY[0x277CFE1E0] allDevices];
  [v49 setDeviceIDs:allDevices2];

  appWebUsageStream = [MEMORY[0x277CFE298] appWebUsageStream];
  v161[0] = appWebUsageStream;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:1];
  [v49 setEventStreams:v52];

  v53 = objc_alloc(MEMORY[0x277CCA920]);
  v147 = v42;
  v148 = v45;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:2];
  v55 = [v53 initWithType:1 subpredicates:v54];
  [v49 setPredicate:v55];

  v56 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v159 = v56;
  v57 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v160 = v57;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v159 count:2];
  [v49 setSortDescriptors:v58];

  v59 = [duetStream2 publisherForQuery:v49];

  collect2 = [v59 collect];

  if ([categoriesCopy containsObject:*MEMORY[0x277CF95D0]])
  {
    duetStream3 = [(USUsageQuerying *)selfCopy duetStream];
    v61 = MEMORY[0x277CFE260];
    v62 = v38;
    startDate3 = [v62 startDate];
    endDate3 = [v62 endDate];
    v121 = [v61 predicateForEventsIntersectingDateRangeFrom:startDate3 to:endDate3];

    v65 = MEMORY[0x277CFE260];
    playing = [MEMORY[0x277CFE248] playing];
    v114 = [v65 predicateForObjectsWithMetadataKey:playing andIntegerValue:1];

    v67 = MEMORY[0x277CFE260];
    mediaType = [MEMORY[0x277CFE248] mediaType];
    v113 = [v67 predicateForObjectsWithMetadataKey:mediaType andStringValue:*MEMORY[0x277D27CB8]];

    v69 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:@"com.apple.quicklook.QuickLookUIService"];
    v70 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:@"com.apple.quicklook.extension.previewUI"];
    v71 = objc_alloc(MEMORY[0x277CCA920]);
    v147 = v69;
    v148 = v70;
    v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:2];
    v73 = [v71 initWithType:2 subpredicates:v72];

    v74 = objc_opt_new();
    allDevices3 = [MEMORY[0x277CFE1E0] allDevices];
    [v74 setDeviceIDs:allDevices3];

    nowPlayingStream = [MEMORY[0x277CFE298] nowPlayingStream];
    v161[0] = nowPlayingStream;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:1];
    [v74 setEventStreams:v77];

    v78 = objc_alloc(MEMORY[0x277CCA920]);
    v153 = v121;
    v154 = v114;
    v155 = v113;
    v156 = v73;
    v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v153 count:4];
    v80 = [v78 initWithType:1 subpredicates:v79];
    [v74 setPredicate:v80];

    v81 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
    v159 = v81;
    v82 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
    v160 = v82;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v159 count:2];

    [v74 setSortDescriptors:v83];
    v84 = [duetStream3 publisherForQuery:v74];

    collect3 = [v84 collect];
  }

  else
  {
    duetStream3 = [MEMORY[0x277CBEBF8] bpsPublisher];
    collect3 = [duetStream3 collect];
  }

  duetStream4 = [(USUsageQuerying *)selfCopy duetStream];
  v86 = v38;
  v87 = objc_opt_new();
  allDevices4 = [MEMORY[0x277CFE1E0] allDevices];
  [v87 setDeviceIDs:allDevices4];

  appMediaUsageStream = [MEMORY[0x277CFE298] appMediaUsageStream];
  v147 = appMediaUsageStream;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:1];
  [v87 setEventStreams:v90];

  v91 = MEMORY[0x277CFE260];
  startDate4 = [v86 startDate];
  endDate4 = [v86 endDate];
  v94 = [v91 predicateForEventsIntersectingDateRangeFrom:startDate4 to:endDate4];
  [v87 setPredicate:v94];

  v95 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v153 = v95;
  v96 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v154 = v96;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:&v153 count:2];

  [v87 setSortDescriptors:v97];
  v98 = [duetStream4 publisherForQuery:v87];

  collect4 = [v98 collect];

  v153 = 0;
  v154 = &v153;
  v155 = 0x3032000000;
  v156 = __Block_byref_object_copy__0;
  v157 = __Block_byref_object_dispose__0;
  v158 = 0;
  v147 = 0;
  v148 = &v147;
  v149 = 0x3032000000;
  v150 = __Block_byref_object_copy__0;
  v151 = __Block_byref_object_dispose__0;
  v152 = 0;
  v100 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
  v146[0] = collect2;
  v146[1] = collect3;
  v146[2] = collect4;
  v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:3];
  v102 = [collect zipWithOthers:v101];
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke;
  v142[3] = &unk_279E09E30;
  v143 = v100;
  v144 = &v147;
  v145 = 1;
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_2;
  v130[3] = &unk_279E09EA8;
  v130[4] = selfCopy;
  v103 = v86;
  v131 = v103;
  v104 = v115;
  v132 = v104;
  v141 = onlyCopy;
  v129 = applicationsCopy;
  v133 = v129;
  v105 = exemptApplicationsCopy;
  v134 = v105;
  v106 = v143;
  v135 = v106;
  v140 = 1;
  v107 = domainsCopy;
  v136 = v107;
  v108 = categoriesCopy;
  v137 = v108;
  v138 = &v153;
  v139 = &v147;
  v109 = [v102 sinkWithCompletion:v142 receiveInput:v130];

  [v106 lockWhenCondition:1];
  [v106 unlock];
  if (error)
  {
    *error = v148[5];
  }

  v110 = v154[5];

  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(&v153, 8);

  v111 = *MEMORY[0x277D85DE8];

  return v110;
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 state] == 1)
  {
    [*(a1 + 32) lock];
    [*(a1 + 32) unlockWithCondition:*(a1 + 48)];
    v3 = [v6 error];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] != 4)
  {
    __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_2_cold_1();
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];
  v6 = [v3 objectAtIndexedSubscript:2];
  v7 = [v3 objectAtIndexedSubscript:3];
  v8 = [*(a1 + 32) _getBundleIdentiersFromApplicationUsageEvents:v4 videoUsageEvents:v7 interval:*(a1 + 40) referenceDate:*(a1 + 48) focalOnly:*(a1 + 120)];
  if ([v8 count])
  {
    [v8 unionSet:*(a1 + 56)];
    [v8 unionSet:*(a1 + 64)];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_2_cold_2();
    }

    v9 = [MEMORY[0x277CF9650] sharedCategories];
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__0;
    v44 = __Block_byref_object_dispose__0;
    v45 = 0;
    v10 = [v8 array];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_68;
    v22[3] = &unk_279E09E80;
    v36 = &v40;
    v11 = *(a1 + 72);
    v38 = *(a1 + 112);
    v12 = *(a1 + 32);
    v23 = v11;
    v24 = v12;
    v25 = v5;
    v26 = v7;
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v39 = *(a1 + 120);
    v29 = *(a1 + 80);
    v13 = v9;
    v30 = v13;
    v31 = *(a1 + 56);
    v32 = *(a1 + 64);
    v33 = *(a1 + 88);
    v34 = v4;
    v14 = v6;
    v15 = *(a1 + 96);
    v35 = v14;
    v37 = v15;
    [v13 categoriesForBundleIDs:v10 completionHandler:v22];

    v16 = v41[5];
    if (v16)
    {
      objc_storeStrong((*(*(a1 + 104) + 8) + 40), v16);
    }

    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v17 = *(a1 + 40);
    LOBYTE(v21) = *(a1 + 120);
    [*(a1 + 32) _computeUsageForApplications:*(a1 + 56) exemptApplications:*(a1 + 64) webDomains:*(a1 + 80) categories:*(a1 + 88) applicationUsageEvents:v4 webUsageEvents:v5 nowPlayingEvents:v6 videoUsageEvents:v7 categoryByBundleIdentifier:0 categoryByWebDomain:0 interval:v17 referenceDate:*(a1 + 48) focalOnly:v21];
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v19 = *(*(a1 + 96) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    [*(a1 + 72) lock];
    [*(a1 + 72) unlockWithCondition:*(a1 + 112)];
  }
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) _getWebDomainsFromWebUsageEvents:*(a1 + 48) videoUsageEvents:*(a1 + 56) interval:*(a1 + 64) referenceDate:*(a1 + 72) focalOnly:*(a1 + 160)];
    [v7 unionSet:*(a1 + 80)];
    if ([v7 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_68_cold_1();
      }

      v8 = *(a1 + 88);
      v9 = [v7 array];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_69;
      v20[3] = &unk_279E09E58;
      v10 = *(a1 + 40);
      v33 = *(a1 + 136);
      v20[4] = v10;
      v21 = *(a1 + 96);
      v22 = *(a1 + 104);
      v23 = *(a1 + 80);
      v24 = *(a1 + 112);
      v25 = *(a1 + 120);
      v26 = *(a1 + 48);
      v27 = *(a1 + 128);
      v28 = *(a1 + 56);
      v29 = v5;
      v30 = *(a1 + 64);
      v11 = *(a1 + 72);
      v36 = *(a1 + 160);
      v12 = *(a1 + 144);
      v31 = v11;
      v34 = v12;
      v13 = *(a1 + 32);
      v14 = *(a1 + 152);
      v32 = v13;
      v35 = v14;
      [v8 categoriesForDomainNames:v9 completionHandler:v20];
    }

    else
    {
      v15 = *(a1 + 128);
      LOBYTE(v19) = *(a1 + 160);
      [*(a1 + 40) _computeUsageForApplications:*(a1 + 96) exemptApplications:*(a1 + 104) webDomains:*(a1 + 80) categories:*(a1 + 112) applicationUsageEvents:*(a1 + 120) webUsageEvents:*(a1 + 48) nowPlayingEvents:v15 videoUsageEvents:*(a1 + 56) categoryByBundleIdentifier:v5 categoryByWebDomain:0 interval:*(a1 + 64) referenceDate:*(a1 + 72) focalOnly:v19];
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v17 = *(*(a1 + 144) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      [*(a1 + 32) lock];
      [*(a1 + 32) unlockWithCondition:*(a1 + 152)];
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 136) + 8) + 40), a3);
    [*(a1 + 32) lock];
    [*(a1 + 32) unlockWithCondition:*(a1 + 152)];
  }
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_69(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v12 = v5;
  if (a2)
  {
    LOBYTE(v11) = *(a1 + 160);
    [*(a1 + 32) _computeUsageForApplications:*(a1 + 40) exemptApplications:*(a1 + 48) webDomains:*(a1 + 56) categories:*(a1 + 64) applicationUsageEvents:*(a1 + 72) webUsageEvents:*(a1 + 80) nowPlayingEvents:*(a1 + 88) videoUsageEvents:*(a1 + 96) categoryByBundleIdentifier:*(a1 + 104) categoryByWebDomain:a2 interval:*(a1 + 112) referenceDate:*(a1 + 120) focalOnly:v11];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v7 = *(*(a1 + 144) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 136) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  [*(a1 + 128) lock];
  [*(a1 + 128) unlockWithCondition:*(a1 + 152)];
}

- (id)_calculateAllExemptBundleIdentifiersFromExemptApplications:(id)applications categoryByBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationsCopy = applications;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__USUsageQuerying__calculateAllExemptBundleIdentifiersFromExemptApplications_categoryByBundleIdentifier___block_invoke;
  v13[3] = &unk_279E09ED0;
  v14 = identifierCopy;
  v8 = v7;
  v15 = v8;
  v9 = identifierCopy;
  [applicationsCopy enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __105__USUsageQuerying__calculateAllExemptBundleIdentifiersFromExemptApplications_categoryByBundleIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v4 equivalentBundleIdentifiers];
  if (v3)
  {
    [*(a1 + 40) addObjectsFromArray:v3];
  }
}

- (id)_calculateAllExemptWebDomainsFromExemptApplications:(id)applications categoryByBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationsCopy = applications;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__USUsageQuerying__calculateAllExemptWebDomainsFromExemptApplications_categoryByBundleIdentifier___block_invoke;
  v13[3] = &unk_279E09ED0;
  v14 = identifierCopy;
  v8 = v7;
  v15 = v8;
  v9 = identifierCopy;
  [applicationsCopy enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __98__USUsageQuerying__calculateAllExemptWebDomainsFromExemptApplications_categoryByBundleIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v4 webDomains];
  if (v3)
  {
    [*(a1 + 40) addObjectsFromArray:v3];
  }
}

- (double)_computeUsageForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories applicationUsageEvents:(id)events webUsageEvents:(id)usageEvents nowPlayingEvents:(id)playingEvents videoUsageEvents:(id)self0 categoryByBundleIdentifier:(id)self1 categoryByWebDomain:(id)self2 interval:(id)self3 referenceDate:(id)self4 focalOnly:(BOOL)self5
{
  applicationsCopy = applications;
  exemptApplicationsCopy = exemptApplications;
  domainsCopy = domains;
  eventsCopy = events;
  identifierCopy = identifier;
  dateCopy = date;
  intervalCopy = interval;
  v20 = applicationsCopy;
  domainCopy = domain;
  videoUsageEventsCopy = videoUsageEvents;
  playingEventsCopy = playingEvents;
  usageEventsCopy = usageEvents;
  categoriesCopy = categories;
  v24 = [categoriesCopy count];
  v25 = [domainsCopy count];
  v51 = v20;
  v26 = ([v20 count] | v25) != 0;
  if (v24)
  {
    v27 = objc_opt_new();
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = objc_opt_new();
    if (v25)
    {
      v41 = objc_opt_new();
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
    v28 = 0;
  }

  v29 = [eventsCopy mutableCopy];
  v30 = [usageEventsCopy mutableCopy];

  v40 = [playingEventsCopy mutableCopy];
  [v29 addObjectsFromArray:videoUsageEventsCopy];
  v47 = v30;
  [v30 addObjectsFromArray:videoUsageEventsCopy];

  v31 = [(USUsageQuerying *)self _calculateAllExemptBundleIdentifiersFromExemptApplications:exemptApplicationsCopy categoryByBundleIdentifier:identifierCopy];
  if ([v31 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _computeUsageForApplications:exemptApplications:webDomains:categories:applicationUsageEvents:webUsageEvents:nowPlayingEvents:videoUsageEvents:categoryByBundleIdentifier:categoryByWebDomain:interval:referenceDate:focalOnly:];
  }

  v32 = [(USUsageQuerying *)self _calculateAllExemptWebDomainsFromExemptApplications:exemptApplicationsCopy categoryByBundleIdentifier:identifierCopy];
  if ([v32 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _computeUsageForApplications:exemptApplications:webDomains:categories:applicationUsageEvents:webUsageEvents:nowPlayingEvents:videoUsageEvents:categoryByBundleIdentifier:categoryByWebDomain:interval:referenceDate:focalOnly:];
  }

  LOBYTE(v38) = only;
  v39 = [(USUsageQuerying *)self _computeApplicationUsageWithEvents:v29 exemptApplications:v31 exemptWebDomains:v32 unboundApplicationUsageIntervalsByDevice:0 timeZoneByDevice:0 lastEventDateByDevice:0 categoryUsageIntervalsByDevice:v27 aggregatedApplicationUsageIntervalsByDevice:v28 categoryByBundleIdentifier:identifierCopy partition:intervalCopy referenceDate:dateCopy focalOnly:v38];
  LOBYTE(v37) = only;
  v33 = [(USUsageQuerying *)self _computeWebUsageWithEvents:v30 exemptWebDomains:v32 timeZoneByDevice:0 lastEventDateByDevice:0 categoryUsageIntervalsByDevice:v27 aggregatedApplicationUsageIntervalsByDevice:v28 aggregatedWebUsageIntervalsByDevice:v41 categoryByWebDomain:domainCopy partition:intervalCopy referenceDate:dateCopy focalOnly:v37];
  [(USUsageQuerying *)self _computeNowPlayingUsageWithEvents:v40 categoryUsageIntervalsByDevice:v27 timeZoneByDevice:0 lastEventDateByDevice:0 partition:intervalCopy referenceDate:dateCopy];

  [(USUsageQuerying *)self _generateUsageTimeWithApplicationUsageIntervals:v39 webUsageIntervalsByDevice:v33 categoryUsageIntervalsByDevice:v27 aggregatedApplicationUsageIntervalsByDevice:v28 aggregatedWebUsageIntervalsByDevice:v41 categoryByBundleIdentifier:identifierCopy categoryByWebDomain:domainCopy applications:v51 webDomains:domainsCopy categories:categoriesCopy];
  v35 = v34;

  return v35;
}

- (double)_generateUsageTimeWithApplicationUsageIntervals:(id)intervals webUsageIntervalsByDevice:(id)device categoryUsageIntervalsByDevice:(id)byDevice aggregatedApplicationUsageIntervalsByDevice:(id)intervalsByDevice aggregatedWebUsageIntervalsByDevice:(id)usageIntervalsByDevice categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)domain applications:(id)self0 webDomains:(id)self1 categories:(id)self2
{
  v182 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  deviceCopy = device;
  byDeviceCopy = byDevice;
  intervalsByDeviceCopy = intervalsByDevice;
  usageIntervalsByDeviceCopy = usageIntervalsByDevice;
  identifierCopy = identifier;
  domainCopy = domain;
  applicationsCopy = applications;
  domainsCopy = domains;
  categoriesCopy = categories;
  v144 = objc_opt_new();
  v116 = applicationsCopy;
  v140 = intervalsByDeviceCopy;
  if ([applicationsCopy count])
  {
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v20 = applicationsCopy;
    v21 = [v20 countByEnumeratingWithState:&v163 objects:v175 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v164;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v164 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = [identifierCopy objectForKeyedSubscript:*(*(&v163 + 1) + 8 * i)];
          equivalentBundleIdentifiers = [v26 equivalentBundleIdentifiers];

          if ([equivalentBundleIdentifiers count] >= 2)
          {
            if (!v23)
            {
              v23 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v20];
            }

            [v23 addObjectsFromArray:equivalentBundleIdentifiers];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v163 objects:v175 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    if (!v140)
    {
      [USUsageQuerying _generateUsageTimeWithApplicationUsageIntervals:a2 webUsageIntervalsByDevice:self categoryUsageIntervalsByDevice:? aggregatedApplicationUsageIntervalsByDevice:? aggregatedWebUsageIntervalsByDevice:? categoryByBundleIdentifier:? categoryByWebDomain:? applications:? webDomains:? categories:?];
    }

    if (v23)
    {
      v28 = v23;
    }

    else
    {
      v28 = v20;
    }

    v29 = v28;
    v30 = objc_opt_new();
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v31 = v29;
    v32 = [v31 countByEnumeratingWithState:&v159 objects:v174 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v160;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v160 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v159 + 1) + 8 * j);
          v37 = [USTrustIdentifier identifierWithIdentifier:v36 trusted:1];
          [v30 addObject:v37];

          v38 = [USTrustIdentifier identifierWithIdentifier:v36 trusted:0];
          [v30 addObject:v38];
        }

        v33 = [v31 countByEnumeratingWithState:&v159 objects:v174 count:16];
      }

      while (v33);
    }

    v39 = v144;
    v40 = v30;
    v41 = [v140 objectForKeyedSubscript:@"AllDevices"];
    v176 = MEMORY[0x277D85DD0];
    v177 = 3221225472;
    v178 = __unionIntervalsWithUsageTrustIntervalsByDeviceFilteredByItems_block_invoke;
    v179 = &unk_279E0A1A0;
    v180 = v40;
    v181 = v39;
    v42 = v40;
    v43 = v39;
    [v41 enumerateKeysAndObjectsUsingBlock:&v176];

    intervalsByDeviceCopy = v140;
  }

  v124 = [intervalsByDeviceCopy objectForKeyedSubscript:@"AllDevices"];
  v122 = [usageIntervalsByDeviceCopy objectForKeyedSubscript:@"AllDevices"];
  v121 = [deviceCopy objectForKeyedSubscript:@"AllDevices"];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  obj = domainsCopy;
  v44 = 0x279E09000uLL;
  v128 = [obj countByEnumeratingWithState:&v155 objects:v173 count:16];
  if (v128)
  {
    v126 = *v156;
    do
    {
      v45 = 0;
      do
      {
        if (*v156 != v126)
        {
          v46 = v45;
          objc_enumerationMutation(obj);
          v45 = v46;
        }

        v130 = v45;
        v47 = *(*(&v155 + 1) + 8 * v45);
        v48 = [domainCopy objectForKeyedSubscript:v47];
        canonicalBundleIdentifier = [v48 canonicalBundleIdentifier];
        v129 = canonicalBundleIdentifier;
        if (canonicalBundleIdentifier)
        {
          v50 = canonicalBundleIdentifier;
          [*(v44 + 1408) identifierWithIdentifier:canonicalBundleIdentifier trusted:1];
          v52 = v51 = v44;
          v53 = [v124 objectForKeyedSubscript:v52];

          v54 = [*(v51 + 1408) identifierWithIdentifier:v50 trusted:0];
          v131 = [v124 objectForKeyedSubscript:v54];
        }

        else
        {
          [v48 primaryWebDomain];
          v54 = v55 = v44;
          v56 = *(v55 + 1408);
          if (v54)
          {
            v57 = [v56 identifierWithIdentifier:v54 trusted:1];
            v53 = [v122 objectForKeyedSubscript:v57];

            v58 = [*(v55 + 1408) identifierWithIdentifier:v54 trusted:0];
            v59 = v122;
          }

          else
          {
            v60 = [v56 identifierWithIdentifier:v47 trusted:1];
            v53 = [v121 objectForKeyedSubscript:v60];

            v58 = [*(v55 + 1408) identifierWithIdentifier:v47 trusted:0];
            v59 = v121;
          }

          v131 = [v59 objectForKeyedSubscript:v58];
        }

        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v133 = v53;
        v141 = v48;
        v136 = [v133 countByEnumeratingWithState:&v151 objects:v172 count:16];
        if (v136)
        {
          v134 = *v152;
          do
          {
            v61 = 0;
            do
            {
              if (*v152 != v134)
              {
                objc_enumerationMutation(v133);
              }

              v142 = v61;
              v62 = *(*(&v151 + 1) + 8 * v61);
              v63 = v144;
              v64 = v62;
              v167 = 0u;
              v168 = 0u;
              v169 = 0u;
              v170 = 0u;
              v65 = [v63 countByEnumeratingWithState:&v167 objects:&v176 count:16];
              if (v65)
              {
                v66 = v65;
                v145 = 0;
                v67 = *v168;
                v138 = v64;
                do
                {
                  for (k = 0; k != v66; ++k)
                  {
                    if (*v168 != v67)
                    {
                      objc_enumerationMutation(v63);
                    }

                    v69 = *(*(&v167 + 1) + 8 * k);
                    if ([v69 intersectsDateInterval:v64])
                    {
                      v70 = v63;
                      startDate = [v69 startDate];
                      startDate2 = [v64 startDate];
                      v73 = [startDate earlierDate:startDate2];

                      endDate = [v69 endDate];
                      endDate2 = [v64 endDate];
                      v76 = [endDate laterDate:endDate2];

                      v77 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v73 endDate:v76];
                      if (v145)
                      {
                        [v145 addObject:v69];
                      }

                      else
                      {
                        v145 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v69, 0}];
                      }

                      v64 = v77;
                      v63 = v70;
                    }
                  }

                  v66 = [v63 countByEnumeratingWithState:&v167 objects:&v176 count:16];
                }

                while (v66);
                v48 = v141;
                v78 = v145;
                if (v145)
                {
                  [v63 removeObjectsInArray:v145];
                }

                v79 = v138;
                intervalsByDeviceCopy = v140;
              }

              else
              {
                v78 = 0;
                v79 = v64;
              }

              [v63 addObject:v64];

              v61 = v142 + 1;
            }

            while (v142 + 1 != v136);
            v136 = [v133 countByEnumeratingWithState:&v151 objects:v172 count:16];
          }

          while (v136);
        }

        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v132 = v131;
        v137 = [v132 countByEnumeratingWithState:&v147 objects:v171 count:16];
        if (v137)
        {
          v135 = *v148;
          do
          {
            for (m = 0; m != v137; ++m)
            {
              if (*v148 != v135)
              {
                objc_enumerationMutation(v132);
              }

              v81 = *(*(&v147 + 1) + 8 * m);
              v82 = v144;
              v83 = v81;
              v167 = 0u;
              v168 = 0u;
              v169 = 0u;
              v170 = 0u;
              v84 = [v82 countByEnumeratingWithState:&v167 objects:&v176 count:16];
              if (v84)
              {
                v85 = v84;
                v143 = m;
                v86 = 0;
                v87 = *v168;
                v139 = v83;
                do
                {
                  v88 = 0;
                  v146 = v85;
                  do
                  {
                    if (*v168 != v87)
                    {
                      objc_enumerationMutation(v82);
                    }

                    v89 = *(*(&v167 + 1) + 8 * v88);
                    if ([v89 intersectsDateInterval:v83])
                    {
                      v90 = v82;
                      startDate3 = [v89 startDate];
                      startDate4 = [v83 startDate];
                      v93 = [startDate3 earlierDate:startDate4];

                      endDate3 = [v89 endDate];
                      endDate4 = [v83 endDate];
                      v96 = [endDate3 laterDate:endDate4];

                      v97 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v93 endDate:v96];
                      if (v86)
                      {
                        [v86 addObject:v89];
                      }

                      else
                      {
                        v86 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v89, 0}];
                      }

                      v83 = v97;
                      v82 = v90;
                      v85 = v146;
                    }

                    ++v88;
                  }

                  while (v85 != v88);
                  v85 = [v82 countByEnumeratingWithState:&v167 objects:&v176 count:16];
                }

                while (v85);
                if (v86)
                {
                  [v82 removeObjectsInArray:v86];
                }

                v98 = v139;
                intervalsByDeviceCopy = v140;
                m = v143;
              }

              else
              {
                v86 = 0;
                v98 = v83;
              }

              [v82 addObject:v83];

              v48 = v141;
            }

            v137 = [v132 countByEnumeratingWithState:&v147 objects:v171 count:16];
          }

          while (v137);
        }

        v45 = v130 + 1;
        v44 = 0x279E09000;
      }

      while (v130 + 1 != v128);
      v128 = [obj countByEnumeratingWithState:&v155 objects:v173 count:16];
    }

    while (v128);
  }

  if ([categoriesCopy count])
  {
    if (!byDeviceCopy)
    {
      [USUsageQuerying _generateUsageTimeWithApplicationUsageIntervals:a2 webUsageIntervalsByDevice:self categoryUsageIntervalsByDevice:? aggregatedApplicationUsageIntervalsByDevice:? aggregatedWebUsageIntervalsByDevice:? categoryByBundleIdentifier:? categoryByWebDomain:? applications:? webDomains:? categories:?];
    }

    v99 = v144;
    v100 = categoriesCopy;
    v101 = [byDeviceCopy objectForKeyedSubscript:@"AllDevices"];
    v176 = MEMORY[0x277D85DD0];
    v177 = 3221225472;
    v178 = __unionIntervalsWithUsageIntervalsByDeviceFilteredByItems_block_invoke;
    v179 = &unk_279E0A178;
    v180 = v100;
    v181 = v99;
    v102 = v100;
    v103 = v99;
    [v101 enumerateKeysAndObjectsUsingBlock:&v176];
  }

  v104 = v144;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v105 = [v104 countByEnumeratingWithState:&v167 objects:&v176 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v168;
    v108 = 0.0;
    do
    {
      for (n = 0; n != v106; ++n)
      {
        if (*v168 != v107)
        {
          objc_enumerationMutation(v104);
        }

        [*(*(&v167 + 1) + 8 * n) duration];
        v108 = v108 + v110;
      }

      v106 = [v104 countByEnumeratingWithState:&v167 objects:&v176 count:16];
    }

    while (v106);
  }

  else
  {
    v108 = 0.0;
  }

  v111 = *MEMORY[0x277D85DE8];
  return v108;
}

- (void)queryForUncategorizedLocalWebUsageDuringInterval:(id)interval completionHandler:(id)handler
{
  v48[2] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v38 = objc_opt_new();
  duetStream = [(USUsageQuerying *)self duetStream];
  v7 = MEMORY[0x277CFE260];
  v8 = intervalCopy;
  startDate = [v8 startDate];
  endDate = [v8 endDate];
  v34 = [v7 predicateForEventsIntersectingDateRangeFrom:startDate to:endDate];

  usageType = [MEMORY[0x277CFE1D0] usageType];
  v12 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType andIntegerValue:1];
  v13 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType andIntegerValue:0];
  v14 = objc_alloc(MEMORY[0x277CCA920]);
  v48[0] = v12;
  v48[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v16 = [v14 initWithType:2 subpredicates:v15];

  v17 = objc_opt_new();
  onlyLocalDevice = [MEMORY[0x277CFE1E0] onlyLocalDevice];
  [v17 setDeviceIDs:onlyLocalDevice];

  appWebUsageStream = [MEMORY[0x277CFE298] appWebUsageStream];
  v47 = appWebUsageStream;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  [v17 setEventStreams:v20];

  v21 = objc_alloc(MEMORY[0x277CCA920]);
  v46[0] = v34;
  v46[1] = v16;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  v23 = [v21 initWithType:1 subpredicates:v22];
  [v17 setPredicate:v23];

  v24 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v45[0] = v24;
  v25 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v45[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];

  [v17 setSortDescriptors:v26];
  v27 = [duetStream publisherForQuery:v17];

  collect = [v27 collect];

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke;
  v43[3] = &unk_279E09C00;
  v44 = handlerCopy;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_2;
  v39[3] = &unk_279E09F20;
  v39[4] = self;
  v40 = v8;
  v41 = v38;
  v42 = v44;
  v29 = v44;
  v30 = v38;
  v31 = v8;
  v32 = [collect sinkWithCompletion:v43 receiveInput:v39];

  v33 = *MEMORY[0x277D85DE8];
}

void __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 state] == 1)
  {
    v3 = *(a1 + 32);
    v4 = [v5 error];
    (*(v3 + 16))(v3, 0, v4);
  }
}

void __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_2_cold_1();
  }

  v4 = [a1[4] _getWebDomainsFromWebUsageEvents:v3 videoUsageEvents:0 interval:a1[5] referenceDate:a1[6] focalOnly:0];
  if ([v4 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_2_cold_2();
    }

    v5 = [MEMORY[0x277CF9650] sharedCategories];
    v6 = [v4 array];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_81;
    v9[3] = &unk_279E09EF8;
    v7 = a1[7];
    v8 = a1[4];
    v13 = v7;
    v9[4] = v8;
    v10 = v3;
    v11 = a1[5];
    v12 = a1[6];
    [v5 unCategorizedDomainsFromDomains:v6 withCompletionHandler:v9];
  }

  else
  {
    (*(a1[7] + 2))();
  }
}

uint64_t __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_81(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) _computeUncategorizedLocalWebUsageWithWebUsageEvents:*(a1 + 40) uncategorizedDomains:a2 interval:*(a1 + 48) referenceDate:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  else
  {
    return (*(*(a1 + 64) + 16))();
  }
}

- (void)_computeUncategorizedLocalWebUsageWithWebUsageEvents:(id)events uncategorizedDomains:(id)domains interval:(id)interval referenceDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  intervalCopy = interval;
  domainsCopy = domains;
  v20 = [events mutableCopy];
  LOBYTE(v19) = 0;
  v16 = [(USUsageQuerying *)self _computeWebUsageWithEvents:v20 exemptWebDomains:0 timeZoneByDevice:0 lastEventDateByDevice:0 categoryUsageIntervalsByDevice:0 aggregatedApplicationUsageIntervalsByDevice:0 aggregatedWebUsageIntervalsByDevice:0 categoryByWebDomain:0 partition:intervalCopy referenceDate:dateCopy focalOnly:v19];

  v17 = [v16 objectForKeyedSubscript:@"LocalDevice"];
  v18 = [(USUsageQuerying *)self _generateUncategorizedLocalWebUsageWithWebUsageIntervals:v17 uncategorizedDomains:domainsCopy];

  handlerCopy[2](handlerCopy, v18, 0);
}

- (id)_generateUncategorizedLocalWebUsageWithWebUsageIntervals:(id)intervals uncategorizedDomains:(id)domains
{
  intervalsCopy = intervals;
  domainsCopy = domains;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__USUsageQuerying__generateUncategorizedLocalWebUsageWithWebUsageIntervals_uncategorizedDomains___block_invoke;
  v15[3] = &unk_279E09F48;
  v7 = domainsCopy;
  v16 = v7;
  v17 = &v18;
  [intervalsCopy enumerateKeysAndObjectsUsingBlock:v15];
  v8 = v19[5];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __USKeyedNonIntersectingIntervalsCreateDurationDictionary_block_invoke;
    v24[3] = &unk_279E0A1C8;
    v11 = v10;
    v25 = v11;
    [v9 enumerateKeysAndObjectsUsingBlock:v24];
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x277CBEC10];
  if (v11)
  {
    v12 = v11;
  }

  v13 = v12;

  _Block_object_dispose(&v18, 8);

  return v13;
}

void __97__USUsageQuerying__generateUncategorizedLocalWebUsageWithWebUsageIntervals_uncategorizedDomains___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 identifier];
  if ([*(a1 + 32) containsObject:v6] && objc_msgSend(v11, "trusted"))
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (v7)
    {
      [v7 setObject:v5 forKeyedSubscript:v6];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v5, v6, 0}];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

- (id)_computeScreenTime:(BOOL)time withEvents:(id)events intersectingScreenTimeIntervalsByDevice:(id *)device longestSessionByDevice:(id *)byDevice timeZoneByDevice:(id)zoneByDevice lastEventDateByDevice:(id)dateByDevice partition:(id)partition referenceDate:(id)self0
{
  timeCopy = time;
  eventsCopy = events;
  zoneByDeviceCopy = zoneByDevice;
  dateByDeviceCopy = dateByDevice;
  partitionCopy = partition;
  dateCopy = date;
  if (timeCopy)
  {
    v19 = objc_opt_new();
    if (device)
    {
LABEL_3:
      v20 = objc_opt_new();
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (device)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_6:
  deviceCopy = device;
  byDeviceCopy = byDevice;
  if (byDevice)
  {
    v21 = objc_opt_new();
  }

  else
  {
    v21 = 0;
  }

  endDate = [partitionCopy endDate];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __175__USUsageQuerying__computeScreenTime_withEvents_intersectingScreenTimeIntervalsByDevice_longestSessionByDevice_timeZoneByDevice_lastEventDateByDevice_partition_referenceDate___block_invoke;
  v42[3] = &unk_279E09F70;
  v23 = partitionCopy;
  v43 = v23;
  selfCopy = self;
  v24 = v19;
  v45 = v24;
  v25 = v20;
  v46 = v25;
  v26 = v21;
  v47 = v26;
  v27 = zoneByDeviceCopy;
  v48 = v27;
  v28 = dateByDeviceCopy;
  v49 = v28;
  [(USUsageQuerying *)self _enumerateEvents:eventsCopy intervalEndDate:endDate block:v42];

  v41 = 0;
  v29 = [(USUsageQuerying *)self _currentScreenTimeIntervalDuringInterval:v23 usageStartDate:&v41 referenceDate:dateCopy];
  v30 = v41;
  if (v29)
  {
    v37 = dateCopy;
    v31 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v30 endDate:dateCopy];
    [(USUsageQuerying *)self _updateScreenTimeWithInterval:v29 rawInterval:v31 deviceIdentifier:@"LocalDevice" partition:v23 event:0 nonIntersectingScreenTimeIntervalsByDevice:v24 intersectingScreenTimeIntervalsByDevice:v25 longestSessionByDevice:v26 timeZoneByDevice:v27 lastEventDateByDevice:v28];

    dateCopy = v37;
  }

  if (deviceCopy)
  {
    v32 = v25;
    *deviceCopy = v25;
  }

  if (byDeviceCopy)
  {
    v33 = v26;
    *byDeviceCopy = v26;
  }

  v34 = v24;

  return v24;
}

void __175__USUsageQuerying__computeScreenTime_withEvents_intersectingScreenTimeIntervalsByDevice_longestSessionByDevice_timeZoneByDevice_lastEventDateByDevice_partition_referenceDate___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = *(a1 + 32);
  v4 = [v3 startDate];
  v5 = [v20 startDate];
  v6 = [v4 laterDate:v5];

  v7 = [v3 endDate];

  v8 = [v20 endDate];
  v9 = [v7 earlierDate:v8];

  if ([v6 compare:v9] == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v9];
  }

  if (v10)
  {
    v11 = [v20 source];
    v12 = [v11 syncDeviceID];
    v13 = v12;
    v14 = @"LocalDevice";
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    v16 = objc_alloc(MEMORY[0x277CCA970]);
    v17 = [v20 startDate];
    v18 = [v20 endDate];
    v19 = [v16 initWithStartDate:v17 endDate:v18];

    [*(a1 + 40) _updateScreenTimeWithInterval:v10 rawInterval:v19 deviceIdentifier:v15 partition:*(a1 + 32) event:v20 nonIntersectingScreenTimeIntervalsByDevice:*(a1 + 48) intersectingScreenTimeIntervalsByDevice:*(a1 + 56) longestSessionByDevice:*(a1 + 64) timeZoneByDevice:*(a1 + 72) lastEventDateByDevice:*(a1 + 80)];
  }
}

- (void)_updateScreenTimeWithInterval:(id)interval rawInterval:(id)rawInterval deviceIdentifier:(id)identifier partition:(id)partition event:(id)event nonIntersectingScreenTimeIntervalsByDevice:(id)device intersectingScreenTimeIntervalsByDevice:(id)byDevice longestSessionByDevice:(id)self0 timeZoneByDevice:(id)self1 lastEventDateByDevice:(id)self2
{
  v116 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  rawIntervalCopy = rawInterval;
  identifierCopy = identifier;
  partitionCopy = partition;
  eventCopy = event;
  deviceCopy = device;
  byDeviceCopy = byDevice;
  sessionByDeviceCopy = sessionByDevice;
  zoneByDeviceCopy = zoneByDevice;
  dateByDeviceCopy = dateByDevice;
  v108 = deviceCopy;
  if (deviceCopy)
  {
    v20 = intervalCopy;
    v21 = [deviceCopy objectForKeyedSubscript:identifierCopy];
    v99 = identifierCopy;
    v100 = intervalCopy;
    if (v21)
    {
      v22 = v21;
      v23 = v20;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v24 = [v22 countByEnumeratingWithState:&v111 objects:v115 count:16];
      if (v24)
      {
        v25 = v24;
        v97 = v20;
        v26 = 0;
        v27 = *v112;
        v109 = *v112;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v112 != v27)
            {
              objc_enumerationMutation(v22);
            }

            v29 = *(*(&v111 + 1) + 8 * i);
            if ([v29 intersectsDateInterval:v23])
            {
              v30 = v22;
              startDate = [v29 startDate];
              startDate2 = [v23 startDate];
              v33 = [startDate earlierDate:startDate2];

              endDate = [v29 endDate];
              [v23 endDate];
              v36 = v35 = v26;
              v37 = [endDate laterDate:v36];

              v26 = v35;
              v38 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v33 endDate:v37];

              if (v35)
              {
                [v35 addObject:v29];
              }

              else
              {
                v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v29, 0}];
              }

              v23 = v38;
              v22 = v30;
              v27 = v109;
            }
          }

          v25 = [v22 countByEnumeratingWithState:&v111 objects:v115 count:16];
        }

        while (v25);
        if (v26)
        {
          [v22 removeObjectsInArray:v26];
        }

        deviceCopy = v108;
        v20 = v97;
      }

      else
      {
        v26 = 0;
      }

      [v22 addObject:v23];

      identifierCopy = v99;
      intervalCopy = v100;
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v20, 0}];
      [deviceCopy setObject:v22 forKeyedSubscript:identifierCopy];
    }

    v39 = deviceCopy;
    v40 = v20;
    v41 = [v39 objectForKeyedSubscript:@"AllDevices"];
    if (v41)
    {
      v98 = v39;
      v42 = v41;
      v96 = v40;
      v43 = v40;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v44 = [v42 countByEnumeratingWithState:&v111 objects:v115 count:16];
      if (v44)
      {
        v45 = v44;
        v110 = 0;
        v46 = *v112;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v112 != v46)
            {
              objc_enumerationMutation(v42);
            }

            v48 = *(*(&v111 + 1) + 8 * j);
            if ([v48 intersectsDateInterval:v43])
            {
              v49 = v42;
              startDate3 = [v48 startDate];
              startDate4 = [v43 startDate];
              v52 = [startDate3 earlierDate:startDate4];

              endDate2 = [v48 endDate];
              endDate3 = [v43 endDate];
              v55 = [endDate2 laterDate:endDate3];

              v56 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v52 endDate:v55];
              if (v110)
              {
                [v110 addObject:v48];
              }

              else
              {
                v110 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v48, 0}];
              }

              v43 = v56;
              v42 = v49;
            }
          }

          v45 = [v42 countByEnumeratingWithState:&v111 objects:v115 count:16];
        }

        while (v45);
        v57 = v110;
        if (v110)
        {
          [v42 removeObjectsInArray:v110];
        }

        identifierCopy = v99;
        deviceCopy = v108;
      }

      else
      {
        v57 = 0;
      }

      [v42 addObject:v43];

      intervalCopy = v100;
      v40 = v96;
      v39 = v98;
    }

    else
    {
      v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v40, 0}];
      [v39 setObject:v42 forKeyedSubscript:@"AllDevices"];
    }
  }

  v58 = sessionByDeviceCopy;
  v59 = byDeviceCopy;
  if (byDeviceCopy)
  {
    startDate5 = [rawIntervalCopy startDate];
    v61 = [partitionCopy containsDate:startDate5];

    deviceCopy = v108;
    if (v61)
    {
      v62 = [byDeviceCopy objectForKeyedSubscript:identifierCopy];
      if (v62)
      {
        v63 = v62;
        [v62 addObject:rawIntervalCopy];
      }

      else
      {
        v63 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{rawIntervalCopy, 0}];
        [byDeviceCopy setObject:v63 forKeyedSubscript:identifierCopy];
      }

      deviceCopy = v108;
    }
  }

  if (sessionByDeviceCopy)
  {
    [rawIntervalCopy duration];
    v65 = v64;
    v66 = [sessionByDeviceCopy objectForKeyedSubscript:identifierCopy];
    [v66 duration];
    v68 = v67;

    if (v65 > v68)
    {
      [sessionByDeviceCopy setObject:rawIntervalCopy forKeyedSubscript:identifierCopy];
    }

    v69 = [sessionByDeviceCopy objectForKeyedSubscript:@"AllDevices"];
    [v69 duration];
    v71 = v70;

    deviceCopy = v108;
    if (v65 > v71)
    {
      [sessionByDeviceCopy setObject:rawIntervalCopy forKeyedSubscript:@"AllDevices"];
    }
  }

  if (zoneByDeviceCopy && dateByDeviceCopy)
  {
    v72 = zoneByDeviceCopy;
    v73 = dateByDeviceCopy;
    v74 = identifierCopy;
    v75 = eventCopy;
    v76 = intervalCopy;
    v77 = v74;
    v78 = v74;
    v79 = [v72 objectForKeyedSubscript:v78];

    if (!v79)
    {
      timeZone = [v75 timeZone];
      if (timeZone)
      {
        [v72 setObject:timeZone forKeyedSubscript:v78];
      }

      else
      {
        localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
        [v72 setObject:localTimeZone forKeyedSubscript:v78];
      }
    }

    endDate4 = [v76 endDate];
    v83 = [v73 objectForKeyedSubscript:v78];
    v84 = v83;
    if (!v83 || [v83 compare:endDate4] == -1)
    {
      [v73 setObject:endDate4 forKeyedSubscript:v78];
    }

    v85 = v72;
    v86 = v73;
    v87 = v75;
    v88 = v76;
    v89 = [v85 objectForKeyedSubscript:@"AllDevices"];

    if (!v89)
    {
      timeZone2 = [v87 timeZone];
      if (timeZone2)
      {
        [v85 setObject:timeZone2 forKeyedSubscript:@"AllDevices"];
      }

      else
      {
        localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
        [v85 setObject:localTimeZone2 forKeyedSubscript:@"AllDevices"];
      }
    }

    endDate5 = [v88 endDate];
    v93 = [v86 objectForKeyedSubscript:@"AllDevices"];
    v94 = v93;
    if (!v93 || [v93 compare:endDate5] == -1)
    {
      [v86 setObject:endDate5 forKeyedSubscript:@"AllDevices"];
    }

    identifierCopy = v77;
    deviceCopy = v108;
    v58 = sessionByDeviceCopy;
    v59 = byDeviceCopy;
  }

  v95 = *MEMORY[0x277D85DE8];
}

- (id)_currentScreenTimeIntervalDuringInterval:(id)interval usageStartDate:(id *)date referenceDate:(id)referenceDate
{
  intervalCopy = interval;
  referenceDateCopy = referenceDate;
  keyPathForBacklightOnStatus = [MEMORY[0x277CFE338] keyPathForBacklightOnStatus];
  context = [(USUsageQuerying *)self context];
  v12 = [context objectForKeyedSubscript:keyPathForBacklightOnStatus];
  v13 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [USUsageQuerying _currentScreenTimeIntervalDuringInterval:usageStartDate:referenceDate:];
    }

    goto LABEL_8;
  }

  if (![v12 BOOLValue])
  {
LABEL_8:
    v21 = 0;
    goto LABEL_13;
  }

  v14 = [context lastModifiedDateForContextualKeyPath:keyPathForBacklightOnStatus];
  if (v14)
  {
    dateCopy = date;
    v15 = intervalCopy;
    v16 = referenceDateCopy;
    startDate = [v15 startDate];
    v18 = [startDate laterDate:v14];

    v24 = v15;
    endDate = [v15 endDate];
    v20 = [endDate earlierDate:v16];

    if ([v18 compare:v20] == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v18 endDate:v20];
    }

    v22 = v14;
    *dateCopy = v14;
  }

  else
  {
    v21 = 0;
  }

LABEL_13:

  return v21;
}

- (id)_getBundleIdentiersFromApplicationUsageEvents:(id)events videoUsageEvents:(id)usageEvents interval:(id)interval referenceDate:(id)date focalOnly:(BOOL)only
{
  onlyCopy = only;
  v55 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  usageEventsCopy = usageEvents;
  intervalCopy = interval;
  dateCopy = date;
  v12 = objc_opt_new();
  appBundleID = [MEMORY[0x277CFE158] appBundleID];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v14 = eventsCopy;
  v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        metadata = [v19 metadata];
        v21 = [metadata objectForKeyedSubscript:appBundleID];

        if (v21)
        {
          stringValue = v21;
        }

        else
        {
          value = [v19 value];
          stringValue = [value stringValue];
        }

        [v12 addObject:stringValue];
      }

      v16 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v16);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v24 = usageEventsCopy;
  v25 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v46;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v46 != v27)
        {
          objc_enumerationMutation(v24);
        }

        value2 = [*(*(&v45 + 1) + 8 * j) value];
        stringValue2 = [value2 stringValue];

        [v12 addObject:stringValue2];
      }

      v26 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v26);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __115__USUsageQuerying__getBundleIdentiersFromApplicationUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke;
  v43[3] = &unk_279E09F98;
  v31 = v12;
  v44 = v31;
  [(USUsageQuerying *)self _enumerateCurrentApplicationUsageIntervalsDuringInterval:intervalCopy exemptApplications:0 referenceDate:dateCopy focalOnly:onlyCopy block:v43];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __115__USUsageQuerying__getBundleIdentiersFromApplicationUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke_2;
  v41[3] = &unk_279E09FC0;
  v32 = v31;
  v42 = v32;
  [(USUsageQuerying *)self _enumerateCurrentVideoUsageIntervalsDuringInterval:intervalCopy exemptApplications:0 exemptWebDomains:0 referenceDate:dateCopy block:v41];
  v33 = v42;
  v34 = v32;

  v35 = *MEMORY[0x277D85DE8];
  return v32;
}

void __115__USUsageQuerying__getBundleIdentiersFromApplicationUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  [a2 duration];
  if (v6 > 0.0)
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __115__USUsageQuerying__getBundleIdentiersFromApplicationUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    [v13 duration];
    if (v12 > 0.0)
    {
      [*(a1 + 32) addObject:v10];
    }
  }
}

- (id)_computeApplicationUsageWithEvents:(id)events exemptApplications:(id)applications exemptWebDomains:(id)domains unboundApplicationUsageIntervalsByDevice:(id *)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice categoryUsageIntervalsByDevice:(id)intervalsByDevice aggregatedApplicationUsageIntervalsByDevice:(id)self0 categoryByBundleIdentifier:(id)self1 partition:(id)self2 referenceDate:(id)self3 focalOnly:(BOOL)self4
{
  applicationsCopy = applications;
  byDeviceCopy = byDevice;
  dateByDeviceCopy = dateByDevice;
  intervalsByDeviceCopy = intervalsByDevice;
  usageIntervalsByDeviceCopy = usageIntervalsByDevice;
  identifierCopy = identifier;
  partitionCopy = partition;
  dateCopy = date;
  eventsCopy = events;
  v22 = objc_opt_new();
  deviceCopy = device;
  if (device)
  {
    v23 = objc_opt_new();
  }

  else
  {
    v23 = 0;
  }

  appBundleID = [MEMORY[0x277CFE158] appBundleID];
  isUsageTrusted = [MEMORY[0x277CFE1D0] isUsageTrusted];
  endDate = [partitionCopy endDate];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke;
  v85[3] = &unk_279E09FE8;
  v54 = partitionCopy;
  v86 = v54;
  v87 = appBundleID;
  v53 = applicationsCopy;
  v88 = v53;
  v89 = isUsageTrusted;
  selfCopy = self;
  v27 = v22;
  v91 = v27;
  v28 = v23;
  v92 = v28;
  v29 = intervalsByDeviceCopy;
  v93 = v29;
  v30 = usageIntervalsByDeviceCopy;
  v94 = v30;
  v52 = identifierCopy;
  v95 = v52;
  v31 = byDeviceCopy;
  v96 = v31;
  v50 = dateByDeviceCopy;
  v97 = v50;
  v62 = isUsageTrusted;
  v60 = appBundleID;
  [(USUsageQuerying *)self _enumerateEvents:eventsCopy intervalEndDate:endDate block:v85];

  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke_89;
  v75[3] = &unk_279E0A010;
  v32 = dateCopy;
  v76 = v32;
  selfCopy2 = self;
  v33 = v27;
  v78 = v33;
  v56 = v28;
  v79 = v56;
  v34 = v29;
  v80 = v34;
  v35 = v30;
  v81 = v35;
  v36 = v52;
  v82 = v36;
  v37 = v31;
  v83 = v37;
  v38 = v50;
  v84 = v38;
  [(USUsageQuerying *)self _enumerateCurrentApplicationUsageIntervalsDuringInterval:v54 exemptApplications:v53 referenceDate:v32 focalOnly:only block:v75];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke_2;
  v65[3] = &unk_279E0A038;
  v66 = v32;
  selfCopy3 = self;
  v39 = v33;
  v68 = v39;
  v40 = v56;
  v69 = v40;
  v70 = v34;
  v71 = v35;
  v72 = v36;
  v73 = v37;
  v74 = v38;
  v58 = v38;
  v57 = v37;
  v41 = v36;
  v42 = v35;
  v43 = v34;
  v44 = v32;
  [(USUsageQuerying *)self _enumerateCurrentVideoUsageIntervalsDuringInterval:v54 exemptApplications:v53 exemptWebDomains:0 referenceDate:v44 block:v65];
  if (deviceCopy)
  {
    v45 = v40;
    *deviceCopy = v40;
  }

  v46 = v74;
  v47 = v39;

  return v39;
}

void __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 startDate];
  v6 = [v3 startDate];
  v7 = [v5 laterDate:v6];

  v8 = [v4 endDate];

  v9 = [v3 endDate];
  v10 = [v8 earlierDate:v9];

  if ([v7 compare:v10] == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v10];
  }

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCA970]);
    v13 = [v3 startDate];
    v14 = [v3 endDate];
    v15 = [v12 initWithStartDate:v13 endDate:v14];

    v16 = [v3 source];
    v17 = [v16 syncDeviceID];
    v18 = v17;
    v19 = @"LocalDevice";
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;

    v21 = [v3 metadata];
    v22 = [v21 objectForKeyedSubscript:*(a1 + 40)];

    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v24 = [v3 value];
      v23 = [v24 stringValue];
    }

    v25 = *(a1 + 48);
    if (v25 && v23 && [v25 containsObject:v23])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke_cold_1();
      }
    }

    else
    {
      v26 = [v3 metadata];
      v27 = [v26 objectForKeyedSubscript:*(a1 + 56)];
      v28 = v27;
      v29 = MEMORY[0x277CBEC38];
      if (v27)
      {
        v29 = v27;
      }

      v30 = v29;

      v31 = *(a1 + 64);
      v32 = [v30 BOOLValue];

      v33 = *(a1 + 88);
      [v31 _updateApplicationUsageWithInterval:v11 unboundInterval:v15 bundleIdentifier:v23 trustedApplicationUsage:v32 deviceIdentifier:v20 event:v3 applicationUsageIntervalsByDevice:*(a1 + 72) unboundApplicationUsageIntervalsByDevice:*(a1 + 80) categoryUsageIntervalsByDevice:*(a1 + 88) aggregatedApplicationUsageIntervalsByDevice:*(a1 + 96) categoryByBundleIdentifier:*(a1 + 104) timeZoneByDevice:*(a1 + 112) lastEventDateByDevice:*(a1 + 120)];
    }
  }
}

void __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke_89(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = MEMORY[0x277CCA970];
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v14 = [[v9 alloc] initWithStartDate:v11 endDate:*(a1 + 32)];

  v13 = *(a1 + 64);
  [*(a1 + 40) _updateApplicationUsageWithInterval:v12 unboundInterval:v14 bundleIdentifier:v10 trustedApplicationUsage:a5 deviceIdentifier:@"LocalDevice" event:0 applicationUsageIntervalsByDevice:*(a1 + 48) unboundApplicationUsageIntervalsByDevice:*(a1 + 56) categoryUsageIntervalsByDevice:*(a1 + 64) aggregatedApplicationUsageIntervalsByDevice:*(a1 + 72) categoryByBundleIdentifier:*(a1 + 80) timeZoneByDevice:*(a1 + 88) lastEventDateByDevice:*(a1 + 96)];
}

void __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v10 = MEMORY[0x277CCA970];
    v11 = a4;
    v12 = a3;
    v13 = a2;
    v15 = [[v10 alloc] initWithStartDate:v12 endDate:*(a1 + 32)];

    v14 = *(a1 + 64);
    [*(a1 + 40) _updateApplicationUsageWithInterval:v13 unboundInterval:v15 bundleIdentifier:v11 trustedApplicationUsage:a6 deviceIdentifier:@"LocalDevice" event:0 applicationUsageIntervalsByDevice:*(a1 + 48) unboundApplicationUsageIntervalsByDevice:*(a1 + 56) categoryUsageIntervalsByDevice:*(a1 + 64) aggregatedApplicationUsageIntervalsByDevice:*(a1 + 72) categoryByBundleIdentifier:*(a1 + 80) timeZoneByDevice:*(a1 + 88) lastEventDateByDevice:*(a1 + 96)];
  }
}

- (void)_enumerateCurrentApplicationUsageIntervalsDuringInterval:(id)interval exemptApplications:(id)applications referenceDate:(id)date focalOnly:(BOOL)only block:(id)block
{
  onlyCopy = only;
  v60 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  applicationsCopy = applications;
  dateCopy = date;
  blockCopy = block;
  keyPathForAppUsageDataDictionaries = [MEMORY[0x277CFE338] keyPathForAppUsageDataDictionaries];
  context = [(USUsageQuerying *)self context];
  v14 = [context objectForKeyedSubscript:keyPathForAppUsageDataDictionaries];
  if (v14)
  {
    v39 = context;
    v40 = keyPathForAppUsageDataDictionaries;
    appUsageBundleID = [MEMORY[0x277CFE338] appUsageBundleID];
    appUsageStartDate = [MEMORY[0x277CFE338] appUsageStartDate];
    isUsageTrusted = [MEMORY[0x277CFE338] isUsageTrusted];
    appUsageType = [MEMORY[0x277CFE338] appUsageType];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v38 = v14;
    obj = v14;
    v15 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v15)
    {
      v16 = v15;
      v51 = *v54;
      v42 = applicationsCopy;
      do
      {
        v17 = 0;
        v48 = v16;
        do
        {
          if (*v54 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v53 + 1) + 8 * v17);
          v19 = [v18 objectForKeyedSubscript:{appUsageType, v38}];
          v20 = v19;
          if (!v19 || (v21 = [v19 integerValue], !onlyCopy) || v21 == 1)
          {
            v22 = [v18 objectForKeyedSubscript:appUsageBundleID];
            v23 = v22;
            if (applicationsCopy && v22 && [applicationsCopy containsObject:v22])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                [USUsageQuerying _enumerateCurrentApplicationUsageIntervalsDuringInterval:v23 exemptApplications:&v58 referenceDate:? focalOnly:? block:?];
              }
            }

            else
            {
              v24 = [v18 objectForKeyedSubscript:appUsageStartDate];
              v25 = [v18 objectForKeyedSubscript:isUsageTrusted];
              v26 = v25;
              v27 = MEMORY[0x277CBEC38];
              if (v25)
              {
                v27 = v25;
              }

              v28 = v27;

              v29 = intervalCopy;
              v30 = v24;
              v31 = dateCopy;
              startDate = [v29 startDate];
              v33 = [startDate laterDate:v30];

              endDate = [v29 endDate];
              v35 = [endDate earlierDate:v31];

              if ([v33 compare:v35] == 1)
              {
                v36 = 0;
              }

              else
              {
                v36 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v33 endDate:v35];
              }

              if (v36)
              {
                blockCopy[2](blockCopy, v36, v30, v23, [v28 BOOLValue]);
              }

              applicationsCopy = v42;
              v16 = v48;
            }
          }

          ++v17;
        }

        while (v16 != v17);
        v16 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v16);
    }

    context = v39;
    keyPathForAppUsageDataDictionaries = v40;
    v14 = v38;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _currentScreenTimeIntervalDuringInterval:usageStartDate:referenceDate:];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (id)_getWebDomainsFromWebUsageEvents:(id)events videoUsageEvents:(id)usageEvents interval:(id)interval referenceDate:(id)date focalOnly:(BOOL)only
{
  onlyCopy = only;
  v53 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  usageEventsCopy = usageEvents;
  intervalCopy = interval;
  dateCopy = date;
  v13 = objc_opt_new();
  webDomain = [MEMORY[0x277CFE1D0] webDomain];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v15 = eventsCopy;
  v16 = [v15 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v48;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v15);
        }

        metadata = [*(*(&v47 + 1) + 8 * i) metadata];
        v21 = [metadata objectForKeyedSubscript:webDomain];

        if (v21)
        {
          [v13 addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v17);
  }

  if (usageEventsCopy)
  {
    v34 = intervalCopy;
    v22 = [MEMORY[0x277CFE168] URL];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = usageEventsCopy;
    v23 = usageEventsCopy;
    v24 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v44;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(v23);
          }

          metadata2 = [*(*(&v43 + 1) + 8 * j) metadata];
          v29 = [metadata2 objectForKeyedSubscript:v22];

          host = [v29 host];
          if (host)
          {
            [v13 addObject:host];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v25);
    }

    intervalCopy = v34;
    usageEventsCopy = v35;
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __102__USUsageQuerying__getWebDomainsFromWebUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke;
  v41[3] = &unk_279E0A060;
  v31 = v13;
  v42 = v31;
  [(USUsageQuerying *)self _enumerateCurrentWebUsageIntervalsDuringInterval:intervalCopy exemptWebDomains:0 referenceDate:dateCopy focalOnly:onlyCopy block:v41];
  if (usageEventsCopy)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __102__USUsageQuerying__getWebDomainsFromWebUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke_2;
    v39[3] = &unk_279E09FC0;
    v40 = v31;
    [(USUsageQuerying *)self _enumerateCurrentVideoUsageIntervalsDuringInterval:intervalCopy exemptApplications:0 exemptWebDomains:0 referenceDate:dateCopy block:v39];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

void __102__USUsageQuerying__getWebDomainsFromWebUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  [a2 duration];
  if (v5 > 0.0)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __102__USUsageQuerying__getWebDomainsFromWebUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  [a2 duration];
  v8 = v9;
  if (v9 && v7 > 0.0)
  {
    [*(a1 + 32) addObject:v9];
    v8 = v9;
  }
}

- (id)_computeWebUsageWithEvents:(id)events exemptWebDomains:(id)domains timeZoneByDevice:(id)device lastEventDateByDevice:(id)byDevice categoryUsageIntervalsByDevice:(id)intervalsByDevice aggregatedApplicationUsageIntervalsByDevice:(id)usageIntervalsByDevice aggregatedWebUsageIntervalsByDevice:(id)webUsageIntervalsByDevice categoryByWebDomain:(id)self0 partition:(id)self1 referenceDate:(id)self2 focalOnly:(BOOL)self3
{
  domainsCopy = domains;
  deviceCopy = device;
  byDeviceCopy = byDevice;
  intervalsByDeviceCopy = intervalsByDevice;
  usageIntervalsByDeviceCopy = usageIntervalsByDevice;
  webUsageIntervalsByDeviceCopy = webUsageIntervalsByDevice;
  domainCopy = domain;
  partitionCopy = partition;
  dateCopy = date;
  eventsCopy = events;
  v21 = objc_opt_new();
  webDomain = [MEMORY[0x277CFE1D0] webDomain];
  isUsageTrusted = [MEMORY[0x277CFE1D0] isUsageTrusted];
  v47 = [MEMORY[0x277CFE168] URL];
  appMediaUsageStream = [MEMORY[0x277CFE298] appMediaUsageStream];
  name = [appMediaUsageStream name];

  endDate = [partitionCopy endDate];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke;
  v82[3] = &unk_279E0A088;
  v83 = name;
  v84 = v47;
  v85 = webDomain;
  v86 = domainsCopy;
  v87 = partitionCopy;
  v88 = isUsageTrusted;
  selfCopy = self;
  v25 = v21;
  v90 = v25;
  v26 = intervalsByDeviceCopy;
  v91 = v26;
  v52 = usageIntervalsByDeviceCopy;
  v92 = v52;
  v27 = webUsageIntervalsByDeviceCopy;
  v93 = v27;
  v28 = domainCopy;
  v94 = v28;
  v29 = deviceCopy;
  v95 = v29;
  v49 = byDeviceCopy;
  v96 = v49;
  v64 = isUsageTrusted;
  v30 = partitionCopy;
  v48 = domainsCopy;
  v62 = webDomain;
  v60 = v47;
  v58 = name;
  [(USUsageQuerying *)self _enumerateEvents:eventsCopy intervalEndDate:endDate block:v82];

  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke_93;
  v74[3] = &unk_279E0A0B0;
  v74[4] = self;
  v31 = v25;
  v75 = v31;
  v32 = v26;
  v76 = v32;
  v33 = v52;
  v77 = v33;
  v34 = v27;
  v78 = v34;
  v35 = v28;
  v79 = v35;
  v36 = v29;
  v80 = v36;
  v37 = v49;
  v81 = v37;
  [(USUsageQuerying *)self _enumerateCurrentWebUsageIntervalsDuringInterval:v30 exemptWebDomains:v48 referenceDate:dateCopy focalOnly:only block:v74];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke_2;
  v66[3] = &unk_279E0A0D8;
  v66[4] = self;
  v38 = v31;
  v67 = v38;
  v68 = v32;
  v69 = v33;
  v70 = v34;
  v71 = v35;
  v72 = v36;
  v73 = v37;
  v56 = v37;
  v55 = v36;
  v39 = v35;
  v40 = v34;
  v41 = v33;
  v42 = v32;
  [(USUsageQuerying *)self _enumerateCurrentVideoUsageIntervalsDuringInterval:v30 exemptApplications:0 exemptWebDomains:v48 referenceDate:dateCopy block:v66];

  v43 = v73;
  v44 = v38;

  return v38;
}

void __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 syncDeviceID];
  v6 = v5;
  v7 = @"LocalDevice";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v3 stream];
  v10 = [v9 name];

  LODWORD(v9) = [v10 isEqualToString:a1[4]];
  v11 = [v3 metadata];
  v12 = v11;
  if (v9)
  {
    v13 = [v11 objectForKeyedSubscript:a1[5]];

    v14 = [v13 host];
    v12 = v13;
  }

  else
  {
    v14 = [v11 objectForKeyedSubscript:a1[6]];
  }

  if (v14)
  {
    v15 = a1[7];
    if (v15 && [v15 containsObject:v14])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke_cold_1();
      }
    }

    else
    {
      v16 = a1[8];
      v17 = v3;
      v18 = v16;
      v19 = [v18 startDate];
      v20 = [v17 startDate];
      v21 = [v19 laterDate:v20];

      v22 = [v18 endDate];

      v23 = [v17 endDate];
      v24 = [v22 earlierDate:v23];

      if ([v21 compare:v24] == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v21 endDate:v24];
      }

      if (v25)
      {
        v26 = [v17 metadata];
        v27 = [v26 objectForKeyedSubscript:a1[9]];
        v28 = v27;
        v29 = MEMORY[0x277CBEC38];
        if (v27)
        {
          v29 = v27;
        }

        v30 = v29;

        v31 = a1[10];
        v32 = [v30 BOOLValue];

        [v31 _updateWebUsageWithInterval:v25 webDomain:v14 trustedWebUsage:v32 deviceIdentifier:v8 event:v17 webUsageIntervalsByDevice:a1[11] categoryUsageIntervalsByDevice:a1[12] aggregatedApplicationUsageIntervalsByDevice:a1[13] aggregatedWebUsageIntervalsByDevice:a1[14] categoryByWebDomain:a1[15] timeZoneByDevice:a1[16] lastEventDateByDevice:a1[17]];
      }
    }
  }
}

uint64_t __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    return [*(result + 32) _updateWebUsageWithInterval:a2 webDomain:a5 trustedWebUsage:a6 deviceIdentifier:@"LocalDevice" event:0 webUsageIntervalsByDevice:*(result + 40) categoryUsageIntervalsByDevice:*(result + 48) aggregatedApplicationUsageIntervalsByDevice:*(result + 56) aggregatedWebUsageIntervalsByDevice:*(result + 64) categoryByWebDomain:*(result + 72) timeZoneByDevice:*(result + 80) lastEventDateByDevice:*(result + 88)];
  }

  return result;
}

- (void)_enumerateCurrentWebUsageIntervalsDuringInterval:(id)interval exemptWebDomains:(id)domains referenceDate:(id)date focalOnly:(BOOL)only block:(id)block
{
  onlyCopy = only;
  v66 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  domainsCopy = domains;
  dateCopy = date;
  blockCopy = block;
  keyPathForAppWebUsageDataDictionaries = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
  context = [(USUsageQuerying *)self context];
  v15 = [context objectForKeyedSubscript:keyPathForAppWebUsageDataDictionaries];
  if (v15)
  {
    v43 = context;
    v44 = keyPathForAppWebUsageDataDictionaries;
    appWebUsageWebDomain = [MEMORY[0x277CFE338] appWebUsageWebDomain];
    appWebUsageStartDate = [MEMORY[0x277CFE338] appWebUsageStartDate];
    isUsageTrusted = [MEMORY[0x277CFE338] isUsageTrusted];
    appWebUsageBundleID = [MEMORY[0x277CFE338] appWebUsageBundleID];
    appWebUsageType = [MEMORY[0x277CFE338] appWebUsageType];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v42 = v15;
    obj = v15;
    v17 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v60;
      v50 = domainsCopy;
      v49 = onlyCopy;
      v47 = *v60;
      v48 = appWebUsageType;
      do
      {
        v20 = 0;
        v55 = v18;
        do
        {
          if (*v60 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v59 + 1) + 8 * v20);
          v22 = [v21 objectForKeyedSubscript:{appWebUsageType, v42}];
          integerValue = [v22 integerValue];
          integerValue2 = [v22 integerValue];
          v25 = integerValue == 1;
          if (!onlyCopy)
          {
            v25 = integerValue == 1 || integerValue2 == 0;
          }

          if (v25)
          {
            v26 = [v21 objectForKeyedSubscript:appWebUsageWebDomain];
            v27 = v26;
            if (domainsCopy && v26 && [domainsCopy containsObject:v26])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                [USUsageQuerying _enumerateCurrentWebUsageIntervalsDuringInterval:v27 exemptWebDomains:&v64 referenceDate:? focalOnly:? block:?];
              }
            }

            else
            {
              v28 = [v21 objectForKeyedSubscript:appWebUsageStartDate];
              v29 = [v21 objectForKeyedSubscript:isUsageTrusted];
              v30 = v29;
              v31 = MEMORY[0x277CBEC38];
              if (v29)
              {
                v31 = v29;
              }

              v58 = v31;

              v32 = intervalCopy;
              v33 = v28;
              v34 = dateCopy;
              startDate = [v32 startDate];
              v36 = [startDate laterDate:v33];

              endDate = [v32 endDate];
              v38 = [endDate earlierDate:v34];

              if ([v36 compare:v38] == 1)
              {
                v39 = 0;
              }

              else
              {
                v39 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v36 endDate:v38];
              }

              if (v39)
              {
                v40 = [v21 objectForKeyedSubscript:appWebUsageBundleID];
                blockCopy[2](blockCopy, v39, v27, v40, [v58 BOOLValue]);
              }

              domainsCopy = v50;
              onlyCopy = v49;
              v19 = v47;
              appWebUsageType = v48;
              v18 = v55;
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v18);
    }

    context = v43;
    keyPathForAppWebUsageDataDictionaries = v44;
    v15 = v42;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _currentScreenTimeIntervalDuringInterval:usageStartDate:referenceDate:];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_computeNowPlayingUsageWithEvents:(id)events categoryUsageIntervalsByDevice:(id)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice partition:(id)partition referenceDate:(id)date
{
  deviceCopy = device;
  byDeviceCopy = byDevice;
  dateByDeviceCopy = dateByDevice;
  dateCopy = date;
  partitionCopy = partition;
  eventsCopy = events;
  endDate = [partitionCopy endDate];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __147__USUsageQuerying__computeNowPlayingUsageWithEvents_categoryUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_partition_referenceDate___block_invoke;
  v28 = &unk_279E0A100;
  selfCopy = self;
  v21 = deviceCopy;
  v30 = v21;
  v22 = byDeviceCopy;
  v31 = v22;
  v23 = dateByDeviceCopy;
  v32 = v23;
  [(USUsageQuerying *)self _enumerateEvents:eventsCopy intervalEndDate:endDate block:&v25];

  selfCopy = [(USUsageQuerying *)self _currentNowPlayingUsageIntervalsDuringInterval:partitionCopy referenceDate:dateCopy, v25, v26, v27, v28, selfCopy];

  if (selfCopy)
  {
    [(USUsageQuerying *)self _updateNowPlayingUsageWithInterval:selfCopy event:0 deviceIdentifier:@"LocalDevice" categoryUsageIntervalsByDevice:v21 timeZoneByDevice:v22 lastEventDateByDevice:v23];
  }
}

void __147__USUsageQuerying__computeNowPlayingUsageWithEvents_categoryUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_partition_referenceDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 syncDeviceID];
  v6 = v5;
  v7 = @"LocalDevice";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [v3 startDate];
  v11 = [v3 endDate];
  v12 = [v9 initWithStartDate:v10 endDate:v11];

  [*(a1 + 32) _updateNowPlayingUsageWithInterval:v12 event:v3 deviceIdentifier:v8 categoryUsageIntervalsByDevice:*(a1 + 40) timeZoneByDevice:*(a1 + 48) lastEventDateByDevice:*(a1 + 56)];
}

- (void)_updateNowPlayingUsageWithInterval:(id)interval event:(id)event deviceIdentifier:(id)identifier categoryUsageIntervalsByDevice:(id)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice
{
  v128 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  eventCopy = event;
  identifierCopy = identifier;
  deviceCopy = device;
  byDeviceCopy = byDevice;
  dateByDeviceCopy = dateByDevice;
  if (deviceCopy)
  {
    v106 = dateByDeviceCopy;
    v18 = *MEMORY[0x277CF95D0];
    v19 = intervalCopy;
    v20 = deviceCopy;
    v21 = identifierCopy;
    v22 = v18;
    v107 = v19;
    v23 = v19;
    v24 = [v20 objectForKeyedSubscript:v21];
    if (v24)
    {
      v25 = v24;
      v26 = v23;
      v27 = [v25 objectForKeyedSubscript:v22];
      if (v27)
      {
        v100 = v22;
        v102 = v20;
        v104 = identifierCopy;
        v28 = v27;
        v29 = v26;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v30 = [v28 countByEnumeratingWithState:&v123 objects:v127 count:16];
        v99 = v26;
        if (v30)
        {
          v31 = v30;
          v108 = byDeviceCopy;
          v111 = deviceCopy;
          obj = 0;
          v32 = *v124;
          v115 = *v124;
          v117 = v28;
          do
          {
            v33 = 0;
            v119 = v31;
            do
            {
              if (*v124 != v32)
              {
                objc_enumerationMutation(v28);
              }

              v34 = *(*(&v123 + 1) + 8 * v33);
              if ([v34 intersectsDateInterval:v29])
              {
                v35 = v25;
                v36 = v21;
                v37 = v23;
                startDate = [v34 startDate];
                startDate2 = [v29 startDate];
                v40 = [startDate earlierDate:startDate2];

                endDate = [v34 endDate];
                endDate2 = [v29 endDate];
                v43 = [endDate laterDate:endDate2];

                v44 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v40 endDate:v43];
                if (obj)
                {
                  [obj addObject:v34];
                }

                else
                {
                  obj = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v34, 0}];
                }

                v23 = v37;

                v29 = v44;
                v21 = v36;
                v25 = v35;
                v32 = v115;
                v28 = v117;
                v31 = v119;
              }

              ++v33;
            }

            while (v31 != v33);
            v31 = [v28 countByEnumeratingWithState:&v123 objects:v127 count:16];
          }

          while (v31);
          v45 = obj;
          if (obj)
          {
            [v28 removeObjectsInArray:obj];
          }

          identifierCopy = v104;
          byDeviceCopy = v108;
          deviceCopy = v111;
        }

        else
        {
          v45 = 0;
        }

        [v28 addObject:v29];

        v22 = v100;
        v20 = v102;
        v26 = v99;
      }

      else
      {
        v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v26, 0}];
        [v25 setObject:v28 forKeyedSubscript:v22];
      }
    }

    else
    {
      v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v23, 0}];
      v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v46, v22, 0}];
      [v20 setObject:v25 forKeyedSubscript:v21];
    }

    v47 = v20;
    v48 = v22;
    v49 = v23;
    v50 = [v47 objectForKeyedSubscript:@"AllDevices"];
    if (v50)
    {
      v51 = v50;
      v52 = v49;
      v53 = [v51 objectForKeyedSubscript:v48];
      intervalCopy = v107;
      if (v53)
      {
        v112 = deviceCopy;
        v105 = identifierCopy;
        v54 = v53;
        v55 = v52;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        obja = v54;
        v56 = [v54 countByEnumeratingWithState:&v123 objects:v127 count:16];
        if (v56)
        {
          v57 = v56;
          v101 = v52;
          v103 = v51;
          v116 = v49;
          v118 = v48;
          v120 = v47;
          v109 = byDeviceCopy;
          v58 = 0;
          v59 = *v124;
          v60 = obja;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v124 != v59)
              {
                objc_enumerationMutation(v60);
              }

              v62 = *(*(&v123 + 1) + 8 * i);
              if ([v62 intersectsDateInterval:v55])
              {
                startDate3 = [v62 startDate];
                startDate4 = [v55 startDate];
                v65 = [startDate3 earlierDate:startDate4];

                endDate3 = [v62 endDate];
                endDate4 = [v55 endDate];
                v68 = [endDate3 laterDate:endDate4];

                v69 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v65 endDate:v68];
                if (v58)
                {
                  [v58 addObject:v62];
                }

                else
                {
                  v58 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v62, 0}];
                }

                v55 = v69;
                v60 = obja;
              }
            }

            v57 = [v60 countByEnumeratingWithState:&v123 objects:v127 count:16];
          }

          while (v57);
          if (v58)
          {
            [v60 removeObjectsInArray:v58];
          }

          v51 = v103;
          identifierCopy = v105;
          byDeviceCopy = v109;
          v48 = v118;
          v47 = v120;
          v49 = v116;
          v70 = v60;
          v52 = v101;
        }

        else
        {
          v58 = 0;
          v70 = obja;
        }

        [v70 addObject:v55];

        intervalCopy = v107;
        deviceCopy = v112;
      }

      else
      {
        v70 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v52, 0}];
        [v51 setObject:v70 forKeyedSubscript:v48];
      }

      v71 = v51;
    }

    else
    {
      v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v49, 0}];
      v71 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v51, v48, 0}];
      [v47 setObject:v71 forKeyedSubscript:@"AllDevices"];
      intervalCopy = v107;
    }

    dateByDeviceCopy = v106;
  }

  if (byDeviceCopy && dateByDeviceCopy)
  {
    v110 = byDeviceCopy;
    v113 = deviceCopy;
    v72 = dateByDeviceCopy;
    v73 = byDeviceCopy;
    v74 = v72;
    v75 = v72;
    v76 = eventCopy;
    v77 = intervalCopy;
    v78 = identifierCopy;
    v79 = v77;
    v80 = v78;
    v81 = v78;
    v82 = [v73 objectForKeyedSubscript:v81];

    if (!v82)
    {
      timeZone = [v76 timeZone];
      if (timeZone)
      {
        [v73 setObject:timeZone forKeyedSubscript:v81];
      }

      else
      {
        localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
        [v73 setObject:localTimeZone forKeyedSubscript:v81];
      }
    }

    endDate5 = [v79 endDate];
    v86 = [v75 objectForKeyedSubscript:v81];
    v87 = v86;
    if (!v86 || [v86 compare:endDate5] == -1)
    {
      [v75 setObject:endDate5 forKeyedSubscript:v81];
    }

    v88 = v73;
    v89 = v75;
    v90 = v76;
    v91 = v79;
    v92 = [v88 objectForKeyedSubscript:@"AllDevices"];

    if (!v92)
    {
      timeZone2 = [v90 timeZone];
      if (timeZone2)
      {
        [v88 setObject:timeZone2 forKeyedSubscript:@"AllDevices"];
      }

      else
      {
        localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
        [v88 setObject:localTimeZone2 forKeyedSubscript:@"AllDevices"];
      }
    }

    endDate6 = [v91 endDate];
    v96 = [v89 objectForKeyedSubscript:@"AllDevices"];
    v97 = v96;
    if (!v96 || [v96 compare:endDate6] == -1)
    {
      [v89 setObject:endDate6 forKeyedSubscript:@"AllDevices"];
    }

    identifierCopy = v80;
    byDeviceCopy = v110;
    deviceCopy = v113;
    dateByDeviceCopy = v74;
  }

  v98 = *MEMORY[0x277D85DE8];
}

- (id)_currentNowPlayingUsageIntervalsDuringInterval:(id)interval referenceDate:(id)date
{
  intervalCopy = interval;
  dateCopy = date;
  keyPathForNowPlayingDataDictionary = [MEMORY[0x277CFE338] keyPathForNowPlayingDataDictionary];
  context = [(USUsageQuerying *)self context];
  v10 = [context objectForKeyedSubscript:keyPathForNowPlayingDataDictionary];
  v11 = v10;
  if (v10)
  {
    if (usageContextContainsPlayingQuickLookVideo(v10))
    {
      v12 = [context lastModifiedDateForContextualKeyPath:keyPathForNowPlayingDataDictionary];
      v13 = intervalCopy;
      v14 = dateCopy;
      startDate = [v13 startDate];
      v21 = v12;
      v16 = [startDate laterDate:v12];

      endDate = [v13 endDate];
      v18 = [endDate earlierDate:v14];

      if ([v16 compare:v18] == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v18];
      }

      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _currentScreenTimeIntervalDuringInterval:usageStartDate:referenceDate:];
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (void)_enumerateCurrentVideoUsageIntervalsDuringInterval:(id)interval exemptApplications:(id)applications exemptWebDomains:(id)domains referenceDate:(id)date block:(id)block
{
  v60 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  applicationsCopy = applications;
  domainsCopy = domains;
  dateCopy = date;
  blockCopy = block;
  keyPathForAppMediaUsageDataDictionaries = [MEMORY[0x277CFE338] keyPathForAppMediaUsageDataDictionaries];
  context = [(USUsageQuerying *)self context];
  v15 = [context objectForKeyedSubscript:keyPathForAppMediaUsageDataDictionaries];
  if (v15)
  {
    v36 = context;
    v37 = keyPathForAppMediaUsageDataDictionaries;
    appMediaUsageBundleID = [MEMORY[0x277CFE338] appMediaUsageBundleID];
    appMediaUsageStartDate = [MEMORY[0x277CFE338] appMediaUsageStartDate];
    appMediaUsageURL = [MEMORY[0x277CFE338] appMediaUsageURL];
    isUsageTrusted = [MEMORY[0x277CFE338] isUsageTrusted];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v35 = v15;
    obj = v15;
    v48 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v48)
    {
      v40 = *v52;
      v41 = applicationsCopy;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v52 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v51 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:appMediaUsageBundleID];
          if (applicationsCopy && [applicationsCopy containsObject:v18])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              [USUsageQuerying _enumerateCurrentVideoUsageIntervalsDuringInterval:v18 exemptApplications:&v58 exemptWebDomains:? referenceDate:? block:?];
            }

            v18 = 0;
          }

          v50 = [v17 objectForKeyedSubscript:appMediaUsageURL];
          host = [v50 host];
          v20 = host;
          if (domainsCopy && host && [domainsCopy containsObject:host])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              [USUsageQuerying _enumerateCurrentVideoUsageIntervalsDuringInterval:v18 exemptApplications:&v56 exemptWebDomains:? referenceDate:? block:?];
            }

            v20 = 0;
          }

          v21 = [v17 objectForKeyedSubscript:appMediaUsageStartDate];
          v22 = [v17 objectForKeyedSubscript:isUsageTrusted];
          v23 = v22;
          v24 = MEMORY[0x277CBEC38];
          if (v22)
          {
            v24 = v22;
          }

          v25 = v24;

          v26 = intervalCopy;
          v27 = v21;
          v28 = dateCopy;
          startDate = [v26 startDate];
          v30 = [startDate laterDate:v27];

          endDate = [v26 endDate];
          v32 = [endDate earlierDate:v28];

          if ([v30 compare:v32] == 1)
          {
            v33 = 0;
          }

          else
          {
            v33 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v30 endDate:v32];
          }

          if (v33)
          {
            blockCopy[2](blockCopy, v33, v27, v18, v20, [v25 BOOLValue]);
          }

          applicationsCopy = v41;
        }

        v48 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v48);
    }

    context = v36;
    keyPathForAppMediaUsageDataDictionaries = v37;
    v15 = v35;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _currentScreenTimeIntervalDuringInterval:usageStartDate:referenceDate:];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)_computeNotificationsWithEvents:(id)events timeZoneByDevice:(id)device lastEventDateByDevice:(id)byDevice partition:(id)partition
{
  deviceCopy = device;
  byDeviceCopy = byDevice;
  partitionCopy = partition;
  eventsCopy = events;
  v14 = objc_opt_new();
  appBundleID = [MEMORY[0x277CFE158] appBundleID];
  bundleID = [MEMORY[0x277CFE240] bundleID];
  isUsageTrusted = [MEMORY[0x277CFE1D0] isUsageTrusted];
  endDate = [partitionCopy endDate];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __100__USUsageQuerying__computeNotificationsWithEvents_timeZoneByDevice_lastEventDateByDevice_partition___block_invoke;
  v28[3] = &unk_279E09F70;
  v29 = appBundleID;
  v30 = bundleID;
  v31 = isUsageTrusted;
  selfCopy = self;
  v19 = v14;
  v33 = v19;
  v34 = deviceCopy;
  v35 = byDeviceCopy;
  v20 = byDeviceCopy;
  v21 = deviceCopy;
  v22 = isUsageTrusted;
  v23 = bundleID;
  v24 = appBundleID;
  [(USUsageQuerying *)self _enumerateEvents:eventsCopy intervalEndDate:endDate block:v28];

  v25 = v35;
  v26 = v19;

  return v19;
}

void __100__USUsageQuerying__computeNotificationsWithEvents_timeZoneByDevice_lastEventDateByDevice_partition___block_invoke(void *a1, void *a2)
{
  v20 = a2;
  v3 = [v20 metadata];
  v4 = [v3 objectForKeyedSubscript:a1[4]];
  v5 = [v3 objectForKeyedSubscript:a1[5]];
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = v7;
    v9 = [v20 source];
    v10 = [v9 syncDeviceID];
    v11 = v10;
    v12 = @"LocalDevice";
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v14 = [v3 objectForKeyedSubscript:a1[6]];
    v15 = v14;
    v16 = MEMORY[0x277CBEC38];
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v18 = a1[7];
    v19 = [v17 BOOLValue];

    [v18 _updateNotificationsWithEvent:v20 bundleIdentifier:v8 trustedNotification:v19 deviceIdentifier:v13 notificationsByDevice:a1[8] timeZoneByDevice:a1[9] lastEventDateByDevice:a1[10]];
  }
}

- (void)_enumerateEvents:(id)events intervalEndDate:(id)date block:(id)block
{
  dateCopy = date;
  blockCopy = block;
  eventsCopy = events;
  v10 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__USUsageQuerying__enumerateEvents_intervalEndDate_block___block_invoke;
  v14[3] = &unk_279E0A128;
  v15 = dateCopy;
  v16 = v10;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = v10;
  v13 = dateCopy;
  [eventsCopy enumerateObjectsUsingBlock:v14];
  [eventsCopy removeObjectsAtIndexes:v12];
}

void __58__USUsageQuerying__enumerateEvents_intervalEndDate_block___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v13 = v7;
  v9 = [v7 startDate];
  v10 = [v8 compare:v9];

  if (v10 == -1)
  {
    *a4 = 1;
  }

  else
  {
    v11 = [v13 endDate];
    v12 = [v11 compare:*(a1 + 32)];

    if (v12 == -1)
    {
      [*(a1 + 40) addIndex:a3];
    }

    (*(*(a1 + 48) + 16))();
  }
}

+ (void)queryUsageDuringInterval:(id)interval partitionInterval:(double)partitionInterval adjustedStartDate:(id)date eventStreams:(id)streams categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)domain usageReportHandler:(id)handler completionHandler:(id)self0
{
  v77 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  dateCopy = date;
  streamsCopy = streams;
  identifierCopy = identifier;
  domainCopy = domain;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v45 = intervalCopy;
  startDate = [intervalCopy startDate];
  v44 = [[USUsageAccumulator alloc] initWithApplicationCategories:identifierCopy webCategories:domainCopy];
  if ([dateCopy compare:startDate] == -1)
  {
    v41 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:dateCopy endDate:startDate maxEvents:0 lastN:0 reversed:0];
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(streamsCopy, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v19 = streamsCopy;
    v20 = [v19 countByEnumeratingWithState:&v72 objects:v76 count:16];
    if (v20)
    {
      v21 = *v73;
      v22 = *MEMORY[0x277CF0E88];
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v73 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v72 + 1) + 8 * i);
          identifier = [v24 identifier];
          v26 = [identifier isEqualToString:v22];

          if ((v26 & 1) == 0)
          {
            [v18 addObject:v24];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v72 objects:v76 count:16];
      }

      while (v20);
    }

    v27 = [self _chronologicalPublisherWithOptions:v41 eventStreams:v18];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke;
    v69[3] = &unk_279E0A330;
    v70 = v41;
    selfCopy = self;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke_2;
    v66[3] = &unk_279E0A358;
    v67 = v44;
    v68 = startDate;
    v28 = v41;
    v29 = [v27 sinkWithCompletion:v69 receiveInput:v66];
  }

  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__1;
  v64[4] = __Block_byref_object_dispose__1;
  v65 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate duration:partitionInterval];
  v30 = objc_alloc(MEMORY[0x277CF1A50]);
  endDate = [v45 endDate];
  v32 = [v30 initWithStartDate:startDate endDate:endDate maxEvents:0 lastN:0 reversed:0];

  v33 = [self _chronologicalPublisherWithOptions:v32 eventStreams:streamsCopy];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke_155;
  v57[3] = &unk_279E0A380;
  v58 = v44;
  v62 = v64;
  v60 = handlerCopy;
  selfCopy2 = self;
  v34 = v32;
  v59 = v34;
  v35 = completionHandlerCopy;
  v61 = v35;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke_2_156;
  v51[3] = &unk_279E0A3A8;
  v55 = v64;
  v36 = v45;
  v52 = v36;
  v37 = v58;
  v53 = v37;
  v38 = v60;
  v54 = v38;
  partitionIntervalCopy = partitionInterval;
  v39 = [v33 sinkWithCompletion:v57 receiveInput:v51];

  _Block_object_dispose(v64, 8);
  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke_155(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  [v3 aggregateUsageForInterval:v4 usageReportHandler:v5];
  [*(a1 + 72) _completion:v6 options:*(a1 + 40)];

  result = *(a1 + 56);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke_2_156(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 absoluteTimestamp], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v3 timestamp];
    v5 = [v6 initWithTimeIntervalSinceReferenceDate:?];
  }

  v7 = [*(*(*(a1 + 56) + 8) + 40) startDate];
  if ([v5 compare:v7] == -1)
  {
  }

  else
  {
    v8 = [*(a1 + 32) containsDate:v5];

    if (v8)
    {
      if (([*(*(*(a1 + 56) + 8) + 40) containsDate:v5] & 1) == 0)
      {
        do
        {
          [*(a1 + 40) aggregateUsageForInterval:*(*(*(a1 + 56) + 8) + 40) usageReportHandler:*(a1 + 48)];
          v9 = [*(*(*(a1 + 56) + 8) + 40) endDate];
          v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 duration:*(a1 + 64)];
          v11 = *(*(a1 + 56) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;
        }

        while (![*(*(*(a1 + 56) + 8) + 40) containsDate:v5]);
      }

      [*(a1 + 40) accumulateEvent:v3 timestamp:v5];
      goto LABEL_12;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v3 eventBody];
    v15 = 138543362;
    v16 = v13;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipping event that occurred outside of the report interval %{public}@", &v15, 0xCu);
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)_chronologicalPublisherWithOptions:(id)options eventStreams:(id)streams
{
  v30 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  streamsCopy = streams;
  if ([streamsCopy count])
  {
    firstObject = [streamsCopy firstObject];
    v8 = [firstObject publisherWithOptions:optionsCopy];
    if ([streamsCopy count] >= 2)
    {
      v22 = v8;
      v24 = optionsCopy;
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(streamsCopy, "count") - 1}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v23 = streamsCopy;
      v10 = streamsCopy;
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            identifier = [v15 identifier];
            identifier2 = [firstObject identifier];
            v18 = [identifier isEqualToString:identifier2];

            if ((v18 & 1) == 0)
            {
              v19 = [v15 publisherWithOptions:v24];
              [v9 addObject:v19];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v12);
      }

      v8 = [v22 orderedMergeWithOthers:v9 comparator:&__block_literal_global_0];

      streamsCopy = v23;
      optionsCopy = v24;
    }
  }

  else
  {
    v8 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __74__USUsageQuerying_Biome___chronologicalPublisherWithOptions_eventStreams___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = [v6 eventBody];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 absoluteTimestamp], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v6 timestamp];
    v8 = [v9 initWithTimeIntervalSinceReferenceDate:?];
  }

  v10 = v5;
  v11 = [v10 eventBody];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v11 absoluteTimestamp], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v10 timestamp];
    v12 = [v13 initWithTimeIntervalSinceReferenceDate:?];
  }

  v14 = [v8 compare:v12];
  return v14;
}

+ (void)_completion:(id)_completion options:(id)options
{
  v11 = *MEMORY[0x277D85DE8];
  _completionCopy = _completion;
  optionsCopy = options;
  state = [_completionCopy state];
  if (state == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [USUsageQuerying(Biome) _completion:optionsCopy options:_completionCopy];
    }
  }

  else if (!state && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = optionsCopy;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully queried Biome for usage reports with options %{public}@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[USUsageQuerying queryUsageDuringInterval:partitionInterval:focalOnly:completionHandler:]_block_invoke_2"];
  [v1 handleFailureInFunction:v0 file:@"USUsageQuerying.m" lineNumber:129 description:@"Expecting event types count to be 6"];
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2_cold_2(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Found notification event with no bundle ID. Skipping event", buf, 2u);
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Looking up %lu application categories to build a usage report", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_38_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Looking up %lu web domain categories to build a usage report", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 192) object:*a2 file:@"USUsageQuerying.m" lineNumber:333 description:@"lastEventDate for a USUsageReport must not be nil"];
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_2_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[USUsageQuerying queryForApplications:exemptApplications:webDomains:categories:interval:focalOnly:error:]_block_invoke_2"];
  [v1 handleFailureInFunction:v0 file:@"USUsageQuerying.m" lineNumber:675 description:@"Expecting event types count to be 4"];
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_2_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Looking up %lu application categories to determine remaining budget time", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_68_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Looking up %lu web domain categories to determine remaining budget time", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_computeUsageForApplications:exemptApplications:webDomains:categories:applicationUsageEvents:webUsageEvents:nowPlayingEvents:videoUsageEvents:categoryByBundleIdentifier:categoryByWebDomain:interval:referenceDate:focalOnly:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Exempt bundleIdentifiers was %{public}@ and has been expanded to %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_computeUsageForApplications:exemptApplications:webDomains:categories:applicationUsageEvents:webUsageEvents:nowPlayingEvents:videoUsageEvents:categoryByBundleIdentifier:categoryByWebDomain:interval:referenceDate:focalOnly:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Exempt bundleIdentifiers %{public}@ have associated web domains %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_generateUsageTimeWithApplicationUsageIntervals:(uint64_t)a1 webUsageIntervalsByDevice:(uint64_t)a2 categoryUsageIntervalsByDevice:aggregatedApplicationUsageIntervalsByDevice:aggregatedWebUsageIntervalsByDevice:categoryByBundleIdentifier:categoryByWebDomain:applications:webDomains:categories:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"USUsageQuerying.m" lineNumber:848 description:@"Somehow had budgeted applications but no aggregated application usage intervals"];
}

- (void)_generateUsageTimeWithApplicationUsageIntervals:(uint64_t)a1 webUsageIntervalsByDevice:(uint64_t)a2 categoryUsageIntervalsByDevice:aggregatedApplicationUsageIntervalsByDevice:aggregatedWebUsageIntervalsByDevice:categoryByBundleIdentifier:categoryByWebDomain:applications:webDomains:categories:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"USUsageQuerying.m" lineNumber:897 description:@"Somehow had budgeted categories but no category usage intervals"];
}

void __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_2_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[USUsageQuerying queryForUncategorizedLocalWebUsageDuringInterval:completionHandler:]_block_invoke_2"];
  [v1 handleFailureInFunction:v0 file:@"USUsageQuerying.m" lineNumber:939 description:@"Expecting event to be non-nil"];
}

void __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_2_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Looking up %lu web domain categories to report uncategorized web domain usage", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_currentScreenTimeIntervalDuringInterval:usageStartDate:referenceDate:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "_CDClientContext has no knowledge of %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Skipping calculating usage for event %{public}@ because it is considered exempt", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Skipping calculating usage for %{public}@ because it is considered exempt", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end