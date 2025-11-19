@interface GRLResourceGroupObserver
- (GRLResourceGroupObserver)initWithResourceProvider:(void *)a3;
- (id).cxx_construct;
- (void)clearProvider;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3;
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

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3
{
  std::mutex::lock((self + 16));
  v4 = *(self + 1);
  if (v4)
  {
    grl::ResourceProvider::notifyObserversOfTileGroupChange(v4);
  }

  std::mutex::unlock((self + 16));
}

- (GRLResourceGroupObserver)initWithResourceProvider:(void *)a3
{
  v5.receiver = self;
  v5.super_class = GRLResourceGroupObserver;
  result = [(GRLResourceGroupObserver *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

@end