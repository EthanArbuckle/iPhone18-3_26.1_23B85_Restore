void *sub_1AF26F42C(uint64_t a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "Remote");
  *result = &unk_1F24EBB10;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF26F478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

CFX::RG::ResourceIdentifier *sub_1AF26F4F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  result = sub_1AF131088(*(a1 + 24));
  if (result)
  {
    v4[0] = CFX::RG::ResourceIdentifier::finalColor(result);
    return sub_1AF2696E4(a2, v4, 1);
  }

  else
  {
    *a2 = 0;
    a2[1] = a2 + 2;
  }

  return result;
}

void sub_1AF26F584(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = sub_1AF131088(*(a1 + 24));
  v6 = sub_1AF12E2A0(*(a1 + 24));
  v7 = sub_1AF13103C(*(a1 + 24));
  if ((v6 & 1) != 0 || v7)
  {
    v9 = sub_1AF12F10C(*(a1 + 24));
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v11 = sub_1AF12FAE0(*(a1 + 24));
    *&v41 = *(a1 + 24);
    BYTE8(v41) = 1;
    LOBYTE(v46) = 0;
    BYTE8(v47) = 0;
    v43 = 0;
    v44 = 0;
    v42 = v10;
    *&v48[1] = xmmword_1AFE42EB0;
    LOBYTE(v48[3]) = sub_1AF12FAD0(v41);
    BYTE1(v48[3]) = sub_1AF130848(*(a1 + 24));
    *&v49 = 8;
    DWORD2(v49) = 1;
    WORD6(v49) = v11;
    v12 = sub_1AF23BCB4(a3, &v41, "MainCulling");
    v13 = *(a1 + 24);
    v14 = sub_1AF23B940(v12);
    *&v41 = v13;
    *(&v41 + 1) = -1;
    v42 = v14;
    LOBYTE(v43) = v6;
    v15 = sub_1AF268A08(a3, &v41, v12);
    sub_1AF250334(*(a1 + 24), &v41);
    LOWORD(v43) = 257;
    BYTE2(v43) = 0;
    *(&v43 + 3) = v6;
    v44 = sub_1AF23B940(v12);
    v45 = 0;
    v47 = 0u;
    memset(v48, 0, sizeof(v48));
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v46 = -1;
    v52 = 0;
    v8 = sub_1AF24EA74(a3, &v41);
    *((*(*v8 + 32))(v8) + 281) = v6;
    CFX::RG::Pass::dependsOn(v8, v15);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v8 = 0;
    if (!v5)
    {
      return;
    }
  }

  CFX::RG::TextureDescriptorReference::finalColor(&v41);
  v16 = sub_1AF12E2AC(*(a1 + 24));
  v20 = objc_msgSend_sampleCount(v16, v17, v18, v19);
  CFX::RG::TextureDescriptorReference::withSampleCount(&v41, v20, v40);
  v21 = sub_1AF233CC8(a3, "REMOTE COLOR OUTPUT", v40);
  *&v22 = CFX::RG::TextureDescriptorReference::withPixelFormat(&v41, MTLPixelFormatDepth32Float, &v30).n128_u64[0];
  v26 = objc_msgSend_sampleCount(v16, v23, v24, v25, v22);
  CFX::RG::TextureDescriptorReference::withSampleCount(&v30, v26, v40);
  v36 = v40[6];
  v37 = v40[7];
  v38 = v40[8];
  v39 = v40[9];
  v32 = v40[2];
  v33 = v40[3];
  v34 = v40[4];
  v35 = v40[5];
  v30 = v40[0];
  v31 = v40[1];
  v27 = sub_1AF233CC8(a3, "REMOTE DEPTH OUTPUT", &v30);
  v28 = *(a1 + 24);
  *&v30 = "Remote Clear Pass";
  *(&v30 + 1) = v28;
  LOWORD(v31) = 0;
  v29 = sub_1AF26F8E4(a3, &v30);
  CFX::RG::Pass::renderTo(v29, v21, 0x100000002, 0);
  CFX::RG::Pass::renderTo(v29, v27, 0x200000002, -1);
  if (v8)
  {
    CFX::RG::Pass::dependsOn(v29, v8);
  }

  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v30, *(a1 + 8), 9273, 1656467160);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v30, v21, v29);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v30, *(a1 + 8), 9273, -797957750);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v30, v27, v29);
}

uint64_t sub_1AF26F8E4(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[0] = sub_1AF26F954(v6[0], v4, v6, a2);
  sub_1AF235000(a1 + 22, v6);
  return v6[0];
}

uint64_t sub_1AF26F954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_1AF23498C(v8, 0x1D0u, 8u);
  return sub_1AF24D5CC(v6, *a3, a3[1], a4);
}

uint64_t sub_1AF26F9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "Forward");
  sub_1AF26FA78(a2, &v7);
  sub_1AF26FAE4(a2, &v7);
  v3 = malloc_type_malloc(0x28uLL, 0xBBD05BDCuLL);
  v3[4] = -1;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *v3 = v4;
  *(v3 + 1) = v4;
  v8 = sub_1AF26DBE0(v3, v7);
  sub_1AF1576F0(a2 + 8, &v8);
  v5 = sub_1AF26FB44(a2, &v7);
  result = sub_1AF26FBA4(a2, &v7);
  *(result + 24) = *(v5 + 4);
  *(a2 + 25) = 1;
  return result;
}

uint64_t sub_1AF26FA78(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_malloc(0x80uLL, 0xBBD05BDCuLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  v4[1] = v5;
  v4[2] = v5;
  v4[3] = v5;
  v4[4] = v5;
  v4[5] = v5;
  v4[6] = v5;
  v4[7] = v5;
  sub_1AF26A3B4(v4, *a2);
  v8 = v6;
  sub_1AF1576F0(a1 + 8, &v8);
  return v8;
}

void *sub_1AF26FAE4(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  v4[1] = v5;
  v7 = sub_1AF26EB60(v4, *a2);
  sub_1AF1576F0(a1 + 8, &v7);
  return v7;
}

void *sub_1AF26FB44(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  v4[1] = v5;
  v7 = sub_1AF268ECC(v4, *a2);
  sub_1AF1576F0(a1 + 8, &v7);
  return v7;
}

uint64_t sub_1AF26FBA4(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0xBBD05BDCuLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  v4[1] = v5;
  *(v4 + 4) = -1;
  v7 = sub_1AF2697B8(v4, *a2);
  sub_1AF1576F0(a1 + 8, &v7);
  return v7;
}

uint64_t sub_1AF26FC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "PathTracer");
  sub_1AF26FCD8(a2, &v7);
  v3 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *v3 = v4;
  v3[1] = v4;
  v8 = sub_1AF26DF84(v3, v7);
  sub_1AF1576F0(a2 + 8, &v8);
  sub_1AF26FAE4(a2, &v7);
  v5 = sub_1AF26FB44(a2, &v7);
  result = sub_1AF26FBA4(a2, &v7);
  *(result + 24) = *(v5 + 4);
  *(a2 + 25) = 1;
  return result;
}

void *sub_1AF26FCD8(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  v4[1] = v5;
  v7 = sub_1AF26B3B0(v4, *a2);
  sub_1AF1576F0(a1 + 8, &v7);
  return v7;
}

uint64_t sub_1AF26FD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "Hybrid");
  sub_1AF26FCD8(a2, &v6);
  v3 = malloc_type_malloc(0x800uLL, 0xBBD05BDCuLL);
  memset(v3, 255, 0x800uLL);
  sub_1AF26BD54(v3, v6);
  v7 = v3;
  sub_1AF1576F0(a2 + 8, &v7);
  sub_1AF26FAE4(a2, &v6);
  v4 = sub_1AF26FB44(a2, &v6);
  result = sub_1AF26FBA4(a2, &v6);
  *(result + 24) = *(v4 + 4);
  *(a2 + 25) = 1;
  return result;
}

void sub_1AF26FE10(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v8 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a3, "Stereo");
  v5 = sub_1AF26FA78(a3, &v8);
  *(v5 + 49) = 1;
  *(v5 + 55) = a2;
  v6 = malloc_type_malloc(0x28uLL, 0xBBD05BDCuLL);
  v6[4] = -1;
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *v6 = v7;
  *(v6 + 1) = v7;
  v9 = sub_1AF269A78(v6, v8);
  sub_1AF1576F0(a3 + 8, &v9);
  *(v9 + 24) = *(v5 + 8);
}

uint64_t sub_1AF26FED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "Holographic");
  v3 = sub_1AF26FA78(a2, &v5);
  *(v3 + 49) = 1;
  result = sub_1AF26FBA4(a2, &v5);
  *(result + 24) = *(v3 + 8);
  return result;
}

uint64_t sub_1AF26FF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "RayTracer");
  sub_1AF26FCD8(a2, &v7);
  v3 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *v3 = v4;
  v3[1] = v4;
  v8 = sub_1AF26F19C(v3, v7);
  sub_1AF1576F0(a2 + 8, &v8);
  sub_1AF26FAE4(a2, &v7);
  v5 = sub_1AF26FB44(a2, &v7);
  result = sub_1AF26FBA4(a2, &v7);
  *(result + 24) = *(v5 + 4);
  return result;
}

uint64_t sub_1AF270014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "Remote");
  v4 = malloc_type_malloc(0x28uLL, 0xBBD05BDCuLL);
  v4[4] = -1;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  *(v4 + 1) = v5;
  v9 = sub_1AF26F42C(v4, a1);
  sub_1AF1576F0(a2 + 8, &v9);
  v6 = v9;
  result = sub_1AF131088(a1);
  if (result)
  {
    result = sub_1AF26FBA4(a2, &v8);
    *(result + 24) = *(v6 + 4);
  }

  return result;
}

_OWORD *sub_1AF2700D0(uint64_t a1, void *a2, void *a3)
{
  v6 = malloc_type_malloc(0x38uLL, 0xBBD05BDCuLL);
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *v6 = v7;
  v6[1] = v7;
  v6[2] = v7;
  *(v6 + 6) = -1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(v6, "Compute irradiance");
  v8 = malloc_type_malloc(0x38uLL, 0xBBD05BDCuLL);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *v8 = v9;
  v8[1] = v9;
  v8[2] = v9;
  *(v8 + 6) = -1;
  v11 = sub_1AF26D44C(v8, a1, a2, a3);
  sub_1AF1576F0(v6 + 8, &v11);
  return v6;
}

_OWORD *sub_1AF270188(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v25 = a1;
  if ((atomic_load_explicit(&qword_1EB644870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB644870))
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&unk_1EB644868, "CustomAuthoring.Final.Color");
    __cxa_guard_release(&qword_1EB644870);
  }

  v7 = malloc_type_malloc(0x38uLL, 0xBBD05BDCuLL);
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *v7 = v8;
  v7[1] = v8;
  v7[2] = v8;
  *(v7 + 6) = -1;
  *(CFX::RG::RenderGraphProvider::RenderGraphProvider(v7, "Custom") + 25) = 1;
  v9 = malloc_type_malloc(0x48uLL, 0xBBD05BDCuLL);
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *v9 = v10;
  v9[1] = v10;
  v9[2] = v10;
  v9[3] = v10;
  *(v9 + 8) = -1;
  __p[0] = sub_1AF26A0B0(v9, v25, a3, a4);
  sub_1AF1576F0(v7 + 8, __p);
  v11 = sub_1AF26A340(__p[0]);
  v12 = *v11;
  if (v12)
  {
    v13 = *(v11 + 1);
    v14 = 8 * v12;
    while (1)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(__p, 6893, 6893, 1656467160);
      if (CFX::RG::ResourceIdentifier::match(v13, __p[0]))
      {
        break;
      }

      v13 += 4;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    sub_1AF26FA78(v7, &v25);
    sub_1AF26FAE4(v7, &v25);
  }

  v15 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v16 = -1;
  *(&v16 + 1) = -1;
  *v15 = v16;
  *(v15 + 1) = v16;
  sub_1AF268ECC(v15, v25);
  CFX::RG::RenderGraphProvider::addSubgraph(v7, v15);
  *(sub_1AF26FBA4(v7, &v25) + 24) = *(v15 + 4);
  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  if ((CFX::RG::RenderGraphProvider::resolve(v7, a2, __p) & 1) == 0)
  {
    if (v24 >= 0)
    {
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v17, __p, v18);
    }

    else
    {
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v17, __p[0], v18);
    }

    objc_msgSend_addGenericRenderGraphErrorWithMessage_(a4, v20, v19, v21);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

uint64_t sub_1AF270434(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_1AF270460(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 88);
  v6 = sub_1AF130770(v5, a2, a3, a4);
  prof_beginFlameSmallData("CRenderGraphEngineContextRenderFrame", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 1060, v6 | 0x300000000);
  sub_1AF270580(a1, v7, v8, v9);
  if (sub_1AF27062C(a1))
  {
    if (*(a1 + 376) == 1 && (v12 = *(a1 + 776)) != 0)
    {
      sub_1AF272164(a1, v12, v10, v11);
    }

    else
    {
      v15 = sub_1AF12F6A0(v5) - 1;
      if (v15 >= 6)
      {
        v16 = 384;
      }

      else
      {
        v16 = qword_1AFE43208[v15];
      }

      sub_1AF272164(a1, a1 + v16, v13, v14);
    }
  }

  else
  {
    sub_1AF272514(a1);
    CFX::RG::RenderGraph::resolveResourceDescriptors(*(a1 + 56), (a1 + 120));
  }

  if (*(a1 + 56))
  {
    sub_1AF130890(v5);
    sub_1AF270690(a1, v17, v18, v19);
    sub_1AF2707AC(a1, v20, v21, v22);
    sub_1AF270820(a1, v23, v24, v25);
    sub_1AF270870(a1);
  }

  prof_endFlame();
}

void sub_1AF270580(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AF130770(*(a1 + 88), a2, a3, a4);
  prof_beginFlameSmallData("Resources nextFrame", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 153, v5 | 0x300000000);
  if (*(a1 + 805) == 1)
  {
    *(a1 + 805) = 0;
    v6 = *(a1 + 64);
    if (v6)
    {
      ++*(v6 + 32);
    }
  }

  CFX::RG::RenderGraphContext::nextFrame((a1 + 120));
  v7 = sub_1AF12DF70(*(a1 + 88));
  if (v7)
  {
    sub_1AF70BDB8(v7, 0);
  }

  prof_endFlame();
}

uint64_t sub_1AF27062C(void *a1)
{
  v2 = a1[8];
  if (v2 && *(v2 + 25) == 1)
  {
    v3 = a1[7];
    v4 = CFX::RG::RenderGraphProvider::hash(v2, (a1 + 15));
    if (v3 && v4 && a1[6] == v4)
    {
      return 0;
    }

    a1[6] = v4;
  }

  return 1;
}

void sub_1AF270690(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AF130770(*(a1 + 88), a2, a3, a4);
  prof_beginFlameSmallData("setup", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 396, v5 | 0x300000000);
  v6 = *(a1 + 56);
  MTLDevice = CFXGPUDeviceGetMTLDevice(*(a1 + 96));
  v8 = sub_1AF12E2AC(*(a1 + 88));
  v12 = objc_msgSend_commandQueue(v8, v9, v10, v11);
  if (*(a1 + 806) != 1 || (v13 = *(a1 + 872)) == 0)
  {
    v14 = sub_1AF12E2AC(*(a1 + 88));
    v13 = objc_msgSend_currentCommandBuffer(v14, v15, v16, v17);
  }

  CFX::RG::RendererPassArguments::RendererPassArguments(v18, MTLDevice, v12, v13);
  v19 = 1;
  CFX::RG::RendererPassArguments::RendererPassArguments(&v20, v18);
  CFX::RG::RenderGraph::execute(v6, a1 + 120, 0, &v19);
  sub_1AF2680B0(&v19);
  CFX::RG::RendererPassArguments::~RendererPassArguments(v18);
  prof_endFlame();
}

void sub_1AF27077C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1AF2680B0(va1);
  CFX::RG::RendererPassArguments::~RendererPassArguments(va);
  prof_endFlame();
  _Unwind_Resume(a1);
}

void sub_1AF2707AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AF130770(*(a1 + 88), a2, a3, a4);
  prof_beginFlameSmallData("prepare", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 406, v5 | 0x300000000);
  sub_1AF2725E8(a1, *(a1 + 56));

  prof_endFlame();
}

void sub_1AF270820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 806) == 1)
  {
    sub_1AF272788(a1, *(a1 + 56));
  }

  v5 = *(a1 + 56);

  sub_1AF272F8C(a1, v5, a3, a4);
}

void sub_1AF270870(uint64_t a1)
{
  v2 = *(a1 + 56);
  MTLDevice = CFXGPUDeviceGetMTLDevice(*(a1 + 96));
  v4 = sub_1AF12E2AC(*(a1 + 88));
  v8 = objc_msgSend_commandQueue(v4, v5, v6, v7);
  if (*(a1 + 806) != 1 || (v9 = *(a1 + 872)) == 0)
  {
    v10 = sub_1AF12E2AC(*(a1 + 88));
    v9 = objc_msgSend_currentCommandBuffer(v10, v11, v12, v13);
  }

  CFX::RG::RendererPassArguments::RendererPassArguments(v18, MTLDevice, v8, v9);
  v19 = 1;
  CFX::RG::RendererPassArguments::RendererPassArguments(&v20, v18);
  CFX::RG::RenderGraph::execute(v2, a1 + 120, 3, &v19);
  sub_1AF2680B0(&v19);
  CFX::RG::RendererPassArguments::~RendererPassArguments(v18);
  v17 = sub_1AF130770(*(a1 + 88), v14, v15, v16);
  prof_beginFlameSmallData("Destroy graph", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 421, v17 | 0x300000000);
  if (!*(a1 + 360))
  {
    sub_1AF271C74(**(a1 + 56), *(*(a1 + 56) + 8), *(a1 + 56));
    *(a1 + 56) = 0;
  }

  prof_endFlame();
}

uint64_t sub_1AF2709AC(uint64_t result, uint64_t a2)
{
  *(result + 784) = a2;
  v2 = *(result + 64);
  if (v2)
  {
    ++*(v2 + 32);
  }

  return result;
}

uint64_t sub_1AF2709C8(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    ++*(v1 + 32);
  }

  return result;
}

uint64_t sub_1AF2709E0(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    return *(v1 + 48);
  }

  else
  {
    return 0;
  }
}

id sub_1AF270A00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_UTF8String(a2, a2, a3, a4);
  v9 = objc_msgSend_lengthOfBytesUsingEncoding_(a2, v7, 4, v8);
  if (!v6)
  {
    v16 = 0;
    goto LABEL_25;
  }

  v10 = 0xC6A4A7935BD1E995 * v9;
  if (v9 >= 8)
  {
    v11 = v9 >> 3;
    v12 = &v6[8 * v11];
    v13 = 8 * v11;
    do
    {
      v14 = *v6;
      v6 += 8;
      v10 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v14) ^ ((0xC6A4A7935BD1E995 * v14) >> 47))) ^ v10);
      v13 -= 8;
    }

    while (v13);
    v6 = v12;
  }

  v15 = v9 & 7;
  if (v15 > 3)
  {
    if ((v9 & 7) > 5)
    {
      if (v15 != 6)
      {
        v10 ^= v6[6] << 48;
      }

      v10 ^= v6[5] << 40;
    }

    else if (v15 == 4)
    {
      goto LABEL_20;
    }

    v10 ^= v6[4] << 32;
LABEL_20:
    v10 ^= v6[3] << 24;
LABEL_21:
    v10 ^= v6[2] << 16;
    goto LABEL_22;
  }

  if ((v9 & 7) <= 1)
  {
    if ((v9 & 7) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v15 != 2)
  {
    goto LABEL_21;
  }

LABEL_22:
  v10 ^= v6[1] << 8;
LABEL_23:
  v10 = 0xC6A4A7935BD1E995 * (v10 ^ *v6);
LABEL_24:
  v16 = (((0xC6A4A7935BD1E995 * (v10 ^ (v10 >> 47))) >> 32) >> 15) ^ (1540483477 * (v10 ^ (v10 >> 47)));
LABEL_25:
  v17 = *(a1 + 144);

  return CFX::GPUResourceManager::getRegisteredFrameTextureNamed(v17, v16);
}

void *sub_1AF270B44(CFX::RG::Temporal *a1, uint64_t a2)
{
  v3 = *(a1 + 18);
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::GPUResourceManager::getTexture(v3, a2, v4);
}

double sub_1AF270B90(uint64_t a1, uint64_t a2)
{
  sub_1AF3B24C8(a2, &v4);
  result = *&v4;
  *(a1 + 24) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1AF270BD4(uint64_t a1, const void *a2, void *a3)
{
  v5 = *(a1 + 88);
  if (a2)
  {
    v7 = sub_1AF270188(v5, a1 + 120, a2, a3);
    v8 = v7;
    if (*(v7 + 24) == 1)
    {
      sub_1AF3D2BA0(a2, *(a1 + 88));

      sub_1AF270CD8(a1, v8);
    }

    else
    {
      CFX::RG::RenderGraphProvider::~RenderGraphProvider(v7);

      free(v16);
    }
  }

  else
  {
    v9 = sub_1AF12F434(v5);
    v13 = objc_msgSend__showsAuthoringEnvironment(v9, v10, v11, v12);
    sub_1AF270CD8(a1, 0);
    if (a3 && v13)
    {
      v14 = sub_1AF12DDCC(*(a1 + 88));
      v15 = sub_1AF16CDEC(v14);

      sub_1AF3C592C(v15, a3);
    }
  }
}

void sub_1AF270CD8(uint64_t a1, CFX::RG::RenderGraphProvider *a2)
{
  v4 = *(a1 + 776);
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    CFX::RG::RenderGraphProvider::~RenderGraphProvider(v4);
    free(v6);
  }

  *(a1 + 776) = a2;
  *(a1 + 800) = 0;
  *(a1 + 64) = 0;
}

void sub_1AF270D20(uint64_t a1, CFX::RG::RenderGraphProvider *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  if (CFX::RG::RenderGraphProvider::resolve(a2, a1 + 120, __p))
  {
    sub_1AF270CD8(a1, a2);
  }

  else
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0AA4();
    }
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AF270DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF270DD4(uint64_t a1, void *a2)
{
  CFX::RG::RenderGraphContext::transferFrom((a1 + 120), (a2 + 15));
  v4 = a2[7];
  if (v4)
  {
    v5 = *(v4 + 128);
    if (v5)
    {
      v6 = *(v4 + 136);
      v7 = 8 * v5;
      do
      {
        v8 = *v6;
        if (CFX::RG::Resource::isManaged(*v6))
        {
          CFX::RG::Resource::transferDeleterTo(v8, *(a1 + 144));
        }

        ++v6;
        v7 -= 8;
      }

      while (v7);
    }
  }

  sub_1AF275770(a2);
}

uint64_t sub_1AF270E68(uint64_t a1)
{
  v2 = sub_1AF12E2AC(*(a1 + 88));
  result = objc_msgSend__finalRenderTexture(v2, v3, v4, v5);
  if (result)
  {
    v10 = result;
    v11 = 0;
    v12 = *(a1 + 104);
    do
    {
      v13 = objc_msgSend_colorAttachments(v12, v7, v8, v9);
      v16 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, v11, v15);
      objc_msgSend_setTexture_(v16, v17, 0, v18);
      v22 = objc_msgSend_colorAttachments(v12, v19, v20, v21);
      v25 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, v11, v24);
      objc_msgSend_setResolveTexture_(v25, v26, 0, v27);
      ++v11;
    }

    while (v11 != 8);
    v28 = objc_msgSend_depthAttachment(v12, v7, v8, v9);
    objc_msgSend_setTexture_(v28, v29, 0, v30);
    v34 = objc_msgSend_depthAttachment(v12, v31, v32, v33);
    objc_msgSend_setResolveTexture_(v34, v35, 0, v36);
    v40 = objc_msgSend_stencilAttachment(v12, v37, v38, v39);
    objc_msgSend_setTexture_(v40, v41, 0, v42);
    objc_msgSend_setRenderTargetArrayLength_(v12, v43, 0, v44);
    v48 = objc_msgSend_colorAttachments(v12, v45, v46, v47);
    v51 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, 0, v50);
    objc_msgSend_setTexture_(v51, v52, v10, v53);
    v57 = objc_msgSend_colorAttachments(v12, v54, v55, v56);
    v60 = objc_msgSend_objectAtIndexedSubscript_(v57, v58, 0, v59);
    objc_msgSend_setStoreAction_(v60, v61, 1, v62);
    v66 = objc_msgSend_colorAttachments(v12, v63, v64, v65);
    v69 = objc_msgSend_objectAtIndexedSubscript_(v66, v67, 0, v68);
    objc_msgSend_setLoadAction_(v69, v70, 2, v71);
    v72 = sub_1AF1303B8(*(a1 + 88));
    v73 = v72.f32[0];
    v74 = v72.f32[1];
    v75 = v72.f32[2];
    v76 = v72.f32[3];
    v80 = objc_msgSend_colorAttachments(v12, v77, v78, v79);
    v83 = objc_msgSend_objectAtIndexedSubscript_(v80, v81, 0, v82);
    objc_msgSend_setClearColor_(v83, v84, v85, v86, v73, v74, v75, v76);
    v90 = objc_msgSend_currentCommandBuffer(v2, v87, v88, v89);
    v93 = objc_msgSend_renderCommandEncoderWithDescriptor_(v90, v91, v12, v92);

    return objc_msgSend_endEncoding(v93, v94, v95, v96);
  }

  return result;
}

uint64_t sub_1AF27100C(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_1F24EBB68;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = sub_1AF13099C(a2);
  *(a1 + 104) = objc_alloc_init(MEMORY[0x1E6974128]);
  *(a1 + 112) = objc_alloc_init(RGCachedComputeCommandEncoder);
  v6 = *(a1 + 96);
  v7 = sub_1AF131048(a2);
  CFX::RG::RenderGraphContext::RenderGraphContext((a1 + 120), v6, v7);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 384);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 440);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 496);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 552);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 608);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 664);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 720);
  *(a1 + 808) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  sub_1AF2717D4(a1 + 816, 32);
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 850045863;
  *(a1 + 936) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  v10 = objc_msgSend_valueForKey_(a3, v8, @"forceDepthPostPass", v9);
  isEqual = objc_msgSend_isEqual_(v10, v11, MEMORY[0x1E695E118], v12);
  CounterStorage = CFXGPUDeviceGetCounterStorage(*(a1 + 96));
  sub_1AF3B24C8(CounterStorage, &v32);
  *(a1 + 24) = v32;
  *(a1 + 40) = v33;
  sub_1AF26F9A4(*(a1 + 88), &v32);
  *(a1 + 384) = v32;
  sub_1AF2718B4(a1 + 392, &v32 + 1);
  v15 = v35;
  *(a1 + 408) = v34;
  *(a1 + 424) = v15;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v32);
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  if ((CFX::RG::RenderGraphProvider::resolve(a1 + 384, a1 + 120, __p) & 1) == 0)
  {
    v23 = sub_1AF0D5194();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0B3C();
    }

