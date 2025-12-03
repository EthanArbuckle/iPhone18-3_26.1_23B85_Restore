@interface WebResource
- (NSData)data;
- (NSString)MIMEType;
- (NSString)frameName;
- (NSString)textEncodingName;
- (NSURL)URL;
- (WebResource)init;
- (WebResource)initWithCoder:(id)coder;
- (id)_initWithCoreResource:(void *)resource;
- (id)_initWithData:(id)data URL:(id)l MIMEType:(id)type textEncodingName:(id)name frameName:(id)frameName response:(id)response copyData:(BOOL)copyData;
- (id)_response;
- (id)_stringValue;
- (id)_suggestedFilename;
- (id)description;
- (void)_ignoreWhenUnarchiving;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WebResource

- (WebResource)init
{
  v5.receiver = self;
  v5.super_class = WebResource;
  result = [(WebResource *)&v5 init];
  if (result)
  {
    v3 = result;
    v4 = objc_alloc_init(WebResourcePrivate);
    result = v3;
    v3->_private = v4;
  }

  return result;
}

- (WebResource)initWithCoder:(id)coder
{
  v40.receiver = self;
  v40.super_class = WebResource;
  v4 = [(WebResource *)&v40 init];
  if (v4)
  {
    v39 = 0;
    v5 = [coder decodeObjectForKey:@"WebResourceData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v5;
    }

    v6 = [coder decodeObjectForKey:@"WebResourceURL"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
    }

    v7 = [coder decodeObjectForKey:@"WebResourceMIMEType"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
    }

    v8 = [coder decodeObjectForKey:@"WebResourceTextEncodingName"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
    }

    v9 = [coder decodeObjectForKey:@"WebResourceFrameName"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
    }

    v10 = [coder decodeObjectForKey:@"WebResourceResponse"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
    }

    WebCore::SharedBuffer::create<NSData *&>(&v39, v11, &v36);
    v12 = v36;
    v36 = 0;
    v37 = v12;
    MEMORY[0x1CCA63960](&v35, v6);
    MEMORY[0x1CCA63A40](&v34, v7);
    MEMORY[0x1CCA63A40](&v33, v8);
    MEMORY[0x1CCA63A40](&v32, v9);
    WebCore::ResourceResponseBase::ResourceResponseBase(v28);
    v30 = v10;
    if (v10)
    {
      v13 = v10;
    }

    v31 = 0;
    v14 = v29 & 0xF0;
    if (!v10)
    {
      ++v14;
    }

    v29 = v14;
    WebCore::ArchiveResource::create();
    v16 = v30;
    v30 = 0;
    if (v16)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v28, v15);
    v18 = v32;
    v32 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    v19 = v33;
    v33 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v17);
    }

    v20 = v34;
    v34 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }

    v21 = v35;
    v35 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v17);
    }

    v22 = v37;
    v37 = 0;
    if (v22 && atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v22 + 2);
      (*(*v22 + 8))(v22);
      v23 = v36;
      v36 = 0;
      if (!v23)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v23 = v36;
      v36 = 0;
      if (!v23)
      {
        goto LABEL_37;
      }
    }

    if (atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v23 + 2);
      (*(*v23 + 8))(v23);
    }

LABEL_37:
    if (v38)
    {
      v24 = [WebResourcePrivate alloc];
      v28[0] = v38;
      v38 = 0;
      v4->_private = [(WebResourcePrivate *)v24 initWithCoreResource:v28, 0];
      v25 = v28[0];
      v28[0] = 0;
      if (v25)
      {
        if (v25[2] == 1)
        {
          (*(*v25 + 8))(v25);
          v26 = v38;
          v38 = 0;
          if (!v26)
          {
            return v4;
          }
        }

        else
        {
          --v25[2];
          v26 = v38;
          v38 = 0;
          if (!v26)
          {
            return v4;
          }
        }

LABEL_44:
        if (v26[2] == 1)
        {
          (*(*v26 + 8))(v26);
        }

        else
        {
          --v26[2];
        }

        return v4;
      }
    }

    else
    {

      v4 = 0;
    }

    v26 = v38;
    v38 = 0;
    if (!v26)
    {
      return v4;
    }

    goto LABEL_44;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  m_ptr = self->_private->coreResource.m_ptr;
  if (m_ptr)
  {
    v5 = *(m_ptr + 40);
    if (v5)
    {
      atomic_fetch_add(v5 + 2, 1u);
      if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5 + 2);
        v21 = v5;
        (*(*v5 + 8))(v5, a2);
        v5 = v21;
      }
    }

    WebCore::FragmentedSharedBuffer::makeContiguous(&v22, v5);
    WebCore::SharedBuffer::createNSData(&v23, v22);
    v6 = v22;
    v7 = v23;
    v22 = 0;
    v23 = 0;
    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6 + 2);
      (*(*v6 + 8))(v6);
    }

    WTF::URL::createCFURL(&v23, (m_ptr + 16));
    v8 = v23;
    v9 = *(m_ptr + 41);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v23, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v23 = &stru_1F472E7E8;
      v18 = &stru_1F472E7E8;
    }

    v11 = v23;
    v12 = *(m_ptr + 42);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v23, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v23 = &stru_1F472E7E8;
      v19 = &stru_1F472E7E8;
    }

    v14 = v23;
    v15 = *(m_ptr + 43);
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v23, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      v23 = &stru_1F472E7E8;
      v20 = &stru_1F472E7E8;
    }

    v17 = v23;
    m_ptr = WebCore::ResourceResponse::nsURLResponse((m_ptr + 56));
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v11 = 0;
    v14 = 0;
    v17 = 0;
  }

  [coder encodeObject:v7 forKey:{@"WebResourceData", v22}];
  [coder encodeObject:v8 forKey:@"WebResourceURL"];
  [coder encodeObject:v11 forKey:@"WebResourceMIMEType"];
  [coder encodeObject:v14 forKey:@"WebResourceTextEncodingName"];
  [coder encodeObject:v17 forKey:@"WebResourceFrameName"];
  [coder encodeObject:m_ptr forKey:@"WebResourceResponse"];
  if (v17)
  {
  }

  if (v14)
  {
  }

  if (v11)
  {
  }

  if (v8)
  {
  }

  if (v7)
  {
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebResource;
  [(WebResource *)&v3 dealloc];
}

