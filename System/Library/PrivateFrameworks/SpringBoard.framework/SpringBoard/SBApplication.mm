@interface SBApplication
+ (BOOL)KJHKJHw39rq9w87q903475q0983rskjd;
+ (BOOL)_displayZoomSizesOnThisDeviceNeedRedaction;
+ (CGSize)_defaultLaunchingSizeForClassicMode:(int64_t)a3;
+ (CGSize)_defaultLaunchingSizeForDisplayConfiguration:(id)a3 classicMode:(int64_t)a4;
+ (CGSize)_standardCanvasSizeForClassicMode:(int64_t)a3;
+ (id)_appStateKeysToPrefetch;
+ (id)_deviceSafeAreaInsets;
+ (id)restrictedClassicModeDisplayConfigurationForDisplayConfiguration:(id)a3 classicMode:(int64_t)a4;
+ (id)snapshotSortDescriptorForCustomSafeAreaInsets:(id)a3;
+ (id)snapshotSortDescriptorForImageScale:(double)a3;
+ (id)snapshotSortDescriptorForInterfaceOrientationMask:(unint64_t)a3;
+ (id)snapshotSortDescriptorForLaunchInterfaceIdentifier:(id)a3;
+ (id)snapshotSortDescriptorForNames:(id)a3;
+ (id)snapshotSortDescriptorForReferenceSize:(CGSize)a3;
+ (id)snapshotSortDescriptorForRequiredOSVersion:(id)a3;
+ (id)snapshotSortDescriptorForScheme:(id)a3;
+ (id)snapshotSortDescriptorForStatusBarStateMask:(unint64_t)a3;
+ (id)snapshotSortDescriptorForUIUserInterfaceStyle:(int64_t)a3;
+ (id)snapshotSortDescriptorsForNames:(id)a3 scheme:(id)a4 imageScale:(double)a5 referenceSize:(CGSize)a6 userInterfaceStyle:(int64_t)a7 statusBarStateMask:(unint64_t)a8 interfaceOrientationMask:(unint64_t)a9 requiredOSVersion:(id)a10;
+ (int64_t)_bestAvailableClassicModeForHostingExtensionContainedInApplication:(BOOL)a3;
+ (int64_t)_bestClassicModeForScreenType:(unint64_t)a3;
+ (int64_t)_classicModeForLaunchingSize:(CGSize)a3;
+ (int64_t)_classicModeReplacingMoreSpaceWithEquivalentStandardCanvasForClassicMode:(int64_t)a3;
+ (unint64_t)_canonicalScreenTypeForClassicMode:(int64_t)a3;
+ (unint64_t)_niceScreenTypeForClassicType:(unint64_t)a3 matchingAValidDisplayZoomModeOnScreenType:(unint64_t)a4;
+ (unint64_t)_unobscuredScreenTypeForScreenType:(uint64_t)a1;
+ (void)_markAllManifestsForReingestion;
+ (void)_reingestStaticDefaultImagesForAllApps;
- (BOOL)_canLaunchInClassicMode:(int64_t)a3;
- (BOOL)_classicAppScaledOnPhone;
- (BOOL)_classicAppScaledPadOnPad;
- (BOOL)_classicAppScaledPhoneOnPad;
- (BOOL)_isNewlyInstalled;
- (BOOL)_isRecentlyUpdated;
- (BOOL)alwaysMaximizedInChamois;
- (BOOL)classicAppFullScreen;
- (BOOL)classicAppNonFullScreenWithHomeAffordance;
- (BOOL)classicAppRequiresHiDPI;
- (BOOL)classicAppScaled;
- (BOOL)classicAppScaledWithAspectRatioCloseEnoughToBeTreatedAsFullScreen;
- (BOOL)classicAppWithOwnSafeArea;
- (BOOL)classicAppWithRoundedCorners;
- (BOOL)classicAppZoomedIn;
- (BOOL)classicAppZoomedInOrRequiresHiDPI;
- (BOOL)hasRegisteredBackgroundActivityWithIdentifier:(id)a3;
- (BOOL)icon:(id)a3 launchFromLocation:(id)a4 context:(id)a5;
- (BOOL)iconAllowsLaunch:(id)a3;
- (BOOL)iconCompleteUninstall:(id)a3;
- (BOOL)includesStatusBarInClassicJailForInterfaceOrientation:(int64_t)a3;
- (BOOL)isAnyTerminationAssertionInEffect;
- (BOOL)isFaceTime;
- (BOOL)isMedusaCapable;
- (BOOL)isMobilePhone;
- (BOOL)isPaperBoard;
- (BOOL)isSameExecutableAsApplication:(id)a3;
- (BOOL)isSetup;
- (BOOL)isSpotlight;
- (BOOL)isSpringBoard;
- (BOOL)isTimedOutForIcon:(id)a3;
- (BOOL)isUninstallSupported;
- (BOOL)isUninstalled;
- (BOOL)onlySupportsOneOrientation;
- (BOOL)restrictedToTheEmbeddedDisplayInChamois;
- (BOOL)shouldReceiveSourceApplicationContextFromOriginatingApplication:(id)a3;
- (BOOL)supportsChamoisOnExternalDisplay;
- (BOOL)supportsMixedOrientationForSwitcherWindowManagementContext:(id)a3 displayIdentity:(id)a4;
- (BOOL)supportsMultiWindowLayoutsForSwitcherWindowManagementContext:(id)a3 displayIdentity:(id)a4;
- (BOOL)supportsMultitaskingShelf;
- (BOOL)suppressesControlCenter;
- (BOOL)wantsAutoLaunchForVOIP;
- (CGRect)snapshotFrameForClassicInsideBounds:(CGRect)a3 forOrientation:(int64_t)a4 scaleFactor:(CGSize *)a5 inReferenceSpace:(BOOL)a6;
- (CGSize)defaultLaunchingSizeForDisplayConfiguration:(id)a3;
- (CGSize)snapshotSizeAdjustedForLegacyStatusBarBasedOnSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 contentFrame:(CGRect *)a5;
- (NSArray)dynamicApplicationShortcutItems;
- (NSDate)nextWakeDate;
- (SBApplication)initWithApplicationInfo:(id)a3;
- (SBApplicationAppProtectionAssistant)appProtectionAssistant;
- (SBApplicationInfo)info;
- (SBApplicationWakeScheduler)legacyVOIPPeriodicWakeScheduler;
- (id)_classicModeForHostingExtensionContainedInThisApplicationInUnknownHostingHierarchy;
- (id)_defaultLaunchImageBaseName;
- (id)_defaultPNGNameFromSuspensionSettingsWithExpiration:(double *)a3 sceneID:(id)a4;
- (id)_defaultPNGNameUsingFallbacksWithSceneID:(id)a3 contentOverridesContext:(id)a4;
- (id)_normalizeSnapshotName:(id)a3;
- (id)_preferredImagePathByScaleInBundle:(id)a3 resourceName:(id)a4 ofType:(id)a5 scale:(double)a6 outScale:(double *)a7;
- (id)_preferredImagePathInBundle:(id)a3 baseResourceName:(id)a4 ofType:(id)a5 forMainScene:(BOOL)a6 size:(CGSize)a7 scale:(double)a8 outScale:(double *)a9;
- (id)_prepareInitializationContextIfNecessaryForLaunchOnDisplayConfiguration:(id)a3;
- (id)_sceneIdentifierForStoredPersistenceIdentifier:(id)a3;
- (id)_snapshotManifestCreateIfNeeded:(BOOL)a3;
- (id)_snapshotsWithImageName:(id)a3 sceneHandle:(id)a4 referenceSize:(CGSize)a5 requireExactSize:(BOOL)a6 launchingScale:(double)a7 contentTypeMask:(unint64_t)a8 statusBarStateMask:(unint64_t)a9 launchingOrientation:(int64_t)a10 contentOverridesContext:(id)a11 userInterfaceStyle:(int64_t)a12 displayEdgeInfo:(id)a13;
- (id)_windowSceneFromApplicationSceneHandle:(id)a3;
- (id)backgroundActivityAttributionsByIdentifier;
- (id)badgeValue;
- (id)bestSnapshotWithImageName:(id)a3 sceneHandle:(id)a4 variantID:(id)a5 scale:(double)a6 referenceSize:(CGSize)a7 requireExactSize:(BOOL)a8 contentTypeMask:(unint64_t)a9 statusBarStateMask:(unint64_t)a10 launchingOrientation:(int64_t)a11 contentOverridesContext:(id)a12 userInterfaceStyle:(int64_t)a13 displayEdgeInfo:(id)a14;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)folderFallbackTitleForIcon:(id)a3;
- (id)folderTitleOptionsForIcon:(id)a3;
- (id)iTunesCategoriesOrderedByRelevancyForIcon:(id)a3;
- (id)icon:(id)a3 displayNameForObscuredDisabledLaunchForLocation:(id)a4;
- (id)lastWindowLayoutAttributesForDisplayOrdinal:(int64_t)a3;
- (id)mostRecentSceneSnapshotsForSceneHandle:(id)a3 scale:(double)a4 launchingOrientation:(int64_t)a5;
- (id)restrictedClassicModeDisplayConfigurationForDisplayConfiguration:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)tagsForIcon:(id)a3;
- (int)dataUsage;
- (int64_t)_classicMode;
- (int64_t)_classicModeFromSupportedTypes;
- (int64_t)_defaultClassicMode;
- (int64_t)dataOwnershipRoleAsDragDropTargetForIcon:(id)a3;
- (int64_t)labelAccessoryTypeForIcon:(id)a3;
- (int64_t)preferredSizingPolicyForSwitcherWindowManagementContext:(id)a3 displayIdentity:(id)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6;
- (uint64_t)_bypassesClassicMode;
- (uint64_t)_isNewEnoughToKnowAbout2020Phones;
- (uint64_t)_isNewEnoughToKnowAboutRoundPads;
- (uint64_t)_screenTypeForClassicMode:(uint64_t)a1;
- (unint64_t)_appRestrictionReason;
- (unint64_t)_supportedTypeForClassicModeNone;
- (unint64_t)supportedSizingPoliciesForSwitcherWindowManagementContext:(id)a3 displayIdentity:(id)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6;
- (void)__noteSnapshotDidUpdate:(int64_t)a3 forSceneIdentifier:(id)a4;
- (void)_calculateSupportedTypesForSplashBoard;
- (void)_calculateSupportedTypesLazilyIfNecessary;
- (void)_classicModeForHostingExtensionContainedInApplication:(void *)a1;
- (void)_clearSceneTitles;
- (void)_didExitWithContext:(id)a3;
- (void)_didSuspend;
- (void)_ingestDefaultPNGsInManifest:(id)a3 withLaunchImageBaseName:(id)a4;
- (void)_ingestInfoPlistImagesInManifest:(id)a3;
- (void)_invalidateBackgroundActivityAttributions;
- (void)_lockStateDidChange:(id)a3;
- (void)_noteIconDataSourceDidChange;
- (void)_noteProcess:(id)a3 didChangeToState:(id)a4;
- (void)_noteSnapshotDidUpdateForSceneIdentifiers:(id)a3;
- (void)_processDidLaunch:(id)a3;
- (void)_processWillLaunch:(id)a3;
- (void)_purgeAndResetStaticDefaultImagesInSnapshotManifest;
- (void)_purgeStaticDefaultImagesInSnapshotManifest;
- (void)_recalculateApplicationSupportedTypes;
- (void)_reingestStaticDefaultImagesInSnapshotManifest;
- (void)_resetLaunchImageIngestionStatus;
- (void)_setClassicAppZoomedIn:(BOOL)a3;
- (void)_setDataUsage:(int)a3;
- (void)_setNewlyInstalled:(BOOL)a3;
- (void)_setRecentlyUpdated:(BOOL)a3;
- (void)_updateProcess:(id)a3 withState:(id)a4;
- (void)_updateRecentlyUpdatedTimer;
- (void)_xbactivity_saveSnapshotForSceneHandle:(id)a3 context:(id)a4 completion:(id)a5;
- (void)clearLastWindowLayoutAttributes;
- (void)clearNewlyInstalledAndRecentlyUpdatedStatus;
- (void)createDownscaledVariantForSnapshot:(id)a3 sceneHandle:(id)a4 scaleFactor:(double)a5 didSaveImage:(id)a6;
- (void)dealloc;
- (void)deleteAllSnapshots;
- (void)deleteSnapshotForContext:(id)a3;
- (void)flushSnapshotsForAllScenes;
- (void)flushSnapshotsForAllScenesIncludingAllLegacyImages;
- (void)flushSnapshotsForSceneID:(id)a3;
- (void)launchFromIcon:(id)a3 location:(id)a4 context:(id)a5;
- (void)manifest:(id)a3 didPurgeProtectedContentSnapshotsWithGroupIdentifiers:(id)a4;
- (void)preHeatForUserLaunchIfNecessaryWithAbsoluteTime:(unint64_t)a3 andContinuousTime:(unint64_t)a4;
- (void)purgeCaches;
- (void)refreshLaunchImagesInSnapshotManifestIfNeeded;
- (void)releaseBackgroundActivityAttribution:(id)a3;
- (void)saveSnapshotForSceneHandle:(id)a3 context:(id)a4 completion:(id)a5;
- (void)saveSuspendSnapshot:(id)a3 forSceneHandle:(id)a4;
- (void)setBadgeValue:(id)a3;
- (void)setConnectedToExternalAccessory:(BOOL)a3;
- (void)setDynamicApplicationShortcutItems:(id)a3;
- (void)setHasDisplayedLaunchAlert:(BOOL)a3 forType:(unint64_t)a4;
- (void)setInfo:(id)a3;
- (void)setLastWindowLayoutAttributes:(id)a3 forDisplayOrdinal:(int64_t)a4;
- (void)setNextWakeDate:(id)a3;
- (void)setNowRecordingApplication:(BOOL)a3;
- (void)setPlayingAudio:(BOOL)a3;
- (void)setShowsProgress:(BOOL)a3;
- (void)setUninstalled:(BOOL)a3;
- (void)setUsesBackgroundNetwork:(BOOL)a3;
- (void)setUsesEdgeNetwork:(BOOL)a3;
- (void)setUsesWiFiNetwork:(BOOL)a3;
- (void)setWantsAutoLaunchForVOIP:(BOOL)a3;
- (void)takeBackgroundActivityAttribution:(id)a3;
- (void)uninstall;
@end

@implementation SBApplication

- (SBApplicationInfo)info
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_appInfo;
  objc_sync_exit(v2);

  return v3;
}

- (int64_t)_defaultClassicMode
{
  result = self->_defaultClassicModeOverride;
  if (result == -1)
  {
    [(SBApplication *)self _calculateSupportedTypesLazilyIfNecessary];
    result = [(SBApplication *)self _classicModeFromSupportedTypes];
    if (result == -1)
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)_classicModeFromSupportedTypes
{
  if ([(SBApplicationInfo *)self->_appInfo usesSplashBoard]&& ![(SBApplication *)self _useSupportedTypesForSplashBoard])
  {
    return -1;
  }

  if (([(SBApplication *)self _bypassesClassicMode]& 1) != 0)
  {
    return 0;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 != 1)
    {
LABEL_9:
      v6 = [objc_opt_class() _deviceHasDynamicIsland];
      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v12 = MEMORY[0x277D66E30];
      if (BSSizeEqualToSize())
      {
        v13 = [(SBApplication *)self _supportsApplicationType:0x2000]& v6;
      }

      else
      {
        v13 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v13)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeEqualToSize())
      {
        v16 = [(SBApplication *)self _supportsApplicationType:4096]& v6;
      }

      else
      {
        v16 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v16)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeEqualToSize())
      {
        v19 = [(SBApplication *)self _supportsApplicationType:2048];
      }

      else
      {
        v19 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v19)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeEqualToSize())
      {
        v28 = [(SBApplication *)self _supportsApplicationType:0x4000]& v6;
      }

      else
      {
        v28 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v28)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeEqualToSize())
      {
        v45 = [(SBApplication *)self _supportsApplicationType:1024];
      }

      else
      {
        v45 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v45)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeEqualToSize())
      {
        v57 = [(SBApplication *)self _supportsApplicationType:512]& v6;
      }

      else
      {
        v57 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v57)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeEqualToSize())
      {
        v61 = [(SBApplication *)self _supportsApplicationType:256]& v6;
      }

      else
      {
        v61 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v61)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeEqualToSize())
      {
        v65 = [(SBApplication *)self _supportsApplicationType:128];
      }

      else
      {
        v65 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v65)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeEqualToSize())
      {
        v69 = [(SBApplication *)self _supportsApplicationType:64];
      }

      else
      {
        v69 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v69)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeEqualToSize())
      {
        v73 = [(SBApplication *)self _supportsApplicationType:32];
      }

      else
      {
        v73 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v73)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v169 = v12[7];
      if (BSSizeEqualToSize())
      {
        v77 = [(SBApplication *)self _supportsApplicationType:16];
      }

      else
      {
        v77 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v77)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v168 = v12[5];
      if (BSSizeEqualToSize())
      {
        v81 = [(SBApplication *)self _supportsApplicationType:8];
      }

      else
      {
        v81 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v81)
      {
        goto LABEL_313;
      }

      v7 = __sb__runningInSpringBoard();
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v167 = v12[3];
      if (BSSizeEqualToSize())
      {
        v85 = [(SBApplication *)self _supportsApplicationType:4];
      }

      else
      {
        v85 = 0;
      }

      if ((v7 & 1) == 0)
      {
      }

      if (v85)
      {
LABEL_313:
        if (!+[SBApplication _displayZoomSizesOnThisDeviceNeedRedaction])
        {
          return 0;
        }

        v88 = __sb__runningInSpringBoard();
        v89 = v88;
        if (v88)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v7 = [MEMORY[0x277D759A0] mainScreen];
          [v7 _referenceBounds];
        }

        BSSizeRoundForScale();
        if (BSSizeEqualToSize())
        {
          v90 = [(SBApplication *)self _supportsApplicationType:64];
        }

        else
        {
          v90 = 0;
        }

        if ((v89 & 1) == 0)
        {
        }

        if (v90)
        {
          return 6;
        }

        v91 = __sb__runningInSpringBoard();
        v56 = v91;
        if (v91)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v7 = [MEMORY[0x277D759A0] mainScreen];
          [v7 _referenceBounds];
        }

        BSSizeRoundForScale();
        if (BSSizeEqualToSize())
        {
          if ([(SBApplication *)self _supportsApplicationType:32])
          {
            v4 = 5;
          }

          else
          {
            v4 = 0;
          }
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_332;
      }

      v92 = __sb__runningInSpringBoard();
      v93 = v92;
      if (v92)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeLessThanSize())
      {
        v95 = [(SBApplication *)self _supportsApplicationType:0x2000]& v6;
      }

      else
      {
        v95 = 0;
      }

      if ((v93 & 1) == 0)
      {
      }

      if (v95)
      {
        return 13;
      }

      v98 = __sb__runningInSpringBoard();
      v99 = v98;
      if (v98)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeLessThanSize())
      {
        v101 = [(SBApplication *)self _supportsApplicationType:4096]& v6;
      }

      else
      {
        v101 = 0;
      }

      if ((v99 & 1) == 0)
      {
      }

      if (v101)
      {
        return 12;
      }

      v104 = __sb__runningInSpringBoard();
      v105 = v104;
      if (v104)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeLessThanSize())
      {
        v107 = [(SBApplication *)self _supportsApplicationType:512]& v6;
      }

      else
      {
        v107 = 0;
      }

      if ((v105 & 1) == 0)
      {
      }

      if (v107)
      {
        return 11;
      }

      v110 = __sb__runningInSpringBoard();
      if (v110)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeLessThanSize())
      {
        v112 = [(SBApplication *)self _supportsApplicationType:256]& v6;
      }

      else
      {
        v112 = 0;
      }

      if ((v110 & 1) == 0)
      {
      }

      if (v112)
      {
        return 10;
      }

      v115 = __sb__runningInSpringBoard();
      v116 = v115;
      if (v115)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v110 = [MEMORY[0x277D759A0] mainScreen];
        [v110 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeLessThanSize())
      {
        v118 = [(SBApplication *)self _supportsApplicationType:2048];
      }

      else
      {
        v118 = 0;
      }

      if ((v116 & 1) == 0)
      {
      }

      if (!v118)
      {
        v119 = __sb__runningInSpringBoard();
        v120 = v119;
        if (v119)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v110 = [MEMORY[0x277D759A0] mainScreen];
          [v110 _referenceBounds];
        }

        BSSizeRoundForScale();
        if (BSSizeLessThanSize())
        {
          v123 = [(SBApplication *)self _supportsApplicationType:1024];
        }

        else
        {
          v123 = 0;
        }

        if ((v120 & 1) == 0)
        {
        }

        if (!v123)
        {
          v125 = __sb__runningInSpringBoard();
          v126 = v125;
          if (v125)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v110 = [MEMORY[0x277D759A0] mainScreen];
            [v110 _referenceBounds];
          }

          BSSizeRoundForScale();
          if (BSSizeLessThanSize())
          {
            v129 = [(SBApplication *)self _supportsApplicationType:128];
          }

          else
          {
            v129 = 0;
          }

          if ((v126 & 1) == 0)
          {
          }

          if (!v129)
          {
            v131 = __sb__runningInSpringBoard();
            v132 = v131;
            if (v131)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v110 = [MEMORY[0x277D759A0] mainScreen];
              [v110 _referenceBounds];
            }

            BSSizeRoundForScale();
            if (BSSizeLessThanSize())
            {
              v135 = [(SBApplication *)self _supportsApplicationType:64];
            }

            else
            {
              v135 = 0;
            }

            if ((v132 & 1) == 0)
            {
            }

            if (v135)
            {
              return 6;
            }

            v137 = __sb__runningInSpringBoard();
            v138 = v137;
            if (v137)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v110 = [MEMORY[0x277D759A0] mainScreen];
              [v110 _referenceBounds];
            }

            BSSizeRoundForScale();
            if (BSSizeGreaterThanOrEqualToSize() && [(SBApplication *)self _supportsApplicationType:16])
            {
              v135 = __sb__runningInSpringBoard();
              if (v135)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v107 = [MEMORY[0x277D759A0] mainScreen];
                [v107 _referenceBounds];
              }

              BSSizeRoundForScale();
              v141 = v153 > v169;
              if ((v135 & 1) == 0)
              {
              }
            }

            else
            {
              v141 = 0;
            }

            if (v138)
            {
              if (v141)
              {
                return 4;
              }
            }

            else
            {

              if (v141)
              {
                return 4;
              }
            }

            v143 = __sb__runningInSpringBoard();
            v144 = v143;
            if (v143)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v110 = [MEMORY[0x277D759A0] mainScreen];
              [v110 _referenceBounds];
            }

            BSSizeRoundForScale();
            if (BSSizeGreaterThanOrEqualToSize() && [(SBApplication *)self _supportsApplicationType:8])
            {
              v135 = __sb__runningInSpringBoard();
              if (v135)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v107 = [MEMORY[0x277D759A0] mainScreen];
                [v107 _referenceBounds];
              }

              BSSizeRoundForScale();
              v147 = v160 > v168;
              if ((v135 & 1) == 0)
              {
              }
            }

            else
            {
              v147 = 0;
            }

            if (v144)
            {
              if (!v147)
              {
                goto LABEL_524;
              }
            }

            else
            {

              if (!v147)
              {
LABEL_524:
                v149 = __sb__runningInSpringBoard();
                v150 = v149;
                if (v149)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  v110 = [MEMORY[0x277D759A0] mainScreen];
                  [v110 _referenceBounds];
                }

                BSSizeRoundForScale();
                if (BSSizeGreaterThanOrEqualToSize() && [(SBApplication *)self _supportsApplicationType:4])
                {
                  v154 = __sb__runningInSpringBoard();
                  v155 = v154;
                  if (v154)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    v135 = [MEMORY[0x277D759A0] mainScreen];
                    [v135 _referenceBounds];
                  }

                  BSSizeRoundForScale();
                  v156 = v164 > v167;
                  if ((v155 & 1) == 0)
                  {
                  }
                }

                else
                {
                  v156 = 0;
                }

                if ((v150 & 1) == 0)
                {
                }

                v52 = !v156;
                goto LABEL_156;
              }
            }

            return 3;
          }

          return 7;
        }

        return 8;
      }

      return 9;
    }
  }

  v7 = SBFEffectiveHomeButtonType();
  if (![(SBApplication *)self _supportsApplicationType:2])
  {
    if (v7 == 2)
    {
      if ([(SBApplication *)self _supportsApplicationType:2048])
      {
        v14 = __sb__runningInSpringBoard();
        v15 = v14;
        if (v14)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v7 = [MEMORY[0x277D759A0] mainScreen];
          [v7 _referenceBounds];
        }

        BSSizeRoundForScale();
        v24 = BSSizeGreaterThanOrEqualToSize();
        v25 = v24;
        if (v15)
        {
          if (v24)
          {
            return 9;
          }
        }

        else
        {

          if (v25)
          {
            return 9;
          }
        }
      }

      if ([(SBApplication *)self _supportsApplicationType:1024])
      {
        v29 = __sb__runningInSpringBoard();
        v30 = v29;
        if (v29)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v7 = [MEMORY[0x277D759A0] mainScreen];
          [v7 _referenceBounds];
        }

        BSSizeRoundForScale();
        v35 = BSSizeGreaterThanOrEqualToSize();
        v36 = v35;
        if (v30)
        {
          if (v35)
          {
            return 8;
          }
        }

        else
        {

          if (v36)
          {
            return 8;
          }
        }
      }

      if ([(SBApplication *)self _supportsApplicationType:128])
      {
        v37 = __sb__runningInSpringBoard();
        v38 = v37;
        if (v37)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v7 = [MEMORY[0x277D759A0] mainScreen];
          [v7 _referenceBounds];
        }

        BSSizeRoundForScale();
        v39 = BSSizeGreaterThanOrEqualToSize();
        v40 = v39;
        if (v38)
        {
          if (v39)
          {
            return 7;
          }
        }

        else
        {

          if (v40)
          {
            return 7;
          }
        }
      }

      if ([(SBApplication *)self _supportsApplicationType:64])
      {
        v41 = __sb__runningInSpringBoard();
        v42 = v41;
        if (v41)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v7 = [MEMORY[0x277D759A0] mainScreen];
          [v7 _referenceBounds];
        }

        BSSizeRoundForScale();
        v50 = BSSizeGreaterThanOrEqualToSize();
        v51 = v50;
        if (v42)
        {
          if (v50)
          {
            return 6;
          }
        }

        else
        {

          if (v51)
          {
            return 6;
          }
        }
      }
    }

    if (![(SBApplication *)self _supportsApplicationType:8])
    {
      v52 = ![(SBApplication *)self _supportsApplicationType:4];
LABEL_156:
      if (v52)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    return 3;
  }

  v10 = __sb__runningInSpringBoard();
  v11 = v10;
  if (v7 == 2)
  {
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v17 = [(SBApplication *)self _supportsApplicationType:0x40000000];
    }

    else
    {
      v17 = 0;
    }

    if ((v11 & 1) == 0)
    {
    }

    if (v17)
    {
      return 0;
    }

    v20 = __sb__runningInSpringBoard();
    v21 = v20;
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v26 = [(SBApplication *)self _supportsApplicationType:0x10000000];
    }

    else
    {
      v26 = 0;
    }

    if ((v21 & 1) == 0)
    {
    }

    if (v26)
    {
      return 0;
    }

    v31 = __sb__runningInSpringBoard();
    v32 = v31;
    if (v31)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v43 = [(SBApplication *)self _supportsApplicationType:0x800000];
    }

    else
    {
      v43 = 0;
    }

    if ((v32 & 1) == 0)
    {
    }

    if (v43)
    {
      return 0;
    }

    v46 = __sb__runningInSpringBoard();
    v47 = v46;
    if (v46)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v53 = [(SBApplication *)self _supportsApplicationType:0x2000000];
    }

    else
    {
      v53 = 0;
    }

    if ((v47 & 1) == 0)
    {
    }

    if (v53)
    {
      return 0;
    }

    v58 = __sb__runningInSpringBoard();
    v59 = v58;
    if (v58)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v60 = [(SBApplication *)self _supportsApplicationType:0x100000];
    }

    else
    {
      v60 = 0;
    }

    if ((v59 & 1) == 0)
    {
    }

    if (v60)
    {
      return 0;
    }

    v62 = __sb__runningInSpringBoard();
    v63 = v62;
    if (v62)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v64 = [(SBApplication *)self _supportsApplicationType:0x20000];
    }

    else
    {
      v64 = 0;
    }

    if ((v63 & 1) == 0)
    {
    }

    if (v64)
    {
      return 0;
    }

    v66 = __sb__runningInSpringBoard();
    v67 = v66;
    if (v66)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v68 = [(SBApplication *)self _supportsApplicationType:0x40000];
    }

    else
    {
      v68 = 0;
    }

    if ((v67 & 1) == 0)
    {
    }

    if (v68)
    {
      return 0;
    }

    v70 = __sb__runningInSpringBoard();
    v71 = v70;
    if (v70)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v72 = [(SBApplication *)self _supportsApplicationType:0x10000];
    }

    else
    {
      v72 = 0;
    }

    if ((v71 & 1) == 0)
    {
    }

    if (v72)
    {
      return 0;
    }

    v74 = __sb__runningInSpringBoard();
    v75 = v74;
    if (v74)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v76 = [(SBApplication *)self _supportsApplicationType:0x200000];
    }

    else
    {
      v76 = 0;
    }

    if ((v75 & 1) == 0)
    {
    }

    if (v76)
    {
      return 0;
    }

    v78 = __sb__runningInSpringBoard();
    v79 = v78;
    if (v78)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v80 = [(SBApplication *)self _supportsApplicationType:0x1000000];
    }

    else
    {
      v80 = 0;
    }

    if ((v79 & 1) == 0)
    {
    }

    if (v80)
    {
      return 0;
    }

    v82 = __sb__runningInSpringBoard();
    v83 = v82;
    if (v82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v84 = [(SBApplication *)self _supportsApplicationType:0x4000000];
    }

    else
    {
      v84 = 0;
    }

    if ((v83 & 1) == 0)
    {
    }

    if (v84)
    {
      return 0;
    }

    v86 = __sb__runningInSpringBoard();
    v87 = v86;
    if (v86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v94 = [(SBApplication *)self _supportsApplicationType:0x20000000];
    }

    else
    {
      v94 = 0;
    }

    if ((v87 & 1) == 0)
    {
    }

    if (v94)
    {
      return 0;
    }

    v96 = __sb__runningInSpringBoard();
    v97 = v96;
    if (v96)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v100 = [(SBApplication *)self _supportsApplicationType:0xFFFFFFFF80000000];
    }

    else
    {
      v100 = 0;
    }

    if ((v97 & 1) == 0)
    {
    }

    if (v100)
    {
      return 0;
    }

    v102 = __sb__runningInSpringBoard();
    v103 = v102;
    if (v102)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeGreaterThanOrEqualToSize())
    {
      v106 = [(SBApplication *)self _supportsApplicationType:0x20000000];
    }

    else
    {
      v106 = 0;
    }

    if ((v103 & 1) == 0)
    {
    }

    if (v106)
    {
      return 24;
    }

    v108 = __sb__runningInSpringBoard();
    v109 = v108;
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeGreaterThanOrEqualToSize())
    {
      v111 = [(SBApplication *)self _supportsApplicationType:0x1000000];
    }

    else
    {
      v111 = 0;
    }

    if ((v109 & 1) == 0)
    {
    }

    if (v111)
    {
      return 21;
    }

    v113 = __sb__runningInSpringBoard();
    v114 = v113;
    if (v113)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeGreaterThanOrEqualToSize())
    {
      v117 = [(SBApplication *)self _supportsApplicationType:0x40000000];
    }

    else
    {
      v117 = 0;
    }

    if ((v114 & 1) == 0)
    {
    }

    if (v117)
    {
      return 23;
    }

    v121 = __sb__runningInSpringBoard();
    v122 = v121;
    if (v121)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeGreaterThanOrEqualToSize())
    {
      v124 = [(SBApplication *)self _supportsApplicationType:0x10000000];
    }

    else
    {
      v124 = 0;
    }

    if ((v122 & 1) == 0)
    {
    }

    if (v124)
    {
      return 22;
    }

    v127 = __sb__runningInSpringBoard();
    v128 = v127;
    if (v127)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeGreaterThanOrEqualToSize())
    {
      v130 = [(SBApplication *)self _supportsApplicationType:0x8000000];
    }

    else
    {
      v130 = 0;
    }

    if ((v128 & 1) == 0)
    {
    }

    if (v130)
    {
      return 16;
    }

    v133 = __sb__runningInSpringBoard();
    v134 = v133;
    if (v133)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v136 = [(SBApplication *)self _supportsApplicationType:0x2000000];
    }

    else
    {
      v136 = 0;
    }

    if ((v134 & 1) == 0)
    {
    }

    if (v136)
    {
      return 20;
    }

    v139 = __sb__runningInSpringBoard();
    v140 = v139;
    if (v139)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeGreaterThanOrEqualToSize())
    {
      v142 = [(SBApplication *)self _supportsApplicationType:0x800000];
    }

    else
    {
      v142 = 0;
    }

    if ((v140 & 1) == 0)
    {
    }

    if (v142)
    {
      return 19;
    }

    v145 = __sb__runningInSpringBoard();
    v146 = v145;
    if (v145)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeGreaterThanOrEqualToSize())
    {
      v148 = [(SBApplication *)self _supportsApplicationType:0x10000000];
    }

    else
    {
      v148 = 0;
    }

    if ((v146 & 1) == 0)
    {
    }

    if (v148)
    {
      return 22;
    }

    v151 = __sb__runningInSpringBoard();
    v152 = v151;
    if (v151)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v157 = [(SBApplication *)self _supportsApplicationType:0x800000];
    }

    else
    {
      v157 = 0;
    }

    if ((v152 & 1) == 0)
    {
    }

    if (v157)
    {
      return 19;
    }

    v158 = __sb__runningInSpringBoard();
    v159 = v158;
    if (v158)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v161 = [(SBApplication *)self _supportsApplicationType:0x100000];
    }

    else
    {
      v161 = 0;
    }

    if ((v159 & 1) == 0)
    {
    }

    if (v161)
    {
      return 18;
    }

    v162 = __sb__runningInSpringBoard();
    v163 = v162;
    if (v162)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v165 = [(SBApplication *)self _supportsApplicationType:0x800000];
    }

    else
    {
      v165 = 0;
    }

    if ((v163 & 1) == 0)
    {
    }

    if (v165)
    {
      return 19;
    }

    if ([(SBApplication *)self _supportsApplicationType:0x20000])
    {
      return 17;
    }

    v166 = __sb__runningInSpringBoard();
    v56 = v166;
    if (!v166)
    {
      goto LABEL_183;
    }

