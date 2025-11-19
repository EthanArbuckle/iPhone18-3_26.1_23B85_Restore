size_t PCBufferWriteStream::write(PCBufferWriteStream *this, const void *__src, size_t __n)
{
  v6 = *(this + 2);
  v7 = *(this + 3);
  if (&v6[__n] >= v7)
  {
    v8 = v6 + __n - v7;
    if (*(this + 11) > v8)
    {
      v8 = *(this + 11);
    }

    v9 = *(this + 10) + v8;
    v10 = *(this + 1);
    v11 = *(this + 4) - v10;
    v12 = &v6[-v10];
    v13 = malloc_type_malloc(v9, 0x100004077774924uLL);
    memcpy(v13, *(this + 1), v11);
    free(*(this + 1));
    v6 = &v12[v13];
    *(this + 1) = v13;
    *(this + 2) = &v12[v13];
    *(this + 10) = v9;
    *(this + 3) = v13 + v9;
    *(this + 4) = v13 + v11;
  }

  memcpy(v6, __src, __n);
  v14 = *(this + 2) + __n;
  *(this + 2) = v14;
  if (v14 > *(this + 4))
  {
    *(this + 4) = v14;
  }

  return __n;
}

CFDataRef PCBufferWriteStream::copyData(const UInt8 **this)
{
  v2 = *MEMORY[0x277CBECE8];
  v6 = 0;
  (*(*this + 3))(this, &v6, 1);
  v3 = this[1];
  v4 = (this[2] - 1);
  this[2] = v4;
  return CFDataCreate(v2, v3, v4 - v3);
}

uint64_t PCStream::operator<<(uint64_t a1, char *__s)
{
  if (__s && *__s)
  {
    if (__s[1])
    {
      v4 = strlen(__s);
    }

    else
    {
      v4 = 1;
    }

    (*(*a1 + 24))(a1, __s, v4);
  }

  return a1;
}

void PCURL::PCURL(PCURL *this, const char *__s, Boolean a3)
{
  v6 = strlen(__s);
  if (v6)
  {
    v6 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], __s, v6, a3);
  }

  *this = v6;
}

void PCURL::PCURL(PCURL *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *this = cf;
}

void PCURL::PCURL(PCURL *this, PCString *a2, Boolean a3)
{
  PCURL::PCURL(&v10, @"://");
  v6 = PCString::find(a2, &v10);
  PCString::~PCString(&v10);
  v7 = *MEMORY[0x277CBECE8];
  v8 = PCString::cf_str(a2);
  if (v6 < 0)
  {
    v9 = CFURLCreateWithFileSystemPath(v7, v8, kCFURLPOSIXPathStyle, a3);
  }

  else
  {
    v9 = CFURLCreateWithString(v7, v8, 0);
  }

  *this = v9;
}

void PCURL::PCURL(PCURL *this, CFURLRef *a2)
{
  *this = 0;
  if (*a2)
  {
    v3 = CFURLGetString(*a2);
    *this = CFURLCreateWithString(*MEMORY[0x277CBECE8], v3, 0);
  }
}

void PCURL::~PCURL(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **PCURL::operator=(const void **a1, const __CFURL **a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = 0;
  v5 = *a2;
  if (*a2)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = CFURLGetString(v5);
    *a1 = CFURLCreateWithString(v6, v7, 0);
  }

  return a1;
}

void PCURL::getAbsoluteString(const __CFURL **this@<X0>, PCURL *a2@<X8>)
{
  v3 = *this;
  if (v3)
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFURLGetString(v3);
    Copy = CFStringCreateCopy(v4, v5);
    PCURL::PCURL(a2, Copy);
    if (Copy)
    {
      CFRelease(Copy);
    }
  }

  else
  {

    PCSharedCount::PCSharedCount(a2);
  }
}

void PCURL::getPathAsFileSystemString(CFURLRef *this@<X0>, PCURL *a2@<X8>)
{
  if (*this)
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x277CBECE8], *this);
    v4 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
    PCURL::PCURL(a2, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(PathComponent);
  }

  else
  {

    PCSharedCount::PCSharedCount(a2);
  }
}

void PCURL::getContainingFolderAsURLString(CFURLRef *this@<X0>, PCURL *a2@<X8>)
{
  if (*this)
  {
    v3 = *MEMORY[0x277CBECE8];
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x277CBECE8], *this);
    v5 = CFURLGetString(PathComponent);
    Copy = CFStringCreateCopy(v3, v5);
    PCURL::PCURL(a2, Copy);
    if (PathComponent)
    {
      CFRelease(PathComponent);
    }

    if (Copy)
    {
      CFRelease(Copy);
    }
  }

  else
  {

    PCSharedCount::PCSharedCount(a2);
  }
}

void PCURL::getFilename(const __CFURL **this@<X0>, PCString *a2@<X8>)
{
  v3 = *this;
  if (v3)
  {
    PathComponent = CFURLCopyLastPathComponent(v3);
    PCString::PCString(a2, PathComponent, 0);
    if (PathComponent)
    {
      CFRelease(PathComponent);
    }
  }

  else
  {

    PCSharedCount::PCSharedCount(a2);
  }
}

void PCURL::getShortFilename(CFURLRef *this@<X0>, PCString *a2@<X8>)
{
  if (*this)
  {
    v3 = CFURLCreateCopyDeletingPathExtension(*MEMORY[0x277CBECE8], *this);
    PathComponent = CFURLCopyLastPathComponent(v3);
    PCString::PCString(a2, PathComponent, 0);
    if (PathComponent)
    {
      CFRelease(PathComponent);
    }

    CFRelease(v3);
  }

  else
  {

    PCSharedCount::PCSharedCount(a2);
  }
}

void PCURL::getExtension(const __CFURL **this@<X0>, PCURL *a2@<X8>)
{
  v3 = *this;
  if (v3)
  {
    v4 = CFURLCopyPathExtension(v3);
    PCURL::PCURL(a2, v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {

    PCSharedCount::PCSharedCount(a2);
  }
}

void PCURL::getAsFileSystemString(const __CFURL **this@<X0>, PCString *a2@<X8>)
{
  v3 = *this;
  if (v3)
  {
    v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
    PCString::PCString(a2, v4, 0);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {

    PCSharedCount::PCSharedCount(a2);
  }
}

void PCURL::getAsURLString(const __CFURL **this@<X0>, PCURL *a2@<X8>)
{
  v3 = *this;
  if (v3)
  {
    v4 = CFURLGetString(v3);

    PCURL::PCURL(a2, v4);
  }

  else
  {

    PCSharedCount::PCSharedCount(a2);
  }
}

uint64_t PCURL::getString(const __CFURL **this, unsigned int *a2)
{
  *a2 = 0;
  v2 = *this;
  if (v2)
  {
    v3 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);
    if (v3)
    {
      v5 = 0;
      CFStringGetLength(v3);
      operator new[]();
    }
  }

  return 0;
}

uint64_t PCURL::isSequence(const __CFURL **this)
{
  if (!*this)
  {
    return 0;
  }

  v9 = 0;
  String = PCURL::getString(this, &v9);
  if (v9 >= 2)
  {
    v2 = 0;
    v3 = (String + v9 - 1);
    v4 = 1;
    while (*v3 != 47)
    {
      v5 = *v3;
      if (v2)
      {
        if ((v5 - 35) > 0x38 || ((1 << (v5 - 35)) & 0x100000020000001) == 0)
        {
          break;
        }

        v7 = (v5 != 91) | ~v2;
        v2 = 1;
        if ((v7 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v2 |= v5 == 93;
      }

      if (--v3 <= String)
      {
        break;
      }
    }
  }

  v4 = 0;
LABEL_15:
  if (String)
  {
    MEMORY[0x2666E9ED0](String, 0x1000C8077774924);
  }

  return v4;
}

uint64_t PCURL::getSequenceStart(PCURL *this, char *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  v8 = -1;
  if (a3 != 1)
  {
    v5 = 0;
    v6 = &a2[a3 - 1];
    while (1)
    {
      v7 = *v6;
      if (v7 == 58)
      {
        if ((v5 & 1) != 0 && sscanf(v6 + 1, "%d", &v8) == 1)
        {
          return v8;
        }

        v5 = 1;
      }

      else if (v7 == 47)
      {
        return v8;
      }

      if (--v6 <= a2)
      {
        return v8;
      }
    }
  }

  return result;
}

uint64_t PCURL::getSequenceEnd(PCURL *this, char *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  v9 = -1;
  if (a3 != 1)
  {
    v5 = &a2[a3 - 1];
    do
    {
      while (1)
      {
        v6 = *v5;
        if (v6 == 58)
        {
          break;
        }

        if (v6 != 47 && --v5 > a2)
        {
          continue;
        }

        return v9;
      }

      v7 = sscanf(v5-- + 1, "%d", &v9);
    }

    while (v7 != 1 && v5 > a2);
    return v9;
  }

  return result;
}

uint64_t PCURL::getSequenceStart(const __CFURL **this)
{
  v4 = 0;
  String = PCURL::getString(this, &v4);
  SequenceStart = PCURL::getSequenceStart(String, String, v4);
  if (String)
  {
    MEMORY[0x2666E9ED0](String, 0x1000C8077774924);
  }

  return SequenceStart;
}

uint64_t PCURL::getSequenceEnd(const __CFURL **this)
{
  v4 = 0;
  String = PCURL::getString(this, &v4);
  SequenceEnd = PCURL::getSequenceEnd(String, String, v4);
  if (String)
  {
    MEMORY[0x2666E9ED0](String, 0x1000C8077774924);
  }

  return SequenceEnd;
}

uint64_t PCURL::getSequenceLength(const __CFURL **this)
{
  v7 = 0;
  String = PCURL::getString(this, &v7);
  v2 = v7;
  SequenceEnd = PCURL::getSequenceEnd(String, String, v7);
  v4 = SequenceEnd;
  SequenceStart = PCURL::getSequenceStart(SequenceEnd, String, v2);
  if (String)
  {
    MEMORY[0x2666E9ED0](String, 0x1000C8077774924);
  }

  return (v4 - SequenceStart + 1);
}

uint64_t PCURL::getURLforIndex(const __CFURL **this, int a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    v35 = 0;
    String = PCURL::getString(this, &v35);
    v5 = v35;
    SequenceStart = PCURL::getSequenceStart(String, String, v35);
    v7 = SequenceStart;
    SequenceEnd = PCURL::getSequenceEnd(SequenceStart, String, v5);
    if (SequenceEnd - v7 >= a2 || (SequenceEnd | v7) < 0)
    {
      v9 = v5 - 1;
      if (v5 != 1)
      {
        v10 = 0;
        v11 = v7 & ~(v7 >> 31);
        v12 = String + v9;
        while (1)
        {
          if (*v12 == 47)
          {
            goto LABEL_16;
          }

          v13 = *v12;
          if ((v10 & 1) == 0)
          {
            v10 |= v13 == 93;
            goto LABEL_15;
          }

          if ((v13 - 35) > 0x38 || ((1 << (v13 - 35)) & 0x100000020000001) == 0)
          {
            goto LABEL_16;
          }

          if (v13 == 91 && (v10 & 1) != 0)
          {
            break;
          }

          v10 = 1;
LABEL_15:
          if (--v12 <= String)
          {
            goto LABEL_16;
          }
        }

        v16 = 0;
        v17 = 0;
        v18 = cStr;
        v19 = 91;
        for (i = 1; ; ++i)
        {
          if (v19 > 0x5Au)
          {
            if (v19 == 91)
            {
              *v18 = 13605;
              v18[2] = 66;
LABEL_27:
              v18 += 3;
              goto LABEL_28;
            }

            if (v19 == 93)
            {
              *v18 = 4470053;
              v21 = CFURLGetString(*this);
              v22 = *MEMORY[0x277CBECE8];
              MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v21);
              if (v17)
              {
                snprintf(v36, 0x20uLL, "%d");
              }

              else
              {
                snprintf(__str, 0x20uLL, "%%0%dd", v16);
                v24 = fmtcheck(__str, "%d");
                snprintf(v36, 0x20uLL, v24, (v11 + a2));
              }

              v25 = CFStringCreateWithCString(v22, cStr, 0x600u);
              v26 = CFStringCreateWithCString(v22, v36, 0x600u);
              v41.length = CFStringGetLength(MutableCopy);
              v41.location = 0;
              CFStringFindAndReplace(MutableCopy, v25, v26, v41, 0);
              Length = CFStringGetLength(MutableCopy);
              v28 = (String + v35 - 1);
              if (v35 == 1)
              {
                v30 = Length;
LABEL_47:
                if (*v28 == 58)
                {
                  v40.location = v30 - 1;
                  v40.length = Length - (v30 - 1);
                  CFStringDelete(MutableCopy, v40);
                }
              }

              else
              {
                v29 = 0;
                v30 = Length;
                while (1)
                {
                  v31 = *v28;
                  if (v31 == 47 || v31 < 0)
                  {
                    break;
                  }

                  v32 = *v28;
                  if (v32 == 58 || (*(MEMORY[0x277D85DE0] + 4 * *v28 + 60) & 0x400) != 0)
                  {
                    if (v32 == 58)
                    {
                      ++v29;
                    }

                    if (v29 != 2)
                    {
                      v28 = (v28 - 1);
                      --v30;
                      if (v28 > String)
                      {
                        continue;
                      }
                    }
                  }

                  goto LABEL_47;
                }
              }

              PCURL::PCURL(&v34, MutableCopy);
              operator new();
            }
          }

          else
          {
            if (v19 == 35)
            {
              ++v16;
              *v18 = 12837;
              v18[2] = 51;
              goto LABEL_27;
            }

            if (v19 == 64)
            {
              *v18++ = 64;
              v17 = 1;
            }
          }

LABEL_28:
          v19 = v12[i];
        }
      }
    }

LABEL_16:
    if (String)
    {
      MEMORY[0x2666E9ED0](String, 0x1000C8077774924);
    }
  }

  return 0;
}

void sub_25FB9C8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  MEMORY[0x2666E9F00](v12, 0x60C4044C4A2DFLL);
  PCString::~PCString(&a12);
  _Unwind_Resume(a1);
}

double PCCalculus::ellipticE(PCCalculus *this, double result, double a3)
{
  if (a3 != 0.0)
  {
    v4 = vcvtmd_s64_f64(result / 1.57079633);
    v5 = ((v4 & 1) + v4);
    v6 = result - v5 * 1.57079633;
    if (v6 >= 0.0)
    {
      v7 = result - v5 * 1.57079633;
    }

    else
    {
      v7 = -v6;
    }

    v8 = 1.0;
    v9 = 1.0 - a3;
    if (1.0 - a3 <= 0.0 || v9 > 1.0)
    {
      if (v9 != 0.0)
      {
        v8 = acos(-5.0);
      }
    }

    else
    {
      v11 = 0.000153552577;
      v12 = 8u;
      do
      {
        v11 = v9 * v11 + *(&PCCalculus::ellpe(double)::P + v12);
        v12 += 8;
      }

      while (v12 != 88);
      v13 = 0.0000327954899;
      v14 = 8u;
      do
      {
        v13 = v9 * v13 + *(&PCCalculus::ellpe(double)::Q + v14);
        v14 += 8;
      }

      while (v14 != 80);
      v8 = v11 - log(1.0 - a3) * (v9 * v13);
    }

    if (v9 == 0.0)
    {
      v15 = sin(v7);
    }

    else
    {
      v16 = tan(v7);
      v17 = sqrt(v9);
      if (fabs(v16) <= 10.0 || (v18 = 1.0 / (v17 * v16), fabs(v18) >= 10.0))
      {
        v39 = v8;
        v40 = v6;
        if (fabs(sqrt(a3)) <= 1.11022302e-16)
        {
          v25 = 0.0;
          v27 = 1.0;
          v31 = 1.0;
          v30 = 0.0;
        }

        else
        {
          v37 = v5;
          v24 = 0;
          v25 = 0.0;
          v26 = 1;
          v27 = 1.0;
          do
          {
            v7 = v7 + atan(v17 / v27 * v16) + v24 * 3.14159265;
            v24 = vcvtmd_s64_f64((v7 + 1.57079633) / 3.14159265);
            v16 = (v17 / v27 + 1.0) * v16 / (1.0 - v16 * (v17 / v27 * v16));
            v28 = (v27 - v17) * 0.5;
            v29 = sqrt(v27 * v17);
            v27 = (v27 + v17) * 0.5;
            v26 *= 2;
            v25 = v25 + v28 * sin(v7);
            v17 = v29;
          }

          while (fabs(v28 / v27) > 1.11022302e-16);
          v30 = v24 * 3.14159265;
          v31 = v26;
          v5 = v37;
        }

        if (v9 < 0.0 || v9 > 1.0)
        {
          v36 = asin(-5.0);
        }

        else if (v9 <= 1.11022302e-16)
        {
          v36 = log(v9) * -0.5 + 1.38629436;
        }

        else
        {
          v38 = v5;
          v32 = 0.000137982865;
          v33 = 8u;
          do
          {
            v32 = v9 * v32 + *(&PCCalculus::ellpk(double)::P + v33);
            v33 += 8;
          }

          while (v33 != 88);
          v34 = 0.0000294078955;
          v35 = 8u;
          do
          {
            v34 = v9 * v34 + *(&PCCalculus::ellpk(double)::Q + v35);
            v35 += 8;
          }

          while (v35 != 88);
          v36 = v32 - log(v9) * v34;
          v5 = v38;
        }

        v15 = v25 + (atan(v16) + v30) / (v27 * v31) * (v39 / v36);
        v8 = v39;
        v6 = v40;
      }

      else
      {
        v19 = atan(v18);
        v20 = sin(v7) * a3;
        v21 = v20 * sin(v19) + v8;
        PCCalculus::ellipticE(v22, v19, a3);
        v15 = v21 - v23;
      }
    }

    if (v6 < 0.0)
    {
      v15 = -v15;
    }

    return v8 * v5 + v15;
  }

  return result;
}

double PCCalculus::ellipseLineIntegral(PCCalculus *this, double a2, double a3, double a4)
{
  if (a3 <= a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = a4;
  }

  if (a3 < a4)
  {
    a3 = a4;
  }

  v6 = v5 * v5;
  v7 = a3 * a3;
  v8 = v5 * v5 + a3 * a3 + cos(a2 + a2) * (a3 * a3 - v5 * v5);
  return sqrt(v8) * PCCalculus::ellipticE(v9, a2, sqrt(1.0 - v6 / v7)) / sqrt(v8 / v7);
}

double doInverseToneMap_BT2390(float32x4_t a1)
{
  v1 = vabsq_f32(a1);
  v1.i32[3] = 0;
  v2 = _simd_pow_f4(v1, xmmword_260344B60);
  v3 = vcltzq_f32(a1);
  v3.i32[3] = 0;
  __asm
  {
    FMOV            V3.4S, #1.0
    FMOV            V4.4S, #-1.0
  }

  v10 = vmulq_f32(vmulq_f32(v2, vbslq_s8(vcltzq_s32(v3), _Q4, _Q3)), vdupq_n_s32(0x3E87AE14u));
  v20 = v10;
  v10.i32[3] = 0;
  v11 = vmaxnmq_f32(v10, 0);
  v11.i32[3] = 0;
  v12 = _simd_pow_f4(v11, xmmword_26034C600);
  v13 = vmulq_f32(v12, xmmword_26034C610);
  v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  v15 = 1.0;
  if (v14 != 0.0)
  {
    v16 = vmulq_f32(v20, xmmword_26034C610);
    v15 = (v16.f32[2] + vaddv_f32(*v16.f32)) / v14;
  }

  __asm { FMOV            V1.4S, #12.0 }

  *&result = vmulq_f32(vmulq_n_f32(v12, v15), _Q1).u64[0];
  return result;
}

double toneMap_BT2446_A_DisplayLinearToGamma(float32x4_t a1)
{
  a1.i32[3] = 0;
  v1 = vmaxnmq_f32(a1, 0);
  v1.i32[3] = 0;
  v15 = _simd_pow_f4(v1, xmmword_26034C620);
  v2 = vmulq_f32(v15, xmmword_26034C630);
  v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  v4 = logf((v3 * 12.26) + 1.0) / 2.5847;
  if (v4 <= 0.7399)
  {
    v7 = v4 * 1.077;
  }

  else
  {
    if (v4 >= 0.9909)
    {
      v6 = 0.5;
      v5 = v4 * 0.5;
    }

    else
    {
      v5 = v4 * ((v4 * -1.151) + 2.7811);
      v6 = -0.6302;
    }

    v7 = v5 + v6;
  }

  *v8.i32 = (powf(5.697, v7) + -1.0) / 4.697;
  v9 = v3 * 1.1;
  if ((v3 * 1.1) < 0.000000059605)
  {
    v9 = 0.000000059605;
  }

  v10 = *v8.i32 / v9;
  v11 = ((v15.f32[2] - v3) / 1.8814) * v10;
  v12 = ((v15.f32[0] - v3) / 1.4746) * v10;
  v13 = v12 * 0.1;
  if ((v12 * 0.1) < 0.0)
  {
    v13 = 0.0;
  }

  *v8.i32 = *v8.i32 - v13;
  *&result = vmlaq_n_f32(vmlaq_n_f32(vdupq_lane_s32(v8, 0), xmmword_26034C640, v11), xmmword_26034C650, v12).u64[0];
  return result;
}

double doInverseToneMap_BT2446_A(float32x4_t a1)
{
  v12 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_26034C660, a1.f32[0]), xmmword_26034C670, *a1.f32, 1), xmmword_26034C680, a1, 2);
  v1 = powf(255.0 * v12.f32[0], flt_26034C7B0[(255.0 * v12.f32[0]) > 70.0] + ((255.0 * v12.f32[0]) * (flt_26034C7A8[(255.0 * v12.f32[0]) > 70.0] + ((255.0 * v12.f32[0]) * flt_26034C7A0[(255.0 * v12.f32[0]) > 70.0]))));
  v2 = 1.0;
  if (v12.f32[0] > 0.0)
  {
    v2 = (v1 / v12.f32[0]) * 1.075;
  }

  v3 = vmuls_lane_f32(v2, *v12.f32, 1);
  v4 = vmuls_lane_f32(v2, v12, 2);
  v5.f32[0] = v1 + (v4 * 1.4746);
  v5.f32[1] = (v1 + (v3 * -0.16455)) + (v4 * -0.57135);
  v5.i64[1] = COERCE_UNSIGNED_INT(v1 + (v3 * 1.8814));
  v6 = vmaxnmq_f32(v5, 0);
  v6.i32[3] = 0;
  v7 = vdivq_f32(vminnmq_f32(v6, xmmword_26034C690), vdupq_n_s32(0x447A0000u));
  v7.i32[3] = 0;
  v13 = _simd_pow_f4(v7, xmmword_26034C6A0);
  v8 = vmulq_f32(v13, xmmword_26034C630);
  v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  v10 = powf(v9, -0.16667) * 12.0;
  if (v9 <= 0.0)
  {
    v10 = 0.0;
  }

  *&result = vmulq_n_f32(v13, v10).u64[0];
  return result;
}

double doToneMap_OS(float32x4_t a1)
{
  v1 = vmulq_f32(a1, xmmword_26034C630);
  v2 = v1.f32[2] + vaddv_f32(*v1.f32);
  v3 = powf(v2, -0.15409) * 0.12221;
  if (v2 <= 0.0)
  {
    v3 = 0.0;
  }

  v4 = vmulq_n_f32(a1, v3);
  v5 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_26034C6B0, v4.f32[0]), xmmword_26034C6C0, *v4.f32, 1), xmmword_26034C6D0, v4, 2);
  v26 = vabsq_f32(v5);
  v31 = vcltzq_f32(v5);
  v6 = v26;
  v6.i32[3] = 0;
  v7 = _simd_pow_f4(v6, xmmword_26034C620);
  v8 = vcgeq_f32(vdupq_n_s32(0x3B4D2E1Cu), v26);
  v8.i32[3] = 0;
  v9 = vbslq_s8(vcltzq_s32(v8), vmulq_f32(v26, vdupq_n_s32(0x414EB852u)), vaddq_f32(vmulq_f32(v7, vdupq_n_s32(0x3F870A3Du)), vdupq_n_s32(0xBD6147AE)));
  v10 = v31;
  v10.i32[3] = 0;
  __asm
  {
    FMOV            V2.4S, #1.0
    FMOV            V3.4S, #-1.0
  }

  v29 = _Q2;
  v32 = _Q3;
  v27 = vmulq_f32(v9, vbslq_s8(vcltzq_s32(v10), _Q3, _Q2));
  v17 = vabsq_f32(v27);
  v17.i32[3] = 0;
  v18 = _simd_pow_f4(v17, xmmword_26034C6E0);
  v19 = vcltzq_f32(v27);
  v19.i32[3] = 0;
  v20 = vmulq_f32(v18, vbslq_s8(vcltzq_s32(v19), v32, v29));
  v21 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_26034C6F0, v20.f32[0]), xmmword_26034C700, *v20.f32, 1), xmmword_26034C710, v20, 2);
  v28 = vcltzq_f32(v21);
  v22 = vabsq_f32(v21);
  v22.i32[3] = 0;
  v23 = _simd_pow_f4(v22, xmmword_26034C720);
  v24 = v28;
  v24.i32[3] = 0;
  *&result = vmulq_f32(v23, vbslq_s8(vcltzq_s32(v24), v32, v29)).u64[0];
  return result;
}

double doInverseToneMap_OS(float32x4_t a1)
{
  v1 = vabsq_f32(a1);
  v1.i32[3] = 0;
  v2 = _simd_pow_f4(v1, xmmword_26034C6E0);
  v3 = vcltzq_f32(a1);
  v3.i32[3] = 0;
  __asm { FMOV            V2.4S, #1.0 }

  v28 = _Q2;
  __asm { FMOV            V3.4S, #-1.0 }

  v30 = _Q3;
  v10 = vmulq_f32(v2, vbslq_s8(vcltzq_s32(v3), _Q3, _Q2));
  v11 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_26034C6B0, v10.f32[0]), xmmword_26034C6C0, *v10.f32, 1), xmmword_26034C6D0, v10, 2);
  v26 = vcltzq_f32(v11);
  v12 = vabsq_f32(v11);
  v12.i32[3] = 0;
  v13 = _simd_pow_f4(v12, xmmword_26034C720);
  v14 = v26;
  v14.i32[3] = 0;
  v27 = vmulq_f32(v13, vbslq_s8(vcltzq_s32(v14), v30, v28));
  v25 = vabsq_f32(v27);
  v15 = vdivq_f32(vaddq_f32(v25, vdupq_n_s32(0x3D6147AEu)), vdupq_n_s32(0x3F870A3Du));
  v15.i32[3] = 0;
  v16 = _simd_pow_f4(v15, xmmword_26034C6A0);
  v17 = vcgeq_f32(vdupq_n_s32(0x3D25E354u), v25);
  v17.i32[3] = 0;
  v18 = vbslq_s8(vcltzq_s32(v17), vdivq_f32(v25, vdupq_n_s32(0x414EB852u)), v16);
  v19 = vcltzq_f32(v27);
  v19.i32[3] = 0;
  v20 = vmulq_f32(v18, vbslq_s8(vcltzq_s32(v19), v30, v28));
  v31 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_26034C6F0, v20.f32[0]), xmmword_26034C700, *v20.f32, 1), xmmword_26034C710, v20, 2);
  v21 = vmulq_f32(v31, xmmword_26034C630);
  v22 = v21.f32[2] + vaddv_f32(*v21.f32);
  v23 = powf(v22, 0.18216) * 12.0;
  if (v22 <= 0.0)
  {
    v23 = 0.0;
  }

  *&result = vmulq_n_f32(v31, v23).u64[0];
  return result;
}

