uint64_t WebKit::StorageNamespaceImpl::clearOriginForDeletion(WebKit::StorageNamespaceImpl *this, const WebCore::SecurityOriginData *a2)
{
  result = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SecurityOriginData>>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(this + 24, a2);
  if (result)
  {
    v3 = *(result + 32);
    if (v3)
    {
      ++*(v3 + 2);
      result = WebKit::StorageAreaImpl::clearForOriginDeletion(v3);
      if (*(v3 + 2) == 1)
      {
        v4 = *(*v3 + 8);

        return v4(v3);
      }

      else
      {
        --*(v3 + 2);
      }
    }
  }

  return result;
}

mpark *WebKit::StorageNamespaceImpl::clearAllOriginsForDeletion(mpark *this)
{
  v1 = *(this + 3);
  if (v1 && *(v1 - 12))
  {
    v2 = *(v1 - 4);
    if (v2)
    {
      v3 = 40 * v2;
      for (i = *(this + 3); !*(i + 24); i += 40)
      {
        if (*i != -1 && (*i != 0) | *(i + 18) & 1)
        {
          goto LABEL_12;
        }

        v3 -= 40;
        if (!v3)
        {
          return this;
        }
      }

      if (*(i + 24) != 1)
      {
LABEL_21:
        mpark::throw_bad_variant_access(this);
      }
    }

    else
    {
      i = *(this + 3);
    }

LABEL_12:
    v5 = v1 + 40 * v2;
LABEL_13:
    while (i != v5)
    {
      this = WebKit::StorageAreaImpl::clearForOriginDeletion(*(i + 32));
      while (1)
      {
        i += 40;
        if (i == v5)
        {
          return this;
        }

        if (*(i + 24))
        {
          break;
        }

        if (*i != -1 && (*i != 0) | *(i + 18) & 1)
        {
          goto LABEL_13;
        }
      }

      if (*(i + 24) != 1)
      {
        goto LABEL_21;
      }
    }
  }

  return this;
}

mpark *WebKit::StorageNamespaceImpl::sync(mpark *this, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *(this + 3);
  if (v3 && *(v3 - 12))
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = 40 * v4;
      for (i = *(this + 3); !*(i + 24); i += 40)
      {
        if (*i != -1 && (*i != 0) | *(i + 18) & 1)
        {
          goto LABEL_12;
        }

        v5 -= 40;
        if (!v5)
        {
          return this;
        }
      }

      if (*(i + 24) != 1)
      {
LABEL_21:
        mpark::throw_bad_variant_access(this);
      }
    }

    else
    {
      i = *(this + 3);
    }

LABEL_12:
    v7 = v3 + 40 * v4;
LABEL_13:
    while (i != v7)
    {
      this = WebKit::StorageAreaImpl::sync(*(i + 32), a2, a3);
      while (1)
      {
        i += 40;
        if (i == v7)
        {
          return this;
        }

        if (*(i + 24))
        {
          break;
        }

        if (*i != -1 && (*i != 0) | *(i + 18) & 1)
        {
          goto LABEL_13;
        }
      }

      if (*(i + 24) != 1)
      {
        goto LABEL_21;
      }
    }
  }

  return this;
}

mpark *WebKit::StorageNamespaceImpl::closeIdleLocalStorageDatabases(mpark *this)
{
  v1 = *(this + 3);
  if (v1 && *(v1 - 12))
  {
    v2 = *(v1 - 4);
    if (v2)
    {
      v3 = 40 * v2;
      for (i = *(this + 3); !*(i + 24); i += 40)
      {
        if (*i != -1 && (*i != 0) | *(i + 18) & 1)
        {
          goto LABEL_12;
        }

        v3 -= 40;
        if (!v3)
        {
          return this;
        }
      }

      if (*(i + 24) != 1)
      {
LABEL_21:
        mpark::throw_bad_variant_access(this);
      }
    }

    else
    {
      i = *(this + 3);
    }

LABEL_12:
    v5 = v1 + 40 * v2;
LABEL_13:
    while (i != v5)
    {
      this = (*(**(i + 32) + 112))(*(i + 32));
      while (1)
      {
        i += 40;
        if (i == v5)
        {
          return this;
        }

        if (*(i + 24))
        {
          break;
        }

        if (*i != -1 && (*i != 0) | *(i + 18) & 1)
        {
          goto LABEL_13;
        }
      }

      if (*(i + 24) != 1)
      {
        goto LABEL_21;
      }
    }
  }

  return this;
}

SessionID *WebKit::StorageNamespaceImpl::setSessionIDForTesting(SessionID *this, SessionID a2)
{
  this[8].m_identifier = a2.m_identifier;
  m_identifier = this[3].m_identifier;
  if (!m_identifier)
  {
    v5 = 0;
    LODWORD(v4) = 0;
    goto LABEL_11;
  }

  v4 = *(m_identifier - 4);
  v5 = m_identifier + 40 * v4;
  if (!*(m_identifier - 12))
  {
LABEL_11:
    v7 = v5;
    v5 = m_identifier + 40 * v4;
LABEL_12:
    if (!m_identifier)
    {
      v9 = 0;
      goto LABEL_18;
    }

    v8 = *(m_identifier - 4);
    goto LABEL_16;
  }

  if (v4)
  {
    v6 = 40 * v4;
    v7 = this[3].m_identifier;
    while (!*(v7 + 24))
    {
      if (*v7 != -1 && (*v7 != 0) | *(v7 + 18) & 1)
      {
        goto LABEL_12;
      }

      v7 += 40;
      v6 -= 40;
      if (!v6)
      {
        v7 = v5;
        goto LABEL_12;
      }
    }

    if (*(v7 + 24) != 1)
    {
LABEL_31:
      mpark::throw_bad_variant_access(this);
    }

    goto LABEL_12;
  }

  v8 = 0;
  v7 = this[3].m_identifier;
LABEL_16:
  v9 = m_identifier + 40 * v8;
LABEL_18:
  while (v7 != v9)
  {
    v10 = *(v7 + 32);
    if (v10)
    {
      ++*(v10 + 2);
      this = WebKit::StorageAreaImpl::sessionChanged(v10, a2.m_identifier > -2);
      if (*(v10 + 2) == 1)
      {
        this = (*(*v10 + 8))(v10);
      }

      else
      {
        --*(v10 + 2);
      }
    }

    else
    {
      this = WebKit::StorageAreaImpl::sessionChanged(0, a2.m_identifier > -2);
    }

    while (1)
    {
      v7 += 40;
      if (v7 == v5)
      {
        goto LABEL_18;
      }

      if (*(v7 + 24))
      {
        break;
      }

      if (*v7 != -1 && (*v7 != 0) | *(v7 + 18) & 1)
      {
        goto LABEL_18;
      }
    }

    if (*(v7 + 24) != 1)
    {
      goto LABEL_31;
    }
  }

  return this;
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WeakRef<WebKit::StorageNamespaceImpl,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = qword_1ED6A60B8;
  if (qword_1ED6A60B8)
  {
    v3 = *(qword_1ED6A60B8 - 4);
    v4 = *(qword_1ED6A60B8 - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a1 + 16));
  qword_1ED6A60B8 = (result + 4);
  result[2] = a1 - 1;
  result[3] = a1;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v7 = 0;
    v8 = v3;
    while (1)
    {
      v9 = v2 + 16 * v7;
      v10 = *v9;
      if (*v9 != -1)
      {
        if (v10)
        {
          v13 = qword_1ED6A60B8;
          if (qword_1ED6A60B8)
          {
            v14 = *(qword_1ED6A60B8 - 8);
            v15 = v10[4];
            if (v15 >= 0x100)
            {
              goto LABEL_16;
            }

LABEL_18:
            v16 = WTF::StringImpl::hashSlowCase(v10);
          }

          else
          {
            v14 = 0;
            v15 = v10[4];
            if (v15 < 0x100)
            {
              goto LABEL_18;
            }

LABEL_16:
            v16 = v15 >> 8;
          }

          v17 = 0;
          do
          {
            v18 = v16 & v14;
            v16 = ++v17 + v18;
          }

          while (*(v13 + 16 * v18));
          v19 = v13 + 16 * v18;
          v20 = *(v19 + 8);
          *(v19 + 8) = 0;
          if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v20);
            WTF::fastFree(v20, v6);
            v21 = *v19;
            *v19 = 0;
            if (v21)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v21 = *v19;
            *v19 = 0;
            if (v21)
            {
LABEL_24:
              if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v21, v6);
              }
            }
          }

          v22 = *v9;
          *v9 = 0;
          *(v9 + 8) = 0;
          *v19 = v22;
          v23 = *(v9 + 8);
          *(v9 + 8) = 0;
          if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v23);
            WTF::fastFree(v23, v6);
            v12 = *v9;
            *v9 = 0;
            if (!v12)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v12 = *v9;
            *v9 = 0;
            if (!v12)
            {
              goto LABEL_6;
            }
          }

          if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_6;
          }

LABEL_13:
          WTF::StringImpl::destroy(v12, v6);
          goto LABEL_6;
        }

        v11 = *(v9 + 8);
        *(v9 + 8) = 0;
        if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v11);
          WTF::fastFree(v11, v6);
          v12 = *v9;
          *v9 = 0;
          if (!v12)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v12 = *v9;
          *v9 = 0;
          if (!v12)
          {
            goto LABEL_6;
          }
        }

        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          goto LABEL_13;
        }
      }

LABEL_6:
      if (++v7 == v8)
      {
        goto LABEL_38;
      }
    }
  }

  if (v2)
  {
LABEL_38:

    return WTF::fastFree((v2 - 16), v6);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((40 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 40 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    v13 = v5;
    while (1)
    {
      v14 = v4 + 40 * v11;
      if (*(v14 + 24))
      {
        if (*(v14 + 24) != 1)
        {
LABEL_75:
          mpark::throw_bad_variant_access(v7);
        }
      }

      else
      {
        if (*v14 == -1)
        {
          goto LABEL_10;
        }

        if (*v14)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(v14 + 8) == 0;
        }

        if (v17 && (*(v14 + 18) & 1) == 0)
        {
          v18 = *(v14 + 32);
          *(v14 + 32) = 0;
          if (v18)
          {
            if (v18[2] != 1)
            {
              --v18[2];
              goto LABEL_25;
            }

            v7 = (*(*v18 + 8))(v18);
            if (!*(v14 + 24))
            {
              goto LABEL_25;
            }
          }

          else
          {
LABEL_25:
            v19 = *(v14 + 8);
            *(v14 + 8) = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v8);
            }

            v7 = *v14;
            *v14 = 0;
            if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v7 = WTF::StringImpl::destroy(v7, v8);
            }
          }

          *(v14 + 24) = -1;
          goto LABEL_10;
        }
      }

      v15 = *a1;
      if (*a1)
      {
        v16 = *(v15 - 8);
      }

      else
      {
        v16 = 0;
      }

      v7 = WTF::computeHash<WebCore::SecurityOriginData>(v4 + 40 * v11);
      for (i = 0; ; v7 = i + (v7 & v16))
      {
        v21 = v15 + 40 * (v7 & v16);
        if (!*(v21 + 24))
        {
          break;
        }

        if (*(v21 + 24) != 1)
        {
          goto LABEL_75;
        }

LABEL_34:
        ++i;
      }

      if (*v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(v21 + 8) == 0;
      }

      if (!v22 || (*(v21 + 18) & 1) != 0)
      {
        goto LABEL_34;
      }

      v23 = *(v21 + 32);
      *(v21 + 32) = 0;
      if (!v23)
      {
        goto LABEL_45;
      }

      if (v23[2] == 1)
      {
        (*(*v23 + 8))(v23);
        if (!*(v21 + 24))
        {
          v30 = *(v21 + 8);
          *(v21 + 8) = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v8);
          }

          goto LABEL_46;
        }
      }

      else
      {
        --v23[2];
LABEL_45:
        *(v21 + 8) = 0;
LABEL_46:
        v24 = *v21;
        *v21 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v8);
        }
      }

      *v21 = 0;
      *(v21 + 24) = -1;
      v25 = *(v14 + 24);
      if (v25 != 255)
      {
        if (*(v14 + 24))
        {
          *v21 = *v14;
        }

        else
        {
          v26 = *v14;
          *v14 = 0;
          *v21 = v26;
          v27 = *(v14 + 8);
          *(v14 + 8) = 0;
          *(v21 + 8) = v27;
          *(v21 + 16) = *(v14 + 16);
        }

        v25 = *(v14 + 24);
        *(v21 + 24) = v25;
      }

      v28 = *(v14 + 32);
      *(v14 + 32) = 0;
      *(v21 + 32) = v28;
      v7 = *(v14 + 32);
      *(v14 + 32) = 0;
      if (v7)
      {
        if (*(v7 + 8) != 1)
        {
          --*(v7 + 8);
          goto LABEL_58;
        }

        v7 = (*(*v7 + 8))(v7);
        if (!*(v14 + 24))
        {
LABEL_61:
          v29 = *(v14 + 8);
          *(v14 + 8) = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v8);
          }

          v7 = *v14;
          *v14 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v7 = WTF::StringImpl::destroy(v7, v8);
          }
        }
      }

      else
      {
LABEL_58:
        if (!v25)
        {
          goto LABEL_61;
        }
      }

      *(v14 + 24) = -1;
      if (v14 == a3)
      {
        v12 = v21;
      }

LABEL_10:
      if (++v11 == v13)
      {
        goto LABEL_73;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_73:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

uint64_t WTF::computeHash<WebCore::SecurityOriginData>(uint64_t a1)
{
  v19 = 0;
  v20 = 0;
  v1 = *(a1 + 24);
  if (v1 == 255)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(a1 + 24);
  }

  v3 = v2 & 0x7FFF800 ^ ((v2 - 1640531527) << 16) ^ (v2 - 1640531527);
  v4 = (v2 >> 37) & 0x7FFF800 ^ ((v3 + WORD2(v2) + (v3 >> 11)) << 16) ^ (v3 + WORD2(v2) + (v3 >> 11));
  v5 = v4 + (v4 >> 11);
  v18 = v5;
  if (v1 == 255)
  {
    mpark::throw_bad_variant_access(a1);
  }

  if (v1)
  {
    v6 = *(a1 + 8);
    v7 = (*a1 >> 5) & 0x7FFF800 ^ ((v5 + *a1) << 16) ^ (v5 + *a1);
    v8 = v7 + WORD2(*a1);
    v9 = (*a1 >> 37) & 0x7FFF800 ^ ((v8 + (v7 >> 11)) << 16) ^ (v8 + (v7 >> 11));
    v10 = (v6 >> 5) & 0x7FFF800 ^ ((v9 + v6 + (v9 >> 11)) << 16) ^ (v9 + v6 + (v9 >> 11));
    v11 = v10 + WORD2(v6) + (v10 >> 11);
    v12 = (v6 >> 37) & 0x7FFF800 ^ (v11 << 16);
    v13 = (v12 ^ v11) + ((v12 ^ v11) >> 11);
  }

  else
  {
    WTF::add<WTF::String,WTF::String,std::optional<unsigned short>>(&v18, a1, (a1 + 8), (a1 + 16));
    v13 = v18;
    if (v20)
    {
      v14 = (v18 + v19) ^ ((v18 + v19) << 11);
      v13 = v14 + (v14 >> 17);
    }
  }

  v15 = (v13 ^ (8 * v13)) + ((v13 ^ (8 * v13)) >> 5);
  v16 = (v15 ^ (4 * v15)) + ((v15 ^ (4 * v15)) >> 15);
  if (v16 == v16 << 10)
  {
    return 0x800000;
  }

  else
  {
    return (v16 << 10) ^ v16;
  }
}

unsigned int *WTF::add<WTF::String,WTF::String,std::optional<unsigned short>>(unsigned int *result, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 4);
    v6 = v5 & 0xFFFFFFFE;
    if ((v5 & 0xFFFFFFFE) != 0)
    {
      v7 = 0;
      v8 = *result;
      do
      {
        v11 = *(v4 + 4);
        if (v7 >= v11)
        {
          v13 = 0;
          v14 = v7 + 1;
          if (v7 + 1 < v11)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v12 = *(v4 + 8);
          if ((*(v4 + 16) & 4) != 0)
          {
            v13 = *(v12 + v7);
            v14 = v7 + 1;
            if (v7 + 1 < v11)
            {
LABEL_13:
              v15 = *(v4 + 8);
              if ((*(v4 + 16) & 4) != 0)
              {
                v9 = *(v15 + v7 + 1);
              }

              else
              {
                v9 = *(v15 + 2 * v7 + 2);
              }

              goto LABEL_5;
            }
          }

          else
          {
            v13 = *(v12 + 2 * v7);
            v14 = v7 + 1;
            if (v7 + 1 < v11)
            {
              goto LABEL_13;
            }
          }
        }

        v9 = 0;
LABEL_5:
        v10 = (v13 << 11) ^ ((v8 + v9) << 16) ^ (v8 + v9);
        v8 = v10 + (v10 >> 11);
        *result = v8;
        v7 = v14 + 1;
      }

      while (v14 + 1 < v6);
    }

    if (v5)
    {
      if (*(v4 + 4) <= v6)
      {
        v17 = 0;
      }

      else
      {
        v16 = *(v4 + 8);
        if ((*(v4 + 16) & 4) != 0)
        {
          v17 = *(v16 + v6);
        }

        else
        {
          v17 = *(v16 + 2 * v6);
        }
      }

      *result = ((*result + v17) ^ ((*result + v17) << 16)) + (((*result + v17) ^ ((*result + v17) << 16)) >> 11);
    }
  }

  v18 = *a3;
  if (*a3)
  {
    v19 = *(v18 + 4);
    v20 = v19 & 0xFFFFFFFE;
    if ((v19 & 0xFFFFFFFE) != 0)
    {
      v21 = 0;
      v22 = *result;
      do
      {
        v25 = *(v18 + 4);
        if (v21 >= v25)
        {
          v27 = 0;
          v28 = v21 + 1;
          if (v21 + 1 < v25)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v26 = *(v18 + 8);
          if ((*(v18 + 16) & 4) != 0)
          {
            v27 = *(v26 + v21);
            v28 = v21 + 1;
            if (v21 + 1 < v25)
            {
LABEL_35:
              v29 = *(v18 + 8);
              if ((*(v18 + 16) & 4) != 0)
              {
                v23 = *(v29 + v21 + 1);
              }

              else
              {
                v23 = *(v29 + 2 * v21 + 2);
              }

              goto LABEL_27;
            }
          }

          else
          {
            v27 = *(v26 + 2 * v21);
            v28 = v21 + 1;
            if (v21 + 1 < v25)
            {
              goto LABEL_35;
            }
          }
        }

        v23 = 0;
LABEL_27:
        v24 = (v27 << 11) ^ ((v22 + v23) << 16) ^ (v22 + v23);
        v22 = v24 + (v24 >> 11);
        *result = v22;
        v21 = v28 + 1;
      }

      while (v28 + 1 < v20);
    }

    if (v19)
    {
      if (*(v18 + 4) <= v20)
      {
        v31 = 0;
      }

      else
      {
        v30 = *(v18 + 8);
        if ((*(v18 + 16) & 4) != 0)
        {
          v31 = *(v30 + v20);
        }

        else
        {
          v31 = *(v30 + 2 * v20);
        }
      }

      *result = ((*result + v31) ^ ((*result + v31) << 16)) + (((*result + v31) ^ ((*result + v31) << 16)) >> 11);
    }
  }

  v32 = *(a4 + 2);
  v33 = (*result + v32) ^ ((*result + v32) << 16);
  v34 = v33 + (v33 >> 11);
  *result = v34;
  if (v32 == 1)
  {
    *result = ((v34 + *a4) ^ ((v34 + *a4) << 16)) + (((v34 + *a4) ^ ((v34 + *a4) << 16)) >> 11);
  }

  return result;
}

WTF::StringImpl *_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignIRKNS0_15copy_assignmentISH_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRSI_SO_EEEDcmSQ_DpOT0_(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (result)
  {
    if (*(*a2 + 24))
    {
      if (*(*a2 + 24) == 1)
      {
        *a3 = *a4;
        return result;
      }
    }

    else
    {
      v7 = *(v4 + 8);
      *(v4 + 8) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v8 = a4;
        WTF::StringImpl::destroy(v7, a2);
        a4 = v8;
      }

      result = *v4;
      *v4 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v9 = a4;
          result = WTF::StringImpl::destroy(result, a2);
          a4 = v9;
        }
      }
    }

    *(v4 + 24) = -1;
    *v4 = *a4;
    *(v4 + 24) = 1;
  }

  else if (*(*a2 + 24))
  {
    *(v4 + 24) = -1;
    v5 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *v4 = v5;
    v6 = *(a4 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *(v4 + 8) = v6;
    *(v4 + 16) = *(a4 + 16);
    *(v4 + 24) = 0;
  }

  else
  {
    v10 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    v11 = *a3;
    *a3 = v10;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v12 = a4;
      v13 = a3;
      WTF::StringImpl::destroy(v11, a2);
      a3 = v13;
      a4 = v12;
    }

    v14 = *(a4 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    }

    result = *(a3 + 8);
    *(a3 + 8) = v14;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v15 = a4;
      v16 = a3;
      result = WTF::StringImpl::destroy(result, a2);
      a3 = v16;
      a4 = v15;
    }

    v17 = *(a4 + 16);
    *(a3 + 18) = *(a4 + 18);
    *(a3 + 16) = v17;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SecurityOriginData,WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::RefPtr<WebKit::StorageAreaImpl,WTF::RawPtrTraits<WebKit::StorageAreaImpl>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SecurityOriginData>>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    if (*(a2 + 24) != 1)
    {
LABEL_3:
      mpark::throw_bad_variant_access(a1);
    }
  }

  else
  {
    if (*a2)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(a2 + 8) == 0;
    }

    if (v2 && (*(a2 + 18) & 1) == 0 || *a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x1C79DBF34);
    }
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    a1 = WTF::computeHash<WebCore::SecurityOriginData>(a2);
    for (i = 0; ; a1 = (i + v6))
    {
      v6 = a1 & v4;
      v7 = v3 + 40 * (a1 & v4);
      if (*(v7 + 24))
      {
        break;
      }

      if (*v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v7 + 8) == 0;
      }

      if (v8 && (*(v7 + 18) & 1) == 0)
      {
        return 0;
      }

      if (*v7 != -1)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++i;
    }

    if (*(v7 + 24) != 1)
    {
      goto LABEL_3;
    }

LABEL_14:
    if (WebCore::operator==())
    {
      return v7;
    }

    goto LABEL_15;
  }

  return 0;
}

