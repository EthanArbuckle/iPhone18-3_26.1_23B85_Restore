@interface _UIActivityMatchingContext
- (BOOL)shouldExcludeActivity:(id)a3;
- (NSString)sourceApplicationIdentifier;
- (_UIActivityMatchingContext)initWithActivityItems:(id)a3 itemValues:(id)a4;
- (_UIActivityMatchingContext)initWithActivityItems:(id)a3 itemValues:(id)a4 collaborationItems:(id)a5;
- (id)activitiesByFilteringExcludedActivities:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setHostAuditToken:(id *)a3;
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

  v6 = [(_UIActivityMatchingContext *)self testingReferenceSnapshot];
  if (v6)
  {
    v7 = v6;
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
    v11 = [(_UIActivityMatchingContext *)self collaborationType];
    [(_UIActivityMatchingContext *)self collaborationIsPostShare];
    v35 = v30 = v11;
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

  v18 = [(_UIActivityMatchingContext *)self includedActivityTypes];
  v19 = [v18 count];

  if (v19)
  {
    v31 = [(_UIActivityMatchingContext *)self includedActivityTypes];
    NSAppendPrintF();
    v20 = v3;

    v3 = v20;
  }

  v21 = [(_UIActivityMatchingContext *)self excludedActivityTypes];
  v22 = [v21 count];

  if (v22)
  {
    v32 = [(_UIActivityMatchingContext *)self excludedActivityTypes];
    NSAppendPrintF();
    v23 = v3;

    v3 = v23;
  }

  if ([(_UIActivityMatchingContext *)self excludedActivityCategories])
  {
    v33 = [(_UIActivityMatchingContext *)self excludedActivityCategories];
    NSAppendPrintF();
    v24 = v3;

    v3 = v24;
  }

  v34 = [(_UIActivityMatchingContext *)self activityItemValueExtensionMatchingDictionaries];
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
    v2 = _ShareSheetBundleIDFromAuditToken();
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v3 bundleIdentifier];
  }

  return v2;
}

- (_UIActivityMatchingContext)initWithActivityItems:(id)a3 itemValues:(id)a4 collaborationItems:(id)a5
{
  v8 = a5;
  v9 = [(_UIActivityMatchingContext *)self initWithActivityItems:a3 itemValues:a4];
  if (v9)
  {
    v10 = [v8 copy];
    collaborationItems = v9->_collaborationItems;
    v9->_collaborationItems = v10;
  }

  return v9;
}