LABEL_167:
    __sb__mainScreenReferenceBounds();
    goto LABEL_184;
  }

  if (v10)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (BSSizeEqualToSize())
  {
    v18 = [(SBApplication *)self _supportsApplicationType:0x8000000];
  }

  else
  {
    v18 = 0;
  }

  if ((v11 & 1) == 0)
  {
  }

  if (v18)
  {
    return 0;
  }

  v22 = __sb__runningInSpringBoard();
  v23 = v22;
  if (v22)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (BSSizeEqualToSize())
  {
    v27 = [(SBApplication *)self _supportsApplicationType:0x80000];
  }

  else
  {
    v27 = 0;
  }

  if ((v23 & 1) == 0)
  {
  }

  if (v27)
  {
    return 0;
  }

  v33 = __sb__runningInSpringBoard();
  v34 = v33;
  if (v33)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (BSSizeEqualToSize())
  {
    v44 = [(SBApplication *)self _supportsApplicationType:0x400000];
  }

  else
  {
    v44 = 0;
  }

  if ((v34 & 1) == 0)
  {
  }

  if (v44)
  {
    return 0;
  }

  v48 = __sb__runningInSpringBoard();
  v49 = v48;
  if (v48)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 _referenceBounds];
  }

  BSSizeRoundForScale();
  v54 = BSSizeEqualToSize();
  if ((v49 & 1) == 0)
  {
  }

  if (v54)
  {
    return 0;
  }

  v55 = __sb__runningInSpringBoard();
  v56 = v55;
  if (v55)
  {
    goto LABEL_167;
  }

LABEL_183:
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 _referenceBounds];
LABEL_184:
  BSSizeRoundForScale();
  if (BSSizeGreaterThanOrEqualToSize())
  {
    if ([(SBApplication *)self _supportsApplicationType:0x400000])
    {
      v4 = 15;
    }

    else
    {
      v4 = 14;
    }
  }

  else
  {
    v4 = 14;
  }

LABEL_332:
  if ((v56 & 1) == 0)
  {
  }

  return v4;
}

- (void)_calculateSupportedTypesLazilyIfNecessary
{
  v139 = *MEMORY[0x277D85DE8];
  if (self->_calculatedSupportedTypes)
  {
    return;
  }

  if ([(SBApplication *)self _bypassesClassicMode])
  {
    self->_supportedTypes |= 0xFFFFFFFFFFFF7FFFLL;
    goto LABEL_332;
  }

  v5 = 168;
  if ([(SBApplicationInfo *)self->_appInfo usesSplashBoard])
  {
    [(SBApplication *)self _calculateSupportedTypesForSplashBoard];
    goto LABEL_332;
  }

  v6 = MGCopyAnswer();
  v7 = [(SBApplication *)self _snapshotManifest];
  v8 = [MEMORY[0x277D656A0] predicate];
  [v8 setContentTypeMask:4];
  [v8 setRequiredOSVersion:v6];
  v9 = [v7 defaultGroupIdentifier];
  v116 = [v7 snapshotsForGroupID:v9 matchingPredicate:v8];

  v114 = v8;
  v115 = v7;
  if (![(SBApplication *)self _supportsApplicationType:2])
  {
    goto LABEL_84;
  }

  v10 = __sb__runningInSpringBoard();
  v11 = v10;
  if (v10)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v9 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v103 = [(SBApplication(Classic_Internal) *)&v136 _calculateSupportedTypesLazilyIfNecessary];
    v7 = v136;
    if (!v103)
    {
      v9 = 0;
LABEL_16:

      goto LABEL_17;
    }
  }

  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v9 = v12 >= *(MEMORY[0x277D66E30] + 280);
  if ((v5 & 1) == 0)
  {
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v13 = __sb__runningInSpringBoard();
  v14 = v13;
  if (v13)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v15 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    if ([v5 userInterfaceIdiom] != 1)
    {
      v15 = 0;
LABEL_28:

      goto LABEL_29;
    }
  }

  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  v15 = v16 >= *(MEMORY[0x277D66E30] + 264);
  if ((v2 & 1) == 0)
  {
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v17 = __sb__runningInSpringBoard();
  v18 = v17;
  if (v17)
  {
    if (SBFEffectiveDeviceClass() != 2 || SBFEffectiveHomeButtonType() != 2)
    {
      v19 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    if ([v5 userInterfaceIdiom] != 1 || SBFEffectiveHomeButtonType() != 2)
    {
      v19 = 0;
LABEL_42:

      goto LABEL_43;
    }
  }

  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  v19 = v20 >= *(MEMORY[0x277D66E30] + 344);
  if ((v2 & 1) == 0)
  {
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_43:
  v21 = __sb__runningInSpringBoard();
  v22 = v21;
  if (!v21)
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom] != 1 || SBFEffectiveHomeButtonType() != 2)
    {
      v23 = 0;
      goto LABEL_59;
    }

LABEL_49:
    v24 = __sb__runningInSpringBoard();
    v25 = v24;
    if (v24)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v126 = [MEMORY[0x277D759A0] mainScreen];
      [v126 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v26 >= *(MEMORY[0x277D66E30] + 440))
    {
      v23 = [(SBApplicationInfo *)self->_appInfo isPeaceBLinked];
      if (v25)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v23 = 0;
      if (v25)
      {
LABEL_58:
        if (v22)
        {
          goto LABEL_60;
        }

LABEL_59:

        goto LABEL_60;
      }
    }

    goto LABEL_58;
  }

  if (SBFEffectiveDeviceClass() == 2 && SBFEffectiveHomeButtonType() == 2)
  {
    goto LABEL_49;
  }

  v23 = 0;
LABEL_60:
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v27 = v116;
  v28 = [v27 countByEnumeratingWithState:&v132 objects:v138 count:16];
  if (!v28)
  {

    v8 = v114;
    v7 = v115;
    goto LABEL_82;
  }

  v29 = v28;
  v113 = v6;
  v30 = *v133;
  do
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v133 != v30)
      {
        objc_enumerationMutation(v27);
      }

      [*(*(&v132 + 1) + 8 * i) referenceSize];
      if (v9 && BSSizeEqualToSize())
      {
        supportedTypes = self->_supportedTypes;
        if (v23)
        {
          v33 = supportedTypes | 0x18000000;
        }

        else
        {
          v33 = supportedTypes | 0x8000000;
        }

        goto LABEL_76;
      }

      if (v15 && BSSizeEqualToSize())
      {
        v33 = self->_supportedTypes | 0x400000;
LABEL_76:
        self->_supportedTypes = v33;
        continue;
      }

      if (v19 && BSSizeEqualToSize())
      {
        v33 = self->_supportedTypes | 0x800000;
        goto LABEL_76;
      }
    }

    v29 = [v27 countByEnumeratingWithState:&v132 objects:v138 count:16];
  }

  while (v29);

  v6 = v113;
  v8 = v114;
  v7 = v115;
  if (!self)
  {
    goto LABEL_84;
  }

LABEL_82:
  if ([(SBApplicationInfo *)self->_appInfo isPeaceBLinked])
  {
    self->_supportedTypes |= 0x20000uLL;
  }

LABEL_84:
  if (![(SBApplication *)self _supportsApplicationType:1])
  {
    goto LABEL_331;
  }

  v34 = __sb__runningInSpringBoard();
  v35 = 0x277D75000uLL;
  v36 = MEMORY[0x277D66E30];
  if (!v34)
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    if (![v8 userInterfaceIdiom])
    {
      goto LABEL_91;
    }

    v7 = 0;
    v37 = 1;
LABEL_96:
    v9 = [MEMORY[0x277D75418] currentDevice];
    v40 = [v9 userInterfaceIdiom];

    v123 = (v40 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_100;
    }

LABEL_97:

    if (v37)
    {
      goto LABEL_101;
    }

    goto LABEL_102;
  }

  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
  {
    v7 = 0;
    v37 = 0;
    goto LABEL_96;
  }

LABEL_91:
  v37 = v34 ^ 1;
  v38 = __sb__runningInSpringBoard();
  if (v38)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v34 = [MEMORY[0x277D759A0] mainScreen];
    [v34 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v39 < v36[5])
  {
    v7 = v38 ^ 1u;
    goto LABEL_96;
  }

  v123 = 1;
  if ((v38 & 1) == 0)
  {
    goto LABEL_97;
  }

LABEL_100:
  if (v37)
  {
LABEL_101:
  }

LABEL_102:
  v41 = __sb__runningInSpringBoard();
  if (!v41)
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    if (![v8 userInterfaceIdiom])
    {
      goto LABEL_108;
    }

    v7 = 0;
    v42 = 1;
LABEL_113:
    v9 = [MEMORY[0x277D75418] currentDevice];
    v45 = [v9 userInterfaceIdiom];

    v122 = (v45 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_117;
    }

LABEL_114:

    if (v42)
    {
      goto LABEL_118;
    }

    goto LABEL_119;
  }

  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
  {
    v7 = 0;
    v42 = 0;
    goto LABEL_113;
  }

LABEL_108:
  v42 = v41 ^ 1;
  v43 = __sb__runningInSpringBoard();
  if (v43)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v41 = [MEMORY[0x277D759A0] mainScreen];
    [v41 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v44 < v36[7])
  {
    v7 = v43 ^ 1u;
    goto LABEL_113;
  }

  v122 = 1;
  if ((v43 & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_117:
  if (v42)
  {
LABEL_118:
  }

LABEL_119:
  v46 = __sb__runningInSpringBoard();
  if (v46)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v47 = 0;
      v48 = 0;
      goto LABEL_129;
    }

LABEL_125:
    v47 = v46 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v49 = __sb__runningInSpringBoard();
      if (v49)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v7 = [MEMORY[0x277D759A0] mainScreen];
        [v7 _referenceBounds];
      }

      v48 = v49 ^ 1;
      BSSizeRoundForScale();
      if (v54 >= v36[11])
      {
        v127 = 1;
        goto LABEL_158;
      }
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    if (![v8 userInterfaceIdiom])
    {
      goto LABEL_125;
    }

    v48 = 0;
    v47 = 1;
  }

LABEL_129:
  v50 = __sb__runningInSpringBoard();
  v51 = v50;
  if (v50)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v127 = 0;
      goto LABEL_158;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      v127 = 0;
      goto LABEL_147;
    }

LABEL_135:
    v52 = __sb__runningInSpringBoard();
    v53 = v52;
    if (v52)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v9 = [MEMORY[0x277D759A0] mainScreen];
      [v9 _referenceBounds];
    }

    BSSizeRoundForScale();
    v127 = v55 >= *(MEMORY[0x277D66E30] + 440);
    if ((v53 & 1) == 0)
    {
    }

    v36 = MEMORY[0x277D66E30];
    if (v51)
    {
LABEL_147:
      v35 = 0x277D75000uLL;
      if (!v48)
      {
        goto LABEL_148;
      }

LABEL_159:

      if ((v47 & 1) == 0)
      {
        goto LABEL_150;
      }

LABEL_149:

      goto LABEL_150;
    }

LABEL_156:
  }

  else
  {
    v35 = [MEMORY[0x277D75418] currentDevice];
    if ([v35 userInterfaceIdiom] == 1)
    {
      if (SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_135;
      }

      v127 = 0;
      goto LABEL_156;
    }

    v127 = 0;
  }

  v35 = 0x277D75000;
LABEL_158:
  if (v48)
  {
    goto LABEL_159;
  }

LABEL_148:
  if (v47)
  {
    goto LABEL_149;
  }

LABEL_150:
  v56 = __sb__runningInSpringBoard();
  v113 = v6;
  if (v56)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v57 = 0;
      v58 = 0;
      goto LABEL_165;
    }

LABEL_161:
    v57 = v56 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v59 = __sb__runningInSpringBoard();
      if (v59)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v6 = [MEMORY[0x277D759A0] mainScreen];
        [v6 _referenceBounds];
      }

      v58 = v59 ^ 1;
      BSSizeRoundForScale();
      if (v66 >= v36[15])
      {
        v62 = 1;
        goto LABEL_194;
      }
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v9 = [*(v35 + 1048) currentDevice];
    if (![v9 userInterfaceIdiom])
    {
      goto LABEL_161;
    }

    v58 = 0;
    v57 = 1;
  }

LABEL_165:
  v60 = __sb__runningInSpringBoard();
  v61 = v60;
  if (v60)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v62 = 0;
      goto LABEL_194;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      v62 = 0;
      goto LABEL_183;
    }

LABEL_171:
    v126 = v9;
    v63 = v36;
    v64 = __sb__runningInSpringBoard();
    v65 = v64;
    if (v64)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v9 = [MEMORY[0x277D759A0] mainScreen];
      [v9 _referenceBounds];
    }

    BSSizeRoundForScale();
    v62 = v67 >= v63[55];
    if ((v65 & 1) == 0)
    {
    }

    v36 = v63;
    v9 = v126;
    if (v61)
    {
LABEL_183:
      v35 = 0x277D75000uLL;
      if (!v58)
      {
        goto LABEL_184;
      }

LABEL_195:

      if ((v57 & 1) == 0)
      {
        goto LABEL_186;
      }

LABEL_185:

      goto LABEL_186;
    }

LABEL_192:
  }

  else
  {
    v35 = [*(v35 + 1048) currentDevice];
    if ([v35 userInterfaceIdiom] == 1)
    {
      if (SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_171;
      }

      v62 = 0;
      goto LABEL_192;
    }

    v62 = 0;
  }

  v35 = 0x277D75000;
LABEL_194:
  if (v58)
  {
    goto LABEL_195;
  }

LABEL_184:
  if (v57)
  {
    goto LABEL_185;
  }

LABEL_186:
  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v69 = 0;
      v70 = 0;
      goto LABEL_201;
    }

LABEL_197:
    v69 = v68 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v71 = __sb__runningInSpringBoard();
      if (v71)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v124 = [MEMORY[0x277D759A0] mainScreen];
        [v124 _referenceBounds];
      }

      v70 = v71 ^ 1;
      BSSizeRoundForScale();
      if (v77 >= v36[13])
      {
        LODWORD(v126) = 1;
        goto LABEL_230;
      }
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    v9 = [*(v35 + 1048) currentDevice];
    if (![v9 userInterfaceIdiom])
    {
      goto LABEL_197;
    }

    v70 = 0;
    v69 = 1;
  }

LABEL_201:
  v72 = __sb__runningInSpringBoard();
  v73 = v72;
  if (v72)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      LODWORD(v126) = 0;
      goto LABEL_230;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      LODWORD(v126) = 0;
      goto LABEL_219;
    }

LABEL_207:
    v119 = v9;
    v74 = v36;
    v75 = __sb__runningInSpringBoard();
    v76 = v75;
    if (v75)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v9 = [MEMORY[0x277D759A0] mainScreen];
      [v9 _referenceBounds];
    }

    BSSizeRoundForScale();
    v6 = v78 >= v74[55];
    LODWORD(v126) = v78 >= v74[55];
    if ((v76 & 1) == 0)
    {
    }

    v36 = v74;
    v9 = v119;
    if (v73)
    {
LABEL_219:
      v35 = 0x277D75000uLL;
      v79 = v124;
      if (!v70)
      {
        goto LABEL_220;
      }

LABEL_231:

      if ((v69 & 1) == 0)
      {
        goto LABEL_222;
      }

LABEL_221:

      goto LABEL_222;
    }

LABEL_228:
  }

  else
  {
    v35 = [*(v35 + 1048) currentDevice];
    if ([v35 userInterfaceIdiom] == 1)
    {
      if (SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_207;
      }

      LODWORD(v126) = 0;
      goto LABEL_228;
    }

    LODWORD(v126) = 0;
  }

  v35 = 0x277D75000;
LABEL_230:
  v79 = v124;
  if (v70)
  {
    goto LABEL_231;
  }

LABEL_220:
  if (v69)
  {
    goto LABEL_221;
  }

LABEL_222:
  v80 = __sb__runningInSpringBoard();
  if (v80)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v81 = 0;
      v82 = 0;
      goto LABEL_237;
    }

LABEL_233:
    v81 = v80 ^ 1u;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v83 = __sb__runningInSpringBoard();
      if (v83)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v6 = [MEMORY[0x277D759A0] mainScreen];
        [v6 _referenceBounds];
      }

      v82 = v83 ^ 1;
      BSSizeRoundForScale();
      if (v89 >= v36[17])
      {
        v125 = 1;
        goto LABEL_268;
      }
    }

    else
    {
      v82 = 0;
    }
  }

  else
  {
    v9 = [*(v35 + 1048) currentDevice];
    if (![v9 userInterfaceIdiom])
    {
      goto LABEL_233;
    }

    v82 = 0;
    v81 = 1;
  }

LABEL_237:
  v84 = __sb__runningInSpringBoard();
  v85 = v84;
  if (v84)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v125 = 0;
      goto LABEL_268;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      v125 = 0;
      goto LABEL_255;
    }

LABEL_243:
    v120 = v9;
    v86 = v36;
    v87 = __sb__runningInSpringBoard();
    v88 = v87;
    if (v87)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v9 = [MEMORY[0x277D759A0] mainScreen];
      [v9 _referenceBounds];
    }

    BSSizeRoundForScale();
    v125 = v90 >= v86[55];
    if ((v88 & 1) == 0)
    {
    }

    v36 = v86;
    v9 = v120;
    if (v85)
    {
LABEL_255:
      v35 = 0x277D75000uLL;
      if (!v82)
      {
        goto LABEL_256;
      }

LABEL_269:

      if ((v81 & 1) == 0)
      {
        goto LABEL_258;
      }

LABEL_257:

      goto LABEL_258;
    }

LABEL_266:
  }

  else
  {
    v35 = [*(v35 + 1048) currentDevice];
    if ([v35 userInterfaceIdiom] == 1)
    {
      if (SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_243;
      }

      v125 = 0;
      goto LABEL_266;
    }

    v125 = 0;
  }

  v35 = 0x277D75000;
LABEL_268:
  if (v82)
  {
    goto LABEL_269;
  }

LABEL_256:
  if (v81)
  {
    goto LABEL_257;
  }

LABEL_258:
  v91 = __sb__runningInSpringBoard();
  v92 = v91;
  if (v91)
  {
    v93 = v126;
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v94 = 0;
      goto LABEL_301;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      v94 = 0;
      if (v92)
      {
        goto LABEL_301;
      }

LABEL_300:

      goto LABEL_301;
    }
  }

  else
  {
    v81 = [*(v35 + 1048) currentDevice];
    if ([v81 userInterfaceIdiom])
    {
      v94 = 0;
      v93 = v126;
      goto LABEL_300;
    }

    v93 = v126;
    if (SBFEffectiveHomeButtonType() != 2)
    {
      v94 = 0;
      goto LABEL_300;
    }
  }

  v95 = __sb__runningInSpringBoard();
  v96 = v95;
  if (v95)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v126 = [MEMORY[0x277D759A0] mainScreen];
    [v126 _referenceBounds];
  }

  BSSizeRoundForScale();
  v97 = v36;
  v98 = v36[9];
  v94 = v99 >= v98;
  if (v99 < v98)
  {
    goto LABEL_297;
  }

  v100 = __sb__runningInSpringBoard();
  v101 = v100;
  if (!v100)
  {
    v102 = [MEMORY[0x277D75418] currentDevice];
    if ([v102 userInterfaceIdiom])
    {

      v94 = 1;
      goto LABEL_297;
    }

    v118 = v102;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      goto LABEL_288;
    }

    v94 = 1;
    goto LABEL_296;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    if (SBFEffectiveHomeButtonType() != 2)
    {
      v94 = 1;
      goto LABEL_293;
    }

LABEL_288:
    v121 = __sb__runningInSpringBoard();
    if (v121)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v117 = [MEMORY[0x277D759A0] mainScreen];
      [v117 _referenceBounds];
    }

    BSSizeRoundForScale();
    v94 = v104 < v97[11];
    if ((v121 & 1) == 0)
    {
    }

LABEL_293:
    if ((v101 & 1) == 0)
    {
LABEL_296:
    }
  }

LABEL_297:
  if ((v96 & 1) == 0)
  {
  }

  if ((v92 & 1) == 0)
  {
    goto LABEL_300;
  }

LABEL_301:
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v105 = v116;
  v106 = [v105 countByEnumeratingWithState:&v128 objects:v137 count:16];
  if (!v106)
  {
    goto LABEL_330;
  }

  v107 = v106;
  v108 = *v129;
  v109 = v125 | v93;
  while (2)
  {
    v110 = 0;
    while (2)
    {
      if (*v129 != v108)
      {
        objc_enumerationMutation(v105);
      }

      [*(*(&v128 + 1) + 8 * v110) referenceSize];
      if (v109 & 1) != 0 && ((BSSizeEqualToSize() & 1) != 0 || (BSSizeEqualToSize()))
      {
        v111 = 2176;
        goto LABEL_327;
      }

      if (v94 && ((BSSizeEqualToSize() & 1) != 0 || (BSSizeEqualToSize() & 1) != 0 || (BSSizeEqualToSize() & 1) != 0))
      {
        v111 = 32;
        goto LABEL_327;
      }

      if (v62 && (BSSizeEqualToSize() & 1) != 0)
      {
        v111 = 1024;
        goto LABEL_327;
      }

      if (v127 && (BSSizeEqualToSize() & 1) != 0)
      {
        v111 = 64;
        goto LABEL_327;
      }

      if (v123 || v122) && ((BSSizeEqualToSize() & 1) != 0 || (BSSizeEqualToSize()))
      {
        v111 = 28;
        goto LABEL_327;
      }

      if (BSSizeEqualToSize())
      {
        v111 = 4;
LABEL_327:
        self->_supportedTypes |= v111;
      }

      if (v107 != ++v110)
      {
        continue;
      }

      break;
    }

    v107 = [v105 countByEnumeratingWithState:&v128 objects:v137 count:16];
    if (v107)
    {
      continue;
    }

    break;
  }

LABEL_330:

  v6 = v113;
  v8 = v114;
  v7 = v115;
LABEL_331:

LABEL_332:
  v112 = [(SBApplication *)self _snapshotManifest];
  self->_calculatedSupportedTypes = 1;
}

- (uint64_t)_bypassesClassicMode
{
  if (result)
  {
    v1 = result;
    if ([*(result + 168) disablesClassicMode] & 1) != 0 || (objc_msgSend(v1[21], "hasViewServicesEntitlement"))
    {
      return 1;
    }

    else
    {

      return [v1 isSystemApplication];
    }
  }

  return result;
}

- (BOOL)isMedusaCapable
{
  if (![(SBApplicationInfo *)self->_appInfo wantsFullScreen]|| (v3 = [(SBApplication *)self isClassic]))
  {
    if (self->_calculatedSupportedTypes)
    {
      v4 = [(SBApplication *)self isClassic];
LABEL_5:
      LOBYTE(v3) = !v4;
      return v3;
    }

    v3 = [(SBApplicationInfo *)self->_appInfo usesSplashBoard];
    if (v3)
    {
      v3 = [(SBApplicationInfo *)self->_appInfo isMonarchLinked];
      if (v3)
      {
        v4 = [(SBApplication *)self _isClassicViaOverride];
        goto LABEL_5;
      }
    }
  }

  return v3;
}

- (int64_t)_classicMode
{
  if (self->_currentClassicMode == -1)
  {
    return [(SBApplication *)self _defaultClassicMode];
  }

  else
  {
    return self->_currentClassicMode;
  }
}

