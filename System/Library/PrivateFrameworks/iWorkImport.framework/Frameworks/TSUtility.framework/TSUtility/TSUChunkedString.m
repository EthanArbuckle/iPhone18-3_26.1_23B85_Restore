@interface TSUChunkedString
- (TSUChunkedString)initWithChunkLength:(unint64_t)a3;
- (id).cxx_construct;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)appendString:(id)a3;
- (void)dealloc;
- (void)deleteCharactersInRange:(_NSRange)a3;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
- (void)insertString:(id)a3 atIndex:(unint64_t)a4;
- (void)p_appendRange:(_NSRange)a3 fromString:(id)a4;
- (void)p_compactChunksInRange:(_NSRange)a3;
- (void)p_deleteCharactersInRange:(_NSRange)a3 chunkIndex:(unint64_t)a4;
- (void)p_insertCharactersInRange:(_NSRange)a3 fromString:(id)a4 atIndex:(unint64_t)a5 chunkIndex:(unint64_t)a6;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
@end

@implementation TSUChunkedString

- (TSUChunkedString)initWithChunkLength:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TSUChunkedString;
  result = [(TSUChunkedString *)&v5 init];
  if (result)
  {
    result->_chunkLength = a3;
  }

  return result;
}

- (void)dealloc
{
  sub_27706615C(&self->_chunks);
  v3.receiver = self;
  v3.super_class = TSUChunkedString;
  [(TSUChunkedString *)&v3 dealloc];
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  length = self->_length;
  if (length <= a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"character index out of bounds (%lu >= %lu)", a3, length}];
  }

  v6 = *(self->_chunks.__begin_ + 2 * sub_277066254(a3, &self->_chunks.__begin_));
  return *(v6 + a3 - *v6 + 12);
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > self->_length)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"range out of bounds"];
  }

  v8 = sub_277066254(location, &self->_chunks.__begin_);
  if (length)
  {
    v9 = 16 * v8;
    do
    {
      v10 = *(self->_chunks.__begin_ + v9);
      v11 = location - *v10;
      if (length >= v10[2] - v11)
      {
        v12 = v10[2] - v11;
      }

      else
      {
        v12 = length;
      }

      memmove(a3, v10 + 2 * v11 + 24, 2 * v12);
      a3 += v12;
      location += v12;
      v9 += 16;
      length -= v12;
    }

    while (length);
  }
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v21 = a4;
  if (location + length > self->_length)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"range out of bounds"];
  }

  v7 = [v21 length];
  v8 = [v21 length];
  v19 = v7;
  v20 = length;
  if (v8 >= length)
  {
    v9 = length;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_277066254(location, &self->_chunks.__begin_);
  v11 = v10;
  if (v9)
  {
    v12 = location;
    v13 = v9;
    while (1)
    {
      v14 = (self->_chunks.__begin_ + 16 * v11);
      v15 = **v14;
      v23.length = (*v14)[2];
      v23.location = v15;
      v24.location = v12;
      v24.length = v13;
      v16 = NSIntersectionRange(v23, v24);
      v10 = [v21 getCharacters:*v14 + 2 * (v16.location - v15) + 24 range:{v12 - location, v16.length}];
      v12 += v16.length;
      v13 -= v16.length;
      if (!v13)
      {
        break;
      }

      ++v11;
    }
  }

  if ((v19 - v20) < 1)
  {
    v18 = v21;
    if (((v19 - v20) & 0x8000000000000000) != 0)
    {
      v10 = [(TSUChunkedString *)self p_deleteCharactersInRange:v9 + location chunkIndex:v20 - v9, v11];
      v18 = v21;
    }
  }

  else
  {
    v17 = v19 - v9;
    if (v9 + location == self->_length)
    {
      v10 = [(TSUChunkedString *)self p_appendRange:v9 fromString:v17, v21];
    }

    else
    {
      v10 = [(TSUChunkedString *)self p_insertCharactersInRange:v9 fromString:v17 atIndex:v21 chunkIndex:v9 + location, v11];
    }

    v18 = v21;
  }

  MEMORY[0x2821F96F8](v10, v18);
}

- (void)insertString:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if (self->_length < a4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"range out of bounds"];
  }

  if ([v6 length])
  {
    if (self->_length == a4)
    {
      [(TSUChunkedString *)self appendString:v6];
    }

    else
    {
      -[TSUChunkedString p_insertCharactersInRange:fromString:atIndex:chunkIndex:](self, "p_insertCharactersInRange:fromString:atIndex:chunkIndex:", 0, [v6 length], v6, a4, sub_277066254(a4, &self->_chunks.__begin_));
    }
  }
}

- (void)deleteCharactersInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length > self->_length)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"range out of bounds"];
  }

  if (length)
  {
    v6 = sub_277066254(location, &self->_chunks.__begin_);

    [(TSUChunkedString *)self p_deleteCharactersInRange:location chunkIndex:length, v6];
  }
}

