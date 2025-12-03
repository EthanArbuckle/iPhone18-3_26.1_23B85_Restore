@interface MFMailboxUid
+ (id)specialNameForType:(int)type;
- (BOOL)hasChildren;
- (BOOL)isDescendantOfMailbox:(id)mailbox;
- (BOOL)isNotesMailboxUid;
- (BOOL)isSentMailboxUid;
- (BOOL)isSpecialMailboxUid;
- (BOOL)isStandardizedMailboxUid;
- (BOOL)isValid;
- (BOOL)setChildren:(id)children;
- (BOOL)shouldRestoreMessagesAfterFailedDelete;
- (BOOL)userInfoBoolForKey:(id)key;
- (MFInvocationQueue)attachmentDownloadQueue;
- (MFMailboxUid)init;
- (MFMailboxUid)initWithAccount:(id)account;
- (NSString)description;
- (NSString)vf_publicDescription;
- (const)mambaID;
- (double)suggestionsLostMessageSearchTimestamp;
- (id)URL;
- (id)URLString;
- (id)URLStringNonNil;
- (id)URLStringWithAccount:(id)account;
- (id)_dictionaryRepresentation;
- (id)_initWithName:(id)name attributes:(unsigned int)attributes forAccount:(id)account;
- (id)_loadUserInfo;
- (id)_mutableChildren;
- (id)_privacySafeDescription;
- (id)account;
- (id)accountDisplayName;
- (id)accountRelativePath;
- (id)ancestralAccount;
- (id)childAtIndex:(unint64_t)index;
- (id)childWithExtraAttribute:(id)attribute;
- (id)criterion;
- (id)depthFirstEnumerator;
- (id)descendantWithExtraAttribute:(id)attribute;
- (id)displayName;
- (id)displayNameUsingSpecialNames;
- (id)fullPath;
- (id)fullPathNonNil;
- (id)mutableCopyOfChildren;
- (id)name;
- (id)oldURLString;
- (id)pathRelativeToMailbox:(id)mailbox;
- (id)pathRelativeToMailboxForDisplay:(id)display;
- (id)realFullPath;
- (id)representedAccount;
- (id)rootMailbox;
- (id)store;
- (id)tildeAbbreviatedPath;
- (id)topMailbox;
- (id)userInfoDictionary;
- (id)userInfoForSerialization;
- (id)userInfoObjectForKey:(id)key;
- (int64_t)indexToInsertChildMailboxUid:(id)uid;
- (int64_t)statusCountDelta;
- (unint64_t)indexOfChild:(id)child;
- (unint64_t)nonDeletedCount;
- (unint64_t)numberOfChildren;
- (unint64_t)numberOfDescendants;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)suggestionsLostMessageSearchResultCount;
- (unint64_t)unreadCount;
- (unint64_t)unreadCountMatchingCriterion:(id)criterion;
- (unsigned)mailboxID;
- (void)addToPostOrderTraversal:(id)traversal;
- (void)dealloc;
- (void)flushCriteria;
- (void)invalidate;
- (void)removeChild:(id)child;
- (void)saveUserInfo;
- (void)setCriterion:(id)criterion;
- (void)setLastViewedMessageID:(id)d;
- (void)setName:(id)name;
- (void)setParent:(id)parent;
- (void)setRepresentedAccount:(id)account;
- (void)setUserInfoBool:(BOOL)bool forKey:(id)key;
- (void)setUserInfoObject:(id)object forKey:(id)key;
- (void)setUserInfoWithDictionary:(id)dictionary;
- (void)sortChildren;
- (void)updateMostRecentStatusCount:(unint64_t)count;
- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)count;
@end

@implementation MFMailboxUid

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMailboxUid;
  [(MFMailboxUid *)&v2 dealloc];
}

- (MFMailboxUid)init
{
  v7.receiver = self;
  v7.super_class = MFMailboxUid;
  v2 = [(MFMailboxUid *)&v7 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    v5 = CFUUIDCreateString(v3, v4);
    CFRelease(v4);
    objc_storeStrong(&v2->uniqueId, v5);
    v2->_mailboxID = -1;
  }

  return v2;
}

- (MFMailboxUid)initWithAccount:(id)account
{
  accountCopy = account;
  v5 = [(MFMailboxUid *)self init];
  v6 = v5;
  if (v5)
  {
    v5->mambaID = accountCopy[1];
    v7 = [VFWeakReferenceHolder weakReferenceWithObject:accountCopy];
    account = v6->_account;
    v6->_account = v7;

    v6->_attributes = 18;
  }

  return v6;
}