- (BOOL)_classicAppScaledPhoneOnPad
{
  if (![(SBApplication *)self isClassic])
  {
    goto LABEL_5;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      return ![(SBApplication *)self _classicAppScaledPadOnPad];
    }

LABEL_5:
    LOBYTE(v3) = 0;
    return v3;
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  if ([v4 userInterfaceIdiom] == 1)
  {
    v3 = ![(SBApplication *)self _classicAppScaledPadOnPad];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isSetup
{
  v2 = [(SBApplication *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.purplebuddy"];

  return v3;
}

- (BOOL)alwaysMaximizedInChamois
{
  if (alwaysMaximizedInChamois_onceToken != -1)
  {
    [SBApplication(ChamoisCapabilities) alwaysMaximizedInChamois];
  }

  v3 = alwaysMaximizedInChamois_sAlwaysMaximizedBundleIDs;
  v4 = [(SBApplication *)self bundleIdentifier];
  LOBYTE(v3) = [v3 containsObject:v4];

  return v3;
}

+ (id)_deviceSafeAreaInsets
{
  v2 = _deviceSafeAreaInsets_deviceSafeAreaInsets;
  if (!_deviceSafeAreaInsets_deviceSafeAreaInsets)
  {
    v3 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    v4 = [v3 safeAreaInsetsPortrait];
    v5 = objc_alloc(MEMORY[0x277D656B0]);
    [v4 topInset];
    v7 = v6;
    [v4 leftInset];
    v9 = v8;
    [v4 bottomInset];
    v11 = v10;
    [v4 rightInset];
    v13 = [v5 initWithTop:v7 left:v9 bottom:v11 right:v12];
    v14 = _deviceSafeAreaInsets_deviceSafeAreaInsets;
    _deviceSafeAreaInsets_deviceSafeAreaInsets = v13;

    v2 = _deviceSafeAreaInsets_deviceSafeAreaInsets;
  }

  return v2;
}

- (BOOL)classicAppNonFullScreenWithHomeAffordance
{
  if (SBFEffectiveHomeButtonType() != 2 || [(SBApplication *)self classicAppScaledWithAspectRatioCloseEnoughToBeTreatedAsFullScreen])
  {
    return 0;
  }

  v5 = __sb__runningInSpringBoard();
  v6 = v5;
  if (v5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_17;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      if (v6)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  v7 = SBApplicationClassicModeExpectsRoundedCorners([(SBApplication *)self _classicMode]);
  if ((v6 & 1) == 0)
  {
  }

  if (v7)
  {
    return 0;
  }

LABEL_17:

  return [(SBApplication *)self isClassic];
}

- (BOOL)supportsChamoisOnExternalDisplay
{
  if ([(SBApplicationInfo *)self->_appInfo isSydneyLinked])
  {
    return 1;
  }

  return [(SBApplication *)self supportsChamoisSceneResizing];
}

- (BOOL)classicAppWithRoundedCorners
{
  v2 = [(SBApplication *)self _classicMode];

  return SBApplicationClassicModeExpectsRoundedCorners(v2);
}

- (BOOL)classicAppScaledWithAspectRatioCloseEnoughToBeTreatedAsFullScreen
{
  v5 = [(SBApplication *)self _classicMode];
  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (BSSizeEqualToSize())
  {
    v8 = v5 == 19;
    goto LABEL_14;
  }

  v9 = __sb__runningInSpringBoard();
  v10 = v9;
  if (v9)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (!BSSizeEqualToSize())
  {
    v8 = 0;
    if (v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = v5 == 19;
  if ((v10 & 1) == 0)
  {
LABEL_13:
  }

LABEL_14:
  if ((v7 & 1) == 0)
  {
  }

  if (v8)
  {
    return 1;
  }

  v11 = __sb__runningInSpringBoard();
  v12 = v11;
  if (v11)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v13 = BSSizeEqualToSize();
  if (v5 == 18)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ((v12 & 1) == 0)
  {
  }

  if (v14)
  {
    return 1;
  }

  v15 = __sb__runningInSpringBoard();
  v16 = v15;
  if (v15)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v17 = BSSizeEqualToSize();
  v18 = v5 == 22;
  if (v5 == 22)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if ((v16 & 1) == 0)
  {
  }

  if (v19)
  {
    return 1;
  }

  v20 = __sb__runningInSpringBoard();
  v21 = v20;
  if (v20)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (!BSSizeEqualToSize())
  {
    v23 = __sb__runningInSpringBoard();
    v24 = v23;
    if (v23)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = [MEMORY[0x277D759A0] mainScreen];
      [v3 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v22 = v5 == 17;
      goto LABEL_54;
    }

    v25 = __sb__runningInSpringBoard();
    v26 = v25;
    if (v25)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v4 = [MEMORY[0x277D759A0] mainScreen];
      [v4 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (BSSizeEqualToSize())
    {
      v22 = v5 == 17;
      if (v26)
      {
LABEL_54:
        if (v24)
        {
          if ((v21 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        else
        {

          if ((v21 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

LABEL_56:
        if (!v22)
        {
          goto LABEL_60;
        }

        return 1;
      }
    }

    else
    {
      v22 = 0;
      if (v26)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_54;
  }

  v22 = v5 == 17;
  if (v21)
  {
    goto LABEL_56;
  }

LABEL_59:

  if (v22)
  {
    return 1;
  }

LABEL_60:
  v27 = __sb__runningInSpringBoard();
  v28 = v27;
  if (v27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  if ((BSSizeEqualToSize() & 1) == 0)
  {
    v29 = __sb__runningInSpringBoard();
    v30 = v29;
    if (v29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = [MEMORY[0x277D759A0] mainScreen];
      [v3 _referenceBounds];
    }

    BSSizeRoundForScale();
    v31 = BSSizeEqualToSize();
    v18 = v5 == 22 ? v31 : 0;
    if ((v30 & 1) == 0)
    {
    }
  }

  if ((v28 & 1) == 0)
  {
  }

  if (v18)
  {
    return 1;
  }

  v32 = __sb__runningInSpringBoard();
  v33 = v32;
  if (v32)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v34 = BSSizeEqualToSize();
  if (v5 == 24)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if ((v33 & 1) == 0)
  {
  }

  if (v35)
  {
    return 1;
  }

  v36 = __sb__runningInSpringBoard();
  v37 = v36;
  if (v36)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v38 = BSSizeEqualToSize();
  if (v5 == 23)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  if ((v37 & 1) == 0)
  {
  }

  if (v39)
  {
    return 1;
  }

  v40 = __sb__runningInSpringBoard();
  v41 = v40;
  if (v40)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v42 = BSSizeEqualToSize();
  if (v5 == 20)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  if ((v41 & 1) == 0)
  {
  }

  if (v43)
  {
    return 1;
  }

  v44 = __sb__runningInSpringBoard();
  v45 = v44;
  if (v44)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v46 = BSSizeEqualToSize();
  if (v5 == 19)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if ((v45 & 1) == 0)
  {
  }

  if (v47)
  {
    return 1;
  }

  v50 = __sb__runningInSpringBoard();
  v51 = v50;
  if (v50)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v52 = BSSizeEqualToSize();
  if (v5 == 18)
  {
    v48 = v52;
  }

  else
  {
    v48 = 0;
  }

  if ((v51 & 1) == 0)
  {
  }

  return v48;
}

- (SBApplicationAppProtectionAssistant)appProtectionAssistant
{
  appProtectionAssistant = self->_appProtectionAssistant;
  if (!appProtectionAssistant)
  {
    v4 = [SBApplicationAppProtectionAssistant assistantForApplication:self];
    v5 = self->_appProtectionAssistant;
    self->_appProtectionAssistant = v4;

    appProtectionAssistant = self->_appProtectionAssistant;
  }

  return appProtectionAssistant;
}

- (BOOL)classicAppScaled
{
  if (!self->_calculatedSupportedTypes)
  {
    return 0;
  }

  if ([(SBApplication *)self _classicAppScaledOnPhone]|| [(SBApplication *)self _classicAppScaledPadOnPad])
  {
    return 1;
  }

  return [(SBApplication *)self _classicAppScaledPhoneOnPad];
}

- (BOOL)_classicAppScaledOnPhone
{
  if (![(SBApplication *)self isClassic])
  {
    return 0;
  }

  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      return 0;
    }
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom])
    {
      v6 = 0;
LABEL_14:

      return v6;
    }
  }

  v7 = __sb__runningInSpringBoard();
  v8 = v7;
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  v6 = v9 >= *(MEMORY[0x277D66E30] + 40);
  if ((v8 & 1) == 0)
  {
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

  return v6;
}

- (BOOL)_classicAppScaledPadOnPad
{
  v2 = [(SBApplication *)self _classicMode];

  return SBApplicationClassicModeRepresentsPad(v2);
}

- (BOOL)isSpotlight
{
  v2 = [(SBApplication *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.Spotlight"];

  return v3;
}

- (BOOL)isPaperBoard
{
  v2 = [(SBApplication *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.PaperBoard"];

  return v3;
}

- (id)badgeValue
{
  if ((*(self + 83) & 6) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(FBSApplicationDataStore *)self->_dataStore safeObjectForKey:@"SBApplicationBadgeKey" ofType:objc_opt_class()];
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    *(self + 83) = *(self + 83) & 0xF8 | v6;
  }

  return v3;
}

- (BOOL)isAnyTerminationAssertionInEffect
{
  if (self->_launchWillBePrevented)
  {
    v2 = [(SBApplication *)self processState];
    v3 = [v2 isRunning] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)backgroundActivityAttributionsByIdentifier
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_backgroundActivityAttributionsByIdentifier;
  v4 = [(NSMapTable *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_backgroundActivityAttributionsByIdentifier objectForKey:v8];
        v10 = MEMORY[0x277CBEB98];
        v11 = [v9 allObjects];
        v12 = [v10 setWithArray:v11];

        [v3 setObject:v12 forKey:v8];
      }

      v5 = [(NSMapTable *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v3;
}

- (BOOL)_isNewlyInstalled
{
  if ([(SBApplication *)self isSystemApplication]|| [(SBApplication *)self isInternalApplication])
  {
    return 0;
  }

  v4 = *(self + 80) & 0x38;
  if ((*(self + 80) & 0x38) == 0)
  {
    v5 = [(FBSApplicationDataStore *)self->_dataStore safeObjectForKey:@"SBApplicationIsNewlyInstalled" ofType:objc_opt_class()];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v4 = 8;
    }

    else
    {
      v4 = 16;
    }

    *(self + 80) = *(self + 80) & 0xC7 | v4;
  }

  return v4 == 8;
}

- (BOOL)_isRecentlyUpdated
{
  v2 = *(self + 80) & 7;
  if (!v2)
  {
    v4 = [(FBSApplicationDataStore *)self->_dataStore safeObjectForKey:@"SBApplicationRecentlyUpdated" ofType:objc_opt_class()];
    v5 = [v4 BOOLValue];

    if (v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    *(self + 80) = *(self + 80) & 0xF8 | v2;
  }

  return v2 == 1;
}

- (BOOL)isUninstalled
{
  v2 = self;
  objc_sync_enter(v2);
  uninstalled = v2->_uninstalled;
  objc_sync_exit(v2);

  return uninstalled;
}

- (void)_noteIconDataSourceDidChange
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"SBApplicationIconDataSourceDidChangeNotification" object:self userInfo:0];
}

- (NSArray)dynamicApplicationShortcutItems
{
  v3 = +[SBApplicationShortcutStoreManager sharedManager];
  v4 = [(SBApplication *)self bundleIdentifier];
  v5 = [v3 applicationShortcutItemsForBundleIdentifier:v4 withVersion:{-[SBApplicationInfo dynamicApplicationShortcutItemsVersion](self->_appInfo, "dynamicApplicationShortcutItemsVersion")}];

  return v5;
}

- (int)dataUsage
{
  if (self->_dataFlagsIsSet)
  {
    return *(self + 84);
  }

  else
  {
    return [(SBApplicationInfo *)self->_appInfo networkUsageTypes];
  }
}

- (id)succinctDescription
{
  v2 = [(SBApplication *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBApplication *)self bundleIdentifier];
  v5 = [v3 appendObject:v4 withName:0];

  return v3;
}

- (void)purgeCaches
{
  obj = self;
  objc_sync_enter(obj);
  [(XBApplicationSnapshotManifest *)obj->_synchronized_snapshotManifest purgeSnapshotsWithProtectedContent];
  objc_sync_exit(obj);
}

- (BOOL)isUninstallSupported
{
  v3 = [(SBApplicationInfo *)self->_appInfo uninstallCapability];
  if (!v3 || v3 == 2 && !MGGetBoolAnswer())
  {
    return 0;
  }

  v4 = [(SBApplication *)self bundleIdentifier];
  if ([v4 isEqualToString:@"com.apple.mobileme.fmf1"])
  {
    v5 = [MEMORY[0x277D262A0] sharedConnection];
    v6 = [v5 effectiveBoolValueForSetting:*MEMORY[0x277D25EA8]] == 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_didSuspend
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = SBLogWorkspace();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(SBApplication *)self bundleIdentifier];
    v6 = 136315394;
    v7 = "[SBApplication _didSuspend]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "%s %{public}@", &v6, 0x16u);
  }

  [(SBApplication *)self _resetDataUsage];
  if ([(NSString *)self->_bundleIdentifier isEqual:@"com.apple.Preferences"])
  {
    v5 = _didSuspend_token;
    if (_didSuspend_token != -1 || (notify_register_check("com.apple.airportsettingsvisible", &_didSuspend_token), v5 = _didSuspend_token, _didSuspend_token != -1))
    {
      notify_set_state(v5, 0);
      notify_post("com.apple.airportsettingsvisible");
    }
  }
}

- (BOOL)classicAppZoomedIn
{
  if (![(SBApplication *)self _classicAppScaledPhoneOnPad]|| [(SBApplicationInfo *)self->_appInfo requiresHiDPI])
  {
    return 0;
  }

  v4 = [(SBApplication *)self _dataStore];
  v5 = [(SBApplication *)self _baseSceneIdentifier];
  v6 = [v4 sceneStoreForIdentifier:v5 creatingIfNecessary:0];

  v7 = [v6 safeObjectForKey:@"classicAppZoomedIn" ofType:objc_opt_class()];
  LOBYTE(v4) = [v7 BOOLValue];

  return v4;
}

- (BOOL)classicAppRequiresHiDPI
{
  v3 = [(SBApplication *)self isClassic];
  if (v3)
  {
    appInfo = self->_appInfo;

    LOBYTE(v3) = [(SBApplicationInfo *)appInfo requiresHiDPI];
  }

  return v3;
}

- (BOOL)classicAppZoomedInOrRequiresHiDPI
{
  if ([(SBApplication *)self classicAppZoomedIn])
  {
    return 1;
  }

  return [(SBApplication *)self classicAppRequiresHiDPI];
}

- (BOOL)classicAppFullScreen
{
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v3 = ![(SBApplication *)self classicAppNonFullScreenWithHomeAffordance];
  }

  else
  {
    if ([(SBApplication *)self classicAppScaled]&& [(SBApplication *)self _supportsApplicationType:4])
    {
      v4 = ![(SBApplication *)self _classicAppScaledPhoneOnPad];
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    v3 = v4 | [(SBApplication *)self _classicAppScaledPadOnPad];
  }

  return v3 & 1;
}

- (BOOL)classicAppWithOwnSafeArea
{
  if (SBFEffectiveHomeButtonType() != 2)
  {
    return 0;
  }

  v3 = [(SBApplication *)self _classicMode];

  return SBApplicationClassicModeWantsSafeAreaInsets(v3);
}

- (BOOL)includesStatusBarInClassicJailForInterfaceOrientation:(int64_t)a3
{
  LODWORD(v5) = [(SBApplication *)self isClassic];
  if (v5)
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      if ([(SBApplication *)self _classicAppScaledPhoneOnPad])
      {
        LOBYTE(v5) = 0;
      }

      else if (SBFEffectiveHomeButtonType() == 2 && ![(SBApplication *)self classicAppScaledWithAspectRatioCloseEnoughToBeTreatedAsFullScreen])
      {
        LODWORD(v5) = [(SBApplication *)self classicAppWithOwnSafeArea];
        if (v5)
        {
          if (__sb__runningInSpringBoard())
          {
            __sb__mainScreenReferenceBounds();
            BSSizeRoundForScale();
            v10 = v9;
            v12 = v11;
          }

          else
          {
            v13 = [MEMORY[0x277D759A0] mainScreen];
            [v13 _referenceBounds];
            BSSizeRoundForScale();
            v10 = v14;
            v12 = v15;
          }

          v16 = objc_opt_class();
          v17 = [MEMORY[0x277D759A0] mainScreen];
          v18 = [v17 displayConfiguration];
          [v16 _defaultLaunchingSizeForDisplayConfiguration:v18 classicMode:{-[SBApplication _classicMode](self, "_classicMode")}];
          v20 = v19;
          v22 = v21;

          if (v20 == v10 && v22 == v12)
          {

            LOBYTE(v5) = [(SBApplication *)self classicAppFullScreen];
          }

          else if ((a3 - 3) >= 2)
          {
            LOBYTE(v5) = v12 / v10 < v22 / v20;
          }

          else
          {
            LOBYTE(v5) = v12 / v10 > v22 / v20;
          }
        }
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }

    else
    {
      v8 = SBFEffectiveHomeButtonType();
      v5 = [(SBApplication *)self _classicMode];
      if (v8 == 2)
      {

        LOBYTE(v5) = SBApplicationClassicModeExpectsRoundedCorners(v5);
      }

      else
      {
        LOBYTE(v5) = v5 != 1;
      }
    }
  }

  return v5;
}

- (CGSize)defaultLaunchingSizeForDisplayConfiguration:(id)a3
{
  v4 = a3;
  [objc_opt_class() _defaultLaunchingSizeForDisplayConfiguration:v4 classicMode:{-[SBApplication _classicMode](self, "_classicMode")}];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)restrictedClassicModeDisplayConfigurationForDisplayConfiguration:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() restrictedClassicModeDisplayConfigurationForDisplayConfiguration:v4 classicMode:{-[SBApplication _classicMode](self, "_classicMode")}];

  return v5;
}

+ (id)restrictedClassicModeDisplayConfigurationForDisplayConfiguration:(id)a3 classicMode:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 identity];
  v8 = v7;
  if ((a4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && [v7 isMainRootDisplay])
  {
    [a1 _defaultLaunchingSizeForDisplayConfiguration:v6 classicMode:a4];
    v10 = v9;
    v12 = v11;
    v13 = [v6 currentMode];
    v14 = [v13 _copyWithOverrideSize:{v10, v12}];

    v15 = [v6 copyWithOverrideMode:v14];
    if (SBApplicationClassicModeRepresentsMoreSpace(a4))
    {
      [v15 pixelSize];
      v17 = v16;
      v19 = v18;
      [a1 _standardCanvasSizeForClassicMode:a4];
      v21 = v20;
      v23 = v22;
      [v15 pointScale];
      v25 = v23 * v24;
      v26 = v21 * v24;
      if (v17 != v26 || v19 != v25)
      {
        v28 = [objc_alloc(MEMORY[0x277D0ACE8]) initWithConfiguration:v15];
        [v15 _nativeBounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        [v15 bounds];
        [v28 setPixelSize:v26 nativeBounds:v25 bounds:{v30, v32, v34, v36, v37, v38, v39, v40}];
        v45 = 0;
        v41 = [v28 buildConfigurationWithError:&v45];
        v42 = v45;

        if (v42)
        {
          v43 = SBLogClassicMode();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [SBApplication(Classic) restrictedClassicModeDisplayConfigurationForDisplayConfiguration:v42 classicMode:v43];
          }
        }

        v15 = v41;
      }
    }

    v6 = v15;
  }

  return v6;
}

- (void)_setClassicAppZoomedIn:(BOOL)a3
{
  v3 = a3;
  if ([(SBApplication *)self _classicAppScaledPhoneOnPad]&& ![(SBApplicationInfo *)self->_appInfo requiresHiDPI])
  {
    v5 = [(SBApplication *)self _dataStore];
    v6 = [(SBApplication *)self _baseSceneIdentifier];
    v8 = [v5 sceneStoreForIdentifier:v6 creatingIfNecessary:1];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [v8 setObject:v7 forKey:@"classicAppZoomedIn"];
  }
}

- (BOOL)_canLaunchInClassicMode:(int64_t)a3
{
  v6 = self;
  [(SBApplication *)self _calculateSupportedTypesLazilyIfNecessary];
  if ([(SBApplication *)v6 _bypassesClassicMode])
  {
    LOBYTE(v6) = a3 != -1;
    return v6;
  }

  switch(a3)
  {
    case 0:
      v26 = [(SBApplication *)v6 _supportedTypeForClassicModeNone];
      v27 = v6;
      goto LABEL_43;
    case 1:
      v27 = v6;
      v26 = 1;
      goto LABEL_43;
    case 2:
      v22 = __sb__runningInSpringBoard();
      v8 = v22;
      if (v22)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 4;
      goto LABEL_124;
    case 3:
      v24 = __sb__runningInSpringBoard();
      v8 = v24;
      if (v24)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 8;
      goto LABEL_124;
    case 4:
      v19 = __sb__runningInSpringBoard();
      v8 = v19;
      if (v19)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 16;
      goto LABEL_124;
    case 5:
      v30 = __sb__runningInSpringBoard();
      v8 = v30;
      if (v30)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 32;
      goto LABEL_124;
    case 6:
      v32 = __sb__runningInSpringBoard();
      v8 = v32;
      if (v32)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 64;
      goto LABEL_124;
    case 7:
      v25 = __sb__runningInSpringBoard();
      v8 = v25;
      if (v25)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 128;
      goto LABEL_124;
    case 8:
      v34 = __sb__runningInSpringBoard();
      v8 = v34;
      if (v34)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 1024;
      goto LABEL_124;
    case 9:
      v21 = __sb__runningInSpringBoard();
      v8 = v21;
      if (v21)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 2048;
      goto LABEL_124;
    case 10:
      v33 = __sb__runningInSpringBoard();
      v8 = v33;
      if (v33)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 256;
      goto LABEL_124;
    case 11:
      v15 = __sb__runningInSpringBoard();
      v8 = v15;
      if (v15)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 512;
      goto LABEL_124;
    case 12:
      v20 = __sb__runningInSpringBoard();
      v8 = v20;
      if (v20)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 4096;
      goto LABEL_124;
    case 13:
      v31 = __sb__runningInSpringBoard();
      v8 = v31;
      if (v31)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeLessThanSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 0x2000;
      goto LABEL_124;
    case 14:
      if (![(SBApplication *)v6 _supportsApplicationType:2])
      {
        goto LABEL_51;
      }

      v11 = __sb__runningInSpringBoard();
      v12 = v11;
      if (v11)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      LODWORD(v6) = BSSizeEqualToSize() ^ 1;
      if (v12)
      {
        return v6;
      }

      goto LABEL_128;
    case 15:
      v23 = __sb__runningInSpringBoard();
      v8 = v23;
      if (v23)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeLessThanSize())
      {
        goto LABEL_94;
      }

      goto LABEL_126;
    case 16:
      v10 = __sb__runningInSpringBoard();
      v8 = v10;
      if (v10)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeGreaterThanOrEqualToSize())
      {
        goto LABEL_126;
      }

LABEL_94:
      v13 = v6;
      v14 = 0x8000000;
      goto LABEL_124;
    case 17:
      if (!__sb__runningInSpringBoard())
      {
        v36 = [MEMORY[0x277D75418] currentDevice];
        LOBYTE(v6) = [v36 userInterfaceIdiom] == 1 && -[SBApplication _supportsApplicationType:](v6, "_supportsApplicationType:", 0x20000);

        return v6;
      }

      if (SBFEffectiveDeviceClass() != 2)
      {
LABEL_51:
        LOBYTE(v6) = 0;
        return v6;
      }

      v27 = v6;
      v26 = 0x20000;
LABEL_43:

      return [(SBApplication *)v27 _supportsApplicationType:v26];
    case 18:
    case 19:
      v7 = __sb__runningInSpringBoard();
      v8 = v7;
      if (v7)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeEqualToSize() && [(SBApplication *)v6 _supportsApplicationType:0x10000])
      {
        LOBYTE(v6) = 1;
        if ((v8 & 1) == 0)
        {
          goto LABEL_128;
        }

        return v6;
      }

      v17 = __sb__runningInSpringBoard();
      v18 = v17;
      if (v17)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v4 = [MEMORY[0x277D759A0] mainScreen];
        [v4 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeLessThanSize())
      {
        LOBYTE(v6) = [(SBApplication *)v6 _supportsApplicationType:0x100000];
        if (v18)
        {
          goto LABEL_127;
        }
      }

      else
      {
        LOBYTE(v6) = 0;
        if (v18)
        {
          goto LABEL_127;
        }
      }

      if (v8)
      {
        return v6;
      }

      goto LABEL_128;
    case 20:
      v29 = __sb__runningInSpringBoard();
      v8 = v29;
      if (v29)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeGreaterThanOrEqualToSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 0x2000000;
      goto LABEL_124;
    case 21:
    case 24:
      v9 = __sb__runningInSpringBoard();
      v8 = v9;
      if (v9)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeGreaterThanOrEqualToSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 0x1000000;
      goto LABEL_124;
    case 22:
      v35 = __sb__runningInSpringBoard();
      v8 = v35;
      if (v35)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (!BSSizeGreaterThanOrEqualToSize())
      {
        goto LABEL_126;
      }

      v13 = v6;
      v14 = 0x10000000;
      goto LABEL_124;
    case 23:
      v16 = __sb__runningInSpringBoard();
      v8 = v16;
      if (v16)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (BSSizeGreaterThanOrEqualToSize())
      {
        v13 = v6;
        v14 = 0x40000000;
LABEL_124:
        LOBYTE(v6) = [(SBApplication *)v13 _supportsApplicationType:v14];
        if (v8)
        {
          return v6;
        }

LABEL_128:

        return v6;
      }

LABEL_126:
      LOBYTE(v6) = 0;
LABEL_127:
      if ((v8 & 1) == 0)
      {
        goto LABEL_128;
      }

      return v6;
    default:
      goto LABEL_51;
  }
}

- (void)_recalculateApplicationSupportedTypes
{
  self->_calculatedSupportedTypes = 0;
  self->_supportedTypes &= 3uLL;
  [(SBApplication *)self _calculateSupportedTypesLazilyIfNecessary];
}

+ (int64_t)_bestAvailableClassicModeForHostingExtensionContainedInApplication:(BOOL)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SBApplication_Classic_Private___bestAvailableClassicModeForHostingExtensionContainedInApplication___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_bestAvailableClassicModeForHostingExtensionContainedInApplication__onceToken != -1)
  {
    dispatch_once(&_bestAvailableClassicModeForHostingExtensionContainedInApplication__onceToken, block);
  }

  v4 = &_bestAvailableClassicModeForHostingExtensionContainedInApplication__sLargestValidClassicModePad;
  if (!v3)
  {
    v4 = &_bestAvailableClassicModeForHostingExtensionContainedInApplication__sLargestValidClassicModePhone;
  }

  return *v4;
}

void __101__SBApplication_Classic_Private___bestAvailableClassicModeForHostingExtensionContainedInApplication___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D66E30];
  v2 = *(MEMORY[0x277D66E30] + 32);
  v3 = *(MEMORY[0x277D66E30] + 48);
  v30[1] = *(MEMORY[0x277D66E30] + 16);
  v30[2] = v2;
  v4 = *(MEMORY[0x277D66E30] + 64);
  v5 = *(MEMORY[0x277D66E30] + 80);
  v30[3] = v3;
  v30[4] = v4;
  v6 = *(MEMORY[0x277D66E30] + 96);
  v7 = *(MEMORY[0x277D66E30] + 112);
  v30[5] = v5;
  v30[6] = v6;
  v8 = *(MEMORY[0x277D66E30] + 128);
  v10 = *(MEMORY[0x277D66E30] + 160);
  v9 = *(MEMORY[0x277D66E30] + 176);
  v30[7] = *(MEMORY[0x277D66E30] + 144);
  v30[8] = v9;
  v12 = *(MEMORY[0x277D66E30] + 192);
  v11 = *(MEMORY[0x277D66E30] + 208);
  v30[9] = v7;
  v30[10] = v11;
  v30[11] = v8;
  v30[12] = v10;
  v30[13] = v12;
  v14 = *(MEMORY[0x277D66E30] + 272);
  v13 = *(MEMORY[0x277D66E30] + 288);
  v15 = *(MEMORY[0x277D66E30] + 240);
  v29[0] = *(MEMORY[0x277D66E30] + 224);
  v29[1] = v13;
  v17 = *(MEMORY[0x277D66E30] + 320);
  v16 = *(MEMORY[0x277D66E30] + 336);
  v29[2] = v15;
  v29[3] = v16;
  v18 = *(MEMORY[0x277D66E30] + 352);
  v19 = *(MEMORY[0x277D66E30] + 368);
  v29[4] = *(MEMORY[0x277D66E30] + 256);
  v29[5] = v18;
  v20 = *(MEMORY[0x277D66E30] + 384);
  v21 = *(MEMORY[0x277D66E30] + 400);
  v29[6] = v19;
  v29[7] = v20;
  v22 = *(MEMORY[0x277D66E30] + 416);
  v29[8] = v21;
  v29[9] = v22;
  v23 = *(MEMORY[0x277D66E30] + 448);
  v24 = *(MEMORY[0x277D66E30] + 464);
  v29[10] = v14;
  v29[11] = v23;
  v29[12] = v17;
  v29[13] = v24;
  v29[14] = *(MEMORY[0x277D66E30] + 480);
  v30[0] = v1;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __101__SBApplication_Classic_Private___bestAvailableClassicModeForHostingExtensionContainedInApplication___block_invoke_2;
  v28[3] = &__block_descriptor_40_e23_q24__0r__CGSize_dd_8Q16l;
  v28[4] = *(a1 + 32);
  v25 = MEMORY[0x223D6F7F0](v28);
  v26 = [MEMORY[0x277D75418] currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if ((v27 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    _bestAvailableClassicModeForHostingExtensionContainedInApplication__sLargestValidClassicModePad = (v25)[2](v25, v29, 15);
  }

  _bestAvailableClassicModeForHostingExtensionContainedInApplication__sLargestValidClassicModePhone = (v25)[2](v25, v30, 14);
}

uint64_t __101__SBApplication_Classic_Private___bestAvailableClassicModeForHostingExtensionContainedInApplication___block_invoke_2(uint64_t a1, double *a2, uint64_t a3)
{
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    if ([v3 userInterfaceIdiom])
    {
      v8 = 1;
      goto LABEL_9;
    }
  }

  v8 = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v25 = 1;
    goto LABEL_17;
  }

LABEL_9:
  if (!__sb__runningInSpringBoard())
  {
    v9 = [MEMORY[0x277D75418] currentDevice];
    if ([v9 userInterfaceIdiom] == 1)
    {
      v25 = SBFEffectiveHomeButtonType() == 2;

      goto LABEL_17;
    }

LABEL_16:
    v25 = 0;
LABEL_17:
    if ((v8 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SBFEffectiveDeviceClass() != 2)
  {
    goto LABEL_16;
  }

  v25 = SBFEffectiveHomeButtonType() == 2;
  if (v8)
  {
LABEL_18:
  }

LABEL_19:
  if (a3)
  {
    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
    v12 = a2 + 1;
    v13 = -1;
    while (1)
    {
      v15 = *(v12 - 1);
      v14 = *v12;
      v16 = [*(a1 + 32) _classicModeForLaunchingSize:{v15, *v12}];
      if (v16 == -1)
      {
        goto LABEL_38;
      }

      v17 = v16;
      v18 = __sb__runningInSpringBoard();
      v19 = v18;
      if (v18)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      v20 = BSSizeEqualToSize();
      if ((v19 & 1) == 0)
      {
      }

      if (v20)
      {
        return v17;
      }

      v21 = __sb__runningInSpringBoard();
      v22 = v21;
      if (v21)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        a2 = [MEMORY[0x277D759A0] mainScreen];
        [a2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v23 = BSSizeGreaterThanOrEqualToSize();
      if ((v22 & 1) == 0)
      {
      }

      if (!v23 || (BSSizeGreaterThanOrEqualToSize() & 1) == 0 && (!v25 || !SBApplicationClassicModeExpectsRoundedCorners(v17) || SBApplicationClassicModeExpectsRoundedCorners(v13)))
      {
LABEL_38:
        v17 = v13;
        v14 = v11;
        v15 = v10;
      }

      v12 += 2;
      v10 = v15;
      v11 = v14;
      v13 = v17;
      if (!--a3)
      {
        return v17;
      }
    }
  }

  return -1;
}

+ (unint64_t)_canonicalScreenTypeForClassicMode:(int64_t)a3
{
  result = 0;
  switch(a3)
  {
    case -1:
      result = 0x7FFFFFFFFFFFFFFFLL;
      break;
    case 0:
      result = SBHScreenTypeForCurrentDevice();
      break;
    case 3:
      result = 1;
      break;
    case 4:
      result = 2;
      break;
    case 5:
      result = 4;
      break;
    case 6:
      result = 3;
      break;
    case 7:
      result = 11;
      break;
    case 8:
      result = 5;
      break;
    case 9:
      result = 13;
      break;
    case 10:
      result = 21;
      break;
    case 11:
      result = 25;
      break;
    case 12:
      result = 23;
      break;
    case 13:
      result = 27;
      break;
    case 14:
      result = 100;
      break;
    case 15:
      result = 103;
      break;
    case 16:
      result = 104;
      break;
    case 17:
      result = 112;
      break;
    case 18:
      result = 107;
      break;
    case 19:
      result = 109;
      break;
    case 20:
      result = 114;
      break;
    case 21:
      result = 110;
      break;
    case 22:
      result = 111;
      break;
    case 23:
      result = 116;
      break;
    case 24:
      result = 113;
      break;
    default:
      return result;
  }

  return result;
}

+ (int64_t)_bestClassicModeForScreenType:(unint64_t)a3
{
  if (a3 > 99)
  {
    if (a3 <= 108)
    {
      if (a3 > 103)
      {
        if (a3 - 106 < 2)
        {
          return 18;
        }

        if (a3 == 104)
        {
          return 16;
        }
      }

      else
      {
        if (a3 - 100 < 2)
        {
          return 14;
        }

        if (a3 == 103)
        {
          return 15;
        }
      }
    }

    else
    {
      if (a3 <= 111)
      {
        if (a3 == 109)
        {
          return 19;
        }

        if (a3 == 110)
        {
          return 21;
        }

        return 22;
      }

      if (a3 <= 113)
      {
        if (a3 == 112)
        {
          return 17;
        }

        else
        {
          return 24;
        }
      }

      if (a3 == 114)
      {
        return 20;
      }

      if (a3 == 116)
      {
        return 23;
      }
    }

    return -1;
  }

  result = 2;
  switch(a3)
  {
    case 0uLL:
      return result;
    case 1uLL:
      result = 3;
      break;
    case 2uLL:
      result = 4;
      break;
    case 3uLL:
    case 6uLL:
    case 8uLL:
    case 9uLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x14uLL:
    case 0x18uLL:
      result = 6;
      break;
    case 4uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0x10uLL:
    case 0x16uLL:
      result = 5;
      break;
    case 5uLL:
    case 7uLL:
      result = 8;
      break;
    case 0xBuLL:
    case 0x11uLL:
      result = 7;
      break;
    case 0xDuLL:
    case 0x13uLL:
      result = 9;
      break;
    case 0x15uLL:
      result = 10;
      break;
    case 0x17uLL:
      result = 12;
      break;
    default:
      return -1;
  }

  return result;
}

+ (unint64_t)_niceScreenTypeForClassicType:(unint64_t)a3 matchingAValidDisplayZoomModeOnScreenType:(unint64_t)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = a3;
  SBHGetScreenSpecification();
  SBHGetScreenSpecification();
  HasHomeButton = SBHScreenTypeHasHomeButton();
  if (HasHomeButton == SBHScreenTypeHasHomeButton())
  {
    SBHEnumerateScreenTypes();
  }

  v6 = [(SBApplication *)a1 _unobscuredScreenTypeForScreenType:?];
  v9[3] = v6;
  _Block_object_dispose(&v8, 8);
  return v6;
}

uint64_t __106__SBApplication_Classic_Private___niceScreenTypeForClassicType_matchingAValidDisplayZoomModeOnScreenType___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = SBHGetScreenSpecification();
  if (!*(a1 + 64))
  {
    result = BSSizeEqualToSize();
    if (result)
    {
      v7 = *(a1 + 120);
      result = SBHScreenTypeHasHomeButton();
      if (v7 == result)
      {
        *(*(*(a1 + 32) + 8) + 24) = a2;
        *a3 = 1;
      }
    }
  }

  return result;
}

+ (unint64_t)_unobscuredScreenTypeForScreenType:(uint64_t)a1
{
  objc_opt_self();
  if (a2 >= 0x1F && a2 - 100 >= 0x13)
  {
    v4 = SBLogClassicMode();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBApplication *)a2 _unobscuredScreenTypeForScreenType:v4];
    }

    IsPad = SBHScreenTypeIsPad();
    HasHomeButton = SBHScreenTypeHasHomeButton();
    v7 = 3;
    if (HasHomeButton)
    {
      v7 = 1;
    }

    v8 = 111;
    if (HasHomeButton)
    {
      v8 = 100;
    }

    if (IsPad)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  return a2;
}

- (unint64_t)_supportedTypeForClassicModeNone
{
  v4 = __sb__runningInSpringBoard();
  v5 = MEMORY[0x277D66E30];
  if (v4)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:
      v6 = __sb__runningInSpringBoard();
      v7 = v6;
      if (v6)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v11 = BSSizeEqualToSize();
      if ((v7 & 1) == 0)
      {
      }

      if (v11)
      {
        return 0x2000;
      }

      v14 = __sb__runningInSpringBoard();
      v15 = v14;
      if (v14)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v18 = BSSizeEqualToSize();
      if ((v15 & 1) == 0)
      {
      }

      if (v18)
      {
        return 4096;
      }

      v20 = __sb__runningInSpringBoard();
      v21 = v20;
      if (v20)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v24 = BSSizeEqualToSize();
      if ((v21 & 1) == 0)
      {
      }

      if (v24)
      {
        return 2048;
      }

      v28 = __sb__runningInSpringBoard();
      v29 = v28;
      if (v28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v32 = BSSizeEqualToSize();
      if ((v29 & 1) == 0)
      {
      }

      if (v32)
      {
        return 1024;
      }

      v34 = __sb__runningInSpringBoard();
      v35 = v34;
      if (v34)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v38 = BSSizeEqualToSize();
      if ((v35 & 1) == 0)
      {
      }

      if (v38)
      {
        return 512;
      }

      v40 = __sb__runningInSpringBoard();
      v41 = v40;
      if (v40)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v46 = BSSizeEqualToSize();
      if ((v41 & 1) == 0)
      {
      }

      if (v46)
      {
        return 256;
      }

      v48 = __sb__runningInSpringBoard();
      v49 = v48;
      if (v48)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v52 = BSSizeEqualToSize();
      if ((v49 & 1) == 0)
      {
      }

      if (v52)
      {
        return 128;
      }

      v54 = __sb__runningInSpringBoard();
      v55 = v54;
      if (v54)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v58 = BSSizeEqualToSize();
      if ((v55 & 1) == 0)
      {
      }

      if (v58)
      {
        return 64;
      }

      v60 = __sb__runningInSpringBoard();
      v61 = v60;
      if (v60)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v64 = BSSizeEqualToSize();
      if ((v61 & 1) == 0)
      {
      }

      if (v64)
      {
        return 32;
      }

      v66 = __sb__runningInSpringBoard();
      v67 = v66;
      if (v66)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v70 = BSSizeEqualToSize();
      if ((v67 & 1) == 0)
      {
      }

      if (v70)
      {
        return 16;
      }

      v72 = __sb__runningInSpringBoard();
      v73 = v72;
      if (v72)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v76 = BSSizeEqualToSize();
      if ((v73 & 1) == 0)
      {
      }

      if (v76)
      {
        return 8;
      }

      v78 = __sb__runningInSpringBoard();
      v79 = v78;
      if (v78)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v82 = BSSizeEqualToSize();
      if ((v79 & 1) == 0)
      {
      }

      if (v82)
      {
        return 4;
      }

      v84 = __sb__runningInSpringBoard();
      v85 = v84;
      if (v84)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v87 = BSSizeEqualToSize();
      if ((v85 & 1) == 0)
      {
      }

      return v87;
    }
  }

  else
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v2 = [v8 userInterfaceIdiom];

    if (v2 != 1)
    {
      goto LABEL_3;
    }
  }

  v9 = __sb__runningInSpringBoard();
  v10 = v9;
  if (v9)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v13 = BSSizeEqualToSize();
  if ((v10 & 1) == 0)
  {
  }

  if (v13)
  {
    return 0x40000000;
  }

  v16 = __sb__runningInSpringBoard();
  v17 = v16;
  if (v16)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v19 = BSSizeEqualToSize();
  if ((v17 & 1) == 0)
  {
  }

  if (v19)
  {
    return 0xFFFFFFFF80000000;
  }

  v22 = __sb__runningInSpringBoard();
  v23 = v22;
  if (v22)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v25 = BSSizeEqualToSize();
  if ((v23 & 1) == 0)
  {
  }

  v26 = __sb__runningInSpringBoard();
  v27 = v26;
  if (v25)
  {
    if (v26)
    {
      if (SBFEffectiveDeviceClass() != 2 || SBFEffectiveHomeButtonType() != 2)
      {
        return 0x8000000;
      }
    }

    else
    {
      v25 = [MEMORY[0x277D75418] currentDevice];
      if ([v25 userInterfaceIdiom] != 1 || SBFEffectiveHomeButtonType() != 2)
      {
        v12 = 0x8000000;
LABEL_93:

        return v12;
      }
    }

    v30 = __sb__runningInSpringBoard();
    v31 = v30;
    if (v30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = [MEMORY[0x277D759A0] mainScreen];
      [v3 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v44 < *(v5 + 440))
    {
      v12 = 0x8000000;
    }

    else
    {
      v12 = 0x10000000;
    }

    if ((v31 & 1) == 0)
    {
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  else
  {
    if (v26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v2 = [MEMORY[0x277D759A0] mainScreen];
      [v2 _referenceBounds];
    }

    BSSizeRoundForScale();
    v33 = BSSizeEqualToSize();
    if ((v27 & 1) == 0)
    {
    }

    if (v33)
    {
      return 0x20000000;
    }

    else
    {
      v36 = __sb__runningInSpringBoard();
      v37 = v36;
      if (v36)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v39 = BSSizeEqualToSize();
      if ((v37 & 1) == 0)
      {
      }

      if (v39)
      {
        return 0x2000000;
      }

      else
      {
        v42 = __sb__runningInSpringBoard();
        v43 = v42;
        if (v42)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v2 = [MEMORY[0x277D759A0] mainScreen];
          [v2 _referenceBounds];
        }

        BSSizeRoundForScale();
        v47 = BSSizeEqualToSize();
        if ((v43 & 1) == 0)
        {
        }

        if (v47)
        {
          return 0x4000000;
        }

        else
        {
          v50 = __sb__runningInSpringBoard();
          v51 = v50;
          if (v50)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v2 = [MEMORY[0x277D759A0] mainScreen];
            [v2 _referenceBounds];
          }

          BSSizeRoundForScale();
          v53 = BSSizeEqualToSize();
          if ((v51 & 1) == 0)
          {
          }

          if (v53)
          {
            return 0x800000;
          }

          else
          {
            v56 = __sb__runningInSpringBoard();
            v57 = v56;
            if (v56)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v2 = [MEMORY[0x277D759A0] mainScreen];
              [v2 _referenceBounds];
            }

            BSSizeRoundForScale();
            v59 = BSSizeEqualToSize();
            if ((v57 & 1) == 0)
            {
            }

            if (v59)
            {
              return 0x400000;
            }

            else
            {
              v62 = __sb__runningInSpringBoard();
              v63 = v62;
              if (v62)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v2 = [MEMORY[0x277D759A0] mainScreen];
                [v2 _referenceBounds];
              }

              BSSizeRoundForScale();
              v65 = BSSizeEqualToSize();
              if ((v63 & 1) == 0)
              {
              }

              if (v65)
              {
                return 0x100000;
              }

              else
              {
                v68 = __sb__runningInSpringBoard();
                v69 = v68;
                if (v68)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  v2 = [MEMORY[0x277D759A0] mainScreen];
                  [v2 _referenceBounds];
                }

                BSSizeRoundForScale();
                v71 = BSSizeEqualToSize();
                if ((v69 & 1) == 0)
                {
                }

                if (v71)
                {
                  return 0x80000;
                }

                else
                {
                  v74 = __sb__runningInSpringBoard();
                  v75 = v74;
                  if (v74)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    v2 = [MEMORY[0x277D759A0] mainScreen];
                    [v2 _referenceBounds];
                  }

                  BSSizeRoundForScale();
                  v77 = BSSizeEqualToSize();
                  if ((v75 & 1) == 0)
                  {
                  }

                  if (v77)
                  {
                    return 0x40000;
                  }

                  else
                  {
                    v80 = __sb__runningInSpringBoard();
                    v81 = v80;
                    if (v80)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      v2 = [MEMORY[0x277D759A0] mainScreen];
                      [v2 _referenceBounds];
                    }

                    BSSizeRoundForScale();
                    v83 = BSSizeEqualToSize();
                    if ((v81 & 1) == 0)
                    {
                    }

                    if (v83)
                    {
                      if (__sb__runningInSpringBoard())
                      {
                        if (SBFEffectiveDeviceClass() == 2)
                        {
                          if (SBFEffectiveHomeButtonType() == 2)
                          {
                            return 0x20000;
                          }

                          else
                          {
                            return 2;
                          }
                        }

                        else
                        {
                          return 2;
                        }
                      }

                      else
                      {
                        v86 = [MEMORY[0x277D75418] currentDevice];
                        if ([v86 userInterfaceIdiom] == 1)
                        {
                          if (SBFEffectiveHomeButtonType() == 2)
                          {
                            v12 = 0x20000;
                          }

                          else
                          {
                            v12 = 2;
                          }
                        }

                        else
                        {
                          v12 = 2;
                        }
                      }
                    }

                    else
                    {
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v12;
}

+ (CGSize)_defaultLaunchingSizeForClassicMode:(int64_t)a3
{
  switch(a3)
  {
    case -1:
    case 0:
      v4 = MEMORY[0x277CBF3A8];
      goto LABEL_12;
    case 1:
      v4 = MEMORY[0x277D66E30];
LABEL_12:
      v3 = *v4;
      break;
    case 2:
      v3 = *(MEMORY[0x277D66E30] + 16);
      break;
    case 3:
      v3 = *(MEMORY[0x277D66E30] + 32);
      break;
    case 4:
      v3 = *(MEMORY[0x277D66E30] + 48);
      break;
    case 5:
      v3 = *(MEMORY[0x277D66E30] + 64);
      break;
    case 6:
      v3 = *(MEMORY[0x277D66E30] + 80);
      break;
    case 7:
      v3 = *(MEMORY[0x277D66E30] + 96);
      break;
    case 8:
      v3 = *(MEMORY[0x277D66E30] + 112);
      break;
    case 9:
      v3 = *(MEMORY[0x277D66E30] + 128);
      break;
    case 10:
      v3 = *(MEMORY[0x277D66E30] + 144);
      break;
    case 11:
      v3 = *(MEMORY[0x277D66E30] + 176);
      break;
    case 12:
      v3 = *(MEMORY[0x277D66E30] + 160);
      break;
    case 13:
      v3 = *(MEMORY[0x277D66E30] + 192);
      break;
    case 14:
      v3 = *(MEMORY[0x277D66E30] + 224);
      break;
    case 15:
      v3 = *(MEMORY[0x277D66E30] + 256);
      break;
    case 16:
      v3 = *(MEMORY[0x277D66E30] + 272);
      break;
    case 17:
      v3 = *(MEMORY[0x277D66E30] + 304);
      break;
    case 18:
      v3 = *(MEMORY[0x277D66E30] + 336);
      break;
    case 19:
      v3 = *(MEMORY[0x277D66E30] + 368);
      break;
    case 20:
      v3 = *(MEMORY[0x277D66E30] + 400);
      break;
    case 21:
      v3 = *(MEMORY[0x277D66E30] + 384);
      break;
    case 22:
      v3 = *(MEMORY[0x277D66E30] + 432);
      break;
    case 23:
      v3 = *(MEMORY[0x277D66E30] + 464);
      break;
    case 24:
      v3 = *(MEMORY[0x277D66E30] + 448);
      break;
    default:
      break;
  }

  v5 = *(&v3 + 1);
  result.width = *&v3;
  result.height = v5;
  return result;
}

+ (CGSize)_defaultLaunchingSizeForDisplayConfiguration:(id)a3 classicMode:(int64_t)a4
{
  if ((a4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [a3 bounds];
    v6 = v8;
    v7 = v9;
  }

  else
  {

    [a1 _defaultLaunchingSizeForClassicMode:a4];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

+ (int64_t)_classicModeReplacingMoreSpaceWithEquivalentStandardCanvasForClassicMode:(int64_t)a3
{
  if ((a3 + 1) > 0x18)
  {
    return 22;
  }

  else
  {
    return qword_21F8A53A8[a3 + 1];
  }
}

+ (CGSize)_standardCanvasSizeForClassicMode:(int64_t)a3
{
  v3 = a3;
  if (SBApplicationClassicModeRepresentsMoreSpace(a3))
  {
    v3 = [a1 _classicModeReplacingMoreSpaceWithEquivalentStandardCanvasForClassicMode:v3];
  }

  [a1 _defaultLaunchingSizeForClassicMode:v3];
  result.height = v6;
  result.width = v5;
  return result;
}

+ (int64_t)_classicModeForLaunchingSize:(CGSize)a3
{
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  v6 = BSSizeEqualToSize();
  if ((v5 & 1) == 0)
  {
  }

  if (v6)
  {
    return 0;
  }

  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    goto LABEL_27;
  }

  if (BSSizeEqualToSize())
  {
    return 14;
  }

  if (BSSizeEqualToSize())
  {
    return 15;
  }

  if (BSSizeEqualToSize())
  {
    return 18;
  }

  if (BSSizeEqualToSize())
  {
    return 19;
  }

  if (BSSizeEqualToSize())
  {
    return 20;
  }

  if (BSSizeEqualToSize())
  {
    return 21;
  }

  if (BSSizeEqualToSize())
  {
    return 16;
  }

  if (BSSizeEqualToSize())
  {
    return 23;
  }

  if (BSSizeEqualToSize())
  {
    return 24;
  }

LABEL_27:
  if (BSSizeEqualToSize())
  {
    return 1;
  }

  if (BSSizeEqualToSize())
  {
    return 2;
  }

  if (BSSizeEqualToSize())
  {
    return 3;
  }

  if (BSSizeEqualToSize())
  {
    return 4;
  }

  if (BSSizeEqualToSize())
  {
    return 6;
  }

  if (BSSizeEqualToSize())
  {
    return 7;
  }

  if (BSSizeEqualToSize())
  {
    return 10;
  }

  if (BSSizeEqualToSize())
  {
    return 8;
  }

  if (BSSizeEqualToSize())
  {
    return 9;
  }

  if (BSSizeEqualToSize())
  {
    return 12;
  }

  return -1;
}

+ (BOOL)KJHKJHw39rq9w87q903475q0983rskjd
{
  if (KJHKJHw39rq9w87q903475q0983rskjd_onceToken != -1)
  {
    +[SBApplication(Classic_Internal) KJHKJHw39rq9w87q903475q0983rskjd];
  }

  return KJHKJHw39rq9w87q903475q0983rskjd_sRelaxable;
}

void __67__SBApplication_Classic_Internal__KJHKJHw39rq9w87q903475q0983rskjd__block_invoke()
{
  v1 = [MEMORY[0x277CF0CA8] sharedInstance];
  if (os_variant_has_internal_content() & 1) != 0 || ([v1 isCarrierInstall])
  {
    v0 = 0;
  }

  else
  {
    v0 = [v1 isDeveloperInstall] ^ 1;
  }

  KJHKJHw39rq9w87q903475q0983rskjd_sRelaxable = v0;
}

+ (BOOL)_displayZoomSizesOnThisDeviceNeedRedaction
{
  v0 = objc_opt_self();
  v1 = SBHScreenTypeForCurrentDevice();
  return SBHScreenTypeIsZoomed() && v1 != [(SBApplication *)v0 _unobscuredScreenTypeForScreenType:v1];
}

- (void)flushSnapshotsForAllScenes
{
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  v3 = _os_activity_create(&dword_21ED4E000, "XBMigration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v3, &v5);

  v4 = [(SBApplication *)self _snapshotManifest:v5.opaque[0]];
  [v4 deleteSnapshotsUsingPredicateBuilder:&__block_literal_global_14];

  os_activity_scope_leave(&v5);
}

- (void)flushSnapshotsForAllScenesIncludingAllLegacyImages
{
  *(&v63[1] + 2) = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v2 = _os_activity_create(&dword_21ED4E000, "XBMigration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v2, &state);

  v3 = XBLogFileManifest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SBApplication *)self info];
    v5 = [v4 bundleIdentifier];
    buf = 138543362;
    v61 = v5;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Start flushSnapshotsForAllScenesIncludingAllLegacyImages", &buf, 0xCu);
  }

  v49 = [(SBApplication *)self _snapshotManifest];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v52 = [v49 containerPath];
  v7 = [(SBApplication *)self info];
  v8 = XBCachesPathForApplicationInfo();
  v48 = [v8 stringByAppendingPathComponent:@"LaunchImages"];

  v9 = XBLogFileManifest();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(SBApplication *)self info];
    v11 = [v10 bundleIdentifier];
    buf = 138543618;
    v61 = v11;
    v62 = 2114;
    v63[0] = v48;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing legacy snapshot folder at %{public}@", &buf, 0x16u);
  }

  [v6 removeItemAtPath:v48 error:0];
  v12 = [(SBApplication *)self isSystemApplication];
  v13 = [(SBApplication *)self isInternalApplication];
  v14 = XBLogFileManifest();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(SBApplication *)self info];
    v16 = [v15 bundleIdentifier];
    buf = 138543874;
    v61 = v16;
    v62 = 1024;
    LODWORD(v63[0]) = v12;
    WORD2(v63[0]) = 1024;
    *(v63 + 6) = v13;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] we think we might have SplashBoard-generated images we want to keep. isSystemApplication: %d; isInternalApplication: %d", &buf, 0x18u);
  }

  if (v12 || v13)
  {
    v17 = [MEMORY[0x277D656A0] predicate];
    [v17 setContentTypeMask:2];
    v46 = v17;
    v18 = [v49 defaultGroupIdentifier];
    v47 = [v49 snapshotsForGroupID:v18 matchingPredicate:v46];

    if ([v47 count])
    {
      v19 = [v6 subpathsOfDirectoryAtPath:v52 error:0];
      v50 = [v47 bs_mapNoNulls:&__block_literal_global_35];
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v21)
      {
        v22 = *v55;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v55 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v54 + 1) + 8 * i);
            v25 = [v52 stringByAppendingPathExtension:v24];
            v53 = 0;
            if ([v6 fileExistsAtPath:v25 isDirectory:&v53])
            {
              if (v53 == 1)
              {
                v26 = XBLogFileManifest();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  v27 = [(SBApplication *)self info];
                  v28 = [v27 bundleIdentifier];
                  buf = 138543618;
                  v61 = v28;
                  v62 = 2114;
                  v63[0] = v25;
                  _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_INFO, "[%{public}@] SKIP removing path because it's a directory: %{public}@", &buf, 0x16u);
                }
              }

              else
              {
                v26 = [v24 lastPathComponent];
                if ([v50 containsObject:v26])
                {
                  v31 = XBLogFileManifest();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                  {
                    v32 = [(SBApplication *)self info];
                    v33 = [v32 bundleIdentifier];
                    buf = 138543618;
                    v61 = v33;
                    v62 = 2114;
                    v63[0] = v26;
                    _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_INFO, "[%{public}@] SKIP removing snapshot because it's in our filenamesForExclusion: %{public}@", &buf, 0x16u);
                  }
                }

                else
                {
                  v34 = XBLogFileManifest();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    v35 = [(SBApplication *)self info];
                    v36 = [v35 bundleIdentifier];
                    buf = 138543618;
                    v61 = v36;
                    v62 = 2114;
                    v63[0] = v25;
                    _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing SplashBoard-generated images at: %{public}@", &buf, 0x16u);
                  }

                  [v6 removeItemAtPath:v25 error:0];
                }
              }
            }

            else
            {
              v26 = XBLogFileManifest();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v29 = [(SBApplication *)self info];
                v30 = [v29 bundleIdentifier];
                buf = 138543618;
                v61 = v30;
                v62 = 2114;
                v63[0] = v25;
                _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_INFO, "[%{public}@] SKIP removing path because it doesn't exist: %{public}@", &buf, 0x16u);
              }
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v54 objects:v59 count:16];
        }

        while (v21);
      }

      goto LABEL_36;
    }

    v37 = XBLogFileManifest();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [(SBApplication *)self info];
      v39 = [v38 bundleIdentifier];
      buf = 138543618;
      v61 = v39;
      v62 = 2114;
      v63[0] = v46;
      _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] nothing to keep after searching for snapshots we care about and finding nothing. predicate: %{public}@", &buf, 0x16u);
    }
  }

  v40 = XBLogFileManifest();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [(SBApplication *)self info];
    v42 = [v41 bundleIdentifier];
    buf = 138543618;
    v61 = v42;
    v62 = 2114;
    v63[0] = v52;
    _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing all files in folder: %{public}@", &buf, 0x16u);
  }

  [v6 removeItemAtPath:v52 error:0];
