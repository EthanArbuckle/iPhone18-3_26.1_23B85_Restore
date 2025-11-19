@interface TUConversationLink
+ (BOOL)checkMatchingConversationLinkCriteriaForURL:(id)a3;
+ (TUUserConfiguration)userConfiguration;
+ (id)baseURLComponentsForURL:(id)a3;
+ (id)baseURLStrings;
+ (id)baseURLs;
+ (id)conversationLinkComponentsFromURL:(id)a3;
+ (id)conversationLinkForURL:(id)a3;
+ (id)featureFlags;
+ (id)preferredBaseURL;
+ (id)preferredBaseURLString;
- (BOOL)allInvitedMembersInContactsChecking:(id)a3;
- (BOOL)canCreateConversations;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationLink:(id)a3;
- (BOOL)isEquivalentToConversationLink:(id)a3;
- (BOOL)isEquivalentToPseudonym:(id)a3 andPublicKey:(id)a4;
- (NSString)URLFragment;
- (NSString)displayName;
- (NSString)linkName;
- (NSURL)URL;
- (TUConversationLink)initWithCoder:(id)a3;
- (TUConversationLink)initWithDescriptor:(id)a3;
- (TUConversationLink)initWithPseudonym:(id)a3 publicKey:(id)a4 groupUUID:(id)a5 originatorHandle:(id)a6 creationDate:(id)a7 deletionDate:(id)a8 expirationDate:(id)a9 invitedMemberHandles:(id)a10 locallyCreated:(BOOL)a11 linkName:(id)a12 linkLifetimeScope:(int64_t)a13 deleteReason:(int64_t)a14;
- (id)base64PublicKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fetchedResults;
- (id)generateDisplayName;
- (id)unprefixedPseudonym;
- (id)valueForKey:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationLink

