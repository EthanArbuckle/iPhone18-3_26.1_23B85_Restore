@interface PKValidateSemanticsDict
@end

@implementation PKValidateSemanticsDict

void ___PKValidateSemanticsDict_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v165 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*(a1 + 32))
    {
      PKValidationErrorWithReason(@"Key %@ for semantics of field %@ is not a string", v9, v10, v11, v12, v13, v14, v15, v7);
    }

    else
    {
      PKValidationErrorWithReason(@"Key %@ for additionalSemanitcs is not a string", v9, v10, v11, v12, v13, v14, v15, v7);
    }
    v27 = ;
    v28 = *(*(a1 + 40) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    *a4 = 1;
    goto LABEL_73;
  }

  v16 = v7;
  if (([v16 isEqualToString:@"departureLocationDescription"] & 1) != 0
    || ([v16 isEqualToString:@"destinationLocationDescription"] & 1) != 0
    || ([v16 isEqualToString:@"transitProvider"] & 1) != 0
    || ([v16 isEqualToString:@"vehicleName"] & 1) != 0
    || ([v16 isEqualToString:@"vehicleNumber"] & 1) != 0
    || ([v16 isEqualToString:@"vehicleType"] & 1) != 0
    || ([v16 isEqualToString:@"boardingGroup"] & 1) != 0
    || ([v16 isEqualToString:@"boardingZone"] & 1) != 0
    || ([v16 isEqualToString:@"boardingSequenceNumber"] & 1) != 0
    || ([v16 isEqualToString:@"confirmationNumber"] & 1) != 0
    || ([v16 isEqualToString:@"transitStatus"] & 1) != 0
    || ([v16 isEqualToString:@"transitStatusReason"] & 1) != 0
    || ([v16 isEqualToString:@"membershipProgramName"] & 1) != 0
    || ([v16 isEqualToString:@"membershipProgramNumber"] & 1) != 0
    || ([v16 isEqualToString:@"membershipProgramStatus"] & 1) != 0
    || ([v16 isEqualToString:@"priorityStatus"] & 1) != 0
    || ([v16 isEqualToString:@"securityScreening"] & 1) != 0
    || ([v16 isEqualToString:@"flightCode"] & 1) != 0
    || ([v16 isEqualToString:@"airlineCode"] & 1) != 0
    || ([v16 isEqualToString:@"departureAirportCode"] & 1) != 0
    || ([v16 isEqualToString:@"departureAirportName"] & 1) != 0
    || ([v16 isEqualToString:@"departureCityName"] & 1) != 0
    || ([v16 isEqualToString:@"departureTerminal"] & 1) != 0
    || ([v16 isEqualToString:@"departureGate"] & 1) != 0
    || ([v16 isEqualToString:@"destinationAirportCode"] & 1) != 0
    || ([v16 isEqualToString:@"destinationAirportName"] & 1) != 0
    || ([v16 isEqualToString:@"destinationCityName"] & 1) != 0
    || ([v16 isEqualToString:@"destinationTerminal"] & 1) != 0
    || ([v16 isEqualToString:@"destinationGate"] & 1) != 0
    || ([v16 isEqualToString:@"departurePlatform"] & 1) != 0
    || ([v16 isEqualToString:@"departureStationName"] & 1) != 0
    || ([v16 isEqualToString:@"destinationPlatform"] & 1) != 0
    || ([v16 isEqualToString:@"destinationStationName"] & 1) != 0
    || ([v16 isEqualToString:@"carNumber"] & 1) != 0
    || ([v16 isEqualToString:@"eventName"] & 1) != 0
    || ([v16 isEqualToString:@"venueName"] & 1) != 0
    || ([v16 isEqualToString:@"venueEntrance"] & 1) != 0
    || ([v16 isEqualToString:@"venueEntranceGate"] & 1) != 0
    || ([v16 isEqualToString:@"venueEntranceDoor"] & 1) != 0
    || ([v16 isEqualToString:@"venueEntrancePortal"] & 1) != 0
    || ([v16 isEqualToString:@"venueRegionName"] & 1) != 0
    || ([v16 isEqualToString:@"venueRoom"] & 1) != 0
    || ([v16 isEqualToString:@"venuePhoneNumber"] & 1) != 0
    || ([v16 isEqualToString:@"venuePlaceID"] & 1) != 0
    || ([v16 isEqualToString:@"leagueName"] & 1) != 0
    || ([v16 isEqualToString:@"leagueAbbreviation"] & 1) != 0
    || ([v16 isEqualToString:@"homeTeamLocation"] & 1) != 0
    || ([v16 isEqualToString:@"homeTeamName"] & 1) != 0
    || ([v16 isEqualToString:@"homeTeamAbbreviation"] & 1) != 0
    || ([v16 isEqualToString:@"awayTeamLocation"] & 1) != 0
    || ([v16 isEqualToString:@"awayTeamName"] & 1) != 0
    || ([v16 isEqualToString:@"awayTeamAbbreviation"] & 1) != 0
    || ([v16 isEqualToString:@"sportName"] & 1) != 0
    || ([v16 isEqualToString:@"genre"] & 1) != 0
    || ([v16 isEqualToString:@"eventType"] & 1) != 0
    || ([v16 isEqualToString:@"eventLiveMessage"] & 1) != 0
    || ([v16 isEqualToString:@"admissionLevel"] & 1) != 0
    || ([v16 isEqualToString:@"admissionLevelAbbreviation"] & 1) != 0
    || ([v16 isEqualToString:@"attendeeName"] & 1) != 0
    || ([v16 isEqualToString:@"entranceDescription"] & 1) != 0
    || ([v16 isEqualToString:@"additionalTicketAttributes"] & 1) != 0
    || [v16 isEqualToString:@"internationalDocumentsVerifiedDeclarationName"])
  {

    goto LABEL_65;
  }

  v30 = [v16 isEqualToString:@"ticketFareClass"];

  if (!v30)
  {
    v31 = v16;
    if (([v31 isEqualToString:@"originalDepartureDate"] & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"currentDepartureDate") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"originalArrivalDate") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"currentArrivalDate") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"originalBoardingDate") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"currentBoardingDate") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"eventStartDate") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"venueDoorsOpenDate") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"venueGatesOpenDate") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"venueParkingLotsOpenDate") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"venueBoxOfficeOpenDate") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"venueFanZoneOpenDate") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"venueOpenDate") & 1) != 0 || objc_msgSend(v31, "isEqualToString:", @"venueCloseDate"))
    {
    }

    else
    {
      v32 = [v31 isEqualToString:@"eventEndDate"];

      if (!v32)
      {
        v48 = v31;
        if (([v48 isEqualToString:@"eventTimeZone"] & 1) != 0 || (objc_msgSend(v48, "isEqualToString:", @"departureAirportTimeZone") & 1) != 0 || (objc_msgSend(v48, "isEqualToString:", @"destinationAirportTimeZone") & 1) != 0 || objc_msgSend(v48, "isEqualToString:", @"departureLocationTimeZone"))
        {
        }

        else
        {
          v49 = [v48 isEqualToString:@"destinationLocationTimeZone"];

          if (!v49)
          {
            if ([v48 isEqualToString:@"eventStartDateInfo"])
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v24 = _PKValidateEventDateInfoDictionary(v8);
                goto LABEL_68;
              }

              PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a dictionary, must be a event info dictionary", v64, v65, v66, v67, v68, v69, v70, v8);
              v24 = LABEL_67:;
LABEL_68:
              v25 = *(*(a1 + 40) + 8);
              v26 = *(v25 + 40);
              *(v25 + 40) = v24;

              goto LABEL_73;
            }

            v71 = v48;
            if (([v71 isEqualToString:@"departureLocation"] & 1) != 0 || objc_msgSend(v71, "isEqualToString:", @"destinationLocation"))
            {
            }

            else
            {
              v72 = [v71 isEqualToString:@"venueLocation"];

              if (!v72)
              {
                v80 = v71;
                if ([v80 isEqualToString:@"balance"])
                {
                }

                else
                {
                  v81 = [v80 isEqualToString:@"balance"];

                  if (!v81)
                  {
                    if ([v80 isEqualToString:@"passengerName"])
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        goto LABEL_73;
                      }

                      PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a dictionary, must be a person name components dictionary", v89, v90, v91, v92, v93, v94, v95, v8);
                      goto LABEL_67;
                    }

                    v96 = v80;
                    if (([v96 isEqualToString:@"flightNumber"] & 1) != 0 || (objc_msgSend(v96, "isEqualToString:", @"duration") & 1) != 0 || (objc_msgSend(v96, "isEqualToString:", @"tailgatingAllowed") & 1) != 0 || objc_msgSend(v96, "isEqualToString:", @"silenceRequested"))
                    {
                    }

                    else
                    {
                      v97 = [v96 isEqualToString:@"internationalDocumentsAreVerified"];

                      if (!v97)
                      {
                        v105 = v96;
                        if (([v105 isEqualToString:@"artistIDs"] & 1) != 0 || (objc_msgSend(v105, "isEqualToString:", @"performerNames") & 1) != 0 || (objc_msgSend(v105, "isEqualToString:", @"albumIDs") & 1) != 0 || (objc_msgSend(v105, "isEqualToString:", @"playlistIDs") & 1) != 0 || (objc_msgSend(v105, "isEqualToString:", @"departureLocationSecurityPrograms") & 1) != 0 || (objc_msgSend(v105, "isEqualToString:", @"destinationLocationSecurityPrograms") & 1) != 0 || (objc_msgSend(v105, "isEqualToString:", @"passengerEligibleSecurityPrograms") & 1) != 0 || (objc_msgSend(v105, "isEqualToString:", @"passengerCapabilities") & 1) != 0 || (objc_msgSend(v105, "isEqualToString:", @"passengerServiceSSRs") & 1) != 0 || (objc_msgSend(v105, "isEqualToString:", @"passengerInformationSSRs") & 1) != 0 || objc_msgSend(v105, "isEqualToString:", @"passengerAirlineSSRs"))
                        {
                        }

                        else
                        {
                          v106 = [v105 isEqualToString:@"loungePlaceIDs"];

                          if (!v106)
                          {
                            v126 = v105;
                            if ([v126 isEqualToString:@"seats"])
                            {
                              _os_feature_enabled_impl();
                            }

                            else
                            {
                              v127 = [v126 isEqualToString:@"wifiAccess"];
                              v128 = _os_feature_enabled_impl();
                              if (!v128 || (v127 & 1) != 0)
                              {
                                v129 = v128 | v127;
                              }

                              else
                              {
                                v129 = [v126 isEqualToString:@"airPlay"];
                              }

                              if ((v129 & 1) == 0)
                              {
                                v149 = PKLogFacilityTypeGetObject(0);
                                if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138412290;
                                  v162 = v126;
                                  _os_log_impl(&dword_1AD337000, v149, OS_LOG_TYPE_DEFAULT, "Ignoring semantic value for unknown key %@.", buf, 0xCu);
                                }

                                goto LABEL_73;
                              }
                            }

                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not an array, must be an array of dictionaries.", v130, v131, v132, v133, v134, v135, v136, v8);
                              goto LABEL_67;
                            }

                            v155 = 0u;
                            v156 = 0u;
                            v153 = 0u;
                            v154 = 0u;
                            v47 = v8;
                            v137 = [v47 countByEnumeratingWithState:&v153 objects:v163 count:16];
                            if (v137)
                            {
                              v138 = v137;
                              v139 = *v154;
                              while (2)
                              {
                                for (i = 0; i != v138; ++i)
                                {
                                  if (*v154 != v139)
                                  {
                                    objc_enumerationMutation(v47);
                                  }

                                  v141 = *(*(&v153 + 1) + 8 * i);
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                  {
                                    PKValidationErrorWithReason(@"Value %@ in array for semantic key %@ is not a dictionary.", v142, v143, v144, v145, v146, v147, v148, v141);
                                    goto LABEL_180;
                                  }
                                }

                                v138 = [v47 countByEnumeratingWithState:&v153 objects:v163 count:16];
                                if (v138)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            goto LABEL_181;
                          }
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not an array, must be an array of strings.", v107, v108, v109, v110, v111, v112, v113, v8);
                          goto LABEL_67;
                        }

                        v159 = 0u;
                        v160 = 0u;
                        v157 = 0u;
                        v158 = 0u;
                        v47 = v8;
                        v114 = [v47 countByEnumeratingWithState:&v157 objects:v164 count:16];
                        if (v114)
                        {
                          v115 = v114;
                          v116 = *v158;
                          while (2)
                          {
                            for (j = 0; j != v115; ++j)
                            {
                              if (*v158 != v116)
                              {
                                objc_enumerationMutation(v47);
                              }

                              v118 = *(*(&v157 + 1) + 8 * j);
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                PKValidationErrorWithReason(@"Value %@ in array for semantic key %@ is not an string.", v119, v120, v121, v122, v123, v124, v125, v118);
                                goto LABEL_180;
                              }
                            }

                            v115 = [v47 countByEnumeratingWithState:&v157 objects:v164 count:16];
                            if (v115)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        goto LABEL_181;
                      }
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      goto LABEL_73;
                    }

                    PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a number.", v98, v99, v100, v101, v102, v103, v104, v8);
                    goto LABEL_67;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = _PKValidateCurrencyAmountDictionary(v8, v80);
                  goto LABEL_68;
                }

                PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a dictionary, must be a currency amount dictionary", v82, v83, v84, v85, v86, v87, v88, v8);
                goto LABEL_67;
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = PKValidateLocationDictionary(v8);
              goto LABEL_68;
            }

            PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a dictionary, must be a location dictionary", v73, v74, v75, v76, v77, v78, v79, v8);
            goto LABEL_67;
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a string, must be a timezone id string", v50, v51, v52, v53, v54, v55, v56, v8);
          goto LABEL_67;
        }

        v47 = [MEMORY[0x1E695DFE8] timeZoneWithName:v8];
        if (!v47)
        {
          PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a valid timezone id string", v57, v58, v59, v60, v61, v62, v63, v8);
          goto LABEL_180;
        }

LABEL_181:

        goto LABEL_73;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a string, must be a date string", v33, v34, v35, v36, v37, v38, v39, v8);
      goto LABEL_67;
    }

    v47 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v8, 0, 0);
    if (!v47)
    {
      PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a valid date string", v40, v41, v42, v43, v44, v45, v46, v8);
      v150 = LABEL_180:;
      v151 = *(*(a1 + 40) + 8);
      v152 = *(v151 + 40);
      *(v151 + 40) = v150;

      goto LABEL_181;
    }

    goto LABEL_181;
  }

LABEL_65:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    PKValidationErrorWithReason(@"Value for semantic key %@ is not a string", v17, v18, v19, v20, v21, v22, v23, v16);
    goto LABEL_67;
  }

LABEL_73:
}

@end