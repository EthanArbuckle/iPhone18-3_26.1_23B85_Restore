void sub_100180E10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_1001813AC(id *a1)
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 currentCalls];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = sub_100004778();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 callGroupUUID];
          v11 = [a1[4] groupUUID];
          *buf = 138412546;
          v30 = v10;
          v31 = 2112;
          v32 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "removeActivitySession: callGroupUUID: %@, convesation groupUUID: %@", buf, 0x16u);
        }

        v12 = [v8 callGroupUUID];
        v13 = [a1[4] groupUUID];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          v15 = [a1[5] identifierUUIDString];
          v16 = [a1[6] groupUUIDToActivityIdentifierUUIDString];
          v17 = [v8 callGroupUUID];
          v18 = [v16 objectForKeyedSubscript:v17];
          v19 = [v15 isEqual:v18];

          if (v19)
          {
            [v8 setRemoteActiveTranslating:0];
            v20 = [a1[6] groupUUIDToActivityIdentifierUUIDString];
            v21 = [v8 callGroupUUID];
            [v20 setObject:0 forKeyedSubscript:v21];

            v22 = sub_100004778();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [a1[5] identifierUUIDString];
              *buf = 138412290;
              v30 = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "activitySessionChanged setting remoteActiveTranslating to false for identifierUUIDString: %@", buf, 0xCu);
            }

            goto LABEL_16;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

void sub_100181F94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v17 = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v17, 0x16u);
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = [*(a1 + 64) highlightIdentifier];
  [v14 conversationManager:v12 activeParticipant:v13 removedHighlightFrom:v15 highlightIdentifier:v16];
}

void sub_100182FC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
LABEL_7:
      if (*(a1 + 64))
      {
        v15 = sub_100004778();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 64);
          v25 = 138412290;
          v26 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating activity image for staged activity session: %@", &v25, 0xCu);
        }

        v17 = *(a1 + 56);
        v18 = [*(a1 + 64) activity];
        v19 = [v18 metadata];
        [v19 setImageData:v17];

        v20 = [*(a1 + 64) activity];
        v21 = [v20 metadata];
        [v21 saveImageToDisk];

        [*(a1 + 72) conversationChanged:*(a1 + 80)];
      }

      goto LABEL_17;
    }

    v8 = [v7 activity];
    v9 = *(a1 + 40);
    v10 = [v8 UUID];
    v11 = [v9 isEqual:v10];

    v12 = sub_100004778();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = *(a1 + 48);
        v25 = 138412290;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating activity image for activity session with UUID: %@", &v25, 0xCu);
      }

      [*(a1 + 32) updateActivityImage:*(a1 + 56)];
      goto LABEL_7;
    }

    if (v13)
    {
      v23 = *(a1 + 40);
      v24 = [v8 UUID];
      v25 = 138412546;
      v26 = v23;
      v27 = 2112;
      v28 = v24;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Not updating image for activity UUID: %@ activity session currently has different activity UUID: %@", &v25, 0x16u);
    }
  }

  else
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100477F04();
    }
  }

LABEL_17:
}

void sub_100183240(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100183328;
  block[3] = &unk_10061C440;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_100183934(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v3 = [v2 activityIdentifier];
  v4 = [v3 isEqual:@"com.apple.FaceTime.Translation.Interaction"];

  if (v4)
  {
    v5 = +[TUCallCenter sharedInstance];
    v6 = [v5 currentCalls];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 callGroupUUID];
            v15 = [*(a1 + 40) groupUUID];
            *buf = 138412546;
            v31 = v14;
            v32 = 2112;
            v33 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "receivedActivitySession: callGroupUUID: %@, convesation groupUUID: %@", buf, 0x16u);
          }

          v16 = [v12 callGroupUUID];
          v17 = [*(a1 + 40) groupUUID];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            v19 = [*(a1 + 32) identifierUUIDString];
            v20 = *(*(a1 + 48) + 128);
            v21 = [v12 callGroupUUID];
            [v20 setObject:v19 forKeyedSubscript:v21];

            [v12 setRemoteActiveTranslating:1];
            v22 = sub_100004778();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [*(a1 + 32) identifierUUIDString];
              v24 = [v12 callGroupUUID];
              v25 = [v12 callUUID];
              *buf = 138412802;
              v31 = v23;
              v32 = 2112;
              v33 = v24;
              v34 = 2112;
              v35 = v25;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "setting remoteActiveTranslating to true for %@, groupUUID: %@, callUUID: %@", buf, 0x20u);
            }

            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }
}

void sub_100184088(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_1001842A8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ presentationContexts: %@", &v11, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 updateParticipantPresentationContexts:*(a1 + 40)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 48) mutableConversationsByUUID];
      v10 = [v9 allKeys];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v11, 0x16u);
    }
  }
}

void sub_100184550(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v44 = v3;
    v45 = 2112;
    v46 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ buzzMember: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    v7 = [*(a1 + 48) featureFlags];
    if ([v7 nearbyFaceTimeEnabled])
    {
      v8 = [*(a1 + 56) nearbyStableDeviceIdentifiers];
      v9 = [v8 count];

      if (!v9)
      {
        v10 = 0;
        goto LABEL_11;
      }

      v41 = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
      v7 = [NSSet setWithObject:IDSRegistrationPropertySupportsNearbyFaceTime];
      v42 = v7;
      v10 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    }

    else
    {
      v10 = 0;
    }

LABEL_11:
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v18 = *(a1 + 56);
    v17 = *(a1 + 64);
    v19 = +[TUConversationInvitationPreference incomingCallInvitationPreferences];
    v30 = v10;
    [v15 sendInvitationMessageToMember:v16 destinationID:v17 invitationContext:v18 forConversation:v6 includeAllAttributes:0 invitationPreferences:v19 additionalOptions:v10];

    v31 = [v6 tuConversation];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v20 = [*(a1 + 48) delegateToQueue];
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v36 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 48) delegateToQueue];
            v27 = v26 = a1;
            v28 = [v27 objectForKey:v25];

            a1 = v26;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100184960;
            block[3] = &unk_10061A450;
            block[4] = v25;
            v34 = v31;
            v32 = *(v26 + 40);
            v29 = v32.i64[0];
            v35 = vextq_s8(v32, v32, 8uLL);
            dispatch_async(v28, block);
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v22);
    }

    v11 = v30;
    goto LABEL_21;
  }

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = [*(a1 + 48) mutableConversationsByUUID];
    v14 = [v13 allKeys];
    *buf = 138412546;
    v44 = v12;
    v6 = 0;
    v45 = 2112;
    v46 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", buf, 0x16u);
  }

LABEL_21:
}

void sub_100184960(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) buzzedMember:*(a1 + 56)];
}

void sub_100184B80(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ member: %@", &v14, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  v7 = sub_100004778();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Kicking member %@ from conversation %@", &v14, 0x16u);
    }

    [v6 kickMember:*(a1 + 40)];
  }

  else
  {
    if (v8)
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 48) mutableConversationsByUUID];
      v13 = [v12 allKeys];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v14, 0x16u);
    }
  }
}

void sub_100184FA4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v30 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = [*(a1 + 48) value];
  v4 = [TUHandle normalizedHandleWithDestinationID:v3];

  v5 = sub_100004778();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 56);
      v8 = [v30 UUID];
      *buf = 138412802;
      v45 = v7;
      v46 = 2112;
      v47 = v4;
      v48 = 2112;
      v49 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received nickname update message, set nickname to %@ from handle %@ for conversation UUID %@", buf, 0x20u);
    }

    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v38 = 0u;
    v9 = [v30 remoteMembers];
    v10 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = [v14 handle];
          v16 = [v15 isEquivalentToHandle:v4];

          if (v16)
          {
            v18 = [*(a1 + 56) copy];
            [v14 setNickname:v18];

            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v5 = [*(a1 + 32) delegateToQueue];
            v19 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v19)
            {
              v20 = v19;
              v29 = v4;
              v21 = *v35;
              do
              {
                for (j = 0; j != v20; j = j + 1)
                {
                  if (*v35 != v21)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v23 = *(*(&v34 + 1) + 8 * j);
                  v24 = [v30 tuConversation];
                  v25 = [*(a1 + 32) delegateToQueue];
                  v26 = [v25 objectForKey:v23];

                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_1001853CC;
                  block[3] = &unk_100619E58;
                  block[4] = v23;
                  v32 = v24;
                  v33 = *(a1 + 32);
                  v27 = v24;
                  dispatch_async(v26, block);
                }

                v20 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v20);
              v4 = v29;
            }

            goto LABEL_24;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v30 remoteMembers];
      *buf = 138412546;
      v45 = v4;
      v46 = 2112;
      v47 = v17;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring nickname update message because the from-handle %@ did not match any remote members %@", buf, 0x16u);
    }
  }

  else if (v6)
  {
    v28 = *(a1 + 48);
    *buf = 138412290;
    v45 = v28;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring nickname update message because the from-handle %@ could not be normalized.", buf, 0xCu);
  }

LABEL_24:
}

void sub_1001853CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_100185614(id *a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [a1[4] delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          v7 = [a1[5] tuConversation];
          v8 = [a1[4] delegateToQueue];
          v9 = [v8 objectForKey:v6];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018580C;
          block[3] = &unk_10061A428;
          block[4] = v6;
          v13 = v7;
          v14 = a1[4];
          v15 = a1[6];
          v16 = a1[7];
          v10 = v7;
          dispatch_async(v9, block);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }
}

void sub_10018580C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) participant:*(a1 + 56) addedNotice:*(a1 + 64)];
}

void sub_100185A14(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v11 = 138412546;
    v12 = v3;
    v13 = 1024;
    LODWORD(v14) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ downlinkMuted: %d", &v11, 0x12u);
  }

  v5 = [*(a1 + 40) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 setRemoteParticipantsDownlinkMuted:*(a1 + 48)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) mutableConversationsByUUID];
      v10 = [v9 allKeys];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v11, 0x16u);
    }
  }
}

void sub_100185CA0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v15 = 138412802;
    v16 = v4;
    v17 = 1024;
    LODWORD(v18[0]) = v3;
    WORD2(v18[0]) = 2112;
    *(v18 + 6) = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ downlinkMuted: %d remoteMembers: %@", &v15, 0x1Cu);
  }

  v6 = [*(a1 + 48) mutableConversationsByUUID];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];

  if (v7)
  {
    [v7 setDownlinkMuted:*(a1 + 64) forParticipants:*(a1 + 40)];
    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = [*(a1 + 48) mutableConversationsByUUID];
      v12 = [v11 allKeys];
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18[0] = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v15, 0x16u);
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = [NSError errorWithDomain:@"CSDAVCControlErrorDomain" code:1 userInfo:0];
      (*(v13 + 16))(v13, v14);
    }
  }
}

void sub_100185F6C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = [v3 localMember];
  v5 = [v4 nickname];
  v6 = [v5 isEqualToString:*(a1 + 48)];

  v7 = sub_100004778();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [v3 localMember];
      v10 = [v9 nickname];
      v22 = 138412290;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring local member's nickname update request because their nickname %@ is already identical", &v22, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = [v3 localMember];
      v14 = [v13 nickname];
      v22 = 138412802;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ set local member's nickname to %@, previously %@", &v22, 0x20u);
    }

    v15 = [*(a1 + 48) copy];
    v16 = [v3 localMember];
    [v16 setNickname:v15];

    v17 = [CSDMessagingConversationMessage alloc];
    v18 = [v3 groupUUID];
    v7 = [(CSDMessagingConversationMessage *)v17 initWithType:12 groupUUID:v18 link:0];

    v19 = [*(a1 + 48) copy];
    [v7 setNickname:v19];

    v20 = *(a1 + 32);
    v21 = [v7 data];
    [v20 broadcastData:v21 onConversation:v3];
  }
}

