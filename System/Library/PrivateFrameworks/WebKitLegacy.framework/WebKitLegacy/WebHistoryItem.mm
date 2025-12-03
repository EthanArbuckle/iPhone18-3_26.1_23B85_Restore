@interface WebHistoryItem
+ (id)entryWithURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (CGPoint)_scrollPoint;
- (CGPoint)scrollPoint;
- (NSString)URLString;
- (NSString)alternateTitle;
- (NSString)originalURLString;
- (NSString)title;
- (WebHistoryItem)init;
- (WebHistoryItem)initWithURL:(id)l title:(id)title;
- (WebHistoryItem)initWithURLString:(NSString *)URLString title:(NSString *)title lastVisitedTimeInterval:(NSTimeInterval)time;
- (WebHistoryItem)initWithURLString:(id)string title:(id)title displayTitle:(id)displayTitle lastVisitedTimeInterval:(double)interval;
- (WebHistoryItem)initWithWebCoreHistoryItem:(void *)item;
- (id)RSSFeedReferrer;
- (id)URL;
- (id)_redirectURLs;
- (id)_viewportArguments;
- (id)children;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentationIncludingChildren:(BOOL)children;
- (id)initFromDictionaryRepresentation:(id)representation;
- (id)target;
- (unint64_t)hash;
- (void)_setScale:(float)scale isInitial:(BOOL)initial;
- (void)_setScrollPoint:(CGPoint)point;
- (void)_setViewportArguments:(id)arguments;
- (void)_visitedWithTitle:(id)title;
- (void)dealloc;
- (void)setAlternateTitle:(NSString *)alternateTitle;
- (void)setRSSFeedReferrer:(id)referrer;
- (void)setTitle:(id)title;
@end

@implementation WebHistoryItem

- (WebHistoryItem)init
{
  {
    v3 = LegacyHistoryItemClient::singleton(void)::client;
  }

  else
  {
    v3 = WebCore::HistoryItemClient::operator new(0x10, a2);
    *(v3 + 8) = 1;
    *v3 = &unk_1F472A738;
    LegacyHistoryItemClient::singleton(void)::client = v3;
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v4 = WTF::fastMalloc(0x1D0);
  v19[0] = 0;
  v19[16] = 0;
  v18[0] = 0;
  v18[16] = 0;
  MEMORY[0x1CCA64160](v4, v3, &v16, &v15, &v14, v19, v18);
  v17 = v4;
  v6 = [(WebHistoryItem *)self initWithWebCoreHistoryItem:&v17];
  v7 = v17;
  v17 = 0;
  if (!v7)
  {
LABEL_6:
    v8 = v14;
    v14 = 0;
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (*(v7 + 8) != 1)
  {
    --*(v7 + 8);
    goto LABEL_6;
  }

  v12 = MEMORY[0x1CCA64170]();
  WTF::fastFree(v12, v13);
  v8 = v14;
  v14 = 0;
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

LABEL_9:
  v9 = v15;
  v15 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = v16;
  v16 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  return v6;
}

- (WebHistoryItem)initWithURLString:(NSString *)URLString title:(NSString *)title lastVisitedTimeInterval:(NSTimeInterval)time
{
  v7 = URLString;
  {
    v9 = LegacyHistoryItemClient::singleton(void)::client;
  }

  else
  {
    v21 = WebCore::HistoryItemClient::operator new(0x10, URLString);
    v7 = URLString;
    v9 = v21;
    *(v21 + 8) = 1;
    *v21 = &unk_1F472A738;
    LegacyHistoryItemClient::singleton(void)::client = v21;
  }

  MEMORY[0x1CCA63A40](&v24, v7);
  MEMORY[0x1CCA63A40](&v23, title);
  v22 = 0;
  v10 = WTF::fastMalloc(0x1D0);
  v27[0] = 0;
  v27[16] = 0;
  v26[0] = 0;
  v26[16] = 0;
  MEMORY[0x1CCA64160](v10, v9, &v24, &v23, &v22, v27, v26);
  v25 = v10;
  v12 = [(WebHistoryItem *)self initWithWebCoreHistoryItem:&v25];
  v13 = v25;
  v25 = 0;
  if (!v13)
  {
LABEL_6:
    v14 = v22;
    v22 = 0;
    if (!v14)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (*(v13 + 8) != 1)
  {
    --*(v13 + 8);
    goto LABEL_6;
  }

  v18 = MEMORY[0x1CCA64170]();
  WTF::fastFree(v18, v19);
  v14 = v22;
  v22 = 0;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v11);
  }

LABEL_9:
  v15 = v23;
  v23 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v11);
  }

  v16 = v24;
  v24 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v11);
  }

  v12->_private->_lastVisitedTime = time;
  return v12;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    if (_MergedGlobals_19)
    {
      v5 = &OBJC_METACLASS___WebViewPrivate;
      if (qword_1ED6A6220)
      {
        m_ptr = self->_private->_historyItem.m_ptr;
        v7 = *(qword_1ED6A6220 - 8);
        v8 = (m_ptr + ~(m_ptr << 32)) ^ ((m_ptr + ~(m_ptr << 32)) >> 22);
        v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
        v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
        v11 = v7 & ((v10 >> 31) ^ v10);
        for (i = 1; ; ++i)
        {
          v13 = v11;
          v14 = *(qword_1ED6A6220 + 16 * v11);
          if (v14 != -1)
          {
            if (!v14)
            {
              goto LABEL_19;
            }

            v15 = *(v14 + 8);
            if (!v15)
            {
              __break(0xC471u);
              return;
            }

            if (v15 == m_ptr)
            {
              break;
            }
          }

          v11 = (v13 + i) & v7;
        }

        if (v13 != *(qword_1ED6A6220 - 4))
        {
          v16 = (qword_1ED6A6220 + 16 * v13);
          *v16 = 0;
          if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v14);
            v21 = v16;
            WTF::fastFree(v14, v4);
            v16 = v21;
            v5 = &OBJC_METACLASS___WebViewPrivate;
          }

          *v16 = -1;
          vtable = v5[13].vtable;
          v18 = vadd_s32(vtable[-2], 0xFFFFFFFF00000001);
          vtable[-2] = v18;
          v19 = vtable[-1].u32[1];
          if (6 * v18.i32[1] < v19 && v19 >= 9)
          {
            WTF::HashTable<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>>,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WebHistoryItem *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(v19 >> 1);
          }
        }
      }
    }

    else
    {
      qword_1ED6A6220 = 0;
      _MergedGlobals_19 = 1;
    }