double doToneMap_OSFA(float32x4_t a1)
{
  v17 = a1;
  if ((atomic_load_explicit(&qword_280C5CD58, memory_order_acquire) & 1) == 0)
  {
    doToneMap_OSFA();
    a1 = v17;
  }

  v1 = vabsq_f32(a1);
  v2 = *algn_280C5CD90;
  v1.i32[3] = 0;
  v2.i32[3] = 0;
  v3 = vmulq_f32(xmmword_280C5CD80, _simd_pow_f4(v1, v2));
  v4 = vcltzq_f32(v17);
  v4.i32[3] = 0;
  __asm { FMOV            V2.4S, #1.0 }

  v16 = _Q2;
  __asm { FMOV            V3.4S, #-1.0 }

  v18 = _Q3;
  v15 = vmulq_f32(v3, vbslq_s8(vcltzq_s32(v4), _Q3, _Q2));
  v11 = vabsq_f32(v15);
  v11.i32[3] = 0;
  v12 = _simd_pow_f4(v11, xmmword_26034C720);
  v13 = vcltzq_f32(v15);
  v13.i32[3] = 0;
  *&result = vmulq_f32(v12, vbslq_s8(vcltzq_s32(v13), v18, v16)).u64[0];
  return result;
}

double doInverseToneMap_OSFA(float32x4_t a1)
{
  v1 = vabsq_f32(a1);
  v1.i32[3] = 0;
  v2 = _simd_pow_f4(v1, xmmword_26034C6E0);
  v3 = v2;
  if ((atomic_load_explicit(qword_280C5CD60, memory_order_acquire) & 1) == 0)
  {
    v18 = v2;
    doInverseToneMap_OSFA();
    v3 = v18;
  }

  v4 = vcltzq_f32(a1);
  v4.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v17 = _Q1;
  __asm { FMOV            V2.4S, #-1.0 }

  v20 = _Q2;
  v16 = vmulq_f32(v3, vbslq_s8(vcltzq_s32(v4), _Q2, _Q1));
  v11 = unk_280C5CDB0;
  v12 = vmulq_f32(vabsq_f32(v16), xmmword_280C5CDA0);
  v12.i32[3] = 0;
  v11.i32[3] = 0;
  v13 = _simd_pow_f4(v12, v11);
  v14 = vcltzq_f32(v16);
  v14.i32[3] = 0;
  *&result = vmulq_f32(v13, vbslq_s8(vcltzq_s32(v14), v20, v17)).u64[0];
  return result;
}

void anonymous namespace::HLG::getTransferFunction(_anonymous_namespace_::HLG *this)
{
  if ((atomic_load_explicit(&qword_280C5CD70, memory_order_acquire) & 1) == 0)
  {
  }
}

double PCColorUtil::applyHLG_InverseOETF(_anonymous_namespace_::HLG *a1, float32x4_t a2)
{
  v2 = a2;
  v2.i32[3] = 0;
  v3 = vmaxnmq_f32(v2, 0);
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  __asm { FMOV            V2.4S, #4.0 }

  v11 = vmulq_f32(vmulq_f32(v3, v3), _Q2);
  v13 = vcgeq_f32(v2, v3);
  v9 = vaddq_f32(vmulq_f32(v3, xmmword_280C5CE30), xmmword_280C5CE40);
  v9.i32[3] = 0;
  *&result = vbslq_s8(v13, v11, vaddq_f32(_simd_exp2_f4(v9), vdupq_n_s32(0x3E91C020u))).u64[0];
  return result;
}

double PCColorUtil::applyToneMap_BT2446_A(float32x4_t a1)
{
  v1 = vmulq_f32(a1, xmmword_26034C630);
  v2 = v1.f32[2] + vaddv_f32(*v1.f32);
  v3 = powf(v2, 0.2) * 0.050697;
  if (v2 <= 0.0)
  {
    v3 = 0.0;
  }

  v4 = vmulq_n_f32(a1, v3);

  return toneMap_BT2446_A_DisplayLinearToGamma(v4);
}

double PCColorUtil::applyToneMap_HLGDiffuseWhite(float32x4_t a1)
{
  v1 = vmulq_n_f32(a1, 1.0 / getWhiteGainForHLG_75());
  v12 = vcltzq_f32(v1);
  v2 = vabsq_f32(v1);
  v2.i32[3] = 0;
  v3 = _simd_pow_f4(v2, xmmword_26034C720);
  v4 = v12;
  v4.i32[3] = 0;
  __asm
  {
    FMOV            V2.4S, #1.0
    FMOV            V3.4S, #-1.0
  }

  *&result = vmulq_f32(v3, vbslq_s8(vcltzq_s32(v4), _Q3, _Q2)).u64[0];
  return result;
}

double PCColorUtil::applyInverseToneMap_HLGDiffuseWhite(float32x4_t a1)
{
  v1 = vabsq_f32(a1);
  v1.i32[3] = 0;
  v2 = _simd_pow_f4(v1, xmmword_26034C6E0);
  v3 = vcltzq_f32(a1);
  v3.i32[3] = 0;
  __asm
  {
    FMOV            V2.4S, #1.0
    FMOV            V3.4S, #-1.0
  }

  *&result = vmulq_n_f32(vmulq_f32(v2, vbslq_s8(vcltzq_s32(v3), _Q3, _Q2)), getWhiteGainForHLG_75()).u64[0];
  return result;
}

double PCColorUtil::applyToneMap_LinearGain(float32x4_t a1, float a2)
{
  v2 = 0.0;
  if (fabsf(a2) >= 0.00001)
  {
    v3 = vmulq_n_f32(a1, 1.0 / a2);
    v14 = vcltzq_f32(v3);
    v4 = vabsq_f32(v3);
    v4.i32[3] = 0;
    v5 = _simd_pow_f4(v4, xmmword_26034C720);
    v6 = v14;
    v6.i32[3] = 0;
    __asm
    {
      FMOV            V2.4S, #1.0
      FMOV            V3.4S, #-1.0
    }

    *&v2 = vmulq_f32(v5, vbslq_s8(vcltzq_s32(v6), _Q3, _Q2)).u64[0];
  }

  return v2;
}

double PCColorUtil::applyInverseToneMap_LinearGain(float32x4_t a1, float a2)
{
  v2 = vabsq_f32(a1);
  v2.i32[3] = 0;
  v3 = _simd_pow_f4(v2, xmmword_26034C6E0);
  v4 = vcltzq_f32(a1);
  v4.i32[3] = 0;
  __asm
  {
    FMOV            V2.4S, #1.0
    FMOV            V3.4S, #-1.0
  }

  *&result = vmulq_n_f32(vmulq_f32(v3, vbslq_s8(vcltzq_s32(v4), _Q3, _Q2)), a2).u64[0];
  return result;
}

float getWhiteGainForHLG_75(void)
{
  if ((atomic_load_explicit(&qword_280C5CD78, memory_order_acquire) & 1) == 0)
  {
    getWhiteGainForHLG_75();
  }

  return *&_MergedGlobals_9;
}

double PCColorUtil::getWhiteGainForHLGLevel(PCColorUtil *this, int32x2_t a2)
{
  v2 = vdupq_lane_s32(a2, 0);
  v2.i32[3] = 0;
  v3 = vmaxnmq_f32(v2, 0);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  __asm { FMOV            V2.4S, #4.0 }

  v14 = vmulq_f32(vmulq_f32(v3, v3), _Q2);
  v16 = vcgeq_f32(v4, v3);
  v10 = vaddq_f32(vmulq_f32(v3, xmmword_280C5CE30), xmmword_280C5CE40);
  v10.i32[3] = 0;
  v11 = _simd_exp2_f4(v10);
  v12.i32[0] = 1049739296;
  *&result = vbslq_s8(v16, v14, vaddq_f32(v11, v12)).u64[0];
  return result;
}

float32x4_t anonymous namespace::HLG::TransferFunction::TransferFunction(_anonymous_namespace_::HLG::TransferFunction *this)
{
  v1 = _simd_log_f4(xmmword_26034C730);
  v4 = vdupq_n_s32(0x3E371FF0u);
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  xmmword_280C5CDF0 = vsubq_f32(v2, vmulq_f32(v1, v4));
  unk_280C5CE00 = v2;
  xmmword_280C5CE10 = vdupq_n_s32(0x3DFDDD65u);
  xmmword_280C5CE20 = vaddq_f32(vmulq_f32(_simd_log_f4(xmmword_260344BA0), v4), xmmword_280C5CDF0);
  xmmword_280C5CE30 = vdupq_n_s32(0x4101139Au);
  result = vdivq_f32(xmmword_280C5CDF0, vdupq_n_s32(0xBDFDDD65));
  xmmword_280C5CE40 = result;
  return result;
}

void doToneMap_OSFA()
{
  if (__cxa_guard_acquire(&qword_280C5CD58))
  {
    xmmword_280C5CD80 = vdupq_n_s32(0x3E33D5A4u);
    *algn_280C5CD90 = vdupq_n_s32(0x3F333333u);

    __cxa_guard_release(&qword_280C5CD58);
  }
}

void doInverseToneMap_OSFA()
{
  if (__cxa_guard_acquire(qword_280C5CD60))
  {
    xmmword_280C5CDA0 = vdupq_n_s32(0x40B63642u);
    unk_280C5CDB0 = vdupq_n_s32(0x3FB6DB6Eu);

    __cxa_guard_release(qword_280C5CD60);
  }
}

void anonymous namespace::HLG::getTransferFunction()
{
  v0 = __cxa_guard_acquire(&qword_280C5CD70);
  if (v0)
  {

    __cxa_guard_release(&qword_280C5CD70);
  }
}

void getWhiteGainForHLG_75()
{
  v0 = __cxa_guard_acquire(&qword_280C5CD78);
  if (v0)
  {
    __asm { FMOV            V0.4S, #0.75 }

    v6 = PCColorUtil::applyHLG_InverseOETF(v0, _Q0);
    _MergedGlobals_9 = LODWORD(v6);

    __cxa_guard_release(&qword_280C5CD78);
  }
}

void PCCurveFit::~PCCurveFit(PCCurveFit *this)
{
  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t PCCurveFit::getInstance(PCCurveFit *this)
{
  if (PCCurveFit::getInstance(void)::once != -1)
  {
    PCCurveFit::getInstance();
  }

  return PCCurveFit::_instance;
}

double PCCurveFit::FitCurve(uint64_t a1, float64x2_t **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = vsubq_f64((*a2)[1], **a2);
  v6 = sqrt(vaddvq_f64(vmulq_f64(v5, v5)));
  if (fabs(v6) >= 0.000000100000001)
  {
    v5 = vdivq_f64(v5, vdupq_lane_s64(*&v6, 0));
  }

  v15 = v5;
  v7 = a2[1] - v4 - 1;
  v8 = vsubq_f64(v4[v7 - 1], v4[v7]);
  v9 = sqrt(vaddvq_f64(vmulq_f64(v8, v8)));
  if (fabs(v9) >= 0.000000100000001)
  {
    v8 = vdivq_f64(v8, vdupq_lane_s64(*&v9, 0));
  }

  v14 = v8;
  PCCurveFit::FitCubic(a2, 0, v7, &v15, &v14, &v12);
  v10 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v10;
    operator delete(v10);
  }

  result = *&v12;
  *a3 = v12;
  *(a3 + 16) = v13;
  return result;
}

uint64_t PCCurveFit::FitCubic@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, float64x2_t *a4@<X4>, float64x2_t *a5@<X5>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a3 - a2 != 1)
  {
    PCCurveFit::ChordLengthParameterize();
  }

  v12 = (*a1 + 16 * a3);
  v13 = *a1 + 16 * a2;
  v14 = *v12;
  v15 = v12[1];
  v17 = *v13;
  v16 = *(v13 + 8);
  v18 = std::vector<PCVector2<double>>::__emplace_back_slow_path<PCVector2<double> const&>(a6, v13);
  v19 = *a1;
  v20 = *(a6 + 16);
  *(a6 + 8) = v18;
  v21 = (v19 + 16 * a2);
  if (v18 >= v20)
  {
    v22 = std::vector<PCVector2<double>>::__emplace_back_slow_path<PCVector2<double> const&>(a6, v21);
    v19 = *a1;
    v20 = *(a6 + 16);
  }

  else
  {
    *v18 = *v21;
    v22 = v18 + 1;
  }

  *(a6 + 8) = v22;
  v23 = (v19 + 16 * a2);
  if (v22 >= v20)
  {
    v24 = std::vector<PCVector2<double>>::__emplace_back_slow_path<PCVector2<double> const&>(a6, v23);
    v19 = *a1;
    v20 = *(a6 + 16);
  }

  else
  {
    *v22 = *v23;
    v24 = v22 + 1;
  }

  *(a6 + 8) = v24;
  v25 = (v19 + 16 * a3);
  if (v24 >= v20)
  {
    result = std::vector<PCVector2<double>>::__emplace_back_slow_path<PCVector2<double> const&>(a6, v25);
  }

  else
  {
    *v24 = *v25;
    result = (v24 + 1);
  }

  v27 = sqrt((v14 - v17) * (v14 - v17) + (v15 - v16) * (v15 - v16)) / 3.0;
  *(a6 + 8) = result;
  v28 = *a4;
  v29 = sqrt(vaddvq_f64(vmulq_f64(v28, v28)));
  if (v29 != 0.0)
  {
    v28 = vmulq_n_f64(v28, v27 / v29);
    *a4 = v28;
  }

  v30 = *a5;
  v31 = sqrt(vaddvq_f64(vmulq_f64(v30, v30)));
  if (v31 != 0.0)
  {
    *a5 = vmulq_n_f64(v30, v27 / v31);
    v28 = *a4;
  }

  v32 = *a6;
  v32[1] = vaddq_f64(**a6, v28);
  v32[2] = vaddq_f64(v32[3], *a5);
  return result;
}

void sub_25FB9E83C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void PCCurveFit::GenerateBezier(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new[]();
}

void sub_25FB9EEC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double PCCurveFit::ComputeMaxError(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t *a7)
{
  *a7 = (a5 - a4 + 1) >> 1;
  v7 = a4 + 1;
  v8 = 0.0;
  if (a4 + 1 < a5)
  {
    v13 = (a6 + 8);
    do
    {
      PCCurveFit::Bezier(3, a3, &v17, *v13);
      v14 = vsubq_f64(v17, *(*a2 + 16 * v7));
      v15 = vaddvq_f64(vmulq_f64(v14, v14));
      if (v15 >= v8)
      {
        *a7 = v7;
        v8 = v15;
      }

      ++v7;
      ++v13;
    }

    while (a5 != v7);
  }

  return v8;
}

void PCCurveFit::ComputeCenterTangent(void *a1@<X1>, uint64_t a2@<X2>, float64x2_t *a3@<X8>)
{
  __asm { FMOV            V1.2D, #0.5 }

  v8 = vmulq_f64(vaddq_f64(vsubq_f64(*(*a1 + 16 * a2 - 16), *(*a1 + 16 * a2)), vsubq_f64(*(*a1 + 16 * a2), *(*a1 + 16 * a2 + 16))), _Q1);
  v9 = sqrt(vaddvq_f64(vmulq_f64(v8, v8)));
  if (fabs(v9) >= 0.000000100000001)
  {
    v8 = vdivq_f64(v8, vdupq_lane_s64(*&v9, 0));
  }

  *a3 = v8;
}

double PCCurveFit::NewtonRaphsonRootFind(double a1, uint64_t a2, uint64_t *a3, float64x2_t *a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v32 = 0;
  v33 = 0;
  PCCurveFit::Bezier(3, a3, &v30, a1);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  __asm { FMOV            V0.2D, #3.0 }

  v27 = v30;
  v28 = _Q0;
  do
  {
    v30 = 0uLL;
    if (v9 >= v36)
    {
      v9 = std::vector<PCVector2<double>>::__emplace_back_slow_path<PCVector2<double> const&>(&v34, &v30);
      v8 = v34;
    }

    else
    {
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    v35 = v9;
    v8[v7] = vmulq_f64(vsubq_f64(*(*a3 + v7 * 16 + 16), *(*a3 + v7 * 16)), v28);
    ++v7;
  }

  while (v7 != 3);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  do
  {
    v19 = v18;
    v30 = 0uLL;
    if (v16 >= v33)
    {
      v16 = std::vector<PCVector2<double>>::__emplace_back_slow_path<PCVector2<double> const&>(&__p, &v30);
      v15 = __p;
      v8 = v34;
    }

    else
    {
      *v16 = 0;
      v16[1] = 0;
      v16 += 2;
    }

    v18 = 0;
    v32 = v16;
    v20 = vsubq_f64(v8[v17 + 1], v8[v17]);
    v15[v17] = vaddq_f64(v20, v20);
    v17 = 1;
  }

  while ((v19 & 1) != 0);
  PCCurveFit::Bezier(2, &v34, &v30, a1);
  v21 = v30;
  PCCurveFit::Bezier(1, &__p, &v30, a1);
  v29 = v30;
  v26 = *a4;
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  v22 = vsubq_f64(v27, v26);
  v23 = v21.f64[0] * v22.f64[0] + vmuld_lane_f64(v21.f64[1], v22, 1);
  v24 = vmulq_f64(v29, v22);
  return a1 - v23 / (v21.f64[0] * v21.f64[0] + v21.f64[1] * v21.f64[1] + v24.f64[0] + v24.f64[1]);
}

void sub_25FB9F294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void PCCurveFit::Bezier(int a1@<W1>, uint64_t *a2@<X2>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<PCVector2<double>>::__init_with_size[abi:ne200100]<PCVector2<double>*,PCVector2<double>*>(&__p, *a2, a2[1], (a2[1] - *a2) >> 4);
  v6 = __p;
  if (a1 >= 1)
  {
    v7 = 1;
    v8 = a1;
    do
    {
      if (v7 <= a1)
      {
        v9 = *v6;
        v10 = v8;
        v11 = v6 + 1;
        do
        {
          v12 = vmulq_n_f64(v9, 1.0 - a4);
          v9 = *v11;
          v11[-1] = vaddq_f64(v12, vmulq_n_f64(*v11, a4));
          ++v11;
          --v10;
        }

        while (v10);
      }

      --v8;
    }

    while (v7++ != a1);
  }

  *a3 = *v6;
  v16 = v6;
  operator delete(v6);
}

uint64_t std::vector<PCVector2<double>>::__emplace_back_slow_path<PCVector2<double> const&>(uint64_t a1, _OWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector2<double>>>(a1, v7);
  }

  __p = 0;
  v11 = (16 * v2);
  *v11 = *a2;
  v12 = 16 * v2 + 16;
  v13 = 0;
  std::vector<PCVector2<double>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25FB9F480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<PCVector2<double>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PCVector2<double>*>,std::__wrap_iter<PCVector2<double>*>>(uint64_t a1, char *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (a5 <= (v8 - v7) >> 4)
    {
      v15 = (v7 - a2) >> 4;
      if (v15 >= a5)
      {
        v19 = &a2[16 * a5];
        v20 = (v7 - 16 * a5);
        v21 = *(a1 + 8);
        while (v20 < v7)
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        *(a1 + 8) = v21;
        if (v7 != v19)
        {
          v23 = (v7 - 16);
          v24 = &v19[-v7];
          v25 = &v23[-a5];
          do
          {
            v26 = *v25--;
            *v23-- = v26;
            v24 += 16;
          }

          while (v24);
        }

        v27 = 0;
        do
        {
          v28 = *v6++;
          *&a2[v27] = v28;
          v27 += 16;
        }

        while (v6 != &a3[a5]);
      }

      else
      {
        v16 = (a3 + v7 - a2);
        v17 = *(a1 + 8);
        if (v16 == a4)
        {
          v18 = *(a1 + 8);
        }

        else
        {
          v32 = (a3 + v7 - a2);
          v18 = *(a1 + 8);
          do
          {
            v33 = *v32++;
            *v18 = v33;
            v18 += 16;
            ++v17;
          }

          while (v32 != a4);
        }

        *(a1 + 8) = v17;
        if (v15 >= 1)
        {
          v34 = &a2[16 * a5];
          v35 = &v17[-a5];
          v36 = v17;
          while (v35 < v7)
          {
            v37 = *v35++;
            *v36++ = v37;
          }

          *(a1 + 8) = v36;
          if (v18 != v34)
          {
            v38 = v17 - 1;
            v39 = v34 - v17;
            v40 = &v38[-a5];
            do
            {
              v41 = *v40--;
              *v38-- = v41;
              v39 += 16;
            }

            while (v39);
          }

          if (v7 != a2)
          {
            v42 = 0;
            do
            {
              v43 = *v6++;
              *&a2[v42] = v43;
              v42 += 16;
            }

            while (v6 != v16);
          }
        }
      }
    }

    else
    {
      v9 = *a1;
      v10 = a5 + ((v7 - *a1) >> 4);
      if (v10 >> 60)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v11 = a2 - v9;
      v12 = v8 - v9;
      if (v12 >> 3 > v10)
      {
        v10 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v10;
      }

      v14 = v11 >> 4;
      v49 = a1;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector2<double>>>(a1, v13);
      }

      v29 = (16 * v14);
      __p = 0;
      v46 = 16 * v14;
      v48 = 0;
      v30 = 16 * a5;
      do
      {
        v31 = *v6++;
        *v29++ = v31;
        v30 -= 16;
      }

      while (v30);
      v47 = 16 * v14 + 16 * a5;
      v5 = std::vector<PCVector2<double>>::__swap_out_circular_buffer(a1, &__p, v5);
      if (v47 != v46)
      {
        v47 += (v46 - v47 + 15) & 0xFFFFFFFFFFFFFFF0;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_25FB9F700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<PCVector2<double>>::__swap_out_circular_buffer(char **a1, void *a2, char *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 != a3)
  {
    v7 = a3;
    v8 = a2[2];
    do
    {
      v9 = *v7;
      v7 += 16;
      *v8++ = v9;
    }

    while (v7 != v4);
  }

  a2[2] = v6 + v4 - a3;
  v10 = *a1;
  v11 = (result + *a1 - a3);
  if (*a1 != a3)
  {
    v12 = *a1;
    v13 = (result + *a1 - a3);
    do
    {
      v14 = *v12;
      v12 += 16;
      *v13++ = v14;
    }

    while (v12 != a3);
  }

  a2[1] = v11;
  v15 = *a1;
  *a1 = v11;
  a1[1] = v10;
  a2[1] = v15;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<PCVector2<double>>::__init_with_size[abi:ne200100]<PCVector2<double>*,PCVector2<double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PCVector2<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FB9F828(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double PCEvaluatorWaveData::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v4 = (a1 + 56);
  v3 = *(a1 + 56);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8000313F17);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8000313F17);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    MEMORY[0x2666E9ED0](v6, 0x1000C8000313F17);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8000313F17);
  }

  result = 0.0;
  *v4 = 0u;
  v4[1] = 0u;
  return result;
}

void PCEvaluatorWaveData::~PCEvaluatorWaveData(PCEvaluatorWaveData *this)
{
  PCSpinLock::lock(this + 22);
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 9);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8000313F17);
  }

  v5 = *(this + 10);
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8000313F17);
  }

  *(this + 56) = 0u;
  *(this + 72) = 0u;
  PCSpinLock::unlock(this + 22);
  PCSpinLock::~PCSpinLock(this + 22);
}

void PCEvaluatorWaveData::refreshWaveArrays(PCEvaluatorWaveData *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 9);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8000313F17);
  }

  v5 = *(this + 10);
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8000313F17);
  }

  operator new[]();
}

void PCEvaluator::PCEvaluator(PCEvaluator *this)
{
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
}

double PCEvaluator::findLengthOfEllipse(PCEvaluator *this, double a2, double a3, double a4, double a5)
{
  v7 = fabs(a2);
  v8 = fabs(a3);
  if (v7 >= 0.0000001)
  {
    if (v8 >= 0.0000001)
    {
      return PCCalculus::ellipseLineIntegral(this, 1.57079633, a2, a3) * 4.0;
    }

    else
    {
      return a2 * 4.0;
    }
  }

  else
  {
    v9 = v8 < 0.0000001;
    result = 0.0;
    if (!v9)
    {
      return a3 * 4.0;
    }
  }

  return result;
}

void PCEvaluator::findPointOnEllipse(PCEvaluator *this, double a2, double a3, double a4, double a5, double a6, double *a7, double *a8, double *a9)
{
  v12 = a4;
  v13 = a3;
  if (vabdd_f64(a3, a4) < 0.0000001)
  {
    v15 = a2 * 3.14159265 + a2 * 3.14159265;
    goto LABEL_46;
  }

  if (a3 < 0.00001)
  {
    a3 = 0.00001;
  }

  if (a4 >= 0.00001)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0.00001;
  }

  v17 = 1.57079633;
  v37 = a3;
  v19 = PCCalculus::ellipseLineIntegral(this, 1.57079633, a3, v16) * 4.0;
  v20 = a2 - floor(a2);
  if (a2 < 1.0)
  {
    v20 = a2;
  }

  if (v20 >= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1.0;
  }

  v35 = v13;
  v36 = v12;
  v34 = v21;
  if (v21 >= 0.25)
  {
    if (v21 >= 0.5)
    {
      v23 = 1.0 - v21;
      if (v13 > v12)
      {
        v23 = 0.25 - (1.0 - v21);
      }

      v24 = 0.25 - (v21 + -0.5);
      if (v13 <= v12)
      {
        v24 = v21 + -0.5;
      }

      if (v21 < 0.75)
      {
        v22 = v24;
      }

      else
      {
        v22 = v23;
      }
    }

    else
    {
      v22 = 0.5 - v21;
      if (v13 > v12)
      {
        v22 = 0.25 - v22;
      }
    }
  }

  else
  {
    v22 = 0.25 - v21;
    if (v13 <= v12)
    {
      v22 = v21;
    }
  }

  v25 = v19 * v22;
  v26 = 0.0;
  v27 = PCCalculus::ellipseLineIntegral(v18, 0.0, v37, v16);
  v30 = PCCalculus::ellipseLineIntegral(v28, 1.57079633, v37, v16);
  while (1)
  {
    v31 = v26 + (v25 - v27) * (v17 - v26) / (v30 - v27);
    v32 = PCCalculus::ellipseLineIntegral(v29, v31, v37, v16);
    if (vabdd_f64(v32, v25) < 0.05)
    {
      break;
    }

    if (v25 <= v32)
    {
      v30 = v32;
    }

    else
    {
      v27 = v32;
    }

    if (v25 > v32)
    {
      v26 = v31;
    }

    else
    {
      v17 = v31;
    }
  }

  v13 = v35;
  v12 = v36;
  if (v35 <= v36)
  {
    v15 = v31;
  }

  else
  {
    v15 = 1.57079633 - v31;
  }

  if (v34 >= 0.25)
  {
    if (v34 >= 0.5)
    {
      if (v34 < 0.75)
      {
        v15 = v15 + 3.14159265;
        goto LABEL_46;
      }

      v33 = 6.28318531;
    }

    else
    {
      v33 = 3.14159265;
    }

    v15 = v33 - v15;
  }

LABEL_46:
  if (a7)
  {
    *a7 = -(v13 * cos(v15));
  }

  if (a8)
  {
    *a8 = sin(v15) * v12;
  }

  if (a9)
  {
    *a9 = v15;
  }
}

void PCEvaluator::findPointOnSineWave(os_unfair_lock_s *this, double a2, double a3, double a4, double a5, double a6, double a7, double a8, int a9, double *a10, double *a11)
{
  v34 = 0;
  *v30 = a7;
  *&v30[1] = a8;
  *&v30[2] = a3;
  *&v30[3] = a4;
  *&v30[4] = a5;
  *&v30[5] = a6;
  v31 = a9;
  v32 = 0u;
  v33 = 0u;
  PCSpinLock::lock(this + 22);
  if (!PCEvaluatorWaveData::operator==(this, v30))
  {
    PCEvaluatorWaveData::operator=(this, v30);
    PCEvaluatorWaveData::refreshWaveArrays(this);
  }

  v29 = 0;
  v17 = *&this[20]._os_unfair_lock_opaque;
  os_unfair_lock_opaque = this[12]._os_unfair_lock_opaque;
  v19 = v17[os_unfair_lock_opaque - 1] * a2;
  PCAlgorithm::bisect(v17, os_unfair_lock_opaque, &v29, v19, v16);
  v20 = (*&this[20]._os_unfair_lock_opaque + 8 * v29);
  v21 = v20[1] - *v20;
  v22 = fabs(a6);
  if (ceil(v21 + v21) > 1.0)
  {
    operator new[]();
  }

  if (v29 >= (this[12]._os_unfair_lock_opaque - 1))
  {
    v24 = *(*&this[18]._os_unfair_lock_opaque + 8 * v29);
  }

  else
  {
    v23 = (*&this[18]._os_unfair_lock_opaque + 8 * v29);
    if (fabs(v21) >= 0.0000001)
    {
      v24 = *v23;
      v28 = v23[1];
      if (vabdd_f64(v28, *v23) >= 0.0000001)
      {
        v24 = v24 + (v19 - *v20) / (v21 / (v28 - v24));
      }
    }

    else
    {
      v24 = *v23;
    }
  }

  v25 = 1.0 - v24;
  if (a6 >= 0.0)
  {
    v25 = v24;
  }

  v26 = exp(-(v22 * v25));
  if (a10)
  {
    *a10 = v24;
  }

  if (a11)
  {
    v27 = v26 * *&this[4]._os_unfair_lock_opaque;
    *a11 = v27 * sin(v24 * 6.28318531 * *&this[6]._os_unfair_lock_opaque + *&this[8]._os_unfair_lock_opaque);
  }

  PCSpinLock::unlock(this + 22);
  PCEvaluatorWaveData::~PCEvaluatorWaveData(v30);
}

void sub_25FBA0444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  PCEvaluatorWaveData::~PCEvaluatorWaveData(va);
  _Unwind_Resume(a1);
}

double PCEvaluator::findLengthOfSineWave(os_unfair_lock_s *this, double a2, double a3, double a4, double a5, double a6, double a7, int a8)
{
  v15 = 0;
  *v11 = a6;
  *&v11[1] = a7;
  *&v11[2] = a2;
  *&v11[3] = a3;
  *&v11[4] = a4;
  *&v11[5] = a5;
  v12 = a8;
  v13 = 0u;
  v14 = 0u;
  PCSpinLock::lock(this + 22);
  if (!PCEvaluatorWaveData::operator==(this, v11))
  {
    PCEvaluatorWaveData::operator=(this, v11);
    PCEvaluatorWaveData::refreshWaveArrays(this);
  }

  v9 = *(*&this[20]._os_unfair_lock_opaque + 8 * this[12]._os_unfair_lock_opaque - 8);
  PCSpinLock::unlock(this + 22);
  PCEvaluatorWaveData::~PCEvaluatorWaveData(v11);
  return v9;
}

uint64_t PCMath::quadratic(PCMath *this, double a2, int8x16_t a3, double a4, double *a5, double *a6, int8x16_t a7)
{
  if (fabs(a2) < 0.0000001)
  {
    if (fabs(*a3.i64) >= 0.0000001)
    {
      v7 = -a4 / *a3.i64;
LABEL_13:
      *this = v7;
      return 1;
    }

    return 0;
  }

  v8 = *a3.i64 * *a3.i64 + a2 * -4.0 * a4;
  if (v8 < 0.0)
  {
    if (v8 > -*a7.i64 && v8 < *a7.i64)
    {
      v7 = *a3.i64 * -0.5 / a2;
      goto LABEL_13;
    }

    return 0;
  }

  *a7.i64 = sqrt(v8);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = (*vbslq_s8(vnegq_f64(v11), a7, a3).i64 + *a3.i64) * -0.5;
  if (fabs(v12) < 0.0000001)
  {
    *this = 0;
    return 1;
  }

  *this = v12 / a2;
  v13 = a4 / v12;
  *a5 = a4 / v12;
  v14 = *this;
  if (vabdd_f64(*this, v13) < 0.0000001)
  {
    return 1;
  }

  if (v14 > v13)
  {
    *this = v13;
    *a5 = v14;
  }

  return 2;
}

