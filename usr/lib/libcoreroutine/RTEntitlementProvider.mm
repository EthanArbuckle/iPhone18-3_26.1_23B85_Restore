@interface RTEntitlementProvider
+ (id)daemonProtocolEntitlementProvider;
+ (id)helperServiceProtocolEntitlementProvider;
+ (id)internalDaemonProtocolEntitlementProvider;
+ (id)safetyMonitorDaemonProtocolEntitlementProvider;
+ (id)selectorsForProtocol:(id)protocol;
- (BOOL)clientConnection:(id)connection hasEntitlement:(id)entitlement;
- (BOOL)clientConnection:(id)connection satisfiesEntitlementRequirementsForInvocation:(id)invocation;
- (RTEntitlementProvider)initWithProtocol:(id)protocol entitlementsDictionary:(id)dictionary;
@end

@implementation RTEntitlementProvider

+ (id)daemonProtocolEntitlementProvider
{
  v2 = qword_2814A7D28;
  v3 = &unk_2845AEF18;
  if (v2 != -1)
  {
    dispatch_once(&qword_2814A7D28, &__block_literal_global_78);
  }

  v4 = [RTEntitlementProvider alloc];
  v5 = [(RTEntitlementProvider *)v4 initWithProtocol:v3 entitlementsDictionary:_MergedGlobals_115];

  return v5;
}

