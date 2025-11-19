id sub_2018(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDAffineGeometry);
  v5 = [(GQDAffineGeometry *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_2624()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mNaturalSize");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  sub_37DE8(qword_9D7B0, Offset);
  __cxa_atexit(j_nullsub_2, qword_9D7B0, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mSize");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  sub_37DE8(qword_9D7C0, v5);
  __cxa_atexit(j_nullsub_2, qword_9D7C0, &dword_0);
  v6 = objc_opt_class();
  v7 = class_getInstanceVariable(v6, "mPosition");
  v8 = ivar_getOffset(v7);
  objc_opt_class();
  sub_37E8C(qword_9D7D0, v8);
  __cxa_atexit(j_nullsub_2_0, qword_9D7D0, &dword_0);
  sub_3F198(&unk_9D7E0, "naturalSize", v9, v10, v11, v12, v13, v14, qword_9D7B0);
  __cxa_atexit(sub_3F0F0, &unk_9D7E0, &dword_0);
  sub_3F3A8(&unk_9D810, "geometry", sub_2018, 0, 0, &unk_9D7E0);

  return __cxa_atexit(sub_3F2F8, &unk_9D810, &dword_0);
}

uint64_t sub_2810(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDBezierPath);
  v4->mHasVFlip = sub_421B4(a1, qword_A35E8, "vflip", &v4->mVFlip);
  v4->mHasHFlip = sub_421B4(a1, qword_A35E8, "hflip", &v4->mHFlip);
  if ([(GQDBezierPath *)v4 readAttributesFromReader:a1 processor:a2]== 1)
  {
    [objc_msgSend(objc_msgSend(a2 "documentState")];
  }

  [objc_msgSend(a2 "documentState")];

  return 1;
}

id sub_28F4(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 "documentState")];
  v5 = [v4 readAttributesFromReader:a1 processor:a2];
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  return v5;
}

uint64_t sub_295C(xmlTextReader *a1, void *a2)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  if (AttributeNs)
  {
    v4 = AttributeNs;
    v5 = [a2 documentState];
    v6 = [objc_msgSend(v5 "root")];
    if (v6)
    {
      v7 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v5 popRetainedObject];
        [objc_msgSend(a2 "documentState")];
      }
    }

    free(v4);
  }

  return 1;
}

uint64_t sub_2CB0(uint64_t result, double **a2)
{
  if (*(result + 89))
  {
    return result;
  }

  v3 = result;
  v4 = *a2;
  if (*a2 == 1)
  {
    if (*(result + 80) == 4)
    {
LABEL_12:
      *(v3 + 89) = 1;
      return result;
    }

    result = sub_4FB0C(*result, *(result + 8), *a2[1], a2[1][1]);
    if ((result & 1) == 0)
    {
      if (*(v3 + 84) < 2)
      {
        v8 = a2[1];
        v9 = *(v3 + 80);
        *(v3 + 80) = v9 + 1;
        *(v3 + 16 * v9 + 16) = *v8;
        return result;
      }

      goto LABEL_12;
    }

LABEL_14:
    *(v3 + 88) = 1;
    return result;
  }

  if (v4)
  {
    if ((v4 & 0xFFFFFFFE) == 2)
    {
      goto LABEL_12;
    }

    if (v4 != 4)
    {
      return result;
    }

    goto LABEL_14;
  }

  v5 = *(result + 84);
  if (!v5)
  {
    *result = *a2[1];
    v6 = a2[1];
    v7 = *(result + 80);
    *(result + 80) = v7 + 1;
    *(result + 16 * v7 + 16) = *v6;
    v5 = *(result + 84);
  }

  *(result + 84) = v5 + 1;
  return result;
}

void sub_2EB0(__CFString *a1, uint64_t a2)
{
  v4 = "Q";
  v5 = *a2;
  v6 = "C";
  v7 = "Z";
  if (*a2 != 4)
  {
    v7 = 0;
  }

  if (v5 == 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (v5 != 3)
  {
    v6 = v7;
  }

  v9 = v5 == 2 || v5 == 3;
  if (v5 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 != 2)
  {
    v4 = v6;
  }

  v11 = "M";
  v12 = "L";
  v13 = v5 == 1;
  if (v5 != 1)
  {
    v12 = 0;
  }

  if (v5)
  {
    v14 = v5 == 1;
  }

  else
  {
    v13 = 1;
    v14 = 1;
  }

  if (v5)
  {
    v11 = v12;
  }

  if (v5 <= 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = v9;
  }

  if (v5 <= 1)
  {
    v16 = v14;
  }

  else
  {
    v16 = v10;
  }

  if (v5 <= 1)
  {
    v17 = v11;
  }

  else
  {
    v17 = v4;
  }

  if (CFStringGetLength(a1) >= 1)
  {
    CFStringAppend(a1, @" ");
  }

  CFStringAppendCString(a1, v17, 0x600u);
  if (v15)
  {
    v18 = 0;
    if (v16 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v16;
    }

    v20 = 16 * v19;
    do
    {
      CFStringAppendFormat(a1, 0, @" %f %f", *(*(a2 + 8) + v18), *(*(a2 + 8) + v18 + 8));
      v18 += 16;
    }

    while (v20 != v18);
  }
}

uint64_t sub_308C()
{
  sub_37B7C(qword_9D850, sub_28F4, 0);
  __cxa_atexit(j_nullsub_2_1, qword_9D850, &dword_0);
  sub_37B7C(qword_9D868, sub_295C, 0);
  __cxa_atexit(j_nullsub_2_1, qword_9D868, &dword_0);
  sub_3F198(&unk_9D880, "bezier", v0, v1, v2, v3, v4, v5, qword_9D850);
  __cxa_atexit(sub_3F0F0, &unk_9D880, &dword_0);
  sub_3F3A8(&unk_9D8B0, "bezier-path", sub_2810, 0, 0, &unk_9D880);

  return __cxa_atexit(sub_3F2F8, &unk_9D8B0, &dword_0);
}

id sub_31D8(xmlTextReader *a1, void *a2)
{
  v3 = [a2 documentState];
  v4 = [v3 currentDrawablesGenerator];
  if (!v4)
  {
    return &dword_0 + 1;
  }

  v5 = v4;
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  v7 = [objc_msgSend(v3 "root")];
  free(AttributeNs);
  if (!v7)
  {
    return &dword_0 + 1;
  }

  Count = CFArrayGetCount(v7);
  if (Count < 1)
  {
    return &dword_0 + 1;
  }

  v9 = Count;
  v10 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v10 - 1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v5 beginTable:v3];
      [v3 setCurrentTableGenerator:v12];
      [ValueAtIndex walkTableWithGenerator:v12 state:v3];
      result = &dword_0 + 1;
    }

    else
    {
      result = [v5 handleDrawable:ValueAtIndex state:v3];
    }

    if (v10 >= v9)
    {
      break;
    }

    ++v10;
  }

  while (result == 1);
  return result;
}

uint64_t sub_331C(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] > a2)
  {
    v4 = [v3 currentDrawablesGenerator];
    v5 = [v3 popRetainedObject];
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [v4 handleDrawable:v5 state:v3];
LABEL_10:
        [objc_msgSend(v3 "root")];

        return v6;
      }
    }

    else if ((*([v3 topObjectOfClass:objc_opt_class()] + 72) & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        CFArrayAppendValue([v3 peekObject], v5);
      }
    }

    v6 = &dword_0 + 1;
    goto LABEL_10;
  }

  return 3;
}

uint64_t sub_3430(void *a1)
{
  *a1 = off_84F88;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return nullsub_2(a1);
}

uint64_t sub_3494(xmlTextReader *a1, void *a2)
{
  if ((*([objc_msgSend(a2 "documentState")] + 72) & 1) == 0)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    [objc_msgSend(objc_msgSend(a2 "documentState")];
    [objc_msgSend(a2 "documentState")];
    CFRelease(Mutable);
  }

  return 1;
}

uint64_t sub_3560(void *a1, int a2)
{
  v4 = [a1 documentState];
  if (*([v4 topObjectOfClass:objc_opt_class()] + 72))
  {
    return 1;
  }

  if ([v4 objectStackDepth] > a2)
  {
    CFRelease([objc_msgSend(a1 "documentState")]);
    return 1;
  }

  return 3;
}

id sub_35E0(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "documentState")];
  if (v3[72] != 1)
  {
    return &dword_0 + 1;
  }

  v4 = v3;
  if ([v3 isHidden])
  {
    return &dword_0 + 1;
  }

  v5 = [a2 documentState];
  v6 = [a2 generator];
  if (!v6)
  {
    return &dword_0 + 1;
  }

  v7 = [v6 enterSlideDrawables:v4 state:v5];
  [objc_msgSend(a2 "documentState")];

  return [v7 beginDrawables:v5];
}

uint64_t sub_36A8(void *a1)
{
  v2 = [a1 documentState];
  v3 = [v2 topObjectOfClass:objc_opt_class()];
  if (v3[72] != 1)
  {
    return 1;
  }

  if ([v3 isHidden])
  {
    return 1;
  }

  if (![a1 generator])
  {
    return 1;
  }

  v4 = [v2 currentDrawablesGenerator];
  if (!v4)
  {
    return 1;
  }

  v5 = [v4 endDrawables:v2];
  [v2 setCurrentDrawablesGenerator:0];
  return v5;
}

uint64_t sub_384C()
{
  sub_37B7C(qword_9D8F0, sub_31D8, 0);
  __cxa_atexit(j_nullsub_2_1, qword_9D8F0, &dword_0);
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mStylesheet");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9D908, &unk_A2AE8, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9D908, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mSlideStyle");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_9D930, v5);
  __cxa_atexit(j_nullsub_2_3, &unk_9D930, &dword_0);
  v6 = objc_opt_class();
  v7 = class_getInstanceVariable(v6, "mTitlePlaceholder");
  v8 = ivar_getOffset(v7);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9D948, &unk_9E220, v8);
  __cxa_atexit(j_nullsub_2_2, &unk_9D948, &dword_0);
  v9 = objc_opt_class();
  v10 = class_getInstanceVariable(v9, "mBodyPlaceholder");
  v11 = ivar_getOffset(v10);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9D970, &unk_9DD58, v11);
  __cxa_atexit(j_nullsub_2_2, &unk_9D970, &dword_0);
  v12 = objc_opt_class();
  v13 = class_getInstanceVariable(v12, "mObjectPlaceholder");
  v14 = ivar_getOffset(v13);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9D998, &unk_9DE78, v14);
  __cxa_atexit(j_nullsub_2_2, &unk_9D998, &dword_0);
  v15 = objc_opt_class();
  v16 = class_getInstanceVariable(v15, "mSlideNumberPlaceholder");
  v17 = ivar_getOffset(v16);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9D9C0, &unk_9E050, v17);
  __cxa_atexit(j_nullsub_2_2, &unk_9D9C0, &dword_0);
  sub_3C544(qword_9D9E8, sub_331C);
  __cxa_atexit(j_nullsub_2_4, qword_9D9E8, &dword_0);
  sub_3EFAC(qword_9D9F8, 0, v18, v19, v20, v21, v22, v23, v55);
  __cxa_atexit(sub_3430, qword_9D9F8, &dword_0);
  sub_3F3A8(&unk_9DA18, "drawables", 0, qword_9D9E8, 0, qword_9D9F8);
  __cxa_atexit(sub_3F2F8, &unk_9DA18, &dword_0);
  sub_37AEC(qword_9DA58, &unk_9DA18);
  __cxa_atexit(j_nullsub_2_5, qword_9DA58, &dword_0);
  sub_3F198(&unk_9DA70, "drawables", v24, v25, v26, v27, v28, v29, qword_9DA58);
  __cxa_atexit(sub_3F0F0, &unk_9DA70, &dword_0);
  sub_3F3A8(&unk_9DAA0, "slide-page-layer", sub_3494, 0, sub_3560, &unk_9DA70);
  __cxa_atexit(sub_3F2F8, &unk_9DAA0, &dword_0);
  sub_37AEC(qword_9DAE0, &unk_9DAA0);
  __cxa_atexit(j_nullsub_2_5, qword_9DAE0, &dword_0);
  sub_3F198(&unk_9DAF8, "layer-ref", v30, v31, v32, v33, v34, v35, qword_9D8F0);
  __cxa_atexit(sub_3F0F0, &unk_9DAF8, &dword_0);
  sub_3F3A8(&unk_9DB28, "proxy-master-layer", 0, 0, 0, &unk_9DAF8);
  __cxa_atexit(sub_3F2F8, &unk_9DB28, &dword_0);
  sub_37AEC(qword_9DB68, &unk_9DB28);
  __cxa_atexit(j_nullsub_2_5, qword_9DB68, &dword_0);
  sub_3F198(&unk_9DB80, "layer", v36, v37, v38, v39, v40, v41, qword_9DAE0);
  __cxa_atexit(sub_3F0F0, &unk_9DB80, &dword_0);
  sub_3F3A8(&unk_9DBB0, "slide-page-layers", 0, 0, 0, &unk_9DB80);
  __cxa_atexit(sub_3F2F8, &unk_9DBB0, &dword_0);
  sub_37AEC(qword_9DBF0, &unk_9DBB0);
  __cxa_atexit(j_nullsub_2_5, qword_9DBF0, &dword_0);
  sub_3F198(&unk_9DC08, "geometry", v42, v43, v44, v45, v46, v47, &qword_A20E8);
  __cxa_atexit(sub_3F0F0, &unk_9DC08, &dword_0);
  sub_3F3A8(&unk_9DC38, "slide-page", sub_35E0, 0, sub_36A8, &unk_9DC08);
  __cxa_atexit(sub_3F2F8, &unk_9DC38, &dword_0);
  sub_37B10(qword_9DC78, &unk_9DC38, 0);
  __cxa_atexit(j_nullsub_2_5, qword_9DC78, &dword_0);
  sub_3F198(&unk_9DC90, "stylesheet", v48, v49, v50, v51, v52, v53, &unk_9D908);
  __cxa_atexit(sub_3F0F0, &unk_9DC90, &dword_0);
  sub_3F3A8(&unk_9DCC0, "abstract-slide", 0, 0, 0, &unk_9DC90);

  return __cxa_atexit(sub_3F2F8, &unk_9DCC0, &dword_0);
}

uint64_t sub_3FF0(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDBGBodyPlaceholder);
  v7 = 1;
  if ([objc_msgSend(objc_msgSend(objc_msgSend(a2 "documentState")])
  {
    v5 = v7;
  }

  else
  {
    v5 = 1;
  }

  v4->super.mIsVisible = v5;
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_414C()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mFrame");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9DD00, &unk_A1668, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9DD00, &dword_0);
  sub_3F198(&unk_9DD28, "text", v3, v4, v5, v6, v7, v8, &unk_9DD00);
  __cxa_atexit(sub_3F0F0, &unk_9DD28, &dword_0);
  sub_3F5AC(&unk_9DD58, "body-placeholder", &unk_9DF08, sub_3FF0, 0, &unk_9DD28);

  return __cxa_atexit(sub_40BC, &unk_9DD58, &dword_0);
}

uint64_t sub_4290(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDBGTemplateSlide);
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_42FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9DDA0, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_9DDA0, &dword_0);
  sub_3F5AC(&unk_9DDD0, "master-slide", &unk_9DCC0, sub_4290, 0, &unk_9DDA0);
  __cxa_atexit(sub_40BC, &unk_9DDD0, &dword_0);
  sub_37B10(qword_9DE18, &unk_9DDD0, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_9DE18, &dword_0);
}

id sub_43F8(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDBGObjectPlaceholder);
  v4->super.mIsVisible = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "documentState")];
  v5 = [(GQDBGObjectPlaceholder *)v4 readAttributesFromReader:a1 processor:a2];
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  [objc_msgSend(a2 "documentState")];

  return v5;
}

uint64_t sub_44B8(xmlTextReader *a1, void *a2)
{
  v4 = [a2 documentState];
  v5 = *([v4 peekObject] + 11);
  if (v5)
  {
    [v4 root];
    v6 = [GQDClassNameMap classForName:v5 inRootType:objc_opt_class()];
    if (v6)
    {
      v7 = v6;
      [v4 setMustRegisterDrawables:1];
      v8 = [(objc_class *)v7 stateForReading];

      sub_3A420(a1, v8, &unk_9DE30, a2);
    }
  }

  return sub_3A52C(a1);
}

uint64_t sub_459C(void *a1, int a2)
{
  v3 = [a1 documentState];
  [v3 setMustRegisterDrawables:0];
  if ([v3 objectStackDepth] < a2)
  {
    return 3;
  }

  if ([v3 objectStackDepth] == a2)
  {
    return 2;
  }

  v5 = [v3 popRetainedObject];
  v6 = [v3 peekObject];

  v6[12] = v5;
  return 1;
}

uint64_t sub_4710()
{
  sub_37B7C(qword_9DE30, sub_44B8, sub_459C);
  __cxa_atexit(j_nullsub_2_1, qword_9DE30, &dword_0);
  sub_3F198(&unk_9DE48, "object", v0, v1, v2, v3, v4, v5, qword_9DE30);
  __cxa_atexit(sub_3F0F0, &unk_9DE48, &dword_0);
  sub_3F5AC(&unk_9DE78, "object-placeholder", &unk_9DF08, sub_43F8, 0, &unk_9DE48);

  return __cxa_atexit(sub_40BC, &unk_9DE78, &dword_0);
}

uint64_t sub_489C()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mStyle");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_9DEC0, Offset);
  __cxa_atexit(j_nullsub_2_3, &unk_9DEC0, &dword_0);
  sub_3F198(&unk_9DED8, "placeholder-style-ref", v3, v4, v5, v6, v7, v8, &unk_9DEC0);
  __cxa_atexit(sub_3F0F0, &unk_9DED8, &dword_0);
  sub_3F5AC(&unk_9DF08, "placeholder", &unk_9E910, 0, 0, &unk_9DED8);

  return __cxa_atexit(sub_40BC, &unk_9DF08, &dword_0);
}

id sub_4AFC(xmlTextReader *a1, void *a2)
{
  v4 = [objc_msgSend(a2 "documentState")];
  if (!sub_429BC(a1, v4 + 11))
  {
    return &dword_0 + 3;
  }

  [a2 setThumbnailSize:{v4[11], v4[12]}];
  v5 = [a2 generator];
  if (!v5)
  {
    return &dword_0 + 3;
  }

  v6 = v5;
  v7 = [a2 documentState];

  return [v6 handleSlideSize:v4 state:v7];
}

uint64_t sub_54E8()
{
  sub_37B7C(qword_9DF50, sub_4AFC, 0);

  return __cxa_atexit(j_nullsub_2_1, qword_9DF50, &dword_0);
}

uint64_t sub_5554(uint64_t a1, void *a2)
{
  v4 = [a2 documentState];
  v5 = objc_alloc_init(GQDBGSlide);
  [(GQDBGAbstractSlide *)v5 readAttributesForSlide:a1];
  [v4 pushObject:v5];
  if (v5->super.mCallGenerator && ![(GQDBGAbstractSlide *)v5 isHidden])
  {
    v6 = [a2 generator];
    if (v6)
    {
      [v6 beginSlide:v5 state:v4];
    }
  }

  return 1;
}

uint64_t sub_55F4(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  v6 = v5;
  if (v5[72] == 1 && ([v5 isHidden] & 1) == 0)
  {
    v9 = [a1 generator];
    if (v9)
    {
      v7 = [v9 endSlide:v6 state:v4];
    }

    else
    {
      v7 = &dword_0 + 1;
    }

    if ([v4 isGeneratingThumbnail])
    {
      [v4 setThumbnailGenerationDone:1];
    }
  }

  else
  {
    v7 = &dword_0 + 1;
  }

  return v7;
}

uint64_t sub_578C()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mTemplate");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_9DF68, Offset);
  __cxa_atexit(j_nullsub_2_3, &unk_9DF68, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mNoteFrame");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9DF80, &unk_A1668, v5);
  __cxa_atexit(j_nullsub_2_2, &unk_9DF80, &dword_0);
  sub_3F198(&unk_9DFA8, "master-ref", v6, v7, v8, v9, v10, v11, &unk_9DF68);
  __cxa_atexit(sub_3F0F0, &unk_9DFA8, &dword_0);
  sub_3F5AC(&unk_9DFD8, "slide", &unk_9DCC0, sub_5554, sub_55F4, &unk_9DFA8);

  return __cxa_atexit(sub_40BC, &unk_9DFD8, &dword_0);
}

uint64_t sub_595C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDBGSlideNumberPlaceholder);
  v4->super.mIsVisible = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "documentState")];
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_5A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9E020, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_9E020, &dword_0);
  sub_3F5AC(&unk_9E050, "slide-number-placeholder", &unk_9DF08, sub_595C, 0, &unk_9E020);

  return __cxa_atexit(sub_40BC, &unk_9E050, &dword_0);
}

uint64_t sub_5AD0(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(GQDBGTheme);
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_5B18(uint64_t a1, void *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return 1;
}

uint64_t sub_5BCC()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mStylesheet");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9E098, &unk_A2AE8, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9E098, &dword_0);
  sub_3F198(&unk_9E0C0, "master-slide", v3, v4, v5, v6, v7, v8, qword_9DE18);
  __cxa_atexit(sub_3F0F0, &unk_9E0C0, &dword_0);
  sub_3F3A8(&unk_9E0F0, "theme-masters", sub_5B18, 0, 0, &unk_9E0C0);
  __cxa_atexit(sub_3F2F8, &unk_9E0F0, &dword_0);
  v9 = objc_opt_class();
  v10 = class_getInstanceVariable(v9, "mTemplateSlides");
  v11 = ivar_getOffset(v10);
  objc_opt_class();
  sub_37BCC(&unk_9E130, &unk_9E0F0, v11);
  __cxa_atexit(j_nullsub_2_2, &unk_9E130, &dword_0);
  sub_3F198(&unk_9E158, "stylesheet", v12, v13, v14, v15, v16, v17, &unk_9E098);
  __cxa_atexit(sub_3F0F0, &unk_9E158, &dword_0);
  sub_3F3A8(&unk_9E188, "theme", sub_5AD0, 0, 0, &unk_9E158);

  return __cxa_atexit(sub_3F2F8, &unk_9E188, &dword_0);
}

uint64_t sub_5E14(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDBGTitlePlaceholder);
  v7 = 1;
  if ([objc_msgSend(objc_msgSend(objc_msgSend(a2 "documentState")])
  {
    v5 = v7;
  }

  else
  {
    v5 = 1;
  }

  v4->super.mIsVisible = v5;
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_5F6C()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mFrame");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9E1C8, &unk_A1668, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9E1C8, &dword_0);
  sub_3F198(&unk_9E1F0, "text", v3, v4, v5, v6, v7, v8, &unk_9E1C8);
  __cxa_atexit(sub_3F0F0, &unk_9E1F0, &dword_0);
  sub_3F5AC(&unk_9E220, "title-placeholder", &unk_9DF08, sub_5E14, 0, &unk_9E1F0);

  return __cxa_atexit(sub_40BC, &unk_9E220, &dword_0);
}

uint64_t sub_60B0(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDChartModel);
  -[GQDChartModel setProcessorBundle:](v4, "setProcessorBundle:", [a2 bundle]);
  [objc_msgSend(a2 "documentState")];
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  v6 = 0;
  if (sub_42384(a1, qword_A35E8, "chart-direction", &v6))
  {
    v4->mDirection = v6;
  }

  return 1;
}

uint64_t sub_6168(void *a1, int a2)
{
  if ([objc_msgSend(a1 "documentState")] <= a2)
  {
    return 3;
  }

  v3 = [objc_msgSend(a1 "documentState")];
  if (![v3 direction])
  {
    [v3 transpose];
  }

  return 1;
}

uint64_t sub_61C8(void *a1, int a2)
{
  if ([objc_msgSend(a1 "documentState")] <= a2)
  {
    return 3;
  }

  v3 = [objc_msgSend(a1 "documentState")];
  result = 1;
  v3[88] = 1;
  return result;
}

uint64_t sub_621C(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 topObjectOfClass:objc_opt_class()];
  v6 = v5[1];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[1] = v4;
  return 1;
}

uint64_t sub_6294(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 topObjectOfClass:objc_opt_class()];
  v6 = v5[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[2] = v4;
  return 1;
}

uint64_t sub_630C(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 topObjectOfClass:objc_opt_class()];
  v6 = v5[3];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[3] = v4;
  return 1;
}

uint64_t sub_6384(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 topObjectOfClass:objc_opt_class()];
  v6 = v5[4];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[4] = v4;
  return 1;
}

uint64_t sub_63FC(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 topObjectOfClass:objc_opt_class()];
  v6 = v5[6];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[6] = v4;
  return 1;
}

uint64_t sub_6474(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 topObjectOfClass:objc_opt_class()];
  v6 = v5[8];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[8] = v4;
  return 1;
}

uint64_t sub_64EC(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 topObjectOfClass:objc_opt_class()];
  v6 = v5[9];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[9] = v4;
  return 1;
}

uint64_t sub_6564(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 topObjectOfClass:objc_opt_class()];
  v6 = v5[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[7] = v4;
  return 1;
}

uint64_t sub_6AB8(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDChart);
  [objc_msgSend(a2 "documentState")];
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  v6 = 1;
  if (sub_42384(a1, qword_A35E8, "chart-type", &v6))
  {
    v4->mType = v6;
  }

  return sub_8A64(a1, a2);
}

uint64_t sub_6B70(uint64_t a1, void *a2)
{
  v3 = sub_37BA0(&unk_A2888, a1, a2);
  if (v3 == 1)
  {
    v4 = [a2 documentState];
    v5 = [v4 popRetainedObject];
    v6 = [v4 peekObject];
    v6[10] = v5;
    *(v6 + 88) = 1;
  }

  return v3;
}

