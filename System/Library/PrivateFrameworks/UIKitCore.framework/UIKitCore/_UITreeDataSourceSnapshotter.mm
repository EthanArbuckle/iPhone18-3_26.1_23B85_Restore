@interface _UITreeDataSourceSnapshotter
- (BOOL)_isNodeIndexVisible:(int64_t)a3;
- (BOOL)_shouldSplitNodeAtInsertionIndex:(int64_t)a3;
- (BOOL)hasChildrenForParentAtIndex:(int64_t)a3;
- (BOOL)indexIsExpanded:(int64_t)a3;
- (BOOL)indexIsVisible:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (_NSRange)appendChildItemsWithCount:(int64_t)a3;
- (_NSRange)appendChildItemsWithCount:(int64_t)a3 toParentIndex:(int64_t)a4;
- (_UIOutlineNode)_nextNodeForNodeIndex:(SEL)a3;
- (_UIOutlineNode)_nodeForGlobalIndex:(int64_t)a3;
- (_UITreeDataSourceSnapshotter)init;
- (_UITreeDataSourceSnapshotter)initWithNodes:()vector<_UIOutlineNode count:(std:(int64_t)a4 :(id)a5 allocator<_UIOutlineNode>> *)a3 expandedIndexes:;
- (id).cxx_construct;
- (id)_allIndexes;
- (id)_childrenForParent:(int64_t)a3;
- (id)_deleteChildNodesForParentNodeIndex:(int64_t)a3;
- (id)_snapshotterByNormalizingRangeOffsets;
- (id)_snapshotterByShiftingIndexesByCount:(int64_t)a3;
- (id)childrenForParentAtIndex:(int64_t)a3 recursive:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)indexesForLevel:(int64_t)a3;
- (id)snapshotterRepresentingSubtreeForIndex:(int64_t)a3 includingParent:(BOOL)a4;
- (id)visibleIndexes;
- (id)visualDescription;
- (int64_t)_binarySearchForGlobalIndex:(int64_t)a3 startIndex:(int64_t)a4 endIndex:(int64_t)a5;
- (int64_t)_childNodeIndexForGloalIndex:(int64_t)a3;
- (int64_t)_indexForInsertingAfterIndex:(int64_t)a3;
- (int64_t)_insertCount:(int64_t)a3 afterIndex:(int64_t)a4;
- (int64_t)_nodeIndexForGlobalIndex:(int64_t)a3;
- (int64_t)_parentNodeIndexForNodeIndex:(int64_t)a3;
- (int64_t)insertCount:(int64_t)a3 afterIndex:(int64_t)a4 insertionMode:(int64_t)a5;
- (int64_t)insertSubtreeFromSnapshotter:(id)a3 afterIndex:(int64_t)a4;
- (int64_t)parentForChildAtIndex:(int64_t)a3;
- (void)_insertCount:(int64_t)a3 beforeIndex:(int64_t)a4;
- (void)_insertSubtreeFromSnapshotter:(id)a3 atIndex:(int64_t)a4 adjustedIndex:(int64_t)a5;
- (void)_recomputeExpandedIndexesForDeletedIndexes:(id)a3;
- (void)_recomputeExpandedIndexesForInsertedRange:(_NSRange)a3;
- (void)_recomputeRangeOffsetForGlobalIndex:(int64_t)a3;
- (void)_splitNodeAtInsertionIndex:(int64_t)a3;
- (void)collapseIndexes:(id)a3;
- (void)deleteIndexes:(id)a3 orphanDisposition:(int64_t)a4;
- (void)expandIndexes:(id)a3;
- (void)insertSubtreeFromSnapshotter:(id)a3 beforeIndex:(int64_t)a4;
- (void)replaceChildItemsFromSnapshotter:(id)a3 forParentIndex:(int64_t)a4;
@end

@implementation _UITreeDataSourceSnapshotter

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (_UITreeDataSourceSnapshotter)init
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  v3 = objc_alloc_init(MEMORY[0x1E696AC90]);
  v4 = [(_UITreeDataSourceSnapshotter *)self initWithNodes:&__p count:0 expandedIndexes:v3];

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return v4;
}

- (id)visibleIndexes
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  if (self->_nodes.__end_ != self->_nodes.__begin_)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if ([(_UITreeDataSourceSnapshotter *)self _isNodeIndexVisible:v5])
      {
        [v3 addIndexesInRange:{self->_nodes.__begin_[v4].var0.location, self->_nodes.__begin_[v4].var0.length}];
      }

      ++v5;
      ++v4;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - self->_nodes.__begin_) >> 3));
  }

  return v3;
}