- (RTEntitlementProvider)initWithProtocol:(id)protocol entitlementsDictionary:(id)dictionary
{
  protocolCopy = protocol;
  dictionaryCopy = dictionary;
  v9 = dictionaryCopy;
  if (!protocolCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: protocol";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!dictionaryCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: entitlementsDictionary";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = RTEntitlementProvider;
  v10 = [(RTEntitlementProvider *)&v16 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_protocol, protocol);
    objc_storeStrong(p_isa + 2, dictionary);
  }

  self = p_isa;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

void __58__RTEntitlementProvider_daemonProtocolEntitlementProvider__block_invoke()
{
  v316[101] = *MEMORY[0x277D85DE8];
  v211 = NSStringFromSelector(sel_setRoutineEnabled_reply_);
  v315[0] = v211;
  v314 = @"com.apple.CoreRoutine.preferences";
  v210 = [MEMORY[0x277CBEA60] arrayWithObjects:&v314 count:1];
  v316[0] = v210;
  v209 = NSStringFromSelector(sel_clearRoutineWithReply_);
  v315[1] = v209;
  v313 = @"com.apple.CoreRoutine.preferences";
  v208 = [MEMORY[0x277CBEA60] arrayWithObjects:&v313 count:1];
  v316[1] = v208;
  v207 = NSStringFromSelector(sel_fetchPathToDiagnosticFilesWithOptions_reply_);
  v315[2] = v207;
  v312 = @"com.apple.CoreRoutine.preferences";
  v206 = [MEMORY[0x277CBEA60] arrayWithObjects:&v312 count:1];
  v316[2] = v206;
  v205 = NSStringFromSelector(sel_fetchRoutineEnabledWithReply_);
  v315[3] = v205;
  v0 = MEMORY[0x277CBEBF8];
  v316[3] = MEMORY[0x277CBEBF8];
  v204 = NSStringFromSelector(sel_setRestorationIdentifier_);
  v315[4] = v204;
  v316[4] = v0;
  v203 = NSStringFromSelector(sel_setTargetUserSession_);
  v315[5] = v203;
  v311 = @"com.apple.private.xpc.launchd.per-user-lookup";
  v202 = [MEMORY[0x277CBEA60] arrayWithObjects:&v311 count:1];
  v316[5] = v202;
  v201 = NSStringFromSelector(sel_startMonitoringPlaceInferencesWithOptions_reply_);
  v315[6] = v201;
  v310 = @"com.apple.CoreRoutine.LocationOfInterest";
  v200 = [MEMORY[0x277CBEA60] arrayWithObjects:&v310 count:1];
  v316[6] = v200;
  v199 = NSStringFromSelector(sel_stopMonitoringPlaceInferencesWithReply_);
  v315[7] = v199;
  v309 = @"com.apple.CoreRoutine.LocationOfInterest";
  v198 = [MEMORY[0x277CBEA60] arrayWithObjects:&v309 count:1];
  v316[7] = v198;
  v197 = NSStringFromSelector(sel_fetchFamiliarityIndexResultsWithOptions_reply_);
  v315[8] = v197;
  v308 = @"com.apple.CoreRoutine.LocationOfInterest";
  v196 = [MEMORY[0x277CBEA60] arrayWithObjects:&v308 count:1];
  v316[8] = v196;
  v195 = NSStringFromSelector(sel_fetchLocationsOfInterestWithinDistance_ofLocation_reply_);
  v315[9] = v195;
  v307 = @"com.apple.CoreRoutine.LocationOfInterest";
  v194 = [MEMORY[0x277CBEA60] arrayWithObjects:&v307 count:1];
  v316[9] = v194;
  v193 = NSStringFromSelector(sel_fetchLocationsOfInterestOfType_reply_);
  v315[10] = v193;
  v306 = @"com.apple.CoreRoutine.LocationOfInterest";
  v192 = [MEMORY[0x277CBEA60] arrayWithObjects:&v306 count:1];
  v316[10] = v192;
  v191 = NSStringFromSelector(sel_fetchAllLocationsOfInterestForSettingsWithReply_);
  v315[11] = v191;
  v305[0] = @"com.apple.CoreRoutine.LocationOfInterest";
  v305[1] = @"com.apple.CoreRoutine.preferences";
  v190 = [MEMORY[0x277CBEA60] arrayWithObjects:v305 count:2];
  v316[11] = v190;
  v189 = NSStringFromSelector(sel_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_reply_);
  v315[12] = v189;
  v304 = @"com.apple.CoreRoutine.LocationOfInterest";
  v188 = [MEMORY[0x277CBEA60] arrayWithObjects:&v304 count:1];
  v316[12] = v188;
  v187 = NSStringFromSelector(sel_fetchPlaceInferencesWithOptions_reply_);
  v315[13] = v187;
  v303 = @"com.apple.CoreRoutine.LocationOfInterest";
  v186 = [MEMORY[0x277CBEA60] arrayWithObjects:&v303 count:1];
  v316[13] = v186;
  v185 = NSStringFromSelector(sel_fetchFormattedPostalAddressesFromMeCard_);
  v315[14] = v185;
  v302 = @"com.apple.CoreRoutine.LocationOfInterest";
  v184 = [MEMORY[0x277CBEA60] arrayWithObjects:&v302 count:1];
  v316[14] = v184;
  v183 = NSStringFromSelector(sel_fetchRoutineModeFromLocation_reply_);
  v315[15] = v183;
  v301 = @"com.apple.CoreRoutine.LocationOfInterest";
  v182 = [MEMORY[0x277CBEA60] arrayWithObjects:&v301 count:1];
  v316[15] = v182;
  v181 = NSStringFromSelector(sel_fetchLocationsOfInterestAssociatedToIdentifier_reply_);
  v315[16] = v181;
  v300 = @"com.apple.CoreRoutine.LocationOfInterest";
  v180 = [MEMORY[0x277CBEA60] arrayWithObjects:&v300 count:1];
  v316[16] = v180;
  v179 = NSStringFromSelector(sel_fetchPredictedContextWithOptions_reply_);
  v315[17] = v179;
  v299 = @"com.apple.CoreRoutine.LocationOfInterest";
  v178 = [MEMORY[0x277CBEA60] arrayWithObjects:&v299 count:1];
  v316[17] = v178;
  v177 = NSStringFromSelector(sel_startMonitoringPredictedContextWithOptions_reply_);
  v315[18] = v177;
  v298 = @"com.apple.CoreRoutine.LocationOfInterest";
  v176 = [MEMORY[0x277CBEA60] arrayWithObjects:&v298 count:1];
  v316[18] = v176;
  v175 = NSStringFromSelector(sel_stopMonitoringPredictedContextWithReply_);
  v315[19] = v175;
  v297 = @"com.apple.CoreRoutine.LocationOfInterest";
  v174 = [MEMORY[0x277CBEA60] arrayWithObjects:&v297 count:1];
  v316[19] = v174;
  v173 = NSStringFromSelector(sel_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_reply_);
  v315[20] = v173;
  v296 = @"com.apple.CoreRoutine.LocationOfInterest";
  v172 = [MEMORY[0x277CBEA60] arrayWithObjects:&v296 count:1];
  v316[20] = v172;
  v171 = NSStringFromSelector(sel_fetchPredictedLocationsOfInterestOnDate_reply_);
  v315[21] = v171;
  v295 = @"com.apple.CoreRoutine.LocationOfInterest";
  v170 = [MEMORY[0x277CBEA60] arrayWithObjects:&v295 count:1];
  v316[21] = v170;
  v169 = NSStringFromSelector(sel_fetchCurrentPredictedLocationsOfInterestLookingBack_lookingAhead_reply_);
  v315[22] = v169;
  v294 = @"com.apple.CoreRoutine.LocationOfInterest";
  v168 = [MEMORY[0x277CBEA60] arrayWithObjects:&v294 count:1];
  v316[22] = v168;
  v167 = NSStringFromSelector(sel_performBluePOIQueryLookingBack_lookingAhead_reply_);
  v315[23] = v167;
  v293 = @"com.apple.CoreRoutine.LocationOfInterest";
  v166 = [MEMORY[0x277CBEA60] arrayWithObjects:&v293 count:1];
  v316[23] = v166;
  v165 = NSStringFromSelector(sel_fetchLocationOfInterestWithIdentifier_reply_);
  v315[24] = v165;
  v292 = @"com.apple.CoreRoutine.LocationOfInterest";
  v164 = [MEMORY[0x277CBEA60] arrayWithObjects:&v292 count:1];
  v316[24] = v164;
  v163 = NSStringFromSelector(sel_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_reply_);
  v315[25] = v163;
  v291 = @"com.apple.CoreRoutine.LocationOfInterest";
  v162 = [MEMORY[0x277CBEA60] arrayWithObjects:&v291 count:1];
  v316[25] = v162;
  v161 = NSStringFromSelector(sel_fetchLocationOfInterestAtLocation_reply_);
  v315[26] = v161;
  v290 = @"com.apple.CoreRoutine.LocationOfInterest";
  v160 = [MEMORY[0x277CBEA60] arrayWithObjects:&v290 count:1];
  v316[26] = v160;
  v159 = NSStringFromSelector(sel_fetchLocationOfInterestForRegion_reply_);
  v315[27] = v159;
  v289 = @"com.apple.CoreRoutine.LocationOfInterest";
  v158 = [MEMORY[0x277CBEA60] arrayWithObjects:&v289 count:1];
  v316[27] = v158;
  v157 = NSStringFromSelector(sel_addLocationOfInterestOfType_mapItemStorage_customLabel_reply_);
  v315[28] = v157;
  v288 = @"com.apple.CoreRoutine.LocationOfInterest";
  v156 = [MEMORY[0x277CBEA60] arrayWithObjects:&v288 count:1];
  v316[28] = v156;
  v155 = NSStringFromSelector(sel_updateLocationOfInterestWithIdentifier_type_reply_);
  v315[29] = v155;
  v287 = @"com.apple.CoreRoutine.LocationOfInterest";
  v154 = [MEMORY[0x277CBEA60] arrayWithObjects:&v287 count:1];
  v316[29] = v154;
  v153 = NSStringFromSelector(sel_updateLocationOfInterestWithIdentifier_customLabel_reply_);
  v315[30] = v153;
  v286 = @"com.apple.CoreRoutine.LocationOfInterest";
  v152 = [MEMORY[0x277CBEA60] arrayWithObjects:&v286 count:1];
  v316[30] = v152;
  v151 = NSStringFromSelector(sel_updateLocationOfInterestWithIdentifier_mapItemStorage_reply_);
  v315[31] = v151;
  v285 = @"com.apple.CoreRoutine.LocationOfInterest";
  v150 = [MEMORY[0x277CBEA60] arrayWithObjects:&v285 count:1];
  v316[31] = v150;
  v149 = NSStringFromSelector(sel_updateLocationOfInterestWithIdentifier_type_customLabel_reply_);
  v315[32] = v149;
  v284 = @"com.apple.CoreRoutine.LocationOfInterest";
  v148 = [MEMORY[0x277CBEA60] arrayWithObjects:&v284 count:1];
  v316[32] = v148;
  v147 = NSStringFromSelector(sel_updateLocationOfInterestWithIdentifier_type_mapItemStorage_customLabel_reply_);
  v315[33] = v147;
  v283 = @"com.apple.CoreRoutine.LocationOfInterest";
  v146 = [MEMORY[0x277CBEA60] arrayWithObjects:&v283 count:1];
  v316[33] = v146;
  v145 = NSStringFromSelector(sel_fetchTransitionsBetweenStartDate_endDate_reply_);
  v315[34] = v145;
  v282 = @"com.apple.CoreRoutine.LocationOfInterest";
  v144 = [MEMORY[0x277CBEA60] arrayWithObjects:&v282 count:1];
  v316[34] = v144;
  v143 = NSStringFromSelector(sel_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_reply_);
  v315[35] = v143;
  v281 = @"com.apple.CoreRoutine.LocationOfInterest";
  v142 = [MEMORY[0x277CBEA60] arrayWithObjects:&v281 count:1];
  v316[35] = v142;
  v141 = NSStringFromSelector(sel_fetchAuthorizedLocationStatus_);
  v315[36] = v141;
  v280 = @"com.apple.CoreRoutine.AuthorizedLocation";
  v140 = [MEMORY[0x277CBEA60] arrayWithObjects:&v280 count:1];
  v316[36] = v140;
  v139 = NSStringFromSelector(sel_setHintForRegionState_significantRegion_reply_);
  v315[37] = v139;
  v279 = @"com.apple.CoreRoutine.LocationOfInterest";
  v138 = [MEMORY[0x277CBEA60] arrayWithObjects:&v279 count:1];
  v316[37] = v138;
  v137 = NSStringFromSelector(sel_fetchPredictedExitDatesFromLocation_onDate_reply_);
  v315[38] = v137;
  v278 = @"com.apple.CoreRoutine.Prediction";
  v136 = [MEMORY[0x277CBEA60] arrayWithObjects:&v278 count:1];
  v316[38] = v136;
  v135 = NSStringFromSelector(sel_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_reply_);
  v315[39] = v135;
  v277 = @"com.apple.CoreRoutine.Prediction";
  v134 = [MEMORY[0x277CBEA60] arrayWithObjects:&v277 count:1];
  v316[39] = v134;
  v133 = NSStringFromSelector(sel_userInteractionWithPredictedLocationOfInterest_interaction_feedback_geoMapItem_reply_);
  v315[40] = v133;
  v276 = @"com.apple.CoreRoutine.Prediction";
  v132 = [MEMORY[0x277CBEA60] arrayWithObjects:&v276 count:1];
  v316[40] = v132;
  v131 = NSStringFromSelector(sel_startMonitoringVehicleEventsWithReply_);
  v315[41] = v131;
  v275 = @"com.apple.CoreRoutine.VehicleLocation";
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:&v275 count:1];
  v316[41] = v130;
  v129 = NSStringFromSelector(sel_stopMonitoringVehicleEventsWithReply_);
  v315[42] = v129;
  v274 = @"com.apple.CoreRoutine.VehicleLocation";
  v128 = [MEMORY[0x277CBEA60] arrayWithObjects:&v274 count:1];
  v316[42] = v128;
  v127 = NSStringFromSelector(sel_fetchLastVehicleEventsWithReply_);
  v315[43] = v127;
  v273 = @"com.apple.CoreRoutine.VehicleLocation";
  v126 = [MEMORY[0x277CBEA60] arrayWithObjects:&v273 count:1];
  v316[43] = v126;
  v125 = NSStringFromSelector(sel_vehicleEventAtLocation_notes_reply_);
  v315[44] = v125;
  v272 = @"com.apple.CoreRoutine.VehicleLocation";
  v124 = [MEMORY[0x277CBEA60] arrayWithObjects:&v272 count:1];
  v316[44] = v124;
  v123 = NSStringFromSelector(sel_clearAllVehicleEventsWithReply_);
  v315[45] = v123;
  v271 = @"com.apple.CoreRoutine.VehicleLocation";
  v122 = [MEMORY[0x277CBEA60] arrayWithObjects:&v271 count:1];
  v316[45] = v122;
  v121 = NSStringFromSelector(sel_updateVehicleEventWithIdentifier_notes_reply_);
  v315[46] = v121;
  v270 = @"com.apple.CoreRoutine.VehicleLocation";
  v120 = [MEMORY[0x277CBEA60] arrayWithObjects:&v270 count:1];
  v316[46] = v120;
  v119 = NSStringFromSelector(sel_updateVehicleEventWithIdentifier_photo_reply_);
  v315[47] = v119;
  v269 = @"com.apple.CoreRoutine.VehicleLocation";
  v118 = [MEMORY[0x277CBEA60] arrayWithObjects:&v269 count:1];
  v316[47] = v118;
  v117 = NSStringFromSelector(sel_updateVehicleEventWithIdentifier_geoMapItem_reply_);
  v315[48] = v117;
  v268 = @"com.apple.CoreRoutine.VehicleLocation";
  v116 = [MEMORY[0x277CBEA60] arrayWithObjects:&v268 count:1];
  v316[48] = v116;
  v115 = NSStringFromSelector(sel_updateVehicleEventWithIdentifier_location_reply_);
  v315[49] = v115;
  v267 = @"com.apple.CoreRoutine.VehicleLocation";
  v114 = [MEMORY[0x277CBEA60] arrayWithObjects:&v267 count:1];
  v316[49] = v114;
  v113 = NSStringFromSelector(sel_engageInVehicleEventWithIdentifier_reply_);
  v315[50] = v113;
  v266 = @"com.apple.CoreRoutine.VehicleLocation";
  v112 = [MEMORY[0x277CBEA60] arrayWithObjects:&v266 count:1];
  v316[50] = v112;
  v111 = NSStringFromSelector(sel_fetchAutomaticVehicleEventDetectionSupportedWithReply_);
  v315[51] = v111;
  v265 = @"com.apple.CoreRoutine.VehicleLocation";
  v110 = [MEMORY[0x277CBEA60] arrayWithObjects:&v265 count:1];
  v316[51] = v110;
  v109 = NSStringFromSelector(sel_removeLocationOfInterestWithIdentifier_reply_);
  v315[52] = v109;
  v264 = @"com.apple.CoreRoutine.LocationOfInterest.Delete";
  v108 = [MEMORY[0x277CBEA60] arrayWithObjects:&v264 count:1];
  v316[52] = v108;
  v107 = NSStringFromSelector(sel_removeVisitWithIdentifier_reply_);
  v315[53] = v107;
  v263 = @"com.apple.CoreRoutine.LocationOfInterest.Delete";
  v106 = [MEMORY[0x277CBEA60] arrayWithObjects:&v263 count:1];
  v316[53] = v106;
  v105 = NSStringFromSelector(sel_extendLifetimeOfVisitsWithIdentifiers_reply_);
  v315[54] = v105;
  v262 = @"com.apple.CoreRoutine.LocationOfInterest.ExtendLifetime";
  v104 = [MEMORY[0x277CBEA60] arrayWithObjects:&v262 count:1];
  v316[54] = v104;
  v103 = NSStringFromSelector(sel_fetchCloudSyncAuthorizationStateWithReply_);
  v315[55] = v103;
  v261 = @"com.apple.CoreRoutine.CloudSync";
  v102 = [MEMORY[0x277CBEA60] arrayWithObjects:&v261 count:1];
  v316[55] = v102;
  v101 = NSStringFromSelector(sel_updateCloudSyncProvisionedForAccount_reply_);
  v315[56] = v101;
  v260 = @"com.apple.CoreRoutine.CloudSync";
  v100 = [MEMORY[0x277CBEA60] arrayWithObjects:&v260 count:1];
  v316[56] = v100;
  v99 = NSStringFromSelector(sel_fetchLookbackWindowStartDateWithLocation_reply_);
  v315[57] = v99;
  v259 = @"com.apple.CoreRoutine.StoredLocation";
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:&v259 count:1];
  v316[57] = v98;
  v97 = NSStringFromSelector(sel_fetchStoredLocationsWithContext_reply_);
  v315[58] = v97;
  v258 = @"com.apple.CoreRoutine.StoredLocation";
  v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v258 count:1];
  v316[58] = v96;
  v95 = NSStringFromSelector(sel_fetchEstimatedLocationAtDate_options_reply_);
  v315[59] = v95;
  v257 = @"com.apple.CoreRoutine.StoredLocation";
  v94 = [MEMORY[0x277CBEA60] arrayWithObjects:&v257 count:1];
  v316[59] = v94;
  v93 = NSStringFromSelector(sel_startMonitoringVisitsWithReply_);
  v315[60] = v93;
  v256 = @"com.apple.CoreRoutine.Visit";
  v92 = [MEMORY[0x277CBEA60] arrayWithObjects:&v256 count:1];
  v316[60] = v92;
  v91 = NSStringFromSelector(sel_stopMonitoringVisitsWithReply_);
  v315[61] = v91;
  v255 = @"com.apple.CoreRoutine.Visit";
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v255 count:1];
  v316[61] = v90;
  v89 = NSStringFromSelector(sel_startLeechingVisitsWithReply_);
  v315[62] = v89;
  v254 = @"com.apple.CoreRoutine.Visit";
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:&v254 count:1];
  v316[62] = v88;
  v87 = NSStringFromSelector(sel_stopLeechingVisitsWithReply_);
  v315[63] = v87;
  v253 = @"com.apple.CoreRoutine.Visit";
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:&v253 count:1];
  v316[63] = v86;
  v85 = NSStringFromSelector(sel_startLeechingLowConfidenceVisitsWithReply_);
  v315[64] = v85;
  v252 = @"com.apple.CoreRoutine.Visit";
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v252 count:1];
  v316[64] = v84;
  v83 = NSStringFromSelector(sel_stopLeechingLowConfidenceVisitsWithReply_);
  v315[65] = v83;
  v251 = @"com.apple.CoreRoutine.Visit";
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v251 count:1];
  v316[65] = v82;
  v81 = NSStringFromSelector(sel_fetchStoredVisitsWithOptions_reply_);
  v315[66] = v81;
  v250 = @"com.apple.CoreRoutine.Visit";
  v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v250 count:1];
  v316[66] = v80;
  v79 = NSStringFromSelector(sel_processHindsightVisitsWithReply_);
  v315[67] = v79;
  v249 = @"com.apple.CoreRoutine.Visit";
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v249 count:1];
  v316[67] = v78;
  v77 = NSStringFromSelector(sel_fetchFinerGranularityInferredMapItemWithVisitIdentifier_reply_);
  v315[68] = v77;
  v248 = @"com.apple.CoreRoutine.Visit";
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v248 count:1];
  v316[68] = v76;
  v75 = NSStringFromSelector(sel_fetchTripSegmentsWithOptions_reply_);
  v315[69] = v75;
  v247 = @"com.apple.CoreRoutine.TripSegment";
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v247 count:1];
  v316[69] = v74;
  v73 = NSStringFromSelector(sel_fetchLocationsCountForTripSegmentWithOptions_reply_);
  v315[70] = v73;
  v246 = @"com.apple.CoreRoutine.TripSegment";
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v246 count:1];
  v316[70] = v72;
  v71 = NSStringFromSelector(sel_fetchLocationsForTripSegmentWithOptions_reply_);
  v315[71] = v71;
  v245 = @"com.apple.CoreRoutine.TripSegment";
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v245 count:1];
  v316[71] = v70;
  v69 = NSStringFromSelector(sel_deleteTripSegmentWithUUID_reply_);
  v315[72] = v69;
  v244 = @"com.apple.CoreRoutine.TripSegment";
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v244 count:1];
  v316[72] = v68;
  v67 = NSStringFromSelector(sel_fetchVehiclesWithOptions_reply_);
  v315[73] = v67;
  v243 = @"com.apple.CoreRoutine.TripSegment";
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v243 count:1];
  v316[73] = v66;
  v65 = NSStringFromSelector(sel_fetchTripSegmentMetadataWithOptions_reply_);
  v315[74] = v65;
  v242 = @"com.apple.CoreRoutine.TripSegment";
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v242 count:1];
  v316[74] = v64;
  v63 = NSStringFromSelector(sel_fetchBackgroundInertialOdometrySamplesWithOptions_reply_);
  v315[75] = v63;
  v241 = @"com.apple.CoreRoutine.BackgroundInertialOdometry";
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v241 count:1];
  v316[75] = v62;
  v61 = NSStringFromSelector(sel_addBackgroundInertialOdometrySamples_reply_);
  v315[76] = v61;
  v240 = @"com.apple.CoreRoutine.BackgroundInertialOdometry";
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v240 count:1];
  v316[76] = v60;
  v59 = NSStringFromSelector(sel_startMonitoringScenarioTriggerOfType_reply_);
  v315[77] = v59;
  v239 = @"com.apple.CoreRoutine.ScenarioTrigger";
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v239 count:1];
  v316[77] = v58;
  v57 = NSStringFromSelector(sel_stopMonitoringScenarioTriggerOfType_reply_);
  v315[78] = v57;
  v238 = @"com.apple.CoreRoutine.ScenarioTrigger";
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v238 count:1];
  v316[78] = v56;
  v55 = NSStringFromSelector(sel_fetchMonitoredScenarioTriggerTypesWithReply_);
  v315[79] = v55;
  v237 = @"com.apple.CoreRoutine.ScenarioTrigger";
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v237 count:1];
  v316[79] = v54;
  v53 = NSStringFromSelector(sel_fetchEnumerableObjectsWithOptions_offset_reply_);
  v315[80] = v53;
  v1 = objc_opt_class();
  v52 = NSStringFromClass(v1);
  v235[0] = v52;
  v234 = @"com.apple.CoreRoutine.LocationOfInterest";
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v234 count:1];
  v236[0] = v51;
  v2 = objc_opt_class();
  v50 = NSStringFromClass(v2);
  v235[1] = v50;
  v233 = @"com.apple.CoreRoutine.Hint";
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v233 count:1];
  v236[1] = v49;
  v3 = objc_opt_class();
  v48 = NSStringFromClass(v3);
  v235[2] = v48;
  v232 = @"com.apple.CoreRoutine.StoredLocation";
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v232 count:1];
  v236[2] = v47;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v236 forKeys:v235 count:3];
  v316[80] = v46;
  v45 = NSStringFromSelector(sel_startMonitoringForPeopleDiscoveryWithIdentifier_configuration_reply_);
  v315[81] = v45;
  v231 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v231 count:1];
  v316[81] = v44;
  v43 = NSStringFromSelector(sel_stopMonitoringForPeopleDiscoveryWithIdentifier_reply_);
  v315[82] = v43;
  v230 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v230 count:1];
  v316[82] = v42;
  v41 = NSStringFromSelector(sel_fetchProximityHistoryFromStartDate_endDate_completionHandler_);
  v315[83] = v41;
  v229 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v229 count:1];
  v316[83] = v40;
  v39 = NSStringFromSelector(sel_fetchProximityHistoryFromEventIDs_completionHandler_);
  v315[84] = v39;
  v228 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v228 count:1];
  v316[84] = v38;
  v37 = NSStringFromSelector(sel_fetchPeopleCountEventsHistory_completionHandler_);
  v315[85] = v37;
  v227 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v227 count:1];
  v316[85] = v36;
  v35 = NSStringFromSelector(sel_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler_);
  v315[86] = v35;
  v226 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v226 count:1];
  v316[86] = v34;
  v33 = NSStringFromSelector(sel_fetchOngoingPeopleDensity_);
  v315[87] = v33;
  v225 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v225 count:1];
  v316[87] = v32;
  v31 = NSStringFromSelector(sel_fetchContactScoresFromContactIDs_completionHandler_);
  v315[88] = v31;
  v224 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v224 count:1];
  v316[88] = v30;
  v29 = NSStringFromSelector(sel_fetchElevationsWithOptions_reply_);
  v315[89] = v29;
  v223 = @"com.apple.CoreRoutine.StoredElevation";
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v223 count:1];
  v316[89] = v28;
  v27 = NSStringFromSelector(sel_fetchElevationsWithContext_reply_);
  v315[90] = v27;
  v222 = @"com.apple.CoreRoutine.StoredElevation";
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v222 count:1];
  v316[90] = v26;
  v25 = NSStringFromSelector(sel_addElevations_handler_);
  v315[91] = v25;
  v221 = @"com.apple.CoreRoutine.StoredElevation";
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v221 count:1];
  v316[91] = v24;
  v23 = NSStringFromSelector(sel_fetchRemoteStatusWithReply_);
  v315[92] = v23;
  v220 = @"com.apple.CoreRoutine.RemoteStatus";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v220 count:1];
  v316[92] = v22;
  v21 = NSStringFromSelector(sel_startMonitoringRemoteStatusWithReply_);
  v315[93] = v21;
  v219 = @"com.apple.CoreRoutine.RemoteStatus";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v219 count:1];
  v316[93] = v20;
  v19 = NSStringFromSelector(sel_stopMonitoringRemoteStatusWithReply_);
  v315[94] = v19;
  v218 = @"com.apple.CoreRoutine.RemoteStatus";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v218 count:1];
  v316[94] = v18;
  v17 = NSStringFromSelector(sel_submitUserCurationForVisitDateRange_newLabel_handler_);
  v315[95] = v17;
  v217 = @"com.apple.CoreRoutine.StoredUserCuration";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v217 count:1];
  v316[95] = v16;
  v15 = NSStringFromSelector(sel_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler_);
  v315[96] = v15;
  v216 = @"com.apple.CoreRoutine.StoredUserCuration";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v216 count:1];
  v316[96] = v4;
  v5 = NSStringFromSelector(sel_fetchLearnedRoutesWithOptions_reply_);
  v315[97] = v5;
  v215 = @"com.apple.CoreRoutine.LearnedRoute";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v215 count:1];
  v316[97] = v6;
  v7 = NSStringFromSelector(sel_fetchTripClusterMetadataWithOptions_reply_);
  v315[98] = v7;
  v214 = @"com.apple.CoreRoutine.LearnedRoute";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v214 count:1];
  v316[98] = v8;
  v9 = NSStringFromSelector(sel_purgeTripClusterTable_reply_);
  v315[99] = v9;
  v213 = @"com.apple.CoreRoutine.LearnedRoute";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v213 count:1];
  v316[99] = v10;
  v11 = NSStringFromSelector(sel_purgeTripClusterWithClusterID_reply_);
  v315[100] = v11;
  v212 = @"com.apple.CoreRoutine.LearnedRoute";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v212 count:1];
  v316[100] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v316 forKeys:v315 count:101];
  v14 = _MergedGlobals_115;
  _MergedGlobals_115 = v13;
}