uint64_t sub_6D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9E268, 0, a3, a4, a5, a6, a7, a8, v41);
  __cxa_atexit(sub_3F0F0, &unk_9E268, &dword_0);
  sub_3F3A8(&unk_9E298, "chart-title", sub_3C268, 0, 0, &unk_9E268);
  __cxa_atexit(sub_3F2F8, &unk_9E298, &dword_0);
  sub_3F3A8(&unk_9E2D8, "value-title", sub_3C268, 0, 0, &unk_9E268);
  __cxa_atexit(sub_3F2F8, &unk_9E2D8, &dword_0);
  sub_3F3A8(&unk_9E318, "value-y2-title", sub_3C268, 0, 0, &unk_9E268);
  __cxa_atexit(sub_3F2F8, &unk_9E318, &dword_0);
  sub_3F3A8(&unk_9E358, "catagory-title", sub_3C268, 0, 0, &unk_9E268);
  __cxa_atexit(sub_3F2F8, &unk_9E358, &dword_0);
  sub_37B10(qword_9E398, &unk_A2C28, sub_621C);
  __cxa_atexit(j_nullsub_2_5, qword_9E398, &dword_0);
  sub_37B10(qword_9E3B0, &unk_A2C28, sub_6294);
  __cxa_atexit(j_nullsub_2_5, qword_9E3B0, &dword_0);
  sub_37B10(qword_9E3C8, &unk_A2C28, sub_630C);
  __cxa_atexit(j_nullsub_2_5, qword_9E3C8, &dword_0);
  sub_37B10(qword_9E3E0, &unk_A2DC0, sub_6384);
  __cxa_atexit(j_nullsub_2_5, qword_9E3E0, &dword_0);
  sub_37B10(qword_9E3F8, &unk_9E298, sub_63FC);
  __cxa_atexit(j_nullsub_2_5, qword_9E3F8, &dword_0);
  sub_37B10(qword_9E410, &unk_9E2D8, sub_6474);
  __cxa_atexit(j_nullsub_2_5, qword_9E410, &dword_0);
  sub_37B10(qword_9E428, &unk_9E318, sub_64EC);
  __cxa_atexit(j_nullsub_2_5, qword_9E428, &dword_0);
  sub_37B10(qword_9E440, &unk_9E358, sub_6564);
  __cxa_atexit(j_nullsub_2_5, qword_9E440, &dword_0);
  sub_3F198(&unk_9E458, "chart-data", v8, v9, v10, v11, v12, v13, qword_9E398);
  __cxa_atexit(sub_3F0F0, &unk_9E458, &dword_0);
  sub_3F3A8(&unk_9E488, "chart-model", sub_60B0, &qword_A20E8, sub_6168, &unk_9E458);
  __cxa_atexit(sub_3F2F8, &unk_9E488, &dword_0);
  sub_3F5AC(&unk_9E4C8, "formula-chart-model", &unk_9E488, sub_60B0, sub_61C8, &unk_9E458);
  __cxa_atexit(sub_40BC, &unk_9E4C8, &dword_0);
  v14 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v14, "mStyle");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_9E510, Offset);
  __cxa_atexit(j_nullsub_2_3, &unk_9E510, &dword_0);
  sub_3F198(&unk_9E528, 0, v17, v18, v19, v20, v21, v22, v42);
  __cxa_atexit(sub_3F0F0, &unk_9E528, &dword_0);
  sub_3F3A8(&unk_9E558, "chart-style", 0, &unk_9E510, 0, &unk_9E528);
  __cxa_atexit(sub_3F2F8, &unk_9E558, &dword_0);
  sub_37B7C(qword_9E598, sub_6B70, 0);
  __cxa_atexit(j_nullsub_2_1, qword_9E598, &dword_0);
  v23 = objc_opt_class();
  v24 = class_getInstanceVariable(v23, "mLegend");
  v25 = ivar_getOffset(v24);
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  sub_37BFC(&unk_9E5B0, &unk_9E728, v25, v26, v27, 0);
  __cxa_atexit(j_nullsub_2_2, &unk_9E5B0, &dword_0);
  v28 = objc_opt_class();
  v29 = class_getInstanceVariable(v28, "mModel");
  v30 = ivar_getOffset(v29);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9E5D8, &unk_9E488, v30);
  __cxa_atexit(j_nullsub_2_2, &unk_9E5D8, &dword_0);
  v31 = objc_opt_class();
  v32 = class_getInstanceVariable(v31, "mModel");
  v33 = ivar_getOffset(v32);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9E600, &unk_9E4C8, v33);
  __cxa_atexit(j_nullsub_2_2, &unk_9E600, &dword_0);
  sub_37B10(qword_9E628, &unk_9E558, 0);
  __cxa_atexit(j_nullsub_2_5, qword_9E628, &dword_0);
  sub_3F198(&unk_9E640, "chart-legendInfo", v34, v35, v36, v37, v38, v39, &unk_9E5B0);
  __cxa_atexit(sub_3F0F0, &unk_9E640, &dword_0);
  sub_3F5AC(&unk_9E670, "chart", &unk_9E910, sub_6AB8, sub_A348, &unk_9E640);

  return __cxa_atexit(sub_40BC, &unk_9E670, &dword_0);
}

uint64_t sub_7524(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDChartLegend);
  [objc_msgSend(a2 "documentState")];
  [objc_msgSend(objc_msgSend(a2 "documentState")];

  return sub_8A64(a1, a2);
}

uint64_t sub_75A4(uint64_t a1, void *a2)
{
  v3 = sub_37BA0(&unk_A2888, a1, a2);
  if (v3 == 1)
  {
    v4 = [a2 documentState];
    v5 = [v4 popRetainedObject];
    v6 = [v4 peekObject];
    v6[10] = v5;
    *(v6 + 88) = 1;
  }

  return v3;
}

uint64_t sub_76BC()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mChart");
  Offset = ivar_getOffset(InstanceVariable);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  sub_37BFC(&unk_9E6B8, &unk_9E670, Offset, v3, v4, 0);
  __cxa_atexit(j_nullsub_2_2, &unk_9E6B8, &dword_0);
  sub_37B7C(qword_9E6E0, sub_75A4, 0);
  __cxa_atexit(j_nullsub_2_1, qword_9E6E0, &dword_0);
  sub_3F198(&unk_9E6F8, "legend-chartInfo", v5, v6, v7, v8, v9, v10, &unk_9E6B8);
  __cxa_atexit(sub_3F0F0, &unk_9E6F8, &dword_0);
  sub_3F5AC(&unk_9E728, "chartLegend", &unk_9E910, sub_7524, sub_A348, &unk_9E6F8);

  return __cxa_atexit(sub_40BC, &unk_9E728, &dword_0);
}

void *sub_7870()
{
  v0 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  if (v0)
  {
    keyCallBacks = off_850A0;
    v2 = NSNonOwnedPointerMapValueCallBacks;
    *v0 = NSCreateMapTable(&keyCallBacks, &v2, 0);
  }

  return v0;
}

uint64_t sub_89A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9E770, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_9E770, &dword_0);
  sub_3F3A8(&unk_9E7A0, "color", sub_812C, &qword_A20E8, 0, &unk_9E770);

  return __cxa_atexit(sub_3F2F8, &unk_9E7A0, &dword_0);
}

uint64_t sub_8A64(xmlTextReader *a1, void *a2)
{
  v3 = [a2 documentState];
  v4 = [v3 peekObject];
  *(v4 + 3) = xmlTextReaderGetAttributeNs(a1, off_9D3D8, *(qword_A35E0 + 16));
  if ([v3 mustRegisterDrawables])
  {
    [objc_msgSend(v3 "root")];
  }

  v5 = sub_4294C(a1, qword_A35E8, "href");
  if (v5)
  {
    v6 = v5;
    *(v4 + 2) = CFURLCreateWithString(0, v5, 0);
    CFRelease(v6);
  }

  *(v4 + 56) = sub_42384(a1, qword_A3608, "order", v4 + 8);
  return 1;
}

uint64_t sub_8FAC(uint64_t a1, void **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_9C38(a1, a2);
  }

  else
  {
    sub_9BFC(a1, a2);
    result = v3 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_94D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_950C(uint64_t a1, uint64_t a2, double a3, double a4, float64x2_t a5, float64x2_t a6)
{
  v8 = *a2;
  if (*a2 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_30;
      }

      if (*a1 == 1)
      {
        v19 = *(a2 + 8);
        *&a5.f64[0] = v19->i64[1];
        a6.f64[0] = *(a1 + 32);
        if (a6.f64[0] != a5.f64[0])
        {
          v25 = *v19;
          v26 = *(a1 + 24);
          v23 = a6;
          v24 = a5;
          v20 = objc_alloc_init(GQDBezierLine);
          v21 = vdupq_lane_s64(vcgtq_f64(v24, v23).i64[0], 0);
          v20->mLower = vbslq_s8(v21, v25, v26);
          v20->mUpper = vbslq_s8(v21, v26, v25);
          CFArrayAppendValue(*(a1 + 40), v20);
        }
      }
    }

    v22 = **(a2 + 8);
LABEL_29:
    *(a1 + 24) = v22;
    goto LABEL_30;
  }

  if (v8 == 2)
  {
    v22 = *(*(a2 + 8) + 16);
    goto LABEL_29;
  }

  if (v8 == 3)
  {
    v22 = *(*(a2 + 8) + 32);
    goto LABEL_29;
  }

  if (v8 == 4 && *(a1 + 48) == 1 && *a1 == 1)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 32);
    if (v9 != v10)
    {
      v11 = *(a1 + 8);
      v12 = *(a1 + 24);
      v13 = objc_alloc_init(GQDBezierLine);
      v14 = v13;
      if (v10 >= v9)
      {
        v15 = v11;
      }

      else
      {
        v15 = v12;
      }

      if (v10 >= v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = v10;
      }

      if (v10 >= v9)
      {
        v17 = v12;
      }

      else
      {
        v17 = v11;
      }

      if (v10 >= v9)
      {
        v18 = v10;
      }

      else
      {
        v18 = v9;
      }

      v13->mUpper.x = v15;
      v13->mUpper.y = v16;
      v13->mLower.x = v17;
      v13->mLower.y = v18;
      CFArrayAppendValue(*(a1 + 40), v13);
    }
  }

LABEL_30:
  if (*(a1 + 48) == 1 && (*a1 & 1) == 0)
  {
    *(a1 + 8) = *(a1 + 24);
  }

  *a1 = 1;
}

void sub_97AC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_97AC(a1, *a2);
    sub_97AC(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_9828(uint64_t a1, id *a2)
{
  result = *sub_98A8(a1, &v3, a2);
  if (!result)
  {
    sub_996C();
  }

  return result;
}

uint64_t *sub_98A8(uint64_t a1, void *a2, id *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (([*a3 methodForSelector:*(a1 + 24)])(*a3, *(a1 + 24), v4[4]) != -1)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (([v8[4] methodForSelector:*(a1 + 24)])(v8[4], *(a1 + 24), *a3) != -1)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *sub_99D4(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_9A60(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void sub_9A2C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t *sub_9A60(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

id sub_9BFC(uint64_t a1, void **a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *v3 = *a2;
  result = v4;
  *(a1 + 8) = v3 + 1;
  return result;
}

uint64_t sub_9C38(uint64_t a1, void **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_9D48();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    sub_9DF0(a1, v7);
  }

  v8 = (8 * v2);
  v17 = 0;
  v18 = v8;
  *(&v19 + 1) = 0;
  v9 = *a2;
  *v8 = *a2;
  v10 = v9;
  *&v19 = v8 + 1;
  v11 = *(a1 + 8);
  v12 = (v8 + *a1 - v11);
  sub_9E38(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_9FAC(&v17);
  return v16;
}

void sub_9D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_9FAC(va);
  _Unwind_Resume(a1);
}

void sub_9D60(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_9DBC(exception, a1);
}

std::logic_error *sub_9DBC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_9DF0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_9A2C();
}

uint64_t sub_9E38(uint64_t a1, id *a2, id *a3, void **a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      v8 = *v7;
      *a4 = *v7;
      v9 = v8;
      ++v7;
      a4 = ++v14;
    }

    while (v7 != a3);
  }

  v12 = 1;
  sub_9EF0(a1, a2, a3);
  return sub_9F34(v11);
}

void sub_9EF0(uint64_t a1, id *a2, id *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
    }

    while (v4 != a3);
  }
}

uint64_t sub_9F34(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_9F6C(a1);
  }

  return a1;
}

void sub_9F6C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    v1 -= 8;
  }
}

uint64_t sub_9FAC(uint64_t a1)
{
  sub_9FE4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9FE4(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v4 - 8);
    *(a1 + 16) = v4 - 8;
  }
}

void sub_A028(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_9A2C();
}

uint64_t sub_A070()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mGeometry");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9E7E0, &unk_9D810, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9E7E0, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mWrapPath");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9E808, &unk_9D8B0, v5);
  __cxa_atexit(j_nullsub_2_2, &unk_9E808, &dword_0);
  v6 = objc_opt_class();
  v7 = class_getInstanceVariable(v6, "mWrapGeometry");
  v8 = ivar_getOffset(v7);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9E830, &unk_9D810, v8);
  __cxa_atexit(j_nullsub_2_2, &unk_9E830, &dword_0);
  sub_3F198(&unk_9E858, "path", v9, v10, v11, v12, v13, v14, &unk_9E808);
  __cxa_atexit(sub_3F0F0, &unk_9E858, &dword_0);
  sub_3F3A8(&unk_9E888, "drawable-wrap", 0, 0, 0, &unk_9E858);
  __cxa_atexit(sub_3F2F8, &unk_9E888, &dword_0);
  sub_37AEC(qword_9E8C8, &unk_9E888);
  __cxa_atexit(j_nullsub_2_5, qword_9E8C8, &dword_0);
  sub_3F198(&unk_9E8E0, "geometry", v15, v16, v17, v18, v19, v20, &unk_9E7E0);
  __cxa_atexit(sub_3F0F0, &unk_9E8E0, &dword_0);
  sub_3F3A8(&unk_9E910, "drawable", sub_8A64, 0, 0, &unk_9E8E0);

  return __cxa_atexit(sub_3F2F8, &unk_9E910, &dword_0);
}

id sub_A348(void *a1)
{
  v2 = [a1 documentState];
  if ([v2 doExternalTextWrap] && (v3 = objc_msgSend(objc_msgSend(a1, "documentState"), "peekObject"), v4 = objc_msgSend(v3, "graphicStyle"), v6 = 0, v3[4]) && objc_msgSend(v4, "hasValueForObjectProperty:value:", 72, &v6) && objc_msgSend(v6, "floatingWrapEnabled"))
  {
    return [v3 collectWrapPointsForState:v2 graphicStyle:{objc_msgSend(v3, "graphicStyle")}];
  }

  else
  {
    return &dword_0 + 1;
  }
}

uint64_t sub_A44C()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mGraphicStyle");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_9E950, Offset);
  __cxa_atexit(j_nullsub_2_3, &unk_9E950, &dword_0);
  sub_3F198(&unk_9E968, 0, v3, v4, v5, v6, v7, v8, v16);
  __cxa_atexit(sub_3F0F0, &unk_9E968, &dword_0);
  sub_3F3A8(&unk_9E998, "graphic-style", 0, &unk_9E950, 0, &unk_9E968);
  __cxa_atexit(sub_3F2F8, &unk_9E998, &dword_0);
  sub_37B10(qword_9E9D8, &unk_9E998, 0);
  __cxa_atexit(j_nullsub_2_5, qword_9E9D8, &dword_0);
  sub_3F198(&unk_9E9F0, "style", v9, v10, v11, v12, v13, v14, qword_9E9D8);
  __cxa_atexit(sub_3F0F0, &unk_9E9F0, &dword_0);
  sub_3F5AC(&unk_9EA20, "drawable-graphic", &unk_9E910, 0, sub_A348, &unk_9E9F0);

  return __cxa_atexit(sub_40BC, &unk_9EA20, &dword_0);
}

uint64_t sub_A630(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDGroup);
  [objc_msgSend(a2 "documentState")];

  v5 = sub_8A64(a1, a2);
  if (v5 == 1)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    [objc_msgSend(a2 "documentState")];
    CFRelease(Mutable);
  }

  return v5;
}

uint64_t sub_A6CC(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 peekObject];
  v6 = v5[9];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[9] = v4;
  return 1;
}

uint64_t sub_A748(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 topObjectOfClass:objc_opt_class()];

  v5[1] = v4;
  return 1;
}

uint64_t sub_A7D4(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 topObjectOfClass:objc_opt_class()];

  v5[10] = v4;
  return 1;
}

uint64_t sub_A85C(xmlTextReader *a1, void *a2)
{
  v3 = [a2 documentState];
  v4 = [v3 topObjectOfClass:objc_opt_class()];
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 3;
  }

  v6 = AttributeNs;
  v7 = [objc_msgSend(v3 "root")];

  v4[10] = v7;
  free(v6);
  return 1;
}

uint64_t sub_A9B0()
{
  sub_37B10(qword_9EA68, &unk_9D810, sub_A748);
  __cxa_atexit(j_nullsub_2_5, qword_9EA68, &dword_0);
  sub_37B10(qword_9EA80, &unk_A1498, sub_A7D4);
  __cxa_atexit(j_nullsub_2_5, qword_9EA80, &dword_0);
  sub_37B7C(qword_9EA98, sub_A85C, 0);
  __cxa_atexit(j_nullsub_2_1, qword_9EA98, &dword_0);
  sub_3F198(&unk_9EAB0, "geometry", v0, v1, v2, v3, v4, v5, qword_9EA68);
  __cxa_atexit(sub_3F0F0, &unk_9EAB0, &dword_0);
  sub_3F3A8(&unk_9EAE0, "drawable-group", sub_A630, &qword_A2878, sub_A6CC, &unk_9EAB0);

  return __cxa_atexit(sub_3F2F8, &unk_9EAE0, &dword_0);
}

uint64_t sub_AB74(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDImageBinary);
  [objc_msgSend(a2 "documentState")];
  [objc_msgSend(objc_msgSend(a2 "documentState")];

  return 1;
}

id sub_ABE0(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "documentState")];

  return [v3 readDataAttributesFromReader:a1];
}

uint64_t sub_ADA8()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mSize");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  sub_37DE8(qword_9EB20, Offset);
  __cxa_atexit(j_nullsub_2, qword_9EB20, &dword_0);
  sub_3EFAC(qword_9EB30, 0, v3, v4, v5, v6, v7, v8, v16);
  __cxa_atexit(sub_3430, qword_9EB30, &dword_0);
  sub_3F3A8(&unk_9EB50, "data", sub_ABE0, 0, 0, qword_9EB30);
  __cxa_atexit(sub_3F2F8, &unk_9EB50, &dword_0);
  sub_37AEC(qword_9EB90, &unk_9EB50);
  __cxa_atexit(j_nullsub_2_5, qword_9EB90, &dword_0);
  sub_3F198(&unk_9EBA8, "size", v9, v10, v11, v12, v13, v14, qword_9EB20);
  __cxa_atexit(sub_3F0F0, &unk_9EBA8, &dword_0);
  sub_3F3A8(&unk_9EBD8, "image-binary", sub_AB74, 0, 0, &unk_9EBA8);

  return __cxa_atexit(sub_3F2F8, &unk_9EBD8, &dword_0);
}

uint64_t sub_AF84(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDLine);
  [objc_msgSend(a2 "documentState")];

  return sub_8A64(a1, a2);
}

uint64_t sub_AFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9EC18, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_9EC18, &dword_0);
  sub_3F5AC(&unk_9EC48, "line", &unk_9EA20, sub_AF84, sub_A348, &unk_9EC18);

  return __cxa_atexit(sub_40BC, &unk_9EC48, &dword_0);
}

uint64_t sub_B40C(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDMedia);
  [objc_msgSend(a2 "documentState")];

  return sub_8A64(a1, a2);
}

uint64_t sub_B574()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mOriginalImageBinary");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9EC90, &unk_9EBD8, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9EC90, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mFilteredImage");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37CD4(&unk_9ECB8, v5, 1);
  __cxa_atexit(j_nullsub_2_3, &unk_9ECB8, &dword_0);
  v6 = objc_opt_class();
  v7 = class_getInstanceVariable(v6, "mFilteredImage");
  v8 = ivar_getOffset(v7);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9ECD0, &unk_A3E90, v8);
  __cxa_atexit(j_nullsub_2_2, &unk_9ECD0, &dword_0);
  v9 = objc_opt_class();
  v10 = class_getInstanceVariable(v9, "mCropGeometry");
  v11 = ivar_getOffset(v10);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9ECF8, &unk_9D810, v11);
  __cxa_atexit(j_nullsub_2_2, &unk_9ECF8, &dword_0);
  v12 = objc_opt_class();
  v13 = class_getInstanceVariable(v12, "mMaskingShapePath");
  v14 = ivar_getOffset(v13);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9ED20, &unk_9D8B0, v14);
  __cxa_atexit(j_nullsub_2_2, &unk_9ED20, &dword_0);
  v15 = objc_opt_class();
  v16 = class_getInstanceVariable(v15, "mMaskingShapePath");
  v17 = ivar_getOffset(v16);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9ED48, &unk_9F328, v17);
  __cxa_atexit(j_nullsub_2_2, &unk_9ED48, &dword_0);
  v18 = objc_opt_class();
  v19 = class_getInstanceVariable(v18, "mMaskingShapePath");
  v20 = ivar_getOffset(v19);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9ED70, &unk_A37D0, v20);
  __cxa_atexit(j_nullsub_2_2, &unk_9ED70, &dword_0);
  v21 = objc_opt_class();
  v22 = class_getInstanceVariable(v21, "mMaskingShapePath");
  v23 = ivar_getOffset(v22);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9ED98, &unk_A4038, v23);
  __cxa_atexit(j_nullsub_2_2, &unk_9ED98, &dword_0);
  v24 = objc_opt_class();
  v25 = class_getInstanceVariable(v24, "mMaskingShapePath");
  v26 = ivar_getOffset(v25);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9EDC0, &unk_A3C70, v26);
  __cxa_atexit(j_nullsub_2_2, &unk_9EDC0, &dword_0);
  v27 = objc_opt_class();
  v28 = class_getInstanceVariable(v27, "mMaskingShapePath");
  v29 = ivar_getOffset(v28);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9EDE8, &unk_A3F40, v29);
  __cxa_atexit(j_nullsub_2_2, &unk_9EDE8, &dword_0);
  v30 = objc_opt_class();
  v31 = class_getInstanceVariable(v30, "mAlphaMaskBezier");
  v32 = ivar_getOffset(v31);
  objc_opt_class();
  sub_37F30(qword_9EE10, v32);
  __cxa_atexit(j_nullsub_2_6, qword_9EE10, &dword_0);
  sub_3F198(&unk_9EE20, "filtered-image-ref", v33, v34, v35, v36, v37, v38, &unk_9ECB8);
  __cxa_atexit(sub_3F0F0, &unk_9EE20, &dword_0);
  sub_3F5AC(&unk_9EE50, "media", &unk_9EA20, sub_B40C, sub_A348, &unk_9EE20);

  return __cxa_atexit(sub_40BC, &unk_9EE50, &dword_0);
}

uint64_t sub_BB8C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDRFrame);
  [objc_msgSend(a2 "documentState")];
  [objc_msgSend(objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9EE98, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_9EE98, &dword_0);
  sub_3F3A8(&unk_9EEC8, "frame", sub_BB8C, 0, 0, &unk_9EE98);

  return __cxa_atexit(sub_3F2F8, &unk_9EEC8, &dword_0);
}

id sub_BD90(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDRGradient);
  v5 = [(GQDRGradient *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
    [objc_msgSend(objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_BE10(uint64_t a1, void *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return 1;
}

uint64_t sub_BE64(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  *([v3 peekObject] + 1) = v4;
  return 1;
}

uint64_t sub_C000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  dword_A4088 = 0;
  qword_A4090 = "linear";
  dword_A4098 = 1;
  qword_A40A0 = "radial";
  xmmword_A40A8 = xmmword_9D3E8;
  sub_3F198(&unk_9EF08, "gradient-stop", a3, a4, a5, a6, a7, a8, &unk_9F0F8);
  __cxa_atexit(sub_3F0F0, &unk_9EF08, &dword_0);
  sub_3F3A8(&unk_9EF38, "stops", sub_BE10, 0, sub_BE64, &unk_9EF08);
  __cxa_atexit(sub_3F2F8, &unk_9EF38, &dword_0);
  sub_37AEC(qword_9EF78, &unk_9EF38);
  __cxa_atexit(j_nullsub_2_5, qword_9EF78, &dword_0);
  v8 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v8, "mStart");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  sub_37E8C(qword_9EF90, Offset);
  __cxa_atexit(j_nullsub_2_0, qword_9EF90, &dword_0);
  v11 = objc_opt_class();
  v12 = class_getInstanceVariable(v11, "mEnd");
  v13 = ivar_getOffset(v12);
  objc_opt_class();
  sub_37E8C(qword_9EFA0, v13);
  __cxa_atexit(j_nullsub_2_0, qword_9EFA0, &dword_0);
  sub_3F198(&unk_9EFB0, "stops", v14, v15, v16, v17, v18, v19, qword_9EF78);
  __cxa_atexit(sub_3F0F0, &unk_9EFB0, &dword_0);
  sub_3F3A8(&unk_9EFE0, "gradient", sub_BD90, 0, 0, &unk_9EFB0);

  return __cxa_atexit(sub_3F2F8, &unk_9EFE0, &dword_0);
}

id sub_C2B0(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDRGradientStop);
  v5 = [(GQDRGradientStop *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
    [objc_msgSend(objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_C330(xmlTextReader *a1, void *a2)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 3;
  }

  v4 = AttributeNs;
  v5 = [objc_msgSend(objc_msgSend(a2 "documentState")];
  if (v5)
  {
    [objc_msgSend(a2 "documentState")];
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  free(v4);
  return v6;
}

uint64_t sub_C478()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mColor");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9F020, &unk_9E7A0, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9F020, &dword_0);
  sub_3F198(&unk_9F048, "color", v3, v4, v5, v6, v7, v8, &unk_9F020);
  __cxa_atexit(sub_3F0F0, &unk_9F048, &dword_0);
  sub_3F3A8(&unk_9F078, "gradient-stop", sub_C2B0, 0, 0, &unk_9F048);
  __cxa_atexit(sub_3F2F8, &unk_9F078, &dword_0);
  sub_3F3A8(&unk_9F0B8, "gradient-stop-ref", sub_C330, 0, 0, &unk_9F048);
  __cxa_atexit(sub_3F2F8, &unk_9F0B8, &dword_0);
  sub_37B10(qword_9F0F8, &unk_9F078, sub_3C2C4);
  __cxa_atexit(j_nullsub_2_5, qword_9F0F8, &dword_0);
  sub_37B10(qword_9F110, &unk_9F0B8, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_9F110, &dword_0);
}

id sub_CC7C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDRStroke);
  v5 = [(GQDRStroke *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
    [objc_msgSend(objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_CEE4()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mPattern");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9F128, &unk_9F230, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9F128, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mPattern");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_9F150, v5);
  __cxa_atexit(j_nullsub_2_3, &unk_9F150, &dword_0);
  v6 = objc_opt_class();
  v7 = class_getInstanceVariable(v6, "mColor");
  v8 = ivar_getOffset(v7);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9F168, &unk_9E7A0, v8);
  __cxa_atexit(j_nullsub_2_2, &unk_9F168, &dword_0);
  sub_3F198(&unk_9F190, "pattern", v9, v10, v11, v12, v13, v14, &unk_9F128);
  __cxa_atexit(sub_3F0F0, &unk_9F190, &dword_0);
  sub_3F3A8(&unk_9F1C0, "stroke", sub_CC7C, 0, 0, &unk_9F190);

  return __cxa_atexit(sub_3F2F8, &unk_9F1C0, &dword_0);
}

id sub_D120(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDRStrokePattern);
  v5 = [(GQDRStrokePattern *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    v6 = [a2 documentState];
    [v6 pushObject:v4];
    [objc_msgSend(v6 "root")];
  }

  return v5;
}

uint64_t sub_D26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9F200, "pattern", a3, a4, a5, a6, a7, a8, &qword_A20E8);
  __cxa_atexit(sub_3F0F0, &unk_9F200, &dword_0);
  sub_3F3A8(&unk_9F230, "stroke-pattern", sub_D120, 0, 0, &unk_9F200);

  return __cxa_atexit(sub_3F2F8, &unk_9F230, &dword_0);
}

id sub_D33C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDScalarPath);
  v5 = [(GQDScalarPath *)v4 readAttributesFromReader:a1 processor:a2];
  if (v5 == 1)
  {
    [objc_msgSend(objc_msgSend(a2 "documentState")];
    [objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_D3C0(xmlTextReader *a1, void *a2)
{
  if (sub_429BC(a1, [objc_msgSend(a2 "documentState")] + 4))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_D7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9F270, 0, a3, a4, a5, a6, a7, a8, v15);
  __cxa_atexit(sub_3F0F0, &unk_9F270, &dword_0);
  sub_3F3A8(&unk_9F2A0, "size", sub_D3C0, 0, 0, &unk_9F270);
  __cxa_atexit(sub_3F2F8, &unk_9F2A0, &dword_0);
  sub_37AEC(qword_9F2E0, &unk_9F2A0);
  __cxa_atexit(j_nullsub_2_5, qword_9F2E0, &dword_0);
  sub_3F198(&unk_9F2F8, "size", v8, v9, v10, v11, v12, v13, qword_9F2E0);
  __cxa_atexit(sub_3F0F0, &unk_9F2F8, &dword_0);
  sub_3F3A8(&unk_9F328, "scalar-path", sub_D33C, 0, 0, &unk_9F2F8);

  return __cxa_atexit(sub_3F2F8, &unk_9F328, &dword_0);
}

uint64_t sub_D934(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDShape);
  [objc_msgSend(a2 "documentState")];

  return sub_8A64(a1, a2);
}

__n128 sub_DC04(uint64_t a1, uint64_t a2, __n128 result)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 > 2)
  {
    if (v6 == 3)
    {
      v9 = (a1 + 16);
      v10 = *(a1 + 16);
      v11 = (v7 + 32);
      v12 = *(v7 + 16);
      v13 = vsubq_f64(*v7, v10);
      v14 = vsubq_f64(v12, *v7);
      x = *(v7 + 32);
      v15 = vsubq_f64(v14, v13);
      v16 = vsubq_f64(vsubq_f64(x, v12), v14);
      v17 = vzip2q_s64(v15, v16);
      v18 = vmulq_f64(v17, v17);
      v19 = vzip1q_s64(v15, v16);
      v20 = vmlaq_f64(v18, v19, v19);
      if (v20.f64[0] <= v20.f64[1])
      {
        v20.f64[0] = v20.f64[1];
      }

      v21 = v20.f64[0] * 9.0 * 0.0625;
      if (v21 > 0.36)
      {
        v22 = vsubq_f64(v16, v15);
        __asm
        {
          FMOV            V5.2D, #3.0
          FMOV            V6.2D, #6.0
        }

        v29 = vmulq_f64(v22, _Q6);
        v30 = vmlaq_f64(v22, _Q5, vaddq_f64(v13, v15));
        v31 = vmulq_f64(vaddq_f64(v15, v22), _Q6);
        v32 = 1;
        __asm
        {
          FMOV            V2.2D, #0.125
          FMOV            V3.2D, #0.25
          FMOV            V4.2D, #0.5
        }

        do
        {
          v36 = v32;
          v29 = vmulq_f64(v29, _Q2);
          v31 = vsubq_f64(vmulq_f64(v31, _Q3), v29);
          v30 = vsubq_f64(vmulq_f64(v30, _Q4), vmulq_f64(v31, _Q4));
          v32 *= 2;
          v21 = v21 * 0.0625;
        }

        while (v21 > 0.36 && v32 <= 0x10000);
        if (v32 >= 2)
        {
          v37 = (2 * v36) | 1;
          do
          {
            v41 = v29;
            v42 = vaddq_f64(v30, v10);
            v39 = vaddq_f64(v29, v31);
            v40 = vaddq_f64(v31, v30);
            CGPathAddLineToPoint(v4, v5, v42.f64[0], v42.f64[1]);
            v31 = v39;
            v30 = v40;
            v29 = v41;
            v10 = v42;
            --v37;
          }

          while (v37 > 2);
        }
      }

      CGPathAddLineToPoint(v4, v5, x.f64[0], x.f64[1]);
      result = *v11;
      *v9 = *v11;
    }

    else if (v6 == 4)
    {
      v8 = *a1;

      CGPathCloseSubpath(v8);
    }
  }

  else
  {
    if (v6)
    {
      if (v6 != 1)
      {
        return result;
      }

      CGPathAddLineToPoint(*a1, v5, *v7, *(v7 + 8));
    }

    else
    {
      CGPathMoveToPoint(*a1, v5, *v7, *(v7 + 8));
    }

    result = *v7;
    *(a1 + 16) = *v7;
  }

  return result;
}

