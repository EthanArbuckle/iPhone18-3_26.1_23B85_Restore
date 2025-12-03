@interface TSTTableHeaderStorageBucket
- (TSTTableHeaderStorageBucket)initWithContext:(id)context;
- (id)headerForKey:(unsigned int)key willModify:(BOOL)modify;
- (id)headerForKey:(unsigned int)key willModify:(BOOL)modify createIfNotThere:(BOOL)there;
- (unsigned)lowerBound:(unsigned int)bound;
- (unsigned)maxKey;
- (unsigned)minKey;
- (unsigned)upperBound:(unsigned int)bound;
- (void)applyFunction:(void *)function withState:(void *)state willModify:(BOOL)modify;
- (void)dealloc;
- (void)makeHeadersPerformSelector:(SEL)selector willModify:(BOOL)modify;
- (void)removeAllHeaders;
- (void)removeHeaderForKey:(unsigned int)key;
- (void)setHeader:(id)header forKey:(unsigned int)key;
- (void)shiftKeysAtIndex:(unsigned int)index amount:(int)amount;
@end

@implementation TSTTableHeaderStorageBucket

- (TSTTableHeaderStorageBucket)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSTTableHeaderStorageBucket;
  if ([(TSPObject *)&v4 initWithContext:context])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mMap = self->mMap;
  if (mMap)
  {
    std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::destroy(self->mMap, mMap[1]);
    MEMORY[0x26D6A9A30](mMap, 0x1020C4062D53EE8);
  }

  v4.receiver = self;
  v4.super_class = TSTTableHeaderStorageBucket;
  [(TSTTableHeaderStorageBucket *)&v4 dealloc];
}

- (id)headerForKey:(unsigned int)key willModify:(BOOL)modify
{
  if (modify)
  {
    [(TSPObject *)self willModify];
  }

  mMap = self->mMap;
  v9 = mMap[1];
  v7 = (mMap + 1);
  v8 = v9;
  if (!v9)
  {
    return 0;
  }

  v10 = v7;
  do
  {
    v11 = *(v8 + 8);
    v12 = v11 >= key;
    v13 = v11 < key;
    if (v12)
    {
      v10 = v8;
    }

    v8 = *&v8[8 * v13];
  }

  while (v8);
  if (v10 != v7 && *(v10 + 8) <= key)
  {
    return *(v10 + 5);
  }

  else
  {
    return 0;
  }
}

- (id)headerForKey:(unsigned int)key willModify:(BOOL)modify createIfNotThere:(BOOL)there
{
  thereCopy = there;
  if (modify)
  {
    [(TSPObject *)self willModify];
  }

  mMap = self->mMap;
  v11 = mMap[1];
  v9 = (mMap + 1);
  v10 = v11;
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v9;
  do
  {
    v13 = *(v10 + 8);
    v14 = v13 >= key;
    v15 = v13 < key;
    if (v14)
    {
      v12 = v10;
    }

    v10 = *&v10[8 * v15];
  }

  while (v10);
  if (v12 != v9 && *(v12 + 8) <= key)
  {
    v16 = *(v12 + 5);
    if (v16)
    {
      return v16;
    }
  }

  else
  {
LABEL_11:
    v16 = 0;
  }

  if (thereCopy)
  {
    v16 = objc_alloc_init(TSTTableHeaderInfo);
    v17 = self->mMap;
    v18 = v16;
    keyCopy = key;
    v22 = v16;
    v19 = v16;
    std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,SFUtility::ObjcSharedPtr<NSObject>>>(v17, &keyCopy);
  }

  return v16;
}

- (void)setHeader:(id)header forKey:(unsigned int)key
{
  [(TSPObject *)self willModify];
  mMap = self->mMap;
  if (!header)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_SetHeaderForKey(TSTSortedIntKeyMap *, UInt32, TSTTableHeaderInfo *)"}];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableHeaderStorageBucket.mm"), 186, @"Tried to set nil header for key."}];
  }

  headerCopy = header;
  keyCopy = key;
  headerCopy2 = header;
  headerCopy3 = header;
  std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,SFUtility::ObjcSharedPtr<NSObject>>>(mMap, &keyCopy);
}

- (void)removeHeaderForKey:(unsigned int)key
{
  keyCopy = key;
  [(TSPObject *)self willModify];
  std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__erase_unique<unsigned int>(self->mMap, &keyCopy);
}

- (void)removeAllHeaders
{
  [(TSPObject *)self willModify];
  mMap = self->mMap;
  std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::destroy(mMap, *(mMap + 1));
  *mMap = mMap + 8;
  *(mMap + 2) = 0;
  *(mMap + 1) = 0;
}

- (void)makeHeadersPerformSelector:(SEL)selector willModify:(BOOL)modify
{
  if (modify)
  {
    [(TSPObject *)self willModify];
  }

  mMap = self->mMap;
  v7 = *mMap;
  if (*mMap != mMap + 1)
  {
    do
    {
      [v7[5] performSelector:selector];
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != self->mMap + 1);
  }
}

