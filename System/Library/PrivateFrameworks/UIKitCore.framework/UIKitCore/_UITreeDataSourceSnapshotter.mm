@interface _UITreeDataSourceSnapshotter
- (BOOL)_isNodeIndexVisible:(int64_t)visible;
- (BOOL)_shouldSplitNodeAtInsertionIndex:(int64_t)index;
- (BOOL)hasChildrenForParentAtIndex:(int64_t)index;
- (BOOL)indexIsExpanded:(int64_t)expanded;
- (BOOL)indexIsVisible:(int64_t)visible;
- (BOOL)isEqual:(id)equal;
- (_NSRange)appendChildItemsWithCount:(int64_t)count;
- (_NSRange)appendChildItemsWithCount:(int64_t)count toParentIndex:(int64_t)index;
- (_UIOutlineNode)_nextNodeForNodeIndex:(SEL)index;
- (_UIOutlineNode)_nodeForGlobalIndex:(int64_t)index;
- (_UITreeDataSourceSnapshotter)init;
- (_UITreeDataSourceSnapshotter)initWithNodes:()vector<_UIOutlineNode count:(std:(int64_t)count :(id)a5 allocator<_UIOutlineNode>> *)a3 expandedIndexes:;
- (id).cxx_construct;
- (id)_allIndexes;
- (id)_childrenForParent:(int64_t)parent;
- (id)_deleteChildNodesForParentNodeIndex:(int64_t)index;
- (id)_snapshotterByNormalizingRangeOffsets;
- (id)_snapshotterByShiftingIndexesByCount:(int64_t)count;
- (id)childrenForParentAtIndex:(int64_t)index recursive:(BOOL)recursive;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)indexesForLevel:(int64_t)level;
- (id)snapshotterRepresentingSubtreeForIndex:(int64_t)index includingParent:(BOOL)parent;
- (id)visibleIndexes;
- (id)visualDescription;
- (int64_t)_binarySearchForGlobalIndex:(int64_t)index startIndex:(int64_t)startIndex endIndex:(int64_t)endIndex;
- (int64_t)_childNodeIndexForGloalIndex:(int64_t)index;
- (int64_t)_indexForInsertingAfterIndex:(int64_t)index;
- (int64_t)_insertCount:(int64_t)count afterIndex:(int64_t)index;
- (int64_t)_nodeIndexForGlobalIndex:(int64_t)index;
- (int64_t)_parentNodeIndexForNodeIndex:(int64_t)index;
- (int64_t)insertCount:(int64_t)count afterIndex:(int64_t)index insertionMode:(int64_t)mode;
- (int64_t)insertSubtreeFromSnapshotter:(id)snapshotter afterIndex:(int64_t)index;
- (int64_t)parentForChildAtIndex:(int64_t)index;
- (void)_insertCount:(int64_t)count beforeIndex:(int64_t)index;
- (void)_insertSubtreeFromSnapshotter:(id)snapshotter atIndex:(int64_t)index adjustedIndex:(int64_t)adjustedIndex;
- (void)_recomputeExpandedIndexesForDeletedIndexes:(id)indexes;
- (void)_recomputeExpandedIndexesForInsertedRange:(_NSRange)range;
- (void)_recomputeRangeOffsetForGlobalIndex:(int64_t)index;
- (void)_splitNodeAtInsertionIndex:(int64_t)index;
- (void)collapseIndexes:(id)indexes;
- (void)deleteIndexes:(id)indexes orphanDisposition:(int64_t)disposition;
- (void)expandIndexes:(id)indexes;
- (void)insertSubtreeFromSnapshotter:(id)snapshotter beforeIndex:(int64_t)index;
- (void)replaceChildItemsFromSnapshotter:(id)snapshotter forParentIndex:(int64_t)index;
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
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if (self->_nodes.__end_ != self->_nodes.__begin_)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if ([(_UITreeDataSourceSnapshotter *)self _isNodeIndexVisible:v5])
      {
        [indexSet addIndexesInRange:{self->_nodes.__begin_[v4].var0.location, self->_nodes.__begin_[v4].var0.length}];
      }

      ++v5;
      ++v4;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - self->_nodes.__begin_) >> 3));
  }

  return indexSet;
}

