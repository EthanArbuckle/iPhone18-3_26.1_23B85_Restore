id sub_295693A0C(__int16 a1)
{
  v1 = (3 * a1 * a1);
  v2 = malloc_type_malloc(8 * v1, 0x617D8318uLL);
  v3 = malloc_type_malloc(4 * v1, 0x9D6492AFuLL);
  if (!v2)
  {
    sub_2956C8E5C();
  }

  v5 = v3;
  if (!v3)
  {
    sub_2956C8E30();
  }

  if (v1)
  {
    v6 = 0;
    v7 = v3 + 1;
    v8 = v2 + 2;
    v9 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(3.0)) / v1;
    do
    {
      _H0 = v6;
      __asm { FCVT            S0, H0 }

      _S1 = floorf(sqrtf((_S0 + 0.5) / 3.0));
      __asm
      {
        FCVT            H1, S1
        FCVT            S2, H1
      }

      _S0 = _S0 + ((_S2 * -3.0) * _S2);
      __asm { FCVT            H0, S0 }

      _S3 = (_S2 * 6.0) + 3.0;
      __asm { FCVT            H3, S3 }

      *&_S3 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *&_S3;
      __asm
      {
        FCVT            S4, H3
        FCVT            S0, H0
      }

      _S0 = (_S4 + _S4) * _S0;
      __asm { FCVT            H0, S0 }

      _S2 = (_S2 + 1.0) * (_S2 + 1.0);
      __asm { FCVT            H2, S2 }

      *(v8 - 2) = v9 * (*&_S1 * *&_S1);
      *(v8 - 1) = v9 * *&_S2;
      *v8 = *&_S3;
      *(v8 + 1) = 0;
      __asm { FCVT            D0, H0 }

      _KR00_16 = __sincos_stret(_D0 * 3.14159265);
      __asm { FCVT            H1, D1 }

      *(v7 - 1) = _H1;
      __asm { FCVT            H0, D0 }

      *v7 = _H0;
      ++v6;
      v7 += 2;
      v8 += 4;
    }

    while (v1 != v6);
  }

  v28 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v4, v2, 8 * v1);
  v30 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v29, v5, 4 * v1);
  free(v2);
  free(v5);
  v34[0] = v28;
  v34[1] = v30;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v31, v34, 2);

  return v32;
}

void sub_295693CE8()
{
  v0 = objc_alloc(MEMORY[0x29EDB8E78]);
  v35 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.coremedia");
  v4 = objc_msgSend_dictionaryRepresentation(v35, v2, v3);
  v6 = v4;
  if (v4)
  {
    v4 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"hairnetModelPath");
  }

  v7 = qword_2A18BA2B8;
  qword_2A18BA2B8 = v4;

  v10 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v8, v9);
  v14 = objc_msgSend_fileExistsAtPath_(v10, v11, qword_2A18BA2B8);
  v15 = qword_2A18BA2B8;
  if (v14)
  {
    v16 = objc_msgSend_UTF8String(qword_2A18BA2B8, v12, v13);
    printf("Using Hairnet model at: %s\n", v16);
  }

  else
  {
    qword_2A18BA2B8 = 0;
  }

  if (!qword_2A18BA2B8)
  {
    v18 = objc_msgSend_pathFromBaseName_(EspressoWrapper, v17, @"hairnet-v1");
    v19 = qword_2A18BA2B8;
    qword_2A18BA2B8 = v18;

    v23 = objc_msgSend_fileExistsAtPath_(v10, v20, qword_2A18BA2B8);
    v24 = qword_2A18BA2B8;
    if (v23)
    {
      v25 = objc_msgSend_UTF8String(qword_2A18BA2B8, v21, v22);
      printf("Using Hairnet model at: %s\n", v25);
    }

    else
    {
      qword_2A18BA2B8 = 0;
    }

    if (!qword_2A18BA2B8)
    {
      v26 = MEMORY[0x29EDB9F48];
      v27 = objc_opt_class();
      v29 = objc_msgSend_bundleForClass_(v26, v28, v27);
      v31 = objc_msgSend_pathForResource_ofType_(v29, v30, @"model_quantized.espresso", @"net");
      v32 = qword_2A18BA2B8;
      qword_2A18BA2B8 = v31;

      if (objc_msgSend_fileExistsAtPath_(v10, v33, qword_2A18BA2B8))
      {
        puts("Using Hairnet model in CCPortrait.bundle");
      }

      else
      {
        v34 = qword_2A18BA2B8;
        qword_2A18BA2B8 = 0;
      }

      if (!qword_2A18BA2B8)
      {
        puts("Hairnet model not found.");
      }
    }
  }
}

CGFloat sub_2956944A8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, const char *a6, void *a7)
{
  if (a6 != 2)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(a7, a6, @"SparseRenderer::kPreFilterRadius");
    objc_msgSend_floatValue(v11, v12, v13);
    v15 = v14;

    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    *&a1 = CGRectInset(v17, -v15, 0.0);
  }

  return a1;
}

CGFloat sub_29569455C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, const char *a6, void *a7)
{
  if (a6 != 2)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(a7, a6, @"SparseRenderer::kPreFilterRadius");
    objc_msgSend_floatValue(v11, v12, v13);
    v15 = v14;

    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    *&a1 = CGRectInset(v17, 0.0, -v15);
  }

  return a1;
}

CGFloat sub_295694610(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    CGAffineTransformMakeScale(&v11, 2.0, 2.0);
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    *&a1 = CGRectApplyAffineTransform(v12, &v11);
  }

  return a1;
}

CGFloat sub_295694698(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = a9;
  v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, 0);
  objc_msgSend_CGRectValue(v16, v17, v18);
  v40 = v20;
  v41 = v19;

  v22 = objc_msgSend_objectAtIndexedSubscript_(v14, v21, 1);
  objc_msgSend_CGRectValue(v22, v23, v24);
  v26 = v25;
  v28 = v27;

  v30 = objc_msgSend_objectAtIndexedSubscript_(v14, v29, 2);

  objc_msgSend_CGRectValue(v30, v31, v32);
  v34 = v33;
  v36 = v35;

  if (a6 != 2)
  {
    if (a6 == 1)
    {
      v37 = v28 / v36;
      v38 = v26 / v34;
    }

    else
    {
      if (a6)
      {
        return *MEMORY[0x29EDB90D8];
      }

      v37 = v40 / v36;
      v38 = v41 / v34;
    }

    CGAffineTransformMakeScale(&v42, v38, v37);
    v43.origin.x = a1;
    v43.origin.y = a2;
    v43.size.width = a3;
    v43.size.height = a4;
    *&a1 = CGRectApplyAffineTransform(v43, &v42);
  }

  return a1;
}

CGFloat sub_2956947EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = a9;
  v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, 0);
  objc_msgSend_CGRectValue(v16, v17, v18);
  v40 = v20;
  v41 = v19;

  v22 = objc_msgSend_objectAtIndexedSubscript_(v14, v21, 1);
  objc_msgSend_CGRectValue(v22, v23, v24);
  v26 = v25;
  v28 = v27;

  v30 = objc_msgSend_objectAtIndexedSubscript_(v14, v29, 2);

  objc_msgSend_CGRectValue(v30, v31, v32);
  v34 = v33;
  v36 = v35;

  if (a6 != 2)
  {
    if (a6 == 1)
    {
      v37 = v28 / v36;
      v38 = v26 / v34;
    }

    else
    {
      if (a6)
      {
        return *MEMORY[0x29EDB90D8];
      }

      v37 = v40 / v36;
      v38 = v41 / v34;
    }

    CGAffineTransformMakeScale(&v42, v38, v37);
    v43.origin.x = a1;
    v43.origin.y = a2;
    v43.size.width = a3;
    v43.size.height = a4;
    *&a1 = CGRectApplyAffineTransform(v43, &v42);
  }

  return a1;
}

CGFloat sub_295694940(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = a9;
  v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, 0);
  objc_msgSend_CGRectValue(v16, v17, v18);
  v20 = v19;
  v22 = v21;

  v24 = objc_msgSend_objectAtIndexedSubscript_(v14, v23, 1);

  objc_msgSend_CGRectValue(v24, v25, v26);
  v28 = v27;
  v30 = v29;

  if (a6 != 1)
  {
    if (a6)
    {
      return *MEMORY[0x29EDB90D8];
    }

    else
    {
      CGAffineTransformMakeScale(&v32, v20 / v28, v22 / v30);
      v33.origin.x = a1;
      v33.origin.y = a2;
      v33.size.width = a3;
      v33.size.height = a4;
      *&a1 = CGRectApplyAffineTransform(v33, &v32);
    }
  }

  return a1;
}

double sub_295694A5C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, void *a7, uint64_t a8, void *a9)
{
  v15 = a9;
  v17 = objc_msgSend_objectForKeyedSubscript_(a7, v16, @"SparseRenderer::kMaxBlur_ushort");
  v20 = objc_msgSend_unsignedShortValue(v17, v18, v19);

  _H14 = v20;
  v23 = objc_msgSend_objectAtIndexedSubscript_(v15, v22, 0);
  objc_msgSend_CGRectValue(v23, v24, v25);
  v27 = v26;
  v29 = v28;

  __asm { FCVT            S0, H14 }

  if (v27 >= v29)
  {
    v35 = v27;
  }

  else
  {
    v35 = v29;
  }

  v36 = v35;
  v37 = -(_S0 * v36);
  v56.origin.x = a1;
  v56.origin.y = a2;
  v56.size.width = a3;
  v56.size.height = a4;
  v57 = CGRectInset(v56, v37, v37);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  if (a6 == 2)
  {
    v43 = objc_msgSend_objectAtIndexedSubscript_(v15, v38, 2);
    objc_msgSend_CGRectValue(v43, v44, v45);
    v47 = v46;
    v49 = v48;

    CGAffineTransformMakeScale(&v55, 1.0 / v27, 1.0 / v29);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v59 = CGRectApplyAffineTransform(v58, &v55);
    v50 = v59.origin.x;
    v51 = v59.origin.y;
    v52 = v59.size.width;
    v53 = v59.size.height;
    CGAffineTransformMakeScale(&v55, v47, v49);
    v60.origin.x = v50;
    v60.origin.y = v51;
    v60.size.width = v52;
    v60.size.height = v53;
    *&x = CGRectApplyAffineTransform(v60, &v55);
  }

  return x;
}

double sub_295694C08(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, void *a7, uint64_t a8, void *a9)
{
  v15 = a9;
  v17 = objc_msgSend_objectForKeyedSubscript_(a7, v16, @"SparseRenderer::kMaxBlur_ushort");
  v20 = objc_msgSend_unsignedShortValue(v17, v18, v19);

  _H14 = v20;
  v23 = objc_msgSend_objectAtIndexedSubscript_(v15, v22, 0);
  objc_msgSend_CGRectValue(v23, v24, v25);
  v27 = v26;
  v29 = v28;

  __asm { FCVT            S0, H14 }

  if (v27 >= v29)
  {
    v35 = v27;
  }

  else
  {
    v35 = v29;
  }

  v36 = v35;
  v37 = -(_S0 * v36);
  v56.origin.x = a1;
  v56.origin.y = a2;
  v56.size.width = a3;
  v56.size.height = a4;
  v57 = CGRectInset(v56, v37, v37);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  if (a6 == 1)
  {
    v43 = objc_msgSend_objectAtIndexedSubscript_(v15, v38, 1);
    objc_msgSend_CGRectValue(v43, v44, v45);
    v47 = v46;
    v49 = v48;

    CGAffineTransformMakeScale(&v55, 1.0 / v27, 1.0 / v29);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v59 = CGRectApplyAffineTransform(v58, &v55);
    v50 = v59.origin.x;
    v51 = v59.origin.y;
    v52 = v59.size.width;
    v53 = v59.size.height;
    CGAffineTransformMakeScale(&v55, v47, v49);
    v60.origin.x = v50;
    v60.origin.y = v51;
    v60.size.width = v52;
    v60.size.height = v53;
    *&x = CGRectApplyAffineTransform(v60, &v55);
  }

  return x;
}

double sub_295694DB4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, void *a7, uint64_t a8, void *a9)
{
  v15 = a9;
  v17 = objc_msgSend_objectForKeyedSubscript_(a7, v16, @"SparseRenderer::kMaxBlur_ushort");
  v20 = objc_msgSend_unsignedShortValue(v17, v18, v19);

  _H14 = v20;
  v23 = objc_msgSend_objectAtIndexedSubscript_(v15, v22, 0);
  objc_msgSend_CGRectValue(v23, v24, v25);
  v27 = v26;
  v29 = v28;

  __asm { FCVT            S0, H14 }

  if (v27 >= v29)
  {
    v35 = v27;
  }

  else
  {
    v35 = v29;
  }

  v36 = v35;
  v37 = -(_S0 * v36);
  v56.origin.x = a1;
  v56.origin.y = a2;
  v56.size.width = a3;
  v56.size.height = a4;
  v57 = CGRectInset(v56, v37, v37);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  if (a6 == 1)
  {
    v43 = objc_msgSend_objectAtIndexedSubscript_(v15, v38, 1);
    objc_msgSend_CGRectValue(v43, v44, v45);
    v47 = v46;
    v49 = v48;

    CGAffineTransformMakeScale(&v55, 1.0 / v27, 1.0 / v29);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v59 = CGRectApplyAffineTransform(v58, &v55);
    v50 = v59.origin.x;
    v51 = v59.origin.y;
    v52 = v59.size.width;
    v53 = v59.size.height;
    CGAffineTransformMakeScale(&v55, v47, v49);
    v60.origin.x = v50;
    v60.origin.y = v51;
    v60.size.width = v52;
    v60.size.height = v53;
    *&x = CGRectApplyAffineTransform(v60, &v55);
  }

  return x;
}

CGFloat sub_295694F60(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, const char *a6, void *a7)
{
  if (a6 != 1)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(a7, a6, @"SparseRenderer::kAntiAliasRadius");
    objc_msgSend_floatValue(v11, v12, v13);
    v15 = v14;

    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    *&a1 = CGRectInset(v17, -v15, 0.0);
  }

  return a1;
}

CGFloat sub_295695014(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, const char *a6, void *a7)
{
  if (a6 != 1)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(a7, a6, @"SparseRenderer::kAntiAliasRadius");
    objc_msgSend_floatValue(v11, v12, v13);
    v15 = v14;

    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    *&a1 = CGRectInset(v17, 0.0, -v15);
  }

  return a1;
}

double sub_2956950C8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v15 = a10;
  v17 = objc_msgSend_objectForKeyedSubscript_(a8, v16, @"inputBlurRadius");
  objc_msgSend_floatValue(v17, v18, v19);
  v21 = v20;
  objc_msgSend_floatValue(v15, v22, v23);
  v25 = v24;

  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;

  *&result = CGRectInset(*&v26, ((v21 * -3.0) * v25), 0.0);
  return result;
}

double sub_295695180(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v15 = a10;
  v17 = objc_msgSend_objectForKeyedSubscript_(a8, v16, @"inputBlurRadius");
  objc_msgSend_floatValue(v17, v18, v19);
  v21 = v20;
  objc_msgSend_floatValue(v15, v22, v23);
  v25 = v24;

  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;

  *&result = CGRectInset(*&v26, 0.0, ((v21 * -3.0) * v25));
  return result;
}

CGFloat sub_295695238(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, void *a7, void *a8, void *a9, void *a10)
{
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v22 = a10;
  if (a6 == 1)
  {
    v28 = 2.0;
    v29 = 2.0;
    goto LABEL_5;
  }

  if (!a6)
  {
    v23 = objc_msgSend_objectForKeyedSubscript_(v19, v21, @"blurredScale");
    objc_msgSend_floatValue(v23, v24, v25);
    v27 = v26;

    v28 = v27;
    v29 = v27;
LABEL_5:
    CGAffineTransformMakeScale(&v31, v28, v29);
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    *&a1 = CGRectApplyAffineTransform(v32, &v31);
  }

  return a1;
}

CGFloat sub_29569535C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, void *a7, void *a8, void *a9, void *a10)
{
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  if (a6 == 2)
  {
    goto LABEL_5;
  }

  if (a6 != 1)
  {
    if (!a6)
    {
      CGAffineTransformMakeScale(&v23, 0.5, 0.5);
      v24.origin.x = a1;
      v24.origin.y = a2;
      v24.size.width = a3;
      v24.size.height = a4;
      *&a1 = CGRectApplyAffineTransform(v24, &v23);
      goto LABEL_6;
    }

LABEL_5:
    a1 = *MEMORY[0x29EDB90D8];
  }

LABEL_6:

  return a1;
}

CGFloat sub_295695464(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, unsigned int a6, void *a7, void *a8, void *a9, void *a10)
{
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v22 = a10;
  if (a6 == 3)
  {
    v30 = 0.5;
    v31 = 0.5;
LABEL_8:
    CGAffineTransformMakeScale(&v40, v30, v31);
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    *&a1 = CGRectApplyAffineTransform(v41, &v40);
    goto LABEL_9;
  }

  if (a6 != 2)
  {
    if ((a6 & 0x80000000) != 0)
    {
      v27 = *(MEMORY[0x29EDB90D8] + 16);
      v29 = *(MEMORY[0x29EDB90D8] + 24);
    }

    else
    {
      v23 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, a6);
      objc_msgSend_CGRectValue(v23, v24, v25);
      v27 = v26;
      v29 = v28;
    }

    v32 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 2);
    objc_msgSend_CGRectValue(v32, v33, v34);
    v36 = v35;
    v38 = v37;

    v30 = v27 / v36;
    v31 = v29 / v38;
    goto LABEL_8;
  }

LABEL_9:

  return a1;
}

double sub_295696FA8(void *a1)
{
  v1 = a1;
  if (objc_msgSend_conformsToProtocol_(v1, v2, &unk_2A1CA0A70))
  {
    v5 = v1;
    v8 = objc_msgSend_width(v5, v6, v7);
    objc_msgSend_height(v5, v9, v10);
  }

  else
  {
    objc_msgSend_extent(v1, v3, v4);
    v8 = v11;
  }

  return v8;
}

void sub_29569860C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x4D8], 8);
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_295698668(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_295698680(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
  v1 = 48;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v1 = 40;
  }

  return *(*(*(a1 + v1) + 8) + 40);
}

id sub_2956986C4(void *a1, double a2, double a3, float a4, float a5)
{
  v9 = a1;
  objc_msgSend_extent(v9, v10, v11);
  v13 = a2 / v12;
  objc_msgSend_extent(v9, v14, v15);
  v19 = a3 / v18;
  if (fabs(v13 + -1.0) >= 0.0001 || fabs(v19 + -1.0) >= 0.0001)
  {
    v20 = objc_msgSend_imageByClampingToExtent(v9, v16, v17);

    v23 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v21, v22, v19, @"inputScale");
    v44[0] = v23;
    v43[1] = @"inputAspectRatio";
    v26 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v24, v25, v13 / v19);
    v44[1] = v26;
    v43[2] = @"inputB";
    *&v27 = a4;
    v30 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v28, v29, v27);
    v44[2] = v30;
    v43[3] = @"inputC";
    *&v31 = a5;
    v34 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v32, v33, v31);
    v44[3] = v34;
    v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v35, v44, v43, 4);
    v38 = objc_msgSend_imageByApplyingFilter_withInputParameters_(v20, v37, @"CIBicubicScaleTransform", v36);

    v9 = objc_msgSend_imageByCroppingToRect_(v38, v39, v40, 0.0, 0.0, a2, a3);

    if (!v9)
    {
      sub_2956C9EC4();
    }
  }

  v41 = v9;

  return v41;
}

double sub_29569A5E0(void *a1)
{
  v1 = a1;
  if (objc_msgSend_conformsToProtocol_(v1, v2, &unk_2A1CA0A70))
  {
    v5 = v1;
    objc_msgSend_width(v5, v6, v7);
    objc_msgSend_height(v5, v8, v9);

    v10 = 0.0;
  }

  else
  {
    objc_msgSend_extent(v1, v3, v4);
    v10 = v11;
  }

  return v10;
}

void sub_29569B2DC()
{
  v0 = objc_alloc(MEMORY[0x29EDB8E78]);
  v2 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.coremedia");
  if (v2)
  {
    v12 = v2;
    v5 = objc_msgSend_dictionaryRepresentation(v2, v3, v4);
    v7 = v5;
    if (v5)
    {
      v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"sdof_max_nrings");
      if (v8)
      {
        v11 = v8;
        dword_2A1388808 = objc_msgSend_intValue(v8, v9, v10);
      }
    }

    v2 = v12;
  }
}