LABEL_19:

    v22.receiver = self;
    v22.super_class = WebHistoryItem;
    [(WebHistoryItem *)&v22 dealloc];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  WebCore::HistoryItem::copy(&v33, self->_private->_historyItem.m_ptr);
  v5 = [v4 initWithWebCoreHistoryItem:&v33];
  v6 = v33;
  v33 = 0;
  if (v6)
  {
    if (*(v6 + 8) == 1)
    {
      v7 = MEMORY[0x1CCA64170]();
      WTF::fastFree(v7, v8);
    }

    else
    {
      --*(v6 + 8);
    }
  }

  *(v5[1] + 16) = self->_private->_lastVisitedTime;
  if (_MergedGlobals_19)
  {
    v9 = *(v5[1] + 8);
    v10 = *v9;
    if (*v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    qword_1ED6A6220 = 0;
    _MergedGlobals_19 = 1;
    v9 = *(v5[1] + 8);
    v10 = *v9;
    if (*v9)
    {
      goto LABEL_11;
    }
  }

  v10 = WTF::fastCompactMalloc(0x10);
  *v10 = 1;
  *(v10 + 8) = v9;
  v12 = *v9;
  *v9 = v10;
  if (v12)
  {
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      WTF::fastFree(v12, v11);
    }

    v10 = *v9;
  }

LABEL_11:
  atomic_fetch_add(v10, 1u);
  if (v10 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7AE082CLL);
  }

  if (!v10)
  {
    goto LABEL_43;
  }

  v13 = qword_1ED6A6220;
  if (!qword_1ED6A6220)
  {
    WTF::HashTable<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>>,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WebHistoryItem *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(8u);
    v13 = qword_1ED6A6220;
    if (!qword_1ED6A6220)
    {
      v14 = 0;
      v15 = *(v10 + 8);
      if (v15)
      {
        goto LABEL_16;
      }

LABEL_43:
      __break(0xC471u);
      JUMPOUT(0x1C7AE0798);
    }
  }

  v14 = *(v13 - 8);
  v15 = *(v10 + 8);
  if (!v15)
  {
    goto LABEL_43;
  }

