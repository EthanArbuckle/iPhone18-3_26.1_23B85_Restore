@interface USORedactedNode
- (USORedactedNode)initWithIndex:(int64_t)a3 usoGraph:(void *)a4;
- (unique_ptr<siri::ontology::UsoGraph,)usoGraph;
- (void)setUsoGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)a3 :ontology::UsoGraph;
@end

@implementation USORedactedNode

- (unique_ptr<siri::ontology::UsoGraph,)usoGraph
{
  ptr = self->mUsoGraph.__ptr_;
  self->mUsoGraph.__ptr_ = 0;
  *v2 = ptr;
  return self;
}

- (void)setUsoGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)a3 :ontology::UsoGraph
{
  v3 = *a3.__ptr_;
  *a3.__ptr_ = 0;
  std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](&self->mUsoGraph, v3);
}

- (USORedactedNode)initWithIndex:(int64_t)a3 usoGraph:(void *)a4
{
  v10.receiver = self;
  v10.super_class = USORedactedNode;
  v6 = [(USORedactedNode *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 2) = a3;
    v8 = *a4;
    *a4 = 0;
    std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](v6 + 1, v8);
  }

  return v7;
}

@end