BOOL sub_29569B374(const CGImageMetadata *a1, void *a2, _DWORD *a3)
{
  v5 = a2;
  if (a3 && (*a3 = 0, (v6 = sub_29569B400(a1, v5)) != 0))
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    v9 = v8 == CFStringGetTypeID();
    v12 = v9;
    if (v9)
    {
      *a3 = objc_msgSend_intValue(v7, v10, v11);
    }

    CFRelease(v7);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

CGImageMetadataTag *sub_29569B400(const CGImageMetadata *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = CGImageMetadataCopyTagWithPath(a1, 0, v3);
    if (!v6)
    {
LABEL_7:
      v5 = 0;
      goto LABEL_8;
    }

    v7 = v6;
    v8 = CGImageMetadataTagCopyValue(v6);
    if (!v8 || (v5 = v8, v9 = CFGetTypeID(v8), TypeID = CFStringGetTypeID(), CFRelease(v7), v7 = v5, v9 != TypeID))
    {
      CFRelease(v7);
      goto LABEL_7;
    }
  }

LABEL_8:

  return v5;
}

BOOL sub_29569B4A0(const CGImageMetadata *a1, void *a2, _DWORD *a3)
{
  v5 = a2;
  if (a3 && (*a3 = 0, (v6 = sub_29569B400(a1, v5)) != 0))
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    v9 = v8 == CFStringGetTypeID();
    v12 = v9;
    if (v9)
    {
      objc_msgSend_floatValue(v7, v10, v11);
      *a3 = v13;
    }

    CFRelease(v7);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_29569CF50()
{
  v0 = objc_alloc(MEMORY[0x29EDB8E78]);
  v2 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.coremedia");
  v12 = v2;
  if (v2)
  {
    v5 = objc_msgSend_dictionaryRepresentation(v2, v3, v4);
    v7 = v5;
    if (v5)
    {
      v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"maxBlurmapSize");
      if (v8)
      {
        v11 = v8;
        qword_2A1388810 = objc_msgSend_unsignedLongValue(v8, v9, v10);
      }
    }
  }

  else
  {
    v7 = 0;
  }
}

double sub_29569DB8C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(a5, a2, 0);
  objc_msgSend_CGRectValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

double sub_29569DBF4(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14 = a6;
  if (a2)
  {
    if (!v11)
    {
      sub_2956CAFA8();
    }

    v15 = objc_msgSend_objectForKeyedSubscript_(v11, v13, @"inputParams");
    if (!v15)
    {
      sub_2956CAF7C();
    }

    v16 = v15;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_length(v16, v17, v18) != 56)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_2956CAE28();
      }
    }

    if (objc_msgSend_count(v12, v19, v20) != 2)
    {
      sub_2956CAE54();
    }

    v22 = objc_msgSend_objectAtIndexedSubscript_(v12, v21, 1);
    objc_msgSend_CGRectValue(v22, v23, v24);
    v26 = v25;
    v28 = v27;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = objc_msgSend_objectForKeyedSubscript_(v16, v29, @"height");
      if (!v30)
      {
        sub_2956CAF50();
      }

      v32 = objc_msgSend_objectForKeyedSubscript_(v16, v31, @"width");
      if (!v32)
      {
        sub_2956CAF24();
      }

      v34 = objc_msgSend_objectForKeyedSubscript_(v16, v33, @"left");
      if (!v34)
      {
        sub_2956CAEF8();
      }

      v36 = objc_msgSend_objectForKeyedSubscript_(v16, v35, @"top");
      if (!v36)
      {
        sub_2956CAECC();
      }

      v38 = objc_msgSend_objectForKeyedSubscript_(v16, v37, @"left");
      objc_msgSend_floatValue(v38, v39, v40);
      v42 = v41;
      v44 = objc_msgSend_objectForKeyedSubscript_(v16, v43, @"top");
      objc_msgSend_floatValue(v44, v45, v46);
      v48 = v47;
      v50 = objc_msgSend_objectForKeyedSubscript_(v16, v49, @"width");
      objc_msgSend_floatValue(v50, v51, v52);
      v54 = v53;
      v56 = objc_msgSend_objectForKeyedSubscript_(v16, v55, @"height");
      objc_msgSend_floatValue(v56, v57, v58);
      v60 = v59;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_length(v16, v64, v65) == 56)
      {
        v82 = 0;
        memset(&v81, 0, sizeof(v81));
        v66 = v16;
        v69 = objc_msgSend_length(v66, v67, v68);
        objc_msgSend_getBytes_range_(v66, v70, &v81, 0, v69);

        v42 = *&v81.a;
        v48 = *(&v81.a + 1);
        v54 = *&v81.b;
        v60 = *(&v81.b + 1);
      }

      else
      {
        v71 = uni_logger_api();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          sub_2956CAE80(v71, v72, v73, v74, v75, v76, v77, v78);
        }

        v54 = 0.100000001;
        v42 = 0.449999988;
        v48 = 0.449999988;
        v60 = 0.100000001;
      }
    }

    CGAffineTransformMakeScale(&v81, v26, v28);
    v83.origin.x = v42;
    v83.origin.y = v48;
    v83.size.width = v54;
    v83.size.height = v60;
    v84 = CGRectApplyAffineTransform(v83, &v81);
    v63 = CGRectInset(v84, -1.0, -1.0);
  }

  else
  {
    v16 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, 0);
    objc_msgSend_CGRectValue(v16, v61, v62);
  }

  v79 = *&v63;

  return v79;
}

double sub_29569DF98(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14 = a6;
  if (a2)
  {
    if (!v11)
    {
      sub_2956CB154();
    }

    v15 = objc_msgSend_objectForKeyedSubscript_(v11, v13, @"inputParams");
    if (!v15)
    {
      sub_2956CB128();
    }

    v16 = v15;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_length(v16, v17, v18) != 56)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_2956CAFD4();
      }
    }

    if (objc_msgSend_count(v12, v19, v20) != 2)
    {
      sub_2956CB000();
    }

    v22 = objc_msgSend_objectAtIndexedSubscript_(v12, v21, 1);
    objc_msgSend_CGRectValue(v22, v23, v24);
    v26 = v25;
    v28 = v27;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = objc_msgSend_objectForKeyedSubscript_(v16, v29, @"height");
      if (!v30)
      {
        sub_2956CB0FC();
      }

      v32 = objc_msgSend_objectForKeyedSubscript_(v16, v31, @"width");
      if (!v32)
      {
        sub_2956CB0D0();
      }

      v34 = objc_msgSend_objectForKeyedSubscript_(v16, v33, @"left");
      if (!v34)
      {
        sub_2956CB0A4();
      }

      v36 = objc_msgSend_objectForKeyedSubscript_(v16, v35, @"top");
      if (!v36)
      {
        sub_2956CB078();
      }

      v38 = objc_msgSend_objectForKeyedSubscript_(v16, v37, @"left");
      objc_msgSend_floatValue(v38, v39, v40);
      v42 = v41;
      v44 = objc_msgSend_objectForKeyedSubscript_(v16, v43, @"top");
      objc_msgSend_floatValue(v44, v45, v46);
      v48 = v47;
      v50 = objc_msgSend_objectForKeyedSubscript_(v16, v49, @"width");
      objc_msgSend_floatValue(v50, v51, v52);
      v54 = v53;
      v56 = objc_msgSend_objectForKeyedSubscript_(v16, v55, @"height");
      objc_msgSend_floatValue(v56, v57, v58);
      v60 = v59;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_length(v16, v66, v67) == 56)
      {
        *&v105 = 0;
        memset(&v104, 0, sizeof(v104));
        v68 = v16;
        v71 = objc_msgSend_length(v68, v69, v70);
        objc_msgSend_getBytes_range_(v68, v72, &v104, 0, v71);

        v42 = *&v104.a;
        v48 = *(&v104.a + 1);
        v54 = *&v104.b;
        v60 = *(&v104.b + 1);
      }

      else
      {
        v73 = uni_logger_api();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          sub_2956CB02C(v73, v74, v75, v76, v77, v78, v79, v80);
        }

        v60 = 0.0;
        v54 = 0.0;
        v48 = 0.0;
        v42 = 0.0;
      }
    }

    v81 = objc_msgSend_objectForKeyedSubscript_(v11, v61, @"inputEyes");
    if (v81)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_length(v81, v82, v83) == 72)
      {
        v102 = v28;
        v103 = v26;
        v84 = v81;
        v106 = 0;
        v105 = 0u;
        memset(&v104, 0, sizeof(v104));
        v87 = objc_msgSend_length(v84, v85, v86);
        objc_msgSend_getBytes_range_(v84, v88, &v104, 0, v87);
        v89 = v106;
        if (v106 < 1)
        {
          height = v60;
          width = v54;
          y = v48;
          x = v42;
        }

        else
        {
          v90 = 0;
          do
          {
            v91 = (&v104.a + v90);
            v92 = *v91;
            v93 = v91[4];
            v94 = vcgt_f32(v93, *v91).u8[0];
            if (v94)
            {
              v95 = v92.f32[0];
            }

            else
            {
              v95 = v93.f32[0];
            }

            if (v94)
            {
              v96 = v92.f32[1];
            }

            else
            {
              v96 = v93.f32[1];
            }

            y = v96;
            x = v95;
            width = fabsf(vsub_f32(v93, v92).f32[0]);
            height = vabds_f32(v93.f32[1], v92.f32[1]);
            if (v90)
            {
              v107.origin.x = v42;
              v107.origin.y = v48;
              v107.size.width = v54;
              v107.size.height = v60;
              v111.origin.x = v95;
              v111.origin.y = v96;
              v111.size.width = width;
              v111.size.height = height;
              v108 = CGRectUnion(v107, v111);
              x = v108.origin.x;
              y = v108.origin.y;
              width = v108.size.width;
              height = v108.size.height;
              v89 = v106;
            }

            ++v90;
            v42 = x;
            v48 = y;
            v54 = width;
            v60 = height;
          }

          while (v90 < v89);
        }

        v60 = height;
        v54 = width;
        v48 = y;
        v42 = x;
        v28 = v102;
        v26 = v103;
      }
    }

    CGAffineTransformMakeScale(&v104, v26, v28);
    v109.origin.x = v42;
    v109.origin.y = v48;
    v109.size.width = v54;
    v109.size.height = v60;
    v110 = CGRectApplyAffineTransform(v109, &v104);
    *&v65 = CGRectInset(v110, -1.0, -1.0);
  }

  else
  {
    v16 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, 0);
    objc_msgSend_CGRectValue(v16, v62, v63);
    v65 = v64;
  }

  return v65;
}

double sub_29569E4A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = a2;
  v8 = a6;
  v10 = objc_msgSend_objectAtIndexedSubscript_(a5, v9, v7);
  objc_msgSend_CGRectValue(v10, v11, v12);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  objc_msgSend_floatValue(v8, v21, v22);
  v24 = (1.0 / v23);
  objc_msgSend_floatValue(v8, v25, v26);
  v28 = v27;

  CGAffineTransformMakeScale(&v31, v24, (1.0 / v28));
  v32.origin.x = v14;
  v32.origin.y = v16;
  v32.size.width = v18;
  v32.size.height = v20;
  *&v29 = CGRectApplyAffineTransform(v32, &v31);

  return v29;
}

void sub_29569E5C0()
{
  v0 = objc_alloc(MEMORY[0x29EDB8E78]);
  v2 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.coremedia");
  if (v2)
  {
    v12 = v2;
    v5 = objc_msgSend_dictionaryRepresentation(v2, v3, v4);
    v7 = v5;
    if (v5)
    {
      v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"fullRect");
      if (v8)
      {
        v11 = v8;
        byte_2A1388940 = objc_msgSend_BOOLValue(v8, v9, v10);
      }
    }

    v2 = v12;
  }
}

double sub_29569E658(double a1, uint64_t a2, int a3, void *a4, void *a5, void *a6, void *a7)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (!v12)
  {
    sub_2956CB204();
  }

  v16 = v14;
  v17 = objc_msgSend_objectForKeyedSubscript_(v12, v15, @"faceParams");
  if (!v17)
  {
    sub_2956CB1D8();
  }

  v18 = v17;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_2956CB180();
  }

  memset(v75, 0, sizeof(v75));
  if (byte_2A1388940 == 1)
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(v13, v19, a3);
    objc_msgSend_CGRectValue(v21, v22, v23);
    v25 = v24;
  }

  else
  {
    if (objc_msgSend_length(v18, v19, v20) != 192)
    {
      sub_2956CB1AC();
    }

    objc_msgSend_getBytes_length_(v18, v26, v75, 192);
    x = *MEMORY[0x29EDB90D8];
    y = *(MEMORY[0x29EDB90D8] + 8);
    width = *(MEMORY[0x29EDB90D8] + 16);
    height = *(MEMORY[0x29EDB90D8] + 24);
    v32 = objc_msgSend_objectAtIndexedSubscript_(v13, v31, 0);
    objc_msgSend_CGRectValue(v32, v33, v34);
    v36 = v35;
    v70 = v36;

    v38 = objc_msgSend_objectAtIndexedSubscript_(v13, v37, 0);
    objc_msgSend_CGRectValue(v38, v39, v40);
    v42 = v41;
    v69 = v42;

    v47 = 0;
    v48 = 0;
    v49 = xmmword_2956D2BD0;
    do
    {
      LODWORD(v46) = *((v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3))) + 0x50);
      LODWORD(v45) = *((v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3))) + 0x60);
      LODWORD(v44) = *((v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3))) + 0x10);
      LODWORD(v43) = *((v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3))) + 0x20);
      LODWORD(v50) = *((v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3))) + 0x30);
      HIDWORD(v50) = *((v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3))) + 0x40);
      v51 = vdupq_lane_s64(v50, 0);
      v52.i32[0] = vmovn_s32(vcgeq_f32(v49, v51)).u32[0];
      v52.i32[1] = vmovn_s32(vcgeq_f32(v51, v49)).i32[1];
      if (vminv_u16(v52))
      {
        v67 = v46;
        v68 = v45;
        v53 = x;
        v54 = y;
        v55 = width;
        v56 = height;
        v71 = v44;
        v73 = v43;
        v76.origin.x = (*((v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3))) + 0x30) * v70);
        v76.origin.y = (*((v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3))) + 0x40) * v69);
        v76.size.width = 0.0;
        v76.size.height = 0.0;
        v77 = CGRectInset(v76, -0.5, -0.5);
        x = v77.origin.x;
        y = v77.origin.y;
        width = v77.size.width;
        height = v77.size.height;
        if (v47)
        {
          ++v47;
          v78.origin.x = v53;
          v78.origin.y = v54;
          v78.size.width = v55;
          v78.size.height = v56;
          v88.origin.x = x;
          v88.origin.y = y;
          v88.size.width = width;
          v88.size.height = height;
          v79 = CGRectUnion(v78, v88);
          x = v79.origin.x;
          y = v79.origin.y;
          width = v79.size.width;
          height = v79.size.height;
        }

        else
        {
          v47 = 1;
        }

        v45 = v68;
        v49 = xmmword_2956D2BD0;
        v44 = v71;
        v43 = v73;
        v46 = v67;
      }

      v57 = vdupq_lane_s64(__SPAIR64__(v45, v46), 0);
      v58.i32[0] = vmovn_s32(vcgeq_f32(v49, v57)).u32[0];
      v58.i32[1] = vmovn_s32(vcgeq_f32(v57, v49)).i32[1];
      if (vminv_u16(v58))
      {
        v72 = v44;
        v74 = v43;
        v80.origin.x = (*&v46 * v70);
        v80.origin.y = (*&v45 * v69);
        v80.size.width = 0.0;
        v80.size.height = 0.0;
        v81 = CGRectInset(v80, -0.5, -0.5);
        v62 = v81.origin.x;
        v61 = v81.origin.y;
        v60 = v81.size.width;
        v59 = v81.size.height;
        if (v47)
        {
          ++v47;
          v82.origin.x = x;
          v82.origin.y = y;
          v82.size.width = width;
          v82.size.height = height;
          v89.origin.x = v62;
          v89.origin.y = v61;
          v89.size.width = v60;
          v89.size.height = v59;
          v83 = CGRectUnion(v82, v89);
          v62 = v83.origin.x;
          v61 = v83.origin.y;
          v60 = v83.size.width;
          v59 = v83.size.height;
        }

        else
        {
          v47 = 1;
        }

        v49 = xmmword_2956D2BD0;
        v44 = v72;
        v43 = v74;
      }

      else
      {
        v59 = height;
        v60 = width;
        v61 = y;
        v62 = x;
      }

      v63 = vdupq_lane_s64(__SPAIR64__(v43, v44), 0);
      v64.i32[0] = vmovn_s32(vcgeq_f32(v49, v63)).u32[0];
      v64.i32[1] = vmovn_s32(vcgeq_f32(v63, v49)).i32[1];
      if (vminv_u16(v64))
      {
        v84.origin.x = (*&v44 * v70);
        v84.origin.y = (*&v43 * v69);
        v84.size.width = 0.0;
        v84.size.height = 0.0;
        v85 = CGRectInset(v84, -0.5, -0.5);
        x = v85.origin.x;
        y = v85.origin.y;
        width = v85.size.width;
        height = v85.size.height;
        if (v47)
        {
          ++v47;
          v86.origin.x = v62;
          v86.origin.y = v61;
          v86.size.width = v60;
          v86.size.height = v59;
          v90.origin.x = x;
          v90.origin.y = y;
          v90.size.width = width;
          v90.size.height = height;
          v87 = CGRectUnion(v86, v90);
          x = v87.origin.x;
          y = v87.origin.y;
          width = v87.size.width;
          height = v87.size.height;
        }

        else
        {
          v47 = 1;
        }

        v49 = xmmword_2956D2BD0;
      }

      else
      {
        height = v59;
        width = v60;
        y = v61;
        x = v62;
      }

      ++v48;
    }

    while (v48 != 4);
    if (v47)
    {
      v25 = x;
    }

    else
    {
      v25 = a1;
    }
  }

  return v25;
}

CGFloat sub_29569EAE8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, const char *a6, uint64_t a7, void *a8, void *a9)
{
  v9 = a6;
  if (a6 <= 1)
  {
    v10 = objc_msgSend_objectAtIndexedSubscript_(a9, a6, a6);
    objc_msgSend_CGRectValue(v10, v11, v12);
LABEL_15:
    a1 = v13;
    goto LABEL_16;
  }

  v18 = objc_msgSend_objectForKeyedSubscript_(a8, a6, @"params");
  v10 = v18;
  if ((v9 - 3) > 1)
  {
    goto LABEL_13;
  }

  if (!v18)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_length(v10, v19, v20) != 160)
  {
    goto LABEL_13;
  }

  v23 = objc_msgSend_length(v10, v21, v22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  objc_msgSend_getBytes_range_(v10, v24, &v32, 0, v23);
  if (v9 == 3)
  {
    __asm { FCMP            H0, #0 }

    if (!(!_ZF & _CF))
    {
      goto LABEL_12;
    }
  }

  if (v9 != 4)
  {
    goto LABEL_13;
  }

  __asm { FCMP            H0, #0 }

  if (!(!_ZF & _CF))
  {
LABEL_12:
    a1 = *MEMORY[0x29EDB90E0];
  }

  else
  {
LABEL_13:
    if (v9 == 3)
    {
      v33.origin.x = a1;
      v33.origin.y = a2;
      v33.size.width = a3;
      v33.size.height = a4;
      *&v13 = CGRectInset(v33, -3.0, -3.0);
      goto LABEL_15;
    }
  }

LABEL_16:

  return a1;
}

CGFloat sub_29569EC70(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, unsigned int a6, void *a7, void *a8, void *a9, void *a10)
{
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v22 = a10;
  if (a6 > 1)
  {
    if (a6 - 3 <= 1)
    {
      v28.origin.x = a1;
      v28.origin.y = a2;
      v28.size.width = a3;
      v28.size.height = a4;
      *&a1 = CGRectInset(v28, -3.0, -3.0);
    }
  }

  else
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, a6);
    objc_msgSend_CGRectValue(v23, v24, v25);
    a1 = v26;
  }

  return a1;
}

