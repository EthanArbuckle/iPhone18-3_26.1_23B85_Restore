@interface TSCEPartialResultTreeEnumerator
- (TSCEPartialResultTreeEnumerator)initWithPartialResultTree:(id)tree;
- (id).cxx_construct;
- (id)nextResult;
@end

@implementation TSCEPartialResultTreeEnumerator

- (TSCEPartialResultTreeEnumerator)initWithPartialResultTree:(id)tree
{
  treeCopy = tree;
  v14.receiver = self;
  v14.super_class = TSCEPartialResultTreeEnumerator;
  v6 = [(TSCEPartialResultTreeEnumerator *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tree, tree);
    v13 = objc_msgSend_root(treeCopy, v8, v9, v10, v11);
    sub_2212E30F4(&v7->_inProgressStack.__begin_, &v13);
  }

  return v7;
}

- (id)nextResult
{
  p_lastResult = &self->_lastResult;
  lastResult = self->_lastResult;
  if (lastResult)
  {
    v8 = objc_msgSend_children(lastResult, a2, v2, v3, v4);
    v13 = objc_msgSend_count(v8, v9, v10, v11, v12);
    if (v13)
    {
      v17 = v13 - 1;
      do
      {
        v23 = objc_msgSend_objectAtIndexedSubscript_(v8, v14, v17, v15, v16);
        sub_2212E30F4(&self->_inProgressStack.__begin_, &v23);

        --v17;
      }

      while (v17 != -1);
    }

    v18 = *p_lastResult;
    *p_lastResult = 0;
  }

  var0 = self->_inProgressStack.var0;
  if (self->_inProgressStack.__begin_ == var0)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(var0 - 1);
    v21 = self->_inProgressStack.var0;

    self->_inProgressStack.var0 = v21 - 1;
  }

  objc_storeStrong(p_lastResult, v20);

  return v20;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end