void sub_10018637C(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = [*(a1 + 32) linkManager];
    v3 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10018647C;
    v7[3] = &unk_10061D0B0;
    v4 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v4;
    [v2 getActiveLinksWithCreatedOnly:v3 completionHandler:v7];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }
}

void sub_10018647C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100186564;
  block[3] = &unk_10061AF20;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_100186564(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 32);
    v10 = 134218242;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retrieved %lu conversation link descriptors %@", &v10, 0x16u);
  }

  if (*(a1 + 40))
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to retrieve links with error %@", &v10, 0xCu);
    }

    v7 = *(a1 + 40);
  }

  v8 = *(a1 + 32);
  return (*(*(a1 + 48) + 16))();
}

void sub_100186774(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v41 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received request from TU client to generate link for conversation UUID: %@", buf, 0xCu);
    }

    v4 = [*(a1 + 32) mutableConversationsByUUID];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

    if (!v5)
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) mutableConversationsByUUID];
        v14 = [v13 allKeys];
        *buf = 138412546;
        v41 = v12;
        v42 = 2112;
        v43 = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", buf, 0x16u);
      }

      goto LABEL_33;
    }

    v6 = [*(a1 + 32) deviceSupport];
    if ([v6 isGreenTea])
    {
      v7 = [v5 remoteMembers];
      v8 = [v7 count];

      if (v8 >= 2)
      {
        v9 = sub_100004778();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "GreenTea devices cannot generate conversation links for Group FaceTime (remoteMembers > 1)", buf, 2u);
        }

        goto LABEL_33;
      }
    }

    else
    {
    }

    v15 = [v5 messagesGroupUUID];

    if (v15)
    {
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v5 messagesGroupUUID];
        *buf = 138412290;
        v41 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Conversation was initiated from messages, a link cannot be generated in this case. {messagesGroupUUID: %@}", buf, 0xCu);
      }

      v18 = *(a1 + 48);
      if (!v18)
      {
        goto LABEL_34;
      }

      v9 = [NSError errorWithDomain:@"callservicesd.ConversationLinkManagerErrorType" code:14 userInfo:0];
      (*(v18 + 16))(v18, 0, v9);
    }

    else
    {
      v19 = [v5 link];

      if (v19)
      {
        v20 = sub_100004778();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 40);
          *buf = 138412290;
          v41 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Link for conversation with UUID %@ already exists.", buf, 0xCu);
        }

        v22 = *(a1 + 48);
        if (!v22)
        {
          goto LABEL_34;
        }

        v9 = [v5 link];
        (*(v22 + 16))(v22, v9, 0);
      }

      else
      {
        v23 = [v5 localMember];
        v24 = [v23 handle];
        v9 = [v24 copy];

        v25 = [v9 normalizedValue];

        if (!v25)
        {
          v26 = [v5 localMember];
          v27 = [v26 handle];
          v28 = TUNormalizedHandleForTUHandle();

          v9 = v28;
        }

        v29 = *(a1 + 32);
        v30 = [v5 groupUUID];
        v31 = [v5 memberHandlesEligibleForLinkApproval];
        v32 = [v29 _getActivatedLinkWithHandle:v9 updateGroupUUID:v30 updateInvitedHandles:v31];

        v33 = *(a1 + 32);
        if (v32)
        {
          [v33 setConversationLink:v32 forConversation:v5 replyToCompletionHandler:*(a1 + 48)];
        }

        else
        {
          v34 = [v33 linkManager];
          v35 = [v5 groupUUID];
          v36 = [v5 memberHandlesEligibleForLinkApproval];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100186CDC;
          v37[3] = &unk_10061D100;
          v37[4] = *(a1 + 32);
          v38 = v5;
          v39 = *(a1 + 48);
          [v34 generateLinkWithGroupUUID:v35 invitedHandles:v36 originatorHandle:v9 linkLifetimeScope:0 completionHandler:v37];
        }
      }
    }

LABEL_33:

LABEL_34:
    return;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(v10 + 16);

    v11();
  }
}

void sub_100186CDC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100186DE0;
  block[3] = &unk_10061D0D8;
  v13 = v6;
  v14 = a1[5];
  v8 = a1[6];
  v9 = a1[4];
  v15 = v5;
  v16 = v9;
  v17 = v8;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

id *sub_100186DE0(id *result)
{
  v1 = result;
  if (result[4])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v1[5] groupUUID];
      v4 = v1[4];
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to generate link for groupUUID %@ with error %@", &v8, 0x16u);
    }

    result = v1[8];
    if (result)
    {
      return (result[2])(result, 0, v1[4]);
    }
  }

  else if (result[6])
  {
    v5 = result[5];
    v6 = result[7];
    v7 = v1[8];

    return [v6 setConversationLink:? forConversation:? replyToCompletionHandler:?];
  }

  return result;
}

void sub_100187420(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v43 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received request from TU client to generate link with invitedMemberHandles: %@", buf, 0xCu);
    }

    v4 = [*(a1 + 32) deviceSupport];
    if ([v4 isGreenTea])
    {
      v5 = [*(a1 + 40) count];

      if (v5 >= 2)
      {
        v6 = sub_100004778();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GreenTea devices cannot generate conversation links for Group FaceTime (invitedMemberHandles > 1)", buf, 2u);
        }

        goto LABEL_51;
      }
    }

    else
    {
    }

    v6 = +[NSMutableSet set];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (([*(*(&v38 + 1) + 8 * i) type] & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v14 = TUNormalizedHandleForTUHandle();
            v15 = v14;
            if (v14)
            {
              v16 = [v14 normalizedValue];

              if (v16)
              {
                [v6 addObject:v15];
              }
            }
          }

          else
          {
            v15 = 0;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v11);
    }

    if (!-[NSObject count](v6, "count") && [*(a1 + 40) count])
    {
      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] No invited member handles were of eligible handle types and/or had normalized values, canceling link generation", buf, 2u);
      }

      v32 = *(a1 + 48);
      if (!v32)
      {
        goto LABEL_51;
      }

      v33 = 11;
      goto LABEL_49;
    }

    v17 = [*(a1 + 32) localCallerID];
    v18 = v17[2]();

    if (!v18)
    {
      v19 = [*(a1 + 32) activeLocalHandles];
      v20 = v19[2]();
      v21 = [v20 count];

      if (!v21)
      {
        v34 = sub_100004778();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[WARN] Local user has no active handles, cannot proceed with link generation", buf, 2u);
        }

        v32 = *(a1 + 48);
        if (!v32)
        {
          goto LABEL_51;
        }

        v33 = 12;
LABEL_49:
        v18 = [NSError errorWithDomain:@"callservicesd.ConversationLinkManagerErrorType" code:v33 userInfo:0];
        (*(v32 + 16))(v32, 0, v18);
LABEL_50:

LABEL_51:
        return;
      }

      v22 = [*(a1 + 32) activeLocalHandles];
      v23 = v22[2]();
      v18 = [v23 anyObject];
    }

    v24 = [*(a1 + 32) _getActivatedLinkWithHandle:v18 updateGroupUUID:0 updateInvitedHandles:v6];
    v25 = sub_100004778();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v43 = v18;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Getting activated link for callerID %@, activatedLink: %@", buf, 0x16u);
    }

    if (!v24)
    {
      goto LABEL_38;
    }

    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "We activated an inactive link, returning that.", buf, 2u);
    }

    [*(a1 + 32) notifyDelegatesOfChangedLink:v24 conversation:0];
    [*(a1 + 32) sendMessagesForCreatedOrChangedLink:v24 conversation:0 messageType:11];
    if (*(a1 + 48))
    {
      v27 = sub_100004778();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Link generation complete, returning to completionHandler for: %@", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
LABEL_38:
      v28 = [*(a1 + 32) linkManager];
      v29 = *(a1 + 56);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100187A68;
      v35[3] = &unk_10061D100;
      v30 = *(a1 + 40);
      v35[4] = *(a1 + 32);
      v36 = v30;
      v37 = *(a1 + 48);
      [v28 generateLinkWithInvitedHandles:v6 originatorHandle:v18 linkLifetimeScope:v29 completionHandler:v35];
    }

    goto LABEL_50;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(v7 + 16);

    v8();
  }
}

void sub_100187A68(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100187B68;
  block[3] = &unk_10061AF70;
  v13 = v6;
  v14 = v5;
  v8 = a1[5];
  v9 = a1[4];
  v15 = v8;
  v16 = v9;
  v17 = a1[6];
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void sub_100187B68(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) groupUUID];
      v4 = *(a1 + 48);
      v5 = *(a1 + 32);
      v11 = 138412802;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Creation of converation link with groupUUID %@ invited handles %@ failed with error %@", &v11, 0x20u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    [*(a1 + 56) notifyDelegatesOfChangedLink:v6 conversation:0];
    [*(a1 + 56) sendMessagesForCreatedOrChangedLink:*(a1 + 40) conversation:0 messageType:11];
  }

  if (*(a1 + 64))
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Link generation complete, returning to completionHandler for: %@", &v11, 0xCu);
    }

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    (*(*(a1 + 64) + 16))();
  }
}

void sub_100187DE4(id *a1)
{
  if ([a1[4] _linksEnabled])
  {
    objc_initWeak(&location, a1[4]);
    v2 = [a1[4] linkManager];
    v3 = a1[5];
    v4 = [a1[6] pseudonym];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100187F74;
    v7[3] = &unk_10061D1A0;
    objc_copyWeak(&v11, &location);
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    [v2 addInvitedHandles:v3 pseudonym:v4 completionHandler:v7];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = a1[7];
    if (v5)
    {
      v6 = *(v5 + 2);

      v6();
    }
  }
}

void sub_100187F50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100187F74(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10018809C;
    v10[3] = &unk_10061D178;
    v11 = v6;
    v12 = a1[4];
    v13 = a1[5];
    v14 = v5;
    v15 = v8;
    v16 = a1[6];
    dispatch_async(v9, v10);
  }
}

uint64_t sub_10018809C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v3 = *(a1 + 48);
      v5 = *(a1 + 32);
      v10 = 138412802;
      v11 = v4;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Adding invited handles %@ to %@ failed with error %@", &v10, 0x20u);
    }
  }

  if (*(a1 + 56))
  {
    v6 = *(a1 + 64);
    v7 = [*(a1 + 48) groupUUID];
    v8 = [v6 conversationWithGroupUUID:v7];

    if (v8)
    {
      [v8 setConversationLink:*(a1 + 56) allowUpdate:1];
    }

    [*(a1 + 64) notifyDelegatesOfChangedLink:*(a1 + 56) conversation:v8];
    [*(a1 + 64) sendMessagesForCreatedOrChangedLink:*(a1 + 56) conversation:v8 messageType:26];
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

void sub_1001882D4(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) pseudonym];
    v4 = [v2 findConversationLinkMatchingPseudonym:v3];

    v5 = sub_100004778();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 138412290;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to invalidate link %@", buf, 0xCu);
      }

      v7 = [*(a1 + 32) linkManager];
      v8 = [v4 pseudonym];
      v9 = *(a1 + 56);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100188548;
      v14[3] = &unk_10061D218;
      v14[4] = *(a1 + 32);
      v15 = v4;
      v16 = *(a1 + 48);
      [v7 invalidateLinkWithPseudonym:v8 deleteReason:v9 completionHandler:v14];
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not invalidating link since it's not being tracked by our link manager.", buf, 2u);
      }

      v12 = *(a1 + 48);
      if (v12)
      {
        v13 = [NSError errorWithDomain:@"callservicesd.ConversationLinkManagerErrorType" code:3 userInfo:0];
        (*(v12 + 16))(v12, 0, v13);
      }
    }
  }

  else
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(v10 + 16);

      v11();
    }
  }
}