double sub_29569ED9C(double a1, uint64_t a2, int a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v13)
  {
    sub_2956CB2B4();
  }

  v17 = v15;
  v18 = objc_msgSend_objectForKeyedSubscript_(v13, v16, @"inputParams");
  if (!v18)
  {
    sub_2956CB288();
  }

  v19 = v18;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_2956CB230();
  }

  memset(v65, 0, sizeof(v65));
  if (byte_2A1388940 == 1)
  {
    v22 = objc_msgSend_objectAtIndexedSubscript_(v14, v20, a3);
    objc_msgSend_CGRectValue(v22, v23, v24);
    v26 = v25;
  }

  else
  {
    if (objc_msgSend_length(v19, v20, v21) != 192)
    {
      sub_2956CB25C();
    }

    v60 = a1;
    objc_msgSend_getBytes_length_(v19, v27, v65, 192);
    v29 = *MEMORY[0x29EDB90D8];
    v28 = *(MEMORY[0x29EDB90D8] + 8);
    v31 = *(MEMORY[0x29EDB90D8] + 16);
    v30 = *(MEMORY[0x29EDB90D8] + 24);
    v33 = objc_msgSend_objectAtIndexedSubscript_(v14, v32, 0);
    objc_msgSend_CGRectValue(v33, v34, v35);
    v37 = v36;
    v64 = v37;

    v39 = objc_msgSend_objectAtIndexedSubscript_(v14, v38, 0);
    objc_msgSend_CGRectValue(v39, v40, v41);
    v43 = v42;
    v63 = v43;

    v46 = 0;
    v47 = 0;
    v48 = xmmword_2956D2BD0;
    do
    {
      LODWORD(v45) = *((v65 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) + 0x50);
      LODWORD(v44) = *((v65 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) + 0x60);
      LODWORD(v49) = *((v65 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) + 0x30);
      HIDWORD(v49) = *((v65 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) + 0x40);
      v50 = vdupq_lane_s64(v49, 0);
      v51.i32[0] = vmovn_s32(vcgeq_f32(v48, v50)).u32[0];
      v51.i32[1] = vmovn_s32(vcgeq_f32(v50, v48)).i32[1];
      if (vminv_u16(v51))
      {
        v61 = v45;
        v62 = v44;
        v66.origin.x = (*((v65 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) + 0x30) * v64);
        v66.origin.y = (*((v65 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) + 0x40) * v63);
        v66.size.width = 0.0;
        v66.size.height = 0.0;
        v67 = CGRectInset(v66, -0.5, -0.5);
        x = v67.origin.x;
        y = v67.origin.y;
        width = v67.size.width;
        height = v67.size.height;
        if (v46)
        {
          ++v46;
          v68.origin.x = v29;
          v68.origin.y = v28;
          v68.size.width = v31;
          v68.size.height = v30;
          v75.origin.x = x;
          v75.origin.y = y;
          v75.size.width = width;
          v75.size.height = height;
          v69 = CGRectUnion(v68, v75);
          x = v69.origin.x;
          y = v69.origin.y;
          width = v69.size.width;
          height = v69.size.height;
        }

        else
        {
          v46 = 1;
        }

        v44 = v62;
        v48 = xmmword_2956D2BD0;
        v45 = v61;
      }

      else
      {
        height = v30;
        width = v31;
        y = v28;
        x = v29;
      }

      v56 = vdupq_lane_s64(__SPAIR64__(v44, v45), 0);
      v57.i32[0] = vmovn_s32(vcgeq_f32(v48, v56)).u32[0];
      v57.i32[1] = vmovn_s32(vcgeq_f32(v56, v48)).i32[1];
      if (vminv_u16(v57))
      {
        v70.origin.x = (*&v45 * v64);
        v70.origin.y = (*&v44 * v63);
        v70.size.width = 0.0;
        v70.size.height = 0.0;
        v71 = CGRectInset(v70, -0.5, -0.5);
        v29 = v71.origin.x;
        v28 = v71.origin.y;
        v31 = v71.size.width;
        v30 = v71.size.height;
        if (v46)
        {
          ++v46;
          v72.origin.x = x;
          v72.origin.y = y;
          v72.size.width = width;
          v72.size.height = height;
          v76.origin.x = v29;
          v76.origin.y = v28;
          v76.size.width = v31;
          v76.size.height = v30;
          v73 = CGRectUnion(v72, v76);
          v29 = v73.origin.x;
          v28 = v73.origin.y;
          v31 = v73.size.width;
          v30 = v73.size.height;
        }

        else
        {
          v46 = 1;
        }

        v48 = xmmword_2956D2BD0;
      }

      else
      {
        v30 = height;
        v31 = width;
        v28 = y;
        v29 = x;
      }

      ++v47;
    }

    while (v47 != 4);
    v74.origin.x = v29;
    v74.origin.y = v28;
    v74.size.width = v31;
    v74.size.height = v30;
    v58 = CGRectInset(v74, -1.0, -1.0);
    if (v46)
    {
      v26 = *&v58;
    }

    else
    {
      v26 = v60;
    }
  }

  return v26;
}

double sub_29569F180(double a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a3)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(a6, a3, 0);
    objc_msgSend_CGRectValue(v7, v8, v9);
    a1 = v10;
  }

  return a1;
}

CGFloat sub_29569F200(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    CGAffineTransformMakeScale(&v11, 2.0, 2.0);
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    *&a1 = CGRectApplyAffineTransform(v12, &v11);
  }

  return a1;
}

double sub_29569F288(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, uint64_t a7, void *a8)
{
  v12 = objc_msgSend_objectForKeyedSubscript_(a8, a6, @"windowSize");
  objc_msgSend_floatValue(v12, v13, v14);
  v16 = v15;

  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  *&result = CGRectInset(*&v17, (v16 + -1.0) * -0.5, 0.0);
  return result;
}

double sub_29569F328(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, uint64_t a7, void *a8)
{
  v12 = objc_msgSend_objectForKeyedSubscript_(a8, a6, @"windowSize");
  objc_msgSend_floatValue(v12, v13, v14);
  v16 = v15;

  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  *&result = CGRectInset(*&v17, 0.0, (v16 + -1.0) * -0.5);
  return result;
}

double sub_29569F3C8(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, uint64_t a7, void *a8)
{
  v12 = objc_msgSend_objectForKeyedSubscript_(a8, a6, @"windowSize");
  objc_msgSend_floatValue(v12, v13, v14);
  v16 = v15;

  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  *&result = CGRectInset(*&v17, (v16 + -1.0) * -0.5, 0.0);
  return result;
}

double sub_29569F468(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, uint64_t a7, void *a8)
{
  v12 = objc_msgSend_objectForKeyedSubscript_(a8, a6, @"windowSize");
  objc_msgSend_floatValue(v12, v13, v14);
  v16 = v15;

  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  *&result = CGRectInset(*&v17, 0.0, (v16 + -1.0) * -0.5);
  return result;
}

double sub_29569F508(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, uint64_t a7, void *a8)
{
  v12 = objc_msgSend_objectForKeyedSubscript_(a8, a6, @"windowSize");
  objc_msgSend_floatValue(v12, v13, v14);
  v16 = v15;

  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  *&result = CGRectInset(*&v17, (v16 + -1.0) * -0.5, 0.0);
  return result;
}

double sub_29569F5A8(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, uint64_t a7, void *a8)
{
  v12 = objc_msgSend_objectForKeyedSubscript_(a8, a6, @"windowSize");
  objc_msgSend_floatValue(v12, v13, v14);
  v16 = v15;

  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  *&result = CGRectInset(*&v17, 0.0, (v16 + -1.0) * -0.5);
  return result;
}

double sub_29569F648(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, uint64_t a7, void *a8)
{
  v12 = objc_msgSend_objectForKeyedSubscript_(a8, a6, @"windowSize");
  objc_msgSend_floatValue(v12, v13, v14);
  v16 = v15;

  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  *&result = CGRectInset(*&v17, 0.0, (v16 + -1.0) * -0.5);
  return result;
}

double sub_29569F6E8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = a8;
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"inputScaleX");
  v16 = objc_msgSend_objectForKeyedSubscript_(v12, v15, @"inputScaleY");

  objc_msgSend_floatValue(v14, v17, v18);
  v20 = 1.0 / v19;
  objc_msgSend_floatValue(v16, v21, v22);
  CGAffineTransformMakeScale(&v26, v20, 1.0 / v23);
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  v28 = CGRectApplyAffineTransform(v27, &v26);
  *&v24 = CGRectInset(v28, -2.0, -2.0);

  return v24;
}

id sub_29569F94C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v3, 125, a1, 1, 0);
    v7 = v5;
    if (v5)
    {
      objc_msgSend_setUsage_(v5, v6, 19);
      v10 = objc_msgSend_newTextureWithDescriptor_(v4, v8, v7);
      if (v10)
      {
        v11 = objc_msgSend_imageWithMTLTexture_(UniImage, v9, v10);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

double sub_2956A06C8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v15 = a7;
  objc_msgSend_floatValue(a10, v16, v17);
  v19 = v18;
  v21 = objc_msgSend_objectForKeyedSubscript_(v15, v20, @"DisparityRefinement::kRadius");

  objc_msgSend_floatValue(v21, v22, v23);
  v25 = v24;

  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;

  *&result = CGRectInset(*&v26, -(v19 * v25), 0.0);
  return result;
}

CGFloat sub_2956A077C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a6 == 1)
  {
    v15 = a7;
    objc_msgSend_floatValue(a10, v16, v17);
    v19 = v18;
    v21 = objc_msgSend_objectForKeyedSubscript_(v15, v20, @"DisparityRefinement::kRadius");

    objc_msgSend_floatValue(v21, v22, v23);
    v25 = v24;

    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    *&a1 = CGRectInset(v27, 0.0, -(v19 * v25));
  }

  return a1;
}

CGFloat sub_2956A084C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, void *a7, void *a8, void *a9, void *a10)
{
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  if (!v20)
  {
    sub_2956CB69C();
  }

  v24 = v21;
  if (objc_msgSend_count(v20, v22, v23) != 3)
  {
    sub_2956CB624();
  }

  if (a6 != 2)
  {
    if (a6 == 1)
    {
      v41 = 2.0;
      v42 = 2.0;
      goto LABEL_8;
    }

    if (!a6)
    {
      v26 = objc_msgSend_objectAtIndexedSubscript_(v20, v25, 2);
      objc_msgSend_CGRectValue(v26, v27, v28);
      v30 = v29;
      v32 = v31;

      v34 = objc_msgSend_objectAtIndexedSubscript_(v20, v33, 0);
      objc_msgSend_CGRectValue(v34, v35, v36);
      v38 = v37;
      v40 = v39;

      v41 = v38 / v30;
      v42 = v40 / v32;
LABEL_8:
      CGAffineTransformMakeScale(&v52, v41, v42);
      v53.origin.x = a1;
      v53.origin.y = a2;
      v53.size.width = a3;
      v53.size.height = a4;
      *&a1 = CGRectApplyAffineTransform(v53, &v52);
      goto LABEL_12;
    }

    v43 = uni_logger_api();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_2956CB650(v43, v44, v45, v46, v47, v48, v49, v50);
    }
  }

LABEL_12:

  return a1;
}

double sub_2956A09EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, void *a7, void *a8, void *a9, void *a10)
{
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  if (!v19)
  {
    sub_2956CB798();
  }

  v23 = v21;
  v24 = objc_msgSend_objectForKeyedSubscript_(v19, v22, @"outputDimension");
  if (!v24)
  {
    sub_2956CB76C();
  }

  v25 = v24;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_2956CB6C8();
  }

  if (!v20 || objc_msgSend_count(v20, v26, v27) != 2)
  {
    sub_2956CB740();
  }

  v91 = 0;
  objc_msgSend_getBytes_length_(v25, v28, &v91, 4);
  v30 = objc_msgSend_objectForKeyedSubscript_(v18, v29, @"DisparityRefinement::kRadius");
  objc_msgSend_floatValue(v30, v31, v32);
  v34 = v33;

  v36 = objc_msgSend_objectForKeyedSubscript_(v18, v35, @"DisparityRefinement::kOuterSamplingRadius_ushort");
  _H0 = objc_msgSend_unsignedShortValue(v36, v37, v38);
  __asm { FCVT            S8, H0 }

  LOWORD(v45) = v91;
  v46 = v34 * v45;
  v48 = objc_msgSend_objectAtIndexedSubscript_(v20, v47, 1);
  objc_msgSend_CGRectValue(v48, v49, v50);
  v52 = v51;
  v53 = v46 / v52;

  v55 = v53 * _S8;
  if (a6 == 1)
  {
    v62 = objc_msgSend_objectAtIndexedSubscript_(v20, v54, 0);
    objc_msgSend_CGRectValue(v62, v63, v64);
    v66 = v65;
    rect = a4;
    v68 = v67;

    v70 = objc_msgSend_objectAtIndexedSubscript_(v20, v69, 1);
    objc_msgSend_CGRectValue(v70, v71, v72);
    v74 = v73;
    v76 = v75;

    v77 = v74 / v66;
    v78 = v76 / v68;
    CGAffineTransformMakeScale(&v90, v77, v78);
    v92.origin.x = a1;
    v92.origin.y = a2;
    v92.size.width = a3;
    v92.size.height = rect;
    v93 = CGRectApplyAffineTransform(v92, &v90);
    *&v57 = CGRectInset(v93, v77 * -v55, v78 * -v55);
    v56 = -2.5;
    v61 = -2.5;
    goto LABEL_10;
  }

  if (!a6)
  {
    v56 = -v55;
    v57 = a1;
    v58 = a2;
    v59 = a3;
    v60 = a4;
    v61 = v56;
LABEL_10:
    *&v79 = CGRectInset(*&v57, v56, v61);
    goto LABEL_14;
  }

  v80 = uni_logger_api();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    sub_2956CB6F4(v80, v81, v82, v83, v84, v85, v86, v87);
  }

  v79 = *MEMORY[0x29EDB90D8];
LABEL_14:

  return v79;
}

CGFloat sub_2956A0CB4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, void *a7, void *a8, void *a9, void *a10)
{
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v22 = a10;
  if (a6)
  {
    if ((a6 & 0xFFFFFFFD) == 1)
    {
      v28.origin.x = a1;
      v28.origin.y = a2;
      v28.size.width = a3;
      v28.size.height = a4;
      *&a1 = CGRectInset(v28, -2.0, -2.0);
    }
  }

  else
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0);
    objc_msgSend_CGRectValue(v23, v24, v25);
    a1 = v26;
  }

  return a1;
}

double sub_2956A0DBC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, void *a7, void *a8, void *a9, void *a10)
{
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v22 = a10;
  if (a6 == 1)
  {
    v28 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 1);
    objc_msgSend_CGRectValue(v28, v29, v30);
    v32 = v31;
    v34 = objc_msgSend_objectAtIndexedSubscript_(v20, v33, 2);
    objc_msgSend_CGRectValue(v34, v35, v36);
    v38 = v32 / v37;

    v40 = objc_msgSend_objectAtIndexedSubscript_(v20, v39, 1);
    objc_msgSend_CGRectValue(v40, v41, v42);
    v44 = v43;
    v46 = objc_msgSend_objectAtIndexedSubscript_(v20, v45, 2);
    objc_msgSend_CGRectValue(v46, v47, v48);
    v50 = v44 / v49;

    CGAffineTransformMakeScale(&v54, v38, v50);
    v55.origin.x = a1;
    v55.origin.y = a2;
    v55.size.width = a3;
    v55.size.height = a4;
    v56 = CGRectApplyAffineTransform(v55, &v54);
    v51 = -2.0;
    v52 = -2.0;
LABEL_7:
    *&v27 = CGRectInset(v56, v51, v52);
    goto LABEL_8;
  }

  if (a6)
  {
    if ((a6 & 0xFFFFFFFE) != 2)
    {
      abort();
    }

    v51 = -2.0;
    v52 = -2.0;
    v56.origin.x = a1;
    v56.origin.y = a2;
    v56.size.width = a3;
    v56.size.height = a4;
    goto LABEL_7;
  }

  v23 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0);
  objc_msgSend_CGRectValue(v23, v24, v25);
  v27 = v26;

LABEL_8:
  return v27;
}

double sub_2956A0FAC(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_msgSend_floatValue(a10, a6, a7);
  v15 = -ceilf(v14 * 4.0);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;

  *&result = CGRectInset(*&v16, v15, 0.0);
  return result;
}

double sub_2956A1020(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_msgSend_floatValue(a10, a6, a7);
  v15 = -ceilf(v14 * 4.0);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;

  *&result = CGRectInset(*&v16, 0.0, v15);
  return result;
}

void sub_2956A2D54()
{
  v0 = objc_alloc(MEMORY[0x29EDB8E78]);
  v2 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.coremedia");
  if (v2)
  {
    v12 = v2;
    v5 = objc_msgSend_dictionaryRepresentation(v2, v3, v4);
    v7 = v5;
    if (v5)
    {
      v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"useEyeSLM");
      if (v8)
      {
        v11 = v8;
        byte_2A1388948 = 1;
        byte_2A1388949 = objc_msgSend_BOOLValue(v8, v9, v10);
      }
    }

    v2 = v12;
  }
}

void sub_2956A5284()
{
  v0 = objc_alloc(MEMORY[0x29EDB8E78]);
  v2 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.coremedia");
  if (v2)
  {
    v12 = v2;
    v5 = objc_msgSend_dictionaryRepresentation(v2, v3, v4);
    v7 = v5;
    if (v5)
    {
      v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"useGlasses");
      if (v8)
      {
        v11 = v8;
        byte_2A1388818 = objc_msgSend_BOOLValue(v8, v9, v10);
      }
    }

    v2 = v12;
  }
}

void sub_2956A74B4()
{
  v0 = objc_alloc(MEMORY[0x29EDB8E78]);
  v2 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.coremedia");
  if (v2)
  {
    v12 = v2;
    v5 = objc_msgSend_dictionaryRepresentation(v2, v3, v4);
    v7 = v5;
    if (v5)
    {
      v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"crispHair");
      if (v8)
      {
        v11 = v8;
        byte_2A1388950 = 1;
        byte_2A1388951 = objc_msgSend_BOOLValue(v8, v9, v10);
      }
    }

    v2 = v12;
  }
}

void sub_2956A7558()
{
  v0 = objc_alloc(MEMORY[0x29EDB8E78]);
  v2 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.coremedia");
  if (v2)
  {
    v14 = v2;
    v5 = objc_msgSend_dictionaryRepresentation(v2, v3, v4);
    v7 = v5;
    if (v5)
    {
      v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"doHairnet");
      isEqual = objc_msgSend_isEqual_(v8, v9, MEMORY[0x29EDB8EB0]);
    }

    else
    {
      v8 = 0;
      isEqual = objc_msgSend_isEqual_(0, v6, MEMORY[0x29EDB8EB0]);
    }

    if ((isEqual & 1) != 0 || (objc_msgSend_isEqual_(v8, v11, &unk_2A1C94AE0) & 1) != 0 || objc_msgSend_isEqual_(v8, v11, @"1"))
    {
      byte_2A1388958 = 121;
    }

    if ((objc_msgSend_isEqual_(v8, v11, MEMORY[0x29EDB8EA8]) & 1) != 0 || (objc_msgSend_isEqual_(v8, v12, &unk_2A1C94AB0) & 1) != 0 || objc_msgSend_isEqual_(v8, v13, @"0"))
    {
      byte_2A1388958 = 110;
    }

    v2 = v14;
  }
}

void sub_2956A7CF0(uint64_t a1, void *a2)
{
  v3 = objc_msgSend_sortedArrayUsingComparator_(a2, a2, &unk_2A1C8A6A8);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v37, v36, 16);
  if (!v5)
  {
    LODWORD(v9) = 0;
LABEL_13:
    v29 = (a1 + (v9 << 6) + 32);
    v30 = v9 + 1;
    __asm { FMOV            V0.2D, #-1.0 }

    do
    {
      *(v29 - 2) = _Q0;
      *(v29 - 1) = _Q0;
      *v29 = _Q0;
      v29[1] = _Q0;
      v29 += 4;
    }

    while (v30++ != 4);
    goto LABEL_16;
  }

  v8 = v5;
  LODWORD(v9) = 0;
  v10 = *v38;
  do
  {
    v11 = 0;
    v12 = v9;
    v13 = (a1 + 32 + (v9 << 6));
    v9 = v8 + v9;
    do
    {
      if (*v38 != v10)
      {
        objc_enumerationMutation(v3);
      }

      if (v12 <= 3)
      {
        v14 = *(*(&v37 + 1) + 8 * v11);
        objc_msgSend_centerPos(v14, v6, v7);
        *(v13 - 4) = v15;
        *(v13 - 3) = v16;
        objc_msgSend_leftEyeCenterPos(v14, v17, v18);
        *(v13 - 2) = v19;
        *(v13 - 1) = v20;
        objc_msgSend_rightEyeCenterPos(v14, v21, v22);
        *v13 = v23;
        v13[1] = v24;
        objc_msgSend_chinCenterPos(v14, v25, v26);
        v13[2] = v27;
        v13[3] = v28;
      }

      ++v12;
      ++v11;
      v13 += 8;
    }

    while (v8 != v11);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v37, v36, 16);
  }

  while (v8);
  if (v9 - 1 <= 2)
  {
    goto LABEL_13;
  }

LABEL_16:
}