LABEL_36:
  v43 = XBLogFileManifest();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [(SBApplication *)self info];
    v45 = [v44 bundleIdentifier];
    buf = 138543362;
    v61 = v45;
    _os_log_impl(&dword_21ED4E000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished flushSnapshotsForAllScenesIncludingAllLegacyImages", &buf, 0xCu);
  }

  os_activity_scope_leave(&state);
}

- (void)flushSnapshotsForSceneID:(id)a3
{
  v4 = a3;
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  v5 = _os_activity_create(&dword_21ED4E000, "XBMigration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &v7);

  v6 = [(SBApplication *)self _snapshotManifest:v7.opaque[0]];
  [v6 deleteSnapshotsForGroupID:v4 predicateBuilder:&__block_literal_global_37];

  os_activity_scope_leave(&v7);
}

- (void)saveSnapshotForSceneHandle:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v11 = _os_activity_create(&dword_21ED4E000, "XBCapture", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v11, &v12);

  [(SBApplication *)self _xbactivity_saveSnapshotForSceneHandle:v8 context:v9 completion:v10, v12.opaque[0], v12.opaque[1]];
  os_activity_scope_leave(&v12);
}

- (void)saveSuspendSnapshot:(id)a3 forSceneHandle:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39 = a4;
  if (!v6)
  {
    [SBApplication(Snapshots) saveSuspendSnapshot:a2 forSceneHandle:self];
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_21ED4E000, "XBCapture", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [v39 sceneIfExists];
  v9 = v8;
  if (v8 && ([v8 settings], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "interfaceOrientation"), v10, objc_msgSend(v9, "uiClientSettings"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "sb_effectiveInterfaceOrientation"), v12, v11 != v13))
  {
    v14 = XBLogCapture();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v33 = [(SBApplication *)self bundleIdentifier];
      v34 = BSInterfaceOrientationDescription();
      v35 = BSInterfaceOrientationDescription();
      *buf = 138543874;
      v44 = v33;
      v45 = 2114;
      v46 = v34;
      v47 = 2114;
      v48 = v35;
      _os_log_error_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_ERROR, "<%{public}@> Suspend snapshot cancelled due to orientation mismatch; settings are: %{public}@ but client settings are %{public}@.", buf, 0x20u);
    }
  }

  else
  {
    v14 = [(SBApplication *)self _snapshotManifest];
    v15 = [v6 scene];
    v16 = [v15 identifier];
    [v14 deleteSnapshotsForGroupID:v16 predicateBuilder:&__block_literal_global_49];

    v17 = [v9 uiClientSettings];
    v18 = [v14 createSnapshotForSceneSnapshot:v6 withName:@"SBSuspendSnapshot" uiClientSettings:v17];

    v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
    [v18 setExpirationDate:v19];

    [v18 beginImageAccessUntilExpiration];
    v37 = [v6 scene];
    v20 = [SBApp windowSceneManager];
    v21 = [v20 embeddedDisplayWindowScene];
    v22 = [v21 _fbsDisplayConfiguration];

    v23 = [v37 settings];
    v24 = [v23 displayConfiguration];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    v27 = v26;

    if (-[SBApplication isClassic](self, "isClassic") && [v27 isMainRootDisplay])
    {
      [(SBApplication *)self defaultLaunchingSizeForDisplayConfiguration:v27];
      [v18 setReferenceSize:?];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [v18 statusBarSettings];
      v29 = v39;
      v30 = [v29 statusBarEffectiveStyleRequestWithStyle:{_SBStatusBarStyleFromLegacyStyle(objc_msgSend(v28, "style"))}];
      if (v28 && ([v28 isHidden] & 1) == 0)
      {
        v36 = [v28 mutableCopy];
        [v30 legibilityStyle];
        v31 = _UIStatusBarStyleFromLegibilityStyle();
        if (v31 != [v28 style])
        {
          [v30 legibilityStyle];
          [v36 setStyle:_UIStatusBarStyleFromLegibilityStyle()];
        }

        [v18 setStatusBarSettings:v36];
      }
    }

    v32 = [[SBSceneSnapshotDataProvider alloc] initWithSceneSnapshot:v6 scaleFactor:1.0];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __63__SBApplication_Snapshots__saveSuspendSnapshot_forSceneHandle___block_invoke_2;
    v40[3] = &unk_2783A8BF0;
    v40[4] = self;
    v41 = v6;
    [v14 generateImageForSnapshot:v18 dataProvider:v32 writeToFile:0 imageGeneratedHandler:v40 imageDataSavedHandler:0];
  }

  os_activity_scope_leave(&state);
}

void __63__SBApplication_Snapshots__saveSuspendSnapshot_forSceneHandle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setContentTypeMask:1];
  [v2 setName:@"SBSuspendSnapshot"];
}

void __63__SBApplication_Snapshots__saveSuspendSnapshot_forSceneHandle___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __63__SBApplication_Snapshots__saveSuspendSnapshot_forSceneHandle___block_invoke_3;
    v3[3] = &unk_2783A92D8;
    v2 = *(a1 + 40);
    v3[4] = *(a1 + 32);
    v4 = v2;
    dispatch_async(MEMORY[0x277D85CD0], v3);
  }
}

void __63__SBApplication_Snapshots__saveSuspendSnapshot_forSceneHandle___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) scene];
  v2 = [v3 identifier];
  [v1 _noteSnapshotDidUpdateForSceneIdentifier:v2];
}

- (void)createDownscaledVariantForSnapshot:(id)a3 sceneHandle:(id)a4 scaleFactor:(double)a5 didSaveImage:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [v11 variantID];
  v15 = [v14 isEqualToString:@"downscaled"];

  if (v15)
  {
    [SBApplication(Snapshots) createDownscaledVariantForSnapshot:a2 sceneHandle:self scaleFactor:? didSaveImage:?];
  }

  v16 = [(SBApplication *)self _snapshotManifest];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __100__SBApplication_Snapshots__createDownscaledVariantForSnapshot_sceneHandle_scaleFactor_didSaveImage___block_invoke;
  v21[3] = &unk_2783AA4F8;
  v22 = v11;
  v23 = v12;
  v26 = a5;
  v24 = v16;
  v25 = v13;
  v17 = v13;
  v18 = v16;
  v19 = v12;
  v20 = v11;
  [v18 beginSnapshotAccessTransaction:v21 completion:0];
}

void __100__SBApplication_Snapshots__createDownscaledVariantForSnapshot_sceneHandle_scaleFactor_didSaveImage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 referenceSize];
  SBRectWithSize();
  [v2 setContentFrame:?];
  v3 = [*(a1 + 32) variantWithIdentifier:@"downscaled"];

  if (v3)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }

  else
  {
    v6 = objc_alloc_init(SBSnapshotDataProviderContext);
    -[XBSnapshotDataProviderContext setOpaque:](v6, "setOpaque:", [*(a1 + 32) isImageOpaque]);
    [*(a1 + 32) imageScale];
    [(XBSnapshotDataProviderContext *)v6 setScale:?];
    v7 = [*(a1 + 40) sceneIdentifier];
    [(SBSnapshotDataProviderContext *)v6 setSceneID:v7];

    v8 = [*(a1 + 32) imageForInterfaceOrientation:0];
    v9 = [*(a1 + 48) createVariantForSnapshot:*(a1 + 32) withIdentifier:@"downscaled"];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = [[SBUIImageDataProvider alloc] initWithImage:v8 context:v6 scaleFactor:*(a1 + 64)];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __100__SBApplication_Snapshots__createDownscaledVariantForSnapshot_sceneHandle_scaleFactor_didSaveImage___block_invoke_2;
      v14[3] = &unk_2783A9C70;
      v12 = *(a1 + 48);
      v15 = *(a1 + 56);
      [v12 generateImageForSnapshot:v10 dataProvider:v11 writeToFile:1 imageGeneratedHandler:0 imageDataSavedHandler:v14];
    }

    else
    {
      v13 = *(a1 + 56);
      if (v13)
      {
        (*(v13 + 16))(v13, 0);
      }
    }
  }
}

uint64_t __100__SBApplication_Snapshots__createDownscaledVariantForSnapshot_sceneHandle_scaleFactor_didSaveImage___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteAllSnapshots
{
  v3 = [(SBApplication *)self _snapshotManifest];
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SBApplication_Snapshots__deleteAllSnapshots__block_invoke;
  v5[3] = &unk_2783A8C18;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SBApplication_Snapshots__deleteAllSnapshots__block_invoke_3;
  v4[3] = &unk_2783A8C18;
  [v3 beginSnapshotAccessTransaction:v5 completion:v4];
}

void __46__SBApplication_Snapshots__deleteAllSnapshots__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _snapshotManifest];
  [v1 deleteSnapshotsUsingPredicateBuilder:&__block_literal_global_61];
}

void __46__SBApplication_Snapshots__deleteAllSnapshots__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SBApplication_Snapshots__deleteAllSnapshots__block_invoke_4;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)deleteSnapshotForContext:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_21ED4E000, "XBInvalidate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v5, &state);

  v6 = [v4 sceneID];
  [v4 scale];
  if (!v6 || v7 == 0.0)
  {
    v9 = XBLogFileManifest();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBApplication(Snapshots) deleteSnapshotForContext:];
    }
  }

  else
  {
    v8 = [(SBApplication *)self _snapshotManifest];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__SBApplication_Snapshots__deleteSnapshotForContext___block_invoke;
    v12[3] = &unk_2783A92D8;
    v12[4] = self;
    v13 = v4;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__SBApplication_Snapshots__deleteSnapshotForContext___block_invoke_3;
    v10[3] = &unk_2783A92D8;
    v10[4] = self;
    v11 = v6;
    [v8 beginSnapshotAccessTransaction:v12 completion:v10];
  }

  os_activity_scope_leave(&state);
}

void __53__SBApplication_Snapshots__deleteSnapshotForContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _snapshotManifest];
  v3 = [*(a1 + 40) sceneID];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__SBApplication_Snapshots__deleteSnapshotForContext___block_invoke_2;
  v4[3] = &unk_2783AA520;
  v5 = *(a1 + 40);
  [v2 deleteSnapshotsForGroupID:v3 predicateBuilder:v4];
}

void __53__SBApplication_Snapshots__deleteSnapshotForContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D65680];
  v4 = *(a1 + 32);
  v9 = a2;
  v5 = [v4 name];
  v6 = [v3 normalizeSnapshotName:v5];
  [v9 setName:v6];

  [v9 setContentTypeMask:1];
  [*(a1 + 32) frame];
  [v9 setReferenceSize:{v7, v8}];
  [*(a1 + 32) scale];
  [v9 setImageScale:?];
}

void __53__SBApplication_Snapshots__deleteSnapshotForContext___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__SBApplication_Snapshots__deleteSnapshotForContext___block_invoke_4;
  v2[3] = &unk_2783A92D8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

- (void)manifest:(id)a3 didPurgeProtectedContentSnapshotsWithGroupIdentifiers:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__SBApplication_Snapshots__manifest_didPurgeProtectedContentSnapshotsWithGroupIdentifiers___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)_xbactivity_saveSnapshotForSceneHandle:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 sceneIfExists];
  if (v11)
  {
    v12 = [v8 sceneIdentifier];
    v13 = [v9 name];
    [v9 scale];
    v15 = v14;
    [v9 frame];
    if (!v12 || (v20 = MEMORY[0x277CBF3A0], CGRectEqualToRect(*&v16, *MEMORY[0x277CBF3A0])))
    {
      v21 = XBLogCapture();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SBApplication(Snapshots) _xbactivity_saveSnapshotForSceneHandle:context:completion:];
      }

