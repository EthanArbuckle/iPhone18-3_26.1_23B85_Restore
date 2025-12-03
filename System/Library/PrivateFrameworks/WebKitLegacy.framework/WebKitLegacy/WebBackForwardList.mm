@interface WebBackForwardList
- (BOOL)containsItem:(WebHistoryItem *)item;
- (NSArray)backListWithLimit:(int)limit;
- (NSArray)forwardListWithLimit:(int)limit;
- (NSUInteger)pageCacheSize;
- (WebBackForwardList)init;
- (WebBackForwardList)initWithBackForwardList:(void *)list;
- (WebHistoryItem)backItem;
- (WebHistoryItem)currentItem;
- (WebHistoryItem)forwardItem;
- (WebHistoryItem)itemAtIndex:(int)index;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addItem:(WebHistoryItem *)item;
- (void)dealloc;
- (void)goBack;
- (void)goForward;
- (void)goToItem:(WebHistoryItem *)item;
- (void)removeItem:(id)item;
- (void)setCapacity:(int)capacity;
- (void)setToMatchDictionaryRepresentation:(id)representation;
@end

@implementation WebBackForwardList

- (WebBackForwardList)initWithBackForwardList:(void *)list
{
  v30.receiver = self;
  v30.super_class = WebBackForwardList;
  v4 = [(WebBackForwardList *)&v30 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v6 = *list;
  *list = 0;
  v4->_private = v6;
  if (_MergedGlobals_9)
  {
    v7 = v6[2];
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    qword_1ED6A60E8 = 0;
    _MergedGlobals_9 = 1;
    v7 = v6[2];
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v7 = WTF::fastCompactMalloc(0x10);
  *v7 = 1;
  *(v7 + 8) = v6;
  v9 = v6[2];
  v6[2] = v7;
  if (v9)
  {
    if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, v8);
    }

    v7 = v6[2];
  }

LABEL_8:
  atomic_fetch_add(v7, 1u);
  if (v7 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7A5C190);
  }

  if (!v7)
  {
    goto LABEL_40;
  }

  v10 = qword_1ED6A60E8;
  if (!qword_1ED6A60E8)
  {
    WTF::HashTable<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *>>,WTF::DefaultHash<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *,WTF::DefaultHash<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WebBackForwardList *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(8u);
    v10 = qword_1ED6A60E8;
    if (!qword_1ED6A60E8)
    {
      v11 = 0;
      v12 = *(v7 + 8);
      if (v12)
      {
        goto LABEL_13;
      }

LABEL_40:
      __break(0xC471u);
      JUMPOUT(0x1C7A5C104);
    }
  }

  v11 = *(v10 - 8);
  v12 = *(v7 + 8);
  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_13:
  v13 = 0;
  v14 = (~(v12 << 32) + v12) ^ ((~(v12 << 32) + v12) >> 22);
  v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
  v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
  v17 = (v16 >> 31) ^ v16;
  for (i = 1; ; ++i)
  {
    v19 = v17 & v11;
    v20 = (v10 + 16 * (v17 & v11));
    v21 = *v20;
    if (*v20 == -1)
    {
      v13 = (v10 + 16 * v19);
      goto LABEL_15;
    }

    if (!v21)
    {
      if (v13)
      {
        *v13 = 0;
        v13[1] = 0;
        --*(v10 - 16);
        *v13 = v7;
        v13[1] = v5;
        v24 = qword_1ED6A60E8;
        if (qword_1ED6A60E8)
        {
          goto LABEL_24;
        }
      }

      else
      {
        *v20 = v7;
        v20[1] = v5;
        v24 = qword_1ED6A60E8;
        if (qword_1ED6A60E8)
        {
LABEL_24:
          v25 = *(v24 - 16);
          v26 = *(v24 - 12) + 1;
          *(v24 - 12) = v26;
          v27 = (v25 + v26);
          v28 = *(v24 - 4);
          if (v28 <= 0x400)
          {
            goto LABEL_25;
          }

          goto LABEL_30;
        }
      }

      v26 = 1;
      *(v24 - 12) = 1;
      v27 = (*(v24 - 16) + 1);
      v28 = *(v24 - 4);
      if (v28 <= 0x400)
      {
LABEL_25:
        if (3 * v28 > 4 * v27)
        {
          return v5;
        }

        if (!v28)
        {
          v29 = 8;
LABEL_33:
          WTF::HashTable<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *>>,WTF::DefaultHash<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *,WTF::DefaultHash<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WebBackForwardList *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(v29);
          return v5;
        }

LABEL_32:
        v29 = v28 << (6 * v26 >= (2 * v28));
        goto LABEL_33;
      }

LABEL_30:
      if (v28 > 2 * v27)
      {
        return v5;
      }

      goto LABEL_32;
    }

    v22 = *(v21 + 8);
    if (!v22)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7A5C170);
    }

    if (v22 == v12)
    {
      break;
    }

