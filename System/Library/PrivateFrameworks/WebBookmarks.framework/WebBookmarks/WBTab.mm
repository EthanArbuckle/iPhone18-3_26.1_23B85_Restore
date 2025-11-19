@interface WBTab
+ (id)pinnedTabWithTitle:(id)a3 url:(id)a4 deviceIdentifier:(id)a5;
+ (id)startPageTabWithDeviceIdentifier:(id)a3;
- (BOOL)canCloseAutomaticallyForInterval:(double)a3;
- (BOOL)hasSameUUIDAndURLAsTab:(id)a3;
- (BOOL)isBlank;
- (BOOL)isEqual:(id)a3;
- (BOOL)isIdentical:(id)a3;
- (BOOL)isInserted;
- (BOOL)isMarkedAsRead;
- (BOOL)isPinned;
- (BOOL)isSyncable;
- (NSDictionary)dictionaryRepresentation;
- (NSString)URLString;
- (NSString)debugSyncDescription;
- (NSString)description;
- (NSString)deviceIdentifier;
- (NSString)pinnedTitle;
- (NSString)privacyPreservingDescription;
- (NSString)title;
- (NSString)uuid;
- (NSURL)pinnedURL;
- (NSURL)syncableURL;
- (NSURL)url;
- (WBLocalTabAttributes)localAttributes;
- (WBSCRDTPosition)syncPosition;
- (WBTab)initWithBookmark:(id)a3;
- (WBTab)initWithBookmark:(id)a3 isPrivateBrowsing:(BOOL)a4;
- (WBTab)initWithBookmarkStorage:(id)a3;
- (WBTab)initWithCoder:(id)a3;
- (WBTab)initWithDictionaryRepresentation:(id)a3;
- (WBTab)initWithUUID:(id)a3 title:(id)a4 url:(id)a5 deviceIdentifier:(id)a6 isPrivateBrowsing:(BOOL)a7;
- (WBTab)initWithUUID:(id)a3 title:(id)a4 url:(id)a5 deviceIdentifier:(id)a6 lastVisitTime:(id)a7;
- (WebBookmark)bookmark;
- (double)lastViewedTime;
- (id)_addressFromURL:(id)a3;
- (id)_determineURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)duplicate;
- (id)duplicatePreservingUUID;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)mutableDuplicate;
- (int)identifier;
- (int)orderIndex;
- (int)parentIdentifier;
- (unint64_t)hash;
- (void)_setLocalURLString:(id)a3;
- (void)_updateBookmarkWithURL:(id)a3 shouldSync:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setBookmark:(id)a3;
@end

@implementation WBTab

- (NSString)uuid
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 UUID];

  return v3;
}

- (WebBookmark)bookmark
{
  [(WBSCopyOnWriteValue *)self->_bookmarkStorage willModify];
  bookmarkStorage = self->_bookmarkStorage;

  return [(WBSCopyOnWriteValue *)bookmarkStorage value];
}

- (int)identifier
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)isPinned
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 isPinned];

  return v3;
}

- (BOOL)isSyncable
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 isSyncable];

  return v3;
}

- (NSURL)url
{
  os_unfair_lock_lock(&self->_cachedURLUnfairLock);
  v3 = self->_cachedURL;
  os_unfair_lock_unlock(&self->_cachedURLUnfairLock);
  if (!v3)
  {
    v4 = [(WBTab *)self _determineURL];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CBEB68] null];
    }

    v3 = v6;

    os_unfair_lock_lock(&self->_cachedURLUnfairLock);
    objc_storeStrong(&self->_cachedURL, v3);
    os_unfair_lock_unlock(&self->_cachedURLUnfairLock);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

- (id)_determineURL
{
  v3 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v4 = [v3 extraAttributes];
  v5 = [v4 objectForKeyedSubscript:@"LocalURL"];

  if ([v5 length])
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v7 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
    v8 = [v7 address];

    v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    if ([v8 length] && objc_msgSend(v9, "safari_isHTTPFamilyURL"))
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(WBTab *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isBlank
{
  v2 = [(WBTab *)self url];
  v3 = v2 == 0;

  return v3;
}

- (NSString)title
{
  v3 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v4 = [v3 extraAttributes];
  v5 = [v4 objectForKeyedSubscript:@"LocalTitle"];

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v7 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
    v6 = [v7 title];
  }

  return v6;
}

+ (id)startPageTabWithDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = _WBSLocalizedString();
  v7 = [v5 initWithTitle:v6 url:0 deviceIdentifier:v4];

  return v7;
}

