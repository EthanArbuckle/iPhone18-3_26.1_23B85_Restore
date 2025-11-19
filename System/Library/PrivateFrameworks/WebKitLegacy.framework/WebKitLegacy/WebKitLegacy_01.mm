void WebCore::IDBValue::~IDBValue(WebCore::IDBValue *this, WTF::StringImpl *a2)
{
  v3 = *(this + 9);
  v4 = *(this + 3);
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *(this + 3);
  }

  if (v4)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  v7 = *(this + 5);
  v8 = *(this + 1);
  if (v7)
  {
    v9 = 8 * v7;
    do
    {
      v10 = *v8;
      *v8 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      v8 = (v8 + 8);
      v9 -= 8;
    }

    while (v9);
    v8 = *(this + 1);
  }

  if (v8)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v8, a2);
  }

  v11 = *this;
  *this = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    v12 = *(v11 + 8);
    if (v12)
    {
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      WTF::fastFree(v12, a2);
    }

    WTF::fastFree(v11, a2);
  }
}

uint64_t mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(uint64_t result, WTF::StringImpl *a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (v3 == 255)
  {
    v3 = -1;
  }

  if (v3 <= 8)
  {
    if (((1 << v3) & 0x1B0) != 0)
    {
      return result;
    }

    if (v3 == 3)
    {
      result = *result;
      *v2 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        return WTF::StringImpl::destroy(result, a2);
      }

      return result;
    }

    if (v3 == 6)
    {
      v4 = *result;
      *result = 0;
      if (!v4 || atomic_fetch_add(v4, 0xFFFFFFFF) != 1)
      {
        return result;
      }

      atomic_store(1u, v4);
      v5 = v4;
      v6 = *(v4 + 8);
      if (v6)
      {
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        WTF::fastFree(v6, a2);
      }

      result = v5;

      return WTF::fastFree(result, a2);
    }
  }

  if (v3 >= 2)
  {
    v7 = *(result + 12);
    result = *result;
    if (v7)
    {
      v8 = 32 * v7;
      v9 = (result + 24);
      do
      {
        if (*v9 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v9 - 16);
        }

        *v9 = -1;
        v9 += 32;
        v8 -= 32;
      }

      while (v8);
      result = *v2;
    }

    if (result)
    {
      *v2 = 0;
      *(v2 + 8) = 0;

      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void WebCore::IDBTransactionInfo::~IDBTransactionInfo(WebCore::IDBTransactionInfo *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    v4 = v3[3];
    if (v4)
    {
      v5 = *(v4 - 1);
      if (v5)
      {
        v6 = (v4 + 8);
        do
        {
          if (*(v6 - 1) != -1)
          {
            WebCore::IDBObjectStoreInfo::~IDBObjectStoreInfo(v6, a2);
          }

          v6 = (v6 + 72);
          --v5;
        }

        while (v5);
      }

      WTF::fastFree((v4 - 16), a2);
    }

    v7 = *v3;
    *v3 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    bmalloc::api::tzoneFree(v3, a2);
  }

  v8 = *(this + 11);
  v9 = *(this + 4);
  if (v8)
  {
    v10 = 8 * v8;
    do
    {
      v11 = *v9;
      *v9 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }

      v9 = (v9 + 8);
      v10 -= 8;
    }

    while (v10);
    v9 = *(this + 4);
  }

  if (v9)
  {
    *(this + 4) = 0;
    *(this + 10) = 0;
    WTF::fastFree(v9, a2);
  }
}

void WebCore::IDBObjectStoreInfo::~IDBObjectStoreInfo(WebCore::IDBObjectStoreInfo *this, WTF::StringImpl *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = v3 + (i << 6);
        if (*v6 != -1)
        {
          if (*(v6 + 48) != 255)
          {
            if (*(v6 + 48))
            {
              v8 = *(v6 + 44);
              v9 = *(v6 + 32);
              if (v8)
              {
                v10 = 8 * v8;
                do
                {
                  v11 = *v9;
                  *v9 = 0;
                  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v11, a2);
                  }

                  v9 = (v9 + 8);
                  v10 -= 8;
                }

                while (v10);
                v9 = *(v6 + 32);
              }

              if (v9)
              {
                *(v6 + 32) = 0;
                *(v6 + 40) = 0;
                WTF::fastFree(v9, a2);
              }
            }

            else
            {
              v7 = *(v6 + 32);
              *(v6 + 32) = 0;
              if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v7, a2);
              }
            }
          }

          *(v6 + 48) = -1;
          v12 = *(v6 + 24);
          *(v6 + 24) = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, a2);
          }
        }
      }
    }

    WTF::fastFree((v3 - 16), a2);
  }

  if (*(this + 40) == 1)
  {
    if (*(this + 32) != 255)
    {
      if (*(this + 32))
      {
        v14 = *(this + 7);
        v15 = *(this + 2);
        if (v14)
        {
          v16 = 8 * v14;
          do
          {
            v17 = *v15;
            *v15 = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, a2);
            }

            v15 = (v15 + 8);
            v16 -= 8;
          }

          while (v16);
          v15 = *(this + 2);
        }

        if (v15)
        {
          *(this + 2) = 0;
          *(this + 6) = 0;
          WTF::fastFree(v15, a2);
        }
      }

      else
      {
        v13 = *(this + 2);
        *(this + 2) = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, a2);
        }
      }
    }

    *(this + 32) = -1;
  }

  v18 = *(this + 1);
  *(this + 1) = 0;
  if (v18)
  {
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, a2);
    }
  }
}