LABEL_13:
    abort();
  }

  sub_1AF26FC0C(*(a1 + 88), &v32);
  *(a1 + 440) = v32;
  sub_1AF2718B4(a1 + 448, &v32 + 1);
  v16 = v35;
  *(a1 + 464) = v34;
  *(a1 + 480) = v16;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v32);
  if ((CFX::RG::RenderGraphProvider::resolve(a1 + 440, a1 + 120, __p) & 1) == 0)
  {
    v24 = sub_1AF0D5194();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0BA4();
      abort();
    }

    goto LABEL_13;
  }

  sub_1AF26FE10(*(a1 + 88), isEqual, &v32);
  *(a1 + 496) = v32;
  sub_1AF2718B4(a1 + 504, &v32 + 1);
  v17 = v35;
  *(a1 + 520) = v34;
  *(a1 + 536) = v17;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v32);
  if ((CFX::RG::RenderGraphProvider::resolve(a1 + 496, a1 + 120, __p) & 1) == 0)
  {
    v25 = sub_1AF0D5194();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0C0C();
      abort();
    }

    goto LABEL_13;
  }

  sub_1AF26FED0(*(a1 + 88), &v32);
  *(a1 + 552) = v32;
  sub_1AF2718B4(a1 + 560, &v32 + 1);
  v18 = v35;
  *(a1 + 576) = v34;
  *(a1 + 592) = v18;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v32);
  if ((CFX::RG::RenderGraphProvider::resolve(a1 + 552, a1 + 120, __p) & 1) == 0)
  {
    v26 = sub_1AF0D5194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0C74();
      abort();
    }

    goto LABEL_13;
  }

  sub_1AF26FD38(*(a1 + 88), &v32);
  *(a1 + 608) = v32;
  sub_1AF2718B4(a1 + 616, &v32 + 1);
  v19 = v35;
  *(a1 + 632) = v34;
  *(a1 + 648) = v19;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v32);
  if ((CFX::RG::RenderGraphProvider::resolve(a1 + 608, a1 + 120, __p) & 1) == 0)
  {
    v27 = sub_1AF0D5194();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0CDC();
      abort();
    }

    goto LABEL_13;
  }

  sub_1AF26FF50(*(a1 + 88), &v32);
  *(a1 + 664) = v32;
  sub_1AF2718B4(a1 + 672, &v32 + 1);
  v20 = v35;
  *(a1 + 688) = v34;
  *(a1 + 704) = v20;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v32);
  if ((CFX::RG::RenderGraphProvider::resolve(a1 + 664, a1 + 120, __p) & 1) == 0)
  {
    v28 = sub_1AF0D5194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0D44();
      abort();
    }

    goto LABEL_13;
  }

  sub_1AF270014(*(a1 + 88), &v32);
  *(a1 + 720) = v32;
  sub_1AF2718B4(a1 + 728, &v32 + 1);
  v21 = v35;
  *(a1 + 744) = v34;
  *(a1 + 760) = v21;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v32);
  if ((CFX::RG::RenderGraphProvider::resolve(a1 + 720, a1 + 120, __p) & 1) == 0)
  {
    v29 = sub_1AF0D5194();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0DAC();
      abort();
    }

    goto LABEL_13;
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1AF2714AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::mutex::~mutex((v15 + 880));
  a15 = v15 + 848;
  sub_1AF27193C(&a15);
  sub_1AF2719E0(v15 + 816);
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 720));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 664));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 608));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 552));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 496));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 440));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 384));
  v17 = *(v15 + 368);
  if (v17)
  {
    sub_1AF271A90(v17);
  }

  CFX::RG::RenderGraphContext::~RenderGraphContext((v15 + 120));
  CFX::RG::AttachmentProvider::~AttachmentProvider(v15);
  _Unwind_Resume(a1);
}

void *sub_1AF271600(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  ActionForAttachment = *(a1 + 784);
  if (ActionForAttachment)
  {
    v3 = MEMORY[0x1E696AEC0];
    CFX::RG::ResourceIdentifier::pathName(&v12, __p);
    if (v11 >= 0)
    {
      v6 = objc_msgSend_stringWithUTF8String_(v3, v4, __p, v5);
    }

    else
    {
      v6 = objc_msgSend_stringWithUTF8String_(v3, v4, __p[0], v5);
    }

    ActionForAttachment = objc_msgSend_loadActionForAttachment_(ActionForAttachment, v7, v6, v8);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return ActionForAttachment;
}

void sub_1AF27168C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF2716A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  if (!*(a1 + 784))
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E69741C0]);
  *__p = *a3;
  v17 = *(a3 + 16);
  CFXTextureDescriptorFillMTLDescriptor(__p, v5, v6, v7);
  v8 = *(a1 + 784);
  v9 = MEMORY[0x1E696AEC0];
  CFX::RG::ResourceIdentifier::pathName(&v18, __p);
  if (v17 >= 0)
  {
    v12 = objc_msgSend_stringWithUTF8String_(v9, v10, __p, v11);
  }

  else
  {
    v12 = objc_msgSend_stringWithUTF8String_(v9, v10, __p[0], v11);
  }

  v14 = objc_msgSend_textureForAttachment_withDescriptor_(v8, v13, v12, v5);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  return v14;
}

void sub_1AF27177C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF27179C(uint64_t a1)
{
  sub_1AF271AFC(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2717D4(uint64_t a1, int a2)
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
  v7 = malloc_type_malloc(32 * v3, 0xBBD05BDCuLL);
  memset(v7, 255, 32 * v3);
  *(a1 + 8) = v7;
  memset(*a1, 255, 8 * v3);
  v8 = *(a1 + 16);

  bzero(v8, v4);
}

uint64_t sub_1AF2718B4(uint64_t a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    if (*(a1 + 4))
    {
      free(*(a1 + 8));
      *(a1 + 8) = a1 + 16;
    }

    v4 = *a2;
    *a1 = *a2;
    v5 = a2[1];
    if (v5 == a2 + 2)
    {
      memcpy((a1 + 16), a2 + 2, 8 * v4);
    }

    else
    {
      *(a1 + 8) = v5;
    }

    *a2 = 0;
    a2[1] = (a2 + 2);
  }

  return a1;
}

void sub_1AF27193C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF271990(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF271990(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1AF2719E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_1AF271A34(v2, *(a1 + 16), *(a1 + 28) + 15);
    free(*(a1 + 8));
  }

  free(*a1);
  free(*(a1 + 16));
  return a1;
}

void sub_1AF271A34(uint64_t a1, __int16 *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      if ((v6 & 1) != 0 && *(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      a1 += 32;
      --v5;
    }

    while (v5);
  }
}

void sub_1AF271A90(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_1AF271AFC(uint64_t a1)
{
  *a1 = &unk_1F24EBB68;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = sub_1AF271CB8(v2);
    free(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_1AF271C74(*v4, *(v4 + 1), v4);
  }

  v5 = *(a1 + 776);
  if (v5)
  {
    CFX::RG::RenderGraphProvider::~RenderGraphProvider(v5);
    free(v6);
  }

  std::mutex::~mutex((a1 + 880));
  v8 = (a1 + 848);
  sub_1AF27193C(&v8);
  sub_1AF2719E0(a1 + 816);
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 720));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 664));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 608));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 552));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 496));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 440));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 384));
  v7 = *(a1 + 368);
  if (v7)
  {
    sub_1AF271A90(v7);
  }

  CFX::RG::RenderGraphContext::~RenderGraphContext((a1 + 120));
  CFX::RG::AttachmentProvider::~AttachmentProvider(a1);
}

void sub_1AF271BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::mutex::~mutex((v10 + 880));
  a10 = (v10 + 848);
  sub_1AF27193C(&a10);
  sub_1AF2719E0(v10 + 816);
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 720));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 664));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 608));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 552));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 496));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 440));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 384));
  v12 = *(v10 + 368);
  if (v12)
  {
    sub_1AF271A90(v12);
  }

  CFX::RG::RenderGraphContext::~RenderGraphContext((v10 + 120));
  CFX::RG::AttachmentProvider::~AttachmentProvider(v10);
  _Unwind_Resume(a1);
}

void sub_1AF271C74(int a1, void *a2, CFX::RG::RenderGraph *this)
{
  CFX::RG::RenderGraph::~RenderGraph(this);
  v5 = v4;
  if (a2)
  {
    sub_1AF234C8C(a2, &v5);
  }
}

uint64_t sub_1AF271CB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
  }

  free(*a1);
  free(*(a1 + 16));
  return a1;
}

unint64_t sub_1AF271CF8(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_1AF2720A4(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_1AF271FF8(a2, a3);
  }

  else
  {
    return sub_1AF271F00(a2, a3);
  }
}

unint64_t sub_1AF271F00(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_1AF271FF8(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_1AF2720A4(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void sub_1AF272164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF130770(*(a1 + 88), a2, a3, a4);
  prof_beginFlameSmallData("loadGraphProvider", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 225, v6 | 0x300000000);
  CFX::RG::RenderGraphContext::clearReferenceDescriptors((a1 + 120));
  CFX::GPUResourceManager::clearResourcesMapping(*(a1 + 144));
  v7 = *(a1 + 56);
  if (v7)
  {
    sub_1AF271C74(*v7, *(v7 + 1), v7);
  }

  v8 = *(a1 + 776);
  if (*(a2 + 25))
  {
    CFX::RG::RenderGraphContext::createPersistentRenderGraphBuilder((a1 + 120), __p);
  }

  v9 = *(a1 + 120);
  v10 = *(a1 + 128);
  Aligned = CScratchAllocatorAllocateAligned(v9, 408, 8);
  CFX::RG::RenderGraphBuilder::RenderGraphBuilder(Aligned, v9, v10);
  v12 = *(a1 + 368);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  if (v12)
  {
    sub_1AF271A90(v12);
  }

  __p[0] = 0;
  __p[1] = 0;
  v30 = 0;
  if (*(a1 + 784))
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  CFX::RG::RenderGraphProvider::setAttachmentProvider(a2, v13);
  v14 = CFX::RG::RenderGraphProvider::encodeIfNeeded(a2, a1 + 120, Aligned, *(a1 + 72), __p);
  v15 = sub_1AF12F434(*(a1 + 88));
  if (objc_msgSend__showsAuthoringEnvironment(v15, v16, v17, v18))
  {
    v19 = *(a2 + 8);
    if (v19)
    {
      v20 = *(a2 + 16);
      v21 = 8 * v19;
      while (*(*v20 + 8) != 14151)
      {
        v20 += 8;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_15;
        }
      }

      v22 = *(*v20 + 56);
      if (!v14)
      {
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 800) = 0;
      v23 = a2;
      goto LABEL_25;
    }
  }

LABEL_15:
  v22 = 0;
  if (v14)
  {
    goto LABEL_16;
  }

LABEL_18:
  v24 = sub_1AF0D5194();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF0E14();
  }

  *(a1 + 48) = 0;
  v25 = *(a1 + 368);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  if (v25)
  {
    sub_1AF271A90(v25);
  }

  v23 = 0;
  v26 = *(a1 + 800) + 1;
  *(a1 + 800) = v26;
  if (v8 == a2 && v26 >= 3)
  {
    sub_1AF270CD8(a1, 0);
    v23 = 0;
  }

LABEL_25:
  *(a1 + 56) = v14;
  *(a1 + 64) = v23;
  sub_1AF2723F8(a1);
  if (v22)
  {
    v27 = sub_1AF12DDCC(*(a1 + 88));
    v28 = sub_1AF16CDEC(v27);
    sub_1AF3C592C(v28, v22);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  prof_endFlame();
}

void sub_1AF2723A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  prof_endFlame();
  _Unwind_Resume(a1);
}

void sub_1AF2723F8(uint64_t a1)
{
  std::mutex::lock((a1 + 880));
  if (*(a1 + 808) == 1)
  {
    v2 = *(a1 + 848);
    v3 = *(a1 + 856);
    while (v2 != v3)
    {
      if (*(a1 + 807) == 1)
      {
        vfx_counters_remove_counter(*(a1 + 24), *(v2 + 24));
      }

      vfx_counters_remove_counter(*(a1 + 24), *(v2 + 28));
      v2 += 32;
    }

    sub_1AF2724B0(a1 + 816);
    sub_1AF271990((a1 + 848));
    *(a1 + 808) = 0;
  }

  std::mutex::unlock((a1 + 880));
}

void sub_1AF2724B0(uint64_t a1)
{
  sub_1AF271A34(*(a1 + 8), *(a1 + 16), *(a1 + 28) + 15);
  memset(*a1, 255, 8 * (*(a1 + 28) + 15));
  bzero(*(a1 + 16), 2 * (*(a1 + 28) + 15));
  *(a1 + 24) = 0;
}

void sub_1AF272514(uint64_t a1)
{
  v2 = sub_1AF12E2AC(*(a1 + 88));
  v5 = sub_1AF24FBDC(v21, v2, v3, v4);
  sub_1AF24ED5C(v5, v19);
  v6 = CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v20, v19);
  v7 = *(a1 + 360);
  v8 = CFX::RG::ResourceIdentifier::finalColor(v6);
  CFX::RG::RenderGraphBuilder::findPublishedResource(v7, v8);
  v10 = CFX::RG::Resource::textureDesc(v9);
  v11 = v20[1];
  *v10 = v20[0];
  *(v10 + 1) = v11;
  v12 = v20[5];
  v14 = v20[2];
  v13 = v20[3];
  *(v10 + 4) = v20[4];
  *(v10 + 5) = v12;
  *(v10 + 2) = v14;
  *(v10 + 3) = v13;
  v15 = v20[7];
  v16 = v20[9];
  v17 = v20[6];
  *(v10 + 8) = v20[8];
  *(v10 + 9) = v16;
  *(v10 + 6) = v17;
  *(v10 + 7) = v15;
  v18 = CFX::RG::ResourceIdentifier::finalColor(v10);
  sub_1AF24ED5C(v21, v19);
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v20, v19);
  CFX::RG::RenderGraphContext::registerReferenceDescriptor(a1 + 120, v18, v20);
}

uint64_t sub_1AF2725E8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 136);
  v8 = a2;
  v5 = &v8;
  v6 = a1;
  sub_1AF272654(&v7, &v5);
  v3 = *(a1 + 136);
  v5 = &v8;
  v6 = a1;
  CStackAllocatorPushFrame(v3);
  sub_1AF2726A4(&v5);
  return CStackAllocatorPopFrame(v3);
}

uint64_t sub_1AF272654(unsigned int **a1, uint64_t a2)
{
  CStackAllocatorPushFrame(*a1);
  CFX::RG::AllocateResources(**a2, (*(a2 + 8) + 120), v4);
  v5 = *a1;

  return CStackAllocatorPopFrame(v5);
}

void sub_1AF2726A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = **a1;
  MTLDevice = CFXGPUDeviceGetMTLDevice(*(v1 + 96));
  v4 = sub_1AF12E2AC(*(v1 + 88));
  v8 = objc_msgSend_commandQueue(v4, v5, v6, v7);
  if (*(v1 + 806) != 1 || (v9 = *(v1 + 872)) == 0)
  {
    v10 = sub_1AF12E2AC(*(v1 + 88));
    v9 = objc_msgSend_currentCommandBuffer(v10, v11, v12, v13);
  }

  CFX::RG::RendererPassArguments::RendererPassArguments(v14, MTLDevice, v8, v9);
  v15 = 1;
  CFX::RG::RendererPassArguments::RendererPassArguments(&v16, v14);
  CFX::RG::RenderGraph::execute(v2, v1 + 120, 1, &v15);
  sub_1AF2680B0(&v15);
  CFX::RG::RendererPassArguments::~RendererPassArguments(v14);
}

void sub_1AF272764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1AF2680B0(va1);
  CFX::RG::RendererPassArguments::~RendererPassArguments(va);
  _Unwind_Resume(a1);
}

void sub_1AF272788(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 806) == 1)
  {
    v3 = a1;
    std::mutex::lock((a1 + 880));
    if ((*(v3 + 808) & 1) == 0)
    {
      memset(v48, 0, sizeof(v48));
      v49 = 1065353216;
      v4 = *(a2 + 288);
      if (v4)
      {
        v5 = 0;
        v32 = 0;
        p_size = &__dst.__r_.__value_.__l.__size_;
        v33 = *(MEMORY[0x1E69E54E8] + 24);
        v34 = *MEMORY[0x1E69E54E8];
        v30 = a2;
        v35 = v3;
        do
        {
          v7 = *(a2 + 296) + 32 * v5;
          if (*(v7 + 16))
          {
            v31 = v5;
            v8 = 0;
            do
            {
              v9 = *(*(v7 + 24) + 8 * v8);
              memset(&v47, 0, sizeof(v47));
              v10 = *(v9 + 24);
              if (v10)
              {
                sub_1AF2737B0(&v47, v10);
              }

              else
              {
                sub_1AF273380(&__dst);
                sub_1AF17C688(&__dst, "Unamed", 6);
                if (v32 >= 1)
                {
                  v11 = sub_1AF17C688(&__dst, " ", 1);
                  MEMORY[0x1B271C540](v11, v32);
                }

                sub_1AF2734EC(&__dst, v38);
                if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v47.__r_.__value_.__l.__data_);
                }

                *&v47.__r_.__value_.__l.__data_ = *v38;
                v47.__r_.__value_.__r.__words[2] = v39[0];
                __dst.__r_.__value_.__r.__words[0] = v34;
                *(__dst.__r_.__value_.__r.__words + *(v34 - 3)) = v33;
                __dst.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
                if (v45 < 0)
                {
                  operator delete(__p);
                }

                ++v32;
                __dst.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
                std::locale::~locale(&__dst.__r_.__value_.__r.__words[2]);
                std::ostream::~ostream();
                MEMORY[0x1B271C650](v46);
              }

              v12 = sub_1AF273844(v48, &v47);
              if (v12)
              {
                v13 = (*(v12 + 10) + 1);
                *(v12 + 10) = v13;
              }

              else
              {
                if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_1AF13D384(&__dst, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
                }

                else
                {
                  __dst = v47;
                }

                v43 = 0;
                sub_1AF2739DC(v48, &__dst);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                v13 = 0;
              }

              sub_1AF273380(&__dst);
              sub_1AF17C688(&__dst, "GPU ", 4);
              if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v14 = &v47;
              }

              else
              {
                v14 = v47.__r_.__value_.__r.__words[0];
              }

              if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v47.__r_.__value_.__l.__size_;
              }

              sub_1AF17C688(&__dst, v14, size);
              if (v13)
              {
                v16 = sub_1AF17C688(&__dst, "[", 1);
                v17 = MEMORY[0x1B271C540](v16, v13);
                sub_1AF17C688(v17, "]", 1);
              }

              v18 = p_size;
              v19 = *(v35 + 24);
              sub_1AF2734EC(&__dst, v38);
              if (SHIBYTE(v39[0].__locale_) >= 0)
              {
                v20 = v38;
              }

              else
              {
                v20 = v38[0];
              }

              v21 = vfx_counters_add_counter(v19, v20, 0, 0, 0xFF0000FF);
              if (SHIBYTE(v39[0].__locale_) < 0)
              {
                operator delete(v38[0]);
              }

              sub_1AF273380(v38);
              sub_1AF17C688(v38, "CPU ", 4);
              if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v22 = &v47;
              }

              else
              {
                v22 = v47.__r_.__value_.__r.__words[0];
              }

              if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v23 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v23 = v47.__r_.__value_.__l.__size_;
              }

              sub_1AF17C688(v38, v22, v23);
              if (v13)
              {
                v24 = sub_1AF17C688(v38, "[", 1);
                v25 = MEMORY[0x1B271C540](v24, v13);
                sub_1AF17C688(v25, "]", 1);
              }

              v26 = *(v35 + 24);
              sub_1AF2734EC(v38, &v50);
              if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v27 = &v50;
              }

              else
              {
                v27 = v50.__r_.__value_.__r.__words[0];
              }

              v28 = vfx_counters_add_counter(v26, v27, 0, 0, 0xFF00FFFF);
              if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v50.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_1AF13D384(&v36, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
              }

              else
              {
                v36 = v47;
              }

              v37 = __PAIR64__(v21, v28);
              sub_1AF2736B4((v35 + 848), &v36);
              if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_1AF13D384(&v50, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
              }

              else
              {
                v50 = v36;
              }

              v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47));
              v51 = v37;
              sub_1AF273FE8(v35 + 816, 0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47)), &v50);
              if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v50.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v36.__r_.__value_.__l.__data_);
              }

              v38[0] = v34;
              *(v38 + *(v34 - 3)) = v33;
              v38[1] = (MEMORY[0x1E69E5548] + 16);
              if (v40 < 0)
              {
                operator delete(v39[7].__locale_);
              }

              v38[1] = (MEMORY[0x1E69E5538] + 16);
              std::locale::~locale(v39);
              std::ostream::~ostream();
              MEMORY[0x1B271C650](&v41);
              __dst.__r_.__value_.__r.__words[0] = v34;
              *(__dst.__r_.__value_.__r.__words + *(v34 - 3)) = v33;
              p_size = v18;
              __dst.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
              if (v45 < 0)
              {
                operator delete(__p);
              }

              __dst.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
              std::locale::~locale(&__dst.__r_.__value_.__r.__words[2]);
              std::ostream::~ostream();
              MEMORY[0x1B271C650](v46);
              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v47.__r_.__value_.__l.__data_);
              }

              ++v8;
            }

            while (v8 < *(v7 + 16));
            a2 = v30;
            v5 = v31;
            v4 = *(v30 + 288);
            v3 = v35;
          }

          ++v5;
        }

        while (v5 < v4);
      }

      *(v3 + 808) = 1;
      sub_1AF274364(v48);
    }

    std::mutex::unlock((v3 + 880));
  }
}

void sub_1AF272E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (*(v16 - 185) < 0)
  {
    operator delete(*(v16 - 208));
  }

  sub_1AF274364(v16 - 176);
  std::mutex::unlock((a16 + 880));
  _Unwind_Resume(a1);
}

void sub_1AF272F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF130770(*(a1 + 88), a2, a3, a4);
  prof_beginFlameSmallData("Render", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 703, v6 | 0x300000000);
  if ((*(a1 + 804) & 1) != 0 || *(a1 + 8) == 1)
  {
    CFX::RG::RenderGraph::log(a2, __p);
    if (v53 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    printf("%s", v8);
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 804) = 0;
  }

  v9 = *(a2 + 288);
  if (!v9)
  {
    goto LABEL_53;
  }

  for (i = 0; i < v9; ++i)
  {
    v11 = *(a2 + 296) + 32 * i;
    if (!*(v11 + 16))
    {
      continue;
    }

    v12 = 0;
    do
    {
      v13 = *(*(v11 + 24) + 8 * v12);
      if (*(v13 + 24))
      {
        v14 = *(v13 + 24);
      }

      else
      {
        v14 = "Unnamed";
      }

      prof_beginFlameSmallData(v14, "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 719, v6 | 0x300000000);
      sub_1AF2743EC(a1, v13);
      if (i == *(a2 + 288) - 1)
      {
        v18 = (*(v11 + 16) - 1);
        v19 = v12 == v18;
        if ((*(a1 + 806) & 1) == 0)
        {
          goto LABEL_27;
        }

        if (v12 == v18)
        {
          v20 = 0;
          v19 = 1;
          goto LABEL_22;
        }
      }

      else if ((*(a1 + 806) & 1) == 0)
      {
        v19 = 0;
LABEL_27:
        v38 = 0.0;
        goto LABEL_28;
      }

      v21 = sub_1AF12E2AC(*(a1 + 88));
      v25 = objc_msgSend_commandQueue(v21, v22, v23, v24);
      v20 = objc_msgSend_commandBuffer(v25, v26, v27, v28);
      v19 = 0;
LABEL_22:
      *(a1 + 872) = v20;
      v31 = sub_1AF130770(*(a1 + 88), v15, v16, v17);
      if (*(a1 + 806) != 1 || (v32 = *(a1 + 872)) == 0)
      {
        v33 = sub_1AF12E2AC(*(a1 + 88));
        v32 = objc_msgSend_currentCommandBuffer(v33, v34, v35, v36);
      }

      v37 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v13) ^ ((0x9DDFEA08EB382D69 * v13) >> 47));
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = sub_1AF274500;
      v50[3] = &unk_1E7A7DAE0;
      v50[4] = a1;
      v50[5] = 0x9DDFEA08EB382D69 * (v37 ^ (v37 >> 47));
      v51 = v31;
      objc_msgSend_addCompletedHandler_(v32, v29, v50, v30);
      v38 = CACurrentMediaTime();
LABEL_28:
      v39 = *(v13 + 408);
      if (v39 > 2)
      {
        if (v39 == 3)
        {
          sub_1AF274B74(a1, a2, v13, v17);
        }

        else if (v39 == 4)
        {
          sub_1AF274A0C(a1, v13, v16, v17);
        }
      }

      else if (v39 == 1)
      {
        sub_1AF2747FC(a1, v13);
      }

      else if (v39 == 2)
      {
        sub_1AF274900(a1, v13, v16, v17);
      }

      prof_endFlame();
      if (*(a1 + 806) == 1)
      {
        if (*(a1 + 807) == 1)
        {
          std::mutex::lock((a1 + 880));
          v42 = CACurrentMediaTime();
          v43 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v13) ^ ((0x9DDFEA08EB382D69 * v13) >> 47));
          v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
          v45 = (*(a1 + 844) - 1) & v44;
          v46 = *(*(a1 + 832) + 2 * v45);
          if (v46 >= 2)
          {
            v47 = v42 - v38;
            while ((v46 & 2) == 0 || v44 != *(*(a1 + 816) + 8 * v45))
            {
              ++v45;
              v48 = v46 >= 4;
              v46 >>= 1;
              if (!v48)
              {
                goto LABEL_47;
              }
            }

            v49 = *(a1 + 824);
            if (v49)
            {
              vfx_counters_update(*(a1 + 24), *(v49 + 32 * v45 + 24), v47);
            }
          }

LABEL_47:
          std::mutex::unlock((a1 + 880));
          v19 |= *(a1 + 806) ^ 1;
        }

        if ((v19 & 1) == 0)
        {
          objc_msgSend_commit(*(a1 + 872), v40, v7, v41);
          *(a1 + 872) = 0;
        }
      }

      ++v12;
    }

    while (v12 < *(v11 + 16));
    v9 = *(a2 + 288);
  }

LABEL_53:
  CFX::RG::IncrementTemporal(a2, (a1 + 120), v7);
  prof_endFlame();
}

uint64_t *sub_1AF273380(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_1AF17C4C4((a1 + 1), 16);
  return a1;
}

void sub_1AF2734C4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B271C650](v1);
  _Unwind_Resume(a1);
}

const void *sub_1AF2734EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF2737F8(a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AF10A1D0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t sub_1AF273594(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1B271C650](a1 + 112);
  return a1;
}

