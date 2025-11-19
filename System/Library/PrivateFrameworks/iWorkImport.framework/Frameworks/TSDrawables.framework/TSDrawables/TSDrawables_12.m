void Shape::MakeEdgeData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 8) == 0)
    {
      *(this + 13) = v3 | 8;
      v4 = *(this + 7);
      if (v4)
      {
        free(v4);
      }

      v5 = malloc_type_calloc(*(this + 9), 0x40uLL, 0x100004094D12286uLL);
      *(this + 7) = v5;
      if (!v5)
      {
        TSUSetCrashReporterInfo();
        v6 = MEMORY[0x277D81150];
        v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void Shape::MakeEdgeData(BOOL)", "void Shape::MakeEdgeData(BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 87);
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 87, 1, "Unable to allocate memory.");

        TSUCrashBreakpoint();
        abort();
      }
    }
  }

  else if ((v3 & 8) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFFF7;
    v12 = *(this + 7);
    if (v12)
    {
      free(v12);
      *(this + 7) = 0;
    }
  }
}

void Shape::MakeRasterData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x80) == 0)
    {
      *(this + 13) = v3 | 0x80;
      v4 = *(this + 10);
      if (v4)
      {
        free(v4);
      }

      v5 = malloc_type_calloc(*(this + 9), 0x30uLL, 0x10200403C9B7522uLL);
      *(this + 10) = v5;
      if (!v5)
      {
        TSUSetCrashReporterInfo();
        v6 = MEMORY[0x277D81150];
        v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void Shape::MakeRasterData(BOOL)", "void Shape::MakeRasterData(BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 108);
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 108, 1, "Unable to allocate memory.");

        TSUCrashBreakpoint();
        abort();
      }
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFF7F;
    v12 = *(this + 10);
    if (v12)
    {
      free(v12);
      *(this + 10) = 0;
    }
  }
}

void Shape::MakeQuickRasterData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x100) == 0)
    {
      *(this + 13) = v3 | 0x100;
      v4 = *(this + 16);
      if (v4)
      {
        free(v4);
      }

      v5 = malloc_type_calloc(*(this + 9), 0x10uLL, 0x10000408B6DE1C6uLL);
      *(this + 16) = v5;
      if (!v5)
      {
        TSUSetCrashReporterInfo();
        v6 = MEMORY[0x277D81150];
        v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void Shape::MakeQuickRasterData(BOOL)", "void Shape::MakeQuickRasterData(BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 129);
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 129, 1, "Unable to allocate memory.");

        TSUCrashBreakpoint();
        abort();
      }
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFEFF;
    v12 = *(this + 16);
    if (v12)
    {
      free(v12);
      *(this + 16) = 0;
    }
  }
}

void Shape::MakeSweepSrcData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x10) == 0)
    {
      *(this + 13) = v3 | 0x10;
      v4 = *(this + 8);
      if (v4)
      {
        free(v4);
      }

      v5 = malloc_type_calloc(*(this + 9), 0x38uLL, 0x10A0040A41B8C3EuLL);
      *(this + 8) = v5;
      if (!v5)
      {
        TSUSetCrashReporterInfo();
        v6 = MEMORY[0x277D81150];
        v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void Shape::MakeSweepSrcData(BOOL)", "void Shape::MakeSweepSrcData(BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 150);
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 150, 1, "Unable to allocate memory.");

        TSUCrashBreakpoint();
        abort();
      }
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFFEF;
    v12 = *(this + 8);
    if (v12)
    {
      free(v12);
      *(this + 8) = 0;
    }
  }
}

void Shape::MakeSweepDestData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x20) == 0)
    {
      *(this + 13) = v3 | 0x20;
      v4 = *(this + 9);
      if (v4)
      {
        free(v4);
      }

      v5 = malloc_type_calloc(*(this + 9), 0x20uLL, 0x1080040DCAC275BuLL);
      *(this + 9) = v5;
      if (!v5)
      {
        TSUSetCrashReporterInfo();
        v6 = MEMORY[0x277D81150];
        v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void Shape::MakeSweepDestData(BOOL)", "void Shape::MakeSweepDestData(BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 171);
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 171, 1, "Unable to allocate memory.");

        TSUCrashBreakpoint();
        abort();
      }
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFFDF;
    v12 = *(this + 9);
    if (v12)
    {
      free(v12);
      *(this + 9) = 0;
    }
  }
}

void Shape::MakeBackData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x200) == 0)
    {
      *(this + 13) = v3 | 0x200;
      v4 = *(this + 12);
      if (v4)
      {
        free(v4);
      }

      v5 = malloc_type_calloc(*(this + 9), 0x10uLL, 0x1000040451B5BE8uLL);
      *(this + 12) = v5;
      if (!v5)
      {
        TSUSetCrashReporterInfo();
        v6 = MEMORY[0x277D81150];
        v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void Shape::MakeBackData(BOOL)", "void Shape::MakeBackData(BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 192);
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 192, 1, "Unable to allocate memory.");

        TSUCrashBreakpoint();
        abort();
      }
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFDFF;
    v12 = *(this + 12);
    if (v12)
    {
      free(v12);
      *(this + 12) = 0;
    }
  }
}

void Shape::MakeVoronoiData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x400) == 0)
    {
      *(this + 13) = v3 | 0x400;
      v4 = *(this + 13);
      if (v4)
      {
        free(v4);
      }

      v5 = *(this + 14);
      if (v5)
      {
        free(v5);
      }

      v6 = malloc_type_calloc(*(this + 5), 8uLL, 0x100004000313F17uLL);
      *(this + 13) = v6;
      if (!v6)
      {
        TSUSetCrashReporterInfo();
        v16 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void Shape::MakeVoronoiData(BOOL)", "void Shape::MakeVoronoiData(BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 214);
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v19, v10, v12, 214, 1, "Unable to allocate memory.");
LABEL_17:

        TSUCrashBreakpoint();
        abort();
      }

      v7 = malloc_type_calloc(*(this + 9), 0x28uLL, 0x10000400A747E1EuLL);
      *(this + 14) = v7;
      if (!v7)
      {
        TSUSetCrashReporterInfo();
        v8 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "void Shape::MakeVoronoiData(BOOL)", "void Shape::MakeVoronoiData(BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 216);
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 216, 1, "Unable to allocate memory.");
        goto LABEL_17;
      }
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFBFF;
    v14 = *(this + 13);
    if (v14)
    {
      free(v14);
      *(this + 13) = 0;
    }

    v15 = *(this + 14);
    if (v15)
    {
      free(v15);
      *(this + 14) = 0;
    }
  }
}

void Shape::Copy(Shape *this, Shape *a2)
{
  if (a2)
  {
    v4 = *(this + 13);
    if ((v4 & 4) != 0)
    {
      v4 &= ~4u;
      *(this + 13) = v4;
      v5 = *(this + 11);
      if (v5)
      {
        free(v5);
        *(this + 11) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 8) != 0)
    {
      v4 &= ~8u;
      *(this + 13) = v4;
      v6 = *(this + 7);
      if (v6)
      {
        free(v6);
        *(this + 7) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x10) != 0)
    {
      v4 &= ~0x10u;
      *(this + 13) = v4;
      v7 = *(this + 8);
      if (v7)
      {
        free(v7);
        *(this + 8) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x20) != 0)
    {
      v4 &= ~0x20u;
      *(this + 13) = v4;
      v8 = *(this + 9);
      if (v8)
      {
        free(v8);
        *(this + 9) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x80) != 0)
    {
      v4 &= ~0x80u;
      *(this + 13) = v4;
      v9 = *(this + 10);
      if (v9)
      {
        free(v9);
        *(this + 10) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x100) != 0)
    {
      v4 &= ~0x100u;
      *(this + 13) = v4;
      v10 = *(this + 16);
      if (v10)
      {
        free(v10);
        *(this + 16) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x200) != 0)
    {
      v4 &= ~0x200u;
      *(this + 13) = v4;
      v11 = *(this + 12);
      if (v11)
      {
        free(v11);
        *(this + 12) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x40) != 0)
    {
      sub_2767C4644(this + 21);
      sub_2767C4038(this + 24);
      v12 = *(this + 13);
      if ((v12 & 0x40) != 0)
      {
        *(this + 13) = v12 & 0xFFFFFFBF;
      }
    }

    Shape::Reset(this, *(a2 + 4));
    v13 = *(a2 + 4);
    *(this + 4) = v13;
    *(this + 8) = *(a2 + 8);
    v14 = *(a2 + 13) & 3;
    *(this + 12) = *(a2 + 12);
    *(this + 13) = v14;
    memcpy(*(this + 3), *(a2 + 3), 28 * v13);
    v15 = *(this + 5);
    v16 = *(a2 + 5);
    v17 = 32 * *(this + 8);

    memcpy(v15, v16, v17);
  }

  else
  {

    Shape::Reset(this, 0);
  }
}

void Shape::Reset(Shape *this, int a2)
{
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 1;
  v4 = *(this + 5);
  if (v4 < a2)
  {
    *(this + 5) = a2;
    Shape::reallocPointsArray(this, v4);
    v5 = *(this + 13);
    if ((v5 & 4) != 0)
    {
      Shape::reallocPointsData(this, v4);
      v5 = *(this + 13);
    }

    if ((v5 & 0x400) != 0)
    {
      Shape::reallocVoronoiPointData(this, v4);
    }
  }

  v6 = *(this + 9);
  if (v6 >= a2)
  {
    goto LABEL_13;
  }

  *(this + 9) = a2;
  Shape::reallocAretesArray(this, v6);
  v7 = *(this + 13);
  if ((v7 & 8) != 0)
  {
    Shape::reallocEdgesData(this, v6);
    v7 = *(this + 13);
    if ((v7 & 0x20) == 0)
    {
LABEL_9:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_10;
      }

LABEL_18:
      Shape::reallocSweepSrcData(this, v6);
      v7 = *(this + 13);
      if ((v7 & 0x200) == 0)
      {
LABEL_11:
        if ((v7 & 0x400) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((v7 & 0x20) == 0)
  {
    goto LABEL_9;
  }

  Shape::reallocDestData(this, v6);
  v7 = *(this + 13);
  if ((v7 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v7 & 0x200) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  Shape::reallocBackData(this, v6);
  if ((*(this + 13) & 0x400) != 0)
  {
LABEL_12:
    Shape::reallocVoronoiEdgeData(this, v6);
  }

LABEL_13:
  v8 = *(this + 13);
  if ((v8 & 3) != 0)
  {
    *(this + 13) = v8 & 0xFFFFFFFC;
  }
}

uint64_t Shape::SetFlag(Shape *this, int a2, int a3)
{
  v3 = *(this + 13);
  v4 = v3 & a2;
  if (a3)
  {
    if (!v4)
    {
      v5 = v3 | a2;
LABEL_6:
      *(this + 13) = v5;
      return 1;
    }
  }

  else if (v4)
  {
    v5 = v3 & ~a2;
    goto LABEL_6;
  }

  return 0;
}

void Shape::reallocDestData(void **this, int a2)
{
  v4 = malloc_type_realloc(this[9], 32 * *(this + 9), 0x1080040DCAC275BuLL);
  this[9] = v4;
  if (!v4)
  {
    TSUSetCrashReporterInfo();
    v9 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void Shape::reallocDestData(int)", "void Shape::reallocDestData(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 269);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 269, 1, "Unable to allocate memory.");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(this + 9);
  v6 = __OFSUB__(v5, a2);
  v7 = v5 - a2;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    v8 = &v4[32 * a2];

    bzero(v8, 32 * v7);
  }
}

void Shape::reallocPointsArray(void **this, int a2)
{
  v4 = malloc_type_realloc(this[3], 28 * *(this + 5), 0x100004027586B93uLL);
  this[3] = v4;
  if (!v4)
  {
    TSUSetCrashReporterInfo();
    v9 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void Shape::reallocPointsArray(int)", "void Shape::reallocPointsArray(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 278);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 278, 1, "Unable to allocate memory.");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(this + 5);
  v6 = __OFSUB__(v5, a2);
  v7 = v5 - a2;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    v8 = &v4[28 * a2];

    bzero(v8, 28 * v7);
  }
}

void Shape::reallocPointsData(void **this, int a2)
{
  v4 = malloc_type_realloc(this[11], 48 * *(this + 5), 0x102004023ED6C3AuLL);
  this[11] = v4;
  if (!v4)
  {
    TSUSetCrashReporterInfo();
    v9 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void Shape::reallocPointsData(int)", "void Shape::reallocPointsData(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 287);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 287, 1, "Unable to allocate memory.");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(this + 5);
  v6 = __OFSUB__(v5, a2);
  v7 = v5 - a2;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    v8 = &v4[48 * a2];

    bzero(v8, 48 * v7);
  }
}

void Shape::reallocVoronoiPointData(void **this, int a2)
{
  v4 = malloc_type_realloc(this[13], 8 * *(this + 5), 0x100004000313F17uLL);
  this[13] = v4;
  if (!v4)
  {
    TSUSetCrashReporterInfo();
    v9 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void Shape::reallocVoronoiPointData(int)", "void Shape::reallocVoronoiPointData(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 296);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 296, 1, "Unable to allocate memory.");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(this + 5);
  v6 = __OFSUB__(v5, a2);
  v7 = v5 - a2;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    v8 = &v4[8 * a2];

    bzero(v8, 8 * v7);
  }
}

void Shape::reallocVoronoiEdgeData(void **this, int a2)
{
  v4 = malloc_type_realloc(this[14], 40 * *(this + 9), 0x10000400A747E1EuLL);
  this[14] = v4;
  if (!v4)
  {
    TSUSetCrashReporterInfo();
    v9 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void Shape::reallocVoronoiEdgeData(int)", "void Shape::reallocVoronoiEdgeData(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 305);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 305, 1, "Unable to allocate memory.");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(this + 9);
  v6 = __OFSUB__(v5, a2);
  v7 = v5 - a2;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    v8 = &v4[40 * a2];

    bzero(v8, 40 * v7);
  }
}

void Shape::reallocAretesArray(void **this, int a2)
{
  v4 = malloc_type_realloc(this[5], 32 * *(this + 9), 0x1000040E0EAB150uLL);
  this[5] = v4;
  if (!v4)
  {
    TSUSetCrashReporterInfo();
    v9 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void Shape::reallocAretesArray(int)", "void Shape::reallocAretesArray(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 314);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 314, 1, "Unable to allocate memory.");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(this + 9);
  v6 = __OFSUB__(v5, a2);
  v7 = v5 - a2;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    v8 = &v4[32 * a2];

    bzero(v8, 32 * v7);
  }
}

void Shape::reallocEdgesData(void **this, int a2)
{
  v4 = malloc_type_realloc(this[7], *(this + 9) << 6, 0x100004094D12286uLL);
  this[7] = v4;
  if (!v4)
  {
    TSUSetCrashReporterInfo();
    v9 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void Shape::reallocEdgesData(int)", "void Shape::reallocEdgesData(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 323);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 323, 1, "Unable to allocate memory.");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(this + 9);
  v6 = __OFSUB__(v5, a2);
  v7 = v5 - a2;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    v8 = &v4[64 * a2];

    bzero(v8, v7 << 6);
  }
}

void Shape::reallocSweepSrcData(void **this, int a2)
{
  v4 = malloc_type_realloc(this[8], 56 * *(this + 9), 0x10A0040A41B8C3EuLL);
  this[8] = v4;
  if (!v4)
  {
    TSUSetCrashReporterInfo();
    v9 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void Shape::reallocSweepSrcData(int)", "void Shape::reallocSweepSrcData(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 332);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 332, 1, "Unable to allocate memory.");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(this + 9);
  v6 = __OFSUB__(v5, a2);
  v7 = v5 - a2;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    v8 = &v4[56 * a2];

    bzero(v8, 56 * v7);
  }
}

void Shape::reallocBackData(void **this, int a2)
{
  v4 = malloc_type_realloc(this[12], 16 * *(this + 9), 0x1000040451B5BE8uLL);
  this[12] = v4;
  if (!v4)
  {
    TSUSetCrashReporterInfo();
    v9 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void Shape::reallocBackData(int)", "void Shape::reallocBackData(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 341);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 341, 1, "Unable to allocate memory.");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(this + 9);
  v6 = __OFSUB__(v5, a2);
  v7 = v5 - a2;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    v8 = &v4[16 * a2];

    bzero(v8, 16 * v7);
  }
}

void Shape::reallocRasterData(void **this, int a2)
{
  v4 = malloc_type_realloc(this[10], 48 * *(this + 9), 0x10200403C9B7522uLL);
  this[10] = v4;
  if (!v4)
  {
    TSUSetCrashReporterInfo();
    v9 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void Shape::reallocRasterData(int)", "void Shape::reallocRasterData(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 349);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 349, 1, "Unable to allocate memory.");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(this + 9);
  v6 = __OFSUB__(v5, a2);
  v7 = v5 - a2;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    v8 = &v4[48 * a2];

    bzero(v8, 48 * v7);
  }
}

uint64_t Shape::AddPoint(Shape *this, float a2, float a3)
{
  v6 = *(this + 4);
  v7 = *(this + 5);
  if (v6 >= v7)
  {
    *(this + 5) = (2 * v6) | 1;
    Shape::reallocPointsArray(this, v7);
    v8 = *(this + 13);
    if ((v8 & 4) != 0)
    {
      Shape::reallocPointsData(this, v7);
      v8 = *(this + 13);
    }

    if ((v8 & 0x400) != 0)
    {
      Shape::reallocVoronoiPointData(this, v7);
    }
  }

  result = *(this + 4);
  *(this + 4) = result + 1;
  v10 = *(this + 3) + 28 * result;
  *v10 = a2;
  *(v10 + 4) = a3;
  *(v10 + 8) = xmmword_27682D0F0;
  v11 = *(this + 13);
  if ((v11 & 4) != 0)
  {
    v12 = *(this + 11) + 48 * result;
    *(v12 + 8) = 0xFFFFFFFF00000000;
    *(v12 + 16) = -1;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
    if ((v11 & 0x400) == 0)
    {
LABEL_8:
      if (v11)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v11 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  *(*(this + 13) + 8 * result) = 0xFFFFFFFE00000000;
  if (v11)
  {
    return result;
  }

LABEL_9:
  *(this + 13) = v11 | 1;
  return result;
}

uint64_t Shape::SubPoint(uint64_t this, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = this;
    v3 = *(this + 16);
    if (v3 > a2)
    {
      v4 = *(this + 52);
      if ((v4 & 1) == 0)
      {
        *(this + 52) = v4 | 1;
      }

      v5 = *(this + 24) + 28 * a2;
      v8 = *(v5 + 16);
      v6 = (v5 + 16);
      v7 = v8;
      if ((v8 & 0x80000000) == 0)
      {
        v9 = *(this + 32);
        do
        {
          if (v7 >= v9)
          {
            break;
          }

          v10 = (*(this + 40) + 32 * v7);
          if (v10[2] == a2)
          {
            v7 = v10[4];
            *(v10 + 2) = -1;
            v11 = v10 + 2;
          }

          else
          {
            if (v10[3] != a2)
            {
              break;
            }

            v7 = v10[6];
            *(v10 + 3) = -1;
            v11 = v10 + 3;
          }

          *v11 = -1;
        }

        while ((v7 & 0x80000000) == 0);
      }

      *v6 = -1;
      v12 = v3 - 1;
      if (v3 - 1 > a2)
      {
        this = Shape::SwapPoints(this, a2, v12);
        v12 = *(v2 + 16) - 1;
      }

      *(v2 + 16) = v12;
    }
  }

  return this;
}

uint64_t Shape::SwapPoints(uint64_t this, int a2, int a3)
{
  if (a2 == a3)
  {
    return this;
  }

  v3 = *(this + 24);
  v4 = v3 + 28 * a2;
  if (*(v4 + 12) + *(v4 + 8) != 2 || *(v3 + 28 * a3 + 12) + *(v3 + 28 * a3 + 8) != 2)
  {
    v26 = *(v3 + 28 * a2 + 16);
    if ((v26 & 0x80000000) == 0)
    {
      v27 = *(this + 40);
      v28 = *(v3 + 28 * a2 + 16);
      do
      {
        v29 = (v27 + 32 * v28);
        v30 = v29 + 2;
        if (v29[2] == a2)
        {
          v28 = v29[4];
        }

        else
        {
          v30 = v29 + 3;
          if (v29[3] == a2)
          {
            v28 = v29[6];
          }

          else
          {
            v28 = 0xFFFFFFFFLL;
          }

          if (*v30 != a2)
          {
            continue;
          }
        }

        *v30 = *(this + 16);
      }

      while ((v28 & 0x80000000) == 0);
    }

    v5 = a3;
    v31 = *(v3 + 28 * a3 + 16);
    if ((v31 & 0x80000000) == 0)
    {
      v32 = *(this + 40);
      do
      {
        v33 = (v32 + 32 * v31);
        v34 = v33 + 2;
        if (v33[2] == a3)
        {
          v31 = v33[4];
        }

        else
        {
          v34 = v33 + 3;
          if (v33[3] == a3)
          {
            v31 = v33[6];
          }

          else
          {
            v31 = 0xFFFFFFFFLL;
          }

          if (*v34 != a3)
          {
            continue;
          }
        }

        *v34 = a2;
      }

      while ((v31 & 0x80000000) == 0);
    }

    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_56;
    }

    v35 = *(this + 16);
    v36 = *(this + 40);
    while (1)
    {
      v37 = (v36 + 32 * v26);
      v38 = v37 + 2;
      if (v37[2] == v35)
      {
        v26 = v37[4];
      }

      else
      {
        v38 = v37 + 3;
        if (v37[3] == v35)
        {
          v26 = v37[6];
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }

        if (*v38 != v35)
        {
          goto LABEL_55;
        }
      }

      *v38 = a3;
LABEL_55:
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_56;
      }
    }
  }

  v5 = a3;
  v6 = *(this + 40);
  v7 = v6 + 32 * *(v4 + 16);
  v8 = (v7 + 8);
  v9 = (v7 + 8);
  if (*(v7 + 8) == a2 || (v9 = (v7 + 12), *(v7 + 12) == a2))
  {
    *v9 = *(this + 16);
  }

  v10 = v6 + 32 * *(v3 + 28 * a2 + 20);
  v11 = (v10 + 8);
  v12 = (v10 + 8);
  if (*(v10 + 8) == a2 || (v12 = (v10 + 12), *(v10 + 12) == a2))
  {
    *v12 = *(this + 16);
  }

  v13 = v6 + 32 * *(v3 + 28 * a3 + 16);
  v14 = (v13 + 8);
  if (*(v13 + 8) != a3)
  {
    v16 = *(v13 + 12);
    v15 = (v13 + 12);
    if (v16 != a3)
    {
      goto LABEL_14;
    }

    v14 = v15;
  }

  *v14 = a2;
LABEL_14:
  v17 = v6 + 32 * *(v3 + 28 * a3 + 20);
  v18 = (v17 + 8);
  if (*(v17 + 8) != a3)
  {
    v20 = *(v17 + 12);
    v19 = (v17 + 12);
    if (v20 != a3)
    {
      goto LABEL_18;
    }

    v18 = v19;
  }

  *v18 = a2;
LABEL_18:
  v21 = *(this + 16);
  if (*v8 != v21)
  {
    v23 = *(v7 + 12);
    v22 = (v7 + 12);
    if (v23 != v21)
    {
      goto LABEL_22;
    }

    v8 = v22;
  }

  *v8 = a3;
LABEL_22:
  if (*v11 == v21)
  {
LABEL_25:
    *v11 = a3;
    goto LABEL_56;
  }

  v25 = *(v10 + 12);
  v24 = (v10 + 12);
  if (v25 == v21)
  {
    v11 = v24;
    goto LABEL_25;
  }

LABEL_56:
  *v54 = *v4;
  *&v54[12] = *(v4 + 12);
  v39 = (v3 + 28 * v5);
  v40 = *(v39 + 12);
  *v4 = *v39;
  *(v4 + 12) = v40;
  v41 = (*(this + 24) + 28 * v5);
  *v41 = *v54;
  *(v41 + 12) = *&v54[12];
  v42 = *(this + 52);
  if ((v42 & 4) != 0)
  {
    v43 = *(this + 88);
    v44 = (v43 + 48 * a2);
    v46 = v44[1];
    v45 = v44[2];
    v47 = *v44;
    v48 = (v43 + 48 * v5);
    v50 = v48[1];
    v49 = v48[2];
    *v44 = *v48;
    v44[1] = v50;
    v44[2] = v49;
    v51 = (*(this + 88) + 48 * v5);
    *v51 = v47;
    v51[1] = v46;
    v51[2] = v45;
    v42 = *(this + 52);
  }

  if ((v42 & 0x400) != 0)
  {
    v52 = *(this + 104);
    v53 = *(v52 + 8 * a2);
    *(v52 + 8 * a2) = *(v52 + 8 * v5);
    *(*(this + 104) + 8 * v5) = v53;
  }

  return this;
}

uint64_t Shape::SwapPoints(uint64_t this, int a2, int a3, int a4)
{
  if (a2 != a4 && a2 != a3 && a3 != a4)
  {
    v6 = this;
    Shape::SwapPoints(this, a2, a3);

    return Shape::SwapPoints(v6, a3, a4);
  }

  return this;
}

Shape *Shape::SortPoints(Shape *this)
{
  v1 = *(this + 13);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 4);
    if (v3 < 1 || (this = Shape::SortPoints(this, 0, v3 - 1), v1 = *(v2 + 13), (v1 & 1) != 0))
    {
      *(v2 + 13) = v1 & 0xFFFFFFFE;
    }
  }

  return this;
}

Shape *Shape::SortPoints(Shape *this, int a2, int a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    v5 = this;
    while (v4 + 1 != a3)
    {
      v6 = (v4 + a3) / 2;
      v7 = (*(v5 + 3) + 28 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = v6 < a3;
      v11 = v4 < v6;
      if (v4 < v6 || v6 < a3)
      {
        v13 = a3;
        v14 = v4;
        v12 = (v4 + a3) / 2;
        do
        {
          if (v11)
          {
            do
            {
              v15 = (*(v5 + 3) + 28 * v14);
              v16 = v15[1];
              if (v16 > v9)
              {
                break;
              }

              if (v16 != v9)
              {
                goto LABEL_17;
              }

              if (*v15 > v8)
              {
                break;
              }

              if (*v15 == v8)
              {
                if (v14 >= v6 - 1)
                {
                  if (v14 == v6 - 1)
                  {
                    --v6;
                  }

                  if (v10)
                  {
                    while (1)
                    {
LABEL_20:
                      v17 = (*(v5 + 3) + 28 * v13);
                      v18 = v17[1];
                      if (v18 > v9)
                      {
                        goto LABEL_23;
                      }

                      if (v18 != v9)
                      {
                        goto LABEL_28;
                      }

                      if (*v17 <= v8)
                      {
                        if (*v17 != v8)
                        {
                          goto LABEL_28;
                        }

                        if (v13 <= v12 + 1)
                        {
                          if (v13 == v12 + 1)
                          {
                            ++v12;
                          }

                          goto LABEL_28;
                        }

                        Shape::SwapPoints(v5, v13, v12 + 1, v12);
                        ++v12;
                      }

                      else
                      {
LABEL_23:
                        --v13;
                      }

                      if (v13 <= v12)
                      {
                        goto LABEL_28;
                      }
                    }
                  }

                  goto LABEL_28;
                }

                Shape::SwapPoints(v5, v14, v6 - 1, v6);
                --v6;
              }

              else
              {
LABEL_17:
                ++v14;
              }
            }

            while (v14 < v6);
          }

          if (v10)
          {
            goto LABEL_20;
          }

LABEL_28:
          if (v14 >= v6)
          {
            if (v13 <= v12 + 1)
            {
              if (v13 != v12 + 1)
              {
                break;
              }

              Shape::SwapPoints(v5, v6++, v13);
              v12 = v13;
            }

            else
            {
              Shape::SwapPoints(v5, ++v12, v6++, v13);
            }
          }

          else if (v13 <= v12)
          {
            if (v14 >= v6 - 1)
            {
              if (v14 == v6 - 1)
              {
                Shape::SwapPoints(v5, v12--, v14);
                v6 = v14;
              }
            }

            else
            {
              Shape::SwapPoints(v5, --v6, v12--, v14);
            }
          }

          else
          {
            Shape::SwapPoints(v5, v14++, v13--);
          }

          v10 = v13 > v12;
          v11 = v14 < v6;
        }

        while (v14 < v6 || v13 > v12);
      }

      else
      {
        v12 = (v4 + a3) / 2;
      }

      this = Shape::SortPoints(v5, v4, v6 - 1);
      v4 = v12 + 1;
      if (v12 + 1 >= a3)
      {
        return this;
      }
    }

    v19 = *(v5 + 3);
    v20 = (v19 + 28 * v4);
    v21 = v20[1];
    v22 = (v19 + 28 * a3);
    v23 = v22[1];
    if (v21 > v23 || v21 == v23 && *v20 > *v22)
    {

      return Shape::SwapPoints(v5, v4, a3);
    }
  }

  return this;
}

Shape *Shape::SortPointsRounded(Shape *this)
{
  v1 = *(this + 4);
  if (v1 >= 1)
  {
    return Shape::SortPointsRounded(this, 0, v1 - 1);
  }

  return this;
}