- (void)appendString:(id)a3
{
  v4 = a3;
  -[TSUChunkedString p_appendRange:fromString:](self, "p_appendRange:fromString:", 0, [v4 length], v4);
}

- (void)p_appendRange:(_NSRange)a3 fromString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v19 = a4;
  if (length)
  {
    v7 = 0x27A700000uLL;
    do
    {
      end = self->_chunks.__end_;
      if (end == self->_chunks.__begin_ || ((v9 = *(end - 2), (v10 = *(end - 1)) == 0) ? (v20 = v9) : (atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed), *&v20 = v9, *(&v20 + 1) = v10), v11 = *(v9 + 8), v12 = *(v9 + 16), v13 = v11 - v12, v11 == v12))
      {
        operator new();
      }

      if (v13 <= 0)
      {
        v14 = *(v7 + 3504);
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUChunkedString p_appendRange:fromString:]"];
        v16 = v7;
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUChunkedString.mm"];
        [v14 handleFailureInFunction:v15 file:v17 lineNumber:331 isFatal:0 description:"should have allocated a chunk with available space at this point"];

        v7 = v16;
        [*(v16 + 3504) logBacktraceThrottled];
        v9 = v20;
      }

      if (length >= v13)
      {
        v18 = v13;
      }

      else
      {
        v18 = length;
      }

      [v19 getCharacters:v9 + 2 * *(v9 + 16) + 24 range:{location, v18}];
      *(v20 + 16) += v18;
      self->_length += v18;
      if (*(&v20 + 1))
      {
        sub_2770679A4(*(&v20 + 1));
      }

      location += v18;
      length -= v18;
    }

    while (length);
  }
}

