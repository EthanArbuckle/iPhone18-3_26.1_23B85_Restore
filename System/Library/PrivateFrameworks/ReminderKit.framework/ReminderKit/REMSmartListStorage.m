@interface REMSmartListStorage
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUnsupported;
- (REMResolutionTokenMap)resolutionTokenMap;
- (REMSmartListStorage)initWithCoder:(id)a3;
- (REMSmartListStorage)initWithObjectID:(id)a3 accountID:(id)a4 smartListType:(id)a5;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)resolutionTokenMap;
- (void)setStoreGenerationIfNeeded:(unint64_t)a3;
@end

@implementation REMSmartListStorage

- (REMSmartListStorage)initWithObjectID:(id)a3 accountID:(id)a4 smartListType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v32.receiver = self;
  v32.super_class = REMSmartListStorage;
  v12 = [(REMSmartListStorage *)&v32 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_objectID, a3);
    objc_storeStrong(&v13->_accountID, a4);
    objc_storeStrong(&v13->_smartListType, a5);
    v14 = [[REMAccountCapabilities alloc] initWithAccountType:2];
    accountCapabilities = v13->_accountCapabilities;
    v13->_accountCapabilities = v14;

    manualOrdering = v13->_manualOrdering;
    v13->_manualOrdering = 0;

    v13->_showingLargeAttachments = 0;
    name = v13->_name;
    v13->_name = 0;

    color = v13->_color;
    v13->_color = 0;

    badgeEmblem = v13->_badgeEmblem;
    v13->_badgeEmblem = 0;

    pinnedDate = v13->_pinnedDate;
    v13->_pinnedDate = 0;

    mostRecentTargetTemplateIdentifier = v13->_mostRecentTargetTemplateIdentifier;
    v13->_mostRecentTargetTemplateIdentifier = 0;

    filterData = v13->_filterData;
    v13->_filterData = 0;

    v13->_shouldUpdateSectionsOrdering = 0;
    unsavedSectionIDsOrdering = v13->_unsavedSectionIDsOrdering;
    v13->_unsavedSectionIDsOrdering = 0;

    unsavedMembershipsOfRemindersInSections = v13->_unsavedMembershipsOfRemindersInSections;
    v13->_unsavedMembershipsOfRemindersInSections = 0;

    v25 = [MEMORY[0x1E695DFD8] set];
    sectionIDsToUndelete = v13->_sectionIDsToUndelete;
    v13->_sectionIDsToUndelete = v25;

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

