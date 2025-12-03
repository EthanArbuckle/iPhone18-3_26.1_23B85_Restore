@interface _UIRTree
- (CGRect)_frameForIndex:(unint64_t)index;
- (_UIRTree)init;
- (id).cxx_construct;
- (id)allIndexes;
- (id)description;
- (uint64_t)enumerateFramesWithBlock:(uint64_t)result;
- (void)insertFrame:(CGFloat)frame forIndex:(CGFloat)index;
@end

@implementation _UIRTree

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (_UIRTree)init
{
  v3.receiver = self;
  v3.super_class = _UIRTree;
  if ([(_UIRTree *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (id)description
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__32;
  v15 = __Block_byref_object_dispose__32;
  v16 = [@"{" mutableCopy];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __23___UIRTree_description__block_invoke;
  v9[3] = &unk_1E70FB478;
  v9[4] = v10;
  v9[5] = &v11;
  [(_UIRTree *)self enumerateFramesWithBlock:v9];
  [v12[5] appendString:@"}"];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  allIndexes = [(_UIRTree *)&self->super.isa allIndexes];
  v7 = [v3 stringWithFormat:@"<%@ %p indexes=%@ frames=%@>", v5, self, allIndexes, v12[5]];;

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (uint64_t)enumerateFramesWithBlock:(uint64_t)result
{
  if (result)
  {
    v4 = 0;
    v2 = *(result + 8);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __37___UIRTree_enumerateFramesWithBlock___block_invoke;
    v3[3] = &unk_1E70FB4A0;
    v3[4] = a2;
    return _UIRTreeContainerNode<unsigned long>::enumerate(v2, &v4, v3);
  }

  return result;
}

- (id)allIndexes
{
  if (self)
  {
    selfCopy = self;
    self = self[5];
    if (!self)
    {
      v3 = selfCopy[3];
      if (v3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        self = objc_alloc_init(MEMORY[0x1E696AC90]);
      }

      else
      {
        self = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v3, selfCopy[4]}];
      }
    }

    v1 = vars8;
  }

  return self;
}

- (void)insertFrame:(CGFloat)frame forIndex:(CGFloat)index
{
  if (result)
  {
    v7 = result;
    if (CGRectIsNull(*&frame))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_insertFrame_forIndex_ object:v7 file:@"_UIRTree.mm" lineNumber:603 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsNull(frame)"}];
    }

    v29.origin.x = frame;
    v29.size.width = a5;
    v29.origin.y = index;
    v29.size.height = a6;
    if (CGRectIsInfinite(v29))
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_insertFrame_forIndex_ object:v7 file:@"_UIRTree.mm" lineNumber:604 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsInfinite(frame)"}];
    }

    v9.f64[0] = frame;
    v8.f64[0] = a5;
    v9.f64[1] = index;
    v8.f64[1] = a6;
    v10 = vaddq_f64(v9, vminnmq_f64(v8, 0));
    v11 = vabsq_f64(v8);
    v12 = v7[1];
    v13 = v7[2];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v28.f64[0] = v12;
      *&v28.f64[1] = v13;
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v28 = v7[1];
    }

    _UIRTreeContainerNode<unsigned long>::addChild(&v27, v12, a2, &v28, v10, v11);
    if (*&v28.f64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v28.f64[1]);
    }

    v14 = v7[2];
    *(v7 + 1) = v27;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    result = v7[5];
    v15 = v7[3];
    if (result)
    {
      v16 = v7 + 4;
      v17 = v7[4];
      if (v17 + v15 != a2)
      {
LABEL_17:
        result = [result addIndex:a2];
        if (v7[3] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v7[3] = 0x7FFFFFFFFFFFFFFFLL;
          v7[4] = 0;
        }

        return result;
      }
    }

    else
    {
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7[3] = a2;
        v7[4] = 1;
        return result;
      }

      v16 = v7 + 4;
      v17 = v7[4];
      if (v17 + v15 != a2)
      {
        v18 = objc_alloc_init(MEMORY[0x1E696AD50]);
        v19 = v7[5];
        v7[5] = v18;

        v20 = v7[3];
        result = v7[5];
        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [result addIndexesInRange:{v20, v7[4]}];
          result = v7[5];
        }

        goto LABEL_17;
      }
    }

    *v16 = v17 + 1;
  }

  return result;
}

- (CGRect)_frameForIndex:(unint64_t)index
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5012000000;
  v16 = __Block_byref_object_copy__37;
  v17 = __Block_byref_object_dispose__38;
  v18 = "";
  v3 = *(MEMORY[0x1E695F050] + 16);
  v19 = *MEMORY[0x1E695F050];
  v20 = v3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __27___UIRTree__frameForIndex___block_invoke;
  v12[3] = &unk_1E70FB4C8;
  v12[4] = &v13;
  v12[5] = index;
  [(_UIRTree *)self enumerateFramesWithBlock:v12];
  v4 = v14[6];
  v5 = v14[7];
  v6 = v14[8];
  v7 = v14[9];
  _Block_object_dispose(&v13, 8);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

@end