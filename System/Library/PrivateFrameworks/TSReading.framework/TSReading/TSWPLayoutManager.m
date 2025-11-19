@interface TSWPLayoutManager
+ (void)fixColumnBoundsForTarget:(id)a3 storage:(id)a4 charIndex:(unint64_t)a5 firstColumnIndex:(unint64_t)a6 precedingHeight:(double)a7 height:(double)a8 alreadyHasMargins:(BOOL)a9 styleProvider:(id)a10 vertical:(BOOL)a11;
- (BOOL)needsLayoutInColumn:(id)a3;
- (TSWPCTTypesetterCache)typesetterCache;
- (TSWPLayoutManager)initWithStorage:(id)a3 owner:(id)a4;
- (_NSRange)dirtyRange;
- (double)layoutIntoTarget:(id)a3 withRange:(_NSRange)a4;
- (id)styleProvider;
- (int)p_layoutConfigFlagsForTarget:(id)a3;
- (void)clearOwner;
- (void)dealloc;
- (void)deflateTarget:(id)a3 intoHints:(void *)a4 childHints:(id)a5[2] anchoredAttachmentPositions:(id *)a6 topicNumbers:(void *)a7 layoutState:(void *)a8;
- (void)destroyLayoutState:(void *)a3;
- (void)inflateTarget:(id)a3 fromHints:(const void *)a4 childHint:(id)a5 anchoredAttachmentPositions:(id)a6 topicNumbers:(const void *)a7;
- (void)layoutIntoTarget:(id)a3 withLayoutState:(void *)a4 outSync:(BOOL *)a5;
- (void)layoutStateForLayoutTarget:(id)a3 afterHint:(id *)a4 childHint:(id)a5 topicNumbers:(const void *)a6 textIsVertical:(BOOL)a7;
- (void)resetTopicNumbers;
- (void)storage:(id)a3 didChangeRange:(_NSRange)a4 delta:(int64_t)a5 broadcastKind:(int)a6;
- (void)willRemoveAttachmentLayout:(id)a3;
@end

@implementation TSWPLayoutManager

