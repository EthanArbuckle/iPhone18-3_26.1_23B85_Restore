@interface WebUserContentURLPattern
- (BOOL)matchesURL:(id)a3;
- (WebUserContentURLPattern)initWithPatternString:(id)a3;
- (id)host;
- (id)scheme;
- (void)dealloc;
@end

@implementation WebUserContentURLPattern

- (WebUserContentURLPattern)initWithPatternString:(id)a3
{
  v23.receiver = self;
  v23.super_class = WebUserContentURLPattern;
  v4 = [(WebUserContentURLPattern *)&v23 init];
  if (!v4)
  {
    return v4;
  }

  v4->_private = objc_alloc_init(WebUserContentURLPatternPrivate);
  MEMORY[0x1CCA63A40](&v18, a3);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 1;
  LOBYTE(v22) = WebCore::UserContentURLPattern::parse();
  v6 = v4->_private;
  v7 = v19;
  v19 = 0;
  m_ptr = v6->pattern.m_scheme.m_impl.m_ptr;
  v6->pattern.m_scheme.m_impl.m_ptr = v7;
  if (m_ptr && atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v5);
  }

  v9 = v20;
  v20 = 0;
  v10 = v6->pattern.m_host.m_impl.m_ptr;
  v6->pattern.m_host.m_impl.m_ptr = v9;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  v11 = v21;
  v21 = 0;
  v12 = v6->pattern.m_path.m_impl.m_ptr;
  v6->pattern.m_path.m_impl.m_ptr = v11;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v5);
    }

    v13 = v21;
    *&v6->pattern.m_error = v22;
    v21 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v5);
    }

    v14 = v20;
    v20 = 0;
    if (!v14)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  *&v6->pattern.m_error = v22;
  v14 = v20;
  v20 = 0;
  v21 = 0;
  if (v14)
  {
LABEL_15:
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v5);
    }
  }

LABEL_17:
  v15 = v19;
  v19 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v5);
  }

  v16 = v18;
  v18 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v5);
  }

  return v4;
}

- (void)dealloc
{
  self->_private = 0;
  v3.receiver = self;
  v3.super_class = WebUserContentURLPattern;
  [(WebUserContentURLPattern *)&v3 dealloc];
}

- (id)scheme
{
  m_ptr = self->_private->pattern.m_scheme.m_impl.m_ptr;
  if (!m_ptr)
  {
    v4 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
    v9 = 0;
LABEL_5:
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }

    return v4;
  }

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v9, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_5;
  }

  return v4;
}

- (id)host
{
  m_ptr = self->_private->pattern.m_host.m_impl.m_ptr;
  if (!m_ptr)
  {
    v4 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
    v9 = 0;
LABEL_5:
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }

    return v4;
  }

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v9, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_5;
  }

  return v4;
}

- (BOOL)matchesURL:(id)a3
{
  v3 = self->_private;
  if (v3->pattern.m_error)
  {
    LOBYTE(v4) = 0;
    return v4;
  }

  MEMORY[0x1CCA63960](v24, a3);
  v4 = WebCore::UserContentURLPattern::matchesScheme(&v3->pattern, v24);
  if (v4)
  {
    MEMORY[0x1CCA63960](v23, a3);
    WTF::URL::host(v23);
    if ((v7 & 0x100000000) != 0)
    {
      if (v7)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        goto LABEL_9;
      }
    }

    else if (v7)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_9:
      v8 = v22[0];
LABEL_11:
      v26 = v8;
      v9 = WebCore::UserContentURLPattern::matchesHost(&v3->pattern, &v26);
      v10 = v26;
      v26 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v6);
      }

      if (!v9)
      {
        LOBYTE(v4) = 0;
LABEL_29:
        v17 = v23[0];
        v23[0] = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v18 = v4;
          WTF::StringImpl::destroy(v17, v6);
          LOBYTE(v4) = v18;
        }

        goto LABEL_32;
      }

      MEMORY[0x1CCA63960](v22, a3);
      WTF::URL::path(v22);
      if ((v11 & 0x100000000) != 0)
      {
        if (v11)
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          goto LABEL_21;
        }
      }

      else if (v11)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_21:
        v12 = v26;
        goto LABEL_23;
      }

      v12 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
LABEL_23:
      v25 = v12;
      LOBYTE(v4) = WebCore::UserContentURLPattern::matchesPath(&v3->pattern, &v25);
      v13 = v25;
      v25 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v14 = v4;
        WTF::StringImpl::destroy(v13, v6);
        LOBYTE(v4) = v14;
      }

      v15 = v22[0];
      v22[0] = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v16 = v4;
        WTF::StringImpl::destroy(v15, v6);
        LOBYTE(v4) = v16;
      }

      goto LABEL_29;
    }

    v8 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_11;
  }

LABEL_32:
  v19 = v24[0];
  v24[0] = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v20 = v4;
    WTF::StringImpl::destroy(v19, v6);
    LOBYTE(v4) = v20;
  }

  return v4;
}

@end