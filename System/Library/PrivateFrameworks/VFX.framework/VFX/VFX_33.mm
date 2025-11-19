uint64_t sub_1AF3A830C(uint64_t a1, CFX::RG::RenderGraphBuilder *a2, uint64_t *a3)
{
  v23 = *a1;
  v24 = 0;
  v25 = &v26;
  sub_1AF2348E0(&v23, 8, 1);
  v20[0] = a3[2];
  sub_1AF3A1EF8(v20, 32);
  v17[0] = a3[2];
  sub_1AF3A1EF8(v17, 32);
  v6 = *(a1 + 288);
  if (v6)
  {
    v7 = *(a1 + 296);
    v8 = v7 + 32 * v6;
    while (1)
    {
      v9 = *(v7 + 16);
      if (v9)
      {
        break;
      }

LABEL_17:
      v7 += 32;
      if (v7 == v8)
      {
        goto LABEL_18;
      }
    }

    v10 = *(v7 + 24);
    v11 = 8 * v9;
    while (1)
    {
      v12 = *v10;
      v16 = v12;
      if (*(v12 + 408) == 2)
      {
        if (sub_1AF3A8D8C(v12))
        {
          v13 = v16;
          if (!sub_1AF3A8B7C(v16, v17))
          {
            sub_1AF3A8CA4(v13, v20);
            sub_1AF235000(&v23, &v16);
            goto LABEL_16;
          }
        }

        if (v24 > 1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (!sub_1AF3A8B7C(v12, v20))
        {
          if (v24)
          {
            sub_1AF3A8CA4(v12, v17);
          }

          goto LABEL_16;
        }

        if (v24 >= 2)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v24) = 0;
      memset(v20[1], 255, 8 * (v22 + 15));
      bzero(v20[3], 2 * (v22 + 15));
      v21 = 0;
      memset(v17[1], 255, 8 * (v19 + 15));
      bzero(v17[3], 2 * (v19 + 15));
      v18 = 0;
LABEL_16:
      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v24 < 2)
  {
    v14 = 0;
  }

  else
  {
LABEL_19:
    sub_1AF3A8578(a1, a2, a3, &v23, 2u);
    v14 = 1;
  }

  if (HIDWORD(v24))
  {
    v20[0] = v25;
    if (*(&v23 + 1))
    {
      sub_1AF234C8C(*(&v23 + 1), v20);
    }
  }

  return v14;
}

void sub_1AF3A853C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, int a23, int a24, uint64_t a25)
{
  if (a24)
  {
    a16 = a25;
    if (a22)
    {
      sub_1AF234C8C(a22, &a16);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF3A8578(uint64_t a1, CFX::RG::RenderGraphBuilder *this, uint64_t *a3, uint64_t a4, unsigned __int8 a5)
{
  v72[0] = a5;
  v9 = *(a1 + 8);
  v67 = *a1;
  v68 = v9;
  v69 = 0x800000000;
  v70 = v71;
  v62 = v67;
  v63 = v9;
  v64 = 0x800000000;
  v65 = v66;
  v61 = 0;
  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = *(a4 + 24);
    v12 = &v11[v10];
    do
    {
      v13 = *v11;
      v14 = 0x9DDFEA08EB382D69 * (*(*v11 + 48) ^ v61);
      v61 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v14 >> 47) ^ v14)) ^ ((0x9DDFEA08EB382D69 * (v61 ^ (v14 >> 47) ^ v14)) >> 47));
      v15 = *(a1 + 160);
      if (v15)
      {
        v16 = *(a1 + 168);
        v17 = &v16[v15];
        do
        {
          v18 = *v16;
          *&v57 = v18;
          v19 = *(v18 + 328);
          if (v19)
          {
            v20 = 8 * v19;
            v21 = *(v18 + 336);
            while (*v21 != v13)
            {
              ++v21;
              v20 -= 8;
              if (!v20)
              {
                goto LABEL_20;
              }
            }
          }

          else
          {
            v21 = *(v18 + 336);
          }

          if (v21 != (*(v18 + 336) + 8 * v19))
          {
            v22 = *(a4 + 16);
            if (v22)
            {
              v23 = 8 * v22;
              v24 = *(a4 + 24);
              while (*v24 != v18)
              {
                ++v24;
                v23 -= 8;
                if (!v23)
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
              v24 = *(a4 + 24);
            }

            if (v24 == (*(a4 + 24) + 8 * v22))
            {
LABEL_19:
              sub_1AF396F40(&v67, &v57);
            }
          }

LABEL_20:
          ++v16;
        }

        while (v16 != v17);
      }

      v25 = *(v13 + 328);
      if (v25)
      {
        v26 = *(v13 + 336);
        v27 = 8 * v25;
        do
        {
          *&v57 = *v26;
          sub_1AF396F40(&v62, &v57);
          ++v26;
          v27 -= 8;
        }

        while (v27);
      }

      CFX::RG::RenderGraphBuilder::removePass(this, v13, 0);
      ++v11;
    }

    while (v11 != v12);
  }

  *&v57 = a3[2];
  v28 = sub_1AF3A8AA4(this, &v57, a4, &v61, v72);
  if (v69)
  {
    v29 = v70;
    v30 = 8 * v69;
    do
    {
      CFX::RG::Pass::dependsOn(*v29++, v28);
      v30 -= 8;
    }

    while (v30);
  }

  if (v64)
  {
    v31 = v65;
    v32 = 8 * v64;
    do
    {
      CFX::RG::Pass::dependsOn(v28, *v31++);
      v32 -= 8;
    }

    while (v32);
  }

  if (v72[0] != 2 && v72[0] != 4)
  {
    goto LABEL_73;
  }

  v34 = 0;
  v57 = *this;
  v58 = 0x800000000;
  v59 = v60;
  do
  {
    v35 = &v57 + v34;
    *(v35 + 4) = 0;
    v35[40] = 0;
    v34 += 16;
  }

  while (v34 != 128);
  v36 = *(v28 + 72);
  if (!v36)
  {
    goto LABEL_69;
  }

  v37 = *(v28 + 80);
  v38 = &v37[v36];
  do
  {
    *v56 = *v37;
    v39 = !CFX::RG::Resource::isExternal(v56[0]) && !CFX::RG::Resource::isManaged(v56[0]);
    CFX::RG::RenderGraph::passesReadingResource(a1, v56[0], a3[2], 0, &v53);
    CFX::RG::RenderGraph::passesWritingResource(a1, v56[0], a3[2], v50);
    if (!v39)
    {
      goto LABEL_65;
    }

    if (v54)
    {
      v40 = v55;
      v41 = *(v28 + 440);
      do
      {
        v42 = *(v28 + 448);
        if (v41)
        {
          v43 = 8 * v41;
          v42 = *(v28 + 448);
          while (*v42 != *v40)
          {
            ++v42;
            v43 -= 8;
            if (!v43)
            {
              goto LABEL_65;
            }
          }
        }

        if (v42 == (*(v28 + 448) + 8 * v41))
        {
          goto LABEL_65;
        }

        ++v40;
      }

      while (v40 != &v55[v54]);
    }

    if (v51)
    {
      v44 = v52;
      v45 = *(v28 + 440);
      while (1)
      {
        v46 = *(v28 + 448);
        if (v45)
        {
          v47 = 8 * v45;
          v46 = *(v28 + 448);
          while (*v46 != *v44)
          {
            ++v46;
            v47 -= 8;
            if (!v47)
            {
              goto LABEL_65;
            }
          }
        }

        if (v46 == (*(v28 + 448) + 8 * v45))
        {
          break;
        }

        if (++v44 == &v52[v51])
        {
          goto LABEL_62;
        }
      }

LABEL_65:
      sub_1AF3A1160(&v57, v56);
      goto LABEL_66;
    }

LABEL_62:
    if (CFX::RG::Resource::isTexture(v56[0]))
    {
      v48 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a3, v56[0]) + 12);
      if ((v48 & 0x100000000) == 0)
      {
        v49 = CFX::RG::Resource::textureDesc(v56[0]);
        *(v49 + 72) = HIDWORD(v48) & 0xFE | 1;
        *(v49 + 80) = 1;
        CFX::RG::RenderGraphContext::updateResourceDescriptor(a3, v56[0]);
      }
    }

LABEL_66:
    ++v37;
  }

  while (v37 != v38);
  if (v58 != *(v28 + 72))
  {
    CFX::RG::Pass::replaceReads(v28, &v57);
  }

LABEL_69:
  if (HIDWORD(v58))
  {
    if (v59 != v60)
    {
      v53 = v59;
      if (*(&v57 + 1))
      {
        sub_1AF234C8C(*(&v57 + 1), &v53);
      }
    }
  }

LABEL_73:
  if (HIDWORD(v64))
  {
    if (v65 != v66)
    {
      *&v57 = v65;
      if (v63)
      {
        sub_1AF234C8C(v63, &v57);
      }
    }
  }

  if (HIDWORD(v69) && v70 != v71)
  {
    *&v57 = v70;
    if (v68)
    {
      sub_1AF234C8C(v68, &v57);
    }
  }
}

void sub_1AF3A8A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_1AF3A1094(&a35);
  sub_1AF3A1094(&a57);
  sub_1AF3A1094(v57 - 208);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF3A8AA4(uint64_t *a1, void *a2, uint64_t a3, void *a4, unsigned __int8 *a5)
{
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  v10[0] = sub_1AF3A8B04(v10[0], v8, v10, a2, a3, a4, a5);
  sub_1AF235000(a1 + 22, v10);
  return v10[0];
}

uint64_t sub_1AF3A8B04(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, unsigned __int8 *a7)
{
  v14[0] = a1;
  v14[1] = a2;
  v12 = sub_1AF23498C(v14, 0x1C8u, 8u);
  return CFX::RG::AggregatePass::AggregatePass(v12, *a3, a3[1], *a4, a5, *a6, *a7);
}

uint64_t sub_1AF3A8B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v3 + 16 * v2;
    v5 = *(a2 + 36) - 1;
    while (1)
    {
      if (!*(v3 + 8))
      {
        v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v3) ^ ((0x9DDFEA08EB382D69 * *v3) >> 47));
        v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
        v8 = v5 & v7;
        v9 = *(*(a2 + 24) + 2 * (v5 & v7));
        if (v9 >= 2)
        {
          while ((v9 & 2) == 0 || v7 != *(*(a2 + 8) + 8 * v8))
          {
            ++v8;
            v10 = v9 >= 4;
            v9 >>= 1;
            if (!v10)
            {
              goto LABEL_10;
            }
          }

          if (*(a2 + 16))
          {
            break;
          }
        }
      }

LABEL_10:
      v3 += 16;
      if (v3 == v4)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v11 = *(a1 + 232);
    if (!v11)
    {
      return 0;
    }

    v12 = *(a1 + 240);
    v13 = &v12[v11];
    v14 = *(a2 + 36) - 1;
    while (1)
    {
      v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v12) ^ ((0x9DDFEA08EB382D69 * *v12) >> 47));
      v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
      v17 = v14 & v16;
      v18 = *(*(a2 + 24) + 2 * (v14 & v16));
      if (v18 >= 2)
      {
        while ((v18 & 2) == 0 || v16 != *(*(a2 + 8) + 8 * v17))
        {
          ++v17;
          v10 = v18 >= 4;
          v18 >>= 1;
          if (!v10)
          {
            goto LABEL_19;
          }
        }

        if (*(a2 + 16))
        {
          break;
        }
      }

LABEL_19:
      if (++v12 == v13)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_1AF3A8CA4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 72);
  if (v4)
  {
    v5 = *(result + 80) + 8;
    v6 = 16 * v4;
    v7 = v5;
    do
    {
      v8 = *v7;
      v7 += 16;
      if (!v8)
      {
        v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *(v5 - 8)) ^ ((0x9DDFEA08EB382D69 * *(v5 - 8)) >> 47));
        v16 = 1;
        result = sub_1AF39AD30(a2, 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47)), &v16);
      }

      v5 = v7;
      v6 -= 16;
    }

    while (v6);
  }

  v10 = *(v3 + 232);
  if (v10)
  {
    v11 = *(v3 + 240);
    v12 = 8 * v10;
    do
    {
      v13 = *v11++;
      v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v13) ^ ((0x9DDFEA08EB382D69 * v13) >> 47));
      v15 = 1;
      result = sub_1AF39AD30(a2, 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47)), &v15);
      v12 -= 8;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1AF3A8D8C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = 16 * v2;
    while ((CFX::RG::Resource::isHazardTracked(*v3) & 1) != 0)
    {
      v3 += 2;
      v4 -= 16;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    v5 = *(a1 + 232);
    if (v5)
    {
      v6 = *(a1 + 240);
      v7 = 8 * v5 - 8;
      do
      {
        v8 = *v6++;
        result = CFX::RG::Resource::isHazardTracked(v8);
        if (result)
        {
          v10 = v7 == 0;
        }

        else
        {
          v10 = 1;
        }

        v7 -= 8;
      }

      while (!v10);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1AF3A8E18(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  CFX::RG::RenderGraph::directSuccessorsReadingResource(a1, a2, a3, *a4, v11);
  v6 = *(a2 + 80);
  v7 = *(a2 + 72);
  v8 = v6 + 16 * v7;
  if (v7)
  {
    v9 = 16 * v7;
    while (*v6 != a3 || *(v6 + 8))
    {
      v6 += 16;
      v9 -= 16;
      if (!v9)
      {
        v6 = v8;
        break;
      }
    }
  }

  if (v6 == v8)
  {
    return v12;
  }

  else
  {
    return v12 + 1;
  }
}

uint64_t sub_1AF3A8E94(_DWORD *a1, uint64_t a2, CFX::RG::Resource *this)
{
  v21 = this;
  result = CFX::RG::Resource::isManaged(this);
  if ((result & 1) == 0)
  {
    v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * this) ^ ((0x9DDFEA08EB382D69 * this) >> 47));
    v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    v9 = (*(a2 + 36) - 1) & v8;
    v10 = *(*(a2 + 24) + 2 * v9);
    if (v10 < 2)
    {
LABEL_6:
      v12 = 0;
    }

    else
    {
      while ((v10 & 2) == 0 || v8 != *(*(a2 + 8) + 8 * v9))
      {
        ++v9;
        v11 = v10 > 3;
        v10 >>= 1;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v12 = *(a2 + 16) + 16 * v9;
    }

    v13 = *(v12 + 8);
    if (v13 != 0x7FFFFFFF)
    {
      v14 = v13 - 1;
      *(v12 + 8) = v14;
      if (!v14)
      {
        result = sub_1AF240F04(a1, &v21);
        v15 = (*(a2 + 36) - 1) & v8;
        v16 = *(a2 + 24);
        v17 = *(v16 + 2 * v15);
        if (v17 >= 2)
        {
          v18 = 1;
          for (i = *(v16 + 2 * v15); ; i >>= 1)
          {
            if ((i & 2) != 0)
            {
              v20 = v15 + v18 - 1;
              if (v8 == *(*(a2 + 8) + 8 * v20))
              {
                break;
              }
            }

            ++v18;
            v11 = i > 3;
            if (!v11)
            {
              return result;
            }
          }

          *(v16 + 2 * v15) = v17 ^ (1 << v18);
          *(v16 + 2 * v20) ^= 1u;
          --*(a2 + 32);
        }
      }
    }
  }

  return result;
}

__n128 sub_1AF3A9000(uint64_t a1, uint64_t a2, __n128 *a3)
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
          *(v25 + 16 * v14) = *(v25 + 16 * v20);
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

      result = *a3;
      *(*(a1 + 16) + 16 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v29 = *(a1 + 24);
      *(v29 + 2 * v20) |= 1u;
      *(v29 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    sub_1AF3A9228(a1);
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

  v27 = a3->n128_u64[0];
  v28 = *(a1 + 16) + 16 * v10;
  *(v28 + 8) = a3->n128_u32[2];
  *v28 = v27;
  return result;
}

void sub_1AF3A9228(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF3A2C74(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF3A9000(a1, *v3, v2);
      }

      ++v3;
      v2 += 16;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1AF3A929C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v120 = *(a1 + 12);
  v117 = objc_msgSend_pixelFormat(a2, a2, a3, a4);
  v118 = *(a1 + 12);
  v119 = objc_msgSend_textureType(a2, v6, v7, v8);
  v121 = *(a1 + 10);
  v12 = objc_msgSend_arrayLength(a2, v9, v10, v11);
  v116 = *(a1 + 12);
  v16 = objc_msgSend_sampleCount(a2, v13, v14, v15);
  v17 = *(a1 + 4);
  v21 = objc_msgSend_width(a2, v18, v19, v20);
  v114 = *(a1 + 4);
  v25 = objc_msgSend_height(a2, v22, v23, v24);
  v26 = *(a1 + 4);
  v30 = objc_msgSend_depth(a2, v27, v28, v29);
  v31 = *(a1 + 12);
  v35 = objc_msgSend_mipmapLevelCount(a2, v32, v33, v34);
  v36 = v114 >> 16;
  v38 = v120 == v117 && ((v118 >> 40) & 0xF) == v119 && v121 == v12;
  v115 = v17;
  v40 = v38 && v116 >> 24 == v16 && v17 == v21;
  v113 = v30;
  v42 = v40 && v36 == v25 && v26 << 16 >> 48 == v30;
  v43 = v35;
  v44 = v42 && v31 << 40 >> 56 == v35;
  result = v44;
  if (!v44)
  {
    v111 = v36;
    v110 = result;
    sub_1AF273380(&v124);
    if (v120 != v117)
    {
      v46 = sub_1AF17C688(&v124, "wrong pixelFormat expected ", 27);
      v47 = MEMORY[0x1B271C570](v46, *(a1 + 12));
      v48 = sub_1AF17C688(v47, "got ", 4);
      v52 = objc_msgSend_pixelFormat(a2, v49, v50, v51);
      v53 = MEMORY[0x1B271C570](v48, v52);
      sub_1AF17C688(v53, "\n", 1);
    }

    if (((v118 >> 40) & 0xF) != v119)
    {
      v54 = sub_1AF17C688(&v124, "wrong textureType expected ", 27);
      v55 = MEMORY[0x1B271C570](v54, (*(a1 + 12) >> 40) & 0xFLL);
      v56 = sub_1AF17C688(v55, "got ", 4);
      v60 = objc_msgSend_textureType(a2, v57, v58, v59);
      v61 = MEMORY[0x1B271C570](v56, v60);
      sub_1AF17C688(v61, "\n", 1);
    }

    if (v121 != v12)
    {
      v62 = sub_1AF17C688(&v124, "wrong arrayLength expected ", 27);
      v63 = MEMORY[0x1B271C560](v62, *(a1 + 10));
      v64 = sub_1AF17C688(v63, "got ", 4);
      v68 = objc_msgSend_arrayLength(a2, v65, v66, v67);
      v69 = MEMORY[0x1B271C570](v64, v68);
      sub_1AF17C688(v69, "\n", 1);
    }

    if (v116 >> 24 != v16)
    {
      v70 = sub_1AF17C688(&v124, "wrong sampleCount expected ", 27);
      v71 = MEMORY[0x1B271C560](v70, *(a1 + 12) >> 24);
      v72 = sub_1AF17C688(v71, "got ", 4);
      v76 = objc_msgSend_sampleCount(a2, v73, v74, v75);
      v77 = MEMORY[0x1B271C570](v72, v76);
      sub_1AF17C688(v77, "\n", 1);
    }

    if (v115 != v21)
    {
      v78 = sub_1AF17C688(&v124, "wrong width expected ", 21);
      v79 = MEMORY[0x1B271C560](v78, *(a1 + 4));
      v80 = sub_1AF17C688(v79, "got ", 4);
      v84 = objc_msgSend_width(a2, v81, v82, v83);
      v85 = MEMORY[0x1B271C570](v80, v84);
      sub_1AF17C688(v85, "\n", 1);
    }

    if (v111 != v25)
    {
      v86 = sub_1AF17C688(&v124, "wrong height expected ", 22);
      v87 = MEMORY[0x1B271C560](v86, *(a1 + 4) >> 16);
      v88 = sub_1AF17C688(v87, "got ", 4);
      v92 = objc_msgSend_height(a2, v89, v90, v91);
      v93 = MEMORY[0x1B271C570](v88, v92);
      sub_1AF17C688(v93, "\n", 1);
    }

    if (v26 << 16 >> 48 != v113)
    {
      v94 = sub_1AF17C688(&v124, "wrong depth expected ", 21);
      v95 = MEMORY[0x1B271C560](v94, (*(a1 + 4) << 16) >> 48);
      v96 = sub_1AF17C688(v95, "got ", 4);
      v100 = objc_msgSend_depth(a2, v97, v98, v99);
      v101 = MEMORY[0x1B271C570](v96, v100);
      sub_1AF17C688(v101, "\n", 1);
    }

    if (v31 << 40 >> 56 != v43)
    {
      v102 = sub_1AF17C688(&v124, "wrong mipmapLevelCount expected ", 32);
      v103 = MEMORY[0x1B271C560](v102, (*(a1 + 12) << 40) >> 56);
      v104 = sub_1AF17C688(v103, "got ", 4);
      v108 = objc_msgSend_mipmapLevelCount(a2, v105, v106, v107);
      v109 = MEMORY[0x1B271C570](v104, v108);
      sub_1AF17C688(v109, "\n", 1);
    }

    sub_1AF2734EC(&v124, &v122);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v122;
    *(a3 + 16) = v123;
    v124 = *MEMORY[0x1E69E54E8];
    *(&v124 + *(v124 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v125 = MEMORY[0x1E69E5548] + 16;
    if (v127 < 0)
    {
      operator delete(v126[7].__locale_);
    }

    v125 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v126);
    std::ostream::~ostream();
    MEMORY[0x1B271C650](&v128);
    return v110;
  }

  return result;
}

uint64_t sub_1AF3A98C0(uint64_t a1, uint64_t a2, _BYTE *a3)
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
      v16 = *(v8 + 2 * v14) | 1;
      *(v8 + 2 * v14) = v16;
      if (v14 <= v7 + 14)
      {
        v30 = v14;
        v27 = *a1;
        v28 = *(a1 + 8);
        LOBYTE(v21) = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v17 = v14 - 14;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17 - 1;
          if (v17 <= v14)
          {
            v19 = v14;
          }

          else
          {
            v19 = v17;
          }

          v20 = 1;
          while (1)
          {
            v21 = v18 + 1;
            if (v17 <= v21)
            {
              break;
            }

LABEL_26:
            ++v20;
            v18 = v21;
            if (v21 == v19)
            {
              goto LABEL_31;
            }
          }

          v22 = 1 << (v18 - v17 + 2);
          v23 = v20;
          v24 = v17;
          while (1)
          {
            v25 = v24;
            v26 = *(v8 + 2 * v24);
            if ((v22 & v26) != 0)
            {
              break;
            }

            v24 = v25 + 1;
            v22 = v22 >> 1;
            --v23;
            if (v25 + 1 > v21)
            {
              goto LABEL_26;
            }
          }

          if (v21 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v27 = *a1;
          v28 = *(a1 + 8);
          *(*a1 + 8 * v14) = *(*a1 + 8 * v21);
          *(v28 + v14) = *(v28 + v21);
          *(v8 + 2 * v25) = (v26 | (1 << (v14 - v25 + 1))) ^ (1 << v23);
          LODWORD(v14) = v21;
          if (v21 > v7 + 14)
          {
            continue;
          }

          break;
        }

        v16 = *(v8 + 2 * v21) | 1;
        v30 = v21;
      }

      *(v28 + v30) = *a3;
      *(v27 + 8 * v30) = a2;
      *(v8 + 2 * v30) = v16;
      result = 1;
      *(v8 + 2 * v7) |= 1 << (v21 - v7 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_32:
    sub_1AF3AFF08(a1);
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

uint64_t CFX::RG::RenderGraphProviderParameters::enablePass(uint64_t this, uint64_t a2)
{
  v2 = (*(this + 28) - 1) & a2;
  v3 = *(this + 16);
  v4 = *(v3 + 2 * v2);
  if (v4 >= 2)
  {
    v5 = 1;
    for (i = *(v3 + 2 * v2); ; i >>= 1)
    {
      if ((i & 2) != 0)
      {
        v7 = v2 + v5 - 1;
        if (*(*this + 8 * v7) == a2)
        {
          break;
        }
      }

      ++v5;
      if (i <= 3)
      {
        return this;
      }
    }

    *(v3 + 2 * v2) = v4 ^ (1 << v5);
    *(v3 + 2 * v7) ^= 1u;
    --*(this + 24);
  }

  return this;
}

uint64_t CFX::RG::RenderGraphProviderParameters::isDisabled(CFX::RG::RenderGraphProviderParameters *this, uint64_t a2)
{
  v2 = (*(this + 7) - 1) & a2;
  v3 = *(*(this + 2) + 2 * v2);
  if (v3 < 2)
  {
    goto LABEL_5;
  }

  while ((v3 & 2) == 0 || *(*this + 8 * v2) != a2)
  {
    ++v2;
    v4 = v3 >= 4;
    v3 >>= 1;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v7 = *(this + 1);
  if (v7)
  {
    v5 = *(v7 + v2);
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t CFX::RG::RenderGraphProvider::RenderGraphProvider(uint64_t this)
{
  *this = "";
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = this + 24;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 1;
  return this;
}

{
  *this = "";
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = this + 24;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 1;
  return this;
}

uint64_t CFX::RG::RenderGraphProvider::RenderGraphProvider(uint64_t this, const char *a2)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = this + 24;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 1;
  return this;
}

{
  *this = a2;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = this + 24;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 1;
  return this;
}

void CFX::RG::RenderGraphProvider::~RenderGraphProvider(id *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this[2];
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      (*(*v5 + 56))(v5);
      free(v5);
      v4 -= 8;
    }

    while (v4);
  }

  if (*(this + 3))
  {
    free(this[2]);
  }
}

void sub_1AF3A9CD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 12))
  {
    free(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CFX::RG::RenderGraphProvider::resolve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  prof_beginFlame("resolve", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraphProvider.mm", 101);
  v6 = CFX::RG::sortSubgraphDependencies(a2, a1 + 8, a3);
  *(a1 + 24) = v6;
  prof_endFlame();
  return v6;
}

unint64_t CFX::RG::RenderGraphProvider::hash(CFX::RG::RenderGraphProvider *this, CFX::RG::RenderGraphContext *a2)
{
  prof_beginFlame("hash", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraphProvider.mm", 126);
  v4 = *(this + 2);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 2);
    v7 = 8 * v4;
    do
    {
      v8 = *v6;
      v12 = 0;
      v9 = (*(*v8 + 24))(v8, a2, &v12);
      v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v5)))) >> 47));
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (*(this + 4) ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(this + 4) ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (*(this + 4) ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(this + 4) ^ v5)))) >> 47));
  prof_endFlame();
  return v10;
}