- (_UITreeDataSourceSnapshotter)initWithNodes:()vector<_UIOutlineNode count:(std:(int64_t)a4 :(id)a5 allocator<_UIOutlineNode>> *)a3 expandedIndexes:
{
  v8 = a5;
  v28.receiver = self;
  v28.super_class = _UITreeDataSourceSnapshotter;
  v9 = [(_UITreeDataSourceSnapshotter *)&v28 init];
  v10 = v9;
  if (v9)
  {
    p_nodes = &v9->_nodes;
    if (&v9->_nodes != a3)
    {
      begin = a3->__begin_;
      end = a3->__end_;
      v14 = end - a3->__begin_;
      cap = v9->_nodes.__cap_;
      v16 = v9->_nodes.__begin_;
      if (cap - v16 < v14)
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
        if (v16)
        {
          v9->_nodes.__end_ = v16;
          operator delete(v16);
          cap = 0;
          p_nodes->__begin_ = 0;
          p_nodes->__end_ = 0;
          p_nodes->__cap_ = 0;
        }

        if (v17 <= 0xAAAAAAAAAAAAAAALL)
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * (cap >> 3);
          v19 = 2 * v18;
          if (2 * v18 <= v17)
          {
            v19 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
          }

          if (v18 >= 0x555555555555555)
          {
            v20 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v20 = v19;
          }

          if (v20 <= 0xAAAAAAAAAAAAAAALL)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<_UIOutlineNode>>(v20);
          }
        }

        std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
      }

      v21 = v9->_nodes.__end_;
      v22 = v21 - v16;
      if (v21 - v16 >= v14)
      {
        if (end != begin)
        {
          memmove(v16, begin, v14);
        }

        v24 = (v16 + v14);
      }

      else
      {
        v23 = (begin + v22);
        if (v21 != v16)
        {
          memmove(v9->_nodes.__begin_, begin, v22);
          v21 = v10->_nodes.__end_;
        }

        if (end != v23)
        {
          memmove(v21, v23, end - v23);
        }

        v24 = (v21 + end - v23);
      }

      v10->_nodes.__end_ = v24;
    }

    v10->_count = a4;
    v25 = [v8 mutableCopy];
    expandedIndexes = v10->_expandedIndexes;
    v10->_expandedIndexes = v25;
  }

  return v10;
}

- (_NSRange)appendChildItemsWithCount:(int64_t)a3
{
  if (a3 <= 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
  }

  v5 = [(_UITreeDataSourceSnapshotter *)self count];
  *&v10 = v5;
  *(&v10 + 1) = a3;
  v11 = 0;
  std::vector<_UIOutlineNode>::push_back[abi:nn200100](&self->_nodes, &v10);
  [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ a3];
  v6 = v5;
  v7 = a3;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)appendChildItemsWithCount:(int64_t)a3 toParentIndex:(int64_t)a4
{
  if (a3 <= 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
  }

  if ([(_UITreeDataSourceSnapshotter *)self count]<= a4)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"parentIndex < self.count"}];
  }

  v8 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a4];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"parentNodeIndex != NSNotFound"}];
  }

  v9 = self->_nodes.__begin_[v8].var1 + 1;
  v17 = a4 + 1;
  v18 = a3;
  v19 = v9;
  if ([(_UITreeDataSourceSnapshotter *)self _shouldSplitNodeAtInsertionIndex:a4])
  {
    [(_UITreeDataSourceSnapshotter *)self _splitNodeAtInsertionIndex:a4];
    begin = self->_nodes.__begin_;
  }

  else
  {
    v11 = [(_UITreeDataSourceSnapshotter *)self _childNodeIndexForGloalIndex:a4];
    begin = self->_nodes.__begin_;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      begin[v11].var0.length += a3;
      goto LABEL_12;
    }
  }

  std::vector<_UIOutlineNode>::insert(&self->_nodes, &begin[v8 + 1], &v17);
LABEL_12:
  [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ a3];
  [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:a4];
  [(_UITreeDataSourceSnapshotter *)self _recomputeExpandedIndexesForInsertedRange:v17, v18];
  v12 = v17;
  v13 = v18;
  result.length = v13;
  result.location = v12;
  return result;
}

- (int64_t)insertCount:(int64_t)a3 afterIndex:(int64_t)a4 insertionMode:(int64_t)a5
{
  if (a5 >= 2)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"insertAfterChildren || insertAbsolute"}];
  }

  if (a5 == 1)
  {
    if ([(_UITreeDataSourceSnapshotter *)self hasChildrenForParentAtIndex:a4])
    {
      v9 = a4 + 1;
      if (a4 + 1 != [(_UITreeDataSourceSnapshotter *)self count])
      {
        [(_UITreeDataSourceSnapshotter *)self insertCount:a3 beforeIndex:a4 + 1];
        return v9;
      }
    }
  }

  else if (a5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(_UITreeDataSourceSnapshotter *)self _insertCount:a3 afterIndex:a4];
}

- (void)deleteIndexes:(id)a3 orphanDisposition:(int64_t)a4
{
  v7 = a3;
  if ([v7 count])
  {
    v8 = a4 == 0;
    v9 = a4 == 1;
    if (a4 >= 2)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"deleteOrphans || reparentOrphans"}];
    }

    v10 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:v7];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64___UITreeDataSourceSnapshotter_deleteIndexes_orphanDisposition___block_invoke;
    v14[3] = &unk_1E712CF00;
    v14[4] = self;
    v16 = a2;
    v17 = v8;
    v11 = v10;
    v15 = v11;
    v18 = v9;
    [v7 enumerateIndexesWithOptions:2 usingBlock:v14];
    if (self->_count < 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"_count >= 0"}];
    }

    [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:0x7FFFFFFFFFFFFFFFLL];
    [(_UITreeDataSourceSnapshotter *)self _recomputeExpandedIndexesForDeletedIndexes:v11];
  }
}

