void sub_100003454(id a1)
{
  v5[0] = CNContactPhoneNumbersKey;
  v5[1] = CNContactEmailAddressesKey;
  v5[2] = CNContactPhonemeDataKey;
  v1 = +[NSPersonNameComponents descriptorForUsedKeys];
  v5[3] = v1;
  v2 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v5[4] = v2;
  v5[5] = CNContactIdentifierKey;
  v3 = [NSArray arrayWithObjects:v5 count:6];
  v4 = qword_100057A28;
  qword_100057A28 = v3;
}

uint64_t sub_100003EBC(uint64_t a1)
{
  qword_100057A38 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_100004A6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) groupId];
  if ([v4 length])
  {
    v5 = [v3 messagesGroupName];
    if ([v5 length])
    {
      v6 = [v3 messagesGroupName];
      v7 = [*(a1 + 32) groupName];
      v8 = [v6 isEqualToIgnoringCase:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v8)
    {
      v10 = @"YES";
    }

    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SimpleConversationFilter: matchesCallGroup=%@", &v12, 0xCu);
  }

  return v8;
}

BOOL sub_100004C5C(uint64_t a1, void *a2)
{
  v3 = [a2 remoteMembers];
  v4 = [v3 count];
  v5 = *(a1 + 32);

  v6 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v4 == v5)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SimpleConversationFilter: matchesParticipantCount=%@", &v9, 0xCu);
  }

  return v4 == v5;
}

void sub_100007FDC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100008D3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isDeleted] & 1) != 0 || objc_msgSend(v3, "isTrashed"))
  {
    v4 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v3;
      v5 = "Rejecting voicemail because it is deleted or trashed: %@";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
    }
  }

  else
  {
    if (!*(a1 + 32))
    {
LABEL_23:
      if (*(a1 + 48))
      {
        v19 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v3;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Rejecting voicemail because voicemail.date is before requested startDate: %@", buf, 0xCu);
        }

        v20 = [v3 date];
        v21 = [v20 compare:*(a1 + 48)];

        if (v21 == -1)
        {
          goto LABEL_7;
        }
      }

      if (*(a1 + 56))
      {
        v22 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v3;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Rejecting voicemail because voicemail.date is after requested endDate: %@", buf, 0xCu);
        }

        v23 = [v3 date];
        v24 = [v23 compare:*(a1 + 56)];

        if (v24 == 1)
        {
          goto LABEL_7;
        }
      }

      v25 = *(a1 + 64);
      if (v25)
      {
        v26 = [v25 BOOLValue];
        v27 = [v3 isUnread];
        if (v26)
        {
          if ((v27 & 1) == 0)
          {
            v4 = IntentHandlerDefaultLog();
            if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_6;
            }

            *buf = 138412290;
            v34 = v3;
            v5 = "Rejecting voicemail because only unread voicemails were requested, but this one is marked as read: %@";
            goto LABEL_5;
          }
        }

        else if (v27)
        {
          v4 = IntentHandlerDefaultLog();
          if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_6;
          }

          *buf = 138412290;
          v34 = v3;
          v5 = "Rejecting voicemail because only read voicemails were requested, but this one is marked as unread: %@";
          goto LABEL_5;
        }
      }

      v6 = 1;
      goto LABEL_8;
    }

    v8 = [v3 senderDestinationID];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [TUHandle alloc];
      v11 = [v3 senderDestinationID];
      v4 = [v10 initWithType:2 value:v11];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v12 = *(a1 + 40);
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v29;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v28 + 1) + 8 * i);
            if (TUHandlesAreCanonicallyEqual())
            {

              goto LABEL_23;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v18 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rejecting voicemail because senderDestinationID does not match requested recipient: %@", buf, 0xCu);
      }

      goto LABEL_6;
    }

    v4 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v3;
      v5 = "Rejecting voicemail because a recipient was specified, but this voicemail has no senderDestinationID: %@";
      goto LABEL_5;
    }
  }

LABEL_6:

LABEL_7:
  v6 = 0;
LABEL_8:

  return v6;
}

void sub_10000915C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002F4A0(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = &__NSArray0__struct;
    v15 = 3;
  }

  else
  {
    if ([v5 count] <= *(a1 + 48))
    {
      v7 = v5;
    }

    else
    {
      v7 = [v5 subarrayWithRange:0];
      v16 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 48);
        v20 = 134218242;
        v21 = v17;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Truncated matching voicemails to %ld objects: %@", &v20, 0x16u);
      }
    }

    v14 = [*(a1 + 32) callRecordsForVoicemails:v7];
    v18 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v5;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Voicemails (%@) -> callRecords (%@)", &v20, 0x16u);
    }

    v15 = 7;
  }

  v19 = [[INSearchCallHistoryIntentResponse alloc] initWithCode:v15 userActivity:0];
  [v19 setCallRecords:v14];
  (*(*(a1 + 40) + 16))();
}

id sub_10000A450(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = @"siriMatchesCount";
  v4[1] = @"matchesByIdCount";
  v6 = *(a1 + 40);
  v4[2] = @"matchesByNameCount";
  v4[3] = @"siriLocale";
  v5 = v1;
  v7 = *(a1 + 56);
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:v4 count:4];

  return v2;
}

void sub_10000A668(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v4 setItemURL:v2];
  [v4 setNumberOfLoops:0];
  LODWORD(v3) = 1.0;
  [v4 setVolume:v3];
  [v4 setFadeInDuration:0.0];
  [v4 setFadeOutDuration:0.0];
  [v4 setUserInfo:0];
}

void sub_10000AA40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      v14 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10002F664();
      }
    }

    v9 = IntentHandlerDefaultLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    v20 = "[PlayVoicemailIntentHandler handlePlayVoicemail:completion:]_block_invoke";
    v11 = "%s [WARN] Voicemail with the given identifier was not found";
    v12 = v9;
    v13 = 12;
    goto LABEL_11;
  }

  v8 = [*(a1 + 32) isRestrictedMessage:v5];
  v9 = IntentHandlerDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (!v10)
    {
LABEL_12:

      v15 = [[INPlayVoicemailIntentResponse alloc] initWithCode:4 userActivity:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_16;
    }

    *buf = 136315394;
    v20 = "[PlayVoicemailIntentHandler handlePlayVoicemail:completion:]_block_invoke";
    v21 = 2112;
    v22 = v5;
    v11 = "%s [WARN] Screen time restricted playback of voicemail: %@";
    v12 = v9;
    v13 = 22;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
    goto LABEL_12;
  }

  if (v10)
  {
    *buf = 136315394;
    v20 = "[PlayVoicemailIntentHandler handlePlayVoicemail:completion:]_block_invoke";
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Found voicemail with the given identifier (%@). Returning success", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000ACAC;
  v17[3] = &unk_10004CD70;
  v16 = *(a1 + 32);
  v18 = *(a1 + 40);
  [v16 _playVoicemail:v5 completion:v17];
  v15 = v18;
LABEL_16:
}

void sub_10000ACAC(uint64_t a1, int a2)
{
  v4 = [INPlayVoicemailIntentResponse alloc];
  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  v6 = [v4 initWithCode:v5 userActivity:0];
  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[PlayVoicemailIntentHandler handlePlayVoicemail:completion:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Voicemail completed playing. Calling completion block with success response: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000AEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_10000AF24(uint64_t a1)
{
  v5 = [TUHandle handleWithDestinationID:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained callCenter];
  v4 = [v3 callFilterController];
  *(*(*(a1 + 40) + 8) + 24) = [v4 containsRestrictedHandle:v5 forBundleIdentifier:TUBundleIdentifierMobilePhoneApplication performSynchronously:1];
}

void sub_10000B14C(void *a1, void *a2)
{
  v3 = a2;
  v4 = IntentHandlerDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10002F6E4();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[PlayVoicemailIntentHandler _playVoicemail:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Voicemail completed successfully", &v6, 0xCu);
    }

    [*(a1[4] + 16) markRead:a1[5]];
  }

  (*(a1[6] + 16))();
}

void sub_10000B5E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[AddCallParticipantIntentHandler handleAddCallParticipant:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Handled with INAddCallParticipantIntentResponse: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000B6C8(uint64_t a1)
{
  v2 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v20 = 136315394;
    v21 = "[AddCallParticipantIntentHandler handleAddCallParticipant:completion:]_block_invoke";
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Handling INAddCallParticipantIntent: %@", &v20, 0x16u);
  }

  v4 = [*(a1 + 32) participants];
  v5 = [v4 firstObject];

  v6 = [*(a1 + 40) callCenter];
  v7 = [v6 frontmostAudioOrVideoCall];

  v8 = [*(a1 + 40) callCenter];
  v9 = [v8 activeConversationForCall:v7];

  v10 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v20 = 136315906;
    v21 = "[AddCallParticipantIntentHandler handleAddCallParticipant:completion:]_block_invoke";
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Adding %@ to call=%@, conversation=%@", &v20, 0x2Au);
  }

  if (v7 && ([v5 personHandle], v11 = objc_claimAutoreleasedReturnValue(), v11, v11) && v9)
  {
    v12 = [v5 personHandle];
    v13 = [*(a1 + 40) dataSource];
    v14 = [v13 isoCountryCodes];
    v15 = [v14 firstObject];
    v16 = [v12 tu_normalizedHandleForISOCountryCode:v15];

    v17 = [[TUConversationMember alloc] initWithHandle:v16];
    v18 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10002F764();
    }

    v19 = [*(a1 + 40) _checkRestrictionsForCall:v7 conversation:v9 personToAdd:v5 asMember:v17];
    if (v19)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [*(a1 + 40) _addCallParticipant:v5 asConversationMember:v17 toConversation:v9 completion:*(a1 + 48)];
    }
  }

  else
  {
    v16 = [[INAddCallParticipantIntentResponse alloc] initWithCode:4 userActivity:0];
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_10000BD88(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 handle];
  v6 = [*(a1 + 32) handle];
  v7 = TUHandlesAreCanonicallyEqual();
  *a3 = v7;

  return v7;
}

