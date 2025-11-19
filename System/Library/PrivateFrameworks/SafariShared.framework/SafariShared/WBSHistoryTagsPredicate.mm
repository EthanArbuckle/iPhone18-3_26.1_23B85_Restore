@interface WBSHistoryTagsPredicate
- (WBSHistoryTagsPredicate)initWithCoder:(id)a3;
- (WBSHistoryTagsPredicate)initWithStartDate:(id)a3 endDate:(id)a4 tagType:(unint64_t)a5;
- (id)statementForDatabase:(id)a3 cache:(id)a4 fetchOptions:(unint64_t)a5 error:(id *)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSHistoryTagsPredicate

- (WBSHistoryTagsPredicate)initWithStartDate:(id)a3 endDate:(id)a4 tagType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = WBSHistoryTagsPredicate;
  v11 = [(WBSHistoryTagsPredicate *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, a3);
    objc_storeStrong(&v12->_endDate, a4);
    v12->_tagType = a5;
    v13 = v12;
  }

  return v12;
}

- (WBSHistoryTagsPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WBSHistoryTagsPredicate;
  v5 = [(WBSHistoryTagsPredicate *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v5->_tagType = [v4 decodeIntegerForKey:@"tagType"];
    v5->_limit = [v4 decodeIntegerForKey:@"limit"];
    v5->_minimumItemCount = [v4 decodeIntegerForKey:@"minimumItemCount"];
    v10 = [v4 decodeIntegerForKey:@"sortOrder"];
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
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"identifiers"];

    if (v15)
    {
      objc_storeStrong(&v5->_identifiers, v15);
    }

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeInteger:self->_tagType forKey:@"tagType"];
  [v5 encodeInteger:self->_limit forKey:@"limit"];
  [v5 encodeInteger:self->_minimumItemCount forKey:@"minimumItemCount"];
  [v5 encodeInteger:self->_sortOrder forKey:@"sortOrder"];
  identifiers = self->_identifiers;
  if (identifiers)
  {
    [v5 encodeObject:identifiers forKey:@"identifiers"];
  }
}

- (id)statementForDatabase:(id)a3 cache:(id)a4 fetchOptions:(unint64_t)a5 error:(id *)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
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

  v13 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v8 query:v9];
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

  if (!a6 || v13)
  {
    v22 = v13;
  }

  else
  {
    *a6 = [v8 lastErrorWithMethodName:"-[WBSHistoryTagsPredicate statementForDatabase:cache:fetchOptions:error:]"];
  }

  return v13;
}

@end