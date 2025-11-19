Path *Path::SetWeighted(Path *this, int a2)
{
  if (!this->var7)
  {
    if (!a2)
    {
      if (!this->var6)
      {
        return this;
      }

      goto LABEL_9;
    }

LABEL_6:
    if (this->var6)
    {
      return this;
    }

    v2 = 1;
    goto LABEL_10;
  }

  if (a2)
  {
    goto LABEL_6;
  }

  if (!this->var6)
  {
    return this;
  }

LABEL_9:
  v2 = 0;
LABEL_10:
  this->var6 = v2;
  return Path::ResetPoints(this, this->var8);
}

Path *Path::Alloue(Path *this, int a2)
{
  var2 = this->var2;
  if (var2 + a2 > this->var1)
  {
    v3 = this;
    v4 = a2 + 2 * var2;
    this->var1 = v4;
    this = malloc_type_realloc(this->var3, 44 * v4, 0x1000040D4159EFEuLL);
    v3->var3 = this;
    if (!this)
    {
      TSUSetCrashReporterInfo();
      v5 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void Path::Alloue(int)", "void Path::Alloue(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm", 103);
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v7, v9, 103, 1, "Unable to allocate memory.");

      TSUCrashBreakpoint();
      abort();
    }
  }

  return this;
}

Path *Path::CloseSubpath(Path *this, int a2)
{
  var2 = this->var2;
  v3 = 44 * var2;
  while (1)
  {
    v4 = __OFSUB__(var2--, 1);
    if (var2 < 0 != v4)
    {
      break;
    }

    var3 = this->var3;
    v6 = var3 + v3;
    ++a2;
    v3 -= 44;
    if ((*(v6 - 44) & 0xF) == 0)
    {
      *(var3 + v3 + 24) = a2;
      break;
    }
  }

  this->var0 &= ~2u;
  this->var5 = -1;
  return this;
}

double Path::ForcePoint(Path *this)
{
  var0 = this->var0;
  if (this->var0)
  {
    if ((var0 & 4) != 0)
    {
      var0 &= 0xFFFFFFFA;
      this->var0 = var0;
      var4 = this->var4;
      if ((var4 & 0x80000000) == 0)
      {
        this->var2 = var4;
        this->var4 = -1;
      }
    }

    else
    {
      this->var4 = -1;
      var0 &= 0xFFFFFFFA;
      this->var0 = var0;
    }
  }

  if ((var0 & 2) != 0)
  {
    Path::Alloue(this, 1);
    var2 = this->var2;
    v5 = (this->var3 + 44 * var2);
    this->var2 = var2 + 1;
    result = 0.0078125;
    *v5 = 0xFFFFFFFF00000007;
    v5[1] = 0x3F80000000000000;
  }

  return result;
}

uint64_t Path::EndBezierTo(Path *this)
{
  var0 = this->var0;
  if ((this->var0 & 4) != 0)
  {
    this->var0 = var0 & 0xFFFFFFFA;
    var4 = this->var4;
    if ((var4 & 0x80000000) == 0)
    {
      this->var2 = var4;
      this->var4 = -1;
    }
  }

  else
  {
    this->var4 = -1;
    this->var0 = var0 & 0xFFFFFFFA;
  }

  return 0xFFFFFFFFLL;
}

uint64_t Path::Close(Path *this)
{
  var0 = this->var0;
  if (this->var0)
  {
    var0 &= 0xFFFFFFFA;
    this->var0 = var0;
    var4 = this->var4;
    if ((var4 & 0x80000000) == 0)
    {
      this->var2 = var4;
      this->var4 = -1;
    }
  }

  v4 = 0xFFFFFFFFLL;
  if ((var0 & 2) != 0)
  {
    Path::CloseSubpath(this, 1);
    Path::Alloue(this, 1);
    var2 = this->var2;
    v6 = (this->var3 + 44 * var2);
    this->var2 = var2 + 1;
    *v6 = -4294967291;
    v6[1] = 0x3F80000000000000;
    this->var0 &= ~2u;
    this->var5 = -1;
    return var2;
  }

  return v4;
}

Path *Path::CancelBezier(Path *this)
{
  this->var0 &= 0xFFFFFFFA;
  var4 = this->var4;
  if ((var4 & 0x80000000) == 0)
  {
    this->var2 = var4;
    this->var4 = -1;
  }

  return this;
}

uint64_t Path::MoveTo(Path *this, float a2, float a3)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::EndBezierTo(this, a2, a3);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    v7 = 0;
    var2 = this->var2;
    v9 = 44 * var2;
    while (1)
    {
      v10 = __OFSUB__(var2--, 1);
      if (var2 < 0 != v10)
      {
        break;
      }

      var3 = this->var3;
      v12 = var3 + v9;
      v9 -= 44;
      ++v7;
      if ((*(v12 - 44) & 0xF) == 0)
      {
        *(var3 + v9 + 24) = v7;
        var0 = this->var0;
        break;
      }
    }

    this->var0 = var0 & 0xFFFFFFFD;
  }

  this->var5 = this->var2;
  Path::Alloue(this, 1);
  v13 = this->var2;
  v14 = this->var3 + 44 * v13;
  this->var2 = v13 + 1;
  *v14 = 0xFFFFFFFF00000000;
  *(v14 + 1) = 0x3F80000000000000;
  *(v14 + 4) = a2;
  *(v14 + 5) = a3;
  *(v14 + 6) = 0;
  this->var0 |= 2u;
  return (this->var2 - 1);
}

uint64_t Path::EndBezierTo(Path *this, float a2, float a3)
{
  var0 = this->var0;
  if ((this->var0 & 1) == 0)
  {
    return Path::LineTo(this, a2, a3);
  }

  if ((var0 & 2) == 0)
  {
    return Path::MoveTo(this, a2, a3);
  }

  if ((var0 & 4) != 0)
  {
    *(this->var3 + 11 * this->var4 + 5) = a2;
    *(this->var3 + 11 * this->var4 + 6) = a3;
    v5 = this->var3 + 44 * this->var4;
    if ((*v5 & 0x10) != 0)
    {
      *(v5 + 7) = 1065353216;
    }

    this->var4 = -1;
    var0 = this->var0;
  }

  else
  {
    this->var4 = -1;
  }

  this->var0 = var0 & 0xFFFFFFFA;
  return 0xFFFFFFFFLL;
}

uint64_t Path::MoveTo(Path *this, float a2, float a3, float a4)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::EndBezierTo(this, a2, a3, a4);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    v9 = 0;
    var2 = this->var2;
    v11 = 44 * var2;
    while (1)
    {
      v12 = __OFSUB__(var2--, 1);
      if (var2 < 0 != v12)
      {
        break;
      }

      var3 = this->var3;
      v14 = var3 + v11;
      v11 -= 44;
      ++v9;
      if ((*(v14 - 44) & 0xF) == 0)
      {
        *(var3 + v11 + 24) = v9;
        var0 = this->var0;
        break;
      }
    }

    this->var0 = var0 & 0xFFFFFFFD;
  }

  this->var5 = this->var2;
  Path::Alloue(this, 1);
  v15 = this->var2;
  v16 = this->var3 + 44 * v15;
  this->var2 = v15 + 1;
  *v16 = 0xFFFFFFFF00000010;
  *(v16 + 1) = 0x3F80000000000000;
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  *(v16 + 7) = a4;
  *(v16 + 6) = 0;
  this->var0 |= 2u;
  return (this->var2 - 1);
}

uint64_t Path::EndBezierTo(Path *this, float a2, float a3, float a4)
{
  var0 = this->var0;
  if ((this->var0 & 1) == 0)
  {
    return Path::LineTo(this, a2, a3, a4);
  }

  if ((var0 & 2) == 0)
  {
    return Path::MoveTo(this, a2, a3, a4);
  }

  if ((var0 & 4) != 0)
  {
    *(this->var3 + 11 * this->var4 + 5) = a2;
    *(this->var3 + 11 * this->var4 + 6) = a3;
    *(this->var3 + 11 * this->var4 + 7) = a4;
    this->var4 = -1;
    var0 = this->var0;
  }

  else
  {
    this->var4 = -1;
  }

  this->var0 = var0 & 0xFFFFFFFA;
  return 0xFFFFFFFFLL;
}

uint64_t Path::LineTo(Path *this, float a2, float a3)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::EndBezierTo(this, a2, a3);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    Path::Alloue(this, 1);
    var2 = this->var2;
    v9 = this->var3 + 44 * var2;
    this->var2 = var2 + 1;
    *v9 = 0xFFFFFFFF00000001;
    *(v9 + 1) = 0x3F80000000000000;
    *(v9 + 4) = a2;
    *(v9 + 5) = a3;
    return (this->var2 - 1);
  }

  else
  {

    return Path::MoveTo(this, a2, a3);
  }
}

uint64_t Path::LineTo(Path *this, float a2, float a3, float a4)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::EndBezierTo(this, a2, a3, a4);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    Path::Alloue(this, 1);
    var2 = this->var2;
    v11 = this->var3 + 44 * var2;
    this->var2 = var2 + 1;
    *v11 = -4294967279;
    *(v11 + 1) = 0x3F80000000000000;
    *(v11 + 4) = a2;
    *(v11 + 5) = a3;
    *(v11 + 6) = a4;
    return (this->var2 - 1);
  }

  else
  {

    return Path::MoveTo(this, a2, a3, a4);
  }
}

uint64_t Path::CubicTo(Path *this, float a2, float a3, float a4, float a5, float a6, float a7)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::EndBezierTo(this, a2, a3);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    Path::Alloue(this, 1);
    var2 = this->var2;
    v17 = this->var3 + 44 * var2;
    this->var2 = var2 + 1;
    *v17 = 0xFFFFFFFF00000002;
    *(v17 + 1) = 0x3F80000000000000;
    *(v17 + 4) = a2;
    *(v17 + 5) = a3;
    *(v17 + 6) = a4;
    *(v17 + 7) = a5;
    *(v17 + 8) = a6;
    *(v17 + 9) = a7;
    return (this->var2 - 1);
  }

  else
  {

    return Path::MoveTo(this, a2, a3);
  }
}

uint64_t Path::CubicTo(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::EndBezierTo(this, a2, a3, a8);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    Path::Alloue(this, 1);
    var2 = this->var2;
    v19 = this->var3 + 44 * var2;
    this->var2 = var2 + 1;
    *v19 = -4294967278;
    *(v19 + 1) = 0x3F80000000000000;
    *(v19 + 4) = a2;
    *(v19 + 5) = a3;
    *(v19 + 9) = a7;
    *(v19 + 10) = a8;
    *(v19 + 6) = a4;
    *(v19 + 7) = a5;
    *(v19 + 8) = a6;
    return (this->var2 - 1);
  }

  else
  {

    return Path::MoveTo(this, a2, a3, a8);
  }
}

uint64_t Path::ArcTo(Path *this, float a2, float a3, float a4, float a5, float a6, char a7, char a8)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::EndBezierTo(this, a2, a3);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    Path::Alloue(this, 1);
    var2 = this->var2;
    v19 = this->var3 + 44 * var2;
    this->var2 = var2 + 1;
    *v19 = 0xFFFFFFFF00000004;
    *(v19 + 1) = 0x3F80000000000000;
    *(v19 + 4) = a2;
    *(v19 + 5) = a3;
    *(v19 + 6) = a4;
    *(v19 + 7) = a5;
    *(v19 + 8) = a6;
    v19[36] = a7;
    v19[37] = a8;
    return (this->var2 - 1);
  }

  else
  {

    return Path::MoveTo(this, a2, a3);
  }
}

uint64_t Path::ArcTo(Path *this, float a2, float a3, float a4, float a5, float a6, char a7, char a8, float a9)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::EndBezierTo(this, a2, a3, a9);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    Path::Alloue(this, 1);
    var2 = this->var2;
    v21 = this->var3 + 44 * var2;
    this->var2 = var2 + 1;
    *v21 = -4294967276;
    *(v21 + 1) = 0x3F80000000000000;
    *(v21 + 4) = a2;
    *(v21 + 5) = a3;
    *(v21 + 10) = a9;
    *(v21 + 6) = a4;
    *(v21 + 7) = a5;
    *(v21 + 8) = a6;
    v21[36] = a7;
    v21[37] = a8;
    return (this->var2 - 1);
  }

  else
  {

    return Path::MoveTo(this, a2, a3, a9);
  }
}

uint64_t Path::TempBezierTo(Path *this)
{
  var0 = this->var0;
  if (this->var0)
  {
    var0 &= 0xFFFFFFFA;
    this->var0 = var0;
    var4 = this->var4;
    if ((var4 & 0x80000000) == 0)
    {
      this->var2 = var4;
      this->var4 = -1;
    }
  }

  if ((var0 & 2) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  this->var4 = this->var2;
  Path::Alloue(this, 1);
  var2 = this->var2;
  v6 = this->var3 + 44 * var2;
  this->var2 = var2 + 1;
  *v6 = 0xFFFFFFFF00000003;
  *(v6 + 1) = 0x3F80000000000000;
  *(v6 + 4) = 0;
  this->var0 |= 5u;
  return (this->var2 - 1);
}

uint64_t Path::TempBezierToW(Path *this)
{
  var0 = this->var0;
  if (this->var0)
  {
    var0 &= 0xFFFFFFFA;
    this->var0 = var0;
    var4 = this->var4;
    if ((var4 & 0x80000000) == 0)
    {
      this->var2 = var4;
      this->var4 = -1;
    }
  }

  if ((var0 & 2) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  this->var4 = this->var2;
  Path::Alloue(this, 1);
  var2 = this->var2;
  v6 = this->var3 + 44 * var2;
  this->var2 = var2 + 1;
  *v6 = -4294967277;
  *(v6 + 1) = 0x3F80000000000000;
  *(v6 + 4) = 0;
  this->var0 |= 5u;
  return (this->var2 - 1);
}

uint64_t Path::IntermBezierTo(Path *this, float a2, float a3)
{
  if (this->var0)
  {
    if ((this->var0 & 2) != 0)
    {
      if ((*(this->var3 + 44 * this->var4) & 0x10) != 0)
      {

        return Path::IntermBezierTo(this, a2, a3, 1.0);
      }

      else
      {
        Path::Alloue(this, 1);
        var2 = this->var2;
        v8 = this->var3 + 44 * var2;
        this->var2 = var2 + 1;
        *v8 = -4294967290;
        *(v8 + 1) = 0x3F80000000000000;
        *(v8 + 4) = a2;
        *(v8 + 5) = a3;
        v9 = this->var3 + 44 * this->var4;
        ++*(v9 + 4);
        return (this->var2 - 1);
      }
    }

    else
    {

      return Path::MoveTo(this, a2, a3);
    }
  }

  else
  {

    return Path::LineTo(this, a2, a3);
  }
}

uint64_t Path::IntermBezierTo(Path *this, float a2, float a3, float a4)
{
  if (this->var0)
  {
    if ((this->var0 & 2) != 0)
    {
      if ((*(this->var3 + 44 * this->var4) & 0x10) != 0)
      {
        Path::Alloue(this, 1);
        var2 = this->var2;
        v10 = this->var3 + 44 * var2;
        this->var2 = var2 + 1;
        *v10 = -4294967274;
        *(v10 + 1) = 0x3F80000000000000;
        *(v10 + 4) = a2;
        *(v10 + 5) = a3;
        *(v10 + 6) = a4;
        v11 = this->var3 + 44 * this->var4;
        ++*(v11 + 4);
        return (this->var2 - 1);
      }

      else
      {

        return Path::IntermBezierTo(this, a2, a3);
      }
    }

    else
    {

      return Path::MoveTo(this, a2, a3, a4);
    }
  }

  else
  {

    return Path::LineTo(this, a2, a3, a4);
  }
}

uint64_t Path::BezierTo(Path *this, float a2, float a3)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::EndBezierTo(this, a2, a3);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    this->var4 = this->var2;
    Path::Alloue(this, 1);
    var2 = this->var2;
    v9 = this->var3 + 44 * var2;
    this->var2 = var2 + 1;
    *v9 = 0xFFFFFFFF00000003;
    *(v9 + 1) = 0x3F80000000000000;
    *(v9 + 4) = 0;
    *(v9 + 5) = a2;
    *(v9 + 6) = a3;
    this->var0 = this->var0 & 0xFFFFFFFA | 1;
    return (this->var2 - 1);
  }

  else
  {

    return Path::MoveTo(this, a2, a3);
  }
}

uint64_t Path::BezierTo(Path *this, float a2, float a3, float a4)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::EndBezierTo(this, a2, a3, a4);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    this->var4 = this->var2;
    Path::Alloue(this, 1);
    var2 = this->var2;
    v11 = this->var3 + 44 * var2;
    this->var2 = var2 + 1;
    *v11 = -4294967277;
    *(v11 + 1) = 0x3F80000000000000;
    *(v11 + 4) = 0;
    *(v11 + 5) = a2;
    *(v11 + 6) = a3;
    *(v11 + 7) = a4;
    this->var0 = this->var0 & 0xFFFFFFFA | 1;
    return (this->var2 - 1);
  }

  else
  {

    return Path::MoveTo(this, a2, a3, a4);
  }
}

Path *Path::SetBackData(Path *this, char a2)
{
  if (this->var7)
  {
    if (a2)
    {
      return this;
    }

    v2 = 0;
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      return this;
    }

    v2 = 1;
  }

  this->var7 = v2;
  return Path::ResetPoints(this, this->var8);
}

uint64_t Path::AddPoint(Path *this, float a2, float a3, BOOL a4)
{
  if (this->var7)
  {

    return Path::AddPoint(this, a2, a3, -1, 0.0, a4);
  }

  else if (this->var6)
  {

    return Path::AddPoint(this, a2, a3, 1.0, a4);
  }

  else
  {
    var10 = this->var10;
    v10 = var10 + 12;
    if (var10 + 12 > this->var9)
    {
      v11 = 2 * var10 + 12;
      this->var9 = v11;
      v12 = malloc_type_realloc(this->var11, v11, 0x100004077774924uLL);
      this->var11 = v12;
      if (!v12)
      {
        TSUSetCrashReporterInfo();
        v17 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "int Path::AddPoint(float, float, BOOL)", "int Path::AddPoint(float, float, BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm", 610);
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v19, v21, 610, 1, "Unable to allocate memory.");

        TSUCrashBreakpoint();
        abort();
      }
    }

    result = this->var8;
    if (a4)
    {
      this->var8 = result + 1;
      this->var10 = v10;
      var11 = this->var11;
      v14 = 1;
    }

    else
    {
      var11 = this->var11;
      if (result >= 1)
      {
        v15 = &var11[12 * result];
        if (*(v15 - 2) == a2 && *(v15 - 1) == a3)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v14 = 0;
      this->var8 = result + 1;
      this->var10 = v10;
    }

    v16 = &var11[12 * result];
    *v16 = v14;
    *(v16 + 1) = a2;
    *(v16 + 2) = a3;
  }

  return result;
}

uint64_t Path::AddPoint(Path *this, float a2, float a3, int a4, float a5, BOOL a6)
{
  if (this->var7)
  {
    if (this->var6)
    {

      return Path::AddPoint(this, a2, a3, 1.0, a4, a5, a6);
    }

    else
    {
      var10 = this->var10;
      v14 = var10 + 20;
      if (var10 + 20 > this->var9)
      {
        v15 = 2 * var10 + 20;
        this->var9 = v15;
        v16 = malloc_type_realloc(this->var11, v15, 0x100004077774924uLL);
        this->var11 = v16;
        if (!v16)
        {
          TSUSetCrashReporterInfo();
          v21 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "int Path::AddPoint(float, float, int, float, BOOL)", "int Path::AddPoint(float, float, int, float, BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm", 658);
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v23, v25, 658, 1, "Unable to allocate memory.");

          TSUCrashBreakpoint();
          abort();
        }
      }

      result = this->var8;
      if (a6)
      {
        this->var8 = result + 1;
        this->var10 = v14;
        var11 = this->var11;
        v18 = 1;
      }

      else
      {
        var11 = this->var11;
        if (result >= 1)
        {
          v19 = &var11[20 * result];
          if (*(v19 - 4) == a2 && *(v19 - 3) == a3)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v18 = 0;
        this->var8 = result + 1;
        this->var10 = v14;
      }

      v20 = &var11[20 * result];
      *v20 = v18;
      *(v20 + 1) = a2;
      *(v20 + 2) = a3;
      *(v20 + 3) = a4;
      *(v20 + 4) = a5;
    }
  }

  else
  {

    return Path::AddPoint(this, a2, a3, a6);
  }

  return result;
}

uint64_t Path::AddPoint(Path *this, float a2, float a3, float a4, BOOL a5)
{
  if (this->var7)
  {

    return Path::AddPoint(this, a2, a3, a4, -1, 0.0, a5);
  }

  else if (this->var6)
  {
    var10 = this->var10;
    v12 = var10 + 16;
    if (var10 + 16 > this->var9)
    {
      v13 = 2 * var10 + 16;
      this->var9 = v13;
      v14 = malloc_type_realloc(this->var11, v13, 0x100004077774924uLL);
      this->var11 = v14;
      if (!v14)
      {
        TSUSetCrashReporterInfo();
        v19 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "int Path::AddPoint(float, float, float, BOOL)", "int Path::AddPoint(float, float, float, BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm", 634);
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v21, v23, 634, 1, "Unable to allocate memory.");

        TSUCrashBreakpoint();
        abort();
      }
    }

    result = this->var8;
    if (a5)
    {
      this->var8 = result + 1;
      this->var10 = v12;
      var11 = this->var11;
      v16 = 1;
    }

    else
    {
      var11 = this->var11;
      if (result >= 1)
      {
        v17 = &var11[16 * result];
        if (*(v17 - 3) == a2 && *(v17 - 2) == a3)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v16 = 0;
      this->var8 = result + 1;
      this->var10 = v12;
    }

    v18 = &var11[16 * result];
    *v18 = v16;
    *(v18 + 1) = a2;
    *(v18 + 2) = a3;
    *(v18 + 3) = a4;
  }

  else
  {

    return Path::AddPoint(this, a2, a3, a5);
  }

  return result;
}

uint64_t Path::AddPoint(Path *this, float a2, float a3, float a4, int a5, float a6, BOOL a7)
{
  if (this->var7)
  {
    if (this->var6)
    {
      var10 = this->var10;
      v15 = var10 + 24;
      if (var10 + 24 > this->var9)
      {
        v16 = 2 * var10 + 24;
        this->var9 = v16;
        v17 = malloc_type_realloc(this->var11, v16, 0x100004077774924uLL);
        this->var11 = v17;
        if (!v17)
        {
          TSUSetCrashReporterInfo();
          v23 = MEMORY[0x277D81150];
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "int Path::AddPoint(float, float, float, int, float, BOOL)", "int Path::AddPoint(float, float, float, int, float, BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm", 684);
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v25, v27, 684, 1, "Unable to allocate memory.");

          TSUCrashBreakpoint();
          abort();
        }
      }

      result = this->var8;
      if (a7)
      {
        this->var8 = result + 1;
        this->var10 = v15;
        var11 = this->var11;
        v20 = 1;
      }

      else
      {
        var11 = this->var11;
        if (result >= 1)
        {
          v21 = &var11[24 * result];
          if (*(v21 - 5) == a2 && *(v21 - 4) == a3)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v20 = 0;
        this->var8 = result + 1;
        this->var10 = v15;
      }

      v22 = &var11[24 * result];
      *v22 = v20;
      *(v22 + 1) = a2;
      *(v22 + 2) = a3;
      *(v22 + 3) = a4;
      *(v22 + 4) = a5;
      *(v22 + 5) = a6;
    }

    else
    {

      return Path::AddPoint(this, a2, a3, a5, a6, a7);
    }
  }

  else
  {

    return Path::AddPoint(this, a2, a3, a4, a7);
  }

  return result;
}

double Path::AddForcedPoint(Path *this, double result, float a3)
{
  if (this->var7)
  {

    Path::AddForcedPoint(this, *&result, a3, -1, 0.0);
  }

  else if (this->var6)
  {

    *&result = Path::AddForcedPoint(this, *&result, a3, 1.0);
  }

  else
  {
    var10 = this->var10;
    v5 = var10 + 12;
    if (var10 + 12 > this->var9)
    {
      v6 = 2 * var10 + 12;
      this->var9 = v6;
      v7 = malloc_type_realloc(this->var11, v6, 0x100004077774924uLL);
      this->var11 = v7;
      if (!v7)
      {
        TSUSetCrashReporterInfo();
        v12 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "int Path::AddForcedPoint(float, float)", "int Path::AddForcedPoint(float, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm", 710);
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v14, v16, 710, 1, "Unable to allocate memory.");

        TSUCrashBreakpoint();
        abort();
      }
    }

    var8 = this->var8;
    v9 = var8 - 1;
    if (var8 >= 1)
    {
      var11 = this->var11;
      if (!*&var11[12 * v9])
      {
        this->var8 = var8 + 1;
        this->var10 = v5;
        v11 = &var11[12 * var8];
        *v11 = 2;
        result = *&var11[12 * v9 + 4];
        *(v11 + 4) = result;
      }
    }
  }

  return result;
}

float Path::AddForcedPoint(Path *this, double a2, float a3, int a4, float a5)
{
  if (this->var7)
  {
    if (this->var6)
    {

      *&a2 = Path::AddForcedPoint(this, *&a2, a3, 1.0, a4, a5);
    }

    else
    {
      var10 = this->var10;
      v7 = var10 + 20;
      if (var10 + 20 > this->var9)
      {
        v8 = 2 * var10 + 20;
        this->var9 = v8;
        v9 = malloc_type_realloc(this->var11, v8, 0x100004077774924uLL);
        this->var11 = v9;
        if (!v9)
        {
          TSUSetCrashReporterInfo();
          v15 = MEMORY[0x277D81150];
          v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "int Path::AddForcedPoint(float, float, int, float)", "int Path::AddForcedPoint(float, float, int, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm", 758);
          v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v17, v19, 758, 1, "Unable to allocate memory.");

          TSUCrashBreakpoint();
          abort();
        }
      }

      var8 = this->var8;
      v11 = var8 - 1;
      if (var8 >= 1)
      {
        var11 = this->var11;
        if (!*&var11[20 * v11])
        {
          this->var8 = var8 + 1;
          this->var10 = v7;
          v13 = &var11[20 * var8];
          *v13 = 2;
          v14 = &var11[20 * v11];
          *(v13 + 4) = *(v14 + 4);
          *(v13 + 3) = *(v14 + 3);
          LODWORD(a2) = *(v14 + 4);
          *(v13 + 4) = LODWORD(a2);
        }
      }
    }
  }

  else
  {

    a2 = Path::AddForcedPoint(this, a2, a3);
  }

  return *&a2;
}

float Path::AddForcedPoint(Path *this, float result, float a3, float a4)
{
  if (this->var7)
  {

    return Path::AddForcedPoint(this, result, a3, a4, -1, 0.0);
  }

  else if (this->var6)
  {
    var10 = this->var10;
    v6 = var10 + 16;
    if (var10 + 16 > this->var9)
    {
      v7 = 2 * var10 + 16;
      this->var9 = v7;
      v8 = malloc_type_realloc(this->var11, v7, 0x100004077774924uLL);
      this->var11 = v8;
      if (!v8)
      {
        TSUSetCrashReporterInfo();
        v13 = MEMORY[0x277D81150];
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "int Path::AddForcedPoint(float, float, float)", "int Path::AddForcedPoint(float, float, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm", 734);
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v15, v17, 734, 1, "Unable to allocate memory.");

        TSUCrashBreakpoint();
        abort();
      }
    }

    var8 = this->var8;
    if (var8 >= 1)
    {
      var11 = this->var11;
      if (!*&var11[16 * (var8 - 1)])
      {
        this->var8 = var8 + 1;
        this->var10 = v6;
        v11 = &var11[16 * var8];
        *v11 = 2;
        v12 = &var11[16 * (var8 - 1)];
        *(v11 + 4) = *(v12 + 4);
        result = *(v12 + 3);
        *(v11 + 3) = result;
      }
    }
  }

  else
  {

    Path::AddForcedPoint(this, result, a3);
  }

  return result;
}

float Path::AddForcedPoint(Path *this, float result, float a3, float a4, int a5, float a6)
{
  if (this->var7)
  {
    if (this->var6)
    {
      var10 = this->var10;
      v8 = var10 + 24;
      if (var10 + 24 > this->var9)
      {
        v9 = 2 * var10 + 24;
        this->var9 = v9;
        v10 = malloc_type_realloc(this->var11, v9, 0x100004077774924uLL);
        this->var11 = v10;
        if (!v10)
        {
          TSUSetCrashReporterInfo();
          v16 = MEMORY[0x277D81150];
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "int Path::AddForcedPoint(float, float, float, int, float)", "int Path::AddForcedPoint(float, float, float, int, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm", 784);
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v18, v20, 784, 1, "Unable to allocate memory.");

          TSUCrashBreakpoint();
          abort();
        }
      }

      var8 = this->var8;
      v12 = var8 - 1;
      if (var8 >= 1)
      {
        var11 = this->var11;
        if (!*&var11[12 * v12])
        {
          this->var8 = var8 + 1;
          this->var10 = v8;
          v14 = &var11[24 * var8];
          *v14 = 2;
          v15 = &var11[24 * v12];
          *(v14 + 4) = *(v15 + 4);
          *(v14 + 3) = *(v15 + 3);
          *(v14 + 4) = *(v15 + 4);
          result = *(v15 + 5);
          *(v14 + 5) = result;
        }
      }
    }

    else
    {

      Path::AddForcedPoint(this, result, a3, a5, a6);
    }
  }

  else
  {

    Path::AddForcedPoint(this, result, a3, a4);
  }

  return result;
}