uint64_t PCMath::cubic(PCMath *this, double a2, double a3, int8x16_t a4, double *a5, double *a6, double *a7)
{
  v9 = (a2 * a2 + a3 * -3.0) / 9.0;
  *a4.i64 = (*a4.i64 * 27.0 + (a2 + a2) * a2 * a2 - a2 * 9.0 * a3) / 54.0;
  v10 = v9 * (v9 * v9);
  if (*a4.i64 * *a4.i64 >= v10)
  {
    v25 = a4;
    *v18.i64 = pow(fabs(*a4.i64) + sqrt(*a4.i64 * *a4.i64 - v10), 0.333333333);
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    *&v20 = vbslq_s8(vnegq_f64(v19), v18, v25).u64[0];
    v21 = fabs(*v18.i64) < 0.0000001;
    v22 = 0.0;
    if (!v21)
    {
      v22 = v9 / -v20;
    }

    *this = v22 - v20 + a2 / -3.0;
    return 1;
  }

  else
  {
    v13 = acos(*a4.i64 / sqrt(v10));
    v14 = sqrt(v9) * -2.0;
    v15 = a2 / 3.0;
    *this = v14 * cos(v13 / 3.0) - v15;
    *a5 = v14 * cos((v13 + 6.28318531) / 3.0) - v15;
    v16 = v14 * cos((v13 + -6.28318531) / 3.0) - v15;
    *a6 = v16;
    v17 = *this;
    if (*this <= *a5)
    {
      v17 = *a5;
    }

    else
    {
      *this = *a5;
      *a5 = v17;
      v16 = *a6;
    }

    if (v17 > v16)
    {
      *a5 = v16;
      *a6 = v17;
      v24 = *this;
      if (*this > *a5)
      {
        *this = *a5;
        *a5 = v24;
      }
    }

    return 3;
  }
}

double *PCMath::easeInOut(double *this, double a2, double a3, double a4, double a5, double a6, double *a7, double *a8)
{
  v8 = 0.0;
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a4 < 0.0)
  {
    a4 = 1.0;
  }

  v9 = a3 + a4;
  if (fabs(a3 + a4) < 0.0000001)
  {
    if (this)
    {
      *this = a2;
    }

    v8 = 1.0;
    goto LABEL_29;
  }

  v10 = a2 - a5;
  v11 = a6 - a5;
  if (v9 > 1.0)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = a3 + a4;
  }

  if (v9 > 1.0)
  {
    v13 = a4 / v9;
  }

  else
  {
    v13 = a4;
  }

  if (v9 > 1.0)
  {
    v14 = a3 / v9;
  }

  else
  {
    v14 = a3;
  }

  v15 = v10 / v11;
  if (v10 / v11 < 0.0)
  {
    v16 = 0.0;
    goto LABEL_27;
  }

  v17 = v12 + -2.0;
  if (v15 >= v14)
  {
    v16 = 1.0;
    if (v15 <= 1.0 - v13)
    {
      v16 = (v14 - (v15 + v15)) / v17;
      v18 = -2.0;
    }

    else
    {
      if (v15 >= 1.0)
      {
        goto LABEL_27;
      }

      v17 = v17 * v13;
      v16 = (1.0 - v15) * (1.0 - v15) / v17 + 1.0;
      v18 = v15 + -1.0 + v15 + -1.0;
    }
  }

  else
  {
    v17 = v17 * v14;
    v16 = -(v15 * v15) / v17;
    v18 = v15 * -2.0;
  }

  v8 = v18 / v17;
LABEL_27:
  if (this)
  {
    *this = v11 * v16 + a5;
  }

LABEL_29:
  if (a7)
  {
    *a7 = v8;
  }

  return this;
}

FILE *_pcCheckGetTransformation(FILE *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((result & 1) == 0)
  {
    return PCPrint("getTransformation failed (file %s, line %d)", a2, a3, a4, a5, a6, a7, a8, a2);
  }

  return result;
}

void PCMatrix44Tmpl<double>::leftRotate(float64x2_t *a1, int a2, double a3)
{
  if (a3 != 0.0)
  {
    v5 = 1.0;
    cosval = 0.0;
    if (vabdd_f64(-1.57079633, a3) >= 0.0000001 && vabdd_f64(4.71238898, a3) >= 0.0000001)
    {
      v5 = -1.0;
      if (vabdd_f64(1.57079633, a3) >= 0.0000001 && vabdd_f64(-4.71238898, a3) >= 0.0000001)
      {
        v5 = 0.0;
        cosval = -1.0;
        if (vabdd_f64(-3.14159265, a3) >= 0.0000001 && vabdd_f64(3.14159265, a3) >= 0.0000001)
        {
          v7 = __sincos_stret(a3);
          cosval = v7.__cosval;
          v5 = -v7.__sinval;
        }
      }
    }

    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          v8 = *a1;
          v9 = a1[1];
          v10 = a1[2];
          v11 = a1[3];
          *a1 = vaddq_f64(vmulq_n_f64(*a1, cosval), vmulq_n_f64(v10, v5));
          a1[1] = vaddq_f64(vmulq_n_f64(v9, cosval), vmulq_n_f64(v11, v5));
          a1[2] = vsubq_f64(vmulq_n_f64(v10, cosval), vmulq_n_f64(v8, v5));
          a1[3] = vsubq_f64(vmulq_n_f64(v11, cosval), vmulq_n_f64(v9, v5));
        }

        return;
      }

      v12 = *a1;
      v13 = a1[1];
      v14 = a1[4];
      v15 = a1[5];
      *a1 = vsubq_f64(vmulq_n_f64(*a1, cosval), vmulq_n_f64(v14, v5));
      a1[1] = vsubq_f64(vmulq_n_f64(v13, cosval), vmulq_n_f64(v15, v5));
      v16 = vaddq_f64(vmulq_n_f64(v12, v5), vmulq_n_f64(v14, cosval));
      v17 = vaddq_f64(vmulq_n_f64(v13, v5), vmulq_n_f64(v15, cosval));
    }

    else
    {
      v18 = a1[2];
      v19 = a1[3];
      v20 = a1[4];
      v21 = a1[5];
      a1[2] = vaddq_f64(vmulq_n_f64(v18, cosval), vmulq_n_f64(v20, v5));
      a1[3] = vaddq_f64(vmulq_n_f64(v19, cosval), vmulq_n_f64(v21, v5));
      v16 = vsubq_f64(vmulq_n_f64(v20, cosval), vmulq_n_f64(v18, v5));
      v17 = vsubq_f64(vmulq_n_f64(v21, cosval), vmulq_n_f64(v19, v5));
    }

    a1[4] = v16;
    a1[5] = v17;
  }
}

double PCMatrix44Tmpl<double>::transpose(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  *(a1 + 8) = *(a1 + 32);
  *(a1 + 16) = v4;
  v6 = *(a1 + 88);
  *(a1 + 24) = *(a1 + 96);
  *(a1 + 32) = v1;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *(a1 + 64) = v2;
  *(a1 + 72) = v7;
  result = *(a1 + 104);
  v10 = *(a1 + 112);
  *(a1 + 48) = v5;
  *(a1 + 56) = result;
  *(a1 + 88) = v10;
  *(a1 + 96) = v3;
  *(a1 + 104) = v8;
  *(a1 + 112) = v6;
  return result;
}

float64x2_t PCVector4<double>::scale(float64x2_t *a1, float64x2_t result)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = vmulq_f64(v2, v2);
  v5 = vmulq_f64(v3, v3);
  v6 = sqrt(vaddq_f64(vaddq_f64(vaddq_f64(v4, vdupq_laneq_s64(v4, 1)), v5), vdupq_laneq_s64(v5, 1)).f64[0]);
  if (v6 != 0.0)
  {
    v7 = result.f64[0] / v6;
    v8 = vmulq_n_f64(v2, v7);
    result = vmulq_n_f64(v3, v7);
    *a1 = v8;
    a1[1] = result;
  }

  return result;
}

BOOL PCMath::equal(double *a1, double *a2, double a3)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v7 = a2[3];
  v6 = a2[4];
  v8 = a2[5];
  v9 = sqrt((v3 * v3 + v4 * v4 + v5 * v5) / (v7 * v7 + v6 * v6 + v8 * v8));
  if (v3 * v7 + v4 * v6 + v5 * v8 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  if (vabdd_f64(v3, v7 * v10) >= 0.0000001 || vabdd_f64(v4, v6 * v10) >= 0.0000001 || vabdd_f64(v5, v8 * v10) >= 0.0000001)
  {
    return 0;
  }

  v12 = a1[1];
  v13 = a2[1];
  return vabdd_f64(*a1, *a2) < 0.0000001 && vabdd_f64(v12, v13) < 0.0000001 && vabdd_f64(a1[2], a2[2]) < 0.0000001 || vabdd_f64(v3 * *a1 + v4 * v12 + v5 * a1[2], v3 * *a2 + v4 * v13 + v5 * a2[2]) < a3;
}

uint64_t PCComparePlanes(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = sqrt(v2 * v2 + v3 * v3 + v4 * v4);
  if (fabs(v5) < 0.0000001)
  {
    return a1[3] < 0.0;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = sqrt(v7 * v7 + v8 * v8 + v9 * v9);
  if (fabs(v10) >= 0.0000001)
  {
    v11 = v2 * v10;
    v12 = v3 * v10;
    v13 = v4 * v10;
    v14 = v10 * a1[3];
    v15 = v7 * v5;
    v16 = v8 * v5;
    v17 = v9 * v5;
    v18 = v5 * a2[3];
    if (vabdd_f64(v11, v15) >= 0.0000001 || vabdd_f64(v12, v16) >= 0.0000001 || vabdd_f64(v13, v17) >= 0.0000001)
    {
      if (fabs(v15 + v11) >= 0.0000001 || fabs(v16 + v12) >= 0.0000001 || fabs(v17 + v13) >= 0.0000001)
      {
        return 8;
      }

      v19 = v14 <= -v18;
      v20 = 7;
      v21 = 6;
    }

    else
    {
      v19 = v14 <= v18;
      v20 = 4;
      v21 = 5;
    }

    if (v19)
    {
      return v20;
    }

    else
    {
      return v21;
    }
  }

  else if (a2[3] < 0.0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t PCPlaneType(double *a1)
{
  if (fabs(*a1) >= 0.0000001 || fabs(a1[1]) >= 0.0000001 || fabs(a1[2]) >= 0.0000001)
  {
    return 8;
  }

  else
  {
    return a1[3] <= 0.0;
  }
}

void PCDivideByZeroException::~PCDivideByZeroException(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

double PCComputeSquareToQuadProjectionMatrix(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *a1;
  v9 = vaddq_f64(*a3, vsubq_f64(*a1, *a2));
  v10 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v9, *a4)));
  if (v10.i32[0] & v10.i32[1])
  {
    v11 = vsubq_f64(vzip1q_s64(v5, v6), vzip1q_s64(v8, v5));
    v12 = vzip2q_s64(v5, v6);
    v13 = vsubq_f64(v12, vextq_s8(v8, v12, 8uLL));
    v14 = 0uLL;
  }

  else
  {
    v15 = vsubq_f64(v9, v7);
    v16.f64[0] = a2->f64[0];
    v16.f64[1] = a4->f64[1];
    v17 = vsubq_f64(v16, v6);
    v18 = vextq_s8(v17, v17, 8uLL);
    v19.f64[0] = a4->f64[0];
    v19.f64[1] = a2->f64[1];
    v20 = vsubq_f64(v19, v6);
    v21 = vmulq_f64(v18, v15);
    v18.f64[1] = v20.f64[1];
    v22 = vmulq_f64(vzip1q_s64(v17, v20), v18);
    v16.f64[0] = a2->f64[1];
    v14 = vdivq_f64(vsubq_f64(v21, vmulq_f64(v20, vextq_s8(v15, v15, 8uLL))), vdupq_lane_s64(*&vsubq_f64(v22, vdupq_laneq_s64(v22, 1)), 0));
    v23 = vzip1q_s64(v5, v7);
    v11 = vaddq_f64(vsubq_f64(v23, vdupq_lane_s64(v8.i64[0], 0)), vmulq_f64(v23, v14));
    v13 = vaddq_f64(vsubq_f64(v16, vdupq_laneq_s64(v8, 1)), vmulq_f64(v16, v14));
  }

  *a5 = v11;
  *(a5 + 16) = 0;
  *(a5 + 24) = v8.i64[0];
  *(a5 + 32) = v13;
  *(a5 + 48) = 0;
  *(a5 + 56) = v8.i64[1];
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = xmmword_2603426F0;
  *(a5 + 96) = v14;
  result = 0.0;
  *(a5 + 112) = xmmword_260342700;
  return result;
}

float64x2_t *PCComputeQuadToSquareProjectionMatrix(float64x2_t *result, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *result;
  v9 = vaddq_f64(*a3, vsubq_f64(*result, *a2));
  v10 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v9, *a4)));
  if (v10.i32[0] & v10.i32[1])
  {
    v11.f64[0] = a2->f64[0];
    v11.f64[1] = a3->f64[1];
    v6.f64[1] = a2->f64[1];
    v12.f64[0] = result->f64[0];
    v12.f64[1] = v6.f64[1];
    v5.f64[1] = result->f64[1];
    v13 = vsubq_f64(v6, v5);
    v14 = vsubq_f64(v11, v12);
    v15 = 0uLL;
  }

  else
  {
    v16 = vsubq_f64(v9, v7);
    v17.f64[0] = a2->f64[0];
    v17.f64[1] = a4->f64[1];
    v18 = vsubq_f64(v17, v6);
    v19 = vextq_s8(v18, v18, 8uLL);
    v7.f64[1] = a2->f64[1];
    v20 = vsubq_f64(v7, v6);
    v21 = vmulq_f64(v16, v19);
    v19.f64[1] = v20.f64[1];
    v22 = vmulq_f64(vzip1q_s64(v18, v20), v19);
    v15 = vdivq_f64(vsubq_f64(v21, vmulq_f64(v20, vextq_s8(v16, v16, 8uLL))), vdupq_lane_s64(*&vsubq_f64(v22, vdupq_laneq_s64(v22, 1)), 0));
    v13 = vaddq_f64(vsubq_f64(v7, v8), vmulq_f64(v7, vextq_s8(v15, v15, 8uLL)));
    v14 = vaddq_f64(vsubq_f64(v17, v8), vmulq_f64(v17, v15));
  }

  v23 = 0;
  v24 = vmuld_lane_f64(v8.f64[0], v15, 1) - v13.f64[0];
  v25 = vmuld_lane_f64(v13.f64[0], v8, 1);
  v26 = vmuld_lane_f64(v8.f64[0], v14, 1);
  v27 = vmuld_lane_f64(v15.f64[0], v8, 1) - v13.f64[1];
  v28 = *&vsubq_f64(v14, vmulq_f64(v8, v15));
  v29 = vmuld_lane_f64(v8.f64[0], v13, 1);
  v8.f64[0] = vmuld_lane_f64(v14.f64[0], v8, 1);
  v30 = vmulq_f64(v15, v13);
  v31 = vmulq_f64(vextq_s8(v15, v15, 8uLL), v14);
  v14.f64[0] = vmuld_lane_f64(v14.f64[0], v14, 1);
  v32 = vmuld_lane_f64(v13.f64[0], v13, 1);
  *a5 = v14.f64[1] - vmuld_lane_f64(v8.f64[1], v15, 1);
  *(a5 + 8) = v24;
  *(a5 + 16) = 0;
  *(a5 + 24) = v25 - v26;
  *(a5 + 32) = v27;
  *(a5 + 40) = v28;
  *(a5 + 48) = 0;
  *(a5 + 56) = v29 - v8.f64[0];
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = v14.f64[0] - v32;
  *(a5 + 88) = 0;
  v33 = vsubq_f64(v30, v31);
  *(a5 + 96) = vextq_s8(v33, v33, 8uLL);
  *(a5 + 112) = 0;
  *(a5 + 120) = v14.f64[0] - v32;
  v8.f64[0] = 1.0 / (vmuld_lane_f64(v29, v15, 1) + v14.f64[0] + v25 * v15.f64[0] - v26 * v15.f64[0] - v32 - vmuld_lane_f64(v8.f64[0], v15, 1));
  do
  {
    for (i = 0; i != 32; i += 16)
    {
      *(a5 + i) = vmulq_n_f64(*(a5 + i), v8.f64[0]);
    }

    ++v23;
    a5 += 32;
  }

  while (v23 != 4);
  return result;
}

