@interface PGPublicEventCriteria
- (BOOL)_hasSufficientTimeOverlapForEvent:(id)a3 matchingOptions:(id)a4;
- (BOOL)_isMatchingMeaningDisambiguationForEvent:(id)a3 matchingOptions:(id)a4 withHighConfidence:(BOOL *)a5;
- (BOOL)_promoteToHighConfidenceBasedOnEvent:(id)a3;
- (BOOL)hasMinimumAttendance;
- (BOOL)isMatchingEvent:(id)a3 matchingOptions:(id)a4 withHighConfidence:(BOOL *)a5 matchingDistance:(double *)a6;
- (PGPublicEventCriteria)initWithLoggingConnection:(id)a3;
- (id)_localizedEventNameTerms:(id)a3;
- (id)_localizedSubcategoryTerms:(id)a3;
@end

@implementation PGPublicEventCriteria

- (id)_localizedEventNameTerms:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"en"])
  {
    v4 = &unk_284485E20;
  }

  else if ([v3 isEqualToString:@"de"])
  {
    v4 = &unk_284485E38;
  }

  else if ([v3 isEqualToString:@"fr"])
  {
    v4 = &unk_284485E50;
  }

  else if ([v3 isEqualToString:@"ja"])
  {
    v4 = &unk_284485E68;
  }

  else if ([v3 isEqualToString:@"zh"])
  {
    v4 = &unk_284485E80;
  }

  else if ([v3 isEqualToString:@"nl"])
  {
    v4 = &unk_284485E98;
  }

  else if ([v3 isEqualToString:@"it"])
  {
    v4 = &unk_284485EB0;
  }

  else if ([v3 isEqualToString:@"ko"])
  {
    v4 = &unk_284485EC8;
  }

  else if ([v3 isEqualToString:@"es"])
  {
    v4 = &unk_284485EE0;
  }

  else if ([v3 isEqualToString:@"ar"])
  {
    v4 = &unk_284485EF8;
  }

  else if ([v3 isEqualToString:@"pt"])
  {
    v4 = &unk_284485F10;
  }

  else if ([v3 isEqualToString:@"ru"])
  {
    v4 = &unk_284485F28;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  if ([v3 isEqualToString:@"da"])
  {
    v4 = &unk_284485F40;
  }

  if ([v3 isEqualToString:@"nb"])
  {
    v4 = &unk_284485F58;
  }

  if ([v3 isEqualToString:@"pl"])
  {
    v4 = &unk_284485F70;
  }

  if ([v3 isEqualToString:@"sv"])
  {
    v4 = &unk_284485F88;
  }

  if ([v3 isEqualToString:@"tr"])
  {
    v4 = &unk_284485FA0;
  }

  if ([v3 isEqualToString:@"fi"])
  {
    v4 = &unk_284485FB8;
  }

  return v4;
}

- (id)_localizedSubcategoryTerms:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"en"])
  {
    v4 = &unk_284485C70;
  }

  else if ([v3 isEqualToString:@"de"])
  {
    v4 = &unk_284485C88;
  }

  else if ([v3 isEqualToString:@"fr"])
  {
    v4 = &unk_284485CA0;
  }

  else if ([v3 isEqualToString:@"ja"])
  {
    v4 = &unk_284485CB8;
  }

  else if ([v3 isEqualToString:@"zh"])
  {
    v4 = &unk_284485CD0;
  }

  else if ([v3 isEqualToString:@"nl"])
  {
    v4 = &unk_284485CE8;
  }

  else if ([v3 isEqualToString:@"it"])
  {
    v4 = &unk_284485D00;
  }

  else if ([v3 isEqualToString:@"ko"])
  {
    v4 = &unk_284485D18;
  }

  else if ([v3 isEqualToString:@"es"])
  {
    v4 = &unk_284485D30;
  }

  else if ([v3 isEqualToString:@"ar"])
  {
    v4 = &unk_284485D48;
  }

  else if ([v3 isEqualToString:@"pt"])
  {
    v4 = &unk_284485D60;
  }

  else if ([v3 isEqualToString:@"ru"])
  {
    v4 = &unk_284485D78;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  if ([v3 isEqualToString:@"da"])
  {
    v4 = &unk_284485D90;
  }

  if ([v3 isEqualToString:@"nb"])
  {
    v4 = &unk_284485DA8;
  }

  if ([v3 isEqualToString:@"pl"])
  {
    v4 = &unk_284485DC0;
  }

  if ([v3 isEqualToString:@"sv"])
  {
    v4 = &unk_284485DD8;
  }

  if ([v3 isEqualToString:@"tr"])
  {
    v4 = &unk_284485DF0;
  }

  if ([v3 isEqualToString:@"fi"])
  {
    v4 = &unk_284485E08;
  }

  return v4;
}

