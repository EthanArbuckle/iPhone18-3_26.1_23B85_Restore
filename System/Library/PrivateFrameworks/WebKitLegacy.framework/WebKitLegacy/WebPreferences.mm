@interface WebPreferences
+ (WebPreferences)standardPreferences;
+ (id)_IBCreatorID;
+ (id)_concatenateKeyWithIBCreatorID:(id)d;
+ (id)_experimentalFeatures;
+ (id)_getInstanceForIdentifier:(id)identifier;
+ (id)_internalFeatures;
+ (void)_checkLastReferenceForIdentifier:(id)identifier;
+ (void)_clearNetworkLoaderSession:(id)session;
+ (void)_removeReferenceForIdentifier:(id)identifier;
+ (void)_setCurrentNetworkLoaderSessionCookieAcceptPolicy:(unint64_t)policy;
+ (void)_setIBCreatorID:(id)d;
+ (void)_setInitialDefaultTextEncodingToSystemEncoding;
+ (void)_setInstance:(id)instance forIdentifier:(id)identifier;
+ (void)_switchNetworkLoaderToNewTestingSession;
+ (void)initialize;
- (BOOL)_isEnabledForFeature:(id)feature;
- (BOOL)developerExtrasEnabled;
- (NSString)_ftpDirectoryTemplatePath;
- (NSString)_localStorageDatabasePath;
- (NSString)mediaKeysStorageDirectory;
- (WebPreferences)init;
- (WebPreferences)initWithCoder:(id)coder;
- (WebPreferences)initWithIdentifier:(id)identifier sendChangeNotification:(BOOL)notification;
- (float)_floatValueForKey:(id)key;
- (id)_stringArrayValueForKey:(id)key;
- (id)_stringValueForKey:(id)key;
- (id)_valueForKey:(id)key;
- (int)_integerValueForKey:(id)key;
- (int)editableLinkBehavior;
- (int)textDirectionSubmenuInclusionBehavior;
- (int64_t)_longLongValueForKey:(id)key;
- (unint64_t)_unsignedLongLongValueForKey:(id)key;
- (unsigned)_unsignedIntValueForKey:(id)key;
- (void)_batchUpdatePreferencesInBlock:(id)block;
- (void)_invalidateCachedPreferences;
- (void)_postCacheModelChangedNotification;
- (void)_postPreferencesChangedAPINotification;
- (void)_postPreferencesChangedNotification;
- (void)_resetForTesting;
- (void)_setBoolValue:(BOOL)value forKey:(id)key;
- (void)_setEnabled:(BOOL)enabled forFeature:(id)feature;
- (void)_setFTPDirectoryTemplatePath:(id)path;
- (void)_setFloatValue:(float)value forKey:(id)key;
- (void)_setIntegerValue:(int)value forKey:(id)key;
- (void)_setLocalStorageDatabasePath:(id)path;
- (void)_setLongLongValue:(int64_t)value forKey:(id)key;
- (void)_setStringArrayValueForKey:(id)key forKey:(id)forKey;
- (void)_setStringValue:(id)value forKey:(id)key;
- (void)_setUnsignedIntValue:(unsigned int)value forKey:(id)key;
- (void)_setUnsignedLongLongValue:(unint64_t)value forKey:(id)key;
- (void)_startBatchingUpdates;
- (void)_stopBatchingUpdates;
- (void)_synchronizeWebStoragePolicyWithCookiePolicy;
- (void)_updatePrivateBrowsingStateTo:(BOOL)to;
- (void)dealloc;
- (void)didRemoveFromWebView;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioSessionCategoryOverride:(unsigned int)override;
- (void)setCacheModel:(WebCacheModel)cacheModel;
- (void)setPrivateBrowsingEnabled:(BOOL)privateBrowsingEnabled;
- (void)setStorageBlockingPolicy:(int)policy;
@end

@implementation WebPreferences

- (WebPreferences)init
{
  do
  {
    v3 = [WebPreferences init]::instanceCount++;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WebPreferences%d", v3];
  }

  while ([objc_opt_class() _getInstanceForIdentifier:v4]);

  return [(WebPreferences *)self initWithIdentifier:v4];
}

- (WebPreferences)initWithIdentifier:(id)identifier sendChangeNotification:(BOOL)notification
{
  v5 = [objc_opt_class() _getInstanceForIdentifier:identifier];
  if (v5)
  {
    v7 = v5;

    return v7;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WebPreferences;
    if ([(WebPreferences *)&v8 init])
    {
      operator new();
    }

    return 0;
  }
}

- (WebPreferences)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WebPreferences;
  if ([(WebPreferences *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    [coder encodeObject:*(self->_private + 2) forKey:@"Identifier"];
    v5 = *self->_private;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__WebPreferences_encodeWithCoder___block_invoke;
    block[3] = &unk_1E82C76A0;
    block[4] = coder;
    block[5] = self;
    dispatch_sync(v5, block);
  }

  else
  {
    v8 = 1;
    [coder encodeValueOfObjCType:"i" at:&v8];
    [coder encodeObject:*(self->_private + 2)];
    v6 = *self->_private;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__WebPreferences_encodeWithCoder___block_invoke_2;
    v7[3] = &unk_1E82C76A0;
    v7[4] = coder;
    v7[5] = self;
    dispatch_sync(v6, v7);
  }
}

+ (WebPreferences)standardPreferences
{
  if (qword_1ED6A62A0 == -1)
  {
    if (_MergedGlobals_23 == 1)
    {
      return qword_1ED6A62A8;
    }
  }

  else
  {
    dispatch_once(&qword_1ED6A62A0, &__block_literal_global_4);
    if (_MergedGlobals_23 == 1)
    {
      return qword_1ED6A62A8;
    }
  }

  result = 0;
  qword_1ED6A62A8 = 0;
  _MergedGlobals_23 = 1;
  return result;
}

uint64_t __37__WebPreferences_standardPreferences__block_invoke()
{
  v0 = [[WebPreferences alloc] initWithIdentifier:0 sendChangeNotification:0];
  if (_MergedGlobals_23)
  {
    v1 = qword_1ED6A62A8;
    qword_1ED6A62A8 = v0;
    if (v1)
    {

      if (_MergedGlobals_23 == 1)
      {
        v0 = qword_1ED6A62A8;
      }

      else
      {
        v0 = 0;
        qword_1ED6A62A8 = 0;
        _MergedGlobals_23 = 1;
      }
    }
  }

  else
  {
    _MergedGlobals_23 = 1;
    qword_1ED6A62A8 = v0;
  }

  [(WebPreferences *)v0 _postPreferencesChangedNotification];
  if (_MergedGlobals_23 == 1)
  {
    v2 = qword_1ED6A62A8;
  }

  else
  {
    v2 = 0;
    qword_1ED6A62A8 = 0;
    _MergedGlobals_23 = 1;
  }

  return [v2 setAutosaves:1];
}

+ (void)initialize
{
  MEMORY[0x1EEE9AC00](self, a2);
  v2 = MEMORY[0x1E695DF20];
  v3 = MEMORY[0x1E696AD98];
  {
    v4 = WebKit::defaultAllowContentSecurityPolicySourceStarToMatchAnyProtocol(void)::shouldAllowContentSecurityPolicySourceStarToMatchAnyProtocol;
  }

  else
  {
    v127 = MEMORY[0x1E696AD98];
    v128 = overriddenWebKitLinkTimeVersion;
    if (!overriddenWebKitLinkTimeVersion)
    {
      v128 = NSVersionOfLinkTimeLibrary("UIKit");
    }

    v4 = HIWORD(v128) < 0xDE3u;
    WebKit::defaultAllowContentSecurityPolicySourceStarToMatchAnyProtocol(void)::shouldAllowContentSecurityPolicySourceStarToMatchAnyProtocol = v4;
    v3 = v127;
  }

  v5 = [v3 numberWithBool:v4 & 1];
  v6 = MEMORY[0x1E696AD98];
  {
    v7 = WebKit::defaultAllowDisplayOfInsecureContent(void)::shouldAllowDisplayOfInsecureContent;
  }

  else
  {
    v129 = v2;
    v130 = v5;
    v131 = MEMORY[0x1E696AD98];
    v132 = overriddenWebKitLinkTimeVersion;
    if (!overriddenWebKitLinkTimeVersion)
    {
      v132 = NSVersionOfLinkTimeLibrary("UIKit");
    }

    v7 = v132 >> 17 < 0x6BF;
    WebKit::defaultAllowDisplayOfInsecureContent(void)::shouldAllowDisplayOfInsecureContent = v7;
    v6 = v131;
    v5 = v130;
    v2 = v129;
  }

  v8 = [v6 numberWithBool:v7 & 1];
  v9 = MEMORY[0x1E696AD98];
  {
    v10 = WebKit::defaultAllowRunningOfInsecureContent(void)::shouldAllowRunningOfInsecureContent;
  }

  else
  {
    v133 = v2;
    v134 = v5;
    v135 = MEMORY[0x1E696AD98];
    v136 = overriddenWebKitLinkTimeVersion;
    if (!overriddenWebKitLinkTimeVersion)
    {
      v136 = NSVersionOfLinkTimeLibrary("UIKit");
    }

    v10 = v136 >> 17 < 0x6BF;
    WebKit::defaultAllowRunningOfInsecureContent(void)::shouldAllowRunningOfInsecureContent = v10;
    v9 = v135;
    v5 = v134;
    v2 = v133;
  }

  v11 = [v9 numberWithBool:v10 & 1];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:PAL::deviceClassIsSmallScreen(v11) ^ 1];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:PAL::deviceClassIsSmallScreen(v12)];
  v14 = MEMORY[0x1E696AD98];
  {
    v15 = WebKit::defaultAllowsPictureInPictureMediaPlayback(void)::shouldAllowPictureInPictureMediaPlayback;
  }

  else
  {
    v137 = v2;
    v138 = v5;
    v139 = MEMORY[0x1E696AD98];
    v15 = WTF::linkedOnOrAfterSDKWithBehavior();
    v14 = v139;
    v5 = v138;
    v2 = v137;
    WebKit::defaultAllowsPictureInPictureMediaPlayback(void)::shouldAllowPictureInPictureMediaPlayback = v15;
  }

  v16 = [v14 numberWithBool:v15 & 1];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v17 = v173;
  if (v173)
  {
    atomic_fetch_add_explicit(v173, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v172, v17);
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v18);
    }
  }

  else
  {
    v172 = &stru_1F472E7E8;
    v140 = &stru_1F472E7E8;
  }

  v156 = v13;
  v19 = v172;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v173;
  if (v173)
  {
    atomic_fetch_add_explicit(v173, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v171, v20);
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v21);
    }
  }

  else
  {
    v171 = &stru_1F472E7E8;
    v141 = &stru_1F472E7E8;
  }

  v22 = MEMORY[0x1E696EB88];
  v23 = MEMORY[0x1E696EB88];
  atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
  atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v170, v22);
  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(MEMORY[0x1E696EB88], v24);
  }

  v155 = v12;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v25 = v173;
  if (v173)
  {
    atomic_fetch_add_explicit(v173, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v169, v25);
    if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v26);
    }
  }

  else
  {
    v169 = &stru_1F472E7E8;
    v142 = &stru_1F472E7E8;
  }

  v154 = v11;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v173;
  v153 = v19;
  if (v173)
  {
    atomic_fetch_add_explicit(v173, 2u, memory_order_relaxed);
    v28 = MEMORY[0x1CCA63450](&v168, v27);
    if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v28 = WTF::StringImpl::destroy(v27, v29);
    }
  }

  else
  {
    v168 = &stru_1F472E7E8;
    v28 = &stru_1F472E7E8;
  }

  [MEMORY[0x1E696AD98] numberWithBool:PAL::deviceClassIsSmallScreen(v28)];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v173;
  v159 = v173;
  v152 = v16;
  if (v173)
  {
    atomic_fetch_add_explicit(v173, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v167, v30);
    if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v31);
    }
  }

  else
  {
    v167 = &stru_1F472E7E8;
    v143 = &stru_1F472E7E8;
  }

  v32 = MEMORY[0x1E696AD98];
  {
    v33 = WebKit::defaultShouldRestrictBaseURLSchemes(void)::shouldRestrictBaseURLSchemes;
  }

  else
  {
    v33 = WTF::linkedOnOrAfterSDKWithBehavior();
    WebKit::defaultShouldRestrictBaseURLSchemes(void)::shouldRestrictBaseURLSchemes = v33;
  }

  [v32 numberWithBool:v33 & 1];
  atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v166, v22);
  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(MEMORY[0x1E696EB88], v34);
  }

  v35 = MEMORY[0x1E696AD98];
  {
    v36 = WebKit::defaultShouldConvertInvalidURLsToBlank(void)::shouldConvertInvalidURLsToBlank;
  }

  else
  {
    v36 = WTF::linkedOnOrAfterSDKWithBehavior();
    WebKit::defaultShouldConvertInvalidURLsToBlank(void)::shouldConvertInvalidURLsToBlank = v36;
  }

  [v35 numberWithBool:v36 & 1];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v173;
  v161 = v173;
  if (v173)
  {
    atomic_fetch_add_explicit(v173, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v165, v37);
    if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v161, v38);
    }
  }

  else
  {
    v165 = &stru_1F472E7E8;
    v144 = &stru_1F472E7E8;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v39 = v173;
  v158 = v173;
  if (v173)
  {
    atomic_fetch_add_explicit(v173, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v164, v39);
    if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v40);
    }
  }

  else
  {
    v164 = &stru_1F472E7E8;
    v145 = &stru_1F472E7E8;
  }

  v41 = MEMORY[0x1E696AD98];
  {
    v42 = WebKit::defaultRequiresUserGestureToLoadVideo(void)::shouldRequireUserGestureToLoadVideo;
  }

  else
  {
    v42 = WTF::linkedOnOrAfterSDKWithBehavior();
    WebKit::defaultRequiresUserGestureToLoadVideo(void)::shouldRequireUserGestureToLoadVideo = v42;
  }

  [v41 numberWithBool:v42 & 1];
  v43 = MEMORY[0x1E696AD98];
  {
    v44 = WebKit::defaultPassiveTouchListenersAsDefaultOnDocument(void)::result;
  }

  else
  {
    v44 = WTF::linkedOnOrAfterSDKWithBehavior();
    WebKit::defaultPassiveTouchListenersAsDefaultOnDocument(void)::result = v44;
  }

  [v43 numberWithBool:v44 & 1];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v45 = v173;
  v157 = v173;
  if (v173)
  {
    atomic_fetch_add_explicit(v173, 2u, memory_order_relaxed);
    v46 = MEMORY[0x1CCA63450](&v163, v45);
    if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v46 = WTF::StringImpl::destroy(v45, v47);
    }
  }

  else
  {
    v163 = &stru_1F472E7E8;
    v46 = &stru_1F472E7E8;
  }

  v151 = [MEMORY[0x1E696AD98] numberWithBool:WTF::IOSApplication::isMobileMail(v46)];
  v48 = MEMORY[0x1E696AD98];
  if (WTF::CocoaApplication::isAppleApplication(v151))
  {
    v49 = 1;
  }

  else
  {
    v49 = WTF::linkedOnOrAfterSDKWithBehavior() ^ 1;
  }

  [v48 numberWithBool:v49];
  v50 = MEMORY[0x1E696AD98];
  {
    v51 = WebKit::defaultWebSQLEnabled(void)::webSQLEnabled;
  }

  else
  {
    v51 = WTF::linkedOnOrAfterSDKWithBehavior() ^ 1;
    WebKit::defaultWebSQLEnabled(void)::webSQLEnabled = v51;
  }

  [v50 numberWithBool:v51 & 1];
  v52 = MEMORY[0x1E696AD98];
  {
    v53 = WebKit::defaultPopoverAttributeEnabled(void)::newSDK;
  }

  else
  {
    v53 = WTF::linkedOnOrAfterSDKWithBehavior();
    WebKit::defaultPopoverAttributeEnabled(void)::newSDK = v53;
  }

  [v52 numberWithBool:v53 & 1];
  v54 = MEMORY[0x1E696AD98];
  {
    v55 = WebKit::defaultShowModalDialogEnabled(void)::newSDK;
  }

  else
  {
    v55 = WTF::linkedOnOrAfterSDKWithBehavior();
    WebKit::defaultShowModalDialogEnabled(void)::newSDK = v55;
  }

  v56 = [v54 numberWithBool:(v55 & 1) == 0];
  [MEMORY[0x1E696AD98] numberWithBool:PAL::deviceClassIsSmallScreen(v56) ^ 1];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v57 = v173;
  v160 = v173;
  if (v173)
  {
    atomic_fetch_add_explicit(v173, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v162, v57);
    if (atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v160, v58);
    }
  }

  else
  {
    v162 = &stru_1F472E7E8;
    v146 = &stru_1F472E7E8;
  }

  v59 = MEMORY[0x1E696AD98];
  v60 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  context = objc_autoreleasePoolPush();
  uTF8String = [v60 UTF8String];
  if (!uTF8String)
  {
    goto LABEL_221;
  }

  v147 = v8;
  v62 = v5;
  v149 = v2;
  v148 = v27;
  for (i = 0; i != 20; ++i)
  {
    v64 = cacheModelForMainBundle(NSString *)::documentViewerIDs[i];
    if (v64)
    {
      v65 = strlen(cacheModelForMainBundle(NSString *)::documentViewerIDs[i]);
      if (v65 == strlen(uTF8String))
      {
        if (!v65)
        {
          goto LABEL_82;
        }

        if (*(MEMORY[0x1E696EBB8] + *v64) == *(MEMORY[0x1E696EBB8] + *uTF8String))
        {
          v66 = 0;
          v67 = v64 + 1;
          v5 = v62;
          do
          {
            if (v65 - 1 == v66)
            {
              v65 = 0;
              v22 = MEMORY[0x1E696EB88];
              v70 = v149;
              goto LABEL_83;
            }

            v68 = *(MEMORY[0x1E696EBB8] + v67[v66]);
            v69 = *(MEMORY[0x1E696EBB8] + uTF8String[++v66]);
          }

          while (v68 == v69);
          if (v66 >= v65)
          {
LABEL_69:
            v65 = 0;
            goto LABEL_82;
          }
        }
      }
    }

    else if (!*uTF8String)
    {
      goto LABEL_69;
    }
  }

  v71 = 0;
  v65 = 1;
  while (1)
  {
    v72 = cacheModelForMainBundle(NSString *)::documentBrowserIDs[v71];
    if (v72)
    {
      break;
    }

    if (!*uTF8String)
    {
      goto LABEL_82;
    }

LABEL_73:
    if (++v71 == 10)
    {
      v77 = strlen(uTF8String);
      if (v77 <= 21)
      {
        v22 = MEMORY[0x1E696EB88];
        v5 = v62;
        if (v77 == 18)
        {
          v108 = *(MEMORY[0x1E696EBB8] + 99);
          v27 = v148;
          v2 = v149;
          v8 = v147;
          if (v108 != *(MEMORY[0x1E696EBB8] + *uTF8String))
          {
            goto LABEL_221;
          }

          v109 = *(MEMORY[0x1E696EBB8] + 111);
          if (v109 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 1)))
          {
            goto LABEL_221;
          }

          v110 = *(MEMORY[0x1E696EBB8] + 109);
          if (v110 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 2)))
          {
            goto LABEL_221;
          }

          v111 = *(MEMORY[0x1E696EBB8] + 46);
          if (v111 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 3)))
          {
            goto LABEL_221;
          }

          v112 = *(MEMORY[0x1E696EBB8] + 97);
          if (v112 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 4)))
          {
            goto LABEL_221;
          }

          v113 = *(MEMORY[0x1E696EBB8] + 112);
          if (v113 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 5)) || v113 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 6)) || *(MEMORY[0x1E696EBB8] + 52) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 7)) || v110 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 8)) || v112 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 9)) || v108 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 10)) || v111 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 11)) || *(MEMORY[0x1E696EBB8] + 119) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 12)) || *(MEMORY[0x1E696EBB8] + 75) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 13)) || *(MEMORY[0x1E696EBB8] + 105) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 14)) || v109 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 15)) || *(MEMORY[0x1E696EBB8] + 115) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 16)))
          {
            goto LABEL_221;
          }

          v93 = *(MEMORY[0x1E696EBB8] + 107);
          v94 = *(uTF8String + 17);
        }

        else
        {
          v27 = v148;
          v2 = v149;
          v8 = v147;
          if (v77 != 19)
          {
            goto LABEL_221;
          }

          if (*(MEMORY[0x1E696EBB8] + 110) != *(MEMORY[0x1E696EBB8] + *uTF8String))
          {
            goto LABEL_221;
          }

          v88 = *(MEMORY[0x1E696EBB8] + 101);
          if (v88 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 1)))
          {
            goto LABEL_221;
          }

          v89 = *(MEMORY[0x1E696EBB8] + 116);
          if (v89 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 2)))
          {
            goto LABEL_221;
          }

          v90 = *(MEMORY[0x1E696EBB8] + 46);
          if (v90 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 3)))
          {
            goto LABEL_221;
          }

          v91 = *(MEMORY[0x1E696EBB8] + 104);
          if (v91 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 4)))
          {
            goto LABEL_221;
          }

          if (*(MEMORY[0x1E696EBB8] + 109) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 5)))
          {
            goto LABEL_221;
          }

          if (*(MEMORY[0x1E696EBB8] + 100) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 6)))
          {
            goto LABEL_221;
          }

          if (v89 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 7)))
          {
            goto LABEL_221;
          }

          if (*(MEMORY[0x1E696EBB8] + 45) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 8)))
          {
            goto LABEL_221;
          }

          if (*(MEMORY[0x1E696EBB8] + 119) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 9)))
          {
            goto LABEL_221;
          }

          if (v88 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 10)))
          {
            goto LABEL_221;
          }

          if (*(MEMORY[0x1E696EBB8] + 98) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 11)))
          {
            goto LABEL_221;
          }

          if (v90 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 12)))
          {
            goto LABEL_221;
          }

          if (*(MEMORY[0x1E696EBB8] + 83) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 13)))
          {
            goto LABEL_221;
          }

          if (v91 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 14)))
          {
            goto LABEL_221;
          }

          v92 = *(MEMORY[0x1E696EBB8] + 105);
          if (v92 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 15)) || v92 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 16)) || *(MEMORY[0x1E696EBB8] + 114) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 17)))
          {
            goto LABEL_221;
          }

          v93 = *(MEMORY[0x1E696EBB8] + 97);
          v94 = *(uTF8String + 18);
        }
      }

      else
      {
        v22 = MEMORY[0x1E696EB88];
        v5 = v62;
        if (v77 != 22)
        {
          v8 = v147;
          if (v77 != 26)
          {
            v27 = v148;
            v2 = v149;
            if (v77 != 23)
            {
              goto LABEL_221;
            }

            v78 = *(MEMORY[0x1E696EBB8] + 99);
            if (v78 != *(MEMORY[0x1E696EBB8] + *uTF8String))
            {
              goto LABEL_221;
            }

            v79 = *(MEMORY[0x1E696EBB8] + 111);
            if (v79 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 1)))
            {
              goto LABEL_221;
            }

            v80 = *(MEMORY[0x1E696EBB8] + 109);
            if (v80 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 2)))
            {
              goto LABEL_221;
            }

            v81 = *(MEMORY[0x1E696EBB8] + 46);
            if (v81 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 3)))
            {
              goto LABEL_221;
            }

            v82 = *(MEMORY[0x1E696EBB8] + 97);
            if (v82 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 4)) || (v83 = *(MEMORY[0x1E696EBB8] + 112), v83 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 5))) || v83 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 6)) || *(MEMORY[0x1E696EBB8] + 52) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 7)) || v80 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 8)) || v82 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 9)) || v78 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 10)) || v81 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 11)) || *(MEMORY[0x1E696EBB8] + 75) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 12)) || *(MEMORY[0x1E696EBB8] + 105) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 13)) || *(MEMORY[0x1E696EBB8] + 100) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 14)) || (v84 = *(MEMORY[0x1E696EBB8] + 115), v84 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 15))) || *(MEMORY[0x1E696EBB8] + 66) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 16)) || (v85 = *(MEMORY[0x1E696EBB8] + 114), v85 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 17))) || v79 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 18)) || *(MEMORY[0x1E696EBB8] + 119) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 19)) || v84 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 20)) || *(MEMORY[0x1E696EBB8] + 101) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 21)) || v85 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 22)))
            {
              if (*(MEMORY[0x1E696EBB8] + 102) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 4)))
              {
                goto LABEL_221;
              }

              v86 = *(MEMORY[0x1E696EBB8] + 114);
              if (v86 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 5)))
              {
                goto LABEL_221;
              }

              v87 = *(MEMORY[0x1E696EBB8] + 101);
              if (v87 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 6)) || v87 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 7)) || *(MEMORY[0x1E696EBB8] + 118) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 8)) || v87 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 9)) || v86 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 10)) || *(MEMORY[0x1E696EBB8] + 115) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 11)) || v87 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 12)) || v81 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 13)) || *(MEMORY[0x1E696EBB8] + 98) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 14)) || *(MEMORY[0x1E696EBB8] + 117) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 15)) || v80 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 16)) || *(MEMORY[0x1E696EBB8] + 112) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 17)) || v87 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 18)) || v86 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 19)) || v78 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 20)) || *(MEMORY[0x1E696EBB8] + 97) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 21)) || v86 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 22)))
              {
                goto LABEL_221;
              }
            }