uint64_t sub_1AF2736B4(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1AF273D4C(a1, a2);
  }

  else
  {
    sub_1AF273CDC(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

std::string *sub_1AF2736F4(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_1AF2737B0(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1AF2736F4(a1, __s, v4);
}

uint64_t sub_1AF2737F8(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

const void **sub_1AF273844(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AF271CF8(&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v8)
    {
      if (sub_1AF273964(a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL sub_1AF273964(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

const void **sub_1AF2739DC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AF271CF8(v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!sub_1AF273964(a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_1AF273C78(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1AF273CDC(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1AF13D384(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 3);
  v3[1] = v4 + 32;
  return result;
}

uint64_t sub_1AF273D4C(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1AF10A1D0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    sub_1AF273E88(a1, v7);
  }

  v8 = 32 * v2;
  v18 = 0;
  v19 = v8;
  v20 = v8;
  if (*(a2 + 23) < 0)
  {
    sub_1AF13D384(v8, *a2, *(a2 + 1));
    v10 = v19;
    v11 = v20;
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
    v10 = v8;
    v11 = v8;
  }

  *(v8 + 24) = *(a2 + 3);
  *&v20 = v11 + 32;
  v12 = *(a1 + 8);
  v13 = v10 + *a1 - v12;
  sub_1AF273ED0(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_1AF273F54(&v18);
  return v17;
}

void sub_1AF273E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AF273F54(va);
  _Unwind_Resume(a1);
}

void sub_1AF273E88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF273ED0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }
}

uint64_t sub_1AF273F54(uint64_t a1)
{
  sub_1AF273F8C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF273F8C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1AF273FE8(uint64_t a1, uint64_t a2, __int128 *a3)
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
          goto LABEL_33;
        }
      }
    }

    if (v12 != v11)
    {
      *(v7 + 2 * v12) |= 1u;
      if (v12 <= v6 + 14)
      {
        v24 = v12;
      }

      else
      {
        do
        {
          v14 = v12;
          v15 = v12 - 14;
          if (v12 < 0xF)
          {
            v15 = 0;
          }

          v16 = v15 - 1;
          if (v15 <= v12)
          {
            v17 = v12;
          }

          else
          {
            v17 = v15;
          }

          v18 = 1;
          while (1)
          {
            v12 = v16 + 1;
            if (v15 <= v12)
            {
              break;
            }

LABEL_25:
            ++v18;
            v16 = v12;
            if (v12 == v17)
            {
              goto LABEL_32;
            }
          }

          v19 = 1 << (v16 - v15 + 2);
          v20 = v18;
          v21 = v15;
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
            if (v22 + 1 > v12)
            {
              goto LABEL_25;
            }
          }

          if (v12 >= v14)
          {
LABEL_32:
            *(v7 + 2 * v14) ^= 1u;
            goto LABEL_33;
          }

          v23 = *(a1 + 8);
          v24 = v12;
          *(*a1 + 8 * v14) = *(*a1 + 8 * v12);
          v25 = v23 + 32 * v14;
          v26 = (v23 + 32 * v12);
          v27 = *v26;
          v28 = *(v26 + 3);
          *(v25 + 16) = *(v26 + 2);
          *(v25 + 24) = v28;
          *v25 = v27;
          *(v26 + 1) = 0;
          *(v26 + 2) = 0;
          *v26 = 0;
          v29 = *(a1 + 8) + 32 * v12;
          if (*(v29 + 23) < 0)
          {
            operator delete(*v29);
          }

          v7 = *(a1 + 16);
          *(v7 + 2 * v22) = (*(v7 + 2 * v22) | (1 << (v14 - v22 + 1))) ^ (1 << v20);
        }

        while (v12 > v6 + 14);
      }

      v33 = *(a1 + 8) + 32 * v24;
      v34 = *a3;
      *(v33 + 16) = *(a3 + 2);
      *v33 = v34;
      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      *a3 = 0;
      *(v33 + 24) = *(a3 + 3);
      *(*a1 + 8 * v24) = a2;
      v35 = *(a1 + 16);
      *(v35 + 2 * v24) |= 1u;
      result = 1;
      *(v35 + 2 * v6) |= 1 << (v12 - v6 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_33:
    sub_1AF2742A8(a1);
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

  v30 = *(a1 + 8) + 32 * v9;
  if (*(v30 + 23) < 0)
  {
    operator delete(*v30);
  }

  result = 0;
  v32 = *a3;
  *(v30 + 16) = *(a3 + 2);
  *v30 = v32;
  *(a3 + 23) = 0;
  *a3 = 0;
  *(v30 + 24) = *(a3 + 3);
  return result;
}

void sub_1AF2742A8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF2717D4(a1, 2 * v5);
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
        sub_1AF273FE8(a1, *v8, v7);
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }
      }

      ++v8;
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

uint64_t sub_1AF274364(uint64_t a1)
{
  sub_1AF2743A0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1AF2743A0(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

CFX::RG::Temporal *sub_1AF2743EC(CFX::RG::Temporal *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 232);
  if (v4)
  {
    v5 = *(a2 + 240);
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      result = CFX::RG::Resource::isExternal(*v5);
      if (result)
      {
        v8 = *(v3 + 18);
        v9 = CFX::RG::Temporal::currentFrame(result);
        result = CFX::GPUResourceManager::getTexture(v8, v7, v9);
        if (!result)
        {
          CFX::GPUResourceManager::allocate(*(v3 + 18), v7, (v3 + 120));
          v10 = *(v3 + 18);
          v12 = CFX::RG::Temporal::currentFrame(v11);
          result = CFX::GPUResourceManager::getTexture(v10, v7, v12);
        }
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  v13 = *(a2 + 72);
  if (v13)
  {
    v14 = *(a2 + 80);
    v15 = 16 * v13;
    do
    {
      v16 = *v14;
      result = CFX::RG::Resource::isExternal(*v14);
      if (result)
      {
        v17 = *(v3 + 18);
        v18 = CFX::RG::Temporal::currentFrame(result);
        result = CFX::GPUResourceManager::getTexture(v17, v16, v18);
        if (!result)
        {
          CFX::GPUResourceManager::allocate(*(v3 + 18), v16, (v3 + 120));
          v19 = *(v3 + 18);
          v21 = CFX::RG::Temporal::currentFrame(v20);
          result = CFX::GPUResourceManager::getTexture(v19, v16, v21);
        }
      }

      v14 += 2;
      v15 -= 16;
    }

    while (v15);
  }

  return result;
}

void sub_1AF274500(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  objc_msgSend_GPUEndTime(a2, a2, a3, a4);
  v8 = v7;
  objc_msgSend_GPUStartTime(a2, v9, v10, v11);
  v13 = v12;
  std::mutex::lock((v6 + 880));
  v14 = *(a1 + 40);
  v15 = (*(v6 + 844) - 1) & v14;
  v16 = *(*(v6 + 832) + 2 * v15);
  if (v16 >= 2)
  {
    v17 = (v8 - v13) * 1000.0;
    while ((v16 & 2) == 0 || v14 != *(*(v6 + 816) + 8 * v15))
    {
      ++v15;
      v18 = v16 >= 4;
      v16 >>= 1;
      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = *(v6 + 824);
    if (v19)
    {
      sub_1AF273380(&v42);
      v20 = v19 + 32 * v15;
      v21 = *(v20 + 23);
      if (v21 >= 0)
      {
        v22 = v20;
      }

      else
      {
        v22 = *v20;
      }

      if (v21 >= 0)
      {
        v23 = *(v20 + 23);
      }

      else
      {
        v23 = *(v20 + 8);
      }

      v24 = sub_1AF17C688(&v42, v22, v23);
      v25 = sub_1AF17C688(v24, " [", 2);
      v26 = MEMORY[0x1B271C540](v25, *(a1 + 48));
      sub_1AF17C688(v26, "]", 1);
      objc_msgSend_GPUStartTime(a2, v27, v28, v29);
      v31 = v30;
      objc_msgSend_GPUEndTime(a2, v32, v33, v34);
      v36 = v35;
      v37 = __p;
      sub_1AF2734EC(&v42, __p);
      if (v41 < 0)
      {
        v37 = __p[0];
      }

      v38 = prof_clockTicksFromSecondsMonotonic(v31);
      v39 = prof_clockTicksFromSecondsMonotonic(v36);
      prof_eventTimeRangeDynamicString(v38, v39, "Pass ", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 744, v37);
      if (v41 < 0)
      {
        operator delete(__p[0]);
      }

      vfx_counters_update(*(v6 + 24), *(v20 + 28), v17);
      v42 = *MEMORY[0x1E69E54E8];
      *(&v42 + *(v42 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v43 = MEMORY[0x1E69E5548] + 16;
      if (v45 < 0)
      {
        operator delete(v44[7].__locale_);
      }

      v43 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v44);
      std::ostream::~ostream();
      MEMORY[0x1B271C650](&v46);
    }
  }

LABEL_21:
  std::mutex::unlock((v6 + 880));
}

void sub_1AF2747BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1AF273594(&a15);
  std::mutex::unlock((v15 + 880));
  _Unwind_Resume(a1);
}

void sub_1AF2747FC(uint64_t a1, uint64_t a2)
{
  MTLDevice = CFXGPUDeviceGetMTLDevice(*(a1 + 96));
  v5 = sub_1AF12E2AC(*(a1 + 88));
  v9 = objc_msgSend_commandQueue(v5, v6, v7, v8);
  if (*(a1 + 806) != 1 || (v10 = *(a1 + 872)) == 0)
  {
    v11 = sub_1AF12E2AC(*(a1 + 88));
    v10 = objc_msgSend_currentCommandBuffer(v11, v12, v13, v14);
  }

  CFX::RG::RendererPassArguments::RendererPassArguments(v15, MTLDevice, v9, v10);
  v16 = 2;
  CFX::RG::RendererPassArguments::RendererPassArguments(&v17, v15);
  (*(*a2 + 24))(a2, a1 + 120, 2, &v16);
  sub_1AF2680B0(&v16);
  CFX::RG::RendererPassArguments::~RendererPassArguments(v15);
}

void sub_1AF2748DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, id);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1AF2680B0(va1);
  CFX::RG::RendererPassArguments::~RendererPassArguments(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF274900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 806) != 1 || (v6 = *(a1 + 872)) == 0)
  {
    v7 = sub_1AF12E2AC(*(a1 + 88));
    v6 = objc_msgSend_currentCommandBuffer(v7, v8, v9, v10);
  }

  v11 = objc_msgSend_blitCommandEncoder(v6, a2, a3, a4);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v12, *(a2 + 24), v13);
  objc_msgSend_setLabel_(v11, v15, v14, v16);
  CFX::RG::BlitPassArguments::BlitPassArguments(&v21, v11);
  v22 = 3;
  CFX::RG::BlitPassArguments::BlitPassArguments(&v23, &v21);
  (*(*a2 + 24))(a2, a1 + 120, 2, &v22);
  sub_1AF2680B0(&v22);
  CFX::RG::BlitPassArguments::~BlitPassArguments(&v21);
  return objc_msgSend_endEncoding(v11, v17, v18, v19);
}

void sub_1AF2749E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, id);
  sub_1AF2680B0(va1);
  CFX::RG::BlitPassArguments::~BlitPassArguments(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF274A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 806) != 1)
  {
    v17 = (a1 + 112);
    v16 = *(a1 + 112);
LABEL_9:
    v19 = sub_1AF12E2AC(*(a1 + 88));
    v18 = objc_msgSend_currentCommandBuffer(v19, v20, v21, v22);
    goto LABEL_10;
  }

  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, *(a2 + 24), a4);
  if (*(a1 + 806) != 1 || (v9 = *(a1 + 872)) == 0)
  {
    v10 = sub_1AF12E2AC(*(a1 + 88));
    v9 = objc_msgSend_currentCommandBuffer(v10, v11, v12, v13);
  }

  objc_msgSend_setLabel_(v9, v6, v8, v7);
  v17 = (a1 + 112);
  v16 = *(a1 + 112);
  if ((*(a1 + 806) & 1) == 0)
  {
    goto LABEL_9;
  }

  v18 = *(a1 + 872);
  if (!v18)
  {
    goto LABEL_9;
  }

LABEL_10:
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, *(a2 + 24), v15);
  objc_msgSend_beginEncodingWithCommandBuffer_label_(v16, v24, v18, v23);
  CFX::RG::ComputePassArguments::ComputePassArguments(&v29, *v17);
  v30 = 5;
  CFX::RG::ComputePassArguments::ComputePassArguments(&v31, &v29);
  (*(*a2 + 24))(a2, a1 + 120, 2, &v30);
  sub_1AF2680B0(&v30);
  CFX::RG::ComputePassArguments::~ComputePassArguments(&v29);
  return objc_msgSend_endEncoding(*v17, v25, v26, v27);
}

void sub_1AF274B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, id);
  sub_1AF2680B0(va1);
  CFX::RG::ComputePassArguments::~ComputePassArguments(va);
  _Unwind_Resume(a1);
}

void sub_1AF274B74(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 806) == 1)
  {
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a3[3], a4);
    if (*(a1 + 806) != 1 || (v9 = *(a1 + 872)) == 0)
    {
      v10 = sub_1AF12E2AC(*(a1 + 88));
      v9 = objc_msgSend_currentCommandBuffer(v10, v11, v12, v13);
    }

    objc_msgSend_setLabel_(v9, v6, v8, v7);
  }

  v14 = *(a1 + 88);
  v61 = sub_1AF12E2AC(v14);
  v18 = objc_msgSend_frameConstantBufferPool(v61, v15, v16, v17);
  v66 = v18;
  if (v18)
  {
    CFRetain(v18);
  }

  v19 = (*(*a3 + 32))(a3);
  v20 = v19[274];
  v21 = v19[275];
  v58 = v19[277];
  v59 = v19[276];
  v22 = v19[280];
  v23 = *(a1 + 104);
  v24 = a3[5];
  if ((atomic_load_explicit(qword_1ED73AA98, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF0E7C();
  }

  v25 = qword_1ED73AA90;
  v26 = sub_1AF12E2A0(v14);
  if (v24 == v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 == 1)
  {
    v28 = sub_1AF1310A0(v14);
    v29 = sub_1AF20B77C();
    sub_1AF22D5CC(v28);
  }

  else
  {
    v29 = sub_1AF131180(v14);
    v28 = 0;
  }

  v56 = v28;
  v30 = sub_1AF20107C(v29);
  v64 = *(a1 + 24);
  v65 = *(a1 + 40);
  objc_msgSend_setCounters_(v30, v31, &v64, v32);
  v60 = v30;
  if (v21)
  {
    v57 = v21 + v20;
    v36 = "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm";
    do
    {
      v37 = v59;
      if (v58)
      {
        do
        {
          sub_1AF274F44(a1, v23, a2, a3, v20, v37);
          if (v22)
          {
            prof_beginFlame("Begin encoding", v36, 978);
            v40 = v36;
            if (*(a1 + 806) != 1 || (v41 = *(a1 + 872)) == 0)
            {
              v42 = sub_1AF12E2AC(*(a1 + 88));
              v41 = objc_msgSend_currentCommandBuffer(v42, v43, v44, v45);
            }

            v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v38, a3[3], v39);
            *(v29 + 8) = v41;
            objc_msgSend_beginEncodingWithCommandBuffer_renderPassDescriptor_label_(*(v29 + 24), v47, v41, v23, v46);
            *(v29 + 32) = &v66;
            *v29 = 1;
            *(v29 + 4) = 1;
            *(v29 + 40) = 0;
            objc_msgSend_beginRenderPass_renderEncoder_(v61, v48, v23, v29);
            prof_endFlame();
            v49 = v60;
            v36 = v40;
          }

          else
          {
            v49 = 0;
          }

          CFX::RG::RenderPassArguments::RenderPassArguments(v63, v49, v23, v20, v37);
          LODWORD(v64) = 4;
          CFX::RG::RenderPassArguments::RenderPassArguments((&v64 + 8), v63);
          (*(*a3 + 24))(a3, a1 + 120, 2, &v64);
          sub_1AF2680B0(&v64);
          CFX::RG::RenderPassArguments::~RenderPassArguments(v63);
          if (v22)
          {
            prof_beginFlame("End encoding", v36, 991);
            sub_1AF275560(v29, v50, v51, v52);
            objc_msgSend_endRenderPass(v61, v53, v54, v55);
            prof_endFlame();
          }

          ++v37;
        }

        while (v58 + v59 > v37);
      }

      LOBYTE(v20) = v20 + 1;
    }

    while (v57 > v20);
  }

  if (v56)
  {
    sub_1AF22D640(v56, v33, v34, v35);
    if (v29)
    {

      MEMORY[0x1B271C6B0](v29, 0x10A0C40617E9A74);
    }
  }

  if (v66)
  {
    CFRelease(v66);
  }
}

void sub_1AF274EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  v21 = *(v19 - 88);
  if (v21)
  {
    CFRelease(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF274F44(uint64_t *a1, char *a2, _DWORD *a3, CFX::RG::Pass *a4, unsigned int a5, unsigned int a6)
{
  v10 = sub_1AF130770(a1[11], a2, a3, a4);
  prof_beginFlameSmallData("setupRenderPassDescriptor", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 831, v10 | 0x300000000);
  for (i = 0; i != 8; ++i)
  {
    v15 = objc_msgSend_colorAttachments(a2, v11, v12, v13);
    v18 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, i, v17);
    objc_msgSend_setTexture_(v18, v19, 0, v20);
    v24 = objc_msgSend_colorAttachments(a2, v21, v22, v23);
    v27 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, i, v26);
    objc_msgSend_setResolveTexture_(v27, v28, 0, v29);
  }

  v30 = objc_msgSend_depthAttachment(a2, v11, v12, v13);
  objc_msgSend_setTexture_(v30, v31, 0, v32);
  v36 = objc_msgSend_depthAttachment(a2, v33, v34, v35);
  objc_msgSend_setResolveTexture_(v36, v37, 0, v38);
  v42 = objc_msgSend_stencilAttachment(a2, v39, v40, v41);
  objc_msgSend_setTexture_(v42, v43, 0, v44);
  v45 = (*(*a4 + 32))(a4);
  objc_msgSend_setRenderTargetArrayLength_(a2, v46, *(v45 + 268), v47);
  v48 = sub_1AF12E2AC(a1[11]);
  if (*((*(*a4 + 32))(a4) + 283))
  {
    objc_msgSend_setRasterizationRateMap_(a2, v49, 0, v51);
  }

  else
  {
    v52 = objc_msgSend_rasterizationRateMap(v48, v49, v50, v51);
    objc_msgSend_setRasterizationRateMap_(a2, v53, v52, v54);
  }

  if ((*((*(*a4 + 32))(a4) + 283) & 1) == 0 && sub_1AF12F738(a1[11]) && !objc_msgSend_rasterizationRateMap(a2, v55, v56, v57))
  {
    v153 = sub_1AF1305C8(a1[11]);
    MTLDevice = CFXGPUDeviceGetMTLDevice(a1[12]);
    v59 = sub_1AF70C954(*&v153, *(&v153 + 1), MTLDevice);
    objc_msgSend_setRasterizationRateMap_(a2, v60, v59, v61);
  }

  v154 = a2;
  v62 = *(a4 + 58);
  if (v62)
  {
    v63 = *(a4 + 30);
    v64 = 8 * v62;
    v151 = a6;
    v152 = a5;
    do
    {
      v65 = *v63;
      v66 = CFX::RG::Pass::renderTargetInfo(a4, *v63);
      v67 = v66;
      if (v66)
      {
        v68 = a1[18];
        v69 = CFX::RG::Temporal::currentFrame(v66);
        Texture = CFX::GPUResourceManager::getTexture(v68, v65, v69);
        v71 = *v67;
        if (*v67)
        {
          v72 = 1;
        }

        else
        {
          v72 = *v67 & 2;
        }

        if (CFX::RG::Resource::isExternal(v65))
        {
          v73 = CFX::RG::Resource::externalResourceDesc(v65);
          if (CFX::RG::ExternalResourceDesc::requireLoad(v73))
          {
            v72 = 1;
          }
        }

        v74 = a1[17];
        v75 = CFX::RG::RenderGraphContext::optimisationParameters((a1 + 15));
        v6 = v6 & 0xFFFFFFFFFFFFFF00 | *(v75 + 8);
        v79 = CFX::RG::DeduceStoreAction(a3, a4, v65, v74, *v75);
        v80 = *(v67 + 4);
        switch(v80)
        {
          case 1:
            v115 = objc_msgSend_colorAttachments(v154, v76, v77, v78);
            v118 = objc_msgSend_objectAtIndexedSubscript_(v115, v116, *(v67 + 2), v117);
            v119 = (*(*a4 + 32))(a4);
            if ((v71 & 4) != 0)
            {
              objc_msgSend_setResolveTexture_(v118, v120, Texture, v121);
              objc_msgSend_setResolveLevel_(v118, v143, v152, v144);
              objc_msgSend_setResolveSlice_(v118, v145, v151, v146);
            }

            else
            {
              v122 = v119;
              v123 = *(v67 + 2);
              objc_msgSend_setTexture_(v118, v120, Texture, v121);
              objc_msgSend_setLoadAction_(v118, v124, v72, v125);
              objc_msgSend_setStoreAction_(v118, v126, v79, v127);
              objc_msgSend_setClearColor_(v118, v128, v129, v130, *(v122 + 32 * v123), *(v122 + 32 * v123 + 8), *(v122 + 32 * v123 + 16), *(v122 + 32 * v123 + 24));
              objc_msgSend_setLevel_(v118, v131, v152, v132);
              objc_msgSend_setSlice_(v118, v133, v151, v134);
            }

            break;
          case 2:
            v96 = objc_msgSend_depthAttachment(v154, v76, v77, v78);
            v99 = v96;
            if ((v71 & 4) != 0)
            {
              objc_msgSend_setResolveTexture_(v96, v97, Texture, v98);
              objc_msgSend_setResolveLevel_(v99, v135, v152, v136);
              objc_msgSend_setResolveSlice_(v99, v137, v151, v138);
            }

            else
            {
              objc_msgSend_setTexture_(v96, v97, Texture, v98);
              objc_msgSend_setLoadAction_(v99, v100, v72, v101);
              objc_msgSend_setStoreAction_(v99, v102, v79, v103);
              v104 = (*(*a4 + 32))(a4);
              objc_msgSend_setClearDepth_(v99, v105, v106, v107, *(v104 + 256));
              objc_msgSend_setLevel_(v99, v108, v152, v109);
              objc_msgSend_setSlice_(v99, v110, v151, v111);
            }

            v139 = objc_msgSend_pixelFormat(Texture, v112, v113, v114, v151);
            if (!sub_1AF1F1B38(v139))
            {
              break;
            }

            v81 = objc_msgSend_stencilAttachment(v154, v140, v141, v142);
            v84 = v81;
            if ((v71 & 4) != 0)
            {
LABEL_34:
              objc_msgSend_setResolveTexture_(v81, v82, Texture, v83);
              objc_msgSend_setResolveLevel_(v84, v147, v152, v148);
              objc_msgSend_setResolveSlice_(v84, v149, v151, v150);
              break;
            }

            goto LABEL_23;
          case 3:
            v81 = objc_msgSend_stencilAttachment(v154, v76, v77, v78);
            v84 = v81;
            if ((v71 & 4) != 0)
            {
              goto LABEL_34;
            }

LABEL_23:
            objc_msgSend_setTexture_(v81, v82, Texture, v83);
            objc_msgSend_setLoadAction_(v84, v85, v72, v86);
            objc_msgSend_setStoreAction_(v84, v87, v79, v88);
            v89 = (*(*a4 + 32))(a4);
            objc_msgSend_setClearStencil_(v84, v90, *(v89 + 264), v91);
            objc_msgSend_setLevel_(v84, v92, v152, v93);
            objc_msgSend_setSlice_(v84, v94, v151, v95);
            break;
        }
      }

      ++v63;
      v64 -= 8;
    }

    while (v64);
  }

  prof_endFlame();
}

uint64_t sub_1AF275560(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 16))
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0ED8(v5);
    }
  }

  result = objc_msgSend_endEncoding(*(a1 + 16), a2, a3, a4);
  *(a1 + 8) = 0;
  return result;
}

void sub_1AF2755B4(uint64_t a1, int a2)
{
  *(a1 + 24) = 0;
  *(a1 + 28) = a2;
  v3 = (a2 + 15);
  v4 = malloc_type_malloc((2 * v3), 0xBBD05BDCuLL);
  memset(v4, 255, (2 * v3));
  *(a1 + 16) = v4;
  v5 = malloc_type_malloc((8 * v3), 0xBBD05BDCuLL);
  memset(v5, 255, (8 * v3));
  *a1 = v5;
  v6 = malloc_type_malloc(v3, 0xBBD05BDCuLL);
  memset(v6, 255, v3);
  *(a1 + 8) = v6;
  memset(*a1, 255, 8 * v3);
  v7 = *(a1 + 16);

  bzero(v7, 2 * v3);
}

void sub_1AF275690(uint64_t a1)
{
  sub_1AF2756F4(*(a1 + 8), *(a1 + 16), *(a1 + 28) + 15);
  memset(*a1, 255, 8 * (*(a1 + 28) + 15));
  bzero(*(a1 + 16), 2 * (*(a1 + 28) + 15));
  *(a1 + 24) = 0;
}