LABEL_15:
    v17 = i + v19;
  }

  v20[1] = v5;
  if (atomic_fetch_add(v7, 0xFFFFFFFF) != 1)
  {
    return v5;
  }

  atomic_store(1u, v7);
  WTF::fastFree(v7, v13);
  return v5;
}

- (WebBackForwardList)init
{
  v3 = WTF::fastMalloc(0x48);
  *(v3 + 8) = 1;
  *(v3 + 16) = 0;
  *v3 = &unk_1F4729A78;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0x64FFFFFFFFLL;
  *(v3 + 64) = 257;
  v7 = v3;
  result = [(WebBackForwardList *)self initWithBackForwardList:&v7];
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      v6 = result;
      (*(*v5 + 8))(v5);
      return v6;
    }

    else
    {
      --v5[2];
    }
  }

  return result;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    if (!self)
    {
      goto LABEL_25;
    }

    v5 = self->_private;
    if (!v5)
    {
      goto LABEL_25;
    }

    if (_MergedGlobals_9)
    {
      v6 = &OBJC_METACLASS___WebViewPrivate;
      if (qword_1ED6A60E8)
      {
        v7 = *(qword_1ED6A60E8 - 8);
        v8 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
        v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
        v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
        v11 = v7 & ((v10 >> 31) ^ v10);
        for (i = 1; ; ++i)
        {
          v13 = v11;
          v14 = *(qword_1ED6A60E8 + 16 * v11);
          if (v14 != -1)
          {
            if (!v14)
            {
              goto LABEL_21;
            }

            v15 = *(v14 + 8);
            if (!v15)
            {
              __break(0xC471u);
              return;
            }

            if (v15 == v5)
            {
              break;
            }
          }

          v11 = (v13 + i) & v7;
        }

        if (v13 != *(qword_1ED6A60E8 - 4))
        {
          v16 = (qword_1ED6A60E8 + 16 * v13);
          *v16 = 0;
          if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v14);
            v23 = v5;
            WTF::fastFree(v14, v4);
            v6 = &OBJC_METACLASS___WebViewPrivate;
            v5 = v23;
          }

          *v16 = -1;
          info = v6[5].info;
          v18 = vadd_s32(info[-1].weak_ivar_lyt, 0xFFFFFFFF00000001);
          info[-1].weak_ivar_lyt = v18;
          base_props_high = HIDWORD(info[-1].base_props);
          if (6 * v18.i32[1] < base_props_high && base_props_high >= 9)
          {
            v21 = v5;
            WTF::HashTable<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *>>,WTF::DefaultHash<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *,WTF::DefaultHash<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WebBackForwardList *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(base_props_high >> 1);
            v5 = v21;
          }
        }
      }

LABEL_21:
      v22 = *(v5 + 2) - 1;
      if (*(v5 + 2) != 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      qword_1ED6A60E8 = 0;
      _MergedGlobals_9 = 1;
      v22 = *(v5 + 2) - 1;
      if (*(v5 + 2) != 1)
      {
LABEL_22:
        *(v5 + 2) = v22;
LABEL_25:
        v24.receiver = self;
        v24.super_class = WebBackForwardList;
        [(WebBackForwardList *)&v24 dealloc];
        return;
      }
    }

    (*(*v5 + 8))(v5);
    goto LABEL_25;
  }
}