void sub_100188548(id *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018862C;
  block[3] = &unk_10061D1F0;
  v16 = a2;
  v7 = a1[5];
  v8 = a1[4];
  v12 = v7;
  v13 = v8;
  v9 = a1[6];
  v14 = v5;
  v15 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t sub_10018862C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) groupUUID];
    if (v2)
    {
      v3 = [*(a1 + 40) conversationWithGroupUUID:v2];
      v4 = v3;
      if (v3)
      {
        [v3 setLink:0];
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "completed invalidate the link: %@", &v8, 0xCu);
    }

    [*(a1 + 40) notifyDelegatesOfChangedLink:*(a1 + 32) conversation:v4];
    [*(a1 + 40) sendMessagesForInvalidatedLink:*(a1 + 32)];
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 48));
  }

  return result;
}

void sub_100188838(id *a1)
{
  if ([a1[4] _linksEnabled] && (objc_msgSend(a1[5], "isLocallyCreated") & 1) != 0)
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[5];
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Renewing link %@ if needed", buf, 0xCu);
    }

    objc_initWeak(buf, a1[4]);
    v4 = [a1[4] linkManager];
    v5 = [a1[5] pseudonym];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100188A54;
    v8[3] = &unk_10061D240;
    objc_copyWeak(&v11, buf);
    v9 = a1[5];
    v10 = a1[6];
    [v4 renewPseudonymIfNeeded:v5 completionHandler:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v6 = a1[6];
    if (v6)
    {
      v7 = *(v6 + 2);

      v7();
    }
  }
}

void sub_100188A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100188A54(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100188B68;
    block[3] = &unk_10061AF70;
    v11 = v6;
    v12 = a1[4];
    v13 = v5;
    v14 = v8;
    v15 = a1[5];
    dispatch_async(v9, block);
  }
}

uint64_t sub_100188B68(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100477FB0(a1, v2);
    }
  }

  else
  {
    v3 = [*(a1 + 40) copy];
    [v3 setExpirationDate:*(a1 + 48)];
    v4 = *(a1 + 56);
    v5 = [v3 groupUUID];
    v6 = [v4 conversationWithGroupUUID:v5];

    if (v6)
    {
      [v6 setConversationLink:v3 allowUpdate:1];
    }

    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) pseudonym];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "completed renewPseudonym %@", &v10, 0xCu);
    }

    [*(a1 + 56) notifyDelegatesOfChangedLink:v3 conversation:v6];
    [*(a1 + 56) sendMessagesForCreatedOrChangedLink:v3 conversation:v6 messageType:26];
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_100188E0C(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 64);
      *buf = 134217984;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Renewing link for reason %lu", buf, 0xCu);
    }

    objc_initWeak(buf, *(a1 + 32));
    v4 = [*(a1 + 32) linkManager];
    v5 = [*(a1 + 40) pseudonym];
    v6 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100189048;
    v9[3] = &unk_10061D290;
    objc_copyWeak(&v13, buf);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    [v4 renewLinkWithPseudonym:v5 expirationDate:v6 completionHandler:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

void sub_10018901C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100189048(id *a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100189158;
    v9[3] = &unk_10061D268;
    v10 = v5;
    v11 = a1[4];
    v15 = a2;
    v12 = a1[5];
    v13 = v7;
    v14 = a1[6];
    dispatch_async(v8, v9);
  }
}

uint64_t sub_100189158(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100477FB0(a1, v2);
    }
  }

  if (*(a1 + 72) == 1)
  {
    v4 = [*(a1 + 40) copy];
    [v4 setExpirationDate:*(a1 + 48)];
    v5 = *(a1 + 56);
    v6 = [v4 groupUUID];
    v7 = [v5 conversationWithGroupUUID:v6];

    if (v7)
    {
      [v7 setConversationLink:v4 allowUpdate:1];
    }

    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "renewLinkWithPseudonym succeeded: %@", &v10, 0xCu);
    }

    [*(a1 + 56) notifyDelegatesOfChangedLink:v4 conversation:v7];
    [*(a1 + 56) sendMessagesForCreatedOrChangedLink:v4 conversation:v7 messageType:26];
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 72), *(a1 + 32));
  }

  return result;
}

void sub_1001893C0(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v5 = [*(a1 + 32) linkManager];
    v2 = [*(a1 + 40) pseudonym];
    [v5 checkLinkValidityWithPseudonym:v2 completionHandler:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

void sub_100189510(uint64_t a1)
{
  v2 = [*(a1 + 32) localCallerID];
  v3 = v2[2]();

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Generating cache of inactive links for originator handle %@", &v6, 0xCu);
  }

  v5 = [*(a1 + 32) linkManager];
  [v5 generateAllInactiveLinksFor:v3];
}

void sub_1001896B8(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = [*(a1 + 32) localCallerID];
    v3 = v2[2]();

    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Asked to retrieve inactive link for handle %@", buf, 0xCu);
    }

    v5 = [*(a1 + 32) linkManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100189884;
    v11[3] = &unk_10061D100;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v12 = v3;
    v13 = v6;
    v14 = v7;
    v8 = v3;
    [v5 getInactiveLinkForHandle:v8 completionHandler:v11];
  }

  else
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);

      v10();
    }
  }
}

void sub_100189884(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch inactive link, generating more for handle %@", &v10, 0xCu);
    }

    v9 = [*(a1 + 40) linkManager];
    [v9 generateAllInactiveLinksFor:*(a1 + 32)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100189A60(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked to activate conversation link %@", &v11, 0xCu);
    }

    v4 = [*(a1 + 32) linkManager];
    v5 = [*(a1 + 40) pseudonym];
    [v4 activateLinkForPseudonym:v5 completionHandler:*(a1 + 48)];

    v6 = [*(a1 + 32) localCallerID];
    v7 = v6[2]();

    v8 = [*(a1 + 32) linkManager];
    [v8 generateInactiveLinkFor:v7 afterActivation:1];

    [*(a1 + 32) notifyDelegatesOfChangedLink:*(a1 + 40) conversation:0];
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(v9 + 16);

      v10();
    }
  }
}

void sub_100189D04(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      *buf = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked to set name %@ for link %@", buf, 0x16u);
    }

    objc_initWeak(buf, *(a1 + 32));
    v5 = [*(a1 + 32) linkManager];
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100189F28;
    v10[3] = &unk_10061D2E0;
    objc_copyWeak(&v13, buf);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    [v5 setLinkName:v7 forLink:v6 completionHandler:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

void sub_100189EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100189F28(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018A03C;
    block[3] = &unk_10061AF70;
    v11 = v6;
    v12 = a1[4];
    v13 = v5;
    v14 = v8;
    v15 = a1[5];
    dispatch_async(v9, block);
  }
}

uint64_t sub_10018A03C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[WARN] Link name setting provided error %@", &v7, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Link name successfully set for updated link %@", &v7, 0xCu);
    }

    [*(a1 + 56) notifyDelegatesOfChangedLink:*(a1 + 48) conversation:0];
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_10018A224(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked to update participants: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) activeConversation];
  v5 = [v4 activitySessionManager];
  [v5 updateExternalParticipants:*(a1 + 32)];
}

void sub_10018A398(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TU client asked to schedule a syncing of activated conversation links {initial: %@}", &v5, 0xCu);
    }

    v4 = [*(a1 + 32) linkManager];
    [v4 scheduleConversationLinkCheckInInitial:*(a1 + 40)];
  }
}

void sub_10018A534(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending recovery messages to local user's other devices in an attempt to recover links for pseudonyms %@", &v5, 0xCu);
    }

    v4 = [*(a1 + 32) linkManager];
    [v4 recoverLinksForPseudonyms:*(a1 + 40)];
  }
}

void sub_10018A6C0(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TU client asked for link sync state {includeLinks: %@}", &v5, 0xCu);
    }

    v4 = [*(a1 + 32) linkManager];
    [v4 linkSyncStateWithIncludeLinks:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void sub_10018A884(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      v12 = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "For conversationUUID: %@, user has approved let me in for pending member: %@", &v12, 0x16u);
    }

    v5 = [*(a1 + 32) mutableConversationsByUUID];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

    if (v6)
    {
      [*(a1 + 48) setJoinedFromLetMeIn:1];
      v7 = [*(a1 + 32) pendingMembershipTracker];
      [v7 handleLocalApprovalOfMember:*(a1 + 48) forConversation:v6];
    }

    else
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v8 = *(a1 + 48);
        v10 = [*(a1 + 32) mutableConversationsByUUID];
        v11 = [v10 allKeys];
        v12 = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to approve let me in request for pending member %@. Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v12, 0x20u);
      }
    }
  }
}

void sub_10018AB10(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      v12 = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "For conversationUUID: %@, user has rejected let me in for pending member: %@", &v12, 0x16u);
    }

    v5 = [*(a1 + 32) mutableConversationsByUUID];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

    if (v6)
    {
      v7 = [*(a1 + 32) pendingMembershipTracker];
      [v7 handleLocalRejectionOfMember:*(a1 + 48) forConversation:v6];
    }

    else
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v8 = *(a1 + 48);
        v10 = [*(a1 + 32) mutableConversationsByUUID];
        v11 = [v10 allKeys];
        v12 = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to reject let me in request for pending member %@. Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v12, 0x20u);
      }
    }
  }
}

void sub_10018AD74(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v28 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "For conversationUUID: %@, user has requested to ignore all LMI requests.", buf, 0xCu);
    }

    v4 = [*(a1 + 32) mutableConversationsByUUID];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

    if (v5)
    {
      [v5 setIgnoreLMIRequests:*(a1 + 48)];
      v17 = v5;
      v6 = [v5 tuConversation];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = [*(a1 + 32) delegateToQueue];
      v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v24;
        do
        {
          v10 = 0;
          do
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v23 + 1) + 8 * v10);
            v12 = [*(a1 + 32) delegateToQueue];
            v13 = [v12 objectForKey:v11];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10018B048;
            block[3] = &unk_100619E58;
            v20 = v6;
            v21 = v11;
            v22 = *(a1 + 32);
            dispatch_async(v13, block);

            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v8);
      }

      v5 = v17;
    }

    else
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v15 = [*(a1 + 32) mutableConversationsByUUID];
        v16 = [v15 allKeys];
        *buf = 138412546;
        v28 = v14;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to ignore let me in requests. Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", buf, 0x16u);
      }
    }
  }
}

void sub_10018B048(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = objc_opt_respondsToSelector();
    v4 = *(a1 + 40);
    if (v3)
    {
      v5 = [*(a1 + 32) provider];
      if ([v4 shouldHandleUpdateForProvider:v5])
      {
      }

      else
      {
        v7 = *(a1 + 40);
        v8 = objc_opt_respondsToSelector();

        if (v8)
        {
          return;
        }
      }
    }

    else
    {
      v6 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        return;
      }
    }

    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) provider];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
    }

    [*(a1 + 40) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 32)];
  }
}

void sub_10018B254(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    *buf = 134218242;
    v30 = v3;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating screen sharing type to %lu for conversationUUID: %@.", buf, 0x16u);
  }

  v5 = [*(a1 + 40) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 addScreenSharingType:*(a1 + 48)];
    v18 = v6;
    v7 = [v6 tuConversation];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [*(a1 + 40) delegateToQueue];
    v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          v13 = [*(a1 + 40) delegateToQueue];
          v14 = [v13 objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018B530;
          block[3] = &unk_100619E58;
          v21 = v7;
          v22 = v12;
          v23 = *(a1 + 40);
          dispatch_async(v14, block);

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    v6 = v18;
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) mutableConversationsByUUID];
      v17 = [v16 allKeys];
      *buf = 138412546;
      v30 = v15;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to ignore let me in requests. Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_10018B530(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = objc_opt_respondsToSelector();
    v4 = *(a1 + 40);
    if (v3)
    {
      v5 = [*(a1 + 32) provider];
      if ([v4 shouldHandleUpdateForProvider:v5])
      {
      }

      else
      {
        v7 = *(a1 + 40);
        v8 = objc_opt_respondsToSelector();

        if (v8)
        {
          return;
        }
      }
    }

    else
    {
      v6 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        return;
      }
    }

    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) provider];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
    }

    [*(a1 + 40) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 32)];
  }
}