void WebCore::StorageSyncManager::~StorageSyncManager(WebCore::StorageSyncManager *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (!v4)
  {
LABEL_11:
    if (*this == 1)
    {
      return;
    }

LABEL_15:
    __break(0xC471u);
    return;
  }

  WTF::Deque<std::unique_ptr<WTF::Function<void ()(void)>>,0ul>::destroyAll(v4 + 32, a2);
  v6 = *(v4 + 48);
  if (v6)
  {
    *(v4 + 48) = 0;
    *(v4 + 56) = 0;
    WTF::fastFree(v6, v5);
  }

  v7 = *(v4 + 8);
  *(v4 + 8) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::Thread::~Thread(v7);
    WTF::fastFree(v8, v9);
    if (!*v4)
    {
      goto LABEL_10;
    }
  }

  else if (!*v4)
  {
LABEL_10:
    WTF::fastFree(v4, v5);
    goto LABEL_11;
  }

  *(v4 + 64) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  if (*this != 1)
  {
    goto LABEL_15;
  }
}

uint64_t WebCore::StorageSyncManager::fullDatabaseFilename@<X0>(WebCore::StorageSyncManager *this@<X0>, const WTF::String *a2@<X1>, void *a3@<X8>)
{
  result = WTF::FileSystemImpl::makeAllDirectories((this + 16), a2);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    return result;
  }

  if (!*(this + 2))
  {
    v7 = *a2;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_11:
    result = 13;
    goto LABEL_12;
  }

  v7 = *a2;
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_4:
  atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  v8 = *(v7 + 4);
  if (v8 < 0 || (result = (v8 + 13), __OFADD__(v8, 13)))
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((*(v7 + 16) & 4) == 0)
  {
    v9 = 0;
    goto LABEL_13;
  }

LABEL_12:
  v9 = 1;
LABEL_13:
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(result, v9, v7, ".localstorage", 0xDuLL, &v11);
  if (!v11)
  {
LABEL_21:
    __break(0xC471u);
    return result;
  }

  WTF::FileSystemImpl::pathByAppendingComponent();
  result = v11;
  v11 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v10);
  }

  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v7, v10);
    }
  }

  return result;
}

double WebCore::StorageSyncManager::close(WebCore::StorageSyncManager *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return result;
  }

  WebCore::StorageThread::terminate(v2);
  v5 = *(this + 1);
  *(this + 1) = 0;
  if (!v5)
  {
    return result;
  }

  WTF::Deque<std::unique_ptr<WTF::Function<void ()(void)>>,0ul>::destroyAll(v5 + 32, v3);
  v7 = *(v5 + 48);
  if (v7)
  {
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;
    WTF::fastFree(v7, v6);
  }

  v8 = *(v5 + 8);
  *(v5 + 8) = 0;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::Thread::~Thread(v8);
    WTF::fastFree(v9, v10);
    if (!*v5)
    {
      goto LABEL_8;
    }

LABEL_12:
    *(v5 + 64) = 0;
    result = 0.0;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    return result;
  }

  if (*v5)
  {
    goto LABEL_12;
  }

LABEL_8:

  WTF::fastFree(v5, v6);
  return result;
}

unint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(unint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  if (!a2)
  {
    if (!result)
    {
      goto LABEL_14;
    }

    if (result > 0x7FFFFFEF)
    {
      goto LABEL_13;
    }

    v25 = result;
    result = WTF::tryFastCompactMalloc(((2 * result) + 20));
    v11 = v105;
    if (!v105)
    {
      goto LABEL_15;
    }

    v26 = (v105 + 20);
    *v105 = 2;
    *(v105 + 4) = v25;
    *(v105 + 8) = v105 + 20;
    *(v105 + 16) = 0;
    if (!a3)
    {
      v34 = 0;
      v32 = a4;
      v31 = a5;
      goto LABEL_65;
    }

    v27 = v25;
    v28 = a3;
    v29 = *(a3 + 8);
    v30 = *(a3 + 4);
    v31 = a5;
    if ((*(a3 + 16) & 4) == 0)
    {
      v32 = a4;
      if (v30)
      {
        if (v30 == 1)
        {
          *v26 = v29->i16[0];
        }

        else
        {
          result = memcpy((v105 + 20), v29, 2 * v30);
          v28 = a3;
          v27 = v25;
          v31 = a5;
          v32 = a4;
        }
      }

LABEL_64:
      v34 = *(v28 + 4);
      if (v34 > v27)
      {
        goto LABEL_105;
      }

LABEL_65:
      v59 = &v26[v34];
      v60 = (v59 + 2 * v31);
      if (v31 >= 0x40)
      {
        v61 = v59 + 2 * (v31 & 0x7FFFFFFFFFFFFFC0);
        v62 = 0uLL;
        do
        {
          v107.val[0] = *v32;
          v63 = *(v32 + 16);
          v109.val[0] = *(v32 + 32);
          v64 = *(v32 + 48);
          v32 += 64;
          v65 = v64;
          v109.val[1] = 0uLL;
          v111.val[0] = v63;
          v107.val[1] = 0uLL;
          v66 = v59;
          vst2q_s8(v66, v107);
          v66 += 32;
          v111.val[1] = 0uLL;
          vst2q_s8(v66, v111);
          v67 = (v59 + 64);
          vst2q_s8(v67, v109);
          v68 = (v59 + 96);
          vst2q_s8(v68, *(&v62 - 1));
          v59 += 128;
        }

        while (v59 != v61);
        v59 = v61;
      }

      if (v59 == v60)
      {
        goto LABEL_15;
      }

      v69 = v105 + 2 * (v31 + v34) - v59 + 18;
      if (v69 < 0xE || v59 < v32 + (v69 >> 1) + 1 && v32 < (v69 & 0xFFFFFFFFFFFFFFFELL) + v59 + 2)
      {
        v70 = v32;
        v71 = v59;
        goto LABEL_74;
      }

      v73 = (v69 >> 1) + 1;
      if (v69 >= 0x3E)
      {
        v74 = v73 & 0xFFFFFFFFFFFFFFE0;
        v75 = (v59 + 32);
        v76 = (v32 + 16);
        v77 = v73 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v78 = *v76[-2].i8;
          v79 = vmovl_u8(*v76);
          v80 = vmovl_high_u8(*v76->i8);
          v75[-2] = vmovl_u8(*v78.i8);
          v75[-1] = vmovl_high_u8(v78);
          *v75 = v79;
          v75[1] = v80;
          v75 += 4;
          v76 += 4;
          v77 -= 32;
        }

        while (v77);
        if (v73 == v74)
        {
          goto LABEL_15;
        }

        if ((v73 & 0x18) == 0)
        {
          v71 = (v59 + 2 * v74);
          v70 = (v32 + v74);
          do
          {
LABEL_74:
            v72 = *v70++;
            *v71++ = v72;
          }

          while (v71 != v60);
          goto LABEL_15;
        }
      }

      else
      {
        v74 = 0;
      }

      v70 = (v32 + (v73 & 0xFFFFFFFFFFFFFFF8));
      v71 = (v59 + 2 * (v73 & 0xFFFFFFFFFFFFFFF8));
      v81 = (v59 + 2 * v74);
      v82 = (v32 + v74);
      v83 = v74 - (v73 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v84 = *v82++;
        *v81++ = vmovl_u8(v84);
        v83 += 8;
      }

      while (v83);
      if (v73 == (v73 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_15;
      }

      goto LABEL_74;
    }

    v35 = &v26[v30];
    v32 = a4;
    if (v30 < 0x40)
    {
      v36 = v105 + 20;
    }

    else
    {
      v36 = &v26[v30 & 0xFFFFFFC0];
      v37 = 0uLL;
      v38 = (v105 + 20);
      do
      {
        v106.val[0] = *v29;
        v39 = v29[1];
        v108.val[0] = v29[2];
        v40 = v29[3];
        v29 += 4;
        v41 = v40;
        v108.val[1] = 0uLL;
        v110.val[0] = v39;
        v106.val[1] = 0uLL;
        v42 = v38;
        vst2q_s8(v42, v106);
        v42 += 32;
        v110.val[1] = 0uLL;
        vst2q_s8(v42, v110);
        v43 = v38 + 64;
        vst2q_s8(v43, v108);
        v44 = v38 + 96;
        vst2q_s8(v44, *(&v37 - 1));
        v38 += 128;
      }

      while (v38 != v36);
    }

    if (v36 == v35)
    {
      goto LABEL_64;
    }

    v52 = v105 + 2 * v30 - v36 + 18;
    if (v52 < 0xE || (v36 < v29->u64 + (v52 >> 1) + 1 ? (v53 = v29 >= (v52 & 0xFFFFFFFFFFFFFFFELL) + v36 + 2) : (v53 = 1), !v53))
    {
      v56 = v29;
      v57 = v36;
      goto LABEL_55;
    }

    v54 = (v52 >> 1) + 1;
    if (v52 >= 0x3E)
    {
      v55 = v54 & 0xFFFFFFFFFFFFFFE0;
      v96 = (v36 + 32);
      v97 = &v29[1];
      result = v54 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v98 = *v97[-2].i8;
        v99 = vmovl_u8(*v97);
        v100 = vmovl_high_u8(*v97->i8);
        v96[-2] = vmovl_u8(*v98.i8);
        v96[-1] = vmovl_high_u8(v98);
        *v96 = v99;
        v96[1] = v100;
        v96 += 4;
        v97 += 4;
        result -= 32;
      }

      while (result);
      if (v54 == v55)
      {
        goto LABEL_64;
      }

      if ((v54 & 0x18) == 0)
      {
        v57 = (v36 + 2 * v55);
        v56 = (v29 + v55);
        goto LABEL_55;
      }
    }

    else
    {
      v55 = 0;
    }

    result = v54 & 0xFFFFFFFFFFFFFFF8;
    v56 = (v29 + (v54 & 0xFFFFFFFFFFFFFFF8));
    v57 = (v36 + 2 * (v54 & 0xFFFFFFFFFFFFFFF8));
    v101 = (v36 + 2 * v55);
    v102 = &v29->i8[v55];
    v103 = v55 - (v54 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v104 = *v102++;
      *v101++ = vmovl_u8(v104);
      v103 += 8;
    }

    while (v103);
    if (v54 == result)
    {
      goto LABEL_64;
    }

    do
    {
LABEL_55:
      v58 = v56->u8[0];
      v56 = (v56 + 1);
      *v57++ = v58;
    }

    while (v57 != v35);
    goto LABEL_64;
  }

  if (!result)
  {
LABEL_14:
    v11 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_15;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_15;
  }

  v10 = result;
  result = WTF::tryFastCompactMalloc((result + 20));
  v11 = v105;
  if (!v105)
  {
LABEL_15:
    *a6 = v11;
    return result;
  }

  v12 = (v105 + 20);
  *v105 = 2;
  *(v105 + 4) = v10;
  *(v105 + 8) = v105 + 20;
  *(v105 + 16) = 4;
  if (!a3)
  {
    v33 = 0;
    v20 = a4;
    v17 = a5;
    goto LABEL_59;
  }

  v13 = v10;
  v14 = a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 4);
  v17 = a5;
  if ((*(a3 + 16) & 4) != 0)
  {
    v20 = a4;
    if (v16)
    {
      if (v16 == 1)
      {
        *v12 = *v15;
      }

      else
      {
        result = memcpy((v105 + 20), *(a3 + 8), *(a3 + 4));
        v14 = a3;
        v13 = v10;
        v17 = a5;
        v20 = a4;
      }
    }
  }

  else
  {
    v18 = &v12[v16];
    if (v16 < 0x10)
    {
      v19 = v105 + 20;
      v20 = a4;
    }

    else
    {
      v19 = v105 + 20;
      v20 = a4;
      do
      {
        v21 = vld2q_s8(v15);
        v15 += 32;
        *v19 = v21;
        v19 += 16;
      }

      while (v19 != &v12[v16 & 0xFFFFFFF0]);
    }

    if (v19 != v18)
    {
      v45 = v105 + v16;
      v46 = v105 + v16 - v19 + 20;
      if (v46 < 4 || (v19 < &v15[2 * v45 + 40 + -2 * v19] ? (v47 = v15 >= v45 + 20) : (v47 = 1), !v47))
      {
        v49 = v19;
        v50 = v15;
        goto LABEL_42;
      }

      if (v46 >= 0x20)
      {
        v48 = v46 & 0xFFFFFFFFFFFFFFE0;
        v85 = (v15 + 32);
        v86 = (v19 + 16);
        v87 = v46 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v89 = v85[-2];
          v88 = v85[-1];
          v91 = *v85;
          v90 = v85[1];
          v85 += 4;
          v86[-1] = vuzp1q_s8(v89, v88);
          *v86 = vuzp1q_s8(v91, v90);
          v86 += 2;
          v87 -= 32;
        }

        while (v87);
        if (v46 == v48)
        {
          goto LABEL_58;
        }

        if ((v46 & 0x1C) == 0)
        {
          v50 = &v15[2 * v48];
          v49 = (v19 + v48);
          do
          {
LABEL_42:
            v51 = *v50;
            v50 += 2;
            *v49++ = v51;
          }

          while (v49 != v18);
          goto LABEL_58;
        }
      }

      else
      {
        v48 = 0;
      }

      v49 = (v19 + (v46 & 0xFFFFFFFFFFFFFFFCLL));
      v50 = &v15[2 * (v46 & 0xFFFFFFFFFFFFFFFCLL)];
      v92 = &v15[2 * v48];
      v93 = (v19 + v48);
      v94 = v48 - (v46 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v95 = *v92++;
        *v93++ = vuzp1_s8(v95, v95).u32[0];
        v94 += 4;
      }

      while (v94);
      if (v46 != (v46 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_42;
      }
    }
  }

LABEL_58:
  v33 = *(v14 + 4);
  if (v33 <= v13)
  {
LABEL_59:
    if (v17)
    {
      if (v17 == 1)
      {
        v12[v33] = *v20;
      }

      else
      {
        result = memcpy(&v12[v33], v20, v17);
      }
    }

    goto LABEL_15;
  }

LABEL_105:
  __break(1u);
  return result;
}

uint64_t WebCore::StorageThread::start(uint64_t this)
{
  v1 = this;
  if (!*(this + 8))
  {
    if (*(this + 16))
    {
      v2 = WTF::fastMalloc(0x10);
      *v2 = &unk_1F472AA80;
    }

    else
    {
      v2 = WTF::fastMalloc(0x10);
      *v2 = &unk_1F472AA58;
    }

    v2[1] = v1;
    v21 = v2;
    WTF::Thread::create();
    v3 = *(v1 + 8);
    *(v1 + 8) = v22;
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::Thread::~Thread(v3);
      WTF::fastFree(v19, v20);
    }

    this = v21;
    if (v21)
    {
      this = (*(*v21 + 8))(v21);
    }
  }

  if ((_MergedGlobals_7 & 1) == 0)
  {
    qword_1ED6A60C8 = 0;
    _MergedGlobals_7 = 1;
    ++*v1;
    if (v1 != -1)
    {
      goto LABEL_12;
    }

LABEL_36:
    __break(0xC471u);
    JUMPOUT(0x1C79DCB64);
  }

  ++*v1;
  if (v1 == -1)
  {
    goto LABEL_36;
  }