Shape *Shape::SortPointsRounded(Shape *this, int a2, int a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    v5 = this;
    while (v4 + 1 != a3)
    {
      v6 = (v4 + a3) / 2;
      v7 = *(v5 + 11) + 48 * v6;
      v8 = *(v7 + 36);
      v9 = *(v7 + 40);
      v10 = v6 < a3;
      v11 = v4 < v6;
      if (v4 < v6 || v6 < a3)
      {
        v13 = a3;
        v14 = v4;
        v12 = (v4 + a3) / 2;
        do
        {
          if (v11)
          {
            do
            {
              v15 = *(v5 + 11) + 48 * v14;
              v16 = *(v15 + 40);
              if (v16 > v9)
              {
                break;
              }

              if (v16 != v9)
              {
                goto LABEL_17;
              }

              v17 = *(v15 + 36);
              if (v17 > v8)
              {
                break;
              }

              if (v17 == v8)
              {
                if (v14 >= v6 - 1)
                {
                  if (v14 == v6 - 1)
                  {
                    --v6;
                  }

                  if (v10)
                  {
                    while (1)
                    {
LABEL_20:
                      v18 = *(v5 + 11) + 48 * v13;
                      v19 = *(v18 + 40);
                      if (v19 > v9)
                      {
                        goto LABEL_23;
                      }

                      if (v19 != v9)
                      {
                        goto LABEL_28;
                      }

                      v20 = *(v18 + 36);
                      if (v20 <= v8)
                      {
                        if (v20 != v8)
                        {
                          goto LABEL_28;
                        }

                        if (v13 <= v12 + 1)
                        {
                          if (v13 == v12 + 1)
                          {
                            ++v12;
                          }

                          goto LABEL_28;
                        }

                        Shape::SwapPoints(v5, v13, v12 + 1, v12);
                        ++v12;
                      }

                      else
                      {
LABEL_23:
                        --v13;
                      }

                      if (v13 <= v12)
                      {
                        goto LABEL_28;
                      }
                    }
                  }

                  goto LABEL_28;
                }

                Shape::SwapPoints(v5, v14, v6 - 1, v6);
                --v6;
              }

              else
              {
LABEL_17:
                ++v14;
              }
            }

            while (v14 < v6);
          }

          if (v10)
          {
            goto LABEL_20;
          }

LABEL_28:
          if (v14 >= v6)
          {
            if (v13 <= v12 + 1)
            {
              if (v13 != v12 + 1)
              {
                break;
              }

              Shape::SwapPoints(v5, v6++, v13);
              v12 = v13;
            }

            else
            {
              Shape::SwapPoints(v5, ++v12, v6++, v13);
            }
          }

          else if (v13 <= v12)
          {
            if (v14 >= v6 - 1)
            {
              if (v14 == v6 - 1)
              {
                Shape::SwapPoints(v5, v12--, v14);
                v6 = v14;
              }
            }

            else
            {
              Shape::SwapPoints(v5, --v6, v12--, v14);
            }
          }

          else
          {
            Shape::SwapPoints(v5, v14++, v13--);
          }

          v10 = v13 > v12;
          v11 = v14 < v6;
        }

        while (v14 < v6 || v13 > v12);
      }

      else
      {
        v12 = (v4 + a3) / 2;
      }

      this = Shape::SortPointsRounded(v5, v4, v6 - 1);
      v4 = v12 + 1;
      if (v12 + 1 >= a3)
      {
        return this;
      }
    }

    v21 = *(v5 + 11);
    v22 = v21 + 48 * v4;
    v23 = *(v22 + 40);
    v24 = v21 + 48 * a3;
    v25 = *(v24 + 40);
    if (v23 > v25 || v23 == v25 && *(v22 + 36) > *(v24 + 36))
    {

      return Shape::SwapPoints(v5, v4, a3);
    }
  }

  return this;
}

Shape *Shape::SortPointsByOldInd(Shape *this, int a2, int a3)
{
  if (a2 < a3)
  {
    v3 = this;
    v25 = a3;
    while (a2 + 1 != a3)
    {
      v4 = (a2 + a3) / 2;
      v5 = (*(v3 + 3) + 28 * v4);
      v6 = *v5;
      v7 = v5[1];
      v8 = *(*(v3 + 11) + 48 * v4);
      v9 = v4 < a3;
      v10 = a2 < v4;
      v26 = a2;
      if (a2 < v4 || v4 < a3)
      {
        v12 = a3;
        v13 = a2;
        v11 = (a2 + a3) / 2;
        do
        {
          if (v10)
          {
            do
            {
              v14 = (*(v3 + 3) + 28 * v13);
              v15 = v14[1];
              if (v15 > v7)
              {
                break;
              }

              if (v15 != v7)
              {
                goto LABEL_17;
              }

              if (*v14 > v6)
              {
                break;
              }

              if (*v14 != v6)
              {
                goto LABEL_17;
              }

              v16 = *(*(v3 + 11) + 48 * v13);
              if (v16 > v8)
              {
                break;
              }

              if (v16 == v8)
              {
                if (v13 >= v4 - 1)
                {
                  if (v13 == v4 - 1)
                  {
                    --v4;
                  }

                  if (v9)
                  {
                    while (1)
                    {
LABEL_20:
                      v17 = (*(v3 + 3) + 28 * v12);
                      v18 = v17[1];
                      if (v18 > v7)
                      {
                        goto LABEL_25;
                      }

                      if (v18 != v7)
                      {
                        goto LABEL_37;
                      }

                      if (*v17 > v6)
                      {
                        goto LABEL_25;
                      }

                      if (*v17 != v6)
                      {
                        goto LABEL_37;
                      }

                      v19 = *(*(v3 + 11) + 48 * v12);
                      if (v19 <= v8)
                      {
                        if (v19 != v8)
                        {
                          goto LABEL_37;
                        }

                        if (v12 <= v11 + 1)
                        {
                          if (v12 == v11 + 1)
                          {
                            ++v11;
                          }

                          goto LABEL_37;
                        }

                        Shape::SwapPoints(v3, v12, v11 + 1, v11);
                        ++v11;
                      }

                      else
                      {
LABEL_25:
                        --v12;
                      }

                      if (v12 <= v11)
                      {
                        goto LABEL_37;
                      }
                    }
                  }

                  goto LABEL_37;
                }

                Shape::SwapPoints(v3, v13, v4 - 1, v4);
                --v4;
              }

              else
              {
LABEL_17:
                ++v13;
              }
            }

            while (v13 < v4);
          }

          if (v9)
          {
            goto LABEL_20;
          }

LABEL_37:
          if (v13 >= v4)
          {
            if (v12 <= v11 + 1)
            {
              if (v12 != v11 + 1)
              {
                break;
              }

              Shape::SwapPoints(v3, v4++, v12);
              v11 = v12;
            }

            else
            {
              Shape::SwapPoints(v3, ++v11, v4++, v12);
            }
          }

          else if (v12 <= v11)
          {
            if (v13 >= v4 - 1)
            {
              if (v13 == v4 - 1)
              {
                Shape::SwapPoints(v3, v11--, v13);
                v4 = v13;
              }
            }

            else
            {
              Shape::SwapPoints(v3, --v4, v11--, v13);
            }
          }

          else
          {
            Shape::SwapPoints(v3, v13++, v12--);
          }

          v9 = v12 > v11;
          v10 = v13 < v4;
        }

        while (v13 < v4 || v12 > v11);
      }

      else
      {
        v11 = (a2 + a3) / 2;
      }

      this = Shape::SortPointsByOldInd(v3, v26, v4 - 1);
      a2 = v11 + 1;
      a3 = v25;
      if (v11 + 1 >= v25)
      {
        return this;
      }
    }

    v20 = *(v3 + 3);
    v21 = (v20 + 28 * a2);
    v22 = v21[1];
    v23 = (v20 + 28 * a3);
    v24 = v23[1];
    if (v22 > v24 || v22 == v24 && (*v21 > *v23 || *v21 == *v23 && *(*(v3 + 11) + 48 * a2) > *(*(v3 + 11) + 48 * a3)))
    {

      return Shape::SwapPoints(v3, a2, a3);
    }
  }

  return this;
}

