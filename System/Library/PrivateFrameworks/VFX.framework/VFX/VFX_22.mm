__n128 sub_1AF25A83C(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, *(a1[55] + 288), 656, 8);
    v10 = *(a2 + 24);
    v11 = a1[57];
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = *(a1[55] + 256);
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v68 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 200);
    v19 = CFX::RG::Temporal::currentFrame(v68);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = v20;
    v22 = a1[55];
    v23 = *(v22 + 240);
    if (v23)
    {
      v24 = *(a2 + 24);
      v25 = CFX::RG::Temporal::currentFrame(v20);
      v20 = CFX::GPUResourceManager::getTexture(v24, v23, v25);
      v23 = v20;
      v22 = a1[55];
    }

    v26 = *(a2 + 24);
    v27 = *(v22 + 216);
    v28 = CFX::RG::Temporal::currentFrame(v20);
    v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
    v30 = *(a2 + 24);
    v31 = *(a1[55] + 224);
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
    v59 = *(a1[55] + 288);
    v60 = v59[13];
    v59[16] = v59[12];
    v59[17] = v60;
    v61 = v59[15];
    v59[18] = v59[14];
    v59[19] = v61;
    v62 = *(a1[55] + 288);
    v63 = v62[3];
    v62[6] = v62[2];
    v62[7] = v63;
    v64 = v62[1];
    v62[4] = *v62;
    v62[5] = v64;
    v65 = *(a1[55] + 288);
    v66 = *(v65 + 400);
    *(v65 + 448) = *(v65 + 384);
    *(v65 + 464) = v66;
    result = *(v65 + 416);
    v67 = *(v65 + 432);
    *(v65 + 480) = result;
    *(v65 + 496) = v67;
    ++*(*(a1[55] + 288) + 592);
  }

  return result;
}

uint64_t sub_1AF25AAFC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF25AB84(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v34 = "RTIndirectSpecularSpatialDenoisePass";
  *(&v34 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A8B8, memory_order_acquire) & 1) == 0)
  {
    v30 = a2;
    v31 = a3;
    sub_1AFDEFEB4();
    a2 = v30;
    a3 = v31;
  }

  sub_1AF239F88(a1, a2, a3, &v34, qword_1ED73A8B0, 0);
  *a1 = &unk_1F24EAB50;
  memcpy((a1 + 440), a5, 0x128uLL);
  *(a1 + 736) = 0u;
  *(a1 + 760) = 0u;
  v9 = sub_1AF12E2AC(*(a1 + 432));
  v34 = 0uLL;
  v35 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 728) + 616), WORD2(*(*(a1 + 728) + 616)), 0x73u, &v34);
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v32 = v34;
  v33 = v35;
  *(a1 + 768) = sub_1AF2373FC(v10, "IndirectSpecularSpatialTmpOutput", &v32);
  *(a1 + 752) = sub_1AF2757FC(v9, a4[4]);
  v11 = sub_1AF25AD84(a1, a4);
  v12 = *(a1 + 640);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  v14 = *(a1 + 648);
  v16 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v14, v16);
  v17 = *(a1 + 664);
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v17, v19);
  v20 = *(a1 + 696);
  v22 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v20, v22);
  v23 = *(a1 + 768);
  v25 = CFX::RG::Temporal::currentFrame(v24);
  CFX::RG::Pass::readFrom(a1, v23, v25);
  v26 = CFX::RG::Pass::writeTo(a1, *(a1 + 768));
  v27 = *(*(a1 + 744) + 16);
  v28 = CFX::RG::Temporal::previousFrame(v26);
  CFX::RG::Pass::readFrom(a1, v27, v28);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 744) + 16));
  return a1;
}

uint64_t sub_1AF25AD84(CFX::RG::Pass *a1, uint64_t a2)
{
  v7 = 0uLL;
  v8 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 91) + 616), WORD2(*(*(a1 + 91) + 616)), 0x73u, &v7);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) >> 47)));
  *(a1 + 93) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF25AF00(CFX::RG::Pass *a1, uint64_t a2)
{
  sub_1AF25AD84(a1, a2);

  return sub_1AF25AF40(a1, a2);
}

uint64_t sub_1AF25AF40(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  a1[92] = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

id sub_1AF25B094(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[92] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, a1[91], 656, 8);
    v9 = *(a2 + 24);
    v10 = a1[80];
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = a1[81];
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = a1[83];
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = *(a2 + 24);
    v22 = a1[87];
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 1);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 2);
    objc_msgSend_setTexture_atIndex_(v7, v27, v20, 3);
    objc_msgSend_setTexture_atIndex_(v7, v28, v24, 4);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, a1[94], 6);
    v31 = *(a2 + 24);
    v32 = a1[95];
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = a1[96];
    v37 = CFX::RG::Temporal::currentFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    v39 = *(a2 + 24);
    v40 = *(a1[93] + 16);
    v41 = CFX::RG::Temporal::currentFrame(v38);
    v42 = CFX::GPUResourceManager::getTexture(v39, v40, v41);
    objc_msgSend_setTexture_atIndex_(v7, v43, v34, 0);
    objc_msgSend_setTexture_atIndex_(v7, v44, v38, 10);
    v45 = sub_1AF1403B4(a1[92] + 16);
    v46 = sub_1AFDE323C(v45);
    objc_msgSend_dispatch_onTexture2D_(v7, v47, v46, v38);
    objc_msgSend_setTexture_atIndex_(v7, v48, v38, 0);
    objc_msgSend_setTexture_atIndex_(v7, v49, v42, 10);
    v50 = sub_1AF1403B4(a1[92] + 24);
    v52 = sub_1AFDE323C(v50);

    return objc_msgSend_dispatch_onTexture2D_(v7, v51, v52, v42);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25B2D0(CFX::RG::RenderGraphContext *a1, uint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF25B444(v4, a1, a2);
  a2[34] = *(*(v5 + 57) + 16);
  if ((atomic_load_explicit(&qword_1ED73A888, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEFDAC();
  }

  v6 = *a2;
  v18[0] = qword_1ED73A880;
  v18[1] = v6;
  v7 = a2[27];
  v18[2] = a2[25];
  v18[3] = v7;
  v18[4] = *(v5 + 58);
  v8 = sub_1AF2537E4(v4, a1, v18);
  CFX::RG::Pass::dependsOn(v8, v5);
  a2[32] = sub_1AF262D90(v8);
  v9 = sub_1AF25B49C(v4, a1, a2);
  CFX::RG::Pass::dependsOn(v9, v8);
  v10 = sub_1AF25B4F4(v4, a1, a2);
  v11 = v9[57];
  *(v10 + 57) = v11;
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(v10, v11, v12);
  CFX::RG::Pass::dependsOn(v10, v9);
  v13 = sub_1AF25B54C(v4, a1, a2);
  v14 = *(v10 + 59);
  *(v13 + 95) = v14;
  v15 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(v13, v14, v15);
  CFX::RG::Pass::dependsOn(v13, v10);
  v16 = *(*(v13 + 93) + 16);
  *(v10 + 58) = v16;
  a2[31] = v16;
  return v5;
}

uint64_t sub_1AF25B444(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25BB44(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25B49C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25BBA4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25B4F4(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25BC04(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25B54C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25BC64(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF25B5A8(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25B5E4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25B620(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25B65C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25B694(uint64_t a1)
{
  *a1 = &unk_1F24EABA8;

  return a1;
}

void sub_1AF25B6F4(uint64_t a1)
{
  *a1 = &unk_1F24EABA8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25B774(uint64_t a1)
{
  *a1 = &unk_1F24EABC8;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25B7E4(uint64_t a1)
{
  *a1 = &unk_1F24EABC8;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25B874(uint64_t a1)
{
  *a1 = &unk_1F24EABE8;

  return a1;
}

void sub_1AF25B8BC(uint64_t a1)
{
  *a1 = &unk_1F24EABE8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25B924(uint64_t a1)
{
  *a1 = &unk_1F24EAC08;

  return a1;
}

void sub_1AF25B96C(uint64_t a1)
{
  *a1 = &unk_1F24EAC08;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25B9D4(uint64_t a1)
{
  *a1 = &unk_1F24EAC28;

  return a1;
}

void sub_1AF25BA24(uint64_t a1)
{
  *a1 = &unk_1F24EAC28;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25BA94(uint64_t a1)
{
  *a1 = &unk_1F24EAC48;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25BADC(uint64_t a1)
{
  *a1 = &unk_1F24EAC48;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25BB44(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u);
  return sub_1AF259240(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF25BBA4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u);
  return sub_1AF25A140(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF25BC04(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u);
  return sub_1AF25A63C(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF25BC64(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x308u, 8u);
  return sub_1AF25AB84(v8, *a3, a3[1], a4, a5);
}

CFX::RG::Pass *sub_1AF25BCC4(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  v22[0] = "RTSubsurfaceTracePass";
  v22[1] = v8;
  if ((atomic_load_explicit(&qword_1ED73A8C8, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v21 = a3;
    sub_1AFDEFF0C();
    a2 = v20;
    a3 = v21;
  }

  sub_1AF239F88(a1, a2, a3, v22, qword_1ED73A8C0, 0);
  *a1 = &unk_1F24EAC68;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  *(a1 + 55) = a5;
  sub_1AF25BDF8(v9, a4);
  v10 = sub_1AF25C054(a1, a4);
  v11 = *(*(a1 + 55) + 232);
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  v13 = *(*(a1 + 55) + 200);
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  v16 = *(*(a1 + 55) + 208);
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 57) + 16));
  return a1;
}

uint64_t sub_1AF25BDF8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = sub_1AF12DDCC(a1[54]);
  v9 = sub_1AF1D0140(v8);
  v10 = sub_1AF1D005C(v8, 0) != 0;
  v19 = v10;
  v11 = sub_1AF1449F0(v9) != 0;
  v17 = *(a1[55] + 172);
  v18 = v11;
  v12 = CFX::RG::Pass::hash(a1);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v11)));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v10)));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v17)))) >> 47)));
  a1[56] = result;
  if (!result)
  {
    operator new();
  }

  *(a1[55] + 272) = result + 32;
  return result;
}

uint64_t sub_1AF25C054(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(*(a1 + 55) + 208));
  v5 = (((((*(v4 + 4) >> 16) + (((*(v4 + 4) >> 16) & 0x8000) >> 15)) << 16) >> 17) * (((*(v4 + 4) + ((*(v4 + 4) & 0x8000) >> 15)) << 16) >> 17));
  v6 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v6)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v6)))) >> 47)));
  *(a1 + 57) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF25C1C4(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF25C054(a1, a2);

  return sub_1AF25BDF8(a1, a2);
}

void *sub_1AF25C204(uint64_t a1, uint64_t a2, id *this)
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
        v9 = sub_1AF12F10C(*(a1 + 432));
        sub_1AF27F12C(v9, v130);
        v10 = sub_1AF13050C(*(a1 + 432), 1);
        v124 = v10[1];
        v125 = *v10;
        v122 = v10[3];
        v123 = v10[2];
        v129 = sub_1AF12FCE8(*(a1 + 432), 0);
        v126 = sub_1AF1D0140(v8);
        v127 = v7;
        v11 = *(a2 + 24);
        v12 = *(*(a1 + 440) + 224);
        v13 = CFX::RG::Temporal::currentFrame(v126);
        Texture = CFX::GPUResourceManager::getTexture(v11, v12, v13);
        v14 = *(a2 + 24);
        v15 = *(*(a1 + 440) + 208);
        v16 = CFX::RG::Temporal::currentFrame(Texture);
        v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
        v18 = *(a2 + 24);
        v19 = *(*(a1 + 440) + 216);
        v20 = CFX::RG::Temporal::currentFrame(v17);
        v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
        v22 = *(a2 + 24);
        v23 = *(*(a1 + 440) + 240);
        v24 = CFX::RG::Temporal::currentFrame(v21);
        v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
        v26 = *(a2 + 24);
        v27 = *(*(a1 + 440) + 200);
        v28 = CFX::RG::Temporal::currentFrame(v25);
        v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
        v30 = *(a2 + 24);
        v31 = *(*(a1 + 440) + 248);
        v32 = CFX::RG::Temporal::currentFrame(v29);
        v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
        objc_msgSend_setTexture_atIndex_(v6, v34, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v6, v35, v17, 1);
        objc_msgSend_setTexture_atIndex_(v6, v36, v21, 2);
        objc_msgSend_setTexture_atIndex_(v6, v37, v25, 3);
        objc_msgSend_setTexture_atIndex_(v6, v38, v29, 5);
        v39 = sub_1AF2757FC(v127, *(a2 + 32));
        objc_msgSend_setTexture_atIndex_(v6, v40, v39, 9);
        objc_msgSend_setTexture_atIndex_(v6, v41, v33, 10);
        v44 = sub_1AF1D005C(v8, 0);
        if (v44)
        {
          v45 = objc_msgSend_textureForMaterialProperty_(v127, v42, v44, v43);
          if (v45)
          {
            objc_msgSend_setTexture_atIndex_(v6, v46, v45, 8);
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
          v53 = *(*(a1 + 440) + 272);
          v53[28] = v49;
          v53[29] = v50;
          v53[30] = v51;
          v53[31] = v52;
        }

        v128 = sub_1AF130C00(**(a1 + 440), 0);
        v54 = *(*(a1 + 440) + 272);
        v54[8] = v125;
        v54[9] = v124;
        v54[10] = v123;
        v54[11] = v122;
        v55 = sub_1AF15E62C(v130, &v129);
        v56 = 0;
        v57 = *(v55 + 1);
        v58 = *(v55 + 2);
        v59 = *(v55 + 3);
        v60 = *(*(a1 + 440) + 272);
        v60[16] = *v55;
        v60[17] = v57;
        v60[18] = v58;
        v60[19] = v59;
        v61 = *(a1 + 448);
        v62 = v61[18];
        v63 = v61[19];
        v64 = v61[20];
        v65 = v61[21];
        v66 = v61[11];
        v67 = v61[12];
        v68 = v61[13];
        v131[0] = v61[10];
        v131[1] = v66;
        v131[2] = v67;
        v131[3] = v68;
        do
        {
          *(&v132 + v56 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(v131[v56])), v63, *&v131[v56], 1), v64, v131[v56], 2), v65, v131[v56], 3);
          ++v56;
        }

        while (v56 != 4);
        v69 = v133;
        v70 = v134;
        v71 = v135;
        v72 = *(*(a1 + 440) + 272);
        *v72 = v132;
        v72[1] = v69;
        v72[2] = v70;
        v72[3] = v71;
        *(*(*(a1 + 440) + 272) + 192) = __invert_f4(*(*(a1 + 448) + 160));
        *(*(*(a1 + 440) + 272) + 320) = __invert_f4(*(*(a1 + 448) + 32));
        *(*(*(a1 + 440) + 272) + 512) = (objc_msgSend_width(Texture, v73, v74, v75) * v128.f32[0]) * 0.5;
        *(*(*(a1 + 440) + 272) + 516) = vmuls_lane_f32(objc_msgSend_height(Texture, v76, v77, v78), v128, 1) * 0.5;
        v80 = *(a1 + 440);
        v81 = *(v80 + 272);
        *(v81 + 528) = *(v80 + 192);
        if (v44)
        {
          v82 = sub_1AF166598(v44);
          v81 = *(*(a1 + 440) + 272);
        }

        else
        {
          v82 = 0.0;
        }

        *(v81 + 532) = v82;
        objc_msgSend_setBytes_length_atIndex_(v6, v79, v81, 544, 8);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v83, *(*(a1 + 440) + 176), 0, 4);
        v85 = objc_msgSend_setBuffer_offset_atIndex_(v6, v84, *(*(a1 + 440) + 184), 0, 5);
        v86 = *(a2 + 24);
        v87 = *(*(a1 + 456) + 16);
        v88 = CFX::RG::Temporal::currentFrame(v85);
        CFX::GPUResourceManager::getBuffer(v86, v87, v88);
        LODWORD(v86) = v89;
        MTLBuffer = CFXBufferSliceGetMTLBuffer(v90, v89);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v92, MTLBuffer, v86, 10);
        sub_1AF144838(v126, v6);
        v93 = sub_1AF1448D8(v126);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v94, v93, 0, 0);
        v95 = sub_1AF1448D0(v126);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v6, v96, v95, 1);
        if (sub_1AF1449F0(v126))
        {
          v97 = sub_1AF1403B4(*(a1 + 448) + 16);
          v98 = sub_1AFDE323C(v97);
          v99 = sub_1AF144918(v126, v98);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v6, v100, v99, 3);
        }

        v101 = sub_1AF1448E8(v126);
        v105 = sub_1AF144A00(v126, v102, v103, v104);
        objc_msgSend_useResources_count_usage_(v6, v106, v101, v105, 1);
        v107 = sub_1AF1403B4(*(a1 + 448) + 16);
        v108 = sub_1AFDE323C(v107);
        objc_msgSend_setComputePipelineState_(v6, v109, v108, v110);
        v114 = objc_msgSend_width(v17, v111, v112, v113) >> 1;
        v118 = objc_msgSend_height(v17, v115, v116, v117) >> 1;
        v119 = sub_1AF1403B4(*(a1 + 448) + 16);
        v120 = sub_1AFDE323C(v119);
        *&v132 = v114;
        *(&v132 + 1) = v118;
        *&v133 = 1;
        return RGMTLComputeCommandEncoderDispatchOnGrid2D(v6, v120, &v132, 1);
      }
    }
  }

  return result;
}

uint64_t sub_1AF25C7A4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v17[0] = "RTSubsurfaceUpscalePass";
  *(&v17[0] + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A8D8, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v16 = a3;
    sub_1AFDEFF64();
    a2 = v15;
    a3 = v16;
  }

  sub_1AF239F88(a1, a2, a3, v17, qword_1ED73A8D0, 0);
  *a1 = &unk_1F24EACC0;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  v9 = sub_1AF12E2AC(*(a1 + 432));
  *(a1 + 456) = sub_1AF2757FC(v9, a4[4]);
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat((*(a1 + 440) + 8), MTLPixelFormatRGBA16Float, v17);
  v11 = sub_1AF233CC8(v10, "SubsurfaceUpscale", v17);
  *(a1 + 464) = v11;
  v12 = *(*(a1 + 440) + 264);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  return a1;
}

uint64_t sub_1AF25C8D8(uint64_t *a1, uint64_t a2)
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

id sub_1AF25C9D0(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 272), 544, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 224);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 208);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    objc_msgSend_setTexture_atIndex_(v7, v17, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v18, v16, 1);
    v20 = objc_msgSend_setTexture_atIndex_(v7, v19, a1[57], 2);
    v21 = *(a2 + 24);
    v22 = *(a1[55] + 264);
    v23 = CFX::RG::Temporal::currentFrame(v20);
    CFX::GPUResourceManager::getBuffer(v21, v22, v23);
    LODWORD(v21) = v24;
    MTLBuffer = CFXBufferSliceGetMTLBuffer(v25, v24);
    v28 = objc_msgSend_setBuffer_offset_atIndex_(v7, v27, MTLBuffer, v21, 0);
    v29 = *(a2 + 24);
    v30 = a1[58];
    v31 = CFX::RG::Temporal::currentFrame(v28);
    v32 = CFX::GPUResourceManager::getTexture(v29, v30, v31);
    objc_msgSend_setTexture_atIndex_(v7, v33, v32, 10);
    v34 = sub_1AF1403B4(a1[56] + 16);
    v36 = sub_1AFDE323C(v34);

    return objc_msgSend_dispatch_onTexture2D_(v7, v35, v36, v32);
  }

  return result;
}

uint64_t sub_1AF25CB54(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v8 = *a5;
  *&v16[0] = "RTSubsurfaceTemporalDenoisePass";
  *(&v16[0] + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A8E8, memory_order_acquire) & 1) == 0)
  {
    v14 = a2;
    v15 = a3;
    sub_1AFDEFFBC();
    a2 = v14;
    a3 = v15;
  }

  sub_1AF239F88(a1, a2, a3, v16, qword_1ED73A8E0, 0);
  *a1 = &unk_1F24EAD18;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat((*(a1 + 440) + 8), MTLPixelFormatRGBA16Float, v16);
  v10 = sub_1AF233CC8(v9, "SubsurfaceUpscale", v16);
  *(a1 + 472) = v10;
  v11 = *(*(a1 + 440) + 232);
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

uint64_t sub_1AF25CC78(uint64_t *a1, uint64_t a2)
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

id sub_1AF25CD70(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 272), 544, 8);
    v9 = *(a2 + 24);
    v10 = a1[57];
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 224);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = v16;
    v18 = a1[55];
    v19 = *(v18 + 248);
    if (v19)
    {
      v20 = *(a2 + 24);
      v21 = CFX::RG::Temporal::currentFrame(v16);
      v16 = CFX::GPUResourceManager::getTexture(v20, v19, v21);
      v19 = v16;
      v18 = a1[55];
    }

    v22 = *(a2 + 24);
    v23 = *(v18 + 232);
    v24 = CFX::RG::Temporal::currentFrame(v16);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    objc_msgSend_setTexture_atIndex_(v7, v26, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v27, v17, 1);
    objc_msgSend_setTexture_atIndex_(v7, v28, v19, 2);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, v25, 3);
    v31 = *(a2 + 24);
    v32 = a1[59];
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = a1[58];
    v37 = CFX::RG::Temporal::previousFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    objc_msgSend_setTexture_atIndex_(v7, v39, v34, 10);
    objc_msgSend_setTexture_atIndex_(v7, v40, v38, 11);
    v41 = sub_1AF1403B4(a1[56] + 16);
    v43 = sub_1AFDE323C(v41);

    return objc_msgSend_dispatch_onTexture2D_(v7, v42, v43, v34);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25CF4C(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  v19[0] = "RTSubsurfaceSpatialDenoisePass";
  v19[1] = v8;
  if ((atomic_load_explicit(&qword_1ED73A8F8, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a3;
    sub_1AFDF0014();
    a2 = v17;
    a3 = v18;
  }

  sub_1AF239F88(a1, a2, a3, v19, qword_1ED73A8F0, 0);
  *a1 = &unk_1F24EAD70;
  *(a1 + 55) = a5;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  *(a1 + 58) = 0;
  v10 = sub_1AF25D058(v9, a4);
  v11 = *(*(a1 + 55) + 232);
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  v13 = *(*(a1 + 57) + 16);
  v15 = CFX::RG::Temporal::previousFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 57) + 16));
  return a1;
}

uint64_t sub_1AF25D058(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(*(a1 + 55) + 208)) + 4);
  v11 = 0uLL;
  v12 = 0;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v4 >> 16;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  CFXTextureDescriptorMake2D(v5, v7, 0x73u, &v11);
  v8 = CFX::RG::Pass::hash(a1);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v11) ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v11) ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v11) ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v11) ^ v8)))) >> 47));
  result = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ (SDWORD1(v11) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ (SDWORD1(v11) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ (SDWORD1(v11) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ (SDWORD1(v11) >> 16))))) >> 47)));
  *(a1 + 57) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF25D1F0(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF25D058(a1, a2);

  return sub_1AF25D230(a1, a2);
}

uint64_t sub_1AF25D230(uint64_t *a1, uint64_t a2)
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

__n128 sub_1AF25D328(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, *(a1[55] + 272), 544, 8);
    v10 = *(a2 + 24);
    v11 = *(a1[55] + 224);
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = *(a1[55] + 208);
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    objc_msgSend_setTexture_atIndex_(v8, v18, Texture, 1);
    v20 = objc_msgSend_setTexture_atIndex_(v8, v19, v17, 2);
    v21 = *(a2 + 24);
    v22 = a1[58];
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    v25 = *(a2 + 24);
    v26 = *(a1[57] + 16);
    v27 = CFX::RG::Temporal::currentFrame(v24);
    v28 = CFX::GPUResourceManager::getTexture(v25, v26, v27);
    v52 = 1065353216;
    objc_msgSend_setBytes_length_atIndex_(v8, v29, &v52, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v30, v24, 0);
    objc_msgSend_setTexture_atIndex_(v8, v31, v28, 10);
    v32 = sub_1AF1403B4(a1[56] + 16);
    v33 = sub_1AFDE323C(v32);
    objc_msgSend_dispatch_onTexture2D_(v8, v34, v33, v28);
    v52 = 0x40000000;
    objc_msgSend_setBytes_length_atIndex_(v8, v35, &v52, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v36, v28, 0);
    objc_msgSend_setTexture_atIndex_(v8, v37, v24, 10);
    v38 = sub_1AF1403B4(a1[56] + 16);
    v39 = sub_1AFDE323C(v38);
    objc_msgSend_dispatch_onTexture2D_(v8, v40, v39, v28);
    v52 = 1082130432;
    objc_msgSend_setBytes_length_atIndex_(v8, v41, &v52, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v42, v24, 0);
    objc_msgSend_setTexture_atIndex_(v8, v43, v28, 10);
    v44 = sub_1AF1403B4(a1[56] + 16);
    v45 = sub_1AFDE323C(v44);
    objc_msgSend_dispatch_onTexture2D_(v8, v46, v45, v28);
    v47 = *(a1[55] + 272);
    v48 = v47[1];
    v47[4] = *v47;
    v47[5] = v48;
    v49 = v47[3];
    v47[6] = v47[2];
    v47[7] = v49;
    v50 = *(a1[55] + 272);
    v51 = *(v50 + 368);
    *(v50 + 416) = *(v50 + 352);
    *(v50 + 432) = v51;
    result = *(v50 + 336);
    *(v50 + 384) = *(v50 + 320);
    *(v50 + 400) = result;
    ++*(*(a1[55] + 272) + 524);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25D594(CFX::RG::RenderGraphContext *a1, uint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF25D6B8(v4, a1, a2);
  a2[33] = *(*(v5 + 57) + 16);
  v6 = sub_1AF25D710(v4, a1, a2);
  CFX::RG::Pass::dependsOn(v6, v5);
  v7 = sub_1AF25D768(v4, a1, a2);
  v8 = v6[58];
  *(v7 + 57) = v8;
  v9 = CFX::RG::Temporal::currentFrame(v7);
  CFX::RG::Pass::readFrom(v7, v8, v9);
  CFX::RG::Pass::dependsOn(v7, v6);
  v10 = sub_1AF25D7C0(v4, a1, a2);
  v11 = *(v7 + 59);
  *(v10 + 58) = v11;
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(v10, v11, v12);
  v13 = CFX::RG::Pass::dependsOn(v10, v7);
  v14 = *(*(v10 + 57) + 16);
  *(v7 + 58) = v14;
  v15 = CFX::RG::Temporal::previousFrame(v13);
  CFX::RG::Pass::readFrom(v7, v14, v15);
  a2[32] = *(*(v10 + 57) + 16);
  return v5;
}

uint64_t sub_1AF25D6B8(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25DD28(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25D710(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25DD88(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25D768(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25DDE8(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25D7C0(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25DE48(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF25D81C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25D858(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25D894(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25D8D0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25D908(uint64_t a1)
{
  *a1 = &unk_1F24EADC8;

  return a1;
}

void sub_1AF25D950(uint64_t a1)
{
  *a1 = &unk_1F24EADC8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25D9B8(uint64_t a1)
{
  *a1 = &unk_1F24EADE8;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25DA00(uint64_t a1)
{
  *a1 = &unk_1F24EADE8;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25DA68(uint64_t a1)
{
  *a1 = &unk_1F24EAE08;

  return a1;
}

void sub_1AF25DAB0(uint64_t a1)
{
  *a1 = &unk_1F24EAE08;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25DB18(uint64_t a1)
{
  *a1 = &unk_1F24EAE28;

  return a1;
}

void sub_1AF25DB60(uint64_t a1)
{
  *a1 = &unk_1F24EAE28;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25DBC8(uint64_t a1)
{
  *a1 = &unk_1F24EAE48;

  return a1;
}

void sub_1AF25DC10(uint64_t a1)
{
  *a1 = &unk_1F24EAE48;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25DC78(uint64_t a1)
{
  *a1 = &unk_1F24EAE68;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25DCC0(uint64_t a1)
{
  *a1 = &unk_1F24EAE68;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF25DD28(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D0u, 8u);
  return sub_1AF25BCC4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF25DD88(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u);
  return sub_1AF25C7A4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF25DDE8(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u);
  return sub_1AF25CB54(v8, *a3, a3[1], a4, a5);
}

CFX::RG::Pass *sub_1AF25DE48(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u);
  return sub_1AF25CF4C(v8, *a3, a3[1], a4, a5);
}

uint64_t *sub_1AF25DEA8(uint64_t *a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t a5)
{
  v8 = *a5;
  v38[0] = "RTTransmissionTracePass";
  v38[1] = v8;
  if ((atomic_load_explicit(&qword_1ED73A910, memory_order_acquire) & 1) == 0)
  {
    v37 = a3;
    v36 = a2;
    sub_1AFDF006C();
    a2 = v36;
    a3 = v37;
  }

  sub_1AF239F88(a1, a2, a3, v38, qword_1ED73A908, 0);
  *a1 = &unk_1F24EAE88;
  a1[56] = 0;
  a1[57] = 0;
  a1[55] = a5;
  sub_1AF25E100(v9, a4);
  v10 = *(a5 + 172);
  v11 = 1.0;
  if (v10 != 2)
  {
    v12 = sub_1AF130864(a1[54]);
    v11 = ceilf(v12 / sub_1AF130888(a1[54]));
  }

  v13 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, *(a1[55] + 208)) + 4);
  v14 = *(a1[55] + 280);
  v15 = vld1q_dup_f64(v13);
  v14[71].i32[0] = v11;
  if (v10)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v14[71].i32[1] = (v11 * v16);
  v17 = vshrq_n_s64(vshlq_u64(v15, xmmword_1AFE42F50), 0x30uLL);
  v18 = vcgtq_s64(v17, vdupq_n_s64(1uLL));
  v14[68] = vmovn_s64(vsubq_s64(vandq_s8(v17, v18), vmvnq_s8(v18)));
  v19 = *(a1[55] + 280);
  v20 = *(v19 + 568);
  v17.i32[0] = *(v19 + 544) / v20;
  v17.i32[1] = HIDWORD(*(v19 + 544)) / v20;
  *(v19 + 552) = v17.i64[0];
  v21 = *(a1[55] + 280);
  v22 = *(v21 + 572);
  v17.i32[0] = *(v21 + 544) / v22;
  v17.i32[1] = HIDWORD(*(v21 + 544)) / v22;
  *(v21 + 560) = v17.i64[0];
  v23 = sub_1AF25E35C(a1, a4);
  v24 = *(a1[55] + 224);
  v25 = CFX::RG::Temporal::currentFrame(v23);
  CFX::RG::Pass::readFrom(a1, v24, v25);
  v26 = *(a1[55] + 208);
  v28 = CFX::RG::Temporal::currentFrame(v27);
  CFX::RG::Pass::readFrom(a1, v26, v28);
  v29 = *(a1[55] + 200);
  v31 = CFX::RG::Temporal::currentFrame(v30);
  CFX::RG::Pass::readFrom(a1, v29, v31);
  v32 = *(a5 + 208);
  v34 = CFX::RG::Temporal::currentFrame(v33);
  CFX::RG::Pass::readFrom(a1, v32, v34);
  CFX::RG::Pass::writeTo(a1, *(a1[57] + 16));
  return a1;
}

uint64_t sub_1AF25E100(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = sub_1AF12DDCC(a1[54]);
  v9 = sub_1AF1D0140(v8);
  v10 = sub_1AF1D005C(v8, 0) != 0;
  v19 = v10;
  v11 = sub_1AF1449F0(v9) != 0;
  v17 = *(a1[55] + 172);
  v18 = v11;
  v12 = CFX::RG::Pass::hash(a1);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v11)));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v10)));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v17)))) >> 47)));
  a1[56] = result;
  if (!result)
  {
    operator new();
  }

  *(a1[55] + 280) = result + 32;
  return result;
}

uint64_t sub_1AF25E35C(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = vmul_lane_s32(*(*(*(a1 + 55) + 280) + 560), *(*(*(a1 + 55) + 280) + 560), 1).u32[0];
  v5 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47)));
  *(a1 + 57) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF25E4B0(uint64_t *a1, uint64_t a2)
{
  sub_1AF25E100(a1, a2);

  return sub_1AF25E35C(a1, a2);
}

