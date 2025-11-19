@interface WebHistoryPrivate
+ (void)initialize;
- (BOOL)addItem:(id)a3 discardDuplicate:(BOOL)a4;
- (BOOL)findKey:(int64_t *)a3 forDay:(double)a4;
- (BOOL)loadHistoryGutsFromURL:(id)a3 savedItemsCount:(int *)a4 collectDiscardedItemsInto:(id)a5 error:(id *)a6;
- (BOOL)removeAllItems;
- (BOOL)removeItem:(id)a3;
- (BOOL)removeItemForURLString:(id)a3;
- (BOOL)removeItemFromDateCaches:(id)a3;
- (BOOL)removeItems:(id)a3;
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (WebHistoryPrivate)init;
- (id).cxx_construct;
- (id)ageLimitDate;
- (id)data;
- (id)itemForURL:(id)a3;
- (id)orderedItemsLastVisitedOnDay:(id)a3;
- (id)orderedLastVisitedDays;
- (id)visitedURL:(id)a3 withTitle:(id)a4;
- (int)historyAgeInDaysLimit;
- (int)historyItemLimit;
- (void)addItemToDateCaches:(id)a3;
- (void)addItems:(id)a3;
- (void)addVisitedLinksToVisitedLinkStore:(void *)a3;
- (void)insertItem:(id)a3 forDateKey:(int64_t)a4;
- (void)rebuildHistoryByDayIfNeeded:(id)a3;
@end

@implementation WebHistoryPrivate

+ (void)initialize
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];

  [v2 registerDefaults:&unk_1F474C6D8];
}

- (WebHistoryPrivate)init
{
  v13.receiver = self;
  v13.super_class = WebHistoryPrivate;
  v2 = [(WebHistoryPrivate *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    m_ptr = v2->_entriesByURL.m_ptr;
    v2->_entriesByURL.m_ptr = v3;
    if (m_ptr)
    {
    }

    v5 = WTF::fastMalloc(8);
    *v5 = 0;
    ptr = v2->_entriesByDate.__ptr_;
    v2->_entriesByDate.__ptr_ = v5;
    if (ptr)
    {
      v8 = *ptr;
      if (*ptr)
      {
        v9 = *(v8 - 4);
        if (v9)
        {
          v10 = (v8 + 8);
          do
          {
            if (*(v10 - 1) != -1)
            {
              v11 = *v10;
              *v10 = 0;
              if (v11)
              {
              }
            }

            v10 += 2;
            --v9;
          }

          while (v9);
        }

        WTF::fastFree((v8 - 16), v6);
      }

      WTF::fastFree(ptr, v6);
    }
  }

  return v2;
}

- (BOOL)findKey:(int64_t *)a3 forDay:(double)a4
{
  v6 = *&beginningOfDay(double)::cachedBeginningOfDay;
  if (*&beginningOfDay(double)::cachedBeginningOfDay > a4 || *&beginningOfDay(double)::cachedBeginningOfNextDay <= a4)
  {
    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    v9 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v21 = 0.0;
    v22 = 0;
    [v9 rangeOfUnit:16 startDate:&v22 interval:&v21 forDate:v8];
    [v22 timeIntervalSinceReferenceDate];
    v6 = v10;
    beginningOfDay(double)::cachedBeginningOfDay = *&v10;
    *&beginningOfDay(double)::cachedBeginningOfNextDay = v10 + v21;
  }

  v11 = v6;
  *a3 = v6;
  v12 = *self->_entriesByDate.__ptr_;
  if (!v12)
  {
    return 0;
  }

  if (v11 == -1 || !v11)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ADD8CCLL);
  }

  v13 = *(v12 - 8);
  v14 = (~(v11 << 32) + v11) ^ ((~(v11 << 32) + v11) >> 22);
  v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
  v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
  v17 = v13 & ((v16 >> 31) ^ v16);
  v18 = *(v12 + 16 * v17);
  if (v18 == v11)
  {
    return 1;
  }

  v20 = 1;
  do
  {
    result = v18 != 0;
    if (!v18)
    {
      break;
    }

    v17 = (v17 + v20) & v13;
    v18 = *(v12 + 16 * v17);
    ++v20;
  }

  while (v18 != v11);
  return result;
}