uint64_t Shape::AddEdge(Shape *this, unsigned int a2, unsigned int a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 == a3 || ((a3 | a2) & 0x80000000) != 0)
  {
    return v3;
  }

  *(this + 12) = 0;
  v7 = *(this + 8);
  v8 = *(this + 9);
  if (v7 < v8)
  {
    goto LABEL_11;
  }

  *(this + 9) = (2 * v7) | 1;
  Shape::reallocAretesArray(this, v8);
  v9 = *(this + 13);
  if ((v9 & 8) != 0)
  {
    Shape::reallocEdgesData(this, v8);
    v9 = *(this + 13);
    if ((v9 & 0x10) == 0)
    {
LABEL_6:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v9 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  Shape::reallocSweepSrcData(this, v8);
  v9 = *(this + 13);
  if ((v9 & 0x20) == 0)
  {
LABEL_7:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    Shape::reallocRasterData(this, v8);
    v9 = *(this + 13);
    if ((v9 & 0x200) == 0)
    {
LABEL_9:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_25:
  Shape::reallocDestData(this, v8);
  v9 = *(this + 13);
  if ((v9 & 0x80) != 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if ((v9 & 0x200) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  Shape::reallocBackData(this, v8);
  if ((*(this + 13) & 0x400) != 0)
  {
LABEL_10:
    Shape::reallocVoronoiEdgeData(this, v8);
  }

LABEL_11:
  v3 = *(this + 8);
  *(this + 8) = v3 + 1;
  v10 = (*(this + 5) + 32 * v3);
  v10[2] = -1;
  v10[3] = -1;
  v10[1] = -1;
  *v10 = vsub_f32(*(*(this + 3) + 28 * a3), *(*(this + 3) + 28 * a2));
  Shape::ConnectStart(this, a2, v3);
  Shape::ConnectEnd(this, a3, v3);
  v11 = *(this + 13);
  if ((v11 & 8) != 0)
  {
    v13 = *(this + 7) + (v3 << 6);
    *v13 = 1;
    *(v13 + 4) = *(*(this + 5) + 32 * v3);
    if ((v11 & 0x10) == 0)
    {
LABEL_13:
      if ((v11 & 0x200) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  else if ((v11 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v14 = *(this + 8) + 56 * v3;
  *v14 = 0;
  *(v14 + 8) = -1;
  if ((v11 & 0x200) == 0)
  {
LABEL_14:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    *(*(this + 14) + 40 * v3) = -1;
    if ((v11 & 2) != 0)
    {
      return v3;
    }

    goto LABEL_16;
  }

LABEL_20:
  v15 = (*(this + 12) + 16 * v3);
  *v15 = -1;
  v15[1] = 0;
  if ((v11 & 0x400) != 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if ((v11 & 2) == 0)
  {
LABEL_16:
    *(this + 13) = v11 | 2;
  }

  return v3;
}

uint64_t Shape::ConnectStart(uint64_t this, int a2, int a3)
{
  v5 = this;
  v6 = *(this + 40);
  v7 = a3;
  if ((*(v6 + 32 * a3 + 8) & 0x80000000) == 0)
  {
    this = Shape::DisconnectStart(this, a3);
    v6 = *(v5 + 40);
  }

  v8 = (v6 + 32 * v7);
  v8[2] = a2;
  v9 = *(v5 + 24);
  v10 = v9 + 28 * a2;
  v13 = *(v10 + 20);
  v11 = (v10 + 20);
  v12 = v13;
  ++*(v11 - 2);
  v8[4] = -1;
  v8[5] = v13;
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v6 + 32 * v12;
    if (*(v14 + 8) == a2)
    {
      v15 = 16;
    }

    else
    {
      if (*(v14 + 12) != a2)
      {
        goto LABEL_9;
      }

      v15 = 24;
    }

    *(v14 + v15) = a3;
  }

LABEL_9:
  *v11 = a3;
  v16 = v9 + 28 * a2;
  v18 = *(v16 + 16);
  v17 = (v16 + 16);
  if (v18 < 0)
  {
    *v17 = a3;
  }

  return this;
}

uint64_t Shape::ConnectEnd(uint64_t this, int a2, int a3)
{
  v5 = this;
  v6 = *(this + 40);
  v7 = a3;
  if ((*(v6 + 32 * a3 + 12) & 0x80000000) == 0)
  {
    this = Shape::DisconnectEnd(this, a3);
    v6 = *(v5 + 40);
  }

  v8 = (v6 + 32 * v7);
  v8[3] = a2;
  v9 = *(v5 + 24);
  v10 = v9 + 28 * a2;
  v13 = *(v10 + 20);
  v11 = (v10 + 20);
  v12 = v13;
  ++*(v11 - 3);
  v8[6] = -1;
  v8[7] = v13;
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v6 + 32 * v12;
    if (*(v14 + 8) == a2)
    {
      v15 = 16;
    }

    else
    {
      if (*(v14 + 12) != a2)
      {
        goto LABEL_9;
      }

      v15 = 24;
    }

    *(v14 + v15) = a3;
  }

LABEL_9:
  *v11 = a3;
  v16 = v9 + 28 * a2;
  v18 = *(v16 + 16);
  v17 = (v16 + 16);
  if (v18 < 0)
  {
    *v17 = a3;
  }

  return this;
}

uint64_t Shape::AddEdge(Shape *this, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v5 = 0xFFFFFFFFLL;
  if (a2 == a3 || ((a3 | a2) & 0x80000000) != 0)
  {
    return v5;
  }

  v11 = *(*(this + 3) + 28 * a2 + 16);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_12:
    *(this + 12) = 0;
    v16 = *(this + 8);
    v17 = *(this + 9);
    if (v16 < v17)
    {
      goto LABEL_20;
    }

    *(this + 9) = (2 * v16) | 1;
    Shape::reallocAretesArray(this, v17);
    v18 = *(this + 13);
    if ((v18 & 8) != 0)
    {
      Shape::reallocEdgesData(this, v17);
      v18 = *(this + 13);
      if ((v18 & 0x10) == 0)
      {
LABEL_15:
        if ((v18 & 0x20) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }
    }

    else if ((v18 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    Shape::reallocSweepSrcData(this, v17);
    v18 = *(this + 13);
    if ((v18 & 0x20) == 0)
    {
LABEL_16:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

LABEL_35:
    Shape::reallocDestData(this, v17);
    v18 = *(this + 13);
    if ((v18 & 0x80) == 0)
    {
LABEL_17:
      if ((v18 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }

LABEL_36:
    Shape::reallocRasterData(this, v17);
    v18 = *(this + 13);
    if ((v18 & 0x200) == 0)
    {
LABEL_18:
      if ((v18 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_37:
    Shape::reallocBackData(this, v17);
    if ((*(this + 13) & 0x400) == 0)
    {
LABEL_20:
      v5 = *(this + 8);
      *(this + 8) = v5 + 1;
      v19 = (*(this + 5) + 32 * v5);
      v19[2] = -1;
      v19[3] = -1;
      v19[1] = -1;
      *v19 = vsub_f32(*(*(this + 3) + 28 * a3), *(*(this + 3) + 28 * a2));
      Shape::ConnectStart(this, a2, v5);
      Shape::ConnectEnd(this, a3, v5);
      v20 = *(this + 13);
      if ((v20 & 8) != 0)
      {
        v21 = *(this + 7) + (v5 << 6);
        *v21 = 1;
        *(v21 + 4) = *(*(this + 5) + 32 * v5);
        if ((v20 & 0x10) == 0)
        {
LABEL_22:
          if ((v20 & 0x200) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_28;
        }
      }

      else if ((v20 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      v22 = *(this + 8) + 56 * v5;
      *v22 = 0;
      *(v22 + 8) = -1;
      if ((v20 & 0x200) == 0)
      {
LABEL_23:
        if ((v20 & 0x400) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }

LABEL_28:
      v23 = (*(this + 12) + 16 * v5);
      *v23 = -1;
      v23[1] = 0;
      if ((v20 & 0x400) == 0)
      {
LABEL_24:
        if ((v20 & 2) != 0)
        {
          return v5;
        }

        goto LABEL_30;
      }

LABEL_29:
      v24 = (*(this + 14) + 40 * v5);
      *v24 = a4;
      v24[1] = a5;
      if ((v20 & 2) != 0)
      {
        return v5;
      }

LABEL_30:
      *(this + 13) = v20 | 2;
      return v5;
    }

LABEL_19:
    Shape::reallocVoronoiEdgeData(this, v17);
    goto LABEL_20;
  }

  while (1)
  {
    v12 = *(this + 5) + 32 * v11;
    v13 = *(v12 + 8);
    if (*(v12 + 8) == __PAIR64__(a3, a2) || v13 == a3 && *(v12 + 12) == a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v13 == a2)
    {
      v14 = 16;
    }

    else
    {
      if (*(v12 + 12) != a2)
      {
        goto LABEL_12;
      }

      v14 = 24;
    }

    v11 = *(v12 + v14);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_12;
    }
  }
}

void Shape::SubEdge(Shape *this, int a2)
{
  if ((a2 & 0x80000000) == 0 && *(this + 8) > a2)
  {
    *(this + 12) = 0;
    Shape::DisconnectStart(this, a2);
    Shape::DisconnectEnd(this, a2);
    v4 = *(this + 8) - 1;
    if (v4 > a2)
    {
      Shape::SwapEdges(this, a2, v4);
      v4 = *(this + 8) - 1;
    }

    *(this + 8) = v4;
    v5 = *(this + 13);
    if ((v5 & 2) == 0)
    {
      *(this + 13) = v5 | 2;
    }
  }
}

uint64_t Shape::DisconnectStart(uint64_t this, int a2)
{
  v2 = *(this + 40);
  v3 = (v2 + 32 * a2);
  v4 = v3[2];
  if ((v4 & 0x80000000) != 0)
  {
    return this;
  }

  v5 = *(this + 24);
  --*(v5 + 28 * v4 + 12);
  v6 = v3[5];
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v2 + 32 * v6;
    if (*(v7 + 8) == v4)
    {
      v8 = 16;
    }

    else
    {
      if (*(v7 + 12) != v4)
      {
        goto LABEL_8;
      }

      v8 = 24;
    }

    *(v7 + v8) = v3[4];
  }

LABEL_8:
  v9 = v3[4];
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v2 + 32 * v9;
    if (*(v10 + 8) == v4)
    {
      v11 = 20;
LABEL_13:
      *(v10 + v11) = v6;
      goto LABEL_14;
    }

    if (*(v10 + 12) == v4)
    {
      v11 = 28;
      goto LABEL_13;
    }
  }

LABEL_14:
  v12 = v5 + 28 * v4;
  v14 = *(v12 + 16);
  v13 = (v12 + 16);
  if (v14 == a2)
  {
    *v13 = v9;
  }

  v15 = v5 + 28 * v4;
  v17 = *(v15 + 20);
  v16 = (v15 + 20);
  if (v17 == a2)
  {
    *v16 = v3[5];
  }

  v3[2] = -1;
  return this;
}

uint64_t Shape::DisconnectEnd(uint64_t this, int a2)
{
  v2 = *(this + 40);
  v3 = (v2 + 32 * a2);
  v4 = v3[3];
  if ((v4 & 0x80000000) != 0)
  {
    return this;
  }

  v5 = *(this + 24);
  --*(v5 + 28 * v4 + 8);
  v6 = v3[7];
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v2 + 32 * v6;
    if (*(v7 + 8) == v4)
    {
      v8 = 16;
    }

    else
    {
      if (*(v7 + 12) != v4)
      {
        goto LABEL_8;
      }

      v8 = 24;
    }

    *(v7 + v8) = v3[6];
  }

LABEL_8:
  v9 = v3[6];
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v2 + 32 * v9;
    if (*(v10 + 8) == v4)
    {
      v11 = 20;
LABEL_13:
      *(v10 + v11) = v6;
      goto LABEL_14;
    }

    if (*(v10 + 12) == v4)
    {
      v11 = 28;
      goto LABEL_13;
    }
  }

LABEL_14:
  v12 = v5 + 28 * v4;
  v14 = *(v12 + 16);
  v13 = (v12 + 16);
  if (v14 == a2)
  {
    *v13 = v9;
  }

  v15 = v5 + 28 * v4;
  v17 = *(v15 + 20);
  v16 = (v15 + 20);
  if (v17 == a2)
  {
    *v16 = v3[7];
  }

  v3[3] = -1;
  return this;
}

__n128 Shape::SwapEdges(Shape *this, int a2, int a3)
{
  if (a2 != a3)
  {
    v3 = *(this + 5);
    v4 = (v3 + 32 * a2);
    v5 = v4;
    v6 = v4[5];
    if ((v6 & 0x80000000) == 0 && v6 != a3)
    {
      v7 = v3 + 32 * v6;
      v8 = v4[2];
      if (*(v7 + 8) == v8)
      {
        v9 = 16;
LABEL_8:
        *(v7 + v9) = a3;
        goto LABEL_9;
      }

      if (*(v7 + 12) == v8)
      {
        v9 = 24;
        goto LABEL_8;
      }
    }

LABEL_9:
    v10 = v4[4];
    if ((v10 & 0x80000000) == 0 && v10 != a3)
    {
      v11 = v3 + 32 * v10;
      v12 = v4[2];
      if (*(v11 + 8) == v12)
      {
        v13 = 20;
LABEL_15:
        *(v11 + v13) = a3;
        goto LABEL_16;
      }

      if (*(v11 + 12) == v12)
      {
        v13 = 28;
        goto LABEL_15;
      }
    }

LABEL_16:
    v14 = v4[7];
    if ((v14 & 0x80000000) == 0 && v14 != a3)
    {
      v15 = v3 + 32 * v14;
      v16 = v4[3];
      if (*(v15 + 8) == v16)
      {
        v17 = 16;
LABEL_22:
        *(v15 + v17) = a3;
        goto LABEL_23;
      }

      if (*(v15 + 12) == v16)
      {
        v17 = 24;
        goto LABEL_22;
      }
    }

LABEL_23:
    v18 = v4[6];
    if ((v18 & 0x80000000) == 0 && v18 != a3)
    {
      v19 = v3 + 32 * v18;
      v20 = v4[3];
      if (*(v19 + 8) == v20)
      {
        v21 = 20;
      }

      else
      {
        if (*(v19 + 12) != v20)
        {
          goto LABEL_30;
        }

        v21 = 28;
      }

      *(v19 + v21) = a3;
    }

LABEL_30:
    v22 = v4[2];
    if ((v22 & 0x80000000) == 0)
    {
      v23 = *(this + 3);
      v24 = v23 + 28 * v22;
      v26 = *(v24 + 16);
      v25 = (v24 + 16);
      if (v26 == a2)
      {
        *v25 = *(this + 8);
      }

      v27 = v23 + 28 * v22;
      v29 = *(v27 + 20);
      v28 = (v27 + 20);
      if (v29 == a2)
      {
        *v28 = *(this + 8);
      }
    }

    v30 = v4[3];
    if ((v30 & 0x80000000) == 0)
    {
      v31 = *(this + 3);
      v32 = v31 + 28 * v30;
      v34 = *(v32 + 16);
      v33 = (v32 + 16);
      if (v34 == a2)
      {
        *v33 = *(this + 8);
      }

      v35 = v31 + 28 * v30;
      v37 = *(v35 + 20);
      v36 = (v35 + 20);
      if (v37 == a2)
      {
        *v36 = *(this + 8);
      }
    }

    v38 = v3 + 32 * a3;
    v39 = *(v38 + 20);
    if ((v39 & 0x80000000) == 0 && v39 != a2)
    {
      v40 = v3 + 32 * v39;
      v41 = *(v38 + 8);
      if (*(v40 + 8) == v41)
      {
        v42 = 16;
LABEL_46:
        *(v40 + v42) = a2;
        goto LABEL_47;
      }

      if (*(v40 + 12) == v41)
      {
        v42 = 24;
        goto LABEL_46;
      }
    }

LABEL_47:
    v43 = *(v38 + 16);
    if ((v43 & 0x80000000) == 0 && v43 != a2)
    {
      v44 = v3 + 32 * v43;
      v45 = *(v38 + 8);
      if (*(v44 + 8) == v45)
      {
        v46 = 20;
LABEL_53:
        *(v44 + v46) = a2;
        goto LABEL_54;
      }

      if (*(v44 + 12) == v45)
      {
        v46 = 28;
        goto LABEL_53;
      }
    }

LABEL_54:
    v47 = *(v38 + 28);
    if ((v47 & 0x80000000) == 0 && v47 != a2)
    {
      v48 = v3 + 32 * v47;
      v49 = *(v38 + 12);
      if (*(v48 + 8) == v49)
      {
        v50 = 16;
LABEL_60:
        *(v48 + v50) = a2;
        goto LABEL_61;
      }

      if (*(v48 + 12) == v49)
      {
        v50 = 24;
        goto LABEL_60;
      }
    }

LABEL_61:
    v51 = *(v38 + 24);
    if ((v51 & 0x80000000) == 0 && v51 != a2)
    {
      v52 = v3 + 32 * v51;
      v53 = *(v38 + 12);
      if (*(v52 + 8) == v53)
      {
        v54 = 20;
      }

      else
      {
        if (*(v52 + 12) != v53)
        {
          goto LABEL_68;
        }

        v54 = 28;
      }

      *(v52 + v54) = a2;
    }

LABEL_68:
    v55 = *(v38 + 8);
    if ((v55 & 0x80000000) == 0)
    {
      v56 = *(this + 3);
      v57 = v56 + 28 * v55;
      v59 = *(v57 + 16);
      v58 = (v57 + 16);
      if (v59 == a3)
      {
        *v58 = a2;
      }

      v60 = v56 + 28 * v55;
      v62 = *(v60 + 20);
      v61 = (v60 + 20);
      if (v62 == a3)
      {
        *v61 = a2;
      }
    }

    v63 = *(v38 + 12);
    if ((v63 & 0x80000000) == 0)
    {
      v64 = *(this + 3);
      v65 = v64 + 28 * v63;
      v67 = *(v65 + 16);
      v66 = (v65 + 16);
      if (v67 == a3)
      {
        *v66 = a2;
      }

      v68 = v64 + 28 * v63;
      v70 = *(v68 + 20);
      v69 = (v68 + 20);
      if (v70 == a3)
      {
        *v69 = a2;
      }
    }

    if ((v22 & 0x80000000) == 0)
    {
      v71 = *(this + 3);
      v72 = v71 + 28 * v22;
      v74 = *(v72 + 16);
      v73 = (v72 + 16);
      v75 = *(this + 8);
      if (v74 == v75)
      {
        *v73 = a3;
      }

      v76 = v71 + 28 * v22;
      v78 = *(v76 + 20);
      v77 = (v76 + 20);
      if (v78 == v75)
      {
        *v77 = a3;
      }
    }

    if ((v30 & 0x80000000) == 0)
    {
      v79 = *(this + 3);
      v80 = v79 + 28 * v30;
      v82 = *(v80 + 16);
      v81 = (v80 + 16);
      v83 = *(this + 8);
      if (v82 == v83)
      {
        *v81 = a3;
      }

      v84 = v79 + 28 * v30;
      v86 = *(v84 + 20);
      v85 = (v84 + 20);
      if (v86 == v83)
      {
        *v85 = a3;
      }
    }

    v87 = v4 + 5;
    if (v4[5] == a3)
    {
      *v87 = a2;
    }

    v88 = v4 + 7;
    if (v4[7] == a3)
    {
      *v88 = a2;
    }

    v89 = v4 + 4;
    if (v4[4] == a3)
    {
      *v89 = a2;
    }

    v91 = v4[6];
    v90 = v4 + 6;
    if (v91 == a3)
    {
      *v90 = a2;
    }

    if (*(v38 + 20) == a2)
    {
      *v87 = a3;
    }

    if (*(v38 + 28) == a2)
    {
      *v88 = a3;
    }

    if (*(v38 + 16) == a2)
    {
      *v89 = a3;
    }

    if (*(v38 + 24) == a2)
    {
      *v90 = a3;
    }

    result = *v5;
    v141 = *(v5 + 1);
    v93 = *(v38 + 16);
    *v5 = *v38;
    *(v5 + 1) = v93;
    v94 = *(this + 5) + 32 * a3;
    *v94 = result;
    *(v94 + 16) = v141;
    v95 = *(this + 13);
    if ((v95 & 8) != 0)
    {
      v104 = *(this + 7);
      v105 = (v104 + (a2 << 6));
      v133 = *v105;
      v135 = v105[1];
      v137 = v105[2];
      v139 = v105[3];
      v106 = (v104 + (a3 << 6));
      v107 = v106[3];
      v109 = *v106;
      v108 = v106[1];
      v105[2] = v106[2];
      v105[3] = v107;
      *v105 = v109;
      v105[1] = v108;
      v110 = (*(this + 7) + (a3 << 6));
      *v110 = v133;
      v110[1] = v135;
      result = v137;
      v110[2] = v137;
      v110[3] = v139;
      v95 = *(this + 13);
      if ((v95 & 0x10) == 0)
      {
LABEL_106:
        if ((v95 & 0x20) == 0)
        {
          goto LABEL_107;
        }

        goto LABEL_114;
      }
    }

    else if ((v95 & 0x10) == 0)
    {
      goto LABEL_106;
    }

    v111 = *(this + 8);
    v112 = (v111 + 56 * a2);
    v134 = *v112;
    v136 = v112[1];
    v138 = v112[2];
    v140 = *(v112 + 6);
    v113 = (v111 + 56 * a3);
    v115 = v113[1];
    v114 = v113[2];
    v116 = *v113;
    *(v112 + 6) = *(v113 + 6);
    v112[1] = v115;
    v112[2] = v114;
    *v112 = v116;
    v117 = *(this + 8) + 56 * a3;
    *v117 = v134;
    *(v117 + 16) = v136;
    result = v138;
    *(v117 + 32) = v138;
    *(v117 + 48) = v140;
    v95 = *(this + 13);
    if ((v95 & 0x20) == 0)
    {
LABEL_107:
      if ((v95 & 0x80) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_115;
    }

LABEL_114:
    v118 = *(this + 9);
    v119 = (v118 + 32 * a2);
    v120 = *v119;
    result = v119[1];
    v121 = (v118 + 32 * a3);
    v122 = v121[1];
    *v119 = *v121;
    v119[1] = v122;
    v123 = *(this + 9) + 32 * a3;
    *v123 = v120;
    *(v123 + 16) = result;
    v95 = *(this + 13);
    if ((v95 & 0x80) == 0)
    {
LABEL_108:
      if ((v95 & 0x200) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_116;
    }

LABEL_115:
    v124 = *(this + 10);
    v125 = (v124 + 48 * a2);
    v126 = v125[1];
    result = v125[2];
    v127 = *v125;
    v128 = (v124 + 48 * a3);
    v130 = v128[1];
    v129 = v128[2];
    *v125 = *v128;
    v125[1] = v130;
    v125[2] = v129;
    v131 = *(this + 10) + 48 * a3;
    *v131 = v127;
    *(v131 + 16) = v126;
    *(v131 + 32) = result;
    v95 = *(this + 13);
    if ((v95 & 0x200) == 0)
    {
LABEL_109:
      if ((v95 & 0x400) == 0)
      {
        return result;
      }

      goto LABEL_110;
    }

LABEL_116:
    v132 = *(this + 12);
    result = *(v132 + 16 * a2);
    *(v132 + 16 * a2) = *(v132 + 16 * a3);
    *(*(this + 12) + 16 * a3) = result;
    if ((*(this + 13) & 0x400) == 0)
    {
      return result;
    }

LABEL_110:
    v96 = *(this + 14);
    v97 = (v96 + 40 * a2);
    v98 = *(v97 + 4);
    v99 = *v97;
    result = v97[1];
    v100 = (v96 + 40 * a3);
    v101 = *(v100 + 4);
    v102 = v100[1];
    *v97 = *v100;
    v97[1] = v102;
    *(v97 + 4) = v101;
    v103 = *(this + 14) + 40 * a3;
    *v103 = v99;
    *(v103 + 16) = result;
    *(v103 + 32) = v98;
  }

  return result;
}

double Shape::SwapEdges(Shape *this, int a2, int a3, int a4)
{
  if (a2 != a4 && a2 != a3 && a3 != a4)
  {
    Shape::SwapEdges(this, a2, a3);

    *&result = Shape::SwapEdges(this, a3, a4).n128_u64[0];
  }

  return result;
}

void Shape::SortEdges(Shape *this)
{
  v1 = *(this + 13);
  if ((v1 & 2) != 0)
  {
    *(this + 13) = v1 & 0xFFFFFFFD;
    v3 = malloc_type_malloc(16 * *(this + 8), 0x1000040A517B1A3uLL);
    if (!v3)
    {
      TSUSetCrashReporterInfo();
      v27 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "void Shape::SortEdges()", "void Shape::SortEdges()", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 1192);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v29, v31, 1192, 1, "Unable to allocate memory.");

      TSUCrashBreakpoint();
      abort();
    }

    v4 = v3;
    if (*(this + 4) >= 1)
    {
      v5 = 0;
      v6 = *(this + 3);
      do
      {
        v7 = (v6 + 28 * v5);
        if (v7[3] + v7[2] >= 2)
        {
          v8 = v7[4];
          if ((v8 & 0x80000000) != 0)
          {
            v12 = 0;
          }

          else
          {
            v9 = *(this + 5);
            v10 = 1;
            v11 = v4 + 2;
            do
            {
              v12 = v10;
              *(v11 - 2) = v8;
              v13 = v9 + 32 * v8;
              v14 = *v13;
              if (v5 == *(v13 + 8))
              {
                v15 = *(v13 + 4);
                *v11 = v14;
                v11[1] = v15;
                *(v11 - 4) = 1;
                v16 = 16;
              }

              else
              {
                v17 = -*(v13 + 4);
                *v11 = -v14;
                *(v11 + 1) = v17;
                *(v11 - 4) = 0;
                if (v5 != *(v13 + 12))
                {
                  break;
                }

                v16 = 24;
              }

              v8 = *(v13 + v16);
              v11 += 4;
              v10 = v12 + 1;
            }

            while ((v8 & 0x80000000) == 0);
          }

          v18 = v12 - 1;
          Shape::SortEdgesList(this, v4, 0, (v12 - 1));
          v6 = *(this + 3);
          v19 = v6 + 28 * v5;
          v20 = v4[4 * v12 - 4];
          *(v19 + 16) = *v4;
          *(v19 + 20) = v20;
          if (v12)
          {
            v21 = 0;
            v22 = v4;
            do
            {
              if (*(v22 + 4) == 1)
              {
                if (v21)
                {
                  v23 = *(v22 - 4);
                }

                else
                {
                  v23 = -1;
                }

                v25 = *(this + 5) + 32 * *v22;
                *(v25 + 20) = v23;
                if (v21 >= v18)
                {
                  *(v25 + 16) = -1;
                }

                else
                {
                  *(v25 + 16) = v22[4];
                }
              }

              else
              {
                if (v21)
                {
                  v24 = *(v22 - 4);
                }

                else
                {
                  v24 = -1;
                }

                v26 = *(this + 5) + 32 * *v22;
                *(v26 + 28) = v24;
                if (v21 >= v18)
                {
                  *(v26 + 24) = -1;
                }

                else
                {
                  *(v26 + 24) = v22[4];
                }
              }

              ++v21;
              v22 += 4;
            }

            while (v12 != v21);
          }
        }

        ++v5;
      }

      while (v5 < *(this + 4));
    }

    free(v4);
  }
}

Shape *Shape::SortEdgesList(Shape *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = result;
  if (a3 >= a4)
  {
    return result;
  }

  v5 = a3;
LABEL_3:
  if (v5 + 1 != a4)
  {
    v7 = ((v5 + a4) / 2);
    v8 = a2 + 16 * v7;
    v9 = *(v8 + 8);
    v10 = *(v8 + 12);
    v11 = v7 < a4;
    v12 = v5 < (v5 + a4) / 2;
    if (v5 >= (v5 + a4) / 2 && v7 >= a4)
    {
      LODWORD(v13) = (v5 + a4) / 2;
      goto LABEL_56;
    }

    v13 = ((v5 + a4) / 2);
    v14 = a4;
    v15 = v5;
    while (1)
    {
      if (!v12)
      {
        v18 = v7;
LABEL_22:
        if (v11)
        {
          goto LABEL_23;
        }

LABEL_37:
        v23 = v13;
        goto LABEL_41;
      }

      while (1)
      {
        v16 = (a2 + 16 * v15);
        result = Shape::CmpToVert(result, v9, v10, v16[2], v16[3]);
        if (result)
        {
          v17 = result < 1;
          if (result >= 1)
          {
            v15 = v15;
          }

          else
          {
            v15 = (v15 + 1);
          }

          v18 = v7;
          goto LABEL_16;
        }

        v18 = v7 - 1;
        if (v15 >= v18)
        {
          break;
        }

        v19 = *v16;
        *v16 = *(a2 + 16 * v18);
        *(a2 + 16 * v18) = *(a2 + 16 * v7);
        *(a2 + 16 * v7) = v19;
        v17 = 1;
LABEL_16:
        v20 = v17 && v15 < v18;
        v7 = v18;
        if (!v20)
        {
          goto LABEL_22;
        }
      }

      if (v15 == v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = v7;
      }

      if (!v11)
      {
        goto LABEL_37;
      }

LABEL_23:
      while (2)
      {
        v21 = (a2 + 16 * v14);
        result = Shape::CmpToVert(result, v9, v10, v21[2], v21[3]);
        if (result)
        {
          v22 = result >= 0;
          v14 = (v14 - v22);
          v23 = v13;
          goto LABEL_27;
        }

        v23 = v13 + 1;
        if (v14 > v23)
        {
          v24 = *v21;
          *v21 = *(a2 + 16 * v23);
          *(a2 + 16 * v23) = *(a2 + 16 * v13);
          *(a2 + 16 * v13) = v24;
          v22 = 1;
LABEL_27:
          v25 = !v22 || v14 <= v23;
          v13 = v23;
          if (v25)
          {
            goto LABEL_41;
          }

          continue;
        }

        break;
      }

      if (v14 == v23)
      {
        v23 = v23;
      }

      else
      {
        v23 = v13;
      }

LABEL_41:
      if (v15 >= v18)
      {
        v13 = v23 + 1;
        if (v14 > v13)
        {
          v27 = *(a2 + 16 * v13);
          *(a2 + 16 * v13) = *(a2 + 16 * v18);
          *(a2 + 16 * v18) = *(a2 + 16 * v14);
          *(a2 + 16 * v14) = v27;
          v7 = (v18 + 1);
          goto LABEL_52;
        }

        if (v14 == v13)
        {
          v29 = *(a2 + 16 * v18);
          *(a2 + 16 * v18) = *(a2 + 16 * v14);
          *(a2 + 16 * v14) = v29;
          v7 = (v18 + 1);
          v13 = v14;
          goto LABEL_52;
        }

        goto LABEL_55;
      }

      if (v14 <= v23)
      {
        v7 = v18 - 1;
        if (v15 < v7)
        {
          v28 = *(a2 + 16 * v7);
          *(a2 + 16 * v7) = *(a2 + 16 * v23);
          *(a2 + 16 * v23) = *(a2 + 16 * v15);
          *(a2 + 16 * v15) = v28;
          v13 = (v23 - 1);
          goto LABEL_52;
        }

        if (v15 == v7)
        {
          v30 = *(a2 + 16 * v23);
          *(a2 + 16 * v23) = *(a2 + 16 * v15);
          *(a2 + 16 * v15) = v30;
          v13 = (v23 - 1);
          v7 = v15;
          goto LABEL_52;
        }

LABEL_55:
        LODWORD(v13) = v23;
        LODWORD(v7) = v18;
        goto LABEL_56;
      }

      v26 = *(a2 + 16 * v15);
      *(a2 + 16 * v15) = *(a2 + 16 * v14);
      *(a2 + 16 * v14) = v26;
      v15 = (v15 + 1);
      v14 = (v14 - 1);
      v13 = v23;
      v7 = v18;
LABEL_52:
      v11 = v14 > v13;
      v12 = v15 < v7;
      if (v15 >= v7 && v14 <= v13)
      {
LABEL_56:
        result = Shape::SortEdgesList(v34, a2, v5, (v7 - 1));
        v5 = (v13 + 1);
        if (v5 >= a4)
        {
          return result;
        }

        goto LABEL_3;
      }
    }
  }

  v31 = (a2 + 16 * a4);
  v32 = (a2 + 16 * v5);
  result = Shape::CmpToVert(result, v31[2], v31[3], v32[2], v32[3]);
  if (result >= 1)
  {
    v33 = *v32;
    *v32 = *v31;
    *v31 = v33;
  }

  return result;
}

uint64_t Shape::CmpToVert(Shape *this, float a2, float a3, float a4, float a5)
{
  if (a2 >= 0.0)
  {
    if (a3 > 0.0)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    if (a3 >= 0.0)
    {
      v6 = v7;
    }

    else
    {
      v6 = 1;
    }

    if (a3 <= 0.0)
    {
      v8 = -1;
    }

    else
    {
      v8 = 4;
    }

    if (a3 < 0.0)
    {
      v8 = 0;
    }

    if (a2 <= 0.0)
    {
      v6 = v8;
    }
  }

  else
  {
    if (a3 > 0.0)
    {
      v5 = 5;
    }

    else
    {
      v5 = 6;
    }

    if (a3 >= 0.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 7;
    }
  }

  if (a5 > 0.0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  if (a5 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 <= 0.0)
  {
    v11 = -1;
  }

  else
  {
    v11 = 4;
  }

  if (a5 < 0.0)
  {
    v11 = 0;
  }

  if (a4 <= 0.0)
  {
    v10 = v11;
  }

  if (a5 > 0.0)
  {
    v12 = 5;
  }

  else
  {
    v12 = 6;
  }

  if (a5 >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 7;
  }

  if (a4 < 0.0)
  {
    v10 = v13;
  }

  if (v6 < v10)
  {
    return 1;
  }

  if (v6 > v10)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = (a2 * a5) - (a3 * a4);
  if (v15 < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v15 > 0.0;
  }
}

BOOL Shape::Eulerian(Shape *this, char a2)
{
  v2 = *(this + 4);
  if (a2)
  {
    if (v2 >= 1)
    {
      v3 = v2 - 1;
      v4 = (*(this + 3) + 12);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v7 = v3-- != 0;
        v8 = v7;
        result = v5 == v6;
        if (v5 != v6)
        {
          break;
        }

        v4 += 7;
      }

      while ((v8 & 1) != 0);
      return result;
    }

    return 1;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v10 = v2 - 1;
  v11 = (*(this + 3) + 12);
  do
  {
    v12 = (*v11 + *(v11 - 1)) & 0x80000001;
    v7 = v10-- != 0;
    v13 = v7;
    result = v12 != 1;
    if (v12 == 1)
    {
      break;
    }

    v11 += 7;
  }

  while ((v13 & 1) != 0);
  return result;
}

int32x2_t Shape::Inverse(Shape *this, int a2)
{
  v2 = *(this + 5) + 32 * a2;
  v3 = *(v2 + 8);
  v4 = *(v2 + 12);
  *(v2 + 8) = v4;
  *(v2 + 12) = v3;
  *(v2 + 16) = vextq_s8(*(v2 + 16), *(v2 + 16), 8uLL);
  result = vneg_f32(*v2);
  *v2 = result;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = (*(this + 3) + 28 * v4);
    result = vadd_s32(v6[1], 0x1FFFFFFFFLL);
    v6[1] = result;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v7 = (*(this + 3) + 28 * v3);
    result = vadd_s32(v7[1], 0xFFFFFFFF00000001);
    v7[1] = result;
  }

  v8 = *(this + 13);
  if ((v8 & 8) != 0)
  {
    *(*(this + 7) + (a2 << 6)) = -*(*(this + 7) + (a2 << 6));
    if ((v8 & 0x20) == 0)
    {
LABEL_7:
      if ((v8 & 0x200) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_7;
  }

  v9 = (*(this + 9) + 32 * a2);
  result = vrev64_s32(v9[2]);
  v9[2] = result;
  if ((v8 & 0x200) == 0)
  {
LABEL_8:
    if ((v8 & 0x400) == 0)
    {
      return result;
    }

LABEL_13:
    v11 = *(this + 14);
    v12 = 40 * a2;
    result = vrev64_s32(*(v11 + v12));
    *(v11 + v12) = result;
    return result;
  }

LABEL_12:
  v10 = (*(this + 12) + 16 * a2);
  result = vrev64_s32(v10[1]);
  v10[1] = result;
  if ((v8 & 0x400) != 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t Shape::CalcBBox(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 <= 0)
  {
    *this = 0;
    *(this + 8) = 0;
  }

  else
  {
    v2 = *(this + 24);
    v3 = *v2;
    *&v4 = *v2;
    *(&v4 + 1) = *v2;
    *this = v4;
    if (v1 != 1)
    {
      v5 = *(&v3 + 1);
      v6 = (v2 + 4);
      v7 = v1 - 1;
      v8 = *(&v3 + 1);
      v9 = *&v3;
      do
      {
        v10 = *(v6 - 1);
        if (v10 < v9)
        {
          *this = v10;
          v9 = v10;
        }

        if (v10 > *&v3)
        {
          *(this + 8) = v10;
          *&v3 = v10;
        }

        v11 = *v6;
        if (*v6 < v8)
        {
          *(this + 4) = v11;
          v8 = v11;
        }

        if (v11 > v5)
        {
          *(this + 12) = v11;
          v5 = v11;
        }

        v6 += 7;
        --v7;
      }

      while (v7);
    }
  }

  return this;
}

id sub_2767AD2B8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v37 = a5;
  v11 = a6;
  v13 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v9, v12, v11, &stru_28857D120);
  v14 = objc_alloc(MEMORY[0x277CCAB48]);
  v36 = v10;
  v16 = objc_msgSend_initWithString_attributes_(v14, v15, v13, v10);
  v18 = objc_msgSend_escapedPatternForString_(MEMORY[0x277CCAC68], v17, v11);
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%@.*?%@", v18, v18);
  v22 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x277CCAC68], v21, v20, 8, 0);
  v25 = objc_msgSend_length(v11, v23, v24);
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  v28 = objc_msgSend_length(v9, v26, v27);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2767AD4E8;
  v38[3] = &unk_27A6CDDE0;
  v41 = v43;
  v42 = 2 * v25;
  v29 = v16;
  v39 = v29;
  v30 = v37;
  v40 = v30;
  objc_msgSend_enumerateMatchesInString_options_range_usingBlock_(v22, v31, v9, 0, 0, v28, v38);
  v34 = objc_msgSend_copy(v29, v32, v33);

  _Block_object_dispose(v43, 8);

  return v34;
}

void sub_2767AD4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2767AD4E8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_range(a2, a2, a3);
  result = objc_msgSend_setAttributes_range_(*(a1 + 32), v5, *(a1 + 40), v4 - *(a1 + 56) * *(*(*(a1 + 48) + 8) + 24), &v5[-*(a1 + 56)]);
  ++*(*(*(a1 + 48) + 8) + 24);
  return result;
}

BOOL sub_2767AD540(void *a1, const char *a2, uint64_t a3)
{
  v10 = 0;
  v11 = objc_msgSend_length(a1, a2, a3);
  if (!v11)
  {
    return 0;
  }

  v5 = objc_msgSend_attributesAtIndex_effectiveRange_(a1, v4, 0, &v10);
  v7 = objc_msgSend_valueForKey_(v5, v6, @"PreservesTextLabelTextColor", v10, v11);
  v8 = v7 != 0;

  return v8;
}

void sub_2767AE760(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = objc_msgSend_layoutForInfo_(a2, a2, *(a1 + 32));
  (*(v2 + 16))(v2, v3);
}

void sub_2767AE890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2767AE8A8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_pureGeometry(a2, a2, a3);
  v7 = v4;
  if (v4)
  {
    objc_msgSend_fullTransform(v4, v5, v6);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  v8 = *(*(a1 + 32) + 8);
  v8[2] = v10;
  v8[3] = v11;
  v8[4] = v12;

  return result;
}

void sub_2767B0C18(uint64_t a1, const char *a2)
{
  v5[7] = *MEMORY[0x277D85DE8];
  v4[0] = @"All at Once";
  v4[1] = @"By Paragraph";
  v5[0] = &unk_28859C628;
  v5[1] = &unk_28859C640;
  v4[2] = @"By Paragraph Group";
  v4[3] = @"By Highlighted Paragraph";
  v5[2] = &unk_28859C658;
  v5[3] = &unk_28859C670;
  v4[4] = @"By Bullet";
  v4[5] = @"By Bullet Group";
  v5[4] = &unk_28859C640;
  v5[5] = &unk_28859C658;
  v4[6] = @"By Highlighted Bullet";
  v5[6] = &unk_28859C670;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 7);
  v3 = qword_280A4CA98;
  qword_280A4CA98 = v2;
}

uint64_t sub_2767B1348(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_minimumSize(a2, a2, a3);
  v5 = v4;
  v7 = v6;
  v10 = objc_msgSend_geometry(*(a1 + 32), v8, v9);
  objc_msgSend_size(v10, v11, v12);
  v14 = v13;
  v16 = v15;

  result = objc_msgSend_size(*(a1 + 40), v17, v18);
  if (v5 > 0.0 && v7 > 0.0 && v14 > 0.0 && v16 > 0.0 && (v20 < v5 || v21 < v7))
  {
    TSUFitOrFillSizeInSize();
    v25 = *(a1 + 40);

    return objc_msgSend_setSize_(v25, v23, v24);
  }

  return result;
}

void sub_2767B1514(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v4 = qword_280A4CAA0;
  qword_280A4CAA0 = v3;
}

CGMutablePathRef sub_2767B1C04(int a1, int a2, double a3, double a4, double a5, double a6, long double a7, double a8, double a9)
{
  v16 = (a3 - a8) * 0.5;
  v17 = (a4 - a9) * 0.5;
  angle = fmod(a7, 360.0) * 3.14159265 / 180.0;
  v18 = __sincos_stret(angle);
  v19 = v18.__sinval * v17 + v18.__cosval * v16;
  v20 = v18.__cosval * v17 - v18.__sinval * v16;
  v21 = fabs(a5);
  v22 = fabs(a6);
  v23 = a5 * a5;
  v24 = a6 * a6;
  v25 = v19 * v19 / (a5 * a5) + v20 * v20 / (a6 * a6);
  if (v25 > 1.0)
  {
    v26 = sqrt(v25);
    v21 = v21 * v26;
    v22 = v22 * v26;
    v23 = v21 * v21;
    v24 = v22 * v22;
  }

  v27 = (v23 * v24 - v23 * (v20 * v20) - v24 * (v19 * v19)) / (v19 * v19 * v24 + v23 * (v20 * v20));
  if (v27 < 0.0)
  {
    v27 = 0.0;
  }

  v28 = sqrt(v27);
  if (a1 == a2)
  {
    v28 = -v28;
  }

  v29 = v20 * v21 / v22 * v28;
  v30 = -(v22 * v19) / v21 * v28;
  v40 = (a4 + a9) * 0.5 + v18.__cosval * v30 + v18.__sinval * v29;
  v42 = (a3 + a8) * 0.5 + v30 * -v18.__sinval + v18.__cosval * v29;
  v31 = (v20 - v30) / v22;
  v32 = (-v19 - v29) / v21;
  v33 = (-v20 - v30) / v22;
  v34 = acos((v19 - v29) / v21 / sqrt(v31 * v31 + (v19 - v29) / v21 * ((v19 - v29) / v21)));
  if (v31 < 0.0)
  {
    v34 = -v34;
  }

  v35 = v34 * 180.0 / 3.14159265;
  v36 = acos(v32 / sqrt(v33 * v33 + v32 * v32));
  if (v33 < 0.0)
  {
    v36 = -v36;
  }

  fmod(v36 * 180.0 / 3.14159265, 360.0);
  fmod(v35, 360.0);
  Mutable = CGPathCreateMutable();
  v38 = *(MEMORY[0x277CBF2C0] + 16);
  *&v46.a = *MEMORY[0x277CBF2C0];
  *&v46.c = v38;
  *&v46.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v45.a = *&v46.a;
  *&v45.c = v38;
  *&v45.tx = *&v46.tx;
  CGAffineTransformTranslate(&v46, &v45, v42, v40);
  v44 = v46;
  CGAffineTransformRotate(&v45, &v44, angle);
  v46 = v45;
  v44 = v45;
  CGAffineTransformScale(&v45, &v44, 1.0, v22 / v21);
  v46 = v45;
  v44 = v45;
  CGAffineTransformTranslate(&v45, &v44, -v42, -v40);
  v46 = v45;
  CGPathAddArcSafe();
  return Mutable;
}

CGPath *sub_2767B1F28(const CGPath *a1, const CGPath *a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  MutableCopy = CGPathCreateMutableCopy(a1);
  if (a3 < a4)
  {
    do
    {
      v8 = sub_276667988(a2, a3, &v10);
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          CGPathAddCurveToPointSafe();
        }

        else if (v8 == 4)
        {
          CGPathCloseSubpath(MutableCopy);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          CGPathAddLineToPointSafe();
        }
      }

      else
      {
        CGPathMoveToPointSafe();
      }

      ++a3;
    }

    while (a4 != a3);
  }

  return MutableCopy;
}

CGMutablePathRef sub_2767B2030()
{
  Mutable = CGPathCreateMutable();
  CGPathAddPathSafe();
  return Mutable;
}

uint64_t sub_2767B2074(double *a1, double a2, double a3, double a4, double a5)
{
  v5 = (a3 - a2) * 3.0;
  v6 = -(v5 - (a4 - a3) * 3.0);
  v7 = a5 - v6 - v5 - a2;
  v8 = v7 * 3.0;
  v9 = v5 * (v7 * 3.0);
  v10 = 0.0;
  if (vabdd_f64(v6 * v6, v9) > (v6 * v6 + fabs(v9)) * 0.0001)
  {
    v10 = v6 * v6 - v9;
  }

  if (v10 < 0.0)
  {
    return 0;
  }

  v12 = sqrt(v10);
  v13 = -1.0;
  if (v6 < 0.0)
  {
    v13 = 1.0;
  }

  v14 = -(v6 - v13 * v12);
  v15 = v8 * 0.0001;
  if (v14 < v8 * 0.9999 && v7 > 0.0 && v15 < v14 || (v11 = 0, v14 < v15) && v7 < 0.0 && v8 * 0.9999 < v14)
  {
    *a1 = v14 / v8;
    v11 = 1;
  }

  v16 = v14 * 0.0001;
  if (v5 < v14 * 0.9999 && (v14 > 0.0 ? (v17 = v16 < v5) : (v17 = 0), v17) || v5 < v16 && (v14 < 0.0 ? (v18 = v14 * 0.9999 < v5) : (v18 = 0), v18))
  {
    a1[v11++] = v5 / v14;
  }

  return v11;
}

void sub_2767B2184(CGPathRef path, const char *a2, int a3, double a4, double a5)
{
  if (a4 < 0.0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGRect TSDPathBoundsIncludingStrokeWithParameters(CGPathRef, CGFloat, CGFloat, CGLineCap, CGLineJoin)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/CGPathAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 697, 0, "lineWidth should not be negative.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v11, v12);
    if (!CGPathIsEmpty(path))
    {
      goto LABEL_7;
    }

LABEL_5:
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "CGRect TSDPathBoundsIncludingStrokeWithParameters(CGPathRef, CGFloat, CGFloat, CGLineCap, CGLineJoin)");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/CGPathAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 702, 0, "Can not calculate the stroked bounds of an empty path.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v23, v24);
    return;
  }

  v15 = a2;
  if (CGPathIsEmpty(path))
  {
    goto LABEL_5;
  }

  if (a4 == 0.0)
  {
LABEL_7:
    CGPathGetPathBoundingBox(path);
    return;
  }

  CGPathGetCurrentPoint(path);
  TSURectWithOriginAndSize();
  v63 = 0u;
  v64 = 0;
  v62 = 0u;
  v61 = 0u;
  v25 = a4 * 0.5;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v50 = 0u;
  v49 = 0u;
  v51 = *MEMORY[0x277CBF348];
  v30 = v51;
  v50 = v51;
  v47 = v26;
  v48 = v25;
  info = v27;
  v45 = v28;
  v46 = v29;
  LODWORD(v49) = a3;
  *(&v49 + 1) = a5;
  CGPathApply(path, &info, sub_2767B2438);
  if (v15)
  {
    v34 = 0;
    v43 = 0;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v32 = v30;
    v33 = v30;
    v31[3] = v47;
    *&v31[4] = v25;
    v31[0] = info;
    v31[1] = v45;
    v31[2] = v46;
    v31[5] = v15;
    CGPathApply(path, v31, sub_2767B25E8);
    sub_2767B27A8(v31);
  }
}

void sub_2767B2438(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if ((*a2 - 1) >= 3)
  {
    if (v4 == 4)
    {
      if (*(a1 + 88))
      {
        TSUDistanceSquared();
        if (v14 > 0.00000001)
        {
          v17 = a1 + 56;
          v16 = 1;
          sub_2767B2F34(a1, &v16);
        }

        v15 = *(a1 + 232);
        v17 = a1 + 240;
        v16 = v15;
        sub_2767B2F34(a1, &v16);
      }

      *(a1 + 88) = 0;
      v13 = *(a1 + 56);
    }

    else
    {
      if (v4)
      {
        return;
      }

      *(a1 + 88) = 0;
      v12 = *(a2 + 8);
      *(a1 + 56) = *v12;
      v13 = *v12;
    }

    *(a1 + 72) = v13;
  }

  else
  {
    if (*(a1 + 88))
    {
      goto LABEL_8;
    }

    v5 = 0;
    *(a1 + 232) = v4;
    v6 = dword_27682D108[v4];
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 16 * v6;
    do
    {
      *(a1 + 240 + v5) = *(*(a2 + 8) + v5);
      v5 += 16;
    }

    while (v7 != v5);
    v4 = *a2;
    if (*a2 != 4)
    {
LABEL_8:
      v8 = dword_27682D108[v4];
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      for (i = *(a2 + 8) + 8; ; i += 16)
      {
        TSUDistanceSquared();
        if (v11 > 0.00000001)
        {
          break;
        }

        if (!--v9)
        {
          return;
        }
      }

      sub_2767B2F34(a1, a2);
    }
  }
}

void sub_2767B25E8(uint64_t a1, int *a2)
{
  v4 = *a2;
  if ((*a2 - 1) >= 3)
  {
    if (v4 == 4)
    {
      *(a1 + 80) = 0;
      *(a1 + 64) = *(a1 + 48);
    }

    else if (!v4)
    {
      sub_2767B27A8(a1);
      *(a1 + 80) = 0;
      v10 = *(a2 + 1);
      *(a1 + 64) = *v10;
      *(a1 + 48) = *v10;
    }
  }

  else
  {
    v5 = (a1 + 64);
    *(a1 + 81) = 1;
    v6 = dword_27682D108[v4];
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    for (i = *(a2 + 1) + 8; ; i += 16)
    {
      TSUDistanceSquared();
      if (v9 > 0.00000001)
      {
        break;
      }

      if (!--v7)
      {
        return;
      }
    }

    if ((*(a1 + 80) & 1) == 0)
    {
      *(a1 + 80) = 1;
      *(a1 + 84) = v4;
      *(a1 + 88) = *v5;
      v11 = *a2;
      if (v11 == 4)
      {
        v4 = 4;
      }

      else
      {
        v12 = 0;
        v13 = dword_27682D108[v11];
        if (v13 <= 1)
        {
          v13 = 1;
        }

        v14 = 16 * v13;
        do
        {
          *(a1 + 104 + v12) = *(*(a2 + 1) + v12);
          v12 += 16;
        }

        while (v14 != v12);
        v4 = *a2;
      }
    }

    *(a1 + 152) = v4;
    *(a1 + 160) = *v5;
    v15 = *a2;
    v16 = dword_27682D108[v15];
    if (v15 != 4)
    {
      v17 = 0;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v18 = 16 * v16;
      do
      {
        *(a1 + 176 + v17) = *(*(a2 + 1) + v17);
        v17 += 16;
      }

      while (v18 != v17);
      v16 = dword_27682D108[*a2];
    }

    *v5 = *(*(a2 + 1) + 16 * v16 - 16);
  }
}

void sub_2767B27A8(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 40);
    if (v2 == 1)
    {
      TSURectWithCenterAndSize();
      v48.origin.x = v13;
      v48.origin.y = v14;
      v48.size.width = v15;
      v48.size.height = v16;
      v47 = CGRectUnion(*a1, v48);
      x = v47.origin.x;
      y = v47.origin.y;
      width = v47.size.width;
      height = v47.size.height;
      *a1 = v47;
      TSURectWithCenterAndSize();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = x;
      v30 = y;
      v31 = width;
      v32 = height;
LABEL_21:
      *&v39 = CGRectUnion(*&v29, *&v22);
      goto LABEL_22;
    }

    if (v2 != 2)
    {
      return;
    }

    v3 = sub_2767B35E0(*(a1 + 84), a1 + 88).f64[0];
    v5 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
    if (v3 == *MEMORY[0x277CBF348] && v4 == v6)
    {
      TSURectWithCenterAndSize();
      v49.origin.x = v33;
      v49.origin.y = v34;
      v49.size.width = v35;
      v49.size.height = v36;
      *&v8 = CGRectUnion(*a1, v49);
    }

    else
    {
      TSUMultiplyPointScalar();
      TSUSubtractPoints();
      TSURotatePoint90Degrees();
      TSUAddPoints();
      TSUGrowRectToPoint();
      TSUSubtractPoints();
      TSUGrowRectToPoint();
    }

    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    if (sub_2767B35E0(*(a1 + 152), a1 + 160).f64[0] != v5 || v37 != v6)
    {
      TSUMultiplyPointScalar();
      TSUAddPoints();
      TSURotatePoint90Degrees();
      TSUAddPoints();
      TSUGrowRectToPoint();
      TSUSubtractPoints();
      TSUGrowRectToPoint();
LABEL_22:
      *a1 = v39;
      *(a1 + 8) = v40;
      *(a1 + 16) = v41;
      *(a1 + 24) = v42;
      return;
    }

LABEL_20:
    TSURectWithCenterAndSize();
    v22 = v43;
    v24 = v44;
    v26 = v45;
    v28 = v46;
    v29 = *a1;
    v30 = *(a1 + 8);
    v31 = *(a1 + 16);
    v32 = *(a1 + 24);
    goto LABEL_21;
  }

  if (*(a1 + 81) == 1)
  {
    v12 = *(a1 + 40);
    if (v12 == 1 || v12 == 2)
    {
      goto LABEL_20;
    }
  }
}

const CGPath *sub_2767B2B48(const CGPath *a1, unint64_t a2, double a3)
{
  v22 = *MEMORY[0x277D85DE8];
  Mutable = CGPathCreateMutable();
  v7 = sub_2766678EC(a1);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v19 = *(MEMORY[0x277CBF348] + 8);
    v20 = *MEMORY[0x277CBF348];
    do
    {
      v10 = sub_276667988(a1, v9, &v21);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          TSURandom();
          TSURandom();
          CGPathAddCurveToPointSafe();
        }

        else if (v10 == 4)
        {
          *&v21 = v20;
          *(&v21 + 1) = v19;
          v11 = 1;
LABEL_10:
          v12 = 0;
          v13 = a2;
          do
          {
            CGPathGetCurrentPoint(Mutable);
            TSUSubtractPoints();
            if (v13)
            {
              TSURandom();
            }

            TSURandom();
            TSURandom();
            CGPathAddLineToPointSafe();
            ++v12;
            --v13;
          }

          while (v12 <= a2);
          if (v11)
          {
            CGPathCloseSubpath(Mutable);
          }
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          v11 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        v14 = v21;
        TSURandom();
        v16 = *&v14 + (v15 + -0.5) * a3;
        TSURandom();
        v19 = *(&v14 + 1) + (v17 + -0.5) * a3;
        v20 = v16;
        CGPathMoveToPointSafe();
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return Mutable;
}

void sub_2767B2D8C(const CGPath *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      info[0] = a2;
      info[1] = a3;
      v4 = *MEMORY[0x277CBF348];
      v5 = v4;
      v6 = 0;
      CGPathApply(a1, info, sub_2767B2DE8);
    }
  }
}

void sub_2767B2DE8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if ((*a2 - 1) >= 3)
  {
    if (v3 == 4)
    {
      if (*(a1 + 48))
      {
        TSUDistanceSquared();
        if (v6 > 0.00000001)
        {
          v7[1] = a1 + 16;
          v7[0] = 1;
          sub_2767B37E8(a1, v7);
        }
      }

      *(a1 + 48) = 0;
      v5 = *(a1 + 16);
    }

    else
    {
      if (v3)
      {
        return;
      }

      *(a1 + 48) = 0;
      v4 = *(a2 + 8);
      *(a1 + 16) = *v4;
      v5 = *v4;
    }

    *(a1 + 32) = v5;
  }

  else
  {

    sub_2767B37E8(a1, a2);
  }
}

const CGPath *sub_2767B2EB8(const CGPath *result)
{
  v1 = 0;
  if (result)
  {
    info[0] = &v1;
    info[1] = sub_2767B2F24;
    v3 = *MEMORY[0x277CBF348];
    v4 = v3;
    v5 = 0;
    CGPathApply(result, info, sub_2767B2DE8);
    return v1;
  }

  return result;
}

void sub_2767B2F34(uint64_t a1, int *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = *(a1 + 160);
    *(a1 + 92) = v5;
    memmove((a1 + 96), (a1 + 168), 16 * (dword_27682D108[v5] & ~(dword_27682D108[v5] >> 31)) + 16);
  }

  v6 = *a2;
  *(a1 + 160) = *a2;
  *(a1 + 168) = *(a1 + 72);
  v7 = *a2;
  v8 = dword_27682D108[v7];
  if (v7 != 4)
  {
    v9 = 0;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v10 = 16 * v8;
    do
    {
      *(a1 + 184 + v9) = *(*(a2 + 1) + v9);
      v9 += 16;
    }

    while (v10 != v9);
    v8 = dword_27682D108[*a2];
  }

  *(a1 + 72) = *(*(a2 + 1) + 16 * v8 - 16);
  *(a1 + 88) = v4 + 1;
  if (v6 == 1)
  {
    sub_2767B33D0(a1, 1, (a1 + 168), 0.0);
    sub_2767B33D0(a1, 1, (a1 + 168), 1.0);
  }

  v11 = *(a1 + 160);
  if ((v11 & 0xFFFFFFFE) == 2)
  {
    v13 = *(a1 + 168);
    v12 = *(a1 + 176);
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    v17 = *(a1 + 184);
    v16 = *(a1 + 192);
    if (v11 == 3)
    {
      v19 = *(a1 + 200);
      v18 = *(a1 + 208);
    }

    else
    {
      v19 = v17 + (v15 - v17) / 3.0;
      v17 = v13 + (v17 - v13 + v17 - v13) / 3.0;
      v18 = v16 + (v14 - v16) / 3.0;
      v16 = v12 + (v16 - v12 + v16 - v12) / 3.0;
    }

    sub_2767B33D0(a1, v11, (a1 + 168), 0.0);
    sub_2767B33D0(a1, *(a1 + 160), (a1 + 168), 1.0);
    v56 = 0;
    v57 = 0;
    v20 = sub_2767B2074(&v56, v13, v17, v19, v15);
    if (v20)
    {
      v21 = v20;
      v22 = &v56;
      do
      {
        v23 = *v22++;
        sub_2767B33D0(a1, *(a1 + 160), (a1 + 168), v23);
        --v21;
      }

      while (v21);
    }

    v56 = 0;
    v57 = 0;
    v24 = sub_2767B2074(&v56, v12, v16, v18, v14);
    if (v24)
    {
      v25 = v24;
      v26 = &v56;
      do
      {
        v27 = *v26++;
        sub_2767B33D0(a1, *(a1 + 160), (a1 + 168), v27);
        --v25;
      }

      while (v25);
    }
  }

  v28 = *(a1 + 40);
  if (v28 != 2 && *(a1 + 88) >= 2u)
  {
    if (v28 == 1)
    {
      TSURectWithCenterAndSize();
      v60.origin.x = v44;
      v60.origin.y = v45;
      v60.size.width = v46;
      v60.size.height = v47;
      *&v40 = CGRectUnion(*a1, v60);
LABEL_36:
      *a1 = v40;
      *(a1 + 8) = v41;
      *(a1 + 16) = v42;
      *(a1 + 24) = v43;
      return;
    }

    if (v28)
    {
      return;
    }

    v29 = sub_2767B35E0(*(a1 + 92), a1 + 96).f64[0];
    v31 = v30;
    *&v33 = *&sub_2767B35E0(*(a1 + 160), a1 + 168);
    v35 = v34;
    v36 = *(MEMORY[0x277CBF348] + 8);
    if ((v29 != *MEMORY[0x277CBF348] || v31 != v36) && (v33 != *MEMORY[0x277CBF348] || v35 != v36))
    {
      TSUSubtractPoints();
      TSUNormalizePoint();
      TSUCrossPoints();
      if (-1.0 / v39 * (-1.0 / v39) >= *(a1 + 48) * *(a1 + 48))
      {
        return;
      }

      TSUMultiplyPointScalar();
      TSUAddPoints();
      TSUGrowRectToPoint();
      TSUSubtractPoints();
      TSUGrowRectToPoint();
      goto LABEL_36;
    }

    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "void TSDPathBoundsApplierProcessSegment(TSDPathBoundsApplierState *, const CGPathElement *)");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/CGPathAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 480, 0, "Couldn't get a gradient for this join, but this should have been caught upstream by skipping no-op segments.");

    v55 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v55, v53, v54);
  }
}

void sub_2767B33D0(void *a1, const char *a2, float64x2_t *a3, double a4)
{
  switch(a2)
  {
    case 3:
      TSDPointOnCurve(a3, a4);
      goto LABEL_7;
    case 2:
      sub_276667300(a3, a4);
LABEL_7:
      if (sub_2767B35E0(a2, a3).f64[0] != *MEMORY[0x277CBF348] || v7 != *(MEMORY[0x277CBF348] + 8))
      {
        TSURotatePoint90Degrees();
        TSUMultiplyPointScalar();
        TSUAddPoints();
        TSUGrowRectToPoint();
        TSUSubtractPoints();
        TSUGrowRectToPoint();
        *a1 = v9;
        a1[1] = v10;
        a1[2] = v11;
        a1[3] = v12;
      }

      return;
    case 1:
      goto LABEL_7;
  }

  v13 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSDGrowPathBoundsAtTFromTypeAndPoints(TSDPathBoundsApplierState *, CGFloat, CGPathElementType, CGPoint *)");
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/CGPathAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 373, 0, "Invalid element type %d", a2);

  v20 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v20, v18, v19);
}