- (BOOL)_promoteToHighConfidenceBasedOnEvent:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v45 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v45 languageCode];
  v6 = [(PGPublicEventCriteria *)self _localizedSubcategoryTerms:v5];
  [v4 categories];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = v62 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v59 objects:v66 count:16];
  v46 = v7;
  if (v8)
  {
    v9 = *v60;
    v41 = v5;
    v44 = v6;
    v37 = self;
    v38 = *v60;
    do
    {
      v10 = 0;
      v39 = v8;
      do
      {
        if (*v60 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v42 = v10;
        v11 = [*(*(&v59 + 1) + 8 * v10) localizedSubcategories];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v12 = v11;
        v43 = [v12 countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (v43)
        {
          v13 = *v56;
          v40 = *v56;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v56 != v13)
              {
                objc_enumerationMutation(v12);
              }

              v15 = *(*(&v55 + 1) + 8 * i);
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v16 = v6;
              v17 = [v16 countByEnumeratingWithState:&v51 objects:v64 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v52;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v52 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = *(*(&v51 + 1) + 8 * j);
                    v22 = [v15 localizedLowercaseString];
                    LOBYTE(v21) = [v22 containsString:v21];

                    if (v21)
                    {

                      v33 = 1;
                      v34 = v46;
                      v25 = v46;
                      v24 = v41;
                      v23 = v44;
                      goto LABEL_38;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v51 objects:v64 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v6 = v44;
              v13 = v40;
            }

            v5 = v41;
            v7 = v46;
            self = v37;
            v43 = [v12 countByEnumeratingWithState:&v55 objects:v65 count:16];
          }

          while (v43);
        }

        v10 = v42 + 1;
        v9 = v38;
      }

      while (v42 + 1 != v39);
      v8 = [v7 countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v8);
  }

  v23 = v6;

  v24 = v5;
  [(PGPublicEventCriteria *)self _localizedEventNameTerms:v5];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = v50 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v48;
    while (2)
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v48 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v47 + 1) + 8 * k);
        v31 = [v4 name];
        v32 = [v31 localizedLowercaseString];
        LOBYTE(v30) = [v32 containsString:v30];

        if (v30)
        {

          goto LABEL_36;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v47 objects:v63 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  if ([v4 hasExpectedAttendance] && objc_msgSend(v4, "expectedAttendance") > 2000)
  {
LABEL_36:
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = v46;
LABEL_38:

  v35 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)hasMinimumAttendance
{
  minimumAttendance = self->_minimumAttendance;
  if (minimumAttendance)
  {
    v3 = minimumAttendance == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (BOOL)isMatchingEvent:(id)a3 matchingOptions:(id)a4 withHighConfidence:(BOOL *)a5 matchingDistance:(double *)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v10 name];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v45 = v12;
    _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "[PublicEvents] Beginning disambiguating event %{private}@", buf, 0xCu);
  }

  if ([(PGPublicEventCriteria *)self hasMinimumAttendance])
  {
    v14 = [(PGPublicEventCriteria *)self minimumAttendance];
    v15 = [v10 expectedAttendance];
    v16 = [v10 hasExpectedAttendance];
    if (v15 >= v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if ([v10 hasExpectedAttendance])
    {
      v18 = self->_loggingConnection;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v40 = @"NO";
        *buf = 138478595;
        v45 = v12;
        if (v17)
        {
          v40 = @"YES";
        }

        v46 = 2048;
        v47 = *&v15;
        v48 = 2048;
        v49 = *&v14;
        v50 = 2112;
        v51 = v40;
        _os_log_debug_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: expectedAttendance: %ld, minimumAttendance: %ld, isReachingAttendance: %@", buf, 0x2Au);
        if ((v17 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((v17 & 1) == 0)
      {
LABEL_10:
        [v11 coordinates];
        v42 = v19;
        v43 = v20;
LABEL_18:
        LOBYTE(v41[0]) = 0;
        v29 = 1.79769313e308;
LABEL_19:
        v33 = 0;
        *a5 = 0;
        *a6 = v29;
        goto LABEL_20;
      }
    }

    else if (!v17)
    {
      goto LABEL_10;
    }
  }

  v21 = [(PGPublicEventCriteria *)self _hasSufficientTimeOverlapForEvent:v10 matchingOptions:v11];
  [v11 coordinates];
  v42 = v22;
  v43 = v23;
  if (!v21)
  {
    goto LABEL_18;
  }

  [(PGPublicEventCriteria *)self maximumDistance];
  v25 = v24;
  [v10 businessItemCoordinates];
  v41[0] = v26;
  v41[1] = v27;
  CLLocationCoordinate2DGetDistanceFrom();
  v29 = v28;
  v30 = self->_loggingConnection;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v39 = @"YES";
    *buf = 138478595;
    v45 = v12;
    if (v29 > v25)
    {
      v39 = @"NO";
    }

    v46 = 2048;
    v47 = v29;
    v48 = 2048;
    v49 = v25;
    v50 = 2112;
    v51 = v39;
    _os_log_debug_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: distance: %.2f, maxDistance: %.2f, isMatchingLocationDistance: %@", buf, 0x2Au);
  }

  LOBYTE(v41[0]) = 0;
  if (v29 > v25)
  {
    goto LABEL_19;
  }

  v31 = [(PGPublicEventCriteria *)self _isMatchingMeaningDisambiguationForEvent:v10 matchingOptions:v11 withHighConfidence:v41];
  v32 = v41[0];
  *a5 = v41[0];
  *a6 = v29;
  if (v31)
  {
    if ((v32 & 1) == 0 && (v29 <= 30.0 || self->_promoteToHighConfidenceBasedOnCategory || [(PGPublicEventCriteria *)self _promoteToHighConfidenceBasedOnEvent:v10]))
    {
      v33 = 1;
      *a5 = 1;
    }

    else
    {
      v33 = 1;
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_20:
  v34 = self->_loggingConnection;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v37 = @"NO";
    if (*a5)
    {
      v38 = @"YES";
    }

    else
    {
      v38 = @"NO";
    }

    *buf = 138478339;
    v45 = v12;
    if (v33)
    {
      v37 = @"YES";
    }

    v46 = 2112;
    v47 = *&v38;
    v48 = 2112;
    v49 = *&v37;
    _os_log_debug_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_DEBUG, "[PublicEvents] Finished disambiguating event %{private}@, isMatchingWithHighConfidence: %@, isMatchingWithLowConfidence: %@", buf, 0x20u);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)_isMatchingMeaningDisambiguationForEvent:(id)a3 matchingOptions:(id)a4 withHighConfidence:(BOOL *)a5
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v54 = v7;
  v55 = [v7 name];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = [(PGPublicEventCriteria *)self prohibitedCriteria];
  v10 = [v9 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v65;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v65 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v64 + 1) + 8 * i);
        v15 = [v8 matchingCriteria];
        v16 = [v15 matchingResultWithCriteria:v14];
        v17 = [v16 isMatching];

        if (v17)
        {
          loggingConnection = self->_loggingConnection;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
          {
            v47 = loggingConnection;
            v48 = [v14 identifier];
            *buf = 138478083;
            v70 = v55;
            v71 = 2114;
            v72 = v48;
            _os_log_debug_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: is matching prohibited meaning %{public}@", buf, 0x16u);
          }

          LOBYTE(v22) = 0;
          *a5 = 0;
          goto LABEL_42;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(PGPublicEventCriteria *)self disambiguationCriteria];
  v19 = [v18 count];
  v20 = v19 != 0;
  if (v19)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v60 objects:v75 count:16];
    if (v22)
    {
      v50 = v20;
      v49 = v18;
      v23 = *v61;
LABEL_12:
      v24 = 0;
      while (1)
      {
        if (*v61 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v60 + 1) + 8 * v24);
        v26 = [v8 matchingCriteria];
        v27 = [v26 matchingResultWithCriteria:v25];
        v28 = [v27 isMatching];

        v29 = self->_loggingConnection;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = @"not ";
          if (v28)
          {
            v30 = &stru_2843F5C58;
          }

          v52 = v30;
          v31 = v29;
          v32 = [v25 identifier];
          *buf = 138478339;
          v70 = v55;
          v71 = 2114;
          v72 = v52;
          v73 = 2114;
          v74 = v32;
          _os_log_debug_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: is %{public}@matching meaning %{public}@", buf, 0x20u);

          if (v28)
          {
LABEL_28:

            v18 = v49;
            v20 = v50;
            goto LABEL_29;
          }
        }

        else if (v28)
        {
          goto LABEL_28;
        }

        if (v22 == ++v24)
        {
          v33 = [v21 countByEnumeratingWithState:&v60 objects:v75 count:16];
          v22 = v33;
          if (!v33)
          {
            v20 = 0;
            v18 = v49;
            goto LABEL_41;
          }

          goto LABEL_12;
        }
      }
    }

    v20 = 0;
  }

  else
  {
LABEL_29:
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v21 = [(PGPublicEventCriteria *)self highConfidenceCriteria];
    v35 = [v21 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v35)
    {
      v36 = v35;
      v51 = v20;
      v37 = v18;
      v38 = *v57;
      while (2)
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v57 != v38)
          {
            objc_enumerationMutation(v21);
          }

          v40 = *(*(&v56 + 1) + 8 * j);
          v41 = objc_autoreleasePoolPush();
          v42 = [v8 matchingCriteria];
          v43 = [v42 matchingResultWithCriteria:v40];
          v44 = [v43 isMatching];

          objc_autoreleasePoolPop(v41);
          if (v44)
          {
            LOBYTE(v22) = 1;
            v20 = 1;
            v18 = v37;
            goto LABEL_41;
          }
        }

        v36 = [v21 countByEnumeratingWithState:&v56 objects:v68 count:16];
        LOBYTE(v22) = 1;
        if (v36)
        {
          continue;
        }

        break;
      }

      v18 = v37;
      v20 = v51;
    }

    else
    {
      LOBYTE(v22) = 1;
    }
  }