- (TSWPLayoutManager)initWithStorage:(id)a3 owner:(id)a4
{
  v9.receiver = self;
  v9.super_class = TSWPLayoutManager;
  v6 = [(TSWPLayoutManager *)&v9 init];
  if (v6)
  {
    v7 = a3;
    v6->_owner = a4;
    v6->_storage = v7;
    if ([a4 caresAboutStorageChanges])
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
  v3 = [(TSWPLayoutManager *)self styleProvider];

  TSWPTopicNumberHints::resetWithStyleProvider(&self->_cachedTopicNumbers, v3);
}

- (void)clearOwner
{
  self->_owner = 0;
  if (self->_isObservingStorage)
  {
    [(TSWPStorage *)self->_storage removeObserver:self];
  }
}

- (void)storage:(id)a3 didChangeRange:(_NSRange)a4 delta:(int64_t)a5 broadcastKind:(int)a6
{
  length = a4.length;
  location = a4.location;
  v12.location = self->_dirtyRange.location;
  if (v12.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_dirtyRange = a4;
    self->_delta = a5;
  }

  else
  {
    if (a4.location + a4.length <= v12.location)
    {
      v12.location += a5;
      self->_dirtyRange.location = v12.location;
      v12.length = self->_dirtyRange.length;
    }

    else
    {
      v12.length = self->_dirtyRange.length;
      if (a4.location < v12.length + v12.location)
      {
        v12.length += a5;
        self->_dirtyRange.length = v12.length;
      }
    }

    self->_dirtyRange = NSUnionRange(v12, a4);
    self->_delta += a5;
  }

  if (a6 != 1 || a5 != length)
  {
LABEL_16:
    [(TSWPCTTypesetterCache *)self->_typesetterCache clearCache];
    goto LABEL_17;
  }

  if (location < location + length)
  {
    v13 = location;
    while (!IsParagraphBreakingCharacter([a3 characterAtIndex:v13]))
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
  if (a3)
  {
    [a3 paragraphEnumeratorAtCharIndex:location styleProvider:0];
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

- (void)willRemoveAttachmentLayout:(id)a3
{
  v4 = [objc_msgSend(objc_msgSend(a3 "info")];
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

- (BOOL)needsLayoutInColumn:(id)a3
{
  v4 = [a3 range];
  v6 = 0;
  if (v5)
  {
    location = self->_dirtyRange.location;
    if (location <= 0x7FFFFFFFFFFFFFFELL)
    {
      v8 = v4 + v5;
      if (v4 + v5 && ((v9 = [(TSWPStorage *)self->_storage characterAtIndex:v8 - 1]- 4, v9 >= 0xC) || ((0x907u >> v9) & 1) == 0))
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
            v14 = [(TSWPLayoutManager *)self styleProvider];
            if (![objc_msgSend(v14 paragraphStyleAtParIndex:-[TSWPStorage paragraphIndexAtCharIndex:](self->_storage effectiveRange:{"paragraphIndexAtCharIndex:", v15[0] - 1), v15), "intValueForProperty:", 90}])
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

- (void)layoutIntoTarget:(id)a3 withLayoutState:(void *)a4 outSync:(BOOL *)a5
{
  v9 = [(TSWPLayoutOwner *)self->_owner lineHintsForTarget:?];
  if (v9 && [v9 hints])
  {
    if (a4)
    {
      [(TSWPLayoutManager *)self destroyLayoutState:a4];
    }

    operator new();
  }

  if (!a4)
  {
    [(TSWPLayoutManager *)self p_layoutConfigFlagsForTarget:a3];
    operator new();
  }

  TSWPTopicNumberHints::reset(&self->_cachedTopicNumbers);
  if (objc_opt_respondsToSelector())
  {
    [a3 setAnchoredDrawablesForRelayout:{objc_msgSend(MEMORY[0x277CBEB18], "array")}];
    v10 = TSWPLayoutChore::layoutIntoTarget(a4, a3, 1, a5);
    [a3 setAnchoredDrawablesForRelayout:0];
  }

  else
  {
    v10 = TSWPLayoutChore::layoutIntoTarget(a4, a3, 1, a5);
  }

  TSWPTopicNumberHints::operator=(&self->_cachedTopicNumbers, a4 + 17);
  if ([objc_msgSend(a3 "columns")])
  {
    charIndex = self->_cachedTopicNumbers._charIndex;
    if (charIndex != 0x7FFFFFFFFFFFFFFFLL && charIndex >= [objc_msgSend(objc_msgSend(a3 "columns")])
    {
      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager layoutIntoTarget:withLayoutState:outSync:]"];
      [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 311, @"topic numbers are out of sync with layout"}];
    }
  }

  if (v10)
  {
    if (self->_dirtyRange.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [objc_msgSend(a3 "columns")];
      if (v14)
      {
        v15 = [v14 range];
        v17 = v15 + v16;
        location = self->_dirtyRange.location;
        if (v15 + v16 > location)
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
            TSWPLayoutChore::clearDelta(a4);
            [(TSWPLayoutOwner *)self->_owner layoutManager:self didClearDirtyRangeWithDelta:delta afterCharIndex:v19];
          }
        }
      }
    }
  }

  else
  {
    (*(*a4 + 8))(a4);
    a4 = 0;
    self->_dirtyRange.length = 0;
    *&self->_delta = xmmword_26CA66A30;
  }

  return a4;
}

- (double)layoutIntoTarget:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [a3 currentSize];
  v8 = length;
  v9 = location;
  if (location + length < [(TSWPStorage *)self->_storage length])
  {
    v10 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:location + length];
    v12 = v11;
    if (v10 + v11 <= location + length)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager layoutIntoTarget:withRange:]"];
      [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 372, @"this isn't the next paragraph range"}];
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
    [a3 expandedRangeForLayoutRange:v9 styleProvider:{v8, -[TSWPLayoutManager styleProvider](self, "styleProvider")}];
  }

  TSWPTopicNumberHints::TSWPTopicNumberHints(&v17, [(TSWPLayoutManager *)self styleProvider]);
  [(TSWPLayoutManager *)self p_layoutConfigFlagsForTarget:a3];
  operator new();
}

- (void)layoutStateForLayoutTarget:(id)a3 afterHint:(id *)a4 childHint:(id)a5 topicNumbers:(const void *)a6 textIsVertical:(BOOL)a7
{
  if (a4)
  {
    [(TSWPLayoutManager *)self p_layoutConfigFlagsForTarget:a3];
    operator new();
  }

  v7 = [MEMORY[0x277D6C290] currentHandler];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager layoutStateForLayoutTarget:afterHint:childHint:topicNumbers:textIsVertical:]"];
  [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 448, @"bad hint"}];
  return 0;
}

