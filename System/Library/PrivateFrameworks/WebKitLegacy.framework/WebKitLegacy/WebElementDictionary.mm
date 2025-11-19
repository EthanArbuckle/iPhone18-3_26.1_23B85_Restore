@interface WebElementDictionary
+ (void)initializeLookupTable;
- (WebElementDictionary)initWithHitTestResult:(const void *)a3;
- (id)_absoluteImageURL;
- (id)_absoluteLinkURL;
- (id)_absoluteMediaURL;
- (id)_altDisplayString;
- (id)_isContentEditable;
- (id)_isLiveLink;
- (id)_isSelected;
- (id)_spellingToolTip;
- (id)_targetWebFrame;
- (id)_textContent;
- (id)_title;
- (id)_titleDisplayString;
- (id)_webFrame;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)_fillCache;
- (void)dealloc;
@end

@implementation WebElementDictionary

+ (void)initializeLookupTable
{
  if (_MergedGlobals_7)
  {
    if (qword_1EC2614C0)
    {
      return;
    }
  }

  else
  {
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], 0);
  if ((_MergedGlobals_7 & 1) == 0)
  {
    _MergedGlobals_7 = 1;
    qword_1EC2614C0 = Mutable;
    goto LABEL_11;
  }

  v3 = qword_1EC2614C0;
  qword_1EC2614C0 = Mutable;
  if (!v3)
  {
LABEL_11:
    v4 = WebElementDOMNodeKey;
    goto LABEL_12;
  }

  CFRelease(v3);
  v4 = WebElementDOMNodeKey;
  if (_MergedGlobals_7 == 1)
  {
    Mutable = qword_1EC2614C0;
  }

  else
  {
    Mutable = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

LABEL_12:
  CFDictionaryAddValue(Mutable, v4, sel__domNode);
  if (_MergedGlobals_7 == 1)
  {
    v5 = qword_1EC2614C0;
  }

  else
  {
    v5 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v5, WebElementFrameKey, sel__webFrame);
  if (_MergedGlobals_7 == 1)
  {
    v6 = qword_1EC2614C0;
  }

  else
  {
    v6 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v6, WebElementImageAltStringKey, sel__altDisplayString);
  if (_MergedGlobals_7 == 1)
  {
    v7 = qword_1EC2614C0;
  }

  else
  {
    v7 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v7, WebElementImageURLKey, sel__absoluteImageURL);
  if (_MergedGlobals_7 == 1)
  {
    v8 = qword_1EC2614C0;
  }

  else
  {
    v8 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v8, WebElementIsSelectedKey, sel__isSelected);
  if (_MergedGlobals_7 == 1)
  {
    v9 = qword_1EC2614C0;
  }

  else
  {
    v9 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v9, WebElementMediaURLKey[0], sel__absoluteMediaURL);
  if (_MergedGlobals_7 == 1)
  {
    v10 = qword_1EC2614C0;
  }

  else
  {
    v10 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v10, WebElementSpellingToolTipKey[0], sel__spellingToolTip);
  if (_MergedGlobals_7 == 1)
  {
    v11 = qword_1EC2614C0;
  }

  else
  {
    v11 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v11, WebElementTitleKey[0], sel__title);
  if (_MergedGlobals_7 == 1)
  {
    v12 = qword_1EC2614C0;
  }

  else
  {
    v12 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v12, WebElementLinkURLKey, sel__absoluteLinkURL);
  if (_MergedGlobals_7 == 1)
  {
    v13 = qword_1EC2614C0;
  }

  else
  {
    v13 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v13, WebElementLinkTargetFrameKey, sel__targetWebFrame);
  if (_MergedGlobals_7 == 1)
  {
    v14 = qword_1EC2614C0;
  }

  else
  {
    v14 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v14, WebElementLinkTitleKey, sel__titleDisplayString);
  if (_MergedGlobals_7 == 1)
  {
    v15 = qword_1EC2614C0;
  }

  else
  {
    v15 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v15, WebElementLinkLabelKey, sel__textContent);
  if (_MergedGlobals_7 == 1)
  {
    v16 = qword_1EC2614C0;
  }

  else
  {
    v16 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v16, WebElementLinkIsLiveKey[0], sel__isLiveLink);
  if (_MergedGlobals_7 == 1)
  {
    v17 = qword_1EC2614C0;
  }

  else
  {
    v17 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v17, WebElementIsContentEditableKey[0], sel__isContentEditable);
  v18 = WebElementIsInScrollBarKey[0];
  if (_MergedGlobals_7 == 1)
  {
    v19 = qword_1EC2614C0;
  }

  else
  {
    v19 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryAddValue(v19, v18, sel__isInScrollBar);
}

- (WebElementDictionary)initWithHitTestResult:(const void *)a3
{
  [objc_opt_class() initializeLookupTable];
  v10.receiver = self;
  v10.super_class = WebElementDictionary;
  v6 = [(WebElementDictionary *)&v10 init];
  if (v6)
  {
    if (*MEMORY[0x1E69E2518])
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2518], v5);
    }

    else
    {
      NonCompact = WebCore::HitTestResult::operatorNewSlow(0x88);
    }

    v8 = NonCompact;
    MEMORY[0x1CCA64810](NonCompact, a3);
    v6->_result = v8;
  }

  return v6;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    if (self->_result)
    {
      v4 = MEMORY[0x1CCA64820]();
      bmalloc::api::tzoneFree(v4, v5);
    }

    v6.receiver = self;
    v6.super_class = WebElementDictionary;
    [(WebElementDictionary *)&v6 dealloc];
  }
}

