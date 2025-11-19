@interface WebBookmarkChange
+ (id)bookmarkAddChangeWithBookmark:(id)a3;
+ (id)bookmarkModifyChangeWithBookmark:(id)a3;
+ (id)deleteChangeWithBookmark:(id)a3;
+ (id)reorderChangeWithBookmark:(id)a3 afterBookmark:(id)a4;
- (BOOL)shouldSync;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (WebBookmarkChange)initWithBookmark:(id)a3 bookmarkID:(int)a4 parentID:(int)a5 associatedBookmarkID:(int)a6 changeType:(int64_t)a7;
- (WebBookmarkChange)initWithBookmarks:(id)a3 parentID:(int)a4 specialFolderID:(int)a5 changeType:(int64_t)a6;
- (WebBookmarkChange)initWithCoder:(id)a3;
- (WebBookmarkChange)initWithDictionaryRepresentation:(id)a3;
- (id)_stringForType:(int64_t)a3;
- (void)_setModifiedAttributesIfSupported;
- (void)applyModificationsToBookmark:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WebBookmarkChange

+ (id)bookmarkAddChangeWithBookmark:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBookmark:v4 bookmarkID:objc_msgSend(v4 parentID:"identifier") changeType:{objc_msgSend(v4, "parentID"), 2}];

  return v5;
}

+ (id)bookmarkModifyChangeWithBookmark:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBookmark:v4 bookmarkID:objc_msgSend(v4 parentID:"identifier") changeType:{objc_msgSend(v4, "parentID"), 3}];

  return v5;
}

+ (id)deleteChangeWithBookmark:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBookmark:v4 bookmarkID:objc_msgSend(v4 parentID:"identifier") changeType:{objc_msgSend(v4, "parentID"), 0}];

  return v5;
}

+ (id)reorderChangeWithBookmark:(id)a3 afterBookmark:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v9 = [v6 identifier];
  v10 = [v6 parentID];
  if (v7)
  {
    v11 = [v7 identifier];
  }

  else
  {
    v11 = 0x7FFFFFFFLL;
  }

  v12 = [v8 initWithBookmark:v6 bookmarkID:v9 parentID:v10 associatedBookmarkID:v11 changeType:5];

  return v12;
}