uint64_t CFX::RG::RenderGraphProvider::showImGui(uint64_t this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = *(this + 16);
    v3 = 8 * v1;
    do
    {
      v4 = *v2++;
      this = (*(*v4 + 40))(v4);
      v3 -= 8;
    }

    while (v3);
  }

  return this;
}

BOOL sub_1AF3A9F0C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1ED73AB48, memory_order_acquire) & 1) == 0)
  {
    v2 = a1;
    sub_1AFDFB78C();
    a1 = v2;
  }

  return *(a1 + 408) == 3 && *(a1 + 40) == qword_1ED73AB40;
}

uint64_t CFX::RG::RenderGraphProvider::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CFX::RG::RenderGraphContext::setCurrentBuilder(a3, a2);
  v9 = *(a3 + 16);
  v76 = a3;
  CStackAllocatorPushFrame(v9);
  v99 = *(a3 + 16);
  v100 = 0x1000000000;
  v101 = &v102;
  v94 = v99;
  sub_1AF3A2C74(&v94, 32);
  v90 = *(a3 + 16);
  v91 = 0x1000000000;
  v92 = v93;
  memset(v93, 0, sizeof(v93));
  v88[0] = v90;
  sub_1AF234CC4(v88, 32);
  v10 = *(a1 + 8);
  if (v10)
  {
    v66 = v9;
    v11 = 0;
    v12 = *(a1 + 16);
    v70 = a1;
    v71 = &v12[v10];
    v73 = (v10 - 1);
    v67 = *(MEMORY[0x1E69E54E8] + 24);
    v68 = *MEMORY[0x1E69E54E8];
    v72 = a4;
    while (1)
    {
      v75 = v12;
      v13 = *v12;
      prof_beginFlame((*v12)[2], "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraphProvider.mm", 180);
      (**v13)(v13, v76);
      *&v79 = a4 ? a4 : 0;
      (*(*v13 + 4))(v13, v76, a2, &v79);
      prof_endFlame();
      if (v11 < v73)
      {
        (*(**(*(v70 + 16) + 8 * v11 + 8) + 8))(&v86);
        if (v86)
        {
          v14 = v87;
          v15 = 8 * v86;
          while (1)
          {
            v85 = *v14;
            CFX::RG::RenderGraphBuilder::searchPublishedResource(a2, v85, *(v76 + 2), &v83);
            if (!v84)
            {
              break;
            }

            ++v14;
            v15 -= 8;
            if (!v15)
            {
              goto LABEL_11;
            }
          }

          sub_1AF273380(&v79);
          v17 = sub_1AF17C688(&v79, "Missing expected published resource ", 36);
          CFX::RG::ResourceIdentifier::pathName(&v85, __p);
          if (v78 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          if (v78 >= 0)
          {
            v19 = HIBYTE(v78);
          }

          else
          {
            v19 = __p[1];
          }

          v20 = sub_1AF17C688(v17, v18, v19);
          v21 = sub_1AF17C688(v20, " from ", 6);
          v22 = strlen(v13[2]);
          v23 = sub_1AF17C688(v21, v13[2], v22);
          sub_1AF17C688(v23, "\n", 1);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(__p[0]);
          }

          sub_1AF2734EC(&v79, __p);
          if (*(a5 + 23) < 0)
          {
            operator delete(*a5);
          }

          *a5 = *__p;
          *(a5 + 16) = v78;
          *&v79 = v68;
          *(&v80[-2].__locale_ + *(v68 - 24)) = v67;
          *(&v79 + 1) = MEMORY[0x1E69E5548] + 16;
          if (v81 < 0)
          {
            operator delete(v80[7].__locale_);
          }

          *(&v79 + 1) = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v80);
          std::ostream::~ostream();
          MEMORY[0x1B271C650](&v82);
          v16 = 0;
        }

        else
        {
LABEL_11:
          v16 = 1;
        }

        if (HIDWORD(v86))
        {
          free(v87);
        }

        if (!v16)
        {
          break;
        }
      }

      v24 = *(a2 + 192);
      if (v24)
      {
        v25 = *(a2 + 200);
        v26 = &v25[v24];
        do
        {
          v27 = *v25;
          v83 = v27;
          v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v27) ^ ((0x9DDFEA08EB382D69 * v27) >> 47));
          v29 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
          v30 = (v89 - 1) & v29;
          v31 = *(v88[3] + 2 * v30);
          if (v31 < 2)
          {
            goto LABEL_34;
          }

          while ((v31 & 2) == 0 || v29 != *(v88[1] + 8 * v30))
          {
            ++v30;
            v32 = v31 >= 4;
            v31 >>= 1;
            if (!v32)
            {
              goto LABEL_34;
            }
          }

          if (!v88[2])
          {
LABEL_34:
            *&v79 = v27;
            sub_1AF3A22A4(v88, v29, &v79);
            sub_1AF240F04(&v99, &v83);
          }

          ++v25;
        }

        while (v25 != v26);
      }

      CFX::RG::RenderGraphBuilder::initPassesAndResolveReferences(a2, v76);
      v74 = v11;
      if (v100)
      {
        v33 = v101;
        v34 = &v101[v100];
        do
        {
          v35 = *v33;
          v36 = sub_1AF3A9F0C(*v33);
          if (v36 && v91)
          {
            v37 = 16 * v91;
            v38 = (v92 + 8);
            do
            {
              v39 = *v38;
              v40 = CFX::RG::Temporal::currentFrame(v36);
              CFX::RG::Pass::readFrom(v35, v39, v40);
              v36 = CFX::RG::Pass::dependsOn(v35, *(v38 - 1));
              v38 += 2;
              v37 -= 16;
            }

            while (v37);
          }

          v41 = *(v35 + 72);
          if (v41)
          {
            v42 = *(v35 + 80);
            v43 = v42 + 16 * v41;
            do
            {
              if (!*(v42 + 8))
              {
                v44 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v42) ^ ((0x9DDFEA08EB382D69 * *v42) >> 47));
                v45 = 0x9DDFEA08EB382D69 * (v44 ^ (v44 >> 47));
                v46 = (v98 - 1) & v45;
                v47 = *(v97 + 2 * v46);
                if (v47 >= 2)
                {
                  while ((v47 & 2) == 0 || v45 != *(v95 + 8 * v46))
                  {
                    ++v46;
                    v32 = v47 >= 4;
                    v47 >>= 1;
                    if (!v32)
                    {
                      goto LABEL_52;
                    }
                  }

                  if (v96)
                  {
                    v48 = *(v96 + 16 * v46);
                    if (v35 != v48)
                    {
                      CFX::RG::Pass::dependsOn(v35, v48);
                    }
                  }
                }
              }

LABEL_52:
              v42 += 16;
            }

            while (v42 != v43);
          }

          v49 = *(v35 + 232);
          if (v49)
          {
            v50 = *(v35 + 240);
            v51 = &v50[v49];
            do
            {
              v52 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v50) ^ ((0x9DDFEA08EB382D69 * *v50) >> 47));
              v53 = 0x9DDFEA08EB382D69 * (v52 ^ (v52 >> 47));
              v54 = (v98 - 1) & v53;
              v55 = *(v97 + 2 * v54);
              if (v55 >= 2)
              {
                while ((v55 & 2) == 0 || v53 != *(v95 + 8 * v54))
                {
                  ++v54;
                  v32 = v55 >= 4;
                  v55 >>= 1;
                  if (!v32)
                  {
                    goto LABEL_63;
                  }
                }

                v56 = v96;
                if (v96)
                {
                  v57 = CFX::RG::Pass::renderTargetInfo(v35, *v50);
                  if (v57)
                  {
                    if (*v57)
                    {
                      v58 = *(v56 + 16 * v54);
                      if (v35 != v58)
                      {
                        CFX::RG::Pass::dependsOn(v35, v58);
                      }
                    }
                  }
                }
              }

LABEL_63:
              ++v50;
            }

            while (v50 != v51);
          }

          ++v33;
        }

        while (v33 != v34);
      }

      LODWORD(v100) = 0;
      (*(*v13 + 2))(&v83, v13, v76);
      a4 = v72;
      if (v83)
      {
        v59 = v84;
        v60 = 8 * v83;
        do
        {
          PublishedResource = CFX::RG::RenderGraphBuilder::findPublishedResource(a2, *v59);
          __p[0] = PublishedResource;
          __p[1] = v62;
          if (PublishedResource)
          {
            if (CFX::RG::isPublishResourcePass(PublishedResource, v62))
            {
              sub_1AF3995BC(&v90, __p);
            }

            else
            {
              v63 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * __p[1]) ^ ((0x9DDFEA08EB382D69 * __p[1]) >> 47));
              v79 = *__p;
              sub_1AF3AFFB4(&v94, 0x9DDFEA08EB382D69 * (v63 ^ (v63 >> 47)), &v79);
            }
          }

          ++v59;
          v60 -= 8;
        }

        while (v60);
      }

      if (HIDWORD(v83))
      {
        free(v84);
      }

      v11 = v74 + 1;
      v12 = v75 + 1;
      if (v75 + 1 == v71)
      {
        v64 = 1;
        goto LABEL_84;
      }
    }

    v64 = 0;
LABEL_84:
    v9 = v66;
  }

  else
  {
    v64 = 1;
  }

  CStackAllocatorPopFrame(v9);
  CFX::RG::RenderGraphContext::setCurrentBuilder(v76, 0);
  return v64;
}

void sub_1AF3AA7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  sub_1AF273594(&a25);
  if (a64)
  {
    free(a65);
  }

  CFX::RG::RenderGraphContext::setCurrentBuilder(a21, 0);
  _Unwind_Resume(a1);
}

CFX::RG *CFX::RG::RenderGraphProvider::encodeIfNeeded(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  prof_beginFlame("encodeIfNeeded", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraphProvider.mm", 277);
  if (*(a1 + 24) != 1 || (CFX::RG::RenderGraphProvider::build(a1, a3, a2, a4, a5) & 1) == 0)
  {
    goto LABEL_22;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = 0;
    v12 = *(a1 + 16);
    v13 = 8 * v10;
    do
    {
      v16 = (*(**v12 + 48))();
      if (v16)
      {
        if (!v11)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        objc_msgSend_addObjectsFromArray_(v11, v14, v16, v15);
      }

      v12 += 8;
      v13 -= 8;
    }

    while (v13);
    if (v11)
    {

      *(a1 + 48) = v11;
    }
  }

  if (*(a1 + 40))
  {
    v17 = *(a2 + 16);
    CStackAllocatorPushFrame(v17);
    v36 = 0;
    v37 = &v36;
    v38 = 0x5812000000;
    v39 = sub_1AF3B0244;
    v40 = nullsub_207;
    v41 = "";
    v42[0] = *(a2 + 16);
    sub_1AF3B0744(v42, 32);
    v33 = v17;
    v34 = a5;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1AF3B0278;
    v35[3] = &unk_1E7A7FC80;
    v35[5] = a1;
    v35[6] = a2;
    v35[4] = &v36;
    CFX::RG::RenderGraphBuilder::enumeratePublishedResource(a3, v35);
    v18 = v37;
    v19 = *(v37 + 21);
    if (v19 != -15)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        if (*(v18[9] + 2 * v21))
        {
          v22 = v18[8];
          v23 = *(v22 + v20);
          v24 = *(v22 + v20 + 16);
          v49 = *(v22 + v20 + 32);
          v48 = v24;
          CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v43, &v48);
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = sub_1AF3B0864;
          v44[3] = &unk_1E7A7FCA0;
          v44[4] = a1;
          v44[5] = v23;
          v45 = v48;
          v46 = v49;
          CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v47, v43, v44, 0);
          v25 = (***(a1 + 40))(*(a1 + 40), *(v22 + v20)) == 1;
          CFX::RG::ExternalResourceDesc::setRequireLoad(v47, v25);
          CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v43, v47);
          v26 = sub_1AF24BF34(a3, "Client resource", v43);
          CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v43);
          CFX::RG::RenderGraphBuilder::replaceResource(a3, a2, *(v22 + v20 + 8), v26, 1);
          CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v47);
          v19 = *(v18 + 21);
        }

        ++v21;
        v20 += 48;
      }

      while (v21 < (v19 + 15));
    }

    _Block_object_dispose(&v36, 8);
    CStackAllocatorPopFrame(v33);
    a5 = v34;
  }

  v27 = CFX::RG::RenderGraphBuilder::build(a3, a2, a5);
  if (v27)
  {
    v28 = *(a2 + 16);
    CStackAllocatorPushFrame(v28);
    v30 = CFX::RG::OptimiseRenderGraph(v27, a3, a2, v29);
    CStackAllocatorPopFrame(v28);
    if (v30)
    {
      CFX::RG::FreezeRenderGraph(a3, v30, v31);
    }
  }

  else
  {
LABEL_22:
    v30 = 0;
  }

  prof_endFlame();
  return v30;
}

void CFX::RG::RenderGraphProvider::logNonOptimisedGraph(CFX::RG::RenderGraphProvider *this, __CFXGPUDevice *a2)
{
  v4[35] = *MEMORY[0x1E69E9840];
  sub_1AF273380(v4);
  CFX::RG::RenderGraphContext::RenderGraphContext(v3, a2, 3u);
  CScratchAllocatorCreate();
}

void sub_1AF3AAF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (v49 < 0)
  {
    operator delete(v48);
  }

  CFX::RG::RenderGraphContext::~RenderGraphContext(&a18);
  sub_1AF273594(&a48);
  _Unwind_Resume(a1);
}

void CFX::RG::RenderGraphProvider::generateTest(CFX::RG::RenderGraphProvider *this, __CFXGPUDevice *a2, CFX::RG::RenderGraphProviderParameters *a3)
{
  sub_1AF273380(&v5);
  CFX::RG::RenderGraphContext::RenderGraphContext(v4, a2, 3u);
  CScratchAllocatorCreate();
}

void sub_1AF3ADAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1AF3B08C4(&a27);
  sub_1AF3B08C4(&a33);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  CFX::RG::RenderGraphContext::~RenderGraphContext(&a45);
  sub_1AF273594(&a72);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF3ADDE8@<X0>(CFX::RG::Resource *a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  sub_1AF273380(&v23);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a1) ^ ((0x9DDFEA08EB382D69 * a1) >> 47));
  v22 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  sub_1AF13D250(&v21, "");
  if (CFX::RG::Resource::isExternal(a1))
  {
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      v21.__r_.__value_.__l.__size_ = 9;
      v7 = v21.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v21.__r_.__value_.__s + 23) = 9;
      v7 = &v21;
    }

    strcpy(v7, "_external");
    if (CFX::RG::Resource::isBuffer(a1))
    {
      std::string::append(&v21, "_buffer", 7uLL);
    }

    if (CFX::RG::Resource::isTexture(a1))
    {
      std::string::append(&v21, "_texture", 8uLL);
    }
  }

  else
  {
    if (CFX::RG::Resource::isBuffer(a1))
    {
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        v21.__r_.__value_.__l.__size_ = 7;
        v8 = v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v21.__r_.__value_.__s + 23) = 7;
        v8 = &v21;
      }

      strcpy(v8, "_buffer");
    }

    if (CFX::RG::Resource::isTexture(a1))
    {
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        v21.__r_.__value_.__l.__size_ = 8;
        v9 = v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v21.__r_.__value_.__s + 23) = 8;
        v9 = &v21;
      }

      strcpy(v9, "_texture");
    }
  }

  v10 = sub_1AF17C688(&v23, "r_", 2);
  v11 = CFX::RG::Resource::name(a1);
  v12 = strlen(v11);
  v13 = sub_1AF17C688(v10, v11, v12);
  v14 = sub_1AF17C688(v13, "_", 1);
  *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  v15 = MEMORY[0x1B271C580]();
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v21;
  }

  else
  {
    v16 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  sub_1AF17C688(v15, v16, size);
  sub_1AF2734EC(&v23, __p);
  sub_1AF3AFA9C(__p, a3);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1AF3AFB58(a2, &v22, a3);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v23 = *MEMORY[0x1E69E54E8];
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v24 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v25);
  std::ostream::~ostream();
  return MEMORY[0x1B271C650](&v27);
}

void sub_1AF3AE164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1AF273594(&a22);
  _Unwind_Resume(a1);
}

