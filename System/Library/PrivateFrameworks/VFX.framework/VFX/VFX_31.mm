uint64_t CFX::GPUResourceManager::incrementLastWriteIndexForResource(CFX::GPUResourceManager *this, CFX::RG::Resource *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v3 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  v4 = *this;
  v5 = (*(*this + 100) - 1) & v3;
  v6 = *(*(*this + 88) + 2 * v5);
  if (v6 < 2)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    while ((v6 & 2) == 0 || v3 != *(*(v4 + 72) + 8 * v5))
    {
      ++v5;
      v7 = v6 > 3;
      v6 >>= 1;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v8 = (*(v4 + 80) + v5);
  }

  v9 = *v8 + 1;
  *v8 = v9;
  result = CFX::RG::Resource::frameCount(a2);
  if (result == v9)
  {
    *v8 = 0;
  }

  return result;
}

void CFX::GPUResourceManager::allocate(uint64_t **this, const CFX::RG::Resource *a2, const CFX::RG::RenderGraphContext *a3)
{
  prof_beginFlame("allocate", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/GPUResourceManager.mm", 190);
  v6 = CFX::RG::Resource::lifetime(a2);
  v7 = CFX::RG::Resource::type(a2);
  v8 = v7;
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  if (v6 == 2)
  {
    CFX::RG::Resource::setDeleter(a2, this);
    if (CFX::RG::Resource::frameCount(a2) >= 2)
    {
      v17 = *this;
      LOBYTE(v57) = 0;
      sub_1AF390E08((v17 + 9), v10, &v57);
    }

    v18 = 0;
    v56 = a3;
    while (1)
    {
      if (v18 >= CFX::RG::Resource::frameCount(a2))
      {
        goto LABEL_31;
      }

      v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v18)))) >> 47));
      if (v8 == 3)
      {
        break;
      }

      if (v8 != 2)
      {
        if (v8 != 1)
        {
          goto LABEL_24;
        }

        v20 = CFX::RG::Resource::bufferDesc(a2);
        Buffer = CFXGPUDeviceCreateBuffer(**this, *v20, *(v20 + 8));
        v22 = *this;
        v23 = Buffer;
        v57 = v23;
        v58 = objc_msgSend_length(v23, v24, v25, v26);
        sub_1AF390B1C((v22 + 17), v19, &v57);
        goto LABEL_22;
      }

      v27 = CFX::RG::Resource::externalResourceDesc(a2);
      if (!CFX::RG::ExternalResourceDesc::kind(v27))
      {
        v36 = CFX::RG::ExternalResourceDesc::allocate(v27);
        v37 = v36[2](v36, v18);

        v38 = *this;
        v23 = v37;
        v57 = v23;
        v58 = objc_msgSend_length(v23, v39, v40, v41);
        sub_1AF390B1C((v38 + 17), v19, &v57);
        a3 = v56;
        goto LABEL_22;
      }

      if (CFX::RG::ExternalResourceDesc::kind(v27) != 1)
      {
        goto LABEL_24;
      }

      v28 = CFX::RG::ExternalResourceDesc::allocate(v27);
      v29 = v28[2](v28, v18);

      v30 = *this;
      v23 = v29;
      *&v57 = v23;
      sub_1AF391B00((v30 + 5), v19, &v57);

      a3 = v56;
LABEL_23:

LABEL_24:
      ++v18;
    }

    v31 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a3, a2);
    v32 = **this;
    v33 = *v31;
    v58 = *(v31 + 16);
    v57 = v33;
    v34 = CFXGPUDeviceCreateTexture(v32, &v57);
    v35 = *this;
    v23 = v34;
    *&v57 = v23;
    sub_1AF391B00((v35 + 5), v19, &v57);
LABEL_22:

    goto LABEL_23;
  }

  if (v6 != 1)
  {
    goto LABEL_31;
  }

  switch(v7)
  {
    case 3:
      v47 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a3, a2);
      v48 = sub_1AF390DBC(*this + 21, v47);
      v49 = *this;
      *&v57 = v48;
      v46 = v48;
      sub_1AF391B00((v49 + 1), v10, &v57);
      goto LABEL_30;
    case 2:
      v42 = CFX::RG::Resource::externalResourceDesc(a2);
      if (CFX::RG::ExternalResourceDesc::kind(v42))
      {
        if (CFX::RG::ExternalResourceDesc::kind(v42) != 1)
        {
          break;
        }

        v43 = CFX::RG::ExternalResourceDesc::allocate(v42);
        v44 = v43[2](v43, 0);

        v45 = *this;
        *&v57 = v44;
        v46 = v44;
        sub_1AF391B00((v45 + 1), v10, &v57);
      }

      else
      {
        v50 = CFX::RG::ExternalResourceDesc::allocate(v42);
        v51 = v50[2](v50, 0);

        v52 = *this;
        v46 = v51;
        v57 = v46;
        v58 = objc_msgSend_length(v46, v53, v54, v55);
        sub_1AF390B1C((v52 + 13), v10, &v57);
      }

LABEL_30:

      break;
    case 1:
      v11 = CFX::RG::Resource::bufferDesc(a2);
      v12 = 22;
      if ((v11[1] & 0xF0) == 0)
      {
        v12 = 23;
      }

      CFXBufferAllocatorPerFrameAllocateWithLength((*this)[v12], *v11);
      v14 = v13;
      v15 = *this;
      *&v57 = CFXBufferSliceGetMTLBuffer(v16, v13);
      *(&v57 + 1) = v14;
      v58 = HIDWORD(v14);
      sub_1AF390B1C((v15 + 13), v10, &v57);

      break;
  }

LABEL_31:
  prof_endFlame();
}

uint64_t CFX::GPUResourceManager::bufferPoolForResourceOptions(CFX::GPUResourceManager *this, char a2)
{
  v2 = 176;
  if ((a2 & 0xF0) == 0)
  {
    v2 = 184;
  }

  return *(*this + v2);
}

__n128 sub_1AF390B1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  while (1)
  {
    v5 = *(a1 + 28);
    v6 = (v5 - 1) & a2;
    v7 = *(a1 + 16);
    v8 = *(v7 + 2 * v6);
    if (v8 >= 2)
    {
      break;
    }

LABEL_6:
    v11 = v5 + 15;
    if (v11 >= v6 + 496)
    {
      v11 = v6 + 496;
    }

    LODWORD(v12) = v6;
    v13 = v11 - v6;
    if (v11 > v6)
    {
      v12 = v6;
      while ((*(v7 + 2 * v12) & 1) != 0)
      {
        ++v12;
        if (!--v13)
        {
          goto LABEL_31;
        }
      }
    }

    if (v12 != v11)
    {
      *(v7 + 2 * v12) |= 1u;
      if (v12 <= v6 + 14)
      {
        v18 = v12;
      }

      else
      {
        while (2)
        {
          v14 = v12 - 14;
          if (v12 < 0xF)
          {
            v14 = 0;
          }

          v15 = v14 - 1;
          if (v14 <= v12)
          {
            v16 = v12;
          }

          else
          {
            v16 = v14;
          }

          v17 = 1;
          while (1)
          {
            v18 = v15 + 1;
            if (v14 <= v18)
            {
              break;
            }

LABEL_25:
            ++v17;
            v15 = v18;
            if (v18 == v16)
            {
              goto LABEL_30;
            }
          }

          v19 = 1 << (v15 - v14 + 2);
          v20 = v17;
          v21 = v14;
          while (1)
          {
            v22 = v21;
            if ((v19 & *(v7 + 2 * v21)) != 0)
            {
              break;
            }

            ++v21;
            LOWORD(v19) = v19 >> 1;
            --v20;
            if (v22 + 1 > v18)
            {
              goto LABEL_25;
            }
          }

          if (v18 >= v12)
          {
LABEL_30:
            *(v7 + 2 * v12) ^= 1u;
            goto LABEL_31;
          }

          v23 = *(a1 + 8);
          *(*a1 + 8 * v12) = *(*a1 + 8 * v18);
          v24 = v23 + 24 * v12;
          v25 = (v23 + 24 * v18);
          v26 = *v25;
          *v25 = 0;
          *v24 = v26;
          *(v24 + 8) = *(v25 + 1);

          v7 = *(a1 + 16);
          *(v7 + 2 * v22) = (*(v7 + 2 * v22) | (1 << (v12 - v22 + 1))) ^ (1 << v20);
          LODWORD(v12) = v18;
          if (v18 > v6 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v12) = v18;
      }

      v31 = *(a1 + 8) + 24 * v18;
      v32 = *a3;
      *a3 = 0;
      *v31 = v32;
      result = *(a3 + 1);
      *(v31 + 8) = result;
      *(*a1 + 8 * v18) = a2;
      v33 = *(a1 + 16);
      *(v33 + 2 * v18) |= 1u;
      *(v33 + 2 * v6) |= 1 << (v12 - v6 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_31:
    sub_1AF391A4C(a1);
  }

  v9 = (v5 - 1) & a2;
  while ((v8 & 2) == 0 || *(*a1 + 8 * v9) != a2)
  {
    ++v9;
    v10 = v8 > 3;
    v8 >>= 1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v27 = *(a1 + 8) + 24 * v9;
  v28 = *a3;
  *a3 = 0;
  v29 = *v27;
  *v27 = v28;

  result = *(a3 + 1);
  *(v27 + 8) = result;
  return result;
}

id sub_1AF390DBC(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = *(a2 + 2);
  v3 = CFXTextureAllocatorPerFrameAllocate(v2, &v5);

  return v3;
}

uint64_t sub_1AF390E08(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  while (1)
  {
    v6 = *(a1 + 28);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 16);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 8);
          *(*a1 + 8 * v14) = *(*a1 + 8 * v20);
          *(v25 + v14) = *(v25 + v20);
          v8 = *(a1 + 16);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 8) + v20) = *a3;
      *(*a1 + 8 * v20) = a2;
      v27 = *(a1 + 16);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_32:
    sub_1AF391E08(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 8) + v10) = *a3;
  return result;
}

void CFX::GPUResourceManager::free(CFX::GPUResourceManager *this, const CFX::RG::Resource *a2)
{
  v4 = CFX::RG::Resource::lifetime(a2);
  v5 = CFX::RG::Resource::type(a2);
  if (v4 == 1)
  {
    if (v5 == 3)
    {
      v33 = CFX::RG::Temporal::currentFrame(v5);
      v34 = CFX::GPUResourceManager::getTexture(this, a2, v33);
      CFXTextureAllocatorPerFrameFree(*(*this + 168), v34);
    }

    else if (v5 == 1)
    {
      v26 = CFX::RG::Resource::bufferDesc(a2);
      v27 = *(v26 + 1);
      v28 = CFX::RG::Temporal::currentFrame(v26);
      CFX::GPUResourceManager::getBuffer(this, a2, v28);
      v30 = v29;
      v31 = 176;
      if ((v27 & 0xF0) == 0)
      {
        v31 = 184;
      }

      v32 = *(*this + v31);

      CFXBufferAllocatorPerFrameFree(v32, v30);
    }
  }

  else if (v4 == 2 && CFX::RG::Resource::frameCount(a2))
  {
    v6 = 0;
    v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
    v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    while (1)
    {
      v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v6)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v6)))) >> 47));
      if (!CFX::RG::Resource::isBuffer(a2))
      {
        break;
      }

      v10 = *this;
      v11 = (*(*this + 164) - 1) & v9;
      v12 = *(*this + 152);
      v13 = *(v12 + 2 * v11);
      if (v13 >= 2)
      {
        v14 = 1;
        v15 = *(v12 + 2 * v11);
        while (1)
        {
          if ((v15 & 2) != 0)
          {
            v16 = (v11 + v14 - 1);
            if (v9 == *(*(v10 + 136) + 8 * v16))
            {
              break;
            }
          }

          ++v14;
          v17 = v15 >= 4;
          v15 >>= 1;
          if (!v17)
          {
            goto LABEL_22;
          }
        }

        *(v12 + 2 * v11) = v13 ^ (1 << v14);
        *(v12 + 2 * v16) ^= 1u;

        v25 = (v10 + 160);
LABEL_21:
        --*v25;
      }

LABEL_22:
      if (++v6 >= CFX::RG::Resource::frameCount(a2))
      {
        return;
      }
    }

    if (!CFX::RG::Resource::isTexture(a2))
    {
      goto LABEL_22;
    }

    v18 = *this;
    v19 = (*(*this + 68) - 1) & v9;
    v20 = *(*this + 56);
    v21 = *(v20 + 2 * v19);
    if (v21 < 2)
    {
      goto LABEL_22;
    }

    v22 = 1;
    v23 = *(v20 + 2 * v19);
    while (1)
    {
      if ((v23 & 2) != 0)
      {
        v24 = v19 + v22 - 1;
        if (v9 == *(*(v18 + 40) + 8 * v24))
        {
          break;
        }
      }

      ++v22;
      v17 = v23 >= 4;
      v23 >>= 1;
      if (!v17)
      {
        goto LABEL_22;
      }
    }

    *(v20 + 2 * v19) = v21 ^ (1 << v22);
    *(v20 + 2 * v24) ^= 1u;

    v25 = (v18 + 64);
    goto LABEL_21;
  }
}

uint64_t CFX::GPUResourceManager::mapResource(CFX::GPUResourceManager *this, CFX::RG::Resource *a2, CFX::RG::Resource *a3)
{
  v3 = *this;
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v6 = a3;
  return sub_1AF391EB4(v3 + 192, 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47)), &v6);
}

uint64_t CFX::GPUResourceManager::remappedResource(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 220) - 1;
  v4 = *(*a1 + 208);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = v3 & v6;
  v8 = *(v4 + 2 * (v3 & v6));
  if (v8 >= 2)
  {
    do
    {
      while ((v8 & 2) == 0 || v6 != *(*(v2 + 192) + 8 * v7))
      {
        ++v7;
        v10 = v8 >= 4;
        v8 >>= 1;
        if (!v10)
        {
          return a2;
        }
      }

      v11 = *(v2 + 200);
      if (!v11)
      {
        break;
      }

      a2 = *(v11 + 8 * v7);
      v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
      v6 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
      v7 = v3 & v6;
      v8 = *(v4 + 2 * (v3 & v6));
    }

    while (v8 > 1);
  }

  return a2;
}

unint64_t CFX::GPUResourceManager::resourceHashOrRemapped(uint64_t *a1, uint64_t a2)
{
  v2 = CFX::GPUResourceManager::remappedResource(a1, a2);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v2) ^ ((0x9DDFEA08EB382D69 * v2) >> 47));
  return 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
}

uint64_t CFX::GPUResourceManager::registerNamedFrameResource(CFX::GPUResourceManager *this, const CFX::RG::Resource *a2, unsigned int a3)
{
  v3 = *this;
  v5 = a2;
  return sub_1AF39217C(v3 + 224, a3, &v5);
}

id CFX::GPUResourceManager::getRegisteredFrameTextureNamed(CFX::GPUResourceManager *this, int a2)
{
  v2 = *this;
  v3 = (*(*this + 252) - 1) & a2;
  v4 = *(*(*this + 240) + 2 * v3);
  if (v4 < 2)
  {
    goto LABEL_5;
  }

  while ((v4 & 2) == 0 || *(*(v2 + 224) + 8 * v3) != a2)
  {
    ++v3;
    v6 = v4 >= 4;
    v4 >>= 1;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v9 = *(v2 + 232);
  if (v9)
  {
    v10 = *(v9 + 8 * v3);
    v11 = CFX::RG::Temporal::currentFrame(this);
    v7 = CFX::GPUResourceManager::getTexture(this, v10, v11);
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  return v7;
}

uint64_t *CFX::GPUResourceManager::transferFrom(uint64_t *this, CFX::GPUResourceManager *a2)
{
  v2 = *a2;
  v3 = *this;
  v4 = *(*this + 68);
  *(v3 + 68) = *(*a2 + 68);
  *(v2 + 68) = v4;
  v5 = *(v3 + 64);
  *(v3 + 64) = *(v2 + 64);
  *(v2 + 64) = v5;
  v6 = *(v3 + 56);
  *(v3 + 56) = *(v2 + 56);
  *(v2 + 56) = v6;
  v7 = *(v3 + 48);
  *(v3 + 48) = *(v2 + 48);
  *(v2 + 48) = v7;
  v8 = *(v3 + 40);
  *(v3 + 40) = *(v2 + 40);
  *(v2 + 40) = v8;
  v9 = *a2;
  v10 = *this;
  LODWORD(v8) = *(*this + 164);
  *(v10 + 164) = *(*a2 + 164);
  *(v9 + 164) = v8;
  LODWORD(v8) = *(v10 + 160);
  *(v10 + 160) = *(v9 + 160);
  *(v9 + 160) = v8;
  v11 = *(v10 + 152);
  *(v10 + 152) = *(v9 + 152);
  *(v9 + 152) = v11;
  v12 = *(v10 + 144);
  *(v10 + 144) = *(v9 + 144);
  *(v9 + 144) = v12;
  v13 = *(v10 + 136);
  *(v10 + 136) = *(v9 + 136);
  *(v9 + 136) = v13;
  v14 = *a2;
  v15 = *this;
  LODWORD(v13) = *(*this + 100);
  *(v15 + 100) = *(*a2 + 100);
  *(v14 + 100) = v13;
  LODWORD(v13) = *(v15 + 96);
  *(v15 + 96) = *(v14 + 96);
  *(v14 + 96) = v13;
  v16 = *(v15 + 88);
  *(v15 + 88) = *(v14 + 88);
  *(v14 + 88) = v16;
  v17 = *(v15 + 80);
  *(v15 + 80) = *(v14 + 80);
  *(v14 + 80) = v17;
  v18 = *(v15 + 72);
  *(v15 + 72) = *(v14 + 72);
  *(v14 + 72) = v18;
  return this;
}

uint64_t *sub_1AF39166C(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  *a1 = a2;
  v6 = (a1 + 5);
  sub_1AF140928((a1 + 1), 32);
  sub_1AF140928(v6, 32);
  sub_1AF2755B4((a1 + 9), 32);
  sub_1AF39186C((a1 + 13), 32);
  sub_1AF39186C((a1 + 17), 32);
  a1[21] = CFXTextureAllocatorPerFrameCreate(a2, a3);
  a1[22] = CFXBufferAllocatorPerFrameCreate(a2, @"RGFramePrivateBufferPool", 2, a3, 0x10000);
  a1[23] = CFXBufferAllocatorPerFrameCreate(a2, @"RGFrameSharedBufferPool", 0, a3, 0x10000);
  sub_1AF140928((a1 + 24), 32);
  sub_1AF140928((a1 + 28), 32);
  return a1;
}

void sub_1AF391750(_Unwind_Exception *a1)
{
  sub_1AF271CB8((v1 + 24));
  v4 = v1[23];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = v1[22];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = v1[21];
  if (v6)
  {
    CFRelease(v6);
  }

  sub_1AF3917F0((v1 + 17));
  sub_1AF3917F0((v1 + 13));
  sub_1AF271CB8((v1 + 9));
  sub_1AF391950(v2);
  sub_1AF391950((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t sub_1AF3917F0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 28);
    v4 = (v3 + 15);
    if (v3 != -15)
    {
      v5 = *(a1 + 16);
      do
      {
        v6 = *v5++;
        if (v6)
        {
        }

        v2 += 3;
        --v4;
      }

      while (v4);
      v2 = *(a1 + 8);
    }

    free(v2);
  }

  free(*a1);
  free(*(a1 + 16));
  return a1;
}

void sub_1AF39186C(uint64_t a1, int a2)
{
  *(a1 + 24) = 0;
  *(a1 + 28) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  v5 = malloc_type_malloc(v4, 0xBBD05BDCuLL);
  memset(v5, 255, v4);
  *(a1 + 16) = v5;
  v6 = malloc_type_malloc(8 * v3, 0xBBD05BDCuLL);
  memset(v6, 255, 8 * v3);
  *a1 = v6;
  v7 = malloc_type_malloc(24 * v3, 0xBBD05BDCuLL);
  memset(v7, 255, 24 * v3);
  *(a1 + 8) = v7;
  memset(*a1, 255, 8 * v3);
  v8 = *(a1 + 16);

  bzero(v8, v4);
}

uint64_t sub_1AF391950(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 28);
    v4 = (v3 + 15);
    if (v3 != -15)
    {
      v5 = *(a1 + 16);
      do
      {
        v6 = *v5++;
        if (v6)
        {
        }

        ++v2;
        --v4;
      }

      while (v4);
      v2 = *(a1 + 8);
    }

    free(v2);
  }

  free(*a1);
  free(*(a1 + 16));
  return a1;
}

void *sub_1AF3919CC(void *a1)
{
  sub_1AF271CB8((a1 + 28));
  sub_1AF271CB8((a1 + 24));
  v2 = a1[23];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[22];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[21];
  if (v4)
  {
    CFRelease(v4);
  }

  sub_1AF3917F0((a1 + 17));
  sub_1AF3917F0((a1 + 13));
  sub_1AF271CB8((a1 + 9));
  sub_1AF391950((a1 + 5));
  sub_1AF391950((a1 + 1));
  return a1;
}

void sub_1AF391A4C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF39186C(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF390B1C(a1, *v8, v7);
      }

      ++v8;
      v7 += 3;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

uint64_t sub_1AF391B00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  while (1)
  {
    v6 = *(a1 + 28);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 16);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v6 + 15;
    if (v12 >= v7 + 496)
    {
      v12 = v7 + 496;
    }

    LODWORD(v13) = v7;
    v14 = v12 - v7;
    if (v12 > v7)
    {
      v13 = v7;
      while ((*(v8 + 2 * v13) & 1) != 0)
      {
        ++v13;
        if (!--v14)
        {
          goto LABEL_31;
        }
      }
    }

    if (v13 != v12)
    {
      *(v8 + 2 * v13) |= 1u;
      if (v13 <= v7 + 14)
      {
        v19 = v13;
      }

      else
      {
        while (2)
        {
          v15 = v13 - 14;
          if (v13 < 0xF)
          {
            v15 = 0;
          }

          v16 = v15 - 1;
          if (v15 <= v13)
          {
            v17 = v13;
          }

          else
          {
            v17 = v15;
          }

          v18 = 1;
          while (1)
          {
            v19 = v16 + 1;
            if (v15 <= v19)
            {
              break;
            }

LABEL_25:
            ++v18;
            v16 = v19;
            if (v19 == v17)
            {
              goto LABEL_30;
            }
          }

          v20 = 1 << (v16 - v15 + 2);
          v21 = v18;
          v22 = v15;
          while (1)
          {
            v23 = v22;
            if ((v20 & *(v8 + 2 * v22)) != 0)
            {
              break;
            }

            ++v22;
            LOWORD(v20) = v20 >> 1;
            --v21;
            if (v23 + 1 > v19)
            {
              goto LABEL_25;
            }
          }

          if (v19 >= v13)
          {
LABEL_30:
            *(v8 + 2 * v13) ^= 1u;
            goto LABEL_31;
          }

          v24 = *(a1 + 8);
          *(*a1 + 8 * v13) = *(*a1 + 8 * v19);
          v25 = *(v24 + 8 * v19);
          *(v24 + 8 * v19) = 0;
          *(v24 + 8 * v13) = v25;

          v8 = *(a1 + 16);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v13 - v23 + 1))) ^ (1 << v21);
          LODWORD(v13) = v19;
          if (v19 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v13) = v19;
      }

      v30 = *(a1 + 8);
      v31 = *a3;
      *a3 = 0;
      *(v30 + 8 * v19) = v31;
      *(*a1 + 8 * v19) = a2;
      v32 = *(a1 + 16);
      *(v32 + 2 * v19) |= 1u;
      result = 1;
      *(v32 + 2 * v7) |= 1 << (v13 - v7 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_31:
    sub_1AF391D54(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v26 = *a3;
  *a3 = 0;
  v27 = *(a1 + 8);
  v28 = *(v27 + 8 * v10);
  *(v27 + 8 * v10) = v26;

  return 0;
}

void sub_1AF391D54(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF140928(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF391B00(a1, *v8, v7);
      }

      ++v8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

void sub_1AF391E08(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF2755B4(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF390E08(a1, *v8, v7);
      }

      ++v8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

uint64_t sub_1AF391EB4(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 28);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 16);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 8);
          *(*a1 + 8 * v14) = *(*a1 + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 16);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 8) + 8 * v20) = *a3;
      *(*a1 + 8 * v20) = a2;
      v27 = *(a1 + 16);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_32:
    sub_1AF3920D0(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 8) + 8 * v10) = *a3;
  return result;
}

void sub_1AF3920D0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF140928(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF391EB4(a1, *v8, v7);
      }

      ++v8;
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