- (void)p_insertCharactersInRange:(_NSRange)a3 fromString:(id)a4 atIndex:(unint64_t)a5 chunkIndex:(unint64_t)a6
{
  length = a3.length;
  location = a3.location;
  v79 = a4;
  p_chunks = &self->_chunks;
  begin = self->_chunks.__begin_;
  if (self->_chunks.__end_ == begin)
  {
    operator new();
  }

  v12 = begin[a6];
  v13 = *(&begin[a6] + 1);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v80 = v12;
    v14 = v12;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v80 = v12;
    v14 = v12;
    if (!v12)
    {
LABEL_6:
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUChunkedString p_insertCharactersInRange:fromString:atIndex:chunkIndex:]"];
      v16 = self;
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUChunkedString.mm"];
      [TSUAssertionHandler handleFailureInFunction:v15 file:v17 lineNumber:358 isFatal:0 description:"invalid nil value for '%{public}s'", "chunk"];

      +[TSUAssertionHandler logBacktraceThrottled];
      self = v16;
      v14 = v80;
    }
  }

  v18 = v14[2];
  if (v14[1] - v18 < length)
  {
    v77 = a6;
    v19 = (v18 + length);
    if (vcvtps_u32_f32(v19 / self->_chunkLength) != 1)
    {
      operator new();
    }

    v75 = self;
    v20 = *(p_chunks->__begin_ + a6);
    v21 = *(p_chunks->__begin_ + 2 * a6 + 1);
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = vcvtps_u32_f32(v19 / 1uLL);
    v23 = *(&v80 + 1);
    v81 = v20;
    if (v23)
    {
      sub_2770679A4(v23);
      v24 = v81;
    }

    else
    {
      v24 = v20;
    }

    v76 = length;
    v29 = a5;
    v30 = a5 - *v24;
    v31 = v30 - v22;
    if (v30 <= v22)
    {
      v36 = 0;
      v31 = v30;
      v32 = v77;
    }

    else
    {
      v32 = a6 + 1;
      v33 = p_chunks->__begin_ + 16 * a6 + 16;
      v34 = *v33;
      v35 = *(v33 + 8);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memmove(v34 + 3, v24 + 2 * v22 + 24, 2 * v31);
      v34[2] += v31;
      v36 = v22 - v30;
      *v34 = *v24 + v22 - v30 + v24[2];
      if (v35)
      {
        sub_2770679A4(v35);
        v24 = v81;
      }
    }

    v37 = v24[2];
    v38 = v37 - v30;
    if (v37 <= v30)
    {
      v38 = 0;
      v74 = 0;
    }

    else
    {
      v74 = malloc_type_malloc(2 * v38, 0x1000040BDFB0063uLL);
      memmove(v74, (v81 + 2 * v30 + 24), 2 * v38);
      v36 -= v38;
      v39 = p_chunks->__begin_ + 16 * v77;
      v41 = *(v39 + 16);
      v40 = *(v39 + 24);
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        *v41 -= v38;
        sub_2770679A4(v40);
      }

      else
      {
        *v41 -= v38;
      }
    }

    *(v81 + 16) += v36;
    v42 = *(p_chunks->__begin_ + v32);
    v43 = *(p_chunks->__begin_ + 2 * v32 + 1);
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = *(&v81 + 1);
    v80 = v42;
    if (v44)
    {
      sub_2770679A4(v44);
      v45 = v80;
    }

    else
    {
      v45 = v42;
    }

    v46 = *v45;
    v47 = location - v29;
    v48 = v76;
    while (1)
    {
      v49 = *(p_chunks->__begin_ + v32);
      v50 = *(p_chunks->__begin_ + 2 * v32 + 1);
      if (v50)
      {
        atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
      }

      v51 = *(&v80 + 1);
      v80 = v49;
      if (v51)
      {
        sub_2770679A4(v51);
        v52 = v80;
      }

      else
      {
        v52 = v49;
      }

      v53 = v22 - *(v52 + 16);
      if (v53)
      {
        v55 = v48 >= v53 ? v22 - *(v52 + 16) : v48;
        [v79 getCharacters:v52 + 2 * v31 + 24 range:{v47 + v29, v55}];
        *v80 = v46;
        v54 = *(v80 + 16) + v55;
        *(v80 + 16) = v54;
        v29 += v55;
        v48 -= v55;
      }

      else
      {
        v54 = v22;
      }

      v31 = 0;
      v46 += v54;
      if (!v48)
      {
        break;
      }

      ++v32;
    }

    if (!v74)
    {
      goto LABEL_74;
    }

    v56 = *(p_chunks->__begin_ + v32);
    v57 = *(p_chunks->__begin_ + 2 * v32 + 1);
    if (v57)
    {
      atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
    }

    v58 = *(&v80 + 1);
    v80 = v56;
    if (v58)
    {
      sub_2770679A4(v58);
      v59 = v80;
      if (!v38)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v59 = v56;
      if (!v38)
      {
LABEL_73:
        free(v74);
LABEL_74:
        a6 = v32;
        self = v75;
        length = v76;
        goto LABEL_75;
      }
    }

    v60 = *v59;
    v61 = v59[2] + *v59;
    v62 = v61;
    while (1)
    {
      v63 = *(p_chunks->__begin_ + v32);
      v64 = *(p_chunks->__begin_ + 2 * v32 + 1);
      if (v64)
      {
        atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
      }

      v65 = *(&v80 + 1);
      v80 = v63;
      if (v65)
      {
        sub_2770679A4(v65);
        v66 = v80;
      }

      else
      {
        v66 = v63;
      }

      v67 = *(v66 + 16);
      if (v22 == v67)
      {
        v68 = v22;
      }

      else
      {
        v69 = v38 >= v22 - v67 ? v22 - v67 : v38;
        memcpy((v66 + 2 * v67 + 24), &v74[2 * (v62 - v61)], 2 * v69);
        *v80 = v60;
        v68 = *(v80 + 16) + v69;
        *(v80 + 16) = v68;
        v62 += v69;
        v38 -= v69;
      }

      v60 += v68;
      if (!v38)
      {
        break;
      }

      ++v32;
    }

    goto LABEL_73;
  }

  v25 = a5 - *v14;
  v26 = v18 > v25;
  v27 = v18 - v25;
  if (v26 && length != 0)
  {
    memmove(v14 + 2 * v25 + 2 * length + 24, v14 + 2 * v25 + 24, 2 * v27);
    v14 = v80;
  }

  [v79 getCharacters:v14 + 2 * v25 + 24 range:{location, length}];
  *(v80 + 16) += length;
LABEL_75:
  v70 = (p_chunks->__end_ - p_chunks->__begin_) >> 4;
  if (v70 > a6 + 1)
  {
    v71 = ~a6 + v70;
    v72 = (p_chunks->__begin_ + 16 * a6 + 16);
    do
    {
      v73 = *v72;
      v72 += 2;
      *v73 += length;
      --v71;
    }

    while (v71);
  }

  self->_length += length;
  if (*(&v80 + 1))
  {
    sub_2770679A4(*(&v80 + 1));
  }
}

