@interface MFMailboxUid
+ (id)specialNameForType:(int)a3;
- (BOOL)hasChildren;
- (BOOL)isDescendantOfMailbox:(id)a3;
- (BOOL)isNotesMailboxUid;
- (BOOL)isSentMailboxUid;
- (BOOL)isSpecialMailboxUid;
- (BOOL)isStandardizedMailboxUid;
- (BOOL)isValid;
- (BOOL)setChildren:(id)a3;
- (BOOL)shouldRestoreMessagesAfterFailedDelete;
- (BOOL)userInfoBoolForKey:(id)a3;
- (MFInvocationQueue)attachmentDownloadQueue;
- (MFMailboxUid)init;
- (MFMailboxUid)initWithAccount:(id)a3;
- (NSString)description;
- (NSString)vf_publicDescription;
- (const)mambaID;
- (double)suggestionsLostMessageSearchTimestamp;
- (id)URL;
- (id)URLString;
- (id)URLStringNonNil;
- (id)URLStringWithAccount:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_initWithName:(id)a3 attributes:(unsigned int)a4 forAccount:(id)a5;
- (id)_loadUserInfo;
- (id)_mutableChildren;
- (id)_privacySafeDescription;
- (id)account;
- (id)accountDisplayName;
- (id)accountRelativePath;
- (id)ancestralAccount;
- (id)childAtIndex:(unint64_t)a3;
- (id)childWithExtraAttribute:(id)a3;
- (id)criterion;
- (id)depthFirstEnumerator;
- (id)descendantWithExtraAttribute:(id)a3;
- (id)displayName;
- (id)displayNameUsingSpecialNames;
- (id)fullPath;
- (id)fullPathNonNil;
- (id)mutableCopyOfChildren;
- (id)name;
- (id)oldURLString;
- (id)pathRelativeToMailbox:(id)a3;
- (id)pathRelativeToMailboxForDisplay:(id)a3;
- (id)realFullPath;
- (id)representedAccount;
- (id)rootMailbox;
- (id)store;
- (id)tildeAbbreviatedPath;
- (id)topMailbox;
- (id)userInfoDictionary;
- (id)userInfoForSerialization;
- (id)userInfoObjectForKey:(id)a3;
- (int64_t)indexToInsertChildMailboxUid:(id)a3;
- (int64_t)statusCountDelta;
- (unint64_t)indexOfChild:(id)a3;
- (unint64_t)nonDeletedCount;
- (unint64_t)numberOfChildren;
- (unint64_t)numberOfDescendants;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)suggestionsLostMessageSearchResultCount;
- (unint64_t)unreadCount;
- (unint64_t)unreadCountMatchingCriterion:(id)a3;
- (unsigned)mailboxID;
- (void)addToPostOrderTraversal:(id)a3;
- (void)dealloc;
- (void)flushCriteria;
- (void)invalidate;
- (void)removeChild:(id)a3;
- (void)saveUserInfo;
- (void)setCriterion:(id)a3;
- (void)setLastViewedMessageID:(id)a3;
- (void)setName:(id)a3;
- (void)setParent:(id)a3;
- (void)setRepresentedAccount:(id)a3;
- (void)setUserInfoBool:(BOOL)a3 forKey:(id)a4;
- (void)setUserInfoObject:(id)a3 forKey:(id)a4;
- (void)setUserInfoWithDictionary:(id)a3;
- (void)sortChildren;
- (void)updateMostRecentStatusCount:(unint64_t)a3;
- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)a3;
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

- (MFMailboxUid)initWithAccount:(id)a3
{
  v4 = a3;
  v5 = [(MFMailboxUid *)self init];
  v6 = v5;
  if (v5)
  {
    v5->mambaID = v4[1];
    v7 = [VFWeakReferenceHolder weakReferenceWithObject:v4];
    account = v6->_account;
    v6->_account = v7;

    v6->_attributes = 18;
  }

  return v6;
}