uint64_t sub_1AF39217C(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 28);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 16);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 8);
          *(*a1 + 8 * v14) = *(*a1 + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 16);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 8) + 8 * v20) = *a3;
      *(*a1 + 8 * v20) = a2;
      v27 = *(a1 + 16);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_32:
    sub_1AF392398(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 8) + 8 * v10) = *a3;
  return result;
}

void sub_1AF392398(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF140928(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF39217C(a1, *v8, v7);
      }

      ++v8;
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

BOOL operator==(double *a1, double *a2)
{
  return *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3];
}

{
  return *a1 == *a2;
}

BOOL operator==(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  v3 = 256;
  v4 = a2;
  while (*(v2 - 2) == *v4 && *(v2 - 1) == v4[1] && *v2 == v4[2] && v2[1] == v4[3])
  {
    v4 += 4;
    v2 += 4;
    v3 -= 32;
    if (!v3)
    {
      if (*(a1 + 256) == *(a2 + 256) && *(a1 + 264) == *(a2 + 264) && *(a1 + 268) == *(a2 + 268) && *(a1 + 269) == *(a2 + 269) && *(a1 + 270) == *(a2 + 270) && *(a1 + 271) == *(a2 + 271) && *(a1 + 272) == *(a2 + 272) && *(a1 + 273) == *(a2 + 273) && *(a1 + 274) == *(a2 + 274) && *(a1 + 275) == *(a2 + 275) && *(a1 + 276) == *(a2 + 276) && *(a1 + 277) == *(a2 + 277) && *(a1 + 278) == *(a2 + 278))
      {
        return *(a1 + 279) == *(a2 + 279);
      }

      return 0;
    }
  }

  return 0;
}

BOOL CFX::RG::isBuildInResourceId(CFX::RG *this)
{
  v1 = &dword_1AFE484B0;
  v2 = 36;
  while (*v1 != this)
  {
    v1 += 2;
    v2 -= 4;
    if (!v2)
    {
      v1 = &word_1AFE484D4;
      return v1 != &word_1AFE484D4;
    }
  }

  return v1 != &word_1AFE484D4;
}

uint64_t CFX::RG::SubgraphBuildArguments::isDisabled(CFX::RG::SubgraphBuildArguments *this, uint64_t a2)
{
  v2 = *this;
  if (*this)
  {
    v3 = (*(v2 + 28) - 1) & a2;
    v4 = *(*(v2 + 16) + 2 * v3);
    if (v4 < 2)
    {
LABEL_6:
      LOBYTE(v2) = 0;
    }

    else
    {
      while ((v4 & 2) == 0 || *(*v2 + 8 * v3) != a2)
      {
        ++v3;
        v5 = v4 >= 4;
        v4 >>= 1;
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      v2 = *(v2 + 8);
      if (v2)
      {
        LOBYTE(v2) = *(v2 + v3);
      }
    }
  }

  return v2 & 1;
}

uint64_t CFX::RG::Subgraph::Subgraph(uint64_t this, const char *a2)
{
  *this = &unk_1F24ED1A8;
  v2 = *a2;
  if (*a2)
  {
    v3 = a2 + 1;
    v4 = -25147;
    do
    {
      v4 = 403 * (v4 ^ v2);
      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  else
  {
    v4 = -25147;
  }

  *(this + 8) = v4;
  *(this + 16) = a2;
  return this;
}

{
  *this = &unk_1F24ED1A8;
  v2 = *a2;
  if (*a2)
  {
    v3 = a2 + 1;
    v4 = -25147;
    do
    {
      v4 = 403 * (v4 ^ v2);
      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  else
  {
    v4 = -25147;
  }

  *(this + 8) = v4;
  *(this + 16) = a2;
  return this;
}

uint64_t CFX::RG::ResourceIdentifier::ResourceIdentifier(uint64_t this, __int16 a2, __int16 a3, int a4)
{
  *this = a2;
  *(this + 2) = a3;
  *(this + 4) = a4;
  return this;
}

{
  *this = a2;
  *(this + 2) = a3;
  *(this + 4) = a4;
  return this;
}

uint64_t sub_1AF3927B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  prof_beginFlame("_sortSubgraphDependencies", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 93);
  v9 = 1;
  v5 = *(a1 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = &v10;
  v8[3] = &v9;
  CStackAllocatorPushFrame(v5);
  sub_1AF39FCFC(v8);
  CStackAllocatorPopFrame(v5);
  v6 = v9;
  prof_endFlame();
  return v6;
}

void sub_1AF392968(_Unwind_Exception *a1)
{
  sub_1AF271CB8(v1 + 136);
  sub_1AF271CB8(v3);
  sub_1AF3A0654(v2);
  if (*(v1 + 76))
  {
    free(*(v1 + 80));
  }

  sub_1AF271CB8(v1 + 40);
  _Unwind_Resume(a1);
}

void CFX::RG::RenderGraphContext::~RenderGraphContext(CFX::RG::RenderGraphContext *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    v3 = *(this + 10);
    v4 = 8 * v2;
    do
    {
      CScratchAllocatorDestroy(*v3++);
      v4 -= 8;
    }

    while (v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    CFX::CrossFrameResourceManager::~CrossFrameResourceManager(v5);
    MEMORY[0x1B271C6B0]();
  }

  v6 = *(this + 3);
  if (v6)
  {
    CFX::GPUResourceManager::~GPUResourceManager(v6);
    MEMORY[0x1B271C6B0]();
  }

  CStackAllocatorDestroy(*(this + 2));
  CScratchAllocatorDestroy(*this);
  if (*(this + 51))
  {
    free(*(this + 26));
  }

  sub_1AF3A06C4(this + 168);
  sub_1AF271CB8(this + 136);
  sub_1AF271CB8(this + 104);
  sub_1AF3A0654(this + 22);
  if (*(this + 19))
  {
    free(*(this + 10));
  }

  sub_1AF271CB8(this + 40);
}

void sub_1AF392AB8(_Unwind_Exception *a1)
{
  if (*(v1 + 204))
  {
    free(*(v1 + 208));
  }

  sub_1AF3A06C4(v1 + 168);
  sub_1AF271CB8(v1 + 136);
  sub_1AF271CB8(v1 + 104);
  sub_1AF3A0654((v1 + 88));
  if (*(v1 + 76))
  {
    free(*(v1 + 80));
  }

  sub_1AF271CB8(v1 + 40);
  _Unwind_Resume(a1);
}

void CFX::RG::RenderGraphContext::createPersistentRenderGraphBuilder(CFX::RG::RenderGraphContext *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 18);
  if (!v4)
  {
    CScratchAllocatorCreate();
  }

  v9[0] = *(*(this + 10) + 8 * v4 - 8);
  v5 = v9[0];
  v9[1] = 0;
  *(this + 18) = v4 - 1;
  v6 = sub_1AF392C14(v5, 0, v9);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  v8 = v9[0];
  sub_1AF392C5C(this + 40, 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47)), &v8);
  *a2 = v6;
  operator new();
}

uint64_t sub_1AF392C14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v4 = sub_1AF23498C(v6, 0x198u, 8u);
  return CFX::RG::RenderGraphBuilder::RenderGraphBuilder(v4, *a3, a3[1]);
}

uint64_t sub_1AF392C5C(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 28);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 16);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 8);
          *(*a1 + 8 * v14) = *(*a1 + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 16);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 8) + 8 * v20) = *a3;
      *(*a1 + 8 * v20) = a2;
      v27 = *(a1 + 16);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_32:
    sub_1AF3A0774(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 8) + 8 * v10) = *a3;
  return result;
}

uint64_t CFX::RG::RenderGraphContext::stats@<X0>(CFX::RG::RenderGraphContext *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 17);
  if (v4 == -15)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(*(this + 7) + 2 * v7))
      {
        v5 += CScratchAllocatorCapacity(*(*(this + 6) + 8 * v7));
        ++v6;
        v4 = *(this + 17);
      }

      ++v7;
    }

    while (v7 < (v4 + 15));
  }

  *a2 = v6;
  a2[1] = v5;
  v8 = *(this + 18);
  if (v8)
  {
    v9 = 0;
    v10 = *(this + 10);
    v11 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v12 = 8 * v8;
    do
    {
      v13 = *v10++;
      v9 += CScratchAllocatorCapacity(v13);
      v12 -= 8;
    }

    while (v12);
    v14 = v11 + 1;
  }

  else
  {
    v9 = 0;
    v14 = 0;
  }

  a2[2] = v14;
  a2[3] = v9;
  a2[4] = CScratchAllocatorCapacity(*this);
  result = CStackAllocatorCapacity(*(this + 2));
  a2[5] = result;
  return result;
}

void CFX::RG::RenderGraphContext::deletePersistantRenderGraph(CFX::RG::RenderGraphContext *this, CFX::RG::RenderGraphBuilder *a2)
{
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = (*(this + 17) - 1) & v4;
  v6 = *(*(this + 7) + 2 * v5);
  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  while (v4 != *(*(this + 5) + 8 * v5))
  {
    do
    {
LABEL_3:
      v6 >>= 1;
      ++v5;
    }

    while ((v6 & 2) == 0);
  }

  v14 = *(*(this + 6) + 8 * v5);
  sub_1AF3930A0(v14, 0, a2);
  CScratchAllocatorReset(v14);
  sub_1AF1576F0(this + 72, &v14);
  v7 = (*(this + 17) - 1) & v4;
  v8 = *(this + 7);
  v9 = *(v8 + 2 * v7);
  if (v9 >= 2)
  {
    v10 = 1;
    for (i = *(v8 + 2 * v7); ; i >>= 1)
    {
      if ((i & 2) != 0)
      {
        v12 = v7 + v10 - 1;
        if (v4 == *(*(this + 5) + 8 * v12))
        {
          break;
        }
      }

      ++v10;
      if (i <= 3)
      {
        return;
      }
    }

    *(v8 + 2 * v7) = v9 ^ (1 << v10);
    *(v8 + 2 * v12) ^= 1u;
    --*(this + 16);
  }
}

void sub_1AF3930A0(int a1, void *a2, CFX::RG::RenderGraphBuilder *this)
{
  CFX::RG::RenderGraphBuilder::~RenderGraphBuilder(this);
  v5 = v4;
  if (a2)
  {
    sub_1AF234C8C(a2, &v5);
  }
}

uint64_t CFX::RG::RenderGraphContext::nextFrame(CFX::CrossFrameResourceManager **this)
{
  CFX::CrossFrameResourceManager::nextFrame(this[4]);
  CFX::GPUResourceManager::nextFrame(this[3]);
  CScratchAllocatorReset(*this);
  v2 = this[2];

  return CStackAllocatorCheckIsReset(v2);
}

uint64_t *CFX::RG::RenderGraphContext::transferFrom(CFX::RG::RenderGraphContext *this, CFX::RG::RenderGraphContext *a2)
{
  RGCrossFrameResourceManagerTransferResources_0(*(this + 4), *(a2 + 4));
  v4 = *(this + 3);
  v5 = *(a2 + 3);

  return CFX::GPUResourceManager::transferFrom(v4, v5);
}

void sub_1AF3931A4(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  if ((*a1 + 1) > *(a1 + 4))
  {
    sub_1AF3A0868(a1, 1, 0);
    v4 = *a1;
  }

  v5 = *a2;
  *(*(a1 + 8) + 16 * v4) = *a2;
  if (*(&v5 + 1))
  {
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
    v4 = *a1;
  }

  *a1 = v4 + 1;
}

_BYTE *CFX::RG::RenderGraphContext::release@<X0>(CFX::RG::RenderGraphContext *this@<X0>, CFX::RG::RenderGraphBuilder *a2@<X1>, CFX::RG::RenderGraphBuilder **a3@<X8>)
{
  v6 = *(this + 22);
  v4 = this + 88;
  v5 = v6;
  v7 = *(v4 + 1);
  if (v6)
  {
    v8 = 16 * v5;
    v9 = &v7[2 * v5];
    while (*v7 != a2)
    {
      v7 += 2;
      v8 -= 16;
      if (!v8)
      {
        v7 = v9;
        break;
      }
    }
  }

  v10 = v7[1];
  *a3 = *v7;
  a3[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  return sub_1AF393268(v4, v7);
}

_BYTE *sub_1AF393268(uint64_t a1, void *__dst)
{
  if (*(a1 + 4))
  {
    v4 = __dst[1];
    if (v4)
    {
      sub_1AF271A90(v4);
    }
  }

  v5 = *a1 - 1;
  *a1 = v5;
  result = (*(a1 + 8) + 16 * v5);
  if (result != __dst)
  {

    return memmove(__dst, __dst + 2, result - __dst);
  }

  return result;
}

uint64_t *CFX::RG::RenderGraphContext::tryResolvedTextureDescriptor(uint64_t **this, const CFX::RG::Resource *a2)
{
  v4 = CFX::GPUResourceManager::resourceHashOrRemapped(this[3], a2);
  v5 = v4;
  v6 = (*(this + 33) - 1) & v4;
  v7 = *(this[15] + v6);
  if (v7 < 2)
  {
    goto LABEL_5;
  }

  while ((v7 & 2) == 0 || v4 != this[13][v6])
  {
    ++v6;
    v8 = v7 >= 4;
    v7 >>= 1;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = this[14];
  if (!v12)
  {
LABEL_5:
    CFX::RG::RenderGraphContext::resolveResourcesDescriptorIfNeeded(this, a2);
    v6 = (*(this + 33) - 1) & v5;
    v9 = *(this[15] + v6);
    if (v9 < 2)
    {
      return 0;
    }

    while ((v9 & 2) == 0 || v5 != this[13][v6])
    {
      ++v6;
      v10 = v9 > 3;
      v9 >>= 1;
      if (!v10)
      {
        return 0;
      }
    }

    v12 = this[14];
  }

  return &v12[3 * v6];
}

void CFX::RG::RenderGraphContext::resolveResourcesDescriptorIfNeeded(uint64_t **this, const CFX::RG::Resource *a2)
{
  v18 = a2;
  v4 = CFX::GPUResourceManager::resourceHashOrRemapped(this[3], a2);
  v5 = v4;
  v6 = (*(this + 33) - 1) & v4;
  v7 = *(this[15] + v6);
  if (v7 < 2)
  {
    goto LABEL_5;
  }

  while ((v7 & 2) == 0 || v4 != this[13][v6])
  {
    ++v6;
    v8 = v7 >= 4;
    v7 >>= 1;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  if (!this[14])
  {
LABEL_5:
    v9 = CFX::RG::Resource::textureDesc(a2);
    v25 = v9[6];
    v26 = v9[7];
    v27 = v9[8];
    v28 = v9[9];
    v21 = v9[2];
    v22 = v9[3];
    v23 = v9[4];
    v24 = v9[5];
    v19 = *v9;
    v20 = v9[1];
    if (CFX::RG::RenderGraphContext::tryResolveTextureDescriptor(this, &v19, &v16))
    {
      v19 = v16;
      *&v20 = v17;
      sub_1AF3A0980((this + 13), v5, &v19);
      v10 = this[26];
      v11 = *(this + 50);
      if (v11)
      {
        v12 = 8 * v11;
        for (i = this[26]; *i != a2; ++i)
        {
          v12 -= 8;
          if (!v12)
          {
            return;
          }
        }
      }

      else
      {
        i = this[26];
      }

      if (i != &v10[v11])
      {
        v14 = v11 - 1;
        *(this + 50) = v14;
        v15 = &v10[v14];
        if (v15 != i)
        {
          memmove(i, i + 1, v15 - i);
        }
      }
    }

    else
    {
      sub_1AF1576F0((this + 25), &v18);
    }
  }
}

uint64_t CFX::RG::RenderGraphContext::updateResourceDescriptor(uint64_t **this, const CFX::RG::Resource *a2)
{
  v4 = CFX::GPUResourceManager::resourceHashOrRemapped(this[3], a2);
  v5 = CFX::RG::Resource::textureDesc(a2);
  v15 = v5[6];
  v16 = v5[7];
  v17 = v5[8];
  v18 = v5[9];
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[4];
  v14 = v5[5];
  v9 = *v5;
  v10 = v5[1];
  result = CFX::RG::RenderGraphContext::tryResolveTextureDescriptor(this, &v9, &v7);
  if (result)
  {
    v9 = v7;
    *&v10 = v8;
    return sub_1AF3A0980((this + 13), v4, &v9);
  }

  return result;
}

uint64_t CFX::RG::RenderGraphContext::computeResourceDescriptor(uint64_t a1, CFX::RG::Resource *this, uint64_t a3)
{
  v5 = CFX::RG::Resource::textureDesc(this);
  v6 = v5[7];
  v12[6] = v5[6];
  v12[7] = v6;
  v7 = v5[9];
  v12[8] = v5[8];
  v12[9] = v7;
  v8 = v5[3];
  v12[2] = v5[2];
  v12[3] = v8;
  v9 = v5[5];
  v12[4] = v5[4];
  v12[5] = v9;
  v10 = v5[1];
  v12[0] = *v5;
  v12[1] = v10;
  return CFX::RG::RenderGraphContext::tryResolveTextureDescriptor(a1, v12, a3);
}

void CFX::RG::RenderGraphContext::registerReferenceDescriptor(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  prof_beginFlame("registerReferenceDescriptor", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 332);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a2 ^ 1)) ^ ((0x9DDFEA08EB382D69 * (a2 ^ 1)) >> 47) ^ 1);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = (*(a1 + 164) - 1) & v7;
  v9 = *(*(a1 + 152) + 2 * v8);
  if (v9 < 2)
  {
    goto LABEL_5;
  }

  while ((v9 & 2) == 0 || v7 != *(*(a1 + 136) + 8 * v8))
  {
    ++v8;
    v10 = v9 >= 4;
    v9 >>= 1;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v22 = *(a1 + 144);
  if (v22)
  {
    if (!CFX::RG::TextureDescriptorReference::operator==((v22 + 160 * v8), a3))
    {
      v23 = *(a3 + 7);
      v37 = *(a3 + 6);
      v38 = v23;
      v24 = *(a3 + 9);
      v39 = *(a3 + 8);
      v40 = v24;
      v25 = *(a3 + 3);
      v33 = *(a3 + 2);
      v34 = v25;
      v26 = *(a3 + 5);
      v35 = *(a3 + 4);
      v36 = v26;
      v27 = *(a3 + 1);
      v31 = *a3;
      v32 = v27;
      sub_1AF3A0C88(a1 + 136, v7, &v31);
      memset(*(a1 + 104), 255, 8 * (*(a1 + 132) + 15));
      bzero(*(a1 + 120), 2 * (*(a1 + 132) + 15));
      *(a1 + 128) = 0;
    }
  }

  else
  {
LABEL_5:
    v11 = *(a3 + 7);
    v37 = *(a3 + 6);
    v38 = v11;
    v12 = *(a3 + 9);
    v39 = *(a3 + 8);
    v40 = v12;
    v13 = *(a3 + 3);
    v33 = *(a3 + 2);
    v34 = v13;
    v14 = *(a3 + 5);
    v35 = *(a3 + 4);
    v36 = v14;
    v15 = *(a3 + 1);
    v31 = *a3;
    v32 = v15;
    sub_1AF3A0C88(a1 + 136, v7, &v31);
    CStackAllocatorPushFrame(*(a1 + 16));
    v16 = *(a1 + 16);
    *&v31 = v16;
    *(&v31 + 1) = 0x2000000000;
    *&v32 = &v32 + 8;
    v17 = *(a1 + 200);
    if (v17)
    {
      v18 = *(a1 + 208);
      v19 = 8 * v17;
      do
      {
        v30 = *v18;
        v20 = CFX::RG::Resource::textureDesc(v30);
        v47 = v20[6];
        v48 = v20[7];
        v49 = v20[8];
        v50 = v20[9];
        v43 = v20[2];
        v44 = v20[3];
        v45 = v20[4];
        v46 = v20[5];
        v41 = *v20;
        v42 = v20[1];
        if (CFX::RG::RenderGraphContext::tryResolveTextureDescriptor(a1, &v41, &v28))
        {
          v21 = CFX::GPUResourceManager::resourceHashOrRemapped(*(a1 + 24), v30);
          v41 = v28;
          *&v42 = v29;
          sub_1AF3A0980(a1 + 104, v21, &v41);
        }

        else
        {
          sub_1AF240F04(&v31, &v30);
        }

        ++v18;
        v19 -= 8;
      }

      while (v19);
      v16 = *(a1 + 16);
    }

    *(a1 + 200) = 0;
    CStackAllocatorPopFrame(v16);
  }

  prof_endFlame();
}

BOOL CFX::RG::TextureDescriptorReference::operator==(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2 == v3 && v2 != 0)
  {
    v2 = *a1;
    v3 = *a2;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 6);
  v6 = *(a2 + 6);
  if (v5 == v6 && v5 != 0)
  {
    v5 = a1[2];
    v6 = a2[2];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = *(a1 + 10);
  v9 = *(a2 + 10);
  if (v8 == v9 && *(a1 + 10))
  {
    v8 = a1[4];
    v9 = a2[4];
  }

  if (v8 != v9)
  {
    return 0;
  }

  v10 = *(a1 + 14);
  v11 = *(a2 + 14);
  if (v10 == v11 && *(a1 + 14))
  {
    v10 = a1[6];
    v11 = a2[6];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v12 = *(a1 + 17);
  v13 = *(a2 + 17);
  if (v12 == v13 && *(a1 + 17))
  {
    v12 = *(a1 + 16);
    v13 = *(a2 + 16);
  }

  if (v12 != v13)
  {
    return 0;
  }

  v14 = *(a1 + 19);
  v15 = *(a2 + 19);
  if (v14 == v15 && *(a1 + 19))
  {
    v14 = *(a1 + 18);
    v15 = *(a2 + 18);
  }

  if (v14 != v15)
  {
    return 0;
  }

  v16 = *(a1 + 21);
  v17 = *(a2 + 21);
  if (v16 == v17 && *(a1 + 21))
  {
    v16 = *(a1 + 20);
    v17 = *(a2 + 20);
  }

  if (v16 != v17)
  {
    return 0;
  }

  v18 = *(a1 + 32);
  v19 = *(a2 + 32);
  if (v18 == v19 && *(a1 + 32))
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      return 0;
    }
  }

  else if (v18 != v19)
  {
    return 0;
  }

  v20 = *(a1 + 48);
  v21 = *(a2 + 48);
  if (v20 == v21 && *(a1 + 48))
  {
    if (*(a1 + 5) != *(a2 + 5))
    {
      return 0;
    }
  }

  else if (v20 != v21)
  {
    return 0;
  }

  v22 = *(a1 + 64);
  v23 = *(a2 + 64);
  if (v22 == v23 && *(a1 + 64))
  {
    if (*(a1 + 7) != *(a2 + 7))
    {
      return 0;
    }
  }

  else if (v22 != v23)
  {
    return 0;
  }

  v24 = *(a1 + 80);
  v25 = *(a2 + 80);
  if (v24 == v25 && *(a1 + 80))
  {
    if (*(a1 + 9) != *(a2 + 9))
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  v26 = *(a1 + 96);
  v27 = *(a2 + 96);
  if (v26 == v27 && *(a1 + 96))
  {
    if (*(a1 + 11) != *(a2 + 11))
    {
      return 0;
    }
  }

  else if (v26 != v27)
  {
    return 0;
  }

  v28 = *(a1 + 112);
  v29 = *(a2 + 112);
  if (v28 == v29 && *(a1 + 112))
  {
    if (*(a1 + 13) != *(a2 + 13))
    {
      return 0;
    }
  }

  else if (v28 != v29)
  {
    return 0;
  }

  v30 = *(a1 + 128);
  v31 = *(a2 + 128);
  if (v30 == v31 && *(a1 + 128))
  {
    if (*(a1 + 15) != *(a2 + 15))
    {
      return 0;
    }
  }

  else if (v30 != v31)
  {
    return 0;
  }

  v32 = *(a1 + 140);
  v33 = *(a2 + 140);
  if (v32 == v33 && *(a1 + 140))
  {
    if (*(a1 + 136) != *(a2 + 136) || *(a1 + 137) != *(a2 + 137) || *(a1 + 138) != *(a2 + 138))
    {
      return 0;
    }

    v32 = *(a1 + 139);
    v33 = *(a2 + 139);
  }

  if (v32 == v33 && *(a1 + 36) == *(a2 + 36))
  {
    return *(a1 + 19) == *(a2 + 19);
  }

  return 0;
}

void CFX::RG::RenderGraphContext::clearResolvedDescriptors(void **this)
{
  memset(this[13], 255, 8 * (*(this + 33) + 15));
  bzero(this[15], 2 * (*(this + 33) + 15));
  *(this + 32) = 0;
}

void CFX::RG::RenderGraphContext::clearReferenceDescriptors(void **this)
{
  memset(this[17], 255, 8 * (*(this + 41) + 15));
  bzero(this[19], 2 * (*(this + 41) + 15));
  *(this + 40) = 0;
  *(this + 50) = 0;
  memset(this[13], 255, 8 * (*(this + 33) + 15));
  bzero(this[15], 2 * (*(this + 33) + 15));
  *(this + 32) = 0;

  sub_1AF393D40((this + 21));
}

void sub_1AF393D40(uint64_t a1)
{
  sub_1AF3A0718(*(a1 + 8), *(a1 + 16), *(a1 + 28) + 15);
  memset(*a1, 255, 8 * (*(a1 + 28) + 15));
  bzero(*(a1 + 16), 2 * (*(a1 + 28) + 15));
  *(a1 + 24) = 0;
}

void CFX::RG::RenderGraphContext::registerResourceIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  prof_beginFlame("registerResourceIdentifier", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 379);
  if (a2 != 6893 && a2 != 9273 && WORD1(a2) != 6893 && WORD1(a2) != 9273 && HIDWORD(a2) != 6893 && HIDWORD(a2) != 9273)
  {
    v6 = CFX::GPUResourceManager::resourceHashOrRemapped(*(a1 + 24), a3);
    v7 = v6;
    v8 = (*(a1 + 196) - 1) & v6;
    v9 = *(*(a1 + 184) + 2 * v8);
    if (v9 < 2)
    {
      goto LABEL_11;
    }

    while ((v9 & 2) == 0 || v6 != *(*(a1 + 168) + 8 * v8))
    {
      ++v8;
      v10 = v9 >= 4;
      v9 >>= 1;
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    v11 = *(a1 + 176);
    if (v11)
    {
      sub_1AF393F84(v11 + 16 * v8, &v14);
    }

    else
    {
LABEL_11:
      v12 = 0;
      v13 = &v14;
      sub_1AF158DE0(&v12, 3, 1);
      sub_1AF269758(&v12, &v14);
      sub_1AF393FD0(a1 + 168, v7, &v12);
      if (HIDWORD(v12))
      {
        free(v13);
      }
    }
  }

  prof_endFlame();
}

BOOL CFX::RG::ResourceIdentifier::isComplete(CFX::RG::ResourceIdentifier *this)
{
  v1 = *this;
  if (v1 == 6893 || v1 == 9273)
  {
    return 0;
  }

  v3 = *(this + 1);
  if (v3 == 6893 || v3 == 9273)
  {
    return 0;
  }

  v6 = *(this + 1);
  return v6 != 6893 && v6 != 9273;
}

void sub_1AF393F84(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 8 * v2;
    v4 = *(a1 + 8);
    while (*v4 != *a2)
    {
      ++v4;
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (v4 == (*(a1 + 8) + 8 * v2))
  {
LABEL_8:
    sub_1AF269758(a1, a2);
  }
}

uint64_t sub_1AF393FD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  while (1)
  {
    v6 = *(a1 + 28);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 16);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v6 + 15;
    if (v12 >= v7 + 496)
    {
      v12 = v7 + 496;
    }

    LODWORD(v13) = v7;
    v14 = v12 - v7;
    if (v12 > v7)
    {
      v13 = v7;
      while ((*(v8 + 2 * v13) & 1) != 0)
      {
        ++v13;
        if (!--v14)
        {
          goto LABEL_33;
        }
      }
    }

    if (v13 != v12)
    {
      *(v8 + 2 * v13) |= 1u;
      if (v13 <= v7 + 14)
      {
        v28 = v13;
LABEL_35:
        v29 = (*(a1 + 8) + 16 * v28);
        *v29 = 0;
        v29[1] = v29 + 2;
        sub_1AF2718B4(v29, a3);
        *(*a1 + 8 * v28) = a2;
        v30 = *(a1 + 16);
        *(v30 + 2 * v28) |= 1u;
        result = 1;
        *(v30 + 2 * v7) |= 1 << (v13 - v7 + 1);
        ++*(a1 + 24);
        return result;
      }

      while (1)
      {
        v15 = v13;
        v16 = v13 - 14;
        if (v13 < 0xF)
        {
          v16 = 0;
        }

        v17 = v16 - 1;
        v18 = v16 <= v13 ? v13 : v16;
        v19 = 1;
        while (1)
        {
          v13 = v17 + 1;
          if (v16 <= v13)
          {
            break;
          }

LABEL_25:
          ++v19;
          v17 = v13;
          if (v13 == v18)
          {
            goto LABEL_32;
          }
        }

        v20 = 1 << (v17 - v16 + 2);
        v21 = v19;
        v22 = v16;
        while (1)
        {
          v23 = v22;
          if ((v20 & *(v8 + 2 * v22)) != 0)
          {
            break;
          }

          ++v22;
          LOWORD(v20) = v20 >> 1;
          --v21;
          if (v23 + 1 > v13)
          {
            goto LABEL_25;
          }
        }

        if (v13 >= v15)
        {
          break;
        }

        v24 = *(a1 + 8);
        *(*a1 + 8 * v15) = *(*a1 + 8 * v13);
        v25 = (v24 + 16 * v15);
        *v25 = 0;
        v25[1] = v25 + 2;
        sub_1AF2718B4(v25, (v24 + 16 * v13));
        v26 = *(a1 + 8) + 16 * v13;
        if (*(v26 + 4))
        {
          free(*(v26 + 8));
        }

        v8 = *(a1 + 16);
        *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v15 - v23 + 1))) ^ (1 << v21);
        if (v13 <= v7 + 14)
        {
          v28 = v13;
          goto LABEL_35;
        }
      }