LABEL_6:

      if (v10)
      {
        v10[2](v10, 1);
      }

      goto LABEL_8;
    }

    if (!v9)
    {
      v21 = XBLogCapture();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SBApplication(Snapshots) _xbactivity_saveSnapshotForSceneHandle:context:completion:];
      }

      goto LABEL_6;
    }

    v22 = [v9 sceneID];
    v23 = [v12 isEqualToString:v22];

    if ((v23 & 1) == 0)
    {
      v21 = XBLogCapture();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SBApplication(Snapshots) _xbactivity_saveSnapshotForSceneHandle:v12 context:v9 completion:v21];
      }

      goto LABEL_6;
    }

    v24 = [v11 uiPresentationManager];
    if (v24)
    {
      if (v15 <= 0.0)
      {
        v31 = XBLogCapture();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [SBApplication(Snapshots) _xbactivity_saveSnapshotForSceneHandle:context:completion:];
        }

        if (v10)
        {
          v10[2](v10, 1);
        }

        goto LABEL_37;
      }

      if ([v11 isActive])
      {
        v53 = v24;
        v100 = 0;
        v101 = &v100;
        v102 = 0x3032000000;
        v103 = __Block_byref_object_copy__1;
        v104 = __Block_byref_object_dispose__1;
        v105 = 0;
        v95 = 0;
        v96 = &v95;
        v97 = 0x3010000000;
        v98 = &unk_21F9DA6A3;
        v99 = *MEMORY[0x277CBF3A8];
        v89 = 0;
        v90 = &v89;
        v91 = 0x4010000000;
        v92 = &unk_21F9DA6A3;
        v25 = v20[1];
        v93 = *v20;
        v94 = v25;
        v56 = [v11 uiClientSettings];
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke;
        v81[3] = &unk_2783AA548;
        v82 = v9;
        v83 = v11;
        v84 = self;
        v86 = &v100;
        v87 = &v95;
        v88 = &v89;
        v58 = v8;
        v85 = v58;
        v26 = [v83 prepareSnapshotWithConfigurator:v81];
        [v101[5] interfaceOrientation];
        v27 = XBInterfaceOrientationMaskForInterfaceOrientationPair();
        v51 = [MEMORY[0x277CBEAA8] date];
        v60 = [(SBApplication *)self _snapshotManifest];
        v28 = [MEMORY[0x277D656A0] predicate];
        [v28 setContentTypeMask:1];
        [v28 setReferenceSize:{v96[4], v96[5]}];
        [v28 setInterfaceOrientationMask:v27];
        v29 = [MEMORY[0x277D65680] normalizeSnapshotName:v13];
        [v28 setName:v29];
        v61 = v28;

        [v28 setUserInterfaceStyle:XBGetUIUserInterfaceStyleForSceneSnapshot(v26)];
        v54 = XBGetCustomSafeAreaInsetsForSceneSnapshot(v26);
        if (__sb__runningInSpringBoard())
        {
          if (SBFEffectiveDeviceClass() != 2)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v32 = [MEMORY[0x277D75418] currentDevice];
          v33 = [v32 userInterfaceIdiom];

          if (v33 != 1)
          {
LABEL_36:
            v49 = [v60 snapshotsForGroupID:v12 matchingPredicate:v61];
            v34 = [v60 createSnapshotForSceneSnapshot:v26 withName:v13 uiClientSettings:v56];
            [v34 setReferenceSize:{v96[4], v96[5]}];
            [v34 setContentFrame:{v90[4], v90[5], v90[6], v90[7]}];
            v55 = v34;
            [(SBApplication *)self _windowSceneFromApplicationSceneHandle:v58];
            v48 = v62 = v26;
            v35 = [v48 switcherController];
            [v35 scaleForDownscaledSnapshotGenerationForSceneHandle:v58];
            v37 = v36;

            v38 = [[SBSceneSnapshotDataProvider alloc] initWithSceneSnapshot:v26 scaleFactor:1.0];
            v39 = [[SBSceneSnapshotDataProvider alloc] initWithSceneSnapshot:v62 scaleFactor:v37];
            v40 = [(SBSceneSnapshotDataProvider *)v38 fallbackSnapshotDataProvider];
            v46 = [(SBSceneSnapshotDataProvider *)v39 fallbackSnapshotDataProvider];
            queue = dispatch_get_global_queue(21, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_2;
            block[3] = &unk_2783AA5E8;
            v65 = v60;
            v66 = v55;
            v67 = v40;
            v68 = v62;
            v69 = v13;
            v70 = v56;
            v79 = &v95;
            v80 = &v89;
            v71 = v46;
            v72 = v39;
            v73 = v38;
            v74 = self;
            v75 = v49;
            v76 = v12;
            v77 = v51;
            v78 = v10;
            v52 = v51;
            v50 = v49;
            v59 = v38;
            v45 = v39;
            v47 = v46;
            v57 = v56;
            v63 = v62;
            v41 = v40;
            v42 = v55;
            v43 = v60;
            dispatch_async(queue, block);

            _Block_object_dispose(&v89, 8);
            _Block_object_dispose(&v95, 8);
            _Block_object_dispose(&v100, 8);

            v24 = v53;
LABEL_37:

LABEL_8:
            goto LABEL_11;
          }
        }

        [v61 setCustomSafeAreaInsets:v54];
        goto LABEL_36;
      }

      v30 = XBLogCapture();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [SBApplication(Snapshots) _xbactivity_saveSnapshotForSceneHandle:v11 context:v30 completion:?];
      }
    }

    else
    {
      v30 = XBLogCapture();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [SBApplication(Snapshots) _xbactivity_saveSnapshotForSceneHandle:context:completion:];
      }
    }

    if (v10)
    {
      v10[2](v10, 4);
    }

    goto LABEL_37;
  }

  if (v10)
  {
    v10[2](v10, 3);
  }

LABEL_11:
}

void __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v45 = a2;
  [v45 applyContext:*(a1 + 32)];
  v3 = [SBApp windowSceneManager];
  v4 = [v3 embeddedDisplayWindowScene];
  v5 = [v4 _fbsDisplayConfiguration];

  v6 = [*(a1 + 40) settings];
  v7 = [v6 displayConfiguration];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;

  v11 = [v45 settings];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if ([*(a1 + 48) isClassic])
  {
    v14 = [v10 isMainRootDisplay];
  }

  else
  {
    v14 = 0;
  }

  [*(*(*(a1 + 64) + 8) + 40) frame];
  if (v14)
  {
    [*(a1 + 48) defaultLaunchingSizeForDisplayConfiguration:v10];
    v15 = v17;
    v16 = v18;
  }

  v19 = *(*(a1 + 72) + 8);
  *(v19 + 32) = v15;
  *(v19 + 40) = v16;
  [v45 frame];
  v20 = *(*(a1 + 80) + 8);
  v20[4] = v21;
  v20[5] = v22;
  v20[6] = v23;
  v20[7] = v24;
  if (v14)
  {
    [v10 bounds];
    v26 = v25;
    v28 = v27;
    BSRectWithSize();
    v30 = v29;
    v32 = v31;
    v33 = *(*(a1 + 72) + 8);
    v34 = (v26 - *(v33 + 32)) * 0.5;
    v35 = (v28 - *(v33 + 40)) * 0.5;
    [v45 setFrame:{v34, v35}];
    v36 = *(*(a1 + 80) + 8);
    v36[4] = v34;
    v36[5] = v35;
    v36[6] = v30;
    v36[7] = v32;
    if ([*(a1 + 48) classicAppRequiresHiDPI])
    {
      UIRectGetCenter();
      v37 = *(*(a1 + 80) + 8);
      v37[1].size.width = round(CGRectGetWidth(v37[1]) * 0.5);
      v38 = *(*(a1 + 80) + 8);
      v38[1].size.height = round(CGRectGetHeight(v38[1]) * 0.5);
      UIRectCenteredAboutPoint();
      v39 = *(*(a1 + 80) + 8);
      v39[4] = v40;
      v39[5] = v41;
      v39[6] = v42;
      v39[7] = v43;
    }

    v47.origin.x = v34;
    v47.origin.y = v35;
    v47.size.width = v30;
    v47.size.height = v32;
    *(*(*(a1 + 80) + 8) + 32) = *(*(*(a1 + 80) + 8) + 32) - CGRectGetMinX(v47);
    v48.origin.x = v34;
    v48.origin.y = v35;
    v48.size.width = v30;
    v48.size.height = v32;
    *(*(*(a1 + 80) + 8) + 40) = *(*(*(a1 + 80) + 8) + 40) - CGRectGetMinY(v48);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = [*(a1 + 56) isTranslucent] ^ 1;
  }

  else
  {
    v44 = 1;
  }

  [v45 setOpaque:v44];
}

void __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_2(uint64_t a1)
{
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_3;
  v26[3] = &unk_2783AA5C0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v27 = v8;
  v28 = v7;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v34 = *(a1 + 144);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v29 = v14;
  v30 = v13;
  *&v15 = *(a1 + 96);
  *(&v15 + 1) = *(a1 + 104);
  v21 = v15;
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  v31 = v21;
  v32 = v18;
  v33 = *(a1 + 136);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_67;
  v22[3] = &unk_2783A8ED8;
  v23 = *(a1 + 120);
  v19 = *(a1 + 128);
  v20 = *(a1 + 104);
  v24 = v19;
  v25 = v20;
  [v2 beginSnapshotAccessTransaction:v26 completion:v22];
}

void __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_3(uint64_t a1)
{
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_4;
  v27[3] = &unk_2783AA570;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v28 = v7;
  v29 = v6;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v32 = *(a1 + 136);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v30 = v13;
  v31 = v12;
  v14 = MEMORY[0x223D6F7F0](v27);
  v15 = *(a1 + 48);
  v16 = *(a1 + 32);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_5;
  v21[3] = &unk_2783AA598;
  v18 = *(a1 + 96);
  v17 = *(a1 + 104);
  v19 = *(a1 + 112);
  v25 = v14;
  v21[4] = v17;
  v22 = v19;
  v23 = *(a1 + 48);
  v24 = *(a1 + 120);
  v26 = *(a1 + 128);
  v20 = v14;
  [v15 generateImageForSnapshot:v16 dataProvider:v18 writeToFile:1 imageGeneratedHandler:v21 imageDataSavedHandler:0];
}

void __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) hasProtectedContent] && *(a1 + 40))
  {
    v2 = [*(a1 + 48) createSnapshotForSceneSnapshot:*(a1 + 56) withName:*(a1 + 64) uiClientSettings:*(a1 + 72)];
    v3 = v2;
    if (v2)
    {
      v5 = v2;
      [v2 setReferenceSize:{*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40)}];
      [v5 setContentFrame:{*(*(*(a1 + 104) + 8) + 32), *(*(*(a1 + 104) + 8) + 40), *(*(*(a1 + 104) + 8) + 48), *(*(*(a1 + 104) + 8) + 56)}];
      [*(a1 + 48) generateImageForSnapshot:v5 dataProvider:*(a1 + 40) writeToFile:1 imageGeneratedHandler:0 imageDataSavedHandler:0];
      if (*(a1 + 80))
      {
        v4 = [*(a1 + 48) createVariantForSnapshot:v5 withIdentifier:@"downscaled"];
        if (v4)
        {
          [*(a1 + 48) generateImageForSnapshot:v4 dataProvider:*(a1 + 80) writeToFile:1 imageGeneratedHandler:0 imageDataSavedHandler:0];
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (!*(a1 + 88))
    {
      return;
    }

    v3 = [*(a1 + 48) createVariantForSnapshot:*(a1 + 32) withIdentifier:@"downscaled"];
    if (v3)
    {
      v5 = v3;
      [*(a1 + 48) generateImageForSnapshot:v3 dataProvider:*(a1 + 88) writeToFile:1 imageGeneratedHandler:0 imageDataSavedHandler:0];
LABEL_11:
      v3 = v5;
    }
  }
}

uint64_t __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_5(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    (*(*(a1 + 64) + 16))();
    v4 = XBLogFileManifest();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) bundleIdentifier];
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] START liquidating the old, as snapshot generation succeeded", buf, 0xCu);
    }

    v6 = XBLogFileManifest();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) bundleIdentifier];
      v8 = *(a1 + 40);
      *buf = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] deleting old snapshots: %{public}@", buf, 0x16u);
    }

    [*(a1 + 48) deleteSnapshots:*(a1 + 40)];
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_66;
    v15[3] = &unk_2783AA520;
    v15[4] = *(a1 + 32);
    [v9 deleteSnapshotsForGroupID:v10 predicateBuilder:v15];
    v11 = XBLogFileManifest();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) bundleIdentifier];
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] STOP liquidating the old", buf, 0xCu);
    }
  }

  result = *(a1 + 72);
  if (result)
  {
    if (a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4;
    }

    return (*(result + 16))(result, v14);
  }

  return result;
}

void __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_66(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setName:@"SBSuspendSnapshot"];
  [v3 setContentTypeMask:1];
  v4 = XBLogFileManifest();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) bundleIdentifier];
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] deleting old suspend snapshots using predicate: %{public}@", &v6, 0x16u);
  }
}

void __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_67(uint64_t a1)
{
  v2 = XBLogFileManifest();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_67_cold_1(a1, v2);
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_68;
  v3[3] = &unk_2783A92D8;
  v3[4] = *(a1 + 48);
  v4 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)_noteSnapshotDidUpdateForSceneIdentifiers:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        ++self->_appSnapshotSequenceID;
        [SBApplication __noteSnapshotDidUpdate:"__noteSnapshotDidUpdate:forSceneIdentifier:" forSceneIdentifier:?];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)__noteSnapshotDidUpdate:(int64_t)a3 forSceneIdentifier:(id)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAB98];
  v8 = a4;
  v9 = [v7 defaultCenter];
  if (a4)
  {
    v18[0] = @"SBApplicationSnapshotChangedSequenceUserInfoKey";
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v18[1] = @"SBApplicationSnapshotChangedSceneIdentifierUserInfoKey";
    v19[0] = v10;
    v19[1] = v8;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v19;
    v13 = v18;
    v14 = 2;
  }

  else
  {
    v16 = @"SBApplicationSnapshotChangedSequenceUserInfoKey";
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v17 = v10;
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v17;
    v13 = &v16;
    v14 = 1;
  }

  v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];

  [v9 postNotificationName:@"SBApplicationSnapshotChangedNotification" object:self userInfo:v15];
}

- (CGRect)snapshotFrameForClassicInsideBounds:(CGRect)a3 forOrientation:(int64_t)a4 scaleFactor:(CGSize *)a5 inReferenceSpace:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = 1.0;
  v14 = 1.0;
  if ([(SBApplication *)self isClassic])
  {
    rect_8 = y;
    rect_24 = height;
    v16 = [(SBApplication *)self classicAppScaled];
    v17 = [MEMORY[0x277D0AA90] mainConfiguration];
    [(SBApplication *)self defaultLaunchingSizeForDisplayConfiguration:v17];
    BSRectWithSize();
    v19 = v18;
    rect_16 = v20;
    v22 = v21;
    v24 = v23;

    rect = x;
    if ([(SBApplication *)self classicAppPhoneAppRunningOnPad])
    {
      v25 = [(SBApplication *)self classicAppZoomedInOrRequiresHiDPI];
      v26 = 1.0;
      v27 = 1.0;
      if (v25)
      {
        v27 = SBClassicUtilitiesScaleFactorForPhoneAppZoomedIn(a4, v22, v24);
        v26 = v27;
      }
    }

    else
    {
      v26 = 1.0;
      v27 = 1.0;
      if (v16)
      {
        v28 = v19;
        if ([(SBApplication *)self classicAppFullScreen:1.0])
        {
          v29 = ![(SBApplication *)self classicAppWithRoundedCorners];
        }

        else
        {
          v29 = 1;
        }

        v67.origin.x = x;
        v67.origin.y = rect_8;
        v67.size.width = width;
        v67.size.height = rect_24;
        v30 = CGRectGetHeight(v67);
        v68.origin.x = v19;
        v68.origin.y = rect_16;
        v68.size.width = v22;
        v68.size.height = v24;
        v60 = v30 / CGRectGetHeight(v68);
        v69.origin.x = rect;
        v69.origin.y = rect_8;
        v69.size.width = width;
        v69.size.height = rect_24;
        v31 = CGRectGetWidth(v69);
        v70.origin.x = v28;
        v70.origin.y = rect_16;
        v70.size.width = v22;
        v70.size.height = v24;
        v27 = v31 / CGRectGetWidth(v70);
        if (v29)
        {
          v26 = v60;
          v19 = v28;
          if (v27 <= v60)
          {
            v26 = v27;
          }

          v27 = v26;
        }

        else
        {
          v26 = v60;
          v19 = v28;
        }
      }
    }

    v62 = width;
    v32 = a4 - 3;
    if (v6)
    {
      v33 = v24;
    }

    else
    {
      v33 = v22;
    }

    if (v6)
    {
      v34 = v22;
    }

    else
    {
      v34 = v24;
    }

    if (v32 >= 2)
    {
      v35 = v24;
    }

    else
    {
      v35 = v33;
    }

    if (v32 >= 2)
    {
      v36 = v22;
    }

    else
    {
      v36 = v34;
    }

    v37 = v26;
    v38 = v27;
    v59 = v27;
    v61 = v26;
    if (BSSizeEqualToSize())
    {
      goto LABEL_37;
    }

    v71.origin.x = v19;
    v71.origin.y = rect_16;
    v71.size.width = v36;
    v71.size.height = v35;
    v39 = round(v38 * CGRectGetWidth(v71));
    v72.origin.x = v19;
    v72.origin.y = rect_16;
    v72.size.width = v39;
    v72.size.height = v35;
    v40 = round(v37 * CGRectGetHeight(v72));
    v73.origin.x = rect;
    v73.origin.y = rect_8;
    v73.size.width = v62;
    v73.size.height = rect_24;
    v57 = CGRectGetWidth(v73);
    v74.origin.x = v19;
    v74.origin.y = rect_16;
    v74.size.width = v39;
    v74.size.height = v40;
    v58 = v57 - CGRectGetWidth(v74);
    v75.origin.x = rect;
    v75.origin.y = rect_8;
    v75.size.width = v62;
    v75.size.height = rect_24;
    v41 = CGRectGetHeight(v75);
    v76.origin.x = v19;
    v76.origin.y = rect_16;
    v76.size.width = v39;
    v76.size.height = v40;
    v42 = CGRectGetHeight(v76);
    if (v58 > 1.0 || v58 <= 0.0)
    {
      v43 = v41 - v42;
      if (v43 > 1.0 || v43 <= 0.0)
      {
        if (![(SBApplication *)self classicAppFullScreen])
        {
          goto LABEL_37;
        }

        v47 = rect_24;
        if (![(SBApplication *)self classicAppWithRoundedCorners])
        {
          goto LABEL_37;
        }

        v78.origin.x = rect;
        v78.origin.y = rect_8;
        v78.size.width = v62;
        v78.size.height = rect_24;
        CGRectGetWidth(v78);
        v44 = rect;
        v45 = rect_8;
        v46 = v62;
      }

      else
      {
        v44 = rect;
        v45 = rect_8;
        v46 = v62;
        v47 = rect_24;
      }

      v48 = v47;
      CGRectGetHeight(*&v44);
    }

    else
    {
      v77.origin.x = rect;
      v77.origin.y = rect_8;
      v77.size.width = v62;
      v77.size.height = rect_24;
      CGRectGetWidth(v77);
    }

LABEL_37:
    UIRectCenteredIntegralRect();
    x = v49;
    y = v50;
    width = v51;
    height = v52;
    v15 = v59;
    v14 = v61;
  }

  if (a5)
  {
    a5->width = v15;
    a5->height = v14;
  }

  v53 = x;
  v54 = y;
  v55 = width;
  v56 = height;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

- (CGSize)snapshotSizeAdjustedForLegacyStatusBarBasedOnSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 contentFrame:(CGRect *)a5
{
  height = a3.height;
  width = a3.width;
  BSRectWithSize();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(SBApplication *)self info];
  v19 = [v18 isStatusBarLegacy];

  if (!v19)
  {
    goto LABEL_20;
  }

  if ((a4 - 1) <= 1)
  {
    v20 = *MEMORY[0x277D66090];
    if (width != *MEMORY[0x277D66090] || (v21 = *(MEMORY[0x277D66090] + 8), height != v21 - *MEMORY[0x277D76F08]))
    {
      v20 = *MEMORY[0x277CBF3A8];
      v21 = *(MEMORY[0x277CBF3A8] + 8);
      if (width == *MEMORY[0x277D66088])
      {
        v20 = *MEMORY[0x277CBF3A8];
        v21 = *(MEMORY[0x277CBF3A8] + 8);
        if (height == *(MEMORY[0x277D66088] + 8) - *MEMORY[0x277D76F08])
        {
          v20 = *MEMORY[0x277D66088];
          v21 = *(MEMORY[0x277D66088] + 8);
        }
      }
    }

    if (v20 != *MEMORY[0x277CBF3A8] || v21 != *(MEMORY[0x277CBF3A8] + 8))
    {
      if (a4 == 1)
      {
        v13 = v13 + *MEMORY[0x277D76F08];
      }

      goto LABEL_21;
    }

LABEL_20:
    v21 = height;
    v20 = width;
    width = v15;
    height = v17;
    goto LABEL_21;
  }

  if ((a4 - 3) > 1)
  {
    goto LABEL_20;
  }

  v21 = *(MEMORY[0x277D66088] + 8);
  if (height != v21)
  {
    goto LABEL_20;
  }

  v20 = *MEMORY[0x277D66088];
  if (width != *MEMORY[0x277D66088] - *MEMORY[0x277D76F08])
  {
    goto LABEL_20;
  }

  if (a4 == 4)
  {
    v11 = v11 + *MEMORY[0x277D76F08];
  }

LABEL_21:
  if (a5)
  {
    a5->origin.x = v11;
    a5->origin.y = v13;
    a5->size.width = width;
    a5->size.height = height;
  }

  result.height = v21;
  result.width = v20;
  return result;
}

- (id)_windowSceneFromApplicationSceneHandle:(id)a3
{
  v3 = SBApp;
  v4 = a3;
  v5 = [v3 windowSceneManager];
  v6 = [v4 displayIdentity];

  v7 = [v5 windowSceneForDisplayIdentity:v6];

  return v7;
}

- (SBApplication)initWithApplicationInfo:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBApplication *)a2 initWithApplicationInfo:?];
  }

  v16.receiver = self;
  v16.super_class = SBApplication;
  v7 = [(SBApplication *)&v16 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_appInfo, a3);
    v9 = [v6 bundleIdentifier];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v11 = [MEMORY[0x277D0AC98] storeForApplication:v8->_bundleIdentifier];
    dataStore = v8->_dataStore;
    v8->_dataStore = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedLastWindowLayoutAttributesPerDisplayOrdinal = v8->_cachedLastWindowLayoutAttributesPerDisplayOrdinal;
    v8->_cachedLastWindowLayoutAttributesPerDisplayOrdinal = v13;

    v8->_appSnapshotSequenceID = 0;
    v8->_defaultClassicModeOverride = -1;
    v8->_currentClassicMode = -1;
    [(SBApplication *)v8 _updateRecentlyUpdatedTimer];
    v8->_applicationRestorationCheckState = 0;
    v8->_supportedTypes = [(SBApplicationInfo *)v8->_appInfo supportedTypes];
    [(SBApplication *)v8 refreshLaunchImagesInSnapshotManifestIfNeeded];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(SBApplicationWakeScheduler *)self->_legacyVOIPPeriodicWakeScheduler invalidate];
  v4.receiver = self;
  v4.super_class = SBApplication;
  [(SBApplication *)&v4 dealloc];
}

- (BOOL)isSameExecutableAsApplication:(id)a3
{
  v4 = [a3 bundleIdentifier];
  if (v4)
  {
    v5 = [(SBApplication *)self bundleIdentifier];
    v6 = [v5 isEqualToString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUninstalled:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_uninstalled)
  {
    objc_sync_exit(obj);
    v3 = obj;
  }

  else
  {
    obj->_uninstalled = 1;
    [(SBApplicationWakeScheduler *)obj->_legacyVOIPPeriodicWakeScheduler invalidate];
    synchronized_snapshotManifest = obj->_synchronized_snapshotManifest;
    obj->_synchronized_snapshotManifest = 0;

    objc_sync_exit(obj);
    v5 = [MEMORY[0x277CCAB98] sbh_leafIconDataSourceNotificationCenter];
    [(SBApplication *)v5 postNotificationName:*MEMORY[0x277D66738] object:obj];
    v3 = v5;
  }
}

- (void)setDynamicApplicationShortcutItems:(id)a3
{
  v4 = a3;
  v6 = +[SBApplicationShortcutStoreManager sharedManager];
  v5 = [(SBApplication *)self bundleIdentifier];
  [v6 setApplicationShortcutItems:v4 forBundleIdentifier:v5 withVersion:{-[SBApplicationInfo dynamicApplicationShortcutItemsVersion](self->_appInfo, "dynamicApplicationShortcutItemsVersion")}];
}

- (SBApplicationWakeScheduler)legacyVOIPPeriodicWakeScheduler
{
  if (!self->_legacyVOIPPeriodicWakeScheduler && [(SBApplicationInfo *)self->_appInfo supportsLegacyVOIPBackgroundMode])
  {
    v3 = [SBApplicationWakeSchedulerFactory newLegacyVOIPPeriodicWakeSchedulerForApplication:self];
    legacyVOIPPeriodicWakeScheduler = self->_legacyVOIPPeriodicWakeScheduler;
    self->_legacyVOIPPeriodicWakeScheduler = v3;
  }

  v5 = self->_legacyVOIPPeriodicWakeScheduler;

  return v5;
}

- (void)setShowsProgress:(BOOL)a3
{
  v5 = [(SBApplication *)self showsProgress];
  showsProgressCount = self->_showsProgressCount;
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    if (showsProgressCount < 1)
    {
      goto LABEL_6;
    }

    v7 = -1;
  }

  self->_showsProgressCount = showsProgressCount + v7;
LABEL_6:
  if (v5 != [(SBApplication *)self showsProgress])
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"SBApplicationShowsProgressChangedNotification" object:self userInfo:0];
  }
}

- (BOOL)wantsAutoLaunchForVOIP
{
  v3 = [(SBApplicationInfo *)self->_appInfo supportsLegacyVOIPBackgroundMode];
  if (v3)
  {
    v4 = [(FBSApplicationDataStore *)self->_dataStore safeObjectForKey:@"SBApplicationAutoLaunchForVoIP" ofType:objc_opt_class()];
    v5 = [v4 BOOLValue];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)setWantsAutoLaunchForVOIP:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  if ([(SBApplicationInfo *)self->_appInfo supportsLegacyVOIPBackgroundMode])
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = self->_bundleIdentifier;
      v9 = 138543618;
      v10 = bundleIdentifier;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Application %{public}@ wants auto-launch for VoIP: %{BOOL}u", &v9, 0x12u);
    }

    dataStore = self->_dataStore;
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [(FBSApplicationDataStore *)dataStore setObject:v8 forKey:@"SBApplicationAutoLaunchForVoIP"];
  }
}

- (void)setPlayingAudio:(BOOL)a3
{
  if (self->_isPlayingAudio != a3)
  {
    self->_isPlayingAudio = a3;
    [(FBApplicationProcess *)self->_process setNowPlayingWithAudio:?];
  }
}

- (void)setNowRecordingApplication:(BOOL)a3
{
  if (self->_isNowRecordingApplication != a3)
  {
    self->_isNowRecordingApplication = a3;
    [(FBApplicationProcess *)self->_process setRecordingAudio:?];
  }
}

- (void)setConnectedToExternalAccessory:(BOOL)a3
{
  if (self->_isConnectedToExternalAccessory != a3)
  {
    self->_isConnectedToExternalAccessory = a3;
    [(FBApplicationProcess *)self->_process setConnectedToExternalAccessory:?];
  }
}

- (void)setUsesEdgeNetwork:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBApplication *)self dataUsage];
  if ((v5 & 1) != v3)
  {

    [(SBApplication *)self _setDataUsage:v5 & 0xFFFFFFFE | v3];
  }
}

- (void)setUsesWiFiNetwork:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBApplication *)self dataUsage];
  if ((v5 & 2) != v3)
  {
    if (v3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [(SBApplication *)self _setDataUsage:v5 & 0xFFFFFFFD | v6];
  }
}

- (BOOL)suppressesControlCenter
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  if ([v3 isControlCenterAllowed])
  {
    v4 = [MEMORY[0x277D262A0] sharedConnection];
    if ([v4 isControlCenterAllowedInApps])
    {
      v5 = [(SBApplicationInfo *)self->_appInfo disallowsControlCenter];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)supportsMultitaskingShelf
{
  if ([(SBApplication *)self isAppClip])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(SBApplication *)self info];
    if ([v4 supportsMultiwindow])
    {
      v5 = [(SBApplication *)self bundleIdentifier];
      v3 = [v5 isEqualToString:@"com.apple.InCallService"] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)lastWindowLayoutAttributesForDisplayOrdinal:(int64_t)a3
{
  v4 = SBStringFromDisplayOrdinal(a3);
  v5 = [(NSMutableDictionary *)self->_cachedLastWindowLayoutAttributesPerDisplayOrdinal objectForKey:v4];
  if (v5)
  {
    goto LABEL_8;
  }

  v6 = [(FBSApplicationDataStore *)self->_dataStore safeObjectForKey:@"SBApplicationLastWindowSizePerDisplayOrdinalKey" ofType:objc_opt_class()];
  v7 = [v6 objectForKey:v4];
  if (!v7)
  {
    cachedLastWindowLayoutAttributesPerDisplayOrdinal = self->_cachedLastWindowLayoutAttributesPerDisplayOrdinal;
    goto LABEL_6;
  }

  v8 = [[SBDisplayItemLayoutAttributes alloc] initWithPlistRepresentation:v7];
  cachedLastWindowLayoutAttributesPerDisplayOrdinal = self->_cachedLastWindowLayoutAttributesPerDisplayOrdinal;
  if (!v8)
  {
LABEL_6:
    v10 = [MEMORY[0x277CBEB68] null];
    [(NSMutableDictionary *)cachedLastWindowLayoutAttributesPerDisplayOrdinal setObject:v10 forKey:v4];

    v5 = 0;
    goto LABEL_7;
  }

  v5 = v8;
  [(NSMutableDictionary *)cachedLastWindowLayoutAttributesPerDisplayOrdinal setObject:v8 forKey:v4];
LABEL_7:

LABEL_8:
  v11 = [MEMORY[0x277CBEB68] null];
  if (BSEqualObjects())
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;

  return v12;
}

- (void)setLastWindowLayoutAttributes:(id)a3 forDisplayOrdinal:(int64_t)a4
{
  v17 = a3;
  v6 = SBStringFromDisplayOrdinal(a4);
  if (v17)
  {
    v7 = objc_opt_class();
    v8 = [(SBDisplayItemLayoutAttributes *)v17 plistRepresentation];
    v9 = SBSafeCast(v7, v8);

    if (v9)
    {
      v10 = [(FBSApplicationDataStore *)self->_dataStore safeObjectForKey:@"SBApplicationLastWindowSizePerDisplayOrdinalKey" ofType:objc_opt_class()];
      v11 = [v10 mutableCopy];

      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      [v11 setObject:v9 forKey:v6];
      [(FBSApplicationDataStore *)self->_dataStore setObject:v11 forKey:@"SBApplicationLastWindowSizePerDisplayOrdinalKey"];
    }

    [(NSMutableDictionary *)self->_cachedLastWindowLayoutAttributesPerDisplayOrdinal setObject:v17 forKey:v6];
  }

  else
  {
    v12 = [(FBSApplicationDataStore *)self->_dataStore safeObjectForKey:@"SBApplicationLastWindowSizePerDisplayOrdinalKey" ofType:objc_opt_class()];
    v9 = [v12 mutableCopy];

    if (v9)
    {
      [v9 removeObjectForKey:v6];
      v13 = [v9 count];
      dataStore = self->_dataStore;
      if (v13)
      {
        [(FBSApplicationDataStore *)dataStore setObject:v9 forKey:@"SBApplicationLastWindowSizePerDisplayOrdinalKey"];
      }

      else
      {
        [(FBSApplicationDataStore *)dataStore removeObjectForKey:@"SBApplicationLastWindowSizePerDisplayOrdinalKey"];
      }
    }

    cachedLastWindowLayoutAttributesPerDisplayOrdinal = self->_cachedLastWindowLayoutAttributesPerDisplayOrdinal;
    v16 = [MEMORY[0x277CBEB68] null];
    [(NSMutableDictionary *)cachedLastWindowLayoutAttributesPerDisplayOrdinal setObject:v16 forKey:v6];
  }
}

- (void)clearLastWindowLayoutAttributes
{
  v16 = *MEMORY[0x277D85DE8];
  [(FBSApplicationDataStore *)self->_dataStore removeObjectForKey:@"SBApplicationLastWindowSizePerDisplayOrdinalKey"];
  v3 = [(NSMutableDictionary *)self->_cachedLastWindowLayoutAttributesPerDisplayOrdinal allKeys];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        cachedLastWindowLayoutAttributesPerDisplayOrdinal = self->_cachedLastWindowLayoutAttributesPerDisplayOrdinal;
        v10 = [MEMORY[0x277CBEB68] null];
        [(NSMutableDictionary *)cachedLastWindowLayoutAttributesPerDisplayOrdinal setObject:v10 forKey:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)setHasDisplayedLaunchAlert:(BOOL)a3 forType:(unint64_t)a4
{
  displayedLaunchAlerts = self->_displayedLaunchAlerts;
  v5 = displayedLaunchAlerts & ~a4;
  v6 = displayedLaunchAlerts | a4;
  if (!a3)
  {
    v6 = v5;
  }

  self->_displayedLaunchAlerts = v6;
}

- (void)takeBackgroundActivityAttribution:(id)a3
{
  v12 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBApplication takeBackgroundActivityAttribution:];
  }

  v4 = v12;
  if (!self->_backgroundActivityAttributions)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:0 capacity:1];
    backgroundActivityAttributions = self->_backgroundActivityAttributions;
    self->_backgroundActivityAttributions = v5;

    v4 = v12;
  }

  if (!self->_backgroundActivityAttributionsByIdentifier)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
    backgroundActivityAttributionsByIdentifier = self->_backgroundActivityAttributionsByIdentifier;
    self->_backgroundActivityAttributionsByIdentifier = v7;

    v4 = v12;
  }

  if (![(NSHashTable *)self->_backgroundActivityAttributions containsObject:v4])
  {
    [(NSHashTable *)self->_backgroundActivityAttributions addObject:v12];
    v9 = [v12 backgroundActivityIdentifier];
    v10 = *MEMORY[0x277D6BC00];
    if ([v9 isEqualToString:*MEMORY[0x277D6BC00]])
    {
      v11 = [(NSMapTable *)self->_backgroundActivityAttributionsByIdentifier objectForKey:v10];
      if (![v11 count])
      {
        [SBApp addNowLocatingApp:self];
      }
    }

    if ((STUIBackgroundActivityIdentiferRepresentsStyleOverride() & 1) == 0)
    {
      [SBApp addApp:self forBackgroundActivityWithIdentifier:v9];
    }

    SBAddBackgroundActivityAttributionByIdentifier(v12, self->_backgroundActivityAttributionsByIdentifier);
  }
}

