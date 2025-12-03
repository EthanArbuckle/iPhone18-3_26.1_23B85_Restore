@interface TUConversationLink
+ (BOOL)checkMatchingConversationLinkCriteriaForURL:(id)l;
+ (TUUserConfiguration)userConfiguration;
+ (id)baseURLComponentsForURL:(id)l;
+ (id)baseURLStrings;
+ (id)baseURLs;
+ (id)conversationLinkComponentsFromURL:(id)l;
+ (id)conversationLinkForURL:(id)l;
+ (id)featureFlags;
+ (id)preferredBaseURL;
+ (id)preferredBaseURLString;
- (BOOL)allInvitedMembersInContactsChecking:(id)checking;
- (BOOL)canCreateConversations;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationLink:(id)link;
- (BOOL)isEquivalentToConversationLink:(id)link;
- (BOOL)isEquivalentToPseudonym:(id)pseudonym andPublicKey:(id)key;
- (NSString)URLFragment;
- (NSString)displayName;
- (NSString)linkName;
- (NSURL)URL;
- (TUConversationLink)initWithCoder:(id)coder;
- (TUConversationLink)initWithDescriptor:(id)descriptor;
- (TUConversationLink)initWithPseudonym:(id)pseudonym publicKey:(id)key groupUUID:(id)d originatorHandle:(id)handle creationDate:(id)date deletionDate:(id)deletionDate expirationDate:(id)expirationDate invitedMemberHandles:(id)self0 locallyCreated:(BOOL)self1 linkName:(id)self2 linkLifetimeScope:(int64_t)self3 deleteReason:(int64_t)self4;
- (id)base64PublicKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fetchedResults;
- (id)generateDisplayName;
- (id)unprefixedPseudonym;
- (id)valueForKey:(id)key;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationLink

+ (id)baseURLStrings
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = @"facetime.apple.com/join";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  if (_TUIsInternalInstall())
  {
    userConfiguration = [self userConfiguration];
    conversationLinkBaseURLString = [userConfiguration conversationLinkBaseURLString];

    if (conversationLinkBaseURLString)
    {
      userConfiguration2 = [self userConfiguration];
      conversationLinkBaseURLString2 = [userConfiguration2 conversationLinkBaseURLString];
      v12 = conversationLinkBaseURLString2;
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
  linkNamesEnabled = [v3 linkNamesEnabled];

  if (linkNamesEnabled)
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
  linkName = [(TUConversationLink *)self linkName];

  if (linkName)
  {
    generateDisplayName = [(TUConversationLink *)self generateDisplayName];
    if ([generateDisplayName length])
    {
      linkName = generateDisplayName;
    }

    else
    {
      linkName = 0;
    }
  }

  return linkName;
}

- (id)generateDisplayName
{
  if ([(TUConversationLink *)self isLocallyCreated]&& ([(TUConversationLink *)self linkName], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    linkName = [(TUConversationLink *)self linkName];
  }

  else
  {
    fetchedResults = [(TUConversationLink *)self fetchedResults];
    if ([(TUConversationLink *)self allInvitedMembersInContactsChecking:fetchedResults])
    {
      linkName = [(TUConversationLink *)self linkName];
    }

    else
    {
      linkName = 0;
    }
  }

  return linkName;
}

- (id)fetchedResults
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695CE28];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v7 = bundleIdentifier;
  }

  else
  {
    v7 = @"com.apple.facetime";
  }

  v8 = [v3 tu_contactStoreConfigurationForBundleIdentifier:v7];

  v37 = v8;
  v36 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v8];
  v35 = [[TUContactsDataProvider alloc] initWithContactsDataSource:v36];
  array = [MEMORY[0x1E695DF70] array];
  if (fetchedResults__pred_IMPreferredAccountForServiceIMCore != -1)
  {
    [TUConversationLink fetchedResults];
  }

  v10 = CUTWeakLinkClass();
  v11 = CUTWeakLinkClass();
  if (v11)
  {
    sharedController = [v11 sharedController];
    [sharedController blockUntilConnected];
  }

  v13 = fetchedResults__IMPreferredAccountForService;
  facetimeService = [v10 facetimeService];
  v15 = v13();

  v16 = MEMORY[0x1E695DFD8];
  if (v15)
  {
    aliases = [v15 aliases];
    v18 = [v16 setWithArray:aliases];
  }

  else
  {
    v18 = objc_opt_new();
  }

  invitedMemberHandles = [(TUConversationLink *)self invitedMemberHandles];
  v20 = [invitedMemberHandles mutableCopy];

  originatorHandle = [(TUConversationLink *)self originatorHandle];
  [v20 addObject:originatorHandle];

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
        value = [v27 value];
        v29 = [v18 containsObject:value];

        if ((v29 & 1) == 0)
        {
          v30 = [[TUContactsDataProviderFetchRequest alloc] initWithHandle:v27];
          [array addObject:v30];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v24);
  }

  v31 = [(TUContactsDataProvider *)v35 executeBatchFetchRequests:array];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