LABEL_32:
      *(v8 + 2 * v15) ^= 1u;
    }

LABEL_33:
    sub_1AF3A0FD8(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  sub_1AF2718B4(*(a1 + 8) + 16 * v10, a3);
  return 0;
}

uint64_t sub_1AF39423C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    free(*(a1 + 8));
  }

  return a1;
}

int *CFX::RG::RenderGraphContext::registeredIdentifiersForResource(uint64_t **this, const CFX::RG::Resource *a2)
{
  if ((atomic_load_explicit(&qword_1ED73AAE0, memory_order_acquire) & 1) == 0)
  {
    v9 = a2;
    sub_1AFDFB5D8();
    a2 = v9;
  }

  v3 = CFX::GPUResourceManager::resourceHashOrRemapped(this[3], a2);
  v4 = (*(this + 49) - 1) & v3;
  v5 = *(this[23] + v4);
  if (v5 < 2)
  {
LABEL_7:
    v7 = 0;
  }

  else
  {
    while ((v5 & 2) == 0 || v3 != this[21][v4])
    {
      ++v4;
      v6 = v5 > 3;
      v5 >>= 1;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v7 = &this[22][2 * v4];
  }

  if (v7)
  {
    return v7;
  }

  else
  {
    return &dword_1ED73AAE8;
  }
}

uint64_t CFX::RG::RenderGraphContext::tryResolveTextureDescriptor(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = a2[7];
  v50 = a2[6];
  v51 = v5;
  v6 = a2[9];
  v52 = a2[8];
  v53 = v6;
  v7 = a2[3];
  v46 = a2[2];
  v47 = v7;
  v8 = a2[5];
  v48 = a2[4];
  v49 = v8;
  v9 = a2[1];
  v44 = *a2;
  v45 = v9;
  CStackAllocatorPushFrame(*(a1 + 16));
  v40 = *(a1 + 16);
  v41 = 0x800000000;
  v42 = &v43;
  for (i = 24; i != 1304; i += 160)
  {
    CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v40 + i);
  }

  sub_1AF394594(&v40, &v44);
  v11 = *(&v53 + 1);
  if (*(&v53 + 1) == 0x1AED1AED1AEDLL)
  {
LABEL_4:
    CFXTextureDescriptorMakeDefault(&v30);
    *a3 = v30;
    *(a3 + 16) = v31;
    if (v41)
    {
      v12 = &v42[20 * v41 - 20];
      v13 = v41 - 1;
      do
      {
        v36 = v12[6];
        v37 = v12[7];
        v38 = v12[8];
        v39 = v12[9];
        v32 = v12[2];
        v33 = v12[3];
        v34 = v12[4];
        v35 = v12[5];
        v30 = *v12;
        v31 = v12[1];
        LODWORD(v41) = v13;
        CFX::RG::TextureDescriptorReference::partialResolveInto(&v30, a3);
        v12 -= 10;
        --v13;
      }

      while (v13 != -1);
    }

    v14 = 1;
  }

  else
  {
    while (1)
    {
      v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ 1)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ 1)) >> 47) ^ 1);
      v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
      v17 = (*(a1 + 164) - 1) & v16;
      v18 = *(*(a1 + 152) + 2 * v17);
      if (v18 < 2)
      {
        break;
      }

      while ((v18 & 2) == 0 || v16 != *(*(a1 + 136) + 8 * v17))
      {
        ++v17;
        v19 = v18 >= 4;
        v18 >>= 1;
        if (!v19)
        {
          goto LABEL_16;
        }
      }

      v20 = *(a1 + 144);
      if (!v20)
      {
        break;
      }

      v21 = (v20 + 160 * v17);
      v22 = v21[1];
      v44 = *v21;
      v45 = v22;
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      v48 = v21[4];
      v49 = v25;
      v46 = v23;
      v47 = v24;
      v26 = v21[6];
      v27 = v21[7];
      v28 = v21[9];
      v52 = v21[8];
      v53 = v28;
      v50 = v26;
      v51 = v27;
      sub_1AF394594(&v40, &v44);
      v11 = *(&v53 + 1);
      if (*(&v53 + 1) == 0x1AED1AED1AEDLL)
      {
        goto LABEL_4;
      }
    }

LABEL_16:
    v14 = 0;
  }

  CStackAllocatorPopFrame(*(a1 + 16));
  return v14;
}

__n128 sub_1AF394594(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = CStackAllocatorAllocateAligned(*a1, 160 * v7, 8, 2);
    memcpy(Aligned, v6, 160 * *(a1 + 8));
    *(a1 + 16) = Aligned;
    *(a1 + 12) = v7;
    v6 = Aligned;
    v4 = *(a1 + 8);
  }

  v9 = &v6[160 * v4];
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 1) = v10;
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  v13 = *(a2 + 80);
  *(v9 + 4) = *(a2 + 64);
  *(v9 + 5) = v13;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  result = *(a2 + 96);
  v15 = *(a2 + 112);
  v16 = *(a2 + 144);
  *(v9 + 8) = *(a2 + 128);
  *(v9 + 9) = v16;
  *(v9 + 6) = result;
  *(v9 + 7) = v15;
  ++*(a1 + 8);
  return result;
}

void CFX::RG::TextureDescriptorReference::partialResolveInto(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x10000) != 0)
  {
    *(a2 + 4) = *a1;
  }

  v3 = *(a1 + 4);
  if ((v3 & 0x10000) != 0)
  {
    *(a2 + 6) = v3;
  }

  v4 = *(a1 + 8);
  if ((v4 & 0x10000) != 0)
  {
    *(a2 + 8) = v4;
  }

  v5 = *(a1 + 12);
  if ((v5 & 0x10000) != 0)
  {
    *(a2 + 10) = v5;
  }

  v6 = *(a1 + 16);
  if ((v6 & 0x100) != 0)
  {
    *(a2 + 14) = v6;
  }

  v7 = *(a1 + 18);
  if ((v7 & 0x100) != 0)
  {
    if ((v7 & 0xFE) == 0)
    {
      LOBYTE(v7) = 1;
    }

    *(a2 + 15) = v7;
  }

  v8 = *(a1 + 20);
  if ((v8 & 0x100) != 0)
  {
    *(a2 + 12) = (*(a2 + 12) & 0xFFFDFFFFFFFFFFFFLL) + (v8 << 49);
  }

  if (*(a1 + 32))
  {
    *(a2 + 12) = *(a1 + 24);
  }

  if (*(a1 + 48))
  {
    *(a2 + 12) = *(a2 + 12) & 0xFFFFF0FFFFFFFFFFLL | ((*(a1 + 40) & 0xFLL) << 40);
  }

  if (*(a1 + 64))
  {
    *(a2 + 12) = *(a2 + 12) & 0xFFFF8FFFFFFFFFFFLL | ((*(a1 + 56) & 7) << 44);
  }

  if (*(a1 + 80))
  {
    *(a2 + 16) = *(a1 + 72);
  }

  if (*(a1 + 96))
  {
    *(a2 + 12) = *(a2 + 12) & 0xFFFBFFFFFFFFFFFFLL | ((*(a1 + 88) & 1) << 50);
  }

  if (*(a1 + 112))
  {
    *(a2 + 12) = *(a2 + 12) & 0xFFF7FFFFFFFFFFFFLL | ((*(a1 + 104) & 1) << 51);
  }

  if (*(a1 + 128))
  {
    *(a2 + 12) = *(a2 + 12) & 0xFFFE7FFFFFFFFFFFLL | ((*(a1 + 120) & 3) << 47);
  }

  if (*(a1 + 140))
  {
    *a2 = *(a1 + 136);
  }

  v9 = *(a2 + 4);
  LODWORD(v10) = (*(a1 + 144) * v9);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v10;
  }

  v11 = v9 & 0xFFFFFFFFFFFF0000 | v10;
  *(a2 + 4) = v11;
  v12 = (*(a1 + 144) * (v9 >> 16));
  if (v12 <= 1)
  {
    LOWORD(v12) = 1;
  }

  *(a2 + 4) = v11 & 0xFFFFFFFF0000FFFFLL | (v12 << 16);
  v13 = *(a2 + 12);
  v14 = (v13 << 40) >> 56;
  if (v14 >= 2)
  {
    LODWORD(v15) = vcvtms_s32_f32(log2f(fmaxf(v10, v12))) + 1;
    if (v14 >= v15)
    {
      v15 = v15;
    }

    else
    {
      v15 = (v13 << 40) >> 56;
    }

    v13 = v13 & 0xFFFFFFFFFF00FFFFLL | (v15 << 16);
    *(a2 + 12) = v13;
  }

  if ((v13 & 0xFF000000) == 0x1000000)
  {
    v16 = (v13 >> 40) & 0xF;
    v17 = v16 << 40;
    if (v16 == 8)
    {
      v17 = 0x30000000000;
    }

    v18 = v16 == 4;
    v19 = 0x20000000000;
    if (!v18)
    {
      v19 = v17;
    }

    v13 = v13 & 0xFFFFF0FF01FFFFFFLL | v19;
    *(a2 + 12) = v13;
  }

  if (v13 >= 0x2000000)
  {
    v20 = (v13 >> 40) & 0xF;
    v21 = v20 << 40;
    if (v20 == 3)
    {
      v21 = 0x80000000000;
    }

    v18 = v20 == 2;
    v22 = 0x40000000000;
    if (!v18)
    {
      v22 = v21;
    }

    *(a2 + 12) = v22 | v13 & 0xFFFFF0FF7FFFFFFFLL;
  }
}

void CFX::RG::RenderGraphContext::resolveResourcesDescriptorsIfNeeded(uint64_t **this, const CFX::RG::Resource **a2, const CFX::RG::Resource **a3)
{
  prof_beginFlame("resolveResourcesDescriptorsIfNeeded", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 475);
  while (a2 != a3)
  {
    CFX::RG::RenderGraphContext::resolveResourcesDescriptorIfNeeded(this, *a2++);
  }

  prof_endFlame();
}

uint64_t CFX::RG::RenderGraphContext::optimisationParameters(CFX::RG::RenderGraphContext *this)
{
  if (*(this + 231) == 1)
  {
    *(this + 229) = 0;
  }

  return this + 224;
}

{
  if (*(this + 231) == 1)
  {
    *(this + 229) = 0;
  }

  return this + 224;
}

uint64_t CFX::RG::TextureDescriptorReference::TextureDescriptorReference(uint64_t this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 14) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 140) = 0;
  *(this + 20) = 0;
  *(this + 16) = 0;
  *(this + 144) = 1065353216;
  *(this + 152) = 0x1AED1AED1AEDLL;
  return this;
}

uint64_t CFX::RG::TextureDescriptorReference::TextureDescriptorReference(uint64_t result, uint64_t a2, float a3)
{
  *result = 0;
  *(result + 2) = 0;
  *(result + 4) = 0;
  *(result + 6) = 0;
  *(result + 8) = 0;
  *(result + 10) = 0;
  *(result + 12) = 0;
  *(result + 14) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 140) = 0;
  *(result + 20) = 0;
  *(result + 16) = 0;
  *(result + 144) = a3;
  *(result + 152) = a2;
  return result;
}

uint64_t CFX::RG::TextureDescriptorReference::TextureDescriptorReference(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 2) = 0;
  *(result + 4) = 0;
  *(result + 6) = 0;
  *(result + 8) = 0;
  *(result + 10) = 0;
  *(result + 12) = 0;
  *(result + 14) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 140) = 0;
  *(result + 20) = 0;
  *(result + 16) = 0;
  *(result + 152) = 0x1AED1AED1AEDLL;
  *(result + 144) = 1065353216;
  v2 = *(a2 + 4);
  *(result + 2) = 1;
  *result = v2;
  v3 = *(a2 + 4) >> 16;
  *(result + 6) = 1;
  *(result + 4) = v3;
  LOWORD(v3) = *(a2 + 8);
  *(result + 10) = 1;
  *(result + 8) = v3;
  LOWORD(v3) = *(a2 + 10);
  *(result + 14) = 1;
  *(result + 12) = v3;
  v4 = *(a2 + 12) >> 16;
  *(result + 17) = 1;
  *(result + 16) = v4;
  v5 = *(a2 + 12) >> 24;
  *(result + 19) = 1;
  *(result + 18) = v5;
  *(result + 20) = (*(a2 + 12) >> 49) & 1 | 0x100;
  *(result + 24) = *(a2 + 12);
  *(result + 32) = 1;
  *(result + 40) = (*(a2 + 12) >> 40) & 0xFLL;
  *(result + 48) = 1;
  *(result + 56) = (*(a2 + 12) >> 44) & 7;
  *(result + 64) = 1;
  *(result + 72) = *(a2 + 16);
  *(result + 80) = 1;
  *(result + 88) = (*(a2 + 12) >> 50) & 1;
  *(result + 96) = 1;
  *(result + 104) = (*(a2 + 12) << 12) >> 63;
  *(result + 112) = 1;
  *(result + 120) = (*(a2 + 12) >> 47) & 3;
  *(result + 128) = 1;
  LODWORD(v5) = *a2;
  *(result + 140) = 1;
  *(result + 136) = v5;
  *(result + 152) = 0x1AED1AED1AEDLL;
  return result;
}

__n128 CFX::RG::TextureDescriptorReference::withWidth@<Q0>(CFX::RG::TextureDescriptorReference *this@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 7);
  *(a3 + 96) = *(this + 6);
  *(a3 + 112) = v3;
  v4 = *(this + 9);
  *(a3 + 128) = *(this + 8);
  *(a3 + 144) = v4;
  v5 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v5;
  v6 = *(this + 5);
  *(a3 + 64) = *(this + 4);
  *(a3 + 80) = v6;
  result = *this;
  v8 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v8;
  *a3 = a2;
  *(a3 + 2) = 1;
  return result;
}

_OWORD *CFX::RG::TextureDescriptorReference::withWidthIf@<X0>(_OWORD *this@<X0>, int a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this[7];
  *(a4 + 96) = this[6];
  *(a4 + 112) = v4;
  v5 = this[9];
  *(a4 + 128) = this[8];
  *(a4 + 144) = v5;
  v6 = this[3];
  *(a4 + 32) = this[2];
  *(a4 + 48) = v6;
  v7 = this[5];
  *(a4 + 64) = this[4];
  *(a4 + 80) = v7;
  v8 = this[1];
  *a4 = *this;
  *(a4 + 16) = v8;
  if (a2)
  {
    *a4 = a3;
    *(a4 + 2) = 1;
  }

  return this;
}

__n128 CFX::RG::TextureDescriptorReference::withHeight@<Q0>(CFX::RG::TextureDescriptorReference *this@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 7);
  *(a3 + 96) = *(this + 6);
  *(a3 + 112) = v3;
  v4 = *(this + 9);
  *(a3 + 128) = *(this + 8);
  *(a3 + 144) = v4;
  v5 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v5;
  v6 = *(this + 5);
  *(a3 + 64) = *(this + 4);
  *(a3 + 80) = v6;
  result = *this;
  v8 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v8;
  *(a3 + 4) = a2;
  *(a3 + 6) = 1;
  return result;
}

__n128 CFX::RG::TextureDescriptorReference::withDepth@<Q0>(CFX::RG::TextureDescriptorReference *this@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 7);
  *(a3 + 96) = *(this + 6);
  *(a3 + 112) = v3;
  v4 = *(this + 9);
  *(a3 + 128) = *(this + 8);
  *(a3 + 144) = v4;
  v5 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v5;
  v6 = *(this + 5);
  *(a3 + 64) = *(this + 4);
  *(a3 + 80) = v6;
  result = *this;
  v8 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v8;
  *(a3 + 8) = a2;
  *(a3 + 10) = 1;
  return result;
}

__n128 CFX::RG::TextureDescriptorReference::withArraylength@<Q0>(CFX::RG::TextureDescriptorReference *this@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 7);
  *(a3 + 96) = *(this + 6);
  *(a3 + 112) = v3;
  v4 = *(this + 9);
  *(a3 + 128) = *(this + 8);
  *(a3 + 144) = v4;
  v5 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v5;
  v6 = *(this + 5);
  *(a3 + 64) = *(this + 4);
  *(a3 + 80) = v6;
  result = *this;
  v8 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v8;
  *(a3 + 12) = a2;
  *(a3 + 14) = 1;
  return result;
}

__n128 CFX::RG::TextureDescriptorReference::withMipmaplevelcount@<Q0>(CFX::RG::TextureDescriptorReference *this@<X0>, __int16 a2@<W1>, _OWORD *a3@<X8>)
{
  v3 = *(this + 7);
  a3[6] = *(this + 6);
  a3[7] = v3;
  v4 = *(this + 9);
  a3[8] = *(this + 8);
  a3[9] = v4;
  v5 = *(this + 3);
  a3[2] = *(this + 2);
  a3[3] = v5;
  v6 = *(this + 5);
  a3[4] = *(this + 4);
  a3[5] = v6;
  result = *this;
  v8 = *(this + 1);
  *a3 = *this;
  a3[1] = v8;
  *(a3 + 8) = a2 | 0x100;
  return result;
}

_OWORD *CFX::RG::TextureDescriptorReference::withSampleCount@<X0>(_OWORD *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = this[7];
  *(a3 + 96) = this[6];
  *(a3 + 112) = v3;
  v4 = this[9];
  *(a3 + 128) = this[8];
  *(a3 + 144) = v4;
  v5 = this[3];
  *(a3 + 32) = this[2];
  *(a3 + 48) = v5;
  v6 = this[5];
  *(a3 + 64) = this[4];
  *(a3 + 80) = v6;
  v7 = this[1];
  *a3 = *this;
  *(a3 + 16) = v7;
  if (a2)
  {
    *(a3 + 18) = a2 | 0x100;
  }

  return this;
}

__n128 CFX::RG::TextureDescriptorReference::withPixelFormat@<Q0>(CFX::RG::TextureDescriptorReference *this@<X0>, MTLPixelFormat a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 7);
  *(a3 + 96) = *(this + 6);
  *(a3 + 112) = v3;
  v4 = *(this + 9);
  *(a3 + 128) = *(this + 8);
  *(a3 + 144) = v4;
  v5 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v5;
  v6 = *(this + 5);
  *(a3 + 64) = *(this + 4);
  *(a3 + 80) = v6;
  result = *this;
  v8 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v8;
  *(a3 + 24) = a2;
  *(a3 + 32) = 1;
  return result;
}

_OWORD *CFX::RG::TextureDescriptorReference::withPixelFormatIf@<X0>(_OWORD *this@<X0>, MTLPixelFormat a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  v4 = this[7];
  *(a4 + 96) = this[6];
  *(a4 + 112) = v4;
  v5 = this[9];
  *(a4 + 128) = this[8];
  *(a4 + 144) = v5;
  v6 = this[3];
  *(a4 + 32) = this[2];
  *(a4 + 48) = v6;
  v7 = this[5];
  *(a4 + 64) = this[4];
  *(a4 + 80) = v7;
  v8 = this[1];
  *a4 = *this;
  *(a4 + 16) = v8;
  if (a3)
  {
    *(a4 + 24) = a2;
    *(a4 + 32) = 1;
  }

  return this;
}

__n128 CFX::RG::TextureDescriptorReference::withTextureType@<Q0>(CFX::RG::TextureDescriptorReference *this@<X0>, MTLTextureType a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 7);
  *(a3 + 96) = *(this + 6);
  *(a3 + 112) = v3;
  v4 = *(this + 9);
  *(a3 + 128) = *(this + 8);
  *(a3 + 144) = v4;
  v5 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v5;
  v6 = *(this + 5);
  *(a3 + 64) = *(this + 4);
  *(a3 + 80) = v6;
  result = *this;
  v8 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v8;
  *(a3 + 40) = a2;
  *(a3 + 48) = 1;
  return result;
}

