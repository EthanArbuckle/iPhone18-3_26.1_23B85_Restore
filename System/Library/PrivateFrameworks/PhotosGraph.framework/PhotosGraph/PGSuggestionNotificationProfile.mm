@interface PGSuggestionNotificationProfile
+ (double)_requiredTimeIntervalFromLastNotificationForUserType:(unsigned __int8)a3;
+ (unsigned)_requiredNotificationQualityForUserType:(unsigned __int8)a3;
- (BOOL)eligibleForNotification;
- (BOOL)shouldNotifyForSuggestion:(id)a3 withOptions:(id)a4;
- (NSDate)dateOfLastNotification;
- (PGSuggestionNotificationProfile)initWithExistingSuggestions:(id)a3 serviceManager:(id)a4;
- (id)shareParticipantContactIdentifiers;
- (unsigned)notificationQualityForHighlightNode:(id)a3;
- (unsigned)userType;
- (void)_determineUserTypeAndEligibility;
@end

@implementation PGSuggestionNotificationProfile

- (unsigned)notificationQualityForHighlightNode:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 meaningLabels];
  v6 = [v4 personNodes];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __71__PGSuggestionNotificationProfile_notificationQualityForHighlightNode___block_invoke;
  v35[3] = &unk_27887F678;
  v35[4] = self;
  v7 = [MEMORY[0x277CCAC30] predicateWithBlock:v35];
  v8 = [v6 filteredSetUsingPredicate:v7];

  v9 = [v8 count];
  if ([v5 count])
  {
    v10 = +[PGGraph mostSignificantMeaningLabels];
    if ([v5 intersectsSet:v10])
    {

LABEL_9:
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v5;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node notification quality must see: %@", buf, 0xCu);
      }

      v13 = 4;
      goto LABEL_36;
    }

    v14 = [v4 isPartOfTrip];

    if (v14)
    {
      goto LABEL_9;
    }

    v28 = v9;
    v29 = v8;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = v6;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = 0;
      v21 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          if (([v23 isMeNode] & 1) == 0)
          {
            v20 += [v23 isFavorite];
            v19 += [v23 belongsToBestSocialGroups];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v31 objects:v44 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    v24 = self->_loggingConnection;
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v28 || v20 || v19)
    {
      if (v25)
      {
        *buf = 138413058;
        v37 = v5;
        v38 = 2048;
        v39 = v28;
        v40 = 2048;
        v41 = v20;
        v42 = 2048;
        v43 = v19;
        _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node notification quality stellar: it has a meaning %@ and important people (previous sharing recipients %lu, favorites %lu, best social group %lu)", buf, 0x2Au);
      }

      v13 = 3;
    }

    else
    {
      if (v25)
      {
        *buf = 138412290;
        v37 = v5;
        _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node notification quality great: it has a meaning %@", buf, 0xCu);
      }

      v13 = 2;
    }

    v8 = v29;
    v6 = v30;
  }

  else
  {
    v11 = self->_loggingConnection;
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        *buf = 134217984;
        v37 = v9;
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node notification quality great: it contains %lu previous sharing recipients", buf, 0xCu);
      }

      v13 = 2;
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node notification quality other", buf, 2u);
      }

      v13 = 1;
    }
  }

LABEL_36:

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __71__PGSuggestionNotificationProfile_notificationQualityForHighlightNode___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 shareParticipantContactIdentifiers];
  v5 = [v3 contactIdentifier];

  v6 = [v4 containsObject:v5];
  return v6;
}