- (id)_initWithName:(id)name attributes:(unsigned int)attributes forAccount:(id)account
{
  nameCopy = name;
  accountCopy = account;
  if (nameCopy)
  {
    v10 = [(MFMailboxUid *)self init];
    v11 = v10;
    if (v10)
    {
      v10->mambaID = accountCopy[1];
      v12 = [nameCopy copy];
      pathComponent = v11->_pathComponent;
      v11->_pathComponent = v12;

LABEL_5:
      v11->_attributes = attributes;
    }
  }

  else
  {
    v11 = [(MFMailboxUid *)self initWithAccount:accountCopy];
    if (v11)
    {
      goto LABEL_5;
    }
  }

  return v11;
}

- (id)_dictionaryRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  attributes = [(MFMailboxUid *)self attributes];
  v4 = MEMORY[0x277CBEB38];
  name = [(MFMailboxUid *)self name];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:attributes];
  v7 = [v4 dictionaryWithObjectsAndKeys:{name, @"MailboxName", v6, @"MailboxAttributes", 0}];

  if ((attributes & 1) == 0)
  {
    children = [(MFMailboxUid *)self children];
    v9 = [children count];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v9];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = children;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
            [v10 addObject:dictionaryRepresentation];
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      [v7 setObject:v10 forKeyedSubscript:@"MailboxChildren"];
    }
  }

  extraAttributes = [(MFMailboxUid *)self extraAttributes];
  if (extraAttributes)
  {
    [v7 setObject:extraAttributes forKeyedSubscript:@"MailboxExtraAttributes"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (const)mambaID
{
  if (self->mambaID)
  {
    return self->mambaID;
  }

  else
  {
    return "???";
  }
}

- (id)displayName
{
  [(MFMailboxUid *)self mf_lock];
  displayName = [(MailAccount *)self->_representedAccount displayName];
  [(MFMailboxUid *)self mf_unlock];
  if (displayName && ([displayName isEqualToString:&stru_288159858] & 1) == 0)
  {
    v7 = displayName;
  }

  else
  {
    account = [(MFMailboxUid *)self account];
    v5 = account;
    if ((self->_attributes & 0x10) != 0)
    {
      displayName2 = [account displayName];
    }

    else
    {
      if (account)
      {
        [account _pathComponentForUidName:self->_pathComponent];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"*** Orphaned mailbox %@", self->_pathComponent];
      }
      displayName2 = ;
    }

    v7 = displayName2;
  }

  return v7;
}

- (id)name
{
  if ((self->_attributes & 0x10) != 0)
  {
    account = [(MFMailboxUid *)self account];
    displayName = [account displayName];
    goto LABEL_5;
  }

  account = [(VFWeakReferenceHolder *)self->_parent retainedReference];
  if (account)
  {
    displayName = self->_pathComponent;
LABEL_5:
    v5 = displayName;
    goto LABEL_6;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** Orphaned mailbox %@", self->_pathComponent];
  parent = self->_parent;
  self->_parent = 0;

LABEL_6:

  return v5;
}

+ (id)specialNameForType:(int)type
{
  if ((type - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_279E35B08[type - 1];
  }
}

- (id)displayNameUsingSpecialNames
{
  type = [(MFMailboxUid *)self type];
  account = [(MFMailboxUid *)self account];
  v5 = [account displayNameUsingSpecialNamesForMailboxUid:self];

  if (!v5)
  {
    displayName = [objc_opt_class() specialNameForType:type];
    if (!displayName)
    {
      displayName = [(MFMailboxUid *)self displayName];
    }

    v5 = displayName;
  }

  return v5;
}

- (void)setName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqual:self->_pathComponent] & 1) == 0)
  {
    [(MFMailboxUid *)self mf_lock];
    objc_storeStrong(&self->_pathComponent, name);
    realFullPath = self->_realFullPath;
    self->_realFullPath = 0;

    uRLString = [(MFMailboxUid *)self URLString];

    if (uRLString)
    {
      criterion = self->_criterion;
      self->_criterion = 0;
    }

    [(MFMailboxUid *)self mf_unlock];
  }
}

