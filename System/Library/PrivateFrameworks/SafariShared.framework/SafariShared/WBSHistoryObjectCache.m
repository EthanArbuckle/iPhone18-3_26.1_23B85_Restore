@interface WBSHistoryObjectCache
- (WBSHistoryObjectCache)init;
- (id).cxx_construct;
- (id)allItems;
- (id)itemForID:(int64_t)a3;
- (id)visitForID:(int64_t)a3;
- (void)_clearNilReferences;
- (void)changeItemIDs:(id)a3;
- (void)changeVisitIDs:(id)a3;
- (void)clear;
- (void)setItem:(id)a3 forID:(int64_t)a4;
- (void)setVisit:(id)a3 forID:(int64_t)a4;
@end

@implementation WBSHistoryObjectCache

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

- (WBSHistoryObjectCache)init
{
  v6.receiver = self;
  v6.super_class = WBSHistoryObjectCache;
  v2 = [(WBSHistoryObjectCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)allItems
{
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:self->_itemsByDatabaseID.__table_.__size_];
  for (i = self->_itemsByDatabaseID.__table_.__first_node_.__next_; i; i = *i)
  {
    v5 = i[3];
    [v3 addObject:v5];
  }

  return v3;
}

- (id)itemForID:(int64_t)a3
{
  v5 = a3;
  v3 = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(&self->_itemsByDatabaseID.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (void)setItem:(id)a3 forID:(int64_t)a4
{
  v6 = a3;
  v9[0] = a4;
  v9[2] = v9;
  v7 = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&self->_itemsByDatabaseID.__table_.__bucket_list_.__ptr_, v9);
  if (v7)
  {
    v8 = v7[3];
    v7[3] = v6;
  }

  else
  {
    __break(1u);
  }
}

- (void)changeItemIDs:(id)a3
{
  v4 = a3;
  for (i = *([v4 map] + 16); i; i = *i)
  {
    v12 = *(i + 1);
    v6 = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(&self->_itemsByDatabaseID.__table_.__bucket_list_.__ptr_, &v12);
    v7 = v6;
    if (v6)
    {
      v8 = v6[3];
      [v8 setDatabaseID:*(&v12 + 1)];
      v10 = *(&v12 + 1);
      v9 = v8;
      v11 = v9;
      std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__emplace_unique_key_args<long long,std::pair<long long,WBSHistoryItem * {__strong}>>(&self->_itemsByDatabaseID.__table_.__bucket_list_.__ptr_, &v10);

      std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::erase(&self->_itemsByDatabaseID.__table_.__bucket_list_.__ptr_, v7);
    }
  }
}

- (id)visitForID:(int64_t)a3
{
  v5 = a3;
  WeakRetained = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(&self->_weakVisitsByDatabaseID.__table_.__bucket_list_.__ptr_, &v5);
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
  }

  return WeakRetained;
}

- (void)setVisit:(id)a3 forID:(int64_t)a4
{
  v6 = a3;
  v8[0] = a4;
  v8[2] = v8;
  v7 = std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&self->_weakVisitsByDatabaseID.__table_.__bucket_list_.__ptr_, v8);
  if (v7)
  {
    objc_storeWeak(v7 + 3, v6);
  }

  else
  {
    __break(1u);
  }
}

- (void)_clearNilReferences
{
  for (i = self->_weakVisitsByDatabaseID.__table_.__first_node_.__next_; i; i = std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::erase(&self->_weakVisitsByDatabaseID.__table_.__bucket_list_.__ptr_, i))
  {
    while (1)
    {
      WeakRetained = objc_loadWeakRetained(i + 3);

      if (!WeakRetained)
      {
        break;
      }

      i = *i;
      if (!i)
      {
        return;
      }
    }
  }
}

- (void)changeVisitIDs:(id)a3
{
  v4 = a3;
  [(WBSHistoryObjectCache *)self _clearNilReferences];
  for (i = *([v4 map] + 16); i; i = *i)
  {
    v6 = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(&self->_weakVisitsByDatabaseID.__table_.__bucket_list_.__ptr_, i + 2);
    v7 = v6;
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(v6 + 3);
      std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::erase(&self->_weakVisitsByDatabaseID.__table_.__bucket_list_.__ptr_, v7);
      if (!WeakRetained)
      {
        break;
      }

      [WeakRetained setDatabaseID:i[3]];
      v10 = i[3];
      v9 = WeakRetained;
      v11 = v9;
      std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::__emplace_unique_key_args<long long,std::pair<long long,WBSHistoryVisit * {__strong}>>(&self->_weakVisitsByDatabaseID.__table_.__bucket_list_.__ptr_, &v10);
    }
  }
}

- (void)clear
{
  std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::clear(&self->_itemsByDatabaseID);

  std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::clear(&self->_weakVisitsByDatabaseID);
}

@end