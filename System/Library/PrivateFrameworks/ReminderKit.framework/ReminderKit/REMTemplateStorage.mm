@interface REMTemplateStorage
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUnsupported;
- (REMResolutionTokenMap)resolutionTokenMap;
- (REMTemplateStorage)initWithCoder:(id)a3;
- (REMTemplateStorage)initWithObjectID:(id)a3 accountID:(id)a4 name:(id)a5;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)resolutionTokenMap;
- (void)setStoreGenerationIfNeeded:(unint64_t)a3;
@end

@implementation REMTemplateStorage

- (REMTemplateStorage)initWithObjectID:(id)a3 accountID:(id)a4 name:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v32.receiver = self;
  v32.super_class = REMTemplateStorage;
  v12 = [(REMTemplateStorage *)&v32 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_objectID, a3);
    objc_storeStrong(&v13->_accountID, a4);
    parentAccountID = v13->_parentAccountID;
    v13->_parentAccountID = 0;

    v15 = [[REMAccountCapabilities alloc] initWithAccountType:2];
    accountCapabilities = v13->_accountCapabilities;
    v13->_accountCapabilities = v15;

    configuration = v13->_configuration;
    v13->_configuration = 0;

    objc_storeStrong(&v13->_name, a5);
    color = v13->_color;
    v13->_color = 0;

    badgeEmblem = v13->_badgeEmblem;
    v13->_badgeEmblem = 0;

    v13->_showingLargeAttachments = 0;
    unsavedManualOrdering = v13->_unsavedManualOrdering;
    v13->_unsavedManualOrdering = 0;

    v13->_shouldUpdateSectionsOrdering = 0;
    unsavedSectionIDsOrdering = v13->_unsavedSectionIDsOrdering;
    v13->_unsavedSectionIDsOrdering = 0;

    unsavedMembershipsOfRemindersInSections = v13->_unsavedMembershipsOfRemindersInSections;
    v13->_unsavedMembershipsOfRemindersInSections = 0;

    v23 = [MEMORY[0x1E695DFD8] set];
    sectionIDsToUndelete = v13->_sectionIDsToUndelete;
    v13->_sectionIDsToUndelete = v23;

    mostRecentPublicLinkUpdateRequestDate = v13->_mostRecentPublicLinkUpdateRequestDate;
    v13->_mostRecentPublicLinkUpdateRequestDate = 0;

    publicLink = v13->_publicLink;
    v13->_publicLink = 0;

    v13->_isPersisted = 0;
    v27 = objc_alloc_init(REMResolutionTokenMap);
    resolutionTokenMap = v13->_resolutionTokenMap;
    v13->_resolutionTokenMap = v27;

    v29 = [MEMORY[0x1E695DEF0] data];
    resolutionTokenMapData = v13->_resolutionTokenMapData;
    v13->_resolutionTokenMapData = v29;

    v13->_storeGeneration = 0;
    v13->_copyGeneration = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = [(REMTemplateStorage *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMTemplateStorage *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p objectID: %@", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v122 = *MEMORY[0x1E69E9840];
  if (a3 != self)
  {
    v4 = a3;
    v5 = objc_opt_class();
    v6 = REMDynamicCast(v5, v4);

    v7 = [(REMTemplateStorage *)self objectID];
    v8 = [v6 objectID];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(REMTemplateStorage *)self objectID];
      v11 = [v6 objectID];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_77;
      }
    }

    v14 = [(REMTemplateStorage *)self accountID];
    v15 = [v6 accountID];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(REMTemplateStorage *)self accountID];
      v18 = [v6 accountID];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_77;
      }
    }

    v20 = [(REMTemplateStorage *)self parentAccountID];
    v21 = [v6 parentAccountID];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(REMTemplateStorage *)self parentAccountID];
      v24 = [v6 parentAccountID];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_77;
      }
    }

    v26 = [(REMTemplateStorage *)self configuration];
    v27 = [v6 configuration];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(REMTemplateStorage *)self configuration];
      v30 = [v6 configuration];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_77;
      }
    }

    v32 = [(REMTemplateStorage *)self name];
    v33 = [v6 name];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(REMTemplateStorage *)self name];
      v36 = [v6 name];
      v37 = [v35 isEqual:v36];

      if (!v37)
      {
        goto LABEL_77;
      }
    }

    v38 = [(REMTemplateStorage *)self color];
    v39 = [v6 color];
    v40 = v39;
    if (v38 == v39)
    {
    }

    else
    {
      v41 = [(REMTemplateStorage *)self color];
      v42 = [v6 color];
      v43 = [v41 isEqual:v42];

      if (!v43)
      {
        goto LABEL_77;
      }
    }

    v44 = [(REMTemplateStorage *)self badgeEmblem];
    v45 = [v6 badgeEmblem];
    v46 = v45;
    if (v44 == v45)
    {
    }

    else
    {
      v47 = [(REMTemplateStorage *)self badgeEmblem];
      v48 = [v6 badgeEmblem];
      v49 = [v47 isEqual:v48];

      if (!v49)
      {
        goto LABEL_77;
      }
    }

    v50 = [(REMTemplateStorage *)self showingLargeAttachments];
    if (v50 == [v6 showingLargeAttachments])
    {
      v51 = [(REMTemplateStorage *)self sortingStyle];
      v52 = [v6 sortingStyle];
      v53 = v52;
      if (v51 == v52)
      {
      }

      else
      {
        v54 = [(REMTemplateStorage *)self sortingStyle];
        v55 = [v6 sortingStyle];
        v56 = [v54 isEqual:v55];

        if (!v56)
        {
          goto LABEL_77;
        }
      }

      v57 = [(REMTemplateStorage *)self unsavedManualOrdering];
      v58 = [v6 unsavedManualOrdering];
      v59 = v58;
      if (v57 == v58)
      {
      }

      else
      {
        v60 = [(REMTemplateStorage *)self unsavedManualOrdering];
        v61 = [v6 unsavedManualOrdering];
        v62 = [v60 isEqual:v61];

        if (!v62)
        {
          goto LABEL_77;
        }
      }

      v63 = [(REMTemplateStorage *)self shouldUpdateSectionsOrdering];
      if (v63 == [v6 shouldUpdateSectionsOrdering])
      {
        v64 = [(REMTemplateStorage *)self unsavedSectionIDsOrdering];
        v65 = [v6 unsavedSectionIDsOrdering];
        v66 = v65;
        if (v64 == v65)
        {
        }

        else
        {
          v67 = [(REMTemplateStorage *)self unsavedSectionIDsOrdering];
          v68 = [v6 unsavedSectionIDsOrdering];
          v69 = [v67 isEqual:v68];

          if (!v69)
          {
            goto LABEL_77;
          }
        }

        v70 = [(REMTemplateStorage *)self unsavedMembershipsOfRemindersInSections];
        v71 = [v6 unsavedMembershipsOfRemindersInSections];
        v72 = v71;
        if (v70 == v71)
        {
        }

        else
        {
          v73 = [(REMTemplateStorage *)self unsavedMembershipsOfRemindersInSections];
          v74 = [v6 unsavedMembershipsOfRemindersInSections];
          v75 = [v73 isEqual:v74];

          if (!v75)
          {
            goto LABEL_77;
          }
        }

        v76 = [(REMTemplateStorage *)self sectionIDsToUndelete];
        v77 = [v6 sectionIDsToUndelete];
        v78 = v77;
        if (v76 == v77)
        {
        }

        else
        {
          v79 = [(REMTemplateStorage *)self sectionIDsToUndelete];
          v80 = [v6 sectionIDsToUndelete];
          v81 = [v79 isEqual:v80];

          if (!v81)
          {
            goto LABEL_77;
          }
        }

        v82 = [(REMTemplateStorage *)self mostRecentPublicLinkUpdateRequestDate];
        v83 = [v6 mostRecentPublicLinkUpdateRequestDate];
        v84 = v83;
        if (v82 == v83)
        {
        }

        else
        {
          v85 = [(REMTemplateStorage *)self mostRecentPublicLinkUpdateRequestDate];
          v86 = [v6 mostRecentPublicLinkUpdateRequestDate];
          v87 = [v85 isEqual:v86];

          if (!v87)
          {
            goto LABEL_77;
          }
        }

        v88 = [(REMTemplateStorage *)self publicLink];
        v89 = [v6 publicLink];
        v90 = v89;
        if (v88 == v89)
        {
        }

        else
        {
          v91 = [(REMTemplateStorage *)self publicLink];
          v92 = [v6 publicLink];
          v93 = [v91 isEqual:v92];

          if (!v93)
          {
            goto LABEL_77;
          }
        }

        v94 = [(REMTemplateStorage *)self isPersisted];
        if (v94 == [v6 isPersisted])
        {
          v95 = [(REMTemplateStorage *)self accountCapabilities];
          v96 = [v6 accountCapabilities];
          v97 = v96;
          if (v95 == v96)
          {
          }

          else
          {
            v98 = [(REMTemplateStorage *)self accountCapabilities];
            v99 = [v6 accountCapabilities];
            v100 = [v98 isEqual:v99];

            if (!v100)
            {
              goto LABEL_77;
            }
          }

          if (!self->_resolutionTokenMap || v6[21])
          {
            v101 = +[REMLogStore read];
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              v112 = objc_opt_class();
              v113 = NSStringFromClass(v112);
              resolutionTokenMap = self->_resolutionTokenMap;
              v115 = v6[21];
              v116 = 138543874;
              v117 = v113;
              v118 = 2112;
              v119 = resolutionTokenMap;
              v120 = 2112;
              v121 = v115;
              _os_log_error_impl(&dword_19A0DB000, v101, OS_LOG_TYPE_ERROR, "You are about to trigger decoding the resolution token map from JSON data. This is probably not what you want for performance to trigger it from -isEqual:, unless you are running Tests then it's fine {class: %{public}@, self-map: %@, other-map: %@}", &v116, 0x20u);
            }
          }

          v102 = [(REMTemplateStorage *)self resolutionTokenMap];
          v103 = [v6 resolutionTokenMap];
          v104 = v103;
          if (v102 == v103)
          {
          }

          else
          {
            v105 = [(REMTemplateStorage *)self resolutionTokenMap];
            v106 = [v6 resolutionTokenMap];
            v107 = [v105 isEqual:v106];

            if (!v107)
            {
              goto LABEL_77;
            }
          }

          v108 = [(REMTemplateStorage *)self minimumSupportedVersion];
          if (v108 == [v6 minimumSupportedVersion])
          {
            v109 = [(REMTemplateStorage *)self effectiveMinimumSupportedVersion];
            v13 = v109 == [v6 effectiveMinimumSupportedVersion];
LABEL_78:

            goto LABEL_79;
          }
        }
      }
    }