uint64_t Path::Winding(Path *this)
{
  var8 = this->var8;
  if (var8 < 2)
  {
    return 0;
  }

  v3 = (var8 - 1);
  var11 = this->var11;
  if (this->var6)
  {
    v5 = (var11 + 24);
    v6 = 0.0;
    v7 = v3;
    v8 = *(var11 + 2);
    v9 = *(var11 + 1);
    do
    {
      v10 = *(v5 - 1);
      v11 = *v5;
      v6 = v6 + ((v9 + v10) * (*v5 - v8));
      v5 += 4;
      v8 = v11;
      v9 = v10;
      --v7;
    }

    while (v7);
    v12 = &var11[16 * v3];
  }

  else
  {
    v13 = (var11 + 20);
    v6 = 0.0;
    v14 = v3;
    v15 = *(var11 + 2);
    v16 = *(var11 + 1);
    do
    {
      v17 = *(v13 - 1);
      v18 = *v13;
      v6 = v6 + ((v16 + v17) * (*v13 - v15));
      v13 += 3;
      v15 = v18;
      v16 = v17;
      --v14;
    }

    while (v14);
    v12 = &var11[12 * v3];
  }

  if ((v6 + ((*(v12 + 1) + *(var11 + 1)) * (*(var11 + 2) - *(v12 + 2)))) > 0.0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void Path::PointAt(Path *a1, unsigned int a2, float32x2_t *a3, float a4)
{
  if ((a2 & 0x80000000) != 0 || a1->var2 <= a2)
  {
    *a3 = 0;
    return;
  }

  var3 = a1->var3;
  v9 = (var3 + 44 * a2);
  v10 = *(v9 + 28);
  v11 = v9[1];
  v46 = *v9;
  *v47[0].f32 = v11;
  *&v47[1].i32[1] = v10;
  v12 = v46 & 0xF;
  if ((v46 & 0xF) == 0)
  {
    v13 = a2 + 1;
    v10.n128_u64[0] = 0;
    goto LABEL_8;
  }

  if ((v46 & 0xD) == 5)
  {
LABEL_5:
    v13 = a2 - 1;
    v10.n128_u32[0] = 1.0;
LABEL_8:
    Path::PointAt(a1, v13, a3, v10);
    return;
  }

  if ((v46 & 0xFu) <= 2)
  {
    if (v12 == 1)
    {
      Path::PrevPoint(a1, a2 - 1, &v38, &v39);
      v42[0] = 0.0;
      sub_27679CE84(v47, a3, &v44, v42, a4, *&v38, v39);
    }

    else if (v12 == 2)
    {
      Path::PrevPoint(a1, a2 - 1, &v38, &v39);
      v42[0] = 0.0;
      v43 = 0;
      v30.i32[0] = v38;
      sub_27679D178(v47, 0, a3, &v44, v42, &v43, a4, v30, v39);
    }
  }

  else
  {
    switch(v12)
    {
      case 6:
        goto LABEL_14;
      case 4:
        Path::PrevPoint(a1, a2 - 1, &v38, &v39);
        v42[0] = 0.0;
        v43 = 0;
        sub_27679D338(v47, a3, &v44, v42, &v43, a4, *&v38, v39);
        return;
      case 3:
LABEL_14:
        v14 = 0;
        v15 = 0;
        v16 = -1;
        do
        {
          v18 = a2 + v14;
          if ((a2 + v14) < 0)
          {
            goto LABEL_5;
          }

          v15 -= 44;
          ++v16;
          --v14;
        }

        while ((*(var3 + 11 * v18) & 0xF) != 3);
        v19 = var3 + 44 * v18;
        v22 = *(v19 + 4);
        v20 = (v19 + 16);
        v21 = v22;
        if ((v22 + a2 - v16) < a2)
        {
          goto LABEL_5;
        }

        if (v21 == 1 || v16 <= 0)
        {
          Path::PrevPoint(a1, a2 + v14, &v38, &v39);
          v42[0] = 0.0;
          v43 = 0;
          LODWORD(v11) = v38;
          v24 = v39;
          v25 = a1->var3 + 44 * v18;
          v26 = (v25 + 60);
          v20 = (v25 + 16);
        }

        else
        {
          if (v16 == 1)
          {
            Path::PrevPoint(a1, a2 + v14, &v44, &v45);
            v43 = 0;
            v41 = 0;
            v38 = 1;
            v31 = a1->var3;
            v32 = v31 + 44 * a2 + v15 + 44;
            v33 = *(v32 + 15);
            v26 = (v32 + 60);
            v34 = (v31 + 44 * a2 + v15 + 88);
            v39 = (v33 + v34[15]) * 0.5;
            v40 = (v26->f32[1] + v34[16]) * 0.5;
            *&v11 = v44;
            v24 = v45;
            v20 = &v38;
            v27 = v42;
            v28 = &v43;
            v29 = &v41;
            goto LABEL_34;
          }

          v26 = (var3 + 44 * a2 + 16);
          if (v21 == v16)
          {
            v44 = 0.0;
            v42[0] = 0.0;
            *&v11 = (v26->f32[0] + *(v9 - 7)) * 0.5;
            v24 = (*(var3 + 11 * a2 + 5) + *(v9 - 6)) * 0.5;
            v27 = &v38;
            v28 = &v44;
            v29 = v42;
            goto LABEL_34;
          }

          v42[0] = 0.0;
          v43 = 0;
          v35 = v26->f32[0];
          v36 = *(var3 + 11 * a2 + 5);
          *&v11 = (v26->f32[0] + *(v9 - 7)) * 0.5;
          v24 = (v36 + *(v9 - 6)) * 0.5;
          v38 = 1;
          v37 = (var3 + 44 * a2 + 44);
          v39 = (v35 + v37[4]) * 0.5;
          v40 = (v36 + v37[5]) * 0.5;
          v20 = &v38;
        }

        v27 = &v44;
        v28 = v42;
        v29 = &v43;
LABEL_34:
        sub_27679D754(v26, v20, 0, a3, v27, v28, v29, a4, *&v11, v24);
        break;
    }
  }
}

void Path::PointAndTangentAt(Path *a1, unsigned int a2, float32x2_t *a3, float *a4, float a5)
{
  if ((a2 & 0x80000000) != 0 || a1->var2 <= a2)
  {
    *a3 = 0;
    *a4 = 0;
    return;
  }

  var3 = a1->var3;
  v11 = (var3 + 44 * a2);
  v12 = *(v11 + 28);
  v13 = v11[1];
  v46 = *v11;
  *v47[0].f32 = v13;
  *&v47[1].i32[1] = v12;
  v14 = v46 & 0xF;
  if ((v46 & 0xF) == 0)
  {
    v15 = a2 + 1;
    v12.n128_u64[0] = 0;
    goto LABEL_8;
  }

  if ((v46 & 0xD) == 5)
  {
LABEL_5:
    v15 = a2 - 1;
    v12.n128_u32[0] = 1.0;
LABEL_8:
    Path::PointAndTangentAt(a1, v15, a3, a4, v12);
    return;
  }

  if ((v46 & 0xFu) <= 2)
  {
    if (v14 == 1)
    {
      Path::PrevPoint(a1, a2 - 1, &v39, &v40);
      v43 = 0.0;
      sub_27679CE84(v47, a3, a4, &v43, a5, v39, v40);
    }

    else if (v14 == 2)
    {
      Path::PrevPoint(a1, a2 - 1, &v39, &v40);
      v43 = 0.0;
      v45 = 0;
      v31.f32[0] = v39;
      sub_27679D178(v47, 0, a3, a4, &v43, &v45, a5, v31, v40);
    }
  }

  else
  {
    switch(v14)
    {
      case 6:
        goto LABEL_14;
      case 4:
        Path::PrevPoint(a1, a2 - 1, &v39, &v40);
        v43 = 0.0;
        v45 = 0;
        sub_27679D338(v47, a3, a4, &v43, &v45, a5, v39, v40);
        return;
      case 3:
LABEL_14:
        v16 = 0;
        v17 = 0;
        v18 = -1;
        do
        {
          v20 = a2 + v16;
          if ((a2 + v16) < 0)
          {
            goto LABEL_5;
          }

          v17 -= 44;
          ++v18;
          --v16;
        }

        while ((*(var3 + 11 * v20) & 0xF) != 3);
        v21 = var3 + 44 * v20;
        v24 = *(v21 + 4);
        v22 = (v21 + 16);
        v23 = v24;
        if ((v24 + a2 - v18) < a2)
        {
          goto LABEL_5;
        }

        if (v23 == 1 || v18 <= 0)
        {
          Path::PrevPoint(a1, a2 + v16, &v39, &v40);
          v43 = 0.0;
          v45 = 0;
          *&v13 = v39;
          v26 = v40;
          v27 = a1->var3 + 44 * v20;
          v28 = (v27 + 60);
          v22 = (v27 + 16);
        }

        else
        {
          if (v18 == 1)
          {
            Path::PrevPoint(a1, a2 + v16, &v43, &v44);
            v45 = 0;
            v42 = 0;
            LODWORD(v39) = 1;
            v32 = a1->var3;
            v33 = v32 + 44 * a2 + v17 + 44;
            v34 = *(v33 + 15);
            v28 = (v33 + 60);
            v35 = (v32 + 44 * a2 + v17 + 88);
            v40 = (v34 + v35[15]) * 0.5;
            v41 = (v28->f32[1] + v35[16]) * 0.5;
            *&v13 = v43;
            v26 = v44;
            v22 = &v39;
            v29 = &v45;
            v30 = &v42;
            goto LABEL_34;
          }

          v28 = (var3 + 44 * a2 + 16);
          if (v23 == v18)
          {
            v39 = 0.0;
            v43 = 0.0;
            *&v13 = (v28->f32[0] + *(v11 - 7)) * 0.5;
            v26 = (*(var3 + 11 * a2 + 5) + *(v11 - 6)) * 0.5;
            v29 = &v39;
            v30 = &v43;
            goto LABEL_34;
          }

          v43 = 0.0;
          v45 = 0;
          v36 = v28->f32[0];
          v37 = *(var3 + 11 * a2 + 5);
          *&v13 = (v28->f32[0] + *(v11 - 7)) * 0.5;
          v26 = (v37 + *(v11 - 6)) * 0.5;
          LODWORD(v39) = 1;
          v38 = (var3 + 44 * a2 + 44);
          v40 = (v36 + v38[4]) * 0.5;
          v41 = (v37 + v38[5]) * 0.5;
          v22 = &v39;
        }

        v29 = &v43;
        v30 = &v45;
LABEL_34:
        sub_27679D754(v28, v22, 0, a3, a4, v29, v30, a5, *&v13, v26);
        break;
    }
  }
}

uint64_t sub_27677EF1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"TSDMovieCompatibilityOptimizeForiOSOnInsert");

  return v5;
}

void sub_27677EF68(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  v6 = v4;
  if (v3)
  {
    objc_msgSend_setBool_forKey_(v4, v5, 1, @"TSDMovieCompatibilityOptimizeForiOSOnInsert");
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v4, v5, @"TSDMovieCompatibilityOptimizeForiOSOnInsert");
  }
}

uint64_t sub_27677EFDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"TSDMovieCompatibilityOptimizeForOlderMachinesOnInsert");

  return v5;
}

void sub_27677F028(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v5, v4, a3, @"TSDMovieCompatibilityOptimizeForOlderMachinesOnInsert");
}

uint64_t sub_27677F08C(void *a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_shouldOptimizeForiOSOnInsert(a1, a2, a3))
  {
    return 2;
  }

  v6 = objc_msgSend_currentCapabilities(TSDCapabilities, v4, v5);
  hasHEVCHardwareEncoding = objc_msgSend_hasHEVCHardwareEncoding(v6, v7, v8);

  if (!hasHEVCHardwareEncoding)
  {
    return 2;
  }

  return MEMORY[0x2821F9670](a1, sel_defaultPresetWhenConvertingToPlayableOnAllDevicesPreference, v10);
}

uint64_t sub_27677F108(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  v6 = objc_msgSend_integerForKey_(v4, v5, @"TSDPlayableOnAllDevicesPresetUserDefault");

  return MEMORY[0x2821F9670](a1, sel_p_defaultPresetWhenConvertingToPlayableonAllDevicesPreferenceForPresetDefaultValue_, v6);
}

unint64_t sub_27677F174(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_2766EE284(a3);
  if (!result)
  {
    return 2;
  }

  return result;
}

void sub_27677F19C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  v6 = v4;
  if (a3)
  {
    objc_msgSend_setInteger_forKey_(v4, v5, a3, @"TSDPlayableOnAllDevicesPresetUserDefault");
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v4, v5, @"TSDPlayableOnAllDevicesPresetUserDefault");
  }
}

void Path::ConvertWithBackData(Path *this, float a2)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::CancelBezier(this);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    Path::CloseSubpath(this, 0);
  }

  Path::SetBackData(this, 1);
  Path::ResetPoints(this, this->var2);
  if (this->var2 >= 1)
  {
    var3 = this->var3;
    v5 = 1.0;
    if ((*var3 & 0x10) != 0)
    {
      v5 = *(var3 + 7);
    }

    v6 = *(var3 + 4);
    v7 = *(var3 + 5);
    v8 = this->var6 ? Path::AddPoint(this, v6, v7, v5, 0, 0.0, 1) : Path::AddPoint(this, v6, v7, 0, 0.0, 1);
    v10 = v8;
    if (this->var2 >= 2)
    {
      v11 = 2.0;
      v12 = 1;
      do
      {
        v13 = this->var3;
        v14 = (v13 + 44 * v12);
        v15 = *v14;
        v16 = *v14 & 0xF;
        if (v16 <= 2)
        {
          switch(v16)
          {
            case 0u:
              v17 = 1.0;
              if ((v15 & 0x10) != 0)
              {
                v17 = v14[7];
              }

              v19 = v14[4];
              v18 = v14[5];
              if (this->var6)
              {
                v27 = Path::AddPoint(this, v19, v18, v17, v12, 0.0, 1);
              }

              else
              {
                v27 = Path::AddPoint(this, v19, v18, v12, 0.0, 1);
              }

              v10 = v27;
              goto LABEL_70;
            case 1u:
              v17 = 1.0;
              if ((v15 & 0x10) != 0)
              {
                v17 = v14[6];
              }

              v19 = v14[4];
              v18 = v14[5];
              if (!this->var6)
              {
                goto LABEL_69;
              }

LABEL_44:
              Path::AddPoint(this, v19, v18, v17, v12, 1.0, 0);
LABEL_70:
              ++v12;
              goto LABEL_71;
            case 2u:
              v17 = 1.0;
              if ((v15 & 0x10) != 0)
              {
                v17 = v14[10];
              }

              v19 = v14[4];
              v18 = v14[5];
              v23 = v14[6];
              v24 = v14[7];
              v25 = v14[8];
              v26 = v14[9];
              if (!this->var6)
              {
                Path::RecCubicTo(this, v6, v7, v23, v24, v19, v18, v25, v26, 8, v12, a2, 0.0, 1.0);
                goto LABEL_69;
              }

              Path::RecCubicTo(this, v6, v7, v5, v23, v24, v19, v18, v17, 8, v12, v25, v26, a2, 0.0, 1.0);
              goto LABEL_44;
          }
        }

        else if ((*v14 & 0xFu) > 4)
        {
          if (v16 == 5)
          {
            var11 = this->var11;
            if (this->var6)
            {
              v31 = &var11[24 * v10];
              v19 = v31[1];
              v18 = v31[2];
              v17 = v31[3];
              goto LABEL_44;
            }

            v60 = &var11[20 * v10];
            v19 = *(v60 + 1);
            v18 = *(v60 + 2);
            Path::AddPoint(this, v19, v18, v12, 1.0, 0);
            v17 = 0.0;
            goto LABEL_70;
          }

          if (v16 == 7)
          {
            if (this->var6)
            {
              Path::AddForcedPoint(this, v6, v7, v5, v12, 1.0);
            }

            else
            {
              *&v9 = v6;
              Path::AddForcedPoint(this, v9, v7, v12, 1.0);
            }

            ++v12;
          }
        }

        else
        {
          if (v16 == 3)
          {
            v28 = *(v14 + 4);
            v19 = v14[5];
            v18 = v14[6];
            if ((v15 & 0x10) != 0)
            {
              v17 = v14[7];
              if (v28 < 1)
              {
LABEL_83:
                v71 = v12 + v28 - 1;
                if (this->var6)
                {
                  Path::AddPoint(this, v19, v18, v17, v71, 1.0, 0);
                }

                else
                {
                  Path::AddPoint(this, v19, v18, v71, 1.0, 0);
                }

                v12 += v28 + 1;
                goto LABEL_71;
              }

              v29 = v14[17];
            }

            else
            {
              v17 = 1.0;
              v29 = 1.0;
              if (v28 <= 0)
              {
                goto LABEL_83;
              }
            }

            v75 = v14[5];
            v76 = v14[6];
            v74 = v17;
            v33 = v14[15];
            v32 = v14[16];
            v34 = -(v33 - (v6 * v11));
            v35 = -(v32 - (v7 * v11));
            v36 = -(v29 - (v5 * v11));
            if (v28 < 2)
            {
              v57 = -v33;
              v58 = -v32;
              v59 = -v29;
            }

            else
            {
              v73 = v10;
              v37 = 0;
              v38 = (v13 + 44 * v12 + 112);
              v39 = v12;
              do
              {
                v40 = v33;
                v41 = v32;
                v42 = v29;
                v43 = 1.0;
                if ((v15 & 0x10) != 0)
                {
                  v43 = *v38;
                }

                v78 = v43;
                v45 = *(v38 - 2);
                v44 = *(v38 - 1);
                v46 = (v34 + v33) * 0.5;
                v47 = 0.5;
                v48 = v35 + v32;
                v49 = v48 * 0.5;
                v50 = (v36 + v42) * 0.5;
                if (v37)
                {
                  v51 = *(v38 - 2);
                  v52 = *(v38 - 1);
                  v53 = v39 - 1;
                  if (this->var6)
                  {
                    Path::AddPoint(this, v46, v48 * 0.5, v50, v53, 1.0, 0);
                  }

                  else
                  {
                    Path::AddPoint(this, v46, v48 * 0.5, v53, 1.0, 0);
                  }

                  v47 = 0.5;
                  v44 = v52;
                  v45 = v51;
                }

                v54 = v45;
                v55 = (v40 + v45) * v47;
                v32 = v44;
                v56 = (v41 + v44) * v47;
                if (this->var6)
                {
                  Path::RecBezierTo(this, v40, v41, v42, v46, v49, v50, v55, v56, 8, v39, (v42 + v78) * v47, a2, 0.0, 1.0);
                }

                else
                {
                  Path::RecBezierTo(this, v40, v41, v46, v49, v55, v56, a2, 8, 0.0, v39, 1.0);
                }

                --v37;
                ++v39;
                v38 += 11;
                v36 = v42;
                v35 = v41;
                v34 = v40;
                v29 = v78;
                v33 = v54;
              }

              while (1 - v28 != v37);
              v57 = -v54;
              v58 = -v32;
              v59 = -v78;
              v34 = v40;
              v35 = v41;
              v36 = v42;
              v10 = v73;
            }

            v61 = (v34 + v33) * 0.5;
            v62 = 0.5;
            v63 = (v35 + v32) * 0.5;
            v64 = v29;
            v65 = (v36 + v29) * 0.5;
            if (v28 != 1)
            {
              v79 = v59;
              v66 = v33;
              v67 = v12 + v28 - 2;
              if (this->var6)
              {
                Path::AddPoint(this, (v34 + v33) * 0.5, (v35 + v32) * 0.5, v65, v67, 1.0, 0);
              }

              else
              {
                Path::AddPoint(this, v61, (v35 + v32) * 0.5, v67, 1.0, 0);
              }

              v62 = 0.5;
              v33 = v66;
              v59 = v79;
            }

            v68 = v58 + (v76 * 2.0);
            v11 = 2.0;
            v69 = (v33 + (v57 + (v75 * 2.0))) * v62;
            v70 = (v32 + v68) * v62;
            if (this->var6)
            {
              v17 = v74;
              Path::RecBezierTo(this, v33, v32, v64, v61, v63, v65, v69, v70, 8, v12 + v28 - 1, (v64 + (v59 + (v74 * 2.0))) * v62, a2, 0.0, 1.0);
            }

            else
            {
              Path::RecBezierTo(this, v33, v32, v61, v63, (v33 + (v57 + (v75 * 2.0))) * v62, v70, a2, 8, 0.0, v12 + v28 - 1, 1.0);
              v17 = v74;
            }

            v19 = v75;
            v18 = v76;
            goto LABEL_83;
          }

          if (v16 == 4)
          {
            v17 = 1.0;
            if ((v15 & 0x10) != 0)
            {
              v17 = v14[10];
            }

            v19 = v14[4];
            v18 = v14[5];
            v20 = v14[7];
            v21 = *(v14 + 36);
            v22 = *(v14 + 37);
            if (this->var6)
            {
              Path::DoArc(this, v6, v7, v5, v19, v18, v17, v14[6], v20, v21, v22, v12, v14[8], v72);
              goto LABEL_44;
            }

            Path::DoArc(this, v6, v7, v14[4], v14[5], v14[6], v14[7], v14[8], v21, v22, v20, v12);
LABEL_69:
            Path::AddPoint(this, v19, v18, v12, 1.0, 0);
            goto LABEL_70;
          }
        }

        v18 = 0.0;
        v17 = 0.0;
        v19 = 0.0;
LABEL_71:
        v6 = v19;
        v7 = v18;
        v5 = v17;
      }

      while (v12 < this->var2);
    }
  }
}

Path *Path::RecCubicTo(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, int a10, int a11, float a12, float a13, float a14, float a15, float a16)
{
  v20 = this;
  while (1)
  {
    v24 = a7 - a2;
    v25 = a8 - a3;
    v26 = sqrtf((v25 * v25) + (v24 * v24));
    if (v26 >= 0.01)
    {
      break;
    }

    v27 = a14;
    if (((a5 * a5) + (a6 * a6)) >= a14)
    {
      if (a10 < 1)
      {
        return this;
      }
    }

    else if (((a12 * a12) + (a13 * a13)) < a14 || a10 < 1)
    {
      return this;
    }

LABEL_24:
    v36 = (a4 + a9) * 0.5;
    v37 = ((a2 + a7) * 0.5) + ((a5 - a12) * 0.125);
    v38 = ((a3 + a8) * 0.5) + ((a6 - a13) * 0.125);
    v41 = ((v24 * 3.0) * 0.25) - ((a5 + a12) * 0.125);
    v42 = ((v25 * 3.0) * 0.25) - ((a6 + a13) * 0.125);
    v39 = (a15 + a16) * 0.5;
    Path::RecCubicTo(v20, a2, a3, a4, a5 * 0.5, a6 * 0.5, v37, v38, v36, v41, v42, v27, --a10, a15, v39, a11);
    this = Path::AddPoint(v20, v37, v38, v36, a11, v39, 0);
    a12 = a12 * 0.5;
    a2 = v37;
    a3 = v38;
    a13 = a13 * 0.5;
    a4 = v36;
    a5 = v41;
    a6 = v42;
    a15 = v39;
  }

  v29 = (v24 * a6) - (v25 * a5);
  v30 = -v29;
  if (v29 >= 0.0)
  {
    v30 = (v24 * a6) - (v25 * a5);
  }

  v31 = -((v24 * a13) - (v25 * a12));
  if (((v24 * a13) - (v25 * a12)) >= 0.0)
  {
    v31 = (v24 * a13) - (v25 * a12);
  }

  v32 = v30 / v26;
  v33 = v31 / v26;
  v27 = a14;
  v35 = v33 < a14 && v32 < a14;
  if (a10 >= 1 && !v35)
  {
    goto LABEL_24;
  }

  return this;
}

Path *Path::RecCubicTo(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, int a10, int a11, float a12, float a13, float a14)
{
  v20 = this;
  while (1)
  {
    v22 = a6 - a2;
    v23 = a7 - a3;
    v24 = sqrtf((v23 * v23) + (v22 * v22));
    if (v24 >= 0.01)
    {
      break;
    }

    v25 = a12;
    if (((a4 * a4) + (a5 * a5)) >= a12)
    {
      if (a10 < 1)
      {
        return this;
      }
    }

    else if (((a8 * a8) + (a9 * a9)) < a12 || a10 < 1)
    {
      return this;
    }

LABEL_24:
    v34 = ((a2 + a6) * 0.5) + ((a4 - a8) * 0.125);
    v35 = ((a3 + a7) * 0.5) + ((a5 - a9) * 0.125);
    v37 = ((v23 * 3.0) * 0.25) - ((a5 + a9) * 0.125);
    v38 = ((v22 * 3.0) * 0.25) - ((a4 + a8) * 0.125);
    v36 = (a13 + a14) * 0.5;
    Path::RecCubicTo(v20, a2, a3, a4 * 0.5, a5 * 0.5, v34, v35, v38, v37, v25, --a10, a13, v36, a11);
    this = Path::AddPoint(v20, v34, v35, a11, v36, 0);
    a8 = a8 * 0.5;
    a2 = v34;
    a9 = a9 * 0.5;
    a3 = v35;
    a5 = v37;
    a4 = v38;
    a13 = v36;
  }

  v27 = (v22 * a5) - (v23 * a4);
  v28 = -v27;
  if (v27 >= 0.0)
  {
    v28 = (v22 * a5) - (v23 * a4);
  }

  v29 = -((v22 * a9) - (v23 * a8));
  if (((v22 * a9) - (v23 * a8)) >= 0.0)
  {
    v29 = (v22 * a9) - (v23 * a8);
  }

  v30 = v28 / v24;
  v31 = v29 / v24;
  v25 = a12;
  v33 = v31 < a12 && v30 < a12;
  if (a10 >= 1 && !v33)
  {
    goto LABEL_24;
  }

  return this;
}

void Path::DoArc(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, int a10, int a11, int a12, float a13, float a14)
{
  if (a8 > 0.0001 && a9 > 0.0001)
  {
    v20 = a5 - a2;
    v21 = a6 - a3;
    v22 = __sincosf_stret(a13);
    cosval = v22.__cosval;
    sinval = v22.__sinval;
    v71 = a8;
    v25 = ((v21 * v22.__sinval) + (v22.__cosval * v20)) / a8;
    v26 = ((v21 * v22.__cosval) - (v22.__sinval * v20)) / a9;
    v27 = 4.0;
    if (((v26 * v26) + (v25 * v25)) < 4.0)
    {
      v27 = (v26 * v26) + (v25 * v25);
    }

    v28 = (v27 * -0.25) + 1.0;
    if (v28 < 0.0)
    {
      v28 = 0.0;
    }

    v29 = sqrtf(v28);
    v30 = sqrtf(v27);
    v31 = -v25 / v30;
    v32 = (v26 / v30) * v29;
    v33 = v25 * 0.5;
    v34 = -v32 - (v25 * 0.5);
    v35 = v26 * 0.5;
    v36 = 3.1416;
    v37.i32[0] = 1078530011;
    if (v34 >= -1.0)
    {
      v37.i32[0] = 0;
      if (v34 <= 1.0)
      {
        v38 = acosf(v34);
        v36 = 3.1416;
        sinval = v22.__sinval;
        cosval = v22.__cosval;
        v37.f32[0] = v38;
        if (v35 > -(v31 * v29))
        {
          v37.f32[0] = 6.28318531 - v38;
        }
      }
    }

    v39 = -sinval;
    v40 = v31 * v29;
    v41 = v33 - v32;
    if ((v33 - v32) >= -1.0)
    {
      v36 = 0.0;
      if (v41 <= 1.0)
      {
        v42 = cosval;
        v43 = sinval;
        v44 = -sinval;
        v80 = v37.i32[0];
        v45 = acosf(v41);
        v37.i32[0] = v80;
        v39 = v44;
        sinval = v43;
        cosval = v42;
        v36 = v45;
        if (v35 < v40)
        {
          v36 = 6.28318531 - v45;
        }
      }
    }

    v46 = ((v40 * a9) * v39) + (cosval * (v32 * v71));
    v47 = (cosval * (v40 * a9)) + (sinval * (v32 * v71));
    v37.f32[1] = v36;
    v48 = vrev64_s32(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(v37), vdupq_n_s64(0x400921FB54442D18uLL))));
    v49 = vcvtq_f64_f32(v48);
    v50 = COERCE_DOUBLE(vbsl_s8(vmovn_s64(vmvnq_s8(vcgeq_f64(v49, vdupq_n_s64(0x401921FB54442D18uLL)))), v48, vcvt_f32_f64(vaddq_f64(v49, vdupq_n_s64(0xC01921FB54442D18)))));
    if (a11)
    {
      if (a10)
      {
        v47 = -v47;
        v46 = -v46;
        v51 = v50;
      }

      else
      {
        v51 = *&v37;
      }

      v52 = *(&v51 + 1);
      if (*&v51 < *(&v51 + 1))
      {
        v53 = *&v51 + 6.28318531;
        *&v51 = v53;
      }

      v81 = *&v51;
      v54 = *&v51 + -0.1;
      if (*(&v51 + 1) < v54)
      {
        v75 = ((a3 + a6) * 0.5) + v47;
        v78 = ((a2 + a5) * 0.5) + v46;
        v55 = cosval * v71;
        v56 = v39 * a9;
        v57 = sinval * v71;
        v58 = cosval * a9;
        v59 = *&v51 - *(&v51 + 1);
        do
        {
          v60 = __sincosf_stret(v54);
          Path::AddPoint(this, (v78 + (v55 * v60.__cosval)) + (v56 * v60.__sinval), (v75 + (v57 * v60.__cosval)) + (v58 * v60.__sinval), (((v81 - v54) * a7) + (a4 * (v54 - v52))) / v59, a12, (v81 - v54) / v59, 0);
          v54 = v54 + -0.1;
        }

        while (v52 < v54);
      }
    }

    else
    {
      if (a10)
      {
        v61 = *&v37;
      }

      else
      {
        v47 = -v47;
        v46 = -v46;
        v61 = v50;
      }

      v62 = *(&v61 + 1);
      if (*&v61 > *(&v61 + 1))
      {
        v63 = *&v61 + -6.28318531;
        *&v61 = v63;
      }

      v82 = *&v61;
      v64 = *&v61 + 0.1;
      if (*(&v61 + 1) > v64)
      {
        v76 = ((a3 + a6) * 0.5) + v47;
        v79 = ((a2 + a5) * 0.5) + v46;
        v65 = cosval * v71;
        v66 = v39 * a9;
        v67 = sinval * v71;
        v68 = cosval * a9;
        v69 = *(&v61 + 1) - *&v61;
        do
        {
          v70 = __sincosf_stret(v64);
          Path::AddPoint(this, (v79 + (v65 * v70.__cosval)) + (v66 * v70.__sinval), (v76 + (v67 * v70.__cosval)) + (v68 * v70.__sinval), (((v64 - v82) * a7) + (a4 * (v62 - v64))) / v69, a12, (v64 - v82) / v69, 0);
          v64 = v64 + 0.1;
        }

        while (v62 > v64);
      }
    }
  }
}