+ (id)pinnedTabWithTitle:(id)a3 url:(id)a4 deviceIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithUUID:0 title:v10 url:v9 pinned:1 pinnedTitle:v10 pinnedURL:v9 localAttributes:0 deviceIdentifier:v8];

  return v11;
}

- (WBTab)initWithUUID:(id)a3 title:(id)a4 url:(id)a5 deviceIdentifier:(id)a6 isPrivateBrowsing:(BOOL)a7
{
  result = [(WBTab *)self initWithUUID:a3 title:a4 url:a5 deviceIdentifier:a6];
  result->_privateBrowsing = a7;
  return result;
}

- (WBTab)initWithUUID:(id)a3 title:(id)a4 url:(id)a5 deviceIdentifier:(id)a6 lastVisitTime:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = &stru_288259858;
  }

  v17 = v16;
  v18 = a6;
  v19 = [[WebBookmark alloc] initWithTitle:v17 address:&stru_288259858 parentID:0 deviceIdentifier:v18 collectionType:1];

  if (v12)
  {
    [(WebBookmark *)v19 _setUUID:v12];
  }

  if (v15)
  {
    [(WebBookmark *)v19 setLocalAttributesValue:v15 forKey:*MEMORY[0x277D4A570]];
    [(WebBookmark *)v19 setTabDateLastViewed:v15];
  }

  v20 = [(WBTab *)self initWithBookmark:v19];
  v21 = v20;
  if (v20)
  {
    [(WBTab *)v20 _updateBookmarkWithURL:v14 shouldSync:0];
    [(WBTab *)v21 _updateBookmarkWithURL:v14 shouldSync:1];
    v21->_modified = 0;
    [(WebBookmark *)v19 setModifiedAttributes:0];
    v22 = v21;
  }

  return v21;
}

- (WBTab)initWithBookmark:(id)a3
{
  v4 = MEMORY[0x277D499E0];
  v5 = a3;
  v6 = [[v4 alloc] initWithValue:v5];

  v7 = [(WBTab *)self initWithBookmarkStorage:v6];
  return v7;
}

- (WBTab)initWithBookmarkStorage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v17.receiver = self;
  v17.super_class = WBTab;
  v6 = [(WBTab *)&v17 init];
  if (v6)
  {
    v7 = [v5 value];

    if (v7)
    {
      objc_storeStrong(&v6->_bookmarkStorage, a3);
      objc_opt_class();
      v6->_isMutable = objc_opt_isKindOfClass() & 1;
      v6->_cachedURLUnfairLock._os_unfair_lock_opaque = 0;
      v8 = [(WBTab *)v6 uuid];
      if (v8)
      {
        v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];

        if (!v9)
        {
          v10 = WBS_LOG_CHANNEL_PREFIXTabGroup();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v10;
            v12 = [(WBTab *)v6 privacyPreservingDescription];
            *buf = 138543362;
            v19 = v12;
            _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_DEFAULT, "WBTab initialized with a malformed UUID %{public}@", buf, 0xCu);
          }
        }

        goto LABEL_14;
      }

      v14 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(WBTab *)v14 initWithBookmarkStorage:v6];
      }
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(WBTab *)v13 initWithBookmarkStorage:v6];
      }

      v8 = v6;
    }

    v6 = 0;