+ (id)baseURLStrings
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = @"facetime.apple.com/join";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  if (_TUIsInternalInstall())
  {
    v4 = [a1 userConfiguration];
    v5 = [v4 conversationLinkBaseURLString];

    if (v5)
    {
      v6 = [a1 userConfiguration];
      v7 = [v6 conversationLinkBaseURLString];
      v12 = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
      v9 = [v8 arrayByAddingObjectsFromArray:v3];

      v3 = v9;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (TUUserConfiguration)userConfiguration
{
  if (userConfiguration_onceToken != -1)
  {
    +[TUConversationLink userConfiguration];
  }

  v3 = userConfiguration_sUserConfiguration;

  return v3;
}

uint64_t __39__TUConversationLink_userConfiguration__block_invoke()
{
  userConfiguration_sUserConfiguration = objc_alloc_init(TUUserConfiguration);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)featureFlags
{
  if (featureFlags_onceToken_0 != -1)
  {
    +[TUConversationLink featureFlags];
  }

  v3 = featureFlags_flags;

  return v3;
}

uint64_t __34__TUConversationLink_featureFlags__block_invoke()
{
  featureFlags_flags = objc_alloc_init(TUFeatureFlags);

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)linkName
{
  v3 = +[TUConversationLink featureFlags];
  v4 = [v3 linkNamesEnabled];

  if (v4)
  {
    v5 = self->_linkName;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)displayName
{
  v3 = [(TUConversationLink *)self linkName];

  if (v3)
  {
    v4 = [(TUConversationLink *)self generateDisplayName];
    if ([v4 length])
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)generateDisplayName
{
  if ([(TUConversationLink *)self isLocallyCreated]&& ([(TUConversationLink *)self linkName], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(TUConversationLink *)self linkName];
  }

  else
  {
    v5 = [(TUConversationLink *)self fetchedResults];
    if ([(TUConversationLink *)self allInvitedMembersInContactsChecking:v5])
    {
      v4 = [(TUConversationLink *)self linkName];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)fetchedResults
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695CE28];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"com.apple.facetime";
  }

  v8 = [v3 tu_contactStoreConfigurationForBundleIdentifier:v7];

  v37 = v8;
  v36 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v8];
  v35 = [[TUContactsDataProvider alloc] initWithContactsDataSource:v36];
  v9 = [MEMORY[0x1E695DF70] array];
  if (fetchedResults__pred_IMPreferredAccountForServiceIMCore != -1)
  {
    [TUConversationLink fetchedResults];
  }

  v10 = CUTWeakLinkClass();
  v11 = CUTWeakLinkClass();
  if (v11)
  {
    v12 = [v11 sharedController];
    [v12 blockUntilConnected];
  }

  v13 = fetchedResults__IMPreferredAccountForService;
  v14 = [v10 facetimeService];
  v15 = v13();

  v16 = MEMORY[0x1E695DFD8];
  if (v15)
  {
    v17 = [v15 aliases];
    v18 = [v16 setWithArray:v17];
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = [(TUConversationLink *)self invitedMemberHandles];
  v20 = [v19 mutableCopy];

  v21 = [(TUConversationLink *)self originatorHandle];
  [v20 addObject:v21];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v39;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v38 + 1) + 8 * i);
        v28 = [v27 value];
        v29 = [v18 containsObject:v28];

        if ((v29 & 1) == 0)
        {
          v30 = [[TUContactsDataProviderFetchRequest alloc] initWithHandle:v27];
          [v9 addObject:v30];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v24);
  }

  v31 = [(TUContactsDataProvider *)v35 executeBatchFetchRequests:v9];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

void *__36__TUConversationLink_fetchedResults__block_invoke()
{
  result = CUTWeakLinkSymbol();
  fetchedResults__IMPreferredAccountForService = result;
  return result;
}

- (BOOL)allInvitedMembersInContactsChecking:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__TUConversationLink_allInvitedMembersInContactsChecking___block_invoke;
  v6[3] = &unk_1E7426280;
  v6[4] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __58__TUConversationLink_allInvitedMembersInContactsChecking___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 contacts];
  v7 = [v6 count];

  if (!v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)canCreateConversations
{
  if ([(TUConversationLink *)self isLocallyCreated])
  {
    return 1;
  }

  v4 = [(TUConversationLink *)self groupUUID];
  if (v4)
  {
    v5 = [(TUConversationLink *)self originatorHandle];
    if (v5)
    {
      v6 = [(TUConversationLink *)self invitedMemberHandles];
      v3 = v6 != 0;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TUConversationLink)initWithDescriptor:(id)a3
{
  v4 = a3;
  v20 = [v4 pseudonym];
  v19 = [v4 publicKey];
  v18 = [v4 groupUUID];
  v21 = [v4 originator];
  v17 = [v21 handle];
  v16 = [v4 creationDate];
  v5 = [v4 deletionDate];
  v6 = [v4 expirationDate];
  v7 = [v4 invitedHandles];
  v8 = [v4 privateKey];
  v9 = [v8 length] != 0;
  v10 = [v4 name];
  v11 = [v4 linkLifetimeScope];
  v12 = [v4 deleteReason];

  LOBYTE(v14) = v9;
  v15 = [(TUConversationLink *)self initWithPseudonym:v20 publicKey:v19 groupUUID:v18 originatorHandle:v17 creationDate:v16 deletionDate:v5 expirationDate:v6 invitedMemberHandles:v7 locallyCreated:v14 linkName:v10 linkLifetimeScope:v11 deleteReason:v12];

  return v15;
}

- (TUConversationLink)initWithPseudonym:(id)a3 publicKey:(id)a4 groupUUID:(id)a5 originatorHandle:(id)a6 creationDate:(id)a7 deletionDate:(id)a8 expirationDate:(id)a9 invitedMemberHandles:(id)a10 locallyCreated:(BOOL)a11 linkName:(id)a12 linkLifetimeScope:(int64_t)a13 deleteReason:(int64_t)a14
{
  v20 = a3;
  v21 = a4;
  v45 = a5;
  v44 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a12;
  if (v20 && ([v20 destinationIdIsPseudonym] & 1) != 0)
  {
    if (v21)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [TUConversationLink initWithPseudonym:a2 publicKey:self groupUUID:? originatorHandle:? creationDate:? deletionDate:? expirationDate:? invitedMemberHandles:? locallyCreated:? linkName:? linkLifetimeScope:? deleteReason:?];
    if (v21)
    {
LABEL_4:
      if ([v21 length])
      {
        goto LABEL_5;
      }
    }
  }

  [TUConversationLink initWithPseudonym:a2 publicKey:self groupUUID:? originatorHandle:? creationDate:? deletionDate:? expirationDate:? invitedMemberHandles:? locallyCreated:? linkName:? linkLifetimeScope:? deleteReason:?];
LABEL_5:
  v46.receiver = self;
  v46.super_class = TUConversationLink;
  v27 = [(TUConversationLink *)&v46 init];
  if (v27)
  {
    v28 = [v20 copy];
    pseudonym = v27->_pseudonym;
    v27->_pseudonym = v28;

    v30 = [v21 copy];
    publicKey = v27->_publicKey;
    v27->_publicKey = v30;

    objc_storeStrong(&v27->_groupUUID, a5);
    objc_storeStrong(&v27->_originatorHandle, a6);
    v32 = [v22 copy];
    creationDate = v27->_creationDate;
    v27->_creationDate = v32;

    v34 = [v23 copy];
    deletionDate = v27->_deletionDate;
    v27->_deletionDate = v34;

    v36 = [v24 copy];
    expirationDate = v27->_expirationDate;
    v27->_expirationDate = v36;

    v38 = [v25 copy];
    invitedMemberHandles = v27->_invitedMemberHandles;
    v27->_invitedMemberHandles = v38;

    v27->_locallyCreated = a11;
    v40 = [v26 copy];
    linkName = v27->_linkName;
    v27->_linkName = v40;

    v27->_linkLifetimeScope = a13;
    v27->_deleteReason = a14;
  }

  return v27;
}

+ (id)conversationLinkComponentsFromURL:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v45 = a1;
  if ([objc_opt_class() checkMatchingConversationLinkCriteriaForURL:v4])
  {
    v5 = MEMORY[0x1E696AF20];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [v4 fragment];
    v8 = [v6 stringWithFormat:@"?%@", v7];
    v9 = [v5 componentsWithString:v8];

    if (v9)
    {
      v44 = v4;
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v43 = v9;
      v11 = [v9 queryItems];
      v12 = [v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (!v12)
      {
        goto LABEL_30;
      }

      v13 = v12;
      v14 = *v47;
      while (1)
      {
        v15 = 0;
        do
        {
          if (*v47 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v46 + 1) + 8 * v15);
          v17 = [v16 name];
          v18 = [v17 isEqualToIgnoringCase:@"v"];

          if (v18)
          {
            v19 = [v16 value];
            v20 = [v19 integerValue];

            v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
            v22 = v10;
            v23 = v21;
            v24 = @"v";
LABEL_24:
            [v22 setObject:v23 forKey:v24];
            goto LABEL_25;
          }

          v25 = [v16 name];
          v26 = [v25 isEqualToIgnoringCase:@"p"];

          if (v26)
          {
            v27 = [v16 value];
            v21 = [v45 prefixedPseudonymFor:v27];

            if (!v21)
            {
              goto LABEL_25;
            }

            v22 = v10;
            v23 = v21;
            v24 = @"p";
            goto LABEL_24;
          }

          v28 = [v16 name];
          v29 = [v28 isEqualToIgnoringCase:@"k"];

          if (v29)
          {
            v30 = [v16 value];
            v21 = [v45 publicKeyForBase64EncodedString:v30];

            if (!v21)
            {
              goto LABEL_25;
            }

            v22 = v10;
            v23 = v21;
            v24 = @"k";
            goto LABEL_24;
          }

          v31 = [v16 name];
          v32 = [v31 isEqualToIgnoringCase:@"n"];

          if (v32)
          {
            v33 = TUDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = [v16 value];
              *buf = 138412290;
              v51 = v34;
              _os_log_impl(&dword_1956FD000, v33, OS_LOG_TYPE_DEFAULT, "Link had a nickname to pre-fill for the web (%@); we have no use for it, so ignoring", buf, 0xCu);
            }

            v21 = [v16 value];
            if (v21)
            {
              v22 = v10;
              v23 = v21;
              v24 = @"n";
              goto LABEL_24;
            }
          }

          else
          {
            v35 = [v16 name];
            v36 = [v35 isEqualToIgnoringCase:@"l"];

            if (v36)
            {
              v21 = [v16 value];
              if (!v21)
              {
                goto LABEL_25;
              }

              v22 = v10;
              v23 = v21;
              v24 = @"l";
              goto LABEL_24;
            }

            v21 = TUDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [v16 name];
              v38 = [v16 value];
              *buf = 138412546;
              v51 = v37;
              v52 = 2112;
              v53 = v38;
              _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring unrecognized conversation link fragment query item: %@=>%@", buf, 0x16u);
            }
          }

LABEL_25:

          ++v15;
        }

        while (v13 != v15);
        v39 = [v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
        v13 = v39;
        if (!v39)
        {
LABEL_30:

          v40 = [v10 copy];
          v9 = v43;
          v4 = v44;
          goto LABEL_33;
        }
      }
    }

    v40 = 0;
LABEL_33:
  }

  else
  {
    v40 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

+ (id)conversationLinkForURL:(id)a3
{
  v4 = a3;
  if (![objc_opt_class() checkMatchingConversationLinkCriteriaForURL:v4])
  {
    v12 = 0;
    goto LABEL_15;
  }

  v5 = [a1 conversationLinkComponentsFromURL:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"v"];
    v8 = [v7 integerValue];

    v9 = [v6 objectForKey:@"p"];
    v10 = [v6 objectForKey:@"k"];
    v11 = [v6 objectForKey:@"l"];
    if (!v8)
    {
      goto LABEL_12;
    }

    v12 = 0;
    if ([objc_opt_class() conversationLinkVersion] < v8 || !v9 || !v10)
    {
      goto LABEL_13;
    }

    if ([v9 length] && objc_msgSend(v10, "length"))
    {
      LOBYTE(v14) = 0;
      v12 = [[TUConversationLink alloc] initWithPseudonym:v9 publicKey:v10 groupUUID:0 originatorHandle:0 creationDate:0 deletionDate:0 expirationDate:0 invitedMemberHandles:0 locallyCreated:v14 linkName:v11 linkLifetimeScope:0 deleteReason:0];
    }

    else
    {
LABEL_12:
      v12 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:

LABEL_15:

  return v12;
}

- (NSURL)URL
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(TUConversationLink *)self pseudonym];
  if (![v3 length])
  {

    goto LABEL_6;
  }

  v4 = [(TUConversationLink *)self publicKey];
  v5 = [v4 length];

  if (!v5)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_11;
  }

  v6 = [(TUConversationLink *)self URLFragment];
  if ([v6 length])
  {
    v7 = objc_opt_class();
    v8 = [objc_opt_class() preferredBaseURL];
    v9 = [v7 baseURLComponentsForURL:v8];

    [v9 setFragment:v6];
    v10 = [v9 URL];
  }

  else
  {
    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = self;
      _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Cannot return URL; missing URL fragment for %@", &v15, 0xCu);
    }

    v10 = 0;
  }

  v11 = v10;

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)baseURLs
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a1 baseURLStrings];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = MEMORY[0x1E695DFF8];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", @"https", *(*(&v15 + 1) + 8 * i)];
        v10 = [v8 URLWithString:v9];

        if (v10)
        {
          [v14 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = [v14 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)preferredBaseURLString
{
  v2 = [objc_opt_class() baseURLStrings];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [objc_opt_class() baseURLStrings];
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)preferredBaseURL
{
  v2 = [objc_opt_class() baseURLs];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [objc_opt_class() baseURLs];
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)baseURLComponentsForURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:v3 resolvingAgainstBaseURL:0];
  if (!v4)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(TUConversationLink *)v3 baseURLComponentsForURL:v5];
    }
  }

  return v4;
}

