@interface TSWPLayoutManager
+ (void)fixColumnBoundsForTarget:(id)target storage:(id)storage charIndex:(unint64_t)index firstColumnIndex:(unint64_t)columnIndex precedingHeight:(double)height height:(double)a8 alreadyHasMargins:(BOOL)margins styleProvider:(id)self0 vertical:(BOOL)self1;
- (BOOL)needsLayoutInColumn:(id)column;
- (TSWPCTTypesetterCache)typesetterCache;
- (TSWPLayoutManager)initWithStorage:(id)storage owner:(id)owner;
- (_NSRange)dirtyRange;
- (double)layoutIntoTarget:(id)target withRange:(_NSRange)range;
- (id)styleProvider;
- (int)p_layoutConfigFlagsForTarget:(id)target;
- (void)clearOwner;
- (void)dealloc;
- (void)deflateTarget:(id)target intoHints:(void *)hints childHints:(id)childHints[2] anchoredAttachmentPositions:(id *)positions topicNumbers:(void *)numbers layoutState:(void *)state;
- (void)destroyLayoutState:(void *)state;
- (void)inflateTarget:(id)target fromHints:(const void *)hints childHint:(id)hint anchoredAttachmentPositions:(id)positions topicNumbers:(const void *)numbers;
- (void)layoutIntoTarget:(id)target withLayoutState:(void *)state outSync:(BOOL *)sync;
- (void)layoutStateForLayoutTarget:(id)target afterHint:(id *)hint childHint:(id)childHint topicNumbers:(const void *)numbers textIsVertical:(BOOL)vertical;
- (void)resetTopicNumbers;
- (void)storage:(id)storage didChangeRange:(_NSRange)range delta:(int64_t)delta broadcastKind:(int)kind;
- (void)willRemoveAttachmentLayout:(id)layout;
@end

@implementation TSWPLayoutManager