- (void)_determineUserTypeAndEligibility
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9948] sharedMomentSharePhotoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v58 = objc_opt_new();
  v52 = v4;
  [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:7 subtype:0x7FFFFFFFFFFFFFFFLL options:v4];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v70 = 0u;
  v53 = [obj countByEnumeratingWithState:&v67 objects:v86 count:16];
  v5 = 0;
  v6 = 0;
  if (v53)
  {
    v51 = *v68;
    do
    {
      v48 = v6;
      v7 = 0;
      do
      {
        v56 = v5;
        if (*v68 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v67 + 1) + 8 * v7);
        v55 = v7;
        v8 = [MEMORY[0x277CD99C8] fetchParticipantsInShare:v48 options:?];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v63 objects:v85 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v64;
          do
          {
            v12 = 0;
            do
            {
              if (*v64 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v63 + 1) + 8 * v12);
              v14 = [v13 emailAddress];
              if (v14 || ([v13 phoneNumber], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v15 = v14;
                v16 = [(CLSServiceManager *)self->_serviceManager personForPersonHandle:v14];
                v17 = [v16 CNIdentifier];
                if ([v17 length])
                {
                  [v58 addObject:v17];
                }

                else
                {
                  loggingConnection = self->_loggingConnection;
                  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *v72 = v13;
                    *&v72[8] = 2112;
                    *v73 = v15;
                    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] No person node found for share participant: %@, identifier: %@", buf, 0x16u);
                  }
                }
              }

              else
              {
                v19 = self->_loggingConnection;
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v72 = v13;
                  _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] No identifier available for share participant: %@", buf, 0xCu);
                }
              }

              ++v12;
            }

            while (v10 != v12);
            v20 = [v8 countByEnumeratingWithState:&v63 objects:v85 count:16];
            v10 = v20;
          }

          while (v20);
        }

        v21 = [v54 creationDate];
        v22 = v21;
        if (v56)
        {
          v23 = [v21 laterDate:v56];

          v5 = v23;
        }

        else
        {
          v5 = v21;
        }

        v7 = v55 + 1;
      }

      while (v55 + 1 != v53);
      v6 = v48 + v53;
      v53 = [obj countByEnumeratingWithState:&v67 objects:v86 count:16];
    }

    while (v53);
  }

  v49 = v6;
  objc_storeStrong(&self->_shareParticipantContactIdentifiers, v58);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v24 = self->_existingSuggestions;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v59 objects:v84 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v57 = 0;
    v28 = *v60;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v60 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v59 + 1) + 8 * i);
        if ([v30 notificationState])
        {
          dateOfLastNotification = self->_dateOfLastNotification;
          v32 = [v30 creationDate];
          v33 = v32;
          if (dateOfLastNotification)
          {
            v34 = [(NSDate *)dateOfLastNotification laterDate:v32];
            v35 = self->_dateOfLastNotification;
            self->_dateOfLastNotification = v34;
          }

          else
          {
            v36 = self->_dateOfLastNotification;
            self->_dateOfLastNotification = v32;
            v33 = v36;
          }

          if ([v30 state] == 3)
          {
            ++v57;
          }

          else if ([v30 state] == 4)
          {
            ++v27;
          }
        }

        v37 = [v30 creationDate];
        if ([v30 state] == 3 && v37 != 0)
        {
          if (v5)
          {
            v39 = [v37 laterDate:v5];

            v5 = v39;
          }

          else
          {
            v5 = v37;
          }
        }
      }

      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v59 objects:v84 count:16];
    }

    while (v26);
  }

  else
  {
    v27 = 0;
    v57 = 0;
  }

  v40 = v5;
  if (v5)
  {
    v41 = v49 == 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v41;
  if (v41 && v27 < 2)
  {
    v43 = 1;
  }

  else if (v49 >= 3 && v57)
  {
    v43 = 2;
  }

  else if (v27 > 1 || v40 && ([v40 timeIntervalSinceNow], v44 > 2592000.0))
  {
    v43 = 3;
  }

  else
  {
    v43 = 4;
  }

  self->_userType = v43;
  self->_eligibleForNotification = v27 < 4;
  v45 = self->_loggingConnection;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    shareParticipantContactIdentifiers = self->_shareParticipantContactIdentifiers;
    *buf = 67110914;
    *v72 = v27 < 4;
    *&v72[4] = 1024;
    *&v72[6] = v43;
    *v73 = 2112;
    *&v73[2] = shareParticipantContactIdentifiers;
    v74 = 1024;
    v75 = v42;
    v76 = 2048;
    v77 = v49;
    v78 = 2112;
    v79 = v40;
    v80 = 2048;
    v81 = v57;
    v82 = 2048;
    v83 = v27;
    _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Summary for Notification Profile:\n\teligibleForNotification: %d\n\tuserType: %d\n\tshareParticipantContactIdentifiers: %@\n\tuserNeverShared: %d\n\tnumberOfMomentShare: %lu\n\tlastMomentShare: %@\n\tnumberOfSuccessfulNotifications: %lu\n\tnumberOfUnsuccessfulNotifications: %lu\n\t", buf, 0x46u);
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldNotifyForSuggestion:(id)a3 withOptions:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277D27690];
  v8 = [a4 localToday];
  v9 = [v7 universalDateFromLocalDate:v8];

  v10 = [v6 universalEndDate];
  [v9 timeIntervalSinceDate:v10];
  if (v11 < 0.0)
  {
    v11 = -v11;
  }

  if (v11 <= 604800.0)
  {
    v14 = [(PGSuggestionNotificationProfile *)self userType];
    v15 = [v6 notificationQuality];
    if (v15 >= [objc_opt_class() _requiredNotificationQualityForUserType:v14])
    {
      v16 = [(PGSuggestionNotificationProfile *)self dateOfLastNotification];
      if (v16)
      {
        [objc_opt_class() _requiredTimeIntervalFromLastNotificationForUserType:v14];
        v18 = v17;
        [v9 timeIntervalSinceDate:v16];
        if (v19 >= 0.0)
        {
          v20 = v19;
        }

        else
        {
          v20 = -v19;
        }

        v13 = v20 > v18;
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 67109634;
          *v30 = v20 > v18;
          *&v30[4] = 2048;
          *&v30[6] = v18 / 86400.0;
          *&v30[14] = 2112;
          *&v30[16] = v9;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Should notify for suggestion: %d (requiredTimeIntervalFromLastNotification %.0f - queryDate %@)", &v29, 0x1Cu);
        }
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
    }

    v22 = self->_loggingConnection;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (v15 > 4)
      {
        v23 = @"Unknown";
      }

      else
      {
        v23 = off_278884400[v15];
      }

      v24 = v23;
      v25 = v24;
      if (v14 > 4)
      {
        v26 = @"Unknown";
      }

      else
      {
        v26 = off_27887F698[v14];
      }

      v29 = 67109634;
      *v30 = v13;
      *&v30[4] = 2112;
      *&v30[6] = v24;
      *&v30[14] = 2112;
      *&v30[16] = v26;
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Should notify for suggestion: %d (notification quality %@ - user type %@)", &v29, 0x1Cu);
    }
  }

  else
  {
    v12 = self->_loggingConnection;
    LOBYTE(v13) = 0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 134218498;
      *v30 = 7;
      *&v30[8] = 2112;
      *&v30[10] = v9;
      *&v30[18] = 2112;
      *&v30[20] = v10;
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Cannot notify suggestion: above time window limit of %lu days (query date %@, suggestion date %@)", &v29, 0x20u);
      LOBYTE(v13) = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v13;
}

