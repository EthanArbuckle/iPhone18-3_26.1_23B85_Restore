@interface WebArchivePrivate
- (WebArchivePrivate)init;
- (WebArchivePrivate)initWithCoreArchive:(void *)archive;
- (id).cxx_construct;
- (void)dealloc;
- (void)setCoreArchive:(void *)archive;
@end

@implementation WebArchivePrivate

- (WebArchivePrivate)init
{
  v9.receiver = self;
  v9.super_class = WebArchivePrivate;
  v2 = [(WebArchivePrivate *)&v9 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  WebCore::LegacyWebArchive::create(&v8, v2);
  v4 = v8;
  v8 = 0;
  m_ptr = v3->coreArchive.m_ptr;
  v3->coreArchive.m_ptr = v4;
  if (!m_ptr)
  {
    return v3;
  }

  if (*(m_ptr + 2) != 1)
  {
    --*(m_ptr + 2);
    return v3;
  }

  (*(*m_ptr + 8))(m_ptr);
  v7 = v8;
  v8 = 0;
  if (!v7)
  {
    return v3;
  }

  if (v7[2] == 1)
  {
    (*(*v7 + 8))(v7);
  }

  else
  {
    --v7[2];
  }

  return v3;
}

- (WebArchivePrivate)initWithCoreArchive:(void *)archive
{
  v8.receiver = self;
  v8.super_class = WebArchivePrivate;
  result = [(WebArchivePrivate *)&v8 init];
  if (result && (v5 = *archive) != 0)
  {
    *archive = 0;
    m_ptr = result->coreArchive.m_ptr;
    result->coreArchive.m_ptr = v5;
    if (m_ptr)
    {
      if (*(m_ptr + 2) == 1)
      {
        v7 = result;
        (*(*m_ptr + 8))(m_ptr);
        return v7;
      }

      else
      {
        --*(m_ptr + 2);
      }
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (void)setCoreArchive:(void *)archive
{
  v4 = *archive;
  *archive = 0;
  m_ptr = self->coreArchive.m_ptr;
  self->coreArchive.m_ptr = v4;
  if (m_ptr)
  {
    if (*(m_ptr + 2) == 1)
    {
      (*(*m_ptr + 8))();
    }

    else
    {
      --*(m_ptr + 2);
    }
  }
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = WebArchivePrivate;
    [(WebArchivePrivate *)&v4 dealloc];
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end