uint64_t PCComputeQuadToQuadProjectionMatrix(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, float64x2_t *a5, float64x2_t *a6, float64x2_t *a7, float64x2_t *a8, uint64_t a9)
{
  v52 = 0x3FF0000000000000;
  v49 = 0x3FF0000000000000;
  v46 = 0x3FF0000000000000;
  v43 = 0x3FF0000000000000;
  v44 = 0u;
  v45 = 0u;
  v47 = 0u;
  v48 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = 0x3FF0000000000000;
  v39 = 0x3FF0000000000000;
  v36 = 0x3FF0000000000000;
  v33 = 0x3FF0000000000000;
  v34 = 0u;
  v35 = 0u;
  v37 = 0u;
  v38 = 0u;
  v40 = 0u;
  v41 = 0u;
  PCComputeQuadToSquareProjectionMatrix(a1, a2, a3, a4, &v33);
  PCComputeSquareToQuadProjectionMatrix(a5, a6, a7, a8, &v43);
  PCMatrix44Tmpl<double>::operator*(&v43, &v33, &v31);
  if (&v31 != a9)
  {
    for (i = 0; i != 128; i += 32)
    {
      v18 = (a9 + i);
      v19 = *(&v31 + i + 16);
      *v18 = *(&v31 + i);
      v18[1] = v19;
    }
  }

  v20 = vmulq_f64(*(a9 + 96), *(a9 + 96));
  v21 = vmulq_f64(*(a9 + 112), *(a9 + 112));
  v22 = sqrt(vaddq_f64(vaddq_f64(vaddq_f64(v20, vdupq_laneq_s64(v20, 1)), v21), vdupq_laneq_s64(v21, 1)).f64[0]);
  if (fabs(v22) >= 0.0000001)
  {
    v23 = 0;
    v24 = a9;
    v25 = 1.0 / v22;
    do
    {
      for (j = 0; j != 32; j += 16)
      {
        *(v24 + j) = vmulq_n_f64(*(v24 + j), v25);
      }

      ++v23;
      v24 += 32;
    }

    while (v23 != 4);
  }

  v31 = 0u;
  v32 = 0u;
  PCMatrix44Tmpl<double>::transform<double>(a9, a1->f64, &v31);
  result = 0;
  v28 = *(&v32 + 1);
  if (*(&v32 + 1) != 0.0)
  {
    v31 = 0u;
    v32 = 0u;
    PCMatrix44Tmpl<double>::transform<double>(a9, a2->f64, &v31);
    v29 = *(&v32 + 1);
    if (*(&v32 + 1) <= 0.0)
    {
      if (v28 > 0.0 || *(&v32 + 1) >= 0.0)
      {
        return 0;
      }
    }

    else if (v28 <= 0.0)
    {
      return 0;
    }

    v31 = 0u;
    v32 = 0u;
    PCMatrix44Tmpl<double>::transform<double>(a9, a3->f64, &v31);
    v30 = *(&v32 + 1);
    if (*(&v32 + 1) <= 0.0)
    {
      if (v29 > 0.0 || *(&v32 + 1) >= 0.0)
      {
        return 0;
      }
    }

    else if (v29 <= 0.0)
    {
      return 0;
    }

    v31 = 0u;
    v32 = 0u;
    PCMatrix44Tmpl<double>::transform<double>(a9, a4->f64, &v31);
    if (*(&v32 + 1) <= 0.0)
    {
      if (v30 > 0.0 || *(&v32 + 1) >= 0.0)
      {
        return 0;
      }
    }

    else if (v30 <= 0.0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

void RandMersenne::RandMersenne(RandMersenne *this)
{
  *this = &unk_287208950;
  *(this + 386) = 0;
  *(this + 388) = 0;
  *(this + 387) = 0;
}

void RandMersenne::~RandMersenne(RandMersenne *this)
{
  *this = &unk_287208950;
  *(this + 386) = 0;
  *(this + 388) = 0;
  *(this + 387) = 0;
}

{
  *this = &unk_287208950;
  *(this + 386) = 0;
  *(this + 388) = 0;
  *(this + 387) = 0;
  JUMPOUT(0x2666E9F00);
}

double RandMersenne::SetSeed(RandMersenne *this, unsigned int a2)
{
  dsfmt_chk_init_gen_rand(this + 8, a2, 19937);
  *(this + 388) = 0;
  result = 0.0;
  *(this + 193) = 0u;
  return result;
}

BOOL PCRectClipTest(double a1, double a2, double *a3, double *a4)
{
  if (a1 >= 0.0)
  {
    if (a1 <= 0.0)
    {
      return a2 >= 0.0;
    }

    v5 = a2 / a1;
    if (v5 >= *a3)
    {
      if (v5 < *a4)
      {
        *a4 = v5;
      }

      return 1;
    }

    return 0;
  }

  v4 = a2 / a1;
  if (v4 > *a4)
  {
    return 0;
  }

  if (v4 > *a3)
  {
    *a3 = v4;
  }

  return 1;
}

void *getNCLCToCGNameMap(void)
{
  {
    makeNCLCToCGNameMap();
    __cxa_atexit(std::map<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>::~map[abi:ne200100], &getNCLCToCGNameMap(void)::result, &dword_25F8F0000);
  }

  return &getNCLCToCGNameMap(void)::result;
}

void *makeNCLCToCGNameMap(void)
{
  v30 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBF4A8];
  v1 = *MEMORY[0x277CBF428];
  v11 = 0;
  v10 = 0x800000001;
  v12 = v0;
  v13 = v1;
  v2 = *MEMORY[0x277CBF4B8];
  v3 = *MEMORY[0x277CBF430];
  v14 = 0xD00000001;
  v15 = 0;
  v16 = v2;
  v17 = v3;
  v4 = *MEMORY[0x277CBF4A0];
  v5 = *MEMORY[0x277CBF420];
  v18 = 0x800000009;
  v19 = 0;
  v20 = v4;
  v21 = v5;
  v6 = *MEMORY[0x277CBF3E0];
  v7 = *MEMORY[0x277CBF3F8];
  v22 = 0xD0000000CLL;
  v23 = 0;
  v24 = v6;
  v25 = v7;
  v8 = *MEMORY[0x277CBF3D8];
  v27 = 0;
  v26 = 0x110000000BLL;
  v28 = v8;
  v29 = 0;
  return std::map<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>::map[abi:ne200100](&getNCLCToCGNameMap(void)::result, &v10, 5);
}

uint64_t getAPILock@<X0>(uint64_t a1@<X8>)
{
  {
    operator new();
  }

  v2 = getAPILock(void)::mutex;
  *a1 = getAPILock(void)::mutex;
  result = PCMutex::lock(v2);
  *(a1 + 8) = 1;
  return result;
}

void sub_25FBA38A4(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x1081C4076DFA842);
  _Unwind_Resume(a1);
}

CGColorSpaceRef PCGetNCLCColorSpace(unsigned int *a1)
{
  v2 = operator==(a1, &kPCNCLC_Rec2020Linear);

  return PCGetNCLCColorSpace(a1, v2);
}

CGColorSpaceRef PCGetNCLCColorSpace(unsigned int *a1, int a2)
{
  v8 = PCMakeCanonicalNCLCCode(a1);
  v9 = v3;
  if (!PCIsUsableNCLCCode(&v8))
  {
    return 0;
  }

  getAPILock(&v6);
  ColorSpace_Locked = findOrMakeColorSpace_Locked(&v8, a2, 1);
  if (v6 && v7 == 1)
  {
    PCMutex::unlock(v6);
  }

  return ColorSpace_Locked;
}

CGColorSpaceRef findOrMakeColorSpace_Locked(_DWORD *a1, int a2, uint64_t a3)
{
  values[3] = *MEMORY[0x277D85DE8];
  v33 = *a1;
  v34 = a1[2];
  v35 = a2;
  {
    operator new();
  }

  v6 = getColorSpaceMap(void)::result + 8;
  v7 = *(getColorSpaceMap(void)::result + 8);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = getColorSpaceMap(void)::result + 8;
  do
  {
    if (v9)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (!v9)
    {
      v8 = v7;
    }

    v7 = *(v7 + v10);
  }

  while (v7);
  {
    return *(v8 + 48);
  }

LABEL_12:
  ColorSpaceList = getColorSpaceList();
  space = 0;
  if (!a3)
  {
    goto LABEL_20;
  }

  getNCLCToCGNameMap();
  v12 = std::__tree<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::__map_value_compare<PCNCLCCode,std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::less<PCNCLCCode>,true>,std::allocator<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>>>::find<PCNCLCCode>(&getNCLCToCGNameMap(void)::result, a1);
  if (v12 == &unk_27FE4AA30)
  {
    v13 = 0;
  }

  else
  {
    v14 = 56;
    if (!a2)
    {
      v14 = 48;
    }

    v13 = *&v12[v14];
    if (v13)
    {
      v13 = CGColorSpaceCreateWithName(v13);
    }
  }

  space = v13;
  keys[0] = 0;
  PCCFRef<CGColorSpace *>::~PCCFRef(keys);
  if (!space)
  {
LABEL_20:
    if (a2 == 1)
    {
      ColorSpace_Locked = findOrMakeColorSpace_Locked(a1, 0, a3);
      v16 = ColorSpace_Locked;
      if (ColorSpace_Locked)
      {
        PCCFRefTraits<CGColorSpace *>::retain(ColorSpace_Locked);
      }

      keys[0] = v16;
      PCCreateExtendedColorSpace(keys, values);
      space = values[0];
      values[0] = 0;
      PCCFRef<CGColorSpace *>::~PCCFRef(values);
      v17 = keys;
    }

    else
    {
      if (operator==(&v33, &kPCNCLC_P3_D65Linear))
      {
        PCICCTransferFunctionLinear::PCICCTransferFunctionLinear(values);
        PCMakeDisplayRGBProfile(&kPCChromaticities_P3_D65, values, keys);
        makeColorSpaceRef(keys, &v31);
        PCICCProfile::~PCICCProfile(keys);
        PCICCTransferFunctionLinear::~PCICCTransferFunctionLinear(values);
      }

      else if (operator==(&v33, &kPCNCLC_P3_D65))
      {
        PCICCTransferFunctionGamma::PCICCTransferFunctionGamma(values, 1.961);
        PCMakeDisplayRGBProfile(&kPCChromaticities_P3_D65, values, keys);
        makeColorSpaceRef(keys, &v31);
        PCICCProfile::~PCICCProfile(keys);
        PCICCTransferFunctionGamma::~PCICCTransferFunctionGamma(values);
      }

      else
      {
        v19 = PCGetPrimariesString(v33);
        v20 = PCGetTransferFunctionString(SHIDWORD(v33));
        v21 = PCGetMatrixString(v34);
        v22 = *MEMORY[0x277CC4CC0];
        keys[0] = *MEMORY[0x277CC4C00];
        keys[1] = v22;
        keys[2] = *MEMORY[0x277CC4D10];
        values[0] = v19;
        values[1] = v20;
        values[2] = v21;
        v36 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v31 = PCCreateColorSpaceFromAttachments(v36);
        PCCFRef<__CFDictionary const*>::~PCCFRef(&v36);
      }

      v23 = v31;
      if (space && space != v31)
      {
        PCCFRefTraits<CGColorSpace *>::release(space);
        v23 = v31;
      }

      v31 = 0;
      space = v23;
      v17 = &v31;
    }

    PCCFRef<CGColorSpace *>::~PCCFRef(v17);
  }

  std::vector<PCCFRef<CGColorSpace *>>::push_back[abi:ne200100](ColorSpaceList, &space);
  v24 = space;
  v25 = *v6;
  if (!*v6)
  {
    goto LABEL_41;
  }

  while (1)
  {
    while (1)
    {
      v26 = v25;
      {
        break;
      }

      v25 = *v26;
      v6 = v26;
      if (!*v26)
      {
        goto LABEL_41;
      }
    }

    {
      break;
    }

    v6 = (v26 + 1);
    v25 = v26[1];
    if (!v25)
    {
      goto LABEL_41;
    }
  }

  if (!*v6)
  {
LABEL_41:
    operator new();
  }

  *(*v6 + 48) = v24;
  NCLCHashTable = getNCLCHashTable();
  keys[0] = space;
  v18 = space;
  v29 = v33;
  *(v28 + 2) = v34;
  *v28 = v29;
  PCCFRef<CGColorSpace *>::~PCCFRef(&space);
  return v18;
}

unint64_t PCGetNCLCCodeForColorSpace(CGColorSpace *a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v33 = a1;
  if (a1)
  {
    NCLCHashTable = getNCLCHashTable();
    getAPILock(&v31);
    if (v2)
    {
      goto LABEL_27;
    }

    if ((initNamedNCLCCodeColorSpaces_Locked(void)::done & 1) == 0)
    {
      v3 = 0;
      initNamedNCLCCodeColorSpaces_Locked(void)::done = 1;
      v44 = xmmword_26034C904;
      v45 = unk_26034C914;
      v46 = xmmword_26034C924;
      v47 = unk_26034C934;
      v40 = xmmword_26034C8C4;
      v41 = unk_26034C8D4;
      v42 = xmmword_26034C8E4;
      v43 = unk_26034C8F4;
      v36 = xmmword_26034C884;
      v37 = unk_26034C894;
      v38 = xmmword_26034C8A4;
      v39 = unk_26034C8B4;
      do
      {
        findOrMakeColorSpace_Locked((&v36 + v3), 0, 1);
        findOrMakeColorSpace_Locked((&v36 + v3), 1, 1);
        v3 += 12;
      }

      while (v3 != 192);
    }

    if (v2)
    {
      goto LABEL_27;
    }

    if ((initCGColorSpaces_Locked(void)::done & 1) == 0)
    {
      v4 = 0;
      initCGColorSpaces_Locked(void)::done = 1;
      *&v36 = *MEMORY[0x277CBF4B8];
      *(&v36 + 1) = 0xD00000001;
      LODWORD(v37) = 0;
      *(&v37 + 1) = *MEMORY[0x277CBF430];
      *&v38 = 0xD00000001;
      DWORD2(v38) = 0;
      *&v39 = *MEMORY[0x277CBF4A8];
      *(&v39 + 1) = 0x800000001;
      LODWORD(v40) = 0;
      *(&v40 + 1) = *MEMORY[0x277CBF428];
      *&v41 = 0x800000001;
      DWORD2(v41) = 0;
      *&v42 = *MEMORY[0x277CBF488];
      *(&v42 + 1) = 0x100000001;
      LODWORD(v43) = 1;
      v5 = *MEMORY[0x277CBF470];
      DWORD2(v44) = 9;
      *(&v43 + 1) = v5;
      *&v44 = 0x100000009;
      *&v45 = *MEMORY[0x277CBF408];
      *(&v45 + 1) = 0x100000009;
      LODWORD(v46) = 9;
      *(&v46 + 1) = *MEMORY[0x277CBF4A0];
      *&v47 = 0x800000009;
      DWORD2(v47) = 0;
      v48 = *MEMORY[0x277CBF420];
      v49 = 0x800000009;
      v50 = 0;
      v51 = *MEMORY[0x277CBF3D8];
      v52 = 0x110000000BLL;
      v53 = 0;
      v54 = *MEMORY[0x277CBF3E0];
      v55 = 0xD0000000CLL;
      v56 = 0;
      v6 = *MEMORY[0x277CBF3F8];
      v59 = 0;
      v57 = v6;
      v58 = 0xD0000000CLL;
      v7 = *MEMORY[0x277CBF490];
      v62 = 0;
      v60 = v7;
      v61 = 0x80000000CLL;
      v8 = *MEMORY[0x277CBF410];
      v65 = 0;
      v63 = v8;
      v64 = 0x80000000CLL;
      v9 = *MEMORY[0x277CBF480];
      v68 = 9;
      v66 = v9;
      v67 = 0x1000000009;
      v10 = *MEMORY[0x277CBF478];
      v71 = 9;
      v69 = v10;
      v70 = 0x1200000009;
      v11 = *MEMORY[0x277CBF3F0];
      v74 = 1;
      v72 = v11;
      v73 = 0x100000000CLL;
      v12 = *MEMORY[0x277CBF3E8];
      v77 = 1;
      v75 = v12;
      v76 = 0x120000000CLL;
      do
      {
        v13 = *(&v36 + v4);
        if (v13)
        {
          v14 = CGColorSpaceCreateWithName(v13);
        }

        else
        {
          v14 = 0;
        }

        v35[0] = v14;
        v15 = getNCLCHashTable();
        v34 = v14;
        {
          ColorSpaceList = getColorSpaceList();
          std::vector<PCCFRef<CGColorSpace *>>::push_back[abi:ne200100](ColorSpaceList, v35);
          v34 = v35[0];
          *v17 = *(&v36 + v4 + 8);
          *(v17 + 2) = *(&v36 + v4 + 16);
        }

        PCCFRef<CGColorSpace *>::~PCCFRef(v35);
        v4 += 24;
      }

      while (v4 != 432);
    }

    if (v2)
    {
      goto LABEL_27;
    }

    if ((initAllNCLCCodeColorSpaces_Locked(void)::done & 1) == 0)
    {
      v18 = 0;
      initAllNCLCCodeColorSpaces_Locked(void)::done = 1;
      do
      {
        v19 = 0;
        v20 = dword_26034C944[v18];
        do
        {
          v21 = 0;
          v22 = dword_26034C95C[v19];
          do
          {
            *&v36 = PCMakeCanonicalNCLCCode(v20, v22, dword_26034D380[v21]);
            DWORD2(v36) = v23;
            findOrMakeColorSpace_Locked(&v36, 0, 0);
            findOrMakeColorSpace_Locked(&v36, 1, 0);
            ++v21;
          }

          while (v21 != 4);
          ++v19;
        }

        while (v19 != 7);
        ++v18;
      }

      while (v18 != 6);
    }

    if (v2)
    {
      goto LABEL_27;
    }

    if ((initBugFixColorSpaces_Locked(void)::done & 1) == 0)
    {
      initBugFixColorSpaces_Locked(void)::done = 1;
      addDataBlobColorSpace_Locked(&kPCNCLC_P3_D65, p3D65Profile_OS12_1, 664);
      PCICCTransferFunctionParametric0::PCICCTransferFunctionParametric0(v35, 1.961);
      PCMakeDisplayRGBProfile(&kPCChromaticities_P3_D65, v35, &v36);
      ProfileData = PCICCProfile::getProfileData(&v36);
      Size = PCICCProfile::getSize(&v36);
      addDataBlobColorSpace_Locked(&kPCNCLC_P3_D65, ProfileData, Size);
      PCICCProfile::~PCICCProfile(&v36);
      PCICCTransferFunctionParametric0::~PCICCTransferFunctionParametric0(v35);
      addDataBlobColorSpace_Locked(&kPCNCLC_Rec709, Rec709Profile_OS12_1, 660);
      addDataBlobColorSpace_Locked(&kPCNCLC_Rec709, Rec709Profile_OS12_2, 556);
      addDataBlobColorSpace_Locked(&kPCNCLC_Rec2020, Rec2020Profile_OS12_1, 688);
    }

    if (v2)
    {
LABEL_27:
      v26 = 0;
      v27 = v2[3];
    }

    else
    {
      v27 = 0;
      v26 = 1;
    }

    if (v31 && v32 == 1)
    {
      PCMutex::unlock(v31);
    }

    if (v26)
    {
      v28 = 0x200000000;
    }

    else
    {
      v28 = v27;
    }

    if (v26)
    {
      v29 = 2;
    }

    else
    {
      v29 = v27;
    }
  }

  else
  {
    v28 = 0x200000000;
    v29 = 2;
  }

  return v28 & 0xFFFFFFFF00000000 | v29;
}

void sub_25FBA44E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  PCICCTransferFunctionParametric0::~PCICCTransferFunctionParametric0(&a13);
  PCLockSentry<PCMutex>::~PCLockSentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t getNCLCHashTable(void)
{
  {
    operator new();
  }

  return getNCLCHashTable(void)::result;
}

uint64_t **std::unordered_map<CGColorSpace *,PCNCLCCode,anonymous namespace::Hash,anonymous namespace::Equal,std::allocator<std::pair<CGColorSpace * const,PCNCLCCode>>>::find[abi:ne200100](void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
  v5 = a1[1];
  if (!*&v5)
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
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
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
      if (CFEqual(i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *std::map<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>::map[abi:ne200100](void *a1, _DWORD *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::__map_value_compare<PCNCLCCode,std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::less<PCNCLCCode>,true>,std::allocator<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>>>::__emplace_hint_unique_key_args<PCNCLCCode,std::pair<PCNCLCCode const,std::pair<__CFString const*,__CFString const*>> const&>(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::__map_value_compare<PCNCLCCode,std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::less<PCNCLCCode>,true>,std::allocator<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>>>::__emplace_hint_unique_key_args<PCNCLCCode,std::pair<PCNCLCCode const,std::pair<__CFString const*,__CFString const*>> const&>(void *a1, uint64_t *a2, _DWORD *a3)
{
  v3 = *std::__tree<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::__map_value_compare<PCNCLCCode,std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::less<PCNCLCCode>,true>,std::allocator<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>>>::__find_equal<PCNCLCCode>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::__map_value_compare<PCNCLCCode,std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::less<PCNCLCCode>,true>,std::allocator<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>>>::__find_equal<PCNCLCCode>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, _DWORD *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !operator<(a5, a2 + 8))
  {
    if (!operator<(a2 + 8, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!operator<(a5, v15 + 8))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (operator<(v12 + 8, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::__map_value_compare<PCNCLCCode,std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::less<PCNCLCCode>,true>,std::allocator<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>>>::__find_equal<PCNCLCCode>(a1, a3, a5);
}

uint64_t *std::__tree<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::__map_value_compare<PCNCLCCode,std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::less<PCNCLCCode>,true>,std::allocator<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>>>::__find_equal<PCNCLCCode>(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!operator<(a3, v4 + 8))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!operator<(v7 + 8, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t getColorSpaceList(void)
{
  {
    operator new();
  }

  return getColorSpaceList(void)::result;
}

uint64_t std::vector<PCCFRef<CGColorSpace *>>::push_back[abi:ne200100](uint64_t a1, CGColorSpace **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<PCCFRef<CGColorSpace *>>::__emplace_back_slow_path<PCCFRef<CGColorSpace *> const&>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if (v4)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v4);
    }

    result = (v3 + 1);
    *(a1 + 8) = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *std::unordered_map<CGColorSpace *,PCNCLCCode,anonymous namespace::Hash,anonymous namespace::Equal,std::allocator<std::pair<CGColorSpace * const,PCNCLCCode>>>::operator[](void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
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
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
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

  if (!CFEqual(v11[2], *a2))
  {
    goto LABEL_17;
  }

  return (v11 + 3);
}

BOOL std::less<anonymous namespace::ColorSpaceKey>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (!operator!=(a1, a2))
  {
    return *(a1 + 12) < *(a2 + 12);
  }

  return operator<(a1, a2);
}

uint64_t std::__tree<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::__map_value_compare<PCNCLCCode,std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>,std::less<PCNCLCCode>,true>,std::allocator<std::__value_type<PCNCLCCode,std::pair<__CFString const*,__CFString const*>>>>::find<PCNCLCCode>(uint64_t a1, _DWORD *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = operator<((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || operator<(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

const void **makeColorSpaceRef@<X0>(const PCICCProfile *a1@<X0>, CGColorSpaceRef *a2@<X8>)
{
  v4 = *MEMORY[0x277CBECE8];
  ProfileData = PCICCProfile::getProfileData(a1);
  Size = PCICCProfile::getSize(a1);
  v8 = CFDataCreate(v4, ProfileData, Size);
  *a2 = CGColorSpaceCreateWithICCData(v8);
  return PCCFRef<__CTLine const*>::~PCCFRef(&v8);
}

void sub_25FBA50A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<__CTLine const*>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<PCCFRef<CGColorSpace *>>::__emplace_back_slow_path<PCCFRef<CGColorSpace *> const&>(uint64_t a1, CGColorSpace **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v7);
  }

  v8 = (8 * v2);
  v17 = 0;
  v18 = v8;
  v19 = (8 * v2);
  v9 = *a2;
  *v8 = *a2;
  if (v9)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v9);
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v10 = 8 * v2;
  }

  *&v19 = v10 + 8;
  v11 = *(a1 + 8);
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCCFRef<CGColorSpace *>>,PCCFRef<CGColorSpace *>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<PCCFRef<CGColorSpace *>>::~__split_buffer(&v17);
  return v16;
}

void sub_25FBA51BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PCCFRef<CGColorSpace *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCCFRef<CGColorSpace *>>,PCCFRef<CGColorSpace *>*>(uint64_t a1, CGColorSpace **a2, CGColorSpace **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a4 - 8;
    v8 = a2;
    do
    {
      v9 = *v8;
      *(v7 + 8) = *v8;
      if (v9)
      {
        PCCFRefTraits<CGColorSpace *>::retain(v9);
      }

      ++v8;
      v6 -= 8;
      v7 += 8;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      PCCFRef<CGColorSpace *>::~PCCFRef(v5++);
    }
  }
}

void sub_25FBA5254(_Unwind_Exception *exception_object)
{
  for (; v2; v2 += 8)
  {
    PCCFRef<CGColorSpace *>::~PCCFRef(v1--);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<PCCFRef<CGColorSpace *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    PCCFRef<CGColorSpace *>::~PCCFRef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **addDataBlobColorSpace_Locked(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  v10 = CFDataCreate(*MEMORY[0x277CBECE8], a2, a3);
  v9 = CGColorSpaceCreateWithICCData(v10);
  ColorSpaceList = getColorSpaceList();
  std::vector<PCCFRef<CGColorSpace *>>::push_back[abi:ne200100](ColorSpaceList, &v9);
  NCLCHashTable = getNCLCHashTable();
  v11 = v9;
  v7 = *a1;
  *(v6 + 2) = *(a1 + 8);
  *v6 = v7;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v9);
  return PCCFRef<__CTLine const*>::~PCCFRef(&v10);
}

void sub_25FBA534C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCCFRef<__CTLine const*>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t dsfmt_gen_rand_all(uint64_t result)
{
  v1 = vshlq_n_s64(*result, 0x13uLL);
  v2 = veorq_s8(vsraq_n_u64(vshlq_n_s64(*(result + 3056), 0x20uLL), *(result + 3056), 0x20uLL), veorq_s8(vextq_s8(v1, v1, 8uLL), vextq_s8(*(result + 1872), *(result + 1872), 8uLL)));
  v3 = vextq_s8(v2, v2, 8uLL);
  *result = veorq_s8(veorq_s8(vshrq_n_u64(v3, 0xCuLL), vandq_s8(v3, xmmword_26034D390)), *result);
  v4 = 73;
  v5 = result;
  do
  {
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = veorq_s8(veorq_s8(vsraq_n_u64(vshlq_n_s64(v2, 0x20uLL), v2, 0x20uLL), *(v5 + 1872)), vshlq_n_s64(v6, 0x13uLL));
    *v5 = veorq_s8(veorq_s8(vshrq_n_u64(v7, 0xCuLL), vandq_s8(v7, xmmword_26034D390)), v6);
    v2 = vextq_s8(v7, v7, 8uLL);
    --v4;
  }

  while (v4);
  v8 = v7.u64[1];
  v9 = v7.i64[0];
  v10 = 117;
  v11 = result;
  do
  {
    v12 = v11[148];
    v13 = __ROR8__(v9, 32);
    v9 = __ROR8__(v8, 32) ^ (v12 << 19) ^ *v11;
    v14 = v11[149];
    v8 = v13 ^ (v14 << 19) ^ v11[1];
    v11[148] = v9 & 0xFFAFFFFFFFB3FLL ^ (v9 >> 12) ^ v12;
    v11[149] = v8 & 0xFFDFFFC90FFFDLL ^ (v8 >> 12) ^ v14;
    v11 += 2;
    --v10;
  }

  while (v10);
  *(result + 3056) = v9;
  *(result + 3064) = v8;
  return result;
}

uint64_t dsfmt_chk_init_gen_rand(uint64_t result, unsigned int a2, int a3)
{
  if (a3 != 19937)
  {
    fwrite("DSFMT_MEXP doesn't match with dSFMT.c\n", 0x26uLL, 1uLL, *MEMORY[0x277D85DF8]);
    exit(1);
  }

  *result = a2;
  for (i = 1; i != 768; ++i)
  {
    a2 = i + 1812433253 * (a2 ^ (a2 >> 30));
    *(result + 4 * i) = a2;
  }

  v4 = 0;
  v5 = vdupq_n_s64(0xFFFFFFFFFFFFFuLL);
  __asm { FMOV            V1.2D, #1.0 }

  do
  {
    *(result + v4) = vorrq_s8(vandq_s8(*(result + v4), v5), _Q1);
    v4 += 16;
  }

  while (v4 != 3056);
  v11 = (*(result + 3056) & 0x3D84E1AC0DC82880 | *(result + 3064) & 1) ^ 0x1000412401080000;
  v12 = 32;
  do
  {
    v11 ^= v11 >> v12;
    v13 = v12 > 1;
    v12 >>= 1;
  }

  while (v13);
  if ((v11 & 1) == 0)
  {
    *(result + 3064) ^= 1uLL;
  }

  *(result + 3072) = 382;
  return result;
}

uint64_t PCRenderModel::PCRenderModel(uint64_t a1, int a2)
{
  *a1 = a2;
  PCColorSpaceCache::sRGB((a1 + 8));
  v3 = PCGetWorkingColorSpace(1);
  PCColorSpaceHandle::PCColorSpaceHandle((a1 + 16), v3);
  *(a1 + 24) = 0x3FFA5E353F800000;
  return a1;
}

uint64_t PCRenderModel::getWorkingColorSpace(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = 16;
  }

  else
  {
    v2 = 8;
  }

  return PCColorSpaceHandle::getCGColorSpace((result + v2));
}

float PCRenderModel::getBlendingGamma(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return *(a1 + 28);
  }

  if (!a2)
  {
    return *(a1 + 24);
  }

  return result;
}

void *PCGetDefaultRenderModel(void)
{
  {
    PCRenderModel::PCRenderModel(&PCGetDefaultRenderModel(void)::defaultRenderModel, 0);
    __cxa_atexit(PCRenderModel::~PCRenderModel, &PCGetDefaultRenderModel(void)::defaultRenderModel, &dword_25F8F0000);
  }

  return &PCGetDefaultRenderModel(void)::defaultRenderModel;
}

const void **PCLoadBitmap@<X0>(const __CFURL *a1@<X0>, void *a2@<X8>)
{
  keys[1] = *MEMORY[0x277D85DE8];
  keys[0] = *MEMORY[0x277CD3610];
  values = *MEMORY[0x277CBED28];
  v4 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = v4;
  v5 = CGImageSourceCreateWithURL(a1, v4);
  keys[0] = v5;
  if (v5)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, v4);
    values = ImageAtIndex;
    if (ImageAtIndex)
    {
      PCBitmapFromCGImageRef(ImageAtIndex, 0, a2);
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "PCLoadBitmap: CGImageSourceCreateImageAtIndex failed.\n", 54);
      *a2 = 0;
      a2[1] = 0;
    }

    PCCFRef<CGImage *>::~PCCFRef(&values);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "PCLoadBitmap: CGImageSourceCreateWithURL failed.\n", 49);
    *a2 = 0;
    a2[1] = 0;
  }

  PCCFRef<__CTLine const*>::~PCCFRef(keys);
  return PCCFRef<__CFDictionary const*>::~PCCFRef(&v8);
}

void sub_25FBA58B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  PCCFRef<__CTLine const*>::~PCCFRef(&a11);
  PCCFRef<__CFDictionary const*>::~PCCFRef(&a9);
  _Unwind_Resume(a1);
}

void PCBitmapFromCGImageRef(CGImage *a1@<X0>, CGColorSpace *a2@<X1>, void *a3@<X8>)
{
  if (!a1)
  {
    v14 = MEMORY[0x277D82678];
    v15 = "null CGImageRef passed to PCBitmapFromCGImageRef()\n";
    v16 = 51;
LABEL_50:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  *v33 = 0u;
  memset(v34, 0, sizeof(v34));
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  v9 = ColorSpace;
  if (ColorSpace)
  {
    PCCFRefTraits<CGColorSpace *>::retain(ColorSpace);
  }

  space = v9;
  Model = CGColorSpaceGetModel(v9);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  if (BitsPerComponent <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = BitsPerComponent;
  }

  if (Model >= kCGColorSpaceModelCMYK)
  {
    if (Model == kCGColorSpaceModelIndexed)
    {
      BaseColorSpace = CGColorSpaceGetBaseColorSpace(space);
      v18 = BaseColorSpace;
      if (BaseColorSpace)
      {
        PCCFRefTraits<CGColorSpace *>::retain(BaseColorSpace);
      }

      v35 = v18;
      v19 = space;
      if (!space || space == v18)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      v18 = v20;
      if (v20)
      {
        PCCFRefTraits<CGColorSpace *>::retain(v20);
      }

      v35 = v18;
      v19 = space;
      if (!space || space == v18)
      {
        goto LABEL_26;
      }
    }

    PCCFRefTraits<CGColorSpace *>::release(v19);
    v18 = v35;
LABEL_26:
    space = v18;
    v35 = 0;
    PCCFRef<CGColorSpace *>::~PCCFRef(&v35);
    if (v12 == 8)
    {
      BitmapInfo = 2;
      LODWORD(BitsPerPixel) = 32;
      goto LABEL_46;
    }

    if (v12 != 32)
    {
      if (v12 == 16)
      {
        BitmapInfo = 4097;
        LODWORD(BitsPerPixel) = 64;
      }

      else
      {
        BitmapInfo = 0;
        LODWORD(BitsPerPixel) = 4 * v12;
      }

      goto LABEL_46;
    }

    BitmapInfo = 8449;
LABEL_43:
    LODWORD(BitsPerPixel) = 128;
    goto LABEL_46;
  }

  if (BitsPerPixel / BitsPerComponent != 3)
  {
    if (BitsPerPixel / BitsPerComponent == 2)
    {
      v13 = BitmapInfo & 0x1F;
      if ((v13 - 5) < 2)
      {
        BitmapInfo &= 0xFFFFFFE0;
        LODWORD(BitsPerPixel) = v12;
      }

      else if (v13 == 4)
      {
        BitmapInfo = BitmapInfo & 0xFFFFFFE0 | 3;
      }

      else if (v13 == 2)
      {
        BitmapInfo = BitmapInfo & 0xFFFFFFE0 | 1;
      }
    }

    goto LABEL_46;
  }

  if (BitsPerComponent > 8)
  {
    if (BitsPerComponent != 32)
    {
      goto LABEL_46;
    }

    if ((BitmapInfo & 0x1F) <= 6 && ((1 << (BitmapInfo & 0x1F)) & 0x61) != 0)
    {
      BitmapInfo = BitmapInfo & 0xFFFFFFE0 | 1;
    }

    BitmapInfo |= 0x100u;
    goto LABEL_43;
  }

  LODWORD(BitsPerPixel) = 32;
  if ((BitmapInfo & 0x1F) <= 6 && ((1 << (BitmapInfo & 0x1F)) & 0x61) != 0)
  {
    LODWORD(BitsPerPixel) = 32;
    BitmapInfo = BitmapInfo & 0xFFFFFFE0 | 2;
  }

LABEL_46:
  v33[0] = __PAIR64__(BitsPerPixel, v12);
  v33[1] = space;
  *v34 = BitmapInfo;
  memset(&v34[4], 0, 20);
  PCCFRef<CGColorSpace *>::~PCCFRef(&space);
  if (a2)
  {
    v33[1] = a2;
  }

  v21 = MEMORY[0x2666EB700](&space, v33, 0, a1, 0);
  if (v21)
  {
    v22 = v21;
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "PCBitmapFromCGImageRef(): vImageBuffer_InitWithCGImage failed, error = ", 71);
    v14 = MEMORY[0x2666E9B70](v23, v22);
    v15 = "\n";
    v16 = 1;
    goto LABEL_50;
  }

  if (CGColorSpaceGetModel(v33[1]) < kCGColorSpaceModelCMYK)
  {
    v24 = 0xD4u >> v34[0];
    v25 = (*v34 & 0x7000) != 0x2000 && (*v34 & 0x6000) != 0;
    v26 = (*v34 & 0x7000) == 0x4000 || (*v34 & 0x7000) == 0x2000;
    v27 = HIDWORD(v33[0]) / LODWORD(v33[0]);
    if ((*v34 & 0x100) != 0 && LODWORD(v33[0]) == 32 && v26)
    {
      if (v27 == 1)
      {
        v27 = 14;
      }

      else if (v27 == 2)
      {
        v27 = 15;
      }

      else if (v24)
      {
        v27 = 17;
      }

      else
      {
        v27 = 16;
      }

      goto LABEL_90;
    }

    if (LODWORD(v33[0]) == 16 && (*v34 & 0x5000) == 0x1000)
    {
      if ((*v34 & 0x100) != 0)
      {
        if ((v24 & 1) == 0)
        {
          v27 = 13;
          goto LABEL_90;
        }
      }

      else
      {
        switch(v27)
        {
          case 1:
            v27 = 7;
            goto LABEL_90;
          case 3:
            v27 = 9;
            goto LABEL_90;
          case 2:
            v27 = 8;
            goto LABEL_90;
        }

        if ((v24 & 1) == 0)
        {
          v27 = 10;
          goto LABEL_90;
        }
      }
    }

    else if (LODWORD(v33[0]) == 8)
    {
      if ((v27 - 1) >= 2)
      {
        if (v25)
        {
          v28 = 4;
          v29 = 6;
        }

        else
        {
          v28 = 5;
          v29 = 3;
        }

        if ((0xD4u >> v34[0]))
        {
          v27 = v29;
        }

        else
        {
          v27 = v28;
        }
      }

LABEL_90:
      PCCreateBitmap(v32[0], v31[0], v27, v33[1]);
    }

    v27 = 0;
    goto LABEL_90;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "PCLoadBitmap: only RGB or grayscale images are supported.\n", 58);
  *a3 = 0;
  a3[1] = 0;
  free(space);
}

void sub_25FBA5FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColorSpace *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CGColorSpace *a18)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a18);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a9);
  _Unwind_Resume(a1);
}

void sub_25FBA5FD4()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25FBA5FCCLL);
}

CGImage **PCCFRef<CGImage *>::~PCCFRef(CGImage **a1)
{
  v2 = *a1;
  if (v2)
  {
    PCCFRefTraits<CGImage *>::release(v2);
  }

  return a1;
}

uint64_t PCInfo::texturesShouldUseQuarterRes(PCInfo *this)
{
  if (PCInfo::texturesShouldUseQuarterRes(void)::predicate != -1)
  {
    PCInfo::texturesShouldUseQuarterRes();
  }

  return PCInfo::texturesShouldUseQuarterRes(void)::ret;
}

unint64_t ___ZN6PCInfo27texturesShouldUseQuarterResEv_block_invoke(PCInfo *a1)
{
  result = PCInfo::availableVRAM(a1);
  PCInfo::texturesShouldUseQuarterRes(void)::ret = result < 0x3E8;
  return result;
}

uint64_t PCInfo::getPhysicalRAM(PCInfo *this)
{
  {
    PCInfo::getPhysicalRAM(void)::physicalRAM = computePhysicalRAM();
  }

  return PCInfo::getPhysicalRAM(void)::physicalRAM;
}

uint64_t computePhysicalRAM(void)
{
  v4 = *MEMORY[0x277D85DE8];
  *v3 = 0x1800000006;
  v1 = 8;
  v2 = 0;
  if (sysctl(v3, 2u, &v2, &v1, 0, 0))
  {
    return 0x100000000;
  }

  else
  {
    return v2;
  }
}

