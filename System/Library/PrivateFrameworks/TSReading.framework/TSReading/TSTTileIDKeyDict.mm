@interface TSTTileIDKeyDict
- (TSTTileIDKeyDict)initWithOwner:(id)owner;
- (id)tileForID:(id)d;
- (void)applyFunction:(void *)function withState:(void *)state;
- (void)dealloc;
- (void)makeTilesPerformSelector:(SEL)selector;
- (void)removeTileForID:(id)d;
- (void)setTile:(id)tile forID:(id)d;
@end

@implementation TSTTileIDKeyDict

- (TSTTileIDKeyDict)initWithOwner:(id)owner
{
  v4.receiver = self;
  v4.super_class = TSTTileIDKeyDict;
  if ([(TSPContainedObject *)&v4 initWithOwner:owner])
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

- (id)tileForID:(id)d
{
  mMap = self->mMap;
  dCopy = d;
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(mMap, &dCopy.var0);
  if (result)
  {
    return [*(result + 3) object];
  }

  return result;
}

- (void)setTile:(id)tile forID:(id)d
{
  mMap = self->mMap;
  v6 = [TSPLazyReference referenceForObject:tile];
  v7 = v6;
  dCopy = d;
  v10 = v6;
  v8 = v6;
  std::__hash_table<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,TSTIntHasher,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::equal_to<unsigned int>,TSTIntHasher,true>,std::allocator<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,SFUtility::ObjcSharedPtr<NSObject>>>(mMap, &dCopy.var0);
}

- (void)removeTileForID:(id)d
{
  mMap = self->mMap;
  dCopy = d;
  std::__hash_table<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,TSTIntHasher,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::equal_to<unsigned int>,TSTIntHasher,true>,std::allocator<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__erase_unique<unsigned int>(mMap, &dCopy.var0);
}

- (void)makeTilesPerformSelector:(SEL)selector
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
    v4 = v4 & 0xFFFFFFFF00000000 | *(i + 4);
    (function)(v4, [i[3] object], state);
  }
}

@end