LABEL_12:
  if (!v1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79DCB84);
  }

  v4 = qword_1ED6A60C8;
  if (qword_1ED6A60C8 || (this = WTF::HashTable<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>,WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::HashTraits<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::HashTraits<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::FastMalloc>::rehash(8u), (v4 = qword_1ED6A60C8) != 0))
  {
    v5 = *(v4 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  v7 = (~(v1 << 32) + v1) ^ ((~(v1 << 32) + v1) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = (v9 >> 31) ^ v9;
  for (i = 1; ; ++i)
  {
    v12 = v10 & v5;
    v13 = (v4 + 8 * (v10 & v5));
    v14 = *v13;
    if (*v13 == -1)
    {
      v6 = (v4 + 8 * v12);
      goto LABEL_18;
    }

    if (!v14)
    {
      break;
    }

    if (v14 == v1)
    {
      if (!*v1)
      {
        __break(0xC471u);
        JUMPOUT(0x1C79DCBA4);
      }

      --*v1;
      return this;
    }

LABEL_18:
    v10 = i + v12;
  }

  if (v6)
  {
    *v6 = 0;
    v4 = qword_1ED6A60C8;
    --*(qword_1ED6A60C8 - 16);
    *v6 = v1;
  }

  else
  {
    *v13 = v1;
  }

  v15 = *(v4 - 16);
  v16 = *(v4 - 12) + 1;
  *(v4 - 12) = v16;
  v17 = (v15 + v16);
  v18 = *(v4 - 4);
  if (v18 > 0x400)
  {
    if (v18 > 2 * v17)
    {
      return this;
    }
  }

  else
  {
    if (3 * v18 > 4 * v17)
    {
      return this;
    }

    if (!v18)
    {
      return WTF::HashTable<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>,WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::HashTraits<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::HashTraits<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::FastMalloc>::rehash(8u);
    }
  }

  return WTF::HashTable<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>,WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::HashTraits<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::HashTraits<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::FastMalloc>::rehash(v18 << (6 * v16 >= (2 * v18)));
}

uint64_t WebCore::StorageThread::threadEntryPoint(uint64_t this)
{
  v1 = this;
  v2 = (this + 24);
  v3 = this + 25;
  while (2)
  {
    v4 = 0;
    atomic_compare_exchange_strong_explicit(v2, &v4, 1u, memory_order_acquire, memory_order_acquire);
    if (!v4)
    {
      if ((*(v1 + 64) & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_30:
      v14 = 0;
      goto LABEL_31;
    }

    this = MEMORY[0x1CCA63990](v2);
    if (*(v1 + 64))
    {
      goto LABEL_30;
    }

LABEL_5:
    while (1)
    {
      v5 = *(v1 + 32);
      if (v5 != *(v1 + 40))
      {
        break;
      }

      v23 = 0x7FF0000000000000;
      v24 = 1;
      v28 = WTF::TimeWithDynamicClockType::nowWithSameClock(&v23);
      LODWORD(v29) = v6;
      this = WTF::operator<=>();
      if (this == 0xFF)
      {
        v7 = 1;
        v9 = 1;
        atomic_compare_exchange_strong_explicit(v2, &v9, 0, memory_order_release, memory_order_relaxed);
        if (v9 == 1)
        {
          v10 = 0;
          atomic_compare_exchange_strong_explicit(v2, &v10, 1u, memory_order_acquire, memory_order_acquire);
          if (v10)
          {
            goto LABEL_8;
          }
        }

        else
        {
          this = WTF::Lock::unlockSlow(v2);
          v11 = 0;
          atomic_compare_exchange_strong_explicit(v2, &v11, 1u, memory_order_acquire, memory_order_acquire);
          if (v11)
          {
            goto LABEL_8;
          }
        }

LABEL_12:
        if ((*(v1 + 64) | v7))
        {
          goto LABEL_30;
        }
      }

      else
      {
        v25 = v2;
        v26 = v3;
        v28 = WTF::ScopedLambdaRefFunctor<BOOL ()(void),BOOL WTF::Condition::waitUntilUnchecked<WTF::Lock>(WTF::Lock &,WTF::TimeWithDynamicClockType const&)::{lambda(void)#1}>::implFunction;
        v29 = &v28;
        v30 = &v26;
        v27[0] = WTF::ScopedLambdaRefFunctor<void ()(void),BOOL WTF::Condition::waitUntilUnchecked<WTF::Lock>(WTF::Lock &,WTF::TimeWithDynamicClockType const&)::{lambda(void)#2}>::implFunction;
        v27[1] = v27;
        v27[2] = &v25;
        this = WTF::ParkingLot::parkConditionallyImpl();
        v7 = this ^ 1;
        v8 = 0;
        atomic_compare_exchange_strong_explicit(v2, &v8, 1u, memory_order_acquire, memory_order_acquire);
        if (!v8)
        {
          goto LABEL_12;
        }

LABEL_8:
        this = MEMORY[0x1CCA63990](v2);
        if ((*(v1 + 64) | v7))
        {
          goto LABEL_30;
        }
      }
    }

    v12 = *(v1 + 56);
    if (v5 >= v12)
    {
      goto LABEL_37;
    }

    v13 = *(v1 + 48);
    this = v13 + 8 * v5;
    v14 = *this;
    *this = 0;
    v15 = *(v1 + 32);
    v16 = v5 - v15;
    if (v5 >= v15)
    {
      if (v16 == -1)
      {
        v16 = v12 - v15;
        if (v12 <= v15)
        {
          goto LABEL_37;
        }
      }

      else if (v12 - v15 < v16 || v12 <= v15)
      {
LABEL_37:
        __break(1u);
        return this;
      }

      this = memmove((v13 + 8 * v15 + 8), (v13 + 8 * v15), 8 * v16);
      *(v1 + 32) = (*(v1 + 32) + 1) % *(v1 + 56);
      goto LABEL_31;
    }

    v17 = v5 + 1;
    v18 = *(v1 + 40) - (v5 + 1);
    v19 = v12 - v17;
    if (v18 == -1)
    {
      v18 = v19;
    }

    else if (v19 < v18)
    {
      goto LABEL_37;
    }

    this = memmove(this, (v13 + 8 * v17), 8 * v18);
    *(v1 + 40) = (*(v1 + 40) + *(v1 + 56) - 1) % *(v1 + 56);
LABEL_31:
    v20 = 1;
    atomic_compare_exchange_strong_explicit(v2, &v20, 0, memory_order_release, memory_order_relaxed);
    if (v20 != 1)
    {
      this = WTF::Lock::unlockSlow(v2);
      if (!v14)
      {
        return this;
      }

LABEL_33:
      WTF::AutodrainedPool::AutodrainedPool(&v28);
      (*(**v14 + 16))();
      WTF::AutodrainedPool::~AutodrainedPool(&v28);
      v22 = *v14;
      *v14 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      this = WTF::fastFree(v14, v21);
      continue;
    }

    break;
  }

  if (v14)
  {
    goto LABEL_33;
  }

  return this;
}

unint64_t *WebCore::StorageThread::dispatch(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 24);
  v5 = WTF::fastMalloc(8);
  v6 = 0;
  v7 = *a2;
  *a2 = 0;
  *v5 = v7;
  atomic_compare_exchange_strong_explicit(v4, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x1CCA63990](v4);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    result = (a1 + 32);
    if (v10)
    {
LABEL_3:
      if (v9 + 1 != v10)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    result = (a1 + 32);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v11 = *(a1 + 56);
  if (!v9)
  {
    if (v11)
    {
      v9 = 0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v9 == v11 - 1)
  {
LABEL_11:
    result = WTF::Deque<std::unique_ptr<WTF::Function<void ()(void)>>,0ul>::expandCapacity(result);
    v9 = *(a1 + 40);
  }

LABEL_12:
  v12 = *(a1 + 56);
  if (v9 >= v12)
  {
    __break(1u);
    return result;
  }

  *(*(a1 + 48) + 8 * v9) = v5;
  if (v9 == v12 - 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9 + 1;
  }

  *(a1 + 40) = v13;
  result = (a1 + 25);
  v14 = atomic_load((a1 + 25));
  if ((v14 & 1) == 0)
  {
    v15 = 1;
    atomic_compare_exchange_strong_explicit(v4, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 == 1)
    {
      return result;
    }

    return WTF::Lock::unlockSlow(v4);
  }

  v18 = 0;
  v17[0] = a1 + 25;
  v17[1] = &v18;
  v19[0] = WTF::ScopedLambdaRefFunctor<long ()(WTF::ParkingLot::UnparkResult),WTF::Condition::notifyOne(void)::{lambda(WTF::ParkingLot::UnparkResult)#1}>::implFunction;
  v19[1] = v19;
  v19[2] = v17;
  result = WTF::ParkingLot::unparkOneImpl();
  v16 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != 1)
  {
    return WTF::Lock::unlockSlow(v4);
  }

  return result;
}

uint64_t WebCore::StorageThread::terminate(uint64_t this)
{
  v1 = this;
  if (_MergedGlobals_7)
  {
    v2 = qword_1ED6A60C8;
    v3 = *this + 1;
    *this = v3;
    if (!v2)
    {
      goto LABEL_16;
    }

    if (this != -1)
    {
      if (!this)
      {
        __break(0xC471u);
        JUMPOUT(0x1C79DD37CLL);
      }

      v4 = *(v2 - 8);
      v5 = (~(this << 32) + this) ^ ((~(this << 32) + this) >> 22);
      v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
      v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
      v8 = v4 & ((v7 >> 31) ^ v7);
      for (i = 1; ; ++i)
      {
        v10 = v8;
        v11 = *(v2 + 8 * v8);
        if (v11 != -1)
        {
          if (!v11)
          {
            goto LABEL_15;
          }

          if (v11 == this)
          {
            break;
          }
        }

        v8 = (v10 + i) & v4;
      }

      if (v10 == *(v2 - 4))
      {
        goto LABEL_15;
      }

      *(v2 + 8 * v10) = 0;
      if (*v11)
      {
        --*v11;
        v12 = *(v2 - 4);
        *(v2 + 8 * v10) = -1;
        v13 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
        *(v2 - 16) = v13;
        if (v12 >= 9 && 6 * v13.i32[1] < v12)
        {
          this = WTF::HashTable<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>,WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::HashTraits<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::HashTraits<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::FastMalloc>::rehash(v12 >> 1);
        }

LABEL_15:
        v3 = *v1;
LABEL_16:
        if (v3)
        {
          goto LABEL_17;
        }

LABEL_43:
        __break(0xC471u);
        goto LABEL_44;
      }
    }

LABEL_47:
    __break(0xC471u);
    JUMPOUT(0x1C79DD35CLL);
  }

  qword_1ED6A60C8 = 0;
  _MergedGlobals_7 = 1;
  v29 = *this;
  v3 = *this + 1;
  *this = v3;
  if (v29 == -1)
  {
    goto LABEL_43;
  }

LABEL_17:
  *v1 = v3 - 1;
  if (!*(v1 + 8))
  {
    return this;
  }

  v14 = (v1 + 24);
  v15 = WTF::fastMalloc(8);
  v16 = WTF::fastMalloc(0x10);
  v17 = 0;
  *v16 = &unk_1F472AA30;
  v16[1] = v1;
  *v15 = v16;
  atomic_compare_exchange_strong_explicit((v1 + 24), &v17, 1u, memory_order_acquire, memory_order_acquire);
  if (v17)
  {
    MEMORY[0x1CCA63990](v1 + 24);
    v20 = *(v1 + 32);
    v19 = *(v1 + 40);
    v18 = (v1 + 32);
    if (v20)
    {
LABEL_20:
      if (v19 + 1 != v20)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v20 = *(v1 + 32);
    v19 = *(v1 + 40);
    v18 = (v1 + 32);
    if (v20)
    {
      goto LABEL_20;
    }
  }

  v21 = *(v1 + 56);
  if (!v19)
  {
    if (v21)
    {
      v19 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v19 == v21 - 1)
  {
LABEL_28:
    WTF::Deque<std::unique_ptr<WTF::Function<void ()(void)>>,0ul>::expandCapacity(v18);
    v19 = *(v1 + 40);
  }

LABEL_29:
  v22 = *(v1 + 56);
  if (v19 >= v22)
  {
LABEL_44:
    __break(1u);
    goto LABEL_47;
  }

  *(*(v1 + 48) + 8 * v19) = v15;
  if (v19 == v22 - 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v19 + 1;
  }

  *(v1 + 40) = v23;
  v24 = atomic_load((v1 + 25));
  if ((v24 & 1) == 0)
  {
    v25 = 1;
    atomic_compare_exchange_strong_explicit(v14, &v25, 0, memory_order_release, memory_order_relaxed);
    if (v25 == 1)
    {
      goto LABEL_35;
    }

LABEL_39:
    WTF::Lock::unlockSlow((v1 + 24));
    WTF::Thread::waitForCompletion(*(v1 + 8));
    this = *(v1 + 8);
    *(v1 + 8) = 0;
    if (!this)
    {
      return this;
    }

    goto LABEL_36;
  }

  v31 = 0;
  v30[0] = v1 + 25;
  v30[1] = &v31;
  v32[0] = WTF::ScopedLambdaRefFunctor<long ()(WTF::ParkingLot::UnparkResult),WTF::Condition::notifyOne(void)::{lambda(WTF::ParkingLot::UnparkResult)#1}>::implFunction;
  v32[1] = v32;
  v32[2] = v30;
  WTF::ParkingLot::unparkOneImpl();
  v26 = 1;
  atomic_compare_exchange_strong_explicit(v14, &v26, 0, memory_order_release, memory_order_relaxed);
  if (v26 != 1)
  {
    goto LABEL_39;
  }

LABEL_35:
  WTF::Thread::waitForCompletion(*(v1 + 8));
  this = *(v1 + 8);
  *(v1 + 8) = 0;
  if (!this)
  {
    return this;
  }

LABEL_36:
  if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this);
    WTF::Thread::~Thread(this);
    return WTF::fastFree(v27, v28);
  }

  return this;
}

unsigned __int8 *WTF::Detail::CallableWrapper<WebCore::StorageThread::terminate(void)::$_0,void>::call(uint64_t a1, const void *a2)
{
  v2 = 0;
  v3 = *(a1 + 8);
  v4 = v3 + 24;
  atomic_compare_exchange_strong_explicit(v3 + 24, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    v3[64] = 1;
    result = v3 + 25;
    v6 = atomic_load(v3 + 25);
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    atomic_store(0, result);
    result = WTF::ParkingLot::unparkAll(result, a2);
    v9 = 1;
    atomic_compare_exchange_strong_explicit(v4, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 == 1)
    {
      return result;
    }

    goto LABEL_7;
  }

  MEMORY[0x1CCA63990](v3 + 24);
  v3[64] = 1;
  result = v3 + 25;
  v8 = atomic_load(v3 + 25);
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 == 1)
  {
    return result;
  }

LABEL_7:

  return WTF::Lock::unlockSlow((v3 + 24));
}

uint64_t WTF::Deque<std::unique_ptr<WTF::Function<void ()(void)>>,0ul>::destroyAll(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *result;
  v6 = v2 - *result;
  if (v2 < *result)
  {
    if (v2 <= v4)
    {
      if (v2)
      {
        v7 = result;
        v8 = 8 * v2;
        v9 = *(result + 16);
        do
        {
          v10 = *v9;
          *v9 = 0;
          if (v10)
          {
            v11 = *v10;
            *v10 = 0;
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }

            result = WTF::fastFree(v10, a2);
          }

          ++v9;
          v8 -= 8;
        }

        while (v8);
        v5 = *v7;
      }

      if (v5 <= v4)
      {
        if (v5 != v4)
        {
          v13 = 8 * v5;
          v14 = (v3 + v13);
          v15 = 8 * v4 - v13;
          do
          {
            v16 = *v14;
            *v14 = 0;
            if (v16)
            {
              v17 = *v16;
              *v16 = 0;
              if (v17)
              {
                (*(*v17 + 8))(v17);
              }

              result = WTF::fastFree(v16, a2);
            }

            ++v14;
            v15 -= 8;
          }

          while (v15);
        }

        return result;
      }
    }

LABEL_32:
    __break(1u);
    return result;
  }

  v12 = v4 - v5;
  if (v4 < v5)
  {
    goto LABEL_32;
  }

  if (v6 == -1)
  {
    v6 = v4 - v5;
    if (!v12)
    {
      return result;
    }
  }

  else
  {
    if (v12 < v6)
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      return result;
    }
  }

  v18 = 8 * v6;
  v19 = (v3 + 8 * v5);
  do
  {
    v20 = *v19;
    *v19 = 0;
    if (v20)
    {
      v21 = *v20;
      *v20 = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      result = WTF::fastFree(v20, a2);
    }

    ++v19;
    v18 -= 8;
  }

  while (v18);
  return result;
}

uint64_t WTF::HashTable<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>,WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::HashTraits<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::HashTraits<WTF::CheckedRef<WebCore::StorageThread,WTF::RawPtrTraits<WebCore::StorageThread>>>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = qword_1ED6A60C8;
  if (qword_1ED6A60C8)
  {
    v3 = *(qword_1ED6A60C8 - 4);
    v4 = *(qword_1ED6A60C8 - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = WTF::fastZeroedMalloc((8 * a1 + 16));
  v7 = result + 16;
  qword_1ED6A60C8 = result + 16;
  *(result + 8) = a1 - 1;
  *(result + 12) = a1;
  *result = 0;
  *(result + 4) = v4;
  if (v3)
  {
    v8 = 0;
    while (1)
    {
      v9 = (v2 + 8 * v8);
      v10 = *v9;
      if (*v9 != -1)
      {
        if (v10)
        {
          v11 = *(result + 8);
          v12 = (v10 + ~(v10 << 32)) ^ ((v10 + ~(v10 << 32)) >> 22);
          v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
          v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
          v15 = (v11 & ((v14 >> 31) ^ v14));
          v16 = 1;
          do
          {
            v6 = v15;
            v17 = *(v7 + 8 * v15);
            v15 = ((v15 + v16++) & v11);
          }

          while (v17);
          *v9 = 0;
          *(v7 + 8 * v6) = v10;
          v18 = *v9;
          *v9 = 0;
          if (v18)
          {
            if (!*v18)
            {
              result = 290;
              __break(0xC471u);
              return result;
            }

            --*v18;
          }
        }

        else
        {
          *v9 = 0;
        }
      }

      if (++v8 == v3)
      {
        goto LABEL_17;
      }
    }
  }

  if (v2)
  {
LABEL_17:

    return WTF::fastFree((v2 - 16), v6);
  }

  return result;
}

unint64_t *WTF::Deque<std::unique_ptr<WTF::Function<void ()(void)>>,0ul>::expandCapacity(unint64_t *result)
{
  v1 = *(result + 6);
  v2 = v1 + (v1 >> 2);
  if (v2 >= 0x1FFFFFFF)
  {
    __break(0xC471u);
    return result;
  }

  v3 = result;
  v4 = result[2];
  if (v2 <= 0xF)
  {
    v2 = 15;
  }

  v5 = v2 + 1;
  v6 = WTF::fastMalloc((8 * (v2 + 1)));
  *(v3 + 6) = v5;
  v3[2] = v6;
  v7 = *v3;
  v8 = v3[1];
  v9 = v8 - *v3;
  if (v8 >= *v3)
  {
    v8 = v1 - v7;
    if (v1 >= v7)
    {
      if (v9 == -1)
      {
LABEL_14:
        v9 = v8;
LABEL_15:
        result = memcpy(&v6[8 * v7], &v4[8 * v7], 8 * v9);
        if (!v4)
        {
          return result;
        }

        goto LABEL_16;
      }

      if (v8 >= v9)
      {
        goto LABEL_15;
      }
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 > v1)
  {
    goto LABEL_13;
  }

  v6 = memcpy(v6, v4, 8 * v8);
  v7 = *v3;
  v8 = v1 - *v3;
  if (v1 < *v3)
  {
    goto LABEL_13;
  }

  v10 = *(v3 + 6);
  if (v10 < v8)
  {
    goto LABEL_13;
  }

  v11 = v10 - v8;
  result = memcpy((v3[2] + 8 * (v10 - v8)), &v4[8 * v7], 8 * v8);
  *v3 = v11;
  if (!v4)
  {
    return result;
  }

LABEL_16:
  if (v3[2] == v4)
  {
    v3[2] = 0;
    *(v3 + 6) = 0;
    v13 = v4;
  }

  else
  {
    v13 = v4;
  }

  return WTF::fastFree(v13, v12);
}

void WebKit::StorageTracker::initializeTracker(uint64_t a1, void *a2)
{
  v3 = WebKit::storageTracker;
  if (!WebKit::storageTracker)
  {
    if (WebKit::StorageTracker::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::StorageTracker::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebKit::StorageTracker::operatorNewSlow(0x90);
    }

    v3 = NonCompact;
    *NonCompact = 0;
    WebCore::SQLiteDatabase::SQLiteDatabase((NonCompact + 8));
    WTF::String::isolatedCopy();
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
    v5 = WTF::fastMalloc(0x48);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0;
    *(v3 + 120) = v5;
    *(v3 + 128) = 0;
    *(v3 + 136) = 0x4072C00000000000;
    WebKit::storageTracker = v3;
  }

  *(v3 + 88) = a2;
  *(v3 + 129) = 1;
}

void *WebKit::StorageTracker::internalInitialize(WebKit::StorageTracker *this)
{
  *(this + 129) = 0;
  PAL::UTF8Encoding(this);
  v2 = WebKit::storageTracker;
  *(WebKit::storageTracker + 128) = 1;
  WebCore::StorageThread::start(*(v2 + 120));
  v3 = WebKit::storageTracker;
  if (*(WebKit::storageTracker + 128) == 1)
  {
    v4 = *(WebKit::storageTracker + 120);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F472AAD0;
    v5[1] = v3;
    v10 = v5;
    WebCore::StorageThread::dispatch(v4, &v10);
    v6 = v10;
    v10 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v7 = *(this + 15);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F472AAA8;
  v8[1] = this;
  v10 = v8;
  WebCore::StorageThread::dispatch(v7, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

double WebKit::StorageTracker::tracker(WebKit::StorageTracker *this, void *a2)
{
  if (WebKit::storageTracker)
  {
    if (*(WebKit::storageTracker + 129))
    {
      WebKit::StorageTracker::internalInitialize(WebKit::storageTracker);
    }
  }

  else
  {
    if (WebKit::StorageTracker::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::StorageTracker::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebKit::StorageTracker::operatorNewSlow(0x90);
    }

    *NonCompact = 0;
    v4 = NonCompact;
    WebCore::SQLiteDatabase::SQLiteDatabase((NonCompact + 8));
    WTF::String::isolatedCopy();
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    *(v4 + 96) = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
    v5 = WTF::fastMalloc(0x48);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    result = 0.0;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0;
    *(v4 + 120) = v5;
    *(v4 + 128) = 0;
    *(v4 + 136) = 0x4072C00000000000;
    WebKit::storageTracker = v4;
  }

  return result;
}

uint64_t WebKit::StorageTracker::openTrackerDatabase(WebKit::StorageTracker *this, int a2)
{
  v4 = WebCore::SQLiteDatabaseTracker::incrementTransactionInProgressCount(this);
  if (*(this + 2))
  {
    return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v4);
  }

  WTF::FileSystemImpl::pathByAppendingComponent();
  if (!a2)
  {
    if (!WTF::FileSystemImpl::fileExists(&v12, v6))
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  WTF::FileSystemImpl::parentPath(&v13, &v12, v6);
  AllDirectories = WTF::FileSystemImpl::makeAllDirectories(&v13, v7);
  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  if (AllDirectories)
  {
LABEL_10:
    if (WebCore::SQLiteDatabase::open() && (WebCore::SQLiteDatabase::tableExists() & 1) == 0)
    {
      WebCore::SQLiteDatabase::executeCommand();
    }
  }

LABEL_13:
  v4 = v12;
  v12 = 0;
  if (!v4 || atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v4);
  }

  v11 = WTF::StringImpl::destroy(v4, v8);
  return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v11);
}

uint64_t WebKit::StorageTracker::syncFileSystemAndTrackerDatabase(atomic_uchar *this)
{
  WebCore::SQLiteDatabaseTracker::incrementTransactionInProgressCount(this);
  v3 = 0;
  v4 = 1;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x1CCA63990](this);
  }

  WTF::FileSystemImpl::listDirectory(v78, (this + 72), v2);
  v5 = v78[0];
  v6 = HIDWORD(v78[1]);
  atomic_compare_exchange_strong_explicit(this, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(this);
  }

  v7 = 0;
  v80 = 0;
  v8 = this + 96;
  atomic_compare_exchange_strong_explicit(this + 96, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (!v7)
  {
    v75 = this;
    v9 = *(this + 13);
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_17:
    v11 = 0;
    v10 = 0;
    goto LABEL_18;
  }

  MEMORY[0x1CCA63990](this + 96);
  v75 = this;
  v9 = *(this + 13);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_7:
  v10 = *(v9 - 1);
  v11 = &v9[v10];
  if (*(v9 - 3))
  {
    if (!v10)
    {
      v14 = v9;
      goto LABEL_28;
    }

    v12 = 8 * v10;
    v13 = v9;
    while ((*v13 + 1) <= 1)
    {
      ++v13;
      v12 -= 8;
      if (!v12)
      {
        v13 = v11;
        break;
      }
    }

LABEL_13:
    v14 = &v9[*(v9 - 1)];
    if (v13 == v14)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_18:
  v13 = v11;
  v11 = &v9[v10];
  if (v9)
  {
    goto LABEL_13;
  }

  v14 = 0;
  if (!v13)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_22:
    WTF::String::isolatedCopy();
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v80, &v79, v15, v78);
    v17 = v79;
    v79 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    do
    {
      ++v13;
    }

    while (v13 != v11 && (*v13 + 1) <= 1);
  }

  while (v13 != v14);
LABEL_28:
  v74 = v5;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(v8, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {
    WTF::Lock::unlockSlow(v8);
  }

  v79 = 0;
  v19 = WTF::StringImpl::createWithoutCopyingNonEmpty();
  v22 = v78[0];
  v73 = v6;
  if (v6)
  {
    v23 = v5;
    v24 = (v5 + 8 * v6);
    do
    {
      v19 = *v23;
      if (*v23)
      {
        v25 = *(v19 + 4);
        if (v22)
        {
          v26 = v22[1];
          if (v25 > v26)
          {
            v14 = v26 | v14 & 0xFFFFFF0000000000 | (((v22[4] >> 2) & 1) << 32);
            v19 = WTF::StringImpl::endsWith();
            if (v19)
            {
              goto LABEL_40;
            }
          }
        }

        else if (v25)
        {
          v14 = v14 & 0xFFFFFF0000000000 | 0x100000000;
          v19 = WTF::StringImpl::endsWith();
          if (v19)
          {
LABEL_40:
            v27 = *(v75 + 9);
            if (v27)
            {
              v28 = *(v27 + 16);
              v27 = *(v27 + 4);
              v29 = ((v28 >> 2) & 1) << 32;
              v30 = *v23;
              if (*v23)
              {
                goto LABEL_42;
              }

LABEL_44:
              v32 = 0x100000000;
            }

            else
            {
              v29 = 0x100000000;
              v30 = *v23;
              if (!*v23)
              {
                goto LABEL_44;
              }

LABEL_42:
              v31 = *(v30 + 16);
              v30 = *(v30 + 4);
              v32 = ((v31 >> 2) & 1) << 32;
            }

            v11 = v27 | v11 & 0xFFFFFF0000000000 | v29;
            v5 = v30 | v5 & 0xFFFFFF0000000000 | v32;
            WTF::FileSystemImpl::pathByAppendingComponent();
            v34 = *v23;
            if (*v23)
            {
              v35 = v34[1];
              if (v22)
              {
                goto LABEL_47;
              }

LABEL_52:
              v36 = 0;
              if (!v34)
              {
                goto LABEL_53;
              }

LABEL_48:
              v33 = (v35 - v36);
              if (v34[1] <= v33)
              {
                atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
                v76 = v34;
                v37 = v80;
                if (!v80)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                WTF::StringImpl::substring(v34);
                v37 = v80;
                if (!v80)
                {
                  goto LABEL_67;
                }
              }

LABEL_56:
              if (v76 == -1)
              {
                __break(0xC471u);
                JUMPOUT(0x1C79DE4B4);
              }

              if (!v76)
              {
LABEL_143:
                __break(0xC471u);
                JUMPOUT(0x1C79DE474);
              }

              v38 = *(v37 - 8);
              v39 = *(v76 + 4);
              if (v39 < 0x100)
              {
                v40 = WTF::StringImpl::hashSlowCase(v76);
              }

              else
              {
                v40 = v39 >> 8;
              }

              for (i = 0; ; v40 = i + v42)
              {
                v42 = v40 & v38;
                v43 = *(v37 + 8 * (v40 & v38));
                if (v43 != -1)
                {
                  if (!v43)
                  {
                    goto LABEL_67;
                  }

                  if (WTF::equal(v43, v76, v33))
                  {
                    break;
                  }
                }

                ++i;
              }
            }

            else
            {
              v35 = 0;
              if (!v22)
              {
                goto LABEL_52;
              }

LABEL_47:
              v36 = v22[1];
              if (v34)
              {
                goto LABEL_48;
              }

LABEL_53:
              v76 = 0;
              v37 = v80;
              if (v80)
              {
                goto LABEL_56;
              }

LABEL_67:
              WebKit::StorageTracker::syncSetOriginDetails(v75, &v76, &v77);
            }

            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v79, &v76, v33, v78);
            v44 = v76;
            v76 = 0;
            if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v20);
            }

            v19 = v77;
            v77 = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v19 = WTF::StringImpl::destroy(v19, v20);
            }
          }
        }
      }

      ++v23;
    }

    while (v23 != v24);
  }

  if (!v80)
  {
    v46 = 0;
    v45 = 0;
LABEL_83:
    v48 = v46;
    v46 = &v80[v45];
    if (!v80)
    {
      v50 = 0;
      if (v48)
      {
        goto LABEL_90;
      }

      goto LABEL_110;
    }

    goto LABEL_81;
  }

  v45 = *(v80 - 1);
  v46 = &v80[v45];
  if (!*(v80 - 3))
  {
    goto LABEL_83;
  }

  if (v45)
  {
    v47 = 8 * v45;
    v48 = v80;
    while (*v48 + 1 <= 1)
    {
      ++v48;
      v47 -= 8;
      if (!v47)
      {
        v48 = v46;
        break;
      }
    }

LABEL_81:
    v49 = *(v80 - 1);
    goto LABEL_87;
  }

  v49 = 0;
  v48 = v80;
LABEL_87:
  v50 = &v80[v49];
  while (v48 != v50)
  {
LABEL_90:
    v51 = v79;
    if (v79)
    {
      v52 = *v48;
      if (*v48 == -1)
      {
        goto LABEL_143;
      }

      if (!v52)
      {
        __break(0xC471u);
        JUMPOUT(0x1C79DE494);
      }

      v53 = *(v79 - 2);
      v54 = *(v52 + 4);
      if (v54 < 0x100)
      {
        v55 = WTF::StringImpl::hashSlowCase(v52);
      }

      else
      {
        v55 = v54 >> 8;
      }

      for (j = 0; ; v55 = j + v57)
      {
        v57 = v55 & v53;
        v58 = *(v51 + (v55 & v53));
        if (v58 != -1)
        {
          if (!v58)
          {
            goto LABEL_102;
          }

          v19 = WTF::equal(v58, *v48, v21);
          if (v19)
          {
            break;
          }
        }

        ++j;
      }
    }

    else
    {
LABEL_102:
      v78[0] = v75;
      WTF::String::isolatedCopy();
      v59 = WTF::fastMalloc(0x18);
      *v59 = &unk_1F472AB20;
      v60 = *v78;
      v78[1] = 0;
      *(v59 + 8) = v60;
      v77 = v59;
      WTF::callOnMainThread();
      v61 = v77;
      v77 = 0;
      if (v61)
      {
        (*(*v61 + 8))(v61);
      }

      v19 = v78[1];
      v78[1] = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v19 = WTF::StringImpl::destroy(v19, v20);
      }
    }

    do
    {
      ++v48;
    }

    while (v48 != v46 && *v48 + 1 <= 1);
  }

LABEL_110:
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v19 = WTF::StringImpl::destroy(v22, v20);
  }

  v62 = v79;
  if (v79)
  {
    v63 = *(v79 - 1);
    if (v63)
    {
      v64 = v79;
      do
      {
        v65 = *v64;
        if (*v64 != -1)
        {
          *v64 = 0;
          if (v65)
          {
            if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v65, v20);
            }
          }
        }

        v64 = (v64 + 8);
        --v63;
      }

      while (v63);
    }

    v19 = WTF::fastFree((v62 - 16), v20);
  }

  v66 = v80;
  if (v80)
  {
    v67 = *(v80 - 1);
    if (v67)
    {
      v68 = v80;
      do
      {
        v69 = *v68;
        if (*v68 != -1)
        {
          *v68 = 0;
          if (v69)
          {
            if (atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v69, v20);
            }
          }
        }

        ++v68;
        --v67;
      }

      while (v67);
    }

    v19 = WTF::fastFree((v66 - 16), v20);
  }

  if (v73)
  {
    v70 = 8 * v73;
    v71 = v74;
    do
    {
      v19 = *v71;
      *v71 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v19 = WTF::StringImpl::destroy(v19, v20);
      }

      ++v71;
      v70 -= 8;
    }

    while (v70);
  }

  if (v74)
  {
    v19 = WTF::fastFree(v74, v20);
  }

  return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v19);
}