BOOL PCInfo::getMemoryInfo(PCInfo *this, unint64_t *a2, unint64_t a3, unint64_t a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, unint64_t *a8, unint64_t *a9)
{
  address = 0;
  v56 = 0;
  nesting_depth = 0;
  size = 0;
  infoCnt = 0;
  PhysicalRAM = PCInfo::getPhysicalRAM(this);
  v16 = MEMORY[0x2666EABF0]();
  v17 = host_page_size(v16, &v56);
  host_info_outCnt = 15;
  v18 = MEMORY[0x2666EABF0](v17);
  if (host_statistics(v18, 2, host_info_out, &host_info_outCnt))
  {
    result = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v40 = a2;
    v41 = a5;
    task_info_outCnt = 0;
    v27 = host_info_out[0];
    v28 = v56;
    v29 = MEMORY[0x277D85F48];
    v30 = a3 | a4;
    if (a3 | a4)
    {
      v43 = host_info_out[0];
      v31 = 0;
      address = 1879048192;
      do
      {
        nesting_depth = 1;
        infoCnt = 19;
        if (vm_region_recurse_64(*v29, &address, &size, &nesting_depth, info, &infoCnt))
        {
          break;
        }

        v32 = address;
        if (address >> 28 > 8)
        {
          break;
        }

        v31 += size;
        address += size;
      }

      while ((size + v32) >> 28 < 9);
      v27 = v43;
      if (v31 <= PhysicalRAM)
      {
        v33 = PhysicalRAM;
      }

      else
      {
        v33 = v31;
      }

      v30 = PhysicalRAM - v31;
      if (PhysicalRAM < v31)
      {
        v30 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v38 = v30;
    v39 = v33;
    v25 = 0;
    if (a6)
    {
      nesting_depth = 0;
      for (address = 0; address < 0xFFFFFFFF; address += size)
      {
        infoCnt = 19;
        if (vm_region_recurse_64(*v29, &address, &size, &nesting_depth, info, &infoCnt))
        {
          break;
        }

        v25 += size;
      }
    }

    v20 = v28 * v27;
    v42 = a7;
    v26 = 0;
    if (a7)
    {
      v34 = 0;
      nesting_depth = 0;
      address = 0;
      do
      {
        infoCnt = 19;
        if (vm_region_recurse_64(*v29, &address, &size, &nesting_depth, info, &infoCnt))
        {
          break;
        }

        v35 = address;
        v36 = address - v34;
        if (address - v34 <= v26)
        {
          v36 = v26;
        }

        if (address != v34)
        {
          v26 = v36;
        }

        v34 = size + address;
        address += size;
      }

      while (size + v35 <= 0xFFFFFFFE);
    }

    task_info_outCnt = 10;
    v37 = task_info(*v29, 0x12u, &task_info_out, &task_info_outCnt) == 0;
    result = v37;
    if (v37)
    {
      v23 = v49;
    }

    else
    {
      v23 = 0;
    }

    if (v37)
    {
      v24 = v48 - 0x20000000;
    }

    else
    {
      v24 = 0;
    }

    a7 = v42;
    a2 = v40;
    a5 = v41;
    v22 = v38;
    v21 = v39;
  }

  if (this)
  {
    *this = PhysicalRAM;
  }

  if (a2)
  {
    *a2 = v20;
  }

  if (a3)
  {
    *a3 = v21;
  }

  if (a4)
  {
    *a4 = v22;
  }

  if (a5)
  {
    *a5 = v23;
  }

  if (a6)
  {
    *a6 = v25;
  }

  if (a7)
  {
    *a7 = v26;
  }

  if (a8)
  {
    *a8 = v24;
  }

  return result;
}

BOOL PCInfo::isMemoryAvailable(PCInfo *this)
{
  v2 = 0;
  v3 = 0;
  nesting_depth = 0;
  size = 0;
  address = 0;
  v4 = MEMORY[0x277D85F48];
  do
  {
    infoCnt = 19;
    if (vm_region_recurse_64(*v4, &address, &size, &nesting_depth, info, &infoCnt))
    {
      break;
    }

    v5 = address;
    v6 = address - v3;
    if (address - v3 <= v2)
    {
      v6 = v2;
    }

    if (address != v3)
    {
      v2 = v6;
    }

    v3 = size + address;
    address += size;
  }

  while (size + v5 <= 0xFFFFFFFE && v2 <= this);
  return v2 > this;
}

uint64_t PCInfo::availableVRAM(PCInfo *this)
{
  if (PCInfo::availableVRAM(void)::onceToken != -1)
  {
    PCInfo::availableVRAM();
  }

  return PCInfo::availableVRAM(void)::vramAvailable;
}

void ___ZN6PCInfo13availableVRAMEv_block_invoke()
{
  v0 = MTLCreateSystemDefaultDevice();
  PCInfo::availableVRAM(void)::vramAvailable = PCInfo::getPhysicalRAM([v0 hasUnifiedMemory]) >> 20;
}

uint64_t PCInfo::getDefaultRGBCGColorSpace(PCInfo *this)
{
  {
    PCColorSpaceCache::rec709Linear(&PCInfo::getDefaultRGBCGColorSpace(void)::result);
    __cxa_atexit(PCColorSpaceHandle::~PCColorSpaceHandle, &PCInfo::getDefaultRGBCGColorSpace(void)::result, &dword_25F8F0000);
  }

  return PCColorSpaceHandle::getCGColorSpace(&PCInfo::getDefaultRGBCGColorSpace(void)::result);
}

CGColorSpace *PCInfo::getDefaultRGBColorSpace@<X0>(void *a1@<X8>)
{
  {
    PCColorSpaceCache::rec709Linear(&PCInfo::getDefaultRGBColorSpace(void)::result);
    __cxa_atexit(PCColorSpaceHandle::~PCColorSpaceHandle, &PCInfo::getDefaultRGBColorSpace(void)::result, &dword_25F8F0000);
  }

  result = PCInfo::getDefaultRGBColorSpace(void)::result;
  *a1 = PCInfo::getDefaultRGBColorSpace(void)::result;
  if (result)
  {

    return PCCFRefTraits<CGColorSpace *>::retain(result);
  }

  return result;
}

uint64_t PCInfo::getDefaultGrayscaleCGColorSpace(PCInfo *this)
{
  {
    PCColorSpaceCache::gamma22Gray(&PCInfo::getDefaultGrayscaleCGColorSpace(void)::result);
    __cxa_atexit(PCColorSpaceHandle::~PCColorSpaceHandle, &PCInfo::getDefaultGrayscaleCGColorSpace(void)::result, &dword_25F8F0000);
  }

  return PCColorSpaceHandle::getCGColorSpace(&PCInfo::getDefaultGrayscaleCGColorSpace(void)::result);
}

uint64_t PCInfo_IsUnitTesting()
{
  if (PCInfo_IsUnitTesting::onceToken != -1)
  {
    PCInfo_IsUnitTesting_cold_1();
  }

  return PCInfo_IsUnitTesting::sIsUnitTesting;
}

void PCTimer::PCTimer(PCTimer *this)
{
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep PCTimer::start(PCTimer *this)
{
  result = std::chrono::steady_clock::now().__d_.__rep_;
  *this = result;
  *(this + 1) = 0;
  *(this + 16) = 1;
  return result;
}

double PCTimer::stop(PCTimer *this)
{
  v2 = *(this + 1) + std::chrono::steady_clock::now().__d_.__rep_ - *this;
  *(this + 1) = v2;
  *(this + 16) = 0;
  ++*(this + 5);
  result = v2 / 1000000000.0 + *(this + 3);
  *(this + 3) = result;
  return result;
}

double PCTimer::getSeconds(PCTimer *this)
{
  v1 = *(this + 1);
  if (*(this + 16) == 1 && (*(this + 17) & 1) == 0)
  {
    v1 = std::chrono::steady_clock::now().__d_.__rep_ + v1 - *this;
  }

  return v1 / 1000000000.0;
}

void PCICCTag::PCICCTag(PCICCTag *this, int a2, const unsigned __int8 *a3, const unsigned __int8 *a4)
{
  *this = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 8, a3, a4, a4 - a3);
}

uint64_t PCICCTag::reset(uint64_t this, int a2)
{
  *this = a2;
  *(this + 16) = *(this + 8);
  return this;
}

void PCICCTag::resize(PCICCTag *this, unint64_t a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2) - v2;
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<unsigned char>::__append(this + 1, v5);
  }

  else if (!v4)
  {
    *(this + 2) = v2 + a2;
  }
}

void PCICCTag::push_back(PCICCTag *this, char a2)
{
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v4 >= v3)
  {
    v6 = *(this + 1);
    v7 = (v4 - v6);
    v8 = v4 - v6 + 1;
    if (v8 < 0)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v4 - v6;
    *v7 = a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *(this + 1) = 0;
    *(this + 2) = v7 + 1;
    *(this + 3) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = v4 + 1;
  }

  *(this + 2) = v5;
}

double *PCAlgorithm::bisect(double *this, double *a2, int *a3, double a4, int *a5)
{
  v5 = a2 + 1;
  v6 = this[a2 - 1];
  v7 = *this;
  if (a2 + 1 < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      if (v6 < v7 != this[((v8 + v5) >> 1) - 1] <= a4)
      {
        v8 = (v8 + v5) >> 1;
      }

      else
      {
        v5 = (v8 + v5) >> 1;
      }
    }

    while (v5 - v8 > 1);
  }

  if (v7 == a4)
  {
    v9 = 0;
  }

  else if (v6 == a4)
  {
    v9 = a2 - 2;
    if (a2 < 2)
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = __OFSUB__(v8, 1);
    v9 = v8 - 1;
    if ((v9 < 0) ^ v10 | (v9 == 0))
    {
      v9 = 0;
    }
  }

  *a3 = v9;
  return this;
}

double PCAlgorithm::DeCasteljauSubdivide(PCAlgorithm *this, double a2, double a3, double a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13)
{
  if (a3 == a2)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = (a4 - a2) / (a3 - a2);
  }

  *a7 = *this;
  *a8 = *a5;
  *a9 = *a6;
  a7[1] = *this + v13 * (*(this + 1) - *this);
  a8[1] = *a5 + v13 * (a5[1] - *a5);
  a9[1] = *a6 + v13 * (a6[1] - *a6);
  a7[2] = (1.0 - v13) * a7[1] + v13 * (*(this + 1) + v13 * (*(this + 2) - *(this + 1)));
  a8[2] = (1.0 - v13) * a8[1] + v13 * (a5[1] + v13 * (a5[2] - a5[1]));
  a9[2] = (1.0 - v13) * a9[1] + v13 * (a6[1] + v13 * (a6[2] - a6[1]));
  a10[3] = *(this + 3);
  a11[3] = a5[3];
  a12[3] = a6[3];
  a10[2] = *(this + 2) + v13 * (*(this + 3) - *(this + 2));
  a11[2] = a5[2] + v13 * (a5[3] - a5[2]);
  a12[2] = a6[2] + v13 * (a6[3] - a6[2]);
  a10[1] = v13 * a10[2] + (1.0 - v13) * (*(this + 1) + v13 * (*(this + 2) - *(this + 1)));
  a11[1] = v13 * a11[2] + (1.0 - v13) * (a5[1] + v13 * (a5[2] - a5[1]));
  a12[1] = v13 * a12[2] + (1.0 - v13) * (a6[1] + v13 * (a6[2] - a6[1]));
  v14 = (1.0 - v13) * a7[2] + v13 * a10[1];
  *a10 = v14;
  a7[3] = v14;
  v15 = (1.0 - v13) * a8[2] + v13 * a11[1];
  *a11 = v15;
  a8[3] = v15;
  result = (1.0 - v13) * a9[2] + v13 * a12[1];
  *a12 = result;
  a9[3] = result;
  return result;
}

void PCAlgorithm::BezierSubdivide(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, int a5, double *a6, const void **a7, const void **a8, double a9, double a10, const void **a11, const void **a12)
{
  v23 = a1[1].f64[0];
  v22 = a1[1].f64[1];
  v81 = v23;
  v82 = v22;
  v24 = a2[1];
  v78 = *a2;
  v79 = v24;
  v25 = a3[1];
  v76 = *a3;
  v77 = v25;
  v26 = *a1;
  v80 = *a1;
  v27 = *a4;
  v73 = *a4;
  v29 = a4[1].f64[0];
  v28 = a4[1].f64[1];
  v74 = v29;
  v75 = v28;
  if (a6)
  {
    PCMatrix44Tmpl<double>::transform<double>(a6, v80.f64, v80.f64);
    PCMatrix44Tmpl<double>::transform<double>(a6, v78.f64, v78.f64);
    PCMatrix44Tmpl<double>::transform<double>(a6, v76.f64, v76.f64);
    PCMatrix44Tmpl<double>::transform<double>(a6, v73.f64, v73.f64);
    v27 = v73;
    v26 = v80;
    v29 = v74;
    v28 = v75;
    v23 = v81;
    v22 = v82;
  }

  *&v30 = v22 * v28;
  v31 = vmulq_n_f64(v26, v28);
  v32 = (v22 * v29 - v28 * v23) / (v22 * v28);
  v33 = vdivq_f64(vsubq_f64(vmulq_n_f64(v27, v22), v31), vdupq_lane_s64(v30, 0));
  v34 = sqrt(vaddvq_f64(vmulq_f64(v33, v33)) + v32 * v32);
  v35 = 0uLL;
  if (fabs(v34) >= 0.0000001)
  {
    v36.f64[0] = v77.f64[1];
    v37.f64[0] = v76.f64[1];
    v38.f64[0] = v76.f64[0];
    v36.f64[1] = v79.f64[1];
    v39 = vmulq_n_f64(v36, v22);
    v37.f64[1] = v78.f64[1];
    v38.f64[1] = v78.f64[0];
    v35 = vdivq_f64(vabdq_f64(vdivq_f64(vmulq_n_f64(vsubq_f64(vmulq_laneq_f64(v36, v26, 1), vmulq_n_f64(v37, v22)), v33.f64[0]), v39), vdivq_f64(vmulq_laneq_f64(vsubq_f64(vmulq_n_f64(v36, v26.f64[0]), vmulq_n_f64(v38, v22)), v33, 1), v39)), vdupq_lane_s64(*&v34, 0));
  }

  v40 = v35.f64[1];
  if (v35.f64[1] < v35.f64[0])
  {
    v40 = v35.f64[0];
  }

  if (a5 && v40 >= 0.25)
  {
    v41 = *a2;
    v42 = a2[1];
    __asm { FMOV            V4.2D, #0.5 }

    v48 = vmulq_f64(vaddq_f64(a1[1], v42), _Q4);
    v72[0] = vmulq_f64(vaddq_f64(*a1, *a2), _Q4);
    v72[1] = v48;
    v49 = *a3;
    v50 = a3[1];
    v51 = vmulq_f64(vaddq_f64(v50, a4[1]), _Q4);
    v71[0] = vmulq_f64(vaddq_f64(*a3, *a4), _Q4);
    v71[1] = v51;
    v52 = vmulq_f64(vaddq_f64(v41, v49), _Q4);
    v53 = vmulq_f64(vaddq_f64(v42, v50), _Q4);
    v69 = vmulq_f64(vaddq_f64(v72[0], v52), _Q4);
    v70 = vmulq_f64(vaddq_f64(v48, v53), _Q4);
    v67 = vmulq_f64(vaddq_f64(v52, v71[0]), _Q4);
    v68 = vmulq_f64(vaddq_f64(v53, v51), _Q4);
    v66[0] = vmulq_f64(vaddq_f64(v69, v67), _Q4);
    v66[1] = vmulq_f64(vaddq_f64(v70, v68), _Q4);
    v54 = (a5 - 1);
    v55 = a10 * 0.5;
    (PCAlgorithm::BezierSubdivide)(a1, v72, &v69, v66, v54, a6, a7, a8, a9, v55, a11, a12);
    (PCAlgorithm::BezierSubdivide)(v66, &v67, v71, a4, v54, a6, a7, a8, v55 + a9, v55, a11, a12);
  }

  else
  {
    v72[0].f64[0] = a1->f64[0];
    std::vector<double>::push_back[abi:ne200100](a7, v72);
    v72[0].f64[0] = a1->f64[1];
    std::vector<double>::push_back[abi:ne200100](a8, v72);
    if (a11)
    {
      v72[0].f64[0] = a1[1].f64[0];
      std::vector<double>::push_back[abi:ne200100](a11, v72);
    }

    v57 = a12[1];
    v56 = a12[2];
    if (v57 >= v56)
    {
      v59 = *a12;
      v60 = v57 - *a12;
      v61 = v60 >> 3;
      v62 = (v60 >> 3) + 1;
      if (v62 >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v63 = v56 - v59;
      if (v63 >> 2 > v62)
      {
        v62 = v63 >> 2;
      }

      _CF = v63 >= 0x7FFFFFFFFFFFFFF8;
      v64 = 0x1FFFFFFFFFFFFFFFLL;
      if (!_CF)
      {
        v64 = v62;
      }

      if (v64)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a12, v64);
      }

      *(8 * v61) = a9;
      v58 = 8 * v61 + 8;
      memcpy(0, v59, v60);
      v65 = *a12;
      *a12 = 0;
      a12[1] = v58;
      a12[2] = 0;
      if (v65)
      {
        operator delete(v65);
      }
    }

    else
    {
      *v57 = a9;
      v58 = (v57 + 1);
    }

    a12[1] = v58;
  }
}

uint64_t PCAlgorithm::findIntersection(float64x2_t *a1, int8x16_t *a2, float64x2_t *a3, int8x16_t *a4, float64x2_t *a5)
{
  v5 = *a2;
  v6 = vextq_s8(*a4, *a4, 8uLL);
  v7 = vaddvq_f64(vmulq_f64(v5, v5));
  *&v8 = v7 * 0.1;
  v9.f64[1] = v6.f64[1];
  *&v9.f64[0] = a2->i64[0];
  v10 = vmulq_f64(v6, v9);
  v11 = vmulq_f64(vextq_s8(v6, v6, 8uLL), vextq_s8(*a2, v6, 8uLL));
  *&v12.f64[0] = *&vsubq_f64(v10, v11);
  v12.f64[1] = vaddq_f64(v10, v11).f64[1];
  v13 = vcvt_f32_f64(v12);
  v14 = vmul_f32(__PAIR64__(v8, v13.u32[0]), v13);
  v15 = vcgt_f32(v14, vdup_lane_s32(v14, 1)).u8[0];
  if (v15)
  {
    v16 = vmulq_f64(v6, vsubq_f64(*a3, *a1));
    *v16.f64 = vsubq_f64(v16, vdupq_laneq_s64(v16, 1)).f64[0] / v13.f32[0];
    v17 = vmulq_n_f64(v5, *v16.f64);
    *a2 = v17;
    *a5 = vaddq_f64(*a1, v17);
  }

  return v15 & 1;
}

void PCAlgorithm::superEllipse(PCAlgorithm *this, double a2, double a3, double a4, double a5, double *a6, double *a7)
{
  v13 = a2;
  v14 = __sincosf_stret(v13);
  *&a5 = a5;
  *this = powf(fabsf(v14.__cosval), *&a5) * a3;
  v15 = powf(fabsf(v14.__sinval), *&a5) * a4;
  *a6 = v15;
  if (a2 <= 4.71238898)
  {
    if (a2 <= 3.14159265)
    {
      if (a2 <= 1.57079633)
      {
        return;
      }

      v15 = *this;
      a6 = this;
    }

    else
    {
      *this = -*this;
      v15 = *a6;
    }
  }

  *a6 = -v15;
}

uint64_t PCArray_base::gnomesortImpl(uint64_t this, void *a2, int a3, uint64_t (*a4)(uint64_t, uint64_t), int (*a5)(const void *, const void *))
{
  if (a2 >= 2)
  {
    v6 = a2;
    v7 = this;
    v8 = 1;
    v9 = a3;
    do
    {
      this = a4(v7 + (v8 - 1) * v9, v7 + v8 * a3);
      if (this > 0)
      {
        operator new[]();
      }

      ++v8;
    }

    while (v8 < v6);
  }

  return this;
}

void PCArray_base::badIndex(PCArray_base *this)
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v2, "PCArray::operator[]");
  PCException::PCException(exception, &v2);
  *exception = &unk_2872089F8;
}

void PCBadIndexException::~PCBadIndexException(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t PCBlend::modeMenuString(PCBlend *this)
{
  if (this)
  {
    v1 = PCBlend::modeMenuString(BOOL)::pModeMenuCombineString;
    if (!PCBlend::modeMenuString(BOOL)::pModeMenuCombineString)
    {
      operator new();
    }
  }

  else
  {
    v1 = PCBlend::modeMenuString(BOOL)::pModeMenuString;
    if (!PCBlend::modeMenuString(BOOL)::pModeMenuString)
    {
      operator new();
    }
  }

  return v1;
}

uint64_t PCBlend::lightWrapModeMenuString(PCBlend *this)
{
  if (!PCBlend::lightWrapModeMenuString(void)::pLightWrapModeMenuString)
  {
    operator new();
  }

  return PCBlend::lightWrapModeMenuString(void)::pLightWrapModeMenuString;
}

uint64_t PCBlend::reflectionModeMenuString(PCBlend *this)
{
  if (!PCBlend::reflectionModeMenuString(void)::pReflectionModeMenuString)
  {
    operator new();
  }

  return PCBlend::reflectionModeMenuString(void)::pReflectionModeMenuString;
}

uint64_t PCBlend::isAssociative(int a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
    case 3:
    case 4:
    case 8:
    case 9:
    case 10:
    case 23:
    case 31:
    case 35:
    case 48:
      return result;
    case 2:
    case 5:
    case 6:
    case 11:
    case 12:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 22:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 32:
    case 34:
      result = 0;
      break;
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 49:
    case 50:
    case 51:
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v6, "not implemented yet");
      PCString::PCString(&v5, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCBlend.cpp");
      PCException::PCException(exception, &v6, &v5, 496);
      *exception = &unk_2871F6178;
    default:
      v4 = __cxa_allocate_exception(0x40uLL);
      PCIllegalArgumentException::PCIllegalArgumentException(v4);
  }

  return result;
}

uint64_t PCBlend::isNormalOverNothing(unsigned int a1)
{
  if (a1 > 0x33)
  {
    goto LABEL_9;
  }

  if (((1 << a1) & 0x1000DA0DFDF7DLL) == 0)
  {
    if (((1 << a1) & 0x1E000000) != 0)
    {
      return 0;
    }

    if (((1 << a1) & 0xEFFC000000000) != 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v5, "not implemented yet");
      PCString::PCString(&v4, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCBlend.cpp");
      PCException::PCException(exception, &v5, &v4, 564);
      *exception = &unk_2871F6178;
    }

LABEL_9:
    v3 = __cxa_allocate_exception(0x40uLL);
    PCIllegalArgumentException::PCIllegalArgumentException(v3);
  }

  return 1;
}

uint64_t PCBlend::isNothingOverNothing(unsigned int a1)
{
  if (a1 > 0x33)
  {
    goto LABEL_9;
  }

  if (((1 << a1) & 0x1000DA0DFDF7DLL) == 0)
  {
    if (((1 << a1) & 0x1E000000) != 0)
    {
      return 1;
    }

    if (((1 << a1) & 0xEFFC000000000) != 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v5, "not implemented yet");
      PCString::PCString(&v4, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCBlend.cpp");
      PCException::PCException(exception, &v5, &v4, 632);
      *exception = &unk_2871F6178;
    }

LABEL_9:
    v3 = __cxa_allocate_exception(0x40uLL);
    PCIllegalArgumentException::PCIllegalArgumentException(v3);
  }

  return 0;
}

unint64_t PCBlend::treatsBlackLikeNormal(unsigned int a1)
{
  if (a1 >= 0x34 || ((0xFFFCDBEDFDF7DuLL >> a1) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCIllegalArgumentException::PCIllegalArgumentException(exception);
  }

  return (0x32412161FFuLL >> a1) & 1;
}

uint64_t PCBlend::lrBlendToPCBlend(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_26034D3D0[a1 - 1];
  }
}

void std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        PCString::~PCString(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<PCString>::push_back[abi:ne200100](uint64_t a1, const PCString *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<PCString>::__emplace_back_slow_path<PCString const&>(a1, a2);
  }

  else
  {
    PCString::PCString(*(a1 + 8), a2);
    result = v3 + 8;
    *(a1 + 8) = v3 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<PCString>::__emplace_back_slow_path<PCString const&>(uint64_t a1, const PCString *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<__CTRun const*>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  PCString::PCString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCString>,PCString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<PCString>::~__split_buffer(&v14);
  return v13;
}

void sub_25FBA91CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PCString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCString>,PCString*>(int a1, PCString *a2, PCString *a3, PCString *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      PCString::PCString(this++, v8++);
      v7 -= 8;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      PCString::~PCString(v6++);
    }
  }
}

void sub_25FBA9260(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      PCString::~PCString(v4);
      v4 = (v5 - 8);
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<PCString>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    PCString::~PCString((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<PCString>::__emplace_back_slow_path<PCString>(uint64_t a1, const PCString *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<__CTRun const*>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  PCString::PCString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCString>,PCString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<PCString>::~__split_buffer(&v14);
  return v13;
}

void sub_25FBA93D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PCString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t PCPixelFormat::getGLInternalFormat(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }
}

uint64_t PCPixelFormat::getGLDataFormat(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }
}

uint64_t PCPixelFormat::getGLDataType(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }
}

uint64_t PCPixelFormat::getPixelFormat(PCPixelFormat *this, int a2)
{
  v2 = this;
  result = 0;
  for (i = &dword_26034D3E8; *(i - 1) != v2 || *i != a2; i += 3)
  {
    if (++result == 18)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PCPixelFormat::getBitsPerPixel(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }
}

uint64_t PCPixelFormat::getBitsPerChannel(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }
}

uint64_t PCPixelFormat::getBytesPerPixel(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }
}

uint64_t PCPixelFormat::hasRGB(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }
}

uint64_t PCPixelFormat::hasGray(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }
}

uint64_t PCPixelFormat::hasAlpha(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }
}

uint64_t PCPixelFormat::isFloat(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }
}

uint64_t PCPixelFormat::getNumChannels(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }
}

BOOL PCPixelFormat::is8Bit(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return (v1 - 1) < 6;
}

BOOL PCPixelFormat::is16Bit(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return (v1 - 7) < 7;
}

BOOL PCPixelFormat::is32Bit(unsigned int a1)
{
  if (a1 <= 0x11)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return (v1 - 14) < 4;
}

uint64_t PCPixelFormat::setGray(uint64_t result)
{
  v1 = result - 3;
  if (result - 3) <= 0xE && ((0x64CFu >> v1))
  {
    return dword_26034D668[v1];
  }

  return result;
}

uint64_t PCPixelFormat::removeAlpha(uint64_t result)
{
  if (result <= 9)
  {
    if (result == 2)
    {
      return 1;
    }

    else if (result == 8)
    {
      return 7;
    }
  }

  else
  {
    switch(result)
    {
      case 0xA:
        return 9;
      case 0xC:
        return 11;
      case 0xF:
        return 14;
    }
  }

  return result;
}

uint64_t PCPixelFormat::setDepth(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2 == 32)
    {
      v3 = result - 1;
      if ((result - 1) >= 0xD)
      {
        return result;
      }

      v4 = &unk_26034D6E8;
      return v4[v3];
    }

    if (a2 == 16)
    {
      v3 = result - 1;
      if (result - 1) < 0x11 && ((0x1E3FFu >> v3))
      {
        v4 = &unk_26034D6A4;
        return v4[v3];
      }
    }
  }

  else if (a2 == 16)
  {
    v3 = result - 1;
    if (result - 1) < 0x11 && ((0x1FC3Fu >> v3))
    {
      v4 = &unk_26034D748;
      return v4[v3];
    }
  }

  else if (a2 == 8)
  {
    v3 = result - 7;
    if ((result - 7) < 0xB)
    {
      v4 = &unk_26034D71C;
      return v4[v3];
    }
  }

  return result;
}

uint64_t makeCGFormat@<X0>(CGColorSpace *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = CGColorSpaceGetModel(a1);
  if (result > 7)
  {
    v7 = 3;
  }

  else
  {
    v7 = dword_26034D944[result];
  }

  if (a2 == 1)
  {
    v8 = 8452;
  }

  else
  {
    v8 = 8448;
  }

  if (a2 == 2)
  {
    v8 = 8451;
  }

  if ((a2 - 1) < 2)
  {
    ++v7;
  }

  *a3 = 32;
  *(a3 + 4) = 32 * v7;
  *(a3 + 8) = a1;
  *(a3 + 16) = v8;
  *(a3 + 28) = 0;
  *(a3 + 20) = 0;
  return result;
}

vImageConverter *createConverter@<X0>(CGColorSpace **a1@<X0>, int a2@<W1>, CGColorSpace **a3@<X2>, int a4@<W3>, vImageConverterRef *a5@<X8>)
{
  memset(&srcFormat, 0, sizeof(srcFormat));
  makeCGFormat(*a1, a2, &srcFormat);
  memset(&destFormat, 0, sizeof(destFormat));
  makeCGFormat(*a3, a4, &destFormat);
  error = 0;
  result = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0x400u, &error);
  *a5 = result;
  if (!result)
  {
    v13 = CGColorConversionInfoCreate(*a1, *a3);
    *a5 = vImageConverter_CreateWithCGColorConversionInfo(v13, &srcFormat, &destFormat, 0, 0x400u, &error);
    v12 = 0;
    PCCFRef<vImageConverter *>::~PCCFRef(&v12);
    result = PCCFRef<vImageConverter *>::~PCCFRef(&v13);
  }

  if (error)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error in vImageConverter_CreateWithCGImageFormat: ", 50);
    v11 = MEMORY[0x2666E9B70](v10, error);
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n", 1);
  }

  return result;
}

void sub_25FBA9AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCCFRef<vImageConverter *>::~PCCFRef(va);
  PCCFRef<vImageConverter *>::~PCCFRef(v3);
  _Unwind_Resume(a1);
}

vImagePixelCount PCColorUtil::transformColor(uint64_t a1, uint64_t a2)
{
  if (*a2 >= *a1)
  {
    result = *a1;
  }

  else
  {
    result = *a2;
  }

  if (result)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v11 = v4;
    v12 = v5;
    v13 = v6;
    v7 = *(a2 + 24);
    LODWORD(v5) = *(a2 + 32);
    v8 = *(a2 + 8);
    v9 = v7;
    v10 = v5;
    return doSimpleTransform(result, &v11, &v8);
  }

  return result;
}