void Path::DoArc(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, int a9, int a10, float a11, int a12)
{
  if (a6 > 0.0001 && a7 > 0.0001)
  {
    v18 = a4 - a2;
    v19 = a5 - a3;
    v20 = __sincosf_stret(a8);
    cosval = v20.__cosval;
    v71 = a6;
    v22 = ((v19 * v20.__sinval) + (v20.__cosval * v18)) / a6;
    v23 = ((v19 * v20.__cosval) - (v20.__sinval * v18)) / a7;
    v24 = 4.0;
    if (((v23 * v23) + (v22 * v22)) < 4.0)
    {
      v24 = (v23 * v23) + (v22 * v22);
    }

    v25 = (v24 * -0.25) + 1.0;
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    v26 = sqrtf(v25);
    v27 = sqrtf(v24);
    v28 = -v22 / v27;
    v29 = (v23 / v27) * v26;
    v30 = v22 * 0.5;
    v31 = -v29 - (v22 * 0.5);
    v32 = v23 * 0.5;
    v33 = 3.1416;
    v34.i32[0] = 1078530011;
    if (v31 >= -1.0)
    {
      v34.i32[0] = 0;
      if (v31 <= 1.0)
      {
        v35 = v32;
        v36 = acosf(v31);
        v32 = v35;
        v33 = 3.1416;
        cosval = v20.__cosval;
        v34.f32[0] = v36;
        if (v35 > -(v28 * v26))
        {
          v34.f32[0] = 6.28318531 - v36;
        }
      }
    }

    v37 = -v20.__sinval;
    v38 = v28 * v26;
    v39 = v30 - v29;
    if ((v30 - v29) >= -1.0)
    {
      v33 = 0.0;
      if (v39 <= 1.0)
      {
        v40 = cosval;
        v77 = v34.i32[0];
        v41 = v32;
        v42 = acosf(v39);
        v34.i32[0] = v77;
        v37 = -v20.__sinval;
        cosval = v40;
        v33 = v42;
        if (v41 < v38)
        {
          v33 = 6.28318531 - v42;
        }
      }
    }

    v43 = (cosval * (v38 * a7)) + (v20.__sinval * (v29 * v71));
    v34.f32[1] = v33;
    v44 = -(((v38 * a7) * v37) + (cosval * (v29 * v71)));
    v45 = vrev64_s32(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(v34), vdupq_n_s64(0x400921FB54442D18uLL))));
    v46 = vcvtq_f64_f32(v45);
    v47 = COERCE_DOUBLE(vbsl_s8(vmovn_s64(vmvnq_s8(vcgeq_f64(v46, vdupq_n_s64(0x401921FB54442D18uLL)))), v45, vcvt_f32_f64(vaddq_f64(v46, vdupq_n_s64(0xC01921FB54442D18)))));
    if (a10)
    {
      if (a9)
      {
        v48 = -v43;
      }

      else
      {
        v44 = ((v38 * a7) * v37) + (cosval * (v29 * v71));
        v48 = (cosval * (v38 * a7)) + (v20.__sinval * (v29 * v71));
      }

      if (a9)
      {
        v49 = v47;
      }

      else
      {
        v49 = *&v34;
      }

      if (*&v49 < *(&v49 + 1))
      {
        v50 = *&v49 + 6.28318531;
        *&v49 = v50;
      }

      v75 = v49;
      v51 = *&v49 + -0.1;
      if (*(&v49 + 1) < v51)
      {
        v73 = ((a2 + a4) * 0.5) + v44;
        v52 = ((a3 + a5) * 0.5) + v48;
        v53 = a7;
        v54 = cosval * v71;
        v55 = v37 * v53;
        v56 = cosval * v53;
        do
        {
          v57 = __sincosf_stret(v51);
          Path::AddPoint(this, (v73 + (v54 * v57.__cosval)) + (v55 * v57.__sinval), (v52 + ((v20.__sinval * v71) * v57.__cosval)) + (v56 * v57.__sinval), a12, (*&v75 - v51) / (*&v75 - *(&v75 + 1)), 0);
          v51 = v51 + -0.1;
        }

        while (*(&v75 + 1) < v51);
      }
    }

    else
    {
      if (a9)
      {
        v44 = ((v38 * a7) * v37) + (cosval * (v29 * v71));
        v58 = (cosval * (v38 * a7)) + (v20.__sinval * (v29 * v71));
      }

      else
      {
        v58 = -v43;
      }

      if (a9)
      {
        v59 = *&v34;
      }

      else
      {
        v59 = v47;
      }

      if (*&v59 > *(&v59 + 1))
      {
        v60 = *&v59 + -6.28318531;
        *&v59 = v60;
      }

      v76 = v59;
      v61 = *&v59 + 0.1;
      if (*(&v59 + 1) > v61)
      {
        v74 = ((a2 + a4) * 0.5) + v44;
        v62 = ((a3 + a5) * 0.5) + v58;
        v63 = a7;
        v64 = cosval * v71;
        v65 = v37 * v63;
        v66 = cosval * v63;
        do
        {
          v67 = __sincosf_stret(v61);
          Path::AddPoint(this, (v74 + (v64 * v67.__cosval)) + (v65 * v67.__sinval), (v62 + ((v20.__sinval * v71) * v67.__cosval)) + (v66 * v67.__sinval), a12, (v61 - *&v76) / (*(&v76 + 1) - *&v76), 0);
          v61 = v61 + 0.1;
        }

        while (*(&v76 + 1) > v61);
      }
    }
  }
}

Path *Path::RecBezierTo(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, int a10, int a11, float a12, float a13, float a14, float a15)
{
  if (a10 >= 1)
  {
    v21 = this;
    v23 = a10 + 1;
    do
    {
      v24 = ((a5 - a2) * (a9 - a3)) - ((a6 - a3) * (a8 - a2));
      v25 = -v24;
      if (v24 >= 0.0)
      {
        v25 = ((a5 - a2) * (a9 - a3)) - ((a6 - a3) * (a8 - a2));
      }

      if (v25 < a13)
      {
        break;
      }

      v26 = ((a5 + a8) + (a2 * 2.0)) * 0.25;
      v27 = ((a6 + a9) + (a3 * 2.0)) * 0.25;
      v30 = ((a7 + a12) + (a4 * 2.0)) * 0.25;
      v28 = (a14 + a15) * 0.5;
      v29 = a4;
      Path::RecBezierTo(v21, (a2 + a5) * 0.5, (a3 + a6) * 0.5, (a4 + a7) * 0.5, a5, a6, a7, v26, v27, v30, a13, v23 - 2, a14, v28, a11);
      this = Path::AddPoint(v21, v26, v27, v30, a11, v28, 0);
      a2 = (a2 + a8) * 0.5;
      a3 = (a3 + a9) * 0.5;
      a5 = v26;
      --v23;
      a14 = v28;
      a4 = (v29 + a12) * 0.5;
      a7 = v30;
      a6 = v27;
    }

    while (v23 > 1);
  }

  return this;
}

Path *Path::RecBezierTo(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, int a9, float a10, int a11, float a12)
{
  if (a9 >= 1)
  {
    v18 = this;
    v19 = a9 + 1;
    do
    {
      v20 = ((a4 - a2) * (a7 - a3)) - ((a5 - a3) * (a6 - a2));
      v21 = -v20;
      if (v20 >= 0.0)
      {
        v21 = ((a4 - a2) * (a7 - a3)) - ((a5 - a3) * (a6 - a2));
      }

      if (v21 < a8)
      {
        break;
      }

      v22 = ((a4 + a6) + (a2 * 2.0)) * 0.25;
      v23 = ((a5 + a7) + (a3 * 2.0)) * 0.25;
      v24 = (a10 + a12) * 0.5;
      Path::RecBezierTo(v18, (a2 + a4) * 0.5, (a3 + a5) * 0.5, a4, a5, v22, v23, a8, v19 - 2, a10, v24, a11);
      this = Path::AddPoint(v18, v22, v23, a11, v24, 0);
      a2 = (a2 + a6) * 0.5;
      --v19;
      a3 = (a3 + a7) * 0.5;
      a10 = v24;
      a5 = v23;
      a4 = v22;
    }

    while (v19 > 1);
  }

  return this;
}

void Path::ConvertForOffset(Path *this, float a2, Path *a3, float a4)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::CancelBezier(this);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    Path::CloseSubpath(this, 0);
  }

  Path::SetBackData(this, 1);
  Path::ResetPoints(this, this->var2);
  if (this->var2 >= 1)
  {
    var3 = this->var3;
    v10 = *(var3 + 4);
    v9 = *(var3 + 5);
    v11 = Path::AddPoint(this, v10, v9, 0, 0.0, 1);
    v57 = a3;
    v60 = a4;
    if (this->var2 >= 2)
    {
      v15 = v11;
      v16 = 1;
      v17 = 2.0;
      do
      {
        v18 = this->var3;
        v19 = v18 + 44 * v16;
        v20 = *v19 & 0xF;
        if (v20 <= 2)
        {
          switch(v20)
          {
            case 0u:
              v21 = *(v19 + 4);
              v22 = *(v19 + 5);
              v15 = Path::AddPoint(this, v21, v22, v16, 0.0, 1);
              goto LABEL_33;
            case 1u:
              v21 = *(v19 + 4);
              v22 = *(v19 + 5);
              goto LABEL_32;
            case 2u:
              v21 = *(v19 + 4);
              v22 = *(v19 + 5);
              v58 = *(v19 + 1);
              v59 = *(v19 + 1);
              v28 = *(v19 + 6);
              v29 = *(v19 + 7);
              v30 = *(v19 + 8);
              v31 = *(v19 + 9);
              if (v58 < 0)
              {
                Path::RecCubicTo(this, v10, v9, v28, v29, v21, v22, v30, v31, 8, v16, a2, 0.0, 1.0);
              }

              else
              {
                Path::RecCubicTo(this, 8, v16, &v57, v10, v9, v28, v29, v21, v22, v30, v31, a2, 0.0, 1.0);
              }

LABEL_32:
              Path::AddPoint(this, v21, v22, v16, 1.0, 0);
LABEL_33:
              v16 = (v16 + 1);
              goto LABEL_34;
          }
        }

        else if ((*v19 & 0xFu) > 4)
        {
          if (v20 == 5)
          {
            v39 = &this->var11[20 * v15];
            v21 = *(v39 + 1);
            v22 = *(v39 + 2);
            goto LABEL_32;
          }

          if (v20 == 7)
          {
            *&v12 = v10;
            Path::AddForcedPoint(this, v12, v9, v16, 1.0);
            v16 = (v16 + 1);
          }
        }

        else
        {
          if (v20 == 3)
          {
            v32 = *(v19 + 4);
            v21 = *(v19 + 5);
            v22 = *(v19 + 6);
            if (v32 <= 0)
            {
              v40 = v16 + v32 - 1;
            }

            else
            {
              v34 = *(v19 + 15);
              v33 = *(v19 + 16);
              v35 = -(v34 - (v10 * v17));
              v36 = -(v33 - (v9 * v17));
              if (v32 == 1)
              {
                v37 = -v34;
                v38 = -v33;
              }

              else
              {
                v55 = v15;
                v41 = 0;
                v42 = (v18 + 44 * v16 + 140);
                do
                {
                  v43 = v35;
                  v44 = v36;
                  v35 = v34;
                  v36 = v33;
                  v34 = *(v42 - 9);
                  v33 = *(v42 - 8);
                  v45 = (v43 + v35) * 0.5;
                  v46 = (v44 + v36) * 0.5;
                  if (v41)
                  {
                    Path::AddPoint(this, v45, (v44 + v36) * 0.5, v16 - 1 + v41, 1.0, 0);
                  }

                  v58 = *(v42 - 1);
                  v59 = *v42;
                  v47 = (v35 + v34) * 0.5;
                  v48 = (v36 + v33) * 0.5;
                  if (v58 < 0)
                  {
                    Path::RecBezierTo(this, v35, v36, v45, v46, v47, v48, a2, 8, 0.0, v16 + v41, 1.0);
                  }

                  else
                  {
                    *&v13 = v36;
                    Path::RecBezierTo(this, 8, (v16 + v41), &v57, v35, v13, v45, v46, v47, v48, a2, 0.0, 1.0);
                  }

                  ++v41;
                  v42 = (v42 + 44);
                }

                while (v32 - 1 != v41);
                v37 = -v34;
                v38 = -v33;
                v15 = v55;
              }

              v49 = (v35 + v34) * 0.5;
              v50 = (v36 + v33) * 0.5;
              if (v32 != 1)
              {
                Path::AddPoint(this, v49, v50, v16 + v32 - 2, 1.0, 0);
              }

              v51 = v37 + (v21 * 2.0);
              v17 = 2.0;
              v58 = *(v19 + 12);
              v59 = *(v19 + 52);
              v52 = (v34 + v51) * 0.5;
              v53 = (v33 + (v38 + (v22 * 2.0))) * 0.5;
              v54 = v16 + v32;
              v40 = v16 + v32 - 1;
              if (v58 < 0)
              {
                Path::RecBezierTo(this, v34, v33, v49, v50, v52, v53, a2, 8, 0.0, v54 - 1, 1.0);
              }

              else
              {
                *&v13 = v33;
                Path::RecBezierTo(this, 8, (v54 - 1), &v57, v34, v13, v49, v50, v52, v53, a2, 0.0, 1.0);
              }
            }

            Path::AddPoint(this, v21, v22, v40, 1.0, 0);
            v16 = (v16 + v32 + 1);
            goto LABEL_34;
          }

          if (v20 == 4)
          {
            v21 = *(v19 + 4);
            v22 = *(v19 + 5);
            v58 = *(v19 + 1);
            v59 = *(v19 + 1);
            v23 = *(v19 + 6);
            v24 = *(v19 + 7);
            v25 = *(v19 + 8);
            v26 = v19[36];
            v27 = v19[37];
            if (v58 < 0)
            {
              Path::DoArc(this, v10, v9, v21, v22, v23, v24, v25, v26, v27, v14, v16);
            }

            else
            {
              Path::DoArc(this, v26, v27, v16, v10, v9, v21, v22, v23, v24, v25);
            }

            goto LABEL_32;
          }
        }

        v21 = 0.0;
        v22 = 0.0;
LABEL_34:
        v10 = v21;
        v9 = v22;
      }

      while (v16 < this->var2);
    }
  }
}

void Path::RecCubicTo(Path *a1, int a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15)
{
  v26 = a9 - a5;
  v27 = a10 - a6;
  v28 = sqrtf((v27 * v27) + (v26 * v26));
  if (v28 >= 0.01)
  {
    v30 = (v26 * a8) - (v27 * a7);
    v31 = -(v27 * a11);
    v32 = -v30;
    if (v30 >= 0.0)
    {
      v32 = v30;
    }

    v33 = -(v31 + (v26 * a12));
    if ((v31 + (v26 * a12)) >= 0.0)
    {
      v33 = v31 + (v26 * a12);
    }

    v34 = v32 / v28;
    v29 = (v33 / v28) < a13 && v34 < a13;
  }

  else
  {
    v29 = ((a7 * a7) + (a8 * a8)) < a13 && ((a11 * a11) + (a12 * a12)) < a13;
  }

  v36 = a2 < 1;
  Path::PointAndTangentAt(*a4, *(a4 + 8), &v69, &v67, (*(a4 + 16) * a14) + (*(a4 + 12) * (1.0 - a14)));
  v37 = a14 * 0.5 + a15 * 0.5;
  *&v37 = v37 * *(a4 + 16) + *(a4 + 12) * (1.0 - v37);
  Path::PointAndTangentAt(*a4, *(a4 + 8), &v64, &v62, *&v37);
  Path::PointAndTangentAt(*a4, *(a4 + 8), &v66, v65, (*(a4 + 16) * a15) + (*(a4 + 12) * (1.0 - a15)));
  v38 = *(a4 + 20);
  v39 = v64.f32[0] - (v38 * v63);
  v40 = v64.f32[1] + (v38 * v62);
  v41 = v66.f32[1] + (v38 * v65[0]);
  v42 = v39 - (v69.f32[0] - (v38 * v68));
  v43 = v40 - (v69.f32[1] + (v38 * v67));
  v44 = (v66.f32[0] - (v38 * v65[1])) - v39;
  v45 = v41 - v40;
  v46 = (v43 * v43) + (v42 * v42);
  if (v46 > 0.0001)
  {
    v47 = sqrtf(v46);
    v42 = v42 / v47;
    v43 = v43 / v47;
  }

  v48 = (v45 * v45) + (v44 * v44);
  if (v48 > 0.0001)
  {
    v49 = sqrtf(v48);
    v44 = v44 / v49;
    v45 = v45 / v49;
  }

  v50 = ((v63 - v68) * (v45 - v43)) + ((v62 - v67) * (v44 - v42));
  if ((v36 || v29) && v50 < 0.0)
  {
    Path::AddPoint(a1, v69.f32[0], v69.f32[1], -1, 0.0, 0);
    Path::AddPoint(a1, a9, a10, a3, a15, 0);
    Path::AddPoint(a1, a5, a6, a3, a14, 0);
    Path::AddPoint(a1, v66.f32[0], v66.f32[1], -1, 0.0, 0);
    return;
  }

  if (v50 >= 0.0)
  {
    v51 = a7;
    v52 = a11;
    if (v36 || v29)
    {
      return;
    }
  }

  else
  {
    v51 = a7;
    v52 = a11;
    if (a2 < 1)
    {
      return;
    }
  }

  v56 = a10;
  v53 = ((a5 + a9) * 0.5) + ((v51 - v52) * 0.125);
  v54 = ((a6 + a10) * 0.5) + ((a8 - a12) * 0.125);
  v55 = ((v26 * 3.0) * 0.25) - ((v51 + v52) * 0.125);
  Path::RecCubicTo(a1, (a2 - 1), a3, a4, a5, a6, v51 * 0.5, a8 * 0.5, v53, v54);
  Path::AddPoint(a1, v53, v54, a3, (a14 + a15) * 0.5, 0);
  Path::RecCubicTo(a1, (a2 - 1), a3, a4, v53, v54, v55, ((v27 * 3.0) * 0.25) - ((a8 + a12) * 0.125), a9, v56);
}

void Path::DoArc(Path *a1, int a2, int a3, int a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11)
{
  if (a9 > 0.0001 && a10 > 0.0001)
  {
    v17 = a7 - a5;
    v18 = a8 - a6;
    v19 = __sincosf_stret(a11);
    cosval = v19.__cosval;
    v70 = a9;
    v21 = ((v18 * v19.__sinval) + (v19.__cosval * v17)) / a9;
    v22 = ((v18 * v19.__cosval) - (v19.__sinval * v17)) / a10;
    v23 = 4.0;
    if (((v22 * v22) + (v21 * v21)) < 4.0)
    {
      v23 = (v22 * v22) + (v21 * v21);
    }

    v24 = (v23 * -0.25) + 1.0;
    if (v24 < 0.0)
    {
      v24 = 0.0;
    }

    v25 = sqrtf(v24);
    v26 = sqrtf(v23);
    v27 = -v21 / v26;
    v28 = (v22 / v26) * v25;
    v29 = v21 * 0.5;
    v30 = -v28 - (v21 * 0.5);
    v31 = v22 * 0.5;
    v32 = 3.1416;
    v33.i32[0] = 1078530011;
    if (v30 >= -1.0)
    {
      v33.i32[0] = 0;
      if (v30 <= 1.0)
      {
        v34 = v31;
        v35 = acosf(v30);
        v31 = v34;
        v32 = 3.1416;
        cosval = v19.__cosval;
        v33.f32[0] = v35;
        if (v34 > -(v27 * v25))
        {
          v33.f32[0] = 6.28318531 - v35;
        }
      }
    }

    v36 = -v19.__sinval;
    v37 = v27 * v25;
    v38 = v29 - v28;
    if ((v29 - v28) >= -1.0)
    {
      v32 = 0.0;
      if (v38 <= 1.0)
      {
        v39 = cosval;
        v76 = v33.i32[0];
        v40 = v31;
        v41 = acosf(v38);
        v33.i32[0] = v76;
        v36 = -v19.__sinval;
        cosval = v39;
        v32 = v41;
        if (v40 < v37)
        {
          v32 = 6.28318531 - v41;
        }
      }
    }

    v42 = (cosval * (v37 * a10)) + (v19.__sinval * (v28 * v70));
    v33.f32[1] = v32;
    v43 = -(((v37 * a10) * v36) + (cosval * (v28 * v70)));
    v44 = vrev64_s32(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(v33), vdupq_n_s64(0x400921FB54442D18uLL))));
    v45 = vcvtq_f64_f32(v44);
    v46 = COERCE_DOUBLE(vbsl_s8(vmovn_s64(vmvnq_s8(vcgeq_f64(v45, vdupq_n_s64(0x401921FB54442D18uLL)))), v44, vcvt_f32_f64(vaddq_f64(v45, vdupq_n_s64(0xC01921FB54442D18)))));
    if (a3)
    {
      if (a2)
      {
        v47 = -v42;
      }

      else
      {
        v43 = ((v37 * a10) * v36) + (cosval * (v28 * v70));
        v47 = (cosval * (v37 * a10)) + (v19.__sinval * (v28 * v70));
      }

      if (a2)
      {
        v48 = v46;
      }

      else
      {
        v48 = *&v33;
      }

      if (*&v48 < *(&v48 + 1))
      {
        v49 = *&v48 + 6.28318531;
        *&v48 = v49;
      }

      v74 = v48;
      v50 = *&v48 + -0.1;
      if (*(&v48 + 1) < v50)
      {
        v72 = ((a5 + a7) * 0.5) + v43;
        v51 = ((a6 + a8) * 0.5) + v47;
        v52 = a10;
        v53 = cosval * v70;
        v54 = v36 * v52;
        v55 = cosval * v52;
        do
        {
          v56 = __sincosf_stret(v50);
          Path::AddPoint(a1, (v72 + (v53 * v56.__cosval)) + (v54 * v56.__sinval), (v51 + ((v19.__sinval * v70) * v56.__cosval)) + (v55 * v56.__sinval), a4, (*&v74 - v50) / (*&v74 - *(&v74 + 1)), 0);
          v50 = v50 + -0.1;
        }

        while (*(&v74 + 1) < v50);
      }
    }

    else
    {
      if (a2)
      {
        v43 = ((v37 * a10) * v36) + (cosval * (v28 * v70));
        v57 = (cosval * (v37 * a10)) + (v19.__sinval * (v28 * v70));
      }

      else
      {
        v57 = -v42;
      }

      if (a2)
      {
        v58 = *&v33;
      }

      else
      {
        v58 = v46;
      }

      if (*&v58 > *(&v58 + 1))
      {
        v59 = *&v58 + -6.28318531;
        *&v58 = v59;
      }

      v75 = v58;
      v60 = *&v58 + 0.1;
      if (*(&v58 + 1) > v60)
      {
        v73 = ((a5 + a7) * 0.5) + v43;
        v61 = ((a6 + a8) * 0.5) + v57;
        v62 = a10;
        v63 = cosval * v70;
        v64 = v36 * v62;
        v65 = cosval * v62;
        do
        {
          v66 = __sincosf_stret(v60);
          Path::AddPoint(a1, (v73 + (v63 * v66.__cosval)) + (v64 * v66.__sinval), (v61 + ((v19.__sinval * v70) * v66.__cosval)) + (v65 * v66.__sinval), a4, (v60 - *&v75) / (*(&v75 + 1) - *&v75), 0);
          v60 = v60 + 0.1;
        }

        while (*(&v75 + 1) > v60);
      }
    }
  }
}

void Path::RecBezierTo(Path *a1, int a2, uint64_t a3, uint64_t a4, float a5, double a6, float a7, float32_t a8, float a9, float a10, float a11, float a12, float a13)
{
  v19 = *&a6;
  v21 = ((a7 - a5) * (a10 - *&a6)) - ((a8 - *&a6) * (a9 - a5));
  v22 = -v21;
  if (v21 >= 0.0)
  {
    v22 = v21;
  }

  v23 = (a2 - 1);
  if (a2 >= 1)
  {
    v39 = v22;
    v44 = 0;
    v43 = __PAIR64__(LODWORD(a6), LODWORD(a5));
    v42[0] = 1;
    *&v42[1] = a9;
    *&v42[2] = a10;
    *&a6 = a7;
    sub_27679D754(&v43, v42, 0, &v45, &v46, &v44 + 1, &v44, 0.0, *&a6, a8);
    Path::PointAndTangentAt(*a4, *(a4 + 8), &v51, v50, (*(a4 + 16) * a12) + (*(a4 + 12) * (1.0 - a12)));
    v29 = (v47 * v50[1]) + (v46 * v50[0]);
    v30.f32[0] = a7;
    sub_27679D754(&v43, v42, 0, &v45, &v46, &v44 + 1, &v44, 1.0, v30, a8);
    Path::PointAndTangentAt(*a4, *(a4 + 8), &v49, v48, (*(a4 + 16) * a13) + (*(a4 + 12) * (1.0 - a13)));
    v31 = (v47 * v48[1]) + (v46 * v48[0]);
    if (v29 >= 0.0 || v31 >= 0.0)
    {
      if (v39 >= a11 || v29 < 0.0 || v31 < 0.0)
      {
        v32 = ((a8 + a10) + (v19 * 2.0)) * 0.25;
        v33 = (a5 + a7) * 0.5;
        v34 = (v19 + a8) * 0.5;
        v35 = a7;
        v36 = a8;
        v37 = ((a7 + a9) + (a5 * 2.0)) * 0.25;
        v38 = v32;
        Path::RecBezierTo(a1, v23, a3, a4, v33, v34, v35, v36);
        Path::AddPoint(a1, v37, v38, a3, (a12 + a13) * 0.5, 0);
        Path::RecBezierTo(a1, v23, a3, a4, (a5 + a9) * 0.5, (v19 + a10) * 0.5, v37, v38);
      }
    }

    else
    {
      Path::AddPoint(a1, v51.f32[0], v51.f32[1], -1, 0.0, 0);
      Path::AddPoint(a1, a9, a10, a3, a13, 0);
      Path::AddPoint(a1, a7, a8, a3, a12, 0);
      Path::AddPoint(a1, v49.f32[0], v49.f32[1], -1, 0.0, 0);
    }
  }
}

void Path::Convert(Path *this, float a2)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::CancelBezier(this);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    Path::CloseSubpath(this, 0);
  }

  Path::SetBackData(this, 0);
  Path::ResetPoints(this, this->var2);
  if (this->var2 >= 1)
  {
    var3 = this->var3;
    v5 = 1.0;
    if ((*var3 & 0x10) != 0)
    {
      v5 = *(var3 + 7);
    }

    v7 = *(var3 + 4);
    v6 = *(var3 + 5);
    v8 = this->var6 ? Path::AddPoint(this, v7, v6, v5, 1) : Path::AddPoint(this, v7, v6, 1);
    v10 = v8;
    *(this->var3 + 1) = v8;
    if (this->var2 >= 2)
    {
      v11 = 1;
      v12 = 2.0;
      do
      {
        v13 = this->var3;
        v14 = (v13 + 44 * v11);
        v15 = *v14;
        v16 = *v14 & 0xF;
        v17 = 0.0;
        if (v16 <= 2)
        {
          switch(v16)
          {
            case 0u:
              v17 = 1.0;
              if ((v15 & 0x10) != 0)
              {
                v17 = v14[7];
              }

              v19 = v14[4];
              v18 = v14[5];
              if (this->var6)
              {
                v31 = Path::AddPoint(this, v19, v18, v17, 1);
              }

              else
              {
                v31 = Path::AddPoint(this, v19, v18, 1);
              }

              v10 = v31;
              *(v14 + 1) = v31;
              goto LABEL_69;
            case 1u:
              v17 = 1.0;
              if ((v15 & 0x10) != 0)
              {
                v17 = v14[6];
              }

              v19 = v14[4];
              v18 = v14[5];
              v27 = this;
              v28 = v19;
              v29 = v18;
              if (!this->var6)
              {
                goto LABEL_63;
              }

              goto LABEL_50;
            case 2u:
              v17 = 1.0;
              if ((v15 & 0x10) != 0)
              {
                v17 = v14[10];
              }

              v19 = v14[4];
              v18 = v14[5];
              v23 = v14[6];
              v24 = v14[7];
              v25 = v14[8];
              v26 = v14[9];
              if (!this->var6)
              {
                Path::RecCubicTo(this, v7, v6, v23, v24, v19, v18, v25, v26, 8, a2, -1.0);
                goto LABEL_62;
              }

              Path::RecCubicTo(this, v7, v6, v5, v23, v24, v19, v18, v17, 8, v25, v26, a2, -1.0);
LABEL_28:
              v27 = this;
              v28 = v19;
              v29 = v18;
LABEL_50:
              v42 = Path::AddPoint(v27, v28, v29, v17, 0);
              goto LABEL_64;
          }
        }

        else if ((*v14 & 0xFu) > 4)
        {
          if (v16 == 5)
          {
            var11 = this->var11;
            if (this->var6)
            {
              v40 = &var11[16 * v10];
              v19 = v40[1];
              v18 = v40[2];
              v17 = v40[3];
              v41 = Path::AddPoint(this, v19, v18, v17, 0);
            }

            else
            {
              v43 = &var11[12 * v10];
              v19 = *(v43 + 1);
              v18 = *(v43 + 2);
              v41 = Path::AddPoint(this, v19, v18, 0);
            }

            *(v14 + 1) = v41;
            if (v41 < 0)
            {
              if (v11)
              {
                goto LABEL_66;
              }

              v14[1] = 0.0;
            }

LABEL_69:
            ++v11;
            goto LABEL_70;
          }

          if (v16 == 7)
          {
            *&v9 = v7;
            if (this->var6)
            {
              Path::AddForcedPoint(this, v7, v6, v5);
            }

            else
            {
              v9 = Path::AddForcedPoint(this, v9, v6);
            }

            *(v14 + 1) = v30;
            ++v11;
          }
        }

        else
        {
          if (v16 == 3)
          {
            v17 = 1.0;
            if ((v15 & 0x10) != 0)
            {
              v17 = v14[7];
            }

            v32 = *(v14 + 4);
            v19 = v14[5];
            v18 = v14[6];
            v33 = v11 + 1;
            v34 = v11 + 1;
            if (v32 >= 1)
            {
              v35 = (v13 + 44 * v33);
              v37 = v35[4];
              v36 = v35[5];
              if (v32 == 1)
              {
                v38 = 1.0;
                if ((v15 & 0x10) != 0)
                {
                  v38 = v35[6];
                }

                if (this->var6)
                {
                  Path::RecBezierTo(this, v37, v36, v38, v7, v6, v5, v19, v18, 8, v17, a2, -1.0);
                }

                else
                {
                  Path::RecBezierTo(this, v35[4], v36, v7, v6, v14[5], v14[6], a2, 8, -1.0);
                }
              }

              else
              {
                v84 = v14[5];
                v85 = v17;
                v45 = 1.0;
                if ((v15 & 0x10) != 0)
                {
                  v45 = v35[6];
                }

                v86 = v14[6];
                v46 = 0;
                v47 = -(v45 - (v5 * v12));
                v48 = -(v36 - (v6 * v12));
                v49 = -(v37 - (v7 * v12));
                v50 = (v13 + 44 * v34 + 68);
                v51 = v45;
                do
                {
                  v52 = v37;
                  v53 = v36;
                  v54 = v51;
                  v55 = 1.0;
                  if ((v15 & 0x10) != 0)
                  {
                    v55 = *v50;
                  }

                  v88 = v55;
                  v57 = *(v50 - 2);
                  v56 = *(v50 - 1);
                  v58 = v49 + v52;
                  v59 = v58 * 0.5;
                  v60 = (v48 + v53) * 0.5;
                  v61 = v47 + v54;
                  v62 = v61 * 0.5;
                  v89 = v57;
                  if (v46)
                  {
                    v63 = *(v50 - 1);
                    v64 = v61 * 0.5;
                    v65 = this->var6 ? Path::AddPoint(this, v58 * 0.5, (v48 + v53) * 0.5, v62, 0) : Path::AddPoint(this, v58 * 0.5, (v48 + v53) * 0.5, 0);
                    *(v50 - 16) = v65;
                    v56 = v63;
                    v57 = v89;
                    v62 = v64;
                    if (v65 < 0)
                    {
                      if (v34)
                      {
                        v66 = *(v50 - 27);
                      }

                      else
                      {
                        v66 = 0;
                      }

                      *(v50 - 16) = v66;
                    }
                  }

                  v67 = (v52 + v57) * 0.5;
                  v68 = v56;
                  v69 = (v53 + v56) * 0.5;
                  if (this->var6)
                  {
                    v51 = v88;
                    v70 = v59;
                    v71 = v60;
                    v72 = v67;
                    v73 = v69;
                    Path::RecBezierTo(this, v52, v53, v54, v70, v71, v62, v67, v69, 8, (v54 + v88) * 0.5, a2, -1.0);
                  }

                  else
                  {
                    v74 = v59;
                    v75 = v60;
                    v72 = (v52 + v57) * 0.5;
                    v73 = (v53 + v56) * 0.5;
                    Path::RecBezierTo(this, v52, v53, v74, v75, v72, v69, a2, 8, -1.0);
                    v51 = v88;
                  }

                  ++v46;
                  v50 += 11;
                  v47 = v54;
                  v48 = v53;
                  v49 = v52;
                  v36 = v68;
                  v37 = v89;
                }

                while (v32 - 1 != v46);
                v76 = (v54 + v51) * 0.5;
                if (this->var6)
                {
                  v77 = Path::AddPoint(this, v72, v73, v76, 0);
                }

                else
                {
                  v77 = Path::AddPoint(this, v72, v73, 0);
                }

                v19 = v84;
                v17 = v85;
                *(v50 - 16) = v77;
                v78 = v68;
                if (v77 < 0)
                {
                  if (v34)
                  {
                    v79 = *(v50 - 27);
                  }

                  else
                  {
                    v79 = 0;
                  }

                  *(v50 - 16) = v79;
                }

                v80 = (v68 - (v68 - (v86 * 2.0))) * 0.5;
                v12 = 2.0;
                if (this->var6)
                {
                  Path::RecBezierTo(this, v89, v78, v51, v72, v73, v76, (v89 - (v89 - (v84 * 2.0))) * 0.5, v80, 8, (v51 - (v51 - (v85 * 2.0))) * 0.5, a2, -1.0);
                }

                else
                {
                  Path::RecBezierTo(this, v89, v78, v72, v73, (v89 - (v89 - (v84 * 2.0))) * 0.5, v80, a2, 8, -1.0);
                }

                v18 = v86;
              }
            }

            if (this->var6)
            {
              v81 = Path::AddPoint(this, v19, v18, v17, 0);
            }

            else
            {
              v81 = Path::AddPoint(this, v19, v18, 0);
            }

            *(v14 + 1) = v81;
            if (v81 < 0)
            {
              if (v34)
              {
                v82 = *(v14 - 10);
              }

              else
              {
                v82 = 0;
              }

              *(v14 + 1) = v82;
            }

            v11 = v32 + v34;
            goto LABEL_70;
          }

          if (v16 == 4)
          {
            v17 = 1.0;
            if ((v15 & 0x10) != 0)
            {
              v17 = v14[10];
            }

            v19 = v14[4];
            v18 = v14[5];
            v20 = v14[7];
            v21 = *(v14 + 36);
            v22 = *(v14 + 37);
            if (this->var6)
            {
              Path::DoArc(this, v7, v6, v5, v19, v18, v17, v14[6], v20, v21, v22, v14[8], v83);
              goto LABEL_28;
            }

            Path::DoArc(this, v7, v6, v14[4], v14[5], v14[6], v14[7], v14[8], v21, v22, v20);
LABEL_62:
            v27 = this;
            v28 = v19;
            v29 = v18;
LABEL_63:
            v42 = Path::AddPoint(v27, v28, v29, 0);
LABEL_64:
            *(v14 + 1) = v42;
            if (v42 < 0)
            {
              if (v11)
              {
LABEL_66:
                v44 = *(v14 - 10);
              }

              else
              {
                v44 = 0;
              }

              *(v14 + 1) = v44;
            }

            goto LABEL_69;
          }
        }

        v18 = 0.0;
        v19 = 0.0;
LABEL_70:
        v7 = v19;
        v6 = v18;
        v5 = v17;
      }

      while (v11 < this->var2);
    }
  }
}