- (void)releaseBackgroundActivityAttribution:(id)a3
{
  v10 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBApplication releaseBackgroundActivityAttribution:];
  }

  backgroundActivityAttributions = self->_backgroundActivityAttributions;
  if (backgroundActivityAttributions)
  {
    if ([(NSHashTable *)backgroundActivityAttributions containsObject:v10])
    {
      [(NSHashTable *)self->_backgroundActivityAttributions removeObject:v10];
      SBRemoveBackgroundActivityAttributionByIdentifier(v10, self->_backgroundActivityAttributionsByIdentifier);
      v5 = [v10 backgroundActivityIdentifier];
      v6 = *MEMORY[0x277D6BC00];
      if ([v5 isEqualToString:*MEMORY[0x277D6BC00]])
      {
        v7 = [(NSMapTable *)self->_backgroundActivityAttributionsByIdentifier objectForKey:v6];
        if (![v7 count])
        {
          [SBApp removeNowLocatingApp:self];
        }
      }

      if ((STUIBackgroundActivityIdentiferRepresentsStyleOverride() & 1) == 0)
      {
        [SBApp removeApp:self forBackgroundActivityWithIdentifier:v5];
      }
    }

    if (![(NSHashTable *)self->_backgroundActivityAttributions count])
    {
      v8 = self->_backgroundActivityAttributions;
      self->_backgroundActivityAttributions = 0;
    }

    if (![(NSMapTable *)self->_backgroundActivityAttributionsByIdentifier count])
    {
      backgroundActivityAttributionsByIdentifier = self->_backgroundActivityAttributionsByIdentifier;
      self->_backgroundActivityAttributionsByIdentifier = 0;
    }
  }
}

- (BOOL)hasRegisteredBackgroundActivityWithIdentifier:(id)a3
{
  v3 = [(NSMapTable *)self->_backgroundActivityAttributionsByIdentifier objectForKey:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)shouldReceiveSourceApplicationContextFromOriginatingApplication:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_appInfo;
    if ([(SBApplicationInfo *)v5 isYukonLinked])
    {
      v6 = SBWorkspaceApplicationForIdentifier(v4);
      v7 = [v6 info];

      v8 = [v7 teamIdentifier];
      v9 = [(SBApplicationInfo *)v5 teamIdentifier];
      if ([(SBApplicationInfo *)v5 isSystemApplication]|| [(SBApplicationInfo *)v5 alwaysReceivesOpenURLSource])
      {
        v10 = 1;
      }

      else
      {
        v10 = [v8 isEqualToString:v9];
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)clearNewlyInstalledAndRecentlyUpdatedStatus
{
  [(SBApplication *)self _setNewlyInstalled:0];

  [(SBApplication *)self _setRecentlyUpdated:0];
}

- (void)preHeatForUserLaunchIfNecessaryWithAbsoluteTime:(unint64_t)a3 andContinuousTime:(unint64_t)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = [(SBApplication *)self processState:a3];
  if ([v26 isRunning])
  {
  }

  else
  {
    v5 = [(SBApplicationInfo *)self->_appInfo usesSplashBoard];

    if (v5)
    {
      v6 = [MEMORY[0x277D759A0] mainScreen];
      v7 = [MEMORY[0x277D656A0] predicate];
      [v7 setContentTypeMask:6];
      [v6 _referenceBounds];
      [v7 setReferenceSize:{v8, v9}];
      [v6 scale];
      [v7 setImageScale:?];
      v10 = [SBApp statusBarOrientationForEmbeddedDisplay];
      if ([(SBApplicationInfo *)self->_appInfo supportsInterfaceOrientation:v10])
      {
        v11 = XBInterfaceOrientationMaskForInterfaceOrientationPair();
      }

      else if ((v10 - 1) >= 2)
      {
        v11 = 2;
      }

      else
      {
        v11 = 24;
      }

      [v7 setInterfaceOrientationMask:v11];
      v12 = [(SBApplication *)self _snapshotManifestCreateIfNeeded:0];
      v13 = [v12 defaultGroupIdentifier];
      v14 = [v12 snapshotsForGroupID:v13 matchingPredicate:v7];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v28;
LABEL_13:
        v19 = 0;
        while (1)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * v19);
          v21 = [v20 path];

          if (v21)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v27 objects:v33 count:16];
            if (v17)
            {
              goto LABEL_13;
            }

            goto LABEL_19;
          }
        }

        v22 = v20;

        if (v22)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_19:
      }

      v23 = SBLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = self->_bundleIdentifier;
        *buf = 138412290;
        v32 = bundleIdentifier;
        _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "No default launch images found for %@, pre-warming SplashBoard under the expectation it will be required.", buf, 0xCu);
      }

      v25 = [MEMORY[0x277D656B8] sharedInstance];
      [v25 preheatServiceWithTimeout:2.0];

      v22 = 0;
LABEL_24:
    }
  }
}

- (NSDate)nextWakeDate
{
  v2 = [(SBApplication *)self legacyVOIPPeriodicWakeScheduler];
  v3 = [v2 scheduledDate];

  return v3;
}

- (void)setNextWakeDate:(id)a3
{
  v7 = a3;
  v4 = [(SBApplication *)self info];
  v5 = [v4 supportsLegacyVOIPBackgroundMode];

  if (v5)
  {
    v6 = [(SBApplication *)self legacyVOIPPeriodicWakeScheduler];
    [v6 scheduleWakeForDate:v7];
  }
}

- (void)setUsesBackgroundNetwork:(BOOL)a3
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    if (!*(self + 43))
    {
      goto LABEL_6;
    }

    v4 = -1;
  }

  *(self + 43) += v4;
LABEL_6:
  v5 = [(SBApplication *)self dataUsage];
  if ((v5 & 8) != (*(self + 43) != 0))
  {
    v6 = v5 & 0xFFFFFFF7 | (8 * (*(self + 43) != 0));

    [(SBApplication *)self _setDataUsage:v6];
  }
}

- (void)setBadgeValue:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (!v4 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4 = v10, (isKindOfClass & 1) != 0) || (objc_opt_class(), v6 = objc_opt_isKindOfClass(), v4 = v10, (v6 & 1) != 0))
  {
    if ([v4 isEqual:&unk_28336FCF8])
    {

      v10 = 0;
    }

    v7 = [(SBApplication *)self badgeValue];
    if (([v7 isEqual:v10] & 1) == 0)
    {
      dataStore = self->_dataStore;
      if (v10)
      {
        [(FBSApplicationDataStore *)dataStore setObject:v10 forKey:@"SBApplicationBadgeKey"];
        v9 = 1;
      }

      else
      {
        [(FBSApplicationDataStore *)dataStore removeObjectForKey:@"SBApplicationBadgeKey"];
        v9 = 2;
      }

      *(self + 83) = *(self + 83) & 0xF8 | v9;
      [(SBApplication *)self _noteIconDataSourceDidChange];
    }
  }
}

- (id)_sceneIdentifierForStoredPersistenceIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v5 = [(SBApplication *)self _dataStore];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SBApplication__sceneIdentifierForStoredPersistenceIdentifier___block_invoke;
  v9[3] = &unk_2783ABB00;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateSceneStoresUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __64__SBApplication__sceneIdentifierForStoredPersistenceIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [a3 objectForKey:@"persistenceIdentifier"];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_clearSceneTitles
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SBApplication__clearSceneTitles__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void __34__SBApplication__clearSceneTitles__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _dataStore];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__SBApplication__clearSceneTitles__block_invoke_2;
  v11[3] = &unk_2783ABB28;
  v11[4] = &v12;
  [v1 enumerateSceneStoresUsingBlock:v11];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = v13[5];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v18 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [v1 sceneStoreForIdentifier:*(*(&v7 + 1) + 8 * v5) creatingIfNecessary:{1, v7}];
        [v6 removeObjectForKey:@"canvasTitle"];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v18 count:16];
    }

    while (v3);
  }

  _Block_object_dispose(&v12, 8);
}

- (id)_snapshotManifestCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v3 && !v4->_synchronized_snapshotManifest && !v4->_uninstalled && v4->_appInfo)
  {
    v5 = [objc_alloc(MEMORY[0x277D65698]) initWithApplicationInfo:v4->_appInfo];
    synchronized_snapshotManifest = v4->_synchronized_snapshotManifest;
    v4->_synchronized_snapshotManifest = v5;

    [(XBApplicationSnapshotManifest *)v4->_synchronized_snapshotManifest setDelegate:v4];
  }

  v7 = v4->_synchronized_snapshotManifest;
  objc_sync_exit(v4);

  return v7;
}

- (void)setInfo:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_appInfo == v6)
  {
    objc_sync_exit(v5);
  }

  else
  {
    objc_storeStrong(&v5->_appInfo, a3);
    objc_sync_exit(v5);

    [(SBApplication *)v5 _noteIconDataSourceDidChange];
  }
}

- (id)_prepareInitializationContextIfNecessaryForLaunchOnDisplayConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  initializationContext = v5->_initializationContext;
  if (!initializationContext)
  {
    v7 = [[SBApplicationSupportServiceRequestContext alloc] initWithApplication:v5 launchDisplayConfiguration:v4];
    v8 = v5->_initializationContext;
    v5->_initializationContext = v7;

    initializationContext = v5->_initializationContext;
  }

  v9 = initializationContext;
  objc_sync_exit(v5);

  [(SBApplicationSupportServiceRequestContext *)v9 applicationInitializationContextWithCompletion:&__block_literal_global_17];

  return v9;
}

- (void)_noteProcess:(id)a3 didChangeToState:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v6 isRunning])
  {
    [(SBApplication *)self _updateProcess:v7 withState:v6];
  }
}

- (void)_processWillLaunch:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(SBApplication *)a2 _processWillLaunch:?];
  }

  v6 = SBLogWorkspace();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(SBApplication *)self bundleIdentifier];
    v13 = 136315394;
    v14 = "[SBApplication _processWillLaunch:]";
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%s %{public}@", &v13, 0x16u);
  }

  v8 = [v5 state];
  [(SBApplication *)self _updateProcess:v5 withState:v8];

  [(SBApplication *)self _setNewlyInstalled:0];
  [(SBApplication *)self _setRecentlyUpdated:0];
  v9 = [(SBApplication *)self _prepareInitializationContextIfNecessaryForLaunchOnDisplayConfiguration:0];
  v10 = [v5 executionContext];
  v11 = [v10 environment];
  v12 = [v11 objectForKey:@"CLASSIC_OVERRIDE"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_currentClassicMode = [v12 integerValue];
  }
}

- (void)_processDidLaunch:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogWorkspace();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(SBApplication *)self bundleIdentifier];
    v11 = 136315394;
    v12 = "[SBApplication _processDidLaunch:]";
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "%s %{public}@", &v11, 0x16u);
  }

  v7 = [v4 state];
  [(SBApplication *)self _updateProcess:v4 withState:v7];

  v8 = [v4 executionContext];

  v9 = [v8 environment];
  v10 = [v9 objectForKey:@"CLASSIC"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_currentClassicMode = [v10 integerValue];
  }
}

- (void)_didExitWithContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogWorkspace();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(SBApplication *)self bundleIdentifier];
    *buf = 136315394;
    v20 = "[SBApplication _didExitWithContext:]";
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%s %{public}@", buf, 0x16u);
  }

  objc_storeStrong(&self->_lastExitContext, a3);
  v8 = [MEMORY[0x277CCAC38] processInfo];
  v9 = [v8 environment];
  v10 = [v9 objectForKey:@"SB_DISABLE_FAILED_LAUNCH_COUNTER"];

  if (([v5 exitReason] & 1) == 0 && !v10)
  {
    v11 = self->_failedLaunchCount + 1;
    self->_failedLaunchCount = v11;
    v12 = dispatch_time(0, 20000000000);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __37__SBApplication__didExitWithContext___block_invoke;
    v18[3] = &unk_2783A8BC8;
    v18[4] = self;
    v18[5] = v11;
    dispatch_after(v12, MEMORY[0x277D85CD0], v18);
  }

  self->_applicationRestorationCheckState = 0;
  self->_showsProgressCount = 0;
  self->_currentClassicMode = -1;
  v13 = self;
  objc_sync_enter(v13);
  initializationContext = v13->_initializationContext;
  v13->_initializationContext = 0;

  objc_sync_exit(v13);
  v15 = [SBApp menuButtonInterceptApp];
  v16 = [(SBApplication *)v13 isSameExecutableAsApplication:v15];

  if (v16)
  {
    [SBApp setMenuButtonInterceptApp:0 forever:0];
  }

  [SBApp setAppRegisteredForVolumeEvents:v13 isActive:0];
  [SBApp setAppRegisteredForLockButtonEvents:v13 isActive:0];
  *(v13 + 43) = 0;
  [(SBApplication *)v13 setUsesBackgroundNetwork:0];
  [(SBApplication *)v13 purgeCaches];
  [(SBApplication *)v13 _invalidateBackgroundActivityAttributions];
  [(SBApplication *)v13 _updateProcess:0 withState:0];
  [(SBApplication *)v13 setPlayingAudio:0];
  [(SBApplication *)v13 setNowRecordingApplication:0];
  [(SBApplication *)v13 setConnectedToExternalAccessory:0];
  if (v13->_launchWillBePrevented)
  {
    [(SBApplication *)v13 _noteIconDataSourceDidChange];
  }

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 postNotificationName:@"SBApplicationDidExitNotification" object:v13];
}

uint64_t __37__SBApplication__didExitWithContext___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) == *(v1 + 152))
  {
    *(v1 + 152) = 0;
  }

  return result;
}

+ (id)_appStateKeysToPrefetch
{
  v4[7] = *MEMORY[0x277D85DE8];
  v4[0] = @"SBApplicationAutoLaunchForVoIP";
  v4[1] = @"SBApplicationIsNewlyInstalled";
  v4[2] = @"SBApplicationRecentlyUpdated";
  v4[3] = @"SBApplicationRecentlyUpdatedTimerStartDate";
  v4[4] = @"SBApplicationBadgeKey";
  v4[5] = @"_SBScenes";
  v4[6] = *MEMORY[0x277D656D8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:7];

  return v2;
}

- (void)_setDataUsage:(int)a3
{
  if (self->_dataFlagsIsSet)
  {
    v4 = *(self + 84);
    self->_dataFlagsIsSet = 1;
    *(self + 84) = a3;
    if (v4 == a3)
    {
      return;
    }
  }

  else
  {
    self->_dataFlagsIsSet = 1;
    *(self + 84) = a3;
  }

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = *MEMORY[0x277D67A00];
  v6 = MEMORY[0x277CBEAC0];
  v7 = [(SBApplication *)self bundleIdentifier];
  v8 = [v6 dictionaryWithObject:v7 forKey:*MEMORY[0x277D67B20]];
  [v9 postNotificationName:v5 object:self userInfo:v8];
}

- (void)_updateProcess:(id)a3 withState:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(SBApplication *)self _internalProcessState];
  if (v7)
  {
    v10 = [[SBApplicationProcessState alloc] _initWithProcess:v7 stateSnapshot:v8];
  }

  else
  {
    v10 = 0;
  }

  if (self->_process != v7)
  {
    objc_storeStrong(&self->_process, a3);
  }

  [(SBApplication *)self _setInternalProcessState:v10];
  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SBApplication *)self bundleIdentifier];
    *buf = 138543618;
    v20 = v12;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Application process state changed for %{public}@: %{public}@", buf, 0x16u);
  }

  v13 = [v9 taskState];
  v14 = [v8 taskState];
  if (v13 != 3 && v14 == 3)
  {
    [(SBApplication *)self _didSuspend];
  }

  if (v9)
  {
    v17 = @"previousProcessState";
    v18 = v9;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 postNotificationName:@"SBApplicationProcessStateDidChange" object:self userInfo:v15];
}

- (void)_setNewlyInstalled:(BOOL)a3
{
  v3 = a3;
  if ([(SBApplication *)self _isNewlyInstalled]!= a3)
  {
    dataStore = self->_dataStore;
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [(FBSApplicationDataStore *)dataStore setObject:v6 forKey:@"SBApplicationIsNewlyInstalled"];

    if (v3)
    {
      v7 = 8;
    }

    else
    {
      v7 = 16;
    }

    *(self + 80) = *(self + 80) & 0xC7 | v7;

    [(SBApplication *)self _noteIconDataSourceDidChange];
  }
}

- (void)_setRecentlyUpdated:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  if ([(SBApplication *)self _isRecentlyUpdated]!= a3)
  {
    dataStore = self->_dataStore;
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [(FBSApplicationDataStore *)dataStore setObject:v6 forKey:@"SBApplicationRecentlyUpdated"];

    if (v3)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    *(self + 80) = *(self + 80) & 0xF8 | v7;
    v8 = SBLogCommon();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v9)
      {
        bundleIdentifier = self->_bundleIdentifier;
        v13 = 138543362;
        v14 = bundleIdentifier;
        v11 = "%{public}@ is now recently updated.";
LABEL_10:
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, v11, &v13, 0xCu);
      }
    }

    else if (v9)
    {
      v12 = self->_bundleIdentifier;
      v13 = 138543362;
      v14 = v12;
      v11 = "%{public}@ is no longer recently updated.";
      goto LABEL_10;
    }

    [(SBApplication *)self _updateRecentlyUpdatedTimer];
    [(SBApplication *)self _noteIconDataSourceDidChange];
  }
}

- (void)_updateRecentlyUpdatedTimer
{
  v3 = [(SBApplication *)self _isRecentlyUpdated];
  v4 = [(FBSApplicationDataStore *)self->_dataStore safeObjectForKey:@"SBApplicationRecentlyUpdatedTimerStartDate" ofType:objc_opt_class()];
  v13 = v4;
  if (v3)
  {
    if (v4)
    {
      [v4 timeIntervalSinceNow];
      if (v5 <= -172800.0)
      {
        [(SBApplication *)self _setRecentlyUpdated:0];
      }
    }

    else
    {
      v7 = +[SBLockScreenManager sharedInstanceIfExists];
      v8 = v7;
      if (v7 && ([v7 isUILocked] & 1) == 0)
      {
        dataStore = self->_dataStore;
        v10 = [MEMORY[0x277CBEAA8] date];
        [(FBSApplicationDataStore *)dataStore setObject:v10 forKey:@"SBApplicationRecentlyUpdatedTimerStartDate"];
      }

      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      v12 = *MEMORY[0x277D67A48];
      [v11 removeObserver:self name:*MEMORY[0x277D67A48] object:0];
      [v11 addObserver:self selector:sel__lockStateDidChange_ name:v12 object:0];
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x277D67A48] object:0];

    [(FBSApplicationDataStore *)self->_dataStore removeObjectForKey:@"SBApplicationRecentlyUpdatedTimerStartDate"];
  }
}

- (void)_lockStateDidChange:(id)a3
{
  v6 = a3;
  if ([(SBApplication *)self _isRecentlyUpdated])
  {
    [(SBApplication *)self _updateRecentlyUpdatedTimer];
  }

  else
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = [v6 name];
    [v4 removeObserver:self name:v5 object:0];
  }
}

- (void)_invalidateBackgroundActivityAttributions
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBApplication _invalidateBackgroundActivityAttributions]"];
  [v1 handleFailureInFunction:v0 file:@"SBApplication.m" lineNumber:1135 description:@"this call must be made on the main thread"];
}

uint64_t __58__SBApplication__invalidateBackgroundActivityAttributions__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityAttribution];
  v4 = [v3 attributedEntity];
  v5 = [v4 executableIdentity];

  if ([v5 hasAuditToken])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v5 bundleIdentifier];
    v8 = [*(a1 + 32) bundleIdentifier];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v6 = 0;
    }

    else
    {
      v10 = [v5 bundlePath];
      v11 = [*(a1 + 32) bundleURL];
      v12 = [v11 path];
      v13 = [v10 isEqualToString:v12];

      v6 = v13 ^ 1u;
    }
  }

  return v6;
}

- (void)launchFromIcon:(id)a3 location:(id)a4 context:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 activationSettings];
  v15 = [v13 actions];

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_alloc_init(SBActivationSettings);
  }

  v17 = v16;
  v18 = SBLogIcon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [(SBApplication *)self bundleIdentifier];
    v21 = 138412802;
    v22 = v19;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Launching application %@ from icon %@, location: %@", &v21, 0x20u);
  }

  v20 = +[SBUIController sharedInstance];
  [v20 activateApplication:self fromIcon:v8 location:v9 activationSettings:v17 actions:v15];
}

- (void)uninstall
{
  v3 = +[SBApplicationController sharedInstance];
  [v3 uninstallApplication:self];
}

- (id)icon:(id)a3 displayNameForObscuredDisabledLaunchForLocation:(id)a4
{
  v5 = [(SBApplication *)self displayName:a3];
  if ([(SBApplication *)self isCacheCleaningTerminationAssertionHeld])
  {
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 localizedStringForKey:@"CLEANING_ICON_LABEL" value:&stru_283094718 table:@"SpringBoard"];

    v5 = v7;
  }

  return v5;
}

- (int64_t)labelAccessoryTypeForIcon:(id)a3
{
  if (([(SBApplicationInfo *)self->_appInfo isBlockedForScreenTimeExpiration]& 1) != 0)
  {
    return 4;
  }

  if ([(SBApplicationInfo *)self->_appInfo isCloudDemoted])
  {
    return 3;
  }

  if (([(SBApplication *)self _isNewlyInstalled]|| [(SBApplication *)self _isRecentlyUpdated]) && ![(SBApplication *)self isSystemApplication])
  {
    return 1;
  }

  if ([(SBApplicationInfo *)self->_appInfo isBeta])
  {
    return 2;
  }

  return 0;
}

- (BOOL)iconCompleteUninstall:(id)a3
{
  v4 = +[SBApplicationController sharedInstance];
  [v4 uninstallApplication:self];

  return 1;
}

- (BOOL)iconAllowsLaunch:(id)a3
{
  if ([(SBApplication *)self isAnyTerminationAssertionInEffect])
  {
    return 0;
  }

  else
  {
    return ![(SBApplication *)self isLaunchDisallowedForRatingRank];
  }
}

- (BOOL)icon:(id)a3 launchFromLocation:(id)a4 context:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 iconView];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v10 actions];
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    v15 = objc_alloc_init(SBActivationSettings);
    v16 = [v11 _sbWindowScene];
    if (-[SBApplication restrictedToTheEmbeddedDisplayInChamois](self, "restrictedToTheEmbeddedDisplayInChamois") && [v16 isExtendedDisplayWindowScene])
    {
      v17 = [SBApp windowSceneManager];
      v18 = [v17 embeddedDisplayWindowScene];

      v16 = v18;
    }

    [(SBActivationSettings *)v15 setObject:v16 forActivationSetting:69];

    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    v19 = v15;
    v20 = v19;
    goto LABEL_14;
  }

  v15 = [v10 activationSettings];
  if (v15)
  {
    goto LABEL_12;
  }

LABEL_13:
  v19 = objc_alloc_init(SBActivationSettings);
  v20 = 0;
LABEL_14:
  v21 = SBLogIcon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(SBApplication *)self bundleIdentifier];
    v25 = 138412802;
    v26 = v22;
    v27 = 2112;
    v28 = v8;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Launching application %@ from icon %@, location: %{public}@", &v25, 0x20u);
  }

  v23 = +[SBUIController sharedInstance];
  [v23 activateApplication:self fromIcon:v8 location:v9 activationSettings:v19 actions:v12];

  return 1;
}

- (BOOL)isTimedOutForIcon:(id)a3
{
  v3 = [(SBApplication *)self info];
  v4 = [v3 isBlockedForScreenTimeExpiration];

  return v4;
}

- (id)folderTitleOptionsForIcon:(id)a3
{
  v3 = [(SBApplication *)self info];
  v4 = [v3 folderNames];

  return v4;
}

- (id)folderFallbackTitleForIcon:(id)a3
{
  v3 = [(SBApplication *)self info];
  v4 = [v3 fallbackFolderName];
  if (!v4)
  {
    v5 = [v3 folderNames];
    v4 = [v5 firstObject];
  }

  return v4;
}

- (id)tagsForIcon:(id)a3
{
  v3 = [(SBApplication *)self info];
  v4 = [v3 tags];

  return v4;
}

- (int64_t)dataOwnershipRoleAsDragDropTargetForIcon:(id)a3
{
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [(SBApplication *)self bundleIdentifier];
  v6 = [v4 dragDropTargetManagementStateForBundleID:v5];

  if (v6 > 3)
  {
    return 0;
  }

  else
  {
    return qword_21F8A5848[v6];
  }
}

- (id)iTunesCategoriesOrderedByRelevancyForIcon:(id)a3
{
  v3 = [(SBApplication *)self info];
  v4 = [v3 iTunesCategoriesOrderedByRelevancy];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBApplication *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBApplication *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SBApplication_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __55__SBApplication_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) processState];
  v2 = [v1 appendObject:v3 withName:@"processState" skipIfNil:1];
}

- (unint64_t)_appRestrictionReason
{
  v2 = [(SBApplication *)self info];
  v3 = [v2 applicationIdentity];
  v4 = [v3 findApplicationRecordWithError:0];
  v5 = [v4 applicationState];
  v6 = [v5 restrictionReason];

  return v6;
}

+ (id)snapshotSortDescriptorsForNames:(id)a3 scheme:(id)a4 imageScale:(double)a5 referenceSize:(CGSize)a6 userInterfaceStyle:(int64_t)a7 statusBarStateMask:(unint64_t)a8 interfaceOrientationMask:(unint64_t)a9 requiredOSVersion:(id)a10
{
  height = a6.height;
  width = a6.width;
  v19 = a10;
  v20 = a4;
  v21 = a3;
  v37 = [a1 snapshotSortDescriptorForNames:v21];
  v22 = [a1 snapshotSortDescriptorForScheme:v20];

  v33 = [a1 snapshotSortDescriptorForInterfaceOrientationMask:a9];
  v34 = [a1 snapshotSortDescriptorForStatusBarStateMask:a8];
  v23 = [a1 snapshotSortDescriptorForImageScale:a5];
  v35 = [a1 snapshotSortDescriptorForReferenceSize:{width, height}];
  v24 = [a1 snapshotSortDescriptorForContentTypeMask];
  v36 = [a1 snapshotSortDescriptorForRequiredOSVersion:v19];

  v25 = [a1 snapshotSortDescriptorPreferringProtectedContent];
  v32 = [a1 snapshotSortDescriptorForCreationDate];
  v26 = [a1 snapshotSortDescriptorForUIUserInterfaceStyle:a7];
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = [v21 count];

  if (v20 != 0 && v28 == 0)
  {
    v29 = v22;
  }

  else
  {
    v29 = v37;
  }

  if (v20 != 0 && v28 == 0)
  {
    v30 = v37;
  }

  else
  {
    v30 = v22;
  }

  [v27 addObject:v29];
  [v27 addObject:v30];
  [v27 addObject:v33];
  [v27 addObject:v26];
  [v27 addObject:v34];
  [v27 addObject:v24];
  [v27 addObject:v23];
  [v27 addObject:v35];
  [v27 addObject:v25];
  [v27 addObject:v32];
  [v27 addObject:v36];

  return v27;
}

+ (id)snapshotSortDescriptorForNames:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D656A8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SBApplication_SnapshotSorting__snapshotSortDescriptorForNames___block_invoke;
  v8[3] = &unk_2783B59E0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 sortDescriptorWithKey:1 ascending:1 comparator:v8];

  return v6;
}

+ (id)snapshotSortDescriptorForScheme:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D656A8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SBApplication_SnapshotSorting__snapshotSortDescriptorForScheme___block_invoke;
  v8[3] = &unk_2783B59E0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 sortDescriptorWithKey:2 ascending:1 comparator:v8];

  return v6;
}

+ (id)snapshotSortDescriptorForLaunchInterfaceIdentifier:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D656A8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__SBApplication_SnapshotSorting__snapshotSortDescriptorForLaunchInterfaceIdentifier___block_invoke;
  v8[3] = &unk_2783B59E0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 sortDescriptorWithKey:3 ascending:1 comparator:v8];

  return v6;
}

+ (id)snapshotSortDescriptorForImageScale:(double)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SBApplication_SnapshotSorting__snapshotSortDescriptorForImageScale___block_invoke;
  v5[3] = &__block_descriptor_40_e31_q24__0__NSNumber_8__NSNumber_16l;
  *&v5[4] = a3;
  v3 = [MEMORY[0x277D656A8] sortDescriptorWithKey:6 ascending:1 comparator:v5];

  return v3;
}

uint64_t __70__SBApplication_SnapshotSorting__snapshotSortDescriptorForImageScale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 doubleValue];
  [v5 doubleValue];
  v6 = BSFloatEqualToFloat();
  v7 = BSFloatEqualToFloat();
  if ((v6 & 1) != 0 || v7)
  {
    v10 = -1;
    if (!v6)
    {
      v10 = 1;
    }

    if (v6 != v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (BSFloatGreaterThanFloat() && BSFloatGreaterThanFloat())
    {
      v8 = v4;
      v9 = v5;
    }

    else
    {
      v8 = v5;
      v9 = v4;
    }

    v11 = [v8 compare:v9];
  }

  return v11;
}

+ (id)snapshotSortDescriptorForReferenceSize:(CGSize)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__SBApplication_SnapshotSorting__snapshotSortDescriptorForReferenceSize___block_invoke;
  v5[3] = &__block_descriptor_48_e29_q24__0__NSValue_8__NSValue_16l;
  v6 = a3;
  v3 = [MEMORY[0x277D656A8] sortDescriptorWithKey:5 ascending:1 comparator:v5];

  return v3;
}

uint64_t __73__SBApplication_SnapshotSorting__snapshotSortDescriptorForReferenceSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 CGSizeValue];
  v7 = v6;
  v9 = v8;
  [v5 CGSizeValue];
  v11 = v10;
  v13 = v12;

  v16.n128_u64[0] = *(a1 + 32);
  v14 = *(a1 + 40);
  v15.n128_f64[0] = vabdd_f64(v16.n128_f64[0], v7) + vabdd_f64(v14, v9);
  v16.n128_f64[0] = vabdd_f64(v16.n128_f64[0], v11) + vabdd_f64(v14, v13);

  return MEMORY[0x282143748](v15, v16);
}

uint64_t __82__SBApplication_SnapshotSorting__snapshotSortDescriptorPreferringProtectedContent__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 BOOLValue];
  v6 = [v4 BOOLValue];

  v7 = -1;
  if (!v5)
  {
    v7 = 1;
  }

  if (v5 != v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

+ (id)snapshotSortDescriptorForStatusBarStateMask:(unint64_t)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__SBApplication_SnapshotSorting__snapshotSortDescriptorForStatusBarStateMask___block_invoke;
  v5[3] = &__block_descriptor_40_e53_q24__0__XBStatusBarSettings_8__XBStatusBarSettings_16l;
  v5[4] = a3;
  v3 = [MEMORY[0x277D656A8] sortDescriptorWithKey:8 ascending:1 comparator:v5];

  return v3;
}

uint64_t __78__SBApplication_SnapshotSorting__snapshotSortDescriptorForStatusBarStateMask___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = XBStatusBarStateMaskMatchesSettings();
  v5 = XBStatusBarStateMaskMatchesSettings();

  v6 = -1;
  if (!v4)
  {
    v6 = 1;
  }

  if ((v4 | v5) & (v4 ^ v5))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

+ (id)snapshotSortDescriptorForInterfaceOrientationMask:(unint64_t)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__SBApplication_SnapshotSorting__snapshotSortDescriptorForInterfaceOrientationMask___block_invoke;
  v5[3] = &__block_descriptor_40_e31_q24__0__NSNumber_8__NSNumber_16l;
  v5[4] = a3;
  v3 = [MEMORY[0x277D656A8] sortDescriptorWithKey:4 ascending:1 comparator:v5];

  return v3;
}

