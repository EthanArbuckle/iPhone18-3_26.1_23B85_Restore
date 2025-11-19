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
  std::vector<std::shared_ptr<TSUStringChunk>>::clear[abi:ne200100](&self->_chunks);
  v3.receiver = self;
  v3.super_class = TSUChunkedString;
  [(TSUChunkedString *)&v3 dealloc];
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  if (self->_length <= a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"character index out of bounds"];
  }

  v5 = *(self->_chunks.__begin_ + 2 * p_chunkIndexForCharacterIndex(a3, &self->_chunks.__begin_));
  return *(v5 + a3 - *v5 + 12);
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > self->_length)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"range out of bounds"];
  }

  v8 = p_chunkIndexForCharacterIndex(location, &self->_chunks.__begin_);
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
  if (a3.location + a3.length > self->_length)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"range out of bounds"];
  }

  v16 = [a4 length];
  v8 = length;
  if ([a4 length] < length)
  {
    v8 = [a4 length];
  }

  v9 = p_chunkIndexForCharacterIndex(location, &self->_chunks.__begin_);
  v17 = v8;
  if (v8)
  {
    v10 = location;
    while (1)
    {
      begin = self->_chunks.__begin_;
      v12 = begin[2 * v9];
      v13 = *v12;
      v19.length = v12[2];
      v19.location = *v12;
      v20.location = v10;
      v20.length = v8;
      v14 = NSIntersectionRange(v19, v20);
      [a4 getCharacters:begin[2 * v9] + 2 * (v14.location - v13) + 24 range:{v10 - location, v14.length}];
      v10 += v14.length;
      v8 -= v14.length;
      if (!v8)
      {
        break;
      }

      ++v9;
    }
  }

  if ((v16 - length) < 1)
  {
    if (((v16 - length) & 0x8000000000000000) != 0)
    {

      [(TSUChunkedString *)self p_deleteCharactersInRange:v17 + location chunkIndex:length - v17, v9];
    }
  }

  else
  {
    v15 = v16 - v17;
    if (v17 + location == self->_length)
    {

      [(TSUChunkedString *)self p_appendRange:v17 fromString:v15, a4];
    }

    else
    {

      [(TSUChunkedString *)self p_insertCharactersInRange:v17 fromString:v15 atIndex:a4 chunkIndex:?];
    }
  }
}

- (void)insertString:(id)a3 atIndex:(unint64_t)a4
{
  if (self->_length < a4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"range out of bounds"];
  }

  if ([a3 length])
  {
    if (self->_length == a4)
    {

      [(TSUChunkedString *)self appendString:a3];
    }

    else
    {
      v7 = p_chunkIndexForCharacterIndex(a4, &self->_chunks.__begin_);
      v8 = [a3 length];

      [(TSUChunkedString *)self p_insertCharactersInRange:0 fromString:v8 atIndex:a3 chunkIndex:a4, v7];
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
    v6 = p_chunkIndexForCharacterIndex(location, &self->_chunks.__begin_);

    [(TSUChunkedString *)self p_deleteCharactersInRange:location chunkIndex:length, v6];
  }
}

- (void)appendString:(id)a3
{
  v5 = [a3 length];

  [(TSUChunkedString *)self p_appendRange:0 fromString:v5, a3];
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)p_appendRange:(_NSRange)a3 fromString:(id)a4
{
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    p_chunks = &self->_chunks;
    do
    {
      end = p_chunks->__end_;
      if (end == p_chunks->__begin_ || ((v10 = *(end - 2), (v11 = *(end - 1)) == 0) ? (v19 = v10) : (atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed), *&v19 = v10, *(&v19 + 1) = v11), v12 = *(v10 + 8), v13 = *(v10 + 16), v14 = v12 - v13, v12 == v13))
      {
        operator new();
      }

      if (v14 <= 0)
      {
        v15 = +[TSUAssertionHandler currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUChunkedString(Private) p_appendRange:fromString:]"];
        [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUChunkedString.mm"), 374, @"should have allocated a chunk with available space at this point"}];
        v10 = v19;
      }

      if (length >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = length;
      }

      [a4 getCharacters:v10 + 2 * *(v10 + 16) + 24 range:{location, v17, v18}];
      *(v19 + 16) += v17;
      self->_length += v17;
      if (*(&v19 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
      }

      location += v17;
      length -= v17;
    }

    while (length);
  }
}

