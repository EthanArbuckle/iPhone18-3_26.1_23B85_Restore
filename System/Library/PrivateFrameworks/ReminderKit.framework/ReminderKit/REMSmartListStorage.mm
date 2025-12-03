@interface REMSmartListStorage
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUnsupported;
- (REMResolutionTokenMap)resolutionTokenMap;
- (REMSmartListStorage)initWithCoder:(id)coder;
- (REMSmartListStorage)initWithObjectID:(id)d accountID:(id)iD smartListType:(id)type;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)resolutionTokenMap;
- (void)setStoreGenerationIfNeeded:(unint64_t)needed;
@end

@implementation REMSmartListStorage

- (REMSmartListStorage)initWithObjectID:(id)d accountID:(id)iD smartListType:(id)type
{
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  v32.receiver = self;
  v32.super_class = REMSmartListStorage;
  v12 = [(REMSmartListStorage *)&v32 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_objectID, d);
    objc_storeStrong(&v13->_accountID, iD);
    objc_storeStrong(&v13->_smartListType, type);
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

    data = [MEMORY[0x1E695DEF0] data];
    resolutionTokenMapData = v13->_resolutionTokenMapData;
    v13->_resolutionTokenMapData = data;

    v13->_storeGeneration = 0;
    v13->_copyGeneration = 0;
  }

  return v13;
}