void *sub_1AF3AE1C0(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = 8;
  do
  {
    sub_1AF17C688(a1, " ", 1);
    --v10;
  }

  while (v10);
  v11 = sub_1AF17C688(a1, "auto ", 5);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_1AF17C688(v11, v13, v14);
  v16 = sub_1AF17C688(v15, " = builder->", 12);
  if (a4)
  {
    v17 = "createManagedResource(";
  }

  else
  {
    v17 = "createResource(";
  }

  if (a4)
  {
    v18 = 23;
  }

  else
  {
    v18 = 16;
  }

  v19 = sub_1AF17C688(v16, v17, v18);
  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  v23 = sub_1AF17C688(v19, v21, v22);
  sub_1AF17C688(v23, ",\n", 3);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  v25 = v24 + 41;
  if (v24 + 41 < 1)
  {
    sub_1AF17C688(a1, "(CFXTextureDescriptor){\n", 24);
  }

  else
  {
    v26 = v24 + 41;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v26;
    }

    while (v26);
    sub_1AF17C688(a1, "(CFXTextureDescriptor){\n", 24);
    v27 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v27;
    }

    while (v27);
  }

  v28 = sub_1AF17C688(a1, "   .width = ", 12);
  v29 = MEMORY[0x1B271C560](v28, *(a3 + 4));
  sub_1AF17C688(v29, ",\n", 2);
  if (v25 < 1)
  {
    v34 = sub_1AF17C688(a1, "   .height = ", 13);
    v35 = MEMORY[0x1B271C560](v34, *(a3 + 4) >> 16);
    sub_1AF17C688(v35, ",\n", 2);
  }

  else
  {
    v30 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v30;
    }

    while (v30);
    v31 = sub_1AF17C688(a1, "   .height = ", 13);
    v32 = MEMORY[0x1B271C560](v31, *(a3 + 4) >> 16);
    sub_1AF17C688(v32, ",\n", 2);
    v33 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v33;
    }

    while (v33);
  }

  v36 = sub_1AF17C688(a1, "   .depth = ", 12);
  v37 = MEMORY[0x1B271C560](v36, (*(a3 + 4) << 16) >> 48);
  sub_1AF17C688(v37, ",\n", 2);
  if (v25 < 1)
  {
    v42 = sub_1AF17C688(a1, "   .arrayLength = ", 18);
    v43 = MEMORY[0x1B271C560](v42, *(a3 + 10));
    sub_1AF17C688(v43, ",\n", 2);
  }

  else
  {
    v38 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v38;
    }

    while (v38);
    v39 = sub_1AF17C688(a1, "   .arrayLength = ", 18);
    v40 = MEMORY[0x1B271C560](v39, *(a3 + 10));
    sub_1AF17C688(v40, ",\n", 2);
    v41 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v41;
    }

    while (v41);
  }

  v44 = sub_1AF17C688(a1, "   .mipmapLevelCount = ", 23);
  v45 = MEMORY[0x1B271C540](v44, (*(a3 + 12) << 40) >> 56);
  sub_1AF17C688(v45, ",\n", 2);
  if (v25 < 1)
  {
    v50 = sub_1AF17C688(a1, "   .sampleCount = ", 18);
    v51 = MEMORY[0x1B271C540](v50, *(a3 + 12) >> 24);
    sub_1AF17C688(v51, ",\n", 2);
  }

  else
  {
    v46 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v46;
    }

    while (v46);
    v47 = sub_1AF17C688(a1, "   .sampleCount = ", 18);
    v48 = MEMORY[0x1B271C540](v47, *(a3 + 12) >> 24);
    sub_1AF17C688(v48, ",\n", 2);
    v49 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v49;
    }

    while (v49);
  }

  v52 = sub_1AF17C688(a1, "   .allowGPUOptimizedContents = ", 32);
  v53 = MEMORY[0x1B271C530](v52, (*(a3 + 12) >> 49) & 1);
  sub_1AF17C688(v53, ",\n", 2);
  if (v25 < 1)
  {
    v61 = sub_1AF17C688(a1, "   .pixelFormat = MTLPixelFormat(", 33);
    v62 = MEMORY[0x1B271C570](v61, *(a3 + 12));
    sub_1AF17C688(v62, "),\n", 3);
    v63 = sub_1AF17C688(a1, "   .textureType = MTLTextureType(", 33);
    v64 = MEMORY[0x1B271C570](v63, (*(a3 + 12) >> 40) & 0xFLL);
    sub_1AF17C688(v64, "),\n", 3);
  }

  else
  {
    v54 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v54;
    }

    while (v54);
    v55 = sub_1AF17C688(a1, "   .pixelFormat = MTLPixelFormat(", 33);
    v56 = MEMORY[0x1B271C570](v55, *(a3 + 12));
    sub_1AF17C688(v56, "),\n", 3);
    v57 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v57;
    }

    while (v57);
    v58 = sub_1AF17C688(a1, "   .textureType = MTLTextureType(", 33);
    v59 = MEMORY[0x1B271C570](v58, (*(a3 + 12) >> 40) & 0xFLL);
    sub_1AF17C688(v59, "),\n", 3);
    v60 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v60;
    }

    while (v60);
  }

  v65 = sub_1AF17C688(a1, "   .storageMode = MTLStorageMode(", 33);
  v66 = MEMORY[0x1B271C570](v65, (*(a3 + 12) >> 44) & 7);
  sub_1AF17C688(v66, "),\n", 3);
  if (v25 < 1)
  {
    v71 = sub_1AF17C688(a1, "   .usage = ", 12);
    v72 = MEMORY[0x1B271C570](v71, *(a3 + 16));
    sub_1AF17C688(v72, ",\n", 2);
  }

  else
  {
    v67 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v67;
    }

    while (v67);
    v68 = sub_1AF17C688(a1, "   .usage = ", 12);
    v69 = MEMORY[0x1B271C570](v68, *(a3 + 16));
    sub_1AF17C688(v69, ",\n", 2);
    v70 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v70;
    }

    while (v70);
  }

  v73 = sub_1AF17C688(a1, "   .cpuCacheMode = MTLCPUCacheMode(", 35);
  v74 = MEMORY[0x1B271C570](v73, (*(a3 + 12) >> 50) & 1);
  sub_1AF17C688(v74, "),\n", 3);
  if (v25 < 1)
  {
    v79 = sub_1AF17C688(a1, "   .compressionType = MTLTextureCompressionType(", 48);
    v80 = MEMORY[0x1B271C560](v79, (*(a3 + 12) << 12) >> 63);
    sub_1AF17C688(v80, "),\n", 3);
  }

  else
  {
    v75 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v75;
    }

    while (v75);
    v76 = sub_1AF17C688(a1, "   .compressionType = MTLTextureCompressionType(", 48);
    v77 = MEMORY[0x1B271C560](v76, (*(a3 + 12) << 12) >> 63);
    sub_1AF17C688(v77, "),\n", 3);
    v78 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v78;
    }

    while (v78);
  }

  v81 = sub_1AF17C688(a1, "   .hazardTrackingMode = MTLHazardTrackingMode(", 47);
  v82 = MEMORY[0x1B271C570](v81, (*(a3 + 12) >> 47) & 3);
  sub_1AF17C688(v82, "),\n", 3);
  if (v25 < 1)
  {
    sub_1AF17C688(a1, "   .swizzle = MTLTextureSwizzleChannelsDefault,\n", 48);
    if (a4)
    {
LABEL_81:
      v84 = sub_1AF17C688(a1, "}, ", 3);
      v85 = MEMORY[0x1B271C540](v84, a5);
      v86 = ");\n";
      v87 = 3;
      goto LABEL_84;
    }
  }

  else
  {
    v83 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v83;
    }

    while (v83);
    sub_1AF17C688(a1, "   .swizzle = MTLTextureSwizzleChannelsDefault,\n", 48);
    if (a4)
    {
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v25;
      }

      while (v25);
      goto LABEL_81;
    }

    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v25;
    }

    while (v25);
  }

  v86 = "});\n";
  v85 = a1;
  v87 = 4;
LABEL_84:

  return sub_1AF17C688(v85, v86, v87);
}

void *sub_1AF3AEA3C(void *a1, uint64_t a2, CFX::RG::ExternalResourceDesc *a3, int a4, uint64_t a5)
{
  v10 = 8;
  do
  {
    sub_1AF17C688(a1, " ", 1);
    --v10;
  }

  while (v10);
  v11 = sub_1AF17C688(a1, "auto ", 5);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_1AF17C688(v11, v13, v14);
  v16 = sub_1AF17C688(v15, " = builder->", 12);
  if (a4)
  {
    v17 = "createManagedResource(";
  }

  else
  {
    v17 = "createResource(";
  }

  if (a4)
  {
    v18 = 23;
  }

  else
  {
    v18 = 16;
  }

  v19 = sub_1AF17C688(v16, v17, v18);
  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  v23 = sub_1AF17C688(v19, v21, v22);
  sub_1AF17C688(v23, ",\n", 3);
  LODWORD(v24) = *(a2 + 23);
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  v25 = v24 + 41;
  if (CFX::RG::ExternalResourceDesc::kind(a3) == 1)
  {
    memset(v116, 0, sizeof(v116));
    CFXTextureDescriptorMake2D(0x10u, 0x10u, 0x46u, v116);
    v26 = CFX::RG::ExternalResourceDesc::textureDesc(a3);
    CFX::RG::TextureDescriptorReference::partialResolveInto(v26, v116);
    if (v25 < 1)
    {
      sub_1AF17C688(a1, "(CFX::RG::ExternalResourceDesc){\n", 33);
      sub_1AF17C688(a1, "    (CFXTextureDescriptor){\n", 28);
    }

    else
    {
      v27 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v27;
      }

      while (v27);
      sub_1AF17C688(a1, "(CFX::RG::ExternalResourceDesc){\n", 33);
      v28 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v28;
      }

      while (v28);
      sub_1AF17C688(a1, "    (CFXTextureDescriptor){\n", 28);
      v29 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v29;
      }

      while (v29);
    }

    v30 = sub_1AF17C688(a1, "       .width = ", 16);
    v31 = MEMORY[0x1B271C560](v30, SWORD2(v116[0]));
    sub_1AF17C688(v31, ",\n", 2);
    if (v25 < 1)
    {
      v36 = sub_1AF17C688(a1, "       .height = ", 17);
      v37 = MEMORY[0x1B271C560](v36, SHIDWORD(v116[0]) >> 16);
      sub_1AF17C688(v37, ",\n", 2);
    }

    else
    {
      v32 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v32;
      }

      while (v32);
      v33 = sub_1AF17C688(a1, "       .height = ", 17);
      v34 = MEMORY[0x1B271C560](v33, SHIDWORD(v116[0]) >> 16);
      sub_1AF17C688(v34, ",\n", 2);
      v35 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v35;
      }

      while (v35);
    }

    v38 = sub_1AF17C688(a1, "       .depth = ", 16);
    v39 = MEMORY[0x1B271C560](v38, (*(v116 + 4) << 16) >> 48);
    sub_1AF17C688(v39, ",\n", 2);
    if (v25 < 1)
    {
      v44 = sub_1AF17C688(a1, "       .arrayLength = ", 22);
      v45 = MEMORY[0x1B271C560](v44, SWORD1(v116[1]));
      sub_1AF17C688(v45, ",\n", 2);
    }

    else
    {
      v40 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v40;
      }

      while (v40);
      v41 = sub_1AF17C688(a1, "       .arrayLength = ", 22);
      v42 = MEMORY[0x1B271C560](v41, SWORD1(v116[1]));
      sub_1AF17C688(v42, ",\n", 2);
      v43 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v43;
      }

      while (v43);
    }

    v46 = sub_1AF17C688(a1, "       .mipmapLevelCount = ", 27);
    v47 = MEMORY[0x1B271C540](v46, (*(&v116[1] + 4) << 40) >> 56);
    sub_1AF17C688(v47, ",\n", 2);
    if (v25 < 1)
    {
      v52 = sub_1AF17C688(a1, "       .sampleCount = ", 22);
      v53 = MEMORY[0x1B271C540](v52, SHIDWORD(v116[1]) >> 24);
      sub_1AF17C688(v53, ",\n", 2);
    }

    else
    {
      v48 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v48;
      }

      while (v48);
      v49 = sub_1AF17C688(a1, "       .sampleCount = ", 22);
      v50 = MEMORY[0x1B271C540](v49, SHIDWORD(v116[1]) >> 24);
      sub_1AF17C688(v50, ",\n", 2);
      v51 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v51;
      }

      while (v51);
    }

    v54 = sub_1AF17C688(a1, "       .allowGPUOptimizedContents = ", 36);
    v55 = MEMORY[0x1B271C530](v54, (*(&v116[1] + 4) >> 49) & 1);
    sub_1AF17C688(v55, ",\n", 2);
    if (v25 < 1)
    {
      v63 = sub_1AF17C688(a1, "       .pixelFormat = MTLPixelFormat(", 37);
      v64 = MEMORY[0x1B271C570](v63, WORD2(v116[1]));
      sub_1AF17C688(v64, "),\n", 3);
      v65 = sub_1AF17C688(a1, "       .textureType = MTLTextureType(", 37);
      v66 = MEMORY[0x1B271C570](v65, (*(&v116[1] + 4) >> 40) & 0xFLL);
      sub_1AF17C688(v66, "),\n", 3);
    }

    else
    {
      v56 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v56;
      }

      while (v56);
      v57 = sub_1AF17C688(a1, "       .pixelFormat = MTLPixelFormat(", 37);
      v58 = MEMORY[0x1B271C570](v57, WORD2(v116[1]));
      sub_1AF17C688(v58, "),\n", 3);
      v59 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v59;
      }

      while (v59);
      v60 = sub_1AF17C688(a1, "       .textureType = MTLTextureType(", 37);
      v61 = MEMORY[0x1B271C570](v60, (*(&v116[1] + 4) >> 40) & 0xFLL);
      sub_1AF17C688(v61, "),\n", 3);
      v62 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v62;
      }

      while (v62);
    }

    v67 = sub_1AF17C688(a1, "       .storageMode = MTLStorageMode(", 37);
    v68 = MEMORY[0x1B271C570](v67, (*(&v116[1] + 4) >> 44) & 7);
    sub_1AF17C688(v68, "),\n", 3);
    if (v25 < 1)
    {
      v73 = sub_1AF17C688(a1, "       .usage = ", 16);
      v74 = MEMORY[0x1B271C570](v73, LOBYTE(v116[2]));
      sub_1AF17C688(v74, ",\n", 2);
    }

    else
    {
      v69 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v69;
      }

      while (v69);
      v70 = sub_1AF17C688(a1, "       .usage = ", 16);
      v71 = MEMORY[0x1B271C570](v70, LOBYTE(v116[2]));
      sub_1AF17C688(v71, ",\n", 2);
      v72 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v72;
      }

      while (v72);
    }

    v75 = sub_1AF17C688(a1, "       .cpuCacheMode = MTLCPUCacheMode(", 39);
    v76 = MEMORY[0x1B271C570](v75, (*(&v116[1] + 4) >> 50) & 1);
    sub_1AF17C688(v76, "),\n", 3);
    if (v25 < 1)
    {
      v81 = sub_1AF17C688(a1, "       .compressionType = MTLTextureCompressionType(", 52);
      v82 = MEMORY[0x1B271C560](v81, (*(&v116[1] + 4) << 12) >> 63);
      sub_1AF17C688(v82, "),\n", 3);
    }

    else
    {
      v77 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v77;
      }

      while (v77);
      v78 = sub_1AF17C688(a1, "       .compressionType = MTLTextureCompressionType(", 52);
      v79 = MEMORY[0x1B271C560](v78, (*(&v116[1] + 4) << 12) >> 63);
      sub_1AF17C688(v79, "),\n", 3);
      v80 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v80;
      }

      while (v80);
    }

    v83 = sub_1AF17C688(a1, "       .hazardTrackingMode = MTLHazardTrackingMode(", 51);
    v84 = MEMORY[0x1B271C570](v83, (*(&v116[1] + 4) >> 47) & 3);
    sub_1AF17C688(v84, "),\n", 3);
    if (v25 < 1)
    {
      sub_1AF17C688(a1, "       .swizzle = MTLTextureSwizzleChannelsDefault,\n", 52);
      sub_1AF17C688(a1, "    },\n", 7);
    }

    else
    {
      v85 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v85;
      }

      while (v85);
      sub_1AF17C688(a1, "       .swizzle = MTLTextureSwizzleChannelsDefault,\n", 52);
      v86 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v86;
      }

      while (v86);
      sub_1AF17C688(a1, "    },\n", 7);
      v87 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v87;
      }

      while (v87);
    }

    sub_1AF17C688(a1, "    ^(uint8_t _){ id<MTLResource> r = nil; return r; }\n", 55);
    if (a4)
    {
      if (v25 >= 1)
      {
        v88 = v25;
        do
        {
          sub_1AF17C688(a1, " ", 1);
          --v88;
        }

        while (v88);
      }

      v89 = sub_1AF17C688(a1, "}, ", 3);
      v90 = MEMORY[0x1B271C540](v89, a5);
      v91 = ");\n";
      v92 = 3;
    }

    else
    {
      if (v25 >= 1)
      {
        v93 = v25;
        do
        {
          sub_1AF17C688(a1, " ", 1);
          --v93;
        }

        while (v93);
      }

      v91 = "});\n";
      v90 = a1;
      v92 = 4;
    }

    sub_1AF17C688(v90, v91, v92);
  }

  result = CFX::RG::ExternalResourceDesc::kind(a3);
  if (!result)
  {
    v95 = CFX::RG::ExternalResourceDesc::bufferDesc(a3);
    v97 = *v95;
    v96 = v95[1];
    if (v25 < 1)
    {
      sub_1AF17C688(a1, "(CFX::RG::ExternalResourceDesc){\n", 33);
      sub_1AF17C688(a1, "    (RGBufferDescriptor){\n", 26);
      v108 = sub_1AF17C688(a1, "     .length = ", 15);
      v109 = MEMORY[0x1B271C570](v108, v97);
      sub_1AF17C688(v109, ",\n", 2);
      v110 = sub_1AF17C688(a1, "     .options = ", 16);
      v111 = MEMORY[0x1B271C570](v110, v96);
      sub_1AF17C688(v111, ",\n", 2);
      sub_1AF17C688(a1, "    },\n", 7);
    }

    else
    {
      v98 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v98;
      }

      while (v98);
      sub_1AF17C688(a1, "(CFX::RG::ExternalResourceDesc){\n", 33);
      v99 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v99;
      }

      while (v99);
      sub_1AF17C688(a1, "    (RGBufferDescriptor){\n", 26);
      v100 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v100;
      }

      while (v100);
      v101 = sub_1AF17C688(a1, "     .length = ", 15);
      v102 = MEMORY[0x1B271C570](v101, v97);
      sub_1AF17C688(v102, ",\n", 2);
      v103 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v103;
      }

      while (v103);
      v104 = sub_1AF17C688(a1, "     .options = ", 16);
      v105 = MEMORY[0x1B271C570](v104, v96);
      sub_1AF17C688(v105, ",\n", 2);
      v106 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v106;
      }

      while (v106);
      sub_1AF17C688(a1, "    },\n", 7);
      v107 = v25;
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v107;
      }

      while (v107);
    }

    sub_1AF17C688(a1, "    ^(uint8_t _){ id<MTLResource> r = nil; return r; }\n", 55);
    if (a4)
    {
      if (v25 >= 1)
      {
        do
        {
          sub_1AF17C688(a1, " ", 1);
          --v25;
        }

        while (v25);
      }

      v112 = sub_1AF17C688(a1, "}, ", 3);
      v113 = MEMORY[0x1B271C540](v112, a5);
      v114 = ");\n";
      v115 = 3;
    }

    else
    {
      if (v25 >= 1)
      {
        do
        {
          sub_1AF17C688(a1, " ", 1);
          --v25;
        }

        while (v25);
      }

      v114 = "});\n";
      v113 = a1;
      v115 = 4;
    }

    return sub_1AF17C688(v113, v114, v115);
  }

  return result;
}

void *sub_1AF3AF6B4(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v10 = 8;
  do
  {
    sub_1AF17C688(a1, " ", 1);
    --v10;
  }

  while (v10);
  v11 = sub_1AF17C688(a1, "auto ", 5);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_1AF17C688(v11, v13, v14);
  v16 = sub_1AF17C688(v15, " = builder->", 12);
  if (a4)
  {
    v17 = "createManagedResource(";
  }

  else
  {
    v17 = "createResource(";
  }

  if (a4)
  {
    v18 = 23;
  }

  else
  {
    v18 = 16;
  }

  v19 = sub_1AF17C688(v16, v17, v18);
  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  v23 = sub_1AF17C688(v19, v21, v22);
  sub_1AF17C688(v23, ",\n", 3);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  v25 = v24 + 41;
  if (v24 + 41 < 1)
  {
    sub_1AF17C688(a1, "   (RGBufferDescriptor){\n", 25);
  }

  else
  {
    v26 = v24 + 41;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v26;
    }

    while (v26);
    sub_1AF17C688(a1, "   (RGBufferDescriptor){\n", 25);
    v27 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v27;
    }

    while (v27);
  }

  v28 = sub_1AF17C688(a1, "    .length = ", 14);
  v29 = MEMORY[0x1B271C570](v28, *a3);
  sub_1AF17C688(v29, ",\n", 2);
  if (v25 >= 1)
  {
    v30 = v25;
    do
    {
      sub_1AF17C688(a1, " ", 1);
      --v30;
    }

    while (v30);
  }

  v31 = sub_1AF17C688(a1, "    .options = ", 15);
  v32 = MEMORY[0x1B271C570](v31, a3[1]);
  sub_1AF17C688(v32, ",\n", 2);
  if (a4)
  {
    if (v25 >= 1)
    {
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v25;
      }

      while (v25);
    }

    v33 = sub_1AF17C688(a1, "}, ", 3);
    v34 = MEMORY[0x1B271C540](v33, a5);
    v35 = ");\n";
    v36 = 3;
  }

  else
  {
    if (v25 >= 1)
    {
      do
      {
        sub_1AF17C688(a1, " ", 1);
        --v25;
      }

      while (v25);
    }

    v35 = "});\n";
    v34 = a1;
    v36 = 4;
  }

  return sub_1AF17C688(v34, v35, v36);
}

uint64_t sub_1AF3AF968(void *a1, uint64_t a2, CFX::RG::Resource *this, uint64_t **a4)
{
  if (CFX::RG::Resource::isExternal(this))
  {
    v8 = CFX::RG::Resource::externalResourceDesc(this);
    v9 = CFX::RG::Resource::frameCount(this);

    return sub_1AF3AEA3C(a1, a2, v8, 1, v9);
  }

  else if (CFX::RG::Resource::isTexture(this))
  {
    v11 = CFX::RG::RenderGraphContext::tryResolvedTextureDescriptor(a4, this);
    v12 = CFX::RG::Resource::frameCount(this);

    return sub_1AF3AE1C0(a1, a2, v11, 1, v12);
  }

  else
  {
    result = CFX::RG::Resource::isBuffer(this);
    if (result)
    {
      v13 = CFX::RG::Resource::bufferDesc(this);
      v14 = CFX::RG::Resource::frameCount(this);

      return sub_1AF3AF6B4(a1, a2, v13, 1, v14);
    }
  }

  return result;
}

void sub_1AF3AFA9C(char *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = a1[23];
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    v5 = *(a1 + 1);
  }

  if (v5)
  {
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v7 = *v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = __maskrune(*v4, 0x4000uLL);
      }

      else
      {
        v8 = *(v6 + 4 * v7 + 60) & 0x4000;
      }

      if (v8)
      {
        v9 = 95;
      }

      else
      {
        v9 = v7;
      }

      std::string::push_back(a2, v9);
      ++v4;
      --v5;
    }

    while (v5);
  }
}

void sub_1AF3AFB3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1AF3AFB58(void *a1, unint64_t *a2, const std::string *a3)
{
  v4 = sub_1AF3AFBAC(a1, a2);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    std::string::operator=(v4 + 1, a3);
  }

  return v5;
}