void *sub_1AF25E4F0(uint64_t a1, uint64_t a2, id *this)
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
        v9 = sub_1AF12F10C(*(a1 + 432));
        sub_1AF27F12C(v9, v131);
        v10 = sub_1AF13050C(*(a1 + 432), 1);
        v125 = v10[1];
        v126 = *v10;
        v123 = v10[3];
        v124 = v10[2];
        v130 = sub_1AF12FCE8(*(a1 + 432), 0);
        v127 = sub_1AF1D0140(v8);
        v128 = v7;
        v11 = *(a2 + 24);
        v12 = *(*(a1 + 440) + 224);
        v13 = CFX::RG::Temporal::currentFrame(v127);
        Texture = CFX::GPUResourceManager::getTexture(v11, v12, v13);
        v14 = *(a2 + 24);
        v15 = *(*(a1 + 440) + 208);
        v16 = CFX::RG::Temporal::currentFrame(Texture);
        v121 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
        v17 = *(a2 + 24);
        v18 = *(*(a1 + 440) + 216);
        v19 = CFX::RG::Temporal::currentFrame(v121);
        v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
        v21 = *(a2 + 24);
        v22 = *(*(a1 + 440) + 240);
        v23 = CFX::RG::Temporal::currentFrame(v20);
        v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
        v25 = *(a2 + 24);
        v26 = *(*(a1 + 440) + 248);
        v27 = CFX::RG::Temporal::currentFrame(v24);
        v28 = CFX::GPUResourceManager::getTexture(v25, v26, v27);
        v29 = *(a2 + 24);
        v30 = *(*(a1 + 440) + 200);
        v31 = CFX::RG::Temporal::currentFrame(v28);
        v32 = CFX::GPUResourceManager::getTexture(v29, v30, v31);
        v33 = *(a2 + 24);
        v34 = *(*(a1 + 440) + 256);
        v35 = CFX::RG::Temporal::currentFrame(v32);
        v36 = CFX::GPUResourceManager::getTexture(v33, v34, v35);
        objc_msgSend_setTexture_atIndex_(v6, v37, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v6, v38, v121, 1);
        objc_msgSend_setTexture_atIndex_(v6, v39, v20, 2);
        objc_msgSend_setTexture_atIndex_(v6, v40, v28, 3);
        objc_msgSend_setTexture_atIndex_(v6, v41, v32, 5);
        objc_msgSend_setTexture_atIndex_(v6, v42, v24, 6);
        v43 = sub_1AF2757FC(v128, *(a2 + 32));
        objc_msgSend_setTexture_atIndex_(v6, v44, v43, 9);
        objc_msgSend_setTexture_atIndex_(v6, v45, v36, 10);
        v48 = sub_1AF1D005C(v8, 0);
        if (v48)
        {
          v49 = objc_msgSend_textureForMaterialProperty_(v128, v46, v48, v47);
          if (v49)
          {
            objc_msgSend_setTexture_atIndex_(v6, v50, v49, 8);
          }

          v51 = sub_1AF167220(v48);
          v52 = MEMORY[0x1E69E9B18];
          if (v51)
          {
            v52 = v51;
          }

          v53 = *v52;
          v54 = v52[1];
          v55 = v52[2];
          v56 = v52[3];
          v57 = *(*(a1 + 440) + 280);
          v57[28] = v53;
          v57[29] = v54;
          v57[30] = v55;
          v57[31] = v56;
        }

        v129 = sub_1AF130C00(**(a1 + 440), 0);
        v58 = *(*(a1 + 440) + 280);
        v58[8] = v126;
        v58[9] = v125;
        v58[10] = v124;
        v58[11] = v123;
        v59 = sub_1AF15E62C(v131, &v130);
        v60 = 0;
        v61 = *(v59 + 1);
        v62 = *(v59 + 2);
        v63 = *(v59 + 3);
        v64 = *(*(a1 + 440) + 280);
        v64[16] = *v59;
        v64[17] = v61;
        v64[18] = v62;
        v64[19] = v63;
        v65 = *(a1 + 448);
        v66 = v65[18];
        v67 = v65[19];
        v68 = v65[20];
        v69 = v65[21];
        v70 = v65[11];
        v71 = v65[12];
        v72 = v65[13];
        v132[0] = v65[10];
        v132[1] = v70;
        v132[2] = v71;
        v132[3] = v72;
        do
        {
          *(&v133 + v60 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v66, COERCE_FLOAT(v132[v60])), v67, *&v132[v60], 1), v68, v132[v60], 2), v69, v132[v60], 3);
          ++v60;
        }

        while (v60 != 4);
        v73 = v134;
        v74 = v135;
        v75 = v136;
        v76 = *(*(a1 + 440) + 280);
        *v76 = v133;
        v76[1] = v73;
        v76[2] = v74;
        v76[3] = v75;
        *(*(*(a1 + 440) + 280) + 192) = __invert_f4(*(*(a1 + 448) + 160));
        *(*(*(a1 + 440) + 280) + 320) = __invert_f4(*(*(a1 + 448) + 32));
        *(*(*(a1 + 440) + 280) + 512) = (objc_msgSend_width(Texture, v77, v78, v79) * v129.f32[0]) * 0.5;
        *(*(*(a1 + 440) + 280) + 516) = vmuls_lane_f32(objc_msgSend_height(Texture, v80, v81, v82), v129, 1) * 0.5;
        v84 = *(a1 + 440);
        v85 = *(v84 + 280);
        *(v85 + 532) = *(v84 + 192);
        if (v48)
        {
          v86 = sub_1AF166598(v48);
          v85 = *(*(a1 + 440) + 280);
        }

        else
        {
          v86 = 0.0;
        }

        *(v85 + 528) = v86;
        objc_msgSend_setBytes_length_atIndex_(v6, v83, v85, 576, 8, v121);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v87, *(*(a1 + 440) + 176), 0, 4);
        v89 = objc_msgSend_setBuffer_offset_atIndex_(v6, v88, *(*(a1 + 440) + 184), 0, 5);
        v90 = *(a2 + 24);
        v91 = *(*(a1 + 456) + 16);
        v92 = CFX::RG::Temporal::currentFrame(v89);
        CFX::GPUResourceManager::getBuffer(v90, v91, v92);
        LODWORD(v90) = v93;
        MTLBuffer = CFXBufferSliceGetMTLBuffer(v94, v93);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v96, MTLBuffer, v90, 10);
        sub_1AF144838(v127, v6);
        v97 = sub_1AF1448D8(v127);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v98, v97, 0, 0);
        v99 = sub_1AF1448D0(v127);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v6, v100, v99, 1);
        if (sub_1AF1449F0(v127))
        {
          v101 = sub_1AF1403B4(*(a1 + 448) + 16);
          v102 = sub_1AFDE323C(v101);
          v103 = sub_1AF144918(v127, v102);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v6, v104, v103, 3);
        }

        v105 = sub_1AF1448E8(v127);
        v109 = sub_1AF144A00(v127, v106, v107, v108);
        objc_msgSend_useResources_count_usage_(v6, v110, v105, v109, 1);
        v111 = sub_1AF1403B4(*(a1 + 448) + 16);
        v112 = sub_1AFDE323C(v111);
        objc_msgSend_setComputePipelineState_(v6, v113, v112, v114);
        v115 = *(a1 + 448);
        v116 = *(*(*(a1 + 440) + 280) + 560);
        v117 = v116;
        v118 = SHIDWORD(v116);
        v119 = sub_1AF1403B4(v115 + 16);
        v120 = sub_1AFDE323C(v119);
        *&v133 = v117;
        *(&v133 + 1) = v118;
        *&v134 = 1;
        return RGMTLComputeCommandEncoderDispatchOnGrid2D(v6, v120, &v133, 1);
      }
    }
  }

  return result;
}

uint64_t sub_1AF25EAB8(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v37 = "RTTransmissionUpscalePass";
  *(&v37 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A920, memory_order_acquire) & 1) == 0)
  {
    v33 = a2;
    v34 = a3;
    sub_1AFDF00C8();
    a2 = v33;
    a3 = v34;
  }

  sub_1AF239F88(a1, a2, a3, &v37, qword_1ED73A918, 0);
  *a1 = &unk_1F24EAEE0;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  v9 = sub_1AF12E2AC(*(a1 + 432));
  *(a1 + 456) = sub_1AF2757FC(v9, a4[4]);
  v37 = 0uLL;
  v38 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 280) + 552), WORD2(*(*(*(a1 + 440) + 280) + 552)), 0x73u, &v37);
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v35 = v37;
  v36 = v38;
  v11 = sub_1AF2373FC(v10, "TransmissionUpscale", &v35);
  *(a1 + 464) = v11;
  v12 = *(*(a1 + 440) + 224);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  v14 = *(*(a1 + 440) + 208);
  v16 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v14, v16);
  v17 = *(*(a1 + 440) + 216);
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v17, v19);
  v20 = *(*(a1 + 440) + 232);
  v22 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v20, v22);
  v23 = *(*(a1 + 440) + 240);
  v25 = CFX::RG::Temporal::currentFrame(v24);
  CFX::RG::Pass::readFrom(a1, v23, v25);
  v26 = *(*(a1 + 440) + 200);
  v28 = CFX::RG::Temporal::currentFrame(v27);
  CFX::RG::Pass::readFrom(a1, v26, v28);
  v29 = *(*(a1 + 440) + 272);
  v31 = CFX::RG::Temporal::currentFrame(v30);
  CFX::RG::Pass::readFrom(a1, v29, v31);
  CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  return a1;
}

void sub_1AF25ECB4(uint64_t *a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  a1[56] = v5;
  if (!v5)
  {
    a1[56] = sub_1AF25EF48(*(a2 + 32), v4);
    v6 = sub_1AF12E2AC(a1[54]);
    v10 = objc_msgSend_resourceManager(v6, v7, v8, v9);
    v11 = a1[56];
    v14 = objc_msgSend_newComputePipelineStateWithFunctionName_(v10, v12, @"vfx_rt_transmission_upscale", v13);

    sub_1AF23355C((v11 + 16), v14);
  }
}

id sub_1AF25ED50(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 280), 576, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 224);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 208);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 240);
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = *(a2 + 24);
    v22 = *(a1[55] + 200);
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 1);
    objc_msgSend_setTexture_atIndex_(v7, v27, a1[57], 2);
    objc_msgSend_setTexture_atIndex_(v7, v28, v24, 3);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, v20, 4);
    v31 = *(a2 + 24);
    v32 = *(a1[55] + 272);
    v33 = CFX::RG::Temporal::currentFrame(v30);
    CFX::GPUResourceManager::getBuffer(v31, v32, v33);
    LODWORD(v31) = v34;
    MTLBuffer = CFXBufferSliceGetMTLBuffer(v35, v34);
    v38 = objc_msgSend_setBuffer_offset_atIndex_(v7, v37, MTLBuffer, v31, 0);
    v39 = *(a2 + 24);
    v40 = a1[58];
    v41 = CFX::RG::Temporal::currentFrame(v38);
    v42 = CFX::GPUResourceManager::getTexture(v39, v40, v41);
    objc_msgSend_setTexture_atIndex_(v7, v43, v42, 10);
    v44 = sub_1AF1403B4(a1[56] + 16);
    v46 = sub_1AFDE323C(v44);

    return objc_msgSend_dispatch_onTexture2D_(v7, v45, v46, v42);
  }

  return result;
}

uint64_t sub_1AF25EF48(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF25EFD0(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v8 = *a5;
  *&v19 = "RTTransmissionTemporalDenoisePass";
  *(&v19 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A928, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v16 = a3;
    sub_1AFDF0124();
    a2 = v15;
    a3 = v16;
  }

  if (byte_1ED73A900)
  {
    v9 = 0x962C705CBA8C9F0ELL;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v19, v9, 0);
  *a1 = &unk_1F24EAF38;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  v19 = 0uLL;
  v20 = 0;
  CFXTextureDescriptorMake2D(*(a5[35] + 552), WORD2(*(a5[35] + 552)), 0x73u, &v19);
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v17 = v19;
  v18 = v20;
  v11 = sub_1AF2373FC(v10, "TransmissionTemporalDenoise", &v17);
  *(a1 + 472) = v11;
  v12 = *(*(a1 + 440) + 232);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

uint64_t sub_1AF25F128(uint64_t *a1, uint64_t a2)
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

id sub_1AF25F220(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 280), 576, 8);
    v9 = *(a2 + 24);
    v10 = a1[57];
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 224);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = v16;
    v18 = a1[55];
    v19 = *(v18 + 256);
    if (v19)
    {
      v20 = *(a2 + 24);
      v21 = CFX::RG::Temporal::currentFrame(v16);
      v16 = CFX::GPUResourceManager::getTexture(v20, v19, v21);
      v19 = v16;
      v18 = a1[55];
    }

    v22 = *(a2 + 24);
    v23 = *(v18 + 232);
    v24 = CFX::RG::Temporal::currentFrame(v16);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    objc_msgSend_setTexture_atIndex_(v7, v26, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v27, v17, 1);
    objc_msgSend_setTexture_atIndex_(v7, v28, v19, 2);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, v25, 3);
    v31 = *(a2 + 24);
    v32 = a1[59];
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = a1[58];
    v37 = CFX::RG::Temporal::previousFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    objc_msgSend_setTexture_atIndex_(v7, v39, v34, 10);
    objc_msgSend_setTexture_atIndex_(v7, v40, v38, 11);
    v41 = sub_1AF1403B4(a1[56] + 16);
    v43 = sub_1AFDE323C(v41);

    return objc_msgSend_dispatch_onTexture2D_(v7, v42, v43, v34);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25F3FC(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  v22[0] = "RTTransmissionSpatialDenoisePass";
  v22[1] = v8;
  if ((atomic_load_explicit(&qword_1ED73A938, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v21 = a3;
    sub_1AFDF0170();
    a2 = v20;
    a3 = v21;
  }

  sub_1AF239F88(a1, a2, a3, v22, qword_1ED73A930, 0);
  *a1 = &unk_1F24EAF90;
  *(a1 + 55) = a5;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  *(a1 + 58) = 0;
  v10 = sub_1AF25F524(v9, a4);
  v11 = *(*(a1 + 55) + 232);
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  v13 = *(*(a1 + 57) + 16);
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  v16 = *(*(a1 + 57) + 16);
  v18 = CFX::RG::Temporal::previousFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 57) + 16));
  return a1;
}

uint64_t sub_1AF25F524(CFX::RG::Pass *a1, uint64_t a2)
{
  v7 = 0uLL;
  v8 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 55) + 280) + 552), WORD2(*(*(*(a1 + 55) + 280) + 552)), 0x73u, &v7);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) >> 47)));
  *(a1 + 57) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF25F6A4(CFX::RG::Pass *a1, uint64_t a2)
{
  sub_1AF25F524(a1, a2);

  return sub_1AF25F6E4(a1, a2);
}

uint64_t sub_1AF25F6E4(uint64_t *a1, uint64_t a2)
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

__n128 sub_1AF25F7DC(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, *(a1[55] + 280), 576, 8);
    v10 = *(a2 + 24);
    v11 = *(a1[55] + 224);
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = *(a1[55] + 208);
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    v18 = *(a2 + 24);
    v19 = *(a1[55] + 240);
    v20 = CFX::RG::Temporal::currentFrame(v17);
    v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
    objc_msgSend_setTexture_atIndex_(v8, v22, Texture, 1);
    objc_msgSend_setTexture_atIndex_(v8, v23, v17, 2);
    v25 = objc_msgSend_setTexture_atIndex_(v8, v24, v21, 3);
    v26 = *(a2 + 24);
    v27 = a1[58];
    v28 = CFX::RG::Temporal::currentFrame(v25);
    v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
    v30 = *(a2 + 24);
    v31 = *(a1[57] + 16);
    v32 = CFX::RG::Temporal::currentFrame(v29);
    v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
    v57 = 1065353216;
    objc_msgSend_setBytes_length_atIndex_(v8, v34, &v57, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v35, v29, 0);
    objc_msgSend_setTexture_atIndex_(v8, v36, v33, 10);
    v37 = sub_1AF1403B4(a1[56] + 16);
    v38 = sub_1AFDE323C(v37);
    objc_msgSend_dispatch_onTexture2D_(v8, v39, v38, v33);
    v57 = 0x40000000;
    objc_msgSend_setBytes_length_atIndex_(v8, v40, &v57, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v41, v33, 0);
    objc_msgSend_setTexture_atIndex_(v8, v42, v29, 10);
    v43 = sub_1AF1403B4(a1[56] + 16);
    v44 = sub_1AFDE323C(v43);
    objc_msgSend_dispatch_onTexture2D_(v8, v45, v44, v33);
    v57 = 1082130432;
    objc_msgSend_setBytes_length_atIndex_(v8, v46, &v57, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v47, v29, 0);
    objc_msgSend_setTexture_atIndex_(v8, v48, v33, 10);
    v49 = sub_1AF1403B4(a1[56] + 16);
    v50 = sub_1AFDE323C(v49);
    objc_msgSend_dispatch_onTexture2D_(v8, v51, v50, v33);
    v52 = *(a1[55] + 280);
    v53 = v52[1];
    v52[4] = *v52;
    v52[5] = v53;
    v54 = v52[3];
    v52[6] = v52[2];
    v52[7] = v54;
    v55 = *(a1[55] + 280);
    v56 = *(v55 + 368);
    *(v55 + 416) = *(v55 + 352);
    *(v55 + 432) = v56;
    result = *(v55 + 336);
    *(v55 + 384) = *(v55 + 320);
    *(v55 + 400) = result;
    ++*(*(a1[55] + 280) + 524);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25FA84(CFX::RG::RenderGraphContext *a1, uint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF25FBA8(v4, a1, a2);
  a2[34] = *(*(v5 + 57) + 16);
  v6 = sub_1AF25FC00(v4, a1, a2);
  CFX::RG::Pass::dependsOn(v6, v5);
  v7 = sub_1AF25FC58(v4, a1, a2);
  v8 = v6[58];
  *(v7 + 57) = v8;
  v9 = CFX::RG::Temporal::currentFrame(v7);
  CFX::RG::Pass::readFrom(v7, v8, v9);
  CFX::RG::Pass::dependsOn(v7, v6);
  v10 = sub_1AF25FCB0(v4, a1, a2);
  v11 = *(v7 + 59);
  *(v10 + 58) = v11;
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(v10, v11, v12);
  v13 = CFX::RG::Pass::dependsOn(v10, v7);
  v14 = *(*(v10 + 57) + 16);
  *(v7 + 58) = v14;
  v15 = CFX::RG::Temporal::previousFrame(v13);
  CFX::RG::Pass::readFrom(v7, v14, v15);
  a2[33] = *(*(v10 + 57) + 16);
  return v5;
}

uint64_t sub_1AF25FBA8(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF260268(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25FC00(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2602C8(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25FC58(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF260328(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25FCB0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF260388(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF25FD0C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25FD48(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25FD84(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25FDC0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25FDF8(uint64_t a1)
{
  *a1 = &unk_1F24EAFE8;

  return a1;
}

void sub_1AF25FE40(uint64_t a1)
{
  *a1 = &unk_1F24EAFE8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25FEA8(uint64_t a1)
{
  *a1 = &unk_1F24EB008;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25FF18(uint64_t a1)
{
  *a1 = &unk_1F24EB008;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25FFA8(uint64_t a1)
{
  *a1 = &unk_1F24EB028;

  return a1;
}

void sub_1AF25FFF0(uint64_t a1)
{
  *a1 = &unk_1F24EB028;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF260058(uint64_t a1)
{
  *a1 = &unk_1F24EB048;

  return a1;
}

void sub_1AF2600A0(uint64_t a1)
{
  *a1 = &unk_1F24EB048;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF260108(uint64_t a1)
{
  *a1 = &unk_1F24EB068;

  return a1;
}

void sub_1AF260150(uint64_t a1)
{
  *a1 = &unk_1F24EB068;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2601B8(uint64_t a1)
{
  *a1 = &unk_1F24EB088;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF260200(uint64_t a1)
{
  *a1 = &unk_1F24EB088;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t *sub_1AF260268(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D0u, 8u);
  return sub_1AF25DEA8(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2602C8(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u);
  return sub_1AF25EAB8(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF260328(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u);
  return sub_1AF25EFD0(v8, *a3, a3[1], a4, a5);
}

CFX::RG::Pass *sub_1AF260388(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u);
  return sub_1AF25F3FC(v8, *a3, a3[1], a4, a5);
}

__n128 sub_1AF2603E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a1 + 40) = *(a3 + 32);
  *(a1 + 24) = v5;
  *(a1 + 8) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = a4;
  return result;
}

void sub_1AF260410(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1AF130770(*a1, a2, a3, a4);
  prof_beginFlameSmallData("computeProgramHashCodes", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/SceneRenderer.mm", 76, v8 | 0x300000000);
  v9 = sub_1AF12DDCC(*a1);
  v10 = sub_1AF1D00B0(v9);
  v11 = sub_1AF13341C(v10);
  v12 = sub_1AF1D00F8(v9);
  v13 = sub_1AF12EDD8(*a1);
  v14 = sub_1AF14748C(v11);
  sub_1AF140010(v13, v14);
  sub_1AF260708(a1);
  if (*(a1 + 24))
  {
    v29 = sub_1AF13804C(v12, *a1);
  }

  else
  {
    v29 = 0;
  }

  for (i = 0; ; ++i)
  {
    v16 = sub_1AF170BF8(*(a1 + 64));
    if (i >= sub_1AF12464C(v16))
    {
      break;
    }

    v17 = *(a1 + 64);
    if (v29)
    {
      v18 = sub_1AF170BF8(v17);
      sub_1AF138230(v12, v18 + (i << 6) + 0x2000, *a1);
      v32 = 0;
      memset(v31, 0, sizeof(v31));
      sub_1AF1384E8(v12, *a1, v31);
      v30 = 0;
      if (sub_1AF1384C4(v12, v33, &v30))
      {
        sub_1AF138988(v12, v33);
        v19 = sub_1AF13877C(v12, v33, (v31 + 4));
        LOWORD(v31[0]) = v31[0] & 0xC03F | (v19 << 6);
      }

      v20 = *(sub_1AF170BF8(*(a1 + 64)) + 16 * i + 14864);
      v21 = *(sub_1AF170BF8(*(a1 + 64)) + 16 * i + 14872);
      if (v21)
      {
        do
        {
          v22 = *v20++;
          v4 = v4 & 0xFFFFFFFF00000000 | v22;
          v23 = sub_1AF1474D8(v11, v4);
          v24 = *(v23 + 80);
          if ((v24 & 0x40) != 0)
          {
            *(v23 + 80) = (16 * LOWORD(v31[0])) & 0x380 | v24 & 0xFC7F;
          }

          sub_1AF260830(a1, a2, v23, v13, v31);
          --v21;
        }

        while (v21);
      }

      sub_1AF138A68(v12);
    }

    else
    {
      v25 = *(sub_1AF170BF8(v17) + 16 * i + 14864);
      v26 = *(sub_1AF170BF8(*(a1 + 64)) + 16 * i + 14872);
      if (v26)
      {
        do
        {
          v27 = *v25++;
          v5 = v5 & 0xFFFFFFFF00000000 | v27;
          v28 = sub_1AF1474D8(v11, v5);
          sub_1AF260830(a1, a2, v28, v13, 0);
          --v26;
        }

        while (v26);
      }
    }
  }

  prof_endFlame();
}

void sub_1AF260708(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 64);
  if (*(v3 + 112))
  {
    v4 = *(sub_1AF170BF8(v3) + 14592) << 16;
    v3 = *(a1 + 64);
  }

  else
  {
    v4 = 0x10000;
  }

  v5 = *(sub_1AF170BF8(v3) + 14595);
  v6 = *(a1 + 18);
  if ((*(a1 + 24) & 8) != 0)
  {
    v7 = &qword_1ED73A940;
    if ((atomic_load_explicit(&qword_1ED73A948, memory_order_acquire) & 1) == 0)
    {
      v12 = v5;
      v13 = v6;
      sub_1AFDF01CC(&v14);
      v5 = v12;
      v6 = v13;
      v7 = v14;
    }
  }

  else
  {
    v7 = (a1 + 40);
  }

  v8 = (v4 & 0xFFFFFFFF87FFFFFFLL | (((((8 * (v5 & 3)) & 0x9F | (32 * (v6 & 3u))) >> 3) & 0xF) << 27) | v2) ^ 0x1A929E4D6F47A654;
  v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v8) ^ ((0xC6A4A7935BD1E995 * v8) >> 47));
  v10 = 0x9DDFEA08EB382D69 * (*v7 ^ (v9 >> 47) ^ v9);
  v11 = 0x9DDFEA08EB382D69 * (v9 ^ ((v10 ^ v9) >> 47) ^ v10);
  *(a1 + 56) = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
}

void sub_1AF260830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5)
{
  v10 = sub_1AF130770(*a1, a2, a3, a4);
  prof_beginFlameSmallData("computeProgramHashCodeForRendererElement", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/SceneRenderer.mm", 171, v10 | 0x300000000);
  if (!sub_1AF145EB0(a3) && (*(a3 + 16) || *(a3 + 24)))
  {
    v11 = *(a3 + 8);
    v12 = sub_1AF1402E0(a4, a3, 0, *(a1 + 56));
    if (!v12 || !sub_1AF13E850(v11, v12, a5))
    {
      v24 = sub_1AF146158(a3);
      v23 = sub_1AF146178(a3);
      v22 = sub_1AF146118(a3);
      v20 = sub_1AF146138(a3);
      v21 = *(a1 + 16);
      v13 = *(a1 + 64);
      if (*(v13 + 112))
      {
        v14 = *(sub_1AF170BF8(v13) + 14592) << 16;
        v13 = *(a1 + 64);
      }

      else
      {
        v14 = 0x10000;
      }

      v15 = *(a3 + 80);
      v16 = *(sub_1AF170BF8(v13) + 14595);
      v17 = *(a1 + 18);
      v18 = *(a1 + 8);
      if (!v18)
      {
        if (sub_1AF260A24(a1, a3))
        {
          v18 = sub_1AF2760B0(*(a2 + 32));
        }

        else
        {
          v18 = v20;
        }
      }

      v19 = sub_1AF13E964(v11, v22, v24, v23, a5, v18, v14 | (((v15 >> 11) & 7 | (8 * (v16 & 3)) & 0x9F | (32 * (v17 & 3))) << 24) | v21);
      sub_1AF1404B4(a4, a3, v19, *(a1 + 56));
      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

  prof_endFlame();
}

uint64_t sub_1AF260A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF146138(a2);
  if ((*(a1 + 24) & 8) != 0)
  {
    v5 = v4;
    result = sub_1AF146200(a2);
    if (!result)
    {
      return result;
    }

    if (!*(*(a1 + 64) + 112) && !sub_1AF1A1498(v5))
    {
      v7 = sub_1AF146118(a2);
      v8 = v7;
      if (v5)
      {
        if (sub_1AF16E0F0(v5, 0))
        {
          return 0;
        }

        if (v8)
        {
          v9 = sub_1AF16E0F0(v8, 0);
          if (v9)
          {
            return v9 ^ 1;
          }
        }

        v10 = sub_1AF1A1270(v5);
        v11 = sub_1AF1656E4(v10, 18, 0);
        if (v11 && sub_1AF166220(v11))
        {
          return 0;
        }
      }

      else if (v7)
      {
        v9 = sub_1AF16E0F0(v7, 0);
        return v9 ^ 1;
      }

      return 1;
    }
  }

  return 0;
}

void sub_1AF260B04(uint64_t a1, const char *a2, CFX::RG::RenderPassArguments *a3, uint64_t a4)
{
  v4 = a4;
  v7 = sub_1AF130770(*a1, a2, a3, a4);
  prof_beginFlameSmallData("render", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/SceneRenderer.mm", 245, v7 | 0x300000000);
  v8 = CFX::RG::RenderPassArguments::sliceIndex(a3);
  v9 = *(a1 + 64);
  if (*(v9 + 112))
  {
    v10 = *(sub_1AF170BF8(v9) + 14592) << 8;
    v9 = *(a1 + 64);
  }

  else
  {
    v10 = 256;
  }

  v11 = *(sub_1AF170BF8(v9) + 14595);
  v12 = *(a1 + 18);
  v13 = *(a1 + 33);
  v14 = sub_1AF12DDCC(*a1);
  v15 = sub_1AF1CF7E8(v14);
  CFRetain(v15);
  v38 = v15;
  v16 = sub_1AF12E2AC(*a1);
  objc_msgSend_setRenderPassParameters_(v16, v17, v8 & 0xFF00FFFF | (HIBYTE(v4) << 16) | v10 | (v11 << 24) | (v12 << 32) | (v13 << 40), v18);
  objc_msgSend_setCurrentPassHash_(v16, v19, *(a1 + 56), v20);
  objc_msgSend_setCurrentPassMaterial_(v16, v21, *(a1 + 8), v22);
  v23 = *(a1 + 64);
  if ((*(v23 + 120) & 4) == 0)
  {
    if (*(v23 + 113) == 2)
    {
      if (*(v23 + 80))
      {
        v39 = *(v23 + 64);
        v24 = CFX::RG::RenderPassArguments::encoder(a3);
        v41 = vcvtq_f64_f32(*v39.f32);
        v42 = vcvt_hight_f64_f32(v39);
        v43 = xmmword_1AFE42FD0;
        objc_msgSend_setViewport_(v24, v25, &v41, v26);
      }
    }

    else
    {
      for (i = 0; ; ++i)
      {
        v33 = *(v23 + 112) ? *(sub_1AF170BF8(v23) + 14592) : 1;
        if (i >= v33)
        {
          break;
        }

        v34 = sub_1AF170BF8(*(a1 + 64));
        v40 = sub_1AF125C8C(v34, i);
        v35 = CFX::RG::RenderPassArguments::encoder(a3);
        v41 = vcvtq_f64_f32(v40.n128_u64[0]);
        v42 = vcvt_hight_f64_f32(v40);
        v43 = xmmword_1AFE42FD0;
        objc_msgSend_setViewport_(v35, v36, &v41, v37);
        v23 = *(a1 + 64);
      }
    }
  }

  if (!sub_1AF1D00B0(v14))
  {
    v27 = sub_1AF0D5194();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0228(v27);
    }
  }

  v28 = *a1;
  v29 = sub_1AF170BF8(*(a1 + 64));
  sub_1AF13051C(v28, 0, v29 + (HIBYTE(v4) << 6) + 9216);
  v30 = *a1;
  v31 = sub_1AF170BF8(*(a1 + 64));
  sub_1AF13051C(v30, 1, v31 + (HIBYTE(v4) << 6) + 0x2000);
  sub_1AF260DB8(a1, v4);
  CFRelease(v38);
  prof_endFlame();
}

void sub_1AF260DB8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v6 = sub_1AF12DDCC(*v4);
  v7 = sub_1AF1D00B0(v6);
  v8 = sub_1AF12E2AC(v5->i64[0]);
  bzero(v35, 0x3BC0uLL);
  v9 = v5[4].i64[0];
  v10 = *(v9 + 112);
  if (v10)
  {
    v11 = *(sub_1AF170BF8(v9) + 14592);
    v9 = v5[4].i64[0];
    v10 = *(v9 + 112);
  }

  else
  {
    v11 = 1;
  }

  v35[8] = v11;
  v35[9] = (*(v9 + 120) & 4) != 0;
  v35[10] = v10;
  v35[11] = v5[1].i8[2];
  v37 = v5[1].i16[0];
  v12 = sub_1AF170BF8(v9);
  memcpy(v36, v12, sizeof(v36));
  if ((v5[1].i8[8] & 2) != 0)
  {
    v13 = sub_1AF1D0008(v6, 0);
    if (v13)
    {
      sub_1AF12E1B8(v5->i64[0], v13);
    }
  }

  v14 = sub_1AF12DE14(v5->i64[0]);
  v15 = 16 * v3;
  v16 = *(sub_1AF170BF8(v5[4].i64[0]) + v15 + 14872);
  v17 = *(sub_1AF170BF8(v5[4].i64[0]) + v15 + 14864);
  if (!v17)
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF02AC(v18);
    }
  }

  if ((v5[1].i8[8] & 0x30) != 0)
  {
    v19 = CACurrentMediaTime();
    prof_beginFlame("sync and sort", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/SceneRenderer.mm", 339);
    v20 = sub_1AF12EE20(v5->i64[0]);
    sub_1AF14AF48(v20, v5->i64[0], v17, v16, v5[3].i64[1]);
    sub_1AF14AD70(v20, v5->i64[0], v17, v16);
    *(v14 + 152) = *(v14 + 152) + CACurrentMediaTime() - v19;
    prof_endFlame();
  }

  if (sub_1AF1302DC(v5->i64[0]))
  {
    v21 = sub_1AF12DE14(v5->i64[0]);
    v22 = sub_1AF1302DC(v5->i64[0]) + ~*(v21 + 12);
    if (v16 >= v22)
    {
      v16 = v22;
    }

    else
    {
      v16 = v16;
    }
  }

  v23 = CACurrentMediaTime();
  prof_beginFlame("process rendererElements", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/SceneRenderer.mm", 359);
  v24 = v5->i64[0];
  v27[0] = v7;
  v27[1] = v24;
  v25 = v5[1].i64[1];
  v29 = v25 & 1;
  v30 = (*(v5[4].i64[0] + 120) & 2) != 0;
  v27[2] = v35;
  v27[3] = 0;
  v31 = v5[2].i8[1];
  v32 = (v25 & 0x30) != 0;
  v33 = (v25 & 0x20) != 0;
  v34 = (v25 & 0x40) != 0;
  v28 = vextq_s8(v5[3], v5[3], 8uLL);
  objc_msgSend_processRendererElements_count_engineIterationContext_(v8, v26, v17, v16, v27);
  *(v14 + 152) = *(v14 + 152) + CACurrentMediaTime() - v23;
  prof_endFlame();
}

uint64_t sub_1AF261084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v41[0] = "SDFGenerationPass";
  *(&v41[0] + 1) = a7;
  if ((atomic_load_explicit(&qword_1ED73A958, memory_order_acquire) & 1) == 0)
  {
    v18 = a2;
    v19 = a3;
    sub_1AFDF0330();
    a2 = v18;
    a3 = v19;
  }

  if (byte_1ED73A950)
  {
    v10 = 0x6365193E651828FFLL;
  }

  else
  {
    v10 = 0;
  }

  sub_1AF239F88(a1, a2, a3, v41, v10, 0);
  *a1 = &unk_1F24EB0A8;
  *(a1 + 440) = *a6;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  v11 = CFX::RG::Resource::constTextureDesc(*a6);
  CFX::RG::TextureDescriptorReference::withSampleCount(v11, 1, v41);
  v12 = *(a6 + 12);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  CFX::RG::TextureDescriptorReference::withSizeFactor(v41, 1.0 / v12, &v21);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v21, MTLPixelFormatR16Float, &v31);
  *(a1 + 472) = sub_1AF233CC8(a4, "SDF OUTPUT", &v31);
  *(a1 + 464) = CFX::RG::copyIfNeeded(a4, *a6, 0, v41, "SDFGenerationPass color input resolve", v13);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v41, MTLPixelFormatRGBA16Float, v20);
  CFX::RG::TextureDescriptorReference::withUsage(v20, 1, &v21);
  CFX::RG::TextureDescriptorReference::withMipmaplevelcount(&v21, 1, &v31);
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v21 = v31;
  v22 = v32;
  *(a1 + 480) = sub_1AF233CC8(a4, "SDF TMP_A", &v21);
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v21 = v31;
  v22 = v32;
  *(a1 + 488) = sub_1AF233CC8(a4, "SDF TMP_B", &v21);
  CFX::RG::Pass::writeTo(a1, *(a1 + 480));
  v14 = CFX::RG::Pass::writeTo(a1, *(a1 + 488));
  v15 = *(a1 + 464);
  v16 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v15, v16);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

uint64_t sub_1AF2612E4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  a1[57] = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF261420(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = *(a1 + 464);
  v8 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = *(a1 + 472);
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v13 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v52[0] = *(a1 + 448);
  v14 = *(a2 + 24);
  v15 = *(a1 + 480);
  v16 = CFX::RG::Temporal::currentFrame(v13);
  v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
  v18 = *(a2 + 24);
  v19 = *(a1 + 488);
  v20 = CFX::RG::Temporal::currentFrame(v17);
  v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
  objc_msgSend_setTexture_atIndex_(v5, v22, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v23, v17, 1);
  objc_msgSend_setBytes_length_atIndex_(v5, v24, v52, 8, 0);
  v25 = sub_1AF1403B4(*(a1 + 456) + 16);
  v26 = sub_1AFDE323C(v25);
  objc_msgSend_dispatch_onTexture2D_(v5, v27, v26, v17);
  v31 = objc_msgSend_width(Texture, v28, v29, v30);
  v35 = objc_msgSend_height(Texture, v32, v33, v34);
  v37 = vcvtms_s32_f32(log2f(fmaxf(v31, v35)));
  v38 = v37 - 1;
  if (v37 >= 1)
  {
    v39 = 0;
    do
    {
      if (v39)
      {
        v40 = v21;
      }

      else
      {
        v40 = v17;
      }

      if (v39)
      {
        v41 = v17;
      }

      else
      {
        v41 = v21;
      }

      objc_msgSend_setTexture_atIndex_(v5, v36, v40, 0);
      objc_msgSend_setTexture_atIndex_(v5, v42, v41, 1);
      v52[1] = exp2(v38);
      objc_msgSend_setBytes_length_atIndex_(v5, v43, v52, 8, 0);
      v44 = sub_1AF1403B4(*(a1 + 456) + 24);
      v45 = sub_1AFDE323C(v44);
      objc_msgSend_dispatch_onTexture2D_(v5, v46, v45, v17);
      ++v39;
      --v38;
    }

    while (v38 != -1);
  }

  if (v37)
  {
    objc_msgSend_setTexture_atIndex_(v5, v36, v21, 0);
  }

  else
  {
    objc_msgSend_setTexture_atIndex_(v5, v36, v17, 0);
  }

  objc_msgSend_setTexture_atIndex_(v5, v47, v13, 1);
  v48 = sub_1AF1403B4(*(a1 + 456) + 32);
  v49 = sub_1AFDE323C(v48);
  return objc_msgSend_dispatch_onTexture2D_(v5, v50, v49, v13);
}

void sub_1AF26165C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF261694(uint64_t a1)
{
  *a1 = &unk_1F24EB100;

  return a1;
}

void sub_1AF2616EC(uint64_t a1)
{
  *a1 = &unk_1F24EB100;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF261764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v55 = *MEMORY[0x1E69E9840];
  *&v44 = a2;
  *(&v44 + 1) = a3;
  if ((atomic_load_explicit(&qword_1ED73A968, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF037C();
  }

  if (byte_1ED73A960)
  {
    v12 = 0x39077B4FC07D180;
  }

  else
  {
    v12 = 0;
  }

  sub_1AF250390(a1, a2, a3, a5, v12, a6);
  *a1 = &unk_1F24EB120;
  *(a1 + 448) = v44;
  *(a1 + 464) = 0;
  *(a1 + 472) = a1 + 480;
  *(a1 + 488) = 0;
  v43 = *(a1 + 432);
  v13 = sub_1AF12DDCC(v43);
  v14 = sub_1AF1D00F8(v13);
  v38 = sub_1AF13AF28(v14);
  v15 = sub_1AF13AF34(v14);
  v16 = sub_1AF13A358(v14);
  v34 = a4;
  v35 = sub_1AF13A348(v14);
  v17 = *(a1 + 468);
  if (v16 > v17)
  {
    sub_1AF2348E0(a1 + 448, v16 - v17, 1);
  }

  if (v15)
  {
    v18 = 0;
    *v19.i64 = v35;
    *&v19.i64[1] = v35;
    v39 = v19;
    v36 = v15;
    v37 = v14;
    do
    {
      v20 = *(v38 + 8 * v18);
      if (sub_1AF13AE5C(v14, v20))
      {
        v21 = sub_1AF1B75E8(v20);
        v22 = sub_1AF19ECC8(v21);
        v23 = sub_1AF19ED10(v21);
        if (v23)
        {
          v24 = v23;
          do
          {
            v25 = vmulq_f32(v39, *v22);
            *v45 = v20;
            *&v45[16] = 0;
            v47 = v25;
            v48 = 1;
            v49 = xmmword_1AFE42EB0;
            v50 = *(a1 + 440);
            v51 = 2;
            v52 = 3;
            v53 = 1;
            v54 = 1;
            v26 = sub_1AF2330E0(v44, *(&v44 + 1), &v44, &v43, v45);
            v27 = v44;
            *v45 = 0;
            *&v45[8] = 0;
            v45[10] = *(a1 + 441);
            *&v45[16] = 56;
            v46 = 0;
            if ((atomic_load_explicit(&qword_1ED73A968, memory_order_acquire) & 1) == 0)
            {
              v33 = v27;
              sub_1AFDF03C8();
              v27 = v33;
            }

            v28 = 0x39077B4FC07D180;
            if (!byte_1ED73A960)
            {
              v28 = 0;
            }

            v47.i64[0] = v28;
            v47.i64[1] = -1;
            v40 = v27;
            v29 = sub_1AF23498C(&v40, 0x48u, 8u);
            sub_1AF2603E8(v29, v43, v45, v26);
            v42 = v30;
            sub_1AF235000((a1 + 448), &v42);
            ++v22;
            --v24;
          }

          while (v24);
        }
      }

      ++v18;
      v14 = v37;
    }

    while (v18 != v36);
  }

  memset(v45, 0, sizeof(v45));
  CFXTextureDescriptorMakeDefault(v45);
  *&v45[4] = *&v35 | (*&v45[8] << 32) | (*(&v35 + 1) << 16);
  *&v45[12] = *&v45[12] & 0xFFFFF0FFFFFF0000 | 0x200000000FCLL;
  *((*(*a1 + 32))(a1) + 283) = 1;
  v40 = *v45;
  v41 = *&v45[16];
  v31 = sub_1AF2373FC(v34, "SHADOW_MAP_ATLAS", &v40);
  *(a1 + 488) = v31;
  CFX::RG::Pass::renderTo(a1, v31, 0x200000002, -1);
  return a1;
}

void sub_1AF261B6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF130770(*(a1 + 432), a2, a3, a4);
  prof_beginFlameSmallData("Shadow", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/ShadowMapAtlasPass.mm", 97, v6 | 0x300000000);
  v7 = sub_1AF12DDCC(*(a1 + 432));
  v8 = sub_1AF1D00F8(v7);
  sub_1AF13AE4C(v8, *(a1 + 488));
  v76 = sub_1AF13AF28(v8);
  v9 = sub_1AF13AF34(v8);
  v10 = *(a1 + 464);
  if (v10)
  {
    v11 = *(a1 + 472);
    v12 = 8 * v10;
    do
    {
      v13 = sub_1AF112998(*v11);
      sub_1AF23B424(v13, v14, v15, v16);
      sub_1AF23B5E0(v13);
      ++v11;
      v12 -= 8;
    }

    while (v12);
  }

  v75 = v8;
  v73 = a2;
  if (v9)
  {
    v17 = 0;
    v18 = 0;
    v74 = v9;
    do
    {
      v19 = sub_1AF1B75E8(*(v76 + 8 * v17));
      v20 = sub_1AF19ED10(v19);
      v21 = sub_1AF112998(*(*(a1 + 472) + 8 * v18));
      v77 = v17;
      v22 = sub_1AF19CBB4(v19);
      v23 = sub_1AF170BF8(v21);
      v24 = sub_1AF23B410(v21);
      v25 = v23 + 7168;
      if (v22 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23 + 7168;
      }

      v27 = v23 + 9216;
      sub_1AF13AA04(v75, v24, v26, v23 + 9216, 0, 0, 0);
      v93 = *(v23 + 9232);
      v96 = *(v23 + 9216);
      v86 = *(v23 + 9264);
      v90 = *(v23 + 9248);
      v102 = __invert_f4(*(v23 + 7168));
      v28 = 0;
      v99 = v102;
      do
      {
        v100.columns[v28] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v96, COERCE_FLOAT(*&v99.columns[v28])), v93, *v99.columns[v28].f32, 1), v90, v99.columns[v28], 2), v86, v99.columns[v28], 3);
        ++v28;
      }

      while (v28 != 4);
      v29 = v100.columns[0];
      v30 = v100.columns[1];
      v31 = v100.columns[2];
      v32 = v100.columns[3];
      *(v23 + 0x2000) = v102;
      *(v23 + 10240) = v29;
      *(v23 + 10256) = v30;
      *(v23 + 10272) = v31;
      *(v23 + 10288) = v32;
      if (v22 == 1)
      {
        if (v20)
        {
          v33 = 0;
          v82 = *(v23 + 7184);
          v84 = *(v23 + 7168);
          v78 = *(v23 + 7216);
          v80 = *(v23 + 7200);
          do
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                v34 = &xmmword_1AFE43170;
                goto LABEL_26;
              }

              if (v33 == 1)
              {
                v34 = &xmmword_1AFE43130;
                goto LABEL_26;
              }
            }

            else
            {
              switch(v33)
              {
                case 2:
                  v34 = &xmmword_1AFE430F0;
                  goto LABEL_26;
                case 3:
                  v34 = &xmmword_1AFE430B0;
                  goto LABEL_26;
                case 4:
                  v34 = &xmmword_1AFE43070;
                  goto LABEL_26;
              }
            }

            v34 = &xmmword_1AFE43030;
LABEL_26:
            v87.columns[2] = v34[2];
            v87.columns[3] = v34[3];
            v87.columns[0] = *v34;
            v87.columns[1] = v34[1];
            v35 = sub_1AF112998(*(*(a1 + 472) + 8 * v18));
            v36 = sub_1AF170BF8(v35);
            v37 = 0;
            v99 = v87;
            do
            {
              v100.columns[v37] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v84, COERCE_FLOAT(*&v99.columns[v37])), v82, *v99.columns[v37].f32, 1), v80, v99.columns[v37], 2), v78, v99.columns[v37], 3);
              ++v37;
            }

            while (v37 != 4);
            v94 = v100.columns[1];
            v97 = v100.columns[0];
            v88 = v100.columns[3];
            v91 = v100.columns[2];
            v103 = __invert_f4(v100);
            v38 = 0;
            v39 = *(v23 + 9216);
            v40 = *(v23 + 9232);
            v41 = *(v23 + 9248);
            v42 = *(v23 + 9264);
            v99 = v103;
            do
            {
              v100.columns[v38] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(*&v99.columns[v38])), v40, *v99.columns[v38].f32, 1), v41, v99.columns[v38], 2), v42, v99.columns[v38], 3);
              ++v38;
            }

            while (v38 != 4);
            v43 = v100.columns[0];
            v44 = v100.columns[1];
            v45 = v100.columns[2];
            v46 = v100.columns[3];
            *(v36 + 7168) = v97;
            *(v36 + 7184) = v94;
            *(v36 + 7200) = v91;
            *(v36 + 7216) = v88;
            *(v36 + 0x2000) = v103;
            *(v36 + 9216) = v39;
            *(v36 + 9232) = v40;
            *(v36 + 9248) = v41;
            *(v36 + 9264) = v42;
            *(v36 + 10240) = v43;
            *(v36 + 10256) = v44;
            *(v36 + 10272) = v45;
            ++v33;
            ++v18;
            *(v36 + 10288) = v46;
          }

          while (v33 != v20);
        }
      }

      else
      {
        ++v18;
        if (sub_1AF19CBB4(v19) == 2 && v20 >= 2)
        {
          v47 = v20;
          for (i = 1; i != v47; ++i)
          {
            v49 = sub_1AF112998(*(*(a1 + 472) + 8 * v18));
            v50 = sub_1AF170BF8(v49);
            v104 = *(v25 + (i << 6));
            v51 = (v27 + (i << 6));
            v83 = v51[1];
            v85 = *v51;
            v79 = v51[3];
            v81 = v51[2];
            v95 = v104.columns[1];
            v98 = v104.columns[0];
            v89 = v104.columns[3];
            v92 = v104.columns[2];
            v105 = __invert_f4(v104);
            v52 = 0;
            v99 = v105;
            do
            {
              v100.columns[v52] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, COERCE_FLOAT(*&v99.columns[v52])), v83, *v99.columns[v52].f32, 1), v81, v99.columns[v52], 2), v79, v99.columns[v52], 3);
              ++v52;
            }

            while (v52 != 4);
            v53 = v100.columns[0];
            v54 = v100.columns[1];
            v55 = v100.columns[2];
            v56 = v100.columns[3];
            *(v50 + 7168) = v98;
            *(v50 + 7184) = v95;
            *(v50 + 7200) = v92;
            *(v50 + 7216) = v89;
            *(v50 + 0x2000) = v105;
            *(v50 + 9216) = v85;
            *(v50 + 9232) = v83;
            *(v50 + 9248) = v81;
            *(v50 + 9264) = v79;
            *(v50 + 10240) = v53;
            *(v50 + 10256) = v54;
            *(v50 + 10272) = v55;
            ++v18;
            *(v50 + 10288) = v56;
          }
        }
      }

      v17 = v77 + 1;
    }

    while (v77 + 1 != v74);
  }

  v57 = *(a1 + 464);
  if (v57)
  {
    v58 = *(a1 + 472);
    v59 = 8 * v57;
    do
    {
      v60 = sub_1AF112998(*v58);
      sub_1AF23B5F4(v60, v61, v62, v63, v64, v65, v66);
      sub_1AF23B60C(v60);
      sub_1AF23B678(v60, *v73, *(v73 + 1), v67);
      ++v58;
      v59 -= 8;
    }

    while (v59);
    v70 = *(a1 + 464);
    if (v70)
    {
      v71 = *(a1 + 472);
      v72 = 8 * v70;
      do
      {
        sub_1AF260410(*v71++, v73, v68, v69);
        v72 -= 8;
      }

      while (v72);
    }
  }

  prof_endFlame();
}