- (id)childrenForParentAtIndex:(int64_t)a3 recursive:(BOOL)a4
{
  v4 = a4;
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__253;
  v17 = __Block_byref_object_dispose__253;
  v18 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v8 = [(_UITreeDataSourceSnapshotter *)self _childrenForParent:a3];
  [v14[5] addIndexes:v8];
  if (v4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67___UITreeDataSourceSnapshotter_childrenForParentAtIndex_recursive___block_invoke;
    v12[3] = &unk_1E712CF28;
    v12[4] = self;
    v12[5] = &v13;
    [v8 enumerateIndexesUsingBlock:v12];
  }

  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (int64_t)parentForChildAtIndex:(int64_t)a3
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"childGlobalIndex < self.count"}];
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a3];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = &self->_nodes.__begin_[v6];
    v9 = v6 + 1;
    v10 = v8;
    while (--v9 >= 1)
    {
      v11 = v10 - 1;
      var1 = v10[-1].var1;
      --v10;
      if (var1 == v8->var1 - 1)
      {
        return v11->var0.location + v11->var0.length - 1;
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (BOOL)indexIsExpanded:(int64_t)a3
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:289 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  expandedIndexes = self->_expandedIndexes;

  return [(NSMutableIndexSet *)expandedIndexes containsIndex:a3];
}

- (BOOL)indexIsVisible:(int64_t)a3
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"nodeIndex != NSNotFound"}];
  }

  return [(_UITreeDataSourceSnapshotter *)self _isNodeIndexVisible:v6];
}

- (void)expandIndexes:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    if ([v6 lastIndex] >= self->_count)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"lastIndex < _count"}];
    }

    [(NSMutableIndexSet *)self->_expandedIndexes addIndexes:v6];
  }
}

- (void)collapseIndexes:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    if ([v6 lastIndex] >= self->_count)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"lastIndex < _count"}];
    }

    [(NSMutableIndexSet *)self->_expandedIndexes removeIndexes:v6];
  }
}

- (id)snapshotterRepresentingSubtreeForIndex:(int64_t)a3 includingParent:(BOOL)a4
{
  v4 = a4;
  if (self->_count <= a3)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:328 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < _count"}];
  }

  v8 = [(_UITreeDataSourceSnapshotter *)self childrenForParentAtIndex:a3 recursive:1];
  if ([v8 count] || v4)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    if (v4)
    {
      v37 = a3;
      v38 = xmmword_18A6507C0;
      std::vector<_UIOutlineNode>::push_back[abi:nn200100](&v39, &v37);
      if ([(_UITreeDataSourceSnapshotter *)self indexIsExpanded:a3])
      {
        [v10 addIndex:a3];
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    if ([v8 count])
    {
      v33 = v10;
      begin = self->_nodes.__begin_;
      end = self->_nodes.__end_;
      v14 = [v8 firstIndex];
      v15 = [v8 lastIndex];
      v16 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:v14];
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = [MEMORY[0x1E696AAA8] currentHandler];
        [v32 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"firstChildNodeIndex != NSNotFound"}];
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      v18 = v17 - v16;
      if (v17 > v16)
      {
        v19 = v4;
        v20 = v16;
        v21 = v19 - self->_nodes.__begin_[v16].var1;
        do
        {
          v22 = &self->_nodes.__begin_[v20];
          location = v22->var0.location;
          if (v22->var0.location > v15)
          {
            break;
          }

          length = v22->var0.length;
          v25 = v21 + v22->var1;
          v37 = location;
          *&v38 = length;
          *(&v38 + 1) = v25;
          std::vector<_UIOutlineNode>::push_back[abi:nn200100](&v39, &v37);
          v11 += length;
          ++v20;
          --v18;
        }

        while (v18);
      }

      v10 = v33;
      if ([(NSMutableIndexSet *)self->_expandedIndexes count])
      {
        v26 = [(NSMutableIndexSet *)self->_expandedIndexes indexesInRange:v14 options:v15 - v14 + 1 passingTest:0, &__block_literal_global_745];
        [v33 addIndexes:v26];
      }
    }

    v27 = [_UITreeDataSourceSnapshotter alloc];
    __p = 0;
    v35 = 0;
    v36 = 0;
    v28 = v39;
    if (v40 != v39)
    {
      v29 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3);
      if (v29 < 0xAAAAAAAAAAAAAABLL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<_UIOutlineNode>>(v29);
      }

      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v9 = [(_UITreeDataSourceSnapshotter *)v27 initWithNodes:&__p count:v11 expandedIndexes:v10];
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    v9 = objc_alloc_init(_UITreeDataSourceSnapshotter);
  }

  return v9;
}