Path *Path::RecCubicTo(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, int a10, float a11, float a12, float a13, float a14)
{
  v17 = this;
  while (1)
  {
    v20 = a7 - a2;
    v21 = a8 - a3;
    v22 = sqrtf((v21 * v21) + (v20 * v20));
    if (v22 >= 0.01)
    {
      break;
    }

    v24 = a13;
    v23 = a14;
    if (((a5 * a5) + (a6 * a6)) >= a13)
    {
      goto LABEL_18;
    }

    if (((a11 * a11) + (a12 * a12)) < a13 || a10 < 1)
    {
      return this;
    }

LABEL_25:
    v32 = (a4 + a9) * 0.5;
    v33 = ((a2 + a7) * 0.5) + ((a5 - a11) * 0.125);
    v34 = ((a3 + a8) * 0.5) + ((a6 - a12) * 0.125);
    v36 = ((v20 * 3.0) * 0.25) - ((a5 + a11) * 0.125);
    v37 = ((v21 * 3.0) * 0.25) - ((a6 + a12) * 0.125);
    Path::RecCubicTo(v17, a2, a3, a4, a5 * 0.5, a6 * 0.5, v33, v34, v32, v36, v37, v24, --a10, v23);
    this = Path::AddPoint(v17, v33, v34, v32, 0);
    a12 = a12 * 0.5;
    a2 = v33;
    a11 = a11 * 0.5;
    a3 = v34;
    a4 = v32;
    a5 = v36;
    a6 = v37;
  }

  v26 = (v20 * a6) - (v21 * a5);
  v27 = -v26;
  if (v26 >= 0.0)
  {
    v27 = (v20 * a6) - (v21 * a5);
  }

  v28 = -((v20 * a12) - (v21 * a11));
  if (((v20 * a12) - (v21 * a11)) >= 0.0)
  {
    v28 = (v20 * a12) - (v21 * a11);
  }

  v29 = v28 / v22;
  v24 = a13;
  v30 = (v27 / v22) < a13 && v29 < a13;
  v23 = a14;
  if (!v30)
  {
LABEL_18:
    if (a10 <= 0)
    {
      return this;
    }

    goto LABEL_25;
  }

  if (a14 > 0.0 && v22 > a14 && a10 >= 1)
  {
    goto LABEL_25;
  }

  return this;
}

Path *Path::RecCubicTo(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, int a10, float a11, float a12)
{
  v17 = this;
  while (1)
  {
    v18 = a6 - a2;
    v19 = a7 - a3;
    v20 = sqrtf((v19 * v19) + (v18 * v18));
    if (v20 >= 0.01)
    {
      break;
    }

    v22 = a11;
    v21 = a12;
    if (((a4 * a4) + (a5 * a5)) >= a11)
    {
      goto LABEL_18;
    }

    if (((a8 * a8) + (a9 * a9)) < a11 || a10 < 1)
    {
      return this;
    }

LABEL_25:
    v30 = ((a2 + a6) * 0.5) + ((a4 - a8) * 0.125);
    v31 = ((a3 + a7) * 0.5) + ((a5 - a9) * 0.125);
    v32 = ((v18 * 3.0) * 0.25) - ((a4 + a8) * 0.125);
    v33 = ((v19 * 3.0) * 0.25) - ((a5 + a9) * 0.125);
    Path::RecCubicTo(v17, a2, a3, a4 * 0.5, a5 * 0.5, v30, v31, v32, v33, v22, --a10, v21);
    this = Path::AddPoint(v17, v30, v31, 0);
    a9 = a9 * 0.5;
    a8 = a8 * 0.5;
    a2 = v30;
    a3 = v31;
    a4 = v32;
    a5 = v33;
  }

  v24 = (v18 * a5) - (v19 * a4);
  v25 = -v24;
  if (v24 >= 0.0)
  {
    v25 = (v18 * a5) - (v19 * a4);
  }

  v26 = -((v18 * a9) - (v19 * a8));
  if (((v18 * a9) - (v19 * a8)) >= 0.0)
  {
    v26 = (v18 * a9) - (v19 * a8);
  }

  v27 = v26 / v20;
  v22 = a11;
  v28 = (v25 / v20) < a11 && v27 < a11;
  v21 = a12;
  if (!v28)
  {
LABEL_18:
    if (a10 <= 0)
    {
      return this;
    }

    goto LABEL_25;
  }

  if (a12 > 0.0 && v20 > a12 && a10 >= 1)
  {
    goto LABEL_25;
  }

  return this;
}

void Path::DoArc(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, int a10, int a11, float a12, float a13)
{
  if (a8 > 0.0001 && a9 > 0.0001)
  {
    v18 = a5 - a2;
    v19 = a6 - a3;
    v20 = __sincosf_stret(a12);
    cosval = v20.__cosval;
    sinval = v20.__sinval;
    v71 = a8;
    v23 = ((v19 * v20.__sinval) + (v20.__cosval * v18)) / a8;
    v68 = a9;
    v24 = ((v19 * v20.__cosval) - (v20.__sinval * v18)) / a9;
    v25 = 4.0;
    if (((v24 * v24) + (v23 * v23)) < 4.0)
    {
      v25 = (v24 * v24) + (v23 * v23);
    }

    v26 = (v25 * -0.25) + 1.0;
    if (v26 < 0.0)
    {
      v26 = 0.0;
    }

    v27 = sqrtf(v26);
    v28 = sqrtf(v25);
    v29 = -v23 / v28;
    v30 = (v24 / v28) * v27;
    v31 = v23 * 0.5;
    v32 = -v30 - (v23 * 0.5);
    v33 = v24 * 0.5;
    v34 = 3.1416;
    v35.i32[0] = 1078530011;
    if (v32 >= -1.0)
    {
      v35.i32[0] = 0;
      if (v32 <= 1.0)
      {
        v36 = acosf(v32);
        v34 = 3.1416;
        sinval = v20.__sinval;
        cosval = v20.__cosval;
        v35.f32[0] = v36;
        if (v33 > -(v29 * v27))
        {
          v35.f32[0] = 6.28318531 - v36;
        }
      }
    }

    v37 = -sinval;
    v38 = v29 * v27;
    v39 = v31 - v30;
    if ((v31 - v30) >= -1.0)
    {
      v34 = 0.0;
      if (v39 <= 1.0)
      {
        v40 = cosval;
        v41 = sinval;
        v78 = v35.i32[0];
        v42 = acosf(v39);
        v35.i32[0] = v78;
        sinval = v41;
        cosval = v40;
        v34 = v42;
        if (v33 < v38)
        {
          v34 = 6.28318531 - v42;
        }
      }
    }

    v43 = ((v38 * v68) * v37) + (cosval * (v30 * v71));
    v44 = (cosval * (v38 * v68)) + (sinval * (v30 * v71));
    v35.f32[1] = v34;
    v45 = vrev64_s32(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(v35), vdupq_n_s64(0x400921FB54442D18uLL))));
    v46 = vcvtq_f64_f32(v45);
    v47 = COERCE_DOUBLE(vbsl_s8(vmovn_s64(vmvnq_s8(vcgeq_f64(v46, vdupq_n_s64(0x401921FB54442D18uLL)))), v45, vcvt_f32_f64(vaddq_f64(v46, vdupq_n_s64(0xC01921FB54442D18)))));
    if (a11)
    {
      if (a10)
      {
        v44 = -v44;
        v43 = -v43;
        v48 = v47;
      }

      else
      {
        v48 = *&v35;
      }

      v49 = *(&v48 + 1);
      if (*&v48 < *(&v48 + 1))
      {
        v50 = *&v48 + 6.28318531;
        *&v48 = v50;
      }

      v79 = *&v48;
      v51 = *&v48 + -0.1;
      if (*(&v48 + 1) < v51)
      {
        v73 = ((a3 + a6) * 0.5) + v44;
        v76 = ((a2 + a5) * 0.5) + v43;
        v52 = cosval * v71;
        v53 = v37 * v68;
        v54 = sinval * v71;
        v55 = cosval * v68;
        v56 = *&v48 - *(&v48 + 1);
        do
        {
          v57 = __sincosf_stret(v51);
          Path::AddPoint(this, (v76 + (v52 * v57.__cosval)) + (v53 * v57.__sinval), (v73 + (v54 * v57.__cosval)) + (v55 * v57.__sinval), (((v79 - v51) * a7) + (a4 * (v51 - v49))) / v56, 0);
          v51 = v51 + -0.1;
        }

        while (v49 < v51);
      }
    }

    else
    {
      if (a10)
      {
        v58 = *&v35;
      }

      else
      {
        v44 = -v44;
        v43 = -v43;
        v58 = v47;
      }

      v59 = *(&v58 + 1);
      if (*&v58 > *(&v58 + 1))
      {
        v60 = *&v58 + -6.28318531;
        *&v58 = v60;
      }

      v80 = *&v58;
      v61 = *&v58 + 0.1;
      if (*(&v58 + 1) > v61)
      {
        v74 = ((a3 + a6) * 0.5) + v44;
        v77 = ((a2 + a5) * 0.5) + v43;
        v62 = cosval * v71;
        v63 = v37 * v68;
        v64 = sinval * v71;
        v65 = cosval * v68;
        v66 = *(&v58 + 1) - *&v58;
        do
        {
          v67 = __sincosf_stret(v61);
          Path::AddPoint(this, (v77 + (v62 * v67.__cosval)) + (v63 * v67.__sinval), (v74 + (v64 * v67.__cosval)) + (v65 * v67.__sinval), (((v61 - v80) * a7) + (a4 * (v59 - v61))) / v66, 0);
          v61 = v61 + 0.1;
        }

        while (v59 > v61);
      }
    }
  }
}

void Path::DoArc(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, int a9, int a10, float a11)
{
  if (a6 > 0.0001 && a7 > 0.0001)
  {
    v16 = a4 - a2;
    v17 = a5 - a3;
    v18 = __sincosf_stret(a8);
    cosval = v18.__cosval;
    sinval = v18.__sinval;
    v21 = ((v17 * v18.__sinval) + (v18.__cosval * v16)) / a6;
    v22 = ((v17 * v18.__cosval) - (v18.__sinval * v16)) / a7;
    v23 = 4.0;
    if (((v22 * v22) + (v21 * v21)) < 4.0)
    {
      v23 = (v22 * v22) + (v21 * v21);
    }

    v24 = (v23 * -0.25) + 1.0;
    if (v24 < 0.0)
    {
      v24 = 0.0;
    }

    v25 = sqrtf(v24);
    v26 = sqrtf(v23);
    v27 = -v21 / v26;
    v28 = (v22 / v26) * v25;
    v29 = v21 * 0.5;
    v30 = -v28 - (v21 * 0.5);
    v31 = v22 * 0.5;
    v32 = 3.1416;
    v33.i32[0] = 1078530011;
    if (v30 >= -1.0)
    {
      v33.i32[0] = 0;
      if (v30 <= 1.0)
      {
        v72 = v31;
        v34 = acosf(v30);
        v32 = 3.1416;
        sinval = v18.__sinval;
        cosval = v18.__cosval;
        v33.f32[0] = v34;
        v31 = v72;
        if (v72 > -(v27 * v25))
        {
          v33.f32[0] = 6.28318531 - v34;
        }
      }
    }

    v35 = -sinval;
    v36 = v27 * v25;
    v37 = v29 - v28;
    if ((v29 - v28) >= -1.0)
    {
      v32 = 0.0;
      if (v37 <= 1.0)
      {
        v38 = cosval;
        v39 = sinval;
        v40 = -sinval;
        v73 = v33.i32[0];
        v41 = v31;
        v42 = acosf(v37);
        v33.i32[0] = v73;
        v35 = v40;
        sinval = v39;
        cosval = v38;
        v32 = v42;
        if (v41 < v36)
        {
          v32 = 6.28318531 - v42;
        }
      }
    }

    v43 = (cosval * (v36 * a7)) + (sinval * (v28 * a6));
    v33.f32[1] = v32;
    v44 = -(((v36 * a7) * v35) + (cosval * (v28 * a6)));
    v45 = vrev64_s32(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(v33), vdupq_n_s64(0x400921FB54442D18uLL))));
    v46 = vcvtq_f64_f32(v45);
    v47 = COERCE_DOUBLE(vbsl_s8(vmovn_s64(vmvnq_s8(vcgeq_f64(v46, vdupq_n_s64(0x401921FB54442D18uLL)))), v45, vcvt_f32_f64(vaddq_f64(v46, vdupq_n_s64(0xC01921FB54442D18)))));
    if (a10)
    {
      if (a9)
      {
        v48 = -v43;
      }

      else
      {
        v44 = ((v36 * a7) * v35) + (cosval * (v28 * a6));
        v48 = (cosval * (v36 * a7)) + (sinval * (v28 * a6));
      }

      if (a9)
      {
        v49 = v47;
      }

      else
      {
        v49 = *&v33;
      }

      v50 = *(&v49 + 1);
      if (*&v49 < *(&v49 + 1))
      {
        v51 = *&v49 + 6.28318531;
        *&v49 = v51;
      }

      v52 = *&v49 + -0.1;
      if (*(&v49 + 1) < v52)
      {
        v78 = ((a2 + a4) * 0.5) + v44;
        v53 = ((a3 + a5) * 0.5) + v48;
        v54 = cosval * a6;
        v55 = a7;
        v56 = v35 * a7;
        v57 = sinval * a6;
        v58 = cosval * v55;
        do
        {
          v59 = __sincosf_stret(v52);
          Path::AddPoint(this, (v78 + (v54 * v59.__cosval)) + (v56 * v59.__sinval), (v53 + (v57 * v59.__cosval)) + (v58 * v59.__sinval), 0);
          v52 = v52 + -0.1;
        }

        while (v50 < v52);
      }
    }

    else
    {
      if (a9)
      {
        v44 = ((v36 * a7) * v35) + (cosval * (v28 * a6));
        v60 = (cosval * (v36 * a7)) + (sinval * (v28 * a6));
      }

      else
      {
        v60 = -v43;
      }

      if (a9)
      {
        v61 = *&v33;
      }

      else
      {
        v61 = v47;
      }

      v62 = *(&v61 + 1);
      if (*&v61 > *(&v61 + 1))
      {
        v63 = *&v61 + -6.28318531;
        *&v61 = v63;
      }

      v64 = *&v61 + 0.1;
      if (*(&v61 + 1) > v64)
      {
        v79 = ((a2 + a4) * 0.5) + v44;
        v65 = ((a3 + a5) * 0.5) + v60;
        v66 = cosval * a6;
        v67 = a7;
        v68 = v35 * a7;
        v69 = sinval * a6;
        v70 = cosval * v67;
        do
        {
          v71 = __sincosf_stret(v64);
          Path::AddPoint(this, (v79 + (v66 * v71.__cosval)) + (v68 * v71.__sinval), (v65 + (v69 * v71.__cosval)) + (v70 * v71.__sinval), 0);
          v64 = v64 + 0.1;
        }

        while (v62 > v64);
      }
    }
  }
}

Path *Path::RecBezierTo(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, int a10, float a11, float a12, float a13)
{
  if (a10 >= 1)
  {
    v18 = this;
    v19 = a13;
    v20 = a10 + 1;
    do
    {
      v21 = ((a5 - a2) * (a9 - a3)) - ((a6 - a3) * (a8 - a2));
      v22 = -v21;
      if (v21 >= 0.0)
      {
        v22 = ((a5 - a2) * (a9 - a3)) - ((a6 - a3) * (a8 - a2));
      }

      if (v22 < a12 && (v19 <= 0.0 || sqrtf(((a9 - a6) * (a9 - a6)) + ((a8 - a5) * (a8 - a5))) <= v19))
      {
        break;
      }

      v23 = ((a5 + a8) + (a2 * 2.0)) * 0.25;
      v24 = ((a6 + a9) + (a3 * 2.0)) * 0.25;
      v25 = ((a7 + a11) + (a4 * 2.0)) * 0.25;
      v26 = a4;
      Path::RecBezierTo(v18, (a2 + a5) * 0.5, (a3 + a6) * 0.5, (a4 + a7) * 0.5, a5, a6, a7, v23, v24, v25, a12, v20 - 2, v19);
      this = Path::AddPoint(v18, v23, v24, v25, 0);
      v19 = a13;
      a4 = (v26 + a11) * 0.5;
      a3 = (a3 + a9) * 0.5;
      --v20;
      a2 = (a2 + a8) * 0.5;
      a7 = v25;
      a6 = v24;
      a5 = v23;
    }

    while (v20 > 1);
  }

  return this;
}

Path *Path::RecBezierTo(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, int a9, float a10)
{
  if (a9 >= 1)
  {
    v16 = this;
    v17 = a9 + 1;
    do
    {
      v18 = ((a4 - a2) * (a7 - a3)) - ((a5 - a3) * (a6 - a2));
      v19 = -v18;
      if (v18 >= 0.0)
      {
        v19 = ((a4 - a2) * (a7 - a3)) - ((a5 - a3) * (a6 - a2));
      }

      if (v19 < a8 && (a10 <= 0.0 || sqrtf(((a7 - a5) * (a7 - a5)) + ((a6 - a4) * (a6 - a4))) <= a10))
      {
        break;
      }

      v20 = ((a4 + a6) + (a2 * 2.0)) * 0.25;
      v21 = ((a5 + a7) + (a3 * 2.0)) * 0.25;
      Path::RecBezierTo(v16, (a2 + a4) * 0.5, (a3 + a5) * 0.5, a4, a5, v20, v21, a8, v17 - 2, a10);
      this = Path::AddPoint(v16, v20, v21, 0);
      a3 = (a3 + a7) * 0.5;
      a2 = (a2 + a6) * 0.5;
      --v17;
      a5 = v21;
      a4 = v20;
    }

    while (v17 > 1);
  }

  return this;
}

void Path::ConvertEvenLines(Path *this, float a2)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::CancelBezier(this);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    Path::CloseSubpath(this, 0);
  }

  Path::SetBackData(this, 0);
  Path::ResetPoints(this, this->var2);
  if (this->var2 >= 1)
  {
    var3 = this->var3;
    v5 = 1.0;
    if ((*var3 & 0x10) != 0)
    {
      v5 = *(var3 + 7);
    }

    v6 = *(var3 + 4);
    v7 = *(var3 + 5);
    v8 = this->var6 ? Path::AddPoint(this, v6, v7, v5, 1) : Path::AddPoint(this, v6, v7, 1);
    v10 = v8;
    *(this->var3 + 1) = v8;
    if (this->var2 >= 2)
    {
      v104 = a2 * 4.0;
      v11 = 1;
      v12 = 2.0;
      do
      {
        v13 = this->var3;
        v14 = (v13 + 44 * v11);
        v15 = *v14;
        v16 = *v14 & 0xF;
        v17 = 0.0;
        if (v16 <= 2)
        {
          if (!v16)
          {
            v17 = 1.0;
            if ((v15 & 0x10) != 0)
            {
              v17 = v14[7];
            }

            v19 = v14[4];
            v29 = v14[5];
            if (this->var6)
            {
              v30 = Path::AddPoint(this, v19, v29, v17, 1);
            }

            else
            {
              v30 = Path::AddPoint(this, v19, v29, 1);
            }

            v10 = v30;
            *(v14 + 1) = v30;
            goto LABEL_117;
          }

          if (v16 == 1)
          {
            v48 = v6;
            v49 = 1.0;
            if ((v15 & 0x10) != 0)
            {
              v49 = v14[6];
            }

            v19 = v14[4];
            v50 = v14[5];
            v51 = sqrtf(((v50 - v7) * (v50 - v7)) + ((v19 - v48) * (v19 - v48)));
            if (this->var6)
            {
              v105 = v48;
              if (v51 > v104)
              {
                v52 = fmaxf(v104, v51 / 100.0);
                if (v52 < v51)
                {
                  v53 = v52;
                  do
                  {
                    Path::AddPoint(this, ((v19 * v53) + ((v51 - v53) * v105)) / v51, ((v50 * v53) + ((v51 - v53) * v7)) / v51, ((v49 * v53) + ((v51 - v53) * v5)) / v51, 0);
                    v53 = v52 + v53;
                  }

                  while (v53 < v51);
                }
              }

              v54 = Path::AddPoint(this, v19, v50, v49, 0);
              *(v14 + 1) = v54;
              v12 = 2.0;
              v17 = v49;
              v29 = v50;
              v6 = v105;
              if ((v54 & 0x80000000) == 0)
              {
                goto LABEL_117;
              }
            }

            else
            {
              v29 = v14[5];
              v6 = v48;
              if (v51 > v104)
              {
                v61 = fmaxf(v104, v51 / 100.0);
                if (v61 < v51)
                {
                  v62 = v61;
                  do
                  {
                    Path::AddPoint(this, ((v19 * v62) + ((v51 - v62) * v6)) / v51, ((v29 * v62) + ((v51 - v62) * v7)) / v51, 0);
                    v62 = v61 + v62;
                  }

                  while (v62 < v51);
                }
              }

              v63 = Path::AddPoint(this, v19, v29, 0);
              *(v14 + 1) = v63;
              v12 = 2.0;
              v17 = v49;
              if ((v63 & 0x80000000) == 0)
              {
                goto LABEL_117;
              }
            }

            if (!v11)
            {
LABEL_109:
              v14[1] = 0.0;
              goto LABEL_117;
            }

LABEL_84:
            v60 = *(v14 - 10);
LABEL_85:
            *(v14 + 1) = v60;
            goto LABEL_117;
          }

          if (v16 != 2)
          {
            goto LABEL_72;
          }

          v17 = 1.0;
          if ((v15 & 0x10) != 0)
          {
            v17 = v14[10];
          }

          v19 = v14[4];
          v18 = v14[5];
          v23 = v14[6];
          v24 = v14[7];
          v25 = v14[8];
          v26 = v14[9];
          if (this->var6)
          {
            Path::RecCubicTo(this, v6, v7, v5, v23, v24, v19, v18, v17, 8, v25, v26, a2, v104);
            goto LABEL_28;
          }

          Path::RecCubicTo(this, v6, v7, v23, v24, v19, v18, v25, v26, 8, a2, v104);
        }

        else
        {
          if ((*v14 & 0xFu) > 4)
          {
            if (v16 != 5)
            {
              if (v16 == 7)
              {
                *&v9 = v6;
                if (this->var6)
                {
                  Path::AddForcedPoint(this, v6, v7, v5);
                }

                else
                {
                  Path::AddForcedPoint(this, v9, v7);
                }

                *(v14 + 1) = v28;
                ++v11;
              }

LABEL_72:
              v29 = 0.0;
              v19 = 0.0;
              goto LABEL_118;
            }

            var11 = this->var11;
            if (this->var6)
            {
              v38 = &var11[16 * v10];
              v39 = v6;
              v19 = v38[1];
              v40 = v38[2];
              v41 = v38[3];
              v42 = sqrtf(((v40 - v7) * (v40 - v7)) + ((v19 - v39) * (v19 - v39)));
              if (v42 > v104)
              {
                v108 = fmaxf(v104, v42 / 100.0);
                if (v108 < v42)
                {
                  v43 = v108;
                  do
                  {
                    v44 = ((v40 * v43) + ((v42 - v43) * v7)) / v42;
                    v45 = v40;
                    v46 = v41;
                    Path::AddPoint(this, ((v19 * v43) + ((v42 - v43) * v39)) / v42, v44, ((v41 * v43) + ((v42 - v43) * v5)) / v42, 0);
                    v41 = v46;
                    v40 = v45;
                    v43 = v108 + v43;
                  }

                  while (v43 < v42);
                }
              }

              v17 = v41;
              v47 = Path::AddPoint(this, v19, v40, v41, 0);
              *(v14 + 1) = v47;
              v29 = v40;
              if (v47 < 0)
              {
                v12 = 2.0;
                if (v11)
                {
                  v14[1] = *(v14 - 10);
                }

                else
                {
                  v14[1] = 0.0;
                }
              }

              else
              {
                v12 = 2.0;
              }

              v6 = v39;
              goto LABEL_117;
            }

            v55 = &var11[12 * v10];
            v19 = *(v55 + 1);
            v29 = *(v55 + 2);
            v56 = sqrtf(((v29 - v7) * (v29 - v7)) + ((v19 - v6) * (v19 - v6)));
            if (v56 > v104)
            {
              v57 = fmaxf(v104, v56 / 100.0);
              if (v57 < v56)
              {
                v58 = v57;
                do
                {
                  Path::AddPoint(this, ((v19 * v58) + ((v56 - v58) * v6)) / v56, ((v29 * v58) + ((v56 - v58) * v7)) / v56, 0);
                  v58 = v57 + v58;
                }

                while (v58 < v56);
              }
            }

            v59 = Path::AddPoint(this, v19, v29, 0);
            *(v14 + 1) = v59;
            v17 = 0.0;
            if (v59 < 0)
            {
              v12 = 2.0;
              if (!v11)
              {
                goto LABEL_109;
              }

              goto LABEL_84;
            }

            v12 = 2.0;
            goto LABEL_117;
          }

          if (v16 == 3)
          {
            v17 = 1.0;
            if ((v15 & 0x10) != 0)
            {
              v17 = v14[7];
            }

            v31 = *(v14 + 4);
            v19 = v14[5];
            v99 = v14[6];
            v32 = v11 + 1;
            v33 = v11 + 1;
            if (v31 >= 1)
            {
              v34 = (v13 + 44 * v32);
              v35 = v34[4];
              v107 = v34[5];
              if (v31 == 1)
              {
                v36 = 1.0;
                if ((v15 & 0x10) != 0)
                {
                  v36 = v34[6];
                }

                if (this->var6)
                {
                  Path::RecBezierTo(this, v35, v107, v36, v6, v7, v5, v19, v99, 8, v17, a2, v104);
                }

                else
                {
                  Path::RecBezierTo(this, v35, v107, v6, v7, v19, v99, a2, 8, v104);
                }
              }

              else
              {
                v97 = v17;
                v64 = 1.0;
                if ((v15 & 0x10) != 0)
                {
                  v64 = v34[6];
                }

                v65 = 0;
                v66 = -(v64 - (v5 * v12));
                v98 = v7;
                v67 = -(v107 - (v7 * v12));
                v68 = -(v35 - (v6 * v12));
                v69 = (v13 + 44 * v33 + 68);
                v100 = v14[5];
                v106 = v6;
                do
                {
                  v70 = v35;
                  v71 = v107;
                  v72 = v64;
                  v73 = 1.0;
                  if ((v15 & 0x10) != 0)
                  {
                    v73 = *v69;
                  }

                  v109 = v73;
                  v74 = *(v69 - 2);
                  v75 = *(v69 - 1);
                  v76 = v68 + v70;
                  v77 = v76 * 0.5;
                  v78 = v67 + v107;
                  v79 = v78 * 0.5;
                  v80 = (v66 + v72) * 0.5;
                  if (v65)
                  {
                    v81 = *(v69 - 2);
                    v82 = v76 * 0.5;
                    v83 = v78 * 0.5;
                    v84 = this->var6 ? Path::AddPoint(this, v82, v83, v80, 0) : Path::AddPoint(this, v82, v83, 0);
                    *(v69 - 16) = v84;
                    v74 = v81;
                    if (v84 < 0)
                    {
                      if (v33)
                      {
                        v85 = *(v69 - 27);
                      }

                      else
                      {
                        v85 = 0;
                      }

                      *(v69 - 16) = v85;
                    }
                  }

                  v86 = v74;
                  v107 = v75;
                  v87 = (v71 + v75) * 0.5;
                  v101 = v87;
                  v102 = (v70 + v74) * 0.5;
                  if (this->var6)
                  {
                    Path::RecBezierTo(this, v70, v71, v72, v77, v79, v80, (v70 + v74) * 0.5, v87, 8, (v72 + v109) * 0.5, a2, v104);
                  }

                  else
                  {
                    Path::RecBezierTo(this, v70, v71, v77, v79, (v70 + v74) * 0.5, v87, a2, 8, v104);
                  }

                  ++v65;
                  v69 += 11;
                  v66 = v72;
                  v67 = v71;
                  v68 = v70;
                  v19 = v100;
                  v35 = v86;
                  v64 = v109;
                }

                while (v31 - 1 != v65);
                v88 = (v72 + v109) * 0.5;
                if (this->var6)
                {
                  v89 = Path::AddPoint(this, v102, v101, (v72 + v109) * 0.5, 0);
                }

                else
                {
                  v89 = Path::AddPoint(this, v102, v101, 0);
                }

                v17 = v97;
                *(v69 - 16) = v89;
                v90 = v86;
                if (v89 < 0)
                {
                  if (v33)
                  {
                    v91 = *(v69 - 27);
                  }

                  else
                  {
                    v91 = 0;
                  }

                  *(v69 - 16) = v91;
                }

                v92 = (v86 - (v86 - (v100 * 2.0))) * 0.5;
                v93 = (v75 - (v75 - (v99 * 2.0))) * 0.5;
                v12 = 2.0;
                if (this->var6)
                {
                  Path::RecBezierTo(this, v90, v75, v109, v102, v101, v88, v92, v93, 8, (v109 - (v109 - (v97 * 2.0))) * 0.5, a2, v104);
                }

                else
                {
                  Path::RecBezierTo(this, v90, v75, v102, v101, (v90 - (v90 - (v100 * 2.0))) * 0.5, v93, a2, 8, v104);
                }

                v6 = v106;
                v7 = v98;
              }
            }

            v29 = v99;
            if (this->var6)
            {
              v94 = Path::AddPoint(this, v19, v99, v17, 0);
            }

            else
            {
              v94 = Path::AddPoint(this, v19, v99, 0);
            }

            *(v14 + 1) = v94;
            if (v94 < 0)
            {
              if (v33)
              {
                v95 = *(v14 - 10);
              }

              else
              {
                v95 = 0;
              }

              *(v14 + 1) = v95;
            }

            v11 = v31 + v33;
            goto LABEL_118;
          }

          if (v16 != 4)
          {
            goto LABEL_72;
          }

          v17 = 1.0;
          if ((v15 & 0x10) != 0)
          {
            v17 = v14[10];
          }

          v19 = v14[4];
          v18 = v14[5];
          v20 = v14[7];
          v21 = *(v14 + 36);
          v22 = *(v14 + 37);
          if (this->var6)
          {
            Path::DoArc(this, v6, v7, v5, v19, v18, v17, v14[6], v20, v21, v22, v14[8], v96);
LABEL_28:
            v27 = Path::AddPoint(this, v19, v18, v17, 0);
            goto LABEL_75;
          }

          Path::DoArc(this, v6, v7, v14[4], v14[5], v14[6], v14[7], v14[8], v21, v22, v20);
        }

        v27 = Path::AddPoint(this, v19, v18, 0);
LABEL_75:
        *(v14 + 1) = v27;
        v29 = v18;
        if (v27 < 0)
        {
          if (v11)
          {
            goto LABEL_84;
          }

          v60 = 0;
          goto LABEL_85;
        }

LABEL_117:
        ++v11;
LABEL_118:
        v9 = vabds_f32(v6, v19);
        if (v9 > 0.00001 || (v9 = vabds_f32(v7, v29), v9 > 0.00001))
        {
          v7 = v29;
          v6 = v19;
        }

        v5 = v17;
      }

      while (v11 < this->var2);
    }
  }
}