+ (id)internalDaemonProtocolEntitlementProvider
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = &unk_2845DCEB8;
  v3 = [objc_opt_class() selectorsForProtocol:v2];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v18 = @"com.apple.CoreRoutine.Internal";
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:{1, v14}];
        [v4 setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [[RTEntitlementProvider alloc] initWithProtocol:v2 entitlementsDictionary:v4];

  return v12;
}

+ (id)helperServiceProtocolEntitlementProvider
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = &unk_284601278;
  v3 = [objc_opt_class() selectorsForProtocol:v2];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v18 = @"com.apple.CoreRoutine.MapItemService";
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:{1, v14}];
        [v4 setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [[RTEntitlementProvider alloc] initWithProtocol:v2 entitlementsDictionary:v4];

  return v12;
}

+ (id)safetyMonitorDaemonProtocolEntitlementProvider
{
  v31[21] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v31[0] = &unk_2845E6010;
  v31[1] = &unk_2845E5818;
  v31[2] = &unk_2845E5928;
  v31[3] = &unk_2845AB260;
  v31[4] = &unk_2845DDD80;
  v31[5] = &unk_2845E5FB0;
  v31[6] = &unk_2845DE300;
  v31[7] = &unk_2845E55B8;
  v31[8] = &unk_2845DE1F0;
  v31[9] = &unk_2845E56E8;
  v31[10] = &unk_2845E57B8;
  v31[11] = &unk_2845B2680;
  v31[12] = &unk_2845B27A8;
  v31[13] = &unk_2845E5E88;
  v31[14] = &unk_2845A8BA0;
  v31[15] = &unk_2845B6E60;
  v31[16] = &unk_2845E5C18;
  v31[17] = &unk_2845CB1F8;
  v31[18] = &unk_2845E5D30;
  v31[19] = &unk_2845DE430;
  v31[20] = &unk_2845DE4C8;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:21];
  v4 = [v2 setWithArray:v3];

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v19 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [objc_opt_class() selectorsForProtocol:*(*(&v24 + 1) + 8 * i)];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v20 + 1) + 8 * j);
              v13 = [v5 objectForKeyedSubscript:v12];

              if (!v13)
              {
                v28 = @"com.apple.CoreRoutine.SafetyMonitor";
                v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
                [v5 setObject:v14 forKey:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
          }

          while (v9);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v19);
  }

  v15 = [[RTEntitlementProvider alloc] initWithProtocol:&unk_2845E6010 entitlementsDictionary:v5];

  return v15;
}