LABEL_14:
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (WBTab)initWithBookmark:(id)a3 isPrivateBrowsing:(BOOL)a4
{
  v5 = [(WBTab *)self initWithBookmark:a3];
  v6 = v5;
  if (v5)
  {
    v5->_privateBrowsing = a4;
    v7 = v5;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WBTab *)self uuid];
      v7 = [(WBTab *)v5 uuid];

      v8 = WBSIsEqual();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_isMutable)
  {
    v5 = [WBTab allocWithZone:?];
    v6 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage copyWithZone:a3];
    v7 = [(WBTab *)v5 initWithBookmarkStorage:v6];

    v8 = [(NSString *)self->_tabGroupUUID copy];
    v9 = *(v7 + 16);
    *(v7 + 16) = v8;

    *(v7 + 24) = self->_added;
    *(v7 + 26) = self->_moved;
    *(v7 + 25) = self->_modified;
    *(v7 + 27) = self->_inUnnamedTabGroup;
    *(v7 + 28) = self->_privateBrowsing;
    *(v7 + 29) = self->_shared;
    return v7;
  }

  else
  {

    return self;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [WBMutableTab alloc];
  v6 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage copyWithZone:a3];
  v7 = [(WBTab *)v5 initWithBookmarkStorage:v6];

  [(WBMutableTab *)v7 setTabGroupUUID:self->_tabGroupUUID];
  [(WBMutableTab *)v7 setAdded:self->_added];
  [(WBMutableTab *)v7 setMoved:self->_moved];
  [(WBMutableTab *)v7 setModified:self->_modified];
  [(WBMutableTab *)v7 setInUnnamedTabGroup:self->_inUnnamedTabGroup];
  [(WBMutableTab *)v7 setPrivateBrowsing:self->_privateBrowsing];
  [(WBMutableTab *)v7 setShared:self->_shared];
  return v7;
}

- (WBTab)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookmark"];
  v6 = [(WBTab *)self initWithBookmark:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tabGroupUUID"];
    tabGroupUUID = v6->_tabGroupUUID;
    v6->_tabGroupUUID = v7;

    v6->_privateBrowsing = [v4 decodeBoolForKey:@"privateBrowsing"];
    v6->_inUnnamedTabGroup = [v4 decodeBoolForKey:@"local"];
    v6->_shared = [v4 decodeBoolForKey:@"shared"];
    v9 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  bookmarkStorage = self->_bookmarkStorage;
  v6 = a3;
  v5 = [(WBSCopyOnWriteValue *)bookmarkStorage value];
  [v6 encodeObject:v5 forKey:@"bookmark"];

  [v6 encodeObject:self->_tabGroupUUID forKey:@"tabGroupUUID"];
  [v6 encodeBool:self->_privateBrowsing forKey:@"privateBrowsing"];
  [v6 encodeBool:self->_inUnnamedTabGroup forKey:@"local"];
  [v6 encodeBool:self->_shared forKey:@"shared"];
}

- (WBTab)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [WebBookmark alloc];
  v6 = [v4 safari_dictionaryForKey:@"bookmark"];
  v7 = [(WebBookmark *)v5 initWithDictionaryRepresentationForInMemoryChangeTracking:v6];

  if ([(WebBookmark *)v7 isFolder]|| (self = [(WBTab *)self initWithBookmark:v7]) == 0)
  {
    v10 = 0;
  }

  else
  {
    v8 = [v4 safari_stringForKey:@"tabGroupUUID"];
    tabGroupUUID = self->_tabGroupUUID;
    self->_tabGroupUUID = v8;

    self->_privateBrowsing = [v4 safari_BOOLForKey:@"privateBrowsing"];
    self->_inUnnamedTabGroup = [v4 safari_BOOLForKey:@"local"];
    self->_shared = [v4 safari_BOOLForKey:@"shared"];
    self = self;
    v10 = self;
  }

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v5 = [v4 dictionaryRepresentationForInMemoryChangeTracking];
  [v3 setObject:v5 forKeyedSubscript:@"bookmark"];

  [v3 setObject:self->_tabGroupUUID forKeyedSubscript:@"tabGroupUUID"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_privateBrowsing];
  [v3 setObject:v6 forKeyedSubscript:@"privateBrowsing"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_inUnnamedTabGroup];
  [v3 setObject:v7 forKeyedSubscript:@"local"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_shared];
  [v3 setObject:v8 forKeyedSubscript:@"shared"];

  return v3;
}

- (BOOL)hasSameUUIDAndURLAsTab:(id)a3
{
  v4 = a3;
  v5 = [v4 uuidString];
  v6 = [(WBTab *)self uuidString];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 url];
    v9 = [(WBTab *)self url];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)lastViewedTime
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 dateLastViewed];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (void)setBookmark:(id)a3
{
  v4 = MEMORY[0x277D499E0];
  v5 = a3;
  v6 = [[v4 alloc] initWithValue:v5];

  bookmarkStorage = self->_bookmarkStorage;
  self->_bookmarkStorage = v6;
}