uint64_t sub_DE04()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mPath");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9F368, &unk_9D8B0, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9F368, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mLayoutFrame");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9F390, &unk_A1668, v5);
  __cxa_atexit(j_nullsub_2_2, &unk_9F390, &dword_0);
  v6 = objc_opt_class();
  v7 = class_getInstanceVariable(v6, "mPath");
  v8 = ivar_getOffset(v7);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9F3B8, &unk_9F328, v8);
  __cxa_atexit(j_nullsub_2_2, &unk_9F3B8, &dword_0);
  v9 = objc_opt_class();
  v10 = class_getInstanceVariable(v9, "mPath");
  v11 = ivar_getOffset(v10);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9F3E0, &unk_A37D0, v11);
  __cxa_atexit(j_nullsub_2_2, &unk_9F3E0, &dword_0);
  v12 = objc_opt_class();
  v13 = class_getInstanceVariable(v12, "mPath");
  v14 = ivar_getOffset(v13);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9F408, &unk_A4038, v14);
  __cxa_atexit(j_nullsub_2_2, &unk_9F408, &dword_0);
  v15 = objc_opt_class();
  v16 = class_getInstanceVariable(v15, "mPath");
  v17 = ivar_getOffset(v16);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9F430, &unk_A3C70, v17);
  __cxa_atexit(j_nullsub_2_2, &unk_9F430, &dword_0);
  v18 = objc_opt_class();
  v19 = class_getInstanceVariable(v18, "mPath");
  v20 = ivar_getOffset(v19);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9F458, &unk_A3F40, v20);
  __cxa_atexit(j_nullsub_2_2, &unk_9F458, &dword_0);
  sub_3F198(&unk_9F480, "text", v21, v22, v23, v24, v25, v26, &unk_9F390);
  __cxa_atexit(sub_3F0F0, &unk_9F480, &dword_0);
  sub_3F5AC(&unk_9F4B0, "drawable-shape", &unk_9EA20, sub_D934, sub_A348, &unk_9F480);

  return __cxa_atexit(sub_40BC, &unk_9F4B0, &dword_0);
}

id sub_E234(void *a1)
{
  v2 = [a1 generator];
  if (!v2)
  {
    return &dword_0 + 1;
  }

  v3 = v2;
  v4 = [objc_msgSend(a1 "documentState")];
  v5 = [a1 documentState];

  return [v3 handlePageSetup:v4 state:v5];
}

uint64_t sub_E2B0(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDSLPageMargins);
  sub_4290C(a1, qword_A35E8, off_9CD60);
  v6 = v5;
  sub_4290C(a1, qword_A35E8, off_9CD68);
  v8 = v7;
  sub_4290C(a1, qword_A35E8, off_9CD70);
  v10 = v9;
  sub_4290C(a1, qword_A35E8, off_9CD78);
  v12 = v11;
  sub_4290C(a1, qword_A35E8, "header");
  v14 = v13;
  sub_4290C(a1, qword_A35E8, "footer");
  v16 = v15;
  *&v15 = v6;
  [(GQDSLPageMargins *)v4 setTop:v15];
  *&v17 = v10;
  [(GQDSLPageMargins *)v4 setBottom:v17];
  *&v18 = v8;
  [(GQDSLPageMargins *)v4 setLeft:v18];
  *&v19 = v12;
  [(GQDSLPageMargins *)v4 setRight:v19];
  *&v20 = v14;
  [(GQDSLPageMargins *)v4 setHeader:v20];
  *&v21 = v16;
  [(GQDSLPageMargins *)v4 setFooter:v21];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_E424(void *a1)
{
  v1 = [a1 documentState];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 popRetainedObject];
    [objc_msgSend(v2 "root")];
  }

  return 1;
}

id sub_E46C(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 "documentState")];
  v5 = [v4 readAttributesFromReader:a1];
  [a2 setThumbnailSize:{v4[10], v4[11]}];
  return v5;
}

uint64_t sub_E4D0(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 root];
  v5[112] = [v4 BOOLValue];

  return 1;
}

uint64_t sub_E540(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 root];
  v5[128] = [v4 BOOLValue];

  return 1;
}

uint64_t sub_E5B0(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 root];
  v5[129] = [v4 BOOLValue];

  return 1;
}

uint64_t sub_E620(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 root];
  v5[130] = [v4 BOOLValue];

  return 1;
}

__CFString *sub_EFA4(__CFString *a1)
{
  v1 = a1;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [(__CFString *)v1 mutableCopy];
      CFStringNormalize(v1, kCFStringNormalizationFormD);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_F184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9F4F8, 0, a3, a4, a5, a6, a7, a8, v21);
  __cxa_atexit(sub_3F0F0, &unk_9F4F8, &dword_0);
  sub_3F3A8(&unk_9F528, "pageMargins", sub_E2B0, 0, sub_E424, &unk_9F4F8);
  __cxa_atexit(sub_3F2F8, &unk_9F528, &dword_0);
  sub_37AEC(qword_9F568, &unk_9F528);
  __cxa_atexit(j_nullsub_2_5, qword_9F568, &dword_0);
  sub_3EFAC(qword_9F580, "page-margins", v8, v9, v10, v11, v12, v13, qword_9F568);
  __cxa_atexit(sub_3430, qword_9F580, &dword_0);
  sub_3F3A8(&unk_9F5A0, "slprint-info", sub_E46C, 0, sub_E234, qword_9F580);
  __cxa_atexit(sub_3F2F8, &unk_9F5A0, &dword_0);
  sub_37AEC(qword_9F5E0, &unk_9F5A0);
  __cxa_atexit(j_nullsub_2_5, qword_9F5E0, &dword_0);
  sub_3C544(qword_9F5F8, sub_E4D0);
  __cxa_atexit(j_nullsub_2_4, qword_9F5F8, &dword_0);
  sub_37B10(qword_9F608, &unk_A2CC8, sub_E4D0);
  __cxa_atexit(j_nullsub_2_5, qword_9F608, &dword_0);
  sub_37B10(qword_9F620, &unk_A2CC8, sub_E540);
  __cxa_atexit(j_nullsub_2_5, qword_9F620, &dword_0);
  sub_37B10(qword_9F638, &unk_A2CC8, sub_E5B0);
  __cxa_atexit(j_nullsub_2_5, qword_9F638, &dword_0);
  sub_37B10(qword_9F650, &unk_A2CC8, sub_E620);
  __cxa_atexit(j_nullsub_2_5, qword_9F650, &dword_0);
  sub_3EFAC(qword_9F668, "kSFWPHasBodyProperty", v14, v15, v16, v17, v18, v19, qword_9F608);
  __cxa_atexit(sub_3430, qword_9F668, &dword_0);
  sub_3F3A8(&unk_9F688, "publication-info", 0, &qword_A20E8, 0, qword_9F668);
  __cxa_atexit(sub_3F2F8, &unk_9F688, &dword_0);
  sub_37AEC(qword_9F6C8, &unk_9F688);

  return __cxa_atexit(j_nullsub_2_5, qword_9F6C8, &dword_0);
}

_WORD *sub_F51C(__int16 a1, int a2)
{
  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1082040558D527FuLL);
  if (result)
  {
    result[4] = result[4] & 0x4000 | a1 & 0x3FFF | 0x8000;
    *result = a2;
  }

  return result;
}

float *sub_F578(__int16 a1, float a2)
{
  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1082040558D527FuLL);
  if (result)
  {
    *(result + 4) = a1 | 0xC000;
    *result = a2;
  }

  return result;
}

_WORD *sub_F5D0(__int16 a1, double a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  v4 = sub_F62C(a1, v3);
  CFRelease(v3);
  return v4;
}

_WORD *sub_F62C(__int16 a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1082040558D527FuLL);
  v5 = v4;
  if (v4)
  {
    v6 = v4[4] & 0xC000 | a1 & 0x3FFF;
    v4[4] = v4[4] & 0xC000 | a1 & 0x3FFF;
    if (a2 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6 = v5[4], (isKindOfClass & 1) != 0))
    {
      v5[4] = v6 | 0x4000;
      *v5 = a2;
    }

    else
    {
      *v5 = a2;
      if (!(v6 >> 14))
      {
        v8 = a2;
      }
    }
  }

  return v5;
}

void sub_F6D4(id *a1)
{
  if ((a1[1] & 0xC000) == 0)
  {
  }

  free(a1);
}

_WORD *sub_F724(const __CFArray *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1020040FFEA222EuLL);
  if (v2)
  {
    Count = CFArrayGetCount(a1);
    v2[4] = Count;
    v4 = Count;
    v5 = malloc_type_malloc(16 * Count, 0x1082040558D527FuLL);
    *v2 = v5;
    if (!v5)
    {
      free(v2);
      return 0;
    }

    if (v4)
    {
      v6 = 0;
      v7 = 8;
      do
      {
        *(*v2 + v7 - 8) = *CFArrayGetValueAtIndex(a1, v6);
        v8 = (*v2 + v7);
        if ((*v8 & 0xC000) == 0)
        {
          v9 = *(v8 - 1);
        }

        ++v6;
        v7 += 16;
      }

      while (v4 != v6);
      v5 = *v2;
    }

    if (heapsort(v5, v4, 0x10uLL, sub_F838))
    {
      sub_F850(v2);
      return 0;
    }
  }

  return v2;
}

void sub_F850(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    v3 = 16 * *(a1 + 8);
    do
    {
      v4 = *a1 + v2;
      if ((*(v4 + 8) & 0xC000) == 0)
      {
      }

      v2 += 16;
    }

    while (v3 != v2);
  }

  free(*a1);

  free(a1);
}

unsigned __int16 *sub_F8CC(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1020040FFEA222EuLL);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 8);
    v2[4] = v4;
    v5 = malloc_type_malloc(16 * v4, 0x1082040558D527FuLL);
    *v3 = v5;
    if (v5)
    {
      memcpy(v5, *a1, 16 * v3[4]);
      v6 = v3[4];
      if (v3[4])
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *v3 + v7;
          if ((*(v9 + 8) & 0xC000) == 0)
          {
            v10 = *v9;
            v6 = v3[4];
          }

          ++v8;
          v7 += 16;
        }

        while (v8 < v6);
      }
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

BOOL sub_F9A0(uint64_t a1, unsigned __int16 a2, unsigned __int8 *a3, char *a4)
{
  v12[0] = 0;
  v12[1] = a2;
  v6 = bsearch(v12, *a1, *(a1 + 8), 0x10uLL, sub_F838);
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    if (v6[1] < 0)
    {
      if (*(v6 + 4) < 0xC000u)
      {
        v10 = *v6 == 0;
      }

      else
      {
        v10 = *v6 == 0.0;
      }

      v9 = !v10;
    }

    else
    {
      if (!*v6)
      {
        v8 = 1;
        goto LABEL_16;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
        goto LABEL_16;
      }

      v9 = [*v7 BOOLValue];
    }

    v8 = 0;
    *a3 = v9;
  }

LABEL_16:
  if (a4)
  {
    *a4 = v8;
  }

  return v7 != 0;
}

BOOL sub_FA94(uint64_t a1, unsigned __int16 a2, float *a3, char *a4)
{
  v11[0] = 0;
  v11[1] = a2;
  v6 = bsearch(v11, *a1, *(a1 + 8), 0x10uLL, sub_F838);
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    if (v6[1] < 0)
    {
      if (*(v6 + 4) < 0xC000u)
      {
        v9 = *v6;
      }

      else
      {
        LODWORD(v9) = llroundf(*v6);
      }
    }

    else
    {
      if (!*v6)
      {
        v8 = 1;
        goto LABEL_13;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
        goto LABEL_13;
      }

      LODWORD(v9) = [*v7 intValue];
    }

    v8 = 0;
    *a3 = v9;
  }

LABEL_13:
  if (a4)
  {
    *a4 = v8;
  }

  return v7 != 0;
}

BOOL sub_FB80(uint64_t a1, unsigned __int16 a2, float *a3, char *a4)
{
  v12[0] = 0;
  v12[1] = a2;
  v6 = bsearch(v12, *a1, *(a1 + 8), 0x10uLL, sub_F838);
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    v9 = *(v6 + 4);
    if (v9 < 0)
    {
      if ((v9 & 0xC000) == 0x8000)
      {
        v10 = *v6;
      }

      else
      {
        v10 = *v6;
      }
    }

    else
    {
      if (!*v6)
      {
        v8 = 1;
        goto LABEL_13;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
        goto LABEL_13;
      }

      [*v7 floatValue];
    }

    v8 = 0;
    *a3 = v10;
  }

LABEL_13:
  if (a4)
  {
    *a4 = v8;
  }

  return v7 != 0;
}

BOOL sub_FC70(uint64_t a1, unsigned __int16 a2, uint64_t a3, _BYTE *a4)
{
  number = 0;
  valuePtr = a3;
  v8 = 0;
  v6 = sub_FD08(a1, a2, &number, &v8);
  result = 0;
  if (!v6)
  {
LABEL_7:
    if (!a4)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v8)
  {
    result = 1;
    if (!a4)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (a3)
  {
    result = CFNumberGetValue(number, kCFNumberDoubleType, &valuePtr) != 0;
    goto LABEL_7;
  }

  result = 1;
  v8 = 1;
  if (!a4)
  {
    return result;
  }

LABEL_8:
  *a4 = v8;
  return result;
}

__int16 *sub_FD08(uint64_t a1, unsigned __int16 a2, void *a3, char *a4)
{
  v8[0] = 0;
  v8[1] = a2;
  result = bsearch(v8, *a1, *(a1 + 8), 0x10uLL, sub_F838);
  if (result)
  {
    if (result[4] < 0)
    {
      v7 = 0;
      result = 0;
    }

    else
    {
      if (a3)
      {
        v7 = 0;
        *a3 = *result;
      }

      else
      {
        v7 = 1;
      }

      result = (&dword_0 + 1);
    }
  }

  else
  {
    v7 = 0;
  }

  if (a4)
  {
    *a4 = v7;
  }

  return result;
}

id *sub_FDA4(uint64_t a1, unsigned __int16 a2)
{
  v8[0] = 0;
  v8[1] = a2;
  v2 = bsearch(v8, *a1, *(a1 + 8), 0x10uLL, sub_F838);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_malloc(0x10uLL, 0x1082040558D527FuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = *v3;
    if ((v4[1] & 0xC000) == 0)
    {
      v6 = *v4;
    }
  }

  return v5;
}

id sub_12824(void *a1, void *a2)
{
  v4 = [a1 style];
  v5 = [a2 styleWithIdentifier:{objc_msgSend(a1, "parentIdentifier")}];

  return [v4 setParent:v5];
}

uint64_t sub_12A64()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mParent");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_9F6E0, Offset);

  return __cxa_atexit(j_nullsub_2_3, &unk_9F6E0, &dword_0);
}

uint64_t sub_12B04(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTBooleanCell);
  -[GQDTBooleanCell setProcessorBundle:](v4, "setProcessorBundle:", [a2 bundle]);
  [(GQDTCell *)v4 readAttributesForBaseCell:a1 processor:a2];
  [(GQDTNumberCell *)v4 readAttributesForNumberCell:a1];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_12B88(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTBooleanCell);
  -[GQDTBooleanCell setProcessorBundle:](v4, "setProcessorBundle:", [a2 bundle]);
  [(GQDTCell *)v4 readAttributesForBaseTabularCell:a1 processor:a2];
  [(GQDTNumberCell *)v4 readAttributesForNCell:a1];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_12C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9F6F8, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_9F6F8, &dword_0);
  sub_3F5AC(&unk_9F728, "BOOL-cell", &unk_9F830, sub_12B04, sub_1B9DC, &unk_9F6F8);
  __cxa_atexit(sub_40BC, &unk_9F728, &dword_0);
  sub_37AEC(qword_9F770, &unk_9F728);
  __cxa_atexit(j_nullsub_2_5, qword_9F770, &dword_0);
  sub_3F5AC(&unk_9F788, "b-cell", &unk_9F8B8, sub_12B88, sub_1B9DC, &unk_9F6F8);
  __cxa_atexit(sub_40BC, &unk_9F788, &dword_0);
  sub_37AEC(qword_9F7D0, &unk_9F788);

  return __cxa_atexit(j_nullsub_2_5, qword_9F7D0, &dword_0);
}

uint64_t sub_12E14(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTCell);
  [(GQDTCell *)v4 readAttributesForBaseCell:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_12E74(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTCell);
  [(GQDTCell *)v4 readAttributesForBaseTabularCell:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_12ED4(xmlTextReader *a1, void *a2)
{
  v8 = 0;
  v3 = sub_424A8(a1, qword_A35E8, "ct", &v8);
  v4 = [objc_msgSend(a2 "documentState")];
  v5 = v4;
  if (v3)
  {
    v6 = v8 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [v4 skipCells:v8 - 1];
  }

  [v5 incrementCellPosition];
  return 1;
}

uint64_t sub_1333C()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mStyle");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_9F7E8, Offset);
  __cxa_atexit(j_nullsub_2_3, &unk_9F7E8, &dword_0);
  sub_3F198(&unk_9F800, "cell-style-ref", v3, v4, v5, v6, v7, v8, &unk_9F7E8);
  __cxa_atexit(sub_3F0F0, &unk_9F800, &dword_0);
  sub_3F3A8(&unk_9F830, "generic-cell", sub_12E14, 0, sub_1B9DC, &unk_9F800);
  __cxa_atexit(sub_3F2F8, &unk_9F830, &dword_0);
  sub_37AEC(qword_9F870, &unk_9F830);
  __cxa_atexit(j_nullsub_2_5, qword_9F870, &dword_0);
  sub_3F198(&unk_9F888, 0, v9, v10, v11, v12, v13, v14, v16);
  __cxa_atexit(sub_3F0F0, &unk_9F888, &dword_0);
  sub_3F3A8(&unk_9F8B8, "g", sub_12E74, 0, sub_1B9DC, &unk_9F888);
  __cxa_atexit(sub_3F2F8, &unk_9F8B8, &dword_0);
  sub_37AEC(qword_9F8F8, &unk_9F8B8);
  __cxa_atexit(j_nullsub_2_5, qword_9F8F8, &dword_0);
  sub_37B7C(qword_9F910, sub_12ED4, 0);

  return __cxa_atexit(j_nullsub_2_1, qword_9F910, &dword_0);
}

uint64_t sub_13594(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTCheckboxCell);
  [(GQDTCell *)v4 readAttributesForBaseCell:a1 processor:a2];
  [(GQDTNumberCell *)v4 readAttributesForNumberCell:a1];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_13600(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTCheckboxCell);
  [(GQDTCell *)v4 readAttributesForBaseTabularCell:a1 processor:a2];
  [(GQDTNumberCell *)v4 readAttributesForNCell:a1];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_13688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9F928, 0, a3, a4, a5, a6, a7, a8, v15);
  __cxa_atexit(sub_3F0F0, &unk_9F928, &dword_0);
  sub_3F5AC(&unk_9F958, "checkbox-cell", &unk_9F830, sub_13594, sub_1B9DC, &unk_9F928);
  __cxa_atexit(sub_40BC, &unk_9F958, &dword_0);
  sub_37AEC(qword_9F9A0, &unk_9F958);
  __cxa_atexit(j_nullsub_2_5, qword_9F9A0, &dword_0);
  sub_3F198(&unk_9F9B8, 0, v8, v9, v10, v11, v12, v13, v16);
  __cxa_atexit(sub_3F0F0, &unk_9F9B8, &dword_0);
  sub_3F5AC(&unk_9F9E8, "checkbox-cell", &unk_9F8B8, sub_13600, sub_1B9DC, &unk_9F9B8);
  __cxa_atexit(sub_40BC, &unk_9F9E8, &dword_0);
  sub_37AEC(qword_9FA30, &unk_9F9E8);

  return __cxa_atexit(j_nullsub_2_5, qword_9FA30, &dword_0);
}

uint64_t sub_13830(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTDateCell);
  [(GQDTCell *)v4 readAttributesForBaseCell:a1 processor:a2];
  [(GQDTDateCell *)v4 readAttributesForDateCell:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_138A0(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTDCell);
  [(GQDTCell *)v4 readAttributesForBaseTabularCell:a1 processor:a2];
  [(GQDTDateCell *)v4 readAttributesForDateCell:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

CFTimeZoneRef sub_13AF8()
{
  result = qword_A40E0;
  if (!qword_A40E0)
  {
    result = CFTimeZoneCreateWithTimeIntervalFromGMT(kCFAllocatorDefault, 0.0);
    qword_A40E0 = result;
  }

  return result;
}

uint64_t sub_13CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9FA48, 0, a3, a4, a5, a6, a7, a8, v21);
  __cxa_atexit(sub_3F0F0, &unk_9FA48, &dword_0);
  sub_3F5AC(&unk_9FA78, "date-cell", &unk_9F830, sub_13830, sub_1B9DC, &unk_9FA48);
  __cxa_atexit(sub_40BC, &unk_9FA78, &dword_0);
  sub_37AEC(qword_9FAC0, &unk_9FA78);
  __cxa_atexit(j_nullsub_2_5, qword_9FAC0, &dword_0);
  v8 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v8, "mComputedFormat");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9FAD8, &unk_A3DA0, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9FAD8, &dword_0);
  v11 = objc_opt_class();
  v12 = class_getInstanceVariable(v11, "mComputedFormat");
  v13 = ivar_getOffset(v12);
  objc_opt_class();
  objc_opt_class();
  sub_37CD4(&unk_9FB00, v13, 1);
  __cxa_atexit(j_nullsub_2_3, &unk_9FB00, &dword_0);
  sub_3F198(&unk_9FB18, "cf", v14, v15, v16, v17, v18, v19, &unk_9FAD8);
  __cxa_atexit(sub_3F0F0, &unk_9FB18, &dword_0);
  sub_3F5AC(&unk_9FB48, "d-cell", &unk_9F830, sub_138A0, sub_1B9DC, &unk_9FB18);
  __cxa_atexit(sub_40BC, &unk_9FB48, &dword_0);
  sub_37AEC(qword_9FB90, &unk_9FB48);

  return __cxa_atexit(j_nullsub_2_5, qword_9FB90, &dword_0);
}

