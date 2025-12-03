@interface REMReminderHashtagContextChangeItem
- (NSSet)hashtags;
- (REMReminderHashtagContextChangeItem)initWithReminderChangeItem:(id)item;
- (id)addHashtagWithType:(int64_t)type name:(id)name;
- (id)addHashtagWithType:(int64_t)type name:(id)name creationDate:(id)date;
- (id)nameWithDisallowedCharactersReplaced:(id)replaced;
- (void)addHashtag:(id)hashtag;
- (void)cancelUndeleteHashtagWithID:(id)d;
- (void)removeAllHashtags;
- (void)removeHashtag:(id)hashtag;
- (void)undeleteHashtagWithID:(id)d;
@end

@implementation REMReminderHashtagContextChangeItem

- (REMReminderHashtagContextChangeItem)initWithReminderChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMReminderHashtagContextChangeItem;
  v6 = [(REMReminderHashtagContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderChangeItem, item);
  }

  return v7;
}

- (NSSet)hashtags
{
  reminderChangeItem = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  hashtags = [reminderChangeItem hashtags];
  v4 = hashtags;
  if (hashtags)
  {
    v5 = hashtags;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  return v6;
}

- (void)addHashtag:(id)hashtag
{
  v16 = *MEMORY[0x1E69E9840];
  hashtagCopy = hashtag;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
    v12 = 138412546;
    v13 = reminderChangeItem;
    v14 = 2112;
    v15 = hashtagCopy;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Adding hashtag {reminderChangeItem: %@, hashtag: %@}", &v12, 0x16u);
  }

  reminderChangeItem2 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  hashtags = [reminderChangeItem2 hashtags];
  v9 = [hashtags mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  [v9 addObject:hashtagCopy];
  reminderChangeItem3 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem3 setHashtags:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)addHashtagWithType:(int64_t)type name:(id)name
{
  nameCopy = name;
  v7 = +[REMHashtag newObjectID];
  v8 = [(REMReminderHashtagContextChangeItem *)self nameWithDisallowedCharactersReplaced:nameCopy];

  v9 = [REMHashtag alloc];
  reminderChangeItem = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  accountID = [reminderChangeItem accountID];
  reminderChangeItem2 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem2 objectID];
  v14 = [(REMHashtag *)v9 initWithObjectID:v7 accountID:accountID reminderID:objectID type:type name:v8];

  [(REMReminderHashtagContextChangeItem *)self addHashtag:v14];

  return v14;
}

- (id)addHashtagWithType:(int64_t)type name:(id)name creationDate:(id)date
{
  dateCopy = date;
  nameCopy = name;
  v10 = +[REMHashtag newObjectID];
  v11 = [(REMReminderHashtagContextChangeItem *)self nameWithDisallowedCharactersReplaced:nameCopy];

  v12 = [REMHashtag alloc];
  reminderChangeItem = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  accountID = [reminderChangeItem accountID];
  reminderChangeItem2 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem2 objectID];
  v17 = [(REMHashtag *)v12 initWithObjectID:v10 accountID:accountID reminderID:objectID type:type name:v11 creationDate:dateCopy];

  [(REMReminderHashtagContextChangeItem *)self addHashtag:v17];

  return v17;
}

- (id)nameWithDisallowedCharactersReplaced:(id)replaced
{
  v3 = MEMORY[0x1E696AB08];
  replacedCopy = replaced;
  hashtagTokenAllowedCharacters = [v3 hashtagTokenAllowedCharacters];
  invertedSet = [hashtagTokenAllowedCharacters invertedSet];

  v7 = [replacedCopy componentsSeparatedByCharactersInSet:invertedSet];

  v8 = [v7 componentsJoinedByString:&stru_1F0D67F00];

  return v8;
}

- (void)removeHashtag:(id)hashtag
{
  v16 = *MEMORY[0x1E69E9840];
  hashtagCopy = hashtag;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
    v12 = 138412546;
    v13 = reminderChangeItem;
    v14 = 2112;
    v15 = hashtagCopy;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing hashtag {reminderChangeItem: %@, hashtag: %@}", &v12, 0x16u);
  }

  reminderChangeItem2 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  hashtags = [reminderChangeItem2 hashtags];
  v9 = [hashtags mutableCopy];

  [v9 removeObject:hashtagCopy];
  reminderChangeItem3 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem3 setHashtags:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeAllHashtags
{
  v13 = *MEMORY[0x1E69E9840];
  reminderChangeItem = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  hashtags = [reminderChangeItem hashtags];
  v5 = [hashtags count];

  if (v5)
  {
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      reminderChangeItem2 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
      v11 = 138412290;
      v12 = reminderChangeItem2;
      _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_INFO, "Removing all hashtags {reminderChangeItem: %@}", &v11, 0xCu);
    }

    v8 = [MEMORY[0x1E695DFD8] set];
    reminderChangeItem3 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
    [reminderChangeItem3 setHashtags:v8];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)undeleteHashtagWithID:(id)d
{
  dCopy = d;
  reminderChangeItem = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  hashtagIDsToUndelete = [reminderChangeItem hashtagIDsToUndelete];
  v6 = [hashtagIDsToUndelete setByAddingObject:dCopy];

  reminderChangeItem2 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem2 setHashtagIDsToUndelete:v6];
}

- (void)cancelUndeleteHashtagWithID:(id)d
{
  dCopy = d;
  reminderChangeItem = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  hashtagIDsToUndelete = [reminderChangeItem hashtagIDsToUndelete];
  v9 = [hashtagIDsToUndelete mutableCopy];

  [v9 removeObject:dCopy];
  v7 = [v9 copy];
  reminderChangeItem2 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem2 setHashtagIDsToUndelete:v7];
}

@end