uint64_t sub_1AF2756F4(uint64_t result, __int16 *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      v6 = *a2++;
      if (v6)
      {
        result = *v4;
        *v4 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      ++v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1AF275770(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_1AF271C74(*v2, *(v2 + 1), v2);
  }

  a1[7] = 0;
  sub_1AF270CD8(a1, 0);
  v3 = a1[46];
  a1[45] = 0;
  a1[46] = 0;
  if (v3)
  {

    sub_1AF271A90(v3);
  }
}

uint64_t sub_1AF2757FC(void *a1, CFX::CrossFrameResourceManager *this)
{
  v4 = CFX::CrossFrameResourceManager::get(this, 0xD877AC05CAC46D3ELL);
  if (!v4)
  {
    v4 = sub_1AF275930(this, 0xD877AC05CAC46D3ELL);
    v8 = objc_msgSend_resourceManager(a1, v5, v6, v7);
    v27 = 0uLL;
    v28 = 0;
    CFXTextureDescriptorMake2D(0x20u, 0x20u, 0x7Du, &v27);
    LOBYTE(v28) = 1;
    v12 = objc_msgSend_gpuDevice(a1, v9, v10, v11);
    v25 = v27;
    v26 = v28;
    v13 = CFXGPUDeviceCreateTexture(v12, &v25);
    sub_1AFDE8444(v8, &unk_1AFE43240, 0x4000, 0);
    v15 = v14;
    v19 = objc_msgSend_currentCommandBuffer(a1, v16, v17, v18, 0, 0);
    sub_1AF1FF3B8(&v25, v19, @"BlueNoise32", v20);
    sub_1AF2759B8(&v25, v15, 0, v13, 0, 0);
    sub_1AF1FE520(&v25, v21, v22, v23);

    sub_1AF23355C((v4 + 16), v13);
  }

  return sub_1AF2338B0(v4 + 16);
}

uint64_t sub_1AF275930(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2759B8(void **a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_pixelFormat(a4, a2, a3, a4);
  v12 = sub_1AF1F1AAC() >> 3;
  v16 = objc_msgSend_width(a4, v13, v14, v15) * v12;
  v20 = objc_msgSend_height(a4, v17, v18, v19) * v16;
  v24 = objc_msgSend_width(a4, v21, v22, v23);
  v28 = objc_msgSend_height(a4, v25, v26, v27);
  v32 = objc_msgSend_depth(a4, v29, v30, v31);
  memset(v36, 0, sizeof(v36));
  v37[0] = v24;
  v33 = *a1;
  v37[1] = v28;
  v37[2] = v32;
  return objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v33, v34, a2, a3, v16, v20, v37, a4, a5, a6, v36);
}

uint64_t sub_1AF275A98(void *a1, CFX::CrossFrameResourceManager *this)
{
  v4 = CFX::CrossFrameResourceManager::get(this, 0x2D6F9F4D8FCEC7B4);
  if (!v4)
  {
    v4 = sub_1AF275930(this, 0x2D6F9F4D8FCEC7B4);
    v30 = 0uLL;
    v31 = 0;
    CFXTextureDescriptorMake2D(0x100u, 0x100u, 0x48u, &v30);
    LOBYTE(v31) = 3;
    v8 = objc_msgSend_gpuDevice(a1, v5, v6, v7);
    v28 = v30;
    v29 = v31;
    v9 = CFXGPUDeviceCreateTexture(v8, &v28);
    v13 = objc_msgSend_resourceComputeEncoder(a1, v10, v11, v12);
    v17 = objc_msgSend_resourceManager(a1, v14, v15, v16);
    v20 = objc_msgSend_newComputePipelineStateWithFunctionName_(v17, v18, @"vfx_generate_grain", v19);
    v21 = sub_1AFDE323C(v20);
    objc_msgSend_setComputePipelineState_(v13, v22, v21, v23);
    objc_msgSend_setTexture_atIndex_(v13, v24, v9, 0);
    objc_msgSend_dispatchOnTexture2D_(v13, v25, v9, v26);

    sub_1AF23355C((v4 + 16), v9);
  }

  return sub_1AF2338B0(v4 + 16);
}

void sub_1AF275BB0(unsigned int a1, float32x2_t *a2, float a3)
{
  if (a1)
  {
    v4 = 0;
    LODWORD(v3) = vcvtps_s32_f32(a3);
    v5 = a1;
    v6 = a1 - 1;
    v7 = a3;
    v50 = -v3;
    v8 = &a2[v3 + v50];
    do
    {
      if ((v3 & 0x80000000) == 0)
      {
        v52 = xmmword_1AFE47240[3 * v6 + v4];
        LODWORD(v9) = HIDWORD(*&xmmword_1AFE47240[3 * v6 + v4]);
        v10 = (2 * v3) | 1;
        v11 = -v3;
        v12 = v8;
        do
        {
          v13 = v11 * 1.1 / v7;
          v14 = v13 * v13;
          v53 = expf(v9 * (v13 * v13));
          v15 = __sincosf_stret(*&v52 * v14);
          *v12++ = vmul_n_f32(__PAIR64__(LODWORD(v15.__sinval), LODWORD(v15.__cosval)), v53);
          ++v11;
          --v10;
        }

        while (v10);
      }

      ++v4;
      v8 += 128;
    }

    while (v4 != v5);
    v16 = 0;
    v17 = 0.0;
    v18 = a2;
    do
    {
      v19 = &xmmword_1AFE47240[3 * v6 + v16];
      v20 = &a2[128 * v16];
      _D1 = v20[v3];
      v22 = v19[2];
      v23 = v19[3];
      v17 = (v17 + (v22 * (vmuls_lane_f32(-_D1.f32[1], _D1, 1) + (_D1.f32[0] * _D1.f32[0])))) + v23 * ((_D1.f32[0] + _D1.f32[0]) * _D1.f32[1]);
      if (v3 >= 1)
      {
        v24 = v22;
        v25 = v24 + v24;
        v26 = v23 + v23;
        v27 = v3;
        v28 = v18;
        do
        {
          v29 = *v28++;
          _V17.S[1] = v29.i32[1];
          v31 = v17 + v25 * (vmuls_lane_f32(-_D1.f32[1], v29, 1) + (_D1.f32[0] * v29.f32[0]));
          __asm { FMLA            S18, S1, V17.S[1] }

          v17 = v31 + v26 * _S18;
          --v27;
        }

        while (v27);
        v37 = v24 * 4.0;
        v38 = v23 * 4.0;
        do
        {
          v39 = 0;
          _D16 = v20[v27];
          v41 = v17 + v25 * ((_D16.f32[0] * _D1.f32[0]) - (_D16.f32[1] * _D1.f32[1]));
          v17 = v41 + v26 * (vmuls_lane_f32(_D1.f32[0], _D16, 1) + (_D16.f32[0] * _D1.f32[1]));
          do
          {
            _D19 = v18[v39];
            v43 = v17 + v37 * (vmuls_lane_f32(-_D16.f32[1], _D19, 1) + (_D16.f32[0] * _D19.f32[0]));
            __asm { FMLA            S20, S16, V19.S[1] }

            v17 = v43 + v38 * _S20;
            ++v39;
          }

          while (v3 != v39);
          ++v27;
        }

        while (v27 != v3);
      }

      ++v16;
      v18 += 128;
    }

    while (v16 != v5);
    v45 = 0;
    v46 = 1.0 / sqrtf(v17);
    v47 = &a2[v3 + v50];
    do
    {
      v48 = (2 * v3) | 1;
      v49 = v47;
      if ((v3 & 0x80000000) == 0)
      {
        do
        {
          *v49 = vmul_n_f32(*v49, v46);
          ++v49;
          --v48;
        }

        while (v48);
      }

      ++v45;
      v47 += 128;
    }

    while (v45 != v5);
  }
}

uint64_t sub_1AF275E98(void *a1, CFX::CrossFrameResourceManager *this, unsigned int a3, void *a4, float a5)
{
  v22[385] = *MEMORY[0x1E69E9840];
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (COERCE_UNSIGNED_INT64(a5) ^ 0x43C4F620D84108D1)) ^ ((0x9DDFEA08EB382D69 * (COERCE_UNSIGNED_INT64(a5) ^ 0x43C4F620D84108D1)) >> 47) ^ 0x43C4F620D84108D1);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = a3;
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ a3)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ a3)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ a3)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ a3)))) >> 47));
  v14 = CFX::CrossFrameResourceManager::get(this, v13);
  if (!v14)
  {
    v14 = sub_1AF276028(this, v13);
    MEMORY[0x1EEE9AC00](v14, v15);
    sub_1AF275BB0(a3, v22, a5);
    v19 = objc_msgSend_resourceManager(a1, v16, v17, v18);
    sub_1AFDE8444(v19, v22, (v12 << 10), 0);
    sub_1AF23355C((v14 + 16), v20);
  }

  if (a4)
  {
    memcpy(a4, &xmmword_1AFE47240[3 * v12 - 3], 16 * v12);
  }

  return sub_1AF1403B4(v14 + 16);
}

uint64_t sub_1AF276028(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2760B0(CFX::CrossFrameResourceManager *a1)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, 0x5A81C135E3353BC9);
  if (!v2)
  {
    v2 = sub_1AF276170(a1, 0x5A81C135E3353BC9);
    v3 = sub_1AF1A0BFC();
    sub_1AF16CC34(v3, @"--SimplifiedMaterial--");
    v4 = sub_1AF1A1270(v3);
    sub_1AF165A7C(v4, 2);
    sub_1AF2761F8((v2 + 16), v3);
    sub_1AF163FFC(v6, 1.0, 1.0, 1.0, 1.0);
    sub_1AF166340(v4, 1, v6);
  }

  return *(v2 + 16);
}

uint64_t sub_1AF276170(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF2761F8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4 == a2)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0F5C(v5, v6, v7, v8, v9, v10, v11, v12);
      if (!a2)
      {
        return;
      }
    }

    else if (!a2)
    {
      return;
    }

    CFRelease(a2);
  }

  else
  {
    if (v4)
    {
      CFRelease(v4);
    }

    *a1 = a2;
  }
}

uint64_t sub_1AF276268(uint64_t a1)
{
  *a1 = &unk_1F24EBB98;

  return a1;
}

void sub_1AF2762B0(uint64_t a1)
{
  *a1 = &unk_1F24EBB98;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF276318(uint64_t a1)
{
  *a1 = &unk_1F24EBBB8;

  return a1;
}

void sub_1AF276360(uint64_t a1)
{
  *a1 = &unk_1F24EBBB8;

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF2763C8(void *a1)
{
  *a1 = &unk_1F24EBBD8;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AF276414(void *a1)
{
  *a1 = &unk_1F24EBBD8;
  v1 = a1[2];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF276484(void *a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationImageProxyWillDie", a1, 0, 1u);
  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }
}

uint64_t sub_1AF2764DC()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB654D30 = result;
  return result;
}

uint64_t sub_1AF276504(char a1)
{
  if (qword_1EB654D38 != -1)
  {
    sub_1AFDF0F94();
  }

  v2 = sub_1AF0D160C(qword_1EB654D30, 0x30uLL);
  if (!v2)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(v2 + 56) = a1;
  return v2;
}

uint64_t sub_1AF276584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = sub_1AF276608(a1);
  result = v14(a3, a2, v15);
  if (result)
  {
    *(result + 40) = a1;
  }

  return result;
}

uint64_t sub_1AF276608(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 48);
}

uint64_t sub_1AF276650(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    return 1;
  }

  v11 = sub_1AF276608(a1);
  return v10(v11);
}

uint64_t sub_1AF2766B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (!*(a1 + 40))
  {
    v16 = sub_1AF0D5194();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1098(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  v24 = *(a1 + 40);
  v25 = sub_1AF276608(a1);
  return v24(v25, a2, a3, a4);
}

uint64_t sub_1AF276754(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 56);
}

CFTypeRef sub_1AF27679C(uint64_t a1, CFTypeRef cf, char a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  result = *(a1 + 48);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 48) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 48) = result;
    *(a1 + 56) = a3;
  }

  return result;
}

__n128 sub_1AF276824(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *a2;
  v13 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v13;
  return result;
}

void sub_1AF276880(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }
}

uint64_t sub_1AF2768B8()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB644878 = result;
  return result;
}

uint64_t sub_1AF2768E0()
{
  if (qword_1EB644880 != -1)
  {
    sub_1AFDF1110();
  }

  v0 = sub_1AF0D160C(qword_1EB644878, 0x20uLL);
  if (!v0)
  {
    v1 = sub_1AF0D5194();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  return v0;
}

uint64_t sub_1AF276950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(a1 + 16);
  if (!v16)
  {
    return 0;
  }

  v17 = sub_1AF2769DC(a1);
  return v16(a2, v17, a3, a4);
}

uint64_t sub_1AF2769DC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1124(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

CFTypeRef sub_1AF276A24(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1124(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

void sub_1AF276AA4(uint64_t a1, _OWORD *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF1124(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    *(a1 + 16) = *a2;
    return;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

char *sub_1AF276B20(char **a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  os_unfair_lock_lock(&unk_1ED7398B8);
  v10 = sub_1AF1D2760(qword_1ED739AB8);
  os_unfair_lock_unlock(&unk_1ED7398B8);
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = a1[1];
  if (!v11)
  {
    v11 = a1;
  }

  *v11 = v10;
  a1[1] = v10;
  return v10;
}

void sub_1AF276BBC(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4 == a1)
  {
    if (os_variant_has_internal_diagnostics() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF119C();
    }
  }

  else if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    _Block_release(v5);
  }
}

uint64_t sub_1AF276C48()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7398E8 = result;
  return result;
}

const void *sub_1AF276C70()
{
  v0 = *(sub_1AF276CB4() + 2);
  v1 = CFArrayGetCount(v0) - 1;

  return CFArrayGetValueAtIndex(v0, v1);
}

void *sub_1AF276CB4()
{
  if (qword_1ED739AC8 != -1)
  {
    sub_1AFDF11E4();
  }

  v0 = pthread_getspecific(qword_1ED739AA8);
  if (!v0)
  {
    v0 = malloc_type_calloc(0x38uLL, 1uLL, 0x7057AC6EuLL);
    *(v0 + 2) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *(v0 + 32) = 0;
    pthread_setspecific(qword_1ED739AA8, v0);
    sub_1AF276F2C(1);
    os_unfair_lock_lock(&unk_1ED739AA0);
    v1 = qword_1ED739A98;
    *(v0 + 1) = qword_1ED739A98;
    if (v1)
    {
      *v1 = v0;
    }

    qword_1ED739A98 = v0;
    os_unfair_lock_unlock(&unk_1ED739AA0);
    if (!*(v0 + 3))
    {
      Current = CFRunLoopGetCurrent();
      v3 = CFRunLoopCopyCurrentMode(Current);
      v4 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 2000000, sub_1AF2785F8, 0);
      *(v0 + 3) = v4;
      if (v4)
      {
        CFRunLoopAddObserver(Current, v4, *MEMORY[0x1E695E8D0]);
      }

      if (v3)
      {
        if (*(v0 + 3) && v3 != *MEMORY[0x1E695E8E0])
        {
          if (!qword_1EB6587C8 && CFEqual(v3, @"UITrackingRunLoopMode"))
          {
            qword_1EB6587C8 = CFRetain(v3);
            CFRunLoopAddObserver(Current, *(v0 + 3), v3);
          }

          if (v3 != qword_1EB6587C8)
          {
            CFRunLoopAddObserver(Current, *(v0 + 3), v3);
          }
        }

        CFRelease(v3);
      }
    }
  }

  return v0;
}

void sub_1AF276F2C(int a1)
{
  v2 = sub_1AF276CB4();
  if (CFArrayGetCount(*(v2 + 16)) < 1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    v3 = *(v2 + 16);
    Count = CFArrayGetCount(v3);
    ValueAtIndex = CFArrayGetValueAtIndex(v3, Count - 1);
  }

  if (qword_1ED7398F0 != -1)
  {
    sub_1AFDF12D8();
  }

  v6 = sub_1AF0D160C(qword_1ED7398E8, 0x40uLL);
  v7 = v6;
  *(v6 + 32) = 0;
  if (a1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *(v6 + 52) = *(v6 + 52) & 0xFD | v8;
  if (ValueAtIndex)
  {
    *(v6 + 64) = CFRetain(ValueAtIndex);
    atomic_fetch_add(ValueAtIndex + 14, 1u);
    if ((ValueAtIndex[13] & 2) == 0)
    {
      *(v7 + 32) = *(ValueAtIndex + 4);
      v9 = *(v7 + 24);
      v10 = *(ValueAtIndex + 3);
      if (v9 != v10)
      {
        if (v9)
        {
          CFRelease(*(v7 + 24));
          *(v7 + 24) = 0;
          v10 = *(ValueAtIndex + 3);
        }

        if (v10)
        {
          v10 = CFRetain(v10);
        }

        *(v7 + 24) = v10;
      }
    }
  }

  CFArrayAppendValue(*(v2 + 16), v7);

  CFRelease(v7);
}

void sub_1AF277058()
{
  if (*&qword_1ED739AC0 == 0.0)
  {
    qword_1ED739AC0 = CACurrentMediaTime();
  }
}

uint64_t sub_1AF27708C()
{
  os_unfair_lock_lock(&unk_1ED739AA0);
  v0 = qword_1ED739A98;
  if (qword_1ED739A98)
  {
    while (1)
    {
      v1 = *(v0 + 40);
      if (v1)
      {
        v2 = *(v1 + 32);
        if (v2)
        {
          if ((*(v2 + 52) & 2) != 0 || *(v2 + 40) != 0.0)
          {
            break;
          }
        }
      }

      v0 = *(v0 + 8);
      if (!v0)
      {
        goto LABEL_7;
      }
    }

    v3 = 1;
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

  os_unfair_lock_unlock(&unk_1ED739AA0);
  return v3;
}

void sub_1AF277114(int a1, int a2)
{
  if (!a2 || sub_1AF27708C())
  {
    prof_beginFlame("_CFXTransactionFlush", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/Transactions/CFXTransaction.c", 1037);
    if (a1)
    {
      if (qword_1ED73AC90 != -1)
      {
        sub_1AFDF12EC();
      }

      dispatch_async(qword_1ED73AC98, &unk_1F24EBC68);
    }

    else
    {
      if (qword_1ED73AC90 != -1)
      {
        sub_1AFDF12EC();
      }

      dispatch_sync(qword_1ED73AC98, &unk_1F24EBC68);
    }

    prof_endFlame();
  }
}

uint64_t sub_1AF2771D4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  result = sub_1AF1CF830(a3);
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = sub_1AF1DE538(a1);
  v15 = *(a1 + 34);
  v16 = *(a1 + 35);
  qmemcpy(bytes, "transition-0x", sizeof(bytes));
  v17 = vdupq_n_s64(a2);
  v18.i64[0] = 0xF0000000FLL;
  v18.i64[1] = 0xF0000000FLL;
  v19 = vandq_s8(vuzp1q_s32(vshlq_u64(v17, xmmword_1AFE472E0), vshlq_u64(v17, xmmword_1AFE472D0)), v18);
  v20 = vandq_s8(vuzp1q_s32(vshlq_u64(v17, xmmword_1AFE47300), vshlq_u64(v17, xmmword_1AFE472F0)), v18);
  v21 = vandq_s8(vuzp1q_s32(vshlq_u64(v17, xmmword_1AFE47320), vshlq_u64(v17, xmmword_1AFE47310)), v18);
  v22 = vandq_s8(vuzp1q_s32(vshlq_u64(v17, xmmword_1AFE47340), vshlq_u64(v17, xmmword_1AFE47330)), v18);
  v18.i64[0] = 0xA0000000ALL;
  v18.i64[1] = 0xA0000000ALL;
  v23.i64[0] = 0x5700000057;
  v23.i64[1] = 0x5700000057;
  v60 = vuzp1q_s8(vuzp1q_s16(vbslq_s8(vcgtq_u32(v18, v20), (*&v20 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v20, v23)), vbslq_s8(vcgtq_u32(v18, v19), (*&v19 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v19, v23))), vuzp1q_s16(vbslq_s8(vcgtq_u32(v18, v22), (*&v22 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v22, v23)), vbslq_s8(vcgtq_u32(v18, v21), (*&v21 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v21, v23))));
  v61 = v15 + 97;
  v62 = v16 + 97;
  v63 = 0;
  v24 = CFStringCreateWithBytes(0, bytes, 31, 0x8000100u, 0);
  v25 = v24;
  v26 = *(a5 + 32);
  if (v26 <= 0.0)
  {
    sub_1AF118354(v13, a4, v24);
    v31 = v26;
LABEL_14:
    (*(a6 + 16))(a6, v31);
    v32 = 0;
    v48 = 1;
    goto LABEL_15;
  }

  v55 = v24;
  v56 = a4;
  v27 = sub_1AF1CD954(v14);
  v28 = *(a1 + 16);
  v29 = sub_1AF1CDA60(v27);
  v30 = sub_1AF1CDB3C(v27);
  sub_1AF1C34F8(v28, a2, v29, v30, *(a1 + 34), *(a1 + 35));
  v31 = v26;
  v57 = a6;
  (*(a6 + 16))(a6, v26);
  v58 = v14;
  v32 = sub_1AF1CD954(v14);
  v33 = *(a1 + 16);
  v34 = sub_1AF1CDA60(v32);
  v35 = sub_1AF1CDB3C(v32);
  sub_1AF1C34F8(v33, a2, v34, v35, *(a1 + 34), *(a1 + 35));
  v36 = *(a1 + 16);
  v37 = sub_1AF1CDA60(v27);
  v38 = sub_1AF1CDB3C(v27);
  sub_1AF1C35C0(v36, a2, v37, v38, *(a1 + 34), *(a1 + 35));
  v39 = sub_1AF113D84();
  sub_1AF113F9C(v39, v32);
  v40 = *&qword_1ED739AC0;
  if (*&qword_1ED739AC0 == 0.0)
  {
    v40 = CACurrentMediaTime();
    qword_1ED739AC0 = *&v40;
  }

  sub_1AF116CA4(v13, v40);
  sub_1AF117998(v13, a1);
  v41 = *(a1 + 16);
  v42 = sub_1AF1CDA60(v27);
  v43 = sub_1AF1CDB3C(v27);
  sub_1AF1C34F8(v41, a2, v42, v43, *(a1 + 34), *(a1 + 35));
  sub_1AF11407C(v39, v27);
  sub_1AF113510(v39, 1);
  sub_1AF1129D0(v39, v26);
  v44 = *(a5 + 36);
  if (v44 != 0.0)
  {
    sub_1AF112FE0(v39, v44);
  }

  v45 = *(a5 + 24);
  v14 = v58;
  a6 = v57;
  if (!v45)
  {
    sub_1AF120C44();
    v45 = v46;
  }

  sub_1AF112C48(v39, v45);
  sub_1AF1182E4(v13, v39, a1, v56, v55);
  v47 = v39;
  v25 = v55;
  CFRelease(v47);
  CFRelease(v27);
  if (!v32)
  {
    goto LABEL_14;
  }

  v48 = 0;
LABEL_15:
  v49 = sub_1AF1CFFC0(a3);
  v50 = sub_1AF1DEC44(v49, a1);
  if (v50)
  {
    v51 = v50;
    if (v48)
    {
      v32 = sub_1AF1CD954(v14);
      v52 = *(a1 + 16);
      v53 = sub_1AF1CDA60(v32);
      v54 = sub_1AF1CDB3C(v32);
      sub_1AF1C34F8(v52, a2, v53, v54, *(a1 + 34), *(a1 + 35));
    }

    sub_1AF1DECEC(v51, a1, v32);
  }

  CFRelease(v25);
  CFRelease(a1);
  if (v32)
  {
    CFRelease(v32);
  }

  return 1;
}

uint64_t sub_1AF277660(uint64_t a1, void *a2, CFStringRef theString, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !theString)
  {
    return (*(a5 + 16))(a5, a2, theString, *(a4 + 32));
  }

  v10 = sub_1AF1DB6D0(a2, theString, 0);
  v11 = sub_1AF1DE3A8(v10);
  if (!v10 || !v11)
  {
    if (v10)
    {
      CFRelease(v10);
    }

    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = theString;
      v16 = 2112;
      v17 = a2;
      _os_log_impl(&dword_1AF0CE000, v13, OS_LOG_TYPE_DEFAULT, "Warning: invalid keypath: %@ sent to object %@", &v14, 0x16u);
    }

    return (*(a5 + 16))(a5, a2, theString, *(a4 + 32));
  }

  result = sub_1AF2771D4(v10, v11, a1, a2, a4, a5);
  if ((result & 1) == 0)
  {
    return (*(a5 + 16))(a5, a2, theString, *(a4 + 32));
  }

  return result;
}

uint64_t sub_1AF27779C(uint64_t a1, void *a2, const __CFString *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3)
  {
    return (*(a6 + 16))(a6, *(a5 + 32));
  }

  v10 = a4;
  v12 = sub_1AF1DB72C(a2, a3, a4, 0);
  v13 = sub_1AF1DE3A8(v12);
  if (!v12 || !v13)
  {
    if (v12)
    {
      CFRelease(v12);
    }

    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412802;
      v17 = a3;
      v18 = 1024;
      v19 = v10;
      v20 = 2112;
      v21 = a2;
      _os_log_impl(&dword_1AF0CE000, v15, OS_LOG_TYPE_DEFAULT, "Warning: invalid key+index: %@ %d sent to object %@", &v16, 0x1Cu);
    }

    return (*(a6 + 16))(a6, *(a5 + 32));
  }

  result = sub_1AF2771D4(v12, v13, a1, a2, a5, a6);
  if ((result & 1) == 0)
  {
    return (*(a6 + 16))(a6, *(a5 + 32));
  }

  return result;
}

uint64_t sub_1AF2778F4(uint64_t a1, void *a2, const __CFString *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3 || !a4)
  {
    return (*(a6 + 16))(a6, *(a5 + 32));
  }

  v12 = sub_1AF1DB7C8(a2, a3, a4, 0);
  v13 = sub_1AF1DE3A8(v12);
  if (!v12 || !v13)
  {
    if (v12)
    {
      CFRelease(v12);
    }

    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412802;
      v17 = a3;
      v18 = 2112;
      v19 = a4;
      v20 = 2112;
      v21 = a2;
      _os_log_impl(&dword_1AF0CE000, v15, OS_LOG_TYPE_DEFAULT, "Warning: invalid key+subscript: %@ %@ sent to object %@", &v16, 0x20u);
    }

    return (*(a6 + 16))(a6, *(a5 + 32));
  }

  result = sub_1AF2771D4(v12, v13, a1, a2, a5, a6);
  if ((result & 1) == 0)
  {
    return (*(a6 + 16))(a6, *(a5 + 32));
  }

  return result;
}

void sub_1AF277A4C(char a1)
{
  v2 = sub_1AF276CB4();
  os_unfair_lock_lock(&unk_1ED739AA0);
  v3 = *(v2 + 2);
  Count = CFArrayGetCount(v3);
  ValueAtIndex = CFArrayGetValueAtIndex(v3, Count - 1);
  if (ValueAtIndex[5] == 0.0)
  {
    v7 = ValueAtIndex;
    prof_beginFlame("CFXTransactionCommit", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/Transactions/CFXTransaction.c", 1362);
    v8 = *(v7 + 52);
    v9 = CACurrentMediaTime();
    *(v7 + 40) = v9;
    if (a1)
    {
      *(v7 + 52) |= 1u;
      sub_1AF277BEC(v7);
    }

    else
    {
      v10 = v9;
      v11 = sub_1AF276B20(v2 + 5);
      *(v11 + 5) = 0;
      *(v11 + 6) = v10;
      *(v11 + 4) = CFRetain(v7);
    }

    v12 = sub_1AF276CB4();
    v13 = CFArrayGetCount(v12[2]);
    if (v13 <= 1)
    {
      v14 = sub_1AF0D5194();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF1300(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF1378();
      }
    }

    else
    {
      CFArrayRemoveValueAtIndex(v12[2], v13 - 1);
    }

    os_unfair_lock_unlock(&unk_1ED739AA0);
    if (CFArrayGetCount(*(v2 + 2)) <= 1 && (v8 & 4) == 0 && (a1 & 1) == 0)
    {
      sub_1AF277114(1, 0);
    }

    prof_endFlame();
  }

  else
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF13AC();
    }

    os_unfair_lock_unlock(&unk_1ED739AA0);
  }
}