- (_UIActivityMatchingContext)initWithActivityItems:(id)a3 itemValues:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _UIActivityMatchingContext;
  v9 = [(_UIActivityMatchingContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityItems, a3);
    objc_storeStrong(&v10->_activityItemValues, a4);
    v10->_allowMatchingBuiltInActivities = 1;
    v10->_canExcludeExtensionActivities = 0;
    memset(v12, 0, sizeof(v12));
    _SharingUIAuditTokenForCurrentProcess(v12);
    [(_UIActivityMatchingContext *)v10 setHostAuditToken:v12];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [_UIActivityMatchingContext alloc];
  v6 = [(_UIActivityMatchingContext *)self activityItems];
  v7 = [v6 copyWithZone:a3];
  v8 = [(_UIActivityMatchingContext *)self activityItemValues];
  v9 = [v8 copyWithZone:a3];
  v10 = [(_UIActivityMatchingContext *)v5 initWithActivityItems:v7 itemValues:v9];

  v11 = [(_UIActivityMatchingContext *)self activityItemValueClasses];
  v12 = [v11 copyWithZone:a3];
  [(_UIActivityMatchingContext *)v10 setActivityItemValueClasses:v12];

  v13 = [(_UIActivityMatchingContext *)self activityItemValueExtensionMatchingDictionaries];
  v14 = [v13 copyWithZone:a3];
  [(_UIActivityMatchingContext *)v10 setActivityItemValueExtensionMatchingDictionaries:v14];

  [(_UIActivityMatchingContext *)v10 setAllowMatchingBuiltInActivities:[(_UIActivityMatchingContext *)self allowMatchingBuiltInActivities]];
  [(_UIActivityMatchingContext *)v10 setAllowMatchingExtensionActivities:[(_UIActivityMatchingContext *)self allowMatchingExtensionActivities]];
  v15 = [(_UIActivityMatchingContext *)self externalMatchBuiltinOrderedActivities];
  [(_UIActivityMatchingContext *)v10 setExternalMatchBuiltinOrderedActivities:v15];

  v16 = [(_UIActivityMatchingContext *)self activityTypesGeneratedByDelegate];
  [(_UIActivityMatchingContext *)v10 setActivityTypesGeneratedByDelegate:v16];

  [(_UIActivityMatchingContext *)v10 setIsContentManaged:[(_UIActivityMatchingContext *)self isContentManaged]];
  [(_UIActivityMatchingContext *)v10 setIsCollaborative:[(_UIActivityMatchingContext *)self isCollaborative]];
  v17 = [(_UIActivityMatchingContext *)self collaborationType];
  [(_UIActivityMatchingContext *)v10 setCollaborationType:v17];

  v18 = [(_UIActivityMatchingContext *)self collaborationIsPostShare];
  [(_UIActivityMatchingContext *)v10 setCollaborationIsPostShare:v18];

  [(_UIActivityMatchingContext *)v10 setShouldMatchOnlyUserElectedExtensions:[(_UIActivityMatchingContext *)self shouldMatchOnlyUserElectedExtensions]];
  [(_UIActivityMatchingContext *)v10 setShouldExcludeiCloudAddToDriveActivity:[(_UIActivityMatchingContext *)self shouldExcludeiCloudAddToDriveActivity]];
  [(_UIActivityMatchingContext *)v10 setShouldExcludeiCloudSharingActivity:[(_UIActivityMatchingContext *)self shouldExcludeiCloudSharingActivity]];
  [(_UIActivityMatchingContext *)v10 setCanExcludeExtensionActivities:[(_UIActivityMatchingContext *)self canExcludeExtensionActivities]];
  [(_UIActivityMatchingContext *)v10 setWhitelistActionActivitiesOnly:[(_UIActivityMatchingContext *)self whitelistActionActivitiesOnly]];
  v19 = [(_UIActivityMatchingContext *)self activityTypeOrder];
  v20 = [v19 copyWithZone:a3];
  [(_UIActivityMatchingContext *)v10 setActivityTypeOrder:v20];

  v21 = [(_UIActivityMatchingContext *)self includedActivityTypes];
  v22 = [v21 copyWithZone:a3];
  [(_UIActivityMatchingContext *)v10 setIncludedActivityTypes:v22];

  v23 = [(_UIActivityMatchingContext *)self excludedActivityTypes];
  v24 = [v23 copyWithZone:a3];
  [(_UIActivityMatchingContext *)v10 setExcludedActivityTypes:v24];

  [(_UIActivityMatchingContext *)v10 setExcludedActivityCategories:[(_UIActivityMatchingContext *)self excludedActivityCategories]];
  [(_UIActivityMatchingContext *)v10 setSharingStyle:[(_UIActivityMatchingContext *)self sharingStyle]];
  v25 = [(_UIActivityMatchingContext *)self currentlySelectedActivity];
  [(_UIActivityMatchingContext *)v10 setCurrentlySelectedActivity:v25];

  v26 = [(_UIActivityMatchingContext *)self applicationActivities];
  v27 = [v26 copyWithZone:a3];
  [(_UIActivityMatchingContext *)v10 setApplicationActivities:v27];

  v28 = [(_UIActivityMatchingContext *)self hostAuditTokenData];
  hostAuditTokenData = v10->_hostAuditTokenData;
  v10->_hostAuditTokenData = v28;

  v30 = [(_UIActivityMatchingContext *)self prematchedExtensionActivities];
  [(_UIActivityMatchingContext *)v10 setPrematchedExtensionActivities:v30];

  v31 = [(_UIActivityMatchingContext *)self testingReferenceSnapshot];
  [(_UIActivityMatchingContext *)v10 setTestingReferenceSnapshot:v31];

  return v10;
}

- (BOOL)shouldExcludeActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  if ([v5 isEqualToString:@"com.apple.UIKit.activity.Share"])
  {
    v6 = [(_UIActivityMatchingContext *)self sharingStyle];

    if (v6 != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = [v4 activityType];
  if ([v7 isEqualToString:@"com.apple.UIKit.activity.CloudSharing"])
  {
    v8 = [(_UIActivityMatchingContext *)self shouldExcludeiCloudSharingActivity];

    if (v8)
    {
LABEL_7:
      v9 = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v10 = [(_UIActivityMatchingContext *)self excludedActivityTypes];
  v11 = [v4 activityType];
  if (([v10 containsObject:v11] & 1) != 0 || (v12 = 1 << objc_msgSend(objc_opt_class(), "activityCategory"), (-[_UIActivityMatchingContext excludedActivityCategories](self, "excludedActivityCategories") & v12) != 0))
  {
    v9 = [v4 _canBeExcludeWhenMatchingWithContext:self];
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  return v9;
}

- (id)activitiesByFilteringExcludedActivities:(id)a3
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70___UIActivityMatchingContext_activitiesByFilteringExcludedActivities___block_invoke;
  v7[3] = &unk_1E71FAC90;
  v7[4] = self;
  v3 = a3;
  v4 = [v3 indexesOfObjectsPassingTest:v7];
  v5 = [v3 objectsAtIndexes:v4];

  return v5;
}

- (void)setHostAuditToken:(id *)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 length:32];
  }

  else
  {
    v4 = 0;
  }

  hostAuditTokenData = self->_hostAuditTokenData;
  self->_hostAuditTokenData = v4;
}

@end