- (void)replaceChildItemsFromSnapshotter:(id)a3 forParentIndex:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:406 description:{@"Invalid parameter not satisfying: %@", @"snapshotter"}];
  }

  if ([(_UITreeDataSourceSnapshotter *)self count]<= a4)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:407 description:{@"Invalid parameter not satisfying: %@", @"parentIndex < self.count"}];
  }

  v22 = [(_UITreeDataSourceSnapshotter *)self childrenForParentAtIndex:a4 recursive:1];
  [(_UITreeDataSourceSnapshotter *)self deleteIndexes:v22];
  v8 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a4];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"parentNodeIndex != NSNotFound"}];
  }

  var1 = self->_nodes.__begin_[v8].var1;
  if ([(_UITreeDataSourceSnapshotter *)self _shouldSplitNodeAtInsertionIndex:a4])
  {
    [(_UITreeDataSourceSnapshotter *)self _splitNodeAtInsertionIndex:a4];
  }

  v10 = a4 + 1;
  v11 = v7[1];
  v12 = v7[2];
  if (v11 != v12)
  {
    v13 = var1 + 1;
    v14 = 24 * v8 + 24;
    v15 = v10;
    do
    {
      v16 = *(v11 + 8);
      v17 = v13 + *(v11 + 16);
      v24[0] = v15;
      v24[1] = v16;
      v24[2] = v17;
      std::vector<_UIOutlineNode>::insert(&self->_nodes, self->_nodes.__begin_ + v14, v24);
      v15 += v16;
      v11 += 24;
      v14 += 24;
    }

    while (v11 != v12);
  }

  self->_count += [v7 count];
  [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:0x7FFFFFFFFFFFFFFFLL];
  -[_UITreeDataSourceSnapshotter _recomputeExpandedIndexesForInsertedRange:](self, "_recomputeExpandedIndexesForInsertedRange:", v10, [v7 count]);
  v18 = [v7 expandedIndexes];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80___UITreeDataSourceSnapshotter_replaceChildItemsFromSnapshotter_forParentIndex___block_invoke;
  v23[3] = &unk_1E710E220;
  v23[4] = self;
  v23[5] = v10;
  [v18 enumerateIndexesUsingBlock:v23];
}

- (void)insertSubtreeFromSnapshotter:(id)a3 beforeIndex:(int64_t)a4
{
  v8 = a3;
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:458 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < self.count"}];
  }

  if ([v8 count])
  {
    [(_UITreeDataSourceSnapshotter *)self _insertSubtreeFromSnapshotter:v8 atIndex:a4 adjustedIndex:a4];
  }
}

- (int64_t)insertSubtreeFromSnapshotter:(id)a3 afterIndex:(int64_t)a4
{
  v7 = a3;
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a4)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:466 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < self.count"}];
  }

  if ([v7 count])
  {
    v8 = [(_UITreeDataSourceSnapshotter *)self _indexForInsertingAfterIndex:a4];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"adjustedDestinationIndex != NSNotFound"}];
    }

    [(_UITreeDataSourceSnapshotter *)self _insertSubtreeFromSnapshotter:v7 atIndex:a4 adjustedIndex:v8];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)indexesForLevel:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD50] indexSet];
  begin = self->_nodes.__begin_;
  end = self->_nodes.__end_;
  if (end != begin)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (begin[v8].var1 == a3)
      {
        [v5 addIndexesInRange:{begin[v8].var0.location, begin[v8].var0.length}];
        begin = self->_nodes.__begin_;
        end = self->_nodes.__end_;
      }

      ++v9;
      ++v8;
    }

    while (v9 < 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3));
  }

  return v5;
}

- (BOOL)hasChildrenForParentAtIndex:(int64_t)a3
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:513 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  if ([(_UITreeDataSourceSnapshotter *)self isFlat])
  {
    return 0;
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:521 description:{@"Invalid parameter not satisfying: %@", @"nodeIndex != NSNotFound"}];
  }

  begin = self->_nodes.__begin_;
  if (v6 + 1 >= 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3))
  {
    return 0;
  }

  v8 = &begin[v6];
  return v8->var0.location + v8->var0.length - 1 == a3 && begin[v6 + 1].var1 > v8->var1;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UITreeDataSourceSnapshotter count](self, "count")}];
  v7 = [v3 initWithFormat:@"<%@ %p: count=%@; expandedIndexes=%@>", v5, self, v6, self->_expandedIndexes];

  return v7;
}