- (void)addItem:(WebHistoryItem *)item
{
  if (self)
  {
    self = self->_private;
  }

  m_ptr = item->_private->_historyItem.m_ptr;
  ++*(m_ptr + 2);
  v10 = m_ptr;
  (*(self->super.isa + 2))(self, &v10);
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    if (*(v5 + 2) == 1)
    {
      v6 = MEMORY[0x1CCA64170]();
      WTF::fastFree(v6, v7);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  v8 = item;
  v9 = item;
}

- (void)removeItem:(id)item
{
  if (item)
  {
    if (self)
    {
      v3 = self->_private;
      v4 = *(v3 + 11);
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v3 = 0;
      v4 = MEMORY[0x2C];
      if (!MEMORY[0x2C])
      {
        return;
      }
    }

    v5 = 0;
    v6 = *(*(item + 1) + 8);
    v7 = *(v3 + 4);
    for (i = v7 + 8; ; i += 8)
    {
      v9 = *(v7 + 8 * v5);
      if (v9 == v6)
      {
        break;
      }

      if (v4 == ++v5)
      {
        return;
      }
    }

    v10 = (v7 + 8 * v5);
    *v10 = 0;
    if (*(v9 + 8) == 1)
    {
      v11 = MEMORY[0x1CCA64170]();
      WTF::fastFree(v11, v12);
      v7 = *(v3 + 4);
      v4 = *(v3 + 11);
    }

    else
    {
      --*(v9 + 8);
    }

    memmove(v10, v10 + 1, v7 + 8 * v4 - i);
    --*(v3 + 11);
    WTF::HashSet<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::DefaultHash<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>(v3 + 6, v6);
    v13 = *(v3 + 14);
    if (v13 != -1 && v13 >= v5)
    {
      if (v13 > v5 || (v14 = *(v3 + 11) > v13, v13 = *(v3 + 11), !v14))
      {
        *(v3 + 14) = v13 - 1;
      }
    }
  }
}

- (id)dictionaryRepresentation
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = self->_private;
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v2 + 11)];
  v4 = *(v2 + 11);
  if (v4)
  {
    v5 = *(v2 + 4);
    v6 = 8 * v4;
    do
    {
      v7 = [kit(*v5) dictionaryRepresentationIncludingChildren:0];
      if (v7)
      {
        [v3 addObject:v7];
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  v11[0] = v3;
  v10[0] = @"entries";
  v10[1] = @"current";
  v11[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v2 + 14)];
  v10[2] = @"capacity";
  v11[2] = [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 15)];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  if (v3)
  {
    v9 = result;

    return v9;
  }

  return result;
}

