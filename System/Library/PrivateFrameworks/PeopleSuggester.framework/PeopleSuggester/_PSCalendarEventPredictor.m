@interface _PSCalendarEventPredictor
+ (BOOL)currentUserIsEligibleForEvent:(id)a3;
+ (BOOL)hasFaceTimeSignalInEvent:(id)a3;
+ (BOOL)isCorecipientParticipant:(id)a3 seedRecipients:(id)a4 contactsMap:(id)a5;
+ (BOOL)isEligibleParticipant:(id)a3 context:(id)a4 contactsMap:(id)a5;
+ (BOOL)isMaybeFaceTimeEvent:(id)a3 earliestStartDate:(id)a4 latestStartDate:(id)a5 maxParticipants:(unint64_t)a6;
+ (id)_handleFromParticipant:(id)a3;
+ (id)createFinalSuggestions:(id)a3 context:(id)a4;
+ (id)eventComparatorWithPredictionContext:(id)a3 contactsMap:(id)a4;
+ (id)getZKWSuggestionForCalendarEvent:(id)a3 context:(id)a4 contactsMap:(id)a5;
+ (id)participantComparatorWithContactsMap:(id)a3;
+ (unint64_t)_numOfOtherParticipantsInEvent:(id)a3;
- (_PSCalendarEventPredictor)init;
- (_PSCalendarEventPredictor)initWithEventStore:(id)a3 contactStore:(id)a4;
- (id)contactKeysToFetch;
- (id)getParticipantContactsMapFromEvent:(id)a3;
- (id)zkwSuggestionsFromCalendarWithPredictionContext:(id)a3 startDate:(id)a4 endDate:(id)a5 maxParticipants:(unint64_t)a6;
@end

@implementation _PSCalendarEventPredictor

- (_PSCalendarEventPredictor)init
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getEKEventStoreClass_softClass_0;
  v20 = getEKEventStoreClass_softClass_0;
  if (!getEKEventStoreClass_softClass_0)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getEKEventStoreClass_block_invoke_0;
    v15 = &unk_1E7C23BF0;
    v16 = &v17;
    __getEKEventStoreClass_block_invoke_0(&v12);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v5 = objc_opt_new();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v6 = getCNContactStoreClass_softClass_8;
  v20 = getCNContactStoreClass_softClass_8;
  if (!getCNContactStoreClass_softClass_8)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getCNContactStoreClass_block_invoke_8;
    v15 = &unk_1E7C23BF0;
    v16 = &v17;
    ContactsLibraryCore_9();
    Class = objc_getClass("CNContactStore");
    *(v16[1] + 24) = Class;
    getCNContactStoreClass_softClass_8 = *(v16[1] + 24);
    v6 = v18[3];
  }

  v8 = v6;
  _Block_object_dispose(&v17, 8);
  v9 = objc_opt_new();
  v10 = [(_PSCalendarEventPredictor *)self initWithEventStore:v5 contactStore:v9];

  return v10;
}

- (_PSCalendarEventPredictor)initWithEventStore:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PSCalendarEventPredictor;
  v9 = [(_PSCalendarEventPredictor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStore, a3);
    objc_storeStrong(&v10->_contactStore, a4);
  }

  return v10;
}

+ (id)_handleFromParticipant:(id)a3
{
  v3 = a3;
  v4 = [v3 phoneNumber];
  v5 = [v4 length];

  if (v5)
  {
    [v3 phoneNumber];
  }

  else
  {
    [v3 emailAddress];
  }
  v6 = ;

  return v6;
}