float64x2_t sub_2767B35E0(int a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBF348];
  if (a1 <= 1)
  {
    if (!a1)
    {
      v19 = MEMORY[0x277D81150];
      v27 = *MEMORY[0x277CBF348];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGPoint gradientAtTFromTypeAndPoints(CGFloat, CGPathElementType, CGPoint *)");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/CGPathAdditions.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 217, 0, "path gradient can't handle moveTo element");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
      v3 = v27;
      result = v27;
      goto LABEL_13;
    }

    result = *MEMORY[0x277CBF348];
    if (a1 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (a1 == 2)
  {
    v26 = *MEMORY[0x277CBF348];
    TSUClamp();
    v7 = v6;
    v8 = vmlaq_n_f64(vmulq_n_f64(vaddq_f64(*(a2 + 16), *(a2 + 16)), v6 * -2.0 + 1.0), vaddq_f64(*a2, *a2), v6 + -1.0);
    v9 = vaddq_f64(*(a2 + 32), *(a2 + 32));
LABEL_11:
    result = vmlaq_n_f64(v8, v9, v7);
    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v26 = *MEMORY[0x277CBF348];
    TSUClamp();
    v7 = v10;
    __asm
    {
      FMOV            V4.2D, #-3.0
      FMOV            V5.2D, #3.0
    }

    v8 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_f64(*(a2 + 16), _Q5), v10 * -4.0 + 1.0 + v7 * 3.0 * v7), vmulq_n_f64(vmulq_f64(*a2, _Q4), v10 + -1.0), v10 + -1.0), vmulq_n_f64(vmulq_f64(*(a2 + 32), _Q5), v7), v10 * -3.0 + 2.0);
    v9 = vmulq_n_f64(vmulq_f64(*(a2 + 48), _Q5), v7);
    goto LABEL_11;
  }

  result = *MEMORY[0x277CBF348];
  if (a1 == 4)
  {
LABEL_8:
    v26 = *MEMORY[0x277CBF348];
    TSUSubtractPoints();
    *&result.f64[1] = v5;
LABEL_12:
    v3 = v26;
  }

LABEL_13:
  v17 = vmovn_s64(vceqq_f64(result, v3));
  if ((v17.i32[0] & v17.i32[1] & 1) == 0)
  {
    TSUNormalizePoint();
    *&result.f64[1] = v18;
  }

  return result;
}

__n128 sub_2767B37E8(uint64_t a1, unsigned int *a2)
{
  v12[7] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v4 = *a2;
  if (*a2 != 4)
  {
    LODWORD(v5) = dword_27682D108[v4];
    v6 = *(a2 + 1);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v5;
    }

    v7 = v12;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v10[1] = &v11;
  v10[0] = v4;
  (*(a1 + 8))(*a1, v10);
  result = *(*(a2 + 1) + 16 * dword_27682D108[*a2] - 16);
  *(a1 + 32) = result;
  ++*(a1 + 48);
  return result;
}

void Shape::ConvertToForme(Shape *this, Path *a2)
{
  if (*(this + 4) >= 2 && *(this + 8) >= 2 && Shape::Eulerian(this, 1))
  {
    Path::Reset(a2);
    Path::SetWeighted(a2, 0);
    Shape::MakePointData(this, 1);
    Shape::MakeEdgeData(this, 1);
    Shape::MakeSweepDestData(this, 1);
    v4 = *(this + 4);
    if (v4 >= 1)
    {
      v5 = (*(this + 3) + 4);
      v6 = (*(this + 11) + 40);
      do
      {
        v7 = ldexpf(*(v5 - 1), 5);
        *(v6 - 1) = ldexpf(roundf(v7), -5);
        v8 = *v5;
        v5 += 7;
        v9 = ldexpf(v8, 5);
        *v6 = ldexpf(roundf(v9), -5);
        v6 += 12;
        --v4;
      }

      while (v4);
    }

    v10 = *(this + 8);
    if (v10 >= 1)
    {
      v11 = *(this + 11);
      v12 = (*(this + 5) + 12);
      v13 = (*(this + 7) + 4);
      do
      {
        *v13 = vsub_f32(*(v11 + 48 * *v12 + 36), *(v11 + 48 * *(v12 - 1) + 36));
        v13 += 8;
        v12 += 8;
        --v10;
      }

      while (v10);
    }

    Shape::SortEdges(this);
    v14 = *(this + 8);
    if (v14 >= 1)
    {
      v15 = (*(this + 9) + 8);
      do
      {
        *(v15 - 1) = 0;
        *v15 = -1;
        v15 += 4;
        --v14;
      }

      while (v14);
    }

    v38 = 0;
    v16 = 0;
    v17 = *(this + 4);
    while (1)
    {
      if (v16 >= v17)
      {
        goto LABEL_20;
      }

      v18 = *(this + 3);
      v19 = v16 << 32;
      v20 = (v18 + 28 * v16 + 16);
      while (1)
      {
        v22 = *v20;
        v20 += 7;
        v21 = v22;
        if ((v22 & 0x80000000) == 0 && !*(*(this + 9) + 32 * v21))
        {
          break;
        }

        v19 += 0x100000000;
        LODWORD(v16) = v16 + 1;
        if (v17 == v16)
        {
          LODWORD(v16) = v17;
          goto LABEL_20;
        }
      }

      v23 = *(v18 + 28 * SHIDWORD(v19) + 16);
      if ((v23 & 0x80000000) == 0)
      {
        break;
      }

LABEL_20:
      v16 = (v16 + 1);
      if (v16 >= v17)
      {
        Shape::MakePointData(this, 0);
        Shape::MakeEdgeData(this, 0);

        Shape::MakeSweepDestData(this, 0);
        return;
      }
    }

    while (1)
    {
      v24 = (*(this + 5) + 32 * v23);
      if (v24[2] == v16)
      {
        break;
      }

      if (v24[3] == v16)
      {
        v23 = v24[6];
        if ((v23 & 0x80000000) == 0)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    v25 = (v18 + 28 * v24[3]);
    Path::MoveTo(a2, *v25, v25[1]);
    v26 = (*(this + 9) + 32 * v23);
    *v26 = 1;
    v26[1] = -1;
LABEL_28:
    v27 = 0;
    v28 = v23;
LABEL_29:
    v29 = *(this + 5);
    v30 = *(v29 + 32 * v28 + 12);
    LODWORD(v31) = v28;
    while (1)
    {
      v32 = (v29 + 32 * v31);
      if (v32[2] != v30)
      {
        break;
      }

      v23 = v32[4];
      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_32;
      }

LABEL_33:
      v33 = v23 == v31;
      if (v23 == v31)
      {
        v31 = 0xFFFFFFFFLL;
      }

      else
      {
        v31 = v23;
      }

      if (v33 || (v23 & 0x80000000) != 0 || v23 == v28 || !*(*(this + 9) + 32 * v31) && *(v29 + 32 * v31 + 8) == v30)
      {
        if ((v31 & 0x80000000) == 0 && v31 != v28)
        {
          v34 = *(this + 3);
          if (v27)
          {
            Path::MoveTo(a2, *(v34 + 28 * v30), *(v34 + 28 * v30 + 4));
            v34 = *(this + 3);
            v29 = *(this + 5);
          }

          v35 = *(this + 9);
          v36 = v35 + 32 * v31;
          *v36 = 1;
          *(v36 + 24) = v38;
          *(v36 + 12) = v28;
          *(v35 + 32 * v28 + 8) = v31;
          v37 = (v34 + 28 * *(v29 + 32 * v31 + 12));
          Path::LineTo(a2, *v37, v37[1]);
          ++v38;
          goto LABEL_28;
        }

LABEL_47:
        if ((v27 & 1) == 0)
        {
          Path::Close(a2);
        }

        v28 = *(*(this + 9) + 32 * v28 + 12);
        v27 = 1;
        if ((v28 & 0x80000000) != 0)
        {
          v17 = *(this + 4);
          goto LABEL_20;
        }

        goto LABEL_29;
      }
    }

    if (v32[3] != v30)
    {
      goto LABEL_47;
    }

    v23 = v32[6];
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    v23 = *(*(this + 3) + 28 * v30 + 16);
    goto LABEL_33;
  }
}

void Shape::ConvertToForme(Shape *this, Path *a2, int a3, Path **a4)
{
  if (*(this + 4) < 2 || *(this + 8) < 2 || !Shape::Eulerian(this, 1))
  {
    return;
  }

  if ((*(this + 53) & 2) == 0)
  {

    Shape::ConvertToForme(this, a2);
    return;
  }

  Path::Reset(a2);
  v39 = a2;
  Path::SetWeighted(a2, 0);
  Shape::MakePointData(this, 1);
  Shape::MakeEdgeData(this, 1);
  Shape::MakeSweepDestData(this, 1);
  v6 = *(this + 4);
  if (v6 >= 1)
  {
    v7 = (*(this + 3) + 4);
    v8 = (*(this + 11) + 40);
    do
    {
      v9 = ldexpf(*(v7 - 1), 5);
      *(v8 - 1) = ldexpf(roundf(v9), -5);
      v10 = *v7;
      v7 += 7;
      v11 = ldexpf(v10, 5);
      *v8 = ldexpf(roundf(v11), -5);
      v8 += 12;
      --v6;
    }

    while (v6);
  }

  v12 = *(this + 8);
  if (v12 >= 1)
  {
    v13 = *(this + 11);
    v14 = (*(this + 5) + 12);
    v15 = (*(this + 7) + 4);
    do
    {
      *v15 = vsub_f32(*(v13 + 48 * *v14 + 36), *(v13 + 48 * *(v14 - 1) + 36));
      v15 += 8;
      v14 += 8;
      --v12;
    }

    while (v12);
  }

  Shape::SortEdges(this);
  v16 = *(this + 8);
  if (v16 >= 1)
  {
    v17 = (*(this + 9) + 8);
    do
    {
      *(v17 - 1) = 0;
      *v17 = -1;
      v17 += 4;
      --v16;
    }

    while (v16);
  }

  v18 = 0;
  v19 = 0;
  v20 = *(this + 4);
  do
  {
    if (v19 >= v20)
    {
      goto LABEL_25;
    }

    v21 = *(this + 3);
    v22 = v19 << 32;
    v23 = (v21 + 28 * v19 + 16);
    while (1)
    {
      v25 = *v23;
      v23 += 7;
      v24 = v25;
      if ((v25 & 0x80000000) == 0)
      {
        v26 = *(this + 9);
        if (!*(v26 + 32 * v24))
        {
          break;
        }
      }

      v22 += 0x100000000;
      LODWORD(v19) = v19 + 1;
      if (v20 == v19)
      {
        LODWORD(v19) = v20;
        goto LABEL_25;
      }
    }

    v27 = *(v21 + 28 * SHIDWORD(v22) + 16);
    if ((v27 & 0x80000000) == 0)
    {
      v28 = *(this + 5);
      while (1)
      {
        v29 = (v28 + 32 * v27);
        if (v29[2] == v19)
        {
          break;
        }

        if (v29[3] == v19)
        {
          v27 = v29[6];
          if ((v27 & 0x80000000) == 0)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      v30 = 0;
      v31 = (v26 + 32 * v27);
      *v31 = 1;
      v31[1] = -1;
      v32 = v27;
      v40 = v19;
LABEL_34:
      v33 = *(v28 + 32 * v32 + 12);
      LODWORD(v34) = v32;
      while (1)
      {
        v35 = (v28 + 32 * v34);
        if (v35[2] != v33)
        {
          break;
        }

        v36 = v35[4];
        if ((v36 & 0x80000000) != 0)
        {
          goto LABEL_37;
        }

LABEL_38:
        v37 = v36 == v34;
        if (v36 == v34)
        {
          v34 = 0xFFFFFFFFLL;
        }

        else
        {
          v34 = v36;
        }

        if (v37 || (v36 & 0x80000000) != 0 || v36 == v32 || !*(v26 + 32 * v34) && *(v28 + 32 * v34 + 8) == v33)
        {
          if ((v34 & 0x80000000) == 0 && v34 != v32)
          {
            if (v30)
            {
              v40 = *(v28 + 32 * v34 + 8);
              goto LABEL_62;
            }

            if (v33 == v40)
            {
              *(v26 + 32 * v32 + 8) = -1;
              Shape::AddContour(this, v39, a3, a4, v27);
              v26 = *(this + 9);
LABEL_62:
              v27 = v36;
            }

            v30 = 0;
            v38 = v26 + 32 * v34;
            *v38 = 1;
            *(v38 + 24) = v18++;
            *(v38 + 12) = v32;
            *(v26 + 32 * v32 + 8) = v34;
LABEL_64:
            v28 = *(this + 5);
            v32 = v36;
            goto LABEL_34;
          }

LABEL_54:
          if ((v30 & 1) == 0 && v32 != v27 && (v32 & 0x80000000) == 0)
          {
            *(v26 + 32 * v32 + 8) = -1;
            Shape::AddContour(this, v39, a3, a4, v27);
            v26 = *(this + 9);
          }

          v36 = *(v26 + 32 * v32 + 12);
          if ((v36 & 0x80000000) == 0)
          {
            v30 = 1;
            goto LABEL_64;
          }

          v20 = *(this + 4);
          goto LABEL_25;
        }
      }

      if (v35[3] != v33)
      {
        goto LABEL_54;
      }

      v36 = v35[6];
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

LABEL_37:
      v36 = *(*(this + 3) + 28 * v33 + 16);
      goto LABEL_38;
    }

LABEL_25:
    v19 = (v19 + 1);
  }

  while (v19 < v20);
  Shape::MakePointData(this, 0);
  Shape::MakeEdgeData(this, 0);

  Shape::MakeSweepDestData(this, 0);
}

uint64_t Shape::AddContour(Shape *this, Path *a2, int a3, Path **a4, signed int a5)
{
  v5 = a5;
  v10 = (*(this + 3) + 28 * *(*(this + 5) + 32 * a5 + 8));
  Path::MoveTo(a2, *v10, v10[1]);
  while ((v5 & 0x80000000) == 0)
  {
    while (1)
    {
      v12 = (*(this + 12) + 16 * v5);
      v13 = *v12;
      if ((*v12 & 0x80000000) == 0 && v13 < a3)
      {
        v14 = a4[v13];
        if (v14)
        {
          v15 = v12[1];
          if ((v15 & 0x80000000) == 0 && v15 < v14->var2)
          {
            break;
          }
        }
      }

      v20 = (*(this + 3) + 28 * *(*(this + 5) + 32 * v5 + 12));
      Path::LineTo(a2, *v20, v20[1]);
      v5 = *(*(this + 9) + 32 * v5 + 8);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_32;
      }
    }

    v16 = (v14->var3 + 44 * v15);
    v17 = *v16 & 0xF;
    if ((*v16 & 0xD) != 5 && v17 != 0)
    {
      if ((*v16 & 0xFu) <= 2)
      {
        if (v17 == 1)
        {
          goto LABEL_26;
        }

        if (v17 == 2)
        {
          v21 = Shape::ReFormeCubicTo(this, v5, v11, a2, v14);
          goto LABEL_28;
        }
      }

      else
      {
        switch(v17)
        {
          case 3:
            if (v16[4])
            {
LABEL_25:
              v21 = Shape::ReFormeBezierTo(this, v5, v11, a2, v14);
            }

            else
            {
LABEL_26:
              v21 = Shape::ReFormeLineTo(this, v5, v11, a2, v14);
            }

LABEL_28:
            v5 = v21;
            if ((v21 & 0x80000000) != 0)
            {
              goto LABEL_32;
            }

            goto LABEL_29;
          case 4:
            v21 = Shape::ReFormeArcTo(this, v5, v11, a2, v14);
            goto LABEL_28;
          case 6:
            goto LABEL_25;
        }
      }
    }

    v19 = (*(this + 3) + 28 * *(*(this + 5) + 32 * v5 + 12));
    Path::LineTo(a2, *v19, v19[1]);
    v5 = *(*(this + 9) + 32 * v5 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

LABEL_29:
    v22 = *(this + 3) + 28 * *(*(this + 5) + 32 * v5 + 8);
    if (*(v22 + 12) + *(v22 + 8) >= 3)
    {
      Path::ForcePoint(a2);
    }
  }

LABEL_32:

  return Path::Close(a2);
}

uint64_t Shape::MakeOffset(uint64_t a1, uint64_t a2, int a3, float a4, float a5)
{
  Shape::Reset(a1, 0);
  Shape::MakeBackData(a1, 0);
  v10 = *(a2 + 16);
  if (a4 == 0.0)
  {
    *(a1 + 16) = v10;
    if (v10 > *(a1 + 20))
    {
      *(a1 + 20) = v10;
      v11 = malloc_type_realloc(*(a1 + 24), 28 * v10, 0x100004027586B93uLL);
      *(a1 + 24) = v11;
      if (!v11)
      {
        TSUSetCrashReporterInfo();
        v48 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "int Shape::MakeOffset(Shape *, float, JoinType, float)", "int Shape::MakeOffset(Shape *, float, JoinType, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm", 250);
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v50, v52, 250, 1, "Unable to allocate memory.");
        goto LABEL_57;
      }

      if ((*(a1 + 52) & 4) != 0)
      {
        v12 = malloc_type_realloc(*(a1 + 88), 48 * *(a1 + 20), 0x102004023ED6C3AuLL);
        *(a1 + 88) = v12;
        if (!v12)
        {
          TSUSetCrashReporterInfo();
          v58 = MEMORY[0x277D81150];
          v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "int Shape::MakeOffset(Shape *, float, JoinType, float)", "int Shape::MakeOffset(Shape *, float, JoinType, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm", 254);
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v61, v50, v52, 254, 1, "Unable to allocate memory.");
          goto LABEL_57;
        }
      }
    }

    memcpy(*(a1 + 24), *(a2 + 24), 28 * *(a1 + 16));
    v13 = *(a2 + 32);
    *(a1 + 32) = v13;
    if (v13 <= *(a1 + 36))
    {
LABEL_19:
      memcpy(*(a1 + 40), *(a2 + 40), 32 * *(a1 + 32));
      return 0;
    }

    *(a1 + 36) = v13;
    v14 = malloc_type_realloc(*(a1 + 40), 32 * v13, 0x1000040E0EAB150uLL);
    *(a1 + 40) = v14;
    if (!v14)
    {
      TSUSetCrashReporterInfo();
      v54 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "int Shape::MakeOffset(Shape *, float, JoinType, float)", "int Shape::MakeOffset(Shape *, float, JoinType, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm", 263);
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v57, v50, v52, 263, 1, "Unable to allocate memory.");
      goto LABEL_57;
    }

    v15 = *(a1 + 52);
    if ((v15 & 8) != 0)
    {
      v16 = malloc_type_realloc(*(a1 + 56), *(a1 + 36) << 6, 0x100004094D12286uLL);
      *(a1 + 56) = v16;
      if (!v16)
      {
        TSUSetCrashReporterInfo();
        v62 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "int Shape::MakeOffset(Shape *, float, JoinType, float)", "int Shape::MakeOffset(Shape *, float, JoinType, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm", 267);
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v65, v50, v52, 267, 1, "Unable to allocate memory.");
        goto LABEL_57;
      }

      v15 = *(a1 + 52);
    }

    if ((v15 & 0x10) != 0)
    {
      v17 = malloc_type_realloc(*(a1 + 64), 56 * *(a1 + 36), 0x10A0040A41B8C3EuLL);
      *(a1 + 64) = v17;
      if (!v17)
      {
        TSUSetCrashReporterInfo();
        v66 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "int Shape::MakeOffset(Shape *, float, JoinType, float)", "int Shape::MakeOffset(Shape *, float, JoinType, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm", 272);
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v69, v50, v52, 272, 1, "Unable to allocate memory.");
        goto LABEL_57;
      }

      v15 = *(a1 + 52);
    }

    if ((v15 & 0x20) != 0)
    {
      v18 = malloc_type_realloc(*(a1 + 72), 32 * *(a1 + 36), 0x1080040DCAC275BuLL);
      *(a1 + 72) = v18;
      if (!v18)
      {
        TSUSetCrashReporterInfo();
        v70 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "int Shape::MakeOffset(Shape *, float, JoinType, float)", "int Shape::MakeOffset(Shape *, float, JoinType, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm", 277);
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v73, v50, v52, 277, 1, "Unable to allocate memory.");
        goto LABEL_57;
      }

      v15 = *(a1 + 52);
    }

    if ((v15 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    v19 = malloc_type_realloc(*(a1 + 80), 48 * *(a1 + 36), 0x10200403C9B7522uLL);
    *(a1 + 80) = v19;
    if (v19)
    {
      goto LABEL_19;
    }

    TSUSetCrashReporterInfo();
    v74 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "int Shape::MakeOffset(Shape *, float, JoinType, float)", "int Shape::MakeOffset(Shape *, float, JoinType, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm", 282);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeMisc.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v77, v50, v52, 282, 1, "Unable to allocate memory.");