void sub_10000BEF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 URL];

  if (v7)
  {
    v8 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002F954(v5, v8);
    }

    v9 = [INCallInvite alloc];
    v17 = *(a1 + 32);
    v10 = [NSArray arrayWithObjects:&v17 count:1];
    v11 = [v5 URL];
    v12 = [v9 initWithParticipants:v10 inviteType:3 callURL:v11];

    v13 = [[INAddCallParticipantIntentResponse alloc] initWithCode:3 userActivity:0];
    v16 = v12;
    v14 = [NSArray arrayWithObjects:&v16 count:1];
    [v13 setInvites:v14];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v6)
    {
      v15 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10002F9F4();
      }
    }

    v12 = [[INAddCallParticipantIntentResponse alloc] initWithCode:13 userActivity:0];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10000C458(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 handle];
  v6 = [*(a1 + 32) handle];
  v7 = TUHandlesAreCanonicallyEqual();
  *a3 = v7;

  return v7;
}

void sub_10000CA7C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_10000D3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

void sub_10000D3EC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 handler];
  v8 = [*(a1 + 32) handler];

  if (v7 == v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_10000D5EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IntentHandlerDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10002FE30();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registered for drop-in calls", buf, 2u);
  }

  dispatch_group_leave(*(*(a1 + 32) + 16));
  v6 = IntentHandlerDefaultLog();
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "HangUpIntentHandlerRegisterForProvider", "", v9, 2u);
  }
}

void sub_10000DE98(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) callCenter];
  v3 = [v2 incomingCall];
  if (v3)
  {
    v4 = v3;

LABEL_4:
    v6 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 handle];
      *buf = 138412290;
      v59 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "An incoming call exists with handle %@", buf, 0xCu);
    }

    v8 = [[INIdentifyIncomingCallerIntentResponse alloc] initWithCode:3 userActivity:0];
    [v8 setStatusCode:2];
    v9 = [v4 handle];
    v10 = [v9 value];
    v11 = [v10 length];

    v53 = v8;
    if (v11)
    {
      v12 = [v4 handle];
      v13 = [*(v1 + 32) dataSource];
      v14 = [v13 contactsDataSource];
      v15 = [*(v1 + 32) dataSource];
      v16 = [v15 coreTelephonyDataSource];
      v17 = [v16 allRelevantISOCountryCodes];
      v18 = [INPerson tu_personMatchingHandle:v12 contactsDataSource:v14 isoCountryCodes:v17];

      v19 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Incoming call is from person: %@", buf, 0xCu);
      }
    }

    else
    {
      v19 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Incoming caller is a private number", buf, 2u);
      }

      v18 = 0;
    }

    v54 = v1;
    v20 = *(v1 + 32);
    v21 = [v4 provider];
    v51 = [v20 preferredCallProviderFor:v21];

    v22 = objc_alloc_init(NSMutableArray);
    v23 = v22;
    if (v18)
    {
      [v22 addObject:v18];
    }

    v50 = [INCallRecord alloc];
    v24 = [v4 callUUID];
    v25 = [v4 dateCreated];
    v52 = v18;
    if ([v4 isVideo])
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v27 = [v4 provider];
    v28 = [v27 identifier];
    v29 = [v4 provider];
    v30 = [v29 bundleIdentifier];
    v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isBlocked]);
    v32 = [v50 initWithIdentifier:v24 dateCreated:v25 callRecordType:6 callCapability:v26 callDuration:0 unseen:&__kCFBooleanTrue preferredCallProvider:v51 participants:v23 numberOfCalls:&off_10004EB58 providerId:v28 providerBundleId:v30 isCallerIdBlocked:v31];

    v33 = v23;
    v57 = v32;
    v34 = [NSArray arrayWithObjects:&v57 count:1];
    v35 = v53;
    [v53 setCallRecords:v34];

    v36 = v52;
    v1 = v54;
    goto LABEL_18;
  }

  v5 = [*(v1 + 32) callCenter];
  v4 = [v5 incomingVideoCall];

  if (v4)
  {
    goto LABEL_4;
  }

  v37 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "No incoming call exists. Looking up last missed call...", buf, 2u);
  }

  v35 = [[INIdentifyIncomingCallerIntentResponse alloc] initWithCode:3 userActivity:0];
  [v35 setStatusCode:1];
  v38 = +[CallHistoryDataSourcePredicate predicateForJustMissedCalls];
  v39 = [*(v1 + 32) dataSource];
  v40 = [v39 callHistoryDataSource];
  v36 = v38;
  v41 = [v40 callsWithPredicate:v38 limit:1 offset:0 batchSize:1];
  v42 = [v41 firstObject];

  v55 = v42;
  if (v42)
  {
    v43 = +[CallRecordConverter sharedInstance];
    v56 = v42;
    v44 = [NSArray arrayWithObjects:&v56 count:1];
    v45 = [*(v1 + 32) dataSource];
    v46 = [v45 contactsDataSource];
    v47 = [*(v1 + 32) dataSource];
    v48 = [v47 providerManager];
    v4 = [v43 callRecordsForRecentCalls:v44 withContactsDataSource:v46 withCallProviderManager:v48];
  }

  else
  {
    v4 = 0;
  }

  v49 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v4;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Last missed call is: %@", buf, 0xCu);
  }

  [v35 setCallRecords:v4];
  v33 = v55;
LABEL_18:

  (*(*(v1 + 40) + 16))();
}

void sub_100010228(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [[TUHandle alloc] initWithType:2 value:v6];

  v7 = [[TULabeledHandle alloc] initWithHandle:v8 label:v5 isSuggested:0];
  [*(a1 + 32) addObject:v7];
}

void sub_10001506C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IntentHandlerDefaultLog();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "resolveFaceTimeLink", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100016298(id a1)
{
  v1 = qword_100057A48;
  qword_100057A48 = &off_10004ED40;
}

id sub_100018DB8(uint64_t a1, void *a2)
{
  v3 = [a2 person];
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 coreTelephonyDataSource];
  v6 = [v5 allRelevantISOCountryCodes];
  v7 = [v3 tu_personWithFormattedHandleForISOCountryCodes:v6];

  return v7;
}

void sub_10001D1AC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [NSPredicate predicateWithBlock:&stru_10004D000];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  if ([v7 count])
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

BOOL sub_10001D260(id a1, INPerson *a2, NSDictionary *a3)
{
  v3 = [(INPerson *)a2 personHandle];
  v4 = [v3 type] == 2;

  return v4;
}

void sub_10001F9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F9F0(uint64_t a1)
{
  v3 = [*(a1 + 32) callCenter];
  v2 = [v3 callFilterController];
  *(*(*(a1 + 48) + 8) + 24) = [v2 callFilterStatusForDialRequest:*(a1 + 40)];
}

void sub_10001FBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001FBCC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001FBE4(uint64_t a1)
{
  v6 = [*(a1 + 32) callCenter];
  v2 = [v6 callFilterController];
  v3 = [v2 restrictedContacts:*(a1 + 40) callProvider:*(a1 + 48)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001FE18(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) incomingCall];
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = [*(*(a1 + 32) + 64) incomingVideoCall];
    *(*(*(a1 + 40) + 8) + 24) = v3 != 0;

    v2 = 0;
  }
}