void sub_1AF2620F8(unint64_t a1, const char *a2, id *a3, uint64_t a4)
{
  v6 = a1;
  v7 = sub_1AF130770(*(a1 + 432), a2, a3, a4);
  prof_beginFlameSmallData("Shadow", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/ShadowMapAtlasPass.mm", 213, v7 | 0x300000000);
  v8 = *(v6 + 464);
  if (v8)
  {
    v9 = *(v6 + 472);
    v10 = 8 * v8;
    do
    {
      v11 = *v9;
      v12 = sub_1AF260408(*v9);
      v13 = sub_1AF1B75E8(v12);
      v14 = sub_1AF19EDC4(v13);
      v15 = 2.0;
      if (v14)
      {
        v16 = CFX::RG::RenderPassArguments::encoder(a3);
        objc_msgSend_setCullMode_(v16, v17, 1, v18);
        v19 = CFX::RG::RenderPassArguments::encoder(a3);
        v15 = 0.0;
        objc_msgSend_setLockCullMode_(v19, v20, 1, v21);
      }

      v22 = sub_1AF19C608(v13);
      v23 = CFX::RG::RenderPassArguments::encoder(a3);
      *&v24 = -v15;
      v25 = v22;
      *&v26 = v25 * -10.0;
      objc_msgSend_setDepthBias_slopeScale_clamp_(v23, v27, v28, v29, v26, v24, 0.0);
      CFX::RG::RenderPassArguments::RenderPassArguments(v34, a3);
      v30 = CFX::RG::RenderPassArguments::sliceIndex(v34);
      v6 = v30 | (CFX::RG::RenderPassArguments::sliceIndex(v34) << 8) | v6 & 0xFFFFFFFFFFFF0000;
      sub_1AF260B04(v11, a2, v34, v6);
      if (v14)
      {
        v31 = CFX::RG::RenderPassArguments::encoder(a3);
        objc_msgSend_setLockCullMode_(v31, v32, 0, v33);
      }

      CFX::RG::RenderPassArguments::~RenderPassArguments(v34);
      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  prof_endFlame();
}

CFX::RG::Pass *sub_1AF2622A0(CFX::RG::RenderGraphBuilder *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v4 = sub_1AF12DDCC(a3);
  v5 = sub_1AF1D00F8(v4);
  if (!sub_1AF13AF34(v5))
  {
    return 0;
  }

  v11[0] = "Shadow map atlas";
  v11[1] = a3;
  v12 = 0;
  if ((atomic_load_explicit(&qword_1ED73A968, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF037C();
  }

  v6 = 0x39077B4FC07D180;
  if (!byte_1ED73A960)
  {
    v6 = 0;
  }

  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47));
  Pass = CFX::RG::RenderGraphBuilder::findPass(v10, v9);
  if (!Pass)
  {
    Pass = sub_1AF2623D0(v10, &v10, v11, &v9);
    CFX::RG::RenderGraphBuilder::registerPass(v10, v9, Pass);
  }

  return Pass;
}

uint64_t sub_1AF2623D0(uint64_t *a1, uint64_t **a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF26253C(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF26242C(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24EB120;
  sub_1AF2624F0(a1 + 448);

  CFX::RG::Pass::~Pass(a1);
}

void sub_1AF262484(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24EB120;
  sub_1AF2624F0(a1 + 448);
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2624F0(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 24);
    v2 = *(a1 + 8);
    if (v2)
    {
      sub_1AF234C8C(v2, &v4);
    }
  }

  return a1;
}

uint64_t sub_1AF26253C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t *a5, uint64_t *a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x1F0u, 8u);
  return sub_1AF261764(v10, *a3, a3[1], *a4, a5, *a6);
}

uint64_t sub_1AF2625A4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  v28[0] = "TemporalDenoisePass";
  v28[1] = v8;
  if ((atomic_load_explicit(&qword_1ED73A978, memory_order_acquire) & 1) == 0)
  {
    v26 = a2;
    v27 = a3;
    sub_1AFDF0400();
    a2 = v26;
    a3 = v27;
  }

  if (byte_1ED73A970)
  {
    v9 = 0xF55D899391E625ABLL;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, v28, v9, 0);
  *a1 = &unk_1F24EB178;
  v10 = *(a5 + 16);
  v11 = *(a5 + 32);
  *(a1 + 440) = *a5;
  *(a1 + 456) = v10;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = v11;
  v13 = sub_1AF262704(v12, a4);
  v14 = *(a1 + 456);
  v15 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(a1, v14, v15);
  v16 = *(a1 + 464);
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  v19 = *(a1 + 472);
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  v22 = *(*(a1 + 488) + 16);
  v24 = CFX::RG::Temporal::previousFrame(v23);
  CFX::RG::Pass::readFrom(a1, v22, v24);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 488) + 16));
  return a1;
}

uint64_t sub_1AF262704(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 472));
  v5 = *(v4 + 4);
  v6 = *(v4 + 12);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (*(a1 + 440) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(a1 + 440) ^ v7)));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v5)));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ (v5 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ (v5 >> 16))));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  result = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v6)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v6)))) >> 47)));
  *(a1 + 488) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF2628C8(uint64_t *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF262704(a1, a2);

  return sub_1AF262908(a1, a2);
}

uint64_t sub_1AF262908(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (a1[55] ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (a1[55] ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (a1[55] ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (a1[55] ^ v8)))) >> 47)));
  a1[60] = result;
  if (!result)
  {
    sub_1AF262CC8();
  }

  return result;
}

__n128 sub_1AF2629C8(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[60] + 16))
  {
    v7 = v5;
    v8 = sub_1AF12F10C(a1[54]);
    if (v8)
    {
      if (sub_1AF1BB260(v8))
      {
        v9 = sub_1AF12F10C(a1[54]);
        sub_1AF27F12C(v9, v72);
        v10 = sub_1AF13050C(a1[54], 1);
        v69 = v10[1];
        v70 = *v10;
        v67 = v10[3];
        v68 = v10[2];
        v71 = sub_1AF12FCE8(a1[54], 0);
        v11 = *(a2 + 24);
        v12 = a1[57];
        v14 = CFX::RG::Temporal::currentFrame(v13);
        Texture = CFX::GPUResourceManager::getTexture(v11, v12, v14);
        v16 = *(a2 + 24);
        v17 = a1[58];
        v18 = CFX::RG::Temporal::currentFrame(Texture);
        v19 = CFX::GPUResourceManager::getTexture(v16, v17, v18);
        v20 = *(a2 + 24);
        v21 = a1[59];
        v22 = CFX::RG::Temporal::currentFrame(v19);
        v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
        v24 = *(a2 + 24);
        v25 = *(a1[61] + 16);
        v26 = CFX::RG::Temporal::previousFrame(v23);
        v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
        v28 = *(a2 + 24);
        v29 = *(a1[61] + 16);
        v30 = CFX::RG::Temporal::currentFrame(v27);
        v31 = CFX::GPUResourceManager::getTexture(v28, v29, v30);
        objc_msgSend_setTexture_atIndex_(v7, v32, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v7, v33, v19, 1);
        objc_msgSend_setTexture_atIndex_(v7, v34, v23, 2);
        objc_msgSend_setTexture_atIndex_(v7, v35, v27, 3);
        objc_msgSend_setTexture_atIndex_(v7, v36, v31, 4);
        LODWORD(Texture) = objc_msgSend_width(v23, v37, v38, v39);
        *(a1[60] + 296) = __PAIR64__(objc_msgSend_height(v23, v40, v41, v42), Texture);
        LODWORD(v23) = objc_msgSend_width(v19, v43, v44, v45);
        *(a1[60] + 288) = __PAIR64__(objc_msgSend_height(v19, v46, v47, v48), v23);
        *(a1[60] + 304) = *(a1[60] + 288) / *(a1[60] + 296);
        v49 = sub_1AF15E62C(v72, &v71);
        v50 = *(v49 + 1);
        v51 = *(v49 + 2);
        v52 = *(v49 + 3);
        v53 = a1[60];
        v53[2] = *v49;
        v53[3] = v50;
        v53[4] = v51;
        v53[5] = v52;
        v75.columns[1] = v69;
        v75.columns[0] = v70;
        v75.columns[3] = v67;
        v75.columns[2] = v68;
        v76 = __invert_f4(v75);
        v54 = 0;
        *(a1[60] + 96) = v76;
        v55 = a1[60];
        v56 = v55[2];
        v57 = v55[3];
        v58 = v55[4];
        v59 = v55[5];
        v73[0] = v70;
        v73[1] = v69;
        v73[2] = v68;
        v73[3] = v67;
        do
        {
          v74.columns[v54] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(v73[v54])), v57, *&v73[v54], 1), v58, v73[v54], 2), v59, v73[v54], 3);
          ++v54;
        }

        while (v54 != 4);
        *(a1[60] + 160) = __invert_f4(v74);
        objc_msgSend_setBytes_length_atIndex_(v7, v60, a1[60] + 32, 288, 8);
        v61 = sub_1AF1403B4(a1[60] + 16);
        v62 = sub_1AFDE323C(v61);
        objc_msgSend_dispatch_onTexture2D_(v7, v63, v62, v31);
        v64 = a1[60];
        ++*(v64 + 308);
        v65 = *(v64 + 176);
        *(v64 + 224) = *(v64 + 160);
        *(v64 + 240) = v65;
        result = *(v64 + 192);
        v66 = *(v64 + 208);
        *(v64 + 256) = result;
        *(v64 + 272) = v66;
      }
    }
  }

  return result;
}

void sub_1AF262DA0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF262DD8(uint64_t a1)
{
  *a1 = &unk_1F24EB1D0;

  return a1;
}

void sub_1AF262E20(uint64_t a1)
{
  *a1 = &unk_1F24EB1D0;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF262E88(uint64_t a1)
{
  *a1 = &unk_1F24EB1F0;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF262ED0(uint64_t a1)
{
  *a1 = &unk_1F24EB1F0;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF262F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A988, memory_order_acquire) & 1) == 0)
  {
    v38 = a3;
    v37 = a2;
    sub_1AFDF044C();
    a2 = v37;
    a3 = v38;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A980, 0);
  *a1 = &unk_1F24EB210;
  v8 = *(a5 + 24);
  v9 = *(a5 + 40);
  v10 = *(a5 + 72);
  *(a1 + 496) = *(a5 + 56);
  *(a1 + 512) = v10;
  *(a1 + 464) = v8;
  *(a1 + 480) = v9;
  *(a1 + 536) = 0;
  v11 = sub_1AF12DDCC(*(a1 + 432));
  if (*(a1 + 517))
  {
    v12 = 10;
LABEL_9:
    v14 = (a1 + 448);
    *(a1 + 448) = 1065353216;
LABEL_10:
    v15 = sub_1AF130888(*(a1 + 432));
    v16 = v15 * 0.5 / ceilf(sub_1AF130864(*(a1 + 432)));
LABEL_11:
    *v14 = v16;
    goto LABEL_12;
  }

  v13 = v11;
  if (sub_1AF1D0738(v11))
  {
    v12 = 70;
  }

  else
  {
    v12 = 10;
  }

  if (*(a1 + 517))
  {
    goto LABEL_9;
  }

  v35 = sub_1AF1D07FC(v13);
  v14 = (a1 + 448);
  *(a1 + 448) = 1065353216;
  if (!v35)
  {
    goto LABEL_10;
  }

  if (v35 == 1)
  {
    v36 = sub_1AF130888(*(a1 + 432));
    v16 = v36 / ceilf(sub_1AF130864(*(a1 + 432)));
    goto LABEL_11;
  }

LABEL_12:
  v17 = *(a1 + 488);
  if (v17)
  {
    v18 = CFX::RG::Resource::constTextureDesc(v17);
  }

  else
  {
    v18 = CFX::RG::Resource::constTextureDesc(*(a1 + 504));
  }

  v19 = v18[1];
  v50 = *v18;
  v51 = v19;
  v20 = v18[2];
  v21 = v18[3];
  v22 = v18[5];
  v54 = v18[4];
  v55 = v22;
  v52 = v20;
  v53 = v21;
  v23 = v18[6];
  v24 = v18[7];
  v25 = v18[9];
  v58 = v18[8];
  v59 = v25;
  v56 = v23;
  v57 = v24;
  CFX::RG::TextureDescriptorReference::withSampleCount(&v50, 1, v39);
  CFX::RG::TextureDescriptorReference::applyingSizeFactor(v39, *v14, &v40);
  v56 = v46;
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v50 = v40;
  *&v51 = v41;
  *(&v51 + 1) = v12;
  LOBYTE(v52) = 1;
  v42 = v52;
  v41 = v51;
  v26 = sub_1AF233CC8(a4, "SSAO-TRACE", &v40);
  *(a1 + 536) = v26;
  v27 = CFX::RG::Pass::renderTo(a1, v26, 0x100000002, 0);
  v28 = *(a1 + 488);
  if (v28)
  {
    v29 = CFX::RG::Temporal::currentFrame(v27);
    CFX::RG::Pass::readFrom(a1, v28, v29);
  }

  v30 = *(a1 + 496);
  if (v30)
  {
    v31 = CFX::RG::Temporal::currentFrame(v27);
    CFX::RG::Pass::readFrom(a1, v30, v31);
  }

  v32 = *(a1 + 504);
  if (v32)
  {
    v33 = CFX::RG::Temporal::currentFrame(v27);
    CFX::RG::Pass::readFrom(a1, v32, v33);
  }

  return a1;
}

uint64_t sub_1AF263218(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12DDCC(*(a1 + 432));
  v5 = sub_1AF12E2AC(*(a1 + 432));
  v6 = *(a1 + 496);
  v7 = *(a1 + 504);
  v59 = v6 != 0;
  v58 = v7 != 0;
  if (*(a1 + 517))
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1AF1D0738(v4);
  }

  v57 = v8;
  v9 = CFX::RG::Pass::hash(a1);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v6 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ (v6 != 0))));
  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ v8)));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ (v7 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ (v7 != 0))));
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ *(a1 + 516));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) ^ ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 47));
  v16 = CFX::CrossFrameResourceManager::get(a2[4], v15);
  *(a1 + 528) = v16;
  if (!v16)
  {
    *(a1 + 528) = sub_1AF2634B0(a2[4], v15);
    v20 = objc_msgSend_resourceManager(v5, v17, v18, v19);
    v21 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v21, v22, &v59, 53, @"HasNormalTex");
    objc_msgSend_setConstantValue_type_withName_(v21, v23, &v57, 53, @"BentNormal");
    objc_msgSend_setConstantValue_type_withName_(v21, v24, &v58, 53, @"UseNormalDepthTex");
    objc_msgSend_setConstantValue_type_withName_(v21, v25, a1 + 516, 53, @"UseScreenSpaceRadius");
    v26 = sub_1AFDE868C(v20);
    v30 = objc_msgSend_frameworkLibrary(v26, v27, v28, v29);
    v31 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 536)) + 12);
    v32 = *(a1 + 528);
    memset(v37, 0, sizeof(v37));
    v38 = v30;
    v39 = v31;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    v45 = 1;
    memset(v50, 0, sizeof(v50));
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v51 = v21;
    v52 = 0;
    v53 = @"vfx_draw_fullscreen_triangle_vertex";
    v54 = @"vfx_ssao_trace";
    v55 = 0u;
    v56 = 0u;
    v35 = objc_msgSend_newRenderPipelineStateWithDesc_(v20, v33, v37, v34);
    sub_1AF23355C((v32 + 16), v35);
  }

  result = sub_1AF2757FC(v5, a2[4]);
  *(a1 + 456) = result;
  return result;
}