- (void)insertItem:(id)a3 forDateKey:(int64_t)a4
{
  WTF::HashMap<long long,WTF::RetainPtr<NSMutableArray>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<NSMutableArray>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<long long,WTF::RetainPtr<NSMutableArray>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<NSMutableArray>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<long long>>,long long>(&v14, self->_entriesByDate.__ptr_, a4);
  v5 = v14;
  if (v14)
  {
  }

  [a3 lastVisitedTimeInterval];
  v7 = v6;
  v8 = [v5 count];
  if (v8 && ([objc_msgSend(v5 objectAtIndex:{0), "lastVisitedTimeInterval"}], v9 >= v7))
  {
    [objc_msgSend(v5 objectAtIndex:{v8 - 1), "lastVisitedTimeInterval"}];
    if (v11 >= v7)
    {
      v10 = v8;
    }

    else
    {
      LODWORD(v10) = 0;
      do
      {
        v12 = v10 + ((v8 - v10) >> 1);
        [objc_msgSend(v5 objectAtIndex:{v12), "lastVisitedTimeInterval"}];
        if (v13 >= v7)
        {
          v10 = v12 + 1;
        }

        else
        {
          v10 = v10;
        }

        if (v13 < v7)
        {
          v8 = v12;
        }
      }

      while (v10 < v8);
    }
  }

  else
  {
    v10 = 0;
  }

  [v5 insertObject:a3 atIndex:v10];
}

- (BOOL)removeItemFromDateCaches:(id)a3
{
  v26 = 0;
  [a3 lastVisitedTimeInterval];
  v5 = [(WebHistoryPrivate *)self findKey:&v26 forDay:?];
  if (v5)
  {
    v6 = *self->_entriesByDate.__ptr_;
    v7 = v5;
    if (v6)
    {
      if (v26 == -1 || !v26)
      {
        __break(0xC471u);
        JUMPOUT(0x1C7ADDBF8);
      }

      v8 = *(v6 - 8);
      v9 = (v26 + ~(v26 << 32)) ^ ((v26 + ~(v26 << 32)) >> 22);
      v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
      v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
      v12 = v8 & ((v11 >> 31) ^ v11);
      v13 = *(v6 + 16 * v12);
      if (v13 == v26)
      {
LABEL_9:
        v15 = (v6 + 16 * v12);
      }

      else
      {
        v14 = 1;
        while (v13)
        {
          v12 = (v12 + v14) & v8;
          v13 = *(v6 + 16 * v12);
          ++v14;
          if (v13 == v26)
          {
            goto LABEL_9;
          }
        }

        v15 = (v6 + 16 * *(v6 - 4));
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15[1];
    [v16 removeObjectIdenticalTo:a3];
    v17 = [v16 count];
    LOBYTE(v5) = v7;
    if (!v17)
    {
      ptr = self->_entriesByDate.__ptr_;
      if (*ptr)
      {
        if ((*ptr + 16 * *(*ptr - 4)) != v15)
        {
          goto LABEL_18;
        }
      }

      else if (v15)
      {
LABEL_18:
        v19 = v15[1];
        *v15 = -1;
        v15[1] = 0;
        if (v19)
        {

          LOBYTE(v5) = v7;
        }

        v20 = *ptr;
        v21 = vadd_s32(*(*ptr - 16), 0xFFFFFFFF00000001);
        *(v20 - 16) = v21;
        v22 = *(v20 - 4);
        if (6 * v21.i32[1] < v22 && v22 >= 9)
        {
          WTF::HashTable<unsigned long,WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<unsigned long>,WTF::HashMap<unsigned long,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<unsigned long>,WTF::HashTraits<unsigned long>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long>,WTF::FastMalloc>::rehash(ptr, v22 >> 1);
          LOBYTE(v5) = v7;
        }
      }

      m_ptr = self->_orderedLastVisitedDays.m_ptr;
      self->_orderedLastVisitedDays.m_ptr = 0;
      if (m_ptr)
      {

        LOBYTE(v5) = v7;
      }
    }
  }

  return v5;
}

- (BOOL)removeItemForURLString:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_entriesByURL.m_ptr objectForKey:?];
  if (!v5)
  {
    return v5 != 0;
  }

  [(NSMutableDictionary *)self->_entriesByURL.m_ptr removeObjectForKey:a3];
  [(WebHistoryPrivate *)self removeItemFromDateCaches:v5];
  if ([(NSMutableDictionary *)self->_entriesByURL.m_ptr count])
  {
    return v5 != 0;
  }

  WebVisitedLinkStore::removeAllVisitedLinks(0, v6);
  return v5 != 0;
}

