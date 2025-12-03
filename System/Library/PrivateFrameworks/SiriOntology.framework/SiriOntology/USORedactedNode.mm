@interface USORedactedNode
- (USORedactedNode)initWithIndex:(int64_t)index usoGraph:(void *)graph;
- (unique_ptr<siri::ontology::UsoGraph,)usoGraph;
- (void)setUsoGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)siri :ontology::UsoGraph;
@end

@implementation USORedactedNode

- (unique_ptr<siri::ontology::UsoGraph,)usoGraph
{
  ptr = self->mUsoGraph.__ptr_;
  self->mUsoGraph.__ptr_ = 0;
  *v2 = ptr;
  return self;
}

- (void)setUsoGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)siri :ontology::UsoGraph
{
  v3 = *siri.__ptr_;
  *siri.__ptr_ = 0;
  std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](&self->mUsoGraph, v3);
}

- (USORedactedNode)initWithIndex:(int64_t)index usoGraph:(void *)graph
{
  v10.receiver = self;
  v10.super_class = USORedactedNode;
  v6 = [(USORedactedNode *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 2) = index;
    v8 = *graph;
    *graph = 0;
    std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](v6 + 1, v8);
  }

  return v7;
}

@end