void sub_1AF277BEC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 52) & 1) != 0 && !*(a1 + 48) && !atomic_load((a1 + 56)))
  {
    CFRetain(a1);
    v11 = *(a1 + 64);
    if (v11)
    {
      CFRetain(*(a1 + 64));
      v12 = atomic_load(v11 + 14);
      if (v12 <= 0)
      {
        v13 = sub_1AF0D5194();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF13E0(v13, v14, v15, v16, v17, v18, v19, v20);
        }
      }

      v21 = *(a1 + 64);
      if (v21 != v11)
      {
        v22 = sub_1AF0D5194();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF1458(v22, v23, v24, v25, v26, v27, v28, v29);
        }

        v21 = *(a1 + 64);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      *(a1 + 64) = 0;
      atomic_fetch_add(v11 + 14, 0xFFFFFFFF);
      sub_1AF278E3C(a1);
      if (!atomic_load(v11 + 14))
      {
        sub_1AF277BEC(v11);
      }

      CFRelease(v11);
    }

    else
    {
      sub_1AF278E3C(a1);
    }

    CFRelease(a1);
  }
}

void sub_1AF277D18(const void *a1, const void *a2)
{
  v4 = sub_1AF276C70();
  Mutable = *(v4 + 2);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v4 + 2) = Mutable;
  }

  if (a2)
  {

    CFDictionarySetValue(Mutable, a1, a2);
  }

  else
  {

    CFDictionaryRemoveValue(Mutable, a1);
  }
}

const __CFDictionary *sub_1AF277DAC(const void *a1)
{
  result = *(sub_1AF276C70() + 2);
  if (result)
  {

    return CFDictionaryGetValue(result, a1);
  }

  return result;
}

void *sub_1AF277DF8(const void *a1)
{
  v2 = sub_1AF276C70();
  v3 = v2[9];
  if (v3)
  {
    _Block_release(v3);
  }

  result = _Block_copy(a1);
  v2[9] = result;
  return result;
}

void sub_1AF277E5C(float a1)
{
  v2 = sub_1AF276C70();
  if ((v2[13] & 2) != 0)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF14D0();
    }
  }

  v2[8] = a1;
}

CFTypeRef sub_1AF277EF8(CFTypeRef a1)
{
  v2 = sub_1AF276C70();
  if ((v2[52] & 2) != 0)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1504();
    }
  }

  result = *(v2 + 3);
  if (result != a1)
  {
    if (result)
    {
      CFRelease(result);
      *(v2 + 3) = 0;
    }

    if (a1)
    {
      result = CFRetain(a1);
    }

    else
    {
      result = 0;
    }

    *(v2 + 3) = result;
  }

  return result;
}

void sub_1AF277F9C(float a1)
{
  v2 = sub_1AF276C70();
  if ((v2[13] & 2) != 0)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1538();
    }
  }

  v2[9] = a1;
}

_BYTE *sub_1AF278014(char a1)
{
  result = sub_1AF276CB4();
  result[32] = a1;
  return result;
}

void sub_1AF278058(int a1)
{
  v2 = sub_1AF276C70();
  if (a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  v2[52] = v2[52] & 0xFB | v3;
  if (a1)
  {
    qword_1ED739AC0 = CACurrentMediaTime();
  }
}

uint64_t sub_1AF2780EC(uint64_t a1)
{
  if (*(sub_1AF276CB4() + 32))
  {
    return 1;
  }

  else
  {
    return (*(a1 + 52) >> 2) & 1;
  }
}

void *sub_1AF27814C(uint64_t a1)
{
  result = pthread_getspecific(qword_1ED739AB0);
  if (result)
  {
    v3 = result;
    sub_1AF119D24(a1, result);
    result = sub_1AF119CDC(a1);
    *result = sub_1AF2781C0;
    result[1] = sub_1AF27826C;
    ++*(v3 + 12);
  }

  return result;
}

void *sub_1AF2781C0(uint64_t a1)
{
  v2 = sub_1AF119DA4(a1);
  if (!v2)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (!*(v2 + 48))
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF156C(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(v2 + 48) - 1;
  *(v2 + 48) = v19;
  if (!v19)
  {
    sub_1AF277BEC(v2);
  }

  sub_1AF119D24(a1, 0);
  result = sub_1AF119CDC(a1);
  *result = 0;
  result[1] = 0;
  return result;
}

void *sub_1AF27826C(uint64_t a1)
{
  v2 = sub_1AF119DA4(a1);
  if (!v2)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (!*(v2 + 48))
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF15E4(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(v2 + 48) - 1;
  *(v2 + 48) = v19;
  if (!v19)
  {
    sub_1AF277BEC(v2);
  }

  sub_1AF119D24(a1, 0);
  result = sub_1AF119CDC(a1);
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_1AF278318()
{
  v0 = pthread_getspecific(qword_1ED739AB0);
  if (v0 && !v0[3])
  {

    sub_1AF120C44();
  }
}

double sub_1AF27835C()
{
  v0 = pthread_getspecific(qword_1ED739AB0);
  if (v0)
  {
    return v0[8];
  }

  else
  {
    return 0.0;
  }
}

void sub_1AF278390(const void *a1, const void *a2, const void *a3, const void *a4, char a5, const void *a6)
{
  if (!a6 && (v12 = sub_1AF0D5194(), os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF165C(v12, v13, v14, v15, v16, v17, v18, v19);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v20 = sub_1AF0D5194();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF16D4(v20, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_6:
  v28 = sub_1AF276CB4();
  os_unfair_lock_lock(&unk_1ED739AA0);
  v29 = sub_1AF276B20(v28 + 5);
  if (a3)
  {
    v30 = CFRetain(a3);
  }

  else
  {
    v30 = 0;
  }

  *(v29 + 2) = v30;
  if (a2)
  {
    v31 = CFRetain(a2);
  }

  else
  {
    v31 = 0;
  }

  *(v29 + 1) = v31;
  if (a4)
  {
    v32 = CFRetain(a4);
  }

  else
  {
    v32 = 0;
  }

  *(v29 + 3) = v32;
  *(v29 + 5) = _Block_copy(a6);
  if (a1)
  {
    v33 = CFRetain(a1);
  }

  else
  {
    v33 = 0;
  }

  *(v29 + 4) = v33;
  *(v29 + 6) = CACurrentMediaTime();
  v29[56] = a5;
  os_unfair_lock_unlock(&unk_1ED739AA0);
}

void *sub_1AF2784CC()
{
  pthread_key_create(&qword_1ED739AA8, sub_1AF27852C);
  pthread_key_create(&qword_1ED739AB0, nullsub_184);
  result = sub_1AF1D26F8(64, 2048);
  qword_1ED739AB8 = result;
  return result;
}

void sub_1AF27852C(void *a1)
{
  if (a1)
  {
    os_unfair_lock_lock(&unk_1ED739AA0);
    v2 = *(a1 + 5);
    os_unfair_lock_unlock(&unk_1ED739AA0);
    if (v2)
    {
      sub_1AF277114(0, 0);
    }

    os_unfair_lock_lock(&unk_1ED739AA0);
    v3 = *(a1 + 1);
    if (*a1)
    {
      v4 = (*a1 + 8);
    }

    else
    {
      v4 = &qword_1ED739A98;
    }

    *v4 = v3;
    if (v3)
    {
      *v3 = *a1;
    }

    os_unfair_lock_unlock(&unk_1ED739AA0);
    v5 = *(a1 + 3);
    if (v5)
    {
      CFRunLoopObserverInvalidate(v5);
      CFRelease(*(a1 + 3));
    }

    CFRelease(*(a1 + 2));
  }

  free(a1);
}

void sub_1AF2785F8(uint64_t a1)
{
  v2 = sub_1AF276CB4();
  if (v2 && *(v2 + 24) == a1)
  {

    sub_1AF277114(1, 1);
  }
}

void sub_1AF278650()
{
  *&v62[5] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&unk_1ED739AA0);
  v0 = qword_1ED739A98;
  if (qword_1ED739A98)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    do
    {
      v5 = v0 + 5;
      v4 = v0[5];
      if (v4 && (v6 = v4[4]) != 0 && ((*(v6 + 52) & 2) != 0 || *(v6 + 40) != 0.0))
      {
        v7 = v0[5];
        if (v3)
        {
          if (v2)
          {
            *v2 = v4;
          }

          v7 = v3;
        }

        v8 = *v4;
        ++v1;
        if (*v4)
        {
          while (1)
          {
            v9 = v8;
            v10 = v8[4];
            if (!v10 || (*(v10 + 52) & 2) == 0 && *(v10 + 40) == 0.0)
            {
              break;
            }

            v8 = *v9;
            ++v1;
            v4 = v9;
            if (!*v9)
            {
              goto LABEL_20;
            }
          }

          *v4 = 0;
          *v5 = v9;
          v3 = v7;
        }

        else
        {
          v9 = v4;
LABEL_20:
          *v9 = 0;
          v3 = v7;
          v4 = v9;
          *v5 = 0;
          v0[6] = 0;
        }
      }

      else
      {
        v4 = v2;
      }

      v0 = v0[1];
      v2 = v4;
    }

    while (v0);
    os_unfair_lock_unlock(&unk_1ED739AA0);
    if (v1)
    {
      v11 = malloc_type_malloc(8 * v1, 0x2004093837F09uLL);
      v12 = v11;
      if (v1 <= 0)
      {
        qsort(v11, v1, 8uLL, sub_1AF278D68);
        v14 = v1 - 1;
      }

      else
      {
        for (i = 0; i != v1; ++i)
        {
          v11[i] = v3;
          v3 = *v3;
        }

        qsort(v11, v1, 8uLL, sub_1AF278D68);
        v14 = v1 - 1;
        if (v1 != 1)
        {
          v15 = v12 + 1;
          v16 = *v12;
          v17 = (v1 - 1);
          do
          {
            v18 = *v15++;
            *v16 = v18;
            v16 = v18;
            --v17;
          }

          while (v17);
        }
      }

      *v12[v14] = 0;
      v19 = *v12;
      free(v12);
      if (v19)
      {
        for (j = 0; ; ++j)
        {
          pthread_mutex_lock(&stru_1ED72F680);
          prof_beginFlame("CFXTransactionExecuteFlush", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/Transactions/CFXTransaction.c", 1254);
          v20 = sub_1AF0D5194();
          v21 = os_signpost_id_generate(v20);
          v22 = sub_1AF0D5194();
          v53 = v21 - 1;
          if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v23 = v22;
            if (os_signpost_enabled(v22))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "TransactionFlush", &unk_1AFF70A1D, buf, 2u);
            }
          }

          spid = v21;
          v24 = MEMORY[0x1E695E9F8];
          Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
          v26 = CFSetCreateMutable(0, 0, v24);
          v27 = 0;
          qword_1ED739AC0 = CACurrentMediaTime();
          v28 = v19;
          do
          {
            v29 = v28[4];
            if (v28[5])
            {
              if ((v29[52] & 2) == 0)
              {
                pthread_setspecific(qword_1ED739AB0, v28[4]);
              }

              v30 = v28[2];
              if (v30 && sub_1AF16D234(v30))
              {
                v31 = sub_1AF1C3FAC(v28[2]);
                if (v31)
                {
                  if (!CFSetContainsValue(Mutable, v31))
                  {
                    CFSetAddValue(Mutable, v31);
                    sub_1AF1CEA20(v31);
                  }

                  if ((v28[7] & 1) != 0 && !CFSetContainsValue(v26, v31))
                  {
                    CFSetAddValue(v26, v31);
                  }
                }
              }

              else
              {
                v31 = 0;
              }

              sub_1AF277660(v31, v28[2], v28[3], v29, v28[5]);
              pthread_setspecific(qword_1ED739AB0, 0);
            }

            else
            {
              if (!v27)
              {
                v27 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              }

              CFArrayAppendValue(v27, v29);
            }

            v28 = *v28;
          }

          while (v28);
          if (v27)
          {
            v64.length = CFArrayGetCount(v27);
            v64.location = 0;
            CFArrayApplyFunction(v27, v64, sub_1AF278D88, 0);
            CFRelease(v27);
          }

          v32 = v19;
          do
          {
            v34 = *v32;
            v33 = v32[1];
            if (v33)
            {
              CFRelease(v33);
              v32[1] = 0;
            }

            v35 = v32[2];
            if (v35)
            {
              CFRelease(v35);
              v32[2] = 0;
            }

            v36 = v32[3];
            if (v36)
            {
              CFRelease(v36);
              v32[3] = 0;
            }

            v37 = v32[4];
            if (v37)
            {
              CFRelease(v37);
              v32[4] = 0;
            }

            v38 = v32[5];
            if (v38)
            {
              _Block_release(v38);
            }

            v32 = v34;
          }

          while (v34);
          os_unfair_lock_lock(&unk_1ED7398B8);
          do
          {
            v40 = *v19;
            sub_1AF1D28EC(qword_1ED739AB8, v19, v39);
            v19 = v40;
          }

          while (v40);
          os_unfair_lock_unlock(&unk_1ED7398B8);
          sub_1AF28A5A0(Mutable, &unk_1F24EBC88);
          LocalCenter = CFNotificationCenterGetLocalCenter();
          if (!LocalCenter)
          {
            v42 = sub_1AF0D5194();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDF174C(v61, v62, v42);
            }
          }

          *v55 = MEMORY[0x1E69E9820];
          v56 = 0x40000000;
          v57 = sub_1AF278DA0;
          v58 = &unk_1E7A7DBC0;
          v59 = LocalCenter;
          sub_1AF28A5A0(v26, v55);
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v26)
          {
            CFRelease(v26);
          }

          v43 = sub_1AF0D5194();
          if (v53 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v44 = v43;
            if (os_signpost_enabled(v43))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v44, OS_SIGNPOST_INTERVAL_END, spid, "TransactionFlush", &unk_1AFF70A1D, buf, 2u);
            }
          }

          prof_endFlame();
          pthread_mutex_unlock(&stru_1ED72F680);
          if (j == 6)
          {
            break;
          }

          v45 = sub_1AF276CB4();
          os_unfair_lock_lock(&unk_1ED739AA0);
          v19 = v45[5];
          if (!v19 || (v46 = v19[4]) == 0 || (v47 = v45[5], (*(v46 + 52) & 2) == 0) && (v47 = v45[5], *(v46 + 40) == 0.0))
          {
            os_unfair_lock_unlock(&unk_1ED739AA0);
            return;
          }

          while (1)
          {
            v48 = v47;
            v49 = v47[4];
            if (!v49 || (*(v49 + 52) & 2) == 0 && *(v49 + 40) == 0.0)
            {
              break;
            }

            v47 = *v48;
            if (!*v48)
            {
              v45[5] = 0;
              goto LABEL_94;
            }
          }

          v50 = *v48;
          v45[5] = *v48;
          if (v50)
          {
            goto LABEL_95;
          }

LABEL_94:
          v45[6] = 0;
LABEL_95:
          *v48 = 0;
          os_unfair_lock_unlock(&unk_1ED739AA0);
        }

        v51 = sub_1AF0D5194();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v55 = 0;
          _os_log_impl(&dword_1AF0CE000, v51, OS_LOG_TYPE_DEFAULT, "Warning: max successive flush reached", v55, 2u);
        }
      }
    }
  }

  else
  {

    os_unfair_lock_unlock(&unk_1ED739AA0);
  }
}

uint64_t sub_1AF278D68(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 48) >= *(*a2 + 48))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1AF278DA0(uint64_t a1, const void *a2)
{
  sub_1AF1CFECC(a2);
  v4 = *(a1 + 32);

  CFNotificationCenterPostNotificationWithOptions(v4, @"kCFXWorldDidUpdateNotification", a2, 0, 4uLL);
}

dispatch_queue_t sub_1AF278DF8()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);
  result = dispatch_queue_create("com.apple.vfx.transaction-queue", v1);
  qword_1ED73AC98 = result;
  return result;
}

void sub_1AF278E3C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

uint64_t (*sub_1AF278E94(int a1, int a2))(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a1 <= 22)
  {
    if (a1 <= 8)
    {
      if (a1 == 7)
      {
        if (a2 == 39)
        {
          v3 = sub_1AF279444;
        }

        else
        {
          v3 = 0;
        }

        v4 = a2 == 35;
        v5 = sub_1AF2793E0;
      }

      else
      {
        if (a1 != 8)
        {
          return 0;
        }

        if (a2 == 23)
        {
          v3 = sub_1AF27950C;
        }

        else
        {
          v3 = 0;
        }

        v4 = a2 == 22;
        v5 = sub_1AF2794A8;
      }

      goto LABEL_35;
    }

    if (a1 == 9)
    {
      if (a2 == 27)
      {
        v3 = sub_1AF2795AC;
      }

      else
      {
        v3 = 0;
      }

      v4 = a2 == 26;
      v5 = sub_1AF279570;
      goto LABEL_35;
    }

    if (a1 != 22)
    {
      return 0;
    }

    v2 = sub_1AF279018;
LABEL_39:
    if (a2 == 8)
    {
      return v2;
    }

    return 0;
  }

  if (a1 <= 26)
  {
    if (a1 != 23)
    {
      if (a1 != 26)
      {
        return 0;
      }

      if (a2 == 9)
      {
        v3 = sub_1AF279130;
      }

      else
      {
        v3 = 0;
      }

      v4 = a2 == 8;
      v5 = sub_1AF2790AC;
      goto LABEL_35;
    }

    v2 = sub_1AF2792A8;
    goto LABEL_39;
  }

  if (a1 != 27)
  {
    if (a1 == 35)
    {
      v2 = sub_1AF279340;
LABEL_42:
      if (a2 != 7)
      {
        return 0;
      }

      return v2;
    }

    if (a1 == 39)
    {
      v2 = sub_1AF279390;
      goto LABEL_42;
    }

    return 0;
  }

  if (a2 == 9)
  {
    v3 = sub_1AF27922C;
  }

  else
  {
    v3 = 0;
  }

  v4 = a2 == 8;
  v5 = sub_1AF2791A4;
LABEL_35:
  if (v4)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF279018(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm
    {
      FMOV            V1.4S, #-1.0
      FMOV            V2.4S, #1.0
    }

    do
    {
      v14 = a3 + v5;
      v15.i64[0] = *v14;
      v15.i32[2] = *(v14 + 8);
      v15.i32[3] = 1.0;
      v16 = vandq_s8(vcvtq_s32_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v15, _Q1), _Q2), xmmword_1AFE47350)), xmmword_1AFE47360);
      LODWORD(v14) = v16.i32[0] | (v16.i32[1] << 10);
      *v16.i8 = vshl_u32(*&vextq_s8(v16, v16, 8uLL), 0x1E00000014);
      *(result + v6) = v14 | v16.i32[0] | v16.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF2790AC(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x437F0000u);
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v10 = a3 + v5;
      v11.i64[0] = *v10;
      v11.i64[1] = *(v10 + 8);
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(v12, v8, v11)), v9);
      LODWORD(v10) = v13.i32[0] | (v13.i32[1] << 8);
      *v13.i8 = vshl_u32(*&vextq_s8(v13, v13, 8uLL), 0x1800000010);
      *(result + v6) = v10 | v13.i32[0] | v13.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF279130(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x437F0000u);
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v11 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(v10, v8, *(a3 + v5))), v9);
      v12 = v11.i32[0] | (v11.i32[1] << 8);
      *v11.i8 = vshl_u32(*&vextq_s8(v11, v11, 8uLL), 0x1800000010);
      *(result + v6) = v12 | v11.i32[0] | v11.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF2791A4(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm { FMOV            V0.4S, #-1.0 }

    v13 = vdupq_n_s32(0x42FF0000u);
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    do
    {
      v15 = a3 + v5;
      v16.i64[0] = *v15;
      v16.i64[1] = *(v15 + 8);
      v17 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(vandq_s8(_Q0, vcgezq_f32(v16)), v13, v16)), v14);
      LODWORD(v15) = v17.i32[0] | (v17.i32[1] << 8);
      *v17.i8 = vshl_u32(*&vextq_s8(v17, v17, 8uLL), 0x1800000010);
      *(result + v6) = v15 | v17.i32[0] | v17.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF27922C(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm { FMOV            V0.4S, #-1.0 }

    v13 = vdupq_n_s32(0x42FF0000u);
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    do
    {
      v15 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(vandq_s8(_Q0, vcgezq_f32(*(a3 + v5))), v13, *(a3 + v5))), v14);
      v16 = v15.i32[0] | (v15.i32[1] << 8);
      *v15.i8 = vshl_u32(*&vextq_s8(v15, v15, 8uLL), 0x1800000010);
      *(result + v6) = v16 | v15.i32[0] | v15.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF2792A8(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm { FMOV            V2.4S, #1.0 }

    do
    {
      v13 = a3 + v5;
      v14.i64[0] = *v13;
      v14.i32[2] = *(v13 + 8);
      v14.i32[3] = 1.0;
      v15.i64[0] = 0x3F0000003F000000;
      v15.i64[1] = 0x3F0000003F000000;
      v16 = vcvtq_s32_f32(vmlaq_f32(v15, xmmword_1AFE47370, vminnmq_f32(vmaxnmq_f32(v14, 0), _Q2)));
      v15.i32[0] = vmovn_s32(v16).u32[0];
      *v16.i8 = vshl_u32(vand_s8(*&vextq_s8(v16, v16, 8uLL), 0xFFFF0000FFFFLL), 0x1E00000014);
      *(result + v6) = v15.u16[0] | (v15.u16[1] << 10) | v16.i32[0] | v16.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF279340(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x46FFFE00u);
    do
    {
      v9 = (result + v6);
      v10 = vcvt_s32_f32(vmul_f32(*(a3 + v5), v8));
      *v9 = v10.i16[0];
      v9[1] = v10.i16[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF279390(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x46FFFE00u);
    do
    {
      v9 = (result + v6);
      v10 = vcvt_s32_f32(vmul_f32(*(a3 + v5), v8));
      *v9 = v10.i16[0];
      v9[1] = v10.i16[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF2793E0(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x4B400000u);
    v9 = vdup_n_s32(0xCB400000);
    v10 = vdup_n_s32(0x38000100u);
    do
    {
      v11 = (a3 + v5);
      v12.i32[0] = *v11;
      v12.i32[1] = v11[1];
      *(result + v6) = vmul_f32(vadd_f32(vadd_s32(v12, v8), v9), v10);
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF279444(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x4B400000u);
    v9 = vdup_n_s32(0xCB400000);
    v10 = vdup_n_s32(0x38000100u);
    do
    {
      v11 = (a3 + v5);
      v12.i32[0] = *v11;
      v12.i32[1] = v11[1];
      *(result + v6) = vmul_f32(vadd_f32(vadd_s32(v12, v8), v9), v10);
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF2794A8(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x3B004020u);
    do
    {
      v9 = (a3 + v5);
      v10 = vld1q_dup_f32(v9);
      v11 = vmulq_f32(vcvtq_f32_s32(vshlq_s32(vshlq_u32(v10, xmmword_1AFE47380), xmmword_1AFE47390)), v8);
      v12 = result + v6;
      *v12 = v11.i64[0];
      *(v12 + 8) = v11.i32[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF27950C(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x3A802008u);
    do
    {
      v9 = (a3 + v5);
      v10 = vld1q_dup_f32(v9);
      v11 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_1AFE473A0), xmmword_1AFE47360)), v8);
      v12 = result + v6;
      *v12 = v11.i64[0];
      *(v12 + 8) = v11.i32[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_1AF279570()
{
  v0 = sub_1AF0D5194();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF179C();
  }
}

void sub_1AF2795AC()
{
  v0 = sub_1AF0D5194();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF179C();
  }
}

uint64_t sub_1AF2795E8(unsigned int a1, unsigned int a2)
{
  if (sub_1AF28857C(a1))
  {
    v4 = sub_1AF28857C(a2);
  }

  else
  {
    v4 = 0;
  }

  return (sub_1AF278E94(a1, a2) != 0) | v4 & 1u;
}

void sub_1AF27964C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = a2 >> 16;
  v9 = HIDWORD(a2);
  v10 = a4 >> 16;
  if (HIDWORD(a2) != HIDWORD(a4))
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF17D0(v11);
    }
  }

  v12 = sub_1AF278E94(v8, v10);
  if (v12)
  {
    v12(a1, v6, a3, v4, v9);
  }

  else if (sub_1AF28857C(v8) && sub_1AF28857C(v10) && v9)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      *v18.i64 = sub_1AF279750(v10, (a3 + v16), v13, v14, v15);
      sub_1AF279B88(v8, a1 + v17, v18);
      v17 += v6;
      v16 += v4;
      --v9;
    }

    while (v9);
  }
}

double sub_1AF279750(int a1, const float *a2, float32x4_t a3, float a4, float a5)
{
  v5 = a1;
  switch(a1)
  {
    case 1:
      a3.f32[0] = *a2;
      return *a3.i64;
    case 7:
      a3.i64[0] = *a2;
      return *a3.i64;
    case 8:
      a3.i64[0] = *a2;
      return *a3.i64;
    case 9:
      a3 = *a2;
      return *a3.i64;
    case 14:
      v26 = *a2;
      v27 = (v26 >> 10) & 0x1F;
      if (v27 == 31)
      {
        v28 = 2139095040;
      }

      else
      {
        v28 = (v26 >> 10) & 0x1F;
      }

      if (v27)
      {
        _ZF = v27 == 31;
      }

      else
      {
        _ZF = 1;
      }

      if (_ZF)
      {
        v30 = v28;
      }

      else
      {
        v30 = (v27 << 23) + 939524096;
      }

      LODWORD(v31) = v30 | (v26 << 16) & 0x80000000 | (v26 >> 7) & 7 | (8 * (v26 & 0x3FF)) & 0x1FFF | ((v26 & 0x3FF) << 13);
      goto LABEL_32;
    case 22:
      v14 = vld1q_dup_f32(a2);
      a3 = vcvtq_f32_s32(vshlq_s32(vshlq_u32(v14, xmmword_1AFE47380), xmmword_1AFE47390));
      v15 = xmmword_1AFE473C0;
      goto LABEL_51;
    case 23:
      v19 = vld1q_dup_f32(a2);
      a3 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v19, xmmword_1AFE473A0), xmmword_1AFE47360));
      v15 = xmmword_1AFE473B0;
      goto LABEL_51;
    case 26:
      v20 = vld1q_dup_f32(a2);
      v21.i64[0] = 0xFF000000FFLL;
      v21.i64[1] = 0xFF000000FFLL;
      a3 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v20, xmmword_1AFE42AA0), v21));
      v11 = 998277249;
      goto LABEL_50;
    case 27:
      *v32.i8 = vshl_u32(vdup_n_s32(*a2), 0x1000000018);
      v32.i32[2] = *a2 << 8;
      *&v32.i32[3] = *a2;
      __asm { FMOV            V1.4S, #-1.0 }

      a3 = vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vshrq_n_s32(v32, 0x18uLL)), vdupq_n_s32(0x3C010204u)), _Q1);
      __asm { FMOV            V1.4S, #1.0 }

      a3.i64[0] = vminnmq_f32(a3, _Q1).u64[0];
      return *a3.i64;
    case 34:
      a3.i16[0] = *a2;
      a3.f32[0] = a3.u32[0];
      v9 = 0.000015259;
      goto LABEL_31;
    case 35:
      a3.i16[0] = *a2;
      v10.f32[0] = a3.u32[0];
      LOWORD(a4) = *(a2 + 1);
      v10.f32[1] = LODWORD(a4);
      *a3.f32 = vmul_f32(v10, vdup_n_s32(0x37800080u));
      return *a3.i64;
    case 36:
      a3.i16[0] = *a2;
      LOWORD(a4) = *(a2 + 1);
      LOWORD(a5) = *(a2 + 2);
      v16.f32[0] = a3.u32[0];
      v16.f32[1] = LODWORD(a4);
      v16.i64[1] = COERCE_UNSIGNED_INT(LODWORD(a5));
      a3.i64[0] = vmulq_f32(v16, vdupq_n_s32(0x37800080u)).u64[0];
      return *a3.i64;
    case 37:
      a3 = vcvtq_f32_u32(vmovl_u16(*a2));
      v11 = 931135616;
      goto LABEL_50;
    case 38:
      a3.f32[0] = *a2;
      v9 = 0.000030519;
LABEL_31:
      v31 = a3.f32[0] * v9;
LABEL_32:
      a3.i64[0] = LODWORD(v31);
      return *a3.i64;
    case 39:
      v22.i32[0] = *a2;
      v22.i32[1] = *(a2 + 1);
      *a3.f32 = vmul_f32(vadd_f32(vadd_s32(v22, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), vdup_n_s32(0x38000100u));
      return *a3.i64;
    case 40:
      *v23.i32 = *a2;
      v23.i32[1] = *(a2 + 2);
      v24 = vdupq_n_s32(0xCB400000);
      v25 = vaddw_s16(vdupq_n_s32(0x4B400000u), v23);
      goto LABEL_49;
    case 41:
      v24 = vdupq_n_s32(0xCB400000);
      v25 = vaddw_s16(vdupq_n_s32(0x4B400000u), *a2);
LABEL_49:
      a3 = vaddq_f32(v25, v24);
      v11 = 939524352;
LABEL_50:
      v15 = vdupq_n_s32(v11);
LABEL_51:
      a3.i64[0] = vmulq_f32(a3, v15).u64[0];
      break;
    case 42:
      v38 = *a2;
      v39 = (v38 >> 10) & 0x1F;
      if (v39 == 31)
      {
        v40 = 2139095040;
      }

      else
      {
        v40 = (v38 >> 10) & 0x1F;
      }

      if (v39)
      {
        v41 = v39 == 31;
      }

      else
      {
        v41 = 1;
      }

      if (v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = (v39 << 23) + 939524096;
      }

      v43 = v42 | (v38 << 16) & 0x80000000 | (v38 >> 7) & 7 | (8 * (v38 & 0x3FF)) & 0x1FFF | ((v38 & 0x3FF) << 13);
      v44 = *(a2 + 1);
      v45 = (v44 >> 10) & 0x1F;
      if (v45 && v45 != 31)
      {
        v46 = (v45 << 23) + 939524096;
      }

      else if (v45 == 31)
      {
        v46 = 2139095040;
      }

      else
      {
        v46 = (v44 >> 10) & 0x1F;
      }

      a3.i32[0] = v43;
      a3.i32[1] = v46 | (v44 << 16) & 0x80000000 | (v44 >> 7) & 7 | (8 * (v44 & 0x3FF)) & 0x1FFF | ((v44 & 0x3FF) << 13);
      break;
    case 43:
      v6.i32[0] = *a2;
      v6.i32[1] = *(a2 + 1);
      v6.i64[1] = *(a2 + 2);
      v7.i64[0] = 0x8000000080000000;
      v7.i64[1] = 0x8000000080000000;
      v8 = vandq_s8(vshlq_n_s32(v6, 0x10uLL), v7);
      a3 = vshlq_n_s32(v6, 0xDuLL);
      v7.i64[0] = 0x3800000038000000;
      v7.i64[1] = 0x3800000038000000;
      a3.i64[0] = vaddq_s32(vaddq_s32(vandq_s8(a3, vdupq_n_s32(0xF800000u)), v7), vorrq_s8(v8, vandq_s8(a3, vdupq_n_s32(0x7FE000u)))).u64[0];
      break;
    case 44:
      v12.i64[0] = 0x8000000080000000;
      v12.i64[1] = 0x8000000080000000;
      a3 = vshll_n_u16(*a2, 0xDuLL);
      v13.i64[0] = 0x3800000038000000;
      v13.i64[1] = 0x3800000038000000;
      a3.i64[0] = vaddq_s32(vorrq_s8(vandq_s8(a3, vdupq_n_s32(0xF800000u)), vorrq_s8(vandq_s8(vmovl_s16(*a2), v12), vandq_s8(a3, vdupq_n_s32(0x7FE000u)))), v13).u64[0];
      break;
    default:
      v17 = sub_1AF0D5194();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      a3.i64[0] = 0;
      if (v18)
      {
        sub_1AFDF1854(v5);
        a3.i64[0] = 0;
      }

      break;
  }

  return *a3.i64;
}

