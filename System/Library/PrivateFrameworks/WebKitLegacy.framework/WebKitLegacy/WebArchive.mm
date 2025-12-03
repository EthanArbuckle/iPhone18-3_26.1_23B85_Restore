@interface WebArchive
- (NSArray)subframeArchives;
- (NSArray)subresources;
- (NSData)data;
- (WebArchive)init;
- (WebArchive)initWithCoder:(id)coder;
- (WebArchive)initWithData:(NSData *)data;
- (WebArchive)initWithMainResource:(WebResource *)mainResource subresources:(NSArray *)subresources subframeArchives:(NSArray *)subframeArchives;
- (WebResource)mainResource;
- (id)_initWithCoreLegacyWebArchive:(void *)archive;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WebArchive

- (WebArchive)init
{
  v5.receiver = self;
  v5.super_class = WebArchive;
  result = [(WebArchive *)&v5 init];
  if (result)
  {
    v3 = result;
    v4 = objc_alloc_init(WebArchivePrivate);
    result = v3;
    v3->_private = v4;
  }

  return result;
}

- (WebArchive)initWithMainResource:(WebResource *)mainResource subresources:(NSArray *)subresources subframeArchives:(NSArray *)subframeArchives
{
  v78 = *MEMORY[0x1E69E9840];
  v75.receiver = self;
  v75.super_class = WebArchive;
  v8 = [(WebArchive *)&v75 init];
  if (!v8)
  {
    return 0;
  }

  v9 = objc_alloc_init(WebArchivePrivate);
  v8->_private = v9;
  if (mainResource)
  {
    v10 = mainResource;
  }

  m_ptr = v9->cachedMainResource.m_ptr;
  v9->cachedMainResource.m_ptr = mainResource;
  if (m_ptr)
  {
  }

  v12 = v8->_private;
  if (!v12->cachedMainResource.m_ptr)
  {
    goto LABEL_27;
  }

  if (!subresources)
  {
    v17 = v12->cachedSubresources.m_ptr;
    v12->cachedSubresources.m_ptr = 0;
    if (!v17)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_27;
  }

  v13 = [(NSArray *)subresources count];
  if (v13)
  {
    v14 = 0;
    do
    {
      [(NSArray *)subresources objectAtIndex:v14];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    while (v13 != ++v14);
  }

  v15 = v8->_private;
  v16 = subresources;
  v17 = v15->cachedSubresources.m_ptr;
  v15->cachedSubresources.m_ptr = subresources;
  if (v17)
  {
LABEL_18:
  }

LABEL_19:
  if (!subframeArchives)
  {
    v24 = v8->_private;
    v22 = v24->cachedSubframeArchives.m_ptr;
    v24->cachedSubframeArchives.m_ptr = 0;
    if (!v22)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_27:

    return 0;
  }

  v18 = [(NSArray *)subframeArchives count];
  if (v18)
  {
    v19 = 0;
    do
    {
      [(NSArray *)subframeArchives objectAtIndex:v19];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    while (v18 != ++v19);
  }

  v20 = v8->_private;
  v21 = subframeArchives;
  v22 = v20->cachedSubframeArchives.m_ptr;
  v20->cachedSubframeArchives.m_ptr = subframeArchives;
  if (v22)
  {
LABEL_30:
  }

LABEL_31:
  v60 = v8;
  v73 = 0;
  v74 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v25 = [(NSArray *)subresources countByEnumeratingWithState:&v69 objects:v77 count:16];
  v58 = mainResource;
  if (v25)
  {
    v26 = *v70;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v70 != v26)
        {
          objc_enumerationMutation(subresources);
        }

        _coreResource = [*(*(&v69 + 1) + 8 * i) _coreResource];
        v30 = HIDWORD(v74);
        if (HIDWORD(v74) == v74)
        {
          v31 = HIDWORD(v74) + (HIDWORD(v74) >> 1);
          if (v31 <= HIDWORD(v74) + 1)
          {
            v31 = HIDWORD(v74) + 1;
          }

          if (v31 >> 29)
          {
            __break(0xC471u);
            goto LABEL_103;
          }

          v32 = v73;
          if (v31 <= 0x10)
          {
            v33 = 16;
          }

          else
          {
            v33 = v31;
          }

          v34 = WTF::fastMalloc((8 * v33));
          LODWORD(v74) = v33;
          v73 = v34;
          memcpy(v34, v32, 8 * v30);
          if (v32)
          {
            if (v73 == v32)
            {
              v73 = 0;
              LODWORD(v74) = 0;
            }

            WTF::fastFree(v32, v35);
          }

          LODWORD(v30) = HIDWORD(v74);
          v28 = (v73 + 8 * HIDWORD(v74));
        }

        else
        {
          v28 = (v73 + 8 * HIDWORD(v74));
        }

        ++*(_coreResource + 8);
        *v28 = _coreResource;
        HIDWORD(v74) = v30 + 1;
      }

      v25 = [(NSArray *)subresources countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v25);
  }

  v67 = 0;
  v68 = 0;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v36 = [(NSArray *)subframeArchives countByEnumeratingWithState:&v63 objects:v76 count:16, v58];
  if (v36)
  {
    v37 = *v64;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v64 != v37)
        {
          objc_enumerationMutation(subframeArchives);
        }

        coreArchive = [*(*(*(&v63 + 1) + 8 * j) + 8) coreArchive];
        v41 = HIDWORD(v68);
        if (HIDWORD(v68) == v68)
        {
          v42 = HIDWORD(v68) + (HIDWORD(v68) >> 1);
          if (v42 <= HIDWORD(v68) + 1)
          {
            v42 = HIDWORD(v68) + 1;
          }

          if (v42 >> 29)
          {
            __break(0xC471u);
LABEL_103:
            JUMPOUT(0x1C7ABED68);
          }

          v43 = v67;
          if (v42 <= 0x10)
          {
            v44 = 16;
          }

          else
          {
            v44 = v42;
          }

          v45 = WTF::fastMalloc((8 * v44));
          LODWORD(v68) = v44;
          v67 = v45;
          memcpy(v45, v43, 8 * v41);
          if (v43)
          {
            if (v67 == v43)
            {
              v67 = 0;
              LODWORD(v68) = 0;
            }

            WTF::fastFree(v43, v46);
          }

          LODWORD(v41) = HIDWORD(v68);
          v39 = (v67 + 8 * HIDWORD(v68));
        }

        else
        {
          v39 = (v67 + 8 * HIDWORD(v68));
        }

        ++*(coreArchive + 8);
        *v39 = coreArchive;
        HIDWORD(v68) = v41 + 1;
      }

      v36 = [(NSArray *)subframeArchives countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v36);
  }

  v47 = v60->_private;
  _coreResource2 = [v59 _coreResource];
  ++*(_coreResource2 + 8);
  v61 = _coreResource2;
  WebCore::LegacyWebArchive::create();
  [(WebArchivePrivate *)v47 setCoreArchive:&v62];
  v50 = v62;
  v62 = 0;
  if (!v50)
  {
LABEL_74:
    v51 = v61;
    if (v61)
    {
      goto LABEL_75;
    }

    goto LABEL_80;
  }

  if (v50[2] != 1)
  {
    --v50[2];
    goto LABEL_74;
  }

  (*(*v50 + 8))(v50);
  v51 = v61;
  if (v61)
  {
LABEL_75:
    if (v51[2] == 1)
    {
      (*(*v51 + 8))(v51);
    }

    else
    {
      --v51[2];
    }
  }