LABEL_57:

    TSUCrashBreakpoint();
    abort();
  }

  if (v10 >= 2 && *(a2 + 32) >= 2 && *(a2 + 48) == 1)
  {
    Shape::SortEdges(a2);
    Shape::MakeSweepDestData(a2, 1);
    Shape::MakeSweepSrcData(a2, 1);
    LODWORD(v21) = *(a2 + 32);
    if (v21 < 1)
    {
LABEL_40:
      if (a4 < 0.0 && *(a1 + 32) >= 1)
      {
        v45 = 0;
        do
        {
          Shape::Inverse(a1, v45++);
        }

        while (v45 < *(a1 + 32));
        LODWORD(v21) = *(a2 + 32);
      }

      if (v21 >= 1)
      {
        v46 = 0;
        v47 = 0;
        do
        {
          Shape::AddEdge(a1, *(*(a2 + 64) + v46 + 12), *(*(a2 + 64) + v46 + 16));
          ++v47;
          v46 += 56;
        }

        while (v47 < *(a2 + 32));
      }

      Shape::MakeSweepSrcData(a2, 0);
      Shape::MakeSweepDestData(a2, 0);
      return 0;
    }

    v22 = 0;
    v23 = 0;
    v24 = 12;
    while (1)
    {
      v25 = *(a2 + 40);
      v26 = (v25 + v22);
      v27 = *(v25 + v22 + 8);
      if (a4 <= 0.0)
      {
        v28 = v26[5];
        if (v28 < 0)
        {
          v29 = (*(a2 + 24) + 28 * v27 + 20);
          goto LABEL_31;
        }
      }

      else
      {
        v28 = v26[4];
        if (v28 < 0)
        {
          v29 = (*(a2 + 24) + 28 * v27 + 16);
LABEL_31:
          v28 = *v29;
        }
      }

      v30 = v28;
      v31 = (v25 + 32 * v28);
      v32 = *v31;
      v33 = v31[1];
      v34 = (v33 * v33) + (v32 * v32);
      v35 = sqrtf(v34);
      if (v34 > 0.0001)
      {
        v32 = v32 / v35;
        v33 = v33 / v35;
      }

      v36 = (v25 + v22);
      v37 = *v36;
      v38 = v36[1];
      v39 = (v38 * v38) + (v37 * v37);
      v40 = sqrtf(v39);
      if (v39 > 0.0001)
      {
        v37 = v37 / v40;
        v38 = v38 / v40;
      }

      v78 = 0;
      v41 = (*(a2 + 24) + 28 * v26[2]);
      v42 = *v41;
      v43 = v41[1];
      if (a4 <= 0.0)
      {
        sub_2767A8010(a1, a3, &v78 + 1, &v78, -a4, v42, v43, v32, v33, v37, v38, a5);
      }

      else
      {
        sub_2767A83F0(a1, a3, &v78 + 1, &v78, a4, v42, v43, v32, v33, v37, v38, a5);
      }

      v44 = *(a2 + 64);
      *(v44 + v24) = v78;
      *(v44 + 56 * v30 + 16) = HIDWORD(v78);
      ++v23;
      v21 = *(a2 + 32);
      v24 += 56;
      v22 += 32;
      if (v23 >= v21)
      {
        goto LABEL_40;
      }
    }
  }

  return 5;
}

uint64_t Shape::ReFormeLineTo(Shape *this, int a2, int a3, Path *a4, Path *a5)
{
  v5 = a2;
  v6 = *(this + 3);
  v7 = *(this + 5);
  v8 = *(this + 9);
  v9 = *(v8 + 32 * a2 + 8);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *(v7 + 32 * v9 + 8);
    if (*(v6 + 28 * v10 + 12) + *(v6 + 28 * v10 + 8) <= 2)
    {
      v13 = *(this + 12);
      v14 = (v13 + 16 * a2);
      v15 = (v14 + 3);
      do
      {
        if (*(v6 + 28 * v10 + 24) > 2)
        {
          break;
        }

        v16 = v9;
        v17 = v13 + 16 * v9;
        if (*(v17 + 4) != v14[1] || *v17 != *v14 || vabds_f32(*v15, *(v17 + 8)) > 0.0001)
        {
          break;
        }

        v9 = *(v8 + 32 * v9 + 8);
        if ((v9 & 0x80000000) != 0)
        {
          v5 = v16;
          break;
        }

        v15 = (v17 + 12);
        v10 = *(v7 + 32 * v9 + 8);
        v5 = v16;
      }

      while (*(v6 + 28 * v10 + 12) + *(v6 + 28 * v10 + 8) <= 2);
    }
  }

  v11 = (v6 + 28 * *(v7 + 32 * v5 + 12));
  Path::LineTo(a4, *v11, v11[1]);
  return v9;
}

uint64_t Shape::ReFormeArcTo(Shape *this, int a2, int a3, Path *a4, Path *a5)
{
  v7 = *(this + 12);
  v8 = a2;
  v9 = v7 + 16 * a2;
  v10 = *(v9 + 4);
  v11 = *(this + 3);
  v12 = *(this + 5);
  v13 = *(this + 9);
  v14 = *(v13 + 32 * a2 + 8);
  v15 = *(v9 + 12);
  if ((v14 & 0x80000000) == 0)
  {
    for (i = *(v12 + 32 * v14 + 8); *(v11 + 28 * i + 12) + *(v11 + 28 * i + 8) <= 2; v8 = v34)
    {
      if (*(v11 + 28 * i + 24) > 2)
      {
        break;
      }

      v34 = v14;
      v35 = v7 + 16 * v14;
      if (*(v35 + 4) != v10 || *v35 != *v9 || vabds_f32(v15, *(v35 + 8)) > 0.0001)
      {
        break;
      }

      v14 = *(v13 + 32 * v14 + 8);
      v15 = *(v35 + 12);
      if ((v14 & 0x80000000) != 0)
      {
        v8 = v34;
        break;
      }

      i = *(v12 + 32 * v14 + 8);
    }
  }

  v17 = *(v9 + 8);
  v18 = (v11 + 28 * *(v12 + 32 * v8 + 12));
  v20 = *v18;
  v19 = v18[1];
  v37 = 0;
  v21 = a5->var3 + 44 * v10;
  v22 = v21[36];
  v23 = v21[37];
  v36 = 0;
  Path::PrevPoint(a5, v10 - 1, &v36 + 1, &v36);
  v24 = (a5->var3 + 44 * v10);
  Path::ArcAngles(v22, *(&v36 + 1), *&v36, v24[4], v24[5], v24[6], v24[7], v24[8], v23, &v37 + 1, &v37, v25);
  v26 = *(&v37 + 1);
  if (v23 == 1)
  {
    if (*(&v37 + 1) >= *&v37)
    {
      goto LABEL_9;
    }

    v27 = *(&v37 + 1);
    v28 = 6.28318531;
  }

  else
  {
    if (*(&v37 + 1) <= *&v37)
    {
      goto LABEL_9;
    }

    v27 = *(&v37 + 1);
    v28 = -6.28318531;
  }

  v26 = v27 + v28;
  *(&v37 + 1) = v26;
LABEL_9:
  if (v17 > v15)
  {
    v29 = v23 ^ 1;
  }

  else
  {
    v29 = v23;
  }

  v30 = (v15 - v17) * (*&v37 - v26);
  v31 = -v30;
  if (v30 >= 0.0)
  {
    v31 = (v15 - v17) * (*&v37 - v26);
  }

  v32 = (a5->var3 + 44 * v10);
  Path::ArcTo(a4, v20, v19, v32[6], v32[7], v32[8], v31 > 3.14159265, v29);
  return v14;
}

uint64_t Shape::ReFormeCubicTo(Shape *this, int a2, int a3, Path *a4, Path *a5)
{
  v7 = *(this + 12);
  v8 = a2;
  v9 = (v7 + 16 * a2);
  v10 = *(v9 + 1);
  v11 = *(this + 3);
  v12 = *(this + 5);
  v13 = *(this + 9);
  v14 = v9[2];
  v15 = v9[3];
  v16 = *(v13 + 32 * a2 + 8);
  if ((v16 & 0x80000000) == 0)
  {
    v17 = *(v12 + 32 * v16 + 8);
    if (*(v11 + 28 * v17 + 12) + *(v11 + 28 * v17 + 8) <= 2)
    {
      v26 = *v9;
      do
      {
        if (*(v11 + 28 * v17 + 24) > 2)
        {
          break;
        }

        v27 = v16;
        v28 = v7 + 16 * v16;
        if (*(v28 + 4) != v10 || *v28 != LODWORD(v26) || vabds_f32(v15, *(v28 + 8)) > 0.0001)
        {
          break;
        }

        v15 = *(v28 + 12);
        v16 = *(v13 + 32 * v16 + 8);
        if ((v16 & 0x80000000) != 0)
        {
          v8 = v27;
          break;
        }

        v17 = *(v12 + 32 * v16 + 8);
        v8 = v27;
      }

      while (*(v11 + 28 * v17 + 12) + *(v11 + 28 * v17 + 8) <= 2);
    }
  }

  v18 = (v11 + 28 * *(v12 + 32 * v8 + 12));
  v20 = *v18;
  v19 = v18[1];
  v29.var3 = 0;
  Path::PrevPoint(a5, v10 - 1, &v29.var3 + 1, &v29.var3);
  *&v29.var0 = 0;
  *&v29.var2 = 0;
  v21 = (a5->var3 + 44 * v10);
  Path::CubicTangent((&v29.var2 + 1), v14, &v29.var2, v22, *(&v29.var3 + 1), *&v29.var3, v21[6], v21[7], v21[4], v21[5], v21[8], v21[9]);
  v23 = (a5->var3 + 44 * v10);
  Path::CubicTangent(&v29.var1, v15, &v29.var0, v24, *(&v29.var3 + 1), *&v29.var3, v23[6], v23[7], v23[4], v23[5], v23[8], v23[9]);
  Path::CubicTo(a4, v20, v19, (v15 - v14) * *(&v29.var2 + 1), (v15 - v14) * *&v29.var2, (v15 - v14) * *&v29.var1, (v15 - v14) * *&v29.var0);
  return v16;
}

uint64_t Shape::ReFormeBezierTo(Shape *this, int a2, int a3, Path *a4, Path *a5)
{
  v7 = *(this + 12);
  v8 = (v7 + 16 * a2);
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v10;
  v13 = v8[2];
  v12 = v8[3];
  v14 = *(this + 3);
  v15 = *(this + 5);
  v16 = v15 + 32 * a2;
  v17 = (v14 + 28 * *(v16 + 8));
  v19 = *v17;
  v18 = v17[1];
  v20 = (v14 + 28 * *(v16 + 12));
  v22 = *v20;
  v21 = v20[1];
  var3 = a5->var3;
  v24 = v10;
  v25 = v10;
  if ((*(var3 + 11 * v10) & 0xF) == 3)
  {
LABEL_6:
    v28 = *(var3 + 11 * v25 + 4);
    v29 = *(this + 9);
    v30 = *(v29 + 32 * a2 + 8);
    if ((v30 & 0x80000000) != 0 || (v31 = *(v15 + 32 * v30 + 8), *(v14 + 28 * v31 + 12) + *(v14 + 28 * v31 + 8) > 2))
    {
      v32 = v10;
    }

    else
    {
      v32 = v10;
      do
      {
        if (*(v14 + 28 * v31 + 24) > 2)
        {
          break;
        }

        v50 = v7 + 16 * v30;
        if (*v50 != LODWORD(v9))
        {
          break;
        }

        v51 = *(v50 + 4);
        if (v51 < v24 || v51 >= v28 + v24)
        {
          break;
        }

        v53 = *(v50 + 8);
        if (v51 == v32)
        {
          if (vabds_f32(v12, v53) > 0.0001)
          {
            break;
          }
        }

        else
        {
          v54 = v53;
          if (v54 > 0.0001 && v54 < 0.9999 || v12 > 0.0001 && v12 < 0.9999)
          {
            break;
          }
        }

        v55 = (v14 + 28 * *(v15 + 32 * v30 + 12));
        v22 = *v55;
        v21 = v55[1];
        v12 = *(v50 + 12);
        v30 = *(v29 + 32 * v30 + 8);
        if ((v30 & 0x80000000) != 0)
        {
          v32 = *(v50 + 4);
          break;
        }

        v31 = *(v15 + 32 * v30 + 8);
        v32 = v51;
      }

      while (*(v14 + 28 * v31 + 12) + *(v14 + 28 * v31 + 8) <= 2);
    }

    v75 = 0;
    Path::PrevPoint(a5, v24 - 1, &v75 + 1, &v75);
    v34 = v32 - v10;
    if (v32 == v10)
    {
      v35 = v19;
      v36 = v18;
      v37 = v22;
      v38 = v21;
      v39 = a4;
      v40 = v24;
      v41 = v28;
      v42 = a5;
      v43 = v10;
      v44 = v13;
LABEL_63:
      Shape::ReFormeBezierChunk(v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v12);
      return v30;
    }

    v45 = a5->var3;
    v46 = v13;
    v47 = v12;
    if (v32 <= v10)
    {
      if (v46 <= 0.9999)
      {
        v60 = v10 + 1;
        Shape::ReFormeBezierChunk(v33, v19, v18, (*(v45 + 11 * v60 + 4) + *(v45 + 11 * v10 + 4)) * 0.5, (*(v45 + 11 * v60 + 5) + *(v45 + 11 * v10 + 5)) * 0.5, a4, v24, v28, a5, v10, v13, 0.0);
        if (v47 < 0.0001)
        {
          Path::BezierTo(a4, v22, v21);
          v61 = v10 + 2;
          v62 = 44 * v60;
          do
          {
            Path::IntermBezierTo(a4, *(a5->var3 + v62 + 16), *(a5->var3 + v62 + 20));
            --v61;
            v62 -= 44;
          }

          while (v61 > v32);
          goto LABEL_48;
        }

        v72 = (a5->var3 + 44 * v32);
        v64 = (v72[15] + v72[26]) * 0.5;
        v65 = (v72[16] + v72[27]) * 0.5;
        Path::BezierTo(a4, v64, v65);
        v73 = 44 * v60;
        do
        {
          Path::IntermBezierTo(a4, *(a5->var3 + v73 + 16), *(a5->var3 + v73 + 20));
          --v60;
          v73 -= 44;
        }

        while (v60 > v32);
      }

      else
      {
        if (v47 < 0.0001)
        {
          Path::BezierTo(a4, v22, v21);
          v56 = v32;
          v57 = v10 + 1;
          v58 = 44 * v10;
          do
          {
            Path::IntermBezierTo(a4, *(a5->var3 + v58 + 60), *(a5->var3 + v58 + 64));
            --v57;
            v58 -= 44;
          }

          while (v57 > v56);
          goto LABEL_48;
        }

        v68 = (v45 + 44 * v32);
        v64 = (v68[15] + v68[26]) * 0.5;
        v65 = (v68[16] + v68[27]) * 0.5;
        Path::BezierTo(a4, v64, v65);
        if (v32 < v10)
        {
          v69 = 44 * v10;
          do
          {
            Path::IntermBezierTo(a4, *(a5->var3 + v69 + 60), *(a5->var3 + v69 + 64));
            --v11;
            v69 -= 44;
          }

          while (v11 > v32);
        }
      }

      v33 = Path::EndBezierTo(a4);
      v44 = 1.0;
    }

    else
    {
      if (v46 >= 0.0001)
      {
        Shape::ReFormeBezierChunk(v33, v19, v18, (*(v45 + 11 * v10 + 15) + *(v45 + 11 * v10 + 26)) * 0.5, (*(v45 + 11 * v10 + 16) + *(v45 + 11 * v10 + 27)) * 0.5, a4, v24, v28, a5, v10, v13, 1.0);
        if (v47 > 0.9999)
        {
          Path::BezierTo(a4, v22, v21);
          v59 = 44 * v10;
          do
          {
            Path::IntermBezierTo(a4, *(a5->var3 + v59 + 104), *(a5->var3 + v59 + 108));
            v59 += 44;
            --v34;
          }

          while (v34);
          goto LABEL_48;
        }

        v70 = (a5->var3 + 44 * v32);
        v64 = (v70[15] + v70[4]) * 0.5;
        v65 = (v70[16] + v70[5]) * 0.5;
        Path::BezierTo(a4, v64, v65);
        v71 = 44 * v10;
        do
        {
          Path::IntermBezierTo(a4, *(a5->var3 + v71 + 104), *(a5->var3 + v71 + 108));
          v71 += 44;
          --v34;
        }

        while (v34);
      }

      else
      {
        if (v47 > 0.9999)
        {
          Path::BezierTo(a4, v22, v21);
          v48 = v32 + 1 - v10;
          v49 = 44 * v10;
          do
          {
            Path::IntermBezierTo(a4, *(a5->var3 + v49 + 60), *(a5->var3 + v49 + 64));
            v49 += 44;
            --v48;
          }

          while (v48);
LABEL_48:
          Path::EndBezierTo(a4);
          return v30;
        }

        v63 = (v45 + 44 * v32);
        v64 = (v63[15] + v63[4]) * 0.5;
        v65 = (v63[16] + v63[5]) * 0.5;
        Path::BezierTo(a4, v64, v65);
        v66 = v32 - v10;
        v67 = 44 * v11;
        do
        {
          Path::IntermBezierTo(a4, *(a5->var3 + v67 + 60), *(a5->var3 + v67 + 64));
          v67 += 44;
          --v66;
        }

        while (v66);
      }

      v33 = Path::EndBezierTo(a4);
      v44 = 0.0;
    }

    v35 = v64;
    v36 = v65;
    v37 = v22;
    v38 = v21;
    v39 = a4;
    v40 = v24;
    v41 = v28;
    v42 = a5;
    v43 = v32;
    goto LABEL_63;
  }

  v26 = (var3 + 44 * v10 - 44);
  v25 = v10;
  while (v25 >= 2)
  {
    --v25;
    v27 = *v26;
    v26 -= 11;
    if ((v27 & 0xF) == 3)
    {
      v24 = v25;
      goto LABEL_6;
    }
  }

  v30 = *(*(this + 9) + 32 * a2 + 8);
  Path::LineTo(a4, v22, v21);
  return v30;
}

uint64_t Shape::ReFormeBezierChunk(Shape *this, float a2, float a3, float a4, float a5, Path *a6, int a7, int a8, Path *a9, int a10, float a11, float a12)
{
  *&v30.var2 = 0;
  Path::PrevPoint(a9, a7 - 1, &v30.var2 + 1, &v30.var2);
  var3 = a9->var3;
  v25 = *(var3 + 44 * a7 + 20);
  if (a10 == a7)
  {
    v26 = var3 + 44 * a7;
    v27 = *(v26 + 60);
    if (a8 < 2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a8 + a7 - 1 != a10)
  {
    v26 = var3 + 44 * a10;
    v27 = *(v26 + 60);
    *(&v30.var2 + 1) = (v27.f32[0] + *(v26 + 4)) * 0.5;
    *&v30.var2 = (v27.f32[1] + *(v26 + 5)) * 0.5;
LABEL_7:
    v25 = vmul_f32(vadd_f32(v27, *(v26 + 104)), 0x3F0000003F000000);
    goto LABEL_8;
  }

  v27 = *(var3 + 44 * a8 + 44 * a7 + 16);
  v28 = (var3 + 44 * a10);
  *(&v30.var2 + 1) = (v27.f32[0] + v28[4]) * 0.5;
  *&v30.var2 = (v27.f32[1] + v28[5]) * 0.5;
LABEL_8:
  *&v30.var0 = 0;
  Path::QuadraticPoint(&v30.var1, (a11 + a12) * 0.5, &v30.var0, v23, *(&v30.var2 + 1), *&v30.var2, v27.f32[0], v27.f32[1], v25.f32[0], v25.f32[1]);
  *&v30.var0 = ((a3 + a5) * -0.5) + (*&v30.var0 * 2.0);
  *&v30.var1 = ((a2 + a4) * -0.5) + (*&v30.var1 * 2.0);
  Path::BezierTo(a6, a4, a5);
  Path::IntermBezierTo(a6, *&v30.var1, *&v30.var0);
  return Path::EndBezierTo(a6);
}

void sub_2767B7E74(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_context(*(a1 + 32), a2, a3);
  v22 = objc_msgSend_documentObject(v4, v5, v6);

  objc_opt_class();
  v7 = TSUDynamicCast();
  v12 = objc_msgSend_annotationAuthorStorage(v7, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_author(*(a1 + 32), v10, v11);
    v15 = objc_msgSend_authorInStorageAddingAuthorIfNecessary_(v12, v14, v13);

    v18 = objc_msgSend_author(*(a1 + 32), v16, v17);

    if (v15 != v18)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v19, v20);
      objc_msgSend_setAuthor_(*(a1 + 32), v21, v15);
    }
  }
}

void sub_2767B7FC0(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  objc_msgSend_setReplies_(*(a1 + 32), a2, a2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = objc_msgSend_replies(*(a1 + 32), v3, v4, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v11, v15, 16);
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_setParent_(*(*(&v11 + 1) + 8 * v10++), v7, *(a1 + 32));
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v11, v15, 16);
    }

    while (v8);
  }
}

void sub_2767B80E4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_newObjectUUIDWithOffset_(*(a1 + 32), v4, 0);
  v6 = *(a1 + 32);
  v7 = *(v6 + 96);
  *(v6 + 96) = v5;
}

void sub_2767B8504(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_2767B8548(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_creationDate(a2, v5, v6);
  v10 = objc_msgSend_creationDate(v4, v8, v9);
  v12 = objc_msgSend_compare_(v7, v11, v10);

  return v12;
}

id sub_2767B8888(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_p_matchesCommentStorage_(v3, v4, *(a1 + 32)))
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_msgSend_context(*(a1 + 40), v5, v6);
    v7 = objc_msgSend_copyWithContext_(v3, v9, v8);

    objc_msgSend_setParent_(v7, v10, *(a1 + 48));
  }

  return v7;
}

id sub_2767B8ECC(uint64_t a1, void *a2)
{
  v3 = objc_msgSend_copyWithContext_(a2, a2, *(a1 + 32));
  objc_msgSend_setParent_(v3, v4, *(a1 + 40));

  return v3;
}

void sub_2767B9330(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276658138();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2767B9428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2767B974C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2767B9784(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2767B979C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (objc_msgSend_p_matchesCommentStorage_(v8, v7, *(a1 + 32)))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void Shape::ResetSweep(Shape *this)
{
  Shape::MakePointData(this, 1);
  Shape::MakeEdgeData(this, 1);

  Shape::MakeSweepSrcData(this, 1);
}

void Shape::CleanupSweep(Shape *this)
{
  Shape::MakePointData(this, 0);
  Shape::MakeEdgeData(this, 0);

  Shape::MakeSweepSrcData(this, 0);
}

uint64_t Shape::Reoriente(void **this, Shape *a2)
{
  Shape::Reset(this, 0);
  if (*(a2 + 4) < 2 || *(a2 + 8) < 2)
  {
    return 0;
  }

  if (!Shape::Eulerian(a2, 1))
  {
    return 5;
  }

  v4 = *(a2 + 4);
  *(this + 4) = v4;
  if (v4 > *(this + 5))
  {
    *(this + 5) = v4;
    v5 = reallocf(this[3], 28 * v4);
    this[3] = v5;
    if (!v5)
    {
      TSUSetCrashReporterInfo();
      v41 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "int Shape::Reoriente(Shape *)", "int Shape::Reoriente(Shape *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm", 50);
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v43, v45, 50, 1, "Unable to allocate memory.");
      goto LABEL_62;
    }

    if ((*(this + 52) & 4) != 0)
    {
      v6 = reallocf(this[11], 48 * *(this + 5));
      this[11] = v6;
      if (!v6)
      {
        TSUSetCrashReporterInfo();
        v51 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "int Shape::Reoriente(Shape *)", "int Shape::Reoriente(Shape *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm", 54);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v54, v43, v45, 54, 1, "Unable to allocate memory.");
        goto LABEL_62;
      }
    }
  }

  memcpy(this[3], *(a2 + 3), 28 * *(this + 4));
  v7 = *(a2 + 8);
  *(this + 8) = v7;
  if (v7 > *(this + 9))
  {
    *(this + 9) = v7;
    v8 = malloc_type_realloc(this[5], 32 * v7, 0x1000040E0EAB150uLL);
    this[5] = v8;
    if (!v8)
    {
      TSUSetCrashReporterInfo();
      v47 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "int Shape::Reoriente(Shape *)", "int Shape::Reoriente(Shape *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm", 63);
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v50, v43, v45, 63, 1, "Unable to allocate memory.");
      goto LABEL_62;
    }

    v9 = *(this + 13);
    if ((v9 & 8) != 0)
    {
      v10 = reallocf(this[7], *(this + 9) << 6);
      this[7] = v10;
      if (!v10)
      {
        TSUSetCrashReporterInfo();
        v55 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "int Shape::Reoriente(Shape *)", "int Shape::Reoriente(Shape *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm", 67);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v58, v43, v45, 67, 1, "Unable to allocate memory.");
        goto LABEL_62;
      }

      v9 = *(this + 13);
    }

    if ((v9 & 0x10) != 0)
    {
      v11 = reallocf(this[8], 56 * *(this + 9));
      this[8] = v11;
      if (!v11)
      {
        TSUSetCrashReporterInfo();
        v59 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "int Shape::Reoriente(Shape *)", "int Shape::Reoriente(Shape *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm", 72);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v62, v43, v45, 72, 1, "Unable to allocate memory.");
        goto LABEL_62;
      }

      v9 = *(this + 13);
    }

    if ((v9 & 0x20) != 0)
    {
      v12 = reallocf(this[9], 32 * *(this + 9));
      this[9] = v12;
      if (!v12)
      {
        TSUSetCrashReporterInfo();
        v63 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "int Shape::Reoriente(Shape *)", "int Shape::Reoriente(Shape *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm", 77);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v66, v43, v45, 77, 1, "Unable to allocate memory.");
        goto LABEL_62;
      }

      v9 = *(this + 13);
    }

    if ((v9 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    v13 = reallocf(this[10], 48 * *(this + 9));
    this[10] = v13;
    if (v13)
    {
      goto LABEL_21;
    }

    TSUSetCrashReporterInfo();
    v67 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "int Shape::Reoriente(Shape *)", "int Shape::Reoriente(Shape *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm", 82);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v70, v43, v45, 82, 1, "Unable to allocate memory.");
LABEL_62:

    TSUCrashBreakpoint();
    abort();
  }

LABEL_21:
  memcpy(this[5], *(a2 + 5), 32 * *(this + 8));
  Shape::MakePointData(this, 1);
  Shape::MakeEdgeData(this, 1);
  Shape::MakeSweepDestData(this, 1);
  v14 = *(this + 4);
  if (v14 >= 1)
  {
    v15 = (this[11] + 40);
    v16 = (this[3] + 4);
    v17 = *(this + 4);
    do
    {
      *(v15 - 4) = 0xFFFFFFFF00000000;
      *(v15 - 6) = NAN;
      v18 = ldexpf(*(v16 - 1), 5);
      v19 = ldexpf(roundf(v18), -5);
      *(v15 - 1) = v19;
      v20 = ldexpf(*v16, 5);
      v21 = ldexpf(roundf(v20), -5);
      *v15 = v21;
      v15 += 12;
      *(v16 - 1) = v19;
      *v16 = v21;
      v16 += 7;
      --v17;
    }

    while (v17);
    v22 = this[3] + 12;
    do
    {
      v22[3] = *v22 + *(v22 - 1);
      v22 += 7;
      --v14;
    }

    while (v14);
  }

  v23 = *(a2 + 8);
  if (v23 >= 1)
  {
    v24 = this[11];
    v25 = (this[7] + 4);
    v26 = (this[5] + 12);
    do
    {
      v27 = vsub_f32(*&v24[48 * *v26 + 36], *&v24[48 * *(v26 - 1) + 36]);
      *v25 = v27;
      v25[-1].i32[1] = 1;
      *(v26 - 3) = v27;
      v25 += 8;
      v26 += 8;
      --v23;
    }

    while (v23);
  }

  Shape::SortPointsRounded(this);
  Shape::SetFlag(this, 2, 1);
  Shape::GetWindings(this, v28, v29, v30, 1);
  if (*(this + 8) >= 1)
  {
    for (i = 0; i < *(this + 8); ++i)
    {
      v32 = this[9] + 32 * i;
      v34 = *(v32 + 16);
      v33 = (v32 + 16);
      v35 = v34 & 1;
      if (v34 >= 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = -v35;
      }

      *v33 = v36;
      v37 = v33 + 1;
      if (v33[1] >= 0)
      {
        v38 = v33[1] & 1;
      }

      else
      {
        v38 = -(v33[1] & 1);
      }

      *v37 = v38;
      if (v36 < 0)
      {
        *v33 = -v36;
        v36 = 1;
        if ((v38 & 0x80000000) == 0)
        {
LABEL_39:
          if (v36)
          {
            goto LABEL_40;
          }

          goto LABEL_44;
        }
      }

      else if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      *v37 = -v38;
      v38 = 1;
      if (v36)
      {
LABEL_40:
        v39 = this[7];
        if (v38)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

LABEL_44:
      if (!v38)
      {
        v39 = this[7];
LABEL_48:
        v39[16 * i] = 0;
        Shape::SubEdge(this, i--);
        continue;
      }

      Shape::Inverse(this, i);
      v39 = this[7];
LABEL_46:
      v39[16 * i] = 1;
    }
  }

  Shape::MakePointData(this, 0);
  Shape::MakeEdgeData(this, 0);
  Shape::MakeSweepDestData(this, 0);
  if (Shape::Eulerian(this, 1))
  {
    result = 0;
    *(this + 12) = 1;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 4) = 0;
    return 4;
  }

  return result;
}

