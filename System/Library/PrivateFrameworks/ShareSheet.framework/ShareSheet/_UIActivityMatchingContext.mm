@interface _UIActivityMatchingContext
- (BOOL)shouldExcludeActivity:(id)activity;
- (NSString)sourceApplicationIdentifier;
- (_UIActivityMatchingContext)initWithActivityItems:(id)items itemValues:(id)values;
- (_UIActivityMatchingContext)initWithActivityItems:(id)items itemValues:(id)values collaborationItems:(id)collaborationItems;
- (id)activitiesByFilteringExcludedActivities:(id)activities;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setHostAuditToken:(id *)token;
@end

@implementation _UIActivityMatchingContext

- (id)description
{
  v28 = objc_opt_class();
  NSAppendPrintF();
  v36 = 0;
  v29 = [(_UIActivityMatchingContext *)self activityItemValueClasses:v28];
  NSAppendPrintF();
  v3 = v36;

  if ([(_UIActivityMatchingContext *)self allowMatchingBuiltInActivities])
  {
    NSAppendPrintF();
    v4 = v3;

    v3 = v4;
  }

  if ([(_UIActivityMatchingContext *)self allowMatchingExtensionActivities])
  {
    NSAppendPrintF();
    v5 = v3;

    v3 = v5;
  }

  testingReferenceSnapshot = [(_UIActivityMatchingContext *)self testingReferenceSnapshot];
  if (testingReferenceSnapshot)
  {
    v7 = testingReferenceSnapshot;
    v8 = _os_feature_enabled_impl();

    if (v8)
    {
      NSAppendPrintF();
      v9 = v3;

      v3 = v9;
    }
  }

  if ([(_UIActivityMatchingContext *)self isContentManaged])
  {
    NSAppendPrintF();
    v10 = v3;

    v3 = v10;
  }

  if ([(_UIActivityMatchingContext *)self isCollaborative])
  {
    collaborationType = [(_UIActivityMatchingContext *)self collaborationType];
    [(_UIActivityMatchingContext *)self collaborationIsPostShare];
    v35 = v30 = collaborationType;
    NSAppendPrintF();
    v12 = v3;

    v3 = v12;
  }

  if ([(_UIActivityMatchingContext *)self shouldMatchOnlyUserElectedExtensions:v30])
  {
    NSAppendPrintF();
    v13 = v3;

    v3 = v13;
  }

  if ([(_UIActivityMatchingContext *)self shouldExcludeiCloudAddToDriveActivity])
  {
    NSAppendPrintF();
    v14 = v3;

    v3 = v14;
  }

  if ([(_UIActivityMatchingContext *)self shouldExcludeiCloudSharingActivity])
  {
    NSAppendPrintF();
    v15 = v3;

    v3 = v15;
  }

  if ([(_UIActivityMatchingContext *)self canExcludeExtensionActivities])
  {
    NSAppendPrintF();
    v16 = v3;

    v3 = v16;
  }

  if ([(_UIActivityMatchingContext *)self whitelistActionActivitiesOnly])
  {
    NSAppendPrintF();
    v17 = v3;

    v3 = v17;
  }

  includedActivityTypes = [(_UIActivityMatchingContext *)self includedActivityTypes];
  v19 = [includedActivityTypes count];

  if (v19)
  {
    includedActivityTypes2 = [(_UIActivityMatchingContext *)self includedActivityTypes];
    NSAppendPrintF();
    v20 = v3;

    v3 = v20;
  }

  excludedActivityTypes = [(_UIActivityMatchingContext *)self excludedActivityTypes];
  v22 = [excludedActivityTypes count];

  if (v22)
  {
    excludedActivityTypes2 = [(_UIActivityMatchingContext *)self excludedActivityTypes];
    NSAppendPrintF();
    v23 = v3;

    v3 = v23;
  }

  if ([(_UIActivityMatchingContext *)self excludedActivityCategories])
  {
    excludedActivityCategories = [(_UIActivityMatchingContext *)self excludedActivityCategories];
    NSAppendPrintF();
    v24 = v3;

    v3 = v24;
  }

  activityItemValueExtensionMatchingDictionaries = [(_UIActivityMatchingContext *)self activityItemValueExtensionMatchingDictionaries];
  NSAppendPrintF();
  v25 = v3;

  NSAppendPrintF();
  v26 = v25;

  return v25;
}