void sub_100020034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100020054(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) hasCurrentCalls];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100020138(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) videoDeviceController];
  v3 = [v2 inputDevices];

  *(*(*(a1 + 40) + 8) + 24) = [v3 count] != 0;
}

void sub_100020900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002092C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100020A74(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100020A9C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100020AB8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100021934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100021958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100021970(uint64_t a1)
{
  v2 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Searching for conversationId: %@ among active conversations.", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [*(a1 + 40) callCenter];
  v5 = [v4 conversationManager];
  v6 = [v5 activeConversations];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 UUID];
        v13 = [v12 UUIDString];
        v14 = [v13 isEqualToString:*(a1 + 32)];

        if (v14)
        {
          v15 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found matching conversation %@", buf, 0xCu);
          }

          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11);
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void sub_100022094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000220C0(uint64_t a1)
{
  v2 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Searching among active conversations for a matching call.", buf, 2u);
  }

  v3 = [*(a1 + 32) groupConversationFilter];
  v4 = [*(a1 + 40) contactsDataSource];
  v5 = [ConversationFilterFactory makeFilterForINCallGroupConversationFilter:v3 contactsDataSource:v4];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = [*(a1 + 40) callCenter];
  v7 = [v6 conversationManager];
  v8 = [v7 activeConversations];

  v9 = [v8 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v38 = a1;
    v11 = 0;
    v12 = *v42;
    v39 = v5;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        v15 = [v5 matches:v14];
        v16 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v12;
          v18 = v8;
          if (v15)
          {
            v19 = @"YES";
          }

          else
          {
            v19 = @"NO";
          }

          [v14 UUID];
          v20 = v40 = v11;
          v21 = [v20 UUIDString];
          *buf = 138412546;
          v46 = v19;
          v8 = v18;
          v12 = v17;
          v47 = 2112;
          v48 = v21;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "doesConversationMatch = %@ for TUConversation: %@", buf, 0x16u);

          v5 = v39;
          v11 = v40;
        }

        if (v15)
        {
          if (v11)
          {

            v31 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Found more than one matching conversation.", buf, 2u);
            }

            v32 = +[INCallGroupConversationResolutionResult unsupported];
            v33 = *(*(v38 + 48) + 8);
            v34 = *(v33 + 40);
            *(v33 + 40) = v32;

            goto LABEL_29;
          }

          v11 = v14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    a1 = v38;
    if (v11)
    {
      v22 = v5;
      v23 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found one matching conversation.", buf, 2u);
      }

      v24 = [INCallGroupConversation alloc];
      v25 = [v11 UUID];
      v26 = [v25 UUIDString];
      v27 = [v24 initWithConversationId:v26 caller:0 otherParticipants:0 callGroup:0];

      v28 = [INCallGroupConversationResolutionResult successWithResolvedCallGroupConversation:v27];
      v29 = *(*(v38 + 48) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      v5 = v22;
      goto LABEL_29;
    }
  }

  else
  {
  }

  v35 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Found no matching conversations.", buf, 2u);
  }

  v36 = +[INCallGroupConversationResolutionResult unsupported];
  v37 = *(*(a1 + 48) + 8);
  v11 = *(v37 + 40);
  *(v37 + 40) = v36;
LABEL_29:
}

void sub_100022C34(uint64_t a1)
{
  v2 = [*(a1 + 32) callCenter];
  v3 = [v2 hasCurrentCalls];

  v4 = IntentHandlerDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call exists, proceeding to handle HangUp intent.", v8, 2u);
    }

    v6 = 1;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100030990(v5);
    }

    v6 = 6;
  }

  v7 = [[INHangUpCallIntentResponse alloc] initWithCode:v6 userActivity:0];
  (*(*(a1 + 40) + 16))();
}

void sub_100022E78(uint64_t a1)
{
  v2 = [*(a1 + 32) callCenter];
  v3 = [v2 incomingCall];
  if (v3)
  {
    v4 = v3;

LABEL_4:
    v6 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "An incoming call exists: %@", &v18, 0xCu);
    }

    v7 = [v4 isEligibleForScreening];
    v8 = IntentHandlerDefaultLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call to automatic screening", &v18, 2u);
      }

      v10 = [[TUAnswerRequest alloc] initWithCall:v4];
      [v10 setSendToScreening:1];
      v11 = [*(a1 + 32) callCenter];
      [v11 answerWithRequest:v10];
    }

    else
    {
      if (v9)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Declining it and returning success", &v18, 2u);
      }

      v10 = [*(a1 + 32) callCenter];
      [v10 disconnectCall:v4 withReason:2];
    }

    v12 = [[INHangUpCallIntentResponse alloc] initWithCode:3 userActivity:0];
    [v12 setHungUpCallType:6];
    goto LABEL_14;
  }

  v5 = [*(a1 + 32) callCenter];
  v4 = [v5 incomingVideoCall];

  if (v4)
  {
    goto LABEL_4;
  }

  v13 = [*(a1 + 32) callCenter];
  v14 = [v13 hasCurrentCalls];

  v15 = IntentHandlerDefaultLog();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "At least one call exists. Hanging up and returning success", &v18, 2u);
    }

    v17 = [*(a1 + 32) callCenter];
    [v17 disconnectCurrentCall];

    v12 = [[INHangUpCallIntentResponse alloc] initWithCode:3 userActivity:0];
    [v12 setHungUpCallType:7];
  }

  else
  {
    if (v16)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No calls exist. Since call was hung up between confirm and handle, return success.", &v18, 2u);
    }

    v12 = [[INHangUpCallIntentResponse alloc] initWithCode:3 userActivity:0];
  }

  v4 = 0;
LABEL_14:
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000236EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100057A58 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_100023D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100023DA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100023DBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = IntentHandlerDefaultLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to generate FaceTime link with error %@", &v13, 0xCu);
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    if (v8)
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully generated FaceTime link: %@", &v13, 0xCu);
    }

    v11 = *(*(a1 + 40) + 8);
    v12 = v5;
    v10 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100024314(uint64_t a1)
{
  v2 = [*(a1 + 32) callCenter];
  v3 = [v2 incomingCall];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [*(a1 + 32) callCenter];
    v4 = [v5 incomingVideoCall];

    if (!v4)
    {
      v15 = +[CallHistoryDataSourcePredicate predicateForJustMissedCalls];
      v24 = [*(a1 + 32) dataSource];
      v25 = [v24 callHistoryDataSource];
      v26 = [v25 callsWithPredicate:v15 limit:1 offset:0 batchSize:1];
      v27 = [v26 firstObject];

      if (v27)
      {
        v28 = +[CallRecordConverter sharedInstance];
        v44 = v27;
        v29 = [NSArray arrayWithObjects:&v44 count:1];
        v30 = [*(a1 + 32) dataSource];
        v31 = [v30 contactsDataSource];
        v32 = [*(a1 + 32) dataSource];
        v33 = [v32 providerManager];
        v4 = [v28 callRecordsForRecentCalls:v29 withContactsDataSource:v31 withCallProviderManager:v33];
      }

      else
      {
        v4 = 0;
      }

      v43 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v4;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "No incoming call exists. Returning no incoming call. Recent Missed Calls: %@", buf, 0xCu);
      }

      v13 = [[INAnswerCallIntentResponse alloc] initWithCode:4 userActivity:0];
      [v13 setStatusCode:1];
      [v13 setCallRecords:v4];

      goto LABEL_38;
    }
  }

  v6 = (a1 + 40);
  v7 = [*(a1 + 40) callIdentifier];
  if (![v7 length])
  {

LABEL_12:
    v14 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "An incoming call exists. Answering it and returning success", buf, 2u);
    }

    v15 = [[TUAnswerRequest alloc] initWithCall:v4];
    if ([*v6 _idiom] == 4)
    {
      [v15 setBehavior:4];
      v16 = [*v6 _originatingDeviceIDSIdentifier];
      if ([v16 length])
      {
        v17 = [*v6 _isOwnedByCurrentUser];
        v18 = [v17 BOOLValue];

        if (v18)
        {
          v19 = [*v6 _originatingDeviceIDSIdentifier];
          v20 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Setting endpointIDSDestination: %@", buf, 0xCu);
          }

          v21 = [IDSDestination destinationWithURI:v19];
          [v15 setEndpointIDSDestination:v21];
          goto LABEL_35;
        }
      }

      else
      {
      }

      v34 = [*v6 _originatingDeviceRapportMediaSystemIdentifier];
      v35 = [v34 length];

      if (v35)
      {
        v36 = [*v6 _originatingDeviceRapportMediaSystemIdentifier];
        [v15 setEndpointRapportMediaSystemIdentifier:v36];

        v37 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [v15 endpointRapportMediaSystemIdentifier];
          *buf = 138412290;
          v46 = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Intent contains an originatingDeviceRapportMediaSystemIdentifier: %@", buf, 0xCu);
        }
      }

      v39 = [*v6 _originatingDeviceRapportEffectiveIdentifier];
      v40 = [v39 length];

      if (!v40)
      {
        goto LABEL_37;
      }

      v41 = [*v6 _originatingDeviceRapportEffectiveIdentifier];
      [v15 setEndpointRapportEffectiveIdentifier:v41];

      v19 = IntentHandlerDefaultLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v21 = [v15 endpointRapportEffectiveIdentifier];
      *buf = 138412290;
      v46 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Intent contains an originatingDeviceRapportEffectiveIdentifier: %@", buf, 0xCu);