void Shape::GetWindings(Shape *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    v7 = (*(this + 9) + 8);
    do
    {
      *(v7 - 1) = 0;
      *v7 = -1;
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  Shape::SortEdges(this);
  v50 = 0;
  v8 = 0;
  v9 = *(this + 4);
  do
  {
    if (v8 >= v9)
    {
      goto LABEL_62;
    }

    v10 = *(this + 3);
    v11 = v8 << 32;
    v12 = (v10 + 28 * v8 + 16);
    v8 = v8;
    while (1)
    {
      v14 = *v12;
      v12 += 7;
      v13 = v14;
      if ((v14 & 0x80000000) == 0 && !*(*(this + 9) + 32 * v13))
      {
        break;
      }

      ++v8;
      v11 += 0x100000000;
      if (v9 == v8)
      {
        LODWORD(v8) = v9;
        goto LABEL_62;
      }
    }

    v15 = v11 >> 32;
    v16 = v10 + 28 * SHIDWORD(v11);
    v17 = *(v16 + 16);
    if ((v17 & 0x80000000) == 0)
    {
      if (v8)
      {
        if (a5)
        {
          v18 = Shape::Winding(this, *v16, *(v16 + 4));
        }

        else
        {
          v18 = Shape::Winding(this, v8);
        }

        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = *(this + 5);
      if (*(v16 + 12) + *(v16 + 8) == 1)
      {
        v21 = v20 + 32 * v17;
        if (*(v21 + 12) == v8)
        {
          if (*(*(this + 7) + (v17 << 6)))
          {
            *(*(this + 11) + 48 * *(v21 + 8) + 32) = *(*(this + 11) + 48 * v15 + 32);
          }

          else
          {
            Shape::Inverse(this, v17);
            v20 = *(this + 5);
          }
        }
      }

      v22 = *(this + 7);
      v23 = *(v22 + (v17 << 6));
      if (*(v20 + 32 * v17 + 12) == v8)
      {
        v24 = *(v22 + (v17 << 6));
      }

      else
      {
        v24 = 0;
      }

      v25 = v19 + v24;
      v26 = *(this + 9);
      v27 = v26 + 32 * v17;
      v28 = 1;
      *v27 = 1;
      *(v27 + 16) = v25;
      *(v27 + 20) = v25 - v23;
      *(v27 + 8) = -1;
LABEL_27:
      LODWORD(v29) = v17;
LABEL_28:
      if (v28)
      {
        v30 = 12;
      }

      else
      {
        v30 = 8;
      }

      v31 = *(v20 + 32 * v29 + v30);
      LODWORD(v17) = v29;
      while (1)
      {
        v32 = v17;
        v33 = (v20 + 32 * v17);
        v34 = v33[2];
        v35 = v26 + 32 * v17;
        if (v33[3] == v31)
        {
          break;
        }

        v36 = *(v35 + 16);
        if (v34 == v31)
        {
          goto LABEL_37;
        }

        LODWORD(v17) = -1;
LABEL_40:
        if (v17 == v32)
        {
          goto LABEL_50;
        }

        v37 = v17 < 0 || v17 == v29;
        v38 = v37;
        if (v37)
        {
          goto LABEL_50;
        }

        if (!*(v26 + 32 * v17))
        {
          if (!v38)
          {
            v42 = v26 + 32 * v17;
            *v42 = 1;
            v43 = v20 + 32 * v17;
            v44 = *(v22 + (v17 << 6));
            v46 = *(v43 + 8);
            v45 = *(v43 + 12);
            v47 = v31 == v46;
            if (v31 == v46)
            {
              v48 = 0;
            }

            else
            {
              v48 = *(v22 + (v17 << 6));
            }

            if (!v47)
            {
              v44 = 0;
            }

            *(v42 + 20) = v36 - v48;
            *(v42 + 24) = v50;
            *(v42 + 12) = v29;
            *(v42 + 16) = v36 + v44;
            *(v26 + 32 * v29 + 8) = v17;
            v28 = v31 != v45;
            ++v50;
            goto LABEL_27;
          }

LABEL_50:
          v39 = v29;
          v29 = *(v26 + 32 * v29 + 12);
          if ((v29 & 0x80000000) == 0)
          {
            v40 = v20 + 32 * v39;
            if (v28)
            {
              v41 = 8;
            }

            else
            {
              v41 = 12;
            }

            v28 = *(v40 + v41) == *(v20 + 32 * v29 + 12);
            goto LABEL_28;
          }

          v9 = *(this + 4);
          goto LABEL_62;
        }
      }

      v36 = *(v35 + 20);
      if (v34 == v31)
      {
LABEL_37:
        LODWORD(v17) = v33[5];
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        LODWORD(v17) = v33[7];
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_40;
        }
      }

      LODWORD(v17) = *(*(this + 3) + 28 * v31 + 20);
      goto LABEL_40;
    }

LABEL_62:
    v8 = (v8 + 1);
  }

  while (v8 < v9);
}

uint64_t Shape::ConvertToShape(uint64_t a1, uint64_t a2, int a3, char a4)
{
  Shape::Reset(a1, 0);
  if (*(a2 + 16) < 2 || *(a2 + 32) < 2)
  {
    return 0;
  }

  if (!Shape::Eulerian(a2, 1))
  {
    return 5;
  }

  Shape::ResetSweep(a2);
  if (!Shape::GetFlag(a1, 64))
  {
    sub_2767C4540(a1 + 168, *(a2 + 32));
    sub_2767C3E8C(a1 + 192, *(a2 + 32));
    Shape::SetFlag(a1, 64, 1);
  }

  v243 = a3;
  v244 = a4;
  Shape::MakePointData(a1, 1);
  Shape::MakeEdgeData(a1, 1);
  Shape::MakeSweepSrcData(a1, 1);
  Shape::MakeSweepDestData(a1, 1);
  Shape::MakeBackData(a1, (*(a2 + 52) >> 9) & 1);
  v8 = *(a2 + 88);
  if (v8)
  {
    v9 = *(a2 + 16);
    if (v9 >= 1)
    {
      v10 = (v8 + 40);
      v11 = (*(a2 + 24) + 4);
      while (1)
      {
        *(v10 - 4) = 0xFFFFFFFF00000000;
        *(v10 - 6) = NAN;
        v12 = ldexpf(*(v11 - 1), 5);
        v13 = ldexpf(roundf(v12), -5);
        *(v10 - 1) = v13;
        v14 = v13;
        v15 = ldexpf(*v11, 5);
        v16 = ldexpf(roundf(v15), -5);
        *v10 = v16;
        if ((LODWORD(v14) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v16) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          break;
        }

        v10 += 12;
        v11 += 7;
        if (!--v9)
        {
          goto LABEL_18;
        }
      }

      puts("attempting to convert a path that has NaNs or infinite values. bailing.");
      return 5;
    }
  }

  else
  {
    puts("attempting to convert a path that has no pData. bailing.");
  }

LABEL_18:
  v19 = *(a2 + 32);
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = *(a2 + 88);
    v22 = *(a2 + 64);
    v23 = 56 * v19;
    v24 = *(a2 + 56) + 32;
    v25 = (*(a2 + 40) + 12);
    do
    {
      v26 = vsub_f32(*(v21 + 48 * *v25 + 36), *(v21 + 48 * *(v25 - 1) + 36));
      *(v24 - 28) = v26;
      v27 = (COERCE_FLOAT(vmul_f32(v26, v26).i32[1]) + (v26.f32[0] * v26.f32[0]));
      v28 = sqrt(v27);
      *(v24 - 16) = v27;
      *(v24 - 8) = v28;
      *v24 = 1.0 / v27;
      *(v24 + 8) = 1.0 / v28;
      v29 = vmulq_n_f64(vcvtq_f64_f32(v26), 1.0 / v28);
      v30 = *&v29.i64[1];
      v31 = vextq_s8(v29, v29, 8uLL);
      *(v24 + 16) = v31;
      if (v30 < 0.0)
      {
        *(v24 + 16) = vnegq_f64(v31);
      }

      v32 = v22 + v20;
      *v32 = 0;
      v25 += 8;
      *(v32 + 16) = -1;
      *(v32 + 8) = -1;
      *(v32 + 24) = -1;
      *(v32 + 32) = 0;
      *(v32 + 40) = -1;
      v20 += 56;
      v24 += 64;
      *(v32 + 48) = -1;
    }

    while (v23 != v20);
  }

  Shape::SortPointsRounded(a2);
  v33 = 0;
  v252 = 0;
  *(a1 + 136) = 0;
  v245 = (a1 + 136);
  *(a1 + 144) = 0;
  v34 = *(*(a2 + 88) + 40) + -1.0;
  v258[0] = -1;
  *(a1 + 152) = 0;
  v257 = 0;
  *(a1 + 160) = 0;
  v249 = a2;
  while (v33 < *(a2 + 16) || *(a1 + 192) >= 1)
  {
    v255 = 0;
    v256 = 0;
    v253 = 0;
    v254 = 0;
    v35 = sub_2767C4404(&v254, &v253, &v256 + 1, &v256, &v255 + 1, &v255, a1 + 192);
    v36 = *(a2 + 88);
    if (!v35)
    {
      goto LABEL_32;
    }

    v37 = v36 + 48 * v33;
    if (*(v37 + 8) > 0 || (v38 = *(v37 + 40), v38 > *&v256))
    {
LABEL_31:
      sub_2767C4474(&v254, &v253, &v256 + 1, &v256, &v255 + 1, &v255, a1 + 192);
      a2 = 0;
      v39 = *(&v256 + 1);
      LODWORD(v40) = v256;
      v41 = 1;
      v251 = v33;
      v33 = -1;
      goto LABEL_36;
    }

    if (v38 == *&v256)
    {
      v39 = *(v37 + 36);
      if (v39 > *(&v256 + 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_32:
      v39 = *(v36 + 48 * v33 + 36);
    }

    v251 = v33 + 1;
    v40 = *(v36 + 48 * v33 + 40);
    v256 = __PAIR64__(LODWORD(v39), LODWORD(v40));
    v42 = *(a2 + 24) + 28 * v33;
    if (!*(v42 + 8) && !*(v42 + 12))
    {
      goto LABEL_93;
    }

    v41 = 0;
LABEL_36:
    v43 = ldexpf(v39, 5);
    v44 = ldexpf(roundf(v43), -5);
    v45 = ldexpf(v40, 5);
    v46 = ldexpf(roundf(v45), -5);
    v47 = Shape::AddPoint(a1, v44, v46);
    v48 = v47;
    v49 = *(a1 + 88) + 48 * v47;
    *(v49 + 36) = v44;
    *(v49 + 40) = v46;
    if (v46 <= v34)
    {
      v72 = v47;
      if (v41)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v50 = Shape::AssemblePoints(a1, v252, v47);
      v52 = v50;
      if (v252 < v50)
      {
        v53 = v252;
        v54 = (*(a1 + 88) + 48 * v252 + 32);
        v55 = v50 - v252;
        do
        {
          v56 = *(v54 - 1);
          if (v56)
          {
            v57 = *(v56 + 64) + 56 * *v54;
            *(v54 - 4) = *(v57 + 8);
            *(v57 + 8) = v53;
          }

          ++v53;
          v54 += 12;
          --v55;
        }

        while (v55);
      }

      v58 = v257;
      if (v257)
      {
        v59 = *(a1 + 88);
        v60 = v258;
        do
        {
          v61 = *(v58 + 8) + 56 * *v60;
          v62 = *(v59 + 48 * *(v61 + 28) + 4);
          *(v61 + 24) = *(v59 + 48 * *(v61 + 24) + 4);
          *(v61 + 28) = v62;
          v60 = (v61 + 40);
          v58 = *(v61 + 32);
        }

        while (v58);
      }

      v63 = *v245;
      if (v63 >= 1)
      {
        v64 = *(a1 + 88);
        v65 = (*(a1 + 144) + 8);
        while (1)
        {
          v66 = *(v65 - 2);
          v67 = *(v64 + 48 * *(v65 - 1) + 4);
          *(v65 - 1) = v67;
          if (v66 == 1)
          {
            break;
          }

          if (!v66)
          {
            v68 = v65[2];
            v69 = *(*v65 + 40) + 32 * v68;
            v70 = *(*v65 + 64);
            if (*(v69 + 8) >= *(v69 + 12))
            {
              goto LABEL_52;
            }

LABEL_50:
            *(v70 + 56 * v68 + 12) = v67;
          }

LABEL_53:
          v65 += 18;
          if (!--v63)
          {
            goto LABEL_54;
          }
        }

        v68 = v65[2];
        v71 = *(*v65 + 40) + 32 * v68;
        v70 = *(*v65 + 64);
        if (*(v71 + 8) <= *(v71 + 12))
        {
LABEL_52:
          *(v70 + 56 * v68 + 16) = v67;
          goto LABEL_53;
        }

        goto LABEL_50;
      }

LABEL_54:
      Shape::CheckAdjacencies(a1, v50, v252, v51);
      Shape::CheckEdges(a1, v52, v252, v249, 0, 0);
      v72 = v52;
      if (v52 < v48)
      {
        v73 = *(a1 + 24);
        v74 = (v73 + 28 * v48);
        v75 = (v73 + 28 * v52);
        v76 = *v74;
        *(v75 + 12) = *(v74 + 12);
        *v75 = v76;
        v77 = *(a1 + 88);
        v78 = (v77 + 48 * v48);
        v79 = (v77 + 48 * v52);
        v80 = *v78;
        v81 = v78[2];
        v79[1] = v78[1];
        v79[2] = v81;
        *v79 = v80;
      }

      *(a1 + 16) = v52 + 1;
      *(a1 + 136) = 0;
      v258[0] = -1;
      v257 = 0;
      v252 = v52;
      v34 = v46;
      if (v41)
      {
LABEL_91:
        v99 = v72;
        sub_2767C48E0(v254, (a1 + 192), 1);
        sub_2767C48E0(v253, (a1 + 192), 0);
        Shape::AddChgt(a1, v99, v252, &v257, v258, 2, v254[8], *(v254 + 18), v253[8], *(v253 + 18));
        sub_2767C4EFC(v254);
        Shape::TesteIntersection(a1, v254, 1, 0, v100, v101, v102, v103, v104);
        Shape::TesteIntersection(a1, v253, 0, 0, v105, v106, v107, v108, v109);
LABEL_92:
        a2 = v249;
        goto LABEL_93;
      }
    }

    v82 = *(*(a2 + 24) + 28 * v33 + 16);
    if ((v82 & 0x80000000) != 0)
    {
      goto LABEL_92;
    }

    v83 = 0;
    v84 = 0;
    v85 = -1;
    v86 = -1;
    v87 = *(*(a2 + 24) + 28 * v33 + 16);
    do
    {
      if (v87 >= *(a2 + 32))
      {
        break;
      }

      v88 = *(a2 + 40) + 32 * v87;
      v89 = *(v88 + 8);
      v90 = *(v88 + 12);
      if ((v89 >= v90 || v33 != v90) && (v33 != v89 || v89 <= v90))
      {
        goto LABEL_78;
      }

      ++v84;
      v86 = v87;
      v93 = v33 == v89;
      v94 = v89 > v90;
      if (v89 >= v90)
      {
        v93 = 0;
      }

      if (v33 != v90)
      {
        v94 = 0;
      }

      v95 = v94 || v93;
      if (v95)
      {
        v85 = v87;
      }

LABEL_78:
      v83 += v95;
      if (v33 != v89 && v33 != v90)
      {
        break;
      }

      v97 = 24;
      if (v33 == v89)
      {
        v97 = 16;
      }

      v87 = *(v88 + v97);
    }

    while ((v87 & 0x80000000) == 0);
    v250 = v72;
    if (v83 <= 0)
    {
      if (v84 > 0)
      {
        v98 = -1;
LABEL_97:
        v247 = v98;
        while (2)
        {
          if (v82 >= *(a2 + 32))
          {
            goto LABEL_135;
          }

          v110 = v82;
          v111 = *(a2 + 40) + 32 * v82;
          v112 = *(v111 + 8);
          v113 = *(v111 + 12);
          if (v112 < v113 && v33 == v113)
          {
            if (v82 != v98)
            {
LABEL_113:
              v117 = *(*(a2 + 64) + 56 * v82);
              if (v117)
              {
                Shape::AddChgt(a1, v72, v252, &v257, v258, 1, *(v117 + 64), *(v117 + 72), 0, -1);
                *(*(a2 + 64) + 56 * v110) = 0;
                v118 = *v117;
                if (*v117)
                {
                  v248 = *(v118 + 72);
                  v119 = *(v118 + 64);
                }

                else
                {
                  v119 = 0;
                  v248 = -1;
                }

                v120 = *(v117 + 8);
                if (v120)
                {
                  v246 = *(v120 + 72);
                  v121 = *(v120 + 64);
                }

                else
                {
                  v121 = 0;
                  v246 = -1;
                }

                sub_2767C4920(v117, a1 + 168, (a1 + 192), 1);
                v72 = v250;
                v98 = v247;
                if (v119)
                {
                  if (v121)
                  {
                    if (v119 != a2 || (v127 = *(v119 + 40) + 32 * v248, *(v127 + 12) != v33) && *(v127 + 8) != v33)
                    {
                      if (v121 != a2 || (v128 = *(v121 + 40) + 32 * v246, *(v128 + 12) != v33) && *(v128 + 8) != v33)
                      {
                        Shape::TesteIntersection(a1, *(*(v119 + 64) + 56 * v248), 0, 0, v122, v123, v124, v125, v126);
                        v98 = v247;
                        v72 = v250;
                      }
                    }
                  }
                }
              }
            }
          }

          else if (v33 == v112 && v112 > v113 && v82 != v98)
          {
            goto LABEL_113;
          }

          v129 = *(a2 + 40) + 32 * v110;
          if (*(v129 + 8) == v33)
          {
            v130 = 16;
          }

          else
          {
            if (*(v129 + 12) != v33)
            {
              goto LABEL_135;
            }

            v130 = 24;
          }

          v82 = *(v129 + v130);
          if ((v82 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }

          continue;
        }
      }

      if ((v85 & 0x80000000) == 0)
      {
LABEL_139:
        v145 = v72;
        v132 = sub_2767C4678(a2, v85, 1, v72, (a1 + 168));
        *(*(a2 + 64) + 56 * v85) = v132;
        sub_2767C4A8C(v132, a1 + 168, (a1 + 192), a1, v145, 1, 1);
        v151 = *v132;
        if (*v132)
        {
          v152 = *(a1 + 88) + 48 * v145;
          *(v152 + 24) = *(v151 + 64);
          *(v152 + 32) = *(v151 + 72);
        }

        else
        {
          *(*(a1 + 88) + 48 * v145 + 32) = -1;
        }

        Shape::TesteIntersection(a1, v132, 0, 0, v146, v147, v148, v149, v150);
        Shape::TesteIntersection(a1, v132, 1, 0, v153, v154, v155, v156, v157);
        *(*(a2 + 64) + 56 * v85 + 44) = v145;
        Shape::AddChgt(a1, v145, v252, &v257, v258, 0, *(v132 + 64), *(v132 + 72), 0, -1);
        v133 = 0;
        goto LABEL_144;
      }

LABEL_141:
      v132 = 0;
      v133 = 1;
      goto LABEL_144;
    }

    if ((v86 & 0x80000000) != 0)
    {
      v98 = -1;
      if (v84 >= 1)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (*(*(a2 + 64) + 56 * v86))
      {
        v98 = v86;
      }

      else
      {
        v98 = -1;
      }

      if (v84 > 0)
      {
        goto LABEL_97;
      }
    }

LABEL_135:
    if ((v85 & 0x80000000) != 0)
    {
      goto LABEL_141;
    }

    if ((v98 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v131 = 56 * v98;
    v132 = *(*(a2 + 64) + v131);
    v133 = 1;
    v134 = v72;
    Shape::AddChgt(a1, v72, v252, &v257, v258, 1, *(v132 + 64), *(v132 + 72), 0, -1);
    *(*(a2 + 64) + v131) = 0;
    sub_2767C4894(v132, (a1 + 192));
    sub_2767C4504(v132, a2, v85, 1, v134);
    *(*(a2 + 64) + 56 * v85) = v132;
    Shape::TesteIntersection(a1, v132, 0, 0, v135, v136, v137, v138, v139);
    Shape::TesteIntersection(a1, v132, 1, 0, v140, v141, v142, v143, v144);
    *(*(a2 + 64) + 56 * v85 + 44) = v134;
    Shape::AddChgt(a1, v134, v252, &v257, v258, 0, *(v132 + 64), *(v132 + 72), 0, -1);
LABEL_144:
    if (v83 >= 2)
    {
      v158 = *(*(a2 + 24) + 28 * v33 + 16);
      if ((v158 & 0x80000000) == 0)
      {
        v159 = v250;
        while (1)
        {
          if (v158 >= *(a2 + 32))
          {
            goto LABEL_92;
          }

          v160 = *(a2 + 40);
          v161 = v158;
          v162 = v160 + 32 * v158;
          v163 = *(v162 + 8);
          v164 = *(v162 + 12);
          if (v163 > v164 && v33 == v164)
          {
            if (v158 != v85)
            {
              goto LABEL_162;
            }
          }

          else if (v33 == v163 && v163 < v164 && v158 != v85)
          {
LABEL_162:
            v168 = sub_2767C4678(a2, v158, 1, v159, (a1 + 168));
            *(*(a2 + 64) + 56 * v161) = v168;
            sub_2767C4BA8(v168, a1 + 168, (a1 + 192), a1, v132, v33, 1, 1);
            if (v133)
            {
              v174 = *v168;
              v175 = *(a1 + 88);
              if (*v168)
              {
                v176 = v250;
                *(v175 + 48 * v250 + 24) = *(v174 + 64);
                v177 = *(v174 + 72);
              }

              else
              {
                v177 = -1;
                v176 = v250;
              }

              *(v175 + 48 * v176 + 32) = v177;
            }

            Shape::TesteIntersection(a1, v168, 0, 0, v169, v170, v171, v172, v173);
            Shape::TesteIntersection(a1, v168, 1, 0, v178, v179, v180, v181, v182);
            *(*(a2 + 64) + 56 * v161 + 44) = v250;
            Shape::AddChgt(a1, v250, v252, &v257, v258, 0, *(v168 + 64), *(v168 + 72), 0, -1);
            v159 = v250;
            v133 = 0;
            v160 = *(a2 + 40);
            v163 = *(v160 + 32 * v161 + 8);
          }

          v183 = v160 + 32 * v161;
          if (v163 == v33)
          {
            v184 = 16;
          }

          else
          {
            if (*(v183 + 12) != v33)
            {
              goto LABEL_92;
            }

            v184 = 24;
          }

          v158 = *(v183 + v184);
          if ((v158 & 0x80000000) != 0)
          {
            goto LABEL_92;
          }
        }
      }

      goto LABEL_92;
    }

    a2 = v249;
LABEL_93:
    v33 = v251;
  }

  v185 = Shape::AssemblePoints(a1, v252, *(a1 + 16));
  v187 = v185;
  if (v252 < v185)
  {
    v188 = v252;
    v189 = (*(a1 + 88) + 48 * v252 + 32);
    v190 = v185 - v252;
    do
    {
      v191 = *(v189 - 1);
      if (v191)
      {
        v192 = *(v191 + 64) + 56 * *v189;
        *(v189 - 4) = *(v192 + 8);
        *(v192 + 8) = v188;
      }

      ++v188;
      v189 += 12;
      --v190;
    }

    while (v190);
  }

  v193 = v257;
  if (v257)
  {
    v194 = *(a1 + 88);
    v195 = v258;
    do
    {
      v196 = *(v193 + 8) + 56 * *v195;
      v197 = *(v194 + 48 * *(v196 + 28) + 4);
      *(v196 + 24) = *(v194 + 48 * *(v196 + 24) + 4);
      *(v196 + 28) = v197;
      v195 = (v196 + 40);
      v193 = *(v196 + 32);
    }

    while (v193);
  }

  v198 = *v245;
  if (v198 >= 1)
  {
    v199 = *(a1 + 88);
    v200 = (*(a1 + 144) + 8);
    while (1)
    {
      v201 = *(v200 - 2);
      v202 = *(v199 + 48 * *(v200 - 1) + 4);
      *(v200 - 1) = v202;
      if (v201 == 1)
      {
        break;
      }

      if (!v201)
      {
        v203 = v200[2];
        v204 = *(*v200 + 40) + 32 * v203;
        v205 = *(*v200 + 64);
        if (*(v204 + 8) >= *(v204 + 12))
        {
          goto LABEL_190;
        }

LABEL_188:
        *(v205 + 56 * v203 + 12) = v202;
      }

LABEL_191:
      v200 += 18;
      if (!--v198)
      {
        goto LABEL_192;
      }
    }

    v203 = v200[2];
    v206 = *(*v200 + 40) + 32 * v203;
    v205 = *(*v200 + 64);
    if (*(v206 + 8) <= *(v206 + 12))
    {
LABEL_190:
      *(v205 + 56 * v203 + 16) = v202;
      goto LABEL_191;
    }

    goto LABEL_188;
  }

LABEL_192:
  Shape::CheckAdjacencies(a1, v185, v252, v186);
  Shape::CheckEdges(a1, v187, v252, a2, 0, 0);
  *(a1 + 16) = v187;
  v207 = *(a1 + 144);
  if (v207)
  {
    free(v207);
  }

  *v245 = 0;
  *(a1 + 144) = 0;
  v208 = *(a1 + 160);
  if (v208)
  {
    free(v208);
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  Shape::AssembleAretes(a1);
  v209 = *(a1 + 16);
  if (v209 >= 1)
  {
    v210 = (*(a1 + 24) + 12);
    do
    {
      v210[3] = *v210 + *(v210 - 1);
      v210 += 7;
      --v209;
    }

    while (v209);
  }

  Shape::SetFlag(a1, 2, 1);
  Shape::GetWindings(a1, v211, v212, v213, 0);
  if (v243 == 2)
  {
    v229 = *(a1 + 32);
    if (v244)
    {
      if (v229 < 1)
      {
        goto LABEL_277;
      }

      v230 = 0;
      while (1)
      {
        v231 = *(a1 + 72) + 32 * v230;
        v232 = *(v231 + 20);
        if ((*(v231 + 16) & 0x80000000) != 0)
        {
          v233 = *(a1 + 56);
          if ((v232 & 0x80000000) == 0)
          {
            goto LABEL_248;
          }
        }

        else
        {
          if (v232 < 0)
          {
            Shape::Inverse(a1, v230);
            v233 = *(a1 + 56);
LABEL_248:
            *(v233 + (v230 << 6)) = 1;
            goto LABEL_249;
          }

          v233 = *(a1 + 56);
        }

        *(v233 + (v230 << 6)) = 0;
        Shape::SubEdge(a1, v230--);
LABEL_249:
        if (++v230 >= *(a1 + 32))
        {
          goto LABEL_277;
        }
      }
    }

    if (v229 < 1)
    {
      goto LABEL_277;
    }

    v239 = 0;
    while (1)
    {
      v240 = *(a1 + 72) + 32 * v239;
      v241 = *(v240 + 20);
      if (*(v240 + 16) < 1)
      {
        if (v241 <= 0)
        {
          v242 = *(a1 + 56);
LABEL_275:
          *(v242 + (v239 << 6)) = 0;
          Shape::SubEdge(a1, v239--);
          goto LABEL_276;
        }

        Shape::Inverse(a1, v239);
        v242 = *(a1 + 56);
      }

      else
      {
        v242 = *(a1 + 56);
        if (v241 > 0)
        {
          goto LABEL_275;
        }
      }

      *(v242 + (v239 << 6)) = 1;
LABEL_276:
      if (++v239 >= *(a1 + 32))
      {
        goto LABEL_277;
      }
    }
  }

  if (v243 == 1)
  {
    v223 = *(a1 + 32);
    if (v244)
    {
      if (v223 < 1)
      {
        goto LABEL_277;
      }

      v224 = 0;
      while (1)
      {
        v225 = *(a1 + 72) + 32 * v224;
        v226 = *(v225 + 16);
        if (v226 < 0)
        {
          break;
        }

        v227 = *(v225 + 20);
        if (v226)
        {
          goto LABEL_233;
        }

        if (v227 < 0 || v227)
        {
          Shape::Inverse(a1, v224);
          v228 = *(a1 + 56);
LABEL_235:
          *(v228 + (v224 << 6)) = 1;
          goto LABEL_236;
        }

        v228 = *(a1 + 56);
LABEL_234:
        *(v228 + (v224 << 6)) = 0;
        Shape::SubEdge(a1, v224--);
LABEL_236:
        if (++v224 >= *(a1 + 32))
        {
          goto LABEL_277;
        }
      }

      v227 = *(v225 + 20);
LABEL_233:
      v228 = *(a1 + 56);
      if (!v227)
      {
        goto LABEL_235;
      }

      goto LABEL_234;
    }

    if (v223 < 1)
    {
      goto LABEL_277;
    }

    v234 = 0;
    while (1)
    {
      v235 = *(a1 + 72) + 32 * v234;
      v236 = *(v235 + 16);
      if (v236 >= 1)
      {
        break;
      }

      v237 = *(v235 + 20);
      if (v236 < 0)
      {
        goto LABEL_256;
      }

      if (v237 >= 1 || v237 < 0)
      {
        Shape::Inverse(a1, v234);
        v238 = *(a1 + 56);
LABEL_261:
        *(v238 + (v234 << 6)) = 1;
        goto LABEL_262;
      }

      v238 = *(a1 + 56);
LABEL_257:
      *(v238 + (v234 << 6)) = 0;
      Shape::SubEdge(a1, v234--);
LABEL_262:
      if (++v234 >= *(a1 + 32))
      {
        goto LABEL_277;
      }
    }

    v237 = *(v235 + 20);
LABEL_256:
    v238 = *(a1 + 56);
    if (!v237)
    {
      goto LABEL_261;
    }

    goto LABEL_257;
  }

  if (!v243 && *(a1 + 32) >= 1)
  {
    for (i = 0; i < *(a1 + 32); ++i)
    {
      v215 = *(a1 + 72) + 32 * i;
      v217 = *(v215 + 16);
      v216 = (v215 + 16);
      v218 = v217 & 1;
      if (v217 >= 0)
      {
        v219 = v218;
      }

      else
      {
        v219 = -v218;
      }

      *v216 = v219;
      v220 = v216 + 1;
      if (v216[1] >= 0)
      {
        v221 = v216[1] & 1;
      }

      else
      {
        v221 = -(v216[1] & 1);
      }

      *v220 = v221;
      if (v219 < 0)
      {
        *v216 = -v219;
        v219 = 1;
        if ((v221 & 0x80000000) == 0)
        {
LABEL_212:
          if (v219)
          {
            goto LABEL_213;
          }

          goto LABEL_217;
        }
      }

      else if ((v221 & 0x80000000) == 0)
      {
        goto LABEL_212;
      }

      *v220 = -v221;
      v221 = 1;
      if (v219)
      {
LABEL_213:
        v222 = *(a1 + 56);
        if (v221)
        {
          goto LABEL_221;
        }

        goto LABEL_219;
      }

LABEL_217:
      if (!v221)
      {
        v222 = *(a1 + 56);
LABEL_221:
        *(v222 + (i << 6)) = 0;
        Shape::SubEdge(a1, i--);
        continue;
      }

      Shape::Inverse(a1, i);
      v222 = *(a1 + 56);
LABEL_219:
      *(v222 + (i << 6)) = 1;
    }
  }

LABEL_277:
  if (Shape::GetFlag(a1, 64))
  {
    sub_2767C4644((a1 + 168));
    sub_2767C4038((a1 + 192));
    Shape::SetFlag(a1, 64, 0);
  }

  Shape::MakePointData(a1, 0);
  Shape::MakeEdgeData(a1, 0);
  Shape::MakeSweepSrcData(a1, 0);
  Shape::MakeSweepDestData(a1, 0);
  Shape::CleanupSweep(a2);
  if (Shape::Eulerian(a1, 1))
  {
    result = 0;
    *(a1 + 48) = 1;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    return 4;
  }

  return result;
}

uint64_t Shape::AssemblePoints(Shape *this, int a2, uint64_t a3)
{
  if (a3 > a2)
  {
    v3 = a2;
    v5 = 0;
    v6 = a2;
    v7 = a3;
    v8 = a3 - a2;
    v9 = vdupq_n_s64(v8 - 1);
    v10 = a2;
    v11 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = (*(this + 11) + 48 * a2 + 96);
    do
    {
      v13 = vdupq_n_s64(v5);
      v14 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v13, xmmword_27682CFB0)));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 24) = a2 + v5;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 12) = a2 + v5 + 1;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v13, xmmword_27682CFA0)))).i32[1])
      {
        *v12 = a2 + v5 + 2;
        v12[12] = a2 + v5 + 3;
      }

      v5 += 4;
      v12 += 48;
    }

    while (v11 != v5);
    Shape::SortPointsByOldInd(this, a2, a3 - 1);
    v15 = *(this + 11);
    v16 = (v15 + 48 * v10);
    v17 = v7 - v10;
    v18 = v7 - v10;
    do
    {
      v19 = *v16;
      v16 += 12;
      *(v15 + 48 * v19 + 4) = v3++;
      --v18;
    }

    while (v18);
    v20 = *(this + 11);
    v21 = (v20 + 48 * v10 + 32);
    v22 = 28 * v10;
    v23 = v10;
    a3 = v6;
    while (1)
    {
      *(v21 - 6) = a3;
      if (v23 <= v10)
      {
        break;
      }

      v24 = (*(this + 3) + v22);
      if (*(v24 - 7) != *v24 || *(v24 - 6) != v24[1])
      {
        break;
      }

      v25 = *(v21 - 18);
      *(v21 - 6) = v25;
      v26 = v20 + 48 * v25;
      v28 = *(v26 + 24);
      v27 = (v26 + 24);
      if (!v28)
      {
        *v27 = *(v21 - 1);
LABEL_20:
        *(v20 + 48 * v25 + 32) = *v21;
      }

LABEL_22:
      ++v23;
      v21 += 12;
      v22 += 28;
      if (v7 == v23)
      {
        v32 = *(this + 11);
        v33 = (v32 + 48 * v10 + 4);
        do
        {
          *v33 = *(v32 + 48 * *v33 + 8);
          v33 += 12;
          --v17;
        }

        while (v17);
        return a3;
      }
    }

    if (v23 <= a3)
    {
      a3 = (a3 + 1);
      goto LABEL_22;
    }

    v25 = a3;
    v29 = *(this + 3);
    v30 = *(v29 + v22);
    *(v29 + 28 * a3) = v30;
    v31 = v20 + 48 * a3;
    *(v31 + 36) = v30;
    *(v31 + 24) = *(v21 - 1);
    a3 = (a3 + 1);
    goto LABEL_20;
  }

  return a3;
}