- (NSString)URLString
{
  v2 = [(WBTab *)self url];
  v3 = [v2 absoluteString];

  return v3;
}

- (NSString)deviceIdentifier
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 deviceIdentifier];

  return v3;
}

- (int)parentIdentifier
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 parentID];

  return v3;
}

- (WBLocalTabAttributes)localAttributes
{
  v3 = [WBLocalTabAttributes alloc];
  v4 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v5 = [v4 localAttributes];
  v6 = [(WBLocalTabAttributes *)v3 initWithDictionaryRepresentation:v5];

  return v6;
}

- (NSURL)syncableURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v4 = [v3 address];
  v5 = [v2 URLWithString:v4];

  return v5;
}

- (void)_updateBookmarkWithURL:(id)a3 shouldSync:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v16 = v6;
  if (v4)
  {
    v7 = [(WBTab *)self _addressFromURL:v6];
    v8 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
    v9 = [v8 address];
    v10 = [v7 isEqualToString:v9];

    if ((v10 & 1) == 0)
    {
      os_unfair_lock_lock(&self->_cachedURLUnfairLock);
      cachedURL = self->_cachedURL;
      self->_cachedURL = 0;

      os_unfair_lock_unlock(&self->_cachedURLUnfairLock);
      self->_modified = 1;
      [(WBSCopyOnWriteValue *)self->_bookmarkStorage willModify];
      v12 = [(WBTab *)self _addressFromURL:v16];
      v13 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
      [v13 setAddress:v12];
    }
  }

  else
  {
    v14 = [v6 absoluteString];
    v7 = v14;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = &stru_288259858;
    }

    [(WBTab *)self _setLocalURLString:v15];
  }
}

- (void)_setLocalURLString:(id)a3
{
  v10 = a3;
  v4 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v5 = [v4 extraAttributes];
  v6 = [v5 objectForKeyedSubscript:@"LocalURL"];
  v7 = [v10 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    os_unfair_lock_lock(&self->_cachedURLUnfairLock);
    cachedURL = self->_cachedURL;
    self->_cachedURL = 0;

    os_unfair_lock_unlock(&self->_cachedURLUnfairLock);
    self->_modified = 1;
    [(WBSCopyOnWriteValue *)self->_bookmarkStorage willModify];
    v9 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
    [v9 setExtraAttributesValue:v10 forKey:@"LocalURL"];
  }
}

- (BOOL)isMarkedAsRead
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 isMarkedAsRead];

  return v3;
}

- (WBSCRDTPosition)syncPosition
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 syncPosition];

  return v3;
}

- (int)orderIndex
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 orderIndex];

  return v3;
}

- (BOOL)isInserted
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 isInserted];

  return v3;
}

- (NSString)pinnedTitle
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 pinnedTitle];

  return v3;
}

