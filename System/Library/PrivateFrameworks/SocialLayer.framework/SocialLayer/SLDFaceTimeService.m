@interface SLDFaceTimeService
+ (id)sharedService;
- (SLDFaceTimeService)init;
- (id)_applicationIdentifierForConnection:(id)a3;
- (id)_bundleIdentifierForConnection:(id)a3;
- (void)initiateTUConversationForAttributionIdentifier:(id)a3 videoEnabled:(BOOL)a4 completion:(id)a5;
- (void)refreshShareableContentMetadataInJoinedConversation;
@end

@implementation SLDFaceTimeService

+ (id)sharedService
{
  if (sharedService_onceToken_4 != -1)
  {
    +[SLDFaceTimeService sharedService];
  }

  v3 = sharedService_sService_4;

  return v3;
}

uint64_t __35__SLDFaceTimeService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDFaceTimeService);
  v1 = sharedService_sService_4;
  sharedService_sService_4 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SLDFaceTimeService)init
{
  v6.receiver = self;
  v6.super_class = SLDFaceTimeService;
  v2 = [(SLDFaceTimeService *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)initiateTUConversationForAttributionIdentifier:(id)a3 videoEnabled:(BOOL)a4 completion:(id)a5
{
  v49 = a4;
  v76 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v52 = a5;
  v50 = [MEMORY[0x277CCAE80] currentConnection];
  if (IMCoreLibraryCore() && getIMSPILastAddressedHandleForChatWithGUIDSymbolLoc() && IMCoreLibraryCore() && getIMSPIResetChatRegistrySymbolLoc())
  {
    v47 = [(SLDFaceTimeService *)self _applicationIdentifierForConnection:v50];
    v46 = [[SLInteractionHandler alloc] initWithAppIdentifier:v47];
    v7 = [(SLInteractionHandler *)v46 fetchAttributionForAttributionIdentifier:v51];
    v8 = SLDaemonLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      *buf = 136315650;
      *&buf[4] = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v51;
      if (v49)
      {
        v9 = @"YES";
      }

      *&buf[22] = 2112;
      v73 = v9;
      _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "%s: Initiating FaceTime conversation for attribution identifier %@ {videoEnabled: %@}", buf, 0x20u);
    }

    v10 = [v7 relatedPersons];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v73 = __Block_byref_object_copy__10;
    v74 = __Block_byref_object_dispose__10;
    v75 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke;
    block[3] = &unk_278925D18;
    v64 = buf;
    v48 = v7;
    v63 = v48;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    IMSPIResetChatRegistrySymbolLoc = getIMSPIResetChatRegistrySymbolLoc();
    if (!IMSPIResetChatRegistrySymbolLoc)
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }

    IMSPIResetChatRegistrySymbolLoc();
    if (*(*&buf[8] + 40))
    {
      v12 = SLDaemonLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*&buf[8] + 40);
        v14 = [v48 conversationIdentifier];
        *v66 = 136315650;
        v67 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
        v68 = 2112;
        v69 = v13;
        v70 = 2112;
        v71 = v14;
        _os_log_impl(&dword_231772000, v12, OS_LOG_TYPE_DEFAULT, "%s: Using last addressed handle: %@ for chat GUID: %@", v66, 0x20u);
      }

      v15 = [MEMORY[0x277D6EEE8] normalizedHandleWithDestinationID:*(*&buf[8] + 40)];
    }

    else
    {
      v18 = SLDaemonLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v66 = 136315394;
        v67 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
        v68 = 2112;
        v69 = v51;
        _os_log_impl(&dword_231772000, v18, OS_LOG_TYPE_DEFAULT, "%s: Did not receive a last addressed handle string from imagent. This may result in a FaceTime call including the local user. Attribution identifier: %@", v66, 0x16u);
      }

      v15 = 0;
    }

    v54 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v10;
    v19 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v19)
    {
      v20 = *v59;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v59 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = MEMORY[0x277D6EEE8];
          v23 = [*(*(&v58 + 1) + 8 * i) handle];
          v24 = [v22 normalizedHandleWithDestinationID:v23];

          if (v15 && [v24 isEquivalentToHandle:v15])
          {
            v25 = SLDaemonLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *v66 = 136315394;
              v67 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
              v68 = 2112;
              v69 = v24;
              _os_log_impl(&dword_231772000, v25, OS_LOG_TYPE_DEFAULT, "%s: Skipping handle %@ when initiating FaceTime conversation because it matches my last addressed handle.", v66, 0x16u);
            }
          }

          else
          {
            v26 = objc_alloc(MEMORY[0x277D6EEA0]);
            v27 = [MEMORY[0x277CBEB98] setWithObject:v24];
            v25 = [v26 initWithHandles:v27];

            [v54 addObject:v25];
          }
        }

        v19 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v19);
    }

    v28 = [objc_alloc(MEMORY[0x277D6EEF0]) initWithRemoteMembers:v54];
    v29 = v28;
    if (v49)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    [v28 setAvMode:v30];
    [v29 setVideoEnabled:v49];
    [v29 setShouldSuppressInCallUI:1];
    v31 = [MEMORY[0x277D6EEB0] expanseProvider];
    [v29 setProvider:v31];

    if (v49)
    {
      [v29 setShouldLaunchBackgroundInCallUI:1];
    }

    if (v15)
    {
      [v29 setCallerID:v15];
    }

    if ([v54 count] < 2 || (objc_msgSend(v48, "groupID"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 == 0, v32, v33))
    {
      v39 = SLDaemonLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *v66 = 136315138;
        v67 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
        _os_log_impl(&dword_231772000, v39, OS_LOG_TYPE_DEFAULT, "%s: FaceTime conversation being initiated is a 1:1.", v66, 0xCu);
      }

      v38 = [MEMORY[0x277D6EE88] invitationPreferencesForAllHandlesWithStyles:4];
    }

    else
    {
      v34 = [v48 groupDisplayName];
      v35 = SLDaemonLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v48 groupID];
        *v66 = 136315650;
        v67 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
        v68 = 2112;
        v69 = v36;
        v70 = 2112;
        v71 = v34;
        _os_log_impl(&dword_231772000, v35, OS_LOG_TYPE_DEFAULT, "%s: FaceTime conversation being initiated is a group, setting group ID to %@ and messages group name to %@.", v66, 0x20u);
      }

      v37 = [v48 groupID];
      [v29 setMessagesGroupUUID:v37];

      [v29 setMessagesGroupName:v34];
      v38 = [MEMORY[0x277D6EE88] invitationPreferencesForAllHandlesWithStyles:2];
    }

    [v29 setInvitationPreferences:v38];
    if (objc_opt_respondsToSelector())
    {
      v40 = [v48 collaborationMetadata];
      v41 = [v40 collaborationIdentifier];
      [v29 setCollaborationIdentifier:v41];
    }

    v42 = SLDaemonLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *v66 = 136315394;
      v67 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
      v68 = 2112;
      v69 = v29;
      _os_log_impl(&dword_231772000, v42, OS_LOG_TYPE_DEFAULT, "%s: FaceTime conversation being initiated using join request %@", v66, 0x16u);
    }

    v43 = [MEMORY[0x277D6EDF8] sharedInstance];
    v44 = [v43 queue];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke_162;
    v55[3] = &unk_2789266B0;
    v56 = v29;
    v57 = v52;
    v45 = v29;
    dispatch_async(v44, v55);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = SLDaemonLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:];
    }

    (*(v52 + 2))(v52, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) conversationIdentifier];
  IMSPILastAddressedHandleForChatWithGUIDSymbolLoc = getIMSPILastAddressedHandleForChatWithGUIDSymbolLoc();
  if (IMSPILastAddressedHandleForChatWithGUIDSymbolLoc)
  {
    v3 = IMSPILastAddressedHandleForChatWithGUIDSymbolLoc(v6);

    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    SLDCreateGroupPhotoImageWithGroupID_cold_2();
    __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke_162();
  }
}