- (NSDate)dateOfLastNotification
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_userType)
  {
    [(PGSuggestionNotificationProfile *)v2 _determineUserTypeAndEligibility];
  }

  objc_sync_exit(v2);

  dateOfLastNotification = v2->_dateOfLastNotification;

  return dateOfLastNotification;
}

- (id)shareParticipantContactIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_userType)
  {
    [(PGSuggestionNotificationProfile *)v2 _determineUserTypeAndEligibility];
  }

  objc_sync_exit(v2);

  shareParticipantContactIdentifiers = v2->_shareParticipantContactIdentifiers;

  return shareParticipantContactIdentifiers;
}

- (unsigned)userType
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_userType)
  {
    [(PGSuggestionNotificationProfile *)v2 _determineUserTypeAndEligibility];
  }

  objc_sync_exit(v2);

  return v2->_userType;
}

- (BOOL)eligibleForNotification
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_userType)
  {
    [(PGSuggestionNotificationProfile *)v2 _determineUserTypeAndEligibility];
  }

  objc_sync_exit(v2);

  return v2->_eligibleForNotification;
}

- (PGSuggestionNotificationProfile)initWithExistingSuggestions:(id)a3 serviceManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGSuggestionNotificationProfile;
  v9 = [(PGSuggestionNotificationProfile *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_existingSuggestions, a3);
    objc_storeStrong(&v10->_serviceManager, a4);
  }

  return v10;
}

+ (double)_requiredTimeIntervalFromLastNotificationForUserType:(unsigned __int8)a3
{
  if ((a3 - 1) > 3u)
  {
    return 978307200.0;
  }

  else
  {
    return dbl_22F78C1E8[(a3 - 1)];
  }
}

+ (unsigned)_requiredNotificationQualityForUserType:(unsigned __int8)a3
{
  v3 = 0x304020300uLL >> (8 * a3);
  if (a3 >= 5u)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 7;
}

@end