- (TSWPLayoutManager)initWithStorage:(id)storage owner:(id)owner
{
  v9.receiver = self;
  v9.super_class = TSWPLayoutManager;
  v6 = [(TSWPLayoutManager *)&v9 init];
  if (v6)
  {
    storageCopy = storage;
    v6->_owner = owner;
    v6->_storage = storageCopy;
    if ([owner caresAboutStorageChanges])
    {
      [(TSWPStorage *)v6->_storage addObserver:v6];
      v6->_isObservingStorage = 1;
    }

    v6->_dirtyRange.location = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)dealloc
{
  [(TSWPLayoutManager *)self clearOwner];

  v3.receiver = self;
  v3.super_class = TSWPLayoutManager;
  [(TSWPLayoutManager *)&v3 dealloc];
}

- (id)styleProvider
{
  if (!self->_owner || (objc_opt_class(), TSUDynamicCast(), (objc_opt_respondsToSelector() & 1) == 0) || (result = [(TSWPLayoutOwner *)self->_owner styleProvider]) == 0)
  {
    storage = self->_storage;

    return [TSWPStorageStyleProvider styleProviderForStorage:storage];
  }

  return result;
}

- (void)resetTopicNumbers
{
  styleProvider = [(TSWPLayoutManager *)self styleProvider];

  TSWPTopicNumberHints::resetWithStyleProvider(&self->_cachedTopicNumbers, styleProvider);
}

- (void)clearOwner
{
  self->_owner = 0;
  if (self->_isObservingStorage)
  {
    [(TSWPStorage *)self->_storage removeObserver:self];
  }
}

- (void)storage:(id)storage didChangeRange:(_NSRange)range delta:(int64_t)delta broadcastKind:(int)kind
{
  length = range.length;
  location = range.location;
  v12.location = self->_dirtyRange.location;
  if (v12.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_dirtyRange = range;
    self->_delta = delta;
  }

  else
  {
    if (range.location + range.length <= v12.location)
    {
      v12.location += delta;
      self->_dirtyRange.location = v12.location;
      v12.length = self->_dirtyRange.length;
    }

    else
    {
      v12.length = self->_dirtyRange.length;
      if (range.location < v12.length + v12.location)
      {
        v12.length += delta;
        self->_dirtyRange.length = v12.length;
      }
    }

    self->_dirtyRange = NSUnionRange(v12, range);
    self->_delta += delta;
  }

  if (kind != 1 || delta != length)
  {
LABEL_16:
    [(TSWPCTTypesetterCache *)self->_typesetterCache clearCache];
    goto LABEL_17;
  }

  if (location < location + length)
  {
    v13 = location;
    while (!IsParagraphBreakingCharacter([storage characterAtIndex:v13]))
    {
      ++v13;
      if (!--length)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

LABEL_14:
  if (storage)
  {
    [storage paragraphEnumeratorAtCharIndex:location styleProvider:0];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  [(TSWPCTTypesetterCache *)self->_typesetterCache removeTypesetterForParagraphIndex:TSWPParagraphEnumerator::relevantParagraphIndex(&v14)];
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v14);
LABEL_17:
  [(TSWPLayoutOwner *)self->_owner layoutManagerNeedsLayout:self, *&v14.var0, *&v14.var2, *&v14.var4, *&v14.var6];
}

- (void)willRemoveAttachmentLayout:(id)layout
{
  v4 = [objc_msgSend(objc_msgSend(layout "info")];
  storage = self->_storage;
  if (storage)
  {
    [(TSWPStorage *)storage paragraphEnumeratorAtCharIndex:v4 styleProvider:0];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  [(TSWPCTTypesetterCache *)self->_typesetterCache removeTypesetterForParagraphIndex:TSWPParagraphEnumerator::relevantParagraphIndex(&v6)];
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v6);
}

- (BOOL)needsLayoutInColumn:(id)column
{
  range = [column range];
  v6 = 0;
  if (v5)
  {
    location = self->_dirtyRange.location;
    if (location <= 0x7FFFFFFFFFFFFFFELL)
    {
      v8 = range + v5;
      if (range + v5 && ((v9 = [(TSWPStorage *)self->_storage characterAtIndex:v8 - 1]- 4, v9 >= 0xC) || ((0x907u >> v9) & 1) == 0))
      {
        v11 = [-[TSWPLayoutManager styleProvider](self "styleProvider")];
        v12 = v11;
        v13 = v15[0];
        v6 = v15[0] <= v8 && [v11 intValueForProperty:92] != 0;
        if (v13 == v8 && !v6)
        {
          v6 = [v12 intValueForProperty:89] != 0;
        }

        if (!v6 && v15[0] > v8)
        {
          v6 = 0;
          do
          {
            styleProvider = [(TSWPLayoutManager *)self styleProvider];
            if (![objc_msgSend(styleProvider paragraphStyleAtParIndex:-[TSWPStorage paragraphIndexAtCharIndex:](self->_storage effectiveRange:{"paragraphIndexAtCharIndex:", v15[0] - 1), v15), "intValueForProperty:", 90}])
            {
              break;
            }

            v6 = v15[0] == v8;
          }

          while (v15[0] > v8);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v6;
}

- (void)layoutIntoTarget:(id)target withLayoutState:(void *)state outSync:(BOOL *)sync
{
  v9 = [(TSWPLayoutOwner *)self->_owner lineHintsForTarget:?];
  if (v9 && [v9 hints])
  {
    if (state)
    {
      [(TSWPLayoutManager *)self destroyLayoutState:state];
    }

    operator new();
  }

  if (!state)
  {
    [(TSWPLayoutManager *)self p_layoutConfigFlagsForTarget:target];
    operator new();
  }

  TSWPTopicNumberHints::reset(&self->_cachedTopicNumbers);
  if (objc_opt_respondsToSelector())
  {
    [target setAnchoredDrawablesForRelayout:{objc_msgSend(MEMORY[0x277CBEB18], "array")}];
    v10 = TSWPLayoutChore::layoutIntoTarget(state, target, 1, sync);
    [target setAnchoredDrawablesForRelayout:0];
  }

  else
  {
    v10 = TSWPLayoutChore::layoutIntoTarget(state, target, 1, sync);
  }

  TSWPTopicNumberHints::operator=(&self->_cachedTopicNumbers, state + 17);
  if ([objc_msgSend(target "columns")])
  {
    charIndex = self->_cachedTopicNumbers._charIndex;
    if (charIndex != 0x7FFFFFFFFFFFFFFFLL && charIndex >= [objc_msgSend(objc_msgSend(target "columns")])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager layoutIntoTarget:withLayoutState:outSync:]"];
      [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 311, @"topic numbers are out of sync with layout"}];
    }
  }

  if (v10)
  {
    if (self->_dirtyRange.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [objc_msgSend(target "columns")];
      if (v14)
      {
        range = [v14 range];
        v17 = range + v16;
        location = self->_dirtyRange.location;
        if (range + v16 > location)
        {
          v19 = self->_dirtyRange.length + location;
          if (v19 > v17)
          {
            self->_dirtyRange.location = v17;
            self->_dirtyRange.length = v19 - v17;
          }

          else
          {
            delta = self->_delta;
            self->_dirtyRange = xmmword_26CA637B0;
            self->_delta = 0;
            TSWPLayoutChore::clearDelta(state);
            [(TSWPLayoutOwner *)self->_owner layoutManager:self didClearDirtyRangeWithDelta:delta afterCharIndex:v19];
          }
        }
      }
    }
  }

  else
  {
    (*(*state + 8))(state);
    state = 0;
    self->_dirtyRange.length = 0;
    *&self->_delta = xmmword_26CA66A30;
  }

  return state;
}

- (double)layoutIntoTarget:(id)target withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [target currentSize];
  v8 = length;
  v9 = location;
  if (location + length < [(TSWPStorage *)self->_storage length])
  {
    v10 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:location + length];
    v12 = v11;
    if (v10 + v11 <= location + length)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager layoutIntoTarget:withRange:]"];
      [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 372, @"this isn't the next paragraph range"}];
    }

    v18.location = location;
    v18.length = length;
    v19.location = v10;
    v19.length = v12;
    v15 = NSUnionRange(v18, v19);
    v9 = v15.location;
    v8 = v15.length;
  }

  if (objc_opt_respondsToSelector())
  {
    [target expandedRangeForLayoutRange:v9 styleProvider:{v8, -[TSWPLayoutManager styleProvider](self, "styleProvider")}];
  }

  TSWPTopicNumberHints::TSWPTopicNumberHints(&v17, [(TSWPLayoutManager *)self styleProvider]);
  [(TSWPLayoutManager *)self p_layoutConfigFlagsForTarget:target];
  operator new();
}

- (void)layoutStateForLayoutTarget:(id)target afterHint:(id *)hint childHint:(id)childHint topicNumbers:(const void *)numbers textIsVertical:(BOOL)vertical
{
  if (hint)
  {
    [(TSWPLayoutManager *)self p_layoutConfigFlagsForTarget:target];
    operator new();
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager layoutStateForLayoutTarget:afterHint:childHint:topicNumbers:textIsVertical:]"];
  [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 448, @"bad hint"}];
  return 0;
}

