@interface WebTextIterator
- (WebTextIterator)initWithRange:(id)a3;
- (const)currentTextPointer;
- (id)currentNode;
- (id)currentRange;
- (id)currentText;
- (unint64_t)currentTextLength;
- (void)advance;
- (void)dealloc;
@end

@implementation WebTextIterator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebTextIterator;
  [(WebTextIterator *)&v3 dealloc];
}

- (WebTextIterator)initWithRange:(id)a3
{
  v16.receiver = self;
  v16.super_class = WebTextIterator;
  v4 = [(WebTextIterator *)&v16 init];
  if (!v4)
  {
    return v4;
  }

  v4->_private = objc_alloc_init(WebTextIteratorPrivate);
  if (!a3)
  {
    return v4;
  }

  WebCore::makeSimpleRange();
  if (*MEMORY[0x1E69E24F8])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E24F8], v5);
  }

  else
  {
    NonCompact = WebCore::TextIterator::operatorNewSlow(0x100);
  }

  v7 = NonCompact;
  WebCore::TextIterator::TextIterator();
  v8 = v4->_private;
  ptr = v8->_textIterator.__ptr_;
  v8->_textIterator.__ptr_ = v7;
  if (ptr)
  {
    v10 = MEMORY[0x1CCA646A0]();
    bmalloc::api::tzoneFree(v10, v11);
  }

  if (v15)
  {
    if (*(v15 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v15);
      v12 = v14;
      if (!v14)
      {
        return v4;
      }

      goto LABEL_11;
    }

    *(v15 + 7) -= 2;
  }

  v12 = v14;
  if (!v14)
  {
    return v4;
  }

LABEL_11:
  if (*(v12 + 7) != 2)
  {
    *(v12 + 7) -= 2;
    return v4;
  }

  WebCore::Node::removedLastRef(v12);
  return v4;
}

- (void)advance
{
  v3 = self->_private;
  ptr = v3->_textIterator.__ptr_;
  if (ptr)
  {
    WebCore::TextIterator::advance(ptr);
    v3 = self->_private;
  }

  v3->_upconvertedText.m_size = 0;
}

