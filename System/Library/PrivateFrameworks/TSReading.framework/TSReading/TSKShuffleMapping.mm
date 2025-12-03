@interface TSKShuffleMapping
- (TSKShuffleMapping)initWithStartIndex:(unsigned __int16)index endIndex:(unsigned __int16)endIndex mapping:(unsigned __int16 *)mapping;
- (id)copyInverse;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForMovedIndicesStartingAtIndex:(unsigned __int16)index destinationIndex:(unsigned __int16)destinationIndex numberOfIndices:(unsigned __int16)indices vertical:(BOOL)vertical;
- (unsigned)mapIndex:(unsigned __int16)index;
- (unsigned)reverseMapIndex:(unsigned __int16)index;
- (void)dealloc;
- (void)enumerateMappingRange:(_NSRange)range usingBlock:(id)block;
- (void)insert:(unsigned __int16)insert indicesAtIndex:(unsigned __int16)index insertingBefore:(BOOL)before;
- (void)remove:(unsigned __int16)remove indicesAtIndex:(unsigned __int16)index;
- (void)swapIndex:(unsigned __int16)index withIndex:(unsigned __int16)withIndex;
@end

@implementation TSKShuffleMapping

- (TSKShuffleMapping)initWithStartIndex:(unsigned __int16)index endIndex:(unsigned __int16)endIndex mapping:(unsigned __int16 *)mapping
{
  v23.receiver = self;
  v23.super_class = TSKShuffleMapping;
  v8 = [(TSKShuffleMapping *)&v23 init];
  v9 = v8;
  if (v8)
  {
    v8->mStartIndex = index;
    v8->mEndIndex = endIndex;
    *&v8->mIsVertical = 1;
    v10 = (endIndex - index + 1);
    v11 = malloc_type_malloc(2 * v10, 0x1000040BDFB0063uLL);
    v9->mMapping = v11;
    if (mapping)
    {
      memcpy(v11, mapping, 2 * v10);
    }

    else if (v10)
    {
      v12 = 0;
      v13 = vdupq_n_s64(v10 - 1);
      v14 = xmmword_26CA63D30;
      v15 = xmmword_26CA63D40;
      v16 = xmmword_26CA63D50;
      v17 = xmmword_26CA639B0;
      v18 = v11 + 4;
      v19 = vdupq_n_s64(8uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v13, v17));
        if (vuzp1_s8(vuzp1_s16(v20, *v13.i8), *v13.i8).u8[0])
        {
          *(v18 - 4) = v12;
        }

        if (vuzp1_s8(vuzp1_s16(v20, *&v13), *&v13).i8[1])
        {
          *(v18 - 3) = v12 | 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v16))), *&v13).i8[2])
        {
          *(v18 - 2) = v12 | 2;
          *(v18 - 1) = v12 | 3;
        }

        v21 = vmovn_s64(vcgeq_u64(v13, v15));
        if (vuzp1_s8(*&v13, vuzp1_s16(v21, *&v13)).i32[1])
        {
          *v18 = v12 | 4;
        }

        if (vuzp1_s8(*&v13, vuzp1_s16(v21, *&v13)).i8[5])
        {
          v18[1] = v12 | 5;
        }

        if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14)))).i8[6])
        {
          v18[2] = v12 | 6;
          v18[3] = v12 | 7;
        }

        v12 += 8;
        v15 = vaddq_s64(v15, v19);
        v16 = vaddq_s64(v16, v19);
        v17 = vaddq_s64(v17, v19);
        v14 = vaddq_s64(v14, v19);
        v18 += 8;
      }

      while (((v10 + 7) & 0x1FFF8) != v12);
    }
  }

  return v9;
}