uint64_t Shape::CheckAdjacencies(uint64_t this, int a2, int a3, Shape *a4)
{
  if (*(this + 136) >= 1)
  {
    v4 = a2;
    v5 = this;
    v6 = 0;
    v94 = 2 - a2;
    while (1)
    {
      v7 = *(v5 + 144) + 72 * v6;
      v8 = *(v7 + 4);
      v9 = *(v7 + 8);
      if (v9)
      {
        v10 = *(v7 + 16);
        v11 = *(v9 + 8) + 56 * v10;
        v13 = *(v11 + 24);
        v12 = *(v11 + 28);
        if (v13 >= v8)
        {
          v14 = v8;
        }

        else
        {
          v14 = *(v11 + 24);
        }

        if (v12 > v8)
        {
          v8 = v12;
        }

        v97 = v8;
        v99 = v14;
        if (v13 > a3)
        {
          v15 = v13 - 1;
          v16 = 28 * v13;
          do
          {
            this = Shape::TesteAdjacency(v5, v9, v10, *(*(v5 + 24) + v16 - 28), *(*(v5 + 24) + v16 - 24), v15, 0);
            if (!this)
            {
              break;
            }

            --v13;
            *(*(v9 + 8) + 56 * v10 + 24) = v15--;
            v16 -= 28;
          }

          while (v13 > a3);
        }

        v17 = v12 + 1;
        if (v12 + 1 < v4)
        {
          v18 = 28 * v17;
          do
          {
            this = Shape::TesteAdjacency(v5, v9, v10, *(*(v5 + 24) + v18), *(*(v5 + 24) + v18 + 4), v17, 0);
            if (!this)
            {
              break;
            }

            *(*(v9 + 8) + 56 * v10 + 28) = v17;
            v18 += 28;
            LODWORD(v17) = v17 + 1;
          }

          while (v4 != v17);
        }

        v8 = v97;
      }

      else
      {
        v99 = *(v7 + 4);
      }

      v19 = *(v5 + 144) + 72 * v6;
      v20 = *(v19 + 24);
      if (v20)
      {
        v21 = *(v19 + 32);
        v22 = *(v20 + 8) + 56 * v21;
        v24 = *(v22 + 24);
        v23 = *(v22 + 28);
        if (v24 >= v99)
        {
          v25 = v99;
        }

        else
        {
          v25 = *(v22 + 24);
        }

        if (v23 > v8)
        {
          v8 = v23;
        }

        v98 = v8;
        v99 = v25;
        if (v24 > a3)
        {
          v26 = v24 - 1;
          v27 = 28 * v24;
          do
          {
            this = Shape::TesteAdjacency(v5, v20, v21, *(*(v5 + 24) + v27 - 28), *(*(v5 + 24) + v27 - 24), v26, 0);
            if (!this)
            {
              break;
            }

            --v24;
            *(*(v20 + 8) + 56 * v21 + 24) = v26--;
            v27 -= 28;
          }

          while (v24 > a3);
        }

        v28 = v23 + 1;
        if (v23 + 1 < v4)
        {
          v29 = 28 * v28;
          do
          {
            this = Shape::TesteAdjacency(v5, v20, v21, *(*(v5 + 24) + v29), *(*(v5 + 24) + v29 + 4), v28, 0);
            if (!this)
            {
              break;
            }

            *(*(v20 + 8) + 56 * v21 + 28) = v28;
            v29 += 28;
            LODWORD(v28) = v28 + 1;
          }

          while (v4 != v28);
        }
      }

      else
      {
        v98 = v8;
      }

      v30 = *(v5 + 144);
      v31 = v30 + 72 * v6;
      v32 = *(v31 + 40);
      v33 = v99;
      v95 = v6;
      if (v32)
      {
        v34 = *(v31 + 48);
        if (*(*(v32 + 8) + 56 * v34 + 24) < a3)
        {
          while (v98 < v33)
          {
            v35 = 0;
LABEL_50:
            v33 = v99;
            if (v99 > a3)
            {
              this = Shape::TesteAdjacency(v5, v32, v34, *(*(v5 + 24) + 28 * (v99 - 1)), *(*(v5 + 24) + 28 * (v99 - 1) + 4), v99 - 1, 0);
              if (this)
              {
                v48 = v34;
                v49 = 28 * v99;
                v50 = v99;
                v51 = v99 - 1;
                while (1)
                {
                  v52 = v50 - 1;
                  v53 = *(v32 + 8);
                  v54 = v53 + 56 * v34;
                  v57 = *(v54 + 24);
                  v55 = (v54 + 24);
                  v56 = v57;
                  if (v57 >= a3)
                  {
                    if (v50 <= v56)
                    {
                      *v55 = v51;
                    }

                    v59 = v53 + 56 * v34;
                    v60 = *(v59 + 28);
                    v58 = (v59 + 28);
                    if (v52 <= v60)
                    {
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    *v55 = v51;
                    v58 = (v53 + 56 * v34 + 28);
                  }

                  *v58 = v51;
LABEL_59:
                  if (v52 <= a3)
                  {
                    goto LABEL_64;
                  }

                  this = Shape::TesteAdjacency(v5, v32, v34, *(*(v5 + 24) + v49 - 56), *(*(v5 + 24) + v49 - 52), --v51, 0);
                  v49 -= 28;
                  v50 = v52;
                  if (!this)
                  {
                    goto LABEL_63;
                  }
                }
              }
            }

            if ((v35 & 1) == 0)
            {
              goto LABEL_67;
            }

LABEL_63:
            v53 = *(v32 + 8);
            v48 = v34;
LABEL_64:
            v61 = *(v53 + 56 * v48);
            if (v61)
            {
              v62 = *v61;
              if (v62)
              {
                v32 = *(v62 + 64);
                v34 = *(v62 + 72);
                if (*(*(v32 + 8) + 56 * v34 + 24) < a3)
                {
                  continue;
                }
              }
            }

LABEL_67:
            v30 = *(v5 + 144);
            v4 = a2;
            v6 = v95;
            goto LABEL_68;
          }

          v35 = 0;
          v36 = 28 * v98;
          v37 = v98;
          v38 = v98;
          while (1)
          {
            this = Shape::TesteAdjacency(v5, v32, v34, *(*(v5 + 24) + v36), *(*(v5 + 24) + v36 + 4), v37, 0);
            if (this)
            {
              break;
            }

LABEL_48:
            --v37;
            v36 -= 28;
            if (v38-- <= v99)
            {
              goto LABEL_50;
            }
          }

          v39 = *(v32 + 8);
          v40 = v39 + 56 * v34;
          v43 = *(v40 + 24);
          v41 = (v40 + 24);
          v42 = v43;
          if (v43 >= a3)
          {
            if (v38 < v42)
            {
              *v41 = v37;
            }

            v45 = v39 + 56 * v34;
            v46 = *(v45 + 28);
            v44 = (v45 + 28);
            if (v38 <= v46)
            {
              goto LABEL_47;
            }
          }

          else
          {
            *v41 = v37;
            v44 = (v39 + 56 * v34 + 28);
          }

          *v44 = v37;
LABEL_47:
          v35 = 1;
          goto LABEL_48;
        }
      }

LABEL_68:
      v63 = v30 + 72 * v6;
      v64 = *(v63 + 56);
      if (v64)
      {
        v65 = *(v63 + 64);
        if (*(*(v64 + 8) + 56 * v65 + 24) < a3)
        {
          break;
        }
      }

LABEL_100:
      v6 = v95 + 1;
      if (v95 + 1 >= *(v5 + 136))
      {
        return this;
      }
    }

    v66 = v98 + 1;
    while (v99 > v98)
    {
      v67 = 0;
LABEL_83:
      v4 = a2;
      if (v66 < a2)
      {
        v79 = (*(v5 + 24) + 28 * v66);
        this = Shape::TesteAdjacency(v5, v64, v65, *v79, v79[1], v66, 0);
        if (this)
        {
          v80 = 0;
          v81 = v65;
          v82 = 28 * v66;
          while (1)
          {
            v83 = v98 + v80 + 1;
            v84 = *(v64 + 8);
            v85 = v84 + 56 * v65;
            v88 = *(v85 + 24);
            v86 = (v85 + 24);
            v87 = v88;
            if (v88 >= a3)
            {
              if (v66 + v80 < v87)
              {
                *v86 = v83;
              }

              v90 = v84 + 56 * v65;
              v91 = *(v90 + 28);
              v89 = (v90 + 28);
              if (v98 + v80 < v91)
              {
                goto LABEL_92;
              }
            }

            else
            {
              *v86 = v83;
              v89 = (v84 + 56 * v65 + 28);
            }

            *v89 = v83;
LABEL_92:
            if (!(v94 + v98 + v80))
            {
              goto LABEL_97;
            }

            this = Shape::TesteAdjacency(v5, v64, v65, *(*(v5 + 24) + v82 + 28), *(*(v5 + 24) + v82 + 32), v98 + v80++ + 2, 0);
            v82 += 28;
            if (!this)
            {
              goto LABEL_96;
            }
          }
        }
      }

      if ((v67 & 1) == 0)
      {
        goto LABEL_100;
      }

LABEL_96:
      v84 = *(v64 + 8);
      v81 = v65;
LABEL_97:
      v92 = *(v84 + 56 * v81);
      if (v92)
      {
        v93 = *(v92 + 8);
        if (v93)
        {
          v64 = *(v93 + 64);
          v65 = *(v93 + 72);
          if (*(*(v64 + 8) + 56 * v65 + 24) < a3)
          {
            continue;
          }
        }
      }

      goto LABEL_100;
    }

    v67 = 0;
    v69 = 28 * v99;
    v68 = v99;
    v70 = v99;
    while (1)
    {
      this = Shape::TesteAdjacency(v5, v64, v65, *(*(v5 + 24) + v69), *(*(v5 + 24) + v69 + 4), v70, 0);
      if (this)
      {
        break;
      }

LABEL_82:
      ++v68;
      ++v70;
      v69 += 28;
      if (v66 == v70)
      {
        goto LABEL_83;
      }
    }

    v71 = *(v64 + 8);
    v72 = v71 + 56 * v65;
    v75 = *(v72 + 24);
    v73 = (v72 + 24);
    v74 = v75;
    if (v75 >= a3)
    {
      if (v68 < v74)
      {
        *v73 = v70;
      }

      v77 = v71 + 56 * v65;
      v78 = *(v77 + 28);
      v76 = (v77 + 28);
      if (v68 <= v78)
      {
        goto LABEL_81;
      }
    }

    else
    {
      *v73 = v70;
      v76 = (v71 + 56 * v65 + 28);
    }

    *v76 = v70;
LABEL_81:
    v67 = 1;
    goto LABEL_82;
  }

  return this;
}

void Shape::CheckEdges(uint64_t a1, signed int a2, int a3, uint64_t a4, Shape *a5, uint64_t a6)
{
  v6 = *(a1 + 136);
  if (v6 >= 1)
  {
    v7 = a6;
    v12 = (*(a1 + 144) + 8);
    do
    {
      if (!*(v12 - 2))
      {
        *(*(*v12 + 64) + 56 * v12[2] + 44) = *(v12 - 1);
      }

      v12 += 18;
      --v6;
    }

    while (v6);
    v13 = 0;
    do
    {
      v14 = *(a1 + 144);
      v15 = v14 + 72 * v13;
      v16 = *(v15 + 8);
      if (v16)
      {
        Shape::Avance(a1, a2, a3, v16, *(v15 + 16), a6, a5, v7);
        v14 = *(a1 + 144);
      }

      v17 = v14 + 72 * v13;
      v18 = *(v17 + 24);
      if (v18)
      {
        Shape::Avance(a1, a2, a3, v18, *(v17 + 32), a6, a5, v7);
        v14 = *(a1 + 144);
      }

      v19 = v14 + 72 * v13;
      v20 = *(v19 + 40);
      if (v20)
      {
        v21 = *(v19 + 48);
        if (*(*(v20 + 8) + 56 * v21 + 24) >= a3)
        {
          v22 = v21;
          do
          {
            Shape::Avance(a1, a2, a3, v20, v21, a6, a5, v7);
            v23 = *(*(v20 + 8) + 56 * v22);
            if (!v23)
            {
              break;
            }

            v24 = *v23;
            if (!v24)
            {
              break;
            }

            v20 = *(v24 + 64);
            v21 = *(v24 + 72);
            v22 = v21;
          }

          while (*(*(v20 + 8) + 56 * v21 + 24) >= a3);
          v14 = *(a1 + 144);
        }
      }

      v25 = v14 + 72 * v13;
      v26 = *(v25 + 56);
      if (v26)
      {
        v27 = *(v25 + 64);
        if (*(*(v26 + 8) + 56 * v27 + 28) >= a3)
        {
          v28 = v27;
          do
          {
            Shape::Avance(a1, a2, a3, v26, v27, a6, a5, v7);
            v29 = *(*(v26 + 8) + 56 * v28);
            if (!v29)
            {
              break;
            }

            v30 = *(v29 + 8);
            if (!v30)
            {
              break;
            }

            v26 = *(v30 + 64);
            v27 = *(v30 + 72);
            v28 = v27;
          }

          while (*(*(v26 + 8) + 56 * v27 + 28) >= a3);
        }
      }

      ++v13;
    }

    while (v13 < *(a1 + 136));
  }
}

void *Shape::AddChgt(Shape *this, int a2, int a3, Shape **a4, int *a5, int a6, Shape *a7, int a8, Shape *a9, int a10)
{
  v18 = *(this + 34);
  if (v18 >= *(this + 35))
  {
    v20 = (2 * v18) | 1;
    *(this + 35) = v20;
    result = malloc_type_realloc(*(this + 18), 72 * v20, 0x10200400F996F24uLL);
    *(this + 18) = result;
    if (!result)
    {
      TSUSetCrashReporterInfo();
      v54 = MEMORY[0x277D81150];
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "void Shape::AddChgt(int, int, Shape *&, int &, int, Shape *, int, Shape *, int)", "void Shape::AddChgt(int, int, Shape *&, int &, int, Shape *, int, Shape *, int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm", 2358);
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v59, v56, v58, 2358, 1, "Unable to allocate memory.");

      TSUCrashBreakpoint();
      abort();
    }

    v18 = *(this + 34);
  }

  else
  {
    result = *(this + 18);
  }

  *(this + 34) = v18 + 1;
  v21 = v18;
  v22 = &result[9 * v18];
  *v22 = a6;
  *(v22 + 1) = a2;
  *(v22 + 1) = a7;
  *(v22 + 4) = a8;
  *(v22 + 3) = a9;
  *(v22 + 8) = a10;
  if (a7)
  {
    v23 = *(a7 + 8);
    v24 = *(v23 + 56 * a8);
    if (v24 && (v25 = *v24) != 0)
    {
      result[9 * v21 + 5] = *(v25 + 64);
      v26 = *(v25 + 72);
    }

    else
    {
      result[9 * v21 + 5] = 0;
      v26 = -1;
    }

    LODWORD(result[9 * v21 + 6]) = v26;
    v27 = v23 + 56 * a8;
    v30 = *(v27 + 24);
    v28 = (v27 + 24);
    v29 = v30;
    if (v30 >= a3)
    {
      if (*(*(this + 3) + 28 * v29) > *(*(this + 3) + 28 * a2))
      {
        *v28 = a2;
      }
    }

    else
    {
      *v28 = a2;
      v31 = v23 + 56 * a8;
      *(v31 + 32) = *a4;
      *(v31 + 40) = *a5;
      *a5 = a8;
      *a4 = a7;
      v23 = *(a7 + 8);
    }

    v32 = v23 + 56 * a8;
    v35 = *(v32 + 28);
    v33 = (v32 + 28);
    v34 = v35;
    if (v35 < a3 || *(*(this + 3) + 28 * v34) < *(*(this + 3) + 28 * a2))
    {
      *v33 = a2;
    }
  }

  if (!a9)
  {
    v40 = *(*(a7 + 8) + 56 * a8);
    if (v40)
    {
      v41 = *(v40 + 8);
      v42 = *(this + 18);
      if (v41)
      {
        v43 = v42 + 72 * v21;
        *(v43 + 56) = *(v41 + 64);
        v44 = *(v41 + 72);
LABEL_33:
        *(v43 + 64) = v44;
        return result;
      }
    }

    else
    {
      v42 = *(this + 18);
    }

    v43 = v42 + 72 * v21;
    *(v43 + 56) = 0;
    v44 = -1;
    goto LABEL_33;
  }

  v36 = *(a9 + 8);
  v37 = *(*(v36 + 56 * a10) + 8);
  v38 = *(this + 18);
  if (v37)
  {
    *(v38 + 72 * v21 + 56) = *(v37 + 64);
    v39 = *(v37 + 72);
  }

  else
  {
    *(v38 + 72 * v21 + 56) = 0;
    v39 = -1;
  }

  *(v38 + 72 * v21 + 64) = v39;
  v45 = v36 + 56 * a10;
  v48 = *(v45 + 24);
  v46 = (v45 + 24);
  v47 = v48;
  if (v48 >= a3)
  {
    if (*(*(this + 3) + 28 * v47) > *(*(this + 3) + 28 * a2))
    {
      *v46 = a2;
    }
  }

  else
  {
    *v46 = a2;
    v49 = v36 + 56 * a10;
    *(v49 + 32) = *a4;
    *(v49 + 40) = *a5;
    *a5 = a10;
    *a4 = a9;
    v36 = *(a9 + 8);
  }

  v50 = v36 + 56 * a10;
  v53 = *(v50 + 28);
  v51 = (v50 + 28);
  v52 = v53;
  if (v53 < a3 || *(*(this + 3) + 28 * v52) < *(*(this + 3) + 28 * a2))
  {
    *v51 = a2;
  }

  return result;
}

uint64_t Shape::TesteIntersection(uint64_t result, uint64_t *a2, int a3, char a4, double a5, double a6, double a7, int32x4_t a8, int32x4_t a9)
{
  v10 = result;
  if (a3)
  {
    v11 = *a2;
    if (*a2)
    {
      v20 = 0;
      v21 = 0;
      result = Shape::TesteIntersection(a5, a6, a7, a8, a9, result, v11, a2, &v21 + 1, &v21, &v20 + 1, &v20, a4);
      if (result)
      {
        v12 = *(&v21 + 1);
        v13 = *&v21;
        v14 = *(&v20 + 1);
        v15 = *&v20;
        v16 = v10 + 192;
        v17 = v11;
        v18 = a2;
        return sub_2767C4078(v17, v18, v16, v12, v13, v14, v15);
      }
    }
  }

  else
  {
    v19 = a2[1];
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      result = Shape::TesteIntersection(a5, a6, a7, a8, a9, result, a2, v19, &v21 + 1, &v21, &v20 + 1, &v20, a4);
      if (result)
      {
        v12 = *(&v21 + 1);
        v13 = *&v21;
        v14 = *(&v20 + 1);
        v15 = *&v20;
        v16 = v10 + 192;
        v17 = a2;
        v18 = v19;
        return sub_2767C4078(v17, v18, v16, v12, v13, v14, v15);
      }
    }
  }

  return result;
}

void Shape::AssembleAretes(Shape *this)
{
  if (*(this + 4) >= 1)
  {
    for (i = 0; i < *(this + 4); ++i)
    {
      v3 = (*(this + 3) + 28 * i);
      v4 = v3[4];
      if (v3[3] + v3[2] == 2)
      {
        v5 = v3[5];
        v6 = *(this + 5);
        v7 = v6 + 32 * v4;
        v8 = *(v7 + 8);
        v9 = v6 + 32 * v5;
        v10 = *(v9 + 8);
        if (v8 == v10)
        {
          v11 = *(v9 + 12);
          if (*(v7 + 12) == v11)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v11 = *(v9 + 12);
        }

        if (v8 == v11 && *(v7 + 12) == v8)
        {
          if (v8 == v10)
          {
LABEL_58:
            v41 = *(this + 7);
            v42 = v4 << 6;
            v43 = *(v41 + v42) + *(v41 + (v5 << 6));
          }

          else
          {
            v41 = *(this + 7);
            v42 = v4 << 6;
            v43 = *(v41 + v42) - *(v41 + (v5 << 6));
          }

          *(v41 + v42) = v43;
          *(v41 + (v5 << 6)) = 0;
          v44 = *(this + 8);
          v45 = *(v44 + 56 * v5 + 8);
          if ((v45 & 0x80000000) == 0)
          {
            v46 = *(this + 11);
            v47 = *(v44 + 56 * v5 + 8);
            do
            {
              v48 = v46 + 48 * v47;
              *(v48 + 32) = v4;
              v47 = *(v48 + 16);
            }

            while ((v47 & 0x80000000) == 0);
            v49 = v44 + 56 * v4;
            v52 = *(v49 + 8);
            v50 = (v49 + 8);
            v51 = v52;
            if ((v52 & 0x80000000) == 0)
            {
              do
              {
                v53 = v46 + 48 * v51;
                v54 = *(v53 + 16);
                v50 = (v53 + 16);
                v51 = v54;
              }

              while ((v54 & 0x80000000) == 0);
            }

            *v50 = v45;
          }

          Shape::DisconnectStart(this, v5);
          Shape::DisconnectEnd(this, v5);
          v55 = *(this + 8);
          if (v55 >= 2)
          {
            v56 = *(*(this + 8) + 56 * v55 - 48);
            if ((v56 & 0x80000000) == 0)
            {
              v57 = *(this + 11);
              do
              {
                v58 = v57 + 48 * v56;
                *(v58 + 32) = v5;
                v56 = *(v58 + 16);
              }

              while ((v56 & 0x80000000) == 0);
            }
          }

          Shape::SwapEdges(this, v5, v55 - 1);
          --*(this + 8);
        }
      }

      else if ((v4 & 0x80000000) == 0)
      {
        v12 = *(this + 8);
        while (1)
        {
          if (v4 >= v12)
          {
            goto LABEL_71;
          }

          v13 = *(this + 5);
          v14 = v13 + 32 * v4;
          v15 = *(v14 + 8);
          if (i == v15)
          {
            LODWORD(v15) = *(v14 + 12);
          }

          v16 = *(*(this + 3) + 28 * i + 16);
          if ((v16 & 0x80000000) == 0)
          {
            break;
          }

LABEL_48:
          v39 = v13 + 32 * v4;
          if (i == *(v39 + 8))
          {
            v40 = 16;
          }

          else
          {
            if (i != *(v39 + 12))
            {
              goto LABEL_71;
            }

            v40 = 24;
          }

          v4 = *(v39 + v40);
          if ((v4 & 0x80000000) != 0)
          {
            goto LABEL_71;
          }
        }

        while (2)
        {
          v13 = *(this + 5);
          if (v16 >= v12)
          {
            goto LABEL_48;
          }

          v17 = (v13 + 32 * v16);
          v18 = v17[2];
          if (i == v18)
          {
            v19 = v17[4];
            if (v16 != v4)
            {
              v20 = v17[3];
              goto LABEL_22;
            }
          }

          else if (i == v17[3])
          {
            v19 = v17[6];
            v20 = v17[2];
            if (v16 != v4)
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (v16 == v4)
            {
              LODWORD(v4) = v16;
LABEL_47:
              v13 = *(this + 5);
              goto LABEL_48;
            }

            v19 = 0xFFFFFFFFLL;
            v20 = v17[2];
LABEL_22:
            if (v20 == v15)
            {
              v22 = *(this + 7);
              v21 = *(this + 8);
              if (*(v13 + 32 * v4 + 8) == v18)
              {
                v23 = *(v22 + (v16 << 6));
              }

              else
              {
                v23 = -*(v22 + (v16 << 6));
              }

              *(v22 + (v4 << 6)) += v23;
              *(v22 + (v16 << 6)) = 0;
              v24 = *(v21 + 56 * v16 + 8);
              if ((v24 & 0x80000000) == 0)
              {
                v25 = *(this + 11);
                v26 = *(v21 + 56 * v16 + 8);
                do
                {
                  v27 = v25 + 48 * v26;
                  *(v27 + 32) = v4;
                  v26 = *(v27 + 16);
                }

                while ((v26 & 0x80000000) == 0);
                v28 = v21 + 56 * v4;
                v31 = *(v28 + 8);
                v29 = (v28 + 8);
                v30 = v31;
                if ((v31 & 0x80000000) == 0)
                {
                  do
                  {
                    v32 = v25 + 48 * v30;
                    v33 = *(v32 + 16);
                    v29 = (v32 + 16);
                    v30 = v33;
                  }

                  while ((v33 & 0x80000000) == 0);
                }

                *v29 = v24;
              }

              Shape::DisconnectStart(this, v16);
              Shape::DisconnectEnd(this, v16);
              v34 = *(this + 8);
              if (v34 >= 2)
              {
                v35 = *(*(this + 8) + 56 * v34 - 48);
                if ((v35 & 0x80000000) == 0)
                {
                  v36 = *(this + 11);
                  do
                  {
                    v37 = v36 + 48 * v35;
                    *(v37 + 32) = v16;
                    v35 = *(v37 + 16);
                  }

                  while ((v35 & 0x80000000) == 0);
                }
              }

              Shape::SwapEdges(this, v16, v34 - 1);
              v12 = *(this + 8) - 1;
              if (v4 == v12)
              {
                v38 = v16;
              }

              else
              {
                v38 = v4;
              }

              if (v19 == v12)
              {
                v19 = v16;
              }

              else
              {
                v19 = v19;
              }

              *(this + 8) = v12;
              v16 = v38;
            }

            else
            {
              v16 = v4;
            }
          }

          v4 = v16;
          v16 = v19;
          if ((v19 & 0x80000000) != 0)
          {
            goto LABEL_47;
          }

          continue;
        }
      }

LABEL_71:
      ;
    }
  }

  v59 = *(this + 8);
  if (v59 >= 1)
  {
    v60 = 0;
    for (j = 0; j < v59; ++j)
    {
      if ((*(*(this + 7) + v60) & 0x80000000) != 0)
      {
        Shape::Inverse(this, j);
        v59 = *(this + 8);
      }

      v60 += 64;
    }
  }
}