uint64_t sub_1AF2634B0(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1AF263538(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v8 = objc_msgSend_renderEncoder(v4, v5, v6, v7);
  v9 = sub_1AF12DDCC(*(a1 + 432));
  result = sub_1AF12F10C(*(a1 + 432));
  if (result)
  {
    v11 = result;
    result = sub_1AF1BB260(result);
    if (result)
    {
      v12 = result;
      sub_1AF27F12C(v11, v94);
      v93 = sub_1AF12FCE8(*(a1 + 432), 0);
      v13 = sub_1AF2338B0(*(a1 + 528) + 16);
      v17 = objc_msgSend_state(v13, v14, v15, v16);
      v20 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v18, v17, v19);
      v22 = *(a1 + 488);
      if (v22)
      {
        v23 = *(a2 + 24);
        v24 = CFX::RG::Temporal::currentFrame(v20);
        Texture = CFX::GPUResourceManager::getTexture(v23, v22, v24);
        sub_1AF1F8FCC(v8, Texture, 0, v26);
        v74 = objc_msgSend_width(Texture, v27, v28, v29);
        v20 = objc_msgSend_height(Texture, v30, v31, v32);
        v33.f32[0] = v74;
        v33.f32[1] = v20;
        v75 = v33;
      }

      else
      {
        v75 = 0;
      }

      v34 = *(a1 + 496);
      if (v34)
      {
        v35 = *(a2 + 24);
        v36 = CFX::RG::Temporal::currentFrame(v20);
        v37 = CFX::GPUResourceManager::getTexture(v35, v34, v36);
        sub_1AF1F8FCC(v8, v37, 1, v38);
        v76 = objc_msgSend_width(v37, v39, v40, v41);
        v20 = objc_msgSend_height(v37, v42, v43, v44);
        v45.f32[0] = v76;
        v45.f32[1] = v20;
        v75 = v45;
      }

      v46 = *(a1 + 504);
      if (v46)
      {
        v47 = *(a2 + 24);
        v48 = CFX::RG::Temporal::currentFrame(v20);
        v49 = CFX::GPUResourceManager::getTexture(v47, v46, v48);
        sub_1AF1F8FCC(v8, v49, 2, v50);
        v77 = objc_msgSend_width(v49, v51, v52, v53);
        v57 = objc_msgSend_height(v49, v54, v55, v56);
        v58.f32[0] = v77;
        v58.f32[1] = v57;
        v75 = v58;
      }

      sub_1AF1F8FCC(v8, *(a1 + 456), 3, v21);
      v59 = 1.0;
      if ((*(a1 + 517) & 1) == 0)
      {
        v59 = sub_1AF1D0600(v9);
      }

      v91 = v59;
      if (*(a1 + 516) == 1)
      {
        v60 = *(a1 + 512);
      }

      else
      {
        v60 = sub_1AF1D069C(v9);
      }

      v92 = v60;
      v61 = sub_1AF15E62C(v94, &v93);
      v73 = *(v61 + 1);
      v62 = *(v61 + 2);
      v63 = *(v61 + 3);
      v83 = *v61;
      v84 = v73;
      v85 = v62;
      v86 = v63;
      v64 = sub_1AF13050C(*(a1 + 432), 1);
      v95.columns[1] = v64[1];
      v95.columns[2] = v64[2];
      v95.columns[3] = v64[3];
      v79 = *v64;
      v95.columns[0] = v79;
      v80 = v95.columns[1];
      v81 = v95.columns[2];
      v82 = v95.columns[3];
      v78 = __invert_f4(v95);
      __asm { FMOV            V8.2S, #1.0 }

      v88 = vmul_n_f32(v75, *(a1 + 448));
      v89 = vdiv_f32(_D8, v88);
      v90 = sub_1AF15D6DC(v12);
      v70 = vdiv_f32(_D8, __PAIR64__(DWORD1(v73), v83));
      *&v71 = vmul_f32(v70, COERCE_FLOAT32X2_T(-2.00000048));
      *(&v71 + 2) = -v70.f32[0];
      HIDWORD(v71) = v70.i32[1];
      v87 = v71;
      sub_1AF1F905C(v8, &v78, 0xF0uLL, 8);
      return sub_1AF2016F4(v8, v72);
    }
  }

  return result;
}

uint64_t sub_1AF26380C(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v10 = *a5;
  *&v93[0] = "SSAOSpatialPass";
  *(&v93[0] + 1) = v10;
  if ((atomic_load_explicit(&qword_1ED73A998, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF04A8();
  }

  sub_1AF239F88(a1, a2, a3, v93, qword_1ED73A990, 0);
  *a1 = &unk_1F24EB268;
  *(a1 + 440) = 0;
  v11 = *a5;
  v12 = *(a5 + 1);
  v13 = *(a5 + 3);
  *(a1 + 488) = *(a5 + 2);
  *(a1 + 504) = v13;
  *(a1 + 456) = v11;
  *(a1 + 472) = v12;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  v14 = sub_1AF12DDCC(*(a1 + 432));
  if (*(a1 + 509))
  {
    v15 = MTLPixelFormatR8Unorm;
LABEL_9:
    *(a1 + 440) = 1065353216;
LABEL_10:
    v17 = sub_1AF130888(*(a1 + 432));
    v18 = v17 * 0.5 / sub_1AF130864(*(a1 + 432));
LABEL_11:
    *(a1 + 440) = v18;
    goto LABEL_12;
  }

  v16 = v14;
  if (sub_1AF1D0738(v14))
  {
    v15 = MTLPixelFormatRGBA8Unorm;
  }

  else
  {
    v15 = MTLPixelFormatR8Unorm;
  }

  if (*(a1 + 509))
  {
    goto LABEL_9;
  }

  v60 = sub_1AF1D07FC(v16);
  *(a1 + 440) = 1065353216;
  if (!v60)
  {
    goto LABEL_10;
  }

  if (v60 == 1)
  {
    v61 = sub_1AF130888(*(a1 + 432));
    v18 = v61 / sub_1AF130864(*(a1 + 432));
    goto LABEL_11;
  }

LABEL_12:
  v19 = sub_1AF12E2AC(*(a1 + 432));
  *(a1 + 568) = v19;
  *(a1 + 576) = objc_msgSend_resourceManager(v19, v20, v21, v22);
  if (*(a1 + 440) == 1.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = *(a1 + 509);
  }

  v27 = objc_msgSend_sampleCount(*(a1 + 568), v23, v24, v25);
  if (v27 < 2)
  {
    v28 = 1;
  }

  else
  {
    v28 = *(a1 + 509);
  }

  v29 = a5[3];
  if (v29)
  {
    v30 = CFX::RG::Temporal::currentFrame(v27);
    CFX::RG::Pass::readFrom(a1, v29, v30);
  }

  v31 = a5[4];
  if (v31)
  {
    v32 = CFX::RG::Temporal::currentFrame(v27);
    CFX::RG::Pass::readFrom(a1, v31, v32);
  }

  v33 = a5[5];
  if (v33)
  {
    v34 = CFX::RG::Temporal::currentFrame(v27);
    CFX::RG::Pass::readFrom(a1, v33, v34);
  }

  v35 = *(a1 + 480);
  if (v35)
  {
    v36 = CFX::RG::Resource::constTextureDesc(v35);
  }

  else
  {
    v36 = CFX::RG::Resource::constTextureDesc(*(a1 + 496));
  }

  v37 = v36[1];
  v93[0] = *v36;
  v93[1] = v37;
  v38 = v36[2];
  v39 = v36[3];
  v40 = v36[5];
  v93[4] = v36[4];
  v93[5] = v40;
  v93[2] = v38;
  v93[3] = v39;
  v41 = v36[6];
  v42 = v36[7];
  v43 = v36[9];
  v93[8] = v36[8];
  v93[9] = v43;
  v93[6] = v41;
  v93[7] = v42;
  CFX::RG::TextureDescriptorReference::withSampleCount(v93, 1, &v73);
  CFX::RG::TextureDescriptorReference::applyingSizeFactor(&v73, *(a1 + 440), &v83);
  *(&v84 + 1) = v15;
  LOBYTE(v85) = 1;
  CFX::RG::TextureDescriptorReference::withSampleCount(v93, 1, v62);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v62, v15, &v63);
  CFX::RG::TextureDescriptorReference::withUsage(&v63, 3, &v73);
  if (*(a1 + 509) == 1)
  {
    CFX::RG::TextureDescriptorReference::applyingSizeFactor(&v73, *(a1 + 440), &v63);
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v82 = v72;
    v75 = v65;
    v76 = v66;
    v77 = v67;
    v78 = v68;
    v73 = v63;
    v74 = v64;
  }

  v44 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v69 = v89;
  v70 = v90;
  v71 = v91;
  v72 = v92;
  v65 = v85;
  v66 = v86;
  v67 = v87;
  v68 = v88;
  v63 = v83;
  v64 = v84;
  *(a1 + 536) = sub_1AF233CC8(v44, "SSAO_SPATIAL_OUTPUT_TMP", &v63);
  v45 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v69 = v89;
  v70 = v90;
  v71 = v91;
  v72 = v92;
  v65 = v85;
  v66 = v86;
  v67 = v87;
  v68 = v88;
  v63 = v83;
  v64 = v84;
  *(a1 + 544) = sub_1AF233CC8(v45, "SSAO_SPATIAL_OUTPUT_TMP2", &v63);
  v46 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v69 = v79;
  v70 = v80;
  v71 = v81;
  v72 = v82;
  v65 = v75;
  v66 = v76;
  v67 = v77;
  v68 = v78;
  v63 = v73;
  v64 = v74;
  v47 = sub_1AF233CC8(v46, "SSAO_SPATIAL_OUTPUT", &v63);
  *(a1 + 560) = v47;
  if (((v28 | v26) & 1) == 0)
  {
    v48 = CFX::RG::RenderGraphContext::currentBuilder(a4);
    v69 = v79;
    v70 = v80;
    v71 = v81;
    v72 = v82;
    v65 = v75;
    v66 = v76;
    v67 = v77;
    v68 = v78;
    v63 = v73;
    v64 = v74;
    v49 = sub_1AF233CC8(v48, "SSAO_SPATIAL_TMP_FULLRES", &v63);
    *(a1 + 552) = v49;
    v50 = CFX::RG::Temporal::currentFrame(v49);
    CFX::RG::Pass::readFrom(a1, v49, v50);
    v47 = CFX::RG::Pass::writeTo(a1, *(a1 + 552));
  }

  v51 = *(a1 + 480);
  v52 = CFX::RG::Temporal::currentFrame(v47);
  CFX::RG::Pass::readFrom(a1, v51, v52);
  v53 = *(a1 + 536);
  v55 = CFX::RG::Temporal::currentFrame(v54);
  CFX::RG::Pass::readFrom(a1, v53, v55);
  v56 = *(a1 + 544);
  v58 = CFX::RG::Temporal::currentFrame(v57);
  CFX::RG::Pass::readFrom(a1, v56, v58);
  CFX::RG::Pass::writeTo(a1, *(a1 + 544));
  CFX::RG::Pass::writeTo(a1, *(a1 + 536));
  CFX::RG::Pass::writeTo(a1, *(a1 + 560));
  return a1;
}

uint64_t sub_1AF263CF8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 472);
  if (result)
  {
    v5 = sub_1AF23B41C(result);
    v6 = sub_1AF130F84(v5);
    v7 = *(a2 + 24);
    v8 = *(a1 + 560);

    return CFX::GPUResourceManager::registerNamedFrameResource(v7, v8, v6);
  }

  return result;
}

uint64_t sub_1AF263D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12DDCC(*(a1 + 432));
  if (*(a1 + 509))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1AF1D0738(v4);
  }

  v14 = v5;
  v13 = *(a1 + 496) != 0;
  v6 = CFX::RG::Pass::hash(a1);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v5)));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))) ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))) ^ v13)));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ *(a1 + 508));
  v11 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47)));
  *(a1 + 520) = v11;
  if (!v11)
  {
    operator new();
  }

  result = sub_1AF2757FC(*(a1 + 568), *(a2 + 32));
  *(a1 + 448) = result;
  return result;
}

uint64_t sub_1AF263F78(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = sub_1AF12DDCC(*(a1 + 432));
  result = sub_1AF12F10C(*(a1 + 432));
  if (result)
  {
    v8 = result;
    result = sub_1AF1BB260(result);
    if (result)
    {
      v12 = result;
      v129 = v6;
      if (*(a1 + 440) == 1.0)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(a1 + 509) ^ 1;
      }

      if (objc_msgSend_sampleCount(*(a1 + 568), v9, v10, v11) < 2)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(a1 + 509) ^ 1;
      }

      sub_1AF27F12C(v8, v146);
      v145 = sub_1AF12FCE8(*(a1 + 432), 0);
      v15 = *(a2 + 24);
      v16 = *(a1 + 528);
      v18 = CFX::RG::Temporal::currentFrame(v17);
      Texture = CFX::GPUResourceManager::getTexture(v15, v16, v18);
      v20 = *(a2 + 24);
      v21 = *(a1 + 536);
      v22 = CFX::RG::Temporal::currentFrame(Texture);
      v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
      v24 = *(a2 + 24);
      v25 = *(a1 + 544);
      v26 = CFX::RG::Temporal::currentFrame(v23);
      v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
      v28 = v27;
      v131 = v14;
      v132 = v13;
      if (v14 & v13)
      {
        v29 = *(a2 + 24);
        v30 = *(a1 + 552);
        v31 = CFX::RG::Temporal::currentFrame(v27);
        v27 = CFX::GPUResourceManager::getTexture(v29, v30, v31);
        v130 = v27;
      }

      else
      {
        v130 = 0;
      }

      v32 = *(a2 + 24);
      v33 = *(a1 + 560);
      v34 = CFX::RG::Temporal::currentFrame(v27);
      v35 = CFX::GPUResourceManager::getTexture(v32, v33, v34);
      v37 = v35;
      v38 = *(a1 + 480);
      if (v38)
      {
        v39 = *(a2 + 24);
        v40 = CFX::RG::Temporal::currentFrame(v35);
        v41 = CFX::GPUResourceManager::getTexture(v39, v38, v40);
        objc_msgSend_setTexture_atIndex_(v5, v42, v41, 1);
        objc_msgSend_width(v41, v43, v44, v45);
        v127 = v41;
        v35 = objc_msgSend_height(v41, v46, v47, v48);
      }

      else
      {
        v127 = 0;
      }

      v49 = *(a1 + 488);
      if (v49)
      {
        v50 = *(a2 + 24);
        v51 = CFX::RG::Temporal::currentFrame(v35);
        v52 = CFX::GPUResourceManager::getTexture(v50, v49, v51);
        objc_msgSend_setTexture_atIndex_(v5, v53, v52, 2);
        objc_msgSend_width(v52, v54, v55, v56);
        v35 = objc_msgSend_height(v52, v57, v58, v59);
      }

      v60 = *(a1 + 496);
      if (v60)
      {
        v61 = *(a2 + 24);
        v62 = CFX::RG::Temporal::currentFrame(v35);
        v63 = CFX::GPUResourceManager::getTexture(v61, v60, v62);
        objc_msgSend_setTexture_atIndex_(v5, v64, v63, 3);
        objc_msgSend_width(v63, v65, v66, v67);
        objc_msgSend_height(v63, v68, v69, v70);
      }

      objc_msgSend_setTexture_atIndex_(v5, v36, *(a1 + 448), 5);
      memset(&v134[1], 0, sizeof(simd_float4x4));
      v71 = 1.0;
      if ((*(a1 + 509) & 1) == 0)
      {
        v71 = sub_1AF1D0600(v129);
      }

      v142 = v71;
      if (*(a1 + 508) == 1)
      {
        v72 = *(a1 + 504);
      }

      else
      {
        v72 = sub_1AF1D069C(v129);
      }

      v143 = v72;
      v73 = sub_1AF15E62C(v146, &v145);
      v74 = *(v73 + 1);
      v75 = *(v73 + 2);
      v76 = *(v73 + 3);
      v135 = *v73;
      v136 = v74;
      v137 = v75;
      v138 = v76;
      v147 = *sub_1AF13050C(*(a1 + 432), 1);
      v134[0] = __invert_f4(v147);
      v128 = objc_msgSend_width(Texture, v77, v78, v79);
      v83 = objc_msgSend_height(Texture, v80, v81, v82);
      v84.f32[0] = v128;
      v84.f32[1] = v83;
      __asm { FMOV            V0.2S, #1.0 }

      v139 = v84;
      v140 = vdiv_f32(_D0, v84);
      v141 = sub_1AF15D6DC(v12);
      v144 = (1.0 / *(a1 + 440));
      objc_msgSend_setBytes_length_atIndex_(v5, v90, v134, 240, 8);
      v133 = 1;
      objc_msgSend_setTexture_atIndex_(v5, v91, Texture, 0);
      v92 = 4;
      objc_msgSend_setTexture_atIndex_(v5, v93, v23, 4);
      objc_msgSend_setBytes_length_atIndex_(v5, v94, &v133, 4, 0);
      v95 = sub_1AF1403B4(*(a1 + 520) + 16);
      v96 = sub_1AFDE323C(v95);
      objc_msgSend_dispatch_onTexture2D_(v5, v97, v96, v23);
      v133 = 2;
      objc_msgSend_setTexture_atIndex_(v5, v98, v23, 0);
      objc_msgSend_setTexture_atIndex_(v5, v99, v28, 4);
      objc_msgSend_setBytes_length_atIndex_(v5, v100, &v133, 4, 0);
      v101 = sub_1AF1403B4(*(a1 + 520) + 16);
      v102 = sub_1AFDE323C(v101);
      objc_msgSend_dispatch_onTexture2D_(v5, v103, v102, v23);
      v104 = sub_1AF1D07FC(v129);
      v106 = v28;
      if (v104 == 2)
      {
        v92 = 4;
        v106 = v28;
        if ((*(a1 + 509) & 1) == 0)
        {
          v133 = 4;
          objc_msgSend_setTexture_atIndex_(v5, v105, v28, 0);
          objc_msgSend_setTexture_atIndex_(v5, v107, v23, 4);
          objc_msgSend_setBytes_length_atIndex_(v5, v108, &v133, 4, 0);
          v109 = sub_1AF1403B4(*(a1 + 520) + 16);
          v110 = sub_1AFDE323C(v109);
          objc_msgSend_dispatch_onTexture2D_(v5, v111, v110, v23);
          v92 = 8;
          v106 = v23;
        }
      }

      v133 = v92;
      objc_msgSend_setTexture_atIndex_(v5, v105, v106, 0);
      if ((v132 | v131))
      {
        objc_msgSend_setTexture_atIndex_(v5, v112, v28, 4);
      }

      else
      {
        objc_msgSend_setTexture_atIndex_(v5, v112, v37, 4);
      }

      objc_msgSend_setBytes_length_atIndex_(v5, v113, &v133, 4, 0);
      v114 = sub_1AF1403B4(*(a1 + 520) + 16);
      v115 = sub_1AFDE323C(v114);
      result = objc_msgSend_dispatch_onTexture2D_(v5, v116, v115, v23);
      if (v132)
      {
        objc_msgSend_setTexture_atIndex_(v5, v117, v28, 0);
        if (v131)
        {
          objc_msgSend_setTexture_atIndex_(v5, v118, v130, 4);
        }

        else
        {
          objc_msgSend_setTexture_atIndex_(v5, v118, v37, 4);
        }

        v119 = sub_1AF1403B4(*(a1 + 520) + 24);
        v120 = sub_1AFDE323C(v119);
        result = objc_msgSend_dispatch_onTexture2D_(v5, v121, v120, v37);
      }

      if (v131)
      {
        if (v132)
        {
          objc_msgSend_setTexture_atIndex_(v5, v117, v130, 0);
        }

        else
        {
          objc_msgSend_setTexture_atIndex_(v5, v117, v28, 0);
        }

        objc_msgSend_setTexture_atIndex_(v5, v122, v37, 1);
        objc_msgSend_setTexture_atIndex_(v5, v123, v127, 2);
        v124 = sub_1AF1403B4(*(a1 + 520) + 32);
        v125 = sub_1AFDE323C(v124);
        return objc_msgSend_dispatch_onTexture2D_(v5, v126, v125, v37);
      }
    }
  }

  return result;
}

uint64_t *sub_1AF264540(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v6 = *(a3 + 1);
  v17 = *a3;
  v18 = v6;
  v7 = *(a3 + 3);
  v19 = *(a3 + 2);
  v20 = v7;
  v8 = *a3;
  v15[0] = "SSAOTracePass";
  v15[1] = v8;
  v16 = 0;
  v9 = sub_1AF2645F0(a1, a1, v15);
  v10 = sub_1AF264648(a1, a2, a3);
  v11 = CFX::RG::Pass::dependsOn(v10, v9);
  v12 = *(v9 + 67);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(v10, v12, v13);
  v10[66] = v12;
  a3[7] = v10[70];
  return v10;
}

uint64_t sub_1AF2645F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF264938(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF264648(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF264998(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF2646A4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2646E0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

unint64_t sub_1AF264718(unint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *result) ^ ((0xC6A4A7935BD1E995 * *result) >> 47))) ^ (0xC6A4A7935BD1E995 * a2));
    v3 = a2 & 7;
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        v2 ^= *(result + 14) << 48;
      }

      v2 ^= *(result + 13) << 40;
    }

    else if (v3 == 4)
    {
      goto LABEL_9;
    }

    v2 ^= *(result + 12) << 32;
LABEL_9:
    v4 = 0xC6A4A7935BD1E995 * (v2 ^ (*(result + 11) << 24) ^ (*(result + 10) << 16) ^ (*(result + 9) << 8) ^ *(result + 8));
    return (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47);
  }

  return result;
}

uint64_t sub_1AF2647B8(uint64_t a1)
{
  *a1 = &unk_1F24EB2C0;

  return a1;
}

void sub_1AF264800(uint64_t a1)
{
  *a1 = &unk_1F24EB2C0;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF264868(uint64_t a1)
{
  *a1 = &unk_1F24EB2E0;

  return a1;
}

void sub_1AF2648C0(uint64_t a1)
{
  *a1 = &unk_1F24EB2E0;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF264938(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x220u, 8u);
  return sub_1AF262F38(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF264998(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x248u, 8u);
  return sub_1AF26380C(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2649F8(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  *&v25 = a2;
  *(&v25 + 1) = a3;
  if ((atomic_load_explicit(&qword_1ED73A9B0, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF0504();
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A9A8, 0);
  *a1 = &unk_1F24EB300;
  v10 = *(a5 + 40);
  *(a1 + 464) = *(a5 + 24);
  *(a1 + 480) = v10;
  v11 = *(a5 + 56);
  v12 = *(a5 + 72);
  v13 = *(a5 + 104);
  *(a1 + 528) = *(a5 + 88);
  *(a1 + 544) = v13;
  *(a1 + 496) = v11;
  *(a1 + 512) = v12;
  v14 = *(a5 + 120);
  v15 = *(a5 + 136);
  v16 = *(a5 + 168);
  *(a1 + 592) = *(a5 + 152);
  *(a1 + 608) = v16;
  *(a1 + 560) = v14;
  *(a1 + 576) = v15;
  *(a1 + 624) = 0;
  v17 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  *&v26 = *(a1 + 432);
  LOBYTE(v30) = 0;
  v32 = 0;
  v28 = 0;
  v27 = 0uLL;
  v33 = xmmword_1AFE42EB0;
  v34 = *(a1 + 440);
  v35 = 2;
  v36 = 32;
  v37 = 1;
  v38 = 1;
  *(a1 + 448) = sub_1AF2330E0(v25, *(&v25 + 1), &v25, &v26, &v27);
  v18 = v25;
  v19 = *(a1 + 432);
  *&v27 = 0;
  WORD4(v27) = 0;
  BYTE10(v27) = 0;
  v28 = 56;
  v29 = 0;
  if ((atomic_load_explicit(&qword_1ED73A9B0, memory_order_acquire) & 1) == 0)
  {
    v24 = v18;
    sub_1AFDF055C();
    v18 = v24;
  }

  v30 = qword_1ED73A9A8;
  v31 = -1;
  v26 = v18;
  v20 = sub_1AF23498C(&v26, 0x48u, 8u);
  sub_1AF2603E8(v20, v19, &v27, *(a1 + 448));
  *(a1 + 456) = v21;
  CFX::RG::TextureDescriptorReference::withSampleCount((a5 + 24), 1, &v27);
  v22 = sub_1AF233CC8(v17, "BACKFACE_DEPTH", &v27);
  *(a1 + 624) = v22;
  CFX::RG::Pass::renderTo(a1, v22, 0x200000002, -1);
  return a1;
}

void sub_1AF264C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF23B424(*(a1 + 448), a2, a3, a4);
  sub_1AF23B5E0(*(a1 + 448));
  sub_1AF23B5F4(*(a1 + 448), v6, v7, v8, v9, v10, v11);
  v13 = *(a1 + 448);
  v14 = *a2;
  v15 = *(a2 + 8);

  sub_1AF23B678(v13, v14, v15, v12);
}

void sub_1AF264CA8(uint64_t a1, const char *a2, CFX::RG::RenderPassArguments *a3)
{
  v6 = sub_1AF12E2AC(*(a1 + 432));
  v10 = objc_msgSend_renderEncoder(v6, v7, v8, v9);
  objc_msgSend_setCullMode_(*(v10 + 16), v11, 1, v12);
  sub_1AF264D20(v10, 1, v13, v14);
  v15 = *(a1 + 456);

  sub_1AF260B04(v15, a2, a3, 0);
}

uint64_t sub_1AF264D20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 24))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE6844(v6, a2, v7, a4, v8, v9, v10, v11);
    }
  }

  return objc_msgSend_setLockCullMode_(*(a1 + 24), a2, a2, a4);
}

uint64_t sub_1AF264D80(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v8 = a5[20];
  *&v31[0] = "SSRDownsamplePass";
  *(&v31[0] + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A9C0, memory_order_acquire) & 1) == 0)
  {
    v18 = a2;
    v19 = a3;
    sub_1AFDF05A0();
    a2 = v18;
    a3 = v19;
  }

  sub_1AF239F88(a1, a2, a3, v31, qword_1ED73A9B8, 0);
  *a1 = &unk_1F24EB358;
  memcpy((a1 + 440), a5, 0x108uLL);
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat((a1 + 440), MTLPixelFormatRGBA16Float, &v21);
  CFX::RG::TextureDescriptorReference::withSizeFactor(&v21, 1.0 / *(a1 + 680), v31);
  v27 = v31[6];
  v28 = v31[7];
  v29 = v31[8];
  v30 = v31[9];
  v23 = v31[2];
  v24 = v31[3];
  v25 = v31[4];
  v26 = v31[5];
  v21 = v31[0];
  v22 = v31[1];
  *(a1 + 720) = sub_1AF233CC8(v9, "COLOR_DOWNSAMPLE", &v21);
  v10 = CFX::RG::Resource::constTextureDesc(*(a1 + 632));
  CFX::RG::TextureDescriptorReference::withPixelFormat(v10, MTLPixelFormatRG32Float, v20);
  CFX::RG::TextureDescriptorReference::withSizeFactor(v20, 1.0 / *(a1 + 680), &v21);
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
  v11 = sub_1AF233CC8(v9, "DEPTH_DOWNSAMPLE", v20);
  *(a1 + 728) = v11;
  v12 = *(a1 + 616);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  v14 = *(a1 + 632);
  v16 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v14, v16);
  CFX::RG::Pass::writeTo(a1, *(a1 + 720));
  CFX::RG::Pass::writeTo(a1, *(a1 + 728));
  return a1;
}

void sub_1AF264F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12DDCC(*(a1 + 432));
  v26 = sub_1AF1D09F8(v4);
  v5 = sub_1AF1D005C(v4, 0) != 0;
  v25 = v5;
  v6 = CFX::RG::Pass::hash(a1);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 680));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v26)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v26)));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v5)))) >> 47));
  v12 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v11);
  *(a1 + 704) = v12;
  if (!v12)
  {
    *(a1 + 704) = sub_1AF265118(*(a2 + 32), v11);
    v13 = sub_1AF12E2AC(*(a1 + 432));
    v17 = objc_msgSend_resourceManager(v13, v14, v15, v16);
    v18 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v18, v19, a1 + 680, 29, @"SSRDownSample");
    objc_msgSend_setConstantValue_type_withName_(v18, v20, &v26, 29, @"SSRThicknessMode");
    objc_msgSend_setConstantValue_type_withName_(v18, v21, &v25, 53, @"SSRHasIBL");
    v22 = *(a1 + 704);
    v24 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v17, v23, @"vfx_ssr_downsample_depth", v18);
    sub_1AF23355C((v22 + 16), v24);
  }
}

uint64_t sub_1AF265118(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2651A0(uint64_t *a1, uint64_t a2, id *this)
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = sub_1AF12E2AC(a1[54]);
  v7 = *(a2 + 24);
  v8 = a1[82];
  v9 = CFX::RG::Temporal::currentFrame(v6);
  Texture = CFX::GPUResourceManager::getTexture(v7, v8, v9);
  v10 = *(a2 + 24);
  v11 = a1[83];
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v76 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v16 = objc_msgSend_resourceManager(v6, v13, v14, v15);
  v19 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(v16, v17, v6, v18);
  v20 = *(a2 + 24);
  v21 = a1[77];
  v22 = CFX::RG::Temporal::currentFrame(v19);
  v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
  v24 = *(a2 + 24);
  v25 = a1[79];
  v26 = CFX::RG::Temporal::currentFrame(v23);
  v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
  v28 = *(a2 + 24);
  v29 = a1[90];
  v30 = CFX::RG::Temporal::currentFrame(v27);
  v31 = CFX::GPUResourceManager::getTexture(v28, v29, v30);
  v32 = *(a2 + 24);
  v33 = a1[91];
  v34 = CFX::RG::Temporal::currentFrame(v31);
  v35 = CFX::GPUResourceManager::getTexture(v32, v33, v34);
  v37 = objc_msgSend_setTexture_atIndex_(v5, v36, v23, 0);
  v39 = a1[89];
  if (v39)
  {
    v40 = *(a2 + 24);
    v41 = CFX::RG::Temporal::currentFrame(v37);
    v42 = CFX::GPUResourceManager::getTexture(v40, v39, v41);
    objc_msgSend_setTexture_atIndex_(v5, v43, v42, 2);
  }

  objc_msgSend_setTexture_atIndex_(v5, v38, v27, 1);
  v44 = v31;
  objc_msgSend_setTexture_atIndex_(v5, v45, v31, 3);
  objc_msgSend_setTexture_atIndex_(v5, v46, v35, 4);
  objc_msgSend_setTexture_atIndex_(v5, v47, Texture, 5);
  objc_msgSend_setTexture_atIndex_(v5, v48, v76, 6);
  objc_msgSend_setTexture_atIndex_(v5, v49, v19, 8);
  v50 = sub_1AF12DDCC(a1[54]);
  v53 = sub_1AF1D005C(v50, 0);
  if (v53)
  {
    v54 = objc_msgSend_textureForMaterialProperty_(v6, v51, v53, v52);
    if (v54)
    {
      objc_msgSend_setTexture_atIndex_(v5, v55, v54, 7);
    }
  }

  v56 = a1[76];
  if (!v56)
  {
    v56 = sub_1AF12F10C(a1[54]);
  }

  sub_1AF27F12C(v56, v80);
  memset(v85, 0, sizeof(v85));
  v57.f32[0] = v82 * v81;
  __asm { FMOV            V3.2S, #1.0 }

  _D3.f32[0] = v82 - v81;
  v57.f32[1] = v82;
  v87 = vdiv_f32(_D3, v57);
  v88 = sub_1AF1D0A94(v50);
  if (v53)
  {
    v63 = sub_1AF166598(v53);
  }

  else
  {
    v63 = 0.0;
  }

  v89 = v63;
  v91 = *sub_1AF13050C(a1[54], 1);
  v92 = __invert_f4(v91);
  v77 = v92.columns[1];
  v79 = v92.columns[0];
  v86 = v92;
  v74 = v92.columns[3];
  v75 = v92.columns[2];
  if (sub_1AF167434(v53))
  {
    v65 = sub_1AF167220(v53);
    v66 = 0;
    v67 = v65[1];
    v68 = v65[2];
    v69 = v65[3];
    v83[0] = *v65;
    v83[1] = v67;
    v83[2] = v68;
    v83[3] = v69;
    do
    {
      v84.columns[v66] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, COERCE_FLOAT(v83[v66])), v77, *&v83[v66], 1), v75, v83[v66], 2), v74, v83[v66], 3);
      ++v66;
    }

    while (v66 != 4);
    v86 = v84;
  }

  objc_msgSend_setBytes_length_atIndex_(v5, v64, v85, 608, 0, *&v74, *&v75);
  v70 = sub_1AF1403B4(a1[88] + 16);
  v71 = sub_1AFDE323C(v70);
  return objc_msgSend_dispatch_onTexture2D_(v5, v72, v71, v44);
}

void *sub_1AF265544(void *a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, void *a5)
{
  v8 = a5[20];
  v25[0] = "SSRRaytracePass";
  v25[1] = v8;
  if ((atomic_load_explicit(&qword_1ED73A9C8, memory_order_acquire) & 1) == 0)
  {
    v23 = a2;
    v24 = a3;
    sub_1AFDF05F8();
    a2 = v23;
    a3 = v24;
  }

  if (byte_1ED73A9A0)
  {
    v9 = 0x1F324A86E1EC8E1BLL;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, v25, v9, 0);
  *a1 = &unk_1F24EB3B0;
  memcpy(a1 + 56, a5, 0x108uLL);
  a1[89] = 0;
  LODWORD(v25[0]) = 0;
  v10 = sub_1AF2656B0(a1, a4);
  a5[32] = a1[89] + 48;
  v11 = a1[81];
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  v13 = a1[82];
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  v16 = a1[83];
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  v19 = a1[79];
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  sub_1AF2680B0(v25);
  return a1;
}

void sub_1AF265694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AF2680B0(va);
  CFX::RG::Pass::~Pass(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF2656B0(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v45 = objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = sub_1AF12DDCC(*(a1 + 432));
  v9 = sub_1AF1D095C(v8);
  v50 = v9;
  v10 = sub_1AF1D09F8(v8);
  v11 = *(a1 + 688);
  v48 = *(a1 + 688);
  v49 = v10;
  if (v8)
  {
    v12 = sub_1AF1D02FC(v8) > 0.0;
  }

  else
  {
    v12 = 0;
  }

  v47 = v12;
  v46 = sub_1AF1D005C(v8, 0) != 0;
  CFX::RG::Pass::hash(a1);
  v13 = CFX::RG::Pass::hash(a1);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v8)))) >> 47));
  v15 = CFX::CrossFrameResourceManager::get(a2[4], v14);
  *(a1 + 712) = v15;
  if (!v15)
  {
    operator new();
  }

  v16 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v11)));
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ v12)));
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47))) ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47))) ^ v9)));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ v10)));
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
  if (*(v15 + 16) != v20)
  {
    *(v15 + 16) = v20;
    v21 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v21, v22, &v48, 29, @"SSRDownSample");
    objc_msgSend_setConstantValue_type_withName_(v21, v23, &v50, 29, @"SSRQuality");
    objc_msgSend_setConstantValue_type_withName_(v21, v24, &v49, 29, @"SSRThicknessMode");
    objc_msgSend_setConstantValue_type_withName_(v21, v25, &v47, 53, @"SSREnableFog");
    objc_msgSend_setConstantValue_type_withName_(v21, v26, &v46, 53, @"SSRHasIBL");
    v27 = *(a1 + 712);
    v29 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v45, v28, @"vfx_ssr_raytrace", v21);
    sub_1AF23355C((v27 + 24), v29);

    *(*(a1 + 712) + 640) = 0;
  }

  v30 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 624)) + 4);
  v31 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v30 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v30 ^ v14)));
  v32 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ (v30 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ (v30 >> 16))));
  v33 = 0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47));
  v34 = v48;
  v35 = 0x9DDFEA08EB382D69 * (v33 ^ ((0x9DDFEA08EB382D69 * (v33 ^ v48)) >> 47) ^ (0x9DDFEA08EB382D69 * (v33 ^ v48)));
  v36 = 0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47));
  v37 = *(a1 + 712);
  if (*(v37 + 32) != v36)
  {
    *(v37 + 32) = v36;
    v38 = RGBufferDescriptorMake(((v30 >> 16) / v34 * (v30 / v34)) << 6, 32);
    v40 = v39;
    v41 = *(a1 + 712);
    v42 = sub_1AF239FE4(a1);
    Buffer = CFXGPUDeviceCreateBuffer(v42, v38, v40);
    sub_1AF23355C((v41 + 40), Buffer);
  }

  result = sub_1AF2757FC(v4, a2[4]);
  *(a1 + 440) = result;
  return result;
}