void sub_1AF279B88(int a1, uint64_t a2, float32x4_t a3)
{
  v3 = a1;
  switch(a1)
  {
    case 1:
      *a2 = a3.i32[0];
      return;
    case 7:
      *a2 = a3.i64[0];
      return;
    case 8:
      *a2 = a3.i64[0];
      *(a2 + 8) = a3.i32[2];
      return;
    case 9:
      *a2 = a3;
      return;
    case 14:
      v35 = HIWORD(a3.i32[0]) & 0x8000;
      v36 = (a3.i32[0] >> 23);
      v37 = v36 - 112;
      v38 = v36 - 113;
      v39 = v35 | 0x7BFF;
      if ((a3.i32[0] & 0x7FFFFF) != 0)
      {
        LOWORD(v40) = v35 + 1;
      }

      else
      {
        v40 = HIWORD(a3.i32[0]) & 0x8000;
      }

      v41 = v40 | 0x7C00;
      if (v36 == 255)
      {
        v39 = v41;
      }

      if (v36 >= 0x71)
      {
        v42 = v39;
      }

      else
      {
        v42 = a3.i16[1] & 0x8000;
      }

      v6 = HIWORD(a3.i32[0]) & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | (v37 << 10);
      if (v38 > 0x1D)
      {
        LOWORD(v6) = v42;
      }

      goto LABEL_34;
    case 22:
      __asm { FMOV            V1.4S, #-1.0; jumptable 00000001AF279BC4 case 22 }

      v18 = vmaxnmq_f32(a3, _Q1);
      __asm { FMOV            V1.4S, #1.0 }

      v20 = vandq_s8(vcvtq_s32_f32(vmulq_f32(vminnmq_f32(v18, _Q1), xmmword_1AFE47350)), xmmword_1AFE47360);
      v21 = vextq_s8(v20, v20, 8uLL).u64[0];
      v22 = v20.i32[0] | (v20.i32[1] << 10);
      v23 = 0x1E00000014;
      goto LABEL_37;
    case 23:
      __asm { FMOV            V1.4S, #1.0 }

      v28.i64[0] = 0x3F0000003F000000;
      v28.i64[1] = 0x3F0000003F000000;
      v29 = vcvtq_s32_f32(vmlaq_f32(v28, xmmword_1AFE47370, vminnmq_f32(vmaxnmq_f32(a3, 0), _Q1)));
      _Q1.i32[0] = vmovn_s32(v29).u32[0];
      v22 = _Q1.u16[0] | (_Q1.u16[1] << 10);
      v30 = vshl_u32(vand_s8(*&vextq_s8(v29, v29, 8uLL), 0xFFFF0000FFFFLL), 0x1E00000014);
      goto LABEL_38;
    case 26:
      v31.i64[0] = 0x3F0000003F000000;
      v31.i64[1] = 0x3F0000003F000000;
      v32 = vcvtq_s32_f32(vmlaq_f32(v31, vdupq_n_s32(0x437F0000u), a3));
      goto LABEL_36;
    case 27:
      __asm { FMOV            V2.4S, #-1.0 }

      v32 = vcvtq_s32_f32(vmlaq_f32(vandq_s8(_Q2, vcgezq_f32(a3)), vdupq_n_s32(0x42FF0000u), a3));
LABEL_36:
      v44.i64[0] = 0xFF000000FFLL;
      v44.i64[1] = 0xFF000000FFLL;
      v45 = vandq_s8(v32, v44);
      v21 = vextq_s8(v45, v45, 8uLL).u64[0];
      v22 = v45.i32[0] | (v45.i32[1] << 8);
      v23 = 0x1800000010;
LABEL_37:
      v30 = vshl_u32(v21, v23);
LABEL_38:
      *a2 = v22 | v30.i32[0] | v30.i32[1];
      return;
    case 34:
      v6 = vmla_n_f32(0x3F0000003F000000, vdup_n_s32(0x477FFF00u), a3.f32[0]).f32[0];
      goto LABEL_34;
    case 35:
      v7 = vcvt_s32_f32(vmla_f32(0x3F0000003F000000, vdup_n_s32(0x477FFF00u), *a3.f32));
      LOWORD(v8) = v7.i16[2];
      *a2 = v7.i16[0];
      goto LABEL_119;
    case 36:
      v24.i64[0] = 0x3F0000003F000000;
      v24.i64[1] = 0x3F0000003F000000;
      v25 = vcvtq_s32_f32(vmlaq_f32(v24, vdupq_n_s32(0x477FFF00u), a3));
      goto LABEL_20;
    case 37:
      v9.i64[0] = 0x3F0000003F000000;
      v9.i64[1] = 0x3F0000003F000000;
      v10 = vcvtq_s32_f32(vmlaq_f32(v9, vdupq_n_s32(0x477FFF00u), a3));
      goto LABEL_42;
    case 38:
      v6 = (32767.0 * a3.f32[0]);
LABEL_34:
      *a2 = v6;
      break;
    case 39:
      v33 = vcvt_s32_f32(vmul_f32(*a3.f32, vdup_n_s32(0x46FFFE00u)));
      *a2 = v33.i16[0];
      *(a2 + 2) = v33.i16[2];
      break;
    case 40:
      v25 = vcvtq_s32_f32(vmulq_f32(a3, vdupq_n_s32(0x46FFFE00u)));
LABEL_20:
      v34 = vmovn_s32(v25);
      *a2 = v34.i32[0];
      *(a2 + 4) = v34.i16[2];
      break;
    case 41:
      v10 = vcvtq_s32_f32(vmulq_f32(a3, vdupq_n_s32(0x46FFFE00u)));
LABEL_42:
      *a2 = vmovn_s32(v10);
      break;
    case 42:
      v46 = HIWORD(a3.i32[0]) & 0x8000;
      v47 = (a3.i32[0] >> 23);
      if (v47 - 113 > 0x1D)
      {
        if (v47 >= 0x71)
        {
          if (v47 == 255)
          {
            v50 = a3.i16[1] & 0x8000;
            if ((a3.i32[0] & 0x7FFFFF) != 0)
            {
              ++v50;
            }

            LOWORD(v46) = v50 | 0x7C00;
          }

          else
          {
            LOWORD(v46) = v46 | 0x7BFF;
          }
        }
      }

      else
      {
        v46 = HIWORD(a3.i32[0]) & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | ((v47 - 112) << 10);
      }

      *a2 = v46;
      v85 = HIWORD(a3.i32[1]) & 0x8000;
      v86 = (a3.i32[1] >> 23);
      v87 = v86 - 112;
      v88 = v86 - 113;
      v89 = v85 | 0x7BFF;
      if ((a3.i32[1] & 0x7FFFFF) != 0)
      {
        LOWORD(v90) = v85 + 1;
      }

      else
      {
        v90 = HIWORD(a3.i32[1]) & 0x8000;
      }

      v91 = v90 | 0x7C00;
      if (v86 == 255)
      {
        v89 = v91;
      }

      if (v86 >= 0x71)
      {
        v92 = v89;
      }

      else
      {
        v92 = a3.i16[3] & 0x8000;
      }

      v8 = HIWORD(a3.i32[1]) & 0x8000 | (a3.i32[1] >> 13) & 0x3FF | (v87 << 10);
      if (v88 > 0x1D)
      {
        LOWORD(v8) = v92;
      }

LABEL_119:
      *(a2 + 2) = v8;
      break;
    case 43:
      v4 = HIWORD(a3.i32[0]) & 0x8000;
      v5 = (a3.i32[0] >> 23);
      if (v5 - 113 > 0x1D)
      {
        if (v5 >= 0x71)
        {
          if (v5 == 255)
          {
            v48 = a3.i16[1] & 0x8000;
            if ((a3.i32[0] & 0x7FFFFF) != 0)
            {
              ++v48;
            }

            LOWORD(v4) = v48 | 0x7C00;
          }

          else
          {
            LOWORD(v4) = v4 | 0x7BFF;
          }
        }
      }

      else
      {
        v4 = HIWORD(a3.i32[0]) & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | ((v5 - 112) << 10);
      }

      *a2 = v4;
      v51 = HIWORD(a3.i32[1]) & 0x8000;
      v52 = (a3.i32[1] >> 23);
      v53 = v52 - 112;
      v54 = v52 - 113;
      v55 = v51 | 0x7BFF;
      if ((a3.i32[1] & 0x7FFFFF) != 0)
      {
        LOWORD(v56) = v51 + 1;
      }

      else
      {
        v56 = HIWORD(a3.i32[1]) & 0x8000;
      }

      v57 = v56 | 0x7C00;
      if (v52 == 255)
      {
        v55 = v57;
      }

      if (v52 >= 0x71)
      {
        v58 = v55;
      }

      else
      {
        v58 = a3.i16[3] & 0x8000;
      }

      v59 = HIWORD(a3.i32[1]) & 0x8000 | (a3.i32[1] >> 13) & 0x3FF | (v53 << 10);
      if (v54 > 0x1D)
      {
        LOWORD(v59) = v58;
      }

      *(a2 + 2) = v59;
      v60 = HIWORD(a3.i32[2]) & 0x8000;
      v61 = (a3.i32[2] >> 23);
      v62 = v61 - 112;
      v63 = v61 - 113;
      v64 = v60 | 0x7BFF;
      if ((a3.i32[2] & 0x7FFFFF) != 0)
      {
        LOWORD(v65) = v60 + 1;
      }

      else
      {
        v65 = HIWORD(a3.i32[2]) & 0x8000;
      }

      v66 = v65 | 0x7C00;
      if (v61 == 255)
      {
        v64 = v66;
      }

      if (v61 >= 0x71)
      {
        v67 = v64;
      }

      else
      {
        v67 = a3.i16[5] & 0x8000;
      }

      v68 = HIWORD(a3.i32[2]) & 0x8000 | (a3.i32[2] >> 13) & 0x3FF | (v62 << 10);
      if (v63 > 0x1D)
      {
        LOWORD(v68) = v67;
      }

      *(a2 + 4) = v68;
      break;
    case 44:
      v11 = HIWORD(a3.i32[0]) & 0x8000;
      v12 = (a3.i32[0] >> 23);
      if (v12 - 113 > 0x1D)
      {
        if (v12 >= 0x71)
        {
          if (v12 == 255)
          {
            v49 = a3.i16[1] & 0x8000;
            if ((a3.i32[0] & 0x7FFFFF) != 0)
            {
              ++v49;
            }

            LOWORD(v11) = v49 | 0x7C00;
          }

          else
          {
            LOWORD(v11) = v11 | 0x7BFF;
          }
        }
      }

      else
      {
        v11 = HIWORD(a3.i32[0]) & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | ((v12 - 112) << 10);
      }

      *a2 = v11;
      v69 = HIWORD(a3.i32[1]) & 0x8000;
      v70 = (a3.i32[1] >> 23);
      if (v70 - 113 > 0x1D)
      {
        if (v70 >= 0x71)
        {
          if (v70 == 255)
          {
            v71 = a3.i16[3] & 0x8000;
            if ((a3.i32[1] & 0x7FFFFF) != 0)
            {
              ++v71;
            }

            LOWORD(v69) = v71 | 0x7C00;
          }

          else
          {
            LOWORD(v69) = v69 | 0x7BFF;
          }
        }
      }

      else
      {
        v69 = HIWORD(a3.i32[1]) & 0x8000 | (a3.i32[1] >> 13) & 0x3FF | ((v70 - 112) << 10);
      }

      *(a2 + 2) = v69;
      v72 = HIWORD(a3.i32[2]) & 0x8000;
      v73 = (a3.i32[2] >> 23);
      v74 = v73 - 112;
      v75 = v73 - 113;
      v76 = v72 | 0x7BFF;
      if ((a3.i32[2] & 0x7FFFFF) != 0)
      {
        LOWORD(v77) = v72 + 1;
      }

      else
      {
        v77 = HIWORD(a3.i32[2]) & 0x8000;
      }

      v78 = v77 | 0x7C00;
      if (v73 == 255)
      {
        v76 = v78;
      }

      if (v73 >= 0x71)
      {
        v79 = v76;
      }

      else
      {
        v79 = a3.i16[5] & 0x8000;
      }

      v80 = HIWORD(a3.i32[2]) & 0x8000 | (a3.i32[2] >> 13) & 0x3FF | (v74 << 10);
      if (v75 > 0x1D)
      {
        LOWORD(v80) = v79;
      }

      *(a2 + 4) = v80;
      v81 = HIWORD(a3.i32[3]) & 0x8000;
      v82 = (a3.i32[3] >> 23);
      if (v82 - 113 > 0x1D)
      {
        if (v82 >= 0x71)
        {
          LOWORD(v81) = v81 | 0x7BFF;
          v83 = (a3.i32[3] & 0x7FFFFF) != 0 ? (a3.i16[7] & 0x8000) + 1 : a3.i16[7] & 0x8000;
          v84 = v83 | 0x7C00;
          if (v82 == 255)
          {
            LOWORD(v81) = v84;
          }
        }
      }

      else
      {
        v81 = HIWORD(a3.i32[3]) & 0x8000 | (a3.i32[3] >> 13) & 0x3FF | ((v82 - 112) << 10);
      }

      *(a2 + 6) = v81;
      break;
    default:
      v26 = sub_1AF0D5194();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF1854(v3);
      }

      break;
  }
}

float32_t sub_1AF27A190(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, __n128 a4)
{
  if (!a1 && (v30 = a4, v7 = sub_1AF0D5194(), v8 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT), a4 = v30, v8))
  {
    sub_1AFDF18D4(v7, v9, v10, v11, v12, v13, v14, v15);
    a4 = v30;
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v31 = a4;
  v16 = sub_1AF0D5194();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
  a4 = v31;
  if (v17)
  {
    sub_1AFDF194C(v16, v18, v19, v20, v21, v22, v23, v24);
    a4 = v31;
  }

LABEL_6:
  v25 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a2[3], a2[2], *a1, 2), a2[1], *a1->f32, 1), *a2, COERCE_FLOAT(*a1));
  v25.i32[3] = a3->i32[3];
  *a3 = v25;
  v26 = vabs_f32(a4.n128_u64[0]);
  if (v26.f32[0] < v26.f32[1])
  {
    v26.f32[0] = v26.f32[1];
  }

  v27 = fabsf(a4.n128_f32[2]);
  if (v26.f32[0] >= v27)
  {
    v28 = v26.f32[0];
  }

  else
  {
    v28 = v27;
  }

  result = v28 * a1->f32[3];
  v25.f32[3] = result;
  *a3 = v25;
  return result;
}

double sub_1AF27A280(__int128 *a1, __int128 *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF19C4(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF1A3C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  _Q0 = *a1;
  _Q1 = a1[1];
  v22 = a1[2];
  LODWORD(_S7) = *(a1 + 5);
  _S2 = COERCE_FLOAT(*(a1 + 3));
  __asm { FMLA            S6, S7, V1.S[1] }

  v30 = -COERCE_FLOAT(*(a1 + 1));
  __asm
  {
    FMLA            S17, S7, V0.S[1]
    FMLA            S16, S2, V0.S[1]
  }

  v33 = ((COERCE_FLOAT(*a1) * _S6) - (*&_Q1 * _S17)) + (*&v22 * _S16);
  if (v33 == 0.0)
  {
    v34 = xmmword_1AFE20180;
    v35 = xmmword_1AFE20160;
    v36 = xmmword_1AFE20150;
  }

  else
  {
    v37 = 1.0 / v33;
    HIDWORD(v36) = 0;
    *&v36 = _S6 * v37;
    *(&v36 + 1) = -(((*&v22 * -_S2) + (*&_Q1 * _S7)) * v37);
    HIDWORD(v34) = 0;
    *(&v36 + 2) = ((*&_Q1 * *(&v22 + 1)) - (*(&_Q1 + 1) * *&v22)) * v37;
    v38 = ((*&v22 * v30) + (*&_Q0 * _S7)) * v37;
    v39 = (*&_Q0 * *(&v22 + 1)) - (*(&_Q0 + 1) * *&v22);
    HIDWORD(v35) = 0;
    *&v35 = -(_S17 * v37);
    *(&v35 + 1) = v38;
    *(&v35 + 2) = -(v39 * v37);
    *&v34 = _S16 * v37;
    *(&v34 + 1) = -(((*&_Q1 * v30) + (*&_Q0 * _S2)) * v37);
    *(&v34 + 2) = ((*(&_Q0 + 1) * -*&_Q1) + (*&_Q0 * *(&_Q1 + 1))) * v37;
  }

  *a2 = v36;
  a2[1] = v35;
  result = 0.0;
  a2[2] = v34;
  a2[3] = xmmword_1AFE201A0;
  return result;
}

void sub_1AF27A408(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

CFComparisonResult sub_1AF27A460(uint64_t *a1, uint64_t *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF1AB4(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF1B2C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (sub_1AF1A0EB0(*a1))
  {
    v20 = sub_1AF1A0EB0(*a1);
  }

  else
  {
    v20 = &stru_1F2575650;
  }

  if (sub_1AF1A0EB0(*a2))
  {
    v21 = sub_1AF1A0EB0(*a2);
  }

  else
  {
    v21 = &stru_1F2575650;
  }

  result = CFStringCompare(v20, v21, 0);
  if (result)
  {
    return result;
  }

  v23 = a1[1];
  v24 = a2[1];
  if (!v23)
  {
    v25 = 0;
    if (v24)
    {
      goto LABEL_15;
    }

LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  v25 = sub_1AF1A7674(v23);
  if (!v24)
  {
    goto LABEL_17;
  }

LABEL_15:
  v26 = sub_1AF1A7674(v24);
LABEL_18:
  v27 = -1;
  if (v25 >= v26)
  {
    v27 = 1;
  }

  if (v25 == v26)
  {
    return 0;
  }

  else
  {
    return v27;
  }
}

void sub_1AF27A570(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v3 = sub_1AF1B2C1C(a1);
  v4 = sub_1AF1B1FE0(a1);
  if (v4 >= 1)
  {
    v5 = v4;
    if (sub_1AF1A3CCC(v3) == v4)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = sub_1AF288058(0x10uLL);
        *v7 = 0;
        v7[1] = 0;
        v8 = sub_1AF1B2030(a1, i);
        if (v8)
        {
          v8 = CFRetain(v8);
        }

        *v7 = v8;
        if (sub_1AF1A3CCC(v3) >= 1)
        {
          v9 = sub_1AF1A3D1C(v3, i, 0);
          if (v9)
          {
            v9 = CFRetain(v9);
          }

          v7[1] = v9;
        }

        CFArrayAppendValue(Mutable, v7);
      }

      if (v5 != 1)
      {
        v13.location = 0;
        v13.length = v5;
        CFArraySortValues(Mutable, v13, sub_1AF27A460, 0);
      }

      sub_1AF1B3498(a1);
      sub_1AF1A52A0(v3);
      for (j = 0; j != v5; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
        sub_1AF1A4FB0(v3, ValueAtIndex[1]);
        sub_1AF1B32F8(a1, *ValueAtIndex);
        sub_1AF27A408(ValueAtIndex);
      }
    }
  }

  CFRelease(Mutable);
}

uint64_t sub_1AF27A6EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(&v109[2] + 4) = *MEMORY[0x1E69E9840];
  v106 = 0u;
  v107 = 0u;
  context = 0u;
  v94 = 0;
  v93 = 0;
  v95 = 0;
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  *&v6 = sub_1AF1BA240(a1);
  v84[0] = v6;
  v84[1] = v7;
  v84[2] = v8;
  v84[3] = v9;
  v80 = xmmword_1AFE20150;
  v81 = xmmword_1AFE20160;
  v82 = xmmword_1AFE20180;
  v83 = xmmword_1AFE201A0;
  sub_1AF1BA204(a1, &v80);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v73 = sub_1AF1B8774(a1);
  if (v73)
  {
    v69 = sub_1AF1B887C(a1);
    v70 = v10;
    v71 = v11;
    v72 = v12;
    sub_1AF1B87C4(a1, v80, v81, v82, v83);
  }

  v87 = vdupq_n_s64(3uLL);
  v88 = xmmword_1AFE473F0;
  *&v92 = 0;
  memset(v85, 0, sizeof(v85));
  v89 = 4;
  v86 = 0;
  BYTE8(v92) = a4;
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v15 = CFArrayCreateMutable(v13, 0, 0);
  v16 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  v17 = v13;
  v18 = CFDictionaryCreateMutable(v13, 0, 0, 0);
  *&context = Mutable;
  *(&context + 1) = v15;
  *&v106 = v85;
  v66 = v16;
  *&v107 = v16;
  *(&v107 + 1) = v18;
  v93 = 0;
  v94 = sub_1AF27AD74;
  v95 = 0;
  sub_1AF1BE1D8(a1, &v93, 0, &context);
  v19 = [VFXModel __createCFObject]_0();
  v20 = sub_1AF1A2E00();
  sub_1AF1A56EC(v20, @"Flattened");
  sub_1AF1B2C80(v19, v20);
  v79 = v20;
  CFRelease(v20);
  v67 = v19;
  cf = Mutable;
  *&context = v19;
  *(&context + 1) = v85;
  v65 = v18;
  *&v106 = v18;
  CFDictionaryApplyFunction(Mutable, sub_1AF27B150, &context);
  theArray = v15;
  Count = CFArrayGetCount(v15);
  if (Count >= 1)
  {
    v22 = 0;
    do
    {
      while (1)
      {
        v23 = *(CFArrayGetValueAtIndex(theArray, v22) + 1);
        v104[0] = MEMORY[0x1E69E9820];
        v104[1] = 3221225472;
        v104[2] = sub_1AF280994;
        v104[3] = &unk_1E7A7B0C8;
        v104[4] = v85;
        sub_1AF1A2BEC(v23, 1, v104);
        if (v88 == 4)
        {
          break;
        }

        if (++v22 >= Count)
        {
          goto LABEL_12;
        }
      }

      ++v22;
    }

    while (v87.i64[0] != 4 && v22 < Count);
  }

LABEL_12:
  v75 = Count;
  v74 = a1;
  v25 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v77 = _Q0;
  do
  {
    if (*(v85 + v25) >= 1)
    {
      v31 = 0;
      do
      {
        v32 = v92;
        v33 = v87.i64[v25];
        if (!v33)
        {
          v34 = sub_1AF0D5194();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDF1BA4(v108, v109, v34);
          }
        }

        if (v32 <= (0x7FFFFFFF / v33) && v32 * v33 <= 0x1FFFFFFF)
        {
          v36 = malloc_type_calloc(4 * v32 * v33, 1uLL, 0xB66D967AuLL);
          v37 = CFDataCreateWithBytesNoCopy(v17, v36, 4 * v32 * v33, v17);
          v38 = sub_1AF1ADBE4(v37, v25, v32, v33, 1);
          CFRelease(v37);
          if (v38)
          {
            if (v25 == 2)
            {
              v39 = sub_1AF1AE6EC(v38);
              if (v39 >= 1)
              {
                v42 = v39;
                for (i = 0; i != v42; ++i)
                {
                  sub_1AF1B6CC8(v38, i, v40, v41, v77);
                }
              }
            }

            sub_1AF1A3F84(v20, v38, 0, 0);
            CFRelease(v38);
          }
        }

        ++v31;
      }

      while (v31 < *(v85 + v25));
    }

    ++v25;
  }

  while (v25 != 9);
  if (Count >= 1)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    do
    {
      v78 = v44;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v44);
      v48 = ValueAtIndex[1];
      v49 = ValueAtIndex[3];
      v102 = 0u;
      v103 = 0u;
      v51 = xmmword_1AFE20160;
      v50 = xmmword_1AFE20150;
      v53 = xmmword_1AFE201A0;
      v52 = xmmword_1AFE20180;
      v100 = 0u;
      v101 = 0u;
      if (v49)
      {
        v54 = sub_1AF1B9B04(v49);
        v50 = *v54;
        v51 = v54[1];
        v52 = v54[2];
        v53 = v54[3];
      }

      v55 = 0;
      v100 = v50;
      v101 = v51;
      v102 = v52;
      v103 = v53;
      do
      {
        if (*(v85 + v55) >= 1)
        {
          v56 = 0;
          v57 = v46;
          while (1)
          {
            v58 = sub_1AF1A4604(v79, v55, v56, 0);
            v59 = sub_1AF1A4604(v48, v55, v56, 1);
            if (!v59)
            {
              goto LABEL_46;
            }

            v46 = v59;
            if ((v55 - 2) < 3)
            {
              break;
            }

            if (v55 == 1)
            {
              v98 = 0u;
              v99 = 0u;
              *buf = 0u;
              v97 = 0u;
              sub_1AF27A280(&v100, buf);
              v62 = buf;
              v60 = v58;
              v61 = v46;
              goto LABEL_45;
            }

            if (v55)
            {
              v63 = sub_1AF0D5194();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AF0CE000, v63, OS_LOG_TYPE_DEFAULT, "Warning: __MergeMeshSources unknown source type\n", buf, 2u);
              }

              goto LABEL_46;
            }

            sub_1AF27C3C0(v58, v59, &v100, v45);
LABEL_47:
            ++v56;
            v57 = v46;
            if (v56 >= *(v85 + v55))
            {
              goto LABEL_51;
            }
          }

          v60 = v58;
          v61 = v46;
          v62 = 0;
LABEL_45:
          sub_1AF27C3C0(v60, v61, v62, v45);
LABEL_46:
          v46 = v57;
          goto LABEL_47;
        }