- (NSURL)pinnedURL
{
  v2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v3 = [v2 pinnedAddress];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isIdentical:(id)a3
{
  v4 = a3;
  if (!WBSIsEqual())
  {
    goto LABEL_6;
  }

  v5 = [(WBTab *)self isPinned];
  if (v5 != [v4 isPinned])
  {
    goto LABEL_6;
  }

  v6 = [(WBTab *)self title];
  v7 = [v4 title];
  v8 = WBSIsEqual();

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v10 = [v9 extraAttributes];
  v11 = [v10 objectForKeyedSubscript:@"LocalURL"];
  v12 = [v4[1] value];
  v13 = [v12 extraAttributes];
  v14 = [v13 objectForKeyedSubscript:@"LocalURL"];
  v15 = WBSIsEqual();

  if (v15)
  {
    v16 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
    v17 = [v16 address];
    v18 = [v4[1] value];
    v19 = [v18 address];
    v20 = WBSIsEqual();
  }

  else
  {
LABEL_6:
    v20 = 0;
  }

  return v20;
}

- (id)duplicate
{
  v3 = [WBMutableTab alloc];
  v4 = [(WBTab *)self deviceIdentifier];
  v5 = [(WBTab *)v3 initWithUUID:0 deviceIdentifier:v4];

  [(WBMutableTab *)v5 adoptAttributesFromTab:self];
  v6 = [(WBMutableTab *)v5 copy];

  return v6;
}

- (id)mutableDuplicate
{
  v3 = [WBMutableTab alloc];
  v4 = [(WBTab *)self deviceIdentifier];
  v5 = [(WBTab *)v3 initWithUUID:0 deviceIdentifier:v4];

  [(WBMutableTab *)v5 adoptAttributesFromTab:self];

  return v5;
}

- (id)duplicatePreservingUUID
{
  v3 = [WBMutableTab alloc];
  v4 = [(WBTab *)self uuid];
  v5 = [(WBTab *)self deviceIdentifier];
  v6 = [(WBTab *)v3 initWithUUID:v4 deviceIdentifier:v5];

  [(WBMutableTab *)v6 adoptAttributesFromTab:self];
  v7 = [(WBMutableTab *)v6 copy];

  return v7;
}

- (id)_addressFromURL:(id)a3
{
  v3 = a3;
  if ([v3 safari_isHTTPFamilyURL])
  {
    v4 = [v3 absoluteString];
  }

  else
  {
    v4 = &stru_288259858;
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WBTab *)self tabGroupUUID];
  v7 = [(WBTab *)self title];
  v8 = [(WBTab *)self url];
  v9 = [(WBTab *)self uuid];
  v10 = [v3 stringWithFormat:@"<%@: %p tabGroupUUID = %@; title = %@; url = %@; uuid = %@>", v5, self, v6, v7, v8, v9];;

  return v10;
}

- (NSString)privacyPreservingDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WBTab *)self uuid];
  v7 = [v3 stringWithFormat:@"<%@: %p uuid = %@>", v5, self, v6];;

  return v7;
}

- (NSString)debugSyncDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(WBTab *)self title];
  v5 = [(WBTab *)self uuid];
  v6 = [v3 stringWithFormat:@"%@, UUID: %@", v4, v5];

  v7 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__WBTab_debugSyncDescription__block_invoke;
  v11[3] = &unk_279E75E40;
  v12 = v6;
  v8 = v6;
  [v7 getReadOnlyCachedBookmarkSyncDataUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

void __29__WBTab_debugSyncDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = [a2 record];
  v3 = [v5 recordID];
  v4 = [v3 ckShortDescription];
  [v2 appendFormat:@", recordID: %@", v4];
}

- (BOOL)canCloseAutomaticallyForInterval:(double)a3
{
  if ([(WBTab *)self isSyncable])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v23 = 0;
      v6 = "Not automatically closable because the tab is syncable.";
      v7 = &v23;
LABEL_19:
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
      return 0;
    }

    return 0;
  }

  if ([(WBTab *)self isPinned])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v22 = 0;
      v6 = "Not automatically closable because tab is pinned.";
      v7 = &v22;
      goto LABEL_19;
    }

    return 0;
  }

  v8 = [(WBTab *)self localAttributes];
  v9 = [v8 lastVisitTime];

  if (!v9)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v21 = 0;
      v6 = "Not automatically closable because lastViewedTime is unknown.";
      v7 = &v21;
      goto LABEL_19;
    }

    return 0;
  }

  if ([(WBTab *)self isBlank])
  {
    v10 = WBS_LOG_CHANNEL_PREFIXTabs();
    v11 = 1;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "Tab is automatically closable because it is blank.", buf, 2u);
    }
  }

  else
  {
    v12 = [(WBTab *)self localAttributes];
    v13 = [v12 lastVisitTime];
    [v13 timeIntervalSinceNow];
    v15 = -v14;

    v16 = WBS_LOG_CHANNEL_PREFIXTabs();
    v5 = v16;
    if (v15 <= a3)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = 0;
        v6 = "Not automatically closable because its lastVisitTime does not cross threshold.";
        v7 = &v18;
        goto LABEL_19;
      }

      return 0;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Tab is automatically closable because lastVisitTime is beyond threshold from user preference.", v19, 2u);
    }

    return 1;
  }

  return v11;
}

- (void)initWithBookmarkStorage:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_272C20000, v5, v6, "WBTab must have a UUID %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithBookmarkStorage:(void *)a1 .cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_272C20000, v5, v6, "WBTab must be backed by a bookmark %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end