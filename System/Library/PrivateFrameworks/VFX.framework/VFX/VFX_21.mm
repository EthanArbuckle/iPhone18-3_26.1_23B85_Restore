uint64_t sub_1AF244968(uint64_t a1, CFX::CrossFrameResourceManager **a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    return sub_1AF244768(a1, a2, (a4 + 8));
  }

  if (a3 == 1)
  {
    return sub_1AF244458(a1, a2);
  }

  return a1;
}

uint64_t sub_1AF2449A0(uint64_t *a1, uint64_t *a2, uint64_t a3, const void *a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF244A38(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF244A00(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Resource **sub_1AF244A38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, const void *a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v9 = sub_1AF23498C(v12, 0x468u, 8u);
  return sub_1AF2442FC(v9, *a3, a3[1], a4, v10, a6);
}

uint64_t sub_1AF244A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v50 = *MEMORY[0x1E69E9840];
  *&v38 = a2;
  *(&v38 + 1) = a3;
  if ((atomic_load_explicit(&qword_1ED73A688, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEF60();
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A680, a6);
  *a1 = &unk_1F24E9B18;
  *(a1 + 456) = 0;
  v12 = *(a5 + 24);
  v13 = *(a5 + 56);
  *(a1 + 480) = *(a5 + 40);
  *(a1 + 496) = v13;
  *(a1 + 464) = v12;
  v14 = *(a5 + 72);
  v15 = *(a5 + 88);
  v16 = *(a5 + 120);
  *(a1 + 544) = *(a5 + 104);
  *(a1 + 560) = v16;
  *(a1 + 512) = v14;
  *(a1 + 528) = v15;
  v17 = *(a5 + 136);
  v18 = *(a5 + 152);
  v19 = *(a5 + 168);
  *(a1 + 624) = *(a5 + 184);
  *(a1 + 592) = v18;
  *(a1 + 608) = v19;
  *(a1 + 576) = v17;
  *(a1 + 632) = 0u;
  v20 = sub_1AF1B7DB8(*(a1 + 464));
  *&v30[0] = *(a1 + 432);
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0uLL;
  v43 = sub_1AF16F0D8(v20);
  v44 = 0;
  v45 = *(a1 + 440);
  v46 = sub_1AF130848(*(a1 + 432));
  v47 = 2;
  v48 = 1;
  v49 = 1;
  *(a1 + 448) = sub_1AF2330E0(v38, *(&v38 + 1), &v38, v30, &v39);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 51;
  v35 = 0;
  if ((atomic_load_explicit(&qword_1ED73A688, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEFB8();
  }

  v36 = qword_1ED73A680;
  v37 = -1;
  v21 = *(a1 + 432);
  v39 = v38;
  v22 = sub_1AF23498C(&v39, 0x48u, 8u);
  v23 = sub_1AF2603E8(v22, v21, &v31, *(a1 + 448));
  *(a1 + 456) = v24;
  v25 = (*(*a1 + 32))(a1, v23);
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 269) = 1;
  CFX::RG::TextureDescriptorReference::withSampleCount((a1 + 472), *(v20 + 224), v29);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v29, MTLPixelFormatRGBA16Float, v30);
  CFX::RG::TextureDescriptorReference::withSizeFactor(v30, *(v20 + 220), &v39);
  v26 = sub_1AF233CC8(a4, "COLOR_MIRROR_MAP", &v39);
  *(a1 + 632) = v26;
  CFX::RG::Pass::renderTo(a1, v26, 0x100000002, 0);
  CFX::RG::TextureDescriptorReference::withSampleCount((a1 + 472), *(v20 + 224), v29);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v29, MTLPixelFormatDepth32Float, v30);
  CFX::RG::TextureDescriptorReference::withSizeFactor(v30, *(v20 + 220), &v39);
  v27 = sub_1AF233CC8(a4, "DEPTH_MIRROR_MAP", &v39);
  CFX::RG::Pass::renderTo(a1, v27, 0x200000002, -1);
  if (sub_1AF16EE80(v20) != 0.0)
  {
    *(a1 + 640) = v27;
  }

  return a1;
}

void sub_1AF244DEC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_1ED73A668, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEFFC();
  }

  if ((atomic_load_explicit(&qword_1ED73A678, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF054();
  }

  v4 = *(a1 + 464);
  v5 = 0x9DDFEA08EB382D69 * (qword_1ED73A660 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A660 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A660 ^ v4)));
  v6 = v5 ^ (v5 >> 47);
  v7 = qword_1ED73A670;
  v8 = sub_1AF1B7DB8(v4);
  v9 = sub_1AF12FCE8(*(a1 + 432), 0);
  *&v9.n128_i8[8] = vmul_n_f32(*&vextq_s8(v9, v9, 8uLL), *(v8 + 220));
  v10 = *(a1 + 448);
  if ((v10[5].n128_u8[0] & 1) == 0)
  {
    v10[5].n128_u8[0] = 1;
  }

  v10[4] = v9;
  v11 = sub_1AF16F0D8(v8);
  v12 = *(a1 + 448);
  v12[6].i64[0] = v11;
  sub_1AF23B424(v12, v13, v14, v15);
  sub_1AF23B5E0(*(a1 + 448));
  sub_1AF23B5FC(*(a1 + 448), *(a1 + 464));
  sub_1AF23B5F4(*(a1 + 448), v16, v17, v18, v19, v20, v21);
  sub_1AF23B604(*(a1 + 448), *(a1 + 464));
  sub_1AF23B60C(*(a1 + 448));
  CFX::GPUResourceManager::registerNamedFrameResource(*(a2 + 24), *(a1 + 632), -348639895 * v6);
  v23 = *(a1 + 640);
  if (v23)
  {
    CFX::GPUResourceManager::registerNamedFrameResource(*(a2 + 24), v23, -348639895 * ((-348639895 * (v7 ^ (((0x9DDFEA08EB382D69 * (v7 ^ v4)) >> 32) >> 15) ^ (-348639895 * (v7 ^ v4)))) ^ (((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v4)))) >> 32) >> 15)));
  }

  v24 = *(a1 + 448);
  v25 = *a2;
  v26 = *(a2 + 8);

  sub_1AF23B678(v24, v25, v26, v22);
}

uint64_t sub_1AF244F8C(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF245210(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

uint64_t sub_1AF244FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = a3;
  v12 = a1;
  *a5 = a2;
  a5[1] = 0;
  a5[2] = a5 + 3;
  v7 = sub_1AF12DDCC(a3);
  v8 = sub_1AF1CF7E8(v7);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = sub_1AF245088;
  v10[3] = &unk_1F24E9B60;
  v10[4] = &v12;
  v10[5] = &v11;
  v10[6] = a4;
  v10[7] = a5;
  return sub_1AF1B95A8(v8, v10);
}

uint64_t sub_1AF245088(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 221) & 8) != 0)
  {
    if ((atomic_load_explicit(&qword_1ED73A688, memory_order_acquire) & 1) == 0)
    {
      sub_1AFDEEF60();
    }

    v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ a2)))) ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ a2)))) >> 47));
    Pass = CFX::RG::RenderGraphBuilder::findPass(**(a1 + 32), v4);
    if (!Pass)
    {
      v5 = *(a1 + 40);
      v6 = **(a1 + 32);
      v9[0] = "Mirror map";
      v9[1] = *v5;
      v10 = 0;
      v11 = a2;
      CFX::RG::TextureDescriptorReference::withSampleCount(*(a1 + 48), 1, &v12);
      v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v11) ^ ((0x9DDFEA08EB382D69 * v11) >> 47));
      v14 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      v15 = v6;
      Pass = sub_1AF244F8C(v6, &v15, v9, &v14);
      CFX::RG::RenderGraphBuilder::registerPass(**(a1 + 32), v4, Pass);
    }

    sub_1AF240F04(*(a1 + 56), &Pass);
  }

  return 0;
}

__n128 sub_1AF2451C4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void sub_1AF2451D8(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF245210(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t *a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x288u, 8u);
  return sub_1AF244A98(v10, *a3, a3[1], *a4, a5, *a6);
}

__n128 sub_1AF245284(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a4;
  if ((atomic_load_explicit(&qword_1ED73A698, memory_order_acquire) & 1) == 0)
  {
    v11 = v6;
    v12 = a3;
    v10 = a2;
    sub_1AFDEF0AC();
    a2 = v10;
    v6 = v11;
    a3 = v12;
  }

  if (byte_1ED73A690)
  {
    v7 = 0x7BF982A9CEFE0066;
  }

  else
  {
    v7 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, v6, 1, v7, 0);
  *this = &unk_1F24E9BA0;
  result = *a4;
  v9 = *(a4 + 32);
  *(this + 440) = *(a4 + 16);
  *(this + 456) = v9;
  *(this + 424) = result;
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 59) = 0;
  return result;
}

void sub_1AF245344(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = *(a1 + 432);
  v6 = *(a1 + 440);
  v7 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))) ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))) ^ v6)));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ *(a1 + 448));
  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v12 = *(a1 + 456);
  if (v12 && v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v14 = v12;
      v15 = *(a1 + 440);
      if (v6)
      {
        do
        {
          v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ *v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ *v14)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ *v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ *v14)))) >> 47));
          v14 += v5;
          --v15;
        }

        while (v15);
      }

      ++v12;
    }
  }

  v16 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v11);
  *(a1 + 472) = v16;
  if (!v16)
  {
    *(a1 + 472) = sub_1AF245624(*(a2 + 32), v11);
    v17 = sub_1AF12E2AC(*(a1 + 464));
    v18 = *(a1 + 432) | 1;
    v19 = *(a1 + 440) | 1;
    v20 = *(a1 + 448);
    if ((v20 - 2) < 2)
    {
      v23 = *(a1 + 456);
      if (!v23)
      {
        v23 = malloc_type_calloc(1uLL, 4 * v19 * v18, 0x100004052888210uLL);
        memset_pattern16(v23, &xmmword_1AFE21160, 4 * v19 * v18);
        v20 = *(a1 + 448);
      }

      if (v20 == 3)
      {
        v24 = *(a1 + 472);
        v25 = objc_alloc(MEMORY[0x1E69745B0]);
        v29 = objc_msgSend_device(v17, v26, v27, v28);
        v31 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_values_(v25, v30, v29, v18, v19, v23);
        sub_1AF23355C((v24 + 16), v31);
        v20 = *(a1 + 448);
      }

      if (v20 == 2)
      {
        v32 = *(a1 + 472);
        v33 = objc_alloc(MEMORY[0x1E69745A8]);
        v37 = objc_msgSend_device(v17, v34, v35, v36);
        v39 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_values_(v33, v38, v37, v18, v19, v23);
        sub_1AF23355C((v32 + 16), v39);
      }

      if (!*(a1 + 456))
      {

        free(v23);
      }
    }

    else
    {
      if (v20 == 1)
      {
        v21 = *(a1 + 472);
        v22 = MEMORY[0x1E6974570];
      }

      else
      {
        if (v20)
        {
          return;
        }

        v21 = *(a1 + 472);
        v22 = MEMORY[0x1E6974568];
      }

      v40 = [v22 alloc];
      v44 = objc_msgSend_device(v17, v41, v42, v43);
      v46 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v40, v45, v44, v18, v19);

      sub_1AF23355C((v21 + 16), v46);
    }
  }
}

uint64_t sub_1AF245624(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2456AC(CFX::RG::Temporal *a1, uint64_t a2, id *a3)
{
  v6 = *(a2 + 24);
  v7 = *(a1 + 60);
  v8 = CFX::RG::Temporal::currentFrame(a1);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = *(a1 + 61);
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v13 = *(*(a1 + 59) + 16);
  v14 = CFX::RG::RendererPassArguments::commandBuffer(a3);

  return MEMORY[0x1EEE66B58](v13, sel_encodeToCommandBuffer_sourceTexture_destinationTexture_, v14, Texture);
}

void sub_1AF245754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    sub_1AF2456AC(a1, a2, (a4 + 8));
  }

  else if (a3 == 1)
  {
    sub_1AF245344(a1, a2);
  }
}

uint64_t *sub_1AF245774(uint64_t *a1, CFX::RG::Resource *a2, uint64_t a3)
{
  v5 = sub_1AF245884(a1, a3);
  v6 = CFX::RG::Resource::constTextureDesc(a2);
  v7 = v6[1];
  v20[0] = *v6;
  v20[1] = v7;
  v8 = v6[5];
  v10 = v6[2];
  v9 = v6[3];
  v21 = v6[4];
  v22 = v8;
  v20[2] = v10;
  v20[3] = v9;
  v11 = v6[9];
  v13 = v6[6];
  v12 = v6[7];
  v25 = v6[8];
  v26 = v11;
  v23 = v13;
  v24 = v12;
  CFX::RG::TextureDescriptorReference::withSampleCount(v20, 1, v19);
  v15 = CFX::RG::copyIfNeeded(a1, a2, 0, v19, "MPSMorphologicalPass color input resolve", v14);
  v5[60] = v15;
  v16 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(v5, v15, v16);
  if ((v22 & 1) == 0)
  {
    LOBYTE(v22) = 1;
  }

  *(&v21 + 1) = 2;
  CFX::RG::TextureDescriptorReference::withSampleCount(v20, 1, v19);
  v17 = sub_1AF233CC8(a1, "color", v19);
  v5[61] = v17;
  CFX::RG::Pass::writeTo(v5, v17);
  return v5;
}

uint64_t sub_1AF245884(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  sub_1AF2459C4(v7[0], v4, v7, a2);
  v7[0] = v5;
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF2458DC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF245914(uint64_t a1)
{
  *a1 = &unk_1F24E9BD8;

  return a1;
}

void sub_1AF24595C(uint64_t a1)
{
  *a1 = &unk_1F24E9BD8;

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF2459C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_1AF23498C(v8, 0x1F0u, 8u);
  *&result = sub_1AF245284(v6, *a3, a3[1], a4).n128_u64[0];
  return result;
}

uint64_t sub_1AF245A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A6B8, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v16 = a3;
    sub_1AFDEF0F8();
    a2 = v15;
    a3 = v16;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A6B0, 0);
  *a1 = &unk_1F24E9BF8;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v8 = *(a5 + 136);
  v17[6] = *(a5 + 120);
  v17[7] = v8;
  v9 = *(a5 + 168);
  v17[8] = *(a5 + 152);
  v17[9] = v9;
  v10 = *(a5 + 72);
  v17[2] = *(a5 + 56);
  v17[3] = v10;
  v11 = *(a5 + 104);
  v17[4] = *(a5 + 88);
  v17[5] = v11;
  v12 = *(a5 + 40);
  v17[0] = *(a5 + 24);
  v17[1] = v12;
  v13 = sub_1AF233CC8(a4, "MB-Color", v17);
  *(a1 + 480) = v13;
  CFX::RG::Pass::renderTo(a1, v13, 0x100000000, 0);
  return a1;
}

void sub_1AF245B2C(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  prof_beginFlame("Final Blur", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 32);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 480));
  v6 = *(v5 + 12);
  v7 = *(v5 + 12) << 32;
  v8 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v7 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ (v7 >> 56))))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v7 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ (v7 >> 56))))) >> 47));
  v11 = CFX::CrossFrameResourceManager::get(a2[4], v10);
  *(a1 + 448) = v11;
  if (!v11)
  {
    *(a1 + 448) = sub_1AF245D2C(a2[4], v10);
    v12 = sub_1AF12E2AC(*(a1 + 432));
    v16 = objc_msgSend_resourceManager(v12, v13, v14, v15);
    v17 = *(a1 + 448);
    v18 = sub_1AFDE868C(v16);
    *&v34 = objc_msgSend_frameworkLibrary(v18, v19, v20, v21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    *(&v34 + 1) = v6;
    BYTE8(v39) = HIBYTE(v7);
    *&v46 = @"vfx_draw_fullscreen_triangle_VR_pos_uv_uvNorm_vertex";
    *(&v46 + 1) = @"vfx_motionblur_blur";
    v24 = objc_msgSend_newRenderPipelineStateWithDesc_(v16, v22, v33, v23);
    sub_1AF23355C((v17 + 16), v24);
    v25 = *(a1 + 448);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    memset(v33, 0, sizeof(v33));
    v26 = sub_1AFDE868C(v16);
    *&v34 = objc_msgSend_frameworkLibrary(v26, v27, v28, v29);
    *(&v34 + 1) = v6;
    BYTE8(v39) = HIBYTE(v7);
    *&v46 = @"vfx_draw_fullscreen_triangle_VR_pos_uv_uvNorm_vertex";
    *(&v46 + 1) = @"vfx_motionblur_blur_resize";
    v32 = objc_msgSend_newRenderPipelineStateWithDesc_(v16, v30, v33, v31);
    sub_1AF23355C((v25 + 24), v32);
  }

  prof_endFlame();
}

uint64_t sub_1AF245D2C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF245DC0(uint64_t a1, CFX::RG::RenderGraphContext *a2)
{
  prof_beginFlame("Final Blur", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 67);
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v8 = objc_msgSend_renderEncoder(v4, v5, v6, v7);
  v9 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 456)) + 4);
  v10 = *(a1 + 448);
  if (*(v10 + 32) == v9 && v9 >> 16 == *(v10 + 34))
  {
    v11 = 16;
  }

  else
  {
    v11 = 24;
  }

  v12 = sub_1AF2338B0(v10 + v11);
  v16 = objc_msgSend_state(v12, v13, v14, v15);
  v19 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v17, v16, v18);
  v20 = *(a2 + 3);
  v21 = *(a1 + 456);
  v22 = CFX::RG::Temporal::currentFrame(v19);
  Texture = CFX::GPUResourceManager::getTexture(v20, v21, v22);
  v24 = *(a2 + 3);
  v25 = *(a1 + 464);
  v26 = CFX::RG::Temporal::currentFrame(Texture);
  v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
  v28 = *(a2 + 3);
  v29 = *(a1 + 472);
  v30 = CFX::RG::Temporal::currentFrame(v27);
  v31 = CFX::GPUResourceManager::getTexture(v28, v29, v30);
  sub_1AF1F8FCC(v8, v27, 0, v32);
  sub_1AF1F8FCC(v8, v31, 1, v33);
  sub_1AF1F8FCC(v8, Texture, 2, v34);
  v36 = xmmword_1AFE20670;
  sub_1AF176E98(v8, &v36, 0x10uLL, 0);
  sub_1AF2010C8(v8, v35);
  *(*(a1 + 448) + 32) = v9;
  prof_endFlame();
}

void sub_1AF245F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A6C0, memory_order_acquire) & 1) == 0)
  {
    v8 = a2;
    v9 = a3;
    sub_1AFDEF154();
    a2 = v8;
    a3 = v9;
  }

  if (byte_1ED73A6A0)
  {
    v7 = 0xF4EC03A93B2E1651;
  }

  else
  {
    v7 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v7, 0);
  *a1 = &unk_1F24E9C50;
  *(a1 + 440) = *(a5 + 16);
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
}

void sub_1AF246020(uint64_t *a1, uint64_t a2)
{
  prof_beginFlame("Neighbor max", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 130);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  a1[56] = v5;
  if (!v5)
  {
    a1[56] = sub_1AF246108(*(a2 + 32), v4);
    v6 = sub_1AF12E2AC(a1[54]);
    v10 = objc_msgSend_resourceManager(v6, v7, v8, v9);
    v11 = a1[56];
    v14 = objc_msgSend_newComputePipelineStateWithFunctionName_(v10, v12, @"vfx_motionblur_neighbormax_x", v13);
    sub_1AF23355C((v11 + 16), v14);
    v15 = a1[56];
    v18 = objc_msgSend_newComputePipelineStateWithFunctionName_(v10, v16, @"vfx_motionblur_neighbormax_y", v17);
    sub_1AF23355C((v15 + 24), v18);
  }

  prof_endFlame();
}

uint64_t sub_1AF246108(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF246190(uint64_t a1, uint64_t a2, id *a3)
{
  prof_beginFlame("Neighbor max", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 147);
  v6 = *(a2 + 24);
  v7 = *(a1 + 456);
  v9 = CFX::RG::Temporal::currentFrame(v8);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v9);
  v11 = *(a2 + 24);
  v12 = *(a1 + 464);
  v13 = CFX::RG::Temporal::currentFrame(Texture);
  v14 = CFX::GPUResourceManager::getTexture(v11, v12, v13);
  v15 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setTexture_atIndex_(v15, v16, Texture, 0);
  v17 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setTexture_atIndex_(v17, v18, v14, 1);
  v19 = 16;
  if (*(a1 + 440))
  {
    v19 = 24;
  }

  v20 = sub_1AF1403B4(*(a1 + 448) + v19);
  v21 = sub_1AFDE323C(v20);
  v22 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setComputePipelineState_(v22, v23, v21, v24);
  v25 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_dispatchOnTexture2DWithoutOptimizedThreadGroupPerGrid_(v25, v26, v14, v27);

  prof_endFlame();
}

uint64_t sub_1AF2462B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A6C8, memory_order_acquire) & 1) == 0)
  {
    v13 = a2;
    v14 = a3;
    sub_1AFDEF1A0();
    a2 = v13;
    a3 = v14;
  }

  if (byte_1ED73A6A8)
  {
    v8 = 0xE171746C2A666EDCLL;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v8, 0);
  *a1 = &unk_1F24E9CA8;
  *(a1 + 440) = *(a5 + 16);
  *(a1 + 464) = 0;
  v10 = CFX::RG::ResourceIdentifier::finalColor(v9);
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v16, v10, *(a5 + 16));
  if ((BYTE1(v17) & 1) == 0)
  {
    BYTE1(v17) = 1;
  }

  LOBYTE(v17) = 6;
  *(&v17 + 1) = 115;
  LOBYTE(v18) = 1;
  v15[6] = v22;
  v15[7] = v23;
  v15[8] = v24;
  v15[9] = v25;
  v15[2] = v18;
  v15[3] = v19;
  v15[4] = v20;
  v15[5] = v21;
  v15[0] = v16;
  v15[1] = v17;
  v11 = sub_1AF233CC8(a4, "MB-TileMax", v15);
  *(a1 + 456) = v11;
  CFX::RG::Pass::writeTo(a1, v11);
  return a1;
}

void sub_1AF246408(uint64_t *a1, uint64_t a2)
{
  prof_beginFlame("Motion blur tile max", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 191);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  a1[56] = v5;
  if (!v5)
  {
    a1[56] = sub_1AF2464CC(*(a2 + 32), v4);
    v6 = sub_1AF12E2AC(a1[54]);
    v10 = objc_msgSend_resourceManager(v6, v7, v8, v9);
    v11 = a1[56];
    v14 = objc_msgSend_newComputePipelineStateWithFunctionName_(v10, v12, @"vfx_motionblur_tilemax", v13);
    sub_1AF23355C((v11 + 16), v14);
  }

  prof_endFlame();
}

uint64_t sub_1AF2464CC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF246554(void *a1, uint64_t a2, id *a3)
{
  prof_beginFlame("Motion blur tile max", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 207);
  v6 = *(a2 + 24);
  v7 = a1[58];
  v9 = CFX::RG::Temporal::currentFrame(v8);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v9);
  v11 = *(a2 + 24);
  v12 = a1[57];
  v13 = CFX::RG::Temporal::currentFrame(Texture);
  v14 = CFX::GPUResourceManager::getTexture(v11, v12, v13);
  v15 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setTexture_atIndex_(v15, v16, Texture, 0);
  v17 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setTexture_atIndex_(v17, v18, v14, 1);
  v19 = sub_1AF1403B4(a1[56] + 16);
  v20 = sub_1AFDE323C(v19);
  v21 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setComputePipelineState_(v21, v22, v20, v23);
  v24 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_dispatchOnTexture2D_(v24, v25, v14, v26);
  v30 = 1;
  v31 = v14;
  while (v30 < objc_msgSend_mipmapLevelCount(v14, v27, v28, v29))
  {
    v35 = objc_msgSend_pixelFormat(v14, v32, v33, v34);
    v39 = objc_msgSend_textureType(v14, v36, v37, v38);
    v41 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v14, v40, v35, v39, v30, 1, 0, 1);
    v42 = CFX::RG::ComputePassArguments::encoder(a3);
    objc_msgSend_setTexture_atIndex_(v42, v43, v31, 0);
    v44 = CFX::RG::ComputePassArguments::encoder(a3);
    objc_msgSend_setTexture_atIndex_(v44, v45, v41, 1);
    v46 = CFX::RG::ComputePassArguments::encoder(a3);
    objc_msgSend_dispatchOnTexture2D_(v46, v47, v14, v48);

    ++v30;
    v31 = v41;
  }

  prof_endFlame();
}

CFX::RG::Temporal *sub_1AF246708(uint64_t *a1, uint64_t *a2)
{
  v4 = CFX::RG::Resource::constTextureDesc(a2[2]);
  CFX::RG::TextureDescriptorReference::withSampleCount(v4, 1, &v37);
  v5 = sub_1AF233CC8(a1, "VELOCITY COPY", &v37);
  *&v55 = a2[2];
  DWORD2(v55) = 0;
  v56 = v5;
  v57 = 0x100000000;
  CFX::RG::makeCopyPass(a1, "Copy velocity input", &v55);
  v6 = CFX::RG::Resource::constTextureDesc(a2[1]);
  CFX::RG::TextureDescriptorReference::withSampleCount(v6, 1, &v37);
  v7 = sub_1AF233CC8(a1, "COLOR COPY", &v37);
  *&v52 = a2[1];
  DWORD2(v52) = 0;
  v53 = v7;
  v54 = 0x100000000;
  CFX::RG::makeCopyPass(a1, "Copy color input", &v52);
  v8 = *a2;
  *&v37 = "MOTION_BLUR_TILE_MAX_BLUR";
  *(&v37 + 1) = v8;
  *v38 = 1056964608;
  v9 = sub_1AF246A5C(a1, a1, &v37);
  *(v9 + 58) = v5;
  v10 = CFX::RG::Temporal::currentFrame(v9);
  CFX::RG::Pass::readFrom(v9, v5, v10);
  v11 = CFX::RG::Resource::constTextureDesc(a2[1]);
  CFX::RG::TextureDescriptorReference::withSampleCount(v11, 1, &v42);
  LODWORD(v51) = 1015021568;
  *(&v43 + 1) = 115;
  LOBYTE(v44) = 1;
  *&v38[80] = v48;
  *&v38[96] = v49;
  *&v38[112] = v50;
  *&v38[128] = v51;
  *&v38[16] = v44;
  *&v38[32] = v45;
  *&v38[48] = v46;
  *&v38[64] = v47;
  v37 = v42;
  *v38 = v43;
  v12 = sub_1AF233CC8(a1, "MB-TileMaxN-X", &v37);
  v13 = *a2;
  v41[0] = "MOTION_BLUR_NEIGHBOR_MAX";
  v41[1] = v13;
  v41[2] = 0;
  v14 = sub_1AF246AB4(a1, a1, v41);
  v15 = *(v9 + 57);
  *(v14 + 57) = v15;
  v16 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(v14, v15, v16);
  *(v14 + 58) = v12;
  CFX::RG::Pass::writeTo(v14, v12);
  v17 = *a2;
  *&v37 = "MOTION_BLUR_NEIGHBOR_MAX";
  *(&v37 + 1) = v17;
  v38[0] = 1;
  v18 = sub_1AF246AB4(a1, a1, &v37);
  *(v18 + 57) = v12;
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(v18, v12, v19);
  *&v38[80] = v48;
  *&v38[96] = v49;
  *&v38[112] = v50;
  *&v38[128] = v51;
  *&v38[16] = v44;
  *&v38[32] = v45;
  *&v38[48] = v46;
  *&v38[64] = v47;
  v37 = v42;
  *v38 = v43;
  v20 = sub_1AF233CC8(a1, "MB-TileMaxN-XY", &v37);
  *(v18 + 58) = v20;
  CFX::RG::Pass::writeTo(v18, v20);
  v21 = *a2;
  *&v37 = "MOTION_BLUR_FINAL_BLUR";
  *(&v37 + 1) = v21;
  *v38 = 0;
  v22 = CFX::RG::Resource::constTextureDesc(v7);
  v23 = *v22;
  *&v38[24] = v22[1];
  *&v38[8] = v23;
  v24 = v22[2];
  v25 = v22[3];
  v26 = v22[4];
  *&v38[88] = v22[5];
  *&v38[72] = v26;
  *&v38[56] = v25;
  *&v38[40] = v24;
  v27 = v22[6];
  v28 = v22[7];
  v29 = v22[8];
  v39 = v22[9];
  *&v38[136] = v29;
  *&v38[120] = v28;
  *&v38[104] = v27;
  v40 = a2[3];
  v30 = sub_1AF246B0C(a1, a1, &v37);
  *(v30 + 57) = v7;
  v31 = CFX::RG::Temporal::currentFrame(v30);
  CFX::RG::Pass::readFrom(v30, v7, v31);
  *(v30 + 58) = v5;
  v33 = CFX::RG::Temporal::currentFrame(v32);
  CFX::RG::Pass::readFrom(v30, v5, v33);
  *(v30 + 59) = v20;
  v35 = CFX::RG::Temporal::currentFrame(v34);
  CFX::RG::Pass::readFrom(v30, v20, v35);
  return v30;
}

uint64_t sub_1AF246A5C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF246E48(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF246AB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  sub_1AF246EA8(v8[0], v5, v8, a2, a3);
  v8[0] = v6;
  sub_1AF235000(a1 + 22, v8);
  return v8[0];
}

uint64_t sub_1AF246B0C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF246EF8(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF246B68(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF246BA4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF246BE0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF246C18(uint64_t a1)
{
  *a1 = &unk_1F24E9D00;

  return a1;
}

void sub_1AF246C68(uint64_t a1)
{
  *a1 = &unk_1F24E9D00;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF246CD8(uint64_t a1)
{
  *a1 = &unk_1F24E9D20;

  return a1;
}

void sub_1AF246D28(uint64_t a1)
{
  *a1 = &unk_1F24E9D20;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF246D98(uint64_t a1)
{
  *a1 = &unk_1F24E9D40;

  return a1;
}

void sub_1AF246DE0(uint64_t a1)
{
  *a1 = &unk_1F24E9D40;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF246E48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u);
  return sub_1AF2462B8(v8, *a3, a3[1], a4, a5);
}

void sub_1AF246EA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  v7 = sub_1AF23498C(v9, 0x1D8u, 8u);
  sub_1AF245F7C(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF246EF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E8u, 8u);
  return sub_1AF245A14(v8, *a3, a3[1], a4, a5);
}

void sub_1AF246F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_1ED73A6D8, memory_order_acquire) & 1) == 0)
  {
    v7 = a2;
    v8 = a3;
    sub_1AFDEF1EC();
    a2 = v7;
    a3 = v8;
  }

  if (byte_1ED73A6D0)
  {
    v6 = 0x7E14DD3412D33777;
  }

  else
  {
    v6 = 0;
  }

  sub_1AF250390(a1, a2, a3, a4, v6, 0);
  *a1 = &unk_1F24E9D60;
  *(a1 + 448) = *(a4 + 24);
}

void sub_1AF246FF8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AF130770(*(a1 + 432), a2, a3, a4);
  prof_beginFlameSmallData("Overlay", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/OverlayPass.mm", 19, v5 | 0x300000000);
  if (*(a1 + 448) == 1)
  {
    v6 = sub_1AF12EE9C(*(a1 + 432), 0);
    v7 = v6;
    if (v6)
    {
      sub_1AF1012EC(v6);
      sub_1AF0FCF54(v7);
    }
  }

  if ((*(a1 + 448) & 1) != 0 || *(a1 + 449) == 1)
  {
    v8 = sub_1AF12F434(*(a1 + 432));
    objc_msgSend__endImGuiFrameAndRender(v8, v9, v10, v11);
  }

  prof_endFlame();
}

uint64_t sub_1AF2470B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a2 + 24) & 1) == 0 && *(a2 + 25) != 1)
  {
    return 0;
  }

  v6 = sub_1AF247134(a1, a2);
  CFX::RG::Pass::renderTo(v6, a3, 0x100000001, 0);
  if (a4)
  {
    CFX::RG::Pass::renderTo(v6, a4, 0x200000001, -1);
  }

  return v6;
}

uint64_t sub_1AF247134(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  sub_1AF2471C8(v7[0], v4, v7, a2);
  v7[0] = v5;
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF24718C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2471C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v6 = sub_1AF23498C(v7, 0x1C8u, 8u);
  sub_1AF246F58(v6, *a3, a3[1], a4);
}

uint64_t sub_1AF247218(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v8 = *a5;
  v17[0] = "PathTracerPass";
  v17[1] = v8;
  if ((atomic_load_explicit(&qword_1ED73A6E8, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v16 = a3;
    sub_1AFDEF238();
    a2 = v15;
    a3 = v16;
  }

  if (byte_1ED73A6E0)
  {
    v9 = 0x3A712055557F5840;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, v17, v9, 0);
  *a1 = &unk_1F24E9DB8;
  *(a1 + 440) = *a5;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::ResourceReference::ResourceReference(v17, *(a1 + 448));
  *(a1 + 472) = sub_1AF24736C(v10, "Color", v17);
  v11 = sub_1AF247440(a1, a4);
  v12 = *(*(a1 + 464) + 16);
  v13 = CFX::RG::Temporal::previousFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 464) + 16));
  return a1;
}

CFX::RG::Resource *sub_1AF24736C(uint64_t a1, uint64_t a2, CFX::RG::ResourceReference *this)
{
  v16 = a2;
  v15 = CFX::RG::ResourceReference::reference(this);
  v5 = CFX::RG::ResourceIdentifier::hash(&v15);
  v6 = (*(a1 + 316) - 1) & v5;
  v7 = *(*(a1 + 304) + 2 * v6);
  if (v7 < 2)
  {
    goto LABEL_5;
  }

  while ((v7 & 2) == 0 || v5 != *(*(a1 + 288) + 8 * v6))
  {
    ++v6;
    v8 = v7 > 3;
    v7 >>= 1;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v14 = *(a1 + 296);
  if (v14)
  {
    return *(v14 + 24 * v6 + 8);
  }

LABEL_5:
  v9 = *a1;
  v10 = *(a1 + 8);
  LOBYTE(v15) = 1;
  sub_1AF248404(v9, v10, &v16, this, &v15);
  v12 = v11;
  CFX::RG::RenderGraphBuilder::appendResource(a1, v11);
  return v12;
}

uint64_t sub_1AF247440(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::RenderGraphContext::tryResolvedTextureDescriptor(a2, *(a1 + 472));
  v5 = CFX::RG::Pass::hash(a1);
  v6 = *(v4 + 4);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v5)))) >> 47));
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v6 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ (v6 >> 16))));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ *(v4 + 6));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47)));
  *(a1 + 464) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF24760C(uint64_t a1, uint64_t a2)
{
  sub_1AF247440(a1, a2);

  return sub_1AF24764C(a1, a2);
}

