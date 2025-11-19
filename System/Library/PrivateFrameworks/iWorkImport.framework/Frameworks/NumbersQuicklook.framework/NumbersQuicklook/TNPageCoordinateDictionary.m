@interface TNPageCoordinateDictionary
- (TNPageCoordinateDictionary)init;
- (id).cxx_construct;
- (id)allObjects;
- (id)objectForPageCoordinate:(TSUCellCoord)a3;
- (void)dealloc;
- (void)removeAllObjects;
- (void)setObject:(id)a3 forPageCoordinate:(TSUCellCoord)a4;
@end

@implementation TNPageCoordinateDictionary

- (TNPageCoordinateDictionary)init
{
  v5.receiver = self;
  v5.super_class = TNPageCoordinateDictionary;
  v2 = [(TNPageCoordinateDictionary *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->_rwlock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwlock);
  v3.receiver = self;
  v3.super_class = TNPageCoordinateDictionary;
  [(TNPageCoordinateDictionary *)&v3 dealloc];
}

- (void)setObject:(id)a3 forPageCoordinate:(TSUCellCoord)a4
{
  v12 = a4;
  pthread_rwlock_wrlock(&self->_rwlock);
  p_pageCoordinateDictionary = &self->_pageCoordinateDictionary;
  if (a3)
  {
    v7 = sub_275F2B578(p_pageCoordinateDictionary, &v12);
    if (&self->_pageCoordinateDictionary.__tree_.__end_node_ == v7)
    {
      v8 = a3;
      v10 = v12;
      v11 = a3;
      v9 = a3;
      sub_275F2B600(&self->_pageCoordinateDictionary, &v10);
    }

    else
    {
      sub_275F2B370(v7 + 5, a3);
    }
  }

  else
  {
    sub_275F2B744(p_pageCoordinateDictionary, &v12);
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

- (id)objectForPageCoordinate:(TSUCellCoord)a3
{
  v7 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v4 = sub_275F2B578(&self->_pageCoordinateDictionary, &v7);
  if (&self->_pageCoordinateDictionary.__tree_.__end_node_ == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[5];
  }

  pthread_rwlock_unlock(&self->_rwlock);
  return v5;
}

- (void)removeAllObjects
{
  pthread_rwlock_wrlock(&self->_rwlock);
  sub_275F2BBC0(&self->_pageCoordinateDictionary, self->_pageCoordinateDictionary.__tree_.__end_node_.__left_);
  self->_pageCoordinateDictionary.__tree_.__end_node_.__left_ = 0;
  self->_pageCoordinateDictionary.__tree_.__size_ = 0;
  self->_pageCoordinateDictionary.__tree_.__begin_node_ = &self->_pageCoordinateDictionary.__tree_.__end_node_;

  pthread_rwlock_unlock(&self->_rwlock);
}

- (id)allObjects
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2);
  pthread_rwlock_rdlock(&self->_rwlock);
  begin_node = self->_pageCoordinateDictionary.__tree_.__begin_node_;
  if (begin_node != &self->_pageCoordinateDictionary.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[5].__left_;
      v7 = left;
      objc_msgSend_addObject_(v4, v8, left);

      isa = begin_node[1].__left_;
      if (isa)
      {
        do
        {
          v10 = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->super.isa == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != &self->_pageCoordinateDictionary.__tree_.__end_node_);
  }

  pthread_rwlock_unlock(&self->_rwlock);
  v12 = MEMORY[0x277CBEB98];

  return MEMORY[0x2821F9670](v12, sel_setWithSet_, v4);
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end