- (_UITreeDataSourceSnapshotter)initWithNodes:()vector<_UIOutlineNode count:(std:(int64_t)count :(id)a5 allocator<_UIOutlineNode>> *)a3 expandedIndexes:
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

    v10->_count = count;
    v25 = [v8 mutableCopy];
    expandedIndexes = v10->_expandedIndexes;
    v10->_expandedIndexes = v25;
  }

  return v10;
}

- (_NSRange)appendChildItemsWithCount:(int64_t)count
{
  if (count <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
  }

  v5 = [(_UITreeDataSourceSnapshotter *)self count];
  *&v10 = v5;
  *(&v10 + 1) = count;
  v11 = 0;
  std::vector<_UIOutlineNode>::push_back[abi:nn200100](&self->_nodes, &v10);
  [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ count];
  v6 = v5;
  countCopy = count;
  result.length = countCopy;
  result.location = v6;
  return result;
}

- (_NSRange)appendChildItemsWithCount:(int64_t)count toParentIndex:(int64_t)index
{
  if (count <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
  }

  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"parentIndex < self.count"}];
  }

  v8 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:index];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"parentNodeIndex != NSNotFound"}];
  }

  v9 = self->_nodes.__begin_[v8].var1 + 1;
  v17 = index + 1;
  countCopy = count;
  v19 = v9;
  if ([(_UITreeDataSourceSnapshotter *)self _shouldSplitNodeAtInsertionIndex:index])
  {
    [(_UITreeDataSourceSnapshotter *)self _splitNodeAtInsertionIndex:index];
    begin = self->_nodes.__begin_;
  }

  else
  {
    v11 = [(_UITreeDataSourceSnapshotter *)self _childNodeIndexForGloalIndex:index];
    begin = self->_nodes.__begin_;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      begin[v11].var0.length += count;
      goto LABEL_12;
    }
  }

  std::vector<_UIOutlineNode>::insert(&self->_nodes, &begin[v8 + 1], &v17);
LABEL_12:
  [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ count];
  [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:index];
  [(_UITreeDataSourceSnapshotter *)self _recomputeExpandedIndexesForInsertedRange:v17, countCopy];
  v12 = v17;
  v13 = countCopy;
  result.length = v13;
  result.location = v12;
  return result;
}

- (int64_t)insertCount:(int64_t)count afterIndex:(int64_t)index insertionMode:(int64_t)mode
{
  if (mode >= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"insertAfterChildren || insertAbsolute"}];
  }

  if (mode == 1)
  {
    if ([(_UITreeDataSourceSnapshotter *)self hasChildrenForParentAtIndex:index])
    {
      v9 = index + 1;
      if (index + 1 != [(_UITreeDataSourceSnapshotter *)self count])
      {
        [(_UITreeDataSourceSnapshotter *)self insertCount:count beforeIndex:index + 1];
        return v9;
      }
    }
  }

  else if (mode)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(_UITreeDataSourceSnapshotter *)self _insertCount:count afterIndex:index];
}

- (void)deleteIndexes:(id)indexes orphanDisposition:(int64_t)disposition
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    v8 = disposition == 0;
    v9 = disposition == 1;
    if (disposition >= 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"deleteOrphans || reparentOrphans"}];
    }

    v10 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:indexesCopy];
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
    [indexesCopy enumerateIndexesWithOptions:2 usingBlock:v14];
    if (self->_count < 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"_count >= 0"}];
    }

    [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:0x7FFFFFFFFFFFFFFFLL];
    [(_UITreeDataSourceSnapshotter *)self _recomputeExpandedIndexesForDeletedIndexes:v11];
  }
}