__n128 CFX::RG::TextureDescriptorReference::withUsage@<Q0>(CFX::RG::TextureDescriptorReference *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 7);
  *(a3 + 96) = *(this + 6);
  *(a3 + 112) = v3;
  v4 = *(this + 9);
  *(a3 + 128) = *(this + 8);
  *(a3 + 144) = v4;
  v5 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v5;
  v6 = *(this + 5);
  *(a3 + 64) = *(this + 4);
  *(a3 + 80) = v6;
  result = *this;
  v8 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v8;
  *(a3 + 72) = a2;
  *(a3 + 80) = 1;
  return result;
}

_OWORD *CFX::RG::TextureDescriptorReference::withSizeFactor@<X0>(_OWORD *this@<X0>, float a2@<S0>, float *a3@<X8>)
{
  v3 = this[7];
  *(a3 + 6) = this[6];
  *(a3 + 7) = v3;
  v4 = this[9];
  *(a3 + 8) = this[8];
  *(a3 + 9) = v4;
  v5 = this[3];
  *(a3 + 2) = this[2];
  *(a3 + 3) = v5;
  v6 = this[5];
  *(a3 + 4) = this[4];
  *(a3 + 5) = v6;
  v7 = this[1];
  *a3 = *this;
  *(a3 + 1) = v7;
  a3[36] = a2;
  return this;
}

float CFX::RG::TextureDescriptorReference::applyingSizeFactor@<S0>(CFX::RG::TextureDescriptorReference *this@<X0>, float a2@<S0>, float *a3@<X8>)
{
  v3 = *(this + 7);
  *(a3 + 6) = *(this + 6);
  *(a3 + 7) = v3;
  v4 = *(this + 9);
  *(a3 + 8) = *(this + 8);
  *(a3 + 9) = v4;
  v5 = *(this + 3);
  *(a3 + 2) = *(this + 2);
  *(a3 + 3) = v5;
  v6 = *(this + 5);
  *(a3 + 4) = *(this + 4);
  *(a3 + 5) = v6;
  v7 = *(this + 1);
  *a3 = *this;
  *(a3 + 1) = v7;
  result = a3[36] * a2;
  a3[36] = result;
  return result;
}

uint64_t CFX::RG::ExternalResourceDesc::ExternalResourceDesc(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  v7 = a5;
  *(a1 + 168) = _Block_copy(a4);
  v8 = _Block_copy(v7);

  *(a1 + 176) = v8;
  *(a1 + 184) = 0;
  return a1;
}

uint64_t CFX::RG::ExternalResourceDesc::ExternalResourceDesc(uint64_t a1, __int128 *a2, const void *a3, void *a4)
{
  *a1 = 1;
  v6 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v6;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  *(a1 + 88) = a2[5];
  *(a1 + 72) = v9;
  *(a1 + 56) = v8;
  *(a1 + 40) = v7;
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  *(a1 + 152) = a2[9];
  *(a1 + 136) = v12;
  *(a1 + 120) = v11;
  *(a1 + 104) = v10;
  v13 = a4;
  *(a1 + 168) = _Block_copy(a3);
  v14 = _Block_copy(v13);

  *(a1 + 176) = v14;
  *(a1 + 184) = 0;
  return a1;
}

uint64_t CFX::RG::ExternalResourceDesc::ExternalResourceDesc(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  *(a1 + 168) = _Block_copy(*(a2 + 21));
  *(a1 + 176) = _Block_copy(*(a2 + 22));
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  *(a1 + 168) = _Block_copy(*(a2 + 21));
  *(a1 + 176) = _Block_copy(*(a2 + 22));
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t CFX::RG::ExternalResourceDesc::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  v12 = _Block_copy(*(a2 + 21));
  v13 = *(a1 + 168);
  *(a1 + 168) = v12;

  v14 = _Block_copy(*(a2 + 22));
  v15 = *(a1 + 176);
  *(a1 + 176) = v14;

  *(a1 + 184) = *(a2 + 184);
  return a1;
}

{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  v12 = *(a2 + 21);
  *(a2 + 21) = 0;
  v13 = *(a1 + 168);
  *(a1 + 168) = v12;

  v14 = *(a2 + 22);
  *(a2 + 22) = 0;
  v15 = *(a1 + 176);
  *(a1 + 176) = v14;

  *(a1 + 184) = *(a2 + 184);
  return a1;
}

__n128 CFX::RG::ExternalResourceDesc::ExternalResourceDesc(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = v7;
  result = *(a2 + 168);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a1 + 168) = result;
  *(a1 + 184) = *(a2 + 184);
  return result;
}

{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = v7;
  result = *(a2 + 168);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a1 + 168) = result;
  *(a1 + 184) = *(a2 + 184);
  return result;
}

void CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(id *this)
{
}

{
}

uint64_t CFX::RG::ExternalResourceDesc::bufferDesc(CFX::RG::ExternalResourceDesc *this)
{
  return this + 8;
}

{
  return this + 8;
}

uint64_t CFX::RG::ExternalResourceDesc::textureDesc(CFX::RG::ExternalResourceDesc *this)
{
  if (*this != 1)
  {
    abort();
  }

  return this + 8;
}

{
  if (*this != 1)
  {
    abort();
  }

  return this + 8;
}

id CFX::RG::ExternalResourceDesc::allocate(const void **this)
{
  v1 = _Block_copy(this[21]);

  return v1;
}

id CFX::RG::ExternalResourceDesc::destroy(const void **this)
{
  v1 = _Block_copy(this[22]);

  return v1;
}

void *CFX::RG::ResourceIdentifier::ResourceIdentifier(void *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void *CFX::RG::ResourceIdentifier::ResourceIdentifier(void *this, uint64_t a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

CFX::RG::ResourceIdentifier *CFX::RG::ResourceIdentifier::ResourceIdentifier(CFX::RG::ResourceIdentifier *this, const char *__s)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4 >= 256 || (v5 = v4, strcpy(__dst, __s), (v6 = strchr(__dst, 46)) == 0) || &__dst[v5] - v6 <= 0 || (*v6 = 0, v7 = v6 + 1, (v8 = strchr(v6 + 1, 46)) == 0) || &__dst[v5] - v8 <= 0)
  {
    abort();
  }

  *v8 = 0;
  v9 = v8 + 1;
  if (!strcmp(v8 + 1, "Color"))
  {
    v11 = "Color0";
    v10 = v7;
  }

  else
  {
    v10 = v7;
    v11 = v9;
  }

  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v13, __dst, v10, v11);
  *this = v13;
  return this;
}

CFX::RG::ResourceIdentifier *CFX::RG::ResourceIdentifier::ResourceIdentifier(CFX::RG::ResourceIdentifier *this, const char *a2, const char *a3, const char *a4)
{
  LODWORD(v8) = -2128831035;
  prof_beginFlame("ResourceIdentifier", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 835);
  v9 = *a2;
  if (*a2)
  {
    v10 = a2 + 1;
    v11 = -25147;
    do
    {
      v11 = 403 * (v11 ^ v9);
      v12 = *v10++;
      v9 = v12;
    }

    while (v12);
    v13 = v11;
  }

  else
  {
    v13 = 40389;
  }

  v14 = *a3;
  if (*a3)
  {
    v15 = a3 + 1;
    v16 = -2128831035;
    do
    {
      v17 = v16 ^ v14;
      v16 = 16777619 * v17;
      v18 = *v15++;
      v14 = v18;
    }

    while (v18);
    v19 = (26411008 * v17);
  }

  else
  {
    v19 = 2646933504;
  }

  v20 = *a4;
  if (*a4)
  {
    v21 = a4 + 1;
    do
    {
      v8 = 16777619 * (v8 ^ v20);
      v22 = *v21++;
      v20 = v22;
    }

    while (v22);
    v23 = v8 << 32;
  }

  else
  {
    v23 = 0x811C9DC500000000;
  }

  *this = v23 | v19 | v13;
  prof_endFlame();
  return this;
}

uint64_t CFX::RG::ResourceIdentifier::pathName@<X0>(CFX::RG::ResourceIdentifier *this@<X0>, _BYTE *a2@<X8>)
{
  sub_1AF273380(&v22);
  v4 = 0;
  v5 = off_1E7A7FB80;
  while (word_1AFE484D4[v4] != *this)
  {
    ++v4;
    ++v5;
    if (v4 == 8)
    {
      v6 = v22;
      *(&v22 + *(v22 - 24) + 8) |= 0x4000u;
      *(&v22 + *(v6 - 24) + 8) = *(&v22 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(&v22 + *(v6 - 24) + 8) |= 0x200u;
      v7 = MEMORY[0x1B271C550](&v22);
      *(v7 + *(*v7 - 24) + 8) &= ~0x4000u;
      goto LABEL_6;
    }
  }

  v8 = *v5;
  v9 = strlen(*v5);
  sub_1AF17C688(&v22, v8, v9);
LABEL_6:
  sub_1AF17C688(&v22, ".", 1);
  v10 = *(this + 1);
  if (v10 == 6893)
  {
    v11 = "Any";
    v12 = 3;
  }

  else
  {
    if (v10 != 9273)
    {
      v13 = v22;
      *(&v22 + *(v22 - 24) + 8) |= 0x4000u;
      *(&v22 + *(v13 - 24) + 8) = *(&v22 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(&v22 + *(v13 - 24) + 8) |= 0x200u;
      v14 = MEMORY[0x1B271C550](&v22);
      *(v14 + *(*v14 - 24) + 8) &= ~0x4000u;
      goto LABEL_12;
    }

    v11 = "Last";
    v12 = 4;
  }

  sub_1AF17C688(&v22, v11, v12);
LABEL_12:
  sub_1AF17C688(&v22, ".", 1);
  v15 = 0;
  v16 = off_1E7A7FBC0;
  while (dword_1AFE484B0[v15] != *(this + 1))
  {
    ++v15;
    ++v16;
    if (v15 == 9)
    {
      v17 = v22;
      *(&v22 + *(v22 - 24) + 8) |= 0x4000u;
      *(&v22 + *(v17 - 24) + 8) = *(&v22 + *(v17 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(&v22 + *(v17 - 24) + 8) |= 0x200u;
      v18 = MEMORY[0x1B271C550](&v22);
      *(v18 + *(*v18 - 24) + 8) &= ~0x4000u;
      goto LABEL_17;
    }
  }

  v19 = *v16;
  v20 = strlen(*v16);
  sub_1AF17C688(&v22, v19, v20);
LABEL_17:
  sub_1AF2734EC(&v22, a2);
  v22 = *MEMORY[0x1E69E54E8];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v23 = MEMORY[0x1E69E5548] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x1B271C650](&v26);
}

void sub_1AF395BAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AF273594(va);
  _Unwind_Resume(a1);
}

BOOL CFX::RG::ResourceIdentifier::match(unsigned __int16 *a1, uint64_t a2)
{
  v2 = a2 == 6893 || *a1 == a2;
  if (WORD1(a2) == 6893)
  {
    v3 = 1;
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    v3 = a1[1] == WORD1(a2);
    if (!v2)
    {
      return 0;
    }
  }

  return *(a1 + 1) == HIDWORD(a2) && v3;
}

uint64_t CFX::RG::ResourceReference::ResourceReference(uint64_t a1, uint64_t a2)
{
  return CFX::RG::TextureDescriptorReference::TextureDescriptorReference(a1, a2, 1.0);
}

{
  return CFX::RG::TextureDescriptorReference::TextureDescriptorReference(a1, a2, 1.0);
}

uint64_t CFX::RG::Resource::Resource(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *result = 1;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = a5;
  *(result + 25) = a6;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

{
  *result = 1;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = a5;
  *(result + 25) = a6;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

__n128 CFX::RG::Resource::Resource(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *a1 = 3;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 25) = a5;
  v5 = *(a3 + 16);
  *(a1 + 32) = *a3;
  *(a1 + 48) = v5;
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  v8 = *(a3 + 80);
  *(a1 + 96) = *(a3 + 64);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  result = *(a3 + 96);
  v10 = *(a3 + 112);
  v11 = *(a3 + 144);
  *(a1 + 160) = *(a3 + 128);
  *(a1 + 176) = v11;
  *(a1 + 128) = result;
  *(a1 + 144) = v10;
  return result;
}

{
  *a1 = 3;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 25) = a5;
  v5 = *(a3 + 16);
  *(a1 + 32) = *a3;
  *(a1 + 48) = v5;
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  v8 = *(a3 + 80);
  *(a1 + 96) = *(a3 + 64);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  result = *(a3 + 96);
  v10 = *(a3 + 112);
  v11 = *(a3 + 144);
  *(a1 + 160) = *(a3 + 128);
  *(a1 + 176) = v11;
  *(a1 + 128) = result;
  *(a1 + 144) = v10;
  return result;
}

{
  *a1 = 4;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 25) = a5;
  v5 = *(a3 + 16);
  *(a1 + 32) = *a3;
  *(a1 + 48) = v5;
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  v8 = *(a3 + 80);
  *(a1 + 96) = *(a3 + 64);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  result = *(a3 + 96);
  v10 = *(a3 + 112);
  v11 = *(a3 + 144);
  *(a1 + 160) = *(a3 + 128);
  *(a1 + 176) = v11;
  *(a1 + 128) = result;
  *(a1 + 144) = v10;
  return result;
}

{
  *a1 = 4;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 25) = a5;
  v5 = *(a3 + 16);
  *(a1 + 32) = *a3;
  *(a1 + 48) = v5;
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  v8 = *(a3 + 80);
  *(a1 + 96) = *(a3 + 64);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  result = *(a3 + 96);
  v10 = *(a3 + 112);
  v11 = *(a3 + 144);
  *(a1 + 160) = *(a3 + 128);
  *(a1 + 176) = v11;
  *(a1 + 128) = result;
  *(a1 + 144) = v10;
  return result;
}

uint64_t CFX::RG::Resource::Resource(uint64_t a1, uint64_t a2, __int128 *a3, char a4, char a5)
{
  *a1 = 2;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 25) = a5;
  v7 = *a3;
  v8 = a3[2];
  *(a1 + 48) = a3[1];
  *(a1 + 64) = v8;
  *(a1 + 32) = v7;
  v9 = a3[3];
  v10 = a3[4];
  v11 = a3[6];
  *(a1 + 112) = a3[5];
  *(a1 + 128) = v11;
  *(a1 + 80) = v9;
  *(a1 + 96) = v10;
  v12 = a3[7];
  v13 = a3[8];
  v14 = a3[9];
  *(a1 + 192) = *(a3 + 20);
  *(a1 + 160) = v13;
  *(a1 + 176) = v14;
  *(a1 + 144) = v12;
  *(a1 + 200) = _Block_copy(*(a3 + 21));
  *(a1 + 208) = _Block_copy(*(a3 + 22));
  *(a1 + 216) = *(a3 + 184);
  return a1;
}

uint64_t CFX::RG::Resource::transferDeleterTo(uint64_t this, CFX::GPUResourceManager *a2)
{
  if (*(this + 16))
  {
    *(this + 16) = a2;
  }

  return this;
}

void CFX::RG::Resource::~Resource(CFX::RG::Resource *this)
{
  if (*(this + 24) == 2)
  {
    v2 = *(this + 2);
    if (v2)
    {
      CFX::GPUResourceManager::free(v2, this);
    }
  }

  if (*this == 2)
  {
  }
}