uint64_t doSimpleTransform(vImagePixelCount a1, uint64_t a2, uint64_t a3)
{
  if (CFEqual(*(a2 + 16), *(a3 + 16)))
  {
    result = CGColorSpaceUsesExtendedRange(*(a2 + 16));
    v7 = *(a2 + 24);
    v8 = *(a3 + 24);
    v41 = a1;
    if (v7 == v8)
    {
      v9 = result;
      v10 = *(a2 + 8) * a1;
      if (!v10)
      {
        goto LABEL_55;
      }

      v11 = *a2;
      v12 = 4 * v10;
      v13 = *a3;
      goto LABEL_5;
    }

    v16 = *a3;
    v17 = (*a3 + 4 * (v8 == 1));
    v11 = *a2;
    v18 = *(a2 + 8);
    v19 = v7 - 1;
    v20 = (*a2 + 4 * (v7 == 1));
    if (v7 == 1)
    {
      v21 = *a2;
    }

    else if (v7 == 2)
    {
      v21 = &v11[v18 - 1];
    }

    else
    {
      v21 = 0;
    }

    if (v8 == 1)
    {
      v33 = v18 - (v19 < 2);
      if (v16)
      {
LABEL_29:
        v9 = result;
        if (v21)
        {
          for (; a1; --a1)
          {
            if (v33)
            {
              result = memmove(v17, v20, 4 * v33);
              v18 = *(a2 + 8);
            }

            *v16 = *v21;
            v20 += 4 * v18;
            v34 = *(a3 + 8);
            v17 += 4 * v34;
            v21 += v18;
            v16 += v34;
          }
        }

        else if (a1)
        {
          v35 = a1;
          do
          {
            if (v33)
            {
              result = memmove(v17, v20, 4 * v33);
              v18 = *(a2 + 8);
            }

            *v16 = 1.0;
            v20 += 4 * v18;
            v36 = *(a3 + 8);
            v17 += 4 * v36;
            v16 += v36;
            --v35;
          }

          while (v35);
        }

        goto LABEL_55;
      }
    }

    else
    {
      if (v8 == 2)
      {
        v16 = &v16[*(a3 + 8) - 1];
        v33 = v18 - (v19 < 2);
        goto LABEL_29;
      }

      v33 = v18 - (v19 < 2);
    }

    v9 = result;
    if (v21)
    {
      for (; a1; --a1)
      {
        if (v33)
        {
          result = memmove(v17, v20, 4 * v33);
          v18 = *(a2 + 8);
        }

        v20 += 4 * v18;
        v17 += 4 * *(a3 + 8);
      }

      goto LABEL_55;
    }

    v37 = v18 * a1;
    if (!v37)
    {
LABEL_55:
      if ((v9 & 1) == 0)
      {
        v38 = *a3;
        v39 = *(a3 + 8);
        v40 = *(a3 + 24);

        return clampComponents(v41, v38, v39, v40);
      }

      return result;
    }

    v12 = 4 * v37;
    v13 = *a3;
LABEL_5:
    result = memmove(v13, v11, v12);
    goto LABEL_55;
  }

  getCachedColorConverter(*(a2 + 16), *(a3 + 16), *(a2 + 24), *(a3 + 24), &v50);
  if (v50)
  {
    v14 = *(a2 + 16);
    v15 = !CGColorSpaceUsesExtendedRange(v14) && CGColorSpaceGetModel(v14) != kCGColorSpaceModelLab;
    v22 = *(a3 + 16);
    v23 = !CGColorSpaceUsesExtendedRange(v22) && CGColorSpaceGetModel(v22) != kCGColorSpaceModelLab;
    v24 = *a2;
    if (v46 == 1)
    {
      v25 = v43;
      v26 = v44;
      if (v44 * v43)
      {
        memmove(__dst, v24, 4 * v44 * v43);
        v25 = v43;
        v26 = v44;
      }

      clampComponents(v25, __dst, v26, v45);
      v24 = __dst;
    }

    v27 = *(a2 + 8);
    v28 = *(a2 + 16);
    v29 = *(a2 + 24);
    v42[0] = v24;
    v42[1] = v27;
    v42[2] = v28;
    v42[3] = v29;
    v30 = dovImageTransform(a1, v50, v42, a3);
    if (v30)
    {
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; vImageConvert_AnyToAny failed, error code is ", 52);
      v32 = MEMORY[0x2666E9B70](v31, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "\n", 1);
      writeOpaqueBlack(a1, a3);
    }

    else if (v23)
    {
      clampComponents(a1, *a3, *(a3 + 8), *(a3 + 24));
    }

    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a1, a3);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&v50);
}

void PCColorUtil::transformColorWithDynamicRange(uint64_t a1, uint64_t a2, PVPerfStats::FrameStats *this)
{
  if (*a2 >= *a1)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a2;
  }

  if (v3)
  {
    v4 = *(a1 + 24);
    v18 = *(a1 + 8);
    v19 = v4;
    v20 = 0;
    v5 = *(a1 + 36);
    LODWORD(v20) = *(a1 + 32);
    v6 = *(a2 + 24);
    v15 = *(a2 + 8);
    v16 = v6;
    v17 = 0;
    v7 = *(a2 + 36);
    LODWORD(v17) = *(a2 + 32);
    if (v5 == v7 || !PVPerfStats::FrameStats::GetSize(this))
    {
      doSimpleTransform(v3, &v18, &v15);
    }

    else if (v5 || v7 != 1)
    {
      if (v5 != 1 || v7)
      {
        writeOpaqueBlack(v3, &v15);
      }

      else
      {
        v12 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear, 1);
        v13 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020, 1);
        Size = PVPerfStats::FrameStats::GetSize(this);
        if (Size <= 3)
        {
          if (Size == 2)
          {
            doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_6>(v12, v13, v3, &v18, &v15);
          }

          else if (Size == 3)
          {
            doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_7>(v12, v13, v3, &v18, &v15);
          }
        }

        else
        {
          switch(Size)
          {
            case 4:
              doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_8>(v12, v13, v3, &v18, &v15);
              break;
            case 5:
              doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_9>(this, v12, v13, v3, &v18, &v15);
              break;
            case 6:
              doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_10>(v12, v13, v3, &v18, &v15);
              break;
          }
        }
      }
    }

    else
    {
      v9 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020, 1);
      v10 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear, 1);
      v11 = PVPerfStats::FrameStats::GetSize(this);
      if (v11 > 3)
      {
        switch(v11)
        {
          case 4:
            doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_3>(v9, v10, v3, &v18, &v15);
            break;
          case 5:
            doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_4>(this, v9, v10, v3, &v18, &v15);
            break;
          case 6:
            doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_5>(v9, v10, v3, &v18, &v15);
            break;
        }
      }

      else
      {
        switch(v11)
        {
          case 1:
            doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_0>(v9, v10, v3, &v18, &v15);
            break;
          case 2:
            doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_1>(v9, v10, v3, &v18, &v15);
            break;
          case 3:
            doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_2>(v9, v10, v3, &v18, &v15);
            break;
        }
      }
    }
  }
}

const void **doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_0>(CGColorSpaceRef a1, CGColorSpace *a2, uint64_t a3, char **a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  getCachedColorConverter(a4[2], a1, *(a4 + 6), 2, &converter);
  if (converter)
  {
    getCachedColorConverter(a2, *(a5 + 16), 2, *(a5 + 24), &v33);
    if (v33)
    {
      v8 = a4[2];
      v9 = !CGColorSpaceUsesExtendedRange(v8) && CGColorSpaceGetModel(v8) != kCGColorSpaceModelLab;
      v10 = *(a5 + 16);
      v11 = !CGColorSpaceUsesExtendedRange(v10) && CGColorSpaceGetModel(v10) != kCGColorSpaceModelLab;
      if (a3)
      {
        v23 = *(a5 + 24);
        v12 = *a5;
        v13 = *a4;
        v14 = 4 * a4[1];
        v22 = *(a5 + 8);
        v24 = vdupq_n_s64(1uLL);
        do
        {
          v15 = v13;
          if (v29 == 1)
          {
            v16 = v26;
            v17 = v27;
            if (v27 * v26)
            {
              memmove(__dst, v13, 4 * v27 * v26);
              v16 = v26;
              v17 = v27;
            }

            clampComponents(v16, __dst, v17, v28);
            v15 = __dst;
          }

          *&srcs.height = v24;
          srcs.data = v15;
          srcs.rowBytes = v14;
          dests.data = &v37;
          *&dests.height = v24;
          dests.rowBytes = 16;
          v18 = vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0);
          v19.n128_f64[0] = PCColorUtil::applyInverseToneMap_BT2390(v18, v37);
          v20 = v37.n128_u32[3];
          v37 = v19;
          v37.n128_u32[3] = v20;
          *&srcs.height = vdupq_n_s64(1uLL);
          srcs.data = &v37;
          srcs.rowBytes = 16;
          dests.data = v12;
          *&dests.height = *&srcs.height;
          dests.rowBytes = 4 * v22;
          vImageConvert_AnyToAny(v33, &srcs, &dests, 0, 0);
          if (v11)
          {
            clampComponents(1, v12, v22, v23);
          }

          v13 += 4 * a4[1];
          v12 += 4 * *(a5 + 8);
          --a3;
        }

        while (a3);
      }

      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
      writeOpaqueBlack(a3, a5);
    }

    PCCFRef<vImageConverter *>::~PCCFRef(&v33);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a3, a5);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&converter);
}

void sub_25FBAA4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a25);
  PCCFRef<vImageConverter *>::~PCCFRef(&a26);
  _Unwind_Resume(a1);
}

const void **doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_1>(CGColorSpaceRef a1, CGColorSpace *a2, uint64_t a3, char **a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  getCachedColorConverter(a4[2], a1, *(a4 + 6), 2, &converter);
  if (converter)
  {
    getCachedColorConverter(a2, *(a5 + 16), 2, *(a5 + 24), &v33);
    if (v33)
    {
      v8 = a4[2];
      v9 = !CGColorSpaceUsesExtendedRange(v8) && CGColorSpaceGetModel(v8) != kCGColorSpaceModelLab;
      v10 = *(a5 + 16);
      v11 = !CGColorSpaceUsesExtendedRange(v10) && CGColorSpaceGetModel(v10) != kCGColorSpaceModelLab;
      if (a3)
      {
        v23 = *(a5 + 24);
        v12 = *a5;
        v13 = *a4;
        v14 = 4 * a4[1];
        v22 = *(a5 + 8);
        v24 = vdupq_n_s64(1uLL);
        do
        {
          v15 = v13;
          if (v29 == 1)
          {
            v16 = v26;
            v17 = v27;
            if (v27 * v26)
            {
              memmove(__dst, v13, 4 * v27 * v26);
              v16 = v26;
              v17 = v27;
            }

            clampComponents(v16, __dst, v17, v28);
            v15 = __dst;
          }

          *&srcs.height = v24;
          srcs.data = v15;
          srcs.rowBytes = v14;
          dests.data = &v37;
          *&dests.height = v24;
          dests.rowBytes = 16;
          v18 = vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0);
          v19.n128_f64[0] = PCColorUtil::applyInverseToneMap_BT2446_A(v18, v37);
          v20 = v37.n128_u32[3];
          v37 = v19;
          v37.n128_u32[3] = v20;
          *&srcs.height = vdupq_n_s64(1uLL);
          srcs.data = &v37;
          srcs.rowBytes = 16;
          dests.data = v12;
          *&dests.height = *&srcs.height;
          dests.rowBytes = 4 * v22;
          vImageConvert_AnyToAny(v33, &srcs, &dests, 0, 0);
          if (v11)
          {
            clampComponents(1, v12, v22, v23);
          }

          v13 += 4 * a4[1];
          v12 += 4 * *(a5 + 8);
          --a3;
        }

        while (a3);
      }

      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
      writeOpaqueBlack(a3, a5);
    }

    PCCFRef<vImageConverter *>::~PCCFRef(&v33);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a3, a5);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&converter);
}

void sub_25FBAA818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a25);
  PCCFRef<vImageConverter *>::~PCCFRef(&a26);
  _Unwind_Resume(a1);
}

const void **doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_2>(CGColorSpaceRef a1, CGColorSpace *a2, uint64_t a3, char **a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  getCachedColorConverter(a4[2], a1, *(a4 + 6), 2, &converter);
  if (converter)
  {
    getCachedColorConverter(a2, *(a5 + 16), 2, *(a5 + 24), &v33);
    if (v33)
    {
      v8 = a4[2];
      v9 = !CGColorSpaceUsesExtendedRange(v8) && CGColorSpaceGetModel(v8) != kCGColorSpaceModelLab;
      v10 = *(a5 + 16);
      v11 = !CGColorSpaceUsesExtendedRange(v10) && CGColorSpaceGetModel(v10) != kCGColorSpaceModelLab;
      if (a3)
      {
        v23 = *(a5 + 24);
        v12 = *a5;
        v13 = *a4;
        v14 = 4 * a4[1];
        v22 = *(a5 + 8);
        v24 = vdupq_n_s64(1uLL);
        do
        {
          v15 = v13;
          if (v29 == 1)
          {
            v16 = v26;
            v17 = v27;
            if (v27 * v26)
            {
              memmove(__dst, v13, 4 * v27 * v26);
              v16 = v26;
              v17 = v27;
            }

            clampComponents(v16, __dst, v17, v28);
            v15 = __dst;
          }

          *&srcs.height = v24;
          srcs.data = v15;
          srcs.rowBytes = v14;
          dests.data = &v37;
          *&dests.height = v24;
          dests.rowBytes = 16;
          v18 = vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0);
          v19.n128_f64[0] = PCColorUtil::applyInverseToneMap_OS(v18, v37);
          v20 = v37.n128_u32[3];
          v37 = v19;
          v37.n128_u32[3] = v20;
          *&srcs.height = vdupq_n_s64(1uLL);
          srcs.data = &v37;
          srcs.rowBytes = 16;
          dests.data = v12;
          *&dests.height = *&srcs.height;
          dests.rowBytes = 4 * v22;
          vImageConvert_AnyToAny(v33, &srcs, &dests, 0, 0);
          if (v11)
          {
            clampComponents(1, v12, v22, v23);
          }

          v13 += 4 * a4[1];
          v12 += 4 * *(a5 + 8);
          --a3;
        }

        while (a3);
      }

      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
      writeOpaqueBlack(a3, a5);
    }

    PCCFRef<vImageConverter *>::~PCCFRef(&v33);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a3, a5);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&converter);
}

void sub_25FBAAB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a25);
  PCCFRef<vImageConverter *>::~PCCFRef(&a26);
  _Unwind_Resume(a1);
}

const void **doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_3>(CGColorSpaceRef a1, CGColorSpace *a2, uint64_t a3, char **a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  getCachedColorConverter(a4[2], a1, *(a4 + 6), 2, &converter);
  if (converter)
  {
    getCachedColorConverter(a2, *(a5 + 16), 2, *(a5 + 24), &v32);
    if (v32)
    {
      v8 = a4[2];
      v9 = !CGColorSpaceUsesExtendedRange(v8) && CGColorSpaceGetModel(v8) != kCGColorSpaceModelLab;
      v10 = *(a5 + 16);
      v11 = !CGColorSpaceUsesExtendedRange(v10) && CGColorSpaceGetModel(v10) != kCGColorSpaceModelLab;
      if (a3)
      {
        v22 = *(a5 + 24);
        v12 = *a5;
        v13 = *a4;
        v14 = 4 * a4[1];
        v21 = *(a5 + 8);
        v23 = vdupq_n_s64(1uLL);
        do
        {
          v15 = v13;
          if (v28 == 1)
          {
            v16 = v25;
            v17 = v26;
            if (v26 * v25)
            {
              memmove(__dst, v13, 4 * v26 * v25);
              v16 = v25;
              v17 = v26;
            }

            clampComponents(v16, __dst, v17, v27);
            v15 = __dst;
          }

          *&srcs.height = v23;
          srcs.data = v15;
          srcs.rowBytes = v14;
          dests.data = &v36;
          *&dests.height = v23;
          dests.rowBytes = 16;
          vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0);
          *v18.i64 = PCColorUtil::applyInverseToneMap_HLGDiffuseWhite(v36);
          v19 = v36.i32[3];
          v36 = v18;
          v36.i32[3] = v19;
          *&srcs.height = vdupq_n_s64(1uLL);
          srcs.data = &v36;
          srcs.rowBytes = 16;
          dests.data = v12;
          *&dests.height = *&srcs.height;
          dests.rowBytes = 4 * v21;
          vImageConvert_AnyToAny(v32, &srcs, &dests, 0, 0);
          if (v11)
          {
            clampComponents(1, v12, v21, v22);
          }

          v13 += 4 * a4[1];
          v12 += 4 * *(a5 + 8);
          --a3;
        }

        while (a3);
      }

      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
      writeOpaqueBlack(a3, a5);
    }

    PCCFRef<vImageConverter *>::~PCCFRef(&v32);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a3, a5);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&converter);
}

void sub_25FBAAE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a25);
  PCCFRef<vImageConverter *>::~PCCFRef(&a26);
  _Unwind_Resume(a1);
}

const void **doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_4>(PCToneMapMethod *a1, CGColorSpaceRef a2, CGColorSpace *a3, uint64_t a4, char **a5, uint64_t a6)
{
  v41 = *MEMORY[0x277D85DE8];
  getCachedColorConverter(a5[2], a2, *(a5 + 6), 2, &converter);
  if (converter)
  {
    getCachedColorConverter(a3, *(a6 + 16), 2, *(a6 + 24), &v36);
    if (v36)
    {
      v9 = a5[2];
      v10 = !CGColorSpaceUsesExtendedRange(v9) && CGColorSpaceGetModel(v9) != kCGColorSpaceModelLab;
      v11 = *(a6 + 16);
      v12 = !CGColorSpaceUsesExtendedRange(v11) && CGColorSpaceGetModel(v11) != kCGColorSpaceModelLab;
      if (a4)
      {
        v24 = *(a6 + 24);
        v13 = *a6;
        v14 = *a5;
        v15 = 4 * a5[1];
        v23 = *(a6 + 8);
        v25 = vdupq_n_s64(1uLL);
        do
        {
          v16 = v14;
          if (v32 == 1)
          {
            v17 = v29;
            v18 = v30;
            if (v30 * v29)
            {
              memmove(__dst, v14, 4 * v30 * v29);
              v17 = v29;
              v18 = v30;
            }

            clampComponents(v17, __dst, v18, v31);
            v16 = __dst;
          }

          *&srcs.height = v25;
          srcs.data = v16;
          srcs.rowBytes = v15;
          dests.data = &v40;
          *&dests.height = v25;
          dests.rowBytes = 16;
          vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0);
          v28 = v40;
          Gain = PCToneMapMethod::getGain(a1);
          *v20.i64 = PCColorUtil::applyInverseToneMap_LinearGain(v28, Gain);
          v21 = v40.i32[3];
          v40 = v20;
          v40.i32[3] = v21;
          *&srcs.height = vdupq_n_s64(1uLL);
          srcs.data = &v40;
          srcs.rowBytes = 16;
          dests.data = v13;
          *&dests.height = *&srcs.height;
          dests.rowBytes = 4 * v23;
          vImageConvert_AnyToAny(v36, &srcs, &dests, 0, 0);
          if (v12)
          {
            clampComponents(1, v13, v23, v24);
          }

          v14 += 4 * a5[1];
          v13 += 4 * *(a6 + 8);
          --a4;
        }

        while (a4);
      }

      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
      writeOpaqueBlack(a4, a6);
    }

    PCCFRef<vImageConverter *>::~PCCFRef(&v36);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a4, a6);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&converter);
}

void sub_25FBAB1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, const void *a28)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a27);
  PCCFRef<vImageConverter *>::~PCCFRef(&a28);
  _Unwind_Resume(a1);
}

const void **doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_5>(CGColorSpaceRef a1, CGColorSpace *a2, uint64_t a3, char **a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  getCachedColorConverter(a4[2], a1, *(a4 + 6), 2, &converter);
  if (converter)
  {
    getCachedColorConverter(a2, *(a5 + 16), 2, *(a5 + 24), &v33);
    if (v33)
    {
      v8 = a4[2];
      v9 = !CGColorSpaceUsesExtendedRange(v8) && CGColorSpaceGetModel(v8) != kCGColorSpaceModelLab;
      v10 = *(a5 + 16);
      v11 = !CGColorSpaceUsesExtendedRange(v10) && CGColorSpaceGetModel(v10) != kCGColorSpaceModelLab;
      if (a3)
      {
        v23 = *(a5 + 24);
        v12 = *a5;
        v13 = *a4;
        v14 = 4 * a4[1];
        v22 = *(a5 + 8);
        v24 = vdupq_n_s64(1uLL);
        do
        {
          v15 = v13;
          if (v29 == 1)
          {
            v16 = v26;
            v17 = v27;
            if (v27 * v26)
            {
              memmove(__dst, v13, 4 * v27 * v26);
              v16 = v26;
              v17 = v27;
            }

            clampComponents(v16, __dst, v17, v28);
            v15 = __dst;
          }

          *&srcs.height = v24;
          srcs.data = v15;
          srcs.rowBytes = v14;
          dests.data = &v37;
          *&dests.height = v24;
          dests.rowBytes = 16;
          v18 = vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0);
          v19.n128_f64[0] = PCColorUtil::applyInverseToneMap_OSFA(v18, v37);
          v20 = v37.n128_u32[3];
          v37 = v19;
          v37.n128_u32[3] = v20;
          *&srcs.height = vdupq_n_s64(1uLL);
          srcs.data = &v37;
          srcs.rowBytes = 16;
          dests.data = v12;
          *&dests.height = *&srcs.height;
          dests.rowBytes = 4 * v22;
          vImageConvert_AnyToAny(v33, &srcs, &dests, 0, 0);
          if (v11)
          {
            clampComponents(1, v12, v22, v23);
          }

          v13 += 4 * a4[1];
          v12 += 4 * *(a5 + 8);
          --a3;
        }

        while (a3);
      }

      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
      writeOpaqueBlack(a3, a5);
    }

    PCCFRef<vImageConverter *>::~PCCFRef(&v33);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a3, a5);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&converter);
}

void sub_25FBAB4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a25);
  PCCFRef<vImageConverter *>::~PCCFRef(&a26);
  _Unwind_Resume(a1);
}

const void **doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_6>(CGColorSpaceRef a1, CGColorSpace *a2, uint64_t a3, char **a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  getCachedColorConverter(a4[2], a1, *(a4 + 6), 2, &converter);
  if (converter)
  {
    getCachedColorConverter(a2, *(a5 + 16), 2, *(a5 + 24), &v32);
    if (v32)
    {
      v8 = a4[2];
      v9 = !CGColorSpaceUsesExtendedRange(v8) && CGColorSpaceGetModel(v8) != kCGColorSpaceModelLab;
      v10 = *(a5 + 16);
      v11 = !CGColorSpaceUsesExtendedRange(v10) && CGColorSpaceGetModel(v10) != kCGColorSpaceModelLab;
      if (a3)
      {
        v22 = *(a5 + 24);
        v12 = *a5;
        v13 = *a4;
        v14 = 4 * a4[1];
        v21 = *(a5 + 8);
        v23 = vdupq_n_s64(1uLL);
        do
        {
          v15 = v13;
          if (v28 == 1)
          {
            v16 = v25;
            v17 = v26;
            if (v26 * v25)
            {
              memmove(__dst, v13, 4 * v26 * v25);
              v16 = v25;
              v17 = v26;
            }

            clampComponents(v16, __dst, v17, v27);
            v15 = __dst;
          }

          *&srcs.height = v23;
          srcs.data = v15;
          srcs.rowBytes = v14;
          dests.data = &v36;
          *&dests.height = v23;
          dests.rowBytes = 16;
          vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0);
          *v18.i64 = PCColorUtil::applyToneMap_BT2446_A(v36);
          v19 = v36.i32[3];
          v36 = v18;
          v36.i32[3] = v19;
          *&srcs.height = vdupq_n_s64(1uLL);
          srcs.data = &v36;
          srcs.rowBytes = 16;
          dests.data = v12;
          *&dests.height = *&srcs.height;
          dests.rowBytes = 4 * v21;
          vImageConvert_AnyToAny(v32, &srcs, &dests, 0, 0);
          if (v11)
          {
            clampComponents(1, v12, v21, v22);
          }

          v13 += 4 * a4[1];
          v12 += 4 * *(a5 + 8);
          --a3;
        }

        while (a3);
      }

      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
      writeOpaqueBlack(a3, a5);
    }

    PCCFRef<vImageConverter *>::~PCCFRef(&v32);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a3, a5);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&converter);
}

void sub_25FBAB808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a25);
  PCCFRef<vImageConverter *>::~PCCFRef(&a26);
  _Unwind_Resume(a1);
}

const void **doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_7>(CGColorSpaceRef a1, CGColorSpace *a2, uint64_t a3, char **a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  getCachedColorConverter(a4[2], a1, *(a4 + 6), 2, &converter);
  if (converter)
  {
    getCachedColorConverter(a2, *(a5 + 16), 2, *(a5 + 24), &v33);
    if (v33)
    {
      v8 = a4[2];
      v9 = !CGColorSpaceUsesExtendedRange(v8) && CGColorSpaceGetModel(v8) != kCGColorSpaceModelLab;
      v10 = *(a5 + 16);
      v11 = !CGColorSpaceUsesExtendedRange(v10) && CGColorSpaceGetModel(v10) != kCGColorSpaceModelLab;
      if (a3)
      {
        v23 = *(a5 + 24);
        v12 = *a5;
        v13 = *a4;
        v14 = 4 * a4[1];
        v22 = *(a5 + 8);
        v24 = vdupq_n_s64(1uLL);
        do
        {
          v15 = v13;
          if (v29 == 1)
          {
            v16 = v26;
            v17 = v27;
            if (v27 * v26)
            {
              memmove(__dst, v13, 4 * v27 * v26);
              v16 = v26;
              v17 = v27;
            }

            clampComponents(v16, __dst, v17, v28);
            v15 = __dst;
          }

          *&srcs.height = v24;
          srcs.data = v15;
          srcs.rowBytes = v14;
          dests.data = &v37;
          *&dests.height = v24;
          dests.rowBytes = 16;
          v18 = vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0);
          v19.n128_f64[0] = PCColorUtil::applyToneMap_OS(v18, v37);
          v20 = v37.n128_u32[3];
          v37 = v19;
          v37.n128_u32[3] = v20;
          *&srcs.height = vdupq_n_s64(1uLL);
          srcs.data = &v37;
          srcs.rowBytes = 16;
          dests.data = v12;
          *&dests.height = *&srcs.height;
          dests.rowBytes = 4 * v22;
          vImageConvert_AnyToAny(v33, &srcs, &dests, 0, 0);
          if (v11)
          {
            clampComponents(1, v12, v22, v23);
          }

          v13 += 4 * a4[1];
          v12 += 4 * *(a5 + 8);
          --a3;
        }

        while (a3);
      }

      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
      writeOpaqueBlack(a3, a5);
    }

    PCCFRef<vImageConverter *>::~PCCFRef(&v33);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a3, a5);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&converter);
}

void sub_25FBABB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a25);
  PCCFRef<vImageConverter *>::~PCCFRef(&a26);
  _Unwind_Resume(a1);
}

const void **doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_8>(CGColorSpaceRef a1, CGColorSpace *a2, uint64_t a3, char **a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  getCachedColorConverter(a4[2], a1, *(a4 + 6), 2, &converter);
  if (converter)
  {
    getCachedColorConverter(a2, *(a5 + 16), 2, *(a5 + 24), &v32);
    if (v32)
    {
      v8 = a4[2];
      v9 = !CGColorSpaceUsesExtendedRange(v8) && CGColorSpaceGetModel(v8) != kCGColorSpaceModelLab;
      v10 = *(a5 + 16);
      v11 = !CGColorSpaceUsesExtendedRange(v10) && CGColorSpaceGetModel(v10) != kCGColorSpaceModelLab;
      if (a3)
      {
        v22 = *(a5 + 24);
        v12 = *a5;
        v13 = *a4;
        v14 = 4 * a4[1];
        v21 = *(a5 + 8);
        v23 = vdupq_n_s64(1uLL);
        do
        {
          v15 = v13;
          if (v28 == 1)
          {
            v16 = v25;
            v17 = v26;
            if (v26 * v25)
            {
              memmove(__dst, v13, 4 * v26 * v25);
              v16 = v25;
              v17 = v26;
            }

            clampComponents(v16, __dst, v17, v27);
            v15 = __dst;
          }

          *&srcs.height = v23;
          srcs.data = v15;
          srcs.rowBytes = v14;
          dests.data = &v36;
          *&dests.height = v23;
          dests.rowBytes = 16;
          vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0);
          *v18.i64 = PCColorUtil::applyToneMap_HLGDiffuseWhite(v36);
          v19 = v36.i32[3];
          v36 = v18;
          v36.i32[3] = v19;
          *&srcs.height = vdupq_n_s64(1uLL);
          srcs.data = &v36;
          srcs.rowBytes = 16;
          dests.data = v12;
          *&dests.height = *&srcs.height;
          dests.rowBytes = 4 * v21;
          vImageConvert_AnyToAny(v32, &srcs, &dests, 0, 0);
          if (v11)
          {
            clampComponents(1, v12, v21, v22);
          }

          v13 += 4 * a4[1];
          v12 += 4 * *(a5 + 8);
          --a3;
        }

        while (a3);
      }

      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
      writeOpaqueBlack(a3, a5);
    }

    PCCFRef<vImageConverter *>::~PCCFRef(&v32);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a3, a5);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&converter);
}

void sub_25FBABE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a25);
  PCCFRef<vImageConverter *>::~PCCFRef(&a26);
  _Unwind_Resume(a1);
}

const void **doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_9>(PCToneMapMethod *a1, CGColorSpaceRef a2, CGColorSpace *a3, uint64_t a4, char **a5, uint64_t a6)
{
  v41 = *MEMORY[0x277D85DE8];
  getCachedColorConverter(a5[2], a2, *(a5 + 6), 2, &converter);
  if (converter)
  {
    getCachedColorConverter(a3, *(a6 + 16), 2, *(a6 + 24), &v36);
    if (v36)
    {
      v9 = a5[2];
      v10 = !CGColorSpaceUsesExtendedRange(v9) && CGColorSpaceGetModel(v9) != kCGColorSpaceModelLab;
      v11 = *(a6 + 16);
      v12 = !CGColorSpaceUsesExtendedRange(v11) && CGColorSpaceGetModel(v11) != kCGColorSpaceModelLab;
      if (a4)
      {
        v24 = *(a6 + 24);
        v13 = *a6;
        v14 = *a5;
        v15 = 4 * a5[1];
        v23 = *(a6 + 8);
        v25 = vdupq_n_s64(1uLL);
        do
        {
          v16 = v14;
          if (v32 == 1)
          {
            v17 = v29;
            v18 = v30;
            if (v30 * v29)
            {
              memmove(__dst, v14, 4 * v30 * v29);
              v17 = v29;
              v18 = v30;
            }

            clampComponents(v17, __dst, v18, v31);
            v16 = __dst;
          }

          *&srcs.height = v25;
          srcs.data = v16;
          srcs.rowBytes = v15;
          dests.data = &v40;
          *&dests.height = v25;
          dests.rowBytes = 16;
          vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0);
          v28 = v40;
          Gain = PCToneMapMethod::getGain(a1);
          *v20.i64 = PCColorUtil::applyToneMap_LinearGain(v28, Gain);
          v21 = v40.i32[3];
          v40 = v20;
          v40.i32[3] = v21;
          *&srcs.height = vdupq_n_s64(1uLL);
          srcs.data = &v40;
          srcs.rowBytes = 16;
          dests.data = v13;
          *&dests.height = *&srcs.height;
          dests.rowBytes = 4 * v23;
          vImageConvert_AnyToAny(v36, &srcs, &dests, 0, 0);
          if (v12)
          {
            clampComponents(1, v13, v23, v24);
          }

          v14 += 4 * a5[1];
          v13 += 4 * *(a6 + 8);
          --a4;
        }

        while (a4);
      }

      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
      writeOpaqueBlack(a4, a6);
    }

    PCCFRef<vImageConverter *>::~PCCFRef(&v36);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a4, a6);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&converter);
}