- (id)visualDescription
{
  v2 = self;
  v3 = MEMORY[0x1E696AD60];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UITreeDataSourceSnapshotter count](self, "count")}];
  v23 = [v3 stringWithFormat:@"count=%@\n", v4];

  begin = v2->_nodes.__begin_;
  if (v2->_nodes.__end_ != begin)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = &begin[v6];
      v24 = [&stru_1EFB14550 stringByPaddingToLength:2 * begin[v6].var1 withString:@" " startingAtIndex:0];
      location = v8->var0.location;
      p_length = &v8->var0.length;
      length = v8->var0.length;
      v10 = p_length[1];
      v13 = [(NSMutableIndexSet *)v2->_expandedIndexes containsIndex:location];
      v14 = v2;
      v15 = @"-";
      if (v13)
      {
        v15 = @"+";
      }

      v25 = v15;
      v16 = MEMORY[0x1E696AEC0];
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length];
      v21 = [v16 stringWithFormat:@"%@%@[%@]%@: {%@, %@}\n", v24, v25, v17, v18, v19, v20];

      [v23 appendString:v21];
      ++v7;
      v2 = v14;
      begin = v14->_nodes.__begin_;
      ++v6;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((v14->_nodes.__end_ - begin) >> 3));
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v11 = 0;
  v12 = 0;
  __p = 0;
  begin = self->_nodes.__begin_;
  end = self->_nodes.__end_;
  if (end != begin)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    if (v7 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_UIOutlineNode>>(v7);
    }

    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
  }

  v8 = [v4 initWithNodes:&__p count:self->_count expandedIndexes:self->_expandedIndexes];
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v9 = 1;
    }

    else
    {
      v6 = v4;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (count = self->_count, count == [(_UITreeDataSourceSnapshotter *)v6 count]) && [(NSMutableIndexSet *)self->_expandedIndexes isEqualToIndexSet:v6->_expandedIndexes])
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v8 = v19 == 0x7FFFFFFFFFFFFFFFLL || v18 == 0x7FFFFFFFFFFFFFFFLL;
          v9 = v8;
          if (v8)
          {
            break;
          }

          [(_UITreeDataSourceSnapshotter *)self _nextNodeForNodeIndex:&v19];
          [(_UITreeDataSourceSnapshotter *)v6 _nextNodeForNodeIndex:&v18];
          v10 = v15 == v12 && v16 == v13;
        }

        while (v10 && v17 == v14);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_childrenForParent:(int64_t)a3
{
  v6 = [MEMORY[0x1E696AD50] indexSet];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    begin = self->_nodes.__begin_;
    end = self->_nodes.__end_;
    while (begin != end)
    {
      if (!begin->var1)
      {
        [v6 addIndexesInRange:{begin->var0.location, begin->var0.length}];
      }

      ++begin;
    }
  }

  else
  {
    if ([(_UITreeDataSourceSnapshotter *)self count]<= a3)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:623 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
    }

    v9 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a3];
    v10 = self->_nodes.__begin_;
    v11 = &v10[v9];
    if (v11->var0.location + v11->var0.length - 1 == a3)
    {
      v12 = v9 + 1;
      v13 = self->_nodes.__end_;
      if (v9 + 1 < 0xAAAAAAAAAAAAAAABLL * ((v13 - v10) >> 3))
      {
        v14 = v9;
        do
        {
          var1 = v10[v14 + 1].var1;
          v16 = v11->var1;
          if (var1 == v16 + 1)
          {
            [v6 addIndexesInRange:{v10[v14 + 1].var0.location, v10[v14 + 1].var0.length}];
            v10 = self->_nodes.__begin_;
            v13 = self->_nodes.__end_;
          }

          else if (var1 <= v16)
          {
            break;
          }

          ++v12;
          ++v14;
        }

        while (v12 < 0xAAAAAAAAAAAAAAABLL * ((v13 - v10) >> 3));
      }
    }
  }

  return v6;
}

- (int64_t)_nodeIndexForGlobalIndex:(int64_t)a3
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:642 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  v6 = 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - self->_nodes.__begin_) >> 3);

  return [(_UITreeDataSourceSnapshotter *)self _binarySearchForGlobalIndex:a3 startIndex:0 endIndex:v6];
}

- (int64_t)_binarySearchForGlobalIndex:(int64_t)a3 startIndex:(int64_t)a4 endIndex:(int64_t)a5
{
  if (a4 > a5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = (a5 + a4) / 2;
  v7 = &self->_nodes.__begin_[result];
  location = v7->var0.location;
  length = v7->var0.length;
  if (a3 < location || a3 - location >= length)
  {
    if (a4 == a5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return [_UITreeDataSourceSnapshotter _binarySearchForGlobalIndex:"_binarySearchForGlobalIndex:startIndex:endIndex:" startIndex:? endIndex:?];
  }

  return result;
}

- (_UIOutlineNode)_nodeForGlobalIndex:(int64_t)a3
{
  v5 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:669 description:{@"Invalid parameter not satisfying: %@", @"nodeIndex != NSNotFound"}];
  }

  return &self->_nodes.__begin_[v5];
}

- (BOOL)_isNodeIndexVisible:(int64_t)a3
{
  if (0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - self->_nodes.__begin_) >> 3) <= a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:678 description:{@"Invalid parameter not satisfying: %@", @"nodeIndex < _nodes.size()"}];
  }

  v5 = [(_UITreeDataSourceSnapshotter *)self _parentNodeIndexForNodeIndex:a3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    for (i = v5; i != 0x7FFFFFFFFFFFFFFFLL; i = [(_UITreeDataSourceSnapshotter *)self _parentNodeIndexForNodeIndex:i])
    {
      v6 = [(NSMutableIndexSet *)self->_expandedIndexes containsIndex:self->_nodes.__begin_[i].var0.location + self->_nodes.__begin_[i].var0.length - 1];
      if (!v6)
      {
        break;
      }
    }
  }

  return v6;
}