uint64_t WebKit::StorageTracker::syncSetOriginDetails(atomic_uchar *this, const WTF::String *a2, const WTF::String *a3)
{
  WebCore::SQLiteDatabaseTracker::incrementTransactionInProgressCount(this);
  v5 = 0;
  atomic_compare_exchange_strong_explicit(this, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x1CCA63990](this);
    v6 = 1;
    v7 = WebKit::StorageTracker::openTrackerDatabase(this, 1);
    if (!*(this + 2))
    {
      goto LABEL_28;
    }
  }

  else
  {
    v6 = 1;
    v7 = WebKit::StorageTracker::openTrackerDatabase(this, 1);
    if (!*(this + 2))
    {
      goto LABEL_28;
    }
  }

  v7 = WebCore::SQLiteDatabase::prepareStatement();
  if (v27)
  {
    goto LABEL_28;
  }

  WebCore::SQLiteStatement::bindText();
  WebCore::SQLiteStatement::bindText();
  WebCore::SQLiteStatement::step(v26);
  v9 = 0;
  atomic_compare_exchange_strong_explicit(this + 96, &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    MEMORY[0x1CCA63990](this + 96);
    v10 = (this + 104);
    v11 = *(this + 13);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_20:
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v10, a2, v8, v25);
    goto LABEL_21;
  }

  v10 = (this + 104);
  v11 = *(this + 13);
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_6:
  v12 = *a2;
  if (*a2 == -1 || !v12)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79DE7E0);
  }

  v13 = *(v11 - 8);
  v14 = *(v12 + 4);
  if (v14 < 0x100)
  {
    v15 = WTF::StringImpl::hashSlowCase(v12);
  }

  else
  {
    v15 = v14 >> 8;
  }

  for (i = 0; ; v15 = i + v17)
  {
    v17 = v15 & v13;
    v18 = *(v11 + 8 * (v15 & v13));
    if (v18 != -1)
    {
      if (!v18)
      {
        goto LABEL_20;
      }

      if (WTF::equal(v18, *a2, v8))
      {
        break;
      }
    }

    ++i;
  }

LABEL_21:
  v19 = 1;
  atomic_compare_exchange_strong_explicit(this + 96, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 == 1)
  {
    v20 = 0;
    v21 = this + 80;
    atomic_compare_exchange_strong_explicit(this + 80, &v20, 1u, memory_order_acquire, memory_order_acquire);
    if (!v20)
    {
      goto LABEL_23;
    }

LABEL_32:
    MEMORY[0x1CCA63990](v21);
    v7 = *(this + 11);
    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  WTF::Lock::unlockSlow((this + 96));
  v24 = 0;
  v21 = this + 80;
  atomic_compare_exchange_strong_explicit(this + 80, &v24, 1u, memory_order_acquire, memory_order_acquire);
  if (v24)
  {
    goto LABEL_32;
  }

LABEL_23:
  v7 = *(this + 11);
  if (v7)
  {
LABEL_24:
    v7 = (*(*v7 + 16))(v7, a2);
  }

LABEL_25:
  v22 = 1;
  atomic_compare_exchange_strong_explicit(v21, &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 == 1)
  {
    if (v27)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v7 = WTF::Lock::unlockSlow(v21);
  if (!v27)
  {
LABEL_27:
    WebCore::SQLiteStatement::~SQLiteStatement(v26);
  }

LABEL_28:
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    v7 = WTF::Lock::unlockSlow(this);
  }

  return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v7);
}

uint64_t WebKit::StorageTracker::setOriginDetails(uint64_t this, const WTF::StringImpl **a2, const WTF::String *a3)
{
  if (*(this + 128) != 1)
  {
    return this;
  }

  v4 = this;
  v5 = 0;
  v6 = (this + 96);
  atomic_compare_exchange_strong_explicit((this + 96), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x1CCA63990](this + 96, a2, a3);
    v7 = v4 + 13;
    v8 = v4[13];
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = (this + 104);
    v8 = *(this + 104);
    if (v8)
    {
LABEL_4:
      v9 = *a2;
      if (*a2 == -1 || !v9)
      {
        __break(0xC471u);
        JUMPOUT(0x1C79DEA2CLL);
      }

      v10 = *(v8 - 8);
      v11 = *(v9 + 4);
      if (v11 < 0x100)
      {
        v12 = WTF::StringImpl::hashSlowCase(v9);
      }

      else
      {
        v12 = v11 >> 8;
      }

      for (i = 0; ; v12 = i + v14)
      {
        v14 = v12 & v10;
        v15 = *(v8 + 8 * (v12 & v10));
        if (v15 != -1)
        {
          if (!v15)
          {
            goto LABEL_16;
          }

          this = WTF::equal(v15, *a2, a3);
          if (this)
          {
            break;
          }
        }

        ++i;
      }

      v16 = 0;
      goto LABEL_17;
    }
  }

LABEL_16:
  this = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v7, a2, a3, v24);
  v16 = 1;
LABEL_17:
  v17 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 == 1)
  {
    if (!v16)
    {
      return this;
    }
  }

  else
  {
    this = WTF::Lock::unlockSlow(v6);
    if (!v16)
    {
      return this;
    }
  }

  v24[0] = v4;
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  v18 = v25;
  v22 = *v24;
  v24[1] = 0;
  v25 = 0;
  v19 = WTF::fastMalloc(0x28);
  *v19 = &unk_1F472AB48;
  *(v19 + 8) = v4;
  *(v19 + 16) = v22;
  *(v19 + 32) = v18;
  v23 = v19;
  WTF::ensureOnMainThread();
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v21 = v25;
  v25 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  this = v24[1];
  v24[1] = 0;
  if (this)
  {
    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(this, v20);
    }
  }

  return this;
}

WTF::StringImpl *WebKit::StorageTracker::origins@<X0>(WTF::StringImpl *this@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((*(this + 128) & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    return this;
  }

  v3 = 0;
  v4 = this + 96;
  atomic_compare_exchange_strong_explicit(this + 96, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    v29 = this;
    MEMORY[0x1CCA63990](this + 96);
    this = v29;
    *a2 = 0;
    *(a2 + 8) = 0;
    v5 = *(v29 + 13);
    if (!v5)
    {
      goto LABEL_54;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v5 = *(this + 13);
    if (!v5)
    {
      goto LABEL_54;
    }
  }

  v6 = *(v5 - 12);
  if (v6)
  {
    if (v6 >> 27)
    {
      __break(0xC471u);
      return this;
    }

    v7 = this;
    this = WTF::fastMalloc((32 * v6));
    *(a2 + 8) = v6;
    *a2 = this;
    v8 = *(v7 + 13);
    if (v8 && *(v8 - 12))
    {
      v9 = this;
      v10 = *(v8 - 4);
      if (v10)
      {
        v11 = 8 * v10;
        v12 = *(v7 + 13);
        while ((*v12 + 1) <= 1)
        {
          ++v12;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        v12 = *(v7 + 13);
      }

      v13 = (v8 + 8 * v10);
      if (v12 != v13)
      {
        v14 = 0;
        do
        {
          v15 = *v12;
          if (*v12)
          {
            v16 = *(v15 + 16);
            v15 = *(v15 + 4);
            v17 = ((v16 >> 2) & 1) << 32;
          }

          else
          {
            v17 = 0x100000000;
          }

          v6 = v15 | v6 & 0xFFFFFF0000000000 | v17;
          this = WebCore::SecurityOriginData::fromDatabaseIdentifier();
          v19 = v34;
          if (v34 != 1)
          {
            goto LABEL_42;
          }

          if (v14 == *(a2 + 8))
          {
            this = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2, v14 + 1, v31);
            v9 = *a2;
            v20 = *a2 + 32 * *(a2 + 12);
            *v20 = 0;
            *(v20 + 24) = -1;
            v21 = (v20 + 24);
            v22 = this + 24;
            if (*(this + 24) != 255)
            {
              if (*(this + 24))
              {
                *v20 = *this;
              }

              else
              {
                v23 = *this;
                if (*this)
                {
                  atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
                }

                *v20 = v23;
                v24 = *(this + 1);
                if (v24)
                {
                  atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
                }

                *(v20 + 8) = v24;
                *(v20 + 16) = *(this + 4);
              }

LABEL_40:
              *v21 = *v22;
            }
          }

          else
          {
            v25 = v9 + 32 * v14;
            *v25 = 0;
            v25[24] = -1;
            v21 = (v25 + 24);
            if (v33 != 255)
            {
              if (v33)
              {
                *v25 = *v31;
              }

              else
              {
                v26 = v31[0];
                if (v31[0])
                {
                  atomic_fetch_add_explicit(v31[0], 2u, memory_order_relaxed);
                }

                *v25 = v26;
                v27 = v31[1];
                if (v31[1])
                {
                  atomic_fetch_add_explicit(v31[1], 2u, memory_order_relaxed);
                }

                *(v25 + 1) = v27;
                *(v25 + 4) = v32;
              }

              v22 = &v33;
              goto LABEL_40;
            }
          }

          v14 = *(a2 + 12) + 1;
          *(a2 + 12) = v14;
          v19 = v34;
LABEL_42:
          if ((v19 & 1) != 0 && !v33)
          {
            v28 = v31[1];
            v31[1] = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v18);
            }

            this = v31[0];
            v31[0] = 0;
            if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              this = WTF::StringImpl::destroy(this, v18);
            }
          }

          do
          {
            ++v12;
          }

          while (v12 != v13 && (*v12 + 1) <= 1);
        }

        while (v12 != v13);
      }
    }
  }

LABEL_54:
  v30 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v30, 0, memory_order_release, memory_order_relaxed);
  if (v30 != 1)
  {
    return WTF::Lock::unlockSlow(v4);
  }

  return this;
}

atomic_uchar *WebKit::StorageTracker::deleteAllOrigins(atomic_uchar *this)
{
  if (this[128] != 1)
  {
    return this;
  }

  v15[7] = v1;
  v15[8] = v2;
  v3 = this;
  v4 = 0;
  v5 = this + 96;
  atomic_compare_exchange_strong_explicit(this + 96, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x1CCA63990](this + 96);
    v6 = WebKit::StorageTracker::willDeleteAllOrigins(v3);
    v8 = *(v3 + 13);
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = WebKit::StorageTracker::willDeleteAllOrigins(this);
    v8 = *(v3 + 13);
    if (v8)
    {
LABEL_4:
      *(v3 + 13) = 0;
      v9 = *(v8 - 1);
      if (v9)
      {
        v10 = v8;
        do
        {
          v11 = *v10;
          if (*v10 != -1)
          {
            *v10 = 0;
            if (v11)
            {
              if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v11, v7);
              }
            }
          }

          ++v10;
          --v9;
        }

        while (v9);
      }

      v6 = WTF::fastFree((v8 - 2), v7);
    }
  }

  v12 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    v6 = WTF::Lock::unlockSlow(v5);
  }

  WebKit::WebStorageNamespaceProvider::clearLocalStorageForAllOrigins(v6);
  v13 = *(v3 + 15);
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F472AB98;
  v14[1] = v3;
  v15[0] = v14;
  WebCore::StorageThread::dispatch(v13, v15);
  this = v15[0];
  v15[0] = 0;
  if (this)
  {
    return (*(*this + 8))(this);
  }

  return this;
}

WTF::StringImpl *WebKit::StorageTracker::willDeleteAllOrigins(WTF::StringImpl *this)
{
  v1 = *(this + 13);
  if (v1 && *(v1 - 12))
  {
    v2 = this;
    v3 = *(v1 - 4);
    if (v3)
    {
      v4 = 8 * v3;
      for (i = *(this + 13); (*i + 1) <= 1; ++i)
      {
        v4 -= 8;
        if (!v4)
        {
          return this;
        }
      }
    }

    else
    {
      i = *(this + 13);
    }

    v6 = (v1 + 8 * v3);
    if (i != v6)
    {
LABEL_10:
      WTF::String::isolatedCopy();
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v2 + 14, &v10, v7, &v9);
      this = v10;
      v10 = 0;
      if (this)
      {
        if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          this = WTF::StringImpl::destroy(this, v8);
        }
      }

      while (++i != v6)
      {
        if ((*i + 1) > 1)
        {
          if (i != v6)
          {
            goto LABEL_10;
          }

          return this;
        }
      }
    }
  }

  return this;
}

uint64_t WebKit::StorageTracker::canDeleteOrigin(atomic_uchar *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v4 = 0;
  v5 = this + 96;
  atomic_compare_exchange_strong_explicit(this + 96, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x1CCA63990](this + 96);
    v6 = *(this + 14);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v6 = *(this + 14);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_3:
  v7 = *a2;
  if (*a2 == -1 || !v7)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79DF118);
  }

  v8 = *(v6 - 8);
  v9 = *(v7 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(v7);
  }

  else
  {
    v10 = v9 >> 8;
  }

  for (i = 0; ; v10 = i + v12)
  {
    v12 = v10 & v8;
    result = *(v6 + 8 * (v10 & v8));
    if (result != -1)
    {
      if (!result)
      {
        goto LABEL_16;
      }

      if (WTF::equal(result, *a2, a3))
      {
        break;
      }
    }

    ++i;
  }

  result = 1;
LABEL_16:
  v15 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    v16 = result;
    WTF::Lock::unlockSlow(v5);
    return v16;
  }

  return result;
}

WTF::StringImpl *WebKit::StorageTracker::deleteOriginWithIdentifier(WebKit::StorageTracker *this, const WTF::String *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    result = WebCore::SecurityOriginData::fromDatabaseIdentifier();
    if (v9 != 1)
    {
      return result;
    }
  }

  else
  {
    result = WebCore::SecurityOriginData::fromDatabaseIdentifier();
    if (v9 != 1)
    {
      return result;
    }
  }

  result = WebKit::StorageTracker::deleteOrigin(this, &v6);
  if ((v9 & 1) != 0 && !v8)
  {
    v5 = v7;
    v7 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    result = v6;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  return result;
}

WTF::StringImpl *WebKit::StorageTracker::deleteOrigin(WTF::StringImpl *this, const WebCore::SecurityOriginData *a2)
{
  if (*(this + 128) == 1)
  {
    v19 = v2;
    v20 = v3;
    v5 = this;
    WebKit::WebStorageNamespaceProvider::clearLocalStorageForOrigin(a2, a2);
    WebCore::SecurityOriginData::databaseIdentifier(&v17, a2);
    v7 = 0;
    v8 = 1;
    atomic_compare_exchange_strong_explicit((v5 + 96), &v7, 1u, memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      MEMORY[0x1CCA63990](v5 + 96);
    }

    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v5 + 112), &v17, v6, v18);
    WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((v5 + 104), &v17, v9);
    atomic_compare_exchange_strong_explicit((v5 + 96), &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != 1)
    {
      WTF::Lock::unlockSlow((v5 + 96));
    }

    v10 = *(v5 + 120);
    v18[0] = v5;
    WTF::String::isolatedCopy();
    v11 = WTF::fastMalloc(0x18);
    *v11 = &unk_1F472ABC0;
    v12 = *v18;
    v18[1] = 0;
    *(v11 + 8) = v12;
    v16 = v11;
    WebCore::StorageThread::dispatch(v10, &v16);
    v14 = v16;
    v16 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v18[1];
    v18[1] = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    this = v17;
    v17 = 0;
    if (this)
    {
      if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(this, v13);
      }
    }
  }

  return this;
}

uint64_t WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79DF530);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  v9 = v8 < 0x100 ? WTF::StringImpl::hashSlowCase(v6) : v8 >> 8;
  for (i = 0; ; v9 = ++i + v11)
  {
    v11 = v9 & v7;
    v12 = *(v3 + 8 * v11);
    if (v12 != -1)
    {
      if (!v12)
      {
        return 0;
      }

      if (WTF::equal(v12, *a2, a3))
      {
        break;
      }
    }
  }

  v14 = (v3 + 8 * v11);
  v15 = *a1;
  if (*a1)
  {
    v15 += *(v15 - 1);
    if (v15 == v14)
    {
      return 0;
    }
  }

  if (v15 != v14)
  {
    v16 = *v14;
    *v14 = -1;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }

    v17 = *a1;
    v18 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
    *(v17 - 16) = v18;
    v19 = *(v17 - 4);
    if (6 * v18.i32[1] < v19 && v19 >= 9)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v19 >> 1, 0);
    }
  }

  return 1;
}

WebCore::SQLiteDatabaseTracker *WebKit::StorageTracker::databasePathForOrigin@<X0>(WebCore::SQLiteDatabaseTracker *this@<X0>, void *a2@<X8>)
{
  if (!*(this + 2))
  {
    *a2 = 0;
    return this;
  }

  WebCore::SQLiteDatabaseTracker::incrementTransactionInProgressCount(this);
  v4 = WebCore::SQLiteDatabase::prepareStatement();
  if (v8)
  {
    *a2 = 0;
    return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v4);
  }

  WebCore::SQLiteStatement::bindText();
  v5 = WebCore::SQLiteStatement::step(v7);
  if (v5 == 100)
  {
    if (v8)
    {
      mpark::throw_bad_variant_access(v5);
    }

    v5 = WebCore::SQLiteStatement::columnText(v7);
    if (!v8)
    {
      goto LABEL_11;
    }

    return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v5);
  }

  *a2 = 0;
  if (v8)
  {
    return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v5);
  }

LABEL_11:
  WebCore::SQLiteStatement::~SQLiteStatement(v7);
  return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v6);
}

uint64_t WebKit::StorageTracker::diskUsageForOrigin(WebKit::StorageTracker *this, WebCore::SecurityOrigin *a2)
{
  if (*(this + 128) != 1)
  {
    return 0;
  }

  v15[3] = v2;
  v15[4] = v3;
  v5 = 0;
  atomic_compare_exchange_strong_explicit(this, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v12 = a2;
    MEMORY[0x1CCA63990](this);
    a2 = v12;
  }

  WebCore::SecurityOriginData::databaseIdentifier(&v14, (a2 + 8));
  WebKit::StorageTracker::databasePathForOrigin(this, v15);
  v7 = v14;
  v14 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = v15[0];
  if (!v15[0])
  {
    result = 0;
    goto LABEL_18;
  }

  if (*(v15[0] + 1))
  {
    result = WTF::FileSystemImpl::fileSize(v15, v6);
    if ((v6 & 1) == 0)
    {
      result = 0;
    }

    v8 = v15[0];
    v15[0] = 0;
    if (!v8 || atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    result = 0;
    v15[0] = 0;
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_18;
    }
  }

  v10 = result;
  WTF::StringImpl::destroy(v8, v6);
  result = v10;
LABEL_18:
  v11 = 1;
  atomic_compare_exchange_strong_explicit(this, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    v13 = result;
    WTF::Lock::unlockSlow(this);
    return v13;
  }

  return result;
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::StorageTracker::internalInitialize(void)::$_0,void>::call()
{
  v6 = v0;
  v7 = v1;
  WTF::FileSystemImpl::pathByAppendingComponent();
  WTF::FileSystemImpl::deleteFile(&v5, v2);
  result = v5;
  v5 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

WebCore::SQLiteDatabaseTracker *WTF::Detail::CallableWrapper<WebKit::StorageTracker::importOriginIdentifiers(void)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  atomic_compare_exchange_strong_explicit(v2, &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](v2);
    result = WebKit::StorageTracker::openTrackerDatabase(v2, 0);
    if (!*(v2 + 16))
    {
      goto LABEL_26;
    }
  }

  else
  {
    result = WebKit::StorageTracker::openTrackerDatabase(v2, 0);
    if (!*(v2 + 16))
    {
      goto LABEL_26;
    }
  }

  WebCore::SQLiteDatabaseTracker::incrementTransactionInProgressCount(result);
  v4 = WebCore::SQLiteDatabase::prepareStatement();
  v5 = v29;
  if (!v29)
  {
    atomic_compare_exchange_strong_explicit((v2 + 96), &v5, 1u, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      MEMORY[0x1CCA63990](v2 + 96);
    }

    while (1)
    {
      v6 = WebCore::SQLiteStatement::step(v28);
      if (v6 != 100)
      {
        break;
      }

      if (!v29)
      {
        WebCore::SQLiteStatement::columnText(v28);
        WTF::String::isolatedCopy();
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v2 + 104), &v27, v7, v25);
        v9 = v27;
        v27 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }

        v6 = v26;
        v26 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v6 = WTF::StringImpl::destroy(v6, v8);
        }

        if (!v29)
        {
          continue;
        }
      }

      mpark::throw_bad_variant_access(v6);
    }

    v10 = 1;
    atomic_compare_exchange_strong_explicit((v2 + 96), &v10, 0, memory_order_release, memory_order_relaxed);
    v11 = v6;
    if (v10 == 1)
    {
      if (v29)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v6 = WTF::Lock::unlockSlow((v2 + 96));
      if (v29)
      {
LABEL_18:
        result = WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v6);
        if (v11 != 101)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    WebCore::SQLiteStatement::~SQLiteStatement(v28);
    result = WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v12);
    if (v11 != 101)
    {
      goto LABEL_27;
    }