uint64_t sub_1AF24764C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = sub_1AF12DDCC(*(a1 + 432));
  v9 = sub_1AF1D0140(v8);
  result = sub_1AF12F10C(*(a1 + 432));
  if (result)
  {
    result = sub_1AF1BB260(result);
    if (result)
    {
      v11 = result;
      v14 = sub_1AF1D005C(v8, 0);
      if (v14)
      {
        objc_msgSend_textureForMaterialProperty_(v4, v12, v14, v13);
      }

      v15 = sub_1AF1D0008(v8, 0);
      v18 = objc_msgSend_textureForMaterialProperty_(v4, v16, v15, v17);
      v19 = (v18 | sub_1AF1660D8(v15)) != 0;
      v20 = sub_1AF1D0398(v8);
      v21 = v20 != sub_1AF1D02FC(v8);
      v22 = sub_1AF15CE6C(v11);
      v33 = sub_1AF1449E0(v9);
      v23 = sub_1AF1449F0(v9) != 0;
      v24 = sub_1AF12DDCC(*(a1 + 432));
      v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v24) ^ ((0x9DDFEA08EB382D69 * v24) >> 47));
      v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ v19)));
      v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ (v18 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ (v18 != 0))));
      v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ v21)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ v21)));
      v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ v14)));
      v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ v33)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ v33)));
      v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ v23)));
      v32 = 0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47));
      result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ ((0x9DDFEA08EB382D69 * (v32 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v32 ^ v22)))) ^ ((0x9DDFEA08EB382D69 * (v32 ^ ((0x9DDFEA08EB382D69 * (v32 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v32 ^ v22)))) >> 47)));
      *(a1 + 456) = result;
      if (!result)
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_1AF247A74(uint64_t *a1, uint64_t a2, id *a3)
{
  v6 = sub_1AF12E2AC(a1[54]);
  v7 = CFX::RG::ComputePassArguments::encoder(a3);
  if (!*(a1[57] + 16))
  {
    return;
  }

  v8 = v7;
  v9 = sub_1AF12DDCC(a1[54]);
  v10 = sub_1AF12F10C(a1[54]);
  if (!v10)
  {
    return;
  }

  v11 = sub_1AF1BB260(v10);
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = sub_1AF12F10C(a1[54]);
  sub_1AF27F12C(v13, v145);
  v14 = sub_1AF13050C(a1[54], 1);
  v141 = v14[1];
  v142 = *v14;
  v140 = v14[2];
  v143 = v14[3];
  v144 = 0uLL;
  v144 = sub_1AF12FCE8(a1[54], 0);
  v15 = sub_1AF1D0140(v9);
  v16 = a1[57];
  v16[2] = v142;
  v16[3] = v141;
  v16[4] = v140;
  v16[5] = v143;
  *(a1[57] + 96) = __invert_f4(*(a1[57] + 32));
  v17 = sub_1AF15E62C(v145, &v144);
  v18 = 0;
  v19 = *(v17 + 1);
  v20 = *(v17 + 2);
  v21 = *(v17 + 3);
  v22 = a1[57];
  v22[10] = *v17;
  v22[11] = v19;
  v22[12] = v20;
  v22[13] = v21;
  v23 = a1[57];
  v24 = v23[10];
  v25 = v23[11];
  v26 = v23[12];
  v27 = v23[13];
  v28 = v23[3];
  v29 = v23[4];
  v30 = v23[5];
  v146[0] = v23[2];
  v146[1] = v28;
  v146[2] = v29;
  v146[3] = v30;
  do
  {
    v147.columns[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(v146[v18])), v25, *&v146[v18], 1), v26, v146[v18], 2), v27, v146[v18], 3);
    ++v18;
  }

  while (v18 != 4);
  *(a1[57] + 224) = __invert_f4(v147);
  *(a1[57] + 424) = sub_1AF15D9E8(v12);
  *(a1[57] + 428) = (sub_1AF15DC58(v12) / 1000.0) * 0.5;
  v31 = sub_1AF1D005C(v9, 0);
  if (v31)
  {
    v32 = sub_1AF166598(v31);
  }

  else
  {
    v32 = 0.0;
  }

  *(a1[57] + 432) = v32;
  v33 = sub_1AF12EF08(a1[54]);
  sub_1AF1D04D4(v9, v33);
  *(a1[57] + 464) = v34;
  *(a1[57] + 480) = *sub_1AF1D048C(v9);
  v35 = sub_1AF1D0008(v9, 0);
  v36 = v35;
  if (v35)
  {
    *(a1[57] + 436) = sub_1AF166598(v35);
    v40 = objc_msgSend_textureForMaterialProperty_(v6, v37, v36, v38);
    if (v40)
    {
      objc_msgSend_setTexture_atIndex_(v8, v39, v40, 9);
    }

    else
    {
      v42 = sub_1AF1660D8(v36);
      if (v42)
      {
        *(a1[57] + 448) = *v42;
      }
    }

    v43 = sub_1AF167220(v36);
    if (v43)
    {
      v148 = __invert_f4(*v43);
    }

    else
    {
      v148 = **&MEMORY[0x1E69E9B18];
    }

    *(a1[57] + 352) = v148;
    v41 = 0x9DDFEA08EB382D69 * v40;
  }

  else
  {
    v41 = 0;
    *(a1[57] + 436) = 0;
  }

  v44 = sub_1AF1D005C(v9, 0);
  if (v44)
  {
    v47 = v44;
    v49 = objc_msgSend_textureForMaterialProperty_(v6, v45, v44, v46);
    if (v49)
    {
      objc_msgSend_setTexture_atIndex_(v8, v48, v49, 10);
    }

    if (v36)
    {
      v50 = sub_1AF167220(v47);
    }

    else
    {
      v50 = 0;
    }

    v51 = MEMORY[0x1E69E9B18];
    if (v50)
    {
      v51 = v50;
    }

    v52 = *v51;
    v53 = v51[1];
    v54 = v51[2];
    v55 = v51[3];
    v56 = a1[57];
    v56[18] = v52;
    v56[19] = v53;
    v56[20] = v54;
    v56[21] = v55;
  }

  else
  {
    v49 = 0;
  }

  v57 = a1[57];
  v58 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v41 ^ (v41 >> 47))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ (v41 >> 47))) >> 47));
  v59 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v58 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v58)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v58)))) ^ ((0x9DDFEA08EB382D69 * (v58 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v58)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v58)))) >> 47));
  v60 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ COERCE_UNSIGNED_INT64(*&v143))) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ COERCE_UNSIGNED_INT64(*&v143))));
  v61 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47))) ^ COERCE_UNSIGNED_INT64(*(&v143 + 1)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47))) ^ COERCE_UNSIGNED_INT64(*(&v143 + 1)))));
  v62 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v61 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v61 >> 47))) ^ COERCE_UNSIGNED_INT64(*(&v143 + 2)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v61 >> 47))) ^ COERCE_UNSIGNED_INT64(*(&v143 + 2)))));
  v63 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v62 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v62 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v57 + 424)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v62 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v57 + 424)))));
  v64 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v63 ^ (v63 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v63 ^ (v63 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v57 + 428)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v63 ^ (v63 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v57 + 428)))));
  v65 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v64 ^ (v64 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v64 ^ (v64 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v57 + 432)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v64 ^ (v64 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v57 + 432)))));
  v66 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v65 ^ (v65 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v65 ^ (v65 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v57 + 436)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v65 ^ (v65 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v57 + 436)))));
  v67 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v66 ^ (v66 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v66 ^ (v66 >> 47))) ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v57 + 464))))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v66 ^ (v66 >> 47))) ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v57 + 464))))));
  v68 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v67 ^ (v67 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v67 ^ (v67 >> 47))) ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(v57 + 464)))))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v67 ^ (v67 >> 47))) ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(v57 + 464)))))));
  v69 = 0x9DDFEA08EB382D69 * (v68 ^ (v68 >> 47));
  v70 = 0x9DDFEA08EB382D69 * (v69 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v57 + 472))));
  v71 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v69 ^ (v70 >> 47) ^ v70)) ^ ((0x9DDFEA08EB382D69 * (v69 ^ (v70 >> 47) ^ v70)) >> 47));
  v72 = 0x9DDFEA08EB382D69 * (v71 ^ ((0x9DDFEA08EB382D69 * (v71 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v57 + 480))))) >> 47) ^ (0x9DDFEA08EB382D69 * (v71 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v57 + 480))))));
  v73 = 0x9DDFEA08EB382D69 * (v72 ^ (v72 >> 47));
  v74 = 0x9DDFEA08EB382D69 * (v73 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(v57 + 480)))));
  v75 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v73 ^ (v74 >> 47) ^ v74)) ^ ((0x9DDFEA08EB382D69 * (v73 ^ (v74 >> 47) ^ v74)) >> 47));
  v76 = 0x9DDFEA08EB382D69 * (v75 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v57 + 488))));
  v77 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v75 ^ (v76 >> 47) ^ v76)) ^ ((0x9DDFEA08EB382D69 * (v75 ^ (v76 >> 47) ^ v76)) >> 47));
  v78 = 0x9DDFEA08EB382D69 * (v77 ^ COERCE_UNSIGNED_INT64(*(v57 + 288)));
  v79 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v77 ^ (v78 >> 47) ^ v78)) ^ ((0x9DDFEA08EB382D69 * (v77 ^ (v78 >> 47) ^ v78)) >> 47));
  v80 = 0x9DDFEA08EB382D69 * (v79 ^ COERCE_UNSIGNED_INT64(*(v57 + 308)));
  v81 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v79 ^ (v80 >> 47) ^ v80)) ^ ((0x9DDFEA08EB382D69 * (v79 ^ (v80 >> 47) ^ v80)) >> 47));
  v82 = 0x9DDFEA08EB382D69 * (v81 ^ COERCE_UNSIGNED_INT64(*(v57 + 328)));
  v83 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v81 ^ (v82 >> 47) ^ v82)) ^ ((0x9DDFEA08EB382D69 * (v81 ^ (v82 >> 47) ^ v82)) >> 47));
  v84 = 0x9DDFEA08EB382D69 * (v83 ^ COERCE_UNSIGNED_INT64(*(v57 + 352)));
  v85 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v83 ^ (v84 >> 47) ^ v84)) ^ ((0x9DDFEA08EB382D69 * (v83 ^ (v84 >> 47) ^ v84)) >> 47));
  v86 = 0x9DDFEA08EB382D69 * (v85 ^ COERCE_UNSIGNED_INT64(*(v57 + 372)));
  v87 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v85 ^ (v86 >> 47) ^ v86)) ^ ((0x9DDFEA08EB382D69 * (v85 ^ (v86 >> 47) ^ v86)) >> 47));
  v88 = 0x9DDFEA08EB382D69 * (v87 ^ COERCE_UNSIGNED_INT64(*(v57 + 392)));
  v89 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v87 ^ (v88 >> 47) ^ v88)) ^ ((0x9DDFEA08EB382D69 * (v87 ^ (v88 >> 47) ^ v88)) >> 47));
  isPaused = sub_1AF12F434(a1[54]);
  v91 = a1[57];
  if (v89 != *(v91 + 496))
  {
LABEL_32:
    *(v91 + 416) = 0;
    goto LABEL_34;
  }

  v92 = isPaused;
  isPaused = sub_1AF144828(v15);
  if (isPaused)
  {
    v96 = objc_msgSend_world(v92, v93, v94, v95);
    v100 = objc_msgSend_clock(v96, v97, v98, v99);
    isPaused = objc_msgSend_isPaused(v100, v101, v102, v103);
    v91 = a1[57];
    if (isPaused)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v91 = a1[57];
LABEL_34:
  v104 = 0;
  *(v91 + 496) = v89;
  do
  {
    v105 = a1[v104 + 60];
    if (v105)
    {
      v106 = *(a2 + 24);
      v107 = CFX::RG::Temporal::currentFrame(isPaused);
      Texture = CFX::GPUResourceManager::getTexture(v106, v105, v107);
      isPaused = objc_msgSend_setTexture_atIndex_(v8, v109, Texture, v104);
    }

    ++v104;
  }

  while (v104 != 9);
  v110 = *(a2 + 24);
  v111 = *(a1[58] + 16);
  v112 = CFX::RG::Temporal::currentFrame(isPaused);
  v113 = CFX::GPUResourceManager::getTexture(v110, v111, v112);
  v114 = *(a2 + 24);
  v115 = *(a1[58] + 16);
  v116 = CFX::RG::Temporal::previousFrame(v113);
  v117 = CFX::GPUResourceManager::getTexture(v114, v115, v116);
  objc_msgSend_setTexture_atIndex_(v8, v118, v113, 11);
  objc_msgSend_setTexture_atIndex_(v8, v119, v117, 12);
  sub_1AF144838(v15, v8);
  v120 = sub_1AF1448D8(v15);
  objc_msgSend_setBuffer_offset_atIndex_(v8, v121, v120, 0, 0);
  v122 = sub_1AF1448D0(v15);
  objc_msgSend_setAccelerationStructure_atBufferIndex_(v8, v123, v122, 1);
  if (sub_1AF1449E0(v15))
  {
    v124 = sub_1AF1448E0(v15);
    objc_msgSend_setBuffer_offset_atIndex_(v8, v125, v124, 0, 2);
  }

  if (sub_1AF1449F0(v15))
  {
    v126 = sub_1AF1403B4(a1[57] + 16);
    v127 = sub_1AFDE323C(v126);
    v128 = sub_1AF144918(v15, v127);
    objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v8, v129, v128, 3);
  }

  v130 = sub_1AF1448E8(v15);
  v134 = sub_1AF144A00(v15, v131, v132, v133);
  objc_msgSend_useResources_count_usage_(v8, v135, v130, v134, 1);
  objc_msgSend_setBytes_length_atIndex_(v8, v136, a1[57] + 32, 464, 8);
  v137 = sub_1AF1403B4(a1[57] + 16);
  v138 = sub_1AFDE323C(v137);
  objc_msgSend_dispatch_onTexture2D_(v8, v139, v138, v113);
  *(a1[57] + 416) = vadd_s32(*(a1[57] + 416), 0x100000001);
  sub_1AF12ED38(a1[54]);
}

double sub_1AF248314(CFX::RG::Temporal *a1, unint64_t a2, unsigned int a3)
{
  *(a1 + a3 + 60) = a2;
  v5 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v5);
}

uint64_t sub_1AF248370(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2485F0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF2483CC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF248404(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4, char *a5)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = sub_1AF23498C(v17, 0xE0u, 8u);
  v9 = *a3;
  v10 = a4[7];
  v16[6] = a4[6];
  v16[7] = v10;
  v11 = a4[9];
  v16[8] = a4[8];
  v16[9] = v11;
  v12 = a4[3];
  v16[2] = a4[2];
  v16[3] = v12;
  v13 = a4[5];
  v16[4] = a4[4];
  v16[5] = v13;
  v14 = a4[1];
  v16[0] = *a4;
  v16[1] = v14;
  *&result = CFX::RG::Resource::Resource(v8, v9, v16, *a5, 1).n128_u64[0];
  return result;
}

uint64_t sub_1AF248490(uint64_t a1)
{
  *a1 = &unk_1F24E9E10;

  return a1;
}

void sub_1AF2484D8(uint64_t a1)
{
  *a1 = &unk_1F24E9E10;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF248540(uint64_t a1)
{
  *a1 = &unk_1F24E9E30;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF248588(uint64_t a1)
{
  *a1 = &unk_1F24E9E30;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2485F0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x228u, 8u);
  return sub_1AF247218(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF248650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, CFX::CrossFrameResourceManager **a5, uint64_t *a6)
{
  v12 = *a6;
  *&v89 = "RayTracerPass";
  *(&v89 + 1) = v12;
  if ((atomic_load_explicit(&qword_1ED73A6F8, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF284();
  }

  if (byte_1ED73A6F0)
  {
    v13 = 0x649EF6CA24A2DFE3;
  }

  else
  {
    v13 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v89, v13, 0);
  *a1 = &unk_1F24E9E50;
  *(a1 + 440) = *a6;
  v14 = a1 + 456;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v15 = sub_1AF12E2AC(*(a1 + 432));
  *(a1 + 472) = v15;
  *(a1 + 480) = objc_msgSend_resourceManager(v15, v16, v17, v18);
  v19 = sub_1AF12DDCC(*(a1 + 432));
  v20 = sub_1AF1D0140(v19);
  v21 = sub_1AF12F10C(*(a1 + 432));
  if (v21)
  {
    v22 = sub_1AF1BB260(v21);
    if (v22)
    {
      v86 = a5;
      v23 = CFX::RG::Pass::hash(a1);
      v24 = CFX::CrossFrameResourceManager::get(a5[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v19)))) ^ ((0x9DDFEA08EB382D69 * (v23 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v19)))) >> 47)));
      *v14 = v24;
      if (!v24)
      {
        operator new();
      }

      v97 = 0;
      v25 = sub_1AF1D005C(v19, 0);
      v28 = sub_1AF1D0008(v19, 0);
      if (v28)
      {
        HIBYTE(v97) = objc_msgSend_textureForMaterialProperty_(*(a1 + 472), v26, v28, v27) != 0;
      }

      if (v25)
      {
        LOBYTE(v97) = objc_msgSend_textureForMaterialProperty_(*(a1 + 472), v26, v25, v27) != 0;
      }

      v29 = sub_1AF15CE6C(v22);
      v96 = v29;
      v30 = sub_1AF1449E0(v20);
      v31 = v20;
      v32 = a4;
      v95 = v30;
      v85 = v31;
      v33 = sub_1AF1449F0(v31);
      v94 = v33 != 0;
      v37 = objc_msgSend_rayMap(*(a1 + 472), v34, v35, v36);
      v93 = v37 != 0;
      v41 = objc_msgSend_rayMap(*(a1 + 472), v38, v39, v40);
      objc_msgSend_zOrigin(v41, v42, v43, v44);
      v46 = v45;
      v92 = v45;
      v50 = objc_msgSend_rayMap(*(a1 + 472), v47, v48, v49);
      objc_msgSend_scale(v50, v51, v52, v53);
      v91 = v54;
      v55 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v28) ^ ((0x9DDFEA08EB382D69 * v28) >> 47));
      v56 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v55 ^ (v55 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v55 ^ (v55 >> 47))) ^ v25)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v55 ^ (v55 >> 47))) ^ v25)));
      v57 = 0x9DDFEA08EB382D69 * (v56 ^ (v56 >> 47));
      v58 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v57 ^ ((0x9DDFEA08EB382D69 * (v57 ^ v30)) >> 47) ^ (0x9DDFEA08EB382D69 * (v57 ^ v30)))) ^ ((0x9DDFEA08EB382D69 * (v57 ^ ((0x9DDFEA08EB382D69 * (v57 ^ v30)) >> 47) ^ (0x9DDFEA08EB382D69 * (v57 ^ v30)))) >> 47));
      v59 = 0x9DDFEA08EB382D69 * (v58 ^ ((0x9DDFEA08EB382D69 * (v58 ^ (v33 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * (v58 ^ (v33 != 0))));
      v60 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ (v59 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ (v59 >> 47))) ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ (v59 >> 47))) ^ v29)));
      v61 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47))) ^ (v37 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47))) ^ (v37 != 0))));
      v62 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v61 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v61 >> 47))) ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v61 >> 47))) ^ v46)));
      v63 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v62 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v62 >> 47))) ^ *&v54)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v62 >> 47))) ^ *&v54)));
      v64 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v63 ^ (v63 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v63 ^ (v63 >> 47))) ^ *(&v54 + 1))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v63 ^ (v63 >> 47))) ^ *(&v54 + 1))));
      v65 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v64 ^ (v64 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v64 ^ (v64 >> 47))) ^ *(&v54 + 2))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v64 ^ (v64 >> 47))) ^ *(&v54 + 2))));
      v66 = 0x9DDFEA08EB382D69 * (v65 ^ (v65 >> 47));
      v67 = v32;
      if (*(*v14 + 480) != v66)
      {
        *(*v14 + 480) = v66;
        v68 = objc_alloc_init(MEMORY[0x1E6974060]);
        objc_msgSend_setConstantValue_type_withName_(v68, v69, &v97 + 1, 53, @"HasBackground");
        objc_msgSend_setConstantValue_type_withName_(v68, v70, &v97, 53, @"HasIBL");
        objc_msgSend_setConstantValue_type_withName_(v68, v71, &v96, 53, @"HasDOF");
        objc_msgSend_setConstantValue_type_withName_(v68, v72, &v95, 33, @"LightCount");
        objc_msgSend_setConstantValue_type_withName_(v68, v73, &v94, 33, @"raytracing_use_function_constant");
        objc_msgSend_setConstantValue_type_withName_(v68, v74, &v93, 53, @"has_raymap");
        objc_msgSend_setConstantValue_type_withName_(v68, v75, &v92, 3, @"raymap_origin_z");
        objc_msgSend_setConstantValue_type_withName_(v68, v76, &v91, 5, @"raymap_scale");
        v78 = sub_1AF1448F0(v85, v77);
        v80 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_linkedFunctions_(*(a1 + 480), v79, @"vfx_ray_tracer", v68, v78);

        sub_1AF23355C((*v14 + 488), v80);
      }

      CFX::RG::RenderGraphBuilder::findPublishedResource(v67, *(a1 + 448));
      v82 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(v86, v81);
      v89 = *v82;
      v90 = *(v82 + 16);
      v87 = v89;
      v88 = v90;
      v83 = sub_1AF2373FC(v67, "RAYTRACER OUTPUT", &v87);
      *(a1 + 464) = v83;
      CFX::RG::Pass::writeTo(a1, v83);
    }
  }

  return a1;
}

void sub_1AF248C88(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(*(a1 + 456) + 488))
  {
    v6 = v5;
    v7 = sub_1AF12DDCC(*(a1 + 432));
    v8 = sub_1AF12F10C(*(a1 + 432));
    if (v8)
    {
      if (sub_1AF1BB260(v8))
      {
        v9 = sub_1AF12F10C(*(a1 + 432));
        sub_1AF27F12C(v9, v111);
        v110 = sub_1AF12FCE8(*(a1 + 432), 0);
        v10 = sub_1AF1D0140(v7);
        if (objc_msgSend_rayMap(*(a1 + 472), v11, v12, v13))
        {
          v113.columns[0].i64[0] = 0;
          v113.columns[0].i64[1] = &v113;
          v113.columns[1].i64[0] = 0x2020000000;
          v113.columns[1].i32[2] = 1065353216;
          v14 = sub_1AF1CF7E8(v7);
          v109[0] = MEMORY[0x1E69E9820];
          v109[1] = 3221225472;
          v109[2] = sub_1AF24919C;
          v109[3] = &unk_1E7A7D9A8;
          v109[4] = &v113;
          v109[5] = a1;
          if ((sub_1AF1B94AC(v14, v109) & 1) == 0)
          {
            if ((byte_1EB6587C0 & 1) == 0)
            {
              byte_1EB6587C0 = 1;
              v16 = sub_1AF0D5194();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                sub_1AFDEF2D0(v16);
              }
            }

            v17 = *(a1 + 456);
            v17[5] = xmmword_1AFE20150;
            v17[6] = xmmword_1AFE20160;
            v17[7] = xmmword_1AFE20180;
            v17[8] = xmmword_1AFE201A0;
          }

          objc_msgSend_setBytes_length_atIndex_(v6, v15, v113.columns[0].i64[1] + 24, 4, 9);
          _Block_object_dispose(&v113, 8);
        }

        else
        {
          v18 = sub_1AF13050C(*(a1 + 432), 1);
          v19 = v18[1];
          v20 = v18[2];
          v21 = v18[3];
          v22 = *(a1 + 456);
          v22[1] = *v18;
          v22[2] = v19;
          v22[3] = v20;
          v22[4] = v21;
          *(*(a1 + 456) + 80) = __invert_f4(*(*(a1 + 456) + 16));
          v23 = sub_1AF15E62C(v111, &v110);
          v24 = 0;
          v25 = *(v23 + 1);
          v26 = *(v23 + 2);
          v27 = *(v23 + 3);
          v28 = *(a1 + 456);
          v28[9] = *v23;
          v28[10] = v25;
          v28[11] = v26;
          v28[12] = v27;
          v29 = *(a1 + 456);
          v30 = v29[9];
          v31 = v29[10];
          v32 = v29[11];
          v33 = v29[12];
          v34 = v29[2];
          v35 = v29[3];
          v36 = v29[4];
          v112[0] = v29[1];
          v112[1] = v34;
          v112[2] = v35;
          v112[3] = v36;
          do
          {
            v113.columns[v24] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(v112[v24])), v31, *&v112[v24], 1), v32, v112[v24], 2), v33, v112[v24], 3);
            ++v24;
          }

          while (v24 != 4);
          *(*(a1 + 456) + 208) = __invert_f4(v113);
        }

        v37 = sub_1AF1D005C(v7, 0);
        v38 = v37;
        if (v37)
        {
          v39 = sub_1AF166598(v37);
        }

        else
        {
          v39 = 0.0;
        }

        *(*(a1 + 456) + 416) = v39;
        v40 = sub_1AF12E2AC(*(a1 + 432));
        objc_msgSend_setBytes_length_atIndex_(v6, v41, *(a1 + 456) + 16, 464, 8);
        v42 = sub_1AF1D0008(v7, 0);
        if (v42)
        {
          v45 = objc_msgSend_textureForMaterialProperty_(v40, v43, v42, v44);
          if (v45)
          {
            objc_msgSend_setTexture_atIndex_(v6, v46, v45, 5);
          }
        }

        v47 = sub_1AF1D005C(v7, 0);
        if (v47)
        {
          v50 = objc_msgSend_textureForMaterialProperty_(v40, v48, v47, v49);
          if (v50)
          {
            objc_msgSend_setTexture_atIndex_(v6, v51, v50, 6);
          }

          v53 = objc_msgSend_radianceTextureForMaterialProperty_(v40, v51, v38, v52);
          if (v53)
          {
            objc_msgSend_setTexture_atIndex_(v6, v54, v53, 12);
          }

          v57 = objc_msgSend_resourceManager(v40, v54, v55, v56);
          v60 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(v57, v58, v40, v59);
          if (v60)
          {
            objc_msgSend_setTexture_atIndex_(v6, v61, v60, 13);
          }

          v47 = objc_msgSend_irradianceTextureForMaterialProperty_(v40, v61, v38, v62);
          if (v47)
          {
            v47 = objc_msgSend_setTexture_atIndex_(v6, v63, v47, 14);
          }
        }

        v64 = *(a2 + 24);
        v65 = *(a1 + 464);
        v66 = CFX::RG::Temporal::currentFrame(v47);
        Texture = CFX::GPUResourceManager::getTexture(v64, v65, v66);
        objc_msgSend_setTexture_atIndex_(v6, v68, Texture, 10);
        sub_1AF144838(v10, v6);
        v69 = sub_1AF1448D8(v10);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v70, v69, 0, 0);
        v71 = sub_1AF1448D0(v10);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v6, v72, v71, 1);
        if (sub_1AF1449E0(v10))
        {
          v76 = sub_1AF1448E0(v10);
          objc_msgSend_setBuffer_offset_atIndex_(v6, v77, v76, 0, 2);
        }

        if (objc_msgSend_rayMap(v40, v73, v74, v75))
        {
          v81 = objc_msgSend_rayMap(v40, v78, v79, v80);
          v85 = objc_msgSend_originTexture(v81, v82, v83, v84);
          objc_msgSend_setTexture_atIndex_(v6, v86, v85, 15);
          v90 = objc_msgSend_rayMap(v40, v87, v88, v89);
          v94 = objc_msgSend_directionTexture(v90, v91, v92, v93);
          objc_msgSend_setTexture_atIndex_(v6, v95, v94, 16);
        }

        if (sub_1AF1449F0(v10))
        {
          v96 = sub_1AF1403B4(*(a1 + 456) + 488);
          v97 = sub_1AFDE323C(v96);
          v98 = sub_1AF144918(v10, v97);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v6, v99, v98, 3);
        }

        v100 = sub_1AF1448E8(v10);
        v104 = sub_1AF144A00(v10, v101, v102, v103);
        objc_msgSend_useResources_count_usage_(v6, v105, v100, v104, 1);
        v106 = sub_1AF1403B4(*(a1 + 456) + 488);
        v107 = sub_1AFDE323C(v106);
        objc_msgSend_dispatch_onTexture2D_(v6, v108, v107, Texture);
        sub_1AF12ED38(*(a1 + 432));
      }
    }
  }
}

uint64_t sub_1AF24919C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (!sub_1AF1BB028(a2) || (sub_1AF1B7348(a2) & 1) != 0)
  {
    return 0;
  }

  v6 = sub_1AF1BA1FC(a2);
  v7 = *(v6 + 16);
  v9 = *(v6 + 32);
  v8 = *(v6 + 48);
  v10 = vmulq_f32(*v6, *v6);
  v11 = vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v10.f32[2] + v11));
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v10.f32[2] + v11), vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(*v6, vmul_f32(*v10.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v10.f32[2] + v11), vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v12.i32[3] = HIDWORD(*v6);
  v13 = vmulq_f32(v7, v7);
  *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(v14);
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
  v15 = vmulq_n_f32(v7, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
  v15.i32[3] = v7.i32[3];
  v16 = vmulq_f32(v9, v9);
  *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
  *v18.f32 = vmul_f32(*v16.f32, *v16.f32);
  v19 = vrsqrts_f32(v17, *v18.f32);
  v20 = vmulq_n_f32(v9, vmul_f32(*v16.f32, v19).f32[0]);
  v20.i32[3] = v9.i32[3];
  v21 = *(v4 + 456);
  v21[5] = v12;
  v21[6] = v15;
  v21[7] = v20;
  v21[8] = v8;
  v22 = sub_1AF1BA070(a2, *&v8, *v15.i64, *v20.i64, *v9.i64, *v12.i64, *&v19, v18);
  *&v22 = fmaxf(fmaxf(*&v22, v23), *(&v22 + 1)) * 0.01;
  *(*(*(a1 + 32) + 8) + 24) = LODWORD(v22);
  return 2;
}

uint64_t sub_1AF249310(uint64_t *a1, uint64_t *a2, CFX::CrossFrameResourceManager **a3, uint64_t *a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF249458(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF249370(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2493A8(uint64_t a1)
{
  *a1 = &unk_1F24E9EA8;

  return a1;
}

void sub_1AF2493F0(uint64_t a1)
{
  *a1 = &unk_1F24E9EA8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF249458(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, CFX::CrossFrameResourceManager **a5, uint64_t *a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x1E8u, 8u);
  return sub_1AF248650(v10, *a3, a3[1], a4, a5, a6);
}

uint64_t sub_1AF2494C0(uint64_t a1)
{
  *a1 = &unk_1F24E9EC8;
  sub_1AF14118C(*(a1 + 16), *(a1 + 24));
  return a1;
}

void sub_1AF24950C(uint64_t a1)
{
  *a1 = &unk_1F24E9EC8;
  sub_1AF14118C(*(a1 + 16), *(a1 + 24));

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF249578(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  if ((atomic_load_explicit(&qword_1ED73A708, memory_order_acquire) & 1) == 0)
  {
    v12 = a2;
    v13 = a3;
    sub_1AFDEF314();
    a2 = v12;
    a3 = v13;
  }

  if (byte_1ED73A700)
  {
    v7 = 0x6FBB381A1ACF1CB0;
  }

  else
  {
    v7 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, "RaytracingSystemPass", 1, v7, 0);
  *this = &unk_1F24E9EE8;
  *(this + 53) = 0;
  *(this + 27) = *a5;
  v8 = *(this + 54);
  v9 = sub_1AF12DDCC(v8);
  v10 = sub_1AF1D0140(v9);
  *(this + 56) = v10;
  sub_1AF1443C0(v10, v8);
  return this;
}

uint64_t sub_1AF249658(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = *(a1 + 54);
  v5 = sub_1AF12DDCC(v4);
  v6 = sub_1AF1D0140(v5);
  *(a1 + 56) = v6;
  sub_1AF1443C0(v6, v4);
  v7 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) >> 47)));
  *(a1 + 53) = result;
  if (!result)
  {
    sub_1AF249704();
  }

  return result;
}

void sub_1AF2497C0(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a3)
  {
    case 3:
      v7 = *(a1 + 56);

      sub_1AF144818(v7, a2, a3, a4);
      break;
    case 1:
      v5 = *(a1 + 56);
      v6 = CFX::RG::RendererPassArguments::commandBuffer((a4 + 8));

      sub_1AF144410(v5, v6);
    case 0:

      sub_1AF249658(a1, a2);
      break;
  }
}