LABEL_80:
  v52 = v67;
  if (HIDWORD(v68))
  {
    v53 = 8 * HIDWORD(v68);
    do
    {
      v54 = *v52;
      *v52 = 0;
      if (v54)
      {
        if (v54[2] == 1)
        {
          (*(*v54 + 8))(v54);
        }

        else
        {
          --v54[2];
        }
      }

      v52 = (v52 + 8);
      v53 -= 8;
    }

    while (v53);
    v52 = v67;
  }

  if (v52)
  {
    v67 = 0;
    LODWORD(v68) = 0;
    WTF::fastFree(v52, v49);
  }

  v55 = v73;
  if (HIDWORD(v74))
  {
    v56 = 8 * HIDWORD(v74);
    do
    {
      v57 = *v55;
      *v55 = 0;
      if (v57)
      {
        if (v57[2] == 1)
        {
          (*(*v57 + 8))(v57);
        }

        else
        {
          --v57[2];
        }
      }

      v55 = (v55 + 8);
      v56 -= 8;
    }

    while (v56);
    v55 = v73;
  }

  if (v55)
  {
    v73 = 0;
    LODWORD(v74) = 0;
    WTF::fastFree(v55, v49);
  }

  return v60;
}

- (WebArchive)initWithData:(NSData *)data
{
  v14 = data;
  v13.receiver = self;
  v13.super_class = WebArchive;
  v3 = [(WebArchive *)&v13 init];
  if (!v3)
  {
    return v3;
  }

  v3->_private = objc_alloc_init(WebArchivePrivate);
  WebCore::SharedBuffer::create<NSData *&>(&v14, v4, &v11);
  WebCore::LegacyWebArchive::create();
  v5 = v11;
  v11 = 0;
  if (!v5 || atomic_fetch_add(v5 + 2, 0xFFFFFFFF) != 1)
  {
    v6 = v12;
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_10:

    v3 = 0;
    goto LABEL_11;
  }

  atomic_store(1u, v5 + 2);
  (*(*v5 + 8))(v5);
  v6 = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = v3->_private;
  v11 = v6;
  v12 = 0;
  [(WebArchivePrivate *)v7 setCoreArchive:&v11];
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    if (v8[2] == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --v8[2];
    }
  }

