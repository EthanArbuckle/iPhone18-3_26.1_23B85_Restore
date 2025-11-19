@interface TUDynamicCallDisplayContext
- (TUDynamicCallDisplayContext)init;
- (TUDynamicCallDisplayContext)initWithCoder:(id)a3;
- (TUDynamicCallDisplayContextDelegate)delegate;
- (id)description;
- (void)_initializeSynchronousStateWithCall:(id)a3 contactIdentifier:(id)a4 contactsDataProvider:(id)a5;
- (void)updatePredictedNameFromReceptionist:(id)a3;
@end

@implementation TUDynamicCallDisplayContext

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUCallDisplayContext *)self name];
  [v3 appendFormat:@" name=%@", v4];

  v5 = [(TUCallDisplayContext *)self personNameComponents];
  [v3 appendFormat:@" personNameComponents=%@", v5];

  v6 = [(TUCallDisplayContext *)self suggestedName];
  [v3 appendFormat:@" suggestedName=%@", v6];

  v7 = [(TUCallDisplayContext *)self label];
  [v3 appendFormat:@" label=%@", v7];

  v8 = [(TUCallDisplayContext *)self companyName];
  [v3 appendFormat:@" companyName=%@", v8];

  v9 = [(TUCallDisplayContext *)self companyDepartment];
  [v3 appendFormat:@" companyDepartment=%@", v9];

  v10 = [(TUCallDisplayContext *)self companyLogoURL];
  [v3 appendFormat:@" companyLogoURL=%@", v10];

  v11 = [(TUCallDisplayContext *)self mapName];
  [v3 appendFormat:@" mapName=%@", v11];

  v12 = [(TUCallDisplayContext *)self location];
  [v3 appendFormat:@" location=%@", v12];

  v13 = [(TUCallDisplayContext *)self contactName];
  [v3 appendFormat:@" contactName=%@", v13];

  v14 = [(TUCallDisplayContext *)self contactLabel];
  [v3 appendFormat:@" contactLabel=%@", v14];

  v15 = [(TUCallDisplayContext *)self callDirectoryLabel];
  [v3 appendFormat:@" callDirectoryLabel=%@", v15];

  v16 = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  [v3 appendFormat:@" callDirectoryLocalizedExtensionContainingAppName=%@", v16];

  v17 = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  [v3 appendFormat:@" callDirectoryExtensionIdentifier=%@", v17];

  [v3 appendFormat:@" callDirectoryIdentityType=%ld", -[TUCallDisplayContext callDirectoryIdentityType](self, "callDirectoryIdentityType")];
  [v3 appendString:@">"];
  v18 = [v3 copy];

  return v18;
}

- (TUDynamicCallDisplayContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TUDynamicCallDisplayContext.m" lineNumber:141 description:{@"%s is not available. Use another initializer instead.", "-[TUDynamicCallDisplayContext init]"}];

  return 0;
}

- (TUDynamicCallDisplayContext)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"TUDynamicCallDisplayContext.m" lineNumber:146 description:{@"%s is not available. Use another initializer instead.", "-[TUDynamicCallDisplayContext initWithCoder:]"}];

  return 0;
}

- (void)_initializeSynchronousStateWithCall:(id)a3 contactIdentifier:(id)a4 contactsDataProvider:(id)a5
{
  v103 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 isInternational];
  v12 = [[TUContactsDataProviderFetchRequest alloc] initWithCall:v8];
  [(TUContactsDataProviderFetchRequest *)v12 setContactIdentifier:v9];
  v13 = [v10 executeFetchRequest:v12];
  v14 = v13;
  v93 = v12;
  v94 = v10;
  if (v11)
  {
    v15 = [v8 remoteParticipantHandles];
    v16 = [v15 anyObject];

    v17 = [v16 value];
    if ([v17 length])
    {
      v18 = [v8 isoCountryCode];
      v19 = TUFormattedPhoneNumber(v17, v18);
      [(TUCallDisplayContext *)self setName:v19];
    }

    v20 = [v14 contacts];
    v21 = [v20 count];

    if (v21)
    {
      v22 = [v14 localizedName];
      [(TUCallDisplayContext *)self setSuggestedName:v22];
    }
  }

  else
  {
    v23 = [v13 localizedName];
    [(TUCallDisplayContext *)self setName:v23];

    v24 = [v14 contactLabel];
    [(TUCallDisplayContext *)self setLabel:v24];

    v16 = [v14 companyName];
    [(TUCallDisplayContext *)self setCompanyName:v16];
  }

  v25 = [v8 handle];
  v26 = [v25 siriDisplayName];
  if (v26)
  {
    v27 = v26;
    v28 = [v8 handle];
    v29 = [v28 shouldHideContact];

    if (!v29)
    {
      goto LABEL_12;
    }

    v25 = [v8 handle];
    v30 = [v25 siriDisplayName];
    [(TUCallDisplayContext *)self setName:v30];
  }