- (id)childrenForParentAtIndex:(int64_t)index recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__253;
  v17 = __Block_byref_object_dispose__253;
  v18 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v8 = [(_UITreeDataSourceSnapshotter *)self _childrenForParent:index];
  [v14[5] addIndexes:v8];
  if (recursiveCopy)
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

- (int64_t)parentForChildAtIndex:(int64_t)index
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"childGlobalIndex < self.count"}];
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:index];
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

- (BOOL)indexIsExpanded:(int64_t)expanded
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= expanded)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:289 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  expandedIndexes = self->_expandedIndexes;

  return [(NSMutableIndexSet *)expandedIndexes containsIndex:expanded];
}

- (BOOL)indexIsVisible:(int64_t)visible
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= visible)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:visible];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"nodeIndex != NSNotFound"}];
  }

  return [(_UITreeDataSourceSnapshotter *)self _isNodeIndexVisible:v6];
}

- (void)expandIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    if ([indexesCopy lastIndex] >= self->_count)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"lastIndex < _count"}];
    }

    [(NSMutableIndexSet *)self->_expandedIndexes addIndexes:indexesCopy];
  }
}

- (void)collapseIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    if ([indexesCopy lastIndex] >= self->_count)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"lastIndex < _count"}];
    }

    [(NSMutableIndexSet *)self->_expandedIndexes removeIndexes:indexesCopy];
  }
}

- (id)snapshotterRepresentingSubtreeForIndex:(int64_t)index includingParent:(BOOL)parent
{
  parentCopy = parent;
  if (self->_count <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:328 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < _count"}];
  }

  v8 = [(_UITreeDataSourceSnapshotter *)self childrenForParentAtIndex:index recursive:1];
  if ([v8 count] || parentCopy)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    if (parentCopy)
    {
      indexCopy = index;
      v38 = xmmword_18A6507C0;
      std::vector<_UIOutlineNode>::push_back[abi:nn200100](&v39, &indexCopy);
      if ([(_UITreeDataSourceSnapshotter *)self indexIsExpanded:index])
      {
        [v10 addIndex:index];
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
      firstIndex = [v8 firstIndex];
      lastIndex = [v8 lastIndex];
      v16 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:firstIndex];
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"firstChildNodeIndex != NSNotFound"}];
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      v18 = v17 - v16;
      if (v17 > v16)
      {
        v19 = parentCopy;
        v20 = v16;
        v21 = v19 - self->_nodes.__begin_[v16].var1;
        do
        {
          v22 = &self->_nodes.__begin_[v20];
          location = v22->var0.location;
          if (v22->var0.location > lastIndex)
          {
            break;
          }

          length = v22->var0.length;
          v25 = v21 + v22->var1;
          indexCopy = location;
          *&v38 = length;
          *(&v38 + 1) = v25;
          std::vector<_UIOutlineNode>::push_back[abi:nn200100](&v39, &indexCopy);
          v11 += length;
          ++v20;
          --v18;
        }

        while (v18);
      }

      v10 = v33;
      if ([(NSMutableIndexSet *)self->_expandedIndexes count])
      {
        v26 = [(NSMutableIndexSet *)self->_expandedIndexes indexesInRange:firstIndex options:lastIndex - firstIndex + 1 passingTest:0, &__block_literal_global_745];
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

- (void)replaceChildItemsFromSnapshotter:(id)snapshotter forParentIndex:(int64_t)index
{
  snapshotterCopy = snapshotter;
  if (!snapshotterCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:406 description:{@"Invalid parameter not satisfying: %@", @"snapshotter"}];
  }

  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:407 description:{@"Invalid parameter not satisfying: %@", @"parentIndex < self.count"}];
  }

  v22 = [(_UITreeDataSourceSnapshotter *)self childrenForParentAtIndex:index recursive:1];
  [(_UITreeDataSourceSnapshotter *)self deleteIndexes:v22];
  v8 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:index];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"parentNodeIndex != NSNotFound"}];
  }

  var1 = self->_nodes.__begin_[v8].var1;
  if ([(_UITreeDataSourceSnapshotter *)self _shouldSplitNodeAtInsertionIndex:index])
  {
    [(_UITreeDataSourceSnapshotter *)self _splitNodeAtInsertionIndex:index];
  }

  v10 = index + 1;
  v11 = snapshotterCopy[1];
  v12 = snapshotterCopy[2];
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

  self->_count += [snapshotterCopy count];
  [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:0x7FFFFFFFFFFFFFFFLL];
  -[_UITreeDataSourceSnapshotter _recomputeExpandedIndexesForInsertedRange:](self, "_recomputeExpandedIndexesForInsertedRange:", v10, [snapshotterCopy count]);
  expandedIndexes = [snapshotterCopy expandedIndexes];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80___UITreeDataSourceSnapshotter_replaceChildItemsFromSnapshotter_forParentIndex___block_invoke;
  v23[3] = &unk_1E710E220;
  v23[4] = self;
  v23[5] = v10;
  [expandedIndexes enumerateIndexesUsingBlock:v23];
}