void *sub_1AF265A74(uint64_t *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[89] + 24))
  {
    v6 = result;
    v7 = sub_1AF12DDCC(a1[54]);
    v8 = a1[77];
    if (v8 || (result = sub_1AF12F10C(a1[54]), (v8 = result) != 0))
    {
      result = sub_1AF1BB260(v8);
      if (result)
      {
        sub_1AF27F12C(v8, v109);
        v108 = sub_1AF12FCE8(a1[54], 0);
        v9 = *(a2 + 24);
        v10 = a1[81];
        v12 = CFX::RG::Temporal::currentFrame(v11);
        Texture = CFX::GPUResourceManager::getTexture(v9, v10, v12);
        v14 = *(a2 + 24);
        v15 = a1[80];
        v16 = CFX::RG::Temporal::currentFrame(Texture);
        v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
        v18 = *(a2 + 24);
        v19 = a1[82];
        v20 = CFX::RG::Temporal::currentFrame(v17);
        v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
        v22 = *(a2 + 24);
        v23 = a1[83];
        v24 = CFX::RG::Temporal::currentFrame(v21);
        v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
        v26 = *(a2 + 24);
        v27 = a1[79];
        v28 = CFX::RG::Temporal::currentFrame(v25);
        v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
        objc_msgSend_setTexture_atIndex_(v6, v30, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v6, v31, v25, 1);
        objc_msgSend_setTexture_atIndex_(v6, v32, v21, 2);
        objc_msgSend_setTexture_atIndex_(v6, v33, a1[55], 3);
        objc_msgSend_setTexture_atIndex_(v6, v34, v17, 4);
        objc_msgSend_setTexture_atIndex_(v6, v35, v29, 6);
        v36 = sub_1AF12E2AC(a1[54]);
        v37 = sub_1AF12DDCC(a1[54]);
        v40 = sub_1AF1D005C(v37, 0);
        if (v40)
        {
          v41 = objc_msgSend_radianceTextureForMaterialProperty_(v36, v38, v40, v39);
          if (v41)
          {
            objc_msgSend_setTexture_atIndex_(v6, v42, v41, 5);
          }
        }

        v43 = sub_1AF15E62C(v109, &v108);
        v44 = *(v43 + 1);
        v45 = *(v43 + 2);
        v46 = *(v43 + 3);
        v47 = a1[89];
        v47[3] = *v43;
        v47[4] = v44;
        v47[5] = v45;
        v47[6] = v46;
        *(a1[89] + 112) = __invert_f4(*(a1[89] + 48));
        v119 = *sub_1AF13050C(a1[54], 1);
        *(a1[89] + 176) = __invert_f4(v119);
        v48 = a1[89];
        v106 = v48[3];
        v107 = v48[4];
        v104 = v48[6];
        v105 = v48[5];
        v49 = sub_1AF13050C(a1[54], 1);
        v50 = 0;
        v51 = v49[1];
        v52 = v49[2];
        v53 = v49[3];
        v111 = *v49;
        v112 = v51;
        v113 = v52;
        v114 = v53;
        do
        {
          *(&v115 + v50) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v106, COERCE_FLOAT(*(&v111 + v50))), v107, *(&v111 + v50), 1), v105, *(&v111 + v50), 2), v104, *(&v111 + v50), 3);
          v50 += 16;
        }

        while (v50 != 64);
        v54 = v116;
        v55 = v117;
        v56 = v118;
        v57 = a1[89];
        v57[19] = v115;
        v57[20] = v54;
        v57[21] = v55;
        v57[22] = v56;
        v58 = a1[89];
        v59 = v58[24];
        v58[27] = v58[23];
        v58[28] = v59;
        v60 = v58[26];
        v58[29] = v58[25];
        v58[30] = v60;
        *(a1[89] + 368) = __invert_f4(*(a1[89] + 304));
        *(a1[89] + 560) = v110;
        v61 = sub_1AF12EF08(a1[54]);
        sub_1AF1D04D4(v7, v61);
        *(a1[89] + 576) = v62;
        *(a1[89] + 592) = *sub_1AF1D048C(v7);
        v63 = sub_1AF1D0A94(v7);
        v64 = a1[89];
        v65 = (v64 + 48);
        v66.i32[0] = vld2_f32(v65).val[0].u32[0];
        v66.i32[1] = *(v64 + 68);
        *(v64 + 632) = v63;
        __asm { FMOV            V0.2S, #1.0 }

        v72 = vdiv_f32(_D0, v66);
        *&v73 = vmul_f32(v72, COERCE_FLOAT32X2_T(-2.00000048));
        *(&v73 + 2) = -v72.f32[0];
        HIDWORD(v73) = v72.i32[1];
        *(v64 + 608) = v73;
        if (v40)
        {
          v74 = sub_1AF166598(v40);
        }

        else
        {
          v74 = 0.0;
        }

        *(a1[89] + 636) = v74;
        v120 = *sub_1AF13050C(a1[54], 1);
        *(a1[89] + 496) = __invert_f4(v120);
        if (sub_1AF167434(v40))
        {
          v76 = a1[89];
          v106 = v76[31];
          v107 = v76[32];
          v104 = v76[34];
          v105 = v76[33];
          v77 = sub_1AF167220(v40);
          v78 = 0;
          v79 = v77[1];
          v80 = v77[2];
          v81 = v77[3];
          v111 = *v77;
          v112 = v79;
          v113 = v80;
          v114 = v81;
          do
          {
            *(&v115 + v78) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v106, COERCE_FLOAT(*(&v111 + v78))), v107, *(&v111 + v78), 1), v105, *(&v111 + v78), 2), v104, *(&v111 + v78), 3);
            v78 += 16;
          }

          while (v78 != 64);
          v82 = v116;
          v83 = v117;
          v84 = v118;
          v85 = a1[89];
          v85[31] = v115;
          v85[32] = v82;
          v85[33] = v83;
          v85[34] = v84;
        }

        objc_msgSend_setBytes_length_atIndex_(v6, v75, a1[89] + 48, 608, 0, *&v104, *&v105, *&v106, *&v107, *&v108);
        v86 = sub_1AF1403B4(a1[89] + 24);
        v87 = sub_1AFDE323C(v86);
        objc_msgSend_setComputePipelineState_(v6, v88, v87, v89);
        v93 = objc_msgSend_width(Texture, v90, v91, v92);
        v97 = objc_msgSend_height(Texture, v94, v95, v96);
        objc_msgSend_setBuffer_offset_atIndex_(v6, v98, *(a1[89] + 40), 0, 10);
        v99 = sub_1AF1403B4(a1[89] + 24);
        v100 = sub_1AFDE323C(v99);
        *&v115 = v93;
        *(&v115 + 1) = v97;
        *&v116 = 1;
        result = RGMTLComputeCommandEncoderDispatchOnGrid2D(v6, v100, &v115, 1);
        v101 = a1[89];
        v102 = *(v101 + 640);
        if ((v102 + 1) <= 0x1000)
        {
          v103 = v102 + 1;
        }

        else
        {
          v103 = 0;
        }

        *(v101 + 640) = v103;
      }
    }
  }

  return result;
}

uint64_t sub_1AF265F60(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v8 = a5[20];
  v22 = "SSRUpscalePass";
  *v23 = v8;
  if ((atomic_load_explicit(&qword_1ED73A9D8, memory_order_acquire) & 1) == 0)
  {
    v21 = a3;
    v20 = a2;
    sub_1AFDF0644();
    a2 = v20;
    a3 = v21;
  }

  sub_1AF239F88(a1, a2, a3, &v22, qword_1ED73A9D0, 0);
  *a1 = &unk_1F24EB408;
  memcpy((a1 + 440), a5, 0x108uLL);
  *(a1 + 704) = 0;
  *(a1 + 720) = 0;
  *(a1 + 736) = 0;
  *(a1 + 728) = 0;
  v9 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, *(a1 + 616));
  v25 = *v9;
  v26 = *(v9 + 8);
  v10 = *(v9 + 12);
  v11 = *(v9 + 20);
  v12 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v22 = v25;
  *v23 = v26;
  *&v23[4] = v10 & 0xFFFFFFFFFFFF0000 | 0x73;
  v24 = v11;
  v13 = sub_1AF2373FC(v12, "SSRUpscale", &v22);
  *(a1 + 720) = v13;
  v14 = *(a1 + 632);
  v15 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(a1, v14, v15);
  v16 = *(a1 + 656);
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  CFX::RG::Pass::writeTo(a1, *(a1 + 720));
  return a1;
}

void sub_1AF2660D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  *(a1 + 728) = v4;
  *(a1 + 736) = objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = sub_1AF12DDCC(*(a1 + 432));
  v9 = sub_1AF1D095C(v8);
  v27 = *(a1 + 680);
  v28 = v9;
  v10 = CFX::RG::Pass::hash(a1);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v9)));
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ *(a1 + 680));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v14);
  *(a1 + 704) = v15;
  if (!v15)
  {
    *(a1 + 704) = sub_1AF266228(*(a2 + 32), v14);
    v16 = sub_1AF12E2AC(*(a1 + 432));
    v20 = objc_msgSend_resourceManager(v16, v17, v18, v19);
    v21 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v21, v22, &v28, 29, @"SSRQuality");
    objc_msgSend_setConstantValue_type_withName_(v21, v23, &v27, 29, @"SSRDownSample");
    v24 = *(a1 + 704);
    v26 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v20, v25, @"vfx_ssr_upscale", v21);
    sub_1AF23355C((v24 + 16), v26);
  }
}

uint64_t sub_1AF266228(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1AF2662B0(uint64_t *a1, uint64_t a2, id *this)
{
  v36 = *MEMORY[0x1E69E9840];
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[88] + 16))
  {
    v6 = result;
    v7 = a1[76];
    if (v7 || (result = sub_1AF12F10C(a1[54]), (v7 = result) != 0))
    {
      result = sub_1AF1BB260(v7);
      if (result)
      {
        sub_1AF27F12C(v7, v32);
        v31 = sub_1AF12FCE8(a1[54], 0);
        memset(v35, 0, sizeof(v35));
        v8 = sub_1AF15E62C(v32, &v31);
        v37.columns[1] = *(v8 + 1);
        v37.columns[2] = *(v8 + 2);
        v37.columns[3] = *(v8 + 3);
        v33[0] = *v8;
        v37.columns[0] = v33[0];
        v33[1] = v37.columns[1];
        v33[2] = v37.columns[2];
        v33[3] = v37.columns[3];
        v34 = __invert_f4(v37);
        v10 = objc_msgSend_setBytes_length_atIndex_(v6, v9, v33, 608, 8);
        v11 = *(a2 + 24);
        v12 = a1[79];
        v13 = CFX::RG::Temporal::currentFrame(v10);
        Texture = CFX::GPUResourceManager::getTexture(v11, v12, v13);
        v15 = *(a2 + 24);
        v16 = a1[82];
        v17 = CFX::RG::Temporal::currentFrame(Texture);
        v18 = CFX::GPUResourceManager::getTexture(v15, v16, v17);
        objc_msgSend_setTexture_atIndex_(v6, v19, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v6, v20, v18, 1);
        v22 = objc_msgSend_setBuffer_offset_atIndex_(v6, v21, a1[89], 0, 0);
        v23 = *(a2 + 24);
        v24 = a1[90];
        v25 = CFX::RG::Temporal::currentFrame(v22);
        v26 = CFX::GPUResourceManager::getTexture(v23, v24, v25);
        objc_msgSend_setTexture_atIndex_(v6, v27, v26, 10);
        v28 = sub_1AF1403B4(a1[88] + 16);
        v29 = sub_1AFDE323C(v28);
        return objc_msgSend_dispatch_onTexture2D_(v6, v30, v29, v26);
      }
    }
  }

  return result;
}

uint64_t sub_1AF2664AC(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v8 = a5[20];
  v30 = "SSRSpatialDenoisePass";
  *v31 = v8;
  if ((atomic_load_explicit(&qword_1ED73A9E8, memory_order_acquire) & 1) == 0)
  {
    v29 = a3;
    v28 = a2;
    sub_1AFDF069C();
    a2 = v28;
    a3 = v29;
  }

  sub_1AF239F88(a1, a2, a3, &v30, qword_1ED73A9E0, 0);
  *a1 = &unk_1F24EB460;
  memcpy((a1 + 440), a5, 0x108uLL);
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  v9 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, *(a1 + 616));
  v33 = *v9;
  v34 = *(v9 + 8);
  v10 = *(v9 + 12);
  v11 = *(v9 + 20);
  v12 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v13 = v10 & 0xFFFFFFFFFFFF0000 | 0x73;
  v30 = v33;
  *v31 = v34;
  *&v31[4] = v13;
  v32 = v11;
  *(a1 + 720) = sub_1AF2373FC(v12, "SSRSpatialDenoiseTmpTex", &v30);
  v14 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v30 = v33;
  *v31 = v34;
  *&v31[4] = v13;
  v32 = v11;
  *(a1 + 728) = sub_1AF2373FC(v14, "SSRSpatialDenoiseOutput", &v30);
  LODWORD(v30) = 0;
  v15 = (*(*a1 + 48))(a1, a4, &v30);
  v16 = *(a1 + 632);
  v17 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v16, v17);
  v18 = *(a1 + 656);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  v21 = *(a1 + 648);
  v23 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v21, v23);
  v24 = CFX::RG::Pass::writeTo(a1, *(a1 + 728));
  v25 = *(a1 + 720);
  v26 = CFX::RG::Temporal::currentFrame(v24);
  CFX::RG::Pass::readFrom(a1, v25, v26);
  CFX::RG::Pass::writeTo(a1, *(a1 + 720));
  sub_1AF2680B0(&v30);
  return a1;
}

void sub_1AF2666DC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54]);
  a1[92] = v4;
  a1[93] = objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = sub_1AF12DDCC(a1[54]);
  v22 = sub_1AF1D095C(v8);
  v9 = CFX::RG::Pass::hash(a1);
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v22)))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v22)))) >> 47));
  v11 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v10);
  a1[88] = v11;
  if (!v11)
  {
    a1[88] = sub_1AF2667F0(*(a2 + 32), v10);
    v12 = sub_1AF12E2AC(a1[54]);
    v16 = objc_msgSend_resourceManager(v12, v13, v14, v15);
    v17 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v17, v18, &v22, 33, @"SSRQuality");
    v19 = a1[88];
    v21 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v16, v20, @"vfx_ssr_spatial_atrous_denoise", v17);
    sub_1AF23355C((v19 + 16), v21);
  }
}

uint64_t sub_1AF2667F0(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1AF266878(uint64_t *a1, uint64_t a2, id *this)
{
  v76 = *MEMORY[0x1E69E9840];
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[88] + 16))
  {
    v6 = result;
    v7 = sub_1AF12DDCC(a1[54]);
    v8 = a1[76];
    if (v8 || (result = sub_1AF12F10C(a1[54]), (v8 = result) != 0))
    {
      result = sub_1AF1BB260(v8);
      if (result)
      {
        sub_1AF27F12C(v8, v73);
        v72 = sub_1AF12FCE8(a1[54], 0);
        memset(&v75[1], 0, 384);
        v9 = sub_1AF15E62C(v73, &v72);
        v77.columns[1] = *(v9 + 1);
        v77.columns[2] = *(v9 + 2);
        v77.columns[3] = *(v9 + 3);
        v74[0] = *v9;
        v77.columns[0] = v74[0];
        v74[1] = v77.columns[1];
        v74[2] = v77.columns[2];
        v74[3] = v77.columns[3];
        v75[0] = __invert_f4(v77);
        v11 = objc_msgSend_setBytes_length_atIndex_(v6, v10, v74, 608, 8);
        v12 = *(a2 + 24);
        v13 = a1[79];
        v14 = CFX::RG::Temporal::currentFrame(v11);
        Texture = CFX::GPUResourceManager::getTexture(v12, v13, v14);
        v16 = *(a2 + 24);
        v17 = a1[81];
        v18 = CFX::RG::Temporal::currentFrame(Texture);
        v19 = CFX::GPUResourceManager::getTexture(v16, v17, v18);
        v20 = *(a2 + 24);
        v21 = a1[82];
        v22 = CFX::RG::Temporal::currentFrame(v19);
        v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
        v24 = *(a2 + 24);
        v25 = a1[89];
        v26 = CFX::RG::Temporal::currentFrame(v23);
        v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
        v28 = *(a2 + 24);
        v29 = a1[90];
        v30 = CFX::RG::Temporal::currentFrame(v27);
        v31 = CFX::GPUResourceManager::getTexture(v28, v29, v30);
        v32 = *(a2 + 24);
        v33 = a1[91];
        v34 = CFX::RG::Temporal::currentFrame(v31);
        v35 = CFX::GPUResourceManager::getTexture(v32, v33, v34);
        objc_msgSend_setTexture_atIndex_(v6, v36, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v6, v37, v23, 1);
        objc_msgSend_setTexture_atIndex_(v6, v38, v19, 2);
        objc_msgSend_setTexture_atIndex_(v6, v39, v27, 4);
        if (sub_1AF1D095C(v7))
        {
          if (sub_1AF1D095C(v7) == 1)
          {
            v71 = 2;
            objc_msgSend_setTexture_atIndex_(v6, v41, v27, 4);
          }

          else
          {
            v71 = 1;
            objc_msgSend_setTexture_atIndex_(v6, v41, v27, 4);
            objc_msgSend_setTexture_atIndex_(v6, v50, v31, 10);
            objc_msgSend_setBytes_length_atIndex_(v6, v51, &v71, 4, 0);
            v52 = sub_1AF1403B4(a1[88] + 16);
            v53 = sub_1AFDE323C(v52);
            objc_msgSend_dispatch_onTexture2D_(v6, v54, v53, v31);
            v71 = 2;
            objc_msgSend_setTexture_atIndex_(v6, v55, v31, 4);
          }

          objc_msgSend_setTexture_atIndex_(v6, v42, v35, 10);
          objc_msgSend_setBytes_length_atIndex_(v6, v56, &v71, 4, 0);
          v57 = sub_1AF1403B4(a1[88] + 16);
          v58 = sub_1AFDE323C(v57);
          objc_msgSend_dispatch_onTexture2D_(v6, v59, v58, v31);
          v71 = 4;
          objc_msgSend_setTexture_atIndex_(v6, v60, v35, 4);
          objc_msgSend_setTexture_atIndex_(v6, v61, v31, 10);
          objc_msgSend_setBytes_length_atIndex_(v6, v62, &v71, 4, 0);
          v63 = sub_1AF1403B4(a1[88] + 16);
          v64 = sub_1AFDE323C(v63);
          objc_msgSend_dispatch_onTexture2D_(v6, v65, v64, v31);
          v49 = 8;
        }

        else
        {
          v71 = 2;
          objc_msgSend_setTexture_atIndex_(v6, v40, v27, 4);
          objc_msgSend_setTexture_atIndex_(v6, v43, v31, 10);
          objc_msgSend_setBytes_length_atIndex_(v6, v44, &v71, 4, 0);
          v45 = sub_1AF1403B4(a1[88] + 16);
          v46 = sub_1AFDE323C(v45);
          objc_msgSend_dispatch_onTexture2D_(v6, v47, v46, v31);
          v49 = 6;
        }

        v71 = v49;
        objc_msgSend_setTexture_atIndex_(v6, v48, v31, 4);
        objc_msgSend_setTexture_atIndex_(v6, v66, v35, 10);
        objc_msgSend_setBytes_length_atIndex_(v6, v67, &v71, 4, 0);
        v68 = sub_1AF1403B4(a1[88] + 16);
        v69 = sub_1AFDE323C(v68);
        return objc_msgSend_dispatch_onTexture2D_(v6, v70, v69, v31);
      }
    }
  }

  return result;
}

uint64_t sub_1AF266CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5[20];
  v19[0] = "SSRTemporalDenoisePass";
  v19[1] = v8;
  if ((atomic_load_explicit(&qword_1ED73A9F8, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a3;
    sub_1AFDF06F4();
    a2 = v17;
    a3 = v18;
  }

  sub_1AF239F88(a1, a2, a3, v19, qword_1ED73A9F0, 0);
  *a1 = &unk_1F24EB4B8;
  memcpy((a1 + 440), a5, 0x108uLL);
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  v9 = sub_1AF12E2AC(*(a1 + 432));
  *(a1 + 736) = v9;
  *(a1 + 744) = objc_msgSend_resourceManager(v9, v10, v11, v12);
  LODWORD(v19[0]) = 0;
  v13 = (*(*a1 + 48))(a1, a4, v19);
  v14 = *(*(a1 + 712) + 16);
  v15 = CFX::RG::Temporal::previousFrame(v13);
  CFX::RG::Pass::readFrom(a1, v14, v15);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 712) + 16));
  sub_1AF2680B0(v19);
  return a1;
}

uint64_t sub_1AF266E2C(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 656)) + 4);
  v5 = CFX::RG::Pass::hash(a1);
  v6 = CFX::CrossFrameResourceManager::get(a2[4], v5);
  *(a1 + 704) = v6;
  if (!v6)
  {
    operator new();
  }

  v12 = 0uLL;
  v13 = 0;
  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >> 16 <= 1)
  {
    LOWORD(v8) = 1;
  }

  else
  {
    v8 = v4 >> 16;
  }

  CFXTextureDescriptorMake2D(v7, v8, 0x73u, &v12);
  v9 = CFX::RG::Pass::hash(a1);
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v12) ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v12) ^ v9)))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v12) ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v12) ^ v9)))) >> 47));
  result = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ (SDWORD1(v12) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ (SDWORD1(v12) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ (SDWORD1(v12) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ (SDWORD1(v12) >> 16))))) >> 47)));
  *(a1 + 712) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

__n128 sub_1AF26705C(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[88] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, a1[87], 608, 8);
    v10 = *(a2 + 24);
    v11 = a1[81];
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = a1[90];
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    v18 = *(a2 + 24);
    v19 = a1[79];
    v20 = CFX::RG::Temporal::currentFrame(v17);
    v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
    v22 = *(a2 + 24);
    v23 = a1[82];
    v24 = CFX::RG::Temporal::currentFrame(v21);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    objc_msgSend_setTexture_atIndex_(v8, v26, v17, 0);
    objc_msgSend_setTexture_atIndex_(v8, v27, v21, 1);
    objc_msgSend_setTexture_atIndex_(v8, v28, Texture, 2);
    v30 = objc_msgSend_setTexture_atIndex_(v8, v29, v25, 6);
    v31 = *(a2 + 24);
    v32 = *(a1[89] + 16);
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = *(a1[89] + 16);
    v37 = CFX::RG::Temporal::previousFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    objc_msgSend_setTexture_atIndex_(v8, v39, v34, 10);
    objc_msgSend_setTexture_atIndex_(v8, v40, v38, 11);
    v41 = sub_1AF1403B4(a1[88] + 16);
    v42 = sub_1AFDE323C(v41);
    objc_msgSend_dispatch_onTexture2D_(v8, v43, v42, v34);
    v44 = a1[87];
    v45 = v44[9];
    v44[12] = v44[8];
    v44[13] = v45;
    v46 = v44[11];
    v44[14] = v44[10];
    v44[15] = v46;
    v47 = a1[87];
    v48 = *(v47 + 336);
    *(v47 + 384) = *(v47 + 320);
    *(v47 + 400) = v48;
    result = *(v47 + 352);
    v49 = *(v47 + 368);
    *(v47 + 416) = result;
    *(v47 + 432) = v49;
  }

  return result;
}

uint64_t sub_1AF267230(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v8 = a5[20];
  *&v33 = "SSRCompositePass";
  *(&v33 + 1) = v8;
  LOWORD(v34) = 0;
  if ((atomic_load_explicit(&qword_1ED73AA08, memory_order_acquire) & 1) == 0)
  {
    v31 = a2;
    v32 = a3;
    sub_1AFDF074C();
    a2 = v31;
    a3 = v32;
  }

  sub_1AF250390(a1, a2, a3, &v33, qword_1ED73AA00, 0);
  *a1 = &unk_1F24EB510;
  memcpy((a1 + 448), a5, 0x108uLL);
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v10 = *(a1 + 560);
  v39 = *(a1 + 544);
  v40 = v10;
  v11 = *(a1 + 592);
  v41 = *(a1 + 576);
  v42 = v11;
  v12 = *(a1 + 496);
  v35 = *(a1 + 480);
  v36 = v12;
  v13 = *(a1 + 528);
  v37 = *(a1 + 512);
  v38 = v13;
  v14 = *(a1 + 464);
  v33 = *(a1 + 448);
  v34 = v14;
  v15 = sub_1AF233CC8(v9, "SSR Composite Output", &v33);
  *(a1 + 728) = v15;
  v16 = a5[22];
  v17 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v16, v17);
  v18 = a5[23];
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  v21 = a5[27];
  v23 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v21, v23);
  v24 = a5[28];
  v26 = CFX::RG::Temporal::currentFrame(v25);
  CFX::RG::Pass::readFrom(a1, v24, v26);
  v27 = a5[29];
  v29 = CFX::RG::Temporal::currentFrame(v28);
  CFX::RG::Pass::readFrom(a1, v27, v29);
  CFX::RG::Pass::renderTo(a1, *(a1 + 728), 0x100000000, 0);
  return a1;
}

void sub_1AF2673D8(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12DDCC(*(a1 + 432));
  v5 = sub_1AF1BB260(*(a1 + 616));
  v6 = sub_1AF15D690(v5);
  v59 = v6;
  v7 = *(a1 + 680);
  v58 = v7 != 0;
  if (v4)
  {
    v8 = sub_1AF1D02FC(v4) > 0.0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 != 0;
  v57 = v8;
  v10 = CFX::RG::Pass::hash(a1);
  v11 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 728)) + 12);
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v10)));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ v6)));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v9)));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v8)))) >> 47));
  v17 = CFX::CrossFrameResourceManager::get(a2[4], v16);
  *(a1 + 712) = v17;
  if (!v17)
  {
    *(a1 + 712) = sub_1AF267650(a2[4], v16);
    v18 = sub_1AF12E2AC(*(a1 + 432));
    v22 = objc_msgSend_resourceManager(v18, v19, v20, v21);
    v23 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v23, v24, a1 + 688, 29, @"SSRDownSample");
    objc_msgSend_setConstantValue_type_withName_(v23, v25, &v59, 53, @"SSRIsHDR");
    objc_msgSend_setConstantValue_type_withName_(v23, v26, &v58, 53, @"SSRHasAO");
    objc_msgSend_setConstantValue_type_withName_(v23, v27, &v57, 53, @"SSREnableFog");
    v28 = sub_1AFDE868C(v22);
    v32 = objc_msgSend_frameworkLibrary(v28, v29, v30, v31);
    v33 = *(a1 + 712);
    memset(v37, 0, sizeof(v37));
    v38 = v32;
    v39 = v11;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    v45 = 1;
    memset(v50, 0, sizeof(v50));
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v51 = v23;
    v52 = 0;
    v53 = @"vfx_draw_fullscreen_triangle_vertex";
    v54 = @"vfx_ssr_composite_frag";
    v55 = 0u;
    v56 = 0u;
    v36 = objc_msgSend_newRenderPipelineStateWithDesc_(v22, v34, v37, v35);
    sub_1AF23355C((v33 + 16), v36);
  }
}

uint64_t sub_1AF267650(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2676D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v8 = objc_msgSend_renderEncoder(v4, v5, v6, v7);
  v9 = sub_1AF2338B0(*(a1 + 712) + 16);
  v13 = objc_msgSend_state(v9, v10, v11, v12);
  v16 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v14, v13, v15);
  v17 = *(a2 + 24);
  v18 = *(a1 + 640);
  v19 = CFX::RG::Temporal::currentFrame(v16);
  Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
  v20 = *(a2 + 24);
  v21 = *(a1 + 624);
  v22 = CFX::RG::Temporal::currentFrame(Texture);
  v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
  v24 = *(a2 + 24);
  v25 = *(a1 + 664);
  v26 = CFX::RG::Temporal::currentFrame(v23);
  v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
  v28 = *(a2 + 24);
  v29 = *(a1 + 672);
  v30 = CFX::RG::Temporal::currentFrame(v27);
  v31 = CFX::GPUResourceManager::getTexture(v28, v29, v30);
  v32 = *(a2 + 24);
  v33 = *(a1 + 632);
  v34 = CFX::RG::Temporal::currentFrame(v31);
  v35 = CFX::GPUResourceManager::getTexture(v32, v33, v34);
  v36 = *(a2 + 24);
  v37 = *(a1 + 720);
  v38 = CFX::RG::Temporal::currentFrame(v35);
  v39 = CFX::GPUResourceManager::getTexture(v36, v37, v38);
  v43 = objc_msgSend_resourceManager(v4, v40, v41, v42);
  v46 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(v43, v44, v4, v45);
  sub_1AF1F8FCC(v8, v23, 0, v47);
  sub_1AF1F8FCC(v8, v27, 1, v48);
  sub_1AF1F8FCC(v8, v31, 2, v49);
  sub_1AF1F8FCC(v8, v35, 3, v50);
  sub_1AF1F8FCC(v8, v46, 4, v51);
  sub_1AF1F8FCC(v8, v39, 5, v52);
  v54 = sub_1AF1F8FCC(v8, Texture, 6, v53);
  v55 = *(a1 + 680);
  if (v55)
  {
    v56 = *(a2 + 24);
    v57 = CFX::RG::Temporal::currentFrame(v54);
    v58 = CFX::GPUResourceManager::getTexture(v56, v55, v57);
    sub_1AF1F8FCC(v8, v58, 7, v59);
  }

  sub_1AF1F905C(v8, *(a1 + 704), 0x260uLL, 8);

  return sub_1AF2016F4(v8, v60);
}

uint64_t *sub_1AF2678F0(CFX::RG::RenderGraphContext *a1, uint64_t a2, CFX::RG::Resource *a3)
{
  v6 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v7 = sub_1AF12DDCC(*(a2 + 160));
  v8 = sub_1AF1D09F8(v7);
  v9 = *(a2 + 176);
  v10 = CFX::RG::Resource::constTextureDesc(v9);
  CFX::RG::TextureDescriptorReference::withSampleCount(v10, 1, v65);
  v12 = CFX::RG::copyIfNeeded(v6, v9, a3, v65, "PostProcess color input resolve", v11);
  v13 = *(a2 + 216);
  v14 = CFX::RG::Resource::constTextureDesc(v13);
  CFX::RG::TextureDescriptorReference::withSampleCount(v14, 1, v65);
  v16 = CFX::RG::copyIfNeeded(v6, v13, a3, v65, "PostProcess normal input resolve", v15);
  v17 = *(a2 + 192);
  v18 = CFX::RG::Resource::constTextureDesc(v17);
  CFX::RG::TextureDescriptorReference::withSampleCount(v18, 1, v65);
  v20 = CFX::RG::copyIfNeeded(v6, v17, a3, v65, "PostProcess depth input resolve", v19);
  v21 = *(a2 + 224);
  v22 = CFX::RG::Resource::constTextureDesc(v21);
  CFX::RG::TextureDescriptorReference::withSampleCount(v22, 1, v65);
  v24 = CFX::RG::copyIfNeeded(v6, v21, a3, v65, "PostProcess albedoMetalnessTarget input resolve", v23);
  v25 = *(a2 + 184);
  v26 = CFX::RG::Resource::constTextureDesc(v25);
  CFX::RG::TextureDescriptorReference::withSampleCount(v26, 1, v65);
  *(a2 + 184) = CFX::RG::copyIfNeeded(v6, v25, a3, v65, "PostProcess radianceAOTarget input resolve", v27);
  *(a2 + 192) = v20;
  *(a2 + 216) = v16;
  *(a2 + 224) = v24;
  *(a2 + 176) = v12;
  v28 = CFX::RG::Resource::textureDesc(v12);
  v29 = v28[1];
  *a2 = *v28;
  *(a2 + 16) = v29;
  v30 = v28[5];
  v32 = v28[2];
  v31 = v28[3];
  *(a2 + 64) = v28[4];
  *(a2 + 80) = v30;
  *(a2 + 32) = v32;
  *(a2 + 48) = v31;
  v33 = v28[9];
  v35 = v28[6];
  v34 = v28[7];
  *(a2 + 128) = v28[8];
  *(a2 + 144) = v33;
  *(a2 + 96) = v35;
  *(a2 + 112) = v34;
  if (sub_1AF130864(*(a2 + 160)) <= 1.0)
  {
    v36 = 1;
  }

  else
  {
    v36 = 2;
  }

  *(a2 + 240) = v36;
  if (v8 == 2)
  {
    v37 = *(a2 + 160);
    v65[0] = "SSR backface depth";
    v65[1] = v37;
    v66 = 0;
    v38 = CFX::RG::Resource::textureDesc(v20);
    v39 = v38[1];
    v67 = *v38;
    v68 = v39;
    v40 = v38[4];
    v41 = v38[5];
    v42 = v38[3];
    v69 = v38[2];
    v72 = v41;
    v71 = v40;
    v70 = v42;
    v43 = v38[8];
    v44 = v38[9];
    v45 = v38[7];
    v73 = v38[6];
    v76 = v44;
    v75 = v43;
    v74 = v45;
    v46 = sub_1AF267CA4(v6, a1, v65);
    v47 = sub_1AF267CFC(v6, a1, a2);
    v48 = *(v46 + 78);
    *(v47 + 712) = v48;
    v49 = CFX::RG::Temporal::currentFrame(v47);
    CFX::RG::Pass::readFrom(v47, v48, v49);
    CFX::RG::Pass::dependsOn(v47, v46);
  }

  else
  {
    v47 = sub_1AF267CFC(v6, a1, a2);
  }

  *(a2 + 200) = *(v47 + 720);
  v50 = sub_1AF267D54(v6, a1, a2);
  CFX::RG::Pass::dependsOn(v50, v47);
  v51 = sub_1AF267DAC(v6, a1, a2);
  CFX::RG::Pass::dependsOn(v51, v50);
  v51[89] = *(v50[89] + 40);
  v52 = sub_1AF267E04(v6, a1, a2);
  v53 = CFX::RG::Pass::dependsOn(v52, v51);
  v54 = v51[90];
  v52[89] = v54;
  v55 = CFX::RG::Temporal::currentFrame(v53);
  CFX::RG::Pass::readFrom(v52, v54, v55);
  v56 = sub_1AF267E5C(v6, a1, a2);
  v57 = CFX::RG::Pass::dependsOn(v56, v52);
  v58 = v52[91];
  v56[90] = v58;
  v59 = CFX::RG::Temporal::currentFrame(v57);
  CFX::RG::Pass::readFrom(v56, v58, v59);
  v60 = sub_1AF267EB4(v6, a1, a2);
  v61 = CFX::RG::Pass::dependsOn(v60, v56);
  v62 = *(v56[89] + 16);
  v60[90] = v62;
  v63 = CFX::RG::Temporal::currentFrame(v61);
  CFX::RG::Pass::readFrom(v60, v62, v63);
  *(a2 + 248) = v60[91];
  if (a3)
  {
    CFX::RG::Pass::dependsOn(v60, a3);
  }

  return v60;
}