LABEL_77:
    v13 = 0;
    goto LABEL_78;
  }

  v13 = 1;
LABEL_79:
  v110 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)newObjectID
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMTemplateStorage alloc];
  v5 = [(REMTemplateStorage *)self objectID];
  v6 = [(REMTemplateStorage *)self accountID];
  v7 = [(REMTemplateStorage *)self name];
  v8 = [(REMTemplateStorage *)v4 initWithObjectID:v5 accountID:v6 name:v7];

  v9 = [(REMTemplateStorage *)self parentAccountID];
  [(REMTemplateStorage *)v8 setParentAccountID:v9];

  v10 = [(REMTemplateStorage *)self configuration];
  v11 = [v10 copy];
  [(REMTemplateStorage *)v8 setConfiguration:v11];

  v12 = [(REMTemplateStorage *)self color];
  [(REMTemplateStorage *)v8 setColor:v12];

  v13 = [(REMTemplateStorage *)self badgeEmblem];
  [(REMTemplateStorage *)v8 setBadgeEmblem:v13];

  [(REMTemplateStorage *)v8 setShowingLargeAttachments:[(REMTemplateStorage *)self showingLargeAttachments]];
  v14 = [(REMTemplateStorage *)self sortingStyle];
  [(REMTemplateStorage *)v8 setSortingStyle:v14];

  v15 = [(REMTemplateStorage *)self unsavedManualOrdering];
  v16 = [v15 copy];
  [(REMTemplateStorage *)v8 setUnsavedManualOrdering:v16];

  [(REMTemplateStorage *)v8 setShouldUpdateSectionsOrdering:[(REMTemplateStorage *)self shouldUpdateSectionsOrdering]];
  v17 = [(REMTemplateStorage *)self unsavedSectionIDsOrdering];
  v18 = [v17 copy];
  [(REMTemplateStorage *)v8 setUnsavedSectionIDsOrdering:v18];

  v19 = [(REMTemplateStorage *)self unsavedMembershipsOfRemindersInSections];
  v20 = [v19 copy];
  [(REMTemplateStorage *)v8 setUnsavedMembershipsOfRemindersInSections:v20];

  v21 = [(REMTemplateStorage *)self sectionIDsToUndelete];
  v22 = [v21 copy];
  [(REMTemplateStorage *)v8 setSectionIDsToUndelete:v22];

  v23 = [(REMTemplateStorage *)self mostRecentPublicLinkUpdateRequestDate];
  [(REMTemplateStorage *)v8 setMostRecentPublicLinkUpdateRequestDate:v23];

  v24 = [(REMTemplateStorage *)self publicLink];
  v25 = [v24 copy];
  [(REMTemplateStorage *)v8 setPublicLink:v25];

  [(REMTemplateStorage *)v8 setIsPersisted:[(REMTemplateStorage *)self isPersisted]];
  v26 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  resolutionTokenMap = v8->_resolutionTokenMap;
  v8->_resolutionTokenMap = v26;

  v28 = [(REMTemplateStorage *)self resolutionTokenMapData];
  [(REMTemplateStorage *)v8 setResolutionTokenMapData:v28];

  [(REMTemplateStorage *)v8 setMinimumSupportedVersion:[(REMTemplateStorage *)self minimumSupportedVersion]];
  [(REMTemplateStorage *)v8 setEffectiveMinimumSupportedVersion:[(REMTemplateStorage *)self effectiveMinimumSupportedVersion]];
  v8->_storeGeneration = self->_storeGeneration;
  v8->_copyGeneration = self->_copyGeneration + 1;
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  v4 = [(REMTemplateStorage *)self objectID];
  [v21 encodeObject:v4 forKey:@"objectID"];

  v5 = [(REMTemplateStorage *)self accountID];
  [v21 encodeObject:v5 forKey:@"accountID"];

  v6 = [(REMTemplateStorage *)self parentAccountID];
  [v21 encodeObject:v6 forKey:@"parentAccountID"];

  v7 = [(REMTemplateStorage *)self configuration];
  [v21 encodeObject:v7 forKey:@"configuration"];

  v8 = [(REMTemplateStorage *)self name];
  [v21 encodeObject:v8 forKey:@"name"];

  v9 = [(REMTemplateStorage *)self color];
  [v21 encodeObject:v9 forKey:@"color"];

  v10 = [(REMTemplateStorage *)self badgeEmblem];
  [v21 encodeObject:v10 forKey:@"badgeEmblem"];

  [v21 encodeBool:-[REMTemplateStorage showingLargeAttachments](self forKey:{"showingLargeAttachments"), @"showingLargeAttachments"}];
  v11 = [(REMTemplateStorage *)self sortingStyle];
  [v21 encodeObject:v11 forKey:@"sortingStyle"];

  v12 = [(REMTemplateStorage *)self unsavedManualOrdering];
  [v21 encodeObject:v12 forKey:@"unsavedManualOrdering"];

  [v21 encodeBool:-[REMTemplateStorage shouldUpdateSectionsOrdering](self forKey:{"shouldUpdateSectionsOrdering"), @"shouldUpdateSectionsOrdering"}];
  v13 = [(REMTemplateStorage *)self unsavedSectionIDsOrdering];
  [v21 encodeObject:v13 forKey:@"unsavedSectionIDsOrdering"];

  v14 = [(REMTemplateStorage *)self unsavedMembershipsOfRemindersInSections];
  [v21 encodeObject:v14 forKey:@"unsavedMembershipsOfRemindersInSections"];

  v15 = [(REMTemplateStorage *)self sectionIDsToUndelete];
  v16 = [v15 allObjects];
  [v21 encodeObject:v16 forKey:@"sectionIDsToUndelete"];

  v17 = [(REMTemplateStorage *)self mostRecentPublicLinkUpdateRequestDate];
  [v21 encodeObject:v17 forKey:@"mostRecentPublicLinkUpdateRequestDate"];

  v18 = [(REMTemplateStorage *)self publicLink];
  [v21 encodeObject:v18 forKey:@"publicLink"];

  [v21 encodeBool:-[REMTemplateStorage isPersisted](self forKey:{"isPersisted"), @"isPersisted"}];
  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [v21 encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [v21 encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [v21 encodeObject:0 forKey:@"resolutionTokenMap"];
    v20 = [(REMTemplateStorage *)self resolutionTokenMapData];
    [v21 encodeObject:v20 forKey:@"resolutionTokenMapData"];
  }

  [v21 encodeInteger:-[REMTemplateStorage minimumSupportedVersion](self forKey:{"minimumSupportedVersion"), @"minimumSupportedVersion"}];
  [v21 encodeInteger:-[REMTemplateStorage effectiveMinimumSupportedVersion](self forKey:{"effectiveMinimumSupportedVersion"), @"effectiveMinimumSupportedVersion"}];
}