- (WebBookmarkChange)initWithBookmarks:(id)a3 parentID:(int)a4 specialFolderID:(int)a5 changeType:(int64_t)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v26.receiver = self;
  v26.super_class = WebBookmarkChange;
  v11 = [(WebBookmarkChange *)&v26 init];
  if (v11)
  {
    v12 = [v10 copy];
    bookmarks = v11->_bookmarks;
    v11->_bookmarks = v12;

    v11->_parentID = a4;
    v11->_specialFolderID = a5;
    v11->_changeType = a6;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v11->_bookmarks;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v22 + 1) + 8 * v18++) _setUsedForInMemoryChangeTracking:{0, v22}];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v16);
    }

    v19 = v11;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (WebBookmarkChange)initWithBookmark:(id)a3 bookmarkID:(int)a4 parentID:(int)a5 associatedBookmarkID:(int)a6 changeType:(int64_t)a7
{
  v12 = a3;
  v19.receiver = self;
  v19.super_class = WebBookmarkChange;
  v13 = [(WebBookmarkChange *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v13->_bookmarkID = a4;
    v13->_parentID = a5;
    v13->_associatedBookmarkID = a6;
    v13->_changeType = a7;
    v15 = [v12 copy];
    bookmark = v14->_bookmark;
    v14->_bookmark = v15;

    [(WebBookmark *)v14->_bookmark _setUsedForInMemoryChangeTracking:a7 == 3];
    [(WebBookmarkChange *)v14 _setModifiedAttributesIfSupported];
    v17 = v14;
  }

  return v14;
}

- (WebBookmarkChange)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = WebBookmarkChange;
  v5 = [(WebBookmarkChange *)&v23 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v22 = 0;
  v6 = [v4 wb_numberForKey:@"BookmarkID" isValid:&v22];
  v5->_bookmarkID = [v6 intValue];

  if (v22 != 1)
  {
    goto LABEL_15;
  }

  v7 = [v4 wb_numberForKey:@"ParentID" isValid:&v22];
  v5->_parentID = [v7 intValue];

  if (v22 != 1)
  {
    goto LABEL_15;
  }

  v8 = [v4 wb_numberForKey:@"AssociatedBookmarkID" isValid:&v22];
  v5->_associatedBookmarkID = [v8 intValue];

  if (v22 != 1)
  {
    goto LABEL_15;
  }

  v9 = [v4 wb_numberForKey:@"SpecialFolderID" isValid:&v22];
  v5->_specialFolderID = [v9 intValue];

  if (v22 != 1)
  {
    goto LABEL_15;
  }

  v10 = [v4 wb_numberForKey:@"Type" isValid:&v22];
  v5->_changeType = [v10 integerValue];

  if (v22 == 1)
  {
    v11 = [v4 wb_dictionaryForKey:@"AssociatedBookmark" isValid:&v22];
    v12 = v11;
    if (v22 != 1)
    {
      goto LABEL_17;
    }

    if (v11)
    {
      v13 = [[WebBookmark alloc] initWithDictionaryRepresentationForInMemoryChangeTracking:v11];
      bookmark = v5->_bookmark;
      v5->_bookmark = v13;

      if (!v5->_bookmark)
      {
        goto LABEL_17;
      }
    }

    v15 = [v4 wb_numberForKey:@"ModifiedAttributes" isValid:&v22];
    v5->_modifiedAttributes = [v15 integerValue];

    if (v22 == 1)
    {
      v16 = [v4 wb_arrayForKey:@"Bookmarks" isValid:&v22];
      v17 = v16;
      if (v22 == 1)
      {
        if (v16)
        {
          v18 = [v16 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_6];
          bookmarks = v5->_bookmarks;
          v5->_bookmarks = v18;
        }

        v20 = v5;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
LABEL_17:
      v20 = 0;
    }
  }

  else
  {
LABEL_15:
    v20 = 0;
  }

  return v20;
}

WebBookmark *__54__WebBookmarkChange_initWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WebBookmark alloc] initWithDictionaryRepresentationForInMemoryChangeTracking:v2];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  bookmarkID = self->_bookmarkID;
  v6 = a3;
  [v6 encodeInt32:bookmarkID forKey:@"BookmarkID"];
  [v6 encodeInt32:self->_parentID forKey:@"ParentID"];
  [v6 encodeInt32:self->_associatedBookmarkID forKey:@"AssociatedBookmarkID"];
  [v6 encodeInt32:self->_specialFolderID forKey:@"SpecialFolderID"];
  [v6 encodeInteger:self->_changeType forKey:@"Type"];
  v5 = [(WebBookmark *)self->_bookmark dictionaryRepresentationForInMemoryChangeTracking];
  [v6 encodeObject:v5 forKey:@"AssociatedBookmark"];

  [v6 encodeInt64:self->_modifiedAttributes forKey:@"ModifiedAttributes"];
  [v6 encodeObject:self->_bookmarks forKey:@"Bookmarks"];
}