- (id)accountDisplayName
{
  representedAccount = [(MFMailboxUid *)self representedAccount];
  displayName = [representedAccount displayName];

  return displayName;
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  account = [(MFMailboxUid *)self account];
  library = [account library];
  uRLString = [(MFMailboxUid *)self URLString];
  v6 = [library serverUnreadOnlyOnServerCountForMailbox:uRLString];

  return v6;
}

- (unint64_t)unreadCount
{
  account = [(MFMailboxUid *)self account];
  library = [account library];
  uRLString = [(MFMailboxUid *)self URLString];
  v6 = [library unreadCountForMailbox:uRLString];

  return v6;
}

- (unint64_t)unreadCountMatchingCriterion:(id)criterion
{
  criterionCopy = criterion;
  account = [(MFMailboxUid *)self account];
  library = [account library];
  uRLString = [(MFMailboxUid *)self URLString];
  v8 = [library unreadCountForMailbox:uRLString matchingCriterion:criterionCopy];

  return v8;
}

- (unint64_t)nonDeletedCount
{
  account = [(MFMailboxUid *)self account];
  library = [account library];
  uRLString = [(MFMailboxUid *)self URLString];
  v6 = [library nonDeletedCountForMailbox:uRLString];

  return v6;
}

- (int64_t)statusCountDelta
{
  account = [(MFMailboxUid *)self account];
  library = [account library];
  uRLString = [(MFMailboxUid *)self URLString];
  v6 = [library statusCountDeltaForMailbox:uRLString];

  return v6;
}

- (void)updateMostRecentStatusCount:(unint64_t)count
{
  account = [(MFMailboxUid *)self account];
  library = [account library];

  uRLString = [(MFMailboxUid *)self URLString];
  if ([library mostRecentStatusCountForMailbox:uRLString] != count)
  {
    [library setMostRecentStatusCount:count forMailbox:uRLString];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"MailboxUserInfoDidChange" object:self];
  }
}

- (id)_mutableChildren
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(NSMutableArray *)self->_children copy];
  [(MFMailboxUid *)self mf_unlock];

  return v3;
}

- (BOOL)hasChildren
{
  [(MFMailboxUid *)self mf_lock];
  v3 = (self->_attributes & 0x10) != 0 || [(NSMutableArray *)self->_children count]!= 0;
  [(MFMailboxUid *)self mf_unlock];
  return v3;
}

- (id)depthFirstEnumerator
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [objc_allocWithZone(_MFMailboxUidEnumerator) initWithMailbox:self];
  [(MFMailboxUid *)self mf_unlock];

  return v3;
}

- (unint64_t)numberOfChildren
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(NSMutableArray *)self->_children count];
  [(MFMailboxUid *)self mf_unlock];
  return v3;
}

- (unint64_t)numberOfDescendants
{
  v16 = *MEMORY[0x277D85DE8];
  [(MFMailboxUid *)self mf_lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_children;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) numberOfDescendants] + 1;
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(MFMailboxUid *)self mf_unlock];
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)childAtIndex:(unint64_t)index
{
  [(MFMailboxUid *)self mf_lock];
  v5 = [(NSMutableArray *)self->_children objectAtIndex:index];
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (unint64_t)indexOfChild:(id)child
{
  childCopy = child;
  [(MFMailboxUid *)self mf_lock];
  v5 = [(NSMutableArray *)self->_children indexOfObject:childCopy];

  [(MFMailboxUid *)self mf_unlock];
  return v5;
}

- (id)childWithExtraAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ([attributeCopy length])
  {
    v5 = _MFChildWithPredicate(self, mailboxHasExtraAttribute, attributeCopy);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)descendantWithExtraAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ([attributeCopy length])
  {
    v5 = _MFDescendantWithPredicate(self, mailboxHasExtraAttribute, attributeCopy);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mutableCopyOfChildren
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(NSMutableArray *)self->_children mutableCopy];
  [(MFMailboxUid *)self mf_unlock];
  return v3;
}

- (id)fullPathNonNil
{
  fullPath = [(MFMailboxUid *)self fullPath];
  if (!fullPath)
  {
    fullPath = *MEMORY[0x277CBEEE8];
  }

  return fullPath;
}