- (void)insertSubtreeFromSnapshotter:(id)snapshotter beforeIndex:(int64_t)index
{
  snapshotterCopy = snapshotter;
  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:458 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < self.count"}];
  }

  if ([snapshotterCopy count])
  {
    [(_UITreeDataSourceSnapshotter *)self _insertSubtreeFromSnapshotter:snapshotterCopy atIndex:index adjustedIndex:index];
  }
}

- (int64_t)insertSubtreeFromSnapshotter:(id)snapshotter afterIndex:(int64_t)index
{
  snapshotterCopy = snapshotter;
  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:466 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < self.count"}];
  }

  if ([snapshotterCopy count])
  {
    v8 = [(_UITreeDataSourceSnapshotter *)self _indexForInsertingAfterIndex:index];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"adjustedDestinationIndex != NSNotFound"}];
    }

    [(_UITreeDataSourceSnapshotter *)self _insertSubtreeFromSnapshotter:snapshotterCopy atIndex:index adjustedIndex:v8];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)indexesForLevel:(int64_t)level
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  begin = self->_nodes.__begin_;
  end = self->_nodes.__end_;
  if (end != begin)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (begin[v8].var1 == level)
      {
        [indexSet addIndexesInRange:{begin[v8].var0.location, begin[v8].var0.length}];
        begin = self->_nodes.__begin_;
        end = self->_nodes.__end_;
      }

      ++v9;
      ++v8;
    }

    while (v9 < 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3));
  }

  return indexSet;
}

- (BOOL)hasChildrenForParentAtIndex:(int64_t)index
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:513 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  if ([(_UITreeDataSourceSnapshotter *)self isFlat])
  {
    return 0;
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:index];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:521 description:{@"Invalid parameter not satisfying: %@", @"nodeIndex != NSNotFound"}];
  }

  begin = self->_nodes.__begin_;
  if (v6 + 1 >= 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3))
  {
    return 0;
  }

  v8 = &begin[v6];
  return v8->var0.location + v8->var0.length - 1 == index && begin[v6 + 1].var1 > v8->var1;
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
  selfCopy = self;
  v3 = MEMORY[0x1E696AD60];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UITreeDataSourceSnapshotter count](self, "count")}];
  v23 = [v3 stringWithFormat:@"count=%@\n", v4];

  begin = selfCopy->_nodes.__begin_;
  if (selfCopy->_nodes.__end_ != begin)
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
      v13 = [(NSMutableIndexSet *)selfCopy->_expandedIndexes containsIndex:location];
      v14 = selfCopy;
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
      selfCopy = v14;
      begin = v14->_nodes.__begin_;
      ++v6;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((v14->_nodes.__end_ - begin) >> 3));
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      v9 = 1;
    }

    else
    {
      v6 = equalCopy;
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

- (id)_childrenForParent:(int64_t)parent
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if (parent == 0x7FFFFFFFFFFFFFFFLL)
  {
    begin = self->_nodes.__begin_;
    end = self->_nodes.__end_;
    while (begin != end)
    {
      if (!begin->var1)
      {
        [indexSet addIndexesInRange:{begin->var0.location, begin->var0.length}];
      }

      ++begin;
    }
  }

  else
  {
    if ([(_UITreeDataSourceSnapshotter *)self count]<= parent)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:623 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
    }

    v9 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:parent];
    v10 = self->_nodes.__begin_;
    v11 = &v10[v9];
    if (v11->var0.location + v11->var0.length - 1 == parent)
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
            [indexSet addIndexesInRange:{v10[v14 + 1].var0.location, v10[v14 + 1].var0.length}];
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

  return indexSet;
}