+ (BOOL)isCorecipientParticipant:(id)a3 seedRecipients:(id)a4 contactsMap:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 count] && _os_feature_enabled_impl())
  {
    v10 = objc_opt_new();
    v11 = [v7 phoneNumber];

    if (v11)
    {
      v12 = [v7 phoneNumber];
      [v10 addObject:v12];
    }

    v13 = [v7 emailAddress];

    if (v13)
    {
      v14 = [v7 emailAddress];
      [v10 addObject:v14];
    }

    v15 = [v9 objectForKeyedSubscript:v7];
    v16 = [v15 firstObject];

    if (v16)
    {
      v17 = [v16 identifier];
      [v10 addObject:v17];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v18 = [v16 emailAddresses];
      v19 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v40;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v40 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [*(*(&v39 + 1) + 8 * i) value];
            [v10 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v20);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = v16;
      v24 = [v16 phoneNumbers];
      v25 = [v24 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v36;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v36 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = [*(*(&v35 + 1) + 8 * j) value];
            v30 = [v29 fullyQualifiedDigits];

            if (v30)
            {
              [v10 addObject:v30];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v26);
      }

      v16 = v34;
    }

    v31 = [v10 intersectsSet:v8];
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

+ (BOOL)isEligibleParticipant:(id)a3 context:(id)a4 contactsMap:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 isCurrentUser])
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[_PSCalendarEventPredictor isEligibleParticipant:context:contactsMap:];
    }
  }

  else if ([v7 participantType] == 1)
  {
    v11 = [v8 seedRecipients];
    if ([v11 count] && (_os_feature_enabled_impl() & 1) != 0)
    {
      v12 = MEMORY[0x1E695DFD8];
      v13 = [v8 seedRecipients];
      v14 = [v12 setWithArray:v13];
      v15 = [_PSCalendarEventPredictor isCorecipientParticipant:v7 seedRecipients:v14 contactsMap:v9];

      if (v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    if ([v7 participantStatus] != 3)
    {
      v16 = 1;
      goto LABEL_17;
    }

    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[_PSCalendarEventPredictor isEligibleParticipant:context:contactsMap:];
    }
  }

  else
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[_PSCalendarEventPredictor isEligibleParticipant:context:contactsMap:];
    }
  }

LABEL_16:
  v16 = 0;
LABEL_17:

  return v16;
}

+ (BOOL)hasFaceTimeSignalInEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  v5 = [v4 lowercaseString];
  if ([v5 containsString:@"facetime"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 location];
    v8 = [v7 lowercaseString];
    if ([v8 containsString:@"facetime"])
    {
      v6 = 1;
    }

    else
    {
      v9 = [v3 notes];
      v10 = [v9 lowercaseString];
      if ([v10 containsString:@"facetime"])
      {
        v6 = 1;
      }

      else
      {
        v11 = [v3 location];
        v6 = [v11 length] == 0;
      }
    }
  }

  return v6;
}

+ (id)eventComparatorWithPredictionContext:(id)a3 contactsMap:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78___PSCalendarEventPredictor_eventComparatorWithPredictionContext_contactsMap___block_invoke;
  v13[3] = &unk_1E7C26BD8;
  v14 = v5;
  v15 = v7;
  v16 = v6;
  v8 = v6;
  v9 = v7;
  v10 = v5;
  v11 = MEMORY[0x1B8C8C060](v13);

  return v11;
}

+ (id)participantComparatorWithContactsMap:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66___PSCalendarEventPredictor_participantComparatorWithContactsMap___block_invoke;
  v7[3] = &unk_1E7C26C00;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x1B8C8C060](v7);

  return v5;
}

+ (unint64_t)_numOfOtherParticipantsInEvent:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a3 attendees];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = [v9 participantType];
      if (v10 == 4)
      {
        break;
      }

      v11 = v10;
      LODWORD(v12) = [v9 isCurrentUser] ^ 1;
      if (v11 == 1)
      {
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      v6 += v12;
      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  v6 = 0;
LABEL_14:

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (BOOL)currentUserIsEligibleForEvent:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v3 attendees];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if ([v10 isCurrentUser])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v11 = v10;

      if (!v11)
      {
        goto LABEL_16;
      }

      if ([v11 participantType] == 1)
      {
        if ([v11 participantRole] == 3 || objc_msgSend(v11, "participantStatus") == 2)
        {
          v12 = 1;
          goto LABEL_23;
        }

        v13 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [_PSCalendarEventPredictor currentUserIsEligibleForEvent:v4];
        }
      }

      else
      {
        v13 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [_PSCalendarEventPredictor currentUserIsEligibleForEvent:v4];
        }
      }
    }

    else
    {
LABEL_10:

LABEL_16:
      v13 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [_PSCalendarEventPredictor currentUserIsEligibleForEvent:v4];
      }

      v11 = 0;
    }

    v12 = 0;
