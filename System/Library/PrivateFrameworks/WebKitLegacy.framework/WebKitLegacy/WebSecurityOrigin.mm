@interface WebSecurityOrigin
+ (id)webSecurityOriginFromDatabaseIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (WebSecurityOrigin)initWithURL:(id)l;
- (id)_initWithString:(id)string;
- (id)_initWithWebCoreSecurityOrigin:(void *)origin;
- (id)databaseIdentifier;
- (id)databaseQuotaManager;
- (id)host;
- (id)protocol;
- (id)stringValue;
- (id)toString;
- (unint64_t)quota;
- (unint64_t)usage;
- (unsigned)port;
- (void)dealloc;
- (void)setQuota:(unint64_t)quota;
@end

@implementation WebSecurityOrigin

+ (id)webSecurityOriginFromDatabaseIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  WTF::initializeMainThread(self);
  MEMORY[0x1CCA63A40](&v16, identifier);
  WebCore::SecurityOriginData::fromDatabaseIdentifier();
  v5 = v16;
  v16 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v6 = [WebSecurityOrigin alloc];
  if ((v20 & 1) == 0)
  {
    __break(1u);
  }

  v7 = v6;
  WebCore::SecurityOriginData::securityOrigin(&v16, &v17);
  v8 = [(WebSecurityOrigin *)v7 _initWithWebCoreSecurityOrigin:v16];
  v10 = v8;
  if (v8)
  {
    v11 = v8;
  }

  v12 = v16;
  v16 = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v12, v9);
  }

  if ((v20 & 1) != 0 && !v19)
  {
    v13 = v18;
    v18 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }

    v14 = v17;
    v17 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }
  }

  return v10;
}

- (WebSecurityOrigin)initWithURL:(id)l
{
  WTF::initializeMainThread(self);
  v12.receiver = self;
  v12.super_class = WebSecurityOrigin;
  v5 = [(WebSecurityOrigin *)&v12 init];
  if (v5)
  {
    MEMORY[0x1CCA63960](v10, [l absoluteURL]);
    WebCore::SecurityOrigin::create(&v11, v10, v6);
    v5->_private = v11;
    v11 = 0;
    v8 = v10[0];
    v10[0] = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }
  }

  return v5;
}

- (id)protocol
{
  v2 = self->_private;
  if (*(v2 + 32))
  {
    if (*(v2 + 32) != 1)
    {
      mpark::throw_bad_variant_access(self);
    }

    v3 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v3 = (v2 + 8);
  }

  v4 = *v3;
  if (!*v3)
  {
    v6 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
    v11 = 0;
LABEL_9:
    v7 = v6;
    v8 = v11;
    v11 = 0;
    if (v8)
    {
    }

    return v6;
  }

  atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v11, v4, a2);
  if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v5);
  }

  v6 = v11;
  v11 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  return v6;
}

- (id)host
{
  v2 = self->_private;
  if (*(v2 + 32) == 1)
  {
    v3 = MEMORY[0x1E696EBA8];
  }

  else
  {
    if (*(v2 + 32))
    {
      mpark::throw_bad_variant_access(self);
    }

    v3 = (v2 + 16);
  }

  v4 = *v3;
  if (!*v3)
  {
    v6 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
    v11 = 0;
LABEL_9:
    v7 = v6;
    v8 = v11;
    v11 = 0;
    if (v8)
    {
    }

    return v6;
  }

  atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v11, v4, a2);
  if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v5);
  }

  v6 = v11;
  v11 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  return v6;
}

- (id)databaseIdentifier
{
  WebCore::SecurityOriginData::databaseIdentifier(&v10, (self->_private + 8));
  v2 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v11, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v11 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v4 = v11;
  v11 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v11;
    v11 = 0;
    if (v6)
    {
    }
  }

  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  return v4;
}

- (id)toString
{
  WebCore::SecurityOrigin::toString(&v10, self->_private);
  v2 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v11, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v11 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v4 = v11;
  v11 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v11;
    v11 = 0;
    if (v6)
    {
    }
  }

  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  return v4;
}

- (id)stringValue
{
  WebCore::SecurityOrigin::toString(&v10, self->_private);
  v2 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v11, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v11 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v4 = v11;
  v11 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v11;
    v11 = 0;
    if (v6)
    {
    }
  }

  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  return v4;
}

- (unsigned)port
{
  v2 = self->_private;
  if (!*(v2 + 32))
  {
    return *(v2 + 12) & ((*(v2 + 6) >> 1) >> 15);
  }

  if (*(v2 + 32) != 1)
  {
    mpark::throw_bad_variant_access(self);
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    _core = [(WebSecurityOrigin *)self _core];
    _core2 = [equal _core];

    LOBYTE(v5) = MEMORY[0x1EEE5CC08](_core, _core2);
  }

  return v5;
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  databaseQuotaManager = self->_databaseQuotaManager;
  if (databaseQuotaManager)
  {
  }

  v5.receiver = self;
  v5.super_class = WebSecurityOrigin;
  [(WebSecurityOrigin *)&v5 dealloc];
}

- (id)_initWithWebCoreSecurityOrigin:(void *)origin
{
  v5.receiver = self;
  v5.super_class = WebSecurityOrigin;
  result = [(WebSecurityOrigin *)&v5 init];
  if (result)
  {
    atomic_fetch_add(origin, 1u);
    *(result + 1) = origin;
  }

  return result;
}

- (id)_initWithString:(id)string
{
  MEMORY[0x1CCA63A40](&v13, string);
  WebCore::SecurityOrigin::createFromString(&v14, &v13, v3);
  v5 = v13;
  v13 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = [WebSecurityOrigin alloc];
  v7 = [(WebSecurityOrigin *)v6 _initWithWebCoreSecurityOrigin:v14, v13];
  v9 = v7;
  if (v7)
  {
    v10 = v7;
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v11, v8);
  }

  return v9;
}

- (id)databaseQuotaManager
{
  result = self->_databaseQuotaManager;
  if (!result)
  {
    result = [[WebDatabaseQuotaManager alloc] initWithOrigin:self];
    self->_databaseQuotaManager = result;
  }

  return result;
}

- (unint64_t)usage
{
  v3 = WebCore::DatabaseTracker::singleton(self);
  v4 = self->_private + 8;

  return MEMORY[0x1EEE55DC8](v3, v4);
}

- (unint64_t)quota
{
  v3 = WebCore::DatabaseTracker::singleton(self);
  v4 = self->_private + 8;

  return MEMORY[0x1EEE55DC0](v3, v4);
}

- (void)setQuota:(unint64_t)quota
{
  v5 = WebCore::DatabaseTracker::singleton(self);
  v6 = self->_private + 8;

  MEMORY[0x1EEE55DD8](v5, v6, quota);
}

@end