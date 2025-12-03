@interface WebNotification
- (WebNotification)initWithCoreNotification:(void *)notification;
- (id)body;
- (id)dir;
- (id)iconURL;
- (id)lang;
- (id)notificationID;
- (id)origin;
- (id)tag;
- (id)title;
- (void)dealloc;
- (void)dispatchClickEvent;
- (void)dispatchCloseEvent;
- (void)dispatchErrorEvent;
- (void)dispatchShowEvent;
- (void)finalize;
@end

@implementation WebNotification

- (WebNotification)initWithCoreNotification:(void *)notification
{
  v47.receiver = self;
  v47.super_class = WebNotification;
  v4 = [(WebNotification *)&v47 init];
  if (!v4)
  {
    return v4;
  }

  v5 = objc_alloc_init(WebNotificationPrivate);
  v6 = v5;
  v4->_private = v5;
  if (*(&v5[1]._internal.var0.__engaged_ + 48))
  {
    WTF::URL::operator=(&v5->_internal, notification);
    v8 = *(notification + 5);
    *(notification + 5) = 0;
    m_ptr = v6->_internal.var0.__val_.title.m_impl.m_ptr;
    v6->_internal.var0.__val_.title.m_impl.m_ptr = v8;
    if (m_ptr && atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v7);
    }

    v10 = *(notification + 6);
    *(notification + 6) = 0;
    v11 = v6->_internal.var0.__val_.body.m_impl.m_ptr;
    v6->_internal.var0.__val_.body.m_impl.m_ptr = v10;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }

    v12 = *(notification + 7);
    *(notification + 7) = 0;
    v13 = v6->_internal.var0.__val_.iconURL.m_impl.m_ptr;
    v6->_internal.var0.__val_.iconURL.m_impl.m_ptr = v12;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v7);
    }

    v14 = *(notification + 8);
    *(notification + 8) = 0;
    v15 = v6->_internal.var0.__val_.tag.m_impl.m_ptr;
    v6->_internal.var0.__val_.tag.m_impl.m_ptr = v14;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v7);
    }

    v16 = *(notification + 9);
    *(notification + 9) = 0;
    v17 = v6->_internal.var0.__val_.language.m_impl.m_ptr;
    v6->_internal.var0.__val_.language.m_impl.m_ptr = v16;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v7);
    }

    v6->_internal.var0.__val_.direction = *(notification + 80);
    v18 = *(notification + 11);
    *(notification + 11) = 0;
    v19 = v6->_internal.var0.__val_.originString.m_impl.m_ptr;
    v6->_internal.var0.__val_.originString.m_impl.m_ptr = v18;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v7);
    }

    WTF::URL::operator=(&v6->_internal.var0.__val_.serviceWorkerRegistrationURL, notification + 12);
    *(&v6->_internal.var0.__engaged_ + 9) = *(notification + 9);
    v21 = *(notification + 13);
    v23 = *(notification + 10);
    v22 = *(notification + 11);
    *&v6[1].super.isa = *(notification + 12);
    *&v6[1]._internal.var0.__null_state_ = v21;
    *&v6->_internal.creationTime.m_value = v23;
    *&v6->_internal.data.m_capacity = v22;
    v24 = *(&v6[1]._internal.var0.__engaged_ + 2);
    if (v24)
    {
      *(&v6[1]._internal.var0.__engaged_ + 2) = 0;
      v6[1]._internal.var0.__val_.navigateURL.m_hostEnd = 0;
      WTF::fastFree(v24, v20);
    }

    v25 = *(notification + 28);
    *(notification + 28) = 0;
    *(&v6[1]._internal.var0.__engaged_ + 2) = v25;
    LODWORD(v25) = *(notification + 58);
    *(notification + 58) = 0;
    v6[1]._internal.var0.__val_.navigateURL.m_hostEnd = v25;
    LODWORD(v25) = *(notification + 59);
    *(notification + 59) = 0;
    v6[1]._internal.var0.__val_.navigateURL.m_pathAfterLastSlash = v25;
    *(&v6[1]._internal.var0.__engaged_ + 16) = *(notification + 120);
    return v4;
  }

  v27 = *notification;
  *notification = 0;
  v5->_internal.var0.contextIdentifier.var0.m_processIdentifier.m_identifier = v27;
  v28 = *(&v5->_internal.var0.__val_.navigateURL + 2) & 0xFFFFFFFE | *(notification + 2) & 1;
  *(&v5->_internal.var0.__val_.navigateURL + 2) = v28;
  v29 = v28 & 0xFFFFFFFD | (2 * ((*(notification + 2) >> 1) & 1));
  *(&v5->_internal.var0.__val_.navigateURL + 2) = v29;
  v30 = v29 & 0xFFFFFFFB | (4 * ((*(notification + 2) >> 2) & 1));
  *(&v5->_internal.var0.__val_.navigateURL + 2) = v30;
  v31 = v30 & 0xFFFFFFC7 | (8 * ((*(notification + 2) >> 3) & 7));
  *(&v5->_internal.var0.__val_.navigateURL + 2) = v31;
  *(&v5->_internal.var0.__val_.navigateURL + 2) = *(notification + 2) & 0xFFFFFFC0 | v31 & 0x3F;
  *(&v5->_internal.var0.__engaged_ + 12) = *(notification + 12);
  *(&v5->_internal.var0.__engaged_ + 28) = *(notification + 28);
  v5->_internal.var0.__val_.navigateURL.m_queryEnd = *(notification + 9);
  *(notification + 2) &= ~1u;
  v32 = *(notification + 5);
  *(notification + 5) = 0;
  v5->_internal.var0.__val_.title.m_impl.m_ptr = v32;
  v33 = *(notification + 6);
  *(notification + 6) = 0;
  v5->_internal.var0.__val_.body.m_impl.m_ptr = v33;
  v34 = *(notification + 7);
  *(notification + 7) = 0;
  v5->_internal.var0.__val_.iconURL.m_impl.m_ptr = v34;
  v35 = *(notification + 8);
  *(notification + 8) = 0;
  v5->_internal.var0.__val_.tag.m_impl.m_ptr = v35;
  v36 = *(notification + 9);
  *(notification + 9) = 0;
  v5->_internal.var0.__val_.language.m_impl.m_ptr = v36;
  v5->_internal.var0.__val_.direction = *(notification + 80);
  v37 = *(notification + 11);
  *(notification + 11) = 0;
  v5->_internal.var0.__val_.originString.m_impl.m_ptr = v37;
  v38 = *(notification + 12);
  *(notification + 12) = 0;
  v5->_internal.var0.__val_.serviceWorkerRegistrationURL.m_string.m_impl.m_ptr = v38;
  v39 = *(&v5->_internal.var0.__val_.serviceWorkerRegistrationURL + 2) & 0xFFFFFFFE | *(notification + 26) & 1;
  *(&v5->_internal.var0.__val_.serviceWorkerRegistrationURL + 2) = v39;
  v40 = v39 & 0xFFFFFFFD | (2 * ((*(notification + 26) >> 1) & 1));
  *(&v5->_internal.var0.__val_.serviceWorkerRegistrationURL + 2) = v40;
  v41 = v40 & 0xFFFFFFFB | (4 * ((*(notification + 26) >> 2) & 1));
  *(&v5->_internal.var0.__val_.serviceWorkerRegistrationURL + 2) = v41;
  v42 = v41 & 0xFFFFFFC7 | (8 * ((*(notification + 26) >> 3) & 7));
  *(&v5->_internal.var0.__val_.serviceWorkerRegistrationURL + 2) = v42;
  *(&v5->_internal.var0.__val_.serviceWorkerRegistrationURL + 2) = *(notification + 26) & 0xFFFFFFC0 | v42 & 0x3F;
  *(&v5->_internal.var0.__engaged_ + 108) = *(notification + 108);
  *(&v5->_internal.var0.__engaged_ + 124) = *(notification + 124);
  v5->_internal.var0.__val_.serviceWorkerRegistrationURL.m_queryEnd = *(notification + 33);
  *(notification + 26) &= ~1u;
  v43 = *(notification + 10);
  v44 = *(notification + 11);
  v45 = *(notification + 13);
  *&v5[1].super.isa = *(notification + 12);
  *&v5[1]._internal.var0.__null_state_ = v45;
  *&v5->_internal.creationTime.m_value = v43;
  *&v5->_internal.data.m_capacity = v44;
  *(&v5->_internal.var0.__engaged_ + 9) = *(notification + 9);
  *(&v5[1]._internal.var0.__engaged_ + 2) = 0;
  *(&v5[1]._internal.var0.__engaged_ + 3) = 0;
  v46 = *(notification + 28);
  *(notification + 28) = 0;
  *(&v5[1]._internal.var0.__engaged_ + 2) = v46;
  LODWORD(v46) = *(notification + 58);
  *(notification + 58) = 0;
  v5[1]._internal.var0.__val_.navigateURL.m_hostEnd = v46;
  LODWORD(v46) = *(notification + 59);
  *(notification + 59) = 0;
  v5[1]._internal.var0.__val_.navigateURL.m_pathAfterLastSlash = v46;
  *(&v5[1]._internal.var0.__engaged_ + 16) = *(notification + 120);
  *(&v5[1]._internal.var0.__engaged_ + 48) = 1;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebNotification;
  [(WebNotification *)&v3 dealloc];
}