uint64_t __84__SBApplication_SnapshotSorting__snapshotSortDescriptorForInterfaceOrientationMask___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [v5 integerValue];

  v8 = *(a1 + 32);
  v9 = v8 & v6;
  v10 = v8 & v7;
  v11 = v8 & v6 | v8 & v7;
  if ((v6 & 2) != 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if ((v6 & 2) >> 1 != ((v7 >> 1) & 1))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (((v6 | v7) & 2) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ((v8 & 2) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v16 = v9 == 0;
  v17 = (v9 != 0) ^ (v10 != 0);
  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v11)
  {
    return v19;
  }

  else
  {
    return v15;
  }
}

+ (id)snapshotSortDescriptorForRequiredOSVersion:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D656A8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SBApplication_SnapshotSorting__snapshotSortDescriptorForRequiredOSVersion___block_invoke;
  v8[3] = &unk_2783B59E0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 sortDescriptorWithKey:9 ascending:1 comparator:v8];

  return v6;
}

uint64_t __77__SBApplication_SnapshotSorting__snapshotSortDescriptorForRequiredOSVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = *(a1 + 32);
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = [v8 compare:v5 options:64];
    v10 = [*(a1 + 32) compare:v7 options:64];
    if ((v9 == -1) != (v10 == -1))
    {
      if (v10 == -1)
      {
        v11 = -1;
      }

      else
      {
        v11 = 1;
      }

      goto LABEL_16;
    }

    if ((v10 & v9) == 0xFFFFFFFFFFFFFFFFLL)
    {
      v13 = v5;
      v14 = v7;
    }

    else
    {
LABEL_14:
      v13 = v7;
      v14 = v5;
    }

    v11 = [v13 compare:v14 options:64];
    goto LABEL_16;
  }

  v12 = -1;
  if (v5)
  {
    v12 = 1;
  }

  if ((v5 == 0) != (v6 == 0))
  {
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

LABEL_16:

  return v11;
}

+ (id)snapshotSortDescriptorForUIUserInterfaceStyle:(int64_t)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__SBApplication_SnapshotSorting__snapshotSortDescriptorForUIUserInterfaceStyle___block_invoke;
  v5[3] = &__block_descriptor_40_e31_q24__0__NSNumber_8__NSNumber_16l;
  v5[4] = a3;
  v3 = [MEMORY[0x277D656A8] sortDescriptorWithKey:12 ascending:1 comparator:v5];

  return v3;
}

uint64_t __80__SBApplication_SnapshotSorting__snapshotSortDescriptorForUIUserInterfaceStyle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [v5 integerValue];

  v8 = *(a1 + 32);
  if (!v8)
  {
    return 0;
  }

  v9 = v6 == v8 || v7 == v8;
  if (!v9)
  {
    return 0;
  }

  v9 = v6 == v8;
  v10 = (v6 == v8) ^ (v7 == v8);
  v11 = -1;
  if (!v9)
  {
    v11 = 1;
  }

  if (v10)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

+ (id)snapshotSortDescriptorForCustomSafeAreaInsets:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D656A8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__SBApplication_SnapshotSorting__snapshotSortDescriptorForCustomSafeAreaInsets___block_invoke;
  v8[3] = &unk_2783B5AA8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 sortDescriptorWithKey:13 ascending:1 comparator:v8];

  return v6;
}

uint64_t __80__SBApplication_SnapshotSorting__snapshotSortDescriptorForCustomSafeAreaInsets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = v7;
  if (v10 && ((v11 = [v8 isEqual:v10], v12 = objc_msgSend(v9, "isEqual:", v10), (v11 & 1) != 0) || v12))
  {
    v14 = -1;
    if (!v11)
    {
      v14 = 1;
    }

    if (v11 != v12)
    {
      v13 = v14;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __62__SBApplication_ChamoisCapabilities__alwaysMaximizedInChamois__block_invoke()
{
  v2[5] = *MEMORY[0x277D85DE8];
  v2[0] = @"com.apple.purplebuddy";
  v2[1] = @"com.apple.PrintKit.Print-Center";
  v2[2] = @"com.apple.sidecar";
  v2[3] = @"com.apple.ContinuityCaptureShieldUI";
  v2[4] = @"com.apple.ContinuitySingShieldUI";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:5];
  v1 = alwaysMaximizedInChamois_sAlwaysMaximizedBundleIDs;
  alwaysMaximizedInChamois_sAlwaysMaximizedBundleIDs = v0;
}

- (BOOL)restrictedToTheEmbeddedDisplayInChamois
{
  if (restrictedToTheEmbeddedDisplayInChamois_onceToken != -1)
  {
    [SBApplication(ChamoisCapabilities) restrictedToTheEmbeddedDisplayInChamois];
  }

  v3 = restrictedToTheEmbeddedDisplayInChamois_sRestrictedToEmbeddedBundleIDs;
  v4 = [(SBApplication *)self bundleIdentifier];
  LOBYTE(v3) = [v3 containsObject:v4];

  return v3;
}

void __77__SBApplication_ChamoisCapabilities__restrictedToTheEmbeddedDisplayInChamois__block_invoke()
{
  v2[5] = *MEMORY[0x277D85DE8];
  v2[0] = @"com.apple.purplebuddy";
  v2[1] = @"com.apple.PrintKit.Print-Center";
  v2[2] = @"com.apple.sidecar";
  v2[3] = @"com.apple.ContinuityCaptureShieldUI";
  v2[4] = @"com.apple.ContinuitySingShieldUI";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:5];
  v1 = restrictedToTheEmbeddedDisplayInChamois_sRestrictedToEmbeddedBundleIDs;
  restrictedToTheEmbeddedDisplayInChamois_sRestrictedToEmbeddedBundleIDs = v0;
}

- (BOOL)onlySupportsOneOrientation
{
  [(SBApplicationInfo *)self->_appInfo supportedInterfaceOrientations];
  if (SBFInterfaceOrientationMaskContainsInterfaceOrientation())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = SBFInterfaceOrientationMaskContainsInterfaceOrientation() ^ 1;
  }

  if (SBFInterfaceOrientationMaskContainsInterfaceOrientation())
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = SBFInterfaceOrientationMaskContainsInterfaceOrientation() ^ 1;
  }

  return (v2 | v3) & 1;
}

- (int64_t)preferredSizingPolicyForSwitcherWindowManagementContext:(id)a3 displayIdentity:(id)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6
{
  v10 = a3;
  v11 = [a4 isExternal];
  v12 = [v10 isChamoisOrFlexibleWindowing];

  if (!v12 || [(SBApplication *)self alwaysMaximizedInChamois])
  {
    return 2;
  }

  if ([(SBApplication *)self supportsChamoisSceneResizing])
  {
    return 0;
  }

  if ((v11 & 1) == 0)
  {
    v14 = [(SBApplication *)self classicAppFullScreen];
    if (a5 == a6 && v14)
    {
      return 2;
    }
  }

  return 1;
}

- (unint64_t)supportedSizingPoliciesForSwitcherWindowManagementContext:(id)a3 displayIdentity:(id)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6
{
  v10 = a3;
  v11 = [a4 isExternal];
  v12 = SBFIsFullScreenLetterboxingAvailable();
  v13 = [v10 isMedusaEnabled];
  if (!v12)
  {
    if (!v13)
    {
      if ([v10 isChamoisOrFlexibleWindowing] && !-[SBApplication alwaysMaximizedInChamois](self, "alwaysMaximizedInChamois"))
      {
        if (![(SBApplication *)self supportsChamoisSceneResizing])
        {
          if ((v11 & 1) != 0 || (v16 = [(SBApplication *)self classicAppFullScreen], a5 != a6) || !v16)
          {
            v14 = 3;
            goto LABEL_17;
          }
        }

        goto LABEL_19;
      }

      goto LABEL_16;
    }

LABEL_11:
    if (([(SBApplication *)self isMedusaCapable]& (v11 ^ 1)) != 0)
    {
      v14 = 5;
    }

    else
    {
      v14 = 4;
    }

    goto LABEL_17;
  }

  if (v13)
  {
    goto LABEL_11;
  }

  if (![v10 isChamoisOrFlexibleWindowing] || -[SBApplication alwaysMaximizedInChamois](self, "alwaysMaximizedInChamois"))
  {
LABEL_16:
    v14 = 4;
    goto LABEL_17;
  }

  if ([(SBApplication *)self supportsChamoisSceneResizing]|| !(v11 & 1 | ![(SBApplication *)self classicAppFullScreen]) && (a5 == a6 || [(SBApplication *)self onlySupportsOneOrientation]))
  {
LABEL_19:
    v14 = 5;
    goto LABEL_17;
  }

  if (([(SBApplication *)self classicAppFullScreen]& v11) != 0)
  {
    v14 = 5;
  }

  else
  {
    v14 = 3;
  }

LABEL_17:

  return v14;
}

- (BOOL)supportsMultiWindowLayoutsForSwitcherWindowManagementContext:(id)a3 displayIdentity:(id)a4
{
  v5 = a3;
  if ([v5 isChamoisOrFlexibleWindowing])
  {
    LODWORD(self) = ![(SBApplication *)self alwaysMaximizedInChamois];
  }

  else if ([v5 isMedusaEnabled])
  {
    LOBYTE(self) = [(SBApplication *)self isMedusaCapable];
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (BOOL)supportsMixedOrientationForSwitcherWindowManagementContext:(id)a3 displayIdentity:(id)a4
{
  if ([a3 isChamoisOrFlexibleWindowing])
  {
    return ![(SBApplication *)self supportsChamoisSceneResizing];
  }

  return [(SBApplication *)self classicAppPhoneAppRunningOnPad];
}

- (id)bestSnapshotWithImageName:(id)a3 sceneHandle:(id)a4 variantID:(id)a5 scale:(double)a6 referenceSize:(CGSize)a7 requireExactSize:(BOOL)a8 contentTypeMask:(unint64_t)a9 statusBarStateMask:(unint64_t)a10 launchingOrientation:(int64_t)a11 contentOverridesContext:(id)a12 userInterfaceStyle:(int64_t)a13 displayEdgeInfo:(id)a14
{
  v15 = a8;
  height = a7.height;
  width = a7.width;
  v54 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v23 = a4;
  v24 = a5;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v32 = SBLogCommon();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v23 sceneIdentifier];
      *buf = 138543618;
      v51 = v22;
      v52 = 2114;
      v53 = v39;
      _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "A snapshot was requested with an empty reference size for name: <%{public}@> in scene <%{public}@>.", buf, 0x16u);
    }

    v38 = 0;
  }

  else
  {
    v26 = v15;
    v27 = [(SBApplication *)self _snapshotsWithImageName:v22 sceneHandle:v23 referenceSize:v15 requireExactSize:a9 launchingScale:a10 contentTypeMask:a11 statusBarStateMask:width launchingOrientation:height contentOverridesContext:a6 userInterfaceStyle:a12 displayEdgeInfo:a13, a14];
    v28 = +[SBAppSwitcherDomain rootSettings];
    [v28 snapshotAspectRatioAcceptanceThreshold];
    v30 = v29;

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __231__SBApplication_DefaultImage__bestSnapshotWithImageName_sceneHandle_variantID_scale_referenceSize_requireExactSize_contentTypeMask_statusBarStateMask_launchingOrientation_contentOverridesContext_userInterfaceStyle_displayEdgeInfo___block_invoke;
    v47[3] = &__block_descriptor_57_e31_B16__0__XBApplicationSnapshot_8l;
    v48 = v26;
    *&v47[4] = width;
    *&v47[5] = height;
    v47[6] = v30;
    v31 = MEMORY[0x223D6F7F0](v47);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = v27;
    v33 = [v32 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v33)
    {
      v34 = v33;
      v42 = v22;
      v35 = *v44;
      while (2)
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v43 + 1) + 8 * i);
          if (v24)
          {
            v38 = [*(*(&v43 + 1) + 8 * i) variantWithIdentifier:v24];
            if (v38 && ((v31)[2](v31, v38) & 1) != 0)
            {
              goto LABEL_22;
            }
          }

          if ((v31)[2](v31, v37))
          {
            v38 = v37;
            goto LABEL_22;
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }

      v38 = 0;
LABEL_22:
      v22 = v42;
    }

    else
    {
      v38 = 0;
    }
  }

  return v38;
}

uint64_t __231__SBApplication_DefaultImage__bestSnapshotWithImageName_sceneHandle_variantID_scale_referenceSize_requireExactSize_contentTypeMask_statusBarStateMask_launchingOrientation_contentOverridesContext_userInterfaceStyle_displayEdgeInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 56) == 1)
  {
    v5 = [v3 isValid];
  }

  else
  {
    [v3 referenceSize];
    v7 = v6;
    v9 = v8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if ([v4 isValid])
    {
      v5 = vabdd_f64(v7 / v9, v10 / v11) <= *(a1 + 48);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)mostRecentSceneSnapshotsForSceneHandle:(id)a3 scale:(double)a4 launchingOrientation:(int64_t)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(SBApplication *)self _snapshotManifest];
  v9 = [v7 sceneIdentifier];

  v10 = [MEMORY[0x277D656A0] predicate];
  [v10 setContentTypeMask:1];
  [v10 setImageScale:a4];
  [v10 setInterfaceOrientationMask:XBInterfaceOrientationMaskForInterfaceOrientationPair()];
  v11 = [MEMORY[0x277D65688] fetchRequest];
  [v11 setPredicate:v10];
  v12 = [objc_opt_class() snapshotSortDescriptorForCreationDate];
  v17[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v11 setSortDescriptors:v13];

  v14 = [v8 snapshotsForGroupID:v9 fetchRequest:v11];
  v15 = [v14 bs_filter:&__block_literal_global_314];

  return v15;
}

uint64_t __97__SBApplication_DefaultImage__mostRecentSceneSnapshotsForSceneHandle_scale_launchingOrientation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isExpired])
  {
    v3 = 0;
  }

  else if ([v2 hasCachedImage])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 fileExists];
  }

  return v3;
}

- (id)_snapshotsWithImageName:(id)a3 sceneHandle:(id)a4 referenceSize:(CGSize)a5 requireExactSize:(BOOL)a6 launchingScale:(double)a7 contentTypeMask:(unint64_t)a8 statusBarStateMask:(unint64_t)a9 launchingOrientation:(int64_t)a10 contentOverridesContext:(id)a11 userInterfaceStyle:(int64_t)a12 displayEdgeInfo:(id)a13
{
  v14 = a6;
  height = a5.height;
  width = a5.width;
  v113[2] = *MEMORY[0x277D85DE8];
  v21 = a3;
  v22 = a4;
  v23 = a11;
  v108 = a13;
  if (v22)
  {
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [SBApplication(DefaultImage) _snapshotsWithImageName:a2 sceneHandle:self referenceSize:? requireExactSize:? launchingScale:? contentTypeMask:? statusBarStateMask:? launchingOrientation:? contentOverridesContext:? userInterfaceStyle:? displayEdgeInfo:?];
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    [SBApplication(DefaultImage) _snapshotsWithImageName:a2 sceneHandle:self referenceSize:? requireExactSize:? launchingScale:? contentTypeMask:? statusBarStateMask:? launchingOrientation:? contentOverridesContext:? userInterfaceStyle:? displayEdgeInfo:?];
  }

LABEL_8:
  v103 = [v22 sceneIdentifier];
  v25 = [SBApplication _defaultPNGNameUsingFallbacksWithSceneID:"_defaultPNGNameUsingFallbacksWithSceneID:contentOverridesContext:" contentOverridesContext:?];
  v26 = [(SBApplication *)self _normalizeSnapshotName:v25];

  if (v26)
  {
    [MEMORY[0x277CBEB40] orderedSetWithObject:v26];
  }

  else
  {
    [MEMORY[0x277CBEB40] orderedSet];
  }
  v27 = ;
  v28 = v27;
  v111 = v26;
  if (v21)
  {
    [v27 addObject:v21];
  }

  v102 = v21;
  v29 = [(SBApplication *)self _snapshotManifest];
  v30 = [MEMORY[0x277D65688] fetchRequest];
  v31 = [MEMORY[0x277D656A0] predicate];
  if (v29)
  {
    v101 = v28;
    v97 = v29;
    v32 = [v29 defaultGroupIdentifier];
    v106 = MGCopyAnswer();
    if (v14)
    {
      [v31 setReferenceSize:{width, height}];
    }

    [v31 setContentTypeMask:a8];
    [v31 setStatusBarStateMask:a9];
    [v31 setRequiredOSVersion:v106];
    v33 = [v22 application];
    v34 = [v33 info];
    v35 = [v34 xb_userInterfaceStyleForRequestedUserInterfaceStyle:a12];

    v94 = v35;
    [v31 setUserInterfaceStyle:v35];
    v36 = [v108 safeAreaInsetsPortrait];
    v100 = v32;
    v96 = v36;
    if (v36)
    {
      v37 = v36;
      v38 = objc_alloc(MEMORY[0x277D656B0]);
      [v37 topInset];
      v40 = v39;
      [v37 leftInset];
      v42 = v41;
      [v37 bottomInset];
      v44 = v43;
      [v37 rightInset];
      v46 = [v38 initWithTop:v40 left:v42 bottom:v44 right:v45];
      v47 = [objc_opt_class() _deviceSafeAreaInsets];
      v48 = [v47 isEqual:v46];

      if (!v48)
      {
        v57 = v46;
        v50 = v30;
        if (v57)
        {
          v98 = v57;
          [v31 setCustomSafeAreaInsets:?];
          v49 = 0;
        }

        else
        {
          v98 = 0;
          v49 = 1;
        }

LABEL_26:
        [v50 setPredicate:v31];
        v58 = [v23 activationSettings];
        v59 = [v22 effectiveStatusBarStyleRequestForActivationSettings:v58];

        v95 = v59;
        v60 = [v59 isDoubleHeight];
        v61 = v23;
        v62 = v60 & (a9 >> 2);
        if (v62)
        {
          v63 = 4;
        }

        else
        {
          v63 = a9 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v99 = v61;
        v64 = [v61 url];
        v104 = [v64 scheme];

        if (v111)
        {
          v65 = [(SBApplication *)self info];
          if ([v65 usesSplashBoard])
          {
          }

          else
          {

            if ((a8 & 4) != 0)
            {
              v90 = v49;
              v92 = a10;
              v66 = [MEMORY[0x277D656A0] predicate];
              [v66 setName:v111];
              v113[0] = v103;
              v113[1] = v100;
              v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:2];
              v68 = [v97 snapshotsForGroupIDs:v67 matchingPredicate:v66];
              v69 = [v68 count];

              if (!v69)
              {
                [(SBApplication *)self _ingestDefaultPNGsInManifest:v97 withLaunchImageBaseName:v111];
              }

              a10 = v92;
              v49 = v90;
            }
          }
        }

        v70 = objc_opt_class();
        v105 = [v70 snapshotSortDescriptorsForNames:v101 scheme:v104 imageScale:a12 referenceSize:v63 userInterfaceStyle:XBInterfaceOrientationMaskForInterfaceOrientationPair() statusBarStateMask:v106 interfaceOrientationMask:a7 requiredOSVersion:{width, height}];
        [v30 setSortDescriptors:?];
        v71 = [(SBApplication *)self info];
        v72 = [v71 usesSplashBoard];

        if ((a8 & 2) != 0 && v72)
        {
          v73 = MEMORY[0x277D65678];
          v74 = [(SBApplication *)self info];
          v91 = [v73 compatibilityInfoForAppInfo:v74];

          v93 = a10;
          if (a8)
          {
            v76 = [v99 activationSettings];
            v75 = [v22 isStatusBarHiddenForActivationSettings:v76 withOrientation:a10];
          }

          else
          {
            v75 = [v22 defaultStatusBarHiddenForOrientation:a10];
          }

          v77 = 1;
          if (v62)
          {
            v77 = 2;
          }

          if ((a9 & v75) != 0)
          {
            v77 = 0;
          }

          v110 = v77;
          v78 = objc_alloc_init(MEMORY[0x277D656C0]);
          v79 = [MEMORY[0x277D0AAD8] sharedInstance];
          v80 = [v79 sceneWithIdentifier:v103];
          v81 = [v80 settings];

          v82 = [v81 displayConfiguration];
          if ((v49 & 1) == 0)
          {
            [v78 setCustomSafeAreaInsets:v98];
          }

          v83 = [SBApp windowSceneManager];
          v84 = [v83 embeddedDisplayWindowScene];
          v85 = [v84 _fbsDisplayConfiguration];

          if (v82)
          {
            v86 = v82;
          }

          else
          {
            v86 = v85;
          }

          [v78 setDisplayConfiguration:v86];
          [v78 setGroupID:v100];
          [v78 setReferenceSize:{width, height}];
          [v78 setStatusBarState:v110];
          [v78 setInterfaceOrientation:v93];
          [v78 setUrlSchemeName:v104];
          [v78 setLaunchInterfaceIdentifier:v111];
          [v78 setUserInterfaceStyle:v94];
          v87 = [objc_alloc(MEMORY[0x277D65690]) initWithApplicationCompatibilityInfo:v91 launchRequest:v78 timeout:2.0];
          [v30 setFallbackGenerationContext:v87];
        }

        v51 = v22;
        v53 = v100;
        v112[0] = v103;
        v112[1] = v100;
        v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:2];
        v55 = v103;
        v52 = v97;
        v54 = [v97 snapshotsForGroupIDs:v88 fetchRequest:v30];

        v23 = v99;
        v56 = v108;
        v28 = v101;
        goto LABEL_52;
      }
    }

    v98 = 0;
    v49 = 1;
    v50 = v30;
    goto LABEL_26;
  }

  v51 = v22;
  v52 = 0;
  v53 = SBLogCommon();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    [SBApplication(DefaultImage) _snapshotsWithImageName:v53 sceneHandle:? referenceSize:? requireExactSize:? launchingScale:? contentTypeMask:? statusBarStateMask:? launchingOrientation:? contentOverridesContext:? userInterfaceStyle:? displayEdgeInfo:?];
  }

  v54 = 0;
  v55 = v103;
  v56 = v108;
LABEL_52:

  return v54;
}

- (id)_defaultLaunchImageBaseName
{
  v2 = MEMORY[0x277D65680];
  v3 = [(SBApplication *)self info];
  v4 = [v3 launchImageFile];
  v5 = [v2 normalizeSnapshotName:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"Default";
  }

  v8 = v7;

  return v7;
}

- (id)_normalizeSnapshotName:(id)a3
{
  v4 = [MEMORY[0x277D65680] normalizeSnapshotName:a3];
  if (v4)
  {
    v5 = [(SBApplication *)self info];
    v6 = [v5 usesSplashBoard];

    if (v6)
    {
      v7 = MEMORY[0x277D65678];
      v8 = [(SBApplication *)self info];
      v9 = [v7 compatibilityInfoForAppInfo:v8];

      v10 = [v9 defaultLaunchInterface];
      v11 = [v10 identifier];

      if (![v11 isEqualToString:v4])
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v9 = [(SBApplication *)self _defaultLaunchImageBaseName];
      if (![v9 isEqualToString:v4])
      {
LABEL_9:

        goto LABEL_10;
      }

      v11 = v4;
    }

    v4 = 0;
    goto LABEL_8;
  }

LABEL_10:

  return v4;
}

- (id)_defaultPNGNameUsingFallbacksWithSceneID:(id)a3 contentOverridesContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 requestedLaunchIdentifier];
  if (v7 && (-[SBApplication info](self, "info"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 prefersSavedSnapshots], v8, !v9))
  {
    v11 = @"fallbacks for scene id";
  }

  else
  {
    v10 = [(SBApplication *)self _defaultPNGNameFromSuspensionSettingsWithExpiration:0 sceneID:v6];

    if (!v10)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v11 = @"suspension settings";
    v7 = v10;
  }

  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(SBApplication *)self bundleIdentifier];
    v15 = 138543874;
    v16 = v13;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "[defaultImage] <%{public}@> default image name %{public}@ calculated from %{public}@", &v15, 0x20u);
  }

LABEL_10:

  return v7;
}

- (id)_defaultPNGNameFromSuspensionSettingsWithExpiration:(double *)a3 sceneID:(id)a4
{
  v6 = a4;
  v7 = [(SBApplication *)self _dataStore];
  v8 = [v7 sceneStoreForIdentifier:v6 creatingIfNecessary:0];

  v9 = [v8 safeObjectForKey:@"expirationAbsoluteTime" ofType:objc_opt_class()];
  [v9 doubleValue];
  if (a3)
  {
    *a3 = v10;
  }

  if (v9 && v10 <= CFAbsoluteTimeGetCurrent())
  {
  }

  else
  {
    v11 = [v8 safeObjectForKey:@"defaultPNGName" ofType:objc_opt_class()];

    if (v11)
    {
      goto LABEL_15;
    }
  }

  v12 = [v8 safeObjectForKey:@"expirationAbsoluteTime" ofType:objc_opt_class()];
  [v12 doubleValue];
  if (a3)
  {
    *a3 = v13;
  }

  if (v12 && v13 <= CFAbsoluteTimeGetCurrent())
  {
    v11 = 0;
  }

  else
  {
    v11 = [v8 safeObjectForKey:@"defaultPNGName" ofType:objc_opt_class()];
  }

LABEL_15:

  return v11;
}

- (void)refreshLaunchImagesInSnapshotManifestIfNeeded
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = [(SBApplication *)self info];
  v4 = [v3 usesSplashBoard];

  if ((v4 & 1) == 0)
  {
    v5 = [(SBApplication *)self _dataStore];
    v6 = [(SBApplication *)self _snapshotManifest];
    v34 = *MEMORY[0x277D67E90];
    v7 = [v5 safeObjectForKey:*MEMORY[0x277D67E90] ofType:objc_opt_class()];
    if (!v7)
    {
      [v5 removeObjectForKey:@"SBLastBundleSequenceNumberForLaunchImageIngestion"];
      [v5 removeObjectForKey:@"SBLastIngestorVersionForLaunchImageIngestion"];
    }

    v33 = *MEMORY[0x277D67E98];
    v8 = [v7 bs_safeStringForKey:?];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
    }

    else
    {
      v9 = 0;
    }

    v36 = v8;
    v10 = [(SBApplication *)self info];
    v11 = [v10 cacheGUID];

    v35 = v9;
    if (v9)
    {
      v12 = BSEqualObjects() ^ 1;
    }

    else
    {
      v12 = 1;
    }

    v32 = *MEMORY[0x277D67EA8];
    v13 = [v7 bs_safeStringForKey:?];
    v14 = [(SBApplication *)self info];
    v15 = [v14 installInstanceID];

    v37 = v11;
    if (v13)
    {
      v16 = [v15 isEqual:v13] ^ 1;
    }

    else
    {
      v16 = 1;
    }

    v17 = *MEMORY[0x277D67EA0];
    v18 = [v7 bs_safeNumberForKey:*MEMORY[0x277D67EA0]];
    v19 = [v18 integerValue];
    if (((v12 | v16) & 1) == 0 && v18 && v19 == 5)
    {
      v20 = v5;
      v21 = v6;
      v23 = v36;
      v22 = v37;
    }

    else
    {
      v24 = SBLogWorkspace();
      v31 = v5;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v29 = [(SBApplication *)self bundleIdentifier];
        *buf = 138545154;
        v43 = v29;
        v44 = 2112;
        v45 = v36;
        v46 = 2112;
        v47 = v37;
        v48 = 2112;
        v49 = v13;
        v50 = 2112;
        v51 = v15;
        v52 = 2112;
        v53 = v18;
        v54 = 2048;
        v55 = 5;
        v56 = 2112;
        v57 = v31;
        _os_log_error_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] savedCachedGUIDString=%@ currentCacheGUID=%@ savedInstallInstanceID=%@ currentInstallInstanceID=%@ savedIngestorVersionNSNumber=%@ currentIngestorVersion=%li dataStore=%@", buf, 0x52u);
      }

      v25 = XBLogFileManifest();
      v21 = v6;
      v23 = v36;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v30 = [(SBApplication *)self bundleIdentifier];
        *buf = 138545154;
        v43 = v30;
        v44 = 2112;
        v45 = v36;
        v46 = 2112;
        v47 = v37;
        v48 = 2112;
        v49 = v13;
        v50 = 2112;
        v51 = v15;
        v52 = 2112;
        v53 = v18;
        v54 = 2048;
        v55 = 5;
        v56 = 2112;
        v57 = v31;
        _os_log_error_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_ERROR, "[%{public}@] ID Mismatch. purging and reingesting. savedCachedGUIDString=%@ currentCacheGUID=%@ savedInstallInstanceID=%@ currentInstallInstanceID=%@ savedIngestorVersionNSNumber=%@ currentIngestorVersion=%li dataStore=%@", buf, 0x52u);
      }

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __94__SBApplication_DefaultImage_ManifestIngestion__refreshLaunchImagesInSnapshotManifestIfNeeded__block_invoke;
      v38[3] = &unk_2783A92D8;
      v38[4] = self;
      v39 = v21;
      [v39 beginSnapshotAccessTransaction:v38 completion:0];
      v40[0] = v33;
      v22 = v37;
      v26 = [v37 UUIDString];
      v41[0] = v26;
      v41[1] = v15;
      v40[1] = v32;
      v40[2] = v17;
      v27 = [MEMORY[0x277CCABB0] numberWithInteger:5];
      v41[2] = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];

      v20 = v31;
      [v31 setObject:v28 forKey:v34];

      v7 = v28;
    }
  }
}

void __94__SBApplication_DefaultImage_ManifestIngestion__refreshLaunchImagesInSnapshotManifestIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _purgeStaticDefaultImagesInSnapshotManifest];
  v2 = [*(a1 + 32) info];
  v3 = [v2 launchImageInfo];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v3)
  {

    [v4 _ingestInfoPlistImagesInManifest:v5];
  }

  else
  {
    v6 = [v4 _defaultLaunchImageBaseName];
    [v4 _ingestDefaultPNGsInManifest:v5 withLaunchImageBaseName:v6];
  }
}

- (void)_resetLaunchImageIngestionStatus
{
  v3 = [(SBApplication *)self info];
  v4 = [v3 usesSplashBoard];

  if ((v4 & 1) == 0)
  {
    v5 = XBLogFileManifest();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SBApplication(DefaultImage_ManifestIngestion) *)self _resetLaunchImageIngestionStatus];
    }

    v6 = [(SBApplication *)self _dataStore];
    [v6 setObject:MEMORY[0x277CBEC10] forKey:*MEMORY[0x277D67E90]];
  }
}

- (void)_purgeAndResetStaticDefaultImagesInSnapshotManifest
{
  v3 = [(SBApplication *)self info];
  v4 = [v3 usesSplashBoard];

  if ((v4 & 1) == 0)
  {
    [(SBApplication *)self _purgeStaticDefaultImagesInSnapshotManifest];

    [(SBApplication *)self _resetLaunchImageIngestionStatus];
  }
}

- (void)_reingestStaticDefaultImagesInSnapshotManifest
{
  v3 = [(SBApplication *)self info];
  v4 = [v3 usesSplashBoard];

  if ((v4 & 1) == 0)
  {
    v5 = XBLogFileManifest();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SBApplication(DefaultImage_ManifestIngestion) *)self _resetLaunchImageIngestionStatus];
    }

    [(SBApplication *)self _resetLaunchImageIngestionStatus];
    [(SBApplication *)self refreshLaunchImagesInSnapshotManifestIfNeeded];
    [(SBApplication *)self _recalculateApplicationSupportedTypes];
  }
}

+ (void)_markAllManifestsForReingestion
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[SBApplicationController sharedInstance];
  v3 = [v2 allApplications];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) _resetLaunchImageIngestionStatus];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (void)_reingestStaticDefaultImagesForAllApps
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[SBApplicationController sharedInstance];
  v3 = [v2 allApplications];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) _reingestStaticDefaultImagesInSnapshotManifest];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_purgeStaticDefaultImagesInSnapshotManifest
{
  v3 = [(SBApplication *)self _snapshotManifest];
  v2 = [v3 defaultGroupIdentifier];
  [v3 deleteSnapshotsForGroupID:v2 predicateBuilder:&__block_literal_global_64_0];
}

