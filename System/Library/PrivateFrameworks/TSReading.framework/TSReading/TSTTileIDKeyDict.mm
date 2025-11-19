@interface TSTTileIDKeyDict
- (TSTTileIDKeyDict)initWithOwner:(id)a3;
- (id)tileForID:(id)a3;
- (void)applyFunction:(void *)a3 withState:(void *)a4;
- (void)dealloc;
- (void)makeTilesPerformSelector:(SEL)a3;
- (void)removeTileForID:(id)a3;
- (void)setTile:(id)a3 forID:(id)a4;
@end

@implementation TSTTileIDKeyDict

- (TSTTileIDKeyDict)initWithOwner:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSTTileIDKeyDict;
  if ([(TSPContainedObject *)&v4 initWithOwner:a3])
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
  v5.super_class = TSTTileIDKeyDict;
  [(TSTTileIDKeyDict *)&v5 dealloc];
}

- (id)tileForID:(id)a3
{
  mMap = self->mMap;
  v5 = a3;
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(mMap, &v5.var0);
  if (result)
  {
    return [*(result + 3) object];
  }

  return result;
}

- (void)setTile:(id)a3 forID:(id)a4
{
  mMap = self->mMap;
  v6 = [TSPLazyReference referenceForObject:a3];
  v7 = v6;
  v9 = a4;
  v10 = v6;
  v8 = v6;
  std::__hash_table<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,TSTIntHasher,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::equal_to<unsigned int>,TSTIntHasher,true>,std::allocator<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,SFUtility::ObjcSharedPtr<NSObject>>>(mMap, &v9.var0);
}

- (void)removeTileForID:(id)a3
{
  mMap = self->mMap;
  v4 = a3;
  std::__hash_table<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,TSTIntHasher,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::equal_to<unsigned int>,TSTIntHasher,true>,std::allocator<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__erase_unique<unsigned int>(mMap, &v4.var0);
}

- (void)makeTilesPerformSelector:(SEL)a3
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
    v4 = v4 & 0xFFFFFFFF00000000 | *(i + 4);
    (a3)(v4, [i[3] object], a4);
  }
}

@end