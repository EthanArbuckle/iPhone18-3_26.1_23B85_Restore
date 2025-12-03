@interface TSWPLineHintCollection
- (BOOL)checkSubCollectionRange:(_NSRange)range;
- (TSWPLineHintCollection)initWithContainingCollection:(id)collection range:(_NSRange)range context:(id)context;
- (_NSRange)hintRangeForColumnIndex:(unint64_t)index frameBounds:(CGRect)bounds charIndex:(unint64_t)charIndex;
- (_NSRange)hintRangeForLineStartingAtHintIndex:(unint64_t)index;
- (id)descriptionWithStorage:(id)storage;
- (id)newSubCollectionWithRange:(_NSRange)range;
- (unint64_t)p_columnIndexForHintIndex:(unint64_t)index;
- (void)dealloc;
@end

@implementation TSWPLineHintCollection

- (void)dealloc
{
  mContainingCollection = self->mContainingCollection;
  if (mContainingCollection)
  {
  }

  else
  {
    free(self->mHints);
  }

  v4.receiver = self;
  v4.super_class = TSWPLineHintCollection;
  [(TSWPLineHintCollection *)&v4 dealloc];
}

- (TSWPLineHintCollection)initWithContainingCollection:(id)collection range:(_NSRange)range context:(id)context
{
  length = range.length;
  location = range.location;
  v10.receiver = self;
  v10.super_class = TSWPLineHintCollection;
  v8 = [(TSPObject *)&v10 initWithContext:context];
  if (v8)
  {
    v8->mContainingCollection = collection;
    v8->mHints = ([collection hints] + 56 * location);
    v8->mHintsCount = length;
    v8->mHasColumnIndices = [collection hasColumnIndices];
  }

  return v8;
}

- (BOOL)checkSubCollectionRange:(_NSRange)range
{
  v3 = range.location + range.length;
  mHintsCount = self->mHintsCount;
  if (range.location + range.length > mHintsCount)
  {
    return 0;
  }

  mHints = self->mHints;
  if ((mHints[range.location].var2 & 1) == 0)
  {
    return 0;
  }

  v6 = v3 <= range.location + 1 ? range.location + 1 : range.location + range.length;
  p_var2 = &mHints[range.location + 1].var2;
  while (++range.location < v3)
  {
    v8 = *p_var2;
    p_var2 += 14;
    if (v8)
    {
      return 0;
    }
  }

  return v6 >= mHintsCount || (mHints[v6].var2 & 1) != 0;
}

- (id)newSubCollectionWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (![(TSWPLineHintCollection *)self checkSubCollectionRange:?])
  {
    return 0;
  }

  v6 = objc_alloc(objc_opt_class());
  context = [(TSPObject *)self context];

  return [v6 initWithContainingCollection:self range:location context:{length, context}];
}

- (unint64_t)p_columnIndexForHintIndex:(unint64_t)index
{
  if (self->mHintsCount <= index)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return SHIBYTE(self->mHints[index].var2);
  }
}

- (_NSRange)hintRangeForColumnIndex:(unint64_t)index frameBounds:(CGRect)bounds charIndex:(unint64_t)charIndex
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (![(TSWPLineHintCollection *)self valid])
  {
LABEL_12:
    v18 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_29;
  }

  hints = [(TSWPLineHintCollection *)self hints];
  hintsCount = [(TSWPLineHintCollection *)self hintsCount];
  v14 = hintsCount;
  if (self->mHasColumnIndices)
  {
    if (hintsCount)
    {
      v15 = 0;
      while (1)
      {
        v16 = [(TSWPLineHintCollection *)self p_columnIndexForHintIndex:v15];
        if (v16 >= index)
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_12;
        }
      }

      indexCopy = v16;
      goto LABEL_15;
    }
  }

  else if (hintsCount)
  {
    v15 = 0;
    p_size = &hints->var0.size;
    while (*&p_size[1].width < charIndex)
    {
      ++v15;
      p_size = (p_size + 56);
      if (hintsCount == v15)
      {
        goto LABEL_12;
      }
    }

    v24 = TSDCenterOfRect(p_size[-1].width, p_size[-1].height, p_size->width, p_size->height);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    if (v24 >= CGRectGetMinX(v26) && (v27.origin.x = x, v27.origin.y = y, v27.size.width = width, v27.size.height = height, v24 <= CGRectGetMaxX(v27)))
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      indexCopy = index;
    }

    else
    {
      indexCopy = 0x7FFFFFFFFFFFFFFFLL;
      v19 = v15;
    }

    goto LABEL_16;
  }

  v15 = 0;
  indexCopy = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
  v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:
  v18 = 0;
  if (indexCopy == index && v15 < v14)
  {
    p_var2 = &hints[v15 + 1].var2;
    v22 = v15;
    while (v14 - 1 != v22)
    {
      ++v22;
      v23 = *p_var2;
      p_var2 += 14;
      if ((v23 & 4) != 0)
      {
        goto LABEL_23;
      }
    }

    v22 = v14;
LABEL_23:
    v18 = v22 - v15;
    v19 = v15;
  }

LABEL_29:
  result.length = v18;
  result.location = v19;
  return result;
}

- (_NSRange)hintRangeForLineStartingAtHintIndex:(unint64_t)index
{
  if (![(TSWPLineHintCollection *)self valid])
  {
    goto LABEL_10;
  }

  hints = [(TSWPLineHintCollection *)self hints];
  hintsCount = [(TSWPLineHintCollection *)self hintsCount];
  v7 = hintsCount;
  if (hintsCount <= index)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLineHintCollection hintRangeForLineStartingAtHintIndex:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineHintCollection.mm"), 182, @"invalid hint index %lu (count = %lu)", index, v7}];
LABEL_10:
    v10 = 0;
    index = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  p_var2 = &hints[index].var2;
  indexCopy = index;
  while (indexCopy <= index || (*p_var2 & 8) == 0)
  {
    ++indexCopy;
    p_var2 += 14;
    if (hintsCount == indexCopy)
    {
      indexCopy = hintsCount;
      break;
    }
  }

  v10 = indexCopy - index;
LABEL_11:
  indexCopy2 = index;
  result.length = v10;
  result.location = indexCopy2;
  return result;
}

- (id)descriptionWithStorage:(id)storage
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:{-[TSWPLineHintCollection description](self, "description")}];
  [v5 appendFormat:@" valid=%d hintsCounts=%lu", self->mValid, self->mHintsCount];
  v6 = [storage length];
  if (self->mHintsCount)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = &self->mHints[v8];
      location = v10->var1.location;
      v11.length = v10->var1.length;
      if (v11.length + location <= v7)
      {
        v13 = [storage substringWithRange:?];
        v14 = &self->mHints[v8];
        location = v14->var1.location;
        v11.length = v14->var1.length;
      }

      else
      {
        v13 = @"<invalid>";
      }

      v11.location = location;
      v15 = NSStringFromRange(v11);
      [v5 appendFormat:@"\n- [%lu] %p %p %@ %@ - '%@'", v9++, self, storage, v15, NSStringFromCGRect(self->mHints[v8++].var0), v13];
    }

    while (v9 < self->mHintsCount);
  }

  return v5;
}

@end