LABEL_12:
  if (v11)
  {
    goto LABEL_27;
  }

  v31 = [v14 contacts];
  if (![v31 count])
  {

    goto LABEL_27;
  }

  if ([v8 isConversation])
  {
    v32 = [v8 remoteParticipantHandles];
    v33 = [v32 count];

    if (v33 != 1)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v91 = v9;
  v34 = [v14 contacts];
  v90 = [v34 firstObject];

  v35 = [(TUCallDisplayContext *)self name];
  [(TUCallDisplayContext *)self setContactName:v35];

  v36 = [(TUCallDisplayContext *)self label];
  [(TUCallDisplayContext *)self setContactLabel:v36];

  v37 = objc_alloc(MEMORY[0x1E695DF70]);
  v38 = [v14 contacts];
  v39 = [v37 initWithCapacity:{objc_msgSend(v38, "count")}];

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v40 = [v14 contacts];
  v41 = [v40 countByEnumeratingWithState:&v96 objects:v102 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v97;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v97 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v96 + 1) + 8 * i) identifier];
        [v39 addObject:v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v96 objects:v102 count:16];
    }

    while (v42);
  }

  [(TUCallDisplayContext *)self setContactIdentifiers:v39];
  v46 = [v90 personNameComponents];
  [(TUCallDisplayContext *)self setPersonNameComponents:v46];

  -[TUCallDisplayContext setLegacyAddressBookIdentifier:](self, "setLegacyAddressBookIdentifier:", [v14 legacyAddressBookIdentifier]);
  v9 = v91;