- (void)_fillCache
{
  if (_MergedGlobals_7 == 1)
  {
    v3 = qword_1EC2614C0;
  }

  else
  {
    v3 = 0;
    qword_1EC2614C0 = 0;
    _MergedGlobals_7 = 1;
  }

  CFDictionaryApplyFunction(v3, cacheValueForKey, self);
  self->_cacheComplete = 1;
}

- (unint64_t)count
{
  if (!self->_cacheComplete)
  {
    [(WebElementDictionary *)self _fillCache];
  }

  cache = self->_cache;

  return [(NSMutableDictionary *)cache count];
}

- (id)keyEnumerator
{
  if (!self->_cacheComplete)
  {
    [(WebElementDictionary *)self _fillCache];
  }

  cache = self->_cache;

  return [(NSMutableDictionary *)cache keyEnumerator];
}

- (id)objectForKey:(id)a3
{
  result = [(NSMutableDictionary *)self->_cache objectForKey:?];
  if (!result)
  {
    if (self->_cacheComplete || ([(NSMutableSet *)self->_nilValues containsObject:a3]& 1) != 0)
    {
      return 0;
    }

    if (_MergedGlobals_7 == 1)
    {
      result = CFDictionaryGetValue(qword_1EC2614C0, a3);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      qword_1EC2614C0 = 0;
      _MergedGlobals_7 = 1;
      result = CFDictionaryGetValue(0, a3);
      if (!result)
      {
        return result;
      }
    }

    v6 = [(WebElementDictionary *)self performSelector:result];
    if (_MergedGlobals_7 == 1)
    {
      Count = CFDictionaryGetCount(qword_1EC2614C0);
      if (v6)
      {
LABEL_10:
        cache = self->_cache;
        if (!cache)
        {
          cache = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:Count];
          self->_cache = cache;
        }

        [(NSMutableDictionary *)cache setObject:v6 forKey:a3];
LABEL_19:
        v10 = [(NSMutableDictionary *)self->_cache count];
        self->_cacheComplete = [(NSMutableSet *)self->_nilValues count]+ v10 == Count;
        return v6;
      }
    }

    else
    {
      qword_1EC2614C0 = 0;
      _MergedGlobals_7 = 1;
      Count = CFDictionaryGetCount(0);
      if (v6)
      {
        goto LABEL_10;
      }
    }

    nilValues = self->_nilValues;
    if (!nilValues)
    {
      nilValues = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:Count];
      self->_nilValues = nilValues;
    }

    [(NSMutableSet *)nilValues addObject:a3];
    goto LABEL_19;
  }

  return result;
}