float Path::PrevPoint(Path *this, unsigned int a2, float *a3, float *a4)
{
  if ((a2 & 0x80000000) == 0)
  {
    v4 = (this->var3 + 44 * a2 + 24);
    v5 = a2 + 1;
    while (1)
    {
      v6 = *(v4 - 6) & 0xF;
      if ((v6 - 5) >= 3)
      {
        break;
      }

      v4 -= 11;
      if (--v5 < 1)
      {
        return result;
      }
    }

    if ((*(v4 - 6) & 0xFu) > 1 && v6 != 2)
    {
      if (v6 == 3)
      {
        *a3 = *(v4 - 1);
        goto LABEL_11;
      }

      if (v6 != 4)
      {
        return result;
      }
    }

    *a3 = *(v4 - 2);
    --v4;
LABEL_11:
    result = *v4;
    *a4 = *v4;
  }

  return result;
}

float Path::QuadraticPoint(Path *this, float a2, float *a3, float *a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  *&this->var0 = ((((a5 * -2.0) + (a7 * 2.0)) * a2) + ((((a9 + (a7 * -2.0)) + a5) * a2) * a2)) + a5;
  result = ((((a6 * -2.0) + (a8 * 2.0)) * a2) + ((((a10 + (a8 * -2.0)) + a6) * a2) * a2)) + a6;
  *a3 = result;
  return result;
}

float Path::CubicTangent(Path *this, float a2, float *a3, float *a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v12 = ((a11 + (a9 * -2.0)) + (a5 * 2.0)) + a7;
  v13 = ((a7 * -2.0) - (a11 - (a9 * 3.0))) + (a5 * -3.0);
  v14 = ((a12 + (a10 * -2.0)) + (a6 * 2.0)) + a8;
  v15 = ((a8 * -2.0) - (a12 - (a10 * 3.0))) + (a6 * -3.0);
  *&this->var0 = (((v13 + v13) * a2) + (((v12 * 3.0) * a2) * a2)) + a7;
  result = (((v15 + v15) * a2) + (((v14 * 3.0) * a2) * a2)) + a8;
  *a3 = result;
  return result;
}

void Path::ArcAngles(Path *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, int a9, float *a10, float *a11, float *a12)
{
  v15 = this;
  v18 = a4 - a2;
  v19 = a5 - a3;
  v20 = __sincosf_stret(a8);
  v21 = ((v19 * v20.__sinval) + (v20.__cosval * v18)) / a6;
  v22 = ((v19 * v20.__cosval) - (v20.__sinval * v18)) / a7;
  v23 = (v22 * v22) + (v21 * v21);
  v24 = (v23 * -0.25) + 1.0;
  v25 = 0.0;
  if (v24 < 0.0)
  {
    v24 = 0.0;
  }

  v26 = sqrtf(v24);
  v27 = sqrtf(v23);
  v28 = (-v22 / v27) * v26;
  v29 = v21 * 0.5;
  v30 = v28 - (v21 * 0.5);
  v31 = (v21 / v27) * v26;
  v32 = v22 * 0.5;
  if (v30 >= -1.0)
  {
    if (v30 <= 1.0)
    {
      v33 = acosf(v30);
      *a10 = v33;
      if (v31 >= v32)
      {
        goto LABEL_9;
      }

      v25 = 6.28318531 - v33;
    }
  }

  else
  {
    v25 = 3.1416;
  }

  *a10 = v25;
LABEL_9:
  if ((v29 + v28) >= -1.0)
  {
    v34 = 0.0;
    if ((v29 + v28) <= 1.0)
    {
      v34 = acosf(v29 + v28);
      *a11 = v34;
      if ((v32 + v31) >= 0.0)
      {
        goto LABEL_15;
      }

      v34 = 6.28318531 - v34;
    }
  }

  else
  {
    v34 = 3.1416;
  }

  *a11 = v34;
LABEL_15:
  if (a9)
  {
    if (!v15)
    {
      return;
    }
  }

  else if (v15)
  {
    return;
  }

  *a11 = *a10;
  *a10 = v34;
  v35 = *a11 + 3.14159265;
  *a11 = v35;
  v36 = *a10 + 3.14159265;
  *a10 = v36;
  v37 = *a11;
  if (v37 >= 6.28318531)
  {
    v38 = v37 + -6.28318531;
    *a11 = v38;
    v36 = *a10;
  }

  v39 = v36;
  if (v39 >= 6.28318531)
  {
    v40 = v39 + -6.28318531;
    *a10 = v40;
  }
}

void Path::Fill(Path *this, Shape *a2, int a3, char a4, int a5, char a6)
{
  if (!a2)
  {
    return;
  }

  if ((a4 & 1) == 0)
  {
    Shape::Reset(a2, this->var8);
  }

  if (this->var8 < 2)
  {
    return;
  }

  v93 = *(a2 + 4);
  if (this->var7)
  {
    Shape::MakeBackData(a2, 1);
  }

  if (a6)
  {
    return;
  }

  var8 = this->var8;
  v92 = a5;
  if (!this->var7)
  {
    if (this->var6)
    {
      if (var8 >= 1)
      {
        v32 = 0;
        v33 = 0;
        do
        {
          Shape::AddPoint(a2, *&this->var11[v32 + 4], *&this->var11[v32 + 8]);
          ++v33;
          v34 = this->var8;
          v32 += 16;
        }

        while (v33 < v34);
        if (v34 >= 2)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = v93 + 1;
          v40 = -1;
          v41 = 1;
          do
          {
            var11 = this->var11;
            v43 = &var11[v35];
            if (*&var11[v35 + 16] == 1)
            {
              if (a5)
              {
                if (v36 && v40 >= 0)
                {
                  Shape::DisconnectEnd(a2, v40);
                  Shape::ConnectEnd(a2, v38 + v93, v40);
                }

                else
                {
                  Shape::AddEdge(a2, v37 + v93, v38 + v93);
                }
              }

              v36 = 0;
              v40 = -1;
              v38 = v41;
              v37 = v41;
            }

            else
            {
              v44 = &var11[16 * v37];
              if (vabds_f32(*(v43 + 5), *(v44 + 1)) >= 0.00001 || vabds_f32(*&var11[v35 + 24], *(v44 + 2)) >= 0.00001)
              {
                v45 = &var11[16 * v38];
                v40 = Shape::AddEdge(a2, v37 + v93, v39);
                v36 = vabds_f32(*(v43 + 5), *(v45 + 1)) < 0.00001 && vabds_f32(*&var11[v35 + 24], *(v45 + 2)) < 0.00001;
                v37 = v41;
                a5 = v92;
              }
            }

            ++v41;
            v35 += 16;
            ++v39;
          }

          while (v41 < this->var8);
          goto LABEL_110;
        }
      }
    }

    else if (var8 >= 1)
    {
      v69 = 0;
      v70 = 0;
      do
      {
        Shape::AddPoint(a2, *&this->var11[v69 + 4], *&this->var11[v69 + 8]);
        ++v70;
        v71 = this->var8;
        v69 += 12;
      }

      while (v70 < v71);
      if (v71 >= 2)
      {
        v72 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v73 = v93 + 1;
        v40 = -1;
        v74 = 1;
        do
        {
          v75 = this->var11;
          v76 = &v75[v72];
          if (*&v75[v72 + 12] == 1)
          {
            if (a5)
            {
              if (v36 && v40 >= 0)
              {
                Shape::DisconnectEnd(a2, v40);
                Shape::ConnectEnd(a2, v38 + v93, v40);
              }

              else
              {
                Shape::AddEdge(a2, v37 + v93, v38 + v93);
              }
            }

            v36 = 0;
            v40 = -1;
            v38 = v74;
            v37 = v74;
          }

          else
          {
            v77 = &v75[12 * v37];
            if (vabds_f32(*(v76 + 4), *(v77 + 1)) >= 0.00001 || vabds_f32(*&v75[v72 + 20], *(v77 + 2)) >= 0.00001)
            {
              v78 = &v75[12 * v38];
              v40 = Shape::AddEdge(a2, v37 + v93, v73);
              v36 = vabds_f32(*(v76 + 4), *(v78 + 1)) < 0.00001 && vabds_f32(*&v75[v72 + 20], *(v78 + 2)) < 0.00001;
              v37 = v74;
              a5 = v92;
            }
          }

          ++v74;
          v72 += 12;
          ++v73;
        }

        while (v74 < this->var8);
        goto LABEL_110;
      }
    }

    v38 = 0;
    v37 = 0;
    v36 = 0;
    v40 = -1;
LABEL_110:
    if (!a5)
    {
      return;
    }

    if (!v36 || v40 < 0)
    {

      Shape::AddEdge(a2, v37 + v93, v38 + v93);
      return;
    }

    Shape::DisconnectEnd(a2, v40);
    v79 = v38 + v93;
    v80 = a2;
    v81 = v40;
LABEL_121:

    Shape::ConnectEnd(v80, v79, v81);
    return;
  }

  v89 = a3;
  if (this->var6)
  {
    if (var8 >= 1)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        Shape::AddPoint(a2, *&this->var11[v12 + 4], *&this->var11[v12 + 8]);
        ++v13;
        v14 = this->var8;
        v12 += 24;
      }

      while (v13 < v14);
      if (v14 >= 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = v93 + 1;
        v20 = -1;
        v21 = 1;
        while (1)
        {
          v22 = this->var11;
          v23 = &v22[v15];
          v24 = &v22[24 * v16];
          if (*&v22[v15 + 24] != 1)
          {
            v90 = v16;
            v25 = &v22[24 * v17];
            if (vabds_f32(*(v23 + 7), *(v25 + 1)) >= 0.00001 || vabds_f32(*&v22[v15 + 32], *(v25 + 2)) >= 0.00001)
            {
              v26 = Shape::AddEdge(a2, v17 + v93, v19);
              v20 = v26;
              if ((v26 & 0x80000000) == 0)
              {
                v27 = (*(a2 + 12) + 16 * v26);
                v28 = *&v22[v15 + 40];
                *v27 = v89;
                *(v27 + 1) = v28;
                if (v28 == *(v25 + 4))
                {
                  v27[2] = *(v25 + 5);
                  v29 = *&v22[v15 + 44];
                }

                else
                {
                  v27[2] = 0.0;
                  v29 = 1.0;
                }

                v27[3] = v29;
              }

              v18 = vabds_f32(*(v23 + 7), *(v24 + 1)) < 0.00001 && vabds_f32(*&v22[v15 + 32], *(v24 + 2)) < 0.00001;
              v17 = v21;
              v16 = v90;
            }

            else
            {
              v16 = v90;
            }

            goto LABEL_37;
          }

          if (v92)
          {
            break;
          }

          v18 = 0;
          v20 = -1;
          v17 = v21;
          v16 = v21;
LABEL_37:
          ++v21;
          v15 += 24;
          ++v19;
          if (v21 >= this->var8)
          {
            goto LABEL_114;
          }
        }

        if (v18 && v20 >= 0)
        {
          Shape::DisconnectEnd(a2, v20);
          Shape::ConnectEnd(a2, v16 + v93, v20);
        }

        else
        {
          Shape::AddEdge(a2, v17 + v93, v16 + v93);
          if ((v20 & 0x80000000) == 0)
          {
            v18 = 0;
            v30 = *(a2 + 12) + 16 * v20;
            v31 = *(v24 + 4);
            *v30 = v89;
            *(v30 + 4) = v31;
            *(v30 + 8) = 0x3F80000000000000;
            goto LABEL_29;
          }
        }

        v18 = 0;
LABEL_29:
        v20 = -1;
        v17 = v21;
        v16 = v21;
        goto LABEL_37;
      }
    }

    v18 = 0;
    v17 = 0;
    v16 = 0;
    v20 = -1;
LABEL_114:
    v82 = v89;
    if (v92)
    {
      if (v18 && v20 >= 0)
      {
        Shape::DisconnectEnd(a2, v20);
        v79 = v16 + v93;
        v80 = a2;
        v81 = v20;
        goto LABEL_121;
      }

      v83 = this->var11;
      v84 = Shape::AddEdge(a2, v17 + v93, v16 + v93);
      if ((v84 & 0x80000000) != 0)
      {
        return;
      }

      v85 = *(a2 + 12) + 16 * v84;
      v86 = *&v83[24 * v16 + 16];
LABEL_131:
      *v85 = v82;
      *(v85 + 4) = v86;
      *(v85 + 8) = 0x3F80000000000000;
      return;
    }

    return;
  }

  if (var8 >= 1)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      Shape::AddPoint(a2, *&this->var11[v46 + 4], *&this->var11[v46 + 8]);
      ++v47;
      v48 = this->var8;
      v46 += 20;
    }

    while (v47 < v48);
    if (v48 >= 2)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = v93 + 1;
      v54 = -1;
      v55 = 1;
      while (1)
      {
        v56 = this->var11;
        v57 = &v56[v49];
        v58 = &v56[20 * v50];
        if (*&v56[v49 + 20] != 1)
        {
          v91 = v50;
          v59 = &v56[20 * v51];
          if (vabds_f32(*(v57 + 6), *(v59 + 1)) >= 0.00001 || vabds_f32(*&v56[v49 + 28], *(v59 + 2)) >= 0.00001)
          {
            v60 = Shape::AddEdge(a2, v51 + v93, v53);
            v54 = v60;
            if ((v60 & 0x80000000) == 0)
            {
              v61 = *(a2 + 12);
              v62 = (v61 + 16 * v60);
              v63 = *&v56[v49 + 32];
              *v62 = v89;
              v62[1] = v63;
              v64 = 0;
              if (v63 == *(v59 + 3))
              {
                v64 = *(v59 + 4);
              }

              v65 = *&v56[v49 + 36];
              v66 = v61 + 16 * v60;
              *(v66 + 8) = v64;
              *(v66 + 12) = v65;
            }

            v52 = vabds_f32(*(v57 + 6), *(v58 + 1)) < 0.00001 && vabds_f32(*&v56[v49 + 28], *(v58 + 2)) < 0.00001;
            v51 = v55;
            v50 = v91;
          }

          else
          {
            v50 = v91;
          }

          goto LABEL_86;
        }

        if (v92)
        {
          break;
        }

        v52 = 0;
        v54 = -1;
        v51 = v55;
        v50 = v55;
LABEL_86:
        ++v55;
        v49 += 20;
        ++v53;
        if (v55 >= this->var8)
        {
          goto LABEL_118;
        }
      }

      if (v52 && v54 >= 0)
      {
        Shape::DisconnectEnd(a2, v54);
        Shape::ConnectEnd(a2, v50 + v93, v54);
      }

      else
      {
        Shape::AddEdge(a2, v51 + v93, v50 + v93);
        if ((v54 & 0x80000000) == 0)
        {
          v52 = 0;
          v67 = *(a2 + 12) + 16 * v54;
          v68 = *(v58 + 3);
          *v67 = v89;
          *(v67 + 4) = v68;
          *(v67 + 8) = 0x3F80000000000000;
          goto LABEL_85;
        }
      }

      v52 = 0;
LABEL_85:
      v54 = -1;
      v51 = v55;
      v50 = v55;
      goto LABEL_86;
    }
  }

  v52 = 0;
  v51 = 0;
  v50 = 0;
  v54 = -1;
LABEL_118:
  v82 = v89;
  if (v92)
  {
    if (v52 && v54 >= 0)
    {
      Shape::DisconnectEnd(a2, v54);
      v79 = v50 + v93;
      v80 = a2;
      v81 = v54;
      goto LABEL_121;
    }

    v87 = this->var11;
    v88 = Shape::AddEdge(a2, v51 + v93, v50 + v93);
    if ((v88 & 0x80000000) != 0)
    {
      return;
    }

    v85 = *(a2 + 12) + 16 * v88;
    v86 = *&v87[20 * v50 + 12];
    goto LABEL_131;
  }
}

uint64_t sub_2767881D4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_info(a2, a2, a3);
  isNonGroupedChild = objc_msgSend_isNonGroupedChild_(v3, v5, v4);

  return isNonGroupedChild;
}

uint64_t sub_27678AECC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_info(a2, a2, a3);
  LODWORD(v3) = objc_msgSend_isNonGroupedChild_(v3, v5, v4);

  return v3 ^ 1;
}

void sub_27678B2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSDBrushStrokeDirectSurfaceRenderingContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_27678CE30(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_2766E23A4();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2767913E0(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t sub_27678CF08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27678CF20(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = objc_msgSend_p_glContextArray(TSDBrushStroke, a2, a3);
  if (!objc_msgSend_count(v19, v4, v5))
  {
    TSUSetCrashReporterInfo();
    v13 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]_block_invoke", "[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm", 701);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v15, v17, 701, 1, "Semaphore said there were contexts available, but there weren't.");

    TSUCrashBreakpoint();
    abort();
  }

  v8 = objc_msgSend_lastObject(v19, v6, v7);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  objc_msgSend_removeLastObject(v19, v11, v12);
}

void sub_27678D068(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_p_glContextArray(TSDBrushStroke, a2, a3);
  objc_msgSend_addObject_(v5, v4, *(*(*(a1 + 32) + 8) + 40));
}

uint64_t sub_27678E05C(uint64_t a1)
{
  result = sub_2766BFDA4();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_27678F238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41)
{
  v44 = *(v42 - 256);
  if (v44)
  {
    *(v42 - 248) = v44;
    operator delete(v44);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27678F410(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_2766E23A4();
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
      sub_276791428(a1, v10);
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

void sub_276790738(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_hwModel(MEMORY[0x277D81348], a2, a3);
  isEqual = objc_msgSend_isEqual_(v3, v4, @"iMac14,2");

  v6 = 6;
  if (isEqual)
  {
    v6 = 1;
  }

  qword_280A4CA08 = v6;
}

void sub_276790840(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_p_glContextCount(*(a1 + 32), a2, a3);
  v4 = dispatch_semaphore_create(v3);
  v5 = qword_280A4CA18;
  qword_280A4CA18 = v4;
}

void sub_2767908C0()
{
  v0 = dispatch_queue_create("com.apple.iwork.TSDBrushStrokeGLContextQueue", 0);
  v1 = qword_280A4CA28;
  qword_280A4CA28 = v0;
}

void sub_2767909A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v5 = qword_280A4CA38;
  qword_280A4CA38 = v4;

  v8 = objc_msgSend_p_glContextCount(*(a1 + 32), v6, v7);
  if (v8)
  {
    v9 = v8;
    do
    {
      v10 = objc_alloc(MEMORY[0x277CD9388]);
      v14 = objc_msgSend_initForBrushes(v10, v11, v12);
      if (v14)
      {
        objc_msgSend_addObject_(qword_280A4CA38, v13, v14);
      }

      else
      {
        atomic_store(1u, byte_280A4CA00);
      }

      --v9;
    }

    while (v9);
  }
}

void sub_276790B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_276790B94()
{
  v0 = objc_alloc(MEMORY[0x277CCAB00]);
  v2 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v0, v1, 512, 0, 16);
  v3 = qword_280A4CA48;
  qword_280A4CA48 = v2;
}

void sub_276790BE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v49 = objc_msgSend_currentContext(MEMORY[0x277CD9388], a2, a3);
  v7 = objc_msgSend_objectForKeyedSubscript_(qword_280A4CA48, v4, v49);
  if (!v7)
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
    objc_msgSend_setObject_forKeyedSubscript_(qword_280A4CA48, v8, v7, v49);
  }

  v9 = objc_msgSend_strokeName(*(a1 + 32), v5, v6);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v9);
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v16 = objc_msgSend_strokeName(*(a1 + 32), v14, v15);
    v18 = objc_msgSend_storageForBrushStrokeNamed_(TSDBrushStrokeLoader, v17, v16);

    if (!v18)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDBrushStroke p_glTextureForCurrentStrokeAndContext]_block_invoke_2");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 2419, 0, "invalid nil value for '%{public}s'", "storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    v30 = objc_msgSend_image(v18, v19, v20);
    if (!v30)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSDBrushStroke p_glTextureForCurrentStrokeAndContext]_block_invoke_2");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 2421, 0, "invalid nil value for '%{public}s'", "img");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    }

    v38 = objc_msgSend_CGImage(v30, v28, v29);
    v40 = objc_msgSend_textureWithCGImage_generateMipmaps_error_(TSDGLTextureLoader, v39, v38, 0, 0);
    v41 = *(*(a1 + 40) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    v43 = *(a1 + 32);
    v44 = *(*(*(a1 + 40) + 8) + 40);
    v47 = objc_msgSend_strokeName(v43, v45, v46);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v48, v44, v47);
  }
}

void sub_2767913E0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_2766E2414();
}

void sub_276791428(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2766E2414();
}

void *sub_276791470(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2767914E8(result, a2);
  }

  return result;
}

void sub_2767914CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2767914E8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_276791524(a1, a2);
  }

  sub_2766E23A4();
}

void sub_276791524(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_2766E2414();
}

uint64_t sub_27679156C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2767915E8(result, a4);
  }

  return result;
}

void sub_2767915CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2767915E8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2767913E0(a1, a2);
  }

  sub_2766E23A4();
}

uint64_t sub_276792078(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_isLocked(v2, v3, v4) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_276792BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v35 - 120));
  objc_destroyWeak((v35 - 112));
  _Unwind_Resume(a1);
}

id sub_276792C58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_p_tintedImageWithScale_useHDR_(WeakRetained, v2, 0, 1.0);

  return v3;
}

id sub_276792CAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_p_tintedImageWithScale_useHDR_(WeakRetained, v2, 0, 0.5);

  return v3;
}

id sub_276792D00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_p_tintedImageWithScale_useHDR_(WeakRetained, v2, 0, 0.25);

  return v3;
}

id sub_276792D54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_p_tintedImageWithScale_useHDR_(WeakRetained, v2, 1, 1.0);

  return v3;
}

id sub_276792DA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_p_tintedImageWithScale_useHDR_(WeakRetained, v2, 1, 0.5);

  return v3;
}

id sub_276792DFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_p_tintedImageWithScale_useHDR_(WeakRetained, v2, 1, 0.25);

  return v3;
}

void sub_276796404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGImageRef sub_27679641C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[17];
  if (!v3 || v2[18] != *(a1 + 48) || (v4 = v2[19], v4 >= 4))
  {
    CGImageRelease(v3);
    *(*(a1 + 32) + 136) = CGImageCreateCopy(*(a1 + 48));
    *(*(a1 + 32) + 144) = *(a1 + 48);
    *(*(a1 + 32) + 152) = 0;
    v2 = *(a1 + 32);
    v4 = v2[19];
  }

  v2[19] = v4 + 1;
  result = CGImageRetain(*(*(a1 + 32) + 136));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_2767977FC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3 == v4)
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = 0;
    if (v3 && v4)
    {
      isEqualToString = objc_msgSend_isEqualToString_(v3, v5, v4);
    }
  }

  return isEqualToString;
}

id TSDTopmostInfoFromInfo(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = objc_msgSend_parentInfo(v3, v4, v5);
  if (v7)
  {
    v8 = v3;
    while (1)
    {
      v9 = TSUProtocolCast();
      if (v9)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0 || objc_msgSend_isTopmostContainerInfo(v9, v10, v11, &unk_2885CEC50))
        {
          break;
        }
      }

      v12 = v7;

      v7 = objc_msgSend_parentInfo(v12, v13, v14);

      v8 = v12;
      if (!v7)
      {
        v8 = v12;
        if (!a2)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    if (a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = v3;
    if (a2)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  if (v8 && objc_msgSend_conformsToProtocol_(v8, v6, &unk_2885CED78))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "NSObject<TSDInfo> *TSDTopmostInfoFromInfo(__strong id<TSDInfo>, TSDTopmostInfoMode)");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 34, 0, "Caught a flow info when looking for topmost of %@ with TSDTopmostInfoModeIgnoringNonDrawableContainers!", v3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    v8 = 0;
  }

LABEL_15:

  return v8;
}

uint64_t sub_27679ACC0(void *a1)
{
  v1 = TSDTopmostInfoFromInfo(a1, 1);
  v2 = TSUProtocolCast();
  isLocked = objc_msgSend_isLocked(v2, v3, v4, &unk_2885A8390);

  return isLocked;
}

id TSDNearestParentInfoOfClassFromInfo(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_27679AE4C;
  v4[3] = &unk_27A6CDD30;
  v4[4] = a1;
  v2 = TSDNearestParentInfoFromInfoPassingTest(a2, v4);

  return v2;
}