- (BOOL)setChildren:(id)children
{
  v41 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  [(MFMailboxUid *)self mf_lock];
  if ([(MFMailboxUid *)self isValid])
  {
    mutableCopyOfChildren = [(MFMailboxUid *)self mutableCopyOfChildren];
  }

  else
  {
    mutableCopyOfChildren = 0;
  }

  [(NSMutableArray *)self->_children removeAllObjects];
  if ([childrenCopy count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = childrenCopy;
    v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v37;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(v6);
          }

          bindParentAndChild(self, *(*(&v36 + 1) + 8 * i));
        }

        v8 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v8);
    }

    if (!mutableCopyOfChildren || ([mutableCopyOfChildren isEqualToArray:v6] & 1) == 0)
    {
      v11 = 1;
      goto LABEL_18;
    }
  }

  else if (mutableCopyOfChildren)
  {
    v11 = [mutableCopyOfChildren count] != 0;
    goto LABEL_18;
  }

  v11 = 0;
LABEL_18:
  [(MFMailboxUid *)self mf_unlock];
  if ([mutableCopyOfChildren count])
  {
    v30 = v11;
    v31 = childrenCopy;
    v12 = [mutableCopyOfChildren arrayByApplyingSelector:sel_URLStringNonNil];
    v13 = [mutableCopyOfChildren arrayByApplyingSelector:sel_fullPathNonNil];
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [mutableCopyOfChildren count];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v35 = *MEMORY[0x277CBEEE8];
      v32 = mutableCopyOfChildren;
      do
      {
        v17 = [mutableCopyOfChildren objectAtIndex:v16];
        parent = [v17 parent];

        if (!parent)
        {
          v19 = [v12 objectAtIndex:v16];
          if (v19 != v35)
          {
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v19 forKey:@"URLString"];
            defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter postNotificationName:@"MailboxUidDidBecomeInvalidNotification" object:v17 userInfo:v20];

            if ([v17 isStore])
            {
              v22 = [MailAccount mailboxUidFromActiveAccountsForURL:v19];
              v23 = v22;
              if (!v22 || ([v22 isValid] & 1) == 0)
              {
                [v34 addObject:v19];
                [v13 objectAtIndex:v16];
                v24 = v13;
                v26 = v25 = v12;
                [v33 addObject:v26];

                v12 = v25;
                v13 = v24;
                mutableCopyOfChildren = v32;
              }
            }
          }
        }

        ++v16;
      }

      while (v15 != v16);
    }

    if ([v34 count])
    {
      account = [(MFMailboxUid *)self account];
      [account _mailboxesWereRemovedFromTree:v34 withFileSystemPaths:v33];
    }

    childrenCopy = v31;
    v11 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)sortChildren
{
  [(MFMailboxUid *)self mf_lock];
  [(NSMutableArray *)self->_children sortUsingFunction:_MFCompareMailboxUidsNS context:[(MFMailboxUid *)self account]];

  [(MFMailboxUid *)self mf_unlock];
}

- (void)removeChild:(id)child
{
  childCopy = child;
  [(MFMailboxUid *)self mf_lock];
  [(NSMutableArray *)self->_children removeObject:childCopy];

  [(MFMailboxUid *)self mf_unlock];
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  parent = [(MFMailboxUid *)self parent];

  v5 = parentCopy;
  if (parent != parentCopy)
  {
    bindParentAndChild(parentCopy, self);
    [(MFMailboxUid *)self mf_lock];
    uRLString = [(MFMailboxUid *)self URLString];

    if (uRLString)
    {
      criterion = self->_criterion;
      self->_criterion = 0;
    }

    [(MFMailboxUid *)self mf_unlock];
    v5 = parentCopy;
  }
}

- (void)flushCriteria
{
  [(MFMailboxUid *)self mf_lock];
  criterion = self->_criterion;
  self->_criterion = 0;

  [(MFMailboxUid *)self mf_unlock];
}

- (void)setRepresentedAccount:(id)account
{
  accountCopy = account;
  [(MFMailboxUid *)self mf_lock];
  if (self->_representedAccount != accountCopy)
  {
    objc_storeStrong(&self->_representedAccount, account);
  }

  [(MFMailboxUid *)self mf_unlock];
}