- (int64_t)_parentNodeIndexForNodeIndex:(int64_t)a3
{
  v3 = a3;
  begin = self->_nodes.__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3) <= a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:693 description:{@"Invalid parameter not satisfying: %@", @"childNodeIndex < _nodes.size()"}];

    begin = self->_nodes.__begin_;
  }

  v5 = &begin[v3];
  var1 = v5->var1;
  for (i = &v5[-1].var1; v3-- >= 1; i -= 3)
  {
    v9 = *i;
    if (var1 == v9 + 1)
    {
      return v3;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_recomputeRangeOffsetForGlobalIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a3];
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:713 description:{@"_UITreeDataSourceSnapshotter internal error: invalid initial or starting node index. Global index: %ld; Initial: %ld; Starting: %ld; Node count: %ld", a3, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - self->_nodes.__begin_) >> 3)}];
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    begin = self->_nodes.__begin_;
  }

  else
  {
    begin = self->_nodes.__begin_;
    if (v6 >= 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3))
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:717 description:{@"_UITreeDataSourceSnapshotter internal error: initial node index is out of bounds. initialNodeIndex: %ld; node count: %ld", v6, 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - self->_nodes.__begin_) >> 3)}];

      begin = self->_nodes.__begin_;
    }

    v8 = begin[v6].var0.length + begin[v6].var0.location;
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3);
  v11 = v10 > v7;
  v12 = v10 - v7;
  if (v11)
  {
    p_length = &begin[v7].var0.length;
    do
    {
      v14 = *p_length;
      *(p_length - 1) = v8;
      v8 += v14;
      p_length += 3;
      --v12;
    }

    while (v12);
  }
}

- (BOOL)_shouldSplitNodeAtInsertionIndex:(int64_t)a3
{
  if ([(_UITreeDataSourceSnapshotter *)self count]== a3 || self->_nodes.__end_ == self->_nodes.__begin_)
  {
    return 0;
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:779 description:{@"Invalid parameter not satisfying: %@", @"destinationNodeIndex != NSNotFound"}];
  }

  v7 = &self->_nodes.__begin_[v6];
  location = v7->var0.location;
  length = v7->var0.length;
  v12 = length < 2 || a3 < location || a3 - location >= length;
  v14 = location == 0x7FFFFFFFFFFFFFFFLL || length == 0 || v12;
  return (a3 + 1 < length + location) & (v14 ^ 1);
}

- (int64_t)_childNodeIndexForGloalIndex:(int64_t)a3
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:791 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:794 description:{@"Invalid parameter not satisfying: %@", @"nodeIndex != NSNotFound"}];
  }

  begin = self->_nodes.__begin_;
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 + 1 < 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3) && begin[v6].var1 + 1 == begin[v6 + 1].var1)
  {
    return v6 + 1;
  }

  return result;
}

- (void)_splitNodeAtInsertionIndex:(int64_t)a3
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a3)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:807 description:{@"Invalid parameter not satisfying: %@", @"insertionGlobalIndex < self.count"}];
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:810 description:{@"Invalid parameter not satisfying: %@", @"destinationNodeIndex != NSNotFound"}];
  }

  v7 = &self->_nodes.__begin_[v6];
  location = v7->var0.location;
  length = v7->var0.length;
  v10 = a3 - v7->var0.location;
  if (a3 < v7->var0.location || v10 >= length)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_NSRangeSplitResult _NSRangeSplit(NSRange, NSInteger)"}];
    [v22 handleFailureInFunction:v23 file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1171 description:{@"Invalid parameter not satisfying: %@", @"NSLocationInRange(splitIndex, range)"}];
  }

  if (length <= 1)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_NSRangeSplitResult _NSRangeSplit(NSRange, NSInteger)"}];
    [v21 handleFailureInFunction:v24 file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"range.length > 1"}];
  }

  v12 = location - a3 + length;
  v13 = length - (v10 + 1);
  v14 = v12 == 1;
  if (v12 == 1)
  {
    v15 = length - 1;
  }

  else
  {
    v15 = v10 + 1;
  }

  if (v14)
  {
    v16 = a3;
  }

  else
  {
    v16 = a3 + 1;
  }

  if (v14)
  {
    v13 = 1;
  }

  v7->var0.location = location;
  v7->var0.length = v15;
  var1 = v7->var1;
  *&v25 = v16;
  *(&v25 + 1) = v13;
  v26 = var1;
  begin = self->_nodes.__begin_;
  if (v6 + 1 == 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3))
  {
    std::vector<_UIOutlineNode>::push_back[abi:nn200100](&self->_nodes, &v25);
  }

  else
  {
    std::vector<_UIOutlineNode>::insert(&self->_nodes, &begin[v6 + 1], &v25);
  }
}