- (id)_initWithName:(id)a3 attributes:(unsigned int)a4 forAccount:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [(MFMailboxUid *)self init];
    v11 = v10;
    if (v10)
    {
      v10->mambaID = v9[1];
      v12 = [v8 copy];
      pathComponent = v11->_pathComponent;
      v11->_pathComponent = v12;

LABEL_5:
      v11->_attributes = a4;
    }
  }

  else
  {
    v11 = [(MFMailboxUid *)self initWithAccount:v9];
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
  v3 = [(MFMailboxUid *)self attributes];
  v4 = MEMORY[0x277CBEB38];
  v5 = [(MFMailboxUid *)self name];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v7 = [v4 dictionaryWithObjectsAndKeys:{v5, @"MailboxName", v6, @"MailboxAttributes", 0}];

  if ((v3 & 1) == 0)
  {
    v8 = [(MFMailboxUid *)self children];
    v9 = [v8 count];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v9];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v8;
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

            v16 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
            [v10 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      [v7 setObject:v10 forKeyedSubscript:@"MailboxChildren"];
    }
  }

  v17 = [(MFMailboxUid *)self extraAttributes];
  if (v17)
  {
    [v7 setObject:v17 forKeyedSubscript:@"MailboxExtraAttributes"];
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
  v3 = [(MailAccount *)self->_representedAccount displayName];
  [(MFMailboxUid *)self mf_unlock];
  if (v3 && ([v3 isEqualToString:&stru_288159858] & 1) == 0)
  {
    v7 = v3;
  }

  else
  {
    v4 = [(MFMailboxUid *)self account];
    v5 = v4;
    if ((self->_attributes & 0x10) != 0)
    {
      v6 = [v4 displayName];
    }

    else
    {
      if (v4)
      {
        [v4 _pathComponentForUidName:self->_pathComponent];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"*** Orphaned mailbox %@", self->_pathComponent];
      }
      v6 = ;
    }

    v7 = v6;
  }

  return v7;
}

- (id)name
{
  if ((self->_attributes & 0x10) != 0)
  {
    v3 = [(MFMailboxUid *)self account];
    v4 = [v3 displayName];
    goto LABEL_5;
  }

  v3 = [(VFWeakReferenceHolder *)self->_parent retainedReference];
  if (v3)
  {
    v4 = self->_pathComponent;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** Orphaned mailbox %@", self->_pathComponent];
  parent = self->_parent;
  self->_parent = 0;

LABEL_6:

  return v5;
}

+ (id)specialNameForType:(int)a3
{
  if ((a3 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_279E35B08[a3 - 1];
  }
}

- (id)displayNameUsingSpecialNames
{
  v3 = [(MFMailboxUid *)self type];
  v4 = [(MFMailboxUid *)self account];
  v5 = [v4 displayNameUsingSpecialNamesForMailboxUid:self];

  if (!v5)
  {
    v6 = [objc_opt_class() specialNameForType:v3];
    if (!v6)
    {
      v6 = [(MFMailboxUid *)self displayName];
    }

    v5 = v6;
  }

  return v5;
}

- (void)setName:(id)a3
{
  v8 = a3;
  if (([v8 isEqual:self->_pathComponent] & 1) == 0)
  {
    [(MFMailboxUid *)self mf_lock];
    objc_storeStrong(&self->_pathComponent, a3);
    realFullPath = self->_realFullPath;
    self->_realFullPath = 0;

    v6 = [(MFMailboxUid *)self URLString];

    if (v6)
    {
      criterion = self->_criterion;
      self->_criterion = 0;
    }

    [(MFMailboxUid *)self mf_unlock];
  }
}

- (id)accountDisplayName
{
  v2 = [(MFMailboxUid *)self representedAccount];
  v3 = [v2 displayName];

  return v3;
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 library];
  v5 = [(MFMailboxUid *)self URLString];
  v6 = [v4 serverUnreadOnlyOnServerCountForMailbox:v5];

  return v6;
}

- (unint64_t)unreadCount
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 library];
  v5 = [(MFMailboxUid *)self URLString];
  v6 = [v4 unreadCountForMailbox:v5];

  return v6;
}

- (unint64_t)unreadCountMatchingCriterion:(id)a3
{
  v4 = a3;
  v5 = [(MFMailboxUid *)self account];
  v6 = [v5 library];
  v7 = [(MFMailboxUid *)self URLString];
  v8 = [v6 unreadCountForMailbox:v7 matchingCriterion:v4];

  return v8;
}