- (NSString)URLFragment
{
  v24[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(objc_opt_class(), "conversationLinkVersion")];
  v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v5 = [MEMORY[0x1E696AF60] queryItemWithName:@"v" value:v3];
  v24[0] = v5;
  v6 = MEMORY[0x1E696AF60];
  v7 = [(TUConversationLink *)self unprefixedPseudonym];
  v8 = [v6 queryItemWithName:@"p" value:v7];
  v24[1] = v8;
  v9 = MEMORY[0x1E696AF60];
  v10 = [(TUConversationLink *)self base64PublicKey];
  v11 = [v9 queryItemWithName:@"k" value:v10];
  v24[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];

  v13 = [(TUConversationLink *)self linkName];

  if (v13)
  {
    v14 = MEMORY[0x1E696AF60];
    v15 = [(TUConversationLink *)self linkName];
    v16 = [v14 queryItemWithName:@"l" value:v15];

    v17 = [v12 mutableCopy];
    [v17 addObject:v16];

    v12 = v17;
  }

  [v4 setQueryItems:v12];
  v18 = [v4 URL];

  if (v18)
  {
    v19 = [v4 URL];
    v20 = [v19 absoluteString];
    v18 = [v20 stringByReplacingOccurrencesOfString:@"?" withString:&stru_1F098C218];
  }

  v21 = [v18 stringByRemovingPercentEncoding];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)unprefixedPseudonym
{
  v2 = [(TUConversationLink *)self pseudonym];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"pseud:" withString:&stru_1F098C218];

  return v3;
}