- (id)_deleteChildNodesForParentNodeIndex:(int64_t)a3
{
  begin = self->_nodes.__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3) <= a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:831 description:{@"Invalid parameter not satisfying: %@", @"parentNodeIndex < _nodes.size()"}];

    begin = self->_nodes.__begin_;
  }

  var1 = begin[a3].var1;
  v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v9 = a3;
  for (i = a3 + 1; ; ++i)
  {
    v11 = self->_nodes.__begin_;
    if (i >= 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - v11) >> 3) || v11[v9 + 1].var1 <= var1)
    {
      break;
    }

    [v8 addIndex:i];
    location = v11[v9 + 1].var0.location;
    length = v11[++v9].var0.length;
    [v7 addIndexesInRange:{location, length}];
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68___UITreeDataSourceSnapshotter__deleteChildNodesForParentNodeIndex___block_invoke;
  v17[3] = &unk_1E712CF28;
  v17[4] = self;
  v17[5] = v18;
  [v8 enumerateIndexesWithOptions:2 usingBlock:v17];
  _Block_object_dispose(v18, 8);

  return v7;
}

- (void)_insertCount:(int64_t)a3 beforeIndex:(int64_t)a4
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a4)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:858 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < self.count"}];

    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  v8 = [(_UITreeDataSourceSnapshotter *)self _nodeForGlobalIndex:a4];
  v8->var0.length += a3;
  [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ a3];
  [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:0x7FFFFFFFFFFFFFFFLL];

  [(_UITreeDataSourceSnapshotter *)self _recomputeExpandedIndexesForInsertedRange:a4, a3];
}

- (int64_t)_insertCount:(int64_t)a3 afterIndex:(int64_t)a4
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a4)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:876 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < self.count"}];

    if (a3)
    {
      goto LABEL_3;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_3:
  v8 = [(_UITreeDataSourceSnapshotter *)self childrenForParentAtIndex:a4 recursive:1];
  v9 = [v8 count];
  v10 = a4;
  if ([v8 count])
  {
    v10 = [v8 lastIndex];
  }

  v11 = v10 + 1;
  if (v11 > [(_UITreeDataSourceSnapshotter *)self count])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:892 description:{@"Invalid parameter not satisfying: %@", @"adjustedDestinationIndex <= self.count"}];
  }

  v12 = [(_UITreeDataSourceSnapshotter *)self levelForIndex:a4];
  if (v11 == [(_UITreeDataSourceSnapshotter *)self count])
  {
    *&v17 = v11;
    *(&v17 + 1) = a3;
    v18 = v12;
    std::vector<_UIOutlineNode>::push_back[abi:nn200100](&self->_nodes, &v17);
    [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ a3];
  }

  else
  {
    if (v9)
    {
      *&v17 = v11;
      *(&v17 + 1) = a3;
      v18 = v12;
      std::vector<_UIOutlineNode>::insert(&self->_nodes, &self->_nodes.__begin_[[(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:v11]], &v17);
    }

    else
    {
      v13 = [(_UITreeDataSourceSnapshotter *)self _nodeForGlobalIndex:a4];
      v13->var0.length += a3;
    }

    [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ a3];
    [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:0x7FFFFFFFFFFFFFFFLL];
    [(_UITreeDataSourceSnapshotter *)self _recomputeExpandedIndexesForInsertedRange:v11, a3];
  }

  return v11;
}

- (void)_recomputeExpandedIndexesForInsertedRange:(_NSRange)a3
{
  if (a3.length)
  {
    location = a3.location;
    if (a3.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      length = a3.length;
      if ([(NSMutableIndexSet *)self->_expandedIndexes count])
      {
        expandedIndexes = self->_expandedIndexes;

        [(NSMutableIndexSet *)expandedIndexes shiftIndexesStartingAtIndex:location by:length];
      }
    }
  }
}

- (void)_recomputeExpandedIndexesForDeletedIndexes:(id)a3
{
  v4 = a3;
  if ([v4 count] && -[NSMutableIndexSet count](self->_expandedIndexes, "count"))
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v6 = [(NSMutableIndexSet *)self->_expandedIndexes mutableCopy];
    [v6 removeIndexes:v4];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75___UITreeDataSourceSnapshotter__recomputeExpandedIndexesForDeletedIndexes___block_invoke;
    v10[3] = &unk_1E712CF70;
    v11 = v4;
    v7 = v5;
    v12 = v7;
    [v6 enumerateRangesUsingBlock:v10];
    expandedIndexes = self->_expandedIndexes;
    self->_expandedIndexes = v7;
    v9 = v7;
  }
}

- (id)_snapshotterByShiftingIndexesByCount:(int64_t)a3
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  begin = self->_nodes.__begin_;
  end = self->_nodes.__end_;
  while (begin != end)
  {
    v16 = begin->var0.location + a3;
    v17 = *&begin->var0.length;
    std::vector<_UIOutlineNode>::push_back[abi:nn200100](&v18, &v16);
    ++begin;
  }

  v7 = [(NSMutableIndexSet *)self->_expandedIndexes mutableCopy];
  [v7 shiftIndexesStartingAtIndex:0 by:a3];
  v8 = [_UITreeDataSourceSnapshotter alloc];
  __p = 0;
  v14 = 0;
  v15 = 0;
  v9 = v18;
  if (v19 != v18)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3);
    if (v10 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_UIOutlineNode>>(v10);
    }

    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
  }

  v11 = [(_UITreeDataSourceSnapshotter *)v8 initWithNodes:&__p count:self->_count expandedIndexes:v7];
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    operator delete(v9);
  }

  return v11;
}