uint64_t sub_1AF249840(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2498D4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF24989C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF2498D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _OWORD *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x1C8u, 8u);
  return sub_1AF249578(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF249924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  *&v24 = a2;
  *(&v24 + 1) = a3;
  if ((atomic_load_explicit(&qword_1ED73A720, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF360();
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A718, 0);
  *a1 = &unk_1F24E9F20;
  v10 = *(a5 + 40);
  *(a1 + 456) = *(a5 + 24);
  *(a1 + 440) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = v10;
  *(CFX::RG::Pass::commonRenderParameters(v11) + 277) = 6;
  memset(v23, 0, sizeof(v23));
  CFXTextureDescriptorMakeCube(*(a1 + 456), *(a1 + 464), v23);
  *&v23[12] = *&v23[12] & 0xFFFFFF00FF00FFFFLL | 0x500050000;
  v26 = *v23;
  v27 = *&v23[16];
  v12 = sub_1AF2373FC(a4, "REFLECTION_PROBE_COLOR_TARGET", &v26);
  *(a1 + 480) = v12;
  CFX::RG::Pass::renderTo(a1, v12, 0x100000002, 0);
  v21 = 0uLL;
  v22 = 0;
  CFXTextureDescriptorMakeCube(*(a1 + 456), 0xFCu, &v21);
  v23[16] = 4;
  v26 = v21;
  v27 = v22;
  v13 = sub_1AF2373FC(a4, "REFLECTION_PROBE_DEPTH_TARGET", &v26);
  *(a1 + 488) = v13;
  CFX::RG::Pass::renderTo(a1, v13, 0x200000002, -1);
  *&v25 = *(a1 + 432);
  v14 = *(a1 + 472);
  v27 = 0;
  v26 = v14;
  *&v15 = 0;
  *(&v15 + 2) = *(a1 + 456);
  *(&v15 + 3) = *(&v15 + 2);
  v29 = v15;
  v30 = 1;
  v31 = xmmword_1AFE42EB0;
  v32 = *(a1 + 440);
  v33 = 2;
  v34 = 4;
  v35 = 1;
  v36 = 1;
  v16 = sub_1AF2330E0(v24, *(&v24 + 1), &v24, &v25, &v26);
  *&v26 = 0;
  WORD4(v26) = 32;
  BYTE10(v26) = *(a1 + 441);
  v27 = 51;
  v28 = 0;
  if ((atomic_load_explicit(&qword_1ED73A720, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF3B8();
  }

  *&v29 = qword_1ED73A718;
  *(&v29 + 1) = -1;
  v17 = *(a1 + 432);
  v25 = v24;
  v18 = sub_1AF23498C(&v25, 0x48u, 8u);
  sub_1AF2603E8(v18, v17, &v26, v16);
  *(a1 + 448) = v19;
  return a1;
}

void sub_1AF249C0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF112998(*(a1 + 448));
  sub_1AF23B424(v3, v4, v5, v6);
  sub_1AF23B5E0(v3);
  sub_1AF23B5F4(v3, v7, v8, v9, v10, v11, v12);
  sub_1AF23B60C(v3);
  v14 = *a2;
  v15 = *(a2 + 8);

  sub_1AF23B678(v3, v14, v15, v13);
}

void sub_1AF249C74(uint64_t a1, const char *a2, CFX::RG::RenderPassArguments *this)
{
  v5 = *(a1 + 448);
  v6 = CFX::RG::RenderPassArguments::sliceIndex(this);
  v7 = v6 | (CFX::RG::RenderPassArguments::sliceIndex(this) << 8);

  sub_1AF260B04(v5, a2, this, v7);
}

uint64_t sub_1AF249CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A730, memory_order_acquire) & 1) == 0)
  {
    v19 = a3;
    v18 = a2;
    sub_1AFDEF3FC();
    a2 = v18;
    a3 = v19;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A728, 0);
  *a1 = &unk_1F24E9F78;
  v8 = *(a5 + 24);
  v9 = *(a5 + 40);
  *(a1 + 464) = v9;
  *(a1 + 448) = v8;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  if (v9)
  {
    CFXTextureDescriptorMake2D(2 * *(a1 + 448), *(a1 + 448), *(a1 + 456), &v20);
    v24 = v20;
    v25 = v21;
    v10 = v22;
    v11 = v23;
  }

  else
  {
    CFXTextureDescriptorMakeCube(*(a1 + 448), *(a1 + 456), &v20);
    v24 = v20;
    v25 = v21;
    v10 = v22;
    v11 = v23;
    v12 = sub_1AF12E2AC(*(a1 + 432));
    if ((objc_msgSend_features(v12, v13, v14, v15) & 0x20) != 0)
    {
      *(a1 + 440) = 257;
    }

    *((*(*a1 + 32))(a1) + 268) = 6;
  }

  v20 = v24;
  v21 = v25;
  v22 = v10 & 0xFFFFFF00FF00FFFFLL | 0x500050000;
  v23 = v11;
  v16 = sub_1AF2373FC(a4, "REFLECTION_PROBE_RADIANCE_TARGET", &v20);
  *(a1 + 488) = v16;
  CFX::RG::Pass::renderTo(a1, v16, 0x100000000, 0);
  *((*(*a1 + 32))(a1) + 275) = 5;
  return a1;
}

void sub_1AF249EE4(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*(a1 + 456) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(a1 + 456) ^ v4)));
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 464));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  *(a1 + 472) = v9;
  if (!v9)
  {
    *(a1 + 472) = sub_1AF24A0C4(*(a2 + 32), v8);
    v10 = sub_1AF12E2AC(*(a1 + 432));
    v17 = objc_msgSend_resourceManager(v10, v11, v12, v13);
    if (*(a1 + 456) == 125)
    {
      v18 = "float";
    }

    else
    {
      v18 = "half";
    }

    v19 = *(a1 + 464);
    v20 = @"vfx_draw_fullscreen_cube";
    if (!*(a1 + 464))
    {
      v21 = objc_msgSend_features(v10, v14, v15, v16);
      v25 = objc_msgSend_features(v10, v22, v23, v24);
      v26 = @"vfx_draw_fullscreen_cube_no_base";
      if ((v21 & 0x400) != 0)
      {
        v26 = @"vfx_draw_fullscreen_cube";
      }

      if ((v25 & 0x20) != 0)
      {
        v20 = @"vfx_draw_fullscreen_cube_layered";
      }

      else
      {
        v20 = v26;
      }

      v19 = *(a1 + 464);
    }

    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"vfx_radiance_%s_%s_frag", v16, off_1E7A7D9C8[v19], v18);
    v28 = sub_1AFDE868C(v17);
    v32 = objc_msgSend_frameworkLibrary(v28, v29, v30, v31);
    v33 = *(a1 + 456);
    v34 = *(a1 + 472);
    memset(v38, 0, sizeof(v38));
    v39 = v32;
    v40 = v33;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    v51 = 3;
    v52 = 0;
    memset(v53, 0, sizeof(v53));
    v54 = v20;
    v55 = v27;
    v56 = 0u;
    v57 = 0u;
    v37 = objc_msgSend_newRenderPipelineStateWithDesc_(v17, v35, v38, v36);
    sub_1AF23355C((v34 + 16), v37);
  }
}

uint64_t sub_1AF24A0C4(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF24A150(uint64_t a1, CFX::RG::RenderGraphContext *a2, CFX::RG::RenderPassArguments *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = sub_1AF12E2AC(*(a1 + 432));
  v10 = objc_msgSend_renderEncoder(v6, v7, v8, v9);
  v11 = sub_1AF2338B0(*(a1 + 472) + 16);
  v15 = objc_msgSend_state(v11, v12, v13, v14);
  v18 = objc_msgSend_setRenderPipelineState_(*(v10 + 16), v16, v15, v17);
  v19 = *(a2 + 3);
  v20 = *(a1 + 480);
  v21 = CFX::RG::Temporal::currentFrame(v18);
  Texture = CFX::GPUResourceManager::getTexture(v19, v20, v21);
  v23 = *(a2 + 3);
  v24 = *(a1 + 488);
  v25 = CFX::RG::Temporal::currentFrame(Texture);
  v26 = CFX::GPUResourceManager::getTexture(v23, v24, v25);
  v30 = objc_msgSend_mipmapLevelCount(Texture, v27, v28, v29);
  *&v32 = MEMORY[0x1EEE9AC00](v30, v31).n128_u64[0];
  v34 = &v74 - v33;
  sub_1AF24A4B4(v32, v36, v35, &v74 - v33, v35, Texture, *(a1 + 468) == 1);
  v37 = CFX::RG::RenderPassArguments::mipIndex(a3);
  v77 = v37 / (objc_msgSend_mipmapLevelCount(v26, v38, v39, v40) - 1);
  sub_1AF1F905C(v10, &v77, 4uLL, 0);
  v76 = *&v34[4 * CFX::RG::RenderPassArguments::mipIndex(a3)];
  sub_1AF1F905C(v10, &v76, 4uLL, 1);
  sub_1AF1F8FCC(v10, Texture, 0, v41);
  v42 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 488));
  if (*(a1 + 464) || *(a1 + 440) != 1)
  {
    *v54.i32 = objc_msgSend_width(v26, v43, v44, v45);
    v75 = v54;
    v58 = objc_msgSend_height(v26, v55, v56, v57);
    v59.i64[0] = 0;
    v59.i32[2] = v75.i32[0];
    *&v59.i32[3] = v58;
    v75 = v59;
    v60 = CFX::RG::RenderPassArguments::mipIndex(a3);
    *v61.i32 = ldexpf(1.0, v60);
    v62 = vdivq_f32(v75, vdupq_lane_s32(v61, 0));
    v63 = *(v10 + 16);
    v78[0] = vcvtq_f64_f32(*v62.f32);
    v78[1] = vcvt_hight_f64_f32(v62);
    v78[2] = xmmword_1AFE42FD0;
    objc_msgSend_setViewport_(v63, v64, v78, v65);
    *v10 = 1;
  }

  else
  {
    v75 = vshlq_u64(vdupq_lane_s64(*(v42 + 4), 0), xmmword_1AFE42F50);
    v46 = CFX::RG::RenderPassArguments::mipIndex(a3);
    *&v47 = ldexpf(1.0, v46);
    v74 = v47;
    v48 = CFX::RG::RenderPassArguments::mipIndex(a3);
    v50 = ldexpf(1.0, v48);
    v51 = 0;
    v52 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(v75, 0x30uLL))), __PAIR64__(LODWORD(v50), v74)));
    do
    {
      v53 = &v78[v51];
      *v53 = 0;
      *(v53 + 1) = 0;
      v53[1] = v52;
      v51 += 3;
      *(v53 + 4) = 0;
      *(v53 + 5) = 0;
    }

    while (v51 != 18);
    objc_msgSend_setViewports_count_(*(v10 + 16), v49, v78, 6);
  }

  v66 = sub_1AF12E2AC(*(a1 + 432));
  if ((objc_msgSend_features(v66, v67, v68, v69) & 0x400) != 0)
  {
    if (*(a1 + 440) == 1 || !CFX::RG::RenderPassArguments::sliceIndex(a3))
    {
      return sub_1AF2010C8(v10, v70);
    }

    else
    {
      v73 = CFX::RG::RenderPassArguments::sliceIndex(a3);
      return sub_1AF24A6B4(v10, 3, 0, 3, 1, v73);
    }
  }

  else
  {
    LOBYTE(v78[0]) = CFX::RG::RenderPassArguments::sliceIndex(a3);
    sub_1AF176E98(v10, v78, 1uLL, 0);
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_(*(v10 + 16), v71, 3, 0, 3);
  }
}

void sub_1AF24A4B4(double a1, double a2, uint64_t a3, const char *a4, uint64_t a5, void *a6, int a7)
{
  v7 = a5;
  LODWORD(a1) = 28.0;
  if (a7)
  {
    v9 = objc_msgSend_width(a6, a4, a5, a6, a1);
    HIDWORD(a2) = 1174405120;
    *&a1 = fminf(fmaxf((4 * v9), 32.0), 8192.0) + -4.0;
  }

  if (v7)
  {
    v10 = 0;
    *&a2 = (v7 - 1);
    v11 = vdupq_n_s64(v7 - 1);
    v12 = xmmword_1AFE21100;
    v13 = xmmword_1AFE21110;
    v14 = (v7 + 3) & 0x1FFFFFFFCLL;
    v32 = vdupq_lane_s32(*&a1, 0);
    v33 = vdupq_n_s64(4uLL);
    v15 = a4 + 8;
    __asm { FMOV            V0.4S, #4.0 }

    v30 = _Q0;
    v31 = vdupq_lane_s32(*&a2, 0);
    v34 = v11;
    do
    {
      v37 = v12;
      v21 = vorr_s8(vdup_n_s32(v10), 0x300000002);
      v36 = v13;
      v22 = vmovn_s64(vcgeq_u64(v11, v13));
      v23.i32[0] = v10;
      v23.i32[1] = v10 + 1;
      v35 = vuzp1_s16(v22, v21).u8[0];
      v23.u64[1] = v21;
      v41 = vdivq_f32(vcvtq_f32_u32(v23), v31);
      v38 = powf(v41.f32[1], 0.25);
      v24.f32[0] = powf(v41.f32[0], 0.25);
      v24.f32[1] = v38;
      v39 = v24;
      v25 = powf(v41.f32[2], 0.25);
      v26 = v39;
      v26.f32[2] = v25;
      v40 = v26;
      v27 = powf(v41.f32[3], 0.25);
      v28 = v40;
      v28.f32[3] = v27;
      v29 = vmlaq_f32(v30, v32, v28);
      if (v35)
      {
        *(v15 - 2) = v29.f32[0];
      }

      if (vuzp1_s16(v22, *&v29).i8[2])
      {
        *(v15 - 1) = v29.f32[1];
      }

      v11 = v34;
      if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v34, *&v37))).i32[1])
      {
        *v15 = v29.f32[2];
        v15[1] = v29.f32[3];
      }

      v10 += 4;
      v12 = vaddq_s64(v37, v33);
      v13 = vaddq_s64(v36, v33);
      v15 += 4;
    }

    while (v14 != v10);
  }
}

uint64_t sub_1AF24A6B4(unsigned int *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = v6 * a6;
  v8 = *(a1 + 2);
  if ((v6 * a5) <= 1 && v7 == 0)
  {
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v8, a2, a2, a3, a4);
  }

  if (v7)
  {
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_(v8, a2, a2, a3, a4);
  }

  return objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v8, a2, a2, a3, a4);
}

uint64_t sub_1AF24A6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A740, memory_order_acquire) & 1) == 0)
  {
    v12 = a2;
    v13 = a3;
    sub_1AFDEF454();
    a2 = v12;
    a3 = v13;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A738, 0);
  *a1 = &unk_1F24E9FD0;
  v8 = *(a5 + 24);
  *(a1 + 464) = *(a5 + 40);
  *(a1 + 448) = v8;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  memset(v16, 0, sizeof(v16));
  CFXTextureDescriptorMake2D(2 * *(a1 + 448), *(a1 + 448), *(a1 + 456), v16);
  *&v16[12] = *&v16[12] & 0xFFFFFF00FF00FFFFLL | 0x500050000;
  v14 = *v16;
  v15 = *&v16[16];
  v9 = sub_1AF2373FC(a4, "REFLECTION_PROBE_BOX_BLUR_TARGET", &v14);
  *(a1 + 488) = v9;
  CFX::RG::Pass::renderTo(a1, v9, 0x100000000, 0);
  v10 = v16[14];
  *((*(*a1 + 32))(a1) + 275) = v10;
  return a1;
}

void sub_1AF24A858(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ *(a1 + 464));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 456))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 456))))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 456))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 456))))) >> 47));
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v7);
  *(a1 + 472) = v8;
  if (!v8)
  {
    *(a1 + 472) = sub_1AF24AA28(*(a2 + 32), v7);
    v9 = sub_1AF12E2AC(*(a1 + 432));
    v13 = objc_msgSend_resourceManager(v9, v10, v11, v12);
    v14 = sub_1AFDE868C(v13);
    v18 = objc_msgSend_frameworkLibrary(v14, v15, v16, v17);
    v19 = *(a1 + 456);
    v20 = sub_1AFDE868C(v13);
    v24 = objc_msgSend_frameworkLibrary(v20, v21, v22, v23);
    v25 = *(a1 + 456);
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v26, @"box_blur_frag_%d", v27, *(a1 + 464));
    v29 = *(a1 + 472);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v44 = v18;
    v45 = v19;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = @"vfx_draw_fullscreen_triangle_vertex";
    v58 = @"copy_frag";
    v59 = 0u;
    v60 = 0u;
    v32 = objc_msgSend_newRenderPipelineStateWithDesc_(v13, v30, &v37, v31);
    sub_1AF23355C((v29 + 16), v32);
    v33 = *(a1 + 472);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v44 = v24;
    v45 = v25;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = @"vfx_draw_fullscreen_triangle_vertex";
    v58 = v28;
    v59 = 0u;
    v60 = 0u;
    v36 = objc_msgSend_newRenderPipelineStateWithDesc_(v13, v34, &v37, v35);
    sub_1AF23355C((v33 + 24), v36);
  }
}

uint64_t sub_1AF24AA28(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF24AAB0(uint64_t a1, CFX::RG::RenderGraphContext *a2, CFX::RG::RenderPassArguments *a3)
{
  v6 = sub_1AF12E2AC(*(a1 + 432));
  v10 = objc_msgSend_renderEncoder(v6, v7, v8, v9);
  v11 = *(a2 + 3);
  v12 = *(a1 + 480);
  v13 = CFX::RG::Temporal::currentFrame(v10);
  Texture = CFX::GPUResourceManager::getTexture(v11, v12, v13);
  if (CFX::RG::RenderPassArguments::mipIndex(a3))
  {
    v18 = objc_msgSend_pixelFormat(Texture, v15, v16, v17);
    v22 = objc_msgSend_textureType(Texture, v19, v20, v21);
    v23 = CFX::RG::RenderPassArguments::mipIndex(a3);
    Texture = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(Texture, v24, v18, v22, v23, 1, 0, 1);
  }

  v25 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 488)) + 4);
  v26 = vld1q_dup_f64(v25);
  v45 = vcvt_hight_f32_f64(0, vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(v26, xmmword_1AFE42F50), 0x30uLL)));
  v27 = CFX::RG::RenderPassArguments::mipIndex(a3);
  *v28.i32 = ldexpf(1.0, v27);
  v29 = vdivq_f32(v45, vdupq_lane_s32(v28, 0));
  v30 = v10[2];
  v46[0] = vcvtq_f64_f32(*v29.f32);
  v46[1] = vcvt_hight_f64_f32(v29);
  v46[2] = xmmword_1AFE42FD0;
  objc_msgSend_setViewport_(v30, v31, v46, v32);
  *v10 = 1;
  sub_1AF1F8FCC(v10, Texture, 0, v33);
  v34 = CFX::RG::RenderPassArguments::mipIndex(a3);
  v35 = 24;
  if (!v34)
  {
    v35 = 16;
  }

  v36 = sub_1AF2338B0(*(a1 + 472) + v35);
  v40 = objc_msgSend_state(v36, v37, v38, v39);
  objc_msgSend_setRenderPipelineState_(v10[2], v41, v40, v42);
  return sub_1AF2010C8(v10, v43);
}

uint64_t sub_1AF24AC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A750, memory_order_acquire) & 1) == 0)
  {
    v20 = a3;
    v19 = a2;
    sub_1AFDEF4AC();
    a2 = v19;
    a3 = v20;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A748, 0);
  v7 = &unk_1F24EA028;
  *a1 = &unk_1F24EA028;
  v8 = *(a5 + 40);
  *(a1 + 448) = *(a5 + 24);
  *(a1 + 464) = v8;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  if (!*(a1 + 449))
  {
    v9 = sub_1AF12E2AC(*(a1 + 432));
    if ((objc_msgSend_features(v9, v10, v11, v12) & 0x20) != 0)
    {
      *(a1 + 440) = 257;
    }

    *((*(*a1 + 32))(a1) + 268) = 6;
    v7 = *a1;
  }

  v13 = *(a1 + 468);
  *(v7[4](a1) + 275) = v13;
  v14 = *(a1 + 449);
  v15 = *(a1 + 464);
  v16 = (*(*a1 + 32))(a1);
  v17 = 6 * v15;
  if (v14)
  {
    v17 = v15;
  }

  *(v16 + 276) = v17;
  return a1;
}

void sub_1AF24ADD0(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*(a1 + 456) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(a1 + 456) ^ v4)));
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 448));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ *(a1 + 449));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
  v11 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v10);
  *(a1 + 472) = v11;
  if (!v11)
  {
    *(a1 + 472) = sub_1AF24AFA8(*(a2 + 32), v10);
    v12 = sub_1AF12E2AC(*(a1 + 432));
    v16 = objc_msgSend_resourceManager(v12, v13, v14, v15);
    if ((objc_msgSend_features(v12, v17, v18, v19) & 0x400) != 0)
    {
      v23 = @"vfx_draw_fullscreen_cube";
    }

    else
    {
      v23 = @"vfx_draw_fullscreen_cube_no_base";
    }

    if ((objc_msgSend_features(v12, v20, v21, v22) & 0x20) != 0)
    {
      v23 = @"vfx_draw_fullscreen_cube_layered";
    }

    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24, @"vfx_convert_%s_from_%s_frag", v25, off_1E7A7D9C8[*(a1 + 449)], off_1E7A7D9C8[*(a1 + 448)]);
    v27 = sub_1AFDE868C(v16);
    v31 = objc_msgSend_frameworkLibrary(v27, v28, v29, v30);
    v32 = *(a1 + 456);
    v33 = *(a1 + 472);
    memset(v37, 0, sizeof(v37));
    v38 = v31;
    v39 = v32;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
    v50 = 3;
    memset(v52, 0, sizeof(v52));
    v51 = 0;
    v53 = v23;
    v54 = v26;
    v55 = 0u;
    v56 = 0u;
    v36 = objc_msgSend_newRenderPipelineStateWithDesc_(v16, v34, v37, v35);
    sub_1AF23355C((v33 + 16), v36);
  }
}

uint64_t sub_1AF24AFA8(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF24B030(uint64_t a1, CFX::RG::RenderGraphContext *a2, CFX::RG::RenderPassArguments *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = sub_1AF12E2AC(*(a1 + 432));
  v10 = objc_msgSend_renderEncoder(v6, v7, v8, v9);
  v11 = sub_1AF2338B0(*(a1 + 472) + 16);
  v15 = objc_msgSend_state(v11, v12, v13, v14);
  v18 = objc_msgSend_setRenderPipelineState_(*(v10 + 16), v16, v15, v17);
  v19 = *(a2 + 3);
  v20 = *(a1 + 480);
  v21 = CFX::RG::Temporal::currentFrame(v18);
  Texture = CFX::GPUResourceManager::getTexture(v19, v20, v21);
  if (CFX::RG::RenderPassArguments::mipIndex(a3))
  {
    if (*(a1 + 448))
    {
      v26 = 1;
    }

    else
    {
      v26 = 6;
    }

    v27 = objc_msgSend_pixelFormat(Texture, v23, v24, v25);
    v31 = objc_msgSend_textureType(Texture, v28, v29, v30);
    v32 = CFX::RG::RenderPassArguments::mipIndex(a3);
    Texture = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(Texture, v33, v27, v31, v32, 1, 0, v26);
  }

  sub_1AF1F8FCC(v10, Texture, 0, v25);
  v34 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 488)) + 4);
  if (*(a1 + 449) || *(a1 + 440) != 1)
  {
    v58 = vcvt_hight_f32_f64(0, vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v34), xmmword_1AFE42F50), 0x30uLL)));
    v46 = CFX::RG::RenderPassArguments::mipIndex(a3);
    *v47.i32 = ldexpf(1.0, v46);
    v48 = vdivq_f32(v58, vdupq_lane_s32(v47, 0));
    v49 = *(v10 + 16);
    v59[0] = vcvtq_f64_f32(*v48.f32);
    v59[1] = vcvt_hight_f64_f32(v48);
    v59[2] = xmmword_1AFE42FD0;
    objc_msgSend_setViewport_(v49, v50, v59, v51);
    *v10 = 1;
  }

  else
  {
    v57 = vshlq_u64(vdupq_n_s64(v34), xmmword_1AFE42F50);
    v35 = CFX::RG::RenderPassArguments::mipIndex(a3);
    *&v36 = ldexpf(1.0, v35);
    v56 = v36;
    v37 = CFX::RG::RenderPassArguments::mipIndex(a3);
    v39 = ldexpf(1.0, v37);
    v40 = 0;
    v41 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(v57, 0x30uLL))), __PAIR64__(LODWORD(v39), v56)));
    do
    {
      v42 = &v59[v40];
      *v42 = 0;
      *(v42 + 1) = 0;
      v42[1] = v41;
      v40 += 3;
      *(v42 + 4) = 0;
      *(v42 + 5) = 0;
    }

    while (v40 != 18);
    objc_msgSend_setViewports_count_(*(v10 + 16), v38, v59, 6);
  }

  if ((objc_msgSend_features(v6, v43, v44, v45, v56) & 0x400) != 0)
  {
    if (*(a1 + 440) == 1 || !CFX::RG::RenderPassArguments::sliceIndex(a3))
    {
      return sub_1AF2010C8(v10, v52);
    }

    else
    {
      v55 = CFX::RG::RenderPassArguments::sliceIndex(a3);
      return sub_1AF24A6B4(v10, 3, 0, 3, 1, v55);
    }
  }

  else
  {
    LOBYTE(v59[0]) = CFX::RG::RenderPassArguments::sliceIndex(a3);
    sub_1AF176E98(v10, v59, 1uLL, 0);
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_(*(v10 + 16), v53, 3, 0, 3);
  }
}

uint64_t sub_1AF24B318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A758, memory_order_acquire) & 1) == 0)
  {
    v16 = a2;
    v18 = a3;
    sub_1AFDEF504();
    a2 = v16;
    a3 = v18;
  }

  if (byte_1ED73A710)
  {
    v7 = 0x5303C3899FA12B45;
  }

  else
  {
    v7 = 0;
  }

  sub_1AF250390(a1, a2, a3, a5, v7, 0);
  *a1 = &unk_1F24EA080;
  v8 = *(a5 + 48);
  *(a1 + 448) = *(a5 + 32);
  *(a1 + 464) = v8;
  *(a1 + 480) = 0;
  v17 = *(a1 + 448);
  v10 = CFX::RG::Pass::commonRenderParameters(v9);
  *v10 = vcvtq_f64_f32(*v17.f32);
  v10[1] = vcvt_hight_f64_f32(v17);
  v11 = *(a1 + 464);
  *((*(*a1 + 32))(a1) + 276) = v11;
  v12 = *(a1 + 468);
  *((*(*a1 + 32))(a1) + 277) = v12;
  v13 = *(a1 + 472);
  *((*(*a1 + 32))(a1) + 274) = v13;
  v14 = *(a1 + 476);
  *((*(*a1 + 32))(a1) + 275) = v14;
  return a1;
}

uint64_t sub_1AF24B4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12DDCC(a1);
  v5 = sub_1AF1D00F8(v4);
  v6 = sub_1AF138694(v5);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47)));
  v9 = v8;
  if (v8 && *(v8 + 81) == 1)
  {
    *(v8 + 81) = 0;
    return 1;
  }

  if (!v6)
  {
    v15 = sub_1AF1D005C(v4, 0);
    if (!v15 || (v16 = v15, !sub_1AF166220(v15)) && !sub_1AF1676A0(v16))
    {
      if (!sub_1AF12F038(a1))
      {
        return 0;
      }
    }
  }

  if (!v9)
  {
    sub_1AF1D126C(v4);
    return 1;
  }

  if (*(v9 + 80))
  {
    return 1;
  }

  if (*(v9 + 48))
  {
    v10 = sub_1AF2338B0(v9 + 48);
    v14 = objc_msgSend_arrayLength(v10, v11, v12, v13) != v6 + 1;
  }

  else
  {
    v14 = 1;
  }

  v18 = sub_1AF1D126C(v4);
  if (*(v9 + 16))
  {
    return **(v9 + 24) != v18 || v14;
  }

  return v14;
}

uint64_t sub_1AF24B5EC(CFX::RG::RenderGraphBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1AF12E2AC(*a3);
  v7 = sub_1AF12DDCC(*a3);
  v8 = sub_1AF1D00F8(v7);
  if ((atomic_load_explicit(&qword_1ED73A720, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF360();
  }

  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ v7)))) >> 47));
  Pass = CFX::RG::RenderGraphBuilder::findPass(a1, v9);
  if (!Pass)
  {
    v65 = objc_msgSend_resourceManager(v6, v10, v11, v12);
    v17 = sub_1AF138694(v8);
    if (!v17)
    {
      v41 = sub_1AF1D005C(v7, 0);
      if (!v41 || (v42 = v41, !sub_1AF166220(v41)) && !sub_1AF1676A0(v42))
      {
        if (!sub_1AF12F038(*a3))
        {
          return 0;
        }
      }
    }

    v63 = v17 + 1;
    objc_msgSend_device(v6, v14, v15, v16);
    v18 = sub_1AF1F3144();
    objc_msgSend_device(v6, v19, v20, v21);
    v22 = sub_1AF1F3184();
    v26 = 115;
    if ((v22 & v18) != 0)
    {
      v26 = 93;
    }

    v68 = v26;
    if ((objc_msgSend_features(v6, v23, v24, v25) & 0x100) != 0)
    {
      v27 = 256;
    }

    else
    {
      v27 = 128;
    }

    v67 = v27;
    v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v8) ^ ((0x9DDFEA08EB382D69 * v8) >> 47));
    v66 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47)));
    if (!v66 || (v29 = (v66 + 48), !*(v66 + 48)) || (v30 = sub_1AF2338B0(v66 + 48), objc_msgSend__setReflectionProbeArrayTexture_(v6, v31, v30, v32), !*v29) || (v33 = sub_1AF2338B0(v29), objc_msgSend_arrayLength(v33, v34, v35, v36) != v63))
    {
      operator new();
    }

    v37 = *(v66 + 48);
    CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v75, v66 + 56);
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = sub_1AF24BF94;
    v87[3] = &unk_1E7A7D9E8;
    v87[4] = v37;
    CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v88, &v75, v87, 0);
    v64 = sub_1AF24BF34(a1, "REFLECTION PROBE ARRAY", v88);
    CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v88);
    v39 = sub_1AF1D005C(v7, 0);
    if (v39)
    {
      objc_msgSend_renderResourceForMaterialProperty_withEngineContext_didFallbackToDefaultTexture_isDynamic_(v65, v38, v39, *a3, 0, 0);
    }

    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v86 = 0;
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 0;
    v40 = sub_1AF1D126C(v7);
    if (**(v66 + 24) == v40)
    {
      goto LABEL_36;
    }

    *(v80 + 24) = 1;
    if (!v39)
    {
      goto LABEL_28;
    }

    if (sub_1AF166220(v39))
    {
      isDynamic = objc_msgSend_renderResourceForMaterialProperty_withEngineContext_didFallbackToDefaultTexture_isDynamic_(v65, v43, v39, *a3, 0, 0);
      goto LABEL_32;
    }

    if (!sub_1AF1676A0(v39))
    {
LABEL_28:
      v51 = !sub_1AF12F038(*a3);
      if (v63 > 1)
      {
        LOBYTE(v51) = 1;
      }

      if (!v51)
      {
        v52 = objc_msgSend_resourceManager(v6, v48, v49, v50);
        isDynamic = objc_msgSend_defaultLightingEnvironmentRadianceTexture(v52, v53, v54, v55);
LABEL_32:
        v56 = isDynamic;
        if (isDynamic)
        {
          memset(v78, 0, sizeof(v78));
          CFXTextureDescriptorFromMTLTexture(isDynamic, v45, v46, v47, v78);
          CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v74, v78);
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = sub_1AF24BFA4;
          v73[3] = &unk_1E7A7D9E8;
          v73[4] = v56;
          CFX::RG::ExternalResourceDesc::ExternalResourceDesc(&v75, &v74, v73, 0);
          CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v72, &v75);
          v56 = sub_1AF24BF34(a1, "ENVIRONMENT TEXTURE", v72);
          CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v72);
          CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&v75);
        }

        goto LABEL_35;
      }
    }

    v56 = 0;
LABEL_35:
    v57 = sub_1AF24BFAC(a1, a3, 0, v56, v67, v68, v64);
    v84[3] = v57;
    **(v66 + 24) = v40;
    **(v66 + 40) = 0;
LABEL_36:
    *&v75 = 0;
    *(&v75 + 1) = &v75;
    v76 = 0x2020000000;
    LOBYTE(v77) = 0;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = sub_1AF24C1F4;
    v69[3] = &unk_1E7A7DA38;
    v71 = 0;
    v69[8] = v66;
    v69[9] = a1;
    v69[10] = a3;
    v69[11] = v64;
    v70 = v67;
    v69[12] = v66;
    v69[13] = v68;
    v69[5] = &v83;
    v69[6] = &v79;
    v69[4] = v65;
    v69[7] = &v75;
    sub_1AF13AE20(v8, v69);
    *(v66 + 80) = *(*(&v75 + 1) + 24);
    *(v66 + 81) = *(v80 + 24);
    v58 = sub_1AF2338B0(v66 + 48);
    objc_msgSend__setReflectionProbeArrayTexture_(v6, v59, v58, v60);
    v61 = v84[3];
    if (v61)
    {
      CFX::RG::RenderGraphBuilder::registerPass(a1, v9, v61);
      Pass = v84[3];
    }

    else
    {
      Pass = 0;
    }

    _Block_object_dispose(&v75, 8);
    _Block_object_dispose(&v79, 8);
    _Block_object_dispose(&v83, 8);
  }

  return Pass;
}

void sub_1AF24BDDC(_Unwind_Exception *a1)
{
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&STACK[0x368]);
  _Block_object_dispose(&STACK[0x428], 8);
  _Block_object_dispose(&STACK[0x448], 8);
  _Unwind_Resume(a1);
}

void sub_1AF24BE64(uint64_t a1, unsigned int a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (v2 <= a2)
    {
      v5 = *(a1 + 4);
      v6 = a2 - v5;
      if (a2 > v5)
      {
        sub_1AF24D36C(a1, v6, 0);
        v2 = *a1;
      }

      bzero((*(a1 + 8) + 4 * v2), 4 * (a2 - v2));
    }

    *a1 = a2;
  }
}

void sub_1AF24BECC(uint64_t a1, unsigned int a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (v2 <= a2)
    {
      v5 = *(a1 + 4);
      v6 = a2 - v5;
      if (a2 > v5)
      {
        sub_1AF158DE0(a1, v6, 0);
        v2 = *a1;
      }

      bzero((*(a1 + 8) + 8 * v2), 8 * (a2 - v2));
    }

    *a1 = a2;
  }
}

CFX::RG::Resource *sub_1AF24BF34(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v9 = a2;
  v4 = *a1;
  v5 = a1[1];
  v8 = 1;
  v6 = sub_1AF24D438(v4, v5, &v9, a3, &v8);
  CFX::RG::RenderGraphBuilder::appendResource(a1, v6);
  return v6;
}