- (REMSmartListStorage)initWithCoder:(id)a3
{
  v4 = a3;
  v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentAccountID"];
  v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentListID"];
  v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smartListType"];
  obj = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manualOrdering"];
  v28 = [v4 decodeBoolForKey:@"showingLargeAttachments"];
  v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"badgeEmblem"];
  v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filterData"];
  v27 = [v4 decodeBoolForKey:@"isPersisted"];
  v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortingStyle"];
  v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pinnedDate"];
  v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentTargetTemplateIdentifier"];
  v5 = [v4 decodeBoolForKey:@"shouldUpdateSectionsOrdering"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"unsavedSectionIDsOrdering"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unsavedMembershipsOfRemindersInSections"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"sectionIDsToUndelete"];

  v15 = 0;
  if (v29)
  {
    v16 = v30;
    if (v30 && v41)
    {
      v17 = [(REMSmartListStorage *)self initWithObjectID:v29 accountID:v30 smartListType:?];
      v18 = v17;
      if (v17)
      {
        objc_storeStrong(&v17->_manualOrdering, obj);
        v18->_isPersisted = v27;
        v18->_showingLargeAttachments = v28;
        objc_storeStrong(&v18->_name, v37);
        objc_storeStrong(&v18->_color, v36);
        objc_storeStrong(&v18->_badgeEmblem, v35);
        objc_storeStrong(&v18->_filterData, v34);
        objc_storeStrong(&v18->_parentAccountID, v40);
        objc_storeStrong(&v18->_parentListID, v39);
        objc_storeStrong(&v18->_pinnedDate, v32);
        objc_storeStrong(&v18->_mostRecentTargetTemplateIdentifier, v31);
        v18->_shouldUpdateSectionsOrdering = v5;
        objc_storeStrong(&v18->_unsavedSectionIDsOrdering, v9);
        objc_storeStrong(&v18->_unsavedMembershipsOfRemindersInSections, v10);
        v19 = [MEMORY[0x1E695DFD8] setWithArray:v14];
        sectionIDsToUndelete = v18->_sectionIDsToUndelete;
        v18->_sectionIDsToUndelete = v19;

        [(REMSmartListStorage *)v18 setSortingStyle:v33];
        v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
        v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
        if (v22)
        {
          objc_storeStrong(&v18->_resolutionTokenMap, v22);
          resolutionTokenMapData = v18->_resolutionTokenMapData;
          v18->_resolutionTokenMapData = 0;
        }

        else
        {
          resolutionTokenMap = v18->_resolutionTokenMap;
          v18->_resolutionTokenMap = 0;

          v25 = v21;
          resolutionTokenMapData = v18->_resolutionTokenMapData;
          v18->_resolutionTokenMapData = v25;
        }

        -[REMSmartListStorage setMinimumSupportedVersion:](v18, "setMinimumSupportedVersion:", [v4 decodeIntegerForKey:@"minimumSupportedVersion"]);
        -[REMSmartListStorage setEffectiveMinimumSupportedVersion:](v18, "setEffectiveMinimumSupportedVersion:", [v4 decodeIntegerForKey:@"effectiveMinimumSupportedVersion"]);

        v16 = v30;
      }

      self = v18;
      v15 = self;
    }
  }

  else
  {
    v16 = v30;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v23 = a3;
  v4 = [(REMSmartListStorage *)self objectID];
  [v23 encodeObject:v4 forKey:@"objectID"];

  v5 = [(REMSmartListStorage *)self accountID];
  [v23 encodeObject:v5 forKey:@"accountID"];

  v6 = [(REMSmartListStorage *)self parentAccountID];
  [v23 encodeObject:v6 forKey:@"parentAccountID"];

  v7 = [(REMSmartListStorage *)self parentListID];
  [v23 encodeObject:v7 forKey:@"parentListID"];

  v8 = [(REMSmartListStorage *)self smartListType];
  [v23 encodeObject:v8 forKey:@"smartListType"];

  v9 = [(REMSmartListStorage *)self manualOrdering];
  [v23 encodeObject:v9 forKey:@"manualOrdering"];

  [v23 encodeBool:-[REMSmartListStorage showingLargeAttachments](self forKey:{"showingLargeAttachments"), @"showingLargeAttachments"}];
  v10 = [(REMSmartListStorage *)self name];
  [v23 encodeObject:v10 forKey:@"name"];

  v11 = [(REMSmartListStorage *)self color];
  [v23 encodeObject:v11 forKey:@"color"];

  v12 = [(REMSmartListStorage *)self badgeEmblem];
  [v23 encodeObject:v12 forKey:@"badgeEmblem"];

  v13 = [(REMSmartListStorage *)self filterData];
  [v23 encodeObject:v13 forKey:@"filterData"];

  [v23 encodeBool:-[REMSmartListStorage isPersisted](self forKey:{"isPersisted"), @"isPersisted"}];
  v14 = [(REMSmartListStorage *)self sortingStyle];
  [v23 encodeObject:v14 forKey:@"sortingStyle"];

  v15 = [(REMSmartListStorage *)self pinnedDate];
  [v23 encodeObject:v15 forKey:@"pinnedDate"];

  v16 = [(REMSmartListStorage *)self mostRecentTargetTemplateIdentifier];
  [v23 encodeObject:v16 forKey:@"mostRecentTargetTemplateIdentifier"];

  [v23 encodeBool:-[REMSmartListStorage shouldUpdateSectionsOrdering](self forKey:{"shouldUpdateSectionsOrdering"), @"shouldUpdateSectionsOrdering"}];
  v17 = [(REMSmartListStorage *)self unsavedSectionIDsOrdering];
  [v23 encodeObject:v17 forKey:@"unsavedSectionIDsOrdering"];

  v18 = [(REMSmartListStorage *)self unsavedMembershipsOfRemindersInSections];
  [v23 encodeObject:v18 forKey:@"unsavedMembershipsOfRemindersInSections"];

  v19 = [(REMSmartListStorage *)self sectionIDsToUndelete];
  v20 = [v19 allObjects];
  [v23 encodeObject:v20 forKey:@"sectionIDsToUndelete"];

  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [v23 encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [v23 encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [v23 encodeObject:0 forKey:@"resolutionTokenMap"];
    v22 = [(REMSmartListStorage *)self resolutionTokenMapData];
    [v23 encodeObject:v22 forKey:@"resolutionTokenMapData"];
  }

  [v23 encodeInteger:-[REMSmartListStorage minimumSupportedVersion](self forKey:{"minimumSupportedVersion"), @"minimumSupportedVersion"}];
  [v23 encodeInteger:-[REMSmartListStorage effectiveMinimumSupportedVersion](self forKey:{"effectiveMinimumSupportedVersion"), @"effectiveMinimumSupportedVersion"}];
}

- (BOOL)isEqual:(id)a3
{
  v134 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMSmartListStorage *)self objectID];
      v8 = [(REMSmartListStorage *)v6 objectID];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMSmartListStorage *)self objectID];
        v11 = [(REMSmartListStorage *)v6 objectID];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_86;
        }
      }

      v14 = [(REMSmartListStorage *)self accountID];
      v15 = [(REMSmartListStorage *)v6 accountID];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(REMSmartListStorage *)self accountID];
        v18 = [(REMSmartListStorage *)v6 accountID];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_86;
        }
      }

      v20 = [(REMSmartListStorage *)self parentAccountID];
      v21 = [(REMSmartListStorage *)v6 parentAccountID];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(REMSmartListStorage *)self parentAccountID];
        v24 = [(REMSmartListStorage *)v6 parentAccountID];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_86;
        }
      }

      v26 = [(REMSmartListStorage *)self parentListID];
      v27 = [(REMSmartListStorage *)v6 parentListID];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(REMSmartListStorage *)self parentListID];
        v30 = [(REMSmartListStorage *)v6 parentListID];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_86;
        }
      }

      v32 = [(REMSmartListStorage *)self smartListType];
      v33 = [(REMSmartListStorage *)v6 smartListType];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(REMSmartListStorage *)self smartListType];
        v36 = [(REMSmartListStorage *)v6 smartListType];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_86;
        }
      }

      v38 = [(REMSmartListStorage *)self manualOrdering];
      v39 = [(REMSmartListStorage *)v6 manualOrdering];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(REMSmartListStorage *)self manualOrdering];
        v42 = [(REMSmartListStorage *)v6 manualOrdering];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_86;
        }
      }

      v44 = [(REMSmartListStorage *)self showingLargeAttachments];
      if (v44 == [(REMSmartListStorage *)v6 showingLargeAttachments])
      {
        v45 = [(REMSmartListStorage *)self name];
        v46 = [(REMSmartListStorage *)v6 name];
        v47 = v46;
        if (v45 == v46)
        {
        }

        else
        {
          v48 = [(REMSmartListStorage *)self name];
          v49 = [(REMSmartListStorage *)v6 name];
          v50 = [v48 isEqual:v49];

          if (!v50)
          {
            goto LABEL_86;
          }
        }

        v51 = [(REMSmartListStorage *)self color];
        v52 = [(REMSmartListStorage *)v6 color];
        v53 = v52;
        if (v51 == v52)
        {
        }

        else
        {
          v54 = [(REMSmartListStorage *)self color];
          v55 = [(REMSmartListStorage *)v6 color];
          v56 = [v54 isEqual:v55];

          if (!v56)
          {
            goto LABEL_86;
          }
        }

        v57 = [(REMSmartListStorage *)self badgeEmblem];
        v58 = [(REMSmartListStorage *)v6 badgeEmblem];
        v59 = v58;
        if (v57 == v58)
        {
        }

        else
        {
          v60 = [(REMSmartListStorage *)self badgeEmblem];
          v61 = [(REMSmartListStorage *)v6 badgeEmblem];
          v62 = [v60 isEqual:v61];

          if (!v62)
          {
            goto LABEL_86;
          }
        }

        v63 = [(REMSmartListStorage *)self filterData];
        v64 = [(REMSmartListStorage *)v6 filterData];
        v65 = v64;
        if (v63 == v64)
        {
        }

        else
        {
          v66 = [(REMSmartListStorage *)self filterData];
          v67 = [(REMSmartListStorage *)v6 filterData];
          v68 = [v66 isEqual:v67];

          if (!v68)
          {
            goto LABEL_86;
          }
        }

        v69 = [(REMSmartListStorage *)self isPersisted];
        if (v69 == [(REMSmartListStorage *)v6 isPersisted])
        {
          v70 = [(REMSmartListStorage *)self sortingStyle];
          v71 = [(REMSmartListStorage *)v6 sortingStyle];
          v72 = v71;
          if (v70 == v71)
          {
          }

          else
          {
            v73 = [(REMSmartListStorage *)self sortingStyle];
            v74 = [(REMSmartListStorage *)v6 sortingStyle];
            v75 = [v73 isEqual:v74];

            if (!v75)
            {
              goto LABEL_86;
            }
          }

          v76 = [(REMSmartListStorage *)self pinnedDate];
          v77 = [(REMSmartListStorage *)v6 pinnedDate];
          v78 = v77;
          if (v76 == v77)
          {
          }

          else
          {
            v79 = [(REMSmartListStorage *)self pinnedDate];
            v80 = [(REMSmartListStorage *)v6 pinnedDate];
            v81 = [v79 isEqual:v80];

            if (!v81)
            {
              goto LABEL_86;
            }
          }

          v82 = [(REMSmartListStorage *)self mostRecentTargetTemplateIdentifier];
          v83 = [(REMSmartListStorage *)v6 mostRecentTargetTemplateIdentifier];
          v84 = v83;
          if (v82 == v83)
          {
          }

          else
          {
            v85 = [(REMSmartListStorage *)self mostRecentTargetTemplateIdentifier];
            v86 = [(REMSmartListStorage *)v6 mostRecentTargetTemplateIdentifier];
            v87 = [v85 isEqual:v86];

            if (!v87)
            {
              goto LABEL_86;
            }
          }

          v88 = [(REMSmartListStorage *)self shouldUpdateSectionsOrdering];
          if (v88 == [(REMSmartListStorage *)v6 shouldUpdateSectionsOrdering])
          {
            v89 = [(REMSmartListStorage *)self unsavedSectionIDsOrdering];
            v90 = [(REMSmartListStorage *)v6 unsavedSectionIDsOrdering];
            v91 = v90;
            if (v89 == v90)
            {
            }

            else
            {
              v92 = [(REMSmartListStorage *)self unsavedSectionIDsOrdering];
              v93 = [(REMSmartListStorage *)v6 unsavedSectionIDsOrdering];
              v94 = [v92 isEqual:v93];

              if (!v94)
              {
                goto LABEL_86;
              }
            }

            v95 = [(REMSmartListStorage *)self unsavedMembershipsOfRemindersInSections];
            v96 = [(REMSmartListStorage *)v6 unsavedMembershipsOfRemindersInSections];
            v97 = v96;
            if (v95 == v96)
            {
            }

            else
            {
              v98 = [(REMSmartListStorage *)self unsavedMembershipsOfRemindersInSections];
              v99 = [(REMSmartListStorage *)v6 unsavedMembershipsOfRemindersInSections];
              v100 = [v98 isEqual:v99];

              if (!v100)
              {
                goto LABEL_86;
              }
            }

            v101 = [(REMSmartListStorage *)self sectionIDsToUndelete];
            v102 = [(REMSmartListStorage *)v6 sectionIDsToUndelete];
            v103 = v102;
            if (v101 == v102)
            {
            }

            else
            {
              v104 = [(REMSmartListStorage *)self sectionIDsToUndelete];
              v105 = [(REMSmartListStorage *)v6 sectionIDsToUndelete];
              v106 = [v104 isEqual:v105];

              if (!v106)
              {
                goto LABEL_86;
              }
            }

            v107 = [(REMSmartListStorage *)self accountCapabilities];
            v108 = [(REMSmartListStorage *)v6 accountCapabilities];
            v109 = v108;
            if (v107 == v108)
            {
            }

            else
            {
              v110 = [(REMSmartListStorage *)self accountCapabilities];
              v111 = [(REMSmartListStorage *)v6 accountCapabilities];
              v112 = [v110 isEqual:v111];

              if (!v112)
              {
                goto LABEL_86;
              }
            }

            if (!self->_resolutionTokenMap || v6->_resolutionTokenMap)
            {
              v113 = +[REMLogStore read];
              if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
              {
                v124 = objc_opt_class();
                v125 = NSStringFromClass(v124);
                resolutionTokenMap = self->_resolutionTokenMap;
                v127 = v6->_resolutionTokenMap;
                v128 = 138543874;
                v129 = v125;
                v130 = 2112;
                v131 = resolutionTokenMap;
                v132 = 2112;
                v133 = v127;
                _os_log_error_impl(&dword_19A0DB000, v113, OS_LOG_TYPE_ERROR, "You are about to trigger decoding the resolution token map from JSON data. This is probably not what you want for performance to trigger it from -isEqual:, unless you are running Tests then it's fine {class: %{public}@, self-map: %@, other-map: %@}", &v128, 0x20u);
              }
            }

            v114 = [(REMSmartListStorage *)self resolutionTokenMap];
            v115 = [(REMSmartListStorage *)v6 resolutionTokenMap];
            v116 = v115;
            if (v114 == v115)
            {
            }

            else
            {
              v117 = [(REMSmartListStorage *)self resolutionTokenMap];
              v118 = [(REMSmartListStorage *)v6 resolutionTokenMap];
              v119 = [v117 isEqual:v118];

              if (!v119)
              {
                goto LABEL_86;
              }
            }

            v120 = [(REMSmartListStorage *)self minimumSupportedVersion];
            if (v120 == [(REMSmartListStorage *)v6 minimumSupportedVersion])
            {
              v121 = [(REMSmartListStorage *)self effectiveMinimumSupportedVersion];
              v13 = v121 == [(REMSmartListStorage *)v6 effectiveMinimumSupportedVersion];
LABEL_87:

              goto LABEL_88;
            }
          }
        }
      }
    }