LABEL_23:
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (BOOL)isMaybeFaceTimeEvent:(id)a3 earliestStartDate:(id)a4 latestStartDate:(id)a5 maxParticipants:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = [v9 startDate];
    if (v12)
    {
      v13 = v12;
      v14 = [v9 startDate];
      if ([v14 compare:v10] == -1)
      {
      }

      else
      {
        v15 = [v9 startDate];
        v16 = [v15 compare:v11];

        if (v16 != 1)
        {
          if ([v9 isAllDay])
          {
            v17 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
            }

LABEL_12:
            v18 = 0;
LABEL_13:

            goto LABEL_14;
          }

          if ([v9 status] == 3)
          {
            v17 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
            }

            goto LABEL_12;
          }

          v20 = [v9 attendees];
          if ([v20 count] < 2)
          {

            goto LABEL_21;
          }

          v21 = [_PSCalendarEventPredictor _numOfOtherParticipantsInEvent:v9];

          if (v21 > a6)
          {
LABEL_21:
            v17 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
            }

            goto LABEL_12;
          }

          v22 = [v9 virtualConference];

          if (v22)
          {
            v17 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              [_PSCalendarEventPredictor isMaybeFaceTimeEvent:v9 earliestStartDate:? latestStartDate:? maxParticipants:?];
            }

            goto LABEL_12;
          }

          v23 = [v9 location];
          v17 = [v23 lowercaseString];

          if (([v17 hasPrefix:@"http://"]& 1) != 0 || [v17 hasPrefix:@"https://"])
          {
            v24 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [_PSCalendarEventPredictor isMaybeFaceTimeEvent:v9 earliestStartDate:? latestStartDate:? maxParticipants:?];
            }

            goto LABEL_30;
          }

          v25 = [v9 URL];
          v26 = [v25 scheme];
          v24 = [v26 lowercaseString];

          if (([v24 hasPrefix:@"http"]& 1) != 0 || [v24 hasPrefix:@"https"])
          {
            v27 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              [_PSCalendarEventPredictor isMaybeFaceTimeEvent:v9 earliestStartDate:? latestStartDate:? maxParticipants:?];
            }

            v18 = 0;
          }

          else
          {
            if (![_PSCalendarEventPredictor currentUserIsEligibleForEvent:v9])
            {
LABEL_30:
              v18 = 0;
LABEL_37:

              goto LABEL_13;
            }

            v27 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
            }

            v18 = 1;
          }

          goto LABEL_37;
        }
      }
    }

    v17 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
    }

    goto LABEL_12;
  }

  v18 = 0;
LABEL_14:

  return v18;
}

+ (id)getZKWSuggestionForCalendarEvent:(id)a3 context:(id)a4 contactsMap:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v38 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = [v7 attendees];
  v11 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        if ([_PSCalendarEventPredictor isEligibleParticipant:v15 context:v8 contactsMap:v9])
        {
          [v38 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v12);
  }

  v16 = v38;
  if ([v38 count])
  {
    v35 = v8;
    v36 = v7;
    v17 = [_PSCalendarEventPredictor participantComparatorWithContactsMap:v9];
    v18 = [v38 sortedArrayUsingComparator:v17];

    v19 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v18;
    v20 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v39 + 1) + 8 * j);
          v25 = [_PSCalendarEventPredictor _handleFromParticipant:v24];
          v26 = [v24 name];
          v27 = [v9 objectForKeyedSubscript:v24];
          v28 = [v27 firstObject];

          v29 = [[_PSRecipient alloc] initWithIdentifier:v25 handle:v25 displayName:v26 contact:v28];
          [v19 addObject:v29];
        }

        v21 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v21);
    }

    if ([v19 count])
    {
      v30 = [_PSSuggestion alloc];
      v8 = v35;
      v31 = [v35 bundleID];
      v32 = [(_PSSuggestion *)v30 initWithBundleID:v31 conversationIdentifier:0 groupName:0 recipients:v19 reason:@"Calendar Event Participants" reasonType:0];
      v7 = v36;
    }

    else
    {
      v31 = +[_PSLogging generalChannel];
      v8 = v35;
      v7 = v36;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [_PSCalendarEventPredictor getZKWSuggestionForCalendarEvent:v36 context:? contactsMap:?];
      }

      v32 = 0;
    }

    v16 = v38;
  }

  else
  {
    obj = +[_PSLogging generalChannel];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      [_PSCalendarEventPredictor getZKWSuggestionForCalendarEvent:v7 context:? contactsMap:?];
    }

    v32 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)createFinalSuggestions:(id)a3 context:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 seedRecipients];
  if (![v6 count])
  {

    goto LABEL_21;
  }

  v7 = _os_feature_enabled_impl();

  if ((v7 & 1) == 0)
  {
LABEL_21:
    v33 = v5;
    goto LABEL_22;
  }

  v8 = objc_opt_new();
  v33 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v27 = v5;
  obj = v5;
  v30 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v30)
  {
    v29 = *v42;
    v32 = v8;
    do
    {
      v9 = 0;
      do
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v9;
        v10 = *(*(&v41 + 1) + 8 * v9);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v34 = v10;
        v36 = [v10 recipients];
        v11 = [v36 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v38;
          do
          {
            v14 = 0;
            v35 = v12;
            do
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(v36);
              }

              v15 = *(*(&v37 + 1) + 8 * v14);
              v16 = [v15 identifier];
              if (([v8 containsObject:v16] & 1) == 0)
              {
                v17 = [_PSSuggestion alloc];
                v18 = [v34 bundleID];
                v19 = [v34 conversationIdentifier];
                v20 = [v34 groupName];
                v45 = v15;
                v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
                v22 = [v34 reason];
                v23 = [v34 reasonType];
                v24 = [(_PSSuggestion *)v17 initWithBundleID:v18 conversationIdentifier:v19 groupName:v20 recipients:v21 reason:v22 reasonType:v23];

                v12 = v35;
                v8 = v32;

                [v33 addObject:v24];
                [v32 addObject:v16];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v36 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v12);
        }

        v9 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v30);
  }

  v5 = v27;