uint64_t *sub_1AF24BFAC(uint64_t *a1, uint64_t *a2, int a3, CFX::RG::Resource *this, int a5, uint64_t a6, CFX::RG::Resource *a7)
{
  if (this && (v13 = this, v14 = CFX::RG::Resource::constTextureDesc(this), VFXMTLTextureTypeIsCube(*(v14 + 40))))
  {
    v15 = CFX::RG::Resource::constTextureDesc(v13);
    v16 = *(v15 + 17) == 1 && *(v15 + 16) == 5;
    if (!v16 || (v17 = CFX::RG::Resource::constTextureDesc(v13), *(v17 + 2) == 1) && *v17 == 16)
    {
      v18 = CFX::RG::Resource::constTextureDesc(v13);
      if (*(v18 + 17) == 1 && *(v18 + 16) > 4u)
      {
        v19 = 0;
      }

      else
      {
        v24 = *a2;
        *&v35 = "Generate probe mipmap pass";
        *(&v35 + 1) = v24;
        LOBYTE(v36) = 1;
        v25 = CFX::RG::Resource::constTextureDesc(v13);
        v26 = *v25;
        *&v37[16] = v25[1];
        *v37 = v26;
        v27 = v25[2];
        v28 = v25[3];
        v29 = v25[4];
        v41 = v25[5];
        v40 = v29;
        v39 = v28;
        v38 = v27;
        v30 = v25[6];
        v31 = v25[7];
        v32 = v25[8];
        v45 = v25[9];
        v44 = v32;
        v43 = v31;
        v42 = v30;
        v46 = 5;
        v19 = sub_1AF24CBA0(a1);
        sub_1AF236200(v19, v13);
        v13 = *(v19 + 78);
      }

      return sub_1AF24CBF8(a1, a2, a3, a5, a6, 1, v13, v19, a7);
    }

    else
    {
      *&v35 = v13;
      DWORD2(v35) = 0;
      v36 = a7;
      *v37 = a3;
      *&v37[4] = 1;
      return CFX::RG::makeCopyPass(a1, "Copy probe pass", &v35);
    }
  }

  else
  {
    v20 = CFX::RG::Resource::constTextureDesc(a7);
    if (VFXMTLTextureTypeIsCube(*(v20 + 40)))
    {
      v21 = 6;
    }

    else
    {
      v21 = 1;
    }

    v22 = *a2;
    *&v35 = "Clear texture pass";
    *(&v35 + 1) = v22;
    LOWORD(v36) = 0;
    *&v37[8] = xmmword_1AFE201A0;
    *&v37[24] = v21 * a3;
    *&v37[28] = v21;
    LODWORD(v38) = 0;
    DWORD1(v38) = *(CFX::RG::Resource::constTextureDesc(a7) + 16);
    v23 = sub_1AF24CB48(a1, a1, &v35);
    *(v23 + 480) = a7;
    CFX::RG::Pass::renderTo(v23, a7, 0x100000002, 0);
  }

  return v23;
}

uint64_t sub_1AF24C1F4(uint64_t result, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  *(&v52[1] + 4) = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = result;
    v7 = a2;
    while (1)
    {
      v8 = *a4;
      if (sub_1AF19D968(*a4) != 1)
      {
        v9 = sub_1AF0D5194();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDEF550(buf, v52, v9);
        }
      }

      v10 = sub_1AF19DF68(v8);
      if (v10 == -1)
      {
        v11 = sub_1AF0D5194();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDEF5A0(v49, &v50, v11);
        }
      }

      v12 = sub_1AF19DFC4(v8);
      result = sub_1AF19DAD4(v8);
      v13 = result;
      if (result == 1)
      {
        break;
      }

      if (*(v6 + 116) != 1 || (v41[0] = MEMORY[0x1E69E9820], v41[1] = 3221225472, v41[2] = sub_1AF24C61C, v41[3] = &unk_1E7A7DA10, v43 = *(v6 + 64), v44 = v8, v15 = *(v6 + 72), v47 = v12, v48 = v10, v16 = *(v6 + 88), v45 = v15, v46 = v16, v42 = *(v6 + 40), result = sub_1AF24C61C(v41), (result & 1) == 0))
      {
        if (v13 == 2)
        {
          v23 = *(v6 + 96);
          v24 = *(*(v23 + 24) + 4 * v10);
          v25 = *(*(v23 + 40) + 8 * v10);
          if (v24 != v12 || v25 != v8)
          {
            printf("probe[%d] not up to date stamp [%d -> %d] sources [%p -> %p]\n", v10, v24, v12, v25, v8);
            v27 = sub_1AF19B558(v8, 0);
            v28 = v27;
            if (v27)
            {
              if (sub_1AF166220(v27))
              {
                isDynamic = objc_msgSend_renderResourceForMaterialProperty_withEngineContext_didFallbackToDefaultTexture_isDynamic_(*(v6 + 32), v29, v28, **(v6 + 80), 0, 0);
                memset(v40, 0, sizeof(v40));
                CFXTextureDescriptorFromMTLTexture(isDynamic, v31, v32, v33, v40);
                CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v38, v40);
                v37[0] = MEMORY[0x1E69E9820];
                v37[1] = 3221225472;
                v37[2] = sub_1AF24C920;
                v37[3] = &unk_1E7A7D9E8;
                v37[4] = isDynamic;
                CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v39, v38, v37, 0);
                v34 = *(v6 + 72);
                CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v36, v39);
                v28 = sub_1AF24BF34(v34, "ENVIRONMENT TEXTURE", v36);
                CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v36);
                CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v39);
              }

              else
              {
                v28 = 0;
              }
            }

            result = sub_1AF24BFAC(*(v6 + 72), *(v6 + 80), v10, v28, *(v6 + 112), *(v6 + 104), *(v6 + 88));
            *(*(*(v6 + 40) + 8) + 24) = result;
            *(*(*(v6 + 48) + 8) + 24) = 1;
            v35 = *(v6 + 96);
            *(*(v35 + 24) + 4 * v10) = v12;
            *(*(v35 + 40) + 8 * v10) = v8;
          }

          goto LABEL_12;
        }

        if (!v13)
        {
          v17 = *(v6 + 96);
          v18 = *(*(v17 + 24) + 4 * v10);
          v19 = *(*(v17 + 40) + 8 * v10);
          if (v18 != v12 || v19 != v8)
          {
            printf("probe[%d] not up to date stamp [%d -> %d] sources [%p -> %p]\n", v10, v18, v12, v19, v8);
            v22 = *(v6 + 96);
            v21 = *(v6 + 104);
            *(*(v22 + 24) + 4 * v10) = v12;
            *(*(v22 + 40) + 8 * v10) = v8;
            result = sub_1AF24C7E8(*(v6 + 72), *(v6 + 80), v10, *a3, *(v6 + 112), v21, *(v6 + 88));
            *(*(*(v6 + 40) + 8) + 24) = result;
            v14 = *(v6 + 48);
            goto LABEL_11;
          }
        }
      }

LABEL_12:
      ++a4;
      ++a3;
      if (!--v7)
      {
        return result;
      }
    }

    result = sub_1AF24C7E8(*(v6 + 72), *(v6 + 80), v10, *a3, *(v6 + 112), *(v6 + 104), *(v6 + 88));
    *(*(*(v6 + 40) + 8) + 24) = result;
    v14 = *(v6 + 56);
LABEL_11:
    *(*(v14 + 8) + 24) = 1;
    goto LABEL_12;
  }

  return result;
}

void sub_1AF24C5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&a14);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&a63);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF24C61C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = *(v2 + 40); *i != *(a1 + 56); ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(v2 + 40);
  }

  v7 = (i - v3) >> 3;
  v8 = i == (v3 + 8 * v4) || v7 == -1;
  if (v8 || *(*(v2 + 24) + 4 * v7) == *(a1 + 96))
  {
    return 0;
  }

  v11 = sub_1AF2338B0(v2 + 48);
  v12 = *(a1 + 64);
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v19, *(a1 + 48) + 56);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1AF24C7E0;
  v18[3] = &unk_1E7A7D9E8;
  v18[4] = v11;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v23, &v19, v18, 0);
  v13 = sub_1AF24BF34(v12, "OLD REFLECTION PROBE ARRAY", v23);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v23);
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v16 = *(a1 + 100);
  *&v19 = v13;
  DWORD2(v19) = v7;
  v20 = v15;
  v9 = 1;
  v21 = v16;
  v22 = 1;
  *(*(*(a1 + 32) + 8) + 24) = CFX::RG::makeCopyPass(v14, "Copy probe pass", &v19);
  v17 = *(a1 + 88);
  *(*(v17 + 24) + 4 * *(a1 + 100)) = *(a1 + 96);
  *(*(v17 + 40) + 8 * *(a1 + 100)) = *(a1 + 56);
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return v9;
}

uint64_t *sub_1AF24C7E8(uint64_t *a1, uint64_t *a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v13 = *a2;
  v17[0] = "Reflection probe render pass";
  v17[1] = v13;
  v18 = 0;
  v19 = a5;
  v20 = a6;
  v21 = a4;
  v14 = sub_1AF24D094(a1, a1, v17);
  CFX::RG::Resource::constTextureDesc(v14[60]);
  v15 = sub_1AF24CBA0(a1);
  sub_1AF236200(v15, v14[60]);
  CFX::RG::Pass::dependsOn(v15, v14);
  return sub_1AF24CBF8(a1, a2, a3, a5, a6, 0, *(v15 + 624), v15, a7);
}

void sub_1AF24C92C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24C968(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24C9A4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24C9E0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24CA1C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF24CA58(uint64_t a1)
{
  *a1 = &unk_1F24EA0D8;

  if (*(a1 + 36))
  {
    free(*(a1 + 40));
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 24));
  }

  return a1;
}

void sub_1AF24CAC0(uint64_t a1)
{
  *a1 = &unk_1F24EA0D8;

  if (*(a1 + 36))
  {
    free(*(a1 + 40));
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 24));
  }

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF24CB48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24CDCC(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24CBA0(uint64_t *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[0] = sub_1AF24CE1C(v4[0], v2);
  sub_1AF235000(a1 + 22, v4);
  return v4[0];
}

uint64_t *sub_1AF24CBF8(uint64_t *a1, uint64_t *a2, int a3, int a4, uint64_t a5, int a6, unint64_t a7, CFX::RG::Pass *a8, uint64_t a9)
{
  v17 = *a2;
  v41[0] = "Reflection probe radiance pass";
  v41[1] = v17;
  v42 = 0;
  v43 = a4;
  v44 = a5;
  v45 = a6 != 1;
  v46 = a6;
  v18 = sub_1AF24CE7C(a1, a1, v41);
  *(v18 + 60) = a7;
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(v18, a7, v19);
  if (a8)
  {
    CFX::RG::Pass::dependsOn(v18, a8);
  }

  if (a6 == 1)
  {
    *&v35 = *(v18 + 61);
    DWORD2(v35) = 0;
    v36 = a9;
    v37 = a3;
    v38 = 1;
    CopyPass = CFX::RG::makeCopyPass(a1, "Copy radiance pass", &v35);
    CFX::RG::Pass::dependsOn(CopyPass, v18);
  }

  else
  {
    v20 = *a2;
    *&v35 = "Reflection probe box blur pass";
    *(&v35 + 1) = v20;
    LOWORD(v36) = 0;
    v37 = a4;
    v39 = a5;
    v40 = 5;
    v21 = sub_1AF24CED4(a1, a1, &v35);
    v22 = *(v18 + 61);
    *(v21 + 60) = v22;
    v23 = CFX::RG::Temporal::currentFrame(v21);
    CFX::RG::Pass::readFrom(v21, v22, v23);
    v24 = *a2;
    v29[0] = "Reflection probe convert cube pass";
    v29[1] = v24;
    v30 = 0;
    v31 = 1;
    v32 = a5;
    v33 = a3;
    v34 = 5;
    CopyPass = sub_1AF24CF2C(a1, a1, v29);
    v26 = *(v21 + 61);
    CopyPass[60] = v26;
    v27 = CFX::RG::Temporal::currentFrame(CopyPass);
    CFX::RG::Pass::readFrom(CopyPass, v26, v27);
    CopyPass[61] = a9;
    CFX::RG::Pass::renderTo(CopyPass, a9, 0x100000000, 0);
  }

  return CopyPass;
}

uint64_t sub_1AF24CDCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x1F0u, 0x10u);
  return sub_1AF24B318(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF24CE1C(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v2 = sub_1AF23498C(v4, 0x278u, 8u);
  return sub_1AF2360AC(v2);
}

uint64_t sub_1AF24CE7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24CF84(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24CED4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24CFE4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24CF2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24D044(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24CF84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u);
  return sub_1AF249CE0(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF24CFE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u);
  return sub_1AF24A6F4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF24D044(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x1F0u, 8u);
  return sub_1AF24AC44(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF24D094(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24D0EC(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24D0EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u);
  return sub_1AF249924(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF24D14C(uint64_t a1)
{
  *a1 = &unk_1F24EA0F8;

  return a1;
}

void sub_1AF24D194(uint64_t a1)
{
  *a1 = &unk_1F24EA0F8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF24D1FC(uint64_t a1)
{
  *a1 = &unk_1F24EA118;

  return a1;
}

void sub_1AF24D24C(uint64_t a1)
{
  *a1 = &unk_1F24EA118;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF24D2BC(uint64_t a1)
{
  *a1 = &unk_1F24EA138;

  return a1;
}

void sub_1AF24D304(uint64_t a1)
{
  *a1 = &unk_1F24EA138;

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24D36C(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = a1 + 4;
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (a1[1] + a2));
  v8 = malloc_type_malloc(4 * v7, 0xBBD05BDCuLL);
  memset(v8, 255, 4 * v7);
  memcpy(v8, v4, 4 * *a1);
  *(a1 + 1) = v8;
  a1[1] = v7;
  if (v4 != v5)
  {

    free(v4);
  }
}

uint64_t sub_1AF24D438(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, unsigned __int8 *a5)
{
  v12[0] = a1;
  v12[1] = a2;
  v8 = sub_1AF23498C(v12, 0xE0u, 8u);
  v9 = *a3;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v11, a4);
  CFX::RG::Resource::Resource(v8, v9, v11, *a5, 1);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v11);
  return v8;
}

uint64_t sub_1AF24D4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if ((atomic_load_explicit(&qword_1ED73A768, memory_order_acquire) & 1) == 0)
  {
    v10 = a4;
    v11 = a2;
    v9 = a3;
    sub_1AFDEF5F0();
    a4 = v10;
    a2 = v11;
    a3 = v9;
  }

  if (byte_1ED73A760)
  {
    v5 = 0xD0F5177056B737E3;
  }

  else
  {
    v5 = 0;
  }

  sub_1AF250390(a1, a2, a3, a4, v5, 0);
  *a1 = &unk_1F24EA158;
  *(CFX::RG::Pass::commonRenderParameters(v6) + 282) = 1;
  v12 = *(a1 + 8);
  v7 = sub_1AF23498C(&v12, 0x3B20u, 0x10u);
  bzero(v7, 0x3B20uLL);
  *(a1 + 456) = v7;
  sub_1AF124FB0(v7);
  return a1;
}

void sub_1AF24D5D0(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  *(a1 + 56) = v5;
  if (!v5)
  {
    v6 = sub_1AF24D6A8(*(a2 + 32), v4);
    *(a1 + 56) = v6;
    v7 = sub_1AF1CF520();
    sub_1AF2334EC((v6 + 16), v7);
    v8 = *(a1 + 56);
    v9 = sub_1AF1B8588();
    sub_1AF2334EC((v8 + 24), v9);
    v10 = sub_1AF1403B4(*(a1 + 56) + 24);
    sub_1AF1B9F10(v10, xmmword_1AFE42FF0);
    sub_1AF15C19C();
    v12 = v11;
    v13 = sub_1AF1403B4(*(a1 + 56) + 24);
    sub_1AF1BB2D4(v13, v12);

    CFRelease(v12);
  }
}

uint64_t sub_1AF24D6A8(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF24D730(uint64_t *a1, const char *a2, id *a3, uint64_t a4)
{
  v6 = sub_1AF130770(a1[54], a2, a3, a4);
  prof_beginFlameSmallData("RemoteReplay", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/RemoteReplayPass.mm", 49, v6 | 0x300000000);
  v7 = sub_1AF12E2AC(a1[54]);
  v8 = sub_1AF13110C(a1[54]);
  *&v9 = sub_1AF22E000(v8, &v42, &v38).n128_u64[0];
  objc_msgSend_renderSize(v7, v10, v11, v12, v9);
  v14 = vdiv_f32(v13, vdup_lane_s32(v13, 1)).f32[0];
  if (v14 >= 1.0)
  {
    v38.n128_f32[0] = v38.n128_f32[0] / v14;
  }

  else
  {
    v39.n128_f32[1] = v14 * v39.n128_f32[1];
  }

  v15 = sub_1AF1403B4(a1[56] + 24);
  sub_1AF1BA204(v15, &v42);
  v16 = sub_1AF1403B4(a1[56] + 24);
  v17 = sub_1AF1BB260(v16);
  sub_1AF15D3D0(v17, v38, v39, v40, v41);
  v18 = a1[54];
  v19 = a1[57];
  v20 = sub_1AF1403B4(a1[56] + 24);
  v21 = sub_1AF1403B4(a1[56] + 24);
  v22 = sub_1AF1403B4(a1[56] + 16);
  sub_1AF1243E4(v19, v18, v20, v21, v22);
  sub_1AF125068(a1[57], 0);
  objc_msgSend__fillProcessingContextWithCullingContext_(v7, v23, a1[57], v24);
  v25 = sub_1AF1403B4(a1[56] + 16);
  objc_msgSend__fillFrameUniformsWithWorld_(v7, v26, v25, v27);
  objc_msgSend__fillVFXCoreRenderData(v7, v28, v29, v30);
  v31 = CFX::RG::RenderPassArguments::encoder(a3);
  v35 = objc_msgSend_resourceManager(v7, v32, v33, v34);
  v37 = __invert_f4(v42);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_1AF24D96C;
  v36[3] = &unk_1E7A7DA58;
  v36[4] = v31;
  v36[5] = v8;
  v36[6] = v7;
  v36[7] = v35;
  sub_1AF22E074(v8, 1, &v37, v36);
  prof_endFlame();
}

void sub_1AF24D96C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v3;
  sub_1AF22E778(v4, a3);
}

void sub_1AF24D9A0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF24D9D8(void *a1)
{
  *a1 = &unk_1F24EA1B0;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_1AF24DA30(void *a1)
{
  *a1 = &unk_1F24EA1B0;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x1B271C6B0);
}

uint64_t *sub_1AF24DAA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A788, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF63C();
  }

  sub_1AF250390(a1, a2, a3, a4, qword_1ED73A780, a5);
  *a1 = &unk_1F24EA1D0;
  a1[59] = 0;
  a1[60] = 0;
  a1[58] = 0;
  v10 = *(a4 + 64);
  v42 = *(a4 + 72);
  v43 = *(a4 + 56);
  v41 = *(a4 + 80);
  v12 = *(a4 + 88);
  v11 = *(a4 + 96);
  v13 = *(a4 + 104);
  v45 = *(a4 + 120);
  v46 = *(a4 + 112);
  v44 = *(a4 + 128);
  v14 = v12 != 0;
  if (v11)
  {
    v15 = CFX::RG::Pass::commonRenderParameters(a1);
    v14 |= 0x804u;
    v15[12] = 0;
    v15[13] = 0;
    v15[14] = 0;
    v15[15] = 0x47EFFFFFE0000000;
  }

  v16 = v14 | 2;
  if (!v13)
  {
    v16 = v14;
  }

  if (v46)
  {
    v16 |= 0x80u;
  }

  if (v11)
  {
    v16 |= 4u;
  }

  if (v45)
  {
    v17 = v16 | 0x200;
  }

  else
  {
    v17 = v16;
  }

  if (v44)
  {
    v18 = sub_1AF12DDCC(a1[54]);
    if (v18)
    {
      if (sub_1AF1D0738(v18))
      {
        v17 |= 0x1008u;
      }

      else
      {
        v17 |= 8u;
      }
    }

    else
    {
      v17 |= 8u;
    }
  }

  v19 = sub_1AF12F5E8(*(a4 + 8));
  if (v10)
  {
    v20 = v17 | 0x40;
  }

  else
  {
    v20 = v17;
  }

  v21 = *(a4 + 24);
  if ((v21 & (v19 != 0)) != 0)
  {
    v20 |= 0x400u;
  }

  v47 = *(a4 + 40);
  v48 = v20;
  if (*(a4 + 16) == 1)
  {
    v22 = sub_1AF1307C4(*(a4 + 8));
    v21 = *(a4 + 24);
  }

  else
  {
    v22 = 0;
  }

  v49 = v22;
  v50 = 1;
  v51 = 0;
  v52 = v21;
  if ((atomic_load_explicit(&qword_1ED73A788, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF63C();
  }

  v23 = *(a4 + 48);
  v24 = 0x9DDFEA08EB382D69 * (qword_1ED73A780 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A780 ^ *(a4 + 40))) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A780 ^ *(a4 + 40))));
  v53 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
  v54 = v23;
  if (*(a4 + 28))
  {
    v25 = v50 | 0x40;
  }

  else
  {
    v25 = v50;
  }

  v26 = v25 & 0xFFFFFFFFFFFFFFF5;
  v27 = 2;
  if (!*(a4 + 25))
  {
    v27 = 0;
  }

  v28 = 8;
  if (!*(a4 + 26))
  {
    v28 = 0;
  }

  v29 = v28 | v27 | v26;
  if (*(a4 + 27))
  {
    v30 = sub_1AF12DDCC(*(a4 + 8));
    v31 = v29 | (32 * (sub_1AF1CF8AC(v30) != 0)) | 0x10;
  }

  else
  {
    v31 = v29 & 0xFFFFFFFFFFFFFFCDLL;
  }

  v50 = v31;
  if (*(a4 + 16) == 1)
  {
    v32 = sub_1AF12FAE0(*(a4 + 8));
  }

  else
  {
    v32 = 1;
  }

  *((*(*a1 + 32))(a1) + 268) = v32;
  v33 = *(a4 + 27);
  *((*(*a1 + 32))(a1) + 280) = v33;
  a1[57] = *(a4 + 32);
  v34 = a1[54];
  v55[0] = a2;
  v55[1] = a3;
  v35 = sub_1AF23498C(v55, 0x48u, 8u);
  sub_1AF2603E8(v35, v34, &v47, a1[57]);
  a1[56] = v36;
  if (v43)
  {
    if (*(a4 + 144))
    {
      v37 = 0x100000001;
    }

    else
    {
      v37 = 0x100000002;
    }

    v36 = CFX::RG::Pass::renderTo(a1, v43, v37, 0);
  }

  if (v10)
  {
    v36 = CFX::RG::Pass::renderTo(a1, v10, 0x100000002, 1);
  }

  if (v42)
  {
    if (*(a4 + 152))
    {
      v38 = 0x200000001;
    }

    else
    {
      v38 = 0x200000002;
    }

    v36 = CFX::RG::Pass::renderTo(a1, v42, v38, -1);
  }

  if (v41)
  {
    v36 = CFX::RG::Pass::renderTo(a1, v41, 0x300000002, -1);
  }

  if (v12)
  {
    v36 = CFX::RG::Pass::renderTo(a1, v12, 0x100000002, 2);
  }

  if (v11)
  {
    v36 = CFX::RG::Pass::renderTo(a1, v11, 0x100000002, 3);
  }

  if (v13)
  {
    v36 = CFX::RG::Pass::renderTo(a1, v13, 0x100000002, 4);
  }

  if (v46)
  {
    v36 = CFX::RG::Pass::renderTo(a1, v46, 0x100000002, 5);
  }

  if (v45)
  {
    v36 = CFX::RG::Pass::renderTo(a1, v45, 0x100000002, 6);
  }

  if (v44)
  {
    v39 = CFX::RG::Temporal::currentFrame(v36);
    CFX::RG::Pass::readFrom(a1, v44, v39);
  }

  return a1;
}

void sub_1AF24DF6C(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AF130770(a1[54], a2, a3, a4);
  prof_beginFlameSmallData("Main::Setup", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/RenderElementsPass.mm", 172, v5 | 0x300000000);
  if ((*(a1[56] + 24) & 2) != 0)
  {
    v8 = sub_1AF1303B8(a1[54]);
    v7 = (*(*a1 + 32))(a1);
    *v7 = vcvtq_f64_f32(*v8.f32);
    v7[1] = vcvt_hight_f64_f32(v8);
  }

  else
  {
    v6 = (*(*a1 + 32))(a1);
    *v6 = 0u;
    v6[1] = 0u;
  }

  prof_endFlame();
}

void sub_1AF24E068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF130770(*(a1 + 432), a2, a3, a4);
  prof_beginFlameSmallData("Main::Prepare", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/RenderElementsPass.mm", 183, v6 | 0x300000000);
  sub_1AF260410(*(a1 + 448), a2, v7, v8);
  v9 = sub_1AF12E2AC(*(a1 + 432));
  v10 = sub_1AF12DDCC(*(a1 + 432));
  v11 = sub_1AF1D00F8(v10);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v11) ^ ((0x9DDFEA08EB382D69 * v11) >> 47));
  v13 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47)));
  if (v13)
  {
    v15 = *(v13 + 48);
    v14 = v13 + 48;
    if (v15)
    {
      v16 = sub_1AF2338B0(v14);
      objc_msgSend__setReflectionProbeArrayTexture_(v9, v17, v16, v18);
    }
  }

  prof_endFlame();
}

void sub_1AF24E158(uint64_t *a1, uint64_t a2, id *a3, uint64_t a4)
{
  v7 = sub_1AF130770(a1[54], a2, a3, a4);
  prof_beginFlameSmallData("Main::Render", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/RenderElementsPass.mm", 199, v7 | 0x300000000);
  v8 = a1[54];
  v9 = sub_1AF23B41C(a1[57]);
  sub_1AF131034(v8, v9);
  v10 = sub_1AF12E2A0(a1[54]);
  if (v10)
  {
    v11 = sub_1AF1310A0(a1[54]);
    v12 = sub_1AF170BF8(a1[57]);
    sub_1AF22D6CC(v11, v12[448], v12[449], v12[450], v12[451], v12[576], v12[577], v12[578], v12[579]);
  }

  v13 = a1[58];
  if (v13)
  {
    v14 = *(a2 + 24);
    v15 = CFX::RG::Temporal::currentFrame(v10);
    Texture = CFX::GPUResourceManager::getTexture(v14, v13, v15);
    v17 = CFX::RG::RenderPassArguments::encoder(a3);
    objc_msgSend_useResource_usage_stages_(v17, v18, Texture, 1, 2);
  }

  v19 = sub_1AF12F398(a1[54]);
  v20 = v19;
  v21 = *(a1[56] + 33) != 1 || v19 == 0;
  if (!v21 && *v19)
  {
    (*v19)(a1[54]);
  }

  if (*((*(*a1 + 32))(a1) + 268) && (*(a1[57] + 121) & 1) != 0)
  {
    v22 = CFX::RG::RenderPassArguments::sliceIndex(a3);
  }

  else
  {
    v22 = 0;
  }

  sub_1AF260B04(a1[56], a2, a3, v22 << 8);
  if (*(a1[56] + 33) == 1)
  {
    if (v20)
    {
      v23 = v20[1];
      if (v23)
      {
        v23(a1[54]);
      }
    }
  }

  sub_1AF131034(a1[54], 0);

  prof_endFlame();
}

uint64_t sub_1AF24E34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A798, memory_order_acquire) & 1) == 0)
  {
    v18 = a2;
    v19 = a3;
    sub_1AFDEF694();
    a2 = v18;
    a3 = v19;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A790, 0);
  *a1 = &unk_1F24EA228;
  v8 = *(a5 + 24);
  v9 = *(a5 + 56);
  *(a1 + 464) = *(a5 + 40);
  *(a1 + 480) = v9;
  *(a1 + 448) = v8;
  v10 = *(a5 + 72);
  v11 = *(a5 + 88);
  v12 = *(a5 + 120);
  *(a1 + 528) = *(a5 + 104);
  *(a1 + 544) = v12;
  *(a1 + 496) = v10;
  *(a1 + 512) = v11;
  v13 = *(a5 + 136);
  v14 = *(a5 + 152);
  v15 = *(a5 + 168);
  *(a1 + 608) = *(a5 + 184);
  *(a1 + 576) = v14;
  *(a1 + 592) = v15;
  *(a1 + 560) = v13;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  CFX::RG::TextureDescriptorReference::withSampleCount((a1 + 456), 1, &v21);
  *(&v22 + 1) = 25;
  LOBYTE(v23) = 1;
  v20[6] = v27;
  v20[7] = v28;
  v20[8] = v29;
  v20[9] = v30;
  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v20[5] = v26;
  v20[0] = v21;
  v20[1] = v22;
  v16 = sub_1AF233CC8(a4, "LINEAR_DEPTH", v20);
  *(a1 + 632) = v16;
  CFX::RG::Pass::renderTo(a1, v16, 0x100000000, 0);
  return a1;
}

uint64_t sub_1AF24E4BC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_1ED73A778, memory_order_acquire) & 1) == 0)
  {
    v7 = a2;
    v8 = a1;
    sub_1AFDEF6EC();
    a2 = v7;
    a1 = v8;
  }

  v3 = *(a2 + 24);
  v4 = *(a1 + 632);
  v5 = dword_1ED73A770;

  return CFX::GPUResourceManager::registerNamedFrameResource(v3, v4, v5);
}

void sub_1AF24E51C(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(a2[4], v4);
  *(a1 + 616) = v5;
  if (!v5)
  {
    *(a1 + 616) = sub_1AF24E60C(a2[4], v4);
    v6 = sub_1AF12E2AC(*(a1 + 432));
    v10 = objc_msgSend_resourceManager(v6, v7, v8, v9);
    v11 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 632)) + 12);
    v12 = sub_1AFDE868C(v10);
    v16 = objc_msgSend_frameworkLibrary(v12, v13, v14, v15);
    v17 = *(a1 + 616);
    memset(v21, 0, sizeof(v21));
    v22 = v16;
    v23 = v11;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = @"vertex_draw_quad";
    v36 = @"linearize_depth2";
    v37 = 0u;
    v38 = 0u;
    v20 = objc_msgSend_newRenderPipelineStateWithDesc_(v10, v18, v21, v19);
    sub_1AF23355C((v17 + 16), v20);
  }
}

uint64_t sub_1AF24E60C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1AF24E694(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  v8 = objc_msgSend_renderEncoder(v4, v5, v6, v7);
  v9 = a1[56];
  if (v9 || (result = sub_1AF12F10C(a1[54]), (v9 = result) != 0))
  {
    result = sub_1AF1BB260(v9);
    if (result)
    {
      v11 = sub_1AF15E428(result);
      v12 = sub_1AF12DDCC(a1[54]);
      if ((*v11 & 2) != 0)
      {
        if (v12)
        {
          sub_1AF27F230(v11, v9, 0, v12);
        }
      }

      v14 = *(v11 + 4);
      v13 = *(v11 + 8);
      v15 = v13 - v14;
      v16.f32[0] = v13 * v14;
      __asm { FMOV            V3.2S, #1.0 }

      _D3.f32[0] = v15;
      v16.f32[1] = v13;
      v36 = vdiv_f32(_D3, v16);
      sub_1AF1F905C(v8, &v36, 8uLL, 0);
      v22 = sub_1AF2338B0(a1[77] + 16);
      v26 = objc_msgSend_state(v22, v23, v24, v25);
      v29 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v27, v26, v28);
      v30 = *(a2 + 24);
      v31 = a1[78];
      v32 = CFX::RG::Temporal::currentFrame(v29);
      Texture = CFX::GPUResourceManager::getTexture(v30, v31, v32);
      sub_1AF1F8FCC(v8, Texture, 0, v34);
      return sub_1AF2016F4(v8, v35);
    }
  }

  return result;
}

double sub_1AF24E7B8(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 78) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

CFX::RG::Pass *sub_1AF24E800(uint64_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, char a6)
{
  v12 = sub_1AF12DDCC(*(a2 + 8));
  CFX::RG::TextureDescriptorReference::withSampleCount(a4, 1, &v49);
  v27 = v55;
  v28 = v56;
  v29 = v57;
  v30 = v58;
  v23 = v51;
  v24 = v52;
  v25 = v53;
  v26 = v54;
  v21 = v49;
  v22 = v50;
  v13 = sub_1AF233CC8(a1, "DEPTH PREPASS", &v21);
  v14 = *(a2 + 8);
  v33[0] = "Render prepass";
  v33[1] = v14;
  v34 = *(a2 + 16);
  v35 = 16842752;
  v36 = a6;
  v37 = a3;
  v38 = 0;
  v39 = -1;
  v40 = 0;
  v41 = 0;
  v42 = v13;
  v43 = 0;
  v44 = a5;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ 1)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ 1)) >> 47) ^ 1);
  *&v21 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v16 = sub_1AF24E9C4(a1, v33, &v21);
  v17 = *(a2 + 8);
  *&v21 = "Linearize depth";
  *(&v21 + 1) = v17;
  LOWORD(v22) = 0;
  *(&v22 + 1) = sub_1AF23B410(a3);
  v29 = v55;
  v30 = v56;
  v31 = v57;
  v32 = v58;
  v25 = v51;
  v26 = v52;
  v27 = v53;
  v28 = v54;
  v23 = v49;
  v24 = v50;
  v18 = sub_1AF24EA1C(a1, a1, &v21);
  *(v18 + 78) = v13;
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(v18, v13, v19);
  CFX::RG::Pass::dependsOn(v18, v16);
  return v16;
}

uint64_t sub_1AF24E9C4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24EC9C(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24EA1C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24ECFC(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t *sub_1AF24EA74(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1AF12DDCC(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v4) ^ ((0x9DDFEA08EB382D69 * v4) >> 47));
  *&v10 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v6 = sub_1AF24E9C4(a1, a2, &v10);
  if (a2[18])
  {
    *&v10 = a2[18];
    DWORD2(v10) = 0;
    v11 = a2[7];
    v12 = 0x100000000;
    CopyPass = CFX::RG::makeCopyPass(a1, "Copy input color", &v10);
    CFX::RG::Pass::dependsOn(v6, CopyPass);
  }

  if (a2[19])
  {
    *&v10 = a2[19];
    DWORD2(v10) = 0;
    v11 = a2[9];
    v12 = 0x100000000;
    v8 = CFX::RG::makeCopyPass(a1, "Copy input depth", &v10);
    CFX::RG::Pass::dependsOn(v6, v8);
  }

  return v6;
}

void sub_1AF24EB78(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24EBB4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF24EBEC(uint64_t a1)
{
  *a1 = &unk_1F24EA280;

  return a1;
}

void sub_1AF24EC34(uint64_t a1)
{
  *a1 = &unk_1F24EA280;

  JUMPOUT(0x1B271C6B0);
}

uint64_t *sub_1AF24EC9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E8u, 8u);
  return sub_1AF24DAA8(v8, *a3, a3[1], a4, *a5);
}

