@interface USOGraph
- (USOGraph)init;
- (USOGraph)initWithCoder:(id)a3;
- (USOGraph)initWithCppUsoGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)a3 :ontology::UsoGraph;
- (id)createIntNode:(id)a3;
- (id)createStringNode:(id)a3;
- (id)getRoot;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USOGraph

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [[USOSerializedGraph alloc] initWithUsoGraph:self->_usoGraph.__ptr_ withError:0];
  [v5 encodeObject:v4 forKey:@"usoGraph"];
}

- (USOGraph)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = USOGraph;
  v5 = [(USOGraph *)&v17 init];
  v6 = v5;
  if (v5)
  {
    siri::ontology::getSharedUsoVocabManager(v5);
    v8 = siri::ontology::getSharedUsoVocabManager(void)::inst;
    v7 = unk_1EBE27900;
    if (unk_1EBE27900)
    {
      atomic_fetch_add_explicit((unk_1EBE27900 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usoGraph"];
    v10 = v9;
    v14 = v8;
    v15 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      [v9 toCppUsoGraph:&v14 withError:0];
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    v16 = 0;
    std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](&v6->_usoGraph, v11);
    v12 = v16;
    v16 = 0;
    if (v12)
    {
      siri::ontology::UsoGraph::~UsoGraph(v12);
      MEMORY[0x1C68DE200]();
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  return v6;
}

- (id)getRoot
{
  v2 = [[USORootNode alloc] initWithCppRootNode:*(self->_usoGraph.__ptr_ + 11)];

  return v2;
}

- (id)createIntNode:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [v4 longLongValue];
    ptr = self->_usoGraph.__ptr_;
    siri::ontology::UsoGraph::createIntNode();
  }

  v6 = self->_usoGraph.__ptr_;
  siri::ontology::UsoGraph::createIntNode();
}

- (id)createStringNode:(id)a3
{
  v4 = a3;
  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, [v4 UTF8String]);
    ptr = self->_usoGraph.__ptr_;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v10;
    }

    v9 = 1;
    siri::ontology::UsoGraph::createStringNode();
  }

  v6 = self->_usoGraph.__ptr_;
  __p.__r_.__value_.__s.__data_[0] = 0;
  v9 = 0;
  siri::ontology::UsoGraph::createStringNode();
}

- (USOGraph)initWithCppUsoGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)a3 :ontology::UsoGraph
{
  v8.receiver = self;
  v8.super_class = USOGraph;
  v4 = [(USOGraph *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = *a3.__ptr_;
    *a3.__ptr_ = 0;
    std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](v4 + 1, v6);
  }

  return v5;
}

- (USOGraph)init
{
  v3.receiver = self;
  v3.super_class = USOGraph;
  if ([(USOGraph *)&v3 init])
  {
    operator new();
  }

  return 0;
}

@end