- (REMTemplateStorage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    v11 = 0;
  }

  else
  {
    v12 = [(REMTemplateStorage *)self initWithObjectID:v5 accountID:v6 name:v7];
    v13 = v12;
    if (v12)
    {
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentAccountID"];
      parentAccountID = v13->_parentAccountID;
      v13->_parentAccountID = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
      configuration = v13->_configuration;
      v13->_configuration = v16;

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
      color = v13->_color;
      v13->_color = v18;

      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"badgeEmblem"];
      badgeEmblem = v13->_badgeEmblem;
      v13->_badgeEmblem = v20;

      v13->_showingLargeAttachments = [v4 decodeBoolForKey:@"showingLargeAttachments"];
      v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unsavedManualOrdering"];
      unsavedManualOrdering = v13->_unsavedManualOrdering;
      v13->_unsavedManualOrdering = v22;

      v13->_shouldUpdateSectionsOrdering = [v4 decodeBoolForKey:@"shouldUpdateSectionsOrdering"];
      v24 = MEMORY[0x1E695DFD8];
      v25 = objc_opt_class();
      v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
      v27 = [v4 decodeObjectOfClasses:v26 forKey:@"unsavedSectionIDsOrdering"];
      unsavedSectionIDsOrdering = v13->_unsavedSectionIDsOrdering;
      v13->_unsavedSectionIDsOrdering = v27;

      v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unsavedMembershipsOfRemindersInSections"];
      unsavedMembershipsOfRemindersInSections = v13->_unsavedMembershipsOfRemindersInSections;
      v13->_unsavedMembershipsOfRemindersInSections = v29;

      v31 = MEMORY[0x1E695DFD8];
      v32 = objc_opt_class();
      v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
      v34 = [v4 decodeObjectOfClasses:v33 forKey:@"sectionIDsToUndelete"];

      v35 = [MEMORY[0x1E695DFD8] setWithArray:v34];
      sectionIDsToUndelete = v13->_sectionIDsToUndelete;
      v13->_sectionIDsToUndelete = v35;

      v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentPublicLinkUpdateRequestDate"];
      mostRecentPublicLinkUpdateRequestDate = v13->_mostRecentPublicLinkUpdateRequestDate;
      v13->_mostRecentPublicLinkUpdateRequestDate = v37;

      v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicLink"];
      publicLink = v13->_publicLink;
      v13->_publicLink = v39;

      v13->_isPersisted = [v4 decodeBoolForKey:@"isPersisted"];
      v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortingStyle"];
      [(REMTemplateStorage *)v13 setSortingStyle:v41];

      v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
      v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
      if (v43)
      {
        objc_storeStrong(&v13->_resolutionTokenMap, v43);
        resolutionTokenMapData = v13->_resolutionTokenMapData;
        v13->_resolutionTokenMapData = 0;
      }

      else
      {
        resolutionTokenMap = v13->_resolutionTokenMap;
        v13->_resolutionTokenMap = 0;

        v46 = v42;
        resolutionTokenMapData = v13->_resolutionTokenMapData;
        v13->_resolutionTokenMapData = v46;
      }

      -[REMTemplateStorage setMinimumSupportedVersion:](v13, "setMinimumSupportedVersion:", [v4 decodeIntegerForKey:@"minimumSupportedVersion"]);
      -[REMTemplateStorage setEffectiveMinimumSupportedVersion:](v13, "setEffectiveMinimumSupportedVersion:", [v4 decodeIntegerForKey:@"effectiveMinimumSupportedVersion"]);
    }

    self = v13;
    v11 = self;
  }

  return v11;
}