- (id)initForMovedIndicesStartingAtIndex:(unsigned __int16)index destinationIndex:(unsigned __int16)destinationIndex numberOfIndices:(unsigned __int16)indices vertical:(BOOL)vertical
{
  indicesCopy = indices;
  destinationIndexCopy = destinationIndex;
  indexCopy = index;
  v11 = indices + index;
  if (destinationIndex <= index)
  {
    destinationIndexCopy2 = indices + index;
  }

  else
  {
    destinationIndexCopy2 = destinationIndex;
  }

  v13 = malloc_type_malloc(2 * destinationIndexCopy2, 0x1000040BDFB0063uLL);
  v14 = v13;
  if (indicesCopy)
  {
    if (destinationIndexCopy <= indexCopy)
    {
      v15 = 0;
    }

    else
    {
      v15 = indicesCopy;
    }

    v16 = destinationIndexCopy - indexCopy - v15;
    v17 = indexCopy;
    do
    {
      v13[v17] = v16 + v17;
      ++v17;
    }

    while (v11 > v17);
  }

  if (destinationIndexCopy <= indexCopy)
  {
    if (destinationIndexCopy >= indexCopy)
    {
      goto LABEL_59;
    }

    v27 = 0;
    v28 = indexCopy - destinationIndexCopy;
    v29 = (v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = vdupq_n_s64(v28 - 1);
    v31 = &v13[destinationIndexCopy + 4];
    do
    {
      v32 = v27 + destinationIndexCopy;
      v33 = vdupq_n_s64(v27);
      v34 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v33, xmmword_26CA639B0)));
      if (vuzp1_s8(vuzp1_s16(v34, *v30.i8), *v30.i8).u8[0])
      {
        *(v31 - 4) = v32 + indicesCopy;
      }

      if (vuzp1_s8(vuzp1_s16(v34, *&v30), *&v30).i8[1])
      {
        *(v31 - 3) = v32 + indicesCopy + 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v33, xmmword_26CA63D50)))), *&v30).i8[2])
      {
        *(v31 - 2) = v32 + indicesCopy + 2;
        *(v31 - 1) = v32 + indicesCopy + 3;
      }

      v35 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v33, xmmword_26CA63D40)));
      if (vuzp1_s8(*&v30, vuzp1_s16(v35, *&v30)).i32[1])
      {
        *v31 = v32 + indicesCopy + 4;
      }

      if (vuzp1_s8(*&v30, vuzp1_s16(v35, *&v30)).i8[5])
      {
        v31[1] = v32 + indicesCopy + 5;
      }

      if (vuzp1_s8(*&v30, vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v33, xmmword_26CA63D30))))).i8[6])
      {
        v31[2] = v32 + indicesCopy + 6;
        v31[3] = v32 + indicesCopy + 7;
      }

      v27 += 8;
      v31 += 8;
    }

    while (v29 != v27);
  }

  else
  {
    if (destinationIndexCopy <= v11)
    {
      goto LABEL_43;
    }

    v18 = 0;
    v19 = destinationIndexCopy - v11;
    v20 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = vdupq_n_s64(v19 - 1);
    v22 = &v13[v11 + 4];
    do
    {
      v23 = v11 + v18;
      v24 = vdupq_n_s64(v18);
      v25 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_26CA639B0)));
      if (vuzp1_s8(vuzp1_s16(v25, *v21.i8), *v21.i8).u8[0])
      {
        *(v22 - 4) = v23 - indicesCopy;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v21), *&v21).i8[1])
      {
        *(v22 - 3) = v23 - indicesCopy + 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_26CA63D50)))), *&v21).i8[2])
      {
        *(v22 - 2) = v23 - indicesCopy + 2;
        *(v22 - 1) = v23 - indicesCopy + 3;
      }

      v26 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_26CA63D40)));
      if (vuzp1_s8(*&v21, vuzp1_s16(v26, *&v21)).i32[1])
      {
        *v22 = v23 - indicesCopy + 4;
      }

      if (vuzp1_s8(*&v21, vuzp1_s16(v26, *&v21)).i8[5])
      {
        v22[1] = v23 - indicesCopy + 5;
      }

      if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_26CA63D30))))).i8[6])
      {
        v22[2] = v23 - indicesCopy + 6;
        v22[3] = v23 - indicesCopy + 7;
      }

      v18 += 8;
      v22 += 8;
    }

    while (v20 != v18);
  }

  if (destinationIndexCopy > indexCopy)
  {
LABEL_43:
    if (indexCopy)
    {
      v36 = 0;
      v37 = vdupq_n_s64(indexCopy - 1);
      v38 = xmmword_26CA63D30;
      v39 = xmmword_26CA63D40;
      v40 = xmmword_26CA63D50;
      v41 = xmmword_26CA639B0;
      v42 = v13 + 4;
      v43 = vdupq_n_s64(8uLL);
      do
      {
        v44 = vmovn_s64(vcgeq_u64(v37, v41));
        if (vuzp1_s8(vuzp1_s16(v44, *v37.i8), *v37.i8).u8[0])
        {
          *(v42 - 4) = v36;
        }

        if (vuzp1_s8(vuzp1_s16(v44, *&v37), *&v37).i8[1])
        {
          *(v42 - 3) = v36 | 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v40))), *&v37).i8[2])
        {
          *(v42 - 2) = v36 | 2;
          *(v42 - 1) = v36 | 3;
        }

        v45 = vmovn_s64(vcgeq_u64(v37, v39));
        if (vuzp1_s8(*&v37, vuzp1_s16(v45, *&v37)).i32[1])
        {
          *v42 = v36 | 4;
        }

        if (vuzp1_s8(*&v37, vuzp1_s16(v45, *&v37)).i8[5])
        {
          v42[1] = v36 | 5;
        }

        if (vuzp1_s8(*&v37, vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v38)))).i8[6])
        {
          v42[2] = v36 | 6;
          v42[3] = v36 | 7;
        }

        v36 += 8;
        v39 = vaddq_s64(v39, v43);
        v40 = vaddq_s64(v40, v43);
        v41 = vaddq_s64(v41, v43);
        v38 = vaddq_s64(v38, v43);
        v42 += 8;
      }

      while (((indexCopy + 7) & 0x1FFF8) != v36);
    }

    goto LABEL_74;
  }