- (id)currentRange
{
  result = self->_private->_textIterator.__ptr_;
  if (result)
  {
    if (!*(result + 12))
    {
      return 0;
    }

    WebCore::TextIterator::range(&v14, result);
    v18 = v14;
    v19 = v15;
    v3 = v16;
    v14 = 0;
    v16 = 0;
    v20 = v3;
    v21 = v17;
    v22 = 1;
    WebCore::createLiveRange();
    result = kit(v23);
    v4 = v23;
    v23 = 0;
    if (v4)
    {
      if (*(v4 + 2) == 1)
      {
        v5 = result;
        (*(*v4 + 8))(v4);
        result = v5;
        if (v22 != 1)
        {
          goto LABEL_20;
        }

        goto LABEL_11;
      }

      --*(v4 + 2);
    }

    if (v22 != 1)
    {
      goto LABEL_20;
    }

LABEL_11:
    v6 = v20;
    v20 = 0;
    if (v6)
    {
      if (*(v6 + 7) == 2)
      {
        v8 = result;
        WebCore::Node::removedLastRef(v6);
        result = v8;
        v7 = v18;
        v18 = 0;
        if (!v7)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      *(v6 + 7) -= 2;
    }

    v7 = v18;
    v18 = 0;
    if (!v7)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (*(v7 + 7) == 2)
    {
      v9 = result;
      WebCore::Node::removedLastRef(v7);
      result = v9;
    }

    else
    {
      *(v7 + 7) -= 2;
    }

LABEL_20:
    v10 = v16;
    v16 = 0;
    if (v10)
    {
      if (*(v10 + 7) == 2)
      {
        v12 = result;
        WebCore::Node::removedLastRef(v10);
        result = v12;
        v11 = v14;
        v14 = 0;
        if (!v11)
        {
          return result;
        }

        goto LABEL_24;
      }

      *(v10 + 7) -= 2;
    }

    v11 = v14;
    v14 = 0;
    if (!v11)
    {
      return result;
    }

LABEL_24:
    if (*(v11 + 7) == 2)
    {
      v13 = result;
      WebCore::Node::removedLastRef(v11);
      return v13;
    }

    else
    {
      *(v11 + 7) -= 2;
    }
  }

  return result;
}

- (const)currentTextPointer
{
  v2 = *(self + 1);
  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 152);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 144);
  if ((v4 & 0x100000000) == 0)
  {
    return v5;
  }

  v6 = (v2 + 28);
  if (*(v2 + 28))
  {
    return *(*(self + 1) + 16);
  }

  if (v4 <= *(v2 + 24))
  {
LABEL_11:
    v11 = v5 + v4;
    if (v5 != v11)
    {
      v12 = *(v2 + 16);
      v13 = *(v2 + 28);
      if (v4 < 8uLL || __CFADD__(v13, v4 - 1) || (v4 - 1) >> 32 || ((v17 = v2 + 32, v18 = v12 + 2 * v13, v19 = v12 + 2 * (v4 + v13), v6 < v19) ? (v20 = v18 >= v17) : (v20 = 1), v20 ? (v21 = 0) : (v21 = 1), v19 > v5 ? (v22 = v18 >= v11) : (v22 = 1), v22 ? (v23 = 0) : (v23 = 1), v17 > v5 ? (v24 = v6 >= v11) : (v24 = 1), !v24 || (v21 & 1) != 0 || (v23 & 1) != 0))
      {
        v14 = *(v2 + 28);
        v15 = v5;
      }

      else
      {
        if (v4 < 0x20uLL)
        {
          v25 = 0;
          v26 = *(v2 + 28);
          goto LABEL_46;
        }

        v25 = v4 - (v4 & 0x1F);
        v26 = v13 + v25;
        v27 = (v5 + 8);
        v28 = *(v2 + 28);
        v29 = v25;
        do
        {
          v30 = (v12 + 2 * v28);
          v31 = *v27[-2].i8;
          v32 = vmovl_u8(*v27);
          v33 = vmovl_high_u8(*v27->i8);
          *v30 = vmovl_u8(*v31.i8);
          v30[1] = vmovl_high_u8(v31);
          v30[2] = v32;
          v30[3] = v33;
          v27 += 4;
          v28 += 32;
          v29 -= 32;
        }

        while (v29);
        *v6 = v28;
        if ((v4 & 0x1F) == 0)
        {
          return *(*(self + 1) + 16);
        }

        if ((v4 & 0x1Fu) >= 8uLL)
        {
LABEL_46:
          v34 = v4 - (v4 & 7);
          v14 = v13 + v34;
          v15 = (v5 + v34);
          v35 = (v5 + v25);
          v36 = v25 + (v4 & 7) - v4;
          v37 = v13 + v25;
          do
          {
            v38 = *v35++;
            *(v12 + 2 * v37) = vmovl_u8(v38);
            v37 += 8;
            v26 += 8;
            v36 += 8;
          }

          while (v36);
          *v6 = v26;
          if ((v4 & 7) == 0)
          {
            return *(*(self + 1) + 16);
          }

          goto LABEL_14;
        }

        v15 = (v5 + v25);
        v14 = v13 + v25;
      }

      do
      {
LABEL_14:
        v16 = *v15;
        v15 = (v15 + 1);
        *(v12 + 2 * v14++) = v16;
        *v6 = v14;
      }

      while (v15 != v11);
    }

    return *(*(self + 1) + 16);
  }

  if (!(v4 >> 31))
  {
    v7 = self;
    v8 = *(v2 + 16);
    v10 = WTF::fastMalloc((2 * v4));
    *(v2 + 24) = v4;
    *(v2 + 16) = v10;
    self = v7;
    if (v8)
    {
      if (v10 == v8)
      {
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      WTF::fastFree(v8, v9);
      self = v7;
    }

    goto LABEL_11;
  }

  __break(0xC471u);
  return self;
}

- (unint64_t)currentTextLength
{
  ptr = self->_private->_textIterator.__ptr_;
  if (ptr)
  {
    return *(ptr + 38);
  }

  else
  {
    return 0;
  }
}

- (id)currentNode
{
  result = self->_private->_textIterator.__ptr_;
  if (result)
  {
    v3 = WebCore::TextIterator::node(result);

    return kit(v3);
  }

  return result;
}

- (id)currentText
{
  ptr = self->_private->_textIterator.__ptr_;
  if (!ptr)
  {
    return &stru_1F472E7E8;
  }

  v4 = *(ptr + 18);
  v3 = *(ptr + 19);
  v9 = v4;
  v10 = v3;
  v11 = BYTE4(v3);
  WTF::StringView::createNSString(&v12, &v9);
  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  return v5;
}

@end