uint64_t Shape::Booleen(Shape *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  result = 5;
  if (!a3)
  {
    return result;
  }

  v6 = a2;
  if (!a2)
  {
    return result;
  }

  v7 = a3;
  if (a2 == a3)
  {
    return result;
  }

  Shape::Reset(this, 0);
  v8 = *(v6 + 16) < 2 || *(v6 + 32) < 2;
  if (*(v7 + 16) < 2)
  {
    goto LABEL_11;
  }

  if (*(v7 + 32) < 2)
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_11:
    if (!a4)
    {
      printf("Attempting to union with a shape that has no size! This will return an empty path back.");
    }

    return 0;
  }

  if (*(v6 + 48) != 1 || *(v7 + 48) != 1)
  {
    return 5;
  }

  Shape::ResetSweep(v6);
  Shape::ResetSweep(v7);
  if (!Shape::GetFlag(this, 64))
  {
    sub_2767C4540(this + 168, *(v7 + 32) + *(v6 + 32));
    sub_2767C3E8C(this + 192, *(v7 + 32) + *(v6 + 32));
    Shape::SetFlag(this, 64, 1);
  }

  Shape::MakePointData(this, 1);
  Shape::MakeEdgeData(this, 1);
  Shape::MakeSweepSrcData(this, 1);
  Shape::MakeSweepDestData(this, 1);
  v9 = (*(v6 + 53) & 2) != 0 && (*(v7 + 53) & 2) != 0;
  Shape::MakeBackData(this, v9);
  v10 = *(v6 + 16);
  if (v10 >= 1)
  {
    v11 = (*(v6 + 88) + 40);
    v12 = (*(v6 + 24) + 4);
    do
    {
      *(v11 - 4) = 0xFFFFFFFF00000000;
      *(v11 - 6) = NAN;
      v13 = ldexpf(*(v12 - 1), 5);
      *(v11 - 1) = ldexpf(roundf(v13), -5);
      v14 = *v12;
      v12 += 7;
      v15 = ldexpf(v14, 5);
      *v11 = ldexpf(roundf(v15), -5);
      v11 += 12;
      --v10;
    }

    while (v10);
  }

  v16 = *(v7 + 16);
  if (v16 >= 1)
  {
    v17 = (*(v7 + 88) + 40);
    v18 = (*(v7 + 24) + 4);
    do
    {
      *(v17 - 4) = 0xFFFFFFFF00000000;
      *(v17 - 6) = NAN;
      v19 = ldexpf(*(v18 - 1), 5);
      *(v17 - 1) = ldexpf(roundf(v19), -5);
      v20 = *v18;
      v18 += 7;
      v21 = ldexpf(v20, 5);
      *v17 = ldexpf(roundf(v21), -5);
      v17 += 12;
      --v16;
    }

    while (v16);
  }

  v22 = *(v6 + 32);
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = *(v6 + 88);
    v25 = *(v6 + 64);
    v26 = 56 * v22;
    v27 = *(v6 + 56) + 32;
    v28 = (*(v6 + 40) + 12);
    do
    {
      v29 = vsub_f32(*(v24 + 48 * *v28 + 36), *(v24 + 48 * *(v28 - 1) + 36));
      *(v27 - 28) = v29;
      v30 = (COERCE_FLOAT(vmul_f32(v29, v29).i32[1]) + (v29.f32[0] * v29.f32[0]));
      v31 = sqrt(v30);
      *(v27 - 16) = v30;
      *(v27 - 8) = v31;
      *v27 = 1.0 / v30;
      *(v27 + 8) = 1.0 / v31;
      v32 = vmulq_n_f64(vcvtq_f64_f32(v29), 1.0 / v31);
      v33 = *&v32.i64[1];
      v34 = vextq_s8(v32, v32, 8uLL);
      *(v27 + 16) = v34;
      if (v33 < 0.0)
      {
        *(v27 + 16) = vnegq_f64(v34);
      }

      v35 = v25 + v23;
      *v35 = 0;
      v28 += 8;
      *(v35 + 16) = -1;
      *(v35 + 8) = -1;
      *(v35 + 24) = -1;
      *(v35 + 32) = 0;
      *(v35 + 40) = -1;
      v23 += 56;
      v27 += 64;
      *(v35 + 48) = -1;
    }

    while (v26 != v23);
  }

  v36 = *(v7 + 32);
  if (v36 >= 1)
  {
    v37 = 0;
    v38 = *(v7 + 88);
    v39 = *(v7 + 64);
    v40 = 56 * v36;
    v41 = *(v7 + 56) + 32;
    v42 = (*(v7 + 40) + 12);
    do
    {
      v43 = vsub_f32(*(v38 + 48 * *v42 + 36), *(v38 + 48 * *(v42 - 1) + 36));
      *(v41 - 28) = v43;
      v44 = (COERCE_FLOAT(vmul_f32(v43, v43).i32[1]) + (v43.f32[0] * v43.f32[0]));
      v45 = sqrt(v44);
      *(v41 - 16) = v44;
      *(v41 - 8) = v45;
      *v41 = 1.0 / v44;
      *(v41 + 8) = 1.0 / v45;
      v46 = vmulq_n_f64(vcvtq_f64_f32(v43), 1.0 / v45);
      v47 = *&v46.i64[1];
      v48 = vextq_s8(v46, v46, 8uLL);
      *(v41 + 16) = v48;
      if (v47 < 0.0)
      {
        *(v41 + 16) = vnegq_f64(v48);
      }

      v49 = v39 + v37;
      *v49 = 0;
      v42 += 8;
      *(v49 + 16) = -1;
      *(v49 + 8) = -1;
      *(v49 + 24) = -1;
      *(v49 + 32) = 0;
      *(v49 + 40) = -1;
      v37 += 56;
      v41 += 64;
      *(v49 + 48) = -1;
    }

    while (v40 != v37);
  }

  Shape::SortPointsRounded(v6);
  Shape::SortPointsRounded(v7);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  *(this + 17) = 0;
  v277 = (this + 136);
  *(this + 18) = 0;
  v53 = *(*(v6 + 88) + 40);
  if (v53 >= *(*(v7 + 88) + 40))
  {
    v53 = *(*(v7 + 88) + 40);
  }

  v54 = v53 + -1.0;
  v293[0] = -1;
  *(this + 19) = 0;
  v292 = 0;
  v285 = this;
  v286 = (this + 152);
  *(this + 20) = 0;
  v275 = v6;
  v276 = v7;
  while (v51 < *(v6 + 16) || v50 < *(v7 + 16) || v286[10] >= 1)
  {
    v291 = 0.0;
    v290 = 0.0;
    v288 = 0;
    v289 = 0;
    v287 = 0;
    v55 = sub_2767C4404(&v288, &v287, &v291, &v290, &v289 + 1, &v289, (v286 + 10));
    v56 = *(v6 + 16);
    if (!v55)
    {
      if (v51 < v56 && (v50 >= *(v7 + 16) || (v64 = *(v6 + 88) + 48 * v51, v65 = *(v64 + 40), v66 = *(v7 + 88) + 48 * v50, v67 = *(v66 + 40), v65 < v67) || v65 == v67 && *(v64 + 36) < *(v66 + 36)))
      {
        v68 = v51;
        v69 = v6;
        v283 = (v51 + 1);
        v284 = v50;
      }

      else
      {
        v68 = v50;
        v69 = v7;
        v283 = v51;
        v284 = (v50 + 1);
      }

      v58 = v68;
      v70 = *(v69 + 88) + 48 * v68;
      v291 = *(v70 + 36);
      v290 = *(v70 + 40);
      goto LABEL_62;
    }

    v283 = v51;
    v284 = v50;
    if (v51 >= v56)
    {
      v73 = *(v7 + 88);
      v74 = v73 + 48 * v50;
      if (*(v74 + 8) > 0 || (v75 = *(v74 + 40), v75 > v290))
      {
LABEL_83:
        sub_2767C4474(&v288, &v287, &v291, &v290, &v289 + 1, &v289, (v286 + 10));
        v69 = 0;
        v72 = 1;
        v68 = -1;
        goto LABEL_84;
      }

      v58 = v50;
      if (v75 == v290)
      {
        v222 = *(v74 + 36);
        if (v222 > v291)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v222 = *(v73 + 48 * v50 + 36);
      }

      v68 = v50;
      v291 = v222;
      v290 = *(v73 + 48 * v50 + 40);
      v69 = v7;
      v223 = (v50 + 1);
      goto LABEL_222;
    }

    v57 = *(v6 + 88);
    v58 = v51;
    v59 = v57 + 48 * v51;
    if (v50 >= *(v7 + 16))
    {
      if (*(v59 + 8) > 0)
      {
        goto LABEL_83;
      }

      v60 = *(v59 + 40);
    }

    else
    {
      v60 = *(v59 + 40);
      v61 = *(v7 + 88);
      v62 = v61 + 48 * v50;
      v63 = *(v62 + 40);
      if (v60 >= v63 && (v60 != v63 || *(v59 + 36) >= *(v62 + 36)))
      {
        if (*(v62 + 8) > 0 || v63 > v290)
        {
          goto LABEL_83;
        }

        v58 = v50;
        if (v63 == v290)
        {
          v225 = *(v62 + 36);
          if (v225 > v291)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v225 = *(v61 + 48 * v50 + 36);
        }

        v68 = v50;
        v223 = (v50 + 1);
        v291 = v225;
        v290 = *(v61 + 48 * v50 + 40);
        v69 = v7;
LABEL_222:
        v284 = v223;
        goto LABEL_62;
      }

      if (*(v59 + 8) > 0)
      {
        goto LABEL_83;
      }
    }

    if (v60 > v290)
    {
      goto LABEL_83;
    }

    if (v60 == v290)
    {
      v224 = *(v59 + 36);
      if (v224 > v291)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v224 = *(v57 + 48 * v51 + 36);
    }

    v68 = v51;
    v291 = v224;
    v290 = *(v57 + 48 * v51 + 40);
    v69 = v6;
    v283 = (v51 + 1);
LABEL_62:
    v71 = *(v69 + 24) + 28 * v58;
    if (!*(v71 + 8) && !*(v71 + 12))
    {
      goto LABEL_220;
    }

    v72 = 0;
LABEL_84:
    v76 = ldexpf(v291, 5);
    v77 = ldexpf(roundf(v76), -5);
    v78 = ldexpf(v290, 5);
    v79 = ldexpf(roundf(v78), -5);
    v80 = Shape::AddPoint(this, v77, v79);
    v81 = v80;
    v82 = *(this + 11) + 48 * v80;
    *(v82 + 36) = v77;
    *(v82 + 40) = v79;
    if (v79 <= v54)
    {
      v105 = v80;
      if (v72)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v83 = Shape::AssemblePoints(this, v52, v80);
      v85 = v83;
      if (v52 < v83)
      {
        v86 = (*(this + 11) + 48 * v52 + 32);
        v87 = v83 - v52;
        v88 = v52;
        do
        {
          v89 = *(v86 - 1);
          if (v89)
          {
            v90 = *(v89 + 64) + 56 * *v86;
            *(v86 - 4) = *(v90 + 8);
            *(v90 + 8) = v88;
          }

          ++v88;
          v86 += 12;
          --v87;
        }

        while (v87);
      }

      v91 = v292;
      if (v292)
      {
        v92 = *(this + 11);
        v93 = v293;
        do
        {
          v94 = *(v91 + 8) + 56 * *v93;
          v95 = *(v92 + 48 * *(v94 + 28) + 4);
          *(v94 + 24) = *(v92 + 48 * *(v94 + 24) + 4);
          *(v94 + 28) = v95;
          v93 = (v94 + 40);
          v91 = *(v94 + 32);
        }

        while (v91);
      }

      v96 = *v277;
      if (v96 >= 1)
      {
        v97 = *(this + 11);
        v98 = (*(this + 18) + 8);
        while (1)
        {
          v99 = *(v98 - 2);
          v100 = *(v97 + 48 * *(v98 - 1) + 4);
          *(v98 - 1) = v100;
          if (v99 == 1)
          {
            break;
          }

          if (!v99)
          {
            v101 = v98[2];
            v102 = *(*v98 + 40) + 32 * v101;
            v103 = *(*v98 + 64);
            if (*(v102 + 8) >= *(v102 + 12))
            {
              goto LABEL_100;
            }

LABEL_98:
            *(v103 + 56 * v101 + 12) = v100;
          }

LABEL_101:
          v98 += 18;
          if (!--v96)
          {
            goto LABEL_102;
          }
        }

        v101 = v98[2];
        v104 = *(*v98 + 40) + 32 * v101;
        v103 = *(*v98 + 64);
        if (*(v104 + 8) <= *(v104 + 12))
        {
LABEL_100:
          *(v103 + 56 * v101 + 16) = v100;
          goto LABEL_101;
        }

        goto LABEL_98;
      }

LABEL_102:
      Shape::CheckAdjacencies(this, v83, v52, v84);
      Shape::CheckEdges(this, v85, v52, v6, v7, a4);
      v105 = v85;
      if (v85 < v81)
      {
        v106 = *(this + 3);
        v107 = (v106 + 28 * v81);
        v108 = (v106 + 28 * v85);
        v109 = *v107;
        *(v108 + 12) = *(v107 + 12);
        *v108 = v109;
        v110 = *(this + 11);
        v111 = (v110 + 48 * v81);
        v112 = (v110 + 48 * v85);
        v113 = *v111;
        v114 = v111[2];
        v112[1] = v111[1];
        v112[2] = v114;
        *v112 = v113;
      }

      *(this + 4) = v85 + 1;
      *(this + 34) = 0;
      v293[0] = -1;
      v292 = 0;
      v52 = v85;
      v54 = v79;
      if (v72)
      {
LABEL_140:
        v132 = v105;
        sub_2767C48E0(v288, v286 + 10, 1);
        sub_2767C48E0(v287, v286 + 10, 0);
        Shape::AddChgt(this, v132, v52, &v292, v293, 2, v288[8], *(v288 + 18), v287[8], *(v287 + 18));
        sub_2767C4EFC(v288);
        Shape::TesteIntersection(this, v288, 1, 1, v133, v134, v135, v136, v137);
        Shape::TesteIntersection(this, v287, 0, 1, v138, v139, v140, v141, v142);
        goto LABEL_220;
      }
    }

    v115 = *(*(v69 + 24) + 28 * v68 + 16);
    if ((v115 & 0x80000000) != 0)
    {
      goto LABEL_220;
    }

    v116 = 0;
    v117 = 0;
    v118 = -1;
    v119 = -1;
    v120 = *(*(v69 + 24) + 28 * v68 + 16);
    do
    {
      if (v120 >= *(v69 + 32))
      {
        break;
      }

      v121 = *(v69 + 40) + 32 * v120;
      v122 = *(v121 + 8);
      v123 = *(v121 + 12);
      if ((v122 >= v123 || v68 != v123) && (v68 != v122 || v122 <= v123))
      {
        goto LABEL_126;
      }

      ++v117;
      v119 = v120;
      v126 = v68 == v122;
      v127 = v122 > v123;
      if (v122 >= v123)
      {
        v126 = 0;
      }

      if (v68 != v123)
      {
        v127 = 0;
      }

      v128 = v127 || v126;
      if (v128)
      {
        v118 = v120;
      }

      v116 += v128;
      v129 = v68 == v122 || v68 == v123;
LABEL_126:
      if (!v129)
      {
        break;
      }

      v130 = v68 == v122 ? 16 : 24;
      v120 = *(v121 + v130);
    }

    while ((v120 & 0x80000000) == 0);
    v282 = v52;
    v281 = v105;
    if (v116 <= 0)
    {
      if (v117 > 0)
      {
        v131 = -1;
        goto LABEL_144;
      }

      if ((v118 & 0x80000000) == 0)
      {
LABEL_185:
        v179 = v105;
        v180 = sub_2767C4678(v69, v118, 1, v105, v286 + 4);
        *(*(v69 + 64) + 56 * v118) = v180;
        sub_2767C4A8C(v180, (v286 + 4), v286 + 10, v285, v179, 1, 1);
        v280 = v180;
        v186 = *v180;
        if (*v180)
        {
          v187 = *(v285 + 11) + 48 * v179;
          *(v187 + 24) = *(v186 + 64);
          *(v187 + 32) = *(v186 + 72);
        }

        else
        {
          *(*(v285 + 11) + 48 * v179 + 32) = -1;
        }

        v52 = v282;
        Shape::TesteIntersection(v285, v180, 0, 1, v181, v182, v183, v184, v185);
        Shape::TesteIntersection(v285, v180, 1, 1, v188, v189, v190, v191, v192);
        *(*(v69 + 64) + 56 * v118 + 44) = v179;
        Shape::AddChgt(v285, v179, v282, &v292, v293, 0, *(v180 + 64), *(v180 + 72), 0, -1);
        v167 = 0;
        goto LABEL_190;
      }

LABEL_187:
      v280 = 0;
      v167 = 1;
      v52 = v282;
      goto LABEL_190;
    }

    if ((v119 & 0x80000000) == 0)
    {
      if (*(*(v69 + 64) + 56 * v119))
      {
        v131 = v119;
      }

      else
      {
        v131 = -1;
      }

      if (v117 <= 0)
      {
        goto LABEL_181;
      }

LABEL_144:
      while (2)
      {
        if (v115 >= *(v69 + 32))
        {
          goto LABEL_181;
        }

        v143 = v115;
        v144 = *(v69 + 40) + 32 * v115;
        v145 = *(v144 + 8);
        v146 = *(v144 + 12);
        if (v145 < v146 && v68 == v146)
        {
          if (v115 != v131)
          {
LABEL_159:
            v150 = *(*(v69 + 64) + 56 * v115);
            if (v150)
            {
              Shape::AddChgt(v285, v105, v282, &v292, v293, 1, *(v150 + 64), *(v150 + 72), 0, -1);
              *(*(v69 + 64) + 56 * v143) = 0;
              v151 = *v150;
              if (*v150)
              {
                v152 = *(v151 + 72);
                v153 = *(v151 + 64);
              }

              else
              {
                v153 = 0;
                v152 = -1;
              }

              v154 = *(v150 + 8);
              if (v154)
              {
                v279 = *(v154 + 72);
                v155 = *(v154 + 64);
              }

              else
              {
                v155 = 0;
                v279 = -1;
              }

              sub_2767C4920(v150, (v286 + 4), v286 + 10, 1);
              v105 = v281;
              if (v153)
              {
                if (v155)
                {
                  if (v153 != v69 || (v161 = *(v153 + 40) + 32 * v152, *(v161 + 12) != v68) && *(v161 + 8) != v68)
                  {
                    if (v155 != v69 || (v162 = *(v155 + 40) + 32 * v279, *(v162 + 12) != v68) && *(v162 + 8) != v68)
                    {
                      Shape::TesteIntersection(v285, *(*(v153 + 64) + 56 * v152), 0, 1, v156, v157, v158, v159, v160);
                      v105 = v281;
                    }
                  }
                }
              }
            }
          }
        }

        else if (v68 == v145 && v145 > v146 && v115 != v131)
        {
          goto LABEL_159;
        }

        v163 = *(v69 + 40) + 32 * v143;
        if (*(v163 + 8) == v68)
        {
          v164 = 16;
        }

        else
        {
          if (*(v163 + 12) != v68)
          {
            goto LABEL_181;
          }

          v164 = 24;
        }

        v115 = *(v163 + v164);
        if ((v115 & 0x80000000) != 0)
        {
          goto LABEL_181;
        }

        continue;
      }
    }

    v131 = -1;
    if (v117 >= 1)
    {
      goto LABEL_144;
    }

LABEL_181:
    if ((v118 & 0x80000000) != 0)
    {
      goto LABEL_187;
    }

    if ((v131 & 0x80000000) != 0)
    {
      goto LABEL_185;
    }

    v165 = 56 * v131;
    v166 = *(*(v69 + 64) + v165);
    v167 = 1;
    v168 = v105;
    Shape::AddChgt(v285, v105, v282, &v292, v293, 1, *(v166 + 64), *(v166 + 72), 0, -1);
    *(*(v69 + 64) + v165) = 0;
    sub_2767C4894(v166, v286 + 10);
    sub_2767C4504(v166, v69, v118, 1, v168);
    *(*(v69 + 64) + 56 * v118) = v166;
    Shape::TesteIntersection(v285, v166, 0, 1, v169, v170, v171, v172, v173);
    Shape::TesteIntersection(v285, v166, 1, 1, v174, v175, v176, v177, v178);
    *(*(v69 + 64) + 56 * v118 + 44) = v168;
    v280 = v166;
    v52 = v282;
    Shape::AddChgt(v285, v168, v282, &v292, v293, 0, *(v166 + 64), *(v166 + 72), 0, -1);
LABEL_190:
    if (v116 >= 2)
    {
      v193 = *(*(v69 + 24) + 28 * v68 + 16);
      if ((v193 & 0x80000000) == 0)
      {
        v194 = v281;
        do
        {
          if (v193 >= *(v69 + 32))
          {
            break;
          }

          v195 = *(v69 + 40);
          v196 = v193;
          v197 = v195 + 32 * v193;
          v198 = *(v197 + 8);
          v199 = *(v197 + 12);
          if (v198 > v199 && v68 == v199)
          {
            if (v193 != v118)
            {
              goto LABEL_208;
            }
          }

          else if (v68 == v198 && v198 < v199 && v193 != v118)
          {
LABEL_208:
            v203 = sub_2767C4678(v69, v193, 1, v194, v286 + 4);
            *(*(v69 + 64) + 56 * v196) = v203;
            sub_2767C4BA8(v203, (v286 + 4), v286 + 10, v285, v280, v68, 1, 1);
            if (v167)
            {
              v209 = *v203;
              v210 = *(v285 + 11);
              if (*v203)
              {
                v211 = v281;
                *(v210 + 48 * v281 + 24) = *(v209 + 64);
                v212 = *(v209 + 72);
              }

              else
              {
                v212 = -1;
                v211 = v281;
              }

              *(v210 + 48 * v211 + 32) = v212;
            }

            Shape::TesteIntersection(v285, v203, 0, 1, v204, v205, v206, v207, v208);
            Shape::TesteIntersection(v285, v203, 1, 1, v213, v214, v215, v216, v217);
            *(*(v69 + 64) + 56 * v196 + 44) = v281;
            v218 = *(v203 + 64);
            v219 = *(v203 + 72);
            v52 = v282;
            Shape::AddChgt(v285, v281, v282, &v292, v293, 0, v218, v219, 0, -1);
            v194 = v281;
            v167 = 0;
            v195 = *(v69 + 40);
            v198 = *(v195 + 32 * v196 + 8);
          }

          v220 = v195 + 32 * v196;
          if (v198 == v68)
          {
            v221 = 16;
          }

          else
          {
            if (*(v220 + 12) != v68)
            {
              break;
            }

            v221 = 24;
          }

          v193 = *(v220 + v221);
        }

        while ((v193 & 0x80000000) == 0);
      }
    }

    this = v285;
    v6 = v275;
    v7 = v276;
LABEL_220:
    v51 = v283;
    v50 = v284;
  }

  v226 = Shape::AssemblePoints(this, v52, *(this + 4));
  v228 = v226;
  if (v52 < v226)
  {
    v229 = (*(this + 11) + 48 * v52 + 32);
    v230 = v226 - v52;
    v231 = v52;
    do
    {
      v232 = *(v229 - 1);
      if (v232)
      {
        v233 = *(v232 + 64) + 56 * *v229;
        *(v229 - 4) = *(v233 + 8);
        *(v233 + 8) = v231;
      }

      ++v231;
      v229 += 12;
      --v230;
    }

    while (v230);
  }

  v234 = v292;
  if (v292)
  {
    v235 = *(this + 11);
    v236 = v293;
    do
    {
      v237 = *(v234 + 8) + 56 * *v236;
      v238 = *(v235 + 48 * *(v237 + 28) + 4);
      *(v237 + 24) = *(v235 + 48 * *(v237 + 24) + 4);
      *(v237 + 28) = v238;
      v236 = (v237 + 40);
      v234 = *(v237 + 32);
    }

    while (v234);
  }

  v239 = *v277;
  if (v239 >= 1)
  {
    v240 = *(this + 11);
    v241 = (*(this + 18) + 8);
    while (1)
    {
      v242 = *(v241 - 2);
      v243 = *(v240 + 48 * *(v241 - 1) + 4);
      *(v241 - 1) = v243;
      if (v242 == 1)
      {
        break;
      }

      if (!v242)
      {
        v244 = v241[2];
        v245 = *(*v241 + 40) + 32 * v244;
        v246 = *(*v241 + 64);
        if (*(v245 + 8) >= *(v245 + 12))
        {
          goto LABEL_240;
        }

LABEL_238:
        *(v246 + 56 * v244 + 12) = v243;
      }

LABEL_241:
      v241 += 18;
      if (!--v239)
      {
        goto LABEL_242;
      }
    }

    v244 = v241[2];
    v247 = *(*v241 + 40) + 32 * v244;
    v246 = *(*v241 + 64);
    if (*(v247 + 8) <= *(v247 + 12))
    {
LABEL_240:
      *(v246 + 56 * v244 + 16) = v243;
      goto LABEL_241;
    }

    goto LABEL_238;
  }

LABEL_242:
  Shape::CheckAdjacencies(this, v226, v52, v227);
  Shape::CheckEdges(this, v228, v52, v6, v7, a4);
  *(this + 4) = v228;
  v248 = *(this + 18);
  if (v248)
  {
    free(v248);
  }

  *v277 = 0;
  v277[1] = 0;
  v249 = *(this + 20);
  if (v249)
  {
    free(v249);
  }

  *v286 = 0;
  *(v286 + 1) = 0;
  Shape::AssembleAretes(this);
  v250 = *(this + 4);
  if (v250 >= 1)
  {
    v251 = (*(this + 3) + 12);
    do
    {
      v251[3] = *v251 + *(v251 - 1);
      v251 += 7;
      --v250;
    }

    while (v250);
  }

  Shape::SetFlag(this, 2, 1);
  Shape::GetWindings(this, v252, v253, v254, 0);
  if (a4 != 3)
  {
    if ((a4 & 0xFFFFFFFD) != 0)
    {
      v262 = *(this + 8);
      if (a4 == 1)
      {
        if (v262 < 1)
        {
          goto LABEL_300;
        }

        v263 = 0;
        while (1)
        {
          v264 = *(this + 9) + 32 * v263;
          v265 = *(v264 + 20);
          if (*(v264 + 16) < 2)
          {
            if (v265 <= 1)
            {
              v266 = *(this + 7);
LABEL_274:
              *(v266 + (v263 << 6)) = 0;
              Shape::SubEdge(this, v263--);
              goto LABEL_275;
            }

            Shape::Inverse(this, v263);
            v266 = *(this + 7);
          }

          else
          {
            v266 = *(this + 7);
            if (v265 > 1)
            {
              goto LABEL_274;
            }
          }

          *(v266 + (v263 << 6)) = 1;
LABEL_275:
          if (++v263 >= *(this + 8))
          {
            goto LABEL_300;
          }
        }
      }

      if (v262 < 1)
      {
        goto LABEL_300;
      }

      v271 = 0;
      while (1)
      {
        v272 = *(this + 9) + 32 * v271;
        v273 = *(v272 + 20);
        if (*(v272 + 16) < 1)
        {
          if (v273 <= 0)
          {
            v274 = *(this + 7);
LABEL_298:
            *(v274 + (v271 << 6)) = 0;
            Shape::SubEdge(this, v271--);
            goto LABEL_299;
          }

          Shape::Inverse(this, v271);
          v274 = *(this + 7);
        }

        else
        {
          v274 = *(this + 7);
          if (v273 > 0)
          {
            goto LABEL_298;
          }
        }

        *(v274 + (v271 << 6)) = 1;
LABEL_299:
        if (++v271 >= *(this + 8))
        {
          goto LABEL_300;
        }
      }
    }

    if (*(this + 8) < 1)
    {
      goto LABEL_300;
    }

    v267 = 0;
    while (1)
    {
      v268 = *(this + 9) + 32 * v267;
      v269 = *(v268 + 20);
      if (*(v268 + 16) < 1)
      {
        if (v269 <= 0)
        {
          v270 = *(this + 7);
LABEL_286:
          *(v270 + (v267 << 6)) = 0;
          Shape::SubEdge(this, v267--);
          goto LABEL_287;
        }

        Shape::Inverse(this, v267);
        v270 = *(this + 7);
      }

      else
      {
        v270 = *(this + 7);
        if (v269 > 0)
        {
          goto LABEL_286;
        }
      }

      *(v270 + (v267 << 6)) = 1;
LABEL_287:
      if (++v267 >= *(this + 8))
      {
        goto LABEL_300;
      }
    }
  }

  if (*(this + 8) >= 1)
  {
    for (i = 0; i < *(this + 8); ++i)
    {
      v256 = *(this + 9) + 32 * i;
      v259 = *(v256 + 20);
      v258 = (v256 + 20);
      v257 = v259;
      v260 = *(v258 - 1) & 1;
      *(v258 - 1) = v260;
      if (v259 < 0)
      {
        *v258 = -v257;
        v257 = 1;
        if (v260)
        {
LABEL_257:
          v261 = *(this + 7);
          if (v257)
          {
            goto LABEL_260;
          }

          *(v261 + (i << 6)) = 1;
          continue;
        }
      }

      else if (v260)
      {
        goto LABEL_257;
      }

      if (!v257)
      {
        v261 = *(this + 7);
LABEL_260:
        *(v261 + (i << 6)) = 0;
        Shape::SubEdge(this, i--);
        continue;
      }

      Shape::Inverse(this, i);
      *(*(this + 7) + (i << 6)) = 1;
    }
  }

LABEL_300:
  if (Shape::GetFlag(this, 64))
  {
    sub_2767C4644(v286 + 2);
    sub_2767C4038(v286 + 5);
    Shape::SetFlag(this, 64, 0);
  }

  Shape::MakePointData(this, 0);
  Shape::MakeEdgeData(this, 0);
  Shape::MakeSweepSrcData(this, 0);
  Shape::MakeSweepDestData(this, 0);
  Shape::CleanupSweep(v6);
  Shape::CleanupSweep(v7);
  if (Shape::Eulerian(this, 1))
  {
    result = 0;
    *(this + 12) = 1;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 4) = 0;
    return 4;
  }

  return result;
}