- (WebBookmarkChange)initWithCoder:(id)a3
{
  v25[7] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = [v3 decodeInt32ForKey:@"BookmarkID"];
  v21 = [v3 decodeInt32ForKey:@"ParentID"];
  v20 = [v3 decodeInt32ForKey:@"AssociatedBookmarkID"];
  v4 = [v3 decodeInt32ForKey:@"SpecialFolderID"];
  v5 = [v3 decodeIntegerForKey:@"Type"];
  v6 = [WebBookmark alloc];
  v7 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v25[3] = objc_opt_class();
  v25[4] = objc_opt_class();
  v25[5] = objc_opt_class();
  v25[6] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:7];
  v9 = [v7 setWithArray:v8];
  v10 = [v3 decodeObjectOfClasses:v9 forKey:@"AssociatedBookmark"];
  v11 = [(WebBookmark *)v6 initWithDictionaryRepresentationForInMemoryChangeTracking:v10];

  v12 = [v3 decodeInt64ForKey:@"ModifiedAttributes"];
  v13 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [v3 decodeObjectOfClasses:v15 forKey:@"Bookmarks"];

  v17 = [[WebBookmarkChange alloc] initWithBookmark:v11 bookmarkID:v22 parentID:v21 associatedBookmarkID:v20 changeType:v5];
  [(WebBookmarkChange *)v17 setSpecialFolderID:v4];
  [(WebBookmarkChange *)v17 setModifiedAttributes:v12];
  [(WebBookmarkChange *)v17 setBookmarks:v16];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)applyModificationsToBookmark:(id)a3
{
  v8 = a3;
  if ([(WebBookmarkChange *)self attributesMarkedAsModify:8])
  {
    v4 = [v8 isReadingListItem];
    v5 = [(WebBookmark *)self->_bookmark dateLastViewed];
    if (v4)
    {
      [v8 setReadingListDateLastViewed:v5];
    }

    else
    {
      [v8 setTabDateLastViewed:v5];
    }
  }

  if ([(WebBookmarkChange *)self attributesMarkedAsModify:1])
  {
    v6 = [(WebBookmark *)self->_bookmark title];
    [v8 setTitle:v6];
  }

  if ([(WebBookmarkChange *)self attributesMarkedAsModify:2])
  {
    v7 = [(WebBookmark *)self->_bookmark address];
    [v8 setAddress:v7];
  }

  if ([(WebBookmarkChange *)self attributesMarkedAsModify:512])
  {
    [v8 setLastSelectedChildID:{-[WebBookmark lastSelectedChildID](self->_bookmark, "lastSelectedChildID")}];
  }
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_bookmarkID];
  [v3 setObject:v4 forKeyedSubscript:@"BookmarkID"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_parentID];
  [v3 setObject:v5 forKeyedSubscript:@"ParentID"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_associatedBookmarkID];
  [v3 setObject:v6 forKeyedSubscript:@"AssociatedBookmarkID"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_specialFolderID];
  [v3 setObject:v7 forKeyedSubscript:@"SpecialFolderID"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_changeType];
  [v3 setObject:v8 forKeyedSubscript:@"Type"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_modifiedAttributes];
  [v3 setObject:v9 forKeyedSubscript:@"ModifiedAttributes"];

  bookmarks = self->_bookmarks;
  if (bookmarks)
  {
    v11 = [(NSArray *)bookmarks valueForKey:@"dictionaryRepresentationForInMemoryChangeTracking"];
    [v3 setObject:v11 forKeyedSubscript:@"Bookmarks"];
  }

  bookmark = self->_bookmark;
  if (bookmark)
  {
    v13 = [(WebBookmark *)bookmark dictionaryRepresentationForInMemoryChangeTracking];
    [v3 setObject:v13 forKeyedSubscript:@"AssociatedBookmark"];
  }

  return v3;
}

- (void)_setModifiedAttributesIfSupported
{
  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:8])
  {
    self->_modifiedAttributes |= 8uLL;
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:1])
  {
    self->_modifiedAttributes |= 1uLL;
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:2])
  {
    self->_modifiedAttributes |= 2uLL;
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:512])
  {
    self->_modifiedAttributes |= 0x200uLL;
  }
}

- (BOOL)shouldSync
{
  if ([(WebBookmark *)self->_bookmark identifier]== 0x7FFFFFFF)
  {
    return 0;
  }

  bookmark = self->_bookmark;

  return [(WebBookmark *)bookmark isSyncable];
}

- (id)_stringForType:(int64_t)a3
{
  if ((a3 - 2) > 4)
  {
    return @"Delete";
  }

  else
  {
    return off_279E75788[a3 - 2];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(WebBookmarkChange *)self _stringForType:self->_changeType];
  bookmarkID = self->_bookmarkID;
  v7 = [(WebBookmark *)self->_bookmark title];
  v8 = v7;
  specialFolderID = self->_specialFolderID;
  if (!specialFolderID)
  {
    specialFolderID = self->_parentID;
  }

  LODWORD(v10) = self->_associatedBookmarkID;
  if (v10 == 0x7FFFFFFF)
  {
    v10 = 0;
  }

  else
  {
    v10 = v10;
  }

  v11 = [v3 stringWithFormat:@"<%@: %p type = %@; bookmark = %d %@; parent = %d; associated bookmark = %d;>", v4, self, v5, bookmarkID, v7, specialFolderID, v10];;

  return v11;
}

@end