WebCore::IndexKey *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
    v5 = *(v3 - 12);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  result = WTF::fastMalloc((48 * a2 + 16));
  v8 = result;
  v9 = result + 16;
  if (a2)
  {
    v10 = a2;
    result = (result + 24);
    do
    {
      *(result - 1) = 0;
      result = (WebCore::IndexKey::IndexKey(result) + 48);
      --v10;
    }

    while (v10);
  }

  v11 = a1;
  *a1 = v9;
  *(v8 + 2) = a2 - 1;
  *(v8 + 3) = a2;
  *v8 = 0;
  *(v8 + 1) = v5;
  if (v4)
  {
    v12 = 0;
    v13 = v4;
    while (1)
    {
      v14 = (v3 + 48 * v12);
      v15 = *v14;
      if (*v14 != -1)
      {
        break;
      }

LABEL_11:
      if (++v12 == v13)
      {
        goto LABEL_88;
      }
    }

    if (!v15)
    {
      if (*(v14 + 40) > 1u)
      {
        if (*(v14 + 40) == 2)
        {
          v18 = *(v14 + 5);
          v19 = v14[1];
          if (v18)
          {
            v20 = 32 * v18;
            v21 = v19 + 24;
            do
            {
              if (*v21 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v21 - 16), v7);
              }

              *v21 = -1;
              v21 += 32;
              v20 -= 32;
            }

            while (v20);
            v19 = v14[1];
            v11 = a1;
          }

          if (v19)
          {
            v14[1] = 0;
            *(v14 + 4) = 0;
            WTF::fastFree(v19, v7);
          }
        }
      }

      else if (*(v14 + 40))
      {
        if (*(v14 + 32) != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v14 + 2), v7);
        }

        *(v14 + 32) = -1;
      }

      *(v14 + 40) = -1;
      goto LABEL_11;
    }

    v16 = *v11;
    if (*v11)
    {
      v17 = *(v16 - 8);
    }

    else
    {
      v17 = 0;
    }

    v22 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
    v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
    v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
    v25 = v17 & ((v24 >> 31) ^ v24);
    v26 = 1;
    do
    {
      v27 = v16 + 48 * v25;
      v25 = (v25 + v26++) & v17;
    }

    while (*v27);
    if (*(v27 + 40) > 1u)
    {
      if (*(v27 + 40) == 2)
      {
        v28 = *(v27 + 20);
        v29 = *(v27 + 8);
        if (v28)
        {
          v30 = 32 * v28;
          v31 = v29 + 24;
          do
          {
            if (*v31 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v31 - 16), v7);
            }

            *v31 = -1;
            v31 += 32;
            v30 -= 32;
          }

          while (v30);
          v29 = *(v27 + 8);
          v11 = a1;
        }

        if (v29)
        {
          *(v27 + 8) = 0;
          *(v27 + 16) = 0;
          WTF::fastFree(v29, v7);
        }
      }
    }

    else if (*(v27 + 40))
    {
      if (*(v27 + 32) != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v27 + 16, v7);
      }

      *(v27 + 32) = -1;
    }

    *(v27 + 40) = -1;
    *v27 = *v14;
    *(v27 + 8) = 0;
    *(v27 + 40) = -1;
    if (*(v14 + 40) <= 1u)
    {
      if (!*(v14 + 40))
      {
        *(v27 + 8) = 0;
        *(v27 + 40) = 0;
LABEL_73:
        *(v14 + 40) = -1;
        goto LABEL_11;
      }

      v38 = *(v14 + 4);
      *(v27 + 16) = 0;
      v39 = (v27 + 16);
      *(v27 + 8) = v38;
      *(v27 + 32) = -1;
      LODWORD(v40) = *(v14 + 32);
      if (v40 > 4)
      {
        if (*(v14 + 32) <= 6u)
        {
          if (v40 == 5)
          {
            *v39 = v14[2];
            *(v27 + 32) = 5;
            v33 = *(v14 + 40);
            *(v27 + 40) = v33;
            if (v33 <= 1)
            {
              goto LABEL_66;
            }

            goto LABEL_51;
          }

          v40 = v14[2];
          v14[2] = 0;
          *v39 = v40;
          LOBYTE(v40) = 6;
        }

        else if ((v40 - 7) >= 2)
        {
          v33 = *(v14 + 40);
          *(v27 + 40) = v33;
          if (v33 > 1)
          {
            goto LABEL_51;
          }

          goto LABEL_66;
        }
      }

      else
      {
        if (*(v14 + 32) > 1u)
        {
          if (v40 != 2)
          {
            if (v40 == 3)
            {
              v41 = v14[2];
              v14[2] = 0;
              *v39 = v41;
              *(v27 + 32) = 3;
              v33 = *(v14 + 40);
              *(v27 + 40) = v33;
              if (v33 > 1)
              {
                goto LABEL_51;
              }
            }

            else
            {
              *v39 = v14[2];
              *(v27 + 32) = 4;
              v33 = *(v14 + 40);
              *(v27 + 40) = v33;
              if (v33 > 1)
              {
                goto LABEL_51;
              }
            }

LABEL_66:
            if (v33)
            {
              if (*(v14 + 32) != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v14 + 2), v7);
              }

              *(v14 + 32) = -1;
            }

            goto LABEL_73;
          }

          *v39 = 0;
          *(v27 + 24) = 0;
          v42 = v14[2];
          v14[2] = 0;
          *(v27 + 16) = v42;
          LODWORD(v42) = *(v14 + 6);
          *(v14 + 6) = 0;
          *(v27 + 24) = v42;
          LODWORD(v42) = *(v14 + 7);
          *(v14 + 7) = 0;
          *(v27 + 28) = v42;
          *(v27 + 32) = *(v14 + 32);
          v33 = *(v14 + 40);
          *(v27 + 40) = v33;
          if (v33 <= 1)
          {
            goto LABEL_66;
          }

LABEL_51:
          if (v33 == 2)
          {
            v34 = *(v14 + 5);
            v35 = v14[1];
            if (v34)
            {
              v36 = 32 * v34;
              v37 = v35 + 24;
              do
              {
                if (*v37 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v37 - 16), v7);
                }

                *v37 = -1;
                v37 += 32;
                v36 -= 32;
              }

              while (v36);
              v35 = v14[1];
              v11 = a1;
            }

            if (v35)
            {
              v14[1] = 0;
              *(v14 + 4) = 0;
              WTF::fastFree(v35, v7);
            }
          }

          goto LABEL_73;
        }

        if (!*(v14 + 32))
        {
          *v39 = 0;
          *(v27 + 32) = 0;
          v33 = *(v14 + 40);
          *(v27 + 40) = v33;
          if (v33 <= 1)
          {
            goto LABEL_66;
          }

          goto LABEL_51;
        }
      }

      *(v27 + 32) = v40;
      v33 = *(v14 + 40);
      *(v27 + 40) = v33;
      if (v33 <= 1)
      {
        goto LABEL_66;
      }

      goto LABEL_51;
    }

    if (*(v14 + 40) != 2)
    {
      goto LABEL_73;
    }

    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    v32 = v14[1];
    v14[1] = 0;
    *(v27 + 8) = v32;
    LODWORD(v32) = *(v14 + 4);
    *(v14 + 4) = 0;
    *(v27 + 16) = v32;
    LODWORD(v32) = *(v14 + 5);
    *(v14 + 5) = 0;
    *(v27 + 20) = v32;
    v33 = *(v14 + 40);
    *(v27 + 40) = v33;
    if (v33 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_51;
  }

  if (v3)
  {
LABEL_88:

    return WTF::fastFree((v3 - 16), v7);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::~InProcessIDBServer()::$_0,void>::call(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = *(a1 + 8);
  atomic_compare_exchange_strong_explicit((v4 + 32), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (!v3)
  {
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  MEMORY[0x1CCA63990](v4 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
  if (v5)
  {
LABEL_3:
    (*(*v5 + 8))(v5);
  }

LABEL_4:
  v6 = 1;
  atomic_compare_exchange_strong_explicit((v4 + 32), &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    v7 = *(v4 + 56);
    *(v4 + 56) = 0;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    WTF::Lock::unlockSlow((v4 + 32));
    v7 = *(v4 + 56);
    *(v4 + 56) = 0;
    if (!v7)
    {
LABEL_8:
      v8 = *(a1 + 16);

      return MEMORY[0x1EEDCAE18](v8);
    }
  }

  if (*v7 != 1)
  {
    --*v7;
    goto LABEL_8;
  }

  v9 = *(v7 + 2);
  if (v9)
  {
    WTF::fastFree((v9 - 16), a2);
  }

  v10 = *(v7 + 1);
  if (v10)
  {
    v11 = (v10 + 8);
    if (!atomic_load(v11))
    {
      v8 = 290;
      __break(0xC471u);
      return MEMORY[0x1EEDCAE18](v8);
    }

    atomic_fetch_add(v11, 0xFFFFFFFF);
  }

  if (*v7 != 1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79CEA4CLL);
  }

  WTF::fastFree(v7, a2);
  v8 = *(a1 + 16);

  return MEMORY[0x1EEDCAE18](v8);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::InProcessIDBServer(PAL::SessionID,WTF::String const&)::$_0,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_1F4729EC8;
  v2 = result[3];
  result[3] = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = result;
    WTF::StringImpl::destroy(v2, a2);
    result = v3;
  }

  v4 = result[2];
  result[2] = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 7);
      v5 = result;
      (*(*v4 + 8))(v4);
      return v5;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::InProcessIDBServer(PAL::SessionID,WTF::String const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F4729EC8;
  v2 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = a1;
    WTF::StringImpl::destroy(v2, a2);
    a1 = v3;
  }

  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    v6 = a1;
    (*(*v4 + 8))(v4);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::InProcessIDBServer(PAL::SessionID,WTF::String const&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  WebCore::IDBServer::IDBConnectionToClient::create();
  ++*v24;
  v3 = *(v1 + 56);
  *(v1 + 56) = v24;
  if (!v3)
  {
LABEL_4:
    v4 = 0;
    v5 = (v1 + 32);
    atomic_compare_exchange_strong_explicit((v1 + 32), &v4, 1u, memory_order_acquire, memory_order_acquire);
    if (!v4)
    {
      goto LABEL_5;
    }

LABEL_23:
    MEMORY[0x1CCA63990](v5);
    v6 = *MEMORY[0x1E69E2E30];
    if (*MEMORY[0x1E69E2E30])
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  if (*v3 != 1)
  {
    --*v3;
    goto LABEL_4;
  }

  v15 = *(v3 + 2);
  if (v15)
  {
    WTF::fastFree((v15 - 16), v2);
  }

  v16 = *(v3 + 1);
  if (v16)
  {
    v17 = (v16 + 8);
    if (!atomic_load(v17))
    {
      __break(0xC471u);
      JUMPOUT(0x1C79CEEB0);
    }

    atomic_fetch_add(v17, 0xFFFFFFFF);
  }

  if (*v3 != 1)
  {
    goto LABEL_37;
  }

  WTF::fastFree(v3, v2);
  v19 = 0;
  v5 = (v1 + 32);
  atomic_compare_exchange_strong_explicit((v1 + 32), &v19, 1u, memory_order_acquire, memory_order_acquire);
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E2E30];
  if (*MEMORY[0x1E69E2E30])
  {
LABEL_6:
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(v6, v2);
    goto LABEL_7;
  }

LABEL_24:
  NonCompact = WebCore::IDBServer::IDBServer::operatorNewSlow(0x50);
LABEL_7:
  v8 = NonCompact;
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F4729EF0;
  v25 = v9;
  WebCore::IDBServer::IDBServer::IDBServer();
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v10 = *(v1 + 40);
  *(v1 + 40) = v8;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  result = WebCore::IDBServer::IDBServer::registerConnection();
  v13 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 == 1)
  {
    v14 = v24;
    if (!v24)
    {
      return result;
    }
  }

  else
  {
    result = WTF::Lock::unlockSlow(v5);
    v14 = v24;
    if (!v24)
    {
      return result;
    }
  }

  if (*v14 != 1)
  {
    --*v14;
    return result;
  }

  v20 = *(v14 + 2);
  if (v20)
  {
    WTF::fastFree((v20 - 16), v12);
  }

  v21 = *(v14 + 1);
  if (v21)
  {
    v22 = (v21 + 8);
    if (atomic_load(v22))
    {
      atomic_fetch_add(v22, 0xFFFFFFFF);
      goto LABEL_30;
    }

LABEL_37:
    __break(0xC471u);
    JUMPOUT(0x1C79CEE90);
  }

LABEL_30:
  if (*v14 != 1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79CEED0);
  }

  return WTF::fastFree(v14, v12);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::deleteDatabase(WebCore::IDBOpenRequestData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F4729F18;
  WebCore::IDBOpenRequestData::~IDBOpenRequestData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::deleteDatabase(WebCore::IDBOpenRequestData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F4729F18;
  WebCore::IDBOpenRequestData::~IDBOpenRequestData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::deleteDatabase(WebCore::IDBOpenRequestData const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::deleteDatabase();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didDeleteDatabase(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F4729F40;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didDeleteDatabase(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F4729F40;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::openDatabase(WebCore::IDBOpenRequestData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F4729F68;
  WebCore::IDBOpenRequestData::~IDBOpenRequestData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::openDatabase(WebCore::IDBOpenRequestData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F4729F68;
  WebCore::IDBOpenRequestData::~IDBOpenRequestData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::openDatabase(WebCore::IDBOpenRequestData const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::openDatabase();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didOpenDatabase(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F4729F90;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didOpenDatabase(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F4729F90;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didAbortTransaction(WebCore::IDBResourceIdentifier const&,WebCore::IDBError const&)::$_0,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_1F4729FB8;
  v2 = result[6];
  result[6] = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = result;
    WTF::StringImpl::destroy(v2, a2);
    result = v3;
  }

  v4 = result[2];
  result[2] = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 7);
      v5 = result;
      (*(*v4 + 8))(v4);
      return v5;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didAbortTransaction(WebCore::IDBResourceIdentifier const&,WebCore::IDBError const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F4729FB8;
  v2 = *(a1 + 6);
  *(a1 + 6) = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = a1;
    WTF::StringImpl::destroy(v2, a2);
    a1 = v3;
  }

  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    v6 = a1;
    (*(*v4 + 8))(v4);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didCommitTransaction(WebCore::IDBResourceIdentifier const&,WebCore::IDBError const&)::$_0,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_1F4729FE0;
  v2 = result[6];
  result[6] = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = result;
    WTF::StringImpl::destroy(v2, a2);
    result = v3;
  }

  v4 = result[2];
  result[2] = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 7);
      v5 = result;
      (*(*v4 + 8))(v4);
      return v5;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didCommitTransaction(WebCore::IDBResourceIdentifier const&,WebCore::IDBError const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F4729FE0;
  v2 = *(a1 + 6);
  *(a1 + 6) = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = a1;
    WTF::StringImpl::destroy(v2, a2);
    a1 = v3;
  }

  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    v6 = a1;
    (*(*v4 + 8))(v4);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didCreateObjectStore(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A008;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didCreateObjectStore(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A008;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didDeleteObjectStore(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A030;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didDeleteObjectStore(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A030;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didRenameObjectStore(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A058;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didRenameObjectStore(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A058;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didClearObjectStore(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A080;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didClearObjectStore(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A080;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didCreateIndex(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A0A8;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didCreateIndex(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A0A8;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didDeleteIndex(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A0D0;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didDeleteIndex(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A0D0;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didRenameIndex(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A0F8;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didRenameIndex(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A0F8;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didPutOrAdd(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A120;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didPutOrAdd(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A120;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didGetRecord(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A148;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didGetRecord(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A148;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didGetAllRecords(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A170;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didGetAllRecords(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A170;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didGetCount(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A198;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didGetCount(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A198;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didDeleteRecord(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A1C0;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didDeleteRecord(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A1C0;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didOpenCursor(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A1E8;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didOpenCursor(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A1E8;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didIterateCursor(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A210;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didIterateCursor(WebCore::IDBResultData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A210;
  WebCore::IDBResultData::~IDBResultData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::abortTransaction(WebCore::IDBResourceIdentifier const&)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472A238;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    add = atomic_fetch_add(v1 + 7, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v1 + 7);
      v3 = result;
      (*(*v1 + 8))(v1);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::abortTransaction(WebCore::IDBResourceIdentifier const&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472A238;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3 + 7, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3 + 7);
    v6 = a1;
    (*(*v3 + 8))(v3);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::abortTransaction(WebCore::IDBResourceIdentifier const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::abortTransaction();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::commitTransaction(WebCore::IDBResourceIdentifier const&,unsigned long long)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472A260;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    add = atomic_fetch_add(v1 + 7, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v1 + 7);
      v3 = result;
      (*(*v1 + 8))(v1);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::commitTransaction(WebCore::IDBResourceIdentifier const&,unsigned long long)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472A260;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3 + 7, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3 + 7);
    v6 = a1;
    (*(*v3 + 8))(v3);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::commitTransaction(WebCore::IDBResourceIdentifier const&,unsigned long long)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::commitTransaction();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didFinishHandlingVersionChangeTransaction(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBResourceIdentifier const&)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472A288;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    add = atomic_fetch_add(v1 + 7, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v1 + 7);
      v3 = result;
      (*(*v1 + 8))(v1);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didFinishHandlingVersionChangeTransaction(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBResourceIdentifier const&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472A288;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3 + 7, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3 + 7);
    v6 = a1;
    (*(*v3 + 8))(v3);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didFinishHandlingVersionChangeTransaction(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBResourceIdentifier const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::didFinishHandlingVersionChangeTransaction();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::createObjectStore(WebCore::IDBRequestData const&,WebCore::IDBObjectStoreInfo const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A2B0;
  WebCore::IDBObjectStoreInfo::~IDBObjectStoreInfo((a1 + 16), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::createObjectStore(WebCore::IDBRequestData const&,WebCore::IDBObjectStoreInfo const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A2B0;
  WebCore::IDBObjectStoreInfo::~IDBObjectStoreInfo((a1 + 16), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::createObjectStore(WebCore::IDBRequestData const&,WebCore::IDBObjectStoreInfo const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::createObjectStore();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::deleteObjectStore(WebCore::IDBRequestData const&,WTF::String const&)::$_0,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_1F472A2D8;
  v2 = result[16];
  result[16] = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = result;
    WTF::StringImpl::destroy(v2, a2);
    result = v3;
  }

  v4 = result[2];
  result[2] = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 7);
      v5 = result;
      (*(*v4 + 8))(v4);
      return v5;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::deleteObjectStore(WebCore::IDBRequestData const&,WTF::String const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A2D8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = a1;
    WTF::StringImpl::destroy(v2, a2);
    a1 = v3;
  }

  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    v6 = a1;
    (*(*v4 + 8))(v4);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::deleteObjectStore(WebCore::IDBRequestData const&,WTF::String const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::deleteObjectStore();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::renameObjectStore(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_1F472A300;
  v2 = result[17];
  result[17] = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = result;
    WTF::StringImpl::destroy(v2, a2);
    result = v3;
  }

  v4 = result[2];
  result[2] = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 7);
      v5 = result;
      (*(*v4 + 8))(v4);
      return v5;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::renameObjectStore(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A300;
  v2 = *(a1 + 17);
  *(a1 + 17) = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = a1;
    WTF::StringImpl::destroy(v2, a2);
    a1 = v3;
  }

  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    v6 = a1;
    (*(*v4 + 8))(v4);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::renameObjectStore(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::renameObjectStore();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::clearObjectStore(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472A328;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    add = atomic_fetch_add(v1 + 7, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v1 + 7);
      v3 = result;
      (*(*v1 + 8))(v1);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::clearObjectStore(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472A328;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3 + 7, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3 + 7);
    v6 = a1;
    (*(*v3 + 8))(v3);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::clearObjectStore(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::clearObjectStore();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::createIndex(WebCore::IDBRequestData const&,WebCore::IDBIndexInfo const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A350;
  InProcessIDBServer::createIndex(WebCore::IDBRequestData const&,WebCore::IDBIndexInfo const&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::createIndex(WebCore::IDBRequestData const&,WebCore::IDBIndexInfo const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A350;
  InProcessIDBServer::createIndex(WebCore::IDBRequestData const&,WebCore::IDBIndexInfo const&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::createIndex(WebCore::IDBRequestData const&,WebCore::IDBIndexInfo const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::createIndex();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::deleteIndex(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_1F472A378;
  v2 = result[17];
  result[17] = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = result;
    WTF::StringImpl::destroy(v2, a2);
    result = v3;
  }

  v4 = result[2];
  result[2] = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 7);
      v5 = result;
      (*(*v4 + 8))(v4);
      return v5;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::deleteIndex(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A378;
  v2 = *(a1 + 17);
  *(a1 + 17) = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = a1;
    WTF::StringImpl::destroy(v2, a2);
    a1 = v3;
  }

  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    v6 = a1;
    (*(*v4 + 8))(v4);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::deleteIndex(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::deleteIndex();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::renameIndex(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_1F472A3A0;
  v2 = result[18];
  result[18] = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = result;
    WTF::StringImpl::destroy(v2, a2);
    result = v3;
  }

  v4 = result[2];
  result[2] = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 7);
      v5 = result;
      (*(*v4 + 8))(v4);
      return v5;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::renameIndex(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A3A0;
  v2 = *(a1 + 18);
  *(a1 + 18) = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = a1;
    WTF::StringImpl::destroy(v2, a2);
    a1 = v3;
  }

  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    v6 = a1;
    (*(*v4 + 8))(v4);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::renameIndex(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::renameIndex();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::putOrAdd(WebCore::IDBRequestData const&,WebCore::IDBKeyData const&,WebCore::IDBValue const&,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&,WebCore::IndexedDB::ObjectStoreOverwriteMode)::$_0,void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A3C8;
  v3 = *(a1 + 200);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = v3 + 48 * i;
        if (*v6 != -1)
        {
          if (*(v6 + 40) > 1u)
          {
            if (*(v6 + 40) == 2)
            {
              v7 = *(v6 + 20);
              v8 = *(v6 + 8);
              if (v7)
              {
                v9 = 32 * v7;
                v10 = v8 + 24;
                do
                {
                  if (*v10 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v10 - 16), a2);
                  }

                  *v10 = -1;
                  v10 += 32;
                  v9 -= 32;
                }

                while (v9);
                v8 = *(v6 + 8);
              }

              if (v8)
              {
                *(v6 + 8) = 0;
                *(v6 + 16) = 0;
                WTF::fastFree(v8, a2);
              }
            }
          }

          else if (*(v6 + 40))
          {
            if (*(v6 + 32) != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v6 + 16, a2);
            }

            *(v6 + 32) = -1;
          }

          *(v6 + 40) = -1;
        }
      }
    }

    WTF::fastFree((v3 - 16), a2);
  }

  WebCore::IDBValue::~IDBValue((a1 + 160), a2);
  if (*(a1 + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 136, v11);
  }

  *(a1 + 152) = -1;
  v12 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v12 && atomic_fetch_add(v12 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 7);
    (*(*v12 + 8))(v12);
  }

  return a1;
}

{
  *a1 = &unk_1F472A3C8;
  v3 = *(a1 + 200);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = v3 + 48 * i;
        if (*v6 != -1)
        {
          if (*(v6 + 40) > 1u)
          {
            if (*(v6 + 40) == 2)
            {
              v7 = *(v6 + 20);
              v8 = *(v6 + 8);
              if (v7)
              {
                v9 = 32 * v7;
                v10 = v8 + 24;
                do
                {
                  if (*v10 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v10 - 16), a2);
                  }

                  *v10 = -1;
                  v10 += 32;
                  v9 -= 32;
                }

                while (v9);
                v8 = *(v6 + 8);
              }

              if (v8)
              {
                *(v6 + 8) = 0;
                *(v6 + 16) = 0;
                WTF::fastFree(v8, a2);
              }
            }
          }

          else if (*(v6 + 40))
          {
            if (*(v6 + 32) != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v6 + 16, a2);
            }

            *(v6 + 32) = -1;
          }

          *(v6 + 40) = -1;
        }
      }
    }

    WTF::fastFree((v3 - 16), a2);
  }

  WebCore::IDBValue::~IDBValue((a1 + 160), a2);
  if (*(a1 + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 136, v11);
  }

  *(a1 + 152) = -1;
  v12 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v12 && atomic_fetch_add(v12 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 7);
    (*(*v12 + 8))(v12);
  }

  return WTF::fastFree(a1, v11);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::putOrAdd(WebCore::IDBRequestData const&,WebCore::IDBKeyData const&,WebCore::IDBValue const&,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&,WebCore::IndexedDB::ObjectStoreOverwriteMode)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::putOrAdd();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::getRecord(WebCore::IDBRequestData const&,WebCore::IDBGetRecordData const&)::$_0,void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A3F0;
  if (*(a1 + 184) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 168, a2);
  }

  *(a1 + 184) = -1;
  if (*(a1 + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 136, a2);
  }

  *(a1 + 152) = -1;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::getRecord(WebCore::IDBRequestData const&,WebCore::IDBGetRecordData const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F472A3F0;
  if (*(this + 184) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 168, a2);
  }

  *(this + 184) = -1;
  if (*(this + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 136, a2);
  }

  *(this + 152) = -1;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 7);
    (*(*v3 + 8))(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  return WTF::fastFree(v4, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::getRecord(WebCore::IDBRequestData const&,WebCore::IDBGetRecordData const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::getRecord();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

uint64_t WebCore::IDBKeyRangeData::IDBKeyRangeData(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = 0;
  v2 = (result + 8);
  *(result + 24) = -1;
  LODWORD(v3) = *(a2 + 24);
  if (v3 <= 4)
  {
    if (*(a2 + 24) <= 1u)
    {
      if (!*(a2 + 24))
      {
        *v2 = 0;
      }
    }

    else if (v3 == 2)
    {
      *v2 = 0;
      *(result + 16) = 0;
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(result + 8) = v3;
      LODWORD(v3) = *(a2 + 16);
      *(a2 + 16) = 0;
      *(result + 16) = v3;
      LODWORD(v3) = *(a2 + 20);
      *(a2 + 20) = 0;
      *(result + 20) = v3;
      LOBYTE(v3) = *(a2 + 24);
    }

    else if (v3 == 3)
    {
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      *v2 = v3;
      LOBYTE(v3) = 3;
    }

    else
    {
      *v2 = *(a2 + 8);
      LOBYTE(v3) = 4;
    }

    goto LABEL_16;
  }

  if (*(a2 + 24) <= 6u)
  {
    if (v3 == 5)
    {
      *v2 = *(a2 + 8);
      LOBYTE(v3) = 5;
    }

    else
    {
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      *v2 = v3;
      LOBYTE(v3) = 6;
    }

    goto LABEL_16;
  }

  if ((v3 - 7) < 2)
  {
LABEL_16:
    *(result + 24) = v3;
  }

  v4 = *(a2 + 32);
  *(result + 40) = 0;
  v5 = (result + 40);
  *(result + 32) = v4;
  *(result + 56) = -1;
  v6 = *(a2 + 56);
  if (v6 <= 4)
  {
    if (*(a2 + 56) > 1u)
    {
      if (v6 == 2)
      {
        *v5 = 0;
        *(result + 48) = 0;
        v8 = *(a2 + 40);
        *(a2 + 40) = 0;
        *(result + 40) = v8;
        LODWORD(v8) = *(a2 + 48);
        *(a2 + 48) = 0;
        *(result + 48) = v8;
        LODWORD(v8) = *(a2 + 52);
        *(a2 + 52) = 0;
        *(result + 52) = v8;
        *(result + 56) = *(a2 + 56);
        *(result + 64) = *(a2 + 64);
      }

      else
      {
        if (v6 == 3)
        {
          v7 = *(a2 + 40);
          *(a2 + 40) = 0;
          *v5 = v7;
          *(result + 56) = 3;
        }

        else
        {
          *v5 = *(a2 + 40);
          *(result + 56) = 4;
        }

        *(result + 64) = *(a2 + 64);
      }

      return result;
    }

    if (!*(a2 + 56))
    {
      *v5 = 0;
    }

LABEL_28:
    *(result + 56) = v6;
    *(result + 64) = *(a2 + 64);
    return result;
  }

  if (*(a2 + 56) > 6u)
  {
    if (v6 - 7 >= 2)
    {
      *(result + 64) = *(a2 + 64);
      return result;
    }

    goto LABEL_28;
  }

  if (v6 == 5)
  {
    *v5 = *(a2 + 40);
    *(result + 56) = 5;
  }

  else
  {
    v9 = *(a2 + 40);
    *(a2 + 40) = 0;
    *v5 = v9;
    *(result + 56) = 6;
  }

  *(result + 64) = *(a2 + 64);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::getAllRecords(WebCore::IDBRequestData const&,WebCore::IDBGetAllRecordsData const&)::$_0,void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A418;
  if (*(a1 + 184) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 168, a2);
  }

  *(a1 + 184) = -1;
  if (*(a1 + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 136, a2);
  }

  *(a1 + 152) = -1;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::getAllRecords(WebCore::IDBRequestData const&,WebCore::IDBGetAllRecordsData const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F472A418;
  if (*(this + 184) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 168, a2);
  }

  *(this + 184) = -1;
  if (*(this + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 136, a2);
  }

  *(this + 152) = -1;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 7);
    (*(*v3 + 8))(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  return WTF::fastFree(v4, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::getAllRecords(WebCore::IDBRequestData const&,WebCore::IDBGetAllRecordsData const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::getAllRecords();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::getCount(WebCore::IDBRequestData const&,WebCore::IDBKeyRangeData const&)::$_0,void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A440;
  if (*(a1 + 184) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 168, a2);
  }

  *(a1 + 184) = -1;
  if (*(a1 + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 136, a2);
  }

  *(a1 + 152) = -1;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::getCount(WebCore::IDBRequestData const&,WebCore::IDBKeyRangeData const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F472A440;
  if (*(this + 184) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 168, a2);
  }

  *(this + 184) = -1;
  if (*(this + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 136, a2);
  }

  *(this + 152) = -1;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 7);
    (*(*v3 + 8))(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  return WTF::fastFree(v4, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::getCount(WebCore::IDBRequestData const&,WebCore::IDBKeyRangeData const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::getCount();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::deleteRecord(WebCore::IDBRequestData const&,WebCore::IDBKeyRangeData const&)::$_0,void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A468;
  if (*(a1 + 184) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 168, a2);
  }

  *(a1 + 184) = -1;
  if (*(a1 + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 136, a2);
  }

  *(a1 + 152) = -1;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::deleteRecord(WebCore::IDBRequestData const&,WebCore::IDBKeyRangeData const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F472A468;
  if (*(this + 184) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 168, a2);
  }

  *(this + 184) = -1;
  if (*(this + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 136, a2);
  }

  *(this + 152) = -1;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 7);
    (*(*v3 + 8))(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  return WTF::fastFree(v4, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::deleteRecord(WebCore::IDBRequestData const&,WebCore::IDBKeyRangeData const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::deleteRecord();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::openCursor(WebCore::IDBRequestData const&,WebCore::IDBCursorInfo const&)::$_0,void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A490;
  if (*(a1 + 240) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 224, a2);
  }

  *(a1 + 240) = -1;
  if (*(a1 + 208) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 192, a2);
  }

  *(a1 + 208) = -1;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::openCursor(WebCore::IDBRequestData const&,WebCore::IDBCursorInfo const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F472A490;
  if (*(this + 240) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 224, a2);
  }

  *(this + 240) = -1;
  if (*(this + 208) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 192, a2);
  }

  *(this + 208) = -1;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 7);
    (*(*v3 + 8))(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  return WTF::fastFree(v4, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::openCursor(WebCore::IDBRequestData const&,WebCore::IDBCursorInfo const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::openCursor();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::iterateCursor(WebCore::IDBRequestData const&,WebCore::IDBIterateCursorData const&)::$_0,void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A4B8;
  if (*(a1 + 184) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 168, a2);
  }

  *(a1 + 184) = -1;
  if (*(a1 + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 136, a2);
  }

  *(a1 + 152) = -1;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::iterateCursor(WebCore::IDBRequestData const&,WebCore::IDBIterateCursorData const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F472A4B8;
  if (*(this + 184) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 168, a2);
  }

  *(this + 184) = -1;
  if (*(this + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(this + 136, a2);
  }

  *(this + 152) = -1;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 7);
    (*(*v3 + 8))(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  return WTF::fastFree(v4, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::iterateCursor(WebCore::IDBRequestData const&,WebCore::IDBIterateCursorData const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::iterateCursor();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::establishTransaction(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBTransactionInfo const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A4E0;
  WebCore::IDBTransactionInfo::~IDBTransactionInfo((a1 + 4), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::establishTransaction(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBTransactionInfo const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A4E0;
  WebCore::IDBTransactionInfo::~IDBTransactionInfo((a1 + 4), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::establishTransaction(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBTransactionInfo const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::establishTransaction();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::fireVersionChangeEvent(WebCore::IDBServer::UniqueIDBDatabaseConnection &,WebCore::IDBResourceIdentifier const&,unsigned long long)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472A508;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    add = atomic_fetch_add(v1 + 7, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v1 + 7);
      v3 = result;
      (*(*v1 + 8))(v1);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::fireVersionChangeEvent(WebCore::IDBServer::UniqueIDBDatabaseConnection &,WebCore::IDBResourceIdentifier const&,unsigned long long)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472A508;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3 + 7, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3 + 7);
    v6 = a1;
    (*(*v3 + 8))(v3);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::generateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>> const&,WebCore::IDBKeyData const&,WebCore::IDBValue const&,std::optional<long long>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A530;
  InProcessIDBServer::generateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>> const&,WebCore::IDBKeyData const&,WebCore::IDBValue const&,std::optional<long long>)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::generateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>> const&,WebCore::IDBKeyData const&,WebCore::IDBValue const&,std::optional<long long>)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A530;
  InProcessIDBServer::generateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>> const&,WebCore::IDBKeyData const&,WebCore::IDBValue const&,std::optional<long long>)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didStartTransaction(WebCore::IDBResourceIdentifier const&,WebCore::IDBError const&)::$_0,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_1F472A558;
  v2 = result[6];
  result[6] = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = result;
    WTF::StringImpl::destroy(v2, a2);
    result = v3;
  }

  v4 = result[2];
  result[2] = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 7);
      v5 = result;
      (*(*v4 + 8))(v4);
      return v5;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didStartTransaction(WebCore::IDBResourceIdentifier const&,WebCore::IDBError const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A558;
  v2 = *(a1 + 6);
  *(a1 + 6) = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = a1;
    WTF::StringImpl::destroy(v2, a2);
    a1 = v3;
  }

  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    v6 = a1;
    (*(*v4 + 8))(v4);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didCloseFromServer(WebCore::IDBServer::UniqueIDBDatabaseConnection &,WebCore::IDBError const&)::$_0,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_1F472A580;
  v2 = result[5];
  result[5] = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = result;
    WTF::StringImpl::destroy(v2, a2);
    result = v3;
  }

  v4 = result[2];
  result[2] = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 7);
      v5 = result;
      (*(*v4 + 8))(v4);
      return v5;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didCloseFromServer(WebCore::IDBServer::UniqueIDBDatabaseConnection &,WebCore::IDBError const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A580;
  v2 = *(a1 + 5);
  *(a1 + 5) = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = a1;
    WTF::StringImpl::destroy(v2, a2);
    a1 = v3;
  }

  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    v6 = a1;
    (*(*v4 + 8))(v4);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::notifyOpenDBRequestBlocked(WebCore::IDBResourceIdentifier const&,unsigned long long,unsigned long long)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472A5A8;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    add = atomic_fetch_add(v1 + 7, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v1 + 7);
      v3 = result;
      (*(*v1 + 8))(v1);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::notifyOpenDBRequestBlocked(WebCore::IDBResourceIdentifier const&,unsigned long long,unsigned long long)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472A5A8;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3 + 7, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3 + 7);
    v6 = a1;
    (*(*v3 + 8))(v3);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::databaseConnectionPendingClose(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472A5D0;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    add = atomic_fetch_add(v1 + 7, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v1 + 7);
      v3 = result;
      (*(*v1 + 8))(v1);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::databaseConnectionPendingClose(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472A5D0;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3 + 7, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3 + 7);
    v6 = a1;
    (*(*v3 + 8))(v3);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::databaseConnectionPendingClose(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::databaseConnectionPendingClose();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::databaseConnectionClosed(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472A5F8;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    add = atomic_fetch_add(v1 + 7, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v1 + 7);
      v3 = result;
      (*(*v1 + 8))(v1);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::databaseConnectionClosed(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472A5F8;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3 + 7, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3 + 7);
    v6 = a1;
    (*(*v3 + 8))(v3);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::databaseConnectionClosed(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::databaseConnectionClosed();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::abortOpenAndUpgradeNeeded(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::IDBResourceIdentifier> const&)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472A620;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    add = atomic_fetch_add(v1 + 7, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v1 + 7);
      v3 = result;
      (*(*v1 + 8))(v1);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::abortOpenAndUpgradeNeeded(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::IDBResourceIdentifier> const&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472A620;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3 + 7, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3 + 7);
    v6 = a1;
    (*(*v3 + 8))(v3);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::abortOpenAndUpgradeNeeded(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::IDBResourceIdentifier> const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::abortOpenAndUpgradeNeeded();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didFireVersionChangeEvent(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBResourceIdentifier const&,WebCore::IndexedDB::ConnectionClosedOnBehalfOfServer)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472A648;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    add = atomic_fetch_add(v1 + 7, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v1 + 7);
      v3 = result;
      (*(*v1 + 8))(v1);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didFireVersionChangeEvent(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBResourceIdentifier const&,WebCore::IndexedDB::ConnectionClosedOnBehalfOfServer)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472A648;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3 + 7, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3 + 7);
    v6 = a1;
    (*(*v3 + 8))(v3);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didFireVersionChangeEvent(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBResourceIdentifier const&,WebCore::IndexedDB::ConnectionClosedOnBehalfOfServer)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::didFireVersionChangeEvent();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::didGenerateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,WebCore::IDBKeyData const&,WebCore::IndexKey const&,std::optional<long long>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A670;
  InProcessIDBServer::didGenerateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,WebCore::IDBKeyData const&,WebCore::IndexKey const&,std::optional<long long>)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didGenerateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,WebCore::IDBKeyData const&,WebCore::IndexKey const&,std::optional<long long>)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A670;
  InProcessIDBServer::didGenerateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,WebCore::IDBKeyData const&,WebCore::IndexKey const&,std::optional<long long>)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didGenerateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,WebCore::IDBKeyData const&,WebCore::IndexKey const&,std::optional<long long>)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::didGenerateIndexKeyForRecord();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::openDBRequestCancelled(WebCore::IDBOpenRequestData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A698;
  WebCore::IDBOpenRequestData::~IDBOpenRequestData((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || atomic_fetch_add(v3 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v3 + 7);
  (*(*v3 + 8))(v3);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::openDBRequestCancelled(WebCore::IDBOpenRequestData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A698;
  WebCore::IDBOpenRequestData::~IDBOpenRequestData((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 7);
    (*(*v4 + 8))(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return WTF::fastFree(v5, v3);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::openDBRequestCancelled(WebCore::IDBOpenRequestData const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::openDBRequestCancelled();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::getAllDatabaseNamesAndVersions(WebCore::IDBResourceIdentifier const&,WebCore::ClientOrigin const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A6C0;
  InProcessIDBServer::getAllDatabaseNamesAndVersions(WebCore::IDBResourceIdentifier const&,WebCore::ClientOrigin const&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::getAllDatabaseNamesAndVersions(WebCore::IDBResourceIdentifier const&,WebCore::ClientOrigin const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A6C0;
  InProcessIDBServer::getAllDatabaseNamesAndVersions(WebCore::IDBResourceIdentifier const&,WebCore::ClientOrigin const&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::getAllDatabaseNamesAndVersions(WebCore::IDBResourceIdentifier const&,WebCore::ClientOrigin const&)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::getAllDatabaseNamesAndVersions();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didGetAllDatabaseNamesAndVersions(WebCore::IDBResourceIdentifier const&,WTF::Vector<WebCore::IDBDatabaseNameAndVersion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472A6E8;
  v3 = *(a1 + 52);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = 16 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v4 = (v4 + 16);
      v5 -= 16;
    }

    while (v5);
    v4 = *(a1 + 40);
  }

  if (v4)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    WTF::fastFree(v4, a2);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (!v7 || atomic_fetch_add(v7 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v7 + 7);
  (*(*v7 + 8))(v7);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::didGetAllDatabaseNamesAndVersions(WebCore::IDBResourceIdentifier const&,WTF::Vector<WebCore::IDBDatabaseNameAndVersion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F472A6E8;
  v3 = *(this + 13);
  v4 = *(this + 5);
  if (v3)
  {
    v5 = 16 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v4 = (v4 + 16);
      v5 -= 16;
    }

    while (v5);
    v4 = *(this + 5);
  }

  if (v4)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v4, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7 && atomic_fetch_add(v7 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 7);
    (*(*v7 + 8))(v7);
    v8 = this;
  }

  else
  {
    v8 = this;
  }

  return WTF::fastFree(v8, a2);
}

void *WTF::Detail::CallableWrapper<InProcessIDBServer::closeAndDeleteDatabasesModifiedSince(WTF::WallTime)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472A710;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    add = atomic_fetch_add(v1 + 7, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v1 + 7);
      v3 = result;
      (*(*v1 + 8))(v1);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::closeAndDeleteDatabasesModifiedSince(WTF::WallTime)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472A710;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3 + 7, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3 + 7);
    v6 = a1;
    (*(*v3 + 8))(v3);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<InProcessIDBServer::closeAndDeleteDatabasesModifiedSince(WTF::WallTime)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 32), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2 + 32);
  }

  result = WebCore::IDBServer::IDBServer::closeAndDeleteDatabasesModifiedSince();
  atomic_compare_exchange_strong_explicit((v2 + 32), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {

    return WTF::Lock::unlockSlow((v2 + 32));
  }

  return result;
}

uint64_t LegacyHistoryItemClient::singleton(LegacyHistoryItemClient *this, void *a2)
{
  {
    return LegacyHistoryItemClient::singleton(void)::client;
  }

  result = WebCore::HistoryItemClient::operator new(0x10, a2);
  *(result + 8) = 1;
  *result = &unk_1F472A738;
  LegacyHistoryItemClient::singleton(void)::client = result;
  return result;
}

uint64_t WebCore::HistoryItemClient::operator new(WebCore::HistoryItemClient *this, void *a2)
{
  if (this == 16 && *MEMORY[0x1E69E25D8])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E25D8], a2);
  }

  else
  {
    return MEMORY[0x1EEE56C60]();
  }
}

void LegacyHistoryItemClient::~LegacyHistoryItemClient(LegacyHistoryItemClient *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void LegacyHistoryItemClient::~LegacyHistoryItemClient(LegacyHistoryItemClient *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    bmalloc::api::tzoneFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

void PopupMenuIOS::~PopupMenuIOS(PopupMenuIOS *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void PopupMenuIOS::~PopupMenuIOS(PopupMenuIOS *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    WTF::fastFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

void SearchPopupMenuIOS::~SearchPopupMenuIOS(SearchPopupMenuIOS *this)
{
  *this = &unk_1F472A7A8;
  v1 = *(this + 2);
  *(this + 2) = 0;
  if (!v1)
  {
LABEL_4:
    if (*(this + 2) == 1)
    {
      return;
    }

LABEL_7:
    __break(0xC471u);
    return;
  }

  if (v1[2] != 1)
  {
    --v1[2];
    goto LABEL_4;
  }

  (*(*v1 + 8))(v1);
  if (*(this + 2) != 1)
  {
    goto LABEL_7;
  }
}

void SearchPopupMenuIOS::~SearchPopupMenuIOS(SearchPopupMenuIOS *this, void *a2)
{
  *this = &unk_1F472A7A8;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    if (v2[2] == 1)
    {
      v3 = this;
      (*(*v2 + 8))(v2);
      this = v3;
      if (*(v3 + 2) == 1)
      {
        goto LABEL_5;
      }

LABEL_9:
      __break(0xC471u);
      return;
    }

    --v2[2];
  }

  if (*(this + 2) != 1)
  {
    goto LABEL_9;
  }

LABEL_5:

  WTF::fastFree(this, a2);
}

void WebKit::StorageAreaImpl::~StorageAreaImpl(WebKit::StorageAreaImpl *this)
{
  *this = &unk_1F472A7E8;
  v2 = (this + 64);
  *(this + 8) = &unk_1F472A8C8;
  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::TimerBase::~TimerBase(v2);
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (!v5)
  {
LABEL_6:
    v6 = *(this + 5);
    *(this + 5) = 0;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (*v5 != 1)
  {
    --*v5;
    goto LABEL_6;
  }

  WebCore::StorageSyncManager::~StorageSyncManager(v5, v4);
  WTF::fastFree(v7, v8);
  v6 = *(this + 5);
  *(this + 5) = 0;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    v16 = WTF::fastMalloc(0x10);
    *v16 = &unk_1F472A8F0;
    v16[1] = v6;
    v19 = v16;
    WTF::ensureOnMainThread();
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

LABEL_10:
  v9 = *(this + 3);
  *(this + 3) = 0;
  if (!v9)
  {
    goto LABEL_13;
  }

  if (*v9 != 1)
  {
    --*v9;
LABEL_13:
    v10 = *(this + 2);
    *(this + 2) = 0;
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v11 = *(v9 + 1);
  if (v11)
  {
    v12 = *(v11 - 4);
    if (v12)
    {
      v13 = *(v9 + 1);
      do
      {
        if (*v13 != -1)
        {
          v14 = v13[1];
          v13[1] = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v4);
          }

          v15 = *v13;
          *v13 = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v4);
          }
        }

        v13 += 2;
        --v12;
      }

      while (v12);
    }

    WTF::fastFree((v11 - 16), v4);
    if (*v9 != 1)
    {
LABEL_34:
      __break(0xC471u);
      JUMPOUT(0x1C79D5390);
    }
  }

  WTF::fastFree(v9, v4);
  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
LABEL_14:
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WebCore::SecurityOrigin::~SecurityOrigin(v10, v4);
      WTF::fastFree(v17, v18);
    }
  }

LABEL_16:
  if (*(this + 2) != 1)
  {
    goto LABEL_34;
  }
}

{
  WebKit::StorageAreaImpl::~StorageAreaImpl(this);

  WTF::fastFree(v1, v2);
}

void WebCore::Timer::~Timer(WebCore::Timer *this)
{
  *this = &unk_1F472A8C8;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  WebCore::TimerBase::~TimerBase(this);
}

{
  *this = &unk_1F472A8C8;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebCore::TimerBase::~TimerBase(this);

  bmalloc::api::tzoneFree(v3, v4);
}

void WebKit::StorageAreaImpl::create(char a1@<W0>, atomic_uint *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x78);
  *(v8 + 8) = 1;
  *v8 = &unk_1F472A7E8;
  *(v8 + 12) = a1;
  atomic_fetch_add(a2, 1u);
  *(v8 + 16) = a2;
  WebCore::StorageMap::StorageMap((v8 + 24));
  v9 = *a3;
  *a3 = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = v9;
  *(v8 + 56) = 0;
  WebCore::TimerBase::TimerBase((v8 + 64));
  *(v8 + 64) = &unk_1F472A8C8;
  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F472A878;
  *(v10 + 1) = v8;
  *(v10 + 2) = WebKit::StorageAreaImpl::closeDatabaseTimerFired;
  *(v10 + 3) = 0;
  *(v8 + 112) = v10;
  WebKit::StorageTracker::tracker(v10, v11);
  *a4 = v8;
  v12 = *(v8 + 48);
  if (v12)
  {
    ++*v12;
    v25 = v8;
    v26 = v12;
    ++*(v8 + 8);
    WebCore::SecurityOriginData::databaseIdentifier(&v24, (*(v8 + 16) + 8));
    v13 = WTF::fastMalloc(0xC0);
    v14 = WebKit::StorageAreaSync::StorageAreaSync(v13, &v26, &v25);
    v16 = *(v8 + 40);
    *(v8 + 40) = v14;
    if (v16)
    {
      if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        v22 = WTF::fastMalloc(0x10);
        *v22 = &unk_1F472A8F0;
        v22[1] = v16;
        v27 = v22;
        WTF::ensureOnMainThread();
        v23 = v27;
        v27 = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }
    }

    v17 = v24;
    v24 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v15);
    }

    v18 = v25;
    v25 = 0;
    if (v18)
    {
      if (v18[2] == 1)
      {
        (*(*v18 + 8))(v18);
        v19 = v26;
        v26 = 0;
        if (!v19)
        {
          return;
        }

        goto LABEL_11;
      }

      --v18[2];
    }

    v19 = v26;
    v26 = 0;
    if (!v19)
    {
      return;
    }

LABEL_11:
    if (*v19 == 1)
    {
      WebCore::StorageSyncManager::~StorageSyncManager(v19, v15);
      WTF::fastFree(v20, v21);
    }

    else
    {
      --*v19;
    }
  }
}

void *WebKit::StorageAreaImpl::copy@<X0>(WebKit::StorageAreaImpl *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x78);
  v5 = v4;
  *(v4 + 8) = 1;
  *v4 = &unk_1F472A7E8;
  *(v4 + 12) = *(this + 12);
  v6 = *(this + 2);
  atomic_fetch_add(v6, 1u);
  v7 = *(this + 3);
  ++*v7;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = *(this + 8);
  *(v4 + 40) = 0;
  v8 = *(this + 6);
  if (v8)
  {
    ++*v8;
  }

  *(v4 + 48) = v8;
  *(v4 + 56) = 0;
  WebCore::TimerBase::TimerBase((v4 + 64));
  *(v5 + 64) = &unk_1F472A8C8;
  result = WTF::fastMalloc(0x20);
  *result = &unk_1F472A878;
  result[1] = v5;
  result[2] = WebKit::StorageAreaImpl::closeDatabaseTimerFired;
  result[3] = 0;
  *(v5 + 112) = result;
  *a2 = v5;
  return result;
}

uint64_t WebKit::StorageAreaImpl::closeDatabaseTimerFired(uint64_t this)
{
  v1 = *(this + 40);
  if (!v1)
  {
    return this;
  }

  v2 = this;
  if (!*(v1 + 80))
  {
    goto LABEL_10;
  }

  v3 = 0;
  v4 = (v1 + 189);
  atomic_compare_exchange_strong_explicit((v1 + 189), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x1CCA63990](v1 + 189);
    if (*(v1 + 191))
    {
      goto LABEL_6;
    }
  }

  else if (*(v1 + 191))
  {
    goto LABEL_6;
  }

  do
  {
    v8 = 0x7FF0000000000000;
    v9 = 0;
    WTF::Condition::waitUntilUnchecked<WTF::Lock>(v1 + 190, (v1 + 189), &v8);
  }

  while (*(v1 + 191) != 1);
LABEL_6:
  this = *(v1 + 80);
  *(v1 + 80) = 0;
  if (!this)
  {
    goto LABEL_9;
  }

  if (*(this + 8) != 1)
  {
    --*(this + 8);
LABEL_9:
    v5 = 1;
    atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      goto LABEL_10;
    }

LABEL_19:
    this = WTF::Lock::unlockSlow((v1 + 189));
    v6 = *(v2 + 40);
    if (!v6)
    {
      return this;
    }

    goto LABEL_11;
  }

  this = (*(*this + 8))(this);
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_19;
  }

LABEL_10:
  v6 = *(v2 + 40);
  if (!v6)
  {
    return this;
  }

LABEL_11:
  if (*(v6 + 104))
  {
    *(v6 + 188) = 1;
    if ((*(v6 + 40) & 0xFFFFFFFFFFFFLL) == 0 || *((*(v6 + 40) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
    {

      return WebCore::TimerBase::start();
    }
  }

  return this;
}

uint64_t WebKit::StorageAreaImpl::length(WebKit::StorageAreaImpl *this)
{
  v2 = *(this + 5);
  if (v2 && *(v2 + 80))
  {
    v3 = 0;
    v4 = (v2 + 189);
    atomic_compare_exchange_strong_explicit((v2 + 189), &v3, 1u, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      MEMORY[0x1CCA63990](v2 + 189);
      if (*(v2 + 191))
      {
        goto LABEL_6;
      }
    }

    else if (*(v2 + 191))
    {
      goto LABEL_6;
    }

    do
    {
      v9 = 0x7FF0000000000000;
      v10 = 0;
      WTF::Condition::waitUntilUnchecked<WTF::Lock>(v2 + 190, (v2 + 189), &v9);
    }

    while (*(v2 + 191) != 1);
LABEL_6:
    v5 = *(v2 + 80);
    *(v2 + 80) = 0;
    if (v5)
    {
      if (v5[2] == 1)
      {
        (*(*v5 + 8))(v5);
        v8 = 1;
        atomic_compare_exchange_strong_explicit(v4, &v8, 0, memory_order_release, memory_order_relaxed);
        if (v8 == 1)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      --v5[2];
    }

    v6 = 1;
    atomic_compare_exchange_strong_explicit(v4, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_10;
    }

LABEL_14:
    WTF::Lock::unlockSlow((v2 + 189));
  }

LABEL_10:

  return WebCore::StorageMap::length((this + 24));
}

uint64_t WebKit::StorageAreaImpl::key(WebKit::StorageAreaImpl *this, uint64_t a2)
{
  v3 = *(this + 5);
  if (v3 && *(v3 + 80))
  {
    v5 = 0;
    v6 = (v3 + 189);
    atomic_compare_exchange_strong_explicit((v3 + 189), &v5, 1u, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      MEMORY[0x1CCA63990](v3 + 189);
      if (*(v3 + 191))
      {
        goto LABEL_6;
      }
    }

    else if (*(v3 + 191))
    {
      goto LABEL_6;
    }

    do
    {
      v11 = 0x7FF0000000000000;
      v12 = 0;
      WTF::Condition::waitUntilUnchecked<WTF::Lock>(v3 + 190, (v3 + 189), &v11);
    }

    while (*(v3 + 191) != 1);
LABEL_6:
    v7 = *(v3 + 80);
    *(v3 + 80) = 0;
    if (v7)
    {
      if (v7[2] == 1)
      {
        (*(*v7 + 8))(v7, a2);
        v9 = 1;
        atomic_compare_exchange_strong_explicit(v6, &v9, 0, memory_order_release, memory_order_relaxed);
        if (v9 == 1)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      --v7[2];
    }

    v8 = 1;
    atomic_compare_exchange_strong_explicit(v6, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_10;
    }

LABEL_14:
    WTF::Lock::unlockSlow((v3 + 189));
  }

LABEL_10:

  return MEMORY[0x1EEE54078](this + 24);
}

uint64_t WebKit::StorageAreaImpl::item(WebKit::StorageAreaImpl *this, const WTF::String *a2)
{
  v3 = *(this + 5);
  if (v3 && *(v3 + 80))
  {
    v4 = a2;
    v5 = 0;
    v6 = (v3 + 189);
    atomic_compare_exchange_strong_explicit((v3 + 189), &v5, 1u, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      MEMORY[0x1CCA63990](v3 + 189);
      if (*(v3 + 191))
      {
        goto LABEL_6;
      }
    }

    else if (*(v3 + 191))
    {
      goto LABEL_6;
    }

    do
    {
      v11 = 0x7FF0000000000000;
      v12 = 0;
      WTF::Condition::waitUntilUnchecked<WTF::Lock>(v3 + 190, (v3 + 189), &v11);
    }

    while (*(v3 + 191) != 1);
LABEL_6:
    v7 = *(v3 + 80);
    *(v3 + 80) = 0;
    a2 = v4;
    if (v7)
    {
      if (v7[2] == 1)
      {
        (*(*v7 + 8))(v7, v4);
        a2 = v4;
        v9 = 1;
        atomic_compare_exchange_strong_explicit(v6, &v9, 0, memory_order_release, memory_order_relaxed);
        if (v9 == 1)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      --v7[2];
    }

    v8 = 1;
    atomic_compare_exchange_strong_explicit(v6, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_10;
    }

LABEL_14:
    WTF::Lock::unlockSlow((v3 + 189));
    a2 = v4;
  }

LABEL_10:

  return MEMORY[0x1EEE5C100](this + 24, a2);
}

WTF::StringImpl *WebKit::StorageAreaImpl::setItem(WebKit::StorageAreaImpl *this, WebCore::LocalFrame *a2, const WTF::String *a3, const WTF::String *a4, BOOL *a5)
{
  v10 = *(this + 5);
  if (v10 && *(v10 + 80))
  {
    v11 = 0;
    v12 = (v10 + 189);
    atomic_compare_exchange_strong_explicit((v10 + 189), &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      MEMORY[0x1CCA63990](v10 + 189);
      if (*(v10 + 191))
      {
        goto LABEL_6;
      }
    }

    else if (*(v10 + 191))
    {
      goto LABEL_6;
    }

    do
    {
      v21 = 0x7FF0000000000000;
      v22 = 0;
      WTF::Condition::waitUntilUnchecked<WTF::Lock>(v10 + 190, (v10 + 189), &v21);
    }

    while (*(v10 + 191) != 1);
LABEL_6:
    v13 = *(v10 + 80);
    *(v10 + 80) = 0;
    if (v13)
    {
      if (v13[2] == 1)
      {
        (*(*v13 + 8))(v13);
        v19 = 1;
        atomic_compare_exchange_strong_explicit(v12, &v19, 0, memory_order_release, memory_order_relaxed);
        if (v19 == 1)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }

      --v13[2];
    }

    v14 = 1;
    atomic_compare_exchange_strong_explicit(v12, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 == 1)
    {
      goto LABEL_10;
    }

LABEL_22:
    WTF::Lock::unlockSlow((v10 + 189));
  }

LABEL_10:
  v20 = 0;
  WebCore::StorageMap::setItem((this + 24), a3, a4, &v20, a5);
  if (!*a5 && (WTF::equal(v20, *a4, v16) & 1) == 0)
  {
    v17 = *(this + 5);
    if (v17)
    {
      WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::String const&>((v17 + 64), a3, a4, &v21);
      if ((*(v17 + 40) & 0xFFFFFFFFFFFFLL) == 0 || *((*(v17 + 40) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
      {
        WebCore::TimerBase::start();
      }
    }

    WebKit::StorageAreaImpl::dispatchStorageEvent(this, a3, &v20, a4, a2);
  }

  result = v20;
  v20 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

unsigned __int8 *WebKit::StorageAreaImpl::dispatchStorageEvent(unsigned __int8 *this, const WTF::String *a2, const WTF::String *a3, const WTF::String *a4, WebCore::LocalFrame *a5)
{
  v5 = *(a5 + 3);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      if (this[12] - 1 > 1)
      {
        v10 = WTF::fastMalloc(0x10);
        *v10 = &unk_1F472A8A0;
        *(v10 + 1) = a5;
        v12 = v10;
        WebCore::StorageEventDispatcher::dispatchSessionStorageEvents();
        this = v12;
        if (!v12)
        {
          return this;
        }
      }

      else
      {
        WebCore::Page::group(v6);
        v8 = WTF::fastMalloc(0x10);
        *v8 = &unk_1F472A8A0;
        *(v8 + 1) = a5;
        v11 = v8;
        WebCore::StorageEventDispatcher::dispatchLocalStorageEvents();
        this = v11;
        if (!v11)
        {
          return this;
        }
      }

      return (*(*this + 8))(this);
    }
  }

  return this;
}

WTF::StringImpl *WebKit::StorageAreaImpl::removeItem(WebKit::StorageAreaImpl *this, WebCore::LocalFrame *a2, const WTF::String *a3)
{
  v6 = *(this + 5);
  if (v6 && *(v6 + 80))
  {
    v7 = 0;
    v8 = (v6 + 189);
    atomic_compare_exchange_strong_explicit((v6 + 189), &v7, 1u, memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      MEMORY[0x1CCA63990](v6 + 189);
      if (*(v6 + 191))
      {
        goto LABEL_6;
      }
    }

    else if (*(v6 + 191))
    {
      goto LABEL_6;
    }

    do
    {
      v20 = 0x7FF0000000000000;
      v21 = 0;
      WTF::Condition::waitUntilUnchecked<WTF::Lock>(v6 + 190, (v6 + 189), &v20);
    }

    while (*(v6 + 191) != 1);
LABEL_6:
    v9 = *(v6 + 80);
    *(v6 + 80) = 0;
    if (v9)
    {
      if (v9[2] == 1)
      {
        (*(*v9 + 8))(v9);
        v17 = 1;
        atomic_compare_exchange_strong_explicit(v8, &v17, 0, memory_order_release, memory_order_relaxed);
        if (v17 == 1)
        {
          goto LABEL_10;
        }

        goto LABEL_26;
      }

      --v9[2];
    }

    v10 = 1;
    atomic_compare_exchange_strong_explicit(v8, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      goto LABEL_10;
    }

LABEL_26:
    WTF::Lock::unlockSlow((v6 + 189));
  }

LABEL_10:
  v19 = 0;
  result = WebCore::StorageMap::removeItem((this + 24), a3, &v19);
  if (v19)
  {
    v12 = *(this + 5);
    if (v12)
    {
      v18 = 0;
      WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::String const&>((v12 + 64), a3, &v18, &v20);
      if ((*(v12 + 40) & 0xFFFFFFFFFFFFLL) == 0 || *((*(v12 + 40) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
      {
        WebCore::TimerBase::start();
      }

      v14 = v18;
      v18 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v20 = 0;
    WebKit::StorageAreaImpl::dispatchStorageEvent(this, a3, &v19, &v20, a2);
    v16 = v20;
    v20 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v15);
      }
    }
  }

  return result;
}

WTF::StringImpl *WebKit::StorageAreaImpl::clear(WebKit::StorageAreaImpl *this, WebCore::LocalFrame *a2)
{
  v4 = *(this + 5);
  if (!v4 || !*(v4 + 80))
  {
    goto LABEL_10;
  }

  v5 = 0;
  v6 = (v4 + 189);
  atomic_compare_exchange_strong_explicit((v4 + 189), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x1CCA63990](v4 + 189);
    if ((*(v4 + 191) & 1) == 0)
    {
      do
      {
LABEL_5:
        v18 = 0x7FF0000000000000;
        v19 = 0;
        WTF::Condition::waitUntilUnchecked<WTF::Lock>(v4 + 190, (v4 + 189), &v18);
      }

      while (*(v4 + 191) != 1);
    }
  }

  else if ((*(v4 + 191) & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v4 + 80);
  *(v4 + 80) = 0;
  if (!v7)
  {
    goto LABEL_9;
  }

  if (v7[2] != 1)
  {
    --v7[2];
LABEL_9:
    v8 = 1;
    atomic_compare_exchange_strong_explicit(v6, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_10;
    }

LABEL_24:
    WTF::Lock::unlockSlow((v4 + 189));
    result = WebCore::StorageMap::length((this + 24));
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  (*(*v7 + 8))(v7);
  v15 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    goto LABEL_24;
  }

LABEL_10:
  result = WebCore::StorageMap::length((this + 24));
  if (!result)
  {
    return result;
  }

LABEL_11:
  WebCore::StorageMap::clear((this + 24));
  v11 = *(this + 5);
  if (v11)
  {
    WebKit::StorageAreaSync::scheduleClear(v11, v10);
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  WebKit::StorageAreaImpl::dispatchStorageEvent(this, &v18, &v17, &v16, a2);
  v13 = v16;
  v16 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = v17;
  v17 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

uint64_t WebKit::StorageAreaImpl::contains(WebKit::StorageAreaImpl *this, const WTF::String *a2)
{
  v3 = *(this + 5);
  if (v3 && *(v3 + 80))
  {
    v4 = a2;
    v5 = 0;
    v6 = (v3 + 189);
    atomic_compare_exchange_strong_explicit((v3 + 189), &v5, 1u, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      MEMORY[0x1CCA63990](v3 + 189);
      if (*(v3 + 191))
      {
        goto LABEL_6;
      }
    }

    else if (*(v3 + 191))
    {
      goto LABEL_6;
    }

    do
    {
      v11 = 0x7FF0000000000000;
      v12 = 0;
      WTF::Condition::waitUntilUnchecked<WTF::Lock>(v3 + 190, (v3 + 189), &v11);
    }

    while (*(v3 + 191) != 1);
LABEL_6:
    v7 = *(v3 + 80);
    *(v3 + 80) = 0;
    a2 = v4;
    if (v7)
    {
      if (v7[2] == 1)
      {
        (*(*v7 + 8))(v7, v4);
        a2 = v4;
        v9 = 1;
        atomic_compare_exchange_strong_explicit(v6, &v9, 0, memory_order_release, memory_order_relaxed);
        if (v9 == 1)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      --v7[2];
    }

    v8 = 1;
    atomic_compare_exchange_strong_explicit(v6, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_10;
    }

LABEL_14:
    WTF::Lock::unlockSlow((v3 + 189));
    a2 = v4;
  }

LABEL_10:

  return MEMORY[0x1EEE5C108](this + 24, a2);
}

uint64_t WebKit::StorageAreaImpl::clearForOriginDeletion(WebKit::StorageAreaImpl *this)
{
  v2 = *(this + 5);
  if (!v2 || !*(v2 + 80))
  {
    goto LABEL_10;
  }

  v3 = 0;
  v4 = (v2 + 189);
  atomic_compare_exchange_strong_explicit((v2 + 189), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x1CCA63990](v2 + 189);
    if ((*(v2 + 191) & 1) == 0)
    {
      do
      {
LABEL_5:
        v11 = 0x7FF0000000000000;
        v12 = 0;
        WTF::Condition::waitUntilUnchecked<WTF::Lock>(v2 + 190, (v2 + 189), &v11);
      }

      while (*(v2 + 191) != 1);
    }
  }

  else if ((*(v2 + 191) & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (!v5)
  {
    goto LABEL_9;
  }

  if (v5[2] != 1)
  {
    --v5[2];
LABEL_9:
    v6 = 1;
    atomic_compare_exchange_strong_explicit(v4, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_10;
    }

LABEL_19:
    WTF::Lock::unlockSlow((v2 + 189));
    WebCore::StorageMap::clear((this + 24));
    result = *(this + 5);
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  (*(*v5 + 8))(v5);
  v10 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    goto LABEL_19;
  }

LABEL_10:
  WebCore::StorageMap::clear((this + 24));
  result = *(this + 5);
  if (!result)
  {
    return result;
  }

LABEL_11:
  result = WebKit::StorageAreaSync::scheduleClear(result, v7);
  v9 = *(this + 5);
  if (*(v9 + 104))
  {
    *(v9 + 188) = 1;
    if ((*(v9 + 40) & 0xFFFFFFFFFFFFLL) == 0 || *((*(v9 + 40) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
    {

      return WebCore::TimerBase::start();
    }
  }

  return result;
}

uint64_t WebKit::StorageAreaImpl::sync(uint64_t this, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *(this + 40);
  if (!v3)
  {
    return this;
  }

  v4 = this;
  if (!*(v3 + 80))
  {
    goto LABEL_10;
  }

  v5 = 0;
  v6 = (v3 + 189);
  atomic_compare_exchange_strong_explicit((v3 + 189), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x1CCA63990](v3 + 189);
    if (*(v3 + 191))
    {
      goto LABEL_6;
    }
  }

  else if (*(v3 + 191))
  {
    goto LABEL_6;
  }

  do
  {
    v10 = 0x7FF0000000000000;
    v11 = 0;
    WTF::Condition::waitUntilUnchecked<WTF::Lock>(v3 + 190, (v3 + 189), &v10);
  }

  while (*(v3 + 191) != 1);
LABEL_6:
  v7 = *(v3 + 80);
  *(v3 + 80) = 0;
  if (!v7)
  {
    goto LABEL_9;
  }

  if (v7[2] != 1)
  {
    --v7[2];
LABEL_9:
    v8 = 1;
    atomic_compare_exchange_strong_explicit(v6, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_10;
    }

LABEL_15:
    WTF::Lock::unlockSlow((v3 + 189));
    this = *(v4 + 40);
    if (!this)
    {
      return this;
    }

    goto LABEL_11;
  }

  (*(*v7 + 8))(v7);
  v9 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    goto LABEL_15;
  }

LABEL_10:
  this = *(v4 + 40);
  if (!this)
  {
    return this;
  }

LABEL_11:

  return WebKit::StorageAreaSync::syncTimerFired(this, a2, a3);
}

uint64_t WebKit::StorageAreaImpl::incrementAccessCount(uint64_t this)
{
  ++*(this + 56);
  if ((*(this + 96) & 0xFFFFFFFFFFFFLL) != 0 && *((*(this + 96) & 0xFFFFFFFFFFFFLL) + 8) != 0.0)
  {
    return WebCore::TimerBase::stopSlowCase((this + 64));
  }

  return this;
}

uint64_t WebKit::StorageAreaImpl::decrementAccessCount(uint64_t this, void *a2)
{
  v3 = *(this + 56) - 1;
  *(this + 56) = v3;
  if (!v3)
  {
    if ((*(this + 96) & 0xFFFFFFFFFFFFLL) != 0 && *((*(this + 96) & 0xFFFFFFFFFFFFLL) + 8) != 0.0)
    {
      this = WebCore::TimerBase::stopSlowCase((this + 64));
    }

    WebKit::StorageTracker::tracker(this, a2);

    return WebCore::TimerBase::start();
  }

  return this;
}

uint64_t WebKit::StorageAreaImpl::closeDatabaseIfIdle(uint64_t this)
{
  if ((*(this + 96) & 0xFFFFFFFFFFFFLL) == 0)
  {
    return this;
  }

  if (*((*(this + 96) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
  {
    return this;
  }

  v1 = this;
  this = WebCore::TimerBase::stopSlowCase((this + 64));
  v2 = *(v1 + 40);
  if (!v2)
  {
    return this;
  }

  if (!*(v2 + 80))
  {
    goto LABEL_12;
  }

  v3 = 0;
  v4 = (v2 + 189);
  atomic_compare_exchange_strong_explicit((v2 + 189), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x1CCA63990](v2 + 189);
    if (*(v2 + 191))
    {
      goto LABEL_8;
    }
  }

  else if (*(v2 + 191))
  {
    goto LABEL_8;
  }

  do
  {
    v8 = 0x7FF0000000000000;
    v9 = 0;
    WTF::Condition::waitUntilUnchecked<WTF::Lock>(v2 + 190, (v2 + 189), &v8);
  }

  while (*(v2 + 191) != 1);
LABEL_8:
  this = *(v2 + 80);
  *(v2 + 80) = 0;
  if (!this)
  {
    goto LABEL_11;
  }

  if (*(this + 8) != 1)
  {
    --*(this + 8);
LABEL_11:
    v5 = 1;
    atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      goto LABEL_12;
    }

LABEL_21:
    this = WTF::Lock::unlockSlow((v2 + 189));
    v6 = *(v1 + 40);
    if (!v6)
    {
      return this;
    }

    goto LABEL_13;
  }

  this = (*(*this + 8))(this);
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_21;
  }

LABEL_12:
  v6 = *(v1 + 40);
  if (!v6)
  {
    return this;
  }

LABEL_13:
  if (*(v6 + 104))
  {
    *(v6 + 188) = 1;
    if ((*(v6 + 40) & 0xFFFFFFFFFFFFLL) == 0 || *((*(v6 + 40) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
    {

      return WebCore::TimerBase::start();
    }
  }

  return this;
}

WebCore::StorageSyncManager *WebKit::StorageAreaImpl::sessionChanged(WebKit::StorageAreaImpl *this, int a2)
{
  v4 = *(this + 5);
  if (!v4 || !*(v4 + 80))
  {
    goto LABEL_10;
  }

  v5 = 0;
  v6 = (v4 + 189);
  atomic_compare_exchange_strong_explicit((v4 + 189), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x1CCA63990](v4 + 189);
    if ((*(v4 + 191) & 1) == 0)
    {
      do
      {
LABEL_5:
        v29 = 0x7FF0000000000000;
        v30 = 0;
        WTF::Condition::waitUntilUnchecked<WTF::Lock>(v4 + 190, (v4 + 189), &v29);
      }

      while (*(v4 + 191) != 1);
    }
  }

  else if ((*(v4 + 191) & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v4 + 80);
  *(v4 + 80) = 0;
  if (!v7)
  {
    goto LABEL_9;
  }

  if (v7[2] != 1)
  {
    --v7[2];
LABEL_9:
    v8 = 1;
    atomic_compare_exchange_strong_explicit(v6, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_10;
    }

LABEL_23:
    WTF::Lock::unlockSlow((v4 + 189));
    WebCore::StorageMap::clear((this + 24));
    result = *(this + 5);
    if (a2)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  (*(*v7 + 8))(v7);
  v19 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    goto LABEL_23;
  }

LABEL_10:
  WebCore::StorageMap::clear((this + 24));
  result = *(this + 5);
  if (a2)
  {
LABEL_11:
    if (!result)
    {
      v12 = *(this + 6);
      if (v12)
      {
        ++*v12;
        v27 = this;
        v28 = v12;
        ++*(this + 2);
        WebCore::SecurityOriginData::databaseIdentifier(&v26, (*(this + 2) + 8));
        v13 = WTF::fastMalloc(0xC0);
        v14 = WebKit::StorageAreaSync::StorageAreaSync(v13, &v28, &v27);
        v16 = *(this + 5);
        *(this + 5) = v14;
        if (v16)
        {
          if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v16);
            v24 = WTF::fastMalloc(0x10);
            *v24 = &unk_1F472A8F0;
            v24[1] = v16;
            v29 = v24;
            WTF::ensureOnMainThread();
            v25 = v29;
            v29 = 0;
            if (v25)
            {
              (*(*v25 + 8))(v25);
            }
          }
        }

        v17 = v26;
        v26 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v15);
        }

        v18 = v27;
        v27 = 0;
        if (v18)
        {
          if (*(v18 + 2) == 1)
          {
            (*(*v18 + 8))(v18);
          }

          else
          {
            --*(v18 + 2);
          }
        }

        result = v28;
        v28 = 0;
        if (result)
        {
          if (*result == 1)
          {
            WebCore::StorageSyncManager::~StorageSyncManager(result, v15);
            return WTF::fastFree(v22, v23);
          }

          else
          {
            --*result;
          }
        }
      }
    }

    return result;
  }

LABEL_24:
  if (result)
  {
    result = WebKit::StorageAreaSync::scheduleFinalSync(result, v9, v10);
    v20 = *(this + 5);
    *(this + 5) = 0;
    if (v20)
    {
      if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v20);
        v21 = WTF::fastMalloc(0x10);
        *v21 = &unk_1F472A8F0;
        v21[1] = v20;
        v29 = v21;
        WTF::ensureOnMainThread();
        result = v29;
        v29 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }
      }
    }
  }

  return result;
}

void WebCore::SecurityOrigin::~SecurityOrigin(WebCore::SecurityOrigin *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (*(this + 32))
  {
    goto LABEL_8;
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
    *(this + 32) = -1;
  }

  else
  {
LABEL_8:
    *(this + 32) = -1;
  }
}

WebKit::StorageAreaSync *WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCounted<WebKit::StorageAreaSync,(WTF::DestructionThread)1>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1, WTF::StringImpl *a2)
{
  result = *(a1 + 8);
  if (result)
  {
    WebKit::StorageAreaSync::~StorageAreaSync(result, a2);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::StorageAreaImpl,WebKit::StorageAreaImpl>(WebKit::StorageAreaImpl &,void (WebKit::StorageAreaImpl::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  ++v2[2];
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    result = (*(*v4 + v1))();
    v6 = v2[2] - 1;
    if (v2[2] != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = v1(v4);
    v6 = v2[2] - 1;
    if (v2[2] != 1)
    {
LABEL_3:
      v2[2] = v6;
      return result;
    }
  }

  v7 = *(*v2 + 8);

  return v7(v2);
}

void WebKit::StorageAreaSync::~StorageAreaSync(WebKit::StorageAreaSync *this, WTF::StringImpl *a2)
{
  v3 = *(this + 22);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = *(this + 22);
      do
      {
        if (*v5 != -1)
        {
          v6 = v5[1];
          v5[1] = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, a2);
          }

          v7 = *v5;
          *v5 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, a2);
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v8 = *(this + 20);
  *(this + 20) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  MEMORY[0x1CCA64F20](this + 96);
  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10)
  {
    if (*v10 == 1)
    {
      WebCore::StorageSyncManager::~StorageSyncManager(v10, v9);
      WTF::fastFree(v12, v13);
      v11 = *(this + 10);
      *(this + 10) = 0;
      if (!v11)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    --*v10;
  }

  v11 = *(this + 10);
  *(this + 10) = 0;
  if (!v11)
  {
LABEL_24:
    v14 = *(this + 8);
    if (!v14)
    {
      goto LABEL_25;
    }

LABEL_29:
    v17 = *(v14 - 1);
    if (v17)
    {
      v18 = v14;
      do
      {
        if (*v18 != -1)
        {
          v19 = v18[1];
          v18[1] = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v9);
          }

          v20 = *v18;
          *v18 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v9);
          }
        }

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    WTF::fastFree((v14 - 2), v9);
    v15 = (this + 8);
    *(this + 1) = &unk_1F472A8C8;
    v16 = *(this + 7);
    *(this + 7) = 0;
    if (v16)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

LABEL_22:
  if (v11[2] != 1)
  {
    --v11[2];
    goto LABEL_24;
  }

  (*(*v11 + 8))(v11);
  v14 = *(this + 8);
  if (v14)
  {
    goto LABEL_29;
  }

LABEL_25:
  v15 = (this + 8);
  *(this + 1) = &unk_1F472A8C8;
  v16 = *(this + 7);
  *(this + 7) = 0;
  if (v16)
  {
LABEL_26:
    (*(*v16 + 8))(v16);
  }

LABEL_27:
  WebCore::TimerBase::~TimerBase(v15);
}

void *WebKit::StorageAreaSync::scheduleFinalSync(atomic_uchar *this, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  if (*(this + 10))
  {
    v4 = 0;
    v5 = this + 189;
    atomic_compare_exchange_strong_explicit(this + 189, &v4, 1u, memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      MEMORY[0x1CCA63990](this + 189);
      if (this[191])
      {
        goto LABEL_5;
      }
    }

    else if (this[191])
    {
      goto LABEL_5;
    }

    do
    {
      v14 = 0x7FF0000000000000;
      v15 = 0;
      WTF::Condition::waitUntilUnchecked<WTF::Lock>((this + 190), this + 189, &v14);
    }

    while (this[191] != 1);
LABEL_5:
    v6 = *(this + 10);
    *(this + 10) = 0;
    if (v6)
    {
      if (v6[2] == 1)
      {
        (*(*v6 + 8))(v6);
        v12 = 1;
        atomic_compare_exchange_strong_explicit(v5, &v12, 0, memory_order_release, memory_order_relaxed);
        if (v12 == 1)
        {
LABEL_9:
          v8 = *(this + 10);
          *(this + 10) = 0;
          if (!v8)
          {
            goto LABEL_13;
          }

          goto LABEL_10;
        }

LABEL_24:
        WTF::Lock::unlockSlow((this + 189));
        v8 = *(this + 10);
        *(this + 10) = 0;
        if (!v8)
        {
          goto LABEL_13;
        }

LABEL_10:
        if (v8[2] == 1)
        {
          (*(*v8 + 8))(v8);
        }

        else
        {
          --v8[2];
        }

        goto LABEL_13;
      }

      --v6[2];
    }

    v7 = 1;
    atomic_compare_exchange_strong_explicit(v5, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_13:
  if ((*(this + 5) & 0xFFFFFFFFFFFFLL) != 0 && *((*(this + 5) & 0xFFFFFFFFFFFFLL) + 8) != 0.0)
  {
    WebCore::TimerBase::stopSlowCase((this + 8));
  }

  this[73] = 1;
  WebKit::StorageAreaSync::syncTimerFired(this, a2, a3);
  atomic_fetch_add(this, 1u);
  v9 = *(this + 11);
  atomic_fetch_add(this, 1u);
  result = WTF::fastMalloc(0x10);
  v11 = &unk_1F472A968;
  *result = &unk_1F472A968;
  result[1] = this;
  v14 = result;
  if (*(v9 + 8))
  {
    WebCore::StorageThread::dispatch(*(v9 + 8), &v14);
    result = v14;
    v14 = 0;
    if (!result)
    {
      goto LABEL_21;
    }

    v11 = *result;
  }

  else
  {
    v14 = 0;
  }

  result = v11[1](result);
LABEL_21:
  if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this);
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F472A8F0;
    v13[1] = this;
    v14 = v13;
    WTF::ensureOnMainThread();
    result = v14;
    v14 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WebKit::StorageAreaSync::syncTimerFired(uint64_t this, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = this;
  v4 = 0;
  v5 = (this + 168);
  atomic_compare_exchange_strong_explicit((this + 168), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    this = MEMORY[0x1CCA63990](this + 168);
    if (*(v3 + 186) != 1)
    {
      goto LABEL_4;
    }
  }

  else if (*(this + 186) != 1)
  {
    goto LABEL_4;
  }

  if ((*(v3 + 73) & 1) == 0)
  {
    this = WebCore::TimerBase::start();
    v11 = 0;
    v12 = 0;
    goto LABEL_104;
  }

LABEL_4:
  if (*(v3 + 72) == 1)
  {
    v6 = *(v3 + 176);
    if (v6)
    {
      *(v3 + 176) = 0;
      v7 = *(v6 - 1);
      if (v7)
      {
        v8 = v6;
        do
        {
          if (*v8 != -1)
          {
            v9 = v8[1];
            v8[1] = 0;
            if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v9, a2);
            }

            v10 = *v8;
            *v8 = 0;
            if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v10, a2);
            }
          }

          v8 += 2;
          --v7;
        }

        while (v7);
      }

      this = WTF::fastFree((v6 - 2), a2);
    }

    *(v3 + 184) = 1;
    *(v3 + 72) = 0;
  }

  v14 = (v3 + 64);
  v13 = *(v3 + 64);
  if (!v13)
  {
    v16 = 0;
    v15 = 0;
    goto LABEL_29;
  }

  v15 = *(v13 - 4);
  v16 = (v13 + 16 * v15);
  if (!*(v13 - 12))
  {
LABEL_29:
    v18 = v16;
    v16 = (v13 + 16 * v15);
    if (v13)
    {
      goto LABEL_26;
    }

    v19 = 0;
    if (v18)
    {
      goto LABEL_33;
    }

    goto LABEL_46;
  }

  if (v15)
  {
    v17 = 16 * v15;
    v18 = *(v3 + 64);
    while ((*v18 + 1) <= 1)
    {
      v18 += 2;
      v17 -= 16;
      if (!v17)
      {
        v18 = v16;
        break;
      }
    }

LABEL_26:
    v19 = (v13 + 16 * *(v13 - 4));
    if (v18 == v19)
    {
      goto LABEL_46;
    }

LABEL_33:
    v20 = 0;
    while (v20 < 0x64 || *(v3 + 73) == 1)
    {
      WTF::String::isolatedCopy();
      WTF::String::isolatedCopy();
      WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String,WTF::String>(v53, (v3 + 176), &v55, &v54);
      v21 = v54;
      v54 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, a2);
      }

      this = v55;
      v55 = 0;
      if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        this = WTF::StringImpl::destroy(this, a2);
      }

      do
      {
        v18 += 2;
      }

      while (v18 != v16 && (*v18 + 1) <= 1);
      ++v20;
      if (v18 == v19)
      {
        goto LABEL_46;
      }
    }

    v22 = *(v3 + 176);
    if (v22)
    {
      v23 = *(v22 - 4);
      v24 = (v22 + 16 * v23);
      if (*(v22 - 12))
      {
        if (!v23)
        {
          goto LABEL_97;
        }

        v25 = 16 * v23;
        v26 = *(v3 + 176);
        while (*v26 + 1 <= 1)
        {
          v26 += 2;
          v25 -= 16;
          if (!v25)
          {
            v26 = v24;
            break;
          }
        }

LABEL_57:
        if (v22)
        {
          v27 = (v22 + 16 * *(v22 - 4));
          if (v26 == v27)
          {
            goto LABEL_97;
          }
        }

        else
        {
          v27 = 0;
          if (!v26)
          {
            goto LABEL_97;
          }
        }

        v28 = *v14;
        if (*v14)
        {
LABEL_66:
          v29 = *v26;
          if (*v26 == -1 || !v29)
          {
            __break(0xC471u);
            JUMPOUT(0x1C79D7BC0);
          }

          v30 = *(v28 - 8);
          v31 = *(v29 + 4);
          if (v31 < 0x100)
          {
            v32 = WTF::StringImpl::hashSlowCase(v29);
          }

          else
          {
            v32 = v31 >> 8;
          }

          for (i = 0; ; v32 = i + v34)
          {
            v34 = v32 & v30;
            this = *(v28 + 16 * v34);
            if (this != -1)
            {
              if (!this)
              {
                goto LABEL_94;
              }

              this = WTF::equal(this, *v26, a3);
              if (this)
              {
                break;
              }
            }

            ++i;
          }

          v35 = v28 + 16 * v34;
          v36 = *v14;
          if (*v14)
          {
            v37 = *(v36 - 4);
            if (v36 + 16 * v37 == v35)
            {
              goto LABEL_94;
            }

            v36 += 16 * v37;
          }

          if (v36 != v35)
          {
            v38 = *v35;
            *v35 = -1;
            if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v38, a2);
            }

            this = *(v35 + 8);
            *(v35 + 8) = 0;
            if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              this = WTF::StringImpl::destroy(this, a2);
            }

            v39 = *v14;
            v40 = vadd_s32(*(*v14 - 16), 0xFFFFFFFF00000001);
            *(v39 - 16) = v40;
            v41 = *(v39 - 4);
            if (6 * v40.i32[1] < v41 && v41 >= 9)
            {
              this = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash((v3 + 64), v41 >> 1, 0);
            }
          }

          while (1)
          {
            do
            {
LABEL_94:
              v26 += 2;
            }

            while (v26 != v24 && *v26 + 1 <= 1);
            if (v26 == v27)
            {
              break;
            }

            v28 = *v14;
            if (*v14)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_97:
        v12 = 1;
        v11 = 1;
        if (*(v3 + 185))
        {
          goto LABEL_104;
        }

        goto LABEL_98;
      }
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v26 = v24;
    v24 = (v22 + 16 * v23);
    goto LABEL_57;
  }

LABEL_46:
  v12 = 0;
  v11 = 1;
  if (*(v3 + 185))
  {
    goto LABEL_104;
  }

LABEL_98:
  *(v3 + 185) = 1;
  atomic_fetch_add(v3, 1u);
  v43 = *(v3 + 88);
  atomic_fetch_add(v3, 1u);
  v44 = WTF::fastMalloc(0x10);
  v45 = &unk_1F472A990;
  *v44 = &unk_1F472A990;
  v44[1] = v3;
  v53[0] = v44;
  if (!*(v43 + 8))
  {
    v53[0] = 0;
    goto LABEL_102;
  }

  WebCore::StorageThread::dispatch(*(v43 + 8), v53);
  this = v53[0];
  v53[0] = 0;
  if (this)
  {
    v45 = *this;
LABEL_102:
    this = v45[1]();
  }

  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    v52 = WTF::fastMalloc(0x10);
    *v52 = &unk_1F472A8F0;
    v52[1] = v3;
    v53[0] = v52;
    WTF::ensureOnMainThread();
    this = v53[0];
    v53[0] = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }
  }

LABEL_104:
  v46 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v46, 0, memory_order_release, memory_order_relaxed);
  if (v46 == 1)
  {
    if (!v11)
    {
      return this;
    }
  }

  else
  {
    this = WTF::Lock::unlockSlow(v5);
    if (!v11)
    {
      return this;
    }
  }

  if (v12)
  {
    return WebCore::TimerBase::start();
  }

  v47 = *(v3 + 64);
  if (v47)
  {
    *(v3 + 64) = 0;
    v48 = *(v47 - 1);
    if (v48)
    {
      v49 = v47;
      do
      {
        if (*v49 != -1)
        {
          v50 = v49[1];
          v49[1] = 0;
          if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v50, a2);
          }

          v51 = *v49;
          *v49 = 0;
          if (v51)
          {
            if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v51, a2);
            }
          }
        }

        v49 += 2;
        --v48;
      }

      while (v48);
    }

    return WTF::fastFree((v47 - 2), a2);
  }

  return this;
}

uint64_t WebKit::StorageAreaSync::scheduleClear(uint64_t this, WTF::StringImpl *a2)
{
  v2 = this;
  v3 = *(this + 64);
  if (v3)
  {
    *(this + 64) = 0;
    v4 = *(v3 - 1);
    if (v4)
    {
      v5 = v3;
      do
      {
        if (*v5 != -1)
        {
          v6 = v5[1];
          v5[1] = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, a2);
          }

          v7 = *v5;
          *v5 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, a2);
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    this = WTF::fastFree((v3 - 2), a2);
  }

  *(v2 + 72) = 1;
  if ((*(v2 + 40) & 0xFFFFFFFFFFFFLL) == 0 || *((*(v2 + 40) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
  {

    return WebCore::TimerBase::start();
  }

  return this;
}

uint64_t WebKit::StorageAreaSync::openDatabase(uint64_t a1, int a2)
{
  WebCore::SQLiteDatabaseTracker::incrementTransactionInProgressCount(a1);
  WebCore::StorageSyncManager::fullDatabaseFilename(*(a1 + 88), (a1 + 160), &v35);
  v5 = WTF::FileSystemImpl::fileExists(&v35, v4);
  if (a2 != 1 || v5)
  {
    if (!v35 || !*(v35 + 1))
    {
      goto LABEL_31;
    }

    v9.n128_f64[0] = WebKit::StorageTracker::tracker(v5, v6);
    if (v7[128] != 1)
    {
      goto LABEL_13;
    }

    v10 = 0;
    atomic_compare_exchange_strong_explicit(v7, &v10, 1u, memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      v30 = v7;
      MEMORY[0x1CCA63990](v9.n128_f64[0]);
      v7 = v30;
      v31 = 0;
      v12 = v30 + 96;
      atomic_compare_exchange_strong_explicit(v12, &v31, 1u, memory_order_acquire, memory_order_acquire);
      if (!v31)
      {
LABEL_8:
        v13 = (v7 + 112);
        v14 = *(v7 + 14);
        if (!v14)
        {
          goto LABEL_11;
        }

LABEL_9:
        if (*(v14 - 12))
        {
          v15 = v7;
          WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(v13, (a1 + 160), v8);
          v7 = v15;
        }

LABEL_11:
        v16 = 1;
        v17 = 1;
        atomic_compare_exchange_strong_explicit(v12, &v17, 0, memory_order_release, memory_order_relaxed);
        if (v17 == 1)
        {
          atomic_compare_exchange_strong_explicit(v7, &v16, 0, memory_order_release, memory_order_relaxed);
          if (v16 == 1)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v32 = v7;
          WTF::Lock::unlockSlow(v12);
          v33 = 1;
          v7 = v32;
          atomic_compare_exchange_strong_explicit(v32, &v33, 0, memory_order_release, memory_order_relaxed);
          if (v33 == 1)
          {
LABEL_13:
            if ((WebCore::SQLiteDatabase::open() & 1) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_14;
          }
        }

        WTF::Lock::unlockSlow(v7);
        if ((WebCore::SQLiteDatabase::open() & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_14:
        if (!WebCore::SQLiteDatabase::tableExists())
        {
          goto LABEL_27;
        }

        WebCore::SQLiteDatabase::prepareStatement();
        if (v39 || (v18 = 0, (WebCore::SQLiteStatement::isColumnDeclaredAsBlob(v38) & 1) == 0))
        {
          v18 = 1;
          if (v39)
          {
LABEL_18:
            if (v18)
            {
LABEL_19:
              WebCore::SQLiteTransaction::SQLiteTransaction(v38, (a1 + 96));
              WebCore::SQLiteTransaction::begin(v38);
              if (WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand())
              {
                WebCore::SQLiteTransaction::commit(v38);
              }

              else
              {
                WebCore::SQLiteTransaction::rollback(v38);
                WebCore::SQLiteDatabase::executeCommand();
              }

              MEMORY[0x1CCA65F70](v38);
              v19 = WebCore::SQLiteDatabase::executeCommand();
              if ((v19 & 1) == 0)
              {
LABEL_31:
                v21 = 0;
                v22 = (a1 + 189);
                atomic_compare_exchange_strong_explicit((a1 + 189), &v21, 1u, memory_order_acquire, memory_order_acquire);
                if (v21)
                {
                  MEMORY[0x1CCA63990](a1 + 189);
                  *(a1 + 191) = 1;
                  v23 = a1 + 190;
                  v26 = atomic_load((a1 + 190));
                  if (v26)
                  {
LABEL_33:
                    v37 = 0;
                    v36[0] = v23;
                    v36[1] = &v37;
                    v38[0] = WTF::ScopedLambdaRefFunctor<long ()(WTF::ParkingLot::UnparkResult),WTF::Condition::notifyOne(void)::{lambda(WTF::ParkingLot::UnparkResult)#1}>::implFunction;
                    v38[1] = v38;
                    v38[2] = v36;
                    WTF::ParkingLot::unparkOneImpl();
                    v25 = 1;
                    atomic_compare_exchange_strong_explicit(v22, &v25, 0, memory_order_release, memory_order_relaxed);
                    if (v25 == 1)
                    {
LABEL_37:
                      *(a1 + 187) = 1;
                      goto LABEL_38;
                    }

LABEL_34:
                    WTF::Lock::unlockSlow((a1 + 189));
                    goto LABEL_37;
                  }
                }

                else
                {
                  *(a1 + 191) = 1;
                  v23 = a1 + 190;
                  v24 = atomic_load((a1 + 190));
                  if (v24)
                  {
                    goto LABEL_33;
                  }
                }

                v27 = 1;
                atomic_compare_exchange_strong_explicit(v22, &v27, 0, memory_order_release, memory_order_relaxed);
                if (v27 == 1)
                {
                  goto LABEL_37;
                }

                goto LABEL_34;
              }

              goto LABEL_28;
            }

LABEL_27:
            v19 = WebCore::SQLiteDatabase::executeCommand();
            if ((v19 & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_28:
            WebKit::StorageTracker::tracker(v19, v6);
            WebKit::StorageTracker::setOriginDetails(v20, (a1 + 160), &v35);
            goto LABEL_38;
          }
        }

        else if (v39)
        {
          goto LABEL_18;
        }

        WebCore::SQLiteStatement::~SQLiteStatement(v38);
        if (v18)
        {
          goto LABEL_19;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v11 = 0;
      v12 = v7 + 96;
      atomic_compare_exchange_strong_explicit(v7 + 96, &v11, 1u, memory_order_acquire, memory_order_acquire);
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    v34 = v7;
    MEMORY[0x1CCA63990](v12, v9);
    v7 = v34;
    v13 = (v34 + 112);
    v14 = *(v34 + 14);
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_38:
  v28 = v35;
  v35 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v28 = WTF::StringImpl::destroy(v28, v6);
  }

  return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v28);
}

void *WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[2 * v1];
  if (!*(result - 3))
  {
    return &result[2 * v1];
  }

  if (v1)
  {
    v3 = 16 * v1;
    while ((*result + 1) <= 1)
    {
      result += 2;
      v3 -= 16;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t WebKit::StorageAreaSync::StorageAreaSync(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 1;
  WebCore::TimerBase::TimerBase((a1 + 8));
  *(a1 + 8) = &unk_1F472A8C8;
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F472A918;
  v6[1] = a1;
  v6[2] = WebKit::StorageAreaSync::syncTimerFired;
  v6[3] = 0;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = *a3;
  *a3 = 0;
  *(a1 + 80) = v7;
  v8 = *a2;
  *a2 = 0;
  *(a1 + 88) = v8;
  WebCore::SQLiteDatabase::SQLiteDatabase((a1 + 96));
  WTF::String::isolatedCopy();
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  atomic_fetch_add(a1, 1u);
  v9 = *(a1 + 88);
  atomic_fetch_add(a1, 1u);
  v10 = WTF::fastMalloc(0x10);
  v11 = &unk_1F472A940;
  *v10 = &unk_1F472A940;
  v10[1] = a1;
  v16 = v10;
  if (!*(v9 + 8))
  {
    v16 = 0;
    goto LABEL_5;
  }

  WebCore::StorageThread::dispatch(*(v9 + 8), &v16);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    v11 = *v12;
LABEL_5:
    v11[1]();
  }

  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a1);
    v14 = WTF::fastMalloc(0x10);
    *v14 = &unk_1F472A8F0;
    v14[1] = a1;
    v16 = v14;
    WTF::ensureOnMainThread();
    v15 = v16;
    v16 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::StorageAreaSync,WebKit::StorageAreaSync>(WebKit::StorageAreaSync &,void (WebKit::StorageAreaSync::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  atomic_fetch_add(v1, 1u);
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    result = (*(*v4 + v2))();
    if (!v1)
    {
      return result;
    }
  }

  else
  {
    result = v2(v4);
    if (!v1)
    {
      return result;
    }
  }

  if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1);
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F472A8F0;
    v6[1] = v1;
    v7 = v6;
    WTF::ensureOnMainThread();
    result = v7;
    if (v7)
    {
      return (*(*v7 + 8))(v7);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::StorageAreaSync(WTF::RefPtr<WebCore::StorageSyncManager,WTF::RawPtrTraits<WebCore::StorageSyncManager>,WTF::DefaultRefDerefTraits<WebCore::StorageSyncManager>> &&,WTF::Ref<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>> &&,WTF::String const&)::{lambda(void)#1},void>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_1F472A940;
  result[1] = 0;
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    atomic_store(1u, v1);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F472A8F0;
    v3[1] = v1;
    v4 = v3;
    WTF::ensureOnMainThread();
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::StorageAreaSync(WTF::RefPtr<WebCore::StorageSyncManager,WTF::RawPtrTraits<WebCore::StorageSyncManager>,WTF::DefaultRefDerefTraits<WebCore::StorageSyncManager>> &&,WTF::Ref<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>> &&,WTF::String const&)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_1F472A940;
  *(a1 + 1) = 0;
  if (!v2 || atomic_fetch_add(v2, 0xFFFFFFFF) != 1)
  {
    return WTF::fastFree(a1, a2);
  }

  atomic_store(1u, v2);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F472A8F0;
  v5[1] = v2;
  v7 = v5;
  WTF::ensureOnMainThread();
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return WTF::fastFree(a1, v6);
}

void WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::StorageAreaSync(WTF::RefPtr<WebCore::StorageSyncManager,WTF::RawPtrTraits<WebCore::StorageSyncManager>,WTF::DefaultRefDerefTraits<WebCore::StorageSyncManager>> &&,WTF::Ref<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>> &&,WTF::String const&)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = 1;
  WebKit::StorageAreaSync::openDatabase(v1, 1);
  v3 = *(v1 + 104);
  if (!v3)
  {
    v9 = (v1 + 189);
    atomic_compare_exchange_strong_explicit((v1 + 189), &v3, 1u, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      MEMORY[0x1CCA63990](v1 + 189);
      *(v1 + 191) = 1;
      v10 = (v1 + 190);
      v31 = atomic_load((v1 + 190));
      if ((v31 & 1) == 0)
      {
LABEL_9:
        atomic_compare_exchange_strong_explicit(v9, &v2, 0, memory_order_release, memory_order_relaxed);
        if (v2 == 1)
        {
          return;
        }

        goto LABEL_52;
      }
    }

    else
    {
      *(v1 + 191) = 1;
      v10 = (v1 + 190);
      v11 = atomic_load((v1 + 190));
      if ((v11 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    LOBYTE(v36) = 0;
    v38 = v10;
    v39 = &v36;
    v34[0] = WTF::ScopedLambdaRefFunctor<long ()(WTF::ParkingLot::UnparkResult),WTF::Condition::notifyOne(void)::{lambda(WTF::ParkingLot::UnparkResult)#1}>::implFunction;
    v34[1] = v34;
    v34[2] = &v38;
    WTF::ParkingLot::unparkOneImpl();
    atomic_compare_exchange_strong_explicit(v9, &v2, 0, memory_order_release, memory_order_relaxed);
    if (v2 == 1)
    {
      return;
    }

LABEL_52:
    WTF::Lock::unlockSlow((v1 + 189));
    return;
  }

  WebCore::SQLiteDatabase::prepareStatement();
  if (!v35)
  {
    v33 = 0;
    while (1)
    {
      v12 = WebCore::SQLiteStatement::step(v34);
      if (v12 != 100)
      {
        break;
      }

      if (!v35)
      {
        v12 = WebCore::SQLiteStatement::columnText(v34);
        if (!v35)
        {
          WebCore::SQLiteStatement::columnBlobAsString(v34);
          WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String,WTF::String>(&v38, &v33, &v36, &v32);
          v15 = v32;
          v32 = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v14);
          }

          v12 = v36;
          v36 = 0;
          if (v12)
          {
            if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v12 = WTF::StringImpl::destroy(v12, v14);
            }
          }

          if (!v35)
          {
            continue;
          }
        }
      }

      mpark::throw_bad_variant_access(v12);
    }

    if (v12 == 101)
    {
      WebCore::StorageMap::importItems();
      v26 = 0;
      v17 = (v1 + 189);
      atomic_compare_exchange_strong_explicit((v1 + 189), &v26, 1u, memory_order_acquire, memory_order_acquire);
      if (!v26)
      {
LABEL_24:
        *(v1 + 191) = 1;
        v18 = (v1 + 190);
        v19 = atomic_load((v1 + 190));
        if ((v19 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v16 = 0;
      v17 = (v1 + 189);
      atomic_compare_exchange_strong_explicit((v1 + 189), &v16, 1u, memory_order_acquire, memory_order_acquire);
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    MEMORY[0x1CCA63990](v17);
    *(v1 + 191) = 1;
    v18 = (v1 + 190);
    v27 = atomic_load((v1 + 190));
    if ((v27 & 1) == 0)
    {
LABEL_25:
      v20 = 1;
      atomic_compare_exchange_strong_explicit(v17, &v20, 0, memory_order_release, memory_order_relaxed);
      if (v20 == 1)
      {
        goto LABEL_26;
      }

      goto LABEL_42;
    }

LABEL_41:
    LOBYTE(v32) = 0;
    v36 = v18;
    v37 = &v32;
    v38 = WTF::ScopedLambdaRefFunctor<long ()(WTF::ParkingLot::UnparkResult),WTF::Condition::notifyOne(void)::{lambda(WTF::ParkingLot::UnparkResult)#1}>::implFunction;
    v39 = &v38;
    v40 = &v36;
    WTF::ParkingLot::unparkOneImpl();
    v28 = 1;
    atomic_compare_exchange_strong_explicit(v17, &v28, 0, memory_order_release, memory_order_relaxed);
    if (v28 == 1)
    {
LABEL_26:
      v21 = v33;
      if (!v33)
      {
        goto LABEL_46;
      }

      goto LABEL_27;
    }

LABEL_42:
    WTF::Lock::unlockSlow(v17);
    v21 = v33;
    if (!v33)
    {
      goto LABEL_46;
    }

LABEL_27:
    v22 = *(v21 - 4);
    if (v22)
    {
      v23 = v21;
      do
      {
        if (*v23 != -1)
        {
          v24 = v23[1];
          v23[1] = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v13);
          }

          v25 = *v23;
          *v23 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v13);
          }
        }

        v23 += 2;
        --v22;
      }

      while (v22);
    }

    WTF::fastFree((v21 - 16), v13);
    if (!v35)
    {
      goto LABEL_47;
    }

    return;
  }

  v4 = 0;
  v5 = (v1 + 189);
  atomic_compare_exchange_strong_explicit((v1 + 189), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (!v4)
  {
    *(v1 + 191) = 1;
    v6 = (v1 + 190);
    v7 = atomic_load((v1 + 190));
    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_45:
    LOBYTE(v33) = 0;
    v36 = v6;
    v37 = &v33;
    v38 = WTF::ScopedLambdaRefFunctor<long ()(WTF::ParkingLot::UnparkResult),WTF::Condition::notifyOne(void)::{lambda(WTF::ParkingLot::UnparkResult)#1}>::implFunction;
    v39 = &v38;
    v40 = &v36;
    WTF::ParkingLot::unparkOneImpl();
    v30 = 1;
    atomic_compare_exchange_strong_explicit(v5, &v30, 0, memory_order_release, memory_order_relaxed);
    if (v30 != 1)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  MEMORY[0x1CCA63990](v1 + 189);
  *(v1 + 191) = 1;
  v6 = (v1 + 190);
  v29 = atomic_load((v1 + 190));
  if (v29)
  {
    goto LABEL_45;
  }

LABEL_5:
  v8 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
LABEL_48:
    WTF::Lock::unlockSlow((v1 + 189));
    if (!v35)
    {
      goto LABEL_47;
    }

    return;
  }

LABEL_46:
  if (!v35)
  {
LABEL_47:
    WebCore::SQLiteStatement::~SQLiteStatement(v34);
  }
}

uint64_t WTF::ScopedLambdaRefFunctor<long ()(WTF::ParkingLot::UnparkResult),WTF::Condition::notifyOne(void)::{lambda(WTF::ParkingLot::UnparkResult)#1}>::implFunction(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 16);
  if ((a2 & 0x100) == 0)
  {
    atomic_store(0, *v2);
  }

  *v2[1] = a2 & 1;
  return 0;
}

uint64_t WTF::Condition::waitUntilUnchecked<WTF::Lock>(uint64_t a1, atomic_uchar *a2, WTF::TimeWithDynamicClockType *this)
{
  v16 = WTF::TimeWithDynamicClockType::nowWithSameClock(this);
  LODWORD(v17) = v5;
  if (WTF::operator<=>() != 0xFF)
  {
    v13 = a2;
    v14 = a1;
    v16 = WTF::ScopedLambdaRefFunctor<BOOL ()(void),BOOL WTF::Condition::waitUntilUnchecked<WTF::Lock>(WTF::Lock &,WTF::TimeWithDynamicClockType const&)::{lambda(void)#1}>::implFunction;
    v17 = &v16;
    v18 = &v14;
    v15[0] = WTF::ScopedLambdaRefFunctor<void ()(void),BOOL WTF::Condition::waitUntilUnchecked<WTF::Lock>(WTF::Lock &,WTF::TimeWithDynamicClockType const&)::{lambda(void)#2}>::implFunction;
    v15[1] = v15;
    v15[2] = &v13;
    v6 = WTF::ParkingLot::parkConditionallyImpl();
    v7 = 0;
    atomic_compare_exchange_strong_explicit(a2, &v7, 1u, memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      goto LABEL_8;
    }

    return v6 & 1;
  }

  v6 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(a2, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    v9 = 0;
    atomic_compare_exchange_strong_explicit(a2, &v9, 1u, memory_order_acquire, memory_order_acquire);
    if (!v9)
    {
      return v6 & 1;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(a2);
    v6 = 0;
    v11 = 0;
    atomic_compare_exchange_strong_explicit(a2, &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (!v11)
    {
      return v6 & 1;
    }
  }

LABEL_8:
  v12 = v6;
  MEMORY[0x1CCA63990](a2);
  return v12 & 1;
}

atomic_uchar *WTF::ScopedLambdaRefFunctor<void ()(void),BOOL WTF::Condition::waitUntilUnchecked<WTF::Lock>(WTF::Lock &,WTF::TimeWithDynamicClockType const&)::{lambda(void)#2}>::implFunction(uint64_t a1)
{
  result = **(a1 + 16);
  v2 = 1;
  atomic_compare_exchange_strong_explicit(result, &v2, 0, memory_order_release, memory_order_relaxed);
  if (v2 != 1)
  {
    return WTF::Lock::unlockSlow(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::scheduleFinalSync(void)::$_0,void>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_1F472A968;
  result[1] = 0;
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    atomic_store(1u, v1);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F472A8F0;
    v3[1] = v1;
    v4 = v3;
    WTF::ensureOnMainThread();
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::scheduleFinalSync(void)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_1F472A968;
  *(a1 + 1) = 0;
  if (!v2 || atomic_fetch_add(v2, 0xFFFFFFFF) != 1)
  {
    return WTF::fastFree(a1, a2);
  }

  atomic_store(1u, v2);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F472A8F0;
  v5[1] = v2;
  v7 = v5;
  WTF::ensureOnMainThread();
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return WTF::fastFree(a1, v6);
}

void WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::scheduleFinalSync(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!*(v1 + 104))
  {
    return;
  }

  WebCore::SQLiteDatabase::prepareStatement();
  if (v14)
  {
    return;
  }

  v2 = WebCore::SQLiteStatement::step(v13);
  if (v2 == 100)
  {
    if (v14)
    {
      mpark::throw_bad_variant_access(v2);
    }

    v3 = WebCore::SQLiteStatement::columnInt(v13) == 0;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  WebCore::SQLiteStatement::~SQLiteStatement(v13);
LABEL_10:
  if (v3)
  {
    v4 = WebCore::SQLiteDatabase::close((v1 + 96));
    WebKit::StorageTracker::tracker(v4, v5);
    if (*(v6 + 128) == 1)
    {
      WTF::String::isolatedCopy();
      v7 = WTF::fastMalloc(0x10);
      *v7 = &unk_1F472A9B8;
      v13[0] = v7;
      *(v7 + 1) = v12;
      WTF::callOnMainThread();
      v8 = v13[0];
      v13[0] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

    else
    {
      WebCore::StorageSyncManager::fullDatabaseFilename(*(v1 + 88), (v1 + 160), v13);
      WTF::FileSystemImpl::deleteFile(v13, v9);
      v11 = v13[0];
      v13[0] = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }
    }
  }
}

WTF::StringImpl **WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::String const&>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl *a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79D90F8);
  }

  v8 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, 8u, 0);
    v8 = *a1;
    if (!*a1)
    {
      v9 = 0;
      v10 = *a2;
      v11 = *(*a2 + 16);
      if (v11 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v12 = WTF::StringImpl::hashSlowCase(v10);
      goto LABEL_9;
    }
  }

  v9 = *(v8 - 8);
  v10 = *a2;
  v11 = *(*a2 + 16);
  if (v11 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = v11 >> 8;
LABEL_9:
  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v12 & v9;
    v16 = (v8 + 16 * (v12 & v9));
    v17 = *v16;
    if (*v16 == -1)
    {
      v13 = (v8 + 16 * v15);
      goto LABEL_11;
    }

    if (!v17)
    {
      if (v13)
      {
        v17 = 0;
        *v13 = 0;
        v13[1] = 0;
        --*(*a1 - 16);
        v16 = v13;
      }

      v22 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
        v17 = *v16;
      }

      *v16 = v22;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, a2);
      }

      v23 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      result = v16[1];
      v16[1] = v23;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      v24 = *a1;
      if (*a1)
      {
        v25 = *(v24 - 16);
        v26 = *(v24 - 12) + 1;
        *(v24 - 12) = v26;
        v27 = (v25 + v26);
        v28 = *(v24 - 4);
        if (v28 <= 0x400)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v26 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v27 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v28 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_37:
          if (3 * v28 > 4 * v27)
          {
LABEL_45:
            *a4 = v16;
            *(a4 + 8) = v24 + 16 * v28;
            *(a4 + 16) = 1;
            return result;
          }

          if (!v28)
          {
            result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, 8u, v16);
            v16 = result;
            v24 = *a1;
            if (!*a1)
            {
LABEL_40:
              v28 = 0;
              goto LABEL_45;
            }

LABEL_44:
            v28 = *(v24 - 4);
            goto LABEL_45;
          }

LABEL_43:
          result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v28 << (6 * v26 >= (2 * v28)), v16);
          v16 = result;
          v24 = *a1;
          if (!*a1)
          {
            goto LABEL_40;
          }

          goto LABEL_44;
        }
      }

      if (v28 > 2 * v27)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    if (WTF::equal(v17, *a2, a3))
    {
      break;
    }

LABEL_11:
    v12 = i + v15;
  }

  v18 = *a1;
  if (*a1)
  {
    v19 = *(v18 - 4);
    *a4 = v16;
    *(a4 + 8) = v18 + 16 * v19;
    *(a4 + 16) = 0;
    v20 = *a3;
    if (*a3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *a4 = v16;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    v20 = *a3;
    if (*a3)
    {
LABEL_17:
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }
  }

  result = v16[1];
  v16[1] = v20;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
            v19 = *(v14 + 4);
            if (v19 >= 0x100)
            {
              goto LABEL_19;
            }

LABEL_21:
            v20 = WTF::StringImpl::hashSlowCase(v14);
          }

          else
          {
            v18 = 0;
            v19 = *(v14 + 4);
            if (v19 < 0x100)
            {
              goto LABEL_21;
            }

LABEL_19:
            v20 = v19 >> 8;
          }

          v21 = 0;
          do
          {
            v22 = v20 & v18;
            v20 = ++v21 + v22;
          }

          while (*(v17 + 16 * v22));
          v23 = (v17 + 16 * v22);
          v24 = v23[1];
          v23[1] = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v10);
          }

          v25 = *v23;
          *v23 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v10);
          }

          v26 = *v13;
          *v13 = 0;
          *v23 = v26;
          v27 = v13[1];
          v13[1] = 0;
          v23[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v10);
          }

          v29 = *v13;
          *v13 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v10);
          }

          if (v13 == a3)
          {
            v12 = v23;
          }

          goto LABEL_8;
        }

        v15 = v13[1];
        v13[1] = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v10);
        }

        v16 = *v13;
        *v13 = 0;
        if (v16)
        {
          if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v10);
          }
        }
      }

LABEL_8:
      if (++v11 == v7)
      {
        goto LABEL_37;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v6)
  {
LABEL_37:
    WTF::fastFree((v6 - 16), v10);
    return v12;
  }

  return result;
}

WTF::StringImpl **WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String,WTF::String>(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3, WTF::StringImpl **a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79D95B8);
  }

  v8 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    v8 = *a2;
    if (!*a2)
    {
      v9 = 0;
      v10 = *a3;
      v11 = *(*a3 + 4);
      if (v11 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v12 = WTF::StringImpl::hashSlowCase(v10);
      goto LABEL_9;
    }
  }

  v9 = *(v8 - 8);
  v10 = *a3;
  v11 = *(*a3 + 4);
  if (v11 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = v11 >> 8;
LABEL_9:
  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v12 & v9;
    v16 = (v8 + 16 * (v12 & v9));
    v17 = *v16;
    if (*v16 == -1)
    {
      v13 = (v8 + 16 * v15);
      goto LABEL_11;
    }

    if (!v17)
    {
      if (v13)
      {
        *v13 = 0;
        v13[1] = 0;
        --*(*a2 - 16);
        v16 = v13;
      }

      v20 = *a3;
      *a3 = 0;
      v21 = *v16;
      *v16 = v20;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, a2);
      }

      v22 = *a4;
      *a4 = 0;
      result = v16[1];
      v16[1] = v22;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      v24 = *a2;
      if (*a2)
      {
        v25 = *(v24 - 16);
        v26 = *(v24 - 12) + 1;
        *(v24 - 12) = v26;
        v27 = (v25 + v26);
        v28 = *(v24 - 4);
        if (v28 <= 0x400)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v26 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v27 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v28 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_27:
          if (3 * v28 > 4 * v27)
          {
LABEL_35:
            *a1 = v16;
            *(a1 + 8) = v24 + 16 * v28;
            *(a1 + 16) = 1;
            return result;
          }

          if (!v28)
          {
            result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, v16);
            v16 = result;
            v24 = *a2;
            if (!*a2)
            {
LABEL_30:
              v28 = 0;
              goto LABEL_35;
            }

LABEL_34:
            v28 = *(v24 - 4);
            goto LABEL_35;
          }

LABEL_33:
          result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, v28 << (6 * v26 >= (2 * v28)), v16);
          v16 = result;
          v24 = *a2;
          if (!*a2)
          {
            goto LABEL_30;
          }

          goto LABEL_34;
        }
      }

      if (v28 > 2 * v27)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (WTF::equal(v17, *a3, a3))
    {
      break;
    }

LABEL_11:
    v12 = i + v15;
  }

  v18 = *a2;
  if (*a2)
  {
    v19 = *(v18 - 4);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v16;
  *(a1 + 8) = v18 + 16 * v19;
  *(a1 + 16) = 0;
  v29 = *a4;
  *a4 = 0;
  result = v16[1];
  v16[1] = v29;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::syncTimerFired(void)::$_0,void>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_1F472A990;
  result[1] = 0;
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    atomic_store(1u, v1);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F472A8F0;
    v3[1] = v1;
    v4 = v3;
    WTF::ensureOnMainThread();
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::syncTimerFired(void)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_1F472A990;
  *(a1 + 1) = 0;
  if (!v2 || atomic_fetch_add(v2, 0xFFFFFFFF) != 1)
  {
    return WTF::fastFree(a1, a2);
  }

  atomic_store(1u, v2);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F472A8F0;
  v5[1] = v2;
  v7 = v5;
  WTF::ensureOnMainThread();
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return WTF::fastFree(a1, v6);
}

WebCore::SQLiteDatabaseTracker *WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::syncTimerFired(void)::$_0,void>::call(WebCore::SQLiteDatabaseTracker *result, WTF::StringImpl *a2)
{
  v3 = 0;
  v4 = *(result + 1);
  v5 = (v4 + 168);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((v4 + 168), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    result = MEMORY[0x1CCA63990](v4 + 168);
  }

  v7 = *(v4 + 184);
  v8 = *(v4 + 176);
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 185) = 256;
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (!v8)
    {
LABEL_8:
      if ((v7 & 1) == 0 && *(v4 + 188) != 1)
      {
        goto LABEL_53;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = WTF::Lock::unlockSlow((v4 + 168));
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  if (!*(v8 - 3))
  {
    goto LABEL_8;
  }

LABEL_10:
  if (*(v4 + 187))
  {
    goto LABEL_53;
  }

  if (*(v4 + 104))
  {
    goto LABEL_12;
  }

  if (*(v4 + 188) == 1)
  {
    *(v4 + 188) = 0;
    goto LABEL_53;
  }

  result = WebKit::StorageAreaSync::openDatabase(v4, 0);
  if (*(v4 + 104))
  {
LABEL_12:
    if (*(v4 + 188) == 1)
    {
      *(v4 + 188) = 0;
      result = WebCore::SQLiteDatabase::close((v4 + 96));
    }

    else
    {
      WebCore::SQLiteDatabaseTracker::incrementTransactionInProgressCount(result);
      if (!v7)
      {
        goto LABEL_74;
      }

      v9 = WebCore::SQLiteDatabase::prepareStatement();
      if (!v30)
      {
        v9 = WebCore::SQLiteStatement::step(v29);
        v10 = v9;
        if (!v30)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v29);
        }

        if (v10 == 101)
        {
LABEL_74:
          v9 = WebCore::SQLiteDatabase::prepareStatement();
          if (!v30)
          {
            v9 = WebCore::SQLiteDatabase::prepareStatement();
            if (!v28)
            {
              if (v8)
              {
                v11 = &v8[2 * *(v8 - 1)];
              }

              else
              {
                v11 = 0;
              }

              WebCore::SQLiteTransaction::SQLiteTransaction(v26, (v4 + 96));
              WebCore::SQLiteTransaction::begin(v26);
              v12 = WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::begin(v8);
              if (v11 != v12)
              {
                v14 = v12;
                v15 = v13;
                do
                {
                  if (*(v14 + 1))
                  {
                    v16 = v29;
                  }

                  else
                  {
                    v16 = v27;
                  }

                  if (*(v16 + 24))
                  {
                    goto LABEL_71;
                  }

                  v17 = *v14;
                  if (*v14)
                  {
                    v18 = *(v17 + 16);
                    v17 = *(v17 + 4);
                    v19 = ((v18 >> 2) & 1) << 32;
                  }

                  else
                  {
                    v19 = 0x100000000;
                  }

                  v2 = v17 | v2 & 0xFFFFFF0000000000 | v19;
                  v12 = WebCore::SQLiteStatement::bindText();
                  if (*(v14 + 1))
                  {
                    if (*(v16 + 24))
                    {
                      goto LABEL_71;
                    }

                    v12 = WebCore::SQLiteStatement::bindBlob(v16, 2, (v14 + 8));
                  }

                  if (*(v16 + 24))
                  {
                    goto LABEL_71;
                  }

                  v12 = WebCore::SQLiteStatement::step(v16);
                  if (v12 != 101)
                  {
                    break;
                  }

                  if (*(v16 + 24))
                  {
LABEL_71:
                    mpark::throw_bad_variant_access(v12);
                  }

                  v12 = WebCore::SQLiteStatement::reset(v16);
                  do
                  {
                    v14 = (v14 + 16);
                  }

                  while (v14 != v15 && (*v14 + 1) <= 1);
                }

                while (v14 != v11);
              }

              WebCore::SQLiteTransaction::commit(v26);
              v9 = MEMORY[0x1CCA65F70](v26);
              if (!v28)
              {
                WebCore::SQLiteStatement::~SQLiteStatement(v27);
              }
            }

            if (!v30)
            {
              WebCore::SQLiteStatement::~SQLiteStatement(v29);
            }
          }
        }
      }

      result = WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v9);
    }
  }

LABEL_53:
  v20 = 0;
  v21 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v20, 1u, memory_order_acquire, memory_order_acquire);
  if (!v20)
  {
    *(v4 + 186) = 0;
    atomic_compare_exchange_strong_explicit((v4 + 168), &v21, 0, memory_order_release, memory_order_relaxed);
    if (v21 == 1)
    {
      goto LABEL_55;
    }

LABEL_69:
    result = WTF::Lock::unlockSlow((v4 + 168));
    if (!v8)
    {
      return result;
    }

    goto LABEL_56;
  }

  result = MEMORY[0x1CCA63990](v4 + 168);
  *(v4 + 186) = 0;
  atomic_compare_exchange_strong_explicit((v4 + 168), &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != 1)
  {
    goto LABEL_69;
  }

LABEL_55:
  if (!v8)
  {
    return result;
  }

LABEL_56:
  v22 = *(v8 - 1);
  if (v22)
  {
    v23 = v8;
    do
    {
      if (*v23 != -1)
      {
        v24 = v23[1];
        v23[1] = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, a2);
        }

        v25 = *v23;
        *v23 = 0;
        if (v25)
        {
          if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, a2);
          }
        }
      }

      v23 += 2;
      --v22;
    }

    while (v22);
  }

  return WTF::fastFree((v8 - 2), a2);
}

void *WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::deleteEmptyDatabase(void)::$_1,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  v2 = result[1];
  *result = &unk_1F472A9B8;
  result[1] = 0;
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = result;
      WTF::StringImpl::destroy(v2, a2);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::deleteEmptyDatabase(void)::$_1,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_1F472A9B8;
  *(a1 + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v4 = a1;
    WTF::StringImpl::destroy(v3, a2);
    a1 = v4;
  }

  return WTF::fastFree(a1, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::StorageAreaSync::deleteEmptyDatabase(void)::$_1,void>::call(uint64_t a1, void *a2)
{
  WebKit::StorageTracker::tracker(a1, a2);

  return WebKit::StorageTracker::deleteOriginWithIdentifier(v3, (a1 + 8));
}

unsigned int *WebKit::StorageNamespaceImpl::getOrCreateLocalStorageNamespace@<X0>(const WTF::StringImpl **this@<X0>, const WTF::String *a2@<X1>, SessionID a3@<0:X3>, const WTF::StringImpl *a4@<X2>, uint64_t *a5@<X8>)
{
  v6 = a2;
  if (_MergedGlobals_6)
  {
    v9 = *this;
    if (*this == -1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    qword_1ED6A60B8 = 0;
    _MergedGlobals_6 = 1;
    v9 = *this;
    if (*this == -1)
    {
      goto LABEL_46;
    }
  }

  if (!v9)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79D9F64);
  }

  v10 = qword_1ED6A60B8;
  if (!qword_1ED6A60B8)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(8u);
    v10 = qword_1ED6A60B8;
    if (!qword_1ED6A60B8)
    {
      v11 = 0;
      v12 = *this;
      v13 = *(*this + 4);
      v34 = a5;
      if (v13 >= 0x100)
      {
        goto LABEL_7;
      }

LABEL_9:
      v14 = WTF::StringImpl::hashSlowCase(v12);
      goto LABEL_10;
    }
  }

  v11 = *(v10 - 8);
  v12 = *this;
  v13 = *(*this + 4);
  v34 = a5;
  if (v13 < 0x100)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = v13 >> 8;
LABEL_10:
  v15 = 0;
  for (i = 1; ; ++i)
  {
    v17 = v14 & v11;
    v18 = (v10 + 16 * (v14 & v11));
    v19 = *v18;
    if (*v18 == -1)
    {
      v15 = (v10 + 16 * v17);
      goto LABEL_12;
    }

    if (!v19)
    {
      if (v15)
      {
        v19 = 0;
        *v15 = 0;
        v15[1] = 0;
        --*(qword_1ED6A60B8 - 16);
        v18 = v15;
      }

      v22 = *this;
      if (*this)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
        v19 = *v18;
      }

      *v18 = v22;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, a2);
      }

      v21 = WTF::fastMalloc(0x48);
      if (!*(WebKit::StorageNamespaceImpl::StorageNamespaceImpl(v21, 1, this, v6, a4) + 16) && (v24 = WTF::fastCompactMalloc(0x10), *v24 = 1, *(v24 + 8) = v21, v25 = *(v21 + 16), *(v21 + 16) = v24, v25) && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v25);
        WTF::fastFree(v25, v23);
        v33 = *(v21 + 16);
        atomic_fetch_add(v33, 1u);
        result = v18[1];
        v18[1] = v33;
        if (!result)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v26 = *(v21 + 16);
        atomic_fetch_add(v26, 1u);
        result = v18[1];
        v18[1] = v26;
        if (!result)
        {
          goto LABEL_31;
        }
      }

      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, v23);
      }

LABEL_31:
      v27 = qword_1ED6A60B8;
      if (qword_1ED6A60B8)
      {
        v28 = *(qword_1ED6A60B8 - 16);
        v29 = *(qword_1ED6A60B8 - 12) + 1;
        *(qword_1ED6A60B8 - 12) = v29;
        v30 = (v28 + v29);
        v31 = *(v27 - 4);
        if (v31 <= 0x400)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v29 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v30 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v31 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_33:
          if (3 * v31 > 4 * v30)
          {
            goto LABEL_40;
          }

          if (!v31)
          {
            v32 = 8;
LABEL_39:
            result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v32);
            goto LABEL_40;
          }

LABEL_38:
          v32 = v31 << (6 * v29 >= (2 * v31));
          goto LABEL_39;
        }
      }

      if (v31 > 2 * v30)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    result = WTF::equal(v19, *this, a4);
    if (result)
    {
      break;
    }

LABEL_12:
    v14 = i + v17;
  }

  v21 = *(v18[1] + 1);
  if (!v21)
  {
LABEL_46:
    __break(0xC471u);
    JUMPOUT(0x1C79D9F44);
  }

  ++*(v21 + 8);
LABEL_40:
  *v34 = v21;
  return result;
}

uint64_t WebKit::StorageNamespaceImpl::StorageNamespaceImpl(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F472A9E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  WTF::String::isolatedCopy();
  *(a1 + 48) = 0;
  *(a1 + 56) = a4;
  *(a1 + 60) = 0;
  *(a1 + 64) = a5;
  if (*(a1 + 32) - 1 > 1)
  {
    return a1;
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    return a1;
  }

  if (!*(v8 + 4))
  {
    return a1;
  }

  v9 = WTF::fastMalloc(0x18);
  *v9 = 1;
  v10 = WTF::fastMalloc(0x48);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0;
  *(v9 + 8) = v10;
  WTF::String::isolatedCopy();
  WebCore::StorageThread::start(*(v9 + 8));
  v12 = *(a1 + 48);
  *(a1 + 48) = v9;
  if (!v12)
  {
    return a1;
  }

  if (*v12 != 1)
  {
    --*v12;
    return a1;
  }

  WebCore::StorageSyncManager::~StorageSyncManager(v12, v11);
  WTF::fastFree(v14, v15);
  return a1;
}

void WebKit::StorageNamespaceImpl::~StorageNamespaceImpl(WebKit::StorageNamespaceImpl *this, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  if (*(this + 32) - 1 > 1)
  {
    goto LABEL_33;
  }

  if (_MergedGlobals_6)
  {
    v4 = qword_1ED6A60B8;
    if (qword_1ED6A60B8)
    {
      v5 = *(this + 5);
      if (v5 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x1C79DA424);
      }

      if (!v5)
      {
        goto LABEL_74;
      }

      v6 = *(qword_1ED6A60B8 - 8);
      v7 = *(v5 + 4);
      if (v7 < 0x100)
      {
        v8 = WTF::StringImpl::hashSlowCase(v5);
      }

      else
      {
        v8 = v7 >> 8;
      }

      for (i = 0; ; v8 = i + v10)
      {
        v10 = v8 & v6;
        v11 = *(v4 + 16 * v10);
        if (v11 != -1)
        {
          if (!v11)
          {
            v13 = qword_1ED6A60B8;
            if (!qword_1ED6A60B8)
            {
              goto LABEL_33;
            }

            v14 = *(qword_1ED6A60B8 - 4);
            v12 = qword_1ED6A60B8 + 16 * v14;
            if (qword_1ED6A60B8 + 16 * v14 == v12)
            {
              goto LABEL_33;
            }

            goto LABEL_19;
          }

          if (WTF::equal(v11, *(this + 5), a3))
          {
            break;
          }
        }

        ++i;
      }

      v12 = v4 + 16 * v10;
      v13 = qword_1ED6A60B8;
      if (!qword_1ED6A60B8)
      {
        goto LABEL_20;
      }

      v14 = *(qword_1ED6A60B8 - 4);
      if (qword_1ED6A60B8 + 16 * v14 == v12)
      {
        goto LABEL_33;
      }

LABEL_19:
      v13 += 16 * v14;
LABEL_20:
      if (v13 != v12)
      {
        v15 = *v12;
        *v12 = -1;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, a2);
        }

        v16 = *(v12 + 8);
        *(v12 + 8) = 0;
        if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16);
          WTF::fastFree(v16, a2);
        }

        v17 = qword_1ED6A60B8;
        v18 = vadd_s32(*(qword_1ED6A60B8 - 16), 0xFFFFFFFF00000001);
        *(qword_1ED6A60B8 - 16) = v18;
        v19 = *(v17 - 4);
        if (6 * v18.i32[1] < v19 && v19 >= 9)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v19 >> 1);
        }
      }
    }

LABEL_33:
    if (*(this + 60))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  qword_1ED6A60B8 = 0;
  _MergedGlobals_6 = 1;
  if ((*(this + 60) & 1) == 0)
  {
LABEL_34:
    WebKit::StorageNamespaceImpl::close(this, a2, a3);
  }

LABEL_35:
  v21 = *(this + 6);
  *(this + 6) = 0;
  if (!v21)
  {
    goto LABEL_38;
  }

  if (*v21 != 1)
  {
    --*v21;
LABEL_38:
    v22 = *(this + 5);
    *(this + 5) = 0;
    if (!v22)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  WebCore::StorageSyncManager::~StorageSyncManager(v21, a2);
  WTF::fastFree(v23, v24);
  v22 = *(this + 5);
  *(this + 5) = 0;
  if (!v22)
  {
    goto LABEL_43;
  }

LABEL_41:
  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v22 = WTF::StringImpl::destroy(v22, a2);
  }

LABEL_43:
  v25 = *(this + 3);
  if (v25)
  {
    v26 = *(v25 - 4);
    if (v26)
    {
      v27 = (v25 + 24);
      while (1)
      {
        v28 = *v27;
        if (*v27)
        {
          if (v28 != 1)
          {
            mpark::throw_bad_variant_access(v22);
          }
        }

        else if (*(v27 - 3) == -1)
        {
          goto LABEL_47;
        }

        v22 = *(v27 + 1);
        *(v27 + 1) = 0;
        if (!v22)
        {
          goto LABEL_55;
        }

        if (*(v22 + 2) != 1)
        {
          break;
        }

        v22 = (*(*v22 + 8))(v22);
        if (!*v27)
        {
LABEL_58:
          v29 = *(v27 - 2);
          *(v27 - 2) = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, a2);
          }

          v22 = *(v27 - 3);
          *(v27 - 3) = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v22 = WTF::StringImpl::destroy(v22, a2);
          }
        }

LABEL_46:
        *v27 = -1;
LABEL_47:
        v27 += 40;
        if (!--v26)
        {
          goto LABEL_64;
        }
      }

      --*(v22 + 2);
LABEL_55:
      if (!v28)
      {
        goto LABEL_58;
      }

      goto LABEL_46;
    }