LABEL_11:
  v9 = v12;
  v12 = 0;
  if (!v9)
  {
    return v3;
  }

  if (v9[2] != 1)
  {
    --v9[2];
    return v3;
  }

  (*(*v9 + 8))(v9);
  return v3;
}

- (WebArchive)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectForKey:@"WebMainResource"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
  }

  v6 = [coder decodeObjectForKey:@"WebSubresources"];
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 count];
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = 0;
    while (1)
    {
      [v6 objectAtIndex:v8];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_10;
      }
    }
  }

  v6 = 0;
LABEL_10:
  v9 = [coder decodeObjectForKey:@"WebSubframeArchives"];
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 count];
    if (!v10)
    {
      goto LABEL_17;
    }

    v11 = 0;
    while (1)
    {
      [v9 objectAtIndex:v11];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_17;
      }
    }
  }

  v9 = 0;
LABEL_17:

  return [(WebArchive *)self initWithMainResource:v5 subresources:v6 subframeArchives:v9];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[WebArchive mainResource](self forKey:{"mainResource"), @"WebMainResource"}];
  [coder encodeObject:-[WebArchive subresources](self forKey:{"subresources"), @"WebSubresources"}];
  subframeArchives = [(WebArchive *)self subframeArchives];

  [coder encodeObject:subframeArchives forKey:@"WebSubframeArchives"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebArchive;
  [(WebArchive *)&v3 dealloc];
}

- (WebResource)mainResource
{
  v3 = self->_private;
  if (!v3->cachedMainResource.m_ptr)
  {
    coreArchive = [(WebArchivePrivate *)v3 coreArchive];
    if (coreArchive)
    {
      v9 = *(coreArchive + 16);
      if (v9)
      {
        v10 = [WebResource alloc];
        ++v9[2];
        v15 = v9;
        v11 = [(WebResource *)v10 _initWithCoreResource:&v15];
        v12 = self->_private;
        m_ptr = v12->cachedMainResource.m_ptr;
        v12->cachedMainResource.m_ptr = v11;
        if (m_ptr)
        {
        }

        v14 = v15;
        v15 = 0;
        if (v14)
        {
          if (v14[2] == 1)
          {
            (*(*v14 + 8))(v14);
          }

          else
          {
            --v14[2];
          }
        }
      }
    }
  }

  v4 = self->_private->cachedMainResource.m_ptr;
  if (v4)
  {
    v5 = v4;
    v6 = v4;
  }

  return v4;
}