LABEL_35:

LABEL_36:
      goto LABEL_37;
    }

    if ([*v6 audioRoute] == 1)
    {
      v22 = &TUCallSourceIdentifierSpeakerRoute;
    }

    else
    {
      v23 = [*v6 audioRoute];
      if (v23 != _INCallAudioRouteHeySiriAudioRoute)
      {
LABEL_37:
        v42 = [*(a1 + 32) callCenter];
        [v42 answerWithRequest:v15];

        v13 = [[INAnswerCallIntentResponse alloc] initWithCode:4 userActivity:0];
        [v13 setStatusCode:2];
LABEL_38:

        goto LABEL_39;
      }

      v22 = &TUCallSourceIdentifierHeySiri;
    }

    [v15 setSourceIdentifier:*v22];
    goto LABEL_37;
  }

  v8 = [*v6 callIdentifier];
  v9 = [v4 callUUID];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    goto LABEL_12;
  }

  v11 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100030A4C(v11);
  }

  v12 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100030A90((a1 + 40), v4, v12);
  }

  v13 = [[INAnswerCallIntentResponse alloc] initWithCode:5 userActivity:0];
LABEL_39:

  (*(*(a1 + 48) + 16))();
}

id IntentHandlerDefaultLog()
{
  if (qword_100057A70 != -1)
  {
    sub_100030B58();
  }

  v1 = qword_100057A68;

  return v1;
}

void sub_100024B9C(id a1)
{
  qword_100057A68 = os_log_create("com.apple.calls.intenthandler", "Default");

  _objc_release_x1();
}

uint64_t sub_1000252F0(uint64_t a1)
{
  qword_100057A78 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_1000263F0()
{
  v0 = sub_100030F48();
  sub_100026468(v0, qword_100057A90);
  sub_1000264CC(v0, qword_100057A90);
  return sub_100030F38();
}

uint64_t *sub_100026468(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000264CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100026514(id *a1)
{
  v1 = [*a1 date];
  sub_100030DC8();
}

uint64_t sub_100026708(const void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v6 = _Block_copy(a1);
  v3[3] = v6;
  v3[4] = _Block_copy(a2);
  _Block_copy(v6);

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000267F0;

  return sub_100029F10(a3, v6);
}

uint64_t sub_1000267F0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *v1;

  v7 = *(v3 + 24);
  v8 = *(v3 + 16);
  _Block_release(v7);

  _Block_release(v7);
  if (v2)
  {
    isa = sub_100030D78();

    v10 = isa;
    v11 = 0;
  }

  else
  {
    sub_100029394(&qword_100057A10, &unk_100039060);
    isa = sub_100031038().super.isa;

    v11 = isa;
    v10 = 0;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v11, v10);

  _Block_release(v12);
  v13 = *(v6 + 8);

  return v13();
}

uint64_t sub_1000269B4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *(*(sub_100029394(&qword_1000579F0, &qword_100038F20) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = sub_100030E08();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100026AB0, 0, 0);
}

uint64_t sub_100026AB0()
{
  v29 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  sub_100030DE8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100029AE8(v0[7], &qword_1000579F0, &qword_100038F20);
    if (qword_100057780 != -1)
    {
      swift_once();
    }

    v6 = v0[5];
    v7 = sub_100030F48();
    sub_1000264CC(v7, qword_100057A90);

    v8 = sub_100030F28();
    v9 = sub_100031088();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[4];
      v10 = v0[5];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10002DA30(v11, v10, &v28);
      _os_log_impl(&_mh_execute_header, v8, v9, "Expected UUID vmIdentifier: %s", v12, 0xCu);
      sub_1000295CC(v13);
    }

    v14 = v0[10];
    v15 = v0[7];

    v16 = v0[1];

    return v16(0);
  }

  else
  {
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];
    v21 = v0[6];
    (*(v19 + 32))(v18, v0[7], v20);
    v22 = *(v21 + 16);
    sub_100029394(&qword_100057978, &qword_100038F60);
    v23 = *(v19 + 72);
    v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v25 = swift_allocObject();
    v0[11] = v25;
    *(v25 + 16) = xmmword_100038E70;
    (*(v19 + 16))(v25 + v24, v18, v20);
    v26 = async function pointer to MessageStoreController.getMessages(recordUUIDs:)[1];
    v27 = swift_task_alloc();
    v0[12] = v27;
    *v27 = v0;
    v27[1] = sub_100026DA4;

    return MessageStoreController.getMessages(recordUUIDs:)(v25);
  }
}