- (BOOL)isUnsupported
{
  v2 = [(REMTemplateStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(v2);
}

- (id)cdKeyToStorageKeyMap
{
  if (cdKeyToStorageKeyMap_onceToken_2 != -1)
  {
    [REMTemplateStorage cdKeyToStorageKeyMap];
  }

  v3 = cdKeyToStorageKeyMap_mapping_2;

  return v3;
}

- (REMResolutionTokenMap)resolutionTokenMap
{
  p_resolutionTokenMap = &self->_resolutionTokenMap;
  v4 = self->_resolutionTokenMap;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(REMTemplateStorage *)self resolutionTokenMapData];
    if (!v6)
    {
      v7 = +[REMLogStore read];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(REMTemplateStorage *)self resolutionTokenMap];
      }
    }

    v8 = [(REMTemplateStorage *)self cdKeyToStorageKeyMap];
    v9 = [REMResolutionTokenMap resolutionTokenMapWithJSONData:v6 keyMap:v8];

    objc_storeStrong(p_resolutionTokenMap, v9);
    v5 = v9;
  }

  return v5;
}

- (void)setStoreGenerationIfNeeded:(unint64_t)a3
{
  if (!self->_storeGeneration)
  {
    self->_storeGeneration = a3;
  }
}

- (void)resolutionTokenMap
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Nil resolutionTokenMapData when reading resolutionTokenMap from template storage. Initialize an empty map {template: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end