void sub_10018B734(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationNoticeManger];
  v3 = [v2 fetchUpcomingNoticeFromQueue];

  (*(*(a1 + 40) + 16))();
}

void sub_10018B880(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationNoticeManger];
  [v2 activateConversationNoticeWithActionURL:*(a1 + 40) bundleIdentifier:*(a1 + 48)];
}

void sub_10018B988(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationNoticeManger];
  [v2 removeConversationNoticeWithUUID:*(a1 + 40)];
}

void sub_10018BAB4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ messagesGroupName: %@", &v11, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 setMessagesGroupName:*(a1 + 40)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 48) mutableConversationsByUUID];
      v10 = [v9 allKeys];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v11, 0x16u);
    }
  }
}

void sub_10018BCC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018BD7C;
  v7[3] = &unk_100619D88;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_10018BD7C(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v23;
    *&v4 = 134218242;
    v19 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 linkLifetimeScope])
        {
          v9 = [*(a1 + 40) mutableConversationsByUUID];
          v10 = [v8 groupUUID];
          v11 = [v9 objectForKeyedSubscript:v10];

          if (!v11)
          {
            goto LABEL_10;
          }

          v12 = [v11 activeRemoteParticipants];
          if ([v12 count])
          {
LABEL_13:
          }

          else
          {
            v13 = [v11 state];

            if (!v13)
            {
LABEL_10:
              v14 = [v8 pseudonym];
              v15 = sub_100004778();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = [v8 linkLifetimeScope];
                *buf = v19;
                v27 = v16;
                v28 = 2112;
                v29 = v8;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%ld conversationLink should be removed, not needed anymore %@", buf, 0x16u);
              }

              v17 = [*(a1 + 40) linkManager];
              v18 = [v8 pseudonym];
              v20[0] = _NSConcreteStackBlock;
              v20[1] = 3221225472;
              v20[2] = sub_10018C014;
              v20[3] = &unk_10061A5D8;
              v21 = v14;
              v12 = v14;
              [v17 invalidateLinkWithPseudonym:v18 deleteReason:6 completionHandler:v20];

              goto LABEL_13;
            }
          }

          continue;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);
  }
}

void sub_10018C014(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "conversationLink was removed since it was not needed anymore {pseudonym: %@, success: %@, error: %@}", &v9, 0x20u);
  }
}

void sub_10018C1B4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "removeConversationWithUUID: %@", &v10, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) conversationInvalidated:v5];
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) mutableConversationsByUUID];
      v9 = [v8 allKeys];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v10, 0x16u);
    }
  }
}

void sub_10018C400(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [*(a1 + 40) UUID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    [v4 addAliasesToConversationContainer:*(a1 + 40) forBundleIdentifier:*(a1 + 48)];
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) UUID];
      v7 = [*(a1 + 32) mutableConversationsByUUID];
      v8 = [v7 allKeys];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for container with UUID %@. All conversation UUIDs: %@", &v9, 0x16u);
    }
  }
}

void sub_10018C624(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "includeMetricsReport onConversationWithUUID: %@", &v10, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    v6 = [*(a1 + 40) reportingController];
    v14 = *(a1 + 48);
    v7 = [NSArray arrayWithObjects:&v14 count:1];
    v8 = [v5 tuConversation];
    [v6 groupActivitiesReportsReceived:v7 forConversation:v8];
LABEL_7:

    goto LABEL_8;
  }

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v7 = [*(a1 + 40) mutableConversationsByUUID];
    v8 = [v7 allKeys];
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping metrics report, could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v10, 0x16u);
    goto LABEL_7;
  }

LABEL_8:
}

void sub_10018C8B8(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 removeNearbyMemberWithHandleIfNecessary:*(a1 + 48)];
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) mutableConversationsByUUID];
      v7 = [v6 allKeys];
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v8, 0x16u);
    }
  }
}

void sub_10018CAAC(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    goto LABEL_20;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 tuActivitySessions];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v25 + 1) + 8 * v8);
      if ([v9 state] == 1)
      {
        v10 = [v9 activity];
        v11 = [v10 isScreenSharingActivity];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }

    if (!*(a1 + 48))
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_11:

    if (!*(a1 + 48))
    {
      v12 = [*(a1 + 32) featureFlags];
      v13 = [v12 avLessSharePlayEnabled];

      if ((v13 & 1) == 0)
      {
LABEL_13:
        v14 = sub_100004778();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100478020();
        }

        v15 = +[TUCallCenter sharedInstance];
        v16 = [v15 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10018CDB8;
        block[3] = &unk_100619D38;
        v24 = v3;
        dispatch_async(v16, block);

        goto LABEL_20;
      }
    }
  }

  v17 = [*(a1 + 32) mutableConversationsRequestingUpgradeWithPreferences];
  v18 = [v17 objectForKey:*(a1 + 40)];

  if (!v18)
  {
    v19 = [*(a1 + 32) mutableConversationsRequestingUpgradeWithPreferences];
    v20 = +[TUConversationInvitationPreference incomingCallInvitationPreferences];
    [v19 setObject:v20 forKey:*(a1 + 40)];

    v21 = +[TUConversationInvitationPreference incomingCallInvitationPreferences];
    [v3 setInvitationPreferences:v21];
  }

  v22 = [v3 avMode];
  [v3 setLocalParticipantAudioVideoMode:*(a1 + 48) presentationMode:*(a1 + 56)];
  [v3 setVideoEnabled:*(a1 + 48) == 2];
  [*(a1 + 32) notifyDelegatesOfAVModeChanged:v22 toAVMode:*(a1 + 48) forConversation:v3];
LABEL_20:
}

void sub_10018CDB8(uint64_t a1)
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [*(a1 + 32) groupUUID];
  v4 = [v2 callsWithGroupUUID:v3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = sub_100004778();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10047805C(v17, v10);
        }

        v12 = +[TUCallCenter sharedInstance];
        [v12 disconnectCall:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }
}

void sub_10018D00C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = sub_100004778();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found conversation that we want to register the messagesGroupUUID on", buf, 2u);
    }

    [v3 registerMessagesGroupAssociation];
    v6 = [CSDMessagingConversationMessage alloc];
    v7 = [v3 groupUUID];
    v5 = [(CSDMessagingConversationMessage *)v6 initWithType:34 groupUUID:v7 link:0];

    v16[0] = IDSSendMessageOptionPublicMessageIntentKey;
    v8 = [NSNumber numberWithInt:34];
    v17[0] = v8;
    v16[1] = IDSSendMessageOptionQueueOneIdentifierKey;
    v9 = [v5 conversationGroupUUIDString];
    v10 = [NSNumber numberWithInt:34];
    v11 = [NSString stringWithFormat:@"%@:%@", v9, v10];
    v17[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

    v13 = *(a1 + 32);
    v14 = [v5 data];
    [v13 broadcastData:v14 onConversation:v3 additionalOptions:v12];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1004780B8((a1 + 40));
  }
}

void sub_10018D478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10018D4A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained cleanupExpiredPendingConversations];
    WeakRetained = v2;
  }
}

void sub_10018DDAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_10018E160(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) connectionDidStartForConversation:*(a1 + 40)];
}

void sub_10018E4CC(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "conversationLink finished removing after call was invalidated {success: %@, error: %@}", &v7, 0x16u);
  }
}

void sub_10018EEF4(id *a1)
{
  v2 = [a1[4] queue];
  dispatch_assert_queue_V2(v2);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [a1[4] delegateToQueue];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [a1[5] tuConversation];
          v9 = [a1[4] delegateToQueue];
          v10 = [v9 objectForKey:v7];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018F104;
          block[3] = &unk_10061A428;
          block[4] = v7;
          v14 = v8;
          v15 = a1[4];
          v16 = a1[6];
          v17 = a1[7];
          v11 = v8;
          dispatch_async(v10, block);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }
}

void sub_10018F104(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) reportedHandedOffConversation:*(a1 + 40) replacedByIdentifier:objc_msgSend(*(a1 + 56) localizedHandoffRecipientDeviceCategory:{"identifier"), *(a1 + 64)}];
}

void sub_10018F264(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) reportedRemoteDoesHandedOffForConversation:*(a1 + 40)];
}

void sub_10018F3AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) addedActiveParticipant:*(a1 + 56)];
}

void sub_100190368(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) removedActiveParticipant:*(a1 + 56)];
}

void sub_1001904B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) removedActiveParticipant:*(a1 + 56) withReason:*(a1 + 64)];
}

void sub_10019084C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_100190BC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationScreenSharingChanged:*(a1 + 40) forParticipant:*(a1 + 56)];
}

void sub_100191004(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) mediaPrioritiesDidChangeForParticipant:*(a1 + 56)];
}

void sub_1001913A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) participant:*(a1 + 56) didReact:*(a1 + 64)];
}

void sub_100191728(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) participantDidStopReacting:*(a1 + 56)];
}

void sub_100191D88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) failedWithContext:*(a1 + 56)];
}

void sub_100192110(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) receivedActivitySessionEvent:*(a1 + 56)];
}

void sub_1001925C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) didChangeStateForActivitySession:*(a1 + 56)];
}

void sub_100192980(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) didChangeSceneAssociationForActivitySession:*(a1 + 56)];
}

void sub_100192D6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) appLaunchState:*(a1 + 64) forActivitySession:*(a1 + 56)];
}

void sub_10019346C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) activeParticipant:*(a1 + 56) addedHighlightToConversation:*(a1 + 40) highlightIdentifier:*(a1 + 64) oldHighlightIdentifier:*(a1 + 72) isFirstAdd:*(a1 + 80)];
}

void sub_1001937F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) activeParticipant:*(a1 + 56) removedHighlightFrom:*(a1 + 40) highlightIdentifier:*(a1 + 64)];
}

void sub_100193A88(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = [v3 UUID];
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Started tracking highlight identifier %@ with URL %@ for conversation UUID: %@", &v13, 0x20u);
    }

    v8 = [*(a1 + 32) collaborationStateManager];
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = [v3 UUID];
    [v8 startTrackingCollaborationIdentifier:v9 collaborationURL:v10 cloudKitAppBundleIDs:v11 isLocallyAdded:1 toConversationUUID:v12 completionHandler:*(a1 + 72)];
  }
}

void sub_100193D10(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32) && *(a1 + 40))
  {
    v3 = [*(a1 + 48) mutableConversationsByUUID];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 56)];

    v5 = sub_100004778();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v9 = [v4 UUID];
        v16 = 138412802;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding highlight identifier %@ with URL %@ to conversation UUID: %@", &v16, 0x20u);
      }

      v10 = [v4 highlightIdentifiers];
      v6 = [v10 anyObject];

      if (([v6 isEqualToString:*v1]& 1) != 0)
      {
        [*(a1 + 48) sendHighlightMessageForConversation:v4 highlightIdentifier:*(a1 + 32) type:30];
      }

      else
      {
        [v4 addHighlightIdentifier:*(a1 + 32)];
        [*(a1 + 48) sendHighlightMessageForConversation:v4 highlightIdentifier:*(a1 + 32) type:30];
        [*(a1 + 48) conversationChanged:v4];
        v11 = [*(a1 + 48) collaborationStateManager];
        [v11 startTrackingCollaborationIdentifier:*(a1 + 32) collaborationURL:*(a1 + 40) cloudKitAppBundleIDs:*(a1 + 64) isLocallyAdded:1 toConversationUUID:*(a1 + 56) completionHandler:0];

        v12 = *(a1 + 48);
        v13 = [v4 tuConversation];
        v14 = *(a1 + 32);
        v15 = [v4 localParticipant];
        [v12 notifyDelegateOfHighlightAddedForConversation:v13 highlightIdentifier:v14 oldHighlightIdentifier:v6 byParticipant:v15 isFirstAdd:1];
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100478198(v1);
    }
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100478204();
    }
  }
}