uint64_t sub_100026DA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v8 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v5 = sub_10002715C;
  }

  else
  {
    v6 = v3[11];

    v5 = sub_100026EC0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100026EC0()
{
  v30 = v0;
  super_class = v0[6].super_class;
  if (super_class >> 62)
  {
    if (super_class < 0)
    {
      v9 = v0[6].super_class;
    }

    if (sub_100031148())
    {
      goto LABEL_3;
    }
  }

  else if (*((super_class & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((super_class & 0xC000000000000001) != 0)
    {
      v27 = v0[6].super_class;
      v2 = sub_1000310C8();
      v28 = v0[6].super_class;
      goto LABEL_6;
    }

    if (*((super_class & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[6].super_class + 4);
LABEL_6:
      v4 = v0[4].super_class;
      receiver = v0[5].receiver;
      v5 = v0[4].receiver;

      v6 = type metadata accessor for VoicemailMessageWrapper();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtC18PhoneIntentHandler23VoicemailMessageWrapper_wrapped] = v2;
      v0[1].receiver = v7;
      v0[1].super_class = v6;
      v8 = objc_msgSendSuper2(v0 + 1, "init");
      (*(v4 + 1))(receiver, v5);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_19;
  }

  v10 = v0[6].super_class;

  if (qword_100057780 != -1)
  {
LABEL_19:
    swift_once();
  }

  v11 = v0[2].super_class;
  v12 = sub_100030F48();
  sub_1000264CC(v12, qword_100057A90);

  v13 = sub_100030F28();
  v14 = sub_100031088();

  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[4].super_class;
  v16 = v0[5].receiver;
  v18 = v0[4].receiver;
  if (v15)
  {
    v20 = v0[2].receiver;
    v19 = v0[2].super_class;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10002DA30(v20, v19, &v29);
    _os_log_impl(&_mh_execute_header, v13, v14, "Coudln't find voicemail for: %s", v21, 0xCu);
    sub_1000295CC(v22);
  }

  (*(v17 + 1))(v16, v18);
  v8 = 0;
LABEL_14:
  v23 = v0[5].receiver;
  v24 = v0[3].super_class;

  v25 = v0->super_class;

  return v25(v8);
}

uint64_t sub_10002715C()
{
  v26 = v0;
  v1 = v0[11];

  if (qword_100057780 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = v0[5];
  v4 = sub_100030F48();
  sub_1000264CC(v4, qword_100057A90);

  swift_errorRetain();
  v5 = sub_100030F28();
  v6 = sub_100031088();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v7)
  {
    v24 = v0[10];
    v12 = v0[4];
    v13 = v0[5];
    v23 = v0[8];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10002DA30(v12, v13, &v25);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error fetching voicemail for: %s, error: %@", v14, 0x16u);
    sub_100029AE8(v15, &qword_100057970, &qword_100038F58);

    sub_1000295CC(v16);

    (*(v10 + 8))(v24, v23);
  }

  else
  {
    v18 = v0[14];

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[10];
  v20 = v0[7];

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_100027550(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_100030F68();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100027624;

  return sub_1000269B4(v4, v6);
}

uint64_t sub_100027624(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_100030D78();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    v10[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  v12 = *(v9 + 8);

  return v12();
}

void sub_1000277E8(void *a1)
{
  v2 = (*(*(sub_100029394(&qword_100057960, &qword_100038F18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = v31 - v3;
  v5 = (*(*(sub_100029394(&qword_1000579F0, &qword_100038F20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = v31 - v6;
  v8 = sub_100030E08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (__chkstk_darwin)();
  v12 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v31 - v13;
  v32 = a1;
  v15 = [a1 vmIdentifier];
  sub_100030F68();

  sub_100030DE8();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100029AE8(v7, &qword_1000579F0, &qword_100038F20);
    if (qword_100057780 != -1)
    {
      swift_once();
    }

    v16 = sub_100030F48();
    sub_1000264CC(v16, qword_100057A90);
    v17 = v32;
    swift_unknownObjectRetain();
    v18 = sub_100030F28();
    v19 = sub_100031088();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315138;
      v22 = [v17 vmIdentifier];
      v23 = sub_100030F68();
      v25 = v24;

      v26 = sub_10002DA30(v23, v25, &v33);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "Expected UUID vmIdentifier: %s", v20, 0xCu);
      sub_1000295CC(v21);
    }
  }

  else
  {
    v27 = *(v9 + 32);
    v27(v14, v7, v8);
    v28 = sub_100031078();
    (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
    (*(v9 + 16))(v12, v14, v8);
    v29 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v30 = swift_allocObject();
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    *(v30 + 4) = v31[1];
    v27(&v30[v29], v12, v8);

    sub_100028378(0, 0, v4, &unk_100038F30, v30);

    (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_100027C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(sub_100029394(&qword_100057940, &qword_100038F08) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = *(*(sub_100029394(&qword_1000579F0, &qword_100038F20) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v8 = sub_100030E08();
  v5[7] = v8;
  v9 = *(v8 - 8);
  v5[8] = v9;
  v10 = *(v9 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100027D88, 0, 0);
}

uint64_t sub_100027D88()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = *(v0[2] + 16);
  sub_100029394(&qword_100057968, &qword_100038F50);
  v9 = swift_allocObject();
  v0[10] = v9;
  *(v9 + 16) = xmmword_100038E80;
  (*(v2 + 16))(v1, v7, v4);
  v10 = *(v2 + 56);
  v10(v3, 1, 1, v4);
  v10(v5, 1, 1, v4);
  v11 = sub_100030DA8();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = objc_allocWithZone(sub_100030EA8());
  *(v9 + 32) = sub_100030E98();
  v13 = async function pointer to MessageStoreController.updateMessages(_:)[1];
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_100027F94;

  return MessageStoreController.updateMessages(_:)(v9);
}

uint64_t sub_100027F94()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100028104, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[9];
    v7 = v3[5];
    v6 = v3[6];
    v8 = v3[4];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_100028104()
{
  v18 = v0;
  v1 = v0[10];

  if (qword_100057780 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_100030F48();
  sub_1000264CC(v3, qword_100057A90);
  swift_errorRetain();
  v4 = sub_100030F28();
  v5 = sub_100031088();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10002DA30(0xD00000000000005BLL, 0x800000010003A350, &v17);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10002DA30(0x646165526B72616DLL, 0xEC000000293A5F28, &v17);
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%s %@", v8, 0x20u);
    sub_100029AE8(v9, &qword_100057970, &qword_100038F58);

    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = v0[9];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[4];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100028378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100029394(&qword_100057960, &qword_100038F18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_1000297DC(a3, v26 - v10);
  v12 = sub_100031078();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100029AE8(v11, &qword_100057960, &qword_100038F18);
  }

  else
  {
    sub_100031068();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100031058();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100030F88() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100029AE8(a3, &qword_100057960, &qword_100038F18);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100029AE8(a3, &qword_100057960, &qword_100038F18);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000286C0()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

BOOL sub_100028A00(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC18PhoneIntentHandler23VoicemailMessageWrapper_wrapped];
  v2 = a1;
  sub_100030E48();
  v3 = sub_100030F08();
  LOWORD(v1) = sub_100030F08();

  return v3 == v1;
}

uint64_t sub_100028B98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100030DA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100029394(&qword_100057940, &qword_100038F08);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC18PhoneIntentHandler23VoicemailMessageWrapper_wrapped);
  v13 = sub_100030E18();
  v14 = sub_100030F18();

  if (v14)
  {
    sub_100030D98();

    v15 = *(v4 + 32);
    v15(v11, v7, v3);
    (*(v4 + 56))(v11, 0, 1, v3);
    return (v15)(a1, v11, v3);
  }

  else
  {
    (*(v4 + 56))(v11, 1, 1, v3);
    sub_100030E58();
    result = (*(v4 + 48))(v11, 1, v3);
    if (result != 1)
    {
      return sub_100029AE8(v11, &qword_100057940, &qword_100038F08);
    }
  }

  return result;
}

uint64_t sub_100028E04()
{
  v1 = sub_100030DA8();
  v2 = *(v1 - 8);
  v39 = v1;
  v40 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100030DD8();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v37);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030E08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_1000310B8(16);

  strcpy(v43, "vmIdentifier=");
  HIWORD(v43[1]) = -4864;
  v14 = *(v0 + OBJC_IVAR____TtC18PhoneIntentHandler23VoicemailMessageWrapper_wrapped);
  sub_100030E28();
  v15 = sub_100030DF8();
  v17 = v16;
  (*(v10 + 8))(v13, v9);
  v44._countAndFlagsBits = v15;
  v44._object = v17;
  sub_100030FA8(v44);

  v45._countAndFlagsBits = 32;
  v45._object = 0xE100000000000000;
  sub_100030FA8(v45);
  v46._countAndFlagsBits = v43[0];
  v18 = v43[1];
  v43[0] = 0xD000000000000018;
  v43[1] = 0x800000010003A310;
  v46._object = v18;
  sub_100030FA8(v46);

  v19 = v43[0];
  v20 = v43[1];
  v43[0] = 0x3D65746164;
  v43[1] = 0xE500000000000000;
  sub_100030E38();
  sub_10002A5F0(&qword_100057948, &type metadata accessor for Date);
  v21 = v37;
  v47._countAndFlagsBits = sub_100031158();
  sub_100030FA8(v47);

  (*(v5 + 8))(v8, v21);
  v48._countAndFlagsBits = 32;
  v48._object = 0xE100000000000000;
  sub_100030FA8(v48);
  v22 = v43[0];
  v23 = v43[1];
  v43[0] = v19;
  v43[1] = v20;

  v49._countAndFlagsBits = v22;
  v49._object = v23;
  sub_100030FA8(v49);

  v24 = v43[0];
  v25 = v43[1];
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_1000310B8(23);

  v43[0] = 0xD000000000000014;
  v43[1] = 0x800000010003A330;
  v41 = sub_100030E68();
  v42 = v26;
  sub_100029394(&qword_100057950, &qword_100038F10);
  v50._countAndFlagsBits = sub_100030F78();
  sub_100030FA8(v50);

  v51._countAndFlagsBits = 32;
  v51._object = 0xE100000000000000;
  sub_100030FA8(v51);
  v27 = v43[0];
  v28 = v43[1];
  v43[0] = v24;
  v43[1] = v25;

  v52._countAndFlagsBits = v27;
  v52._object = v28;
  sub_100030FA8(v52);

  v30 = v43[0];
  v29 = v43[1];
  strcpy(v43, "dataURL=");
  BYTE1(v43[1]) = 0;
  WORD1(v43[1]) = 0;
  HIDWORD(v43[1]) = -402653184;
  v31 = v38;
  sub_100028B98(v38);
  sub_10002A5F0(&qword_100057958, &type metadata accessor for URL);
  v32 = v39;
  v53._countAndFlagsBits = sub_100031158();
  sub_100030FA8(v53);

  (*(v40 + 8))(v31, v32);
  v33 = v43[0];
  v34 = v43[1];
  v43[0] = v30;
  v43[1] = v29;

  v54._countAndFlagsBits = v33;
  v54._object = v34;
  sub_100030FA8(v54);

  v55._countAndFlagsBits = 41;
  v55._object = 0xE100000000000000;
  sub_100030FA8(v55);

  return v43[0];
}

id sub_10002932C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailMessageWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100029394(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000293DC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000294D4;

  return v7(a1);
}

uint64_t sub_1000294D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000295CC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100029618()
{
  v1 = sub_100030E08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000296E4(uint64_t a1)
{
  v4 = *(sub_100030E08() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002A6D8;

  return sub_100027C4C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000297DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100029394(&qword_100057960, &qword_100038F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002984C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029884(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002A6D8;

  return sub_1000293DC(a1, v5);
}

uint64_t sub_10002993C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000299F4;

  return sub_1000293DC(a1, v5);
}

uint64_t sub_1000299F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100029AE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100029394(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100029B48()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100029B90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000299F4;

  return sub_100027550(v2, v3, v4);
}

uint64_t sub_100029C48()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002A6D8;

  return sub_10002D5A4(v2, v3, v5);
}

uint64_t sub_100029D08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002A6D8;

  return sub_10002D68C(a1, v4, v5, v7);
}

uint64_t sub_100029DD4()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100029E1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002A6D8;

  return sub_100026708(v2, v3, v4);
}

uint64_t sub_100029ED0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100029F10(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_100029394(&qword_100057980, &qword_100038FC0);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100029FDC, 0, 0);
}

uint64_t sub_100029FDC()
{
  v1 = *(*(v0 + 40) + 16);
  v2 = async function pointer to MessageStoreController.getMessages(providers:types:)[1];
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_10002A088;

  return MessageStoreController.getMessages(providers:types:)(&off_10004D2A8, &off_10004D2D0);
}

uint64_t sub_10002A088(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {
    v6 = *(v3 + 72);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_10002A1D8, 0, 0);
  }
}

uint64_t sub_10002A1D8()
{
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
LABEL_29:
    v2 = sub_100031148();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    v13 = *(v0 + 88);

    if (_swiftEmptyArrayStorage >> 62)
    {
      v14 = sub_100031148();
      if (v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_14:
        v1 = 0;
        v24 = v0;
        v0 = *(v0 + 48) + 16;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v15 = sub_1000310C8();
            v16 = (v1 + 1);
            if (__OFADD__(v1, 1))
            {
LABEL_24:
              __break(1u);
LABEL_25:
              v0 = v24;
              break;
            }
          }

          else
          {
            if (v1 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            v15 = _swiftEmptyArrayStorage[v1 + 4];
            swift_unknownObjectRetain();
            v16 = (v1 + 1);
            if (__OFADD__(v1, 1))
            {
              goto LABEL_24;
            }
          }

          if ((*v0)(*(v24 + 48), v15))
          {
            sub_1000310E8();
            v17 = _swiftEmptyArrayStorage[2];
            sub_100031118();
            sub_100031128();
            sub_1000310F8();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v1;
          if (v16 == v14)
          {
            goto LABEL_25;
          }
        }
      }
    }

    v19 = *(v0 + 64);
    v18 = *(v0 + 72);
    v20 = *(v0 + 56);

    *(v0 + 32) = _swiftEmptyArrayStorage;
    swift_getKeyPath();
    sub_10002A5F0(&qword_100057988, &type metadata accessor for Date);
    sub_100030D68();
    sub_100029394(&qword_100057990, &qword_100038FF0);
    sub_10002A680(&qword_100057998, &qword_100057990, &qword_100038FF0);
    sub_10002A680(&unk_1000579A0, &qword_100057980, &qword_100038FC0);
    v21 = sub_100031028();
    (*(v19 + 8))(v18, v20);

    v22 = *(v0 + 8);

    return v22(v21);
  }

  result = sub_100031108();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v23 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = *(v0 + 88) + 32;
    while (1)
    {
      if (v5)
      {
        v7 = *(v0 + 88);
        v8 = sub_1000310C8();
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v4 >= *(v23 + 16))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v8 = *(v6 + 8 * v4);
      }

      v9 = v8;
      ++v4;
      v10 = type metadata accessor for VoicemailMessageWrapper();
      v11 = objc_allocWithZone(v10);
      *&v11[OBJC_IVAR____TtC18PhoneIntentHandler23VoicemailMessageWrapper_wrapped] = v9;
      *(v0 + 16) = v11;
      *(v0 + 24) = v10;
      v1 = objc_msgSendSuper2((v0 + 16), "init");
      sub_1000310E8();
      v12 = _swiftEmptyArrayStorage[2];
      sub_100031118();
      sub_100031128();
      sub_1000310F8();
      if (v2 == v4)
      {
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002A5F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002A638(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002A680(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002A638(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10002A6E4()
{
  result = [objc_allocWithZone(type metadata accessor for IntentHandlerMessageStore()) init];
  qword_100057AA8 = result;
  return result;
}

id sub_10002A774()
{
  swift_getObjectType();
  v0 = [objc_allocWithZone(VMVoicemailManager) init];
  sub_100030EF8();
  v1 = sub_100030EE8();
  type metadata accessor for MessageStoreWrapper();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = [objc_allocWithZone(IntentHandlerFeatureFlags) init];
  v4 = type metadata accessor for IntentHandlerMessageStore();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___IntentHandlerMessageStore_vmManager] = v0;
  *&v5[OBJC_IVAR___IntentHandlerMessageStore_messageStore] = v2;
  *&v5[OBJC_IVAR___IntentHandlerMessageStore_featureFlags] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, "init");
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_10002A918(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_10002A93C, 0, 0);
}

uint64_t sub_10002A93C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v1[20];
  v4 = v1[21];
  v6 = v1[19];
  v7 = [*(v4 + OBJC_IVAR___IntentHandlerMessageStore_featureFlags) vmdEnabled];
  v8 = &OBJC_IVAR___IntentHandlerMessageStore_vmManager;
  if (!v7)
  {
    v8 = &OBJC_IVAR___IntentHandlerMessageStore_messageStore;
  }

  v9 = *(v4 + *v8);
  v1[22] = v9;
  v1[14] = v6;
  v1[15] = v5;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10002AD0C;
  v1[13] = &unk_10004D4D8;
  v10 = _Block_copy(v3);
  v1[23] = v10;
  v11 = v1[15];
  swift_unknownObjectRetain();

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_10002AB08;
  v12 = swift_continuation_init();
  v1[17] = sub_100029394(&qword_100057A08, &qword_100039058);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10002AD68;
  v1[13] = &unk_10004D500;
  v1[14] = v12;
  [v9 fetchVoicemailsMatching:v10 completion:v3];

  return _swift_continuation_await(v2);
}

uint64_t sub_10002AB08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_10002AC8C;
  }

  else
  {
    v3 = sub_10002AC18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002AC18()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[18];
  swift_unknownObjectRelease();
  _Block_release(v2);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10002AC8C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();
  swift_unknownObjectRelease();
  _Block_release(v1);
  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

uint64_t sub_10002AD0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_10002AD68(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002C48C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100029394(&qword_100057A00, &qword_100039050);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100029394(&qword_100057A10, &unk_100039060);
    **(*(v4 + 64) + 40) = sub_100031048();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10002AFE4(const void *a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = _Block_copy(a1);
  v3[3] = _Block_copy(a2);
  v7 = swift_allocObject();
  v3[4] = v7;
  *(v7 + 16) = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10002B0DC;

  return sub_10002A918(sub_10002C71C, v7);
}

uint64_t sub_10002B0DC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_100030D78();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_100029394(&qword_100057A10, &unk_100039060);
    isa = sub_100031038().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_10002B298(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  v4 = *(*(sub_100029394(&qword_1000579F0, &qword_100038F20) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_10002B338, 0, 0);
}

uint64_t sub_10002B338()
{
  v68 = v0;
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  sub_100030DE8();
  v4 = sub_100030E08();
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = sub_10002C3B0(v1);
  if (v5 != 1)
  {
    v19 = v0 + 26;
    v20 = (v0 + 10);
    v21 = v0[37];
    v22 = v0[36];
    v23 = *(v0[38] + OBJC_IVAR___IntentHandlerMessageStore_messageStore);
    v24 = sub_100030F58();
    v0[40] = v24;
    v0[10] = v0;
    v0[15] = v0 + 35;
    v0[11] = sub_10002B954;
    v25 = swift_continuation_init();
    v0[33] = sub_100029394(&qword_1000579F8, &qword_100039048);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_10002BD4C;
    v0[29] = &unk_10004D4B0;
    v0[30] = v25;
    goto LABEL_75;
  }

  v7 = v0[36];
  v8 = v0[37];
  v9 = HIBYTE(v8) & 0xF;
  v10 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_66;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v57 = v0[37];

    sub_10002E2E8(v7, v8, 10);
    v59 = v58;

    if (v59)
    {
      goto LABEL_66;
    }

    goto LABEL_74;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v66 = v0[36];
    v67 = v8 & 0xFFFFFFFFFFFFFFLL;
    if (v7 == 43)
    {
      if (v9)
      {
        if (--v9)
        {
          v36 = 0;
          v37 = &v66 + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = (v36 * 10) >> 64;
            v40 = 10 * v36;
            if (v39 != v40 >> 63)
            {
              break;
            }

            v18 = __OFADD__(v40, v38);
            v36 = v40 + v38;
            if (v18)
            {
              break;
            }

            ++v37;
            if (!--v9)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_82:
      __break(1u);
      return _swift_continuation_await(v6);
    }

    if (v7 != 45)
    {
      if (v9)
      {
        v45 = 0;
        v46 = &v66;
        while (1)
        {
          v47 = *v46 - 48;
          if (v47 > 9)
          {
            break;
          }

          v48 = (v45 * 10) >> 64;
          v49 = 10 * v45;
          if (v48 != v49 >> 63)
          {
            break;
          }

          v18 = __OFADD__(v49, v47);
          v45 = v49 + v47;
          if (v18)
          {
            break;
          }

          ++v46;
          if (!--v9)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v9)
    {
      if (--v9)
      {
        v26 = 0;
        v27 = &v66 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = (v26 * 10) >> 64;
          v30 = 10 * v26;
          if (v29 != v30 >> 63)
          {
            break;
          }

          v18 = __OFSUB__(v30, v28);
          v26 = v30 - v28;
          if (v18)
          {
            break;
          }

          ++v27;
          if (!--v9)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_80;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v6 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v63 = v0[36];
    v64 = v0[37];
    v6 = sub_1000310D8();
  }

  v12 = *v6;
  if (v12 == 43)
  {
    v9 = v10 - 1;
    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        if (v6)
        {
          v31 = 0;
          v32 = v6 + 1;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              goto LABEL_64;
            }

            v34 = (v31 * 10) >> 64;
            v35 = 10 * v31;
            if (v34 != v35 >> 63)
            {
              goto LABEL_64;
            }

            v18 = __OFADD__(v35, v33);
            v31 = v35 + v33;
            if (v18)
            {
              goto LABEL_64;
            }

            ++v32;
            if (!--v9)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_56;
      }

      goto LABEL_64;
    }

    goto LABEL_81;
  }

  if (v12 == 45)
  {
    v9 = v10 - 1;
    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        if (v6)
        {
          v13 = 0;
          v14 = v6 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_64;
            }

            v16 = (v13 * 10) >> 64;
            v17 = 10 * v13;
            if (v16 != v17 >> 63)
            {
              goto LABEL_64;
            }

            v18 = __OFSUB__(v17, v15);
            v13 = v17 - v15;
            if (v18)
            {
              goto LABEL_64;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v9) = 0;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v10)
  {
    if (v6)
    {
      v41 = 0;
      while (1)
      {
        v42 = *v6 - 48;
        if (v42 > 9)
        {
          goto LABEL_64;
        }

        v43 = (v41 * 10) >> 64;
        v44 = 10 * v41;
        if (v43 != v44 >> 63)
        {
          goto LABEL_64;
        }

        v18 = __OFADD__(v44, v42);
        v41 = v44 + v42;
        if (v18)
        {
          goto LABEL_64;
        }

        ++v6;
        if (!--v10)
        {
          goto LABEL_56;
        }
      }
    }

    goto LABEL_56;
  }

LABEL_64:
  LOBYTE(v9) = 1;
LABEL_65:
  LOBYTE(v65) = v9;
  if ((v9 & 1) == 0)
  {
LABEL_74:
    v20 = (v0 + 2);
    v19 = v0 + 18;
    v60 = v0[37];
    v61 = v0[36];
    v23 = *(v0[38] + OBJC_IVAR___IntentHandlerMessageStore_vmManager);
    v24 = sub_100030F58();
    v0[42] = v24;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_10002BAD8;
    v62 = swift_continuation_init();
    v0[25] = sub_100029394(&qword_1000579F8, &qword_100039048);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_10002BD4C;
    v0[21] = &unk_10004D488;
    v0[22] = v62;
LABEL_75:
    [v23 fetchVoicemailWithIdentifier:v24 completion:{v19, v65, v66, v67}];
    v6 = v20;

    return _swift_continuation_await(v6);
  }

LABEL_66:
  if (qword_100057780 != -1)
  {
    swift_once();
  }

  v50 = sub_100030F48();
  sub_1000264CC(v50, qword_100057A90);
  v51 = sub_100030F28();
  v52 = sub_100031088();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Unrecognized identifier, returning nil", v53, 2u);
  }

  v54 = v0[39];

  v55 = v0[1];

  return v55(0);
}

uint64_t sub_10002B954()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_10002BC5C;
  }

  else
  {
    v3 = sub_10002BA64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002BA64()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 312);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_10002BAD8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_10002BCD4;
  }

  else
  {
    v3 = sub_10002BBE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002BBE8()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 312);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_10002BC5C()
{
  v1 = v0[40];
  v2 = v0[41];
  swift_willThrow();

  v3 = v0[41];
  v4 = v0[39];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10002BCD4()
{
  v1 = v0[42];
  v2 = v0[43];
  swift_willThrow();

  v3 = v0[43];
  v4 = v0[39];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10002BD4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10002C48C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100029394(&qword_100057A00, &qword_100039050);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    swift_unknownObjectRetain();

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10002BFA8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_100030F68();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10002C07C;

  return sub_10002B298(v5, v7);
}

uint64_t sub_10002C07C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_100030D78();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    v10[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  v12 = *(v9 + 8);

  return v12();
}

id sub_10002C2FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandlerMessageStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002C3B0(uint64_t a1)
{
  v2 = sub_100029394(&qword_1000579F0, &qword_100038F20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002C428(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10002C48C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10002C4D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C4E8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C530()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000299F4;

  return sub_10002BFA8(v2, v3, v4);
}

uint64_t sub_10002C5E8()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C630()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002A6D8;

  return sub_10002AFE4(v2, v3, v4);
}

uint64_t sub_10002C6E4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C7C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_10002C81C(unint64_t a1)
{
  if (a1 >> 62)
  {

    sub_100029394(&qword_100057A10, &unk_100039060);
    v1 = sub_100031138();
  }

  else
  {
    v1 = a1;

    sub_100031168();
  }

  return v1;
}

uint64_t sub_10002CA28(const void *a1, const void *a2, void *a3)
{
  v3[8] = a3;
  v6 = _Block_copy(a1);
  v3[9] = _Block_copy(a2);
  v7 = swift_allocObject();
  v3[10] = v7;
  *(v7 + 16) = v6;
  v8 = a3;

  return _swift_task_switch(sub_10002CAD4, 0, 0);
}

uint64_t sub_10002CAD4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[6] = sub_10002EEEC;
  v0[7] = v1;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10002C7C4;
  v0[5] = &unk_10004D7A8;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  v6 = [v3 voicemailsPassingTest:v4];
  _Block_release(v4);
  sub_10002EF2C();
  v7 = sub_100031048();

  sub_10002C81C(v7);

  sub_100029394(&qword_100057A10, &unk_100039060);
  isa = sub_100031038().super.isa;

  (v2)[2](v2, isa, 0);

  _Block_release(v2);
  v9 = v0[1];

  return v9();
}

uint64_t sub_10002CC6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10002CC90, 0, 0);
}

void sub_10002CC90()
{
  v41 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = HIBYTE(v2) & 0xF;
  v4 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    goto LABEL_63;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v31 = *(v0 + 24);

    v32 = sub_10002E2E8(v1, v2, 10);
    v34 = v33;

    if (v34)
    {
      goto LABEL_63;
    }

    v8 = v32;
    goto LABEL_70;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v39 = *(v0 + 16);
    v40 = v2 & 0xFFFFFFFFFFFFFFLL;
    if (v1 == 43)
    {
      if (v3)
      {
        if (--v3)
        {
          v8 = 0;
          v18 = &v39 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_78:
      __break(1u);
      return;
    }

    if (v1 != 45)
    {
      if (v3)
      {
        v8 = 0;
        v23 = &v39;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        v8 = 0;
        v12 = &v39 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_76;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    v6 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v36 = *(v0 + 16);
    v37 = *(v0 + 24);
    v6 = sub_1000310D8();
  }

  v7 = *v6;
  if (v7 == 43)
  {
    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        if (v6)
        {
          v15 = v6 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              goto LABEL_61;
            }

            v17 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v17 + v16;
            if (__OFADD__(v17, v16))
            {
              goto LABEL_61;
            }

            ++v15;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_77;
  }

  if (v7 == 45)
  {
    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        if (v6)
        {
          v9 = v6 + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v4)
  {
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v21 = *v6 - 48;
        if (v21 > 9)
        {
          goto LABEL_61;
        }

        v22 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          goto LABEL_61;
        }

        v8 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          goto LABEL_61;
        }

        ++v6;
        if (!--v4)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v8 = 0;
  LOBYTE(v3) = 1;
LABEL_62:
  LOBYTE(v38) = v3;
  if (v3)
  {
LABEL_63:
    if (qword_100057780 != -1)
    {
      swift_once();
    }

    v26 = sub_100030F48();
    sub_1000264CC(v26, qword_100057A90);
    v27 = sub_100030F28();
    v28 = sub_100031088();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Expected Int vmIdentifier to query for VMVoicemail", v29, 2u);
    }

    v30 = 0;
    goto LABEL_71;
  }

LABEL_70:
  v30 = [*(v0 + 32) voicemailWithIdentifier:{v8, v38, v39, v40}];
LABEL_71:
  v35 = *(v0 + 8);

  v35(v30);
}

uint64_t sub_10002D214(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_100030F68();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10002C07C;

  return sub_10002CC6C(v5, v7);
}

void sub_10002D2E8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    oslog = [v0 markVoicemailAsRead:v2];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100057780 != -1)
    {
      swift_once();
    }

    v3 = sub_100030F48();
    sub_1000264CC(v3, qword_100057A90);
    swift_unknownObjectRetain();
    oslog = sub_100030F28();
    v4 = sub_100031088();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      swift_getObjectType();
      v7 = sub_100031178();
      v9 = sub_10002DA30(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Received %s but feature flag is off", v5, 0xCu);
      sub_1000295CC(v6);
    }
  }
}

uint64_t sub_10002D5A4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10002A6D8;

  return v7();
}

uint64_t sub_10002D68C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000299F4;

  return v8();
}

uint64_t sub_10002D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100029394(&qword_100057960, &qword_100038F18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_1000297DC(a3, v24 - v10);
  v12 = sub_100031078();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10002E0D8(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100031068();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_100031058();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_100030F88() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_10002E0D8(a3);

    return v22;
  }

LABEL_8:
  sub_10002E0D8(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10002DA30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002DAFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10002C428(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000295CC(v11);
  return v7;
}

unint64_t sub_10002DAFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10002DC08(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000310D8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10002DC08(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002DC54(a1, a2);
  sub_10002DD84(&off_10004D2F8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10002DC54(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10002DE70(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000310D8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100030FB8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002DE70(v10, 0);
        result = sub_1000310A8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10002DD84(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10002DEE4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10002DE70(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100029394(&qword_100057A18, &qword_1000390A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002DEE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100029394(&qword_100057A18, &qword_1000390A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10002DFDC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002E024()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002A6D8;

  return sub_10002D214(v2, v3, v4);
}

uint64_t sub_10002E0D8(uint64_t a1)
{
  v2 = sub_100029394(&qword_100057960, &qword_100038F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E140()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E178(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002A6D8;

  return sub_1000293DC(a1, v5);
}

uint64_t sub_10002E230(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000299F4;

  return sub_1000293DC(a1, v5);
}

unsigned __int8 *sub_10002E2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100031008();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10002E874();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000310D8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10002E874()
{
  v0 = sub_100031018();
  v4 = sub_10002E8F4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10002E8F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100030F98();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_100031098();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10002DE70(v9, 0);
  v12 = sub_10002EA4C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_100030F98();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1000310D8();
LABEL_4:

  return sub_100030F98();
}

unint64_t sub_10002EA4C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10002EC6C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100030FE8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000310D8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10002EC6C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_100030FC8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10002EC6C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100030FF8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100030FD8();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10002ECE8()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002ED30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002A6D8;

  return sub_10002CA28(v2, v3, v4);
}

uint64_t sub_10002EDE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000299F4;

  return sub_10002D68C(a1, v4, v5, v7);
}

uint64_t sub_10002EEB4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002EF14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002EF2C()
{
  result = qword_100057A20;
  if (!qword_100057A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100057A20);
  }

  return result;
}

uint64_t INCallCapability.debugDescription.getter()
{
  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v1 = @"VIDEO_CALL";
    v3 = @"VIDEO_CALL";
  }

  else if (BackingType == 1)
  {
    v1 = @"AUDIO_CALL";
    v2 = @"AUDIO_CALL";
  }

  else
  {
    v1 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
  }

  v4 = v1;
  v5 = sub_100030F68();

  return v5;
}

void sub_10002F090(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error performing contact search: %@", &v2, 0xCu);
}

void sub_10002F108(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error performing contact search by name: %@", &v2, 0xCu);
}

void sub_10002F180(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Found %ld contacts in search by name", &v3, 0xCu);
}

void sub_10002F20C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not determine Core Telephony Subscription Info. Error: %@", &v2, 0xCu);
}

void sub_10002F284(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Found ISO Country Code override: %@", &v2, 0xCu);
}

void sub_10002F3D4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error when fetching application record for appId: %@, error: %@", &v3, 0x16u);
}

void sub_10002F5E4()
{
  v1[0] = 136315394;
  sub_10000B2E4();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s Attempting to play url %@ via assistantd", v1, 0x16u);
}

void sub_10002F664()
{
  v1[0] = 136315394;
  sub_10000B2E4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s Error fetching voicemails: %@", v1, 0x16u);
}

void sub_10002F6E4()
{
  v1[0] = 136315394;
  sub_10000B2E4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s Error playing voicemail: %@", v1, 0x16u);
}

void sub_10002F764()
{
  sub_10000B2E4();
  sub_10000CA9C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002F7E0()
{
  v2 = 136315650;
  sub_10000B2E4();
  sub_10000CA7C(&_mh_execute_header, v0, v1, "%s Generating link for participant %@ for conversation: %@", v2);
}

void sub_10002F85C()
{
  v2 = 136315650;
  sub_10000B2E4();
  sub_10000CA7C(&_mh_execute_header, v0, v1, "%s Adding participant %@ to the conversation: %@", v2);
}

void sub_10002F8D8()
{
  v2 = 136315650;
  sub_10000B2E4();
  sub_10000CA7C(&_mh_execute_header, v0, v1, "%s Ringing participant %@ in conversation: %@", v2);
}

void sub_10002F954(void *a1, NSObject *a2)
{
  v3 = [a1 URL];
  v4[0] = 136315394;
  sub_10000B2E4();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s Link: %@", v4, 0x16u);
}

void sub_10002F9F4()
{
  v1[0] = 136315394;
  sub_10000B2E4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s Error generating FT Link for conversation: %@", v1, 0x16u);
}

void sub_10002FA74(void *a1, NSObject *a2)
{
  v3 = [a1 localMember];
  v4[0] = 136315394;
  sub_10000B2E4();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s localMember %@ matches memberToAdd", v4, 0x16u);
}

void sub_10002FB94()
{
  sub_10000B2E4();
  sub_10000CA9C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002FF2C(void *a1, NSObject *a2)
{
  [a1 count];
  sub_10000D88C();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#EmergencyServicesOverrideProvider found %lu handles in emergencyServicesOverride. Transforming them to TULabeledHandle.", v3, 0xCu);
}

void sub_100030570(char a1, char a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Telephony call was requested from a watch or for an emergency call and telephony is not supported. isWatch: %d, isEmergencyCall: %d", v3, 0xEu);
}

void sub_100030600(void *a1, NSObject *a2)
{
  v3 = [a1 providerId];
  sub_10000D88C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "The call provider %@ for redial or call back is not supported", v4, 0xCu);
}

void sub_1000309D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FT aliases: %@", &v2, 0xCu);
}

void sub_100030A90(id *a1, void *a2, NSObject *a3)
{
  v5 = [*a1 callIdentifier];
  v6 = [a2 callUUID];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Requested identifier: %@, actual identifier: %@", &v7, 0x16u);
}

void sub_100030B6C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Converted this CHRecentCall previously, using cached converted INCallRecord.", buf, 2u);
}

void sub_100030BAC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueId];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Converting CHRecentCall %@ to INCallRecord.", a1, 0xCu);
}

void sub_100030CF0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "SiriInference recommended resolution result: %@", &v2, 0xCu);
}