LABEL_16:
  v16 = 0;
  v17 = (~(v15 << 32) + v15) ^ ((~(v15 << 32) + v15) >> 22);
  v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
  v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
  v20 = (v19 >> 31) ^ v19;
  for (i = 1; ; ++i)
  {
    v22 = v20 & v14;
    v23 = (v13 + 16 * (v20 & v14));
    v24 = *v23;
    if (*v23 == -1)
    {
      v16 = (v13 + 16 * v22);
      goto LABEL_18;
    }

    if (!v24)
    {
      if (v16)
      {
        *v16 = 0;
        v16[1] = 0;
        --*(v13 - 16);
        *v16 = v10;
        v16[1] = v5;
        v27 = qword_1ED6A6220;
        if (qword_1ED6A6220)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v23 = v10;
        v23[1] = v5;
        v27 = qword_1ED6A6220;
        if (qword_1ED6A6220)
        {
LABEL_27:
          v28 = *(v27 - 16);
          v29 = *(v27 - 12) + 1;
          *(v27 - 12) = v29;
          v30 = (v28 + v29);
          v31 = *(v27 - 4);
          if (v31 <= 0x400)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }
      }

      v29 = 1;
      *(v27 - 12) = 1;
      v30 = (*(v27 - 16) + 1);
      v31 = *(v27 - 4);
      if (v31 <= 0x400)
      {
LABEL_28:
        if (3 * v31 > 4 * v30)
        {
          return v5;
        }

        if (!v31)
        {
          v32 = 8;
LABEL_35:
          WTF::HashTable<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>>,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WebHistoryItem *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(v32);
          return v5;
        }

LABEL_34:
        v32 = v31 << (6 * v29 >= (2 * v31));
        goto LABEL_35;
      }

LABEL_33:
      if (v31 > 2 * v30)
      {
        return v5;
      }

      goto LABEL_34;
    }

    v25 = *(v24 + 8);
    if (!v25)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7AE080CLL);
    }

    if (v25 == v15)
    {
      break;
    }

LABEL_18:
    v20 = i + v22;
  }

  v23[1] = v5;
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, v16);
    return v5;
  }

  return v5;
}

- (NSString)URLString
{
  v2 = *WebCore::HistoryItem::urlString(self->_private->_historyItem.m_ptr);
  if (!v2 || !*(v2 + 4))
  {
    return 0;
  }

  return WTF::StringImpl::operator NSString *();
}

- (NSString)originalURLString
{
  v2 = *WebCore::HistoryItem::originalURLString(self->_private->_historyItem.m_ptr);
  if (!v2 || !*(v2 + 4))
  {
    return 0;
  }

  return WTF::StringImpl::operator NSString *();
}

- (NSString)title
{
  v2 = *WebCore::HistoryItem::title(self->_private->_historyItem.m_ptr);
  if (!v2 || !*(v2 + 4))
  {
    return 0;
  }

  return WTF::StringImpl::operator NSString *();
}

- (void)setAlternateTitle:(NSString *)alternateTitle
{
  m_ptr = self->_private->_historyItem.m_ptr;
  MEMORY[0x1CCA63A40](&v6, alternateTitle);
  WebCore::HistoryItem::setAlternateTitle(m_ptr, &v6);
  v5 = v6;
  v6 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

- (NSString)alternateTitle
{
  v2 = *WebCore::HistoryItem::alternateTitle(self->_private->_historyItem.m_ptr);
  if (!v2 || !*(v2 + 4))
  {
    return 0;
  }

  return WTF::StringImpl::operator NSString *();
}

- (unint64_t)hash
{
  v2 = *WebCore::HistoryItem::urlString(self->_private->_historyItem.m_ptr);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v8, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v8 = &stru_1F472E7E8;
    v7 = &stru_1F472E7E8;
  }

  result = [(__CFString *)v8 hash];
  v5 = v8;
  v8 = 0;
  if (v5)
  {
    v6 = result;

    return v6;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = WebCore::HistoryItem::urlString(self->_private->_historyItem.m_ptr);
    v7 = *WebCore::HistoryItem::urlString(*(*(equal + 1) + 8));
    v9 = *v6;

    LOBYTE(v5) = WTF::equal(v9, v7, v8);
  }

  return v5;
}

