@interface WebMIMETypeRegistry
+ (BOOL)isSupportedImageMIMEType:(id)a3;
+ (BOOL)isSupportedMediaMIMEType:(id)a3;
+ (id)mimeTypeForExtension:(id)a3;
+ (id)preferredExtensionForMIMEType:(id)a3;
@end

@implementation WebMIMETypeRegistry

+ (id)mimeTypeForExtension:(id)a3
{
  MEMORY[0x1CCA63A40](&v12, a3);
  WebCore::MIMETypeRegistry::mimeTypeForExtension();
  v3 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v14, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v14 = &stru_1F472E7E8;
    v11 = &stru_1F472E7E8;
  }

  v5 = v14;
  v14 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v14;
    v14 = 0;
    if (v7)
    {
    }
  }

  v8 = v13;
  v13 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  return v5;
}

+ (id)preferredExtensionForMIMEType:(id)a3
{
  MEMORY[0x1CCA63A40](&v13, a3);
  WebCore::MIMETypeRegistry::preferredExtensionForMIMEType(&v14, &v13, v3);
  v4 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v15, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v15 = &stru_1F472E7E8;
    v12 = &stru_1F472E7E8;
  }

  v6 = v15;
  v15 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v15;
    v15 = 0;
    if (v8)
    {
    }
  }

  v9 = v14;
  v14 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  return v6;
}

+ (BOOL)isSupportedImageMIMEType:(id)a3
{
  MEMORY[0x1CCA63A40](&v8, a3);
  result = WebCore::MIMETypeRegistry::isSupportedImageMIMEType(&v8, v3);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v7 = result;
      WTF::StringImpl::destroy(v6, v5);
      return v7;
    }
  }

  return result;
}

+ (BOOL)isSupportedMediaMIMEType:(id)a3
{
  MEMORY[0x1CCA63A40](&v8, a3);
  result = WebCore::MIMETypeRegistry::isSupportedMediaMIMEType(&v8, v3);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v7 = result;
      WTF::StringImpl::destroy(v6, v5);
      return v7;
    }
  }

  return result;
}

@end