LABEL_27:
  v47 = [(TUCallDisplayContext *)self personNameComponents];
  if (v47)
  {
    v48 = MEMORY[0x1E696ADF8];
    v49 = [(TUCallDisplayContext *)self personNameComponents];
    v50 = [v48 localizedStringFromPersonNameComponents:v49 style:3 options:0];
  }

  else
  {
    v50 = 0;
  }

  v51 = [(TUCallDisplayContext *)self contactIdentifiers];
  if (![v51 count])
  {

    goto LABEL_35;
  }

  v52 = [(TUCallDisplayContext *)self contactIdentifiers];
  if (![v52 count])
  {
LABEL_85:

LABEL_86:
    goto LABEL_87;
  }

  v53 = [v50 length];

  if (!v53)
  {
LABEL_35:
    v51 = [v8 callerNameFromNetwork];
    if ([v51 length])
    {
      v54 = [v8 provider];
      v55 = [v54 isTelephonyProvider];

      if (v55)
      {
        [(TUCallDisplayContext *)self setLabel:v51];
      }

      else
      {
        [(TUCallDisplayContext *)self setName:v51];
      }
    }

    if (![v51 length] && objc_msgSend(v8, "isVoicemail"))
    {
      v56 = TUBundle();
      v57 = [v56 localizedStringForKey:@"VOICEMAIL" value:&stru_1F098C218 table:@"TelephonyUtilities"];
      [(TUCallDisplayContext *)self setName:v57];
    }

    if ([v51 length])
    {
      goto LABEL_86;
    }

    v58 = [v8 handle];
    v59 = [v58 value];
    v60 = [v59 length];

    if (!v60)
    {
      goto LABEL_86;
    }

    v61 = [v8 handle];
    v52 = [v61 value];

    v62 = [v8 handle];
    if ([v62 type] == 2)
    {
      v92 = v50;
      v63 = [v8 handle];
      v64 = [v63 normalizedValue];

      if (!v64)
      {
        v50 = v92;
        if (v11)
        {
          goto LABEL_61;
        }

LABEL_48:
        v95 = 0;
        v66 = [TUSuggestionsMetadataCacheDataProvider suggestedNamesForDestinationID:v52 onlySignificant:0 error:&v95];
        v67 = v95;
        if (v67)
        {
          v68 = TUDefaultLog();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v101 = v67;
            _os_log_impl(&dword_1956FD000, v68, OS_LOG_TYPE_DEFAULT, "Suggestions: Could not fetch suggested contact via namesForDetail: %@", buf, 0xCu);
          }
        }

        else
        {
          v69 = [v66 count];
          v68 = TUDefaultLog();
          v70 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
          if (v69)
          {
            if (v70)
            {
              v71 = [v66 firstObject];
              *buf = 138412546;
              *v101 = v71;
              *&v101[8] = 2112;
              *&v101[10] = v52;
              _os_log_impl(&dword_1956FD000, v68, OS_LOG_TYPE_DEFAULT, "Suggestions: Found name '%@' for '%@'", buf, 0x16u);
            }

            v68 = [v66 firstObject];
            [(TUCallDisplayContext *)self setSuggestedName:v68];
          }

          else if (v70)
          {
            *buf = 138412290;
            *v101 = v52;
            _os_log_impl(&dword_1956FD000, v68, OS_LOG_TYPE_DEFAULT, "Suggestions: No suggested names found for '%@'", buf, 0xCu);
          }

          v67 = 0;
        }

LABEL_61:
        if ([v8 isDomestic] && (objc_msgSend(v8, "handle"), v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v72, "type"), v72, v73 != 3))
        {
          if ([v8 isIncoming])
          {
            goto LABEL_71;
          }

          v78 = 1;
        }

        else
        {
          v74 = TUDefaultLog();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            v75 = [v8 isDomestic];
            v76 = [v8 handle];
            v77 = [v76 type];
            *buf = 67109376;
            *v101 = v75;
            *&v101[4] = 2048;
            *&v101[6] = v77;
            _os_log_impl(&dword_1956FD000, v74, OS_LOG_TYPE_DEFAULT, "SNAP Suggestions: Hiding suggested nickname to prevent phishing. (isDomestic = %d, handleType = %ld)", buf, 0x12u);
          }

          if ([v8 isIncoming])
          {
            goto LABEL_78;
          }

          v78 = 0;
        }

        v79 = [(TUFeatureFlags *)self->_featureFlags outgoingCallCallerIDEnabled];
        if (!v78 || !v79)
        {
LABEL_78:
          if (([v8 isIncoming] & 1) != 0 || -[TUFeatureFlags outgoingCallCallerIDEnabled](self->_featureFlags, "outgoingCallCallerIDEnabled"))
          {
            v86 = [TUMetadataDestinationID metadataDestinationIDForCall:v8];
            if (v86)
            {
              v87 = objc_alloc_init(TUGeoLocationMetadataCacheDataProvider);
              v88 = [(TUGeoLocationMetadataCacheDataProvider *)v87 locationForMetadataIdentifier:v86];
              if (v88)
              {
                [(TUCallDisplayContext *)self setLabel:v88];
                [(TUCallDisplayContext *)self setLocation:v88];
              }
            }
          }

          goto LABEL_85;
        }

LABEL_71:
        v80 = +[TUNicknamesMetadataCacheDataProvider sharedInstance];
        v81 = [v80 fetchNicknameForHandleValue:v52];
        if (v81)
        {
          [(TUCallDisplayContext *)self setSuggestedName:v81];
          v82 = TUDefaultLog();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v101 = v81;
            *&v101[8] = 2112;
            *&v101[10] = v52;
            v83 = "SNAP Suggestions: found suggestedNickname: %@ %@";
            v84 = v82;
            v85 = 22;
LABEL_76:
            _os_log_impl(&dword_1956FD000, v84, OS_LOG_TYPE_DEFAULT, v83, buf, v85);
          }
        }

        else
        {
          v82 = TUDefaultLog();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v101 = v52;
            v83 = "SNAP Suggestions: No nicknames found for '%@'";
            v84 = v82;
            v85 = 12;
            goto LABEL_76;
          }
        }

        goto LABEL_78;
      }

      v62 = [v8 handle];
      v65 = [v62 normalizedValue];

      v52 = v65;
      v50 = v92;
    }

    if (v11)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
  }