LABEL_59:
  if (destinationIndexCopy)
  {
    v46 = 0;
    v47 = vdupq_n_s64(destinationIndexCopy - 1);
    v48 = xmmword_26CA63D30;
    v49 = xmmword_26CA63D40;
    v50 = xmmword_26CA63D50;
    v51 = xmmword_26CA639B0;
    v52 = v13 + 4;
    v53 = vdupq_n_s64(8uLL);
    do
    {
      v54 = vmovn_s64(vcgeq_u64(v47, v51));
      if (vuzp1_s8(vuzp1_s16(v54, *v47.i8), *v47.i8).u8[0])
      {
        *(v52 - 4) = v46;
      }

      if (vuzp1_s8(vuzp1_s16(v54, *&v47), *&v47).i8[1])
      {
        *(v52 - 3) = v46 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, *&v50))), *&v47).i8[2])
      {
        *(v52 - 2) = v46 | 2;
        *(v52 - 1) = v46 | 3;
      }

      v55 = vmovn_s64(vcgeq_u64(v47, v49));
      if (vuzp1_s8(*&v47, vuzp1_s16(v55, *&v47)).i32[1])
      {
        *v52 = v46 | 4;
      }

      if (vuzp1_s8(*&v47, vuzp1_s16(v55, *&v47)).i8[5])
      {
        v52[1] = v46 | 5;
      }

      if (vuzp1_s8(*&v47, vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, *&v48)))).i8[6])
      {
        v52[2] = v46 | 6;
        v52[3] = v46 | 7;
      }

      v46 += 8;
      v49 = vaddq_s64(v49, v53);
      v50 = vaddq_s64(v50, v53);
      v51 = vaddq_s64(v51, v53);
      v48 = vaddq_s64(v48, v53);
      v52 += 8;
    }

    while (((destinationIndexCopy + 7) & 0x1FFF8) != v46);
  }

LABEL_74:
  v56 = [(TSKShuffleMapping *)self initWithStartIndex:0 endIndex:(destinationIndexCopy2 - 1) mapping:v13];
  v57 = v56;
  if (v56)
  {
    v56->mIsVertical = vertical;
    v56->mIsMoveOperation = 1;
    v56->mFirstMovedIndex = indexCopy;
    v56->mDestinationIndexForMove = destinationIndexCopy;
    v56->mNumberOfIndicesMoved = indicesCopy;
  }

  free(v14);
  return v57;
}