BOOL CFX::RG::Resource::isSameKind(CFX::RG::Resource *this, CFX::RG::Resource *a2)
{
  v2 = *this;
  v3 = *a2;
  if (v2 == 2)
  {
    v2 = *(this + 32);
    if (v3 == 2)
    {
      v3 = *(a2 + 32);
      return v2 == v3;
    }

    v7 = v3 == 3;
    v6 = v3 == 1;
    if (v2 == 1)
    {
      return v7;
    }
  }

  else
  {
    if (v3 != 2)
    {
      return v2 == v3;
    }

    v4 = v2 == 3;
    v5 = v2 == 1;
    if (*(a2 + 32))
    {
      v5 = *(a2 + 32);
    }

    if (*(a2 + 32) == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  return v6;
}

uint64_t CFX::RG::Resource::externalResourceDesc(CFX::RG::Resource *this)
{
  return this + 32;
}

{
  return this + 32;
}

BOOL CFX::RG::Resource::validate(CFX::RG::Resource *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  if (v1 != 2)
  {
    if (v1 == 1)
    {
      return RGBufferDescriptorIsValid(*(this + 4));
    }

    return 1;
  }

  if (*(this + 32))
  {
    return 1;
  }

  return RGBufferDescriptorIsValid(*(this + 5));
}

BOOL CFX::RG::Resource::isBuffer(CFX::RG::Resource *this)
{
  v1 = *this;
  if (v1 == 1)
  {
    return 1;
  }

  if (v1 == 2)
  {
    return *(this + 32) == 0;
  }

  return 0;
}

BOOL CFX::RG::Resource::isTexture(CFX::RG::Resource *this)
{
  v1 = *this;
  if (v1 == 3)
  {
    return 1;
  }

  if (v1 == 2)
  {
    return *(this + 32) == 1;
  }

  return 0;
}

uint64_t CFX::RG::Resource::isHazardTracked(CFX::RG::Resource *this)
{
  v1 = *this;
  if (v1 == 1)
  {
    v2 = 32;
    goto LABEL_9;
  }

  if (v1 != 3)
  {
    if (v1 != 2)
    {
      goto LABEL_11;
    }

    if (*(this + 32) != 1)
    {
      if (!*(this + 32))
      {
        v2 = 40;
LABEL_9:
        v4 = (*(this + v2 + 8) & 0x300) != 256;
        return v4 & 1;
      }

LABEL_11:
      abort();
    }
  }

  v3 = CFX::RG::Resource::textureDesc(this);
  v4 = *(v3 + 128) ^ 1 | (*(v3 + 120) != 1);
  return v4 & 1;
}

uint64_t CFX::RG::Resource::bufferDesc(CFX::RG::Resource *this)
{
  v1 = *this;
  if (v1 == 1)
  {
    v2 = 32;
  }

  else
  {
    if (v1 != 2)
    {
      abort();
    }

    v2 = 40;
  }

  return this + v2;
}

{
  v1 = *this;
  if (v1 == 1)
  {
    v2 = 32;
  }

  else
  {
    if (v1 != 2)
    {
      abort();
    }

    v2 = 40;
  }

  return this + v2;
}

uint64_t CFX::RG::Resource::textureDesc(CFX::RG::Resource *this)
{
  v2 = *this;
  if (v2 == 4)
  {
    return this + 32;
  }

  if (v2 == 2)
  {
    if (*(this + 32) != 1)
    {
      abort();
    }

    return this + 40;
  }

  else
  {

    return CFX::RG::Resource::textureDesc(this);
  }
}

{
  v1 = *this;
  if (v1 == 2)
  {
    if (*(this + 32) == 1)
    {
      v2 = 40;
      return this + v2;
    }

LABEL_7:
    abort();
  }

  if (v1 != 3)
  {
    goto LABEL_7;
  }

  v2 = 32;
  return this + v2;
}

uint64_t CFX::RG::Resource::reference(CFX::RG::Resource *this)
{
  if (*this != 4)
  {
    abort();
  }

  return *(this + 23);
}

CFX::RG::Resource *CFX::RG::Resource::Resource(CFX::RG::Resource *this, const CFX::RG::Resource *a2)
{
  v3 = *a2;
  *this = v3;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = 0;
  *(this + 24) = *(a2 + 24);
  *(this + 25) = 1;
  if (v3 > 2)
  {
    if (v3 == 3 || v3 == 4)
    {
      v4 = *(a2 + 3);
      *(this + 2) = *(a2 + 2);
      *(this + 3) = v4;
      v5 = *(a2 + 4);
      v6 = *(a2 + 5);
      v7 = *(a2 + 7);
      *(this + 6) = *(a2 + 6);
      *(this + 7) = v7;
      *(this + 4) = v5;
      *(this + 5) = v6;
      v8 = *(a2 + 8);
      v9 = *(a2 + 9);
      v10 = *(a2 + 11);
      *(this + 10) = *(a2 + 10);
      *(this + 11) = v10;
      *(this + 8) = v8;
      *(this + 9) = v9;
    }
  }

  else if (v3 == 1)
  {
    *(this + 2) = *(a2 + 2);
  }

  else if (v3 == 2)
  {
    CFX::RG::ExternalResourceDesc::operator=(this + 32, a2 + 2);
  }

  return this;
}

void *CFX::RG::RendererPassArguments::RendererPassArguments(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  return a1;
}

{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  return a1;
}

id *CFX::RG::RendererPassArguments::RendererPassArguments(id *a1, id *a2)
{
  *a1 = 0;
  a1[2] = 0;
  v4 = a1 + 2;
  a1[1] = 0;
  v5 = a1 + 1;
  objc_storeStrong(a1, *a2);
  objc_storeStrong(v5, a2[1]);
  objc_storeStrong(v4, a2[2]);
  return a1;
}

void *CFX::RG::BlitPassArguments::BlitPassArguments(void *a1, void *a2)
{
  *a1 = a2;
  return a1;
}

{
  *a1 = a2;
  return a1;
}

id *CFX::RG::BlitPassArguments::BlitPassArguments(id *a1, id *a2)
{
  *a1 = 0;
  objc_storeStrong(a1, *a2);
  return a1;
}

{
  *a1 = 0;
  objc_storeStrong(a1, *a2);
  return a1;
}

void CFX::RG::BlitPassArguments::~BlitPassArguments(id *this)
{
}

{
}

CFX::RG::RenderPassArguments *CFX::RG::RenderPassArguments::RenderPassArguments(CFX::RG::RenderPassArguments *this, RGCachedRenderCommandEncoder *a2, MTLRenderPassDescriptor *a3, char a4, char a5)
{
  v9 = a2;
  v10 = a3;
  *this = v9;
  *(this + 1) = v10;
  *(this + 16) = a4;
  *(this + 17) = a5;
  return this;
}

{
  v9 = a2;
  v10 = a3;
  *this = v9;
  *(this + 1) = v10;
  *(this + 16) = a4;
  *(this + 17) = a5;
  return this;
}

uint64_t CFX::RG::RenderPassArguments::RenderPassArguments(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  objc_storeStrong(a1, *a2);
  objc_storeStrong(v4, *(a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

void CFX::RG::RenderPassArguments::~RenderPassArguments(id *this)
{
}

{
}

CFX::RG::ComputePassArguments *CFX::RG::ComputePassArguments::ComputePassArguments(CFX::RG::ComputePassArguments *this, RGCachedComputeCommandEncoder *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

id *CFX::RG::ComputePassArguments::ComputePassArguments(id *a1, id *a2)
{
  *a1 = 0;
  objc_storeStrong(a1, *a2);
  return a1;
}

{
  *a1 = 0;
  objc_storeStrong(a1, *a2);
  return a1;
}

void CFX::RG::ComputePassArguments::~ComputePassArguments(id *this)
{
}

{
}

uint64_t CFX::RG::Pass::Pass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v8 = 0;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  *a1 = &unk_1F24ED200;
  *(a1 + 8) = v11;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0x800000000;
  *(a1 + 80) = a1 + 88;
  do
  {
    v9 = a1 + v8;
    *(v9 + 88) = 0;
    *(v9 + 96) = 0;
    v8 += 16;
  }

  while (v8 != 128);
  *(a1 + 216) = a2;
  *(a1 + 224) = a3;
  *(a1 + 232) = 0x800000000;
  *(a1 + 240) = a1 + 248;
  *(a1 + 312) = a2;
  *(a1 + 320) = a3;
  *(a1 + 328) = 0x800000000;
  *(a1 + 336) = a1 + 344;
  *(a1 + 408) = 3;
  *(a1 + 416) = 0;
  *(a1 + 416) = sub_1AF396954(a2, a3, &v11, a5);
  return a1;
}

void sub_1AF396930(_Unwind_Exception *a1)
{
  sub_1AF3A1094(v3);
  sub_1AF3A1094(v2);
  sub_1AF3A1094(v1);
  _Unwind_Resume(a1);
}

_OWORD *sub_1AF396954(uint64_t a1, uint64_t a2, __int128 *a3, const void *a4)
{
  v10[0] = a1;
  v10[1] = a2;
  v6 = sub_1AF23498C(v10, 0x150u, 8u);
  v8 = *a3;
  memcpy(__dst, a4, sizeof(__dst));
  *v6 = v8;
  sub_1AF39FC54(v6, 32);
  memcpy(v6 + 3, __dst, 0x120uLL);
  return v6;
}

CFX::RG::Pass *CFX::RG::Pass::Pass(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = 0;
  *this = &unk_1F24ED200;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 16) = 0;
  *(this + 5) = a6;
  *(this + 6) = a7;
  *(this + 7) = a2;
  *(this + 8) = a3;
  *(this + 9) = 0x800000000;
  *(this + 10) = this + 88;
  do
  {
    v9 = this + v8;
    *(v9 + 11) = 0;
    v9[96] = 0;
    v8 += 16;
  }

  while (v8 != 128);
  *(this + 27) = a2;
  *(this + 28) = a3;
  *(this + 29) = 0x800000000;
  *(this + 30) = this + 248;
  *(this + 39) = a2;
  *(this + 40) = a3;
  *(this + 41) = 0x800000000;
  *(this + 42) = this + 344;
  *(this + 408) = a5;
  *(this + 52) = 0;
  CFX::RG::Pass::allocInitDependentParams(this);
  return this;
}

void sub_1AF396AB4(_Unwind_Exception *a1)
{
  sub_1AF3A1094(v1 + 312);
  sub_1AF3A1094(v3);
  sub_1AF3A1094(v2);
  _Unwind_Resume(a1);
}

_OWORD *CFX::RG::Pass::allocInitDependentParams(_OWORD *this)
{
  if (*(this + 408) == 3)
  {
    v12 = v1;
    v13 = v2;
    v3 = this;
    v4 = 0;
    v5 = *(this + 1);
    v6 = *(v3 + 2);
    *&v11 = v5;
    *(&v11 + 1) = v6;
    v9 = 0u;
    v10 = 0u;
    BYTE12(v9) = 1;
    BYTE14(v9) = 1;
    memset(v8, 0, sizeof(v8));
    do
    {
      v7 = &v8[v4];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0x3FF0000000000000;
      v4 += 2;
    }

    while (v4 != 16);
    BYTE3(v10) = 1;
    BYTE5(v10) = 1;
    *(&v10 + 7) = 257;
    BYTE11(v10) = 0;
    this = sub_1AF396954(v5, v6, &v11, v8);
    *(v3 + 52) = this;
  }

  return this;
}

void CFX::RG::Pass::~Pass(CFX::RG::Pass *this)
{
  *this = &unk_1F24ED200;
  if (*(this + 408) == 3)
  {
    sub_1AF396C68(*(this + 1), *(this + 2), *(this + 52));
  }

  if (*(this + 32) == 1)
  {
    v2 = *(this + 2);
    v3 = *(this + 3);
    if (v2)
    {
      sub_1AF234C8C(v2, &v3);
    }
  }

  sub_1AF3A1094(this + 312);
  sub_1AF3A1094(this + 216);
  sub_1AF3A1094(this + 56);
}

{
  CFX::RG::Pass::~Pass(this);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF396C40(_Unwind_Exception *a1)
{
  sub_1AF3A1094(v1 + 312);
  sub_1AF3A1094(v1 + 216);
  sub_1AF3A1094(v1 + 56);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AF396C68(uint64_t a1, void *a2, void *a3)
{
  result = sub_1AF3A10EC(a3);
  v5 = result;
  if (a2)
  {
    return sub_1AF234C8C(a2, &v5);
  }

  return result;
}

uint64_t CFX::RG::Pass::triggerInit(CFX::RG::Pass *this, CFX::RG::RenderGraphContext *a2)
{
  if (*(this + 33))
  {
    return 0;
  }

  result = (*(*this + 16))(this, a2);
  *(this + 33) = result;
  return result;
}

double CFX::RG::Pass::readFrom(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a2)
  {
    v4.n128_u64[0] = a2;
    v4.n128_u8[8] = a3;
    return sub_1AF396D7C(a1 + 56, &v4);
  }

  return result;
}

double sub_1AF396D7C(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 16 * v2;
    v4 = *(a1 + 24);
    while (*v4 != a2->n128_u64[0] || *(v4 + 8) != a2->n128_u8[8])
    {
      v4 += 16;
      v3 -= 16;
      if (!v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v4 = *(a1 + 24);
  }

  if (v4 == *(a1 + 24) + 16 * v2)
  {
LABEL_9:
    *&result = sub_1AF3A1160(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t *CFX::RG::Pass::writeTo(uint64_t *this, CFX::RG::Resource *a2)
{
  v5 = a2;
  v2 = *(this + 58);
  if (v2)
  {
    v3 = 8 * v2;
    for (i = this[30]; *i != a2; ++i)
    {
      v3 -= 8;
      if (!v3)
      {
        return sub_1AF235000(this + 27, &v5);
      }
    }
  }

  else
  {
    i = this[30];
  }

  if (i == (this[30] + 8 * v2))
  {
    return sub_1AF235000(this + 27, &v5);
  }

  return this;
}

uint64_t CFX::RG::Pass::renderTo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = result;
  v12 = a2;
  v7 = *(result + 232);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = *(result + 240);
    while (*v9 != a2)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v9 = *(result + 240);
  }

  if (v9 == (*(result + 240) + 8 * v7))
  {
LABEL_8:
    sub_1AF235000((result + 216), &v12);
    v10 = *(v6 + 416);
    v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v12) ^ ((0x9DDFEA08EB382D69 * v12) >> 47));
    v13 = a3;
    v14 = a4;
    return sub_1AF39F92C(v10, 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47)), &v13);
  }

  return result;
}

uint64_t *CFX::RG::Pass::dependsOn(uint64_t *this, CFX::RG::Pass *a2)
{
  v2 = a2;
  if (a2)
  {
    if (a2 != this)
    {
      return sub_1AF396F40(this + 39, &v2);
    }
  }

  return this;
}

uint64_t *sub_1AF396F40(uint64_t *result, void *a2)
{
  v2 = *(result + 4);
  if (v2)
  {
    v3 = 8 * v2;
    for (i = result[3]; *i != *a2; ++i)
    {
      v3 -= 8;
      if (!v3)
      {
        return sub_1AF235000(result, a2);
      }
    }
  }

  else
  {
    i = result[3];
  }

  if (i == (result[3] + 8 * v2))
  {
    return sub_1AF235000(result, a2);
  }

  return result;
}

unsigned int *CFX::RG::Pass::removeDependenciesOn(unsigned int *this, CFX::RG::Pass *a2)
{
  v2 = *(this + 42);
  v3 = this[82];
  if (v3)
  {
    v4 = 8 * v3;
    for (i = *(this + 42); *i != a2; ++i)
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
    i = *(this + 42);
  }

  if (i != (v2 + 8 * v3))
  {
    v6 = v3 - 1;
    this[82] = v6;
    v7 = (v2 + 8 * v6);
    if (v7 != i)
    {
      return memmove(i, i + 1, v7 - i);
    }
  }

  return this;
}

BOOL CFX::RG::Pass::isRenderTarget(CFX::RG::Pass *this, const CFX::RG::Resource *a2)
{
  if (*(this + 408) != 3)
  {
    return 0;
  }

  v2 = *(this + 52);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = (*(v2 + 44) - 1) & v4;
  v6 = *(*(v2 + 32) + 2 * v5);
  if (v6 < 2)
  {
    return 0;
  }

  while ((v6 & 2) == 0 || v4 != *(*(v2 + 16) + 8 * v5))
  {
    ++v5;
    v7 = v6 > 3;
    v6 >>= 1;
    if (!v7)
    {
      return 0;
    }
  }

  return *(v2 + 24) != 0;
}

uint64_t CFX::RG::Pass::renderTargetInfo(CFX::RG::Pass *this, CFX::RG::Resource *a2)
{
  if (*(this + 408) != 3)
  {
    return 0;
  }

  v2 = *(this + 52);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = (*(v2 + 44) - 1) & v4;
  v6 = *(*(v2 + 32) + 2 * v5);
  if (v6 < 2)
  {
    return 0;
  }

  while ((v6 & 2) == 0 || v4 != *(*(v2 + 16) + 8 * v5))
  {
    ++v5;
    v7 = v6 > 3;
    v6 >>= 1;
    if (!v7)
    {
      return 0;
    }
  }

  return *(v2 + 24) + 12 * v5;
}

uint64_t CFX::RG::Pass::renderTargetAccess(CFX::RG::Pass *this, const CFX::RG::Resource *a2)
{
  if (*(this + 408) == 3)
  {
    return sub_1AF397134(*(this + 52), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF397134(uint64_t a1, uint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v3 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  v4 = (*(a1 + 44) - 1) & v3;
  v5 = *(*(a1 + 32) + 2 * v4);
  if (v5 < 2)
  {
    return 0;
  }

  while ((v5 & 2) == 0 || v3 != *(*(a1 + 16) + 8 * v4))
  {
    ++v4;
    v6 = v5 >= 4;
    v5 >>= 1;
    if (!v6)
    {
      return 0;
    }
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    return *(v8 + 12 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF3971C8(uint64_t a1, void *a2)
{
  if (a2 != a1)
  {
    if (*(a1 + 20) && *(a1 + 24) != a1 + 32)
    {
      v8 = *(a1 + 24);
      v4 = *(a1 + 8);
      if (v4)
      {
        sub_1AF234C8C(v4, &v8);
      }

      *(a1 + 24) = a1 + 32;
    }

    v5 = a2[2];
    *(a1 + 16) = v5;
    v6 = a2[3];
    if (v6 == a2 + 4)
    {
      memcpy((a1 + 32), a2 + 4, 16 * v5);
    }

    else
    {
      *(a1 + 24) = v6;
    }

    a2[2] = 0x800000000;
    a2[3] = a2 + 4;
  }

  return a1;
}

uint64_t CFX::RG::Pass::replaceResource(CFX::RG::Pass *this, CFX::RG::Resource *a2, CFX::RG::Resource *a3)
{
  result = *(this + 10);
  v7 = *(this + 18);
  v8 = result;
  if (v7)
  {
    v9 = 16 * v7;
    v8 = result;
    while (*v8 != a3 || *(v8 + 8))
    {
      v8 += 16;
      v9 -= 16;
      if (!v9)
      {
        goto LABEL_14;
      }
    }
  }

  v10 = (result + 16 * v7);
  if (v8 == v10)
  {
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v21 = a2;
  v22 = 0;
  v11 = sub_1AF39740C(result, v10, &v21);
  result = *(this + 10);
  v7 = *(this + 18);
  v12 = v7;
  if (v11 != (result + 16 * v7))
  {
    v13 = result + 16 * v7;
    v14 = v13 - 16;
    v15 = 16 - v13;
    do
    {
      v7 = (v12 - 1);
      *(this + 18) = v7;
      v16 = result + 16 * v7;
      if (v14 != v16)
      {
        memmove(v14, (v14 + 16), v15 + v16);
        result = *(this + 10);
        v7 = *(this + 18);
      }

      v12 = v7;
      v14 -= 16;
      v15 += 16;
    }

    while (v11 != (result + 16 * v7));
  }

  if (v12)
  {
LABEL_14:
    v17 = 16 * v7;
    do
    {
      if (*result == a2 && !*(result + 8))
      {
        *result = a3;
      }

      result += 16;
      v17 -= 16;
    }

    while (v17);
  }

LABEL_19:
  v18 = *(this + 58);
  if (v18)
  {
    v19 = *(this + 30);
    v20 = 8 * v18;
    do
    {
      if (*v19 == a2)
      {
        *v19 = a3;
      }

      ++v19;
      v20 -= 8;
    }

    while (v20);
  }

  if (*(this + 408) == 3)
  {
    return sub_1AF397498(*(this + 52), a2, a3);
  }

  return result;
}

uint64_t *sub_1AF39740C(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    while (*result != *a3 || *(result + 8) != *(a3 + 8))
    {
      result += 2;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  if (result != a2)
  {
    for (i = result + 2; i != a2; i += 2)
    {
      if (*i != *a3 || *(i + 8) != *(a3 + 8))
      {
        v4 = *i;
        *(result + 8) = *(i + 8);
        *result = v4;
        result += 2;
      }
    }
  }

  return result;
}

uint64_t sub_1AF397498(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = (*(result + 44) - 1) & v4;
  v6 = *(result + 32);
  v7 = *(v6 + 2 * v5);
  if (v7 >= 2)
  {
    v8 = *(v6 + 2 * v5);
    v9 = (*(result + 44) - 1) & v4;
    while (1)
    {
      if ((v8 & 2) != 0)
      {
        v10 = *(result + 16);
        if (v4 == *(v10 + 8 * v9))
        {
          break;
        }
      }

      ++v9;
      v11 = v8 >= 4;
      v8 >>= 1;
      if (!v11)
      {
        return result;
      }
    }

    v12 = *(result + 24);
    if (v12)
    {
      v13 = v12 + 12 * v9;
      v19 = *v13;
      v20 = *(v13 + 8);
      v14 = 1;
      v15 = *(v6 + 2 * v5);
      while (1)
      {
        if ((v15 & 2) != 0)
        {
          v16 = v5 + v14 - 1;
          if (v4 == *(v10 + 8 * v16))
          {
            break;
          }
        }

        ++v14;
        v17 = v15 > 3;
        v15 >>= 1;
        if (!v17)
        {
          goto LABEL_14;
        }
      }

      *(v6 + 2 * v5) = v7 ^ (1 << v14);
      *(v6 + 2 * v16) ^= 1u;
      --*(result + 40);
LABEL_14:
      v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a3) ^ ((0x9DDFEA08EB382D69 * a3) >> 47));
      v21 = v19;
      v22 = v20;
      return sub_1AF39F92C(result, 0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47)), &v21);
    }
  }

  return result;
}

uint64_t *CFX::RG::Pass::setAllocatedName(uint64_t *this, const char *a2)
{
  v3 = this;
  if (*(this + 32) == 1)
  {
    this = this[2];
    v4 = v3[3];
    if (this)
    {
      this = sub_1AF234C8C(this, &v4);
    }
  }

  v3[3] = a2;
  *(v3 + 32) = 1;
  return this;
}

uint64_t CFX::RG::RenderGraphBuilder::RenderGraphBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  v6 = a1 + 48;
  *(a1 + 40) = a1 + 48;
  sub_1AF2348E0(a1 + 16, 32, 1);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 80;
  sub_1AF2348E0(v6, 32, 1);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  *(a1 + 104) = a1 + 112;
  sub_1AF2348E0(a1 + 80, 32, 1);
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  sub_1AF2348E0(a1 + 112, 32, 1);
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 176;
  sub_1AF2348E0(a1 + 144, 32, 1);
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = 0;
  *(a1 + 200) = a1 + 208;
  sub_1AF2348E0(a1 + 176, 32, 1);
  *(a1 + 208) = a2;
  *(a1 + 216) = a3;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 240;
  sub_1AF2348E0(a1 + 208, 16, 1);
  *(a1 + 240) = a2;
  *(a1 + 248) = a3;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 272;
  sub_1AF2348E0(a1 + 240, 16, 1);
  *(a1 + 272) = a2;
  *(a1 + 280) = a3;
  sub_1AF3A126C(a1 + 272, 32);
  *(a1 + 320) = a2;
  *(a1 + 328) = a3;
  *(a1 + 336) = 0;
  *(a1 + 344) = a1 + 352;
  sub_1AF3A1314(a1 + 320, 32, 1);
  *(a1 + 352) = a2;
  *(a1 + 360) = a3;
  sub_1AF3A13C8(a1 + 352, 32);
  *(a1 + 400) = 256;
  return a1;
}

void sub_1AF397810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1AF2624F0(v16 + 320);
  sub_1AF3A10EC(v14);
  sub_1AF2624F0(v13);
  sub_1AF2624F0(v18);
  sub_1AF2624F0(v17);
  sub_1AF2624F0(v15);
  sub_1AF2624F0(a10);
  sub_1AF2624F0(a11);
  sub_1AF2624F0(a12);
  sub_1AF2624F0(v12);
  _Unwind_Resume(a1);
}

void CFX::RG::RenderGraphBuilder::~RenderGraphBuilder(CFX::RG::RenderGraphBuilder *this)
{
  if (*(this + 401) == 1)
  {
    v2 = *(this + 48);
    if (v2)
    {
      v3 = *(this + 25);
      v4 = 8 * v2;
      do
      {
        sub_1AF397AB8(*this, *(this + 1), *v3++);
        v4 -= 8;
      }

      while (v4);
    }

    v5 = *(this + 8);
    if (v5)
    {
      v6 = *(this + 5);
      v7 = 8 * v5;
      do
      {
        sub_1AF397B20(*this, *(this + 1), *v6++);
        v7 -= 8;
      }

      while (v7);
    }

    v8 = *(this + 16);
    if (v8)
    {
      v9 = *(this + 9);
      v10 = 8 * v8;
      do
      {
        sub_1AF397B20(*this, *(this + 1), *v9++);
        v10 -= 8;
      }

      while (v10);
    }

    v11 = *(this + 24);
    if (v11)
    {
      v12 = *(this + 13);
      v13 = 8 * v11;
      do
      {
        sub_1AF397B20(*this, *(this + 1), *v12++);
        v13 -= 8;
      }

      while (v13);
    }

    v14 = *(this + 32);
    if (v14)
    {
      v15 = *(this + 17);
      v16 = 8 * v14;
      do
      {
        sub_1AF397B20(*this, *(this + 1), *v15++);
        v16 -= 8;
      }

      while (v16);
    }
  }

  v17 = *(this + 56);
  if (v17)
  {
    v18 = *(this + 29);
    v19 = 8 * v17;
    do
    {
      if ((*(*v18 + 304) & 1) == 0)
      {
        sub_1AF271C74(*this, *(this + 1), *v18);
      }

      ++v18;
      v19 -= 8;
    }

    while (v19);
  }

  sub_1AF3A10EC(this + 44);
  sub_1AF2624F0(this + 320);
  sub_1AF3A10EC(this + 34);
  sub_1AF2624F0(this + 240);
  sub_1AF2624F0(this + 208);
  sub_1AF2624F0(this + 176);
  sub_1AF2624F0(this + 144);
  sub_1AF2624F0(this + 112);
  sub_1AF2624F0(this + 80);
  sub_1AF2624F0(this + 48);
  sub_1AF2624F0(this + 16);
}

void sub_1AF397A40(_Unwind_Exception *a1)
{
  sub_1AF3A10EC((v1 + 352));
  sub_1AF2624F0(v1 + 320);
  sub_1AF3A10EC((v1 + 272));
  sub_1AF2624F0(v1 + 240);
  sub_1AF2624F0(v1 + 208);
  sub_1AF2624F0(v1 + 176);
  sub_1AF2624F0(v1 + 144);
  sub_1AF2624F0(v1 + 112);
  sub_1AF2624F0(v1 + 80);
  sub_1AF2624F0(v1 + 48);
  sub_1AF2624F0(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AF397AB8(uint64_t a1, void *a2, uint64_t (***a3)(void))
{
  result = (**a3)(a3);
  v6 = a3;
  if (a2)
  {
    return sub_1AF234C8C(a2, &v6);
  }

  return result;
}

void sub_1AF397B20(int a1, void *a2, CFX::RG::Resource *this)
{
  CFX::RG::Resource::~Resource(this);
  v5 = v4;
  if (a2)
  {
    sub_1AF234C8C(a2, &v5);
  }
}

_DWORD *CFX::RG::RenderGraphBuilder::passesMatchingClassIdentifier@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = 0x800000000;
  *(a4 + 16) = a4 + 24;
  v5 = result[48];
  if (v5)
  {
    v7 = *(result + 25);
    v8 = 8 * v5;
    do
    {
      v9 = *v7;
      if (*(v9 + 40) == a2)
      {
        result = sub_1AF240F04(a4, &v9);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t CFX::RG::RenderGraphBuilder::validateMissingPublishedResources(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  if (!v2)
  {
    return 1;
  }

  v5 = *(a1 + 136);
  v6 = &v5[v2];
  result = 1;
  while (1)
  {
    v8 = *v5;
    if (**v5 != 4)
    {
      goto LABEL_28;
    }

    v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (*(v8 + 23) ^ 1)) ^ ((0x9DDFEA08EB382D69 * (*(v8 + 23) ^ 1)) >> 47) ^ 1);
    v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
    v11 = (*(a1 + 316) - 1) & v10;
    v12 = *(*(a1 + 304) + 2 * v11);
    if (v12 < 2)
    {
      break;
    }

    while ((v12 & 2) == 0 || v10 != *(*(a1 + 288) + 8 * v11))
    {
      ++v11;
      v13 = v12 >= 4;
      v12 >>= 1;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    if (!*(a1 + 296))
    {
      break;
    }

    if (++v5 == v6)
    {
      return result;
    }
  }

LABEL_12:
  v30 = 0;
  v31 = &v30;
  v32 = 0x13812000000;
  v33 = sub_1AF3980E4;
  v34 = sub_1AF3982B0;
  v35 = "";
  sub_1AF273380(&v36);
  v14 = sub_1AF17C688(v31 + 6, "Missing published resource ", 27);
  if (*v8 != 4)
  {
LABEL_28:
    abort();
  }

  v15 = v14;
  v27 = *(v8 + 23);
  CFX::RG::ResourceIdentifier::pathName(&v27, __p);
  if (v29 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if (v29 >= 0)
  {
    v17 = HIBYTE(v29);
  }

  else
  {
    v17 = __p[1];
  }

  v18 = sub_1AF17C688(v15, v16, v17);
  v19 = sub_1AF17C688(v18, " for reference resource ", 24);
  v20 = *(v8 + 1);
  v21 = strlen(v20);
  v22 = sub_1AF17C688(v19, v20, v21);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v41, MEMORY[0x1E69E5318]);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v41);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  v24 = sub_1AF17C688(v31 + 6, "Available resources are:", 24);
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(__p, MEMORY[0x1E69E5318]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1AF398494;
  v26[3] = &unk_1E7A7FC10;
  v26[4] = &v30;
  sub_1AF3983DC(a1 + 272, v26);
  sub_1AF2734EC((v31 + 6), __p);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *__p;
  *(a2 + 16) = v29;
  _Block_object_dispose(&v30, 8);
  v36 = *MEMORY[0x1E69E54E8];
  *(&v36 + *(v36 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v37 = MEMORY[0x1E69E5548] + 16;
  if (v39 < 0)
  {
    operator delete(v38[7].__locale_);
  }

  v37 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v38);
  std::ostream::~ostream();
  MEMORY[0x1B271C650](&v40);
  return 0;
}

void sub_1AF398084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  _Block_object_dispose(&a22, 8);
  sub_1AF273594(v22);
  _Unwind_Resume(a1);
}

void *sub_1AF3980F0(void *a1, void *a2)
{
  a1[20] = 0;
  a1[14] = MEMORY[0x1E69E5590] + 16;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  v6 = (a2 + *(*a2 - 24));
  std::ios_base::move(v5, v6);
  v5[1].__vftable = v6[1].__vftable;
  v6[1].__vftable = 0;
  v5[1].__fmtflags_ = v6[1].__fmtflags_;
  *a1 = MEMORY[0x1E69E5570] + 24;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  *(a1 + *(*a1 - 24) + 40) = std::stringbuf::basic_stringbuf();
  return a1;
}

void sub_1AF398288(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B271C650](v1);
  _Unwind_Resume(a1);
}

void sub_1AF3982B0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *(a1 + 48) = *MEMORY[0x1E69E54E8];
  *(a1 + 48 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 56) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 56) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 64));
  std::ostream::~ostream();

  JUMPOUT(0x1B271C650);
}

void sub_1AF3983DC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 44);
  if (v3 != -15)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*(*(a1 + 32) + 2 * v5))
      {
        v6[2](v6, *(*(a1 + 16) + 8 * v5), *(a1 + 24) + v4);
        v3 = *(a1 + 44);
      }

      ++v5;
      v4 += 24;
    }

    while (v5 < (v3 + 15));
  }
}

void sub_1AF398494(uint64_t a1, int a2, CFX::RG::ResourceIdentifier *this)
{
  v3 = *(*(a1 + 32) + 8);
  CFX::RG::ResourceIdentifier::pathName(this, __p);
  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_1AF17C688((v3 + 48), v4, v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v10, MEMORY[0x1E69E5318]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  std::ostream::flush();
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AF39857C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CFX::RG::RenderGraphBuilder::validateInitializedPasses(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192);
  if (!v2)
  {
    return 1;
  }

  v4 = *(a1 + 200);
  v5 = 8 * v2;
  while (1)
  {
    v6 = *v4;
    if ((*(*v4 + 33) & 1) == 0)
    {
      break;
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return 1;
    }
  }

  sub_1AF273380(&v13);
  v8 = sub_1AF17C688(&v13, "Uninitialized pass ", 19);
  v9 = *(v6 + 24);
  v10 = strlen(v9);
  sub_1AF17C688(v8, v9, v10);
  sub_1AF2734EC(&v13, &v11);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v11;
  *(a2 + 16) = v12;
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  MEMORY[0x1B271C650](&v17);
  return 0;
}

void sub_1AF39876C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AF273594(va);
  _Unwind_Resume(a1);
}