+ (void)fixColumnBoundsForTarget:(id)target storage:(id)storage charIndex:(unint64_t)index firstColumnIndex:(unint64_t)columnIndex precedingHeight:(double)height height:(double)a8 alreadyHasMargins:(BOOL)margins styleProvider:(id)self0 vertical:(BOOL)self1
{
  v89 = *MEMORY[0x277D6C268];
  v18 = [target columnMetricsForCharIndex:index outRange:&v89];
  columnsAreLeftToRight = [v18 columnsAreLeftToRight];
  if (v18)
  {
    columnCount = [v18 columnCount];
  }

  else
  {
    columnCount = 1;
  }

  v21 = v89 < index || margins;
  v83 = v21;
  v82 = +[TSWPPadding padding];
  columns = [target columns];
  if (!columns)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPLayoutManager fixColumnBoundsForTarget:storage:charIndex:firstColumnIndex:precedingHeight:height:alreadyHasMargins:styleProvider:vertical:]"];
    [currentHandler handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 484, @"invalid nil value for '%s'", "columnsArray"}];
  }

  [target currentSize];
  v26 = v24;
  if (vertical)
  {
    v24 = v25;
  }

  v77 = v24;
  v78 = v25;
  if (v18)
  {
    [v18 adjustedInsets];
    v28 = v27;
    v30 = v29;
  }

  else
  {
    v28 = *MEMORY[0x277CBF3A8];
    v30 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v81 = [columns count];
  if ([storage allowsElementKind:32])
  {
    pageNumber = [target pageNumber];
  }

  else
  {
    pageNumber = 0x7FFFFFFFFFFFFFFFLL;
  }

  v32 = columnCount + columnIndex;
  v33 = v77 - TSDMultiplySizeScalar(v28, v30, 2.0);
  v35 = a8 - v34;
  v36 = 0.0;
  if (v33 >= 0.0)
  {
    v37 = v33;
  }

  else
  {
    v37 = 0.0;
  }

  if (v35 >= 0.0)
  {
    v38 = v35;
  }

  else
  {
    v38 = 0.0;
  }

  if (columnIndex)
  {
    v39 = v83;
  }

  else
  {
    v39 = 1;
  }

  v75 = columnCount + columnIndex;
  if ((v39 & 1) == 0)
  {
    objc_opt_class();
    [objc_msgSend(target "columns")];
    v40 = TSUDynamicCast();
    if (!v40)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      columnIndexCopy = columnIndex;
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPLayoutManager fixColumnBoundsForTarget:storage:charIndex:firstColumnIndex:precedingHeight:height:alreadyHasMargins:styleProvider:vertical:]"];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"];
      v44 = v42;
      columnIndex = columnIndexCopy;
      v32 = v75;
      [currentHandler2 handleFailureInFunction:v44 file:v43 lineNumber:519 description:{@"invalid nil value for '%s'", "column"}];
    }

    v45 = [objc_msgSend(target columnMetricsForCharIndex:objc_msgSend(v40 outRange:{"range"), 0), "layoutMargins"}];
    if (v45)
    {
      [v45 bottomInset];
      v36 = v46;
    }
  }

  columnIndexCopy2 = columnIndex;
  if (v32 > columnIndex)
  {
    v47 = 0;
    v86 = v30 + height;
    v76 = v36;
    do
    {
      v88 = v37;
      v87 = 0;
      layoutMargins = [v18 layoutMargins];
      if (layoutMargins)
      {
        v49 = layoutMargins;
      }

      else
      {
        v49 = v82;
      }

      if (vertical)
      {
        [v49 topInset];
        v51 = v78 - v50;
        [v49 bottomInset];
      }

      else
      {
        [v49 leftInset];
        v51 = v26 - v53;
        [v49 rightInset];
      }

      v54 = v51 - v52;
      wpKind = [storage wpKind];
      v56 = fmax(v54, 36.0);
      if (!wpKind)
      {
        v54 = v56;
      }

      if (vertical)
      {
        [v49 topInset];
      }

      else if (columnsAreLeftToRight)
      {
        [v49 leftInset];
      }

      else
      {
        [v49 rightInset];
      }

      v58 = v57;
      if (v18)
      {
        [v18 positionForColumnIndex:v47 bodyWidth:&v88 outWidth:&v87 outGap:v54];
        if (columnsAreLeftToRight)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v59 = 0.0;
        if (columnsAreLeftToRight)
        {
LABEL_48:
          v60 = v58 + v59;
          goto LABEL_51;
        }
      }

      v60 = v54 - v58 - v59 - v88;
LABEL_51:
      wpKind2 = [storage wpKind];
      v62 = v88;
      if (!wpKind2)
      {
        v62 = fmax(v88, 18.0);
        v88 = v62;
        if (v77 + (columnCount * -18.0) < v60)
        {
          v60 = v77 + (columnCount * -18.0);
        }
      }

      v63 = v86;
      v64 = v38;
      if ((v83 & 1) == 0)
      {
        if (vertical)
        {
          [v49 rightInset];
        }

        else
        {
          [v49 topInset];
        }

        v63 = v86 + v36 + v65;
        [target maxSize];
        v67 = v66;
        v90.origin.x = v60;
        v90.origin.y = v63;
        v90.size.width = v62;
        v90.size.height = v38;
        MaxY = CGRectGetMaxY(v90);
        if (columnIndexCopy2 || MaxY <= v67)
        {
          v64 = v38;
        }

        else
        {
          v69 = [storage wpKind] == 0;
          v70 = 36.0;
          v71 = v67 + -36.0;
          if (!v69 || v67 - v63 >= 36.0)
          {
            v71 = v63;
            v70 = v67 - v63;
          }

          v36 = v76;
          if (v70 < 1.0)
          {
            v63 = v67 + -1.0;
          }

          else
          {
            v63 = v71;
          }

          if (v70 < 1.0)
          {
            v64 = 1.0;
          }

          else
          {
            v64 = v70;
          }
        }
      }

      if (columnIndex >= v81)
      {
        v72 = [[TSWPColumn alloc] initWithStorage:storage frameBounds:v60, v63, v62, v64];
        [(TSWPColumn *)v72 setStyleProvider:provider];
        [(TSWPColumn *)v72 setColumnIndex:columnIndex];
        [columns addObject:v72];
      }

      else
      {
        v72 = [columns objectAtIndexedSubscript:columnIndex];
        [(TSWPColumn *)v72 setWpBounds:v60, v63, v62, v64];
      }

      -[TSWPColumn setTextIsVertical:](v72, "setTextIsVertical:", [target textIsVertical]);
      [(TSWPColumn *)v72 setPageNumber:pageNumber];
      ++columnIndex;
      ++v47;
      --columnCount;
    }

    while (columnCount);
  }

  wpKind3 = [storage wpKind];
  if (!columnIndexCopy2 && wpKind3)
  {
    v74 = [columns count];
    if (v74 > v75)
    {
      [columns removeObjectsInRange:{v75, v74 - v75}];
    }
  }
}