void *sub_1AF3AFBAC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    sub_1AF3AFDD8();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1AF3AFDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1AF3AFEA4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF3AFE88(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1AF3AFEA4(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1AF3AFEA4(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1AF3AFF08(uint64_t a1)
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
        sub_1AF3A98C0(a1, *v8, v7);
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

uint64_t sub_1AF3AFFB4(uint64_t a1, uint64_t a2, _OWORD *a3)
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
          *(v25 + 16 * v14) = *(v25 + 16 * v20);
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

      *(*(a1 + 16) + 16 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v27 = *(a1 + 24);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    sub_1AF3B01D0(a1);
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
  *(*(a1 + 16) + 16 * v10) = *a3;
  return result;
}

void sub_1AF3B01D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF3A2C74(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF3AFFB4(a1, *v3, v2);
      }

      ++v3;
      v2 += 16;
      --v6;
    }

    while (v6);
  }
}

double sub_1AF3B0244(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  result = 0.0;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  return result;
}

void sub_1AF3B0278(uint64_t a1, uint64_t a2, CFX::RG::Resource *this, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v8 = *(a1 + 40);
  if (CFX::RG::Resource::isTexture(this))
  {
    v9 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(*(a1 + 48), this);
    v26 = *(v9 + 16);
    v25 = *v9;
    v10 = *(v8 + 40);
    *buf = v25;
    *&buf[16] = v26;
    v12 = (*(*v10 + 8))(v10, a2, buf);
    if (v12)
    {
      __p[0] = 0;
      __p[1] = 0;
      v24 = 0;
      *buf = v25;
      *&buf[16] = v26;
      if (sub_1AF3A929C(buf, v12, __p, v11))
      {
        v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (this ^ 1)) ^ ((0x9DDFEA08EB382D69 * (this ^ 1)) >> 47) ^ 1);
        v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
        v15 = *(*(a1 + 32) + 8);
        *buf = a2;
        *&buf[8] = this;
        *&buf[16] = v25;
        v29 = v26;
        v30 = v12;
        sub_1AF3B04EC(v15 + 48, v14, buf);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          CFX::RG::ResourceIdentifier::pathName(&v27, v21);
          v16 = v22;
          v17 = v21[0];
          v18 = *(a4 + 24);
          v19 = CFX::RG::Resource::name(this);
          v20 = v21;
          *buf = 136315650;
          if (v16 < 0)
          {
            v20 = v17;
          }

          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = v18;
          *&buf[22] = 2080;
          *&buf[24] = v19;
          _os_log_error_impl(&dword_1AF0CE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Resource attachment %s for pass %s resource name %s\n", buf, 0x20u);
          if (v22 < 0)
          {
            operator delete(v21[0]);
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1AFDFB820(__p);
        }
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1AF3B04A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1AF3B04EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v26 = (v25 + 48 * v14);
          v27 = (v25 + 48 * v20);
          v28 = *v27;
          v29 = v27[2];
          v26[1] = v27[1];
          v26[2] = v29;
          *v26 = v28;
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

      v33 = *(a1 + 16) + 48 * v20;
      result = *a3;
      v34 = *(a3 + 32);
      *(v33 + 16) = *(a3 + 16);
      *(v33 + 32) = v34;
      *v33 = result;
      *(*(a1 + 8) + 8 * v20) = a2;
      v35 = *(a1 + 24);
      *(v35 + 2 * v20) |= 1u;
      *(v35 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    sub_1AF3B07F0(a1);
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

  v30 = *(a1 + 16) + 48 * v10;
  result = *a3;
  v32 = *(a3 + 32);
  *(v30 + 16) = *(a3 + 16);
  *(v30 + 32) = v32;
  *v30 = result;
  return result;
}

void sub_1AF3B0744(uint64_t a1, int a2)
{
  *(a1 + 32) = 0;
  *(a1 + 36) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 24) = CStackAllocatorAllocateAligned(*a1, v4, 4, 2);
  *(a1 + 8) = CStackAllocatorAllocateAligned(*a1, 8 * v3, 8, 2);
  *(a1 + 16) = CStackAllocatorAllocateAligned(*a1, 48 * v3, 8, 2);
  memset(*(a1 + 8), 255, 8 * v3);
  v5 = *(a1 + 24);

  bzero(v5, v4);
}

void sub_1AF3B07F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF3B0744(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF3B04EC(a1, *v3, v2);
      }

      ++v3;
      v2 += 48;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1AF3B0864(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  return (*(*v2 + 8))(v2, v1, &v4);
}

uint64_t sub_1AF3B08C4(uint64_t a1)
{
  sub_1AF3B0900(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1AF3B0900(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_1AF3B094C(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_1AF3B0A00(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_1AF3B0C50(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if (v4 + 1 > *(a1 + 12))
  {
    sub_1AF3B0CC8(a1, 1, 0);
    v4 = *(a1 + 8);
  }

  v5 = (*(a1 + 16) + 24 * v4);
  *v5 = *a2;
  v5[1] = 0;
  v5[2] = v5 + 3;
  result = sub_1AF3A25DC(v5, a2);
  ++*(a1 + 8);
  return result;
}

void *sub_1AF3B0CC8(uint64_t a1, int a2, int a3)
{
  v4 = 1.5;
  if (a3)
  {
    v4 = 1.0;
  }

  v5 = (v4 * (*(a1 + 12) + a2));
  result = CStackAllocatorAllocateAligned(*a1, 24 * v5, 8, 2);
  v7 = result;
  if (*(a1 + 8))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a1 + 16);
      *result = *(v10 + v8);
      result[1] = 0;
      v11 = result + 3;
      result[2] = result + 3;
      sub_1AF3A25DC(result, (v10 + v8));
      ++v9;
      v8 += 24;
      result = v11;
    }

    while (v9 < *(a1 + 8));
  }

  *(a1 + 16) = v7;
  *(a1 + 12) = v5;
  return result;
}

char *sub_1AF3B0D88(char *result, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 < 2)
  {
    return result;
  }

  v6 = result;
  if (a3 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *result;
    v9 = *(v7 + 40);
    v10 = *(*result + 40);
    v11 = v9 >= v10;
    if (v9 == v10)
    {
      v11 = *(v7 + 48) >= *(v8 + 48);
    }

    if (!v11)
    {
      *result = v7;
      *(a2 - 1) = v8;
    }

    return result;
  }

  if (a3 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v13 = result + 8;
    if (result + 8 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = result;
    while (1)
    {
      v16 = v15;
      v15 = v13;
      v18 = *v16;
      v17 = *(v16 + 1);
      v19 = *(v17 + 40);
      v20 = *(*v16 + 40);
      v21 = v19 >= v20;
      if (v19 == v20)
      {
        v21 = *(v17 + 48) >= *(v18 + 48);
      }

      if (v21)
      {
        goto LABEL_25;
      }

      *(v16 + 1) = v18;
      v22 = result;
      if (v16 == result)
      {
        goto LABEL_24;
      }

      v23 = v14;
      while (1)
      {
        v24 = *&result[v23 - 8];
        v25 = *(v24 + 40);
        if (v19 == v25)
        {
          if (*(v17 + 48) >= *(v24 + 48))
          {
            v22 = &result[v23];
            goto LABEL_24;
          }

          goto LABEL_21;
        }

        if (v19 >= v25)
        {
          break;
        }

LABEL_21:
        v16 -= 8;
        *&result[v23] = v24;
        v23 -= 8;
        if (!v23)
        {
          v22 = result;
          goto LABEL_24;
        }
      }

      v22 = v16;
LABEL_24:
      *v22 = v17;
LABEL_25:
      v13 = v15 + 8;
      v14 += 8;
      if (v15 + 8 == a2)
      {
        return result;
      }
    }
  }

  v27 = a4;
  v28 = a3 >> 1;
  v29 = &result[8 * (a3 >> 1)];
  v30 = a3 >> 1;
  if (a3 <= a5)
  {
    sub_1AF3B1000(result, v29, v30, a4);
    v31 = (v27 + 8 * v28);
    result = sub_1AF3B1000(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v31);
    v32 = v27 + 8 * a3;
    v33 = v31;
    while (v33 != v32)
    {
      v34 = *v33;
      v35 = *v27;
      v36 = *(*v33 + 40);
      v37 = *(*v27 + 40);
      v38 = v36 >= v37;
      if (v36 == v37)
      {
        v38 = *(v34 + 48) >= *(v35 + 48);
      }

      if (v38)
      {
        *v6 = v35;
        v27 += 8;
      }

      else
      {
        *v6 = v34;
        ++v33;
      }

      v6 += 8;
      if (v27 == v31)
      {
        while (v33 != v32)
        {
          v40 = *v33++;
          *v6 = v40;
          v6 += 8;
        }

        return result;
      }
    }

    while (v27 != v31)
    {
      v39 = *v27;
      v27 += 8;
      *v6 = v39;
      v6 += 8;
    }
  }

  else
  {
    sub_1AF3B0D88(result, v29, v30, a4, a5);
    sub_1AF3B0D88(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v27, a5);

    return sub_1AF3B1230(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v27, a5);
  }

  return result;
}

uint64_t sub_1AF3B1000(uint64_t result, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v6 = result;
  if (a3 == 1)
  {
LABEL_10:
    *v4 = *v6;
    return result;
  }

  if (a3 == 2)
  {
    v8 = *(a2 - 8);
    v9 = *(v8 + 40);
    v10 = *(*result + 40);
    v11 = v9 >= v10;
    if (v9 == v10)
    {
      v11 = *(v8 + 48) >= *(*result + 48);
    }

    if (v11)
    {
      v8 = *result;
      v6 = a2 - 8;
    }

    *a4 = v8;
    v4 = a4 + 1;
    goto LABEL_10;
  }

  if (a3 <= 8)
  {
    if (result == a2)
    {
      return result;
    }

    v12 = result + 8;
    *a4 = *result;
    if (result + 8 == a2)
    {
      return result;
    }

    v13 = 0;
    v14 = a4;
    v15 = a4;
    while (1)
    {
      v17 = *v15++;
      v16 = v17;
      v18 = *v12;
      v19 = *(*v12 + 40);
      v20 = *(v17 + 40);
      v21 = v19 >= v20;
      if (v19 == v20)
      {
        v21 = *(v18 + 48) >= *(v16 + 48);
      }

      if (v21)
      {
        *v15 = v18;
        goto LABEL_30;
      }

      v14[1] = v16;
      v22 = a4;
      if (v14 == a4)
      {
        goto LABEL_29;
      }

      v23 = v13;
      while (1)
      {
        v24 = *(a4 + v23 - 8);
        v25 = *(*v12 + 40);
        v26 = *(v24 + 40);
        if (v25 == v26)
        {
          if (*(*v12 + 48) >= *(v24 + 48))
          {
            v22 = v14;
            goto LABEL_29;
          }

          goto LABEL_25;
        }

        if (v25 >= v26)
        {
          break;
        }

LABEL_25:
        --v14;
        *(a4 + v23) = v24;
        v23 -= 8;
        if (!v23)
        {
          v22 = a4;
          goto LABEL_29;
        }
      }

      v22 = (a4 + v23);
LABEL_29:
      *v22 = *v12;
LABEL_30:
      v12 += 8;
      v13 += 8;
      v14 = v15;
      if (v12 == a2)
      {
        return result;
      }
    }
  }

  v27 = result + 8 * (a3 >> 1);
  sub_1AF3B0D88(result, v27, a3 >> 1, a4, a3 >> 1);
  result = sub_1AF3B0D88(v6 + 8 * (a3 >> 1), a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
  v28 = v6 + 8 * (a3 >> 1);
  while (v28 != a2)
  {
    v29 = *v28;
    v30 = *v6;
    v31 = *(*v28 + 40);
    v32 = *(*v6 + 40);
    v33 = v31 >= v32;
    if (v31 == v32)
    {
      v33 = *(v29 + 48) >= *(v30 + 48);
    }

    if (v33)
    {
      *v4 = v30;
      v6 += 8;
    }

    else
    {
      *v4 = v29;
      v28 += 8;
    }

    ++v4;
    if (v6 == v27)
    {
      while (v28 != a2)
      {
        v35 = *v28;
        v28 += 8;
        *v4++ = v35;
      }

      return result;
    }
  }

  while (v6 != v27)
  {
    v34 = *v6;
    v6 += 8;
    *v4++ = v34;
  }

  return result;
}

char *sub_1AF3B1230(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = a5;
    v12 = result;
    while (v9 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v13 = *a2;
      v14 = *(*a2 + 40);
      while (1)
      {
        v15 = *v12;
        v16 = *(*v12 + 40);
        v17 = v14 >= v16;
        if (v14 == v16)
        {
          v17 = *(v13 + 48) >= *(v15 + 48);
        }

        if (!v17)
        {
          break;
        }

        v12 += 8;
        if (!--a4)
        {
          return result;
        }
      }

      __src = a6;
      if (a4 >= v9)
      {
        if (a4 == 1)
        {
          *v12 = v13;
          *a2 = v15;
          return result;
        }

        v27 = a4 / 2;
        v22 = &v12[8 * (a4 / 2)];
        if (a3 == a2)
        {
          v19 = a2;
        }

        else
        {
          v28 = (a3 - a2) >> 3;
          v29 = *(*v22 + 40);
          v19 = a2;
          do
          {
            v30 = v28 >> 1;
            v31 = &v19[8 * (v28 >> 1)];
            v32 = *(*v31 + 40);
            v33 = v32 >= v29;
            if (v32 == v29)
            {
              v33 = *(*v31 + 48) >= *(*v22 + 48);
            }

            if (!v33)
            {
              v19 = v31 + 8;
              v30 = v28 + ~v30;
            }

            v28 = v30;
          }

          while (v30);
        }

        v18 = (v19 - a2) >> 3;
      }

      else
      {
        v18 = v9 / 2;
        v19 = &a2[8 * (v9 / 2)];
        if (v12 == a2)
        {
          v22 = v12;
        }

        else
        {
          v20 = (a2 - v12) >> 3;
          v21 = *(*v19 + 40);
          v22 = v12;
          do
          {
            v23 = v20 >> 1;
            v24 = &v22[8 * (v20 >> 1)];
            v25 = *(*v24 + 40);
            v26 = v21 >= v25;
            if (v21 == v25)
            {
              v26 = *(*v19 + 48) >= *(*v24 + 48);
            }

            if (v26)
            {
              v22 = v24 + 8;
              v23 = v20 + ~v23;
            }

            v20 = v23;
          }

          while (v23);
        }

        v27 = (v22 - v12) >> 3;
      }

      a4 -= v27;
      v9 -= v18;
      v34 = sub_1AF3B15E0(v22, a2, v19);
      v35 = v34;
      if (v27 + v18 >= a4 + v9)
      {
        result = sub_1AF3B1230(v34, v19, a3, a4, v9, __src, a7);
        v19 = v22;
        a6 = __src;
        v9 = v18;
        a4 = v27;
        a3 = v35;
      }

      else
      {
        v36 = v22;
        a6 = __src;
        result = sub_1AF3B1230(v12, v36, v34, v27, v18, __src, a7);
        v12 = v35;
      }

      a2 = v19;
      if (!v9)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (v12 != a2)
      {
        v45 = -a6;
        v46 = a6;
        v47 = v12;
        do
        {
          v48 = *v47;
          v47 += 8;
          *v46++ = v48;
          v45 -= 8;
        }

        while (v47 != a2);
        while (a2 != a3)
        {
          v49 = *a2;
          v50 = *a6;
          v51 = *(*a2 + 40);
          v52 = *(*a6 + 40);
          v53 = v51 >= v52;
          if (v51 == v52)
          {
            v53 = *(v49 + 48) >= *(v50 + 48);
          }

          if (v53)
          {
            *v12 = v50;
            a6 += 8;
          }

          else
          {
            *v12 = v49;
            a2 += 8;
          }

          v12 += 8;
          if (v46 == a6)
          {
            return result;
          }
        }

        return memmove(v12, a6, -(a6 + v45));
      }
    }

    else if (a2 != a3)
    {
      v37 = 0;
      do
      {
        *(a6 + v37) = *&a2[v37];
        v37 += 8;
      }

      while (&a2[v37] != a3);
      v38 = (a6 + v37);
      while (a2 != v12)
      {
        v39 = a2 - 8;
        v40 = *(a2 - 1);
        v41 = *(v38 - 1);
        v42 = *(v41 + 40);
        v43 = *(v40 + 40);
        v44 = v42 >= v43;
        if (v42 == v43)
        {
          v44 = *(v41 + 48) >= *(v40 + 48);
        }

        if (v44)
        {
          v40 = *(v38 - 1);
          v39 = a2;
          v38 -= 8;
        }

        *(a3 - 1) = v40;
        a3 -= 8;
        a2 = v39;
        if (v38 == a6)
        {
          return result;
        }
      }

      if (v38 != a6)
      {
        v54 = -8;
        do
        {
          v55 = *(v38 - 1);
          v38 -= 8;
          *&a3[v54] = v55;
          v54 -= 8;
        }

        while (v38 != a6);
      }
    }
  }

  return result;
}

char *sub_1AF3B15E0(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v6 = *__src;
      v7 = a3 - a2;
      memmove(__src, __src + 8, a3 - a2);
      v4 = &__src[v7];
      *v4 = v6;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return sub_1AF3B16A8(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_1AF3B16A8(char *a1, char *a2, char *a3)
{
  v3 = a2 - a1;
  v4 = (a2 - a1) >> 3;
  v5 = a3 - a2;
  if (v4 == (a3 - a2) >> 3)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = a2 + 8;
      v7 = a1 + 8;
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *(v6 - 1);
        *(v6 - 1) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 += 8;
        v9 = v6 == a3;
        v6 += 8;
      }

      while (!v9);
    }
  }

  else
  {
    v10 = v5 >> 3;
    v11 = (a2 - a1) >> 3;
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = v12 % v10;
    }

    while (v10);
    v13 = &a1[8 * v11];
    do
    {
      v15 = *(v13 - 1);
      v13 -= 8;
      v14 = v15;
      v16 = &v13[v3];
      v17 = v13;
      do
      {
        v18 = v17;
        v17 = v16;
        *v18 = *v16;
        v19 = __OFSUB__(v4, (a3 - v16) >> 3);
        v21 = v4 - ((a3 - v16) >> 3);
        v20 = (v21 < 0) ^ v19;
        v16 = &a1[8 * v21];
        if (v20)
        {
          v16 = v17 + v3;
        }
      }

      while (v16 != v13);
      *v17 = v14;
    }

    while (v13 != a1);
    return &a1[v5];
  }

  return a2;
}

uint64_t RGMTLComputeCommandEncoderDispatchOnGrid1D(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_maxTotalThreadsPerThreadgroup(a2, a2, a3, a4);
  v11 = objc_msgSend_device(a2, v8, v9, v10);
  if (objc_msgSend_supportsFamily_(v11, v12, 3003, v13))
  {
    v18 = a3;
    v19 = vdupq_n_s64(1uLL);
    v16 = v7;
    v17 = v19;
    return objc_msgSend_dispatchThreads_threadsPerThreadgroup_(a1, v14, &v18, &v16);
  }

  else
  {
    v18 = (a3 + v7 - 1) / v7;
    v19 = vdupq_n_s64(1uLL);
    v16 = v7;
    v17 = v19;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a1, v14, &v18, &v16);
  }
}

uint64_t RGMTLComputeCommandEncoderDispatchOnGrid2D(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = objc_msgSend_threadExecutionWidth(a2, a2, a3, a4);
  v15 = objc_msgSend_maxTotalThreadsPerThreadgroup(a2, v9, v10, v11);
  if (v4 && (v16 = objc_msgSend_device(a2, v12, v13, v14), objc_msgSend_supportsFamily_(v16, v17, 3003, v18)))
  {
    v28 = *a3;
    v29 = *(a3 + 16);
    v25 = v8;
    v26 = v15 / v8;
    v27 = 1;
    return objc_msgSend_dispatchThreads_threadsPerThreadgroup_(a1, v12, &v28, &v25);
  }

  else
  {
    v20 = *(a3 + 8);
    if (v8 >= *a3)
    {
      v21 = *a3;
    }

    else
    {
      v21 = v8;
    }

    if (v8 >= v20)
    {
      v22 = *(a3 + 8);
    }

    else
    {
      v22 = v8;
    }

    do
    {
      v23 = v22;
      v24 = v22 * v21;
      v22 >>= 1;
    }

    while (v24 > v15);
    *&v28 = (*a3 + v21 - 1) / v21;
    *(&v28 + 1) = (v20 + v23 - 1) / v23;
    v29 = 1;
    v25 = v21;
    v26 = v23;
    v27 = 1;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a1, v12, &v28, &v25);
  }
}

uint64_t RGMTLComputeCommandEncoderDispatchOnGrid3D(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_threadExecutionWidth(a2, a2, a3, a4);
  v11 = objc_msgSend_maxTotalThreadsPerThreadgroup(a2, v8, v9, v10);
  v15 = objc_msgSend_device(a2, v12, v13, v14);
  if (objc_msgSend_supportsFamily_(v15, v16, 3003, v17))
  {
    v28 = *a3;
    v29 = *(a3 + 16);
    v25 = v7;
    v26 = v11 / v7;
    v27 = 1;
    return objc_msgSend_dispatchThreads_threadsPerThreadgroup_(a1, v18, &v28, &v25);
  }

  else
  {
    v20 = *(a3 + 8);
    if (v7 >= *a3)
    {
      v21 = *a3;
    }

    else
    {
      v21 = v7;
    }

    if (v7 >= v20)
    {
      v22 = *(a3 + 8);
    }

    else
    {
      v22 = v7;
    }

    v23 = *(a3 + 16);
    if (v7 >= v23)
    {
      v24 = *(a3 + 16);
    }

    else
    {
      v24 = v7;
    }

    while (v22 * v24 * v21 > v11)
    {
      if (v21 <= v22 || v21 <= v24)
      {
        if (v22 > v24)
        {
          v22 >>= 1;
        }

        else
        {
          v24 >>= 1;
        }
      }

      else
      {
        v21 >>= 1;
      }
    }

    *&v28 = (*a3 + v21 - 1) / v21;
    *(&v28 + 1) = (v20 + v22 - 1) / v22;
    v29 = (v23 + v24 - 1) / v24;
    v25 = v21;
    v26 = v22;
    v27 = v24;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a1, v18, &v28, &v25);
  }
}