uint64_t sub_1AF267CA4(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF268620(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267CFC(uint64_t *a1, CFX::RG::RenderGraphContext *a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF268680(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267D54(uint64_t *a1, CFX::CrossFrameResourceManager **a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2686E0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267DAC(uint64_t *a1, CFX::RG::RenderGraphContext *a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF268740(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267E04(uint64_t *a1, CFX::RG::RenderGraphContext *a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2687A0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267E5C(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF268800(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267EB4(uint64_t *a1, CFX::RG::RenderGraphContext *a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF268860(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF267F10(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF267F4C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF267F88(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF267FC4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF268000(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF26803C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF268078(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

int *sub_1AF2680B0(int *a1)
{
  v2 = *a1;
  if (*a1 <= 2)
  {
    if (v2 == 1)
    {
      CFX::RG::RendererPassArguments::~RendererPassArguments((a1 + 2));
    }

    else if (v2 == 2)
    {
      CFX::RG::RendererPassArguments::~RendererPassArguments(a1 + 1);
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        CFX::RG::BlitPassArguments::~BlitPassArguments(a1 + 1);
        break;
      case 4:
        CFX::RG::RenderPassArguments::~RenderPassArguments(a1 + 1);
        break;
      case 5:
        CFX::RG::ComputePassArguments::~ComputePassArguments(a1 + 1);
        break;
    }
  }

  return a1;
}

uint64_t sub_1AF268140(uint64_t a1)
{
  *a1 = &unk_1F24EB568;

  return a1;
}

void sub_1AF268188(uint64_t a1)
{
  *a1 = &unk_1F24EB568;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2681F0(uint64_t a1)
{
  *a1 = &unk_1F24EB588;

  return a1;
}

void sub_1AF268240(uint64_t a1)
{
  *a1 = &unk_1F24EB588;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2682B0(uint64_t a1)
{
  *a1 = &unk_1F24EB5A8;

  return a1;
}

void sub_1AF2682F8(uint64_t a1)
{
  *a1 = &unk_1F24EB5A8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF268360(uint64_t a1)
{
  *a1 = &unk_1F24EB5C8;

  return a1;
}

void sub_1AF2683A8(uint64_t a1)
{
  *a1 = &unk_1F24EB5C8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF268410(uint64_t a1)
{
  *a1 = &unk_1F24EB5E8;

  return a1;
}

void sub_1AF268458(uint64_t a1)
{
  *a1 = &unk_1F24EB5E8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2684C0(uint64_t a1)
{
  *a1 = &unk_1F24EB608;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF268508(uint64_t a1)
{
  *a1 = &unk_1F24EB608;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF268570(uint64_t a1)
{
  *a1 = &unk_1F24EB628;

  return a1;
}

void sub_1AF2685B8(uint64_t a1)
{
  *a1 = &unk_1F24EB628;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF268620(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x278u, 8u);
  return sub_1AF2649F8(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF268680(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E0u, 8u);
  return sub_1AF264D80(v8, *a3, a3[1], a4, a5);
}

void *sub_1AF2686E0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2D0u, 8u);
  return sub_1AF265544(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF268740(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E8u, 8u);
  return sub_1AF265F60(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2687A0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2F0u, 8u);
  return sub_1AF2664AC(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF268800(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2F0u, 8u);
  return sub_1AF266CD0(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF268860(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E0u, 8u);
  return sub_1AF267230(v8, *a3, a3[1], a4, a5);
}

__n128 sub_1AF2688C0(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73AA18, memory_order_acquire) & 1) == 0)
  {
    v9 = a2;
    v10 = a3;
    sub_1AFDF07A4();
    a2 = v9;
    a3 = v10;
  }

  CFX::RG::Pass::Pass(this, a2, a3, "VFXCorePreparePass", 1, qword_1ED73AA10, 0);
  *this = &unk_1F24EB648;
  result = *a5;
  v8 = *(a5 + 16);
  *(this + 424) = *a5;
  *(this + 440) = v8;
  return result;
}

uint64_t sub_1AF268954(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v4 = result;
    v5 = *(result + 424);
    v6 = sub_1AF12E2A0(v5);
    v7 = v6;
    if (*(v4 + 448) == 1 && (v6 & 1) == 0)
    {
      sub_1AF131094(v5, 1);
    }

    v8 = *(v4 + 440);
    if (v8)
    {
      v9 = sub_1AF23B41C(v8);
      sub_1AF131034(v5, v9);
    }

    sub_1AF14E718(v5, *(v4 + 432));
    if (!(v7 & 1 | ((*(v4 + 448) & 1) == 0)))
    {
      sub_1AF131094(v5, 0);
    }

    v10 = *(v4 + 424);

    return sub_1AF131034(v10, 0);
  }

  return result;
}

CFX::RG::Pass *sub_1AF268A08(CFX::RG::RenderGraphBuilder *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1AF12DDCC(*a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2[1] == -1)
  {
    if ((atomic_load_explicit(&qword_1ED73AA18, memory_order_acquire) & 1) == 0)
    {
      sub_1AFDF07A4();
    }

    v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ v7)))) >> 47));
    Pass = CFX::RG::RenderGraphBuilder::findPass(a1, v9);
    if (!Pass)
    {
      Pass = sub_1AF268BA8(a1, a1, a2);
      CFX::RG::RenderGraphBuilder::registerPass(a1, v9, Pass);
    }
  }

  else
  {
    Pass = sub_1AF268BA8(a1, a1, a2);
  }

  CFX::RG::Pass::dependsOn(a3, Pass);
  if ((atomic_load_explicit(&qword_1ED73AA28, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF0800();
  }

  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ v7)))) >> 47));
  v11 = CFX::RG::RenderGraphBuilder::findPass(a1, v10);
  if (!v11)
  {
    v11 = sub_1AF268C00(a1);
    CFX::RG::RenderGraphBuilder::registerPass(a1, v10, v11);
  }

  CFX::RG::Pass::dependsOn(Pass, v11);
  return Pass;
}

uint64_t sub_1AF268BA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  sub_1AF268C94(v8[0], v5, v8, a2, a3);
  v8[0] = v6;
  sub_1AF235000(a1 + 22, v8);
  return v8[0];
}

uint64_t sub_1AF268C00(uint64_t *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[0] = sub_1AF268CE4(v4[0], v2);
  sub_1AF235000(a1 + 22, v4);
  return v4[0];
}

void sub_1AF268C5C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF268C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x1C8u, 8u);
  *&result = sub_1AF2688C0(v7, *a3, a3[1], v8, a5).n128_u64[0];
  return result;
}

uint64_t sub_1AF268CE4(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v2 = sub_1AF23498C(v4, 0x1B0u, 8u);
  return sub_1AF268DEC(v2);
}

CFX::RG::Pass *sub_1AF268D44(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((atomic_load_explicit(&qword_1ED73AA38, memory_order_acquire) & 1) == 0)
  {
    v9 = a2;
    v10 = a3;
    sub_1AFDF085C();
    a2 = v9;
    a3 = v10;
  }

  if (byte_1ED73AA30)
  {
    v7 = 0x732400D26C5131A9;
  }

  else
  {
    v7 = 0;
  }

  result = CFX::RG::Pass::Pass(this, a2, a3, "VFXCoreRecycleDrawCallsPass", 1, v7, 0);
  *this = &unk_1F24EB680;
  *(this + 53) = *a5;
  return result;
}

void sub_1AF268DF0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v3 = sub_1AF12DDCC(*(a1 + 424));
    if (v3)
    {
      v4 = sub_1AF1CF8AC(v3);
      if (v4)
      {
        v5 = sub_1AF0FB884(v4);

        MEMORY[0x1EEE66B58](v5, sel_recycleDrawCalls, v6, v7);
      }
    }

    else
    {
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_DEFAULT, "Warning: CFXVFXPrepareDrawCalls -> no world yet", v9, 2u);
      }
    }
  }
}

void sub_1AF268E94(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF268ECC(uint64_t a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "Authoring");
  *result = &unk_1F24EB6B8;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF268F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

uint64_t sub_1AF268F94@<X0>(uint64_t a1@<X8>)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v2 = CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, 6893, 9273, 1656467160);
  v4[1] = CFX::RG::ResourceIdentifier::finalColor(v2);
  return sub_1AF2696E4(a1, v4, 2);
}

unint64_t sub_1AF269018(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1AF26960C(v4, *(a1 + 24));
  v2 = vorrq_s8(vorrq_s8(vshlq_u64(v4[0], xmmword_1AFE431C0), vshlq_u64(v4[2], xmmword_1AFE431B0)), vorrq_s8(vshlq_u64(v4[1], xmmword_1AFE431E0), vshlq_u64(v4[3], xmmword_1AFE431D0)));
  *v2.i8 = vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ ((0x9DDFEA08EB382D69 * (v2.i64[0] ^ v1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v2.i64[0] ^ v1)))) ^ ((0x9DDFEA08EB382D69 * (v1 ^ ((0x9DDFEA08EB382D69 * (v2.i64[0] ^ v1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v2.i64[0] ^ v1)))) >> 47));
}

void sub_1AF2690CC(uint64_t a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3, CFX::RG::SubgraphBuildArguments *a4)
{
  if (sub_1AF1309BC(*(a1 + 24)) && !sub_1AF1309E8(*(a1 + 24)))
  {
    return;
  }

  v8 = sub_1AF12E2A0(*(a1 + 24));
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v92, 9273, 9273, 1656467160);
  CFX::RG::ResourceReference::ResourceReference(&v80, v92[0]);
  v9 = sub_1AF24736C(a3, "Authoring input color", &v80);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v80, 9273, 9273, -797957750);
  PublishedResource = CFX::RG::RenderGraphBuilder::findPublishedResource(a3, v80);
  v12 = (PublishedResource | v11) == 0;
  if (PublishedResource | v11)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(v92, 9273, 9273, -797957750);
    CFX::RG::ResourceReference::ResourceReference(&v80, v92[0]);
    v14 = sub_1AF24736C(a3, "Authoring input depth", &v80);
  }

  else
  {
    v13 = CFX::RG::Resource::constTextureDesc(v9);
    CFX::RG::TextureDescriptorReference::withSampleCount(v13, 1, v92);
    CFX::RG::TextureDescriptorReference::withPixelFormat(v92, MTLPixelFormatDepth32Float, &v80);
    v14 = sub_1AF233CC8(a3, "Authoring input depth", &v80);
  }

  v15 = v14;
  v16 = CFX::RG::Resource::constTextureDesc(v9);
  CFX::RG::TextureDescriptorReference::withSampleCount(v16, 1, &v80);
  v18 = CFX::RG::copyIfNeeded_r(a3, v9, 0, &v80, "Authoring color input resolve", v17);
  v20 = v19;
  v21 = sub_1AF12E2AC(*(a1 + 24));
  if ((v8 & 1) != 0 || !objc_msgSend_showsAuthoringEnvironment(v21, v22, v23, v24))
  {
    goto LABEL_14;
  }

  if ((atomic_load_explicit(&qword_1ED73AA48, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF08A8();
  }

  v25 = byte_1ED73AA40 ? 0xA5BDF038E97191F5 : 0;
  if (CFX::RG::SubgraphBuildArguments::isDisabled(a4, v25))
  {
LABEL_14:
    v78 = 0;
    v79 = v15;
    v77 = 0;
  }

  else
  {
    if (v12)
    {
      v52 = 0;
    }

    else
    {
      v58 = CFX::RG::Resource::constTextureDesc(v15);
      CFX::RG::TextureDescriptorReference::withSampleCount(v58, 1, &v80);
      v15 = CFX::RG::copyIfNeeded_r(a3, v15, 0, &v80, "Authoring depth input resolve", v59);
    }

    v92[0] = v18;
    v92[1] = v20;
    v92[2] = v15;
    v92[3] = v52;
    v93 = v12;
    v60 = *(a1 + 24);
    *&v80 = "Authoring";
    *(&v80 + 1) = v60;
    v81 = 0;
    v61 = sub_1AF2342BC(a2, a3, &v80, v92);
    v18 = v61[60];
    v62 = sub_1AF12EE9C(*(a1 + 24), 0);
    if ((sub_1AF12EE68(*(a1 + 24)) & 0x80000) != 0 && sub_1AF103018(v62))
    {
      v63 = *(a1 + 24);
      *&v80 = "Manipulator";
      *(&v80 + 1) = v63;
      v81 = 0;
      v64 = CFX::RG::Resource::constTextureDesc(v15);
      v65 = v64[1];
      v82 = *v64;
      v83 = v65;
      v66 = v64[4];
      v67 = v64[5];
      v68 = v64[3];
      v84 = v64[2];
      v87 = v67;
      v86 = v66;
      v85 = v68;
      v69 = v64[8];
      v70 = v64[9];
      v71 = v64[7];
      v88 = v64[6];
      v91 = v70;
      v90 = v69;
      v89 = v71;
      v20 = sub_1AF2440A4(a3, &v80, v18);
      CFX::RG::Pass::dependsOn(v20, v61);
      v15 = v20[58];
    }

    else
    {
      v20 = v61;
    }

    v77 = v61;
    v78 = v20;
    v79 = v15;
  }

  v26 = sub_1AF12F434(*(a1 + 24));
  v30 = v26;
  if (v26)
  {
    v31 = objc_msgSend_showsStatistics(v26, v27, v28, v29);
    v35 = v8;
    v36 = v18;
    v37 = a4;
    v38 = objc_msgSend_showsDebugUI(v30, v32, v33, v34);
    v39 = sub_1AF1309E8(*(a1 + 24)) ^ 1;
    v40 = v31 | v38;
    a4 = v37;
    v18 = v36;
    if (v35)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v40 = 0;
    v39 = 1;
    if (v8)
    {
      goto LABEL_36;
    }
  }

  if ((atomic_load_explicit(&qword_1ED73AA58, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF08E0();
  }

  if ((v40 & ~(CFX::RG::SubgraphBuildArguments::isDisabled(a4, qword_1ED73AA50) | v39) & 1) == 0 || ((CFX::RG::TextureDescriptorReference::finalColor(&v80), v45 = CFX::RG::copyIfNeeded_r(a3, v18, v20, &v80, "Overlay color input copy", v41), v46 = v42, v47 = *(a1 + 24), *&v80 = "Overlay", *(&v80 + 1) = v47, v81 = 0, !v30) ? (v51 = 0, LOBYTE(v82) = 0) : (LOBYTE(v82) = objc_msgSend_showsStatistics(v30, v42, v43, v44), v51 = objc_msgSend_showsDebugUI(v30, v48, v49, v50)), (BYTE1(v82) = v51, v78 == v46) ? (v53 = v78 == 0) : (v53 = 1), v53 ? (v54 = 0) : (v54 = v79), (v55 = sub_1AF2470B4(a3, &v80, v45, v54)) == 0))
  {
LABEL_36:
    if (!v20)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v80, 9273, 9273, 1656467160);
      CFX::RG::ResourceIdentifier::ResourceIdentifier(v92, *(a1 + 8), 64484, 1656467160);
      CFX::RG::RenderGraphBuilder::aliasResourceReference(a3, v80, v92[0]);
      return;
    }

    goto LABEL_46;
  }

  v56 = v55;
  if (v46)
  {
    v57 = v46;
  }

  else
  {
    v57 = v77;
  }

  CFX::RG::Pass::dependsOn(v55, v57);
  v20 = v56;
  v18 = v45;
LABEL_46:
  v72 = v20[3];
  v73 = *v72;
  if (*v72)
  {
    v74 = v72 + 1;
    v75 = -25147;
    do
    {
      v75 = 403 * (v75 ^ v73);
      v76 = *v74++;
      v73 = v76;
    }

    while (v76);
  }

  else
  {
    v75 = -25147;
  }

  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v80, *(a1 + 8), v75, 1656467160);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v80, v18, v20);
}

void *sub_1AF26960C(void *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a2);
  v5 = sub_1AF12F434(a2);
  *a1 = sub_1AF1309BC(a2);
  a1[1] = sub_1AF1309E8(a2);
  a1[2] = objc_msgSend_showsAuthoringEnvironment(v4, v6, v7, v8);
  a1[3] = objc_msgSend_showsStatistics(v5, v9, v10, v11);
  a1[4] = objc_msgSend_showsDebugUI(v5, v12, v13, v14);
  v15 = sub_1AF12EE9C(a2, 0);
  a1[5] = sub_1AF103018(v15);
  a1[6] = sub_1AF232D3C(a2, v15);
  a1[7] = (sub_1AF12EE68(a2) >> 19) & 1;
  return a1;
}

uint64_t sub_1AF2696E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = a1 + 16;
  sub_1AF158DE0(a1, a3, 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      v7 = *a2++;
      v9 = v7;
      sub_1AF269758(a1, &v9);
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void sub_1AF269758(uint64_t a1, void *a2)
{
  v4 = *a1;
  if ((*a1 + 1) > *(a1 + 4))
  {
    sub_1AF158DE0(a1, 1, 0);
    v4 = *a1;
  }

  *(*(a1 + 8) + 8 * v4) = *a2;
  ++*a1;
}

uint64_t sub_1AF2697B8(uint64_t a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "PostRender");
  *result = &unk_1F24EB710;
  *(result + 24) = 0;
  *(result + 32) = a2;
  return result;
}

uint64_t sub_1AF269808(uint64_t a1)
{
  sub_1AF1307A8(*(a1 + 32), 0);
  sub_1AF1307B0(*(a1 + 32), 0);
  v2 = *(a1 + 32);

  return sub_1AF1307D8(v2, 1);
}

uint64_t sub_1AF269858@<X0>(uint64_t a1@<X8>)
{
  v3[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v3, 27275, 51583, -277915706);
  return sub_1AF2696E4(a1, v3, 1);
}

void sub_1AF2698E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1AF12E2AC(*(a1 + 32));
  sub_1AF24FBDC(v25, v5, v6, v7);
  if (sub_1AF1309BC(*(a1 + 32)) && (sub_1AF1309E8(*(a1 + 32)) & 1) == 0)
  {
    v20 = sub_1AF24F844(a3, v25, *(a1 + 32));
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v22, 27275, 51583, -277915706);
    v16 = v22;
    v17 = a3;
    v18 = v20;
    v19 = 0;
  }

  else
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v21, *(a1 + 24), 9273, 1656467160);
    CFX::RG::ResourceReference::ResourceReference(&v22, v21);
    v8 = sub_1AF24736C(a3, "COLOR", &v22);
    v9 = CFX::RG::Resource::constTextureDesc(v8);
    CFX::RG::TextureDescriptorReference::withSampleCount(v9, 1, &v22);
    v11 = CFX::RG::copyIfNeeded_r(a3, v8, 0, &v22, "Copy to final resolve", v10);
    v13 = v12;
    v14 = sub_1AF24F844(a3, v25, *(a1 + 32));
    *&v22 = v11;
    DWORD2(v22) = 0;
    v23 = v14;
    v24 = 0x100000000;
    CopyPass = CFX::RG::makeCopyPass(a3, "CopyToFinal", &v22);
    CFX::RG::Pass::dependsOn(CopyPass, v13);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v22, 27275, 51583, -277915706);
    v16 = v22;
    v17 = a3;
    v18 = v14;
    v19 = CopyPass;
  }

  CFX::RG::RenderGraphBuilder::publishResourceReference(v17, v16, v18, v19);
}

uint64_t sub_1AF269A78(uint64_t a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "PostRender");
  *result = &unk_1F24EB768;
  *(result + 24) = 0;
  *(result + 32) = a2;
  return result;
}

uint64_t sub_1AF269AC8(uint64_t a1)
{
  sub_1AF1307A8(*(a1 + 32), 1);
  sub_1AF1307B0(*(a1 + 32), 1);
  v2 = *(a1 + 32);

  return sub_1AF1307D8(v2, 2);
}

uint64_t sub_1AF269B18@<X0>(uint64_t a1@<X8>)
{
  v3[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v3, 27275, 41610, -277915706);
  return sub_1AF2696E4(a1, v3, 1);
}

unint64_t sub_1AF269BA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_1AF12F7DC(*(a1 + 32));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ ((0x9DDFEA08EB382D69 * (v2 ^ v1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v2 ^ v1)))) ^ ((0x9DDFEA08EB382D69 * (v1 ^ ((0x9DDFEA08EB382D69 * (v2 ^ v1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v2 ^ v1)))) >> 47));
}

void sub_1AF269BF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v26, *(a1 + 24), 9273, 1656467160);
  CFX::RG::ResourceReference::ResourceReference(&v28, v26[0]);
  v5 = sub_1AF24736C(a3, "COLOR", &v28);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v26, *(a1 + 24), 9273, -797957750);
  CFX::RG::ResourceReference::ResourceReference(&v28, v26[0]);
  v6 = sub_1AF24736C(a3, "DEPTH", &v28);
  v7 = sub_1AF12E2AC(*(a1 + 32));
  sub_1AF24FBDC(v27, v7, v8, v9);
  if (sub_1AF12F7DC(*(a1 + 32)))
  {
    v10 = CFX::RG::Resource::constTextureDesc(v5);
    CFX::RG::TextureDescriptorReference::withSampleCount(v10, 1, &v28);
    v11 = sub_1AF233CC8(a3, "resolved color", &v28);
    v28.n128_u64[0] = v5;
    v28.n128_u32[2] = 0;
    v29 = v11;
    v30 = 0x200000000;
    CFX::RG::makeCopyPass(a3, "ResolveColor", &v28);
    CFX::RG::TextureDescriptorReference::finalColor(v26);
    CFX::RG::TextureDescriptorReference::withPixelFormat(v26, MTLPixelFormatRGBA16Float, &v28);
    v12 = sub_1AF233CC8(a3, "almost final target", &v28);
    v13 = *(a1 + 32);
    v28.n128_u64[0] = v11;
    v28.n128_u64[1] = v12;
    sub_1AF23B018(a3, v13, "debug copy stereo to drawable", &v28);
    v14 = sub_1AF24F844(a3, v27, *(a1 + 32));
    v28.n128_u64[0] = v12;
    v28.n128_u32[2] = 0;
    v29 = v14;
    v30 = 0x100000000;
    CopyPass = CFX::RG::makeCopyPass(a3, "Copy to drawable", &v28);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v28, 27275, 41610, -277915706);
    v16 = v28.n128_u64[0];
    v17 = a3;
    v18 = v14;
    v19 = CopyPass;
  }

  else
  {
    v20 = v27[32];
    v21 = sub_1AF24F844(a3, v27, *(a1 + 32));
    v28.n128_u64[0] = v5;
    v28.n128_u32[2] = 0;
    v29 = v21;
    LODWORD(v30) = 0;
    HIDWORD(v30) = v20;
    v22 = CFX::RG::makeCopyPass(a3, "ResolveColor", &v28);
    v23 = CFX::RG::Resource::constTextureDesc(v6);
    CFX::RG::TextureDescriptorReference::withSampleCount(v23, 1, &v28);
    v24 = sub_1AF233CC8(a3, "ResolvedDepth", &v28);
    v28.n128_u64[0] = v6;
    v28.n128_u32[2] = 0;
    v29 = v24;
    LODWORD(v30) = 0;
    HIDWORD(v30) = v20;
    v25 = CFX::RG::makeCopyPass(a3, "ResolveDepth", &v28);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v28, 27275, 41610, -277915706);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v28.n128_u64[0], v21, v22);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v28, 27275, 41610, 473305552);
    v16 = v28.n128_u64[0];
    v17 = a3;
    v18 = v24;
    v19 = v25;
  }

  CFX::RG::RenderGraphBuilder::publishResourceReference(v17, v16, v18, v19);
}

uint64_t sub_1AF269F08(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = CFX::RG::Subgraph::Subgraph(a1, "CustomAuthoring");
  *v8 = &unk_1F24EB7C0;
  *(v8 + 24) = a2;
  *(v8 + 32) = 0;
  v9 = v8 + 32;
  *(v8 + 36) = 0;
  *(v8 + 48) = a3;
  *(v8 + 40) = v8 + 48;
  *(v8 + 56) = a4;
  *(v8 + 64) = 0;
  CFRetain(a3);
  v10 = *(a1 + 56);
  if (v10)
  {
    CFRetain(v10);
  }

  v11 = sub_1AF3D4238();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
  if (v16)
  {
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = objc_msgSend_UTF8String(*(*(&v22 + 1) + 8 * v18), v13, v14, v15);
        CFX::RG::ResourceIdentifier::ResourceIdentifier(&v21, v19);
        sub_1AF269758(v9, &v21);
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v22, v26, 16);
    }

    while (v16);
  }

  return a1;
}

void sub_1AF26A080(_Unwind_Exception *exception_object)
{
  if (*(v1 + 36))
  {
    free(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF26A0B4(uint64_t a1)
{
  *a1 = &unk_1F24EB7C0;
  CFRelease(*(a1 + 48));
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 36))
  {
    free(*(a1 + 40));
  }

  return a1;
}

void sub_1AF26A120(_Unwind_Exception *exception_object)
{
  if (*(v1 + 36))
  {
    free(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF26A140(uint64_t a1)
{
  sub_1AF26A0B4(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF26A178(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = a2 + 16;
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_1AF158DE0(a2, v3, 1);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = 8 * v5;
      do
      {
        sub_1AF269758(a2, v6++);
        v7 -= 8;
      }

      while (v7);
    }
  }
}

void sub_1AF26A1E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 4))
  {
    free(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF26A208@<X0>(CFX::RG::ResourceIdentifier *a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = CFX::RG::ResourceIdentifier::finalColor(a1);
  return sub_1AF2696E4(a2, v4, 1);
}

void sub_1AF26A2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF12F434(*(a1 + 24));
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 24);
  v14 = objc_msgSend_commandQueue(v6, v11, v12, v13);
  sub_1AF3D3154(a2, a3, v8, v9, v10, v14, v7);

  *(a1 + 64) = v7;
}

double sub_1AF26A348(uint64_t a1, uint64_t a2)
{
  v3 = CFX::RG::Subgraph::Subgraph(a1, "Main");
  *v3 = &unk_1F24EB818;
  *(v3 + 24) = a2;
  *(v3 + 32) = 0;
  *(v3 + 48) = 0x1000001010000;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = -1;
  *(v3 + 104) = -1;
  *(v3 + 112) = 0;
  return result;
}

uint64_t sub_1AF26A3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v5, *(a1 + 8), 9273, 1656467160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v6, *(a1 + 8), 9273, -797957750);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v7, *(a1 + 8), 9273, 1348742528);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v8, *(a1 + 8), 9273, -1170177454);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v9, *(a1 + 8), 9273, -31245996);
  return sub_1AF2696E4(a2, &v5, 5);
}

uint64_t sub_1AF26A4A4@<X0>(CFX::RG::ResourceIdentifier *a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = CFX::RG::ResourceIdentifier::finalColor(a1);
  return sub_1AF2696E4(a2, v4, 1);
}

unint64_t sub_1AF26A510(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = 0x9DDFEA08EB382D69 * (*(a1 + 48) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 80))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 80))))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 80))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 80))))) >> 47));
  v8 = sub_1AF12DDCC(*(a1 + 24));
  v9 = v8;
  if (v8)
  {
    if (sub_1AF1D053C(v8))
    {
      v10 = sub_1AF1D053C(v9);
      v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v10)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v10)))) >> 47));
      v12 = sub_1AF1D07FC(v9);
      v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v12)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v12)))) >> 47));
      v14 = sub_1AF1D0738(v9);
      v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)))) ^ ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)))) >> 47));
    }

    if (sub_1AF1D0898(v9))
    {
      v15 = sub_1AF1D0898(v9);
      v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v15)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v15)))) >> 47));
      v17 = sub_1AF1D095C(v9);
      v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v17)))) >> 47));
      v19 = sub_1AF1D02FC(v9);
      v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 > 0.0))) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ (v19 > 0.0))))) ^ ((0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 > 0.0))) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ (v19 > 0.0))))) >> 47));
      v21 = sub_1AF1D09F8(v9);
      v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ ((0x9DDFEA08EB382D69 * (v20 ^ v21)) >> 47) ^ (0x9DDFEA08EB382D69 * (v20 ^ v21)))) ^ ((0x9DDFEA08EB382D69 * (v20 ^ ((0x9DDFEA08EB382D69 * (v20 ^ v21)) >> 47) ^ (0x9DDFEA08EB382D69 * (v20 ^ v21)))) >> 47));
    }
  }

  v22 = sub_1AF24B4B0(*(a1 + 24), a2);
  v23 = *(a1 + 32);
  if (v22)
  {
    *(a1 + 32) = ++v23;
  }

  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v7)))) >> 47));
  v25 = sub_1AF1CF8AC(v9);
  if (v25)
  {
    v26 = sub_1AF0FB884(v25);
    v30 = objc_msgSend_anyDrawNeedsLinearDepth(v26, v27, v28, v29);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v24 ^ v30)) >> 47) ^ (0x9DDFEA08EB382D69 * (v24 ^ v30)))) ^ ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v24 ^ v30)) >> 47) ^ (0x9DDFEA08EB382D69 * (v24 ^ v30)))) >> 47));
  }

  return v24;
}

uint64_t *sub_1AF26A74C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, float32x2_t *a5, uint64_t a6, __int128 *a7, _OWORD *a8)
{
  v149 = *MEMORY[0x1E69E9840];
  sub_1AF130BD8(a3, 0);
  v15 = sub_1AF12E2AC(a3);
  v16 = *(a4 + 32);
  if (!v16)
  {
    v16 = sub_1AF12F10C(a3);
    if (!v16)
    {
      return 0;
    }
  }

  if (!sub_1AF1BB260(v16))
  {
    return 0;
  }

  v119 = v16;
  v117 = a7;
  if (*(a4 + 2) & 1) != 0 || (*(a4 + 3))
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a4 + 4);
  }

  v120 = v17;
  *v121 = sub_1AF12FAE0(a3);
  v19 = sub_1AF12E2AC(a3);
  sub_1AF24FBDC(v132, v19, v20, v21);
  if (a8)
  {
    v22 = a8[7];
    v131[6] = a8[6];
    v131[7] = v22;
    v23 = a8[9];
    v131[8] = a8[8];
    v131[9] = v23;
    v24 = a8[3];
    v131[2] = a8[2];
    v131[3] = v24;
    v25 = a8[5];
    v131[4] = a8[4];
    v131[5] = v25;
    v26 = a8[1];
    v131[0] = *a8;
    v131[1] = v26;
  }

  else
  {
    if (*v121 <= 1u)
    {
      v27 = MTLTextureType2D;
    }

    else
    {
      v27 = MTLTextureType2DArray;
    }

    CFX::RG::TextureDescriptorReference::finalColor(&v127);
    v31 = objc_msgSend_sampleCount(v15, v28, v29, v30);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v127, v31, &v129);
    CFX::RG::TextureDescriptorReference::withTextureType(&v129, v27, &v133);
    CFX::RG::TextureDescriptorReference::withArraylength(&v133, v121[0], &v138);
    v32 = sub_1AF130888(a3);
    CFX::RG::TextureDescriptorReference::withSizeFactor(&v138, v32, v131);
  }

  CFX::RG::TextureDescriptorReference::withPixelFormatIf(v131, MTLPixelFormatRGBA16Float, a5->u8[0], &v138);
  *a6 = sub_1AF233CC8(a1, "COLOR", &v138);
  v126 = 0;
  if (sub_1AF130E10(a3, &v126))
  {
    CFX::RG::TextureDescriptorReference::withPixelFormat(v131, v126, &v138);
    *(a6 + 8) = sub_1AF233CC8(a1, "COLOR1", &v138);
  }

  v33 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *a6) + 4);
  v34 = vld1q_dup_f64(v33);
  a5[1] = vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(v34, xmmword_1AFE42F50), 0x30uLL)));
  v38 = objc_msgSend_depthPixelFormat(v15, v35, v36, v37);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v131, v38, &v138);
  *(a6 + 16) = sub_1AF233CC8(a1, "DEPTH", &v138);
  v42 = objc_msgSend_stencilPixelFormat(v15, v39, v40, v41);
  if (VFXMTLTexturePixelFormatIsStencil(v42))
  {
    v46 = objc_msgSend_stencilPixelFormat(v15, v43, v44, v45);
    CFX::RG::TextureDescriptorReference::withPixelFormat(v131, v46, &v138);
    *(a6 + 24) = sub_1AF233CC8(a1, "STENCIL", &v138);
  }

  sub_1AF130538(a3, a5->i8[5]);
  if (a5->i8[5] == 1)
  {
    CFX::RG::TextureDescriptorReference::withPixelFormat(v131, MTLPixelFormatRGBA16Float, &v138);
    *(a6 + 40) = sub_1AF233CC8(a1, "VELOCITY", &v138);
  }

  if (a5->i8[2] == 1)
  {
    CFX::RG::TextureDescriptorReference::withPixelFormat(v131, MTLPixelFormatRGBA16Float, &v138);
    *(a6 + 48) = sub_1AF233CC8(a1, "ALBEDO METALNESS", &v138);
    CFX::RG::TextureDescriptorReference::withPixelFormat(v131, MTLPixelFormatRGBA16Float, &v138);
    *(a6 + 56) = sub_1AF233CC8(a1, "RADIANCE AO", &v138);
  }

  if ((*(a4 + 4) & 1) != 0 || a5->i8[2] == 1)
  {
    CFX::RG::TextureDescriptorReference::withPixelFormat(v131, MTLPixelFormatRGBA16Float, &v138);
    *(a6 + 32) = sub_1AF233CC8(a1, "NORMAL ROUGHNESS", &v138);
  }

  if (*a4)
  {
    v47 = 40;
  }

  else
  {
    v47 = 32;
  }

  v48 = sub_1AF12F6E8(a3);
  v49.i32[0] = 0;
  v50 = v47 | 0x100;
  if (!v48)
  {
    v50 = v47;
  }

  v118 = v50;
  v51 = *(a4 + 16);
  v52 = vmvnq_s8(vceqzq_f32(v51));
  v52.i32[0] = vmaxvq_u32(v52);
  v53 = vdupq_lane_s32(*&vcgtq_s32(v49, v52), 0);
  *v52.f32 = a5[1];
  v54.i64[0] = 0;
  v54.i64[1] = v52.i64[0];
  v52.i64[1] = v52.i64[0];
  *&v138 = a3;
  BYTE8(v138) = 1;
  v141 = 0;
  v139 = v119;
  v140 = 0;
  v115 = vbslq_s8(v53, vmulq_f32(v51, v52), v54);
  *v143 = v115;
  v143[16] = 1;
  *&v144[8] = *(a4 + 56);
  v144[24] = sub_1AF12FAD0(a3);
  v144[25] = sub_1AF130848(a3);
  *&v145 = v118;
  DWORD2(v145) = 1;
  WORD6(v145) = LOBYTE(v121[0]);
  v55 = sub_1AF23BCB4(a1, &v138, "MainCulling");
  v56 = *(a4 + 48);
  v57 = sub_1AF23B940(v55);
  *&v138 = a3;
  *(&v138 + 1) = v56;
  v139 = v57;
  LOBYTE(v140) = 0;
  v116 = sub_1AF268A08(a1, &v138, v55);
  sub_1AF250334(a3, &v129);
  v58 = sub_1AF12DDCC(a3);
  v59 = sub_1AF1CF8AC(v58);
  if (v59)
  {
    v60 = sub_1AF0FB884(v59);
    v64 = objc_msgSend_anyDrawNeedsLinearDepth(v60, v61, v62, v63);
  }

  else
  {
    v64 = 0;
  }

  if ((v120 & 1) == 0)
  {
    v67 = 0;
    if (((*(a4 + 5) | v64) & 1) == 0)
    {
      v122 = 0;
      goto LABEL_47;
    }

    v68 = 0;
    goto LABEL_44;
  }

  v65 = sub_1AF1D053C(v58);
  if ((*(a4 + 5) | v64 | v65))
  {
    if (v65)
    {
      v66 = CFX::RG::Resource::constTextureDesc(*(a6 + 16));
      CFX::RG::TextureDescriptorReference::withSampleCount(v66, 1, &v133);
      CFX::RG::TextureDescriptorReference::withPixelFormat(&v133, MTLPixelFormatRGBA16Float, &v138);
      v67 = sub_1AF233CC8(a1, "NORMAL PREPASS", &v138);
      v68 = 1;
    }

    else
    {
      v68 = 0;
      v67 = 0;
    }

LABEL_44:
    v70 = sub_1AF23B940(v55);
    v71 = CFX::RG::Resource::constTextureDesc(*(a6 + 16));
    v72 = sub_1AF24E800(a1, &v129, v70, v71, v67, 1);
    v122 = v73;
    v69 = v72;
    CFX::RG::Pass::dependsOn(v72, v55);
    *(a6 + 80) = *(v122 + 79);
    if (v68)
    {
      goto LABEL_45;
    }

    v67 = 0;
    goto LABEL_47;
  }

  v69 = 0;
  v67 = 0;
  v122 = 0;
  if (v65)
  {
LABEL_45:
    *&v138 = a3;
    *(&v138 + 1) = v119;
    v139 = sub_1AF23B940(v55);
    v140 = *(v122 + 79);
    v141 = v67;
    v142 = 0;
    *v143 = 1036831949;
    *&v143[4] = 0;
    *&v143[8] = 0;
    v67 = sub_1AF264540(a1, a2, &v138);
    CFX::RG::Pass::dependsOn(v67, v69);
    CFX::RG::Pass::dependsOn(v67, v122);
    *(a6 + 72) = *&v143[8];
  }