id TSDNearestParentInfoFromInfoPassingTest(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    do
    {
      if ((*(a2 + 16))(a2, v5))
      {
        break;
      }

      v8 = objc_msgSend_parentInfo(v5, v6, v7);

      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_27679B0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose((v34 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27679B144(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27679B15C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

void sub_27679B208(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v3, v7);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_27679B288(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v3, v7);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_27679B308(uint64_t a1)
{
  v2 = [TSDInfoCollectionSelectionHelper alloc];
  v5 = objc_msgSend_initWithInteractiveInfos_nonInteractiveInfos_(v2, v3, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
  objc_msgSend_setSelectionHelper_(*(a1 + 32), v4, v5);
}

Path *sub_27679B460(Path *this, Path *a2)
{
  v3 = this;
  if (this->var0)
  {
    this = Path::CancelBezier(this);
    if ((v3->var0 & 2) == 0)
    {
LABEL_3:
      if (!a2)
      {
        return this;
      }

      goto LABEL_7;
    }
  }

  else if ((this->var0 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = Path::CloseSubpath(v3, 0);
  if (!a2)
  {
    return this;
  }

LABEL_7:
  if (v3->var2 >= 2)
  {
    Path::Reset(a2);
    Path::SetWeighted(a2, 0);
    Path::SetBackData(a2, 0);
    operator new();
  }

  return this;
}

uint64_t sub_27679BC34(uint64_t a1, float a2, float32_t a3)
{
  v21 = 1;
  v6 = *(a1 + 48);
  v22 = *(a1 + 40);
  v20 = v6;
  v13 = 0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 36);
  v6.i32[0] = v7;
  sub_27679D754(&v20, &v21, 0, &v19, &v17, &v13 + 1, &v15, 0.0, v6, v8);
  v9.i32[0] = v7;
  sub_27679D754(&v20, &v21, 1, &v18, &v16, &v13, &v14, 1.0, v9, v8);
  v10.i64[0] = __PAIR64__(v13, HIDWORD(v13));
  v11.i64[0] = v17;
  v11.i64[1] = v16;
  *(a1 + 48) = vmulq_f32(vzip1q_s32(v10, v10), v11);
  v11.f32[0] = a3;

  return sub_27679D844(a1, 8, a2, *v11.i64);
}

uint64_t sub_27679BD3C(uint64_t result, Path *a2, uint64_t a3, int a4, float a5, float a6, float a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, int a13, char a14, float32x2_t *a15, void *a16)
{
  v166 = result;
  v169 = a2;
  if (*(result + 8) >= 2)
  {
    v16 = a15;
    v17 = a4;
    v20 = a3;
    v21 = a2;
    v22 = result;
    v23 = a16;
    v24 = *(*(result + 16) + 16);
    v123 = a13 ^ 1;
    v25 = 0.0;
    v26 = 1;
    v27 = 0.0;
    v128 = 0.0;
    v140 = 0.0;
    v28 = 1;
    a11.n128_u64[0] = 0;
    while (1)
    {
      v29 = *(v22 + 16);
      v30 = v29 + 44 * v26;
      v31 = *v30 & 0xF;
      v160 = 0;
      v161 = 0;
      if (v31 > 2)
      {
        break;
      }

      if (!v31)
      {
        v42 = *(v30 + 16);
        v41 = 0.0;
        v44 = 0.0;
        if (((v28 | v123) & 1) == 0)
        {
          v45 = vsub_f32(v24, a11.n128_u64[0]);
          if (fabsf(v45.f32[0]) >= 0.0001 || fabsf(v45.f32[1]) >= 0.0001)
          {
            v81 = vsub_f32(a11.n128_u64[0], v24);
            v82 = sqrtf(vmuls_lane_f32(v81.f32[1], v81, 1) + (v81.f32[0] * v81.f32[0]));
            if (v82 <= 0.000001)
            {
              v85 = v24.u32[0];
              v164.i32[1] = v24.i32[1];
              v83 = 0.0;
              v81.i32[0] = 0;
              v82 = 0.0;
              v86 = &v162 + 4;
              v84 = v24;
            }

            else
            {
              v83 = v81.f32[0] / v82;
              v81.f32[0] = v81.f32[1] / v82;
              v84 = vadd_f32(vmul_f32(a11.n128_u64[0], 0), v24);
              *(&v162 + 1) = v81.f32[1] / v82;
              v85 = vmla_f32(a11.n128_u64[0], 0, v24);
              v86 = &v164 + 4;
            }

            v134 = v83;
            v146 = v85.f32[0];
            v163 = __PAIR64__(v81.u32[0], LODWORD(v83));
            v165 = v84;
            *&v160 = v82;
            *(&v160 + 1) = v82;
            *&v162 = v83;
            v164.i32[0] = v85.i32[0];
            *v86 = v85.i32[1];
            v95 = *(&v162 + 1);
            v44 = -*(&v162 + 1);
            v47 = a7;
            sub_27679CCAC(v21, v17, v24.f32[0], v24.f32[1], v27, v25, -v81.f32[0], v83, a6, a7);
            v96 = v146 - (a6 * v95);
            v46 = v164.i32[1];
            Path::LineTo(v21, v96, v164.f32[1] + (a6 * v134));
            a11.n128_f32[0] = v146;
            v27 = v44;
            v25 = v134;
          }

          else
          {
            v46 = a11.n128_i32[1];
            v134 = 0.0;
            v47 = a7;
          }

          sub_27679CCAC(v21, v17, a11.n128_f32[0], *&v46, v27, v25, v140, v128, a6, v47);
          result = Path::Close(v21);
          v41 = v134;
        }

        ++v26;
        v27 = v44;
        v43 = v42;
        goto LABEL_95;
      }

      if (v31 != 1)
      {
        v142 = a11.n128_u64[0];
        v129 = *(v30 + 16);
        v40 = v24.f32[1];
        v149 = v24;
        result = sub_27679CEFC(v29 + 44 * v26, v24.f32[0], v24.f32[1]);
        if (!result)
        {
          sub_27679D178((v30 + 16), 0, &v165, &v163, &v160 + 1, &v161 + 1, 0.0, v149, v40);
          sub_27679D178((v30 + 16), 1, &v164, &v162, &v160, &v161, 1.0, v149, v40);
          v33 = *&v163;
          v34 = -*(&v163 + 1);
          v69 = *(&v162 + 1);
          v70 = *&v162;
          v16 = a15;
          *a15 = v164;
          *v23 = v162;
          v133 = v70;
          if (v28)
          {
            *&v71 = v149;
            v142 = v165;
            if ((a14 & 1) == 0)
            {
              Path::MoveTo(v21, v149.f32[0] + (a6 * v34), v40 + (a6 * v33));
              *&v71 = v149;
            }

            a14 = 0;
            v72 = &unk_27682C000;
            v73 = v129;
          }

          else
          {
            sub_27679CCAC(v21, v17, v149.f32[0], v40, v27, v25, v34, v33, a6, a7);
            v34 = v140;
            v33 = v128;
            v72 = &unk_27682C000;
            v73 = v129;
            *&v71 = v149;
          }

          v27 = -v69;
          v167 = v26;
          v168 = v72[504];
          *(&v71 + 1) = v73;
          *v170 = v71;
          *&v170[16] = *(v30 + 24);
          v171 = *(v30 + 32);
          v172 = *(v30 + 36);
          result = (*v20)(&v166, a5, a6);
          goto LABEL_52;
        }

        goto LABEL_14;
      }

      v144 = a11.n128_u64[0];
      v131 = *(v30 + 16);
      v54 = v24;
      v151 = v24;
      result = sub_27679CEFC(v29 + 44 * v26, v24.f32[0], v24.f32[1]);
      if (!result)
      {
        v74 = v151;
        v75 = v131;
        v76 = vsub_f32(v131, v151);
        v77 = vmul_f32(v76, v76);
        *v77.i32 = sqrtf(*&v77.i32[1] + (v76.f32[0] * v76.f32[0]));
        if (*v77.i32 <= 0.000001)
        {
          v164.i32[1] = v54.i32[1];
          v79 = v151.u32[0];
          v78 = 0;
          v77.i32[0] = 0;
          v80 = &v162 + 4;
        }

        else
        {
          v78 = vdiv_f32(v76, vdup_lane_s32(v77, 0));
          v79 = vmla_f32(v131, 0, v151);
          v80 = &v164 + 4;
          HIDWORD(v162) = v78.i32[1];
          v74 = vadd_f32(v151, vmul_f32(v131, 0));
        }

        v163 = v78;
        v165 = v74;
        LODWORD(v160) = v77.i32[0];
        HIDWORD(v160) = v77.i32[0];
        LODWORD(v162) = v78.i32[0];
        v164.i32[0] = v79.i32[0];
        *v80 = v79.i32[1];
        v92 = -v78.f32[1];
        v93 = *(&v162 + 1);
        *v16 = v164;
        *v23 = v162;
        v137 = v78.f32[0];
        if (v28)
        {
          if (a14)
          {
            a14 = 0;
            v140 = -v78.f32[1];
            v128 = v78.f32[0];
            v42 = v74;
LABEL_75:
            v27 = -v93;
            result = Path::LineTo(v21, v75.f32[0] + (a6 * -v93), v75.f32[1] + (a6 * v78.f32[0]));
            if ((result & 0x80000000) == 0)
            {
              v108 = v21->var3 + 44 * result;
              *(v108 + 4) = v26;
              *(v108 + 8) = 0x3F80000000000000;
            }

            v28 = 0;
            ++v26;
            v43 = v131;
            v41 = v137;
            goto LABEL_95;
          }

          v153 = v74;
          Path::MoveTo(v21, v54.f32[0] + (a6 * v92), v54.f32[1] + (a6 * v78.f32[0]));
          v75 = v131;
          v78.f32[0] = v137;
          a14 = 0;
          v140 = v92;
          v128 = v137;
          v94 = v153;
        }

        else
        {
          sub_27679CCAC(v21, v17, v54.f32[0], v54.f32[1], v27, v25, -v78.f32[1], v78.f32[0], a6, a7);
          v75 = v131;
          v78.f32[0] = v137;
          v94 = v144;
        }

        v42 = v94;
        goto LABEL_75;
      }

      ++v26;
      v41 = v25;
      v42 = v144;
      v43 = v151;
LABEL_95:
      v25 = v41;
      a11.n128_u64[0] = v42;
      v24 = v43;
      if (v26 >= *(v22 + 8))
      {
        return result;
      }
    }

    if (v31 > 4)
    {
      if (v31 == 5)
      {
        if (v28)
        {
          v43 = 0;
          v41 = 0.0;
          v53 = 0.0;
        }

        else
        {
          v66 = vsub_f32(v24, a11.n128_u64[0]);
          v145 = a11;
          if (fabsf(v66.f32[0]) >= 0.0001 || fabsf(v66.f32[1]) >= 0.0001)
          {
            v87 = vsub_f32(a11.n128_u64[0], v24);
            v88 = vmul_f32(v87, v87);
            *v88.i32 = sqrtf(*&v88.i32[1] + (v87.f32[0] * v87.f32[0]));
            if (*v88.i32 <= 0.000001)
            {
              v164.i32[1] = v24.i32[1];
              v90 = v24.u32[0];
              v89 = 0;
              v88.i32[0] = 0;
              v91 = &v162 + 4;
            }

            else
            {
              v89 = vdiv_f32(v87, vdup_lane_s32(v88, 0));
              v90 = vmla_f32(a11.n128_u64[0], 0, v24);
              HIDWORD(v162) = v89.i32[1];
              v91 = &v164 + 4;
              v24 = vadd_f32(vmul_f32(a11.n128_u64[0], 0), v24);
            }

            v136 = v89.f32[0];
            v152 = v90.f32[0];
            v163 = v89;
            v165 = v24;
            LODWORD(v160) = v88.i32[0];
            HIDWORD(v160) = v88.i32[0];
            LODWORD(v162) = v89.i32[0];
            v164.i32[0] = v90.i32[0];
            *v91 = v90.i32[1];
            v104 = *(&v162 + 1);
            v53 = -*(&v162 + 1);
            v68 = a7;
            sub_27679CCAC(v21, v17, v24.f32[0], v24.f32[1], v27, v25, -v89.f32[1], v89.f32[0], a6, a7);
            v105 = v152 - (a6 * v104);
            v67 = v164.i32[1];
            Path::LineTo(v21, v105, v164.f32[1] + (a6 * v136));
            a11.n128_f32[0] = v152;
            v27 = v53;
            v25 = v136;
            v132 = v145.n128_u64[0];
          }

          else
          {
            v67 = a11.n128_i32[1];
            v132 = 0;
            v136 = 0.0;
            v53 = 0.0;
            v68 = a7;
          }

          sub_27679CCAC(v21, v17, a11.n128_f32[0], *&v67, v27, v25, v140, v128, a6, v68);
          result = Path::Close(v21);
          a11 = v145;
          v43 = v132;
          v41 = v136;
        }

        ++v26;
        v28 = 1;
        v27 = v53;
        v42 = a11.n128_u64[0];
      }

      else
      {
        if (v31 == 7)
        {
          ++v26;
        }

        v27 = 0.0;
        v41 = 0.0;
        v42 = a11.n128_u64[0];
        v43 = 0;
      }

      goto LABEL_95;
    }

    if (v31 == 3)
    {
      v143 = a11.n128_u64[0];
      v49 = v30 + 16;
      v48 = *(v30 + 16);
      v130 = *(v30 + 20);
      v50 = v24;
      v150 = v24;
      result = sub_27679CEFC(v29 + 44 * v26, v24.f32[0], v24.f32[1]);
      v52 = v26 + 1;
      if (result)
      {
        v26 = v52 + v48;
        v41 = v25;
        v42 = v143;
        v43 = v150;
        v16 = a15;
LABEL_94:
        v23 = a16;
        v21 = a2;
        goto LABEL_95;
      }

      if (v48 > 0)
      {
        v55 = v26 + 1;
        v56 = (v29 + 44 * v52);
        v58 = v56[2];
        v57 = v56 + 2;
        v147 = v58;
        v51.i32[0] = v50.i32[0];
        sub_27679D754(v57, v49, 0, &v165, &v163, &v160 + 1, &v161 + 1, 0.0, v51, v50.f32[1]);
        v60 = v48 - 1;
        if (v48 != 1)
        {
          if (*(&v160 + 1) <= 0.0)
          {
            v107 = v140;
            v106 = v128;
            v16 = a15;
          }

          else
          {
            v106 = *&v163;
            v107 = -*(&v163 + 1);
            v16 = a15;
            if (v28)
            {
              v143 = v165;
              if ((a14 & 1) == 0)
              {
                Path::MoveTo(a2, v50.f32[0] + (a6 * v107), v50.f32[1] + (a6 * *&v163));
              }

              v28 = 0;
              a14 = 0;
            }

            else
            {
              sub_27679CCAC(a2, a4, v50.f32[0], v50.f32[1], *&v163, *(&v163 + 1), -*(&v163 + 1), *&v163, a6, a7);
              v28 = 0;
              v107 = v140;
              v106 = v128;
            }
          }

          v115 = v147;
          v116 = vmla_f32(vneg_f32(v147), 0x4000000040000000, v150);
          v117 = (v29 + 44 * v52 + 60);
          v23 = a16;
          do
          {
            v118 = *v117;
            v117 = (v117 + 44);
            v148 = v118;
            v155 = v115;
            v158 = 1;
            v141 = vmul_f32(vadd_f32(v115, v118), 0x3F0000003F000000);
            v159 = v141;
            v157 = v115;
            v138 = vmul_f32(vadd_f32(v116, v115), 0x3F0000003F000000);
            sub_27679D754(&v157, &v158, 1, &v164, &v162, &v160, &v161, 1.0, v138, v138.f32[1]);
            *v16 = v164;
            *a16 = v162;
            v167 = v55;
            v168 = 0x3F80000000000000;
            *&v119 = v141;
            *v170 = v138;
            *(&v119 + 1) = v155;
            *&v170[8] = v119;
            (*(a3 + 8))(&v166, a5, a6);
            v115 = v118;
            v116 = v155;
            ++v55;
            --v60;
          }

          while (v60);
          v158 = 1;
          v156 = vmul_f32(vadd_f32(v148, vmla_f32(vneg_f32(v148), 0x4000000040000000, v130)), 0x3F0000003F000000);
          v159 = v156;
          v157 = v148;
          sub_27679D754(&v157, &v158, 1, &v164, &v162, &v160, &v161, 1.0, v141, v141.f32[1]);
          v27 = -*(&v162 + 1);
          v139 = *&v162;
          *v16 = v164;
          *a16 = v162;
          v167 = v48 + v26;
          v168 = 0x3F80000000000000;
          *v170 = v141;
          *&v120 = v156;
          *(&v120 + 1) = v148;
          *&v170[8] = v120;
          result = (*(a3 + 8))(&v166, a5, a6);
          v43 = v130;
          v41 = v139;
          v26 += v48 + 1;
          v140 = v107;
          v128 = v106;
          v42 = v143;
          v17 = a4;
          v20 = a3;
          v21 = a2;
          goto LABEL_95;
        }

        v59.i32[0] = v50.i32[0];
        sub_27679D754(v57, v49, 1, &v164, &v162, &v160, &v161, 1.0, v59, v50.f32[1]);
        v61 = *&v163;
        v62 = -*(&v163 + 1);
        v63 = *(&v162 + 1);
        v64 = *&v162;
        v16 = a15;
        *a15 = v164;
        *a16 = v162;
        v135 = v64;
        if (v28)
        {
          v143 = v165;
          v17 = a4;
          if ((a14 & 1) == 0)
          {
            v65 = v63;
            Path::MoveTo(a2, v50.f32[0] + (a6 * v62), v50.f32[1] + (a6 * v61));
            v63 = v65;
          }

          a14 = 0;
        }

        else
        {
          v111 = v63;
          v17 = a4;
          sub_27679CCAC(a2, a4, v50.f32[0], v50.f32[1], v27, v25, v62, v61, a6, a7);
          v63 = v111;
          v62 = v140;
          v61 = v128;
        }

        *&v112 = v150;
        v27 = -v63;
        v167 = v26 + 1;
        v168 = 0x3F80000000000000;
        *(&v112 + 1) = v130;
        *v170 = v112;
        *&v170[16] = v147;
        v20 = a3;
        result = (*(a3 + 8))(&v166, a5, a6);
        v128 = v61;
        v113 = v143;
        goto LABEL_93;
      }

      v97 = v130;
      v98 = v150;
      v99 = vsub_f32(v130, v150);
      v100 = vmul_f32(v99, v99);
      *v100.i32 = sqrtf(*&v100.i32[1] + (v99.f32[0] * v99.f32[0]));
      v16 = a15;
      if (*v100.i32 <= 0.000001)
      {
        v164.i32[1] = v50.i32[1];
        v102 = v150.u32[0];
        v101 = 0;
        v100.i32[0] = 0;
        v103 = &v162 + 4;
      }

      else
      {
        v101 = vdiv_f32(v99, vdup_lane_s32(v100, 0));
        v102 = vmla_f32(v130, 0, v150);
        HIDWORD(v162) = v101.i32[1];
        v103 = &v164 + 4;
        v98 = vadd_f32(v150, vmul_f32(v130, 0));
      }

      v163 = v101;
      v165 = v98;
      LODWORD(v160) = v100.i32[0];
      HIDWORD(v160) = v100.i32[0];
      LODWORD(v162) = v101.i32[0];
      v164.i32[0] = v102.i32[0];
      *v103 = v102.i32[1];
      v62 = -v101.f32[1];
      v109 = *(&v162 + 1);
      *a15 = v164;
      *a16 = v162;
      v135 = v101.f32[0];
      if (v28)
      {
        v154 = v98;
        if (a14)
        {
          a14 = 0;
          v128 = v101.f32[0];
          goto LABEL_89;
        }

        v110 = a2;
        Path::MoveTo(a2, v50.f32[0] + (a6 * v62), v50.f32[1] + (a6 * v101.f32[0]));
        v97 = v130;
        v101.f32[0] = v135;
        a14 = 0;
        v128 = v135;
      }

      else if (*v100.i32 <= 0.0)
      {
        v62 = v140;
        v154 = v143;
LABEL_89:
        v110 = a2;
      }

      else
      {
        v110 = a2;
        sub_27679CCAC(a2, v17, v50.f32[0], v50.f32[1], v27, v25, -v101.f32[1], v101.f32[0], a6, a7);
        v97 = v130;
        v101.f32[0] = v135;
        v62 = v140;
        v154 = v143;
      }

      v27 = -v109;
      result = Path::LineTo(v110, v97.f32[0] + (a6 * -v109), v97.f32[1] + (a6 * v101.f32[0]));
      if ((result & 0x80000000) == 0)
      {
        v114 = v110->var3 + 44 * result;
        *(v114 + 4) = v26;
        *(v114 + 8) = 0x3F80000000000000;
      }

      v113 = v154;
LABEL_93:
      v43 = v130;
      v41 = v135;
      v28 = 0;
      v26 = v48 + v52;
      v140 = v62;
      v42 = v113;
      goto LABEL_94;
    }

    v142 = a11.n128_u64[0];
    v129 = *(v30 + 16);
    v32 = v24.f32[1];
    v149 = v24;
    result = sub_27679CEFC(v29 + 44 * v26, v24.f32[0], v24.f32[1]);
    if (!result)
    {
      sub_27679D338(v30 + 16, &v165, &v163, &v160 + 1, &v161 + 1, 0.0, v149.f32[0], v32);
      sub_27679D338(v30 + 16, &v164, &v162, &v160, &v161, 1.0, v149.f32[0], v32);
      v33 = *&v163;
      v34 = -*(&v163 + 1);
      v35 = *(&v162 + 1);
      v36 = *&v162;
      v16 = a15;
      *a15 = v164;
      *v23 = v162;
      v133 = v36;
      if (v28)
      {
        *&v37 = v149;
        v142 = v165;
        if ((a14 & 1) == 0)
        {
          Path::MoveTo(v21, v149.f32[0] + (a6 * v34), v32 + (a6 * v33));
          *&v37 = v149;
        }

        a14 = 0;
        v38 = &unk_27682C000;
        v39 = v129;
      }

      else
      {
        sub_27679CCAC(v21, v17, v149.f32[0], v32, v27, v25, v34, v33, a6, a7);
        v34 = v140;
        v33 = v128;
        v38 = &unk_27682C000;
        v39 = v129;
        *&v37 = v149;
      }

      v27 = -v35;
      v167 = v26;
      v168 = v38[504];
      *(&v37 + 1) = v39;
      *v170 = v37;
      *&v170[16] = *(v30 + 24);
      v171 = *(v30 + 32);
      LOBYTE(v172) = *(v30 + 37);
      BYTE1(v172) = *(v30 + 36);
      result = v20[2](&v166, a5, a6);
LABEL_52:
      v43 = v129;
      v41 = v133;
      v28 = 0;
      ++v26;
      v140 = v34;
      v128 = v33;
      v42 = v142;
      goto LABEL_95;
    }

LABEL_14:
    ++v26;
    v41 = v25;
    v42 = v142;
    v43 = v149;
    v16 = a15;
    goto LABEL_95;
  }

  return result;
}

Path *sub_27679CCAC(Path *this, int a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  v13 = a4;
  v15 = this;
  v16 = ((a5 * a8) - (a6 * a7));
  if (a9 >= 0.0 && v16 > -0.001 || a9 < 0.0 && v16 < 0.001)
  {
    v17 = ((a6 * a8) + (a5 * a7));
    if (v17 > 0.999)
    {
      return this;
    }

    if (v17 < -0.999)
    {
      goto LABEL_14;
    }

    v18 = a3;
LABEL_8:
    Path::LineTo(this, v18, a4);
LABEL_14:

    return Path::LineTo(v15, a3 + (a9 * a7), v13 + (a9 * a8));
  }

  if (a2 == 2)
  {
    v24 = a5 + a7;
    v25 = sqrtf(((a6 + a8) * (a6 + a8)) + (v24 * v24));
    v26 = v24 / v25;
    v27 = (a6 + a8) / v25;
    v28 = a9 / ((a8 * v27) + (v26 * a7));
    if ((v28 / a9) > a10)
    {
      goto LABEL_14;
    }

    v18 = a3 + (v28 * v26);
    a4 = v13 + (v28 * v27);
    goto LABEL_8;
  }

  if (a2 != 1)
  {
    goto LABEL_14;
  }

  v19 = a4 + (a9 * a8);
  v20 = a9;
  if (a9 <= 0.0)
  {
    v21 = v20 * -1.0001;
    v22 = v21;
    v23 = 0;
  }

  else
  {
    v21 = v20 * 1.0001;
    v22 = v21;
    v23 = 1;
  }

  return Path::ArcTo(this, a3 + (a9 * a7), v19, v21, v22, 0.0, 0, v23);
}

float *sub_27679CE84(float *result, float *a2, float *a3, float *a4, float a5, float a6, float a7)
{
  v8 = *result;
  v7 = result[1];
  v9 = *result - a6;
  v10 = v7 - a7;
  v11 = sqrtf((v10 * v10) + (v9 * v9));
  if (v11 <= 0.000001)
  {
    *a2 = a6;
    a2[1] = a7;
    v12 = 0.0;
    v11 = 0.0;
    *a3 = 0.0;
  }

  else
  {
    *a3 = v9 / v11;
    a3[1] = v10 / v11;
    *a2 = (v8 * a5) + ((1.0 - a5) * a6);
    v12 = (v7 * a5) + ((1.0 - a5) * a7);
    a3 = a2;
  }

  a3[1] = v12;
  *a4 = v11;
  return result;
}

uint64_t sub_27679CEFC(uint64_t a1, float a2, float a3)
{
  v3 = *a1 & 0xF;
  v4 = 1;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return v4;
      }

      if (vabds_f32(*(a1 + 16), a2) >= 0.00001 || vabds_f32(*(a1 + 20), a3) >= 0.00001)
      {
        return 0;
      }

      if (!*(a1 + 36) || fabsf(*(a1 + 24)) < 0.00001)
      {
        return 1;
      }

      v13 = fabsf(*(a1 + 28));
      return v13 < 0.00001;
    }

    v15 = *(a1 + 16);
    if (v15 > 0)
    {
      v16 = vabds_f32(*(a1 + 20), a2);
      v8 = 0.00001;
      if (v15 != 1)
      {
        if (v16 < 0.00001 && vabds_f32(*(a1 + 24), a3) < 0.00001)
        {
          v17 = (a1 + 64);
          v4 = 1;
          while (vabds_f32(*(v17 - 1), a2) <= 0.00001 && vabds_f32(*v17, a3) <= 0.00001)
          {
            v17 += 11;
            if (!--v15)
            {
              return v4;
            }
          }
        }

        return 0;
      }

      if (v16 < 0.00001 && vabds_f32(*(a1 + 24), a3) < 0.00001 && vabds_f32(*(a1 + 60), a2) < 0.00001)
      {
        v12 = vabds_f32(*(a1 + 64), a3);
        return v12 < v8;
      }

      return 0;
    }

    if (vabds_f32(*(a1 + 20), a2) >= 0.00001)
    {
      return 0;
    }

    v14 = *(a1 + 24);
LABEL_29:
    v13 = vabds_f32(v14, a3);
    return v13 < 0.00001;
  }

  if (v3 == 1)
  {
    if (vabds_f32(*(a1 + 16), a2) >= 0.00001)
    {
      return 0;
    }

    v14 = *(a1 + 20);
    goto LABEL_29;
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = *(a1 + 16);
    v8 = 0.0001;
    if (fabsf(((v5 + v6) + (a2 * 2.0)) + (v7 * -2.0)) >= 0.0001)
    {
      return 0;
    }

    if (vabds_f32(((a2 * -3.0) + (v7 * 3.0)) + (v5 * -2.0), v6) >= 0.0001)
    {
      return 0;
    }

    if (fabsf(v5) >= 0.0001)
    {
      return 0;
    }

    v9 = *(a1 + 28);
    v10 = *(a1 + 36);
    v11 = *(a1 + 20);
    if (fabsf(((v9 + v10) + (a3 * 2.0)) + (v11 * -2.0)) >= 0.0001 || fabsf((((a3 * -3.0) + (v11 * 3.0)) + (v9 * -2.0)) - v10) >= 0.0001)
    {
      return 0;
    }

    v12 = fabsf(v9);
    return v12 < v8;
  }

  return v4;
}

float32x2_t *sub_27679D178(float32x2_t *result, int a2, float32x2_t *a3, uint64_t a4, float *a5, float *a6, float a7, float32x2_t a8, float32_t a9)
{
  a8.f32[1] = a9;
  __asm { FMOV            V2.2S, #-6.0 }

  v14 = a7 + -0.5;
  v16 = result[1];
  v15 = result[2];
  v17 = *result;
  *a4 = 0;
  *a6 = 0.0;
  v18 = vmla_f32(vmla_f32(vadd_f32(v15, v16), 0xC0000000C0000000, v17), 0x4000000040000000, a8);
  v19 = vmul_f32(vsub_f32(v15, v16), 0x3F0000003F000000);
  __asm { FMOV            V16.2S, #6.0 }

  v21 = vsub_f32(vsub_f32(vmla_f32(vmul_f32(a8, _D2), _D16, v17), v16), v15);
  __asm { FMOV            V16.2S, #0.25 }

  v23 = vmul_f32(v21, _D16);
  __asm { FMOV            V16.2S, #4.0 }

  *a3 = vadd_f32(vmul_f32(vadd_f32(vsub_f32(vmla_f32(vmul_f32(v17, _D16), _D16, a8), v15), v16), 0x3E0000003E000000), vmla_n_f32(vmla_n_f32(vmul_n_f32(vmul_n_f32(v19, v14), v14), vmul_n_f32(vmul_n_f32(v18, v14), v14), v14), v23, v14));
  v25 = v23.f32[0] + ((v14 * (v19.f32[0] + v19.f32[0])) + ((v14 * (3.0 * v18.f32[0])) * v14));
  v26 = v23.f32[1] + ((v14 * (v19.f32[1] + v19.f32[1])) + ((v14 * vmuls_lane_f32(3.0, v18, 1)) * v14));
  v27 = 6.0 * v18.f32[0];
  v28 = (v19.f32[0] + v19.f32[0]) + ((6.0 * v18.f32[0]) * v14);
  v29 = vmuls_lane_f32(6.0, v18, 1);
  v30 = (v19.f32[1] + v19.f32[1]) + (v29 * v14);
  v31 = (v26 * v26) + (v25 * v25);
  v32 = sqrtf(v31);
  if (v32 > 0.0001)
  {
    *a5 = v32;
    *a6 = -(v32 * v31) / ((v25 * v30) - (v26 * v28));
    *a4 = v25 / v32;
    v33 = v26 / v32;
LABEL_10:
    *(a4 + 4) = v33;
    return result;
  }

  *a5 = 0.0;
  v34 = (v30 * v30) + (v28 * v28);
  v35 = sqrtf(v34);
  if (v35 > 0.0001)
  {
    *a6 = -(v35 * v34) / ((v28 * v29) - (v30 * v27));
    v36 = v30 / v35;
    *a4 = v28 / v35;
    *(a4 + 4) = v36;
    if (!a2)
    {
      return result;
    }

    v37 = -(v28 / v35);
    goto LABEL_9;
  }

  v38 = sqrtf((v29 * v29) + (v27 * v27));
  if (v38 > 0.0001)
  {
    *a6 = 100000000.0;
    v39 = v27 / v38;
    v36 = v29 / v38;
    *a4 = v39;
    *(a4 + 4) = v36;
    if (a2)
    {
      v37 = -v39;
LABEL_9:
      *a4 = v37;
      v33 = -v36;
      goto LABEL_10;
    }
  }

  return result;
}

void sub_27679D338(uint64_t a1, float *a2, uint64_t a3, float *a4, float *a5, float a6, float a7, float a8)
{
  v12 = *a1;
  v11 = *(a1 + 4);
  v13 = *(a1 + 8);
  v14 = *(a1 + 12);
  v15 = *(a1 + 16);
  v16 = *(a1 + 20);
  v17 = *(a1 + 21);
  *a2 = a7;
  a2[1] = a8;
  *a3 = 0;
  if (v13 > 0.0001 && v14 > 0.0001)
  {
    v22 = v11 - a8;
    v78 = v11;
    v24 = __sincosf_stret(v15);
    cosval = v24.__cosval;
    v25 = v78;
    sinval = v24.__sinval;
    v27 = ((v22 * v24.__sinval) + (v24.__cosval * (v12 - a7))) / v13;
    v28 = ((v22 * v24.__cosval) - (v24.__sinval * (v12 - a7))) / v14;
    v29 = (v28 * v28) + (v27 * v27);
    if (v29 < 4.0)
    {
      v30 = v12;
      v31 = a6;
      v32 = (v29 * -0.25) + 1.0;
      if (v32 < 0.0)
      {
        v32 = 0.0;
      }

      v33 = sqrtf(v32);
      v34 = sqrtf(v29);
      v35 = -v27 / v34;
      v36 = (v28 / v34) * v33;
      v37 = v27 * 0.5;
      v38 = -v36 - (v27 * 0.5);
      v39 = v28 * 0.5;
      v40 = 3.1416;
      v41 = -1.0;
      v42.i32[0] = 1078530011;
      if (v38 >= -1.0)
      {
        v42.i32[0] = 0;
        if (v38 <= 1.0)
        {
          v69 = -(v35 * v33);
          v70 = v35;
          v72 = v28 * 0.5;
          v74 = v36;
          v43 = acosf(v38);
          v41 = -1.0;
          v39 = v72;
          v36 = v74;
          v40 = 3.1416;
          cosval = v24.__cosval;
          sinval = v24.__sinval;
          v30 = v12;
          v25 = v78;
          v31 = a6;
          v42.f32[0] = v43;
          v35 = v70;
          if (v72 > v69)
          {
            v42.f32[0] = 6.28318531 - v43;
          }
        }
      }

      v77 = -sinval;
      v44 = v35 * v33;
      v45 = v37 - v36;
      if ((v37 - v36) >= v41)
      {
        v40 = 0.0;
        if (v45 <= 1.0)
        {
          v46 = sinval;
          v75 = v36;
          v76 = cosval;
          v71 = v42.i32[0];
          v73 = v39;
          v47 = acosf(v45);
          v36 = v75;
          cosval = v76;
          v42.i32[0] = v71;
          v30 = v12;
          v25 = v78;
          sinval = v46;
          v31 = a6;
          v40 = v47;
          if (v73 < v44)
          {
            v40 = 6.28318531 - v47;
          }
        }
      }

      v48 = ((v14 * v44) * v77) + (cosval * (v13 * v36));
      v49 = cosval;
      v50 = sinval;
      v51 = (cosval * (v14 * v44)) + (sinval * (v13 * v36));
      v42.f32[1] = v40;
      v52 = -v48;
      v53 = vrev64_s32(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(v42), vdupq_n_s64(0x400921FB54442D18uLL))));
      v54 = vcvtq_f64_f32(v53);
      v55 = COERCE_DOUBLE(vbsl_s8(vmovn_s64(vmvnq_s8(vcgeq_f64(v54, vdupq_n_s64(0x401921FB54442D18uLL)))), v53, vcvt_f32_f64(vaddq_f64(v54, vdupq_n_s64(0xC01921FB54442D18)))));
      if (v17)
      {
        if (v16)
        {
          v56 = -v51;
        }

        else
        {
          v52 = v48;
          v56 = v51;
        }

        if (v16)
        {
          v57 = v55;
        }

        else
        {
          v57 = *&v42;
        }

        v58 = ((v30 + a7) * 0.5) + v52;
        v59 = ((v25 + a8) * 0.5) + v56;
        v60 = *(&v57 + 1);
        if (*&v57 < *(&v57 + 1))
        {
          v61 = *&v57 + 6.28318531;
          *&v57 = v61;
        }
      }

      else
      {
        if (v16)
        {
          v52 = v48;
          v62 = v51;
        }

        else
        {
          v62 = -v51;
        }

        if (v16)
        {
          v57 = *&v42;
        }

        else
        {
          v57 = v55;
        }

        v58 = ((v30 + a7) * 0.5) + v52;
        v59 = ((v25 + a8) * 0.5) + v62;
        v60 = *(&v57 + 1);
        if (*&v57 > *(&v57 + 1))
        {
          v63 = *&v57 + -6.28318531;
          *&v57 = v63;
        }
      }

      v64 = __sincosf_stret((v60 * v31) + (*&v57 * (1.0 - v31)));
      *a2 = (v58 + ((v13 * v49) * v64.__cosval)) - ((v14 * v50) * v64.__sinval);
      a2[1] = (v59 + ((v13 * v50) * v64.__cosval)) + ((v14 * v49) * v64.__sinval);
      v65 = ((v14 * v50) * v64.__cosval) + ((v13 * v49) * v64.__sinval);
      v66 = ((v13 * v50) * v64.__sinval) - ((v14 * v49) * v64.__cosval);
      *a3 = v65;
      *(a3 + 4) = v66;
      v67 = sqrtf((v66 * v66) + (v65 * v65));
      *a4 = v67;
      *a5 = (v67 * ((*(a3 + 4) * *(a3 + 4)) + (*a3 * *a3))) / ((*a3 * (((v13 * v77) * v64.__cosval) - ((v14 * v49) * v64.__sinval))) - (*(a3 + 4) * (((v14 * v50) * v64.__sinval) + (-(v49 * v13) * v64.__cosval))));
      v68 = *(a3 + 4);
      *a3 = *a3 / *a4;
      *(a3 + 4) = v68 / *a4;
    }
  }
}

float sub_27679D754(float32x2_t *a1, uint64_t a2, int a3, float32x2_t *a4, uint64_t a5, float *a6, float *a7, float a8, float32x2_t a9, float32_t a10)
{
  a9.f32[1] = a10;
  v10 = *(a2 + 4);
  v11 = *a1;
  *a5 = 0;
  *a7 = 0.0;
  v12 = vmla_f32(vadd_f32(v10, a9), 0xC0000000C0000000, v11);
  v13 = vmla_f32(vmul_f32(a9, 0xC0000000C0000000), 0x4000000040000000, v11);
  *a4 = vadd_f32(vmla_n_f32(vmul_n_f32(v13, a8), vmul_n_f32(v12, a8), a8), a9);
  v14 = v12.f32[0] + v12.f32[0];
  v15 = v13.f32[0] + ((v12.f32[0] + v12.f32[0]) * a8);
  v16 = v12.f32[1] + v12.f32[1];
  v17 = v13.f32[1] + ((v12.f32[1] + v12.f32[1]) * a8);
  v18 = (v17 * v17) + (v15 * v15);
  v19 = sqrtf(v18);
  if (v19 > 0.0001)
  {
    *a6 = v19;
    *a7 = -(v19 * v18) / ((v15 * v16) - (v17 * v14));
    *a5 = v15 / v19;
    result = v17 / v19;
LABEL_3:
    *(a5 + 4) = result;
    return result;
  }

  *a6 = 0.0;
  result = sqrtf((v16 * v16) + (v14 * v14));
  if (result > 0.0001)
  {
    *a7 = 100000000.0;
    v21 = v14 / result;
    result = v16 / result;
    *a5 = v21;
    *(a5 + 4) = result;
    if (a3)
    {
      *a5 = -v21;
      result = -result;
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_27679D844(uint64_t a1, int a2, float a3, double a4)
{
  v5 = *&a4;
  v60 = 0.0;
  v57 = 0;
  v58 = 0;
  *v49 = *(a1 + 40);
  *&v49[16] = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  LODWORD(a4) = v8;
  sub_27679D178(v49, 0, &v66, &v63, &v58, &v60, 0.0, *&a4, v9);
  v10.i32[0] = v8;
  sub_27679D178(v49, 0, &v65, &v61, &v57 + 1, &v59, 0.5, v10, v9);
  v11.i32[0] = v8;
  sub_27679D178(v49, 1, &v64, &v62, &v57, &v58 + 1, 1.0, v11, v9);
  v13.i32[0] = 1.0;
  if (fabsf(v60) > 0.01)
  {
    v13.f32[0] = (v5 / v60) + 1.0;
  }

  v14 = 1.0;
  if (fabsf(*(&v58 + 1)) > 0.01)
  {
    v14 = (v5 / *(&v58 + 1)) + 1.0;
  }

  v15 = -*(&v62 + 1);
  v13.f32[1] = v14;
  *v12.i8 = vmul_f32(v13, __PAIR64__(v57, v58));
  if (a2 <= 0)
  {
    v32 = *(a1 + 24);
    v33 = v64.f32[0] + (v5 * v15);
    v34 = v64.f32[1] + (v5 * *&v62);
    v35 = vmuls_n_f32(*&v63, *v12.i32);
    v36 = *(&v63 + 1) * *v12.i32;
    v37 = vmuls_lane_f32(*&v62, *v12.i8, 1);
    v38 = vmuls_lane_f32(*(&v62 + 1), *v12.i8, 1);
  }

  else
  {
    v44 = *&v58;
    v45 = v57;
    v47 = v65.i32[1];
    v48 = v65.i32[0];
    v16 = v65.f32[0] + (v5 * -v61.f32[1]);
    v17 = v64.f32[0] + (v5 * v15);
    v18.i64[0] = v63;
    v18.i64[1] = v62;
    v13.f32[0] = v66.f32[0] + (v5 * -*(&v63 + 1));
    v42 = vmulq_f32(v18, vzip1q_s32(v12, v12));
    v43 = v61;
    v19 = v65.f32[1] + (v5 * v61.f32[0]);
    v20 = v64.f32[1] + (v5 * *&v62);
    *v49 = v17;
    *&v49[4] = v20;
    *&v49[8] = v42;
    v40 = v63;
    v41 = v62;
    sub_27679D178(v49, 0, &v56, v53, &v55, &v54, 0.5, v13, v66.f32[1] + (v5 * *&v63));
    if ((((v19 - v56.f32[1]) * (v19 - v56.f32[1])) + ((v16 - v56.f32[0]) * (v16 - v56.f32[0]))) > (a3 * a3))
    {
      v21 = *(a1 + 16);
      *v49 = *a1;
      *&v49[16] = v21;
      v22 = *(a1 + 48);
      v50 = *(a1 + 32);
      v51 = v22;
      v52 = *(a1 + 64);
      v22.f32[0] = (*(a1 + 12) + *(a1 + 16)) * 0.5;
      *&v49[12] = *(a1 + 12);
      *&v49[16] = v22.i32[0];
      *&v50 = __PAIR64__(LODWORD(v9), v8);
      *(&v50 + 1) = __PAIR64__(v47, v48);
      v23 = (a2 - 1);
      __asm { FMOV            V4.2D, #0.5 }

      v29 = vmulq_f64(vcvtq_f64_f32(__PAIR64__(v45, HIDWORD(v57))), _Q4);
      *v51.f32 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v40), v44 * 0.5));
      *&v51.u32[2] = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v43), v29.f64[0]));
      v46 = vcvt_hight_f32_f64(*&v51.u32[2], vmulq_laneq_f64(vcvtq_f64_f32(v41), v29, 1));
      sub_27679D844(v49, v23, a3, v5);
      v30 = *(a1 + 16);
      *&v49[12] = (*(a1 + 12) + v30) * 0.5;
      *&v49[16] = v30;
      *&v50 = __PAIR64__(v47, v48);
      *(&v50 + 1) = *(a1 + 40);
      v51 = v46;
      return sub_27679D844(v49, v23, a3, v5);
    }

    v32 = *(a1 + 24);
    v36 = v42.f32[1];
    v35 = v42.f32[0];
    v38 = v42.f32[3];
    v37 = v42.f32[2];
    v33 = v17;
    v34 = v20;
  }

  result = Path::CubicTo(v32, v33, v34, v35, v36, v37, v38);
  if ((result & 0x80000000) == 0)
  {
    v39 = *(*(a1 + 24) + 16) + 44 * result;
    *(v39 + 4) = *(a1 + 8);
    *(v39 + 8) = *(a1 + 12);
  }

  return result;
}

void sub_27679DB9C(uint64_t a1, int a2, float a3, float a4)
{
  v69 = 0.0;
  v66 = 0;
  v67 = 0;
  v52 = *(a1 + 44);
  v53 = *(a1 + 40);
  *v56 = v53;
  *&v56[4] = v52;
  v7 = *(a1 + 48);
  v8 = *(a1 + 52);
  *&v56[8] = v7;
  *&v56[12] = v8;
  v9 = *(a1 + 56);
  *&v56[16] = v9;
  v10 = *(a1 + 60);
  v56[21] = *(a1 + 60);
  v11 = *(a1 + 61);
  v56[20] = *(a1 + 61);
  v12 = *(a1 + 64);
  v14 = *(a1 + 32);
  v13 = *(a1 + 36);
  sub_27679D338(v56, v76, &v72, &v67, &v69, v12, v14, v13);
  v15 = *(a1 + 68);
  sub_27679D338(v56, v75, v70, &v66 + 1, &v68, (v12 + v15) * 0.5, v14, v13);
  sub_27679D338(v56, &v73, &v71, &v66, &v67 + 1, v15, v14, v13);
  v55 = v72;
  v50 = *(&v72 + 1);
  v46 = *&v70[1];
  v47 = *v70;
  v51 = v71;
  v17 = *(&v71 + 1);
  v18 = -*(&v71 + 1);
  *v19.i32 = (a4 / v69) + 1.0;
  if (fabsf(v69) <= 0.01)
  {
    *v19.i32 = 1.0;
  }

  v20 = (a4 / *(&v67 + 1)) + 1.0;
  if (fabsf(*(&v67 + 1)) <= 0.01)
  {
    v20 = 1.0;
  }

  *&v19.i32[1] = v20;
  *v19.i8 = vmul_f32(*v19.i8, __PAIR64__(v66, v67));
  v49 = v19;
  v65 = 0;
  Path::ArcAngles(v11, v14, v13, v53, v52, v7, v8, v9, v10 ^ 1, &v65 + 1, &v65, v16);
  v21 = *&v65 - *(&v65 + 1);
  if ((*&v65 - *(&v65 + 1)) < 0.0)
  {
    v22 = (*&v65 - *(&v65 + 1)) + 6.28318531;
    v21 = v22;
  }

  if (v21 > 6.28318531)
  {
    v23 = v21 + -6.28318531;
    v21 = v23;
  }

  v24 = *(a1 + 64);
  v25 = *(a1 + 68);
  v26 = (v25 - v24) * v21;
  if (a2 <= 0)
  {
    v37 = *(a1 + 24);
    v38 = v73 + (a4 * v18);
    v39 = v74 + (a4 * *&v51);
    v40 = vmuls_n_f32(*&v55, *v49.i32) * v26;
    v41 = (v50 * *v49.i32) * v26;
    v42 = vmuls_lane_f32(*&v51, *v49.i8, 1) * v26;
    v43 = vmuls_lane_f32(v17, *v49.i8, 1) * v26;
  }

  else
  {
    v27 = v75[0] + (a4 * -v46);
    v28 = v75[1] + (a4 * v47);
    v29 = v73 + (a4 * v18);
    v30 = v74 + (a4 * *&v51);
    *v56 = v29;
    *&v56[4] = v30;
    v31.i64[0] = v55;
    v31.i64[1] = v51;
    v32 = vmulq_n_f32(vmulq_f32(v31, vzip1q_s32(v49, v49)), v26);
    v54 = v32;
    *&v56[8] = v32;
    v32.f32[0] = v76[0] + (a4 * -v50);
    sub_27679D178(v56, 0, &v64, v61, &v63, &v62, 0.5, *v32.f32, v76[1] + (a4 * *&v55));
    if ((((v28 - v64.f32[1]) * (v28 - v64.f32[1])) + ((v27 - v64.f32[0]) * (v27 - v64.f32[0]))) > (a3 * a3))
    {
      v33 = *(a1 + 16);
      *v56 = *a1;
      *&v56[16] = v33;
      v34 = *(a1 + 48);
      v57 = *(a1 + 32);
      v58 = v34;
      v59 = v24;
      v60 = (v25 + v24) * 0.5;
      v35 = (a2 - 1);
      sub_27679DB9C(v56, v35, a3, a4);
      v36 = *(a1 + 68);
      v59 = (*(a1 + 64) + v36) * 0.5;
      v60 = v36;
      sub_27679DB9C(v56, v35, a3, a4);
      return;
    }

    v37 = *(a1 + 24);
    v41 = v54.f32[1];
    v40 = v54.f32[0];
    v43 = v54.f32[3];
    v42 = v54.f32[2];
    v38 = v29;
    v39 = v30;
  }

  v44 = Path::CubicTo(v37, v38, v39, v40, v41, v42, v43);
  if ((v44 & 0x80000000) == 0)
  {
    v45 = (*(*(a1 + 24) + 16) + 44 * v44);
    v45[1] = *(a1 + 8);
    v45[2] = *(a1 + 64);
    v45[3] = *(a1 + 68);
  }
}

uint64_t sub_27679E100(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27679E118(uint64_t a1, const char *a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_objectForKeyedSubscript_(qword_280A4CA60, a2, *(a1 + 32));
  if (!v4)
  {
    v5 = objc_msgSend_objectForKeyedSubscript_(qword_280A4CA68, v3, *(a1 + 32));
    v8 = sub_2767B590C(v5, v6, v7);
    v10 = objc_msgSend_pathsForResourcesOfType_inDirectory_(v8, v9, @"sfrframe", @"Frames");

    if (v5)
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v12 = v10;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v94, v99, 16);
      if (v14)
      {
        v17 = v14;
        v18 = *v95;
LABEL_5:
        v19 = 0;
        while (1)
        {
          if (*v95 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v94 + 1) + 8 * v19);
          v21 = objc_msgSend_lastPathComponent(v20, v15, v16);
          isEqualToString = objc_msgSend_isEqualToString_(v21, v22, v5);

          if (isEqualToString)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v94, v99, 16);
            if (v17)
            {
              goto LABEL_5;
            }

            goto LABEL_19;
          }
        }

        v24 = objc_alloc(MEMORY[0x277CCA8D8]);
        v26 = objc_msgSend_initWithPath_(v24, v25, v20);
        v27 = [TSDFrameSpec alloc];
        v29 = objc_msgSend_initWithBundle_(v27, v28, v26);
        v4 = v29;
        if (v29)
        {
          v32 = qword_280A4CA60;
          v33 = objc_msgSend_frameName(v29, v30, v31);
          objc_msgSend_setObject_forKeyedSubscript_(v32, v34, v4, v33);
        }

        v35 = objc_msgSend_frameName(v4, v30, v31);
        v37 = objc_msgSend_isEqualToString_(v35, v36, *(a1 + 32));

        if ((v37 & 1) == 0)
        {
          v46 = MEMORY[0x277D81150];
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "+[TSDFrameSpec frameSpecWithName:]_block_invoke");
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameSpec.m");
          v50 = v49 = v5;
          objc_msgSend_frameName(v4, v51, v52);
          v54 = v53 = v10;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v55, v47, v50, 182, 0, "The spec returned for the expected path name %@ is actually named %@", v49, v54);

          v10 = v53;
          v5 = v49;

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
          goto LABEL_19;
        }

        if (v4)
        {
          goto LABEL_36;
        }
      }

      else
      {
LABEL_19:
      }
    }

    else
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "+[TSDFrameSpec frameSpecWithName:]_block_invoke");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameSpec.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 191, 0, "Should have an expectedLastPathComponent for frame with name %@", *(a1 + 32));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v58 = v10;
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v90, v98, 16);
    if (v60)
    {
      v61 = v60;
      v88 = v10;
      v89 = v5;
      v62 = *v91;
      while (2)
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v91 != v62)
          {
            objc_enumerationMutation(v58);
          }

          v64 = *(*(&v90 + 1) + 8 * i);
          v65 = objc_alloc(MEMORY[0x277CCA8D8]);
          v67 = objc_msgSend_initWithPath_(v65, v66, v64);
          v68 = [TSDFrameSpec alloc];
          v70 = objc_msgSend_initWithBundle_(v68, v69, v67);
          v4 = v70;
          if (v70)
          {
            v73 = qword_280A4CA60;
            v74 = objc_msgSend_frameName(v70, v71, v72);
            v76 = objc_msgSend_objectForKeyedSubscript_(v73, v75, v74);

            if (!v76)
            {
              v77 = qword_280A4CA60;
              v78 = objc_msgSend_frameName(v4, v71, v72);
              objc_msgSend_setObject_forKeyedSubscript_(v77, v79, v4, v78);
            }
          }

          v80 = objc_msgSend_frameName(v4, v71, v72);
          v82 = objc_msgSend_isEqualToString_(v80, v81, *(a1 + 32));

          if (v82)
          {

            goto LABEL_33;
          }
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v83, &v90, v98, 16);
        if (v61)
        {
          continue;
        }

        break;
      }

      v4 = 0;