- (REMSmartListStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentAccountID"];
  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentListID"];
  v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smartListType"];
  obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manualOrdering"];
  v28 = [coderCopy decodeBoolForKey:@"showingLargeAttachments"];
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"badgeEmblem"];
  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterData"];
  v27 = [coderCopy decodeBoolForKey:@"isPersisted"];
  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sortingStyle"];
  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pinnedDate"];
  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentTargetTemplateIdentifier"];
  v5 = [coderCopy decodeBoolForKey:@"shouldUpdateSectionsOrdering"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"unsavedSectionIDsOrdering"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unsavedMembershipsOfRemindersInSections"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"sectionIDsToUndelete"];

  selfCopy = 0;
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
        v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
        v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
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

        -[REMSmartListStorage setMinimumSupportedVersion:](v18, "setMinimumSupportedVersion:", [coderCopy decodeIntegerForKey:@"minimumSupportedVersion"]);
        -[REMSmartListStorage setEffectiveMinimumSupportedVersion:](v18, "setEffectiveMinimumSupportedVersion:", [coderCopy decodeIntegerForKey:@"effectiveMinimumSupportedVersion"]);

        v16 = v30;
      }

      self = v18;
      selfCopy = self;
    }
  }

  else
  {
    v16 = v30;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMSmartListStorage *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  accountID = [(REMSmartListStorage *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  parentAccountID = [(REMSmartListStorage *)self parentAccountID];
  [coderCopy encodeObject:parentAccountID forKey:@"parentAccountID"];

  parentListID = [(REMSmartListStorage *)self parentListID];
  [coderCopy encodeObject:parentListID forKey:@"parentListID"];

  smartListType = [(REMSmartListStorage *)self smartListType];
  [coderCopy encodeObject:smartListType forKey:@"smartListType"];

  manualOrdering = [(REMSmartListStorage *)self manualOrdering];
  [coderCopy encodeObject:manualOrdering forKey:@"manualOrdering"];

  [coderCopy encodeBool:-[REMSmartListStorage showingLargeAttachments](self forKey:{"showingLargeAttachments"), @"showingLargeAttachments"}];
  name = [(REMSmartListStorage *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  color = [(REMSmartListStorage *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  badgeEmblem = [(REMSmartListStorage *)self badgeEmblem];
  [coderCopy encodeObject:badgeEmblem forKey:@"badgeEmblem"];

  filterData = [(REMSmartListStorage *)self filterData];
  [coderCopy encodeObject:filterData forKey:@"filterData"];

  [coderCopy encodeBool:-[REMSmartListStorage isPersisted](self forKey:{"isPersisted"), @"isPersisted"}];
  sortingStyle = [(REMSmartListStorage *)self sortingStyle];
  [coderCopy encodeObject:sortingStyle forKey:@"sortingStyle"];

  pinnedDate = [(REMSmartListStorage *)self pinnedDate];
  [coderCopy encodeObject:pinnedDate forKey:@"pinnedDate"];

  mostRecentTargetTemplateIdentifier = [(REMSmartListStorage *)self mostRecentTargetTemplateIdentifier];
  [coderCopy encodeObject:mostRecentTargetTemplateIdentifier forKey:@"mostRecentTargetTemplateIdentifier"];

  [coderCopy encodeBool:-[REMSmartListStorage shouldUpdateSectionsOrdering](self forKey:{"shouldUpdateSectionsOrdering"), @"shouldUpdateSectionsOrdering"}];
  unsavedSectionIDsOrdering = [(REMSmartListStorage *)self unsavedSectionIDsOrdering];
  [coderCopy encodeObject:unsavedSectionIDsOrdering forKey:@"unsavedSectionIDsOrdering"];

  unsavedMembershipsOfRemindersInSections = [(REMSmartListStorage *)self unsavedMembershipsOfRemindersInSections];
  [coderCopy encodeObject:unsavedMembershipsOfRemindersInSections forKey:@"unsavedMembershipsOfRemindersInSections"];

  sectionIDsToUndelete = [(REMSmartListStorage *)self sectionIDsToUndelete];
  allObjects = [sectionIDsToUndelete allObjects];
  [coderCopy encodeObject:allObjects forKey:@"sectionIDsToUndelete"];

  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [coderCopy encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMap"];
    resolutionTokenMapData = [(REMSmartListStorage *)self resolutionTokenMapData];
    [coderCopy encodeObject:resolutionTokenMapData forKey:@"resolutionTokenMapData"];
  }

  [coderCopy encodeInteger:-[REMSmartListStorage minimumSupportedVersion](self forKey:{"minimumSupportedVersion"), @"minimumSupportedVersion"}];
  [coderCopy encodeInteger:-[REMSmartListStorage effectiveMinimumSupportedVersion](self forKey:{"effectiveMinimumSupportedVersion"), @"effectiveMinimumSupportedVersion"}];
}

- (BOOL)isEqual:(id)equal
{
  v134 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = [(REMSmartListStorage *)self objectID];
      objectID2 = [(REMSmartListStorage *)v6 objectID];
      v9 = objectID2;
      if (objectID == objectID2)
      {
      }

      else
      {
        objectID3 = [(REMSmartListStorage *)self objectID];
        objectID4 = [(REMSmartListStorage *)v6 objectID];
        v12 = [objectID3 isEqual:objectID4];

        if (!v12)
        {
          goto LABEL_86;
        }
      }

      accountID = [(REMSmartListStorage *)self accountID];
      accountID2 = [(REMSmartListStorage *)v6 accountID];
      v16 = accountID2;
      if (accountID == accountID2)
      {
      }

      else
      {
        accountID3 = [(REMSmartListStorage *)self accountID];
        accountID4 = [(REMSmartListStorage *)v6 accountID];
        v19 = [accountID3 isEqual:accountID4];

        if (!v19)
        {
          goto LABEL_86;
        }
      }

      parentAccountID = [(REMSmartListStorage *)self parentAccountID];
      parentAccountID2 = [(REMSmartListStorage *)v6 parentAccountID];
      v22 = parentAccountID2;
      if (parentAccountID == parentAccountID2)
      {
      }

      else
      {
        parentAccountID3 = [(REMSmartListStorage *)self parentAccountID];
        parentAccountID4 = [(REMSmartListStorage *)v6 parentAccountID];
        v25 = [parentAccountID3 isEqual:parentAccountID4];

        if (!v25)
        {
          goto LABEL_86;
        }
      }

      parentListID = [(REMSmartListStorage *)self parentListID];
      parentListID2 = [(REMSmartListStorage *)v6 parentListID];
      v28 = parentListID2;
      if (parentListID == parentListID2)
      {
      }

      else
      {
        parentListID3 = [(REMSmartListStorage *)self parentListID];
        parentListID4 = [(REMSmartListStorage *)v6 parentListID];
        v31 = [parentListID3 isEqual:parentListID4];

        if (!v31)
        {
          goto LABEL_86;
        }
      }

      smartListType = [(REMSmartListStorage *)self smartListType];
      smartListType2 = [(REMSmartListStorage *)v6 smartListType];
      v34 = smartListType2;
      if (smartListType == smartListType2)
      {
      }

      else
      {
        smartListType3 = [(REMSmartListStorage *)self smartListType];
        smartListType4 = [(REMSmartListStorage *)v6 smartListType];
        v37 = [smartListType3 isEqual:smartListType4];

        if (!v37)
        {
          goto LABEL_86;
        }
      }

      manualOrdering = [(REMSmartListStorage *)self manualOrdering];
      manualOrdering2 = [(REMSmartListStorage *)v6 manualOrdering];
      v40 = manualOrdering2;
      if (manualOrdering == manualOrdering2)
      {
      }

      else
      {
        manualOrdering3 = [(REMSmartListStorage *)self manualOrdering];
        manualOrdering4 = [(REMSmartListStorage *)v6 manualOrdering];
        v43 = [manualOrdering3 isEqual:manualOrdering4];

        if (!v43)
        {
          goto LABEL_86;
        }
      }

      showingLargeAttachments = [(REMSmartListStorage *)self showingLargeAttachments];
      if (showingLargeAttachments == [(REMSmartListStorage *)v6 showingLargeAttachments])
      {
        name = [(REMSmartListStorage *)self name];
        name2 = [(REMSmartListStorage *)v6 name];
        v47 = name2;
        if (name == name2)
        {
        }

        else
        {
          name3 = [(REMSmartListStorage *)self name];
          name4 = [(REMSmartListStorage *)v6 name];
          v50 = [name3 isEqual:name4];

          if (!v50)
          {
            goto LABEL_86;
          }
        }

        color = [(REMSmartListStorage *)self color];
        color2 = [(REMSmartListStorage *)v6 color];
        v53 = color2;
        if (color == color2)
        {
        }

        else
        {
          color3 = [(REMSmartListStorage *)self color];
          color4 = [(REMSmartListStorage *)v6 color];
          v56 = [color3 isEqual:color4];

          if (!v56)
          {
            goto LABEL_86;
          }
        }

        badgeEmblem = [(REMSmartListStorage *)self badgeEmblem];
        badgeEmblem2 = [(REMSmartListStorage *)v6 badgeEmblem];
        v59 = badgeEmblem2;
        if (badgeEmblem == badgeEmblem2)
        {
        }

        else
        {
          badgeEmblem3 = [(REMSmartListStorage *)self badgeEmblem];
          badgeEmblem4 = [(REMSmartListStorage *)v6 badgeEmblem];
          v62 = [badgeEmblem3 isEqual:badgeEmblem4];

          if (!v62)
          {
            goto LABEL_86;
          }
        }

        filterData = [(REMSmartListStorage *)self filterData];
        filterData2 = [(REMSmartListStorage *)v6 filterData];
        v65 = filterData2;
        if (filterData == filterData2)
        {
        }

        else
        {
          filterData3 = [(REMSmartListStorage *)self filterData];
          filterData4 = [(REMSmartListStorage *)v6 filterData];
          v68 = [filterData3 isEqual:filterData4];

          if (!v68)
          {
            goto LABEL_86;
          }
        }

        isPersisted = [(REMSmartListStorage *)self isPersisted];
        if (isPersisted == [(REMSmartListStorage *)v6 isPersisted])
        {
          sortingStyle = [(REMSmartListStorage *)self sortingStyle];
          sortingStyle2 = [(REMSmartListStorage *)v6 sortingStyle];
          v72 = sortingStyle2;
          if (sortingStyle == sortingStyle2)
          {
          }

          else
          {
            sortingStyle3 = [(REMSmartListStorage *)self sortingStyle];
            sortingStyle4 = [(REMSmartListStorage *)v6 sortingStyle];
            v75 = [sortingStyle3 isEqual:sortingStyle4];

            if (!v75)
            {
              goto LABEL_86;
            }
          }

          pinnedDate = [(REMSmartListStorage *)self pinnedDate];
          pinnedDate2 = [(REMSmartListStorage *)v6 pinnedDate];
          v78 = pinnedDate2;
          if (pinnedDate == pinnedDate2)
          {
          }

          else
          {
            pinnedDate3 = [(REMSmartListStorage *)self pinnedDate];
            pinnedDate4 = [(REMSmartListStorage *)v6 pinnedDate];
            v81 = [pinnedDate3 isEqual:pinnedDate4];

            if (!v81)
            {
              goto LABEL_86;
            }
          }

          mostRecentTargetTemplateIdentifier = [(REMSmartListStorage *)self mostRecentTargetTemplateIdentifier];
          mostRecentTargetTemplateIdentifier2 = [(REMSmartListStorage *)v6 mostRecentTargetTemplateIdentifier];
          v84 = mostRecentTargetTemplateIdentifier2;
          if (mostRecentTargetTemplateIdentifier == mostRecentTargetTemplateIdentifier2)
          {
          }

          else
          {
            mostRecentTargetTemplateIdentifier3 = [(REMSmartListStorage *)self mostRecentTargetTemplateIdentifier];
            mostRecentTargetTemplateIdentifier4 = [(REMSmartListStorage *)v6 mostRecentTargetTemplateIdentifier];
            v87 = [mostRecentTargetTemplateIdentifier3 isEqual:mostRecentTargetTemplateIdentifier4];

            if (!v87)
            {
              goto LABEL_86;
            }
          }

          shouldUpdateSectionsOrdering = [(REMSmartListStorage *)self shouldUpdateSectionsOrdering];
          if (shouldUpdateSectionsOrdering == [(REMSmartListStorage *)v6 shouldUpdateSectionsOrdering])
          {
            unsavedSectionIDsOrdering = [(REMSmartListStorage *)self unsavedSectionIDsOrdering];
            unsavedSectionIDsOrdering2 = [(REMSmartListStorage *)v6 unsavedSectionIDsOrdering];
            v91 = unsavedSectionIDsOrdering2;
            if (unsavedSectionIDsOrdering == unsavedSectionIDsOrdering2)
            {
            }

            else
            {
              unsavedSectionIDsOrdering3 = [(REMSmartListStorage *)self unsavedSectionIDsOrdering];
              unsavedSectionIDsOrdering4 = [(REMSmartListStorage *)v6 unsavedSectionIDsOrdering];
              v94 = [unsavedSectionIDsOrdering3 isEqual:unsavedSectionIDsOrdering4];

              if (!v94)
              {
                goto LABEL_86;
              }
            }

            unsavedMembershipsOfRemindersInSections = [(REMSmartListStorage *)self unsavedMembershipsOfRemindersInSections];
            unsavedMembershipsOfRemindersInSections2 = [(REMSmartListStorage *)v6 unsavedMembershipsOfRemindersInSections];
            v97 = unsavedMembershipsOfRemindersInSections2;
            if (unsavedMembershipsOfRemindersInSections == unsavedMembershipsOfRemindersInSections2)
            {
            }

            else
            {
              unsavedMembershipsOfRemindersInSections3 = [(REMSmartListStorage *)self unsavedMembershipsOfRemindersInSections];
              unsavedMembershipsOfRemindersInSections4 = [(REMSmartListStorage *)v6 unsavedMembershipsOfRemindersInSections];
              v100 = [unsavedMembershipsOfRemindersInSections3 isEqual:unsavedMembershipsOfRemindersInSections4];

              if (!v100)
              {
                goto LABEL_86;
              }
            }

            sectionIDsToUndelete = [(REMSmartListStorage *)self sectionIDsToUndelete];
            sectionIDsToUndelete2 = [(REMSmartListStorage *)v6 sectionIDsToUndelete];
            v103 = sectionIDsToUndelete2;
            if (sectionIDsToUndelete == sectionIDsToUndelete2)
            {
            }

            else
            {
              sectionIDsToUndelete3 = [(REMSmartListStorage *)self sectionIDsToUndelete];
              sectionIDsToUndelete4 = [(REMSmartListStorage *)v6 sectionIDsToUndelete];
              v106 = [sectionIDsToUndelete3 isEqual:sectionIDsToUndelete4];

              if (!v106)
              {
                goto LABEL_86;
              }
            }

            accountCapabilities = [(REMSmartListStorage *)self accountCapabilities];
            accountCapabilities2 = [(REMSmartListStorage *)v6 accountCapabilities];
            v109 = accountCapabilities2;
            if (accountCapabilities == accountCapabilities2)
            {
            }

            else
            {
              accountCapabilities3 = [(REMSmartListStorage *)self accountCapabilities];
              accountCapabilities4 = [(REMSmartListStorage *)v6 accountCapabilities];
              v112 = [accountCapabilities3 isEqual:accountCapabilities4];

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

            resolutionTokenMap = [(REMSmartListStorage *)self resolutionTokenMap];
            resolutionTokenMap2 = [(REMSmartListStorage *)v6 resolutionTokenMap];
            v116 = resolutionTokenMap2;
            if (resolutionTokenMap == resolutionTokenMap2)
            {
            }

            else
            {
              resolutionTokenMap3 = [(REMSmartListStorage *)self resolutionTokenMap];
              resolutionTokenMap4 = [(REMSmartListStorage *)v6 resolutionTokenMap];
              v119 = [resolutionTokenMap3 isEqual:resolutionTokenMap4];

              if (!v119)
              {
                goto LABEL_86;
              }
            }

            minimumSupportedVersion = [(REMSmartListStorage *)self minimumSupportedVersion];
            if (minimumSupportedVersion == [(REMSmartListStorage *)v6 minimumSupportedVersion])
            {
              effectiveMinimumSupportedVersion = [(REMSmartListStorage *)self effectiveMinimumSupportedVersion];
              v13 = effectiveMinimumSupportedVersion == [(REMSmartListStorage *)v6 effectiveMinimumSupportedVersion];
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
  objectID = [(REMSmartListStorage *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMSmartListStorage *)self objectID];
  smartListType = [(REMSmartListStorage *)self smartListType];
  sortingStyle = [(REMSmartListStorage *)self sortingStyle];
  v8 = [v3 stringWithFormat:@"<%@: %p objectID: %@, smartListType: %@, sortingStyle: %@>", v4, self, objectID, smartListType, sortingStyle];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMSmartListStorage alloc];
  objectID = [(REMSmartListStorage *)self objectID];
  accountID = [(REMSmartListStorage *)self accountID];
  smartListType = [(REMSmartListStorage *)self smartListType];
  v8 = [(REMSmartListStorage *)v4 initWithObjectID:objectID accountID:accountID smartListType:smartListType];

  parentAccountID = [(REMSmartListStorage *)self parentAccountID];
  [(REMSmartListStorage *)v8 setParentAccountID:parentAccountID];

  parentListID = [(REMSmartListStorage *)self parentListID];
  [(REMSmartListStorage *)v8 setParentListID:parentListID];

  manualOrdering = [(REMSmartListStorage *)self manualOrdering];
  v12 = [manualOrdering copy];
  [(REMSmartListStorage *)v8 setManualOrdering:v12];

  [(REMSmartListStorage *)v8 setIsPersisted:[(REMSmartListStorage *)self isPersisted]];
  [(REMSmartListStorage *)v8 setShowingLargeAttachments:[(REMSmartListStorage *)self showingLargeAttachments]];
  name = [(REMSmartListStorage *)self name];
  [(REMSmartListStorage *)v8 setName:name];

  color = [(REMSmartListStorage *)self color];
  [(REMSmartListStorage *)v8 setColor:color];

  badgeEmblem = [(REMSmartListStorage *)self badgeEmblem];
  [(REMSmartListStorage *)v8 setBadgeEmblem:badgeEmblem];

  filterData = [(REMSmartListStorage *)self filterData];
  [(REMSmartListStorage *)v8 setFilterData:filterData];

  sortingStyle = [(REMSmartListStorage *)self sortingStyle];
  [(REMSmartListStorage *)v8 setSortingStyle:sortingStyle];

  pinnedDate = [(REMSmartListStorage *)self pinnedDate];
  [(REMSmartListStorage *)v8 setPinnedDate:pinnedDate];

  mostRecentTargetTemplateIdentifier = [(REMSmartListStorage *)self mostRecentTargetTemplateIdentifier];
  [(REMSmartListStorage *)v8 setMostRecentTargetTemplateIdentifier:mostRecentTargetTemplateIdentifier];

  [(REMSmartListStorage *)v8 setShouldUpdateSectionsOrdering:[(REMSmartListStorage *)self shouldUpdateSectionsOrdering]];
  unsavedSectionIDsOrdering = [(REMSmartListStorage *)self unsavedSectionIDsOrdering];
  v21 = [unsavedSectionIDsOrdering copy];
  [(REMSmartListStorage *)v8 setUnsavedSectionIDsOrdering:v21];

  unsavedMembershipsOfRemindersInSections = [(REMSmartListStorage *)self unsavedMembershipsOfRemindersInSections];
  v23 = [unsavedMembershipsOfRemindersInSections copy];
  [(REMSmartListStorage *)v8 setUnsavedMembershipsOfRemindersInSections:v23];

  sectionIDsToUndelete = [(REMSmartListStorage *)self sectionIDsToUndelete];
  v25 = [sectionIDsToUndelete copy];
  [(REMSmartListStorage *)v8 setSectionIDsToUndelete:v25];

  v26 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  resolutionTokenMap = v8->_resolutionTokenMap;
  v8->_resolutionTokenMap = v26;

  resolutionTokenMapData = [(REMSmartListStorage *)self resolutionTokenMapData];
  [(REMSmartListStorage *)v8 setResolutionTokenMapData:resolutionTokenMapData];

  [(REMSmartListStorage *)v8 setMinimumSupportedVersion:[(REMSmartListStorage *)self minimumSupportedVersion]];
  [(REMSmartListStorage *)v8 setEffectiveMinimumSupportedVersion:[(REMSmartListStorage *)self effectiveMinimumSupportedVersion]];
  v8->_storeGeneration = self->_storeGeneration;
  v8->_copyGeneration = self->_copyGeneration + 1;
  return v8;
}

+ (id)newObjectID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self objectIDWithUUID:uUID];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

  return v6;
}

- (BOOL)isUnsupported
{
  effectiveMinimumSupportedVersion = [(REMSmartListStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(effectiveMinimumSupportedVersion);
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
    resolutionTokenMapData = [(REMSmartListStorage *)self resolutionTokenMapData];
    if (!resolutionTokenMapData)
    {
      v7 = +[REMLogStore read];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(REMSmartListStorage *)self resolutionTokenMap];
      }
    }

    cdKeyToStorageKeyMap = [(REMSmartListStorage *)self cdKeyToStorageKeyMap];
    v9 = [REMResolutionTokenMap resolutionTokenMapWithJSONData:resolutionTokenMapData keyMap:cdKeyToStorageKeyMap];

    objc_storeStrong(p_resolutionTokenMap, v9);
    v5 = v9;
  }

  return v5;
}

- (void)setStoreGenerationIfNeeded:(unint64_t)needed
{
  if (!self->_storeGeneration)
  {
    self->_storeGeneration = needed;
  }
}

- (void)resolutionTokenMap
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Nil resolutionTokenMapData when reading resolutionTokenMap from smartlist storage. Initialize an empty map {smartlist: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end