+ (id)selectorsForProtocol:(id)protocol
{
  protocolCopy = protocol;
  v4 = protocolCopy;
  if (protocolCopy)
  {
    *outCount = 0;
    v5 = protocol_copyMethodDescriptionList(protocolCopy, 1, 1, &outCount[1]);
    v6 = protocol_copyMethodDescriptionList(v4, 0, 1, outCount);
    v7 = objc_alloc(MEMORY[0x277CBEB58]);
    v8 = [v7 initWithCapacity:outCount[1]];
    if (outCount[1])
    {
      v9 = 0;
      p_name = &v5->name;
      do
      {
        v11 = *p_name;
        p_name += 2;
        v12 = NSStringFromSelector(v11);
        [v8 addObject:v12];

        ++v9;
      }

      while (v9 < outCount[1]);
    }

    if (outCount[0])
    {
      v13 = 0;
      v14 = &v6->name;
      do
      {
        v15 = *v14;
        v14 += 2;
        v16 = NSStringFromSelector(v15);
        [v8 addObject:v16];

        ++v13;
      }

      while (v13 < outCount[0]);
    }

    free(v5);
    free(v6);
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: protocol", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)clientConnection:(id)connection satisfiesEntitlementRequirementsForInvocation:(id)invocation
{
  v44 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  invocationCopy = invocation;
  v8 = invocationCopy;
  if (!connectionCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: connection";
LABEL_13:
      v18 = buf;
LABEL_14:
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    }

LABEL_28:

LABEL_29:
    v27 = 0;
    goto LABEL_30;
  }

  if (!invocationCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: invocation";
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  if (!sel_isEqual([invocationCopy selector], sel_fetchEnumerableObjectsWithOptions_offset_reply_))
  {
    entitlementsDictionary = self->_entitlementsDictionary;
    v20 = NSStringFromSelector([v8 selector]);
    v14 = [(NSDictionary *)entitlementsDictionary objectForKey:v20];

    if (!v14)
    {
LABEL_7:
      v15 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = NSStringFromSelector([v8 selector]);
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_fault_impl(&dword_2304B3000, v15, OS_LOG_TYPE_FAULT, "%@ requires no entitlements.", buf, 0xCu);
      }

      goto LABEL_28;
    }

    goto LABEL_16;
  }

  *buf = 0;
  [v8 getArgument:buf atIndex:2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *v39 = 0;
    v17 = "Invalid parameter not satisfying: [options isKindOfClass:[RTEnumerationOptions class]]";
    v18 = v39;
    goto LABEL_14;
  }

  v9 = self->_entitlementsDictionary;
  v10 = NSStringFromSelector([v8 selector]);
  v11 = [(NSDictionary *)v9 objectForKey:v10];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v39 = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [optionsEntitlements isKindOfClass:[NSDictionary class]]", v39, 2u);
    }

    goto LABEL_29;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 objectForKey:v13];

  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_16:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [requiredEntitlements isKindOfClass:[NSArray class]]", buf, 2u);
    }

    goto LABEL_29;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = v14;
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v22)
  {
    v27 = 1;
    goto LABEL_42;
  }

  v23 = v22;
  v24 = *v36;
  while (2)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v36 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v35 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