- (id)base64PublicKey
{
  v2 = [(TUConversationLink *)self publicKey];
  v3 = [v2 tu_URLSafeBase64EncodedString];

  return v3;
}

+ (BOOL)checkMatchingConversationLinkCriteriaForURL:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v4 = [v27 fragment];
  if (v4 && (v5 = v4, [a1 baseURLs], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [a1 baseURLs];
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    v10 = v27;
    if (v9)
    {
      v11 = v9;
      v12 = *v31;
      v26 = *v31;
      do
      {
        v13 = 0;
        v29 = v11;
        do
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [a1 baseURLComponentsForURL:{*(*(&v30 + 1) + 8 * v13), v26}];
          v15 = [v14 scheme];
          v16 = [v10 scheme];
          if (!TUStringsAreCaseInsensitiveEqualOrNil(v15, v16))
          {
            goto LABEL_13;
          }

          v17 = [v14 host];
          v18 = [v10 host];
          if (!TUStringsAreCaseInsensitiveEqualOrNil(v17, v18))
          {

            v11 = v29;
LABEL_13:

            goto LABEL_14;
          }

          [v14 path];
          v19 = v8;
          v21 = v20 = a1;
          v22 = [v10 path];
          v28 = TUStringsAreCaseInsensitiveEqualOrNil(v21, v22);

          v10 = v27;
          a1 = v20;
          v8 = v19;
          v12 = v26;

          v11 = v29;
          if (v28)
          {
            v23 = 1;
            goto LABEL_18;
          }

LABEL_14:
          ++v13;
        }

        while (v11 != v13);
        v11 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v11);
    }

    v23 = 0;
LABEL_18:
  }

  else
  {
    v23 = 0;
    v10 = v27;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationLink *)self pseudonym];
  [v3 appendFormat:@" pseudonym=%@", v4];

  v5 = [(TUConversationLink *)self publicKey];
  [v3 appendFormat:@" publicKey=%@", v5];

  v6 = [(TUConversationLink *)self URL];
  [v3 appendFormat:@" URL=%@", v6];

  v7 = [(TUConversationLink *)self linkName];
  [v3 appendFormat:@" linkName=%@", v7];

  [v3 appendFormat:@" isLocallyCreated=%d", -[TUConversationLink isLocallyCreated](self, "isLocallyCreated")];
  [v3 appendFormat:@" linkLifetimeScope=%ld", -[TUConversationLink linkLifetimeScope](self, "linkLifetimeScope")];
  v8 = [(TUConversationLink *)self canCreateConversations];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  [v3 appendFormat:@" canCreateConversations=%@", v9];
  v10 = [(TUConversationLink *)self deletionDate];
  [v3 appendFormat:@" deletionDate=%@", v10];

  [v3 appendFormat:@" deleteReason=%ld", -[TUConversationLink deleteReason](self, "deleteReason")];
  v11 = objc_opt_self();
  v12 = [v11 groupUUID];

  if (v12)
  {
    v13 = objc_opt_self();
    v14 = [v13 groupUUID];
    [v3 appendFormat:@" self.groupUUID=%@", v14];
  }

  v15 = objc_opt_self();
  v16 = [v15 originatorHandle];

  if (v16)
  {
    v17 = objc_opt_self();
    v18 = [v17 originatorHandle];
    [v3 appendFormat:@" self.originatorHandle=%@", v18];
  }

  v19 = objc_opt_self();
  v20 = [v19 invitedMemberHandles];

  if (v20)
  {
    v21 = objc_opt_self();
    v22 = [v21 invitedMemberHandles];
    [v3 appendFormat:@" self.invitedMemberHandles=%@", v22];
  }

  [v3 appendString:@">"];
  v23 = [v3 copy];

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationLink *)self isEqualToConversationLink:v4];

  return v5;
}