uint64_t sub_2956A8964(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_msgSend_leftEyeCenterPos(v5, v6, v7);
  v9 = v8;
  v11 = v10;
  objc_msgSend_rightEyeCenterPos(v5, v12, v13);
  v15 = v14;
  v17 = v16;

  objc_msgSend_leftEyeCenterPos(v4, v18, v19);
  v21 = v20;
  v23 = v22;
  objc_msgSend_rightEyeCenterPos(v4, v24, v25);
  v27 = v26;
  v29 = v28;

  v30 = (v9 - v15) * (v9 - v15) + (v11 - v17) * (v11 - v17);
  v31 = (v21 - v27) * (v21 - v27) + (v23 - v29) * (v23 - v29);
  if (v30 > v31)
  {
    return -1;
  }

  else
  {
    return v30 < v31;
  }
}

void sub_2956A8A2C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_2956A8A48()
{

  return objc_opt_isKindOfClass();
}

id sub_2956AA43C(void *a1)
{
  v1 = MEMORY[0x29EDB9178];
  v2 = a1;
  v5 = objc_msgSend_metalTexture(v2, v3, v4);
  v6 = *MEMORY[0x29EDB9220];
  v26[0] = *MEMORY[0x29EDB9228];
  v26[1] = v6;
  v27[0] = MEMORY[0x29EDB8EB0];
  v9 = objc_msgSend_null(MEMORY[0x29EDB8E28], v7, v8);
  v27[1] = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v10, v27, v26, 2);
  v13 = objc_msgSend_imageWithMTLTexture_options_(v1, v12, v5, v11);

  objc_msgSend_region(v2, v14, v15);
  v17 = v16;
  objc_msgSend_region(v2, v18, v19);
  v21 = v20;

  CGAffineTransformMakeTranslation(&v25, v17, v21);
  v23 = objc_msgSend_imageByApplyingTransform_(v13, v22, &v25);

  return v23;
}

CFTypeRef sub_2956AA570(size_t a1, const char *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *MEMORY[0x29EDB96D0];
  v8 = *MEMORY[0x29EDB96E0];
  v9 = 1;
  do
  {
    v10 = v9;
    pixelBufferOut = 0;
    v16[1] = v8;
    v17[0] = MEMORY[0x29EDB8EA0];
    v16[0] = v7;
    v11 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], a2, 1278226536);
    v17[1] = v11;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v12, v17, v16, 2);

    CVPixelBufferCreate(0, a1, a2, 0x4C303068u, v13, &pixelBufferOut);
    v14 = pixelBufferOut;

    *(a3 + 8 * v6) = v14;
    result = CFAutorelease(v14);
    v9 = 0;
    v6 = 1;
  }

  while ((v10 & 1) != 0);
  return result;
}

id sub_2956AA67C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    IOSurface = CVPixelBufferGetIOSurface(*(a2 + 8 * v5));
    v9 = v3;
    if (IOSurfaceGetPixelFormat(IOSurface) != 1278226536)
    {
      sub_2956CC26C();
    }

    v10 = MEMORY[0x29EDBB670];
    Width = IOSurfaceGetWidth(IOSurface);
    Height = IOSurfaceGetHeight(IOSurface);
    v14 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v10, v13, 25, Width, Height, 0);
    v17 = objc_msgSend_usage(v14, v15, v16);
    objc_msgSend_setUsage_(v14, v18, v17 | 3);
    v20 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(v9, v19, v14, IOSurface, 0);

    objc_msgSend_addObject_(v4, v21, v20);
    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);

  return v4;
}

id sub_2956AA7D8(void *a1, const char *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v11 = objc_msgSend_imageByClampingToExtent(a1, a2, a3);
  CGAffineTransformMakeTranslation(&v18, -a4, -a5);
  v13 = objc_msgSend_imageByApplyingTransform_(v11, v12, &v18);

  v16 = objc_msgSend_imageByCroppingToRect_(v13, v14, v15, 0.0, 0.0, a6, a7);

  return v16;
}

id sub_2956AA888(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_kernelWithName_(CoreImageOnlyLibrary, v2, @"ccp_interleavedToPlanar");
  if (v1 && (objc_msgSend_extent(v1, v3, v4), !CGRectIsInfinite(v43)))
  {
    objc_msgSend_extent(v1, v6, v7);
    v10 = v9;
    objc_msgSend_extent(v1, v11, v12);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    CGAffineTransformMakeScale(&v41, 1.0, 3.0);
    v44.origin.x = v14;
    v44.origin.y = v16;
    v44.size.width = v18;
    v44.size.height = v20;
    v45 = CGRectApplyAffineTransform(v44, &v41);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
    v40[0] = MEMORY[0x29EDCA5F8];
    v40[1] = 3221225472;
    v40[2] = sub_2956AB5E4;
    v40[3] = &unk_29EDD48E0;
    *&v40[4] = v10;
    v39[0] = v1;
    v27 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v25, v26, v10);
    v39[1] = v27;
    v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v28, v39, 2);
    v37 = *MEMORY[0x29EDB9250];
    v31 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v30, *MEMORY[0x29EDB9218]);
    v38 = v31;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v32, &v38, &v37, 1);
    v35 = objc_msgSend_applyWithExtent_roiCallback_arguments_options_(v5, v34, v40, v29, v33, x, y, width, height);

    v1 = v35;
    v8 = v1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_2956AAAB4(void *a1)
{
  v1 = a1;
  v3 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v2, @"to_range_m1_p1");
  objc_msgSend_extent(v1, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v19 = v1;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v14, &v19, 1);

  v17 = objc_msgSend_applyWithExtent_arguments_(v3, v16, v15, v7, v9, v11, v13);

  return v17;
}

void sub_2956AAB94(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = MEMORY[0x29EDB9198];
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v14 = objc_msgSend_vectorWithX_Y_Z_W_(v8, v12, v13, 1.0, 0.0, 0.0, 0.0, @"inputRVector");
  v33[0] = v14;
  v32[1] = @"inputGVector";
  v17 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x29EDB9198], v15, v16, 1.0, 0.0, 0.0, 0.0);
  v33[1] = v17;
  v32[2] = @"inputBVector";
  v20 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x29EDB9198], v18, v19, 1.0, 0.0, 0.0, 0.0);
  v33[2] = v20;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v21, v33, v32, 3);
  v24 = objc_msgSend_imageByApplyingFilter_withInputParameters_(v11, v23, @"CIColorMatrix", v22);

  v25 = objc_alloc(MEMORY[0x29EDB9188]);
  v27 = objc_msgSend_initWithMTLTexture_commandBuffer_(v25, v26, v10, v9);

  objc_msgSend_setFlipped_(v27, v28, 1);
  objc_msgSend_setColorSpace_(v27, v29, 0);
  v31 = objc_msgSend_startTaskToRender_toDestination_error_(v7, v30, v24, v27, 0);
}

void sub_2956AAD50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = uni_logger_api();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_2956CC298(v4);
  }

  v5 = NSSelectorFromString(&cfstr_Seterror.isa);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_performSelector_withObject_(*(a1 + 32), v6, v5, v3);
  }
}

void sub_2956AADDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_internalCommandQueue(*(a1 + 32), a2, a3);
  v13 = objc_msgSend_commandBuffer(v4, v5, v6);

  objc_msgSend_commit(v13, v7, v8);
  objc_msgSend_waitUntilCompleted(v13, v9, v10);
  objc_msgSend_clearCaches(*(a1 + 32), v11, v12);
}

id ApplyHairnetProcessor(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v19 = a7;
  if (v13 && v14 && v16 && v17)
  {
    LODWORD(v20) = *(a6 + 56);
    LODWORD(v21) = *(a6 + 60);
    v22 = objc_msgSend_apply_sdof_mask_alpha_chromaWeight_chromaBlurSigma_model_(ApplyHairnetModel, v18, v13, v15, v16, v14, v17, v20, v21);
    if (!v22)
    {
      sub_2956CC374();
    }

    v24 = v22;
    v25 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v23, @"divide_alpha");
    objc_msgSend_extent(v24, v26, v27);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v41 = v24;
    v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v36, &v41, 1);
    v39 = objc_msgSend_applyWithExtent_arguments_(v25, v38, v37, v29, v31, v33, v35);
  }

  else
  {
    v39 = v15;
  }

  return v39;
}

void sub_2956AB5FC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_2956ADBB0(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, _DWORD *a4)
{
  result = 4294867293;
  v6 = (*(a1 + 8) + 0x7FFFFFFF0) >> 3;
  v7 = v6 / 2;
  v8 = a1 + 16;
  v9 = *(v8 + 8 * (v6 / 2));
  v10 = v9 != a2;
  if (v9 != a2 && v6 >= 2)
  {
    v12 = 0;
    v13 = v6 - 1;
    do
    {
      if (v9 <= a2)
      {
        if (v9 < a2)
        {
          v12 = v7 + 1;
          v7 = (v13 + v7 + 1 + 1) / 2;
          if (*(v8 + 8 * v7) <= v9)
          {
            return 4294867295;
          }

          v9 = *(v8 + 8 * v7);
        }
      }

      else
      {
        if (*(v8 + 8 * ((v12 + v7) / 2)) >= v9)
        {
          return 4294867295;
        }

        v13 = v7 - 1;
        v9 = *(v8 + 8 * ((v12 + v7) / 2));
        v7 = (v12 + v7) / 2;
      }

      v10 = v9 != a2;
    }

    while (v9 != a2 && v12 < v13);
  }

  if (v10)
  {
    return 4294867294;
  }

  v14 = v8 + 8 * v7;
  if (*(v14 + 2) == a3)
  {
    result = 0;
    *a4 = *(v14 + 4);
  }

  return result;
}

void sub_2956ADCA8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id createInpaintingMask(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, float *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v329 = v13;
  objc_msgSend_extent(v13, v19, v20);
  v22 = v21;
  v24 = v23;
  v25 = v18;
  v27 = v25;
  v343 = v17;
  v344 = a7;
  if (v25)
  {
    v28 = objc_msgSend_objectForKeyedSubscript_(v25, v26, @"lEye");
    v30 = objc_msgSend_objectForKeyedSubscript_(v27, v29, @"rEye");
    v32 = objc_msgSend_objectForKeyedSubscript_(v27, v31, @"chin");
    v35 = objc_msgSend_count(v28, v33, v34);
    v37 = 1.0;
    if (v35 >= 2)
    {
      v38 = 0;
      v39 = v24;
      v40 = v22;
      v41 = v35 >> 1;
      v37 = 0.0;
      v354 = v39 / v40;
      do
      {
        objc_msgSend_valueAtIndex_(v28, v36, v38);
        v43 = v42;
        objc_msgSend_valueAtIndex_(v28, v44, v38 + 1);
        *&v45 = v45;
        v46 = v354 * *&v45;
        objc_msgSend_valueAtIndex_(v30, v47, v38);
        v49 = v48;
        objc_msgSend_valueAtIndex_(v30, v50, v38 + 1);
        *&v51 = v51;
        v52 = v354 * *&v51;
        objc_msgSend_valueAtIndex_(v32, v53, v38);
        v55 = v54;
        objc_msgSend_valueAtIndex_(v32, v56, v38 + 1);
        *&v57 = v57;
        v58 = v354 * *&v57;
        v59 = hypotf(v43 - v49, v46 - v52);
        v60 = v37;
        v61 = v59 + v59;
        v62 = hypotf(v43 - v55, v46 - v58);
        v37 = fmaxf(v60, fmaxf(fmaxf(v61, v62), hypotf(v49 - v55, v52 - v58)) * 4.0);
        v38 += 2;
        --v41;
      }

      while (v41);
    }

    v17 = v343;
    a7 = v344;
  }

  else
  {
    v37 = 1.0;
  }

  objc_msgSend_extent(v17, v63, v64);
  v66 = v65;
  v68 = v67;
  v336 = sub_2956AED3C(v14, v65, v67);

  v328 = sub_2956AED3C(v15, v66, v68);

  v350 = v66;
  v351 = v68;
  if (v16)
  {
    v327 = sub_2956AED3C(v16, v66, v68);
  }

  else
  {
    v69 = uni_logger_api();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 136446210;
      *(&buf.a + 4) = "createInpaintingMask";
      _os_log_impl(&dword_295691000, v69, OS_LOG_TYPE_INFO, "%{public}s Note: glasses matte is nil and will be treated as if it contains all zeros.", &buf, 0xCu);
    }

    v327 = 0;
  }

  v70 = sub_2956AEE50(v17, a7[1]);
  objc_msgSend_extent(v17, v71, v72);
  v74 = v73;
  v76 = v75;
  v77 = a7[11];
  v345 = a7[12];
  v78 = v27;
  v80 = v78;
  v81 = 0x29EDB8000;
  v82 = 0x29EDB8000;
  v330 = v78;
  v331 = v70;
  if (v27)
  {
    v83 = objc_msgSend_objectForKeyedSubscript_(v78, v79, @"lEye");
    v85 = objc_msgSend_objectForKeyedSubscript_(v80, v84, @"rEye");
    v87 = objc_msgSend_objectForKeyedSubscript_(v80, v86, @"chin");
    v347 = v87;
    if (v77 <= 0.0)
    {
      v27 = 0;
    }

    else
    {
      v90 = v87;
      v91 = v74;
      v337 = v91;
      v92 = v76;
      v339 = v92;
      v93 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v88, v89);
      v96 = objc_msgSend_count(v83, v94, v95);
      v341 = v85;
      if (v96 >= 2)
      {
        v334 = v77;
        v100 = 0;
        v101 = v96 >> 1;
        v333 = *MEMORY[0x29EDB9250];
        v332 = *MEMORY[0x29EDB9218];
        v102 = v345 > 1.0;
        if (v345 < 0.001)
        {
          v102 = 1;
        }

        v355 = v102;
        v335 = v83;
        do
        {
          objc_msgSend_valueAtIndex_(v83, v97, v100);
          v104 = v103;
          objc_msgSend_valueAtIndex_(v83, v105, v100 + 1);
          v107 = v106;
          objc_msgSend_valueAtIndex_(v85, v108, v100);
          v110 = v109;
          objc_msgSend_valueAtIndex_(v85, v111, v100 + 1);
          v113 = v112;
          objc_msgSend_valueAtIndex_(v90, v114, v100);
          v116 = v115;
          objc_msgSend_valueAtIndex_(v90, v117, v100 + 1);
          v119 = v118;
          v121 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v120, @"ellipse");
          if (!v121)
          {
            sub_2956CCC34();
          }

          v124 = v121;
          if (v355)
          {
            v125 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v122, v123);
          }

          else
          {
            v126 = v104;
            v127 = v107;
            v128 = v110;
            v129 = v113;
            v130 = v116;
            v131 = v37;
            v132 = v337 * v130;
            v133 = v119;
            v134 = v339 * v133;
            v135 = (v132 + ((v334 * ((v337 * v126) - (v337 * v128))) * 0.5)) - v132;
            v136 = (v134 + ((v334 * ((v339 * v127) - (v339 * v129))) * 0.5)) - v134;
            v137 = hypotf(v135, v136);
            v138 = (v132 - v137);
            v139 = (v134 - v137);
            v140 = v137 + v137;
            v141 = (v135 * (v345 * v137)) / v137;
            v142 = (v136 * (v345 * v137)) / v137;
            v352 = objc_msgSend_vectorWithX_Y_(MEMORY[0x29EDB9198], v143, v144, (v132 + v141), (v134 + v142));
            v145 = v132 - v141;
            v37 = v131;
            v148 = objc_msgSend_vectorWithX_Y_(MEMORY[0x29EDB9198], v146, v147, v145, (v134 - v142));
            *&buf.a = v352;
            *&buf.b = v148;
            v151 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v149, v150, v140);
            *&buf.c = v151;
            v153 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v152, &buf, 3);
            v360 = v333;
            v155 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v154, v332);
            v361[0] = v155;
            v157 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v156, v361, &v360, 1);
            v125 = objc_msgSend_applyWithExtent_arguments_options_(v124, v158, v153, v157, v138, v139, v140, v140);

            v90 = v347;
            v83 = v335;

            v85 = v341;
          }

          v99 = sub_2956AEFDC(v93, v125);

          v100 += 2;
          v93 = v99;
          --v101;
        }

        while (v101);
      }

      else
      {
        v99 = v93;
      }

      v159 = objc_msgSend_blackImage(MEMORY[0x29EDB9178], v97, v98);
      v161 = objc_msgSend_imageByCompositingOverImage_(v99, v160, v159);

      v27 = objc_msgSend_imageByCroppingToRect_(v161, v162, v163, 0.0, 0.0, v337, v339);

      v85 = v341;
      a7 = v344;
      v80 = v330;
      v70 = v331;
      v82 = 0x29EDB8000uLL;
      v81 = 0x29EDB8000uLL;
    }
  }

  v164 = sub_2956AEFDC(v328, v27);

  v165 = sub_2956AF1CC(v164, v70);

  v166 = v329;
  if (!v166)
  {
    sub_2956CCD68();
  }

  v168 = v166;
  v169 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v167, @"makeGrey");
  if (!v169)
  {
    sub_2956CCD3C();
  }

  v172 = v169;
  v340 = v165;
  v342 = v27;
  objc_msgSend_extent(v168, v170, v171);
  v174 = v173;
  v176 = v175;
  v178 = v177;
  v180 = v179;
  *&buf.a = v168;
  v182 = objc_msgSend_arrayWithObjects_count_(*(v81 + 3456), v181, &buf, 1);
  v353 = *MEMORY[0x29EDB9250];
  v360 = *MEMORY[0x29EDB9250];
  v356 = *MEMORY[0x29EDB9218];
  v184 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v183, *MEMORY[0x29EDB9218]);
  v361[0] = v184;
  v186 = objc_msgSend_dictionaryWithObjects_forKeys_count_(*(v82 + 3520), v185, v361, &v360, 1);
  v188 = objc_msgSend_applyWithExtent_arguments_options_(v172, v187, v182, v186, v174, v176, v178, v180);

  v189 = v188;
  if (!v189)
  {
    sub_2956CCD10();
  }

  v191 = v189;
  v192 = objc_msgSend_kernelWithName_(CoreImageOnlyLibrary, v190, @"sobelGrey");
  if (!v192)
  {
    sub_2956CCCE4();
  }

  v195 = v192;
  v348 = fmax(v350, v351);
  objc_msgSend_extent(v191, v193, v194);
  v346 = v196;
  v198 = v197;
  v200 = v199;
  v202 = v201;
  objc_msgSend_extent(v191, v203, v204);
  v364 = CGRectInset(v363, -1.0, -1.0);
  x = v364.origin.x;
  y = v364.origin.y;
  width = v364.size.width;
  height = v364.size.height;
  *&buf.a = v191;
  v210 = objc_msgSend_arrayWithObjects_count_(*(v81 + 3456), v209, &buf, 1);
  v360 = v353;
  v212 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v211, v356);
  v361[0] = v212;
  v214 = objc_msgSend_dictionaryWithObjects_forKeys_count_(*(v82 + 3520), v213, v361, &v360, 1);
  v216 = objc_msgSend_applyWithExtent_roiCallback_arguments_options_(v195, v215, &unk_2A1C8A6C8, v210, v214, x, y, width, height);

  v365.origin.x = v346;
  v365.origin.y = v198;
  v365.size.width = v200;
  v365.size.height = v202;
  if (!CGRectIsInfinite(v365))
  {
    v219 = objc_msgSend_imageByCroppingToRect_(v216, v217, v218, v346, v198, v200, v202);

    v216 = v219;
  }

  v220 = v348;

  v221 = v216;
  objc_msgSend_extent(v221, v222, v223);
  v225 = v350 / v224;
  objc_msgSend_extent(v221, v226, v227);
  v230 = v351 / v229;
  v338 = v168;
  if (fabs(v225 + -1.0) >= 0.0001 || fabs(v230 + -1.0) >= 0.0001)
  {
    v233 = fmax(v225, v230);
    if (v233 <= 1.0)
    {
      v234 = 0;
      while (v233 <= 0.5)
      {
        v233 = v233 + v233;
        v225 = v225 + v225;
        v230 = v230 + v230;
        ++v234;
      }

      v349 = v348;
      v235 = objc_msgSend_kernelWithName_(CoreImageOnlyLibrary, v228, @"downByTwoRMax");
      objc_msgSend_setCanReduceOutputChannels_(v235, v236, 1);
      objc_msgSend_setPreservesRange_(v235, v237, 1);
      v240 = objc_msgSend_imageByClampingToExtent(v221, v238, v239);

      if (v234)
      {
        v243 = *MEMORY[0x29EDB90D0];
        v244 = *(MEMORY[0x29EDB90D0] + 8);
        v245 = *(MEMORY[0x29EDB90D0] + 16);
        v246 = *(MEMORY[0x29EDB90D0] + 24);
        do
        {
          v361[0] = v240;
          v247 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v241, v361, 1);
          v359 = v353;
          v249 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v248, v356);
          v360 = v249;
          v251 = objc_msgSend_dictionaryWithObjects_forKeys_count_(*(v82 + 3520), v250, &v360, &v359, 1);
          v253 = objc_msgSend_applyWithExtent_roiCallback_arguments_options_(v235, v252, &unk_2A1C8A6E8, v247, v251, v243, v244, v245, v246);

          v82 = 0x29EDB8000;
          v240 = v253;
          --v234;
        }

        while (v234);
      }

      else
      {
        v253 = v240;
      }

      if (fabs(v225 + -1.0) >= 0.0001 || fabs(v230 + -1.0) >= 0.0001)
      {
        CGAffineTransformMakeScale(&buf, v225, v230);
        v255 = objc_msgSend_imageByApplyingTransform_(v253, v254, &buf);

        v253 = v255;
      }

      a7 = v344;
      v81 = 0x29EDB8000uLL;
      v220 = v349;
      v256 = objc_msgSend_imageByCroppingToRect_(v253, v241, v242, 0.0, 0.0, v350, v351);

      v231 = v256;
      v232 = v231;
    }

    else
    {
      v232 = sub_2956AED3C(v221, v350, v351);
      v231 = v221;
    }
  }

  else
  {
    v231 = v221;
    v232 = v231;
  }

  v257 = sub_2956AF38C(v336, v37 * (a7[2] * v220));
  v259 = *(a7 + 3);
  v258 = *(a7 + 4);
  v260 = v257;
  if (!v260)
  {
    sub_2956CCCB8();
  }

  v262 = v260;
  v263 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v261, @"threshold_between");
  if (!v263)
  {
    sub_2956CCC8C();
  }

  v266 = v263;
  objc_msgSend_extent(v262, v264, v265);
  v268 = v267;
  v270 = v269;
  v272 = v271;
  v274 = v273;
  *&buf.a = v262;
  LODWORD(v267) = v259;
  v277 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v275, v276, v267);
  *&buf.b = v277;
  LODWORD(v278) = v258;
  v281 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v279, v280, v278);
  *&buf.c = v281;
  v283 = objc_msgSend_arrayWithObjects_count_(*(v81 + 3456), v282, &buf, 3);
  v360 = v353;
  v285 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v284, v356);
  v286 = v82;
  v287 = v285;
  v361[0] = v285;
  v289 = objc_msgSend_dictionaryWithObjects_forKeys_count_(*(v286 + 3520), v288, v361, &v360, 1);
  v291 = objc_msgSend_applyWithExtent_arguments_options_(v266, v290, v283, v289, v268, v270, v272, v274);

  if (!v291)
  {
    sub_2956CCC60();
  }

  v292 = v343;
  v293 = sub_2956AF4E8(v343, v37 * (v344[9] * v220));
  v294 = sub_2956AEE50(v293, v344[10]);

  v295 = sub_2956AF38C(v340, v37 * (v344[5] * v220));

  v296 = sub_2956AF5B0(v295, v344[6]);

  v297 = v327;
  if (v327)
  {
    v298 = sub_2956AF4E8(v327, v37 * (v344[7] * v220));

    v297 = sub_2956AF5B0(v298, v344[8]);
  }

  v357 = v296;
  v299 = sub_2956AF1CC(v291, v296);
  v300 = sub_2956AF73C(v294);
  v301 = sub_2956AF1CC(v299, v300);

  if (v297)
  {
    v302 = sub_2956AF73C(v297);
    v303 = sub_2956AF1CC(v301, v302);

    v301 = v303;
  }

  v304 = sub_2956AF5B0(v232, *v344);

  v305 = sub_2956AF1CC(v304, v301);

  v306 = v344[13] * v220;
  v307 = v305;
  v310 = v307;
  v311 = (2 * vcvtms_s32_f32(v306 * 0.5)) | 1;
  if (v311 > 2)
  {
    v313 = objc_msgSend_imageByClampingToExtent(v307, v308, v309);
    v361[0] = @"inputWidth";
    v315 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v314, v311);
    *&buf.a = v315;
    v361[1] = @"inputHeight";
    v317 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v316, v311);
    *&buf.b = v317;
    v319 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v318, &buf, v361, 2);
    v321 = objc_msgSend_imageByApplyingFilter_withInputParameters_(v313, v320, @"CIMorphologyRectangleMaximum", v319);

    v292 = v343;
    objc_msgSend_extent(v310, v322, v323);
    v312 = objc_msgSend_imageByCroppingToRect_(v321, v324, v325);
  }

  else
  {
    v312 = v307;
  }

  return v312;
}