LABEL_220:
            v70 = v2;
            v65 = 2;
            goto LABEL_224;
          }

          v27 = v148;
          v2 = v149;
          if (*(MEMORY[0x1E696EBB8] + 99) == *(MEMORY[0x1E696EBB8] + *uTF8String))
          {
            v100 = *(MEMORY[0x1E696EBB8] + 111);
            if (v100 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 1)) && *(MEMORY[0x1E696EBB8] + 109) == *(MEMORY[0x1E696EBB8] + *(uTF8String + 2)))
            {
              v101 = *(MEMORY[0x1E696EBB8] + 46);
              if (v101 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 3)))
              {
                v102 = *(MEMORY[0x1E696EBB8] + 115);
                if (v102 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 4)))
                {
                  v103 = *(MEMORY[0x1E696EBB8] + 117);
                  if (v103 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 5)))
                  {
                    v104 = *(MEMORY[0x1E696EBB8] + 110);
                    if (v104 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 6)))
                    {
                      v105 = *(MEMORY[0x1E696EBB8] + 114);
                      if (v105 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 7)))
                      {
                        v106 = *(MEMORY[0x1E696EBB8] + 105);
                        if (v106 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 8)) && v102 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 9)))
                        {
                          v107 = *(MEMORY[0x1E696EBB8] + 101);
                          if (v107 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 10)) && *(MEMORY[0x1E696EBB8] + 98) == *(MEMORY[0x1E696EBB8] + *(uTF8String + 11)) && v105 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 12)) && v100 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 13)) && *(MEMORY[0x1E696EBB8] + 119) == *(MEMORY[0x1E696EBB8] + *(uTF8String + 14)) && v102 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 15)) && v107 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 16)) && v105 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 17)) && v101 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 18)) && *(MEMORY[0x1E696EBB8] + 83) == *(MEMORY[0x1E696EBB8] + *(uTF8String + 19)) && v103 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 20)) && v104 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 21)) && v105 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 22)) && v106 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 23)) && v102 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 24)) && v107 == *(MEMORY[0x1E696EBB8] + *(uTF8String + 25)))
                          {
                            goto LABEL_220;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_221:
          if (!overriddenWebKitLinkTimeVersion)
          {
            NSVersionOfLinkTimeLibrary("UIKit");
          }

          v70 = v2;
          v65 = 0;
          goto LABEL_224;
        }

        v27 = v148;
        v2 = v149;
        v8 = v147;
        if (*(MEMORY[0x1E696EBB8] + 99) != *(MEMORY[0x1E696EBB8] + *uTF8String))
        {
          goto LABEL_221;
        }

        v95 = *(MEMORY[0x1E696EBB8] + 111);
        if (v95 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 1)))
        {
          goto LABEL_221;
        }

        v96 = *(MEMORY[0x1E696EBB8] + 109);
        if (v96 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 2)))
        {
          goto LABEL_221;
        }

        v97 = *(MEMORY[0x1E696EBB8] + 46);
        if (v97 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 3)))
        {
          goto LABEL_221;
        }

        if (v95 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 4)))
        {
          goto LABEL_221;
        }

        if (v96 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 5)))
        {
          goto LABEL_221;
        }

        v98 = *(MEMORY[0x1E696EBB8] + 110);
        if (v98 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 6)))
        {
          goto LABEL_221;
        }

        v99 = *(MEMORY[0x1E696EBB8] + 105);
        if (v99 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 7)) || *(MEMORY[0x1E696EBB8] + 103) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 8)) || *(MEMORY[0x1E696EBB8] + 114) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 9)) || v95 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 10)) || *(MEMORY[0x1E696EBB8] + 117) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 11)) || *(MEMORY[0x1E696EBB8] + 112) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 12)) || v97 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 13)) || *(MEMORY[0x1E696EBB8] + 79) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 14)) || v96 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 15)) || v98 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 16)) || v99 != *(MEMORY[0x1E696EBB8] + *(uTF8String + 17)) || *(MEMORY[0x1E696EBB8] + 87) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 18)) || *(MEMORY[0x1E696EBB8] + 101) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 19)) || *(MEMORY[0x1E696EBB8] + 98) != *(MEMORY[0x1E696EBB8] + *(uTF8String + 20)))
        {
          goto LABEL_221;
        }

        v93 = *(MEMORY[0x1E696EBB8] + 53);
        v94 = *(uTF8String + 21);
      }

      if (v93 != *(MEMORY[0x1E696EBB8] + v94))
      {
        goto LABEL_221;
      }

      goto LABEL_220;
    }
  }

  v73 = strlen(cacheModelForMainBundle(NSString *)::documentBrowserIDs[v71]);
  if (v73 != strlen(uTF8String))
  {
    goto LABEL_73;
  }

  if (!v73)
  {
    goto LABEL_82;
  }

  if (*(MEMORY[0x1E696EBB8] + *v72) != *(MEMORY[0x1E696EBB8] + *uTF8String))
  {
    goto LABEL_73;
  }

  v74 = 0;
  while (v73 - 1 != v74)
  {
    v75 = *(MEMORY[0x1E696EBB8] + v72[v74 + 1]);
    v76 = *(MEMORY[0x1E696EBB8] + uTF8String[++v74]);
    if (v75 != v76)
    {
      if (v74 < v73)
      {
        goto LABEL_73;
      }

      break;
    }
  }

LABEL_82:
  v22 = MEMORY[0x1E696EB88];
  v27 = v148;
  v70 = v149;
  v5 = v62;
LABEL_83:
  v8 = v147;
LABEL_224:
  objc_autoreleasePoolPop(context);
  [v59 numberWithUnsignedInteger:v65];
  [MEMORY[0x1E696AD98] numberWithLongLong:0x7FFFFFFFFFFFFFFFLL];
  v115 = [v70 dictionaryWithObjectsAndKeys:{@"WebKitPictureInPictureAPIEnabled", MEMORY[0x1E695E118], @"WebKitAcceleratedCompositingEnabled", MEMORY[0x1E695E118], @"WebKitAcceleratedCompositingForFixedPositionEnabled", MEMORY[0x1E695E118], @"WebKitWirelessPlaybackTargetAPIEnabled", MEMORY[0x1E695E110], @"WebKitAggressiveTileRetentionEnabled", v5, @"WebKitAllowContentSecurityPolicySourceStarToMatchAnyProtocol", v8, @"WebKitAllowDisplayOfInsecureContent", MEMORY[0x1E695E118], @"WebKitAllowFileAccessFromFileURLs", MEMORY[0x1E695E110], @"WebKitAllowMultiElementImplicitFormSubmissionPreferenceKey", v154, @"WebKitAllowRunningOfInsecureContent", MEMORY[0x1E695E118], @"WebKitMediaPlaybackAllowsAirPlay", v155, @"WebKitMediaPlaybackAllowsInline", v156, @"WebKitAllowsInlineMediaPlaybackAfterFullscreen", v152, @"WebKitAllowsPictureInPictureMediaPlayback", MEMORY[0x1E695E110], @"WebKitAlternateFullScreenControlDesignEnabled", MEMORY[0x1E695E118], @"WebKitWindowFocusRestricted", MEMORY[0x1E695E118], @"WebKitAnimatedImageAsyncDecodingEnabled", MEMORY[0x1E695E110], @"WebKitAppleMailPaginationQuirkEnabled", MEMORY[0x1E695E118], @"WebKitApplePayCapabilityDisclosureAllowed", MEMORY[0x1E695E118], @"WebKitApplePayEnabled", MEMORY[0x1E695E110], @"WebKitAsynchronousSpellCheckingEnabled", MEMORY[0x1E695E110], @"WebKitAudioControlsScaleWithPageZoom", MEMORY[0x1E695E118], @"WebKitAuthorAndUserStylesEnabledPreferenceKey", MEMORY[0x1E695E118], @"WebKitWebSocketEnabled", MEMORY[0x1E695E110], @"WebKitBackspaceKeyNavigationEnabled", MEMORY[0x1E695E118], @"WebKitWebSecurityEnabled", MEMORY[0x1E695E110], @"WebKitCaretBrowsingEnabled", MEMORY[0x1E695E110], @"WebKitColorFilterEnabled", MEMORY[0x1E695E118], @"WebKitContentChangeObserverEnabled", MEMORY[0x1E695E118], @"WebKitContentDispositionAttachmentSandboxEnabled", v153, @"WebKitCursiveFont"}];
  v116 = v162;
  v162 = 0;
  if (v116)
  {
  }

  if (v160 && atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v160, v114);
  }

  v117 = v163;
  v163 = 0;
  if (v117)
  {
  }

  if (v157 && atomic_fetch_add_explicit(v157, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v157, v114);
  }

  v118 = v164;
  v164 = 0;
  if (v118)
  {
  }

  if (v158 && atomic_fetch_add_explicit(v158, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v158, v114);
  }

  v119 = v165;
  v165 = 0;
  if (v119)
  {
  }

  if (v161 && atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v161, v114);
  }

  v120 = v166;
  v166 = 0;
  if (v120)
  {
  }

  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(MEMORY[0x1E696EB88], v114);
  }

  v121 = v167;
  v167 = 0;
  if (v121)
  {
  }

  if (v159 && atomic_fetch_add_explicit(v159, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v159, v114);
  }

  v122 = v168;
  v168 = 0;
  if (v122)
  {
  }

  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v114);
  }

  v123 = v169;
  v169 = 0;
  if (v123)
  {
  }

  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v114);
  }

  v124 = v170;
  v170 = 0;
  if (v124)
  {
  }

  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(MEMORY[0x1E696EB88], v114);
  }

  v125 = v171;
  v171 = 0;
  if (v125)
  {
  }

  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v114);
  }

  v126 = v172;
  v172 = 0;
  if (v126)
  {
  }

  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v114);
  }

  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
}

- (void)dealloc
{
  [(WebPreferences *)self _updatePrivateBrowsingStateTo:0];
  v3 = self->_private;
  if (v3)
  {
    v4 = v3[2];
    v3[2] = 0;
    if (v4)
    {
    }

    v5 = v3[1];
    v3[1] = 0;
    if (v5)
    {
    }

    v6 = *v3;
    *v3 = 0;
    if (v6)
    {
    }

    MEMORY[0x1CCA6A890](v3, 0x1080C40388782C3);
  }

  v7.receiver = self;
  v7.super_class = WebPreferences;
  [(WebPreferences *)&v7 dealloc];
}

- (id)_valueForKey:(id)key
{
  v5 = self->_private;
  v6 = v5[2];
  if (v6)
  {
    keyCopy = [v6 stringByAppendingString:key];
    v5 = self->_private;
  }

  else
  {
    keyCopy = key;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v8 = *v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__WebPreferences__valueForKey___block_invoke;
  block[3] = &unk_1E82C7958;
  block[5] = keyCopy;
  block[6] = &v12;
  block[4] = self;
  dispatch_sync(v8, block);
  v9 = v13[5];
  if (!v9)
  {
    v9 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    v13[5] = v9;
    if (!v9 && keyCopy != key)
    {
      v9 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
      v13[5] = v9;
    }
  }

  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __31__WebPreferences__valueForKey___block_invoke(void *a1)
{
  result = [*(*(a1[4] + 8) + 8) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (id)_stringValueForKey:(id)key
{
  v3 = [(WebPreferences *)self _valueForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)_setStringValue:(id)value forKey:(id)key
{
  keyCopy = key;
  if (([-[WebPreferences _stringValueForKey:](self _stringValueForKey:{key), "isEqualToString:", value}] & 1) == 0)
  {
    v7 = self->_private;
    v8 = v7[2];
    if (v8)
    {
      keyCopy = [v8 stringByAppendingString:keyCopy];
      v7 = self->_private;
    }

    v9 = *v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__WebPreferences__setStringValue_forKey___block_invoke;
    block[3] = &unk_1E82C7980;
    block[4] = self;
    block[5] = value;
    block[6] = keyCopy;
    dispatch_barrier_sync(v9, block);
    if (*(self->_private + 25) == 1)
    {
      [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    }

    [(WebPreferences *)self _postPreferencesChangedNotification];
  }
}

- (id)_stringArrayValueForKey:(id)key
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(WebPreferences *)self _valueForKey:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)_setStringArrayValueForKey:(id)key forKey:(id)forKey
{
  forKeyCopy = forKey;
  v7 = self->_private;
  v8 = v7[2];
  if (v8)
  {
    forKeyCopy = [v8 stringByAppendingString:forKey];
    v7 = self->_private;
  }

  v9 = *v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WebPreferences__setStringArrayValueForKey_forKey___block_invoke;
  block[3] = &unk_1E82C7980;
  block[4] = self;
  block[5] = key;
  block[6] = forKeyCopy;
  dispatch_barrier_sync(v9, block);
  if (*(self->_private + 25) == 1)
  {
    [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  }

  [(WebPreferences *)self _postPreferencesChangedNotification];
}

- (int)_integerValueForKey:(id)key
{
  v3 = [(WebPreferences *)self _valueForKey:key];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 intValue];
}

- (void)_setIntegerValue:(int)value forKey:(id)key
{
  keyCopy = key;
  if ([(WebPreferences *)self _integerValueForKey:key]!= value)
  {
    v7 = self->_private;
    v8 = v7[2];
    if (v8)
    {
      keyCopy = [v8 stringByAppendingString:keyCopy];
      v7 = self->_private;
    }

    v9 = *v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__WebPreferences__setIntegerValue_forKey___block_invoke;
    block[3] = &unk_1E82C79A8;
    valueCopy = value;
    block[4] = self;
    block[5] = keyCopy;
    dispatch_barrier_sync(v9, block);
    if (*(self->_private + 25) == 1)
    {
      [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    }

    [(WebPreferences *)self _postPreferencesChangedNotification];
  }
}

uint64_t __42__WebPreferences__setIntegerValue_forKey___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v4 = *(a1 + 40);

  return [v2 setObject:v3 forKey:v4];
}

- (unsigned)_unsignedIntValueForKey:(id)key
{
  v3 = [(WebPreferences *)self _valueForKey:key];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 unsignedIntValue];
}

- (void)_setUnsignedIntValue:(unsigned int)value forKey:(id)key
{
  keyCopy = key;
  v5 = *&value;
  if ([(WebPreferences *)self _unsignedIntValueForKey:key]!= value)
  {
    v7 = self->_private;
    v8 = v7[2];
    if (v8)
    {
      keyCopy = [v8 stringByAppendingString:keyCopy];
      v7 = self->_private;
    }

    v9 = *v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__WebPreferences__setUnsignedIntValue_forKey___block_invoke;
    block[3] = &unk_1E82C79A8;
    v12 = v5;
    block[4] = self;
    block[5] = keyCopy;
    dispatch_barrier_sync(v9, block);
    if (*(self->_private + 25) == 1)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", v5), keyCopy}];
    }

    [(WebPreferences *)self _postPreferencesChangedNotification];
  }
}

uint64_t __46__WebPreferences__setUnsignedIntValue_forKey___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  v4 = *(a1 + 40);

  return [v2 setObject:v3 forKey:v4];
}

- (float)_floatValueForKey:(id)key
{
  v3 = [(WebPreferences *)self _valueForKey:key];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  [v3 floatValue];
  return result;
}

- (void)_setFloatValue:(float)value forKey:(id)key
{
  [(WebPreferences *)self _floatValueForKey:?];
  if (v7 != value)
  {
    v8 = self->_private;
    v9 = v8[2];
    if (v9)
    {
      key = [v9 stringByAppendingString:key];
      v8 = self->_private;
    }

    v10 = *v8;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__WebPreferences__setFloatValue_forKey___block_invoke;
    block[3] = &unk_1E82C79A8;
    valueCopy = value;
    block[4] = self;
    block[5] = key;
    dispatch_barrier_sync(v10, block);
    if (*(self->_private + 25) == 1)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      *&v12 = value;
      [standardUserDefaults setFloat:key forKey:v12];
    }

    [(WebPreferences *)self _postPreferencesChangedNotification];
  }
}

uint64_t __40__WebPreferences__setFloatValue_forKey___block_invoke(uint64_t a1, double a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 8);
  LODWORD(a2) = *(a1 + 48);
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v5 = *(a1 + 40);

  return [v3 setObject:v4 forKey:v5];
}

- (void)_setBoolValue:(BOOL)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  if ([(WebPreferences *)self _BOOLValueForKey:key]!= value)
  {
    v7 = self->_private;
    v8 = v7[2];
    if (v8)
    {
      keyCopy = [v8 stringByAppendingString:keyCopy];
      v7 = self->_private;
    }

    v9 = *v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__WebPreferences__setBoolValue_forKey___block_invoke;
    block[3] = &unk_1E82C79D0;
    v11 = valueCopy;
    block[4] = self;
    block[5] = keyCopy;
    dispatch_barrier_sync(v9, block);
    if (*(self->_private + 25) == 1)
    {
      [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    }

    [(WebPreferences *)self _postPreferencesChangedNotification];
  }
}

uint64_t __39__WebPreferences__setBoolValue_forKey___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v4 = *(a1 + 40);

  return [v2 setObject:v3 forKey:v4];
}

- (int64_t)_longLongValueForKey:(id)key
{
  v3 = [(WebPreferences *)self _valueForKey:key];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 longLongValue];
}