- (id)_webFrame
{
  v2 = [-[WebElementDictionary _domNode](self "_domNode")];

  return [v2 webFrame];
}

- (id)_altDisplayString
{
  WebCore::HitTestResult::altDisplayString(&v8, self->_result);
  v2 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v2 = v9;
    v9 = 0;
    if (v2)
    {
      v4 = v2;
      v5 = v9;
      v9 = 0;
      if (v5)
      {
      }
    }

    v6 = v8;
    v8 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }

  return v2;
}

- (id)_spellingToolTip
{
  WebCore::HitTestResult::spellingToolTip();
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v8);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }

    v2 = v8;
    v8 = 0;
    if (v2)
    {
      v4 = v2;
      v5 = v8;
      v8 = 0;
      if (v5)
      {
      }
    }

    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }
  }

  return v2;
}

- (id)_absoluteImageURL
{
  WebCore::HitTestResult::absoluteImageURL(v8, self->_result);
  WTF::URL::createCFURL(&v9, v8);
  v3 = v9;
  v9 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v9;
    v9 = 0;
    if (v5)
    {
    }
  }

  v6 = v8[0];
  v8[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  return v3;
}

- (id)_absoluteMediaURL
{
  WebCore::HitTestResult::absoluteMediaURL(v8, self->_result);
  WTF::URL::createCFURL(&v9, v8);
  v3 = v9;
  v9 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v9;
    v9 = 0;
    if (v5)
    {
    }
  }

  v6 = v8[0];
  v8[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  return v3;
}

- (id)_isSelected
{
  v2 = MEMORY[0x1E696AD98];
  isSelected = WebCore::HitTestResult::isSelected(self->_result);

  return [v2 numberWithBool:isSelected];
}

- (id)_title
{
  WebCore::HitTestResult::title();
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v8);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }

    v2 = v8;
    v8 = 0;
    if (v2)
    {
      v4 = v2;
      v5 = v8;
      v8 = 0;
      if (v5)
      {
      }
    }

    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }
  }

  return v2;
}

- (id)_absoluteLinkURL
{
  WebCore::HitTestResult::absoluteLinkURL(v8, self->_result);
  WTF::URL::createCFURL(&v9, v8);
  v3 = v9;
  v9 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v9;
    v9 = 0;
    if (v5)
    {
    }
  }

  v6 = v8[0];
  v8[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  return v3;
}

- (id)_targetWebFrame
{
  result = WebCore::HitTestResult::targetFrame(self->_result);
  if (result)
  {
    v3 = *(*(result + 26) + 16);
    if ((*(*v3 + 129))(v3))
    {
      return 0;
    }

    else
    {
      return v3[3];
    }
  }

  return result;
}

- (id)_titleDisplayString
{
  WebCore::HitTestResult::titleDisplayString(&v8, self->_result);
  v2 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v2 = v9;
    v9 = 0;
    if (v2)
    {
      v4 = v2;
      v5 = v9;
      v9 = 0;
      if (v5)
      {
      }
    }

    v6 = v8;
    v8 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }

  return v2;
}

- (id)_textContent
{
  WebCore::HitTestResult::textContent(&v8, self->_result);
  v2 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v2 = v9;
    v9 = 0;
    if (v2)
    {
      v4 = v2;
      v5 = v9;
      v9 = 0;
      if (v5)
      {
      }
    }

    v6 = v8;
    v8 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }

  return v2;
}

- (id)_isLiveLink
{
  v2 = *(self->_result + 13);
  v3 = MEMORY[0x1E696AD98];
  if (v2)
  {
    isDraggableLink = WebCore::isDraggableLink(v2, a2);
    v5 = v3;
  }

  else
  {
    isDraggableLink = 0;
    v5 = MEMORY[0x1E696AD98];
  }

  return [v5 numberWithBool:isDraggableLink];
}

- (id)_isContentEditable
{
  v2 = MEMORY[0x1E696AD98];
  isContentEditable = WebCore::HitTestResult::isContentEditable(self->_result);

  return [v2 numberWithBool:isContentEditable];
}

@end