- (int64_t)_nodeIndexForGlobalIndex:(int64_t)index
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:642 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  v6 = 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - self->_nodes.__begin_) >> 3);

  return [(_UITreeDataSourceSnapshotter *)self _binarySearchForGlobalIndex:index startIndex:0 endIndex:v6];
}

- (int64_t)_binarySearchForGlobalIndex:(int64_t)index startIndex:(int64_t)startIndex endIndex:(int64_t)endIndex
{
  if (startIndex > endIndex)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = (endIndex + startIndex) / 2;
  v7 = &self->_nodes.__begin_[result];
  location = v7->var0.location;
  length = v7->var0.length;
  if (index < location || index - location >= length)
  {
    if (startIndex == endIndex)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return [_UITreeDataSourceSnapshotter _binarySearchForGlobalIndex:"_binarySearchForGlobalIndex:startIndex:endIndex:" startIndex:? endIndex:?];
  }

  return result;
}

- (_UIOutlineNode)_nodeForGlobalIndex:(int64_t)index
{
  v5 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:index];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:669 description:{@"Invalid parameter not satisfying: %@", @"nodeIndex != NSNotFound"}];
  }

  return &self->_nodes.__begin_[v5];
}

- (BOOL)_isNodeIndexVisible:(int64_t)visible
{
  if (0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - self->_nodes.__begin_) >> 3) <= visible)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:678 description:{@"Invalid parameter not satisfying: %@", @"nodeIndex < _nodes.size()"}];
  }

  v5 = [(_UITreeDataSourceSnapshotter *)self _parentNodeIndexForNodeIndex:visible];
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

- (int64_t)_parentNodeIndexForNodeIndex:(int64_t)index
{
  indexCopy = index;
  begin = self->_nodes.__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3) <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:693 description:{@"Invalid parameter not satisfying: %@", @"childNodeIndex < _nodes.size()"}];

    begin = self->_nodes.__begin_;
  }

  v5 = &begin[indexCopy];
  var1 = v5->var1;
  for (i = &v5[-1].var1; indexCopy-- >= 1; i -= 3)
  {
    v9 = *i;
    if (var1 == v9 + 1)
    {
      return indexCopy;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_recomputeRangeOffsetForGlobalIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:index];
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:713 description:{@"_UITreeDataSourceSnapshotter internal error: invalid initial or starting node index. Global index: %ld; Initial: %ld; Starting: %ld; Node count: %ld", index, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - self->_nodes.__begin_) >> 3)}];
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    begin = self->_nodes.__begin_;
  }

  else
  {
    begin = self->_nodes.__begin_;
    if (v6 >= 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3))
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:717 description:{@"_UITreeDataSourceSnapshotter internal error: initial node index is out of bounds. initialNodeIndex: %ld; node count: %ld", v6, 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - self->_nodes.__begin_) >> 3)}];

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