- (void)_setLongLongValue:(int64_t)value forKey:(id)key
{
  keyCopy = key;
  if ([(WebPreferences *)self _longLongValueForKey:key]!= value)
  {
    v7 = self->_private;
    v8 = v7[2];
    if (v8)
    {
      keyCopy = [v8 stringByAppendingString:keyCopy];
      v7 = self->_private;
    }

    v9 = *v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__WebPreferences__setLongLongValue_forKey___block_invoke;
    block[3] = &unk_1E82C79F8;
    block[5] = keyCopy;
    block[6] = value;
    block[4] = self;
    dispatch_barrier_sync(v9, block);
    if (*(self->_private + 25) == 1)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", value), keyCopy}];
    }

    [(WebPreferences *)self _postPreferencesChangedNotification];
  }
}

uint64_t __43__WebPreferences__setLongLongValue_forKey___block_invoke(void *a1)
{
  v2 = *(*(a1[4] + 8) + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  v4 = a1[5];

  return [v2 setObject:v3 forKey:v4];
}

- (unint64_t)_unsignedLongLongValueForKey:(id)key
{
  v3 = [(WebPreferences *)self _valueForKey:key];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 unsignedLongLongValue];
}

- (void)_setUnsignedLongLongValue:(unint64_t)value forKey:(id)key
{
  keyCopy = key;
  if ([(WebPreferences *)self _unsignedLongLongValueForKey:key]!= value)
  {
    v7 = self->_private;
    v8 = v7[2];
    if (v8)
    {
      keyCopy = [v8 stringByAppendingString:keyCopy];
      v7 = self->_private;
    }

    v9 = *v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__WebPreferences__setUnsignedLongLongValue_forKey___block_invoke;
    block[3] = &unk_1E82C79F8;
    block[5] = keyCopy;
    block[6] = value;
    block[4] = self;
    dispatch_barrier_sync(v9, block);
    if (*(self->_private + 25) == 1)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", value), keyCopy}];
    }

    [(WebPreferences *)self _postPreferencesChangedNotification];
  }
}

uint64_t __51__WebPreferences__setUnsignedLongLongValue_forKey___block_invoke(void *a1)
{
  v2 = *(*(a1[4] + 8) + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  v4 = a1[5];

  return [v2 setObject:v3 forKey:v4];
}

- (void)setPrivateBrowsingEnabled:(BOOL)privateBrowsingEnabled
{
  v3 = privateBrowsingEnabled;
  [(WebPreferences *)self _updatePrivateBrowsingStateTo:?];

  [(WebPreferences *)self _setBoolValue:v3 forKey:@"WebKitPrivateBrowsingEnabled"];
}

- (void)_updatePrivateBrowsingStateTo:(BOOL)to
{
  v3 = self->_private;
  if (v3)
  {
    v4 = v3[24];
    if (to != v4)
    {
      if (to <= v4)
      {
        if (!--webPreferencesInstanceCountWithPrivateBrowsingEnabled)
        {
          selfCopy = self;
          toCopy = to;
          NetworkStorageSessionMap::destroySession(0x8000000000000001, a2);
          self = selfCopy;
          to = toCopy;
        }
      }

      else
      {
        toCopy2 = to;
        selfCopy2 = self;
        WebFrameNetworkingContext::ensurePrivateBrowsingSession(self);
        self = selfCopy2;
        to = toCopy2;
        ++webPreferencesInstanceCountWithPrivateBrowsingEnabled;
      }

      *(self->_private + 24) = to;
    }
  }
}

- (void)_postCacheModelChangedNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = WebPreferencesCacheModelChangedInternalNotification;

  [defaultCenter postNotificationName:v4 object:self userInfo:0];
}

- (void)setCacheModel:(WebCacheModel)cacheModel
{
  [(WebPreferences *)self _setIntegerValue:cacheModel forKey:@"WebKitCacheModelPreferenceKey"];
  [(WebPreferences *)self setAutomaticallyDetectsCacheModel:0];

  [(WebPreferences *)self _postCacheModelChangedNotification];
}

- (BOOL)developerExtrasEnabled
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"DisableWebKitDeveloperExtras"])
  {
    return 0;
  }

  if ([standardUserDefaults BOOLForKey:@"WebKitDeveloperExtras"] & 1) != 0 || (objc_msgSend(standardUserDefaults, "BOOLForKey:", @"IncludeDebugMenu"))
  {
    return 1;
  }

  return [(WebPreferences *)self _BOOLValueForKey:@"WebKitDeveloperExtrasEnabledPreferenceKey"];
}

- (int)editableLinkBehavior
{
  result = [(WebPreferences *)self _integerValueForKey:@"WebKitEditableLinkBehavior"];
  if (result > 4)
  {
    return 0;
  }

  return result;
}

- (int)textDirectionSubmenuInclusionBehavior
{
  result = [(WebPreferences *)self _integerValueForKey:@"WebKitTextDirectionSubmenuInclusionBehaviorPreferenceKey"];
  if (result > 2)
  {
    return 0;
  }

  return result;
}

+ (id)_getInstanceForIdentifier:(id)identifier
{
  if (identifier)
  {
    if (byte_1ED6A6299 == 1)
    {
      v3 = qword_1ED6A62B0;
    }

    else
    {
      v3 = 0;
      qword_1ED6A62B0 = 0;
      byte_1ED6A6299 = 1;
    }

    v4 = [self _concatenateKeyWithIBCreatorID:?];

    return [v3 objectForKey:v4];
  }

  else if (_MergedGlobals_23 == 1)
  {
    return qword_1ED6A62A8;
  }

  else
  {
    result = 0;
    qword_1ED6A62A8 = 0;
    _MergedGlobals_23 = 1;
  }

  return result;
}

+ (void)_setInstance:(id)instance forIdentifier:(id)identifier
{
  if (!identifier)
  {
    return;
  }

  if ((byte_1ED6A6299 & 1) == 0)
  {
    qword_1ED6A62B0 = 0;
    byte_1ED6A6299 = 1;
    goto LABEL_4;
  }

  v5 = qword_1ED6A62B0;
  if (!qword_1ED6A62B0)
  {
LABEL_4:
    selfCopy = self;
    identifierCopy = identifier;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = qword_1ED6A62B0;
    qword_1ED6A62B0 = v8;
    if (v9)
    {

      v5 = qword_1ED6A62B0;
    }

    else
    {
      v5 = v8;
    }

    identifier = identifierCopy;
    self = selfCopy;
  }

  v10 = [self _concatenateKeyWithIBCreatorID:identifier];

  [v5 setObject:instance forKey:v10];
}

+ (void)_checkLastReferenceForIdentifier:(id)identifier
{
  if (byte_1ED6A6299 == 1)
  {
    if ([objc_msgSend(qword_1ED6A62B0 objectForKey:{identifier), "retainCount"}] != 1)
    {
      return;
    }
  }

  else
  {
    qword_1ED6A62B0 = 0;
    byte_1ED6A6299 = 1;
    if ([objc_msgSend(0 objectForKey:{identifier), "retainCount"}] != 1)
    {
      return;
    }
  }

  if (byte_1ED6A6299 == 1)
  {
    v4 = qword_1ED6A62B0;
    identifierCopy2 = identifier;
  }

  else
  {
    v4 = 0;
    qword_1ED6A62B0 = 0;
    byte_1ED6A6299 = 1;
    identifierCopy2 = identifier;
  }

  [v4 removeObjectForKey:identifierCopy2];
}

+ (void)_removeReferenceForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [self _concatenateKeyWithIBCreatorID:?];

    [self performSelector:sel__checkLastReferenceForIdentifier_ withObject:v4 afterDelay:0.1];
  }
}

- (void)_startBatchingUpdates
{
  v2 = self->_private;
  v3 = v2[8];
  if (v3)
  {
    v4 = v3 + 1;
  }

  else
  {
    *(v2 + 36) = 0;
    v2 = self->_private;
    v4 = v2[8] + 1;
  }

  v2[8] = v4;
}

- (void)_stopBatchingUpdates
{
  v2 = self->_private;
  v3 = v2[8];
  if (v3)
  {
    v4 = v3 - 1;
    v2[8] = v4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    selfCopy = self;
    NSLog(&cfstr_ErrorUnbalance.isa, a2);
    self = selfCopy;
    v2 = selfCopy->_private;
    v6 = v2[8] - 1;
    v2[8] = v6;
    if (v6)
    {
      return;
    }
  }

  v7 = *(v2 + 36);
  if ((v7 & 2) != 0)
  {
    if (v7)
    {

      [(WebPreferences *)self _postPreferencesChangedNotification];
    }

    else
    {

      [(WebPreferences *)self _postPreferencesChangedAPINotification];
    }
  }
}

- (void)_batchUpdatePreferencesInBlock:(id)block
{
  [(WebPreferences *)self _startBatchingUpdates];
  (*(block + 2))(block, self);

  [(WebPreferences *)self _stopBatchingUpdates];
}

- (void)_resetForTesting
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = self->_private;
  v5 = v4[1];
  v4[1] = v3;
  if (v5)
  {
  }

  [(WebPreferences *)self _postPreferencesChangedNotification];
}

- (void)_postPreferencesChangedNotification
{
  v3 = self->_private;
  if (*(v3 + 8))
  {
    v3[36] |= 3u;
  }

  else
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:WebPreferencesChangedInternalNotification[0] object:self userInfo:0];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = WebPreferencesChangedNotification;

    [defaultCenter2 postNotificationName:v7 object:self userInfo:0];
  }
}

- (void)_postPreferencesChangedAPINotification
{
  if (pthread_main_np())
  {
    v4 = self->_private;
    if (*(v4 + 8))
    {
      v4[36] |= 2u;
    }

    else
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v6 = WebPreferencesChangedNotification;

      [defaultCenter postNotificationName:v6 object:self userInfo:0];
    }
  }

  else
  {

    [(WebPreferences *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

+ (void)_setInitialDefaultTextEncodingToSystemEncoding
{
  v12[1] = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v11 = @"WebKitDefaultTextEncodingName";
  PAL::defaultTextEncodingNameForSystemLanguage(&v9, standardUserDefaults);
  v3 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v12[0] = v10;
  -[PAL registerDefaults:](standardUserDefaults, "registerDefaults:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1]);
  v6 = v10;
  v10 = 0;
  if (v6)
  {
  }

  v7 = v9;
  v9 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }
  }
}

+ (void)_setIBCreatorID:(id)d
{
  v3 = [d copy];
  if (byte_1ED6A629A)
  {
    v4 = qword_1ED6A62B8;
    qword_1ED6A62B8 = v3;
    if (v4)
    {
    }
  }

  else
  {
    byte_1ED6A629A = 1;
    qword_1ED6A62B8 = v3;
  }
}

- (NSString)_localStorageDatabasePath
{
  v2 = [(WebPreferences *)self _stringValueForKey:@"WebKitLocalStorageDatabasePathPreferenceKey"];

  return [v2 stringByStandardizingPath];
}

- (void)_setLocalStorageDatabasePath:(id)path
{
  stringByStandardizingPath = [path stringByStandardizingPath];

  [(WebPreferences *)self _setStringValue:stringByStandardizingPath forKey:@"WebKitLocalStorageDatabasePathPreferenceKey"];
}

- (NSString)_ftpDirectoryTemplatePath
{
  v2 = [(WebPreferences *)self _stringValueForKey:@"WebKitFTPDirectoryTemplatePath"];

  return [v2 stringByStandardizingPath];
}

- (void)_setFTPDirectoryTemplatePath:(id)path
{
  stringByStandardizingPath = [path stringByStandardizingPath];

  [(WebPreferences *)self _setStringValue:stringByStandardizingPath forKey:@"WebKitFTPDirectoryTemplatePath"];
}

- (void)didRemoveFromWebView
{
  v3 = self->_private;
  v4 = v3[7] - 1;
  v3[7] = v4;
  if (!v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = WebPreferencesRemovedNotification[0];

    [defaultCenter postNotificationName:v7 object:self userInfo:0];
  }
}

- (void)setAudioSessionCategoryOverride:(unsigned int)override
{
  if (override >= 7)
  {
    if (override > 1886547810)
    {
      switch(override)
      {
        case 0x70726F63u:
          *&override = 6;
          goto LABEL_7;
        case 0x72656361u:
          *&override = 4;
          goto LABEL_7;
        case 0x736F6C6Fu:
          *&override = 2;
          goto LABEL_7;
      }
    }

    else
    {
      switch(override)
      {
        case 0x616D6269u:
          *&override = 1;
          goto LABEL_7;
        case 0x6D656469u:
          *&override = 3;
          goto LABEL_7;
        case 0x706C6172u:
          *&override = 5;
          goto LABEL_7;
      }
    }

    *&override = 0;
  }

LABEL_7:
  [(WebPreferences *)self _setUnsignedIntValue:*&override forKey:@"WebKitAudioSessionCategoryOverride"];
}

- (void)_invalidateCachedPreferences
{
  v3 = *self->_private;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__WebPreferences_WebPrivate___invalidateCachedPreferences__block_invoke;
  block[3] = &unk_1E82C7608;
  block[4] = self;
  dispatch_barrier_sync(v3, block);
  [(WebPreferences *)self _updatePrivateBrowsingStateTo:[(WebPreferences *)self privateBrowsingEnabled]];
  [(WebPreferences *)self _postPreferencesChangedNotification];
}

void __58__WebPreferences_WebPrivate___invalidateCachedPreferences__block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 8))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;
    if (v4)
    {
    }
  }
}

- (void)_synchronizeWebStoragePolicyWithCookiePolicy
{
  v3 = [objc_msgSend(MEMORY[0x1E695AC00] "sharedHTTPCookieStorage")];
  if ((v3 & 0xFFFFFFFC) != 0)
  {
    v4 = 2;
    selfCopy2 = self;
  }

  else
  {
    v4 = dword_1C7B339C0[v3 & 3];
    selfCopy2 = self;
  }

  [(WebPreferences *)selfCopy2 setStorageBlockingPolicy:v4];
}

- (void)setStorageBlockingPolicy:(int)policy
{
  v3 = *&policy;
  v6[1] = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = @"WebKitStorageBlockingPolicy";
  v6[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [standardUserDefaults registerDefaults:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}];
}

- (NSString)mediaKeysStorageDirectory
{
  v2 = [(WebPreferences *)self _stringValueForKey:@"WebKitMediaKeysStorageDirectory"];

  return [v2 stringByStandardizingPath];
}

+ (id)_IBCreatorID
{
  if (byte_1ED6A629A == 1)
  {
    return qword_1ED6A62B8;
  }

  result = 0;
  qword_1ED6A62B8 = 0;
  byte_1ED6A629A = 1;
  return result;
}

+ (id)_concatenateKeyWithIBCreatorID:(id)d
{
  v4 = +[WebPreferences _IBCreatorID];
  if (!v4)
  {
    return d;
  }

  return [v4 stringByAppendingString:d];
}

- (BOOL)_isEnabledForFeature:(id)feature
{
  preferenceKey = [feature preferenceKey];

  return [(WebPreferences *)self _BOOLValueForKey:preferenceKey];
}

- (void)_setEnabled:(BOOL)enabled forFeature:(id)feature
{
  enabledCopy = enabled;
  preferenceKey = [feature preferenceKey];

  [(WebPreferences *)self _setBoolValue:enabledCopy forKey:preferenceKey];
}

+ (void)_switchNetworkLoaderToNewTestingSession
{
  v2 = WebThreadLock();

  NetworkStorageSessionMap::switchToNewTestingSession(v2);
}