LABEL_87:

  v89 = *MEMORY[0x1E69E9840];
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_2;
    block[3] = &unk_1E7424FD8;
    v8 = v3;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    dispatch_async(v4, block);
  }
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Found map item %@ for call: %@", &v9, 0x16u);
  }

  v5 = [*(a1 + 32) name];
  [*(a1 + 48) setName:v5];

  v6 = [*(a1 + 32) name];
  [*(a1 + 48) setMapName:v6];

  v7 = [*(a1 + 48) delegate];
  [v7 displayContextChanged:*(a1 + 48)];

  v8 = *MEMORY[0x1E69E9840];
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_43(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Already found call directory identification entry for call: %@, not populating business information.", buf, 0xCu);
    }
  }

  else if (v3)
  {
    v7 = [*(a1 + 40) serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_44;
    block[3] = &unk_1E7424FD8;
    v14 = v4;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = v8;
    v16 = v9;
    dispatch_async(v7, block);

    v5 = v14;
  }

  else
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) handle];
      v11 = [v10 value];
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "No business information found for '%@'", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_44(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Found business item %@ for call: %@", &v11, 0x16u);
  }

  v5 = [*(a1 + 32) name];
  [*(a1 + 48) setLabel:v5];

  v6 = [*(a1 + 32) name];
  [*(a1 + 48) setCompanyName:v6];

  v7 = [*(a1 + 32) department];
  [*(a1 + 48) setCompanyDepartment:v7];

  v8 = [*(a1 + 32) logoURL];
  [*(a1 + 48) setCompanyLogoURL:v8];

  v9 = [*(a1 + 48) delegate];
  [v9 displayContextChanged:*(a1 + 48)];

  v10 = *MEMORY[0x1E69E9840];
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_2_54;
    block[3] = &unk_1E7426328;
    v9 = v5;
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v14 = v9;
    v15 = v11;
    v16 = v10;
    dispatch_async(v8, block);

    v12 = v14;
LABEL_6:

    goto LABEL_7;
  }

  if (v6)
  {
    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_53_cold_1(a1, v7, v12);
    }

    goto LABEL_6;
  }

LABEL_7:
  [*(a1 + 32) setCallDirectoryManager:0];
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_2_54(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Found call directory identification entry %@", &v13, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v4 = [*(a1 + 32) localizedLabel];
  [*(a1 + 40) setCallDirectoryLabel:v4];

  v5 = [*(a1 + 32) localizedExtensionContainingAppName];
  [*(a1 + 40) setCallDirectoryLocalizedExtensionContainingAppName:v5];

  v6 = [*(a1 + 32) extensionIdentifier];
  [*(a1 + 40) setCallDirectoryExtensionIdentifier:v6];

  v7 = [*(a1 + 32) iconURL];
  [*(a1 + 40) setCompanyLogoURL:v7];

  v8 = [*(a1 + 32) type];
  v9 = *(a1 + 40);
  if (v8 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v8 == 2);
  }

  [*(a1 + 40) setCallDirectoryIdentityType:v10];
  v11 = [*(a1 + 40) delegate];
  [v11 displayContextChanged:*(a1 + 40)];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updatePredictedNameFromReceptionist:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUDynamicCallDisplayContext;
  [(TUCallDisplayContext *)&v5 updatePredictedNameFromReceptionist:a3];
  v4 = [(TUDynamicCallDisplayContext *)self delegate];
  [v4 displayContextChanged:self];
}

- (TUDynamicCallDisplayContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithCall:contactIdentifier:serialQueue:contactsDataSource:cacheOnly:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"call != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithCall:contactIdentifier:serialQueue:contactsDataSource:cacheOnly:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"serialQueue != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithCall:contactIdentifier:serialQueue:contactsDataSource:cacheOnly:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"contactsDataSource != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithCall:(uint64_t)a1 contactIdentifier:(NSObject *)a2 serialQueue:contactsDataSource:cacheOnly:.cold.4(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138543362;
  v7 = v4;
  _os_log_debug_impl(&dword_1956FD000, a2, OS_LOG_TYPE_DEBUG, "TUCall contacts data source is a '%{public}@'", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithDisplayContext:call:serialQueue:cacheOnly:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"call != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayContext:call:serialQueue:cacheOnly:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"serialQueue != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayContext:call:serialQueue:cacheOnly:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"displayContext != nil" object:? file:? lineNumber:? description:?];
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_53_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 40) handle];
  v6 = [v5 value];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_1956FD000, a3, OS_LOG_TYPE_ERROR, "Error retrieving call directory first identification entry for phone number %@: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end