- (void)_ingestDefaultPNGsInManifest:(id)a3 withLaunchImageBaseName:(id)a4
{
  v175 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v150 = a4;
  if (!v150)
  {
    [SBApplication(DefaultImage_ManifestIngestion) _ingestDefaultPNGsInManifest:a2 withLaunchImageBaseName:self];
  }

  v8 = [(SBApplication *)self info];
  v9 = objc_alloc(MEMORY[0x277CF0BB8]);
  v10 = [v8 bundleURL];
  v11 = [v9 initWithURL:v10];

  v12 = [v7 defaultGroupIdentifier];
  v136 = [v8 backgroundStyle];
  v13 = [v8 statusBarHidden];
  v14 = [v8 defaultStatusBarStyle];
  v15 = objc_alloc_init(MEMORY[0x277D656C8]);
  [v15 setHidden:v13];
  [v15 setStyle:v14];
  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = [v11 bundlePath];
  v168 = 0;
  v18 = [v16 contentsOfDirectoryAtPath:v17 error:&v168];
  v19 = v168;
  if (!v19)
  {
    v131 = v16;
    v132 = v17;
    v142 = self;
    v135 = v12;
    v133 = v8;
    v140 = v7;
    v129 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(self BEGINSWITH %@) AND (pathExtension ==[c] 'png')", v150];
    v20 = [v18 filteredArrayUsingPredicate:?];
    v21 = MEMORY[0x277CCACA8];
    v22 = +[SBApplicationLaunchImageParameters validInfoPlistOrientationKeys];
    v23 = [v22 componentsJoinedByString:@"|"];
    v24 = [v21 stringWithFormat:@"-(%@)", v23];

    v167 = 0;
    v149 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"@(\\d)x" options:0 error:&v167];
    v25 = v167;
    v166 = v25;
    v148 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"~(ipad|iphone)" options:0 error:&v166];
    v26 = v166;

    v165 = v26;
    v128 = v24;
    v147 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v24 options:0 error:&v165];
    v27 = v165;

    v164 = v27;
    v137 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"-(\\d{3 options:4})w" error:{0, &v164}];
    v28 = v164;

    v163 = v28;
    v146 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"-(\\d{3 options:4})h" error:{0, &v163}];
    v29 = v163;

    v162 = v29;
    v143 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"-([A-Za-z][A-Za-z\\-\\+0-9\\.]+)" options:0 error:&v162];
    v127 = v162;

    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v30 = v20;
    v31 = [v30 countByEnumeratingWithState:&v158 objects:v174 count:16];
    v130 = v18;
    if (!v31)
    {
      goto LABEL_84;
    }

    v32 = v31;
    v33 = *v159;
    v34 = *MEMORY[0x277CBF3A8];
    v35 = *(MEMORY[0x277CBF3A8] + 8);
    v36 = *MEMORY[0x277D66090];
    v134 = *(MEMORY[0x277D66090] + 8);
    v38 = *MEMORY[0x277D66088];
    v37 = *(MEMORY[0x277D66088] + 8);
    v141 = v11;
    v144 = v30;
    v145 = v15;
    v155 = *v159;
    while (1)
    {
      v39 = 0;
      v156 = v32;
      do
      {
        if (*v159 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v40 = *(*(&v158 + 1) + 8 * v39);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = objc_autoreleasePoolPush();
          v42 = [v11 pathForResource:v40 ofType:0];
          v157 = [v42 pathExtension];
          if (([MEMORY[0x277D65680] isValidImageFileExtension:?] & 1) == 0)
          {
            v67 = XBLogFileManifest();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              [(SBApplication *)v142 bundleIdentifier];
              v69 = v68 = v41;
              *buf = 138543874;
              *&buf[4] = v69;
              *&buf[12] = 2114;
              *&buf[14] = v40;
              *&buf[22] = 2114;
              *&buf[24] = v42;
              _os_log_error_impl(&dword_21ED4E000, v67, OS_LOG_TYPE_ERROR, "[legacy ingest] [%{public}@] Candidate: <%{public}@> references a path: <%{public}@> with an unsupported image file extension; skipping...", buf, 0x20u);

              v41 = v68;
            }

            goto LABEL_79;
          }

          v154 = v41;
          v43 = [v40 stringByDeletingPathExtension];
          v44 = [v43 stringByReplacingOccurrencesOfString:v150 withString:&stru_283094718];

          v45 = [v149 firstMatchInString:v44 options:0 range:{0, -[NSObject length](v44, "length")}];
          v46 = v45;
          v47 = 1.0;
          if (v45 && [v45 numberOfRanges] >= 2)
          {
            v48 = [v46 rangeAtIndex:1];
            v50 = [v44 substringWithRange:v48, v49];
            [v50 floatValue];
            v47 = v51;

            v52 = [v46 rangeAtIndex:0];
            v54 = [v44 stringByReplacingCharactersInRange:v52 withString:v53, &stru_283094718];

            v44 = v54;
          }

          v55 = [v148 firstMatchInString:v44 options:0 range:{0, -[NSObject length](v44, "length")}];
          v56 = v55;
          if (v55 && [v55 numberOfRanges] >= 2)
          {
            v57 = [v56 rangeAtIndex:1];
            v59 = [v44 substringWithRange:v57, v58];
            v60 = v37;
            v61 = v38;
            if (([v59 isEqualToString:@"ipad"] & 1) == 0)
            {
              v62 = [v59 isEqualToString:@"iphone"];
              if (v62)
              {
                v60 = v134;
              }

              else
              {
                v60 = v35;
              }

              if (v62)
              {
                v61 = v36;
              }

              else
              {
                v61 = v34;
              }
            }

            v63 = [v56 rangeAtIndex:0];
            v65 = [v44 stringByReplacingCharactersInRange:v63 withString:v64, &stru_283094718];

            v44 = v65;
          }

          else
          {
            v60 = v35;
            v61 = v34;
          }

          v70 = [v147 firstMatchInString:v44 options:0 range:{0, -[NSObject length](v44, "length")}];
          v151 = v70;
          v153 = v46;
          if (v70 && (v71 = v70, [v70 numberOfRanges] >= 2))
          {
            v72 = [v71 rangeAtIndex:1];
            v74 = [v44 substringWithRange:v72, v73];
            v75 = XBInterfaceOrientationForString();
            v76 = [v71 rangeAtIndex:0];
            v78 = [v44 stringByReplacingCharactersInRange:v76 withString:v77, &stru_283094718];

            v44 = v78;
          }

          else
          {
            v75 = 1;
          }

          v79 = [v146 firstMatchInString:v44 options:0 range:{0, -[NSObject length](v44, "length")}];
          v80 = v79;
          v152 = v56;
          if (!v79 || [v79 numberOfRanges] < 2)
          {
            v67 = v44;
            goto LABEL_43;
          }

          v81 = [v80 rangeAtIndex:1];
          v83 = [v44 substringWithRange:v81, v82];
          [v83 floatValue];
          v60 = v84;

          v85 = [v80 rangeAtIndex:0];
          v67 = [v44 stringByReplacingCharactersInRange:v85 withString:v86, &stru_283094718];

          v87 = [v137 firstMatchInString:v67 options:0 range:{0, -[NSObject length](v67, "length")}];
          v88 = v87;
          if (v87 && [v87 numberOfRanges] >= 2)
          {
            v89 = [v88 rangeAtIndex:1];
            v91 = [v67 substringWithRange:v89, v90];
            [v91 floatValue];
            v61 = v92;

            v93 = [v88 rangeAtIndex:0];
            v95 = [v67 stringByReplacingCharactersInRange:v93 withString:v94, &stru_283094718];

            v67 = v95;
            goto LABEL_42;
          }

          if (BSFloatEqualToFloat())
          {
            v61 = v36;
LABEL_42:

LABEL_43:
            v96 = [v143 firstMatchInString:v67 options:0 range:{0, -[NSObject length](v67, "length")}];
            v97 = v96;
            if (v96 && [v96 numberOfRanges]>= 2)
            {
              v98 = [v97 rangeAtIndex:1];
              v88 = [v67 substringWithRange:v98, v99];
              if (-[SBApplication isSystemApplication](v142, "isSystemApplication") || ([v133 urlSchemes], v100 = objc_claimAutoreleasedReturnValue(), v101 = objc_msgSend(v100, "containsObject:", v88), v100, (v101 & 1) != 0))
              {
                v102 = [v97 rangeAtIndex:0];
                v104 = [v67 stringByReplacingCharactersInRange:v102 withString:v103, &stru_283094718];

                v67 = v104;
                v11 = v141;
                goto LABEL_49;
              }

              v108 = XBLogFileManifest();
              if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
              {
LABEL_76:

                v11 = v141;
LABEL_77:
                v15 = v145;
LABEL_78:

                v30 = v144;
                v41 = v154;
LABEL_79:

                objc_autoreleasePoolPop(v41);
                v33 = v155;
                v32 = v156;
                goto LABEL_80;
              }

              v111 = [(SBApplication *)v142 bundleIdentifier];
              *buf = 138543874;
              *&buf[4] = v111;
              *&buf[12] = 2114;
              *&buf[14] = v88;
              *&buf[22] = 2114;
              *&buf[24] = v40;
              _os_log_error_impl(&dword_21ED4E000, v108, OS_LOG_TYPE_ERROR, "[legacy ingest] [%{public}@] Invalid scheme ('%{public}@') not declared in plist for %{public}@, skipping...", buf, 0x20u);
LABEL_61:

              goto LABEL_76;
            }

            v88 = 0;
LABEL_49:
            if (![v67 length])
            {
              if (v61 == v34)
              {
                v106 = v75;
                if (v60 == v35)
                {
                  v107 = XBLogFileManifest();
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
                  {
                    v123 = [(SBApplication *)v142 bundleIdentifier];
                    *buf = 138543618;
                    *&buf[4] = v123;
                    *&buf[12] = 2114;
                    *&buf[14] = v40;
                    _os_log_debug_impl(&dword_21ED4E000, v107, OS_LOG_TYPE_DEBUG, "[legacy ingest] [%{public}@] Need to load the image to get size for %{public}@", buf, 0x16u);

                    v106 = v75;
                  }

                  v108 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v42];
                  [v108 size];
                  if (v109 == v34 && v110 == v35)
                  {
                    v111 = XBLogFileManifest();
                    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                    {
                      v124 = [(SBApplication *)v142 bundleIdentifier];
                      *buf = 138543618;
                      *&buf[4] = v124;
                      *&buf[12] = 2114;
                      *&buf[14] = v40;
                      _os_log_error_impl(&dword_21ED4E000, v111, OS_LOG_TYPE_ERROR, "[legacy ingest] [%{public}@] zero image size for %{public}@", buf, 0x16u);
                    }

                    goto LABEL_61;
                  }

                  if ((v106 - 3) >= 2)
                  {
                    v60 = v110;
                  }

                  else
                  {
                    v60 = v109;
                  }

                  if ((v106 - 3) >= 2)
                  {
                    v61 = v109;
                  }

                  else
                  {
                    v61 = v110;
                  }
                }
              }

              else
              {
                v106 = v75;
              }

              v139 = v106;
              v113 = *(MEMORY[0x277CBF3A0] + 16);
              *buf = *MEMORY[0x277CBF3A0];
              *&buf[16] = v113;
              [(SBApplication *)v142 snapshotSizeAdjustedForLegacyStatusBarBasedOnSize:v106 interfaceOrientation:buf contentFrame:v61, v60];
              v115 = v114;
              v117 = v116;
              v118 = [v140 createSnapshotWithGroupID:v135];
              v119 = XBLogFileManifest();
              if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
              {
                v138 = [(SBApplication *)v142 bundleIdentifier];
                *v169 = 138543618;
                v170 = v138;
                v171 = 2114;
                v172 = v40;
                _os_log_debug_impl(&dword_21ED4E000, v119, OS_LOG_TYPE_DEBUG, "[legacy ingest] [%{public}@] going to save %{public}@", v169, 0x16u);
              }

              v120 = [(SBApplication *)v142 _normalizeSnapshotName:v150];
              [v118 setName:v120];

              [v118 setScheme:v88];
              [v118 setContentType:2];
              [v118 setFullScreen:1];
              [v118 setReferenceSize:{v115, v117}];
              [v118 setContentFrame:{*buf, *&buf[8], *&buf[16], *&buf[24]}];
              [v118 setInterfaceOrientation:v139];
              v15 = v145;
              [v118 setStatusBarSettings:v145];
              [v118 setBackgroundStyle:v136];
              v121 = objc_alloc_init(MEMORY[0x277D656D0]);
              [v121 setScale:v47];
              [v121 setOpaque:v136 == 0];
              [v140 saveSnapshot:v118 atPath:v42 withContext:v121];

              v11 = v141;
              goto LABEL_78;
            }

            v105 = XBLogFileManifest();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
            {
              v122 = [(SBApplication *)v142 bundleIdentifier];
              *buf = 138543874;
              *&buf[4] = v122;
              *&buf[12] = 2114;
              *&buf[14] = v67;
              *&buf[22] = 2114;
              *&buf[24] = v40;
              _os_log_error_impl(&dword_21ED4E000, v105, OS_LOG_TYPE_ERROR, "[legacy ingest] [%{public}@] Extranenous content ('%{public}@') left over after processing permitted modifiers in %{public}@, skipping...", buf, 0x20u);

              v11 = v141;
            }
          }

          else
          {
            v97 = XBLogFileManifest();
            if (!os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_77;
            }

            v105 = [(SBApplication *)v142 bundleIdentifier];
            *buf = 138543618;
            *&buf[4] = v105;
            *&buf[12] = 2114;
            *&buf[14] = v40;
            _os_log_error_impl(&dword_21ED4E000, v97, OS_LOG_TYPE_ERROR, "[legacy ingest] [%{public}@] Invalid size modifiers for %{public}@, skipping...", buf, 0x16u);
          }

          goto LABEL_77;
        }

        v66 = XBLogFileManifest();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v112 = [(SBApplication *)v142 bundleIdentifier];
          *buf = 138543618;
          *&buf[4] = v112;
          *&buf[12] = 2114;
          *&buf[14] = v40;
          _os_log_debug_impl(&dword_21ED4E000, v66, OS_LOG_TYPE_DEBUG, "[legacy ingest] [%{public}@] Candidate isn't a string: %{public}@, skipping...", buf, 0x16u);
        }

LABEL_80:
        ++v39;
      }

      while (v32 != v39);
      v125 = [v30 countByEnumeratingWithState:&v158 objects:v174 count:16];
      v32 = v125;
      if (!v125)
      {
LABEL_84:

        v7 = v140;
        v8 = v133;
        v12 = v135;
        v16 = v131;
        v17 = v132;
        if (![v30 count])
        {
          v126 = XBLogFileManifest();
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
          {
            [SBApplication(DefaultImage_ManifestIngestion) _ingestDefaultPNGsInManifest:v142 withLaunchImageBaseName:?];
          }

          v17 = v132;
        }

        v18 = v130;
        v19 = v127;
        break;
      }
    }
  }
}

- (void)_ingestInfoPlistImagesInManifest:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBApplication *)self info];
  v6 = [v5 launchImageInfo];
  if ([v6 count])
  {
    v50 = v4;
    v47 = [v4 defaultGroupIdentifier];
    v7 = [(SBApplication *)self classicAppScaled];
    v45 = [v5 backgroundStyle];
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 scale];
    v10 = v9;

    v57 = v10;
    v11 = objc_alloc_init(MEMORY[0x277D656C8]);
    [v11 setHidden:{objc_msgSend(v5, "statusBarHidden")}];
    v44 = v5;
    v46 = v11;
    [v11 setStyle:{objc_msgSend(v5, "defaultStatusBarStyle")}];
    v12 = objc_alloc(MEMORY[0x277CF0BB8]);
    v13 = self;
    v14 = [(SBApplication *)self info];
    v15 = [v14 bundleURL];
    v51 = [v12 initWithURL:v15];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v43 = v6;
    obj = v6;
    v16 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = v16;
    v18 = *v54;
    v19 = *MEMORY[0x277CBF3A8];
    v20 = *(MEMORY[0x277CBF3A8] + 8);
    v48 = v13;
    v49 = v7;
    while (1)
    {
      v21 = 0;
      do
      {
        if (*v54 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v53 + 1) + 8 * v21);
        v23 = objc_autoreleasePoolPush();
        [v22 size];
        if (v24 == v19 && v25 == v20)
        {
          v31 = XBLogFileManifest();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          v33 = [(SBApplication *)v13 bundleIdentifier];
          *buf = 138543618;
          v59 = v33;
          v60 = 2114;
          v61 = v22;
          _os_log_error_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_ERROR, "[.plist ingest] [%{public}@] skipping parameters: %{public}@ because it specifies a zero size.", buf, 0x16u);
          goto LABEL_22;
        }

        v27 = v24;
        v28 = v25;
        v29 = [v22 defaultPNGName];
        v30 = [v22 extension];
        v31 = [(SBApplication *)v13 _preferredImagePathInBundle:v51 baseResourceName:v29 ofType:v30 forMainScene:!v7 size:&v57 scale:v27 outScale:v28, v57];

        objc_opt_class();
        LOBYTE(v30) = objc_opt_isKindOfClass();
        v32 = XBLogFileManifest();
        v33 = v32;
        if ((v30 & 1) == 0)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v40 = [(SBApplication *)v13 bundleIdentifier];
            *buf = 138543874;
            v59 = v40;
            v60 = 2114;
            v61 = v31;
            v62 = 2114;
            v63 = v22;
            _os_log_error_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_ERROR, "[.plist ingest] [%{public}@] Incorrect image path type (requires NSString) in ('%{public}@'), skipping...\n%{public}@", buf, 0x20u);
          }

LABEL_22:

          goto LABEL_26;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v39 = [(SBApplication *)v13 bundleIdentifier];
          *buf = 138543618;
          v59 = v39;
          v60 = 2114;
          v61 = v22;
          _os_log_debug_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEBUG, "[.plist ingest] [%{public}@] going to save %{public}@", buf, 0x16u);
        }

        v34 = [v31 pathExtension];
        if ([MEMORY[0x277D65680] isValidImageFileExtension:v34])
        {
          v35 = [v50 createSnapshotWithGroupID:v47];
          [v35 setContentType:2];
          [v35 setFullScreen:1];
          [v35 setReferenceSize:v27, v28];
          [v35 setInterfaceOrientation:[v22 interfaceOrientation]];
          v36 = [v22 minOSVersionString];
          [v35 setRequiredOSVersion:v36];

          [v35 setStatusBarSettings:v46];
          [v35 setBackgroundStyle:v45];
          v37 = objc_alloc_init(MEMORY[0x277D656D0]);
          [v37 setScale:v57];
          [v37 setOpaque:v45 == 0];
          v38 = XBLogFileManifest();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v41 = [(SBApplication *)v48 bundleIdentifier];
            *buf = 138543618;
            v59 = v41;
            v60 = 2114;
            v61 = v35;
            _os_log_debug_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_DEBUG, "[.plist ingest] [%{public}@] going to save snapshot: %{public}@", buf, 0x16u);
          }

          [v50 saveSnapshot:v35 atPath:v31 withContext:v37];
          v13 = v48;
        }

        else
        {
          v35 = XBLogFileManifest();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v42 = [(SBApplication *)v13 bundleIdentifier];
            *buf = 138543618;
            v59 = v42;
            v60 = 2114;
            v61 = v31;
            _os_log_error_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_ERROR, "[.plist ingest] [%{public}@] references a path: <%{public}@> with an unsupported image file extension; skipping...", buf, 0x16u);
          }
        }

        v7 = v49;
LABEL_26:

        objc_autoreleasePoolPop(v23);
        ++v21;
      }

      while (v17 != v21);
      v17 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
      if (!v17)
      {
LABEL_28:

        v4 = v50;
        v6 = v43;
        v5 = v44;
        goto LABEL_31;
      }
    }
  }

  v47 = XBLogFileManifest();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    [SBApplication(DefaultImage_ManifestIngestion) _ingestInfoPlistImagesInManifest:?];
  }

LABEL_31:
}

- (id)_preferredImagePathInBundle:(id)a3 baseResourceName:(id)a4 ofType:(id)a5 forMainScene:(BOOL)a6 size:(CGSize)a7 scale:(double)a8 outScale:(double *)a9
{
  height = a7.height;
  width = a7.width;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = __sb__runningInSpringBoard();
  v21 = v20;
  if (v20)
  {
    if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
    {
LABEL_30:
      v30 = SBFModifiedImageNameForName();
      v31 = [(SBApplication *)self _preferredImagePathByScaleInBundle:v17 resourceName:v30 ofType:v19 scale:a9 outScale:a8];

      if (v31)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v9 = [MEMORY[0x277D75418] currentDevice];
    if (![v9 userInterfaceIdiom])
    {

      goto LABEL_30;
    }
  }

  v22 = __sb__runningInSpringBoard();
  if (v22)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v23 = 0;
      v35 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v34 = [MEMORY[0x277D75418] currentDevice];
    if ([v34 userInterfaceIdiom] != 1)
    {
      v23 = 0;
      v35 = 1;
      goto LABEL_17;
    }
  }

  v35 = v22 ^ 1;
  v24 = __sb__runningInSpringBoard();
  if (v24)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v33 = [MEMORY[0x277D759A0] mainScreen];
    [v33 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v25 >= *(MEMORY[0x277D66E30] + 280))
  {
    v29 = 1;
    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    if (!v35)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v23 = v24 ^ 1;
LABEL_17:
  v26 = [MEMORY[0x277D759A0] mainScreen];
  [v26 _referenceBounds];
  v29 = height != v28 || width != v27;

  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_21:

  if (v35)
  {
LABEL_25:
  }

LABEL_26:
  if (v21)
  {
    if (v29)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (v29)
    {
      goto LABEL_30;
    }
  }

LABEL_31:
  v31 = [(SBApplication *)self _preferredImagePathByScaleInBundle:v17 resourceName:v18 ofType:v19 scale:a9 outScale:a8];
LABEL_32:

  return v31;
}

- (id)_preferredImagePathByScaleInBundle:(id)a3 resourceName:(id)a4 ofType:(id)a5 scale:(double)a6 outScale:(double *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = &_preferredImagePathByScaleInBundle_resourceName_ofType_scale_outScale____suffixIndices1;
  if (a6 == 3.0)
  {
    v14 = &_preferredImagePathByScaleInBundle_resourceName_ofType_scale_outScale____suffixIndices3;
  }

  if (a6 == 2.0)
  {
    v15 = &_preferredImagePathByScaleInBundle_resourceName_ofType_scale_outScale____suffixIndices2;
  }

  else
  {
    v15 = v14;
  }

  v16 = *v15;
  if (*v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v23 = a7;
    v24 = v12;
    while (2)
    {
      ++v15;
      v18 = _preferredImagePathByScaleInBundle_resourceName_ofType_scale_outScale____suffixes[v16];
      v19 = [v12 stringByAppendingString:v18];
      for (i = 0; i != 3; ++i)
      {
        v21 = [v19 stringByAppendingString:{_preferredImagePathByScaleInBundle_resourceName_ofType_scale_outScale____deviceModifiers[i], v23}];
        v17 = [v11 pathForResource:v21 ofType:v13];

        if (v17)
        {
          if (v23)
          {
            *v23 = _preferredImagePathByScaleInBundle_resourceName_ofType_scale_outScale____suffixScales[v16];
          }

          v12 = v24;
          goto LABEL_17;
        }
      }

      v17 = 0;
      v16 = *v15;
      v12 = v24;
      if (*v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v17;
}

- (BOOL)isSpringBoard
{
  v2 = [(SBApplication *)self bundleIdentifier];
  v3 = FBSystemAppBundleID();
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)isMobilePhone
{
  v2 = [(SBApplication *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.mobilephone"];

  return v3;
}

- (BOOL)isFaceTime
{
  v2 = [(SBApplication *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.facetime"];

  return v3;
}

- (void)_classicModeForHostingExtensionContainedInApplication:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if ([objc_opt_class() KJHKJHw39rq9w87q903475q0983rskjd])
    {
      v4 = -1;
    }

    else
    {
      v5 = objc_opt_class();
      v6 = [MEMORY[0x277D75418] currentDevice];
      v7 = [v6 userInterfaceIdiom];

      if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v8 = [a1 _classicAppScaledPhoneOnPad] ^ 1;
      }

      else
      {
        v8 = 0;
      }

      v4 = [v5 _bestAvailableClassicModeForHostingExtensionContainedInApplication:v8];
    }

    if (([(SBApplication *)v3 _bypassesClassicMode]& 1) != 0 || (v4 + 1) <= 1)
    {
      a1 = [a1 _classicMode];
    }

    else
    {
      v9 = [MEMORY[0x277D759A0] mainScreen];
      v10 = [v9 displayConfiguration];

      v11 = [a1 _classicMode];
      [objc_opt_class() _defaultLaunchingSizeForDisplayConfiguration:v10 classicMode:v11];
      [objc_opt_class() _defaultLaunchingSizeForDisplayConfiguration:v10 classicMode:v4];
      if (BSSizeLessThanSize())
      {
        a1 = v11;
      }

      else
      {
        a1 = v4;
      }
    }
  }

  return a1;
}

- (id)_classicModeForHostingExtensionContainedInThisApplicationInUnknownHostingHierarchy
{
  if (result)
  {
    v1 = result;
    if ([objc_opt_class() KJHKJHw39rq9w87q903475q0983rskjd])
    {
      v2 = -1;
    }

    else
    {
      v3 = objc_opt_class();
      v4 = [MEMORY[0x277D75418] currentDevice];
      v5 = [v4 userInterfaceIdiom];

      v2 = [v3 _bestAvailableClassicModeForHostingExtensionContainedInApplication:(v5 & 0xFFFFFFFFFFFFFFFBLL) == 1];
    }

    if ([v1[21] disablesClassicMode] & 1) != 0 || (objc_msgSend(v1[21], "hasViewServicesEntitlement"))
    {
      return 0;
    }

    else
    {
      v6 = [v1 isSystemApplication];
      if ((v2 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v7 = 0;
      }

      else
      {
        v7 = v2;
      }

      if (v6)
      {
        return 0;
      }

      else
      {
        return v7;
      }
    }
  }

  return result;
}

- (uint64_t)_screenTypeForClassicMode:(uint64_t)a1
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  if ((a2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = +[SBPlatformController sharedInstance];
    v5 = [v4 isRoundCornerPad];
    v6 = [v4 isRoundCornerPhone];
    v7 = [v2 info];
    v8 = [v7 isAzulLinked];

    if (v8 || ((v5 | v6) & 1) == 0)
    {
      v13 = SBHScreenTypeForCurrentDevice();
      v14 = [objc_opt_class() _canonicalScreenTypeForClassicMode:a2];
      v2 = [objc_opt_class() _niceScreenTypeForClassicType:v14 matchingAValidDisplayZoomModeOnScreenType:v13];
    }

    else
    {
      v9 = SBApplicationClassicModeExpectsRoundedCorners(a2);
      v10 = SBApplicationClassicModeRepresentsPad(a2);
      v11 = SBApplicationClassicModeRepresentsPhone(a2);
      if (v5)
      {
        if (v10 && v9)
        {
          v2 = 111;
        }

        else if ((v11 & v9) != 0)
        {
          v2 = 3;
        }

        else
        {
          v2 = 100;
        }
      }

      else
      {
        if ((v11 & 1) == 0)
        {
          v15 = [MEMORY[0x277CCA890] currentHandler];
          [v15 handleFailureInMethod:sel__screenTypeForClassicMode_ object:v2 file:@"SBApplication+Classic.m" lineNumber:839 description:@"Not valid to have non-phone classic modes on a phone"];
        }

        if (v9)
        {
          v2 = 3;
        }

        else
        {
          v2 = 1;
        }
      }
    }

    return v2;
  }

  return SBHScreenTypeForCurrentDevice();
}

- (uint64_t)_isNewEnoughToKnowAboutRoundPads
{
  if (result)
  {
    return [*(result + 168) isPeaceBLinked];
  }

  return result;
}

- (uint64_t)_isNewEnoughToKnowAbout2020Phones
{
  if (result)
  {
    v1 = result;
    if ([*(result + 168) isAzulHWLinked])
    {
      return 1;
    }

    else
    {
      result = [*(v1 + 168) isAzulLinked];
      if (result)
      {
        v2 = *(v1 + 168);

        return [v2 isAppleApplication];
      }
    }
  }

  return result;
}

- (void)_calculateSupportedTypesForSplashBoard
{
  v3 = [(SBApplicationInfo *)self->_appInfo isMonarchLinked];
  v4 = [(SBApplicationInfo *)self->_appInfo isTigrisLinked];
  v29 = [(SBApplicationInfo *)self->_appInfo isPeaceLinked];
  v5 = [(SBApplicationInfo *)self->_appInfo isYukonLinked];
  v6 = [(SBApplicationInfo *)self->_appInfo isAzulLinked];
  isNewEnoughToKnowAbout2020 = [(SBApplication *)self _isNewEnoughToKnowAbout2020Phones];
  v7 = [(SBApplicationInfo *)self->_appInfo isPeaceBLinked];
  v8 = [(SBApplicationInfo *)self->_appInfo isSkyLinked];
  v9 = [(SBApplicationInfo *)self->_appInfo isSydneyLinked];
  v30 = [(SBApplicationInfo *)self->_appInfo isCrystalLinked];
  v10 = [(SBApplicationInfo *)self->_appInfo isLuckLinked];
  if ([(SBApplication *)self _supportsApplicationType:2])
  {
    v11 = [(SBApplicationInfo *)self->_appInfo wantsFullScreen];
    if (v11)
    {
      v12 = v4;
    }

    else
    {
      v12 = v3;
    }

    if (v11)
    {
      v13 = v7;
    }

    else
    {
      v13 = v3;
    }

    if (v11)
    {
      v14 = v6;
    }

    else
    {
      v14 = v3;
    }

    if (v11)
    {
      v15 = v5;
    }

    else
    {
      v15 = v3;
    }

    if (v11)
    {
      v16 = v8;
    }

    else
    {
      v16 = v3;
    }

    if (v11)
    {
      v17 = v9;
    }

    else
    {
      v17 = v3;
    }

    v18 = 2;
    if (v3)
    {
      v18 = 134217730;
    }

    if (v12)
    {
      v19 = self->_supportedTypes | v18 | 0x400000;
    }

    else
    {
      v19 = self->_supportedTypes | v18;
    }

    if (v13)
    {
      v19 |= 0x10820000uLL;
    }

    if (v14)
    {
      v19 |= 0x100000uLL;
    }

    if (v15)
    {
      v19 |= 0x80000uLL;
    }

    if (v16)
    {
      v19 |= 0x10000uLL;
    }

    self->_supportedTypes = v19;
    if (v17)
    {
      self->_supportedTypes = v19 | 0x21200000;
      if (!v15)
      {
        goto LABEL_39;
      }

      v20 = -417071104;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_39;
      }

      v20 = 1107558400;
    }

    self->_supportedTypes = v19 | v20;
  }

LABEL_39:
  if ([(SBApplication *)self _supportsApplicationType:1])
  {
    v21 = 29;
    if (v4)
    {
      v21 = 93;
    }

    v22 = self->_supportedTypes | v21;
    v23 = v22 | 0x400;
    if (!v29)
    {
      v23 = v22;
    }

    self->_supportedTypes = v23;
    v24 = v9 || v30;
    if (((v10 | isNewEnoughToKnowAbout2020 | v6) & 1) != 0 || v24)
    {
      v25 = 32;
      if (!v6)
      {
        v25 = 0;
      }

      if (isNewEnoughToKnowAbout2020)
      {
        v25 = 2208;
      }

      v26 = v23 | v25;
      v27 = v26 | 0x1100;
      if (!v9)
      {
        v27 = v26;
      }

      if (v30)
      {
        v27 |= 0x2200uLL;
      }

      if (v24)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      if (v10)
      {
        v28 = v27 | 0x4000;
      }

      self->_supportedTypes = v28;
    }
  }
}

+ (void)_unobscuredScreenTypeForScreenType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = SBHStringForScreenType();
  v5 = 138412546;
  v6 = v4;
  v7 = 2048;
  v8 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Unknown classic mode used: %@ (%ld)", &v5, 0x16u);
}

void __86__SBApplication_Snapshots___xbactivity_saveSnapshotForSceneHandle_context_completion___block_invoke_67_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  [*(a1 + 40) timeIntervalSinceNow];
  v5 = 138543618;
  v6 = v3;
  v7 = 2048;
  v8 = -v4;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Finished writing snapshots after %.2f sec", &v5, 0x16u);
}

- (void)initWithApplicationInfo:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplication.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"applicationInfo"}];
}

- (void)takeBackgroundActivityAttribution:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBApplication takeBackgroundActivityAttribution:]"];
  [v1 handleFailureInFunction:v0 file:@"SBApplication.m" lineNumber:529 description:@"this call must be made on the main thread"];
}

- (void)releaseBackgroundActivityAttribution:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBApplication releaseBackgroundActivityAttribution:]"];
  [v1 handleFailureInFunction:v0 file:@"SBApplication.m" lineNumber:558 description:@"this call must be made on the main thread"];
}

- (void)_processWillLaunch:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplication.m" lineNumber:864 description:{@"Invalid parameter not satisfying: %@", @"process"}];
}

@end