- (unint64_t)nonDeletedCount
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 library];
  v5 = [(MFMailboxUid *)self URLString];
  v6 = [v4 nonDeletedCountForMailbox:v5];

  return v6;
}

- (int64_t)statusCountDelta
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 library];
  v5 = [(MFMailboxUid *)self URLString];
  v6 = [v4 statusCountDeltaForMailbox:v5];

  return v6;
}

- (void)updateMostRecentStatusCount:(unint64_t)a3
{
  v5 = [(MFMailboxUid *)self account];
  v8 = [v5 library];

  v6 = [(MFMailboxUid *)self URLString];
  if ([v8 mostRecentStatusCountForMailbox:v6] != a3)
  {
    [v8 setMostRecentStatusCount:a3 forMailbox:v6];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"MailboxUserInfoDidChange" object:self];
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

- (id)childAtIndex:(unint64_t)a3
{
  [(MFMailboxUid *)self mf_lock];
  v5 = [(NSMutableArray *)self->_children objectAtIndex:a3];
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (unint64_t)indexOfChild:(id)a3
{
  v4 = a3;
  [(MFMailboxUid *)self mf_lock];
  v5 = [(NSMutableArray *)self->_children indexOfObject:v4];

  [(MFMailboxUid *)self mf_unlock];
  return v5;
}

- (id)childWithExtraAttribute:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = _MFChildWithPredicate(self, mailboxHasExtraAttribute, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)descendantWithExtraAttribute:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = _MFDescendantWithPredicate(self, mailboxHasExtraAttribute, v4);
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
  v2 = [(MFMailboxUid *)self fullPath];
  if (!v2)
  {
    v2 = *MEMORY[0x277CBEEE8];
  }

  return v2;
}

- (BOOL)setChildren:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(MFMailboxUid *)self mf_lock];
  if ([(MFMailboxUid *)self isValid])
  {
    v5 = [(MFMailboxUid *)self mutableCopyOfChildren];
  }

  else
  {
    v5 = 0;
  }

  [(NSMutableArray *)self->_children removeAllObjects];
  if ([v4 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v4;
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

    if (!v5 || ([v5 isEqualToArray:v6] & 1) == 0)
    {
      v11 = 1;
      goto LABEL_18;
    }
  }

  else if (v5)
  {
    v11 = [v5 count] != 0;
    goto LABEL_18;
  }

  v11 = 0;
LABEL_18:
  [(MFMailboxUid *)self mf_unlock];
  if ([v5 count])
  {
    v30 = v11;
    v31 = v4;
    v12 = [v5 arrayByApplyingSelector:sel_URLStringNonNil];
    v13 = [v5 arrayByApplyingSelector:sel_fullPathNonNil];
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [v5 count];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v35 = *MEMORY[0x277CBEEE8];
      v32 = v5;
      do
      {
        v17 = [v5 objectAtIndex:v16];
        v18 = [v17 parent];

        if (!v18)
        {
          v19 = [v12 objectAtIndex:v16];
          if (v19 != v35)
          {
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v19 forKey:@"URLString"];
            v21 = [MEMORY[0x277CCAB98] defaultCenter];
            [v21 postNotificationName:@"MailboxUidDidBecomeInvalidNotification" object:v17 userInfo:v20];

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
                v5 = v32;
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
      v27 = [(MFMailboxUid *)self account];
      [v27 _mailboxesWereRemovedFromTree:v34 withFileSystemPaths:v33];
    }

    v4 = v31;
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

- (void)removeChild:(id)a3
{
  v4 = a3;
  [(MFMailboxUid *)self mf_lock];
  [(NSMutableArray *)self->_children removeObject:v4];

  [(MFMailboxUid *)self mf_unlock];
}

- (void)setParent:(id)a3
{
  v8 = a3;
  v4 = [(MFMailboxUid *)self parent];

  v5 = v8;
  if (v4 != v8)
  {
    bindParentAndChild(v8, self);
    [(MFMailboxUid *)self mf_lock];
    v6 = [(MFMailboxUid *)self URLString];

    if (v6)
    {
      criterion = self->_criterion;
      self->_criterion = 0;
    }

    [(MFMailboxUid *)self mf_unlock];
    v5 = v8;
  }
}

- (void)flushCriteria
{
  [(MFMailboxUid *)self mf_lock];
  criterion = self->_criterion;
  self->_criterion = 0;

  [(MFMailboxUid *)self mf_unlock];
}

- (void)setRepresentedAccount:(id)a3
{
  v5 = a3;
  [(MFMailboxUid *)self mf_lock];
  if (self->_representedAccount != v5)
  {
    objc_storeStrong(&self->_representedAccount, a3);
  }

  [(MFMailboxUid *)self mf_unlock];
}

- (id)representedAccount
{
  [(MFMailboxUid *)self mf_lock];
  representedAccount = self->_representedAccount;
  if (representedAccount)
  {
    v4 = representedAccount;
  }

  else
  {
    v4 = [(MFMailboxUid *)self account];
  }

  v5 = v4;
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (id)topMailbox
{
  v2 = self;
  v3 = [(MFMailboxUid *)v2 parent];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = v4;

      v4 = [(MFMailboxUid *)v5 parent];

      v2 = v5;
    }

    while (v4);
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (id)rootMailbox
{
  v2 = [(MFMailboxUid *)self topMailbox];
  if ((v2[48] & 0x10) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (id)account
{
  v2 = [(MFMailboxUid *)self rootMailbox];
  v3 = v2;
  if (v2)
  {
    v4 = [*(v2 + 32) reference];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isValid
{
  v2 = [(MFMailboxUid *)self rootMailbox];
  v3 = v2 != 0;

  return v3;
}

- (void)invalidate
{
  v9 = [(MFMailboxUid *)self rootMailbox];
  [(MFMailboxUid *)self saveUserInfo];
  if (v9 == self)
  {
    account = self->_account;
    self->_account = 0;

    self->_attributes &= ~0x10u;
  }

  v4 = [(MFMailboxUid *)self parent];
  [v4 removeChild:self];

  v5 = v9;
  if (v9)
  {
    v6 = [(MFMailboxUid *)self URLString];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"URLString"];
    }

    else
    {
      v7 = 0;
    }

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"MailboxUidDidBecomeInvalidNotification" object:self userInfo:v7];

    v5 = v9;
  }
}

- (BOOL)isStandardizedMailboxUid
{
  v2 = [(MFMailboxUid *)self type];

  return [MFMailboxUid isStandardizedMailboxUidType:v2];
}

- (BOOL)isSpecialMailboxUid
{
  v2 = self;
  v3 = [(MFMailboxUid *)self account];
  LOBYTE(v2) = [v3 isSpecialMailbox:v2];

  return v2;
}

- (BOOL)isSentMailboxUid
{
  v3 = objc_opt_class();
  v4 = [(MFMailboxUid *)self type];

  return [v3 isSentMailboxType:v4];
}

- (BOOL)isNotesMailboxUid
{
  v3 = [(MFMailboxUid *)self name];
  if ([v3 isEqualToString:@"Notes"])
  {
    v4 = [(MFMailboxUid *)self parent];
    v5 = [(MFMailboxUid *)self account];
    v6 = [v5 rootMailboxUid];
    v7 = v4 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accountRelativePath
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v5 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, v3, 0, &stru_288159858, v4, 0, 0);
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (id)fullPath
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 path];
  v5 = [v3 mailboxPathExtension];
  v6 = [v3 _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v7 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, v3, 0, v4, v6, v5, 0);
  [(MFMailboxUid *)self mf_unlock];

  return v7;
}

- (id)realFullPath
{
  p_realFullPath = &self->_realFullPath;
  realFullPath = self->_realFullPath;
  if (!realFullPath)
  {
    v5 = [(MFMailboxUid *)self fullPath];
    v6 = [v5 mf_betterStringByResolvingSymlinksInPath];

    [(MFMailboxUid *)self mf_lock];
    if (!self->_realFullPath)
    {
      objc_storeStrong(p_realFullPath, v6);
    }

    [(MFMailboxUid *)self mf_unlock];

    realFullPath = self->_realFullPath;
  }

  return realFullPath;
}

- (id)tildeAbbreviatedPath
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 tildeAbbreviatedPath];
  v5 = [v3 mailboxPathExtension];
  v6 = [v3 _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v7 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, v3, 0, v4, v6, v5, 0);
  [(MFMailboxUid *)self mf_unlock];

  return v7;
}

- (id)pathRelativeToMailbox:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MFMailboxUid *)self account];
    v6 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, v5, v4, &stru_288159858, 0, 0, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pathRelativeToMailboxForDisplay:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MFMailboxUid *)self account];
    v6 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, v5, v4, &stru_288159858, 0, 0, 1);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)URL
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [(MFMailboxUid *)self accountRelativePath];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v3, @"Account", v4, @"RelativePath", 0}];
  v6 = [MailAccount URLForInfo:v5];

  return v6;
}