- (NSArray)subresources
{
  v3 = self->_private;
  if (!v3->cachedSubresources.m_ptr)
  {
    coreArchive = [(WebArchivePrivate *)v3 coreArchive];
    if (coreArchive)
    {
      v5 = coreArchive;
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(coreArchive + 36)];
      v7 = *(v5 + 36);
      if (v7)
      {
        v8 = *(v5 + 24);
        for (i = 8 * v7; i; i -= 8)
        {
          v10 = [WebResource alloc];
          v11 = *v8;
          v11[2] = *(*v8 + 8) + 1;
          v22 = v11;
          v12 = [(WebResource *)v10 _initWithCoreResource:&v22];
          v13 = v22;
          v22 = 0;
          if (v13)
          {
            if (v13[2] == 1)
            {
              (*(*v13 + 8))(v13);
              if (!v12)
              {
                goto LABEL_5;
              }

LABEL_10:
              [(NSArray *)v6 addObject:v12];

              goto LABEL_5;
            }

            --v13[2];
          }

          if (v12)
          {
            goto LABEL_10;
          }

LABEL_5:
          v8 += 8;
        }
      }

      v14 = self->_private;
      m_ptr = v14->cachedSubresources.m_ptr;
      v14->cachedSubresources.m_ptr = v6;
      if (m_ptr)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v21 = self->_private;
      m_ptr = v21->cachedSubresources.m_ptr;
      v21->cachedSubresources.m_ptr = v20;
      if (m_ptr)
      {
LABEL_14:
      }
    }
  }

  if (![(NSArray *)self->_private->cachedSubresources.m_ptr count])
  {
    return 0;
  }

  v16 = self->_private->cachedSubresources.m_ptr;
  if (v16)
  {
    v17 = v16;
    v18 = v16;
  }

  return v16;
}

- (NSArray)subframeArchives
{
  v3 = self->_private;
  if (!v3->cachedSubframeArchives.m_ptr)
  {
    coreArchive = [(WebArchivePrivate *)v3 coreArchive];
    if (!coreArchive)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v23 = self->_private;
      m_ptr = v23->cachedSubframeArchives.m_ptr;
      v23->cachedSubframeArchives.m_ptr = v22;
      if (!m_ptr)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v5 = coreArchive;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(coreArchive + 52)];
    v7 = *(v5 + 52);
    if (v7)
    {
      v8 = *(v5 + 40);
      v9 = 8 * v7;
      while (1)
      {
        v10 = [WebArchive alloc];
        v11 = *v8;
        if (*v8)
        {
          v12 = v10;
          v13 = (*(*v11 + 48))(*v8);
          v10 = v12;
          if ((v13 & 1) == 0)
          {
            result = 105;
            __break(0xC471u);
            return result;
          }

          ++v11[2];
        }

        v24 = v11;
        v14 = [(WebArchive *)v10 _initWithCoreLegacyWebArchive:&v24];
        v15 = v24;
        v24 = 0;
        if (!v15)
        {
          goto LABEL_12;
        }

        if (v15[2] != 1)
        {
          break;
        }

        (*(*v15 + 8))(v15);
        if (v14)
        {
          goto LABEL_15;
        }

LABEL_5:
        ++v8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      --v15[2];
LABEL_12:
      if (!v14)
      {
        goto LABEL_5;
      }

LABEL_15:
      [(NSArray *)v6 addObject:v14];

      goto LABEL_5;
    }

LABEL_16:
    v16 = self->_private;
    m_ptr = v16->cachedSubframeArchives.m_ptr;
    v16->cachedSubframeArchives.m_ptr = v6;
    if (m_ptr)
    {
LABEL_17:
    }
  }

LABEL_18:
  v18 = self->_private->cachedSubframeArchives.m_ptr;
  if (v18)
  {
    v19 = v18;
    v20 = v18;
  }

  return v18;
}

- (NSData)data
{
  WebCore::LegacyWebArchive::rawDataRepresentation(&cf, [(WebArchivePrivate *)self->_private coreArchive]);
  v2 = cf;
  if (cf)
  {
    v3 = cf;
    v4 = v2;
    v5 = cf;
    cf = 0;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v2;
}

- (id)_initWithCoreLegacyWebArchive:(void *)archive
{
  v7.receiver = self;
  v7.super_class = WebArchive;
  result = [(WebArchive *)&v7 init];
  if (result)
  {
    v5 = result;
    v6 = [[WebArchivePrivate alloc] initWithCoreArchive:archive];
    result = v5;
    v5[1] = v6;
    if (!v6)
    {

      return 0;
    }
  }

  return result;
}

@end