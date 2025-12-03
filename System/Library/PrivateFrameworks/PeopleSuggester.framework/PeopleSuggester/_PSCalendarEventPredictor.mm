@interface _PSCalendarEventPredictor
+ (BOOL)currentUserIsEligibleForEvent:(id)event;
+ (BOOL)hasFaceTimeSignalInEvent:(id)event;
+ (BOOL)isCorecipientParticipant:(id)participant seedRecipients:(id)recipients contactsMap:(id)map;
+ (BOOL)isEligibleParticipant:(id)participant context:(id)context contactsMap:(id)map;
+ (BOOL)isMaybeFaceTimeEvent:(id)event earliestStartDate:(id)date latestStartDate:(id)startDate maxParticipants:(unint64_t)participants;
+ (id)_handleFromParticipant:(id)participant;
+ (id)createFinalSuggestions:(id)suggestions context:(id)context;
+ (id)eventComparatorWithPredictionContext:(id)context contactsMap:(id)map;
+ (id)getZKWSuggestionForCalendarEvent:(id)event context:(id)context contactsMap:(id)map;
+ (id)participantComparatorWithContactsMap:(id)map;
+ (unint64_t)_numOfOtherParticipantsInEvent:(id)event;
- (_PSCalendarEventPredictor)init;
- (_PSCalendarEventPredictor)initWithEventStore:(id)store contactStore:(id)contactStore;
- (id)contactKeysToFetch;
- (id)getParticipantContactsMapFromEvent:(id)event;
- (id)zkwSuggestionsFromCalendarWithPredictionContext:(id)context startDate:(id)date endDate:(id)endDate maxParticipants:(unint64_t)participants;
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

- (_PSCalendarEventPredictor)initWithEventStore:(id)store contactStore:(id)contactStore
{
  storeCopy = store;
  contactStoreCopy = contactStore;
  v12.receiver = self;
  v12.super_class = _PSCalendarEventPredictor;
  v9 = [(_PSCalendarEventPredictor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStore, store);
    objc_storeStrong(&v10->_contactStore, contactStore);
  }

  return v10;
}

+ (id)_handleFromParticipant:(id)participant
{
  participantCopy = participant;
  phoneNumber = [participantCopy phoneNumber];
  v5 = [phoneNumber length];

  if (v5)
  {
    [participantCopy phoneNumber];
  }

  else
  {
    [participantCopy emailAddress];
  }
  v6 = ;

  return v6;
}

+ (BOOL)isCorecipientParticipant:(id)participant seedRecipients:(id)recipients contactsMap:(id)map
{
  v45 = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  recipientsCopy = recipients;
  mapCopy = map;
  if ([recipientsCopy count] && _os_feature_enabled_impl())
  {
    v10 = objc_opt_new();
    phoneNumber = [participantCopy phoneNumber];

    if (phoneNumber)
    {
      phoneNumber2 = [participantCopy phoneNumber];
      [v10 addObject:phoneNumber2];
    }

    emailAddress = [participantCopy emailAddress];

    if (emailAddress)
    {
      emailAddress2 = [participantCopy emailAddress];
      [v10 addObject:emailAddress2];
    }

    v15 = [mapCopy objectForKeyedSubscript:participantCopy];
    firstObject = [v15 firstObject];

    if (firstObject)
    {
      identifier = [firstObject identifier];
      [v10 addObject:identifier];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      emailAddresses = [firstObject emailAddresses];
      v19 = [emailAddresses countByEnumeratingWithState:&v39 objects:v44 count:16];
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
              objc_enumerationMutation(emailAddresses);
            }

            value = [*(*(&v39 + 1) + 8 * i) value];
            [v10 addObject:value];
          }

          v20 = [emailAddresses countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v20);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = firstObject;
      phoneNumbers = [firstObject phoneNumbers];
      v25 = [phoneNumbers countByEnumeratingWithState:&v35 objects:v43 count:16];
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
              objc_enumerationMutation(phoneNumbers);
            }

            value2 = [*(*(&v35 + 1) + 8 * j) value];
            fullyQualifiedDigits = [value2 fullyQualifiedDigits];

            if (fullyQualifiedDigits)
            {
              [v10 addObject:fullyQualifiedDigits];
            }
          }

          v26 = [phoneNumbers countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v26);
      }

      firstObject = v34;
    }

    v31 = [v10 intersectsSet:recipientsCopy];
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