LABEL_51:
        ++v55;
      }

      while (v55 != 9);
      if (v46)
      {
        v45 += sub_1AF1AE6EC(v46);
      }

      v44 = v78 + 1;
    }

    while (v78 + 1 != v75);
  }

  sub_1AF27A570(v67);
  CFRelease(cf);
  sub_1AF27B1C0(theArray);
  CFRelease(v66);
  CFRelease(v65);
  CFRelease(theArray);
  sub_1AF1BA204(v74, v84);
  if (v73)
  {
    sub_1AF1B87C4(v74, v69, v70, v71, v72);
  }

  return v67;
}

uint64_t sub_1AF27AD74(const void *a1, const __CFDictionary **a2)
{
  *&v59[5] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[4];
  v6 = sub_1AF1B75A0(a1);
  if (v6)
  {
    v7 = v6;
    if ((sub_1AF1BB054(a1) & 1) == 0)
    {
      v8 = a2[1];
      v9 = sub_1AF1B2C1C(v7);
      if (v9)
      {
        v10 = v9;
        if (sub_1AF1A4CE8(v9, 1))
        {
          if (!a1)
          {
            v11 = sub_1AF0D5194();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDD137C(v11, v12, v13, v14, v15, v16, v17, v18);
            }
          }

          v19 = sub_1AF1B75A0(a1);
          if (v19)
          {
            v20 = v19;
            v21 = sub_1AF1B2C1C(v19);
            if (v21)
            {
              v22 = v21;
              v23 = sub_1AF1A3CCC(v21);
              if (v23)
              {
                v24 = v23;
                theArray = v8;
                v56 = v4;
                v54 = v10;
                v25 = 0x20040DC1BFBCFLL;
                allocator = *MEMORY[0x1E695E480];
                Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v23, 0);
                if (v24 >= 1)
                {
                  for (i = 0; i != v24; ++i)
                  {
                    v28 = v25;
                    v29 = malloc_type_malloc(0x20uLL, v25);
                    v29[1] = v22;
                    *v29 = sub_1AF1A3D1C(v22, i, 1);
                    v29[2] = sub_1AF1B2030(v20, i);
                    v29[3] = a1;
                    v30 = v29;
                    v25 = v28;
                    CFArrayAppendValue(Mutable, v30);
                  }
                }

                if (Mutable)
                {
                  Count = CFArrayGetCount(Mutable);
                  CFArrayAppendValue(v5, a1);
                  if (Count >= 1)
                  {
                    v32 = v25;
                    v33 = 0;
                    v34 = a2[2];
                    v35 = a2[5];
                    do
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v33);
                      if (!ValueAtIndex)
                      {
                        v37 = sub_1AF0D5194();
                        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
                        {
                          sub_1AFDF1BE8(v58, v59, v37);
                        }
                      }

                      sub_1AF1BA79C(ValueAtIndex[3]);
                      v40 = 0;
                      if (v38 >= 1.0)
                      {
                        v39 = ValueAtIndex[2];
                        if (!v39 || sub_1AF1A17B8(v39))
                        {
                          v40 = 1;
                        }
                      }

                      v41 = ValueAtIndex[2];
                      if (v41 && sub_1AF1A1224(v41))
                      {
                        v40 |= 2uLL;
                      }

                      v42 = sub_1AF1A7034(*ValueAtIndex);
                      if (v42 == 2)
                      {
                        v44 = (v40 | 0x10);
                      }

                      else
                      {
                        v43 = v40 | 4;
                        if (v42)
                        {
                          v43 = v40;
                        }

                        if (v42 == 1)
                        {
                          v44 = (v40 | 8);
                        }

                        else
                        {
                          v44 = v43;
                        }
                      }

                      Value = CFDictionaryGetValue(v56, v44);
                      if (!Value)
                      {
                        Value = CFDictionaryCreateMutable(allocator, 0, 0, MEMORY[0x1E695E9E8]);
                        CFDictionarySetValue(v56, v44, Value);
                        CFRelease(Value);
                      }

                      CFDictionarySetValue(v35, ValueAtIndex, *(v34 + 18));
                      v46 = CFDictionaryGetValue(Value, ValueAtIndex[2]);
                      if (!v46)
                      {
                        v46 = CFArrayCreateMutable(allocator, 0, 0);
                        CFDictionarySetValue(Value, ValueAtIndex[2], v46);
                        CFRelease(v46);
                      }

                      CFArrayAppendValue(v46, ValueAtIndex);
                      ++v33;
                    }

                    while (Count != v33);
                    v47 = sub_1AF1A4CE8(v54, 1);
                    if (v47)
                    {
                      v48 = 0;
                      *(v34 + 18) += sub_1AF1AE6EC(v47);
                      do
                      {
                        v49 = sub_1AF1A4DBC(v54, v48);
                        if (v49 > *(v34 + v48))
                        {
                          *(v34 + v48) = v49;
                        }

                        ++v48;
                      }

                      while (v48 != 9);
                    }

                    v50 = malloc_type_malloc(0x20uLL, v32);
                    v51 = CFArrayGetValueAtIndex(Mutable, 0);
                    v52 = v51[1];
                    *v50 = *v51;
                    v50[1] = v52;
                    CFArrayAppendValue(theArray, v50);
                  }

                  CFRelease(Mutable);
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_1AF27B150(char a1, CFDictionaryRef theDict, uint64_t *a3)
{
  v3 = a3[1];
  context = *a3;
  v6 = 0;
  if (*(v3 + 144) < 0x10000)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  HIDWORD(v6) = v4;
  LOBYTE(v6) = (a1 | *(v3 + 152)) & 1;
  v7 = a3[2];
  CFDictionaryApplyFunction(theDict, sub_1AF280210, &context);
}

void sub_1AF27B1C0(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      free(ValueAtIndex);
    }
  }

  CFArrayRemoveAllValues(a1);
}

uint64_t sub_1AF27B22C(const __CFArray *a1, const __CFArray *a2, uint64_t a3)
{
  if (!a3)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1C2C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = sub_1AF1A2E00();
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v16 = Count;
    for (i = 0; i != v16; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      sub_1AF1A3F84(v14, ValueAtIndex, *(a3 + i), 0);
    }
  }

  v19 = CFArrayGetCount(a2);
  if (v19 >= 1)
  {
    v20 = v19;
    for (j = 0; j != v20; ++j)
    {
      v22 = CFArrayGetValueAtIndex(a2, j);
      sub_1AF1A4FB0(v14, v22);
    }
  }

  return v14;
}

uint64_t sub_1AF27B314(const __CFArray *a1)
{
  *(&v63[1] + 4) = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v2 = Count;
  if (Count != 1)
  {
    v51 = sub_1AF1A2E00();
    v5 = sub_1AF1B6A14(0, 0, 0, 3, 1);
    v6 = sub_1AF1B6A14(0, 1, 0, 3, 1);
    v48 = sub_1AF1B6A14(0, 3, 0, 2, 1);
    if (v2 >= 1)
    {
      v7 = 0;
      v8 = 0;
      v46 = v6;
      v47 = v5;
      v44 = *MEMORY[0x1E695E480];
      v45 = v2;
      while (1)
      {
        v50 = v8;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
        v10 = sub_1AF1A4604(ValueAtIndex, 0, 0, 1);
        v11 = sub_1AF1A4604(ValueAtIndex, 1, 0, 1);
        v12 = sub_1AF1A4604(ValueAtIndex, 3, 0, 1);
        v15 = sub_1AF1AE6EC(v10);
        if (v15 >= 1)
        {
          for (i = 0; i != v15; ++i)
          {
            DWORD2(v55) = 0;
            *&v55 = 0;
            *&v17 = sub_1AF1AF084(v10, i, v13, v14);
            v55 = v17;
            sub_1AF1B6E5C(v5, &v55, 1, v18);
            *&bytes[8] = 0;
            *bytes = 0;
            *&v21 = sub_1AF1AF084(v11, i, v19, v20);
            *bytes = v21;
            sub_1AF1B6E5C(v6, bytes, 1, v22);
            v60 = 0.0;
            v60 = sub_1AF1AF104(v12, i, v23, v24);
            sub_1AF1B6FF0(v48, &v60, 1, v25);
          }
        }

        v26 = v15 + v7;
        if (sub_1AF1A3CCC(ValueAtIndex) >= 1)
        {
          break;
        }

LABEL_46:
        v8 = v50 + 1;
        v7 = v26;
        v6 = v46;
        v5 = v47;
        if (v50 + 1 == v45)
        {
          goto LABEL_47;
        }
      }

      v27 = 0;
      while (1)
      {
        v28 = sub_1AF1A3D1C(ValueAtIndex, v27, 1);
        v29 = sub_1AF1A7034(v28);
        Mutable = CFDataCreateMutable(v44, 0);
        v31 = sub_1AF1A7674(v28);
        v57 = 0;
        v55 = 0u;
        v56 = 0u;
        sub_1AF1A79D0(v28, &v55);
        if (v26 >= 0x10000)
        {
          break;
        }

        if (v31 >= 1)
        {
          for (j = 0; v31 != j; ++j)
          {
            if (v29 == 3)
            {
              *bytes = v55;
              v53 = v56;
              v54 = v57;
              *bytes = v7 + sub_1AF1A7BA8(bytes, j, 0, 0);
              v33 = bytes;
              v34 = Mutable;
              v35 = 2;
            }

            else if (v29 == 2)
            {
              *bytes = v55;
              v53 = v56;
              v54 = v57;
              LOWORD(v60) = v7 + sub_1AF1A7BA8(bytes, j, 0, 0);
              *bytes = v55;
              v53 = v56;
              v54 = v57;
              WORD1(v60) = v7 + sub_1AF1A7BA8(bytes, j, 1, 0);
              v33 = &v60;
              v34 = Mutable;
              v35 = 4;
            }

            else
            {
              if (v29)
              {
                v36 = sub_1AF0D5194();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
                {
                  sub_1AFDF1CA4(v62, v63, v36);
                }

                continue;
              }

              *bytes = v55;
              v53 = v56;
              v54 = v57;
              LOWORD(v60) = v7 + sub_1AF1A7BA8(bytes, j, 0, 0);
              *bytes = v55;
              v53 = v56;
              v54 = v57;
              WORD1(v60) = v7 + sub_1AF1A7BA8(bytes, j, 1, 0);
              *bytes = v55;
              v53 = v56;
              v54 = v57;
              WORD2(v60) = v7 + sub_1AF1A7BA8(bytes, j, 2, 0);
              v33 = &v60;
              v34 = Mutable;
              v35 = 6;
            }

            CFDataAppendBytes(v34, v33, v35);
          }
        }

        v42 = 2;
LABEL_43:
        v43 = sub_1AF1A6834();
        sub_1AF1A6A70(v43, v29, v31, Mutable, v42);
        sub_1AF1A4FB0(v51, v43);
        if (v43)
        {
          CFRelease(v43);
        }

        CFRelease(Mutable);
        if (++v27 >= sub_1AF1A3CCC(ValueAtIndex))
        {
          goto LABEL_46;
        }
      }

      if (v31 < 1)
      {
LABEL_42:
        v42 = 4;
        goto LABEL_43;
      }

      v37 = 0;
      while (1)
      {
        if (v29 == 3)
        {
          *bytes = v55;
          v53 = v56;
          v54 = v57;
          *bytes = sub_1AF1A7BA8(bytes, v37, 0, 0) + v7;
          v38 = bytes;
          v39 = Mutable;
          v40 = 4;
        }

        else if (v29 == 2)
        {
          *bytes = v55;
          v53 = v56;
          v54 = v57;
          LODWORD(v60) = sub_1AF1A7BA8(bytes, v37, 0, 0) + v7;
          *bytes = v55;
          v53 = v56;
          v54 = v57;
          HIDWORD(v60) = sub_1AF1A7BA8(bytes, v37, 1, 0) + v7;
          v38 = &v60;
          v39 = Mutable;
          v40 = 8;
        }

        else
        {
          if (v29)
          {
            v41 = sub_1AF0D5194();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDF1CA4(v58, &v59, v41);
            }

            goto LABEL_39;
          }

          *bytes = v55;
          v53 = v56;
          v54 = v57;
          LODWORD(v60) = sub_1AF1A7BA8(bytes, v37, 0, 0) + v7;
          *bytes = v55;
          v53 = v56;
          v54 = v57;
          HIDWORD(v60) = sub_1AF1A7BA8(bytes, v37, 1, 0) + v7;
          *bytes = v55;
          v53 = v56;
          v54 = v57;
          v61 = sub_1AF1A7BA8(bytes, v37, 2, 0) + v7;
          v38 = &v60;
          v39 = Mutable;
          v40 = 12;
        }

        CFDataAppendBytes(v39, v38, v40);
LABEL_39:
        if (v31 == ++v37)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_47:
    sub_1AF1ADBE0(v5);
    sub_1AF1ADBE0(v6);
    sub_1AF1ADBE0(v48);
    sub_1AF1A3F84(v51, v5, 0, 0);
    sub_1AF1A3F84(v51, v6, 0, 0);
    sub_1AF1A3F84(v51, v48, 0, 0);
    CFRelease(v5);
    CFRelease(v6);
    CFRelease(v48);
    return v51;
  }

  v3 = CFArrayGetValueAtIndex(a1, 0);

  return sub_1AF1A2EDC(v3);
}

CFTypeRef sub_1AF27BA08(uint64_t a1, CFIndex a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v151 = *MEMORY[0x1E69E9840];
  v14 = sub_1AF1A7674(a3);
  if (sub_1AF1A7034(a3) == 2)
  {
    return 0;
  }

  v134 = a7;
  v131 = sub_1AF2871B8(a3, 4 * v14);
  v133 = sub_1AF1AE6EC(a4);
  v16 = sub_1AF16C20C(a1, a2);
  v17 = sub_1AF16C49C(v16);
  v19 = malloc_type_malloc(16 * v17, 0x1000040451B5BE8uLL);
  v132 = a3;
  if (a6)
  {
    v20 = malloc_type_malloc(8 * v17, 0x100004000313F17uLL);
    v136 = a5 != 0;
LABEL_7:
    if (v17 >= 1)
    {
      for (i = 0; i != v17; ++i)
      {
        v22 = sub_1AF16C4E4(v16, i);
        v24 = v22;
        if (v136)
        {
          *&v25 = sub_1AF1AF084(a5, *v22, v23, v18);
          *cfa = v25;
          *v28.i64 = sub_1AF1AF084(a5, v24[1], v26, v27);
          v29.i64[0] = 0x3F0000003F000000;
          v29.i64[1] = 0x3F0000003F000000;
          v30 = vmulq_f32(vaddq_f32(*cfa, v28), v29);
          v31 = vmulq_f32(v30, v30);
          *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
          *v31.f32 = vrsqrte_f32(v32);
          *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
          v19[i] = vmulq_n_f32(v30, vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
        }

        if (a6)
        {
          v33 = sub_1AF1AF104(a6, *v24, v23, v18);
          v20[i] = vmul_f32(vadd_f32(*&v33, COERCE_FLOAT32X2_T(sub_1AF1AF104(a6, v24[1], v34, v35))), 0x3F0000003F000000);
        }
      }
    }

    if (v136)
    {
      sub_1AF1B6E5C(a5, v19, v17, v18);
    }

    if (a6)
    {
      sub_1AF1B6FF0(a6, v20, v17, v18);
    }

    if (v20)
    {
      free(v20);
    }

    goto LABEL_20;
  }

  v136 = a5 != 0;
  if (a5)
  {
    v20 = 0;
    goto LABEL_7;
  }

LABEL_20:
  if (v17 >= 1)
  {
    for (j = 0; j != v17; ++j)
    {
      v37 = sub_1AF16C4E4(v16, j);
      *&v40 = sub_1AF1AF084(a4, *v37, v38, v39);
      *cfb = v40;
      *v43.i64 = sub_1AF1AF084(a4, v37[1], v41, v42);
      v44.i64[0] = 0x3F0000003F000000;
      v44.i64[1] = 0x3F0000003F000000;
      v19[j] = vmulq_f32(vaddq_f32(*cfb, v43), v44);
    }

    if ((v136 & v134) == 1)
    {
      v45 = 0;
      v130 = a5;
      do
      {
        v46 = sub_1AF16C4E4(v16, v45);
        v47 = *v46;
        v48 = *(v46 + 8);
        *&v51 = sub_1AF1AF084(a4, *v46, v49, v50);
        *cfc = v51;
        v150 = v51;
        *&v54 = sub_1AF1AF084(a4, v48, v52, v53);
        *v137 = v54;
        v149 = v54;
        *&v57 = sub_1AF1AF084(a5, v47, v55, v56);
        v148 = v57;
        *&v60 = sub_1AF1AF084(a5, v48, v58, v59);
        v147 = v60;
        v135 = v19[v45];
        *v63.i64 = sub_1AF1AF084(a5, (v45 + v133), v61, v62);
        v64 = vsubq_f32(*cfc, v135);
        v65 = vmulq_f32(v64, v64);
        v66 = vsubq_f32(*v137, v135);
        v67 = vmulq_f32(v66, v66);
        v146 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v65, v65, 8uLL), *&vextq_s8(v67, v67, 8uLL)), vadd_f32(vzip1_s32(*v65.i8, *v67.i8), vzip2_s32(*v65.i8, *v67.i8))));
        *cf = v63;
        v68 = vmulq_f32(v63, v63);
        v69 = sqrtf(v68.f32[2] + vaddv_f32(*v68.f32));
        v70 = 0uLL;
        v71 = &v150;
        v72 = &v148;
        v73 = &v146;
        v74 = 1;
        do
        {
          *v138 = v70;
          v75 = vsubq_f32(*v71, v135);
          v76 = vmulq_f32(v75, v75);
          *&v77 = v76.f32[2] + vaddv_f32(*v76.f32);
          v78 = v74;
          *v76.f32 = vrsqrte_f32(v77);
          *v76.f32 = vmul_f32(*v76.f32, vrsqrts_f32(v77, vmul_f32(*v76.f32, *v76.f32)));
          v79 = vmulq_n_f32(v75, vmul_f32(*v76.f32, vrsqrts_f32(v77, vmul_f32(*v76.f32, *v76.f32))).f32[0]);
          v80 = vmulq_f32(v79, v79);
          v81 = v69 * sqrtf(v80.f32[2] + vaddv_f32(*v80.f32));
          v82 = 0.0;
          v83 = 0.0;
          if (v81 > 0.0)
          {
            v84 = vmulq_f32(v79, *cf);
            v83 = acosf((v84.f32[2] + vaddv_f32(*v84.f32)) / v81);
          }

          v85 = *v72;
          v86 = vmulq_f32(v85, v85);
          v87 = v69 * sqrtf(v86.f32[2] + vaddv_f32(*v86.f32));
          if (v87 > 0.0)
          {
            v88 = vmulq_f32(*cf, v85);
            v82 = acosf((v88.f32[2] + vaddv_f32(*v88.f32)) / v87) * 0.5;
          }

          v89 = cosf(v82);
          if (v89 == 0.0)
          {
            v90 = sub_1AF0D5194();
            v91 = 1.0;
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF1CE8(&buf, v145, v90);
            }
          }

          else
          {
            v91 = v89;
          }

          v92 = v73->f32[0];
          v93 = cosf(v83 - v82);
          v74 = 0;
          v70 = vaddq_f32(*v138, vmulq_n_f32(*cf, ((v93 * v92) / v91) * 0.5));
          v71 = &v149;
          v72 = &v147;
          v73 = (&v146 + 4);
        }

        while ((v78 & 1) != 0);
        v19[v45++] = vaddq_f32(v135, v70);
        a5 = v130;
      }

      while (v45 != v17);
    }
  }

  sub_1AF1B6E5C(a4, v19, v17, v18);
  free(v19);
  v139 = sub_1AF16C668(v132, a4, v16);
  if (v14 >= 1)
  {
    for (k = 0; k != v14; ++k)
    {
      v95 = sub_1AF16C948(v139, k);
      v97 = *v95;
      v96 = v95[1];
      v98 = v95[2];
      v99 = sub_1AF16C4E4(v16, *v95);
      v100 = sub_1AF16C4E4(v16, v96);
      v101 = sub_1AF16C4E4(v16, v98);
      v102 = sub_1AF1A7C24(v132, k, 0, 0);
      v103 = sub_1AF1A7C24(v132, k, 2, 0);
      v104 = *v99;
      if (*v99 == v102)
      {
        v105 = v99[1];
        v106 = v133;
        v107 = v97 + v133;
        v108 = v105 == v103;
        if (v105 == v103)
        {
          v109 = v97 + v133;
        }

        else
        {
          v109 = -1;
        }

        if (v108)
        {
          v107 = -1;
        }

        v110 = -1;
      }

      else
      {
        v111 = v99[1];
        v106 = v133;
        v112 = v111 == v102;
        if (v111 == v102)
        {
          v107 = v97 + v133;
        }

        else
        {
          v107 = -1;
        }

        if (v112)
        {
          v110 = -1;
        }

        else
        {
          v110 = v97 + v133;
        }

        v113 = v104 == v103;
        if (v104 == v103)
        {
          v109 = v107;
        }

        else
        {
          v109 = -1;
        }

        if (v113)
        {
          v107 = -1;
        }
      }

      if (*v100 == v102)
      {
        if (v100[1] == v103)
        {
          v109 = v96 + v106;
        }

        else
        {
          v107 = v96 + v106;
        }
      }

      else
      {
        v114 = v100[1];
        v115 = v96 + v106;
        v116 = v114 == v102;
        if (v114 == v102)
        {
          v117 = v96 + v106;
        }

        else
        {
          v110 = v96 + v106;
          v117 = v107;
        }

        if (!v116)
        {
          v115 = v109;
        }

        if (*v100 == v103)
        {
          v109 = v115;
        }

        else
        {
          v107 = v117;
        }
      }

      v118 = *v101;
      if (*v101 == v102)
      {
        v119 = v101[1];
        if (v119 == v103)
        {
          v120 = v98 + v106;
        }

        else
        {
          v120 = v109;
        }

        if (v119 == v103)
        {
          v121 = v107;
        }

        else
        {
          v121 = v98 + v106;
        }
      }

      else
      {
        v122 = v101[1];
        v123 = v98 + v106;
        v124 = v122 == v102;
        if (v122 == v102)
        {
          v125 = v98 + v106;
        }

        else
        {
          v110 = v98 + v106;
          v125 = v107;
        }

        if (!v124)
        {
          v123 = v109;
        }

        if (v118 == v103)
        {
          v120 = v123;
        }

        else
        {
          v120 = v109;
        }

        if (v118 == v103)
        {
          v121 = v107;
        }

        else
        {
          v121 = v125;
        }
      }

      if (v120 == -1 || v121 == -1 || v110 == -1)
      {
        v128 = sub_1AF0D5194();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF1D28(&v150, (&v150 + 4), v128);
        }
      }

      sub_1AF2875E4(v131, k, v120, v121, v110);
    }
  }

  v129 = sub_1AF2877C8(v131);
  CFRetain(v129);
  CFRelease(v131);
  CFRelease(v16);
  CFRelease(v139);
  return CFAutorelease(v129);
}

uint64_t sub_1AF27C174(uint64_t a1, __int128 *a2)
{
  memset(v15, 0, sizeof(v15));
  v4 = sub_1AF1A2EDC(a1);
  v5 = sub_1AF1A4CE8(v4, 0);
  v6 = sub_1AF1AF000(v5);
  v7 = sub_1AF17032C(v6);
  v8 = sub_1AF1AE6EC(v6);
  sub_1AF27C294(v7, 0, v8, a2, 0);
  v9 = sub_1AF1A4C6C(a1, 0, 0);
  sub_1AF1A44D4(v4, v6, 0, v9);
  v10 = sub_1AF1A4F84(v4, 0);
  if (v10)
  {
    v11 = v10;
    v12 = sub_1AF1AF000(v10);
    sub_1AF27A280(a2, v15);
    sub_1AF27C3C0(v12, v11, v15, 0);
    v13 = sub_1AF1A4C6C(a1, 1, 0);
    sub_1AF1A44D4(v4, v12, 0, v13);
    CFRelease(v12);
  }

  CFRelease(v6);
  return v4;
}