- (id)description
{
  m_ptr = self->_private->_historyItem.m_ptr;
  v3 = MEMORY[0x1E696AD60];
  v22.receiver = self;
  v22.super_class = WebHistoryItem;
  v4 = [(WebHistoryItem *)&v22 description];
  v5 = *WebCore::HistoryItem::urlString(m_ptr);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v21, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }
  }

  else
  {
    v21 = &stru_1F472E7E8;
    v19 = &stru_1F472E7E8;
  }

  v7 = [v3 stringWithFormat:@"%@ %@", v4, v21];
  v8 = v21;
  v21 = 0;
  if (v8)
  {
  }

  v9 = WebCore::HistoryItem::target(m_ptr);
  if (*v9 && *(*v9 + 4))
  {
    v10 = *WebCore::HistoryItem::target(m_ptr);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v21, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v21 = &stru_1F472E7E8;
      v20 = &stru_1F472E7E8;
    }

    [v7 appendFormat:@" in %@", v21];
    v12 = v21;
    v21 = 0;
    if (v12)
    {
    }
  }

  if (*(m_ptr + 140) == 1)
  {
    [v7 appendString:@" *target*"];
  }

  if (WebCore::HistoryItem::formData(m_ptr))
  {
    [v7 appendString:@" *POST*"];
  }

  if (!*(WebCore::HistoryItem::children(m_ptr) + 12))
  {
    return v7;
  }

  v13 = WebCore::HistoryItem::children(m_ptr);
  result = [v7 length];
  v15 = result;
  v16 = *(v13 + 12);
  if (!v16)
  {
LABEL_22:
    [v7 replaceOccurrencesOfString:@"\n" withString:@"\n    " options:0 range:{v15, objc_msgSend(v7, "length") - v15}];
    return v7;
  }

  v17 = 0;
  while (v17 < *(v13 + 12))
  {
    v18 = kit(*(*v13 + 8 * v17));
    [v7 appendString:@"\n"];
    result = [v7 appendString:{objc_msgSend(v18, "description")}];
    if (v16 == ++v17)
    {
      goto LABEL_22;
    }
  }

  __break(0xC471u);
  return result;
}

+ (id)entryWithURL:(id)l
{
  result = [[self alloc] initWithURL:l title:0];
  if (result)
  {
    v4 = result;
    v5 = result;
    return v4;
  }

  return result;
}

- (WebHistoryItem)initWithURLString:(id)string title:(id)title displayTitle:(id)displayTitle lastVisitedTimeInterval:(double)interval
{
  stringCopy2 = string;
  {
    v11 = LegacyHistoryItemClient::singleton(void)::client;
  }

  else
  {
    v23 = WebCore::HistoryItemClient::operator new(0x10, string);
    stringCopy2 = string;
    v11 = v23;
    *(v23 + 8) = 1;
    *v23 = &unk_1F472A738;
    LegacyHistoryItemClient::singleton(void)::client = v23;
  }

  MEMORY[0x1CCA63A40](&v26, stringCopy2);
  MEMORY[0x1CCA63A40](&v25, title);
  MEMORY[0x1CCA63A40](&v24, displayTitle);
  v12 = WTF::fastMalloc(0x1D0);
  v29[0] = 0;
  v29[16] = 0;
  v28[0] = 0;
  v28[16] = 0;
  MEMORY[0x1CCA64160](v12, v11, &v26, &v25, &v24, v29, v28);
  v27 = v12;
  v14 = [(WebHistoryItem *)self initWithWebCoreHistoryItem:&v27];
  v15 = v27;
  v27 = 0;
  if (!v15)
  {
LABEL_6:
    v16 = v24;
    v24 = 0;
    if (!v16)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (*(v15 + 8) != 1)
  {
    --*(v15 + 8);
    goto LABEL_6;
  }

  v20 = MEMORY[0x1CCA64170]();
  WTF::fastFree(v20, v21);
  v16 = v24;
  v24 = 0;
  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v13);
  }

LABEL_9:
  v17 = v25;
  v25 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v13);
  }

  v18 = v26;
  v26 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v13);
  }

  if (v14)
  {
    v14->_private->_lastVisitedTime = interval;
  }

  return v14;
}