void sub_100194044(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) mutableConversationsByUUID];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *v1;
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing Highlight identifier: %@ from conversation: %@", &v11, 0x16u);
    }

    if (v4)
    {
      [v4 removeHighlightIdentifier:*(a1 + 32)];
      [*(a1 + 40) sendHighlightMessageForConversation:v4 highlightIdentifier:*(a1 + 32) type:31];
      [*(a1 + 40) conversationChanged:v4];
      v7 = *(a1 + 40);
      v8 = [v4 tuConversation];
      v9 = *(a1 + 32);
      v10 = [v4 localParticipant];
      [v7 notifyDelegateOfHighlightRemovedFromConversation:v8 highlightIdentifier:v9 byParticipant:v10];
    }

    else
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100478198(v1);
      }
    }
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100478240();
    }
  }
}

void sub_1001942DC(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Marking Highlight opened for identifier: %@ on conversation: %@", &v7, 0x16u);
  }

  v6 = [*(a1 + 32) collaborationStateManager];
  [v6 collaborationOpened:*(a1 + 48)];
}

void sub_1001946A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 56) collaborationStateChanged:*(a1 + 72) highlightIdentifier:*(a1 + 64)];
}

void sub_100194B58(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 gelatoEnabled];

  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = [*(a1 + 32) mutableConversationsByUUID];
      v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];

      v6 = sub_100004778();
      v7 = v6;
      v38 = v5;
      if (!v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100478328((a1 + 40));
        }

        goto LABEL_36;
      }

      v36 = (a1 + 48);
      v37 = (a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = @"NO";
        if (*(a1 + 56))
        {
          v10 = @"YES";
        }

        *buf = 136315906;
        v51 = "[CSDConversationManager addCollaborationDictionary:forConversationWithUUID:fromMe:]_block_invoke";
        v52 = 2112;
        v53 = v8;
        v54 = 2112;
        v55 = v9;
        v56 = 2112;
        v57 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Asked to add collaboration dictionary %@ to conversation with UUID %@ fromMe %@", buf, 0x2Au);
      }

      v7 = [v5 tuConversation];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = [*(a1 + 32) delegateToQueue];
      v11 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v46;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v46 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v45 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [*(a1 + 32) delegateToQueue];
              v17 = v16 = v7;
              v18 = [v17 objectForKey:v15];

              v7 = v16;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_100195080;
              block[3] = &unk_10061A428;
              block[4] = v15;
              v19 = v38;
              v20 = *(a1 + 32);
              v21 = *(a1 + 40);
              v41 = v19;
              v42 = v20;
              v43 = v21;
              v44 = v16;
              dispatch_async(v18, block);
            }
          }

          v12 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v12);
      }

      v22 = TUCollaborationDictionaryIdentifierTypeKey;
      v23 = [*v37 objectForKeyedSubscript:TUCollaborationDictionaryIdentifierTypeKey];
      v24 = TUCollaborationDictionaryURLKey;
      v25 = [*v37 objectForKeyedSubscript:TUCollaborationDictionaryURLKey];
      v26 = [*v37 objectForKeyedSubscript:TUCollaborationDictionaryBundleIDKey];
      if (v23)
      {
        v27 = v25 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        v28 = sub_100004778();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v34 = *v37;
          v35 = *v36;
          *buf = 138413058;
          v51 = v34;
          v52 = 2112;
          v53 = v35;
          v54 = 2112;
          v55 = v22;
          v56 = 2112;
          v57 = v24;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Cannot add collaboration dictionary %@ to conversation with UUID %@ because it is missing required keys %@ and/or %@", buf, 0x2Au);
        }
      }

      else
      {
        if (*(a1 + 56) == 1)
        {
          [*(a1 + 32) addHighlightIdentifier:v23 collaborationURL:v25 cloudKitAppBundleIDs:v26 forConversationUUID:*(a1 + 48)];
          goto LABEL_35;
        }

        v29 = v7;
        v30 = [v38 highlightIdentifiers];
        v31 = [v30 anyObject];
        v32 = [v31 isEqualToString:v23];

        if (v32)
        {
          v33 = [*(a1 + 32) collaborationStateManager];
          [v33 startTrackingCollaborationIdentifier:v23 collaborationURL:v25 cloudKitAppBundleIDs:v26 isLocallyAdded:0 toConversationUUID:*(a1 + 48) completionHandler:0];

          v7 = v29;
          goto LABEL_35;
        }

        v28 = sub_100004778();
        v7 = v29;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1004782B8();
        }
      }

LABEL_35:
LABEL_36:

      goto LABEL_37;
    }

    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_100478394(a1);
    }
  }

  else
  {
    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10047827C();
    }
  }

LABEL_37:
}

void sub_100195080(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) addedCollaborationDictionary:*(a1 + 56) forConversation:*(a1 + 64)];
}

void sub_1001954D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) changedBytesOfDataUsed:*(a1 + 56)];
}

id sub_100196560(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100196594(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100196648;
  v7[3] = &unk_10061D3A0;
  v7[4] = v2;
  v6 = *(a1 + 64);
  v5 = v6;
  v8 = v6;
  [v1 conversationManager:v2 requestedEndpointWithIdentifier:v3 activitySession:v4 completion:v7];
}

void sub_100196648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019671C;
  block[3] = &unk_10061ABF0;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_10019671C(void *a1)
{
  if (a1[4])
  {
    v2 = *(*(a1[6] + 8) + 40);
    if (v2)
    {
      (*(v2 + 16))();
      v3 = *(a1[6] + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = 0;
    }
  }

  v5 = a1[5];

  dispatch_group_leave(v5);
}

uint64_t sub_100196788(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100196BE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) remoteMembersChanged:*(a1 + 56) forConversation:*(a1 + 40)];
}

void sub_10019938C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100199454;
  block[3] = &unk_100619E58;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_10019E358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019E388(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [*(a1 + 32) kickedMembers];
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v17 + 1) + 8 * v7) handle];
        v9 = [v8 isEquivalentToHandle:*(a1 + 40)];

        if (v9)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v17 objects:v27 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = sub_100004778();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v16 = *(a1 + 40);
      v15 = [*(a1 + 32) UUID];
      *buf = 138412546;
      v22 = v16;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "It would have been time to add LMI approved handle %@ on conversation UUID %@ to link's invited members, but they were kicked.", buf, 0x16u);
    }

    else
    {
LABEL_10:

      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v12 = [*(a1 + 32) link];
        v13 = [*(a1 + 32) UUID];
        *buf = 138412802;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding LMI approved handle %@ to invited member handles for link %@ after their kick timeout elapsed for conversation UUID %@", buf, 0x20u);
      }

      v14 = [NSSet setWithObject:*(a1 + 40)];
      v15 = [*(a1 + 32) link];
      [WeakRetained addInvitedMemberHandles:v14 toConversationLink:v15 completionHandler:0];
    }

LABEL_16:
  }
}

id sub_10019E900(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "linkManager:updatedLinksFromSync: -- updating delegates {linkDescriptors.count: %d}", v5, 8u);
  }

  return [*(a1 + 40) notifyDelegatesOfChangedLinkDescriptors:*(a1 + 32)];
}

id sub_10019EA68(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "linkManager:removedLinkDescriptorsFromIDSSignal: -- updating delegates {linkDescriptors.count: %d}", v5, 8u);
  }

  return [*(a1 + 40) handleRemovedLinkDescriptors:*(a1 + 32)];
}

id sub_10019EBD0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "linkManager:updatedLinkDescriptorsFromIDSSignal: -- updating delegates {linkDescriptors.count: %d} %@", v6, 0x12u);
  }

  return [*(a1 + 40) notifyDelegatesOfChangedLinkDescriptors:*(a1 + 32)];
}

id sub_10019ED48(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "linkManager:removedLinkDescriptorsFromValidityCheck: -- updating delegates {linkDescriptors.count: %d}", v5, 8u);
  }

  return [*(a1 + 40) handleRemovedLinkDescriptors:*(a1 + 32)];
}

void sub_10019F10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019F130(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained mutableConversationsByUUID];
  v3 = [*(a1 + 32) UUID];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [NSSet setWithObject:*(a1 + 40)];
  v6 = +[NSSet set];
  v7 = +[TUConversationInvitationPreference letMeInResponseInvitationPreferences];
  [v4 addRemoteMembers:v5 otherInvitedHandles:v6 invitationPreferences:v7 addingFromLetMeIn:1 triggeredLocally:1];
}

void sub_10019F5A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Membership reported rejection {member: %@, error: %@}", &v6, 0x16u);
  }
}

void sub_1001A0088(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v40 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID with Advertisement: %@ ", buf, 0xCu);
  }

  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v4 = [*(a1 + 40) delegateToQueue];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      v8 = 0;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        v10 = [*(a1 + 40) delegateToQueue];
        v11 = [v10 objectForKey:v9];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001A03E4;
        block[3] = &unk_100619E58;
        block[4] = v9;
        v23 = *(a1 + 32);
        v12 = v23.i64[0];
        v32 = vextq_s8(v23, v23, 8uLL);
        dispatch_async(v11, block);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  v13 = [*(a1 + 40) observerStorage];
  v14 = [v13 observerToQueue];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          v21 = [v15 objectForKey:v20];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1001A043C;
          v25[3] = &unk_100619E58;
          v25[4] = v20;
          v24 = *(a1 + 32);
          v22 = v24.i64[0];
          v26 = vextq_s8(v24, v24, 8uLL);
          dispatch_async(v21, v25);
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v17);
  }
}

uint64_t sub_1001A03E4(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 conversationManager:v5 conversationAdvertisementChanged:v6];
  }

  return result;
}

void sub_1001A05B4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v40 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Letting delegates know Advertisement was lost: %@ ", buf, 0xCu);
  }

  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v4 = [*(a1 + 40) delegateToQueue];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      v8 = 0;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        v10 = [*(a1 + 40) delegateToQueue];
        v11 = [v10 objectForKey:v9];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001A0910;
        block[3] = &unk_100619E58;
        block[4] = v9;
        v23 = *(a1 + 32);
        v12 = v23.i64[0];
        v32 = vextq_s8(v23, v23, 8uLL);
        dispatch_async(v11, block);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  v13 = [*(a1 + 40) observerStorage];
  v14 = [v13 observerToQueue];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          v21 = [v15 objectForKey:v20];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1001A0968;
          v25[3] = &unk_100619E58;
          v25[4] = v20;
          v24 = *(a1 + 32);
          v22 = v24.i64[0];
          v26 = vextq_s8(v24, v24, 8uLL);
          dispatch_async(v21, v25);
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v17);
  }
}

uint64_t sub_1001A0910(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 conversationManager:v5 conversationAdvertisementChanged:v6];
  }

  return result;
}

void sub_1001A0B0C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = @"NO";
    if (*(a1 + 48))
    {
      v4 = @"YES";
    }

    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notifying delegates of received remote attributes %@ (isLocallySharing: %@)", &v5, 0x16u);
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 40) notifyDelegatesOfRemoteScreenShareAttributes:*(a1 + 32) isLocallySharing:0];
  }
}