- (id)title
{
  v2 = self->_private;
  if (!*(&v2[1]._internal.var0.__engaged_ + 48))
  {
    __break(1u);
    goto LABEL_10;
  }

  m_ptr = v2->_internal.var0.__val_.title.m_impl.m_ptr;
  if (!m_ptr)
  {
LABEL_10:
    v5 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
    v10 = 0;
LABEL_6:
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }

    return v5;
  }

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v10, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v4);
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

  return v5;
}

- (id)body
{
  v2 = self->_private;
  if (!*(&v2[1]._internal.var0.__engaged_ + 48))
  {
    __break(1u);
    goto LABEL_10;
  }

  m_ptr = v2->_internal.var0.__val_.body.m_impl.m_ptr;
  if (!m_ptr)
  {
LABEL_10:
    v5 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
    v10 = 0;
LABEL_6:
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }

    return v5;
  }

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v10, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v4);
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

  return v5;
}

- (id)tag
{
  v2 = self->_private;
  if (!*(&v2[1]._internal.var0.__engaged_ + 48))
  {
    __break(1u);
    goto LABEL_10;
  }

  m_ptr = v2->_internal.var0.__val_.tag.m_impl.m_ptr;
  if (!m_ptr)
  {
LABEL_10:
    v5 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
    v10 = 0;
LABEL_6:
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }

    return v5;
  }

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v10, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v4);
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

  return v5;
}