uint64_t CFX::RG::RenderGraphBuilder::resolveReferences(CFX::RG::RenderGraphBuilder *this, uint64_t **a2)
{
  prof_beginFlame("resolveReferences", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 1572);
  v4 = *(this + 32);
  if (v4)
  {
    v5 = *(this + 17);
    v6 = &v5[v4];
    v36 = v6;
    v37 = a2;
    do
    {
      v7 = *v5;
      if (**v5 != 4)
      {
        abort();
      }

      v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (*(v7 + 23) ^ 1)) ^ ((0x9DDFEA08EB382D69 * (*(v7 + 23) ^ 1)) >> 47) ^ 1);
      v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      v10 = (*(this + 79) - 1) & v9;
      v11 = *(*(this + 38) + 2 * v10);
      if (v11 >= 2)
      {
        while ((v11 & 2) == 0 || v9 != *(*(this + 36) + 8 * v10))
        {
          ++v10;
          v12 = v11 >= 4;
          v11 >>= 1;
          if (!v12)
          {
            goto LABEL_34;
          }
        }

        v13 = *(this + 37);
        if (v13)
        {
          v14 = v13 + 24 * v10;
          v15 = *(this + 48);
          if (v15)
          {
            v16 = *(this + 25);
            v17 = &v16[v15];
            do
            {
              v18 = *v16;
              if (*v16 != *(v14 + 16))
              {
                v19 = *(v18 + 72);
                if (v19)
                {
                  v20 = *(v18 + 80);
                  v21 = 16 * v19;
                  do
                  {
                    if (*v20 == v7)
                    {
                      v22 = *(v14 + 16);
                      v38 = v22;
                      if (v22 && v22 != v18)
                      {
                        sub_1AF396F40((v18 + 312), &v38);
                      }
                    }

                    v20 += 2;
                    v21 -= 16;
                  }

                  while (v21);
                }

                v24 = *(v18 + 232);
                if (v24)
                {
                  v25 = *(v18 + 240);
                  v26 = 8 * v24;
                  do
                  {
                    if (*v25 == v7)
                    {
                      v27 = CFX::RG::Pass::renderTargetInfo(v18, *v25);
                      if (v27)
                      {
                        if (*v27)
                        {
                          v28 = *(v14 + 16);
                          v38 = v28;
                          if (v28)
                          {
                            if (v28 != v18)
                            {
                              sub_1AF396F40((v18 + 312), &v38);
                            }
                          }
                        }
                      }
                    }

                    ++v25;
                    v26 -= 8;
                  }

                  while (v26);
                }
              }

              ++v16;
            }

            while (v16 != v17);
          }

          a2 = v37;
          CFX::RG::RenderGraphBuilder::replaceResource(this, v37, v7, *(v14 + 8), 0);
          v6 = v36;
        }
      }

LABEL_34:
      ++v5;
    }

    while (v5 != v6);
  }

  if (*(this + 400))
  {
    v29 = *(this + 84);
    if (v29)
    {
      v30 = *(this + 43);
      v31 = &v30[3 * v29];
      do
      {
        v32 = *v30;
        v33 = v30[1];
        v34 = CFX::RG::Resource::textureDesc(v33);
        CFX::RG::RenderGraphContext::registerReferenceDescriptor(a2, v32, v34);
        CFX::RG::RenderGraphContext::registerResourceIdentifier(a2, v32, v33);
        v30 += 3;
      }

      while (v30 != v31);
    }

    CFX::RG::RenderGraphContext::resolveResourcesDescriptorsIfNeeded(a2, *(this + 13), (*(this + 13) + 8 * *(this + 24)));
    CFX::RG::RenderGraphContext::resolveResourcesDescriptorsIfNeeded(a2, *(this + 9), (*(this + 9) + 8 * *(this + 16)));
    *(this + 400) = 0;
  }

  prof_endFlame();
  return 1;
}

void CFX::RG::RenderGraphBuilder::replaceResource(CFX::RG::RenderGraphBuilder *this, CFX::GPUResourceManager **a2, CFX::RG::Resource *a3, CFX::RG::Resource *a4, char a5)
{
  v10 = *(this + 48);
  if (v10)
  {
    v11 = *(this + 25);
    v12 = 8 * v10;
    do
    {
      v13 = *v11++;
      CFX::RG::Pass::replaceResource(v13, a3, a4);
      v12 -= 8;
    }

    while (v12);
  }

  v14 = *(this + 84);
  if (v14)
  {
    v15 = (*(this + 43) + 8);
    v16 = 24 * v14;
    do
    {
      if (*v15 == a3)
      {
        *v15 = a4;
      }

      v15 += 3;
      v16 -= 24;
    }

    while (v16);
  }

  v17 = (*(this + 79) + 15);
  if (*(this + 79) != -15)
  {
    v18 = *(this + 38);
    v19 = 8;
    do
    {
      v20 = *v18++;
      if (v20)
      {
        v21 = *(this + 37);
        if (*(v21 + v19) == a3)
        {
          *(v21 + v19) = a4;
        }
      }

      v19 += 24;
      --v17;
    }

    while (v17);
  }

  CFX::GPUResourceManager::mapResource(a2[3], a3, a4);
  if (a5)
  {

    CFX::RG::RenderGraphBuilder::removeResource(this, a3);
  }
}

void CFX::RG::RenderGraphBuilder::initPassesAndResolveReferences(CFX::RG::RenderGraphBuilder *this, unsigned int **a2)
{
  prof_beginFlame("initPassesAndResolveReferences", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 1618);
  CStackAllocatorPushFrame(a2[2]);
  v12 = a2[2];
  v13 = 0;
  v14 = &v15;
  CFX::RG::RenderGraphBuilder::resolveReferences(this, a2);
  v4 = *(this + 48);
  do
  {
    LODWORD(v13) = 0;
    if (!v4)
    {
      goto LABEL_12;
    }

    v5 = *(this + 25);
    v6 = 8 * v4;
    do
    {
      sub_1AF240F04(&v12, v5++);
      v6 -= 8;
    }

    while (v6);
    if (v13)
    {
      v7 = v14;
      v8 = 8 * v13;
      do
      {
        v9 = *v7;
        if ((*(*v7 + 33) & 1) == 0)
        {
          v10 = (*(*v9 + 16))(*v7, a2);
          v9[33] = v10;
          if (v10)
          {
            CFX::RG::RenderGraphBuilder::resolveReferences(this, a2);
          }
        }

        ++v7;
        v8 -= 8;
      }

      while (v8);
      v11 = v13;
    }

    else
    {
LABEL_12:
      v11 = 0;
    }

    v4 = *(this + 48);
  }

  while (v4 != v11);
  CStackAllocatorPopFrame(a2[2]);
  prof_endFlame();
}

void sub_1AF398CA0(_Unwind_Exception *a1)
{
  CStackAllocatorPopFrame(*(v1 + 16));
  prof_endFlame();
  _Unwind_Resume(a1);
}

uint64_t CFX::RG::RenderGraphBuilder::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  prof_beginFlame("build", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 1643);
  *(a2 + 216) = a1;
  v6 = *(a2 + 16);
  v37 = v6;
  v38 = 0;
  CStackAllocatorPushFrame(v6);
  CFX::RG::RenderGraphBuilder::initPassesAndResolveReferences(a1, a2);
  if (CFX::RG::RenderGraphBuilder::validateMissingPublishedResources(a1, a3) && CFX::RG::RenderGraphBuilder::validateInitializedPasses(a1, a3))
  {
    v47 = *a1;
    sub_1AF3A146C(&v47, 32);
    CFX::RG::RenderGraphBuilder::initializeDependencies(a1, &v47);
    CFX::RG::RenderGraphBuilder::computePredecessors(a1, &v47, v6);
    v7 = *(a1 + 192);
    if (v7)
    {
      v8 = *(a1 + 200);
      v9 = 8 * v7;
      do
      {
        CFX::RG::RenderGraphBuilder::cleanupPredecessorsBasedOnExplicitDependencies(a1, *v8++, &v47, v6);
        v9 -= 8;
      }

      while (v9);
    }

    if (CFX::RG::RenderGraphBuilder::tryResolveAmbiguousDependencies(a1, &v47, &v37, a3))
    {
      v43 = *a1;
      sub_1AF3A146C(&v43, 32);
      CFX::RG::RenderGraphBuilder::initializeDependencies(a1, &v43);
      CFX::RG::RenderGraphBuilder::computeSuccessors(a1, &v47, &v43);
      v10 = *(a1 + 192);
      v40 = *a1;
      v41 = 0;
      v42 = &v43;
      if (v10)
      {
        sub_1AF3A1748(&v40, v10, 1);
      }

      CFX::RG::RenderGraphBuilder::computeStages(a1, a3, &v40, &v47, &v43, v6);
      v39 = *a1;
      v11 = sub_1AF23498C(&v39, 0x138u, 8u);
      CFX::RG::RenderGraph::RenderGraph(v11, *a1, *(a1 + 8));
      v38 = v11;
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = 8 * v12;
        do
        {
          sub_1AF235000((v11 + 16), v13++);
          v14 -= 8;
        }

        while (v14);
      }

      v15 = *(a1 + 64);
      if (v15)
      {
        v16 = *(a1 + 72);
        v17 = 8 * v15;
        do
        {
          sub_1AF235000((v11 + 48), v16++);
          v17 -= 8;
        }

        while (v17);
      }

      v18 = *(a1 + 96);
      if (v18)
      {
        v19 = *(a1 + 104);
        v20 = 8 * v18;
        do
        {
          sub_1AF235000((v11 + 80), v19++);
          v20 -= 8;
        }

        while (v20);
      }

      v21 = *(a1 + 160);
      if (v21)
      {
        v22 = *(a1 + 168);
        v23 = 8 * v21;
        do
        {
          sub_1AF235000((v11 + 112), v22++);
          v23 -= 8;
        }

        while (v23);
      }

      v24 = *(a1 + 192);
      if (v24)
      {
        v25 = *(a1 + 200);
        v26 = 8 * v24;
        do
        {
          sub_1AF235000((v11 + 144), v25++);
          v26 -= 8;
        }

        while (v26);
      }

      v27 = *(v11 + 216);
      *(v11 + 216) = v50;
      v50 = v27;
      v28 = *(v11 + 208);
      *(v11 + 208) = v49;
      v49 = v28;
      v29 = v48;
      v30 = *(v11 + 192);
      *(v11 + 176) = v47;
      *(v11 + 192) = v29;
      v48 = v30;
      *&v29 = *(v11 + 264);
      *(v11 + 264) = v46;
      v46 = v29;
      v31 = *(v11 + 256);
      *(v11 + 256) = v45;
      v45 = v31;
      v32 = v44;
      v33 = *(v11 + 240);
      *(v11 + 224) = v43;
      *(v11 + 240) = v32;
      v44 = v33;
      sub_1AF3A1640(v11 + 272, &v40);
      sub_1AF235000((a1 + 208), &v38);
      sub_1AF3A15BC(&v40);
      sub_1AF3A1514(&v43);
    }

    sub_1AF3A1514(&v47);
  }

  CStackAllocatorPopFrame(v6);
  v34 = *(a3 + 23);
  if ((v34 & 0x80u) != 0)
  {
    v34 = *(a3 + 8);
  }

  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v38;
  }

  *(a2 + 216) = 0;
  prof_endFlame();
  return v35;
}

void sub_1AF39900C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_1AF3A1514(va);
  sub_1AF3A1514(va1);
  *(v9 + 216) = 0;
  prof_endFlame();
  _Unwind_Resume(a1);
}

uint64_t CFX::RG::RenderGraphBuilder::transferOwnershipTo(uint64_t result, uint64_t a2)
{
  *(a2 + 304) = 1;
  *(result + 401) = 0;
  return result;
}

uint64_t *CFX::RG::RenderGraphBuilder::removePass(uint64_t *this, CFX::RG::Pass *a2, int a3)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = this[25];
    v8 = 8 * v6;
    do
    {
      if (*v7 != a2)
      {
        CFX::RG::Pass::removeDependenciesOn(*v7, a2);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
    v9 = v5[25];
    v10 = *(v5 + 48);
    if (v10)
    {
      v11 = 8 * v10;
      this = v5[25];
      while (*this != a2)
      {
        ++this;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      v12 = v10 - 1;
    }

    else
    {
      v12 = -1;
      this = v5[25];
    }

    if (this != (v9 + 8 * v10))
    {
      *(v5 + 48) = v12;
      v13 = (v9 + 8 * v12);
      if (v13 != this)
      {
        this = memmove(this, this + 1, v13 - this);
      }
    }
  }

LABEL_16:
  if (a3)
  {
    v14 = *v5;
    v15 = v5[1];

    return sub_1AF397AB8(v14, v15, a2);
  }

  return this;
}

void CFX::RG::RenderGraphBuilder::removeResource(CFX::RG::RenderGraphBuilder *this, CFX::RG::Resource *a2)
{
  prof_beginFlame("removeResource", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 1773);
  v4 = *a2;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v5 = *(this + 9);
      v13 = *(this + 16);
      if (v13)
      {
        v14 = 8 * v13;
        v8 = *(this + 9);
        while (*v8 != a2)
        {
          ++v8;
          v14 -= 8;
          if (!v14)
          {
            v8 = (v5 + 8 * v13);
            break;
          }
        }
      }

      else
      {
        v8 = *(this + 9);
      }

      v15 = v13 - 1;
      *(this + 16) = v15;
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_36;
      }

      v5 = *(this + 17);
      v9 = *(this + 32);
      if (v9)
      {
        v10 = 8 * v9;
        v8 = *(this + 17);
        while (*v8 != a2)
        {
          ++v8;
          v10 -= 8;
          if (!v10)
          {
            v8 = (v5 + 8 * v9);
            break;
          }
        }
      }

      else
      {
        v8 = *(this + 17);
      }

      v15 = v9 - 1;
      *(this + 32) = v15;
    }
  }

  else if (v4 == 1)
  {
    v5 = *(this + 5);
    v11 = *(this + 8);
    if (v11)
    {
      v12 = 8 * v11;
      v8 = *(this + 5);
      while (*v8 != a2)
      {
        ++v8;
        v12 -= 8;
        if (!v12)
        {
          v8 = (v5 + 8 * v11);
          break;
        }
      }
    }

    else
    {
      v8 = *(this + 5);
    }

    v15 = v11 - 1;
    *(this + 8) = v15;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_36;
    }

    v5 = *(this + 13);
    v6 = *(this + 24);
    if (v6)
    {
      v7 = 8 * v6;
      v8 = *(this + 13);
      while (*v8 != a2)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          v8 = (v5 + 8 * v6);
          break;
        }
      }
    }

    else
    {
      v8 = *(this + 13);
    }

    v15 = v6 - 1;
    *(this + 24) = v15;
  }

  v16 = (v5 + 8 * v15);
  if (v16 != v8)
  {
    memmove(v8, v8 + 1, v16 - v8);
  }

LABEL_36:
  sub_1AF397B20(*this, *(this + 1), a2);

  prof_endFlame();
}

uint64_t CFX::RG::RenderGraphBuilder::findPass(CFX::RG::RenderGraphBuilder *this, uint64_t a2)
{
  v2 = (*(this + 99) - 1) & a2;
  v3 = *(*(this + 48) + 2 * v2);
  if (v3 < 2)
  {
    return 0;
  }

  while ((v3 & 2) == 0 || *(*(this + 46) + 8 * v2) != a2)
  {
    ++v2;
    v4 = v3 >= 4;
    v3 >>= 1;
    if (!v4)
    {
      return 0;
    }
  }

  v6 = *(this + 47);
  if (v6)
  {
    return *(v6 + 8 * v2);
  }

  else
  {
    return 0;
  }
}

uint64_t CFX::RG::RenderGraphBuilder::findPublishedResource(uint64_t a1, uint64_t a2)
{
  prof_beginFlame("findPublishedResource", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 1818);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a2 ^ 1)) ^ ((0x9DDFEA08EB382D69 * (a2 ^ 1)) >> 47) ^ 1);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = (*(a1 + 316) - 1) & v5;
  v7 = *(*(a1 + 304) + 2 * v6);
  if (v7 < 2)
  {
    goto LABEL_5;
  }

  while ((v7 & 2) == 0 || v5 != *(*(a1 + 288) + 8 * v6))
  {
    ++v6;
    v8 = v7 >= 4;
    v7 >>= 1;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v11 = *(a1 + 296);
  if (v11)
  {
    v9 = *(v11 + 24 * v6 + 16);
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  prof_endFlame();
  return v9;
}

void CFX::RG::RenderGraphBuilder::searchPublishedResource(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  prof_beginFlame("searchPublishedResource", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 1833);
  *a4 = a3;
  a4[1] = 0;
  a4[2] = a4 + 3;
  v8 = *(a1 + 336);
  if (v8)
  {
    v9 = *(a1 + 344);
    v10 = (v9 + 24 * v8);
    v11 = a2;
    v12 = WORD1(a2);
    v13 = HIDWORD(a2);
    v14 = (v9 + 8);
    do
    {
      v15 = &v14[-1].i8[8];
      v17 = v12 == 6893 || v12 == v14[-1].u16[5];
      if ((v14[-1].u16[4] == v11 || v11 == 6893) && v17 && v14[-1].i32[3] == v13)
      {
        v21 = vextq_s8(*v14, *v14, 8uLL);
        sub_1AF3995BC(a4, &v21);
      }

      v14 = (v14 + 24);
    }

    while (v15 + 24 != v10);
  }

  prof_endFlame();
}

__n128 sub_1AF3995BC(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = CStackAllocatorAllocateAligned(*a1, 16 * v7, 8, 2);
    memcpy(Aligned, v6, 16 * *(a1 + 8));
    *(a1 + 16) = Aligned;
    *(a1 + 12) = v7;
    v6 = Aligned;
    v4 = *(a1 + 8);
  }

  result = *a2;
  v6[v4] = *a2;
  ++*(a1 + 8);
  return result;
}

void CFX::RG::RenderGraphBuilder::enumeratePublishedResource(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 336);
  if (v3)
  {
    v4 = *(a1 + 344);
    v5 = &v4[3 * v3];
    do
    {
      (*(v6 + 2))(v6, *v4, v4[1], v4[2]);
      v4 += 3;
    }

    while (v4 != v5);
  }
}

void CFX::RG::RenderGraphBuilder::publishResourceReference(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  prof_beginFlame("publishResourceReference", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 1857);
  *&v24 = a2;
  *(&v24 + 1) = a3;
  v25 = a4;
  *&v22 = a2 & 0xFFFFFFFF0000FFFFLL | 0x24390000;
  *(&v22 + 1) = a3;
  v23 = a4;
  *&v20 = a2 & 0xFFFFFFFF00000000 | 0x24392439;
  *(&v20 + 1) = a3;
  v21 = a4;
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a2 ^ 1)) ^ ((0x9DDFEA08EB382D69 * (a2 ^ 1)) >> 47) ^ 1);
  v26 = v24;
  v27 = a4;
  sub_1AF3A1BD0(a1 + 272, 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47)), &v26);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a2 & 0xFFFFFFFF0000FFFFLL ^ 0x24390001)) ^ ((0x9DDFEA08EB382D69 * (a2 & 0xFFFFFFFF0000FFFFLL ^ 0x24390001)) >> 47) ^ 1);
  v26 = v22;
  v27 = a4;
  sub_1AF3A1BD0(a1 + 272, 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47)), &v26);
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a2 & 0xFFFFFFFF00000000) + 0x62F4B8EC3B0DB2F9) ^ ((0x9DDFEA08EB382D69 * (a2 & 0xFFFFFFFF00000000) + 0x62F4B8EC3B0DB2F8) >> 47));
  v26 = v20;
  v27 = a4;
  sub_1AF3A1BD0(a1 + 272, 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47)), &v26);
  v11 = *(a1 + 336);
  if (!v11)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *(a1 + 344);
  v16 = 24 * v11;
  do
  {
    v17 = *v15;
    if (*v15 == a2)
    {
      v12 = 1;
      v18 = &v24;
    }

    else if (v17 == (a2 & 0xFFFFFFFF0000FFFFLL | 0x24390000))
    {
      v14 = 1;
      v18 = &v22;
    }

    else
    {
      if (v17 != (a2 & 0xFFFFFFFF00000000 | 0x24392439))
      {
        goto LABEL_10;
      }

      v13 = 1;
      v18 = &v20;
    }

    v19 = *v18;
    v15[2] = *(v18 + 2);
    *v15 = v19;
LABEL_10:
    v15 += 3;
    v16 -= 24;
  }

  while (v16);
  if ((v12 & 1) == 0)
  {
LABEL_14:
    sub_1AF399954(a1 + 320, &v24);
  }

  if ((v14 & 1) == 0)
  {
    sub_1AF399954(a1 + 320, &v22);
  }

  if ((v13 & 1) == 0)
  {
    sub_1AF399954(a1 + 320, &v20);
  }

  *(a1 + 400) = 1;
  prof_endFlame();
}

__n128 sub_1AF399954(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 16);
  if (v4 + 1 > *(a1 + 20))
  {
    sub_1AF3A1314(a1, 1, 0);
    v4 = *(a1 + 16);
  }

  v5 = (*(a1 + 24) + 24 * v4);
  result = *a2;
  v5[1].n128_u64[0] = a2[1].n128_u64[0];
  *v5 = result;
  ++*(a1 + 16);
  return result;
}

void CFX::RG::RenderGraphBuilder::aliasResourceReference(uint64_t a1, uint64_t a2, unint64_t a3)
{
  PublishedResource = CFX::RG::RenderGraphBuilder::findPublishedResource(a1, a2);
  if (PublishedResource && v6)
  {

    CFX::RG::RenderGraphBuilder::publishResourceReference(a1, a3, v6, PublishedResource);
  }
}

uint64_t CFX::RG::RenderGraphBuilder::computePredecessors(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  CStackAllocatorPushFrame(a3);
  v44 = a3;
  CFX::RG::RenderGraphBuilder::collectResourcesWrite(a1, a3, v49);
  v6 = *(a1 + 192);
  if (v6)
  {
    v7 = *(a1 + 200);
    v45 = &v7[v6];
    while (1)
    {
      v46 = v7;
      v8 = *v7;
      v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v7) ^ ((0x9DDFEA08EB382D69 * *v7) >> 47));
      v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
      v11 = *(*v7 + 72);
      if (v11)
      {
        v12 = *(v8 + 80);
        v13 = v12 + 16 * v11;
        do
        {
          if (!*(v12 + 8))
          {
            v14 = *v12;
            v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v12) ^ ((0x9DDFEA08EB382D69 * *v12) >> 47));
            v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
            v17 = (v53 - 1) & v16;
            v18 = *(v52 + 2 * v17);
            if (v18 >= 2)
            {
              while ((v18 & 2) == 0 || v16 != *(v50 + 8 * v17))
              {
                ++v17;
                v19 = v18 >= 4;
                v18 >>= 1;
                if (!v19)
                {
                  goto LABEL_10;
                }
              }

              if (v51)
              {
                v20 = v51 + 88 * v17;
                v21 = *(v20 + 8);
                if (v21)
                {
                  v22 = *(v20 + 16);
                  v23 = &v22[v21];
                  do
                  {
                    if (*v22 != v8)
                    {
                      v47.n128_u64[0] = *v22;
                      v47.n128_u8[8] = 1;
                      v48 = v14;
                      v24 = (*(a2 + 44) - 1) & v10;
                      v25 = *(*(a2 + 32) + 2 * v24);
                      if (v25 < 2)
                      {
LABEL_20:
                        v27 = 0;
                      }

                      else
                      {
                        while ((v25 & 2) == 0 || v10 != *(*(a2 + 16) + 8 * v24))
                        {
                          ++v24;
                          v26 = v25 > 3;
                          v25 >>= 1;
                          if (!v26)
                          {
                            goto LABEL_20;
                          }
                        }

                        v27 = *(a2 + 24) + 224 * v24;
                      }

                      sub_1AF399F20(v27, &v47);
                    }

                    ++v22;
                  }

                  while (v22 != v23);
                }
              }
            }
          }

LABEL_10:
          v12 += 16;
        }

        while (v12 != v13);
      }

      if (*(v8 + 408) == 3)
      {
        v28 = *(v8 + 232);
        if (v28)
        {
          break;
        }
      }