LABEL_33:
      v10 = v88;
      v5 = v89;
    }

    else
    {
      v4 = 0;
    }

LABEL_36:
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v85 = objc_msgSend_objectForKey_(qword_280A4CA60, v84, @"None");
    v86 = *(*(a1 + 40) + 8);
    v87 = *(v86 + 40);
    *(v86 + 40) = v85;
  }
}

void sub_27679EBB8()
{
  v0 = qword_280A4CA70;
  qword_280A4CA70 = &unk_28859C7D0;
}

void sub_27679EDC0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_i_hasImages(*(a1 + 32), a2, a3))
  {
    v6 = objc_msgSend_i_providerForIndex_mask_(*(a1 + 32), v4, 6, 0);
    v8 = objc_msgSend_i_providerForIndex_mask_(*(a1 + 32), v7, 2, 0);
    objc_msgSend_naturalSize(v6, v9, v10);
    v12 = v11;
    v14 = v13;
    objc_msgSend_naturalSize(v8, v15, v16);
    v18 = v17;
    v20 = v19;
    objc_opt_class();
    v21 = TSUDynamicCast();
    v24 = v21;
    if (v21 && objc_msgSend_imageDPI(v21, v22, v23) >= 0x49)
    {
      TSUMultiplySizeScalar();
      v12 = v25;
      v14 = v26;
      TSUMultiplySizeScalar();
      v18 = v27;
      v20 = v28;
    }

    *(*(a1 + 32) + 112) = v12;
    *(*(a1 + 32) + 120) = v18;
    *(*(a1 + 32) + 128) = v20;
    *(*(a1 + 32) + 136) = v14;
  }

  if (objc_msgSend_i_hasAdornment(*(a1 + 32), v4, v5))
  {
    v43 = objc_msgSend_i_providerForIndex_mask_(*(a1 + 32), v29, 8, 0);
    objc_msgSend_naturalSize(v43, v30, v31);
    v33 = v32;
    v35 = v34;
    objc_opt_class();
    v36 = TSUDynamicCast();
    v39 = v36;
    if (v36 && objc_msgSend_imageDPI(v36, v37, v38) >= 0x49)
    {
      TSUMultiplySizeScalar();
      v33 = v40;
      v35 = v41;
    }

    v42 = *(a1 + 32);
    *(v42 + 144) = v33;
    *(v42 + 152) = v35;
  }
}

uint64_t sub_2767A1378(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (v3 | v5)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v5);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

void sub_2767A2450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2767A2534(uint64_t a1, float *a2, float a3)
{
  v3 = *(a1 + 36);
  if (v3 == 2)
  {
    return 1;
  }

  v4 = a2;
  v7 = *(a1 + 48);
  if (*(a1 + 33) == 1)
  {
    v8 = (v7 + 24);
    v9 = (v7 + 28);
    v10 = v7 + 20 * v3;
    v11 = (v10 - 16);
    v12 = (v10 - 12);
    v13 = (v7 + 32);
    v14 = v7 + 24 * v3;
    v15 = (v14 - 20);
    v16 = (v14 - 16);
  }

  else
  {
    v8 = (v7 + 16);
    v9 = (v7 + 20);
    v17 = v7 + 12 * v3;
    v11 = (v17 - 8);
    v12 = (v17 - 4);
    v13 = (v7 + 24);
    v18 = v7 + 16 * v3;
    v15 = (v18 - 12);
    v16 = (v18 - 8);
  }

  if (*(a1 + 32))
  {
    v19 = v9;
  }

  else
  {
    v19 = v8;
  }

  if (*(a1 + 32))
  {
    v20 = v13;
  }

  else
  {
    v20 = v9;
  }

  if (*(a1 + 32))
  {
    v21 = v15;
  }

  else
  {
    v21 = v11;
  }

  if (*(a1 + 32))
  {
    v12 = v16;
  }

  v22 = *(v7 + 4);
  v23 = *v12;
  v24 = *v21;
  if (v3 == 3)
  {
    v25 = *v20;
    v26 = *v19;
    *a2 = v24;
    a2[1] = v23;
    a2[2] = v26 - *&v22;
    a2[3] = v25 - *(&v22 + 1);
    a2[4] = v24 - v26;
    a2[5] = v23 - v25;
    return 1;
  }

  v231 = *(v7 + 4);
  v229 = *v21;
  v230 = *v12;
  v28 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
  if (!v28)
  {
    TSUSetCrashReporterInfo();
    v199 = MEMORY[0x277D81150];
    v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, "BOOL Path::AttemptSimplify(float, path_descr_cubicto &)", "BOOL Path::AttemptSimplify(float, path_descr_cubicto &)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/PathSimplify.mm", 271);
    v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v202, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/PathSimplify.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v199, v204, v201, v203, 271, 1, "Unable to allocate memory.");
    goto LABEL_84;
  }

  v29 = v28;
  v30 = malloc_type_malloc(8 * *(a1 + 36), 0x100004000313F17uLL);
  if (!v30)
  {
    TSUSetCrashReporterInfo();
    v205 = MEMORY[0x277D81150];
    v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v206, "BOOL Path::AttemptSimplify(float, path_descr_cubicto &)", "BOOL Path::AttemptSimplify(float, path_descr_cubicto &)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/PathSimplify.mm", 274);
    v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v207, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/PathSimplify.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v205, v208, v201, v203, 274, 1, "Unable to allocate memory.");
    goto LABEL_84;
  }

  v31 = v30;
  v32 = malloc_type_malloc(8 * *(a1 + 36), 0x100004000313F17uLL);
  if (!v32)
  {
    TSUSetCrashReporterInfo();
    v209 = MEMORY[0x277D81150];
    v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v210, "BOOL Path::AttemptSimplify(float, path_descr_cubicto &)", "BOOL Path::AttemptSimplify(float, path_descr_cubicto &)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/PathSimplify.mm", 277);
    v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v211, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/PathSimplify.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v209, v212, v201, v203, 277, 1, "Unable to allocate memory.");
    goto LABEL_84;
  }

  v33 = v32;
  v34 = malloc_type_malloc(8 * *(a1 + 36), 0x100004000313F17uLL);
  if (!v34)
  {
    TSUSetCrashReporterInfo();
    v213 = MEMORY[0x277D81150];
    v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v214, "BOOL Path::AttemptSimplify(float, path_descr_cubicto &)", "BOOL Path::AttemptSimplify(float, path_descr_cubicto &)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/PathSimplify.mm", 280);
    v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v215, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/PathSimplify.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v213, v216, v201, v203, 280, 1, "Unable to allocate memory.");
LABEL_84:

    TSUCrashBreakpoint();
    abort();
  }

  v35 = v34;
  *v29 = 0.0;
  v36 = *(a1 + 36);
  v37 = v36;
  v38 = *&v231;
  if (v36 >= 2)
  {
    v39 = *(a1 + 33);
    v40 = *(&v231 + 1);
    v41 = *(a1 + 48);
    v42 = v41 + 12;
    v43 = v34 + 1;
    v44 = v33 + 1;
    v45 = v29 + 1;
    v46 = v36 - 1;
    v47 = *(a1 + 32);
    v48 = 1;
    v49 = *&v231;
    do
    {
      if (v39)
      {
        if (v47)
        {
          v50 = v41 + 24 * v48;
        }

        else
        {
          v50 = v41 + 20 * v48;
        }
      }

      else
      {
        v50 = v42;
        if (v47)
        {
          v50 = v41 + 16 * v48;
        }
      }

      v51 = *(v50 + 8);
      *v44 = *(v50 + 4);
      *v43++ = v51;
      v52 = *v44++;
      v53 = v52 - v49;
      v49 = v52;
      ++v48;
      *v45 = *(v45 - 1) + sqrtf(((v51 - v40) * (v51 - v40)) + (v53 * v53));
      ++v45;
      v42 += 12;
      v40 = v51;
      --v46;
    }

    while (v46);
  }

  if (v29[v37 - 1] < 0.00001)
  {
    goto LABEL_62;
  }

  v54 = (v37 - 1);
  v55 = 0.0;
  v56 = 0.0;
  v57 = 0.0;
  v58 = 0.0;
  if (v37 >= 3)
  {
    v59 = v29 + 1;
    v60 = v54 - 1;
    v61 = v54 - 1;
    do
    {
      *v59 = *v59 / v29[v54];
      ++v59;
      --v61;
    }

    while (v61);
    v62 = v29 + 1;
    v58 = 0.0;
    v57 = 0.0;
    v56 = 0.0;
    v55 = 0.0;
    do
    {
      v63 = *v62++;
      v64 = (1.0 - v63) * (v63 * 3.0 * (1.0 - v63));
      v55 = v55 + v64 * v64;
      v65 = (1.0 - v63) * (v63 * (v63 * 3.0));
      v56 = v56 + v65 * v64;
      v57 = v57 + v64 * v65;
      v58 = v58 + v65 * v65;
      --v60;
    }

    while (v60);
  }

  v66 = v55 * v58 - v56 * v57;
  if (fabs(v66) < 0.000001)
  {
    goto LABEL_62;
  }

  v67 = v58 / v66;
  v68 = -v56 / v66;
  v69 = -v57 / v66;
  v70 = *&v231;
  *v33 = *&v231;
  *v34 = *(&v231 + 1);
  v71 = &v33[v37];
  *(v71 - 1) = v229;
  v72 = &v34[v37];
  *(v72 - 1) = v230;
  v73 = 0.0;
  v74 = 0.0;
  v75 = v55 / v66;
  v76 = 0.0;
  if (v37 >= 3)
  {
    v77 = 1;
    do
    {
      v78 = v29[v77];
      v31[v77] = v33[v77] + (1.0 - v78) * -((1.0 - v78) * (1.0 - v78)) * *v33 + v78 * -(v78 * v78) * v33[v54];
      ++v77;
    }

    while ((v37 - 1) != v77);
    v79 = v31 + 1;
    v80 = v29 + 1;
    v81 = v54 - 1;
    v76 = 0.0;
    v74 = 0.0;
    do
    {
      v82 = *v80++;
      v83 = v82;
      v84 = v82 * 3.0;
      v85 = 1.0 - v82;
      v86 = v82 * 3.0 * (1.0 - v82);
      v87 = *v79++;
      v74 = v74 + v85 * v86 * v87;
      v76 = v76 + v85 * (v83 * v84) * v87;
      --v81;
    }

    while (v81);
  }

  v88 = v68 * v76 + v67 * v74;
  v89 = v75 * v76 + v69 * v74;
  v90 = 0.0;
  if (v37 >= 3)
  {
    v91 = 1;
    do
    {
      v92 = v29[v91];
      v31[v91] = v34[v91] + (1.0 - v92) * -((1.0 - v92) * (1.0 - v92)) * *v34 + v92 * -(v92 * v92) * v34[v54];
      ++v91;
    }

    while ((v37 - 1) != v91);
    v93 = v31 + 1;
    v94 = v29 + 1;
    v95 = v54 - 1;
    v90 = 0.0;
    v73 = 0.0;
    do
    {
      v96 = *v94++;
      v97 = v96;
      v98 = v96 * 3.0;
      v99 = 1.0 - v96;
      v100 = v96 * 3.0 * (1.0 - v96);
      v101 = *v93++;
      v73 = v73 + v99 * v100 * v101;
      v90 = v90 + v99 * (v97 * v98) * v101;
      --v95;
    }

    while (v95);
  }

  v102 = v88;
  v227 = v102;
  v103 = v89;
  v104 = v68 * v90 + v67 * v73;
  v223 = v104;
  v225 = v103;
  v105 = v75 * v90 + v69 * v73;
  v222 = v105;
  v106 = 0.0;
  if (v37 >= 3)
  {
    v107 = v34 + 1;
    v108 = v33 + 1;
    v109 = v29 + 1;
    v110 = v54 - 1;
    do
    {
      v111 = *v109++;
      v112 = v111;
      v113 = 1.0 - v111;
      v114 = (1.0 - v111) * (v111 * 3.0 * (1.0 - v111));
      v115 = (1.0 - v111) * (v111 * (v111 * 3.0));
      v116 = v115 * v103 + v114 * v227;
      v117 = *v108++;
      v118 = v113 * -(v113 * v113);
      *&v115 = v115 * v105 + v114 * v223;
      v119 = v112 * -(v112 * v112);
      v120 = v116 - (v117 + v118 * *v33 + v119 * v33[v54]);
      v121 = *v107++;
      v122 = v121 + v118 * *v34 + v119 * v34[v54];
      *&v118 = v120;
      *&v122 = *&v115 - v122;
      v106 = v106 + ((*&v122 * *&v122) + (*&v118 * *&v118));
      --v110;
    }

    while (v110);
  }

  if (v106 >= (a3 * a3))
  {
LABEL_62:
    free(v29);
    free(v31);
    free(v33);
    free(v35);
  }

  else
  {
    v123.i64[0] = __PAIR64__(LODWORD(v223), LODWORD(v227));
    v123.i64[1] = __PAIR64__(LODWORD(v222), LODWORD(v103));
    v124.i64[0] = v231;
    v124.i64[1] = __PAIR64__(LODWORD(v230), LODWORD(v229));
    v221 = v124;
    *(v4 + 2) = vmulq_f32(vsubq_f32(v123, v124), xmmword_27682D0D0);
    *v4 = v229;
    v4[1] = v230;
    v125 = 0.0;
    v126 = 0.0;
    v127 = 0.0;
    v128 = 0.0;
    if (v37 >= 3)
    {
      v217 = &v34[v37];
      v218 = &v33[v37];
      v219 = v37;
      v220 = v4;
      v129 = v29 + 1;
      v130 = v34 + 1;
      v131 = v33 + 1;
      v132 = v54 - 1;
      v133 = v54 - 1;
      do
      {
        v134 = *v131;
        v135 = *v130;
        v136 = *v129;
        v137 = sub_2767A31EC(v134, v135, v38, *(&v231 + 1), v227, v223, v225, v222, v229, v230, v136);
        *v129 = v137;
        v138 = *(v129 - 1);
        if (v138 > v137)
        {
          *v129 = v138;
        }

        ++v129;
        ++v130;
        ++v131;
        --v133;
        v38 = *&v231;
      }

      while (v133);
      v139 = v29 + 1;
      v128 = 0.0;
      v127 = 0.0;
      v126 = 0.0;
      v125 = 0.0;
      LODWORD(v37) = v219;
      v4 = v220;
      v70 = *&v231;
      v72 = v217;
      v71 = v218;
      do
      {
        v140 = *v139++;
        v141 = (1.0 - v140) * (v140 * 3.0 * (1.0 - v140));
        v125 = v125 + v141 * v141;
        v142 = (1.0 - v140) * (v140 * (v140 * 3.0));
        v126 = v126 + v142 * v141;
        v127 = v127 + v141 * v142;
        v128 = v128 + v142 * v142;
        --v132;
      }

      while (v132);
    }

    v143 = v125 * v128 - v126 * v127;
    if (fabs(v143) < 0.000001)
    {
      free(v29);
      free(v31);
      free(v33);
      free(v35);
      return 1;
    }

    v144 = v128 / v143;
    v145 = -v126 / v143;
    v146 = -v127 / v143;
    *v33 = v70;
    *v35 = *(&v231 + 1);
    *(v71 - 1) = v229;
    *(v72 - 1) = v230;
    v147 = 0.0;
    v148 = 0.0;
    v149 = 0.0;
    v150 = v125 / v143;
    if (v37 >= 3)
    {
      v151 = 1;
      do
      {
        v152 = v29[v151];
        v31[v151] = v33[v151] + (1.0 - v152) * -((1.0 - v152) * (1.0 - v152)) * *v33 + v152 * -(v152 * v152) * v33[v54];
        ++v151;
      }

      while (v54 != v151);
      v153 = v31 + 1;
      v154 = v29 + 1;
      v155 = v54 - 1;
      v149 = 0.0;
      v148 = 0.0;
      do
      {
        v156 = *v154++;
        v157 = v156;
        v158 = v156 * 3.0;
        v159 = 1.0 - v156;
        v160 = v156 * 3.0 * (1.0 - v156);
        v161 = *v153++;
        v148 = v148 + v159 * v160 * v161;
        v149 = v149 + v159 * (v157 * v158) * v161;
        --v155;
      }

      while (v155);
    }

    v162 = v145 * v149 + v144 * v148;
    v163 = v150 * v149 + v146 * v148;
    v164 = 0.0;
    if (v37 >= 3)
    {
      v165 = 1;
      do
      {
        v166 = v29[v165];
        v31[v165] = v35[v165] + (1.0 - v166) * -((1.0 - v166) * (1.0 - v166)) * *v35 + v166 * -(v166 * v166) * v35[v54];
        ++v165;
      }

      while (v54 != v165);
      v167 = v31 + 1;
      v168 = v29 + 1;
      v169 = v54 - 1;
      v164 = 0.0;
      v147 = 0.0;
      do
      {
        v170 = *v168++;
        v171 = v170;
        v172 = v170 * 3.0;
        v173 = 1.0 - v170;
        v174 = v170 * 3.0 * (1.0 - v170);
        v175 = *v167++;
        v147 = v147 + v173 * v174 * v175;
        v164 = v164 + v173 * (v171 * v172) * v175;
        --v169;
      }

      while (v169);
    }

    v180 = 0.0;
    if (v37 >= 3)
    {
      v181 = v35 + 1;
      v182 = v33 + 1;
      v183 = v29 + 1;
      v184 = v54 - 1;
      v185 = 0.0;
      do
      {
        v186 = *v183++;
        v187 = v186;
        v188 = 1.0 - v186;
        v189 = (1.0 - v186) * (v186 * 3.0 * (1.0 - v186));
        v190 = (1.0 - v186) * (v186 * (v186 * 3.0));
        v176 = v162;
        v177 = v163;
        v191 = v190 * v177 + v189 * v176;
        v192 = *v182++;
        v193 = v188 * -(v188 * v188);
        v179 = v150 * v164 + v146 * v147;
        v178 = v145 * v164 + v144 * v147;
        *&v190 = v190 * v179 + v189 * v178;
        v194 = v187 * -(v187 * v187);
        v195 = v191 - (v192 + v193 * *v33 + v194 * v33[v54]);
        v196 = *v181++;
        v197 = v196 + v193 * *v35 + v194 * v35[v54];
        *&v193 = v195;
        *&v197 = *&v190 - v197;
        v185 = v185 + ((*&v197 * *&v197) + (*&v193 * *&v193));
        --v184;
      }

      while (v184);
      v180 = v185;
    }

    v224 = v145 * v164 + v144 * v147;
    v226 = v150 * v164 + v146 * v147;
    v228 = v163;
    v232 = v162;
    free(v29);
    free(v31);
    free(v33);
    free(v35);
    if (v106 + 0.00001 > v180)
    {
      v198.i64[0] = __PAIR64__(LODWORD(v224), LODWORD(v232));
      v198.i64[1] = __PAIR64__(LODWORD(v226), LODWORD(v228));
      *(v4 + 2) = vmulq_f32(vsubq_f32(v198, v221), xmmword_27682D0D0);
      *v4 = v229;
      v4[1] = v230;
      return 1;
    }
  }

  return 0;
}

