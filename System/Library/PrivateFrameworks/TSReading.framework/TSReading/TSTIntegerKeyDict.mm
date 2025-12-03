@interface TSTIntegerKeyDict
- (TSTIntegerKeyDict)init;
- (id)allValues;
- (id)objectForKey:(unsigned int)key;
- (void)applyFunction:(void *)function withState:(void *)state;
- (void)applyFunction:(void *)function withState:(void *)state andState:(void *)andState;
- (void)dealloc;
- (void)makeObjectsPerformSelector:(SEL)selector;
- (void)setObject:(id)object forKey:(unsigned int)key;
- (void)transformWithFunction:(void *)function withState:(void *)state;
@end

@implementation TSTIntegerKeyDict

- (TSTIntegerKeyDict)init
{
  v3.receiver = self;
  v3.super_class = TSTIntegerKeyDict;
  if ([(TSTIntegerKeyDict *)&v3 init])
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
    v4 = std::__hash_table<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,TSP::IdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::equal_to<long long const>,TSP::IdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,NSMutableArray * {__strong}>>>::~__hash_table(mMap);
    MEMORY[0x26D6A9A30](v4, 0x10A0C408EF24B1CLL);
  }

  v5.receiver = self;
  v5.super_class = TSTIntegerKeyDict;
  [(TSTIntegerKeyDict *)&v5 dealloc];
}

- (id)objectForKey:(unsigned int)key
{
  keyCopy = key;
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(self->mMap, &keyCopy);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (void)setObject:(id)object forKey:(unsigned int)key
{
  if (!object)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTIntegerKeyDict setObject:forKey:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTIntegerKeyDict.mm"), 45, @"Can't set nil objects in this map!"}];
  }

  mMap = self->mMap;
  objectCopy = object;
  keyCopy = key;
  objectCopy2 = object;
  objectCopy3 = object;
  std::__hash_table<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,TSTIntHasher,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::equal_to<unsigned int>,TSTIntHasher,true>,std::allocator<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,SFUtility::ObjcSharedPtr<NSObject>>>(mMap, &keyCopy);
}

- (void)makeObjectsPerformSelector:(SEL)selector
{
  for (i = *(self->mMap + 2); i; i = *i)
  {
    [i[3] performSelector:selector];
  }
}

- (void)applyFunction:(void *)function withState:(void *)state
{
  for (i = *(self->mMap + 2); i; i = *i)
  {
    (function)(*(i + 4), i[3], state);
  }
}

- (void)applyFunction:(void *)function withState:(void *)state andState:(void *)andState
{
  for (i = *(self->mMap + 2); i; i = *i)
  {
    (function)(*(i + 4), i[3], state, andState);
  }
}

- (void)transformWithFunction:(void *)function withState:(void *)state
{
  for (i = *(self->mMap + 2); i; i = *i)
  {
    v7 = i[3];
    v8 = (function)(*(i + 4), v7, state);
    if (v8)
    {
      v9 = v8 == v7;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      SFUtility::ObjcSharedPtr<NSObject>::reset(i + 3, v8);
    }
  }
}

- (id)allValues
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[TSTIntegerKeyDict count](self, "count")}];
  for (i = *(self->mMap + 2); i; i = *i)
  {
    [v3 addObject:i[3]];
  }

  return v3;
}

@end