LABEL_86:
    v13 = 0;
    goto LABEL_87;
  }

  v13 = 1;
LABEL_88:

  v122 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unint64_t)hash
{
  v2 = [(REMSmartListStorage *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMSmartListStorage *)self objectID];
  v6 = [(REMSmartListStorage *)self smartListType];
  v7 = [(REMSmartListStorage *)self sortingStyle];
  v8 = [v3 stringWithFormat:@"<%@: %p objectID: %@, smartListType: %@, sortingStyle: %@>", v4, self, v5, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMSmartListStorage alloc];
  v5 = [(REMSmartListStorage *)self objectID];
  v6 = [(REMSmartListStorage *)self accountID];
  v7 = [(REMSmartListStorage *)self smartListType];
  v8 = [(REMSmartListStorage *)v4 initWithObjectID:v5 accountID:v6 smartListType:v7];

  v9 = [(REMSmartListStorage *)self parentAccountID];
  [(REMSmartListStorage *)v8 setParentAccountID:v9];

  v10 = [(REMSmartListStorage *)self parentListID];
  [(REMSmartListStorage *)v8 setParentListID:v10];

  v11 = [(REMSmartListStorage *)self manualOrdering];
  v12 = [v11 copy];
  [(REMSmartListStorage *)v8 setManualOrdering:v12];

  [(REMSmartListStorage *)v8 setIsPersisted:[(REMSmartListStorage *)self isPersisted]];
  [(REMSmartListStorage *)v8 setShowingLargeAttachments:[(REMSmartListStorage *)self showingLargeAttachments]];
  v13 = [(REMSmartListStorage *)self name];
  [(REMSmartListStorage *)v8 setName:v13];

  v14 = [(REMSmartListStorage *)self color];
  [(REMSmartListStorage *)v8 setColor:v14];

  v15 = [(REMSmartListStorage *)self badgeEmblem];
  [(REMSmartListStorage *)v8 setBadgeEmblem:v15];

  v16 = [(REMSmartListStorage *)self filterData];
  [(REMSmartListStorage *)v8 setFilterData:v16];

  v17 = [(REMSmartListStorage *)self sortingStyle];
  [(REMSmartListStorage *)v8 setSortingStyle:v17];

  v18 = [(REMSmartListStorage *)self pinnedDate];
  [(REMSmartListStorage *)v8 setPinnedDate:v18];

  v19 = [(REMSmartListStorage *)self mostRecentTargetTemplateIdentifier];
  [(REMSmartListStorage *)v8 setMostRecentTargetTemplateIdentifier:v19];

  [(REMSmartListStorage *)v8 setShouldUpdateSectionsOrdering:[(REMSmartListStorage *)self shouldUpdateSectionsOrdering]];
  v20 = [(REMSmartListStorage *)self unsavedSectionIDsOrdering];
  v21 = [v20 copy];
  [(REMSmartListStorage *)v8 setUnsavedSectionIDsOrdering:v21];

  v22 = [(REMSmartListStorage *)self unsavedMembershipsOfRemindersInSections];
  v23 = [v22 copy];
  [(REMSmartListStorage *)v8 setUnsavedMembershipsOfRemindersInSections:v23];

  v24 = [(REMSmartListStorage *)self sectionIDsToUndelete];
  v25 = [v24 copy];
  [(REMSmartListStorage *)v8 setSectionIDsToUndelete:v25];

  v26 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  resolutionTokenMap = v8->_resolutionTokenMap;
  v8->_resolutionTokenMap = v26;

  v28 = [(REMSmartListStorage *)self resolutionTokenMapData];
  [(REMSmartListStorage *)v8 setResolutionTokenMapData:v28];

  [(REMSmartListStorage *)v8 setMinimumSupportedVersion:[(REMSmartListStorage *)self minimumSupportedVersion]];
  [(REMSmartListStorage *)v8 setEffectiveMinimumSupportedVersion:[(REMSmartListStorage *)self effectiveMinimumSupportedVersion]];
  v8->_storeGeneration = self->_storeGeneration;
  v8->_copyGeneration = self->_copyGeneration + 1;
  return v8;
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

- (BOOL)isUnsupported
{
  v2 = [(REMSmartListStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(v2);
}

- (id)cdKeyToStorageKeyMap
{
  if (cdKeyToStorageKeyMap_onceToken_0 != -1)
  {
    [REMSmartListStorage cdKeyToStorageKeyMap];
  }

  v3 = cdKeyToStorageKeyMap_mapping_0;

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
    v6 = [(REMSmartListStorage *)self resolutionTokenMapData];
    if (!v6)
    {
      v7 = +[REMLogStore read];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(REMSmartListStorage *)self resolutionTokenMap];
      }
    }

    v8 = [(REMSmartListStorage *)self cdKeyToStorageKeyMap];
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
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Nil resolutionTokenMapData when reading resolutionTokenMap from smartlist storage. Initialize an empty map {smartlist: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end