uint64_t sub_1AF24ECFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x280u, 8u);
  return sub_1AF24E34C(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF24ED5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = CFXTextureDescriptorMake2D(COERCE_FLOAT(*(a1 + 16)), COERCE_FLOAT(HIDWORD(*(a1 + 16))), *(a1 + 24), a2);
  v5 = *(a1 + 32);
  v6 = 0x20000000000;
  if (v5 > 1)
  {
    v6 = 0x30000000000;
  }

  v7 = *(a2 + 12) & 0xFFFFF000FFFFFFFFLL;
  *(a2 + 10) = v5;
  *(a2 + 12) = (v7 | v6) & 0xFFFFFF00FFFFFFFFLL | (*(a1 + 40) << 32);
  return result;
}

double sub_1AF24EDD0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1AF24EDE8@<D0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X3>, CFX::RG::Pass *a4@<X4>, const CFX::RG::Resource *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23 = 0uLL;
  v24 = 0;
  CFXTextureDescriptorMakeDefault(&v23);
  CFX::RG::TextureDescriptorReference::finalColor(&v20);
  CFX::RG::RenderGraphContext::tryResolveTextureDescriptor(a2, &v20, &v23);
  v14 = CFX::RG::RenderGraphContext::tryResolvedTextureDescriptor(a2, a5);
  if (v14)
  {
    v15 = *v14;
    v21 = v14[2];
    v20 = v15;
    if (a6)
    {
      CFX::RG::TextureDescriptorReference::partialResolveInto(a6, &v20);
    }

    v23 = v20;
    v24 = v21;
  }

  v20 = v23;
  v21 = v24;
  v16 = sub_1AF2373FC(a1, "Converted texture", &v20);
  *&v20 = a5;
  DWORD2(v20) = 0;
  v21 = v16;
  v22 = 0x100000000;
  CopyPass = CFX::RG::makeCopyPass(a1, a3, &v20);
  v18 = CopyPass;
  if (a4)
  {
    CFX::RG::Pass::dependsOn(CopyPass, a4);
  }

  result = 0.0;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 16) = 0u;
  *a7 = v18;
  *(a7 + 8) = v16;
  return result;
}

double sub_1AF24EF24@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, _OWORD *a7@<X7>, uint64_t a8@<X8>, uint64_t **a9)
{
  v51 = *MEMORY[0x1E69E9840];
  *&v41 = a5;
  *(&v41 + 1) = a6;
  v15 = *(a4 + 56);
  if (!v15)
  {
    v15 = -1;
    *(a4 + 56) = -1;
  }

  v42[0] = *(a4 + 1) ^ 1;
  v42[1] = 0;
  v43 = *(a4 + 4);
  v44 = *(a4 + 2);
  v45 = 0;
  v16 = *(a4 + 32);
  v46 = *(a4 + 16);
  v47 = v16;
  v48 = *(a4 + 48);
  v49 = v15;
  v50 = *(a4 + 64);
  sub_1AF23891C(v40, a3, v16);
  v39 = 0;
  v38 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = sub_1AF26A74C(a1, a2, a3, v42, v40, &v34, &v41, a7);
  v18 = v17;
  v20 = v19;
  if (a9)
  {
    *a9 = v17;
  }

  v21 = v39;
  if (v17)
  {
    v22 = a2;
    v23 = a7;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    if (*(a4 + 3) == 1)
    {
      v30[0] = v34;
      v30[1] = 0;
      v30[2] = v35;
      v30[3] = v36;
      v31 = v37;
      v32 = *(&v36 + 1);
      v33 = v17;
      v29 = 0;
      v17 = sub_1AF26E55C(a1, v22, a3, v40, v30, &v29, v23);
      if (v29)
      {
        v24 = v29;
      }
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v17 = 0;
  }

  if (v20)
  {
    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  *a8 = v17;
  *(a8 + 8) = v24;
  *(a8 + 16) = v18;
  *(a8 + 24) = v25;
  *(a8 + 32) = v18;
  *(a8 + 40) = v26;
  *(a8 + 48) = v20;
  *(a8 + 56) = v27;
  result = 0.0;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  return result;
}

double sub_1AF24F104@<D0>(CFX::RG::Resource *this@<X4>, uint64_t *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, CFX::RG::Pass *a5@<X3>, uint64_t a6@<X8>)
{
  v12 = CFX::RG::Resource::constTextureDesc(this);
  CFX::RG::TextureDescriptorReference::withSampleCount(v12, 1, &v30);
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v18 = v30;
  v19 = v31;
  v13 = sub_1AF233CC8(a2, "DEPTH COPY", &v18);
  *&v18 = this;
  DWORD2(v18) = 0;
  *&v19 = v13;
  *(&v19 + 1) = 0x100000000;
  CopyPass = CFX::RG::makeCopyPass(a2, "Copy linearize depth", &v18);
  CFX::RG::Pass::dependsOn(CopyPass, a5);
  *&v18 = "Linearize depth";
  *(&v18 + 1) = a3;
  LOWORD(v19) = 0;
  *(&v19 + 1) = a4;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v20 = v30;
  v21 = v31;
  v15 = sub_1AF24EA1C(a2, a2, &v18);
  sub_1AF24E7B8(v15, v13);
  CFX::RG::Pass::dependsOn(v15, CopyPass);
  result = 0.0;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 16) = 0u;
  v17 = *(v15 + 79);
  *a6 = v15;
  *(a6 + 8) = v17;
  return result;
}

double sub_1AF24F264@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, CFX::RG::Resource *a3@<X3>, CFX::RG::Resource *a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __n128 a9@<Q0>, __n128 a10@<Q1>, __n128 a11@<Q2>, float a12@<S3>, float a13@<S4>, float a14@<S5>, float a15@<S6>, float a16@<S7>, uint64_t a17, uint64_t a18)
{
  v37 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a6;
  v27 = a7;
  v28 = a17;
  v29 = a12;
  v30 = a13;
  v31 = a14;
  v32 = a15;
  v33 = a16;
  v34 = a18;
  v35 = a5;
  v36 = a2;
  v19 = sub_1AF23AA0C(a1, a3, a4, &v22);
  result = 0.0;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 16) = 0u;
  v21 = v19[74];
  *a8 = v19;
  *(a8 + 8) = v21;
  return result;
}

double sub_1AF24F318@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CFX::RG::Resource *a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v13[0] = a3;
  v13[1] = a6;
  v13[2] = a7;
  v14 = a5;
  v15 = a9;
  v16 = a2;
  v10 = sub_1AF245774(a1, a4, v13);
  result = 0.0;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 16) = 0u;
  v12 = v10[61];
  *a8 = v10;
  *(a8 + 8) = v12;
  return result;
}

double sub_1AF24F37C@<D0>(uint64_t *a1@<X0>, CFX::RG::RenderGraphContext *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const CFX::RG::Resource *a5@<X5>, CFX::RG::Resource *a6@<X6>, uint64_t a7@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v11 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, a5);
  v12 = *(v11 + 16);
  v17 = *v11;
  v18 = v12;
  v13 = sub_1AF237040(a1, a2, v16, a6);
  result = 0.0;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  v15 = *(v13 + 101);
  *a7 = v13;
  *(a7 + 8) = v15;
  return result;
}

double sub_1AF24F40C@<D0>(uint64_t *a1@<X0>, CFX::RG::RenderGraphContext *a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, const CFX::RG::Resource *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (!a5)
  {
    v16 = sub_1AF0D5194();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEF744(v16);
    }
  }

  sub_1AF23891C(v28, a3, a4);
  v28[2] = 0;
  v28[5] = 0;
  v17 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, a5) + 4);
  v18 = vld1q_dup_f64(v17);
  v29 = vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(v18, xmmword_1AFE42F50), 0x30uLL)));
  v24[1] = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0;
  v24[0] = a5;
  v24[2] = a7;
  v27 = a6;
  v19 = CFX::RG::Resource::textureDesc(a5);
  v20 = sub_1AF26E55C(a1, a2, a3, v28, v24, &v23, v19);
  result = 0.0;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  v22 = v23;
  *a8 = v20;
  *(a8 + 8) = v22;
  return result;
}

double sub_1AF24F538@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, CFX::RG::Resource *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a7;
  v14[3] = a8;
  v12 = a3;
  v13 = a2;
  v9 = sub_1AF24F5A4(a1, &v13, &v12, v14);
  CFX::RG::Pass::writeTo(v9, v12);
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 16) = 0u;
  v11 = v12;
  *a4 = v9;
  *(a4 + 8) = v11;
  return result;
}

uint64_t sub_1AF24F5A4(uint64_t *a1, uint64_t *a2, uint64_t *a3, double *a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF24FEC0(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF24F600(CFX::RG::Resource *this@<X3>, uint64_t *a2@<X0>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v28 = a5;
  v26 = 0;
  if (a5)
  {
    v12 = CFX::RG::Resource::constTextureDesc(this);
    CFX::RG::TextureDescriptorReference::withSampleCount(v12, 1, &v22);
    if (a4)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    sub_1AF241720(a2, "Custom subgraph published texture", &v22, v13, &v25);
    v14 = v25;
    v26 = v25;
    v15 = v25;
  }

  else
  {
    v16 = CFX::RG::Resource::constTextureDesc(this);
    CFX::RG::TextureDescriptorReference::withSampleCount(v16, 1, &v22);
    v15 = sub_1AF233CC8(a2, "Custom subgraph published texture", &v22);
    v14 = 0;
  }

  v27 = v15;
  *&v22 = this;
  DWORD2(v22) = 0;
  v23 = v15;
  v24 = 0x100000000;
  CopyPass = CFX::RG::makeCopyPass(a2, "Copy to publish", &v22);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v22, a3);
  if (a5)
  {
    v18 = sub_1AF24F7EC(a2, &v27, &v28);
    v19 = v27;
    v20 = CFX::RG::Temporal::currentFrame(v18);
    CFX::RG::Pass::readFrom(v18, v19, v20);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a2, v22, v27, v18);
    CFX::RG::RegisterResourcePass::storeManaged(v18, &v26);
    CFX::RG::Pass::dependsOn(v18, CopyPass);
    v14 = v26;
    v15 = v27;
  }

  else
  {
    CFX::RG::RenderGraphBuilder::publishResourceReference(a2, v22, v15, CopyPass);
  }

  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 16) = 0u;
  *a6 = CopyPass;
  *(a6 + 8) = v15;
  v26 = 0;
  if (v14)
  {
    CFX::RG::Resource::~Resource(v14);
    free(v21);
  }
}

void sub_1AF24F7BC(_Unwind_Exception *exception_object)
{
  *(v2 - 88) = 0;
  if (v1)
  {
    CFX::RG::Resource::~Resource(v1);
    free(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF24F7EC(uint64_t *a1, void *a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25025C(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

CFX::RG::Resource *sub_1AF24F844(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF12E2AC(a3);
  sub_1AF24ED5C(a2, v15);
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v16, v15);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF24FAAC;
  v14[3] = &unk_1E7A7DAA0;
  v14[4] = a3;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v17, v16, v14, 0);
  FinalTexture = objc_msgSend_requireLoadFinalTexture(v6, v7, v8, v9);
  CFX::RG::ExternalResourceDesc::setRequireLoad(v17, FinalTexture);
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v13, v17);
  v11 = sub_1AF24BF34(a1, "DRAWABLE", v13);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v13);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v17);
  return v11;
}

void sub_1AF24F950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&a9);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc((v9 - 240));
  _Unwind_Resume(a1);
}

double sub_1AF24F974@<D0>(uint64_t *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  CFXTextureDescriptorFromMTLTexture(a4, a2, a3, a4, v13);
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v14, v13);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF24FAA4;
  v12[3] = &unk_1E7A7DA80;
  v12[4] = a4;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v17, &v14, v12, 0);
  v9 = sub_1AF24BF34(a1, "Copy to External", v17);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v17);
  *&v14 = a2;
  DWORD2(v14) = 0;
  v15 = v9;
  v16 = 0x100000000;
  CopyPass = CFX::RG::makeCopyPass(a1, "Copy", &v14);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 16) = 0u;
  *a5 = CopyPass;
  *(a5 + 8) = v9;
  return result;
}

uint64_t sub_1AF24FAAC(uint64_t a1)
{
  prof_beginFlame("Get drawable", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/RenderGraphLibrary.mm", 645);
  v2 = sub_1AF12E2AC(*(a1 + 32));
  v6 = objc_msgSend__finalRenderTexture(v2, v3, v4, v5);
  prof_endFlame();
  return v6;
}

uint64_t sub_1AF24FB0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v13 = a3;
  v10 = a4;
  v11 = a7;
  v12 = a5;
  v8 = sub_1AF24FB7C(a1, a1, a2, &v10, &v13);
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *a6 = v8;
  result = sub_1AF261650(v8);
  *(a6 + 8) = result;
  return result;
}

uint64_t sub_1AF24FB7C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  v10[0] = sub_1AF2502BC(v10[0], v8, v10, a2, a3, a4, a5);
  sub_1AF235000(a1 + 22, v10);
  return v10[0];
}

uint64_t sub_1AF24FBDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  objc_msgSend_attachmentProvider(a2, a2, a3, a4);
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v9 = objc_msgSend_attachmentProvider(a2, v6, v7, v8), (v13 = objc_msgSend_finalColorDescriptor(v9, v10, v11, v12)) != 0))
  {
    sub_1AF24FD20(a1, v13, v7, v8);
  }

  else if (objc_msgSend_textureTarget(a2, v6, v7, v8))
  {
    v17 = objc_msgSend_textureTarget(a2, v14, v15, v16);
    sub_1AF24FDB8(a1, v17, v18, v19);
  }

  else if (objc_msgSend_metalDisplayLinkUpdate(a2, v14, v15, v16))
  {
    v23 = objc_msgSend_engineContext(a2, v20, v21, v22);
    *a1 = vrndmq_f32(sub_1AF130548(v23));
    v27 = objc_msgSend_metalDisplayLinkUpdate(a2, v24, v25, v26);
    sub_1AF24FE44(a1, v27, v28, v29);
  }

  else if (objc_msgSend_layerTarget(a2, v20, v21, v22))
  {
    v33 = objc_msgSend_engineContext(a2, v30, v31, v32);
    *a1 = vrndmq_f32(sub_1AF130548(v33));
    v37 = objc_msgSend_layerTarget(a2, v34, v35, v36);
    objc_msgSend_drawableSize(v37, v38, v39, v40);
    *&v41 = v41;
    *(a1 + 16) = floorf(*&v41);
    objc_msgSend_drawableSize(v37, v42, v43, v44);
    v46 = v45;
    *(a1 + 20) = floorf(v46);
    *(a1 + 24) = objc_msgSend_pixelFormat(v37, v47, v48, v49);
    v53 = objc_msgSend_framebufferOnly(v37, v50, v51, v52);
    v54 = 4;
    if (!v53)
    {
      v54 = 0;
    }

    *(a1 + 40) = v54;
  }

  return a1;
}

uint64_t sub_1AF24FD20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = objc_msgSend_width(a2, a2, a3, a4);
  *(a1 + 20) = objc_msgSend_height(a2, v6, v7, v8);
  *&v9 = 0;
  *(&v9 + 1) = *(a1 + 8);
  *a1 = v9;
  *(a1 + 8) = objc_msgSend_width(a2, v10, v11, v12);
  *(a1 + 12) = objc_msgSend_height(a2, v13, v14, v15);
  *(a1 + 24) = objc_msgSend_pixelFormat(a2, v16, v17, v18);
  result = objc_msgSend_arrayLength(a2, v19, v20, v21);
  if (result <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = result;
  }

  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1AF24FDB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = objc_msgSend_width(a2, a2, a3, a4);
  *(a1 + 20) = objc_msgSend_height(a2, v6, v7, v8);
  *&v9 = 0;
  *(&v9 + 1) = *(a1 + 8);
  *a1 = v9;
  *(a1 + 8) = objc_msgSend_width(a2, v10, v11, v12);
  *(a1 + 12) = objc_msgSend_height(a2, v13, v14, v15);
  *(a1 + 24) = objc_msgSend_pixelFormat(a2, v16, v17, v18);
  result = objc_msgSend_usage(a2, v19, v20, v21);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1AF24FE44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_drawable(a2, a2, a3, a4);
  v10 = objc_msgSend_texture(v6, v7, v8, v9);
  *(a1 + 16) = objc_msgSend_width(v10, v11, v12, v13);
  v17 = objc_msgSend_drawable(a2, v14, v15, v16);
  v21 = objc_msgSend_texture(v17, v18, v19, v20);
  *(a1 + 20) = objc_msgSend_height(v21, v22, v23, v24);
  v28 = objc_msgSend_drawable(a2, v25, v26, v27);
  v32 = objc_msgSend_texture(v28, v29, v30, v31);
  *(a1 + 24) = objc_msgSend_pixelFormat(v32, v33, v34, v35);
  v39 = objc_msgSend_drawable(a2, v36, v37, v38);
  v43 = objc_msgSend_texture(v39, v40, v41, v42);
  result = objc_msgSend_usage(v43, v44, v45, v46);
  *(a1 + 40) = result;
  return result;
}

CFX::RG::Pass *sub_1AF24FEC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, double *a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x1D8u, 8u);
  return sub_1AF24FF2C(v10, *a3, a3[1], *a4, *a5, *a6, a6[1], a6[2], a6[3]);
}

CFX::RG::Pass *sub_1AF24FF2C(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  *this = &unk_1F24EA2A0;
  if ((atomic_load_explicit(&qword_1ED73A7A8, memory_order_acquire) & 1) == 0)
  {
    v18 = a2;
    v19 = a3;
    sub_1AFDEF7C8();
    a2 = v18;
    a3 = v19;
  }

  if (byte_1ED73A7A0)
  {
    v16 = 0x87C7986451C0567CLL;
  }

  else
  {
    v16 = 0;
  }

  result = CFX::RG::Pass::Pass(this, a2, a3, "LoadRenderTarget", 1, v16, this);
  *this = &unk_1F24EA2A0;
  *(this + 53) = a4;
  *(this + 54) = a5;
  *(this + 55) = a6;
  *(this + 56) = a7;
  *(this + 57) = a8;
  *(this + 58) = a9;
  return result;
}

void sub_1AF250010(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF250048(double *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a1) ^ ((0x9DDFEA08EB382D69 * a1) >> 47));
    v8 = sub_1AF2501B8(*(a2 + 32), 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47)));
    v10 = sub_1AF1302D4(*(a1 + 53));
    if (*(v8 + 16) > v10)
    {
      v11 = *(a2 + 24);
      v12 = *(a1 + 54);
      v13 = CFX::RG::Temporal::currentFrame(v9);
      Texture = CFX::GPUResourceManager::getTexture(v11, v12, v13);
      v15 = CFX::RG::RendererPassArguments::commandBuffer((a4 + 8));
      v16 = objc_alloc_init(MEMORY[0x1E6974128]);
      v20 = objc_msgSend_colorAttachments(v16, v17, v18, v19);
      v23 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0, v22);
      objc_msgSend_setTexture_(v23, v24, Texture, v25);
      v26 = a1[55];
      v27 = a1[56];
      v28 = a1[57];
      v29 = a1[58];
      v33 = objc_msgSend_colorAttachments(v16, v30, v31, v32);
      v36 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, 0, v35);
      objc_msgSend_setClearColor_(v36, v37, v38, v39, v26, v27, v28, v29);
      v43 = objc_msgSend_colorAttachments(v16, v40, v41, v42);
      v46 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, 0, v45);
      objc_msgSend_setLoadAction_(v46, v47, 2, v48);
      v52 = objc_msgSend_colorAttachments(v16, v49, v50, v51);
      v55 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, 0, v54);
      objc_msgSend_setStoreAction_(v55, v56, 1, v57);
      v60 = objc_msgSend_renderCommandEncoderWithDescriptor_(v15, v58, v16, v59);

      objc_msgSend_endEncoding(v60, v61, v62, v63);
    }

    *(v8 + 16) = v10;
  }
}

uint64_t sub_1AF2501B8(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF25025C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1C0u, 8u);
  return CFX::RG::RegisterResourcePass::RegisterResourcePass(v8, *a3, a3[1], *a4, *a5);
}

uint64_t sub_1AF2502BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14[0] = a1;
  v14[1] = a2;
  v12 = sub_1AF23498C(v14, 0x1F0u, 8u);
  return sub_1AF2612E0(v12, *a3, a3[1], a4, a5, a6, *a7);
}

uint64_t sub_1AF250334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = "Main";
  *(a2 + 8) = a1;
  *(a2 + 16) = sub_1AF12FAD0(a1);
  if (sub_1AF12FAD0(a1) == 1)
  {
    result = sub_1AF1307C4(a1);
  }

  else
  {
    result = 0;
  }

  *(a2 + 17) = result;
  return result;
}

__n128 sub_1AF250390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v8 = *a4;
  v13 = 0u;
  v14 = 0u;
  BYTE12(v13) = 1;
  BYTE14(v13) = 1;
  memset(v12, 0, sizeof(v12));
  do
  {
    v9 = &v12[v7];
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0x3FF0000000000000;
    v7 += 2;
  }

  while (v7 != 16);
  BYTE3(v14) = 1;
  BYTE5(v14) = 1;
  *(&v14 + 7) = 257;
  BYTE11(v14) = 0;
  v10 = CFX::RG::Pass::Pass(a1, a2, a3, v8, v12, a5, a6);
  *v10 = &unk_1F24EA2F8;
  result = *a4;
  *(v10 + 440) = a4[2];
  *(v10 + 424) = result;
  return result;
}

uint64_t sub_1AF250474(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 32))(a1);
  v4 = v3[270];
  v5 = v3[271];
  v6 = v3[272];
  v7 = v3[273];
  sub_1AF250540(a2, (v3[269] != 0), v8, v9);
  if (*(a2 + 40) == 1)
  {
    v4 = *(&xmmword_1AFE22A20 + v4);
  }

  objc_msgSend_setFrontFacingWinding_(*(a2 + 16), v10, v4, v11);
  objc_msgSend_setTriangleFillMode_(*(a2 + 16), v12, v5, v13);
  objc_msgSend_setDepthClipMode_(*(a2 + 16), v14, v6, v15);
  v18 = *(a2 + 16);

  return objc_msgSend_setCullMode_(v18, v16, v7, v17);
}

uint64_t sub_1AF250540(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (!*(a1 + 24))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEF814(v6);
    }
  }

  *(a1 + 40) = v4;
  v7 = objc_msgSend_frontFacingWinding(*(a1 + 24), a2, a3, a4);
  v10 = v7;
  if (*(a1 + 40) == 1)
  {
    v10 = *(&xmmword_1AFE22A20 + v7);
  }

  return objc_msgSend_setFrontFacingWinding_(*(a1 + 16), v8, v10, v9);
}

uint64_t sub_1AF2505C4(uint64_t a1)
{
  v1 = sub_1AF12E2AC(*(a1 + 432));

  return objc_msgSend_renderEncoder(v1, v2, v3, v4);
}

uint64_t *sub_1AF2505F0(uint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v6 = result;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v9 = sub_1AF12E2AC(result[54]);
      v13 = objc_msgSend_renderEncoder(v9, v10, v11, v12);
      if (v13)
      {
        v14 = v13;
        v15 = CFX::RG::RenderPassArguments::passDescriptor((a4 + 8));
        v19 = objc_msgSend_renderTargetArrayLength(v15, v16, v17, v18);
        if (*(v6 + 440) == 1)
        {
          v21 = *(v6 + 441);
          if (v21 == 1)
          {
            *v14 = v19;
          }

          else if (v21 == 2)
          {
            sub_1AF25083C(v14, v19, 1);
          }

          else
          {
            v30 = sub_1AF0D5194();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDEF898(v30, v31, v32, v33, v34, v35, v36, v37);
            }
          }
        }

        else if (*(v6 + 440))
        {
          v22 = sub_1AF0D5194();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDEF8D0(v22, v23, v24, v25, v26, v27, v28, v29);
          }
        }

        else if (*(v14 + 4) != 1)
        {
          *(v14 + 4) = 1;
          objc_msgSend_setVertexAmplificationCount_viewMappings_(*(v14 + 16), v20, 1, 0);
        }

        sub_1AF250474(v6, v14);
      }

      return (*(*v6 + 56))(v6, a2, a4 + 8);
    }

    else if (a3 == 3)
    {
      v8 = *(*result + 64);

      return v8();
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      v7 = *(*result + 48);
    }

    else
    {
      v7 = *(*result + 40);
    }

    return v7();
  }

  return result;
}

uint64_t sub_1AF25083C(uint64_t result, const char *a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(result + 4) == a2)
  {
    return result;
  }

  v3 = a2;
  v4 = result;
  *(result + 4) = a2;
  if (a2 > 1)
  {
    if (a3 == 2)
    {
      v6 = xmmword_1AFE21110;
    }

    else
    {
      if (a3 != 1)
      {
        v7 = sub_1AF0D5194();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDEF908(v7, a2, v8, v9, v10, v11, v12, v13);
        }

        return objc_msgSend_setVertexAmplificationCount_viewMappings_(*(v4 + 16), a2, v3, &v14);
      }

      v6 = xmmword_1AFE43020;
    }

    v14 = v6;
    return objc_msgSend_setVertexAmplificationCount_viewMappings_(*(v4 + 16), a2, v3, &v14);
  }

  v5 = *(result + 16);

  return objc_msgSend_setVertexAmplificationCount_viewMappings_(v5, a2, 1, 0);
}

void sub_1AF25095C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF250994(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  v35 = "ReprojectionMapPass";
  *v36 = v8;
  if ((atomic_load_explicit(&qword_1ED73A7B8, memory_order_acquire) & 1) == 0)
  {
    v34 = a3;
    v33 = a2;
    sub_1AFDEF940();
    a2 = v33;
    a3 = v34;
  }

  if (byte_1ED73A7B0)
  {
    v9 = 0xEBC1C523E727E7ELL;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v35, v9, 0);
  *a1 = &unk_1F24EA350;
  v10 = *(a5 + 1);
  v11 = a5[4];
  *(a1 + 440) = *a5;
  *(a1 + 456) = v10;
  *(a1 + 472) = v11;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  sub_1AF250B98(v12, a4);
  v13 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, *(a1 + 456));
  v38 = *v13;
  v39 = *(v13 + 8);
  v14 = *(v13 + 12);
  v15 = *(v13 + 20);
  v16 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v35 = v38;
  *v36 = v39;
  *&v36[4] = v14 & 0xFFFFFFFFFFFF0000 | 0x71;
  v37 = v15;
  v17 = sub_1AF2373FC(v16, "ReprojectionMapPassOutput", &v35);
  *(a1 + 496) = v17;
  v18 = *(a1 + 448);
  v19 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v18, v19);
  v20 = *(a1 + 456);
  v22 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v20, v22);
  v23 = *(a1 + 464);
  v25 = CFX::RG::Temporal::currentFrame(v24);
  CFX::RG::Pass::readFrom(a1, v23, v25);
  v26 = *(*(a1 + 488) + 24);
  v28 = CFX::RG::Temporal::currentFrame(v27);
  CFX::RG::Pass::readFrom(a1, v26, v28);
  v29 = *(*(a1 + 488) + 16);
  v31 = CFX::RG::Temporal::currentFrame(v30);
  CFX::RG::Pass::readFrom(a1, v29, v31);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 488) + 24));
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 488) + 16));
  CFX::RG::Pass::writeTo(a1, *(a1 + 496));
  return a1;
}

uint64_t sub_1AF250B98(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 456)) + 4);
  v5 = CFX::RG::Pass::hash(a1);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v5)));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  result = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v4 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ (v4 >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v4 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ (v4 >> 16))))) >> 47)));
  *(a1 + 488) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF250E40(uint64_t *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF250E80(a1, a2);

  return sub_1AF250B98(a1, a2);
}

uint64_t sub_1AF250E80(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  a1[60] = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

__n128 sub_1AF250F90(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[60] + 16))
  {
    v7 = v5;
    v8 = sub_1AF12F10C(a1[54]);
    if (v8)
    {
      v9 = sub_1AF1BB260(v8);
      if (v9)
      {
        v10 = v9;
        v11 = sub_1AF12F10C(a1[54]);
        sub_1AF27F12C(v11, v86);
        v12 = sub_1AF13050C(a1[54], 1);
        v83 = v12[1];
        v84 = *v12;
        v81 = v12[3];
        v82 = v12[2];
        v85 = sub_1AF12FCE8(a1[54], 0);
        v13 = *(a2 + 24);
        v14 = a1[56];
        v16 = CFX::RG::Temporal::currentFrame(v15);
        Texture = CFX::GPUResourceManager::getTexture(v13, v14, v16);
        v18 = *(a2 + 24);
        v19 = a1[57];
        v20 = CFX::RG::Temporal::currentFrame(Texture);
        v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
        v22 = *(a2 + 24);
        v23 = a1[58];
        v24 = CFX::RG::Temporal::currentFrame(v21);
        v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
        v26 = *(a2 + 24);
        v27 = *(a1[61] + 24);
        v28 = CFX::RG::Temporal::currentFrame(v25);
        v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
        v30 = *(a2 + 24);
        v31 = *(a1[61] + 16);
        v32 = CFX::RG::Temporal::currentFrame(v29);
        v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
        v34 = *(a2 + 24);
        v35 = a1[62];
        v36 = CFX::RG::Temporal::currentFrame(v33);
        v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
        objc_msgSend_setTexture_atIndex_(v7, v38, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v7, v39, v21, 1);
        objc_msgSend_setTexture_atIndex_(v7, v40, v25, 2);
        objc_msgSend_setTexture_atIndex_(v7, v41, v29, 3);
        objc_msgSend_setTexture_atIndex_(v7, v42, v33, 4);
        objc_msgSend_setTexture_atIndex_(v7, v43, v37, 5);
        v44 = a1[60];
        v44[10] = v84;
        v44[11] = v83;
        v44[12] = v82;
        v44[13] = v81;
        v45 = sub_1AF15E62C(v86, &v85);
        v46 = 0;
        v47 = *(v45 + 1);
        v48 = *(v45 + 2);
        v49 = *(v45 + 3);
        v50 = a1[60];
        v50[18] = *v45;
        v50[19] = v47;
        v50[20] = v48;
        v50[21] = v49;
        v51 = a1[60];
        v52 = v51[18];
        v53 = v51[19];
        v54 = v51[20];
        v55 = v51[21];
        v56 = v51[11];
        v57 = v51[12];
        v58 = v51[13];
        v87[0] = v51[10];
        v87[1] = v56;
        v87[2] = v57;
        v87[3] = v58;
        do
        {
          v88[v46] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v52, COERCE_FLOAT(v87[v46])), v53, *&v87[v46], 1), v54, v87[v46], 2), v55, v87[v46], 3);
          ++v46;
        }

        while (v46 != 4);
        v59 = v88[1];
        v60 = v88[2];
        v61 = v88[3];
        v51[2] = v88[0];
        v51[3] = v59;
        v51[4] = v60;
        v51[5] = v61;
        *(a1[60] + 352) = __invert_f4(*(a1[60] + 288));
        *(a1[60] + 224) = __invert_f4(*(a1[60] + 160));
        *(a1[60] + 416) = __invert_f4(*(a1[60] + 32));
        *(a1[60] + 544) = sub_1AF15D6DC(v10);
        v65 = objc_msgSend_width(v21, v62, v63, v64);
        *(a1[60] + 552) = __PAIR64__(objc_msgSend_height(v21, v66, v67, v68), v65);
        objc_msgSend_setBytes_length_atIndex_(v7, v69, a1[60] + 32, 544, 8);
        v70 = sub_1AF1403B4(a1[60] + 16);
        v71 = sub_1AFDE323C(v70);
        objc_msgSend_dispatch_onTexture2D_(v7, v72, v71, v37);
        v73 = sub_1AF1403B4(a1[60] + 24);
        v74 = sub_1AFDE323C(v73);
        objc_msgSend_dispatch_onTexture2D_(v7, v75, v74, v37);
        v76 = a1[60];
        ++*(v76 + 560);
        v77 = *(v76 + 464);
        *(v76 + 512) = *(v76 + 448);
        *(v76 + 528) = v77;
        v78 = *(v76 + 432);
        *(v76 + 480) = *(v76 + 416);
        *(v76 + 496) = v78;
        v79 = a1[60];
        v80 = *(v79 + 80);
        *(v79 + 128) = *(v79 + 64);
        *(v79 + 144) = v80;
        result = *(v79 + 48);
        *(v79 + 96) = *(v79 + 32);
        *(v79 + 112) = result;
      }
    }
  }

  return result;
}

uint64_t sub_1AF251314(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  result = sub_1AF251340(a1, a2, a3);
  a3[4] = *(result + 496);
  return result;
}

uint64_t sub_1AF251340(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25156C(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF25139C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2513D4(uint64_t a1)
{
  *a1 = &unk_1F24EA3A8;

  return a1;
}

void sub_1AF251424(uint64_t a1)
{
  *a1 = &unk_1F24EA3A8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF251494(uint64_t a1)
{
  *a1 = &unk_1F24EA3C8;
  v2 = (a1 + 16);
  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34(v2, 0);
  return a1;
}

void sub_1AF2514F0(uint64_t a1)
{
  *a1 = &unk_1F24EA3C8;
  v1 = (a1 + 16);
  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34(v1, 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25156C(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F8u, 8u);
  return sub_1AF250994(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2515CC(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v28 = "RTIndirectClearCoatTracePass";
  *(&v28 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A7C8, memory_order_acquire) & 1) == 0)
  {
    v24 = a2;
    v25 = a3;
    sub_1AFDEF98C();
    a2 = v24;
    a3 = v25;
  }

  sub_1AF239F88(a1, a2, a3, &v28, qword_1ED73A7C0, 0);
  *a1 = &unk_1F24EA3E8;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a5;
  sub_1AF25176C(v9, a4);
  sub_1AF251B58(a1, a4);
  v28 = 0uLL;
  v10 = *(*(*(a1 + 440) + 296) + 624);
  v29 = 0;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (SHIDWORD(v10) <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = WORD2(v10);
  }

  CFXTextureDescriptorMake2D(v11, v12, 0x19u, &v28);
  v13 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v26 = v28;
  v27 = v29;
  v14 = sub_1AF2373FC(v13, "distanceTex", &v26);
  *(a1 + 464) = v14;
  v15 = a5[26];
  v16 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v15, v16);
  v17 = a5[27];
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v17, v19);
  v20 = *(*(a1 + 440) + 272);
  v22 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v20, v22);
  CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 456) + 16));
  return a1;
}