- (NSData)data
{
  m_ptr = self->_private->coreResource.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v3 = *(m_ptr + 40);
  if (v3)
  {
    atomic_fetch_add(v3 + 2, 1u);
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      v9 = v3;
      (*(*v3 + 8))(v3, a2);
      v3 = v9;
    }
  }

  WebCore::FragmentedSharedBuffer::makeContiguous(&v10, v3);
  WebCore::SharedBuffer::createNSData(&v11, v10);
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
  if (!v7 || atomic_fetch_add(v7 + 2, 0xFFFFFFFF) != 1)
  {
    return v4;
  }

  atomic_store(1u, v7 + 2);
  (*(*v7 + 8))(v7);
  return v4;
}

- (NSURL)URL
{
  m_ptr = self->_private->coreResource.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  WTF::URL::createCFURL(&v7, (m_ptr + 16));
  v3 = v7;
  v7 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v7;
    v7 = 0;
    if (v5)
    {
    }
  }

  return v3;
}

- (NSString)MIMEType
{
  m_ptr = self->_private->coreResource.m_ptr;
  if (m_ptr)
  {
    v3 = *(m_ptr + 41);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v10, v3, a2);
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, v4);
      }

      v5 = v10;
      v10 = 0;
      if (!v5)
      {
        return &v5->isa;
      }
    }

    else
    {
      v5 = &stru_1F472E7E8;
      v9 = &stru_1F472E7E8;
      v10 = 0;
    }

    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }

    return &v5->isa;
  }

  return 0;
}

- (NSString)textEncodingName
{
  m_ptr = self->_private->coreResource.m_ptr;
  if (m_ptr)
  {
    v3 = *(m_ptr + 42);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v10, v3, a2);
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, v4);
      }

      v5 = v10;
      v10 = 0;
      if (!v5)
      {
        return &v5->isa;
      }
    }

    else
    {
      v5 = &stru_1F472E7E8;
      v9 = &stru_1F472E7E8;
      v10 = 0;
    }

    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }

    return &v5->isa;
  }

  return 0;
}

- (NSString)frameName
{
  m_ptr = self->_private->coreResource.m_ptr;
  if (m_ptr)
  {
    v3 = *(m_ptr + 43);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v10, v3, a2);
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, v4);
      }

      v5 = v10;
      v10 = 0;
      if (!v5)
      {
        return &v5->isa;
      }
    }

    else
    {
      v5 = &stru_1F472E7E8;
      v9 = &stru_1F472E7E8;
      v10 = 0;
    }

    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }

    return &v5->isa;
  }

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %@>", NSStringFromClass(v4), -[WebResource URL](self, "URL")];
}

- (id)_initWithCoreResource:(void *)resource
{
  v7.receiver = self;
  v7.super_class = WebResource;
  result = [(WebResource *)&v7 init];
  if (result)
  {
    v5 = result;
    v6 = [[WebResourcePrivate alloc] initWithCoreResource:resource];
    result = v5;
    v5[1] = v6;
  }

  return result;
}

- (void)_ignoreWhenUnarchiving
{
  m_ptr = self->_private->coreResource.m_ptr;
  if (m_ptr)
  {
    *(m_ptr + 360) = 1;
  }
}