+ (void)fixColumnBoundsForTarget:(id)a3 storage:(id)a4 charIndex:(unint64_t)a5 firstColumnIndex:(unint64_t)a6 precedingHeight:(double)a7 height:(double)a8 alreadyHasMargins:(BOOL)a9 styleProvider:(id)a10 vertical:(BOOL)a11
{
  v89 = *MEMORY[0x277D6C268];
  v18 = [a3 columnMetricsForCharIndex:a5 outRange:&v89];
  v19 = [v18 columnsAreLeftToRight];
  if (v18)
  {
    v20 = [v18 columnCount];
  }

  else
  {
    v20 = 1;
  }

  v21 = v89 < a5 || a9;
  v83 = v21;
  v82 = +[TSWPPadding padding];
  v84 = [a3 columns];
  if (!v84)
  {
    v22 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPLayoutManager fixColumnBoundsForTarget:storage:charIndex:firstColumnIndex:precedingHeight:height:alreadyHasMargins:styleProvider:vertical:]"];
    [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 484, @"invalid nil value for '%s'", "columnsArray"}];
  }

  [a3 currentSize];
  v26 = v24;
  if (a11)
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

  v81 = [v84 count];
  if ([a4 allowsElementKind:32])
  {
    v31 = [a3 pageNumber];
  }

  else
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v32 = v20 + a6;
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

  if (a6)
  {
    v39 = v83;
  }

  else
  {
    v39 = 1;
  }

  v75 = v20 + a6;
  if ((v39 & 1) == 0)
  {
    objc_opt_class();
    [objc_msgSend(a3 "columns")];
    v40 = TSUDynamicCast();
    if (!v40)
    {
      v85 = [MEMORY[0x277D6C290] currentHandler];
      v41 = a6;
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPLayoutManager fixColumnBoundsForTarget:storage:charIndex:firstColumnIndex:precedingHeight:height:alreadyHasMargins:styleProvider:vertical:]"];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"];
      v44 = v42;
      a6 = v41;
      v32 = v75;
      [v85 handleFailureInFunction:v44 file:v43 lineNumber:519 description:{@"invalid nil value for '%s'", "column"}];
    }

    v45 = [objc_msgSend(a3 columnMetricsForCharIndex:objc_msgSend(v40 outRange:{"range"), 0), "layoutMargins"}];
    if (v45)
    {
      [v45 bottomInset];
      v36 = v46;
    }
  }

  v80 = a6;
  if (v32 > a6)
  {
    v47 = 0;
    v86 = v30 + a7;
    v76 = v36;
    do
    {
      v88 = v37;
      v87 = 0;
      v48 = [v18 layoutMargins];
      if (v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = v82;
      }

      if (a11)
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
      v55 = [a4 wpKind];
      v56 = fmax(v54, 36.0);
      if (!v55)
      {
        v54 = v56;
      }

      if (a11)
      {
        [v49 topInset];
      }

      else if (v19)
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
        if (v19)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v59 = 0.0;
        if (v19)
        {
LABEL_48:
          v60 = v58 + v59;
          goto LABEL_51;
        }
      }

      v60 = v54 - v58 - v59 - v88;
LABEL_51:
      v61 = [a4 wpKind];
      v62 = v88;
      if (!v61)
      {
        v62 = fmax(v88, 18.0);
        v88 = v62;
        if (v77 + (v20 * -18.0) < v60)
        {
          v60 = v77 + (v20 * -18.0);
        }
      }

      v63 = v86;
      v64 = v38;
      if ((v83 & 1) == 0)
      {
        if (a11)
        {
          [v49 rightInset];
        }

        else
        {
          [v49 topInset];
        }

        v63 = v86 + v36 + v65;
        [a3 maxSize];
        v67 = v66;
        v90.origin.x = v60;
        v90.origin.y = v63;
        v90.size.width = v62;
        v90.size.height = v38;
        MaxY = CGRectGetMaxY(v90);
        if (v80 || MaxY <= v67)
        {
          v64 = v38;
        }

        else
        {
          v69 = [a4 wpKind] == 0;
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

      if (a6 >= v81)
      {
        v72 = [[TSWPColumn alloc] initWithStorage:a4 frameBounds:v60, v63, v62, v64];
        [(TSWPColumn *)v72 setStyleProvider:a10];
        [(TSWPColumn *)v72 setColumnIndex:a6];
        [v84 addObject:v72];
      }

      else
      {
        v72 = [v84 objectAtIndexedSubscript:a6];
        [(TSWPColumn *)v72 setWpBounds:v60, v63, v62, v64];
      }

      -[TSWPColumn setTextIsVertical:](v72, "setTextIsVertical:", [a3 textIsVertical]);
      [(TSWPColumn *)v72 setPageNumber:v31];
      ++a6;
      ++v47;
      --v20;
    }

    while (v20);
  }

  v73 = [a4 wpKind];
  if (!v80 && v73)
  {
    v74 = [v84 count];
    if (v74 > v75)
    {
      [v84 removeObjectsInRange:{v75, v74 - v75}];
    }
  }
}