- (BOOL)_shouldSplitNodeAtInsertionIndex:(int64_t)index
{
  if ([(_UITreeDataSourceSnapshotter *)self count]== index || self->_nodes.__end_ == self->_nodes.__begin_)
  {
    return 0;
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:index];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:779 description:{@"Invalid parameter not satisfying: %@", @"destinationNodeIndex != NSNotFound"}];
  }

  v7 = &self->_nodes.__begin_[v6];
  location = v7->var0.location;
  length = v7->var0.length;
  v12 = length < 2 || index < location || index - location >= length;
  v14 = location == 0x7FFFFFFFFFFFFFFFLL || length == 0 || v12;
  return (index + 1 < length + location) & (v14 ^ 1);
}

- (int64_t)_childNodeIndexForGloalIndex:(int64_t)index
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:791 description:{@"Invalid parameter not satisfying: %@", @"globalIndex < self.count"}];
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:index];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:794 description:{@"Invalid parameter not satisfying: %@", @"nodeIndex != NSNotFound"}];
  }

  begin = self->_nodes.__begin_;
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 + 1 < 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3) && begin[v6].var1 + 1 == begin[v6 + 1].var1)
  {
    return v6 + 1;
  }

  return result;
}

- (void)_splitNodeAtInsertionIndex:(int64_t)index
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:807 description:{@"Invalid parameter not satisfying: %@", @"insertionGlobalIndex < self.count"}];
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:index];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:810 description:{@"Invalid parameter not satisfying: %@", @"destinationNodeIndex != NSNotFound"}];
  }

  v7 = &self->_nodes.__begin_[v6];
  location = v7->var0.location;
  length = v7->var0.length;
  v10 = index - v7->var0.location;
  if (index < v7->var0.location || v10 >= length)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_NSRangeSplitResult _NSRangeSplit(NSRange, NSInteger)"}];
    [currentHandler3 handleFailureInFunction:v23 file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1171 description:{@"Invalid parameter not satisfying: %@", @"NSLocationInRange(splitIndex, range)"}];
  }

  if (length <= 1)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_NSRangeSplitResult _NSRangeSplit(NSRange, NSInteger)"}];
    [currentHandler4 handleFailureInFunction:v24 file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"range.length > 1"}];
  }

  v12 = location - index + length;
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
    indexCopy = index;
  }

  else
  {
    indexCopy = index + 1;
  }

  if (v14)
  {
    v13 = 1;
  }

  v7->var0.location = location;
  v7->var0.length = v15;
  var1 = v7->var1;
  *&v25 = indexCopy;
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

- (id)_deleteChildNodesForParentNodeIndex:(int64_t)index
{
  begin = self->_nodes.__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - begin) >> 3) <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:831 description:{@"Invalid parameter not satisfying: %@", @"parentNodeIndex < _nodes.size()"}];

    begin = self->_nodes.__begin_;
  }

  var1 = begin[index].var1;
  v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
  indexCopy = index;
  for (i = index + 1; ; ++i)
  {
    v11 = self->_nodes.__begin_;
    if (i >= 0xAAAAAAAAAAAAAAABLL * ((self->_nodes.__end_ - v11) >> 3) || v11[indexCopy + 1].var1 <= var1)
    {
      break;
    }

    [v8 addIndex:i];
    location = v11[indexCopy + 1].var0.location;
    length = v11[++indexCopy].var0.length;
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

- (void)_insertCount:(int64_t)count beforeIndex:(int64_t)index
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:858 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < self.count"}];

    if (!count)
    {
      return;
    }
  }

  else if (!count)
  {
    return;
  }

  v8 = [(_UITreeDataSourceSnapshotter *)self _nodeForGlobalIndex:index];
  v8->var0.length += count;
  [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ count];
  [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:0x7FFFFFFFFFFFFFFFLL];

  [(_UITreeDataSourceSnapshotter *)self _recomputeExpandedIndexesForInsertedRange:index, count];
}

