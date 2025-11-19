@interface WBSHistoryVisitsWithItemsPredicate
- (BOOL)evaluateServiceVisit:(id)a3;
- (BOOL)evaluateVisit:(id)a3;
- (WBSHistoryVisitsWithItemsPredicate)initWithCoder:(id)a3;
- (WBSHistoryVisitsWithItemsPredicate)initWithHistoryItems:(id)a3 ignoreVisits:(id)a4;
- (id)statementForDatabase:(id)a3 cache:(id)a4 fetchOptions:(unint64_t)a5 error:(id *)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSHistoryVisitsWithItemsPredicate

- (WBSHistoryVisitsWithItemsPredicate)initWithHistoryItems:(id)a3 ignoreVisits:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = WBSHistoryVisitsWithItemsPredicate;
  v8 = [(WBSHistoryVisitsWithItemsPredicate *)&v36 init];
  if (v8)
  {
    memset(v34, 0, sizeof(v34));
    v35 = 1065353216;
    memset(v32, 0, sizeof(v32));
    v33 = 1065353216;
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(v34, vcvtps_u32_f32([v6 count] / 1.0));
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(v32, vcvtps_u32_f32([v7 count] / 1.0));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v10)
    {
      v11 = *v29;
      do
      {
        v12 = 0;
        do
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v27 = [*(*(&v28 + 1) + 8 * v12) databaseID];
          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v34, &v27);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v10);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v37 count:16];
    if (v14)
    {
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v27 = [*(*(&v23 + 1) + 8 * v16) databaseID];
          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v32, &v27);
          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v37 count:16];
      }

      while (v14);
    }

    v17 = [[WBSSetInt64 alloc] initWithMovableSet:v34];
    itemIdentifiers = v8->_itemIdentifiers;
    v8->_itemIdentifiers = v17;

    v19 = [[WBSSetInt64 alloc] initWithMovableSet:v32];
    ignoredVisitIdentifiers = v8->_ignoredVisitIdentifiers;
    v8->_ignoredVisitIdentifiers = v19;

    v21 = v8;
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v32);
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v34);
  }

  return v8;
}

- (WBSHistoryVisitsWithItemsPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WBSHistoryVisitsWithItemsPredicate;
  v5 = [(WBSHistoryVisitsWithItemsPredicate *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"items"];
    itemIdentifiers = v5->_itemIdentifiers;
    v5->_itemIdentifiers = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ignoredVisits"];
    ignoredVisitIdentifiers = v5->_ignoredVisitIdentifiers;
    v5->_ignoredVisitIdentifiers = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_itemIdentifiers forKey:@"items"];
  [v4 encodeObject:self->_ignoredVisitIdentifiers forKey:@"ignoredVisits"];
}

- (id)statementForDatabase:(id)a3 cache:(id)a4 fetchOptions:(unint64_t)a5 error:(id *)a6
{
  v7 = a5;
  v9 = a3;
  v10 = MEMORY[0x1E696AD60];
  v11 = [(WBSSetInt64 *)self->_itemIdentifiers commaSeparatedValues];
  v12 = [v10 stringWithFormat:@"SELECT history_visits.* FROM history_visits WHERE history_item IN (%@)", v11];

  if ([(WBSSetInt64 *)self->_ignoredVisitIdentifiers count])
  {
    v13 = [(WBSSetInt64 *)self->_ignoredVisitIdentifiers commaSeparatedValues];
    [v12 appendFormat:@" AND history_visits.id NOT IN (%@)", v13];

    if ((v7 & 8) != 0)
    {
      v14 = [(WBSSetInt64 *)self->_ignoredVisitIdentifiers commaSeparatedValues];
      [v12 appendFormat:@"AND NOT EXISTS (SELECT * FROM history_visits v2 WHERE id NOT IN (%@) AND history_visits.history_item = v2.history_item AND (v2.visit_time > history_visits.visit_time OR     (v2.visit_time = history_visits.visit_time AND (v2.synthesized < history_visits.synthesized OR                                                    (v2.synthesized = history_visits.synthesized AND v2.id > history_visits.id)))))", v14];
    }
  }

  else if ((v7 & 8) != 0)
  {
    [v12 appendString:@" AND history_visits.id = safari_latest_visit_for (history_item)"];
  }

  v15 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v12];
  v16 = v15;
  if (a6 && !v15)
  {
    *a6 = [v9 lastErrorWithMethodName:"-[WBSHistoryVisitsWithItemsPredicate statementForDatabase:cache:fetchOptions:error:]"];
  }

  return v16;
}

- (BOOL)evaluateVisit:(id)a3
{
  v4 = a3;
  itemIdentifiers = self->_itemIdentifiers;
  v6 = [v4 item];
  LOBYTE(itemIdentifiers) = -[WBSSetInt64 contains:](itemIdentifiers, "contains:", [v6 databaseID]);

  if (itemIdentifiers)
  {
    v7 = !-[WBSSetInt64 contains:](self->_ignoredVisitIdentifiers, "contains:", [v4 databaseID]);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)evaluateServiceVisit:(id)a3
{
  v4 = a3;
  if (-[WBSSetInt64 contains:](self->_itemIdentifiers, "contains:", [v4 itemID]))
  {
    v5 = !-[WBSSetInt64 contains:](self->_ignoredVisitIdentifiers, "contains:", [v4 databaseID]);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end