void sub_25FBAC1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, const void *a28)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a27);
  PCCFRef<vImageConverter *>::~PCCFRef(&a28);
  _Unwind_Resume(a1);
}

const void **doDynamicRangeTransform<PCColorUtil::transformColorWithDynamicRange(PCColorUtil::Buffer const&,PCColorUtil::Buffer&,PCToneMapMethod const&)::$_10>(CGColorSpaceRef a1, CGColorSpace *a2, uint64_t a3, char **a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  getCachedColorConverter(a4[2], a1, *(a4 + 6), 2, &converter);
  if (converter)
  {
    getCachedColorConverter(a2, *(a5 + 16), 2, *(a5 + 24), &v33);
    if (v33)
    {
      v8 = a4[2];
      v9 = !CGColorSpaceUsesExtendedRange(v8) && CGColorSpaceGetModel(v8) != kCGColorSpaceModelLab;
      v10 = *(a5 + 16);
      v11 = !CGColorSpaceUsesExtendedRange(v10) && CGColorSpaceGetModel(v10) != kCGColorSpaceModelLab;
      if (a3)
      {
        v23 = *(a5 + 24);
        v12 = *a5;
        v13 = *a4;
        v14 = 4 * a4[1];
        v22 = *(a5 + 8);
        v24 = vdupq_n_s64(1uLL);
        do
        {
          v15 = v13;
          if (v29 == 1)
          {
            v16 = v26;
            v17 = v27;
            if (v27 * v26)
            {
              memmove(__dst, v13, 4 * v27 * v26);
              v16 = v26;
              v17 = v27;
            }

            clampComponents(v16, __dst, v17, v28);
            v15 = __dst;
          }

          *&srcs.height = v24;
          srcs.data = v15;
          srcs.rowBytes = v14;
          dests.data = &v37;
          *&dests.height = v24;
          dests.rowBytes = 16;
          v18 = vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0);
          v19.n128_f64[0] = PCColorUtil::applyToneMap_OSFA(v18, v37);
          v20 = v37.n128_u32[3];
          v37 = v19;
          v37.n128_u32[3] = v20;
          *&srcs.height = vdupq_n_s64(1uLL);
          srcs.data = &v37;
          srcs.rowBytes = 16;
          dests.data = v12;
          *&dests.height = *&srcs.height;
          dests.rowBytes = 4 * v22;
          vImageConvert_AnyToAny(v33, &srcs, &dests, 0, 0);
          if (v11)
          {
            clampComponents(1, v12, v22, v23);
          }

          v13 += 4 * a4[1];
          v12 += 4 * *(a5 + 8);
          --a3;
        }

        while (a3);
      }

      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
      writeOpaqueBlack(a3, a5);
    }

    PCCFRef<vImageConverter *>::~PCCFRef(&v33);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error; unable to create a converter; no conversion is applied\n", 62);
    writeOpaqueBlack(a3, a5);
  }

  return PCCFRef<vImageConverter *>::~PCCFRef(&converter);
}

void sub_25FBAC4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a25);
  PCCFRef<vImageConverter *>::~PCCFRef(&a26);
  _Unwind_Resume(a1);
}

void writeOpaqueBlack(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 24);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *a2 + 4 * (v3 == 1);
  if (v3 == 1)
  {
    if (v5)
    {
LABEL_5:
      if (a1)
      {
        v7 = 0;
        v8 = 4 * v4;
        v9 = 4 * v4 - 4;
        do
        {
          if (v9 >= 1)
          {
            bzero((v6 + v7), v9);
          }

          *(v5 + v7) = 1065353216;
          v7 += v8;
          --v2;
        }

        while (v2);
      }

      return;
    }
  }

  else if (v3 == 2)
  {
    v5 = v5 + 4 * v4 - 4;
    goto LABEL_5;
  }

  v10 = v4 * a1;
  if (v10 >= 1)
  {

    bzero((v5 + 4 * (v3 == 1)), 4 * v10);
  }
}

float PCColorUtil::transform@<S0>(PVPerfStats::FrameStats *this@<X5>, uint64_t *a2@<X0>, uint64_t a3@<X1>, int a4@<W2>, uint64_t a5@<X3>, int a6@<W4>, uint64_t a7@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 2);
  v19 = 1065353216;
  v12[0] = 1;
  v12[1] = &v17;
  v12[2] = 4;
  v12[3] = a3;
  v13 = 2;
  v14 = a4;
  v15 = 0;
  v16 = 0;
  v9[0] = 1;
  v9[1] = &v15;
  v9[2] = 4;
  v9[3] = a5;
  v10 = 2;
  v11 = a6;
  PCColorUtil::transformColorWithDynamicRange(v12, v9, this);
  result = *&v16;
  *a7 = v15;
  *(a7 + 8) = result;
  return result;
}

CGColorSpace **getCachedColorConverter@<X0>(CGColorSpaceRef space@<X0>, CGColorSpaceRef a2@<X2>, int a3@<W1>, int a4@<W3>, const void **a5@<X8>)
{
  {
    operator new();
  }

  v10 = getConverterCache(void)::cache;
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  v15 = space;
  if (a2)
  {
    PCCFRefTraits<CGColorSpace *>::retain(a2);
    space = v15;
  }

  v13 = space;
  v14 = a2;
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
    a2 = v14;
  }

  v12 = a2;
  if (a2)
  {
    PCCFRefTraits<CGColorSpace *>::retain(a2);
  }

  PCCachedFunctionImpl<PCCFRef<vImageConverter *>,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>::operator()(v10, &v13, a3, &v12, a4, a5);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v12);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v13);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v14);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v15);
}

void sub_25FBAC804(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x1020C404DE315E0);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::ClampBuffer::ClampBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 20) = a5;
  *(a1 + 48) = 0u;
  v6 = (a1 + 48);
  *(a1 + 64) = 0u;
  if (a5)
  {
    v7 = a3 * a2;
    if (v7 < 6)
    {
      v8 = a1 + 24;
    }

    else
    {
      std::vector<unsigned int>::resize((a1 + 48), v7);
      v8 = *v6;
    }

    *(a1 + 72) = v8;
  }

  return a1;
}

void sub_25FBAC8EC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

vImage_Error dovImageTransform(vImagePixelCount a1, vImageConverterRef converter, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  srcs.data = *a3;
  srcs.height = 1;
  srcs.width = a1;
  srcs.rowBytes = v4 * 4 * a1;
  v5 = *(a4 + 8);
  v7.data = *a4;
  v7.height = 1;
  v7.width = a1;
  v7.rowBytes = v5 * 4 * a1;
  return vImageConvert_AnyToAny(converter, &srcs, &v7, 0, 0);
}

uint64_t clampComponents(uint64_t result, float *a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    if (result)
    {
      v4 = 0;
      v5 = a3 - (a4 < 3);
      v6 = &a2[a4 == 1];
      do
      {
        if (v5)
        {
          for (i = 0; i != v5; ++i)
          {
            v8 = v6[i];
            if (v8 <= 1.0)
            {
              v9 = v6[i];
            }

            else
            {
              v9 = 1.0;
            }

            if (v8 >= 0.0)
            {
              v10 = v9;
            }

            else
            {
              v10 = 0.0;
            }

            v6[i] = v10;
          }
        }

        ++v4;
        v6 += a3;
      }

      while (v4 != result);
    }
  }

  else
  {
    for (j = a3 * result; j; --j)
    {
      if (*a2 <= 1.0)
      {
        v12 = *a2;
      }

      else
      {
        v12 = 1.0;
      }

      if (*a2 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      *a2++ = v13;
    }
  }

  return result;
}

void PCCachedFunctionImpl<PCCFRef<vImageConverter *>,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>::operator()(uint64_t a1@<X0>, CGColorSpace **a2@<X1>, int a3@<W2>, CGColorSpace **a4@<X3>, int a5@<W4>, const void **a6@<X8>)
{
  v22 = a5;
  v23 = a3;
  v10 = (a1 + 32);
  v21[2] = (a1 + 32);
  PCSpinLock::lock((a1 + 32));
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJ7PCCFRefIP12CGColorSpaceEN11PCColorUtil11AlphaFormatES6_S8_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S8_S6_S8_EJEJEJKS6_KS8_SB_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(v20, a2, &v23, a4, &v22);
  v19 = 0;
  PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::findValue(*(a1 + 40), v20, &v19, a6);
  if ((v19 & 1) == 0)
  {
    v11 = *a2;
    v17 = v11;
    if (v11)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v11);
    }

    v12 = v23;
    v13 = *a4;
    v16 = v13;
    if (v13)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v13);
    }

    std::function<PCCFRef<vImageConverter *> ()(PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat)>::operator()(a1, &v17, v12, &v16, v22);
    v14 = *a6;
    v15 = v18;
    if (*a6 && v14 != v18)
    {
      PCCFRefTraits<vImageConverter *>::release(v14);
      v15 = v18;
    }

    *a6 = v15;
    v18 = 0;
    PCCFRef<vImageConverter *>::~PCCFRef(&v18);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v16);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v17);
    PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::addValue(*(a1 + 40), v20, a6, 0);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(v21);
  PCCFRef<CGColorSpace *>::~PCCFRef(v20);
  PCSpinLock::unlock(v10);
}

void sub_25FBACB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColorSpace *a9, CGColorSpace *a10, const void *a11, uint64_t a12, CGColorSpace *a13, uint64_t a14, CGColorSpace *a15, uint64_t a16, os_unfair_lock_s *a17)
{
  PCCFRef<vImageConverter *>::~PCCFRef(&a11);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a9);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a10);
  PCCFRef<vImageConverter *>::~PCCFRef(v17);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a15);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a13);
  PCLockSentry<PCSpinLock>::~PCLockSentry(&a17);
  _Unwind_Resume(a1);
}

void PCCachedFunctionImpl<PCCFRef<vImageConverter *>,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>::PCCachedFunctionImpl<PCCFRef<vImageConverter *> (*)(PCCFRef<CGColorSpace *> const&,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *> const&,PCColorUtil::AlphaFormat)>(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (a2)
  {
    *a1 = &unk_287208A38;
    *(a1 + 8) = a2;
    *(a1 + 24) = a1;
  }

  *(a1 + 32) = 0;
  operator new();
}

void sub_25FBACC68(_Unwind_Exception *a1)
{
  PCSpinLock::~PCSpinLock(v2);
  std::__function::__value_func<PCCFRef<vImageConverter *> ()(PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<PCCFRef<vImageConverter *> (*)(PCCFRef const&<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef const&<CGColorSpace *>,PCColorUtil::AlphaFormat),std::allocator<PCCFRef<vImageConverter *> (*)(PCCFRef const&<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef const&<CGColorSpace *>,PCColorUtil::AlphaFormat)>,PCCFRef<vImageConverter *> ()(CGColorSpace,PCColorUtil::AlphaFormat,CGColorSpace,PCColorUtil::AlphaFormat)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287208A38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<PCCFRef<vImageConverter *> (*)(PCCFRef const&<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef const&<CGColorSpace *>,PCColorUtil::AlphaFormat),std::allocator<PCCFRef<vImageConverter *> (*)(PCCFRef const&<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef const&<CGColorSpace *>,PCColorUtil::AlphaFormat)>,PCCFRef<vImageConverter *> ()(CGColorSpace,PCColorUtil::AlphaFormat,CGColorSpace,PCColorUtil::AlphaFormat)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<PCCFRef<vImageConverter *> ()(PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::function<PCCFRef<vImageConverter *> ()(PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat)>::operator()(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v8 = a3;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, a2, &v8, a4, &v7);
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJ7PCCFRefIP12CGColorSpaceEN11PCColorUtil11AlphaFormatES6_S8_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S8_S6_S8_EJEJEJKS6_KS8_SB_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(uint64_t a1, CGColorSpace **a2, _DWORD *a3, CGColorSpace **a4, _DWORD *a5)
{
  v9 = *a2;
  *a1 = *a2;
  if (v9)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v9);
  }

  *(a1 + 8) = *a3;
  v10 = *a4;
  *(a1 + 16) = *a4;
  if (v10)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v10);
  }

  *(a1 + 24) = *a5;
  return a1;
}

uint64_t PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::findValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  result = std::__tree<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__map_value_compare<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>,true>,std::allocator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>>::find<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>(a1 + 24, a2);
  v11 = result;
  if (a1 + 32 == result)
  {
    *a3 = 0;
    *a4 = 0;
  }

  else
  {
    v8 = result;
    v9 = *(result + 64);
    *a4 = v9;
    if (v9)
    {
      PCCFRefTraits<vImageConverter *>::retain(v9);
    }

    v10 = *(a1 + 72) + 1;
    *(a1 + 72) = v10;
    *(v8 + 80) = v10;
    result = PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::bubble((a1 + 48), &v11);
    *a3 = 1;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__map_value_compare<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>,true>,std::allocator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>>::find<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>(&v9, v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>(&v10, a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

BOOL std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 < *a3)
  {
    return 1;
  }

  if (*a3 < *a2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = *(a3 + 8);
  if (v4 < v5)
  {
    return 1;
  }

  if (v5 < v4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v7 = *(a3 + 16);
  if (v6 < v7)
  {
    return 1;
  }

  if (v7 < v6)
  {
    return 0;
  }

  return *(a2 + 24) < *(a3 + 24);
}

uint64_t *PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::bubble(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1] - *result;
  v4 = *(*a2 + 88);
  v5 = (2 * v4) | 1;
  if (v5 >= v3 >> 3)
  {
LABEL_24:
    if (v4)
    {
      v17 = *(v2 + 8 * v4);
      do
      {
        v18 = v4 - 1;
        v19 = (v4 - 1) >> 1;
        v20 = *(v2 + 8 * v19);
        if (*(v20 + 80) <= *(v17 + 80))
        {
          break;
        }

        *(v2 + 8 * v4) = v20;
        *(v2 + 8 * v19) = v17;
        v2 = *result;
        *(*(*result + 8 * v4) + 88) = v4;
        v17 = *(v2 + 8 * v19);
        *(v17 + 88) = v19;
        v4 = (v4 - 1) >> 1;
      }

      while (v18 > 1);
    }

    return result;
  }

  v6 = 0;
  v7 = v3 >> 3;
  v8 = 2 * v4;
  v9 = *(v2 + 8 * v4);
  while (1)
  {
    v10 = v8 + 2;
    v11 = *(v9 + 80);
    v12 = v10 < v7 && v11 > *(*(v2 + 8 * v10) + 80);
    v13 = *(*(v2 + 8 * v5) + 80);
    if (v11 <= v13 && !v12)
    {
      break;
    }

    v15 = v11 > v13 && v12;
    if (v12)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    if (v15)
    {
      if (v13 <= *(*(v2 + 8 * v10) + 80))
      {
        v16 = v5;
      }

      else
      {
        v16 = v10;
      }
    }

    *(v2 + 8 * v4) = *(v2 + 8 * v16);
    *(v2 + 8 * v16) = v9;
    v2 = *result;
    *(*(*result + 8 * v4) + 88) = v4;
    v9 = *(v2 + 8 * v16);
    *(v9 + 88) = v16;
    v8 = 2 * v16;
    v6 = 1;
    v5 = (2 * v16) | 1;
    v4 = v16;
    if (v5 >= v7)
    {
      return result;
    }
  }

  if ((v6 & 1) == 0)
  {
    v4 = *(*a2 + 88);
    goto LABEL_24;
  }

  return result;
}

uint64_t *PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::addValue(uint64_t *result, uint64_t a2, const void **a3, unint64_t a4)
{
  v7 = result;
  if (result[11] >= a4 || result[13])
  {
    v8 = std::__tree<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__map_value_compare<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>,true>,std::allocator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>>::find<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>((result + 3), a2);
    v27 = v8;
    if (v7 + 4 == v8)
    {
      v16 = (v7[9] + 1);
      v7[9] = v16;
      v17 = *a3;
      v26[0] = v17;
      if (v17)
      {
        PCCFRefTraits<vImageConverter *>::retain(v17);
      }

      v26[1] = a4;
      v26[2] = v16;
      v26[3] = 0;
      std::pair<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat> const,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>::pair[abi:ne200100]<true,0>(v21, a2, v26);
      v24 = std::__tree<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__map_value_compare<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>,true>,std::allocator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>>::__emplace_unique_key_args<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::pair<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat> const,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>((v7 + 3), v21);
      v25 = v18;
      PCCFRef<vImageConverter *>::~PCCFRef(&v23);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v22);
      PCCFRef<CGColorSpace *>::~PCCFRef(v21);
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::add((v7 + 6), &v24);
      v7[10] += a4;
      if (!v7[13])
      {
        while (v7[10] > v7[11] || v7[5] > v7[12])
        {
          v20 = v7[6];
          if (v20 == v7[7])
          {
            break;
          }

          v21[0] = *v20;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::remove(v7 + 6, v21);
          v19 = v21[0];
          v7[10] -= *(v21[0] + 9);
          std::__tree<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__map_value_compare<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>,true>,std::allocator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>>::erase(v7 + 3, v19);
        }
      }

      return PCCFRef<vImageConverter *>::~PCCFRef(v26);
    }

    else
    {
      v9 = v8;
      PCCFRef<vImageConverter *>::operator=((v8 + 64), a3);
      v10 = v7[9] + 1;
      v7[9] = v10;
      *(v9 + 80) = v10;
      result = PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::bubble(v7 + 6, &v27);
      v11 = v27;
      v12 = (a4 - *(v27 + 72));
      if (v12)
      {
        v13 = &v12[v7[10]];
        v7[10] = v13;
        *(v11 + 72) = a4;
        if (!v7[13])
        {
          while (v13 > v7[11] || v7[5] > v7[12])
          {
            v15 = v7[6];
            if (v15 == v7[7])
            {
              break;
            }

            v21[0] = *v15;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::remove(v7 + 6, v21);
            v14 = v21[0];
            v7[10] -= *(v21[0] + 9);
            result = std::__tree<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__map_value_compare<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>,true>,std::allocator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>>::erase(v7 + 3, v14);
            v13 = v7[10];
          }
        }
      }
    }
  }

  return result;
}

void sub_25FBAD3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  PCCFRef<vImageConverter *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (v5 - *a1) >> 3;
  v7 = *a2;
  *(*a2 + 88) = v6;
  v8 = *(a1 + 16);
  if (v5 >= v8)
  {
    if ((v6 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 - v4;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v6 + 1))
    {
      v11 = v6 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v12);
    }

    *(8 * v6) = v7;
    v9 = 8 * v6 + 8;
    v13 = *(a1 + 8) - *a1;
    v14 = (8 * v6 - v13);
    memcpy(v14, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = v7;
    v9 = (v5 + 1);
  }

  *(a1 + 8) = v9;
  v16 = *(*a2 + 88);
  if (v16)
  {
    v17 = *a1;
    v18 = *(*a1 + 8 * v16);
    do
    {
      v19 = v16 - 1;
      v20 = (v16 - 1) >> 1;
      v21 = v17[v20];
      if (*(v21 + 80) <= *(v18 + 80))
      {
        break;
      }

      v17[v16] = v21;
      v17[v20] = v18;
      v17 = *a1;
      *(*(*a1 + 8 * v16) + 88) = v16;
      v18 = v17[v20];
      *(v18 + 88) = v20;
      v16 = (v16 - 1) >> 1;
    }

    while (v19 > 1);
  }
}

const void **PCCFRef<vImageConverter *>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      PCCFRefTraits<vImageConverter *>::release(v3);
      v4 = *a2;
    }

    *a1 = v4;
    if (*a2)
    {
      PCCFRefTraits<vImageConverter *>::retain(v4);
    }
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__map_value_compare<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>,true>,std::allocator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>>::__emplace_unique_key_args<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::pair<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat> const,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__map_value_compare<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>,true>,std::allocator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>>::__find_equal<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__map_value_compare<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>,true>,std::allocator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>>::__construct_node<std::pair<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat> const,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__map_value_compare<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>,true>,std::allocator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>>::__find_equal<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>(&v9, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>(&v10, (v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_25FBAD720(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat> const,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>::__tuple_impl(a1, a2);
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    PCCFRefTraits<vImageConverter *>::retain(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  return a1;
}

void sub_25FBAD788(_Unwind_Exception *a1)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(v1 + 2);
  PCCFRef<CGColorSpace *>::~PCCFRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v5);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    PCCFRef<vImageConverter *>::~PCCFRef(__p + 8);
    PCCFRef<CGColorSpace *>::~PCCFRef(__p + 6);
    PCCFRef<CGColorSpace *>::~PCCFRef(__p + 4);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t std::pair<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat> const,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>::pair[abi:ne200100]<true,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>::__tuple_impl(a1, a2);
  v5 = *a3;
  *(a1 + 32) = *a3;
  if (v5)
  {
    PCCFRefTraits<vImageConverter *>::retain(v5);
  }

  v6 = *(a3 + 8);
  *(a1 + 56) = *(a3 + 24);
  *(a1 + 40) = v6;
  return a1;
}

void sub_25FBAD8C4(_Unwind_Exception *a1)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(v1 + 2);
  PCCFRef<CGColorSpace *>::~PCCFRef(v1);
  _Unwind_Resume(a1);
}

CGColorSpace **std::pair<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat> const,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>::~pair(uint64_t a1)
{
  PCCFRef<vImageConverter *>::~PCCFRef((a1 + 32));
  PCCFRef<CGColorSpace *>::~PCCFRef((a1 + 16));

  return PCCFRef<CGColorSpace *>::~PCCFRef(a1);
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::remove(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a2 + 88);
  v4 = ((a1[1] - *a1) >> 3) - 1;
  if (v3 == v4)
  {

    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v3);
  }

  else
  {
    *(*a1 + 8 * v3) = *(*a1 + 8 * v4);
    *(*(*a1 + 8 * v3) + 88) = v3;
    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v4);
    v5 = *a1 + 8 * v3;

    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::bubble(a1, v5);
  }
}

uint64_t *std::__tree<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__map_value_compare<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>,true>,std::allocator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, a2);
  PCCFRef<vImageConverter *>::~PCCFRef((a2 + 64));
  PCCFRef<CGColorSpace *>::~PCCFRef((a2 + 48));
  PCCFRef<CGColorSpace *>::~PCCFRef((a2 + 32));
  operator delete(a2);
  return v3;
}

const void **PCCFRef<vImageConverter *>::~PCCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    PCCFRefTraits<vImageConverter *>::release(v2);
  }

  return a1;
}

float64_t getScaleTranslate(float64x2_t *a1, uint64_t a2, float64x2_t *a3)
{
  v9 = 0uLL;
  v10 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v11 = _Q0;
  v12 = 0x3FF0000000000000;
  return getScaleTranslate(a1, &v9, &v11, a2, a3);
}

float64_t getScaleTranslate(float64x2_t *a1, float64x2_t *a2, double *a3, uint64_t a4, float64x2_t *a5)
{
  getScale(a1, a2->f64, a3, a4, 0);
  PCMatrix44Tmpl<double>::transform<double>(a1->f64, a2->f64, a5->f64);
  *a5 = vsubq_f64(*a5, *a2);
  result = a5[1].f64[0] - a2[1].f64[0];
  a5[1].f64[0] = result;
  return result;
}

void getScale(float64x2_t *a1, double *a2, double *a3, uint64_t a4, int a5)
{
  v16 = 0u;
  v17 = 0u;
  PCMatrix44Tmpl<double>::transform<double>(a1->f64, a2, &v16);
  PCMatrix44Tmpl<double>::jacobianPost(a1, &v16, v15);
  for (i = 0; i != 24; i += 8)
  {
    v10 = *&v15[i + 32];
    v11 = *&v15[i + 64];
    v12 = a3[1];
    v13 = *&v15[i] * *a3;
    *&v16 = *&v15[i];
    *(&v16 + 1) = v10;
    *&v17 = v11;
    v14 = sqrt(v13 * v13 + v10 * v12 * (v10 * v12) + v11 * a3[2] * (v11 * a3[2]));
    *(a4 + i) = v14;
    if (a5)
    {
      if (*(&v16 + i) < 0.0)
      {
        *(a4 + i) = -v14;
      }
    }
  }
}

float64_t getScaleTranslateFlip(float64x2_t *a1, uint64_t a2, float64x2_t *a3)
{
  v9 = 0uLL;
  v10 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v11 = _Q0;
  v12 = 0x3FF0000000000000;
  return getScaleTranslateFlip(a1, &v9, &v11, a2, a3);
}

float64_t getScaleTranslateFlip(float64x2_t *a1, float64x2_t *a2, double *a3, uint64_t a4, float64x2_t *a5)
{
  getScale(a1, a2->f64, a3, a4, 1);
  PCMatrix44Tmpl<double>::transform<double>(a1->f64, a2->f64, a5->f64);
  *a5 = vsubq_f64(*a5, *a2);
  result = a5[1].f64[0] - a2[1].f64[0];
  a5[1].f64[0] = result;
  return result;
}