LABEL_22:

  v25 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)getParticipantContactsMapFromEvent:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = v4;
  obj = [v4 attendees];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        contactStore = self->_contactStore;
        v11 = [v9 contactPredicate];
        v12 = [(_PSCalendarEventPredictor *)self contactKeysToFetch];
        v22 = 0;
        v13 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v11 keysToFetch:v12 error:&v22];
        v14 = v22;

        if ([v13 count])
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          [v20 setObject:v13 forKeyedSubscript:v9];
        }

        else
        {
          v16 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v28 = v9;
            v29 = 2112;
            v30 = v14;
            _os_log_debug_impl(&dword_1B5ED1000, v16, OS_LOG_TYPE_DEBUG, "Unable to find Contact for participant %@ w/ error: %@", buf, 0x16u);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)zkwSuggestionsFromCalendarWithPredictionContext:(id)a3 startDate:(id)a4 endDate:(id)a5 maxParticipants:(unint64_t)a6
{
  v65 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(EKEventStore *)self->_eventStore calendarsForEntityType:0];
  v13 = [(EKEventStore *)self->_eventStore predicateForEventsWithStartDate:v10 endDate:v11 calendars:v12];
  v14 = objc_opt_new();
  eventStore = self->_eventStore;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __111___PSCalendarEventPredictor_zkwSuggestionsFromCalendarWithPredictionContext_startDate_endDate_maxParticipants___block_invoke;
  v56[3] = &unk_1E7C26C28;
  v46 = v10;
  v57 = v46;
  v16 = v11;
  v58 = v16;
  v60 = a6;
  v17 = v14;
  v59 = v17;
  [(EKEventStore *)eventStore enumerateEventsMatchingPredicate:v13 usingBlock:v56];
  if ([v17 count])
  {
    v44 = v13;
    v45 = v12;
    v18 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v52 objects:v64 count:16];
    v21 = v47;
    if (v20)
    {
      v22 = v20;
      v23 = *v53;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v53 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = [(_PSCalendarEventPredictor *)self getParticipantContactsMapFromEvent:*(*(&v52 + 1) + 8 * i)];
          [v18 addEntriesFromDictionary:v25];
        }

        v22 = [v19 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v22);
    }

    v42 = v17;
    v43 = v16;

    v26 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [_PSCalendarEventPredictor zkwSuggestionsFromCalendarWithPredictionContext:startDate:endDate:maxParticipants:];
    }

    v27 = [_PSCalendarEventPredictor eventComparatorWithPredictionContext:v47 contactsMap:v18];
    v28 = [v19 sortedArrayUsingComparator:v27];

    v29 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v30 = v28;
    v31 = [v30 countByEnumeratingWithState:&v48 objects:v63 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v49;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v49 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v48 + 1) + 8 * j);
          v36 = [_PSCalendarEventPredictor getZKWSuggestionForCalendarEvent:v35 context:v21 contactsMap:v18, v42, v43];
          if (v36)
          {
            [v29 addObject:v36];
          }

          else
          {
            v37 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [_PSCalendarEventPredictor zkwSuggestionsFromCalendarWithPredictionContext:v61 startDate:v35 endDate:&v62 maxParticipants:v37];
            }

            v21 = v47;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v48 objects:v63 count:16];
      }

      while (v32);
    }

    v38 = [_PSCalendarEventPredictor createFinalSuggestions:v29 context:v21];

    v13 = v44;
    v12 = v45;
    v39 = v46;
    v17 = v42;
    v16 = v43;
  }

  else
  {
    v18 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [_PSCalendarEventPredictor zkwSuggestionsFromCalendarWithPredictionContext:startDate:endDate:maxParticipants:];
    }

    v38 = MEMORY[0x1E695E0F0];
    v39 = v46;
    v21 = v47;
  }

  v40 = *MEMORY[0x1E69E9840];

  return v38;
}