void *__36__TUConversationLink_fetchedResults__block_invoke()
{
  result = CUTWeakLinkSymbol();
  fetchedResults__IMPreferredAccountForService = result;
  return result;
}

- (BOOL)allInvitedMembersInContactsChecking:(id)checking
{
  checkingCopy = checking;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__TUConversationLink_allInvitedMembersInContactsChecking___block_invoke;
  v6[3] = &unk_1E7426280;
  v6[4] = &v7;
  [checkingCopy enumerateKeysAndObjectsUsingBlock:v6];
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

  groupUUID = [(TUConversationLink *)self groupUUID];
  if (groupUUID)
  {
    originatorHandle = [(TUConversationLink *)self originatorHandle];
    if (originatorHandle)
    {
      invitedMemberHandles = [(TUConversationLink *)self invitedMemberHandles];
      v3 = invitedMemberHandles != 0;
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

- (TUConversationLink)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  pseudonym = [descriptorCopy pseudonym];
  publicKey = [descriptorCopy publicKey];
  groupUUID = [descriptorCopy groupUUID];
  originator = [descriptorCopy originator];
  handle = [originator handle];
  creationDate = [descriptorCopy creationDate];
  deletionDate = [descriptorCopy deletionDate];
  expirationDate = [descriptorCopy expirationDate];
  invitedHandles = [descriptorCopy invitedHandles];
  privateKey = [descriptorCopy privateKey];
  v9 = [privateKey length] != 0;
  name = [descriptorCopy name];
  linkLifetimeScope = [descriptorCopy linkLifetimeScope];
  deleteReason = [descriptorCopy deleteReason];

  LOBYTE(v14) = v9;
  v15 = [(TUConversationLink *)self initWithPseudonym:pseudonym publicKey:publicKey groupUUID:groupUUID originatorHandle:handle creationDate:creationDate deletionDate:deletionDate expirationDate:expirationDate invitedMemberHandles:invitedHandles locallyCreated:v14 linkName:name linkLifetimeScope:linkLifetimeScope deleteReason:deleteReason];

  return v15;
}

- (TUConversationLink)initWithPseudonym:(id)pseudonym publicKey:(id)key groupUUID:(id)d originatorHandle:(id)handle creationDate:(id)date deletionDate:(id)deletionDate expirationDate:(id)expirationDate invitedMemberHandles:(id)self0 locallyCreated:(BOOL)self1 linkName:(id)self2 linkLifetimeScope:(int64_t)self3 deleteReason:(int64_t)self4
{
  pseudonymCopy = pseudonym;
  keyCopy = key;
  dCopy = d;
  handleCopy = handle;
  dateCopy = date;
  deletionDateCopy = deletionDate;
  expirationDateCopy = expirationDate;
  handlesCopy = handles;
  nameCopy = name;
  if (pseudonymCopy && ([pseudonymCopy destinationIdIsPseudonym] & 1) != 0)
  {
    if (keyCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [TUConversationLink initWithPseudonym:a2 publicKey:self groupUUID:? originatorHandle:? creationDate:? deletionDate:? expirationDate:? invitedMemberHandles:? locallyCreated:? linkName:? linkLifetimeScope:? deleteReason:?];
    if (keyCopy)
    {
LABEL_4:
      if ([keyCopy length])
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
    v28 = [pseudonymCopy copy];
    pseudonym = v27->_pseudonym;
    v27->_pseudonym = v28;

    v30 = [keyCopy copy];
    publicKey = v27->_publicKey;
    v27->_publicKey = v30;

    objc_storeStrong(&v27->_groupUUID, d);
    objc_storeStrong(&v27->_originatorHandle, handle);
    v32 = [dateCopy copy];
    creationDate = v27->_creationDate;
    v27->_creationDate = v32;

    v34 = [deletionDateCopy copy];
    deletionDate = v27->_deletionDate;
    v27->_deletionDate = v34;

    v36 = [expirationDateCopy copy];
    expirationDate = v27->_expirationDate;
    v27->_expirationDate = v36;

    v38 = [handlesCopy copy];
    invitedMemberHandles = v27->_invitedMemberHandles;
    v27->_invitedMemberHandles = v38;

    v27->_locallyCreated = created;
    v40 = [nameCopy copy];
    linkName = v27->_linkName;
    v27->_linkName = v40;

    v27->_linkLifetimeScope = scope;
    v27->_deleteReason = reason;
  }

  return v27;
}

+ (id)conversationLinkComponentsFromURL:(id)l
{
  v55 = *MEMORY[0x1E69E9840];
  lCopy = l;
  selfCopy = self;
  if ([objc_opt_class() checkMatchingConversationLinkCriteriaForURL:lCopy])
  {
    v5 = MEMORY[0x1E696AF20];
    v6 = MEMORY[0x1E696AEC0];
    fragment = [lCopy fragment];
    v8 = [v6 stringWithFormat:@"?%@", fragment];
    v9 = [v5 componentsWithString:v8];

    if (v9)
    {
      v44 = lCopy;
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v43 = v9;
      queryItems = [v9 queryItems];
      v12 = [queryItems countByEnumeratingWithState:&v46 objects:v54 count:16];
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
            objc_enumerationMutation(queryItems);
          }

          v16 = *(*(&v46 + 1) + 8 * v15);
          name = [v16 name];
          v18 = [name isEqualToIgnoringCase:@"v"];

          if (v18)
          {
            value = [v16 value];
            integerValue = [value integerValue];

            value5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:integerValue];
            v22 = v10;
            v23 = value5;
            v24 = @"v";
LABEL_24:
            [v22 setObject:v23 forKey:v24];
            goto LABEL_25;
          }

          name2 = [v16 name];
          v26 = [name2 isEqualToIgnoringCase:@"p"];

          if (v26)
          {
            value2 = [v16 value];
            value5 = [selfCopy prefixedPseudonymFor:value2];

            if (!value5)
            {
              goto LABEL_25;
            }

            v22 = v10;
            v23 = value5;
            v24 = @"p";
            goto LABEL_24;
          }

          name3 = [v16 name];
          v29 = [name3 isEqualToIgnoringCase:@"k"];

          if (v29)
          {
            value3 = [v16 value];
            value5 = [selfCopy publicKeyForBase64EncodedString:value3];

            if (!value5)
            {
              goto LABEL_25;
            }

            v22 = v10;
            v23 = value5;
            v24 = @"k";
            goto LABEL_24;
          }

          name4 = [v16 name];
          v32 = [name4 isEqualToIgnoringCase:@"n"];

          if (v32)
          {
            v33 = TUDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              value4 = [v16 value];
              *buf = 138412290;
              v51 = value4;
              _os_log_impl(&dword_1956FD000, v33, OS_LOG_TYPE_DEFAULT, "Link had a nickname to pre-fill for the web (%@); we have no use for it, so ignoring", buf, 0xCu);
            }

            value5 = [v16 value];
            if (value5)
            {
              v22 = v10;
              v23 = value5;
              v24 = @"n";
              goto LABEL_24;
            }
          }

          else
          {
            name5 = [v16 name];
            v36 = [name5 isEqualToIgnoringCase:@"l"];

            if (v36)
            {
              value5 = [v16 value];
              if (!value5)
              {
                goto LABEL_25;
              }

              v22 = v10;
              v23 = value5;
              v24 = @"l";
              goto LABEL_24;
            }

            value5 = TUDefaultLog();
            if (os_log_type_enabled(value5, OS_LOG_TYPE_DEFAULT))
            {
              name6 = [v16 name];
              value6 = [v16 value];
              *buf = 138412546;
              v51 = name6;
              v52 = 2112;
              v53 = value6;
              _os_log_impl(&dword_1956FD000, value5, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring unrecognized conversation link fragment query item: %@=>%@", buf, 0x16u);
            }
          }

LABEL_25:

          ++v15;
        }

        while (v13 != v15);
        v39 = [queryItems countByEnumeratingWithState:&v46 objects:v54 count:16];
        v13 = v39;
        if (!v39)
        {
LABEL_30:

          v40 = [v10 copy];
          v9 = v43;
          lCopy = v44;
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

+ (id)conversationLinkForURL:(id)l
{
  lCopy = l;
  if (![objc_opt_class() checkMatchingConversationLinkCriteriaForURL:lCopy])
  {
    v12 = 0;
    goto LABEL_15;
  }

  v5 = [self conversationLinkComponentsFromURL:lCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"v"];
    integerValue = [v7 integerValue];

    v9 = [v6 objectForKey:@"p"];
    v10 = [v6 objectForKey:@"k"];
    v11 = [v6 objectForKey:@"l"];
    if (!integerValue)
    {
      goto LABEL_12;
    }

    v12 = 0;
    if ([objc_opt_class() conversationLinkVersion] < integerValue || !v9 || !v10)
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
  pseudonym = [(TUConversationLink *)self pseudonym];
  if (![pseudonym length])
  {

    goto LABEL_6;
  }

  publicKey = [(TUConversationLink *)self publicKey];
  v5 = [publicKey length];

  if (!v5)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_11;
  }

  uRLFragment = [(TUConversationLink *)self URLFragment];
  if ([uRLFragment length])
  {
    v7 = objc_opt_class();
    preferredBaseURL = [objc_opt_class() preferredBaseURL];
    v9 = [v7 baseURLComponentsForURL:preferredBaseURL];

    [v9 setFragment:uRLFragment];
    v10 = [v9 URL];
  }

  else
  {
    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      selfCopy = self;
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
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  baseURLStrings = [self baseURLStrings];
  v4 = [baseURLStrings countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(baseURLStrings);
        }

        v8 = MEMORY[0x1E695DFF8];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", @"https", *(*(&v15 + 1) + 8 * i)];
        v10 = [v8 URLWithString:v9];

        if (v10)
        {
          [array addObject:v10];
        }
      }

      v5 = [baseURLStrings countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = [array copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)preferredBaseURLString
{
  baseURLStrings = [objc_opt_class() baseURLStrings];
  v3 = [baseURLStrings count];

  if (v3)
  {
    baseURLStrings2 = [objc_opt_class() baseURLStrings];
    v5 = [baseURLStrings2 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)preferredBaseURL
{
  baseURLs = [objc_opt_class() baseURLs];
  v3 = [baseURLs count];

  if (v3)
  {
    baseURLs2 = [objc_opt_class() baseURLs];
    v5 = [baseURLs2 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)baseURLComponentsForURL:(id)l
{
  lCopy = l;
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  if (!v4)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(TUConversationLink *)lCopy baseURLComponentsForURL:v5];
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
  unprefixedPseudonym = [(TUConversationLink *)self unprefixedPseudonym];
  v8 = [v6 queryItemWithName:@"p" value:unprefixedPseudonym];
  v24[1] = v8;
  v9 = MEMORY[0x1E696AF60];
  base64PublicKey = [(TUConversationLink *)self base64PublicKey];
  v11 = [v9 queryItemWithName:@"k" value:base64PublicKey];
  v24[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];

  linkName = [(TUConversationLink *)self linkName];

  if (linkName)
  {
    v14 = MEMORY[0x1E696AF60];
    linkName2 = [(TUConversationLink *)self linkName];
    v16 = [v14 queryItemWithName:@"l" value:linkName2];

    v17 = [v12 mutableCopy];
    [v17 addObject:v16];

    v12 = v17;
  }

  [v4 setQueryItems:v12];
  v18 = [v4 URL];

  if (v18)
  {
    v19 = [v4 URL];
    absoluteString = [v19 absoluteString];
    v18 = [absoluteString stringByReplacingOccurrencesOfString:@"?" withString:&stru_1F098C218];
  }

  stringByRemovingPercentEncoding = [v18 stringByRemovingPercentEncoding];

  v22 = *MEMORY[0x1E69E9840];

  return stringByRemovingPercentEncoding;
}

- (id)unprefixedPseudonym
{
  pseudonym = [(TUConversationLink *)self pseudonym];
  v3 = [pseudonym stringByReplacingOccurrencesOfString:@"pseud:" withString:&stru_1F098C218];

  return v3;
}

- (id)base64PublicKey
{
  publicKey = [(TUConversationLink *)self publicKey];
  tu_URLSafeBase64EncodedString = [publicKey tu_URLSafeBase64EncodedString];

  return tu_URLSafeBase64EncodedString;
}

+ (BOOL)checkMatchingConversationLinkCriteriaForURL:(id)l
{
  v35 = *MEMORY[0x1E69E9840];
  lCopy = l;
  fragment = [lCopy fragment];
  if (fragment && (v5 = fragment, [self baseURLs], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    baseURLs = [self baseURLs];
    v9 = [baseURLs countByEnumeratingWithState:&v30 objects:v34 count:16];
    v10 = lCopy;
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
            objc_enumerationMutation(baseURLs);
          }

          v14 = [self baseURLComponentsForURL:{*(*(&v30 + 1) + 8 * v13), v26}];
          scheme = [v14 scheme];
          scheme2 = [v10 scheme];
          if (!TUStringsAreCaseInsensitiveEqualOrNil(scheme, scheme2))
          {
            goto LABEL_13;
          }

          host = [v14 host];
          host2 = [v10 host];
          if (!TUStringsAreCaseInsensitiveEqualOrNil(host, host2))
          {

            v11 = v29;
LABEL_13:

            goto LABEL_14;
          }

          [v14 path];
          v19 = baseURLs;
          v21 = v20 = self;
          path = [v10 path];
          v28 = TUStringsAreCaseInsensitiveEqualOrNil(v21, path);

          v10 = lCopy;
          self = v20;
          baseURLs = v19;
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
        v11 = [baseURLs countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v11);
    }

    v23 = 0;
LABEL_18:
  }

  else
  {
    v23 = 0;
    v10 = lCopy;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  pseudonym = [(TUConversationLink *)self pseudonym];
  [v3 appendFormat:@" pseudonym=%@", pseudonym];

  publicKey = [(TUConversationLink *)self publicKey];
  [v3 appendFormat:@" publicKey=%@", publicKey];

  v6 = [(TUConversationLink *)self URL];
  [v3 appendFormat:@" URL=%@", v6];

  linkName = [(TUConversationLink *)self linkName];
  [v3 appendFormat:@" linkName=%@", linkName];

  [v3 appendFormat:@" isLocallyCreated=%d", -[TUConversationLink isLocallyCreated](self, "isLocallyCreated")];
  [v3 appendFormat:@" linkLifetimeScope=%ld", -[TUConversationLink linkLifetimeScope](self, "linkLifetimeScope")];
  canCreateConversations = [(TUConversationLink *)self canCreateConversations];
  v9 = @"NO";
  if (canCreateConversations)
  {
    v9 = @"YES";
  }

  [v3 appendFormat:@" canCreateConversations=%@", v9];
  deletionDate = [(TUConversationLink *)self deletionDate];
  [v3 appendFormat:@" deletionDate=%@", deletionDate];

  [v3 appendFormat:@" deleteReason=%ld", -[TUConversationLink deleteReason](self, "deleteReason")];
  v11 = objc_opt_self();
  groupUUID = [v11 groupUUID];

  if (groupUUID)
  {
    v13 = objc_opt_self();
    groupUUID2 = [v13 groupUUID];
    [v3 appendFormat:@" self.groupUUID=%@", groupUUID2];
  }

  v15 = objc_opt_self();
  originatorHandle = [v15 originatorHandle];

  if (originatorHandle)
  {
    v17 = objc_opt_self();
    originatorHandle2 = [v17 originatorHandle];
    [v3 appendFormat:@" self.originatorHandle=%@", originatorHandle2];
  }

  v19 = objc_opt_self();
  invitedMemberHandles = [v19 invitedMemberHandles];

  if (invitedMemberHandles)
  {
    v21 = objc_opt_self();
    invitedMemberHandles2 = [v21 invitedMemberHandles];
    [v3 appendFormat:@" self.invitedMemberHandles=%@", invitedMemberHandles2];
  }

  [v3 appendString:@">"];
  v23 = [v3 copy];

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationLink *)self isEqualToConversationLink:equalCopy];

  return v5;
}

- (BOOL)isEquivalentToConversationLink:(id)link
{
  linkCopy = link;
  pseudonym = [linkCopy pseudonym];
  publicKey = [linkCopy publicKey];

  LOBYTE(self) = [(TUConversationLink *)self isEquivalentToPseudonym:pseudonym andPublicKey:publicKey];
  return self;
}

- (BOOL)isEquivalentToPseudonym:(id)pseudonym andPublicKey:(id)key
{
  keyCopy = key;
  pseudonymCopy = pseudonym;
  pseudonym = [(TUConversationLink *)self pseudonym];
  v9 = TUStringsAreEqualOrNil(pseudonym, pseudonymCopy);

  if (v9)
  {
    publicKey = [(TUConversationLink *)self publicKey];
    v11 = TUObjectsAreEqualOrNil(publicKey, keyCopy);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualToConversationLink:(id)link
{
  linkCopy = link;
  pseudonym = [(TUConversationLink *)self pseudonym];
  pseudonym2 = [linkCopy pseudonym];
  if (TUStringsAreEqualOrNil(pseudonym, pseudonym2))
  {
    publicKey = [(TUConversationLink *)self publicKey];
    publicKey2 = [linkCopy publicKey];
    if (TUObjectsAreEqualOrNil(publicKey, publicKey2))
    {
      groupUUID = [(TUConversationLink *)self groupUUID];
      groupUUID2 = [linkCopy groupUUID];
      if (TUObjectsAreEqualOrNil(groupUUID, groupUUID2))
      {
        originatorHandle = [(TUConversationLink *)self originatorHandle];
        originatorHandle2 = [linkCopy originatorHandle];
        if (TUObjectsAreEqualOrNil(originatorHandle, originatorHandle2))
        {
          v30 = originatorHandle;
          invitedMemberHandles = [(TUConversationLink *)self invitedMemberHandles];
          [linkCopy invitedMemberHandles];
          v29 = v31 = invitedMemberHandles;
          if (TUObjectsAreEqualOrNil(invitedMemberHandles, v29))
          {
            creationDate = [(TUConversationLink *)self creationDate];
            creationDate2 = [linkCopy creationDate];
            v28 = creationDate;
            if (TUObjectsAreEqualOrNil(creationDate, creationDate2))
            {
              deletionDate = [(TUConversationLink *)self deletionDate];
              deletionDate2 = [linkCopy deletionDate];
              v26 = deletionDate;
              if (TUObjectsAreEqualOrNil(deletionDate, deletionDate2))
              {
                linkName = [(TUConversationLink *)self linkName];
                linkName2 = [linkCopy linkName];
                v24 = linkName;
                v17 = TUObjectsAreEqualOrNil(linkName, linkName2);
                originatorHandle = v30;
                if (v17 && (v21 = -[TUConversationLink isLocallyCreated](self, "isLocallyCreated"), v21 == [linkCopy isLocallyCreated]) && (v22 = -[TUConversationLink linkLifetimeScope](self, "linkLifetimeScope"), v22 == objc_msgSend(linkCopy, "linkLifetimeScope")))
                {
                  deleteReason = [(TUConversationLink *)self deleteReason];
                  v19 = deleteReason == [linkCopy deleteReason];
                }

                else
                {
                  v19 = 0;
                }
              }

              else
              {
                v19 = 0;
                originatorHandle = v30;
              }
            }

            else
            {
              v19 = 0;
              originatorHandle = v30;
            }
          }

          else
          {
            v19 = 0;
            originatorHandle = v30;
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
  pseudonym = [(TUConversationLink *)self pseudonym];
  v3 = [pseudonym hash];
  publicKey = [(TUConversationLink *)self publicKey];
  v5 = [publicKey hash] ^ v3;
  groupUUID = [(TUConversationLink *)self groupUUID];
  v7 = [groupUUID hash];
  originatorHandle = [(TUConversationLink *)self originatorHandle];
  v9 = v5 ^ v7 ^ [originatorHandle hash];
  invitedMemberHandles = [(TUConversationLink *)self invitedMemberHandles];
  v11 = [invitedMemberHandles hash];
  creationDate = [(TUConversationLink *)self creationDate];
  v13 = v11 ^ [creationDate hash];
  deletionDate = [(TUConversationLink *)self deletionDate];
  v15 = v9 ^ v13 ^ [deletionDate hash];
  linkName = [(TUConversationLink *)self linkName];
  v17 = [linkName hash];
  isLocallyCreated = [(TUConversationLink *)self isLocallyCreated];
  v19 = 1237;
  if (isLocallyCreated)
  {
    v19 = 1231;
  }

  v20 = v15 ^ v17 ^ v19 ^ [(TUConversationLink *)self linkLifetimeScope];
  deleteReason = [(TUConversationLink *)self deleteReason];

  return v20 ^ deleteReason;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithPseudonym:publicKey:groupUUID:originatorHandle:", self->_pseudonym, self->_publicKey, self->_groupUUID, self->_originatorHandle}];
  v6 = [(NSSet *)self->_invitedMemberHandles copyWithZone:zone];
  v7 = *(v5 + 104);
  *(v5 + 104) = v6;

  v8 = [(NSDate *)self->_creationDate copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSDate *)self->_deletionDate copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_linkName copyWithZone:zone];
  v13 = *(v5 + 88);
  *(v5 + 88) = v12;

  *(v5 + 8) = [(TUConversationLink *)self isLocallyCreated];
  *(v5 + 64) = [(TUConversationLink *)self linkLifetimeScope];
  *(v5 + 72) = [(TUConversationLink *)self deleteReason];
  return v5;
}

- (TUConversationLink)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_pseudonym);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_publicKey);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_groupUUID);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_originatorHandle);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v17 = [(TUConversationLink *)self initWithPseudonym:v7 publicKey:v10 groupUUID:v13 originatorHandle:v16];
  if (v17)
  {
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = NSStringFromSelector(sel_invitedMemberHandles);
    v22 = [coderCopy decodeObjectOfClasses:v20 forKey:v21];
    invitedMemberHandles = v17->_invitedMemberHandles;
    v17->_invitedMemberHandles = v22;

    v24 = objc_opt_class();
    v25 = NSStringFromSelector(sel_creationDate);
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
    creationDate = v17->_creationDate;
    v17->_creationDate = v26;

    v28 = objc_opt_class();
    v29 = NSStringFromSelector(sel_deletionDate);
    v30 = [coderCopy decodeObjectOfClass:v28 forKey:v29];
    deletionDate = v17->_deletionDate;
    v17->_deletionDate = v30;

    v32 = objc_opt_class();
    v33 = NSStringFromSelector(sel_linkName);
    v34 = [coderCopy decodeObjectOfClass:v32 forKey:v33];
    linkName = v17->_linkName;
    v17->_linkName = v34;

    v36 = NSStringFromSelector(sel_isLocallyCreated);
    v17->_locallyCreated = [coderCopy decodeBoolForKey:v36];

    v37 = NSStringFromSelector(sel_linkLifetimeScope);
    v17->_linkLifetimeScope = [coderCopy decodeIntegerForKey:v37];

    v38 = NSStringFromSelector(sel_deleteReason);
    v17->_deleteReason = [coderCopy decodeIntegerForKey:v38];
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  pseudonym = self->_pseudonym;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_pseudonym);
  [coderCopy encodeObject:pseudonym forKey:v6];

  publicKey = self->_publicKey;
  v8 = NSStringFromSelector(sel_publicKey);
  [coderCopy encodeObject:publicKey forKey:v8];

  groupUUID = self->_groupUUID;
  v10 = NSStringFromSelector(sel_groupUUID);
  [coderCopy encodeObject:groupUUID forKey:v10];

  originatorHandle = self->_originatorHandle;
  v12 = NSStringFromSelector(sel_originatorHandle);
  [coderCopy encodeObject:originatorHandle forKey:v12];

  invitedMemberHandles = self->_invitedMemberHandles;
  v14 = NSStringFromSelector(sel_invitedMemberHandles);
  [coderCopy encodeObject:invitedMemberHandles forKey:v14];

  creationDate = self->_creationDate;
  v16 = NSStringFromSelector(sel_creationDate);
  [coderCopy encodeObject:creationDate forKey:v16];

  deletionDate = self->_deletionDate;
  v18 = NSStringFromSelector(sel_deletionDate);
  [coderCopy encodeObject:deletionDate forKey:v18];

  linkName = self->_linkName;
  v20 = NSStringFromSelector(sel_linkName);
  [coderCopy encodeObject:linkName forKey:v20];

  locallyCreated = self->_locallyCreated;
  v22 = NSStringFromSelector(sel_isLocallyCreated);
  [coderCopy encodeBool:locallyCreated forKey:v22];

  linkLifetimeScope = self->_linkLifetimeScope;
  v24 = NSStringFromSelector(sel_linkLifetimeScope);
  [coderCopy encodeInteger:linkLifetimeScope forKey:v24];

  deleteReason = self->_deleteReason;
  v26 = NSStringFromSelector(sel_deleteReason);
  [coderCopy encodeInteger:deleteReason forKey:v26];
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"pseudonym"])
  {
    pseudonym = [(TUConversationLink *)self pseudonym];
LABEL_3:
    v6 = pseudonym;
    goto LABEL_9;
  }

  if ([keyCopy isEqualToString:@"publicKey"])
  {
    publicKey = [(TUConversationLink *)self publicKey];
    uUIDString = [publicKey base64EncodedStringWithOptions:0];
LABEL_8:
    v6 = uUIDString;

    goto LABEL_9;
  }

  if ([keyCopy isEqualToString:@"groupUUID"])
  {
    publicKey = [(TUConversationLink *)self groupUUID];
    uUIDString = [publicKey UUIDString];
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:@"originatorHandle"])
  {
    pseudonym = [(TUConversationLink *)self originatorHandle];
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