uint64_t sub_1AF3B24C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = vfx_counters_add_counter(a1, "Draw Call", 0, 1, 0);
  *(a2 + 12) = vfx_counters_add_counter(a1, "Indirect Draw Call", 0, 1, 0);
  result = vfx_counters_add_counter(a1, "Primitive Count", 0, 1, 0);
  *(a2 + 16) = result;
  return result;
}

void sub_1AF3B3F94(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = a1 + 4144;
  v33 = a1 + 4144;
  v5 = a1 + 1344;
  v6 = 1;
  do
  {
    v34 = v6;
    v7 = *(v4 + 8 * v3);
    if (v7)
    {
      v8 = 0;
      v10 = 0xFFFFFFFFLL;
      do
      {
        if (v7)
        {
          if (v10 >= v8)
          {
            v11 = v8;
          }

          else
          {
            v11 = v10;
          }

          if ((v7 & 2) == 0)
          {
            v12 = (v8 - v11 + 1);
            v9 = v3 << 6;
            v13 = (v3 << 6) + v11;
            if (v12 < 2)
            {
              objc_msgSend_setVertexTexture_atIndex_(a2, a2, *(v5 + 8 * v13), v9 + v11);

              *(v5 + 8 * v13) = 0;
            }

            else
            {
              objc_msgSend_setVertexTextures_withRange_(a2, a2, v5 + 8 * v13, v9 + v11, (v8 - v11 + 1));
              v14 = 0;
              v15 = v10;
              if (v8 < v10)
              {
                v15 = v8;
              }

              v16 = v5 + (v3 << 9) + 8 * v15;
              do
              {

                *(v16 + 8 * v14++) = 0;
              }

              while (v14 < v12);
            }

            v11 = 0xFFFFFFFFLL;
          }
        }

        else
        {
          v11 = v10;
        }

        ++v8;
        v10 = v11;
        v17 = v7 >= 2;
        v7 >>= 1;
      }

      while (v17);
    }

    v6 = 0;
    v4 = v33;
    *(v33 + 8 * v3) = 0;
    v3 = 1;
  }

  while ((v34 & 1) != 0);
  v18 = 0;
  v19 = a1 + 4160;
  v20 = a1 + 2992;
  v21 = 1;
  do
  {
    v35 = v21;
    v22 = *(v19 + 8 * v18);
    if (v22)
    {
      v23 = 0;
      v25 = 0xFFFFFFFFLL;
      do
      {
        if (v22)
        {
          if (v25 >= v23)
          {
            v26 = v23;
          }

          else
          {
            v26 = v25;
          }

          if ((v22 & 2) == 0)
          {
            v27 = (v23 - v26 + 1);
            v24 = v18 << 6;
            v28 = (v18 << 6) + v26;
            if (v27 < 2)
            {
              objc_msgSend_setFragmentTexture_atIndex_(a2, a2, *(v20 + 8 * v28), v24 + v26);

              *(v20 + 8 * v28) = 0;
            }

            else
            {
              objc_msgSend_setFragmentTextures_withRange_(a2, a2, v20 + 8 * v28, v24 + v26, (v23 - v26 + 1));
              v29 = 0;
              v30 = v25;
              if (v23 < v25)
              {
                v30 = v23;
              }

              v31 = v20 + (v18 << 9) + 8 * v30;
              do
              {

                *(v31 + 8 * v29++) = 0;
              }

              while (v29 < v27);
            }

            v26 = 0xFFFFFFFFLL;
          }
        }

        else
        {
          v26 = v25;
        }

        ++v23;
        v25 = v26;
        v17 = v22 >= 2;
        v22 >>= 1;
      }

      while (v17);
    }

    v21 = 0;
    v19 = a1 + 4160;
    *(a1 + 4160 + 8 * v18) = 0;
    v18 = 1;
  }

  while ((v35 & 1) != 0);
  *(a1 + 4176) &= ~0x100u;
}

void sub_1AF3B4330(uint64_t a1)
{
  if ((*(a1 + 4176) & 0x100) != 0)
  {
    v2 = 0;
    v3 = a1 + 1344;
    do
    {
      v4 = *(v3 + v2);
      if (v4)
      {
      }

      v2 += 8;
    }

    while (v2 != 1024);
    v5 = 0;
    v6 = a1 + 2992;
    do
    {
      v7 = *(v6 + v5);
      if (v7)
      {
      }

      v5 += 8;
    }

    while (v5 != 1024);
  }
}

void sub_1AF3B45B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_asset(a2, a2, a3, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_asset(a2, v6, v7, v8);
    if (objc_msgSend_isHeader(v9, v10, v11, v12))
    {
      v26 = objc_msgSend_copy(a2, v13, v14, v15);
      v19 = objc_msgSend_assetRegistry(*(a1 + 32), v16, v17, v18);
      v23 = objc_msgSend_rootNode(v19, v20, v21, v22);
      objc_msgSend_addChildNode_(v23, v24, v26, v25);
    }
  }
}

uint64_t sub_1AF3B466C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = objc_msgSend_model(a2, a2, a3, a4);
  obj = objc_msgSend_materials(v5, v6, v7, v8);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v39, v44, 16);
  v33 = result;
  if (result)
  {
    v32 = *v40;
    do
    {
      v14 = 0;
      do
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v14;
        v15 = *(*(&v39 + 1) + 8 * v14);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v16 = objc_msgSend_properties(v15, v11, v12, v13);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v35, v43, 16);
        if (v18)
        {
          v19 = v18;
          v20 = *v36;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v36 != v20)
              {
                objc_enumerationMutation(v16);
              }

              v22 = *(*(&v35 + 1) + 8 * i);
              v23 = objc_msgSend_contents(v22, v11, v12, v13);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
              {
                v24 = *(a1 + 32);
                v25 = objc_msgSend_filename(v23, v11, v12, v13);
                v28 = objc_msgSend_absoluteURLForAssetPath_(v24, v26, v25, v27);
                objc_msgSend_setContents_(v22, v29, v28, v30);
              }
            }

            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v11, &v35, v43, 16);
          }

          while (v19);
        }

        v14 = v34 + 1;
      }

      while (v34 + 1 != v33);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v39, v44, 16);
      v33 = result;
    }

    while (result);
  }

  return result;
}

void sub_1AF3B4C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF3B4C58(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  result = objc_msgSend_camera(a2, a2, a3, a4);
  if (result == *(a1 + 32))
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    *a3 = 1;
  }

  return result;
}

void sub_1AF3B50F0(void *a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained(&qword_1EB644860);

  if (WeakRetained == v1)
  {

    objc_storeWeak(&qword_1EB644860, 0);
  }
}

void sub_1AF3B52DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AF3B5310(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentRunLoop(MEMORY[0x1E695DFD0], a2, a3, a4);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_msgSend_vfx_backingLayer(WeakRetained, v7, v8, v9);
  v11 = v10;
  if (WeakRetained && v10)
  {
    v12 = [VFXDisplayLink alloc];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1AF3B54F8;
    v29[3] = &unk_1E7A7FCE8;
    objc_copyWeak(&v30, (a1 + 40));
    v14 = objc_msgSend_initWithLayer_runLoop_block_(v12, v13, v11, v5, v29);
    (*(*(a1 + 32) + 16))();

    objc_destroyWeak(&v30);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  pthread_setname_np("com.apple.VFXView-displaylink");
  pthread_set_fixedpriority_self();
  v15 = objc_loadWeakRetained((a1 + 40));
  if (v15)
  {
    v16 = v15;
    v17 = *MEMORY[0x1E695D918];
    do
    {
      v18 = objc_loadWeakRetained((a1 + 40));
      v22 = objc_msgSend__legacyView(v18, v19, v20, v21);

      if (v22)
      {
        break;
      }

      v23 = objc_autoreleasePoolPush();
      v27 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v24, v25, v26, 1.0);
      objc_msgSend_runMode_beforeDate_(v5, v28, v17, v27);

      objc_autoreleasePoolPop(v23);
      v16 = objc_loadWeakRetained((a1 + 40));
    }

    while (v16);
  }
}

void sub_1AF3B54F8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_displayLink_didUpdate_(WeakRetained, v7, v9, v5);
  }
}

void sub_1AF3B5570(void *a1)
{
  v1 = a1;
  if (qword_1ED737BF0 != -1)
  {
    dispatch_once(&qword_1ED737BF0, &unk_1F24ED358);
  }

  pthread_setspecific(qword_1ED737BF8, v1);
  v2 = objc_autoreleasePoolPush();
  v1[2](v1);
  objc_autoreleasePoolPop(v2);
  pthread_exit(0);
}

void sub_1AF3B5FB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32) == 1)
  {
    dispatch_resume(*(v1 + 48));
  }
}

void sub_1AF3B6350(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    dispatch_suspend(*(v1 + 48));
    *(*(a1 + 32) + 32) = 1;
  }
}

void sub_1AF3B6420(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 48);
    v4 = dispatch_time(0, 100000000);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(*(a1 + 32) + 48));
    *(*(a1 + 32) + 32) = 0;
  }
}

unint64_t sub_1AF3B64F4(void *a1)
{
  v2 = sub_1AF1F2C50(0);
  objc_msgSend_setPixelFormat_(a1, v3, v2, v4);
  objc_msgSend_setFramebufferOnly_(a1, v5, 1, v6);
  result = objc_msgSend_maximumDrawableCount(a1, v7, v8, v9);
  if (result >= 3)
  {

    return MEMORY[0x1EEE66B58](a1, sel_setFenceEnabled_, 1, v11);
  }

  return result;
}

void sub_1AF3B78F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1AF3B7914(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v7 = objc_msgSend__renderingQueue(Weak, v4, v5, v6);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF3B79D4;
    v8[3] = &unk_1E7A7FD48;
    objc_copyWeak(&v9, (a1 + 40));
    v8[4] = *(a1 + 32);
    dispatch_sync(v7, v8);
    objc_destroyWeak(&v9);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1AF3B79D4(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v4 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](Weak, sel__drawWithUpdate_, v4, v3);
}

uint64_t sub_1AF3B8C8C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF3B8D14;
  v10[3] = &unk_1E7A7E198;
  v11 = *(a1 + 40);
  objc_msgSend_performAsCurrentTraitCollection_(v5, a2, v10, a4);
  return objc_msgSend__setNeedsDisplay(*(a1 + 40), v6, v7, v8);
}

uint64_t sub_1AF3B8E08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF3B8EA8;
  v10[3] = &unk_1E7A7A770;
  v10[4] = *(a1 + 40);
  objc_msgSend_performAsCurrentTraitCollection_(v5, a2, v10, a4);
  *(*(a1 + 40) + 424) |= 0x40u;
  return objc_msgSend__setNeedsDisplay(*(a1 + 40), v6, v7, v8);
}

void sub_1AF3B91D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AF3B9204(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF3B9284;
  block[3] = &unk_1E7A7FD70;
  v2 = *(a1 + 32);
  block[4] = a2;
  block[5] = v2;
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1AF3B9284(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {
    *&a5 = *(v6 + 472);
    objc_msgSend_setPreferredFrameRate_(*(a1 + 32), a2, a3, a4, a5);
    objc_msgSend_setLowLatency_(*(a1 + 32), v8, *(a1 + 48), v9);
    objc_msgSend_setDisplayLink_(*(*(*(a1 + 40) + 8) + 40), v10, *(a1 + 32), v11);
    objc_msgSend__setNeedsDisplay(*(*(*(a1 + 40) + 8) + 40), v12, v13, v14);
    *(*(*(*(a1 + 40) + 8) + 40) + 456) = 0;
    v15 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v15 = 0;
  }
}

uint64_t VFXVector3EqualToVector3(float32x4_t a1, float32x4_t a2)
{
  v2 = vmovn_s32(vceqq_f32(a1, a2));
  if (v2.i16[0] & v2.i16[1])
  {
    v3 = v2.i8[4];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t VFXVector4EqualToVector4(float32x4_t a1, float32x4_t a2)
{
  v2 = 0;
  v3 = vceqq_f32(a1, a2);
  v4 = vmovn_s32(v3);
  if (v4.i8[4] & 1) != 0 && (vand_s8(*v3.i8, vdup_n_s32(v4.u16[1])).u8[0])
  {
    v2 = v4.i8[6];
  }

  return v2 & 1;
}

float64x2_t sub_1AF3BAED8(float32x4_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = vcvt_hight_f64_f32(*a1);
  *a2 = vcvtq_f64_f32(*a1->f32);
  a2[1] = v5;
  a2[2] = vcvtq_f64_f32(*v2.f32);
  a2[3] = vcvt_hight_f64_f32(v2);
  a2[4] = vcvtq_f64_f32(*v3.f32);
  a2[5] = vcvt_hight_f64_f32(v3);
  result = vcvtq_f64_f32(*v4.f32);
  a2[6] = result;
  a2[7] = vcvt_hight_f64_f32(v4);
  return result;
}

float64x2_t sub_1AF3BAF14(float32x4_t *a1, float64x2_t *a2)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(a2[2]), a2[3]);
  v3 = vcvt_hight_f32_f64(vcvt_f32_f64(a2[4]), a2[5]);
  result = a2[7];
  v5 = vcvt_hight_f32_f64(vcvt_f32_f64(a2[6]), result);
  *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), a2[1]);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v5;
  return result;
}

__n64 VFXMatrix4MakeRotation(float a1, float32x4_t a2, float32_t a3, float32_t a4)
{
  a2.f32[1] = a3;
  a2.f32[2] = a4;
  v4 = vmulq_f32(a2, a2);
  v4.f32[0] = v4.f32[2] + vaddv_f32(*v4.f32);
  v5 = vdupq_lane_s32(*v4.f32, 0);
  v5.i32[3] = 0;
  v6 = vrsqrteq_f32(v5);
  v7 = vmulq_f32(v6, vrsqrtsq_f32(v5, vmulq_f32(v6, v6)));
  v8 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v4.f32[0] != 0.0)), 0x1FuLL));
  v8.i32[3] = 0;
  v18 = vbslq_s8(vcltzq_s32(v8), vmulq_f32(a2, vmulq_f32(v7, vrsqrtsq_f32(v5, vmulq_f32(v7, v7)))), a2);
  v9 = __sincosf_stret(a1);
  v10 = v18;
  v11 = vmulq_f32(v10, v10);
  __asm { FMOV            V2.4S, #1.0 }

  result.n64_u32[0] = vmlaq_n_f32(v11, vsubq_f32(_Q2, v11), v9.__cosval).u32[0];
  result.n64_f32[1] = ((1.0 - v9.__cosval) * vmuls_lane_f32(v10.f32[0], *v10.f32, 1)) - COERCE_FLOAT(vmulq_n_f32(v18, -*&v9).i32[2]);
  return result;
}

BOOL VFXMatrix4EqualToMatrix4(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  __s1[0] = a1;
  __s1[1] = a2;
  __s1[2] = a3;
  __s1[3] = a4;
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v9[3] = a8;
  return memcmp(__s1, v9, 0x40uLL) == 0;
}

BOOL VFXMatrix4IsIdentity(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  __s1[0] = a1;
  __s1[1] = a2;
  __s1[2] = a3;
  __s1[3] = a4;
  v5[0] = xmmword_1AFE20150;
  v5[1] = xmmword_1AFE20160;
  v5[2] = xmmword_1AFE20180;
  v5[3] = xmmword_1AFE201A0;
  return memcmp(__s1, v5, 0x40uLL) == 0;
}

double VFXMatrix4Rotate(__n128 a1, float32x4_t a2, __n128 a3, __n128 a4, float a5, float32_t a6, float32_t a7, float32_t a8)
{
  v15 = a2;
  a2.f32[0] = a6;
  *v8.f32 = VFXMatrix4MakeRotation(a5, a2, a7, a8);
  v12 = 0;
  v18[0] = a1;
  v18[1] = v15;
  v18[2] = a3;
  v18[3] = a4;
  memset(v19, 0, sizeof(v19));
  do
  {
    v19[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(v18[v12])), v9, *&v18[v12], 1), v10, v18[v12], 2), v11, v18[v12], 3);
    ++v12;
  }

  while (v12 != 4);
  return *v19;
}

__n128 initializeBufferWithCopyOfBuffer for RenderGraph.Features(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 initializeWithCopy for VFXMotionDataComponent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for VFXMotionDataComponent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VFXMotionDataComponent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 144) = v3;
  return result;
}

__n128 initializeWithTake for Node.Port(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 initializeWithCopy for ProjectionMatrix(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AF3BB4D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 0x2000))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF3BB4F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8184) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 536) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 8168) = 0u;
    *(result + 8152) = 0u;
    *(result + 8136) = 0u;
    *(result + 8120) = 0u;
    *(result + 8104) = 0u;
    *(result + 8088) = 0u;
    *(result + 8072) = 0u;
    *(result + 8056) = 0u;
    *(result + 8040) = 0u;
    *(result + 8024) = 0u;
    *(result + 8008) = 0u;
    *(result + 7992) = 0u;
    *(result + 7976) = 0u;
    *(result + 7960) = 0u;
    *(result + 7944) = 0u;
    *(result + 7928) = 0u;
    *(result + 7912) = 0u;
    *(result + 7896) = 0u;
    *(result + 7880) = 0u;
    *(result + 7864) = 0u;
    *(result + 7848) = 0u;
    *(result + 7832) = 0u;
    *(result + 7816) = 0u;
    *(result + 7800) = 0u;
    *(result + 7784) = 0u;
    *(result + 7768) = 0u;
    *(result + 7752) = 0u;
    *(result + 7736) = 0u;
    *(result + 7720) = 0u;
    *(result + 7704) = 0u;
    *(result + 7688) = 0u;
    *(result + 7672) = 0u;
    *(result + 7656) = 0u;
    *(result + 7640) = 0u;
    *(result + 7624) = 0u;
    *(result + 7608) = 0u;
    *(result + 7592) = 0u;
    *(result + 7576) = 0u;
    *(result + 7560) = 0u;
    *(result + 7544) = 0u;
    *(result + 7528) = 0u;
    *(result + 7512) = 0u;
    *(result + 7496) = 0u;
    *(result + 7480) = 0u;
    *(result + 7464) = 0u;
    *(result + 7448) = 0u;
    *(result + 7432) = 0u;
    *(result + 7416) = 0u;
    *(result + 7400) = 0u;
    *(result + 7384) = 0u;
    *(result + 7368) = 0u;
    *(result + 7352) = 0u;
    *(result + 7336) = 0u;
    *(result + 7320) = 0u;
    *(result + 7304) = 0u;
    *(result + 7288) = 0u;
    *(result + 7272) = 0u;
    *(result + 7256) = 0u;
    *(result + 7240) = 0u;
    *(result + 7224) = 0u;
    *(result + 7208) = 0u;
    *(result + 7192) = 0u;
    *(result + 7176) = 0u;
    *(result + 7160) = 0u;
    *(result + 7144) = 0u;
    *(result + 7128) = 0u;
    *(result + 7112) = 0u;
    *(result + 7096) = 0u;
    *(result + 7080) = 0u;
    *(result + 7064) = 0u;
    *(result + 7048) = 0u;
    *(result + 7032) = 0u;
    *(result + 7016) = 0u;
    *(result + 7000) = 0u;
    *(result + 6984) = 0u;
    *(result + 6968) = 0u;
    *(result + 6952) = 0u;
    *(result + 6936) = 0u;
    *(result + 6920) = 0u;
    *(result + 6904) = 0u;
    *(result + 6888) = 0u;
    *(result + 6872) = 0u;
    *(result + 6856) = 0u;
    *(result + 6840) = 0u;
    *(result + 6824) = 0u;
    *(result + 6808) = 0u;
    *(result + 6792) = 0u;
    *(result + 6776) = 0u;
    *(result + 6760) = 0u;
    *(result + 6744) = 0u;
    *(result + 6728) = 0u;
    *(result + 6712) = 0u;
    *(result + 6696) = 0u;
    *(result + 6680) = 0u;
    *(result + 6664) = 0u;
    *(result + 6648) = 0u;
    *(result + 6632) = 0u;
    *(result + 6616) = 0u;
    *(result + 6600) = 0u;
    *(result + 6584) = 0u;
    *(result + 6568) = 0u;
    *(result + 6552) = 0u;
    *(result + 6536) = 0u;
    *(result + 6520) = 0u;
    *(result + 6504) = 0u;
    *(result + 6488) = 0u;
    *(result + 6472) = 0u;
    *(result + 6456) = 0u;
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 0x2000) = v3;
  return result;
}

__n128 initializeWithTake for ShaderCache.ComputePipeline(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 _s15RelationStorageVwtk(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AF3BBE44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3BBE98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FairRecursiveLock(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for FairRecursiveLock(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 initializeWithCopy for ParticleSDFAttractor(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1AF3BBFE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 36);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3BC03C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 36) = a2 + 1;
    }
  }

  return result;
}