- (void)applyFunction:(void *)function withState:(void *)state willModify:(BOOL)modify
{
  if (modify)
  {
    [(TSPObject *)self willModify];
  }

  mMap = self->mMap;
  v9 = *mMap;
  if (*mMap != mMap + 1)
  {
    do
    {
      (function)(*(v9 + 8), v9[5], state);
      v10 = v9[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      v9 = v11;
    }

    while (v11 != self->mMap + 1);
  }
}

- (void)shiftKeysAtIndex:(unsigned int)index amount:(int)amount
{
  indexCopy = index;
  if ((amount + index) < 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableHeaderStorageBucket shiftKeysAtIndex:amount:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableHeaderStorageBucket.mm"), 266, @"Can't shift indexes below zero!"}];
  }

  [(TSPObject *)self willModify];
  maxKey = [(TSTTableHeaderStorageBucket *)self maxKey];
  v10 = maxKey;
  if (amount < 0)
  {
    v35 = indexCopy;
    if (maxKey >= indexCopy)
    {
      do
      {
        v23 = indexCopy + amount;
        v34 = indexCopy + amount;
        mMap = self->mMap;
        v25 = mMap[1];
        if (!v25)
        {
          goto LABEL_30;
        }

        v26 = (mMap + 1);
        do
        {
          v27 = *(v25 + 8);
          v15 = v27 >= indexCopy;
          v28 = v27 < indexCopy;
          if (v15)
          {
            v26 = v25;
          }

          v25 = *&v25[8 * v28];
        }

        while (v25);
        if (v26 != (mMap + 1) && *(v26 + 8) <= indexCopy && (v29 = *(v26 + 5)) != 0)
        {
          v30 = v29;
          v36 = v23;
          v37 = v29;
          v31 = v29;
          std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,SFUtility::ObjcSharedPtr<NSObject>>>(mMap, &v36);

          v32 = self->mMap;
          v33 = &v35;
        }

        else
        {
LABEL_30:
          v33 = &v34;
          v32 = self->mMap;
        }

        std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__erase_unique<unsigned int>(v32, v33);
        indexCopy = v35 + 1;
        v35 = indexCopy;
      }

      while (indexCopy <= v10);
    }
  }

  else if (maxKey >= indexCopy)
  {
    do
    {
      v35 = v10 + amount;
      v11 = self->mMap;
      v12 = v11[1];
      if (!v12)
      {
        goto LABEL_15;
      }

      v13 = (v11 + 1);
      do
      {
        v14 = *(v12 + 8);
        v15 = v14 >= v10;
        v16 = v14 < v10;
        if (v15)
        {
          v13 = v12;
        }

        v12 = *&v12[8 * v16];
      }

      while (v12);
      if (v13 != (v11 + 1) && *(v13 + 8) <= v10 && (v17 = *(v13 + 5)) != 0)
      {
        v18 = v17;
        v36 = v10 + amount;
        v37 = v17;
        v19 = v17;
        std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,SFUtility::ObjcSharedPtr<NSObject>>>(v11, &v36);

        v20 = self->mMap;
        v36 = v10;
        v21 = &v36;
      }

      else
      {
LABEL_15:
        v21 = &v35;
        v20 = self->mMap;
      }

      std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__erase_unique<unsigned int>(v20, v21);
    }

    while (v10-- > indexCopy);
  }
}

- (unsigned)minKey
{
  mMap = self->mMap;
  v5 = *mMap;
  v3 = mMap + 1;
  v4 = v5;
  if (v5 == v3)
  {
    return 0;
  }

  result = *(v4 + 8);
  do
  {
    if (result >= *(v4 + 8))
    {
      result = *(v4 + 8);
    }

    v7 = v4[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v4[2];
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
    }

    v4 = v8;
  }

  while (v8 != v3);
  return result;
}

- (unsigned)maxKey
{
  mMap = self->mMap;
  v5 = *mMap;
  v3 = mMap + 1;
  v4 = v5;
  if (v5 == v3)
  {
    return 0;
  }

  result = *(v4 + 8);
  do
  {
    if (result <= *(v4 + 8))
    {
      result = *(v4 + 8);
    }

    v7 = v4[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v4[2];
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
    }

    v4 = v8;
  }

  while (v8 != v3);
  return result;
}

- (unsigned)upperBound:(unsigned int)bound
{
  mMap = self->mMap;
  v6 = mMap[1];
  v4 = (mMap + 1);
  for (i = v6; i; i = *&i[8 * v9])
  {
    v7 = *(i + 8);
    v8 = v7 > bound;
    v9 = v7 <= bound;
    if (v8)
    {
      v4 = i;
    }
  }

  return *(v4 + 8);
}

- (unsigned)lowerBound:(unsigned int)bound
{
  mMap = self->mMap;
  v6 = mMap[1];
  v4 = (mMap + 1);
  for (i = v6; i; i = *&i[8 * v9])
  {
    v7 = *(i + 8);
    v8 = v7 >= bound;
    v9 = v7 < bound;
    if (v8)
    {
      v4 = i;
    }
  }

  return *(v4 + 8);
}

@end