- (void)deflateTarget:(id)a3 intoHints:(void *)a4 childHints:(id)a5[2] anchoredAttachmentPositions:(id *)a6 topicNumbers:(void *)a7 layoutState:(void *)a8
{
  v79 = *MEMORY[0x277D85DE8];
  v10 = [a3 columns];
  v71 = [v10 count];
  if (v71)
  {
    v11 = 0;
    v73 = a4;
    v70 = v10;
    do
    {
      v12 = [v10 objectAtIndexedSubscript:v11];
      v13 = [a3 columnMetricsForCharIndex:objc_msgSend(v12 outRange:{"startCharIndex"), 0}];
      if (v13)
      {
        v14 = [v13 columnCount];
      }

      else
      {
        v14 = 1;
      }

      v11 += v14;
      v15 = [v10 objectAtIndexedSubscript:v11 - 1];
      [v12 frameBounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [v15 frameBounds];
      MaxX = CGRectGetMaxX(v82);
      [v12 frameBounds];
      MinX = CGRectGetMinX(v83);
      v24 = [v12 startCharIndex];
      v25 = [v15 startCharIndex];
      v26 = [v15 characterCount];
      if (v24 <= v26 + v25)
      {
        v27 = v26 + v25;
      }

      else
      {
        v27 = v24;
      }

      if (v24 >= v26 + v25)
      {
        v28 = v26 + v25;
      }

      else
      {
        v28 = v24;
      }

      v29 = v27 - v28;
      v30 = [v12 anchoredRange];
      v32 = v31;
      v81.location = [v15 anchoredRange];
      v81.length = v33;
      v80.location = v30;
      v80.length = v32;
      v34 = NSUnionRange(v80, v81);
      v35 = [v15 nextWidowPullsDownFromCharIndex];
      v36 = v35;
      if ((v35 - v28 >= v27 - v28 || v35 < v28) && v35 != v27)
      {
        v39 = [MEMORY[0x277D6C290] currentHandler];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager deflateTarget:intoHints:childHints:anchoredAttachmentPositions:topicNumbers:layoutState:]"];
        [v39 handleFailureInFunction:v40 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 657, @"Bad widow location"}];
      }

      v41 = MaxX - MinX;
      v42 = v73[1];
      v43 = v73[2];
      if (v42 >= v43)
      {
        v45 = *v73;
        v46 = v42 - *v73;
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
          std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPTargetHint>>(v73, v47);
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
        *(v49 + 72) = v14;
        v44 = v49 + 80;
        v50 = v49 - v46;
        memcpy((v49 - v46), v45, v46);
        v51 = *v73;
        *v73 = v50;
        v73[1] = v44;
        v73[2] = 0;
        a4 = v73;
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
        *(v42 + 9) = v14;
        a4 = v73;
      }

      v10 = v70;
      *(a4 + 1) = v44;
    }

    while (v11 < v71);
  }

  *a5 = 0;
  a5[1] = 0;
  v52 = [v10 firstObject];
  if ([v52 countLines])
  {
    *a5 = TSWPLineFragment::hintForAttachmentLayout([v52 lineFragmentAtIndex:0]);
  }

  v53 = [v10 lastObject];
  v54 = [v53 countLines];
  if (v54)
  {
    v55 = [v53 lineFragmentAtIndex:v54 - 1];
    if ((*(v55 + 25) & 1) == 0)
    {
      a5[1] = TSWPLineFragment::hintForAttachmentLayout(v55);
    }
  }

  v56 = [a3 currentAnchoredDrawableLayouts];
  v57 = [v56 count];
  if (v57)
  {
    *a6 = [MEMORY[0x277D6C368] dictionaryWithCapacity:v57];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v58 = [v56 countByEnumeratingWithState:&v74 objects:v78 count:16];
    if (v58)
    {
      v59 = *v75;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v75 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v74 + 1) + 8 * i);
          v62 = [objc_msgSend(v61 "info")];
          v63 = MEMORY[0x277CCAE60];
          [v61 alignmentFrame];
          [*a6 setObject:objc_msgSend(v63 forUncopiedKey:{"valueWithCGPoint:"), v62}];
        }

        v58 = [v56 countByEnumeratingWithState:&v74 objects:v78 count:16];
      }

      while (v58);
    }
  }

  if (v71)
  {
    charIndex = self->_cachedTopicNumbers._charIndex;
    if (charIndex != 0x7FFFFFFFFFFFFFFFLL && charIndex >= *(*a4 + 32))
    {
      v65 = [MEMORY[0x277D6C290] currentHandler];
      v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager deflateTarget:intoHints:childHints:anchoredAttachmentPositions:topicNumbers:layoutState:]"];
      [v65 handleFailureInFunction:v66 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 696, @"topic numbers are out of sync with layout"}];
    }
  }

  TSWPTopicNumberHints::operator=(a7, &self->_cachedTopicNumbers);
  TSWPTopicNumberHints::reset(&self->_cachedTopicNumbers);
}