id sub_2956AED3C(void *a1, double a2, double a3)
{
  v5 = a1;
  objc_msgSend_extent(v5, v6, v7);
  v9 = a2 / v8;
  objc_msgSend_extent(v5, v10, v11);
  v15 = a3 / v14;
  if (fabs(v9 + -1.0) >= 0.0001 || fabs(v15 + -1.0) >= 0.0001)
  {
    v16 = objc_msgSend_imageByClampingToExtent(v5, v12, v13);

    CGAffineTransformMakeScale(&v23, v9, v15);
    v18 = objc_msgSend_imageByApplyingTransform_(v16, v17, &v23);

    v5 = objc_msgSend_imageByCroppingToRect_(v18, v19, v20, 0.0, 0.0, a2, a3);

    if (!v5)
    {
      sub_2956CCD94();
    }
  }

  v21 = v5;

  return v21;
}

id sub_2956AEE50(void *a1, float a2)
{
  v3 = a1;
  if (!v3)
  {
    sub_2956CCE18();
  }

  v5 = v3;
  v6 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v4, @"threshold_lt");
  if (!v6)
  {
    sub_2956CCDEC();
  }

  v9 = v6;
  objc_msgSend_extent(v5, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v32[0] = v5;
  *&v10 = a2;
  v20 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v18, v19, v10);
  v32[1] = v20;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v21, v32, 2);
  v24 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v23, *MEMORY[0x29EDB9218], *MEMORY[0x29EDB9250]);
  v31 = v24;
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v25, &v31, &v30, 1);
  v28 = objc_msgSend_applyWithExtent_arguments_options_(v9, v27, v22, v26, v11, v13, v15, v17);

  if (!v28)
  {
    sub_2956CCDC0();
  }

  return v28;
}

id sub_2956AEFDC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_msgSend_extent(v3, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  objc_msgSend_extent(v4, v15, v16);
  v50.origin.x = v17;
  v50.origin.y = v18;
  v50.size.width = v19;
  v50.size.height = v20;
  v46.origin.x = v8;
  v46.origin.y = v10;
  v46.size.width = v12;
  v46.size.height = v14;
  v47 = CGRectUnion(v46, v50);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  if (CGRectIsEmpty(v47))
  {
    v27 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v25, v26);
LABEL_7:
    v31 = v27;
    goto LABEL_8;
  }

  objc_msgSend_extent(v3, v25, v26);
  if (CGRectIsEmpty(v48))
  {
    v27 = v4;
    goto LABEL_7;
  }

  objc_msgSend_extent(v4, v28, v29);
  if (CGRectIsEmpty(v49))
  {
    v27 = v3;
    goto LABEL_7;
  }

  v33 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v30, @"orMasks");
  if (!v33)
  {
    sub_2956CCE44();
  }

  v35 = v33;
  v44[0] = v3;
  v44[1] = v4;
  v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v34, v44, 2);
  v38 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v37, *MEMORY[0x29EDB9218], *MEMORY[0x29EDB9250]);
  v43 = v38;
  v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v39, &v43, &v42, 1);
  v31 = objc_msgSend_applyWithExtent_arguments_options_(v35, v41, v36, v40, x, y, width, height);

LABEL_8:

  return v31;
}

id sub_2956AF1CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_msgSend_extent(v3, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  objc_msgSend_extent(v4, v15, v16);
  v44.origin.x = v17;
  v44.origin.y = v18;
  v44.size.width = v19;
  v44.size.height = v20;
  v42.origin.x = v8;
  v42.origin.y = v10;
  v42.size.width = v12;
  v42.size.height = v14;
  v43 = CGRectIntersection(v42, v44);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  if (CGRectIsEmpty(v43))
  {
    v27 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v25, v26);
  }

  else
  {
    v28 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v25, @"andMasks");
    if (!v28)
    {
      sub_2956CCE70();
    }

    v30 = v28;
    v40[0] = v3;
    v40[1] = v4;
    v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v29, v40, 2);
    v33 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v32, *MEMORY[0x29EDB9218], *MEMORY[0x29EDB9250]);
    v39 = v33;
    v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v34, &v39, &v38, 1);
    v27 = objc_msgSend_applyWithExtent_arguments_options_(v30, v36, v31, v35, x, y, width, height);
  }

  return v27;
}

id sub_2956AF38C(void *a1, float a2)
{
  v3 = a1;
  v6 = v3;
  for (i = 1.0; a2 >= 16.0; a2 = a2 * 0.5)
  {
    i = i + i;
  }

  objc_msgSend_extent(v3, v4, v5);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v18 = objc_msgSend_imageByClampingToExtent(v6, v16, v17);

  CGAffineTransformMakeScale(&v30, 1.0 / i, 1.0 / i);
  v20 = objc_msgSend_imageByApplyingTransform_highQualityDownsample_(v18, v19, &v30, 1);

  v23 = objc_msgSend_imageByApplyingGaussianBlurWithSigma_(v20, v21, v22, a2);

  CGAffineTransformMakeScale(&v30, i, i);
  v25 = objc_msgSend_imageByApplyingTransform_(v23, v24, &v30);

  v28 = objc_msgSend_imageByCroppingToRect_(v25, v26, v27, v9, v11, v13, v15);

  if (!v28)
  {
    sub_2956CCE9C();
  }

  return v28;
}

id sub_2956AF4E8(void *a1, float a2)
{
  v3 = a1;
  objc_msgSend_extent(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v16 = objc_msgSend_imageByClampingToExtent(v3, v14, v15);

  v19 = objc_msgSend_imageByApplyingGaussianBlurWithSigma_(v16, v17, v18, a2);

  v22 = objc_msgSend_imageByCroppingToRect_(v19, v20, v21, v7, v9, v11, v13);

  if (!v22)
  {
    sub_2956CCEC8();
  }

  return v22;
}

id sub_2956AF5B0(void *a1, float a2)
{
  v3 = a1;
  if (!v3)
  {
    sub_2956CCF4C();
  }

  v5 = v3;
  v6 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v4, @"threshold_gt");
  if (!v6)
  {
    sub_2956CCF20();
  }

  v9 = v6;
  objc_msgSend_extent(v5, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v32[0] = v5;
  *&v10 = a2;
  v20 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v18, v19, v10);
  v32[1] = v20;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v21, v32, 2);
  v24 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v23, *MEMORY[0x29EDB9218], *MEMORY[0x29EDB9250]);
  v31 = v24;
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v25, &v31, &v30, 1);
  v28 = objc_msgSend_applyWithExtent_arguments_options_(v9, v27, v22, v26, v11, v13, v15, v17);

  if (!v28)
  {
    sub_2956CCEF4();
  }

  return v28;
}

id sub_2956AF73C(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    sub_2956CCFD0();
  }

  v3 = v1;
  v4 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v2, @"invertMask");
  if (!v4)
  {
    sub_2956CCFA4();
  }

  v7 = v4;
  objc_msgSend_extent(v3, v5, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v27 = v3;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v16, &v27, 1);
  v25 = *MEMORY[0x29EDB9250];
  v19 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v18, *MEMORY[0x29EDB9218]);
  v26 = v19;
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v20, &v26, &v25, 1);
  v23 = objc_msgSend_applyWithExtent_arguments_options_(v7, v22, v17, v21, v9, v11, v13, v15);

  if (!v23)
  {
    sub_2956CCF78();
  }

  return v23;
}

double sub_2956AF8A4(double a1, double a2, double a3, double a4)
{
  v5.origin.x = a1 + a1;
  v5.origin.y = a2 + a2;
  v5.size.width = a3 + a3;
  v5.size.height = a4 + a4;
  *&result = CGRectIntegral(v5);
  return result;
}

uint64_t sub_2956AFD24(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_2A1388960 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], a2, a3);

  return MEMORY[0x2A1C71028]();
}

void sub_2956B08A8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

uint64_t sub_2956B0E14(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_2A18BA2C0 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], a2, a3);

  return MEMORY[0x2A1C71028]();
}

id sub_2956B0E54(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    sub_2956CD3EC();
  }

  v8 = v7;
  objc_sync_enter(v8);
  v9 = MEMORY[0x29EDBA070];
  v12 = objc_msgSend_registryID(v6, v10, v11);
  v14 = objc_msgSend_numberWithUnsignedLongLong_(v9, v13, v12);
  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v14);

  if (!v16)
  {
    v16 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v17, v18);
    v19 = MEMORY[0x29EDBA070];
    v22 = objc_msgSend_registryID(v6, v20, v21);
    v24 = objc_msgSend_numberWithUnsignedLongLong_(v19, v23, v22);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v25, v16, v24);

    if (!v16)
    {
      __assert_rtn("findObjectInCache", "UniDeviceCache.m", 36, "deviceDict");
    }
  }

  v26 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v5);

  objc_sync_exit(v8);

  return v26;
}

uint64_t sub_2956B15EC(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_2A1388978 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], a2, a3);

  return MEMORY[0x2A1C71028]();
}

id sub_2956B182C()
{
  if (qword_2A18BA358 != -1)
  {
    sub_2956CD600();
  }

  v1 = qword_2A18BA340;

  return v1;
}

uint64_t sub_2956B1D60(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_2A18BA340 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], a2, a3);

  return MEMORY[0x2A1C71028]();
}

void sub_2956B1E54(uint64_t a1)
{
  v2 = MEMORY[0x29EDB9F48];
  v3 = objc_opt_class();
  v5 = objc_msgSend_bundleForClass_(v2, v4, v3);
  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  v9 = objc_msgSend_URLForResource_withExtension_(v5, v8, v7, @"metallib");
  v10 = qword_2A18BA2F8;
  qword_2A18BA2F8 = v9;

  if (!qword_2A18BA2F8)
  {
    v11 = uni_logger_compile();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_2956CD640(v6);
    }
  }
}

void sub_2956B2248(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_bundleForClass_(MEMORY[0x29EDB9F48], a2, *(a1 + 40));
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v7 = objc_msgSend_URLForResource_withExtension_(v3, v6, v5, @"metallib");
  v8 = qword_2A18BA2F0;
  qword_2A18BA2F0 = v7;

  if (!qword_2A18BA2F0)
  {
    v9 = uni_logger_compile();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_2956CD7DC(v4);
    }
  }
}

uint64_t sub_2956B3230(uint64_t a1, const char *a2)
{
  qword_2A18BA2E8 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x29EDBA028], a2, 5, 5);

  return MEMORY[0x2A1C71028]();
}

uint64_t sub_2956B45F8()
{
  v0 = objc_alloc_init(MEMORY[0x29EDB8D90]);
  v1 = qword_2A18BA2E0;
  qword_2A18BA2E0 = v0;

  objc_msgSend_setName_(qword_2A18BA2E0, v2, @"com.apple.ccportrait.EspressoWrapper.nscache");
  objc_msgSend_setCountLimit_(qword_2A18BA2E0, v3, 8);
  v4 = qword_2A18BA2E0;

  return MEMORY[0x2A1C70FE8](v4, sel_setEvictsObjectsWhenApplicationEntersBackground_, 1);
}

void sub_2956B4AD4(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_built(*(a1 + 32), a2, a3) & 1) == 0)
  {
    context = espresso_create_context();
    if (context || (context = espresso_create_context()) != 0)
    {
      v5 = context;
      plan = espresso_create_plan();
      if (plan)
      {
        v7 = plan;
        if (espresso_plan_submit_set_multiple_buffering())
        {
          sub_2956CDDCC();
        }

        else
        {
          v10 = objc_msgSend_path(*(a1 + 32), v8, v9, 0);
          v11 = v10;
          objc_msgSend_UTF8String(v11, v12, v13);
          v14 = espresso_plan_add_network();

          if (v14)
          {
            sub_2956CDE14();
          }

          else if (espresso_plan_build())
          {
            sub_2956CDE5C();
          }

          else
          {
            objc_msgSend_setPlanIdx_(*(a1 + 32), v15, 0);
            objc_msgSend_setPlan_(*(a1 + 32), v16, v7);
            objc_msgSend_setCtx_(*(a1 + 32), v17, v5);
            objc_msgSend_setBuilt_(*(a1 + 32), v18, 1);
          }
        }
      }

      else
      {
        sub_2956CDEA4();
      }
    }

    else
    {
      sub_2956CDEEC();
    }
  }
}

void sub_2956B4E6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 4);
    if (v2)
    {
      v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], a2, @"com.apple.unified_rendering", v2, 0);
      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_2956B918C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (a1)
  {
    v10 = objc_msgSend_kernel(a1, v6, v7);
    if (v10 && (objc_msgSend_containsObject_(v5, v9, v10) & 1) == 0)
    {
      objc_msgSend_addObject_(v5, v11, v10);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = objc_msgSend_inputs(v10, v12, v13);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v28, v27, 16);
      if (v16)
      {
        v19 = v16;
        v20 = *v29;
        do
        {
          v21 = 0;
          do
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v14);
            }

            v22 = *(*(&v28 + 1) + 8 * v21);
            v23 = objc_msgSend_inputs(v10, v17, v18);
            v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v22);

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              sub_2956B918C(v25, v5, v8);
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v28, v27, 16);
        }

        while (v19);
      }

      objc_msgSend_addPointer_(v8, v26, v10);
    }
  }
}

id sub_2956BB4F0()
{
  if (qword_2A18BA348 != -1)
  {
    sub_2956CE4B4();
  }

  v1 = qword_2A18BA350;

  return v1;
}

void sub_2956C0834(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x500], 8);
  _Block_object_dispose(&STACK[0x530], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2956C09B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double sub_2956C09D0(uint64_t a1, const char *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_msgSend_roiCallback(*(a1 + 32), a2, a3);
  v14 = (v13)[2](v13, a2, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40), a4, a5, a6, a7);

  return v14;
}

uint64_t sub_2956C16C4(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_2A18BA350 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], a2, a3);

  return MEMORY[0x2A1C71028]();
}

void sub_2956C1704(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void sub_2956C1724(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

id uni_logger_general()
{
  if (qword_2A1388990 != -1)
  {
    sub_2956CF050();
  }

  v1 = qword_2A1388988;

  return v1;
}

uint64_t sub_2956C1960()
{
  qword_2A1388988 = os_log_create("com.apple.unified_rendering", "general");

  return MEMORY[0x2A1C71028]();
}

id uni_logger_api()
{
  if (qword_2A13889A0 != -1)
  {
    sub_2956CF064();
  }

  v1 = qword_2A1388998;

  return v1;
}

uint64_t sub_2956C19E8()
{
  qword_2A1388998 = os_log_create("com.apple.unified_rendering", "api");

  return MEMORY[0x2A1C71028]();
}

id uni_logger_render()
{
  if (qword_2A18BA310 != -1)
  {
    sub_2956CF078();
  }

  v1 = qword_2A18BA318;

  return v1;
}

uint64_t sub_2956C1A70()
{
  qword_2A18BA318 = os_log_create("com.apple.unified_rendering", "render");

  return MEMORY[0x2A1C71028]();
}

id uni_logger_performance()
{
  if (qword_2A13889B0 != -1)
  {
    sub_2956CF08C();
  }

  v1 = qword_2A13889A8;

  return v1;
}

uint64_t sub_2956C1AF8()
{
  qword_2A13889A8 = os_log_create("com.apple.unified_rendering", "performace");

  return MEMORY[0x2A1C71028]();
}

id uni_logger_compile()
{
  if (qword_2A18BA320 != -1)
  {
    sub_2956CF0A0();
  }

  v1 = qword_2A18BA328;

  return v1;
}

uint64_t sub_2956C1B80()
{
  qword_2A18BA328 = os_log_create("com.apple.unified_rendering", "compile");

  return MEMORY[0x2A1C71028]();
}

id uni_logger_cache()
{
  if (qword_2A13889C0 != -1)
  {
    sub_2956CF0B4();
  }

  v1 = qword_2A13889B8;

  return v1;
}

uint64_t sub_2956C1C08()
{
  qword_2A13889B8 = os_log_create("com.apple.unified_rendering", "cache");

  return MEMORY[0x2A1C71028]();
}

id uni_activity()
{
  if (qword_2A18BA330 != -1)
  {
    sub_2956CF0C8();
  }

  v1 = qword_2A18BA338;

  return v1;
}

uint64_t sub_2956C1C90()
{
  qword_2A18BA338 = _os_activity_create(&dword_295691000, "com.apple.unified_rendering", MEMORY[0x29EDCA980], OS_ACTIVITY_FLAG_DEFAULT);

  return MEMORY[0x2A1C71028]();
}

id sub_2956C20F4(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x29EDBA070];
    v2 = a1;
    objc_msgSend_extent(v2, v3, v4);
    v7 = objc_msgSend_numberWithDouble_(v1, v5, v6);
    v8 = MEMORY[0x29EDBA070];
    objc_msgSend_extent(v2, v9, v10, v7);
    v14 = objc_msgSend_numberWithDouble_(v8, v11, v12, v13);
    v33[1] = v14;
    v15 = MEMORY[0x29EDBA070];
    objc_msgSend_extent(v2, v16, v17);
    v21 = objc_msgSend_numberWithDouble_(v15, v18, v19, v20);
    v33[2] = v21;
    v22 = MEMORY[0x29EDBA070];
    objc_msgSend_extent(v2, v23, v24);
    v26 = v25;

    v29 = objc_msgSend_numberWithDouble_(v22, v27, v28, v26);
    v33[3] = v29;
    v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v30, v33, 4);
  }

  else
  {
    v31 = MEMORY[0x29EDB8E90];
  }

  return v31;
}

