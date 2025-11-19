@interface TSTIntegerKeyDict
- (TSTIntegerKeyDict)init;
- (id)allValues;
- (id)objectForKey:(unsigned int)a3;
- (void)applyFunction:(void *)a3 withState:(void *)a4;
- (void)applyFunction:(void *)a3 withState:(void *)a4 andState:(void *)a5;
- (void)dealloc;
- (void)makeObjectsPerformSelector:(SEL)a3;
- (void)setObject:(id)a3 forKey:(unsigned int)a4;
- (void)transformWithFunction:(void *)a3 withState:(void *)a4;
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

- (id)objectForKey:(unsigned int)a3
{
  v4 = a3;
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(self->mMap, &v4);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (void)setObject:(id)a3 forKey:(unsigned int)a4
{
  if (!a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTIntegerKeyDict setObject:forKey:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTIntegerKeyDict.mm"), 45, @"Can't set nil objects in this map!"}];
  }

  mMap = self->mMap;
  v10 = a3;
  v12 = a4;
  v13 = a3;
  v11 = a3;
  std::__hash_table<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,TSTIntHasher,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::equal_to<unsigned int>,TSTIntHasher,true>,std::allocator<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,SFUtility::ObjcSharedPtr<NSObject>>>(mMap, &v12);
}

- (void)makeObjectsPerformSelector:(SEL)a3
{
  for (i = *(self->mMap + 2); i; i = *i)
  {
    [i[3] performSelector:a3];
  }
}

- (void)applyFunction:(void *)a3 withState:(void *)a4
{
  for (i = *(self->mMap + 2); i; i = *i)
  {
    (a3)(*(i + 4), i[3], a4);
  }
}

- (void)applyFunction:(void *)a3 withState:(void *)a4 andState:(void *)a5
{
  for (i = *(self->mMap + 2); i; i = *i)
  {
    (a3)(*(i + 4), i[3], a4, a5);
  }
}

- (void)transformWithFunction:(void *)a3 withState:(void *)a4
{
  for (i = *(self->mMap + 2); i; i = *i)
  {
    v7 = i[3];
    v8 = (a3)(*(i + 4), v7, a4);
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