void sub_1001A0CAC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asking screen sharing activity manager to resume observing after invalidation", buf, 2u);
  }

  if (*(a1 + 48))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [*(a1 + 32) mutableConversationsByUUID];
    v4 = [v3 allValues];

    v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v17;
      *&v6 = 138412290;
      v15 = v6;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if ([v10 state] == 3 && objc_msgSend(v10, "isScreenEnabled"))
          {
            v11 = sub_100004778();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v10 UUID];
              *buf = v15;
              v21 = v12;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Disabling screensharing forConversationWithUUID:%@ since screen sharing session got invalidated", buf, 0xCu);
            }

            v13 = *(a1 + 32);
            v14 = [v10 UUID];
            [v13 setScreenEnabled:0 forConversationWithUUID:v14];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [*(a1 + 32) notifyDelegatesOfRemoteScreenShareEndedWithReason:*(a1 + 40)];
  }
}

void sub_1001A0F8C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v11 = 138412546;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ remoteControlStatus: %lu", &v11, 0x16u);
  }

  v5 = [*(a1 + 40) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 handleRemoteControlStatusChanged:*(a1 + 48)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) mutableConversationsByUUID];
      v10 = [v9 allKeys];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v11, 0x16u);
    }
  }
}

void sub_1001A1AFC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v37 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received resource at url %@", buf, 0xCu);
  }

  v4 = [NSUUID alloc];
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"resourceTransferConversationIDKey"];
  v6 = [v4 initWithUUIDString:v5];

  if (v6)
  {
    v7 = [*(a1 + 48) conversationWithGroupUUID:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 activeRemoteParticipants];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1001A1EA0;
      v33[3] = &unk_10061A628;
      v34 = *(a1 + 56);
      v10 = [v9 objectsPassingTest:v33];
      v11 = [v10 allObjects];
      v12 = [v11 firstObject];

      if (v12)
      {
        v13 = [NSUUID alloc];
        v14 = [*(a1 + 40) objectForKey:@"resourceTransferActivitySessionIDKey"];
        v15 = [v13 initWithUUIDString:v14];

        if (v15)
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v16 = [v8 activitySessions];
          v17 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
          if (v17)
          {
            v18 = v17;
            v27 = v12;
            v28 = v6;
            v19 = *v30;
            while (2)
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v30 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v29 + 1) + 8 * i);
                v22 = [v21 identifier];
                v23 = [v22 isEqual:v15];

                if (v23)
                {
                  v25 = *(a1 + 32);
                  v26 = [*(a1 + 40) objectForKey:@"resourceTransferClientMetadataKey"];
                  v12 = v27;
                  [v21 receivedResourceAtURL:v25 withMetadata:v26 fromParticipantIdentifier:{objc_msgSend(v27, "identifier")}];

                  v6 = v28;
                  goto LABEL_25;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }

            v12 = v27;
            v6 = v28;
          }
        }

        else
        {
          v16 = sub_100004778();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100478AC8();
          }
        }

LABEL_25:
      }

      else
      {
        v15 = sub_100004778();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100478B04();
        }
      }

      v24 = v34;
    }

    else
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100478B40();
      }
    }
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100478BB0();
    }
  }
}

id sub_1001A1EA0(uint64_t a1, void *a2)
{
  v3 = [a2 activeIDSDestination];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1001A2018(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceTransferCallbacks];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v3[2](v3, 0);
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100478BEC();
    }
  }

  v5 = [*(a1 + 32) resourceTransferCallbacks];
  [v5 removeObjectForKey:*(a1 + 40)];
}

void sub_1001A239C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 setIsHeld:*(a1 + 48)];
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) mutableConversationsByUUID];
      v7 = [v6 allKeys];
      v8 = 136315650;
      v9 = "[CSDConversationManager setIsHeld:forConversationUUID:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] %s, Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v8, 0x20u);
    }
  }
}

void sub_1001A25A4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 setProvider:*(a1 + 48)];
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) mutableConversationsByUUID];
      v7 = [v6 allKeys];
      v8 = 136315650;
      v9 = "[CSDConversationManager setProvider:forConversationUUID:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] %s, Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v8, 0x20u);
    }
  }
}

void sub_1001A2EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A2EC0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100478C28(v2, v3);
    }
  }
}

void sub_1001A2F18(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained delegate];
    if (a2 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v4 continuityCameraDidConnect];
    }

    WeakRetained = v5;
  }
}

uint64_t sub_1001A34C0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 32;
LABEL_30:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          v15 = 8;
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(CSDMessagingHandle);
          objc_storeStrong((a1 + 16), v16);
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !sub_1000D1450(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
          goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

BOOL sub_1001A4EF8(id a1, TUHandle *a2)
{
  v2 = [(TUHandle *)a2 value];
  v3 = [v2 destinationIdIsPseudonym];

  return v3 ^ 1;
}

id sub_1001A50D8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 UIBackgroundModes];
  v5 = [v4 containsObject:v3];

  return v5;
}

uint64_t sub_1001A5954(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v65[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v65[0] & 0x7F) << v5;
        if ((v65[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v65[0] & 0x7F) << v31;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_107;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v33;
          }

LABEL_107:
          v61 = 32;
          goto LABEL_108;
        }

        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v65[0] & 0x7F) << v16;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_101;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_101:
          v61 = 16;
LABEL_108:
          *(a1 + v61) = v22;
          goto LABEL_118;
        }

LABEL_96:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_118;
      }

      if (v13 == 3)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 44) |= 0x40u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v65[0] & 0x7F) << v37;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            LOBYTE(v30) = 0;
            goto LABEL_110;
          }
        }

        v30 = (v39 != 0) & ~[a2 hasError];
LABEL_110:
        v62 = 40;
        goto LABEL_117;
      }

      if (v13 != 4)
      {
        goto LABEL_96;
      }

      v23 = objc_alloc_init(CSDMessagingAVConferenceInviteData);
      objc_storeStrong((a1 + 8), v23);
      v65[0] = 0;
      v65[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100100720(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_118:
      v63 = [a2 position];
      if (v63 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v65[0] & 0x7F) << v49;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            LOBYTE(v30) = 0;
            goto LABEL_114;
          }
        }

        v30 = (v51 != 0) & ~[a2 hasError];
LABEL_114:
        v62 = 36;
        goto LABEL_117;
      }

      if (v13 == 6)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v65[0] & 0x7F) << v24;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            LOBYTE(v30) = 0;
            goto LABEL_103;
          }
        }

        v30 = (v26 != 0) & ~[a2 hasError];
LABEL_103:
        v62 = 38;
        goto LABEL_117;
      }
    }

    else
    {
      switch(v13)
      {
        case 7:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 44) |= 0x20u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v65[0] & 0x7F) << v43;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_112;
            }
          }

          v30 = (v45 != 0) & ~[a2 hasError];
LABEL_112:
          v62 = 39;
          goto LABEL_117;
        case 8:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 44) |= 8u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v65[0] & 0x7F) << v55;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_116;
            }
          }

          v30 = (v57 != 0) & ~[a2 hasError];
LABEL_116:
          v62 = 37;
LABEL_117:
          *(a1 + v62) = v30;
          goto LABEL_118;
        case 9:
          v14 = PBReaderReadString();
          v15 = *(a1 + 24);
          *(a1 + 24) = v14;

          goto LABEL_118;
      }
    }

    goto LABEL_96;
  }

  return [a2 hasError] ^ 1;
}

BOOL sub_1001A6E70(id a1, TURoute *a2)
{
  v2 = a2;
  if ([(TURoute *)v2 isPreferred])
  {
    v3 = [(TURoute *)v2 isPreferredAndActive];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001A722C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1001A7404(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001A757C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A7688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A76A0(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

id sub_1001A79EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bluetoothAddress];
  if (v4)
  {
    v5 = [*(a1 + 32) uniqueIdentifier];
    v6 = [v3 bluetoothAddress];
    v7 = [v5 hasPrefix:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1001A7B98(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithName:@"com.apple.private.alloy.facetime.audio"];
  v2 = qword_1006ACE38;
  qword_1006ACE38 = v1;
}

id sub_1001A7DE0(CSDMessagingConversationActivity *self, SEL a2)
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationActivity;
  v3 = [(CSDMessagingConversationActivity *)&v7 description];
  v4 = [(CSDMessagingConversationActivity *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

uint64_t sub_1001A812C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v35) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v35 & 0x7F) << v5;
      if ((v35 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_52;
      case 2u:
        v13 = PBReaderReadData();
        v14 = 48;
        goto LABEL_52;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_52;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 32;
        goto LABEL_52;
      case 5u:
        v13 = PBReaderReadData();
        v14 = 88;
        goto LABEL_52;
      case 7u:
        v22 = objc_alloc_init(CSDMessagingConversationActivityContext);
        objc_storeStrong((a1 + 24), v22);
        v35 = 0;
        v36 = 0;
        if (!PBReaderPlaceMark() || !sub_1000DC2A0(v22, a2))
        {
          goto LABEL_62;
        }

        goto LABEL_50;
      case 8u:
        v22 = objc_alloc_init(CSDMessagingHandle);
        v23 = 96;
        goto LABEL_42;
      case 9u:
        *(a1 + 108) |= 2u;
        v35 = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v35;
        v31 = 16;
        goto LABEL_59;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 64;
LABEL_52:
        v28 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_60;
      case 0xBu:
        v22 = objc_alloc_init(CSDMessagingConversationActivityMetadata);
        objc_storeStrong((a1 + 40), v22);
        v35 = 0;
        v36 = 0;
        if (PBReaderPlaceMark() && sub_1001E858C(v22, a2))
        {
          goto LABEL_50;
        }

        goto LABEL_62;
      case 0xCu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 108) |= 4u;
        while (1)
        {
          LOBYTE(v35) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v35 & 0x7F) << v15;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_54;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_54:
        *(a1 + 104) = v21;
        goto LABEL_60;
      case 0xDu:
        *(a1 + 108) |= 1u;
        v35 = 0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v35;
        v31 = 8;
LABEL_59:
        *(a1 + v31) = v30;
        goto LABEL_60;
      case 0xEu:
        v22 = objc_alloc_init(CSDMessagingHandle);
        v23 = 72;
LABEL_42:
        objc_storeStrong((a1 + v23), v22);
        v35 = 0;
        v36 = 0;
        if (PBReaderPlaceMark() && sub_1000D1450(v22, a2))
        {
LABEL_50:
          PBReaderRecallMark();

LABEL_60:
          v33 = [a2 position];
          if (v33 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_62:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_60;
    }
  }
}

uint64_t sub_1001A9A90(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__notificationStyles;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__notificationStyles;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v37 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v37 & 0x7F) << v14;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__version;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__version;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 20) |= 1u;
    while (1)
    {
      v38 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v38 & 0x7F) << v23;
      if ((v38 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__handleType;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__handleType;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001AA634(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            LOBYTE(v20) = 0;
            v21 = &OBJC_IVAR___CSDMessagingCallCapabilitiesState__faceTimeAudioAvailable;
            goto LABEL_42;
          }
        }

        v21 = &OBJC_IVAR___CSDMessagingCallCapabilitiesState__faceTimeAudioAvailable;
LABEL_41:
        v20 = (v15 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + *v21) = v20;
        goto LABEL_43;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 12) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        LOBYTE(v20) = 0;
        v21 = &OBJC_IVAR___CSDMessagingCallCapabilitiesState__faceTimeVideoAvailable;
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___CSDMessagingCallCapabilitiesState__faceTimeVideoAvailable;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_1001AD384(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Issuing request to acquire process assertion for bundle identifier: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) processAssertionWithBundleIdentifier:*(a1 + 32)];
  v5 = [*(a1 + 40) processAssertions];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [*(a1 + 40) processAssertions];
    [v7 addObject:v4];

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) processAssertions];
      (*(v8 + 16))(v8, v9, [v10 countForObject:v4]);
    }
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Acquiring process assertion for bundle identifier %@", buf, 0xCu);
    }

    v13 = [*(a1 + 40) processAssertions];
    [v13 addObject:v4];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001AD654;
    v20[3] = &unk_10061D8B8;
    v19 = *(a1 + 32);
    v14 = v19.i64[0];
    v21 = vextq_s8(v19, v19, 8uLL);
    v22 = v4;
    v23 = *(a1 + 48);
    [v22 acquireWithCompletionHandler:v20];
  }

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) processAssertions];
    v18 = [v17 countForObject:v4];
    *buf = 138412546;
    v25 = v16;
    v26 = 2048;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Incremented count of process assertion for bundle identifier %@ to %lu", buf, 0x16u);
  }
}