__n128 _s8MetadataVwtk(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1AF3BC120(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF3BC140(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 88) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for JobQueue(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for JobQueue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeWithCopy for UnfairLock(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1AF3BC4B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1AF3BC4CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AF3BC528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

__n128 initializeWithTake for EntityComponentPropertyLite(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AF3BC5C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AF3BC620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1AF3BC6A8()
{
  swift_getWitnessTable();

  return sub_1AFDFC358();
}

uint64_t sub_1AF3BC714(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637D88, type metadata accessor for MTLLibraryError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AF3BC780(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637D88, type metadata accessor for MTLLibraryError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1AF3BC7EC(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637DC0, type metadata accessor for MTLLibraryError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1AF3BC860(uint64_t a1, id *a2)
{
  result = sub_1AFDFCED8();
  *a2 = 0;
  return result;
}

uint64_t sub_1AF3BC8D8(uint64_t a1, id *a2)
{
  v3 = sub_1AFDFCEE8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1AF3BC958@<X0>(uint64_t *a1@<X8>)
{
  sub_1AFDFCEF8();
  v2 = sub_1AFDFCEC8();

  *a1 = v2;
  return result;
}

uint64_t sub_1AF3BC99C()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3BC9E4()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3BCA28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1AF3BCA90(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637DC0, type metadata accessor for MTLLibraryError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1AF3BCAFC(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637DC0, type metadata accessor for MTLLibraryError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1AF3BCB68(void *a1, uint64_t a2)
{
  v4 = sub_1AF0D4E2C(&qword_1EB637DC0, type metadata accessor for MTLLibraryError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1AF3BCC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF0D4E2C(&qword_1EB637DC0, type metadata accessor for MTLLibraryError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1AF3BCC98()
{
  sub_1AFDFF288();
  sub_1AFDFCD08();
  return sub_1AFDFF2F8();
}

_DWORD *sub_1AF3BCCF8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1AF3BCD08(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&unk_1ED730820, type metadata accessor for FileAttributeKey);
  v3 = sub_1AF0D4E2C(&qword_1EB637E28, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AF3BCDC4(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637E40, type metadata accessor for Key);
  v3 = sub_1AF0D4E2C(&qword_1EB637E48, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AF3BCF24()
{
  sub_1AFDFF288();
  swift_getWitnessTable();
  sub_1AFDFC368();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3BCF8C(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB638280, type metadata accessor for VFXWorldLoaderOption);
  v3 = sub_1AF0D4E2C(&qword_1EB6379B0, type metadata accessor for VFXWorldLoaderOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AF3BD480(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637E50, type metadata accessor for VFXMeshSourceSemantic);
  v3 = sub_1AF0D4E2C(&qword_1EB637E58, type metadata accessor for VFXMeshSourceSemantic);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AF3BD53C(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637E30, type metadata accessor for Option);
  v3 = sub_1AF0D4E2C(&qword_1EB637E38, type metadata accessor for Option);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AF3BD5F8(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637E10, type metadata accessor for LoadingOption);
  v3 = sub_1AF0D4E2C(&unk_1EB637E18, type metadata accessor for LoadingOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AF3BD6B4(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB630D10, type metadata accessor for VFXTriggerType);
  v3 = sub_1AF0D4E2C(&unk_1EB6379A0, type metadata accessor for VFXTriggerType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AF3BD9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF0D4E2C(&qword_1EB637DC0, type metadata accessor for MTLLibraryError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1AF3BDA34(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637E00, type metadata accessor for VFXHitTestOption);
  v3 = sub_1AF0D4E2C(&qword_1EB637E08, type metadata accessor for VFXHitTestOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t getEnumTagSinglePayload for ShaderScriptParameter.FragmentOutProperty(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ShaderScriptParameter.FragmentOutProperty(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1AF3BDCC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26048))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4772);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3BDD24(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = 26048;
  if (a2 > 0xFE)
  {
    *(result + 26040) = 0;
    *(result + 26032) = 0;
    *(result + 26024) = 0;
    *(result + 26016) = 0;
    *(result + 26008) = 0;
    *(result + 26000) = 0;
    *(result + 25992) = 0;
    *(result + 25984) = 0;
    *(result + 25976) = 0;
    *(result + 25968) = 0;
    *(result + 25960) = 0;
    *(result + 25952) = 0;
    *(result + 25944) = 0;
    *(result + 25936) = 0;
    *(result + 25928) = 0;
    *(result + 25920) = 0;
    *(result + 25912) = 0;
    *(result + 25904) = 0;
    *(result + 25896) = 0;
    *(result + 25888) = 0;
    *(result + 25880) = 0;
    *(result + 25872) = 0;
    *(result + 25864) = 0;
    *(result + 25856) = 0;
    *(result + 25848) = 0;
    *(result + 25840) = 0;
    *(result + 25832) = 0;
    *(result + 25824) = 0;
    *(result + 25816) = 0;
    *(result + 25808) = 0;
    *(result + 25800) = 0;
    *(result + 25792) = 0;
    *(result + 25784) = 0;
    *(result + 25776) = 0;
    *(result + 25768) = 0;
    *(result + 25760) = 0;
    *(result + 25752) = 0;
    *(result + 25744) = 0;
    *(result + 25736) = 0;
    *(result + 25728) = 0;
    *(result + 25720) = 0;
    *(result + 25712) = 0;
    *(result + 25704) = 0;
    *(result + 25696) = 0;
    *(result + 25688) = 0;
    *(result + 25680) = 0;
    *(result + 25672) = 0;
    *(result + 25664) = 0;
    *(result + 25656) = 0;
    *(result + 25648) = 0;
    *(result + 25640) = 0;
    *(result + 25632) = 0;
    *(result + 25624) = 0;
    *(result + 25616) = 0;
    *(result + 25608) = 0;
    *(result + 25600) = 0;
    *(result + 25592) = 0;
    *(result + 25584) = 0;
    *(result + 25576) = 0;
    *(result + 25568) = 0;
    *(result + 25560) = 0;
    *(result + 25552) = 0;
    *(result + 25544) = 0;
    *(result + 25536) = 0;
    *(result + 25528) = 0;
    *(result + 25520) = 0;
    *(result + 25512) = 0;
    *(result + 25504) = 0;
    *(result + 25496) = 0;
    *(result + 25488) = 0;
    *(result + 25480) = 0;
    *(result + 25472) = 0;
    *(result + 25464) = 0;
    *(result + 25456) = 0;
    *(result + 25448) = 0;
    *(result + 25440) = 0;
    *(result + 25432) = 0;
    *(result + 25424) = 0;
    *(result + 25416) = 0;
    *(result + 25408) = 0;
    *(result + 25400) = 0;
    *(result + 25392) = 0;
    *(result + 25384) = 0;
    *(result + 25376) = 0;
    *(result + 25368) = 0;
    *(result + 25360) = 0;
    *(result + 25352) = 0;
    *(result + 25344) = 0;
    *(result + 25336) = 0;
    *(result + 25328) = 0;
    *(result + 25320) = 0;
    *(result + 25312) = 0;
    *(result + 25304) = 0;
    *(result + 25296) = 0;
    *(result + 25288) = 0;
    *(result + 25280) = 0;
    *(result + 25272) = 0;
    *(result + 25264) = 0;
    *(result + 25256) = 0;
    *(result + 25248) = 0;
    *(result + 25240) = 0;
    *(result + 25232) = 0;
    *(result + 25224) = 0;
    *(result + 25216) = 0;
    *(result + 25208) = 0;
    *(result + 25200) = 0;
    *(result + 25192) = 0;
    *(result + 25184) = 0;
    *(result + 25176) = 0;
    *(result + 25168) = 0;
    *(result + 25160) = 0;
    *(result + 25152) = 0;
    *(result + 25144) = 0;
    *(result + 25136) = 0;
    *(result + 25128) = 0;
    *(result + 25120) = 0;
    *(result + 25112) = 0;
    *(result + 25104) = 0;
    *(result + 25096) = 0;
    *(result + 25088) = 0;
    *(result + 25080) = 0;
    *(result + 25072) = 0;
    *(result + 25064) = 0;
    *(result + 25056) = 0;
    *(result + 25048) = 0;
    *(result + 25040) = 0;
    *(result + 25032) = 0;
    *(result + 25024) = 0;
    *(result + 25016) = 0;
    *(result + 25008) = 0;
    *(result + 25000) = 0;
    *(result + 24992) = 0;
    *(result + 24984) = 0;
    *(result + 24976) = 0;
    *(result + 24968) = 0;
    *(result + 24960) = 0;
    *(result + 24952) = 0;
    *(result + 24944) = 0;
    *(result + 24936) = 0;
    *(result + 24928) = 0;
    *(result + 24920) = 0;
    *(result + 24912) = 0;
    *(result + 24904) = 0;
    *(result + 24896) = 0;
    *(result + 24888) = 0;
    *(result + 24880) = 0;
    *(result + 24872) = 0;
    *(result + 24864) = 0;
    *(result + 24856) = 0;
    *(result + 24848) = 0;
    *(result + 24840) = 0;
    *(result + 24832) = 0;
    *(result + 24824) = 0;
    *(result + 24816) = 0;
    *(result + 24808) = 0;
    *(result + 24800) = 0;
    *(result + 24792) = 0;
    *(result + 24784) = 0;
    *(result + 24776) = 0;
    *(result + 24768) = 0;
    *(result + 24760) = 0;
    *(result + 24752) = 0;
    *(result + 24744) = 0;
    *(result + 24736) = 0;
    *(result + 24728) = 0;
    *(result + 24720) = 0;
    *(result + 24712) = 0;
    *(result + 24704) = 0;
    *(result + 24696) = 0;
    *(result + 24688) = 0;
    *(result + 24680) = 0;
    *(result + 24672) = 0;
    *(result + 24664) = 0;
    *(result + 24656) = 0;
    *(result + 24648) = 0;
    *(result + 24640) = 0;
    *(result + 24632) = 0;
    *(result + 24624) = 0;
    *(result + 24616) = 0;
    *(result + 24608) = 0;
    *(result + 24600) = 0;
    *(result + 24592) = 0;
    *(result + 24584) = 0;
    *(result + 24576) = 0;
    *(result + 24568) = 0;
    *(result + 24560) = 0;
    *(result + 24552) = 0;
    *(result + 24544) = 0;
    *(result + 24536) = 0;
    *(result + 24528) = 0;
    *(result + 24520) = 0;
    *(result + 24512) = 0;
    *(result + 24504) = 0;
    *(result + 24496) = 0;
    *(result + 24488) = 0;
    *(result + 24480) = 0;
    *(result + 24472) = 0;
    *(result + 24464) = 0;
    *(result + 24456) = 0;
    *(result + 24448) = 0;
    *(result + 24440) = 0;
    *(result + 24432) = 0;
    *(result + 24424) = 0;
    *(result + 24416) = 0;
    *(result + 24408) = 0;
    *(result + 24400) = 0;
    *(result + 24392) = 0;
    *(result + 24384) = 0;
    *(result + 24376) = 0;
    *(result + 24368) = 0;
    *(result + 24360) = 0;
    *(result + 24352) = 0;
    *(result + 24344) = 0;
    *(result + 24336) = 0;
    *(result + 24328) = 0;
    *(result + 24320) = 0;
    *(result + 24312) = 0;
    *(result + 24304) = 0;
    *(result + 24296) = 0;
    *(result + 24288) = 0;
    *(result + 24280) = 0;
    *(result + 24272) = 0;
    *(result + 24264) = 0;
    *(result + 24256) = 0;
    *(result + 24248) = 0;
    *(result + 24240) = 0;
    *(result + 24232) = 0;
    *(result + 24224) = 0;
    *(result + 24216) = 0;
    *(result + 24208) = 0;
    *(result + 24200) = 0;
    *(result + 24192) = 0;
    *(result + 24184) = 0;
    *(result + 24176) = 0;
    *(result + 24168) = 0;
    *(result + 24160) = 0;
    *(result + 24152) = 0;
    *(result + 24144) = 0;
    *(result + 24136) = 0;
    *(result + 24128) = 0;
    *(result + 24120) = 0;
    *(result + 24112) = 0;
    *(result + 24104) = 0;
    *(result + 24096) = 0;
    *(result + 24088) = 0;
    *(result + 24080) = 0;
    *(result + 24072) = 0;
    *(result + 24064) = 0;
    *(result + 24056) = 0;
    *(result + 20232) = 0;
    *(result + 20224) = 0;
    *(result + 20280) = 0;
    *(result + 20272) = 0;
    *(result + 20264) = 0;
    *(result + 20256) = 0;
    *(result + 20248) = 0;
    *(result + 20240) = 0;
    *(result + 20328) = 0;
    *(result + 20320) = 0;
    *(result + 20312) = 0;
    *(result + 20304) = 0;
    *(result + 20296) = 0;
    *(result + 20288) = 0;
    *(result + 20376) = 0;
    *(result + 20368) = 0;
    *(result + 20360) = 0;
    *(result + 20352) = 0;
    *(result + 20344) = 0;
    *(result + 20336) = 0;
    *(result + 20424) = 0;
    *(result + 20416) = 0;
    *(result + 20408) = 0;
    *(result + 20400) = 0;
    *(result + 20392) = 0;
    *(result + 20384) = 0;
    *(result + 20472) = 0;
    *(result + 20464) = 0;
    *(result + 20456) = 0;
    *(result + 20448) = 0;
    *(result + 20440) = 0;
    *(result + 20432) = 0;
    *(result + 20520) = 0;
    *(result + 20512) = 0;
    *(result + 20504) = 0;
    *(result + 20496) = 0;
    *(result + 20488) = 0;
    *(result + 20480) = 0;
    *(result + 20568) = 0;
    *(result + 20560) = 0;
    *(result + 20552) = 0;
    *(result + 20544) = 0;
    *(result + 20536) = 0;
    *(result + 20528) = 0;
    *(result + 20616) = 0;
    *(result + 20608) = 0;
    *(result + 20600) = 0;
    *(result + 20592) = 0;
    *(result + 20584) = 0;
    *(result + 20576) = 0;
    *(result + 20664) = 0;
    *(result + 20656) = 0;
    *(result + 20648) = 0;
    *(result + 20640) = 0;
    *(result + 20632) = 0;
    *(result + 20624) = 0;
    *(result + 20712) = 0;
    *(result + 20704) = 0;
    *(result + 20696) = 0;
    *(result + 20688) = 0;
    *(result + 20680) = 0;
    *(result + 20672) = 0;
    *(result + 20760) = 0;
    *(result + 20752) = 0;
    *(result + 20744) = 0;
    *(result + 20736) = 0;
    *(result + 20728) = 0;
    *(result + 20720) = 0;
    *(result + 20808) = 0;
    *(result + 20800) = 0;
    *(result + 20792) = 0;
    *(result + 20784) = 0;
    *(result + 20776) = 0;
    *(result + 20768) = 0;
    *(result + 20856) = 0;
    *(result + 20848) = 0;
    *(result + 20840) = 0;
    *(result + 20832) = 0;
    *(result + 20824) = 0;
    *(result + 20816) = 0;
    *(result + 20904) = 0;
    *(result + 20896) = 0;
    *(result + 20888) = 0;
    *(result + 20880) = 0;
    *(result + 20872) = 0;
    *(result + 20864) = 0;
    *(result + 20952) = 0;
    *(result + 20944) = 0;
    *(result + 20936) = 0;
    *(result + 20928) = 0;
    *(result + 20920) = 0;
    *(result + 20912) = 0;
    *(result + 21000) = 0;
    *(result + 20992) = 0;
    *(result + 20984) = 0;
    *(result + 20976) = 0;
    *(result + 20968) = 0;
    *(result + 20960) = 0;
    *(result + 21048) = 0;
    *(result + 21040) = 0;
    *(result + 21032) = 0;
    *(result + 21024) = 0;
    *(result + 21016) = 0;
    *(result + 21008) = 0;
    *(result + 21096) = 0;
    *(result + 21088) = 0;
    *(result + 21080) = 0;
    *(result + 21072) = 0;
    *(result + 21064) = 0;
    *(result + 21056) = 0;
    *(result + 21144) = 0;
    *(result + 21136) = 0;
    *(result + 21128) = 0;
    *(result + 21120) = 0;
    *(result + 21112) = 0;
    *(result + 21104) = 0;
    *(result + 21192) = 0;
    *(result + 21184) = 0;
    *(result + 21176) = 0;
    *(result + 21168) = 0;
    *(result + 21160) = 0;
    *(result + 21152) = 0;
    *(result + 21240) = 0;
    *(result + 21232) = 0;
    *(result + 21224) = 0;
    *(result + 21216) = 0;
    *(result + 21208) = 0;
    *(result + 21200) = 0;
    *(result + 21288) = 0;
    *(result + 21280) = 0;
    *(result + 21272) = 0;
    *(result + 21264) = 0;
    *(result + 21256) = 0;
    *(result + 21248) = 0;
    *(result + 21336) = 0;
    *(result + 21328) = 0;
    *(result + 21320) = 0;
    *(result + 21312) = 0;
    *(result + 21304) = 0;
    *(result + 21296) = 0;
    *(result + 21384) = 0;
    *(result + 21376) = 0;
    *(result + 21368) = 0;
    *(result + 21360) = 0;
    *(result + 21352) = 0;
    *(result + 21344) = 0;
    *(result + 21432) = 0;
    *(result + 21424) = 0;
    *(result + 21416) = 0;
    *(result + 21408) = 0;
    *(result + 21400) = 0;
    *(result + 21392) = 0;
    *(result + 21480) = 0;
    *(result + 21472) = 0;
    *(result + 21464) = 0;
    *(result + 21456) = 0;
    *(result + 21448) = 0;
    *(result + 21440) = 0;
    *(result + 21528) = 0;
    *(result + 21520) = 0;
    *(result + 21512) = 0;
    *(result + 21504) = 0;
    *(result + 21496) = 0;
    *(result + 21488) = 0;
    *(result + 21576) = 0;
    *(result + 21568) = 0;
    *(result + 21560) = 0;
    *(result + 21552) = 0;
    *(result + 21544) = 0;
    *(result + 21536) = 0;
    *(result + 21624) = 0;
    *(result + 21616) = 0;
    *(result + 21608) = 0;
    *(result + 21600) = 0;
    *(result + 21592) = 0;
    *(result + 21584) = 0;
    *(result + 21672) = 0;
    *(result + 21664) = 0;
    *(result + 21656) = 0;
    *(result + 21648) = 0;
    *(result + 21640) = 0;
    *(result + 21632) = 0;
    *(result + 21720) = 0;
    *(result + 21712) = 0;
    *(result + 21704) = 0;
    *(result + 21696) = 0;
    *(result + 21688) = 0;
    *(result + 21680) = 0;
    *(result + 21768) = 0;
    *(result + 21760) = 0;
    *(result + 21752) = 0;
    *(result + 21744) = 0;
    *(result + 21736) = 0;
    *(result + 21728) = 0;
    *(result + 21816) = 0;
    *(result + 21808) = 0;
    *(result + 21800) = 0;
    *(result + 21792) = 0;
    *(result + 21784) = 0;
    *(result + 21776) = 0;
    *(result + 21864) = 0;
    *(result + 21856) = 0;
    *(result + 21848) = 0;
    *(result + 21840) = 0;
    *(result + 21832) = 0;
    *(result + 21824) = 0;
    *(result + 21912) = 0;
    *(result + 21904) = 0;
    *(result + 21896) = 0;
    *(result + 21888) = 0;
    *(result + 21880) = 0;
    *(result + 21872) = 0;
    *(result + 21960) = 0;
    *(result + 21952) = 0;
    *(result + 21944) = 0;
    *(result + 21936) = 0;
    *(result + 21928) = 0;
    *(result + 21920) = 0;
    *(result + 22008) = 0;
    *(result + 22000) = 0;
    *(result + 21992) = 0;
    *(result + 21984) = 0;
    *(result + 21976) = 0;
    *(result + 21968) = 0;
    *(result + 22056) = 0;
    *(result + 22048) = 0;
    *(result + 22040) = 0;
    *(result + 22032) = 0;
    *(result + 22024) = 0;
    *(result + 22016) = 0;
    *(result + 22104) = 0;
    *(result + 22096) = 0;
    *(result + 22088) = 0;
    *(result + 22080) = 0;
    *(result + 22072) = 0;
    *(result + 22064) = 0;
    *(result + 22152) = 0;
    *(result + 22144) = 0;
    *(result + 22136) = 0;
    *(result + 22128) = 0;
    *(result + 22120) = 0;
    *(result + 22112) = 0;
    *(result + 24048) = 0;
    *(result + 24040) = 0;
    *(result + 24032) = 0;
    *(result + 22176) = 0;
    *(result + 22168) = 0;
    *(result + 22160) = 0;
    *(result + 24024) = 0;
    *(result + 24016) = 0;
    *(result + 24008) = 0;
    *(result + 24000) = 0;
    *(result + 23992) = 0;
    *(result + 23984) = 0;
    *(result + 23976) = 0;
    *(result + 23968) = 0;
    *(result + 23960) = 0;
    *(result + 23952) = 0;
    *(result + 23944) = 0;
    *(result + 23936) = 0;
    *(result + 23928) = 0;
    *(result + 23920) = 0;
    *(result + 23912) = 0;
    *(result + 23904) = 0;
    *(result + 23896) = 0;
    *(result + 23888) = 0;
    *(result + 23880) = 0;
    *(result + 23872) = 0;
    *(result + 23864) = 0;
    *(result + 23856) = 0;
    *(result + 23848) = 0;
    *(result + 23840) = 0;
    *(result + 23832) = 0;
    *(result + 23824) = 0;
    *(result + 23816) = 0;
    *(result + 23808) = 0;
    *(result + 23800) = 0;
    *(result + 23792) = 0;
    *(result + 23784) = 0;
    *(result + 23776) = 0;
    *(result + 23768) = 0;
    *(result + 23760) = 0;
    *(result + 23752) = 0;
    *(result + 23744) = 0;
    *(result + 23736) = 0;
    *(result + 23728) = 0;
    *(result + 23720) = 0;
    *(result + 23712) = 0;
    *(result + 23704) = 0;
    *(result + 23696) = 0;
    *(result + 23688) = 0;
    *(result + 23680) = 0;
    *(result + 23672) = 0;
    *(result + 23664) = 0;
    *(result + 23656) = 0;
    *(result + 23648) = 0;
    *(result + 23640) = 0;
    *(result + 23632) = 0;
    *(result + 23624) = 0;
    *(result + 23616) = 0;
    *(result + 23608) = 0;
    *(result + 23600) = 0;
    *(result + 23592) = 0;
    *(result + 23584) = 0;
    *(result + 23576) = 0;
    *(result + 23568) = 0;
    *(result + 23560) = 0;
    *(result + 23552) = 0;
    *(result + 23544) = 0;
    *(result + 23536) = 0;
    *(result + 23528) = 0;
    *(result + 23520) = 0;
    *(result + 23512) = 0;
    *(result + 23504) = 0;
    *(result + 23496) = 0;
    *(result + 23488) = 0;
    *(result + 23480) = 0;
    *(result + 23472) = 0;
    *(result + 23464) = 0;
    *(result + 23456) = 0;
    *(result + 23448) = 0;
    *(result + 23440) = 0;
    *(result + 23432) = 0;
    *(result + 23424) = 0;
    *(result + 23416) = 0;
    *(result + 23408) = 0;
    *(result + 23400) = 0;
    *(result + 23392) = 0;
    *(result + 23384) = 0;
    *(result + 23376) = 0;
    *(result + 23368) = 0;
    *(result + 23360) = 0;
    *(result + 23352) = 0;
    *(result + 23344) = 0;
    *(result + 23336) = 0;
    *(result + 23328) = 0;
    *(result + 23320) = 0;
    *(result + 23312) = 0;
    *(result + 23304) = 0;
    *(result + 23296) = 0;
    *(result + 23288) = 0;
    *(result + 23280) = 0;
    *(result + 23272) = 0;
    *(result + 23264) = 0;
    *(result + 23256) = 0;
    *(result + 23248) = 0;
    *(result + 23240) = 0;
    *(result + 23232) = 0;
    *(result + 23224) = 0;
    *(result + 23216) = 0;
    *(result + 23208) = 0;
    *(result + 23200) = 0;
    *(result + 23192) = 0;
    *(result + 23184) = 0;
    *(result + 23176) = 0;
    *(result + 23168) = 0;
    *(result + 23160) = 0;
    *(result + 23152) = 0;
    *(result + 23144) = 0;
    *(result + 23136) = 0;
    *(result + 23128) = 0;
    *(result + 23120) = 0;
    *(result + 23112) = 0;
    *(result + 23104) = 0;
    *(result + 23096) = 0;
    *(result + 23088) = 0;
    *(result + 23080) = 0;
    *(result + 23072) = 0;
    *(result + 23064) = 0;
    *(result + 23056) = 0;
    *(result + 23048) = 0;
    *(result + 23040) = 0;
    *(result + 23032) = 0;
    *(result + 23024) = 0;
    *(result + 23016) = 0;
    *(result + 23008) = 0;
    *(result + 23000) = 0;
    *(result + 22992) = 0;
    *(result + 22984) = 0;
    *(result + 22976) = 0;
    *(result + 22968) = 0;
    *(result + 22960) = 0;
    *(result + 22952) = 0;
    *(result + 22944) = 0;
    *(result + 22936) = 0;
    *(result + 22928) = 0;
    *(result + 22920) = 0;
    *(result + 22912) = 0;
    *(result + 22904) = 0;
    *(result + 22896) = 0;
    *(result + 22888) = 0;
    *(result + 22880) = 0;
    *(result + 22872) = 0;
    *(result + 22864) = 0;
    *(result + 22856) = 0;
    *(result + 22848) = 0;
    *(result + 22840) = 0;
    *(result + 22832) = 0;
    *(result + 22824) = 0;
    *(result + 22816) = 0;
    *(result + 22808) = 0;
    *(result + 22800) = 0;
    *(result + 22792) = 0;
    *(result + 22784) = 0;
    *(result + 22776) = 0;
    *(result + 22768) = 0;
    *(result + 22760) = 0;
    *(result + 22752) = 0;
    *(result + 22744) = 0;
    *(result + 22736) = 0;
    *(result + 22728) = 0;
    *(result + 22720) = 0;
    *(result + 22712) = 0;
    *(result + 22704) = 0;
    *(result + 22696) = 0;
    *(result + 22688) = 0;
    *(result + 22680) = 0;
    *(result + 22672) = 0;
    *(result + 22664) = 0;
    *(result + 22656) = 0;
    *(result + 22648) = 0;
    *(result + 22640) = 0;
    *(result + 22632) = 0;
    *(result + 22624) = 0;
    *(result + 22616) = 0;
    *(result + 22608) = 0;
    *(result + 22600) = 0;
    *(result + 22592) = 0;
    *(result + 22584) = 0;
    *(result + 22576) = 0;
    *(result + 22568) = 0;
    *(result + 22560) = 0;
    *(result + 22552) = 0;
    *(result + 22544) = 0;
    *(result + 22536) = 0;
    *(result + 22528) = 0;
    *(result + 22520) = 0;
    *(result + 22512) = 0;
    *(result + 22504) = 0;
    *(result + 22496) = 0;
    *(result + 22488) = 0;
    *(result + 22480) = 0;
    *(result + 22472) = 0;
    *(result + 22464) = 0;
    *(result + 22456) = 0;
    *(result + 22448) = 0;
    *(result + 22440) = 0;
    *(result + 22432) = 0;
    *(result + 22424) = 0;
    *(result + 22416) = 0;
    *(result + 22408) = 0;
    *(result + 22400) = 0;
    *(result + 22392) = 0;
    *(result + 22384) = 0;
    *(result + 22376) = 0;
    *(result + 22368) = 0;
    *(result + 22360) = 0;
    *(result + 22352) = 0;
    *(result + 22344) = 0;
    *(result + 22336) = 0;
    *(result + 22328) = 0;
    *(result + 22320) = 0;
    *(result + 22312) = 0;
    *(result + 22304) = 0;
    *(result + 22296) = 0;
    *(result + 22288) = 0;
    *(result + 22280) = 0;
    *(result + 22272) = 0;
    *(result + 22264) = 0;
    *(result + 22256) = 0;
    *(result + 22248) = 0;
    *(result + 22240) = 0;
    *(result + 22232) = 0;
    *(result + 22224) = 0;
    *(result + 22216) = 0;
    *(result + 22208) = 0;
    *(result + 22200) = 0;
    *(result + 22192) = 0;
    *(result + 22184) = 0;
    *(result + 20216) = 0;
    *(result + 20208) = 0;
    *(result + 20200) = 0;
    *(result + 20192) = 0;
    *(result + 20184) = 0;
    *(result + 20176) = 0;
    *(result + 20168) = 0;
    *(result + 20160) = 0;
    *(result + 20152) = 0;
    *(result + 20144) = 0;
    *(result + 20136) = 0;
    *(result + 20128) = 0;
    *(result + 20120) = 0;
    *(result + 20112) = 0;
    *(result + 20104) = 0;
    *(result + 20096) = 0;
    *(result + 20088) = 0;
    *(result + 20080) = 0;
    *(result + 20072) = 0;
    *(result + 20064) = 0;
    *(result + 20056) = 0;
    *(result + 20048) = 0;
    *(result + 20040) = 0;
    *(result + 20032) = 0;
    *(result + 20024) = 0;
    *(result + 20016) = 0;
    *(result + 20008) = 0;
    *(result + 20000) = 0;
    *(result + 19992) = 0;
    *(result + 19984) = 0;
    *(result + 19976) = 0;
    *(result + 19968) = 0;
    *(result + 19960) = 0;
    *(result + 19952) = 0;
    *(result + 19944) = 0;
    *(result + 19936) = 0;
    *(result + 19928) = 0;
    *(result + 19920) = 0;
    *(result + 19912) = 0;
    *(result + 19904) = 0;
    *(result + 19896) = 0;
    *(result + 19888) = 0;
    *(result + 19880) = 0;
    *(result + 19872) = 0;
    *(result + 19864) = 0;
    *(result + 19856) = 0;
    *(result + 19848) = 0;
    *(result + 19840) = 0;
    *(result + 19832) = 0;
    *(result + 19824) = 0;
    *(result + 19816) = 0;
    *(result + 19808) = 0;
    *(result + 19800) = 0;
    *(result + 19792) = 0;
    *(result + 19784) = 0;
    *(result + 19776) = 0;
    *(result + 19768) = 0;
    *(result + 19760) = 0;
    *(result + 19752) = 0;
    *(result + 19744) = 0;
    *(result + 19736) = 0;
    *(result + 19728) = 0;
    *(result + 19720) = 0;
    *(result + 19712) = 0;
    *(result + 19704) = 0;
    *(result + 19696) = 0;
    *(result + 19688) = 0;
    *(result + 19680) = 0;
    *(result + 19672) = 0;
    *(result + 19664) = 0;
    *(result + 19656) = 0;
    *(result + 19648) = 0;
    *(result + 19640) = 0;
    *(result + 19632) = 0;
    *(result + 19624) = 0;
    *(result + 19616) = 0;
    *(result + 19608) = 0;
    *(result + 19600) = 0;
    *(result + 19592) = 0;
    *(result + 19584) = 0;
    *(result + 19576) = 0;
    *(result + 19568) = 0;
    *(result + 19560) = 0;
    *(result + 19552) = 0;
    *(result + 19544) = 0;
    *(result + 19536) = 0;
    *(result + 19528) = 0;
    *(result + 19520) = 0;
    *(result + 19512) = 0;
    *(result + 19504) = 0;
    *(result + 19496) = 0;
    *(result + 19488) = 0;
    *(result + 19480) = 0;
    *(result + 19472) = 0;
    *(result + 19464) = 0;
    *(result + 19456) = 0;
    *(result + 19448) = 0;
    *(result + 19440) = 0;
    *(result + 19432) = 0;
    *(result + 19424) = 0;
    *(result + 19416) = 0;
    *(result + 19408) = 0;
    *(result + 19400) = 0;
    *(result + 19392) = 0;
    *(result + 19384) = 0;
    *(result + 19376) = 0;
    *(result + 19368) = 0;
    *(result + 19360) = 0;
    *(result + 19352) = 0;
    *(result + 19344) = 0;
    *(result + 19336) = 0;
    *(result + 19328) = 0;
    *(result + 19320) = 0;
    *(result + 19312) = 0;
    *(result + 19304) = 0;
    *(result + 19296) = 0;
    *(result + 19288) = 0;
    *(result + 19280) = 0;
    *(result + 19272) = 0;
    *(result + 19264) = 0;
    *(result + 19256) = 0;
    *(result + 19248) = 0;
    *(result + 19240) = 0;
    *(result + 19232) = 0;
    *(result + 19224) = 0;
    *(result + 19216) = 0;
    *(result + 19208) = 0;
    *(result + 19200) = 0;
    *(result + 19192) = 0;
    *(result + 19184) = 0;
    *(result + 19176) = 0;
    *(result + 19168) = 0;
    *(result + 19160) = 0;
    *(result + 19152) = 0;
    *(result + 19144) = 0;
    *(result + 19136) = 0;
    *(result + 19128) = 0;
    *(result + 19120) = 0;
    *(result + 19112) = 0;
    *(result + 19104) = 0;
    *(result + 19096) = 0;
    *(result + 19088) = 0;
    *(result + 19080) = 0;
    *(result + 19072) = 0;
    *(result + 19064) = 0;
    *(result + 19056) = 0;
    *(result + 19048) = 0;
    *(result + 19040) = 0;
    *(result + 19032) = 0;
    *(result + 19024) = 0;
    *(result + 19016) = 0;
    *(result + 19008) = 0;
    *(result + 19000) = 0;
    *(result + 18992) = 0;
    *(result + 18984) = 0;
    *(result + 18976) = 0;
    *(result + 18968) = 0;
    *(result + 18960) = 0;
    *(result + 18952) = 0;
    *(result + 18944) = 0;
    *(result + 18936) = 0;
    *(result + 18928) = 0;
    *(result + 18920) = 0;
    *(result + 18912) = 0;
    *(result + 18904) = 0;
    *(result + 18896) = 0;
    *(result + 18888) = 0;
    *(result + 18880) = 0;
    *(result + 18872) = 0;
    *(result + 18864) = 0;
    *(result + 18856) = 0;
    *(result + 18848) = 0;
    *(result + 18840) = 0;
    *(result + 18832) = 0;
    *(result + 18824) = 0;
    *(result + 18816) = 0;
    *(result + 18808) = 0;
    *(result + 18800) = 0;
    *(result + 18792) = 0;
    *(result + 18784) = 0;
    *(result + 18776) = 0;
    *(result + 18768) = 0;
    *(result + 18760) = 0;
    *(result + 18752) = 0;
    *(result + 18744) = 0;
    *(result + 18736) = 0;
    *(result + 18728) = 0;
    *(result + 18720) = 0;
    *(result + 18712) = 0;
    *(result + 18704) = 0;
    *(result + 18696) = 0;
    *(result + 18688) = 0;
    *(result + 18680) = 0;
    *(result + 18672) = 0;
    *(result + 18664) = 0;
    *(result + 18656) = 0;
    *(result + 18648) = 0;
    *(result + 18640) = 0;
    *(result + 18632) = 0;
    *(result + 18624) = 0;
    *(result + 18616) = 0;
    *(result + 18608) = 0;
    *(result + 18600) = 0;
    *(result + 18592) = 0;
    *(result + 18584) = 0;
    *(result + 18576) = 0;
    *(result + 18568) = 0;
    *(result + 18560) = 0;
    *(result + 18552) = 0;
    *(result + 18544) = 0;
    *(result + 18536) = 0;
    *(result + 18528) = 0;
    *(result + 18520) = 0;
    *(result + 18512) = 0;
    *(result + 18504) = 0;
    *(result + 18496) = 0;
    *(result + 18488) = 0;
    *(result + 18480) = 0;
    *(result + 18472) = 0;
    *(result + 18464) = 0;
    *(result + 18456) = 0;
    *(result + 18448) = 0;
    *(result + 18440) = 0;
    *(result + 18432) = 0;
    *(result + 18424) = 0;
    *(result + 18416) = 0;
    *(result + 18408) = 0;
    *(result + 18400) = 0;
    *(result + 18392) = 0;
    *(result + 18384) = 0;
    *(result + 18376) = 0;
    *(result + 18368) = 0;
    *(result + 18360) = 0;
    *(result + 18352) = 0;
    *(result + 18344) = 0;
    *(result + 18336) = 0;
    *(result + 18328) = 0;
    *(result + 18320) = 0;
    *(result + 18312) = 0;
    *(result + 18304) = 0;
    *(result + 18296) = 0;
    *(result + 18288) = 0;
    *(result + 18280) = 0;
    *(result + 18272) = 0;
    *(result + 16136) = 0u;
    *(result + 16152) = 0u;
    *(result + 16168) = 0u;
    *(result + 16184) = 0u;
    *(result + 16200) = 0u;
    *(result + 16216) = 0u;
    *(result + 16232) = 0u;
    *(result + 16248) = 0u;
    *(result + 16264) = 0u;
    *(result + 16280) = 0u;
    *(result + 16296) = 0u;
    *(result + 16312) = 0u;
    *(result + 16328) = 0u;
    *(result + 18064) = 0;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 15960) = 0u;
    *(result + 15944) = 0u;
    *(result + 15928) = 0u;
    *(result + 15912) = 0u;
    *(result + 15896) = 0u;
    *(result + 15880) = 0u;
    *(result + 15864) = 0u;
    *(result + 15848) = 0u;
    *(result + 15832) = 0u;
    *(result + 15816) = 0u;
    *(result + 15800) = 0u;
    *(result + 15784) = 0u;
    *(result + 15768) = 0u;
    *(result + 15752) = 0u;
    *(result + 15736) = 0u;
    *(result + 15720) = 0u;
    *(result + 15704) = 0u;
    *(result + 15688) = 0u;
    *(result + 15672) = 0u;
    *(result + 15656) = 0u;
    *(result + 15640) = 0u;
    *(result + 15624) = 0u;
    *(result + 15608) = 0u;
    *(result + 15592) = 0u;
    *(result + 15576) = 0u;
    *(result + 15560) = 0u;
    *(result + 15544) = 0u;
    *(result + 15528) = 0u;
    *(result + 15512) = 0u;
    *(result + 15496) = 0u;
    *(result + 15480) = 0u;
    *(result + 15464) = 0u;
    *(result + 15448) = 0u;
    *(result + 15432) = 0u;
    *(result + 15416) = 0u;
    *(result + 15400) = 0u;
    *(result + 15384) = 0u;
    *(result + 15368) = 0u;
    *(result + 15352) = 0u;
    *(result + 15336) = 0u;
    *(result + 15320) = 0u;
    *(result + 15304) = 0u;
    *(result + 15288) = 0u;
    *(result + 15272) = 0u;
    *(result + 15256) = 0u;
    *(result + 15240) = 0u;
    *(result + 15224) = 0u;
    *(result + 15208) = 0u;
    *(result + 15192) = 0u;
    *(result + 15176) = 0u;
    *(result + 15160) = 0u;
    *(result + 15144) = 0u;
    *(result + 15128) = 0u;
    *(result + 15112) = 0u;
    *(result + 15096) = 0u;
    *(result + 15080) = 0u;
    *(result + 15064) = 0u;
    *(result + 15048) = 0u;
    *(result + 15032) = 0u;
    *(result + 15016) = 0u;
    *(result + 15000) = 0u;
    *(result + 14984) = 0u;
    *(result + 14968) = 0u;
    *(result + 14952) = 0u;
    *(result + 14936) = 0u;
    *(result + 14920) = 0u;
    *(result + 14904) = 0u;
    *(result + 14888) = 0u;
    *(result + 14872) = 0u;
    *(result + 14856) = 0u;
    *(result + 14840) = 0u;
    *(result + 14824) = 0u;
    *(result + 14808) = 0u;
    *(result + 14792) = 0u;
    *(result + 14776) = 0u;
    *(result + 14760) = 0u;
    *(result + 14744) = 0u;
    *(result + 14728) = 0u;
    *(result + 14712) = 0u;
    *(result + 14696) = 0u;
    *(result + 14680) = 0u;
    *(result + 14664) = 0u;
    *(result + 14648) = 0u;
    *(result + 14632) = 0u;
    *(result + 14616) = 0u;
    *(result + 14600) = 0u;
    *(result + 14584) = 0u;
    *(result + 14568) = 0u;
    *(result + 14552) = 0u;
    *(result + 14536) = 0u;
    *(result + 14520) = 0u;
    *(result + 14504) = 0u;
    *(result + 14488) = 0u;
    *(result + 14472) = 0u;
    *(result + 14456) = 0u;
    *(result + 14440) = 0u;
    *(result + 14424) = 0u;
    *(result + 14408) = 0u;
    *(result + 14392) = 0u;
    *(result + 14376) = 0u;
    *(result + 14360) = 0u;
    *(result + 14344) = 0u;
    *(result + 14328) = 0u;
    *(result + 14312) = 0u;
    *(result + 14296) = 0u;
    *(result + 14280) = 0u;
    *(result + 14264) = 0u;
    *(result + 14248) = 0u;
    *(result + 14232) = 0u;
    *(result + 14216) = 0u;
    *(result + 14200) = 0u;
    *(result + 14184) = 0u;
    *(result + 14168) = 0u;
    *(result + 14152) = 0u;
    *(result + 14136) = 0u;
    *(result + 14120) = 0u;
    *(result + 14104) = 0u;
    *(result + 14088) = 0u;
    *(result + 14072) = 0u;
    *(result + 14056) = 0u;
    *(result + 14040) = 0u;
    *(result + 14024) = 0u;
    *(result + 14008) = 0u;
    *(result + 13992) = 0u;
    *(result + 13976) = 0u;
    *(result + 13960) = 0u;
    *(result + 13944) = 0u;
    *(result + 13928) = 0u;
    *(result + 13912) = 0u;
    *(result + 13896) = 0u;
    *(result + 13880) = 0u;
    *(result + 13864) = 0u;
    *(result + 13848) = 0u;
    *(result + 13832) = 0u;
    *(result + 13816) = 0u;
    *(result + 13800) = 0u;
    *(result + 13784) = 0u;
    *(result + 13768) = 0u;
    *(result + 13752) = 0u;
    *(result + 13736) = 0u;
    *(result + 13720) = 0u;
    *(result + 13704) = 0u;
    *(result + 13688) = 0u;
    *(result + 13672) = 0u;
    *(result + 13656) = 0u;
    *(result + 13640) = 0u;
    *(result + 13624) = 0u;
    *(result + 13608) = 0u;
    *(result + 13592) = 0u;
    *(result + 13576) = 0u;
    *(result + 13560) = 0u;
    *(result + 13544) = 0u;
    *(result + 13528) = 0u;
    *(result + 13512) = 0u;
    *(result + 13496) = 0u;
    *(result + 13480) = 0u;
    *(result + 13464) = 0u;
    *(result + 13448) = 0u;
    *(result + 13432) = 0u;
    *(result + 13416) = 0u;
    *(result + 13400) = 0u;
    *(result + 13384) = 0u;
    *(result + 13368) = 0u;
    *(result + 13352) = 0u;
    *(result + 13336) = 0u;
    *(result + 13320) = 0u;
    *(result + 13304) = 0u;
    *(result + 13288) = 0u;
    *(result + 13272) = 0u;
    *(result + 13256) = 0u;
    *(result + 13240) = 0u;
    *(result + 13224) = 0u;
    *(result + 13208) = 0u;
    *(result + 13192) = 0u;
    *(result + 13176) = 0u;
    *(result + 13160) = 0u;
    *(result + 13144) = 0u;
    *(result + 13128) = 0u;
    *(result + 13112) = 0u;
    *(result + 13096) = 0u;
    *(result + 13080) = 0u;
    *(result + 13064) = 0u;
    *(result + 13048) = 0u;
    *(result + 13032) = 0u;
    *(result + 13016) = 0u;
    *(result + 13000) = 0u;
    *(result + 12984) = 0u;
    *(result + 12968) = 0u;
    *(result + 18016) = 0;
    *(result + 18024) = 0;
    *(result + 18032) = 0;
    *(result + 18040) = 0;
    *(result + 18048) = 0;
    *(result + 12952) = 0u;
    *(result + 17968) = 0;
    *(result + 17976) = 0;
    *(result + 17984) = 0;
    *(result + 17992) = 0;
    *(result + 18000) = 0;
    *(result + 18008) = 0;
    *(result + 17920) = 0;
    *(result + 17928) = 0;
    *(result + 17936) = 0;
    *(result + 17944) = 0;
    *(result + 17952) = 0;
    *(result + 17960) = 0;
    *(result + 17872) = 0;
    *(result + 17880) = 0;
    *(result + 17888) = 0;
    *(result + 17896) = 0;
    *(result + 17904) = 0;
    *(result + 17912) = 0;
    *(result + 17824) = 0;
    *(result + 17832) = 0;
    *(result + 17840) = 0;
    *(result + 17848) = 0;
    *(result + 17856) = 0;
    *(result + 17864) = 0;
    *(result + 17776) = 0;
    *(result + 17784) = 0;
    *(result + 17792) = 0;
    *(result + 17800) = 0;
    *(result + 17808) = 0;
    *(result + 17816) = 0;
    *(result + 17728) = 0;
    *(result + 17736) = 0;
    *(result + 17744) = 0;
    *(result + 17752) = 0;
    *(result + 17760) = 0;
    *(result + 17768) = 0;
    *(result + 17680) = 0;
    *(result + 17688) = 0;
    *(result + 17696) = 0;
    *(result + 17704) = 0;
    *(result + 17712) = 0;
    *(result + 17720) = 0;
    *(result + 17632) = 0;
    *(result + 17640) = 0;
    *(result + 17648) = 0;
    *(result + 17656) = 0;
    *(result + 17664) = 0;
    *(result + 17672) = 0;
    *(result + 17584) = 0;
    *(result + 17592) = 0;
    *(result + 17600) = 0;
    *(result + 17608) = 0;
    *(result + 17616) = 0;
    *(result + 17624) = 0;
    *(result + 17536) = 0;
    *(result + 17544) = 0;
    *(result + 17552) = 0;
    *(result + 17560) = 0;
    *(result + 17568) = 0;
    *(result + 17576) = 0;
    *(result + 17488) = 0;
    *(result + 17496) = 0;
    *(result + 17504) = 0;
    *(result + 17512) = 0;
    *(result + 17520) = 0;
    *(result + 17528) = 0;
    *(result + 17440) = 0;
    *(result + 17448) = 0;
    *(result + 17456) = 0;
    *(result + 17464) = 0;
    *(result + 17472) = 0;
    *(result + 17480) = 0;
    *(result + 17392) = 0;
    *(result + 17400) = 0;
    *(result + 17408) = 0;
    *(result + 17416) = 0;
    *(result + 17424) = 0;
    *(result + 17432) = 0;
    *(result + 17344) = 0;
    *(result + 17352) = 0;
    *(result + 17360) = 0;
    *(result + 17368) = 0;
    *(result + 17376) = 0;
    *(result + 17384) = 0;
    *(result + 17296) = 0;
    *(result + 17304) = 0;
    *(result + 17312) = 0;
    *(result + 17320) = 0;
    *(result + 17328) = 0;
    *(result + 17336) = 0;
    *(result + 17248) = 0;
    *(result + 17256) = 0;
    *(result + 17264) = 0;
    *(result + 17272) = 0;
    *(result + 17280) = 0;
    *(result + 17288) = 0;
    *(result + 17200) = 0;
    *(result + 17208) = 0;
    *(result + 17216) = 0;
    *(result + 17224) = 0;
    *(result + 17232) = 0;
    *(result + 17240) = 0;
    *(result + 17152) = 0;
    *(result + 17160) = 0;
    *(result + 17168) = 0;
    *(result + 17176) = 0;
    *(result + 17184) = 0;
    *(result + 17192) = 0;
    *(result + 17104) = 0;
    *(result + 17112) = 0;
    *(result + 17120) = 0;
    *(result + 17128) = 0;
    *(result + 17136) = 0;
    *(result + 17144) = 0;
    *(result + 17056) = 0;
    *(result + 17064) = 0;
    *(result + 17072) = 0;
    *(result + 17080) = 0;
    *(result + 17088) = 0;
    *(result + 17096) = 0;
    *(result + 17008) = 0;
    *(result + 17016) = 0;
    *(result + 17024) = 0;
    *(result + 17032) = 0;
    *(result + 17040) = 0;
    *(result + 17048) = 0;
    *(result + 16960) = 0;
    *(result + 16968) = 0;
    *(result + 16976) = 0;
    *(result + 16984) = 0;
    *(result + 16992) = 0;
    *(result + 17000) = 0;
    *(result + 16912) = 0;
    *(result + 16920) = 0;
    *(result + 16928) = 0;
    *(result + 16936) = 0;
    *(result + 16944) = 0;
    *(result + 16952) = 0;
    *(result + 16864) = 0;
    *(result + 16872) = 0;
    *(result + 16880) = 0;
    *(result + 16888) = 0;
    *(result + 16896) = 0;
    *(result + 16904) = 0;
    *(result + 16816) = 0;
    *(result + 16824) = 0;
    *(result + 16832) = 0;
    *(result + 16840) = 0;
    *(result + 16848) = 0;
    *(result + 16856) = 0;
    *(result + 16768) = 0;
    *(result + 16776) = 0;
    *(result + 16784) = 0;
    *(result + 16792) = 0;
    *(result + 16800) = 0;
    *(result + 16808) = 0;
    *(result + 16720) = 0;
    *(result + 16728) = 0;
    *(result + 16736) = 0;
    *(result + 16744) = 0;
    *(result + 16752) = 0;
    *(result + 16760) = 0;
    *(result + 16672) = 0;
    *(result + 16680) = 0;
    *(result + 16688) = 0;
    *(result + 16696) = 0;
    *(result + 16704) = 0;
    *(result + 16712) = 0;
    *(result + 16624) = 0;
    *(result + 16632) = 0;
    *(result + 16640) = 0;
    *(result + 16648) = 0;
    *(result + 16656) = 0;
    *(result + 16664) = 0;
    *(result + 16576) = 0;
    *(result + 16584) = 0;
    *(result + 16592) = 0;
    *(result + 16600) = 0;
    *(result + 16608) = 0;
    *(result + 16616) = 0;
    *(result + 16528) = 0;
    *(result + 16536) = 0;
    *(result + 16544) = 0;
    *(result + 16552) = 0;
    *(result + 16560) = 0;
    *(result + 16568) = 0;
    *(result + 16480) = 0;
    *(result + 16488) = 0;
    *(result + 16496) = 0;
    *(result + 16504) = 0;
    *(result + 16512) = 0;
    *(result + 16520) = 0;
    *(result + 16432) = 0;
    *(result + 16440) = 0;
    *(result + 16448) = 0;
    *(result + 16456) = 0;
    *(result + 16464) = 0;
    *(result + 16472) = 0;
    *(result + 0x4000) = 0;
    *(result + 16392) = 0;
    *(result + 16400) = 0;
    *(result + 16408) = 0;
    *(result + 16416) = 0;
    *(result + 16424) = 0;
    *(result + 18264) = 0;
    *(result + 16344) = 0;
    *(result + 16352) = 0;
    *(result + 16360) = 0;
    *(result + 16368) = 0;
    *(result + 16376) = 0;
    *(result + 18256) = 0;
    *(result + 18248) = 0;
    *(result + 18240) = 0;
    *(result + 18232) = 0;
    *(result + 18224) = 0;
    *(result + 18216) = 0;
    *(result + 18208) = 0;
    *(result + 18200) = 0;
    *(result + 18192) = 0;
    *(result + 18184) = 0;
    *(result + 18176) = 0;
    *(result + 18168) = 0;
    *(result + 16040) = 0u;
    *(result + 16056) = 0u;
    *(result + 16072) = 0u;
    *(result + 16088) = 0u;
    *(result + 16104) = 0u;
    *(result + 16120) = 0u;
    *(result + 18080) = 0;
    *(result + 18072) = 0;
    *(result + 15976) = 0u;
    *(result + 15992) = 0u;
    *(result + 16008) = 0u;
    *(result + 16024) = 0u;
    *(result + 18128) = 0;
    *(result + 18120) = 0;
    *(result + 18112) = 0;
    *(result + 18104) = 0;
    *(result + 18096) = 0;
    *(result + 18088) = 0;
    *(result + 18160) = 0;
    *(result + 18152) = 0;
    *(result + 18144) = 0;
    *(result + 18136) = 0;
    *(result + 18056) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 12536) = 0u;
    *(result + 12520) = 0u;
    *(result + 12504) = 0u;
    *(result + 12488) = 0u;
    *(result + 12472) = 0u;
    *(result + 12456) = 0u;
    *(result + 12440) = 0u;
    *(result + 12424) = 0u;
    *(result + 12408) = 0u;
    *(result + 12392) = 0u;
    *(result + 12376) = 0u;
    *(result + 12360) = 0u;
    *(result + 12344) = 0u;
    *(result + 12328) = 0u;
    *(result + 12312) = 0u;
    *(result + 12296) = 0u;
    *(result + 8440) = 0u;
    *(result + 8424) = 0u;
    *(result + 8408) = 0u;
    *(result + 8392) = 0u;
    *(result + 8376) = 0u;
    *(result + 8360) = 0u;
    *(result + 8344) = 0u;
    *(result + 8328) = 0u;
    *(result + 8312) = 0u;
    *(result + 8296) = 0u;
    *(result + 8280) = 0u;
    *(result + 8264) = 0u;
    *(result + 8248) = 0u;
    *(result + 8232) = 0u;
    *(result + 8216) = 0u;
    *(result + 8200) = 0u;
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 12936) = 0u;
    *(result + 12920) = 0u;
    *(result + 12904) = 0u;
    *(result + 12888) = 0u;
    *(result + 12872) = 0u;
    *(result + 12856) = 0u;
    *(result + 12840) = 0u;
    *(result + 12824) = 0u;
    *(result + 12808) = 0u;
    *(result + 12792) = 0u;
    *(result + 12776) = 0u;
    *(result + 12760) = 0u;
    *(result + 12744) = 0u;
    *(result + 12728) = 0u;
    *(result + 12712) = 0u;
    *(result + 12696) = 0u;
    *(result + 12680) = 0u;
    *(result + 12664) = 0u;
    *(result + 12648) = 0u;
    *(result + 12632) = 0u;
    *(result + 12616) = 0u;
    *(result + 12600) = 0u;
    *(result + 12584) = 0u;
    *(result + 12568) = 0u;
    *(result + 12552) = 0u;
    *(result + 12280) = 0u;
    *(result + 12264) = 0u;
    *(result + 12248) = 0u;
    *(result + 12232) = 0u;
    *(result + 12216) = 0u;
    *(result + 12200) = 0u;
    *(result + 12184) = 0u;
    *(result + 12168) = 0u;
    *(result + 12152) = 0u;
    *(result + 12136) = 0u;
    *(result + 12120) = 0u;
    *(result + 12104) = 0u;
    *(result + 12088) = 0u;
    *(result + 12072) = 0u;
    *(result + 12056) = 0u;
    *(result + 12040) = 0u;
    *(result + 12024) = 0u;
    *(result + 12008) = 0u;
    *(result + 11992) = 0u;
    *(result + 11976) = 0u;
    *(result + 11960) = 0u;
    *(result + 11944) = 0u;
    *(result + 11928) = 0u;
    *(result + 11912) = 0u;
    *(result + 11896) = 0u;
    *(result + 11880) = 0u;
    *(result + 11864) = 0u;
    *(result + 11848) = 0u;
    *(result + 11832) = 0u;
    *(result + 11816) = 0u;
    *(result + 11800) = 0u;
    *(result + 11784) = 0u;
    *(result + 11768) = 0u;
    *(result + 11752) = 0u;
    *(result + 11736) = 0u;
    *(result + 11720) = 0u;
    *(result + 11704) = 0u;
    *(result + 11688) = 0u;
    *(result + 11672) = 0u;
    *(result + 11656) = 0u;
    *(result + 11640) = 0u;
    *(result + 11624) = 0u;
    *(result + 11608) = 0u;
    *(result + 11592) = 0u;
    *(result + 11576) = 0u;
    *(result + 11560) = 0u;
    *(result + 11544) = 0u;
    *(result + 11528) = 0u;
    *(result + 11512) = 0u;
    *(result + 11496) = 0u;
    *(result + 11480) = 0u;
    *(result + 11464) = 0u;
    *(result + 11448) = 0u;
    *(result + 11432) = 0u;
    *(result + 11416) = 0u;
    *(result + 11400) = 0u;
    *(result + 11384) = 0u;
    *(result + 11368) = 0u;
    *(result + 11352) = 0u;
    *(result + 11336) = 0u;
    *(result + 11320) = 0u;
    *(result + 11304) = 0u;
    *(result + 11288) = 0u;
    *(result + 11272) = 0u;
    *(result + 11256) = 0u;
    *(result + 11240) = 0u;
    *(result + 11224) = 0u;
    *(result + 11208) = 0u;
    *(result + 11192) = 0u;
    *(result + 11176) = 0u;
    *(result + 11160) = 0u;
    *(result + 11144) = 0u;
    *(result + 11128) = 0u;
    *(result + 11112) = 0u;
    *(result + 11096) = 0u;
    *(result + 11080) = 0u;
    *(result + 11064) = 0u;
    *(result + 11048) = 0u;
    *(result + 11032) = 0u;
    *(result + 11016) = 0u;
    *(result + 11000) = 0u;
    *(result + 10984) = 0u;
    *(result + 10968) = 0u;
    *(result + 10952) = 0u;
    *(result + 10936) = 0u;
    *(result + 10920) = 0u;
    *(result + 10904) = 0u;
    *(result + 10888) = 0u;
    *(result + 10872) = 0u;
    *(result + 10856) = 0u;
    *(result + 10840) = 0u;
    *(result + 10824) = 0u;
    *(result + 10808) = 0u;
    *(result + 10792) = 0u;
    *(result + 10776) = 0u;
    *(result + 10760) = 0u;
    *(result + 10744) = 0u;
    *(result + 10728) = 0u;
    *(result + 10712) = 0u;
    *(result + 10696) = 0u;
    *(result + 10680) = 0u;
    *(result + 10664) = 0u;
    *(result + 10648) = 0u;
    *(result + 10632) = 0u;
    *(result + 10616) = 0u;
    *(result + 10600) = 0u;
    *(result + 10584) = 0u;
    *(result + 10568) = 0u;
    *(result + 10552) = 0u;
    *(result + 10536) = 0u;
    *(result + 10520) = 0u;
    *(result + 10504) = 0u;
    *(result + 10488) = 0u;
    *(result + 10472) = 0u;
    *(result + 10456) = 0u;
    *(result + 10440) = 0u;
    *(result + 10424) = 0u;
    *(result + 10408) = 0u;
    *(result + 10392) = 0u;
    *(result + 10376) = 0u;
    *(result + 10360) = 0u;
    *(result + 10344) = 0u;
    *(result + 10328) = 0u;
    *(result + 10312) = 0u;
    *(result + 10296) = 0u;
    *(result + 10280) = 0u;
    *(result + 10264) = 0u;
    *(result + 10248) = 0u;
    *(result + 10232) = 0u;
    *(result + 10216) = 0u;
    *(result + 10200) = 0u;
    *(result + 10184) = 0u;
    *(result + 10168) = 0u;
    *(result + 10152) = 0u;
    *(result + 10136) = 0u;
    *(result + 10120) = 0u;
    *(result + 10104) = 0u;
    *(result + 10088) = 0u;
    *(result + 10072) = 0u;
    *(result + 10056) = 0u;
    *(result + 10040) = 0u;
    *(result + 10024) = 0u;
    *(result + 10008) = 0u;
    *(result + 9992) = 0u;
    *(result + 9976) = 0u;
    *(result + 9960) = 0u;
    *(result + 9944) = 0u;
    *(result + 9928) = 0u;
    *(result + 9912) = 0u;
    *(result + 9896) = 0u;
    *(result + 9880) = 0u;
    *(result + 9864) = 0u;
    *(result + 9848) = 0u;
    *(result + 9832) = 0u;
    *(result + 9816) = 0u;
    *(result + 9800) = 0u;
    *(result + 9784) = 0u;
    *(result + 9768) = 0u;
    *(result + 9752) = 0u;
    *(result + 9736) = 0u;
    *(result + 9720) = 0u;
    *(result + 9704) = 0u;
    *(result + 9688) = 0u;
    *(result + 9672) = 0u;
    *(result + 9656) = 0u;
    *(result + 9640) = 0u;
    *(result + 9624) = 0u;
    *(result + 9608) = 0u;
    *(result + 9592) = 0u;
    *(result + 9576) = 0u;
    *(result + 9560) = 0u;
    *(result + 9544) = 0u;
    *(result + 9528) = 0u;
    *(result + 9512) = 0u;
    *(result + 9496) = 0u;
    *(result + 9480) = 0u;
    *(result + 9464) = 0u;
    *(result + 9448) = 0u;
    *(result + 9432) = 0u;
    *(result + 9416) = 0u;
    *(result + 9400) = 0u;
    *(result + 9384) = 0u;
    *(result + 9368) = 0u;
    *(result + 9352) = 0u;
    *(result + 9336) = 0u;
    *(result + 9320) = 0u;
    *(result + 9304) = 0u;
    *(result + 9288) = 0u;
    *(result + 9272) = 0u;
    *(result + 9256) = 0u;
    *(result + 9240) = 0u;
    *(result + 9224) = 0u;
    *(result + 9208) = 0u;
    *(result + 9192) = 0u;
    *(result + 9176) = 0u;
    *(result + 9160) = 0u;
    *(result + 9144) = 0u;
    *(result + 9128) = 0u;
    *(result + 9112) = 0u;
    *(result + 9096) = 0u;
    *(result + 9080) = 0u;
    *(result + 9064) = 0u;
    *(result + 9048) = 0u;
    *(result + 9032) = 0u;
    *(result + 9016) = 0u;
    *(result + 9000) = 0u;
    *(result + 8984) = 0u;
    *(result + 8968) = 0u;
    *(result + 8952) = 0u;
    *(result + 8936) = 0u;
    *(result + 8920) = 0u;
    *(result + 8904) = 0u;
    *(result + 8888) = 0u;
    *(result + 8872) = 0u;
    *(result + 8856) = 0u;
    *(result + 8840) = 0u;
    *(result + 8824) = 0u;
    *(result + 8808) = 0u;
    *(result + 8792) = 0u;
    *(result + 8776) = 0u;
    *(result + 8760) = 0u;
    *(result + 8744) = 0u;
    *(result + 8728) = 0u;
    *(result + 8712) = 0u;
    *(result + 8696) = 0u;
    *(result + 8680) = 0u;
    *(result + 8664) = 0u;
    *(result + 8648) = 0u;
    *(result + 8632) = 0u;
    *(result + 8616) = 0u;
    *(result + 8600) = 0u;
    *(result + 8584) = 0u;
    *(result + 8568) = 0u;
    *(result + 8552) = 0u;
    *(result + 8536) = 0u;
    *(result + 8520) = 0u;
    *(result + 8504) = 0u;
    *(result + 8488) = 0u;
    *(result + 8472) = 0u;
    *(result + 8456) = 0u;
    *(result + 8184) = 0u;
    *(result + 8168) = 0u;
    *(result + 8152) = 0u;
    *(result + 8136) = 0u;
    *(result + 8120) = 0u;
    *(result + 8104) = 0u;
    *(result + 8088) = 0u;
    *(result + 8072) = 0u;
    *(result + 8056) = 0u;
    *(result + 8040) = 0u;
    *(result + 8024) = 0u;
    *(result + 8008) = 0u;
    *(result + 7992) = 0u;
    *(result + 7976) = 0u;
    *(result + 7960) = 0u;
    *(result + 7944) = 0u;
    *(result + 7928) = 0u;
    *(result + 7912) = 0u;
    *(result + 7896) = 0u;
    *(result + 7880) = 0u;
    *(result + 7864) = 0u;
    *(result + 7848) = 0u;
    *(result + 7832) = 0u;
    *(result + 7816) = 0u;
    *(result + 7800) = 0u;
    *(result + 7784) = 0u;
    *(result + 7768) = 0u;
    *(result + 7752) = 0u;
    *(result + 7736) = 0u;
    *(result + 7720) = 0u;
    *(result + 7704) = 0u;
    *(result + 7688) = 0u;
    *(result + 7672) = 0u;
    *(result + 7656) = 0u;
    *(result + 7640) = 0u;
    *(result + 7624) = 0u;
    *(result + 7608) = 0u;
    *(result + 7592) = 0u;
    *(result + 7576) = 0u;
    *(result + 7560) = 0u;
    *(result + 7544) = 0u;
    *(result + 7528) = 0u;
    *(result + 7512) = 0u;
    *(result + 7496) = 0u;
    *(result + 7480) = 0u;
    *(result + 7464) = 0u;
    *(result + 7448) = 0u;
    *(result + 7432) = 0u;
    *(result + 7416) = 0u;
    *(result + 7400) = 0u;
    *(result + 7384) = 0u;
    *(result + 7368) = 0u;
    *(result + 7352) = 0u;
    *(result + 7336) = 0u;
    *(result + 7320) = 0u;
    *(result + 7304) = 0u;
    *(result + 7288) = 0u;
    *(result + 7272) = 0u;
    *(result + 7256) = 0u;
    *(result + 7240) = 0u;
    *(result + 7224) = 0u;
    *(result + 7208) = 0u;
    *(result + 7192) = 0u;
    *(result + 7176) = 0u;
    *(result + 7160) = 0u;
    *(result + 7144) = 0u;
    *(result + 7128) = 0u;
    *(result + 7112) = 0u;
    *(result + 7096) = 0u;
    *(result + 7080) = 0u;
    *(result + 7064) = 0u;
    *(result + 7048) = 0u;
    *(result + 7032) = 0u;
    *(result + 7016) = 0u;
    *(result + 7000) = 0u;
    *(result + 6984) = 0u;
    *(result + 6968) = 0u;
    *(result + 6952) = 0u;
    *(result + 6936) = 0u;
    *(result + 6920) = 0u;
    *(result + 6904) = 0u;
    *(result + 6888) = 0u;
    *(result + 6872) = 0u;
    *(result + 6856) = 0u;
    *(result + 6840) = 0u;
    *(result + 6824) = 0u;
    *(result + 6808) = 0u;
    *(result + 6792) = 0u;
    *(result + 6776) = 0u;
    *(result + 6760) = 0u;
    *(result + 6744) = 0u;
    *(result + 6728) = 0u;
    *(result + 6712) = 0u;
    *(result + 6696) = 0u;
    *(result + 6680) = 0u;
    *(result + 6664) = 0u;
    *(result + 6648) = 0u;
    *(result + 6632) = 0u;
    *(result + 6616) = 0u;
    *(result + 6600) = 0u;
    *(result + 6584) = 0u;
    *(result + 6568) = 0u;
    *(result + 6552) = 0u;
    *(result + 6536) = 0u;
    *(result + 6520) = 0u;
    *(result + 6504) = 0u;
    *(result + 6488) = 0u;
    *(result + 6472) = 0u;
    *(result + 6456) = 0u;
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 1128) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 1112) = 0u;
    *(result + 1016) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
    *result = a2 - 255;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    if (a3 < 0xFF)
    {
      return result;
    }

    v4 = 1;
    goto LABEL_8;
  }

  if (a3 >= 0xFF)
  {
    *(result + 26048) = 0;
  }

  if (a2)
  {
    v3 = 4772;
    v4 = a2 + 1;
LABEL_8:
    *(result + v3) = v4;
  }

  return result;
}

__n128 initializeWithTake for RenderGraph.RenderTargetDesc(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1AF3C025C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 144))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 136);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C02B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeWithTake for Navigation(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1AF3C03DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C0430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeWithTake for MeshPart(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1AF3C04D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 176))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 160);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C0524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 160) = a2 + 1;
    }
  }

  return result;
}