LABEL_47:
  v138 = v129;
  LOWORD(v139) = v130;
  LOBYTE(v140) = 1;
  BYTE1(v140) = *(a4 + 6);
  WORD1(v140) = 256;
  BYTE4(v140) = 0;
  v74 = sub_1AF23B940(v55);
  v75 = *(a6 + 48);
  *&v144[16] = *(a6 + 32);
  v145 = v75;
  v146 = *(a6 + 64);
  v76 = *(a6 + 16);
  *&v143[8] = *a6;
  v141 = v74;
  v77 = *(a4 + 48);
  v142 = *(a4 + 40);
  *v143 = v77;
  v147 = *(a6 + 80);
  *v144 = v76;
  v148 = *v117;
  if ((v120 & 1) == 0)
  {
    return 0;
  }

  v78 = sub_1AF24EA74(a1, &v138);
  v79 = v78;
  if (v116)
  {
    v80 = CFX::RG::Pass::dependsOn(v78, v116);
  }

  else
  {
    v80 = CFX::RG::Pass::dependsOn(v78, v55);
  }

  if (v64)
  {
    v81 = *(a6 + 80);
    v82 = CFX::RG::Temporal::currentFrame(v80);
    CFX::RG::Pass::readFrom(v79, v81, v82);
    v79[58] = v81;
    CFX::RG::Pass::dependsOn(v79, v122);
  }

  if (v67)
  {
    CFX::RG::Pass::dependsOn(v79, v67);
  }

  v83 = sub_1AF2622A0(a1, a2[2], a3);
  v84 = v83;
  if (v83)
  {
    v85 = *(v83 + 61);
    v86 = CFX::RG::Temporal::currentFrame(v83);
    CFX::RG::Pass::readFrom(v79, v85, v86);
    CFX::RG::Pass::dependsOn(v84, v55);
  }

  v87 = a2[2];
  v88 = CFX::RG::Resource::constTextureDesc(*a6);
  v89 = v88[1];
  v133 = *v88;
  v134 = v89;
  v90 = v88[2];
  v91 = v88[3];
  v92 = v88[5];
  *&v136[16] = v88[4];
  *&v136[32] = v92;
  v135 = v90;
  *v136 = v91;
  v93 = v88[6];
  v94 = v88[7];
  v95 = v88[9];
  *&v136[80] = v88[8];
  v137 = v95;
  *&v136[48] = v93;
  *&v136[64] = v94;
  v96 = sub_1AF244FE8(a1, v87, a3, &v133, &v127);
  if (DWORD2(v127))
  {
    v97 = v128;
    v98 = 8 * DWORD2(v127);
    do
    {
      v99 = *v97;
      v100 = (*v97)[79];
      v101 = CFX::RG::Temporal::currentFrame(v96);
      CFX::RG::Pass::readFrom(v79, v100, v101);
      v103 = v99[80];
      if (v103)
      {
        v104 = CFX::RG::Temporal::currentFrame(v102);
        CFX::RG::Pass::readFrom(v79, v103, v104);
      }

      v96 = CFX::RG::Pass::dependsOn(v99, v55);
      ++v97;
      v98 -= 8;
    }

    while (v98);
  }

  v125[0] = a3;
  v125[1] = 0;
  v105 = sub_1AF24B5EC(a1, a2, v125);
  if (v105)
  {
    CFX::RG::Pass::dependsOn(v79, v105);
    CFX::RG::Pass::dependsOn(v105, v55);
  }

  if (*(a4 + 7) != 1)
  {
    return v79;
  }

  *&v133 = a3;
  BYTE8(v133) = 0;
  *&v135 = 0;
  v134 = v119;
  *v136 = v115;
  v136[16] = 1;
  *&v136[32] = xmmword_1AFE42EB0;
  v136[48] = sub_1AF12FAD0(a3);
  v136[49] = sub_1AF130848(a3);
  *&v136[56] = v118 | 0x201;
  *&v136[64] = 1;
  *&v136[68] = LOBYTE(v121[0]);
  v106 = sub_1AF23BCB4(a1, &v133, "DepthPostPassCulling");
  *&v133 = "PostDepthPass";
  *(&v133 + 1) = *(&v129 + 1);
  LOWORD(v134) = v130;
  DWORD2(v134) = 16842752;
  BYTE12(v134) = 0;
  v107 = sub_1AF23B940(v106);
  v108 = *(a6 + 48);
  *&v136[40] = *(a6 + 32);
  v135 = v107;
  *&v136[56] = v108;
  *&v136[72] = *(a6 + 64);
  v109 = *(a6 + 80);
  *v136 = -1;
  *&v136[88] = v109;
  v110 = *(a6 + 16);
  *&v136[8] = *a6;
  *&v136[24] = v110;
  v111 = *(a6 + 16);
  *&v137 = *a6;
  *(&v137 + 1) = v111;
  v112 = sub_1AF12DDCC(a3);
  v113 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v112) ^ ((0x9DDFEA08EB382D69 * v112) >> 47));
  v124 = 0x9DDFEA08EB382D69 * (v113 ^ (v113 >> 47));
  v18 = sub_1AF24E9C4(a1, &v133, &v124);
  CFX::RG::Pass::dependsOn(v18, v106);
  CFX::RG::Pass::dependsOn(v18, v79);
  return v18;
}

void sub_1AF26B134(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1AF130BD8(*(a1 + 24), 0);
  v6 = sub_1AF12F10C(*(a1 + 24));
  if (v6 && sub_1AF1BB260(v6))
  {
    if (*(a1 + 49) == 1)
    {
      memset(v24, 0, sizeof(v24));
    }

    else
    {
      sub_1AF23891C(v24, *(a1 + 24), 0);
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v17 = 0uLL;
    v7 = sub_1AF26A74C(a3, a2, *(a1 + 24), a1 + 48, v24, &v18, &v17, 0);
    v8 = v18;
    if (v18)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v16, *(a1 + 8), 9273, 1656467160);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v16, v8, v7);
    }

    v9 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v16, *(a1 + 8), 9273, 1673244779);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v16, v9, v7);
    }

    v10 = v19;
    if (v19)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v16, *(a1 + 8), 9273, -797957750);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v16, v10, v7);
    }

    v11 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v16, *(a1 + 8), 9273, 306839123);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v16, v11, v7);
    }

    v12 = v20;
    if (v20)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v16, *(a1 + 8), 9273, 1348742528);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v16, v12, v7);
    }

    v13 = v21;
    if (v21)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v16, *(a1 + 8), 9273, -31245996);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v16, v13, v7);
    }

    v14 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v16, *(a1 + 8), 9273, 145493432);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v16, v14, v7);
    }

    v15 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v16, *(a1 + 8), 9273, -1170177454);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v16, v15, v7);
    }
  }
}

void *sub_1AF26B3B0(uint64_t a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "GBuffer");
  *result = &unk_1F24EB870;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF26B3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v5, *(a1 + 8), 9273, 1656467160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v6, *(a1 + 8), 9273, -797957750);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v7, *(a1 + 8), 9273, 1893898584);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v8, *(a1 + 8), 9273, 1490954098);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v9, *(a1 + 8), 9273, -287492009);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v10, *(a1 + 8), 9273, 1251382574);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v11, *(a1 + 8), 9273, -1170177454);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v12, *(a1 + 8), 9273, -495228831);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v13, *(a1 + 8), 9273, -965507924);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v14, *(a1 + 8), 9273, 2057617157);
  return sub_1AF2696E4(a2, &v5, 10);
}

uint64_t sub_1AF26B560@<X0>(CFX::RG::ResourceIdentifier *a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = CFX::RG::ResourceIdentifier::finalColor(a1);
  return sub_1AF2696E4(a2, v4, 1);
}

void sub_1AF26B5D4(uint64_t a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = sub_1AF12E2AC(*(a1 + 24));
  v7 = sub_1AF12DDCC(*(a1 + 24));
  v8 = sub_1AF12F10C(*(a1 + 24));
  if (!v8)
  {
    return;
  }

  v9 = sub_1AF1BB260(v8);
  if (!v9)
  {
    return;
  }

  v13 = v9;
  if (objc_msgSend_rayMap(v6, v10, v11, v12))
  {
    return;
  }

  v14 = sub_1AF15D690(v13);
  sub_1AF1D0898(v7);
  sub_1AF15D070(v13);
  v15 = sub_1AF15CEC0(v13);
  sub_1AF15CF98(v13);
  sub_1AF15D25C(v13);
  sub_1AF15D2C8(v13);
  CFX::RG::TextureDescriptorReference::finalColor(v41);
  CFX::RG::TextureDescriptorReference::withPixelFormatIf(v41, MTLPixelFormatRGBA16Float, v14, &v42);
  v38 = sub_1AF233CC8(a3, "COLOR", &v42);
  CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v38);
  CFX::RG::TextureDescriptorReference::finalColor(v41);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v41, MTLPixelFormatDepth32Float, &v42);
  v37 = sub_1AF233CC8(a3, "DEPTH", &v42);
  CFX::RG::TextureDescriptorReference::finalColor(v41);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v41, MTLPixelFormatRGBA8Unorm, &v42);
  *&v40 = sub_1AF233CC8(a3, "Albedo", &v42);
  CFX::RG::TextureDescriptorReference::finalColor(v41);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v41, MTLPixelFormatRGBA16Float, &v42);
  *(&v40 + 1) = sub_1AF233CC8(a3, "Normals", &v42);
  CFX::RG::TextureDescriptorReference::finalColor(v41);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v41, MTLPixelFormatRGBA16Float, &v42);
  v36 = sub_1AF233CC8(a3, "RoughnessMetalness", &v42);
  CFX::RG::TextureDescriptorReference::finalColor(v41);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v41, MTLPixelFormatRGBA16Float, &v42);
  v16 = sub_1AF233CC8(a3, "Emission", &v42);
  CFX::RG::TextureDescriptorReference::finalColor(v41);
  if (v15)
  {
    v17 = MTLPixelFormatRGBA16Float;
  }

  else
  {
    v17 = MTLPixelFormatRG16Float;
  }

  CFX::RG::TextureDescriptorReference::withPixelFormat(v41, v17, &v42);
  v39 = sub_1AF233CC8(a3, "Velocity", &v42);
  CFX::RG::TextureDescriptorReference::finalColor(v41);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v41, MTLPixelFormatRGBA16Float, &v42);
  v18 = sub_1AF233CC8(a3, "ClearCoat", &v42);
  CFX::RG::TextureDescriptorReference::finalColor(v41);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v41, MTLPixelFormatRGBA16Float, &v42);
  v19 = sub_1AF233CC8(a3, "Subsurface", &v42);
  CFX::RG::TextureDescriptorReference::finalColor(v41);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v41, MTLPixelFormatRGBA16Uint, &v42);
  v20 = sub_1AF233CC8(a3, "Transmission", &v42);
  objc_msgSend_setSampleCount_(v6, v21, 1, v22);
  *&v42 = *(a1 + 24);
  BYTE8(v42) = 1;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v47 = sub_1AF12FCE8(v42, 0);
  LOBYTE(v48) = 1;
  v50 = xmmword_1AFE42EB0;
  LOBYTE(v51) = sub_1AF12FAD0(*(a1 + 24));
  BYTE1(v51) = sub_1AF130848(*(a1 + 24));
  v52 = 32;
  LODWORD(v53) = 1;
  WORD2(v53) = 1;
  v23 = sub_1AF23BCB4(a3, &v42, "MainCulling");
  v24 = *(a1 + 24);
  v25 = sub_1AF23B940(v23);
  *&v42 = v24;
  *(&v42 + 1) = -1;
  v43 = v25;
  LOBYTE(v44) = 0;
  v26 = sub_1AF268A08(a3, &v42, v23);
  v27 = *(a1 + 24);
  *&v42 = "GBuffer";
  *(&v42 + 1) = v27;
  LOWORD(v43) = 0;
  LOBYTE(v44) = 1;
  v45 = v38;
  v46 = v37;
  v47 = v40;
  v48 = v36;
  v49 = v16;
  *&v50 = v39;
  *(&v50 + 1) = v18;
  v51 = v19;
  v52 = v20;
  v53 = sub_1AF23B940(v23);
  v28 = sub_1AF23DBE0(a3, &v42);
  v29 = v28;
  if (v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = v23;
  }

  CFX::RG::Pass::dependsOn(v28, v30);
  v31 = *(v29 + 24);
  v32 = *v31;
  if (*v31)
  {
    v33 = v31 + 1;
    v34 = -25147;
    do
    {
      v34 = 403 * (v34 ^ v32);
      v35 = *v33++;
      v32 = v35;
    }

    while (v35);
    if (!v38)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v34 = -25147;
    if (!v38)
    {
      goto LABEL_15;
    }
  }

  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v42, *(a1 + 8), v34, 1656467160);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v42, v38, v29);
LABEL_15:
  if (v37)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v42, *(a1 + 8), v34, -797957750);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v42, v37, v29);
  }

  if (v40)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v42, *(a1 + 8), v34, 1893898584);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v42, v40, v29);
  }

  if (*(&v40 + 1))
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v42, *(a1 + 8), v34, 1490954098);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v42, *(&v40 + 1), v29);
  }

  if (v36)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v42, *(a1 + 8), v34, -287492009);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v42, v36, v29);
  }

  if (v16)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v42, *(a1 + 8), v34, 1251382574);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v42, v16, v29);
  }

  if (v39)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v42, *(a1 + 8), v34, -1170177454);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v42, v39, v29);
  }

  if (v18)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v42, *(a1 + 8), v34, -495228831);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v42, v18, v29);
  }

  if (v19)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v42, *(a1 + 8), v34, -965507924);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v42, v19, v29);
  }

  if (v20)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v42, *(a1 + 8), v34, 2057617157);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v42, v20, v29);
  }
}

uint64_t sub_1AF26BC48(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Subgraph::Subgraph(a1, "HybridRenderer");
  *v4 = &unk_1F24EB8C8;
  *(v4 + 24) = 1;
  *(v4 + 32) = a2;
  *(v4 + 40) = 0;
  *(v4 + 56) = 1;
  *(v4 + 60) = 1065353216;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference((v4 + 72));
  *(a1 + 308) = 1112014848;
  *(a1 + 312) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference((a1 + 336));
  *(a1 + 496) = 1;
  *(a1 + 500) = 0;
  *(a1 + 528) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference((a1 + 624));
  *(a1 + 784) = 1;
  *(a1 + 788) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference((a1 + 920));
  *(a1 + 1080) = 1;
  *(a1 + 1084) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference((a1 + 1224));
  *(a1 + 1384) = 1;
  *(a1 + 1388) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference((a1 + 1504));
  *(a1 + 1664) = 1;
  *(a1 + 1668) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference((a1 + 1792));
  *(a1 + 1952) = 1;
  *(a1 + 2040) = 0;
  *(a1 + 1956) = 1;
  *(a1 + 500) = 0;
  *(a1 + 788) = 0;
  *(a1 + 1084) = 0;
  *(a1 + 1388) = 0;
  *(a1 + 1668) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1664) = 0;
  return a1;
}

uint64_t sub_1AF26BD58(uint64_t a1)
{
  *a1 = &unk_1F24EB8C8;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_1AF14118C(v2, *(a1 + 48));
  }

  return a1;
}

void sub_1AF26BDA8(uint64_t a1)
{
  *a1 = &unk_1F24EB8C8;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_1AF14118C(v2, *(a1 + 48));
  }

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF26BE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

uint64_t sub_1AF26BE94@<X0>(uint64_t a1@<X8>)
{
  v8[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 53296, 9273, 1893898584);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v4, 53296, 9273, 1490954098);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v5, 53296, 9273, -287492009);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v6, 53296, 9273, 1251382574);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v7, 53296, 9273, -1170177454);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v8, 53296, 9273, -797957750);
  return sub_1AF2696E4(a1, &v3, 6);
}

void sub_1AF26BF8C(uint64_t a1)
{
  v2 = sub_1AF1449E0(*(a1 + 40));
  v3 = *(a1 + 40);
  if (v3)
  {
    if (sub_1AF144830(v3))
    {
      *(a1 + 496) = 1;
      *(a1 + 784) = 1;
      *(a1 + 1080) = 0;
      *(a1 + 1384) = 0;
      *(a1 + 1664) = 0;
      v4 = sub_1AF12DDCC(*(a1 + 32));
      v5 = sub_1AF1CF7E8(v4);
      sub_1AF26C004(a1, v5);
    }

    *(a1 + 1952) = v2 != 0;
  }
}

void sub_1AF26C004(uint64_t a1, uint64_t a2)
{
  v19[3] = *MEMORY[0x1E69E9840];
  sub_1AF1BA950(a2);
  if ((v4 & 1) == 0)
  {
    v17 = a2;
    v5 = sub_1AF1B75A0(a2);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1AF1B1FE0(v5);
      v8 = v7;
      if (v7)
      {
        v9 = 0;
        do
        {
          v10 = sub_1AF1B2030(v6, v9);
          v11 = sub_1AF1A1270(v10);
          v12 = 0;
          v19[0] = a1 + 1080;
          v19[1] = a1 + 1384;
          v19[2] = a1 + 1664;
          do
          {
            v13 = sub_1AF1656E4(v11, byte_1AFE43200[v12], 0);
            if (v13)
            {
              v14 = sub_1AF1660D8(v13);
              v15 = v19[v12];
              v16 = 1;
              if (!*v15)
              {
                if (v14)
                {
                  v16 = *v14 > 0.0;
                }
              }

              *v15 = v16;
            }

            ++v12;
          }

          while (v12 != 3);
          ++v9;
        }

        while (v9 != v8);
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF26D3CC;
    v18[3] = &unk_1E7A7A098;
    v18[4] = a1;
    sub_1AF1B7E14(v17, v18);
  }
}

unint64_t sub_1AF26C190(uint64_t a1)
{
  v2 = sub_1AF1449E0(*(a1 + 40));
  v3 = sub_1AF1449F0(*(a1 + 40));
  sub_1AF26BF8C(a1);
  v4 = *(a1 + 8);
  v5 = 0x9DDFEA08EB382D69 * (*(a1 + 56) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 496));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ *(a1 + 784));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ *(a1 + 1080));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ *(a1 + 1384));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ *(a1 + 1664));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v17 = 0x9DDFEA08EB382D69 * (v16 ^ *(a1 + 1952));
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v19 = 0x9DDFEA08EB382D69 * (v18 ^ *(a1 + 500));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v21 = 0x9DDFEA08EB382D69 * (v20 ^ *(a1 + 788));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v23 = 0x9DDFEA08EB382D69 * (v22 ^ *(a1 + 1084));
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) ^ ((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 47));
  v25 = 0x9DDFEA08EB382D69 * (v24 ^ *(a1 + 1388));
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) ^ ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) >> 47));
  v27 = 0x9DDFEA08EB382D69 * (v26 ^ *(a1 + 1668));
  v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v27 >> 47) ^ v27)) ^ ((0x9DDFEA08EB382D69 * (v26 ^ (v27 >> 47) ^ v27)) >> 47));
  v29 = 0x9DDFEA08EB382D69 * (v28 ^ *(a1 + 1956));
  v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) ^ ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) >> 47));
  v31 = 0x9DDFEA08EB382D69 * (v30 ^ ((0x9DDFEA08EB382D69 * (v30 ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v30 ^ v2)));
  v32 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ v3)));
  v33 = 0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47));
  v34 = 0x9DDFEA08EB382D69 * (v33 ^ *(a1 + 2040));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v34 >> 47) ^ v34)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ (v34 >> 47) ^ v34)) >> 47));
}

void sub_1AF26C3EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1AF130BD8(*(a1 + 32), *(a1 + 56));
  if (*(a1 + 24) == 1)
  {
    v6 = sub_1AF12DDCC(*(a1 + 32));
    v7 = sub_1AF1D0140(v6);
    *(a1 + 40) = v7;
    *(a1 + 48) = 15;
    sub_1AF141118(v7, 0xFu);
  }

  sub_1AF26BF8C(a1);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, 1656467160);
  CFX::RG::ResourceReference::ResourceReference(&v160, __dst[0]);
  v8 = sub_1AF24736C(a3, "HybridRenderer input color", &v160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, 1251382574);
  CFX::RG::ResourceReference::ResourceReference(&v160, __dst[0]);
  v9 = sub_1AF24736C(a3, "HybridRenderer input emission", &v160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, 1490954098);
  CFX::RG::ResourceReference::ResourceReference(&v160, __dst[0]);
  v156 = sub_1AF24736C(a3, "HybridRenderer input normals", &v160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, 1893898584);
  CFX::RG::ResourceReference::ResourceReference(&v160, __dst[0]);
  v153 = sub_1AF24736C(a3, "HybridRenderer input albedo", &v160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, -287492009);
  CFX::RG::ResourceReference::ResourceReference(&v160, __dst[0]);
  v150 = sub_1AF24736C(a3, "HybridRenderer input roughmetalTarget", &v160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, -1170177454);
  CFX::RG::ResourceReference::ResourceReference(&v160, __dst[0]);
  v152 = sub_1AF24736C(a3, "HybridRenderer input velocityTarget", &v160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, -797957750);
  CFX::RG::ResourceReference::ResourceReference(&v160, __dst[0]);
  v10 = sub_1AF24736C(a3, "HybridRenderer input depthTarget", &v160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, -495228831);
  CFX::RG::ResourceReference::ResourceReference(&v160, __dst[0]);
  v147 = sub_1AF24736C(a3, "HybridRenderer input clearCoat", &v160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, -965507924);
  CFX::RG::ResourceReference::ResourceReference(&v160, __dst[0]);
  v146 = sub_1AF24736C(a3, "HybridRenderer input subsurface", &v160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, 2057617157);
  CFX::RG::ResourceReference::ResourceReference(&v160, __dst[0]);
  v145 = sub_1AF24736C(a3, "HybridRenderer input transmission", &v160);
  v160 = *(a1 + 32);
  v161 = v8;
  v155 = v8;
  v154 = sub_1AF235B58(a2, &v160);
  v160 = *(a1 + 32);
  v161 = v10;
  v157 = sub_1AF235B58(a2, &v160);
  v160 = *(a1 + 32);
  LOWORD(v161) = 15;
  v11 = sub_1AF24983C(a3, a2, &v160);
  if ((atomic_load_explicit(&qword_1ED73AA68, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF0928();
  }

  v143 = v9;
  if (byte_1ED73AA60)
  {
    v12 = 0xF00CF1A885CF4FA4;
  }

  else
  {
    v12 = 0;
  }

  CFX::RG::RenderGraphBuilder::passesMatchingClassIdentifier(a3, v12, a2[2], &v160);
  if (v161)
  {
    v13 = *(&v161 + 1);
    v14 = 8 * v161;
    do
    {
      v15 = *v13++;
      CFX::RG::Pass::dependsOn(v11, v15);
      v14 -= 8;
    }

    while (v14);
  }

  v205[0] = *(a1 + 32);
  v205[1] = v10;
  v205[2] = v156;
  v205[3] = v152;
  v206 = 0;
  v144 = sub_1AF251314(a3, a2, v205);
  memcpy(__dst, (a1 + 64), sizeof(__dst));
  __dst[0] = *(a1 + 32);
  v16 = CFX::RG::Resource::textureDesc(v8);
  v17 = *v16;
  *&__dst[3] = v16[1];
  *&__dst[1] = v17;
  v18 = v16[2];
  v19 = v16[3];
  v20 = v16[4];
  *&__dst[11] = v16[5];
  *&__dst[9] = v20;
  *&__dst[7] = v19;
  *&__dst[5] = v18;
  v21 = v16[6];
  v22 = v16[7];
  v23 = v16[8];
  *&__dst[19] = v16[9];
  *&__dst[17] = v23;
  *&__dst[15] = v22;
  *&__dst[13] = v21;
  __dst[23] = v156;
  __dst[21] = v10;
  __dst[22] = v153;
  __dst[24] = sub_1AF235B4C(v154);
  __dst[25] = sub_1AF235B4C(v157);
  LOBYTE(__dst[31]) = *(a1 + 1664);
  BYTE1(__dst[31]) = *(a1 + 2040) == 11;
  v24 = sub_1AF2400F8(a2, __dst);
  v25 = sub_1AF26D2E8(a1, a3, 11, v24, __dst[27]);
  if (!v25)
  {
    v25 = sub_1AF26D2E8(a1, a3, 12, v24, __dst[26]);
  }

  CFX::RG::Pass::dependsOn(v24, v11);
  v26 = __dst[28];
  v27 = __dst[29];
  v28 = __dst[30];
  v148 = __dst[29];
  if (*(a1 + 496) == 1)
  {
    *(a1 + 328) = *(a1 + 32);
    v29 = CFX::RG::Resource::textureDesc(v155);
    v30 = v29[1];
    *(a1 + 336) = *v29;
    *(a1 + 352) = v30;
    v31 = v29[5];
    v33 = v29[2];
    v32 = v29[3];
    *(a1 + 400) = v29[4];
    *(a1 + 416) = v31;
    *(a1 + 368) = v33;
    *(a1 + 384) = v32;
    v34 = v29[9];
    v36 = v29[6];
    v35 = v29[7];
    *(a1 + 464) = v29[8];
    *(a1 + 480) = v34;
    *(a1 + 432) = v36;
    *(a1 + 448) = v35;
    *(a1 + 560) = sub_1AF235B4C(v154);
    *(a1 + 568) = sub_1AF235B4C(v157);
    *(a1 + 544) = v10;
    *(a1 + 536) = v156;
    *(a1 + 552) = v206;
    *(a1 + 504) = v26;
    *(a1 + 512) = v27;
    *(a1 + 520) = v28;
    *(a1 + 524) = 0;
    *(a1 + 528) = *(a1 + 1664);
    *(a1 + 576) = __dst[26];
    v37 = sub_1AF2588B8(a2, a1 + 328);
    CFX::RG::Pass::dependsOn(v37, v24);
    CFX::RG::Pass::dependsOn(v37, v144);
    if (!v25)
    {
      v25 = sub_1AF26D2E8(a1, a3, 3, v37, *(a1 + 584));
    }
  }

  else
  {
    v37 = 0;
    *(a1 + 584) = 0;
  }

  if (*(a1 + 1952) == 1)
  {
    v38 = v26;
    *(a1 + 1784) = *(a1 + 32);
    v39 = CFX::RG::Resource::textureDesc(v155);
    v40 = *v39;
    *(a1 + 1808) = v39[1];
    *(a1 + 1792) = v40;
    v41 = v39[2];
    v42 = v39[3];
    v43 = v39[4];
    *(a1 + 1872) = v39[5];
    *(a1 + 1856) = v43;
    *(a1 + 1840) = v42;
    *(a1 + 1824) = v41;
    v44 = v39[6];
    v45 = v39[7];
    v46 = v39[8];
    *(a1 + 1936) = v39[9];
    *(a1 + 1920) = v46;
    *(a1 + 1904) = v45;
    *(a1 + 1888) = v44;
    *(a1 + 1960) = v10;
    *(a1 + 1976) = v156;
    *(a1 + 1968) = v153;
    *(a1 + 1984) = v150;
    *(a1 + 1992) = sub_1AF235B4C(v157);
    *(a1 + 2000) = v206;
    v47 = sub_1AF256204(a2, a1 + 1784);
    CFX::RG::Pass::dependsOn(v47, v11);
    if (v25)
    {
      v48 = v47;
    }

    else
    {
      v49 = sub_1AF26D2E8(a1, a3, 1, v47, *(a1 + 2008));
      v48 = v47;
      if (!v49)
      {
        v49 = sub_1AF26D2E8(a1, a3, 2, v47, *(a1 + 2016));
      }

      v25 = v49;
    }

    v26 = v38;
  }

  else
  {
    v48 = 0;
    *(a1 + 2008) = 0u;
  }

  v142 = v48;
  if (*(a1 + 784) == 1)
  {
    *(a1 + 616) = *(a1 + 32);
    v50 = CFX::RG::Resource::textureDesc(v155);
    v51 = v50[1];
    *(a1 + 624) = *v50;
    *(a1 + 640) = v51;
    v52 = v50[5];
    v54 = v50[2];
    v53 = v50[3];
    *(a1 + 688) = v50[4];
    *(a1 + 704) = v52;
    *(a1 + 656) = v54;
    *(a1 + 672) = v53;
    v55 = v50[9];
    v57 = v50[6];
    v56 = v50[7];
    *(a1 + 752) = v50[8];
    *(a1 + 768) = v55;
    *(a1 + 720) = v57;
    *(a1 + 736) = v56;
    *(a1 + 848) = sub_1AF235B4C(v154);
    *(a1 + 856) = sub_1AF235B4C(v157);
    *(a1 + 816) = v10;
    *(a1 + 824) = v156;
    *(a1 + 832) = v206;
    *(a1 + 840) = v150;
    *(a1 + 792) = v26;
    *(a1 + 800) = v148;
    *(a1 + 808) = v28;
    *(a1 + 812) = 0;
    *(a1 + 880) = *(a1 + 600);
    *(a1 + 896) = *(a1 + 500);
    v58 = sub_1AF25B2D0(a2, (a1 + 616));
    CFX::RG::Pass::dependsOn(v58, v37);
    CFX::RG::Pass::dependsOn(v58, v24);
    CFX::RG::Pass::dependsOn(v58, v144);
    if (!v25)
    {
      v25 = sub_1AF26D2E8(a1, a3, 4, v58, *(a1 + 864));
    }
  }

  else
  {
    v58 = 0;
    *(a1 + 864) = 0;
  }

  if (*(a1 + 1384) == 1)
  {
    *(a1 + 1216) = *(a1 + 32);
    v59 = CFX::RG::Resource::textureDesc(v155);
    v60 = v59[1];
    *(a1 + 1224) = *v59;
    *(a1 + 1240) = v60;
    v61 = v59[5];
    v63 = v59[2];
    v62 = v59[3];
    *(a1 + 1288) = v59[4];
    *(a1 + 1304) = v61;
    *(a1 + 1256) = v63;
    *(a1 + 1272) = v62;
    v64 = v59[9];
    v66 = v59[6];
    v65 = v59[7];
    *(a1 + 1352) = v59[8];
    *(a1 + 1368) = v64;
    *(a1 + 1320) = v66;
    *(a1 + 1336) = v65;
    *(a1 + 1456) = sub_1AF235B4C(v154);
    *(a1 + 1464) = sub_1AF235B4C(v157);
    *(a1 + 1440) = v10;
    *(a1 + 1424) = v156;
    *(a1 + 1432) = v153;
    *(a1 + 1448) = v152;
    *(a1 + 1416) = v146;
    *(a1 + 1392) = v26;
    *(a1 + 1400) = v148;
    *(a1 + 1408) = v28;
    *(a1 + 1412) = 0;
    v67 = sub_1AF25D594(a2, (a1 + 1216));
    CFX::RG::Pass::dependsOn(v67, v24);
    if (!v25)
    {
      v25 = sub_1AF26D2E8(a1, a3, 5, v67, *(a1 + 1472));
    }
  }

  else
  {
    v67 = 0;
    *(a1 + 1472) = 0;
  }

  v151 = v10;
  v149 = a2;
  if (*(a1 + 1080) == 1)
  {
    *(a1 + 912) = *(a1 + 32);
    v68 = CFX::RG::Resource::textureDesc(v155);
    v69 = v68[1];
    *(a1 + 920) = *v68;
    *(a1 + 936) = v69;
    v70 = v68[5];
    v72 = v68[2];
    v71 = v68[3];
    *(a1 + 984) = v68[4];
    *(a1 + 1000) = v70;
    *(a1 + 952) = v72;
    *(a1 + 968) = v71;
    v73 = v68[9];
    v75 = v68[6];
    v74 = v68[7];
    *(a1 + 1048) = v68[8];
    *(a1 + 1064) = v73;
    *(a1 + 1016) = v75;
    *(a1 + 1032) = v74;
    *(a1 + 1152) = sub_1AF235B4C(v154);
    *(a1 + 1160) = sub_1AF235B4C(v157);
    *(a1 + 1112) = v153;
    *(a1 + 1120) = v156;
    *(a1 + 1136) = v10;
    *(a1 + 1128) = v147;
    *(a1 + 1144) = v206;
    *(a1 + 1088) = v26;
    *(a1 + 1096) = v148;
    *(a1 + 1104) = v28;
    *(a1 + 1108) = 0;
    *(a1 + 1184) = *(a1 + 888);
    *(a1 + 1200) = *(a1 + 788);
    v76 = sub_1AF25361C(a2, a1 + 912);
    CFX::RG::Pass::dependsOn(v76, v58);
    CFX::RG::Pass::dependsOn(v76, v24);
    CFX::RG::Pass::dependsOn(v76, v144);
    if (!v25)
    {
      v25 = sub_1AF26D2E8(a1, a3, 6, v76, *(a1 + 1168));
    }
  }

  else
  {
    v76 = 0;
    *(a1 + 1168) = 0;
  }

  v77 = v58;
  if (*(a1 + 1664) == 1)
  {
    *(a1 + 1496) = *(a1 + 32);
    v78 = CFX::RG::Resource::textureDesc(v155);
    v79 = v78[1];
    *(a1 + 1504) = *v78;
    *(a1 + 1520) = v79;
    v80 = v78[4];
    v81 = v78[5];
    v82 = v78[3];
    *(a1 + 1536) = v78[2];
    *(a1 + 1584) = v81;
    *(a1 + 1568) = v80;
    *(a1 + 1552) = v82;
    v83 = v78[8];
    v84 = v78[9];
    v85 = v78[7];
    *(a1 + 1600) = v78[6];
    *(a1 + 1648) = v84;
    *(a1 + 1632) = v83;
    *(a1 + 1616) = v85;
    *(a1 + 1744) = sub_1AF235B4C(v154);
    *(a1 + 1752) = sub_1AF235B4C(v157);
    *(a1 + 1720) = v151;
    *(a1 + 1704) = v156;
    *(a1 + 1712) = v153;
    *(a1 + 1728) = v152;
    *(a1 + 1736) = v150;
    *(a1 + 1696) = v145;
    *(a1 + 1672) = v26;
    *(a1 + 1680) = v148;
    *(a1 + 1688) = v28;
    *(a1 + 1692) = 0;
    v86 = sub_1AF25FA84(v149, (a1 + 1496));
    CFX::RG::Pass::dependsOn(v86, v24);
    v87 = v67;
    if (!v25)
    {
      v25 = sub_1AF26D2E8(a1, a3, 7, v86, *(a1 + 1760));
    }
  }

  else
  {
    v87 = v67;
    v86 = 0;
    *(a1 + 1760) = 0;
  }

  v160 = *(a1 + 32);
  v88 = CFX::RG::Resource::textureDesc(v155);
  v89 = *v88;
  v162 = v88[1];
  v161 = v89;
  v90 = v88[2];
  v91 = v88[3];
  v92 = v88[4];
  v166 = v88[5];
  v165 = v92;
  v164 = v91;
  v163 = v90;
  v93 = v88[6];
  v94 = v88[7];
  v95 = v88[8];
  v170 = v88[9];
  v169 = v95;
  v168 = v94;
  v167 = v93;
  *&v171 = v153;
  *(&v171 + 1) = v143;
  v172 = *(a1 + 2008);
  v96 = *(a1 + 864);
  *&v173 = *(a1 + 584);
  *(&v173 + 1) = v96;
  *&v174 = *(a1 + 1168);
  *(&v174 + 1) = v150;
  *&v175 = v156;
  *(&v175 + 1) = v147;
  v97 = *(a1 + 1472);
  *&v176 = v146;
  *(&v176 + 1) = v97;
  v98 = *(a1 + 1760);
  *&v177 = v145;
  *(&v177 + 1) = v98;
  *&v178 = v151;
  v99 = sub_1AF23EB8C(v149, &v160);
  CFX::RG::Pass::dependsOn(v99, v142);
  CFX::RG::Pass::dependsOn(v99, v37);
  CFX::RG::Pass::dependsOn(v99, v77);
  CFX::RG::Pass::dependsOn(v99, v76);
  CFX::RG::Pass::dependsOn(v99, v87);
  CFX::RG::Pass::dependsOn(v99, v86);
  v100 = sub_1AF23EB7C(v99);
  if (!v25)
  {
    v25 = sub_1AF26D2E8(a1, a3, 9, v99, v100);
  }

  if (*(a1 + 56) == 1)
  {
    v160 = *(a1 + 32);
    v101 = CFX::RG::Resource::textureDesc(v100);
    v102 = v101[1];
    v161 = *v101;
    v162 = v102;
    v103 = v101[4];
    v104 = v101[5];
    v105 = v101[3];
    v163 = v101[2];
    v166 = v104;
    v165 = v103;
    v164 = v105;
    v106 = v101[8];
    v107 = v101[9];
    v108 = v101[7];
    v167 = v101[6];
    v170 = v107;
    v169 = v106;
    v168 = v108;
    v109 = CFX::RG::Resource::textureDesc(v151);
    v110 = v109[9];
    v112 = v109[6];
    v111 = v109[7];
    v179 = v109[8];
    v180 = v110;
    v177 = v112;
    v178 = v111;
    v113 = v151;
    v114 = v109[1];
    v171 = *v109;
    v172 = v114;
    v115 = v109[4];
    v116 = v109[5];
    v117 = v109[3];
    v173 = v109[2];
    v176 = v116;
    v175 = v115;
    v174 = v117;
    v118 = CFX::RG::Resource::textureDesc(v152);
    v119 = v118[1];
    v181 = *v118;
    v182 = v119;
    v120 = v118[5];
    v122 = v118[2];
    v121 = v118[3];
    v185 = v118[4];
    v186 = v120;
    v183 = v122;
    v184 = v121;
    v123 = v118[9];
    v125 = v118[6];
    v124 = v118[7];
    v189 = v118[8];
    v190 = v123;
    v187 = v125;
    v188 = v124;
    v126 = CFX::RG::Resource::textureDesc(v100);
    v127 = v126[1];
    v191 = *v126;
    v192 = v127;
    v128 = v126[2];
    v129 = v126[3];
    v130 = v126[5];
    v195 = v126[4];
    v196 = v130;
    v193 = v128;
    v194 = v129;
    v131 = v126[6];
    v132 = v126[7];
    v133 = v126[9];
    v199 = v126[8];
    v200 = v133;
    v197 = v131;
    v198 = v132;
    v201 = v100;
    v202 = v151;
    v203 = v152;
    CopyPass = sub_1AF244990(a3, v149[4], &v160);
    CFX::RG::Pass::dependsOn(CopyPass, v99);
    v135 = sub_1AF244988(CopyPass);
    if (v25)
    {
      goto LABEL_49;
    }
  }

  else
  {
    CFX::RG::TextureDescriptorReference::finalColor(v158);
    CFX::RG::TextureDescriptorReference::withPixelFormat(v158, MTLPixelFormatRGBA16Float, v159);
    CFX::RG::TextureDescriptorReference::withSampleCount(v159, 1, &v160);
    v135 = sub_1AF233CC8(a3, "Output copy", &v160);
    v160 = v100;
    LODWORD(v161) = 0;
    *(&v161 + 1) = v135;
    *&v162 = 0x100000000;
    CopyPass = CFX::RG::makeCopyPass(a3, "copy", &v160);
    CFX::RG::Pass::dependsOn(CopyPass, v99);
    v113 = v151;
    if (v25)
    {
      goto LABEL_49;
    }
  }

  v25 = sub_1AF26D2E8(a1, a3, 10, CopyPass, v152);
  if (!v25)
  {
    v136 = sub_1AF235B4C(v154);
    v25 = sub_1AF26D2E8(a1, a3, 8, v154, v136);
  }

LABEL_49:
  CFX::RG::Pass::dependsOn(v157, CopyPass);
  sub_1AF235B04(v157, v113);
  CFX::RG::Pass::dependsOn(v154, CopyPass);
  v137 = sub_1AF23EB84(v99);
  sub_1AF235B04(v154, v137);
  CFX::RG::TextureDescriptorReference::finalColor(v158);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v158, MTLPixelFormatRGBA16Float, v159);
  CFX::RG::TextureDescriptorReference::withSampleCount(v159, 1, &v160);
  v138 = sub_1AF233CC8(a3, "Resource copy", &v160);
  v139 = v138;
  if (v25)
  {
    v140 = v25;
  }

  else
  {
    v140 = v135;
  }

  v160 = v140;
  LODWORD(v161) = 0;
  *(&v161 + 1) = v138;
  *&v162 = 0x100000000;
  v141 = CFX::RG::makeCopyPass(a3, "copy", &v160);
  CFX::RG::Pass::dependsOn(v141, v154);
  CFX::RG::Pass::dependsOn(v141, v157);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v160, *(a1 + 8), 27036, 1656467160);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v160, v139, v141);
  *(a1 + 24) = 0;
}