- (WebHistoryItem)initWithWebCoreHistoryItem:(void *)item
{
  v34.receiver = self;
  v34.super_class = WebHistoryItem;
  v4 = [(WebHistoryItem *)&v34 init];
  if (!v4)
  {
    return v4;
  }

  v5 = objc_alloc_init(WebHistoryItemPrivate);
  v4->_private = v5;
  v6 = *item;
  *item = 0;
  m_ptr = v5->_historyItem.m_ptr;
  v5->_historyItem.m_ptr = v6;
  if (!m_ptr)
  {
LABEL_5:
    if (_MergedGlobals_19)
    {
      goto LABEL_6;
    }

LABEL_32:
    qword_1ED6A6220 = 0;
    _MergedGlobals_19 = 1;
    v8 = v4->_private->_historyItem.m_ptr;
    v9 = *v8;
    if (*v8)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (*(m_ptr + 2) != 1)
  {
    --*(m_ptr + 2);
    goto LABEL_5;
  }

  v32 = MEMORY[0x1CCA64170]();
  WTF::fastFree(v32, v33);
  if ((_MergedGlobals_19 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_6:
  v8 = v4->_private->_historyItem.m_ptr;
  v9 = *v8;
  if (*v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = WTF::fastCompactMalloc(0x10);
  *v9 = 1;
  *(v9 + 8) = v8;
  v11 = *v8;
  *v8 = v9;
  if (v11)
  {
    if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, v10);
    }

    v9 = *v8;
  }

LABEL_11:
  atomic_fetch_add(v9, 1u);
  if (v9 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7AE16B4);
  }

  if (!v9)
  {
    goto LABEL_44;
  }

  v12 = qword_1ED6A6220;
  if (!qword_1ED6A6220)
  {
    WTF::HashTable<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>>,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WebHistoryItem *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(8u);
    v12 = qword_1ED6A6220;
    if (!qword_1ED6A6220)
    {
      v13 = 0;
      v14 = *(v9 + 8);
      if (v14)
      {
        goto LABEL_16;
      }

LABEL_44:
      __break(0xC471u);
      JUMPOUT(0x1C7AE1648);
    }
  }

  v13 = *(v12 - 8);
  v14 = *(v9 + 8);
  if (!v14)
  {
    goto LABEL_44;
  }

LABEL_16:
  v15 = 0;
  v16 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
  v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
  v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
  v19 = (v18 >> 31) ^ v18;
  for (i = 1; ; ++i)
  {
    v21 = v19 & v13;
    v22 = (v12 + 16 * (v19 & v13));
    v23 = *v22;
    if (*v22 == -1)
    {
      v15 = (v12 + 16 * v21);
      goto LABEL_18;
    }

    if (!v23)
    {
      if (v15)
      {
        *v15 = 0;
        v15[1] = 0;
        --*(v12 - 16);
        *v15 = v9;
        v15[1] = v4;
        v26 = qword_1ED6A6220;
        if (qword_1ED6A6220)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v22 = v9;
        v22[1] = v4;
        v26 = qword_1ED6A6220;
        if (qword_1ED6A6220)
        {
LABEL_27:
          v27 = *(v26 - 16);
          v28 = *(v26 - 12) + 1;
          *(v26 - 12) = v28;
          v29 = (v27 + v28);
          v30 = *(v26 - 4);
          if (v30 <= 0x400)
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }
      }

      v28 = 1;
      *(v26 - 12) = 1;
      v29 = (*(v26 - 16) + 1);
      v30 = *(v26 - 4);
      if (v30 <= 0x400)
      {
LABEL_28:
        if (3 * v30 > 4 * v29)
        {
          return v4;
        }

        if (!v30)
        {
          v31 = 8;
LABEL_39:
          WTF::HashTable<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>>,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WebHistoryItem *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(v31);
          return v4;
        }

LABEL_38:
        v31 = v30 << (6 * v28 >= (2 * v30));
        goto LABEL_39;
      }

LABEL_36:
      if (v30 > 2 * v29)
      {
        return v4;
      }

      goto LABEL_38;
    }

    v24 = *(v23 + 8);
    if (!v24)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7AE1694);
    }

    if (v24 == v14)
    {
      break;
    }

LABEL_18:
    v19 = i + v21;
  }

  v22[1] = v4;
  if (atomic_fetch_add(v9, 0xFFFFFFFF) != 1)
  {
    return v4;
  }

  atomic_store(1u, v9);
  WTF::fastFree(v9, v15);
  return v4;
}

- (void)setTitle:(id)title
{
  MEMORY[0x1CCA63A40](&v5, title);
  WebCore::HistoryItem::setTitle();
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }
  }
}