void sub_1001AD654(id *a1, char a2)
{
  v4 = a1 + 4;
  v5 = [a1[4] serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AD748;
  block[3] = &unk_10061D088;
  v14 = a2;
  *&v6 = a1[5];
  *(&v6 + 1) = *v4;
  v10 = v6;
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  dispatch_async(v5, block);
}

uint64_t sub_1001AD748(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = sub_100004778();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Acquired initial process assertion for bundle identifier %@", &v14, 0xCu);
    }

    v6 = [*(a1 + 40) processAssertions];
    v7 = [v6 countForObject:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100478FEC(a1, v4);
    }

    v8 = [*(a1 + 40) processAssertions];
    v9 = [v8 containsObject:*(a1 + 48)];

    if (v9)
    {
      do
      {
        v10 = [*(a1 + 40) processAssertions];
        [v10 removeObject:*(a1 + 48)];

        v11 = [*(a1 + 40) processAssertions];
        v12 = [v11 containsObject:*(a1 + 48)];
      }

      while ((v12 & 1) != 0);
    }

    v7 = 0;
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), v7);
  }

  return result;
}

void sub_1001AD9AC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received request to invalidate process assertion with bundle identifier: %@", &v13, 0xCu);
  }

  v4 = [*(a1 + 40) processAssertionWithBundleIdentifier:*(a1 + 32)];
  v5 = [*(a1 + 40) processAssertions];
  v6 = [v5 countForObject:v4];

  if (v6)
  {
    v7 = [*(a1 + 40) processAssertions];
    [v7 removeObject:v4];

    v8 = [*(a1 + 40) processAssertions];
    v9 = [v8 countForObject:v4];
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 138412546;
    v14 = v11;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Decremented count of process assertion for bundle identifier %@ to %lu", &v13, 0x16u);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, *(a1 + 32), v9);
  }
}

void sub_1001ADD7C(uint64_t a1)
{
  v12 = objc_alloc_init(CSDIncomingCallFilterDataSource);
  v2 = [[CSDDeviceLockStateObserver alloc] initWithQueue:*(a1 + 32)];
  v3 = objc_alloc_init(CSDCallCenterObserver);
  v4 = +[CSDCallDirectoryManager sharedInstance];
  v5 = *(a1 + 40);
  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 contactStore];
  v8 = objc_alloc_init(TUFeatureFlags);
  v9 = [v5 initWithDataSource:v12 deviceLockObserver:v2 callCenterObserver:v3 callDirectoryStoreBuilder:&stru_10061D8F8 callDirectoryManager:v4 contactStore:v7 featureFlags:v8 queue:*(a1 + 32)];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

CXCallDirectoryStore *__cdecl sub_1001ADEB0(id a1)
{
  v7 = 0;
  v1 = [[CXCallDirectoryStore alloc] initForReadingWithError:&v7];
  v2 = v7;
  v3 = sub_100004778();
  v4 = v3;
  if (v1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initialized CXCallDirectoryStore for reading", v6, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100479068(v2, v4);
  }

  return v1;
}

void sub_1001AE220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001AE23C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device first unlock block invoked, attempting to initialize CXCallDirectoryStore...", v5, 2u);
  }

  v3 = (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCallDirectoryStore:v3];
}

uint64_t sub_1001AE38C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Incoming call filter block called with sourceAddress: %@ providerIdentifier: %@", &v15, 0x16u);
    }

    v9 = [WeakRetained[7] providerWithIdentifier:v6];
    v10 = v9;
    if (v9 && [v9 isSystemProvider] && (objc_msgSend(WeakRetained, "callDirectoryAllowsCallFromSourceAddress:", v5) & 1) == 0)
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v5;
        v13 = "Blocking call with sourceAddress %@ since callDirectoryAllowsCallFromSourceAddress returned NO";
        goto LABEL_14;
      }
    }

    else
    {
      if ([WeakRetained systemAllowsCallsFromSourceAddress:v5 providerIdentifier:v6])
      {
        v11 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v5;
        v13 = "Blocking call with sourceAddress %@ since systemAllowsCallsFromSourceAddress returned NO";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v15, 0xCu);
      }
    }

    v11 = 1;
    goto LABEL_16;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

void sub_1001AE6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001AE6F8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) isOnEmergencyCall];
    v4 = *(a1 + 40);
    v11 = 67109378;
    LODWORD(v12[0]) = v3;
    WORD2(v12[0]) = 2112;
    *(v12 + 6) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DND - onEmergencyCall: %d providerIdentifier: %@", &v11, 0x12u);
  }

  if (![*(a1 + 32) isOnEmergencyCall])
  {
    v7 = [*(a1 + 32) dataSource];
    v8 = [v7 isDestinationIDAllowedThroughDoNotDisturb:*(a1 + 48) providerIdentifier:*(a1 + 40)];

    if (v8)
    {
      return;
    }

    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v11 = 138412290;
      v12[0] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not allowing call because DND is enabled for %@", &v11, 0xCu);
    }

    goto LABEL_10;
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) emergencyProviderIdentifier];
  LOBYTE(v5) = [v5 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
LABEL_10:
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void sub_1001AF544(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v3 = [v2 anyCallPassesTest:&stru_10061D990];

  v4 = [*(a1 + 40) queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001AF60C;
  v5[3] = &unk_100619EA8;
  v5[4] = *(a1 + 40);
  v6 = v3;
  dispatch_async(v4, v5);
}

id sub_1001B0874(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Call history changed: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) _handleCallHistoryChanged];
}

void sub_1001B0E9C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requested to report call ended for conversation %@", &v5, 0xCu);
  }

  v4 = [[CHRecentCall alloc] initWithConversation:*(a1 + 32) startDate:*(a1 + 40) avMode:*(a1 + 56)];
  [*(a1 + 48) _addRecentCallToCallHistory:v4];
}

void sub_1001B16E0(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionObjectsAwaitingCallHistory];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Ending transaction for %@ because we timed out waiting for a call history database changed notification", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) transactionObjectsAwaitingCallHistory];
    [v6 removeObject:*(a1 + 40)];

    v7 = [*(a1 + 32) transactionManager];
    [v7 endTransactionIfNecessaryForObject:*(a1 + 40)];
  }
}

void sub_1001B198C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) predicateFormat];
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set %ld recent calls as read using matching predicate '%@'.", &v6, 0x16u);
  }
}

void sub_1001B1D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deleted %ld recent calls matching predicate %@", &v6, 0x16u);
  }
}

uint64_t sub_1001B2458(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1001B37E0(uint64_t a1)
{
  [*(a1 + 32) _relayHostDeviceIdentifierChanged];
  v2 = *(a1 + 32);

  return [v2 syncRelayCallProvidersWithKVS];
}

void sub_1001B38EC(uint64_t a1)
{
  if ([*(a1 + 32) _relayHostDeviceIdentifierChanged])
  {
    v2 = *(a1 + 32);

    [v2 syncRelayCallProvidersWithKVS];
  }

  else
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10047918C(v3);
    }
  }
}

void sub_1001B3A30(uint64_t a1)
{
  if ([*(a1 + 32) _relayHostDeviceIdentifierChanged])
  {
    v2 = *(a1 + 32);

    [v2 syncRelayCallProvidersWithKVS];
  }

  else
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1004791D0(v3);
    }
  }
}

void sub_1001B3C44(uint64_t a1)
{
  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Not updating call providers on primary calling device", buf, 2u);
    }
  }

  else
  {
    v3 = +[NSUserDefaults tu_defaults];
    v2 = [v3 stringForKey:@"kLastKnownOutgoingCallerDeviceIdentifier"];

    if (v2)
    {
      v4 = +[CSDCallProviderKVS sharedInstance];
      v5 = [v4 fetchCallProvidersForIDSDeviceIdentifier:v2];

      v6 = [*(a1 + 32) delegate];
      [v6 relayCallProvidersChangedForDataSource:*(a1 + 32) updatedCallProviders:v5];
    }

    else
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cannot sync call providers as device identifier for outgoing caller device isn't known yet", v8, 2u);
      }
    }
  }
}

uint64_t sub_1001B44D8(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v18[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v18 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v18[0] & 0x7F) << v5;
      if ((v18[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      if (v6++ >= 9)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 14;
        goto LABEL_37;
      case 2u:
        v15 = objc_alloc_init(CSDMessagingPersonNameComponents);
        objc_storeStrong(a1 + 15, v15);
        v18[0] = 0;
        v18[1] = 0;
        if (PBReaderPlaceMark() && sub_100138C28(v15, a2))
        {
          PBReaderRecallMark();
LABEL_38:

LABEL_39:
          v16 = [a2 position];
          if (v16 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 16;
        goto LABEL_37;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 11;
        goto LABEL_37;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 6;
        goto LABEL_37;
      case 6u:
        v13 = PBReaderReadString();
        v14 = 13;
        goto LABEL_37;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 12;
        goto LABEL_37;
      case 8u:
        v13 = PBReaderReadString();
        v14 = 10;
        goto LABEL_37;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 9;
        goto LABEL_37;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 2;
        goto LABEL_37;
      case 0xBu:
        v13 = PBReaderReadString();
        v14 = 3;
        goto LABEL_37;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 1;
        goto LABEL_37;
      case 0xDu:
        v13 = PBReaderReadString();
        v14 = 7;
        goto LABEL_37;
      case 0xEu:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addContactIdentifiers:v15];
        }

        goto LABEL_38;
      case 0xFu:
        v13 = PBReaderReadString();
        v14 = 4;
        goto LABEL_37;
      case 0x10u:
        v13 = PBReaderReadString();
        v14 = 5;
LABEL_37:
        v15 = a1[v14];
        a1[v14] = v13;
        goto LABEL_38;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_39;
    }
  }
}

void sub_1001B5B24(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_100004778();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received successful didSend for message with identifier %@ using account %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1004759CC(a1, v4);
  }
}

void sub_1001B5FE4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messenger:*(a1 + 32) handledMessage:*(a1 + 40) fromDestination:*(a1 + 48) device:*(a1 + 56)];
}