- (void)inflateTarget:(id)a3 fromHints:(const void *)a4 childHint:(id)a5 anchoredAttachmentPositions:(id)a6 topicNumbers:(const void *)a7
{
  v29 = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(a3 "columns")])
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager inflateTarget:fromHints:childHint:anchoredAttachmentPositions:topicNumbers:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 706, @"Newly created target should have 0 columns"}];
  }

  [a3 setAnchoredDrawablesForRelayout:{objc_msgSend(MEMORY[0x277CBEB18], "array")}];
  [a3 columns];
  [(TSWPLayoutManager *)self p_layoutConfigFlagsForTarget:a3];
  [(TSWPStorage *)self->_storage wpKind];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [a6 allKeys];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 drawable];
        v16 = [a3 validatedLayoutForAnchoredDrawable:v15];
        v17 = [a6 objectForKeyedSubscript:v14];
        if (v17)
        {
          [v17 CGPointValue];
          v19 = v18;
          [v16 setInterimPositionX:?];
          [v16 setInterimPositionY:v19];
          [v16 fixTransformFromInterimPosition];
          [objc_msgSend(a3 "anchoredDrawablesForRelayout")];
        }

        else
        {
          v20 = [MEMORY[0x277D6C290] currentHandler];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayoutManager inflateTarget:fromHints:childHint:anchoredAttachmentPositions:topicNumbers:]"];
          [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutManager.mm"), 730, @"invalid nil value for '%s'", "value"}];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  operator new();
}

- (void)destroyLayoutState:(void *)a3
{
  if (a3)
  {
    (*(*a3 + 8))(a3);
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

- (int)p_layoutConfigFlagsForTarget:(id)a3
{
  if ([a3 textIsVertical])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [a3 allowsLastLineTruncation])
  {
    v4 |= 0x20u;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![a3 allowsDescendersToClip])
  {
    v4 |= 4u;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [a3 pushAscendersIntoColumn])
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