- (id)initFromDictionaryRepresentation:(id)representation
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = [representation _webkit_stringForKey:&stru_1F472E7E8];
  v6 = [representation _webkit_stringForKey:@"title"];
  v7 = [representation _webkit_stringForKey:@"lastVisitedDate"];
  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = -[WebHistoryItem initWithURLString:title:displayTitle:lastVisitedTimeInterval:](self, "initWithURLString:title:displayTitle:lastVisitedTimeInterval:", v5, v6, [representation _webkit_stringForKey:@"displayTitle"], v9);
  if (([v5 canBeConvertedToEncoding:5] & 1) == 0)
  {
    v11 = [objc_msgSend(MEMORY[0x1E695DFF8] _webkit_URLWithUserTypedString:{v5), "_web_originalDataAsString"}];
    m_ptr = v10->_private->_historyItem.m_ptr;
    MEMORY[0x1CCA63A40](&v60, v11);
    WebCore::HistoryItem::setURLString(m_ptr, &v60);
    v14 = v60;
    v60 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    v15 = v10->_private->_historyItem.m_ptr;
    MEMORY[0x1CCA63A40](&v60, v11);
    WebCore::HistoryItem::setOriginalURLString(v15, &v60);
    v17 = v60;
    v60 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }
  }

  if ([representation _webkit_BOOLForKey:@"lastVisitWasFailure"])
  {
    *(v10->_private->_historyItem.m_ptr + 136) = 1;
  }

  v18 = [representation _webkit_arrayForKey:@"redirectURLs"];
  if (v18)
  {
    v64 = v18;
    v19 = [v18 count];
    v63 = &v64;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v60, v19, &v63, 0);
    v20 = WTF::fastMalloc(0x10);
    *v20 = 0;
    *(v20 + 8) = 0;
    v22 = v60;
    v60 = 0;
    *v20 = v22;
    v22.var0 = v61;
    v61 = 0;
    *(v20 + 8) = v22.var0;
    v22.var0 = v62;
    v62 = 0;
    *(v20 + 12) = v22.var0;
    v23 = v10->_private;
    ptr = v23->_redirectURLs.__ptr_;
    v23->_redirectURLs.__ptr_ = v20;
    if (ptr)
    {
      v25 = *(ptr + 3);
      v26 = *ptr;
      if (v25)
      {
        v27 = 8 * v25;
        do
        {
          v28 = *v26;
          *v26 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v21);
          }

          v26 = (v26 + 8);
          v27 -= 8;
        }

        while (v27);
        v26 = *ptr;
      }

      if (v26)
      {
        *ptr = 0;
        *(ptr + 2) = 0;
        WTF::fastFree(v26, v21);
      }

      WTF::fastFree(ptr, v21);
    }

    v29 = v60;
    if (v62)
    {
      v30 = 8 * v62;
      do
      {
        v31 = *v29;
        *v29 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v21);
        }

        v29 = (v29 + 8);
        v30 -= 8;
      }

      while (v30);
      v29 = v60;
    }

    if (v29)
    {
      v60 = 0;
      v61 = 0;
      WTF::fastFree(v29, v21);
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v32 = [objc_msgSend(representation objectForKey:{@"children", 0), "reverseObjectEnumerator"}];
  v33 = [v32 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v33)
  {
    v34 = *v57;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v57 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v38 = [[WebHistoryItem alloc] initFromDictionaryRepresentation:*(*(&v56 + 1) + 8 * i)];
        v39 = *(v38[1] + 8);
        ++*(*&v39 + 8);
        v60 = v39;
        WebCore::HistoryItem::addChildItem();
        v40 = v60;
        v60 = 0;
        if (v40)
        {
          if (*(*&v40 + 8) == 1)
          {
            v36 = MEMORY[0x1CCA64170]();
            WTF::fastFree(v36, v37);
          }

          else
          {
            --*(*&v40 + 8);
          }
        }
      }

      v33 = [v32 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v33);
  }

  v41 = [representation objectForKey:@"scale"];
  v42 = [representation objectForKey:@"scaleIsInitial"];
  if (v41 && v42)
  {
    v43 = v10->_private->_historyItem.m_ptr;
    v44 = v42;
    [v41 floatValue];
    v46 = v45;
    bOOLValue = [v44 BOOLValue];
    *(v43 + 64) = v46;
    *(v43 + 260) = bOOLValue;
  }

  v48 = [representation objectForKey:@"WebViewportArguments"];
  if (v48)
  {
    [(WebHistoryItem *)v10 _setViewportArguments:v48];
  }

  v49 = [representation objectForKey:@"scrollPointX"];
  v50 = [representation objectForKey:@"scrollPointY"];
  if (v49 && v50)
  {
    v51 = v10->_private->_historyItem.m_ptr;
    v52 = v50;
    intValue = [v49 intValue];
    intValue2 = [v52 intValue];
    v60.var0 = intValue;
    v60.var1 = intValue2;
    WebCore::HistoryItem::setScrollPosition(v51, &v60);
  }

  return v10;
}