id sub_13F7C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTexturedImageFill);
  v5 = [(GQDTexturedImageFill *)v4 readAttributesFromReader:a1 processor:a2];
  if (v5 == 1)
  {
    [objc_msgSend(objc_msgSend(a2 "documentState")];
    [objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_14000(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 peekObject];
  v6 = [v5 imageBinary];
  v7 = [v6 relativePath];
  result = 1;
  if (v6 && v7)
  {
    v9 = [v6 resourceType];
    v16 = 0;
    if (v9)
    {
      if (v9 == 1)
      {
        v16 = 1;
        v10 = [objc_msgSend(a1 "documentState")];
        if (v10)
        {
          CFRelease(v10);
        }
      }

      v11 = 0;
    }

    else
    {
      v12 = objc_opt_new();
      if (CFStringHasPrefix(v7, @"theme-files/") && ![-[__CFString pathExtension](v7 "pathExtension")])
      {
        v13 = [(__CFString *)v7 pathComponents];
        v11 = 1;
        v7 = +[NSString pathWithComponents:](NSString, "pathWithComponents:", -[NSArray arrayByAddingObjectsFromArray:](+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", @"Shared"), "arrayByAddingObjectsFromArray:", [v13 subarrayWithRange:{1, objc_msgSend(v13, "count") - 1}]));
        v16 = 1;
      }

      else
      {
        v11 = 0;
      }
    }

    if (v16 == 1)
    {
      if ([v5 color])
      {
        [v5 invalidateFilteredImage];
      }

      else
      {
        v14 = [objc_msgSend(v4 "root")];
        if (v14)
        {
          v15 = v14;
          [v5 invalidateFilteredImage];
          [v5 setColor:v15];
        }
      }
    }

    if (v11)
    {
      CFRelease(v7);
    }

    return 1;
  }

  return result;
}

uint64_t sub_14324()
{
  qword_A40F0 = "natural";
  dword_A40F8 = 1;
  qword_A4100 = "stretch";
  dword_A4108 = 2;
  dword_A40E8 = 0;
  qword_A4110 = "tile";
  dword_A4118 = 3;
  qword_A4120 = "fill";
  dword_A4128 = 4;
  qword_A4130 = "fit";
  xmmword_A4138 = xmmword_9D3E8;
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mColor");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9FBA8, &unk_9E7A0, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9FBA8, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mFilteredImage");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9FBD0, &unk_A3E90, v5);
  __cxa_atexit(j_nullsub_2_2, &unk_9FBD0, &dword_0);
  v6 = objc_opt_class();
  v7 = class_getInstanceVariable(v6, "mFilteredImage");
  v8 = ivar_getOffset(v7);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_9FBF8, v8);
  __cxa_atexit(j_nullsub_2_3, &unk_9FBF8, &dword_0);
  sub_3F198(&unk_9FC10, "color", v9, v10, v11, v12, v13, v14, &unk_9FBA8);
  __cxa_atexit(sub_3F0F0, &unk_9FC10, &dword_0);
  sub_3F3A8(&unk_9FC40, "image-fill", sub_13F7C, 0, sub_14000, &unk_9FC10);

  return __cxa_atexit(sub_3F2F8, &unk_9FC40, &dword_0);
}

void sub_14B8C(id a1)
{
  v1 = objc_opt_new();
  [v1 formUnionWithCharacterSet:{+[NSCharacterSet URLHostAllowedCharacterSet](NSCharacterSet, "URLHostAllowedCharacterSet")}];
  [v1 formUnionWithCharacterSet:{+[NSCharacterSet URLPathAllowedCharacterSet](NSCharacterSet, "URLPathAllowedCharacterSet")}];
  [v1 formUnionWithCharacterSet:{+[NSCharacterSet URLUserAllowedCharacterSet](NSCharacterSet, "URLUserAllowedCharacterSet")}];
  [v1 formUnionWithCharacterSet:{+[NSCharacterSet URLPasswordAllowedCharacterSet](NSCharacterSet, "URLPasswordAllowedCharacterSet")}];
  [v1 formUnionWithCharacterSet:{+[NSCharacterSet URLQueryAllowedCharacterSet](NSCharacterSet, "URLQueryAllowedCharacterSet")}];
  [v1 formUnionWithCharacterSet:{+[NSCharacterSet URLFragmentAllowedCharacterSet](NSCharacterSet, "URLFragmentAllowedCharacterSet")}];
  qword_A4148 = v1;
}

uint64_t sub_159B4(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTFormulaCell);
  [(GQDTCell *)v4 readAttributesForBaseCell:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_15A14(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTFormulaCell);
  [(GQDTCell *)v4 readAttributesForBaseTabularCell:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_15A74(uint64_t a1, void *a2)
{
  v3 = [a2 documentState];
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
  [v3 pushObject:Mutable];
  CFRelease(Mutable);
  [objc_msgSend(v3 "tableState")];
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  return 1;
}

uint64_t sub_15B04(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4) >= 1)
    {
      v6 = [v3 peekObject];
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      [v6 setResultCell:ValueAtIndex];
      [ValueAtIndex setCellStyle:{objc_msgSend(v6, "cellStyle")}];
    }

    CFRelease(v5);
  }

  [objc_msgSend(v3 "tableState")];
  v8 = [v3 tableState];
  v9 = 1;
  [v8 setIsCountingCount:1];
  return v9;
}

uint64_t sub_15C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9FC80, "result-number-cell", a3, a4, a5, a6, a7, a8, &unk_9FE70);
  __cxa_atexit(sub_3F0F0, &unk_9FC80, &dword_0);
  sub_3F3A8(&unk_9FCB0, "result-cell", sub_15A74, &qword_A20E8, sub_15B04, &unk_9FC80);
  __cxa_atexit(sub_3F2F8, &unk_9FCB0, &dword_0);
  sub_37AEC(qword_9FCF0, &unk_9FCB0);
  __cxa_atexit(j_nullsub_2_5, qword_9FCF0, &dword_0);
  sub_3F198(&unk_9FD08, "result-cell", v8, v9, v10, v11, v12, v13, qword_9FCF0);
  __cxa_atexit(sub_3F0F0, &unk_9FD08, &dword_0);
  sub_3F5AC(&unk_9FD38, "formula-cell", &unk_9F830, sub_159B4, sub_1B9DC, &unk_9FD08);
  __cxa_atexit(sub_40BC, &unk_9FD38, &dword_0);
  sub_37AEC(qword_9FD80, &unk_9FD38);
  __cxa_atexit(j_nullsub_2_5, qword_9FD80, &dword_0);
  sub_3F5AC(&unk_9FD98, "formula-cell", &unk_9F8B8, sub_15A14, sub_1B9DC, &unk_9FD08);
  __cxa_atexit(sub_40BC, &unk_9FD98, &dword_0);
  sub_37AEC(qword_9FDE0, &unk_9FD98);

  return __cxa_atexit(j_nullsub_2_5, qword_9FDE0, &dword_0);
}

uint64_t sub_15F98(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTNumberCell);
  [(GQDTCell *)v4 readAttributesForBaseCell:a1 processor:a2];
  [(GQDTNumberCell *)v4 readAttributesForNumberCell:a1];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_16004(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTNumberCell);
  [(GQDTCell *)v4 readAttributesForBaseTabularCell:a1 processor:a2];
  [(GQDTNumberCell *)v4 readAttributesForNCell:a1];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_16228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_9FDF8, 0, a3, a4, a5, a6, a7, a8, v21);
  __cxa_atexit(sub_3F0F0, &unk_9FDF8, &dword_0);
  sub_3F5AC(&unk_9FE28, "number-cell", &unk_9F830, sub_15F98, sub_1B9DC, &unk_9FDF8);
  __cxa_atexit(sub_40BC, &unk_9FE28, &dword_0);
  sub_37AEC(qword_9FE70, &unk_9FE28);
  __cxa_atexit(j_nullsub_2_5, qword_9FE70, &dword_0);
  v8 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v8, "mComputedFormat");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9FE88, &unk_A3DA0, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9FE88, &dword_0);
  v11 = objc_opt_class();
  v12 = class_getInstanceVariable(v11, "mComputedFormat");
  v13 = ivar_getOffset(v12);
  objc_opt_class();
  objc_opt_class();
  sub_37CD4(&unk_9FEB0, v13, 1);
  __cxa_atexit(j_nullsub_2_3, &unk_9FEB0, &dword_0);
  sub_3F198(&unk_9FEC8, "cf", v14, v15, v16, v17, v18, v19, &unk_9FE88);
  __cxa_atexit(sub_3F0F0, &unk_9FEC8, &dword_0);
  sub_3F5AC(&unk_9FEF8, "n-cell", &unk_9F830, sub_16004, sub_1B9DC, &unk_9FEC8);
  __cxa_atexit(sub_40BC, &unk_9FEF8, &dword_0);
  sub_37AEC(qword_9FF40, &unk_9FEF8);

  return __cxa_atexit(j_nullsub_2_5, qword_9FF40, &dword_0);
}

uint64_t sub_16554(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDTNumberFormat);
  v5 = [(GQDTNumberFormat *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
    AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3D8, *(qword_A35E0 + 16));
    if (AttributeNs)
    {
      v7 = AttributeNs;
      v4->mUid = xmlStrdup(AttributeNs);
      if ([objc_msgSend(objc_msgSend(a2 "documentState")])
      {
        v5 = 1;
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

uint64_t sub_1661C(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = objc_alloc_init(NSMutableIndexSet);
  Count = CFArrayGetCount(v4);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      [v5 addIndex:{objc_msgSend(CFArrayGetValueAtIndex(v4, i), "unsignedIntValue")}];
    }
  }

  *([v3 peekObject] + 12) = v5;
  CFRelease(v4);
  return 1;
}

uint64_t sub_166DC(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  v6 = [GQDTNumberFormat alloc];
  BYTE6(v12) = v5[85];
  WORD2(v12) = *(v5 + 37);
  WORD1(v12) = *(v5 + 52);
  LOWORD(v12) = *(v5 + 38);
  BYTE5(v11) = v5[72];
  BYTE4(v11) = v5[82];
  WORD1(v11) = *(v5 + 40);
  LOWORD(v11) = v5[78];
  HIDWORD(v10) = *(v5 + 13);
  LOBYTE(v10) = v5[41];
  v7 = [GQDTNumberFormat initWithValueType:v6 formatString:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:" decimalPlaces:*(v5 + 11) currencyCode:*(v5 + 2) useAccountingStyle:*(v5 + 16) negativeStyle:*(v5 + 3) showThousandsSeparator:v5[40] fractionAccuracy:*(v5 + 12) suffixString:*(v5 + 8) scaleFactor:v10 base:*(v5 + 14) basePlaces:v11 baseUseMinusSign:*(v5 + 11) isCustom:*(v5 + 12) interstitialStrings:v12 interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];
  [v4 pushObject:v7];
  if (*(v5 + 1))
  {
    v8 = [objc_msgSend(a1 "documentState")];
    [v8 forgetAboutObject:v5 withXmlUid:*(v5 + 1)];
    [v8 addObject:v7 withOwnedXmlUid:xmlStrdup(*(v5 + 1))];
  }

  return 1;
}

uint64_t sub_18A10(int a1)
{
  if ((a1 - 1) > 5)
  {
    v1 = aSidcptf;
  }

  else
  {
    v1 = *(&off_80518 + (a1 - 1));
  }

  return *v1;
}

uint64_t sub_191A0()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mInterstitialStrings");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_9FF58, &unk_A2C28, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_9FF58, &dword_0);
  sub_37B10(qword_9FF80, &unk_A2C28, sub_1661C);
  __cxa_atexit(j_nullsub_2_5, qword_9FF80, &dword_0);
  sub_3F198(&unk_9FF98, "interstitial-strings", v3, v4, v5, v6, v7, v8, &unk_9FF58);
  __cxa_atexit(sub_3F0F0, &unk_9FF98, &dword_0);
  sub_3F3A8(&unk_9FFC8, "number-format", sub_16554, 0, sub_166DC, &unk_9FF98);

  return __cxa_atexit(sub_3F2F8, &unk_9FFC8, &dword_0);
}

uint64_t sub_1933C(xmlTextReader *a1, void *a2, int a3)
{
  v6 = [objc_msgSend(a2 "documentState")];
  if (a3)
  {
    v7 = "ho";
  }

  else
  {
    v7 = "horizontal-offset";
  }

  v8 = sub_42468(a1, qword_A35E8, v7, 0);
  if (v8 < 1)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      return 1;
    }

    if ([v6 isStreaming])
    {
      ValueAtIndex = [v6 lastCellRead];
      if (!ValueAtIndex)
      {
        return 1;
      }

      goto LABEL_6;
    }

    v13 = [objc_msgSend(a2 "documentState")];
    Count = CFArrayGetCount(v13);
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v13, Count - 1);
      if (ValueAtIndex)
      {
LABEL_6:
        [ValueAtIndex incrementColumnSpan];
        [v6 incrementCellPosition];
      }
    }
  }

  else
  {
    ValueAtIndex = [v6 currentOverlapCell];
    if (ValueAtIndex)
    {
      goto LABEL_6;
    }

    v10 = objc_alloc_init(GQDTOverlapCell);
    v11 = v10;
    if (a3)
    {
      [(GQDTCell *)v10 readAttributesForBaseTabularCell:a1 processor:a2];
    }

    else
    {
      [(GQDTCell *)v10 readAttributesForBaseCell:a1 processor:a2];
    }

    [v6 setCurrentOverlapCell:v11];
  }

  return 1;
}

uint64_t sub_194A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A0008, 0, a3, a4, a5, a6, a7, a8, v15);
  __cxa_atexit(sub_3F0F0, &unk_A0008, &dword_0);
  sub_3F3A8(&unk_A0038, "overlap-cell", sub_19460, 0, 0, &unk_A0008);
  __cxa_atexit(sub_3F2F8, &unk_A0038, &dword_0);
  sub_37AEC(qword_A0078, &unk_A0038);
  __cxa_atexit(j_nullsub_2_5, qword_A0078, &dword_0);
  sub_3F198(&unk_A0090, 0, v8, v9, v10, v11, v12, v13, v16);
  __cxa_atexit(sub_3F0F0, &unk_A0090, &dword_0);
  sub_3F3A8(&unk_A00C0, "o", sub_19480, 0, 0, &unk_A0090);
  __cxa_atexit(sub_3F2F8, &unk_A00C0, &dword_0);
  sub_37AEC(qword_A0100, &unk_A00C0);

  return __cxa_atexit(j_nullsub_2_5, qword_A0100, &dword_0);
}

uint64_t sub_19628(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTPopupCell);
  [(GQDTCell *)v4 readAttributesForBaseCell:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_19688(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTPopupCell);
  [(GQDTCell *)v4 readAttributesForBaseTabularCell:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_196E8(uint64_t a1, void *a2)
{
  v3 = [a2 documentState];
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  [v3 pushObject:Mutable];
  CFRelease(Mutable);
  [objc_msgSend(v3 "tableState")];
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  return 1;
}

uint64_t sub_19778(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  if (v4)
  {
    CFRelease(v4);
  }

  [objc_msgSend(v3 "tableState")];
  v5 = [v3 tableState];
  v6 = 1;
  [v5 setIsCountingCount:1];
  return v6;
}

uint64_t sub_19850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A0118, "text-cell", a3, a4, a5, a6, a7, a8, &unk_A0C38);
  __cxa_atexit(sub_3F0F0, &unk_A0118, &dword_0);
  sub_3F3A8(&unk_A0148, "menu-choices", sub_196E8, &qword_A20E8, sub_19778, &unk_A0118);
  __cxa_atexit(sub_3F2F8, &unk_A0148, &dword_0);
  sub_37AEC(qword_A0188, &unk_A0148);
  __cxa_atexit(j_nullsub_2_5, qword_A0188, &dword_0);
  v8 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v8, "mResultCell");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_A01A0, Offset);
  __cxa_atexit(j_nullsub_2_3, &unk_A01A0, &dword_0);
  sub_3F198(&unk_A01B8, "menu-choices", v11, v12, v13, v14, v15, v16, qword_A0188);
  __cxa_atexit(sub_3F0F0, &unk_A01B8, &dword_0);
  sub_3F5AC(&unk_A01E8, "popupmenu-cell", &unk_9F830, sub_19628, sub_1B9DC, &unk_A01B8);
  __cxa_atexit(sub_40BC, &unk_A01E8, &dword_0);
  sub_37AEC(qword_A0230, &unk_A01E8);
  __cxa_atexit(j_nullsub_2_5, qword_A0230, &dword_0);
  sub_3F5AC(&unk_A0248, "pm-cell", &unk_9F8B8, sub_19688, sub_1B9DC, &unk_A01B8);
  __cxa_atexit(sub_40BC, &unk_A0248, &dword_0);
  sub_37AEC(qword_A0290, &unk_A0248);

  return __cxa_atexit(j_nullsub_2_5, qword_A0290, &dword_0);
}

uint64_t sub_19B7C(xmlTextReader *a1, void *a2, unsigned int a3)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 3;
  }

  v6 = AttributeNs;
  v7 = [objc_msgSend(a2 "documentState")];
  [v7 alongValueForVectorUid:v6];
  v9 = v8;
  free(v6);
  if (a3 <= 3)
  {
    *&v7[**(&off_80548 + a3)] = v9;
  }

  return 1;
}

uint64_t sub_19C44(xmlTextReader *a1, void *a2)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 3;
  }

  v4 = AttributeNs;
  v5 = [a2 documentState];
  v6 = [v5 tableState];
  *(v6 + 14) = [objc_msgSend(v5 "root")];
  v7 = *(v6 + 14);
  free(v4);
  return 1;
}

uint64_t sub_19CE8(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  *([v3 tableState] + 13) = v4;
  return 1;
}

uint64_t sub_19D4C(void *a1, float a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (v2 < 1)
  {
    return 0;
  }

  else
  {
    v3 = 0;
    while (1)
    {
      if (v2 <= v3)
      {
        sub_19FF0();
      }

      if (vabds_f32(*(*a1 + 4 * v3), a2) < 1.0)
      {
        break;
      }

      if (v2 <= ++v3)
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_19DB0(void *a1)
{
  v1 = [a1 documentState];
  v2 = [v1 tableState];
  v3 = sub_19D4C(*(v2 + 9), *(v2 + 24));
  v4 = sub_19D4C(*(v2 + 9), *(v2 + 25)) - v3;
  v5 = sub_19D4C(*(v2 + 10), *(v2 + 22));
  v6 = [[GQDTSpiceCell alloc] initWithStyle:*(v2 + 14) rowIndex:v3 columnIndex:v5 rowSpan:v4 columnSpan:(sub_19D4C(*(v2 + 10) storage:*(v2 + 23)) - v5), *(v2 + 13)];

  *(v2 + 13) = 0;
  *(v2 + 14) = 0;
  CFArrayAppendValue([v1 peekObject], v6);

  return 1;
}

void sub_1A008(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1A064(exception, a1);
}

std::logic_error *sub_1A064(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_1A098()
{
  sub_37B7C(qword_A02A8, sub_19C24, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A02A8, &dword_0);
  sub_37B7C(qword_A02C0, sub_19C2C, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A02C0, &dword_0);
  sub_37B7C(qword_A02D8, sub_19C34, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A02D8, &dword_0);
  sub_37B7C(qword_A02F0, sub_19C3C, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A02F0, &dword_0);
  sub_37B7C(qword_A0308, sub_19C44, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A0308, &dword_0);
  sub_37B10(qword_A0320, &unk_A1760, sub_19CE8);
  __cxa_atexit(j_nullsub_2_5, qword_A0320, &dword_0);
  sub_3F198(&unk_A0338, "tableCellMinXSide-ref", v0, v1, v2, v3, v4, v5, qword_A02A8);
  __cxa_atexit(sub_3F0F0, &unk_A0338, &dword_0);
  sub_3F3A8(&unk_A0368, "spice-table-cell", 0, 0, sub_19DB0, &unk_A0338);
  __cxa_atexit(sub_3F2F8, &unk_A0368, &dword_0);
  sub_37AEC(qword_A03A8, &unk_A0368);

  return __cxa_atexit(j_nullsub_2_5, qword_A03A8, &dword_0);
}

uint64_t sub_1A34C(uint64_t a1, void *a2)
{
  v3 = [a2 documentState];
  v4 = objc_alloc_init(GQDTSpiceTableModel);
  [(GQDTSpiceTableModel *)v4 readAttributesFromReader:a1];
  [v3 pushObject:v4];
  [objc_msgSend(v3 "root")];

  v5 = objc_alloc_init(GQSSpiceTable);
  [v3 setTableState:v5];

  return 1;
}

uint64_t sub_1A3E0(uint64_t a1, void *a2)
{
  v2 = [a2 documentState];
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [v2 pushObject:Mutable];
  CFRelease(Mutable);
  [objc_msgSend(v2 "tableState")];
  return 1;
}

uint64_t sub_1A444(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  [objc_msgSend(v3 "peekObject")];
  return 1;
}

uint64_t sub_1A4A0(xmlTextReader *a1, void *a2)
{
  v3 = [objc_msgSend(a2 "documentState")];
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3D8, *(qword_A35E0 + 16));
  v7 = 0;
  sub_42888(a1, qword_A35E8, "tableVectorAlong", &v7);
  LODWORD(v5) = v7;
  [v3 setAlongValue:AttributeNs forOwnedVectorUid:v5];
  return 1;
}

id sub_1A568(void *a1)
{
  v1 = [a1 documentState];
  v2 = [v1 tableState];
  v3 = [v1 peekObject];

  return [v3 setRowHeightsFromState:v2];
}

uint64_t sub_1A5D8(xmlTextReader *a1, void *a2)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 3;
  }

  v4 = AttributeNs;
  v5 = [a2 documentState];
  [objc_msgSend(v5 topObjectOfClass:{objc_opt_class()), "setTableStyle:", objc_msgSend(objc_msgSend(v5, "root"), "objectWithXmlUid:", v4)}];
  free(v4);
  return 1;
}

id sub_1A678(void *a1)
{
  v1 = [a1 documentState];
  v2 = [v1 tableState];
  v3 = [v1 peekObject];

  return [v3 setColumnWidthsFromState:v2];
}

uint64_t sub_1A914()
{
  sub_37B7C(qword_A03C0, sub_1A5D8, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A03C0, &dword_0);
  sub_37B7C(qword_A03D8, sub_1A4A0, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A03D8, &dword_0);
  sub_3F198(&unk_A03F0, "table-cell", v0, v1, v2, v3, v4, v5, qword_A03A8);
  __cxa_atexit(sub_3F0F0, &unk_A03F0, &dword_0);
  sub_3F3A8(&unk_A0420, "spice-table-cells", sub_1A3E0, 0, sub_1A444, &unk_A03F0);
  __cxa_atexit(sub_3F2F8, &unk_A0420, &dword_0);
  sub_37AEC(qword_A0460, &unk_A0420);
  __cxa_atexit(j_nullsub_2_5, qword_A0460, &dword_0);
  sub_3F198(&unk_A0478, "table-vector", v6, v7, v8, v9, v10, v11, qword_A03D8);
  __cxa_atexit(sub_3F0F0, &unk_A0478, &dword_0);
  sub_3F3A8(&unk_A04A8, "spice-table-row-vectors", sub_1A540, 0, sub_1A568, &unk_A0478);
  __cxa_atexit(sub_3F2F8, &unk_A04A8, &dword_0);
  sub_37AEC(qword_A04E8, &unk_A04A8);
  __cxa_atexit(j_nullsub_2_5, qword_A04E8, &dword_0);
  sub_3F3A8(&unk_A0500, "spice-table-column-vectors", sub_1A5B0, 0, sub_1A678, &unk_A0478);
  __cxa_atexit(sub_3F2F8, &unk_A0500, &dword_0);
  sub_37AEC(qword_A0540, &unk_A0500);
  __cxa_atexit(j_nullsub_2_5, qword_A0540, &dword_0);
  sub_3F198(&unk_A0558, "tableModelPartitionSouce", v12, v13, v14, v15, v16, v17, &qword_A20E8);
  __cxa_atexit(sub_3F0F0, &unk_A0558, &dword_0);
  sub_3F3A8(&unk_A0588, "spice-table-model", sub_1A34C, 0, 0, &unk_A0558);
  __cxa_atexit(sub_3F2F8, &unk_A0588, &dword_0);
  sub_37AEC(qword_A05C8, &unk_A0588);

  return __cxa_atexit(j_nullsub_2_5, qword_A05C8, &dword_0);
}

uint64_t sub_1ACC0(xmlTextReader *a1, void *a2)
{
  v4 = [a2 documentState];
  v5 = objc_alloc_init(GQDTTable);
  [v4 pushObject:v5];

  if (([v4 isReadingStorageAttachments] & 1) == 0)
  {
    v6 = [v4 currentDrawablesGenerator];
    if (v6)
    {
      [v4 setCurrentTableGenerator:{objc_msgSend(v6, "beginTable:", v4)}];
    }
  }

  return sub_8A64(a1, a2);
}

id sub_1AD5C(void *a1)
{
  v2 = [a1 documentState];
  v3 = [v2 currentTableGenerator];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 peekObject];
    if (![v2 shouldStreamTables] || (objc_msgSend(v5, "isStreamed") & 1) == 0)
    {
      [v5 walkTableWithGenerator:v4 state:v2];
    }
  }

  return sub_A348(a1);
}

void sub_1ADF0(xmlTextReader *a1, void *a2)
{
  v4 = [a2 documentState];
  if ([v4 shouldStreamTables])
  {
    *([v4 topObjectOfClass:objc_opt_class()] + 96) = 1;

    sub_3A420(a1, &unk_A0A48, &unk_A05E0, a2);
  }

  sub_37B34(&unk_A05F8, a1, a2);
}

uint64_t sub_1B144()
{
  sub_37B7C(qword_A05E0, sub_1ADF0, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A05E0, &dword_0);
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mModel");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A05F8, &unk_A0A48, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_A05F8, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mStyle");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_A0620, v5);
  __cxa_atexit(j_nullsub_2_3, &unk_A0620, &dword_0);
  v6 = objc_opt_class();
  v7 = class_getInstanceVariable(v6, "mModel");
  v8 = ivar_getOffset(v7);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_A0638, v8);
  __cxa_atexit(j_nullsub_2_3, &unk_A0638, &dword_0);
  v9 = objc_opt_class();
  v10 = class_getInstanceVariable(v9, "mModel");
  v11 = ivar_getOffset(v10);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A0650, &unk_A0588, v11);
  __cxa_atexit(j_nullsub_2_2, &unk_A0650, &dword_0);
  sub_3F198(&unk_A0678, "tabular-style-ref", v12, v13, v14, v15, v16, v17, &unk_A0620);
  __cxa_atexit(sub_3F0F0, &unk_A0678, &dword_0);
  sub_3F3A8(&unk_A06A8, "ct", 0, 0, 0, &unk_A0678);
  __cxa_atexit(sub_3F2F8, &unk_A06A8, &dword_0);
  sub_37AEC(qword_A06E8, &unk_A06A8);
  __cxa_atexit(j_nullsub_2_5, qword_A06E8, &dword_0);
  sub_3F198(&unk_A0700, "tabular-model", v18, v19, v20, v21, v22, v23, qword_A05E0);
  __cxa_atexit(sub_3F0F0, &unk_A0700, &dword_0);
  sub_3F5AC(&unk_A0730, "tabular-info", &unk_9EA20, sub_1ACC0, sub_1AD5C, &unk_A0700);

  return __cxa_atexit(sub_40BC, &unk_A0730, &dword_0);
}

uint64_t sub_1B504(uint64_t a1, void *a2)
{
  v3 = [a2 documentState];
  v4 = objc_alloc_init(GQDTTableModel);
  [(GQDTTableModel *)v4 readAttributesForModel:a1];
  [v3 pushObject:v4];
  [objc_msgSend(v3 "root")];

  v5 = [v3 topObjectOfClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isStreamed];
  }

  else
  {
    v7 = 0;
  }

  v8 = [[GQSTable alloc] initWithStreaming:v7 table:v6];
  [v3 setTableState:v8];

  return 1;
}

id sub_1B5D8(void *a1)
{
  v1 = [a1 documentState];
  v2 = [v1 tableState];
  if ([v2 isStreaming])
  {
    v3 = [v1 currentTableGenerator];
    v4 = [v2 table];
    v5 = &dword_0 + 1;
    if (v4 && v3)
    {
      v5 = [v3 endTable:v4 state:v1];
      [v1 setCurrentTableGenerator:0];
    }
  }

  else
  {
    v5 = &dword_0 + 1;
  }

  [v1 setTableState:0];
  return v5;
}

id sub_1B678(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "documentState")];

  return [v3 readAttributesForGrid:a1];
}

id sub_1B6B8(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(objc_msgSend(a2 "documentState")];
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return v3;
}

id sub_1B740(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "documentState")];

  return [v3 addRowHeightFrom:a1];
}

uint64_t sub_1B780(void *a1)
{
  v1 = [a1 documentState];
  v2 = [v1 popRetainedObject];
  v3 = [v1 peekObject];
  Count = CFDictionaryGetCount(v2);
  v5 = v2;
  if (!Count)
  {
    v5 = +[NSNull null];
  }

  CFArrayAppendValue(v3[10], v5);
  CFRelease(v2);
  return 1;
}