LABEL_41:

          v27 = 0;
          goto LABEL_42;
        }

        *buf = 0;
        v32 = "Invalid parameter not satisfying: [entitlement isKindOfClass:[NSString class]]";
        v33 = v31;
        v34 = 2;
LABEL_45:
        _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
        goto LABEL_41;
      }

      if (![(RTEntitlementProvider *)self clientConnection:connectionCopy hasEntitlement:v26, v35])
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityClient);
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *buf = 138412546;
        *&buf[4] = connectionCopy;
        v41 = 2112;
        v42 = v26;
        v32 = "%@, does not have entitlement, %@";
        v33 = v31;
        v34 = 22;
        goto LABEL_45;
      }
    }

    v23 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
    v27 = 1;
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_42:

LABEL_30:
  return v27;
}

- (BOOL)clientConnection:(id)connection hasEntitlement:(id)entitlement
{
  connectionCopy = connection;
  entitlementCopy = entitlement;
  v7 = entitlementCopy;
  if (!connectionCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      bOOLValue = 0;
      goto LABEL_11;
    }

    v15 = 0;
    v11 = "Invalid parameter not satisfying: connection";
    v12 = &v15;
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_8;
  }

  if (!entitlementCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v14 = 0;
    v11 = "Invalid parameter not satisfying: entitlement";
    v12 = &v14;
    goto LABEL_13;
  }

  v8 = [connectionCopy valueForEntitlement:entitlementCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

LABEL_11:
  return bOOLValue;
}

@end