LABEL_26:
    v13 = 1;
    goto LABEL_28;
  }

  result = WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v4);
LABEL_27:
  v13 = 0;
LABEL_28:
  v14 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 == 1)
  {
    if (!v13)
    {
      return result;
    }
  }

  else
  {
    result = WTF::Lock::unlockSlow(v2);
    if (!v13)
    {
      return result;
    }
  }

  WebKit::StorageTracker::syncFileSystemAndTrackerDatabase(v2);
  v15 = 0;
  atomic_compare_exchange_strong_explicit((v2 + 80), &v15, 1u, memory_order_acquire, memory_order_acquire);
  if (v15)
  {
    MEMORY[0x1CCA63990](v2 + 80);
    if (*(v2 + 88))
    {
LABEL_32:
      v16 = 0;
      atomic_compare_exchange_strong_explicit((v2 + 96), &v16, 1u, memory_order_acquire, memory_order_acquire);
      if (v16)
      {
        MEMORY[0x1CCA63990](v2 + 96);
        v17 = *(v2 + 104);
        if (v17)
        {
LABEL_34:
          if (*(v17 - 3))
          {
            v18 = *(v17 - 1);
            if (v18)
            {
              v19 = 8 * v18;
              v20 = v17;
              while ((*v20 + 1) <= 1)
              {
                ++v20;
                v19 -= 8;
                if (!v19)
                {
                  goto LABEL_39;
                }
              }
            }

            else
            {
              v20 = v17;
            }

            v24 = &v17[v18];
LABEL_48:
            if (v20 != v24)
            {
              (*(**(v2 + 88) + 16))(*(v2 + 88), v20);
              while (++v20 != v24)
              {
                if ((*v20 + 1) > 1)
                {
                  goto LABEL_48;
                }
              }
            }
          }
        }
      }

      else
      {
        v17 = *(v2 + 104);
        if (v17)
        {
          goto LABEL_34;
        }
      }

LABEL_39:
      v21 = 1;
      atomic_compare_exchange_strong_explicit((v2 + 96), &v21, 0, memory_order_release, memory_order_relaxed);
      if (v21 != 1)
      {
        WTF::Lock::unlockSlow((v2 + 96));
      }
    }
  }

  else if (*(v2 + 88))
  {
    goto LABEL_32;
  }

  v22 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 80), &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != 1)
  {
    WTF::Lock::unlockSlow((v2 + 80));
  }

  v23 = WTF::fastMalloc(0x10);
  *v23 = &unk_1F472AAF8;
  v23[1] = v2;
  v28[0] = v23;
  WTF::callOnMainThread();
  result = v28[0];
  v28[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl *a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79DFE2CLL);
  }

  v7 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, 8u, 0);
    v7 = *a1;
    if (!*a1)
    {
      v8 = 0;
      v9 = *a2;
      v10 = *(*a2 + 16);
      if (v10 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v11 = WTF::StringImpl::hashSlowCase(v9);
      goto LABEL_9;
    }
  }

  v8 = *(v7 - 8);
  v9 = *a2;
  v10 = *(*a2 + 16);
  if (v10 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = v10 >> 8;
LABEL_9:
  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v8;
    v15 = (v7 + 8 * (v11 & v8));
    v16 = *v15;
    if (*v15 == -1)
    {
      v12 = (v7 + 8 * v14);
      goto LABEL_11;
    }

    if (!v16)
    {
      if (v12)
      {
        *v12 = 0;
        --*(*a1 - 16);
        v15 = v12;
      }

      v20 = *a2;
      *a2 = 0;
      result = *v15;
      *v15 = v20;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      v21 = *a1;
      if (*a1)
      {
        v22 = *(v21 - 16);
        v23 = *(v21 - 12) + 1;
        *(v21 - 12) = v23;
        v24 = (v22 + v23);
        v25 = *(v21 - 4);
        if (v25 <= 0x400)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v23 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v24 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v25 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_24:
          if (3 * v25 > 4 * v24)
          {
LABEL_32:
            v26 = v21 + 8 * v25;
            v27 = 1;
            goto LABEL_35;
          }

          if (!v25)
          {
            result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, 8u, v15);
            v15 = result;
            v21 = *a1;
            if (!*a1)
            {
LABEL_27:
              v25 = 0;
              goto LABEL_32;
            }

LABEL_31:
            v25 = *(v21 - 4);
            goto LABEL_32;
          }

LABEL_30:
          result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v25 << (6 * v23 >= (2 * v25)), v15);
          v15 = result;
          v21 = *a1;
          if (!*a1)
          {
            goto LABEL_27;
          }

          goto LABEL_31;
        }
      }

      if (v25 > 2 * v24)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    result = WTF::equal(v16, *a2, a3);
    if (result)
    {
      break;
    }

LABEL_11:
    v11 = i + v14;
  }

  v18 = *a1;
  if (*a1)
  {
    v19 = *(v18 - 4);
  }

  else
  {
    v19 = 0;
  }

  v27 = 0;
  v26 = v18 + 8 * v19;
LABEL_35:
  *a4 = v15;
  *(a4 + 8) = v26;
  *(a4 + 16) = v27;
  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
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
      v13 = (v6 + 8 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
            v17 = *(v14 + 4);
            if (v17 >= 0x100)
            {
              goto LABEL_14;
            }

LABEL_16:
            v18 = WTF::StringImpl::hashSlowCase(v14);
          }

          else
          {
            v16 = 0;
            v17 = *(v14 + 4);
            if (v17 < 0x100)
            {
              goto LABEL_16;
            }

LABEL_14:
            v18 = v17 >> 8;
          }

          v19 = 0;
          do
          {
            v20 = v18 & v16;
            v18 = ++v19 + v20;
          }

          while (*(v15 + 8 * v20));
          v21 = (v15 + 8 * v20);
          v22 = *v13;
          *v13 = 0;
          *v21 = v22;
          v23 = *v13;
          *v13 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v10);
          }

          if (v13 == a3)
          {
            v12 = v21;
          }

          goto LABEL_8;
        }

        *v13 = 0;
      }

LABEL_8:
      if (++v11 == v7)
      {
        goto LABEL_23;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v6)
  {
LABEL_23:
    WTF::fastFree((v6 - 16), v10);
    return v12;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageTracker::syncImportOriginIdentifiers(void)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  atomic_compare_exchange_strong_explicit(v2, &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (!v1)
  {
    result = *(v2 + 88);
    if (!result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  MEMORY[0x1CCA63990](v2);
  result = *(v2 + 88);
  if (result)
  {
LABEL_3:
    result = (*(*result + 24))(result);
  }

LABEL_4:
  v4 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {

    return WTF::Lock::unlockSlow(v2);
  }

  return result;
}

WTF::StringImpl *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl *a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79E028CLL);
  }

  v7 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, 8u, 0);
    v7 = *a1;
    if (!*a1)
    {
      v8 = 0;
      v9 = *a2;
      v10 = *(*a2 + 16);
      if (v10 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v11 = WTF::StringImpl::hashSlowCase(v9);
      goto LABEL_9;
    }
  }

  v8 = *(v7 - 8);
  v9 = *a2;
  v10 = *(*a2 + 16);
  if (v10 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = v10 >> 8;
LABEL_9:
  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v8;
    v15 = (v7 + 8 * (v11 & v8));
    result = *v15;
    if (*v15 == -1)
    {
      v12 = (v7 + 8 * v14);
      goto LABEL_11;
    }

    if (!result)
    {
      if (v12)
      {
        result = 0;
        *v12 = 0;
        --*(*a1 - 16);
        v15 = v12;
      }

      v19 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
        result = *v15;
      }

      *v15 = v19;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      v20 = *a1;
      if (*a1)
      {
        v21 = *(v20 - 16);
        v22 = *(v20 - 12) + 1;
        *(v20 - 12) = v22;
        v23 = (v21 + v22);
        v24 = *(v20 - 4);
        if (v24 <= 0x400)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v22 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v23 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v24 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_26:
          if (3 * v24 > 4 * v23)
          {
LABEL_34:
            v25 = v20 + 8 * v24;
            v26 = 1;
            goto LABEL_37;
          }

          if (!v24)
          {
            result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, 8u, v15);
            v15 = result;
            v20 = *a1;
            if (!*a1)
            {
LABEL_29:
              v24 = 0;
              goto LABEL_34;
            }

LABEL_33:
            v24 = *(v20 - 4);
            goto LABEL_34;
          }

LABEL_32:
          result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v24 << (6 * v22 >= (2 * v24)), v15);
          v15 = result;
          v20 = *a1;
          if (!*a1)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }
      }

      if (v24 > 2 * v23)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    result = WTF::equal(result, *a2, a3);
    if (result)
    {
      break;
    }

LABEL_11:
    v11 = i + v14;
  }

  v17 = *a1;
  if (*a1)
  {
    v18 = *(v17 - 4);
  }

  else
  {
    v18 = 0;
  }

  v26 = 0;
  v25 = v17 + 8 * v18;
LABEL_37:
  *a4 = v15;
  *(a4 + 8) = v25;
  *(a4 + 16) = v26;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::StorageTracker::syncFileSystemAndTrackerDatabase(void)::$_0,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_1F472AB20;
  v2 = result[2];
  result[2] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageTracker::syncFileSystemAndTrackerDatabase(void)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472AB20;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v4 = a1;
    WTF::StringImpl::destroy(v3, a2);
    a1 = v4;
  }

  return WTF::fastFree(a1, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::StorageTracker::setOriginDetails(WTF::String const&,WTF::String const&)::$_1,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472AB48;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageTracker::setOriginDetails(WTF::String const&,WTF::String const&)::$_1,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F472AB48;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageTracker::setOriginDetails(WTF::String const&,WTF::String const&)::$_1,void>::call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 120);
  v3 = WTF::fastMalloc(0x20);
  *v3 = &unk_1F472AB70;
  v4 = *(a1 + 16);
  *(a1 + 24) = 0;
  *(v3 + 8) = v4;
  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  *(v3 + 24) = v5;
  v7 = v3;
  WebCore::StorageThread::dispatch(v2, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::StorageTracker::setOriginDetails(WTF::String const&,WTF::String const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472AB70;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageTracker::setOriginDetails(WTF::String const&,WTF::String const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F472AB70;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

unint64_t WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 32 * a1[3] <= a3)
  {
    WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v5;
  }
}

unsigned int *WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  v2 = result[2];
  if (v2 + (v2 >> 1) <= v2 + 1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = v2 + (v2 >> 1);
  }

  if (v3 <= a2)
  {
    v3 = a2;
  }

  if (v3 >> 27)
  {
    __break(0xC471u);
  }

  else
  {
    v4 = result;
    v5 = *result;
    if (v3 <= 0x10)
    {
      v6 = 16;
    }

    else
    {
      v6 = v3;
    }

    v7 = result[3];
    result = WTF::fastMalloc((32 * v6));
    v4[2] = v6;
    *v4 = result;
    if (v7)
    {
      v9 = result;
      v10 = 0;
      v11 = 32 * v7;
      do
      {
        v12 = &v9[v10 / 4];
        v13 = v5 + v10;
        *v12 = 0;
        *(v12 + 24) = -1;
        if (*(v5 + v10 + 24) != 255)
        {
          if (*(v5 + v10 + 24))
          {
            *v12 = *v13;
            v18 = v13[24];
            *(v12 + 24) = v18;
            if (!v18)
            {
LABEL_18:
              v19 = *(v5 + v10 + 8);
              *(v5 + v10 + 8) = 0;
              if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v19, v8);
              }

              result = *v13;
              *v13 = 0;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v8);
              }
            }
          }

          else
          {
            v14 = (v5 + v10);
            v15 = *(v5 + v10);
            *v14 = 0;
            v16 = &v9[v10 / 4];
            *v16 = v15;
            v17 = *(v5 + v10 + 8);
            v14[1] = 0;
            *(v16 + 1) = v17;
            v16[4] = *(v5 + v10 + 16);
            LODWORD(v14) = v13[24];
            *(v12 + 24) = v14;
            if (!v14)
            {
              goto LABEL_18;
            }
          }
        }

        v13[24] = -1;
        v10 += 32;
      }

      while (v11 != v10);
    }

    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        v4[2] = 0;
      }

      return WTF::fastFree(v5, v8);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageTracker::deleteAllOrigins(void)::$_0,void>::call(WebCore::SQLiteDatabaseTracker *a1)
{
  v1 = *(a1 + 1);
  WebCore::SQLiteDatabaseTracker::incrementTransactionInProgressCount(a1);
  v2 = 0;
  atomic_compare_exchange_strong_explicit(v1, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x1CCA63990](v1);
    v3 = WebKit::StorageTracker::openTrackerDatabase(v1, 0);
    if (!*(v1 + 16))
    {
      goto LABEL_30;
    }
  }

  else
  {
    v3 = WebKit::StorageTracker::openTrackerDatabase(v1, 0);
    if (!*(v1 + 16))
    {
      goto LABEL_30;
    }
  }

  v3 = WebCore::SQLiteDatabase::prepareStatement();
  if (v19)
  {
    goto LABEL_30;
  }

  v4 = (v1 + 80);
  while (1)
  {
    v14 = WebCore::SQLiteStatement::step(v18);
    if (v14 != 100)
    {
      break;
    }

    if (v19)
    {
      goto LABEL_35;
    }

    WebCore::SQLiteStatement::columnText(v18);
    v8 = WebKit::StorageTracker::canDeleteOrigin(v1, &v17, v6);
    v14 = v17;
    v17 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v14 = WTF::StringImpl::destroy(v14, v7);
    }

    if (v8)
    {
      if (v19)
      {
        goto LABEL_35;
      }

      WebCore::SQLiteStatement::columnText(v18);
      WTF::FileSystemImpl::deleteFile(&v17, v9);
      v14 = v17;
      v17 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v14 = WTF::StringImpl::destroy(v14, v10);
      }

      v11 = 0;
      atomic_compare_exchange_strong_explicit(v4, &v11, 1u, memory_order_acquire, memory_order_acquire);
      if (v11)
      {
        v14 = MEMORY[0x1CCA63990](v1 + 80);
        v12 = *(v1 + 88);
        if (v12)
        {
LABEL_20:
          if (v19)
          {
LABEL_35:
            mpark::throw_bad_variant_access(v14);
          }

          WebCore::SQLiteStatement::columnText(v18);
          (*(*v12 + 16))(v12, &v17);
          v14 = v17;
          v17 = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v14 = WTF::StringImpl::destroy(v14, v13);
          }
        }
      }

      else
      {
        v12 = *(v1 + 88);
        if (v12)
        {
          goto LABEL_20;
        }
      }

      v5 = 1;
      atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
      if (v5 != 1)
      {
        v14 = WTF::Lock::unlockSlow((v1 + 80));
      }
    }

    if (v19)
    {
      goto LABEL_35;
    }
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    sqlite3_file_control(v3, 0, 101, 0);
    v3 = WebCore::SQLiteDatabase::close((v1 + 8));
  }

  if (!v19)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v18);
  }

LABEL_30:
  v15 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    v3 = WTF::Lock::unlockSlow(v1);
  }

  return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v3);
}

void *WTF::Detail::CallableWrapper<WebKit::StorageTracker::deleteOrigin(WebCore::SecurityOriginData const&)::$_0,void>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_1F472ABC0;
  v2 = result[2];
  result[2] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageTracker::deleteOrigin(WebCore::SecurityOriginData const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F472ABC0;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v4 = a1;
    WTF::StringImpl::destroy(v3, a2);
    a1 = v4;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::StorageTracker::deleteOrigin(WebCore::SecurityOriginData const&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  WebCore::SQLiteDatabaseTracker::incrementTransactionInProgressCount(a1);
  v4 = 0;
  atomic_compare_exchange_strong_explicit(v2, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x1CCA63990](v2);
    v5 = WebKit::StorageTracker::canDeleteOrigin(v2, (a1 + 16), v13);
    if (!v5)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v5 = WebKit::StorageTracker::canDeleteOrigin(v2, (a1 + 16), v3);
    if (!v5)
    {
      goto LABEL_26;
    }
  }

  v5 = WebKit::StorageTracker::openTrackerDatabase(v2, 0);
  if (*(v2 + 16))
  {
    v5 = WebKit::StorageTracker::databasePathForOrigin(v2, &v25);
    if (v25)
    {
      if (!*(v25 + 1))
      {
        goto LABEL_23;
      }

      WebCore::SQLiteDatabase::prepareStatement();
      if (v24)
      {
        goto LABEL_23;
      }

      WebCore::SQLiteStatement::bindText();
      v7 = WebCore::SQLiteStatement::executeCommand(v23);
      if (!v24)
      {
        WebCore::SQLiteStatement::~SQLiteStatement(v23);
      }

      if (!v7)
      {
        goto LABEL_23;
      }

      WTF::FileSystemImpl::deleteFile(&v25, v6);
      v9 = 0;
      atomic_compare_exchange_strong_explicit((v2 + 96), &v9, 1u, memory_order_acquire, memory_order_acquire);
      if (v9)
      {
        MEMORY[0x1CCA63990](v2 + 96);
        WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((v2 + 104), (a1 + 16), v14);
        v10 = *(v2 + 104);
        v11 = 1;
        if (v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((v2 + 104), (a1 + 16), v8);
        v10 = *(v2 + 104);
        v11 = 1;
        if (v10)
        {
LABEL_12:
          v12 = *(v10 - 12) == 0;
          goto LABEL_17;
        }
      }

      v12 = 1;
LABEL_17:
      atomic_compare_exchange_strong_explicit((v2 + 96), &v11, 0, memory_order_release, memory_order_relaxed);
      if (v11 == 1)
      {
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v21 = v12;
        WTF::Lock::unlockSlow((v2 + 96));
        if (!v21)
        {
LABEL_19:
          v15 = 0;
          v16 = (v2 + 80);
          atomic_compare_exchange_strong_explicit((v2 + 80), &v15, 1u, memory_order_acquire, memory_order_acquire);
          if (!v15)
          {
            goto LABEL_20;
          }

          goto LABEL_31;
        }
      }

      sqlite3_file_control(*(v2 + 16), 0, 101, 0);
      WebCore::SQLiteDatabase::close((v2 + 8));
      v22 = 0;
      v16 = (v2 + 80);
      atomic_compare_exchange_strong_explicit((v2 + 80), &v22, 1u, memory_order_acquire, memory_order_acquire);
      if (!v22)
      {
LABEL_20:
        v17 = *(v2 + 88);
        if (!v17)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_31:
      MEMORY[0x1CCA63990](v16);
      v17 = *(v2 + 88);
      if (!v17)
      {
LABEL_22:
        v18 = 1;
        atomic_compare_exchange_strong_explicit(v16, &v18, 0, memory_order_release, memory_order_relaxed);
        if (v18 != 1)
        {
          WTF::Lock::unlockSlow(v16);
          v5 = v25;
          v25 = 0;
          if (!v5)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

LABEL_23:
        v5 = v25;
        v25 = 0;
        if (!v5)
        {
          goto LABEL_26;
        }

LABEL_24:
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v5 = WTF::StringImpl::destroy(v5, v6);
        }

        goto LABEL_26;
      }

LABEL_21:
      (*(*v17 + 16))(v17, a1 + 16);
      goto LABEL_22;
    }
  }

LABEL_26:
  v19 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    v5 = WTF::Lock::unlockSlow(v2);
  }

  return WebCore::SQLiteDatabaseTracker::decrementTransactionInProgressCount(v5);
}

void WebResourceLoadScheduler::pluginWillHandleLoadErrorFromResponse(WebResourceLoadScheduler *this@<X0>, uint64_t a2@<X8>)
{
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = WebCore::ResourceResponseBase::url(this);
  WTF::URL::createCFURL(&v14, v6);
  v7 = v14;
  v8 = *WebCore::ResourceResponseBase::mimeType(this);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v13, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v13 = &stru_1F472E7E8;
    v12 = &stru_1F472E7E8;
  }

  MEMORY[0x1CCA64920](a2, [v5 _initWithPluginErrorCode:204 contentURL:v7 pluginPageURL:0 pluginName:0 MIMEType:{v13, v13}]);
  v10 = v13;
  v13 = 0;
  if (v10)
  {
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
  }
}

void sub_1C79E0F80(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebResourceLoadScheduler::cancelledError(const WebCore::ResourceRequest *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A978];
  v6 = WebCore::ResourceRequestBase::url(a1);
  WTF::URL::createCFURL(&v8, v6);
  MEMORY[0x1CCA64920](a2, [v4 _webKitErrorWithDomain:v5 code:4294966297 URL:v8]);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }
}

void sub_1C79E1058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebResourceLoadScheduler::blockedError(const WebCore::ResourceRequest *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = WebKitErrorDomain;
  v6 = WebCore::ResourceRequestBase::url(a1);
  WTF::URL::createCFURL(&v8, v6);
  MEMORY[0x1CCA64920](a2, [v4 _webKitErrorWithDomain:v5 code:103 URL:v8]);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }
}

void sub_1C79E10F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebResourceLoadScheduler::blockedErrorFromRequest(WebResourceLoadScheduler *this@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = WebKitErrorDomain;
  v6 = WebCore::ResourceRequestBase::url(this);
  WTF::URL::createCFURL(&v8, v6);
  MEMORY[0x1CCA64920](a2, [v4 _webKitErrorWithDomain:v5 code:103 URL:v8]);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }
}

void sub_1C79E1194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebResourceLoadScheduler::cannotShowURLError(const WebCore::ResourceRequest *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = WebKitErrorDomain;
  v6 = WebCore::ResourceRequestBase::url(a1);
  WTF::URL::createCFURL(&v8, v6);
  MEMORY[0x1CCA64920](a2, [v4 _webKitErrorWithDomain:v5 code:101 URL:v8]);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }
}

void sub_1C79E1254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebResourceLoadScheduler::interruptedForPolicyChangeError(const WebCore::ResourceRequest *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = WebKitErrorDomain;
  v6 = WebCore::ResourceRequestBase::url(a1);
  WTF::URL::createCFURL(&v8, v6);
  MEMORY[0x1CCA64920](a2, [v4 _webKitErrorWithDomain:v5 code:102 URL:v8]);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }
}