- (int64_t)_insertCount:(int64_t)count afterIndex:(int64_t)index
{
  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:876 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < self.count"}];

    if (count)
    {
      goto LABEL_3;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!count)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_3:
  v8 = [(_UITreeDataSourceSnapshotter *)self childrenForParentAtIndex:index recursive:1];
  v9 = [v8 count];
  indexCopy = index;
  if ([v8 count])
  {
    indexCopy = [v8 lastIndex];
  }

  v11 = indexCopy + 1;
  if (v11 > [(_UITreeDataSourceSnapshotter *)self count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:892 description:{@"Invalid parameter not satisfying: %@", @"adjustedDestinationIndex <= self.count"}];
  }

  v12 = [(_UITreeDataSourceSnapshotter *)self levelForIndex:index];
  if (v11 == [(_UITreeDataSourceSnapshotter *)self count])
  {
    *&v17 = v11;
    *(&v17 + 1) = count;
    v18 = v12;
    std::vector<_UIOutlineNode>::push_back[abi:nn200100](&self->_nodes, &v17);
    [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ count];
  }

  else
  {
    if (v9)
    {
      *&v17 = v11;
      *(&v17 + 1) = count;
      v18 = v12;
      std::vector<_UIOutlineNode>::insert(&self->_nodes, &self->_nodes.__begin_[[(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:v11]], &v17);
    }

    else
    {
      v13 = [(_UITreeDataSourceSnapshotter *)self _nodeForGlobalIndex:index];
      v13->var0.length += count;
    }

    [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ count];
    [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:0x7FFFFFFFFFFFFFFFLL];
    [(_UITreeDataSourceSnapshotter *)self _recomputeExpandedIndexesForInsertedRange:v11, count];
  }

  return v11;
}

- (void)_recomputeExpandedIndexesForInsertedRange:(_NSRange)range
{
  if (range.length)
  {
    location = range.location;
    if (range.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      length = range.length;
      if ([(NSMutableIndexSet *)self->_expandedIndexes count])
      {
        expandedIndexes = self->_expandedIndexes;

        [(NSMutableIndexSet *)expandedIndexes shiftIndexesStartingAtIndex:location by:length];
      }
    }
  }
}

- (void)_recomputeExpandedIndexesForDeletedIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([indexesCopy count] && -[NSMutableIndexSet count](self->_expandedIndexes, "count"))
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v6 = [(NSMutableIndexSet *)self->_expandedIndexes mutableCopy];
    [v6 removeIndexes:indexesCopy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75___UITreeDataSourceSnapshotter__recomputeExpandedIndexesForDeletedIndexes___block_invoke;
    v10[3] = &unk_1E712CF70;
    v11 = indexesCopy;
    v7 = v5;
    v12 = v7;
    [v6 enumerateRangesUsingBlock:v10];
    expandedIndexes = self->_expandedIndexes;
    self->_expandedIndexes = v7;
    v9 = v7;
  }
}

- (id)_snapshotterByShiftingIndexesByCount:(int64_t)count
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  begin = self->_nodes.__begin_;
  end = self->_nodes.__end_;
  while (begin != end)
  {
    v16 = begin->var0.location + count;
    v17 = *&begin->var0.length;
    std::vector<_UIOutlineNode>::push_back[abi:nn200100](&v18, &v16);
    ++begin;
  }

  v7 = [(NSMutableIndexSet *)self->_expandedIndexes mutableCopy];
  [v7 shiftIndexesStartingAtIndex:0 by:count];
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
  _allIndexes = [(_UITreeDataSourceSnapshotter *)self _allIndexes];
  firstIndex = [_allIndexes firstIndex];
  if (firstIndex)
  {
    v5 = [(_UITreeDataSourceSnapshotter *)self _snapshotterByShiftingIndexesByCount:-firstIndex];
  }

  else
  {
    v5 = [(_UITreeDataSourceSnapshotter *)self copy];
  }

  v6 = v5;

  return v6;
}