- (void)deflateTarget:(id)target intoHints:(void *)hints childHints:(id)childHints[2] anchoredAttachmentPositions:(id *)positions topicNumbers:(void *)numbers layoutState:(void *)state
{
  v79 = *MEMORY[0x277D85DE8];
  columns = [target columns];
  v71 = [columns count];
  if (v71)
  {
    v11 = 0;
    hintsCopy = hints;
    v70 = columns;
    do
    {
      v12 = [columns objectAtIndexedSubscript:v11];
      v13 = [target columnMetricsForCharIndex:objc_msgSend(v12 outRange:{"startCharIndex"), 0}];
      if (v13)
      {
        columnCount = [v13 columnCount];
      }

      else
      {
        columnCount = 1;
      }

      v11 += columnCount;
      v15 = [columns objectAtIndexedSubscript:v11 - 1];
      [v12 frameBounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [v15 frameBounds];
      MaxX = CGRectGetMaxX(v82);
      [v12 frameBounds];
      MinX = CGRectGetMinX(v83);
      startCharIndex = [v12 startCharIndex];
      startCharIndex2 = [v15 startCharIndex];
      characterCount = [v15 characterCount];
      if (startCharIndex <= characterCount + startCharIndex2)
      {
        v27 = characterCount + startCharIndex2;
      }

      else
      {
        v27 = startCharIndex;
      }

      if (startCharIndex >= characterCount + startCharIndex2)
      {
        v28 = characterCount + startCharIndex2;
      }

      else
      {
        v28 = startCharIndex;
      }

      v29 = v27 - v28;
      anchoredRange = [v12 anchoredRange];
      v32 = v31;
      v81.location = [v15 anchoredRange];
      v81.length = v33;
      v80.location = anchoredRange;
      v80.length = v32;
      v34 = NSUnionRange(v80, v81);
      nextWidowPullsDownFromCharIndex = [v15 nextWidowPullsDownFromCharIndex];
      v36 = nextWidowPullsDownFromCharIndex;
      if ((nextWidowPullsDownFromCharIndex - v28 >= v27 - v28 || nextWidowPullsDownFromCharIndex < v28) && nextWidowPullsDownFromCharIndex != v27)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager deflateTarget:intoHints:childHints:anchoredAttachmentPositions:topicNumbers:layoutState:]"];
        [currentHandler handleFailureInFunction:v40 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 657, @"Bad widow location"}];
      }

      v41 = MaxX - MinX;
      v42 = hintsCopy[1];
      v43 = hintsCopy[2];
      if (v42 >= v43)
      {
        v45 = *hintsCopy;
        v46 = v42 - *hintsCopy;
        v47 = 0xCCCCCCCCCCCCCCCDLL * (v46 >> 4) + 1;
        if (v47 > 0x333333333333333)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v48 = 0xCCCCCCCCCCCCCCCDLL * ((v43 - v45) >> 4);
        if (2 * v48 > v47)
        {
          v47 = 2 * v48;
        }

        if (v48 >= 0x199999999999999)
        {
          v47 = 0x333333333333333;
        }

        if (v47)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPTargetHint>>(hintsCopy, v47);
        }

        v49 = 16 * (v46 >> 4);
        *v49 = v17;
        *(v49 + 8) = v19;
        *(v49 + 16) = v41;
        *(v49 + 24) = v21;
        *(v49 + 32) = v28;
        *(v49 + 40) = v29;
        *(v49 + 48) = v36;
        *(v49 + 56) = v34;
        *(v49 + 72) = columnCount;
        v44 = v49 + 80;
        v50 = v49 - v46;
        memcpy((v49 - v46), v45, v46);
        v51 = *hintsCopy;
        *hintsCopy = v50;
        hintsCopy[1] = v44;
        hintsCopy[2] = 0;
        hints = hintsCopy;
        if (v51)
        {
          operator delete(v51);
        }
      }

      else
      {
        *v42 = v17;
        *(v42 + 1) = v19;
        *(v42 + 2) = v41;
        *(v42 + 3) = v21;
        *(v42 + 4) = v28;
        *(v42 + 5) = v29;
        *(v42 + 6) = v36;
        *(v42 + 56) = v34;
        v44 = (v42 + 80);
        *(v42 + 9) = columnCount;
        hints = hintsCopy;
      }

      columns = v70;
      *(hints + 1) = v44;
    }

    while (v11 < v71);
  }

  *childHints = 0;
  childHints[1] = 0;
  firstObject = [columns firstObject];
  if ([firstObject countLines])
  {
    *childHints = TSWPLineFragment::hintForAttachmentLayout([firstObject lineFragmentAtIndex:0]);
  }

  lastObject = [columns lastObject];
  countLines = [lastObject countLines];
  if (countLines)
  {
    v55 = [lastObject lineFragmentAtIndex:countLines - 1];
    if ((*(v55 + 25) & 1) == 0)
    {
      childHints[1] = TSWPLineFragment::hintForAttachmentLayout(v55);
    }
  }

  currentAnchoredDrawableLayouts = [target currentAnchoredDrawableLayouts];
  v57 = [currentAnchoredDrawableLayouts count];
  if (v57)
  {
    *positions = [MEMORY[0x277D6C368] dictionaryWithCapacity:v57];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v58 = [currentAnchoredDrawableLayouts countByEnumeratingWithState:&v74 objects:v78 count:16];
    if (v58)
    {
      v59 = *v75;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v75 != v59)
          {
            objc_enumerationMutation(currentAnchoredDrawableLayouts);
          }

          v61 = *(*(&v74 + 1) + 8 * i);
          v62 = [objc_msgSend(v61 "info")];
          v63 = MEMORY[0x277CCAE60];
          [v61 alignmentFrame];
          [*positions setObject:objc_msgSend(v63 forUncopiedKey:{"valueWithCGPoint:"), v62}];
        }

        v58 = [currentAnchoredDrawableLayouts countByEnumeratingWithState:&v74 objects:v78 count:16];
      }

      while (v58);
    }
  }

  if (v71)
  {
    charIndex = self->_cachedTopicNumbers._charIndex;
    if (charIndex != 0x7FFFFFFFFFFFFFFFLL && charIndex >= *(*hints + 32))
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager deflateTarget:intoHints:childHints:anchoredAttachmentPositions:topicNumbers:layoutState:]"];
      [currentHandler2 handleFailureInFunction:v66 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 696, @"topic numbers are out of sync with layout"}];
    }
  }

  TSWPTopicNumberHints::operator=(numbers, &self->_cachedTopicNumbers);
  TSWPTopicNumberHints::reset(&self->_cachedTopicNumbers);
}