void sub_1C79E12F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebResourceLoadScheduler::blockedByContentFilterError(const WebCore::ResourceRequest *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = WebKitErrorDomain;
  v6 = WebCore::ResourceRequestBase::url(a1);
  WTF::URL::createCFURL(&v8, v6);
  MEMORY[0x1CCA64920](a2, [v4 _webKitErrorWithDomain:v5 code:105 URL:v8]);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }
}

void sub_1C79E1394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebResourceLoadScheduler::cannotShowMIMETypeError(const WebCore::ResourceResponse *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A978];
  v6 = WebCore::ResourceResponseBase::url(a1);
  WTF::URL::createCFURL(&v8, v6);
  MEMORY[0x1CCA64920](a2, [v4 _webKitErrorWithDomain:v5 code:100 URL:v8]);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }
}

void sub_1C79E1434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebResourceLoadScheduler::fileDoesNotExistError(const WebCore::ResourceResponse *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A978];
  v6 = WebCore::ResourceResponseBase::url(a1);
  WTF::URL::createCFURL(&v8, v6);
  MEMORY[0x1CCA64920](a2, [v4 _webKitErrorWithDomain:v5 code:4294966196 URL:v8]);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }
}

void sub_1C79E14D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t LegacySocketProvider::createWebSocketChannel@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (WebCore::WebSocketChannel::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebCore::WebSocketChannel::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebCore::WebSocketChannel::operatorNewSlow(0);
  }

  v9 = NonCompact;
  *(NonCompact + 8) = 1;
  *NonCompact = &unk_1F472B100;
  v10 = NonCompact + 16;
  WebCore::ThreadableWebSocketChannel::ThreadableWebSocketChannel((NonCompact + 16));
  *v9 = &unk_1F472ADA8;
  *(v9 + 16) = &unk_1F472AEA8;
  *(v9 + 32) = &unk_1F472AF60;
  *(v9 + 40) = 0;
  if ((a2[2] & 0xFFFFFFFFFFFFLL) == 0 && (v11 = WTF::fastCompactMalloc(0x28), *v11 = 1, *(v11 + 8) = a2, WebCore::EventListenerMap::EventListenerMap((v11 + 16)), v13 = a2[2], a2[2] = v13 & 0xFFFF000000000000 | v11, v14 = (v13 & 0xFFFFFFFFFFFFLL), (v13 & 0xFFFFFFFFFFFFLL) != 0) && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WebCore::EventListenerMap::~EventListenerMap((v14 + 4), v12);
    WTF::fastFree(v14, v22);
    v23 = (a2[2] & 0xFFFFFFFFFFFFLL);
    atomic_fetch_add(v23, 1u);
    *(v9 + 48) = v23;
    *(v9 + 56) = a3;
    v16 = *(a3 + 8);
    if ((v16 & 1) == 0)
    {
LABEL_7:
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = (a2[2] & 0xFFFFFFFFFFFFLL);
    atomic_fetch_add(v15, 1u);
    *(v9 + 48) = v15;
    *(v9 + 56) = a3;
    v16 = *(a3 + 8);
    if ((v16 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v24 = WTF::fastMalloc(0x20);
  v16 = v24;
  *v24 = 0;
  *(v24 + 8) = xmmword_1C7B33820;
  *(v24 + 24) = a3;
  while (1)
  {
    v26 = *(a3 + 8);
    if ((v26 & 1) == 0)
    {
      break;
    }

    *(v24 + 8) = v26 >> 1;
    v27 = v26;
    atomic_compare_exchange_strong_explicit((a3 + 8), &v27, v24, memory_order_release, memory_order_relaxed);
    if (v27 == v26)
    {
      goto LABEL_8;
    }
  }

  WTF::fastFree(v24, v25);
  v16 = *(a3 + 8);
  if (v16)
  {
LABEL_8:
    v17 = 0;
    v18 = 1;
    atomic_compare_exchange_strong_explicit(v16, &v17, 1u, memory_order_acquire, memory_order_acquire);
    if (v17)
    {
      MEMORY[0x1CCA63990](v16);
      ++*(v16 + 16);
      atomic_compare_exchange_strong_explicit(v16, &v18, 0, memory_order_release, memory_order_relaxed);
      if (v18 == 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      ++*(v16 + 16);
      atomic_compare_exchange_strong_explicit(v16, &v18, 0, memory_order_release, memory_order_relaxed);
      if (v18 == 1)
      {
        goto LABEL_10;
      }
    }

    WTF::Lock::unlockSlow(v16);
  }

LABEL_10:
  *(v9 + 64) = v16;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  WebCore::TimerBase::TimerBase((v9 + 104));
  *(v9 + 104) = &unk_1F472A8C8;
  v19 = WTF::fastMalloc(0x20);
  *v19 = &unk_1F472B2E0;
  v19[1] = v9;
  v19[2] = WebCore::WebSocketChannel::resumeTimerFired;
  v19[3] = 0;
  *(v9 + 152) = v19;
  *(v9 + 160) = 0x1000000;
  WebCore::TimerBase::TimerBase((v9 + 168));
  *(v9 + 168) = &unk_1F472A8C8;
  v20 = WTF::fastMalloc(0x20);
  *v20 = &unk_1F472B2E0;
  v20[1] = v9;
  v20[2] = WebCore::WebSocketChannel::closingTimerFired;
  v20[3] = 0;
  *(v9 + 216) = v20;
  *(v9 + 224) = 0;
  *(v9 + 228) = 0;
  result = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(v9 + 232) = result;
  *(v9 + 240) = 0;
  *(v9 + 248) = 0;
  *(v9 + 256) = 0;
  *(v9 + 264) = 1006;
  *(v9 + 320) = 0;
  *(v9 + 328) = 0;
  *(v9 + 336) = 0;
  *(v9 + 344) = 0;
  *(v9 + 352) = 0;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0u;
  *(v9 + 300) = 0u;
  atomic_fetch_add((a1 + 8), 1u);
  *(v9 + 360) = a1;
  *a4 = v10;
  return result;
}

WTF *LegacySocketProvider::initializeWebTransportSession@<X0>(uint64_t *a1@<X8>)
{
  v107[1] = *MEMORY[0x1E69E9840];
  v92 = 0uLL;
  *&v93 = "initializeWebTransportSession";
  *(&v93 + 1) = 0;
  v2 = WTF::fastMalloc(0x80);
  *(v2 + 8) = 1;
  *v2 = &unk_1F472B150;
  v3 = v93;
  *(v2 + 16) = v92;
  *(v2 + 32) = v3;
  *(v2 + 48) = 0;
  v4 = (v2 + 48);
  *(v2 + 72) = 0;
  *(v2 + 80) = v2 + 96;
  *(v2 + 88) = 1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  v5 = WTF::NativePromiseBase::logChannel(v2);
  if (!*v5)
  {
    goto LABEL_62;
  }

  v6 = v5;
  if (v5[16] < 4u)
  {
    goto LABEL_62;
  }

  WTF::String::String(&v101, "creating ");
  WTF::LogArgument<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::toString(&v100, v2);
  v7 = v100;
  if (v101)
  {
    v8 = *(v101 + 1);
    if (v100)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (v100)
    {
LABEL_5:
      v9 = *(v100 + 1);
      if ((v9 | v8) < 0)
      {
        goto LABEL_167;
      }

      goto LABEL_9;
    }
  }

  v9 = 0;
  if (v8 < 0)
  {
LABEL_167:
    v94 = 0;
    goto LABEL_168;
  }

LABEL_9:
  v10 = (v8 + v9);
  if (__OFADD__(v8, v9))
  {
    goto LABEL_167;
  }

  if (!v101)
  {
    if (!v100)
    {
      WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v10, 1, 0, 0, &v94);
      if (!v94)
      {
        goto LABEL_168;
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v11 = *(v101 + 4);
  v12 = (v11 >> 2) & 1;
  if (v100 && (v11 & 4) != 0)
  {
LABEL_15:
    v12 = (*(v100 + 16) >> 2) & 1;
  }

  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v10, v12, v101, v100, &v94);
  if (!v94)
  {
LABEL_168:
    __break(0xC471u);
    JUMPOUT(0x1C79E22B4);
  }

LABEL_17:
  v100 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v13);
  }

  v14 = v101;
  v101 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = *(v6 + 4);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v16 || ((WTF::String::utf8(), v96) ? (v18 = v96 + 16) : (v18 = 0), *buf = 136446210, *v103 = v18, _os_log_impl(&dword_1C79C0000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu), v16 = v96, v96 = 0, !v16))
  {
LABEL_30:
    if (*v6)
    {
      goto LABEL_31;
    }

    goto LABEL_59;
  }

  if (*v16 != 1)
  {
    --*v16;
    goto LABEL_30;
  }

  v16 = WTF::fastFree(v16, v17);
  if (*v6)
  {
LABEL_31:
    if (v6[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::String::String(&v103[4], "creating ");
              v104 = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::toString(&v105, v2);
              v96 = 0;
              v97 = 0;
              v27 = WTF::fastMalloc(0x20);
              LODWORD(v97) = 2;
              v96 = v27;
              v28 = HIDWORD(v97);
              v29 = v27 + 16 * HIDWORD(v97);
              *v29 = *buf;
              v30 = *&v103[4];
              if (*&v103[4])
              {
                atomic_fetch_add_explicit(*&v103[4], 2u, memory_order_relaxed);
                v28 = HIDWORD(v97);
                v27 = v96;
              }

              *(v29 + 1) = v30;
              v31 = v28 + 1;
              HIDWORD(v97) = v31;
              v32 = v27 + 16 * v31;
              *v32 = v104;
              v33 = v105;
              if (v105)
              {
                atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
                v31 = HIDWORD(v97);
              }

              *(v32 + 1) = v33;
              HIDWORD(v97) = v31 + 1;
              (*(*v26 + 16))(v26, v6, 4, &v96);
              v34 = v96;
              if (HIDWORD(v97))
              {
                v35 = 16 * HIDWORD(v97);
                v36 = (v96 + 8);
                do
                {
                  v37 = *v36;
                  *v36 = 0;
                  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v37, v17);
                  }

                  v36 += 2;
                  v35 -= 16;
                }

                while (v35);
                v34 = v96;
              }

              if (v34)
              {
                v96 = 0;
                LODWORD(v97) = 0;
                WTF::fastFree(v34, v17);
              }

              v38 = v105;
              v105 = 0;
              if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v17);
              }

              v39 = *&v103[4];
              *&v103[4] = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v17);
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v40 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v40, 0, memory_order_release, memory_order_relaxed);
          v4 = (v2 + 48);
          if (v40 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_59:
  v5 = v94;
  v94 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v5 = WTF::StringImpl::destroy(v5, v17);
  }

LABEL_62:
  v41 = 0;
  *a1 = v2;
  v94 = v4;
  v95 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 48), &v41, 1u, memory_order_acquire, memory_order_acquire);
  if (v41)
  {
    v91 = MEMORY[0x1CCA63990](v4);
    v42 = WTF::NativePromiseBase::logChannel(v91);
    if (!*v42)
    {
      goto LABEL_143;
    }
  }

  else
  {
    v42 = WTF::NativePromiseBase::logChannel(v5);
    if (!*v42)
    {
      goto LABEL_143;
    }
  }

  v43 = v42;
  if (v42[16] < 4u)
  {
    goto LABEL_143;
  }

  WTF::Logger::LogSiteIdentifier::toString(&v100, &v92);
  WTF::String::String(&v99, " rejecting ");
  WTF::LogArgument<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::toString(&v98, v2);
  v44 = v98;
  if (v100)
  {
    v45 = *(v100 + 1);
    if (v99)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v45 = 0;
    if (v99)
    {
LABEL_67:
      v46 = *(v99 + 1);
      if (v98)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }
  }

  v46 = 0;
  if (v98)
  {
LABEL_68:
    v47 = *(v98 + 4);
    if ((v47 | v46) < 0)
    {
      goto LABEL_165;
    }

    goto LABEL_73;
  }

LABEL_72:
  v47 = 0;
  if (v46 < 0)
  {
LABEL_165:
    v101 = 0;
    goto LABEL_166;
  }

LABEL_73:
  v48 = __OFADD__(v46, v47);
  v49 = v46 + v47;
  v50 = v48;
  if (v45 < 0)
  {
    goto LABEL_165;
  }

  if (v50)
  {
    goto LABEL_165;
  }

  v51 = (v45 + v49);
  if (__OFADD__(v45, v49))
  {
    goto LABEL_165;
  }

  if (v100 && (*(v100 + 16) & 4) == 0)
  {
    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v51, 0, v100, v99, v98, &v101);
    if (!v101)
    {
      goto LABEL_166;
    }

    goto LABEL_90;
  }

  if (!v99)
  {
    if (!v98)
    {
      WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v51, 1, v100, 0, 0, &v101);
      if (!v101)
      {
        goto LABEL_166;
      }

      goto LABEL_90;
    }

    goto LABEL_88;
  }

  v53 = *(v99 + 4);
  v54 = (v53 >> 2) & 1;
  if (v98 && (v53 & 4) != 0)
  {
LABEL_88:
    v54 = (*(v98 + 16) >> 2) & 1;
  }

  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v51, v54, v100, v99, v98, &v101);
  if (!v101)
  {
LABEL_166:
    __break(0xC471u);
    JUMPOUT(0x1C79E22A8);
  }

LABEL_90:
  v98 = 0;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v52);
  }

  v55 = v99;
  v99 = 0;
  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v55, v52);
  }

  v56 = v100;
  v100 = 0;
  if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v56, v52);
  }

  v57 = *(v43 + 4);
  v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
  if (!v58 || ((WTF::String::utf8(), v96) ? (v60 = v96 + 16) : (v60 = 0), *buf = 136446210, *v103 = v60, _os_log_impl(&dword_1C79C0000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu), v58 = v96, v96 = 0, !v58))
  {
LABEL_106:
    if (*v43)
    {
      goto LABEL_107;
    }

    goto LABEL_140;
  }

  if (*v58 != 1)
  {
    --*v58;
    goto LABEL_106;
  }

  v58 = WTF::fastFree(v58, v59);
  if (*v43)
  {
LABEL_107:
    if (v43[16] >= 4u)
    {
      v61 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v62 = *v61;
        if (v62)
        {
          break;
        }

        v63 = *v61;
        atomic_compare_exchange_strong_explicit(v61, &v63, v62 | 1, memory_order_acquire, memory_order_acquire);
        if (v63 == v62)
        {
          v64 = WTF::Logger::observers(v58);
          v65 = *(v64 + 12);
          if (v65)
          {
            v66 = *v64;
            v67 = *v64 + 8 * v65;
            do
            {
              v68 = *v66;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v103[4], &v92);
              v104 = 0;
              WTF::String::String(&v105, " rejecting ");
              v106 = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::toString(v107, v2);
              v96 = 0;
              v97 = 0;
              v69 = WTF::fastMalloc(0x30);
              LODWORD(v97) = 3;
              v96 = v69;
              v70 = HIDWORD(v97);
              v71 = v69 + 16 * HIDWORD(v97);
              *v71 = *buf;
              v72 = *&v103[4];
              if (*&v103[4])
              {
                atomic_fetch_add_explicit(*&v103[4], 2u, memory_order_relaxed);
                v70 = HIDWORD(v97);
                v69 = v96;
              }

              *(v71 + 1) = v72;
              v73 = v70 + 1;
              HIDWORD(v97) = v73;
              v74 = v69 + 16 * v73;
              *v74 = v104;
              v75 = v105;
              if (v105)
              {
                atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
                v73 = HIDWORD(v97);
                v69 = v96;
              }

              *(v74 + 1) = v75;
              v76 = v73 + 1;
              HIDWORD(v97) = v76;
              v77 = v69 + 16 * v76;
              *v77 = v106;
              v78 = v107[0];
              if (v107[0])
              {
                atomic_fetch_add_explicit(v107[0], 2u, memory_order_relaxed);
                v76 = HIDWORD(v97);
              }

              *(v77 + 1) = v78;
              HIDWORD(v97) = v76 + 1;
              (*(*v68 + 16))(v68, v43, 4, &v96);
              v79 = v96;
              if (HIDWORD(v97))
              {
                v80 = 16 * HIDWORD(v97);
                v81 = (v96 + 8);
                do
                {
                  v82 = *v81;
                  *v81 = 0;
                  if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v82, v59);
                  }

                  v81 += 2;
                  v80 -= 16;
                }

                while (v80);
                v79 = v96;
              }

              if (v79)
              {
                v96 = 0;
                LODWORD(v97) = 0;
                WTF::fastFree(v79, v59);
              }

              v83 = v107[0];
              v107[0] = 0;
              if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v83, v59);
              }

              v84 = v105;
              v105 = 0;
              if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v84, v59);
              }

              v85 = *&v103[4];
              *&v103[4] = 0;
              if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v85, v59);
              }

              ++v66;
            }

            while (v66 != v67);
          }

          v86 = 1;
          atomic_compare_exchange_strong_explicit(v61, &v86, 0, memory_order_release, memory_order_relaxed);
          if (v86 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_140:
  v87 = v101;
  v101 = 0;
  if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v87, v59);
  }

LABEL_143:
  if (*(v2 + 72) > 1u)
  {
    if (*(v2 + 72) == 2)
    {
      v88 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v88)
      {
        goto LABEL_150;
      }
    }
  }

  else if (*(v2 + 72))
  {
    if (!*(v2 + 64))
    {
      v88 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v88)
      {
LABEL_150:
        (*(*v88 + 8))(v88);
      }
    }
  }

  v89 = 1;
  *(v2 + 64) = 1;
  *(v2 + 72) = 1;
  result = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::dispatchAll(v2, &v94);
  if (v95 == 1)
  {
    result = v94;
    atomic_compare_exchange_strong_explicit(v94, &v89, 0, memory_order_release, memory_order_relaxed);
    if (v89 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t NetworkStorageSessionMap::storageSession(NetworkStorageSessionMap *this, SessionID a2)
{
  if (this == 1)
  {
    return NetworkStorageSessionMap::defaultStorageSession(1, a2.m_identifier);
  }

  {
    if (this == -1)
    {
LABEL_14:
      __break(0xC471u);
      JUMPOUT(0x1C79E239CLL);
    }
  }

  else
  {
    globalSessionMap(void)::map = 0;
    if (this == -1)
    {
      goto LABEL_14;
    }
  }

  if (!this)
  {
    goto LABEL_14;
  }

  if (globalSessionMap(void)::map)
  {
    v3 = *(globalSessionMap(void)::map - 8);
    v4 = (this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(globalSessionMap(void)::map + 16 * v7);
    if (v8 == this)
    {
      return *(globalSessionMap(void)::map + 16 * v7 + 8);
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(globalSessionMap(void)::map + 16 * v7);
      ++v9;
      if (v8 == this)
      {
        return *(globalSessionMap(void)::map + 16 * v7 + 8);
      }
    }
  }

  return 0;
}

uint64_t NetworkStorageSessionMap::defaultStorageSession(NetworkStorageSessionMap *this, void *a2)
{
  {
    result = defaultNetworkStorageSession(void)::session;
    if (defaultNetworkStorageSession(void)::session)
    {
      return result;
    }
  }

  else
  {
    defaultNetworkStorageSession(void)::session = 0;
  }

  if (*MEMORY[0x1E69E2660])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2660], a2);
    v4.m_identifier = 1;
    result = WebCore::NetworkStorageSession::NetworkStorageSession(NonCompact, v4);
    {
      goto LABEL_7;
    }

LABEL_12:
    defaultNetworkStorageSession(void)::session = result;
    return result;
  }

  v7 = WebCore::NetworkStorageSession::operatorNewSlow(0x170);
  v8.m_identifier = 1;
  result = WebCore::NetworkStorageSession::NetworkStorageSession(v7, v8);
  {
    goto LABEL_12;
  }

LABEL_7:
  v5 = defaultNetworkStorageSession(void)::session;
  defaultNetworkStorageSession(void)::session = result;
  if (v5)
  {
    MEMORY[0x1CCA666A0](v5);
    if (*(v5 + 8))
    {
      *(v5 + 336) = 0u;
      *(v5 + 352) = 0u;
      *(v5 + 304) = 0u;
      *(v5 + 320) = 0u;
      *(v5 + 272) = 0u;
      *(v5 + 288) = 0u;
      *(v5 + 240) = 0u;
      *(v5 + 256) = 0u;
      *(v5 + 208) = 0u;
      *(v5 + 224) = 0u;
      *(v5 + 176) = 0u;
      *(v5 + 192) = 0u;
      *(v5 + 144) = 0u;
      *(v5 + 160) = 0u;
      *(v5 + 112) = 0u;
      *(v5 + 128) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *v5 = 0u;
    }

    else
    {
      bmalloc::api::tzoneFree(v5, v6);
    }

    return defaultNetworkStorageSession(void)::session;
  }

  return result;
}