- (void)p_insertCharactersInRange:(_NSRange)a3 fromString:(id)a4 atIndex:(unint64_t)a5 chunkIndex:(unint64_t)a6
{
  v6 = a6;
  length = a3.length;
  location = a3.location;
  v10 = self;
  p_chunks = &self->_chunks;
  begin = self->_chunks.__begin_;
  if (self->_chunks.__end_ == begin)
  {
    operator new();
  }

  v13 = begin[a6];
  v14 = *(&begin[a6] + 1);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    v83 = v13;
    v15 = v13;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v83 = v13;
    v15 = v13;
    if (!v13)
    {
LABEL_6:
      v16 = +[TSUAssertionHandler currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUChunkedString(Private) p_insertCharactersInRange:fromString:atIndex:chunkIndex:]"];
      [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUChunkedString.mm"), 405, @"invalid nil value for '%s'", "chunk.get()"}];
      v15 = v83;
    }
  }

  v18 = v15[2];
  if (v15[1] - v18 < length)
  {
    v19 = v6;
    v79 = location;
    v82 = a5;
    v20 = (v18 + length);
    if (vcvtps_u32_f32(v20 / v10->_chunkLength) != 1)
    {
      operator new();
    }

    v78 = v10;
    v21 = *(p_chunks->__begin_ + v6);
    v22 = *(p_chunks->__begin_ + 2 * v6 + 1);
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = vcvtps_u32_f32(v20 / 1uLL);
    v24 = *(&v83 + 1);
    v84 = v21;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      v25 = v84;
    }

    else
    {
      v25 = v21;
    }

    v80 = length;
    v30 = v82 - *v25;
    v31 = v30 - v23;
    if (v30 <= v23)
    {
      v36 = 0;
      v31 = v82 - *v25;
      v32 = v6;
    }

    else
    {
      v32 = v6 + 1;
      v33 = p_chunks->__begin_ + 16 * v6 + 16;
      v34 = *v33;
      v35 = *(v33 + 8);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memmove(v34 + 3, v25 + 2 * v23 + 24, 2 * v31);
      v34[2] += v31;
      v36 = v23 - v30;
      *v34 = *v25 + v23 - v30 + v25[2];
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        v25 = v84;
      }

      v6 = v19;
    }

    v37 = v25[2];
    v38 = v37 - v30;
    if (v37 <= v30)
    {
      v38 = 0;
      v41 = 0;
    }

    else
    {
      v39 = malloc_type_malloc(2 * v38, 0x1000040BDFB0063uLL);
      v40 = (v84 + 2 * v30 + 24);
      v41 = v39;
      memmove(v39, v40, 2 * v38);
      v36 -= v38;
      v42 = p_chunks->__begin_ + 16 * v6;
      v44 = *(v42 + 16);
      v43 = *(v42 + 24);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        *v44 -= v38;
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      else
      {
        *v44 -= v38;
      }
    }

    *(v84 + 16) += v36;
    v45 = *(p_chunks->__begin_ + v32);
    v46 = *(p_chunks->__begin_ + 2 * v32 + 1);
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    v47 = *(&v84 + 1);
    v83 = v45;
    v77 = v41;
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      v48 = v83;
    }

    else
    {
      v48 = v45;
    }

    v49 = *v48;
    v50 = v80;
    v51 = v79 - v82;
    while (1)
    {
      v52 = *(p_chunks->__begin_ + v32);
      v53 = *(p_chunks->__begin_ + 2 * v32 + 1);
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
      }

      v54 = *(&v83 + 1);
      v83 = v52;
      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        v55 = v83;
      }

      else
      {
        v55 = v52;
      }

      v56 = v23 - *(v55 + 16);
      if (v56)
      {
        v58 = v50 >= v56 ? v23 - *(v55 + 16) : v50;
        [a4 getCharacters:v55 + 2 * v31 + 24 range:{v51 + v82, v58}];
        *v83 = v49;
        v57 = *(v83 + 16) + v58;
        *(v83 + 16) = v57;
        v82 += v58;
        v50 -= v58;
      }

      else
      {
        v57 = v23;
      }

      v31 = 0;
      v49 += v57;
      if (!v50)
      {
        break;
      }

      ++v32;
    }

    if (!v41)
    {
      goto LABEL_75;
    }

    v59 = *(p_chunks->__begin_ + v32);
    v60 = *(p_chunks->__begin_ + 2 * v32 + 1);
    if (v60)
    {
      atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
    }

    v61 = *(&v83 + 1);
    v83 = v59;
    if (v61)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      v62 = v83;
      if (!v38)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v62 = v59;
      if (!v38)
      {
LABEL_74:
        free(v77);
LABEL_75:
        v6 = v32;
        length = v80;
        v10 = v78;
        goto LABEL_76;
      }
    }

    v63 = *v62;
    v64 = v62[2] + *v62;
    v65 = v64;
    while (1)
    {
      v66 = *(p_chunks->__begin_ + v32);
      v67 = *(p_chunks->__begin_ + 2 * v32 + 1);
      if (v67)
      {
        atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
      }

      v68 = *(&v83 + 1);
      v83 = v66;
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        v69 = v83;
      }

      else
      {
        v69 = v66;
      }

      v70 = *(v69 + 16);
      if (v23 == v70)
      {
        v71 = v23;
      }

      else
      {
        v72 = v38 >= v23 - v70 ? v23 - v70 : v38;
        memcpy((v69 + 2 * v70 + 24), &v77[2 * (v65 - v64)], 2 * v72);
        *v83 = v63;
        v71 = *(v83 + 16) + v72;
        *(v83 + 16) = v71;
        v65 += v72;
        v38 -= v72;
      }

      v63 += v71;
      if (!v38)
      {
        break;
      }

      ++v32;
    }

    goto LABEL_74;
  }

  v26 = a5 - *v15;
  v27 = v18 > v26;
  v28 = v18 - v26;
  if (v27 && length != 0)
  {
    memmove(v15 + 2 * v26 + 2 * length + 24, v15 + 2 * v26 + 24, 2 * v28);
    v15 = v83;
  }

  [a4 getCharacters:v15 + 2 * v26 + 24 range:{location, length}];
  *(v83 + 16) += length;
LABEL_76:
  v73 = (p_chunks->__end_ - p_chunks->__begin_) >> 4;
  if (v73 > v6 + 1)
  {
    v74 = ~v6 + v73;
    v75 = (p_chunks->__begin_ + 16 * v6 + 16);
    do
    {
      v76 = *v75;
      v75 += 2;
      *v76 += length;
      --v74;
    }

    while (v74);
  }

  v10->_length += length;
  if (*(&v83 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v83 + 1));
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
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(&v27, p_chunks->__begin_ + a4 + 1, p_chunks->__end_, p_chunks->__begin_ + 16 * a4);
        v19 = v18;
        end = p_chunks->__end_;
        if (end != v18)
        {
          do
          {
            v21 = *(end - 1);
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
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
                std::__shared_weak_count::__release_shared[abi:ne200100](v39);
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
                std::__shared_weak_count::__release_shared[abi:ne200100](v41);
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
                std::__shared_weak_count::__release_shared[abi:ne200100](v41);
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

      std::vector<std::shared_ptr<TSUStringChunk>>::erase(&self->_chunks, self->_chunks.__begin_ + 16 * location + 16 * v34, self->_chunks.__begin_ + v35);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if (v39)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }
    }
  }
}

@end