- (id)representedAccount
{
  [(MFMailboxUid *)self mf_lock];
  representedAccount = self->_representedAccount;
  if (representedAccount)
  {
    account = representedAccount;
  }

  else
  {
    account = [(MFMailboxUid *)self account];
  }

  v5 = account;
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (id)topMailbox
{
  selfCopy = self;
  parent = [(MFMailboxUid *)selfCopy parent];
  if (parent)
  {
    parent2 = parent;
    do
    {
      v5 = parent2;

      parent2 = [(MFMailboxUid *)v5 parent];

      selfCopy = v5;
    }

    while (parent2);
  }

  else
  {
    v5 = selfCopy;
  }

  return v5;
}

- (id)rootMailbox
{
  topMailbox = [(MFMailboxUid *)self topMailbox];
  if ((topMailbox[48] & 0x10) == 0)
  {

    topMailbox = 0;
  }

  return topMailbox;
}

- (id)account
{
  rootMailbox = [(MFMailboxUid *)self rootMailbox];
  v3 = rootMailbox;
  if (rootMailbox)
  {
    reference = [*(rootMailbox + 32) reference];
  }

  else
  {
    reference = 0;
  }

  return reference;
}

- (BOOL)isValid
{
  rootMailbox = [(MFMailboxUid *)self rootMailbox];
  v3 = rootMailbox != 0;

  return v3;
}

- (void)invalidate
{
  rootMailbox = [(MFMailboxUid *)self rootMailbox];
  [(MFMailboxUid *)self saveUserInfo];
  if (rootMailbox == self)
  {
    account = self->_account;
    self->_account = 0;

    self->_attributes &= ~0x10u;
  }

  parent = [(MFMailboxUid *)self parent];
  [parent removeChild:self];

  v5 = rootMailbox;
  if (rootMailbox)
  {
    uRLString = [(MFMailboxUid *)self URLString];
    if (uRLString)
    {
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:uRLString forKey:@"URLString"];
    }

    else
    {
      v7 = 0;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"MailboxUidDidBecomeInvalidNotification" object:self userInfo:v7];

    v5 = rootMailbox;
  }
}

- (BOOL)isStandardizedMailboxUid
{
  type = [(MFMailboxUid *)self type];

  return [MFMailboxUid isStandardizedMailboxUidType:type];
}

- (BOOL)isSpecialMailboxUid
{
  selfCopy = self;
  account = [(MFMailboxUid *)self account];
  LOBYTE(selfCopy) = [account isSpecialMailbox:selfCopy];

  return selfCopy;
}

- (BOOL)isSentMailboxUid
{
  v3 = objc_opt_class();
  type = [(MFMailboxUid *)self type];

  return [v3 isSentMailboxType:type];
}