void NetworkStorageSessionMap::switchToNewTestingSession(NetworkStorageSessionMap *this)
{
  v14[0] = "WebKit Test-";
  v14[1] = 12;
  LODWORD(cf) = getpid();
  WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>(v14, &cf, &v12);
  if (v12)
  {
    WTF::String::createCFString(&cf, &v12);
    WebCore::createPrivateStorageSession();
    v2 = cf;
    cf = 0;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = v12;
    v12 = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = WTF::StringImpl::destroy(v3, v1);
    }

    cf = 0;
    if (WebCore::NetworkStorageSession::processMayUseCookieAPI(v3))
    {
      v4 = v14[0];
      if (v14[0])
      {
        cf = _CFURLStorageSessionCopyCookieStorage();
      }
    }

    if (*MEMORY[0x1E69E2660])
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2660], v4);
    }

    else
    {
      NonCompact = WebCore::NetworkStorageSession::operatorNewSlow(0x170);
    }

    v6 = NonCompact;
    MEMORY[0x1CCA66690](NonCompact, 1, v14, &cf, 0);
    {
      v7 = defaultNetworkStorageSession(void)::session;
      defaultNetworkStorageSession(void)::session = v6;
      if (v7)
      {
        v8 = MEMORY[0x1CCA666A0](v7);
        if (*(v8 + 8))
        {
          *(v8 + 336) = 0u;
          *(v8 + 352) = 0u;
          *(v8 + 304) = 0u;
          *(v8 + 320) = 0u;
          *(v8 + 272) = 0u;
          *(v8 + 288) = 0u;
          *(v8 + 240) = 0u;
          *(v8 + 256) = 0u;
          *(v8 + 208) = 0u;
          *(v8 + 224) = 0u;
          *(v8 + 176) = 0u;
          *(v8 + 192) = 0u;
          *(v8 + 144) = 0u;
          *(v8 + 160) = 0u;
          *(v8 + 112) = 0u;
          *(v8 + 128) = 0u;
          *(v8 + 80) = 0u;
          *(v8 + 96) = 0u;
          *(v8 + 48) = 0u;
          *(v8 + 64) = 0u;
          *(v8 + 16) = 0u;
          *(v8 + 32) = 0u;
          *v8 = 0u;
        }

        else
        {
          bmalloc::api::tzoneFree(v8, v9);
        }
      }
    }

    else
    {
      defaultNetworkStorageSession(void)::session = v6;
    }

    v10 = cf;
    cf = 0;
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v14[0];
    v14[0] = 0;
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void NetworkStorageSessionMap::ensureSession(uint64_t this, SessionID a2, const WTF::String *a3)
{
  __n[1] = *MEMORY[0x1E69E9840];
  {
    if (this == -1)
    {
      goto LABEL_231;
    }
  }

  else
  {
    globalSessionMap(void)::map = 0;
    if (this == -1)
    {
      goto LABEL_231;
    }
  }

  if (!this)
  {
LABEL_231:
    __break(0xC471u);
    JUMPOUT(0x1C79E3524);
  }

  v5 = globalSessionMap(void)::map;
  if (!globalSessionMap(void)::map)
  {
    WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(8u, 0);
    v5 = globalSessionMap(void)::map;
  }

  v6 = *(v5 - 8);
  v7 = (~(this << 32) + this) ^ ((~(this << 32) + this) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = (v5 + 16 * v10);
  v12 = *v11;
  if (*v11)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      if (v12 == this)
      {
        return;
      }

      if (v12 == -1)
      {
        v13 = v11;
      }

      v10 = (v10 + v14) & v6;
      v11 = (v5 + 16 * v10);
      v12 = *v11;
      ++v14;
    }

    while (*v11);
    if (v13)
    {
      *v13 = 0;
      v13[1] = 0;
      --*(v5 - 16);
      v11 = v13;
    }
  }

  v15 = v11[1];
  *v11 = this;
  v11[1] = 0;
  if (!v15)
  {
LABEL_17:
    v18 = globalSessionMap(void)::map;
    if (globalSessionMap(void)::map)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  v16 = MEMORY[0x1CCA666A0](v15, a2.m_identifier, a3);
  if (!*(v16 + 8))
  {
    bmalloc::api::tzoneFree(v16, v17);
    goto LABEL_17;
  }

  *(v16 + 336) = 0u;
  *(v16 + 352) = 0u;
  *(v16 + 304) = 0u;
  *(v16 + 320) = 0u;
  *(v16 + 272) = 0u;
  *(v16 + 288) = 0u;
  *(v16 + 240) = 0u;
  *(v16 + 256) = 0u;
  *(v16 + 208) = 0u;
  *(v16 + 224) = 0u;
  *(v16 + 176) = 0u;
  *(v16 + 192) = 0u;
  *(v16 + 144) = 0u;
  *(v16 + 160) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *v16 = 0u;
  v18 = globalSessionMap(void)::map;
  if (globalSessionMap(void)::map)
  {
LABEL_18:
    v19 = *(v18 - 16);
    v20 = *(v18 - 12) + 1;
    *(v18 - 12) = v20;
    v21 = (v19 + v20);
    v22 = *(v18 - 4);
    if (v22 <= 0x400)
    {
      goto LABEL_19;
    }

LABEL_24:
    if (v22 > 2 * v21)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_23:
  v20 = 1;
  *(v18 - 12) = 1;
  v21 = (*(v18 - 16) + 1);
  v22 = *(v18 - 4);
  if (v22 > 0x400)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (3 * v22 > 4 * v21)
  {
    goto LABEL_27;
  }

  if (v22)
  {
LABEL_25:
    v23 = v22 << (6 * v20 >= (2 * v22));
    goto LABEL_26;
  }

  v23 = 8;
LABEL_26:
  v11 = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(v23, v11);
LABEL_27:
  v24 = *a2.m_identifier;
  if (v24)
  {
    atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    WTF::UUID::UUID(&v183);
    v25 = *(v24 + 4);
  }

  else
  {
    WTF::UUID::UUID(&v183);
    v25 = 0;
  }

  WTF::Internal::appendHex();
  LODWORD(__n[0]) = v26;
  WTF::Internal::appendHex();
  LODWORD(v182) = v27;
  WTF::Internal::appendHex();
  LODWORD(v180) = v28;
  WTF::Internal::appendHex();
  v179[0] = v29;
  WTF::Internal::appendHex();
  if (v30 < 0)
  {
    goto LABEL_230;
  }

  v31 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    goto LABEL_230;
  }

  if ((v179[0] & 0x80000000) != 0)
  {
    goto LABEL_230;
  }

  v32 = v179[0] + v31;
  if (__OFADD__(v179[0], v31))
  {
    goto LABEL_230;
  }

  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  v35 = v33;
  if ((v180 & 0x80000000) != 0)
  {
    goto LABEL_230;
  }

  if (v35)
  {
    goto LABEL_230;
  }

  v33 = __OFADD__(v180, v34);
  v36 = v180 + v34;
  if (v33)
  {
    goto LABEL_230;
  }

  v33 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  v38 = v33;
  if ((v182 & 0x80000000) != 0)
  {
    goto LABEL_230;
  }

  if (v38)
  {
    goto LABEL_230;
  }

  v33 = __OFADD__(v182, v37);
  v39 = v182 + v37;
  if (v33)
  {
    goto LABEL_230;
  }

  v33 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  v41 = v33;
  if ((__n[0] & 0x80000000) != 0)
  {
    goto LABEL_230;
  }

  if (v41)
  {
    goto LABEL_230;
  }

  v42 = LODWORD(__n[0]) + v40;
  if (__OFADD__(__n[0], v40) || v42 < 0)
  {
    goto LABEL_230;
  }

  v33 = __OFADD__(v42, 17);
  v43 = v42 + 17;
  v44 = v33;
  if (v25 < 0)
  {
    goto LABEL_230;
  }

  if (v44)
  {
    goto LABEL_230;
  }

  v33 = __OFADD__(v25, v43);
  v45 = (v25 + v43);
  if (v33)
  {
    goto LABEL_230;
  }

  if (!v24 || (*(v24 + 16) & 4) != 0)
  {
    if ((v45 & 0x80000000) == 0)
    {
      WTF::tryFastCompactMalloc((v45 + 20));
      v50 = v183;
      if (v183)
      {
        v54 = v183 + 20;
        *v183 = 2;
        v50[1] = v45;
        *(v50 + 1) = v50 + 5;
        v50[4] = 4;
        if (!v24)
        {
          v60 = 0;
          goto LABEL_110;
        }

        v55 = *(v24 + 8);
        v56 = *(v24 + 4);
        if ((*(v24 + 16) & 4) != 0)
        {
          if (v56)
          {
            if (v56 == 1)
            {
              *v54 = v55->i8[0];
            }

            else
            {
              memcpy(v50 + 5, v55, v56);
            }
          }

LABEL_109:
          v60 = *(v24 + 4);
          if (v60 > v45)
          {
LABEL_195:
            __break(1u);
            goto LABEL_196;
          }

LABEL_110:
          v79 = v45 - v60;
          v80 = &v54[v60];
          *v80 = *".PrivateBrowsing.";
          v80[16] = 46;
          if (v79 > 0x10)
          {
            WTF::Internal::appendHex();
            LODWORD(__n[0]) = v81;
            WTF::Internal::appendHex();
            LODWORD(v182) = v82;
            WTF::Internal::appendHex();
            LODWORD(v180) = v83;
            WTF::Internal::appendHex();
            v179[0] = v84;
            WTF::Internal::appendHex();
            v178[0] = v85;
            if (LODWORD(__n[0]) < 0x11)
            {
              v86 = v79 - 17;
              v87 = v80 + 17;
              if (LODWORD(__n[0]))
              {
                v88 = __n - LODWORD(__n[0]);
                if (LODWORD(__n[0]) == 1)
                {
                  *v87 = *v88;
                }

                else
                {
                  memcpy(v80 + 17, v88, LODWORD(__n[0]));
                }
              }

              v89 = LODWORD(__n[0]);
              if (v86 > LODWORD(__n[0]))
              {
                v90 = &v87[LODWORD(__n[0])];
                *v90 = 45;
                v91 = v90 + 1;
                if (v182 < 0x11)
                {
                  v92 = v86 + ~v89;
                  if (v182)
                  {
                    v93 = &v182 - v182;
                    if (v182 == 1)
                    {
                      *v91 = *v93;
                    }

                    else
                    {
                      memcpy(v91, v93, v182);
                    }
                  }

                  v94 = v182;
                  if (v92 > v182)
                  {
                    v95 = &v91[v182];
                    *v95 = 45;
                    v96 = v95 + 1;
                    if (v180 < 0x11)
                    {
                      v97 = v92 + ~v94;
                      if (v180)
                      {
                        v98 = &cf[-1] - v180;
                        if (v180 == 1)
                        {
                          *v96 = *v98;
                        }

                        else
                        {
                          memcpy(v96, v98, v180);
                        }
                      }

                      v99 = v180;
                      if (v97 > v180)
                      {
                        v100 = &v96[v180];
                        *v100 = 45;
                        v101 = v100 + 1;
                        if (v179[0] < 0x11u)
                        {
                          v102 = v97 + ~v99;
                          if (v179[0])
                          {
                            v103 = v179 - v179[0];
                            if (v179[0] == 1)
                            {
                              *v101 = *v103;
                            }

                            else
                            {
                              memcpy(v101, v103, v179[0]);
                            }
                          }

                          if (v102 > v179[0])
                          {
                            v104 = &v101[v179[0]];
                            *v104 = 45;
                            v105 = v104 + 1;
                            if (v178[0] < 0x11)
                            {
                              if (v178[0])
                              {
                                v106 = v178 - v178[0];
                                if (v178[0] == 1)
                                {
                                  *v105 = *v106;
                                }

                                else
                                {
                                  memcpy(v105, v106, v178[0]);
                                }
                              }

                              goto LABEL_198;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_195;
        }

        v57 = &v54[v56];
        if (v56 < 0x10)
        {
          v58 = (v50 + 5);
          if (v54 == v57)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v58 = (v50 + 5);
          do
          {
            v59 = vld2q_s8(v55);
            v55 += 4;
            *v58 = v59;
            v58 += 16;
          }

          while (v58 != &v54[v56 & 0xFFFFFFF0]);
          if (v58 == v57)
          {
            goto LABEL_109;
          }
        }

        v69 = v50 + v56;
        v70 = v50 + v56 - v58 + 20;
        if (v70 < 4 || (v58 < &v55[5] + 2 * v69 + -2 * v58 ? (v71 = v55 >= (v69 + 20)) : (v71 = 1), !v71))
        {
          v46 = v58;
          v47 = v55;
          goto LABEL_93;
        }

        if (v70 >= 0x20)
        {
          v72 = v70 & 0xFFFFFFFFFFFFFFE0;
          v46 = &v55[4];
          v47 = (v58 + 16);
          v48 = v70 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v148 = *(v46 - 32);
            v147 = *(v46 - 16);
            v150 = *v46;
            v149 = *(v46 + 16);
            v46 += 64;
            *v47[-2].i8 = vuzp1q_s8(v148, v147);
            *v47->i8 = vuzp1q_s8(v150, v149);
            v47 += 4;
            v48 -= 32;
          }

          while (v48);
          if (v70 == v72)
          {
            goto LABEL_109;
          }

          if ((v70 & 0x1C) == 0)
          {
            v47 = (v55 + 2 * v72);
            v46 = v58 + v72;
            goto LABEL_93;
          }
        }

        else
        {
          v72 = 0;
        }

        v48 = v70 & 0xFFFFFFFFFFFFFFFCLL;
        v46 = v58 + (v70 & 0xFFFFFFFFFFFFFFFCLL);
        v47 = (v55 + 2 * (v70 & 0xFFFFFFFFFFFFFFFCLL));
        v151 = (v55 + 2 * v72);
        v152 = (v58 + v72);
        v153 = v72 - (v70 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v154 = *v151++;
          *v152++ = vuzp1_s8(v154, v154).u32[0];
          v153 += 4;
        }

        while (v153);
        if (v70 == v48)
        {
          goto LABEL_109;
        }

        do
        {
LABEL_93:
          v73 = v47->i8[0];
          v47 = (v47 + 2);
          *v46++ = v73;
        }

        while (v46 != v57);
        goto LABEL_109;
      }
    }

LABEL_230:
    __break(0xC471u);
    JUMPOUT(0x1C79E3530);
  }

  if (v45 > 0x7FFFFFEF)
  {
    goto LABEL_230;
  }

  WTF::tryFastCompactMalloc((2 * v45 + 20));
  v50 = v183;
  if (!v183)
  {
    goto LABEL_230;
  }

  v51 = v183 + 20;
  *v183 = 2;
  v50[1] = v45;
  *(v50 + 1) = v50 + 5;
  v50[4] = 0;
  v52 = *(v24 + 8);
  v53 = *(v24 + 4);
  if ((*(v24 + 16) & 4) != 0)
  {
    v61 = &v51[v53];
    if (v53 < 0x40)
    {
      v62 = (v50 + 5);
    }

    else
    {
      v62 = &v51[v53 & 0xFFFFFFC0];
      v63 = 0uLL;
      v46 = (v50 + 5);
      do
      {
        v185.val[0] = *v52;
        v64 = v52[1];
        v186.val[0] = v52[2];
        v65 = v52[3];
        v52 += 4;
        v66 = v65;
        v186.val[1] = 0uLL;
        v187.val[0] = v64;
        v185.val[1] = 0uLL;
        v67 = v46;
        vst2q_s8(v67, v185);
        v67 += 32;
        v187.val[1] = 0uLL;
        vst2q_s8(v67, v187);
        v68 = (v46 + 64);
        vst2q_s8(v68, v186);
        v47 = (v46 + 96);
        vst2q_s8(v47, *(&v63 - 1));
        v46 += 128;
      }

      while (v46 != v62);
    }

    if (v62 == v61)
    {
      goto LABEL_141;
    }

    v74 = v50 + 2 * v53 - v62 + 18;
    if (v74 < 0xE || (v62 < v52->u64 + (v74 >> 1) + 1 ? (v75 = v52 >= (v74 & 0xFFFFFFFFFFFFFFFELL) + v62 + 2) : (v75 = 1), !v75))
    {
      v46 = v52;
      v47 = v62;
      goto LABEL_106;
    }

    v76 = (v74 >> 1) + 1;
    if (v74 >= 0x3E)
    {
      v77 = v76 & 0xFFFFFFFFFFFFFFE0;
      v46 = v62 + 32;
      v47 = &v52[1];
      v48 = v76 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v155 = *v47[-2].i8;
        v156 = vmovl_u8(*v47);
        v157 = vmovl_high_u8(*v47->i8);
        *(v46 - 32) = vmovl_u8(*v155.i8);
        *(v46 - 16) = vmovl_high_u8(v155);
        *v46 = v156;
        *(v46 + 16) = v157;
        v46 += 64;
        v47 += 4;
        v48 -= 32;
      }

      while (v48);
      if (v76 == v77)
      {
        goto LABEL_141;
      }

      if ((v76 & 0x18) == 0)
      {
        v47 = (v62 + 2 * v77);
        v46 = v52->u64 + v77;
        do
        {
LABEL_106:
          v78 = *v46++;
          v47->i16[0] = v78;
          v47 = (v47 + 2);
        }

        while (v47 != v61);
        goto LABEL_141;
      }
    }

    else
    {
      v77 = 0;
    }

    v48 = v76 & 0xFFFFFFFFFFFFFFF8;
    v46 = v52->u64 + (v76 & 0xFFFFFFFFFFFFFFF8);
    v47 = (v62 + 2 * (v76 & 0xFFFFFFFFFFFFFFF8));
    v158 = (v62 + 2 * v77);
    v159 = &v52->i8[v77];
    v160 = v77 - (v76 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v161 = *v159++;
      *v158++ = vmovl_u8(v161);
      v160 += 8;
    }

    while (v160);
    if (v76 == v48)
    {
      goto LABEL_141;
    }

    goto LABEL_106;
  }

  if (v53)
  {
    if (v53 == 1)
    {
      *v51 = v52->i16[0];
    }

    else
    {
      memcpy(v50 + 5, v52, 2 * v53);
    }
  }

LABEL_141:
  v107 = *(v24 + 4);
  if (v107 > v45)
  {
    goto LABEL_195;
  }

  v108 = &v51[v107];
  *v108 = xmmword_1C7B33830;
  *(v108 + 1) = xmmword_1C7B33840;
  v108[16] = 46;
  v109 = v45 - v107;
  if (v109 <= 0x10)
  {
    goto LABEL_195;
  }

  WTF::Internal::appendHex();
  LODWORD(__n[0]) = v110;
  WTF::Internal::appendHex();
  LODWORD(v182) = v111;
  WTF::Internal::appendHex();
  LODWORD(v180) = v112;
  WTF::Internal::appendHex();
  v179[0] = v113;
  WTF::Internal::appendHex();
  v178[0] = v114;
  v115 = LODWORD(__n[0]);
  if (LODWORD(__n[0]) >= 0x11)
  {
    goto LABEL_195;
  }

  v116 = v109 - 17;
  if (LODWORD(__n[0]))
  {
    v46 = __n - LODWORD(__n[0]);
    v47 = (2 * LODWORD(__n[0]));
    v117 = v108 + 17;
    do
    {
      v118 = *v46++;
      v48 = v118;
      *v117++ = v118;
      v47 = (v47 - 2);
    }

    while (v47);
  }

  if (v116 <= v115)
  {
    goto LABEL_195;
  }

  v119 = &v108[v115 + 17];
  *v119 = 45;
  v46 = (v119 + 1);
  v120 = v182;
  if (v182 >= 0x11)
  {
    goto LABEL_195;
  }

  v47 = (v116 + ~v115);
  if (v182)
  {
    v121 = &v182 - v182;
    v122 = 2 * v182;
    v48 = v46;
    do
    {
      v123 = *v121++;
      *v48 = v123;
      v48 += 2;
      v122 -= 2;
    }

    while (v122);
  }

  if (v47 <= v120)
  {
    goto LABEL_195;
  }

  v124 = (v46 + 2 * v120);
  *v124 = 45;
  v46 = (v124 + 1);
  v125 = v180;
  if (v180 >= 0x11)
  {
    goto LABEL_195;
  }

  v47 = (v47 + ~v120);
  if (v180)
  {
    v126 = &cf[-1] - v180;
    v48 = 2 * v180;
    v127 = v46;
    do
    {
      v128 = *v126++;
      v49 = v128;
      *v127++ = v128;
      v48 -= 2;
    }

    while (v48);
  }

  if (v47 <= v125)
  {
    goto LABEL_195;
  }

  v129 = (v46 + 2 * v125);
  *v129 = 45;
  v46 = (v129 + 1);
  v130 = v179[0];
  if (v179[0] >= 0x11u)
  {
    goto LABEL_195;
  }

  v48 = ~v125;
  v47 = (v47 + ~v125);
  if (v179[0])
  {
    v48 = v179 - v179[0];
    v131 = 2 * v179[0];
    v49 = v46;
    do
    {
      v132 = *v48++;
      *v49 = v132;
      v49 += 2;
      v131 -= 2;
    }

    while (v131);
  }

  if (v47 <= v130)
  {
    goto LABEL_195;
  }

  v133 = (v46 + 2 * v130);
  v46 = 45;
  *v133 = 45;
  v47 = (v133 + 1);
  if (v114 >= 0x11)
  {
    goto LABEL_195;
  }

  if (!v114)
  {
    goto LABEL_198;
  }

  v48 = v114 & 0x1F;
  v46 = v178 - v48;
  v134 = (v48 - 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (v134 < 7)
  {
    v135 = v47;
    goto LABEL_197;
  }

  if (v50 + 2 * v130 + 2 * v125 + 2 * v120 + 2 * v115 + 2 * v107 + 62 < &v177[((v48 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - v48 + 17])
  {
    v135 = v47;
    if (v46 < v50 + 2 * v48 + 2 * v130 + 2 * v125 + 2 * v120 + 2 * v115 + 2 * v107 + 62)
    {
      goto LABEL_197;
    }
  }

  v136 = v134 + 1;
  if (v134 >= 0x1F)
  {
    v49 = v136 & 0xFFFFFFFFFFFFFFE0;
    v137 = (v50 + 2 * v130 + 2 * v125 + 2 * v120 + 2 * v115 + 2 * v107 + 94);
    v138 = &v177[-v48 + 32];
    v139 = v136 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v140 = *v138[-2].i8;
      v141 = vmovl_u8(*v138);
      v142 = vmovl_high_u8(*v138->i8);
      v137[-2] = vmovl_u8(*v140.i8);
      v137[-1] = vmovl_high_u8(v140);
      *v137 = v141;
      v137[1] = v142;
      v137 += 4;
      v138 += 4;
      v139 -= 32;
    }

    while (v139);
    if (v136 == v49)
    {
      goto LABEL_198;
    }

    if ((v136 & 0x18) != 0)
    {
      goto LABEL_175;
    }

LABEL_196:
    v135 = (v47 + 2 * v49);
    v46 += v49;
    do
    {
LABEL_197:
      v162 = *v46++;
      v135->i16[0] = v162;
      v135 = (v135 + 2);
    }

    while (v135 != (v47 + 2 * v48));
    goto LABEL_198;
  }

  v49 = 0;
LABEL_175:
  v46 += v136 & 0xFFFFFFFFFFFFFFF8;
  v135 = (v47 + 2 * (v136 & 0xFFFFFFFFFFFFFFF8));
  v143 = (v50 + 2 * v49 + 2 * v130 + 2 * v125 + 2 * v120 + 2 * v115 + 2 * v107 + 62);
  v144 = &v177[v49 - v48 + 16];
  v145 = v49 - (v136 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v146 = *v144++;
    *v143++ = vmovl_u8(v146);
    v145 += 8;
  }

  while (v145);
  if (v136 != (v136 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_197;
  }

LABEL_198:
  cf[0] = v50;
  WTF::String::createCFString(&v183, cf);
  v164 = cf[0];
  cf[0] = 0;
  if (v164 && atomic_fetch_add_explicit(v164, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v164, v163);
  }

  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v163);
  }

  if (this > -2)
  {
    CFStorageSessionForIdentifier = WebCore::NetworkStorageSession::createCFStorageSessionForIdentifier();
    v166 = cf[0];
    *&v179[1] = 0;
    if (!WebCore::NetworkStorageSession::processMayUseCookieAPI(CFStorageSessionForIdentifier))
    {
      goto LABEL_210;
    }
  }

  else
  {
    PrivateStorageSession = WebCore::createPrivateStorageSession();
    v166 = cf[0];
    *&v179[1] = 0;
    if (!WebCore::NetworkStorageSession::processMayUseCookieAPI(PrivateStorageSession))
    {
      goto LABEL_210;
    }
  }

  if (v166)
  {
    *&v179[1] = _CFURLStorageSessionCopyCookieStorage();
  }

LABEL_210:
  if (*MEMORY[0x1E69E2660])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2660], v167);
  }

  else
  {
    NonCompact = WebCore::NetworkStorageSession::operatorNewSlow(0x170);
  }

  v170 = NonCompact;
  MEMORY[0x1CCA66690](NonCompact, this, cf, &v179[1], 0);
  v171 = v11[1];
  v11[1] = v170;
  if (v171)
  {
    v172 = MEMORY[0x1CCA666A0]();
    if (*(v172 + 8))
    {
      *(v172 + 336) = 0u;
      *(v172 + 352) = 0u;
      *(v172 + 304) = 0u;
      *(v172 + 320) = 0u;
      *(v172 + 272) = 0u;
      *(v172 + 288) = 0u;
      *(v172 + 240) = 0u;
      *(v172 + 256) = 0u;
      *(v172 + 208) = 0u;
      *(v172 + 224) = 0u;
      *(v172 + 176) = 0u;
      *(v172 + 192) = 0u;
      *(v172 + 144) = 0u;
      *(v172 + 160) = 0u;
      *(v172 + 112) = 0u;
      *(v172 + 128) = 0u;
      *(v172 + 80) = 0u;
      *(v172 + 96) = 0u;
      *(v172 + 48) = 0u;
      *(v172 + 64) = 0u;
      *(v172 + 16) = 0u;
      *(v172 + 32) = 0u;
      *v172 = 0u;
      v174 = *&v179[1];
      *&v179[1] = 0;
      if (!v174)
      {
        goto LABEL_217;
      }

      goto LABEL_216;
    }

    bmalloc::api::tzoneFree(v172, v173);
  }

  v174 = *&v179[1];
  *&v179[1] = 0;
  if (v174)
  {
LABEL_216:
    CFRelease(v174);
  }

LABEL_217:
  v175 = cf[0];
  cf[0] = 0;
  if (v175)
  {
    CFRelease(v175);
  }

  v176 = v183;
  v183 = 0;
  if (v176)
  {
    CFRelease(v176);
  }
}

uint64_t NetworkStorageSessionMap::destroySession(uint64_t this, SessionID a2)
{
  {
    if (globalSessionMap(void)::map)
    {
      if (this == -1 || !this)
      {
        __break(0xC471u);
        JUMPOUT(0x1C79E370CLL);
      }

      v2 = *(globalSessionMap(void)::map - 8);
      v3 = (~(this << 32) + this) ^ ((~(this << 32) + this) >> 22);
      v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
      v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
      v6 = v2 & ((v5 >> 31) ^ v5);
      v7 = *(globalSessionMap(void)::map + 16 * v6);
      if (v7 == this)
      {
LABEL_9:
        if (v6 != *(globalSessionMap(void)::map - 4))
        {
          v9 = (globalSessionMap(void)::map + 16 * v6);
          this = v9[1];
          *v9 = -1;
          v9[1] = 0;
          if (this)
          {
            this = MEMORY[0x1CCA666A0](this, a2.m_identifier);
            if (*(this + 8))
            {
              *(this + 336) = 0u;
              *(this + 352) = 0u;
              *(this + 304) = 0u;
              *(this + 320) = 0u;
              *(this + 272) = 0u;
              *(this + 288) = 0u;
              *(this + 240) = 0u;
              *(this + 256) = 0u;
              *(this + 208) = 0u;
              *(this + 224) = 0u;
              *(this + 176) = 0u;
              *(this + 192) = 0u;
              *(this + 144) = 0u;
              *(this + 160) = 0u;
              *(this + 112) = 0u;
              *(this + 128) = 0u;
              *(this + 80) = 0u;
              *(this + 96) = 0u;
              *(this + 48) = 0u;
              *(this + 64) = 0u;
              *(this + 16) = 0u;
              *(this + 32) = 0u;
              *this = 0u;
            }

            else
            {
              this = bmalloc::api::tzoneFree(this, v10);
            }
          }

          v11 = globalSessionMap(void)::map;
          v12 = vadd_s32(*(globalSessionMap(void)::map - 16), 0xFFFFFFFF00000001);
          *(globalSessionMap(void)::map - 16) = v12;
          v13 = *(v11 - 4);
          if (6 * v12.i32[1] < v13 && v13 >= 9)
          {

            return WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(v13 >> 1, 0);
          }
        }
      }

      else
      {
        v8 = 1;
        while (v7)
        {
          v6 = (v6 + v8) & v2;
          v7 = *(globalSessionMap(void)::map + 16 * v6);
          ++v8;
          if (v7 == this)
          {
            goto LABEL_9;
          }
        }
      }
    }
  }

  else
  {
    globalSessionMap(void)::map = 0;
  }

  return this;
}

uint64_t WebCore::SocketStreamHandleImpl::platformSend(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 168);
  v6 = (a1 + 168);
  v7 = v8;
  if (v8)
  {
    if (v7 + a3 > 0x6400000)
    {
      goto LABEL_18;
    }

LABEL_17:
    WTF::StreamBuffer<unsigned char,1048576ul>::append(v6, a2, a3);
    (*(**(a1 + 56) + 48))(*(a1 + 56), a1, *(a1 + 168));
    goto LABEL_18;
  }

  if (*(a1 + 64) == 1)
  {
    v9 = *(a1 + 128);
    if (v9)
    {
      v10 = a3;
      v11 = v6;
      v12 = a2;
      if (CFWriteStreamCanAcceptBytes(*(a1 + 128)))
      {
        v13 = CFWriteStreamWrite(*(a1 + 128), v12, v10);
        if (v13 == -1)
        {
          goto LABEL_18;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFF00;
        v9 = v13;
      }

      else
      {
        v9 = 0;
        v14 = 0;
      }

      a2 = v12;
      v6 = v11;
      a3 = v10;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 | v9;
    v16 = a3 - v15;
    if (a3 - v15 + *v6 <= 0x6400000)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    v16 = a3;
    if (a3 <= 0x6400000)
    {
LABEL_15:
      if (a3 <= v15)
      {
        goto LABEL_18;
      }

      a2 += v15;
      a3 = v16;
      goto LABEL_17;
    }
  }

LABEL_18:
  v17 = *(**a4 + 16);

  return v17();
}

void *WTF::StreamBuffer<unsigned char,1048576ul>::append(void *result, char *__src, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    *result += a3;
    do
    {
      v6 = v5[2];
      v7 = v5[3];
      v8 = v7;
      if (v6 > v7)
      {
        v8 = v7 + *(v5 + 10);
      }

      if (v8 != v6)
      {
        v9 = *(v5 + 10);
        if (v7)
        {
          if (v7 - 1 >= v9)
          {
            goto LABEL_69;
          }

          v10 = v5[4];
          if (*(*(v10 + 8 * (v7 - 1)) + 12) != 0x100000)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (!*(v5 + 10))
          {
            goto LABEL_69;
          }

          v10 = v5[4];
          if (*(*(v10 + 8 * v9 - 8) + 12) != 0x100000)
          {
LABEL_10:
            if (v7)
            {
              goto LABEL_11;
            }

            goto LABEL_48;
          }
        }
      }

      result = WTF::fastMalloc(0x10);
      v15 = result;
      *result = 0;
      result[1] = 0;
      v17 = v5[2];
      v16 = v5[3];
      if (v17)
      {
        v18 = *(v5 + 10);
        v9 = v18;
        if (v16 + 1 == v17)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v9 = *(v5 + 10);
        if (!v16)
        {
          v18 = 0;
          if (*(v5 + 10))
          {
            goto LABEL_43;
          }

LABEL_24:
          v19 = v18 + (v18 >> 2);
          if (v19 >= 0x1FFFFFFF)
          {
            __break(0xC471u);
            JUMPOUT(0x1C79E3BFCLL);
          }

          v20 = v5[4];
          if (v19 <= 0xF)
          {
            v19 = 15;
          }

          v21 = v19 + 1;
          v22 = WTF::fastMalloc((8 * (v19 + 1)));
          *(v5 + 10) = v21;
          v5[4] = v22;
          v23 = v5[2];
          v24 = v5[3];
          v25 = v24 - v23;
          if (v24 >= v23)
          {
            if (v18 < v23)
            {
              goto LABEL_69;
            }

            if (v25 == -1)
            {
              v25 = v18 - v23;
            }

            else if (v18 - v23 < v25)
            {
              goto LABEL_69;
            }

            result = memcpy(&v22[8 * v23], &v20[8 * v23], 8 * v25);
            if (v20)
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v24 > v18 || (memcpy(v22, v20, 8 * v24), v26 = v5[2], v27 = v18 - v26, v18 < v26) || (v28 = *(v5 + 10), v28 < v27))
            {
LABEL_69:
              __break(1u);
LABEL_72:
              __break(0xC471u);
              JUMPOUT(0x1C79E3BF4);
            }

            v29 = v28 - (v18 - v26);
            result = memcpy((v5[4] + 8 * v29), &v20[8 * v26], 8 * v27);
            v5[2] = v29;
            if (!v20)
            {
              goto LABEL_42;
            }

LABEL_39:
            if (v5[4] == v20)
            {
              v5[4] = 0;
              *(v5 + 10) = 0;
            }

            result = WTF::fastFree(v20, v30);
          }

LABEL_42:
          v16 = v5[3];
          v9 = *(v5 + 10);
          goto LABEL_43;
        }

        v18 = *(v5 + 10);
        if (v16 == v9 - 1)
        {
          goto LABEL_24;
        }
      }

LABEL_43:
      if (v16 >= v9)
      {
        goto LABEL_69;
      }

      v10 = v5[4];
      *(v10 + 8 * v16) = v15;
      if (v16 == v9 - 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = v16 + 1;
      }

      v5[3] = v7;
      if (v7)
      {
LABEL_11:
        v11 = v7 - 1;
        if (v11 >= v9)
        {
          goto LABEL_69;
        }

        v12 = *(v10 + 8 * v11);
        v13 = *(v12 + 12);
        v14 = 0x100000 - v13;
        if (v3 < 0x100000 - v13)
        {
          v14 = v3;
        }

LABEL_51:
        v31 = v3 - v14;
        v32 = &__src[v14];
        v3 = v14;
        if (!v14)
        {
          goto LABEL_3;
        }

        goto LABEL_52;
      }

LABEL_48:
      if (!v9)
      {
        goto LABEL_69;
      }

      v12 = *(v10 + 8 * v9 - 8);
      v13 = *(v12 + 12);
      v14 = 0x100000 - v13;
      if (v3 >= 0x100000 - v13)
      {
        goto LABEL_51;
      }

      v31 = 0;
      v32 = &__src[v3];
LABEL_52:
      v33 = v3 + v13;
      v34 = *(v12 + 8);
      if (v3 + v13 > v34)
      {
        if (v34 + (v34 >> 1) <= v34 + 1)
        {
          v35 = v34 + 1;
        }

        else
        {
          v35 = v34 + (v34 >> 1);
        }

        if (v35 <= v33)
        {
          v35 = v3 + v13;
        }

        if (HIDWORD(v35))
        {
          goto LABEL_72;
        }

        v36 = *v12;
        if (v35 <= 0x10)
        {
          v37 = 16;
        }

        else
        {
          v37 = v35;
        }

        v38 = WTF::fastMalloc(v37);
        *(v12 + 8) = v37;
        *v12 = v38;
        memcpy(v38, v36, v13);
        if (v36)
        {
          if (*v12 == v36)
          {
            *v12 = 0;
            *(v12 + 8) = 0;
          }

          WTF::fastFree(v36, v39);
        }
      }

      v40 = *(v12 + 12);
      if (v33 < v40)
      {
        goto LABEL_72;
      }

      result = memcpy((*v12 + v40), __src, v32 - __src);
      *(v12 + 12) = v33;
LABEL_3:
      v3 = v31;
      __src = v32;
    }

    while (v31);
  }

  return result;
}

unint64_t WebCore::SocketStreamHandleImpl::platformSendHandshake(uint64_t a1, char *__src, unint64_t a3, uint64_t a4, void *a5)
{
  v7 = __src;
  if (*(a4 + 128) != 1)
  {
    LODWORD(v26) = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_22;
  }

  v9 = *(a1 + 160);
  if (v9)
  {
    v11 = (**v9)(v9);
    if ((*(a4 + 128) & 1) == 0)
    {
      goto LABEL_141;
    }

    if (v11)
    {
      WebCore::NetworkStorageSession::cookieRequestHeaderFieldValue();
      v12 = v73;
      if (!v73 || !*(v73 + 1))
      {
        v49 = 0;
        LODWORD(v26) = 0;
        v28 = v74;
        if (!v73)
        {
LABEL_133:
          if (v26)
          {
            v27 = WTF::fastMalloc(v26);
            memcpy(v27, v49, v26);
            if (a3 > 1)
            {
              a3 -= 2;
              if (!v49)
              {
                goto LABEL_22;
              }

              goto LABEL_138;
            }

LABEL_141:
            __break(1u);
            goto LABEL_147;
          }

          v27 = 0;
          if (v49)
          {
LABEL_138:
            WTF::fastFree(v49, __src);
          }

LABEL_22:
          v29 = *(a1 + 168);
          if (v29)
          {
            v30 = v26;
            if (a3 + v26 + v29 <= 0x6400000)
            {
              WTF::StreamBuffer<unsigned char,1048576ul>::append((a1 + 168), v7, a3);
              v31 = v27;
LABEL_25:
              WTF::StreamBuffer<unsigned char,1048576ul>::append((a1 + 168), v31, v30);
              (*(**(a1 + 56) + 48))(*(a1 + 56), a1, *(a1 + 168));
LABEL_26:
              v32 = 1;
LABEL_67:
              result = (*(**a5 + 16))(*a5, v32, v28);
              goto LABEL_68;
            }

LABEL_66:
            v32 = 0;
            goto LABEL_67;
          }

          __n = v26;
          v35 = a3 + v26;
          if (*(a1 + 64) != 1)
          {
            v48 = 0;
            v26 = v26;
            if (v35 > 0x6400000)
            {
              goto LABEL_66;
            }

            goto LABEL_93;
          }

          v68 = a5;
          v66 = v28;
          if (!v35)
          {
            LODWORD(v37) = 0;
            v36 = 0;
            v70 = v7;
            if (a3)
            {
              goto LABEL_34;
            }

            goto LABEL_74;
          }

          if (!HIDWORD(v35))
          {
            v36 = WTF::fastMalloc((a3 + v26));
            LODWORD(v37) = a3 + v26;
            v70 = v7;
            if (a3)
            {
LABEL_34:
              if (a3 <= v37)
              {
                goto LABEL_49;
              }

              if (v37 + (v37 >> 1) <= v37 + 1)
              {
                v38 = v37 + 1;
              }

              else
              {
                v38 = v37 + (v37 >> 1);
              }

              if (v38 <= a3)
              {
                v38 = a3;
              }

              if (HIDWORD(v38))
              {
                __break(0xC471u);
                JUMPOUT(0x1C79E43A8);
              }

              if (v38 <= 0x10)
              {
                v37 = 16;
              }

              else
              {
                v37 = v38;
              }

              v39 = WTF::fastMalloc(v37);
              if (v36)
              {
                if (v39 == v36)
                {
                  LODWORD(v37) = 0;
                  v41 = 0;
                }

                else
                {
                  v41 = v39;
                }

                WTF::fastFree(v36, v40);
                v36 = v41;
LABEL_49:
                memcpy(v36, v7, a3);
                LODWORD(v7) = a3;
                if (v26)
                {
                  goto LABEL_50;
                }

LABEL_75:
                a5 = v68;
                v26 = v26;
                result = *(a1 + 128);
                if (!result)
                {
                  goto LABEL_89;
                }

LABEL_85:
                result = CFWriteStreamCanAcceptBytes(result);
                if (result)
                {
                  result = CFWriteStreamWrite(*(a1 + 128), v36, v7);
                  if (result == -1)
                  {
                    result = (*(**a5 + 16))(*a5, 0, v66);
                    v52 = 0;
                    v48 = 0;
                    if (!v36)
                    {
LABEL_91:
                      if (!v52)
                      {
LABEL_68:
                        if (v27)
                        {
                          return WTF::fastFree(v27, __src);
                        }

                        return result;
                      }

                      v7 = v70;
                      v28 = v66;
                      if (*(a1 + 168) + v35 - v48 > 0x6400000)
                      {
                        goto LABEL_66;
                      }

LABEL_93:
                      if (v48 >= v35)
                      {
                        goto LABEL_26;
                      }

                      v53 = v48 - a3;
                      if (v48 < a3)
                      {
                        WTF::StreamBuffer<unsigned char,1048576ul>::append((a1 + 168), &v7[v48], a3 - v48);
                        v53 = 0;
LABEL_97:
                        v30 = v26 - v53;
                        v31 = &v27[v53];
                        goto LABEL_25;
                      }

                      if (v53 <= v26)
                      {
                        goto LABEL_97;
                      }

                      goto LABEL_141;
                    }
                  }

                  else
                  {
                    v48 = result;
                    v52 = 1;
                    if (!v36)
                    {
                      goto LABEL_91;
                    }
                  }

LABEL_90:
                  result = WTF::fastFree(v36, __src);
                  goto LABEL_91;
                }

LABEL_89:
                v48 = 0;
                v52 = 1;
                if (!v36)
                {
                  goto LABEL_91;
                }

                goto LABEL_90;
              }

              v36 = v39;
              memcpy(v39, v7, a3);
              LODWORD(v7) = a3;
              if (!v26)
              {
                goto LABEL_75;
              }

LABEL_50:
              v42 = v7;
              v26 = v26;
              v7 = (v7 + v26);
              if (v7 > v37)
              {
                if (v37 + (v37 >> 1) <= v37 + 1)
                {
                  v43 = v37 + 1;
                }

                else
                {
                  v43 = v37 + (v37 >> 1);
                }

                if (v43 <= v7)
                {
                  v43 = v7;
                }

                if (HIDWORD(v43))
                {
                  __break(0xC471u);
                  JUMPOUT(0x1C79E43B0);
                }

                if (v43 <= 0x10)
                {
                  v44 = 16;
                }

                else
                {
                  v44 = v43;
                }

                v45 = WTF::fastMalloc(v44);
                memcpy(v45, v36, v42);
                if (v36)
                {
                  if (v45 == v36)
                  {
                    v47 = 0;
                  }

                  else
                  {
                    v47 = v45;
                  }

                  WTF::fastFree(v36, v46);
                  v36 = v47;
                  v26 = __n;
                }

                else
                {
                  v36 = v45;
                }
              }

              a5 = v68;
              memcpy(v36 + v42, v27, v26);
              result = *(a1 + 128);
              if (!result)
              {
                goto LABEL_89;
              }

              goto LABEL_85;
            }

LABEL_74:
            LODWORD(v7) = 0;
            if (!v26)
            {
              goto LABEL_75;
            }

            goto LABEL_50;
          }

LABEL_147:
          __break(0xC471u);
          JUMPOUT(0x1C79E43A0);
        }

LABEL_131:
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, __src);
        }

        goto LABEL_133;
      }

      v69 = v7;
      v13 = WTF::fastMalloc(8);
      *v13 = 0x203A65696B6F6F43;
      WTF::String::utf8();
      v15 = v72;
      if (!v72)
      {
        v50 = 8;
        v26 = 12;
        v51 = 8;
        goto LABEL_115;
      }

      v16 = *(v72 + 1);
      if (!v16)
      {
        LODWORD(v17) = 8;
        LODWORD(v19) = 8;
        goto LABEL_113;
      }

      v17 = v16 + 8;
      if (v16 + 8 < 9)
      {
        __break(0xC471u);
        JUMPOUT(0x1C79E43C0);
      }

      v67 = a5;
      if (HIDWORD(v17))
      {
        goto LABEL_147;
      }

      v18 = v72 + 16;
      if (v17 <= 0x10)
      {
        v19 = 16;
      }

      else
      {
        v19 = v16 + 8;
      }

      v20 = WTF::fastMalloc(v19);
      v22 = v20;
      *v20 = *v13;
      if (v20 == v13)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20;
      }

      WTF::fastFree(v13, v21);
      v24 = v23 + 8;
      if (v16 >= 8 && (v23 - v72 - 8) >= 0x20)
      {
        if (v16 < 0x20)
        {
          v25 = 0;
          goto LABEL_104;
        }

        v25 = v16 & 0xFFFFFFFFFFFFFFE0;
        v54 = (v72 + 32);
        v55 = (v23 + 24);
        v56 = v16 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v57 = *v54;
          *(v55 - 1) = *(v54 - 1);
          *v55 = v57;
          v54 += 2;
          v55 += 2;
          v56 -= 32;
        }

        while (v56);
        if (v16 == v25)
        {
          goto LABEL_110;
        }

        if ((v16 & 0x18) != 0)
        {
LABEL_104:
          v24 += v16 & 0xFFFFFFFFFFFFFFF8;
          v18 += v16 & 0xFFFFFFFFFFFFFFF8;
          v58 = (v72 + v25 + 16);
          v59 = (v23 + v25 + 8);
          v60 = v25 - (v16 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v61 = *v58++;
            *v59++ = v61;
            v60 += 8;
          }

          while (v60);
          if (v16 == (v16 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        }

        v18 += v25;
        v24 += v25;
      }

      do
      {
LABEL_109:
        v62 = *v18++;
        *v24++ = v62;
      }

      while (v18 != v72 + v16 + 16);
LABEL_110:
      if (v22 == v13)
      {
        LODWORD(v19) = 0;
      }

      v15 = v72;
      v13 = v23;
      a5 = v67;
LABEL_113:
      if (*v15 == 1)
      {
        WTF::fastFree(v15, v14);
        v50 = v17;
        v26 = v17 + 4;
        v51 = v19;
        if (v26 > v19)
        {
LABEL_115:
          if (v51 + (v51 >> 1) <= v51 + 1)
          {
            v63 = v51 + 1;
          }

          else
          {
            v63 = v51 + (v51 >> 1);
          }

          if (v63 <= v26)
          {
            v63 = v26;
          }

          v7 = v69;
          if (HIDWORD(v63))
          {
            __break(0xC471u);
            JUMPOUT(0x1C79E43B8);
          }

          if (v63 <= 0x10)
          {
            v64 = 16;
          }

          else
          {
            v64 = v63;
          }

          v65 = WTF::fastMalloc(v64);
          memcpy(v65, v13, v50);
          if (v13)
          {
            if (v65 == v13)
            {
              v65 = 0;
            }

            WTF::fastFree(v13, v14);
          }

          v13 = v65;
          *(v65 + v50) = 168626701;
          if (!v26)
          {
            goto LABEL_129;
          }

          goto LABEL_79;
        }
      }

      else
      {
        --*v15;
        v50 = v17;
        v26 = v17 + 4;
        v51 = v19;
        if (v26 > v19)
        {
          goto LABEL_115;
        }
      }

      v7 = v69;
      *(v13 + v50) = 168626701;
      if (!v26)
      {
LABEL_129:
        v49 = 0;
        goto LABEL_130;
      }

LABEL_79:
      v49 = WTF::fastMalloc(v26);
      memcpy(v49, v13, v26);
LABEL_130:
      v28 = v74;
      WTF::fastFree(v13, v14);
      v12 = v73;
      goto LABEL_131;
    }
  }

  v33 = *(**a5 + 16);

  return v33();
}