- (id)URLStringWithAccount:(id)a3
{
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(MFMailboxUid *)self accountRelativePath];
  v8 = [v6 initWithObjectsAndKeys:{v5, @"Account", v7, @"RelativePath", 0}];

  v9 = [MailAccount URLForInfo:v8];
  v10 = [v9 absoluteString];

  return v10;
}

- (id)oldURLString
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = [(MFMailboxUid *)self ancestralAccount];
  v5 = [(MFMailboxUid *)self accountRelativePath];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [v3 initWithObjectsAndKeys:{v4, @"Account", v5, @"RelativePath", v6, @"IncludeDefaultSecurePortNumber", 0}];

  v8 = [MailAccount URLForInfo:v7];
  v9 = [v8 absoluteString];

  return v9;
}

- (id)URLString
{
  v2 = [(MFMailboxUid *)self criterion];
  if ([v2 criterionType] == 22)
  {
    v3 = [v2 expression];
    v4 = [v3 copy];
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
    v4 = [(MFMailboxUid *)self URLString];
    if ([v4 length])
    {
      v5 = [(MFMailboxUid *)self account];
      v6 = [v5 library];
      self->_mailboxID = [v6 mailboxIDForURLString:v4];
    }

    return self->_mailboxID;
  }

  return result;
}