- (void)dealloc
{
  free(self->mMapping);
  v3.receiver = self;
  v3.super_class = TSKShuffleMapping;
  [(TSKShuffleMapping *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[TSKShuffleMapping allocWithZone:?]endIndex:"initWithStartIndex:endIndex:mapping:" mapping:self->mStartIndex, self->mEndIndex, self->mMapping];
  if (result)
  {
    *(result + 24) = self->mIsVertical;
    *(result + 25) = self->mIsMoveOperation;
    *(result + 13) = self->mFirstMovedIndex;
    *(result + 14) = self->mDestinationIndexForMove;
    *(result + 15) = self->mNumberOfIndicesMoved;
  }

  return result;
}

- (id)copyInverse
{
  v3 = [(TSKShuffleMapping *)self copy];
  mappingSize = [(TSKShuffleMapping *)self mappingSize];
  mapping = [v3 mapping];
  if (mappingSize)
  {
    v6 = 0;
    mMapping = self->mMapping;
    do
    {
      *(mapping + 2 * mMapping[v6]) = v6;
      ++v6;
    }

    while (mappingSize != v6);
  }

  return v3;
}

- (unsigned)mapIndex:(unsigned __int16)index
{
  mStartIndex = self->mStartIndex;
  if (mStartIndex <= index && self->mEndIndex >= index)
  {
    return self->mMapping[index - mStartIndex] + mStartIndex;
  }

  return index;
}

- (unsigned)reverseMapIndex:(unsigned __int16)index
{
  indexCopy = index;
  mappingSize = [(TSKShuffleMapping *)self mappingSize];
  mStartIndex = self->mStartIndex;
  if (mStartIndex <= indexCopy && self->mEndIndex >= indexCopy && mappingSize != 0)
  {
    v8 = 0;
    while (indexCopy - mStartIndex != self->mMapping[v8])
    {
      if (mappingSize <= ++v8)
      {
        return indexCopy;
      }
    }

    LOWORD(indexCopy) = v8 + mStartIndex;
  }

  return indexCopy;
}

- (void)enumerateMappingRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  v13.location = self->mStartIndex;
  v13.length = self->mEndIndex - v13.location;
  v12.location = location;
  v12.length = length;
  v8 = NSIntersectionRange(v12, v13);
  if (location >= 0x10000)
  {
    v10 = location;
    do
    {
      (*(block + 2))(block, v10, v10);
      ++v10;
    }

    while (location > v10);
    v9 = v10;
  }

  else
  {
    v9 = location;
    v10 = location;
  }

  if (v8.location + v8.length > v9)
  {
    do
    {
      (*(block + 2))(block, v10++, self->mMapping[v9]);
      v9 = v10;
    }

    while (v8.location + v8.length > v10);
  }

  v11 = location + length;
  if (v11 > v9)
  {
    do
    {
      (*(block + 2))(block, v10, v10);
      ++v10;
    }

    while (v11 > v10);
  }
}

- (void)insert:(unsigned __int16)insert indicesAtIndex:(unsigned __int16)index insertingBefore:(BOOL)before
{
  mStartIndex = self->mStartIndex;
  v16 = index >= mStartIndex;
  v17 = index - mStartIndex;
  if (v16)
  {
    v41 = v10;
    v42 = v9;
    v43 = v6;
    v44 = v5;
    if (self->mEndIndex >= index)
    {
      insertCopy = insert;
      if (before)
      {
        v20 = self->mMapping[v17];
        v21 = v17;
      }

      else
      {
        v21 = v17 + 1;
        v20 = self->mMapping[v17] + 1;
      }

      v22 = [(TSKShuffleMapping *)self mappingSize:v12];
      mMapping = self->mMapping;
      if (v22)
      {
        v24 = v22;
        v25 = self->mMapping;
        do
        {
          v26 = *v25;
          if (v26 >= v20)
          {
            *v25 = v26 + insertCopy;
          }

          ++v25;
          --v24;
        }

        while (v24);
      }

      v27 = v22 + insertCopy;
      self->mEndIndex += insertCopy;
      v28 = malloc_type_realloc(mMapping, 2 * (v22 + insertCopy), 0x1000040BDFB0063uLL);
      self->mMapping = v28;
      if (!v28)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKShuffleMapping insert:indicesAtIndex:insertingBefore:]"];
        [currentHandler handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKShuffleMapping.mm"), 327, @"shuffle mapping couldn't grow mapping table!"}];
        v28 = self->mMapping;
      }

      memmove(&v28[insertCopy + v21], &v28[v21], 2 * (v27 - (insertCopy + v21)));
      if (insertCopy)
      {
        v31 = 0;
        v32 = vdupq_n_s64(insertCopy - 1);
        v33 = &self->mMapping[v21 + 4];
        v34 = xmmword_26CA63D30;
        v35 = xmmword_26CA63D40;
        v36 = xmmword_26CA63D50;
        v37 = xmmword_26CA639B0;
        v38 = vdupq_n_s64(8uLL);
        do
        {
          v39 = vmovn_s64(vcgeq_u64(v32, v37));
          if (vuzp1_s8(vuzp1_s16(v39, *v32.i8), *v32.i8).u8[0])
          {
            *(v33 - 4) = v20 + v31;
          }

          if (vuzp1_s8(vuzp1_s16(v39, *&v32), *&v32).i8[1])
          {
            *(v33 - 3) = v20 + v31 + 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v36))), *&v32).i8[2])
          {
            *(v33 - 2) = v20 + v31 + 2;
            *(v33 - 1) = v20 + v31 + 3;
          }

          v40 = vmovn_s64(vcgeq_u64(v32, v35));
          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i32[1])
          {
            *v33 = v20 + v31 + 4;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(v40, *&v32)).i8[5])
          {
            v33[1] = v20 + v31 + 5;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v34)))).i8[6])
          {
            v33[2] = v20 + v31 + 6;
            v33[3] = v20 + v31 + 7;
          }

          v31 += 8;
          v35 = vaddq_s64(v35, v38);
          v36 = vaddq_s64(v36, v38);
          v37 = vaddq_s64(v37, v38);
          v34 = vaddq_s64(v34, v38);
          v33 += 8;
        }

        while (((insertCopy + 7) & 0x1FFF8) != v31);
      }
    }
  }
}