+ (BOOL)isEligibleParticipant:(id)participant context:(id)context contactsMap:(id)map
{
  participantCopy = participant;
  contextCopy = context;
  mapCopy = map;
  if ([participantCopy isCurrentUser])
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[_PSCalendarEventPredictor isEligibleParticipant:context:contactsMap:];
    }
  }

  else if ([participantCopy participantType] == 1)
  {
    seedRecipients = [contextCopy seedRecipients];
    if ([seedRecipients count] && (_os_feature_enabled_impl() & 1) != 0)
    {
      v12 = MEMORY[0x1E695DFD8];
      seedRecipients2 = [contextCopy seedRecipients];
      v14 = [v12 setWithArray:seedRecipients2];
      v15 = [_PSCalendarEventPredictor isCorecipientParticipant:participantCopy seedRecipients:v14 contactsMap:mapCopy];

      if (v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    if ([participantCopy participantStatus] != 3)
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

+ (BOOL)hasFaceTimeSignalInEvent:(id)event
{
  eventCopy = event;
  title = [eventCopy title];
  lowercaseString = [title lowercaseString];
  if ([lowercaseString containsString:@"facetime"])
  {
    v6 = 1;
  }

  else
  {
    location = [eventCopy location];
    lowercaseString2 = [location lowercaseString];
    if ([lowercaseString2 containsString:@"facetime"])
    {
      v6 = 1;
    }

    else
    {
      notes = [eventCopy notes];
      lowercaseString3 = [notes lowercaseString];
      if ([lowercaseString3 containsString:@"facetime"])
      {
        v6 = 1;
      }

      else
      {
        location2 = [eventCopy location];
        v6 = [location2 length] == 0;
      }
    }
  }

  return v6;
}

+ (id)eventComparatorWithPredictionContext:(id)context contactsMap:(id)map
{
  contextCopy = context;
  mapCopy = map;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78___PSCalendarEventPredictor_eventComparatorWithPredictionContext_contactsMap___block_invoke;
  v13[3] = &unk_1E7C26BD8;
  v14 = contextCopy;
  v15 = v7;
  v16 = mapCopy;
  v8 = mapCopy;
  v9 = v7;
  v10 = contextCopy;
  v11 = MEMORY[0x1B8C8C060](v13);

  return v11;
}

+ (id)participantComparatorWithContactsMap:(id)map
{
  mapCopy = map;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66___PSCalendarEventPredictor_participantComparatorWithContactsMap___block_invoke;
  v7[3] = &unk_1E7C26C00;
  v8 = mapCopy;
  v4 = mapCopy;
  v5 = MEMORY[0x1B8C8C060](v7);

  return v5;
}

+ (unint64_t)_numOfOtherParticipantsInEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  attendees = [event attendees];
  v4 = [attendees countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(attendees);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      participantType = [v9 participantType];
      if (participantType == 4)
      {
        break;
      }

      v11 = participantType;
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
        v5 = [attendees countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (BOOL)currentUserIsEligibleForEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = eventCopy;
  if (eventCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    attendees = [eventCopy attendees];
    v6 = [attendees countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(attendees);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if ([v10 isCurrentUser])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [attendees countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (BOOL)isMaybeFaceTimeEvent:(id)event earliestStartDate:(id)date latestStartDate:(id)startDate maxParticipants:(unint64_t)participants
{
  eventCopy = event;
  dateCopy = date;
  startDateCopy = startDate;
  if (eventCopy)
  {
    startDate = [eventCopy startDate];
    if (startDate)
    {
      v13 = startDate;
      startDate2 = [eventCopy startDate];
      if ([startDate2 compare:dateCopy] == -1)
      {
      }

      else
      {
        startDate3 = [eventCopy startDate];
        v16 = [startDate3 compare:startDateCopy];

        if (v16 != 1)
        {
          if ([eventCopy isAllDay])
          {
            lowercaseString = +[_PSLogging generalChannel];
            if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
            {
              +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
            }

LABEL_12:
            v18 = 0;
LABEL_13:

            goto LABEL_14;
          }

          if ([eventCopy status] == 3)
          {
            lowercaseString = +[_PSLogging generalChannel];
            if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
            {
              +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
            }

            goto LABEL_12;
          }

          attendees = [eventCopy attendees];
          if ([attendees count] < 2)
          {

            goto LABEL_21;
          }

          v21 = [_PSCalendarEventPredictor _numOfOtherParticipantsInEvent:eventCopy];

          if (v21 > participants)
          {
LABEL_21:
            lowercaseString = +[_PSLogging generalChannel];
            if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
            {
              +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
            }

            goto LABEL_12;
          }

          virtualConference = [eventCopy virtualConference];

          if (virtualConference)
          {
            lowercaseString = +[_PSLogging generalChannel];
            if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
            {
              [_PSCalendarEventPredictor isMaybeFaceTimeEvent:eventCopy earliestStartDate:? latestStartDate:? maxParticipants:?];
            }

            goto LABEL_12;
          }

          location = [eventCopy location];
          lowercaseString = [location lowercaseString];

          if (([lowercaseString hasPrefix:@"http://"]& 1) != 0 || [lowercaseString hasPrefix:@"https://"])
          {
            lowercaseString2 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(lowercaseString2, OS_LOG_TYPE_DEBUG))
            {
              [_PSCalendarEventPredictor isMaybeFaceTimeEvent:eventCopy earliestStartDate:? latestStartDate:? maxParticipants:?];
            }

            goto LABEL_30;
          }

          v25 = [eventCopy URL];
          scheme = [v25 scheme];
          lowercaseString2 = [scheme lowercaseString];

          if (([lowercaseString2 hasPrefix:@"http"]& 1) != 0 || [lowercaseString2 hasPrefix:@"https"])
          {
            v27 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              [_PSCalendarEventPredictor isMaybeFaceTimeEvent:eventCopy earliestStartDate:? latestStartDate:? maxParticipants:?];
            }

            v18 = 0;
          }

          else
          {
            if (![_PSCalendarEventPredictor currentUserIsEligibleForEvent:eventCopy])
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

    lowercaseString = +[_PSLogging generalChannel];
    if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
    {
      +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
    }

    goto LABEL_12;
  }

  v18 = 0;
LABEL_14:

  return v18;
}

+ (id)getZKWSuggestionForCalendarEvent:(id)event context:(id)context contactsMap:(id)map
{
  v49 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  contextCopy = context;
  mapCopy = map;
  v38 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  attendees = [eventCopy attendees];
  v11 = [attendees countByEnumeratingWithState:&v43 objects:v48 count:16];
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
          objc_enumerationMutation(attendees);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        if ([_PSCalendarEventPredictor isEligibleParticipant:v15 context:contextCopy contactsMap:mapCopy])
        {
          [v38 addObject:v15];
        }
      }

      v12 = [attendees countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v12);
  }

  v16 = v38;
  if ([v38 count])
  {
    v35 = contextCopy;
    v36 = eventCopy;
    v17 = [_PSCalendarEventPredictor participantComparatorWithContactsMap:mapCopy];
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
          name = [v24 name];
          v27 = [mapCopy objectForKeyedSubscript:v24];
          firstObject = [v27 firstObject];

          v29 = [[_PSRecipient alloc] initWithIdentifier:v25 handle:v25 displayName:name contact:firstObject];
          [v19 addObject:v29];
        }

        v21 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v21);
    }

    if ([v19 count])
    {
      v30 = [_PSSuggestion alloc];
      contextCopy = v35;
      bundleID = [v35 bundleID];
      v32 = [(_PSSuggestion *)v30 initWithBundleID:bundleID conversationIdentifier:0 groupName:0 recipients:v19 reason:@"Calendar Event Participants" reasonType:0];
      eventCopy = v36;
    }

    else
    {
      bundleID = +[_PSLogging generalChannel];
      contextCopy = v35;
      eventCopy = v36;
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_DEBUG))
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
      [_PSCalendarEventPredictor getZKWSuggestionForCalendarEvent:eventCopy context:? contactsMap:?];
    }

    v32 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)createFinalSuggestions:(id)suggestions context:(id)context
{
  v48 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  seedRecipients = [context seedRecipients];
  if (![seedRecipients count])
  {

    goto LABEL_21;
  }

  v7 = _os_feature_enabled_impl();

  if ((v7 & 1) == 0)
  {
LABEL_21:
    v33 = suggestionsCopy;
    goto LABEL_22;
  }

  v8 = objc_opt_new();
  v33 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v27 = suggestionsCopy;
  obj = suggestionsCopy;
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
        recipients = [v10 recipients];
        v11 = [recipients countByEnumeratingWithState:&v37 objects:v46 count:16];
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
                objc_enumerationMutation(recipients);
              }

              v15 = *(*(&v37 + 1) + 8 * v14);
              identifier = [v15 identifier];
              if (([v8 containsObject:identifier] & 1) == 0)
              {
                v17 = [_PSSuggestion alloc];
                bundleID = [v34 bundleID];
                conversationIdentifier = [v34 conversationIdentifier];
                groupName = [v34 groupName];
                v45 = v15;
                v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
                reason = [v34 reason];
                reasonType = [v34 reasonType];
                v24 = [(_PSSuggestion *)v17 initWithBundleID:bundleID conversationIdentifier:conversationIdentifier groupName:groupName recipients:v21 reason:reason reasonType:reasonType];

                v12 = v35;
                v8 = v32;

                [v33 addObject:v24];
                [v32 addObject:identifier];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [recipients countByEnumeratingWithState:&v37 objects:v46 count:16];
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

  suggestionsCopy = v27;
LABEL_22:

  v25 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)getParticipantContactsMapFromEvent:(id)event
{
  v32 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v20 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = eventCopy;
  obj = [eventCopy attendees];
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
        contactPredicate = [v9 contactPredicate];
        contactKeysToFetch = [(_PSCalendarEventPredictor *)self contactKeysToFetch];
        v22 = 0;
        v13 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:contactPredicate keysToFetch:contactKeysToFetch error:&v22];
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

- (id)zkwSuggestionsFromCalendarWithPredictionContext:(id)context startDate:(id)date endDate:(id)endDate maxParticipants:(unint64_t)participants
{
  v65 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dateCopy = date;
  endDateCopy = endDate;
  v12 = [(EKEventStore *)self->_eventStore calendarsForEntityType:0];
  v13 = [(EKEventStore *)self->_eventStore predicateForEventsWithStartDate:dateCopy endDate:endDateCopy calendars:v12];
  v14 = objc_opt_new();
  eventStore = self->_eventStore;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __111___PSCalendarEventPredictor_zkwSuggestionsFromCalendarWithPredictionContext_startDate_endDate_maxParticipants___block_invoke;
  v56[3] = &unk_1E7C26C28;
  v46 = dateCopy;
  v57 = v46;
  v16 = endDateCopy;
  v58 = v16;
  participantsCopy = participants;
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
    v21 = contextCopy;
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

    v27 = [_PSCalendarEventPredictor eventComparatorWithPredictionContext:contextCopy contactsMap:v18];
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

            v21 = contextCopy;
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
    v21 = contextCopy;
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