CFX::RG::Resource *sub_1AF26D2E8(uint64_t a1, uint64_t *a2, int a3, CFX::RG::Pass *a4, uint64_t a5)
{
  if (*(a1 + 2040) != a3)
  {
    return 0;
  }

  CFX::RG::TextureDescriptorReference::finalColor(v12);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v12, MTLPixelFormatRGBA16Float, v13);
  CFX::RG::TextureDescriptorReference::withSizeFactor(v13, *(a1 + 60), v14);
  CFX::RG::TextureDescriptorReference::withSampleCount(v14, 1, &v15);
  v9 = sub_1AF233CC8(a2, "DebugCopy", &v15);
  *&v15 = a5;
  DWORD2(v15) = 0;
  v16 = v9;
  v17 = 0x100000000;
  CopyPass = CFX::RG::makeCopyPass(a2, "copy", &v15);
  CFX::RG::Pass::dependsOn(CopyPass, a4);
  return v9;
}

uint64_t sub_1AF26D3D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = CFX::RG::Subgraph::Subgraph(a1, "PostRender");
  *v8 = &unk_1F24EB920;
  *(v8 + 24) = 0;
  *(v8 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  return a1;
}

uint64_t sub_1AF26D450(uint64_t a1)
{
  *a1 = &unk_1F24EB920;

  return a1;
}

void sub_1AF26D4A0(uint64_t a1)
{
  *a1 = &unk_1F24EB920;

  JUMPOUT(0x1B271C6B0);
}

unint64_t sub_1AF26D528(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 40);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v11, v15, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = 0x9DDFEA08EB382D69 * (v2 ^ *(*(&v11 + 1) + 8 * i));
        v2 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v9 >> 47) ^ v9)) >> 47));
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v11, v15, 16);
    }

    while (v6);
  }

  return v2;
}

__n128 sub_1AF26D644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36[0] = *(a2 + 16);
  v36[1] = 0;
  v36[2] = v37;
  if (objc_msgSend_count(*(a1 + 40), a2, a3, a4))
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v7, v9, v8);
      v33[0] = objc_msgSend_nodeRef(v11, v12, v13, v14);
      sub_1AF240F04(v36, v33);
      v9 = v10;
    }

    while (objc_msgSend_count(*(a1 + 40), v15, v16, v17) > v10++);
  }

  v33[0] = *(a1 + 32);
  v33[1] = v36;
  v34 = 3;
  v35 = 0;
  sub_1AF240DBC(a3, a2, v33, &v30);
  v20 = *(a3 + 8);
  v37[0] = *a3;
  v19 = v37[0];
  v37[1] = v20;
  v21 = sub_1AF23498C(v37, 0x1D8u, 8u);
  v22 = CFX::RG::Pass::Pass(v21, v19, v20, "Register probes", 1, 0, 0);
  *v22 = &unk_1F24EB978;
  *(v22 + 53) = v19;
  *(v22 + 54) = v20;
  v23 = (v22 + 456);
  *(v22 + 57) = 0;
  *(v22 + 58) = 0;
  *(v22 + 55) = 0;
  *(v22 + 56) = v22 + 456;
  v24 = *(a3 + 192);
  v25 = v24 + 1;
  if (v24 + 1 > *(a3 + 196))
  {
    sub_1AF2348E0(a3 + 176, 1, 0);
    v24 = *(a3 + 192);
    v25 = v24 + 1;
  }

  *(*(a3 + 200) + 8 * v24) = v21;
  *(a3 + 192) = v25;
  if (v31)
  {
    v26 = v32;
    v27 = 8 * v31;
    do
    {
      v28 = *v26++;
      v37[0] = *(v28 + 58);
      sub_1AF235000(v21 + 53, v37);
      CFX::RG::Pass::dependsOn(v21, v28);
      v27 -= 8;
    }

    while (v27);
  }

  result = *(a1 + 40);
  *v23 = result;
  return result;
}

void sub_1AF26D7F0(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24EB978;
  sub_1AF2624F0(a1 + 424);

  CFX::RG::Pass::~Pass(a1);
}

void sub_1AF26D848(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24EB978;
  sub_1AF2624F0(a1 + 424);
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF26D8B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    v11[8] = v4;
    v11[9] = v5;
    v7 = result;
    v8 = CFX::RG::RendererPassArguments::commandBuffer((a4 + 8));
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF26D944;
    v11[3] = &unk_1E7A7DAC0;
    v11[4] = v7;
    v11[5] = a2;
    return objc_msgSend_addCompletedHandler_(v8, v9, v11, v10);
  }

  return result;
}

CFX::RG::Temporal *sub_1AF26D944(CFX::RG::Temporal *result, __n128 a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v66 = result;
  v2 = *(result + 4);
  if (*(v2 + 440))
  {
    v3 = 0;
    a2.n128_u64[0] = 134218496;
    v64 = a2;
    v65 = *(result + 4);
    do
    {
      v4 = *(*(v2 + 448) + 8 * v3);
      v5 = *(*(v66 + 5) + 24);
      v6 = CFX::RG::Temporal::currentFrame(result);
      CFX::GPUResourceManager::getBuffer(v5, v4, v6);
      v67 = v7;
      CPUPointer = CFXBufferSliceGetCPUPointer(v8, v7, v9, v10);
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = *CPUPointer;
        v16 = CPUPointer[1];
        v17 = CPUPointer[2];
        *buf = v64.n128_u32[0];
        v76 = v15;
        v77 = 2048;
        v78 = v16;
        v79 = 2048;
        v80 = v17;
        _os_log_impl(&dword_1AF0CE000, v12, OS_LOG_TYPE_INFO, "Info: Irradiance: %f, %f, %f", buf, 0x20u);
      }

      v18 = objc_msgSend_objectAtIndexedSubscript_(*(v2 + 456), v13, v3, v14, *&v64);
      v22 = objc_msgSend_nodeRef(v18, v19, v20, v21);
      v25 = objc_msgSend_objectAtIndexedSubscript_(*(v2 + 456), v23, v3, v24);
      v29 = objc_msgSend_light(v25, v26, v27, v28);
      v33 = objc_msgSend_lightRef(v29, v30, v31, v32);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v34 = *(v2 + 464);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v68, v74, 16);
      if (v36)
      {
        v40 = v36;
        v41 = *v69;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v69 != v41)
            {
              objc_enumerationMutation(v34);
            }

            v43 = *(*(&v68 + 1) + 8 * i);
            v44 = objc_msgSend_light(v43, v37, v38, v39);
            v48 = objc_msgSend_lightRef(v44, v45, v46, v47);
            v52 = objc_msgSend_nodeRef(v43, v49, v50, v51);
            sub_1AF19E1CC(v33, v22, v48, v52, 3u, CPUPointer);
          }

          v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v68, v74, 16);
        }

        while (v40);
      }

      if (v67 >> 34 <= 0x1A)
      {
        v53 = sub_1AF0D5194();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF0960(v72, &v73, v53);
        }
      }

      v54 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v37, CPUPointer, 108);
      v2 = v65;
      v57 = objc_msgSend_objectAtIndexedSubscript_(*(v65 + 456), v55, v3, v56);
      v61 = objc_msgSend_light(v57, v58, v59, v60);
      result = objc_msgSend_set_sphericalHarmonics_(v61, v62, v54, v63);
      ++v3;
    }

    while (v3 < *(v65 + 440));
  }

  return result;
}

void *sub_1AF26DBE0(uint64_t a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "Jittering");
  *result = &unk_1F24EB9B0;
  result[3] = a2;
  result[4] = 0;
  return result;
}

uint64_t sub_1AF26DC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

uint64_t sub_1AF26DCA8@<X0>(uint64_t a1@<X8>)
{
  v3[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v3, 6893, 9273, 1656467160);
  return sub_1AF2696E4(a1, v3, 1);
}

unint64_t sub_1AF26DD24(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1AF1309BC(*(a1 + 24));
  v4 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 32) = ++v4;
  }

  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v2)))) ^ ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v2)))) >> 47));
}

void sub_1AF26DD8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_1AF1309BC(*(a1 + 24)))
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v27, 9273, 9273, 1656467160);
    CFX::RG::ResourceReference::ResourceReference(&v28, v27);
    v6 = sub_1AF24736C(a3, "Jittering input color", &v28);
    v7 = CFX::RG::Resource::constTextureDesc(v6);
    v8 = v7[1];
    v28 = *v7;
    v29 = v8;
    v9 = v7[5];
    v11 = v7[2];
    v10 = v7[3];
    v32 = v7[4];
    v33 = v9;
    v30 = v11;
    v31 = v10;
    v12 = v7[9];
    v14 = v7[6];
    v13 = v7[7];
    v36 = v7[8];
    v37 = v12;
    v34 = v14;
    v35 = v13;
    v15 = sub_1AF233CC8(a3, "Jittering output color", &v28);
    v16 = CFX::RG::Resource::constTextureDesc(v6);
    CFX::RG::TextureDescriptorReference::withSampleCount(v16, 1, &v28);
    v18 = CFX::RG::copyIfNeeded(a3, v6, 0, &v28, "Jittering color input resolve", v17);
    v19 = *(a2 + 32);
    v20 = *(a1 + 24);
    *&v28 = "Jittering";
    *(&v28 + 1) = v20;
    LOWORD(v29) = 0;
    *(&v29 + 1) = v18;
    *&v30 = v15;
    v21 = sub_1AF241BA4(a3, v19, &v28);
    if (sub_1AF1309E8(*(a1 + 24)))
    {
      v22 = *(v21 + 24);
      v23 = *v22;
      if (*v22)
      {
        v24 = v22 + 1;
        v25 = -25147;
        do
        {
          v25 = 403 * (v25 ^ v23);
          v26 = *v24++;
          v23 = v26;
        }

        while (v26);
      }

      else
      {
        v25 = -25147;
      }

      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v28, *(a1 + 8), v25, 1656467160);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v28, v15, v21);
    }
  }

  else
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v28, 9273, 9273, 1656467160);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v27, *(a1 + 8), 64484, 1656467160);
    CFX::RG::RenderGraphBuilder::aliasResourceReference(a3, v28, v27);
  }
}

void *sub_1AF26DF84(uint64_t a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "PathTracer");
  *result = &unk_1F24EBA08;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF26DFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

uint64_t sub_1AF26E04C@<X0>(uint64_t a1@<X8>)
{
  v8[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 53296, 9273, 1893898584);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v4, 53296, 9273, 1490954098);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v5, 53296, 9273, -287492009);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v6, 53296, 9273, 1251382574);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v7, 53296, 9273, -1170177454);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v8, 53296, 9273, -797957750);
  return sub_1AF2696E4(a1, &v3, 6);
}

void sub_1AF26E14C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_1AF130BD8(*(a1 + 24), 1);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, 1251382574);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v22 = sub_1AF24736C(a3, "PathTracer input emission", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, 1490954098);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v21 = sub_1AF24736C(a3, "PathTracer input normals", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, 1893898584);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v20 = sub_1AF24736C(a3, "PathTracer input albedo", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, -287492009);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v19 = sub_1AF24736C(a3, "PathTracer input roughmetalTarget", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, -1170177454);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v18 = sub_1AF24736C(a3, "PathTracer input velocityTarget", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, -797957750);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v6 = sub_1AF24736C(a3, "PathTracer input depthTarget", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, -495228831);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v7 = sub_1AF24736C(a3, "HybridRenderer input clearCoat", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, -965507924);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v8 = sub_1AF24736C(a3, "HybridRenderer input subsurface", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, 2057617157);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v9 = sub_1AF24736C(a3, "HybridRenderer input transmission", &v24);
  v24 = *(a1 + 24);
  LOWORD(v25) = 15;
  v10 = sub_1AF24983C(a3, a2, &v24);
  if ((atomic_load_explicit(&qword_1ED73AA78, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF09B0();
  }

  if (byte_1ED73AA70)
  {
    v11 = 0xF00CF1A885CF4FA4;
  }

  else
  {
    v11 = 0;
  }

  v12 = CFX::RG::RenderGraphBuilder::passesMatchingClassIdentifier(a3, v11, *(a2 + 16), &v24);
  if (v25)
  {
    v13 = v26;
    v14 = 8 * v25;
    do
    {
      v15 = *v13++;
      v12 = CFX::RG::Pass::dependsOn(v10, v15);
      v14 -= 8;
    }

    while (v14);
  }

  v24 = *(a1 + 24);
  v25 = CFX::RG::ResourceIdentifier::finalColor(v12);
  v16 = sub_1AF24836C(a3, a2, &v24);
  CFX::RG::Pass::dependsOn(v16, v10);
  sub_1AF248314(v16, v6, 0);
  sub_1AF248314(v16, v21, 1u);
  sub_1AF248314(v16, v20, 2u);
  sub_1AF248314(v16, v19, 3u);
  sub_1AF248314(v16, v18, 4u);
  sub_1AF248314(v16, v22, 5u);
  sub_1AF248314(v16, v7, 6u);
  sub_1AF248314(v16, v8, 7u);
  sub_1AF248314(v16, v9, 8u);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v24, *(a1 + 8), 21755, 1656467160);
  v17 = sub_1AF248360(v16);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v24, v17, v16);
}

uint64_t *sub_1AF26E55C(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, CFX::RG::RenderGraphBuilder **a6, uint64_t a7)
{
  v14 = sub_1AF1BB260(*(a4 + 16));
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v72 = a6;
  v16 = *a5;
  v17 = *(a5 + 56);
  v18 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *a5);
  v66 = *v18;
  v19 = *(v18 + 4);
  v93 = *(v18 + 12);
  v94 = *(v18 + 20);
  v65 = v19;
  *(a4 + 8) = vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v19), xmmword_1AFE42F50), 0x30uLL)));
  v20 = (*(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *a5) + 12) >> 40) & 0xFLL;
  if (v20 == 4 || v20 == 2)
  {
    v22 = sub_1AF12F398(a3);
    if (v22)
    {
      v23 = *(v22 + 32);
      if (v23)
      {
        if (v23(a3))
        {
          *&v78 = a3;
          *(&v78 + 1) = v16;
          v79 = *(a5 + 8);
          v17 = sub_1AF243B18(a1, &v78, v17);
          v16 = *(v17 + 57);
        }
      }
    }
  }

  log = v15;
  v24 = CFX::RG::Resource::constTextureDesc(v16);
  CFX::RG::TextureDescriptorReference::withSampleCount(v24, 1, &v78);
  v26 = CFX::RG::copyIfNeeded_r(a1, v16, v17, &v78, "PostProcess color input resolve", v25);
  v28 = v27;
  v29 = *(a5 + 16);
  if (v29)
  {
    if (*(a4 + 2))
    {
      goto LABEL_17;
    }
  }

  else
  {
    *(a4 + 2) = 0;
  }

  if (*(a4 + 3) == 1)
  {
LABEL_17:
    v67 = a7;
    v31 = *(a5 + 56);
    v32 = CFX::RG::Resource::constTextureDesc(v29);
    CFX::RG::TextureDescriptorReference::withSampleCount(v32, 1, &v78);
    v34 = CFX::RG::copyIfNeeded(a1, v29, v31, &v78, "PostProcess depth input resolve", v33);
    if (*(a4 + 2))
    {
      CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v78);
      v35 = *(a4 + 16);
      v81 = a3;
      v82 = v35;
      v36 = *(a5 + 40);
      v83 = *a5;
      v84 = v36;
      v37 = *(a5 + 16);
      v86 = 0;
      v87 = 0;
      v85 = v37;
      v88 = *(a5 + 24);
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v28 = sub_1AF2678F0(a2, &v78, v28);
      v26 = v91;
    }

    a7 = v67;
    goto LABEL_21;
  }

  v34 = 0;
LABEL_21:
  if (*(a4 + 5) == 1)
  {
    v38 = sub_1AF15C3C4(log);
    *&v78 = a3;
    *(&v78 + 1) = v26;
    v79 = *(a5 + 48);
    *v80 = v38;
    v28 = sub_1AF246708(a1, &v78);
    v26 = *(v28 + 60);
  }

  if (*(a4 + 6) == 1)
  {
    v39 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v26);
    v40 = *(v39 + 16);
    v76 = *v39;
    v77 = v40;
    v41 = *(a4 + 16);
    *&v78 = a3;
    *(&v78 + 1) = v41;
    CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v79, &v76);
    v83 = v26;
    v84 = 0;
    v28 = sub_1AF23D550(a1, a2, &v78, v28);
    v26 = *(v28 + 78);
  }

  v78 = *a4;
  v79 = *(a4 + 16);
  sub_1AF238B24(&v76, a3, &v78);
  if (sub_1AF238B28(&v76))
  {
    v75[0] = a3;
    v75[1] = v26;
    v75[2] = a7;
    v30 = sub_1AF239D74(a1, v75, a4, &v76);
    CFX::RG::Pass::dependsOn(v30, v28);
    v68 = v34;
    if (*(a4 + 3) == 1)
    {
      *&v78 = a3;
      *(&v78 + 1) = v26;
      v42 = *(a4 + 16);
      v79 = v34;
      *v80 = v42;
      *&v80[8] = sub_1AF15C2CC(log);
      *&v80[16] = 0;
      v43 = sub_1AF23CB30(a2, &v78, v28, 0);
      v44 = *(v43 + 80);
      sub_1AF239C9C(v30, v44);
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    if (*(a4 + 4) == 1)
    {
      v45 = sub_1AF15C994(log);
      if (!v45)
      {
        loga = sub_1AF0D5194();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF09E8(loga);
        }
      }

      v46 = sub_1AF160FEC(v45);
      v47 = sub_1AF163080(v45);
      v48 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v26);
      v49 = *(v48 + 16);
      v73 = *v48;
      v74 = v49;
      if (v44)
      {
        v50 = v44;
      }

      else
      {
        v50 = v26;
      }

      *&v78 = a3;
      *(&v78 + 1) = v50;
      *&v79 = v46;
      *v80 = v47;
      CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v80[8], &v73);
      v85 = 0;
      if (v43)
      {
        v51 = v43;
      }

      else
      {
        v51 = v28;
      }

      v43 = sub_1AF242D84(a1, a2, &v78, v51);
      v44 = *(v43 + 63);
      logb = v43;
    }

    else
    {
      logb = 0;
    }

    if (*(a4 + 1) == 1)
    {
      v52 = *(a4 + 16);
      *&v78 = a3;
      *(&v78 + 1) = v52;
      if (v44)
      {
        v53 = v44;
      }

      else
      {
        v53 = v26;
      }

      v79 = v53;
      *v80 = v66;
      *&v80[4] = v65;
      *&v80[12] = v93;
      *&v80[20] = v94;
      if (v43)
      {
        v54 = v43;
      }

      else
      {
        v54 = v28;
      }

      v55 = sub_1AF237040(a1, a2, &v78, v54);
    }

    else
    {
      v55 = 0;
    }

    if (*(a4 + 7) == 1)
    {
      v56 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v26);
      v57 = *(v56 + 16);
      v73 = *v56;
      v74 = v57;
      v58 = *(a4 + 16);
      *&v78 = a3;
      *(&v78 + 1) = v58;
      CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v79, &v73);
      v59 = v44 ? v44 : v26;
      v83 = v55;
      v84 = v59;
      v85 = 0;
      v60 = v43 ? v43 : v28;
      v28 = sub_1AF2382EC(a1, a2, &v78, v60);
      v26 = *(v28 + 61);
      CFX::RG::Pass::dependsOn(v30, v28);
      if (*(a4 + 1) == 1)
      {
        CFX::RG::Pass::dependsOn(v28, v55);
      }
    }

    if (*(a4 + 1) == 1 && (*(a4 + 7) & 1) == 0)
    {
      sub_1AF239CE4(v30, v55[101]);
      CFX::RG::Pass::dependsOn(v30, v55);
    }

    if (logb && *(a4 + 4) == 1 && (*(a4 + 7) & 1) == 0)
    {
      sub_1AF239D2C(v30, logb[63].isa);
    }

    v61 = CFX::RG::Resource::textureDesc(v26);
    CFX::RG::TextureDescriptorReference::withSampleCount(v61, 1, &v78);
    v63 = CFX::RG::copyIfNeeded(a1, v26, v28, &v78, 0, v62);
    sub_1AF239C0C(v30, v63);
    sub_1AF239C54(v30, v68);
    v26 = v30[68];
  }

  else
  {
    v30 = v28;
  }

  *v72 = v26;
  return v30;
}

void *sub_1AF26EB60(uint64_t a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "PostProcess");
  *result = &unk_1F24EBA60;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF26EBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

void sub_1AF26EC28(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AF23891C(v4, *(a1 + 24), 0);
  *a2 = 0;
  a2[1] = a2 + 2;
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 9273, 9273, 1656467160);
  sub_1AF269758(a2, &v3);
  if ((v5 & 1) != 0 || v6 == 1)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 9273, 9273, -797957750);
    sub_1AF269758(a2, &v3);
  }

  if (v7 == 1)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 9273, 9273, -1170177454);
    sub_1AF269758(a2, &v3);
  }

  if (v5 == 1)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 9273, 9273, 1348742528);
    sub_1AF269758(a2, &v3);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 9273, 9273, -31245996);
    sub_1AF269758(a2, &v3);
  }
}

void sub_1AF26ED48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 4))
  {
    free(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1AF26ED74(uint64_t a1)
{
  v2 = sub_1AF12DDCC(*(a1 + 24));
  v3 = sub_1AF1D09F8(v2);
  sub_1AF23891C(&v18, *(a1 + 24), 0);
  v4 = *(a1 + 24);
  v13 = v18;
  v14 = v19;
  sub_1AF238B24(v15, v4, &v13);
  v5 = *(a1 + 8);
  v6 = sub_1AF12F398(*(a1 + 24));
  if (v6)
  {
    v7 = *(v6 + 32);
    if (v7)
    {
      v7 = (v7)(*(a1 + 24));
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v16)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v16)));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v3)));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v17)))) >> 47));
}

void sub_1AF26EE9C(uint64_t a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v6 = sub_1AF12F10C(*(a1 + 24));
  if (v6 && sub_1AF1BB260(v6))
  {
    v22 = 0;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    CFX::RG::ResourceIdentifier::ResourceIdentifier(v15, 9273, 9273, 1656467160);
    CFX::RG::ResourceReference::ResourceReference(v17, v15[0]);
    v18 = sub_1AF24736C(a3, "Post process input color", v17);
    v16 = 0;
    if (sub_1AF130E10(*(a1 + 24), &v16))
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(v15, 9273, 9273, 1673244779);
      CFX::RG::ResourceReference::ResourceReference(v17, v15[0]);
      *&v19 = sub_1AF24736C(a3, "Post process input color1", v17);
    }

    sub_1AF23891C(v15, *(a1 + 24), 0);
    if ((v15[0] & 0x10000) != 0 || BYTE3(v15[0]) == 1)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v14, 9273, 9273, -797957750);
      CFX::RG::ResourceReference::ResourceReference(v17, v14);
      *(&v19 + 1) = sub_1AF24736C(a3, "Post process input depth", v17);
      if ((v15[0] & 0x10000) != 0)
      {
        CFX::RG::ResourceIdentifier::ResourceIdentifier(&v14, 9273, 9273, 1348742528);
        CFX::RG::ResourceReference::ResourceReference(v17, v14);
        *&v20 = sub_1AF24736C(a3, "Post process input normal roughness", v17);
        CFX::RG::ResourceIdentifier::ResourceIdentifier(&v14, 9273, 9273, -31245996);
        CFX::RG::ResourceReference::ResourceReference(v17, v14);
        *(&v20 + 1) = sub_1AF24736C(a3, "Post process input albedo metalness", v17);
        CFX::RG::ResourceIdentifier::ResourceIdentifier(&v14, 9273, 9273, 145493432);
        CFX::RG::ResourceReference::ResourceReference(v17, v14);
        *&v21 = sub_1AF24736C(a3, "Post process input radiance AO", v17);
      }
    }

    if (BYTE5(v15[0]) == 1)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v14, 9273, 9273, -1170177454);
      CFX::RG::ResourceReference::ResourceReference(v17, v14);
      *(&v21 + 1) = sub_1AF24736C(a3, "Post process input velocity", v17);
    }

    v17[0] = 0;
    v7 = sub_1AF26E55C(a3, a2, *(a1 + 24), v15, &v18, v17, 0);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      v10 = *v9;
      if (*v9)
      {
        v11 = v9 + 1;
        v12 = -25147;
        do
        {
          v12 = 403 * (v12 ^ v10);
          v13 = *v11++;
          v10 = v13;
        }

        while (v13);
      }

      else
      {
        v12 = -25147;
      }

      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v14, *(a1 + 8), v12, 1656467160);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v14, v17[0], v8);
    }
  }
}

void *sub_1AF26F19C(uint64_t a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "RayTracer");
  *result = &unk_1F24EBAB8;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF26F1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

uint64_t sub_1AF26F264@<X0>(CFX::RG::ResourceIdentifier *a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = CFX::RG::ResourceIdentifier::finalColor(a1);
  return sub_1AF2696E4(a2, v4, 1);
}

void sub_1AF26F2D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1AF130BD8(*(a1 + 24), 1);
  v14 = *(a1 + 24);
  LOWORD(v15) = 15;
  v6 = sub_1AF24983C(a3, a2, &v14);
  if ((atomic_load_explicit(&qword_1ED73AA88, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF0A6C();
  }

  if (byte_1ED73AA80)
  {
    v7 = 0xF00CF1A885CF4FA4;
  }

  else
  {
    v7 = 0;
  }

  v8 = CFX::RG::RenderGraphBuilder::passesMatchingClassIdentifier(a3, v7, *(a2 + 16), &v14);
  if (v15)
  {
    v9 = v16;
    v10 = 8 * v15;
    do
    {
      v11 = *v9++;
      v8 = CFX::RG::Pass::dependsOn(v6, v11);
      v10 -= 8;
    }

    while (v10);
  }

  v14 = *(a1 + 24);
  v15 = CFX::RG::ResourceIdentifier::finalColor(v8);
  v12 = sub_1AF249300(a3, a2, &v14);
  CFX::RG::Pass::dependsOn(v12, v6);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v14, *(a1 + 8), 29994, 1656467160);
  v13 = sub_1AF2492F8(v12);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v14, v13, v12);
}