- (void)addItemToDateCaches:(id)a3
{
  v30 = 0;
  v31 = a3;
  [a3 lastVisitedTimeInterval];
  if ([(WebHistoryPrivate *)self findKey:&v30 forDay:?])
  {
    [(WebHistoryPrivate *)self insertItem:a3 forDateKey:v30];
    return;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&v31 count:1];
  v6 = v30;
  if (v30 == -1 || !v30)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ADDEE4);
  }

  v7 = v5;
  ptr = self->_entriesByDate.__ptr_;
  v9 = *ptr;
  if (!*ptr)
  {
    WTF::HashTable<unsigned long,WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<unsigned long>,WTF::HashMap<unsigned long,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<unsigned long>,WTF::HashTraits<unsigned long>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long>,WTF::FastMalloc>::rehash(self->_entriesByDate.__ptr_, 8u);
    v9 = *ptr;
    v6 = v30;
  }

  v10 = *(v9 - 8);
  v11 = (v6 + ~(v6 << 32)) ^ ((v6 + ~(v6 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    while (v16 != v6)
    {
      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
      if (!*v15)
      {
        if (v17)
        {
          *v17 = 0;
          v17[1] = 0;
          --*(*ptr - 16);
          v15 = v17;
        }

        goto LABEL_16;
      }
    }

    if (v7)
    {
      v27 = v7;
    }

    v28 = v15[1];
    v15[1] = v7;
    if (v28)
    {
    }

    goto LABEL_33;
  }

LABEL_16:
  *v15 = v6;
  if (v7)
  {
    v19 = v7;
  }

  v20 = v15[1];
  v15[1] = v7;
  if (v20)
  {
  }

  v21 = *ptr;
  if (*ptr)
  {
    v22 = *(v21 - 16);
    v23 = *(v21 - 12) + 1;
    *(v21 - 12) = v23;
    v24 = (v22 + v23);
    v25 = *(v21 - 4);
    if (v25 <= 0x400)
    {
      goto LABEL_22;
    }

LABEL_30:
    if (v25 <= 2 * v24)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  v23 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v24 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v25 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_30;
  }

LABEL_22:
  if (3 * v25 <= 4 * v24)
  {
    if (!v25)
    {
      v26 = 8;
LABEL_32:
      WTF::HashTable<unsigned long,WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<unsigned long>,WTF::HashMap<unsigned long,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<unsigned long>,WTF::HashTraits<unsigned long>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long>,WTF::FastMalloc>::rehash(ptr, v26);
      goto LABEL_33;
    }

LABEL_31:
    v26 = v25 << (6 * v23 >= (2 * v25));
    goto LABEL_32;
  }

LABEL_33:
  m_ptr = self->_orderedLastVisitedDays.m_ptr;
  self->_orderedLastVisitedDays.m_ptr = 0;
  if (m_ptr)
  {
  }

  if (v7)
  {
  }
}

- (id)visitedURL:(id)a3 withTitle:(id)a4
{
  v6 = [a3 _web_originalDataAsString];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_1F472E7E8;
  }

  v8 = [(NSMutableDictionary *)self->_entriesByURL.m_ptr objectForKey:v7];
  if (v8)
  {
    v9 = v8;
    v10 = v8;
    [(WebHistoryPrivate *)self removeItemFromDateCaches:v9];
    [(WebHistoryItem *)v9 _visitedWithTitle:a4];
  }

  else
  {
    v11 = [WebHistoryItem alloc];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v9 = [(WebHistoryItem *)v11 initWithURLString:v7 title:a4 lastVisitedTimeInterval:?];
    [(NSMutableDictionary *)self->_entriesByURL.m_ptr setObject:v9 forKey:v7];
  }

  [(WebHistoryPrivate *)self addItemToDateCaches:v9];
  if (v9)
  {
    v12 = v9;
  }

  return v9;
}