- (BOOL)isEquivalentToConversationLink:(id)a3
{
  v4 = a3;
  v5 = [v4 pseudonym];
  v6 = [v4 publicKey];

  LOBYTE(self) = [(TUConversationLink *)self isEquivalentToPseudonym:v5 andPublicKey:v6];
  return self;
}

- (BOOL)isEquivalentToPseudonym:(id)a3 andPublicKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUConversationLink *)self pseudonym];
  v9 = TUStringsAreEqualOrNil(v8, v7);

  if (v9)
  {
    v10 = [(TUConversationLink *)self publicKey];
    v11 = TUObjectsAreEqualOrNil(v10, v6);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualToConversationLink:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationLink *)self pseudonym];
  v6 = [v4 pseudonym];
  if (TUStringsAreEqualOrNil(v5, v6))
  {
    v7 = [(TUConversationLink *)self publicKey];
    v8 = [v4 publicKey];
    if (TUObjectsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUConversationLink *)self groupUUID];
      v10 = [v4 groupUUID];
      if (TUObjectsAreEqualOrNil(v9, v10))
      {
        v11 = [(TUConversationLink *)self originatorHandle];
        v12 = [v4 originatorHandle];
        if (TUObjectsAreEqualOrNil(v11, v12))
        {
          v30 = v11;
          v13 = [(TUConversationLink *)self invitedMemberHandles];
          [v4 invitedMemberHandles];
          v29 = v31 = v13;
          if (TUObjectsAreEqualOrNil(v13, v29))
          {
            v14 = [(TUConversationLink *)self creationDate];
            v27 = [v4 creationDate];
            v28 = v14;
            if (TUObjectsAreEqualOrNil(v14, v27))
            {
              v15 = [(TUConversationLink *)self deletionDate];
              v25 = [v4 deletionDate];
              v26 = v15;
              if (TUObjectsAreEqualOrNil(v15, v25))
              {
                v16 = [(TUConversationLink *)self linkName];
                v23 = [v4 linkName];
                v24 = v16;
                v17 = TUObjectsAreEqualOrNil(v16, v23);
                v11 = v30;
                if (v17 && (v21 = -[TUConversationLink isLocallyCreated](self, "isLocallyCreated"), v21 == [v4 isLocallyCreated]) && (v22 = -[TUConversationLink linkLifetimeScope](self, "linkLifetimeScope"), v22 == objc_msgSend(v4, "linkLifetimeScope")))
                {
                  v18 = [(TUConversationLink *)self deleteReason];
                  v19 = v18 == [v4 deleteReason];
                }

                else
                {
                  v19 = 0;
                }
              }

              else
              {
                v19 = 0;
                v11 = v30;
              }
            }

            else
            {
              v19 = 0;
              v11 = v30;
            }
          }

          else
          {
            v19 = 0;
            v11 = v30;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  v23 = [(TUConversationLink *)self pseudonym];
  v3 = [v23 hash];
  v4 = [(TUConversationLink *)self publicKey];
  v5 = [v4 hash] ^ v3;
  v6 = [(TUConversationLink *)self groupUUID];
  v7 = [v6 hash];
  v8 = [(TUConversationLink *)self originatorHandle];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(TUConversationLink *)self invitedMemberHandles];
  v11 = [v10 hash];
  v12 = [(TUConversationLink *)self creationDate];
  v13 = v11 ^ [v12 hash];
  v14 = [(TUConversationLink *)self deletionDate];
  v15 = v9 ^ v13 ^ [v14 hash];
  v16 = [(TUConversationLink *)self linkName];
  v17 = [v16 hash];
  v18 = [(TUConversationLink *)self isLocallyCreated];
  v19 = 1237;
  if (v18)
  {
    v19 = 1231;
  }

  v20 = v15 ^ v17 ^ v19 ^ [(TUConversationLink *)self linkLifetimeScope];
  v21 = [(TUConversationLink *)self deleteReason];

  return v20 ^ v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithPseudonym:publicKey:groupUUID:originatorHandle:", self->_pseudonym, self->_publicKey, self->_groupUUID, self->_originatorHandle}];
  v6 = [(NSSet *)self->_invitedMemberHandles copyWithZone:a3];
  v7 = *(v5 + 104);
  *(v5 + 104) = v6;

  v8 = [(NSDate *)self->_creationDate copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSDate *)self->_deletionDate copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_linkName copyWithZone:a3];
  v13 = *(v5 + 88);
  *(v5 + 88) = v12;

  *(v5 + 8) = [(TUConversationLink *)self isLocallyCreated];
  *(v5 + 64) = [(TUConversationLink *)self linkLifetimeScope];
  *(v5 + 72) = [(TUConversationLink *)self deleteReason];
  return v5;
}