LABEL_64:
    WTF::fastFree((v25 - 16), a2);
  }

  v30 = *(this + 2);
  if (!v30 || (*(v30 + 8) = 0, *(this + 2) = 0, atomic_fetch_add(v30, 0xFFFFFFFF) != 1))
  {
    if (*(this + 2) == 1)
    {
      return;
    }

LABEL_74:
    __break(0xC471u);
    JUMPOUT(0x1C79DA3D4);
  }

  atomic_store(1u, v30);
  WTF::fastFree(v30, a2);
  if (*(this + 2) != 1)
  {
    goto LABEL_74;
  }
}

{
  WebKit::StorageNamespaceImpl::~StorageNamespaceImpl(this, a2, a3);

  WTF::fastFree(v3, v4);
}

uint64_t WebKit::StorageNamespaceImpl::close(uint64_t this, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  if ((*(this + 60) & 1) == 0 && *(this + 32))
  {
    v3 = *(this + 24);
    if (v3 && *(v3 - 12))
    {
      v4 = *(v3 - 4);
      if (v4)
      {
        v5 = 40 * v4;
        v6 = *(this + 24);
        while (!*(v6 + 24))
        {
          if (*v6 != -1 && (*v6 != 0) | *(v6 + 18) & 1)
          {
            goto LABEL_14;
          }

          v6 += 40;
          v5 -= 40;
          if (!v5)
          {
            goto LABEL_25;
          }
        }

        if (*(v6 + 24) != 1)
        {
LABEL_24:
          mpark::throw_bad_variant_access(this);
        }
      }

      else
      {
        v6 = *(this + 24);
      }

LABEL_14:
      v7 = v3 + 40 * v4;
LABEL_15:
      while (v6 != v7)
      {
        if (*(*(v6 + 32) + 40))
        {
          v8 = this;
          WebKit::StorageAreaSync::scheduleFinalSync(*(*(v6 + 32) + 40), a2, a3);
          this = v8;
        }

        while (1)
        {
          v6 += 40;
          if (v6 == v7)
          {
            goto LABEL_25;
          }

          if (*(v6 + 24))
          {
            break;
          }

          if (*v6 != -1 && (*v6 != 0) | *(v6 + 18) & 1)
          {
            goto LABEL_15;
          }
        }

        if (*(v6 + 24) != 1)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_25:
    if (*(this + 48))
    {
      v9 = this;
      WebCore::StorageSyncManager::close(*(this + 48));
      this = v9;
    }

    *(this + 60) = 1;
  }

  return this;
}

uint64_t WebKit::StorageNamespaceImpl::copy@<X0>(WebKit::StorageNamespaceImpl *this@<X0>, uint64_t *a2@<X8>)
{
  v5 = WTF::fastMalloc(0x48);
  result = WebKit::StorageNamespaceImpl::StorageNamespaceImpl(v5, *(this + 32), this + 40, *(this + 14), *(this + 8));
  v7 = *(this + 3);
  v37 = a2;
  if (!v7)
  {
    v9 = 0;
    LODWORD(v8) = 0;
    goto LABEL_11;
  }

  v8 = *(v7 - 4);
  v9 = v7 + 40 * v8;
  if (!*(v7 - 12))
  {
LABEL_11:
    v11 = v9;
    v9 = v7 + 40 * v8;
    goto LABEL_12;
  }

  if (!v8)
  {
    v12 = 0;
    v11 = *(this + 3);
LABEL_17:
    v13 = v7 + 40 * v12;
    if (v11 != v13)
    {
      goto LABEL_18;
    }

    goto LABEL_85;
  }

  v10 = 40 * v8;
  v11 = *(this + 3);
  while (!*(v11 + 24))
  {
    if (*v11 != -1 && (*v11 != 0) | *(v11 + 18) & 1)
    {
      goto LABEL_12;
    }

    v11 += 40;
    v10 -= 40;
    if (!v10)
    {
      v11 = v9;
      goto LABEL_12;
    }
  }

  if (*(v11 + 24) != 1)
  {
LABEL_87:
    mpark::throw_bad_variant_access(result);
  }

LABEL_12:
  if (v7)
  {
    v12 = *(v7 - 4);
    goto LABEL_17;
  }

  v13 = 0;
  if (v11)
  {
LABEL_18:
    v38 = v5;
    do
    {
      result = WebKit::StorageAreaImpl::copy(*(v11 + 32), &v39);
      if (*(v11 + 24))
      {
        if (*(v11 + 24) != 1)
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (*v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = *(v11 + 8) == 0;
        }

        if (v14 && (*(v11 + 18) & 1) == 0 || *v11 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x1C79DAA48);
        }
      }

      v15 = *(v5 + 24);
      if (v15 || (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash((v5 + 24), 8u, 0), (v15 = *(v5 + 24)) != 0))
      {
        v16 = *(v15 - 8);
      }

      else
      {
        v16 = 0;
      }

      result = WTF::computeHash<WebCore::SecurityOriginData>(v11);
      v18 = 0;
      for (i = 1; ; ++i)
      {
        v20 = result & v16;
        v21 = v15 + 40 * (result & v16);
        if (*(v21 + 24))
        {
          break;
        }

        if (*v21)
        {
          v22 = 0;
        }

        else
        {
          v22 = *(v21 + 8) == 0;
        }

        if (v22 && (*(v21 + 18) & 1) == 0)
        {
          v5 = v38;
          if (v18)
          {
            *(v18 + 32) = 0;
            *v18 = 0u;
            *(v18 + 16) = 0u;
            --*(*(v38 + 24) - 16);
            v21 = v18;
          }

          v25 = *(v11 + 24);
          if (v25 != 255)
          {
            v40 = v21;
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignIRKNS0_15copy_assignmentISH_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRSI_SO_EEEDcmSQ_DpOT0_(v25, &v40, v21, v11);
            v26 = v39;
            v39 = 0;
            v27 = *(v21 + 32);
            *(v21 + 32) = v26;
            if (!v27)
            {
              goto LABEL_65;
            }

LABEL_63:
            if (v27[2] != 1)
            {
              --v27[2];
              goto LABEL_65;
            }

            (*(*v27 + 8))(v27);
            v31 = *(v38 + 24);
            if (!v31)
            {
              goto LABEL_71;
            }

LABEL_66:
            v32 = *(v31 - 16);
            v33 = *(v31 - 12) + 1;
            *(v31 - 12) = v33;
            v34 = (v32 + v33);
            v35 = *(v31 - 4);
            if (v35 <= 0x400)
            {
              goto LABEL_67;
            }

LABEL_72:
            if (v35 > 2 * v34)
            {
              goto LABEL_75;
            }

            goto LABEL_73;
          }

          v28 = *(v21 + 8);
          *(v21 + 8) = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v17);
          }

          v29 = *v21;
          *v21 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v17);
          }

          *(v21 + 24) = -1;
          v30 = v39;
          v39 = 0;
          v27 = *(v21 + 32);
          *(v21 + 32) = v30;
          if (v27)
          {
            goto LABEL_63;
          }

LABEL_65:
          v31 = *(v38 + 24);
          if (v31)
          {
            goto LABEL_66;
          }

LABEL_71:
          v33 = 1;
          *(v31 - 12) = 1;
          v34 = (*(v31 - 16) + 1);
          v35 = *(v31 - 4);
          if (v35 > 0x400)
          {
            goto LABEL_72;
          }

LABEL_67:
          if (3 * v35 > 4 * v34)
          {
            goto LABEL_75;
          }

          if (v35)
          {
LABEL_73:
            v36 = v35 << (6 * v33 >= (2 * v35));
          }

          else
          {
            v36 = 8;
          }

          WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash((v38 + 24), v36, v21);
          goto LABEL_75;
        }

        if (*v21 != -1)
        {
          goto LABEL_36;
        }

        v18 = v15 + 40 * v20;
LABEL_37:
        result = i + v20;
      }

      if (*(v21 + 24) != 1)
      {
        goto LABEL_87;
      }