- (NSString)sourceApplicationIdentifier
{
  if ([(_UIActivityMatchingContext *)self hostAuditToken])
  {
    bundleIdentifier = _ShareSheetBundleIDFromAuditToken();
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  return bundleIdentifier;
}

- (_UIActivityMatchingContext)initWithActivityItems:(id)items itemValues:(id)values collaborationItems:(id)collaborationItems
{
  collaborationItemsCopy = collaborationItems;
  v9 = [(_UIActivityMatchingContext *)self initWithActivityItems:items itemValues:values];
  if (v9)
  {
    v10 = [collaborationItemsCopy copy];
    collaborationItems = v9->_collaborationItems;
    v9->_collaborationItems = v10;
  }

  return v9;
}

- (_UIActivityMatchingContext)initWithActivityItems:(id)items itemValues:(id)values
{
  itemsCopy = items;
  valuesCopy = values;
  v13.receiver = self;
  v13.super_class = _UIActivityMatchingContext;
  v9 = [(_UIActivityMatchingContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityItems, items);
    objc_storeStrong(&v10->_activityItemValues, values);
    v10->_allowMatchingBuiltInActivities = 1;
    v10->_canExcludeExtensionActivities = 0;
    memset(v12, 0, sizeof(v12));
    _SharingUIAuditTokenForCurrentProcess(v12);
    [(_UIActivityMatchingContext *)v10 setHostAuditToken:v12];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [_UIActivityMatchingContext alloc];
  activityItems = [(_UIActivityMatchingContext *)self activityItems];
  v7 = [activityItems copyWithZone:zone];
  activityItemValues = [(_UIActivityMatchingContext *)self activityItemValues];
  v9 = [activityItemValues copyWithZone:zone];
  v10 = [(_UIActivityMatchingContext *)v5 initWithActivityItems:v7 itemValues:v9];

  activityItemValueClasses = [(_UIActivityMatchingContext *)self activityItemValueClasses];
  v12 = [activityItemValueClasses copyWithZone:zone];
  [(_UIActivityMatchingContext *)v10 setActivityItemValueClasses:v12];

  activityItemValueExtensionMatchingDictionaries = [(_UIActivityMatchingContext *)self activityItemValueExtensionMatchingDictionaries];
  v14 = [activityItemValueExtensionMatchingDictionaries copyWithZone:zone];
  [(_UIActivityMatchingContext *)v10 setActivityItemValueExtensionMatchingDictionaries:v14];

  [(_UIActivityMatchingContext *)v10 setAllowMatchingBuiltInActivities:[(_UIActivityMatchingContext *)self allowMatchingBuiltInActivities]];
  [(_UIActivityMatchingContext *)v10 setAllowMatchingExtensionActivities:[(_UIActivityMatchingContext *)self allowMatchingExtensionActivities]];
  externalMatchBuiltinOrderedActivities = [(_UIActivityMatchingContext *)self externalMatchBuiltinOrderedActivities];
  [(_UIActivityMatchingContext *)v10 setExternalMatchBuiltinOrderedActivities:externalMatchBuiltinOrderedActivities];

  activityTypesGeneratedByDelegate = [(_UIActivityMatchingContext *)self activityTypesGeneratedByDelegate];
  [(_UIActivityMatchingContext *)v10 setActivityTypesGeneratedByDelegate:activityTypesGeneratedByDelegate];

  [(_UIActivityMatchingContext *)v10 setIsContentManaged:[(_UIActivityMatchingContext *)self isContentManaged]];
  [(_UIActivityMatchingContext *)v10 setIsCollaborative:[(_UIActivityMatchingContext *)self isCollaborative]];
  collaborationType = [(_UIActivityMatchingContext *)self collaborationType];
  [(_UIActivityMatchingContext *)v10 setCollaborationType:collaborationType];

  collaborationIsPostShare = [(_UIActivityMatchingContext *)self collaborationIsPostShare];
  [(_UIActivityMatchingContext *)v10 setCollaborationIsPostShare:collaborationIsPostShare];

  [(_UIActivityMatchingContext *)v10 setShouldMatchOnlyUserElectedExtensions:[(_UIActivityMatchingContext *)self shouldMatchOnlyUserElectedExtensions]];
  [(_UIActivityMatchingContext *)v10 setShouldExcludeiCloudAddToDriveActivity:[(_UIActivityMatchingContext *)self shouldExcludeiCloudAddToDriveActivity]];
  [(_UIActivityMatchingContext *)v10 setShouldExcludeiCloudSharingActivity:[(_UIActivityMatchingContext *)self shouldExcludeiCloudSharingActivity]];
  [(_UIActivityMatchingContext *)v10 setCanExcludeExtensionActivities:[(_UIActivityMatchingContext *)self canExcludeExtensionActivities]];
  [(_UIActivityMatchingContext *)v10 setWhitelistActionActivitiesOnly:[(_UIActivityMatchingContext *)self whitelistActionActivitiesOnly]];
  activityTypeOrder = [(_UIActivityMatchingContext *)self activityTypeOrder];
  v20 = [activityTypeOrder copyWithZone:zone];
  [(_UIActivityMatchingContext *)v10 setActivityTypeOrder:v20];

  includedActivityTypes = [(_UIActivityMatchingContext *)self includedActivityTypes];
  v22 = [includedActivityTypes copyWithZone:zone];
  [(_UIActivityMatchingContext *)v10 setIncludedActivityTypes:v22];

  excludedActivityTypes = [(_UIActivityMatchingContext *)self excludedActivityTypes];
  v24 = [excludedActivityTypes copyWithZone:zone];
  [(_UIActivityMatchingContext *)v10 setExcludedActivityTypes:v24];

  [(_UIActivityMatchingContext *)v10 setExcludedActivityCategories:[(_UIActivityMatchingContext *)self excludedActivityCategories]];
  [(_UIActivityMatchingContext *)v10 setSharingStyle:[(_UIActivityMatchingContext *)self sharingStyle]];
  currentlySelectedActivity = [(_UIActivityMatchingContext *)self currentlySelectedActivity];
  [(_UIActivityMatchingContext *)v10 setCurrentlySelectedActivity:currentlySelectedActivity];

  applicationActivities = [(_UIActivityMatchingContext *)self applicationActivities];
  v27 = [applicationActivities copyWithZone:zone];
  [(_UIActivityMatchingContext *)v10 setApplicationActivities:v27];

  hostAuditTokenData = [(_UIActivityMatchingContext *)self hostAuditTokenData];
  hostAuditTokenData = v10->_hostAuditTokenData;
  v10->_hostAuditTokenData = hostAuditTokenData;

  prematchedExtensionActivities = [(_UIActivityMatchingContext *)self prematchedExtensionActivities];
  [(_UIActivityMatchingContext *)v10 setPrematchedExtensionActivities:prematchedExtensionActivities];

  testingReferenceSnapshot = [(_UIActivityMatchingContext *)self testingReferenceSnapshot];
  [(_UIActivityMatchingContext *)v10 setTestingReferenceSnapshot:testingReferenceSnapshot];

  return v10;
}

- (BOOL)shouldExcludeActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  if ([activityType isEqualToString:@"com.apple.UIKit.activity.Share"])
  {
    sharingStyle = [(_UIActivityMatchingContext *)self sharingStyle];

    if (sharingStyle != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  activityType2 = [activityCopy activityType];
  if ([activityType2 isEqualToString:@"com.apple.UIKit.activity.CloudSharing"])
  {
    shouldExcludeiCloudSharingActivity = [(_UIActivityMatchingContext *)self shouldExcludeiCloudSharingActivity];

    if (shouldExcludeiCloudSharingActivity)
    {
LABEL_7:
      v9 = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  excludedActivityTypes = [(_UIActivityMatchingContext *)self excludedActivityTypes];
  activityType3 = [activityCopy activityType];
  if (([excludedActivityTypes containsObject:activityType3] & 1) != 0 || (v12 = 1 << objc_msgSend(objc_opt_class(), "activityCategory"), (-[_UIActivityMatchingContext excludedActivityCategories](self, "excludedActivityCategories") & v12) != 0))
  {
    v9 = [activityCopy _canBeExcludeWhenMatchingWithContext:self];
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  return v9;
}

- (id)activitiesByFilteringExcludedActivities:(id)activities
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70___UIActivityMatchingContext_activitiesByFilteringExcludedActivities___block_invoke;
  v7[3] = &unk_1E71FAC90;
  v7[4] = self;
  activitiesCopy = activities;
  v4 = [activitiesCopy indexesOfObjectsPassingTest:v7];
  v5 = [activitiesCopy objectsAtIndexes:v4];

  return v5;
}

- (void)setHostAuditToken:(id *)token
{
  if (token)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:token length:32];
  }

  else
  {
    v4 = 0;
  }

  hostAuditTokenData = self->_hostAuditTokenData;
  self->_hostAuditTokenData = v4;
}

@end