@interface USORedactedData
- (USORedactedData)initWithRedactedGraph:(void *)a3 redactedList:(id)a4;
- (unique_ptr<siri::ontology::UsoGraph,)redactedGraph;
- (void)setRedactedGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)a3 :ontology::UsoGraph;
@end

@implementation USORedactedData

- (unique_ptr<siri::ontology::UsoGraph,)redactedGraph
{
  ptr = self->mRedactedGraph.__ptr_;
  self->mRedactedGraph.__ptr_ = 0;
  *v2 = ptr;
  return self;
}

- (void)setRedactedGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)a3 :ontology::UsoGraph
{
  v3 = *a3.__ptr_;
  *a3.__ptr_ = 0;
  std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](&self->mRedactedGraph, v3);
}

- (USORedactedData)initWithRedactedGraph:(void *)a3 redactedList:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = USORedactedData;
  v8 = [(USORedactedData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = *a3;
    *a3 = 0;
    std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](v8 + 1, v10);
    objc_storeStrong(&v9->_redactedList, a4);
  }

  return v9;
}

@end