- (id)_initWithData:(id)data URL:(id)l MIMEType:(id)type textEncodingName:(id)name frameName:(id)frameName response:(id)response copyData:(BOOL)copyData
{
  v45.receiver = self;
  v45.super_class = WebResource;
  result = [(WebResource *)&v45 init];
  if (result)
  {
    if (!data || !l || !type)
    {

      return 0;
    }

    v17 = result;
    if (copyData)
    {
      data = [data copy];
    }

    WebCore::FragmentedSharedBuffer::create(v35, data, v16);
    v18 = WTF::fastMalloc(0x40);
    MEMORY[0x1CCA64660](v18, v35);
    v19 = v35[0];
    v35[0] = 0;
    if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19 + 2);
      (*(*v19 + 8))(v19);
    }

    v43 = v18;
    MEMORY[0x1CCA63960](&v42, l);
    MEMORY[0x1CCA63A40](&v41, type);
    MEMORY[0x1CCA63A40](&v40, name);
    MEMORY[0x1CCA63A40](&v39, frameName);
    WebCore::ResourceResponseBase::ResourceResponseBase(v35);
    responseCopy = response;
    if (response)
    {
      responseCopy2 = response;
    }

    v38 = 0;
    v21 = v36 & 0xF0;
    if (!response)
    {
      ++v21;
    }

    v36 = v21;
    WebCore::ArchiveResource::create();
    v23 = responseCopy;
    responseCopy = 0;
    if (v23)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v35, v22);
    v25 = v39;
    v39 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v24);
    }

    v26 = v40;
    v40 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v24);
    }

    v27 = v41;
    v41 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v24);
    }

    v28 = v42;
    v42 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v24);
    }

    v29 = v43;
    v43 = 0;
    if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v29 + 2);
      (*(*v29 + 8))(v29);
      if (!copyData)
      {
        goto LABEL_33;
      }
    }

    else if (!copyData)
    {
      goto LABEL_33;
    }

    if (data)
    {
    }

LABEL_33:
    if (v44)
    {
      v30 = [WebResourcePrivate alloc];
      v35[0] = v44;
      v44 = 0;
      v31 = [(WebResourcePrivate *)v30 initWithCoreResource:v35, 0];
      result = v17;
      v17[1] = v31;
      v32 = v35[0];
      v35[0] = 0;
      if (v32)
      {
        if (v32[2] == 1)
        {
          (*(*v32 + 8))(v32);
          result = v17;
          v33 = v44;
          v44 = 0;
          if (!v33)
          {
            return result;
          }
        }

        else
        {
          --v32[2];
          v33 = v44;
          v44 = 0;
          if (!v33)
          {
            return result;
          }
        }

        goto LABEL_41;
      }
    }

    else
    {

      result = 0;
    }

    v33 = v44;
    v44 = 0;
    if (!v33)
    {
      return result;
    }

LABEL_41:
    if (v33[2] == 1)
    {
      v34 = result;
      (*(*v33 + 8))(v33);
      return v34;
    }

    else
    {
      --v33[2];
    }
  }

  return result;
}

- (id)_suggestedFilename
{
  m_ptr = self->_private->coreResource.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  WebCore::ResourceResponseBase::suggestedFilename(&v11, (m_ptr + 56));
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

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
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }
  }

  return v5;
}

- (id)_response
{
  m_ptr = self->_private->coreResource.m_ptr;
  if (!m_ptr || (result = WebCore::ResourceResponse::nsURLResponse((m_ptr + 56))) == 0)
  {
    result = objc_alloc_init(MEMORY[0x1E695AC70]);
    if (result)
    {
      v4 = result;
      v5 = result;
      return v4;
    }
  }

  return result;
}

- (id)_stringValue
{
  selfCopy = self;
  v26 = 0uLL;
  v25 = &unk_1F472B448;
  m_ptr = self->_private->coreResource.m_ptr;
  if (!m_ptr || (self = PAL::TextEncoding::TextEncoding(&v22, (m_ptr + 336)), v27 = v24, v26 = v23, !*(&v23 + 1)))
  {
    v17 = PAL::WindowsLatin1Encoding(self);
    v18 = *(v17 + 24);
    v26 = *(v17 + 8);
    v27 = v18;
    v4 = selfCopy->_private->coreResource.m_ptr;
    if (v4)
    {
      goto LABEL_4;
    }

    return &stru_1F472E7E8;
  }

  v4 = selfCopy->_private->coreResource.m_ptr;
  if (!v4)
  {
    return &stru_1F472E7E8;
  }

LABEL_4:
  v5 = *(v4 + 40);
  v6 = &stru_1F472E7E8;
  if (!v5)
  {
    return v6;
  }

  v7 = (v5 + 2);
  atomic_fetch_add(v5 + 2, 1u);
  if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    (*(*v5 + 8))(v5);
  }

  atomic_fetch_add(v7, 1u);
  WebCore::FragmentedSharedBuffer::makeContiguous(&v20, v5);
  WebCore::SharedBuffer::span(v20);
  v28 = 0;
  PAL::TextEncoding::decode();
  v8 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v22, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v22 = &stru_1F472E7E8;
    v19 = &stru_1F472E7E8;
  }

  v6 = v22;
  v22 = 0;
  if (v6)
  {
    v10 = v6;
    v11 = v22;
    v22 = 0;
    if (v11)
    {
    }
  }

  v12 = v21;
  v21 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = v20;
  v20 = 0;
  if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13 + 2);
    (*(*v13 + 8))(v13);
    v14 = (v5 + 2);
    add = atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
    if (add != 1)
    {
      return v6;
    }
  }

  else
  {
    v14 = (v5 + 2);
    add = atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
    if (add != 1)
    {
      return v6;
    }
  }

  atomic_store(add, v14);
  (*(*v5 + 8))(v5);
  return v6;
}

@end