LABEL_36:
      if (!WebCore::operator==())
      {
        goto LABEL_37;
      }

      v5 = v38;
      v23 = v39;
      v39 = 0;
      v24 = *(v21 + 32);
      *(v21 + 32) = v23;
      if (v24)
      {
        if (v24[2] == 1)
        {
          (*(*v24 + 8))(v24);
        }

        else
        {
          --v24[2];
        }
      }

LABEL_75:
      result = v39;
      v39 = 0;
      if (result)
      {
        if (*(result + 8) == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --*(result + 8);
        }
      }

      while (1)
      {
        v11 += 40;
        if (v11 == v9)
        {
          goto LABEL_20;
        }

        if (*(v11 + 24))
        {
          break;
        }

        if (*v11 != -1 && (*v11 != 0) | *(v11 + 18) & 1)
        {
          goto LABEL_20;
        }
      }

      if (*(v11 + 24) != 1)
      {
        goto LABEL_87;
      }

LABEL_20:
      ;
    }

    while (v11 != v13);
  }

LABEL_85:
  *v37 = v5;
  return result;
}

uint64_t WebKit::StorageNamespaceImpl::storageArea@<X0>(uint64_t this@<X0>, const WebCore::SecurityOrigin *a2@<X1>, void *a3@<X8>)
{
  v4 = this;
  if (*(a2 + 32))
  {
    if (*(a2 + 32) != 1)
    {
LABEL_3:
      mpark::throw_bad_variant_access(this);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 2) == 0;
    }

    if (v7 && (*(a2 + 26) & 1) == 0 || v6 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x1C79DADD0);
    }
  }

  v8 = *(this + 24);
  if (v8 || (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash((this + 24), 8u, 0), (v8 = *(v4 + 24)) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  this = WTF::computeHash<WebCore::SecurityOriginData>(a2 + 8);
  v11 = 0;
  for (i = 1; ; ++i)
  {
    v14 = this & v9;
    v15 = v8 + 40 * (this & v9);
    if (*(v15 + 24))
    {
      if (*(v15 + 24) != 1)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    v16 = !*v15 && *(v15 + 8) == 0;
    if (v16 && (*(v15 + 18) & 1) == 0)
    {
      break;
    }

    if (*v15 == -1)
    {
      v11 = v8 + 40 * v14;
      goto LABEL_17;
    }

LABEL_16:
    result = WebCore::operator==();
    if (result)
    {
      goto LABEL_57;
    }

LABEL_17:
    this = i + v14;
  }

  if (v11)
  {
    *(v11 + 32) = 0;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    --*(*(v4 + 24) - 16);
    v15 = v11;
  }

  v17 = *(a2 + 32);
  if (v17 == 255)
  {
    v23 = *(v15 + 8);
    *(v15 + 8) = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v10);
    }

    v24 = *v15;
    *v15 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v10);
    }

    *(v15 + 24) = -1;
    v18 = *(v4 + 32);
    v19 = *(v4 + 48);
    if (v19)
    {
LABEL_31:
      ++*v19;
    }
  }

  else
  {
    v37 = v15;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignIRKNS0_15copy_assignmentISH_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRSI_SO_EEEDcmSQ_DpOT0_(v17, &v37, v15, a2 + 8);
    v18 = *(v4 + 32);
    v19 = *(v4 + 48);
    if (v19)
    {
      goto LABEL_31;
    }
  }

  v37 = v19;
  WebKit::StorageAreaImpl::create(v18, a2, &v37, &v36);
  v21 = v37;
  v37 = 0;
  if (v21)
  {
    if (*v21 != 1)
    {
      --*v21;
      goto LABEL_35;
    }

    WebCore::StorageSyncManager::~StorageSyncManager(v21, v20);
    WTF::fastFree(v25, v26);
    v27 = v36;
    v36 = 0;
    result = *(v15 + 32);
    *(v15 + 32) = v27;
    if (result)
    {
LABEL_46:
      v28 = *(result + 8) - 1;
      if (*(result + 8) != 1)
      {
        goto LABEL_47;
      }

      (*(*result + 8))(result);
      result = v36;
      v36 = 0;
      if (result)
      {
        v28 = *(result + 8) - 1;
        if (*(result + 8) == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
LABEL_47:
          *(result + 8) = v28;
        }
      }
    }
  }

  else
  {
LABEL_35:
    v22 = v36;
    v36 = 0;
    result = *(v15 + 32);
    *(v15 + 32) = v22;
    if (result)
    {
      goto LABEL_46;
    }
  }

  v29 = *(v4 + 24);
  if (v29)
  {
    v30 = *(v29 - 16);
    v31 = *(v29 - 12) + 1;
    *(v29 - 12) = v31;
    v32 = (v30 + v31);
    v33 = *(v29 - 4);
    if (v33 <= 0x400)
    {
      goto LABEL_50;
    }

LABEL_54:
    if (v33 <= 2 * v32)
    {
LABEL_55:
      v34 = v33 << (6 * v31 >= (2 * v33));
      goto LABEL_56;
    }
  }

  else
  {
    v31 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v32 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v33 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_54;
    }

LABEL_50:
    if (3 * v33 <= 4 * v32)
    {
      if (v33)
      {
        goto LABEL_55;
      }

      v34 = 8;
LABEL_56:
      result = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash((v4 + 24), v34, v15);
      v15 = result;
    }
  }

LABEL_57:
  v35 = *(v15 + 32);
  ++*(v35 + 8);
  *a3 = v35;
  return result;
}