id sub_1B7EC(uint64_t a1, void *a2)
{
  v2 = [a2 documentState];
  v3 = [v2 tableState];
  if (v3 && ([v3 isStreaming] & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    [v2 pushObject:Mutable];
    CFRelease(Mutable);
    v4 = 1;
  }

  v6 = [v2 topObjectOfClass:objc_opt_class()];
  result = &dword_0 + 1;
  if ((v4 & 1) == 0 && v6)
  {
    [v6 setModel:{objc_msgSend(v2, "topObjectOfClass:", objc_opt_class())}];
    v8 = [v2 currentTableGenerator];
    if (v8)
    {
      v9 = v8;
      result = [v8 beginTable:v6 state:v2];
      if (result == 1)
      {

        return [v9 beginCells:v6 state:v2];
      }
    }

    else
    {
      return &dword_0 + 1;
    }
  }

  return result;
}

uint64_t sub_1B904(void *a1, int a2)
{
  v3 = [a1 documentState];
  v4 = [v3 tableState];
  if (([v4 isStreaming] & 1) == 0 && objc_msgSend(v3, "objectStackDepth") <= a2)
  {
    return 3;
  }

  if (![v4 isStreaming])
  {
    [objc_msgSend(v3 "peekObject")];
    return 1;
  }

  v5 = [v4 table];
  v6 = [v3 currentTableGenerator];
  result = 1;
  if (v5 && v6)
  {
    v8 = [v4 lastCellRead];
    if (v8)
    {
      [v6 handleCell:v8 state:v3];
    }

    [v6 endCells:v5 state:v3];
    return 1;
  }

  return result;
}

uint64_t sub_1B9DC(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  v6 = [v4 tableState];
  if (v6 && (v7 = v6, [v6 isStreaming]) && (objc_msgSend(v7, "alwaysPutReadCellsInArray") & 1) == 0)
  {
    v9 = [v7 lastCellRead];
    if (v9)
    {
      v10 = v9;
      v11 = [v4 currentTableGenerator];
      if (v11)
      {
        [v11 handleCell:v10 state:v4];
      }
    }

    [v7 setLastCellRead:v5];
  }

  else
  {
    CFArrayAppendValue([objc_msgSend(a1 "documentState")], v5);
  }

  return 1;
}

uint64_t sub_1BAA8(xmlTextReader *a1, void *a2)
{
  v3 = [objc_msgSend(a2 "documentState")];
  v4 = sub_4258C(a1, qword_A35E8, "grouping-display-type", 0);
  valuePtr = sub_4258C(a1, qword_A35E8, "grouping-display-level", 0);
  LOBYTE(a1) = sub_42340(a1, qword_A35E8, "grouping-display-verbose", 1);
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v6 = objc_alloc_init(GQGroupDisplayInfo);
  v6->mDisplayType = v4;
  v6->mIsTypeVisible = a1;
  CFDictionarySetValue(v3, v5, v6);
  CFRelease(v5);

  return 1;
}

id sub_1BBA0(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "documentState")];

  return [v3 addGroupLevelsFrom:a1];
}

uint64_t sub_1C4A4()
{
  sub_37B7C(qword_A0778, sub_1BAA8, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A0778, &dword_0);
  sub_3EFAC(qword_A0790, "grouping-display", v0, v1, v2, v3, v4, v5, qword_A0778);
  __cxa_atexit(sub_3430, qword_A0790, &dword_0);
  sub_3F3A8(&unk_A07B0, "grid-column", sub_1B6B8, 0, sub_1B780, qword_A0790);
  __cxa_atexit(sub_3F2F8, &unk_A07B0, &dword_0);
  sub_37AEC(qword_A07F0, &unk_A07B0);
  __cxa_atexit(j_nullsub_2_5, qword_A07F0, &dword_0);
  sub_3EFAC(qword_A0808, "grid-column", v6, v7, v8, v9, v10, v11, qword_A07F0);
  __cxa_atexit(sub_3430, qword_A0808, &dword_0);
  sub_3F3A8(&unk_A0828, "columns", 0, 0, 0, qword_A0808);
  __cxa_atexit(sub_3F2F8, &unk_A0828, &dword_0);
  sub_37AEC(qword_A0868, &unk_A0828);
  __cxa_atexit(j_nullsub_2_5, qword_A0868, &dword_0);
  sub_37B7C(qword_A0880, sub_1B740, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A0880, &dword_0);
  sub_3EFAC(qword_A0898, "grid-row", v12, v13, v14, v15, v16, v17, qword_A0880);
  __cxa_atexit(sub_3430, qword_A0898, &dword_0);
  sub_3F3A8(&unk_A08B8, "rows", 0, 0, 0, qword_A0898);
  __cxa_atexit(sub_3F2F8, &unk_A08B8, &dword_0);
  sub_37AEC(qword_A08F8, &unk_A08B8);
  __cxa_atexit(j_nullsub_2_5, qword_A08F8, &dword_0);
  sub_3F198(&unk_A0910, "text-cell", v18, v19, v20, v21, v22, v23, &unk_A0C38);
  __cxa_atexit(sub_3F0F0, &unk_A0910, &dword_0);
  sub_3F3A8(&unk_A0940, "datasource", sub_1B7EC, &qword_A20E8, sub_1B904, &unk_A0910);
  __cxa_atexit(sub_3F2F8, &unk_A0940, &dword_0);
  sub_37AEC(qword_A0980, &unk_A0940);
  __cxa_atexit(j_nullsub_2_5, qword_A0980, &dword_0);
  sub_3EFAC(qword_A0998, "columns", v24, v25, v26, v27, v28, v29, qword_A0868);
  __cxa_atexit(sub_3430, qword_A0998, &dword_0);
  sub_3F3A8(&unk_A09B8, "grid", sub_1B678, 0, 0, qword_A0998);
  __cxa_atexit(sub_3F2F8, &unk_A09B8, &dword_0);
  sub_37AEC(qword_A09F8, &unk_A09B8);
  __cxa_atexit(j_nullsub_2_5, qword_A09F8, &dword_0);
  sub_37B7C(qword_A0A10, sub_1BBA0, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A0A10, &dword_0);
  sub_3EFAC(qword_A0A28, "grid", v30, v31, v32, v33, v34, v35, qword_A09F8);
  __cxa_atexit(sub_3430, qword_A0A28, &dword_0);
  sub_3F3A8(&unk_A0A48, "tabular-model", sub_1B504, &qword_A20E8, sub_1B5D8, qword_A0A28);

  return __cxa_atexit(sub_3F2F8, &unk_A0A48, &dword_0);
}

uint64_t sub_1CB3C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTTextCell);
  [(GQDTCell *)v4 readAttributesForBaseCell:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_1CB9C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTTextCell);
  [(GQDTCell *)v4 readAttributesForBaseTabularCell:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_1CC6C(xmlTextReader *a1, void *a2)
{
  v3 = [a2 documentState];
  v4 = xmlTextReaderConstValue(a1);
  v5 = [v3 peekObject];
  v6 = CFStringCreateWithCString(0, v4, 0x8000100u);
  v7 = v6;
  v8 = *(v5 + 3);
  if (!v8)
  {
    v8 = &stru_85620;
  }

  v9 = CFStringCreateWithFormat(0, 0, @"%@%@", v8, v6);
  CFRelease(v7);
  v10 = *(v5 + 3);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v5 + 3) = v9;
  return 1;
}

uint64_t sub_1CE5C()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mLayoutStorage");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A0A88, &unk_A1760, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_A0A88, &dword_0);
  sub_3F198(&unk_A0AB0, 0, v3, v4, v5, v6, v7, v8, v34);
  __cxa_atexit(sub_3F0F0, &unk_A0AB0, &dword_0);
  sub_3F424(&unk_A0AE0, "cell-text-string", 0, 0, sub_1CC6C, 0, &unk_A0AB0);
  __cxa_atexit(sub_3F2F8, &unk_A0AE0, &dword_0);
  sub_37AEC(qword_A0B20, &unk_A0AE0);
  __cxa_atexit(j_nullsub_2_5, qword_A0B20, &dword_0);
  sub_3F198(&unk_A0B38, "cell-storage", v9, v10, v11, v12, v13, v14, &unk_A0A88);
  __cxa_atexit(sub_3F0F0, &unk_A0B38, &dword_0);
  sub_3F3A8(&unk_A0B68, "cell-text", sub_1CBFC, 0, 0, &unk_A0B38);
  __cxa_atexit(sub_3F2F8, &unk_A0B68, &dword_0);
  sub_37AEC(qword_A0BA8, &unk_A0B68);
  __cxa_atexit(j_nullsub_2_5, qword_A0BA8, &dword_0);
  sub_3F198(&unk_A0BC0, "cell-text", v15, v16, v17, v18, v19, v20, qword_A0BA8);
  __cxa_atexit(sub_3F0F0, &unk_A0BC0, &dword_0);
  sub_3F5AC(&unk_A0BF0, "text-cell", &unk_9F830, sub_1CB3C, sub_1B9DC, &unk_A0BC0);
  __cxa_atexit(sub_40BC, &unk_A0BF0, &dword_0);
  sub_37AEC(qword_A0C38, &unk_A0BF0);
  __cxa_atexit(j_nullsub_2_5, qword_A0C38, &dword_0);
  sub_3F198(&unk_A0C50, "so", v21, v22, v23, v24, v25, v26, &unk_A0A88);
  __cxa_atexit(sub_3F0F0, &unk_A0C50, &dword_0);
  sub_3F3A8(&unk_A0C80, "ct", sub_1CC34, 0, 0, &unk_A0C50);
  __cxa_atexit(sub_3F2F8, &unk_A0C80, &dword_0);
  sub_37AEC(qword_A0CC0, &unk_A0C80);
  __cxa_atexit(j_nullsub_2_5, qword_A0CC0, &dword_0);
  sub_3F198(&unk_A0CD8, "ct", v27, v28, v29, v30, v31, v32, qword_A0CC0);
  __cxa_atexit(sub_3F0F0, &unk_A0CD8, &dword_0);
  sub_3F5AC(&unk_A0D08, "t-cell", &unk_9F830, sub_1CB9C, sub_1B9DC, &unk_A0CD8);
  __cxa_atexit(sub_40BC, &unk_A0D08, &dword_0);
  sub_37AEC(qword_A0D50, &unk_A0D08);

  return __cxa_atexit(j_nullsub_2_5, qword_A0D50, &dword_0);
}

uint64_t sub_1D27C(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDWebView);
  [objc_msgSend(a2 "documentState")];

  return sub_8A64(a1, a2);
}

uint64_t sub_1D354()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mImageBinary");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37CD4(&unk_A0D68, Offset, 1);
  __cxa_atexit(j_nullsub_2_3, &unk_A0D68, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mImageBinary");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A0D80, &unk_9EBD8, v5);
  __cxa_atexit(j_nullsub_2_2, &unk_A0D80, &dword_0);
  sub_3F198(&unk_A0DA8, "image-ref", v6, v7, v8, v9, v10, v11, &unk_A0D68);
  __cxa_atexit(sub_3F0F0, &unk_A0DA8, &dword_0);
  sub_3F5AC(&unk_A0DD8, "webview", &unk_9EA20, sub_1D27C, sub_A348, &unk_A0DA8);

  return __cxa_atexit(sub_40BC, &unk_A0DD8, &dword_0);
}

uint64_t sub_1D524(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPAttachment);
  [objc_msgSend(a2 "documentState")];
  [objc_msgSend(objc_msgSend(a2 "documentState")];

  return 1;
}

void sub_1D590(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDTTable);
  [objc_msgSend(a2 "documentState")];

  sub_3A420(a1, &unk_A0588, &unk_A0F68, a2);
}

uint64_t sub_1D608(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] < a2)
  {
    return 3;
  }

  v5 = [v3 popRetainedObject];
  v6 = [v3 popRetainedObject];
  [v6 setModel:v5];

  *([v3 peekObject] + 1) = v6;
  return 1;
}

uint64_t sub_1D680(xmlTextReader *a1, void *a2)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 3;
  }

  v4 = AttributeNs;
  v5 = [objc_msgSend(objc_msgSend(a2 "documentState")];
  if (v5)
  {
    [objc_msgSend(a2 "documentState")];
  }

  else
  {
    v7 = -[GQDWPAttachmentRef initWithUID:root:]([GQDWPAttachmentRef alloc], "initWithUID:root:", v4, [objc_msgSend(a2 "documentState")]);
    [objc_msgSend(a2 "documentState")];
  }

  free(v4);
  return 1;
}

uint64_t sub_1D8E4()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mDrawable");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A0E20, &unk_9F4B0, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_A0E20, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mDrawable");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A0E48, &unk_9EC48, v5);
  __cxa_atexit(j_nullsub_2_2, &unk_A0E48, &dword_0);
  v6 = objc_opt_class();
  v7 = class_getInstanceVariable(v6, "mDrawable");
  v8 = ivar_getOffset(v7);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A0E70, &unk_9EE50, v8);
  __cxa_atexit(j_nullsub_2_2, &unk_A0E70, &dword_0);
  v9 = objc_opt_class();
  v10 = class_getInstanceVariable(v9, "mDrawable");
  v11 = ivar_getOffset(v10);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A0E98, &unk_A0730, v11);
  __cxa_atexit(j_nullsub_2_2, &unk_A0E98, &dword_0);
  v12 = objc_opt_class();
  v13 = class_getInstanceVariable(v12, "mDrawable");
  v14 = ivar_getOffset(v13);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A0EC0, &unk_9EAE0, v14);
  __cxa_atexit(j_nullsub_2_2, &unk_A0EC0, &dword_0);
  v15 = objc_opt_class();
  v16 = class_getInstanceVariable(v15, "mDrawable");
  v17 = ivar_getOffset(v16);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A0EE8, &unk_9E670, v17);
  __cxa_atexit(j_nullsub_2_2, &unk_A0EE8, &dword_0);
  v18 = objc_opt_class();
  v19 = class_getInstanceVariable(v18, "mDrawable");
  v20 = ivar_getOffset(v19);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_A0F10, v20);
  __cxa_atexit(j_nullsub_2_3, &unk_A0F10, &dword_0);
  v21 = objc_opt_class();
  v22 = class_getInstanceVariable(v21, "mDrawable");
  v23 = ivar_getOffset(v22);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A0F28, &unk_9E728, v23);
  __cxa_atexit(j_nullsub_2_2, &unk_A0F28, &dword_0);
  v24 = objc_opt_class();
  v25 = class_getInstanceVariable(v24, "mDrawable");
  v26 = ivar_getOffset(v25);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_A0F50, v26);
  __cxa_atexit(j_nullsub_2_3, &unk_A0F50, &dword_0);
  sub_37B7C(qword_A0F68, sub_1D590, sub_1D608);
  __cxa_atexit(j_nullsub_2_1, qword_A0F68, &dword_0);
  sub_3F198(&unk_A0F80, "drawable-shape", v27, v28, v29, v30, v31, v32, &unk_A0E20);
  __cxa_atexit(sub_3F0F0, &unk_A0F80, &dword_0);
  sub_3F3A8(&unk_A0FB0, "attachment", sub_1D524, 0, 0, &unk_A0F80);
  __cxa_atexit(sub_3F2F8, &unk_A0FB0, &dword_0);
  sub_37B10(qword_A0FF0, &unk_A0FB0, sub_3C2C4);
  __cxa_atexit(j_nullsub_2_5, qword_A0FF0, &dword_0);
  sub_37B7C(qword_A1008, sub_1D680, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_1, qword_A1008, &dword_0);
}

uint64_t sub_1DECC(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPAutoNumber);
  [objc_msgSend(a2 "documentState")];

  v5 = xmlTextReaderConstLocalName(a1);
  v6 = qword_A4158;
  if (!qword_A4158)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &unk_850D0, 0);
    qword_A4158 = Mutable;
    CFDictionaryAddValue(Mutable, "page-number", &dword_0 + 1);
    CFDictionaryAddValue(Mutable, "page-count", &dword_0 + 2);
    CFDictionaryAddValue(Mutable, "section-number", &dword_0 + 3);
    CFDictionaryAddValue(Mutable, "section-count", &dword_4);
    CFDictionaryAddValue(Mutable, "toc-pagenum", &dword_0 + 1);
    v6 = qword_A4158;
  }

  Value = CFDictionaryGetValue(v6, v5);
  v4->mType = Value;
  if (!Value)
  {
    return 3;
  }

  mValue = v4->mValue;
  if (mValue)
  {
    CFRelease(mValue);
  }

  v10 = sub_4294C(a1, qword_A35E8, "value");
  v11 = @"1";
  if (v10)
  {
    v11 = v10;
  }

  v4->mValue = v11;
  return 1;
}

uint64_t sub_1E074()
{
  sub_37B7C(qword_A1020, sub_1DECC, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_1, qword_A1020, &dword_0);
}

uint64_t sub_1E0EC(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 peekObject];
  v6 = v5[1];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[1] = v4;
  return 1;
}

uint64_t sub_1E274(uint64_t a1, void *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return 1;
}

uint64_t sub_1E2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1038, "p", a3, a4, a5, a6, a7, a8, &unk_A1B98);
  __cxa_atexit(sub_3F0F0, &unk_A1038, &dword_0);
  sub_3F3A8(&unk_A1068, "wp-block-list", 0, 0, 0, &unk_A1038);

  return __cxa_atexit(sub_3F2F8, &unk_A1068, &dword_0);
}

uint64_t sub_1E3DC(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(GQDWPBodyStorage);
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_1E424(uint64_t a1, void *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return 1;
}

uint64_t sub_1E478(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 peekObject];
  v6 = v5[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[2] = v4;
  return 1;
}

uint64_t sub_1E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A10A8, "section", a3, a4, a5, a6, a7, a8, &unk_A1C20);
  __cxa_atexit(sub_3F0F0, &unk_A10A8, &dword_0);
  sub_3F3A8(&unk_A10D8, "body-storage-body", sub_1E424, 0, sub_1E478, &unk_A10A8);
  __cxa_atexit(sub_3F2F8, &unk_A10D8, &dword_0);
  sub_37B10(qword_A1118, &unk_A10D8, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A1118, &dword_0);
  v8 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v8, "mFootnotes");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A1130, &unk_A1760, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_A1130, &dword_0);
  sub_3F198(&unk_A1158, "text-storage", v11, v12, v13, v14, v15, v16, &unk_A1130);
  __cxa_atexit(sub_3F0F0, &unk_A1158, &dword_0);
  sub_3F3A8(&unk_A1188, "footnotes", 0, 0, 0, &unk_A1158);
  __cxa_atexit(sub_3F2F8, &unk_A1188, &dword_0);
  sub_37B10(qword_A11C8, &unk_A1188, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A11C8, &dword_0);
  sub_3F198(&unk_A11E0, "text-body", v17, v18, v19, v20, v21, v22, qword_A1118);
  __cxa_atexit(sub_3F0F0, &unk_A11E0, &dword_0);
  sub_3F5AC(&unk_A1210, "body-storage", &unk_A1D98, sub_1E3DC, 0, &unk_A11E0);

  return __cxa_atexit(sub_40BC, &unk_A1210, &dword_0);
}

uint64_t sub_1E850(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPBookmark);
  v5 = [(GQDWPBookmark *)v4 readAttributesFromReader:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  if (v5 == 3)
  {
    return 3;
  }

  return sub_1F75C(a1, a2);
}

uint64_t sub_1EA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1258, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1258, &dword_0);
  sub_3F5AC(&unk_A1288, "wp-bookmark", &unk_A1538, sub_1E850, sub_1F760, &unk_A1258);
  __cxa_atexit(sub_40BC, &unk_A1288, &dword_0);
  sub_37B10(qword_A12D0, &unk_A1288, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A12D0, &dword_0);
}

id sub_1EB14(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPColumn);
  v5 = [(GQDWPColumn *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_1EC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A12E8, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A12E8, &dword_0);
  sub_3F3A8(&unk_A1318, "wp-column", sub_1EB14, 0, 0, &unk_A12E8);
  __cxa_atexit(sub_3F2F8, &unk_A1318, &dword_0);
  sub_37B10(qword_A1358, &unk_A1318, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A1358, &dword_0);
}

id sub_1ED34(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPColumns);
  v5 = [(GQDWPColumns *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(objc_msgSend(a2 "documentState")];
    [objc_msgSend(a2 "documentState")];
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return v5;
}

uint64_t sub_1EDE4(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 peekObject];
  v6 = v5[1];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[1] = v4;
  return 1;
}

uint64_t sub_1EE4C(void *a1, signed int a2)
{
  v3 = [a1 documentState];
  v4 = [v3 objectStackDepth];
  if (v4 < a2)
  {
    return 3;
  }

  if (v4 > a2)
  {
  }

  return 1;
}

uint64_t sub_1EF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1370, "column", a3, a4, a5, a6, a7, a8, qword_A1358);
  __cxa_atexit(sub_3F0F0, &unk_A1370, &dword_0);
  sub_3F3A8(&unk_A13A0, "wp-columns", sub_1ED34, 0, sub_1EDE4, &unk_A1370);
  __cxa_atexit(sub_3F2F8, &unk_A13A0, &dword_0);
  sub_37B10(qword_A13E0, &unk_A13A0, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A13E0, &dword_0);
  sub_3F198(&unk_A13F8, "columns", v8, v9, v10, v11, v12, v13, qword_A13E0);
  __cxa_atexit(sub_3F0F0, &unk_A13F8, &dword_0);
  sub_3F3A8(&unk_A1428, "columnsWrapper", 0, 0, sub_1EE4C, &unk_A13F8);

  return __cxa_atexit(sub_3F2F8, &unk_A1428, &dword_0);
}

id sub_1F0E4(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPExternalTextWrap);
  v5 = [(GQDWPExternalTextWrap *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
    [objc_msgSend(objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_1F31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  dword_A4160 = 0;
  qword_A4168 = "regular";
  dword_A4170 = 1;
  qword_A4178 = "tight";
  xmmword_A4180 = xmmword_9D3E8;
  dword_A4190 = 0;
  qword_A4198 = "left";
  dword_A41A0 = 1;
  qword_A41A8 = "right";
  dword_A41B0 = 2;
  qword_A41B8 = "both";
  xmmword_A41C0 = xmmword_9D3E8;
  dword_A4200 = 0;
  qword_A4208 = "directional";
  dword_A4210 = 1;
  qword_A4218 = "neither";
  dword_A4220 = 2;
  qword_A4228 = "largest";
  xmmword_A4230 = xmmword_9D3E8;
  dword_A41D0 = 0;
  qword_A41D8 = "aligned";
  dword_A41E0 = 1;
  qword_A41E8 = "unaligned";
  xmmword_A41F0 = xmmword_9D3E8;
  sub_3F198(&unk_A1468, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1468, &dword_0);
  sub_3F3A8(&unk_A1498, "external-textwrap", sub_1F0E4, 0, 0, &unk_A1468);

  return __cxa_atexit(sub_3F2F8, &unk_A1498, &dword_0);
}

uint64_t sub_1F4BC(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPFootnote);
  [objc_msgSend(a2 "documentState")];
  mValue = v4->mValue;
  if (mValue)
  {
    CFRelease(mValue);
  }

  v4->mValue = sub_4294C(a1, qword_A35E8, "autonumber");

  return 1;
}

uint64_t sub_1F594()
{
  sub_37B7C(qword_A14D8, sub_1F4BC, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_1, qword_A14D8, &dword_0);
}

uint64_t sub_1F60C(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPFootnoteMark);
  [objc_msgSend(a2 "documentState")];
  mValue = v4->mValue;
  if (mValue)
  {
    CFRelease(mValue);
  }

  v4->mValue = sub_4294C(a1, qword_A35E8, "mark");

  return 1;
}

uint64_t sub_1F6E4()
{
  sub_37B7C(qword_A14F0, sub_1F60C, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_1, qword_A14F0, &dword_0);
}

uint64_t sub_1F764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1508, "span", a3, a4, a5, a6, a7, a8, &unk_A1CB0);
  __cxa_atexit(sub_3F0F0, &unk_A1508, &dword_0);
  sub_3F5AC(&unk_A1538, "wp-inline-list", &unk_A1EE8, 0, 0, &unk_A1508);

  return __cxa_atexit(sub_40BC, &unk_A1538, &dword_0);
}

uint64_t sub_1F894(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPLayout);
  v5 = [(GQDWPLayout *)v4 readAttributesFromReader:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  if (v5 == 3)
  {
    return 3;
  }

  return sub_1E274(a1, a2);
}

uint64_t sub_1FA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1580, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1580, &dword_0);
  sub_3F5AC(&unk_A15B0, "layout", &unk_A1068, sub_1F894, sub_1E0EC, &unk_A1580);
  __cxa_atexit(sub_40BC, &unk_A15B0, &dword_0);
  sub_37B10(qword_A15F8, &unk_A15B0, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A15F8, &dword_0);
}

id sub_1FB50(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPLayoutFrame);
  v5 = [(GQDWPLayoutFrame *)v4 readAttributesFromReader:a1];
  [objc_msgSend(a2 "documentState")];

  return v5;
}

uint64_t sub_1FBB0(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  [objc_msgSend(v3 "peekObject")];
  return 1;
}

uint64_t sub_1FE20()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mStorage");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A1610, &unk_A1760, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_A1610, &dword_0);
  sub_3F198(&unk_A1638, "text-storage", v3, v4, v5, v6, v7, v8, &unk_A1610);
  __cxa_atexit(sub_3F0F0, &unk_A1638, &dword_0);
  sub_3F3A8(&unk_A1668, "layout-frame", sub_1FB50, 0, sub_1FBB0, &unk_A1638);

  return __cxa_atexit(sub_3F2F8, &unk_A1668, &dword_0);
}

uint64_t sub_1FF6C(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(GQDWPLayoutStorage);
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_1FFB4(uint64_t a1, void *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return 1;
}

uint64_t sub_20008(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  v6 = [objc_msgSend(a1 "documentState")];
  v7 = v6[2];
  if (v7)
  {
    CFRelease(v7);
  }

  v6[2] = v5;
  return 1;
}

uint64_t sub_20174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A16A8, "layout", a3, a4, a5, a6, a7, a8, qword_A15F8);
  __cxa_atexit(sub_3F0F0, &unk_A16A8, &dword_0);
  sub_3F3A8(&unk_A16D8, "layout-storage-body", sub_1FFB4, 0, sub_20008, &unk_A16A8);
  __cxa_atexit(sub_3F2F8, &unk_A16D8, &dword_0);
  sub_37B10(qword_A1718, &unk_A16D8, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A1718, &dword_0);
  sub_3F198(&unk_A1730, "text-body", v8, v9, v10, v11, v12, v13, qword_A1718);
  __cxa_atexit(sub_3F0F0, &unk_A1730, &dword_0);
  sub_3F5AC(&unk_A1760, "layout-storage", &unk_A1D98, sub_1FF6C, 0, &unk_A1730);

  return __cxa_atexit(sub_40BC, &unk_A1760, &dword_0);
}

id sub_2031C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPLineSpacing);
  v5 = [(GQDWPLineSpacing *)v4 readAttributesFromReader:a1 processor:a2];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
    [objc_msgSend(objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_20480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  qword_A4248 = "relative";
  dword_A4250 = 1;
  qword_A4258 = "minimum";
  dword_A4260 = 2;
  qword_A4268 = "absolute";
  dword_A4270 = 3;
  qword_A4278 = "maximum";
  dword_A4280 = 4;
  dword_A4240 = 0;
  qword_A4288 = "keynote";
  xmmword_A4290 = xmmword_9D3E8;
  sub_3F198(&unk_A17A8, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A17A8, &dword_0);
  sub_3F3A8(&unk_A17D8, "wp-linespacing", sub_2031C, 0, 0, &unk_A17A8);

  return __cxa_atexit(sub_3F2F8, &unk_A17D8, &dword_0);
}

uint64_t sub_20E60(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPLink);
  [objc_msgSend(a2 "documentState")];

  result = [(GQDWPLink *)v4 readStyleFromReader:a1 processor:a2];
  if (result == 1)
  {
    AttributeNs = xmlTextReaderGetAttributeNs(a1, "href", 0);
    if (AttributeNs)
    {
      v7 = AttributeNs;
      v8 = xmlStrlen(AttributeNs);
      if (v8 >= 32000)
      {
        v9 = 32000;
      }

      else
      {
        v9 = v8;
      }

      v4->mHref = CFStringCreateWithBytes(0, v7, v9, 0x8000100u, 0);
      free(v7);
    }

    v10 = sub_1F75C(a1, a2);
    [objc_msgSend(objc_msgSend(a2 "documentState")];
    return v10;
  }

  return result;
}

uint64_t sub_20F50(xmlTextReader *a1, void *a2)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 3;
  }

  v5 = AttributeNs;
  v6 = [objc_msgSend(objc_msgSend(a2 "documentState")];
  if (v6)
  {
    v7 = v6;
    v8 = objc_alloc_init(GQDWPLink);
    [objc_msgSend(a2 "documentState")];

    [(GQDWPLink *)v8 readStyleFromReader:a1 processor:a2];
    v9 = [v7 href];
    if (v9)
    {
      v10 = v9;
      CFRetain(v9);
      v8->mHref = v10;
    }

    v11 = sub_1F75C(a1, a2);
  }

  else
  {
    v11 = 3;
  }

  free(v5);
  return v11;
}

