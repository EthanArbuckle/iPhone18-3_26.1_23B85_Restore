@interface REMReminderHashtagContextChangeItem
- (NSSet)hashtags;
- (REMReminderHashtagContextChangeItem)initWithReminderChangeItem:(id)a3;
- (id)addHashtagWithType:(int64_t)a3 name:(id)a4;
- (id)addHashtagWithType:(int64_t)a3 name:(id)a4 creationDate:(id)a5;
- (id)nameWithDisallowedCharactersReplaced:(id)a3;
- (void)addHashtag:(id)a3;
- (void)cancelUndeleteHashtagWithID:(id)a3;
- (void)removeAllHashtags;
- (void)removeHashtag:(id)a3;
- (void)undeleteHashtagWithID:(id)a3;
@end

@implementation REMReminderHashtagContextChangeItem

- (REMReminderHashtagContextChangeItem)initWithReminderChangeItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderHashtagContextChangeItem;
  v6 = [(REMReminderHashtagContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderChangeItem, a3);
  }

  return v7;
}

- (NSSet)hashtags
{
  v2 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  v3 = [v2 hashtags];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  return v6;
}

- (void)addHashtag:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Adding hashtag {reminderChangeItem: %@, hashtag: %@}", &v12, 0x16u);
  }

  v7 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  v8 = [v7 hashtags];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  [v9 addObject:v4];
  v10 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  [v10 setHashtags:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)addHashtagWithType:(int64_t)a3 name:(id)a4
{
  v6 = a4;
  v7 = +[REMHashtag newObjectID];
  v8 = [(REMReminderHashtagContextChangeItem *)self nameWithDisallowedCharactersReplaced:v6];

  v9 = [REMHashtag alloc];
  v10 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  v11 = [v10 accountID];
  v12 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  v13 = [v12 objectID];
  v14 = [(REMHashtag *)v9 initWithObjectID:v7 accountID:v11 reminderID:v13 type:a3 name:v8];

  [(REMReminderHashtagContextChangeItem *)self addHashtag:v14];

  return v14;
}

- (id)addHashtagWithType:(int64_t)a3 name:(id)a4 creationDate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = +[REMHashtag newObjectID];
  v11 = [(REMReminderHashtagContextChangeItem *)self nameWithDisallowedCharactersReplaced:v9];

  v12 = [REMHashtag alloc];
  v13 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  v14 = [v13 accountID];
  v15 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  v16 = [v15 objectID];
  v17 = [(REMHashtag *)v12 initWithObjectID:v10 accountID:v14 reminderID:v16 type:a3 name:v11 creationDate:v8];

  [(REMReminderHashtagContextChangeItem *)self addHashtag:v17];

  return v17;
}

- (id)nameWithDisallowedCharactersReplaced:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 hashtagTokenAllowedCharacters];
  v6 = [v5 invertedSet];

  v7 = [v4 componentsSeparatedByCharactersInSet:v6];

  v8 = [v7 componentsJoinedByString:&stru_1F0D67F00];

  return v8;
}

- (void)removeHashtag:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing hashtag {reminderChangeItem: %@, hashtag: %@}", &v12, 0x16u);
  }

  v7 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  v8 = [v7 hashtags];
  v9 = [v8 mutableCopy];

  [v9 removeObject:v4];
  v10 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  [v10 setHashtags:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeAllHashtags
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  v4 = [v3 hashtags];
  v5 = [v4 count];

  if (v5)
  {
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_INFO, "Removing all hashtags {reminderChangeItem: %@}", &v11, 0xCu);
    }

    v8 = [MEMORY[0x1E695DFD8] set];
    v9 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
    [v9 setHashtags:v8];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)undeleteHashtagWithID:(id)a3
{
  v4 = a3;
  v8 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  v5 = [v8 hashtagIDsToUndelete];
  v6 = [v5 setByAddingObject:v4];

  v7 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  [v7 setHashtagIDsToUndelete:v6];
}

- (void)cancelUndeleteHashtagWithID:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  v6 = [v5 hashtagIDsToUndelete];
  v9 = [v6 mutableCopy];

  [v9 removeObject:v4];
  v7 = [v9 copy];
  v8 = [(REMReminderHashtagContextChangeItem *)self reminderChangeItem];
  [v8 setHashtagIDsToUndelete:v7];
}

@end