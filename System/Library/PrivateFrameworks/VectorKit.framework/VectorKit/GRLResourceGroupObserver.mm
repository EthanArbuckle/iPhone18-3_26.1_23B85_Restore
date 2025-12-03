@interface GRLResourceGroupObserver
- (GRLResourceGroupObserver)initWithResourceProvider:(void *)provider;
- (id).cxx_construct;
- (void)clearProvider;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group;
@end

@implementation GRLResourceGroupObserver

- (id).cxx_construct
{
  *(self + 2) = 850045863;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 9) = 0;
  return self;
}

- (void)clearProvider
{
  std::mutex::lock((self + 16));
  *(self + 1) = 0;

  std::mutex::unlock((self + 16));
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group
{
  std::mutex::lock((self + 16));
  v4 = *(self + 1);
  if (v4)
  {
    grl::ResourceProvider::notifyObserversOfTileGroupChange(v4);
  }

  std::mutex::unlock((self + 16));
}

- (GRLResourceGroupObserver)initWithResourceProvider:(void *)provider
{
  v5.receiver = self;
  v5.super_class = GRLResourceGroupObserver;
  result = [(GRLResourceGroupObserver *)&v5 init];
  if (result)
  {
    *(result + 1) = provider;
  }

  return result;
}

@end