- (int64_t)_indexForInsertingAfterIndex:(int64_t)index
{
  indexCopy = index;
  if ([(_UITreeDataSourceSnapshotter *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1032 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < self.count"}];
  }

  v6 = [(_UITreeDataSourceSnapshotter *)self childrenForParentAtIndex:indexCopy recursive:1];
  if ([v6 count])
  {
    indexCopy = [v6 lastIndex];
  }

  return indexCopy + 1;
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

- (void)_insertSubtreeFromSnapshotter:(id)snapshotter atIndex:(int64_t)index adjustedIndex:(int64_t)adjustedIndex
{
  snapshotterCopy = snapshotter;
  v10 = [(_UITreeDataSourceSnapshotter *)self count];
  if (v10 <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1061 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex < count"}];
  }

  if (v10 < adjustedIndex)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1062 description:{@"Invalid parameter not satisfying: %@", @"adjustedDestinationIndex <= count"}];
  }

  v11 = [snapshotterCopy count];
  v12 = [(_UITreeDataSourceSnapshotter *)self levelForIndex:index];
  if (v10 == adjustedIndex)
  {
    v13 = snapshotterCopy[1];
    v14 = snapshotterCopy[2];
    if (v13 != v14)
    {
      adjustedIndexCopy = adjustedIndex;
      do
      {
        v16 = *(v13 + 8);
        v17 = *(v13 + 16) + v12;
        *&v30 = adjustedIndexCopy;
        *(&v30 + 1) = v16;
        v31 = v17;
        std::vector<_UIOutlineNode>::push_back[abi:nn200100](&self->_nodes, &v30);
        adjustedIndexCopy += v16;
        v13 += 24;
      }

      while (v13 != v14);
    }

    [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ v11];
  }

  else
  {
    if (adjustedIndex - index != 1)
    {
      index = adjustedIndex;
    }

    if ([(_UITreeDataSourceSnapshotter *)self _shouldSplitNodeAtInsertionIndex:index])
    {
      [(_UITreeDataSourceSnapshotter *)self _splitNodeAtInsertionIndex:index];
    }

    v18 = [(_UITreeDataSourceSnapshotter *)self _nodeIndexForGlobalIndex:adjustedIndex];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:1097 description:{@"Invalid parameter not satisfying: %@", @"nodeInsertionIndex != NSNotFound"}];
    }

    v19 = snapshotterCopy[1];
    v20 = snapshotterCopy[2];
    if (v19 != v20)
    {
      v21 = v18;
      adjustedIndexCopy2 = adjustedIndex;
      do
      {
        v23 = *(v19 + 8);
        v24 = *(v19 + 16) + v12;
        *&v30 = adjustedIndexCopy2;
        *(&v30 + 1) = v23;
        v31 = v24;
        std::vector<_UIOutlineNode>::insert(&self->_nodes, &self->_nodes.__begin_[v21], &v30);
        adjustedIndexCopy2 += v23;
        v19 += 24;
        ++v21;
      }

      while (v19 != v20);
    }

    [(_UITreeDataSourceSnapshotter *)self setCount:[(_UITreeDataSourceSnapshotter *)self count]+ v11];
    [(_UITreeDataSourceSnapshotter *)self _recomputeRangeOffsetForGlobalIndex:0x7FFFFFFFFFFFFFFFLL];
    [(_UITreeDataSourceSnapshotter *)self _recomputeExpandedIndexesForInsertedRange:adjustedIndex, v11];
  }

  expandedIndexes = [snapshotterCopy expandedIndexes];
  v26 = [expandedIndexes mutableCopy];

  [v26 shiftIndexesStartingAtIndex:0 by:adjustedIndex];
  [(NSMutableIndexSet *)self->_expandedIndexes addIndexes:v26];
}

- (_UIOutlineNode)_nextNodeForNodeIndex:(SEL)index
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