- (void)inflateTarget:(id)target fromHints:(const void *)hints childHint:(id)hint anchoredAttachmentPositions:(id)positions topicNumbers:(const void *)numbers
{
  v29 = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(target "columns")])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager inflateTarget:fromHints:childHint:anchoredAttachmentPositions:topicNumbers:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 706, @"Newly created target should have 0 columns"}];
  }

  [target setAnchoredDrawablesForRelayout:{objc_msgSend(MEMORY[0x277CBEB18], "array")}];
  [target columns];
  [(TSWPLayoutManager *)self p_layoutConfigFlagsForTarget:target];
  [(TSWPStorage *)self->_storage wpKind];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [positions allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        drawable = [v14 drawable];
        v16 = [target validatedLayoutForAnchoredDrawable:drawable];
        v17 = [positions objectForKeyedSubscript:v14];
        if (v17)
        {
          [v17 CGPointValue];
          v19 = v18;
          [v16 setInterimPositionX:?];
          [v16 setInterimPositionY:v19];
          [v16 fixTransformFromInterimPosition];
          [objc_msgSend(target "anchoredDrawablesForRelayout")];
        }

        else
        {
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager inflateTarget:fromHints:childHint:anchoredAttachmentPositions:topicNumbers:]"];
          [currentHandler2 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 730, @"invalid nil value for '%s'", "value"}];
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  operator new();
}

- (void)destroyLayoutState:(void *)state
{
  if (state)
  {
    (*(*state + 8))(state);
  }
}

- (TSWPCTTypesetterCache)typesetterCache
{
  v3 = [-[TSWPStorage documentRoot](self->_storage "documentRoot")];
  if (self->_useLigatures != v3)
  {
    v4 = v3;
    [(TSWPLayoutManager *)self clearTypesetterCache];
    self->_useLigatures = v4;
  }

  result = self->_typesetterCache;
  if (!result)
  {
    result = objc_alloc_init(TSWPCTTypesetterCache);
    self->_typesetterCache = result;
  }

  return result;
}

- (int)p_layoutConfigFlagsForTarget:(id)target
{
  if ([target textIsVertical])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [target allowsLastLineTruncation])
  {
    v4 |= 0x20u;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![target allowsDescendersToClip])
  {
    v4 |= 4u;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [target pushAscendersIntoColumn])
  {
    return v4 | 0x40;
  }

  return v4;
}

- (_NSRange)dirtyRange
{
  length = self->_dirtyRange.length;
  location = self->_dirtyRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end