uint64_t __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke_162(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 launchAppForJoinRequest:*(a1 + 32)];

  v4 = SLDaemonLogHandle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]_block_invoke";
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "%s: FaceTime conversation successfully initiated", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke_162_cold_1((a1 + 32));
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)refreshShareableContentMetadataInJoinedConversation
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2;
  v5[3] = &unk_278925CF0;
  v6 = v2;
  v7 = *(a1 + 32);
  v4 = v2;
  dispatch_async(v3, v5);
}

void __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversationManager];
  v3 = [v2 activeConversations];

  v4 = [v3 objectsPassingTest:&__block_literal_global_165];
  v5 = [v4 anyObject];
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = *(a1 + 40);
      v6 = (a1 + 40);
      v8 = [MEMORY[0x277CBEBC0] faceTimeRefreshShareableContentURLForBundleIdentifier:v7];
      v9 = SLDaemonLogHandle();
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v17 = "[SLDFaceTimeService refreshShareableContentMetadataInJoinedConversation]_block_invoke";
          v18 = 2112;
          v19 = v8;
          _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_DEFAULT, "%s: Opening URL %@.", buf, 0x16u);
        }

        v10 = objc_alloc_init(MEMORY[0x277CC1F00]);
        v14 = *MEMORY[0x277D0ABF0];
        v15 = MEMORY[0x277CBEC38];
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        [v10 setFrontBoardOptions:v11];

        v12 = [MEMORY[0x277CC1E80] defaultWorkspace];
        [v12 openURL:v8 configuration:v10 completionHandler:0];
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2_cold_2(v6);
      }
    }

    else
    {
      v8 = SLDaemonLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2_cold_1();
      }
    }
  }

  else
  {
    v8 = SLDaemonLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2_cold_3();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

BOOL __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 state] == 3;
  *a3 = result;
  return result;
}

- (id)_applicationIdentifierForConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = MEMORY[0x277CC1E90];
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v13 = 0;
  v7 = [v6 bundleRecordForAuditToken:v14 error:&v13];
  v8 = v13;
  v9 = [v7 applicationIdentifier];

  if (!v9)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SLDFaceTimeService *)self _applicationIdentifierForConnection:v8, v10];
    }
  }

  v11 = [v7 applicationIdentifier];

  return v11;
}

- (id)_bundleIdentifierForConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = MEMORY[0x277CC1E90];
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v13 = 0;
  v7 = [v6 bundleRecordForAuditToken:v14 error:&v13];
  v8 = v13;
  v9 = [v7 bundleIdentifier];

  if (!v9)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SLDFaceTimeService *)self _bundleIdentifierForConnection:v8, v10];
    }
  }

  v11 = [v7 bundleIdentifier];

  return v11;
}

- (void)initiateTUConversationForAttributionIdentifier:videoEnabled:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke_162_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_applicationIdentifierForConnection:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "[SLDCollaborationAttributionViewService: %p] Failed to generate a bundle record, or the record's app ID is nil. This is required to look up attribution data. Error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_bundleIdentifierForConnection:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138412802;
  v10 = v7;
  v11 = 2048;
  v12 = a1;
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "[%@: %p] Failed to generate a bundle record, or the record's bundle ID is nil. This is required to look up attribution data. Error: %@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end