- (void)p_deleteCharactersInRange:(_NSRange)a3 chunkIndex:(unint64_t)a4
{
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    v7 = 0;
    v26 = self;
    p_chunks = &self->_chunks;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v10 = (p_chunks->__begin_ + 16 * a4);
      v28.location = **v10;
      v28.length = (*v10)[2];
      v29.location = location;
      v29.length = length;
      v11 = NSIntersectionRange(v28, v29);
      v12 = *v10;
      v13 = **v10;
      v14 = (*v10)[2];
      v15 = v11.location - v13 + v11.length;
      if (v11.length)
      {
        v16 = v14 > v15;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        memmove(v12 + 2 * (v11.location - v13) + 24, v12 + 2 * v15 + 24, 2 * (v14 - v15));
        v12 = *v10;
        v13 = **v10;
        v14 = (*v10)[2];
      }

      *v12 = v13 - v7;
      v17 = v14 - v11.length;
      v12[2] = v17;
      if (v17)
      {
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = a4;
        }

        ++a4;
      }

      else
      {
        sub_277067E58(&v27, p_chunks->__begin_ + a4 + 1, p_chunks->__end_, p_chunks->__begin_ + 16 * a4);
        v19 = v18;
        end = p_chunks->__end_;
        if (end != v18)
        {
          do
          {
            v21 = *(end - 1);
            if (v21)
            {
              sub_2770679A4(v21);
            }

            end -= 16;
          }

          while (end != v19);
        }

        p_chunks->__end_ = v19;
      }

      location += v11.length;
      v7 += v11.length;
      length -= v11.length;
    }

    while (length);
    self = v26;
  }

  else
  {
    v7 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v22 = (self->_chunks.__end_ - self->_chunks.__begin_) >> 4;
  v23 = v22 - a4;
  if (v22 > a4)
  {
    v24 = (self->_chunks.__begin_ + 16 * a4);
    do
    {
      v25 = *v24;
      v24 += 2;
      *v25 -= v7;
      --v23;
    }

    while (v23);
  }

  self->_length -= v7;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(TSUChunkedString *)self p_compactChunksInRange:?];
  }
}

- (void)p_compactChunksInRange:(_NSRange)a3
{
  if (a3.length)
  {
    if (a3.location >= a3.location + a3.length)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v4 = (self->_chunks.__begin_ + 16 * a3.location);
      length = a3.length;
      do
      {
        v6 = *v4;
        v4 += 2;
        v3 += *(v6 + 16);
        --length;
      }

      while (length);
    }

    chunkLength = self->_chunkLength;
    if (v3 + (chunkLength >> 2) - 1 < chunkLength * (a3.length - 1))
    {
      v8 = chunkLength;
      begin = self->_chunks.__begin_;
      v10 = &begin[16 * a3.location];
      v12 = *v10;
      v11 = *(v10 + 1);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        begin = self->_chunks.__begin_;
      }

      v13 = v12[2];
      location = a3.location;
      v14 = a3.location + 1;
      v15 = &begin[16 * a3.location + 16];
      v17 = *v15;
      v16 = *(v15 + 1);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = v12[2];
      v41 = v16;
      v39 = v11;
      v34 = vcvtps_u32_f32(v3 / v8);
      v35 = a3.location + a3.length;
      if (v18 < v3)
      {
        v19 = v12 + 2 * v13 + 24;
        v20 = (v17 + 3);
        v37 = *v12;
        v38 = a3.location;
        do
        {
          v21 = v12[1];
          v22 = v12[2];
          v23 = v21 - v22;
          v24 = v17[2];
          if (v24 >= v21 - v22)
          {
            v25 = v21 - v22;
          }

          else
          {
            v25 = v17[2];
          }

          if (v25)
          {
            memmove(v19, v20, 2 * v25);
            v19 += 2 * v25;
            v20 += 2 * v25;
            v12[2] += v25;
            v17[2] -= v25;
            v18 += v25;
          }

          if (v18 < v3)
          {
            if (v12[1] == v12[2])
            {
              ++v38;
              v26 = self->_chunks.__begin_ + 16 * v38;
              v12 = *v26;
              v27 = *(v26 + 1);
              if (v27)
              {
                atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v39)
              {
                sub_2770679A4(v39);
              }

              *v12 = v18 + v37;
              v19 = (v12 + 3);
              v39 = v27;
            }

            if (v24 <= v23)
            {
              ++v14;
              v28 = self->_chunks.__begin_ + 16 * v14;
              v17 = *v28;
              v29 = v28[1];
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v41)
              {
                sub_2770679A4(v41);
              }

              v20 = (v17 + 3);
              v41 = v29;
            }

            if (v17 == v12)
            {
              v30 = v17 + 3;
              v31 = v17[2];
              memmove(v17 + 3, v20, 2 * v31);
              ++v14;
              v32 = self->_chunks.__begin_ + 16 * v14;
              v17 = *v32;
              v33 = v32[1];
              if (v33)
              {
                atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v41)
              {
                sub_2770679A4(v41);
              }

              v18 += v31;
              v20 = (v17 + 3);
              v41 = v33;
              v19 = v30 + 2 * v31;
            }
          }
        }

        while (v18 < v3);
      }

      sub_2770678D4(&self->_chunks, self->_chunks.__begin_ + 16 * location + 16 * v34, self->_chunks.__begin_ + v35);
      if (v41)
      {
        sub_2770679A4(v41);
      }

      if (v39)
      {

        sub_2770679A4(v39);
      }
    }
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 2) = 0;
  return self;
}

@end