- (id)URLStringNonNil
{
  v2 = [(MFMailboxUid *)self URLString];
  if (!v2)
  {
    v2 = *MEMORY[0x277CBEEE8];
  }

  return v2;
}

- (int64_t)indexToInsertChildMailboxUid:(id)a3
{
  v4 = a3;
  v5 = [v4 displayName];
  v6 = [(MFMailboxUid *)self childWithName:v5];

  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v8 = [(MFMailboxUid *)self mutableCopyOfChildren];
    if (v8)
    {
      [(MFMailboxUid *)self mf_lock];
      v10.length = [v8 count];
      v10.location = 0;
      v7 = CFArrayBSearchValues(v8, v10, v4, _MFCompareMailboxUids, 0);
      [(MFMailboxUid *)self mf_unlock];
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (BOOL)isDescendantOfMailbox:(id)a3
{
  v4 = self;
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  do
  {
    v6 = [(MFMailboxUid *)v5 parent];

    v7 = v5 == a3;
    v8 = v5 == a3;
    v5 = v6;
  }

  while (!v7 && v6);

  return v8;
}

- (NSString)description
{
  v3 = [(MFMailboxUid *)self _privacySafeDescription];
  v4 = [(MFMailboxUid *)self accountRelativePath];
  v5 = [v3 stringByAppendingFormat:@" relativePath=%@", v4];

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
  v2 = [(MFMailboxUid *)self fullPath];
  v3 = [v2 stringByAppendingPathComponent:@"Info.plist"];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v3];
    if (!v4)
    {
      v4 = [MEMORY[0x277CBEB38] dictionary];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)userInfoObjectForKey:(id)a3
{
  v4 = a3;
  [(MFMailboxUid *)self mf_lock];
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    [(MFMailboxUid *)self mf_unlock];
    v6 = [(MFMailboxUid *)self _loadUserInfo];
    if (v6 && [(MFMailboxUid *)self mergeWithUserInfo:v6])
    {
      [v6 setObject:@"YES" forKey:@"IsDirty"];
    }

    [(MFMailboxUid *)self mf_lock];
    if (!self->_userInfo)
    {
      objc_storeStrong(&self->_userInfo, v6);
    }

    userInfo = self->_userInfo;
  }

  v7 = [(NSMutableDictionary *)userInfo objectForKey:v4];
  [(MFMailboxUid *)self mf_unlock];

  return v7;
}

- (void)setUserInfoObject:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v6 = a4;
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
    v10 = [(MFMailboxUid *)self _loadUserInfo];
    v9 = [(MFMailboxUid *)self mergeWithUserInfo:v10];
    [(MFMailboxUid *)self mf_lock];
    if (!self->_userInfo)
    {
      objc_storeStrong(&self->_userInfo, v10);
    }

    userInfo = *p_userInfo;
  }

  v11 = [(NSMutableDictionary *)userInfo objectForKey:v6];
  v12 = v11;
  if (!v11 || ([v11 isEqual:v13] & 1) == 0)
  {
    [*p_userInfo setObject:v13 forKey:v6];
    goto LABEL_11;
  }

  if (v9)
  {
LABEL_11:
    [*p_userInfo setObject:@"YES" forKey:@"IsDirty"];
  }

  [(MFMailboxUid *)self mf_unlock];
}

