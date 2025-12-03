@interface TSTTableDataObjectKeyDict
- (TSTTableDataObjectKeyDict)init;
- (unsigned)keyForObject:(id)object;
- (void)dealloc;
- (void)removeKeyForObject:(id)object;
- (void)setKey:(unsigned int)key forObject:(id)object;
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

- (unsigned)keyForObject:(id)object
{
  mMap = self->mMap;
  objectCopy = object;
  objectCopy2 = object;
  v5 = std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::find<SFUtility::ObjcSharedPtr<TSTTableDataObject>>(mMap, &objectCopy);

  if (v5)
  {
    return *(v5 + 6);
  }

  else
  {
    return 0;
  }
}

- (void)setKey:(unsigned int)key forObject:(id)object
{
  if (!key)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableDataObjectKeyDict setKey:forObject:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataObjectKeyDict.mm"), 68, @"Can't set invalid keys in this map!"}];
  }

  mMap = self->mMap;
  objectCopy = object;
  objectCopy2 = object;
  objectCopy3 = object;
  keyCopy = key;
  std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::__emplace_unique_key_args<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::pair<SFUtility::ObjcSharedPtr<TSTTableDataObject> const,unsigned int>>(mMap, &objectCopy2);
}

- (void)removeKeyForObject:(id)object
{
  mMap = self->mMap;
  objectCopy = object;
  objectCopy2 = object;
  std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::__erase_unique<SFUtility::ObjcSharedPtr<TSTTableDataObject>>(mMap, &objectCopy);
}

@end