uint64_t sub_211B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1818, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1818, &dword_0);
  sub_3F5AC(&unk_A1848, "wp-link", &unk_A1538, sub_20E60, sub_1F760, &unk_A1818);
  __cxa_atexit(sub_40BC, &unk_A1848, &dword_0);
  sub_3F5AC(&unk_A1890, "wp-link-ref", &unk_A1848, sub_20F50, sub_1F760, &unk_A1818);
  __cxa_atexit(sub_40BC, &unk_A1890, &dword_0);
  sub_37B10(qword_A18D8, &unk_A1848, sub_3C2C4);
  __cxa_atexit(j_nullsub_2_5, qword_A18D8, &dword_0);
  sub_37B10(qword_A18F0, &unk_A1890, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A18F0, &dword_0);
}

id sub_21344(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPListLabelGeometry);
  v5 = [(GQDWPListLabelGeometry *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
    [objc_msgSend(objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_214E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1908, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1908, &dword_0);
  sub_3F3A8(&unk_A1938, "list-label-geometry", sub_21344, 0, 0, &unk_A1908);

  return __cxa_atexit(sub_3F2F8, &unk_A1938, &dword_0);
}

id sub_21598(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPListLabelTypeInfo);
  v5 = [(GQDWPListLabelTypeInfo *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
    [objc_msgSend(objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_21714()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mLabel");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A1978, &unk_A1E78, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_A1978, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mLabel");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_A19A0, v5);
  __cxa_atexit(j_nullsub_2_3, &unk_A19A0, &dword_0);
  sub_3F198(&unk_A19B8, "text-label", v6, v7, v8, v9, v10, v11, &unk_A1978);
  __cxa_atexit(sub_3F0F0, &unk_A19B8, &dword_0);
  sub_3F3A8(&unk_A19E8, "list-label-typeinfo", sub_21598, 0, 0, &unk_A19B8);

  return __cxa_atexit(sub_3F2F8, &unk_A19E8, &dword_0);
}

id sub_21988(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPPadding);
  v5 = [(GQDWPPadding *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(objc_msgSend(a2 "documentState")];
    [objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_21A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1A28, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1A28, &dword_0);
  sub_3F3A8(&unk_A1A58, "padding", sub_21988, 0, 0, &unk_A1A28);

  return __cxa_atexit(sub_3F2F8, &unk_A1A58, &dword_0);
}

id sub_21AEC(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPPageStart);
  v5 = [(GQDWPPageStart *)v4 readAttributesFromReader:a1];
  [objc_msgSend(a2 "documentState")];

  return v5;
}

uint64_t sub_21B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1A98, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1A98, &dword_0);
  sub_3F3A8(&unk_A1AC8, "page-start", sub_21AEC, 0, 0, &unk_A1A98);
  __cxa_atexit(sub_3F2F8, &unk_A1AC8, &dword_0);
  sub_37B10(qword_A1B08, &unk_A1AC8, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A1B08, &dword_0);
}

uint64_t sub_21C90(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPParagraph);
  [objc_msgSend(a2 "documentState")];

  result = [(GQDWPParagraph *)v4 readAttributesFromReader:a1 processor:a2];
  if (result == 1)
  {

    return sub_1E274(a1, a2);
  }

  return result;
}

uint64_t sub_22040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1B20, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1B20, &dword_0);
  sub_3F5AC(&unk_A1B50, "wp-para", &unk_A1538, sub_21C90, sub_1F760, &unk_A1B20);
  __cxa_atexit(sub_40BC, &unk_A1B50, &dword_0);
  sub_37B10(qword_A1B98, &unk_A1B50, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A1B98, &dword_0);
}

uint64_t sub_22148(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPSection);
  [objc_msgSend(a2 "documentState")];

  [(GQDWPSection *)v4 readAttributesFromReader:a1 processor:a2];
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return 1;
}

uint64_t sub_221DC(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 peekObject];
  v6 = v5[1];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[1] = v4;
  return 1;
}

uint64_t sub_22374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1BB0, "layout", a3, a4, a5, a6, a7, a8, qword_A15F8);
  __cxa_atexit(sub_3F0F0, &unk_A1BB0, &dword_0);
  sub_3F3A8(&unk_A1BE0, "section", sub_22148, &qword_A2878, sub_221DC, &unk_A1BB0);
  __cxa_atexit(sub_3F2F8, &unk_A1BE0, &dword_0);
  sub_37B10(qword_A1C20, &unk_A1BE0, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A1C20, &dword_0);
}

uint64_t sub_224BC(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPSpan);
  [objc_msgSend(a2 "documentState")];

  AttributeNs = xmlTextReaderGetAttributeNs(a1, "style", *(qword_A35E8 + 16));
  if (AttributeNs)
  {
    v6 = AttributeNs;
    v7 = [objc_msgSend(objc_msgSend(a2 "documentState")];
    if (!v7)
    {
      v7 = [objc_msgSend(a2 "documentState")];
    }

    v8 = [v7 styleWithIdentifier:v6];
    v4->mCharStyle = v8;
    if (!v8)
    {
      v8 = [v7 styleWithXmlUid:v6];
      v4->mCharStyle = v8;
    }

    v9 = v8;
    free(v6);
  }

  return sub_1E274(a1, a2);
}

uint64_t sub_22634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1C38, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1C38, &dword_0);
  sub_3F5AC(&unk_A1C68, "wp-span", &unk_A1EE8, sub_224BC, sub_23108, &unk_A1C38);
  __cxa_atexit(sub_40BC, &unk_A1C68, &dword_0);
  sub_37B10(qword_A1CB0, &unk_A1C68, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A1CB0, &dword_0);
}

uint64_t sub_2273C(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "documentState")];
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return 1;
}

uint64_t sub_227A0(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  v6 = [v4 peekObject];
  v7 = v6[3];
  if (v7)
  {
    CFRelease(v7);
  }

  v6[3] = v5;
  [objc_msgSend(a1 "documentState")];
  return 1;
}

uint64_t sub_22898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1CC8, "attachment", a3, a4, a5, a6, a7, a8, qword_A0FF0);
  __cxa_atexit(sub_3F0F0, &unk_A1CC8, &dword_0);
  sub_3F3A8(&unk_A1CF8, "attachments", sub_2273C, 0, sub_227A0, &unk_A1CC8);
  __cxa_atexit(sub_3F2F8, &unk_A1CF8, &dword_0);
  sub_37B10(qword_A1D38, &unk_A1CF8, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A1D38, &dword_0);
  v8 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v8, "mStylesheet");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_A1D50, Offset);
  __cxa_atexit(j_nullsub_2_3, &unk_A1D50, &dword_0);
  sub_3F198(&unk_A1D68, "stylesheet-ref", v11, v12, v13, v14, v15, v16, &unk_A1D50);
  __cxa_atexit(sub_3F0F0, &unk_A1D68, &dword_0);
  sub_3F3A8(&unk_A1D98, "storage", 0, 0, 0, &unk_A1D68);

  return __cxa_atexit(sub_3F2F8, &unk_A1D98, &dword_0);
}

id sub_22A9C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPTab);
  v5 = [(GQDWPTab *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_22C5C(void *a1, void *a2)
{
  [a1 position];
  v4 = v3;
  [a2 position];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

uint64_t sub_22CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1DD8, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1DD8, &dword_0);
  sub_3F3A8(&unk_A1E08, "tab", sub_22A9C, 0, 0, &unk_A1DD8);

  return __cxa_atexit(sub_3F2F8, &unk_A1E08, &dword_0);
}

id sub_22E70(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPTextLabel);
  v5 = [(GQDWPTextLabel *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(objc_msgSend(a2 "documentState")];
    [objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_23050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1E48, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1E48, &dword_0);
  sub_3F3A8(&unk_A1E78, "text-label", sub_22E70, 0, 0, &unk_A1E48);

  return __cxa_atexit(sub_3F2F8, &unk_A1E78, &dword_0);
}

uint64_t sub_23108(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 peekObject];
  v6 = v5[1];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[1] = v4;
  return 1;
}

uint64_t sub_23170(xmlTextReader *a1, void *a2)
{
  v4 = [a2 documentState];
  v5 = [[GQDWPText alloc] initWithContent:xmlTextReaderConstValue(a1)];
  v6 = [v4 objectStackDepth];
  [v4 pushObject:v5];

  return sub_3C2C4(a2, v6);
}

uint64_t sub_2333C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1EB8, "tab", a3, a4, a5, a6, a7, a8, &unk_A1F28);
  __cxa_atexit(sub_3F0F0, &unk_A1EB8, &dword_0);
  sub_3F424(&unk_A1EE8, "wp-text-list", 0, 0, sub_23170, 0, &unk_A1EB8);

  return __cxa_atexit(sub_3F2F8, &unk_A1EE8, &dword_0);
}

uint64_t sub_23550(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPTextMarker);
  [objc_msgSend(a2 "documentState")];

  v5 = xmlTextReaderConstLocalName(a1);
  v6 = qword_A42B0;
  if (!qword_A42B0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &unk_850D0, 0);
    qword_A42B0 = Mutable;
    CFDictionaryAddValue(Mutable, "tab", &dword_0 + 1);
    CFDictionaryAddValue(Mutable, "br", &dword_0 + 2);
    CFDictionaryAddValue(Mutable, "crbr", &dword_0 + 3);
    CFDictionaryAddValue(Mutable, "intratopicbr", &dword_4);
    CFDictionaryAddValue(Mutable, "lnbr", &dword_4 + 1);
    CFDictionaryAddValue(Mutable, "pgbr", &dword_4 + 2);
    CFDictionaryAddValue(Mutable, "sectbr", &dword_4 + 3);
    CFDictionaryAddValue(Mutable, "layoutbr", &dword_8);
    CFDictionaryAddValue(Mutable, "contbr", &dword_8 + 1);
    CFDictionaryAddValue(Mutable, "footnotebr", &dword_8 + 2);
    v6 = qword_A42B0;
  }

  Value = CFDictionaryGetValue(v6, v5);
  v4->mType = Value;
  if (Value)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_236BC()
{
  sub_37B7C(qword_A1F28, sub_23550, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_1, qword_A1F28, &dword_0);
}

uint64_t sub_23734(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(GQDWPTocContent);
  [objc_msgSend(a2 "documentState")];

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return 1;
}

uint64_t sub_237AC(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 popRetainedObject];
  v5 = [v3 peekObject];
  v6 = v5[1];
  if (v6)
  {
    CFRelease(v6);
  }

  v5[1] = v4;
  return 1;
}

uint64_t sub_2386C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1F40, "toc-entry", a3, a4, a5, a6, a7, a8, &unk_A20D0);
  __cxa_atexit(sub_3F0F0, &unk_A1F40, &dword_0);
  sub_3F3A8(&unk_A1F70, "wp-toc-content", sub_23734, 0, sub_237AC, &unk_A1F40);
  __cxa_atexit(sub_3F2F8, &unk_A1F70, &dword_0);
  sub_37B10(qword_A1FB0, &unk_A1F70, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A1FB0, &dword_0);
}

uint64_t sub_2399C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPTocEmpty);
  [objc_msgSend(a2 "documentState")];

  return sub_1E274(a1, a2);
}

uint64_t sub_23A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A1FC8, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A1FC8, &dword_0);
  sub_3F5AC(&unk_A1FF8, "wp-toc-empty", &unk_A1068, sub_2399C, sub_1E0EC, &unk_A1FC8);
  __cxa_atexit(sub_40BC, &unk_A1FF8, &dword_0);
  sub_37B10(qword_A2040, &unk_A1FF8, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A2040, &dword_0);
}

uint64_t sub_23B0C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPTocEntry);
  v5 = [(GQDWPTocEntry *)v4 readAttributesFromReader:a1 processor:a2];
  [objc_msgSend(a2 "documentState")];

  if (v5 == 3)
  {
    return 3;
  }

  return sub_1E274(a1, a2);
}

uint64_t sub_23C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A2058, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A2058, &dword_0);
  sub_3F5AC(&unk_A2088, "wp-toc-entry", &unk_A1068, sub_23B0C, sub_1E0EC, &unk_A2058);
  __cxa_atexit(sub_40BC, &unk_A2088, &dword_0);
  sub_37B10(qword_A20D0, &unk_A2088, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A20D0, &dword_0);
}

id sub_28248(uint64_t a1, void *a2)
{
  [a2 startElement:"link"];
  [a2 setAttribute:"rel" value:"stylesheet"];
  [a2 setAttribute:"type" value:"text/css"];
  [a2 setAttribute:"href" cfStringValue:a1];

  return [a2 endElement];
}

unint64_t sub_30668(uint64_t a1)
{
  v2 = [*a1 hash];
  v3 = [*(a1 + 8) hash] ^ v2;
  v4 = [*(a1 + 16) hash];
  v5 = v3 ^ v4 ^ [*(a1 + 24) hash];
  v6 = [*(a1 + 32) hash];
  v7 = v6 ^ [*(a1 + 40) hash];
  return v5 ^ v7 ^ [*(a1 + 48) hash] ^ *(a1 + 56) ^ *(a1 + 60);
}

id sub_30B40(void *a1)
{
  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {
    CFRetain(v1);
    return v1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return [v1 createStringRef];
}

void sub_30BE0(uint64_t a1, void *a2, __CFString *a3)
{
  v5 = sub_30B40(a2);
  v6 = v5;
  if (a1 && v5)
  {
    CFStringAppendFormat(a3, 0, @"%@: %@; \n", a1, v5);
  }

  else if (!v5)
  {
    return;
  }

  CFRelease(v6);
}

void sub_30D18(uint64_t a1, void *a2, __CFString *a3)
{
  v5 = sub_30B40(a2);
  v6 = v5;
  if (a1 && v5)
  {
    CFStringAppendFormat(a3, 0, @"%@: %@; ", a1, v5);
  }

  else if (!v5)
  {
    return;
  }

  CFRelease(v6);
}

_WORD *sub_33CFC(void *a1, unint64_t a2, __int16 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (v5 <= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = v5;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      sub_341AC(a1, v8);
    }

    sub_9D48();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 1;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 1;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = vdupq_n_s64(v11 - 1);
    v15 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = result + 4;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_5EAE0)));
      if (vuzp1_s8(vuzp1_s16(v18, *v14.i8), *v14.i8).u8[0])
      {
        *(v16 - 4) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v14), *&v14).i8[1])
      {
        *(v16 - 3) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_5EAD0)))), *&v14).i8[2])
      {
        *(v16 - 2) = v13;
        *(v16 - 1) = v13;
      }

      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_5EAC0)));
      if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i32[1])
      {
        *v16 = v13;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i8[5])
      {
        v16[1] = v13;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_5EAB0))))).i8[6])
      {
        v16[2] = v13;
        v16[3] = v13;
      }

      v12 += 8;
      v16 += 8;
    }

    while (v15 != v12);
  }

  v20 = a2 - v10;
  if (a2 <= v10)
  {
    a1[1] = &result[a2];
  }

  else
  {
    v21 = 0;
    v22 = v9 + 2 * v20;
    v23 = *a3;
    v24 = (2 * a2 - (v9 - result) - 2) >> 1;
    v25 = vdupq_n_s64(v24);
    v26 = (v24 & 0x7FFFFFFFFFFFFFF8) + 8;
    v27 = (v9 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_5EAE0)));
      if (vuzp1_s8(vuzp1_s16(v29, *v25.i8), *v25.i8).u8[0])
      {
        *(v27 - 4) = v23;
      }

      if (vuzp1_s8(vuzp1_s16(v29, *&v25), *&v25).i8[1])
      {
        *(v27 - 3) = v23;
      }

      if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_5EAD0)))), *&v25).i8[2])
      {
        *(v27 - 2) = v23;
        *(v27 - 1) = v23;
      }

      v30 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_5EAC0)));
      if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i32[1])
      {
        *v27 = v23;
      }

      if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i8[5])
      {
        v27[1] = v23;
      }

      if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_5EAB0))))).i8[6])
      {
        v27[2] = v23;
        v27[3] = v23;
      }

      v21 += 8;
      v27 += 8;
    }

    while (v26 != v21);
    a1[1] = v22;
  }

  return result;
}

void sub_341AC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_341E4(a1, a2);
  }

  sub_9D48();
}

void sub_341E4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_9A2C();
}

void sub_35BA8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_35BFC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_35BFC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 8)
  {
    v5 = *(i - 8);
  }

  *(a1 + 8) = a2;
}

void *sub_37AEC(void *result, uint64_t a2)
{
  *result = off_84C10;
  result[1] = a2;
  result[2] = 0;
  return result;
}

void *sub_37B10(void *result, uint64_t a2, uint64_t a3)
{
  *result = off_84C10;
  result[1] = a2;
  result[2] = a3;
  return result;
}

uint64_t sub_37B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 1;
  }
}

void *sub_37B7C(void *result, uint64_t a2, uint64_t a3)
{
  *result = off_84C70;
  result[1] = a2;
  result[2] = a3;
  return result;
}

uint64_t sub_37BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_37BCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = a2;
  *(result + 16) = 0;
  *result = off_84CA0;
  *(result + 24) = a3;
  *(result + 32) = 1;
  return result;
}

uint64_t sub_37BFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(result + 8) = a2;
  *(result + 16) = 0;
  *result = off_84CA0;
  *(result + 24) = a3;
  *(result + 32) = a6;
  return result;
}

uint64_t sub_37C28(uint64_t a1, void *a2, int a3)
{
  v5 = [a2 documentState];
  if ([v5 objectStackDepth] > a3)
  {
    v6 = [v5 popRetainedObject];
    v7 = [v5 peekObject];
    if (v7)
    {
      *&v7[*(a1 + 24)] = v6;
      if (*(a1 + 32))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 1;
  }

  return 3;
}

uint64_t sub_37CAC(uint64_t result, uint64_t a2)
{
  *result = off_84CD0;
  *(result + 8) = a2;
  *(result + 16) = 256;
  return result;
}

uint64_t sub_37CD4(uint64_t result, uint64_t a2, char a3)
{
  *result = off_84CD0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 17) = 1;
  return result;
}

uint64_t sub_37D00(uint64_t a1, xmlTextReader *a2, void *a3)
{
  v6 = [objc_msgSend(a3 "documentState")];
  AttributeNs = xmlTextReaderGetAttributeNs(a2, off_9D3E0, *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 3;
  }

  v8 = AttributeNs;
  v9 = [v6 objectWithXmlUid:AttributeNs];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_msgSend(a3 "documentState")];
    if (v11)
    {
      v12 = v11;
      if (*(a1 + 17) == 1)
      {
        v13 = v10;
      }

      *&v12[*(a1 + 8)] = v10;
      v14 = 1;
    }

    else
    {
      v14 = 3;
    }
  }

  else if (*(a1 + 16))
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  free(v8);
  return v14;
}

void *sub_37DE8(void *result, uint64_t a2)
{
  *result = off_84D00;
  result[1] = a2;
  return result;
}

uint64_t sub_37E08(uint64_t a1, xmlTextReader *a2, void *a3)
{
  v5 = [objc_msgSend(a3 "documentState")];
  v7 = NSZeroSize;
  if (!sub_429BC(a2, &v7))
  {
    return 3;
  }

  *&v5[*(a1 + 8)] = v7;
  return 1;
}

void *sub_37E8C(void *result, uint64_t a2)
{
  *result = off_84D30;
  result[1] = a2;
  return result;
}

uint64_t sub_37EAC(uint64_t a1, xmlTextReader *a2, void *a3)
{
  v5 = [objc_msgSend(a3 "documentState")];
  v7 = NSZeroPoint;
  if (!sub_42A3C(a2, &v7))
  {
    return 3;
  }

  *&v5[*(a1 + 8)] = v7;
  return 1;
}

void *sub_37F30(void *result, uint64_t a2)
{
  *result = off_84D60;
  result[1] = a2;
  return result;
}

uint64_t sub_37F50(uint64_t a1, xmlTextReader *a2, void *a3)
{
  v5 = [objc_msgSend(a3 "documentState")];
  v6 = *(a1 + 8);
  v7 = *&v5[v6];
  if (v7)
  {
    CFRelease(v7);
    *&v5[v6] = 0;
  }

  AttributeNs = xmlTextReaderGetAttributeNs(a2, "path", *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 3;
  }

  v9 = AttributeNs;
  *&v5[v6] = sub_42ABC(AttributeNs);
  free(v9);
  return 1;
}

uint64_t sub_380CC(xmlTextReader *a1, void *a2)
{
  v4 = [a2 documentState];
  if (![v4 isGeneratingThumbnail] || !objc_msgSend(v4, "isThumbnailGenerationDone"))
  {

    sub_3A420(a1, &unk_9DFD8, &unk_A20F0, a2);
  }

  return sub_37B68(&qword_A20E8, a1);
}

uint64_t sub_38170(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  [objc_msgSend(v4 "peekObject")];
  v6 = [a1 generator];
  if (v6)
  {
    v7 = [v6 handleThemeStylesheet:objc_msgSend(v5 state:{"stylesheet"), objc_msgSend(a1, "documentState")}];
  }

  else
  {
    v7 = &dword_0 + 1;
  }

  return v7;
}

uint64_t sub_3821C(xmlTextReader *a1, void *a2)
{
  v4 = [a2 documentState];
  v8 = 0;
  if ([objc_msgSend(v4 "peekObject")])
  {
    v5 = [a2 generator];
    if (v5)
    {
      v6 = [v5 beginPresentation:objc_msgSend(v4 state:{"root"), v4}];
      [v4 setGeneratorBeginWasCalled];
    }

    else
    {
      return 1;
    }
  }

  else
  {
    [a2 setWrongFormat:1];
    return sub_3A52C(a1);
  }

  return v6;
}

uint64_t sub_382D4(xmlTextReader *a1, void *a2)
{
  [a2 setWrongFormat:1];
  sub_3A52C(a1);
  return 3;
}

