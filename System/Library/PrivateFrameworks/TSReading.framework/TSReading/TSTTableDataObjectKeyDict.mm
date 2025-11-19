@interface TSTTableDataObjectKeyDict
- (TSTTableDataObjectKeyDict)init;
- (unsigned)keyForObject:(id)a3;
- (void)dealloc;
- (void)removeKeyForObject:(id)a3;
- (void)setKey:(unsigned int)a3 forObject:(id)a4;
@end

@implementation TSTTableDataObjectKeyDict

- (TSTTableDataObjectKeyDict)init
{
  v3.receiver = self;
  v3.super_class = TSTTableDataObjectKeyDict;
  if ([(TSTTableDataObjectKeyDict *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mMap = self->mMap;
  if (mMap)
  {
    v4 = std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::~__hash_table(mMap);
    MEMORY[0x26D6A9A30](v4, 0x10A0C408EF24B1CLL);
  }

  v5.receiver = self;
  v5.super_class = TSTTableDataObjectKeyDict;
  [(TSTTableDataObjectKeyDict *)&v5 dealloc];
}

- (unsigned)keyForObject:(id)a3
{
  mMap = self->mMap;
  v7 = a3;
  v4 = a3;
  v5 = std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::find<SFUtility::ObjcSharedPtr<TSTTableDataObject>>(mMap, &v7);

  if (v5)
  {
    return *(v5 + 6);
  }

  else
  {
    return 0;
  }
}

- (void)setKey:(unsigned int)a3 forObject:(id)a4
{
  if (!a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableDataObjectKeyDict setKey:forObject:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataObjectKeyDict.mm"), 68, @"Can't set invalid keys in this map!"}];
  }

  mMap = self->mMap;
  v10 = a4;
  v12 = a4;
  v11 = a4;
  v13 = a3;
  std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::__emplace_unique_key_args<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::pair<SFUtility::ObjcSharedPtr<TSTTableDataObject> const,unsigned int>>(mMap, &v12);
}

- (void)removeKeyForObject:(id)a3
{
  mMap = self->mMap;
  v5 = a3;
  v4 = a3;
  std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::__erase_unique<SFUtility::ObjcSharedPtr<TSTTableDataObject>>(mMap, &v5);
}

@end