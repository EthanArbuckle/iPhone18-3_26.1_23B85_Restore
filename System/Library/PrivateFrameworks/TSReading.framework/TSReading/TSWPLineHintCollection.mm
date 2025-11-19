@interface TSWPLineHintCollection
- (BOOL)checkSubCollectionRange:(_NSRange)a3;
- (TSWPLineHintCollection)initWithContainingCollection:(id)a3 range:(_NSRange)a4 context:(id)a5;
- (_NSRange)hintRangeForColumnIndex:(unint64_t)a3 frameBounds:(CGRect)a4 charIndex:(unint64_t)a5;
- (_NSRange)hintRangeForLineStartingAtHintIndex:(unint64_t)a3;
- (id)descriptionWithStorage:(id)a3;
- (id)newSubCollectionWithRange:(_NSRange)a3;
- (unint64_t)p_columnIndexForHintIndex:(unint64_t)a3;
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

- (TSWPLineHintCollection)initWithContainingCollection:(id)a3 range:(_NSRange)a4 context:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10.receiver = self;
  v10.super_class = TSWPLineHintCollection;
  v8 = [(TSPObject *)&v10 initWithContext:a5];
  if (v8)
  {
    v8->mContainingCollection = a3;
    v8->mHints = ([a3 hints] + 56 * location);
    v8->mHintsCount = length;
    v8->mHasColumnIndices = [a3 hasColumnIndices];
  }

  return v8;
}

- (BOOL)checkSubCollectionRange:(_NSRange)a3
{
  v3 = a3.location + a3.length;
  mHintsCount = self->mHintsCount;
  if (a3.location + a3.length > mHintsCount)
  {
    return 0;
  }

  mHints = self->mHints;
  if ((mHints[a3.location].var2 & 1) == 0)
  {
    return 0;
  }

  v6 = v3 <= a3.location + 1 ? a3.location + 1 : a3.location + a3.length;
  p_var2 = &mHints[a3.location + 1].var2;
  while (++a3.location < v3)
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

- (id)newSubCollectionWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (![(TSWPLineHintCollection *)self checkSubCollectionRange:?])
  {
    return 0;
  }

  v6 = objc_alloc(objc_opt_class());
  v7 = [(TSPObject *)self context];

  return [v6 initWithContainingCollection:self range:location context:{length, v7}];
}

- (unint64_t)p_columnIndexForHintIndex:(unint64_t)a3
{
  if (self->mHintsCount <= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return SHIBYTE(self->mHints[a3].var2);
  }
}

- (_NSRange)hintRangeForColumnIndex:(unint64_t)a3 frameBounds:(CGRect)a4 charIndex:(unint64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (![(TSWPLineHintCollection *)self valid])
  {
LABEL_12:
    v18 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_29;
  }

  v12 = [(TSWPLineHintCollection *)self hints];
  v13 = [(TSWPLineHintCollection *)self hintsCount];
  v14 = v13;
  if (self->mHasColumnIndices)
  {
    if (v13)
    {
      v15 = 0;
      while (1)
      {
        v16 = [(TSWPLineHintCollection *)self p_columnIndexForHintIndex:v15];
        if (v16 >= a3)
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_12;
        }
      }

      v20 = v16;
      goto LABEL_15;
    }
  }

  else if (v13)
  {
    v15 = 0;
    p_size = &v12->var0.size;
    while (*&p_size[1].width < a5)
    {
      ++v15;
      p_size = (p_size + 56);
      if (v13 == v15)
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
      v20 = a3;
    }

    else
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = v15;
    }

    goto LABEL_16;
  }

  v15 = 0;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
  v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:
  v18 = 0;
  if (v20 == a3 && v15 < v14)
  {
    p_var2 = &v12[v15 + 1].var2;
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

- (_NSRange)hintRangeForLineStartingAtHintIndex:(unint64_t)a3
{
  if (![(TSWPLineHintCollection *)self valid])
  {
    goto LABEL_10;
  }

  v5 = [(TSWPLineHintCollection *)self hints];
  v6 = [(TSWPLineHintCollection *)self hintsCount];
  v7 = v6;
  if (v6 <= a3)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLineHintCollection hintRangeForLineStartingAtHintIndex:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineHintCollection.mm"), 182, @"invalid hint index %lu (count = %lu)", a3, v7}];
LABEL_10:
    v10 = 0;
    a3 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  p_var2 = &v5[a3].var2;
  v9 = a3;
  while (v9 <= a3 || (*p_var2 & 8) == 0)
  {
    ++v9;
    p_var2 += 14;
    if (v6 == v9)
    {
      v9 = v6;
      break;
    }
  }

  v10 = v9 - a3;
LABEL_11:
  v13 = a3;
  result.length = v10;
  result.location = v13;
  return result;
}

- (id)descriptionWithStorage:(id)a3
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:{-[TSWPLineHintCollection description](self, "description")}];
  [v5 appendFormat:@" valid=%d hintsCounts=%lu", self->mValid, self->mHintsCount];
  v6 = [a3 length];
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
        v13 = [a3 substringWithRange:?];
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
      [v5 appendFormat:@"\n- [%lu] %p %p %@ %@ - '%@'", v9++, self, a3, v15, NSStringFromCGRect(self->mHints[v8++].var0), v13];
    }

    while (v9 < self->mHintsCount);
  }

  return v5;
}

@end