void sub_38590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_3884C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_38734(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_57DC4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_38750(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_38788(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_387B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_387F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_3884C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

__n128 sub_388B8(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 32 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_38948(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++*(a1 + 40);
  return result;
}

void *sub_38948(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_38F44(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_38B1C(a1, &v10);
}

void sub_38AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_38B1C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_38F44(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_38C24(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_38F44(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_38D30(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_38F44(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_38E38(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_38F44(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_38F44(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_9A2C();
}

uint64_t sub_38F8C()
{
  sub_37B7C(qword_A20F0, sub_380CC, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A20F0, &dword_0);
  sub_3F198(&unk_A2108, "slide", v0, v1, v2, v3, v4, v5, qword_A20F0);
  __cxa_atexit(sub_3F0F0, &unk_A2108, &dword_0);
  sub_3F3A8(&unk_A2138, "slide-list", 0, 0, 0, &unk_A2108);
  __cxa_atexit(sub_3F2F8, &unk_A2138, &dword_0);
  sub_37B10(qword_A2178, &unk_A2138, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A2178, &dword_0);
  sub_37B10(qword_A2190, &unk_9E188, sub_38170);
  __cxa_atexit(j_nullsub_2_5, qword_A2190, &dword_0);
  sub_3F198(&unk_A21A8, "version-history", v6, v7, v8, v9, v10, v11, &qword_A20E8);
  __cxa_atexit(sub_3F0F0, &unk_A21A8, &dword_0);
  sub_3F3A8(&unk_A21D8, "preso", sub_3821C, 0, 0, &unk_A21A8);
  __cxa_atexit(sub_3F2F8, &unk_A21D8, &dword_0);
  sub_37B10(qword_A2218, &unk_A21D8, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A2218, &dword_0);
  sub_3F3A8(&unk_A2230, "preso", sub_382D4, 0, 0, &unk_A21A8);
  __cxa_atexit(sub_3F2F8, &unk_A2230, &dword_0);
  sub_37B10(qword_A2270, &unk_A2230, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A2270, &dword_0);
  sub_3F198(&unk_A2288, "presentation", v12, v13, v14, v15, v16, v17, qword_A2218);
  __cxa_atexit(sub_3F0F0, &unk_A2288, &dword_0);
  sub_3F3A8(&unk_A22B8, "initial", 0, 0, 0, &unk_A2288);

  return __cxa_atexit(sub_3F2F8, &unk_A22B8, &dword_0);
}

id sub_392F0(xmlTextReader *a1, void *a2)
{
  v4 = [a2 documentState];
  v5 = [a2 generator];
  if (!v5)
  {
    return &dword_0 + 1;
  }

  v6 = v5;
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  v8 = [objc_msgSend(v4 "root")];
  free(AttributeNs);

  return [v6 handleWorkspaceStyle:v8 state:v4];
}

uint64_t sub_393AC(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  if ([a1 generator] && (v6 = objc_msgSend(v4, "currentDrawablesGenerator")) != 0 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [v7 handleDrawable:v5 state:v4];
  }

  else
  {
    v8 = &dword_0 + 1;
  }

  if ([objc_msgSend(v4 "root")] == v5)
  {
    [objc_msgSend(v4 "root")];
  }

  return v8;
}

uint64_t sub_394A8(xmlTextReader *a1, void *a2)
{
  v4 = [a2 documentState];
  v5 = [a2 generator];
  if (v5)
  {
    v6 = v5;
    AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
    if (AttributeNs)
    {
      v8 = AttributeNs;
      [v6 handleDrawableZOrder:AttributeNs state:v4];
      free(v8);
    }
  }

  return 1;
}

uint64_t sub_39538(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "documentState")];
  [objc_msgSend(a2 "documentState")];
  return 1;
}

uint64_t sub_3957C(void *a1)
{
  [objc_msgSend(a1 "documentState")];
  [objc_msgSend(a1 "documentState")];
  return 1;
}

id sub_395BC(uint64_t a1, void *a2)
{
  v3 = [a2 documentState];
  v4 = [a2 generator];
  if (!v4)
  {
    return &dword_0 + 1;
  }

  v5 = [v4 beginWorkspacePage:objc_msgSend(v3 state:{"topObjectOfClass:", objc_opt_class()), v3}];
  [objc_msgSend(a2 "documentState")];

  return [v5 beginDrawables:v3];
}

uint64_t sub_39668(void *a1)
{
  v2 = [a1 documentState];
  if (![a1 generator])
  {
    return 1;
  }

  v3 = [v2 currentDrawablesGenerator];
  if (!v3)
  {
    return 1;
  }

  v4 = [v3 endDrawables:v2];
  [v2 setCurrentDrawablesGenerator:0];
  return v4;
}

uint64_t sub_396CC(xmlTextReader *a1, void *a2)
{
  v4 = [a2 generator];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  AttributeNs = xmlTextReaderGetAttributeNs(a1, "workspace-name", *(qword_A3600 + 16));
  v7 = [v5 beginWorkspace:AttributeNs state:{objc_msgSend(a2, "documentState")}];
  if (AttributeNs)
  {
    free(AttributeNs);
  }

  return v7;
}

id sub_39760(void *a1)
{
  v2 = [a1 generator];
  if (!v2)
  {
    return &dword_0 + 1;
  }

  v3 = v2;
  v4 = [a1 documentState];

  return [v3 endWorkspace:v4];
}

id sub_397BC(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return &dword_0 + 3;
  }

  v5 = [v4 popRetainedObject];
  v6 = [v4 peekObject];
  [v6 setStylesheet:v5];
  [v4 setStylesheet:v5];

  v7 = [a1 generator];
  if (!v7)
  {
    return &dword_0 + 1;
  }

  return [v7 handleStylesheet:v6 state:v4];
}

uint64_t sub_3986C(xmlTextReader *a1, void *a2)
{
  v4 = [a2 documentState];
  v8 = 0;
  if ([objc_msgSend(v4 "peekObject")])
  {
    v5 = [a2 generator];
    if (v5)
    {
      v6 = [v5 beginDocument:objc_msgSend(v4 state:{"root"), v4}];
      [v4 setGeneratorBeginWasCalled];
    }

    else
    {
      return 1;
    }
  }

  else
  {
    [a2 setWrongFormat:1];
    return sub_3A52C(a1);
  }

  return v6;
}

void sub_39BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_3884C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_39CDC()
{
  sub_37B7C(qword_A22F8, sub_392F0, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A22F8, &dword_0);
  sub_3C544(qword_A2310, sub_393AC);
  __cxa_atexit(j_nullsub_2_4, qword_A2310, &dword_0);
  sub_37B7C(qword_A2320, sub_394A8, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A2320, &dword_0);
  sub_3F198(&unk_A2338, 0, v0, v1, v2, v3, v4, v5, v49);
  __cxa_atexit(sub_3F0F0, &unk_A2338, &dword_0);
  sub_3F3A8(&unk_A2368, "layer-drawables", sub_39538, qword_A2310, sub_3957C, &unk_A2338);
  __cxa_atexit(sub_3F2F8, &unk_A2368, &dword_0);
  sub_37B10(qword_A23A8, &unk_A2368, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A23A8, &dword_0);
  sub_3F198(&unk_A23C0, "geometry", v6, v7, v8, v9, v10, v11, &qword_A20E8);
  __cxa_atexit(sub_3F0F0, &unk_A23C0, &dword_0);
  sub_3F3A8(&unk_A23F0, "workspace-page", sub_395BC, 0, sub_39668, &unk_A23C0);
  __cxa_atexit(sub_3F2F8, &unk_A23F0, &dword_0);
  sub_37B10(qword_A2430, &unk_A23F0, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A2430, &dword_0);
  sub_3F198(&unk_A2448, 0, v12, v13, v14, v15, v16, v17, v50);
  __cxa_atexit(sub_3F0F0, &unk_A2448, &dword_0);
  sub_3F3A8(&unk_A2478, "workspace-zorder", 0, qword_A2320, 0, &unk_A2448);
  __cxa_atexit(sub_3F2F8, &unk_A2478, &dword_0);
  sub_37B10(qword_A24B8, &unk_A2478, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A24B8, &dword_0);
  sub_3F198(&unk_A24D0, "page-info", v18, v19, v20, v21, v22, v23, qword_A2430);
  __cxa_atexit(sub_3F0F0, &unk_A24D0, &dword_0);
  sub_3F3A8(&unk_A2500, "workspace", sub_396CC, 0, sub_39760, &unk_A24D0);
  __cxa_atexit(sub_3F2F8, &unk_A2500, &dword_0);
  sub_37B10(qword_A2540, &unk_A2500, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A2540, &dword_0);
  sub_3F198(&unk_A2558, "workspace", v24, v25, v26, v27, v28, v29, qword_A2540);
  __cxa_atexit(sub_3F0F0, &unk_A2558, &dword_0);
  sub_3F3A8(&unk_A2588, "workspaces", 0, 0, 0, &unk_A2558);
  __cxa_atexit(sub_3F2F8, &unk_A2588, &dword_0);
  sub_37B10(qword_A25C8, &unk_A2588, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A25C8, &dword_0);
  sub_37B10(qword_A25E0, &unk_A2AE8, sub_397BC);
  __cxa_atexit(j_nullsub_2_5, qword_A25E0, &dword_0);
  sub_37AEC(qword_A25F8, &unk_A0A48);
  __cxa_atexit(j_nullsub_2_5, qword_A25F8, &dword_0);
  sub_3EFAC(qword_A2610, "tracked-formulas", v30, v31, v32, v33, v34, v35, &qword_A20E8);
  __cxa_atexit(sub_3430, qword_A2610, &dword_0);
  sub_3F3A8(&unk_A2630, "calculationEngine", 0, 0, 0, qword_A2610);
  __cxa_atexit(sub_3F2F8, &unk_A2630, &dword_0);
  sub_37AEC(qword_A2670, &unk_A2630);
  __cxa_atexit(j_nullsub_2_5, qword_A2670, &dword_0);
  sub_3F198(&unk_A2688, "stylesheet", v36, v37, v38, v39, v40, v41, qword_A25E0);
  __cxa_atexit(sub_3F0F0, &unk_A2688, &dword_0);
  sub_3F3A8(&unk_A26B8, "lasso-doc", sub_3986C, 0, 0, &unk_A2688);
  __cxa_atexit(sub_3F2F8, &unk_A26B8, &dword_0);
  sub_37B10(qword_A26F8, &unk_A26B8, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A26F8, &dword_0);
  sub_3F198(&unk_A2710, "document", v42, v43, v44, v45, v46, v47, qword_A26F8);
  __cxa_atexit(sub_3F0F0, &unk_A2710, &dword_0);
  sub_3F3A8(&unk_A2740, "lasso-initial", 0, 0, 0, &unk_A2710);

  return __cxa_atexit(sub_3F2F8, &unk_A2740, &dword_0);
}

uint64_t sub_3A3D0()
{
  result = pthread_mutex_lock(&stru_9D2C8);
  if (!result)
  {
    byte_A2780 = 1;

    return pthread_mutex_unlock(&stru_9D2C8);
  }

  return result;
}

void sub_3A420(xmlTextReader *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_msgSend(a4 "documentState")];
  v8 = (*(*a2 + 16))(a2);
  *(v8 + 16) = xmlTextReaderDepth(a1) + 1;
  *(v8 + 20) = v7;
  [a4 stateStack];
  sub_386CC(&v9, v8);
}

void sub_3A514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_3884C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3A52C(xmlTextReader *a1)
{
  v1 = xmlTextReaderNext(a1);
  if (v1 == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_3A55C(xmlTextReader *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = xmlTextReaderDepth(a1);
  do
  {
    v11 = a3[5] + a3[4] - 1;
    v12 = (*(a3[1] + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10 >= *(v13 + 16))
    {
      v18 = 3;
      if (!v14)
      {
        continue;
      }

LABEL_12:
      sub_3884C(v14);
      continue;
    }

    v15 = *(v13 + 48);
    if (v15)
    {
      v15(a2, *(v13 + 20));
    }

    sub_3BAB8(a3);
    v16 = a4[5] - 1;
    v17 = (*(a4[1] + (((v16 + a4[4]) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v16 + *(a4 + 32)));
    if (*v17)
    {
      if ((*(**v17 + 24))(*v17, a2, v17[2]) == 3)
      {
        v18 = 1;
        if (v14)
        {
          goto LABEL_12;
        }

        continue;
      }

      v16 = a4[5] - 1;
    }

    a4[5] = v16;
    sub_3BB28(a4, 1);
    v18 = 0;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  while (!v18);
  if (v18 != 3)
  {
    return 3;
  }

  v19 = xmlTextReaderNodeType(a1);
  if (v19 == 14)
  {
    v33 = *(*(a3[1] + (((a3[5] + a3[4] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a3 + 40) + *(a3 + 32) - 1));
    v34 = (*(*v33 + 32))(v33);
    if (!v34)
    {
      return 1;
    }

    v37 = v34;
    v35 = xmlTextReaderConstValue(a1);
    if (!v35)
    {
      return 1;
    }

    v36 = *v35;
    if (v36 == 13 || v36 == 10) && (sub_41E24(v35))
    {
      return 1;
    }

    v31 = a1;
    v32 = a2;
    v30 = v37;
  }

  else
  {
    if (v19 != 3)
    {
      if (v19 == 1)
      {
        v20 = *(*(a3[1] + (((a3[5] + a3[4] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a3 + 40) + *(a3 + 32) - 1));
        v21 = xmlTextReaderConstLocalName(a1);
        v22 = (*(*v20 + 24))(v20, v21);
        if (v22)
        {
          v23 = v22;
          v24 = *(*(*(a3[1] + (((a3[5] + a3[4] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a3 + 40) + *(a3 + 32) - 1)) + 16);
          v25 = [a5 objectStackDepth];
          result = (*(*v23 + 16))(v23, a1, a2);
          if (result != 1)
          {
            return result;
          }

          if (*(*(*(a3[1] + (((a3[5] + a3[4] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a3 + 40) + *(a3 + 32) - 1)) + 16) == v24)
          {
            v27 = *(*v23 + 24);

            return v27(v23, a2, v25);
          }
        }
      }

      return 1;
    }

    v28 = *(*(a3[1] + (((a3[5] + a3[4] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a3 + 40) + *(a3 + 32) - 1));
    v29 = (*(*v28 + 32))(v28);
    if (!v29)
    {
      return 1;
    }

    v30 = v29;
    v31 = a1;
    v32 = a2;
  }

  return v30(v31, v32);
}

void sub_3A96C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_3884C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B594(gzFile_s *a1, void *a2, unsigned int a3)
{
  v4 = gzread(a1, a2, a3);
  if ((v4 & 0x80000000) != 0)
  {
    errnum = 0;
    gzerror(a1, &errnum);
  }

  return v4;
}

uint64_t sub_3B5DC(gzFile_s *a1)
{
  result = gzclose(a1);
  if (result)
  {
    errnum = 0;
    gzerror(a1, &errnum);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_3B620(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          sub_3884C(v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_3B75C(a1);
}

uint64_t sub_3B75C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_3B7AC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_3B75C(a1);
}

__n128 sub_3B858(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 32 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_3B8E4(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  ++*(a1 + 40);
  return result;
}

void *sub_3B8E4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_38F44(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_38B1C(a1, &v10);
}

void sub_3BA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BAB8(void *a1)
{
  v2 = a1[5] - 1;
  v3 = *(*(a1[1] + (((v2 + a1[4]) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v2 + *(a1 + 32)) + 8);
  if (v3)
  {
    sub_3884C(v3);
    v2 = a1[5] - 1;
  }

  a1[5] = v2;

  return sub_3BB28(a1, 1);
}

uint64_t sub_3BB28(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t sub_3C268(xmlTextReader *a1, void *a2)
{
  v3 = sub_4294C(a1, qword_A35E0, "string");
  if (v3)
  {
    v4 = v3;
    [objc_msgSend(a2 "documentState")];
    CFRelease(v4);
  }

  return 1;
}

uint64_t sub_3C2C4(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  CFArrayAppendValue([objc_msgSend(a1 "documentState")], v5);

  return 1;
}

uint64_t sub_3C334(xmlTextReader *a1, uint64_t a2)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, "class", *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 1;
  }

  v5 = AttributeNs;
  v6 = sub_3F55C(&unk_A2CC8);
  if (v6)
  {
    v7 = (*(*v6 + 16))(v6, a1, a2);
  }

  else
  {
    v7 = 1;
  }

  free(v5);
  return v7;
}

uint64_t sub_3C428(xmlTextReader *a1, void *a2)
{
  v4 = sub_41FBC(a1);
  if (v4 > 0x65)
  {
    if (v4 != 102)
    {
      if (v4 == 105)
      {
        v5 = [[NSNumber alloc] initWithInt:sub_42064(a1)];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v7 = sub_420B4(a1);
    v8 = [NSNumber alloc];
    *&v9 = v7;
    v5 = [v8 initWithFloat:v9];
  }

  else
  {
    if (v4 != 99)
    {
      if (v4 == 100)
      {
        v5 = sub_42130(a1);
        goto LABEL_11;
      }

LABEL_8:
      sub_420D0(a1);
      v5 = [[NSNumber alloc] initWithDouble:v6];
      goto LABEL_11;
    }

    v5 = [[NSNumber alloc] initWithBool:sub_42008(a1)];
  }

LABEL_11:
  v10 = v5;
  if (!v5)
  {
    return 3;
  }

  [objc_msgSend(a2 "documentState")];

  return 1;
}

void *sub_3C544(void *result, uint64_t a2)
{
  *result = off_84EF8;
  result[1] = a2;
  return result;
}

uint64_t sub_3C564(xmlTextReader *a1, void *a2)
{
  v4 = [objc_msgSend(a2 "documentState")];
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 3;
  }

  v6 = AttributeNs;
  v7 = [v4 objectWithXmlUid:AttributeNs];
  if (v7)
  {
    [objc_msgSend(a2 "documentState")];
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  free(v6);
  return v8;
}

uint64_t sub_3C610(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  return 1;
}

uint64_t sub_3C65C(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 "documentState")];
  v5 = [[GQDSStylesheet alloc] initWithRoot:v4];
  [v4 addIdentifiedObject:v5 fromCurrentNode:a1];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_3C6D8(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  [objc_msgSend(v3 "peekObject")];
  return 1;
}

uint64_t sub_3C724(uint64_t a1, void *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return 1;
}

uint64_t sub_3C79C(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 peekObject];
  v6.length = CFArrayGetCount(v4);
  v6.location = 0;
  CFArraySortValues(v4, v6, sub_22C5C, 0);
  return 1;
}

uint64_t sub_3C810(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  v4 = [v3 objectStackDepth] - a2;
  if (v4 == 2)
  {
    v5 = [v3 popRetainedObject];
    v6 = [v3 popRetainedObject];
    CFDictionaryAddValue([v3 peekObject], v6, v5);
  }

  else
  {
    v8 = v4;
    if (v4 >= 1)
    {
      do
      {

        --v8;
      }

      while (v8);
    }
  }

  return 1;
}

uint64_t sub_3C8C4(uint64_t a1, void *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return 1;
}

uint64_t sub_3C944(uint64_t a1, xmlTextReaderPtr reader, void *a3)
{
  v6 = xmlTextReaderConstLocalName(reader);
  if (sub_41D24(v6))
  {
    v7 = sub_41D7C(v6);
    v8 = [objc_msgSend(objc_msgSend(a3 "documentState")];
    if (v8)
    {
      v9 = v8;
      AttributeNs = xmlTextReaderGetAttributeNs(reader, off_9D3E0, *(qword_A35E0 + 16));
      if (AttributeNs && (v11 = [objc_msgSend(objc_msgSend(a3 "documentState")]) != 0 || objc_msgSend(v9, "conformsToProtocol:", &OBJC_PROTOCOL___GQDNameMappableWithDefault) && (v11 = objc_msgSend(v9, "createReplacementForMissingObject:processor:", reader, a3)) != 0)
      {
        v12 = v11;
        [objc_msgSend(a3 "documentState")];

        v13 = 1;
        if (!AttributeNs)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v13 = 3;
      if (AttributeNs)
      {
LABEL_18:
        free(AttributeNs);
      }
    }

    else
    {
      v13 = sub_3A52C(reader);
    }

LABEL_19:
    free(v7);
    return v13;
  }

  v14 = [objc_msgSend(objc_msgSend(a3 "documentState")];
  if (v14)
  {
    v15 = [v14 stateForReading];

    sub_3A420(reader, v15, a1, a3);
  }

  return sub_3A52C(reader);
}

uint64_t sub_3CAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 1;
  }
}

void sub_3CB14(uint64_t a1, xmlTextReaderPtr reader, void *a3)
{
  v6 = [objc_msgSend(objc_msgSend(a3 "documentState")];
  if (v6 != objc_opt_class())
  {

    sub_37B34(&unk_A2A18, reader, a3);
  }

  v7 = [v6 stateForReading];

  sub_3A420(reader, v7, a1, a3);
}

uint64_t sub_3CBD4(uint64_t a1, void *a2, int a3)
{
  v4 = [a2 documentState];
  if ([v4 objectStackDepth] < a3)
  {
    return 3;
  }

  if ([v4 objectStackDepth] == a3)
  {
    return 2;
  }

  return 1;
}

void sub_3CC3C(uint64_t a1)
{
  nullsub_2(a1);

  operator delete();
}

void sub_3CC74(uint64_t a1)
{
  nullsub_2(a1);

  operator delete();
}

uint64_t sub_3CCAC()
{
  qword_A2788 = &off_84F28;
  __cxa_atexit(j_nullsub_2_7, &qword_A2788, &dword_0);
  sub_37B7C(qword_A2790, sub_3C268, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A2790, &dword_0);
  sub_37B7C(qword_A27A8, sub_3C268, sub_3C2C4);
  __cxa_atexit(j_nullsub_2_1, qword_A27A8, &dword_0);
  sub_37B7C(qword_A27C0, sub_3C334, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A27C0, &dword_0);
  sub_37B10(qword_A27D8, &unk_A1E08, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A27D8, &dword_0);
  sub_37B10(qword_A27F0, &unk_A1E08, sub_3C2C4);
  __cxa_atexit(j_nullsub_2_5, qword_A27F0, &dword_0);
  sub_37B7C(qword_A2808, sub_3C3E4, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A2808, &dword_0);
  sub_37B7C(qword_A2820, sub_3C3E4, sub_3C2C4);
  __cxa_atexit(j_nullsub_2_1, qword_A2820, &dword_0);
  sub_37B7C(qword_A2838, sub_3C428, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A2838, &dword_0);
  sub_37B7C(qword_A2850, sub_3C428, sub_3C2C4);
  __cxa_atexit(j_nullsub_2_1, qword_A2850, &dword_0);
  qword_A2868 = off_84EF8;
  unk_A2870 = 0;
  __cxa_atexit(j_nullsub_2_4, &qword_A2868, &dword_0);
  qword_A2878 = off_84EF8;
  unk_A2880 = sub_3C2C4;
  __cxa_atexit(j_nullsub_2_4, &qword_A2878, &dword_0);
  sub_37B7C(qword_A2888, sub_3C564, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A2888, &dword_0);
  sub_37B7C(qword_A28A0, sub_3C564, sub_3C2C4);
  __cxa_atexit(j_nullsub_2_1, qword_A28A0, &dword_0);
  sub_37B10(qword_A28B8, &unk_9EBD8, sub_3C610);
  __cxa_atexit(j_nullsub_2_5, qword_A28B8, &dword_0);
  sub_37B10(qword_A28D0, &unk_A3E90, sub_3C610);
  __cxa_atexit(j_nullsub_2_5, qword_A28D0, &dword_0);
  sub_37B10(qword_A28E8, &unk_A17D8, sub_3C610);
  __cxa_atexit(j_nullsub_2_5, qword_A28E8, &dword_0);
  sub_37B10(qword_A2900, &unk_A1498, sub_3C610);
  __cxa_atexit(j_nullsub_2_5, qword_A2900, &dword_0);
  sub_37B10(qword_A2918, &unk_A38E8, sub_3C610);
  __cxa_atexit(j_nullsub_2_5, qword_A2918, &dword_0);
  sub_37B10(qword_A2930, &unk_A3A28, sub_3C610);
  __cxa_atexit(j_nullsub_2_5, qword_A2930, &dword_0);
  sub_37B10(qword_A2948, &unk_9FFC8, sub_3C610);
  __cxa_atexit(j_nullsub_2_5, qword_A2948, &dword_0);
  sub_37B10(qword_A2960, &unk_A1A58, sub_3C610);
  __cxa_atexit(j_nullsub_2_5, qword_A2960, &dword_0);
  sub_37B10(qword_A2978, &unk_A1428, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A2978, &dword_0);
  sub_37B10(qword_A2990, &unk_A3DA0, sub_3C610);
  __cxa_atexit(j_nullsub_2_5, qword_A2990, &dword_0);
  sub_3F198(&unk_A29A8, "filtered-image", v0, v1, v2, v3, v4, v5, qword_A28D0);
  __cxa_atexit(sub_3F0F0, &unk_A29A8, &dword_0);
  sub_3F3A8(&unk_A29D8, "look-for-sharable-objects", 0, 0, 0, &unk_A29A8);
  __cxa_atexit(sub_3F2F8, &unk_A29D8, &dword_0);
  sub_37B10(qword_A2A18, &unk_A29D8, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A2A18, &dword_0);
  sub_3F198(&unk_A2A30, 0, v6, v7, v8, v9, v10, v11, v49);
  __cxa_atexit(sub_3F0F0, &unk_A2A30, &dword_0);
  sub_3F3A8(&unk_A2A60, "style-list", 0, &qword_A2788, 0, &unk_A2A30);
  __cxa_atexit(sub_3F2F8, &unk_A2A60, &dword_0);
  sub_37AEC(qword_A2AA0, &unk_A2A60);
  __cxa_atexit(j_nullsub_2_5, qword_A2AA0, &dword_0);
  sub_3F198(&unk_A2AB8, "styles", v12, v13, v14, v15, v16, v17, qword_A2AA0);
  __cxa_atexit(sub_3F0F0, &unk_A2AB8, &dword_0);
  sub_3F3A8(&unk_A2AE8, "stylesheet", sub_3C65C, 0, sub_3C6D8, &unk_A2AB8);
  __cxa_atexit(sub_3F2F8, &unk_A2AE8, &dword_0);
  sub_3F198(&unk_A2B28, "tabstop", v18, v19, v20, v21, v22, v23, qword_A27F0);
  __cxa_atexit(sub_3F0F0, &unk_A2B28, &dword_0);
  sub_3F3A8(&unk_A2B58, "wp-tabs", sub_3C724, 0, sub_3C79C, &unk_A2B28);
  __cxa_atexit(sub_3F2F8, &unk_A2B58, &dword_0);
  sub_37B10(qword_A2B98, &unk_A2B58, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A2B98, &dword_0);
  sub_37B10(qword_A2BB0, &unk_A2B58, sub_3C2C4);
  __cxa_atexit(j_nullsub_2_5, qword_A2BB0, &dword_0);
  sub_3F198(&unk_A2BC8, "string", v24, v25, v26, v27, v28, v29, qword_A27A8);
  __cxa_atexit(sub_3F0F0, &unk_A2BC8, &dword_0);
  sub_3F3A8(&unk_A2C28, "array", sub_3C724, &qword_A2878, 0, &unk_A2BC8);
  __cxa_atexit(sub_3F2F8, &unk_A2C28, &dword_0);
  sub_37AEC(qword_A2C68, &unk_A2C28);
  __cxa_atexit(j_nullsub_2_5, qword_A2C68, &dword_0);
  sub_37B10(qword_A2BF8, &unk_A2C28, sub_3C2C4);
  __cxa_atexit(j_nullsub_2_5, qword_A2BF8, &dword_0);
  sub_3F198(&unk_A2C80, "string", v30, v31, v32, v33, v34, v35, qword_A2790);
  __cxa_atexit(sub_3F0F0, &unk_A2C80, &dword_0);
  sub_3F3A8(&unk_A2CC8, "name-mapped-object", 0, &qword_A2868, 0, &unk_A2C80);
  __cxa_atexit(sub_3F2F8, &unk_A2CC8, &dword_0);
  sub_3F198(&unk_A2D08, "key", v36, v37, v38, v39, v40, v41, qword_A27C0);
  __cxa_atexit(sub_3F0F0, &unk_A2D08, &dword_0);
  sub_3F3A8(&unk_A2D38, "dictionary-pair", 0, 0, sub_3C810, &unk_A2D08);
  __cxa_atexit(sub_3F2F8, &unk_A2D38, &dword_0);
  sub_37B10(qword_A2D78, &unk_A2D38, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A2D78, &dword_0);
  sub_3F198(&unk_A2D90, "pair", v42, v43, v44, v45, v46, v47, qword_A2D78);
  __cxa_atexit(sub_3F0F0, &unk_A2D90, &dword_0);
  sub_3F3A8(&unk_A2DC0, "dictionary-object", sub_3C8C4, 0, 0, &unk_A2D90);
  __cxa_atexit(sub_3F2F8, &unk_A2DC0, &dword_0);
  sub_37B10(qword_A2CB0, &unk_A2DC0, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A2CB0, &dword_0);
  sub_37B10(qword_A2C10, &unk_A2DC0, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A2C10, &dword_0);
}

uint64_t sub_3D94C(xmlTextReader *a1, void *a2)
{
  v3 = sub_4294C(a1, qword_A35E8, "name");
  v4 = [[GQDWPHeaderFooterStorage alloc] initWithName:v3];
  if (v3)
  {
    CFRelease(v3);
  }

  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_3D9CC(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [objc_msgSend(a1 "documentState")];
  v6 = [v4 peekObject];
  if (v5)
  {
    if (v6)
    {
      CFArrayAppendValue(v6, v5);
    }
  }

  return 1;
}

uint64_t sub_3DA44(uint64_t a1, void *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  [objc_msgSend(a2 "documentState")];
  CFRelease(Mutable);
  return 1;
}

uint64_t sub_3DA98(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  [objc_msgSend(a1 "generator")];
  CFRelease(v5);
  return 1;
}

uint64_t sub_3DB0C(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  [objc_msgSend(a1 "generator")];
  CFRelease(v5);
  return 1;
}

uint64_t sub_3DB80(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  v6 = [a1 generator];
  if (v6)
  {
    v7 = [objc_msgSend(v6 enterBodyStorage:{v4), "handleBodyStorage:state:", v5, v4}];
  }

  else
  {
    v7 = &dword_0 + 1;
  }

  return v7;
}

uint64_t sub_3DC08(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return 3;
  }

  v5 = [v4 popRetainedObject];
  if ([a1 generator] && (v6 = objc_msgSend(v4, "currentDrawablesGenerator")) != 0 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [v7 handleDrawable:v5 state:v4];
  }

  else
  {
    v8 = &dword_0 + 1;
  }

  return v8;
}

id sub_3DCB8(xmlTextReader *a1, void *a2)
{
  v7 = 0;
  if (!sub_42384(a1, qword_A3608, "page", &v7))
  {
    return &dword_0 + 3;
  }

  v3 = [a2 documentState];
  v4 = [a2 generator];
  result = [v4 setCurrentPageIndex:(v7 - 1) state:v3];
  if (v4)
  {
    v6 = [v4 enterMainDrawablesForPage:v7 state:v3];
    [objc_msgSend(a2 "documentState")];
    return [v6 beginDrawables:v3];
  }

  return result;
}

id sub_3DD70(void *a1)
{
  v2 = [a1 documentState];
  if ([a1 generator] && (v3 = objc_msgSend(v2, "currentDrawablesGenerator")) != 0)
  {
    v4 = [v3 endDrawables:v2];
    [v2 setCurrentDrawablesGenerator:0];
  }

  else
  {
    v4 = &dword_0 + 1;
  }

  [objc_msgSend(v2 "currentWrapPointGenerator")];
  return v4;
}

uint64_t sub_3DDE0(xmlTextReader *a1, void *a2)
{
  v7 = -1;
  v8 = -1;
  sub_42384(a1, qword_A3608, "page-start", &v8);
  sub_42384(a1, qword_A3608, "page-count", &v7);
  v4 = objc_alloc_init(GQPSectionDrawable);
  v5 = v7;
  v4->mPageRange.location = v8;
  v4->mPageRange.length = v5;
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_3DE80(void *a1, int a2)
{
  if ([objc_msgSend(a1 "documentState")] <= a2)
  {
    return 3;
  }

  v3 = [a1 generator];
  v4 = [objc_msgSend(a1 "documentState")];
  v5 = v4;
  v6 = &dword_0 + 1;
  if (v3 && v4 && v4[1] != -1 && v4[2] != -1 && v4[3])
  {
    v6 = [v3 handleSectionStyle:? pageIndex:? numPages:? state:?];
  }

  return v6;
}

id sub_3DF28(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] <= a2)
  {
    return &dword_0 + 3;
  }

  v5 = [v4 popRetainedObject];
  v6 = [v4 peekObject];
  [v6 setStylesheet:v5];
  [v4 setStylesheet:v5];

  v7 = [a1 generator];
  if (!v7)
  {
    return &dword_0 + 1;
  }

  return [v7 handleStylesheet:v6 state:v4];
}

uint64_t sub_3DFD8(xmlTextReader *a1, void *a2)
{
  v4 = [a2 documentState];
  v8 = 0;
  if ([objc_msgSend(v4 "peekObject")])
  {
    v5 = [a2 generator];
    if (v5)
    {
      v6 = [v5 beginPublication:objc_msgSend(v4 state:{"root"), v4}];
      [v4 setGeneratorBeginWasCalled];
    }

    else
    {
      return 1;
    }
  }

  else
  {
    [a2 setWrongFormat:1];
    return sub_3A52C(a1);
  }

  return v6;
}

void sub_3E324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_3884C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3E460()
{
  sub_3F5AC(&unk_A2E00, "text-storage", &unk_A1D98, sub_3D94C, sub_3D9CC, &unk_A1730);
  __cxa_atexit(sub_40BC, &unk_A2E00, &dword_0);
  sub_37B10(qword_A2E48, &unk_A2E00, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A2E48, &dword_0);
  sub_3F198(&unk_A2E60, "header", v0, v1, v2, v3, v4, v5, qword_A2E48);
  __cxa_atexit(sub_3F0F0, &unk_A2E60, &dword_0);
  sub_3F198(&unk_A2E90, "footer", v6, v7, v8, v9, v10, v11, qword_A2E48);
  __cxa_atexit(sub_3F0F0, &unk_A2E90, &dword_0);
  sub_3F3A8(&unk_A2EC0, "headers", sub_3DA44, 0, sub_3DA98, &unk_A2E60);
  __cxa_atexit(sub_3F2F8, &unk_A2EC0, &dword_0);
  sub_3F3A8(&unk_A2F00, "footers", sub_3DA44, 0, sub_3DB0C, &unk_A2E90);
  __cxa_atexit(sub_3F2F8, &unk_A2F00, &dword_0);
  sub_37AEC(qword_A2F40, &unk_A2EC0);
  __cxa_atexit(j_nullsub_2_5, qword_A2F40, &dword_0);
  sub_37AEC(qword_A2F58, &unk_A2F00);
  __cxa_atexit(j_nullsub_2_5, qword_A2F58, &dword_0);
  sub_37B10(qword_A2F70, &unk_A1210, sub_3DB80);
  __cxa_atexit(j_nullsub_2_5, qword_A2F70, &dword_0);
  sub_3C544(qword_A2F88, sub_3DC08);
  __cxa_atexit(j_nullsub_2_4, qword_A2F88, &dword_0);
  sub_3EFAC(qword_A2F98, 0, v12, v13, v14, v15, v16, v17, v70);
  __cxa_atexit(sub_3430, qword_A2F98, &dword_0);
  sub_3F3A8(&unk_A2FB8, "drawables-group", sub_3DCB8, qword_A2F88, sub_3DD70, qword_A2F98);
  __cxa_atexit(sub_3F2F8, &unk_A2FB8, &dword_0);
  sub_37AEC(qword_A2FF8, &unk_A2FB8);
  __cxa_atexit(j_nullsub_2_5, qword_A2FF8, &dword_0);
  v18 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v18, "mStyle");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37CAC(&unk_A3010, Offset);
  __cxa_atexit(j_nullsub_2_3, &unk_A3010, &dword_0);
  sub_3F198(&unk_A3028, 0, v21, v22, v23, v24, v25, v26, v71);
  __cxa_atexit(sub_3F0F0, &unk_A3028, &dword_0);
  sub_3F3A8(&unk_A3058, "section style", 0, &unk_A3010, 0, &unk_A3028);
  __cxa_atexit(sub_3F2F8, &unk_A3058, &dword_0);
  sub_37B10(qword_A3098, &unk_A3058, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A3098, &dword_0);
  sub_3EFAC(qword_A30B0, "style", v27, v28, v29, v30, v31, v32, qword_A3098);
  __cxa_atexit(sub_3430, qword_A30B0, &dword_0);
  sub_3F3A8(&unk_A30D0, "section drawables", sub_3DDE0, 0, sub_3DE80, qword_A30B0);
  __cxa_atexit(sub_3F2F8, &unk_A30D0, &dword_0);
  sub_37AEC(qword_A3110, &unk_A30D0);
  __cxa_atexit(j_nullsub_2_5, qword_A3110, &dword_0);
  sub_3EFAC(qword_A3128, "section-drawables", v33, v34, v35, v36, v37, v38, qword_A3110);
  __cxa_atexit(sub_3430, qword_A3128, &dword_0);
  sub_3F3A8(&unk_A3148, "masters-group", 0, 0, 0, qword_A3128);
  __cxa_atexit(sub_3F2F8, &unk_A3148, &dword_0);
  sub_37AEC(qword_A3188, &unk_A3148);
  __cxa_atexit(j_nullsub_2_5, qword_A3188, &dword_0);
  sub_3EFAC(qword_A31A0, "masters-group", v39, v40, v41, v42, v43, v44, qword_A3188);
  __cxa_atexit(sub_3430, qword_A31A0, &dword_0);
  sub_3F3A8(&unk_A31C0, "drawables", 0, 0, 0, qword_A31A0);
  __cxa_atexit(sub_3F2F8, &unk_A31C0, &dword_0);
  sub_37AEC(qword_A3200, &unk_A31C0);
  __cxa_atexit(j_nullsub_2_5, qword_A3200, &dword_0);
  sub_37AEC(qword_A3218, &unk_A0A48);
  __cxa_atexit(j_nullsub_2_5, qword_A3218, &dword_0);
  sub_3EFAC(qword_A3230, "tracked-formulas", v45, v46, v47, v48, v49, v50, &qword_A20E8);
  __cxa_atexit(sub_3430, qword_A3230, &dword_0);
  sub_3F3A8(&unk_A3250, "calculationEngine", 0, 0, 0, qword_A3230);
  __cxa_atexit(sub_3F2F8, &unk_A3250, &dword_0);
  sub_37AEC(qword_A3290, &unk_A3250);
  __cxa_atexit(j_nullsub_2_5, qword_A3290, &dword_0);
  sub_37B10(qword_A32A8, &unk_A2AE8, sub_3DF28);
  __cxa_atexit(j_nullsub_2_5, qword_A32A8, &dword_0);
  sub_3F198(&unk_A32C0, "stylesheet", v51, v52, v53, v54, v55, v56, qword_A32A8);
  __cxa_atexit(sub_3F0F0, &unk_A32C0, &dword_0);
  sub_3F3A8(&unk_A32F0, "section-proto", 0, 0, 0, &unk_A32C0);
  __cxa_atexit(sub_3F2F8, &unk_A32F0, &dword_0);
  sub_37B10(qword_A3330, &unk_A32F0, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A3330, &dword_0);
  sub_3F198(&unk_A3348, "version-history", v57, v58, v59, v60, v61, v62, &qword_A20E8);
  __cxa_atexit(sub_3F0F0, &unk_A3348, &dword_0);
  sub_3F3A8(&unk_A3378, "publication", sub_3DFD8, 0, 0, &unk_A3348);
  __cxa_atexit(sub_3F2F8, &unk_A3378, &dword_0);
  sub_37B10(qword_A33B8, &unk_A3378, 0);
  __cxa_atexit(j_nullsub_2_5, qword_A33B8, &dword_0);
  sub_3F198(&unk_A33D0, "document", v63, v64, v65, v66, v67, v68, qword_A33B8);
  __cxa_atexit(sub_3F0F0, &unk_A33D0, &dword_0);
  sub_3F3A8(&unk_A3400, "initial", 0, 0, 0, &unk_A33D0);

  return __cxa_atexit(sub_3F2F8, &unk_A3400, &dword_0);
}

void *sub_3EE34(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      sub_3F840(result, a2);
    }

    sub_9D48();
  }

  return result;
}

void sub_3EED4(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_9D48();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_3F840(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *sub_3EFAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = off_84F88;
  a1[1] = 0;
  v11 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  v17 = &a9;
  sub_3EE34(a1 + 1, 3uLL);
  if (a2)
  {
    do
    {
      v12 = v17++;
      v13 = *v12;
      *&v16 = a2;
      *(&v16 + 1) = v13;
      sub_3EED4(v11, &v16);
      v14 = v17++;
      a2 = *v14;
    }

    while (*v14);
  }

  return a1;
}

void sub_3F058(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_3F078(uint64_t a1, xmlChar *str2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (**v2 != *str2 || !xmlStrEqual(*v2, str2))
    {
      v2 += 2;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return v2[1];
  }
}

void *sub_3F0F0(void *a1)
{
  *a1 = off_84FB0;
  sub_3F888((a1 + 1));
  return a1;
}

void sub_3F134(void *a1)
{
  *a1 = off_84FB0;
  sub_3F888((a1 + 1));

  operator delete();
}

uint64_t sub_3F198(uint64_t a1, const xmlChar *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 8) = 0u;
  v10 = (a1 + 8);
  *a1 = off_84FB0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  v16 = &a9;
  if (a2)
  {
    do
    {
      v11 = v16++;
      v12 = *v11;
      v15 = a2;
      v17 = &v15;
      sub_3F8D4(v10, &v15)[3] = v12;
      v13 = v16++;
      a2 = *v13;
    }

    while (*v13);
  }

  return a1;
}

uint64_t **sub_3F27C(uint64_t a1, const xmlChar *a2)
{
  v3 = a2;
  result = sub_3FD7C((a1 + 8), &v3);
  if (result)
  {
    return result[3];
  }

  return result;
}

uint64_t sub_3F2B0(uint64_t a1)
{
  *a1 = off_84FD8;
  free(*(a1 + 8));
  return a1;
}

uint64_t sub_3F2F8(uint64_t a1)
{
  *a1 = off_84FD8;
  free(*(a1 + 8));
  return a1;
}

void sub_3F340(uint64_t a1)
{
  *a1 = off_84FD8;
  free(*(a1 + 8));

  operator delete();
}

uint64_t sub_3F3A8(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_84FD8;
  *(a1 + 8) = strdup(__s1);
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  return a1;
}

uint64_t sub_3F424(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = off_84FD8;
  *(a1 + 8) = strdup(__s1);
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 32) = a3;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 56) = a7;
  return a1;
}

uint64_t sub_3F4A4(uint64_t a1, uint64_t a2)
{
  *a1 = off_84FD8;
  *(a1 + 8) = strdup(*(a2 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_3F55C(uint64_t a1)
{
  result = (*(**(a1 + 56) + 16))(*(a1 + 56));
  if (!result)
  {
    return *(a1 + 24);
  }

  return result;
}

uint64_t sub_3F5AC(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_84FD8;
  v11 = strdup(__s1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  *(a1 + 64) = a3;
  *a1 = off_85010;
  *(a1 + 8) = v11;
  return a1;
}

uint64_t sub_3F6A4(uint64_t a1)
{
  result = (*(**(a1 + 56) + 16))(*(a1 + 56));
  if (!result)
  {
    v3 = *(**(a1 + 64) + 24);

    return v3();
  }

  return result;
}

void sub_3F738(void *a1)
{
  *a1 = off_84F88;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_3F7B0(uint64_t a1)
{
  *a1 = off_84FD8;
  free(*(a1 + 8));

  operator delete();
}

void sub_3F840(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_9A2C();
}

uint64_t sub_3F888(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t **sub_3F8D4(void *a1, const xmlChar **a2)
{
  v4 = sub_41E64(*a2);
  v5 = v4;
  v6 = a1[1];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v6 <= v4)
    {
      v9 = v4 % v6;
    }
  }

  else
  {
    v9 = (v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!xmlStrEqual(v11[2], *a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_3FB28(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_3FC18(a1, prime);
    }
  }
}

void sub_3FC18(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_9A2C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **sub_3FD7C(void *a1, const xmlChar **a2)
{
  v4 = sub_41E64(*a2);
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v5 <= v4)
    {
      v9 = v4 % v5;
    }
  }

  else
  {
    v9 = (v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (xmlStrEqual(i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= v5)
        {
          v12 %= v5;
        }
      }

      else
      {
        v12 &= v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_3FE78(xmlTextReader *a1, void *a2)
{
  if ([objc_msgSend(objc_msgSend(a2 "documentState")])
  {

    sub_3A420(a1, &unk_A34A0, 0, a2);
  }

  return sub_3A52C(a1);
}

uint64_t sub_3FF10(xmlTextReader *a1, void *a2)
{
  v3 = [objc_msgSend(a2 "documentState")];
  v4 = sub_41FBC(a1);
  if (v4 > 0x65)
  {
    if (v4 == 102)
    {
      *&v11 = sub_420B4(a1);
      [v3 handleFloatValue:v11];
    }

    else
    {
      if (v4 != 105)
      {
        goto LABEL_9;
      }

      [v3 handleIntValue:sub_42064(a1)];
    }
  }

  else
  {
    if (v4 != 99)
    {
      if (v4 == 100)
      {
        v5 = sub_42130(a1);
        if (v5)
        {
          v6 = v5;
          [(xmlChar *)v5 doubleValue];
          v8 = v7;
        }

        else
        {
          v8 = 0.0;
        }

        v10 = v3;
        v9 = v8;
        goto LABEL_14;
      }

LABEL_9:
      sub_420D0(a1);
      v10 = v3;
LABEL_14:
      [v10 handleDoubleValue:v9];
      return 1;
    }

    [v3 handleBoolValue:sub_42008(a1)];
  }

  return 1;
}

uint64_t sub_40004(void *a1)
{
  v2 = [objc_msgSend(a1 "documentState")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [objc_msgSend(a1 "documentState")];
    v2 = [objc_msgSend(a1 "documentState")];
    [v2 handleObject:v3];
    v4 = v3;
  }

  [v2 doneProperty];
  return 1;
}

id sub_40090(xmlTextReader *a1, uint64_t a2)
{
  v4 = [[GQPStyleReader alloc] initWithStyleType:[GQDSStyle styleTypeForNodeName:xmlTextReaderConstLocalName(a1)]];
  v5 = [(GQPStyleReader *)v4 beginReadingFromReader:a1 processor:a2];

  return v5;
}

id sub_40104(void *a1, int a2)
{
  v4 = [a1 documentState];
  if ([v4 objectStackDepth] < a2)
  {
    return &dword_0 + 3;
  }

  if ([v4 objectStackDepth] == a2)
  {
    return &dword_0 + 2;
  }

  v6 = [v4 peekObject];

  return [v6 doneReading:a1];
}

uint64_t sub_406F0()
{
  sub_37B7C(qword_A3440, sub_3FE78, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A3440, &dword_0);
  sub_37B7C(qword_A3458, sub_3FF10, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A3458, &dword_0);
  sub_3F198(&unk_A3470, "number", v0, v1, v2, v3, v4, v5, qword_A3458);
  __cxa_atexit(sub_3F0F0, &unk_A3470, &dword_0);
  sub_3F5AC(&unk_A34A0, "style-property", &unk_A2CC8, 0, sub_40004, &unk_A3470);
  __cxa_atexit(sub_40BC, &unk_A34A0, &dword_0);
  sub_3F198(&unk_A34E8, 0, v6, v7, v8, v9, v10, v11, v19);
  __cxa_atexit(sub_3F0F0, &unk_A34E8, &dword_0);
  sub_3F3A8(&unk_A3518, "style-property-map", 0, qword_A3440, 0, &unk_A34E8);
  __cxa_atexit(sub_3F2F8, &unk_A3518, &dword_0);
  sub_37AEC(qword_A3558, &unk_A3518);
  __cxa_atexit(j_nullsub_2_5, qword_A3558, &dword_0);
  sub_3F198(&unk_A3570, "property-map", v12, v13, v14, v15, v16, v17, qword_A3558);
  __cxa_atexit(sub_3F0F0, &unk_A3570, &dword_0);
  sub_3F3A8(&unk_A35A0, "style", sub_40090, 0, sub_40104, &unk_A3570);

  return __cxa_atexit(sub_3F2F8, &unk_A35A0, &dword_0);
}

void sub_40F5C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x40F44);
  }

  _Unwind_Resume(a1);
}

CFMutableStringRef sub_41BA4(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  for (i = 0; i != 4; ++i)
  {
    v3 = off_808F0[i];
    v4 = off_80910[i];
    v6.length = CFStringGetLength(MutableCopy);
    v6.location = 0;
    CFStringFindAndReplace(MutableCopy, v3, v4, v6, 0);
  }

  return MutableCopy;
}

void sub_41C34()
{
  if ((byte_A4338 & 1) == 0)
  {
    byte_A4338 = 1;
    xmlInitParser();
    qword_A35E0 = xmlNewNs(0, "http://developer.apple.com/namespaces/sfa", "sfa");
    qword_A35E8 = xmlNewNs(0, "http://developer.apple.com/namespaces/sf", "sf");
    qword_A35F0 = xmlNewNs(0, "http://www.w3.org/2001/XMLSchema-instance", "xsi");
    qword_A35F8 = xmlNewNs(0, "http://developer.apple.com/namespaces/keynote2", "key");
    qword_A3600 = xmlNewNs(0, "http://developer.apple.com/namespaces/ls", "ls");
    qword_A3608 = xmlNewNs(0, "http://developer.apple.com/namespaces/sl", "sl");
  }
}

const xmlChar *sub_41D24(const xmlChar *result)
{
  if (result)
  {
    v1 = result;
    v2 = xmlStrlen(result);
    if (v2 < 5)
    {
      return 0;
    }

    else
    {
      return (xmlStrcmp(&v1[v2 - 4], "-ref") == 0);
    }
  }

  return result;
}

char *sub_41D7C(xmlChar *str)
{
  if (str && (v2 = xmlStrlen(str), v2 >= 5) && (v3 = v2, !xmlStrcmp(&str[v2 - 4], "-ref")))
  {
    v5 = malloc_type_malloc((v3 - 3), 0x100004077774924uLL);
    result = strncpy(v5, str, (v3 - 4));
    result[v3 - 4] = 0;
  }

  else
  {

    return xmlStrdup(str);
  }

  return result;
}

uint64_t sub_41E24(_BYTE *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v2 = a1 + 1;
  do
  {
    v4 = v1 == 13 || (v1 - 9) < 2;
    result = v1 == 32 || v4;
    if (!result)
    {
      break;
    }

    v6 = *v2++;
    v1 = v6;
  }

  while (v6);
  return result;
}

uint64_t sub_41E64(const xmlChar *a1)
{
  v1 = a1;
  v2 = xmlStrlen(a1);
  if (v2 >= 0x11)
  {
    v6 = 0;
    v4 = v2;
    do
    {
      v4 = 257 * v4 + v1[v6++];
    }

    while (v6 != 8);
    v7 = -8;
    do
    {
      v4 = 257 * v4 + v1[v2 + v7++];
    }

    while (v7);
  }

  else if (v2)
  {
    v3 = v2;
    v4 = v2;
    do
    {
      v5 = *v1++;
      v4 = 257 * v4 + v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return ((v4 << v2) + v4);
}

uint64_t sub_41FBC(xmlTextReader *a1)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, "type", *(qword_A35E0 + 16));
  if (AttributeNs)
  {
    v2 = *AttributeNs;
    free(AttributeNs);
  }

  else
  {
    return 0;
  }

  return v2;
}

BOOL sub_42008(xmlTextReader *a1)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, "number", *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 0;
  }

  v2 = AttributeNs;
  v3 = atoi(AttributeNs) != 0;
  free(v2);
  return v3;
}

xmlChar *sub_42064(xmlTextReader *a1)
{
  result = xmlTextReaderGetAttributeNs(a1, "number", *(qword_A35E0 + 16));
  if (result)
  {
    v2 = result;
    v3 = atoi(result);
    free(v2);
    return v3;
  }

  return result;
}

void sub_420D0(xmlTextReader *a1)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, "number", *(qword_A35E0 + 16));
  if (AttributeNs)
  {
    v2 = AttributeNs;
    atof(AttributeNs);
    free(v2);
  }
}

xmlChar *sub_42130(xmlTextReader *a1)
{
  result = xmlTextReaderGetAttributeNs(a1, "number", *(qword_A35E0 + 16));
  if (result)
  {
    v2 = result;
    v3 = [[NSString alloc] initWithUTF8String:result];
    v4 = [[NSDecimalNumber alloc] initWithString:v3];

    free(v2);
    return v4;
  }

  return result;
}

uint64_t sub_421B4(xmlTextReader *a1, uint64_t a2, xmlChar *localName, _BYTE *a4)
{
  if (a2)
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = 0;
  }

  AttributeNs = xmlTextReaderGetAttributeNs(a1, localName, v6);
  if (!AttributeNs)
  {
    return 0;
  }

  v8 = AttributeNs;
  v11 = 0;
  v9 = sub_42238(AttributeNs, &v11);
  free(v8);
  if (v9)
  {
    *a4 = v11;
  }

  return v9;
}

uint64_t sub_42238(const xmlChar *a1, _BYTE *a2)
{
  if (!xmlStrcasecmp(a1, "TRUE"))
  {
    goto LABEL_4;
  }

  if (!xmlStrcasecmp(a1, "FALSE"))
  {
    goto LABEL_6;
  }

  if (xmlStrEqual(a1, "1"))
  {
LABEL_4:
    LOBYTE(v4) = 1;
LABEL_7:
    *a2 = v4;
    return 1;
  }

  if (xmlStrEqual(a1, "0"))
  {
    goto LABEL_6;
  }

  if (!xmlStrcasecmp(a1, "y"))
  {
    goto LABEL_4;
  }

  if (!xmlStrcasecmp(a1, "n"))
  {
    goto LABEL_6;
  }

  if (!xmlStrcasecmp(a1, "t"))
  {
    goto LABEL_4;
  }

  if (!xmlStrcasecmp(a1, "f"))
  {
LABEL_6:
    LOBYTE(v4) = 0;
    goto LABEL_7;
  }

  if (!xmlStrcasecmp(a1, "yes"))
  {
    goto LABEL_4;
  }

  v4 = xmlStrcasecmp(a1, "no");
  result = 0;
  if (!v4)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_42340(xmlTextReader *a1, uint64_t a2, xmlChar *a3, char a4)
{
  v8 = 0;
  v5 = sub_421B4(a1, a2, a3, &v8);
  v6 = v8;
  if (!v5)
  {
    v6 = a4;
  }

  return v6 & 1;
}

uint64_t sub_42384(xmlTextReader *a1, uint64_t a2, xmlChar *localName, void *a4)
{
  if (a2)
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = 0;
  }

  AttributeNs = xmlTextReaderGetAttributeNs(a1, localName, v6);
  if (!AttributeNs)
  {
    return 0;
  }

  v8 = AttributeNs;
  v11 = 0;
  v9 = sub_42408(AttributeNs, &v11);
  free(v8);
  if (v9)
  {
    *a4 = v11;
  }

  return v9;
}

uint64_t sub_42408(const char *a1, uint64_t *a2)
{
  __endptr = 0;
  v4 = strtol(a1, &__endptr, 10);
  if (*__endptr || !*a1)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t sub_42468(xmlTextReader *a1, uint64_t a2, xmlChar *a3, uint64_t a4)
{
  v6 = 0;
  if (sub_42384(a1, a2, a3, &v6))
  {
    return v6;
  }

  else
  {
    return a4;
  }
}

uint64_t sub_424A8(xmlTextReader *a1, uint64_t a2, xmlChar *localName, void *a4)
{
  if (a2)
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = 0;
  }

  AttributeNs = xmlTextReaderGetAttributeNs(a1, localName, v6);
  if (!AttributeNs)
  {
    return 0;
  }

  v8 = AttributeNs;
  v11 = 0;
  v9 = sub_4252C(AttributeNs, &v11);
  free(v8);
  if (v9)
  {
    *a4 = v11;
  }

  return v9;
}

uint64_t sub_4252C(const char *a1, unint64_t *a2)
{
  __endptr = 0;
  v4 = strtoul(a1, &__endptr, 10);
  if (*__endptr || !*a1)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t sub_4258C(xmlTextReader *a1, uint64_t a2, xmlChar *a3, uint64_t a4)
{
  v6 = 0;
  if (sub_424A8(a1, a2, a3, &v6))
  {
    return v6;
  }

  else
  {
    return a4;
  }
}

uint64_t sub_425CC(xmlTextReader *a1, uint64_t a2, xmlChar *localName, void *a4)
{
  if (a2)
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = 0;
  }

  AttributeNs = xmlTextReaderGetAttributeNs(a1, localName, v6);
  if (!AttributeNs)
  {
    return 0;
  }

  v8 = AttributeNs;
  v11 = 0;
  v9 = sub_42650(AttributeNs, &v11);
  free(v8);
  if (v9)
  {
    *a4 = v11;
  }

  return v9;
}

uint64_t sub_42650(const char *a1, unint64_t *a2)
{
  __endptr = 0;
  v4 = strtoull(a1, &__endptr, 10);
  if (*__endptr || !*a1)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

BOOL sub_426B0(xmlTextReader *a1, uint64_t a2, xmlChar *localName, void *a4)
{
  if (a2)
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = 0;
  }

  AttributeNs = xmlTextReaderGetAttributeNs(a1, localName, v6);
  if (!AttributeNs)
  {
    return 0;
  }

  v8 = AttributeNs;
  v11 = 0;
  v9 = sub_42734(AttributeNs, &v11);
  free(v8);
  if (v9)
  {
    *a4 = v11;
  }

  return v9;
}

BOOL sub_42734(uint64_t a1, double *a2)
{
  v3 = (a1 - 1);
  do
  {
    v4 = *(v3 + 1);
    if (v4 < 0)
    {
      v5 = __maskrune(v3[1], 0x4000uLL);
    }

    else
    {
      v5 = _DefaultRuneLocale.__runetype[v4] & 0x4000;
    }

    ++v3;
  }

  while (v5);
  v6 = *v3;
  v7 = v6 == 43;
  if (v6 == 43)
  {
    v8 = v3 + 1;
  }

  else
  {
    v8 = v3;
  }

  v9 = xmlStrlen(v8);
  if (v9 >= 3)
  {
    v10 = v9;
    if (xmlStrncasecmp(v8, "NAN", 3))
    {
      if (xmlStrncasecmp(v8, "INF", 3))
      {
        if (v10 == 3 || xmlStrncasecmp(v8, "-INF", 4))
        {
          goto LABEL_14;
        }

        result = 1;
        v13 = 0xFFF0000000000000;
      }

      else
      {
        result = 1;
        v13 = 0x7FF0000000000000;
      }
    }

    else
    {
      result = 1;
      v13 = 0x7FF8000000000000;
    }

    v11 = *&v13;
    if (!a2)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_14:
  v14 = 0;
  v11 = strtod(v8, &v14);
  if (*v14)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = v3[v7] != 0;
    if (!a2)
    {
      return result;
    }
  }

LABEL_23:
  if (result)
  {
    *a2 = v11;
  }

  return result;
}

float sub_42888(xmlTextReader *a1, uint64_t a2, xmlChar *a3, float *a4)
{
  v6 = 0.0;
  if (sub_426B0(a1, a2, a3, &v6))
  {
    result = v6;
    *a4 = result;
  }

  return result;
}

double sub_428CC(xmlTextReader *a1, uint64_t a2, xmlChar *a3, double *a4)
{
  v6 = 0.0;
  if (sub_426B0(a1, a2, a3, &v6))
  {
    result = v6;
    *a4 = v6;
  }

  return result;
}

xmlChar *sub_4294C(xmlTextReader *a1, uint64_t a2, xmlChar *localName)
{
  if (a2)
  {
    v4 = *(a2 + 16);
  }

  else
  {
    v4 = 0;
  }

  result = xmlTextReaderGetAttributeNs(a1, localName, v4);
  if (result)
  {
    v6 = result;
    v7 = xmlStrlen(result);
    v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
    free(v6);
    return v8;
  }

  return result;
}