void sub_2956C315C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a1;
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend_count(v20, v3, v4) == 3)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(v20, v5, 0);
    v9 = objc_msgSend_unsignedIntegerValue(v6, v7, v8);
    v11 = objc_msgSend_objectAtIndexedSubscript_(v20, v10, 1);
    v14 = objc_msgSend_unsignedIntegerValue(v11, v12, v13);
    v16 = objc_msgSend_objectAtIndexedSubscript_(v20, v15, 2);
    v19 = objc_msgSend_unsignedIntegerValue(v16, v17, v18);
    *a2 = v9;
    a2[1] = v14;
    a2[2] = v19;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

id sub_2956C354C(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    sub_2956CF268();
  }

  v3 = v1;
  v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v1, v2, @"\n", &stru_2A1C8D648);

  return v4;
}

void sub_2956C52A0(void *a1, uint64_t a2, void *a3)
{
  v101 = a3;
  v6 = objc_msgSend_name(a1, v4, v5);
  objc_msgSend_encodeObject_forKey_(v101, v7, v6, @"name");

  v8 = MEMORY[0x29EDBA070];
  v11 = objc_msgSend_type(a1, v9, v10);
  v13 = objc_msgSend_numberWithUnsignedInteger_(v8, v12, v11);
  objc_msgSend_encodeObject_forKey_(v101, v14, v13, @"type");

  v15 = MEMORY[0x29EDBA070];
  v18 = objc_msgSend_access(a1, v16, v17);
  v20 = objc_msgSend_numberWithUnsignedInteger_(v15, v19, v18);
  objc_msgSend_encodeObject_forKey_(v101, v21, v20, @"access");

  v22 = MEMORY[0x29EDBA070];
  v25 = objc_msgSend_index(a1, v23, v24);
  v27 = objc_msgSend_numberWithUnsignedInteger_(v22, v26, v25);
  objc_msgSend_encodeObject_forKey_(v101, v28, v27, @"index");

  v31 = objc_msgSend_type(a1, v29, v30);
  switch(v31)
  {
    case 2:
      v76 = MEMORY[0x29EDBA070];
      v77 = objc_msgSend_textureType(a1, v32, v33);
      v79 = objc_msgSend_numberWithUnsignedInteger_(v76, v78, v77);
      objc_msgSend_encodeObject_forKey_(v101, v80, v79, @"textureType");

      v81 = MEMORY[0x29EDBA070];
      v84 = objc_msgSend_textureDataType(a1, v82, v83);
      v86 = objc_msgSend_numberWithUnsignedInteger_(v81, v85, v84);
      objc_msgSend_encodeObject_forKey_(v101, v87, v86, @"textureDataType");

      v88 = MEMORY[0x29EDBA070];
      isDepthTexture = objc_msgSend_isDepthTexture(a1, v89, v90);
      v93 = objc_msgSend_numberWithBool_(v88, v92, isDepthTexture);
      objc_msgSend_encodeObject_forKey_(v101, v94, v93, @"isDepthTexture");

      v95 = MEMORY[0x29EDBA070];
      v98 = objc_msgSend_arrayLength(a1, v96, v97);
      v63 = objc_msgSend_numberWithUnsignedInteger_(v95, v99, v98);
      objc_msgSend_encodeObject_forKey_(v101, v100, v63, @"arrayLength");
      goto LABEL_10;
    case 1:
      v65 = MEMORY[0x29EDBA070];
      v66 = objc_msgSend_threadgroupMemoryAlignment(a1, v32, v33);
      v68 = objc_msgSend_numberWithUnsignedInteger_(v65, v67, v66);
      objc_msgSend_encodeObject_forKey_(v101, v69, v68, @"threadgroupMemoryAlignment");

      v70 = MEMORY[0x29EDBA070];
      v73 = objc_msgSend_threadgroupMemoryDataSize(a1, v71, v72);
      v63 = objc_msgSend_numberWithUnsignedInteger_(v70, v74, v73);
      objc_msgSend_encodeObject_forKey_(v101, v75, v63, @"threadgroupMemoryDataSize");
      goto LABEL_10;
    case 0:
      v34 = MEMORY[0x29EDBA070];
      v35 = objc_msgSend_bufferAlignment(a1, v32, v33);
      v37 = objc_msgSend_numberWithUnsignedInteger_(v34, v36, v35);
      objc_msgSend_encodeObject_forKey_(v101, v38, v37, @"bufferAlignment");

      v39 = MEMORY[0x29EDBA070];
      v42 = objc_msgSend_bufferDataSize(a1, v40, v41);
      v44 = objc_msgSend_numberWithUnsignedInteger_(v39, v43, v42);
      objc_msgSend_encodeObject_forKey_(v101, v45, v44, @"bufferDataSize");

      v46 = MEMORY[0x29EDBA070];
      v49 = objc_msgSend_bufferDataType(a1, v47, v48);
      v51 = objc_msgSend_numberWithUnsignedInteger_(v46, v50, v49);
      objc_msgSend_encodeObject_forKey_(v101, v52, v51, @"bufferDataType");

      v55 = objc_msgSend_bufferStructType(a1, v53, v54);

      if (v55)
      {
        v58 = objc_msgSend_bufferStructType(a1, v56, v57);
        objc_msgSend_encodeObject_forKey_(v101, v59, v58, @"bufferStructType");
      }

      v60 = objc_msgSend_bufferPointerType(a1, v56, v57);

      if (v60)
      {
        v63 = objc_msgSend_bufferPointerType(a1, v61, v62);
        objc_msgSend_encodeObject_forKey_(v101, v64, v63, @"bufferPointerType");
LABEL_10:
      }

      break;
  }
}

URMTLArgument *sub_2956C563C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(URMTLArgument);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"name");
  objc_msgSend_setName_(v5, v10, v9);

  v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v6, @"type");
  v15 = objc_msgSend_unsignedIntegerValue(v12, v13, v14);
  objc_msgSend_setType_(v5, v16, v15);

  v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v6, @"access");
  v21 = objc_msgSend_unsignedIntegerValue(v18, v19, v20);
  objc_msgSend_setAccess_(v5, v22, v21);

  v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v23, v6, @"index");
  v27 = objc_msgSend_unsignedIntegerValue(v24, v25, v26);
  objc_msgSend_setIndex_(v5, v28, v27);

  v31 = objc_msgSend_type(v5, v29, v30);
  if (v31 == 2)
  {
    v68 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v32, v6, @"textureType");
    v71 = objc_msgSend_unsignedIntegerValue(v68, v69, v70);
    objc_msgSend_setTextureType_(v5, v72, v71);

    v74 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v73, v6, @"textureDataType");
    v77 = objc_msgSend_unsignedIntegerValue(v74, v75, v76);
    objc_msgSend_setTextureDataType_(v5, v78, v77);

    v80 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v79, v6, @"isDepthTexture");
    v83 = objc_msgSend_BOOLValue(v80, v81, v82);
    objc_msgSend_setIsDepthTexture_(v5, v84, v83);

    v56 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v85, v6, @"arrayLength");
    v88 = objc_msgSend_unsignedIntegerValue(v56, v86, v87);
    objc_msgSend_setArrayLength_(v5, v89, v88);
  }

  else if (v31 == 1)
  {
    v58 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v32, v6, @"threadgroupMemoryAlignment");
    v61 = objc_msgSend_unsignedIntegerValue(v58, v59, v60);
    objc_msgSend_setThreadgroupMemoryAlignment_(v5, v62, v61);

    v56 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v63, v6, @"threadgroupMemoryDataSize");
    v66 = objc_msgSend_unsignedIntegerValue(v56, v64, v65);
    objc_msgSend_setThreadgroupMemoryDataSize_(v5, v67, v66);
  }

  else
  {
    if (v31)
    {
      v90 = 0;
      goto LABEL_9;
    }

    v33 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v32, v6, @"bufferAlignment");
    v36 = objc_msgSend_unsignedIntegerValue(v33, v34, v35);
    objc_msgSend_setBufferAlignment_(v5, v37, v36);

    v39 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v38, v6, @"bufferDataSize");
    v42 = objc_msgSend_unsignedIntegerValue(v39, v40, v41);
    objc_msgSend_setBufferDataSize_(v5, v43, v42);

    v45 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v44, v6, @"bufferDataType");
    v48 = objc_msgSend_unsignedIntegerValue(v45, v46, v47);
    objc_msgSend_setBufferDataType_(v5, v49, v48);

    v50 = objc_opt_class();
    v52 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v51, v50, @"bufferStructType");
    objc_msgSend_setBufferStructType_(v5, v53, v52);

    v54 = objc_opt_class();
    v56 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v55, v54, @"bufferPointerType");
    objc_msgSend_setBufferPointerType_(v5, v57, v56);
  }

  v90 = v5;
LABEL_9:

  return v90;
}

void sub_2956C59C0(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x29EDBA070];
  v5 = a3;
  v8 = objc_msgSend_elementType(a1, v6, v7);
  v10 = objc_msgSend_numberWithUnsignedInteger_(v4, v9, v8);
  objc_msgSend_encodeObject_forKey_(v5, v11, v10, @"elementType");

  v12 = MEMORY[0x29EDBA070];
  v15 = objc_msgSend_access(a1, v13, v14);
  v17 = objc_msgSend_numberWithUnsignedInteger_(v12, v16, v15);
  objc_msgSend_encodeObject_forKey_(v5, v18, v17, @"access");

  v19 = MEMORY[0x29EDBA070];
  v22 = objc_msgSend_alignment(a1, v20, v21);
  v24 = objc_msgSend_numberWithUnsignedInteger_(v19, v23, v22);
  objc_msgSend_encodeObject_forKey_(v5, v25, v24, @"alignment");

  v26 = MEMORY[0x29EDBA070];
  v29 = objc_msgSend_dataSize(a1, v27, v28);
  v31 = objc_msgSend_numberWithUnsignedInteger_(v26, v30, v29);
  objc_msgSend_encodeObject_forKey_(v5, v32, v31, @"dataSize");

  v33 = MEMORY[0x29EDBA070];
  IsArgumentBuffer = objc_msgSend_elementIsArgumentBuffer(a1, v34, v35);
  v39 = objc_msgSend_numberWithBool_(v33, v37, IsArgumentBuffer);
  objc_msgSend_encodeObject_forKey_(v5, v38, v39, @"elementIsArgumentBuffer");
}

URMTLPointerType *sub_2956C5B28(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(URMTLPointerType);
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"elementType");
  v11 = objc_msgSend_unsignedIntegerValue(v8, v9, v10);
  objc_msgSend_setElementType_(v5, v12, v11);

  v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v13, v6, @"access");
  v17 = objc_msgSend_unsignedIntegerValue(v14, v15, v16);
  objc_msgSend_setAccess_(v5, v18, v17);

  v20 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v6, @"alignment");
  v23 = objc_msgSend_unsignedIntegerValue(v20, v21, v22);
  objc_msgSend_setAlignment_(v5, v24, v23);

  v26 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v25, v6, @"dataSize");
  v29 = objc_msgSend_unsignedIntegerValue(v26, v27, v28);
  objc_msgSend_setDataSize_(v5, v30, v29);

  v32 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v31, v6, @"elementIsArgumentBuffer");

  v35 = objc_msgSend_BOOLValue(v32, v33, v34);
  objc_msgSend_setElementIsArgumentBuffer_(v5, v36, v35);

  return v5;
}

void sub_2956C5C8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_members(a1, v5, v6);
  v8 = MEMORY[0x29EDB8DE8];
  v11 = objc_msgSend_count(v7, v9, v10);
  v13 = objc_msgSend_arrayWithCapacity_(v8, v12, v11);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = v7;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v42, v41, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v43;
    do
    {
      v19 = 0;
      do
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v42 + 1) + 8 * v19);
        v21 = objc_alloc_init(URMTLStructMemberInternal);
        v24 = objc_msgSend_name(v20, v22, v23);
        objc_msgSend_setName_(v21, v25, v24);

        v28 = objc_msgSend_offset(v20, v26, v27);
        objc_msgSend_setOffset_(v21, v29, v28);
        v32 = objc_msgSend_dataType(v20, v30, v31);
        objc_msgSend_setDataType_(v21, v33, v32);
        v36 = objc_msgSend_argumentIndex(v20, v34, v35);
        objc_msgSend_setArgumentIndex_(v21, v37, v36);
        objc_msgSend_addObject_(v13, v38, v21);

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v39, &v42, v41, 16);
    }

    while (v17);
  }

  objc_msgSend_encodeObject_forKey_(v4, v40, v13, @"members");
}

URMTLStructType *sub_2956C5E2C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(URMTLStructType);
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"members");

  objc_msgSend_setMembers_(v5, v9, v8);
  return v5;
}

id tmpTexturesFromTexture(void *a1, unsigned int a2, uint64_t a3)
{
  v6 = a1;
  if (a2)
  {
    v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v5, a2);
    v10 = objc_msgSend_device(v6, v8, v9);
    objc_msgSend_bufferOffset(v6, v11, v12);
    v13 = MEMORY[0x29EDBB670];
    v16 = objc_msgSend_width(v6, v14, v15);
    v19 = objc_msgSend_height(v6, v17, v18);
    v21 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v13, v20, a3, v16, v19, 0);
    objc_msgSend_setUsage_(v21, v22, 19);
    v24 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v10, v23, a3);
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    MTLPixelFormatGetInfoForDevice();
    objc_msgSend_width(v6, v25, v26);
    v29 = ((v24 - 1) & -v24) * objc_msgSend_height(v6, v27, v28);
    if (v29 * a2 > objc_msgSend_allocatedSize(v6, v30, v31))
    {
      v32 = uni_logger_performance();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v51 = 136446722;
        v52 = "tmpTexturesFromTexture";
        v53 = 2048;
        v54 = objc_msgSend_allocatedSize(v6, v33, v34);
        v55 = 2048;
        v56 = v29;
        _os_log_impl(&dword_295691000, v32, OS_LOG_TYPE_INFO, "%{public}s Insufficient backing size = %ld need %ld", &v51, 0x20u);
      }
    }

    do
    {
      v40 = uni_logger_performance();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v35 = objc_msgSend_description(v21, v41, v42);
        v36 = v35;
        v39 = objc_msgSend_UTF8String(v36, v37, v38);
        v51 = 136446466;
        v52 = "tmpTexturesFromTexture";
        v53 = 2080;
        v54 = v39;
        _os_log_debug_impl(&dword_295691000, v40, OS_LOG_TYPE_DEBUG, "%{public}s Creating texture at runtime %s", &v51, 0x16u);
      }

      v44 = objc_msgSend_newTextureWithDescriptor_(v10, v43, v21);
      v46 = objc_msgSend_imageWithMTLTexture_(UniImage, v45, v44);
      objc_msgSend_addObject_(v7, v47, v46);

      --a2;
    }

    while (a2);
    v49 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v48, v7);
  }

  else
  {
    v49 = MEMORY[0x29EDB8E90];
  }

  return v49;
}

uint64_t sub_2956C63D0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    return objc_msgSend_setObject_forKey_(a1, a2, a3);
  }

  else
  {
    return objc_msgSend_removeObjectForKey_(a1, a2, a4);
  }
}