float sub_2767A31EC(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11)
{
  result = a11;
  v21 = 1.0 - a11;
  v22 = v21 * (v21 * v21);
  v23 = v21 * (v21 * (a11 * 3.0));
  v24 = v21 * ((a11 * 3.0) * a11);
  v25 = (result * result) * result;
  v26 = a1 - a3 * v22 - a5 * v23 - a7 * v24 - (a9 * v25);
  v27 = v21 * (result + result);
  v28 = v27 * (a7 - a5) + (a5 - a3) * (v21 * v21) + ((a9 - a7) * (result * result));
  v29 = ((a5 + (a9 + (a7 * -2.0))) * a11) + ((a3 + (a5 * -2.0)) + a7) * v21;
  v30 = a2 - a4 * v22 - a6 * v23 - a8 * v24 - (a10 * v25);
  v31 = v27 * (a8 - a6) + (a6 - a4) * (v21 * v21) + ((a10 - a8) * (result * result));
  v32 = ((((a6 + (a10 + (a8 * -2.0))) * a11) + ((a4 + (a6 * -2.0)) + a8) * v21) * v30 + v26 * v29) * -12.0 + (v31 * v31 + v28 * v28) * 18.0;
  if (fabs(v32) > 0.0000001)
  {
    return (v31 * v30 + v26 * v28) * 6.0 / v32 + a11;
  }

  return result;
}

void sub_2767A3378(Path *this, float a2)
{
  var0 = this->var0;
  if (this->var0)
  {
    Path::CancelBezier(this);
    var0 = this->var0;
  }

  if ((var0 & 2) != 0)
  {
    Path::CloseSubpath(this, 0);
  }

  if (this->var2 < 3)
  {
    return;
  }

  Path::SetWeighted(this, 0);
  Path::SetBackData(this, 0);
  Path::ConvertEvenLines(this, a2);
  if (this->var2 < 1)
  {
    v14 = 0;
    goto LABEL_46;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = *(this->var3 + 1);
  v19 = a2 * 0.1;
  v64 = v19;
  do
  {
    var3 = this->var3;
    v21 = var3 + 44 * v15;
    v22 = *v21;
    v23 = *v21 & 0xF;
    if (v23 > 3)
    {
      if (v23 == 4)
      {
LABEL_24:
        v40 = *(v21 + 1);
        if (v16)
        {
          v41 = v12;
          var11 = this->var11;
          var8 = this->var8;
          this->var11 = &var11[12 * v18];
          this->var8 = v40 - v18 + 1;
          if (sub_2767A2534(this, &v68, a2))
          {
            v4 = v69;
            v5 = v70;
            v3 = v71;
            v7 = v72;
            v43 = &v68;
            v26 = v18;
            v8 = v73;
            v12 = v41;
            v16 = 2;
          }

          else
          {
            v56 = this->var3;
            v26 = *(v56 + 11 * v13 + 1);
            v57 = v56 + 44 * v14++;
            *v57 = v16;
            *(v57 + 1) = v17;
            *(v57 + 1) = v41;
            *(v57 + 4) = v2;
            *(v57 + 5) = v4;
            *(v57 + 6) = v5;
            *(v57 + 7) = v3;
            *(v57 + 8) = v7;
            *(v57 + 9) = v8;
            *(v57 + 10) = v6;
            v58 = this->var3 + 44 * v15;
            v16 = *v58;
            v18 = *(v58 + 1);
            v12 = *(v58 + 1);
            v43 = (v58 + 16);
            v4 = *(v58 + 5);
            v5 = *(v58 + 6);
            v3 = *(v58 + 7);
            v7 = *(v58 + 8);
            v8 = *(v58 + 9);
            v6 = *(v58 + 10);
          }

          v2 = *v43;
          this->var11 = var11;
          v17 = v18;
          v35 = v15;
          this->var8 = var8;
        }

        else
        {
          v26 = *(v21 - 10);
          v12 = *(v21 + 1);
          v2 = *(v21 + 4);
          v4 = *(v21 + 5);
          v5 = *(v21 + 6);
          v3 = *(v21 + 7);
          v17 = *(v21 + 1);
          v7 = *(v21 + 8);
          v8 = *(v21 + 9);
          v16 = *v21;
          v35 = v15;
          v15 = v13;
          v6 = *(v21 + 10);
        }

        goto LABEL_42;
      }

      if (v23 == 5)
      {
        v26 = *(v21 + 1);
        if (!v16)
        {
          v59 = (var3 + 44 * v14++);
          v60 = *v21;
          v61 = *(v21 + 1);
          *(v59 + 28) = *(v21 + 28);
          *v59 = v60;
          v59[1] = v61;
LABEL_39:
          v35 = v15;
          goto LABEL_42;
        }

        v47 = v12;
        v48 = this->var11;
        v67 = this->var8;
        this->var11 = &v48[12 * v18];
        v49 = v26;
        this->var8 = v26 - v18 + 1;
        if (sub_2767A2534(this, &v68, a2))
        {
          v2 = v68;
          v4 = v69;
          v5 = v70;
          v3 = v71;
          v16 = 2;
          v7 = v72;
          v8 = v73;
        }

        v50 = this->var3 + 44 * v14;
        *v50 = v16;
        *(v50 + 1) = v17;
        v12 = v47;
        *(v50 + 1) = v47;
        *(v50 + 4) = v2;
        *(v50 + 5) = v4;
        *(v50 + 6) = v5;
        *(v50 + 7) = v3;
        *(v50 + 8) = v7;
        *(v50 + 9) = v8;
        *(v50 + 10) = v6;
        v51 = this->var3;
        v52 = (v51 + 44 * v15);
        v53 = v51 + 44 * v14;
        v14 += 2;
        v54 = *v52;
        v55 = v52[1];
        *(v53 + 72) = *(v52 + 28);
        *(v53 + 60) = v55;
        *(v53 + 44) = v54;
        this->var11 = v48;
        this->var8 = v67;
        v35 = v15;
        v16 = 0;
        v26 = v49;
      }

      else
      {
        if (v23 != 7 || !v16)
        {
LABEL_27:
          v35 = v15;
          v26 = v18;
          v15 = v13;
          goto LABEL_42;
        }

        v36 = v17;
        v37 = v12;
        v38 = *(v21 + 1);
        v39 = this->var11;
        v65 = this->var8;
        this->var11 = &v39[12 * v18];
        this->var8 = v38 - v18 + 1;
        if (sub_2767A2534(this, &v68, v64))
        {
          v12 = v37;
        }

        else
        {
          v62 = this->var3 + 44 * v14++;
          *v62 = v16;
          *(v62 + 1) = v36;
          v12 = v37;
          *(v62 + 1) = v37;
          *(v62 + 4) = v2;
          *(v62 + 5) = v4;
          *(v62 + 6) = v5;
          *(v62 + 7) = v3;
          *(v62 + 8) = v7;
          *(v62 + 9) = v8;
          *(v62 + 10) = v6;
          v18 = v38;
          v13 = v15;
          v16 = 0;
        }

        this->var11 = v39;
        this->var8 = v65;
        v35 = v15;
        v26 = v18;
        v15 = v13;
        v17 = v36;
      }
    }

    else
    {
      if (v23 - 1 < 2)
      {
        goto LABEL_24;
      }

      if (!v23)
      {
        if (v16)
        {
          v44 = var3 + 44 * v14++;
          *v44 = v16;
          *(v44 + 1) = v17;
          *(v44 + 1) = v12;
          *(v44 + 4) = v2;
          *(v44 + 5) = v4;
          *(v44 + 6) = v5;
          *(v44 + 7) = v3;
          *(v44 + 8) = v7;
          *(v44 + 9) = v8;
          *(v44 + 10) = v6;
          var3 = this->var3;
          v22 = *(var3 + 11 * v15);
        }

        v45 = var3 + 44 * v15;
        v17 = *(v45 + 1);
        v12 = *(v45 + 1);
        v2 = *(v45 + 4);
        v4 = *(v45 + 5);
        v5 = *(v45 + 6);
        v3 = *(v45 + 7);
        v7 = *(v45 + 8);
        v8 = *(v45 + 9);
        v6 = *(v45 + 10);
        v46 = var3 + 44 * v14++;
        *v46 = v22;
        *(v46 + 1) = v17;
        *(v46 + 1) = v12;
        *(v46 + 4) = v2;
        *(v46 + 5) = v4;
        *(v46 + 6) = v5;
        *(v46 + 7) = v3;
        *(v46 + 8) = v7;
        *(v46 + 9) = v8;
        *(v46 + 10) = v6;
        v26 = *(this->var3 + 11 * v15 + 1);
        v16 = v22;
        goto LABEL_39;
      }

      if (v23 != 3)
      {
        goto LABEL_27;
      }

      if (v16)
      {
        v24 = var3 + 44 * v14++;
        *v24 = v16;
        *(v24 + 1) = v17;
        *(v24 + 1) = v12;
        *(v24 + 4) = v2;
        *(v24 + 5) = v4;
        *(v24 + 6) = v5;
        *(v24 + 7) = v3;
        *(v24 + 8) = v7;
        *(v24 + 9) = v8;
        *(v24 + 10) = v6;
        var3 = this->var3;
      }

      v25 = var3 + 44 * v15;
      v26 = *(v25 + 1);
      LODWORD(v27) = *(v25 + 4);
      if (v27 >= 1)
      {
        v28 = 0;
        v29 = 44 * v14;
        v30 = 44 * v15 + 44;
        do
        {
          v31 = (var3 + v30);
          v32 = (var3 + v29);
          v33 = *v31;
          v34 = v31[1];
          *(v32 + 28) = *(v31 + 28);
          *v32 = v33;
          v32[1] = v34;
          var3 = this->var3;
          v27 = *(var3 + 11 * v15 + 4);
          v29 += 44;
          ++v14;
          ++v28;
          v30 += 44;
        }

        while (v28 < v27);
      }

      v16 = 0;
      v35 = v27 + v15;
    }

LABEL_42:
    v13 = v15;
    v18 = v26;
    v15 = (v35 + 1);
  }

  while (v15 < this->var2);
  if (v16)
  {
    v63 = this->var3 + 44 * v14++;
    *v63 = v16;
    *(v63 + 1) = v17;
    *(v63 + 1) = v12;
    *(v63 + 4) = v2;
    *(v63 + 5) = v4;
    *(v63 + 6) = v5;
    *(v63 + 7) = v3;
    *(v63 + 8) = v7;
    *(v63 + 9) = v8;
    *(v63 + 10) = v6;
  }

LABEL_46:
  this->var2 = v14;
}

void sub_2767A6554(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x2767A64CCLL);
  }

  _Unwind_Resume(exc_buf);
}

void TSDRegisterPersistentClasses(void *a1)
{
  v1 = a1;
  v64 = v1;
  if ((byte_280A4CA80 & 1) == 0)
  {
    v2 = TSD::DrawableArchive::default_instance(v1);
    google::protobuf::internal::AssignDescriptors();
    v4 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v3, 3002, v2, off_2812F5188[70], "TSDDrawableInfo");
    v5 = TSD::ContainerArchive::default_instance(v4);
    google::protobuf::internal::AssignDescriptors();
    v7 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v6, 3003, v5, off_2812F5188[72], "TSDContainerInfo");
    v8 = TSD::ShapeArchive::default_instance(v7);
    google::protobuf::internal::AssignDescriptors();
    v10 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v9, 3004, v8, off_2812F5188[80], "TSDShapeInfo");
    v11 = TSD::ImageArchive::default_instance(v10);
    google::protobuf::internal::AssignDescriptors();
    v13 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v12, 3005, v11, off_2812F5188[84], "TSDImageInfo");
    v14 = TSD::MaskArchive::default_instance(v13);
    google::protobuf::internal::AssignDescriptors();
    v16 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v15, 3006, v14, off_2812F5188[86], "TSDMaskInfo");
    v17 = TSD::MovieArchive::default_instance(v16);
    google::protobuf::internal::AssignDescriptors();
    v19 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v18, 3007, v17, off_2812F5188[90], "TSDMovieInfo");
    v20 = TSD::GroupArchive::default_instance(v19);
    google::protobuf::internal::AssignDescriptors();
    v22 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v21, 3008, v20, off_2812F5188[74], "TSDGroupInfo");
    v23 = TSD::ConnectionLineArchive::default_instance(v22);
    google::protobuf::internal::AssignDescriptors();
    v25 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v24, 3009, v23, off_2812F5188[82], "TSDConnectionLineInfo");
    v26 = TSD::ShapeStyleArchive::default_instance(v25);
    google::protobuf::internal::AssignDescriptors();
    v28 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v27, 3015, v26, off_2812F5188[60], "TSDShapeStyle");
    v29 = TSD::MediaStyleArchive::default_instance(v28);
    google::protobuf::internal::AssignDescriptors();
    v31 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v30, 3016, v29, off_2812F5188[64], "TSDMediaStyle");
    v32 = TSD::CanvasSelectionArchive::default_instance(v31);
    google::protobuf::internal::AssignDescriptors();
    v34 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v33, 3045, v32, off_2812F5188[108], "TSDArchivedCanvasSelection");
    v35 = TSD::CommentStorageArchive::default_instance(v34);
    google::protobuf::internal::AssignDescriptors();
    v37 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v36, 3056, v35, off_2812F5188[118], "TSDCommentStorage");
    v38 = TSD::DrawableSelectionArchive::default_instance(v37);
    google::protobuf::internal::AssignDescriptors();
    v40 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v39, 3061, v38, off_2812F5188[110], "TSDArchivedDrawableSelection");
    v41 = TSD::GroupSelectionArchive::default_instance(v40);
    google::protobuf::internal::AssignDescriptors();
    v43 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v42, 3062, v41, off_2812F5188[112], "TSDArchivedGroupSelection");
    v44 = TSD::PathSelectionArchive::default_instance(v43);
    google::protobuf::internal::AssignDescriptors();
    v46 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v45, 3063, v44, off_2812F5188[114], "TSDArchivedPathSelection");
    v47 = TSD::InfoHyperlinkSelectionArchive::default_instance(v46);
    google::protobuf::internal::AssignDescriptors();
    v49 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v48, 3081, v47, off_2812F5188[116], "TSDArchivedInfoHyperlinkSelection");
    v50 = TSD::PencilAnnotationArchive::default_instance(v49);
    google::protobuf::internal::AssignDescriptors();
    v52 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v51, 3086, v50, off_2812F5188[122], "TSDPencilAnnotation");
    v53 = TSD::FreehandDrawingToolkitUIState::default_instance(v52);
    google::protobuf::internal::AssignDescriptors();
    v55 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v54, 3091, v53, off_2812F5188[98], "TSDFreehandDrawingToolkitUIState");
    v56 = TSD::PencilAnnotationStorageArchive::default_instance(v55);
    google::protobuf::internal::AssignDescriptors();
    v58 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v57, 242, v56, off_2812F5188[126], "TSDPencilAnnotationStorage");
    v59 = TSD::StandinCaptionArchive::default_instance(v58);
    google::protobuf::internal::AssignDescriptors();
    objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v64, v60, 3097, v59, off_2812F5188[100], "TSDStandinCaptionInfo");
    v61 = MEMORY[0x277D80830];
    v62 = objc_opt_class();
    objc_msgSend_registerDataAttributesClass_forExtensionNumber_(v61, v63, v62, 100);
    byte_280A4CA80 = 1;
  }
}

double TSDEdgeInsetsCreateFromMessage(float *a1)
{
  TSPCGFloatFromFloat(a1[6]);
  v3 = v2;
  TSPCGFloatFromFloat(a1[7]);
  TSPCGFloatFromFloat(a1[8]);
  TSPCGFloatFromFloat(a1[9]);
  return v3;
}

uint64_t TSDEdgeInsetsCopyToMessage(_DWORD *a1, double a2, double a3, double a4, double a5)
{
  TSPCGFloatToFloat(a2);
  a1[4] |= 1u;
  a1[6] = v9;
  TSPCGFloatToFloat(a3);
  a1[4] |= 2u;
  a1[7] = v10;
  TSPCGFloatToFloat(a4);
  a1[4] |= 4u;
  a1[8] = v11;
  result = TSPCGFloatToFloat(a5);
  a1[4] |= 8u;
  a1[9] = v13;
  return result;
}

uint64_t sub_2767A7EA0(Shape *a1, uint64_t a2, unsigned int a3, int a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11)
{
  if (a4 >= 1)
  {
    v19 = a4 + 1;
    v26 = a9;
    v27 = a10;
    while (1)
    {
      v20 = ((a7 - a5) * (a10 - a6)) - ((a8 - a6) * (a9 - a5));
      v21 = -v20;
      if (v20 >= 0.0)
      {
        v21 = ((a7 - a5) * (a10 - a6)) - ((a8 - a6) * (a9 - a5));
      }

      if (v21 < a11)
      {
        break;
      }

      v22 = ((a7 + a9) + (a5 * 2.0)) * 0.25;
      v23 = ((a8 + a10) + (a6 * 2.0)) * 0.25;
      v24 = Shape::AddPoint(a1, v22, v23);
      sub_2767A7EA0(a1, a2, v24, (v19 - 2), (a5 + a7) * 0.5, (a6 + a8) * 0.5, a7, a8, v22, v23, a11);
      a9 = v26;
      a10 = v27;
      a5 = (a5 + v26) * 0.5;
      --v19;
      a6 = (a6 + v27) * 0.5;
      a8 = v23;
      a7 = v22;
      a2 = v24;
      if (v19 <= 1)
      {
        goto LABEL_9;
      }
    }
  }

  LODWORD(v24) = a2;
LABEL_9:

  return Shape::AddEdge(a1, v24, a3);
}

uint64_t sub_2767A8010(Shape *this, int a2, unsigned int *a3, unsigned int *a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v19 = -a8;
  v20 = (a8 * a11) - (a9 * a10);
  if (fabsf(v20) < 0.0001)
  {
    v21 = ((a9 * a11) + (a8 * a10));
    result = Shape::AddPoint(this, a6 + (a5 * a9), a7 + (a5 * v19));
    *a3 = result;
    if (v21 > 0.9999)
    {
      *a4 = result;
      return result;
    }

    LODWORD(v39) = Shape::AddPoint(this, a6 - (a5 * a9), a7 + (a5 * a8));
    *a4 = v39;
    goto LABEL_17;
  }

  v25 = -a10;
  v75 = a6 + (a5 * a9);
  v76 = a7 + (a5 * v19);
  *a3 = Shape::AddPoint(this, v75, v76);
  v77 = v25;
  v28 = a7 + (a5 * v25);
  v74 = a6 + (a5 * a11);
  v29 = Shape::AddPoint(this, v74, v28);
  *a4 = v29;
  if (v20 < 0.0)
  {
    v30 = this;
    v31 = a6;
    v32 = a7;
    goto LABEL_6;
  }

  v39 = v29;
  if (a2 != 1)
  {
    if (a2 != 2)
    {
LABEL_17:
      v37 = *a3;
      v38 = this;
      goto LABEL_18;
    }

    v40 = a9 + a11;
    v41 = v77 - a8;
    v42 = (v41 * v41) + (v40 * v40);
    if (v42 > 0.0001)
    {
      v43 = sqrtf(v42);
      v40 = v40 / v43;
      v41 = v41 / v43;
    }

    v44 = (v41 * v77) + (v40 * a11);
    v45 = a5 / v44;
    v46 = v44 * a5;
    if ((v44 * a5) < a12)
    {
      v46 = a12;
    }

    if (v45 > v46)
    {
      v47 = (v44 * (v45 - v46)) / ((v40 * v77) - (v41 * a11));
      v48 = a6 + (v46 * v40);
      v49 = a7 + (v46 * v41);
      v33 = Shape::AddPoint(this, v48 + (v47 * v41), v49 - (v47 * v40));
      v50 = Shape::AddPoint(this, v48 - (v47 * v41), v49 + (v47 * v40));
      Shape::AddEdge(this, v50, v33);
      v34 = *a4;
      v35 = this;
      v36 = v50;
      goto LABEL_7;
    }

    v31 = a6 + (v45 * v40);
    v32 = a7 + (v45 * v41);
    v30 = this;
LABEL_6:
    v33 = Shape::AddPoint(v30, v31, v32);
    v34 = *a4;
    v35 = this;
    v36 = v33;
LABEL_7:
    Shape::AddEdge(v35, v34, v36);
    v37 = *a3;
    v38 = this;
    LODWORD(v39) = v33;
LABEL_18:

    return Shape::AddEdge(v38, v39, v37);
  }

  v51 = a9 + a11;
  v52 = v77 - a8;
  v53 = (v52 * v52) + (v51 * v51);
  v54 = a6;
  if (v53 > 0.0001)
  {
    v55 = sqrtf(v53);
    v51 = v51 / v55;
    v52 = v52 / v55;
  }

  v56 = (v52 * v77) + (v51 * a11);
  v57 = a5 / v56;
  if (((a8 * a10) + (a9 * a11)) >= 0.0)
  {
    v68 = a6 + (v57 * v51);
    v69 = a7 + (v57 * v52);
    v65 = *a3;
    v66 = 5.0;
    v67 = this;
    v70 = a6 + (a5 * a11);
    v71 = v28;
  }

  else
  {
    v58 = (v56 * (v57 - a5)) / ((v51 * v77) - (v52 * a11));
    v59 = v28;
    v60 = v54 + (a5 * v51);
    v61 = a7 + (a5 * v52);
    v62 = v51;
    v63 = v52;
    v64 = Shape::AddPoint(this, v60, v61);
    sub_2767A7EA0(this, *a4, v64, 8, v60 - (v58 * v63), v61 + (v58 * v62), v74, v59, v60, v61, 5.0);
    v65 = *a3;
    v66 = 5.0;
    v67 = this;
    v39 = v64;
    v68 = v60 + (v58 * v63);
    v69 = v61 - (v58 * v62);
    v70 = v60;
    v71 = v61;
  }

  return sub_2767A7EA0(v67, v39, v65, 8, v68, v69, v70, v71, v75, v76, v66);
}

uint64_t sub_2767A83F0(Shape *this, int a2, unsigned int *a3, unsigned int *a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v20 = (a8 * a11) - (a9 * a10);
  if (fabsf(v20) < 0.0001)
  {
    if (((a9 * a11) + (a8 * a10)) > 0.9999)
    {
      result = Shape::AddPoint(this, a6 - (a5 * a9), a7 + (a5 * a8));
      *a3 = result;
      *a4 = result;
      return result;
    }

    *a4 = Shape::AddPoint(this, a6 + (a5 * a9), a7 + (a5 * -a8));
    v41 = Shape::AddPoint(this, a6 - (a5 * a9), a7 + (a5 * a8));
    *a3 = v41;
    v26 = *a4;
    goto LABEL_21;
  }

  v69 = a6 - (a5 * a9);
  v70 = a7 + (a5 * a8);
  *a3 = Shape::AddPoint(this, v69, v70);
  v71 = a6 - (a5 * a11);
  v72 = a7 + (a5 * a10);
  v25 = Shape::AddPoint(this, v71, v72);
  *a4 = v25;
  if (v20 >= 0.0)
  {
    v43 = this;
    v44 = a6;
    v45 = a7;
    goto LABEL_15;
  }

  v26 = v25;
  v27 = -a10;
  if (a2 != 1)
  {
    if (a2 != 2)
    {
      v41 = *a3;
LABEL_21:
      v40 = this;
      goto LABEL_22;
    }

    v28 = a9 + a11;
    v29 = v27 - a8;
    v30 = (v29 * v29) + (v28 * v28);
    if (v30 > 0.0001)
    {
      v31 = sqrtf(v30);
      v28 = v28 / v31;
      v29 = v29 / v31;
    }

    v32 = (v29 * v27) + (v28 * a11);
    v33 = a5 / v32;
    v34 = v32 * a5;
    if ((v32 * a5) < a12)
    {
      v34 = a12;
    }

    if (v33 > v34)
    {
      v35 = (v32 * (v33 - v34)) / ((v28 * v27) - (v29 * a11));
      v36 = a6 - (v34 * v28);
      v37 = a7 - (v34 * v29);
      v38 = Shape::AddPoint(this, v36 - (v35 * v29), v37 + (v35 * v28));
      v39 = Shape::AddPoint(this, v36 + (v35 * v29), v37 - (v35 * v28));
      Shape::AddEdge(this, *a3, v38);
      Shape::AddEdge(this, v38, v39);
      v26 = *a4;
      v40 = this;
      v41 = v39;
LABEL_22:

      return Shape::AddEdge(v40, v41, v26);
    }

    v44 = a6 - (v33 * v28);
    v45 = a7 - (v33 * v29);
    v43 = this;
LABEL_15:
    v46 = Shape::AddPoint(v43, v44, v45);
    Shape::AddEdge(this, *a3, v46);
    v26 = *a4;
    v40 = this;
    v41 = v46;
    goto LABEL_22;
  }

  v47 = a9 + a11;
  v48 = v27 - a8;
  v49 = (v48 * v48) + (v47 * v47);
  if (v49 > 0.0001)
  {
    v50 = sqrtf(v49);
    v47 = v47 / v50;
    v48 = v48 / v50;
  }

  v51 = (v48 * v27) + (v47 * a11);
  v52 = a5 / v51;
  if (((a8 * a10) + (a9 * a11)) >= 0.0)
  {
    v64 = a6 - (v52 * v47);
    v65 = a7 - (v52 * v48);
    v63 = *a3;
    v61 = 5.0;
    v62 = this;
    v66 = v69;
    v67 = v70;
  }

  else
  {
    v53 = (v51 * (v52 - a5)) / ((v47 * v27) - (v48 * a11));
    v54 = a6 + (-a5 * v47);
    v55 = v54 - (v53 * v48);
    v56 = a7 + (-a5 * v48);
    v57 = v56 + (v53 * v47);
    v58 = v54 + (v53 * v48);
    v59 = v56 - (v53 * v47);
    v60 = Shape::AddPoint(this, v54, v56);
    sub_2767A7EA0(this, *a3, v60, 8, v55, v57, v69, v70, v54, v56, 5.0);
    v26 = *a4;
    v61 = 5.0;
    v62 = this;
    v63 = v60;
    v64 = v58;
    v65 = v59;
    v66 = v54;
    v67 = v56;
  }

  return sub_2767A7EA0(v62, v63, v26, 8, v64, v65, v66, v67, v71, v72, v61);
}

void Shape::Shape(Shape *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = 1;
  *(this + 16) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
}

{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = 1;
  *(this + 16) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
}

void Shape::~Shape(void **this)
{
  if (*(this + 5) >= 1)
  {
    free(this[3]);
  }

  this[2] = 0;
  this[3] = 0;
  if (*(this + 9) >= 1)
  {
    free(this[5]);
  }

  this[4] = 0;
  this[5] = 0;
  v2 = this[7];
  if (v2)
  {
    free(v2);
  }

  v3 = this[12];
  if (v3)
  {
    free(v3);
  }

  v4 = this[8];
  if (v4)
  {
    free(v4);
  }

  v5 = this[9];
  if (v5)
  {
    free(v5);
  }

  v6 = this[10];
  if (v6)
  {
    free(v6);
  }

  v7 = this[16];
  if (v7)
  {
    free(v7);
  }

  v8 = this[11];
  if (v8)
  {
    free(v8);
  }

  v9 = this[13];
  if (v9)
  {
    free(v9);
  }

  v10 = this[14];
  if (v10)
  {
    free(v10);
  }
}

void Shape::MakePointData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 4) == 0)
    {
      *(this + 13) = v3 | 4;
      v4 = *(this + 11);
      if (v4)
      {
        free(v4);
      }

      v5 = malloc_type_calloc(*(this + 5), 0x30uLL, 0x102004023ED6C3AuLL);
      *(this + 11) = v5;
      if (!v5)
      {
        TSUSetCrashReporterInfo();
        v6 = MEMORY[0x277D81150];
        v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void Shape::MakePointData(BOOL)", "void Shape::MakePointData(BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm", 66);
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Shape.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 66, 1, "Unable to allocate memory.");

        TSUCrashBreakpoint();
        abort();
      }
    }
  }

  else if ((v3 & 4) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFFFB;
    v12 = *(this + 11);
    if (v12)
    {
      free(v12);
      *(this + 11) = 0;
    }
  }
}