LABEL_47:
      v7 = v46 + 1;
      if (v46 + 1 == v45)
      {
        return CStackAllocatorPopFrame(v44);
      }
    }

    v29 = *(v8 + 240);
    v30 = &v29[v28];
    while (1)
    {
      if (*(v8 + 408) == 3)
      {
        v31 = *v29;
        if (sub_1AF397134(*(v8 + 416), *v29))
        {
          v32 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v31) ^ ((0x9DDFEA08EB382D69 * v31) >> 47));
          v33 = 0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47));
          v34 = (v53 - 1) & v33;
          for (i = *(v52 + 2 * v34); (i & 2) == 0; ++v34)
          {
LABEL_32:
            i >>= 1;
          }

          if (v33 != *(v50 + 8 * v34))
          {
            goto LABEL_32;
          }

          v36 = v51 + 88 * v34;
          v37 = *(v36 + 8);
          if (v37)
          {
            v38 = *(v36 + 16);
            v39 = &v38[v37];
            do
            {
              if (*v38 != v8)
              {
                v47.n128_u64[0] = *v38;
                v47.n128_u8[8] = 1;
                v48 = v31;
                v40 = (*(a2 + 44) - 1) & v10;
                v41 = *(*(a2 + 32) + 2 * v40);
                if (v41 < 2)
                {
LABEL_41:
                  v42 = 0;
                }

                else
                {
                  while ((v41 & 2) == 0 || v10 != *(*(a2 + 16) + 8 * v40))
                  {
                    ++v40;
                    v26 = v41 > 3;
                    v41 >>= 1;
                    if (!v26)
                    {
                      goto LABEL_41;
                    }
                  }

                  v42 = *(a2 + 24) + 224 * v40;
                }

                sub_1AF399F20(v42, &v47);
              }

              ++v38;
            }

            while (v38 != v39);
          }
        }
      }

      if (++v29 == v30)
      {
        goto LABEL_47;
      }
    }
  }

  return CStackAllocatorPopFrame(v44);
}

void CFX::RG::RenderGraphBuilder::collectResourcesWrite(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  prof_beginFlame("collectResourcesWrite", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 2689);
  *a3 = a2;
  sub_1AF3A45D0(a3, 32);
  v6 = *(a1 + 192);
  if (v6)
  {
    v7 = *(a1 + 200);
    v8 = &v7[v6];
    do
    {
      v9 = *v7;
      v21 = v9;
      v10 = *(v9 + 232);
      if (v10)
      {
        v11 = *(v9 + 240);
        v12 = &v11[v10];
        do
        {
          v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v11) ^ ((0x9DDFEA08EB382D69 * *v11) >> 47));
          v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
          v15 = (*(a3 + 36) - 1) & v14;
          v16 = *(*(a3 + 24) + 2 * v15);
          if (v16 < 2)
          {
            goto LABEL_9;
          }

          while ((v16 & 2) == 0 || v14 != *(*(a3 + 8) + 8 * v15))
          {
            ++v15;
            v17 = v16 >= 4;
            v16 >>= 1;
            if (!v17)
            {
              goto LABEL_9;
            }
          }

          v18 = *(a3 + 16);
          if (v18)
          {
            sub_1AF240F04((v18 + 88 * v15), &v21);
          }

          else
          {
LABEL_9:
            v19[0] = a2;
            v19[1] = 0x800000000;
            v19[2] = &v20;
            sub_1AF240F04(v19, &v21);
            sub_1AF39D66C(a3, v14, v19);
          }

          ++v11;
        }

        while (v11 != v12);
      }

      ++v7;
    }

    while (v7 != v8);
  }

  prof_endFlame();
}

double sub_1AF399F20(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 24 * v2;
    v4 = *(a1 + 24);
    while (*v4 != a2->n128_u64[0] || *(v4 + 8) != a2->n128_u8[8] || *(v4 + 16) != a2[1].n128_u64[0])
    {
      v4 += 24;
      v3 -= 24;
      if (!v3)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v4 = *(a1 + 24);
  }

  if (v4 == *(a1 + 24) + 24 * v2)
  {
LABEL_10:
    *&result = sub_1AF399954(a1, a2).n128_u64[0];
  }

  return result;
}

void CFX::RG::RenderGraphBuilder::computeStages(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  prof_beginFlame("computeStages", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 1995);
  CStackAllocatorPushFrame(a6);
  v112 = *a1;
  v113 = 0;
  v114 = v115;
  sub_1AF39A9F4(a3, &v112);
  v95 = a3;
  if (HIDWORD(v113))
  {
    v108 = v114;
    if (*(&v112 + 1))
    {
      sub_1AF234C8C(*(&v112 + 1), &v108);
    }
  }

  v12 = *(a1 + 48);
  v131 = a6;
  v132 = 0;
  v133 = v134;
  if (v12)
  {
    Aligned = CStackAllocatorAllocateAligned(a6, (8 * v12), 8, 2);
    memcpy(Aligned, v134, 8 * v132);
    v133 = Aligned;
    HIDWORD(v132) = v12;
    v14 = *(a1 + 48);
    v15 = *(v95 + 24);
    if (v14)
    {
      v16 = *(a1 + 25);
      v17 = &v16[v14];
      do
      {
        v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v16) ^ ((0x9DDFEA08EB382D69 * *v16) >> 47));
        v19 = 0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47));
        v20 = (*(a4 + 44) - 1) & v19;
        for (i = *(*(a4 + 32) + 2 * v20); (i & 2) == 0; ++v20)
        {
LABEL_9:
          i >>= 1;
        }

        if (v19 != *(*(a4 + 16) + 8 * v20))
        {
          goto LABEL_9;
        }

        if (!*(*(a4 + 24) + 224 * v20 + 16))
        {
          sub_1AF235000(v15, v16);
        }

        ++v16;
      }

      while (v16 != v17);
    }
  }

  else
  {
    v15 = *(v95 + 24);
  }

  v97 = a5;
  v94 = a1;
  v125 = a6;
  sub_1AF3A1EF8(&v125, 128);
  v121 = a6;
  v122 = 0x800000000;
  v123 = &v124;
  if (v15)
  {
    do
    {
      v117 = a6;
      v118 = 0x800000000;
      v119 = &v120;
      if (v122)
      {
        v112 = *v94;
        v113 = 0;
        v114 = v115;
        sub_1AF39A9F4(v95, &v112);
        if (HIDWORD(v113))
        {
          v108 = v114;
          if (*(&v112 + 1))
          {
            sub_1AF234C8C(*(&v112 + 1), &v108);
          }
        }

        v22 = *(v95 + 24) + 32 * *(v95 + 16) - 32;
        if (v122)
        {
          v23 = v123;
          v24 = 8 * v122;
          do
          {
            *&v112 = *v23;
            sub_1AF235000(v22, &v112);
            ++v23;
            v24 -= 8;
          }

          while (v24);
        }
      }

      else
      {
        v22 = 0;
      }

      v25 = *(v15 + 16);
      if (v25)
      {
        v26 = *(v15 + 24);
        v27 = &v26[v25];
        do
        {
          v28 = *v26;
          *&v112 = *v26;
          if (v122)
          {
            v29 = 8 * v122;
            v30 = v123;
            while (*v30 != v28)
            {
              ++v30;
              v29 -= 8;
              if (!v29)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
            v30 = v123;
          }

          if (v30 == &v123[v122])
          {
LABEL_35:
            sub_1AF240F04(&v117, &v112);
          }

          ++v26;
        }

        while (v26 != v27);
      }

      LODWORD(v122) = 0;
      if (v118)
      {
        v31 = v119;
        v96 = &v119[v118];
        while (1)
        {
          v32 = *v31;
          v116 = v32;
          v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v32) ^ ((0x9DDFEA08EB382D69 * v32) >> 47));
          v34 = 0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47));
          v35 = (v130 - 1) & v34;
          v36 = *(v128 + 2 * v35);
          if (v36 >= 2)
          {
            while ((v36 & 2) == 0 || v34 != *(v126 + 8 * v35))
            {
              ++v35;
              v37 = v36 >= 4;
              v36 >>= 1;
              if (!v37)
              {
                goto LABEL_45;
              }
            }

            if (v127)
            {
              break;
            }
          }

LABEL_45:
          sub_1AF240F04(&v131, &v116);
          LOBYTE(v112) = 1;
          sub_1AF39AD30(&v125, v34, &v112);
          v38 = (*(v97 + 44) - 1) & v34;
          v39 = *(*(v97 + 32) + 2 * v38);
          if (v39 < 2)
          {
LABEL_49:
            v41 = 0;
          }

          else
          {
            while ((v39 & 2) == 0 || v34 != *(*(v97 + 16) + 8 * v38))
            {
              ++v38;
              v40 = v39 > 3;
              v39 >>= 1;
              if (!v40)
              {
                goto LABEL_49;
              }
            }

            v41 = *(v97 + 24) + 224 * v38;
          }

          if (*(v41 + 16))
          {
            CStackAllocatorPushFrame(a6);
            if (!v22)
            {
              v112 = *v94;
              v113 = 0;
              v114 = v115;
              sub_1AF39A9F4(v95, &v112);
              if (HIDWORD(v113))
              {
                v108 = v114;
                if (*(&v112 + 1))
                {
                  sub_1AF234C8C(*(&v112 + 1), &v108);
                }
              }

              v22 = *(v95 + 24) + 32 * *(v95 + 16) - 32;
            }

            *&v112 = a6;
            *(&v112 + 1) = 0x1000000000;
            v113 = &v114;
            v108 = a6;
            v109 = 0x1000000000;
            v110 = &v111;
            v104 = a6;
            v105 = 0x1000000000;
            v106 = &v107;
            v42 = *(v41 + 16);
            if (v42)
            {
              v43 = *(v41 + 24);
              v44 = &v43[3 * v42];
              do
              {
                if (*(v43 + 8) == 3)
                {
                  v101 = *v43;
                  LOBYTE(v102) = 3;
                  sub_1AF39AF4C(&v104, &v101);
                }

                v45 = *v43;
                v46 = *(*v43 + 72);
                if (v46)
                {
                  v47 = *(v45 + 80) + 8;
                  v48 = 16 * v46;
                  v49 = v47;
                  while (1)
                  {
                    v50 = *v49;
                    v49 += 16;
                    if (!v50)
                    {
                      v51 = *(v47 - 8);
                      if (v43[2] == v51)
                      {
                        break;
                      }
                    }

                    v47 = v49;
                    v48 -= 16;
                    if (!v48)
                    {
                      goto LABEL_67;
                    }
                  }

                  v101.n128_u64[0] = *v43;
                  v101.n128_u64[1] = v51;
                  LOBYTE(v102) = 1;
                  sub_1AF39AF4C(&v112, &v101);
                  v45 = *v43;
                }

LABEL_67:
                v52 = *(v45 + 232);
                if (v52)
                {
                  v53 = *(v45 + 240);
                  v54 = 8 * v52;
                  while (1)
                  {
                    v55 = *v53;
                    if (v43[2] == *v53)
                    {
                      break;
                    }

                    ++v53;
                    v54 -= 8;
                    if (!v54)
                    {
                      goto LABEL_73;
                    }
                  }

                  v101.n128_u64[0] = v45;
                  v101.n128_u64[1] = v55;
                  LOBYTE(v102) = 2;
                  sub_1AF39AF4C(&v108, &v101);
                }

LABEL_73:
                v43 += 3;
              }

              while (v43 != v44);
              v56 = v113;
              v101.n128_u64[0] = a6;
              v101.n128_u64[1] = 0x1000000000;
              v102 = v103;
              if (DWORD2(v112))
              {
                v57 = 24 * DWORD2(v112);
                do
                {
                  sub_1AF39AF4C(&v101, v56);
                  v56 = (v56 + 24);
                  v57 -= 24;
                }

                while (v57);
              }
            }

            else
            {
              v101.n128_u64[0] = a6;
              v101.n128_u64[1] = 0x1000000000;
              v102 = v103;
            }

            if (v109)
            {
              v58 = v110;
              v59 = 24 * v109;
              do
              {
                sub_1AF39AF4C(&v101, v58);
                v58 = (v58 + 24);
                v59 -= 24;
              }

              while (v59);
            }

            if (v105)
            {
              v60 = v106;
              v61 = 24 * v105;
              do
              {
                sub_1AF39AF4C(&v101, v60);
                v60 = (v60 + 24);
                v61 -= 24;
              }

              while (v61);
            }

            v99[0] = a6;
            sub_1AF234CC4(v99, 32);
            if (v101.n128_u32[2])
            {
              v62 = v102;
              v63 = &v102[24 * v101.n128_u32[2]];
              do
              {
                v64 = *v62;
                v98 = *v62;
                v65 = *(v22 + 16);
                if (v65)
                {
                  v66 = 8 * v65;
                  v67 = *(v22 + 24);
                  while (*v67 != v64)
                  {
                    ++v67;
                    v66 -= 8;
                    if (!v66)
                    {
                      goto LABEL_94;
                    }
                  }
                }

                else
                {
                  v67 = *(v22 + 24);
                }

                if (v67 != (*(v22 + 24) + 8 * v65))
                {
                  goto LABEL_115;
                }

LABEL_94:
                v68 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v64) ^ ((0x9DDFEA08EB382D69 * v64) >> 47));
                v69 = 0x9DDFEA08EB382D69 * (v68 ^ (v68 >> 47));
                v70 = (*(a4 + 44) - 1) & v69;
                for (j = *(*(a4 + 32) + 2 * v70); (j & 2) == 0; ++v70)
                {
LABEL_96:
                  j >>= 1;
                }

                if (v69 != *(*(a4 + 16) + 8 * v70))
                {
                  goto LABEL_96;
                }

                v72 = *(a4 + 24) + 224 * v70;
                v73 = *(v72 + 16);
                if (v73)
                {
                  v74 = *(v72 + 24);
                  v75 = &v74[3 * v73];
                  v76 = v130 - 1;
                  do
                  {
                    v77 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v74) ^ ((0x9DDFEA08EB382D69 * *v74) >> 47));
                    v78 = 0x9DDFEA08EB382D69 * (v77 ^ (v77 >> 47));
                    v79 = v76 & v78;
                    v80 = *(v128 + 2 * (v76 & v78));
                    if (v80 < 2)
                    {
                      goto LABEL_115;
                    }

                    while ((v80 & 2) == 0 || v78 != *(v126 + 8 * v79))
                    {
                      ++v79;
                      v37 = v80 >= 4;
                      v80 >>= 1;
                      if (!v37)
                      {
                        goto LABEL_115;
                      }
                    }

                    if (!v127)
                    {
                      goto LABEL_115;
                    }

                    v74 += 3;
                  }

                  while (v74 != v75);
                }

                v81 = v62[16];
                if (v81 == 2)
                {
                  v83 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *(v62 + 1)) ^ ((0x9DDFEA08EB382D69 * *(v62 + 1)) >> 47));
                  v84 = 0x9DDFEA08EB382D69 * (v83 ^ (v83 >> 47));
                  v85 = (v100 - 1) & v84;
                  v86 = *(v99[3] + 2 * v85);
                  if (v86 >= 2)
                  {
                    while ((v86 & 2) == 0 || v84 != *(v99[1] + 8 * v85))
                    {
                      ++v85;
                      v37 = v86 >= 4;
                      v86 >>= 1;
                      if (!v37)
                      {
                        goto LABEL_114;
                      }
                    }

                    if (v99[2])
                    {
                      sub_1AF39B00C(&v121, v62);
                      goto LABEL_115;
                    }
                  }
                }

                else if (v81 == 1)
                {
                  v82 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *(v62 + 1)) ^ ((0x9DDFEA08EB382D69 * *(v62 + 1)) >> 47));
                  v134[0] = *(v62 + 1);
                  sub_1AF3A2014(v99, 0x9DDFEA08EB382D69 * (v82 ^ (v82 >> 47)), v134);
                }

LABEL_114:
                sub_1AF396F40(v22, &v98);
LABEL_115:
                v62 += 24;
              }

              while (v62 != v63);
            }

            CStackAllocatorPopFrame(a6);
          }

          if (++v31 == v96)
          {
            goto LABEL_126;
          }
        }

        CFX::RG::RenderGraphBuilder::cycleErrorMessage(v32, &v131, &v112);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = v112;
        *(a2 + 16) = v113;
      }

LABEL_126:
      v15 = v22;
    }

    while (v22);
  }

  v87 = *(a2 + 23);
  if ((v87 & 0x80u) != 0)
  {
    v87 = *(a2 + 8);
  }

  if (!v87)
  {
    if (v129 == *(v94 + 48))
    {
      v88 = *(v95 + 16);
      if (v88)
      {
        v89 = 32 * v88;
        v90 = (*(v95 + 24) + 24);
        do
        {
          v91 = *(v90 - 2);
          v92 = 126 - 2 * __clz(v91);
          if (v91)
          {
            v93 = v92;
          }

          else
          {
            v93 = 0;
          }

          sub_1AF39EB1C(*v90, (*v90 + 8 * v91), v93, 1);
          v90 += 4;
          v89 -= 32;
        }

        while (v89);
      }
    }

    else
    {
      sub_1AF2736F4(a2, "Some passes are not part of the graph", 0x25uLL);
    }
  }

  CStackAllocatorPopFrame(a6);
  prof_endFlame();
}

void sub_1AF39A930(_Unwind_Exception *a1)
{
  CStackAllocatorPopFrame(v1);
  prof_endFlame();
  _Unwind_Resume(a1);
}

uint64_t sub_1AF39A9F4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (v4 + 1 > *(a1 + 20))
  {
    sub_1AF3A1748(a1, 1, 0);
    v4 = *(a1 + 16);
  }

  v5 = *(a1 + 24) + 32 * v4;
  *v5 = *a2;
  *(v5 + 16) = 0;
  *(v5 + 24) = v5 + 32;
  result = sub_1AF3A1848(v5, a2);
  ++*(a1 + 16);
  return result;
}

uint64_t CFX::RG::RenderGraphBuilder::cycleErrorMessage@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  sub_1AF273380(&v24);
  v6 = sub_1AF17C688(&v24, "Cycle detected on [", 19);
  v7 = strlen(*(a1 + 24));
  v8 = sub_1AF17C688(v6, *(a1 + 24), v7);
  v9 = sub_1AF17C688(v8, ":", 1);
  v10 = MEMORY[0x1B271C520](v9, a1);
  sub_1AF17C688(v10, "] ", 2);
  v11 = 0;
  v12 = (*(a2 + 16) + 8 * *(a2 + 8));
  while (v12 != *(a2 + 16))
  {
    v13 = sub_1AF17C688(&v24, "<", 1);
    v14 = *--v12;
    v15 = strlen(*(v14 + 24));
    v16 = sub_1AF17C688(v13, *(v14 + 24), v15);
    v17 = sub_1AF17C688(v16, ":", 1);
    v18 = MEMORY[0x1B271C520](v17, *v12);
    sub_1AF17C688(v18, "> ", 2);
    if (*v12 == a1)
    {
      ++v11;
    }

    if (v11 == 2)
    {
      v19 = sub_1AF17C688(&v24, "=>", 2);
      v20 = strlen(*(*v12 + 24));
      v21 = sub_1AF17C688(v19, *(*v12 + 24), v20);
      v22 = sub_1AF17C688(v21, ":", 1);
      MEMORY[0x1B271C520](v22, *v12);
      break;
    }
  }

  sub_1AF2734EC(&v24, a3);
  v24 = *MEMORY[0x1E69E54E8];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v25 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  return MEMORY[0x1B271C650](&v28);
}

uint64_t sub_1AF39AD30(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          *(v25 + v14) = *(v25 + v20);
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 16) + v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v27 = *(a1 + 24);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    sub_1AF3A1FA0(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 16) + v10) = *a3;
  return result;
}

__n128 sub_1AF39AF4C(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = CStackAllocatorAllocateAligned(*a1, 24 * v7, 8, 2);
    memcpy(Aligned, v6, 24 * *(a1 + 8));
    *(a1 + 16) = Aligned;
    *(a1 + 12) = v7;
    v6 = Aligned;
    v4 = *(a1 + 8);
  }

  v9 = &v6[24 * v4];
  result = *a2;
  v9[1].n128_u64[0] = a2[1].n128_u64[0];
  *v9 = result;
  ++*(a1 + 8);
  return result;
}

_DWORD *sub_1AF39B00C(_DWORD *result, void *a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = 8 * v2;
    for (i = *(result + 2); *i != *a2; ++i)
    {
      v3 -= 8;
      if (!v3)
      {
        return sub_1AF240F04(result, a2);
      }
    }
  }

  else
  {
    i = *(result + 2);
  }

  if (i == (*(result + 2) + 8 * v2))
  {
    return sub_1AF240F04(result, a2);
  }

  return result;
}