void sub_1001B61C8(uint64_t a1)
{
  v2 = [*(a1 + 32) _sendMessageOptions];
  v3 = +[CSDRelayIDSService sharedInstance];
  v4 = [v3 service];
  v5 = (a1 + 40);
  v6 = [*(a1 + 40) data];
  v7 = *(a1 + 48);
  v27 = 0;
  v28 = 0;
  v8 = [v4 sendData:v6 toDestinations:v7 priority:300 options:v2 identifier:&v28 error:&v27];
  v9 = v28;
  v10 = v27;

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) typeString];
    v13 = *(a1 + 48);
    *buf = 138413058;
    v30 = v12;
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v2;
    v35 = 2112;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending %@ message with identifier %@ and options %@ to destinations %@", buf, 0x2Au);
  }

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *v5;
    *buf = 138412546;
    v30 = v9;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "identifier %@ message %@", buf, 0x16u);
  }

  v16 = sub_100004778();
  v17 = v16;
  if (v8)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*v5 typeString];
      *buf = 138412290;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully sent %@ message", buf, 0xCu);
    }

    if (*(a1 + 56))
    {
      v19 = +[TUCallCenter sharedInstance];
      v20 = [v19 queue];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1001B6564;
      v25[3] = &unk_10061A7E0;
      v21 = &v26;
      v26 = *(a1 + 56);
      v22 = v25;
LABEL_14:
      dispatch_async(v20, v22);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100475A60((a1 + 40), v10, v17);
    }

    if (*(a1 + 56))
    {
      v19 = +[TUCallCenter sharedInstance];
      v20 = [v19 queue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1001B6578;
      v23[3] = &unk_10061A7E0;
      v21 = &v24;
      v24 = *(a1 + 56);
      v22 = v23;
      goto LABEL_14;
    }
  }
}

void sub_1001B67BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B6924(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [*(a1 + 32) activityQueue];
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 userActivity];
        v8 = [v7 activityType];
        v9 = [CSDUserActivity activityTypeForUserActivityTypeString:v8];
        v10 = *(a1 + 48);

        if (v9 == v10)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

void sub_1001B7E1C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v29 = 138412290;
    *v30 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Best app suggestion changed to %@", &v29, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  v5 = [*(a1 + 40) mostRecentBestAppSuggestion];
  if (v5)
  {
    v6 = v5;
    if (*(a1 + 32))
    {
      v7 = [*(a1 + 40) mostRecentBestAppSuggestion];
      v8 = [v7 activityType];
      v9 = [*(a1 + 32) activityType];
      v10 = [v8 isEqualToString:v9];

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v11 = [*(a1 + 40) mostRecentBestAppSuggestion];
    v12 = [v11 activityType];
    v13 = [CSDUserActivity activityTypeForUserActivityTypeString:v12];

    if (v4)
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 40) mostRecentBestAppSuggestion];
        v16 = [v15 activityType];
        v17 = [*(a1 + 40) mostRecentBestAppSuggestion];
        v18 = [v17 dynamicIdentifier];
        v29 = 67109634;
        *v30 = v13;
        *&v30[4] = 2112;
        *&v30[6] = v16;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Firing delegate callback for stopped activity type %d (%@) and dynamicIdentifier %@", &v29, 0x1Cu);
      }

      v19 = [*(a1 + 40) mostRecentBestAppSuggestion];
      v20 = [v19 dynamicIdentifier];
      [v4 stoppedReceivingActivityType:v13 dynamicIdentifier:v20];
    }

    [*(a1 + 40) setMostRecentBestAppSuggestion:0];
  }

LABEL_13:
  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = [v21 activityType];
    v23 = [CSDUserActivity activityTypeForUserActivityTypeString:v22];

    if (v23 && v4)
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [*(a1 + 32) activityType];
        v26 = [*(a1 + 32) dynamicIdentifier];
        v29 = 67109634;
        *v30 = v23;
        *&v30[4] = 2112;
        *&v30[6] = v25;
        v31 = 2112;
        v32 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Firing delegate callback with activity type %d (%@) and dynamicIdentifier %@", &v29, 0x1Cu);
      }

      v27 = [*(a1 + 32) dynamicIdentifier];
      v28 = [*(a1 + 32) originatingDeviceType];
      [v4 receivedBroadcastedActivityType:v23 dynamicIdentifier:v27 originatingDeviceType:v28];
    }

    [*(a1 + 40) setMostRecentBestAppSuggestion:*(a1 + 32)];
  }
}

void sub_1001B87E0(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithName:@"com.apple.private.alloy.phone.auth"];
  v2 = qword_1006ACE48;
  qword_1006ACE48 = v1;
}

void sub_1001B88C4(uint64_t a1)
{
  v9 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:@"com.apple.telephonyutilities.callservicesd" type:2];
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("CSDCallProviderKVSQueue", v2);

  v4 = *(a1 + 32);
  v5 = objc_alloc(objc_opt_class());
  v6 = IDSCopyLocalDeviceUniqueID();
  v7 = [v5 initWithCallProviderStore:v9 queue:v3 currentDeviceIdentifier:v6];
  v8 = qword_1006ACE58;
  qword_1006ACE58 = v7;
}

void sub_1001B8D38(uint64_t a1)
{
  v2 = [*(a1 + 32) callProviderStore];
  [v2 setData:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_1001B8F80(uint64_t a1)
{
  v2 = [*(a1 + 32) callProviderStore];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_1001B909C(uint64_t a1)
{
  v2 = [*(a1 + 32) callProviderStore];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 allKeys];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 hasPrefix:{*(a1 + 40), v12}])
        {
          v11 = [*(a1 + 32) callProviderStore];
          [v11 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void sub_1001B93C8(uint64_t a1)
{
  v2 = [*(a1 + 32) callProviderStore];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 allKeys];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 138412290;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([v10 hasPrefix:{*(a1 + 40), v18}])
        {
          v11 = [*(a1 + 32) callProviderStore];
          v12 = [v11 dataForKey:v10];

          if (v12)
          {
            v13 = [*(a1 + 32) unarchivedObjectClasses];
            v20 = 0;
            v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v12 error:&v20];
            v15 = v20;

            if (v14)
            {
              v16 = *(a1 + 48);
              v17 = [v14 identifier];
              [v16 setObject:v14 forKeyedSubscript:v17];
            }

            else
            {
              v17 = sub_100004778();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = v18;
                v26 = v10;
                _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to unarchive call provider for key = %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v15 = sub_100004778();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v18;
              v26 = v10;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to read call provider data for key = %@", buf, 0xCu);
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }
}

void sub_1001B96E4(uint64_t a1)
{
  v1 = [*(a1 + 32) callProviderStore];
  [v1 synchronize];

  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requested to synchronize iCloud KVS", v3, 2u);
  }
}

void sub_1001BBD48(uint64_t a1, int a2)
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Query for capabilities returned any destinations with web only endpoints: %@", buf, 0xCu);
  }

  if (a2)
  {
    [*(a1 + 32) addMembers:*(a1 + 40) toExistingMembers:*(a1 + 48) participantDestinationIDs:*(a1 + 56) webDestinationIDs:*(a1 + 64) activeParticipants:*(a1 + 72) activitySessions:*(a1 + 80) link:*(a1 + 88) otherInvitedHandles:*(a1 + 96) report:*(a1 + 104) invitationPreferences:*(a1 + 112)];
  }
}

void sub_1001BFE60(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling %@ by requesting handoff for all calls", buf, 0xCu);
  }

  v6 = a2;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DC830;
    block[3] = &unk_100619D38;
    v10 = v7;
    dispatch_async(v8, block);
  }
}

void sub_1001C0BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62)
{
  objc_destroyWeak((v63 + 32));
  objc_destroyWeak((v64 + 32));
  objc_destroyWeak((v62 + 32));
  objc_destroyWeak((v65 + 32));
  objc_destroyWeak(&a46);
  objc_destroyWeak(&a51);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a62);
  objc_destroyWeak((v66 - 192));
  objc_destroyWeak((v66 - 144));
  objc_destroyWeak((v66 - 136));
  _Unwind_Resume(a1);
}

void sub_1001C0CB4(id a1, CSDClient *a2)
{
  v2 = a2;
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted from client %@", &v4, 0xCu);
  }
}

void sub_1001C0D60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001C0E34;
    v6[3] = &unk_100619D88;
    v7 = WeakRetained;
    v8 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1001C0E34(uint64_t a1)
{
  [*(a1 + 32) updateClientsWithCall:*(a1 + 40)];
  [*(a1 + 32) updateAudioArbitration];
  v2 = [*(a1 + 32) conversationCallCoordinationManager];
  [v2 handleCallChangedWithCall:*(a1 + 40)];
}

void sub_1001C0E9C(uint64_t a1, int a2)
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarPlay screen is now %d", v7, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a2)
  {
    [WeakRetained _launchInCallApplicationForExistingCall];
  }
}

void sub_1001C0F68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained queue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001C1034;
    v5[3] = &unk_100619D88;
    v6 = v3;
    v7 = *(a1 + 32);
    dispatch_async(v4, v5);
  }
}

void sub_1001C1034(uint64_t a1)
{
  [*(a1 + 32) _updateBluetoothAudioFormatIfNecessaryDueToMVMChange:0];
  v2 = [*(a1 + 32) clientManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001C11AC;
  v11[3] = &unk_10061DA78;
  v12 = *(a1 + 32);
  v3 = NSStringFromSelector("handleRoutesByUniqueIdentifierUpdated:");
  [v2 performBlockOnClients:v11 coalescedByIdentifier:v3];

  v4 = [*(a1 + 40) featureFlags];
  if (![v4 isRemoteCallControlOnWatchEnabled])
  {
    goto LABEL_4;
  }

  v5 = [*(a1 + 40) callCenter];
  v6 = [v5 currentAudioAndVideoCalls];
  v7 = [v6 count];

  if (v7)
  {
    v4 = [*(a1 + 32) relayMessagingController];
    v8 = [*(a1 + 32) localRouteController];
    v9 = [v8 routesByUniqueIdentifier];
    v10 = [v9 allValues];
    [v4 sendUpdateRoutesMessageToClientForRoutes:v10];

LABEL_4:
  }
}

void sub_1001C11AC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 localRouteController];
  v5 = [v6 routesByUniqueIdentifier];
  [v4 handleLocalRoutesByUniqueIdentifierUpdated:v5];
}

void sub_1001C1220(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C12E4;
    block[3] = &unk_100619D38;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void sub_1001C12E4(uint64_t a1)
{
  v2 = +[CSDReportingController sharedInstance];
  [v2 reportRouteWasPickedByAnyTrigger:*(a1 + 32)];
}

void sub_1001C133C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C1400;
    block[3] = &unk_100619D38;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void sub_1001C1400(uint64_t a1)
{
  v2 = +[CSDReportingController sharedInstance];
  [v2 reportRouteWasPicked:*(a1 + 32)];
}

void sub_1001C1458(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C151C;
    block[3] = &unk_100619D38;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void sub_1001C151C(uint64_t a1)
{
  v2 = +[CSDReportingController sharedInstance];
  [v2 reportTimedOutPickingRoute:*(a1 + 32)];
}

void sub_1001C1574(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C1620;
    block[3] = &unk_100619D38;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_1001C1620(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001C16DC;
  v4[3] = &unk_10061DA78;
  v5 = *(a1 + 32);
  v3 = NSStringFromSelector("handleRoutesByUniqueIdentifierUpdated:");
  [v2 performBlockOnClients:v4 coalescedByIdentifier:v3];
}

void sub_1001C16DC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 pairedHostDeviceRouteController];
  v5 = [v6 routesByUniqueIdentifier];
  [v4 handlePairedHostDeviceRoutesByUniqueIdentifierUpdated:v5];
}

void sub_1001C1750(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C1814;
    block[3] = &unk_100619D38;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void sub_1001C1814(uint64_t a1)
{
  v2 = +[CSDReportingController sharedInstance];
  [v2 reportRouteWasPickedByAnyTrigger:*(a1 + 32)];
}

void sub_1001C186C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001C1940;
    v7[3] = &unk_100619D88;
    v8 = v5;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_1001C1940(uint64_t a1)
{
  v2 = [*(a1 + 32) relayMessagingController];
  [v2 sendPickRouteMessageToHostForRoute:*(a1 + 40)];

  v3 = +[CSDReportingController sharedInstance];
  [v3 reportRouteWasPicked:*(a1 + 40)];
}