__CFData *sub_1AF27C294(__CFData *result, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a3 >= 1)
  {
    v7 = a3;
    v9 = result;
    do
    {
      result = sub_1AF1CAFE0(v9, a2, a3, a4);
      v10.i32[0] = *result;
      v11 = v10;
      v11.i32[1] = *(result + 1);
      v12 = v11;
      v12.i32[2] = *(result + 2);
      v13 = *a4;
      v14 = *(a4 + 16);
      v15 = *(a4 + 32);
      if (a5)
      {
        v16 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v15, v12, 2), v14, *v11.f32, 1), v13, v10.f32[0]);
        v17 = vmulq_f32(v12, v12);
        v18 = vmulq_f32(v16, v16);
        v18.f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
        v19 = vdupq_lane_s32(*v18.f32, 0);
        v19.i32[3] = 0;
        v20 = vrsqrteq_f32(v19);
        v21 = vmulq_f32(v20, vrsqrtsq_f32(v19, vmulq_f32(v20, v20)));
        v22 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v18.f32[0] != 0.0)), 0x1FuLL));
        v22.i32[3] = 0;
        v23 = vbslq_s8(vcltzq_s32(v22), vmulq_f32(v16, vmulq_n_f32(vmulq_f32(v21, vrsqrtsq_f32(v19, vmulq_f32(v21, v21))), sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)))), v16);
      }

      else
      {
        v23 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a4 + 48), v15, v12, 2), v14, *v11.f32, 1), v13, v10.f32[0]);
      }

      *result = v23.i64[0];
      *(result + 2) = v23.i32[2];
      ++a2;
      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_1AF27C3C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = sub_1AF17032C(a1);
  v9 = sub_1AF17032C(a2);
  v10 = sub_1AF12DB9C(v9);
  if (sub_1AF1CB3A4(v9, v8, a4, v11))
  {
    v14 = sub_1AF1CAFE0(v8, 0, v12, v13);
    v15 = sub_1AF12DB9C(v8);
    v16 = sub_1AF1CAED0(v9);
    sub_1AF1B6AE4(a1, v14, v15, v16);
    if (a3)
    {
      v17 = sub_1AF1AE3D8(a1) == 1;

      sub_1AF27C294(v8, a4, v10, a3, v17);
    }
  }

  else
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1D6C();
    }
  }
}

uint64_t sub_1AF27C4D8(uint64_t a1, int a2)
{
  v107 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1A4CE8(a1, a2);
  v13 = sub_1AF1A4F84(a1, a2);
  v14 = sub_1AF1A4604(a1, 3, 0, a2);
  if (!v12 && (v15 = sub_1AF0D5194(), os_log_type_enabled(v15, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF1DA0(v15, v16, v17, v18, v19, v20, v21, v22);
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    goto LABEL_9;
  }

  v23 = sub_1AF0D5194();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF1E18(v23, v24, v25, v26, v27, v28, v29, v30);
  }

LABEL_9:
  if (!v14)
  {
    v31 = sub_1AF0D5194();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1E90(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  v103 = 0u;
  v104 = 0u;
  sub_1AF1AE1A8(v12, &v103);
  if (!v103 || (v39 = v104, !v104))
  {
    v77 = sub_1AF0D5194();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1F08();
    }

    return 0;
  }

  v101 = 0u;
  v102 = 0u;
  sub_1AF1AE1A8(v14, &v101);
  if (!v101 || v102 != v39)
  {
    v78 = sub_1AF0D5194();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1F3C();
    }

    return 0;
  }

  v99 = 0u;
  v100 = 0u;
  sub_1AF1AE1A8(v13, &v99);
  if (!v99 || v100 != v39)
  {
    v79 = sub_1AF0D5194();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1F70();
    }

    return 0;
  }

  v96 = v39;
  v40 = 16 * v39;
  v41 = malloc_type_calloc(v40, 1uLL, 0xE1E92334uLL);
  length = v40;
  v42 = malloc_type_calloc(v40, 1uLL, 0x7DD5A130uLL);
  v43 = sub_1AF1A3CCC(a1);
  if (v43 >= 1)
  {
    v45 = v43;
    v46 = 0;
    v47 = 0;
    v97 = v43;
    while (1)
    {
      v48 = sub_1AF1A3D1C(a1, v47, 1);
      if (!sub_1AF1A7034(v48) || sub_1AF1A7034(v48) == 1)
      {
        v98 = 0;
        v49 = sub_1AF1A73C0(v48, &v98);
        if (v49)
        {
          v50 = v49;
          BytePtr = CFDataGetBytePtr(v49);
          if (BytePtr)
          {
            v52 = BytePtr;
            if (v98 == 1)
            {
              v53 = 0;
              v54 = 0;
            }

            else
            {
              if (v98 == 4)
              {
                v54 = 0;
                v53 = BytePtr;
              }

              else if (v98 == 2)
              {
                v53 = 0;
                v54 = BytePtr;
              }

              else
              {
                v55 = sub_1AF0D5194();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  v106 = v98;
                  _os_log_error_impl(&dword_1AF0CE000, v55, OS_LOG_TYPE_ERROR, "Unreachable code: Unsupported index size (%zu)", buf, 0xCu);
                }

                v53 = 0;
                v54 = 0;
              }

              v52 = 0;
            }

            v56 = sub_1AF1A7674(v48);
            v57 = 3 * v56 * v98;
            if (v57 > CFDataGetLength(v50))
            {
              free(v41);
              free(v42);
              v93 = sub_1AF0D5194();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
              {
                sub_1AFDF1FA4();
              }

              return 0;
            }

            if (v56 < 1)
            {
              v46 = 0;
              v45 = v97;
            }

            else
            {
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = (v54 + 4);
              v65 = (v52 + 2);
              v66 = (v53 + 4);
              v45 = v97;
              do
              {
                if (v54)
                {
                  v63 = *(v64 - 2);
                  v62 = *(v64 - 1);
                  v61 = *v64;
                }

                else if (v53)
                {
                  v63 = *(v66 - 1);
                  v62 = *v66;
                  v61 = v66[1];
                }

                else if (v52)
                {
                  v63 = *(v65 - 2);
                  v62 = *(v65 - 1);
                  v61 = *v65;
                }

                v67 = *(v101 + v63 * BYTE6(v102));
                v68 = vsub_f32(*(v101 + v62 * BYTE6(v102)), v67);
                v69 = vsub_f32(*(v101 + v61 * BYTE6(v102)), v67);
                v70 = (-v68.f32[1] * v69.f32[0]) + (v68.f32[0] * v69.f32[1]);
                if (v70 == 0.0)
                {
                  v69 = vadd_f32(v69, COERCE_FLOAT32X2_T(-3.18618444e-58));
                  v68 = vadd_f32(v68, 0xB4000000B4000000);
                  v70 = (-v68.f32[1] * v69.f32[0]) + (v68.f32[0] * v69.f32[1]);
                }

                v71 = v103 + v63 * BYTE6(v104);
                v58.i64[0] = *v71;
                v58.i32[2] = *(v71 + 8);
                v72 = v103 + v62 * BYTE6(v104);
                v59.i64[0] = *v72;
                v59.i32[2] = *(v72 + 8);
                v73 = v103 + v61 * BYTE6(v104);
                v60.i64[0] = *v73;
                v60.i32[2] = *(v73 + 8);
                v59 = vsubq_f32(v59, v58);
                v58 = vsubq_f32(v60, v58);
                v74 = v70;
                v75 = vrecpe_f32(LODWORD(v70));
                v76 = vmul_f32(v75, vrecps_f32(LODWORD(v74), v75));
                v76.i32[0] = vmul_f32(v76, vrecps_f32(LODWORD(v74), v76)).u32[0];
                v60 = vmulq_n_f32(vmlaq_lane_f32(vmulq_lane_f32(vnegq_f32(v58), v68, 1), v59, v69, 1), v76.f32[0]);
                v60.i32[3] = 0;
                v41[v63] = vaddq_f32(v41[v63], v60);
                v41[v62] = vaddq_f32(v41[v62], v60);
                v41[v61] = vaddq_f32(v41[v61], v60);
                v44 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v59, vnegq_f32(vdupq_lane_s32(v69, 0))), v58, v68.f32[0]), v76.f32[0]);
                v44.i32[3] = 0;
                v42[v63] = vaddq_f32(v44, v42[v63]);
                v42[v62] = vaddq_f32(v44, v42[v62]);
                v42[v61] = vaddq_f32(v44, v42[v61]);
                v64 += 3;
                v65 += 3;
                v66 += 3;
                --v56;
              }

              while (v56);
              v46 = 1;
            }
          }
        }
      }

      if (++v47 == v45)
      {
        goto LABEL_57;
      }
    }
  }

  v46 = 0;
LABEL_57:
  v80 = 0;
  do
  {
    v81 = v99 + v80 * BYTE6(v100);
    v44.i64[0] = *v81;
    v82 = v44;
    v82.i32[2] = *(v81 + 8);
    v44.i32[2] = v82.i32[2];
    v83 = v41[v80];
    v84 = vmulq_f32(v83, v44);
    v84.f32[0] = v84.f32[2] + vaddv_f32(*v84.f32);
    v85 = vmlsq_lane_f32(v83, v82, *v84.f32, 0);
    v86 = vmulq_f32(v85, v85);
    *&v87 = v86.f32[2] + vaddv_f32(*v86.f32);
    *v86.f32 = vrsqrte_f32(v87);
    v44 = vmulq_n_f32(v85, vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32))).f32[0]);
    v88 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), vnegq_f32(v82)), v44, vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL));
    v89 = vmulq_f32(v42[v80], vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL));
    if ((v89.f32[2] + vaddv_f32(*v89.f32)) < 0.0)
    {
      v90 = -1.0;
    }

    else
    {
      v90 = 1.0;
    }

    v44.f32[3] = v90;
    v41[v80++] = v44;
  }

  while (v96 != v80);
  free(v42);
  if ((v46 & 1) == 0)
  {
    free(v41);
    return 0;
  }

  v91 = CFDataCreateWithBytesNoCopy(0, v41, length, *MEMORY[0x1E695E480]);
  v92 = sub_1AF1ADBE4(v91, 4, v96, 4, 1);
  CFRelease(v91);
  return v92;
}

uint64_t sub_1AF27CBA0(uint64_t a1, int a2)
{
  v3 = a1;
  v145 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1A4CE8(v3, a2);
  v13 = sub_1AF1A4F84(v3, a2);
  v14 = sub_1AF1A4604(v3, 3, 0, a2);
  if (!v12 && (v15 = sub_1AF0D5194(), os_log_type_enabled(v15, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF1DA0(v15, v16, v17, v18, v19, v20, v21, v22);
    if (!v13)
    {
LABEL_7:
      v23 = sub_1AF0D5194();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF1E18(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }
  }

  else if (!v13)
  {
    goto LABEL_7;
  }

  if (!v14)
  {
    v31 = sub_1AF0D5194();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1E90(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  v39 = sub_1AF1AE6EC(v12);
  v40 = sub_1AF1A3CCC(v3);
  v123 = v39;
  v39 *= 16;
  v41 = malloc_type_calloc(v39, 1uLL, 0xF2B949B2uLL);
  length = v39;
  v42 = malloc_type_calloc(v39, 1uLL, 0x756BB57AuLL);
  v137 = 0u;
  v138 = 0u;
  sub_1AF1AE1A8(v12, &v137);
  v135 = 0u;
  v136 = 0u;
  sub_1AF1AE1A8(v14, &v135);
  if (v40 < 1)
  {
    v44 = 0;
    goto LABEL_60;
  }

  v43 = 0;
  v44 = 0;
  v124 = v40;
  v125 = v3;
  do
  {
    v45 = sub_1AF1A3D1C(v3, v43, 1);
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    sub_1AF1A767C(v45, 0, &v131);
    if (BYTE2(v133) > 1u)
    {
      goto LABEL_57;
    }

    v49 = v132;
    v44 = v132 != 0;
    if (!v132)
    {
      goto LABEL_56;
    }

    v50 = 0;
    do
    {
      if (BYTE2(v133))
      {
        if (v50)
        {
          v51 = 1;
        }

        else
        {
          v51 = 2;
        }

        if (v50)
        {
          v52 = 2;
        }

        else
        {
          v52 = 1;
        }

        v53 = BYTE2(v133) != 5;
        v54 = 1;
        if (BYTE2(v133) == 1)
        {
          v53 = 1;
        }

        else
        {
          v51 = 2;
        }

        if (BYTE2(v133) != 1)
        {
          v52 = 1;
        }
      }

      else
      {
        v54 = 3;
        v53 = 3;
        v51 = 2;
        v52 = 1;
      }

      if (v131)
      {
        v55 = DWORD2(v131);
        v56 = BYTE3(v133);
        v57 = v134 + DWORD2(v134) * v50 * v53;
        v58 = v54 * v50;
        v59 = v134 + (v52 + v54 * v50) * DWORD2(v134);
        v60 = v134 + (v51 + v58) * DWORD2(v134);
        if (v60 <= v57)
        {
          v61 = v57;
        }

        else
        {
          v61 = v60;
        }

        if (v59 <= v61)
        {
          v62 = v61;
        }

        else
        {
          v62 = v59;
        }

        if (*(&v131 + 1) < (BYTE3(v133) + BYTE3(v133) * v62))
        {
          v63 = sub_1AF0D5194();
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
LABEL_40:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            goto LABEL_42;
          }

          *buf = 136315650;
          v140 = "CFXIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
          v141 = 1024;
          v142 = v62;
          v143 = 2048;
          v144 = v55 / v56;
          v101 = v63;
          v102 = "Error: %s - index (%u) out of bounds (%lu)";
          v103 = 28;
LABEL_55:
          _os_log_error_impl(&dword_1AF0CE000, v101, OS_LOG_TYPE_ERROR, v102, buf, v103);
          goto LABEL_40;
        }

        switch(BYTE3(v133))
        {
          case 4u:
            v66 = *(v131 + 4 * v57);
            v65 = *(v131 + 4 * v59);
            v64 = *(v131 + 4 * v60);
            break;
          case 2u:
            v66 = *(v131 + 2 * v57);
            v65 = *(v131 + 2 * v59);
            v64 = *(v131 + 2 * v60);
            break;
          case 1u:
            v66 = *(v131 + v57);
            v65 = *(v131 + v59);
            v64 = *(v131 + v60);
            break;
          default:
            v100 = sub_1AF0D5194();
            if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_40;
            }

            *buf = 67109120;
            LODWORD(v140) = v56;
            v101 = v100;
            v102 = "Unreachable code: Invalid bytes per index (%d)";
            v103 = 8;
            goto LABEL_55;
        }
      }

      else
      {
        v66 = v53 * v50;
        v65 = v52 + v54 * v50;
        v64 = v51 + v54 * v50;
      }

LABEL_42:
      *v67.i64 = sub_1AF279750(BYTE4(v138), (v137 + v66 * BYTE6(v138)), v46, v47.f32[0], v48);
      v130 = v67;
      *v70.i64 = sub_1AF279750(BYTE4(v138), (v137 + v65 * BYTE6(v138)), v67, v68, v69);
      v129 = v70;
      *v73.i64 = sub_1AF279750(BYTE4(v138), (v137 + v64 * BYTE6(v138)), v70, v71, v72);
      v128 = v73;
      *v76.i64 = sub_1AF279750(BYTE4(v136), (v135 + v66 * BYTE6(v136)), v73, v74, v75);
      v127 = v76;
      *v79.i64 = sub_1AF279750(BYTE4(v136), (v135 + v65 * BYTE6(v136)), v76, v77, v78);
      v126 = v79;
      *v46.i64 = sub_1AF279750(BYTE4(v136), (v135 + v64 * BYTE6(v136)), v79, v80, v81);
      v82 = vsubq_f32(v126, v127).u64[0];
      v83 = vsubq_f32(v46, v127).u64[0];
      v84 = v82.f32[1];
      v85 = *(&v83 + 1);
      v46.f32[0] = -*&v83;
      v86 = vmuls_lane_f32(-*&v83, v82, 1) + (v82.f32[0] * *(&v83 + 1));
      if (v86 == 0.0)
      {
        v84 = v82.f32[1] + 0.00000011921;
        v85 = *(&v83 + 1) + -0.00000011921;
        v82.f32[0] = v82.f32[0] + -0.00000011921;
        *&v83 = *&v83 + -0.00000011921;
        v46.f32[0] = -*&v83;
        v86 = (v82.f32[0] * (*(&v83 + 1) + -0.00000011921)) - (*&v83 * (v82.f32[1] + 0.00000011921));
      }

      v87 = vsubq_f32(v129, v130);
      v88 = vsubq_f32(v128, v130);
      v89 = 1.0 / v86;
      v90 = -v84;
      v91 = v89 * ((v85 * v87.f32[2]) - (v84 * v88.f32[2]));
      v92 = 16 * v66;
      v93 = v92 | 8;
      *&v41[v93] = v91 + *&v41[v93];
      v94 = (16 * v65) | 8;
      v95 = 4 * v65;
      *&v41[v94] = v91 + *&v41[v94];
      v96 = vmul_n_f32(vmla_n_f32(vmul_n_f32(*v88.f32, v90), *v87.f32, v85), v89);
      *&v41[v92] = vadd_f32(*&v41[v92], v96);
      v97 = 16 * v64;
      *&v41[v95 * 4] = vadd_f32(v96, *&v41[v95 * 4]);
      *&v41[v97] = vadd_f32(v96, *&v41[v97]);
      v98 = v97 | 8;
      *&v41[v98] = v91 + *&v41[v98];
      v48 = v89 * ((v87.f32[2] * v46.f32[0]) + (v82.f32[0] * v88.f32[2]));
      *(v42 + v93) = v48 + *(v42 + v93);
      *(v42 + v94) = v48 + *(v42 + v94);
      v99 = vmul_n_f32(vmla_n_f32(vmul_n_f32(*v87.f32, v46.f32[0]), *v88.f32, v82.f32[0]), v89);
      *&v42[v92 / 4] = vadd_f32(v99, *&v42[v92 / 4]);
      *&v42[v95] = vadd_f32(v99, *&v42[v95]);
      v47 = *&v42[v97 / 4];
      *v46.f32 = vadd_f32(v99, v47);
      *&v42[v97 / 4] = v46.i64[0];
      v46.f32[0] = v48 + *(v42 + (v97 | 8));
      *(v42 + v98) = v46.i32[0];
      ++v50;
    }

    while (v49 != v50);
    v44 = 1;
LABEL_56:
    v40 = v124;
    v3 = v125;
LABEL_57:
    ++v43;
  }

  while (v43 != v40);
LABEL_60:
  v131 = 0u;
  v132 = 0u;
  sub_1AF1AE1A8(v13, &v131);
  if (v123 >= 1)
  {
    v107 = 0;
    v108 = 0;
    do
    {
      *v109.i64 = sub_1AF279750(BYTE4(v132), (v131 + v107 * BYTE6(v132)), v104, v105, v106.f32[0]);
      v110 = &v41[4 * v108];
      v111.i64[0] = *v110;
      v112 = &v41[4 * v108 + 8];
      v113 = v111;
      v113.i32[2] = *v112;
      v111.i32[2] = *v112;
      v114 = vmulq_f32(v109, v111);
      v114.f32[0] = v114.f32[2] + vaddv_f32(*v114.f32);
      v106 = vmlsq_lane_f32(v113, v109, *v114.f32, 0);
      v115 = vmulq_f32(v106, v106);
      v116 = COERCE_UNSIGNED_INT(v115.f32[2] + vaddv_f32(*v115.f32));
      v117 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL), vnegq_f32(v109)), v113, vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL));
      *v109.f32 = vrsqrte_f32(v116);
      *v109.f32 = vmul_f32(*v109.f32, vrsqrts_f32(v116.u32[0], vmul_f32(*v109.f32, *v109.f32)));
      v118 = vmulq_n_f32(v106, vmul_f32(*v109.f32, vrsqrts_f32(v116.u32[0], vmul_f32(*v109.f32, *v109.f32))).f32[0]);
      *v112 = v118.i32[2];
      *v110 = v118.i64[0];
      v118.i64[0] = *&v42[v108];
      v118.i32[2] = v42[v108 + 2];
      v104 = vmulq_f32(vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL), v118);
      v105 = vaddv_f32(*v104.f32);
      if ((v104.f32[2] + v105) < 0.0)
      {
        v104.f32[0] = -1.0;
      }

      else
      {
        v104.f32[0] = 1.0;
      }

      *(v110 + 3) = v104.i32[0];
      ++v107;
      v108 += 4;
    }

    while (v123 != v107);
  }

  free(v42);
  if (v44)
  {
    v119 = CFDataCreateWithBytesNoCopy(0, v41, length, *MEMORY[0x1E695E480]);
    v120 = sub_1AF1ADBE4(v119, 4, v123, 4, 1);
    CFRelease(v119);
  }

  else
  {
    free(v41);
    return 0;
  }

  return v120;
}

uint64_t sub_1AF27D340(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = sub_1AF1A4CE8(a1, a2);
  if (!v14)
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1DA0(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  if (!sub_1AF1A3CCC(a1))
  {
    return 0;
  }

  v23 = sub_1AF1AE6EC(v14);
  v24 = sub_1AF1B6A14(0, 1, v23, 3, 1);
  sub_1AF27D42C(a1, v14, v24, a2, a3);
  sub_1AF1ADBE0(v24);
  return v24;
}

void sub_1AF27D42C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v73 = 0u;
  v74 = 0u;
  sub_1AF1AE1A8(a2, &v73);
  if (BYTE4(v74) == 8 && (v71 = 0u, v72 = 0u, sub_1AF1AE1A8(a3, &v71), BYTE4(v72) == 8))
  {
    if (v74)
    {
      if (a5)
      {
        v10 = sub_1AF1AC224(a2);
      }

      else
      {
        v10 = 0;
      }

      v11 = sub_1AF1A3CCC(a1);
      v12 = sub_1AF1AE6EC(a3);
      v14 = v12;
      v15 = BYTE6(v72);
      if (BYTE6(v72) == 12)
      {
        LODWORD(__pattern4) = 0;
        memset_pattern4(v71, &__pattern4, 12 * v12);
      }

      else if (v12)
      {
        v16 = 0;
        v17 = v71;
        v18 = v12;
        do
        {
          v19 = v17 + v16;
          *v19 = 0;
          *(v19 + 8) = 0;
          v16 += v15;
          --v18;
        }

        while (v18);
      }

      if (v11 >= 1)
      {
        v20 = 0;
        v21 = v74 - 1;
        while (1)
        {
          v22 = sub_1AF1A3D1C(a1, v20, a4);
          v23 = a4 ? 0 : sub_1AF1A4C6C(a1, 0, 0);
          v69 = 0u;
          v70 = 0u;
          __pattern4 = 0u;
          v68 = 0u;
          sub_1AF1A767C(v22, v23, &__pattern4);
          if ((v69.n128_u8[2] & 0xFA) == 0)
          {
            break;
          }

          v24 = sub_1AF0D5194();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v25 = v24;
            v26 = "Warning: CFXUnifyNormalsFromGeometry can only process triangles and polygons";
LABEL_22:
            _os_log_impl(&dword_1AF0CE000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
          }

LABEL_27:
          if (v11 == ++v20)
          {
            goto LABEL_28;
          }
        }

        if (__pattern4)
        {
          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 3221225472;
          v60[2] = sub_1AF280D2C;
          v60[3] = &unk_1E7A7DC70;
          v66 = v21;
          v61 = v73;
          v62 = v74;
          v63 = v10;
          v64 = v71;
          v65 = v72;
          *buf = __pattern4;
          v57 = v68;
          v58 = v69;
          v59 = v70;
          sub_1AF1A80E4(buf, v60, v69);
          goto LABEL_27;
        }

        v27 = sub_1AF0D5194();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v25 = v27;
        v26 = "Warning: CFXUnifyNormalsFromGeometry empty indices";
        goto LABEL_22;
      }

LABEL_28:
      v28 = BYTE6(v72);
      if (v10 && v14)
      {
        v29 = 0;
        v30 = 0;
        v31 = v71;
        do
        {
          v32 = v10[v30];
          if (v30 != v32)
          {
            v33 = (v31 + (v32 * v28));
            v34 = *(v33 + 2);
            v35 = *v33;
            v36 = v31 + v29;
            *v36 = v35;
            *(v36 + 8) = v34;
          }

          ++v30;
          v29 += v28;
        }

        while (v14 != v30);
      }

      if (v28 == 12 && (v14 & 0xFFFFFFFC) != 0)
      {
        v37 = 0;
        do
        {
          v38 = (v71 + v37 * BYTE6(v72));
          *v13.f32 = vld3q_f32(v38);
          v41 = vaddq_f32(vmulq_f32(v40, v40), vaddq_f32(vmulq_f32(v13, v13), vmulq_f32(v39, v39)));
          v42 = vrsqrteq_f32(v41);
          v43 = vmulq_f32(v42, vrsqrtsq_f32(v41, vmulq_f32(v42, v42)));
          v44 = vmulq_f32(v43, vrsqrtsq_f32(v41, vmulq_f32(v43, v43)));
          v75.val[0] = vmulq_f32(v13, v44);
          v75.val[1] = vmulq_f32(v39, v44);
          v75.val[2] = vmulq_f32(v40, v44);
          vst3q_f32(v38, v75);
          v37 += 4;
        }

        while (v37 < (v14 & 0xFFFFFFFC));
      }

      else
      {
        v37 = 0;
      }

      if (v37 < v14)
      {
        v45 = v71;
        v46 = BYTE6(v72);
        v47 = BYTE6(v72) * v37;
        v48 = v14 - v37;
        do
        {
          v49 = v45 + v47;
          v13.i64[0] = *v49;
          v50 = v13;
          v50.i32[2] = *(v49 + 8);
          v51 = vmulq_f32(v50, v50);
          v51.f32[0] = v51.f32[2] + vaddv_f32(*v51.f32);
          v52 = vdupq_lane_s32(*v51.f32, 0);
          v52.i32[3] = 0;
          v53 = vrsqrteq_f32(v52);
          v54 = vmulq_f32(v53, vrsqrtsq_f32(v52, vmulq_f32(v53, v53)));
          v13.i32[2] = v50.i32[2];
          v55 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v51.f32[0] != 0.0)), 0x1FuLL));
          v55.i32[3] = 0;
          v13 = vbslq_s8(vcltzq_s32(v55), vmulq_f32(v50, vmulq_f32(v54, vrsqrtsq_f32(v52, vmulq_f32(v54, v54)))), v13);
          *v49 = v13.i64[0];
          *(v49 + 8) = v13.i32[2];
          v47 += v46;
          --v48;
        }

        while (v48);
      }

      free(v10);
    }
  }

  else
  {
    sub_1AF2809FC(a1, a2, a3, a4, a5);
  }
}