- (id)iconURL
{
  v2 = self->_private;
  if (!*(&v2[1]._internal.var0.__engaged_ + 48))
  {
    __break(1u);
    goto LABEL_10;
  }

  m_ptr = v2->_internal.var0.__val_.iconURL.m_impl.m_ptr;
  if (!m_ptr)
  {
LABEL_10:
    v5 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
    v10 = 0;
LABEL_6:
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }

    return v5;
  }

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v10, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v4);
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

  return v5;
}

- (id)lang
{
  v2 = self->_private;
  if (!*(&v2[1]._internal.var0.__engaged_ + 48))
  {
    __break(1u);
    goto LABEL_10;
  }

  m_ptr = v2->_internal.var0.__val_.language.m_impl.m_ptr;
  if (!m_ptr)
  {
LABEL_10:
    v5 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
    v10 = 0;
LABEL_6:
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }

    return v5;
  }

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v10, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v4);
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

  return v5;
}

- (id)dir
{
  v2 = *(self + 1);
  if (*(v2 + 272))
  {
    v3 = *(v2 + 96);
    v4 = @"auto";
    if (v3 == 1)
    {
      v4 = @"ltr";
    }

    if (v3 == 2)
    {
      return @"rtl";
    }

    else
    {
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (id)origin
{
  v4 = [WebSecurityOrigin alloc];
  v5 = self->_private;
  if (!*(&v5[1]._internal.var0.__engaged_ + 48))
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v4;
  m_ptr = v5->_internal.var0.__val_.originString.m_impl.m_ptr;
  if (!m_ptr)
  {
LABEL_11:
    v14 = &stru_1F472E7E8;
    v13 = &stru_1F472E7E8;
    goto LABEL_5;
  }

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v14, m_ptr);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v7);
  }

LABEL_5:
  v8 = [(WebSecurityOrigin *)v2 _initWithString:v14];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
  }

  return v9;
}

- (id)notificationID
{
  v2 = self->_private;
  if (!*(&v2[1]._internal.var0.__engaged_ + 48))
  {
    __break(1u);
    goto LABEL_13;
  }

  WTF::UUID::toString(&v11, (&v2->_internal.var0.__engaged_ + 144));
  v3 = v11;
  if (!v11)
  {
LABEL_13:
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
    goto LABEL_5;
  }

  atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v12, v3);
  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v4);
  }

LABEL_5:
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

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  return v5;
}

- (void)dispatchShowEvent
{
  if (a2)
  {
    MEMORY[0x1EEE54CF0](a2);
  }
}

- (void)dispatchCloseEvent
{
  if (a2)
  {
    MEMORY[0x1EEE54D00](a2);
  }
}

- (void)dispatchClickEvent
{
  if (a2)
  {
    MEMORY[0x1EEE54CF8](a2);
  }
}

- (void)dispatchErrorEvent
{
  if (a2)
  {
    MEMORY[0x1EEE54D08](a2);
  }
}

- (void)finalize
{
  if (a2)
  {
    MEMORY[0x1EEE54D20](a2);
  }
}

@end