void CFX::RG::RenderGraphBuilder::cleanupPredecessorsBasedOnExplicitDependencies(__n128 *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  prof_beginFlame("cleanupPredecessorsBasedOnExplicitDependencies", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 2192);
  v76 = a4;
  CStackAllocatorPushFrame(a4);
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = (*(a3 + 44) - 1) & v9;
  v11 = *(*(a3 + 32) + 2 * v10);
  if (v11 < 2)
  {
LABEL_5:
    v13 = 0;
  }

  else
  {
    while ((v11 & 2) == 0 || v9 != *(*(a3 + 16) + 8 * v10))
    {
      ++v10;
      v12 = v11 > 3;
      v11 >>= 1;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v13 = *(a3 + 24) + 224 * v10;
  }

  v14 = 0;
  v94 = a4;
  v95 = 0x800000000;
  v96 = &v97;
  do
  {
    v15 = &(&v94)[v14];
    v15[3] = 0;
    *(v15 + 32) = 0;
    v15[5] = 0;
    v14 += 3;
  }

  while (v14 != 24);
  v70 = v9;
  v16 = 0;
  v90 = a4;
  v91 = 0x800000000;
  v92 = &v93;
  do
  {
    v17 = &(&v90)[v16];
    v17[3] = 0;
    *(v17 + 32) = 0;
    v17[5] = 0;
    v16 += 3;
  }

  while (v16 != 24);
  v18 = *(v13 + 16);
  if (v18)
  {
    v19 = *(v13 + 24);
    v20 = (v19 + 24 * v18);
    do
    {
      if (v19->n128_u8[8] == 1 && *(v19->n128_u64[0] + 408) == 3 && (sub_1AF397134(*(v19->n128_u64[0] + 416), v19[1].n128_i64[0]) & 1) != 0)
      {
        v21 = *(v19->n128_u64[0] + 328);
        if (v21)
        {
          v22 = 8 * v21;
          v23 = *(v19->n128_u64[0] + 336);
          while (*v23 != a2)
          {
            ++v23;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          v23 = *(v19->n128_u64[0] + 336);
        }

        if (v23 != (*(v19->n128_u64[0] + 336) + 8 * v21))
        {
          sub_1AF39AF4C(&v94, v19);
        }
      }

LABEL_23:
      v19 = (v19 + 24);
    }

    while (v19 != v20);
  }

  v88[0] = v76;
  sub_1AF234CC4(v88, 32);
  v24 = *(v13 + 16);
  if (v24)
  {
    v25 = (*(v13 + 24) + 8);
    v26 = 24 * v24;
    do
    {
      if (*v25 != 3)
      {
        v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *(v25 - 1)) ^ ((0x9DDFEA08EB382D69 * *(v25 - 1)) >> 47));
        v77.n128_u64[0] = *(v25 - 1);
        sub_1AF3A22A4(v88, 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47)), &v77);
      }

      v25 += 24;
      v26 -= 24;
    }

    while (v26);
  }

  v71 = a3;
  v72 = a1;
  v84[0] = v76;
  sub_1AF3A2534(v84, 32);
  v28 = *(a2 + 328);
  if (v28)
  {
    v29 = *(a2 + 336);
    v73 = &v29[v28];
    do
    {
      v74 = v29;
      v30 = *v29;
      v31 = *(*v29 + 232);
      if (v31)
      {
        v32 = *(v30 + 240);
        v75 = &v32[v31];
        do
        {
          v33 = *(v13 + 16);
          if (v33)
          {
            v34 = *v32;
            v35 = *(v13 + 24);
            v36 = (v35 + 24 * v33);
            v37 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v32) ^ ((0x9DDFEA08EB382D69 * *v32) >> 47));
            v38 = 0x9DDFEA08EB382D69 * (v37 ^ (v37 >> 47));
            do
            {
              if (v35->n128_u8[8] == 1 && v35[1].n128_u64[0] == v34 && v35->n128_u64[0] != v30)
              {
                if (v28 == 1)
                {
                  sub_1AF39AF4C(&v94, v35);
                }

                else
                {
                  v39 = (v87 - 1) & v38;
                  v40 = *(v86 + 2 * v39);
                  if (v40 < 2)
                  {
                    goto LABEL_46;
                  }

                  while ((v40 & 2) == 0 || v38 != *(v84[1] + 8 * v39))
                  {
                    ++v39;
                    v41 = v40 >= 4;
                    v40 >>= 1;
                    if (!v41)
                    {
                      goto LABEL_46;
                    }
                  }

                  if (v85)
                  {
                    sub_1AF39B00C((v85 + 32 * v39 + 8), v35);
                  }

                  else
                  {
LABEL_46:
                    v42 = v13;
                    v81 = v76;
                    v82 = 0;
                    v83 = v84;
                    Aligned = CStackAllocatorAllocateAligned(v76, 0x40uLL, 8, 2);
                    memcpy(Aligned, v84, 8 * v82);
                    v83 = Aligned;
                    HIDWORD(v82) = 8;
                    sub_1AF240F04(&v81, v35);
                    v77.n128_u64[0] = v35[1].n128_u64[0];
                    v77.n128_u64[1] = v81;
                    v79 = v80;
                    v78 = v82;
                    if (v83 == v84)
                    {
                      memcpy(v80, v84, 8 * v82);
                    }

                    else
                    {
                      v79 = v83;
                    }

                    v13 = v42;
                    v82 = 0;
                    v83 = v84;
                    sub_1AF39B81C(v84, v38, &v77);
                  }
                }
              }

              v35 = (v35 + 24);
            }

            while (v35 != v36);
          }

          ++v32;
        }

        while (v32 != v75);
      }

      v44 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v30) ^ ((0x9DDFEA08EB382D69 * v30) >> 47));
      v45 = 0x9DDFEA08EB382D69 * (v44 ^ (v44 >> 47));
      v46 = (v89 - 1) & v45;
      v47 = *(v88[3] + 2 * v46);
      if (v47 < 2)
      {
        goto LABEL_57;
      }

      while ((v47 & 2) == 0 || v45 != *(v88[1] + 8 * v46))
      {
        ++v46;
        v41 = v47 >= 4;
        v47 >>= 1;
        if (!v41)
        {
          goto LABEL_57;
        }
      }

      if (!v88[2])
      {
LABEL_57:
        v77.n128_u64[0] = v30;
        v77.n128_u8[8] = 3;
        v78 = 0;
        sub_1AF39AF4C(&v90, &v77);
      }

      v29 = v74 + 1;
    }

    while (v74 + 1 != v73);
  }

  if (v87 != -15)
  {
    v48 = 0;
    v50 = v85;
    v49 = v86;
    v51 = (v87 + 15);
    do
    {
      if (*(v49 + 2 * v48))
      {
        v52 = v50 + 32 * v48;
        v53 = *(v52 + 16);
        if (v53 == 1)
        {
          v77.n128_u64[0] = **(v52 + 24);
          v77.n128_u8[8] = 1;
          v78 = *v52;
          sub_1AF39AF4C(&v94, &v77);
        }

        else
        {
          v54 = *(v13 + 16);
          if (v54)
          {
            v55 = 0;
            v56 = 24 * v54;
            v57 = (*(v13 + 24) + 16);
            do
            {
              v58 = *v57;
              v57 += 3;
              if (v58 == *v52)
              {
                ++v55;
              }

              v56 -= 24;
            }

            while (v56);
            if (v55 > v53 && v53)
            {
              v59 = *(v52 + 24);
              v60 = 8 * v53;
              do
              {
                v77.n128_u64[0] = *v59;
                v77.n128_u8[8] = 1;
                v78 = *v52;
                sub_1AF39AF4C(&v94, &v77);
                ++v59;
                v60 -= 8;
              }

              while (v60);
            }
          }
        }
      }

      ++v48;
    }

    while (v48 != v51);
  }

  v61 = 0;
  v77 = *v72;
  v78 = 0x800000000;
  v79 = v80;
  do
  {
    v62 = &v77 + v61;
    *(v62 + 4) = 0;
    v62[40] = 0;
    *(v62 + 6) = 0;
    v61 += 24;
  }

  while (v61 != 192);
  v63 = *(v13 + 16);
  if (v63)
  {
    v64 = *(v13 + 24);
    v65 = (v64 + 24 * v63);
    do
    {
      if (v95)
      {
        v66 = 24 * v95;
        v67 = v96;
        while (*v67 != v64->n128_u64[0] || *(v67 + 8) != v64->n128_u8[8] || v67[2] != v64[1].n128_u64[0])
        {
          v67 += 3;
          v66 -= 24;
          if (!v66)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        v67 = v96;
      }

      if (v67 == &v96[3 * v95])
      {
LABEL_90:
        sub_1AF399954(&v77, v64);
      }

      v64 = (v64 + 24);
    }

    while (v64 != v65);
  }

  if (v91)
  {
    v68 = v92;
    v69 = 24 * v91;
    do
    {
      sub_1AF399954(&v77, v68);
      v68 = (v68 + 24);
      v69 -= 24;
    }

    while (v69);
  }

  sub_1AF39BAC0(v71, v70, &v77);
  if (HIDWORD(v78))
  {
    if (v79 != v80)
    {
      v81 = v79;
      if (v77.n128_u64[1])
      {
        sub_1AF234C8C(v77.n128_u64[1], &v81);
      }
    }
  }

  CStackAllocatorPopFrame(v76);
  prof_endFlame();
}

void sub_1AF39B7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1AF3A1094(va);
  CStackAllocatorPopFrame(a9);
  prof_endFlame();
  _Unwind_Resume(a1);
}

uint64_t sub_1AF39B81C(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v6 + 15;
    if (v12 >= v7 + 496)
    {
      v12 = v7 + 496;
    }

    LODWORD(v13) = v7;
    v14 = v12 - v7;
    if (v12 > v7)
    {
      v13 = v7;
      while ((*(v8 + 2 * v13) & 1) != 0)
      {
        ++v13;
        if (!--v14)
        {
          goto LABEL_31;
        }
      }
    }

    if (v13 != v12)
    {
      *(v8 + 2 * v13) |= 1u;
      if (v13 <= v7 + 14)
      {
        v28 = v13;
        LOBYTE(v19) = v13;
      }

      else
      {
        while (2)
        {
          v15 = v13 - 14;
          if (v13 < 0xF)
          {
            v15 = 0;
          }

          v16 = v15 - 1;
          if (v15 <= v13)
          {
            v17 = v13;
          }

          else
          {
            v17 = v15;
          }

          v18 = 1;
          while (1)
          {
            v19 = v16 + 1;
            if (v15 <= v19)
            {
              break;
            }

LABEL_25:
            ++v18;
            v16 = v19;
            if (v19 == v17)
            {
              goto LABEL_30;
            }
          }

          v20 = 1 << (v16 - v15 + 2);
          v21 = v18;
          v22 = v15;
          while (1)
          {
            v23 = v22;
            if ((v20 & *(v8 + 2 * v22)) != 0)
            {
              break;
            }

            ++v22;
            LOWORD(v20) = v20 >> 1;
            --v21;
            if (v23 + 1 > v19)
            {
              goto LABEL_25;
            }
          }

          if (v19 >= v13)
          {
LABEL_30:
            *(v8 + 2 * v13) ^= 1u;
            goto LABEL_31;
          }

          v24 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v13) = *(*(a1 + 8) + 8 * v19);
          v25 = (v24 + 32 * v13);
          v26 = v24 + 32 * v19;
          *v25 = *(v24 + 32 * v19);
          v27 = *(v26 + 8);
          v25[2] = 0;
          v25[3] = v25 + 4;
          v25[1] = v27;
          sub_1AF3A25DC((v25 + 1), (v26 + 8));
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v13 - v23 + 1))) ^ (1 << v21);
          LODWORD(v13) = v19;
          v28 = v19;
          if (v19 > v7 + 14)
          {
            continue;
          }

          break;
        }
      }

      v32 = (*(a1 + 16) + 32 * v28);
      *v32 = *a3;
      v32[1] = a3[1];
      v32[2] = 0;
      ++v32;
      v32[2] = v32 + 3;
      result = sub_1AF3A25DC(v32, a3 + 1);
      *(*(a1 + 8) + 8 * v28) = a2;
      v33 = *(a1 + 24);
      *(v33 + 2 * v28) |= 1u;
      *(v33 + 2 * v7) |= 1 << (v19 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_31:
    sub_1AF3A265C(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v29 = (*(a1 + 16) + 32 * v10);
  *v29 = *a3;
  v30 = (v29 + 1);

  return sub_1AF3A25DC(v30, a3 + 1);
}

uint64_t sub_1AF39BAC0(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v5 = *(a1 + 44);
    v6 = (v5 - 1) & a2;
    v7 = *(a1 + 32);
    v8 = *(v7 + 2 * v6);
    if (v8 >= 2)
    {
      break;
    }

LABEL_6:
    v11 = v5 + 15;
    if (v11 >= v6 + 496)
    {
      v11 = v6 + 496;
    }

    LODWORD(v12) = v6;
    v13 = v11 - v6;
    if (v11 > v6)
    {
      v12 = v6;
      while ((*(v7 + 2 * v12) & 1) != 0)
      {
        ++v12;
        if (!--v13)
        {
          goto LABEL_31;
        }
      }
    }

    if (v12 != v11)
    {
      *(v7 + 2 * v12) |= 1u;
      if (v12 <= v6 + 14)
      {
        v25 = v12;
        LOBYTE(v18) = v12;
      }

      else
      {
        while (2)
        {
          v14 = v12 - 14;
          if (v12 < 0xF)
          {
            v14 = 0;
          }

          v15 = v14 - 1;
          if (v14 <= v12)
          {
            v16 = v12;
          }

          else
          {
            v16 = v14;
          }

          v17 = 1;
          while (1)
          {
            v18 = v15 + 1;
            if (v14 <= v18)
            {
              break;
            }

LABEL_25:
            ++v17;
            v15 = v18;
            if (v18 == v16)
            {
              goto LABEL_30;
            }
          }

          v19 = 1 << (v15 - v14 + 2);
          v20 = v17;
          v21 = v14;
          while (1)
          {
            v22 = v21;
            if ((v19 & *(v7 + 2 * v21)) != 0)
            {
              break;
            }

            ++v21;
            LOWORD(v19) = v19 >> 1;
            --v20;
            if (v22 + 1 > v18)
            {
              goto LABEL_25;
            }
          }

          if (v18 >= v12)
          {
LABEL_30:
            *(v7 + 2 * v12) ^= 1u;
            goto LABEL_31;
          }

          v23 = *(a1 + 24);
          *(*(a1 + 16) + 8 * v12) = *(*(a1 + 16) + 8 * v18);
          v24 = (v18 << 8) - 32 * v18;
          sub_1AF3A285C(v23 + 224 * v12, (v23 + v24));
          sub_1AF3A1094(*(a1 + 24) + v24);
          v7 = *(a1 + 32);
          *(v7 + 2 * v22) = (*(v7 + 2 * v22) | (1 << (v12 - v22 + 1))) ^ (1 << v20);
          LODWORD(v12) = v18;
          v25 = v18;
          if (v18 > v6 + 14)
          {
            continue;
          }

          break;
        }
      }

      sub_1AF3A285C(*(a1 + 24) + 224 * v25, a3);
      *(*(a1 + 16) + 8 * v25) = a2;
      v27 = *(a1 + 32);
      *(v27 + 2 * v25) |= 1u;
      result = 1;
      *(v27 + 2 * v6) |= 1 << (v18 - v6 + 1);
      ++*(a1 + 40);
      return result;
    }

LABEL_31:
    sub_1AF3A2788(a1);
  }

  v9 = (v5 - 1) & a2;
  while ((v8 & 2) == 0 || *(*(a1 + 16) + 8 * v9) != a2)
  {
    ++v9;
    v10 = v8 > 3;
    v8 >>= 1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  sub_1AF3A26D0(*(a1 + 24) + 224 * v9, a3);
  return 0;
}

uint64_t CFX::RG::RenderGraphBuilder::tryResolveAmbiguousDependencies(__n128 *a1, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  prof_beginFlame("tryResolveAmbiguousDependencies", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 2337);
  v8 = a1[12].n128_u32[0];
  if (!v8)
  {
    goto LABEL_112;
  }

  v9 = a1[12].n128_u64[1];
  v104 = &v9[v8];
  v108 = a4;
  v106 = *(MEMORY[0x1E69E54E8] + 24);
  v107 = *MEMORY[0x1E69E54E8];
  v109 = a3;
  v101 = a1;
  v102 = a2;
  do
  {
    v10 = *v9;
    CStackAllocatorPushFrame(*a3);
    v11 = 0;
    v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v10) ^ ((0x9DDFEA08EB382D69 * v10) >> 47));
    v13 = *a3;
    v118 = *a3;
    v14 = v12 ^ (v12 >> 47);
    v119 = 0x800000000;
    v120 = &v121;
    do
    {
      v15 = &(&v118)[v11];
      v15[3] = 0;
      *(v15 + 32) = 0;
      v15[5] = 0;
      v11 += 3;
    }

    while (v11 != 24);
    v16 = 0x9DDFEA08EB382D69 * v14;
    v17 = (*(a2 + 44) - 1) & (-348639895 * v14);
    v18 = *(*(a2 + 32) + 2 * v17);
    v105 = v16;
    if (v18 < 2)
    {
LABEL_9:
      v113 = 0;
    }

    else
    {
      while ((v18 & 2) == 0 || v16 != *(*(a2 + 16) + 8 * v17))
      {
        ++v17;
        v19 = v18 > 3;
        v18 >>= 1;
        if (!v19)
        {
          goto LABEL_9;
        }
      }

      v113 = *(a2 + 24) + 224 * v17;
    }

    v112 = v10;
    v114[0] = v13;
    sub_1AF3A28C4(v114, 32);
    v20 = *(v113 + 16);
    if (v20)
    {
      v21 = *(v113 + 24);
      v22 = v21 + 24 * v20;
      do
      {
        if (*(v21 + 8) == 1)
        {
          v23 = *(v21 + 16);
          v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v23) ^ ((0x9DDFEA08EB382D69 * v23) >> 47));
          v25 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
          v140.n128_u64[0] = *v21;
          v140.n128_u64[1] = v23;
          v26 = (v117 - 1) & v25;
          v27 = *(v116 + 2 * v26);
          if (v27 < 2)
          {
            goto LABEL_17;
          }

          while ((v27 & 2) == 0 || v25 != *(v114[1] + 8 * v26))
          {
            ++v26;
            v28 = v27 >= 4;
            v27 >>= 1;
            if (!v28)
            {
              goto LABEL_17;
            }
          }

          if (v115)
          {
            sub_1AF3995BC(v115 + 24 * v26, &v140);
          }

          else
          {
LABEL_17:
            v124 = *a3;
            v125.__locale_ = &v126;
            sub_1AF3995BC(&v124, &v140);
            sub_1AF39C8C8(v114, v25, &v124);
          }
        }

        v21 += 24;
      }

      while (v21 != v22);
    }

    if (v117 == -15)
    {
      goto LABEL_89;
    }

    v29 = v117;
    v103 = v9;
    v110 = 0;
    v30 = 0;
    do
    {
      if ((*(v116 + 2 * v30) & 1) == 0)
      {
        goto LABEL_87;
      }

      v31 = v115 + 24 * v30;
      v32 = *(v31 + 8);
      if (v32 < 2)
      {
        goto LABEL_87;
      }

      v33 = *(v31 + 16);
      v111 = v33[1];
      v145 = *a3;
      v146 = 0;
      v147 = &v148;
      v34 = 16 * v32;
      do
      {
        sub_1AF240F04(&v145, v33);
        v33 += 2;
        v34 -= 16;
      }

      while (v34);
      v140.n128_u64[0] = *a3;
      sub_1AF3A2C74(&v140, 32);
      v134 = *a3;
      sub_1AF3A1EF8(&v134, 32);
      v131 = *a3;
      v132 = 0;
      v133 = &v134;
      if (!v146)
      {
LABEL_69:
        sub_1AF273380(&v124);
        a3 = v109;
        v71 = sub_1AF17C688(&v124, "Ambiguous dependency on pass [", 30);
        v72 = strlen(*(v112 + 24));
        v73 = sub_1AF17C688(v71, *(v112 + 24), v72);
        sub_1AF17C688(v73, "] reading resource written by multiple passes:\n", 47);
        v74 = *(v31 + 8);
        if (v74)
        {
          v75 = *(v31 + 16);
          v76 = 16 * v74;
          do
          {
            v77 = sub_1AF17C688(&v124, "\t<", 2);
            v78 = strlen(*(v75[1] + 8));
            v79 = sub_1AF17C688(v77, *(v75[1] + 8), v78);
            v80 = sub_1AF17C688(v79, "> written by [", 14);
            v81 = MEMORY[0x1B271C520](v80, *v75);
            v82 = sub_1AF17C688(v81, ":", 1);
            v83 = strlen(*(*v75 + 24));
            v84 = sub_1AF17C688(v82, *(*v75 + 24), v83);
            sub_1AF17C688(v84, "]\n", 2);
            v75 += 2;
            v76 -= 16;
          }

          while (v76);
        }

        v85 = sub_1AF17C688(&v124, "Must add explicit dependency on [", 33);
        v86 = strlen(*(v112 + 24));
        v87 = sub_1AF17C688(v85, *(v112 + 24), v86);
        sub_1AF17C688(v87, "]", 1);
        sub_1AF2734EC(&v124, &v122);
        if (*(v108 + 23) < 0)
        {
          operator delete(*v108);
        }

        *v108 = v122;
        *(v108 + 16) = v123;
        v124.n128_u64[0] = v107;
        *(v124.n128_u64 + *(v107 - 24)) = v106;
        v124.n128_u64[1] = MEMORY[0x1E69E5548] + 16;
        if (v129 < 0)
        {
          operator delete(__p);
        }

        v124.n128_u64[1] = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v125);
        std::ostream::~ostream();
        MEMORY[0x1B271C650](&v130);
        v110 = 1;
        goto LABEL_87;
      }

      v35 = v147;
      v36 = &v147[v146];
      while (1)
      {
        v37 = *v35;
        v38 = v144 + 15;
        memset(v140.n128_u64[1], 255, 8 * (v144 + 15));
        bzero(v142, 2 * v38);
        v143 = 0;
        LODWORD(v132) = 0;
        memset(v135, 255, 8 * (v139 + 15));
        bzero(v137, 2 * (v139 + 15));
        v138 = 0;
        if (v146)
        {
          v39 = v147;
          v40 = 8 * v146;
          do
          {
            v41 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v39) ^ ((0x9DDFEA08EB382D69 * *v39) >> 47));
            v124.n128_u8[0] = 0;
            sub_1AF3A2A64(&v134, 0x9DDFEA08EB382D69 * (v41 ^ (v41 >> 47)), &v124);
            ++v39;
            v40 -= 8;
          }

          while (v40);
        }

        v124.n128_u64[0] = v37;
        v124.n128_u32[2] = 0;
        sub_1AF3995BC(&v131, &v124);
        v42 = v132;
        if (!v132)
        {
          if (!v146)
          {
            goto LABEL_69;
          }

          goto LABEL_57;
        }

        do
        {
          v43 = &v133[2 * v42];
          v44 = *(v43 - 2);
          v46 = *(v43 - 2);
          v45 = *(v43 - 1);
          LODWORD(v132) = v42 - 1;
          v47 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v44) ^ ((0x9DDFEA08EB382D69 * v44) >> 47));
          v48 = 0x9DDFEA08EB382D69 * (v47 ^ (v47 >> 47));
          v49 = (v144 - 1) & v48;
          v50 = v142[v49];
          if (v50 < 2)
          {
            goto LABEL_38;
          }

          while ((v50 & 2) == 0 || v48 != *(v140.n128_u64[1] + 8 * v49))
          {
            ++v49;
            v28 = v50 >= 4;
            v50 >>= 1;
            if (!v28)
            {
              goto LABEL_38;
            }
          }

          if (!v141 || v46 > DWORD2(v141[v49]))
          {
LABEL_38:
            v124.n128_u64[0] = v44;
            v124.n128_u64[1] = __PAIR64__(v45, v46);
            sub_1AF3A2D90(&v140, v48, &v124);
          }

          v51 = *(v44 + 328);
          if (v51)
          {
            v52 = *(v44 + 336);
            v53 = &v52[v51];
            v54 = v46 + 1;
            do
            {
              v55 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v52) ^ ((0x9DDFEA08EB382D69 * *v52) >> 47));
              v56 = 0x9DDFEA08EB382D69 * (v55 ^ (v55 >> 47));
              v57 = (v139 - 1) & v56;
              v58 = v137[v57];
              if (v58 >= 2)
              {
                while ((v58 & 2) == 0 || v56 != *(v135 + v57))
                {
                  ++v57;
                  v28 = v58 >= 4;
                  v58 >>= 1;
                  if (!v28)
                  {
                    goto LABEL_48;
                  }
                }

                if (v136)
                {
                  v124.n128_u64[0] = *v52;
                  v124.n128_u32[2] = v54;
                  sub_1AF3995BC(&v131, &v124);
                }
              }

LABEL_48:
              ++v52;
            }

            while (v52 != v53);
          }

          v42 = v132;
        }

        while (v132);
        if (v143 == v146)
        {
          break;
        }

LABEL_57:
        if (++v35 == v36)
        {
          goto LABEL_69;
        }
      }

      if (!v143)
      {
        goto LABEL_69;
      }

      a3 = v109;
      v124 = *v109;
      v60 = v113;
      v59 = &v126;
      v125.__locale_ = &v126;
      v61 = &v126;
      if (v144 != -15)
      {
        v62 = 0;
        v64 = v141;
        v63 = v142;
        v65 = (v144 + 15);
        do
        {
          v66 = *v63++;
          if (v66)
          {
            locale = v125.__locale_;
            if (v62 + 1 > v124.n128_u32[3])
            {
              v68 = ((v124.n128_u32[3] + 1) * 1.5);
              Aligned = CStackAllocatorAllocateAligned(v124.n128_u64[0], 16 * v68, 8, 2);
              memcpy(Aligned, locale, 16 * v124.n128_u32[2]);
              v125.__locale_ = Aligned;
              v124.n128_u32[3] = v68;
              locale = Aligned;
              v62 = v124.n128_u32[2];
            }

            *(locale + v62) = *v64;
            v62 = ++v124.n128_u32[2];
            v60 = v113;
          }

          ++v64;
          --v65;
        }

        while (v65);
        v59 = v125.__locale_;
        v61 = v125.__locale_ + 16 * v62;
        if (v62)
        {
          v70 = 126 - 2 * __clz(v62);
          a3 = v109;
          goto LABEL_79;
        }

        a3 = v109;
      }

      v70 = 0;
LABEL_79:
      sub_1AF3A302C(v59, v61, v70, 1);
      v88 = *(v60 + 16);
      if (v88)
      {
        v89 = *v125.__locale_;
        v90 = *(v60 + 24);
        v91 = 24 * v88;
        do
        {
          if (v90->n128_u8[8] == 1 && v90[1].n128_u64[0] == v111 && v90->n128_u64[0] != v89)
          {
            sub_1AF39AF4C(&v118, v90);
          }

          v90 = (v90 + 24);
          v91 -= 24;
        }

        while (v91);
      }

      v29 = v117;
LABEL_87:
      ++v30;
    }

    while (v30 < (v29 + 15));
    a1 = v101;
    a2 = v102;
    v9 = v103;
    if (v110)
    {
      CStackAllocatorPopFrame(*a3);
      v99 = 0;
      goto LABEL_114;
    }

LABEL_89:
    if (v119)
    {
      v92 = 0;
      v124 = *a1;
      v125.__locale_ = 0x800000000;
      v126 = v127;
      do
      {
        v93 = &v124 + v92;
        *(v93 + 4) = 0;
        v93[40] = 0;
        *(v93 + 6) = 0;
        v92 += 24;
      }

      while (v92 != 192);
      v94 = *(v113 + 16);
      if (v94)
      {
        v95 = *(v113 + 24);
        v96 = (v95 + 24 * v94);
        do
        {
          if (v119)
          {
            v97 = 24 * v119;
            v98 = v120;
            while (*v98 != v95->n128_u64[0] || *(v98 + 8) != v95->n128_u8[8] || v98[2] != v95[1].n128_u64[0])
            {
              v98 += 3;
              v97 -= 24;
              if (!v97)
              {
                goto LABEL_103;
              }
            }
          }

          else
          {
            v98 = v120;
          }

          if (v98 == &v120[3 * v119])
          {
LABEL_103:
            sub_1AF399954(&v124, v95);
          }

          v95 = (v95 + 24);
        }

        while (v95 != v96);
      }

      sub_1AF39BAC0(a2, v105, &v124);
      if (HIDWORD(v125.__locale_))
      {
        if (v126 != v127)
        {
          v140.n128_u64[0] = v126;
          if (v124.n128_u64[1])
          {
            sub_1AF234C8C(v124.n128_u64[1], &v140);
          }
        }
      }
    }

    CStackAllocatorPopFrame(*a3);
    ++v9;
  }

  while (v9 != v104);
LABEL_112:
  v99 = 1;
LABEL_114:
  prof_endFlame();
  return v99;
}