- (CGPoint)scrollPoint
{
  v2 = WebCore::HistoryItem::scrollPosition(self->_private->_historyItem.m_ptr);

  MEMORY[0x1EEE5E3A0](v2);
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_visitedWithTitle:(id)title
{
  MEMORY[0x1CCA63A40](&v7, title);
  WebCore::HistoryItem::setTitle();
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_private->_lastVisitedTime = v6;
}

- (WebHistoryItem)initWithURL:(id)l title:(id)title
{
  _web_originalDataAsString = [l _web_originalDataAsString];

  return [(WebHistoryItem *)self initWithURLString:_web_originalDataAsString title:title lastVisitedTimeInterval:0.0];
}

- (id)dictionaryRepresentationIncludingChildren:(BOOL)children
{
  childrenCopy = children;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:8];
  m_ptr = self->_private->_historyItem.m_ptr;
  v7 = *WebCore::HistoryItem::urlString(m_ptr);
  if (v7 && *(v7 + 4))
  {
    v8 = *WebCore::HistoryItem::urlString(m_ptr);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v33, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v33 = &stru_1F472E7E8;
      v30 = &stru_1F472E7E8;
    }

    [v5 setObject:v33 forKey:&stru_1F472E7E8];
    v10 = v33;
    v33 = 0;
    if (v10)
    {
    }
  }

  v11 = *WebCore::HistoryItem::title(m_ptr);
  if (v11 && *(v11 + 4))
  {
    v12 = *WebCore::HistoryItem::title(m_ptr);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v33, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v33 = &stru_1F472E7E8;
      v31 = &stru_1F472E7E8;
    }

    [v5 setObject:v33 forKey:@"title"];
    v14 = v33;
    v33 = 0;
    if (v14)
    {
    }
  }

  v15 = WebCore::HistoryItem::alternateTitle(m_ptr);
  if (*v15 && *(*v15 + 4))
  {
    v16 = *WebCore::HistoryItem::alternateTitle(m_ptr);
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v33, v16);
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v17);
      }
    }

    else
    {
      v33 = &stru_1F472E7E8;
      v32 = &stru_1F472E7E8;
    }

    [v5 setObject:v33 forKey:@"displayTitle"];
    v18 = v33;
    v33 = 0;
    if (v18)
    {
    }
  }

  lastVisitedTime = self->_private->_lastVisitedTime;
  if (lastVisitedTime != 0.0)
  {
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"%.1lf", *&self->_private->_lastVisitedTime), @"lastVisitedDate"}];
  }

  if (*(m_ptr + 136) == 1)
  {
    [v5 setObject:MEMORY[0x1E695E118] forKey:@"lastVisitWasFailure"];
  }

  ptr = self->_private->_redirectURLs.__ptr_;
  if (ptr)
  {
    WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(&v33, ptr);
    v21 = v33;
    [v5 setObject:v33 forKey:@"redirectURLs"];
    if (v21)
    {
    }
  }

  if (!childrenCopy || !*(WebCore::HistoryItem::children(m_ptr) + 12))
  {
    goto LABEL_35;
  }

  v22 = WebCore::HistoryItem::children(m_ptr);
  result = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v22 + 12)];
  v24 = result;
  v25 = *(v22 + 12);
  v26 = (v25 - 1);
  if (v25 - 1 < 0)
  {
LABEL_34:
    [v5 setObject:v24 forKey:@"children"];
LABEL_35:
    LODWORD(lastVisitedTime) = *(self->_private->_historyItem.m_ptr + 64);
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", lastVisitedTime), @"scale"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(self->_private->_historyItem.m_ptr + 260)), @"scaleIsInitial"}];
    _viewportArguments = [(WebHistoryItem *)self _viewportArguments];
    if (_viewportArguments)
    {
      [v5 setObject:_viewportArguments forKey:@"WebViewportArguments"];
    }

    v28 = WebCore::HistoryItem::scrollPosition(self->_private->_historyItem.m_ptr);
    v29 = v28[1];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", *v28), @"scrollPointX"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v29), @"scrollPointY"}];
    return v5;
  }

  while (v26 < *(v22 + 12))
  {
    result = [v24 addObject:{objc_msgSend(kit(*(*v22 + 8 * v26--)), "dictionaryRepresentation")}];
    if (v26 == -1)
    {
      goto LABEL_34;
    }
  }

  __break(0xC471u);
  return result;
}

- (id)target
{
  v2 = *WebCore::HistoryItem::target(self->_private->_historyItem.m_ptr);
  if (!v2 || !*(v2 + 4))
  {
    return 0;
  }

  return WTF::StringImpl::operator NSString *();
}

- (id)RSSFeedReferrer
{
  v2 = *WebCore::HistoryItem::referrer(self->_private->_historyItem.m_ptr);
  if (!v2 || !*(v2 + 4))
  {
    return 0;
  }

  return WTF::StringImpl::operator NSString *();
}

- (void)setRSSFeedReferrer:(id)referrer
{
  MEMORY[0x1CCA63A40](&v5, referrer);
  WebCore::HistoryItem::setReferrer();
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }
  }
}