double sub_1AF25176C(uint64_t *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = sub_1AF12DDCC(a1[54]);
  v9 = sub_1AF1D0140(v8);
  v10 = sub_1AF1D005C(v8, 0) != 0;
  v11 = sub_1AF1449F0(v9) != 0;
  v40 = *(a1[55] + 172);
  v12 = CFX::RG::Pass::hash(a1);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v11)));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v10)));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
  v16 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v40)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v40)))) ^ ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v40)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v40)))) >> 47)));
  a1[56] = v16;
  if (!v16)
  {
    operator new();
  }

  v17 = a1[55];
  *(v17 + 296) = v16 + 48;
  v18 = 1.0;
  v19 = 1.0;
  if (v40 != 2)
  {
    v20 = sub_1AF130864(a1[54]);
    v19 = ceilf(v20 / sub_1AF130888(a1[54]));
    v17 = a1[55];
  }

  v21 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(v17 + 208)) + 4);
  v22 = vld1q_dup_f64(v21);
  v23 = *(a1[55] + 296);
  v23[80].i32[0] = v19;
  if (v40)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  v23[80].i32[1] = (v19 * v24);
  v25 = vshrq_n_s64(vshlq_u64(v22, xmmword_1AFE42F50), 0x30uLL);
  v26 = vcgtq_s64(v25, vdupq_n_s64(1uLL));
  v23[76] = vmovn_s64(vsubq_s64(vandq_s8(v25, v26), vmvnq_s8(v26)));
  v27 = *(a1[55] + 296);
  v28 = *(v27 + 640);
  v25.i32[0] = *(v27 + 608) / v28;
  v25.i32[1] = HIDWORD(*(v27 + 608)) / v28;
  *(v27 + 616) = v25.i64[0];
  v29 = *(a1[55] + 296);
  v30 = *(v29 + 644);
  v25.i32[0] = *(v29 + 608) / v30;
  v25.i32[1] = HIDWORD(*(v29 + 608)) / v30;
  *(v29 + 624) = v25.i64[0];
  v31 = a1[55];
  v32 = *(v31 + 288);
  if (v32 != 2)
  {
    v33 = sub_1AF130864(a1[54]);
    v18 = ceilf(v33 / sub_1AF130888(a1[54]));
    v31 = a1[55];
  }

  if (v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  v35 = (v18 * v34);
  v36 = *(v31 + 296);
  v37 = *(v36 + 608) / v35;
  v38 = HIDWORD(*(v36 + 608)) / v35;
  result = COERCE_DOUBLE(__PAIR64__(v38, v37));
  *(v36 + 632) = __PAIR64__(v38, v37);
  return result;
}

uint64_t sub_1AF251B58(uint64_t *a1, uint64_t a2)
{
  sub_1AF12E2AC(a1[54]);
  v4 = vmul_lane_s32(*(*(a1[55] + 296) + 624), *(*(a1[55] + 296) + 624), 1).u32[0];
  v5 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47)));
  a1[57] = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF251D30(uint64_t *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF25176C(a1, a2);

  return sub_1AF251B58(a1, a2);
}

void *sub_1AF251D70(uint64_t a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(*(a1 + 448) + 40))
  {
    v6 = result;
    v7 = sub_1AF12E2AC(*(a1 + 432));
    v8 = sub_1AF12DDCC(*(a1 + 432));
    result = sub_1AF12F10C(*(a1 + 432));
    if (result)
    {
      result = sub_1AF1BB260(result);
      if (result)
      {
        v9 = sub_1AF12F10C(*(a1 + 432));
        sub_1AF27F12C(v9, v160);
        v10 = sub_1AF13050C(*(a1 + 432), 1);
        v154 = v10[1];
        v155 = *v10;
        v152 = v10[3];
        v153 = v10[2];
        v159 = sub_1AF12FCE8(*(a1 + 432), 0);
        v156 = sub_1AF1D0140(v8);
        v11 = *(a2 + 24);
        v12 = *(*(a1 + 440) + 224);
        v13 = CFX::RG::Temporal::currentFrame(v156);
        Texture = CFX::GPUResourceManager::getTexture(v11, v12, v13);
        v14 = *(a2 + 24);
        v15 = *(*(a1 + 440) + 216);
        v16 = CFX::RG::Temporal::currentFrame(Texture);
        v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
        v18 = *(a2 + 24);
        v19 = *(*(a1 + 440) + 240);
        v20 = CFX::RG::Temporal::currentFrame(v17);
        v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
        v22 = v21;
        v23 = *(*(a1 + 440) + 248);
        v24 = v7;
        if (v23)
        {
          v25 = *(a2 + 24);
          v26 = CFX::RG::Temporal::currentFrame(v21);
          v21 = CFX::GPUResourceManager::getTexture(v25, v23, v26);
          v23 = v21;
        }

        v27 = *(a2 + 24);
        v28 = *(a1 + 464);
        v29 = CFX::RG::Temporal::currentFrame(v21);
        v30 = CFX::GPUResourceManager::getTexture(v27, v28, v29);
        objc_msgSend_setTexture_atIndex_(v6, v31, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v6, v32, v17, 1);
        objc_msgSend_setTexture_atIndex_(v6, v33, v22, 2);
        objc_msgSend_setTexture_atIndex_(v6, v34, v30, 7);
        v35 = sub_1AF2757FC(v24, *(a2 + 32));
        objc_msgSend_setTexture_atIndex_(v6, v36, v35, 9);
        objc_msgSend_setTexture_atIndex_(v6, v37, v23, 10);
        v40 = sub_1AF1D005C(v8, 0);
        if (v40)
        {
          v41 = objc_msgSend_textureForMaterialProperty_(v24, v38, v40, v39);
          if (v41)
          {
            objc_msgSend_setTexture_atIndex_(v6, v42, v41, 11);
          }

          v43 = sub_1AF167220(v40);
          v44 = MEMORY[0x1E69E9B18];
          if (v43)
          {
            v44 = v43;
          }

          v45 = *v44;
          v46 = v44[1];
          v47 = v44[2];
          v48 = v44[3];
          v49 = *(*(a1 + 440) + 296);
          v49[32] = v45;
          v49[33] = v46;
          v49[34] = v47;
          v49[35] = v48;
        }

        v158 = sub_1AF130C00(**(a1 + 440), 0);
        v50 = *(*(a1 + 440) + 296);
        v50[8] = v155;
        v50[9] = v154;
        v50[10] = v153;
        v50[11] = v152;
        v51 = sub_1AF15E62C(v160, &v159);
        v52 = 0;
        v53 = *(v51 + 1);
        v54 = *(v51 + 2);
        v55 = *(v51 + 3);
        v56 = *(*(a1 + 440) + 296);
        v56[20] = *v51;
        v56[21] = v53;
        v56[22] = v54;
        v56[23] = v55;
        v57 = *(a1 + 448);
        v58 = v57[23];
        v59 = v57[24];
        v60 = v57[25];
        v61 = v57[26];
        v62 = v57[12];
        v63 = v57[13];
        v64 = v57[14];
        v161 = v57[11];
        v162 = v62;
        v163 = v63;
        v164 = v64;
        do
        {
          *&v165[v52] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*(&v161 + v52))), v59, *&v161.f32[v52 / 4], 1), v60, *(&v161 + v52), 2), v61, *(&v161 + v52), 3);
          v52 += 16;
        }

        while (v52 != 64);
        v65 = *&v165[16];
        v66 = v166;
        v67 = v167;
        v68 = *(*(a1 + 440) + 296);
        *v68 = *v165;
        v68[1] = v65;
        v68[2] = v66;
        v68[3] = v67;
        *(*(*(a1 + 440) + 296) + 192) = __invert_f4(*(*(a1 + 448) + 176));
        *(*(*(a1 + 440) + 296) + 384) = __invert_f4(*(*(a1 + 448) + 48));
        *(*(*(a1 + 440) + 296) + 584) = (objc_msgSend_width(v17, v69, v70, v71) * v158.f32[0]) * 0.5;
        *(*(*(a1 + 440) + 296) + 588) = vmuls_lane_f32(objc_msgSend_height(v17, v72, v73, v74), v158, 1) * 0.5;
        v76 = *(a1 + 440);
        v77 = *(v76 + 296);
        *(v77 + 596) = *(v76 + 192);
        if (v40)
        {
          v78 = sub_1AF166598(v40);
          v77 = *(*(a1 + 440) + 296);
        }

        else
        {
          v78 = 0.0;
        }

        *(v77 + 600) = v78;
        v79 = objc_msgSend_setBytes_length_atIndex_(v6, v75, v77, 656, 8, v152, v153, v154, v155);
        v80 = *(a2 + 24);
        v81 = *(*(a1 + 440) + 272);
        v82 = CFX::RG::Temporal::currentFrame(v79);
        CFX::GPUResourceManager::getBuffer(v80, v81, v82);
        v84 = v83;
        v86 = v85;
        v87 = *(a2 + 24);
        v88 = *(*(a1 + 456) + 16);
        v89 = CFX::RG::Temporal::currentFrame(v83);
        CFX::GPUResourceManager::getBuffer(v87, v88, v89);
        v91 = v90;
        v93 = v92;
        MTLBuffer = CFXBufferSliceGetMTLBuffer(v84, v86);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v95, MTLBuffer, v86, 2);
        v96 = CFXBufferSliceGetMTLBuffer(v91, v93);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v97, v96, v93, 10);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v98, *(*(a1 + 456) + 40), 0, 0);
        v99 = sub_1AF1403B4(*(a1 + 448) + 16);
        v100 = sub_1AFDE323C(v99);
        objc_msgSend_dispatchOne_(v6, v101, v100, v102);
        v103 = *(*(*(a1 + 440) + 296) + 624);
        v104 = v103;
        v105 = SHIDWORD(v103);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v106, *(*(a1 + 456) + 40), 0, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v107, *(*(a1 + 456) + 32), 0, 1);
        v108 = sub_1AF1403B4(*(a1 + 448) + 24);
        v109 = sub_1AFDE323C(v108);
        objc_msgSend_setComputePipelineState_(v6, v110, v109, v111);
        v112 = sub_1AF1403B4(*(a1 + 448) + 24);
        v113 = sub_1AFDE323C(v112);
        *v165 = v104;
        *&v165[8] = v105;
        *&v165[16] = 1;
        RGMTLComputeCommandEncoderDispatchOnGrid2D(v6, v113, v165, 1);
        v114 = sub_1AF1403B4(*(a1 + 448) + 40);
        v115 = sub_1AFDE323C(v114);
        *v165 = objc_msgSend_threadExecutionWidth(v115, v116, v117, v118);
        *&v165[8] = vdupq_n_s64(1uLL);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v119, *(*(a1 + 456) + 40), 0, 0);
        objc_msgSend_setBytes_length_atIndex_(v6, v120, v165, 24, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v121, *(*(a1 + 456) + 48), 0, 2);
        v122 = sub_1AF1403B4(*(a1 + 448) + 32);
        v123 = sub_1AFDE323C(v122);
        objc_msgSend_dispatchOne_(v6, v124, v123, v125);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v126, *(*(a1 + 440) + 176), 0, 4);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v127, *(*(a1 + 440) + 184), 0, 5);
        sub_1AF144838(v156, v6);
        v128 = sub_1AF1448D8(v156);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v129, v128, 0, 0);
        v130 = sub_1AF1448D0(v156);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v6, v131, v130, 1);
        if (sub_1AF1449E0(v156))
        {
          v132 = sub_1AF1448E0(v156);
          objc_msgSend_setBuffer_offset_atIndex_(v6, v133, v132, 0, 2);
        }

        if (sub_1AF1449F0(v156))
        {
          v134 = sub_1AF1403B4(*(a1 + 448) + 40);
          v135 = sub_1AFDE323C(v134);
          v136 = sub_1AF144918(v156, v135);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v6, v137, v136, 3);
        }

        v138 = sub_1AF1448E8(v156);
        v142 = sub_1AF144A00(v156, v139, v140, v141);
        objc_msgSend_useResources_count_usage_(v6, v143, v138, v142, 1);
        v144 = sub_1AF1403B4(*(a1 + 448) + 40);
        v145 = sub_1AFDE323C(v144);
        objc_msgSend_setComputePipelineState_(v6, v146, v145, v147);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v148, *(*(a1 + 456) + 40), 0, 6);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v149, *(*(a1 + 456) + 32), 0, 7);
        v150 = *(*(a1 + 456) + 48);
        v161 = *v165;
        v162.i64[0] = *&v165[16];
        return objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v6, v151, v150, 0, &v161);
      }
    }
  }

  return result;
}

uint64_t sub_1AF2524AC(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v28 = "RTIndirectClearCoatUpscalePass";
  *(&v28 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A7D8, memory_order_acquire) & 1) == 0)
  {
    v24 = a2;
    v25 = a3;
    sub_1AFDEF9E4();
    a2 = v24;
    a3 = v25;
  }

  sub_1AF239F88(a1, a2, a3, &v28, qword_1ED73A7D0, 0);
  *a1 = &unk_1F24EA440;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a5;
  v9 = sub_1AF12E2AC(*(a1 + 432));
  *(a1 + 464) = sub_1AF2757FC(v9, a4[4]);
  v28 = 0uLL;
  v29 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 296) + 616), WORD2(*(*(*(a1 + 440) + 296) + 616)), 0x73u, &v28);
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v26 = v28;
  v27 = v29;
  v11 = sub_1AF2373FC(v10, "IndirectSpecularUpscale", &v26);
  *(a1 + 456) = v11;
  v12 = *(*(a1 + 440) + 224);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  v14 = *(*(a1 + 440) + 216);
  v16 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v14, v16);
  v17 = *(*(a1 + 440) + 264);
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v17, v19);
  v20 = *(*(a1 + 440) + 280);
  v22 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v20, v22);
  CFX::RG::Pass::writeTo(a1, *(a1 + 456));
  return a1;
}

uint64_t sub_1AF252654(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v10 = *(a1[55] + 172);
  v8 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v10)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v10)))) >> 47)));
  a1[56] = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

id sub_1AF252794(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 296), 656, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 224);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 216);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 264);
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    objc_msgSend_setTexture_atIndex_(v7, v21, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v22, v16, 2);
    objc_msgSend_setTexture_atIndex_(v7, v23, a1[58], 3);
    v25 = objc_msgSend_setTexture_atIndex_(v7, v24, v20, 4);
    v26 = *(a2 + 24);
    v27 = *(a1[55] + 280);
    v28 = CFX::RG::Temporal::currentFrame(v25);
    CFX::GPUResourceManager::getBuffer(v26, v27, v28);
    LODWORD(v26) = v29;
    MTLBuffer = CFXBufferSliceGetMTLBuffer(v30, v29);
    v33 = objc_msgSend_setBuffer_offset_atIndex_(v7, v32, MTLBuffer, v26, 0);
    v34 = *(a2 + 24);
    v35 = a1[57];
    v36 = CFX::RG::Temporal::currentFrame(v33);
    v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
    objc_msgSend_setTexture_atIndex_(v7, v38, v37, 10);
    v39 = sub_1AF1403B4(a1[56] + 16);
    v41 = sub_1AFDE323C(v39);

    return objc_msgSend_dispatch_onTexture2D_(v7, v40, v41, v37);
  }

  return result;
}

uint64_t sub_1AF252958(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v8 = *a5;
  *&v21 = "RTIndirectClearCoatTemporalDenoisePass";
  *(&v21 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A7E8, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a3;
    sub_1AFDEFA3C();
    a2 = v17;
    a3 = v18;
  }

  sub_1AF239F88(a1, a2, a3, &v21, qword_1ED73A7E0, 0);
  *a1 = &unk_1F24EA498;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  v21 = 0uLL;
  v22 = 0;
  CFXTextureDescriptorMake2D(*(a5[37] + 616), WORD2(*(a5[37] + 616)), 0x73u, &v21);
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v19 = v21;
  v20 = v22;
  v10 = sub_1AF2373FC(v9, "IndirectDiffuseDenoiseOutput", &v19);
  *(a1 + 472) = v10;
  v11 = *(*(a1 + 440) + 232);
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  v13 = *(*(a1 + 440) + 264);
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

void sub_1AF252AB0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  v8 = objc_msgSend_resourceManager(v4, v5, v6, v7);
  v9 = CFX::RG::Pass::hash(a1);
  v10 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v9);
  a1[56] = v10;
  if (!v10)
  {
    v11 = sub_1AF252E18(*(a2 + 32), v9);
    a1[56] = v11;
    v14 = objc_msgSend_newComputePipelineStateWithFunctionName_(v8, v12, @"vfx_rt_clearcoat_temporal_denoise", v13);

    sub_1AF23355C((v11 + 16), v14);
  }
}

__n128 sub_1AF252B58(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, *(a1[55] + 296), 656, 8);
    v10 = *(a2 + 24);
    v11 = a1[57];
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = *(a1[55] + 264);
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v68 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 224);
    v19 = CFX::RG::Temporal::currentFrame(v68);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = v20;
    v22 = a1[55];
    v23 = *(v22 + 248);
    if (v23)
    {
      v24 = *(a2 + 24);
      v25 = CFX::RG::Temporal::currentFrame(v20);
      v20 = CFX::GPUResourceManager::getTexture(v24, v23, v25);
      v23 = v20;
      v22 = a1[55];
    }

    v26 = *(a2 + 24);
    v27 = *(v22 + 232);
    v28 = CFX::RG::Temporal::currentFrame(v20);
    v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
    v30 = *(a2 + 24);
    v31 = *(a1[55] + 216);
    v32 = CFX::RG::Temporal::currentFrame(v29);
    v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
    v34 = *(a2 + 24);
    v35 = *(a1[55] + 208);
    v36 = CFX::RG::Temporal::currentFrame(v33);
    v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
    objc_msgSend_setTexture_atIndex_(v8, v38, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v8, v39, v21, 1);
    objc_msgSend_setTexture_atIndex_(v8, v40, v23, 2);
    objc_msgSend_setTexture_atIndex_(v8, v41, v29, 3);
    objc_msgSend_setTexture_atIndex_(v8, v42, v33, 4);
    objc_msgSend_setTexture_atIndex_(v8, v43, v68, 5);
    v45 = objc_msgSend_setTexture_atIndex_(v8, v44, v37, 6);
    v46 = *(a2 + 24);
    v47 = a1[59];
    v48 = CFX::RG::Temporal::currentFrame(v45);
    v49 = CFX::GPUResourceManager::getTexture(v46, v47, v48);
    v50 = *(a2 + 24);
    v51 = a1[58];
    v52 = CFX::RG::Temporal::previousFrame(v49);
    v53 = CFX::GPUResourceManager::getTexture(v50, v51, v52);
    objc_msgSend_setTexture_atIndex_(v8, v54, v49, 10);
    objc_msgSend_setTexture_atIndex_(v8, v55, v53, 11);
    v56 = sub_1AF1403B4(a1[56] + 16);
    v57 = sub_1AFDE323C(v56);
    objc_msgSend_dispatch_onTexture2D_(v8, v58, v57, v49);
    v59 = *(a1[55] + 296);
    v60 = v59[13];
    v59[16] = v59[12];
    v59[17] = v60;
    v61 = v59[15];
    v59[18] = v59[14];
    v59[19] = v61;
    v62 = *(a1[55] + 296);
    v63 = v62[3];
    v62[6] = v62[2];
    v62[7] = v63;
    v64 = v62[1];
    v62[4] = *v62;
    v62[5] = v64;
    v65 = *(a1[55] + 296);
    v66 = *(v65 + 400);
    *(v65 + 448) = *(v65 + 384);
    *(v65 + 464) = v66;
    result = *(v65 + 416);
    v67 = *(v65 + 432);
    *(v65 + 480) = result;
    *(v65 + 496) = v67;
    ++*(*(a1[55] + 296) + 592);
  }

  return result;
}

uint64_t sub_1AF252E18(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF252EA0(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v31 = "RTIndirectClearCoatSpatialDenoisePass";
  *(&v31 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A7F8, memory_order_acquire) & 1) == 0)
  {
    v27 = a2;
    v28 = a3;
    sub_1AFDEFA94();
    a2 = v27;
    a3 = v28;
  }

  sub_1AF239F88(a1, a2, a3, &v31, qword_1ED73A7F0, 0);
  *a1 = &unk_1F24EA4F0;
  memcpy((a1 + 440), a5, 0x130uLL);
  *(a1 + 744) = 0u;
  *(a1 + 768) = 0u;
  v9 = sub_1AF12E2AC(*(a1 + 432));
  v31 = 0uLL;
  v32 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 736) + 616), WORD2(*(*(a1 + 736) + 616)), 0x73u, &v31);
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v29 = v31;
  v30 = v32;
  *(a1 + 776) = sub_1AF2373FC(v10, "ClearCoatTmpOutput", &v29);
  *(a1 + 760) = sub_1AF2757FC(v9, a4[4]);
  v11 = sub_1AF253088(a1, a4);
  v12 = *(a1 + 664);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  v14 = *(a1 + 648);
  v16 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v14, v16);
  v17 = *(a1 + 704);
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v17, v19);
  v20 = *(a1 + 776);
  v22 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v20, v22);
  v23 = CFX::RG::Pass::writeTo(a1, *(a1 + 776));
  v24 = *(*(a1 + 752) + 16);
  v25 = CFX::RG::Temporal::previousFrame(v23);
  CFX::RG::Pass::readFrom(a1, v24, v25);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 752) + 16));
  return a1;
}

uint64_t sub_1AF253088(CFX::RG::Pass *a1, uint64_t a2)
{
  v7 = 0uLL;
  v8 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 92) + 616), WORD2(*(*(a1 + 92) + 616)), 0x73u, &v7);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) >> 47)));
  *(a1 + 94) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF253204(CFX::RG::Pass *a1, uint64_t a2)
{
  sub_1AF253088(a1, a2);

  return sub_1AF253244(a1, a2);
}

uint64_t sub_1AF253244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v10 = *(a1 + 612);
  v8 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v10)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v10)))) >> 47)));
  *(a1 + 744) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

id sub_1AF2533E0(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[93] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, a1[92], 656, 8);
    v9 = *(a2 + 24);
    v10 = a1[83];
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = a1[81];
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = a1[82];
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = *(a2 + 24);
    v22 = a1[88];
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 1);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 2);
    objc_msgSend_setTexture_atIndex_(v7, v27, v20, 3);
    objc_msgSend_setTexture_atIndex_(v7, v28, v24, 4);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, a1[95], 6);
    v31 = *(a2 + 24);
    v32 = a1[96];
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = a1[97];
    v37 = CFX::RG::Temporal::currentFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    v39 = *(a2 + 24);
    v40 = *(a1[94] + 16);
    v41 = CFX::RG::Temporal::currentFrame(v38);
    v42 = CFX::GPUResourceManager::getTexture(v39, v40, v41);
    objc_msgSend_setTexture_atIndex_(v7, v43, v34, 0);
    objc_msgSend_setTexture_atIndex_(v7, v44, v38, 10);
    v45 = sub_1AF1403B4(a1[93] + 16);
    v46 = sub_1AFDE323C(v45);
    objc_msgSend_dispatch_onTexture2D_(v7, v47, v46, v38);
    objc_msgSend_setTexture_atIndex_(v7, v48, v38, 0);
    objc_msgSend_setTexture_atIndex_(v7, v49, v42, 10);
    v50 = sub_1AF1403B4(a1[93] + 24);
    v52 = sub_1AFDE323C(v50);

    return objc_msgSend_dispatch_onTexture2D_(v7, v51, v52, v42);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25361C(CFX::RG::RenderGraphContext *a1, uint64_t a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF25378C(v4, a1, a2);
  *(a2 + 280) = *(*(v5 + 57) + 16);
  if ((atomic_load_explicit(&qword_1ED73A7C8, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF98C();
  }

  v6 = *a2;
  v17[0] = qword_1ED73A7C0;
  v17[1] = v6;
  v18 = *(a2 + 224);
  v19 = *(v5 + 58);
  v7 = sub_1AF2537E4(v4, a1, v17);
  CFX::RG::Pass::dependsOn(v7, v5);
  *(a2 + 264) = sub_1AF262D90(v7);
  v8 = sub_1AF25383C(v4, a1, a2);
  CFX::RG::Pass::dependsOn(v8, v7);
  v9 = sub_1AF253894(v4, a1, a2);
  v10 = v8[57];
  *(v9 + 57) = v10;
  v11 = CFX::RG::Temporal::currentFrame(v9);
  CFX::RG::Pass::readFrom(v9, v10, v11);
  CFX::RG::Pass::dependsOn(v9, v8);
  v12 = sub_1AF2538EC(v4, a1, a2);
  v13 = *(v9 + 59);
  *(v12 + 96) = v13;
  v14 = CFX::RG::Temporal::currentFrame(v12);
  CFX::RG::Pass::readFrom(v12, v13, v14);
  CFX::RG::Pass::dependsOn(v12, v9);
  v15 = *(*(v12 + 94) + 16);
  *(v9 + 58) = v15;
  *(a2 + 256) = v15;
  return v5;
}

uint64_t sub_1AF25378C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF253EE4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2537E4(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF253F44(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25383C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF253FA4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF253894(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF254004(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2538EC(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF254064(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF253948(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF253984(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2539C0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2539FC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253A34(uint64_t a1)
{
  *a1 = &unk_1F24EA548;

  return a1;
}

void sub_1AF253A94(uint64_t a1)
{
  *a1 = &unk_1F24EA548;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253B14(uint64_t a1)
{
  *a1 = &unk_1F24EA568;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF253B84(uint64_t a1)
{
  *a1 = &unk_1F24EA568;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253C14(uint64_t a1)
{
  *a1 = &unk_1F24EA588;

  return a1;
}

void sub_1AF253C5C(uint64_t a1)
{
  *a1 = &unk_1F24EA588;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253CC4(uint64_t a1)
{
  *a1 = &unk_1F24EA5A8;

  return a1;
}

void sub_1AF253D0C(uint64_t a1)
{
  *a1 = &unk_1F24EA5A8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253D74(uint64_t a1)
{
  *a1 = &unk_1F24EA5C8;

  return a1;
}

void sub_1AF253DC4(uint64_t a1)
{
  *a1 = &unk_1F24EA5C8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253E34(uint64_t a1)
{
  *a1 = &unk_1F24EA5E8;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF253E7C(uint64_t a1)
{
  *a1 = &unk_1F24EA5E8;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253EE4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u);
  return sub_1AF2515CC(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF253F44(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u);
  return sub_1AF2628C4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF253FA4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u);
  return sub_1AF2524AC(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF254004(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u);
  return sub_1AF252958(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF254064(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x310u, 8u);
  return sub_1AF252EA0(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2540C4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v9 = *a5;
  *&v51 = "RTDirectLightingTracePass";
  *(&v51 + 1) = v9;
  if ((atomic_load_explicit(&qword_1ED73A808, memory_order_acquire) & 1) == 0)
  {
    v48 = a2;
    sub_1AFDEFAEC();
    a2 = v48;
  }

  if (byte_1ED73A800)
  {
    v10 = 0x8FA5417697CB30C3;
  }

  else
  {
    v10 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v51, v10, 0);
  *a1 = &unk_1F24EA608;
  *(a1 + 448) = a5;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  v11 = sub_1AF12E2AC(*(a1 + 432));
  sub_1AF254448(a1, a4);
  v12 = *(a5 + 43);
  v13 = 1.0;
  if (v12 != 2)
  {
    v14 = sub_1AF130864(*(a1 + 432));
    v13 = ceilf(v14 / sub_1AF130888(*(a1 + 432)));
  }

  v15 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, a5[24]) + 4);
  v16 = vld1q_dup_f64(v15);
  v17 = vshrq_n_s64(vshlq_u64(v16, xmmword_1AFE42F50), 0x30uLL);
  v18 = vcgtq_s64(v17, vdupq_n_s64(1uLL));
  v19 = vmovn_s64(vsubq_s64(vandq_s8(v17, v18), vmvnq_s8(v18)));
  *(*(*(a1 + 448) + 248) + 472) = v19;
  v20 = *(*(a1 + 448) + 248);
  v20[57].i32[1] = v13;
  if (v12)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  v20[57].i32[0] = (v13 * v21);
  v20[59] = v19;
  v22 = *(*(a1 + 448) + 248);
  v23 = *(v22 + 460);
  LODWORD(v24) = *(v22 + 472) / v23;
  HIDWORD(v24) = HIDWORD(*(v22 + 472)) / v23;
  *(v22 + 480) = v24;
  v25 = *(*(a1 + 448) + 248);
  v26 = *(v25 + 456);
  LODWORD(v24) = *(v25 + 472) / v26;
  HIDWORD(v24) = HIDWORD(*(v25 + 472)) / v26;
  *(v25 + 464) = v24;
  sub_1AF254694(a1, a4);
  v51 = 0uLL;
  v52 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 448) + 248) + 464), WORD2(*(*(*(a1 + 448) + 248) + 464)), 0x73u, &v51);
  v27 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v49 = v51;
  v50 = v52;
  *(a1 + 480) = sub_1AF2373FC(v27, "DirectLightingResolveDiffuse", &v49);
  v28 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v49 = v51;
  v50 = v52;
  *(a1 + 488) = sub_1AF2373FC(v28, "DirectLightingResolveSpecular", &v49);
  v29 = sub_1AF2757FC(v11, a4[4]);
  *(a1 + 440) = v29;
  v30 = *(*(a1 + 448) + 176);
  v31 = CFX::RG::Temporal::currentFrame(v29);
  CFX::RG::Pass::readFrom(a1, v30, v31);
  v32 = *(*(a1 + 448) + 192);
  v34 = CFX::RG::Temporal::currentFrame(v33);
  CFX::RG::Pass::readFrom(a1, v32, v34);
  v35 = *(*(a1 + 448) + 184);
  v37 = CFX::RG::Temporal::currentFrame(v36);
  CFX::RG::Pass::readFrom(a1, v35, v37);
  v38 = *(*(a1 + 448) + 200);
  v40 = CFX::RG::Temporal::currentFrame(v39);
  CFX::RG::Pass::readFrom(a1, v38, v40);
  v41 = *(*(a1 + 448) + 216);
  v43 = CFX::RG::Temporal::currentFrame(v42);
  CFX::RG::Pass::readFrom(a1, v41, v43);
  v44 = *(*(a1 + 464) + 16);
  v46 = CFX::RG::Temporal::previousFrame(v45);
  CFX::RG::Pass::readFrom(a1, v44, v46);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 464) + 16));
  CFX::RG::Pass::writeTo(a1, *(a1 + 480));
  CFX::RG::Pass::writeTo(a1, *(a1 + 488));
  return a1;
}

uint64_t sub_1AF254448(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = sub_1AF12DDCC(a1[54]);
  v9 = sub_1AF1D0140(v8);
  v18 = *(a1[56] + 172);
  v17 = sub_1AF1449E0(v9);
  v10 = sub_1AF1449F0(v9) != 0;
  v16 = v10;
  v11 = CFX::RG::Pass::hash(a1);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v17)));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ v10)));
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v18)))) >> 47)));
  a1[57] = result;
  if (!result)
  {
    operator new();
  }

  *(a1[56] + 248) = result + 32;
  return result;
}

uint64_t sub_1AF254694(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = vmul_lane_s32(*(*(*(a1 + 56) + 248) + 464), *(*(*(a1 + 56) + 248) + 464), 1).u32[0];
  v5 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47)));
  *(a1 + 58) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF2547E0(CFX::RG::Pass *a1, uint64_t a2)
{
  sub_1AF254694(a1, a2);

  return sub_1AF254448(a1, a2);
}