- (id)_snapshotterByNormalizingRangeOffsets
{
  v3 = [(_UITreeDataSourceSnapshotter *)self _allIndexes];
  v4 = [v3 firstIndex];
  if (v4)
  {
    v5 = [(_UITreeDataSourceSnapshotter *)self _snapshotterByShiftingIndexesByCount:-v4];
  }

  else
  {
    v5 = [(_UITreeDataSourceSnapshotter *)self copy];
  }

  v6 = v5;

  return v6;
}

- (int64_t)_indexForInsertingAfterIndex:(int64_t)a3
{
  v3 = a3;
  if ([(_UITreeDataSourceSnapshotter *)self count]<= a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1032 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < self.count"}];
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self childrenForParentAtIndex:v3 recursive:1];
  if ([v6 count])
  {
    v3 = [v6 lastIndex];
  }

  return v3 + 1;
}

- (id)_allIndexes
{
  if ([(_UITreeDataSourceSnapshotter *)self count])
  {
    location = self->_nodes.__begin_->var0.location;
    v4 = [(_UITreeDataSourceSnapshotter *)self count];
    [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{location, v4}];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSet];
  }
  v5 = ;

  return v5;
}

- (void)_insertSubtreeFromSnapshotter:(id)a3 atIndex:(int64_t)a4 adjustedIndex:(int64_t)a5
{
  v9 = a3;
  v10 = [(_UITreeDataSourceSnapshotter *)self count];
  if (v10 <= a4)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1061 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < count"}];
  }

  if (v10 < a5)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1062 description:{@"Invalid parameter not satisfying: %@", @"adjustedDestinationIndex <= count"}];
  }

  v11 = [v9 count];
  v12 = [(_UITreeDataSourceSnapshotter *)self levelForIndex:a4];
  if (v10 == a5)
  {
    v13 = v9[1];
    v14 = v9[2];
    if (v13 != v14)
    {
      v15 = a5;
      do
      {
        v16 = *(v13 + 8);
        v17 = *(v13 + 16) + v12;
        *&v30 = v15;
        *(&v30 + 1) = v16;
        v31 = v17;
        std::vector<_UIOutlineNode>::push_back[abi:nn200100](&self->_nodes, &v30);
        v15 += v16;
        v13 += 24;
      }

      while (v13 != v14);
    }

    [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ v11];
  }

  else
  {
    if (a5 - a4 != 1)
    {
      a4 = a5;
    }

    if ([(_UITreeDataSourceSnapshotter *)self _shouldSplitNodeAtInsertionIndex:a4])
    {
      [(_UITreeDataSourceSnapshotter *)self _splitNodeAtInsertionIndex:a4];
    }

    v18 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:a5];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1097 description:{@"Invalid parameter not satisfying: %@", @"nodeInsertionIndex != NSNotFound"}];
    }

    v19 = v9[1];
    v20 = v9[2];
    if (v19 != v20)
    {
      v21 = v18;
      v22 = a5;
      do
      {
        v23 = *(v19 + 8);
        v24 = *(v19 + 16) + v12;
        *&v30 = v22;
        *(&v30 + 1) = v23;
        v31 = v24;
        std::vector<_UIOutlineNode>::insert(&self->_nodes, &self->_nodes.__begin_[v21], &v30);
        v22 += v23;
        v19 += 24;
        ++v21;
      }

      while (v19 != v20);
    }

    [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ v11];
    [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:0x7FFFFFFFFFFFFFFFLL];
    [(_UITreeDataSourceSnapshotter *)self _recomputeExpandedIndexesForInsertedRange:a5, v11];
  }

  v25 = [v9 expandedIndexes];
  v26 = [v25 mutableCopy];

  [v26 shiftIndexesStartingAtIndex:0 by:a5];
  [(NSMutableIndexSet *)self->_expandedIndexes addIndexes:v26];
}

- (_UIOutlineNode)_nextNodeForNodeIndex:(SEL)a3
{
  length = self->var0.length;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((self->var1 - length) >> 3);
  v6 = *a4;
  if (*a4 >= v5)
  {
    v8 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = (length + 24 * v6);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
    if (v6 + 1 >= v5)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      self = 24;
      v12 = (length + 24 * v6 + 40);
      while (*v12 == v10)
      {
        v8 += *(v12 - 1);
        ++v11;
        v12 += 3;
        if (v5 + ~v6 == v11)
        {
          v11 = v5 + ~v6;
          break;
        }
      }
    }

    v14 = v11 + v6 + 1 < v5;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (v14)
    {
      v13 = v11 + v6 + 1;
    }
  }

  *a4 = v13;
  retstr->var0.location = v9;
  retstr->var0.length = v8;
  retstr->var1 = v10;
  return self;
}

@end