id loadBMTL(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = a2;
  v8 = objc_msgSend_fileURLWithPath_(MEMORY[0x29EDB8E70], v6, a1);
  if (v8)
  {
    v9 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x29EDB8DA0], v7, v8);
    v10 = v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    v11 = v9;
    v14 = objc_msgSend_bytes(v11, v12, v13);
    if (!v14)
    {
      goto LABEL_7;
    }

    v17 = v14;
    v19 = *v14;
    v18 = v14[1];
    v21 = v14[2];
    v20 = v14[3];
    if (a3)
    {
      *a3 = v20;
    }

    if (objc_msgSend_length(v10, v15, v16) >= (v20 * v18) + 16)
    {
      v25 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v22, v21, v19, v18, 0);
      v27 = v25;
      if (v25)
      {
        objc_msgSend_setUsage_(v25, v26, 19);
        v23 = objc_msgSend_newTextureWithDescriptor_(v5, v28, v27);
        memset(v30, 0, 24);
        v30[3] = v19;
        v30[4] = v18;
        v30[5] = 1;
        objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(v23, v29, v30, 0, v17 + 4, v20);
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
LABEL_7:
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

id getTextureDataAsBuffer(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v4 = objc_msgSend_device(v1, v2, v3);
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v7 = objc_msgSend_device(v1, v5, v6);
    objc_msgSend_pixelFormat(v1, v8, v9);
    MTLPixelFormatGetInfoForDevice();

    objc_msgSend_width(v1, v10, v11);
    objc_msgSend_height(v1, v12, v13);
    v15 = objc_msgSend_newBufferWithLength_options_(v4, v14, 0, 0);
    v18 = objc_msgSend_newCommandQueue(v4, v16, v17);
    v21 = objc_msgSend_commandBuffer(v18, v19, v20);
    v24 = objc_msgSend_blitCommandEncoder(v21, v22, v23);
    memset(v38, 0, sizeof(v38));
    v37[0] = objc_msgSend_width(v1, v25, v26);
    v37[1] = objc_msgSend_height(v1, v27, v28);
    v37[2] = 1;
    objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_(v24, v29, v1, 0, 0, v38, v37, v15, 0, 0, 0);

    objc_msgSend_endEncoding(v24, v30, v31);
    objc_msgSend_commit(v21, v32, v33);
    objc_msgSend_waitUntilCompleted(v21, v34, v35);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void writeTextureAs2DBMTL(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = getTextureDataAsBuffer(v4);
  v8 = objc_msgSend_device(v4, v6, v7, 0, 0, 0);
  objc_msgSend_pixelFormat(v4, v9, v10);
  MTLPixelFormatGetInfoForDevice();

  objc_msgSend_width(v4, v11, v12);
  objc_msgSend_height(v4, v13, v14);
  v15 = objc_alloc(MEMORY[0x29EDB8DF8]);
  v17 = objc_msgSend_initWithLength_(v15, v16, 16);
  v18 = v17;
  v21 = objc_msgSend_mutableBytes(v18, v19, v20);
  *v21 = objc_msgSend_width(v4, v22, v23);
  v21[1] = objc_msgSend_height(v4, v24, v25);
  v28 = objc_msgSend_pixelFormat(v4, v26, v27);

  v21[2] = v28;
  v21[3] = 0;
  v29 = v5;
  v32 = objc_msgSend_contents(v29, v30, v31);
  objc_msgSend_replaceBytesInRange_withBytes_(v17, v33, 16, 0, v32);
  v35 = objc_msgSend_fileURLWithPath_(MEMORY[0x29EDB8E70], v34, v3);

  objc_msgSend_writeToURL_atomically_(v17, v36, v35, 0);
}

id createSimilarTexture(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = v3;
  v7 = 0;
  if (v3 && a2)
  {
    v8 = MEMORY[0x29EDBB670];
    v9 = objc_msgSend_width(v3, v4, v5);
    v12 = objc_msgSend_height(v6, v10, v11);
    v15 = objc_msgSend_mipmapLevelCount(v6, v13, v14) > 1;
    v17 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v8, v16, a2, v9, v12, v15);
    v19 = v17;
    if (v17)
    {
      objc_msgSend_setUsage_(v17, v18, 19);
      v22 = objc_msgSend_device(v6, v20, v21);
      v7 = objc_msgSend_newTextureWithDescriptor_(v22, v23, v19);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

id MTLDataTypeAsString(uint64_t a1, const char *a2)
{
  v12[0] = &unk_2A1C94BE8;
  v12[1] = &unk_2A1C94C00;
  v13[0] = @"MTLDataTypeNone";
  v13[1] = @"MTLDataTypeStruct";
  v12[2] = &unk_2A1C94C18;
  v12[3] = &unk_2A1C94C30;
  v13[2] = @"MTLDataTypeArray";
  v13[3] = @"MTLDataTypeFloat";
  v12[4] = &unk_2A1C94C48;
  v12[5] = &unk_2A1C94C60;
  v13[4] = @"MTLDataTypeFloat2";
  v13[5] = @"MTLDataTypeFloat3";
  v12[6] = &unk_2A1C94C78;
  v12[7] = &unk_2A1C94C90;
  v13[6] = @"MTLDataTypeFloat4";
  v13[7] = @"MTLDataTypeFloat2x2";
  v12[8] = &unk_2A1C94CA8;
  v12[9] = &unk_2A1C94CC0;
  v13[8] = @"MTLDataTypeFloat2x3";
  v13[9] = @"MTLDataTypeFloat2x4";
  v12[10] = &unk_2A1C94CD8;
  v12[11] = &unk_2A1C94CF0;
  v13[10] = @"MTLDataTypeFloat3x2";
  v13[11] = @"MTLDataTypeFloat3x3";
  v12[12] = &unk_2A1C94D08;
  v12[13] = &unk_2A1C94D20;
  v13[12] = @"MTLDataTypeFloat3x4";
  v13[13] = @"MTLDataTypeFloat4x2";
  v12[14] = &unk_2A1C94D38;
  v12[15] = &unk_2A1C94D50;
  v13[14] = @"MTLDataTypeFloat4x3";
  v13[15] = @"MTLDataTypeFloat4x4";
  v12[16] = &unk_2A1C94D68;
  v12[17] = &unk_2A1C94D80;
  v13[16] = @"MTLDataTypeHalf";
  v13[17] = @"MTLDataTypeHalf2";
  v12[18] = &unk_2A1C94D98;
  v12[19] = &unk_2A1C94DB0;
  v13[18] = @"MTLDataTypeHalf3";
  v13[19] = @"MTLDataTypeHalf4";
  v12[20] = &unk_2A1C94DC8;
  v12[21] = &unk_2A1C94DE0;
  v13[20] = @"MTLDataTypeHalf2x2";
  v13[21] = @"MTLDataTypeHalf2x3";
  v12[22] = &unk_2A1C94DF8;
  v12[23] = &unk_2A1C94E10;
  v13[22] = @"MTLDataTypeHalf2x4";
  v13[23] = @"MTLDataTypeHalf3x2";
  v12[24] = &unk_2A1C94E28;
  v12[25] = &unk_2A1C94E40;
  v13[24] = @"MTLDataTypeHalf3x3";
  v13[25] = @"MTLDataTypeHalf3x4";
  v12[26] = &unk_2A1C94E58;
  v12[27] = &unk_2A1C94E70;
  v13[26] = @"MTLDataTypeHalf4x2";
  v13[27] = @"MTLDataTypeHalf4x3";
  v12[28] = &unk_2A1C94E88;
  v12[29] = &unk_2A1C94EA0;
  v13[28] = @"MTLDataTypeHalf4x4";
  v13[29] = @"MTLDataTypeInt";
  v12[30] = &unk_2A1C94EB8;
  v12[31] = &unk_2A1C94ED0;
  v13[30] = @"MTLDataTypeInt2";
  v13[31] = @"MTLDataTypeInt3";
  v12[32] = &unk_2A1C94EE8;
  v12[33] = &unk_2A1C94F00;
  v13[32] = @"MTLDataTypeInt4";
  v13[33] = @"MTLDataTypeUInt";
  v12[34] = &unk_2A1C94F18;
  v12[35] = &unk_2A1C94F30;
  v13[34] = @"MTLDataTypeUInt2";
  v13[35] = @"MTLDataTypeUInt3";
  v12[36] = &unk_2A1C94F48;
  v12[37] = &unk_2A1C94F60;
  v13[36] = @"MTLDataTypeUInt4";
  v13[37] = @"MTLDataTypeShort";
  v12[38] = &unk_2A1C94F78;
  v12[39] = &unk_2A1C94F90;
  v13[38] = @"MTLDataTypeShort2";
  v13[39] = @"MTLDataTypeShort3";
  v12[40] = &unk_2A1C94FA8;
  v12[41] = &unk_2A1C94FC0;
  v13[40] = @"MTLDataTypeShort4";
  v13[41] = @"MTLDataTypeUShort";
  v12[42] = &unk_2A1C94FD8;
  v12[43] = &unk_2A1C94FF0;
  v13[42] = @"MTLDataTypeUShort2";
  v13[43] = @"MTLDataTypeUShort3";
  v12[44] = &unk_2A1C95008;
  v12[45] = &unk_2A1C95020;
  v13[44] = @"MTLDataTypeUShort4";
  v13[45] = @"MTLDataTypeChar";
  v12[46] = &unk_2A1C95038;
  v12[47] = &unk_2A1C95050;
  v13[46] = @"MTLDataTypeChar2";
  v13[47] = @"MTLDataTypeChar3";
  v12[48] = &unk_2A1C95068;
  v12[49] = &unk_2A1C95080;
  v13[48] = @"MTLDataTypeChar4";
  v13[49] = @"MTLDataTypeUChar";
  v12[50] = &unk_2A1C95098;
  v12[51] = &unk_2A1C950B0;
  v13[50] = @"MTLDataTypeUChar2";
  v13[51] = @"MTLDataTypeUChar3";
  v12[52] = &unk_2A1C950C8;
  v12[53] = &unk_2A1C950E0;
  v13[52] = @"MTLDataTypeUChar4";
  v13[53] = @"MTLDataTypeBool";
  v12[54] = &unk_2A1C950F8;
  v12[55] = &unk_2A1C95110;
  v13[54] = @"MTLDataTypeBool2";
  v13[55] = @"MTLDataTypeBool3";
  v12[56] = &unk_2A1C95128;
  v12[57] = &unk_2A1C95140;
  v13[56] = @"MTLDataTypeBool4";
  v13[57] = @"MTLDataTypeTexture";
  v12[58] = &unk_2A1C95158;
  v12[59] = &unk_2A1C95170;
  v13[58] = @"MTLDataTypeSampler";
  v13[59] = @"MTLDataTypePointer";
  v12[60] = &unk_2A1C95188;
  v12[61] = &unk_2A1C951A0;
  v13[60] = @"MTLDataTypeRenderPipeline";
  v13[61] = @"MTLDataTypeIndirectCommandBuffer";
  v12[62] = &unk_2A1C951B8;
  v12[63] = &unk_2A1C951D0;
  v13[62] = @"MTLDataTypeVisibleFunctionTable";
  v13[63] = @"MTLDataTypePrivateIndirectArgument";
  v12[64] = &unk_2A1C951E8;
  v13[64] = @"MTLDataTypePrivateVoid";
  v12[65] = &unk_2A1C95200;
  v13[65] = @"MTLDataTypeLong";
  v12[66] = &unk_2A1C95218;
  v13[66] = @"MTLDataTypeLong2";
  v12[67] = &unk_2A1C95230;
  v13[67] = @"MTLDataTypeLong3";
  v12[68] = &unk_2A1C95248;
  v13[68] = @"MTLDataTypeLong4";
  v12[69] = &unk_2A1C95260;
  v13[69] = @"MTLDataTypeULong";
  v12[70] = &unk_2A1C95278;
  v13[70] = @"MTLDataTypeULong2";
  v12[71] = &unk_2A1C95290;
  v13[71] = @"MTLDataTypeULong3";
  v12[72] = &unk_2A1C952A8;
  v13[72] = @"MTLDataTypeULong4";
  v12[73] = &unk_2A1C952C0;
  v13[73] = @"MTLDataTypeDouble";
  v12[74] = &unk_2A1C952D8;
  v13[74] = @"MTLDataTypeDouble2";
  v12[75] = &unk_2A1C952F0;
  v13[75] = @"MTLDataTypeDouble3";
  v12[76] = &unk_2A1C95308;
  v13[76] = @"MTLDataTypeDouble4";
  v12[77] = &unk_2A1C95320;
  v13[77] = @"MTLDataTypeFloat8";
  v12[78] = &unk_2A1C95338;
  v13[78] = @"MTLDataTypeFloat16";
  v12[79] = &unk_2A1C95350;
  v13[79] = @"MTLDataTypeHalf8";
  v12[80] = &unk_2A1C95368;
  v13[80] = @"MTLDataTypeHalf16";
  v12[81] = &unk_2A1C95380;
  v13[81] = @"MTLDataTypeInt8";
  v12[82] = &unk_2A1C95398;
  v13[82] = @"MTLDataTypeInt16";
  v12[83] = &unk_2A1C953B0;
  v13[83] = @"MTLDataTypeUInt8";
  v12[84] = &unk_2A1C953C8;
  v13[84] = @"MTLDataTypeUInt16";
  v12[85] = &unk_2A1C953E0;
  v13[85] = @"MTLDataTypeShort8";
  v12[86] = &unk_2A1C953F8;
  v13[86] = @"MTLDataTypeShort16";
  v12[87] = &unk_2A1C95410;
  v13[87] = @"MTLDataTypeUShort8";
  v12[88] = &unk_2A1C95428;
  v13[88] = @"MTLDataTypeUShort16";
  v12[89] = &unk_2A1C95440;
  v13[89] = @"MTLDataTypeChar8";
  v12[90] = &unk_2A1C95458;
  v13[90] = @"MTLDataTypeChar16";
  v12[91] = &unk_2A1C95470;
  v13[91] = @"MTLDataTypeUChar8";
  v12[92] = &unk_2A1C95488;
  v13[92] = @"MTLDataTypeUChar16";
  v12[93] = &unk_2A1C954A0;
  v13[93] = @"MTLDataTypeLong8";
  v12[94] = &unk_2A1C954B8;
  v13[94] = @"MTLDataTypeLong16";
  v12[95] = &unk_2A1C954D0;
  v13[95] = @"MTLDataTypeULong8";
  v12[96] = &unk_2A1C954E8;
  v13[96] = @"MTLDataTypeULong16";
  v12[97] = &unk_2A1C95500;
  v13[97] = @"MTLDataTypeDouble8";
  v12[98] = &unk_2A1C95518;
  v13[98] = @"MTLDataTypeDouble16";
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], a2, v13, v12, 99);
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v4, a1);
  v7 = objc_msgSend_objectForKeyedSubscript_(v3, v6, v5);

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v8, @"MTLDataType(%lu) (unknown type)", a1);
  }

  v10 = v9;

  return v10;
}

BOOL isSupportedType(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  if ((a1 - 3) < 0x36)
  {
    return 1;
  }

  v2 = numComponentsForType(a1, &v4, &v3);
  result = 0;
  if (v2)
  {
    if (v4)
    {
      return v3 != 0;
    }
  }

  return result;
}

uint64_t numComponentsForType(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = 0;
  if (a2 && a3)
  {
    v5 = 0;
    *a2 = 0;
    v6 = 81;
    v7 = 45;
    v8 = 37;
    v9 = 8;
    v10 = 29;
    v11 = 4;
    result = 1;
    switch(a1)
    {
      case 3:
      case 16:
      case 29:
      case 33:
      case 37:
      case 41:
      case 45:
      case 49:
      case 53:
      case 81:
      case 85:
      case 89:
        goto LABEL_7;
      case 4:
      case 17:
      case 30:
      case 34:
      case 38:
      case 42:
      case 46:
      case 50:
      case 54:
      case 82:
      case 86:
      case 90:
        --a1;
        result = 2;
        goto LABEL_7;
      case 5:
      case 18:
      case 31:
      case 35:
      case 39:
      case 43:
      case 47:
      case 51:
      case 55:
      case 83:
      case 87:
      case 91:
        a1 -= 2;
        result = 3;
        goto LABEL_7;
      case 6:
      case 19:
      case 32:
      case 36:
      case 40:
      case 44:
      case 48:
      case 52:
      case 56:
      case 84:
      case 88:
      case 92:
        result = 4;
        a1 -= 3;
LABEL_7:
        *a2 = a1;
        if (a1 <= 36)
        {
          v12 = 4;
          if (a1 <= 28)
          {
            if (a1 == 3)
            {
              goto LABEL_60;
            }

            v5 = result;
            if (a1 != 16)
            {
              goto LABEL_21;
            }

            goto LABEL_59;
          }

          if (a1 == 29)
          {
            goto LABEL_60;
          }

          v5 = result;
          if (a1 == 33)
          {
            goto LABEL_60;
          }

          goto LABEL_21;
        }

        v13 = a1 - 45;
        if ((a1 - 45) > 0x2C)
        {
          goto LABEL_16;
        }

        if (((1 << v13) & 0x111) != 0)
        {
LABEL_46:
          v12 = 1;
        }

        else
        {
          if (((1 << v13) & 0x11000000000) == 0 && a1 != 89)
          {
LABEL_16:
            if (a1 == 37 || (v5 = result, a1 == 41))
            {
LABEL_59:
              v12 = 2;
              goto LABEL_60;
            }

LABEL_21:
            v12 = 0;
            result = v5;
            goto LABEL_60;
          }

LABEL_52:
          v12 = 8;
        }

LABEL_60:
        *a3 = v12;
        return result;
      case 7:
        goto LABEL_54;
      case 8:
      case 10:
        v11 = 6;
        goto LABEL_54;
      case 9:
      case 13:
      case 93:
        v11 = 8;
        goto LABEL_54;
      case 11:
        v11 = 9;
        goto LABEL_54;
      case 12:
      case 14:
        v11 = 12;
        goto LABEL_54;
      case 15:
      case 94:
        v11 = 16;
LABEL_54:
        *a2 = 3;
        v12 = 4;
        result = v11;
        goto LABEL_60;
      case 20:
        goto LABEL_58;
      case 21:
      case 23:
        v11 = 6;
        goto LABEL_58;
      case 22:
      case 26:
      case 95:
        v11 = 8;
        goto LABEL_58;
      case 24:
        v11 = 9;
        goto LABEL_58;
      case 25:
      case 27:
        v11 = 12;
        goto LABEL_58;
      case 28:
      case 96:
        v11 = 16;
LABEL_58:
        *a2 = 16;
        result = v11;
        goto LABEL_59;
      case 97:
        goto LABEL_56;
      case 98:
        v9 = 16;
        v10 = 29;
        goto LABEL_56;
      case 99:
        v9 = 8;
        goto LABEL_48;
      case 100:
        v9 = 16;
LABEL_48:
        v10 = 33;
LABEL_56:
        *a2 = v10;
        v12 = 4;
        result = v9;
        goto LABEL_60;
      case 101:
        goto LABEL_39;
      case 102:
        v9 = 16;
        v8 = 37;
        goto LABEL_39;
      case 103:
        v9 = 8;
        goto LABEL_35;
      case 104:
        v9 = 16;
LABEL_35:
        v8 = 41;
LABEL_39:
        *a2 = v8;
        result = v9;
        goto LABEL_59;
      case 105:
        goto LABEL_45;
      case 106:
        v9 = 16;
        v7 = 45;
        goto LABEL_45;
      case 107:
        v9 = 8;
        goto LABEL_44;
      case 108:
        v9 = 16;
LABEL_44:
        v7 = 49;
LABEL_45:
        *a2 = v7;
        result = v9;
        goto LABEL_46;
      case 109:
        goto LABEL_42;
      case 110:
        v9 = 16;
        v6 = 81;
        goto LABEL_42;
      case 111:
        v9 = 8;
        goto LABEL_41;
      case 112:
        v9 = 16;
LABEL_41:
        v6 = 85;
LABEL_42:
        *a2 = v6;
        goto LABEL_51;
      case 113:
        goto LABEL_50;
      case 114:
        v9 = 16;
LABEL_50:
        *a2 = 89;
LABEL_51:
        result = v9;
        goto LABEL_52;
      default:
        goto LABEL_21;
    }
  }

  return result;
}

void packSingleValue(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v12 = v9;
  if (a4 > 44)
  {
    if (a4 <= 80)
    {
      switch(a4)
      {
        case '-':
          v14 = objc_msgSend_charValue(v9, v10, v11);
          break;
        case '1':
          v14 = objc_msgSend_unsignedCharValue(v9, v10, v11);
          break;
        case '5':
          v14 = objc_msgSend_BOOLValue(v9, v10, v11);
          break;
        default:
          goto LABEL_32;
      }

      *(a5 + a3 + a2) = v14;
      goto LABEL_35;
    }

    switch(a4)
    {
      case 'Q':
        v18 = objc_msgSend_longValue(v9, v10, v11);
        break;
      case 'U':
        v18 = objc_msgSend_unsignedLongValue(v9, v10, v11);
        break;
      case 'Y':
        objc_msgSend_doubleValue(v9, v10, v11);
        *(a5 + a3 + 8 * a2) = v16;
        goto LABEL_35;
      default:
        goto LABEL_32;
    }

    *(a5 + a3 + 8 * a2) = v18;
    goto LABEL_35;
  }

  if (a4 <= 32)
  {
    switch(a4)
    {
      case 3:
        objc_msgSend_floatValue(v9, v10, v11);
        *(a5 + a3 + 4 * a2) = v17;
        goto LABEL_35;
      case 16:
        objc_msgSend_floatValue(v9, v10, v11);
        __asm { FCVT            H0, S0 }

        *(a5 + a3 + 2 * a2) = _S0;
        goto LABEL_35;
      case 29:
        v13 = objc_msgSend_intValue(v9, v10, v11);
LABEL_23:
        *(a5 + a3 + 4 * a2) = v13;
        goto LABEL_35;
    }

    goto LABEL_32;
  }

  switch(a4)
  {
    case '!':
      v13 = objc_msgSend_unsignedIntValue(v9, v10, v11);
      goto LABEL_23;
    case '%':
      v15 = objc_msgSend_shortValue(v9, v10, v11);
      goto LABEL_29;
    case ')':
      v15 = objc_msgSend_unsignedShortValue(v9, v10, v11);
LABEL_29:
      *(a5 + a3 + 2 * a2) = v15;
      goto LABEL_35;
  }

LABEL_32:
  v24 = uni_logger_api();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_2956CF5C4(a4, v24);
  }

LABEL_35:
}

uint64_t pixelFormatName(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v2 = objc_msgSend_metalDevice(MEMORY[0x29EDC0A40], v3, v4);
    if (!v2)
    {
      return 0;
    }
  }

  v5 = v2;
  MTLPixelFormatGetInfoForDevice();
  v6 = 14;

  return v6;
}

__CFString *shortTextureDescription(void *a1)
{
  v1 = a1;
  v3 = v1;
  if (v1)
  {
    if ((objc_msgSend_conformsToProtocol_(v1, v2, &unk_2A1CA0A70) & 1) == 0)
    {
      sub_2956CF64C();
    }

    v6 = MEMORY[0x29EDBA0F8];
    v7 = objc_msgSend_width(v3, v4, v5);
    v10 = objc_msgSend_height(v3, v8, v9);
    v13 = objc_msgSend_pixelFormat(v3, v11, v12);
    v16 = objc_msgSend_device(v3, v14, v15);
    v17 = pixelFormatName(v13, v16);
    v19 = objc_msgSend_stringWithFormat_(v6, v18, @" <texture = %p, width = %ld, height = %ld, format = %s>", v3, v7, v10, v17);
  }

  else
  {
    v19 = @"<texture: nil>";
  }

  return v19;
}

void triggerProgrammaticCapture(void *a1)
{
  v1 = MEMORY[0x29EDBB540];
  v2 = a1;
  v5 = objc_msgSend_sharedCaptureManager(v1, v3, v4);
  v6 = objc_alloc_init(MEMORY[0x29EDBB538]);
  objc_msgSend_setCaptureObject_(v6, v7, v2);

  v21 = 0;
  started = objc_msgSend_startCaptureWithDescriptor_error_(v5, v8, v6, &v21);
  v10 = v21;
  if ((started & 1) == 0)
  {
    v11 = uni_logger_api();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v12, @"Failed to start capture, error %@", v10);
      v14 = v13;
      *buf = 136446466;
      v18 = "triggerProgrammaticCapture";
      v19 = 2080;
      v20 = objc_msgSend_UTF8String(v14, v15, v16);
      _os_log_impl(&dword_295691000, v11, OS_LOG_TYPE_INFO, "%{public}s %s", buf, 0x16u);
    }
  }
}

void stopProgrammaticCapture(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedCaptureManager(MEMORY[0x29EDBB540], a2, a3);
  objc_msgSend_stopCapture(v5, v3, v4);
}