- (BOOL)userInfoBoolForKey:(id)a3
{
  v3 = [(MFMailboxUid *)self userInfoObjectForKey:a3];
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

- (void)setUserInfoBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = asNSStringBOOL(v4);
  [(MFMailboxUid *)self setUserInfoObject:v7 forKey:v6];
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
      v4 = [(MFMailboxUid *)self fullPath];
      if (v4)
      {
        v5 = [MEMORY[0x277CCAA00] defaultManager];
        v6 = [v5 fileExistsAtPath:v4];

        if ((v6 & 1) == 0)
        {
          [v4 mf_makeDirectoryWithMode:448];
        }

        v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:self->_userInfo format:100 options:0 error:0];
        if (v7)
        {
          v8 = [v4 stringByAppendingPathComponent:@"Info.plist"];
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

- (void)setUserInfoWithDictionary:(id)a3
{
  v9 = a3;
  v4 = [v9 keyEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [v9 objectForKey:v6];
      [(MFMailboxUid *)self setUserInfoObject:v7 forKey:v6];

      v8 = [v4 nextObject];

      v6 = v8;
    }

    while (v8);
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
  v2 = self;
  do
  {
    if (([(MFMailboxUid *)v2 attributes]& 0x10) != 0)
    {
      break;
    }

    v3 = [(MFMailboxUid *)v2 parent];

    v2 = v3;
  }

  while (v3);
  v4 = [(MFMailboxUid *)v2 account];

  return v4;
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
    v5 = [(MFMailboxUid *)self ancestralAccount];
    v6 = [(MFMailboxUid *)self URLStringWithAccount:v5];
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

- (void)setCriterion:(id)a3
{
  v5 = a3;
  if (self->_criterion != v5)
  {
    v6 = v5;
    [(MFMailboxUid *)self mf_lock];
    objc_storeStrong(&self->_criterion, a3);
    [(MFMailboxUid *)self mf_unlock];
    v5 = v6;
  }
}

- (id)store
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 storeForMailboxUid:self];

  if (!v4)
  {
    v4 = [MFLibraryStore storeWithMailbox:self];
  }

  return v4;
}

- (BOOL)shouldRestoreMessagesAfterFailedDelete
{
  v2 = [(MFMailboxUid *)self account];
  v3 = [v2 shouldRestoreMessagesAfterFailedDelete];

  return v3;
}

- (void)setLastViewedMessageID:(id)a3
{
  [(MFMailboxUid *)self setUserInfoObject:a3 forKey:@"LastViewedMessageInMailbox"];
  v4 = [MEMORY[0x277CBEAA8] date];
  [(MFMailboxUid *)self setUserInfoObject:v4 forKey:@"LastViewedMessageInMailboxDate"];
}

- (void)addToPostOrderTraversal:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        [*(*(&v11 + 1) + 8 * v9++) addToPostOrderTraversal:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(MFMailboxUid *)self mf_unlock];
  [v4 addObject:self];

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)suggestionsLostMessageSearchResultCount
{
  v2 = [(MFMailboxUid *)self userInfoObjectForKey:@"suggestionsLostMessageSearchResultCount"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (double)suggestionsLostMessageSearchTimestamp
{
  v2 = [(MFMailboxUid *)self userInfoObjectForKey:@"suggestionsLostMessageSearchTimestamp"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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