__n128 getScale(float64x2_t *a1, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  __asm { FMOV            V0.2D, #1.0 }

  v9 = _Q0;
  v10 = 0x3FF0000000000000;
  getScale(a1, v8, &v9, a2, 0);
  return result;
}

__n128 getScale(float64x2_t *a1, double *a2, uint64_t a3)
{
  __asm { FMOV            V0.2D, #1.0 }

  v9 = _Q0;
  v10 = 0x3FF0000000000000;
  getScale(a1, a2, &v9, a3, 0);
  return result;
}

float64_t getScaleTranslateRotate(float64x2_t *a1, uint64_t a2, float64x2_t *a3, long double *a4)
{
  v10 = 0uLL;
  v11 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v12 = _Q0;
  v13 = 0x3FF0000000000000;
  return getScaleTranslateRotate(a1, &v10, &v12, a2, a3, a4);
}

float64_t getScaleTranslateRotate(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, uint64_t a4, float64x2_t *a5, long double *a6)
{
  memset(v23, 0, sizeof(v23));
  PCMatrix44Tmpl<double>::transform<double>(a1->f64, a2->f64, v23);
  PCMatrix44Tmpl<double>::jacobianPost(a1, v23, v19);
  for (i = 0; i != 3; ++i)
  {
    *&v13.f64[0] = v19[i];
    v14 = *&v22[i * 8] * a3[1].f64[0];
    *&v13.f64[1] = v19[i + 4];
    v15 = vmulq_f64(v13, *a3);
    *(a4 + i * 8) = sqrt(vaddvq_f64(vmulq_f64(v15, v15)) + v14 * v14);
  }

  v17 = *v19;
  v16 = *&v19[1];
  if (v17 * v17 + v16 * v16 <= v20 * v20 + v21 * v21)
  {
    v16 = -v20;
    v17 = v21;
  }

  *a6 = atan2(v16, v17);
  PCMatrix44Tmpl<double>::transform<double>(a1->f64, a2->f64, a5->f64);
  *a5 = vsubq_f64(*a5, *a2);
  result = a5[1].f64[0] - a2[1].f64[0];
  a5[1].f64[0] = result;
  return result;
}

float64x2_t perspectiveToAffine(float64x2_t *a1, double *a2, double *a3)
{
  v22 = 0x3FF0000000000000;
  v19 = 0x3FF0000000000000;
  v16[5] = 1.0;
  v16[0] = 1.0;
  memset(&v16[1], 0, 32);
  v17 = 0u;
  v18 = 0u;
  v20 = 0u;
  v21 = 0u;
  memset(v23, 0, sizeof(v23));
  PCMatrix44Tmpl<double>::transform<double>(a1->f64, a2, v23);
  PCMatrix44Tmpl<double>::jacobianPost(a1, v23, &v14);
  for (i = 0; i != 16; i += 4)
  {
    v7 = &v16[i];
    v8 = *&v15[i];
    *v7 = *&v15[i - 2];
    *(v7 + 1) = v8;
  }

  v14 = 0u;
  *v15 = 0u;
  PCMatrix44Tmpl<double>::transform<double>(a1->f64, a2, &v14);
  PCMatrix44Tmpl<double>::jacobianPost(a1, &v14, v16);
  v14 = 0uLL;
  v15[0] = 0.0;
  PCMatrix44Tmpl<double>::transform<double>(a1->f64, a2, &v14);
  PCMatrix44Tmpl<double>::rightTranslate(v16, -*a2, -a2[1], -a2[2]);
  *&v9.f64[0] = v14;
  *&result.f64[0] = *&PCMatrix44Tmpl<double>::leftTranslate(v16, v9, *(&v14 + 1), v15[0]);
  if (v16 != a3)
  {
    for (j = 0; j != 16; j += 4)
    {
      v12 = &a3[j];
      result = *&v16[j];
      v13 = *&v16[j + 2];
      *v12 = result;
      *(v12 + 1) = v13;
    }
  }

  return result;
}

uint64_t pointInPolygon(double *a1, uint64_t a2, int a3)
{
  v3 = a3 - 1;
  if (a3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = a1[1];
    v7 = (a2 + 8);
    do
    {
      v8 = *v7;
      v9 = *(a2 + 16 * v3 + 8);
      v10 = *v7 <= v6 && v6 < v9;
      if (v10 || (v6 < v8 ? (v11 = v9 > v6) : (v11 = 1), !v11))
      {
        if (*a1 < *(v7 - 1) + (v6 - v8) * (*(a2 + 16 * v3) - *(v7 - 1)) / (*(a2 + 16 * v3 + 8) - v8))
        {
          v5 ^= 1u;
        }
      }

      v3 = v4;
      v7 += 2;
      ++v4;
    }

    while (a3 != v4);
  }

  return v5 & 1;
}

BOOL PCVector3<double>::normalize(float64x2_t *a1, double a2)
{
  v2 = *a1;
  v3 = a1[1].f64[0];
  v4 = sqrt(vaddvq_f64(vmulq_f64(v2, v2)) + v3 * v3);
  v5 = v4 >= a2 || v4 <= -a2;
  if (v5)
  {
    *a1 = vdivq_f64(v2, vdupq_lane_s64(*&v4, 0));
    a1[1].f64[0] = v3 / v4;
  }

  return v5;
}

double PCCalcRaySphereIntersection<double>(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, float64x2_t a5)
{
  v5 = a1[1].f64[0];
  v6 = *a1;
  v7 = vsubq_f64(*a1, *a3);
  v8 = *a2;
  v9 = vmulq_f64(v7, *a2);
  v10.f64[1] = a1->f64[1];
  v10.f64[0] = v5;
  v11.f64[1] = a3->f64[1];
  v11.f64[0] = a3[1].f64[0];
  v12 = vsubq_f64(v10, v11);
  v13 = vaddq_f64(vmulq_f64(v7, v7), vdupq_laneq_s64(vmulq_f64(v12, v12), 1));
  v14.f64[0] = v12.f64[0];
  v14.f64[1] = a2->f64[1];
  v15 = a2[1].f64[0];
  v16 = vaddq_f64(vzip1q_s64(v13, v9), vmulq_f64(v12, v14));
  v17 = vdupq_lane_s64(*&v12.f64[0], 0);
  v17.f64[0] = a5.f64[0];
  a5.f64[1] = v15;
  v18 = vmulq_f64(v17, a5);
  v17.f64[0] = vsubq_f64(v18, v16).f64[0];
  v19 = vaddq_f64(v18, v16);
  v19.f64[0] = v17.f64[0] + vmuld_lane_f64(v19.f64[1], v19, 1);
  if (v19.f64[0] < 0.0)
  {
    v20 = vaddvq_f64(vmulq_f64(vsubq_f64(*a3, v6), v8)) + (a3[1].f64[0] - v5) * v15;
  }

  else
  {
    v20 = -v19.f64[1] - sqrt(v19.f64[0]);
  }

  result = v5 + v15 * v20;
  *a4 = vaddq_f64(v6, vmulq_n_f64(v8, v20));
  a4[1].f64[0] = result;
  return result;
}

BOOL PCRayIntersectsBox(uint64_t a1, double *a2, float64x2_t *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  if (vabdd_f64(v9, v10) >= 0.0000001)
  {
    v15 = 0;
    v23 = a2[1];
    v24 = v8;
    v25 = v10;
    v26 = 0;
    v27 = 0;
    v28 = 0x3FF0000000000000;
    v29 = v5;
    v30 = v7;
    v31 = v9;
    v32 = 0;
    v33 = 0;
    v34 = 0xBFF0000000000000;
    v35 = v6;
    v36 = v8;
    v37 = v10;
    v38 = xmmword_260342700;
    v39 = 0;
    v40 = v5;
    v41 = v7;
    v42 = v9;
    v43 = xmmword_26034D970;
    v44 = 0;
    v45 = v5;
    v46 = v7;
    v47 = v9;
    v49 = 0;
    v50 = 0;
    v48 = 0xBFF0000000000000;
    v51 = v6;
    v52 = v8;
    v53 = v10;
    v55 = 0;
    v56 = 0;
    v11 = 1;
    v16 = &v23;
    v54 = 0x3FF0000000000000;
    do
    {
      if (PCPlane<double>::intersect(v16, a1, a3))
      {
        if (v16[3] != 0.0 || (a3->f64[0] >= v5 ? (v17 = a3->f64[0] > v6) : (v17 = 1), !v17))
        {
          if (v16[4] != 0.0 || ((v18 = a3->f64[1], v18 >= v7) ? (v19 = v18 > v8) : (v19 = 1), !v19))
          {
            if (v16[5] != 0.0)
            {
              break;
            }

            v20 = a3[1].f64[0];
            if (v20 >= v9 && v20 <= v10)
            {
              break;
            }
          }
        }
      }

      v11 = v15 < 5;
      v16 += 6;
      ++v15;
    }

    while (v15 != 6);
  }

  else
  {
    v23 = *a2;
    v24 = v7;
    v25 = v9;
    v26 = 0;
    v27 = 0;
    v28 = 0xBFF0000000000000;
    if (!PCPlane<double>::intersect(&v23, a1, a3))
    {
      return 0;
    }

    v11 = 0;
    if (v6 - v5 >= 0.0 && v8 - v7 >= 0.0)
    {
      v12 = a3->f64[1];
      if (v5 <= a3->f64[0] && v5 + v6 - v5 >= a3->f64[0] && v7 <= v12)
      {
        return v7 + v8 - v7 >= v12;
      }

      return 0;
    }
  }

  return v11;
}

BOOL PCPlane<double>::intersect(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v5 = sqrt(vaddvq_f64(vmulq_f64(v3, v3)) + v4 * v4);
  if (fabs(v5) >= 0.000000100000001)
  {
    v3 = vdivq_f64(v3, vdupq_lane_s64(*&v5, 0));
    v4 = v4 / v5;
  }

  v6 = *(a2 + 16);
  v7 = *(a2 + 40);
  v8.f64[0] = *(a2 + 24);
  v8.f64[1] = *(a1 + 8) - *(a2 + 8);
  v9 = vmulq_f64(v3, v8);
  v8.f64[1] = *(a2 + 32);
  v8.f64[0] = *a1 - *a2;
  v10 = vmulq_f64(v3, v8);
  v11.f64[0] = v7;
  v11.f64[1] = *(a1 + 16) - v6;
  v12 = vaddq_f64(vaddq_f64(v9, vextq_s8(v10, v10, 8uLL)), vmulq_n_f64(v11, v4));
  *&v13 = *&vdivq_f64(vdupq_laneq_s64(v12, 1), v12);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    *a3 = vaddq_f64(*a2, vmulq_n_f64(*(a2 + 24), v13));
    a3[1].f64[0] = v6 + v13 * v7;
  }

  return (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
}

float64x2_t PCClipLineToPlane2D@<Q0>(double *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X8>)
{
  memset(v23, 0, sizeof(v23));
  v21 = 0;
  v22 = 0x3FF0000000000000;
  v19 = 0u;
  v20 = 0u;
  planeIntersection<double>(a1, (a1 + 3), &v19, &v20 + 8, v23, (&v23[1] + 8));
  result = v23[0];
  v8 = *(&v23[1] + 8);
  a4->f64[0] = 0.0;
  a4->f64[1] = 0.0;
  v9 = vsubq_f64(vaddq_f64(result, v8), result);
  v10 = vsubq_f64(*a3, *a2);
  v11 = vextq_s8(v10, v10, 8uLL);
  v12 = vmulq_f64(v9, v11);
  v13 = vsubq_f64(vdupq_laneq_s64(v12, 1), v12);
  if (v13.f64[0] != 0.0)
  {
    v14 = vsubq_f64(result, *a2);
    v15 = vmulq_f64(v9, vextq_s8(v14, v14, 8uLL));
    v16 = vdivq_f64(vsubq_f64(vdupq_laneq_s64(v15, 1), v15), v13).f64[0];
    if (v16 >= 0.0 && v16 <= 1.0)
    {
      v18 = vmulq_f64(v11, v14);
      result = vaddq_f64(result, vmulq_n_f64(v8, vdivq_f64(vsubq_f64(v18, vdupq_laneq_s64(v18, 1)), v13).f64[0]));
      *a4 = result;
    }
  }

  return result;
}

void PCClipLinesToPlane2D(uint64_t a1, float64x2_t *a2, int a3, uint64_t a4, uint64_t *a5)
{
  std::vector<BOOL>::resize(a5, a3, 0);
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = *a1;
    v11 = *(a1 + 24);
    v12 = (0.0 - *(a1 + 16)) * *(a1 + 40);
    v13 = *a5;
    v14 = a3;
    do
    {
      v15 = v9 >> 6;
      v16 = 1 << v9;
      if (vaddvq_f64(vmulq_f64(vsubq_f64(a2[v9], v10), v11)) + v12 <= 0.0)
      {
        v17 = *(v13 + 8 * v15) & ~v16;
      }

      else
      {
        v17 = *(v13 + 8 * v15) | v16;
      }

      *(v13 + 8 * v15) = v17;
      ++v9;
    }

    while (a3 != v9);
    v18 = 0;
    v19 = a4 + 16;
    v20 = a3 - 1;
    v21 = a2;
    do
    {
      v22 = 1 << v18;
      if (v20 == v18)
      {
        v23 = 0;
      }

      else
      {
        v23 = v18 + 1;
      }

      v24 = *(*a5 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v23);
      if ((*(*a5 + 8 * (v18 >> 6)) & v22) != 0)
      {
        if (!v24)
        {
          goto LABEL_15;
        }

        *(v19 - 16) = *v21;
        *v19 = a2[v23];
      }

      else
      {
        if (v24)
        {
LABEL_15:
          v25 = &a2[v23];
          PCClipLineToPlane2D(a1, v21, v25, &v29);
          v26 = (v19 - 16);
          if ((*(*a5 + 8 * (v18 >> 6)) & v22) != 0)
          {
            *v26 = *v21;
            v27 = v29;
          }

          else
          {
            *v26 = v29;
            v27 = *v25;
          }

          *v19 = v27;
          goto LABEL_20;
        }

        *(v19 - 16) = 0;
        *(v19 - 8) = 0;
        *v19 = 0;
        *(v19 + 8) = 0;
      }

LABEL_20:
      ++v18;
      ++v21;
      v19 += 32;
    }

    while (v14 != v18);
  }
}

double PCMatrix44Tmpl<double>::jacobianPost@<D0>(float64x2_t *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 24) = 0;
  *(a3 + 56) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  v4 = a2[2];
  v3 = a2[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a1[6];
  v8 = vdupq_lane_s64(COERCE__INT64(v3 * v3), 0);
  *a3 = vdivq_f64(vsubq_f64(vmulq_n_f64(*a1, v3), vmulq_n_f64(v7, *a2)), v8);
  *(a3 + 32) = vdivq_f64(vsubq_f64(vmulq_n_f64(a1[2], v3), vmulq_n_f64(v7, v6)), v8);
  *(a3 + 64) = vdivq_f64(vsubq_f64(vmulq_n_f64(a1[4], v3), vmulq_n_f64(v7, v4)), v8);
  v7.f64[0] = a1[7].f64[0];
  *(a3 + 16) = (v3 * a1[1].f64[0] - v5 * v7.f64[0]) / (v3 * v3);
  *(a3 + 48) = (v3 * a1[3].f64[0] - v6 * v7.f64[0]) / (v3 * v3);
  result = (v3 * a1[5].f64[0] - v4 * v7.f64[0]) / (v3 * v3);
  *(a3 + 80) = result;
  return result;
}

BOOL planeIntersection<double>(double *a1, uint64_t a2, double *a3, uint64_t a4, double *a5, float64x2_t *a6)
{
  v6 = *(a2 + 8);
  v7 = *(a4 + 8);
  *&v8.f64[0] = vdupq_laneq_s64(v7, 1).u64[0];
  v8.f64[1] = *a4;
  v9 = vmulq_f64(v6, v8);
  *&v8.f64[0] = vdupq_laneq_s64(v6, 1).u64[0];
  v8.f64[1] = *a2;
  v10 = vmulq_f64(v7, v8);
  v11 = vsubq_f64(v9, v10);
  v12 = *a2 * v7.f64[0];
  v6.f64[0] = *a4 * v6.f64[0];
  v13 = v12 - v6.f64[0];
  *a6 = v11;
  a6[1].f64[0] = v12 - v6.f64[0];
  v14 = vabdq_f64(v9, v10);
  v15 = *&vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v14, 1), v14)) & 1;
  if (vabdd_f64(v12, v6.f64[0]) <= fabs(a6->f64[v15]))
  {
    v16 = v15;
  }

  else
  {
    v16 = 2;
  }

  v17 = a6->f64[v16];
  if (v17 != 0.0)
  {
    v18 = *(a2 + 8);
    v19 = *(a2 + 16);
    v20 = *a2 * *a1 + v18 * a1[1] + v19 * a1[2];
    v21 = *(a4 + 8);
    v22 = *(a4 + 16);
    v23 = *a4 * *a3 + v21 * a3[1] + v22 * a3[2];
    if (v16 == 2)
    {
      *a5 = (v20 * v21 - v18 * v23) / v13;
      a5[1] = (v23 * *a2 - v20 * *a4) / v13;
      v26 = 0.0;
    }

    else
    {
      if (v16 == 1)
      {
        *a5 = (v19 * v23 - v20 * v22) / v11.f64[1];
        a5[1] = 0.0;
        v24 = v20 * *a4 - v23 * *a2;
        v25 = a6->f64[1];
      }

      else
      {
        *a5 = 0.0;
        v25 = a6->f64[0];
        a5[1] = (v20 * v22 - v19 * v23) / a6->f64[0];
        v24 = v23 * *(a2 + 8) - v20 * *(a4 + 8);
      }

      v26 = v24 / v25;
    }

    a5[2] = v26;
    PCVector3<double>::normalize(a6, 0.000000100000001);
  }

  return v17 != 0.0;
}

void sub_25FBAFE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

int8x8_t *PCHash128::addData(int8x8_t *this, const unsigned __int8 *a2, size_t __n)
{
  v3 = __n;
  v4 = a2;
  v5 = this;
  v12 = *MEMORY[0x277D85DE8];
  if (!*&vorr_s8(*this, *&vextq_s8(*this->i8, *this->i8, 8uLL)))
  {
    *this->i8 = xmmword_26034C050;
  }

  if (__n >= 0x40)
  {
    v6 = a2 & 3;
    do
    {
      if (v6)
      {
        v7 = *(v4 + 1);
        v11[0] = *v4;
        v11[1] = v7;
        v8 = *(v4 + 3);
        v11[2] = *(v4 + 2);
        v11[3] = v8;
        v9 = v11;
        v10 = v5;
      }

      else
      {
        v10 = v5;
        v9 = v4;
      }

      this = PCHash128::transform(v10, v9);
      v4 += 64;
      v3 -= 64;
    }

    while (v3 > 0x3F);
  }

  if (v3)
  {
    memcpy(v11, v4, v3);
    memcpy(v11 + v3, &PADDING, 64 - v3);
    return PCHash128::transform(v5, v11);
  }

  return this;
}

void PCHash128::PCHash128(PCHash128 *this, PCString *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  CStr = PCString::createCStr(a2);
  v4 = 0;
  v5 = MEMORY[0x277D85DE0];
  v6 = CStr;
LABEL_2:
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = v6[v7];
    if ((v9 & 0x80000000) != 0 || (*(v5 + 4 * v9 + 60) & 0x10000) == 0)
    {
      break;
    }

    v10 = 16 * v8;
    ++v7;
    if (v9 - 65 <= 5)
    {
      v11 = v10 + v9 - 55;
    }

    else
    {
      v11 = v10;
    }

    if (v9 - 97 <= 5)
    {
      v12 = v10 + v9 - 87;
    }

    else
    {
      v12 = v11;
    }

    v8 = v9 + v10 - 48;
    if (v9 - 48 > 9)
    {
      v8 = v12;
    }

    if (v7 == 8)
    {
      *(&v13 + v4++) = v8;
      v6 += 8;
      if (v4 != 4)
      {
        goto LABEL_2;
      }

      *this = v13;
      break;
    }
  }

  free(CStr);
}

void PCHash128::PCHash128(PCHash128 *this, int a2, int a3, int a4, int a5)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
}

PCString *PCHash128::getString@<X0>(PCHash128 *this@<X0>, PCString *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x40uLL, "%08x%08x%08x%08x", *this, *(this + 1), *(this + 2), *(this + 3));
  return PCString::PCString(a2, __str);
}

_DWORD *PCHash128::transform(_DWORD *this, const unsigned int *a2)
{
  v2 = this[1];
  v4 = this[2];
  v3 = this[3];
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v14 = a2[9];
  v15 = a2[10];
  v16 = a2[11];
  v17 = a2[12];
  v18 = a2[13];
  v20 = a2[14];
  v19 = a2[15];
  HIDWORD(v21) = *this + v6 - 680876936 + (v3 & ~v2 | v4 & v2);
  LODWORD(v21) = HIDWORD(v21);
  v22 = (v21 >> 25) + v2;
  HIDWORD(v21) = v3 + v5 - 389564586 + (v22 & v2 | v4 & ~v22);
  LODWORD(v21) = HIDWORD(v21);
  v23 = (v21 >> 20) + v22;
  HIDWORD(v21) = v4 + v8 + 606105819 + (v23 & v22 | v2 & ~v23);
  LODWORD(v21) = HIDWORD(v21);
  v24 = (v21 >> 15) + v23;
  HIDWORD(v21) = v2 + v7 - 1044525330 + (v24 & v23 | v22 & ~v24);
  LODWORD(v21) = HIDWORD(v21);
  v25 = (v21 >> 10) + v24;
  HIDWORD(v21) = v10 + v22 - 176418897 + (v25 & v24 | v23 & ~v25);
  LODWORD(v21) = HIDWORD(v21);
  v26 = (v21 >> 25) + v25;
  HIDWORD(v21) = v9 + v23 + 1200080426 + (v26 & v25 | v24 & ~v26);
  LODWORD(v21) = HIDWORD(v21);
  v27 = (v21 >> 20) + v26;
  HIDWORD(v21) = v11 + v24 - 1473231341 + (v27 & v26 | v25 & ~v27);
  LODWORD(v21) = HIDWORD(v21);
  v28 = (v21 >> 15) + v27;
  HIDWORD(v21) = v12 + v25 - 45705983 + (v28 & v27 | v26 & ~v28);
  LODWORD(v21) = HIDWORD(v21);
  v29 = (v21 >> 10) + v28;
  HIDWORD(v21) = v13 + v26 + 1770035416 + (v29 & v28 | v27 & ~v29);
  LODWORD(v21) = HIDWORD(v21);
  v30 = (v21 >> 25) + v29;
  HIDWORD(v21) = v14 + v27 - 1958414417 + (v30 & v29 | v28 & ~v30);
  LODWORD(v21) = HIDWORD(v21);
  v31 = (v21 >> 20) + v30;
  HIDWORD(v21) = v15 + v28 - 42063 + (v31 & v30 | v29 & ~v31);
  LODWORD(v21) = HIDWORD(v21);
  v32 = (v21 >> 15) + v31;
  HIDWORD(v21) = v16 + v29 - 1990404162 + (v32 & v31 | v30 & ~v32);
  LODWORD(v21) = HIDWORD(v21);
  v33 = (v21 >> 10) + v32;
  HIDWORD(v21) = v17 + v30 + 1804603682 + (v33 & v32 | v31 & ~v33);
  LODWORD(v21) = HIDWORD(v21);
  v34 = (v21 >> 25) + v33;
  HIDWORD(v21) = v18 + v31 - 40341101 + (v34 & v33 | v32 & ~v34);
  LODWORD(v21) = HIDWORD(v21);
  v35 = (v21 >> 20) + v34;
  HIDWORD(v21) = v20 + v32 - 1502002290 + (v35 & v34 | v33 & ~v35);
  LODWORD(v21) = HIDWORD(v21);
  v36 = (v21 >> 15) + v35;
  HIDWORD(v21) = v19 + v33 + 1236535329 + (v36 & v35 | v34 & ~v36);
  LODWORD(v21) = HIDWORD(v21);
  v37 = (v21 >> 10) + v36;
  HIDWORD(v21) = v5 + v34 - 165796510 + (v37 & v35 | v36 & ~v35);
  LODWORD(v21) = HIDWORD(v21);
  v38 = (v21 >> 27) + v37;
  HIDWORD(v21) = v11 + v35 - 1069501632 + (v38 & v36 | v37 & ~v36);
  LODWORD(v21) = HIDWORD(v21);
  v39 = (v21 >> 23) + v38;
  HIDWORD(v21) = v16 + v36 + 643717713 + (v39 & v37 | v38 & ~v37);
  LODWORD(v21) = HIDWORD(v21);
  v40 = (v21 >> 18) + v39;
  HIDWORD(v21) = v6 + v37 - 373897302 + (v40 & v38 | v39 & ~v38);
  LODWORD(v21) = HIDWORD(v21);
  v41 = (v21 >> 12) + v40;
  HIDWORD(v21) = v9 + v38 - 701558691 + (v41 & v39 | v40 & ~v39);
  LODWORD(v21) = HIDWORD(v21);
  v42 = (v21 >> 27) + v41;
  HIDWORD(v21) = v15 + v39 + 38016083 + (v42 & v40 | v41 & ~v40);
  LODWORD(v21) = HIDWORD(v21);
  v43 = (v21 >> 23) + v42;
  HIDWORD(v21) = v19 + v40 - 660478335 + (v43 & v41 | v42 & ~v41);
  LODWORD(v21) = HIDWORD(v21);
  v44 = (v21 >> 18) + v43;
  HIDWORD(v21) = v10 + v41 - 405537848 + (v44 & v42 | v43 & ~v42);
  LODWORD(v21) = HIDWORD(v21);
  v45 = (v21 >> 12) + v44;
  HIDWORD(v21) = v14 + v42 + 568446438 + (v45 & v43 | v44 & ~v43);
  LODWORD(v21) = HIDWORD(v21);
  v46 = (v21 >> 27) + v45;
  HIDWORD(v21) = v20 + v43 - 1019803690 + (v46 & v44 | v45 & ~v44);
  LODWORD(v21) = HIDWORD(v21);
  v47 = (v21 >> 23) + v46;
  HIDWORD(v21) = v7 + v44 - 187363961 + (v47 & v45 | v46 & ~v45);
  LODWORD(v21) = HIDWORD(v21);
  v48 = (v21 >> 18) + v47;
  HIDWORD(v21) = v13 + v45 + 1163531501 + (v48 & v46 | v47 & ~v46);
  LODWORD(v21) = HIDWORD(v21);
  v49 = (v21 >> 12) + v48;
  HIDWORD(v21) = v18 + v46 - 1444681467 + (v49 & v47 | v48 & ~v47);
  LODWORD(v21) = HIDWORD(v21);
  v50 = (v21 >> 27) + v49;
  HIDWORD(v21) = v8 + v47 - 51403784 + (v50 & v48 | v49 & ~v48);
  LODWORD(v21) = HIDWORD(v21);
  v51 = (v21 >> 23) + v50;
  HIDWORD(v21) = v12 + v48 + 1735328473 + (v51 & v49 | v50 & ~v49);
  LODWORD(v21) = HIDWORD(v21);
  v52 = (v21 >> 18) + v51;
  HIDWORD(v21) = v17 + v49 - 1926607734 + (v52 & v50 | v51 & ~v50);
  LODWORD(v21) = HIDWORD(v21);
  v53 = (v21 >> 12) + v52;
  HIDWORD(v21) = v9 + v50 - 378558 + (v53 ^ v52 ^ v51);
  LODWORD(v21) = HIDWORD(v21);
  v54 = (v21 >> 28) + v53;
  HIDWORD(v21) = v13 + v51 - 2022574463 + (v53 ^ v52 ^ v54);
  LODWORD(v21) = HIDWORD(v21);
  v55 = (v21 >> 21) + v54;
  HIDWORD(v21) = v16 + v52 + 1839030562 + (v54 ^ v53 ^ v55);
  LODWORD(v21) = HIDWORD(v21);
  v56 = (v21 >> 16) + v55;
  HIDWORD(v21) = v20 + v53 - 35309556 + (v55 ^ v54 ^ v56);
  LODWORD(v21) = HIDWORD(v21);
  v57 = (v21 >> 9) + v56;
  HIDWORD(v21) = v5 + v54 - 1530992060 + (v56 ^ v55 ^ v57);
  LODWORD(v21) = HIDWORD(v21);
  v58 = (v21 >> 28) + v57;
  HIDWORD(v21) = v10 + v55 + 1272893353 + (v57 ^ v56 ^ v58);
  LODWORD(v21) = HIDWORD(v21);
  v59 = (v21 >> 21) + v58;
  HIDWORD(v21) = v12 + v56 - 155497632 + (v58 ^ v57 ^ v59);
  LODWORD(v21) = HIDWORD(v21);
  v60 = (v21 >> 16) + v59;
  HIDWORD(v21) = v15 + v57 - 1094730640 + (v59 ^ v58 ^ v60);
  LODWORD(v21) = HIDWORD(v21);
  v61 = (v21 >> 9) + v60;
  HIDWORD(v21) = v18 + v58 + 681279174 + (v60 ^ v59 ^ v61);
  LODWORD(v21) = HIDWORD(v21);
  v62 = (v21 >> 28) + v61;
  HIDWORD(v21) = v6 + v59 - 358537222 + (v61 ^ v60 ^ v62);
  LODWORD(v21) = HIDWORD(v21);
  v63 = (v21 >> 21) + v62;
  HIDWORD(v21) = v7 + v60 - 722521979 + (v62 ^ v61 ^ v63);
  LODWORD(v21) = HIDWORD(v21);
  v64 = (v21 >> 16) + v63;
  HIDWORD(v21) = v11 + v61 + 76029189 + (v63 ^ v62 ^ v64);
  LODWORD(v21) = HIDWORD(v21);
  v65 = (v21 >> 9) + v64;
  HIDWORD(v21) = v14 + v62 - 640364487 + (v64 ^ v63 ^ v65);
  LODWORD(v21) = HIDWORD(v21);
  v66 = (v21 >> 28) + v65;
  HIDWORD(v21) = v17 + v63 - 421815835 + (v65 ^ v64 ^ v66);
  LODWORD(v21) = HIDWORD(v21);
  v67 = (v21 >> 21) + v66;
  HIDWORD(v21) = v19 + v64 + 530742520 + (v66 ^ v65 ^ v67);
  LODWORD(v21) = HIDWORD(v21);
  v68 = (v21 >> 16) + v67;
  HIDWORD(v21) = v8 + v65 - 995338651 + (v67 ^ v66 ^ v68);
  LODWORD(v21) = HIDWORD(v21);
  v69 = (v21 >> 9) + v68;
  HIDWORD(v21) = v6 + v66 - 198630844 + ((v69 | ~v67) ^ v68);
  LODWORD(v21) = HIDWORD(v21);
  v70 = (v21 >> 26) + v69;
  HIDWORD(v21) = v12 + v67 + 1126891415 + ((v70 | ~v68) ^ v69);
  LODWORD(v21) = HIDWORD(v21);
  v71 = (v21 >> 22) + v70;
  HIDWORD(v21) = v20 + v68 - 1416354905 + ((v71 | ~v69) ^ v70);
  LODWORD(v21) = HIDWORD(v21);
  v72 = (v21 >> 17) + v71;
  HIDWORD(v21) = v9 + v69 - 57434055 + ((v72 | ~v70) ^ v71);
  LODWORD(v21) = HIDWORD(v21);
  v73 = (v21 >> 11) + v72;
  HIDWORD(v21) = v17 + v70 + 1700485571 + ((v73 | ~v71) ^ v72);
  LODWORD(v21) = HIDWORD(v21);
  v74 = (v21 >> 26) + v73;
  HIDWORD(v21) = v7 + v71 - 1894986606 + ((v74 | ~v72) ^ v73);
  LODWORD(v21) = HIDWORD(v21);
  v75 = (v21 >> 22) + v74;
  HIDWORD(v21) = v15 + v72 - 1051523 + ((v75 | ~v73) ^ v74);
  LODWORD(v21) = HIDWORD(v21);
  v76 = (v21 >> 17) + v75;
  HIDWORD(v21) = v5 + v73 - 2054922799 + ((v76 | ~v74) ^ v75);
  LODWORD(v21) = HIDWORD(v21);
  v77 = (v21 >> 11) + v76;
  HIDWORD(v21) = v13 + v74 + 1873313359 + ((v77 | ~v75) ^ v76);
  LODWORD(v21) = HIDWORD(v21);
  v78 = (v21 >> 26) + v77;
  HIDWORD(v21) = v19 + v75 - 30611744 + ((v78 | ~v76) ^ v77);
  LODWORD(v21) = HIDWORD(v21);
  v79 = (v21 >> 22) + v78;
  HIDWORD(v21) = v11 + v76 - 1560198380 + ((v79 | ~v77) ^ v78);
  LODWORD(v21) = HIDWORD(v21);
  v80 = (v21 >> 17) + v79;
  HIDWORD(v21) = v18 + v77 + 1309151649 + ((v80 | ~v78) ^ v79);
  LODWORD(v21) = HIDWORD(v21);
  v81 = (v21 >> 11) + v80;
  HIDWORD(v21) = v10 + v78 - 145523070 + ((v81 | ~v79) ^ v80);
  LODWORD(v21) = HIDWORD(v21);
  v82 = (v21 >> 26) + v81;
  HIDWORD(v21) = v16 + v79 - 1120210379 + ((v82 | ~v80) ^ v81);
  LODWORD(v21) = HIDWORD(v21);
  v83 = (v21 >> 22) + v82;
  HIDWORD(v21) = v8 + v80 + 718787259 + ((v83 | ~v81) ^ v82);
  LODWORD(v21) = HIDWORD(v21);
  v84 = (v21 >> 17) + v83;
  HIDWORD(v21) = v14 + v81 - 343485551 + ((v84 | ~v82) ^ v83);
  LODWORD(v21) = HIDWORD(v21);
  *this += v82;
  this[1] = v84 + v2 + (v21 >> 11);
  this[2] = v84 + v4;
  this[3] = v83 + v3;
  return this;
}