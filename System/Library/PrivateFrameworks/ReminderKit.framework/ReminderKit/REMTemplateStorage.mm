@interface REMTemplateStorage
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUnsupported;
- (REMResolutionTokenMap)resolutionTokenMap;
- (REMTemplateStorage)initWithCoder:(id)coder;
- (REMTemplateStorage)initWithObjectID:(id)d accountID:(id)iD name:(id)name;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)resolutionTokenMap;
- (void)setStoreGenerationIfNeeded:(unint64_t)needed;
@end

@implementation REMTemplateStorage

- (REMTemplateStorage)initWithObjectID:(id)d accountID:(id)iD name:(id)name
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  v32.receiver = self;
  v32.super_class = REMTemplateStorage;
  v12 = [(REMTemplateStorage *)&v32 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_objectID, d);
    objc_storeStrong(&v13->_accountID, iD);
    parentAccountID = v13->_parentAccountID;
    v13->_parentAccountID = 0;

    v15 = [[REMAccountCapabilities alloc] initWithAccountType:2];
    accountCapabilities = v13->_accountCapabilities;
    v13->_accountCapabilities = v15;

    configuration = v13->_configuration;
    v13->_configuration = 0;

    objc_storeStrong(&v13->_name, name);
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

    data = [MEMORY[0x1E695DEF0] data];
    resolutionTokenMapData = v13->_resolutionTokenMapData;
    v13->_resolutionTokenMapData = data;

    v13->_storeGeneration = 0;
    v13->_copyGeneration = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  objectID = [(REMTemplateStorage *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMTemplateStorage *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p objectID: %@", v4, self, objectID];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v122 = *MEMORY[0x1E69E9840];
  if (equal != self)
  {
    equalCopy = equal;
    v5 = objc_opt_class();
    v6 = REMDynamicCast(v5, equalCopy);

    objectID = [(REMTemplateStorage *)self objectID];
    objectID2 = [v6 objectID];
    v9 = objectID2;
    if (objectID == objectID2)
    {
    }

    else
    {
      objectID3 = [(REMTemplateStorage *)self objectID];
      objectID4 = [v6 objectID];
      v12 = [objectID3 isEqual:objectID4];

      if (!v12)
      {
        goto LABEL_77;
      }
    }

    accountID = [(REMTemplateStorage *)self accountID];
    accountID2 = [v6 accountID];
    v16 = accountID2;
    if (accountID == accountID2)
    {
    }

    else
    {
      accountID3 = [(REMTemplateStorage *)self accountID];
      accountID4 = [v6 accountID];
      v19 = [accountID3 isEqual:accountID4];

      if (!v19)
      {
        goto LABEL_77;
      }
    }

    parentAccountID = [(REMTemplateStorage *)self parentAccountID];
    parentAccountID2 = [v6 parentAccountID];
    v22 = parentAccountID2;
    if (parentAccountID == parentAccountID2)
    {
    }

    else
    {
      parentAccountID3 = [(REMTemplateStorage *)self parentAccountID];
      parentAccountID4 = [v6 parentAccountID];
      v25 = [parentAccountID3 isEqual:parentAccountID4];

      if (!v25)
      {
        goto LABEL_77;
      }
    }

    configuration = [(REMTemplateStorage *)self configuration];
    configuration2 = [v6 configuration];
    v28 = configuration2;
    if (configuration == configuration2)
    {
    }

    else
    {
      configuration3 = [(REMTemplateStorage *)self configuration];
      configuration4 = [v6 configuration];
      v31 = [configuration3 isEqual:configuration4];

      if (!v31)
      {
        goto LABEL_77;
      }
    }

    name = [(REMTemplateStorage *)self name];
    name2 = [v6 name];
    v34 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(REMTemplateStorage *)self name];
      name4 = [v6 name];
      v37 = [name3 isEqual:name4];

      if (!v37)
      {
        goto LABEL_77;
      }
    }

    color = [(REMTemplateStorage *)self color];
    color2 = [v6 color];
    v40 = color2;
    if (color == color2)
    {
    }

    else
    {
      color3 = [(REMTemplateStorage *)self color];
      color4 = [v6 color];
      v43 = [color3 isEqual:color4];

      if (!v43)
      {
        goto LABEL_77;
      }
    }

    badgeEmblem = [(REMTemplateStorage *)self badgeEmblem];
    badgeEmblem2 = [v6 badgeEmblem];
    v46 = badgeEmblem2;
    if (badgeEmblem == badgeEmblem2)
    {
    }

    else
    {
      badgeEmblem3 = [(REMTemplateStorage *)self badgeEmblem];
      badgeEmblem4 = [v6 badgeEmblem];
      v49 = [badgeEmblem3 isEqual:badgeEmblem4];

      if (!v49)
      {
        goto LABEL_77;
      }
    }

    showingLargeAttachments = [(REMTemplateStorage *)self showingLargeAttachments];
    if (showingLargeAttachments == [v6 showingLargeAttachments])
    {
      sortingStyle = [(REMTemplateStorage *)self sortingStyle];
      sortingStyle2 = [v6 sortingStyle];
      v53 = sortingStyle2;
      if (sortingStyle == sortingStyle2)
      {
      }

      else
      {
        sortingStyle3 = [(REMTemplateStorage *)self sortingStyle];
        sortingStyle4 = [v6 sortingStyle];
        v56 = [sortingStyle3 isEqual:sortingStyle4];

        if (!v56)
        {
          goto LABEL_77;
        }
      }

      unsavedManualOrdering = [(REMTemplateStorage *)self unsavedManualOrdering];
      unsavedManualOrdering2 = [v6 unsavedManualOrdering];
      v59 = unsavedManualOrdering2;
      if (unsavedManualOrdering == unsavedManualOrdering2)
      {
      }

      else
      {
        unsavedManualOrdering3 = [(REMTemplateStorage *)self unsavedManualOrdering];
        unsavedManualOrdering4 = [v6 unsavedManualOrdering];
        v62 = [unsavedManualOrdering3 isEqual:unsavedManualOrdering4];

        if (!v62)
        {
          goto LABEL_77;
        }
      }

      shouldUpdateSectionsOrdering = [(REMTemplateStorage *)self shouldUpdateSectionsOrdering];
      if (shouldUpdateSectionsOrdering == [v6 shouldUpdateSectionsOrdering])
      {
        unsavedSectionIDsOrdering = [(REMTemplateStorage *)self unsavedSectionIDsOrdering];
        unsavedSectionIDsOrdering2 = [v6 unsavedSectionIDsOrdering];
        v66 = unsavedSectionIDsOrdering2;
        if (unsavedSectionIDsOrdering == unsavedSectionIDsOrdering2)
        {
        }

        else
        {
          unsavedSectionIDsOrdering3 = [(REMTemplateStorage *)self unsavedSectionIDsOrdering];
          unsavedSectionIDsOrdering4 = [v6 unsavedSectionIDsOrdering];
          v69 = [unsavedSectionIDsOrdering3 isEqual:unsavedSectionIDsOrdering4];

          if (!v69)
          {
            goto LABEL_77;
          }
        }

        unsavedMembershipsOfRemindersInSections = [(REMTemplateStorage *)self unsavedMembershipsOfRemindersInSections];
        unsavedMembershipsOfRemindersInSections2 = [v6 unsavedMembershipsOfRemindersInSections];
        v72 = unsavedMembershipsOfRemindersInSections2;
        if (unsavedMembershipsOfRemindersInSections == unsavedMembershipsOfRemindersInSections2)
        {
        }

        else
        {
          unsavedMembershipsOfRemindersInSections3 = [(REMTemplateStorage *)self unsavedMembershipsOfRemindersInSections];
          unsavedMembershipsOfRemindersInSections4 = [v6 unsavedMembershipsOfRemindersInSections];
          v75 = [unsavedMembershipsOfRemindersInSections3 isEqual:unsavedMembershipsOfRemindersInSections4];

          if (!v75)
          {
            goto LABEL_77;
          }
        }

        sectionIDsToUndelete = [(REMTemplateStorage *)self sectionIDsToUndelete];
        sectionIDsToUndelete2 = [v6 sectionIDsToUndelete];
        v78 = sectionIDsToUndelete2;
        if (sectionIDsToUndelete == sectionIDsToUndelete2)
        {
        }

        else
        {
          sectionIDsToUndelete3 = [(REMTemplateStorage *)self sectionIDsToUndelete];
          sectionIDsToUndelete4 = [v6 sectionIDsToUndelete];
          v81 = [sectionIDsToUndelete3 isEqual:sectionIDsToUndelete4];

          if (!v81)
          {
            goto LABEL_77;
          }
        }

        mostRecentPublicLinkUpdateRequestDate = [(REMTemplateStorage *)self mostRecentPublicLinkUpdateRequestDate];
        mostRecentPublicLinkUpdateRequestDate2 = [v6 mostRecentPublicLinkUpdateRequestDate];
        v84 = mostRecentPublicLinkUpdateRequestDate2;
        if (mostRecentPublicLinkUpdateRequestDate == mostRecentPublicLinkUpdateRequestDate2)
        {
        }

        else
        {
          mostRecentPublicLinkUpdateRequestDate3 = [(REMTemplateStorage *)self mostRecentPublicLinkUpdateRequestDate];
          mostRecentPublicLinkUpdateRequestDate4 = [v6 mostRecentPublicLinkUpdateRequestDate];
          v87 = [mostRecentPublicLinkUpdateRequestDate3 isEqual:mostRecentPublicLinkUpdateRequestDate4];

          if (!v87)
          {
            goto LABEL_77;
          }
        }

        publicLink = [(REMTemplateStorage *)self publicLink];
        publicLink2 = [v6 publicLink];
        v90 = publicLink2;
        if (publicLink == publicLink2)
        {
        }

        else
        {
          publicLink3 = [(REMTemplateStorage *)self publicLink];
          publicLink4 = [v6 publicLink];
          v93 = [publicLink3 isEqual:publicLink4];

          if (!v93)
          {
            goto LABEL_77;
          }
        }

        isPersisted = [(REMTemplateStorage *)self isPersisted];
        if (isPersisted == [v6 isPersisted])
        {
          accountCapabilities = [(REMTemplateStorage *)self accountCapabilities];
          accountCapabilities2 = [v6 accountCapabilities];
          v97 = accountCapabilities2;
          if (accountCapabilities == accountCapabilities2)
          {
          }

          else
          {
            accountCapabilities3 = [(REMTemplateStorage *)self accountCapabilities];
            accountCapabilities4 = [v6 accountCapabilities];
            v100 = [accountCapabilities3 isEqual:accountCapabilities4];

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

          resolutionTokenMap = [(REMTemplateStorage *)self resolutionTokenMap];
          resolutionTokenMap2 = [v6 resolutionTokenMap];
          v104 = resolutionTokenMap2;
          if (resolutionTokenMap == resolutionTokenMap2)
          {
          }

          else
          {
            resolutionTokenMap3 = [(REMTemplateStorage *)self resolutionTokenMap];
            resolutionTokenMap4 = [v6 resolutionTokenMap];
            v107 = [resolutionTokenMap3 isEqual:resolutionTokenMap4];

            if (!v107)
            {
              goto LABEL_77;
            }
          }

          minimumSupportedVersion = [(REMTemplateStorage *)self minimumSupportedVersion];
          if (minimumSupportedVersion == [v6 minimumSupportedVersion])
          {
            effectiveMinimumSupportedVersion = [(REMTemplateStorage *)self effectiveMinimumSupportedVersion];
            v13 = effectiveMinimumSupportedVersion == [v6 effectiveMinimumSupportedVersion];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMTemplateStorage alloc];
  objectID = [(REMTemplateStorage *)self objectID];
  accountID = [(REMTemplateStorage *)self accountID];
  name = [(REMTemplateStorage *)self name];
  v8 = [(REMTemplateStorage *)v4 initWithObjectID:objectID accountID:accountID name:name];

  parentAccountID = [(REMTemplateStorage *)self parentAccountID];
  [(REMTemplateStorage *)v8 setParentAccountID:parentAccountID];

  configuration = [(REMTemplateStorage *)self configuration];
  v11 = [configuration copy];
  [(REMTemplateStorage *)v8 setConfiguration:v11];

  color = [(REMTemplateStorage *)self color];
  [(REMTemplateStorage *)v8 setColor:color];

  badgeEmblem = [(REMTemplateStorage *)self badgeEmblem];
  [(REMTemplateStorage *)v8 setBadgeEmblem:badgeEmblem];

  [(REMTemplateStorage *)v8 setShowingLargeAttachments:[(REMTemplateStorage *)self showingLargeAttachments]];
  sortingStyle = [(REMTemplateStorage *)self sortingStyle];
  [(REMTemplateStorage *)v8 setSortingStyle:sortingStyle];

  unsavedManualOrdering = [(REMTemplateStorage *)self unsavedManualOrdering];
  v16 = [unsavedManualOrdering copy];
  [(REMTemplateStorage *)v8 setUnsavedManualOrdering:v16];

  [(REMTemplateStorage *)v8 setShouldUpdateSectionsOrdering:[(REMTemplateStorage *)self shouldUpdateSectionsOrdering]];
  unsavedSectionIDsOrdering = [(REMTemplateStorage *)self unsavedSectionIDsOrdering];
  v18 = [unsavedSectionIDsOrdering copy];
  [(REMTemplateStorage *)v8 setUnsavedSectionIDsOrdering:v18];

  unsavedMembershipsOfRemindersInSections = [(REMTemplateStorage *)self unsavedMembershipsOfRemindersInSections];
  v20 = [unsavedMembershipsOfRemindersInSections copy];
  [(REMTemplateStorage *)v8 setUnsavedMembershipsOfRemindersInSections:v20];

  sectionIDsToUndelete = [(REMTemplateStorage *)self sectionIDsToUndelete];
  v22 = [sectionIDsToUndelete copy];
  [(REMTemplateStorage *)v8 setSectionIDsToUndelete:v22];

  mostRecentPublicLinkUpdateRequestDate = [(REMTemplateStorage *)self mostRecentPublicLinkUpdateRequestDate];
  [(REMTemplateStorage *)v8 setMostRecentPublicLinkUpdateRequestDate:mostRecentPublicLinkUpdateRequestDate];

  publicLink = [(REMTemplateStorage *)self publicLink];
  v25 = [publicLink copy];
  [(REMTemplateStorage *)v8 setPublicLink:v25];

  [(REMTemplateStorage *)v8 setIsPersisted:[(REMTemplateStorage *)self isPersisted]];
  v26 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  resolutionTokenMap = v8->_resolutionTokenMap;
  v8->_resolutionTokenMap = v26;

  resolutionTokenMapData = [(REMTemplateStorage *)self resolutionTokenMapData];
  [(REMTemplateStorage *)v8 setResolutionTokenMapData:resolutionTokenMapData];

  [(REMTemplateStorage *)v8 setMinimumSupportedVersion:[(REMTemplateStorage *)self minimumSupportedVersion]];
  [(REMTemplateStorage *)v8 setEffectiveMinimumSupportedVersion:[(REMTemplateStorage *)self effectiveMinimumSupportedVersion]];
  v8->_storeGeneration = self->_storeGeneration;
  v8->_copyGeneration = self->_copyGeneration + 1;
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMTemplateStorage *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  accountID = [(REMTemplateStorage *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  parentAccountID = [(REMTemplateStorage *)self parentAccountID];
  [coderCopy encodeObject:parentAccountID forKey:@"parentAccountID"];

  configuration = [(REMTemplateStorage *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  name = [(REMTemplateStorage *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  color = [(REMTemplateStorage *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  badgeEmblem = [(REMTemplateStorage *)self badgeEmblem];
  [coderCopy encodeObject:badgeEmblem forKey:@"badgeEmblem"];

  [coderCopy encodeBool:-[REMTemplateStorage showingLargeAttachments](self forKey:{"showingLargeAttachments"), @"showingLargeAttachments"}];
  sortingStyle = [(REMTemplateStorage *)self sortingStyle];
  [coderCopy encodeObject:sortingStyle forKey:@"sortingStyle"];

  unsavedManualOrdering = [(REMTemplateStorage *)self unsavedManualOrdering];
  [coderCopy encodeObject:unsavedManualOrdering forKey:@"unsavedManualOrdering"];

  [coderCopy encodeBool:-[REMTemplateStorage shouldUpdateSectionsOrdering](self forKey:{"shouldUpdateSectionsOrdering"), @"shouldUpdateSectionsOrdering"}];
  unsavedSectionIDsOrdering = [(REMTemplateStorage *)self unsavedSectionIDsOrdering];
  [coderCopy encodeObject:unsavedSectionIDsOrdering forKey:@"unsavedSectionIDsOrdering"];

  unsavedMembershipsOfRemindersInSections = [(REMTemplateStorage *)self unsavedMembershipsOfRemindersInSections];
  [coderCopy encodeObject:unsavedMembershipsOfRemindersInSections forKey:@"unsavedMembershipsOfRemindersInSections"];

  sectionIDsToUndelete = [(REMTemplateStorage *)self sectionIDsToUndelete];
  allObjects = [sectionIDsToUndelete allObjects];
  [coderCopy encodeObject:allObjects forKey:@"sectionIDsToUndelete"];

  mostRecentPublicLinkUpdateRequestDate = [(REMTemplateStorage *)self mostRecentPublicLinkUpdateRequestDate];
  [coderCopy encodeObject:mostRecentPublicLinkUpdateRequestDate forKey:@"mostRecentPublicLinkUpdateRequestDate"];

  publicLink = [(REMTemplateStorage *)self publicLink];
  [coderCopy encodeObject:publicLink forKey:@"publicLink"];

  [coderCopy encodeBool:-[REMTemplateStorage isPersisted](self forKey:{"isPersisted"), @"isPersisted"}];
  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [coderCopy encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMap"];
    resolutionTokenMapData = [(REMTemplateStorage *)self resolutionTokenMapData];
    [coderCopy encodeObject:resolutionTokenMapData forKey:@"resolutionTokenMapData"];
  }

  [coderCopy encodeInteger:-[REMTemplateStorage minimumSupportedVersion](self forKey:{"minimumSupportedVersion"), @"minimumSupportedVersion"}];
  [coderCopy encodeInteger:-[REMTemplateStorage effectiveMinimumSupportedVersion](self forKey:{"effectiveMinimumSupportedVersion"), @"effectiveMinimumSupportedVersion"}];
}

- (REMTemplateStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
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
    selfCopy = 0;
  }

  else
  {
    v12 = [(REMTemplateStorage *)self initWithObjectID:v5 accountID:v6 name:v7];
    v13 = v12;
    if (v12)
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentAccountID"];
      parentAccountID = v13->_parentAccountID;
      v13->_parentAccountID = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
      configuration = v13->_configuration;
      v13->_configuration = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
      color = v13->_color;
      v13->_color = v18;

      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"badgeEmblem"];
      badgeEmblem = v13->_badgeEmblem;
      v13->_badgeEmblem = v20;

      v13->_showingLargeAttachments = [coderCopy decodeBoolForKey:@"showingLargeAttachments"];
      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unsavedManualOrdering"];
      unsavedManualOrdering = v13->_unsavedManualOrdering;
      v13->_unsavedManualOrdering = v22;

      v13->_shouldUpdateSectionsOrdering = [coderCopy decodeBoolForKey:@"shouldUpdateSectionsOrdering"];
      v24 = MEMORY[0x1E695DFD8];
      v25 = objc_opt_class();
      v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
      v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"unsavedSectionIDsOrdering"];
      unsavedSectionIDsOrdering = v13->_unsavedSectionIDsOrdering;
      v13->_unsavedSectionIDsOrdering = v27;

      v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unsavedMembershipsOfRemindersInSections"];
      unsavedMembershipsOfRemindersInSections = v13->_unsavedMembershipsOfRemindersInSections;
      v13->_unsavedMembershipsOfRemindersInSections = v29;

      v31 = MEMORY[0x1E695DFD8];
      v32 = objc_opt_class();
      v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
      v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"sectionIDsToUndelete"];

      v35 = [MEMORY[0x1E695DFD8] setWithArray:v34];
      sectionIDsToUndelete = v13->_sectionIDsToUndelete;
      v13->_sectionIDsToUndelete = v35;

      v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentPublicLinkUpdateRequestDate"];
      mostRecentPublicLinkUpdateRequestDate = v13->_mostRecentPublicLinkUpdateRequestDate;
      v13->_mostRecentPublicLinkUpdateRequestDate = v37;

      v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicLink"];
      publicLink = v13->_publicLink;
      v13->_publicLink = v39;

      v13->_isPersisted = [coderCopy decodeBoolForKey:@"isPersisted"];
      v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sortingStyle"];
      [(REMTemplateStorage *)v13 setSortingStyle:v41];

      v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
      v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
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

      -[REMTemplateStorage setMinimumSupportedVersion:](v13, "setMinimumSupportedVersion:", [coderCopy decodeIntegerForKey:@"minimumSupportedVersion"]);
      -[REMTemplateStorage setEffectiveMinimumSupportedVersion:](v13, "setEffectiveMinimumSupportedVersion:", [coderCopy decodeIntegerForKey:@"effectiveMinimumSupportedVersion"]);
    }

    self = v13;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isUnsupported
{
  effectiveMinimumSupportedVersion = [(REMTemplateStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(effectiveMinimumSupportedVersion);
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
    resolutionTokenMapData = [(REMTemplateStorage *)self resolutionTokenMapData];
    if (!resolutionTokenMapData)
    {
      v7 = +[REMLogStore read];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(REMTemplateStorage *)self resolutionTokenMap];
      }
    }

    cdKeyToStorageKeyMap = [(REMTemplateStorage *)self cdKeyToStorageKeyMap];
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
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Nil resolutionTokenMapData when reading resolutionTokenMap from template storage. Initialize an empty map {template: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end