- (void)setToMatchDictionaryRepresentation:(id)representation
{
  v24 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = self->_private;
  }

  else
  {
    v4 = 0;
  }

  BackForwardList::setCapacity(v4, [objc_msgSend(representation objectForKey:{@"capacity", "unsignedIntValue"}]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [representation objectForKey:@"entries"];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = *v20;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = [[WebHistoryItem alloc] initFromDictionaryRepresentation:*(*(&v19 + 1) + 8 * i)];
      v10 = v9;
      if (v9)
      {
        v11 = *(v9[1] + 8);
      }

      else
      {
        v11 = 0;
      }

      ++*(v11 + 8);
      v18 = v11;
      (*(*v4 + 16))(v4, &v18);
      v12 = v18;
      v18 = 0;
      if (!v12)
      {
        goto LABEL_16;
      }

      if (*(v12 + 8) != 1)
      {
        --*(v12 + 8);
LABEL_16:
        if (!v10)
        {
          continue;
        }

LABEL_17:

        continue;
      }

      v13 = MEMORY[0x1CCA64170]();
      WTF::fastFree(v13, v14);
      if (v10)
      {
        goto LABEL_17;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v6);
LABEL_21:
  v15 = [objc_msgSend(representation objectForKey:{@"current", "unsignedIntValue"}];
  v16 = *(v4 + 11);
  if (v16 <= v15)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = v15;
  }

  *(v4 + 14) = v17;
}

- (BOOL)containsItem:(WebHistoryItem *)item
{
  if (!item)
  {
    return 0;
  }

  v3 = *(self->_private + 6);
  if (!v3)
  {
    return 0;
  }

  m_ptr = item->_private->_historyItem.m_ptr;
  v5 = *(v3 - 8);
  v6 = (m_ptr + ~(m_ptr << 32)) ^ ((m_ptr + ~(m_ptr << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v3 + 8 * v9);
  if (v10 == m_ptr)
  {
    return 1;
  }

  v11 = 1;
  do
  {
    result = v10 != 0;
    if (!v10)
    {
      break;
    }

    v9 = (v9 + v11) & v5;
    v10 = *(v3 + 8 * v9);
    ++v11;
  }

  while (v10 != m_ptr);
  return result;
}

- (void)goBack
{
  if (self)
  {
    v2 = self->_private;
    v3 = *(v2 + 14);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v2 = 0;
    v3 = MEMORY[0x38];
    if (!MEMORY[0x38])
    {
      return;
    }
  }

  *(v2 + 14) = v3 - 1;
}

- (void)goForward
{
  v2 = self->_private;
  v3 = *(v2 + 14);
  if (*(v2 + 11) - 1 > v3)
  {
    *(v2 + 14) = v3 + 1;
  }
}

- (void)goToItem:(WebHistoryItem *)item
{
  if (item)
  {
    if (self)
    {
      self = self->_private;
    }

    (*(self->super.isa + 4))(self, item->_private->_historyItem.m_ptr);
  }
}

- (WebHistoryItem)backItem
{
  if (self)
  {
    v2 = self->_private;
    ptr = v2[1]._redirectURLs.__ptr_;
    if ((ptr + 1) < 2)
    {
LABEL_3:
      v4 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v2 = 0;
    ptr = MEMORY[0x38];
    if ((MEMORY[0x38] + 1) < 2)
    {
      goto LABEL_3;
    }
  }

  v5 = ptr - 1;
  if (HIDWORD(v2[1]._historyItem.m_ptr) <= v5)
  {
    __break(0xC471u);
    return self;
  }

  v4 = *(v2[1].super.isa + v5);
  ++*(v4 + 2);
LABEL_7:
  v6 = kit(v4);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = v7;
  }

  if (!v4)
  {
    return v7;
  }

  if (*(v4 + 2) != 1)
  {
    --*(v4 + 2);
    return v7;
  }

  v10 = MEMORY[0x1CCA64170](v4);
  WTF::fastFree(v10, v11);
  return v7;
}

- (WebHistoryItem)currentItem
{
  if (!self)
  {
    v2 = 0;
    ptr_low = MEMORY[0x38];
    if (MEMORY[0x38] != -1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v2 = self->_private;
  ptr_low = LODWORD(v2[1]._redirectURLs.__ptr_);
  if (ptr_low == -1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (HIDWORD(v2[1]._historyItem.m_ptr) <= ptr_low)
  {
    __break(0xC471u);
    return self;
  }

  v4 = *(v2[1].super.isa + ptr_low);
  ++*(v4 + 2);
LABEL_7:
  v5 = kit(v4);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = v6;
  }

  if (!v4)
  {
    return v6;
  }

  if (*(v4 + 2) != 1)
  {
    --*(v4 + 2);
    return v6;
  }

  v9 = MEMORY[0x1CCA64170](v4);
  WTF::fastFree(v9, v10);
  return v6;
}

- (WebHistoryItem)forwardItem
{
  if (self)
  {
    v2 = self->_private;
    m_ptr_high = HIDWORD(v2[1]._historyItem.m_ptr);
    if (!m_ptr_high)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 0;
    m_ptr_high = MEMORY[0x2C];
    if (!MEMORY[0x2C])
    {
LABEL_8:
      v6 = 0;
      goto LABEL_9;
    }
  }

  ptr_low = LODWORD(v2[1]._redirectURLs.__ptr_);
  if (m_ptr_high - 1 <= ptr_low)
  {
    goto LABEL_8;
  }

  v5 = ptr_low + 1;
  if (m_ptr_high <= v5)
  {
    __break(0xC471u);
    return self;
  }

  v6 = *(v2[1].super.isa + v5);
  ++*(v6 + 2);
LABEL_9:
  v7 = kit(v6);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = v8;
  }

  if (!v6)
  {
    return v8;
  }

  if (*(v6 + 2) != 1)
  {
    --*(v6 + 2);
    return v8;
  }

  v11 = MEMORY[0x1CCA64170](v6);
  WTF::fastFree(v11, v12);
  return v8;
}

- (NSArray)backListWithLimit:(int)limit
{
  v16 = 0;
  v17 = 0;
  if (self)
  {
    self = self->_private;
  }

  BackForwardList::backListWithLimit(self, *&limit, &v16);
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v3 initWithCapacity:HIDWORD(v17)];
  if (HIDWORD(v17))
  {
    v6 = v16;
    v7 = 8 * HIDWORD(v17);
    do
    {
      v8 = kit(*v6);
      if (v8)
      {
        [(NSArray *)v5 addObject:v8];
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  if (v5)
  {
    v9 = v5;
  }

  v10 = v16;
  if (HIDWORD(v17))
  {
    v11 = 8 * HIDWORD(v17);
    do
    {
      v14 = *v10;
      *v10 = 0;
      if (v14)
      {
        if (*(v14 + 8) == 1)
        {
          v12 = MEMORY[0x1CCA64170]();
          WTF::fastFree(v12, v13);
        }

        else
        {
          --*(v14 + 8);
        }
      }

      v10 = (v10 + 8);
      v11 -= 8;
    }

    while (v11);
    v10 = v16;
  }

  if (v10)
  {
    v16 = 0;
    LODWORD(v17) = 0;
    WTF::fastFree(v10, v4);
  }

  return v5;
}

- (NSArray)forwardListWithLimit:(int)limit
{
  v16 = 0;
  v17 = 0;
  if (self)
  {
    self = self->_private;
  }

  BackForwardList::forwardListWithLimit(self, *&limit, &v16);
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v3 initWithCapacity:HIDWORD(v17)];
  if (HIDWORD(v17))
  {
    v6 = v16;
    v7 = 8 * HIDWORD(v17);
    do
    {
      v8 = kit(*v6);
      if (v8)
      {
        [(NSArray *)v5 addObject:v8];
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  if (v5)
  {
    v9 = v5;
  }

  v10 = v16;
  if (HIDWORD(v17))
  {
    v11 = 8 * HIDWORD(v17);
    do
    {
      v14 = *v10;
      *v10 = 0;
      if (v14)
      {
        if (*(v14 + 8) == 1)
        {
          v12 = MEMORY[0x1CCA64170]();
          WTF::fastFree(v12, v13);
        }

        else
        {
          --*(v14 + 8);
        }
      }

      v10 = (v10 + 8);
      v11 -= 8;
    }

    while (v11);
    v10 = v16;
  }

  if (v10)
  {
    v16 = 0;
    LODWORD(v17) = 0;
    WTF::fastFree(v10, v4);
  }

  return v5;
}

- (void)setCapacity:(int)capacity
{
  if (self)
  {
    self = self->_private;
  }

  BackForwardList::setCapacity(self, capacity);
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:512];
  [v3 appendString:@"\n--------------------------------------------\n"];
  [v3 appendString:@"WebBackForwardList:\n"];
  v4 = self->_private;
  v5 = *(v4 + 11);
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(v4 + 14);
      if (v7 == -1)
      {
        if (i >= v5)
        {
          goto LABEL_19;
        }

        v8 = *(*(v4 + 4) + 8 * i) == 0;
      }

      else
      {
        if (v5 <= v7 || (v9 = *(*(v4 + 4) + 8 * v7), v10 = *(v9 + 8), *(v9 + 8) = v10 + 1, i >= v5))
        {
LABEL_19:
          __break(0xC471u);
          JUMPOUT(0x1C7A5D354);
        }

        v8 = v9 == *(*(v4 + 4) + 8 * i);
        if (v10)
        {
          *(v9 + 8) = v10;
        }

        else
        {
          v11 = MEMORY[0x1CCA64170]();
          WTF::fastFree(v11, v12);
        }
      }

      if (v8)
      {
        v13 = @" >>>";
      }

      else
      {
        v13 = @"    ";
      }

      [v3 appendString:v13];
      [v3 appendFormat:@"%2d "], i);
      v14 = [v3 length];
      if (i >= *(v4 + 11))
      {
        __break(0xC471u);
        JUMPOUT(0x1C7A5D35CLL);
      }

      v15 = v14;
      [v3 appendString:{objc_msgSend(kit(*(*(v4 + 4) + 8 * i)), "description")}];
      [v3 replaceOccurrencesOfString:@"\n" withString:@"\n        " options:0 range:{v15, objc_msgSend(v3, "length") - v15}];
      [v3 appendString:@"\n"];
      v5 = *(v4 + 11);
    }
  }

  [v3 appendString:@"\n--------------------------------------------\n"];
  return v3;
}

- (NSUInteger)pageCacheSize
{
  usesPageCache = [*(self->_private + 3) usesPageCache];
  if (usesPageCache)
  {
    return *(WebCore::BackForwardCache::singleton(usesPageCache) + 32);
  }

  else
  {
    return 0;
  }
}

- (WebHistoryItem)itemAtIndex:(int)index
{
  mainFrame = [*(self->_private + 3) mainFrame];
  if (!mainFrame || !*(*(mainFrame + 8) + 8))
  {
    return 0;
  }

  (*(*self->_private + 40))(&v13);
  v5 = kit(v13);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = v6;
  }

  v9 = v13;
  v13 = 0;
  if (!v9)
  {
    return v6;
  }

  if (*(v9 + 2) != 1)
  {
    --*(v9 + 2);
    return v6;
  }

  v11 = MEMORY[0x1CCA64170]();
  WTF::fastFree(v11, v12);
  return v6;
}

@end