- (id)contactKeysToFetch
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v2 = getCNContactFormatterClass_softClass_6;
  v21 = getCNContactFormatterClass_softClass_6;
  if (!getCNContactFormatterClass_softClass_6)
  {
    ContactsLibraryCore_9();
    v19[3] = objc_getClass("CNContactFormatter");
    getCNContactFormatterClass_softClass_6 = v19[3];
    v2 = v19[3];
  }

  v3 = v2;
  _Block_object_dispose(&v18, 8);
  v4 = [v2 descriptorForRequiredKeysForStyle:0];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v5 = getCNContactIdentifierKeySymbolLoc_ptr_8;
  v21 = getCNContactIdentifierKeySymbolLoc_ptr_8;
  if (!getCNContactIdentifierKeySymbolLoc_ptr_8)
  {
    v6 = ContactsLibrary_8();
    v19[3] = dlsym(v6, "CNContactIdentifierKey");
    getCNContactIdentifierKeySymbolLoc_ptr_8 = v19[3];
    v5 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = *v5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v8 = getCNContactPhoneNumbersKeySymbolLoc_ptr_7;
  v21 = getCNContactPhoneNumbersKeySymbolLoc_ptr_7;
  v22[0] = v7;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_7)
  {
    v9 = ContactsLibrary_8();
    v19[3] = dlsym(v9, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr_7 = v19[3];
    v8 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v8)
  {
    goto LABEL_15;
  }

  v10 = *v8;
  v22[1] = v10;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v11 = getCNContactEmailAddressesKeySymbolLoc_ptr_7;
  v21 = getCNContactEmailAddressesKeySymbolLoc_ptr_7;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr_7)
  {
    v12 = ContactsLibrary_8();
    v19[3] = dlsym(v12, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr_7 = v19[3];
    v11 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v11)
  {
LABEL_15:
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v23 = *v11;
  v24 = v4;
  v13 = MEMORY[0x1E695DEC8];
  v14 = v23;
  v15 = [v13 arrayWithObjects:v22 count:4];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (void)isEligibleParticipant:context:contactsMap:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)isEligibleParticipant:context:contactsMap:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)isEligibleParticipant:context:contactsMap:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)currentUserIsEligibleForEvent:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 title];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)currentUserIsEligibleForEvent:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 title];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)currentUserIsEligibleForEvent:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 title];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)isMaybeFaceTimeEvent:(void *)a1 earliestStartDate:latestStartDate:maxParticipants:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 virtualConference];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)isMaybeFaceTimeEvent:(void *)a1 earliestStartDate:latestStartDate:maxParticipants:.cold.3(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 URL];
  v2 = [v1 absoluteString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)isMaybeFaceTimeEvent:(void *)a1 earliestStartDate:latestStartDate:maxParticipants:.cold.4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 location];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getZKWSuggestionForCalendarEvent:(void *)a1 context:contactsMap:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 title];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)getZKWSuggestionForCalendarEvent:(void *)a1 context:contactsMap:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 title];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)zkwSuggestionsFromCalendarWithPredictionContext:startDate:endDate:maxParticipants:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)zkwSuggestionsFromCalendarWithPredictionContext:(uint8_t *)a1 startDate:(void *)a2 endDate:(void *)a3 maxParticipants:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 title];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1B5ED1000, a4, OS_LOG_TYPE_DEBUG, "Event %@ has no suggestions found. Skipping", a1, 0xCu);
}

- (void)zkwSuggestionsFromCalendarWithPredictionContext:startDate:endDate:maxParticipants:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end