- (BOOL)addItem:(id)a3 discardDuplicate:(BOOL)a4
{
  v7 = [a3 URLString];
  v8 = [(NSMutableDictionary *)self->_entriesByURL.m_ptr objectForKey:v7];
  if (v8)
  {
    v9 = v8;
    v10 = v8;
    if (a4 || ([v9 lastVisitedTimeInterval], v12 = v11, objc_msgSend(a3, "lastVisitedTimeInterval"), v12 >= v13))
    {
      v14 = 0;
    }

    else
    {
      [(WebHistoryPrivate *)self removeItemForURLString:v7];
      [(WebHistoryPrivate *)self addItemToDateCaches:a3];
      [(NSMutableDictionary *)self->_entriesByURL.m_ptr setObject:a3 forKey:v7];
      v14 = 1;
    }
  }

  else
  {
    [(WebHistoryPrivate *)self addItemToDateCaches:a3];
    [(NSMutableDictionary *)self->_entriesByURL.m_ptr setObject:a3 forKey:v7];
    return 1;
  }

  return v14;
}

- (void)rebuildHistoryByDayIfNeeded:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *self->_entriesByDate.__ptr_;
  if (v5)
  {
    v6 = *(v5 - 4);
    v7 = (v5 + 16 * v6);
    if (!*(v5 - 12))
    {
      v8 = (v5 + 16 * v6);
      v7 = v8;
      goto LABEL_10;
    }

    v8 = *self->_entriesByDate.__ptr_;
    if (v6)
    {
      v9 = 16 * v6;
      v8 = *self->_entriesByDate.__ptr_;
      while ((*v8 + 1) <= 1)
      {
        v8 += 2;
        v9 -= 16;
        if (!v9)
        {
          v8 = v7;
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (!v5)
  {
    v10 = 0;
    v12 = 0;
    v40 = 0;
    v41 = 0;
    if (v8)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_10:
  v10 = (v5 + 16 * *(v5 - 4));
  v40 = 0;
  v41 = 0;
  v11 = *(v5 - 12);
  if (v11)
  {
    if (v11 >> 29)
    {
      __break(0xC471u);
      return;
    }

    v12 = WTF::fastMalloc((8 * v11));
    LODWORD(v41) = v11;
    v40 = v12;
    if (v8 != v10)
    {
LABEL_19:
      v15 = 0;
      do
      {
        v16 = v8[1];
        if (v16)
        {
          v17 = v16;
        }

        *(v12 + v15) = v16;
        do
        {
          v8 += 2;
        }

        while (v8 != v7 && (*v8 + 1) <= 1);
        ++v15;
      }

      while (v8 != v10);
      HIDWORD(v41) = v15;
      ptr = self->_entriesByDate.__ptr_;
      v14 = *ptr;
      if (!*ptr)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v12 = 0;
    if (v8 != v10)
    {
      goto LABEL_19;
    }
  }

LABEL_16:
  ptr = self->_entriesByDate.__ptr_;
  v14 = *ptr;
  if (*ptr)
  {
LABEL_28:
    *ptr = 0;
    v18 = *(v14 - 4);
    if (v18)
    {
      v19 = (v14 + 8);
      do
      {
        if (*(v19 - 1) != -1)
        {
          v20 = *v19;
          *v19 = 0;
          if (v20)
          {
          }
        }

        v19 += 2;
        --v18;
      }

      while (v18);
    }

    WTF::fastFree((v14 - 16), a2);
  }

LABEL_35:
  m_ptr = self->_entriesByURL.m_ptr;
  self->_entriesByURL.m_ptr = 0;
  v22 = self->_orderedLastVisitedDays.m_ptr;
  self->_orderedLastVisitedDays.m_ptr = 0;
  if (v22)
  {
  }

  v23 = [(NSMutableDictionary *)m_ptr allValues];
  [a3 _sendNotification:WebHistoryAllItemsRemovedNotification entries:v23];
  if (m_ptr)
  {
    v24 = m_ptr;
  }

  v25 = self->_entriesByURL.m_ptr;
  self->_entriesByURL.m_ptr = m_ptr;
  if (v25)
  {
  }

  if (HIDWORD(v41))
  {
    v26 = 0;
    do
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v27 = *(v40 + v26);
      v28 = [v27 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v28)
      {
        v29 = *v37;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v37 != v29)
            {
              objc_enumerationMutation(v27);
            }

            [(WebHistoryPrivate *)self addItemToDateCaches:*(*(&v36 + 1) + 8 * i)];
          }

          v28 = [v27 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v28);
      }

      ++v26;
    }

    while (v26 < HIDWORD(v41));
  }

  [a3 _sendNotification:WebHistoryItemsAddedNotification entries:v23];
  if (m_ptr)
  {
  }

  if (HIDWORD(v41))
  {
    v32 = v40;
    v33 = 8 * HIDWORD(v41);
    do
    {
      v34 = *v32;
      *v32 = 0;
      if (v34)
      {
      }

      v32 = (v32 + 8);
      v33 -= 8;
    }

    while (v33);
  }

  v35 = v40;
  if (v40)
  {
    v40 = 0;
    LODWORD(v41) = 0;
    WTF::fastFree(v35, v31);
  }
}

- (BOOL)removeItem:(id)a3
{
  v5 = [a3 URLString];
  v6 = [(NSMutableDictionary *)self->_entriesByURL.m_ptr objectForKey:v5];
  if (v6 != a3)
  {
    return 0;
  }

  [(WebHistoryPrivate *)self removeItemForURLString:v5];
  return v6 == a3;
}

- (BOOL)removeItems:(id)a3
{
  v5 = [a3 count];
  if (v5)
  {
    v6 = 0;
    do
    {
      -[WebHistoryPrivate removeItem:](self, "removeItem:", [a3 objectAtIndex:v6++]);
    }

    while (v5 != v6);
  }

  return v5 != 0;
}

- (BOOL)removeAllItems
{
  ptr = self->_entriesByDate.__ptr_;
  v3 = *ptr;
  if (!*ptr || !*(v3 - 12))
  {
    return 0;
  }

  *ptr = 0;
  v5 = *(v3 - 4);
  if (v5)
  {
    v6 = (v3 + 8);
    do
    {
      if (*(v6 - 1) != -1)
      {
        v7 = *v6;
        *v6 = 0;
        if (v7)
        {
        }
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  WTF::fastFree((v3 - 16), a2);
  v9 = [(NSMutableDictionary *)self->_entriesByURL.m_ptr removeAllObjects];
  m_ptr = self->_orderedLastVisitedDays.m_ptr;
  self->_orderedLastVisitedDays.m_ptr = 0;
  if (m_ptr)
  {
  }

  WebVisitedLinkStore::removeAllVisitedLinks(v9, v10);
  return 1;
}

- (void)addItems:(id)a3
{
  v4 = [a3 reverseObjectEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      [(WebHistoryPrivate *)self addItem:v6 discardDuplicate:0];
      v6 = [v4 nextObject];
    }

    while (v6);
  }
}

- (id)orderedLastVisitedDays
{
  if (!self->_orderedLastVisitedDays.m_ptr)
  {
    v3 = *self->_entriesByDate.__ptr_;
    if (v3 && (v4 = *(v3 - 12), v4))
    {
      if (v4 >> 30)
      {
LABEL_45:
        __break(0xC471u);
        JUMPOUT(0x1C7ADE950);
      }

      v5 = WTF::fastMalloc((4 * v4));
      v6 = *self->_entriesByDate.__ptr_;
      if (!v6 || !*(v6 - 12))
      {
        goto LABEL_34;
      }

      v7 = *(v6 - 4);
      if (v7)
      {
        v8 = 16 * v7;
        v9 = *self->_entriesByDate.__ptr_;
        while ((*v9 + 1) <= 1)
        {
          v9 += 2;
          v8 -= 16;
          if (!v8)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v9 = *self->_entriesByDate.__ptr_;
      }

      v11 = (v6 + 16 * v7);
      if (v9 != v11)
      {
        v10 = 0;
        do
        {
          v12 = v10;
          if (v10 == v4)
          {
            if (v4 + (v4 >> 1) <= v4 + 1)
            {
              v13 = v4 + 1;
            }

            else
            {
              v13 = v4 + (v4 >> 1);
            }

            if (v13 >> 30)
            {
              goto LABEL_45;
            }

            if (v13 <= 0x10)
            {
              v4 = 16;
            }

            else
            {
              v4 = v13;
            }

            v14 = WTF::fastMalloc((4 * v4));
            memcpy(v14, v5, 4 * v12);
            if (v5)
            {
              if (v14 == v5)
              {
                LODWORD(v4) = 0;
                v14 = 0;
              }

              WTF::fastFree(v5, v15);
            }

            v5 = v14;
          }

          v16 = *v9;
          v9 += 2;
          for (*(v5 + v12) = v16; v9 != v11; v9 += 2)
          {
            if ((*v9 + 1) > 1)
            {
              break;
            }
          }

          v10 = v12 + 1;
        }

        while (v9 != v11);
      }

      else
      {
LABEL_34:
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v5 = 0;
    }

    std::__sort<std::__less<int,int> &,int *>();
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
    m_ptr = self->_orderedLastVisitedDays.m_ptr;
    self->_orderedLastVisitedDays.m_ptr = v17;
    if (m_ptr)
    {
    }

    v20 = v10 - 1;
    if ((v10 - 1) >= 0)
    {
      do
      {
        v22 = [objc_alloc(MEMORY[0x1E696AB00]) initWithTimeIntervalSinceReferenceDate:*(v5 + v20)];
        [(NSMutableArray *)self->_orderedLastVisitedDays.m_ptr addObject:v22];
        if (v22)
        {
        }
      }

      while (v20-- > 0);
      goto LABEL_43;
    }

    if (v5)
    {
LABEL_43:
      WTF::fastFree(v5, v18);
    }
  }

  return self->_orderedLastVisitedDays.m_ptr;
}

- (id)orderedItemsLastVisitedOnDay:(id)a3
{
  v8 = 0;
  [a3 timeIntervalSinceReferenceDate];
  v4 = [(WebHistoryPrivate *)self findKey:&v8 forDay:?];
  result = 0;
  if (v4)
  {
    WTF::HashMap<long long,WTF::RetainPtr<NSMutableArray>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<NSMutableArray>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<long long,WTF::RetainPtr<NSMutableArray>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<NSMutableArray>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<long long>>,long long>(&v7, self->_entriesByDate.__ptr_, v8);
    result = v7;
    if (v7)
    {
      v6 = v7;

      return v6;
    }
  }

  return result;
}

- (id)itemForURL:(id)a3
{
  v4 = [a3 _web_originalDataAsString];

  return [(WebHistoryPrivate *)self itemForURLString:v4];
}

- (int)historyAgeInDaysLimit
{
  if (self->ageInDaysLimitSet)
  {
    return self->ageInDaysLimit;
  }

  else
  {
    return [objc_msgSend(MEMORY[0x1E695E000] standardUserDefaults];
  }
}

- (int)historyItemLimit
{
  if (self->itemLimitSet)
  {
    return self->itemLimit;
  }

  else
  {
    return [objc_msgSend(MEMORY[0x1E695E000] standardUserDefaults];
  }
}

- (id)ageLimitDate
{
  v3 = [MEMORY[0x1E696AB00] calendarDate];
  v4 = [(WebHistoryPrivate *)self];

  return [v3 dateByAddingYears:0 months:0 days:v4 hours:0 minutes:0 seconds:0];
}

- (BOOL)loadHistoryGutsFromURL:(id)a3 savedItemsCount:(int *)a4 collectDiscardedItemsInto:(id)a5 error:(id *)a6
{
  v37 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  if ([a3 isFileURL])
  {
    v9 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:{objc_msgSend(a3, "path")}];
    v10 = v9;
    if (!v9)
    {
      return v9;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    v9 = [v10 objectForKey:@"WebHistoryFileVersion"];
    if (!v9)
    {
      return v9;
    }

    v12 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v9) = 0;
      return v9;
    }

    if ([v12 intValue] > 1)
    {
      goto LABEL_12;
    }

    v13 = [v10 objectForKey:@"WebHistoryDates"];
    v29 = [(WebHistoryPrivate *)self historyItemLimit];
    [-[WebHistoryPrivate ageLimitDate](self "ageLimitDate")];
    v15 = v14;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v16)
    {
      goto LABEL_34;
    }

    v17 = 0;
    v18 = 0;
    v19 = *v33;
LABEL_17:
    v20 = 0;
    while (1)
    {
      if (*v33 != v19)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v32 + 1) + 8 * v20);
      v22 = objc_autoreleasePoolPush();
      v23 = [[WebHistoryItem alloc] initFromDictionaryRepresentation:v21];
      if ([v23 URLString])
      {
        if (v17)
        {
          v17 = 1;
        }

        else
        {
          [v23 lastVisitedTimeInterval];
          v17 = v24 <= v15;
          if (v24 > v15 && !v18)
          {
            v25 = [(WebHistoryPrivate *)self addItem:v23 discardDuplicate:1];
            v26 = *a4;
            if (v25)
            {
              *a4 = ++v26;
            }

            v17 = 0;
            v18 = v26 == v29;
            if (!v23)
            {
              goto LABEL_27;
            }

LABEL_26:

            goto LABEL_27;
          }
        }

        [a5 addObject:v23];
      }

      if (v23)
      {
        goto LABEL_26;
      }

LABEL_27:
      objc_autoreleasePoolPop(v22);
      if (v16 == ++v20)
      {
        v27 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
        v16 = v27;
        if (!v27)
        {
LABEL_34:
          LOBYTE(v9) = 1;
          return v9;
        }

        goto LABEL_17;
      }
    }
  }

  v11 = [MEMORY[0x1E695AC40] sendSynchronousRequest:objc_msgSend(MEMORY[0x1E695AC68] returningResponse:"requestWithURL:" error:{a3), 0, a6}];
  if ([v11 length])
  {
    v10 = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_9;
    }
  }

LABEL_12:
  LOBYTE(v9) = 0;
  return v9;
}

- (id)data
{
  ptr = self->_entriesByDate.__ptr_;
  if (*ptr && *(*ptr - 3))
  {
    HistoryPropertyListWriter::HistoryPropertyListWriter(v28);
    v28[0] = &unk_1F472DEC8;
    v31 = ptr;
    v32 = 0;
    v33 = 0;
    if (*ptr)
    {
      v3 = *(*ptr - 3);
      if (v3)
      {
        if (v3 >> 30)
        {
LABEL_48:
          __break(0xC471u);
          JUMPOUT(0x1C7ADF218);
        }

        v4 = WTF::fastMalloc((4 * v3));
        LODWORD(v33) = v3;
        v32 = v4;
        v5 = *v31;
        if (*v31)
        {
          if (*(v5 - 3))
          {
            v6 = *(v5 - 1);
            if (v6)
            {
              v7 = 16 * v6;
              v8 = *v31;
              while ((*v8 + 1) <= 1)
              {
                v8 += 2;
                v7 -= 16;
                if (!v7)
                {
                  goto LABEL_15;
                }
              }
            }

            else
            {
              v8 = *v31;
            }

            v18 = &v5[2 * v6];
            if (v8 != v18)
            {
              v19 = HIDWORD(v33);
              do
              {
                v20 = v19;
                if (v19 == v33)
                {
                  v21 = v19 + (v19 >> 1);
                  if (v21 <= v20 + 1)
                  {
                    v21 = v20 + 1;
                  }

                  if (v21 >> 30)
                  {
                    goto LABEL_48;
                  }

                  v22 = v4;
                  if (v21 <= 0x10)
                  {
                    v23 = 16;
                  }

                  else
                  {
                    v23 = v21;
                  }

                  v24 = WTF::fastMalloc((4 * v23));
                  LODWORD(v33) = v23;
                  v32 = v24;
                  memcpy(v24, v22, 4 * v20);
                  if (v22)
                  {
                    if (v32 == v22)
                    {
                      v32 = 0;
                      LODWORD(v33) = 0;
                    }

                    WTF::fastFree(v22, v25);
                  }

                  v4 = v32;
                  v26 = (v32 + 4 * HIDWORD(v33));
                }

                else
                {
                  v26 = (v4 + 4 * v19);
                }

                v27 = *v8;
                v8 += 2;
                *v26 = v27;
                v19 = ++HIDWORD(v33);
                if (v8 == v18)
                {
                  break;
                }

                while ((*v8 + 1) <= 1)
                {
                  v8 += 2;
                  if (v8 == v18)
                  {
                    goto LABEL_15;
                  }
                }
              }

              while (v8 != v18);
            }
          }
        }
      }
    }

LABEL_15:
    std::__sort<std::__less<int,int> &,int *>();
    BinaryPropertyListWriter::writePropertyList(v28);
    v11 = bytes;
    if (bytes)
    {
      v12 = length;
      bytes = 0;
      length = 0;
      v13 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v11, v12, *MEMORY[0x1E695E498]);
      v9 = v13;
      if (v13)
      {
        v14 = v13;
        v15 = v9;
        CFRelease(v9);
        v28[0] = &unk_1F472DEC8;
        v16 = v32;
        if (!v32)
        {
LABEL_19:
          HistoryPropertyListWriter::~HistoryPropertyListWriter(v28);
          return v9;
        }
      }

      else
      {
        CFAllocatorDeallocate(0, v11);
        v28[0] = &unk_1F472DEC8;
        v16 = v32;
        if (!v32)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v9 = 0;
      v28[0] = &unk_1F472DEC8;
      v16 = v32;
      if (!v32)
      {
        goto LABEL_19;
      }
    }

    v32 = 0;
    LODWORD(v33) = 0;
    WTF::fastFree(v16, v10);
    goto LABEL_19;
  }

  if (_MergedGlobals_18 == 1)
  {
    return qword_1ED6A6208;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  qword_1ED6A6208 = v9;
  _MergedGlobals_18 = 1;
  return v9;
}

- (BOOL)saveToURL:(id)a3 error:(id *)a4
{
  v6 = [(WebHistoryPrivate *)self data];

  return [v6 writeToURL:a3 options:0 error:a4];
}

- (void)addVisitedLinksToVisitedLinkStore:(void *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  m_ptr = self->_entriesByURL.m_ptr;
  v5 = [(NSMutableDictionary *)m_ptr countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(m_ptr);
        }

        WebVisitedLinkStore::addVisitedLink(a3, *(*(&v9 + 1) + 8 * i));
      }

      v6 = [(NSMutableDictionary *)m_ptr countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end