void *sub_1AF254820(uint64_t *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[57] + 16))
  {
    v6 = result;
    v7 = sub_1AF12DDCC(a1[54]);
    result = sub_1AF12F10C(a1[54]);
    if (result)
    {
      result = sub_1AF1BB260(result);
      if (result)
      {
        v8 = sub_1AF12F10C(a1[54]);
        sub_1AF27F12C(v8, v131);
        v9 = sub_1AF13050C(a1[54], 1);
        v127 = v9[1];
        v128 = *v9;
        v125 = v9[3];
        v126 = v9[2];
        v130 = sub_1AF12FCE8(a1[54], 0);
        v10 = sub_1AF1D0140(v7);
        v11 = *(a1[56] + 248);
        *v11 = v128;
        v11[1] = v127;
        v11[2] = v126;
        v11[3] = v125;
        v12 = sub_1AF15E62C(v131, &v130);
        v13 = 0;
        v14 = *(v12 + 1);
        v15 = *(v12 + 2);
        v16 = *(v12 + 3);
        v17 = *(a1[56] + 248);
        v17[4] = *v12;
        v17[5] = v14;
        v17[6] = v15;
        v17[7] = v16;
        v18 = *(a1[56] + 248);
        v19 = v18[4];
        v20 = v18[5];
        v21 = v18[6];
        v22 = v18[7];
        v23 = v18[1];
        v24 = v18[2];
        v25 = v18[3];
        v132[0] = *v18;
        v132[1] = v23;
        v132[2] = v24;
        v132[3] = v25;
        do
        {
          *(&v133 + v13 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(v132[v13])), v20, *&v132[v13], 1), v21, v132[v13], 2), v22, v132[v13], 3);
          ++v13;
        }

        while (v13 != 4);
        v26 = v134;
        v27 = v135;
        v28 = v136;
        v18[8] = v133;
        v18[9] = v26;
        v18[10] = v27;
        v18[11] = v28;
        *(*(a1[56] + 248) + 320) = __invert_f4(**(a1[56] + 248));
        *(*(a1[56] + 248) + 256) = __invert_f4(*(*(a1[56] + 248) + 128));
        v30 = objc_msgSend_setBytes_length_atIndex_(v6, v29, *(a1[56] + 248), 496, 8);
        v31 = *(a2 + 24);
        v32 = *(a1[56] + 176);
        v33 = CFX::RG::Temporal::currentFrame(v30);
        Texture = CFX::GPUResourceManager::getTexture(v31, v32, v33);
        v35 = *(a2 + 24);
        v36 = *(a1[56] + 192);
        v37 = CFX::RG::Temporal::currentFrame(Texture);
        v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
        v39 = *(a2 + 24);
        v40 = *(a1[56] + 184);
        v41 = CFX::RG::Temporal::currentFrame(v38);
        v42 = CFX::GPUResourceManager::getTexture(v39, v40, v41);
        v43 = *(a2 + 24);
        v44 = *(a1[56] + 200);
        v45 = CFX::RG::Temporal::currentFrame(v42);
        v46 = CFX::GPUResourceManager::getTexture(v43, v44, v45);
        v47 = *(a2 + 24);
        v48 = *(a1[56] + 216);
        v49 = CFX::RG::Temporal::currentFrame(v46);
        v50 = CFX::GPUResourceManager::getTexture(v47, v48, v49);
        v52 = v50;
        v53 = a1[59];
        v129 = a2;
        if (v53)
        {
          v54 = a2;
          v55 = v46;
          v56 = v42;
          v57 = v38;
          v58 = Texture;
          v59 = *(v54 + 24);
          v60 = CFX::RG::Temporal::previousFrame(v50);
          v61 = v59;
          Texture = v58;
          v38 = v57;
          v42 = v56;
          v46 = v55;
          v53 = CFX::GPUResourceManager::getTexture(v61, v53, v60);
        }

        objc_msgSend_setTexture_atIndex_(v6, v51, Texture, 0, v125, v126, v127, v128);
        objc_msgSend_setTexture_atIndex_(v6, v62, v38, 1);
        objc_msgSend_setTexture_atIndex_(v6, v63, v42, 2);
        objc_msgSend_setTexture_atIndex_(v6, v64, v46, 3);
        objc_msgSend_setTexture_atIndex_(v6, v65, v52, 4);
        objc_msgSend_setTexture_atIndex_(v6, v66, v53, 5);
        objc_msgSend_setTexture_atIndex_(v6, v67, a1[55], 9);
        if (sub_1AF1449E0(v10))
        {
          v68 = sub_1AF1448E0(v10);
          objc_msgSend_setBuffer_offset_atIndex_(v6, v69, v68, 0, 0);
        }

        sub_1AF144838(v10, v6);
        v70 = sub_1AF1448D8(v10);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v71, v70, 0, 0);
        v72 = sub_1AF1448D0(v10);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v6, v73, v72, 1);
        if (sub_1AF1449E0(v10))
        {
          v74 = sub_1AF1448E0(v10);
          objc_msgSend_setBuffer_offset_atIndex_(v6, v75, v74, 0, 2);
        }

        v76 = sub_1AF1448E8(v10);
        v80 = sub_1AF144A00(v10, v77, v78, v79);
        objc_msgSend_useResources_count_usage_(v6, v81, v76, v80, 1);
        v82 = sub_1AF1449F0(v10);
        if (v82)
        {
          v83 = sub_1AF1403B4(a1[57] + 16);
          v84 = sub_1AFDE323C(v83);
          v85 = sub_1AF144918(v10, v84);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v6, v86, v85, 4);
        }

        v87 = *(v129 + 24);
        v88 = *(a1[58] + 16);
        v89 = CFX::RG::Temporal::currentFrame(v82);
        CFX::GPUResourceManager::getBuffer(v87, v88, v89);
        v91 = v90;
        v93 = v92;
        v94 = *(v129 + 24);
        v95 = *(a1[58] + 16);
        v96 = CFX::RG::Temporal::previousFrame(v90);
        CFX::GPUResourceManager::getBuffer(v94, v95, v96);
        v98 = v97;
        v100 = v99;
        MTLBuffer = CFXBufferSliceGetMTLBuffer(v91, v93);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v102, MTLBuffer, v93, 10);
        v103 = CFXBufferSliceGetMTLBuffer(v98, v100);
        v105 = objc_msgSend_setBuffer_offset_atIndex_(v6, v104, v103, v100, 11);
        v106 = *(v129 + 24);
        v107 = a1[60];
        v108 = CFX::RG::Temporal::currentFrame(v105);
        v109 = CFX::GPUResourceManager::getTexture(v106, v107, v108);
        v110 = *(v129 + 24);
        v111 = a1[61];
        v112 = CFX::RG::Temporal::currentFrame(v109);
        v113 = CFX::GPUResourceManager::getTexture(v110, v111, v112);
        objc_msgSend_setTexture_atIndex_(v6, v114, v109, 10);
        objc_msgSend_setTexture_atIndex_(v6, v115, v113, 11);
        v116 = sub_1AF1403B4(a1[57] + 16);
        v117 = sub_1AFDE323C(v116);
        objc_msgSend_setComputePipelineState_(v6, v118, v117, v119);
        v120 = *(*(a1[56] + 248) + 464);
        v121 = v120;
        v122 = SHIDWORD(v120);
        v123 = sub_1AF1403B4(a1[57] + 16);
        v124 = sub_1AFDE323C(v123);
        v133.i64[0] = v121;
        v133.i64[1] = v122;
        v134.i64[0] = 1;
        result = RGMTLComputeCommandEncoderDispatchOnGrid2D(v6, v124, &v133, 1);
        ++*(*(a1[56] + 248) + 452);
      }
    }
  }

  return result;
}

uint64_t sub_1AF254DB4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v26 = "RTDirectLightingResolvePass";
  *(&v26 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A818, memory_order_acquire) & 1) == 0)
  {
    v22 = a2;
    v23 = a3;
    sub_1AFDEFB38();
    a2 = v22;
    a3 = v23;
  }

  sub_1AF239F88(a1, a2, a3, &v26, qword_1ED73A810, 0);
  *a1 = &unk_1F24EA660;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  v9 = sub_1AF12E2AC(*(a1 + 432));
  *(a1 + 456) = sub_1AF2757FC(v9, a4[4]);
  v26 = 0uLL;
  v27 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 248) + 480), WORD2(*(*(*(a1 + 440) + 248) + 480)), 0x73u, &v26);
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v24 = v26;
  v25 = v27;
  *(a1 + 480) = sub_1AF2373FC(v10, "DirectLightingResolveDiffuse", &v24);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v24 = v26;
  v25 = v27;
  v12 = sub_1AF2373FC(v11, "DirectLightingResolveSpecular", &v24);
  *(a1 + 488) = v12;
  v13 = *(*(a1 + 440) + 176);
  v14 = CFX::RG::Temporal::currentFrame(v12);
  CFX::RG::Pass::readFrom(a1, v13, v14);
  v15 = *(*(a1 + 440) + 192);
  v17 = CFX::RG::Temporal::currentFrame(v16);
  CFX::RG::Pass::readFrom(a1, v15, v17);
  v18 = *(*(a1 + 440) + 200);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  CFX::RG::Pass::writeTo(a1, *(a1 + 480));
  CFX::RG::Pass::writeTo(a1, *(a1 + 488));
  return a1;
}

uint64_t sub_1AF254F7C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12DDCC(a1[54]);
  v5 = sub_1AF1D0140(v4);
  v8 = sub_1AF1449E0(v5);
  v6 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v8)))) >> 47)));
  a1[56] = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

id sub_1AF2550C8(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 248), 496, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 176);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 192);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = a1[58];
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = *(a2 + 24);
    v22 = a1[59];
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 1);
    objc_msgSend_setTexture_atIndex_(v7, v27, a1[57], 2);
    objc_msgSend_setTexture_atIndex_(v7, v28, v20, 3);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, v24, 4);
    v31 = *(a2 + 24);
    v32 = a1[60];
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = a1[61];
    v37 = CFX::RG::Temporal::currentFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    objc_msgSend_setTexture_atIndex_(v7, v39, v34, 10);
    objc_msgSend_setTexture_atIndex_(v7, v40, v38, 11);
    v41 = sub_1AF1403B4(a1[56] + 16);
    v43 = sub_1AFDE323C(v41);

    return objc_msgSend_dispatch_onTexture2D_(v7, v42, v43, v34);
  }

  return result;
}

uint64_t sub_1AF2552AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v8 = *a5;
  v43[0] = "RTDirectLightingTemporalDenoisePass";
  v43[1] = v8;
  if ((atomic_load_explicit(&qword_1ED73A828, memory_order_acquire) & 1) == 0)
  {
    v41 = a2;
    v42 = a3;
    sub_1AFDEFB94();
    a2 = v41;
    a3 = v42;
  }

  sub_1AF239F88(a1, a2, a3, v43, qword_1ED73A820, 0);
  *a1 = &unk_1F24EA6B8;
  v9 = *a5;
  v10 = a5[1];
  v11 = a5[3];
  *(a1 + 472) = a5[2];
  *(a1 + 488) = v11;
  *(a1 + 440) = v9;
  *(a1 + 456) = v10;
  v12 = a5[4];
  v13 = a5[5];
  v14 = a5[7];
  *(a1 + 536) = a5[6];
  *(a1 + 552) = v14;
  *(a1 + 504) = v12;
  *(a1 + 520) = v13;
  v15 = a5[8];
  v16 = a5[9];
  v17 = a5[11];
  *(a1 + 600) = a5[10];
  *(a1 + 616) = v17;
  *(a1 + 568) = v15;
  *(a1 + 584) = v16;
  v18 = a5[12];
  v19 = a5[13];
  v20 = a5[15];
  *(a1 + 664) = a5[14];
  *(a1 + 680) = v20;
  *(a1 + 632) = v18;
  *(a1 + 648) = v19;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 696) = 0u;
  v22 = sub_1AF255488(v21, a4);
  v23 = *(a1 + 616);
  v24 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v23, v24);
  v25 = *(a1 + 656);
  v27 = CFX::RG::Temporal::currentFrame(v26);
  CFX::RG::Pass::readFrom(a1, v25, v27);
  v28 = *(a1 + 632);
  v30 = CFX::RG::Temporal::currentFrame(v29);
  CFX::RG::Pass::readFrom(a1, v28, v30);
  v31 = *(*(a1 + 704) + 24);
  v33 = CFX::RG::Temporal::previousFrame(v32);
  CFX::RG::Pass::readFrom(a1, v31, v33);
  v34 = CFX::RG::Pass::writeTo(a1, *(*(a1 + 704) + 24));
  v35 = *(*(a1 + 704) + 32);
  v36 = CFX::RG::Temporal::previousFrame(v34);
  CFX::RG::Pass::readFrom(a1, v35, v36);
  v37 = CFX::RG::Pass::writeTo(a1, *(*(a1 + 704) + 32));
  v38 = *(*(a1 + 704) + 16);
  v39 = CFX::RG::Temporal::previousFrame(v37);
  CFX::RG::Pass::readFrom(a1, v38, v39);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 704) + 16));
  return a1;
}

uint64_t sub_1AF255488(CFX::RG::Pass *a1, uint64_t a2)
{
  v7 = 0uLL;
  v8 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 86) + 480), WORD2(*(*(a1 + 86) + 480)), 0x73u, &v7);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) >> 47)));
  *(a1 + 88) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF255708(CFX::RG::Pass *a1, uint64_t a2)
{
  sub_1AF255488(a1, a2);

  return sub_1AF255748(a1, a2);
}

uint64_t sub_1AF255748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v10 = *(a1 + 612);
  v8 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v10)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v10)))) >> 47)));
  *(a1 + 696) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

__n128 sub_1AF255884(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[87] + 16))
  {
    v7 = v5;
    v8 = sub_1AF12F10C(a1[54]);
    if (v8)
    {
      if (sub_1AF1BB260(v8))
      {
        v9 = sub_1AF12F10C(a1[54]);
        sub_1AF27F12C(v9, &v84);
        v11 = objc_msgSend_setBytes_length_atIndex_(v7, v10, a1[86], 496, 8);
        v12 = *(a2 + 24);
        v13 = a1[89];
        v14 = CFX::RG::Temporal::currentFrame(v11);
        Texture = CFX::GPUResourceManager::getTexture(v12, v13, v14);
        v16 = *(a2 + 24);
        v17 = a1[90];
        v18 = CFX::RG::Temporal::currentFrame(Texture);
        v19 = CFX::GPUResourceManager::getTexture(v16, v17, v18);
        v20 = *(a2 + 24);
        v21 = a1[77];
        v22 = CFX::RG::Temporal::currentFrame(v19);
        v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
        v24 = v23;
        v25 = a1[81];
        if (v25)
        {
          v26 = *(a2 + 24);
          v27 = CFX::RG::Temporal::currentFrame(v23);
          v23 = CFX::GPUResourceManager::getTexture(v26, v25, v27);
          v25 = v23;
        }

        v28 = *(a2 + 24);
        v29 = a1[82];
        v30 = CFX::RG::Temporal::currentFrame(v23);
        v31 = CFX::GPUResourceManager::getTexture(v28, v29, v30);
        v32 = *(a2 + 24);
        v33 = a1[79];
        v34 = CFX::RG::Temporal::currentFrame(v31);
        v35 = CFX::GPUResourceManager::getTexture(v32, v33, v34);
        objc_msgSend_setTexture_atIndex_(v7, v36, v24, 0);
        objc_msgSend_setTexture_atIndex_(v7, v37, v25, 1);
        objc_msgSend_setTexture_atIndex_(v7, v38, v31, 2);
        objc_msgSend_setTexture_atIndex_(v7, v39, v35, 3);
        objc_msgSend_setTexture_atIndex_(v7, v40, Texture, 4);
        v42 = objc_msgSend_setTexture_atIndex_(v7, v41, v19, 5);
        v43 = *(a2 + 24);
        v44 = *(a1[88] + 24);
        v45 = CFX::RG::Temporal::currentFrame(v42);
        v46 = CFX::GPUResourceManager::getTexture(v43, v44, v45);
        v47 = *(a2 + 24);
        v48 = *(a1[88] + 24);
        v49 = CFX::RG::Temporal::previousFrame(v46);
        v50 = CFX::GPUResourceManager::getTexture(v47, v48, v49);
        objc_msgSend_setTexture_atIndex_(v7, v51, v46, 10);
        v53 = objc_msgSend_setTexture_atIndex_(v7, v52, v50, 11);
        v54 = *(a2 + 24);
        v55 = *(a1[88] + 32);
        v56 = CFX::RG::Temporal::currentFrame(v53);
        v57 = CFX::GPUResourceManager::getTexture(v54, v55, v56);
        v58 = *(a2 + 24);
        v59 = *(a1[88] + 32);
        v60 = CFX::RG::Temporal::previousFrame(v57);
        v61 = CFX::GPUResourceManager::getTexture(v58, v59, v60);
        objc_msgSend_setTexture_atIndex_(v7, v62, v57, 12);
        v64 = objc_msgSend_setTexture_atIndex_(v7, v63, v61, 13);
        v65 = *(a2 + 24);
        v66 = *(a1[88] + 16);
        v67 = CFX::RG::Temporal::previousFrame(v64);
        v68 = CFX::GPUResourceManager::getTexture(v65, v66, v67);
        v69 = *(a2 + 24);
        v70 = *(a1[88] + 16);
        v71 = CFX::RG::Temporal::currentFrame(v68);
        v72 = CFX::GPUResourceManager::getTexture(v69, v70, v71);
        objc_msgSend_setTexture_atIndex_(v7, v73, v68, 14);
        objc_msgSend_setTexture_atIndex_(v7, v74, v72, 15);
        v75 = sub_1AF1403B4(a1[87] + 16);
        v76 = sub_1AFDE323C(v75);
        objc_msgSend_dispatch_onTexture2D_(v7, v77, v76, v46);
        v78 = a1[86];
        v79 = v78[17];
        v78[12] = v78[16];
        v78[13] = v79;
        v80 = v78[19];
        v78[14] = v78[18];
        v78[15] = v80;
        v81 = a1[86];
        v82 = *(v81 + 336);
        *(v81 + 384) = *(v81 + 320);
        *(v81 + 400) = v82;
        result = *(v81 + 352);
        v83 = *(v81 + 368);
        *(v81 + 416) = result;
        *(v81 + 432) = v83;
        ++*(a1[86] + 452);
      }
    }
  }

  return result;
}

uint64_t sub_1AF255BD4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v27 = "RTDirectLightingSpatialDenoisePass";
  *(&v27 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A838, memory_order_acquire) & 1) == 0)
  {
    v21 = a2;
    v22 = a3;
    sub_1AFDEFBF0();
    a2 = v21;
    a3 = v22;
  }

  sub_1AF239F88(a1, a2, a3, &v27, qword_1ED73A830, 0);
  *a1 = &unk_1F24EA710;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  v9 = sub_1AF12E2AC(*(a1 + 432));
  *(a1 + 456) = sub_1AF2757FC(v9, a4[4]);
  v27 = 0uLL;
  v28 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 248) + 480), WORD2(*(*(*(a1 + 440) + 248) + 480)), 0x41u, &v27);
  v25 = 0uLL;
  v26 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 248) + 480), WORD2(*(*(*(a1 + 440) + 248) + 480)), 0x73u, &v25);
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v23 = v27;
  v24 = v28;
  *(a1 + 488) = sub_1AF2373FC(v10, "ErodeVariance", &v23);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v23 = v27;
  v24 = v28;
  *(a1 + 496) = sub_1AF2373FC(v11, "DilateVariance", &v23);
  v12 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v23 = v25;
  v24 = v26;
  *(a1 + 504) = sub_1AF2373FC(v12, "DirectLightingDenoisedDiffuse", &v23);
  v13 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v23 = v25;
  v24 = v26;
  v14 = sub_1AF2373FC(v13, "DirectLightingDenoisedSpecular", &v23);
  *(a1 + 512) = v14;
  v15 = *(a1 + 488);
  v16 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v15, v16);
  v17 = *(a1 + 496);
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v17, v19);
  CFX::RG::Pass::writeTo(a1, *(a1 + 488));
  CFX::RG::Pass::writeTo(a1, *(a1 + 496));
  CFX::RG::Pass::writeTo(a1, *(a1 + 504));
  CFX::RG::Pass::writeTo(a1, *(a1 + 512));
  return a1;
}

uint64_t sub_1AF255E1C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  a1[56] = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

__n128 sub_1AF255F6C(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, *(a1[55] + 248), 496, 8);
    v10 = *(a2 + 24);
    v11 = *(a1[55] + 192);
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = a1[60];
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    v18 = *(a2 + 24);
    v19 = a1[61];
    v20 = CFX::RG::Temporal::currentFrame(v17);
    v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
    v22 = *(a2 + 24);
    v23 = a1[62];
    v24 = CFX::RG::Temporal::currentFrame(v21);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    objc_msgSend_setTexture_atIndex_(v8, v26, v17, 0);
    objc_msgSend_setTexture_atIndex_(v8, v27, v21, 2);
    v28 = sub_1AF1403B4(a1[56] + 24);
    v29 = sub_1AFDE323C(v28);
    objc_msgSend_dispatch_onTexture2D_(v8, v30, v29, v21);
    objc_msgSend_setTexture_atIndex_(v8, v31, v21, 0);
    objc_msgSend_setTexture_atIndex_(v8, v32, v25, 2);
    v33 = sub_1AF1403B4(a1[56] + 32);
    v34 = sub_1AFDE323C(v33);
    objc_msgSend_dispatch_onTexture2D_(v8, v35, v34, v25);
    objc_msgSend_setTexture_atIndex_(v8, v36, Texture, 0);
    v38 = objc_msgSend_setTexture_atIndex_(v8, v37, a1[57], 1);
    v39 = *(a2 + 24);
    v40 = a1[58];
    v41 = CFX::RG::Temporal::currentFrame(v38);
    v42 = CFX::GPUResourceManager::getTexture(v39, v40, v41);
    v43 = *(a2 + 24);
    v44 = a1[59];
    v45 = CFX::RG::Temporal::currentFrame(v42);
    v46 = CFX::GPUResourceManager::getTexture(v43, v44, v45);
    v47 = *(a2 + 24);
    v48 = a1[63];
    v49 = CFX::RG::Temporal::currentFrame(v46);
    v50 = CFX::GPUResourceManager::getTexture(v47, v48, v49);
    v51 = *(a2 + 24);
    v52 = a1[64];
    v53 = CFX::RG::Temporal::currentFrame(v50);
    v54 = CFX::GPUResourceManager::getTexture(v51, v52, v53);
    objc_msgSend_setTexture_atIndex_(v8, v55, v42, 5);
    objc_msgSend_setTexture_atIndex_(v8, v56, v50, 10);
    objc_msgSend_setTexture_atIndex_(v8, v57, v46, 6);
    objc_msgSend_setTexture_atIndex_(v8, v58, v54, 11);
    v59 = sub_1AF1403B4(a1[56] + 16);
    v60 = sub_1AFDE323C(v59);
    objc_msgSend_dispatch_onTexture2D_(v8, v61, v60, v50);
    v62 = *(a1[55] + 248);
    v63 = *(v62 + 272);
    *(v62 + 192) = *(v62 + 256);
    *(v62 + 208) = v63;
    result = *(v62 + 288);
    v64 = *(v62 + 304);
    *(v62 + 224) = result;
    *(v62 + 240) = v64;
    ++*(*(a1[55] + 248) + 452);
  }

  return result;
}

CFX::RG::Temporal *sub_1AF256204(CFX::RG::RenderGraphContext *a1, uint64_t a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF256424(v4, a1, a2);
  if (*(a2 + 172))
  {
    v6 = sub_1AF2564D4(v4, a1, a2);
    v7 = *(v5 + 60);
    *(v6 + 89) = v7;
    v8 = CFX::RG::Temporal::currentFrame(v6);
    CFX::RG::Pass::readFrom(v6, v7, v8);
    v9 = *(v5 + 61);
    *(v6 + 90) = v9;
    v11 = CFX::RG::Temporal::currentFrame(v10);
    CFX::RG::Pass::readFrom(v6, v9, v11);
    v12 = v6;
    v13 = v5;
  }

  else
  {
    v14 = sub_1AF25647C(v4, a1, a2);
    v15 = *(v5 + 60);
    *(v14 + 58) = v15;
    v16 = CFX::RG::Temporal::currentFrame(v14);
    CFX::RG::Pass::readFrom(v14, v15, v16);
    v17 = *(v5 + 61);
    *(v14 + 59) = v17;
    v19 = CFX::RG::Temporal::currentFrame(v18);
    CFX::RG::Pass::readFrom(v14, v17, v19);
    CFX::RG::Pass::dependsOn(v14, v5);
    v6 = sub_1AF2564D4(v4, a1, a2);
    v20 = *(v14 + 60);
    *(v6 + 89) = v20;
    v21 = CFX::RG::Temporal::currentFrame(v6);
    CFX::RG::Pass::readFrom(v6, v20, v21);
    v22 = *(v14 + 61);
    *(v6 + 90) = v22;
    v24 = CFX::RG::Temporal::currentFrame(v23);
    CFX::RG::Pass::readFrom(v6, v22, v24);
    v12 = v6;
    v13 = v14;
  }

  CFX::RG::Pass::dependsOn(v12, v13);
  v25 = sub_1AF25652C(v4, a1, a2);
  v26 = *(*(v6 + 88) + 24);
  *(v25 + 58) = v26;
  v27 = CFX::RG::Temporal::currentFrame(v25);
  CFX::RG::Pass::readFrom(v25, v26, v27);
  v28 = *(*(v6 + 88) + 32);
  *(v25 + 59) = v28;
  v30 = CFX::RG::Temporal::currentFrame(v29);
  CFX::RG::Pass::readFrom(v25, v28, v30);
  v31 = *(*(v6 + 88) + 16);
  *(v25 + 60) = v31;
  v33 = CFX::RG::Temporal::currentFrame(v32);
  CFX::RG::Pass::readFrom(v25, v31, v33);
  v34 = CFX::RG::Pass::dependsOn(v25, v6);
  v35 = *(*(v6 + 88) + 16);
  *(v5 + 59) = v35;
  v36 = CFX::RG::Temporal::previousFrame(v34);
  CFX::RG::Pass::readFrom(v5, v35, v36);
  v38 = *(v25 + 63);
  v37 = *(v25 + 64);
  v39 = *(v25 + 62);
  *(a2 + 224) = v38;
  *(a2 + 232) = v37;
  *(v6 + 91) = v38;
  *(v6 + 92) = v37;
  *(a2 + 240) = v39;
  return v25;
}

uint64_t sub_1AF256424(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF256AF4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25647C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF256B54(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2564D4(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF256BB4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25652C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF256C14(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF256588(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2565C4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF256600(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25663C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256674(uint64_t a1)
{
  *a1 = &unk_1F24EA768;

  return a1;
}

void sub_1AF2566BC(uint64_t a1)
{
  *a1 = &unk_1F24EA768;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256724(uint64_t a1)
{
  *a1 = &unk_1F24EA788;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25676C(uint64_t a1)
{
  *a1 = &unk_1F24EA788;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2567D4(uint64_t a1)
{
  *a1 = &unk_1F24EA7A8;

  return a1;
}

void sub_1AF25681C(uint64_t a1)
{
  *a1 = &unk_1F24EA7A8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256884(uint64_t a1)
{
  *a1 = &unk_1F24EA7C8;

  return a1;
}

void sub_1AF2568CC(uint64_t a1)
{
  *a1 = &unk_1F24EA7C8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256934(uint64_t a1)
{
  *a1 = &unk_1F24EA7E8;
  v2 = (a1 + 16);
  sub_1AF235C34((a1 + 32), 0);
  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34(v2, 0);
  return a1;
}

void sub_1AF25699C(uint64_t a1)
{
  *a1 = &unk_1F24EA7E8;
  v2 = (a1 + 16);
  sub_1AF235C34((a1 + 32), 0);
  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34(v2, 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256A24(uint64_t a1)
{
  *a1 = &unk_1F24EA808;

  return a1;
}

void sub_1AF256A7C(uint64_t a1)
{
  *a1 = &unk_1F24EA808;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256AF4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u);
  return sub_1AF2540C4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF256B54(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u);
  return sub_1AF254DB4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF256BB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E8u, 8u);
  return sub_1AF2552AC(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF256C14(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x208u, 8u);
  return sub_1AF255BD4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF256C74(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v26 = "RTIndirectDiffuseTracePass";
  *(&v26 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A848, memory_order_acquire) & 1) == 0)
  {
    v22 = a2;
    v23 = a3;
    sub_1AFDEFC4C();
    a2 = v22;
    a3 = v23;
  }

  if (byte_1ED73A840)
  {
    v9 = 0xA1BA6B715A2CCB31;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v26, v9, 0);
  *a1 = &unk_1F24EA828;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a5;
  v10 = sub_1AF12E2AC(*(a1 + 432));
  sub_1AF256E38(a1, a4);
  sub_1AF257160(a1, a4);
  *(a1 + 472) = sub_1AF2757FC(v10, a4[4]);
  v26 = 0uLL;
  v11 = *(*(*(a1 + 440) + 280) + 624);
  v27 = 0;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (SHIDWORD(v11) <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = WORD2(v11);
  }

  CFXTextureDescriptorMake2D(v12, v13, 0x19u, &v26);
  v14 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v24 = v26;
  v25 = v27;
  *(a1 + 464) = sub_1AF2373FC(v14, "hitDistanceTex", &v24);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 456) + 16));
  v15 = CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  v16 = *(*(a1 + 440) + 224);
  v17 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v16, v17);
  v18 = *(*(a1 + 440) + 208);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  return a1;
}

__n64 sub_1AF256E38(uint64_t *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = sub_1AF12DDCC(a1[54]);
  v9 = sub_1AF1D0140(v8);
  v10 = sub_1AF1D005C(v8, 0) != 0;
  v11 = sub_1AF1449F0(v9) != 0;
  v12 = CFX::RG::Pass::hash(a1);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v11)));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v10)));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ *(a1[55] + 200));
  v17 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47)));
  a1[56] = v17;
  if (!v17)
  {
    operator new();
  }

  v18 = a1[55];
  *(v18 + 280) = v17 + 32;
  v19 = *(v18 + 172);
  if (v19 == 2)
  {
    v20 = 1.0;
  }

  else
  {
    v21 = sub_1AF130864(a1[54]);
    v20 = ceilf(v21 / sub_1AF130888(a1[54]));
    v18 = a1[55];
  }

  v22 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(v18 + 208)) + 4);
  v23 = *(a1[55] + 280);
  v24 = vld1q_dup_f64(v22);
  v23[79].i32[0] = v20;
  if (v19)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v23[79].i32[1] = (v20 * v25);
  v26 = vshrq_n_s64(vshlq_u64(v24, xmmword_1AFE42F50), 0x30uLL);
  v27 = vcgtq_s64(v26, vdupq_n_s64(1uLL));
  v23[76] = vmovn_s64(vsubq_s64(vandq_s8(v26, v27), vmvnq_s8(v27)));
  v28 = *(a1[55] + 280);
  v29 = *(v28 + 632);
  v26.i32[0] = *(v28 + 608) / v29;
  v26.i32[1] = HIDWORD(*(v28 + 608)) / v29;
  *(v28 + 616) = v26.i64[0];
  v30 = *(a1[55] + 280);
  v31 = v30[79].n64_i32[1];
  result.n64_u32[0] = v30[76].n64_u64[0] / v31;
  result.n64_u32[1] = HIDWORD(v30[76].n64_u64[0]) / v31;
  v30[78].n64_u64[0] = result.n64_u64[0];
  return result;
}

void sub_1AF257160(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = vmul_lane_s32(*(*(*(a1 + 55) + 280) + 624), *(*(*(a1 + 55) + 280) + 624), 1).u32[0];
  v5 = CFX::RG::Pass::hash(a1);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47));
  v7 = CFX::CrossFrameResourceManager::get(a2[4], v6);
  *(a1 + 57) = v7;
  if (!v7)
  {
    *(a1 + 57) = sub_1AF257818(a2[4], v6);
    v8 = RGBufferDescriptorMake(80 * v4, 32);
    v10 = v9;
    v11 = CFX::RG::RenderGraphContext::currentBuilder(a2);
    sub_1AF23BE88(v11, "IndirectDiffuseReservoirBuffer", v8, v10, 1, &v16);
    v12 = *(a1 + 57);
    v13 = v16;
    v16 = 0;
    sub_1AF235C34((v12 + 16), v13);
    v14 = v16;
    v16 = 0;
    if (v14)
    {
      CFX::RG::Resource::~Resource(v14);
      free(v15);
    }
  }
}

void sub_1AF257260(uint64_t *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF256E38(a1, a2);

  sub_1AF257160(a1, a2);
}

void *sub_1AF2572A0(uint64_t a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(*(a1 + 448) + 16))
  {
    v6 = result;
    v7 = sub_1AF12E2AC(*(a1 + 432));
    v8 = sub_1AF12DDCC(*(a1 + 432));
    result = sub_1AF12F10C(*(a1 + 432));
    if (result)
    {
      result = sub_1AF1BB260(result);
      if (result)
      {
        v115 = result;
        v116 = v7;
        v9 = sub_1AF12F10C(*(a1 + 432));
        sub_1AF27F12C(v9, v119);
        v10 = sub_1AF13050C(*(a1 + 432), 1);
        v112 = v10[1];
        v113 = *v10;
        v110 = v10[3];
        v111 = v10[2];
        v118 = sub_1AF12FCE8(*(a1 + 432), 0);
        v114 = sub_1AF1D0140(v8);
        v11 = *(a2 + 24);
        v12 = *(*(a1 + 440) + 216);
        v13 = CFX::RG::Temporal::currentFrame(v114);
        Texture = CFX::GPUResourceManager::getTexture(v11, v12, v13);
        v15 = *(a2 + 24);
        v16 = *(*(a1 + 440) + 208);
        v17 = CFX::RG::Temporal::currentFrame(Texture);
        v18 = CFX::GPUResourceManager::getTexture(v15, v16, v17);
        v19 = *(a2 + 24);
        v20 = *(*(a1 + 440) + 232);
        v21 = CFX::RG::Temporal::currentFrame(v18);
        v22 = CFX::GPUResourceManager::getTexture(v19, v20, v21);
        v23 = v22;
        v24 = *(*(a1 + 440) + 240);
        if (v24)
        {
          v25 = *(a2 + 24);
          v26 = CFX::RG::Temporal::currentFrame(v22);
          v22 = CFX::GPUResourceManager::getTexture(v25, v24, v26);
          v24 = v22;
        }

        v27 = *(a2 + 24);
        v28 = *(a1 + 464);
        v29 = CFX::RG::Temporal::currentFrame(v22);
        v30 = CFX::GPUResourceManager::getTexture(v27, v28, v29);
        objc_msgSend_setTexture_atIndex_(v6, v31, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v6, v32, v18, 1);
        objc_msgSend_setTexture_atIndex_(v6, v33, v23, 2);
        objc_msgSend_setTexture_atIndex_(v6, v34, v30, 5);
        objc_msgSend_setTexture_atIndex_(v6, v35, v24, 10);
        v38 = sub_1AF1D005C(v8, 0);
        if (v38)
        {
          v39 = objc_msgSend_textureForMaterialProperty_(v116, v36, v38, v37);
          if (v39)
          {
            objc_msgSend_setTexture_atIndex_(v6, v40, v39, 8);
          }

          v41 = sub_1AF167220(v38);
          v42 = MEMORY[0x1E69E9B18];
          if (v41)
          {
            v42 = v41;
          }

          v43 = *v42;
          v44 = v42[1];
          v45 = v42[2];
          v46 = v42[3];
          v47 = *(*(a1 + 440) + 280);
          v47[32] = v43;
          v47[33] = v44;
          v47[34] = v45;
          v47[35] = v46;
        }

        v117 = sub_1AF130C00(**(a1 + 440), 0);
        v48 = *(*(a1 + 440) + 280);
        v48[8] = v113;
        v48[9] = v112;
        v48[10] = v111;
        v48[11] = v110;
        v49 = sub_1AF15E62C(v119, &v118);
        v50 = 0;
        v51 = *(v49 + 1);
        v52 = *(v49 + 2);
        v53 = *(v49 + 3);
        v54 = *(*(a1 + 440) + 280);
        v54[16] = *v49;
        v54[17] = v51;
        v54[18] = v52;
        v54[19] = v53;
        v55 = *(a1 + 448);
        v56 = v55[18];
        v57 = v55[19];
        v58 = v55[20];
        v59 = v55[21];
        v60 = v55[11];
        v61 = v55[12];
        v62 = v55[13];
        v120[0] = v55[10];
        v120[1] = v60;
        v120[2] = v61;
        v120[3] = v62;
        do
        {
          *(&v121 + v50 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(v120[v50])), v57, *&v120[v50], 1), v58, v120[v50], 2), v59, v120[v50], 3);
          ++v50;
        }

        while (v50 != 4);
        v63 = v122;
        v64 = v123;
        v65 = v124;
        v66 = *(*(a1 + 440) + 280);
        *v66 = v121;
        v66[1] = v63;
        v66[2] = v64;
        v66[3] = v65;
        *(*(*(a1 + 440) + 280) + 320) = __invert_f4(*(*(a1 + 448) + 288));
        *(*(*(a1 + 440) + 280) + 192) = __invert_f4(*(*(a1 + 448) + 160));
        *(*(*(a1 + 440) + 280) + 384) = __invert_f4(*(*(a1 + 448) + 32));
        *(*(*(a1 + 440) + 280) + 576) = sub_1AF15D6DC(v115);
        *(*(*(a1 + 440) + 280) + 584) = (objc_msgSend_width(Texture, v67, v68, v69) * v117.f32[0]) * 0.5;
        *(*(*(a1 + 440) + 280) + 588) = vmuls_lane_f32(objc_msgSend_height(Texture, v70, v71, v72), v117, 1) * 0.5;
        v74 = *(a1 + 440);
        v75 = *(v74 + 280);
        *(v75 + 596) = *(v74 + 192);
        if (v38)
        {
          v76 = sub_1AF166598(v38);
          v75 = *(*(a1 + 440) + 280);
        }

        else
        {
          v76 = 0.0;
        }

        *(v75 + 600) = v76;
        objc_msgSend_setBytes_length_atIndex_(v6, v73, v75, 640, 8, v110, v111, v112, v113);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v77, *(*(a1 + 440) + 176), 0, 4);
        v79 = objc_msgSend_setBuffer_offset_atIndex_(v6, v78, *(*(a1 + 440) + 184), 0, 5);
        v80 = *(a2 + 24);
        v81 = *(*(a1 + 456) + 16);
        v82 = CFX::RG::Temporal::currentFrame(v79);
        CFX::GPUResourceManager::getBuffer(v80, v81, v82);
        LODWORD(v80) = v83;
        MTLBuffer = CFXBufferSliceGetMTLBuffer(v84, v83);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v86, MTLBuffer, v80, 10);
        sub_1AF144838(v114, v6);
        v87 = sub_1AF1448D8(v114);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v88, v87, 0, 0);
        v89 = sub_1AF1448D0(v114);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v6, v90, v89, 1);
        if (sub_1AF1449F0(v114))
        {
          v91 = sub_1AF1403B4(*(a1 + 448) + 16);
          v92 = sub_1AFDE323C(v91);
          v93 = sub_1AF144918(v114, v92);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v6, v94, v93, 3);
        }

        v95 = sub_1AF1448E8(v114);
        v99 = sub_1AF144A00(v114, v96, v97, v98);
        objc_msgSend_useResources_count_usage_(v6, v100, v95, v99, 1);
        v101 = *(*(*(a1 + 440) + 280) + 624);
        v102 = v101;
        v103 = SHIDWORD(v101);
        v104 = sub_1AF1403B4(*(a1 + 448) + 16);
        v105 = sub_1AFDE323C(v104);
        objc_msgSend_setComputePipelineState_(v6, v106, v105, v107);
        v108 = sub_1AF1403B4(*(a1 + 448) + 16);
        v109 = sub_1AFDE323C(v108);
        *&v121 = v102;
        *(&v121 + 1) = v103;
        *&v122 = 1;
        return RGMTLComputeCommandEncoderDispatchOnGrid2D(v6, v109, &v121, 1);
      }
    }
  }

  return result;
}