- (id)children
{
  v2 = WebCore::HistoryItem::children(self->_private->_historyItem.m_ptr);
  if (!*(v2 + 12))
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v2 + 12)];
  v5 = *(v3 + 12);
  if (v5)
  {
    v6 = *v3;
    v7 = 8 * v5;
    do
    {
      v8 = kit(*v6);
      if (v8)
      {
        [v4 addObject:v8];
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  if (v4)
  {
    v9 = v4;
  }

  return v4;
}

- (id)URL
{
  WebCore::HistoryItem::url(v9, self->_private->_historyItem.m_ptr);
  v3 = v9[0];
  if (!v9[0])
  {
    return 0;
  }

  if (*(v9[0] + 1))
  {
    WTF::URL::createCFURL(&v8, v9);
    v4 = v8;
    v8 = 0;
    if (v4)
    {
      v5 = v4;
      v6 = v8;
      v8 = 0;
      if (v6)
      {
      }
    }

    v3 = v9[0];
    v9[0] = 0;
    if (!v3 || atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
    v9[0] = 0;
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      return v4;
    }
  }

  WTF::StringImpl::destroy(v3, v2);
  return v4;
}

- (id)_redirectURLs
{
  ptr = self->_private->_redirectURLs.__ptr_;
  if (!ptr)
  {
    return 0;
  }

  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(&v6, ptr);
  v3 = v6;
  if (v6)
  {
    v4 = v6;
  }

  return v3;
}

- (void)_setScale:(float)scale isInitial:(BOOL)initial
{
  m_ptr = self->_private->_historyItem.m_ptr;
  *(m_ptr + 64) = scale;
  *(m_ptr + 260) = initial;
}

- (id)_viewportArguments
{
  m_ptr = self->_private->_historyItem.m_ptr;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  LODWORD(v4) = *(m_ptr + 69);
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v5 forKey:WebViewportInitialScaleKey];
  LODWORD(v6) = *(m_ptr + 70);
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [dictionary setObject:v7 forKey:WebViewportMinimumScaleKey];
  LODWORD(v8) = *(m_ptr + 71);
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [dictionary setObject:v9 forKey:WebViewportMaximumScaleKey];
  LODWORD(v10) = *(m_ptr + 67);
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  [dictionary setObject:v11 forKey:WebViewportWidthKey];
  LODWORD(v12) = *(m_ptr + 68);
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  [dictionary setObject:v13 forKey:WebViewportHeightKey];
  LODWORD(v14) = *(m_ptr + 72);
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  [dictionary setObject:v15 forKey:WebViewportUserScalableKey];
  LODWORD(v16) = *(m_ptr + 74);
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  [dictionary setObject:v17 forKey:WebViewportShrinkToFitKey];
  return dictionary;
}

- (void)_setViewportArguments:(id)arguments
{
  [objc_msgSend(arguments objectForKey:{WebViewportInitialScaleKey), "floatValue"}];
  v6 = v5;
  [objc_msgSend(arguments objectForKey:{WebViewportMinimumScaleKey), "floatValue"}];
  v8 = v7;
  [objc_msgSend(arguments objectForKey:{WebViewportMaximumScaleKey), "floatValue"}];
  v10 = v9;
  [objc_msgSend(arguments objectForKey:{WebViewportWidthKey), "floatValue"}];
  v12 = v11;
  [objc_msgSend(arguments objectForKey:{WebViewportHeightKey), "floatValue"}];
  v14 = v13;
  [objc_msgSend(arguments objectForKey:{WebViewportUserScalableKey), "floatValue"}];
  v16 = v15;
  [objc_msgSend(arguments objectForKey:{WebViewportShrinkToFitKey), "floatValue"}];
  m_ptr = self->_private->_historyItem.m_ptr;
  *(m_ptr + 264) = 0;
  *(m_ptr + 67) = v12;
  *(m_ptr + 68) = v14;
  *(m_ptr + 69) = v6;
  *(m_ptr + 70) = v8;
  *(m_ptr + 71) = v10;
  *(m_ptr + 72) = v16;
  *(m_ptr + 73) = -1082130432;
  *(m_ptr + 74) = v18;
  *(m_ptr + 150) = 0;
}

- (CGPoint)_scrollPoint
{
  v2 = WebCore::HistoryItem::scrollPosition(self->_private->_historyItem.m_ptr);

  MEMORY[0x1EEE5E3A0](v2);
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_setScrollPoint:(CGPoint)point
{
  pointCopy = point;
  m_ptr = self->_private->_historyItem.m_ptr;
  WebCore::IntPoint::IntPoint(&v4, &pointCopy);
  WebCore::HistoryItem::setScrollPosition(m_ptr, &v4);
}

@end