- (TUConversationLink)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_pseudonym);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_publicKey);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_groupUUID);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_originatorHandle);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

  v17 = [(TUConversationLink *)self initWithPseudonym:v7 publicKey:v10 groupUUID:v13 originatorHandle:v16];
  if (v17)
  {
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = NSStringFromSelector(sel_invitedMemberHandles);
    v22 = [v4 decodeObjectOfClasses:v20 forKey:v21];
    invitedMemberHandles = v17->_invitedMemberHandles;
    v17->_invitedMemberHandles = v22;

    v24 = objc_opt_class();
    v25 = NSStringFromSelector(sel_creationDate);
    v26 = [v4 decodeObjectOfClass:v24 forKey:v25];
    creationDate = v17->_creationDate;
    v17->_creationDate = v26;

    v28 = objc_opt_class();
    v29 = NSStringFromSelector(sel_deletionDate);
    v30 = [v4 decodeObjectOfClass:v28 forKey:v29];
    deletionDate = v17->_deletionDate;
    v17->_deletionDate = v30;

    v32 = objc_opt_class();
    v33 = NSStringFromSelector(sel_linkName);
    v34 = [v4 decodeObjectOfClass:v32 forKey:v33];
    linkName = v17->_linkName;
    v17->_linkName = v34;

    v36 = NSStringFromSelector(sel_isLocallyCreated);
    v17->_locallyCreated = [v4 decodeBoolForKey:v36];

    v37 = NSStringFromSelector(sel_linkLifetimeScope);
    v17->_linkLifetimeScope = [v4 decodeIntegerForKey:v37];

    v38 = NSStringFromSelector(sel_deleteReason);
    v17->_deleteReason = [v4 decodeIntegerForKey:v38];
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  pseudonym = self->_pseudonym;
  v5 = a3;
  v6 = NSStringFromSelector(sel_pseudonym);
  [v5 encodeObject:pseudonym forKey:v6];

  publicKey = self->_publicKey;
  v8 = NSStringFromSelector(sel_publicKey);
  [v5 encodeObject:publicKey forKey:v8];

  groupUUID = self->_groupUUID;
  v10 = NSStringFromSelector(sel_groupUUID);
  [v5 encodeObject:groupUUID forKey:v10];

  originatorHandle = self->_originatorHandle;
  v12 = NSStringFromSelector(sel_originatorHandle);
  [v5 encodeObject:originatorHandle forKey:v12];

  invitedMemberHandles = self->_invitedMemberHandles;
  v14 = NSStringFromSelector(sel_invitedMemberHandles);
  [v5 encodeObject:invitedMemberHandles forKey:v14];

  creationDate = self->_creationDate;
  v16 = NSStringFromSelector(sel_creationDate);
  [v5 encodeObject:creationDate forKey:v16];

  deletionDate = self->_deletionDate;
  v18 = NSStringFromSelector(sel_deletionDate);
  [v5 encodeObject:deletionDate forKey:v18];

  linkName = self->_linkName;
  v20 = NSStringFromSelector(sel_linkName);
  [v5 encodeObject:linkName forKey:v20];

  locallyCreated = self->_locallyCreated;
  v22 = NSStringFromSelector(sel_isLocallyCreated);
  [v5 encodeBool:locallyCreated forKey:v22];

  linkLifetimeScope = self->_linkLifetimeScope;
  v24 = NSStringFromSelector(sel_linkLifetimeScope);
  [v5 encodeInteger:linkLifetimeScope forKey:v24];

  deleteReason = self->_deleteReason;
  v26 = NSStringFromSelector(sel_deleteReason);
  [v5 encodeInteger:deleteReason forKey:v26];
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"pseudonym"])
  {
    v5 = [(TUConversationLink *)self pseudonym];
LABEL_3:
    v6 = v5;
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"publicKey"])
  {
    v7 = [(TUConversationLink *)self publicKey];
    v8 = [v7 base64EncodedStringWithOptions:0];
LABEL_8:
    v6 = v8;

    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"groupUUID"])
  {
    v7 = [(TUConversationLink *)self groupUUID];
    v8 = [v7 UUIDString];
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"originatorHandle"])
  {
    v5 = [(TUConversationLink *)self originatorHandle];
    goto LABEL_3;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)initWithPseudonym:(uint64_t)a1 publicKey:(uint64_t)a2 groupUUID:originatorHandle:creationDate:deletionDate:expirationDate:invitedMemberHandles:locallyCreated:linkName:linkLifetimeScope:deleteReason:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TUConversationLink.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"pseudonym != nil && pseudonym.destinationIdIsPseudonym"}];
}

- (void)initWithPseudonym:(uint64_t)a1 publicKey:(uint64_t)a2 groupUUID:originatorHandle:creationDate:deletionDate:expirationDate:invitedMemberHandles:locallyCreated:linkName:linkLifetimeScope:deleteReason:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TUConversationLink.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"publicKey != nil && publicKey.length >= 1"}];
}

+ (void)baseURLComponentsForURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Failed to parse URL components for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end