- (void)remove:(unsigned __int16)remove indicesAtIndex:(unsigned __int16)index
{
  mStartIndex = self->mStartIndex;
  v5 = index - mStartIndex;
  if (index >= mStartIndex)
  {
    mEndIndex = self->mEndIndex;
    v8 = mEndIndex >= index;
    v9 = mEndIndex - index;
    if (v8)
    {
      if ((v9 + 1) < remove)
      {
        removeCopy = v9 + 1;
      }

      else
      {
        removeCopy = remove;
      }

      mappingSize = [(TSKShuffleMapping *)self mappingSize];
      v12 = mappingSize;
      v13 = removeCopy + v5;
      if (removeCopy)
      {
        mMapping = self->mMapping;
        v15 = v5;
        do
        {
          v16 = mappingSize;
          v17 = mMapping;
          if (mappingSize)
          {
            do
            {
              v18 = *v17;
              if (v18 > mMapping[v15])
              {
                *v17 = v18 - 1;
              }

              ++v17;
              --v16;
            }

            while (v16);
          }

          mMapping[v15++] = 0;
        }

        while (v13 > v15);
      }

      else
      {
        mMapping = self->mMapping;
      }

      memmove(&mMapping[v5], &mMapping[v13], 2 * (mappingSize - v13));
      self->mEndIndex -= removeCopy;
      v19 = malloc_type_realloc(self->mMapping, 2 * (v12 - removeCopy), 0x1000040BDFB0063uLL);
      self->mMapping = v19;
      if (!v19)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKShuffleMapping remove:indicesAtIndex:]"];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKShuffleMapping.mm"];

        [currentHandler handleFailureInFunction:v21 file:v22 lineNumber:384 description:@"shuffle mapping couldn't shrink translation table!"];
      }
    }
  }
}

- (void)swapIndex:(unsigned __int16)index withIndex:(unsigned __int16)withIndex
{
  mStartIndex = self->mStartIndex;
  if (mStartIndex > index || ((mEndIndex = self->mEndIndex, mEndIndex >= withIndex) ? (v9 = mStartIndex > withIndex) : (v9 = 1), !v9 ? (v10 = mEndIndex >= index) : (v10 = 0), !v10))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKShuffleMapping swapIndex:withIndex:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKShuffleMapping.mm"), 395, @"Can't swap indices outside of mapping range!"}];
    LOWORD(mStartIndex) = self->mStartIndex;
  }

  mMapping = self->mMapping;
  v14 = (index - mStartIndex);
  v15 = mMapping[v14];
  v16 = (withIndex - mStartIndex);
  mMapping[v14] = mMapping[v16];
  mMapping[v16] = v15;
}

@end