LABEL_41:

  *a5 = v20;
LABEL_42:

  v45 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)_hasSufficientTimeOverlapForEvent:(id)a3 matchingOptions:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(PGPublicEventCriteria *)self minimumTimeAttendance];
  v9 = v8;
  v10 = [(PGPublicEventCriteria *)self allowsExpandingTimeAttendance];
  v11 = [v7 expandedAttendanceDateInterval];
  v12 = [v7 actualAttendanceDateInterval];

  v13 = [v6 universalDateIntervalIncludingTime];
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14;
  v16 = 0.0;
  if ([v13 intersectsDateInterval:v15])
  {
    [v12 duration];
    v16 = v17;
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    log = loggingConnection;
    v27 = [v6 name];
    v21 = [v13 startDate];
    v22 = [v13 endDate];
    v23 = [v12 startDate];
    v24 = [v12 endDate];
    v25 = v24;
    *buf = 138479619;
    v26 = @"NO";
    v30 = v27;
    if (v16 >= v9)
    {
      v26 = @"YES";
    }

    v31 = 2048;
    v32 = v16;
    v33 = 2048;
    v34 = v9;
    v35 = 2113;
    v36 = v21;
    v37 = 2113;
    v38 = v22;
    v39 = 2113;
    v40 = v23;
    v41 = 2113;
    v42 = v24;
    v43 = 2112;
    v44 = v26;
    _os_log_debug_impl(&dword_22F0FC000, log, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: absolute time overlap %.0f, minimum %.0f, eventInterval [%{private}@ - %{private}@], attendance [%{private}@ - %{private}@], hasSufficientTimeOverlap: %@", buf, 0x52u);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16 >= v9;
}

- (PGPublicEventCriteria)initWithLoggingConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGPublicEventCriteria;
  v6 = [(PGPublicEventCriteria *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loggingConnection, a3);
  }

  return v7;
}

@end