id parseTXTFile(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"%@/%@", a1, a2);
  v4 = objc_msgSend_fileURLWithPath_(MEMORY[0x29EDB8E70], v3, v2);
  v71[0] = 0;
  v6 = objc_msgSend_stringWithContentsOfURL_encoding_error_(MEMORY[0x29EDBA0F8], v5, v4, 4, v71);
  v7 = v71[0];

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = 0;
    goto LABEL_38;
  }

  v11 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v6, v8, @"'", @"");

  v14 = objc_msgSend_dataUsingEncoding_(v11, v12, 4);
  if (v14)
  {
    v70 = 0;
    v15 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x29EDB9FF0], v13, v14, 0, &v70);
    v7 = v70;
    if (v15)
    {
      v18 = MEMORY[0x29EDB8E00];
      v19 = objc_msgSend_count(v15, v16, v17);
      v59 = objc_msgSend_dictionaryWithCapacity_(v18, v20, v19);
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v21 = v15;
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v66, v65, 16);
      if (v58)
      {
        v56 = v4;
        v57 = *v67;
        v54 = v7;
        v55 = v11;
        v52 = v15;
        v53 = v14;
LABEL_10:
        v24 = 0;
        v26 = v58;
        v25 = v59;
        v27 = v57;
        while (1)
        {
          if (*v67 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v66 + 1) + 8 * v24);
          v29 = objc_msgSend_objectForKeyedSubscript_(v21, v23, v28);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v29;
            v33 = objc_msgSend_UTF8String(v30, v31, v32);
            v34 = MEMORY[0x29EDBA070];
            v35 = atof(v33);
            v38 = objc_msgSend_numberWithDouble_(v34, v36, v37, v35);
            objc_msgSend_setObject_forKeyedSubscript_(v25, v39, v38, v28);
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v41 = v29;
                v61 = 0u;
                v62 = 0u;
                v63 = 0u;
                v64 = 0u;
                v42 = v41;
                v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v61, v60, 16);
                if (v44)
                {
                  v45 = v44;
                  v46 = *v62;
                  while (2)
                  {
                    for (i = 0; i != v45; ++i)
                    {
                      if (*v62 != v46)
                      {
                        objc_enumerationMutation(v42);
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {

                        v25 = v59;
                        goto LABEL_34;
                      }
                    }

                    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v48, &v61, v60, 16);
                    if (v45)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v25 = v59;
                objc_msgSend_setObject_forKeyedSubscript_(v59, v49, v42, v28);

                v27 = v57;
                v26 = v58;
                goto LABEL_28;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
LABEL_34:

                v10 = 0;
                v50 = v25;
                v11 = v55;
                v4 = v56;
                v14 = v53;
                v7 = v54;
                v15 = v52;
                goto LABEL_35;
              }
            }

            objc_msgSend_setObject_forKeyedSubscript_(v25, v40, v29, v28);
          }

LABEL_28:

          if (++v24 == v26)
          {
            v11 = v55;
            v4 = v56;
            v14 = v53;
            v7 = v54;
            v15 = v52;
            v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v66, v65, 16);
            if (v58)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }

      v50 = v59;
      v10 = v59;
LABEL_35:
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v7 = 0;
    v10 = 0;
  }

  v6 = v11;
LABEL_38:

  return v10;
}

float convertFloatToF16AsUshort(float result)
{
  __asm { FCVT            H0, S0 }

  return result;
}

uint64_t sub_2956C8A78(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C8B00(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C8B88(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C8C10(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C8C98(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C8D20(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C8DA8(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C8E88(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C8F10(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C8F98(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9154(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C91DC(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9264(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C92EC(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9374(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C93FC(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9484(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C950C(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9594(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C961C(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C96A4(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C972C(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C97B4(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C983C(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C98C4(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C994C(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C99D4(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9A5C(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9AE4(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9B6C(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9BF4(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9C7C(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9D04(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2956C9D8C(_DWORD *a1)
{
  sub_29569B54C();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_2956C9E14(os_log_t log)
{
  v1 = 136446210;
  v2 = "[ApplyBlurmap applyBackgroundUsingConfig:inputBlurMap:inputAlpha:inputGainMap:inputImage:inputLuma:inputChroma:inputHalfRes1:inputHalfRes2:scale:coreImageRender:version:context:captureFolderMiscPath:]";
  _os_log_error_impl(&dword_295691000, log, OS_LOG_TYPE_ERROR, "%{public}s Gainmap version or FlexMap version is invalid for a v7+ SDOF config.", &v1, 0xCu);
}

void sub_2956C9E6C(os_log_t log)
{
  v1 = 136446210;
  v2 = "[ApplyBlurmap applyBackgroundUsingConfig:inputBlurMap:inputAlpha:inputGainMap:inputImage:inputLuma:inputChroma:inputHalfRes1:inputHalfRes2:scale:coreImageRender:version:context:captureFolderMiscPath:]";
  _os_log_error_impl(&dword_295691000, log, OS_LOG_TYPE_ERROR, "%{public}s Unable to get headroom from inputGainmap.", &v1, 0xCu);
}

void sub_2956C9F1C(uint64_t a1, void *a2)
{
  sub_29569B568();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  FigSignalErrorAtGM();
}

uint64_t sub_2956C9FB0()
{
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  return FigSignalErrorAtGM();
}

void sub_2956CA038(uint64_t a1, void *a2)
{
  sub_29569B568();
  sub_29569B55C();
  FigDebugAssert3();
  sub_29569B53C();
  FigSignalErrorAtGM();
}

void sub_2956CA274(void *a1, void *a2)
{
  sub_29569B52C();
  FigDebugAssert3();

  objc_autoreleasePoolPop(a2);

  CGColorSpaceRelease(0);
}

uint64_t sub_2956CA304(uint64_t *a1)
{
  sub_29569B52C();
  FigDebugAssert3();
  result = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v2, v3);
  *a1 = result;
  return result;
}

void sub_2956CB8E0(int a1, NSObject *a2)
{
  v2 = 136446978;
  v3 = "[MakeBlurMap performDisparityRefinementViaMatting:inputShiftmap:focusRect:inputLuma:inputChroma:simpleLensModelCalculatorImage:disparityConfigIndex:outputRefinedImage:tmpRGB:tmpDisparity:tmpRGBA:SDOFVersion:mattingParams:context:]";
  v4 = 2080;
  v5 = "Invalid config index for disparity refinement: ";
  v6 = 1024;
  v7 = a1;
  v8 = 2080;
  v9 = "; must be in 1..6 range";
  _os_log_error_impl(&dword_295691000, a2, OS_LOG_TYPE_ERROR, "%{public}s %s%d%s", &v2, 0x26u);
}

void sub_2956CBA84(void *a1, char *a2, uint64_t a3)
{
  v4 = objc_msgSend_description(a1, a2, a3);
  v5 = v4;
  v8 = 136446466;
  v9 = "[MakeBlurMap _smallerTextureFromTexture:modelTexture:targetSize:numTextures:pixelFormat:]";
  v10 = 2080;
  v11 = objc_msgSend_UTF8String(v5, v6, v7);
  _os_log_debug_impl(&dword_295691000, a2, OS_LOG_TYPE_DEBUG, "%{public}s Unable to create texture %s", &v8, 0x16u);
}

void sub_2956CBF9C(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "+[ApplyHairnetModel processWithInputs:arguments:output:error:]";
  sub_2956AB5FC(&dword_295691000, a2, a3, "%{public}s could not create an input CVPixelBuffer for the Hairnet model.", a1);
}

void sub_2956CBFE0(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "+[ApplyHairnetModel processWithInputs:arguments:output:error:]";
  sub_2956AB5FC(&dword_295691000, a2, a3, "%{public}s could not create the output CVPixelBuffer for the Hairnet model.", a1);
}

void sub_2956CC024(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "+[ApplyHairnetModel processWithInputs:arguments:output:error:]";
  sub_2956AB5FC(&dword_295691000, a2, a3, "%{public}s could not build the Hairnet model.", a1);
}

void sub_2956CC068(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "+[ApplyHairnetModel processWithInputs:arguments:output:error:]";
  sub_2956AB5FC(&dword_295691000, a2, a3, "%{public}s could not bind 'input_ref' to the Hairnet model.", a1);
}

void sub_2956CC0AC(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "+[ApplyHairnetModel processWithInputs:arguments:output:error:]";
  sub_2956AB5FC(&dword_295691000, a2, a3, "%{public}s could not bind 'input_corrupted' to the Hairnet model.", a1);
}

void sub_2956CC0F0(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "+[ApplyHairnetModel processWithInputs:arguments:output:error:]";
  sub_2956AB5FC(&dword_295691000, a2, a3, "%{public}s could not bind 'input_mask' to the Hairnet model.", a1);
}

void sub_2956CC134(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "+[ApplyHairnetModel processWithInputs:arguments:output:error:]";
  sub_2956AB5FC(&dword_295691000, a2, a3, "%{public}s could not bind 'input_alpha' to the Hairnet model.", a1);
}

void sub_2956CC178(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "+[ApplyHairnetModel processWithInputs:arguments:output:error:]";
  sub_2956AB5FC(&dword_295691000, a2, a3, "%{public}s could not bind 'output_residual' to the Hairnet model.", a1);
}

void sub_2956CC1BC(os_log_t log)
{
  v1 = 136446210;
  v2 = "+[ApplyHairnetModel processWithInputs:arguments:output:error:]";
  _os_log_error_impl(&dword_295691000, log, OS_LOG_TYPE_ERROR, "%{public}s could not execute the Hairnet model.", &v1, 0xCu);
}

void sub_2956CC298(os_log_t log)
{
  v1 = 136446210;
  v2 = "+[ApplyHairnetModel processWithInputs:arguments:output:error:]_block_invoke";
  _os_log_error_impl(&dword_295691000, log, OS_LOG_TYPE_ERROR, "%{public}s failed to execute the Hairnet model.", &v1, 0xCu);
}

void sub_2956CC4B0(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 7;
  _os_log_debug_impl(&dword_295691000, log, OS_LOG_TYPE_DEBUG, "Missing FG/BG Dilation size param, using default = %d", v1, 8u);
}

void sub_2956CD0EC(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"Don't know how to set key %@ on filter %@");
  v3 = v2;
  objc_msgSend_UTF8String(v3, v4, v5);
  sub_2956B0894();
  sub_2956B08A8(&dword_295691000, v6, v7, "%{public}s %s", v8, v9, v10, v11, a1, a2, 2u);
}

void sub_2956CD170(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"%@ Unable to get value for key %@");
  v3 = v2;
  objc_msgSend_UTF8String(v3, v4, v5);
  sub_2956B0894();
  sub_2956B08A8(&dword_295691000, v6, v7, "%{public}s %s", v8, v9, v10, v11, a1, a2, 2u);
}

void sub_2956CD42C(uint64_t a1, char *a2)
{
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"Don't know how to handle MPS filter with name %@", a1);
  v4 = v3;
  *buf = 136446466;
  v8 = "+[UniDeviceCache findKernel:device:]";
  v9 = 2080;
  v10 = objc_msgSend_UTF8String(v4, v5, v6);
  _os_log_error_impl(&dword_295691000, a2, OS_LOG_TYPE_ERROR, "%{public}s %s", buf, 0x16u);
}

void sub_2956CD640(id *a1)
{
  v1 = *a1;
  objc_msgSend_UTF8String(v1, v2, v3);
  sub_2956B260C();
  sub_2956B25FC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_2956CD6A8(os_log_t log)
{
  v1 = 136315138;
  v2 = "CI Metal library does not contain ANY functions; this is likely a problem.";
  _os_log_error_impl(&dword_295691000, log, OS_LOG_TYPE_ERROR, "%s", &v1, 0xCu);
}

void sub_2956CD700(void *a1)
{
  v1 = a1;
  objc_msgSend_UTF8String(v1, v2, v3);
  sub_2956B25FC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_2956CD75C(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = objc_msgSend_description(a2, a2, a3);
  sub_2956B25FC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_2956CD7DC(id *a1)
{
  v1 = *a1;
  objc_msgSend_UTF8String(v1, v2, v3);
  sub_2956B260C();
  sub_2956B25FC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_2956CD9CC(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_description(v3, v4, v5);
  v7 = v6;
  v10 = 136446466;
  v11 = "[UniGuidedFilter initWithDevice:]";
  v12 = 2080;
  v13 = objc_msgSend_UTF8String(v7, v8, v9);
  _os_log_error_impl(&dword_295691000, a2, OS_LOG_TYPE_ERROR, "%{public}s Unable to load bundle for class: %s and hence associated function: _combineRGBAndAlpha", &v10, 0x16u);
}

void sub_2956CDBE4(uint64_t a1, char *a2)
{
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"Error running guided filter: %@", a1);
  v4 = v3;
  *buf = 136446466;
  v8 = "[UniGuidedFilter outputImage:]";
  v9 = 2080;
  v10 = objc_msgSend_UTF8String(v4, v5, v6);
  _os_log_error_impl(&dword_295691000, a2, OS_LOG_TYPE_ERROR, "%{public}s %s", buf, 0x16u);
}

void sub_2956CE0EC(uint8_t *a1, const char *a2, uint64_t *a3, NSObject *a4)
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"Running %lu'th kernel", a2);
  v8 = v7;
  v11 = objc_msgSend_UTF8String(v8, v9, v10);
  *a1 = 136315138;
  *a3 = v11;
  _os_log_debug_impl(&dword_295691000, a4, OS_LOG_TYPE_DEBUG, "%s", a1, 0xCu);
}

void sub_2956CE368(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"For function %@ you need to set the following function constants as well: %@");
  v3 = v2;
  objc_msgSend_UTF8String(v3, v4, v5);
  sub_2956C1724(&dword_295691000, v6, v7, "%s", v8, v9, v10, v11, a1, a2, 2u);
}

void sub_2956CE410(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"Error creating function: %@");
  v3 = v2;
  objc_msgSend_UTF8String(v3, v4, v5);
  sub_2956C1724(&dword_295691000, v6, v7, "%s", v8, v9, v10, v11, 0, v12, 2u);
}

void sub_2956CE4C8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"missing some struct parameters: %@");
  v3 = v2;
  objc_msgSend_UTF8String(v3, v4, v5);
  sub_2956C1724(&dword_295691000, v6, v7, "%s", v8, v9, v10, v11, a1, v13, 2u);
}

void sub_2956CE730()
{
  sub_2956C175C();
  v2 = MEMORY[0x29EDBA0F8];
  objc_msgSend_name(v3, v4, v5);
  objc_claimAutoreleasedReturnValue();
  v6 = sub_2956C1768();
  v9 = objc_msgSend_kernel(v6, v7, v8);
  v12 = objc_msgSend_mk(v9, v10, v11);
  objc_msgSend_label(v12, v13, v14);
  objc_claimAutoreleasedReturnValue();
  sub_2956C1750();
  v16 = objc_msgSend_stringWithFormat_(v2, v15, @"Unable to set object on encoder for argument %@ on kernel %@");
  v17 = v16;
  objc_msgSend_UTF8String(v17, v18, v19);
  sub_2956B0894();
  sub_2956C1704(&dword_295691000, v20, v21, "%{public}s %s", v22, v23, v24, v25, v26, v27, 2u);
}

void sub_2956CE82C()
{
  sub_2956C175C();
  v2 = MEMORY[0x29EDBA0F8];
  objc_msgSend_name(v3, v4, v5);
  objc_claimAutoreleasedReturnValue();
  v6 = sub_2956C1768();
  v9 = objc_msgSend_kernel(v6, v7, v8);
  v12 = objc_msgSend_mk(v9, v10, v11);
  objc_msgSend_label(v12, v13, v14);
  objc_claimAutoreleasedReturnValue();
  sub_2956C1750();
  v16 = objc_msgSend_stringWithFormat_(v2, v15, @"Expected either NSData, a MTLBuffer or a NSDictionary for argument %@ on kernel %@");
  v17 = v16;
  objc_msgSend_UTF8String(v17, v18, v19);
  sub_2956B0894();
  sub_2956C1704(&dword_295691000, v20, v21, "%{public}s %s", v22, v23, v24, v25, v26, v27, 2u);
}

void sub_2956CE9D8(uint64_t a1, NSObject *a2)
{
  v3 = 136315650;
  v4 = "Don't know how to handle mtl pixel format ";
  v5 = 2048;
  v6 = a1;
  v7 = 2080;
  v8 = pixelFormatName(a1, 0);
  _os_log_error_impl(&dword_295691000, a2, OS_LOG_TYPE_ERROR, "%s%lu (%s)", &v3, 0x20u);
}

void sub_2956CEB24(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x29EDBA0F8];
  v5 = objc_msgSend_kernel(a1, a2, a3);
  v8 = objc_msgSend_mk(v5, v6, v7);
  v11 = objc_msgSend_label(v8, v9, v10);
  v23 = a2;
  v13 = objc_msgSend_stringWithFormat_(v4, v12, @"output texture %@ missing for kernel %@");
  v14 = v13;
  objc_msgSend_UTF8String(v14, v15, v16);
  sub_2956B0894();
  sub_2956C1704(&dword_295691000, v17, v18, "%{public}s %s", v19, v20, v21, v22, v23, v11, 2u);
}

void sub_2956CEBEC()
{
  sub_2956C175C();
  v2 = MEMORY[0x29EDBA0F8];
  objc_msgSend_name(v3, v4, v5);
  objc_claimAutoreleasedReturnValue();
  v6 = sub_2956C1768();
  v9 = objc_msgSend_kernel(v6, v7, v8);
  v12 = objc_msgSend_mk(v9, v10, v11);
  objc_msgSend_label(v12, v13, v14);
  objc_claimAutoreleasedReturnValue();
  sub_2956C1750();
  v16 = objc_msgSend_stringWithFormat_(v2, v15, @"output buffer %@ missing for kernel %@");
  v17 = v16;
  objc_msgSend_UTF8String(v17, v18, v19);
  sub_2956B0894();
  sub_2956C1704(&dword_295691000, v20, v21, "%{public}s %s", v22, v23, v24, v25, v26, v27, 2u);
}

void sub_2956CEDC8(uint64_t a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 136315394;
  *(buf + 4) = "unable to create object for argument with name ";
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_295691000, log, OS_LOG_TYPE_ERROR, "%s%s", buf, 0x16u);
}

void sub_2956CEF2C(uint8_t *a1, id a2, uint64_t *a3, NSObject *a4)
{
  v8 = a2;
  v11 = objc_msgSend_UTF8String(a2, v9, v10);
  *a1 = 136315138;
  *a3 = v11;
  _os_log_error_impl(&dword_295691000, a4, OS_LOG_TYPE_ERROR, "Don't know how to set value for key %s because it is nil", a1, 0xCu);
}

void sub_2956CEFD0(void *a1, char *a2, uint64_t a3)
{
  v4 = objc_msgSend_bundlePath(a1, a2, a3);
  v5 = 136446466;
  v6 = "[UniLibrary initWithDevice:metalOnly:]";
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_295691000, a2, OS_LOG_TYPE_ERROR, "%{public}s Unable to init metalContext for bundle %@", &v5, 0x16u);
}

void sub_2956CF344(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_description(v3, v4, v5);
  v7 = v6;
  v12 = 136446722;
  v13 = "[UniScaleImage _loadShaders:]";
  v14 = 2080;
  v15 = objc_msgSend_UTF8String(v7, v8, v9);
  v16 = 2080;
  v17 = objc_msgSend_UTF8String(@"bilinearResampling", v10, v11);
  _os_log_error_impl(&dword_295691000, a2, OS_LOG_TYPE_ERROR, "%{public}s Unable to load bundle for class: %s and hence associated function: %s", &v12, 0x20u);
}

void sub_2956CF4F8(uint64_t a1, char *a2)
{
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"Unsupported desired format for use with Core Image: %@", a1);
  v4 = v3;
  *buf = 136446466;
  v8 = "[UniTextureView outputImage:]";
  v9 = 2080;
  v10 = objc_msgSend_UTF8String(v4, v5, v6);
  _os_log_error_impl(&dword_295691000, a2, OS_LOG_TYPE_ERROR, "%{public}s %s", buf, 0x16u);
}

void sub_2956CF5C4(uint64_t a1, char *a2)
{
  v3 = MTLDataTypeAsString(a1, a2);
  v4 = v3;
  v7 = 136446466;
  v8 = "packSingleValue";
  v9 = 2080;
  v10 = objc_msgSend_UTF8String(v4, v5, v6);
  _os_log_error_impl(&dword_295691000, a2, OS_LOG_TYPE_ERROR, "%{public}s Don't know how to pack object of type %s", &v7, 0x16u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x2A1C59AE0](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2A1C59B50](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2A1C59B58](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59B60](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59BA0](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2A1C76650](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}