+ (void)_setCurrentNetworkLoaderSessionCookieAcceptPolicy:(unint64_t)policy
{
  v3 = NetworkStorageSessionMap::defaultStorageSession(self, a2);
  WebCore::NetworkStorageSession::cookieStorage(&cf, v3);
  if (cf)
  {
    CFHTTPCookieStorageSetCookieAcceptPolicy();
    v4 = cf;
    cf = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

+ (void)_clearNetworkLoaderSession:(id)session
{
  NetworkStorageSessionMap::defaultStorageSession(self, a2);
  v4 = _Block_copy(session);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F472E678;
  v5[1] = v4;
  v6 = v5;
  WebCore::NetworkStorageSession::deleteAllCookies();
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

+ (id)_experimentalFeatures
{
  v370[180] = *MEMORY[0x1E69E9840];
  if ((_MergedGlobals_24 & 1) == 0)
  {
    LOWORD(v18) = 0;
    v198 = [[WebFeature alloc] initWithKey:@"TargetTextPseudoElementEnabled" preferenceKey:@"WebKitTargetTextPseudoElementEnabled" name:@"::target-text pseudo-element" status:6 category:2 details:@"Enable the ::target-text CSS pseudo-element" defaultValue:v18 hidden:?];
    v370[0] = v198;
    LOWORD(v19) = 0;
    v369 = [[WebFeature alloc] initWithKey:@"ThumbAndTrackPseudoElementsEnabled" preferenceKey:@"WebKitThumbAndTrackPseudoElementsEnabled" name:@"::thumb and ::track pseudo-elements" status:4 category:2 details:@"Enable support for CSS ::thumb and ::track pseudo-elements" defaultValue:v19 hidden:?];
    v370[1] = v369;
    LOWORD(v20) = 1;
    v368 = [[WebFeature alloc] initWithKey:@"LinkDNSPrefetchEnabled" preferenceKey:@"WebKitLinkDNSPrefetchEnabled" name:@"<link rel=dns-prefetch>" status:6 category:6 details:@"Enable <link rel=dns-prefetch>" defaultValue:v20 hidden:?];
    v370[2] = v368;
    LOWORD(v21) = 0;
    v367 = [[WebFeature alloc] initWithKey:@"SelectShowPickerEnabled" preferenceKey:@"WebKitSelectShowPickerEnabled" name:@"<select> showPicker() method" status:4 category:3 details:@"Enable showPicker() method on <select>" defaultValue:v21 hidden:?];
    v370[3] = v367;
    LOWORD(v22) = 1;
    v366 = [[WebFeature alloc] initWithKey:@"PageAtRuleMarginDescriptorsEnabled" preferenceKey:@"WebKitPageAtRuleMarginDescriptorsEnabled" name:@"@page CSS at-rule margin descriptors" status:6 category:2 details:@"Enable support for @page margin descriptors" defaultValue:v22 hidden:?];
    v370[4] = v366;
    LOWORD(v23) = 1;
    v365 = [[WebFeature alloc] initWithKey:@"AllowWebGLInWorkers" preferenceKey:@"WebKitAllowWebGLInWorkers" name:@"Allow WebGL in Web Workers" status:6 category:3 details:&stru_1F472E7E8 defaultValue:v23 hidden:?];
    v370[5] = v365;
    LOWORD(v24) = 1;
    v364 = [[WebFeature alloc] initWithKey:@"AllowUniversalAccessFromFileURLs" preferenceKey:@"WebKitAllowUniversalAccessFromFileURLs" name:@"Allow universal access from file: URLs" status:3 category:8 details:&stru_1F472E7E8 defaultValue:v24 hidden:?];
    v370[6] = v364;
    LOWORD(v25) = 0;
    v363 = [[WebFeature alloc] initWithKey:@"ExtendedAudioDescriptionsEnabled" preferenceKey:@"WebKitExtendedAudioDescriptionsEnabled" name:@"Audio descriptions for video - Extended" status:5 category:5 details:@"Enable extended audio descriptions for video" defaultValue:v25 hidden:?];
    v370[7] = v363;
    LOWORD(v26) = 0;
    v362 = [[WebFeature alloc] initWithKey:@"AudioDescriptionsEnabled" preferenceKey:@"WebKitAudioDescriptionsEnabled" name:@"Audio descriptions for video - Standard" status:5 category:5 details:@"Enable standard audio descriptions for video" defaultValue:v26 hidden:?];
    v370[8] = v362;
    LOWORD(v27) = 0;
    v361 = [[WebFeature alloc] initWithKey:@"DOMAudioSessionFullEnabled" preferenceKey:@"WebKitDOMAudioSessionFullEnabled" name:@"AudioSession full API" status:4 category:5 details:@"Enable AudioSession full API" defaultValue:v27 hidden:?];
    v370[9] = v361;
    LOWORD(v28) = 0;
    v360 = [[WebFeature alloc] initWithKey:@"BroadcastChannelEnabled" preferenceKey:@"WebKitBroadcastChannelEnabled" name:@"BroadcastChannel API" status:6 category:3 details:@"BroadcastChannel API" defaultValue:v28 hidden:?];
    v370[10] = v360;
    LOWORD(v29) = 0;
    v359 = [[WebFeature alloc] initWithKey:@"CSS3DTransformBackfaceVisibilityInteroperabilityEnabled" preferenceKey:@"WebKitCSS3DTransformBackfaceVisibilityInteroperabilityEnabled" name:@"CSS 3D Transform Interoperability for backface-visibility" status:5 category:2 details:@"Enable 3D transform behavior for backface-visibility that is specification-compliant but backwards incompatible" defaultValue:v29 hidden:?];
    v370[11] = v359;
    LOWORD(v30) = 0;
    v358 = [[WebFeature alloc] initWithKey:@"CSSCounterStyleAtRuleImageSymbolsEnabled" preferenceKey:@"WebKitCSSCounterStyleAtRuleImageSymbolsEnabled" name:@"CSS @counter-style <image> symbols" status:4 category:2 details:@"Enable support for <image> symbols in CSS @counter-style rules" defaultValue:v30 hidden:?];
    v370[12] = v358;
    LOWORD(v31) = 1;
    v357 = [[WebFeature alloc] initWithKey:@"AccentColorEnabled" preferenceKey:@"WebKitAccentColorEnabled" name:@"CSS Accent Color" status:6 category:2 details:@"Enable accent-color CSS property" defaultValue:v31 hidden:?];
    v370[13] = v357;
    LOWORD(v32) = 1;
    v356 = [[WebFeature alloc] initWithKey:@"CSSAnchorPositioningEnabled" preferenceKey:@"WebKitCSSAnchorPositioningEnabled" name:@"CSS Anchor Positioning" status:6 category:2 details:@"Enable CSS Anchor Positioning (except position-visibility)" defaultValue:v32 hidden:?];
    v370[14] = v356;
    LOWORD(v33) = 0;
    v355 = [[WebFeature alloc] initWithKey:@"CSSAnchorPositioningPositionVisibilityEnabled" preferenceKey:@"WebKitCSSAnchorPositioningPositionVisibilityEnabled" name:@"CSS Anchor Positioning: position-visibility" status:4 category:2 details:@"Enable position-visibility specified in CSS Anchor Positioning" defaultValue:v33 hidden:?];
    v370[15] = v355;
    LOWORD(v34) = 1;
    v354 = [[WebFeature alloc] initWithKey:@"DevolvableWidgetsEnabled" preferenceKey:@"WebKitDevolvableWidgetsEnabled" name:@"CSS Devolvable Widgets" status:6 category:2 details:@"Enable support for devolvable widgets" defaultValue:v34 hidden:?];
    v370[16] = v354;
    LOWORD(v35) = 0;
    v353 = [[WebFeature alloc] initWithKey:@"CSSInputSecurityEnabled" preferenceKey:@"WebKitCSSInputSecurityEnabled" name:@"CSS Input Security" status:4 category:2 details:@"Enable input-security CSS property" defaultValue:v35 hidden:?];
    v370[17] = v353;
    LOWORD(v36) = 0;
    v352 = [[WebFeature alloc] initWithKey:@"MasonryEnabled" preferenceKey:@"WebKitMasonryEnabled" name:@"CSS Masonry Layout" status:5 category:2 details:@"Enable Masonry Layout for CSS Grid" defaultValue:v36 hidden:?];
    v370[18] = v352;
    LOWORD(v37) = 0;
    v351 = [[WebFeature alloc] initWithKey:@"OverscrollBehaviorEnabled" preferenceKey:@"WebKitOverscrollBehaviorEnabled" name:@"CSS Overscroll Behavior" status:6 category:2 details:@"Enable CSS overscroll-behavior" defaultValue:v37 hidden:?];
    v370[19] = v351;
    LOWORD(v38) = 0;
    v350 = [[WebFeature alloc] initWithKey:@"CSSPaintingAPIEnabled" preferenceKey:@"WebKitCSSPaintingAPIEnabled" name:@"CSS Painting API" status:4 category:2 details:@"Enable the CSS Painting API" defaultValue:v38 hidden:?];
    v370[20] = v350;
    LOWORD(v39) = 0;
    v349 = [[WebFeature alloc] initWithKey:@"CSSRhythmicSizingEnabled" preferenceKey:@"WebKitCSSRhythmicSizingEnabled" name:@"CSS Rhythmic Sizing" status:4 category:2 details:@"Enable CSS Rhythmic Sizing properties" defaultValue:v39 hidden:?];
    v370[21] = v349;
    LOWORD(v40) = 0;
    v348 = [[WebFeature alloc] initWithKey:@"CSSScrollAnchoringEnabled" preferenceKey:@"WebKitCSSScrollAnchoringEnabled" name:@"CSS Scroll Anchoring" status:4 category:2 details:@"Enable CSS Scroll Anchoring" defaultValue:v40 hidden:?];
    v370[22] = v348;
    LOWORD(v41) = 0;
    v347 = [[WebFeature alloc] initWithKey:@"CSSTreeCountingFunctionsEnabled" preferenceKey:@"WebKitCSSTreeCountingFunctionsEnabled" name:@"CSS Tree Counting Functions" status:5 category:2 details:@"Enable support for CSS Values and Units Module Level 5 tree counting functions sibling-count() and sibling-index()" defaultValue:v41 hidden:?];
    v370[23] = v347;
    LOWORD(v42) = 0;
    v346 = [[WebFeature alloc] initWithKey:@"CSSTypedOMColorEnabled" preferenceKey:@"WebKitCSSTypedOMColorEnabled" name:@"CSS Typed OM: Color Support" status:4 category:2 details:@"Enable the CSS Typed OM Color support" defaultValue:v42 hidden:?];
    v370[24] = v346;
    LOWORD(v43) = 0;
    v345 = [[WebFeature alloc] initWithKey:@"CSSURLModifiersEnabled" preferenceKey:@"WebKitCSSURLModifiersEnabled" name:@"CSS URL Modifiers" status:4 category:2 details:@"Enable support for CSS Values and Units Module Level 5 URL modifiers" defaultValue:v43 hidden:?];
    v370[25] = v345;
    LOWORD(v44) = 0;
    v344 = [[WebFeature alloc] initWithKey:@"CSSAppearanceBaseEnabled" preferenceKey:@"WebKitCSSAppearanceBaseEnabled" name:@"CSS appearance: base" status:4 category:2 details:@"Enable base value for CSS appearance" defaultValue:v44 hidden:?];
    v370[26] = v344;
    LOWORD(v45) = 0;
    v343 = [[WebFeature alloc] initWithKey:@"CSSAxisRelativePositionKeywordsEnabled" preferenceKey:@"WebKitCSSAxisRelativePositionKeywordsEnabled" name:@"CSS axis relative keywords in <position>" status:5 category:2 details:@"Enable support for CSS Values and Units Module Level 5 axis relative keywords in <position>" defaultValue:v45 hidden:?];
    v370[27] = v343;
    LOWORD(v46) = 1;
    v342 = [[WebFeature alloc] initWithKey:@"CSSBackgroundClipBorderAreaEnabled" preferenceKey:@"WebKitCSSBackgroundClipBorderAreaEnabled" name:@"CSS background-clip: border-area" status:6 category:2 details:@"Enable the border-area value for background-clip" defaultValue:v46 hidden:?];
    v370[28] = v342;
    LOWORD(v47) = 0;
    v341 = [[WebFeature alloc] initWithKey:@"CSSColorLayersEnabled" preferenceKey:@"WebKitCSSColorLayersEnabled" name:@"CSS color-layers()" status:5 category:2 details:@"Enable support for CSS color-layers()" defaultValue:v47 hidden:?];
    v370[29] = v341;
    LOWORD(v48) = 1;
    v340 = [[WebFeature alloc] initWithKey:@"CSSContrastColorEnabled" preferenceKey:@"WebKitCSSContrastColorEnabled" name:@"CSS contrast-color()" status:6 category:2 details:@"Enable support for CSS Color Module Level 5 contrast-color()" defaultValue:v48 hidden:?];
    v370[30] = v340;
    LOWORD(v49) = 0;
    v339 = [[WebFeature alloc] initWithKey:@"CSSCornerShapeEnabled" preferenceKey:@"WebKitCSSCornerShapeEnabled" name:@"CSS corner-shape property" status:4 category:2 details:@"Enable support for CSS corner-shape property" defaultValue:v49 hidden:?];
    v370[31] = v339;
    LOWORD(v50) = 0;
    v338 = [[WebFeature alloc] initWithKey:@"CSSDPropertyEnabled" preferenceKey:@"WebKitCSSDPropertyEnabled" name:@"CSS d property" status:5 category:2 details:@"Enable support for the CSS d property and SVG d presentation attribute" defaultValue:v50 hidden:?];
    v370[32] = v338;
    LOWORD(v51) = 0;
    v337 = [[WebFeature alloc] initWithKey:@"CSSDynamicRangeLimitMixEnabled" preferenceKey:@"WebKitCSSDynamicRangeLimitMixEnabled" name:@"CSS dynamic-range-limit-mix()" status:4 category:2 details:@"Enable support for CSS dynamic-range-limit-mix() defaultValue:but animation stays unsupported" hidden:v51];
    v370[33] = v337;
    LOWORD(v52) = 0;
    v336 = [[WebFeature alloc] initWithKey:@"CSSConstrainedDynamicRangeLimitEnabled" preferenceKey:@"WebKitCSSConstrainedDynamicRangeLimitEnabled" name:@"CSS dynamic-range-limit: constrained" status:4 category:2 details:@"Enable support for CSS dynamic-range-limit value constrained" defaultValue:v52 hidden:?];
    v370[34] = v336;
    LOWORD(v53) = 0;
    v335 = [[WebFeature alloc] initWithKey:@"CSSFieldSizingEnabled" preferenceKey:@"WebKitCSSFieldSizingEnabled" name:@"CSS field-sizing property" status:5 category:2 details:@"Enable field-sizing CSS property" defaultValue:v53 hidden:?];
    v370[35] = v335;
    LOWORD(v54) = 0;
    v334 = [[WebFeature alloc] initWithKey:@"CSSFontVariantEmojiEnabled" preferenceKey:@"WebKitCSSFontVariantEmojiEnabled" name:@"CSS font-variant-emoji property" status:4 category:2 details:@"Enable the font-variant-emoji CSS property" defaultValue:v54 hidden:?];
    v370[36] = v334;
    LOWORD(v55) = 0;
    v333 = [[WebFeature alloc] initWithKey:@"CSSLineClampEnabled" preferenceKey:@"WebKitCSSLineClampEnabled" name:@"CSS line-clamp" status:5 category:2 details:@"Enable CSS line-clamp" defaultValue:v55 hidden:?];
    v370[37] = v333;
    LOWORD(v56) = 1;
    v332 = [[WebFeature alloc] initWithKey:@"CSSProgressFunctionEnabled" preferenceKey:@"WebKitCSSProgressFunctionEnabled" name:@"CSS progress()" status:6 category:2 details:@"Enable support for CSS Values and Units Module Level 5 progress()" defaultValue:v56 hidden:?];
    v370[38] = v332;
    LOWORD(v57) = 0;
    v331 = [[WebFeature alloc] initWithKey:@"CSSRandomFunctionEnabled" preferenceKey:@"WebKitCSSRandomFunctionEnabled" name:@"CSS random()" status:5 category:2 details:@"Enable support for CSS Values and Units Module Level 5 random()" defaultValue:v57 hidden:?];
    v370[39] = v331;
    LOWORD(v58) = 1;
    v330 = [[WebFeature alloc] initWithKey:@"CSSRubyAlignEnabled" preferenceKey:@"WebKitCSSRubyAlignEnabled" name:@"CSS ruby-align property" status:6 category:2 details:@"Enable ruby-align" defaultValue:v58 hidden:?];
    v370[40] = v330;
    LOWORD(v59) = 1;
    v329 = [[WebFeature alloc] initWithKey:@"CSSRubyOverhangEnabled" preferenceKey:@"WebKitCSSRubyOverhangEnabled" name:@"CSS ruby-overhang property" status:6 category:2 details:@"Enable ruby-overhang" defaultValue:v59 hidden:?];
    v370[41] = v329;
    LOWORD(v60) = 0;
    v328 = [[WebFeature alloc] initWithKey:@"CSSScrollbarColorEnabled" preferenceKey:@"WebKitCSSScrollbarColorEnabled" name:@"CSS scrollbar-color property" status:4 category:2 details:@"Enable scrollbar-color CSS property" defaultValue:v60 hidden:?];
    v370[42] = v328;
    LOWORD(v61) = 0;
    v327 = [[WebFeature alloc] initWithKey:@"CSSScrollbarGutterEnabled" preferenceKey:@"WebKitCSSScrollbarGutterEnabled" name:@"CSS scrollbar-gutter property" status:6 category:2 details:@"Enable scrollbar-gutter CSS property" defaultValue:v61 hidden:?];
    v370[43] = v327;
    LOWORD(v62) = 0;
    v326 = [[WebFeature alloc] initWithKey:@"CSSScrollbarWidthEnabled" preferenceKey:@"WebKitCSSScrollbarWidthEnabled" name:@"CSS scrollbar-width property" status:6 category:2 details:@"Enable scrollbar-width CSS property" defaultValue:v62 hidden:?];
    v370[44] = v326;
    LOWORD(v63) = 1;
    v325 = [[WebFeature alloc] initWithKey:@"CSSShapeFunctionEnabled" preferenceKey:@"WebKitCSSShapeFunctionEnabled" name:@"CSS shape() function" status:6 category:2 details:@"Enable the CSS shape() function" defaultValue:v63 hidden:?];
    v370[45] = v325;
    LOWORD(v64) = 1;
    v324 = [[WebFeature alloc] initWithKey:@"CSSTextAutospaceEnabled" preferenceKey:@"WebKitCSSTextAutospaceEnabled" name:@"CSS text-autospace property" status:6 category:2 details:@"Enable the property text-autospace defaultValue:defined in CSS Text 4" hidden:v64];
    v370[46] = v324;
    LOWORD(v65) = 1;
    v323 = [[WebFeature alloc] initWithKey:@"CSSTextBoxTrimEnabled" preferenceKey:@"WebKitCSSTextBoxTrimEnabled" name:@"CSS text-box-trim property" status:6 category:2 details:@"Enable text-box-trim" defaultValue:v65 hidden:?];
    v370[47] = v323;
    LOWORD(v66) = 0;
    v322 = [[WebFeature alloc] initWithKey:@"CSSTextGroupAlignEnabled" preferenceKey:@"WebKitCSSTextGroupAlignEnabled" name:@"CSS text-group-align property" status:4 category:2 details:@"Enable text-group-align CSS property" defaultValue:v66 hidden:?];
    v370[48] = v322;
    LOWORD(v67) = 0;
    v321 = [[WebFeature alloc] initWithKey:@"CSSTextJustifyEnabled" preferenceKey:@"WebKitCSSTextJustifyEnabled" name:@"CSS text-justify property" status:4 category:2 details:@"Enable the property text-justify defaultValue:defined in CSS Text 3" hidden:v67];
    v370[49] = v321;
    LOWORD(v68) = 0;
    v320 = [[WebFeature alloc] initWithKey:@"CSSTextSpacingTrimEnabled" preferenceKey:@"WebKitCSSTextSpacingTrimEnabled" name:@"CSS text-spacing-trim property" status:4 category:2 details:@"Enable the property text-spacing-trim defaultValue:defined in CSS Text 4" hidden:v68];
    v370[50] = v320;
    LOWORD(v69) = 1;
    v319 = [[WebFeature alloc] initWithKey:@"CSSTextUnderlinePositionLeftRightEnabled" preferenceKey:@"WebKitCSSTextUnderlinePositionLeftRightEnabled" name:@"CSS text-underline-position: left right" status:6 category:2 details:@"Enable the property text-underline-position left and right value support" defaultValue:v69 hidden:?];
    v370[51] = v319;
    LOWORD(v70) = 1;
    v318 = [[WebFeature alloc] initWithKey:@"CSSTextWrapPrettyEnabled" preferenceKey:@"WebKitCSSTextWrapPrettyEnabled" name:@"CSS text-wrap: pretty" status:6 category:2 details:@"Enable the pretty value for text-wrap-style" defaultValue:v70 hidden:?];
    v370[52] = v318;
    LOWORD(v71) = 1;
    v317 = [[WebFeature alloc] initWithKey:@"CanvasColorSpaceEnabled" preferenceKey:@"WebKitCanvasColorSpaceEnabled" name:@"Canvas Color Spaces" status:6 category:3 details:@"Enable use of predefined canvas color spaces" defaultValue:v71 hidden:?];
    v370[53] = v317;
    LOWORD(v72) = 0;
    v316 = [[WebFeature alloc] initWithKey:@"CanvasFiltersEnabled" preferenceKey:@"WebKitCanvasFiltersEnabled" name:@"Canvas Filters" status:4 category:3 details:@"Canvas Filters" defaultValue:v72 hidden:?];
    v370[54] = v316;
    LOWORD(v73) = 0;
    v315 = [[WebFeature alloc] initWithKey:@"CanvasLayersEnabled" preferenceKey:@"WebKitCanvasLayersEnabled" name:@"Canvas Layers" status:4 category:3 details:@"Enable Canvas Layers" defaultValue:v73 hidden:?];
    v370[55] = v315;
    LOWORD(v74) = 0;
    v314 = [[WebFeature alloc] initWithKey:@"ClearSiteDataHTTPHeaderEnabled" preferenceKey:@"WebKitClearSiteDataHTTPHeaderEnabled" name:@"Clear-Site-Data HTTP Header" status:6 category:6 details:@"Enable Clear-Site-Data HTTP Header support" defaultValue:v74 hidden:?];
    v370[56] = v314;
    LOWORD(v75) = 0;
    v313 = [[WebFeature alloc] initWithKey:@"ClearSiteDataExecutionContextsSupportEnabled" preferenceKey:@"WebKitClearSiteDataExecutionContextsSupportEnabled" name:@"Clear-Site-Data: 'executionContexts' support" status:4 category:6 details:@"Enable Clear-Site-Data: 'executionContexts' support" defaultValue:v75 hidden:?];
    v370[57] = v313;
    LOWORD(v76) = 0;
    v312 = [[WebFeature alloc] initWithKey:@"CloseWatcherEnabled" preferenceKey:@"WebKitCloseWatcherEnabled" name:@"Close Watcher API" status:4 category:9 details:@"Enable Close Watcher API" defaultValue:v76 hidden:?];
    v370[58] = v312;
    LOWORD(v77) = 0;
    v311 = [[WebFeature alloc] initWithKey:@"CompressionStreamEnabled" preferenceKey:@"WebKitCompressionStreamEnabled" name:@"Compression Stream API" status:6 category:3 details:@"Enable Compression Stream API" defaultValue:v77 hidden:?];
    v370[59] = v311;
    LOWORD(v78) = 0;
    v310 = [[WebFeature alloc] initWithKey:@"ContactPickerAPIEnabled" preferenceKey:@"WebKitContactPickerAPIEnabled" name:@"Contact Picker API" status:4 category:3 details:@"Enable the Contact Picker API" defaultValue:v78 hidden:?];
    v370[60] = v310;
    LOWORD(v79) = 0;
    v309 = [[WebFeature alloc] initWithKey:@"CookieStoreManagerEnabled" preferenceKey:@"WebKitCookieStoreManagerEnabled" name:@"Cookie Store API CookieStoreManager" status:4 category:3 details:@"Enable Cookie Store API CookieStoreManager which controls cookie change subscriptions for Service Workers" defaultValue:v79 hidden:?];
    v370[61] = v309;
    LOWORD(v80) = 0;
    v308 = [[WebFeature alloc] initWithKey:@"CookieStoreAPIExtendedAttributesEnabled" preferenceKey:@"WebKitCookieStoreAPIExtendedAttributesEnabled" name:@"Cookie Store API Extended Attributes" status:4 category:3 details:@"Enable Extended Attributes of the Cookie Store API" defaultValue:v80 hidden:?];
    v370[62] = v308;
    LOWORD(v81) = 0;
    v307 = [[WebFeature alloc] initWithKey:@"CookieStoreAPIEnabled" preferenceKey:@"WebKitCookieStoreAPIEnabled" name:@"Cookie Store API" status:6 category:3 details:@"Enable Cookie Store API" defaultValue:v81 hidden:?];
    v370[63] = v307;
    LOWORD(v82) = 1;
    v306 = [[WebFeature alloc] initWithKey:@"CrossDocumentViewTransitionsEnabled" preferenceKey:@"WebKitCrossDocumentViewTransitionsEnabled" name:@"Cross document view-transitions" status:6 category:2 details:@"Enable support for view-transitions cross-document" defaultValue:v82 hidden:?];
    v370[64] = v306;
    LOWORD(v83) = 0;
    v305 = [[WebFeature alloc] initWithKey:@"CrossOriginEmbedderPolicyEnabled" preferenceKey:@"WebKitCrossOriginEmbedderPolicyEnabled" name:@"Cross-Origin-Embedder-Policy (COEP) header" status:6 category:8 details:@"Support for Cross-Origin-Embedder-Policy (COEP) header" defaultValue:v83 hidden:?];
    v370[65] = v305;
    LOWORD(v84) = 0;
    v304 = [[WebFeature alloc] initWithKey:@"CrossOriginOpenerPolicyEnabled" preferenceKey:@"WebKitCrossOriginOpenerPolicyEnabled" name:@"Cross-Origin-Opener-Policy (COOP) header" status:6 category:8 details:@"Support for Cross-Origin-Opener-Policy (COOP) header" defaultValue:v84 hidden:?];
    v370[66] = v304;
    v3 = [WebFeature alloc];
    LOWORD(v85) = WebKit::defaultMutationEventsEnabled(v3);
    v303 = [(WebFeature *)v3 initWithKey:@"MutationEventsEnabled" preferenceKey:@"WebKitMutationEventsEnabled" name:@"DOM mutation events" status:4 category:3 details:&stru_1F472E7E8 defaultValue:v85 hidden:?];
    v370[67] = v303;
    LOWORD(v86) = 0;
    v302 = [[WebFeature alloc] initWithKey:@"DeclarativeWebPush" preferenceKey:@"WebKitDeclarativeWebPush" name:@"Declarative Web Push" status:6 category:3 details:@"Enable Declarative Web Push" defaultValue:v86 hidden:?];
    v370[68] = v302;
    LOWORD(v87) = 1;
    v301 = [[WebFeature alloc] initWithKey:@"ShouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaint" preferenceKey:@"WebKitShouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaint" name:@"Defer async scripts until DOMContentLoaded or first-paint" status:6 category:3 details:@"Defer async scripts until DOMContentLoaded or first-paint" defaultValue:v87 hidden:?];
    v370[69] = v301;
    LOWORD(v88) = 0;
    v300 = [[WebFeature alloc] initWithKey:@"DeprecationReportingEnabled" preferenceKey:@"WebKitDeprecationReportingEnabled" name:@"Deprecation Reporting" status:4 category:3 details:@"Enable Deprecation Reporting" defaultValue:v88 hidden:?];
    v370[70] = v300;
    LOWORD(v89) = 0;
    v299 = [[WebFeature alloc] initWithKey:@"DetachableMediaSourceEnabled" preferenceKey:@"WebKitDetachableMediaSourceEnabled" name:@"Detachable Media Source" status:3 category:5 details:@"Detachable Media Source API" defaultValue:v89 hidden:?];
    v370[71] = v299;
    LOWORD(v90) = 1;
    v298 = [[WebFeature alloc] initWithKey:@"UAVisualTransitionDetectionEnabled" preferenceKey:@"WebKitUAVisualTransitionDetectionEnabled" name:@"Detect UA visual transitions" status:6 category:3 details:@"Enable detection of UA visual transitions" defaultValue:v90 hidden:?];
    v370[72] = v298;
    LOWORD(v91) = 0;
    v297 = [[WebFeature alloc] initWithKey:@"DigitalCredentialsEnabled" preferenceKey:@"WebKitDigitalCredentialsEnabled" name:@"Digital Credentials API" status:6 category:3 details:@"Enable the Digital Credentials API" defaultValue:v91 hidden:?];
    v370[73] = v297;
    LOWORD(v92) = 0;
    v296 = [[WebFeature alloc] initWithKey:@"IsThirdPartyCookieBlockingDisabled" preferenceKey:@"WebKitIsThirdPartyCookieBlockingDisabled" name:@"Disable Full 3rd-Party Cookie Blocking (ITP)" status:3 category:7 details:@"Disable full third-party cookie blocking when Intelligent Tracking Prevention is enabled" defaultValue:v92 hidden:?];
    v370[74] = v296;
    LOWORD(v93) = 0;
    v295 = [[WebFeature alloc] initWithKey:@"IsFirstPartyWebsiteDataRemovalDisabled" preferenceKey:@"WebKitIsFirstPartyWebsiteDataRemovalDisabled" name:@"Disable Removal of Non-Cookie Data After 7 Days of No User Interaction (ITP)" status:3 category:7 details:@"Disable removal of all non-cookie website data after seven days of no user interaction when Intelligent Tracking Prevention is enabled" defaultValue:v93 hidden:?];
    v370[75] = v295;
    LOWORD(v94) = 0;
    v294 = [[WebFeature alloc] initWithKey:@"CanvasFingerprintingQuirkEnabled" preferenceKey:@"WebKitCanvasFingerprintingQuirkEnabled" name:@"Enable Canvas fingerprinting-related quirk" status:6 category:3 details:&stru_1F472E7E8 defaultValue:v94 hidden:?];
    v370[76] = v294;
    LOWORD(v95) = 0;
    v293 = [[WebFeature alloc] initWithKey:@"EnableElementCurrentCSSZoom" preferenceKey:@"WebKitEnableElementCurrentCSSZoom" name:@"Enable Element.currentCSSZoom" status:5 category:3 details:@"Enable Element.currentCSSZoom" defaultValue:v95 hidden:?];
    v370[77] = v293;
    LOWORD(v96) = 1;
    v370[78] = v292;
    LOWORD(v97) = 0;
    v291 = [[WebFeature alloc] initWithKey:@"FTPEnabled" preferenceKey:@"WebKitFTPEnabled" name:@"FTP support enabled" status:3 category:6 details:@"FTP support enabled" defaultValue:v97 hidden:?];
    v370[79] = v291;
    LOWORD(v98) = 0;
    v290 = [[WebFeature alloc] initWithKey:@"FileSystemWritableStreamEnabled" preferenceKey:@"WebKitFileSystemWritableStreamEnabled" name:@"File System WritableStream" status:6 category:3 details:@"Enable File System WritableStream API" defaultValue:v98 hidden:?];
    v370[80] = v290;
    LOWORD(v99) = 0;
    v289 = [[WebFeature alloc] initWithKey:@"FilterLinkDecorationByDefaultEnabled" preferenceKey:@"WebKitFilterLinkDecorationByDefaultEnabled" name:@"Filter Link Decoration" status:5 category:6 details:@"Enable Filtering Link Decoration" defaultValue:v99 hidden:?];
    v370[81] = v289;
    LOWORD(v100) = 0;
    v288 = [[WebFeature alloc] initWithKey:@"FullScreenKeyboardLock" preferenceKey:@"WebKitFullScreenKeyboardLock" name:@"Fullscreen API based Keyboard Lock" status:4 category:3 details:@"Fullscreen API based Keyboard Lock" defaultValue:v100 hidden:?];
    v370[82] = v288;
    LOWORD(v101) = 0;
    v287 = [[WebFeature alloc] initWithKey:@"GamepadTriggerRumbleEnabled" preferenceKey:@"WebKitGamepadTriggerRumbleEnabled" name:@"Gamepad trigger vibration support" status:4 category:3 details:@"Support for Gamepad trigger vibration" defaultValue:v101 hidden:?];
    v370[83] = v287;
    LOWORD(v102) = 0;
    v286 = [[WebFeature alloc] initWithKey:@"GamepadVibrationActuatorEnabled" preferenceKey:@"WebKitGamepadVibrationActuatorEnabled" name:@"Gamepad.vibrationActuator support" status:6 category:3 details:@"Support for Gamepad.vibrationActuator" defaultValue:v102 hidden:?];
    v370[84] = v286;
    LOWORD(v103) = 0;
    v285 = [[WebFeature alloc] initWithKey:@"ModelDocumentEnabled" preferenceKey:@"WebKitModelDocumentEnabled" name:@"HTML <model> elements for stand-alone document" status:4 category:9 details:@"Enable HTML <model> element for model documents" defaultValue:v103 hidden:?];
    v370[85] = v285;
    LOWORD(v104) = 0;
    v284 = [[WebFeature alloc] initWithKey:@"InputTypeColorEnhancementsEnabled" preferenceKey:@"WebKitInputTypeColorEnhancementsEnabled" name:@"HTML alpha and colorspace attribute support for color inputs" status:6 category:9 details:@"Enable HTML alpha and colorspace attribute support for input elements of type color" defaultValue:v104 hidden:?];
    v370[86] = v284;
    LOWORD(v105) = 0;
    v283 = [[WebFeature alloc] initWithKey:@"DetailsAutoExpandEnabled" preferenceKey:@"WebKitDetailsAutoExpandEnabled" name:@"HTML auto-expanding <details>" status:5 category:9 details:@"Enable HTML auto-expanding <details>" defaultValue:v105 hidden:?];
    v370[87] = v283;
    LOWORD(v106) = 0;
    v282 = [[WebFeature alloc] initWithKey:@"CommandAttributesEnabled" preferenceKey:@"WebKitCommandAttributesEnabled" name:@"HTML command & commandfor attributes" status:5 category:9 details:@"Enable HTML command & commandfor attribute support" defaultValue:v106 hidden:?];
    v370[88] = v282;
    v4 = [WebFeature alloc];
    {
      v5 = WebKit::defaultPopoverAttributeEnabled(void)::newSDK;
    }

    else
    {
      v5 = WTF::linkedOnOrAfterSDKWithBehavior();
      WebKit::defaultPopoverAttributeEnabled(void)::newSDK = v5;
    }

    LOWORD(v107) = v5 & 1;
    v281 = [(WebFeature *)v4 initWithKey:@"PopoverAttributeEnabled" preferenceKey:@"WebKitPopoverAttributeEnabled" name:@"HTML popover attribute" status:6 category:9 details:@"Enable HTML popover attribute support" defaultValue:v107 hidden:?];
    v370[89] = v281;
    LOWORD(v108) = 1;
    v280 = [[WebFeature alloc] initWithKey:@"SwitchControlEnabled" preferenceKey:@"WebKitSwitchControlEnabled" name:@"HTML switch control" status:6 category:9 details:@"Enable HTML switch control" defaultValue:v108 hidden:?];
    v370[90] = v280;
    LOWORD(v109) = 0;
    v279 = [[WebFeature alloc] initWithKey:@"HTTPSByDefaultEnabled" preferenceKey:@"WebKitHTTPSByDefaultEnabled" name:@"HTTPS-by-default (HTTPS-First)" status:4 category:8 details:@"Enable HTTPS-by-default (HTTPS-First)" defaultValue:v109 hidden:?];
    v370[91] = v279;
    LOWORD(v110) = 0;
    v278 = [[WebFeature alloc] initWithKey:@"ItpDebugModeEnabled" preferenceKey:@"WebKitItpDebugModeEnabled" name:@"ITP Debug Mode" status:3 category:7 details:@"Intelligent Tracking Prevention Debug Mode" defaultValue:v110 hidden:?];
    v370[92] = v278;
    LOWORD(v111) = 1;
    v277 = [[WebFeature alloc] initWithKey:@"ImageAnimationControlEnabled" preferenceKey:@"WebKitImageAnimationControlEnabled" name:@"Image Animation Control" status:6 category:1 details:@"Enable controls for image animations" defaultValue:v111 hidden:?];
    v370[93] = v277;
    LOWORD(v112) = 0;
    v276 = [[WebFeature alloc] initWithKey:@"LazyImageLoadingEnabled" preferenceKey:@"WebKitLazyImageLoadingEnabled" name:@"Lazy image loading" status:6 category:9 details:@"Enable lazy image loading support" defaultValue:v112 hidden:?];
    v370[94] = v276;
    v6 = [WebFeature alloc];
    {
      v7 = WebKit::defaultShowModalDialogEnabled(void)::newSDK;
    }

    else
    {
      v7 = WTF::linkedOnOrAfterSDKWithBehavior();
      WebKit::defaultShowModalDialogEnabled(void)::newSDK = v7;
    }

    BYTE1(v113) = 0;
    LOBYTE(v113) = (v7 & 1) == 0;
    v275 = [(WebFeature *)v6 initWithKey:@"ShowModalDialogEnabled" preferenceKey:@"WebKitShowModalDialogEnabled" name:@"Legacy showModalDialog() API" status:3 category:3 details:@"Legacy showModalDialog() API" defaultValue:v113 hidden:?];
    v370[95] = v275;
    LOWORD(v114) = 0;
    v274 = [[WebFeature alloc] initWithKey:@"LimitedMatroskaSupportEnabled" preferenceKey:@"WebKitLimitedMatroskaSupportEnabled" name:@"Limited Matroska Support" status:3 category:5 details:@"Enable H264 and PCM with WebM Player and MediaRecorder" defaultValue:v114 hidden:?];
    v370[96] = v274;
    LOWORD(v115) = 0;
    v273 = [[WebFeature alloc] initWithKey:@"LinkPreconnectEarlyHintsEnabled" preferenceKey:@"WebKitLinkPreconnectEarlyHintsEnabled" name:@"Link rel=preconnect via HTTP early hints" status:6 category:6 details:@"Enable link rel=preconnect via early hints" defaultValue:v115 hidden:?];
    v370[97] = v273;
    LOWORD(v116) = 0;
    v272 = [[WebFeature alloc] initWithKey:@"LinkPrefetchEnabled" preferenceKey:@"WebKitLinkPrefetchEnabled" name:@"LinkPrefetch" status:4 category:6 details:@"Enable LinkedPrefetch" defaultValue:v116 hidden:?];
    v370[98] = v272;
    LOWORD(v117) = 1;
    v271 = [[WebFeature alloc] initWithKey:@"LoadWebArchiveWithEphemeralStorageEnabled" preferenceKey:@"WebKitLoadWebArchiveWithEphemeralStorageEnabled" name:@"Load Web Archive with ephemeral storage" status:6 category:3 details:@"Enable loading web archive with ephemeral storage" defaultValue:v117 hidden:?];
    v370[99] = v271;
    LOWORD(v118) = 0;
    v270 = [[WebFeature alloc] initWithKey:@"LoginStatusAPIEnabled" preferenceKey:@"WebKitLoginStatusAPIEnabled" name:@"Login Status API" status:4 category:3 details:@"Enable the proposed Login Status API" defaultValue:v118 hidden:?];
    v370[100] = v270;
    LOWORD(v119) = 0;
    v269 = [[WebFeature alloc] initWithKey:@"MediaRecorderEnabledWebM" preferenceKey:@"WebKitMediaRecorderEnabledWebM" name:@"MediaRecorder WebM" status:6 category:5 details:@"Enable WebM support with MediaRecorder" defaultValue:v119 hidden:?];
    v370[101] = v269;
    LOWORD(v120) = 0;
    v268 = [[WebFeature alloc] initWithKey:@"MediaSessionCaptureToggleAPIEnabled" preferenceKey:@"WebKitMediaSessionCaptureToggleAPIEnabled" name:@"MediaSession capture related API" status:6 category:5 details:@"Enable MediaSession capture related API" defaultValue:v120 hidden:?];
    v370[102] = v268;
    LOWORD(v121) = 0;
    v267 = [[WebFeature alloc] initWithKey:@"MediaSourcePrefersDecompressionSession" preferenceKey:@"WebKitMediaSourcePrefersDecompressionSession" name:@"MediaSource prefers DecompressionSession" status:6 category:5 details:@"MediaSource prefers DecompressionSession" defaultValue:v121 hidden:?];
    v370[103] = v267;
    LOWORD(v122) = 0;
    v266 = [[WebFeature alloc] initWithKey:@"NavigationAPIEnabled" preferenceKey:@"WebKitNavigationAPIEnabled" name:@"Navigation API" status:4 category:3 details:@"Enable Navigation API" defaultValue:v122 hidden:?];
    v370[104] = v266;
    LOWORD(v123) = 1;
    v265 = [[WebFeature alloc] initWithKey:@"FlexFormattingContextIntegrationEnabled" preferenceKey:@"WebKitFlexFormattingContextIntegrationEnabled" name:@"Next-generation flex layout integration (FFC)" status:6 category:3 details:@"Enable next-generation flex layout integration (FFC)" defaultValue:v123 hidden:?];
    v370[105] = v265;
    LOWORD(v124) = 0;
    v264 = [[WebFeature alloc] initWithKey:@"NotificationsEnabled" preferenceKey:@"WebKitNotificationsEnabled" name:@"Notifications" status:6 category:3 details:@"Enable the Notifications API" defaultValue:v124 hidden:?];
    v370[106] = v264;
    LOWORD(v125) = 0;
    v263 = [[WebFeature alloc] initWithKey:@"ObservableEnabled" preferenceKey:@"WebKitObservableEnabled" name:@"Observable API" status:4 category:3 details:@"Support for the Observable API" defaultValue:v125 hidden:?];
    v370[107] = v263;
    LOWORD(v126) = 1;
    v262 = [[WebFeature alloc] initWithKey:@"OffscreenCanvasInWorkersEnabled" preferenceKey:@"WebKitOffscreenCanvasInWorkersEnabled" name:@"OffscreenCanvas in Workers" status:6 category:3 details:@"Support for the OffscreenCanvas APIs in Workers" defaultValue:v126 hidden:?];
    v370[108] = v262;
    LOWORD(v127) = 1;
    v261 = [[WebFeature alloc] initWithKey:@"OffscreenCanvasEnabled" preferenceKey:@"WebKitOffscreenCanvasEnabled" name:@"OffscreenCanvas" status:6 category:3 details:@"Support for the OffscreenCanvas APIs" defaultValue:v127 hidden:?];
    v370[109] = v261;
    LOWORD(v128) = 1;
    v260 = [[WebFeature alloc] initWithKey:@"OverlappingBackingStoreProvidersEnabled" preferenceKey:@"WebKitOverlappingBackingStoreProvidersEnabled" name:@"Overlapping backing stores" status:6 category:2 details:@"Enable overlapping backing stores compositor optimization" defaultValue:v128 hidden:?];
    v370[110] = v260;
    LOWORD(v129) = 0;
    v259 = [[WebFeature alloc] initWithKey:@"PermissionsAPIEnabled" preferenceKey:@"WebKitPermissionsAPIEnabled" name:@"Permissions API" status:6 category:3 details:@"Enable Permissions API" defaultValue:v129 hidden:?];
    v370[111] = v259;
    LOWORD(v130) = 1;
    v370[112] = v258;
    LOWORD(v131) = 1;
    v370[113] = v257;
    LOWORD(v132) = 1;
    v256 = [[WebFeature alloc] initWithKey:@"PreferPageRenderingUpdatesNear60FPSEnabled" preferenceKey:@"WebKitPreferPageRenderingUpdatesNear60FPSEnabled" name:@"Prefer Page Rendering Updates near 60fps" status:6 category:3 details:@"Prefer page rendering updates near 60 frames per second rather than using the display's refresh rate" defaultValue:v132 hidden:?];
    v370[114] = v256;
    LOWORD(v133) = 0;
    v255 = [[WebFeature alloc] initWithKey:@"VideoFullsceenPrefersMostVisibleHeuristic" preferenceKey:@"WebKitVideoFullsceenPrefersMostVisibleHeuristic" name:@"Prefers most visible video in element fullscreen." status:4 category:5 details:@"Prefers most visible video in element fullscreen." defaultValue:v133 hidden:?];
    v370[115] = v255;
    LOWORD(v134) = 0;
    v254 = [[WebFeature alloc] initWithKey:@"PrivateClickMeasurementDebugModeEnabled" preferenceKey:@"WebKitPrivateClickMeasurementDebugModeEnabled" name:@"Private Click Measurement Debug Mode" status:3 category:7 details:@"Enable Private Click Measurement Debug Mode" defaultValue:v134 hidden:?];
    v370[116] = v254;
    LOWORD(v135) = 0;
    v253 = [[WebFeature alloc] initWithKey:@"PrivateTokenUsageByThirdPartyEnabled" preferenceKey:@"WebKitPrivateTokenUsageByThirdPartyEnabled" name:@"Private Token usage by third party" status:6 category:7 details:@"Enable private token usage by third party" defaultValue:v135 hidden:?];
    v370[117] = v253;
    LOWORD(v136) = 0;
    v252 = [[WebFeature alloc] initWithKey:@"ReadableByteStreamAPIEnabled" preferenceKey:@"WebKitReadableByteStreamAPIEnabled" name:@"ReadableByteStream" status:4 category:3 details:@"Enable Readable Byte Streams" defaultValue:v136 hidden:?];
    v370[118] = v252;
    LOWORD(v137) = 0;
    v251 = [[WebFeature alloc] initWithKey:@"RemoteSnapshottingEnabled" preferenceKey:@"WebKitRemoteSnapshottingEnabled" name:@"Remote Snapshotting" status:4 category:5 details:&stru_1F472E7E8 defaultValue:v137 hidden:?];
    v370[119] = v251;
    LOWORD(v138) = 1;
    v250 = [[WebFeature alloc] initWithKey:@"ScopedCustomElementRegistryEnabled" preferenceKey:@"WebKitScopedCustomElementRegistryEnabled" name:@"Scoped custom element registry" status:6 category:3 details:@"Enable scoped custom element registry" defaultValue:v138 hidden:?];
    v370[120] = v250;
    LOWORD(v139) = 0;
    v249 = [[WebFeature alloc] initWithKey:@"ScreenOrientationLockingAPIEnabled" preferenceKey:@"WebKitScreenOrientationLockingAPIEnabled" name:@"Screen Orientation API (Locking / Unlocking)" status:4 category:3 details:@"Enable Screen Orientation API (Locking / Unlocking)" defaultValue:v139 hidden:?];
    v370[121] = v249;
    LOWORD(v140) = 0;
    v248 = [[WebFeature alloc] initWithKey:@"ScreenOrientationAPIEnabled" preferenceKey:@"WebKitScreenOrientationAPIEnabled" name:@"Screen Orientation API" status:6 category:3 details:@"Enable Screen Orientation API" defaultValue:v140 hidden:?];
    v370[122] = v248;
    LOWORD(v141) = 0;
    v247 = [[WebFeature alloc] initWithKey:@"ScreenWakeLockAPIEnabled" preferenceKey:@"WebKitScreenWakeLockAPIEnabled" name:@"Screen Wake Lock API" status:6 category:3 details:@"Enable Screen Wake Lock API" defaultValue:v141 hidden:?];
    v370[123] = v247;
    LOWORD(v142) = 0;
    v246 = [[WebFeature alloc] initWithKey:@"ScrollToTextFragmentFeatureDetectionEnabled" preferenceKey:@"WebKitScrollToTextFragmentFeatureDetectionEnabled" name:@"Scroll To Text Fragment Feature Detection" status:6 category:3 details:@"Enable Scroll To Text Fragment Feature Detection" defaultValue:v142 hidden:?];
    v370[124] = v246;
    LOWORD(v143) = 0;
    v245 = [[WebFeature alloc] initWithKey:@"ScrollToTextFragmentGenerationEnabled" preferenceKey:@"WebKitScrollToTextFragmentGenerationEnabled" name:@"Scroll To Text Fragment Generation" status:6 category:3 details:@"Enable Scroll To Text Fragment Generation Menu" defaultValue:v143 hidden:?];
    v370[125] = v245;
    LOWORD(v144) = 0;
    v244 = [[WebFeature alloc] initWithKey:@"ScrollToTextFragmentEnabled" preferenceKey:@"WebKitScrollToTextFragmentEnabled" name:@"Scroll To Text Fragment" status:6 category:3 details:@"Enable Scroll To Text Fragment" defaultValue:v144 hidden:?];
    v370[126] = v244;
    LOWORD(v145) = 0;
    v243 = [[WebFeature alloc] initWithKey:@"ScrollDrivenAnimationsEnabled" preferenceKey:@"WebKitScrollDrivenAnimationsEnabled" name:@"Scroll-driven Animations" status:6 category:1 details:@"Enable Scroll-driven Animations" defaultValue:v145 hidden:?];
    v370[127] = v243;
    LOWORD(v146) = 0;
    v242 = [[WebFeature alloc] initWithKey:@"ServiceWorkerInstallEventEnabled" preferenceKey:@"WebKitServiceWorkerInstallEventEnabled" name:@"Service Worker Install Event" status:4 category:6 details:@"Enable Service Worker Install Event API" defaultValue:v146 hidden:?];
    v370[128] = v242;
    LOWORD(v147) = 0;
    v241 = [[WebFeature alloc] initWithKey:@"ServiceWorkerNavigationPreloadEnabled" preferenceKey:@"WebKitServiceWorkerNavigationPreloadEnabled" name:@"Service Worker Navigation Preload" status:6 category:6 details:@"Enable Service Worker Navigation Preload API" defaultValue:v147 hidden:?];
    v370[129] = v241;
    LOWORD(v148) = 0;
    v240 = [[WebFeature alloc] initWithKey:@"ShapeDetection" preferenceKey:@"WebKitShapeDetection" name:@"Shape Detection API" status:4 category:5 details:@"Enable the Shape Detection API" defaultValue:v148 hidden:?];
    v370[130] = v240;
    LOWORD(v149) = 0;
    v239 = [[WebFeature alloc] initWithKey:@"SharedWorkerEnabled" preferenceKey:@"WebKitSharedWorkerEnabled" name:@"SharedWorker" status:6 category:3 details:@"Enabled SharedWorker API" defaultValue:v149 hidden:?];
    v370[131] = v239;
    LOWORD(v150) = 0;
    v238 = [[WebFeature alloc] initWithKey:@"ShowMediaStatsContextMenuItemEnabled" preferenceKey:@"WebKitShowMediaStatsContextMenuItemEnabled" name:@"Show Media Stats" status:3 category:5 details:@"Adds a 'Media Stats' context menu item to <video> when the Develop menu is enabled" defaultValue:v150 hidden:?];
    v370[132] = v238;
    LOWORD(v151) = 1;
    v237 = [[WebFeature alloc] initWithKey:@"SidewaysWritingModesEnabled" preferenceKey:@"WebKitSidewaysWritingModesEnabled" name:@"Sideways writing modes" status:6 category:2 details:@"Enable support for sideways writing modes" defaultValue:v151 hidden:?];
    v370[133] = v237;
    LOWORD(v152) = 0;
    v236 = [[WebFeature alloc] initWithKey:@"StorageAPIEstimateEnabled" preferenceKey:@"WebKitStorageAPIEstimateEnabled" name:@"Storage API Estimate" status:6 category:3 details:@"Enable Storage API Estimate" defaultValue:v152 hidden:?];
    v370[134] = v236;
    LOWORD(v153) = 0;
    v235 = [[WebFeature alloc] initWithKey:@"StorageAPIEnabled" preferenceKey:@"WebKitStorageAPIEnabled" name:@"Storage API" status:6 category:3 details:@"Enable Storage API" defaultValue:v153 hidden:?];
    v370[135] = v235;
    LOWORD(v154) = 0;
    v234 = [[WebFeature alloc] initWithKey:@"SupportHDRCompositorTonemappingEnabled" preferenceKey:@"WebKitSupportHDRCompositorTonemappingEnabled" name:@"Support HDR Compositor tonemapping" status:4 category:5 details:@"Support HDR tonemapping during compositing" defaultValue:v154 hidden:?];
    v370[136] = v234;
    LOWORD(v155) = 0;
    v233 = [[WebFeature alloc] initWithKey:@"TextTracksInMSEEnabled" preferenceKey:@"WebKitTextTracksInMSEEnabled" name:@"Text Tracks in MSE" status:4 category:5 details:@"Enable Text Tracks in Media Source Extension" defaultValue:v155 hidden:?];
    v370[137] = v233;
    LOWORD(v156) = 0;
    v232 = [[WebFeature alloc] initWithKey:@"TrackConfigurationEnabled" preferenceKey:@"WebKitTrackConfigurationEnabled" name:@"Track Configuration API" status:4 category:5 details:@"Track Configuration API" defaultValue:v156 hidden:?];
    v370[138] = v232;
    LOWORD(v157) = 0;
    v231 = [[WebFeature alloc] initWithKey:@"TrustedTypesEnabled" preferenceKey:@"WebKitTrustedTypesEnabled" name:@"Trusted Types" status:6 category:3 details:@"Enable Trusted Types" defaultValue:v157 hidden:?];
    v370[139] = v231;
    LOWORD(v158) = 1;
    v230 = [[WebFeature alloc] initWithKey:@"URLPatternAPIEnabled" preferenceKey:@"WebKitURLPatternAPIEnabled" name:@"URL Pattern API" status:6 category:3 details:@"Enable URL Pattern API" defaultValue:v158 hidden:?];
    v370[140] = v230;
    LOWORD(v159) = 0;
    v229 = [[WebFeature alloc] initWithKey:@"IPAddressAndLocalhostMixedContentUpgradeTestingEnabled" preferenceKey:@"WebKitIPAddressAndLocalhostMixedContentUpgradeTestingEnabled" name:@"Upgrade IP addresses and localhost in mixed content" status:4 category:8 details:@"Enable Upgrading IP addresses and localhost in mixed content" defaultValue:v159 hidden:?];
    v370[141] = v229;
    LOWORD(v160) = 1;
    v228 = [[WebFeature alloc] initWithKey:@"UpgradeMixedContentEnabled" preferenceKey:@"WebKitUpgradeMixedContentEnabled" name:@"Upgrade upgradable mixed content" status:6 category:6 details:@"Upgrade upgradable mixed content" defaultValue:v160 hidden:?];
    v370[142] = v228;
    LOWORD(v161) = 0;
    v227 = [[WebFeature alloc] initWithKey:@"UserActivationAPIEnabled" preferenceKey:@"WebKitUserActivationAPIEnabled" name:@"User Activation API" status:6 category:3 details:@"Enable User Activation API" defaultValue:v161 hidden:?];
    v370[143] = v227;
    LOWORD(v162) = 0;
    v226 = [[WebFeature alloc] initWithKey:@"VerifyWindowOpenUserGestureFromUIProcess" preferenceKey:@"WebKitVerifyWindowOpenUserGestureFromUIProcess" name:@"Verify window.open user gesture" status:4 category:8 details:@"Verifies that the user gesture for window.open came from the UI process" defaultValue:v162 hidden:?];
    v370[144] = v226;
    LOWORD(v163) = 1;
    v225 = [[WebFeature alloc] initWithKey:@"VerticalFormControlsEnabled" preferenceKey:@"WebKitVerticalFormControlsEnabled" name:@"Vertical form control support" status:6 category:9 details:@"Enable support for form controls in vertical writing mode" defaultValue:v163 hidden:?];
    v370[145] = v225;
    LOWORD(v164) = 0;
    v224 = [[WebFeature alloc] initWithKey:@"VideoRendererProtectedFallbackDisabled" preferenceKey:@"WebKitVideoRendererProtectedFallbackDisabled" name:@"VideoMediaSampleRenderer fallback to AVSBDL for protected content disabled" status:6 category:5 details:@"VideoMediaSampleRenderer fallback to AVSBDL for protected content disabled" defaultValue:v164 hidden:?];
    v370[146] = v224;
    LOWORD(v165) = 0;
    v223 = [[WebFeature alloc] initWithKey:@"VideoRendererUseDecompressionSessionForProtected" preferenceKey:@"WebKitVideoRendererUseDecompressionSessionForProtected" name:@"VideoMediaSampleRenderer use DecompressionSession for protected content" status:5 category:5 details:@"VideoMediaSampleRenderer use DecompressionSession for protected content" defaultValue:v165 hidden:?];
    v370[147] = v223;
    LOWORD(v166) = 1;
    v222 = [[WebFeature alloc] initWithKey:@"ViewTransitionClassesEnabled" preferenceKey:@"WebKitViewTransitionClassesEnabled" name:@"View Transition Classes" status:6 category:1 details:@"Support specifying classes for view transitions" defaultValue:v166 hidden:?];
    v370[148] = v222;
    LOWORD(v167) = 1;
    v221 = [[WebFeature alloc] initWithKey:@"ViewTransitionTypesEnabled" preferenceKey:@"WebKitViewTransitionTypesEnabled" name:@"View Transition Types" status:6 category:1 details:@"Support specifying types for view transitions" defaultValue:v167 hidden:?];
    v370[149] = v221;
    LOWORD(v168) = 1;
    v220 = [[WebFeature alloc] initWithKey:@"ViewTransitionsEnabled" preferenceKey:@"WebKitViewTransitionsEnabled" name:@"View Transitions" status:6 category:1 details:@"Enable the View Transitions API" defaultValue:v168 hidden:?];
    v370[150] = v220;
    LOWORD(v169) = 0;
    v219 = [[WebFeature alloc] initWithKey:@"WebAnimationsOverallProgressPropertyEnabled" preferenceKey:@"WebKitWebAnimationsOverallProgressPropertyEnabled" name:@"Web Animations 'overallProgress' property" status:5 category:1 details:@"Support for Animation's overallProgress property" defaultValue:v169 hidden:?];
    v370[151] = v219;
    LOWORD(v170) = 0;
    v218 = [[WebFeature alloc] initWithKey:@"WebAnimationsCustomEffectsEnabled" preferenceKey:@"WebKitWebAnimationsCustomEffectsEnabled" name:@"Web Animations custom effects" status:4 category:1 details:@"Support for the CustomEffect interface" defaultValue:v170 hidden:?];
    v370[152] = v218;
    LOWORD(v171) = 0;
    v217 = [[WebFeature alloc] initWithKey:@"WebAnimationsCustomFrameRateEnabled" preferenceKey:@"WebKitWebAnimationsCustomFrameRateEnabled" name:@"Web Animations custom frame rate" status:4 category:1 details:@"Support for specifying a custom frame rate for Web Animations" defaultValue:v171 hidden:?];
    v370[153] = v217;
    LOWORD(v172) = 1;
    v216 = [[WebFeature alloc] initWithKey:@"WebCryptoSafeCurvesEnabled" preferenceKey:@"WebKitWebCryptoSafeCurvesEnabled" name:@"Web Crypto Safe Curves" status:6 category:3 details:@"Enable Web Crypto Safe Curves" defaultValue:v172 hidden:?];
    v370[154] = v216;
    LOWORD(v173) = 1;
    v215 = [[WebFeature alloc] initWithKey:@"WebCryptoX25519Enabled" preferenceKey:@"WebKitWebCryptoX25519Enabled" name:@"Web Crypto X25519 algorithm" status:6 category:3 details:@"Enable Web Crypto X25519 algorithm" defaultValue:v173 hidden:?];
    v370[155] = v215;
    LOWORD(v174) = 0;
    v214 = [[WebFeature alloc] initWithKey:@"WebLocksAPIEnabled" preferenceKey:@"WebKitWebLocksAPIEnabled" name:@"Web Locks API" status:6 category:3 details:@"Web Locks API" defaultValue:v174 hidden:?];
    v370[156] = v214;
    LOWORD(v175) = 0;
    v213 = [[WebFeature alloc] initWithKey:@"WebShareFileAPIEnabled" preferenceKey:@"WebKitWebShareFileAPIEnabled" name:@"Web Share API Level 2" status:6 category:3 details:@"Enable level 2 of Web Share API" defaultValue:v175 hidden:?];
    v370[157] = v213;
    LOWORD(v176) = 0;
    v212 = [[WebFeature alloc] initWithKey:@"WebAssemblyESMIntegrationEnabled" preferenceKey:@"WebKitWebAssemblyESMIntegrationEnabled" name:@"WebAssembly ES module integration support" status:4 category:4 details:@"Support for allowing WebAssembly modules to integrate as ES modules" defaultValue:v176 hidden:?];
    v370[158] = v212;
    LOWORD(v177) = 0;
    v211 = [[WebFeature alloc] initWithKey:@"WebCodecsAV1Enabled" preferenceKey:@"WebKitWebCodecsAV1Enabled" name:@"WebCodecs AV1 codec" status:5 category:5 details:@"Enable WebCodecs AV1 codec" defaultValue:v177 hidden:?];
    v370[159] = v211;
    LOWORD(v178) = 0;
    v210 = [[WebFeature alloc] initWithKey:@"WebCodecsAudioEnabled" preferenceKey:@"WebKitWebCodecsAudioEnabled" name:@"WebCodecs Audio API" status:6 category:5 details:@"Enable WebCodecs Audio API" defaultValue:v178 hidden:?];
    v370[160] = v210;
    LOWORD(v179) = 0;
    v209 = [[WebFeature alloc] initWithKey:@"WebGLDraftExtensionsEnabled" preferenceKey:@"WebKitWebGLDraftExtensionsEnabled" name:@"WebGL Draft Extensions" status:4 category:3 details:@"Enable WebGL extensions that are still in draft status" defaultValue:v179 hidden:?];
    v370[161] = v209;
    LOWORD(v180) = 0;
    v208 = [[WebFeature alloc] initWithKey:@"WebGLTimerQueriesEnabled" preferenceKey:@"WebKitWebGLTimerQueriesEnabled" name:@"WebGL Timer Queries" status:3 category:3 details:@"Enable WebGL extensions that provide GPU timer queries" defaultValue:v180 hidden:?];
    v370[162] = v208;
    LOWORD(v181) = 0;
    v207 = [[WebFeature alloc] initWithKey:@"WebRTCAV1CodecEnabled" preferenceKey:@"WebKitWebRTCAV1CodecEnabled" name:@"WebRTC AV1 codec" status:5 category:5 details:@"Enable WebRTC AV1 codec" defaultValue:v181 hidden:?];
    v370[163] = v207;
    LOWORD(v182) = 0;
    v206 = [[WebFeature alloc] initWithKey:@"WebRTCL4SEnabled" preferenceKey:@"WebKitWebRTCL4SEnabled" name:@"WebRTC L4S support" status:4 category:5 details:@"Enable WebRTC L4S support" defaultValue:v182 hidden:?];
    v370[164] = v206;
    LOWORD(v183) = 0;
    v205 = [[WebFeature alloc] initWithKey:@"WebRTCSFrameTransformEnabled" preferenceKey:@"WebKitWebRTCSFrameTransformEnabled" name:@"WebRTC SFrame Transform API" status:4 category:5 details:@"Enable WebRTC SFrame Transform API" defaultValue:v183 hidden:?];
    v370[165] = v205;
    LOWORD(v184) = 0;
    v204 = [[WebFeature alloc] initWithKey:@"WebTransportEnabled" preferenceKey:@"WebKitWebTransportEnabled" name:@"WebTransport" status:4 category:6 details:@"Enable WebTransport" defaultValue:v184 hidden:?];
    v370[166] = v204;
    LOWORD(v185) = 0;
    v203 = [[WebFeature alloc] initWithKey:@"WorkerAsynchronousURLErrorHandlingEnabled" preferenceKey:@"WebKitWorkerAsynchronousURLErrorHandlingEnabled" name:@"Worker asynchronous URL error handling" status:5 category:3 details:@"Worker asynchronous URL error handling" defaultValue:v185 hidden:?];
    v370[167] = v203;
    LOWORD(v186) = 1;
    v202 = [[WebFeature alloc] initWithKey:@"WritingSuggestionsAttributeEnabled" preferenceKey:@"WebKitWritingSuggestionsAttributeEnabled" name:@"Writing Suggestions" status:6 category:3 details:@"Enable the writingsuggestions attribute" defaultValue:v186 hidden:?];
    v370[168] = v202;
    LOWORD(v187) = 0;
    v201 = [[WebFeature alloc] initWithKey:@"IsFirstPartyWebsiteDataRemovalLiveOnTestingEnabled" preferenceKey:@"WebKitIsFirstPartyWebsiteDataRemovalLiveOnTestingEnabled" name:@"[ITP Live-On] 1 Hour Timeout For Non-Cookie Data Removal" status:3 category:7 details:@"Remove all non-cookie website data after just one hour of no user interaction when Intelligent Tracking Prevention is enabled" defaultValue:v187 hidden:?];
    v370[169] = v201;
    LOWORD(v188) = 0;
    v200 = [[WebFeature alloc] initWithKey:@"IsFirstPartyWebsiteDataRemovalReproTestingEnabled" preferenceKey:@"WebKitIsFirstPartyWebsiteDataRemovalReproTestingEnabled" name:@"[ITP Repro] 30 Second Timeout For Non-Cookie Data Removal" status:3 category:7 details:@"Remove all non-cookie website data after just 30 seconds of no user interaction when Intelligent Tracking Prevention is enabled" defaultValue:v188 hidden:?];
    v370[170] = v200;
    LOWORD(v189) = 0;
    v370[171] = v199;
    LOWORD(v190) = 0;
    v370[172] = v8;
    LOWORD(v191) = 0;
    v9 = [[WebFeature alloc] initWithKey:@"CaretPositionFromPointEnabled" preferenceKey:@"WebKitCaretPositionFromPointEnabled" name:@"document.caretPositionFromPoint() API" status:4 category:3 details:@"Enable document.caretPositionFromPoint() API" defaultValue:v191 hidden:?];
    v370[173] = v9;
    LOWORD(v192) = 0;
    v10 = [[WebFeature alloc] initWithKey:@"HiddenUntilFoundEnabled" preferenceKey:@"WebKitHiddenUntilFoundEnabled" name:@"hidden=until-found" status:5 category:9 details:@"Enable support for hidden=until-found" defaultValue:v192 hidden:?];
    v370[174] = v10;
    LOWORD(v193) = 0;
    v11 = [[WebFeature alloc] initWithKey:@"ShadowRootReferenceTargetEnabledForAriaOwns" preferenceKey:@"WebKitShadowRootReferenceTargetEnabledForAriaOwns" name:@"referenceTarget support for aria-owns" status:4 category:3 details:@"Enable referenceTarget support for aria-owns and ariaOwnsElements" defaultValue:v193 hidden:?];
    v370[175] = v11;
    LOWORD(v194) = 0;
    v12 = [[WebFeature alloc] initWithKey:@"ShadowRootReferenceTargetEnabled" preferenceKey:@"WebKitShadowRootReferenceTargetEnabled" name:@"referenceTarget" status:4 category:3 details:@"Enable setting a referenceTarget on shadow roots" defaultValue:v194 hidden:?];
    v370[176] = v12;
    LOWORD(v195) = 0;
    v13 = [[WebFeature alloc] initWithKey:@"RequestIdleCallbackEnabled" preferenceKey:@"WebKitRequestIdleCallbackEnabled" name:@"requestIdleCallback" status:4 category:3 details:@"Enable requestIdleCallback support" defaultValue:v195 hidden:?];
    v370[177] = v13;
    LOWORD(v196) = 0;
    v14 = [[WebFeature alloc] initWithKey:@"ScrollendEventEnabled" preferenceKey:@"WebKitScrollendEventEnabled" name:@"scrollend event" status:4 category:3 details:@"Enable scrollend event" defaultValue:v196 hidden:?];
    v370[178] = v14;
    LOWORD(v197) = 0;
    v15 = [[WebFeature alloc] initWithKey:@"CSSWordBreakAutoPhraseEnabled" preferenceKey:@"WebKitCSSWordBreakAutoPhraseEnabled" name:@"word-break: auto-phrase enabled" status:4 category:2 details:@"Enables the auto-phrase value of the word-break CSS property" defaultValue:v197 hidden:?];
    v370[179] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v370 count:180];
    qword_1ED6A62C8 = v16;
    if (v16)
    {
      v17 = v16;
    }

    if (v15)
    {
    }

    if (v14)
    {
    }

    if (v13)
    {
    }

    if (v12)
    {
    }

    if (v11)
    {
    }

    if (v10)
    {
    }

    if (v9)
    {
    }

    if (v8)
    {
    }

    if (v199)
    {
    }

    if (v200)
    {
    }

    if (v201)
    {
    }

    if (v202)
    {
    }

    if (v203)
    {
    }

    if (v204)
    {
    }

    if (v205)
    {
    }

    if (v206)
    {
    }

    if (v207)
    {
    }

    if (v208)
    {
    }

    if (v209)
    {
    }

    if (v210)
    {
    }

    if (v211)
    {
    }

    if (v212)
    {
    }

    if (v213)
    {
    }

    if (v214)
    {
    }

    if (v215)
    {
    }

    if (v216)
    {
    }

    if (v217)
    {
    }

    if (v218)
    {
    }

    if (v219)
    {
    }

    if (v220)
    {
    }

    if (v221)
    {
    }

    if (v222)
    {
    }

    if (v223)
    {
    }

    if (v224)
    {
    }

    if (v225)
    {
    }

    if (v226)
    {
    }

    if (v227)
    {
    }

    if (v228)
    {
    }

    if (v229)
    {
    }

    if (v230)
    {
    }

    if (v231)
    {
    }

    if (v232)
    {
    }

    if (v233)
    {
    }

    if (v234)
    {
    }

    if (v235)
    {
    }

    if (v236)
    {
    }

    if (v237)
    {
    }

    if (v238)
    {
    }

    if (v239)
    {
    }

    if (v240)
    {
    }

    if (v241)
    {
    }

    if (v242)
    {
    }

    if (v243)
    {
    }

    if (v244)
    {
    }

    if (v245)
    {
    }

    if (v246)
    {
    }

    if (v247)
    {
    }

    if (v248)
    {
    }

    if (v249)
    {
    }

    if (v250)
    {
    }

    if (v251)
    {
    }

    if (v252)
    {
    }

    if (v253)
    {
    }

    if (v254)
    {
    }

    if (v255)
    {
    }

    if (v256)
    {
    }

    if (v257)
    {
    }

    if (v258)
    {
    }

    if (v259)
    {
    }

    if (v260)
    {
    }

    if (v261)
    {
    }

    if (v262)
    {
    }

    if (v263)
    {
    }

    if (v264)
    {
    }

    if (v265)
    {
    }

    if (v266)
    {
    }

    if (v267)
    {
    }

    if (v268)
    {
    }

    if (v269)
    {
    }

    if (v270)
    {
    }

    if (v271)
    {
    }

    if (v272)
    {
    }

    if (v273)
    {
    }

    if (v274)
    {
    }

    if (v275)
    {
    }

    if (v276)
    {
    }

    if (v277)
    {
    }

    if (v278)
    {
    }

    if (v279)
    {
    }

    if (v280)
    {
    }

    if (v281)
    {
    }

    if (v282)
    {
    }

    if (v283)
    {
    }

    if (v284)
    {
    }

    if (v285)
    {
    }

    if (v286)
    {
    }

    if (v287)
    {
    }

    if (v288)
    {
    }

    if (v289)
    {
    }

    if (v290)
    {
    }

    if (v291)
    {
    }

    if (v292)
    {
    }

    if (v293)
    {
    }

    if (v294)
    {
    }

    if (v295)
    {
    }

    if (v296)
    {
    }

    if (v297)
    {
    }

    if (v298)
    {
    }

    if (v299)
    {
    }

    if (v300)
    {
    }

    if (v301)
    {
    }

    if (v302)
    {
    }

    if (v303)
    {
    }

    if (v304)
    {
    }

    if (v305)
    {
    }

    if (v306)
    {
    }

    if (v307)
    {
    }

    if (v308)
    {
    }

    if (v309)
    {
    }

    if (v310)
    {
    }

    if (v311)
    {
    }

    if (v312)
    {
    }

    if (v313)
    {
    }

    if (v314)
    {
    }

    if (v315)
    {
    }

    if (v316)
    {
    }

    if (v317)
    {
    }

    if (v318)
    {
    }

    if (v319)
    {
    }

    if (v320)
    {
    }

    if (v321)
    {
    }

    if (v322)
    {
    }

    if (v323)
    {
    }

    if (v324)
    {
    }

    if (v325)
    {
    }

    if (v326)
    {
    }

    if (v327)
    {
    }

    if (v328)
    {
    }

    if (v329)
    {
    }

    if (v330)
    {
    }

    if (v331)
    {
    }

    if (v332)
    {
    }

    if (v333)
    {
    }

    if (v334)
    {
    }

    if (v335)
    {
    }

    if (v336)
    {
    }

    if (v337)
    {
    }

    if (v338)
    {
    }

    if (v339)
    {
    }

    if (v340)
    {
    }

    if (v341)
    {
    }

    if (v342)
    {
    }

    if (v343)
    {
    }

    if (v344)
    {
    }

    if (v345)
    {
    }

    if (v346)
    {
    }

    if (v347)
    {
    }

    if (v348)
    {
    }

    if (v349)
    {
    }

    if (v350)
    {
    }

    if (v351)
    {
    }

    if (v352)
    {
    }

    if (v353)
    {
    }

    if (v354)
    {
    }

    if (v355)
    {
    }

    if (v356)
    {
    }

    if (v357)
    {
    }

    if (v358)
    {
    }

    if (v359)
    {
    }

    if (v360)
    {
    }

    if (v361)
    {
    }

    if (v362)
    {
    }

    if (v363)
    {
    }

    if (v364)
    {
    }

    if (v365)
    {
    }

    if (v366)
    {
    }

    if (v367)
    {
    }

    if (v368)
    {
    }

    if (v369)
    {
    }

    if (v198)
    {
    }

    _MergedGlobals_24 = 1;
  }

  return qword_1ED6A62C8;
}

+ (id)_internalFeatures
{
  v183[89] = *MEMORY[0x1E69E9840];
  if ((_MergedGlobals_25 & 1) == 0)
  {
    LOWORD(v13) = 0;
    v102 = [[WebFeature alloc] initWithKey:@"AcceleratedFiltersEnabled" preferenceKey:@"WebKitAcceleratedFiltersEnabled" name:@"Accelerated Filter Rendering" status:1 category:0 details:@"Accelerated CSS and SVG filter rendering" defaultValue:v13 hidden:?];
    v183[0] = v102;
    LOWORD(v14) = 0;
    v182 = [[WebFeature alloc] initWithKey:@"DOMTestingAPIsEnabled" preferenceKey:@"WebKitDOMTestingAPIsEnabled" name:@"Additional Testing APIs for DOM Objects" status:2 category:3 details:@"Enable additional testing APIs for DOM objects" defaultValue:v14 hidden:?];
    v183[1] = v182;
    LOWORD(v15) = 0;
    v181 = [[WebFeature alloc] initWithKey:@"AllowViewportShrinkToFitContent" preferenceKey:@"WebKitAllowViewportShrinkToFitContent" name:@"Allow Viewport Shrink to Fit Content" status:2 category:0 details:@"Allow the viewport shrink to fit content heuristic when appropriate" defaultValue:v15 hidden:?];
    v183[2] = v181;
    LOWORD(v16) = 0;
    v180 = [[WebFeature alloc] initWithKey:@"AlwaysAllowLocalWebarchive" preferenceKey:@"WebKitAlwaysAllowLocalWebarchive" name:@"Always allow loading local Web Archive" status:2 category:3 details:@"Enable always allowing loading local Web Archive" defaultValue:v16 hidden:?];
    v183[3] = v180;
    LOWORD(v17) = 0;
    v179 = [[WebFeature alloc] initWithKey:@"AppBadgeEnabled" preferenceKey:@"WebKitAppBadgeEnabled" name:@"App Badge" status:1 category:3 details:@"Enable App Badge" defaultValue:v17 hidden:?];
    v183[4] = v179;
    LOWORD(v18) = 0;
    v178 = [[WebFeature alloc] initWithKey:@"AppHighlightsEnabled" preferenceKey:@"WebKitAppHighlightsEnabled" name:@"App Highlights" status:1 category:2 details:@"Enable App Highlights" defaultValue:v18 hidden:?];
    v183[5] = v178;
    LOWORD(v19) = 0;
    v177 = [[WebFeature alloc] initWithKey:@"UseAsyncUIKitInteractions" preferenceKey:@"WebKitUseAsyncUIKitInteractions" name:@"Async UIKit Interactions" status:2 category:0 details:@"Use Async UIKit Interactions" defaultValue:v19 hidden:?];
    v183[6] = v177;
    LOWORD(v20) = 0;
    v176 = [[WebFeature alloc] initWithKey:@"AutomaticallyAdjustsViewScaleUsingMinimumEffectiveDeviceWidth" preferenceKey:@"WebKitAutomaticallyAdjustsViewScaleUsingMinimumEffectiveDeviceWidth" name:@"Automatically Adjust View Scale" status:2 category:0 details:@"Automatically Adjust View Scale to Fit Min. Effective Device Width" defaultValue:v20 hidden:?];
    v183[7] = v176;
    LOWORD(v21) = 0;
    v175 = [[WebFeature alloc] initWithKey:@"BidiContentAwarePasteEnabled" preferenceKey:@"WebKitBidiContentAwarePasteEnabled" name:@"Bidi Content Aware Paste" status:2 category:0 details:@"Bidi content aware paste" defaultValue:v21 hidden:?];
    v183[8] = v175;
    LOWORD(v22) = 0;
    v174 = [[WebFeature alloc] initWithKey:@"SpringTimingFunctionEnabled" preferenceKey:@"WebKitSpringTimingFunctionEnabled" name:@"CSS Spring Animations" status:1 category:2 details:@"CSS Spring Animation prototype" defaultValue:v22 hidden:?];
    v183[9] = v174;
    LOWORD(v23) = 0;
    v173 = [[WebFeature alloc] initWithKey:@"CSSLineFitEdgeEnabled" preferenceKey:@"WebKitCSSLineFitEdgeEnabled" name:@"CSS line-fit-edge" status:1 category:2 details:@"Enable CSS line-fit-edge" defaultValue:v23 hidden:?];
    v183[10] = v173;
    LOWORD(v24) = 0;
    v172 = [[WebFeature alloc] initWithKey:@"CanvasPixelFormatEnabled" preferenceKey:@"WebKitCanvasPixelFormatEnabled" name:@"CanvasRenderingContext2DSettings.pixelFormat" status:1 category:3 details:@"Allow different pixel formats in 2D canvas" defaultValue:v24 hidden:?];
    v183[11] = v172;
    LOWORD(v25) = 0;
    v171 = [[WebFeature alloc] initWithKey:@"CompositingBordersVisible" preferenceKey:@"WebKitShowDebugBorders" name:@"Compositing borders visible" status:2 category:0 details:&stru_1F472E7E8 defaultValue:v25 hidden:?];
    v183[12] = v171;
    LOWORD(v26) = 0;
    v170 = [[WebFeature alloc] initWithKey:@"CompositingRepaintCountersVisible" preferenceKey:@"WebKitShowRepaintCounter" name:@"Compositing repaint counters visible" status:2 category:0 details:&stru_1F472E7E8 defaultValue:v26 hidden:?];
    v183[13] = v170;
    LOWORD(v27) = 0;
    v169 = [[WebFeature alloc] initWithKey:@"ContentInsetBackgroundFillEnabled" preferenceKey:@"WebKitContentInsetBackgroundFillEnabled" name:@"Content Inset Background Fill" status:2 category:0 details:@"Fill content insets with background colors" defaultValue:v27 hidden:?];
    v183[14] = v169;
    LOWORD(v28) = 0;
    v168 = [[WebFeature alloc] initWithKey:@"DOMPasteAccessRequestsEnabled" preferenceKey:@"WebKitDOMPasteAccessRequestsEnabled" name:@"DOM Paste Access Requests" status:2 category:3 details:@"Enable DOM Paste Access Requests" defaultValue:v28 hidden:?];
    v183[15] = v168;
    LOWORD(v29) = 0;
    v167 = [[WebFeature alloc] initWithKey:@"DisableScreenSizeOverride" preferenceKey:@"WebKitDisableScreenSizeOverride" name:@"Disable screen size override" status:2 category:0 details:&stru_1F472E7E8 defaultValue:v29 hidden:?];
    v183[16] = v167;
    LOWORD(v30) = 0;
    v166 = [[WebFeature alloc] initWithKey:@"ShouldDropNearSuspendedAssertionAfterDelay" preferenceKey:@"WebKitShouldDropNearSuspendedAssertionAfterDelay" name:@"Drop Near-Suspended Assertion After Delay" status:2 category:0 details:@"Causes processes to fully suspend after a delay" defaultValue:v30 hidden:?];
    v183[17] = v166;
    LOWORD(v31) = 0;
    v165 = [[WebFeature alloc] initWithKey:@"DynamicSiteInterventionsEnabled" preferenceKey:@"WebKitDynamicSiteInterventionsEnabled" name:@"Dynamic Site Interventions" status:1 category:0 details:@"Enable dynamic site interventions for broken websites" defaultValue:v31 hidden:?];
    v183[18] = v165;
    LOWORD(v32) = 1;
    v164 = [[WebFeature alloc] initWithKey:@"ICECandidateFilteringEnabled" preferenceKey:@"WebKitICECandidateFilteringEnabled" name:@"Enable ICE Candidate Filtering" status:2 category:3 details:@"Enable ICE Candidate Filtering" defaultValue:v32 hidden:?];
    v183[19] = v164;
    LOWORD(v33) = 0;
    v163 = [[WebFeature alloc] initWithKey:@"MockCaptureDevicesEnabled" preferenceKey:@"WebKitMockCaptureDevicesEnabled" name:@"Enable Mock Capture Devices" status:2 category:5 details:@"Enable Mock Capture Devices" defaultValue:v33 hidden:?];
    v183[20] = v163;
    LOWORD(v34) = 0;
    v162 = [[WebFeature alloc] initWithKey:@"EnterKeyHintEnabled" preferenceKey:@"WebKitEnterKeyHintEnabled" name:@"Enter Key Hint" status:2 category:3 details:@"Enable the enterKeyHint HTML attribute" defaultValue:v34 hidden:?];
    v183[21] = v162;
    LOWORD(v35) = 0;
    v161 = [[WebFeature alloc] initWithKey:@"EventHandlerDrivenSmoothKeyboardScrollingEnabled" preferenceKey:@"WebKitEventHandlerDrivenSmoothKeyboardScrollingEnabled" name:@"EventHandler driven smooth keyboard scrolling" status:2 category:3 details:@"Enable EventHandler driven smooth keyboard scrolling" defaultValue:v35 hidden:?];
    v183[22] = v161;
    LOWORD(v36) = 1;
    v160 = [[WebFeature alloc] initWithKey:@"FormControlRefreshEnabled" preferenceKey:@"WebKitFormControlRefreshEnabled" name:@"Form control refresh for Cocoa platforms" status:2 category:0 details:@"Enable form control refresh for Cocoa platforms" defaultValue:v36 hidden:?];
    v183[23] = v160;
    LOWORD(v37) = 0;
    v159 = [[WebFeature alloc] initWithKey:@"IFrameResourceMonitoringTestingSettingsEnabled" preferenceKey:@"WebKitIFrameResourceMonitoringTestingSettingsEnabled" name:@"Frame Resource Monitoring Settings For Testing" status:2 category:6 details:@"Use Resource Monitoring Settings for testing" defaultValue:v37 hidden:?];
    v183[24] = v159;
    LOWORD(v38) = 0;
    v158 = [[WebFeature alloc] initWithKey:@"IFrameResourceMonitoringEnabled" preferenceKey:@"WebKitIFrameResourceMonitoringEnabled" name:@"Frame Resource Monitoring Support" status:2 category:6 details:@"Enable Usage Monitoring of Frame Resource Support" defaultValue:v38 hidden:?];
    v183[25] = v158;
    LOWORD(v39) = 0;
    v157 = [[WebFeature alloc] initWithKey:@"BlockMediaLayerRehostingInWebContentProcess" preferenceKey:@"WebKitBlockMediaLayerRehostingInWebContentProcess" name:@"GPU Process: Block Media Layer Re-hosting" status:2 category:5 details:@"GPU Process: Block Media Layer Re-hosting in WebContent process" defaultValue:v39 hidden:?];
    v183[26] = v157;
    LOWORD(v40) = 0;
    v156 = [[WebFeature alloc] initWithKey:@"ManageCaptureStatusBarInGPUProcessEnabled" preferenceKey:@"WebKitManageCaptureStatusBarInGPUProcessEnabled" name:@"GPU Process: Capture Status Bar management" status:2 category:5 details:@"Enable Capture Status Bar management in GPU Process" defaultValue:v40 hidden:?];
    v183[27] = v156;
    LOWORD(v41) = 0;
    v155 = [[WebFeature alloc] initWithKey:@"UseGPUProcessForWebGLEnabled" preferenceKey:@"WebKitUseGPUProcessForWebGLEnabled" name:@"GPU Process: WebGL" status:2 category:0 details:@"Process all WebGL operations in GPU Process" defaultValue:v41 hidden:?];
    v183[28] = v155;
    LOWORD(v42) = 1;
    v154 = [[WebFeature alloc] initWithKey:@"AcceleratedDrawingEnabled" preferenceKey:@"WebKitAcceleratedDrawingEnabled" name:@"GraphicsLayer accelerated drawing" status:2 category:0 details:@"Enable GraphicsLayer accelerated drawing" defaultValue:v42 hidden:?];
    v183[29] = v154;
    LOWORD(v43) = 0;
    v153 = [[WebFeature alloc] initWithKey:@"HTMLLegacyAttributeValueSerializationEnabled" preferenceKey:@"WebKitHTMLLegacyAttributeValueSerializationEnabled" name:@"HTML legacy attribute value serialization" status:2 category:3 details:@"Enable HTML legacy attribute value serialization" defaultValue:v43 hidden:?];
    v183[30] = v153;
    LOWORD(v44) = 0;
    v152 = [[WebFeature alloc] initWithKey:@"HostedBlurMaterialInMediaControlsEnabled" preferenceKey:@"WebKitHostedBlurMaterialInMediaControlsEnabled" name:@"Hosted blur material in media controls" status:2 category:0 details:@"Enable hosted blur material in media controls" defaultValue:v44 hidden:?];
    v183[31] = v152;
    LOWORD(v45) = 0;
    v151 = [[WebFeature alloc] initWithKey:@"IOSurfaceLosslessCompressionEnabled" preferenceKey:@"WebKitIOSurfaceLosslessCompressionEnabled" name:@"IOSurface Lossless Compression" status:2 category:0 details:@"Use losslessly compressed IOSurfaces" defaultValue:v45 hidden:?];
    v183[32] = v151;
    LOWORD(v46) = 0;
    v150 = [[WebFeature alloc] initWithKey:@"IgnoreIframeEmbeddingProtectionsEnabled" preferenceKey:@"WebKitIgnoreIframeEmbeddingProtectionsEnabled" name:@"Ignore iframe Embedding Protections" status:2 category:8 details:@"Ignores X-Frame-Options and CSP ancestors" defaultValue:v46 hidden:?];
    v183[33] = v150;
    LOWORD(v47) = 0;
    v149 = [[WebFeature alloc] initWithKey:@"ImageAnalysisDuringFindInPageEnabled" preferenceKey:@"WebKitImageAnalysisDuringFindInPageEnabled" name:@"Image Analysis for Find-in-Page" status:1 category:0 details:@"Trigger image analysis when performing Find-in-Page" defaultValue:v47 hidden:?];
    v183[34] = v149;
    LOWORD(v48) = 0;
    v148 = [[WebFeature alloc] initWithKey:@"InWindowFullscreenEnabled" preferenceKey:@"WebKitInWindowFullscreenEnabled" name:@"In-Window Fullscreen" status:2 category:5 details:@"Enable In-Window Fullscreen" defaultValue:v48 hidden:?];
    v183[35] = v148;
    LOWORD(v49) = 0;
    v147 = [[WebFeature alloc] initWithKey:@"LayerBasedSVGEngineEnabled" preferenceKey:@"WebKitLayerBasedSVGEngineEnabled" name:@"Layer-based SVG Engine (LBSE)" status:1 category:0 details:@"Enable next-generation layer-based SVG Engine (LBSE)" defaultValue:v49 hidden:?];
    v183[36] = v147;
    LOWORD(v50) = 1;
    v146 = [[WebFeature alloc] initWithKey:@"LegacyOverflowScrollingTouchEnabled" preferenceKey:@"WebKitLegacyOverflowScrollingTouchEnabled" name:@"Legacy -webkit-overflow-scrolling property" status:2 category:0 details:@"Support the legacy -webkit-overflow-scrolling CSS property" defaultValue:v50 hidden:?];
    v183[37] = v146;
    LOWORD(v51) = 0;
    v145 = [[WebFeature alloc] initWithKey:@"LegacyLineLayoutVisualCoverageEnabled" preferenceKey:@"WebKitLegacyLineLayoutVisualCoverageEnabled" name:@"Legacy line layout visual coverage" status:2 category:3 details:@"Enable legacy line layout visual coverage" defaultValue:v51 hidden:?];
    v183[38] = v145;
    LOWORD(v52) = 1;
    v144 = [[WebFeature alloc] initWithKey:@"MediaCaptureRequiresSecureConnection" preferenceKey:@"WebKitMediaCaptureRequiresSecureConnection" name:@"Limit Media Capture to Secure Sites" status:2 category:5 details:@"Limit Media Capture to Secure Sites" defaultValue:v52 hidden:?];
    v183[39] = v144;
    LOWORD(v53) = 0;
    v143 = [[WebFeature alloc] initWithKey:@"LinkSanitizerEnabled" preferenceKey:@"WebKitLinkSanitizerEnabled" name:@"Link Sanitizer" status:1 category:6 details:@"Enable link sanitizer" defaultValue:v53 hidden:?];
    v183[40] = v143;
    LOWORD(v54) = 0;
    v142 = [[WebFeature alloc] initWithKey:@"LocalFileContentSniffingEnabled" preferenceKey:@"WebKitLocalFileContentSniffingEnabledPreferenceKey" name:@"Local File Content Sniffing" status:2 category:6 details:@"Enable Local File Content Sniffing" defaultValue:v54 hidden:?];
    v183[41] = v142;
    LOWORD(v55) = 0;
    v141 = [[WebFeature alloc] initWithKey:@"LocalNetworkAccessEnabled" preferenceKey:@"WebKitLocalNetworkAccessEnabledPreferenceKey" name:@"Local Network Access" status:1 category:0 details:@"Enable Local Network Access" defaultValue:v55 hidden:?];
    v183[42] = v141;
    LOWORD(v56) = 0;
    v140 = [[WebFeature alloc] initWithKey:@"LogsPageMessagesToSystemConsoleEnabled" preferenceKey:@"WebKitLogsPageMessagesToSystemConsoleEnabled" name:@"Log page messages to system console" status:2 category:3 details:@"Enable logging page messages to system console" defaultValue:v56 hidden:?];
    v183[43] = v140;
    LOWORD(v57) = 0;
    v139 = [[WebFeature alloc] initWithKey:@"CoreMathMLEnabled" preferenceKey:@"WebKitCoreMathMLEnabled" name:@"MathML Core" status:1 category:3 details:@"Disable features removed from the MathML Core spec." defaultValue:v57 hidden:?];
    v183[44] = v139;
    LOWORD(v58) = 1;
    v138 = [[WebFeature alloc] initWithKey:@"ShouldUseModernAVContentKeySession" preferenceKey:@"WebKitShouldUseModernAVContentKeySession" name:@"Modern AVContentKeySession" status:2 category:5 details:@"Use modern AVContentKeySession" defaultValue:v58 hidden:?];
    v183[45] = v138;
    LOWORD(v59) = 0;
    v137 = [[WebFeature alloc] initWithKey:@"MomentumScrollingAnimatorEnabled" preferenceKey:@"WebKitMomentumScrollingAnimatorEnabled" name:@"Momentum Scrolling Animator" status:2 category:0 details:@"Generate momentum events in WebKit instead of using those delivered by the system" defaultValue:v59 hidden:?];
    v183[46] = v137;
    LOWORD(v60) = 0;
    v136 = [[WebFeature alloc] initWithKey:@"MouseEventsSimulationEnabled" preferenceKey:@"WebKitMouseEventsSimulationEnabled" name:@"Mouse events simulation" status:2 category:3 details:@"Enable mouse events dispatch along with touch events on iOS" defaultValue:v60 hidden:?];
    v183[47] = v136;
    LOWORD(v61) = 0;
    v135 = [[WebFeature alloc] initWithKey:@"MuteCameraOnMicrophoneInterruptionEnabled" preferenceKey:@"WebKitMuteCameraOnMicrophoneInterruptionEnabled" name:@"Mute Camera on Microphone Interruption" status:2 category:5 details:@"Mute Camera on Microphone Interruption" defaultValue:v61 hidden:?];
    v183[48] = v135;
    LOWORD(v62) = 0;
    v134 = [[WebFeature alloc] initWithKey:@"NavigatorUserAgentDataJavaScriptAPIEnabled" preferenceKey:@"WebKitNavigatorUserAgentDataJavaScriptAPIEnabled" name:@"Navigator userAgentData JavaScript API" status:2 category:3 details:@"Enable the navigator.userAgentData JavaScript API" defaultValue:v62 hidden:?];
    v183[49] = v134;
    LOWORD(v63) = 0;
    v133 = [[WebFeature alloc] initWithKey:@"EnableOpaqueLoadingForMedia" preferenceKey:@"WebKitEnableOpaqueLoadingForMedia" name:@"Opaque loading for media" status:2 category:5 details:@"Enable opaque loading for media" defaultValue:v63 hidden:?];
    v183[50] = v133;
    LOWORD(v64) = 0;
    v132 = [[WebFeature alloc] initWithKey:@"OpportunisticSweepingAndGarbageCollectionEnabled" preferenceKey:@"WebKitOpportunisticSweepingAndGarbageCollectionEnabled" name:@"Opportunistic Sweeping and GC" status:2 category:4 details:@"Enable Opportunistic Sweeping and GC" defaultValue:v64 hidden:?];
    v183[51] = v132;
    LOWORD(v65) = 0;
    v131 = [[WebFeature alloc] initWithKey:@"LegacyPluginQuirkForMailSignaturesEnabled" preferenceKey:@"WebKitLegacyPluginQuirkForMailSignaturesEnabled" name:@"Quirk to get Mail to load signatures correctly with WebKitLegacy" status:2 category:0 details:@"Quirk to get Mail to load signatures correctly with WebKitLegacy" defaultValue:v65 hidden:?];
    v183[52] = v131;
    LOWORD(v66) = 0;
    v130 = [[WebFeature alloc] initWithKey:@"RemoteMediaSessionManagerEnabled" preferenceKey:@"WebKitRemoteMediaSessionManagerEnabled" name:@"Remote MediaSessionManager" status:1 category:5 details:@"Enable MediaSessionManager in the GPU process" defaultValue:v66 hidden:?];
    v183[53] = v130;
    LOWORD(v67) = 0;
    v129 = [[WebFeature alloc] initWithKey:@"LoginStatusAPIRequiresWebAuthnEnabled" preferenceKey:@"WebKitLoginStatusAPIRequiresWebAuthnEnabled" name:@"Require WebAuthn with the Login Status API" status:2 category:3 details:@"Require a recent WebAuthn authentication to set login status" defaultValue:v67 hidden:?];
    v183[54] = v129;
    LOWORD(v68) = 1;
    v128 = [[WebFeature alloc] initWithKey:@"SpeakerSelectionRequiresUserGesture" preferenceKey:@"WebKitSpeakerSelectionRequiresUserGesture" name:@"Require a user gesture for speaker selection" status:2 category:5 details:@"Require a user gesture for speaker selection" defaultValue:v68 hidden:?];
    v183[55] = v128;
    LOWORD(v69) = 1;
    v127 = [[WebFeature alloc] initWithKey:@"GetUserMediaRequiresFocus" preferenceKey:@"WebKitGetUserMediaRequiresFocus" name:@"Require focus to start getUserMedia" status:2 category:5 details:@"Require focus to start getUserMedia" defaultValue:v69 hidden:?];
    v183[56] = v127;
    LOWORD(v70) = 0;
    v126 = [[WebFeature alloc] initWithKey:@"ResourceLoadSchedulingEnabled" preferenceKey:@"WebKitResourceLoadSchedulingEnabled" name:@"Resource Load Scheduling" status:2 category:6 details:@"Network process side priority and visibility based resource load scheduling" defaultValue:v70 hidden:?];
    v183[57] = v126;
    LOWORD(v71) = 0;
    v125 = [[WebFeature alloc] initWithKey:@"ResourceUsageOverlayVisible" preferenceKey:@"WebKitResourceUsageOverlayVisible" name:@"Resource usage overlay" status:2 category:6 details:@"Make resource usage overlay visible" defaultValue:v71 hidden:?];
    v183[58] = v125;
    LOWORD(v72) = 0;
    v124 = [[WebFeature alloc] initWithKey:@"RespondToThermalPressureAggressively" preferenceKey:@"WebKitRespondToThermalPressureAggressively" name:@"Respond to thermal pressure aggressively" status:2 category:0 details:@"Enable responding to thermal pressure aggressively" defaultValue:v72 hidden:?];
    v183[59] = v124;
    LOWORD(v73) = 0;
    v123 = [[WebFeature alloc] initWithKey:@"IsSameSiteStrictEnforcementEnabled" preferenceKey:@"WebKitIsSameSiteStrictEnforcementEnabled" name:@"SameSite strict enforcement (ITP)" status:1 category:7 details:@"Enable SameSite strict enforcement to mitigate bounce tracking" defaultValue:v73 hidden:?];
    v183[60] = v123;
    LOWORD(v74) = 0;
    v122 = [[WebFeature alloc] initWithKey:@"ScreenTimeEnabled" preferenceKey:@"WebKitScreenTimeEnabled" name:@"Screen Time" status:2 category:0 details:@"Enable Screen Time" defaultValue:v74 hidden:?];
    v183[61] = v122;
    LOWORD(v75) = 1;
    v121 = [[WebFeature alloc] initWithKey:@"SecureContextChecksEnabled" preferenceKey:@"WebKitSecureContextChecksEnabled" name:@"Secure Context Checks" status:2 category:8 details:@"Allow access to HTTPS-only Web APIs over HTTP" defaultValue:v75 hidden:?];
    v183[62] = v121;
    LOWORD(v76) = 0;
    v120 = [[WebFeature alloc] initWithKey:@"ShowFrameProcessBordersEnabled" preferenceKey:@"WebKitShowFrameProcessBordersEnabled" name:@"Show frame process borders" status:2 category:0 details:&stru_1F472E7E8 defaultValue:v76 hidden:?];
    v183[63] = v120;
    LOWORD(v77) = 0;
    v119 = [[WebFeature alloc] initWithKey:@"SiteIsolationEnabled" preferenceKey:@"WebKitSiteIsolationEnabled" name:@"Site Isolation" status:1 category:8 details:@"Put cross-origin iframes in a different process" defaultValue:v77 hidden:?];
    v183[64] = v119;
    LOWORD(v78) = 1;
    v118 = [[WebFeature alloc] initWithKey:@"TextAnimationsEnabled" preferenceKey:@"WebKitTextAnimationsEnabled" name:@"Text Animations" status:2 category:0 details:@"Text Animations" defaultValue:v78 hidden:?];
    v183[65] = v118;
    LOWORD(v79) = 0;
    v117 = [[WebFeature alloc] initWithKey:@"ThreadedAnimationResolutionEnabled" preferenceKey:@"WebKitThreadedAnimationResolutionEnabled" name:@"Threaded animation resolution" status:1 category:1 details:@"Run accelerated animations on a separate thread" defaultValue:v79 hidden:?];
    v183[66] = v117;
    LOWORD(v80) = 0;
    v116 = [[WebFeature alloc] initWithKey:@"TiledScrollingIndicatorVisible" preferenceKey:@"WebKitTiledScrollingIndicatorVisible" name:@"Tiled scrolling indicator" status:2 category:0 details:@"Make tiled scrolling indicator visible" defaultValue:v80 hidden:?];
    v183[67] = v116;
    LOWORD(v81) = 0;
    v115 = [[WebFeature alloc] initWithKey:@"TopContentInsetBackgroundCanChangeAfterScrolling" preferenceKey:@"WebKitTopContentInsetBackgroundCanChangeAfterScrolling" name:@"Top Content Inset Background Can Change After Scrolling" status:2 category:0 details:@"Top content inset background can change after scrolling" defaultValue:v81 hidden:?];
    v183[68] = v115;
    LOWORD(v82) = 0;
    v114 = [[WebFeature alloc] initWithKey:@"UndoManagerAPIEnabled" preferenceKey:@"WebKitUndoManagerAPIEnabled" name:@"UndoManager DOM API" status:1 category:3 details:@"Enable the UndoManager DOM API" defaultValue:v82 hidden:?];
    v183[69] = v114;
    LOWORD(v83) = 0;
    v113 = [[WebFeature alloc] initWithKey:@"UseIFCForSVGText" preferenceKey:@"WebKitUseIFCForSVGText" name:@"Use IFC for SVG text" status:2 category:0 details:@"Use IFC for SVG text rendering" defaultValue:v83 hidden:?];
    v183[70] = v113;
    LOWORD(v84) = 1;
    v112 = [[WebFeature alloc] initWithKey:@"UserGesturePromisePropagationEnabled" preferenceKey:@"WebKitUserGesturePromisePropagationEnabled" name:@"UserGesture Promise Propagation" status:2 category:3 details:@"UserGesture Promise Propagation" defaultValue:v84 hidden:?];
    v183[71] = v112;
    LOWORD(v85) = 1;
    v111 = [[WebFeature alloc] initWithKey:@"UsesWebContentRestrictionsForFilter" preferenceKey:@"WebKitUsesWebContentRestrictionsForFilter" name:@"Uses WebContentRestriction framework for content filter" status:2 category:0 details:&stru_1F472E7E8 defaultValue:v85 hidden:?];
    v183[72] = v111;
    LOWORD(v86) = 0;
    v110 = [[WebFeature alloc] initWithKey:@"ServiceWorkersUserGestureEnabled" preferenceKey:@"WebKitServiceWorkersUserGestureEnabled" name:@"Validate UserGesture requirements in Service Workers" status:2 category:3 details:@"Validate UserGesture requirements in Service Workers" defaultValue:v86 hidden:?];
    v183[73] = v110;
    LOWORD(v87) = 0;
    v109 = [[WebFeature alloc] initWithKey:@"VisuallyContiguousBidiTextSelectionEnabled" preferenceKey:@"WebKitVisuallyContiguousBidiTextSelectionEnabled" name:@"Visually Contiguous Bidi Selection" status:2 category:0 details:@"Visually contiguous bidi selection" defaultValue:v87 hidden:?];
    v183[74] = v109;
    LOWORD(v88) = 0;
    v108 = [[WebFeature alloc] initWithKey:@"WebAPIStatisticsEnabled" preferenceKey:@"WebKitWebAPIStatisticsEnabled" name:@"Web API Statistics" status:1 category:3 details:@"Enable Web API Statistics" defaultValue:v88 hidden:?];
    v183[75] = v108;
    LOWORD(v89) = 0;
    v107 = [[WebFeature alloc] initWithKey:@"WebAPIsInShadowRealmEnabled" preferenceKey:@"WebKitWebAPIsInShadowRealmEnabled" name:@"Web APIs in ShadowRealm" status:1 category:3 details:@"Enable Web APIs to be exposed in ShadowRealm" defaultValue:v89 hidden:?];
    v183[76] = v107;
    LOWORD(v90) = 0;
    v106 = [[WebFeature alloc] initWithKey:@"WebArchiveTestingModeEnabled" preferenceKey:@"WebKitWebArchiveTestingModeEnabled" name:@"Web Archive testing mode" status:2 category:3 details:@"Enable web archive testing mode" defaultValue:v90 hidden:?];
    v183[77] = v106;
    LOWORD(v91) = 0;
    v105 = [[WebFeature alloc] initWithKey:@"WebInspectorEngineeringSettingsAllowed" preferenceKey:@"WebKitWebInspectorEngineeringSettingsAllowed" name:@"WebInspector engineering settings allowed" status:2 category:3 details:&stru_1F472E7E8 defaultValue:v91 hidden:?];
    v183[78] = v105;
    LOWORD(v92) = 1;
    v104 = [[WebFeature alloc] initWithKey:@"WebRTCAudioLatencyAdaptationEnabled" preferenceKey:@"WebKitWebRTCAudioLatencyAdaptationEnabled" name:@"WebRTC Audio Latency Adaptation" status:2 category:5 details:@"Enable WebRTC Audio Latency Adaptation" defaultValue:v92 hidden:?];
    v183[79] = v104;
    LOWORD(v93) = 1;
    v103 = [[WebFeature alloc] initWithKey:@"WebRTCDTMFEnabled" preferenceKey:@"WebKitWebRTCDTMFEnabled" name:@"WebRTC DTMF" status:2 category:5 details:@"Enable WebRTC DTMF" defaultValue:v93 hidden:?];
    v183[80] = v103;
    LOWORD(v94) = 1;
    v3 = [[WebFeature alloc] initWithKey:@"WebRTCH264HardwareEncoderEnabled" preferenceKey:@"WebKitWebRTCH264HardwareEncoderEnabled" name:@"WebRTC H264 Hardware encoder" status:2 category:5 details:@"Enable H264 Hardware encoder" defaultValue:v94 hidden:?];
    v183[81] = v3;
    LOWORD(v95) = 0;
    v4 = [[WebFeature alloc] initWithKey:@"WebRTCMediaPipelineAdditionalLoggingEnabled" preferenceKey:@"WebKitWebRTCMediaPipelineAdditionalLoggingEnabled" name:@"WebRTC Media Pipeline Additional Logging" status:2 category:5 details:@"Enable WebRTC Media Pipeline Additional Logging" defaultValue:v95 hidden:?];
    v183[82] = v4;
    LOWORD(v96) = 0;
    v5 = [[WebFeature alloc] initWithKey:@"WebRTCRemoteVideoFrameEnabled" preferenceKey:@"WebKitWebRTCRemoteVideoFrameEnabled" name:@"WebRTC Remote Video Frame" status:2 category:5 details:@"Enable WebRTC Remote Video Frame" defaultValue:v96 hidden:?];
    v183[83] = v5;
    LOWORD(v97) = 0;
    v6 = [[WebFeature alloc] initWithKey:@"WebRTCSocketsProxyingEnabled" preferenceKey:@"WebKitWebRTCSocketsProxyingEnabled" name:@"WebRTC Sockets Proxying" status:2 category:5 details:@"Enable WebRTC Sockets Proxying" defaultValue:v97 hidden:?];
    v183[84] = v6;
    LOWORD(v98) = 1;
    v7 = [[WebFeature alloc] initWithKey:@"WebRTCVP9Profile0CodecEnabled" preferenceKey:@"WebKitWebRTCVP9Profile0CodecEnabled" name:@"WebRTC VP9 profile 0 codec" status:2 category:5 details:@"Enable WebRTC VP9 profile 0 codec" defaultValue:v98 hidden:?];
    v183[85] = v7;
    LOWORD(v99) = 0;
    v8 = [[WebFeature alloc] initWithKey:@"WebRTCInterfaceMonitoringViaNWEnabled" preferenceKey:@"WebKitWebRTCInterfaceMonitoringViaNWEnabled" name:@"WebRTC interface monitoring via NW" status:2 category:5 details:@"Enable WebRTC interface monitoring via NW" defaultValue:v99 hidden:?];
    v183[86] = v8;
    LOWORD(v100) = 1;
    v9 = [[WebFeature alloc] initWithKey:@"WriteRichTextDataWhenCopyingOrDragging" preferenceKey:@"WebKitWriteRichTextDataWhenCopyingOrDragging" name:@"Write RTF on Copy" status:2 category:0 details:@"Write RTF defaultValue:RTFD and attributed strings to the pasteboard when copying or dragging" hidden:v100];
    v183[87] = v9;
    LOWORD(v101) = 0;
    v10 = [[WebFeature alloc] initWithKey:@"RequestStorageAccessThrowsExceptionUntilReload" preferenceKey:@"WebKitRequestStorageAccessThrowsExceptionUntilReload" name:@"requestStorageAccess throws execption until reload" status:1 category:3 details:@"requestStorageAccess throws execption until reload" defaultValue:v101 hidden:?];
    v183[88] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v183 count:89];
    qword_1ED6A62D8 = v11;
    if (v11)
    {
      v12 = v11;
    }

    if (v10)
    {
    }

    if (v9)
    {
    }

    if (v8)
    {
    }

    if (v7)
    {
    }

    if (v6)
    {
    }

    if (v5)
    {
    }

    if (v4)
    {
    }

    if (v3)
    {
    }

    if (v103)
    {
    }

    if (v104)
    {
    }

    if (v105)
    {
    }

    if (v106)
    {
    }

    if (v107)
    {
    }

    if (v108)
    {
    }

    if (v109)
    {
    }

    if (v110)
    {
    }

    if (v111)
    {
    }

    if (v112)
    {
    }

    if (v113)
    {
    }

    if (v114)
    {
    }

    if (v115)
    {
    }

    if (v116)
    {
    }

    if (v117)
    {
    }

    if (v118)
    {
    }

    if (v119)
    {
    }

    if (v120)
    {
    }

    if (v121)
    {
    }

    if (v122)
    {
    }

    if (v123)
    {
    }

    if (v124)
    {
    }

    if (v125)
    {
    }

    if (v126)
    {
    }

    if (v127)
    {
    }

    if (v128)
    {
    }

    if (v129)
    {
    }

    if (v130)
    {
    }

    if (v131)
    {
    }

    if (v132)
    {
    }

    if (v133)
    {
    }

    if (v134)
    {
    }

    if (v135)
    {
    }

    if (v136)
    {
    }

    if (v137)
    {
    }

    if (v138)
    {
    }

    if (v139)
    {
    }

    if (v140)
    {
    }

    if (v141)
    {
    }

    if (v142)
    {
    }

    if (v143)
    {
    }

    if (v144)
    {
    }

    if (v145)
    {
    }

    if (v146)
    {
    }

    if (v147)
    {
    }

    if (v148)
    {
    }

    if (v149)
    {
    }

    if (v150)
    {
    }

    if (v151)
    {
    }

    if (v152)
    {
    }

    if (v153)
    {
    }

    if (v154)
    {
    }

    if (v155)
    {
    }

    if (v156)
    {
    }

    if (v157)
    {
    }

    if (v158)
    {
    }

    if (v159)
    {
    }

    if (v160)
    {
    }

    if (v161)
    {
    }

    if (v162)
    {
    }

    if (v163)
    {
    }

    if (v164)
    {
    }

    if (v165)
    {
    }

    if (v166)
    {
    }

    if (v167)
    {
    }

    if (v168)
    {
    }

    if (v169)
    {
    }

    if (v170)
    {
    }

    if (v171)
    {
    }

    if (v172)
    {
    }

    if (v173)
    {
    }

    if (v174)
    {
    }

    if (v175)
    {
    }

    if (v176)
    {
    }

    if (v177)
    {
    }

    if (v178)
    {
    }

    if (v179)
    {
    }

    if (v180)
    {
    }

    if (v181)
    {
    }

    if (v182)
    {
    }

    if (v102)
    {
    }

    _MergedGlobals_25 = 1;
  }

  return qword_1ED6A62D8;
}

@end