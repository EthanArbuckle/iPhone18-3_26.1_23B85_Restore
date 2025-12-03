@interface WBSHistoryTagsPredicate
- (WBSHistoryTagsPredicate)initWithCoder:(id)coder;
- (WBSHistoryTagsPredicate)initWithStartDate:(id)date endDate:(id)endDate tagType:(unint64_t)type;
- (id)statementForDatabase:(id)database cache:(id)cache fetchOptions:(unint64_t)options error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHistoryTagsPredicate

- (WBSHistoryTagsPredicate)initWithStartDate:(id)date endDate:(id)endDate tagType:(unint64_t)type
{
  dateCopy = date;
  endDateCopy = endDate;
  v15.receiver = self;
  v15.super_class = WBSHistoryTagsPredicate;
  v11 = [(WBSHistoryTagsPredicate *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, date);
    objc_storeStrong(&v12->_endDate, endDate);
    v12->_tagType = type;
    v13 = v12;
  }

  return v12;
}

- (WBSHistoryTagsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = WBSHistoryTagsPredicate;
  v5 = [(WBSHistoryTagsPredicate *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v5->_tagType = [coderCopy decodeIntegerForKey:@"tagType"];
    v5->_limit = [coderCopy decodeIntegerForKey:@"limit"];
    v5->_minimumItemCount = [coderCopy decodeIntegerForKey:@"minimumItemCount"];
    v10 = [coderCopy decodeIntegerForKey:@"sortOrder"];
    if (v10 >= 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v5->_sortOrder = v11;
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"identifiers"];

    if (v15)
    {
      objc_storeStrong(&v5->_identifiers, v15);
    }

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeInteger:self->_tagType forKey:@"tagType"];
  [coderCopy encodeInteger:self->_limit forKey:@"limit"];
  [coderCopy encodeInteger:self->_minimumItemCount forKey:@"minimumItemCount"];
  [coderCopy encodeInteger:self->_sortOrder forKey:@"sortOrder"];
  identifiers = self->_identifiers;
  if (identifiers)
  {
    [coderCopy encodeObject:identifiers forKey:@"identifiers"];
  }
}

- (id)statementForDatabase:(id)database cache:(id)cache fetchOptions:(unint64_t)options error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  v9 = [@"SELECT * FROM history_tags" mutableCopy];
  [v9 appendString:@" WHERE type & ? AND modification_timestamp > ? AND modification_timestamp < ? AND item_count >= ?"];
  if ([(NSSet *)self->_identifiers count])
  {
    objc_msgSend(v9, "appendString:", @" AND identifier IN (");
    v10 = [@"?" safari_stringByRepeatingWithCount:-[NSSet count](self->_identifiers joinedByString:{"count"), @", "}];
    [v9 appendString:v10];

    [v9 appendString:@""]);
  }

  sortOrder = self->_sortOrder;
  if (sortOrder == 1)
  {
    v12 = @" ORDER BY modification_timestamp DESC";
  }

  else
  {
    if (sortOrder != 2)
    {
      goto LABEL_8;
    }

    v12 = @" ORDER BY safari_history_tag_compute_frecency_score(item_count, modification_timestamp) DESC";
  }

  [v9 appendString:v12];
LABEL_8:
  if (self->_limit)
  {
    [v9 appendString:@" LIMIT ?"];
  }

  v13 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:databaseCopy query:v9];
  [v13 bindInt64:self->_tagType atParameterIndex:1];
  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  [v13 bindDouble:2 atParameterIndex:?];
  [(NSDate *)self->_endDate timeIntervalSinceReferenceDate];
  [v13 bindDouble:3 atParameterIndex:?];
  [v13 bindInt64:self->_minimumItemCount atParameterIndex:4];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_identifiers;
  v15 = [(NSSet *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    v18 = 4;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v13 bindString:*(*(&v24 + 1) + 8 * i) atParameterIndex:{++v18, v24}];
      }

      v16 = [(NSSet *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
    v20 = v18 + 1;
  }

  else
  {
    v20 = 5;
  }

  limit = self->_limit;
  if (limit)
  {
    [v13 bindInt64:limit atParameterIndex:v20];
  }

  if (!error || v13)
  {
    v22 = v13;
  }

  else
  {
    *error = [databaseCopy lastErrorWithMethodName:"-[WBSHistoryTagsPredicate statementForDatabase:cache:fetchOptions:error:]"];
  }

  return v13;
}

@end