- (BOOL)isNotesMailboxUid
{
  name = [(MFMailboxUid *)self name];
  if ([name isEqualToString:@"Notes"])
  {
    parent = [(MFMailboxUid *)self parent];
    account = [(MFMailboxUid *)self account];
    rootMailboxUid = [account rootMailboxUid];
    v7 = parent == rootMailboxUid;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accountRelativePath
{
  account = [(MFMailboxUid *)self account];
  _mailboxPathPrefix = [account _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v5 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, account, 0, &stru_288159858, _mailboxPathPrefix, 0, 0);
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (id)fullPath
{
  account = [(MFMailboxUid *)self account];
  path = [account path];
  mailboxPathExtension = [account mailboxPathExtension];
  _mailboxPathPrefix = [account _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v7 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, account, 0, path, _mailboxPathPrefix, mailboxPathExtension, 0);
  [(MFMailboxUid *)self mf_unlock];

  return v7;
}

- (id)realFullPath
{
  p_realFullPath = &self->_realFullPath;
  realFullPath = self->_realFullPath;
  if (!realFullPath)
  {
    fullPath = [(MFMailboxUid *)self fullPath];
    mf_betterStringByResolvingSymlinksInPath = [fullPath mf_betterStringByResolvingSymlinksInPath];

    [(MFMailboxUid *)self mf_lock];
    if (!self->_realFullPath)
    {
      objc_storeStrong(p_realFullPath, mf_betterStringByResolvingSymlinksInPath);
    }

    [(MFMailboxUid *)self mf_unlock];

    realFullPath = self->_realFullPath;
  }

  return realFullPath;
}

- (id)tildeAbbreviatedPath
{
  account = [(MFMailboxUid *)self account];
  tildeAbbreviatedPath = [account tildeAbbreviatedPath];
  mailboxPathExtension = [account mailboxPathExtension];
  _mailboxPathPrefix = [account _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v7 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, account, 0, tildeAbbreviatedPath, _mailboxPathPrefix, mailboxPathExtension, 0);
  [(MFMailboxUid *)self mf_unlock];

  return v7;
}

- (id)pathRelativeToMailbox:(id)mailbox
{
  if (mailbox)
  {
    mailboxCopy = mailbox;
    account = [(MFMailboxUid *)self account];
    v6 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, account, mailboxCopy, &stru_288159858, 0, 0, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pathRelativeToMailboxForDisplay:(id)display
{
  if (display)
  {
    displayCopy = display;
    account = [(MFMailboxUid *)self account];
    v6 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, account, displayCopy, &stru_288159858, 0, 0, 1);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)URL
{
  account = [(MFMailboxUid *)self account];
  accountRelativePath = [(MFMailboxUid *)self accountRelativePath];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{account, @"Account", accountRelativePath, @"RelativePath", 0}];
  v6 = [MailAccount URLForInfo:v5];

  return v6;
}

- (id)URLStringWithAccount:(id)account
{
  v4 = MEMORY[0x277CBEAC0];
  accountCopy = account;
  v6 = [v4 alloc];
  accountRelativePath = [(MFMailboxUid *)self accountRelativePath];
  v8 = [v6 initWithObjectsAndKeys:{accountCopy, @"Account", accountRelativePath, @"RelativePath", 0}];

  v9 = [MailAccount URLForInfo:v8];
  absoluteString = [v9 absoluteString];

  return absoluteString;
}

- (id)oldURLString
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  ancestralAccount = [(MFMailboxUid *)self ancestralAccount];
  accountRelativePath = [(MFMailboxUid *)self accountRelativePath];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [v3 initWithObjectsAndKeys:{ancestralAccount, @"Account", accountRelativePath, @"RelativePath", v6, @"IncludeDefaultSecurePortNumber", 0}];

  v8 = [MailAccount URLForInfo:v7];
  absoluteString = [v8 absoluteString];

  return absoluteString;
}

- (id)URLString
{
  criterion = [(MFMailboxUid *)self criterion];
  if ([criterion criterionType] == 22)
  {
    expression = [criterion expression];
    v4 = [expression copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)mailboxID
{
  result = self->_mailboxID;
  if (result == -1)
  {
    uRLString = [(MFMailboxUid *)self URLString];
    if ([uRLString length])
    {
      account = [(MFMailboxUid *)self account];
      library = [account library];
      self->_mailboxID = [library mailboxIDForURLString:uRLString];
    }

    return self->_mailboxID;
  }

  return result;
}

- (id)URLStringNonNil
{
  uRLString = [(MFMailboxUid *)self URLString];
  if (!uRLString)
  {
    uRLString = *MEMORY[0x277CBEEE8];
  }

  return uRLString;
}

- (int64_t)indexToInsertChildMailboxUid:(id)uid
{
  uidCopy = uid;
  displayName = [uidCopy displayName];
  v6 = [(MFMailboxUid *)self childWithName:displayName];

  if (v6)
  {
    v7 = -1;
  }

  else
  {
    mutableCopyOfChildren = [(MFMailboxUid *)self mutableCopyOfChildren];
    if (mutableCopyOfChildren)
    {
      [(MFMailboxUid *)self mf_lock];
      v10.length = [mutableCopyOfChildren count];
      v10.location = 0;
      v7 = CFArrayBSearchValues(mutableCopyOfChildren, v10, uidCopy, _MFCompareMailboxUids, 0);
      [(MFMailboxUid *)self mf_unlock];
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (BOOL)isDescendantOfMailbox:(id)mailbox
{
  selfCopy = self;
  if (!selfCopy)
  {
    return 0;
  }

  v5 = selfCopy;
  do
  {
    parent = [(MFMailboxUid *)v5 parent];

    v7 = v5 == mailbox;
    v8 = v5 == mailbox;
    v5 = parent;
  }

  while (!v7 && parent);

  return v8;
}

- (NSString)description
{
  _privacySafeDescription = [(MFMailboxUid *)self _privacySafeDescription];
  accountRelativePath = [(MFMailboxUid *)self accountRelativePath];
  v5 = [_privacySafeDescription stringByAppendingFormat:@" relativePath=%@", accountRelativePath];

  return v5;
}

- (id)_privacySafeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  mailboxID = self->_mailboxID;
  v6 = NSStringFromMailboxUidType([(MFMailboxUid *)self type]);
  v7 = [v3 stringWithFormat:@"<%@ %p> ID=%u type=%@ attributes=%d", v4, self, mailboxID, v6, -[MFMailboxUid attributes](self, "attributes")];

  return v7;
}

- (NSString)vf_publicDescription
{
  if (isInternalDevice())
  {
    [(MFMailboxUid *)self description];
  }

  else
  {
    [(MFMailboxUid *)self _privacySafeDescription];
  }
  v3 = ;

  return v3;
}

- (id)_loadUserInfo
{
  fullPath = [(MFMailboxUid *)self fullPath];
  v3 = [fullPath stringByAppendingPathComponent:@"Info.plist"];

  if (v3)
  {
    dictionary = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v3];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (id)userInfoObjectForKey:(id)key
{
  keyCopy = key;
  [(MFMailboxUid *)self mf_lock];
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    [(MFMailboxUid *)self mf_unlock];
    _loadUserInfo = [(MFMailboxUid *)self _loadUserInfo];
    if (_loadUserInfo && [(MFMailboxUid *)self mergeWithUserInfo:_loadUserInfo])
    {
      [_loadUserInfo setObject:@"YES" forKey:@"IsDirty"];
    }

    [(MFMailboxUid *)self mf_lock];
    if (!self->_userInfo)
    {
      objc_storeStrong(&self->_userInfo, _loadUserInfo);
    }

    userInfo = self->_userInfo;
  }

  v7 = [(NSMutableDictionary *)userInfo objectForKey:keyCopy];
  [(MFMailboxUid *)self mf_unlock];

  return v7;
}

- (void)setUserInfoObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  [(MFMailboxUid *)self mf_lock];
  p_userInfo = &self->_userInfo;
  userInfo = self->_userInfo;
  if (userInfo)
  {
    v9 = 0;
  }

  else
  {
    [(MFMailboxUid *)self mf_unlock];
    _loadUserInfo = [(MFMailboxUid *)self _loadUserInfo];
    v9 = [(MFMailboxUid *)self mergeWithUserInfo:_loadUserInfo];
    [(MFMailboxUid *)self mf_lock];
    if (!self->_userInfo)
    {
      objc_storeStrong(&self->_userInfo, _loadUserInfo);
    }

    userInfo = *p_userInfo;
  }

  v11 = [(NSMutableDictionary *)userInfo objectForKey:keyCopy];
  v12 = v11;
  if (!v11 || ([v11 isEqual:objectCopy] & 1) == 0)
  {
    [*p_userInfo setObject:objectCopy forKey:keyCopy];
    goto LABEL_11;
  }

  if (v9)
  {
LABEL_11:
    [*p_userInfo setObject:@"YES" forKey:@"IsDirty"];
  }

  [(MFMailboxUid *)self mf_unlock];
}

- (BOOL)userInfoBoolForKey:(id)key
{
  v3 = [(MFMailboxUid *)self userInfoObjectForKey:key];
  v4 = v3;
  if (v3)
  {
    v5 = NSBOOLFromString(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setUserInfoBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  keyCopy = key;
  v7 = asNSStringBOOL(boolCopy);
  [(MFMailboxUid *)self setUserInfoObject:v7 forKey:keyCopy];
}

- (void)saveUserInfo
{
  if ([(MFMailboxUid *)self type]!= 8)
  {
    [(MFMailboxUid *)self mf_lock];
    v3 = [(NSMutableDictionary *)self->_userInfo objectForKey:@"IsDirty"];

    if (v3)
    {
      [(NSMutableDictionary *)self->_userInfo removeObjectForKey:@"IsDirty"];
      fullPath = [(MFMailboxUid *)self fullPath];
      if (fullPath)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v6 = [defaultManager fileExistsAtPath:fullPath];

        if ((v6 & 1) == 0)
        {
          [fullPath mf_makeDirectoryWithMode:448];
        }

        v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:self->_userInfo format:100 options:0 error:0];
        if (v7)
        {
          v8 = [fullPath stringByAppendingPathComponent:@"Info.plist"];
          [v7 writeToFile:v8 options:1073741825 error:0];
        }
      }
    }

    [(MFMailboxUid *)self mf_unlock];
  }
}

- (id)userInfoDictionary
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(NSMutableDictionary *)self->_userInfo copy];
  [(MFMailboxUid *)self mf_unlock];

  return v3;
}

- (void)setUserInfoWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  keyEnumerator = [dictionaryCopy keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    do
    {
      v7 = [dictionaryCopy objectForKey:v6];
      [(MFMailboxUid *)self setUserInfoObject:v7 forKey:v6];

      nextObject2 = [keyEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }
}

- (id)userInfoForSerialization
{
  if ([(MFMailboxUid *)self type]== 8)
  {
    v3 = 0;
  }

  else
  {
    [(MFMailboxUid *)self mf_lock];
    v3 = [(NSMutableDictionary *)self->_userInfo mutableCopy];
    [v3 removeObjectForKey:@"IsDirty"];
    [(MFMailboxUid *)self mf_unlock];
  }

  return v3;
}

- (id)ancestralAccount
{
  selfCopy = self;
  do
  {
    if (([(MFMailboxUid *)selfCopy attributes]& 0x10) != 0)
    {
      break;
    }

    parent = [(MFMailboxUid *)selfCopy parent];

    selfCopy = parent;
  }

  while (parent);
  account = [(MFMailboxUid *)selfCopy account];

  return account;
}

- (id)criterion
{
  [(MFMailboxUid *)self mf_lock];
  criterion = self->_criterion;
  if (criterion)
  {
    v4 = criterion;
    [(MFMailboxUid *)self mf_unlock];
  }

  else
  {
    [(MFMailboxUid *)self mf_unlock];
    ancestralAccount = [(MFMailboxUid *)self ancestralAccount];
    v6 = [(MFMailboxUid *)self URLStringWithAccount:ancestralAccount];
    [(MFMailboxUid *)self mf_lock];
    v7 = self->_criterion;
    if (v7 || !v6)
    {
      v4 = v7;
    }

    else
    {
      v4 = [MFMessageCriterion criterionForMailboxURL:v6];
      objc_storeStrong(&self->_criterion, v4);
    }

    [(MFMailboxUid *)self mf_unlock];
  }

  return v4;
}

- (void)setCriterion:(id)criterion
{
  criterionCopy = criterion;
  if (self->_criterion != criterionCopy)
  {
    v6 = criterionCopy;
    [(MFMailboxUid *)self mf_lock];
    objc_storeStrong(&self->_criterion, criterion);
    [(MFMailboxUid *)self mf_unlock];
    criterionCopy = v6;
  }
}

- (id)store
{
  account = [(MFMailboxUid *)self account];
  v4 = [account storeForMailboxUid:self];

  if (!v4)
  {
    v4 = [MFLibraryStore storeWithMailbox:self];
  }

  return v4;
}

- (BOOL)shouldRestoreMessagesAfterFailedDelete
{
  account = [(MFMailboxUid *)self account];
  shouldRestoreMessagesAfterFailedDelete = [account shouldRestoreMessagesAfterFailedDelete];

  return shouldRestoreMessagesAfterFailedDelete;
}

- (void)setLastViewedMessageID:(id)d
{
  [(MFMailboxUid *)self setUserInfoObject:d forKey:@"LastViewedMessageInMailbox"];
  date = [MEMORY[0x277CBEAA8] date];
  [(MFMailboxUid *)self setUserInfoObject:date forKey:@"LastViewedMessageInMailboxDate"];
}

- (void)addToPostOrderTraversal:(id)traversal
{
  v16 = *MEMORY[0x277D85DE8];
  traversalCopy = traversal;
  [(MFMailboxUid *)self mf_lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_children;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) addToPostOrderTraversal:{traversalCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(MFMailboxUid *)self mf_unlock];
  [traversalCopy addObject:self];

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)suggestionsLostMessageSearchResultCount
{
  v2 = [(MFMailboxUid *)self userInfoObjectForKey:@"suggestionsLostMessageSearchResultCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)suggestionsLostMessageSearchTimestamp
{
  v2 = [(MFMailboxUid *)self userInfoObjectForKey:@"suggestionsLostMessageSearchTimestamp"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  [(MFMailboxUid *)self setUserInfoObject:v4 forKey:@"suggestionsLostMessageSearchResultCount"];

  v5 = MEMORY[0x277CCABB0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = [v5 numberWithDouble:?];
  [(MFMailboxUid *)self setUserInfoObject:v6 forKey:@"suggestionsLostMessageSearchTimestamp"];

  [(MFMailboxUid *)self saveUserInfo];
}

- (MFInvocationQueue)attachmentDownloadQueue
{
  v3 = objc_getAssociatedObject(self, MFMailboxUidAttachmentQueue);
  if (!v3)
  {
    v3 = [[MFInvocationQueue alloc] initWithMambaID:"invc.load" mambaID:[(MFMailboxUid *)self mambaID]];
    objc_setAssociatedObject(self, MFMailboxUidAttachmentQueue, v3, 0x301);
  }

  return v3;
}

@end