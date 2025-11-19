@interface TSWPStorageBroadcaster
- (id).cxx_construct;
- (void)addObserver:(id)a3;
- (void)broadcastStorage:(id)a3 didChangeRange:(_NSRange)a4 delta:(int64_t)a5 broadcastKind:(int)a6;
- (void)dealloc;
- (void)removeAllObservers;
- (void)removeObserver:(id)a3;
@end

@implementation TSWPStorageBroadcaster

- (void)dealloc
{
  if (self->_observers.__tree_.__size_)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorageBroadcaster dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageBroadcaster.mm"), 22, @"storage broadcaster has listeners that should have been removed"}];
  }

  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&self->_observers, self->_observers.__tree_.__end_node_.__left_);
  self->_observers.__tree_.__begin_node_ = &self->_observers.__tree_.__end_node_;
  self->_observers.__tree_.__size_ = 0;
  self->_observers.__tree_.__end_node_.__left_ = 0;
  v5.receiver = self;
  v5.super_class = TSWPStorageBroadcaster;
  [(TSWPStorageBroadcaster *)&v5 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (a3)
  {
    objc_sync_enter(self);
    std::__tree<objc_object  {objcproto19TSWPStorageObserver}*>::__emplace_unique_key_args<objc_object  {objcproto19TSWPStorageObserver},objc_object  {objcproto19TSWPStorageObserver} const&>(&self->_observers, &v4);
    objc_sync_exit(self);
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (a3)
  {
    objc_sync_enter(self);
    std::__tree<objc_object  {objcproto19TSWPStorageObserver}*>::__erase_unique<objc_object  {objcproto19TSWPStorageObserver}>(&self->_observers, &v4);
    objc_sync_exit(self);
  }
}

- (void)removeAllObservers
{
  objc_sync_enter(self);
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&self->_observers, self->_observers.__tree_.__end_node_.__left_);
  self->_observers.__tree_.__begin_node_ = &self->_observers.__tree_.__end_node_;
  self->_observers.__tree_.__size_ = 0;
  self->_observers.__tree_.__end_node_.__left_ = 0;

  objc_sync_exit(self);
}

- (void)broadcastStorage:(id)a3 didChangeRange:(_NSRange)a4 delta:(int64_t)a5 broadcastKind:(int)a6
{
  v6 = *&a6;
  length = a4.length;
  location = a4.location;
  objc_sync_enter(self);
  begin_node = self->_observers.__tree_.__begin_node_;
  if (begin_node != &self->_observers.__tree_.__end_node_)
  {
    do
    {
      [(objc_class *)begin_node[1].super.isa storage:a3 didChangeRange:location delta:length broadcastKind:a5, v6];
      isa = begin_node->_observers.__tree_.__begin_node_;
      if (isa)
      {
        do
        {
          left = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          left = begin_node->_observers.__tree_.__end_node_.__left_;
          v15 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v15);
      }

      begin_node = left;
    }

    while (left != &self->_observers.__tree_.__end_node_);
  }

  objc_sync_exit(self);
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end