uint64_t sub_1AF257818(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2578A0(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v28 = "RTIndirectDiffuseUpscalePass";
  *(&v28 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A858, memory_order_acquire) & 1) == 0)
  {
    v24 = a2;
    v25 = a3;
    sub_1AFDEFC98();
    a2 = v24;
    a3 = v25;
  }

  sub_1AF239F88(a1, a2, a3, &v28, qword_1ED73A850, 0);
  *a1 = &unk_1F24EA880;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  v9 = sub_1AF12E2AC(*(a1 + 432));
  *(a1 + 456) = sub_1AF2757FC(v9, a4[4]);
  v28 = 0uLL;
  v29 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 280) + 616), WORD2(*(*(*(a1 + 440) + 280) + 616)), 0x73u, &v28);
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v26 = v28;
  v27 = v29;
  v11 = sub_1AF2373FC(v10, "IndirectDiffuseUpscale", &v26);
  *(a1 + 464) = v11;
  v12 = *(*(a1 + 440) + 216);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  v14 = *(*(a1 + 440) + 208);
  v16 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v14, v16);
  v17 = *(*(a1 + 440) + 264);
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v17, v19);
  v20 = CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  v21 = *(*(a1 + 440) + 272);
  v22 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v21, v22);
  return a1;
}

void sub_1AF257A48(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  v8 = objc_msgSend_resourceManager(v4, v5, v6, v7);
  v9 = CFX::RG::Pass::hash(a1);
  v10 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v9);
  a1[56] = v10;
  if (!v10)
  {
    v11 = sub_1AF257CB4(*(a2 + 32), v9);
    a1[56] = v11;
    v14 = objc_msgSend_newComputePipelineStateWithFunctionName_(v8, v12, @"vfx_rt_indirect_diffuse_upscale", v13);

    sub_1AF23355C((v11 + 16), v14);
  }
}

id sub_1AF257AF0(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 280), 640, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 216);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 208);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 264);
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    objc_msgSend_setTexture_atIndex_(v7, v21, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v22, v16, 1);
    objc_msgSend_setTexture_atIndex_(v7, v23, a1[57], 2);
    v25 = objc_msgSend_setTexture_atIndex_(v7, v24, v20, 3);
    v26 = *(a2 + 24);
    v27 = *(a1[55] + 272);
    v28 = CFX::RG::Temporal::currentFrame(v25);
    CFX::GPUResourceManager::getBuffer(v26, v27, v28);
    LODWORD(v26) = v29;
    MTLBuffer = CFXBufferSliceGetMTLBuffer(v30, v29);
    v33 = objc_msgSend_setBuffer_offset_atIndex_(v7, v32, MTLBuffer, v26, 0);
    v34 = *(a2 + 24);
    v35 = a1[58];
    v36 = CFX::RG::Temporal::currentFrame(v33);
    v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
    objc_msgSend_setTexture_atIndex_(v7, v38, v37, 10);
    v39 = sub_1AF1403B4(a1[56] + 16);
    v41 = sub_1AFDE323C(v39);

    return objc_msgSend_dispatch_onTexture2D_(v7, v40, v41, v37);
  }

  return result;
}

uint64_t sub_1AF257CB4(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF257D3C(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v8 = *a5;
  *&v27 = "RTIndirectDiffuseTemporalDenoisePass";
  *(&v27 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A868, memory_order_acquire) & 1) == 0)
  {
    v23 = a2;
    v24 = a3;
    sub_1AFDEFCF4();
    a2 = v23;
    a3 = v24;
  }

  sub_1AF239F88(a1, a2, a3, &v27, qword_1ED73A860, 0);
  *a1 = &unk_1F24EA8D8;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  v27 = 0uLL;
  v28 = 0;
  CFXTextureDescriptorMake2D(*(a5[35] + 616), WORD2(*(a5[35] + 616)), 0x73u, &v27);
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v25 = v27;
  v26 = v28;
  v10 = sub_1AF2373FC(v9, "IndirectDiffuseDenoiseOutput", &v25);
  *(a1 + 472) = v10;
  v11 = a5[27];
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  v13 = *(*(a1 + 440) + 208);
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  v16 = *(*(a1 + 440) + 224);
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  v19 = *(*(a1 + 440) + 248);
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

void sub_1AF257EC8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  v8 = objc_msgSend_resourceManager(v4, v5, v6, v7);
  v9 = CFX::RG::Pass::hash(a1);
  v10 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v9);
  a1[56] = v10;
  if (!v10)
  {
    v11 = sub_1AF258148(*(a2 + 32), v9);
    a1[56] = v11;
    v14 = objc_msgSend_newComputePipelineStateWithFunctionName_(v8, v12, @"vfx_rt_indirect_diffuse_temporal_denoise", v13);

    sub_1AF23355C((v11 + 16), v14);
  }
}

id sub_1AF257F70(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 280), 640, 8);
    v9 = *(a2 + 24);
    v10 = a1[57];
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 208);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 224);
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = *(a2 + 24);
    v22 = *(a1[55] + 248);
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 1);
    objc_msgSend_setTexture_atIndex_(v7, v27, v20, 2);
    v29 = objc_msgSend_setTexture_atIndex_(v7, v28, v24, 3);
    v30 = *(a2 + 24);
    v31 = a1[59];
    v32 = CFX::RG::Temporal::currentFrame(v29);
    v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
    v34 = *(a2 + 24);
    v35 = a1[58];
    v36 = CFX::RG::Temporal::previousFrame(v33);
    v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
    objc_msgSend_setTexture_atIndex_(v7, v38, v33, 10);
    objc_msgSend_setTexture_atIndex_(v7, v39, v37, 11);
    v40 = sub_1AF1403B4(a1[56] + 16);
    v42 = sub_1AFDE323C(v40);

    return objc_msgSend_dispatch_onTexture2D_(v7, v41, v42, v33);
  }

  return result;
}

uint64_t sub_1AF258148(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2581D0(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v9 = *a5;
  *&v31 = "RTIndirectDiffuseSpatialDenoisePass";
  *(&v31 + 1) = v9;
  if ((atomic_load_explicit(&qword_1ED73A878, memory_order_acquire) & 1) == 0)
  {
    v28 = a2;
    sub_1AFDEFD50();
    a2 = v28;
  }

  sub_1AF239F88(a1, a2, a3, &v31, qword_1ED73A870, 0);
  *a1 = &unk_1F24EA930;
  memcpy((a1 + 440), a5, 0x120uLL);
  *(a1 + 728) = 0u;
  *(a1 + 752) = 0u;
  v10 = sub_1AF12E2AC(*(a1 + 432));
  v31 = 0uLL;
  v32 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 720) + 616), WORD2(*(*(a1 + 720) + 616)), 0x73u, &v31);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v29 = v31;
  v30 = v32;
  *(a1 + 760) = sub_1AF2373FC(v11, "IndirectDiffuseSpatialTmpOutput", &v29);
  *(a1 + 744) = sub_1AF2757FC(v10, a4[4]);
  v12 = sub_1AF2583C0(a1, a4);
  v13 = a5[26];
  v14 = CFX::RG::Temporal::currentFrame(v12);
  CFX::RG::Pass::readFrom(a1, v13, v14);
  v15 = a5[33];
  v17 = CFX::RG::Temporal::currentFrame(v16);
  CFX::RG::Pass::readFrom(a1, v15, v17);
  v18 = *(a1 + 664);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  v21 = *(a1 + 760);
  v23 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v21, v23);
  v24 = CFX::RG::Pass::writeTo(a1, *(a1 + 760));
  v25 = *(*(a1 + 736) + 16);
  v26 = CFX::RG::Temporal::previousFrame(v24);
  CFX::RG::Pass::readFrom(a1, v25, v26);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 736) + 16));
  return a1;
}

uint64_t sub_1AF2583C0(CFX::RG::Pass *a1, uint64_t a2)
{
  v7 = 0uLL;
  v8 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 90) + 616), WORD2(*(*(a1 + 90) + 616)), 0x73u, &v7);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) >> 47)));
  *(a1 + 92) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF25853C(CFX::RG::Pass *a1, uint64_t a2)
{
  sub_1AF2583C0(a1, a2);

  return sub_1AF25857C(a1, a2);
}

uint64_t sub_1AF25857C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  a1[91] = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

__n128 sub_1AF2586D0(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[91] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, a1[90], 640, 8);
    v10 = *(a2 + 24);
    v11 = a1[81];
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = a1[88];
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    objc_msgSend_setTexture_atIndex_(v8, v18, Texture, 1);
    objc_msgSend_setTexture_atIndex_(v8, v19, v17, 2);
    v21 = objc_msgSend_setTexture_atIndex_(v8, v20, a1[93], 4);
    v22 = *(a2 + 24);
    v23 = a1[94];
    v24 = CFX::RG::Temporal::currentFrame(v21);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    v26 = *(a2 + 24);
    v27 = a1[95];
    v28 = CFX::RG::Temporal::currentFrame(v25);
    v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
    v30 = *(a2 + 24);
    v31 = *(a1[92] + 16);
    v32 = CFX::RG::Temporal::currentFrame(v29);
    v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
    objc_msgSend_setTexture_atIndex_(v8, v34, v25, 0);
    objc_msgSend_setTexture_atIndex_(v8, v35, v29, 10);
    v36 = sub_1AF1403B4(a1[91] + 16);
    v37 = sub_1AFDE323C(v36);
    objc_msgSend_dispatch_onTexture2D_(v8, v38, v37, v33);
    objc_msgSend_setTexture_atIndex_(v8, v39, v29, 0);
    objc_msgSend_setTexture_atIndex_(v8, v40, v33, 10);
    v41 = sub_1AF1403B4(a1[91] + 24);
    v42 = sub_1AFDE323C(v41);
    objc_msgSend_dispatch_onTexture2D_(v8, v43, v42, v33);
    v44 = a1[90];
    v45 = v44[25];
    v44[28] = v44[24];
    v44[29] = v45;
    v46 = v44[27];
    v44[30] = v44[26];
    v44[31] = v46;
    v47 = a1[90];
    v48 = *(v47 + 16);
    *(v47 + 64) = *v47;
    *(v47 + 80) = v48;
    result = *(v47 + 32);
    v49 = *(v47 + 48);
    *(v47 + 96) = result;
    *(v47 + 112) = v49;
    ++*(a1[90] + 592);
  }

  return result;
}

CFX::RG::Pass *sub_1AF2588B8(CFX::RG::RenderGraphContext *a1, uint64_t a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF258A40(v4, a1, a2);
  *(a2 + 272) = *(*(v5 + 57) + 16);
  if ((atomic_load_explicit(&qword_1ED73A848, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEFC4C();
  }

  v6 = 0xA1BA6B715A2CCB31;
  if (!byte_1ED73A840)
  {
    v6 = 0;
  }

  v7 = *a2;
  v18[0] = v6;
  v18[1] = v7;
  v19 = *(a2 + 216);
  v20 = *(v5 + 58);
  v8 = sub_1AF2537E4(v4, a1, v18);
  CFX::RG::Pass::dependsOn(v8, v5);
  *(a2 + 264) = sub_1AF262D90(v8);
  v9 = sub_1AF258A98(v4, a1, a2);
  CFX::RG::Pass::dependsOn(v9, v8);
  v10 = sub_1AF258AF0(v4, a1, a2);
  v11 = v9[58];
  *(v10 + 57) = v11;
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(v10, v11, v12);
  CFX::RG::Pass::dependsOn(v10, v9);
  v13 = sub_1AF258B48(v4, a1, a2);
  v14 = *(v10 + 59);
  *(v13 + 94) = v14;
  v15 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(v13, v14, v15);
  CFX::RG::Pass::dependsOn(v13, v10);
  v16 = *(*(v13 + 92) + 16);
  *(v10 + 58) = v16;
  *(a2 + 256) = v16;
  return v5;
}

uint64_t sub_1AF258A40(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2590C0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF258A98(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF259120(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF258AF0(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF259180(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF258B48(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2591E0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF258BA4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF258BE0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF258C1C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF258C58(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF258C90(uint64_t a1)
{
  *a1 = &unk_1F24EA988;

  return a1;
}

void sub_1AF258CD8(uint64_t a1)
{
  *a1 = &unk_1F24EA988;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF258D40(uint64_t a1)
{
  *a1 = &unk_1F24EA9A8;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF258D88(uint64_t a1)
{
  *a1 = &unk_1F24EA9A8;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF258DF0(uint64_t a1)
{
  *a1 = &unk_1F24EA9C8;

  return a1;
}

void sub_1AF258E38(uint64_t a1)
{
  *a1 = &unk_1F24EA9C8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF258EA0(uint64_t a1)
{
  *a1 = &unk_1F24EA9E8;

  return a1;
}

void sub_1AF258EE8(uint64_t a1)
{
  *a1 = &unk_1F24EA9E8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF258F50(uint64_t a1)
{
  *a1 = &unk_1F24EAA08;

  return a1;
}

void sub_1AF258FA0(uint64_t a1)
{
  *a1 = &unk_1F24EAA08;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF259010(uint64_t a1)
{
  *a1 = &unk_1F24EAA28;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF259058(uint64_t a1)
{
  *a1 = &unk_1F24EAA28;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2590C0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u);
  return sub_1AF256C74(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF259120(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u);
  return sub_1AF2578A0(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF259180(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u);
  return sub_1AF257D3C(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2591E0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x300u, 8u);
  return sub_1AF2581D0(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF259240(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v28 = "RTIndirectSpecularTracePass";
  *(&v28 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A888, memory_order_acquire) & 1) == 0)
  {
    v24 = a2;
    v25 = a3;
    sub_1AFDEFDAC();
    a2 = v24;
    a3 = v25;
  }

  sub_1AF239F88(a1, a2, a3, &v28, qword_1ED73A880, 0);
  *a1 = &unk_1F24EAA48;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a5;
  sub_1AF2593E0(v9, a4);
  sub_1AF2597CC(a1, a4);
  v28 = 0uLL;
  v10 = *(*(*(a1 + 440) + 288) + 624);
  v29 = 0;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (SHIDWORD(v10) <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = WORD2(v10);
  }

  CFXTextureDescriptorMake2D(v11, v12, 0x19u, &v28);
  v13 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v26 = v28;
  v27 = v29;
  v14 = sub_1AF2373FC(v13, "distanceTex", &v26);
  *(a1 + 464) = v14;
  v15 = a5[26];
  v16 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v15, v16);
  v17 = a5[28];
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v17, v19);
  v20 = *(*(a1 + 440) + 264);
  v22 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v20, v22);
  CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 456) + 16));
  return a1;
}

double sub_1AF2593E0(uint64_t *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = sub_1AF12DDCC(a1[54]);
  v9 = sub_1AF1D0140(v8);
  v10 = sub_1AF1D005C(v8, 0) != 0;
  v11 = sub_1AF1449F0(v9) != 0;
  v40 = *(a1[55] + 172);
  v12 = CFX::RG::Pass::hash(a1);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v11)));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v10)));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
  v16 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v40)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v40)))) ^ ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v40)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v40)))) >> 47)));
  a1[56] = v16;
  if (!v16)
  {
    operator new();
  }

  v17 = a1[55];
  *(v17 + 288) = v16 + 48;
  v18 = 1.0;
  v19 = 1.0;
  if (v40 != 2)
  {
    v20 = sub_1AF130864(a1[54]);
    v19 = ceilf(v20 / sub_1AF130888(a1[54]));
    v17 = a1[55];
  }

  v21 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(v17 + 208)) + 4);
  v22 = vld1q_dup_f64(v21);
  v23 = *(a1[55] + 288);
  v23[80].i32[0] = v19;
  if (v40)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  v23[80].i32[1] = (v19 * v24);
  v25 = vshrq_n_s64(vshlq_u64(v22, xmmword_1AFE42F50), 0x30uLL);
  v26 = vcgtq_s64(v25, vdupq_n_s64(1uLL));
  v23[76] = vmovn_s64(vsubq_s64(vandq_s8(v25, v26), vmvnq_s8(v26)));
  v27 = *(a1[55] + 288);
  v28 = *(v27 + 640);
  v25.i32[0] = *(v27 + 608) / v28;
  v25.i32[1] = HIDWORD(*(v27 + 608)) / v28;
  *(v27 + 616) = v25.i64[0];
  v29 = *(a1[55] + 288);
  v30 = *(v29 + 644);
  v25.i32[0] = *(v29 + 608) / v30;
  v25.i32[1] = HIDWORD(*(v29 + 608)) / v30;
  *(v29 + 624) = v25.i64[0];
  v31 = a1[55];
  v32 = *(v31 + 280);
  if (v32 != 2)
  {
    v33 = sub_1AF130864(a1[54]);
    v18 = ceilf(v33 / sub_1AF130888(a1[54]));
    v31 = a1[55];
  }

  if (v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  v35 = (v18 * v34);
  v36 = *(v31 + 288);
  v37 = *(v36 + 608) / v35;
  v38 = HIDWORD(*(v36 + 608)) / v35;
  result = COERCE_DOUBLE(__PAIR64__(v38, v37));
  *(v36 + 632) = __PAIR64__(v38, v37);
  return result;
}

uint64_t sub_1AF2597CC(uint64_t *a1, uint64_t a2)
{
  sub_1AF12E2AC(a1[54]);
  v4 = vmul_lane_s32(*(*(a1[55] + 288) + 624), *(*(a1[55] + 288) + 624), 1).u32[0];
  v5 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47)));
  a1[57] = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF2599A4(uint64_t *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF2593E0(a1, a2);

  return sub_1AF2597CC(a1, a2);
}

void *sub_1AF2599E4(uint64_t a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(*(a1 + 448) + 40))
  {
    v6 = result;
    v7 = sub_1AF12E2AC(*(a1 + 432));
    v8 = sub_1AF12DDCC(*(a1 + 432));
    result = sub_1AF12F10C(*(a1 + 432));
    if (result)
    {
      result = sub_1AF1BB260(result);
      if (result)
      {
        v161 = v7;
        v159 = result;
        v9 = sub_1AF12F10C(*(a1 + 432));
        sub_1AF27F12C(v9, v164);
        v10 = sub_1AF13050C(*(a1 + 432), 1);
        v157 = v10[1];
        v158 = *v10;
        v155 = v10[3];
        v156 = v10[2];
        v163 = sub_1AF12FCE8(*(a1 + 432), 0);
        v160 = sub_1AF1D0140(v8);
        v11 = *(a2 + 24);
        v12 = *(*(a1 + 440) + 200);
        v13 = CFX::RG::Temporal::currentFrame(v160);
        Texture = CFX::GPUResourceManager::getTexture(v11, v12, v13);
        v14 = *(a2 + 24);
        v15 = *(*(a1 + 440) + 208);
        v16 = CFX::RG::Temporal::currentFrame(Texture);
        v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
        v18 = *(a2 + 24);
        v19 = *(*(a1 + 440) + 232);
        v20 = CFX::RG::Temporal::currentFrame(v17);
        v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
        v22 = *(a2 + 24);
        v23 = *(*(a1 + 440) + 224);
        v24 = CFX::RG::Temporal::currentFrame(v21);
        v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
        v26 = v25;
        v27 = *(*(a1 + 440) + 240);
        if (v27)
        {
          v28 = *(a2 + 24);
          v29 = CFX::RG::Temporal::currentFrame(v25);
          v25 = CFX::GPUResourceManager::getTexture(v28, v27, v29);
          v27 = v25;
        }

        v30 = *(a2 + 24);
        v31 = *(a1 + 464);
        v32 = CFX::RG::Temporal::currentFrame(v25);
        v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
        objc_msgSend_setTexture_atIndex_(v6, v34, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v6, v35, v17, 1);
        objc_msgSend_setTexture_atIndex_(v6, v36, v21, 2);
        objc_msgSend_setTexture_atIndex_(v6, v37, v26, 5);
        objc_msgSend_setTexture_atIndex_(v6, v38, v33, 7);
        v39 = sub_1AF2757FC(v161, *(a2 + 32));
        objc_msgSend_setTexture_atIndex_(v6, v40, v39, 9);
        objc_msgSend_setTexture_atIndex_(v6, v41, v27, 10);
        v44 = sub_1AF1D005C(v8, 0);
        if (v44)
        {
          v45 = objc_msgSend_textureForMaterialProperty_(v161, v42, v44, v43);
          if (v45)
          {
            objc_msgSend_setTexture_atIndex_(v6, v46, v45, 11);
          }

          v47 = sub_1AF167220(v44);
          v48 = MEMORY[0x1E69E9B18];
          if (v47)
          {
            v48 = v47;
          }

          v49 = *v48;
          v50 = v48[1];
          v51 = v48[2];
          v52 = v48[3];
          v53 = *(*(a1 + 440) + 288);
          v53[32] = v49;
          v53[33] = v50;
          v53[34] = v51;
          v53[35] = v52;
        }

        v162 = sub_1AF130C00(**(a1 + 440), 0);
        v54 = *(*(a1 + 440) + 288);
        v54[8] = v158;
        v54[9] = v157;
        v54[10] = v156;
        v54[11] = v155;
        v55 = sub_1AF15E62C(v164, &v163);
        v56 = 0;
        v57 = *(v55 + 1);
        v58 = *(v55 + 2);
        v59 = *(v55 + 3);
        v60 = *(*(a1 + 440) + 288);
        v60[20] = *v55;
        v60[21] = v57;
        v60[22] = v58;
        v60[23] = v59;
        v61 = *(a1 + 448);
        v62 = v61[23];
        v63 = v61[24];
        v64 = v61[25];
        v65 = v61[26];
        v66 = v61[12];
        v67 = v61[13];
        v68 = v61[14];
        v165 = v61[11];
        v166 = v66;
        v167 = v67;
        v168 = v68;
        do
        {
          *&v169[v56] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*(&v165 + v56))), v63, *&v165.f32[v56 / 4], 1), v64, *(&v165 + v56), 2), v65, *(&v165 + v56), 3);
          v56 += 16;
        }

        while (v56 != 64);
        v69 = *&v169[16];
        v70 = v170;
        v71 = v171;
        v72 = *(*(a1 + 440) + 288);
        *v72 = *v169;
        v72[1] = v69;
        v72[2] = v70;
        v72[3] = v71;
        *(*(*(a1 + 440) + 288) + 192) = __invert_f4(*(*(a1 + 448) + 176));
        *(*(*(a1 + 440) + 288) + 384) = __invert_f4(*(*(a1 + 448) + 48));
        *(*(*(a1 + 440) + 288) + 576) = sub_1AF15D6DC(v159);
        *(*(*(a1 + 440) + 288) + 584) = (objc_msgSend_width(v17, v73, v74, v75) * v162.f32[0]) * 0.5;
        *(*(*(a1 + 440) + 288) + 588) = vmuls_lane_f32(objc_msgSend_height(v17, v76, v77, v78), v162, 1) * 0.5;
        v80 = *(a1 + 440);
        v81 = *(v80 + 288);
        *(v81 + 596) = *(v80 + 192);
        if (v44)
        {
          v82 = sub_1AF166598(v44);
          v81 = *(*(a1 + 440) + 288);
        }

        else
        {
          v82 = 0.0;
        }

        *(v81 + 600) = v82;
        v83 = objc_msgSend_setBytes_length_atIndex_(v6, v79, v81, 656, 8);
        v84 = *(a2 + 24);
        v85 = *(*(a1 + 440) + 264);
        v86 = CFX::RG::Temporal::currentFrame(v83);
        CFX::GPUResourceManager::getBuffer(v84, v85, v86);
        v88 = v87;
        v90 = v89;
        v91 = *(a2 + 24);
        v92 = *(*(a1 + 456) + 16);
        v93 = CFX::RG::Temporal::currentFrame(v87);
        CFX::GPUResourceManager::getBuffer(v91, v92, v93);
        v95 = v94;
        v97 = v96;
        MTLBuffer = CFXBufferSliceGetMTLBuffer(v88, v90);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v99, MTLBuffer, v90, 2);
        v100 = CFXBufferSliceGetMTLBuffer(v95, v97);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v101, v100, v97, 10);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v102, *(*(a1 + 456) + 40), 0, 0);
        v103 = sub_1AF1403B4(*(a1 + 448) + 16);
        v104 = sub_1AFDE323C(v103);
        objc_msgSend_dispatchOne_(v6, v105, v104, v106);
        v107 = *(*(*(a1 + 440) + 288) + 624);
        v108 = v107;
        v109 = SHIDWORD(v107);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v110, *(*(a1 + 456) + 40), 0, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v111, *(*(a1 + 456) + 32), 0, 1);
        v112 = sub_1AF1403B4(*(a1 + 448) + 24);
        v113 = sub_1AFDE323C(v112);
        objc_msgSend_setComputePipelineState_(v6, v114, v113, v115);
        v116 = sub_1AF1403B4(*(a1 + 448) + 24);
        v117 = sub_1AFDE323C(v116);
        *v169 = v108;
        *&v169[8] = v109;
        *&v169[16] = 1;
        RGMTLComputeCommandEncoderDispatchOnGrid2D(v6, v117, v169, 1);
        v118 = sub_1AF1403B4(*(a1 + 448) + 40);
        v119 = sub_1AFDE323C(v118);
        *v169 = objc_msgSend_threadExecutionWidth(v119, v120, v121, v122);
        *&v169[8] = vdupq_n_s64(1uLL);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v123, *(*(a1 + 456) + 40), 0, 0);
        objc_msgSend_setBytes_length_atIndex_(v6, v124, v169, 24, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v125, *(*(a1 + 456) + 48), 0, 2);
        v126 = sub_1AF1403B4(*(a1 + 448) + 32);
        v127 = sub_1AFDE323C(v126);
        objc_msgSend_dispatchOne_(v6, v128, v127, v129);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v130, *(*(a1 + 440) + 176), 0, 4);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v131, *(*(a1 + 440) + 184), 0, 5);
        sub_1AF144838(v160, v6);
        v132 = sub_1AF1448D8(v160);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v133, v132, 0, 0);
        v134 = sub_1AF1448D0(v160);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v6, v135, v134, 1);
        if (sub_1AF1449F0(v160))
        {
          v136 = sub_1AF1403B4(*(a1 + 448) + 40);
          v137 = sub_1AFDE323C(v136);
          v138 = sub_1AF144918(v160, v137);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v6, v139, v138, 3);
        }

        v140 = sub_1AF1448E8(v160);
        v144 = sub_1AF144A00(v160, v141, v142, v143);
        objc_msgSend_useResources_count_usage_(v6, v145, v140, v144, 1);
        v146 = sub_1AF1403B4(*(a1 + 448) + 40);
        v147 = sub_1AFDE323C(v146);
        objc_msgSend_setComputePipelineState_(v6, v148, v147, v149);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v150, *(*(a1 + 456) + 40), 0, 6);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v151, *(*(a1 + 456) + 32), 0, 7);
        v152 = *(*(a1 + 456) + 48);
        v165 = *v169;
        v166.i64[0] = *&v169[16];
        return objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v6, v153, v152, 0, &v165);
      }
    }
  }

  return result;
}

uint64_t sub_1AF25A140(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v31 = "RTIndirectSpecularUpscalePass";
  *(&v31 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A898, memory_order_acquire) & 1) == 0)
  {
    v27 = a2;
    v28 = a3;
    sub_1AFDEFE04();
    a2 = v27;
    a3 = v28;
  }

  sub_1AF239F88(a1, a2, a3, &v31, qword_1ED73A890, 0);
  *a1 = &unk_1F24EAAA0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a5;
  v9 = sub_1AF12E2AC(*(a1 + 432));
  *(a1 + 464) = sub_1AF2757FC(v9, a4[4]);
  v31 = 0uLL;
  v32 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 288) + 616), WORD2(*(*(*(a1 + 440) + 288) + 616)), 0x73u, &v31);
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v29 = v31;
  v30 = v32;
  v11 = sub_1AF2373FC(v10, "IndirectSpecularUpscale", &v29);
  *(a1 + 456) = v11;
  v12 = *(*(a1 + 440) + 200);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  v14 = *(*(a1 + 440) + 208);
  v16 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v14, v16);
  v17 = *(*(a1 + 440) + 224);
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v17, v19);
  v20 = *(*(a1 + 440) + 256);
  v22 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v20, v22);
  v23 = *(*(a1 + 440) + 272);
  v25 = CFX::RG::Temporal::currentFrame(v24);
  CFX::RG::Pass::readFrom(a1, v23, v25);
  CFX::RG::Pass::writeTo(a1, *(a1 + 456));
  return a1;
}

uint64_t sub_1AF25A304(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v10 = *(a1[55] + 172);
  v8 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v10)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v10)))) >> 47)));
  a1[56] = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

id sub_1AF25A444(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 288), 656, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 200);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 208);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 224);
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = *(a2 + 24);
    v22 = *(a1[55] + 256);
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 1);
    objc_msgSend_setTexture_atIndex_(v7, v27, v20, 2);
    objc_msgSend_setTexture_atIndex_(v7, v28, a1[58], 3);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, v24, 4);
    v31 = *(a2 + 24);
    v32 = *(a1[55] + 272);
    v33 = CFX::RG::Temporal::currentFrame(v30);
    CFX::GPUResourceManager::getBuffer(v31, v32, v33);
    LODWORD(v31) = v34;
    MTLBuffer = CFXBufferSliceGetMTLBuffer(v35, v34);
    v38 = objc_msgSend_setBuffer_offset_atIndex_(v7, v37, MTLBuffer, v31, 0);
    v39 = *(a2 + 24);
    v40 = a1[57];
    v41 = CFX::RG::Temporal::currentFrame(v38);
    v42 = CFX::GPUResourceManager::getTexture(v39, v40, v41);
    objc_msgSend_setTexture_atIndex_(v7, v43, v42, 10);
    v44 = sub_1AF1403B4(a1[56] + 16);
    v46 = sub_1AFDE323C(v44);

    return objc_msgSend_dispatch_onTexture2D_(v7, v45, v46, v42);
  }

  return result;
}

uint64_t sub_1AF25A63C(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v8 = *a5;
  *&v21 = "RTIndirectSpecularTemporalDenoisePass";
  *(&v21 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A8A8, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a3;
    sub_1AFDEFE5C();
    a2 = v17;
    a3 = v18;
  }

  sub_1AF239F88(a1, a2, a3, &v21, qword_1ED73A8A0, 0);
  *a1 = &unk_1F24EAAF8;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  v21 = 0uLL;
  v22 = 0;
  CFXTextureDescriptorMake2D(*(a5[36] + 616), WORD2(*(a5[36] + 616)), 0x73u, &v21);
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v19 = v21;
  v20 = v22;
  v10 = sub_1AF2373FC(v9, "IndirectDiffuseDenoiseOutput", &v19);
  *(a1 + 472) = v10;
  v11 = *(*(a1 + 440) + 216);
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  v13 = *(*(a1 + 440) + 256);
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

void sub_1AF25A794(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  v8 = objc_msgSend_resourceManager(v4, v5, v6, v7);
  v9 = CFX::RG::Pass::hash(a1);
  v10 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v9);
  a1[56] = v10;
  if (!v10)
  {
    v11 = sub_1AF25AAFC(*(a2 + 32), v9);
    a1[56] = v11;
    v14 = objc_msgSend_newComputePipelineStateWithFunctionName_(v8, v12, @"vfx_rt_indirect_specular_temporal_denoise", v13);

    sub_1AF23355C((v11 + 16), v14);
  }
}