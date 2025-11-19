void sub_261528D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, atomic_ullong a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, atomic_ullong a43, atomic_ullong a44, atomic_ullong a45, const void *a46, void *a47)
{
  sub_261527258(&a47);
  sub_261527044(&a34);
  sub_26148D93C(&a43);
  sub_261476A0C(&a44);
  sub_2614776F0(&a45);
  sub_2614F7F28(&a46);
  sub_26148D93C(&a28);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_261528E58(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void **sub_261528E8C(void **result, CFTypeRef cf)
{
  v2 = result;
  if (!cf)
  {
    goto LABEL_88;
  }

  v4 = CFGetTypeID(cf);
  result = CFDictionaryGetTypeID();
  if (v4 != result)
  {
    goto LABEL_88;
  }

  LOBYTE(v86) = 0;
  BYTE8(v86) = 0;
  LOBYTE(v87) = 0;
  LOBYTE(v88) = 0;
  LOBYTE(v89) = 0;
  v90 = 0;
  LOBYTE(v91) = 0;
  BYTE8(v91) = 0;
  LOWORD(v92) = 0;
  LOBYTE(__p[0]) = 0;
  v95 = 0;
  sub_2614F7EBC(&v85, cf);
  *&v86 = sub_261529AE4(&v85, "width", 5);
  BYTE8(v86) = v5;
  v87 = sub_261529AE4(&v85, "height", 6);
  LOBYTE(v88) = v6;
  v7 = sub_2614F7C14("pixelFormatType", 15);
  if (v7 && (v8 = sub_2614F7F5C(&v85, v7), CFRelease(v7), v8))
  {
    v9 = sub_2614F78D0(v8);
    CFRelease(v8);
    v10 = v9 & 0x100000000;
    v11 = v9 & 0xFFFFFF00;
    v12 = v9;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  v90 = BYTE4(v10);
  v89 = v12 | v10 | v11;
  v13 = sub_2614F7C14("pixelBufferAttributes", 21);
  if (v13)
  {
    v14 = sub_2614F7F5C(&v85, v13);
    CFRelease(v13);
    if (v14)
    {
      v13 = sub_2614F7D28(v14);
      CFRelease(v14);
    }

    else
    {
      v13 = 0;
    }
  }

  *&v91 = v13;
  BYTE8(v91) = 1;
  v15 = sub_2614F7C14("isPlanar", 8);
  if (v15)
  {
    v16 = sub_2614F7F5C(&v85, v15);
    CFRelease(v15);
    if (v16)
    {
      LOWORD(v15) = sub_2614F7D8C(v16);
      CFRelease(v16);
      v17 = BYTE1(v15);
    }

    else
    {
      v17 = 0;
      LOBYTE(v15) = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  LOWORD(v92) = v15 | (v17 << 8);
  v18 = sub_2614F7C14("planes", 6);
  if (v18 && (cfa = sub_2614F7F5C(&v85, v18), CFRelease(v18), cfa))
  {
    v19 = CFGetTypeID(cfa);
    if (v19 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(cfa);
      if (Count)
      {
        v96 = 0uLL;
        v97 = 0;
        if (Count >> 59)
        {
          sub_2614709BC();
        }

        v66 = Count;
        sub_261527A50(&v68, Count, 0, &v96);
        v21 = cfa;
        sub_261527AC8(&v96, &v68);
        sub_261527BA8(&v68);
        v22 = 0;
        allocator = *MEMORY[0x277CBECE8];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v21, v22);
          v24 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            break;
          }

          v25 = CFGetTypeID(ValueAtIndex);
          if (v25 != CFDictionaryGetTypeID())
          {
            break;
          }

          sub_2614F7EBC(&v68, v24);
          v26 = sub_261529AE4(&v68, "width", 5);
          v28 = v27;
          v29 = sub_261529AE4(&v68, "height", 6);
          v31 = v30;
          v32 = sub_261529AE4(&v68, "bytesPerRow", 11);
          v34 = v33;
          Copy = sub_2614F7C14("data", 4);
          if (Copy)
          {
            v36 = sub_2614F7F5C(&v68, Copy);
            CFRelease(Copy);
            if (v36)
            {
              v37 = CFGetTypeID(v36);
              if (v37 == CFDataGetTypeID())
              {
                Copy = CFDataCreateCopy(allocator, v36);
              }

              else
              {
                Copy = 0;
              }

              CFRelease(v36);
            }

            else
            {
              Copy = 0;
            }
          }

          if ((v28 & 1) == 0 || (v31 & 1) == 0 || (v34 & 1) == 0)
          {
            if (Copy)
            {
              CFRelease(Copy);
            }

LABEL_54:
            sub_2614F7F28(&v68);
            break;
          }

          if (!Copy)
          {
            goto LABEL_54;
          }

          sub_2614F7F28(&v68);
          v68 = 0;
          v69 = 0;
          v76 = v26;
          v77 = v29;
          v70 = 0;
          v71 = Copy;
          v38 = atomic_exchange(&v71, 0);
          v78 = v32;
          v79 = v38;
          v80 = 1;
          sub_2614BF7E0(&v71);
          if ((v80 & 1) == 0)
          {
            break;
          }

          v39 = *(&v96 + 1);
          if (*(&v96 + 1) >= v97)
          {
            v44 = (*(&v96 + 1) - v96) >> 5;
            v45 = v44 + 1;
            if ((v44 + 1) >> 59)
            {
              sub_2614709BC();
            }

            v46 = v97 - v96;
            if ((v97 - v96) >> 4 > v45)
            {
              v45 = v46 >> 4;
            }

            if (v46 >= 0x7FFFFFFFFFFFFFE0)
            {
              v47 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v47 = v45;
            }

            sub_261527A50(&v68, v47, v44, &v96);
            v48 = v70;
            v49 = v76;
            v76 = 0;
            *v70 = v49;
            v50 = v77;
            v77 = 0;
            v48[1] = v50;
            v51 = v78;
            v78 = 0;
            v48[2] = v51;
            v48[3] = atomic_exchange(&v79, 0);
            v70 += 4;
            sub_261527AC8(&v96, &v68);
            v43 = *(&v96 + 1);
            sub_261527BA8(&v68);
          }

          else
          {
            v40 = v76;
            v76 = 0;
            **(&v96 + 1) = v40;
            v41 = v77;
            v77 = 0;
            v39[1] = v41;
            v42 = v78;
            v78 = 0;
            v39[2] = v42;
            v39[3] = atomic_exchange(&v79, 0);
            v43 = v39 + 4;
          }

          *(&v96 + 1) = v43;
          if (v80)
          {
            sub_2614BF7E0(&v79);
          }

          ++v22;
          v21 = cfa;
          if (v66 == v22)
          {
            v82 = v96;
            v83 = v97;
            v97 = 0;
            v96 = 0uLL;
            v84 = 1;
            goto LABEL_56;
          }
        }

        LOBYTE(v82) = 0;
        v84 = 0;
LABEL_56:
        v53 = &v96;
      }

      else
      {
        v83 = 0;
        v82 = 0uLL;
        v69 = 0;
        v70 = 0;
        v68 = 0;
        v84 = 1;
        v53 = &v68;
      }

      sub_2615271F0(v53);
    }

    else
    {
      LOBYTE(v82) = 0;
      v84 = 0;
    }

    CFRelease(cfa);
    v52 = v84;
  }

  else
  {
    v52 = 0;
    LOBYTE(v82) = 0;
    v84 = 0;
  }

  if (v95 == v52)
  {
    if (v95)
    {
      v54 = __p[0];
      if (__p[0])
      {
        v55 = __p[1];
        v56 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v57 = v55 - 4;
            sub_2614BF7E0(v55 - 1);
            v55 = v57;
          }

          while (v57 != v54);
          v56 = __p[0];
        }

        __p[1] = v54;
        operator delete(v56);
      }

      *__p = v82;
      v94 = v83;
      v83 = 0;
      v82 = 0uLL;
    }
  }

  else if (v95)
  {
    sub_2615271F0(__p);
    v95 = 0;
  }

  else
  {
    *__p = v82;
    v94 = v83;
    v83 = 0;
    v82 = 0uLL;
    v95 = 1;
  }

  if (v84 == 1)
  {
    sub_2615271F0(&v82);
  }

  if (BYTE8(v86) == 1 && v88 == 1 && v90 == 1 && BYTE8(v91) == 1 && v91 && BYTE1(v92) == 1 && (v95 & 1) != 0)
  {
    v76 = v86;
    v77 = v87;
    LODWORD(v78) = v89;
    v79 = v91;
    v80 = v92;
    v58 = v94;
    v59 = *__p;
    __p[1] = 0;
    v94 = 0;
    __p[0] = 0;
    v68 = v86;
    v69 = v87;
    LODWORD(v70) = v89;
    v71 = v91;
    v72 = v92;
    v73 = v59;
    v74 = v58;
    memset(v81, 0, sizeof(v81));
    v60 = 1;
    v75 = 1;
    sub_2615271F0(v81);
  }

  else
  {
    if (BYTE8(v91) == 1 && v91)
    {
      CFRelease(v91);
    }

    v60 = 0;
    LOBYTE(v68) = 0;
    v75 = 0;
  }

  result = sub_2614F7F28(&v85);
  if (v95 == 1)
  {
    result = sub_2615271F0(__p);
  }

  if (v60)
  {
    v61 = v70;
    v62 = v72;
    v63 = v69;
    v88 = v71;
    LOBYTE(v89) = v72;
    v91 = v73;
    v64 = v74;
    v92 = v74;
    v73 = 0u;
    v74 = 0;
    v86 = 0u;
    *v2 = v68;
    *(v2 + 8) = v63;
    LODWORD(v87) = 0;
    *(v2 + 16) = v61;
    *(v2 + 24) = atomic_exchange(&v88, 0);
    LOBYTE(v89) = 0;
    *(v2 + 32) = v62;
    *(v2 + 40) = v91;
    *(v2 + 56) = v64;
    v91 = 0u;
    v92 = 0;
    *(v2 + 64) = 1;
    sub_2615271F0(&v91);
    sub_26148D93C(&v88);
    return sub_2615271F0(&v73);
  }

  else
  {
LABEL_88:
    *v2 = 0;
    *(v2 + 64) = 0;
  }

  return result;
}

void sub_2615296B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, char a48)
{
  sub_2614F7F28(&a13);
  sub_2615271F0((v48 - 128));
  sub_2614F7F28(&a36);
  if (a48 == 1)
  {
    sub_2615271F0(&a45);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *sub_261529768(unint64_t *a1, uint64_t a2)
{
  pixelBufferOut = 0;
  result = CVPixelBufferCreate(*MEMORY[0x277CBECE8], *a2, *(a2 + 8), *(a2 + 16), atomic_load_explicit((a2 + 24), memory_order_acquire), &pixelBufferOut);
  if (result)
  {
    *a1 = 0;
    return result;
  }

  v35 = pixelBufferOut;
  pixelBufferOut = 0;
  if (!atomic_load_explicit(&v35, memory_order_acquire))
  {
    goto LABEL_36;
  }

  v5 = *(a2 + 32);
  explicit = atomic_load_explicit(&v35, memory_order_acquire);
  if (v5)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(explicit);
    if (CVPixelBufferIsPlanar(atomic_load_explicit(&v35, memory_order_acquire)) && PlaneCount == (*(a2 + 48) - *(a2 + 40)) >> 5)
    {
      if (PlaneCount)
      {
        v8 = 0;
        while (1)
        {
          v9 = *(a2 + 40);
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(atomic_load_explicit(&v35, memory_order_acquire), v8);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(atomic_load_explicit(&v35, memory_order_acquire), v8);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(atomic_load_explicit(&v35, memory_order_acquire), v8);
          v13 = (v9 + 32 * v8);
          if (*v13 != WidthOfPlane || v13[1] != HeightOfPlane)
          {
            goto LABEL_36;
          }

          v14 = v13[2];
          if (!v14)
          {
            goto LABEL_37;
          }

          if (!atomic_load_explicit(v13 + 3, memory_order_acquire))
          {
            goto LABEL_36;
          }

          v15 = BytesPerRowOfPlane;
          if (CFDataGetLength(atomic_load_explicit(v13 + 3, memory_order_acquire)) != v13[1] * v13[2])
          {
            goto LABEL_36;
          }

          BytePtr = CFDataGetBytePtr(atomic_load_explicit(v13 + 3, memory_order_acquire));
          if (!BytePtr)
          {
            goto LABEL_36;
          }

          if (CVPixelBufferLockBaseAddress(atomic_load_explicit(&v35, memory_order_acquire), 0))
          {
            goto LABEL_36;
          }

          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(atomic_load_explicit(&v35, memory_order_acquire), v8);
          v18 = BaseAddressOfPlane;
          if (!BaseAddressOfPlane)
          {
            goto LABEL_36;
          }

          v19 = v13[1];
          if (v13[2] == v15)
          {
            memcpy(BaseAddressOfPlane, BytePtr, v19 * v15);
          }

          else if (v19)
          {
            v20 = 0;
            do
            {
              v21 = v13[2];
              if (v21 >= v15)
              {
                v22 = v15;
              }

              else
              {
                v22 = v13[2];
              }

              memcpy(v18, &BytePtr[v21 * v20++], v22);
              v18 += v15;
            }

            while (v20 < v13[1]);
          }

          CVPixelBufferUnlockBaseAddress(atomic_load_explicit(&v35, memory_order_acquire), 0);
          if (++v8 == PlaneCount)
          {
            goto LABEL_26;
          }
        }
      }

      goto LABEL_26;
    }

LABEL_36:
    v14 = 0;
    goto LABEL_37;
  }

  if (CVPixelBufferIsPlanar(explicit))
  {
    goto LABEL_36;
  }

  v23 = *(a2 + 40);
  if (*(a2 + 48) - v23 != 32 || *v23 != *a2 || v23[1] != *(a2 + 8) || !v23[2])
  {
    goto LABEL_36;
  }

  v14 = atomic_load_explicit(v23 + 3, memory_order_acquire);
  if (!v14)
  {
    goto LABEL_37;
  }

  Length = CFDataGetLength(atomic_load_explicit((*(a2 + 40) + 24), memory_order_acquire));
  v25 = *(a2 + 40);
  if (Length != v25[1] * v25[2])
  {
    goto LABEL_36;
  }

  v26 = CFDataGetBytePtr(atomic_load_explicit(v25 + 3, memory_order_acquire));
  if (!v26)
  {
    goto LABEL_36;
  }

  if (CVPixelBufferLockBaseAddress(atomic_load_explicit(&v35, memory_order_acquire), 0))
  {
    goto LABEL_36;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(atomic_load_explicit(&v35, memory_order_acquire));
  if (!BaseAddress)
  {
    goto LABEL_36;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(atomic_load_explicit(&v35, memory_order_acquire));
  v29 = BytesPerRow;
  v30 = *(a2 + 40);
  v31 = *(v30 + 8);
  if (*(v30 + 16) == BytesPerRow)
  {
    memcpy(BaseAddress, v26, v31 * BytesPerRow);
  }

  else if (v31)
  {
    v32 = 0;
    do
    {
      v33 = *(v30 + 16);
      if (v33 >= v29)
      {
        v34 = v29;
      }

      else
      {
        v34 = v33;
      }

      memcpy(BaseAddress, &v26[v33 * v32++], v34);
      v30 = *(a2 + 40);
      BaseAddress += v29;
    }

    while (v32 < *(v30 + 8));
  }

  CVPixelBufferUnlockBaseAddress(atomic_load_explicit(&v35, memory_order_acquire), 0);
LABEL_26:
  v14 = atomic_exchange(&v35, 0);
LABEL_37:
  *a1 = v14;
  return sub_2614776F0(&v35);
}

unint64_t sub_261529AE4(CFDictionaryRef *a1, UInt8 *bytes, CFIndex numBytes)
{
  v4 = sub_2614F7C14(bytes, numBytes);
  if (v4 && (v5 = v4, v6 = sub_2614F7F5C(a1, v4), CFRelease(v5), v6))
  {
    v7 = sub_2614F7A48(v6);
    v8 = v7;
    v9 = v7 & 0xFFFFFFFFFFFFFF00;
    CFRelease(v6);
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return v10 | v9;
}

void sub_261529B78(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = vneg_f32(0x3F0000003FLL);
  *(a1 + 48) = 2143289344;
  operator new();
}

void sub_261529C18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_261529C34(double *a1, uint64_t a2, double a3, double a4)
{
  v8 = sqrt(a4 * a4 + a3 * a3);
  *(a2 + 24) = a3 / v8;
  *(a2 + 32) = a4 / v8;
  while (1)
  {
    sub_26152AF08(a2, a1[1], a1[2]);
    v9 = (*(a2 + 8) - *a2) >> 4;
    if (__ROR8__(0x6666666666666666 - 0x70A3D70A3D70A3D7 * v9, 1) <= 0x51EB851EB851EB8uLL)
    {
      result = sub_26152ADE0(a2, *a2, v9);
      if (!result)
      {
        break;
      }

      v11 = a1[1];
      v12 = a1[2];
      v13 = sub_26152AD98(a2, v11, v12);
      result = sub_261529E44(a1, v11 - v13 + **a2, v12 - v14 + *(*a2 + 8));
      if (!result)
      {
        break;
      }
    }

    v15 = sub_26152B02C(a1, 1, 1, a3, a4);
    if (v15)
    {
      return v15 == 1 && *(a2 + 8) - *a2 > 0x10uLL;
    }
  }

  return result;
}

uint64_t sub_261529D6C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = (a1 + 8);
  *(a1 + 8) = vaddq_f64(*(a1 + 24), *(a1 + 8));
  *a2 = *(a1 + 8);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  sub_26152B02C(a1, 2, 0, -v7, -v8);
  if (*a2 < 0.0)
  {
    return 0;
  }

  result = 0;
  v10 = *(*a1 + 8);
  if (*a2 < v10)
  {
    v11 = *(a2 + 8);
    if (v11 >= 0.0)
    {
      v12 = *(*a1 + 16);
      if (v11 >= v12 || *v6 < 0.0)
      {
        return 0;
      }

      v13 = *(a1 + 16);
      v14 = v13 >= 0.0;
      if (v13 >= v12)
      {
        v14 = 0;
      }

      return (*v6 < v10) & v14;
    }
  }

  return result;
}

BOOL sub_261529E44(double *a1, double a2, double a3)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[1];
  v6 = a1[2];
  v7 = v5 - a2;
  v8 = v6 - a3;
  v9 = vabdd_f64(v5, a2);
  v10 = vabdd_f64(v6, a3);
  if (v9 < v10)
  {
    v9 = v10;
  }

  v11 = v7 / v9;
  v12 = v8 / v9;
  a1[3] = v7 / v9;
  a1[4] = v8 / v9;
  v13 = v4 * (v8 / v9) + v7 / v9 * v3;
  if (v13 >= 0.0)
  {
    v14 = fabs(v11);
    v15 = fabs(v12);
    if (v14 == v15)
    {
      if (fabs(v3) <= fabs(v4))
      {
        v3 = 0.0;
      }

      else
      {
        v4 = 0.0;
      }

      v11 = v11 - v3;
      v12 = v12 - v4;
LABEL_19:
      a1[3] = v3 + v11 * 0.99000001;
      a1[4] = v4 + v12 * 0.99000001;
      return v13 >= 0.0;
    }

    if (v14 <= v15)
    {
      v11 = 0.0;
    }

    else
    {
      v12 = 0.0;
    }

    if (fabs(v3) <= fabs(v4))
    {
      v3 = 0.0;
    }

    else
    {
      v4 = 0.0;
    }

    if (v11 != v3 || v12 != v4)
    {
      goto LABEL_19;
    }
  }

  return v13 >= 0.0;
}

BOOL sub_261529F08(double *a1, uint64_t a2, int a3, float *a4, double a5, double a6)
{
  v12 = 0;
  v13 = sqrt(a6 * a6 + a5 * a5);
  *(a2 + 24) = a5 / v13;
  *(a2 + 32) = a6 / v13;
  v14 = 3.0;
  do
  {
    v15 = *(a2 + 40);
    if (a1[2] * *(a2 + 44) + v15 * a1[1] - *(a2 + 48) < -5.0)
    {
      result = sub_26152ADE0(a2, *a2, (*(a2 + 8) - *a2) >> 4);
      if (!result)
      {
        return result;
      }

      v15 = *(a2 + 40);
      if (a1[2] * *(a2 + 44) + v15 * a1[1] - *(a2 + 48) < -5.0)
      {
        break;
      }
    }

    v17 = a1[1];
    v18 = a1[2];
    v19 = v15;
    v20 = *(a2 + 44);
    if (v18 * v20 + v19 * v17 - *(a2 + 48) > v14)
    {
      v22 = a1[3];
      v21 = a1[4];
      v23 = sqrt(v21 * v21 + v22 * v22);
      if (fabs(v21 / v23 * v20 + v22 / v23 * v19) > 0.7)
      {
        return 0;
      }

      v24 = sub_26152AD98(a2, v17, v18);
      v26 = v25;
      v27 = sub_26152AD98(a2, *(*(a2 + 8) - 16), *(*(a2 + 8) - 8));
      while (sqrt((v26 - v28) * (v26 - v28) + (v24 - v27) * (v24 - v27)) < 1.0)
      {
        v24 = v24 + v22;
        v26 = v26 + v21;
      }

      a1[1] = floor(v24) + 0.5;
      a1[2] = floor(v26) + 0.5;
      v14 = 3.0;
      goto LABEL_26;
    }

    v29 = *(a2 + 8);
    if (*a2 == v29)
    {
      sub_26152AF08(a2, a1[1], a1[2]);
LABEL_24:
      if (!v12 && 2 * a3 <= ((*(a2 + 8) - *a2) >> 4))
      {
        return 0;
      }

LABEL_26:
      v41 = a4[10];
      v36 = v12;
      goto LABEL_27;
    }

    v30 = fabs(a1[3]) <= fabs(a1[4]);
    v31 = 0.0;
    if (v30)
    {
      v32 = a1[4];
    }

    else
    {
      v32 = 0.0;
    }

    if (!v30)
    {
      v31 = a1[3];
    }

    v33 = a1[1];
    v34 = a1[2];
    v35 = v32 * (v34 - *(v29 - 8)) + v31 * (v33 - *(v29 - 16));
    sub_26152AF08(a2, v33, v34);
    if (v35 <= 1.0)
    {
      goto LABEL_24;
    }

    v36 = (v12 + 1);
    if (v12 <= 0 && *(a2 + 8) - *a2 < 0x51uLL)
    {
      v12 = (v12 + 1);
      goto LABEL_26;
    }

    result = sub_26152A2DC(a2, 0, 1.5);
    if (!result)
    {
      return result;
    }

    v37 = a1[1];
    v38 = a1[2];
    v39 = sub_26152AD98(a2, v37, v38);
    result = sub_261529E44(a1, v37 - v39 + **a2, v38 - v40 + *(*a2 + 8));
    if (!result)
    {
      return result;
    }

    v41 = a4[10];
LABEL_27:
    if (a3 >= (a1[2] * a4[11] + v41 * a1[1] - a4[12]))
    {
      a3 = (a1[2] * a4[11] + v41 * a1[1] - a4[12]);
    }

    v42 = sub_26152B02C(a1, a3, 1, a5, a6);
    if (v42)
    {
      if (v42 == 1)
      {
        return a3 + 1 >= (a1[2] * a4[11] + a4[10] * a1[1] - a4[12]);
      }

      return 0;
    }

    v43 = *(a2 + 8);
    v44 = a1[1] == *(v43 - 16) && a1[2] == *(v43 - 8);
    v12 = v36;
  }

  while (!v44);
  return 0;
}

BOOL sub_26152A2DC(uint64_t a1, int a2, float a3)
{
  v6 = sub_26152ADE0(a1, *a1, (*(a1 + 8) - *a1) >> 4);
  if (a3 > 0.0)
  {
    v7 = *(a1 + 8);
    v8 = v7 - *a1;
    if (v7 != *a1)
    {
      if (!((v8 >> 4) >> 60))
      {
        sub_261473150(v8 >> 4);
      }

      sub_2614709BC();
    }

    v9 = a3;
    while (1)
    {
      v10 = 0;
      if (v8)
      {
        v10 = 0;
        while (1)
        {
          v11 = (v10 + 16);
          if (*(v10 + 8) * *(a1 + 44) + *(a1 + 40) * *v10 - *(a1 + 48) > v9)
          {
            break;
          }

          v10 += 16;
          if (v11 == v8)
          {
            goto LABEL_17;
          }
        }

        while (v11 != v8)
        {
          if (v11[1] * *(a1 + 44) + *(a1 + 40) * *v11 - *(a1 + 48) <= v9)
          {
            *v10 = *v11;
            v10 += 16;
          }

          v11 += 2;
        }
      }

      if (v10 == v8)
      {
        break;
      }

      v8 = v10;
      v6 = sub_26152ADE0(a1, 0, v10 >> 4);
    }

LABEL_17:
    if (a2)
    {
      v12 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v12;
        operator delete(v12);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      *a1 = 0;
      *(a1 + 8) = v8;
      *(a1 + 16) = 0;
    }
  }

  return v6;
}

double sub_26152A4A8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_26152A2DC(a1, 1, 1.0);
  v10 = *(a1 + 8);
  v11 = v10 - *a1;
  if (v10 != *a1)
  {
    if (!((v11 >> 4) >> 61))
    {
      sub_261470B0C(v11 >> 4);
    }

    sub_2614709BC();
  }

  v12 = sub_26152AD98(a1, **a1, *(*a1 + 8));
  v14 = sqrt((a3 - v13) * (a3 - v13) + (a2 - v12) * (a2 - v12)) - NAN;
  v15 = sub_26152AD98(a1, *(v10 - 16), *(v10 - 8));
  MEMORY[0] = v14 + sqrt((a5 - v16) * (a5 - v16) + (a4 - v15) * (a4 - v15));
  v17 = sqrt((a3 - a5) * (a3 - a5) + (a2 - a4) * (a2 - a4)) - NAN;
  v18 = 0;
  v19 = 0.0;
  v20 = 0;
  do
  {
    v21 = *v20++;
    v22 = v19 + v21;
    if (vabdd_f64(v21, v17 / 1uLL) < v17 / 1uLL * 0.5)
    {
      ++v18;
      v19 = v22;
    }
  }

  while (v20 != 8);
  return v17 / (v19 / v18);
}

void sub_26152A7F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_26152A814(float64x2_t a1, float64x2_t a2, float64_t a3, float64x2_t a4, float64_t a5, float a6)
{
  a4.f64[1] = a3;
  v6 = vsubq_f64(a4, a1);
  a2.f64[1] = a5;
  v7 = vsubq_f64(a2, a1);
  v8 = vzip2q_s64(v7, v6);
  v9 = vzip1q_s64(v6, v7);
  v10 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v8, v8), v9, v9));
  v11 = vaddq_f64(vdivq_f64(v6, v10), vdivq_f64(v7, vextq_s8(v10, v10, 8uLL)));
  *&result = *&vaddq_f64(vmulq_n_f64(vdivq_f64(v11, vdupq_lane_s64(COERCE__INT64(sqrt(COERCE_DOUBLE(*&vmulq_f64(v11, v11).f64[1]) + v11.f64[0] * v11.f64[0])), 0)), a6), a1);
  return result;
}

void sub_26152AD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v11 = 24;
  while (1)
  {
    v12 = *(&a10 + v11);
    if (v12)
    {
      sub_2614705CC(v12);
    }

    v11 -= 8;
    if (v11 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

BOOL sub_26152ADE0(uint64_t a1, float64x2_t *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = 16 * a3;
    v4 = 0uLL;
    v5 = 16 * a3;
    v6 = a2;
    do
    {
      v7 = *v6++;
      v4 = vaddq_f64(v4, v7);
      v5 -= 16;
    }

    while (v5);
    v8 = vdivq_f64(v4, vdupq_lane_s64(COERCE__INT64(a3), 0));
    _D1 = 0;
    v10 = 0.0;
    do
    {
      v11 = *a2++;
      v12 = vsubq_f64(v11, v8);
      v10 = v10 + v12.f64[0] * v12.f64[0];
      _D1 = vcvt_f32_f64(vmlaq_laneq_f64(vcvtq_f64_f32(_D1), v12, v12, 1));
      v3 -= 16;
    }

    while (v3);
    if (_D1.f32[1] < v10)
    {
      _S3 = vmul_f32(_D1, _D1).f32[0] + (v10 * v10);
      _S4 = _D1.f32[0];
      goto LABEL_10;
    }
  }

  else
  {
    v8 = vdupq_n_s64(0x7FF8000000000000uLL);
    _D1 = 0;
  }

  _S4 = _D1.f32[1];
  __asm { FMLA            S3, S4, V1.S[1] }

  v10 = _D1.f32[0];
LABEL_10:
  v19 = sqrtf(_S3);
  v20 = _S4 / v19;
  v21 = -v10 / v19;
  *(a1 + 40) = _S4 / v19;
  *(a1 + 44) = v21;
  v22 = (_S4 / v19);
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  if (v21 * v24 + v23 * v22 < 0.0)
  {
    v20 = -v20;
    v21 = -v21;
    *(a1 + 40) = v20;
    *(a1 + 44) = v21;
  }

  v25 = vmuld_lane_f64(v21, v8, 1) + v20 * v8.f64[0];
  *(a1 + 48) = v25;
  return v24 * v21 + v23 * v20 > 0.5;
}

void sub_26152AF08(uint64_t a1, double a2, double a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v9 = *a1;
    v10 = v7 - *a1;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      sub_2614709BC();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_261473150(v14);
    }

    v15 = (16 * v11);
    *v15 = a2;
    v15[1] = a3;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    v16 = *a1;
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = a2;
    v7[1] = a3;
    v8 = (v7 + 2);
  }

  *(a1 + 8) = v8;
  if (v8 - *a1 == 16)
  {
    v17 = a3 * *(a1 + 44) + *(a1 + 40) * a2;
    *(a1 + 48) = v17;
  }
}

uint64_t sub_26152B02C(double *a1, int a2, char a3, double a4, double a5)
{
  v8 = fabs(a4) <= fabs(a5);
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v9 = 0.0;
  }

  if (v8)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a4;
  }

  if (a2 == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  v12 = 1;
  while (a2 < 1)
  {
LABEL_22:
    result = 1;
    if ((a3 & 1) == 0)
    {
      v8 = v11 > v12++;
      if (v8)
      {
        continue;
      }
    }

    return result;
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = 1;
  v16 = a1[1];
  v17 = a1[2];
  v35 = v17;
  v36 = v16;
LABEL_13:
  v18 = 0;
  v19 = v13 * v15 + v16;
  v20 = v14 * v15 + v17;
  do
  {
    if (((v12 * (((v15 >> 1) & 0x7FFFFFFE) + 2)) | 1) == v18)
    {
      v26 = v15++ == a2;
      v17 = v35;
      v16 = v36;
      if (v26)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v21 = v18 + 1;
    if (v18)
    {
      v22 = v21 >> 1;
    }

    else
    {
      v22 = -(v18 >> 1);
    }

    v23 = v10 * v22 + v19;
    v24 = v9 * v22 + v20;
    v25 = sub_26152B2AC(a1, v10 + v23, v9 + v24);
    v18 = v21;
  }

  while (!v25);
  if (a2 <= 3)
  {
    v28 = 3;
  }

  else
  {
    v28 = a2;
  }

  v29 = *a1;
  while (1)
  {
    if (v23 < 0.0)
    {
      return 2;
    }

    result = 2;
    if (v23 >= v29[1] || v24 < 0.0 || v24 >= v29[2])
    {
      return result;
    }

    if (*(a1 + 11) == (*v29 != sub_261470964(v29[3], v23, v24)))
    {
      break;
    }

    v23 = v23 - v10;
    if (sub_26152B2AC(a1, v23 - v13, v24 - v9 - v14))
    {
      v23 = v23 - v13;
      v24 = v24 - v9 - v14;
    }

    else
    {
      v24 = v24 - v9;
    }

    if (!--v28)
    {
      return 2;
    }
  }

  result = 0;
  v30 = floor(v23) + 0.5;
  v31 = floor(v24) + 0.5;
  a1[1] = v30;
  a1[2] = v31;
  if (a2 == 1)
  {
    v32 = *(a1 + 6);
    if (v32)
    {
      v33 = v30;
      v34 = v31;
      if (sub_261470964(v32, v33, v34))
      {
        return 2;
      }

      result = 0;
      *(v32[6] + (((v33 + v32[3] * v34) >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << (v33 + *(v32 + 24) * v34);
    }
  }

  return result;
}

BOOL sub_26152B2AC(_DWORD *a1, double a2, double a3)
{
  if (a2 >= 0.0)
  {
    v6 = *a1;
    v4 = -1;
    if (a2 < *(*a1 + 8) && a3 >= 0.0 && a3 < *(v6 + 2))
    {
      v4 = *v6 != sub_261470964(*(v6 + 3), a2, a3);
    }
  }

  else
  {
    v4 = -1;
  }

  return v4 == a1[10];
}

uint64_t sub_26152B33C(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v31 = a1;
  v32 = a2;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  sub_26155AEFC(&v31, &v30, a6, a7);
  v8 = v31;
  if (v31 >= v30)
  {
    v8 = v30;
  }

  if (v8 < 11)
  {
    return 16;
  }

  *(a5 + 24) = 0;
  *(a5 + 8) = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v24 = 0;
  v10 = v32;
  v11 = *(&v30 + 1);
  v12 = sub_26152B4C4(v31, v32, v30, *(&v30 + 1), *(*(a5 + 64) + 30), &v28, &v27, &v26, &v25 + 1, &v25, &v24, &v29, (a5 + 24));
  if (!v12)
  {
    return 6;
  }

  v13 = *(a5 + 64);
  if ((*(v13 + 30) & 1) == 0 && *(a5 + 24) < 0.75)
  {
    return 6;
  }

  v14 = v29;
  *(a5 + 72) = v29;
  *(a5 + 76) = v14;
  if (v12 == 3)
  {
    v19 = HIDWORD(v25);
    *(v13 + 48) = *(v10 + 4 * SHIDWORD(v25));
    v20 = v24;
    *(v13 + 52) = *(v11 + 4 * v24 + 8);
    v21 = v20 - v19 + 3;
  }

  else
  {
    if (v12 == 2)
    {
      v15 = v24;
      if (v24 <= 9)
      {
        v16 = 9;
      }

      else
      {
        v16 = v24;
      }

      *(v13 + 48) = *(v10 + 4 * v16 - 36);
      v17 = v25;
      *(v13 + 52) = *(v11 + 4 * v25);
      v18 = v17 - v15;
    }

    else
    {
      v23 = v25;
      v22 = HIDWORD(v25);
      *(v13 + 48) = *(v10 + 4 * SHIDWORD(v25));
      *(v13 + 52) = *(v11 + 4 * v23);
      v18 = v23 - v22;
    }

    v21 = v18 + 1;
  }

  *(v13 + 20) = v21;
  return 1;
}

uint64_t sub_26152B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, int *a10, _DWORD *a11, float *a12, float *a13)
{
  v13 = a12;
  v79 = *MEMORY[0x277D85DE8];
  v72[0] = a1;
  v72[1] = a2;
  v71[0] = a3;
  v71[1] = a4;
  *a8 = -1;
  *a7 = -1;
  *a6 = -1;
  *a11 = -1;
  *a10 = -1;
  *a9 = -1;
  *a12 = 0.0;
  *a13 = 0.0;
  if (a1 < 11)
  {
    return 0;
  }

  v14 = a8;
  v15 = a7;
  v17 = a1 >= a3 ? a3 : a1;
  if (a3 > 10)
  {
    v26 = 0;
    v66 = (v17 > 0xC) & a5;
    v27 = a2 + 12;
    v28 = v66 ? 5 : (v17 - 7);
    while (1)
    {
      v29 = *(v27 + 4 * v26);
      v30 = (a2 + 4 * v26);
      v31 = v29 - *v30;
      v32 = v30[7] - v29;
      v33 = v31 < 7.0 || v32 < 12.0;
      if (!v33 && fabsf((v32 / v31) + -1.7) < 0.2)
      {
        v19 = (v31 + v32) / 27.0;
        v34 = (a4 + 4 * v26);
        v35 = *v34 - *v30;
        if ((v19 * 1.5) < v35 && v35 < (v19 * 4.5))
        {
          v37 = 0;
          v38 = 1;
          do
          {
            if (v38)
            {
              v39 = v30;
            }

            else
            {
              v39 = v34;
            }

            if (v38)
            {
              ++v30;
            }

            else
            {
              ++v34;
            }

            v78[v37] = v39[1] - *v39;
            v38 ^= 1u;
            ++v37;
          }

          while (v37 != 5);
          v40 = sub_26152BAA0(v78, 5u, &v73, v31);
          if (v40 < 0.25)
          {
            break;
          }
        }
      }

LABEL_32:
      if (++v26 == v28)
      {
        LODWORD(v41) = -1;
        v67 = 0.0;
        v19 = 0.0;
        goto LABEL_35;
      }
    }

    v41 = 0;
    while (dword_261574418[v41] != 10000 * LODWORD(v73) + 1000 * v74 + 100 * v75 + 10 * v76 + v77)
    {
      if (++v41 == 52)
      {
        goto LABEL_32;
      }
    }

    *a9 = v26;
    v67 = 1.0 - v40;
LABEL_35:
    *a6 = v41;
    v42 = (v66 & 1) != 0 ? (v17 - 5) : 7;
    v43 = 27.0;
    v44 = 0.5;
    while (1)
    {
      v45 = v17 - 4;
      v46 = *(a2 - 32 + 4 * v17--);
      v47 = *(a2 + 4 * v17);
      v48 = (a2 + 4 * v45);
      v49 = v47 - *v48;
      v50 = *v48 - v46;
      v51 = v49 < 7.0 || v50 < 12.0;
      if (!v51 && fabsf((v50 / v49) + -1.7) < 0.2)
      {
        v22 = (v49 + v50) / v43;
        v52 = (a4 + 4 * v45);
        v53 = *v52 - *v48;
        v54 = (v22 * 1.5) < v53 && v53 < (v22 * 4.5);
        if (v54 && vabds_f32(*(a4 + 4 * v17) - v47, v22) < (v22 * v44))
        {
          v55 = 0;
          v56 = 1;
          do
          {
            if (v56)
            {
              v57 = v48;
            }

            else
            {
              v57 = v52;
            }

            if (v56)
            {
              ++v48;
            }

            else
            {
              ++v52;
            }

            v78[v55] = v57[1] - *v57;
            v56 ^= 1u;
            ++v55;
          }

          while (v55 != 5);
          v58 = sub_26152BAA0(v78, 5u, &v73, v49);
          v43 = 27.0;
          v44 = 0.5;
          if (v58 < 0.25)
          {
            break;
          }
        }
      }

LABEL_62:
      if (v17 <= v42)
      {
        LODWORD(v18) = -1;
        v21 = 0.0;
        v22 = 0.0;
        v23 = a10;
        goto LABEL_65;
      }
    }

    v18 = 0;
    while (dword_261574418[v18] != 10000 * LODWORD(v73) + 1000 * v74 + 100 * v75 + 10 * v76 + v77)
    {
      if (++v18 == 52)
      {
        goto LABEL_62;
      }
    }

    v23 = a10;
    *a10 = v17;
    v21 = 1.0 - v58;
LABEL_65:
    v15 = a7;
    v13 = a12;
    v14 = a8;
    v20 = v67;
  }

  else
  {
    LODWORD(v18) = -1;
    *a6 = -1;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = a10;
  }

  *v15 = v18;
  if ((*a6 & 0x80000000) != 0 && (v18 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((*a6 & 0x80000000) != 0)
  {
    if ((v18 & 0x80000000) == 0)
    {
      v59 = *v23;
LABEL_75:
      v61 = v59 - 14;
      goto LABEL_77;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    v59 = *v23;
    if (*a9 + 10 <= *v23 && (vabds_f32(v19, v22) / (v19 + v22)) < 0.2)
    {
      *v13 = (v19 + v22) * 0.5;
      *a13 = v20 * v21;
      return 1;
    }

    goto LABEL_75;
  }

  v61 = *a9 + 9;
LABEL_77:
  *a11 = 0;
  v78[0] = 0.0;
  v73 = 0.0;
  v62 = sub_26152BB24(v72, v71, v61, a5, 0xFFFFFFFF, 0xFFFFFFFF, a11, &v73, v78);
  *v14 = v62;
  if ((v62 & 0x80000000) == 0)
  {
    if ((*v15 & 0x80000000) == 0 && *a11 + 14 <= *v23)
    {
      v63 = v22 + v73;
      if ((vabds_f32(v73, v22) / (v22 + v73)) < 0.2)
      {
        *a6 = -1;
        *v13 = v63 * 0.5;
        v64 = v21 * v78[0];
        result = 2;
LABEL_86:
        *a13 = v64;
        return result;
      }
    }

    if ((*a6 & 0x80000000) == 0 && *a9 + 7 <= *a11)
    {
      v65 = v19 + v73;
      if ((vabds_f32(v73, v19) / (v19 + v73)) < 0.2)
      {
        *v15 = -1;
        *v13 = v65 * 0.5;
        v64 = v20 * v78[0];
        result = 3;
        goto LABEL_86;
      }
    }
  }

  return 0;
}

float sub_26152BAA0(float *a1, unsigned int a2, _DWORD *a3, float a4)
{
  v4 = -1.0;
  if (a4 > 0.0)
  {
    if (a2 == 5)
    {
      v5 = 10;
    }

    else
    {
      v5 = 17;
    }

    v4 = v5 / a4;
  }

  v6 = a2;
  v7 = 0.0;
  do
  {
    v8 = v4 * *a1;
    if (v8 < 1.5 || v8 > 9.5)
    {
      return 1.0;
    }

    *a3++ = llroundf(v8);
    v7 = v7 + vabds_f32(v8, roundf(v8));
    ++a1;
    --v6;
  }

  while (v6);
  return v7 / a2;
}

uint64_t sub_26152BB24(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, unsigned int a6, _DWORD *a7, float *a8, float *a9)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*a1 >= *a2)
  {
    v9 = *a2;
  }

  else
  {
    v9 = *a1;
  }

  if (v9 < 11)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  v15 = *(a1 + 8);
  v16 = a6 + 52;
  v17 = a6 | a5;
  v18 = *(a2 + 8);
  while (1)
  {
    v19 = (dword_2615744E8[v13] + a3);
    v20 = v19 + 7;
    if (v19 < 4 || v20 >= v9)
    {
      goto LABEL_12;
    }

    v22 = (v15 + 4 * v19);
    v23 = *v22 - *(v22 - 4);
    v24 = v22[3];
    v25 = v24 - *v22;
    v26 = *(v15 + 4 * v20) - v24;
    v27 = v23 < 12.0 || v25 < 7.0;
    v28 = v27 || v26 < 7.0;
    if (v28 || fabsf((v23 / v25) + -1.7) >= 0.2 || fabsf((v26 / v25) + -1.7) >= 0.2)
    {
      goto LABEL_12;
    }

    v29 = ((v23 + v25) + v26) / 44.0;
    v30 = (v18 + 4 * v19);
    v31 = *v30 - *v22;
    if ((v29 * 0.5) >= v31 || v31 >= (v29 * 1.5))
    {
      goto LABEL_12;
    }

    v50 = v18;
    v51 = v17;
    v52 = v16;
    v53 = a9;
    v54 = a4;
    v55 = a5;
    v33 = a7;
    v34 = a8;
    v35 = 0;
    v36 = 1;
    do
    {
      if (v36)
      {
        v37 = v22;
      }

      else
      {
        v37 = v30;
      }

      if (v36)
      {
        ++v22;
      }

      else
      {
        ++v30;
      }

      v57[v35] = v37[1] - *v37;
      v36 ^= 1u;
      ++v35;
    }

    while (v35 != 5);
    v38 = sub_26152BAA0(v57, 5u, v56, v25);
    a8 = v34;
    a7 = v33;
    a4 = v54;
    a5 = v55;
    a9 = v53;
    v17 = v51;
    v16 = v52;
    v18 = v50;
    if (v38 >= 0.25)
    {
      goto LABEL_12;
    }

    result = 0;
    while (dword_261574348[result] != 10000 * v56[0] + 1000 * v56[1] + 100 * v56[2] + 10 * v56[3] + v56[4])
    {
      if (++result == 52)
      {
        goto LABEL_12;
      }
    }

    if (!v54)
    {
      break;
    }

    if ((v55 & 0x80000000) != 0)
    {
      v40 = 0;
      if ((a6 & 0x80000000) != 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v39 = result + 52;
      if (result >= v55)
      {
        v39 = result;
      }

      v40 = v39 - v55;
      if (v40 <= 0)
      {
        v41 = -(-v40 & 7);
      }

      else
      {
        v41 = v40 & 7;
      }

      if (v41 > 7 || ((1 << v41) & 0x83) == 0)
      {
        v43 = 4;
      }

      else
      {
        v43 = 0;
      }

      if (v41 > 7 || ((1 << v41) & 0x83) == 0)
      {
LABEL_71:
        if (v43 != 4)
        {
          break;
        }

        goto LABEL_12;
      }

      if ((a6 & 0x80000000) != 0)
      {
LABEL_74:
        v45 = 0;
        goto LABEL_75;
      }
    }

    if (result <= a6)
    {
      v44 = a6;
    }

    else
    {
      v44 = v52;
    }

    v45 = v44 - result;
    v46 = (v44 - result) & 7;
    if (v45 <= 0)
    {
      v47 = -(-v45 & 7);
    }

    else
    {
      v47 = v46;
    }

    if (v47 > 7 || ((1 << v47) & 0x83) == 0)
    {
      v43 = 4;
    }

    else
    {
      v43 = 0;
    }

    if (v47 > 7 || ((1 << v47) & 0x83) == 0)
    {
      goto LABEL_71;
    }

LABEL_75:
    if (v51 < 0)
    {
      break;
    }

    v49 = v40 - v45;
    if (v49 < 0)
    {
      v49 = -v49;
    }

    if (v49 <= 2)
    {
      break;
    }

LABEL_12:
    if (++v13 == 5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  *v33 = v19;
  if (v34)
  {
    *v34 = v29;
  }

  if (v53)
  {
    *v53 = 1.0 - v38;
  }

  return result;
}

uint64_t sub_26152BEAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v215 = *MEMORY[0x277D85DE8];
  pthread_once(&stru_27FEB40B0, sub_26152E264);
  v7 = 0;
  v8 = *(a2 + 64);
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v190 = xmmword_261574580;
  v191 = unk_261574590;
  v192 = xmmword_2615745A0;
  v186 = xmmword_261574540;
  v187 = unk_261574550;
  v188 = xmmword_261574560;
  v189 = unk_261574570;
  v182 = xmmword_261574500;
  v183 = unk_261574510;
  v184 = xmmword_261574520;
  v185 = unk_261574530;
  *(&v192 + 3) = (*(a2 + 72) + *(a2 + 76)) * 0.5;
  v9 = *(a3 + 40);
  v10 = *(a3 + 44);
  v11 = v9 + 6.2832;
  if (v9 >= 0.0)
  {
    v11 = *(a3 + 40);
  }

  if (*(v8 + 28))
  {
    v12 = v11 + flt_261561BE0[v11 > 3.1416];
  }

  else
  {
    v12 = v11;
  }

  *(v8 + 28) = 0;
  v180 = 0;
  v181 = 0;
  v178 = 0;
  v179 = 0;
  v172 = *(a3 + 32);
  v13 = *(a3 + 36);
  v203 = -1;
  v169 = v10;
  v14 = v10 * 0.5;
  while (1)
  {
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    v15 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
    v202 = v15;
    *(v15 + 8) = 0;
    *(v15 + 18) = 0;
    *(v15 + 10) = 0;
    *v15 = 0u;
    *(v15 + 1) = 0u;
    *(v15 + 2) = 0u;
    *(v15 + 44) = 0u;
    v16 = v12 + ((dword_2615745B0[v7] * 3.1416) / 180.0);
    v17 = __sincosf_stret(v16);
    sub_26152CD78(a4, 0, v8, &v197, &v182, &v203, v172 - (v14 * v17.__cosval), v13 - (v14 * v17.__sinval), (v14 * v17.__cosval) + v172, (v14 * v17.__sinval) + v13);
    v18 = v203;
    if ((v203 & 0x80000000) == 0 && *(v8 + 48) >= 0.0)
    {
      v19 = *(v8 + 52);
      if (v19 >= 0.0)
      {
        break;
      }
    }

    sub_261544D00(&v197);
LABEL_11:
    if (++v7 == 11)
    {
      v27 = 20;
      goto LABEL_19;
    }
  }

  v209 = *(v8 + 48);
  v210 = v19;
  v20 = sub_26155DA58(*a4, a4[1], &v198 + 3, 2u, &v209, &v213, &v211);
  sub_261544D00(&v197);
  if (!v20)
  {
    goto LABEL_11;
  }

  v21 = *(v8 + 32);
  if (v21 <= 0.0)
  {
    v22 = v213;
    v23 = v211;
    v24 = v169;
  }

  else
  {
    v22 = v213;
    v23 = v211;
    v24 = v169;
    if (*(v8 + 36) > 0.0)
    {
      v172 = (v213 + v214) * 0.5;
      v13 = (v211 + v212) * 0.5;
      v25 = sqrtf(((v211 - v212) * (v211 - v212)) + ((v213 - v214) * (v213 - v214)));
      v26 = v25 + v25;
      if (v26 <= v169)
      {
        v24 = v26;
      }
    }
  }

  v204[0] = v18;
  v208[0] = __PAIR64__(LODWORD(v23), LODWORD(v22));
  v207[0] = __PAIR64__(LODWORD(v212), LODWORD(v214));
  if (v21 >= 0.0)
  {
    if (*(v8 + 36) >= 0.0)
    {
      v165 = 0;
      v167 = 0;
    }

    else
    {
      v167 = 0;
      v205[0] = 0;
      v165 = 1;
    }
  }

  else
  {
    v165 = 0;
    v206[0] = 0;
    v167 = 1;
  }

  v29 = *(&v192 + 3) + *(&v192 + 3);
  v30 = v16 + -1.57079633;
  v31 = __sincosf_stret(v30);
  v32 = v31.__cosval * v29;
  v170 = v31.__sinval * v29;
  v33 = v17.__cosval * (v24 * 0.5);
  v34 = v17.__sinval * (v24 * 0.5);
  v35 = (v31.__cosval * v29) + v172;
  if (v35 >= 1.0)
  {
    v41 = 0;
    v42 = 0;
    v37 = 1;
    v36 = v13;
    v43 = v13;
    while (1)
    {
      v43 = v170 + v43;
      v44 = v35 > (*a4 - 2) || v43 < 1.0;
      if (v44 || v43 > (a4[1] - 2))
      {
        goto LABEL_32;
      }

      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v197 = 0u;
      v45 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
      v202 = v45;
      *(v45 + 8) = 0;
      *(v45 + 18) = 0;
      *(v45 + 10) = 0;
      *v45 = 0u;
      *(v45 + 1) = 0u;
      *(v45 + 2) = 0u;
      *(v45 + 44) = 0u;
      sub_26152CD78(a4, 0, v8, &v197, &v182, &v203, v35 - v33, v43 - v34, v33 + v35, v34 + v43);
      v46 = v203;
      if ((v203 & 0x80000000) == 0)
      {
        break;
      }

      sub_261544D00(&v197);
      if (v42 > 3)
      {
        goto LABEL_32;
      }

      ++v42;
LABEL_59:
      if (BYTE8(v192) == 1)
      {
        if ((v183 * 0.2) < (v37 - 1) || v41 >= 9)
        {
          goto LABEL_32;
        }
      }

      else if (v41 > 8)
      {
        goto LABEL_32;
      }

      ++v41;
      v35 = v32 + v35;
      if (v35 < 1.0)
      {
        goto LABEL_32;
      }
    }

    if (*(v8 + 48) < 0.0 || (v47 = *(v8 + 52), v47 < 0.0) || (v209 = *(v8 + 48), v210 = v47, !sub_26155DA58(*a4, a4[1], &v198 + 3, 2u, &v209, &v213, &v211)))
    {
LABEL_58:
      sub_261544D00(&v197);
      v42 = 0;
      goto LABEL_59;
    }

    v204[v37] = v46;
    v48 = &v208[v37];
    v49 = v214;
    v50 = v211;
    v51 = v212;
    v48->f32[0] = v213;
    v48->f32[1] = v50;
    v52 = &v207[v37];
    v52->f32[0] = v49;
    v52->f32[1] = v51;
    if (*(v8 + 32) >= 0.0)
    {
      if (*(v8 + 36) >= 0.0)
      {
LABEL_57:
        v37 = (v37 + 1);
        goto LABEL_58;
      }

      v53 = v165;
      v54 = v205;
      ++v165;
    }

    else
    {
      v53 = v167;
      v54 = v206;
      ++v167;
    }

    v54[v53] = v37;
    goto LABEL_57;
  }

  v36 = v13;
  v37 = 1;
LABEL_32:
  v38 = v172 - v32;
  if ((v172 - v32) >= 1.0)
  {
    v56 = 0;
    v57 = 0;
    v39 = v37;
    while (1)
    {
      v36 = v36 - v170;
      v58 = v38 > (*a4 - 2) || v36 < 1.0;
      if (v58 || v36 > (a4[1] - 2))
      {
        goto LABEL_34;
      }

      v59 = v39;
      v60 = v37;
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v197 = 0u;
      v61 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
      v202 = v61;
      *(v61 + 8) = 0;
      *(v61 + 18) = 0;
      *(v61 + 10) = 0;
      *v61 = 0u;
      *(v61 + 1) = 0u;
      *(v61 + 2) = 0u;
      *(v61 + 44) = 0u;
      sub_26152CD78(a4, 0, v8, &v197, &v182, &v203, v38 - v33, v36 - v34, v33 + v38, v34 + v36);
      v62 = v203;
      if ((v203 & 0x80000000) == 0)
      {
        break;
      }

      sub_261544D00(&v197);
      if (v57 > 3)
      {
        LODWORD(v39) = v59;
        goto LABEL_34;
      }

      v37 = v60;
      ++v57;
      v39 = v59;
LABEL_85:
      if (BYTE8(v192) == 1)
      {
        if ((v183 * 0.2) < (v39 - v37) || v56 >= 9)
        {
          goto LABEL_34;
        }
      }

      else if (v56 > 8)
      {
        goto LABEL_34;
      }

      ++v56;
      v38 = v38 - v32;
      if (v38 < 1.0)
      {
        goto LABEL_34;
      }
    }

    if (*(v8 + 48) < 0.0 || (v63 = *(v8 + 52), v63 < 0.0) || (v209 = *(v8 + 48), v210 = v63, !sub_26155DA58(*a4, a4[1], &v198 + 3, 2u, &v209, &v213, &v211)))
    {
      v37 = v60;
      v39 = v59;
LABEL_82:
      sub_261544D00(&v197);
      v57 = 0;
      goto LABEL_85;
    }

    v204[v59] = v62;
    v64 = &v208[v59];
    v65 = v214;
    v66 = v211;
    v67 = v212;
    v64->f32[0] = v213;
    v64->f32[1] = v66;
    v68 = &v207[v59];
    v68->f32[0] = v65;
    v68->f32[1] = v67;
    if (*(v8 + 32) >= 0.0)
    {
      if (*(v8 + 36) >= 0.0)
      {
        v37 = v60;
        v72 = v59;
        goto LABEL_99;
      }

      v69 = v165;
      v70 = v205;
      ++v165;
    }

    else
    {
      v69 = v167;
      v70 = v206;
      ++v167;
    }

    v37 = v60;
    v72 = v59;
    v70[v69] = v59;
LABEL_99:
    v39 = (v72 + 1);
    goto LABEL_82;
  }

  LODWORD(v39) = v37;
LABEL_34:
  if (BYTE8(v192) != 1 || v39 < 2)
  {
    goto LABEL_39;
  }

  v73 = v167;
  if (v167 == v39)
  {
    goto LABEL_101;
  }

  v75 = v165;
  if (v165 == v39)
  {
    v74 = 1;
    goto LABEL_118;
  }

  if (v167 + v165 < 1)
  {
    v74 = 0;
    v75 = v39;
    goto LABEL_118;
  }

  if (v39 - (v167 + v165) < 2)
  {
    goto LABEL_39;
  }

  v76 = 0;
  v73 = 0;
  v77 = 0;
  v78 = 0;
  do
  {
    if (v77 < v167 && v76 == v206[v77])
    {
      ++v77;
    }

    else if (v78 < v165 && v76 == v205[v78])
    {
      ++v78;
    }

    else
    {
      v208[v73] = v208[v76];
      v207[v73] = v207[v76];
      v204[v73++] = v204[v76];
    }

    ++v76;
  }

  while (v39 != v76);
  if (v73 < 1)
  {
LABEL_39:
    v27 = 21;
    goto LABEL_19;
  }

LABEL_101:
  v74 = 0;
  v75 = v73;
LABEL_118:
  v79 = 0;
  v80 = -1;
  v81 = 0x7FFFFFFF;
  v82 = 0x80000000;
  v83 = -1;
  v84 = v75;
  do
  {
    v85 = v204[v79];
    if (v85 <= v81)
    {
      v86 = v79;
    }

    else
    {
      v86 = v83;
    }

    if (v85 >= v81)
    {
      v87 = v81;
    }

    else
    {
      v87 = v204[v79];
    }

    if (v85 >= v82)
    {
      v88 = v79;
    }

    else
    {
      v88 = v80;
    }

    if (v85 <= v82)
    {
      v89 = v82;
    }

    else
    {
      v89 = v204[v79];
    }

    v90 = SDWORD2(v182) <= v85 && v85 <= SHIDWORD(v182);
    if (v90)
    {
      v83 = v86;
    }

    if (v90)
    {
      v80 = v88;
    }

    if (v90)
    {
      v81 = v87;
    }

    if (v90)
    {
      v82 = v89;
    }

    ++v79;
  }

  while (v84 != v79);
  if (v83 < 0)
  {
    goto LABEL_39;
  }

  if (v80 < 0)
  {
    goto LABEL_39;
  }

  v91 = v82 - v81;
  if (v82 == v81)
  {
    goto LABEL_39;
  }

  v92 = v82 - DWORD2(v182);
  v93 = (v92 + 0.5) / v91;
  v94 = (HIDWORD(v182) - v81) + 0.5;
  v95 = v94 / v91;
  if (v93 <= v95)
  {
    v96 = v94 / v91;
  }

  else
  {
    v96 = (v92 + 0.5) / v91;
  }

  v97 = v183;
  sub_26152D308(v208, v84, v83, v80, &v181, &v180, (v92 + 0.5) / v91, v94 / v91);
  sub_26152D308(v207, v84, v83, v80, &v178, &v179, v93, v95);
  if (v167 == v39)
  {
    v100 = (17 * v182 - 41) / 71.0;
    v101 = &v179;
    v102 = &v180;
    v103 = &v178;
    v104 = &v181;
    v105 = &xmmword_261561000;
    goto LABEL_157;
  }

  v105 = &xmmword_261561000;
  if (v74)
  {
    v100 = 27.0 / (17 * v182 + 3);
    v101 = &v180;
    v102 = &v179;
    v103 = &v181;
    v104 = &v178;
LABEL_157:
    *&v106 = *&v104->i32[1] + (v100 * (*&v104->i32[1] - *&v103->i32[1]));
    v107 = *&v102->i32[1];
    v108 = *&v101->i32[1];
    v109 = *v102->i32 + (v100 * (*v102->i32 - *v101->i32));
    *v104->i32 = *v104->i32 + (v100 * (*v104->i32 - *v103->i32));
    v104->i32[1] = v106;
    *v102->i32 = v109;
    *&v102->i32[1] = v107 + (v100 * (v107 - v108));
  }

  *v98.f32 = v181;
  v110 = vsub_f32(vzip1_s32(v178, v179), vzip1_s32(v181, v180));
  v111 = vsub_f32(vzip2_s32(v178, v179), vzip2_s32(v181, v180));
  *v99.i8 = vmla_f32(vmul_f32(v111, v111), v110, v110);
  v112 = vsqrt_f32(*v99.i8);
  v113 = *(v105 + 809);
  if ((vabds_f32(v112.f32[0], v112.f32[1]) / vaddv_f32(v112)) > v113)
  {
    goto LABEL_39;
  }

  v114 = vsub_f32(vzip1_s32(v179, v180), vzip1_s32(v178, v181));
  v115 = vsub_f32(vzip2_s32(v179, v180), vzip2_s32(v178, v181));
  v171 = vmla_f32(vmul_f32(v115, v115), v114, v114);
  v116 = vsqrt_f32(v171);
  if ((vabds_f32(v116.f32[1], v116.f32[0]) / vaddv_f32(v116)) > v113)
  {
    goto LABEL_39;
  }

  v117 = v181.i32[1];
  v118 = *&v180.i32[1];
  v119 = *(&v179 + 1);
  v120 = *(&v178 + 1);
  v166 = v180;
  v168 = v178;
  v173 = v179;
  v163 = v99;
  v164 = v98;
  if (sub_26155D41C(&v196, &v195, &v194, &v193, *v181.i32, *&v181.i32[1], *&v178, *(&v178 + 1), *v180.i32, *&v180.i32[1], *&v179, *(&v179 + 1)) == 2)
  {
    goto LABEL_39;
  }

  if (!sub_26152D450(&v182, a2))
  {
    v145.i64[0] = v164.i64[0];
    *&v145.u32[2] = v166;
    *(a2 + 28) = vcvtq_s32_f32(vrndaq_f32(v145));
    v145.i64[0] = v173;
    v145.i64[1] = v168;
    *(a2 + 44) = vcvtq_s32_f32(vrndaq_f32(v145));
    goto LABEL_186;
  }

  v121 = v163;
  v122 = *&v163.i32[1];
  if (*v163.i32 > *&v163.i32[1])
  {
    v122 = *v163.i32;
  }

  v123 = sqrtf(v122);
  v124 = v171.f32[1];
  if (v171.f32[1] <= v171.f32[0])
  {
    v124 = v171.f32[0];
  }

  *v121.i32 = sqrtf(v124);
  v125 = 4.0;
  if ((3.0 / *(&v192 + 3)) <= 4.0)
  {
    v125 = 3.0 / *(&v192 + 3);
  }

  if ((3.0 / *(&v192 + 3)) >= 0.5)
  {
    v126 = v125;
  }

  else
  {
    v126 = 0.5;
  }

  v127 = *(&v192 + 3) * v126;
  v128 = (ceilf(v126 * v123) + 1.0);
  *(&v192 + 3) = *(&v192 + 3) * v126;
  v129 = (ceilf(v126 * *v121.i32) + 1.0);
  memset(v177, 0, 76);
  v121.i32[0] = v117;
  sub_26155B8F8(v128, v129, v177, v164, v121, v166, v118, *&v173, v119, *&v168, v120);
  v174 = 0;
  v132 = v129 - 1;
  if (v97 < 1)
  {
    v144.i32[0] = 0;
  }

  else
  {
    v133 = 0;
    v134 = 0;
    v135 = ((v96 * 0.5) / v97) * v129;
    v136 = ceilf(v127) + 1.0;
    v137 = -v136;
    v138 = (v129 + 2 * vcvtps_s32_f32(v135));
    v139 = -ceilf(v135);
    v140 = (v128 + v136);
    if (2 * v97 <= 1)
    {
      v141 = 1;
    }

    else
    {
      v141 = 2 * v97;
    }

    do
    {
      v142 = v139 + ((v133 / (2 * v97 - 1)) * v138);
      memset(v175, 0, sizeof(v175));
      v143 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
      v176 = v143;
      *(v143 + 8) = 0;
      *(v143 + 18) = 0;
      *(v143 + 10) = 0;
      *v143 = 0u;
      *(v143 + 1) = 0u;
      *(v143 + 2) = 0u;
      *(v143 + 44) = 0u;
      sub_26152CD78(a4, v177[0].i32, 0, v175, &v182, &v174, v137, v142, v140, v142);
      sub_261544D00(v175);
      if ((v174 & 0x80000000) == 0)
      {
        if (v142 < v134)
        {
          v134 = v142;
        }

        if (v142 > v132)
        {
          v132 = v142;
        }
      }

      ++v133;
    }

    while (v141 != v133);
    v144.f32[0] = v134;
  }

  *v130.i32 = v128;
  v146 = *(&v177[2] + 12);
  v131.i64[0] = __PAIR64__(v177[3].u32[1], v177[2].u32[2]);
  v147 = v177[3].i32[3];
  v148 = *v177[4].i32;
  v149 = *(&v177[2] + 12);
  v149.i32[1] = v177[3].i32[2];
  LODWORD(v150) = v144.i32[0];
  *(&v150 + 1) = v132;
  v144.f32[1] = v132;
  v151 = vdupq_laneq_s32(*(&v177[2] + 12), 2);
  v151.i32[1] = v177[2].i32[2];
  v152 = vmulq_f32(vzip1q_s32(v149, v149), vdupq_lane_s64(v150, 0));
  v153 = vmlaq_f32(v152, 0, vzip1q_s32(v131, v131));
  v154 = vdupq_lane_s32(*(&v177[2].u64[1] + 4), 1);
  *v155.f32 = vmul_n_f32(v144, *&v177[4].i32[1]);
  v154.i32[1] = v177[3].i32[3];
  v156 = vdupq_lane_s32(*(v177[4].i64 + 4), 1);
  v155.i64[1] = v155.i64[0];
  v157 = vcvtq_s32_f32(vrndaq_f32(vdivq_f32(vaddq_f32(vzip1q_s32(v154, v154), v153), vaddq_f32(v156, vmlaq_n_f32(v155, 0, *v177[4].i32)))));
  *(a2 + 28) = vuzp1q_s32(v157, vrev64q_s32(v157));
  v158 = vrev64q_s32(v151);
  v159 = vdupq_lane_s32(v130, 0);
  v146.i32[0] = v147;
  v160 = vrev64q_s32(v146);
  v161 = vcvtq_s32_f32(vrndaq_f32(vdivq_f32(vaddq_f32(vzip1q_s32(v160, v160), vmlaq_n_f32(v152, vzip1q_s32(v158, v158), v128)), vaddq_f32(v156, vmlaq_n_f32(v155, v159, v148)))));
  *(a2 + 44) = vuzp2q_s32(v161, vrev64q_s32(v161));
  v27 = sub_26152D450(&v182, a2);
  if (!v27)
  {
LABEL_186:
    if (DWORD1(v182) == 32)
    {
      v27 = 0;
      v162 = 1;
      goto LABEL_190;
    }

    if (**(&v191 + 1) == 920)
    {
      v27 = 0;
      v162 = 2;
LABEL_190:
      *(a2 + 4) = v162;
    }

    else
    {
      v27 = 0;
    }
  }

LABEL_19:
  if (*(&v191 + 1))
  {
    free(*(&v191 + 1));
  }

  if (v192)
  {
    free(v192);
  }

  return v27;
}

void sub_26152CD78(unint64_t *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, signed int *a6, float a7, float a8, float a9, float a10)
{
  v15 = *(a4 + 80);
  *a6 = -1;
  if (!sub_26155AE84(a1, a2, a4, a7, a8, a9, a10))
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v16 = sub_261511370(&v69, *a4, *(a4 + 8), 0.5);
    if (!v16)
    {
LABEL_19:
      sub_261511878(&v69);
      return;
    }

    v59 = a6;
    v60 = a3;
    if (a2)
    {
      v18 = *a5 <= 2 ? 6 : 9;
      v19 = 2 * (v18 + 4 * *a5) + 8;
    }

    else
    {
      v19 = 84;
    }

    v61 = -1;
    v62 = -1;
    v63 = -1;
    v64 = -1;
    v20 = 2;
    v65 = -1;
    v66 = -1;
    v68 = 0.0;
    while (1)
    {
      if (v16 >= 22 && v16 <= v19)
      {
        v21 = (*a4 + 4 * (*v70 + -0.5));
        LODWORD(v21) = *v21 <= v21[1];
        sub_26154A4A4((v70 + 4 * v21), (v16 - v21) & 0xFFFFFFFE, (v15 + 7), (v15 + 9));
        v22 = *(a5 + 168);
        if (sub_26152B4C4(v15[7], v15[8], v15[9], v15[10], v22, &v66, &v65, &v64, &v63, &v62, &v61, &v68, &v67) || v22 && ((v66 & 0x80000000) == 0 || (v64 & 0x80000000) == 0 || (v65 & 0x80000000) == 0))
        {
          break;
        }
      }

      if (!v20)
      {
        goto LABEL_19;
      }

      LODWORD(v17) = *(a5 + 172);
      v16 = sub_26151162C(&v69, v17);
      --v20;
    }

    sub_261511878(&v69);
    v23.i32[0] = *(a5 + 172);
    if (*v23.i32 >= 0.75 && vabds_f32(v68, *v23.i32) <= (*v23.i32 * 0.25))
    {
      *v23.i32 = (*v23.i32 + v68) * 0.5;
      *(a5 + 172) = v23.i32[0];
      v24 = *v23.i32 * 17.0;
      if ((*(a5 + 168) & 1) == 0)
      {
        *v23.i32 = *v23.i32 * 17.0;
        v25 = sub_26152D664((v15 + 7), (v15 + 9), &v66, &v65, &v64, &v63, &v62, &v61, v23, a5);
        *a6 = v25;
        if (v25 < 0)
        {
          return;
        }

        sub_26152DC98(a5);
        if ((*(a5 + 168) & 1) == 0)
        {
LABEL_84:
          if (v60)
          {
            __asm { FMOV            V0.2S, #-1.0 }

            *(v60 + 48) = _D0;
            v54 = v66;
            v55 = v65;
            v56 = ((v65 >> 31) | 1);
            *(v60 + 32) = ((v66 >> 31) | 1);
            *(v60 + 36) = v56;
            if ((v54 & 0x80000000) == 0 && (v55 & 0x80000000) == 0)
            {
              v57 = *(v15[8] + 4 * v63);
LABEL_95:
              *(v60 + 48) = v57;
              *(v60 + 52) = *(v15[10] + 4 * v62);
              return;
            }

            if ((v64 & 0x80000000) == 0 && (v55 & 0x80000000) == 0)
            {
              v58 = v55 + 52;
              if (v55 >= v64)
              {
                v58 = v55;
              }

              if (v58 - v64 == 32)
              {
                *(v60 + 32) = 1065353216;
              }

              v57 = *(v15[8] + 4 * v61 - 16);
              goto LABEL_95;
            }

            if (((v64 | v54) & 0x80000000) == 0)
            {
              *(v60 + 48) = *(v15[8] + 4 * v63);
              *(v60 + 52) = *(v15[10] + 4 * v61 + 28);
            }
          }

          return;
        }
      }

      v26 = v66;
      if ((v66 & 0x80000000) == 0)
      {
        if (v66 >= *(a5 + 8))
        {
          v27 = v66;
          if (v66 <= *(a5 + 12))
          {
LABEL_31:
            v28 = v65;
            v29 = *a5;
            if ((v65 & 0x80000000) == 0)
            {
              v30 = *(a5 + 4);
              v31 = v65 - v30 - 52;
              if ((v65 - v30) <= 0x33)
              {
                v31 = v65 - v30;
              }

              if (v65 - v30 >= 0)
              {
                v32 = v31;
              }

              else
              {
                v32 = v65 - v30 + 52;
              }

              if (v29 >= 3)
              {
                if (v32 < 0)
                {
                  v32 = -1;
                }

                else
                {
                  v33 = v32 - v30;
                  v34 = v33 - 52;
                  if (v33 <= 0x33)
                  {
                    v34 = v33;
                  }

                  if (v33 >= 0)
                  {
                    v32 = v34;
                  }

                  else
                  {
                    v32 = v33 + 52;
                  }
                }
              }

              if (v32 >= *(a5 + 8) && v32 <= *(a5 + 12))
              {
                goto LABEL_49;
              }

              v28 = -1;
              v65 = -1;
            }

            v32 = -1;
LABEL_49:
            v35 = v64;
            _VF = __OFSUB__(v29, 3);
            if (v29 < 3)
            {
LABEL_70:
              v39 = -1;
LABEL_71:
              if (((v26 & v28 & 0x80000000) != 0) != _VF && v35 < 0)
              {
                return;
              }

              v45 = v15[8];
              v46 = v15[10];
              if ((v27 & 0x80000000) == 0)
              {
                sub_26152DF78((v45 + 4 * v63 + 12), (v46 + 4 * v63 + 12), v27, 0, a5, v24);
              }

              if ((v39 & 0x80000000) == 0)
              {
                v47 = v45 + 4 * v61;
                v48 = v46 + 4 * v61;
                sub_26152DF78((v47 - 16), (v48 - 16), v39, *a5 - 3, a5, v24);
                sub_26152DF78((v47 + 12), (v48 + 12), v39, *a5 - 2, a5, v24);
              }

              if ((v32 & 0x80000000) == 0)
              {
                sub_26152DF78((v45 + 4 * v62 - 28), (v46 + 4 * v62 - 28), v32, *a5 - 1, a5, v24);
                v39 = v32;
              }

              if (v27 < 0)
              {
                v49 = v39;
              }

              else
              {
                v49 = v27;
              }

              *v59 = v49;
              goto LABEL_84;
            }

            if ((v64 & 0x80000000) == 0)
            {
              goto LABEL_51;
            }

            if (v32 < 0)
            {
              v42 = *(v15 + 14) - 4;
            }

            else
            {
              v42 = v62 - 14;
            }

            if ((v32 | v27) < 0)
            {
              v44 = 0;
            }

            else
            {
              v43 = v27 - v32;
              if (v27 - v32 < 0)
              {
                v43 = v32 - v27;
              }

              v44 = v43 < 3;
            }

            v35 = sub_26152BB24((v15 + 7), (v15 + 9), v42, v44, v26, v28, &v61, &v68, 0);
            v64 = v35;
            _VF = 0;
            if (v68 < 0.75 || (_VF = 0, vabds_f32(v68, *(a5 + 172)) > (*(a5 + 172) * 0.25)))
            {
LABEL_69:
              v35 = -1;
              v64 = -1;
              goto LABEL_70;
            }

            if (v35 < 0)
            {
              v39 = -1;
            }

            else
            {
LABEL_51:
              v37 = v35 - *(a5 + 4);
              v38 = v37 - 52;
              if (v37 <= 0x33)
              {
                v38 = v35 - *(a5 + 4);
              }

              if (v37 >= 0)
              {
                v39 = v38;
              }

              else
              {
                v39 = v37 + 52;
              }
            }

            v40 = *(a5 + 8);
            _VF = __OFSUB__(v40, v39);
            if (v40 <= v39)
            {
              v41 = *(a5 + 12);
              _VF = __OFSUB__(v39, v41);
              if (v39 <= v41)
              {
                goto LABEL_71;
              }
            }

            goto LABEL_69;
          }
        }

        v26 = -1;
        v66 = -1;
      }

      v27 = -1;
      goto LABEL_31;
    }
  }
}

float32x2_t *sub_26152D308(float32x2_t *result, unsigned int a2, int a3, int a4, uint64_t a5, uint64_t a6, float a7, float a8)
{
  v8 = 0.0;
  v9.i32[0] = 0;
  v10 = 0.0;
  if (a2 >= 2)
  {
    v11 = a2;
    v12 = 0;
    v13 = result;
    v14 = 0;
    do
    {
      v15 = *v13++;
      v16 = v15;
      v12 = vadd_f32(v12, v15);
      v10 = v10 + (v15.f32[0] * v15.f32[1]);
      v14 = vmla_f32(v14, v16, v16);
      --v11;
    }

    while (v11);
    v16.f32[0] = a2;
    v17 = vdup_lane_s32(v16, 0);
    v18 = vdiv_f32(v12, v17);
    v19 = -((v10 / a2) + (vneg_f32(v18).f32[0] * v18.f32[1]));
    v9 = vmls_f32(vdiv_f32(v14, v17), v18, v18);
    v20 = vabs_f32(v9);
    v21 = vcgt_f32(vdup_lane_s32(v20, 1), v20).u8[0];
    v8 = v9.f32[1];
    if (v21)
    {
      v9.f32[0] = v19;
    }

    else
    {
      v8 = v19;
    }

    v10 = -(vmuls_lane_f32(v9.f32[0], v18, 1) + (v8 * v18.f32[0]));
  }

  v22 = &result[a3];
  v23 = &result[a4];
  if (fabsf(v8) <= 0.1)
  {
    v32 = v22->f32[0];
    *(a5 + 4) = v22->i32[1];
    v33 = v23->f32[0];
    *(a6 + 4) = v23->i32[1];
    *a5 = v33 + (a7 * (v32 - v33));
    v31 = v22->f32[0] - (a8 * (v32 - v33));
  }

  else
  {
    v24 = v8 * v8;
    v25 = 1.0 / v8;
    v26 = 1.0 / ((v8 * v8) + (v9.f32[0] * v9.f32[0]));
    v27 = -(v8 * v9.f32[0]);
    v28 = v26 * (((v27 * v22->f32[0]) + (v24 * v22->f32[1])) - (v9.f32[0] * v10));
    v29 = v26 * (((v27 * v23->f32[0]) + (v24 * v23->f32[1])) - (v9.f32[0] * v10));
    *(a5 + 4) = v29 + (a7 * (v28 - v29));
    v30 = v28 - (a8 * (v28 - v29));
    *(a6 + 4) = v30;
    *a5 = v25 * -(v10 + (v9.f32[0] * *(a5 + 4)));
    v31 = v25 * -(v10 + (v9.f32[0] * v30));
  }

  *a6 = v31;
  return result;
}

uint64_t sub_26152D450(int *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = *a1 * a1[4];
  if (v3 - a1[6] > (v2 - 2))
  {
    return 6;
  }

  v7 = v3 - v2;
  *(a2 + 8) = 2 * (v3 - v2);
  v8 = *(a2 + 16);
  if (v8)
  {
    free(v8);
    *(a2 + 16) = 0;
  }

  v9 = malloc_type_calloc(v3, 2uLL, 0x1000040BDFB0063uLL);
  v10 = malloc_type_calloc(v3, 4uLL, 0x100004052888210uLL);
  v11 = v10;
  v12 = *(a1 + 19);
  if (v12)
  {
    if (v9 && v10 != 0)
    {
      v14 = a1[4];
      if (v14 < 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        LODWORD(v17) = 0;
        v18 = *a1;
        do
        {
          if (v18 >= 1)
          {
            v19 = 0;
            v20 = *(a1 + 20);
            v17 = v17;
            do
            {
              if (!*(v20 + 2 * v17))
              {
                v10[v15++] = v17;
                v18 = *a1;
              }

              ++v19;
              ++v17;
            }

            while (v19 < v18);
            v14 = a1[4];
          }

          ++v16;
        }

        while (v16 < v14);
      }

      v24 = 0;
      if (sub_26153652C(qword_27FEB4380, v12, v7, &v12[2 * v7], v2, v10, v15, &v24, v9, &v9[2 * v7]))
      {
LABEL_26:
        free(v9);
        *(a2 + 8) = 0;
        v4 = 5;
        if (!v11)
        {
          return v4;
        }

LABEL_27:
        free(v11);
        return v4;
      }

      v22 = v15 + 2 * (v24 - v15);
      if (v24 - v15 > 3)
      {
        if (v22 > (v2 - 2))
        {
          goto LABEL_26;
        }
      }

      else if (v22 > (v2 - 3))
      {
        goto LABEL_26;
      }

      v4 = 0;
      *(a2 + 24) = 1065353216;
      *(a2 + 16) = v9;
      v23 = *a1;
      *(a2 + 80) = a1[4];
      *(a2 + 84) = v23;
      if (!v11)
      {
        return v4;
      }

      goto LABEL_27;
    }
  }

  if (v9)
  {
    free(v9);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v4 = 15;
  if (v11)
  {
    goto LABEL_27;
  }

  return v4;
}

uint64_t sub_26152D664(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4, int *a5, int *a6, int *a7, _DWORD *a8, int32x4_t a9, _WORD *a10)
{
  v10 = *a9.i32;
  v67 = *MEMORY[0x277D85DE8];
  v19 = *a3;
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v20 = *a4;
  if ((*a4 & 0x80000000) == 0)
  {
    v21 = *a7;
    v22 = *(*(a1 + 8) + 4 * v21 - 12) - *(*(a1 + 8) + 4 * *a6 + 12);
    if (v19 <= 0x13)
    {
      v23 = 32;
    }

    else
    {
      v23 = -20;
    }

    v24 = v23 + v19;
    if (v24 >= 0 && (v24 <= 0x13 ? (v25 = 32) : (v25 = -20), v20 == v25 + v24))
    {
      *a9.i32 = v22 / v10;
      if (*a9.i32 >= 0.5 && *a9.i32 <= 5.0882)
      {
        v26 = 0;
        *&a9.i32[1] = *a9.i32 + -0.58824;
        v66 = vabsq_f32(vaddq_f32(vzip1q_s32(a9, a9), xmmword_2615610A0));
        v27 = -1;
        v28 = 0.5;
        do
        {
          if (v66.f32[v26] < v28)
          {
            v27 = v26;
            v28 = v66.f32[v26];
          }

          ++v26;
        }

        while (v26 != 4);
        if (v27 == 3)
        {
          v29 = sub_26152BB24(a1, a2, v21 - 14, 1, v19, v20, a8, 0, 0);
          *a5 = v29;
          v19 = *a3;
          v30 = v29 + 52;
          if (v29 >= v19)
          {
            v30 = v29;
          }

          if (((v19 | v29) & 0x80000000) == 0 && v30 - v19 == 32)
          {
            a10[17] += 2;
            a10[23] += 2;
            v31 = &a10[v19 + 24];
            v32 = 2;
LABEL_54:
            *v31 += v32;
            return v19;
          }
        }
      }
    }

    else
    {
      v33 = v20 + 52;
      if (v20 >= v19)
      {
        v33 = *a4;
      }

      v34 = v33 - v19;
      if ((v34 & 7) == 0)
      {
        *a9.i32 = v22 / v10;
        if (*a9.i32 >= 0.5 && *a9.i32 <= 5.0882)
        {
          v49 = 0;
          *&a9.i32[1] = *a9.i32 + -0.58824;
          v66 = vabsq_f32(vaddq_f32(vzip1q_s32(a9, a9), xmmword_2615610A0));
          v50 = -1;
          v51 = 0.5;
          do
          {
            if (v66.f32[v49] < v51)
            {
              v50 = v49;
              v51 = v66.f32[v49];
            }

            ++v49;
          }

          while (v49 != 4);
          if ((v50 & 0x80000000) == 0)
          {
            if (v50 < 2)
            {
              v61 = v34 >> 3;
              if (v34 == 32 || v61 <= 1)
              {
                ++a10[v50 + 14];
                ++a10[v61 + 19];
                v39 = &a10[v19];
                goto LABEL_53;
              }

              return 0xFFFFFFFFLL;
            }

            v52 = sub_26152BB24(a1, a2, v21 - 14, 1, v19, v20, a8, 0, 0);
            *a5 = v52;
            v19 = *a3;
            v41 = v19;
            if (v52 < 0)
            {
              v62 = *a4;
              if (*a4 < v19)
              {
                v62 = *a4 + 52;
              }

              v63 = (v62 - v19) / 2;
              if ((*a4 | v19) >= 0)
              {
                v64 = v63;
              }

              else
              {
                v64 = 0;
              }

              if ((v64 & 7) == 0)
              {
                v46 = v64 >> 3;
                if (v64 == 32 || v46 <= 3)
                {
                  v48 = &a10[v50];
LABEL_64:
                  ++v48[14];
                  ++a10[v46 + 19];
                  goto LABEL_52;
                }

                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              v53 = v52 + 52;
              if (v52 >= v19)
              {
                v53 = v52;
              }

              v54 = v53 - v19;
              if ((v19 | v52) < 0)
              {
                v55 = -1;
              }

              else
              {
                v55 = v54;
              }

              v56 = *a4;
              if (*a4 < v52)
              {
                v56 = *a4 + 52;
              }

              v57 = v56 - v52;
              if (((*a4 | v52) & 0x80000000) != 0)
              {
                v57 = -1;
              }

              if (v55 == v57 && (v55 & 7) == 0)
              {
                v58 = v55 >> 3;
                if (v55 == 32 || v58 <= 3)
                {
                  a10[v50 + 14] += 2;
                  a10[v58 + 19] += 2;
                  v31 = &a10[v19 + 24];
                  v32 = 2;
                  goto LABEL_54;
                }

                return 0xFFFFFFFFLL;
              }
            }
          }
        }
      }
    }

    *a5 = sub_26152BB24(a1, a2, 4, 0, 0xFFFFFFFF, 0xFFFFFFFF, a8, 0, 0);
LABEL_27:
    if ((*a4 & 0x80000000) == 0 && (*a5 & 0x80000000) == 0)
    {
      *a3 = -1;
      v35 = *a5;
      v36 = *a4;
      if (*a4 < *a5)
      {
        v36 = *a4 + 52;
      }

      v37 = v36 - v35;
      if (((*a4 | *a5) & 0x80000000) != 0)
      {
        v37 = -1;
      }

      if (v37 == 32)
      {
        v38 = v35 - 32;
        if ((v35 - 32) > 0x33)
        {
          v38 = v35 - 84;
        }

        if (v35 < 0x20)
        {
          v38 = v35 + 20;
        }

        if (v35 >= 0)
        {
          v19 = v38;
        }

        else
        {
          v19 = 0xFFFFFFFFLL;
        }

        ++a10[16];
        ++a10[23];
LABEL_42:
        v39 = &a10[v19];
LABEL_53:
        v31 = v39 + 24;
        v32 = 1;
        goto LABEL_54;
      }

      if ((v37 & 7) == 0 && v37 <= 31 && fabsf(((*(*(a1 + 8) + 4 * *a7 - 12) - *(*(a1 + 8) + 4 * *a8 + 12)) / v10) + -2.0) <= 0.5)
      {
        v59 = v35 - v37 - 52;
        if ((v35 - v37) <= 0x33)
        {
          v59 = v35 - v37;
        }

        if (v35 - v37 >= 0)
        {
          v60 = v59;
        }

        else
        {
          v60 = v35 - v37 + 52;
        }

        if (v35 >= 0)
        {
          v19 = v60;
        }

        else
        {
          v19 = 0xFFFFFFFFLL;
        }

        ++a10[18];
        ++a10[(v37 >> 3) + 19];
        goto LABEL_42;
      }
    }

    if ((*a3 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_45:
  result = 0xFFFFFFFFLL;
  if ((*a5 & 0x80000000) == 0)
  {
    *a4 = -1;
    v19 = *a3;
    v41 = v19;
    v42 = *a5;
    if (*a5 < v19)
    {
      v42 = *a5 + 52;
    }

    v43 = v42 - v19;
    if ((*a5 | v19) < 0)
    {
      v43 = -1;
    }

    if (v43 == 32)
    {
      ++a10[17];
      ++a10[23];
LABEL_52:
      v39 = &a10[v41];
      goto LABEL_53;
    }

    if ((v43 & 7) == 0 && v43 <= 31)
    {
      v44 = (*(*(a2 + 8) + 4 * *a8) - *(*(a1 + 8) + 4 * *a6 + 12)) / v10;
      if (v44 >= 0.5 && v44 <= 2.5)
      {
        v46 = v43 >> 3;
        v47 = 3;
        if (fabsf(v44 + -1.0) < fabsf(v44 + -2.0))
        {
          v47 = 2;
        }

        v48 = &a10[v47];
        goto LABEL_64;
      }
    }
  }

  return result;
}

uint64_t sub_26152DC98(int *a1)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 18);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  if (v3 <= v4)
  {
    if (v4 <= v3)
    {
      goto LABEL_7;
    }

    *(a1 + 17) = v4 + v2;
  }

  else
  {
    *(a1 + 16) = v3 + v2;
  }

  *(a1 + 18) = 0;
LABEL_7:
  v32 = 0;
  result = sub_26152E1E8((a1 + 7), 4, &v32 + 1);
  if (result)
  {
    result = sub_26152E1E8(a1 + 38, 5, &v32);
    if (result)
    {
      v6 = HIDWORD(v32);
      v7 = v32;
      v8 = HIDWORD(v32) + 1;
      v9 = 8 * v32;
      *a1 = HIDWORD(v32) + 1;
      a1[1] = v9;
      if (v7 == 4)
      {
        if (!v6)
        {
          return result;
        }

        v10 = &unk_2615745DC + 56 * v6 - 56;
        v11 = 7;
      }

      else if (v6 || v7 > 1)
      {
        if (v8 == 2 && v7 <= 1)
        {
          v10 = &unk_2615746B4 + 32 * v7;
          v11 = 4;
        }

        else
        {
          if ((v6 & 0xFFFFFFFE) != 2)
          {
            return result;
          }

          v10 = &unk_2615746F4 + 40 * v7;
          v11 = 5;
        }
      }

      else
      {
        v10 = &unk_261574684 + 24 * v7;
        v11 = 3;
      }

      v12 = 0;
      memset(v33, 0, 14);
      do
      {
        v13 = &v10[8 * v12];
        v14 = *v13;
        if ((v14 & 0x80000000) == 0)
        {
          v15 = *(v13 + 1);
          if ((v15 & 0x80000000) == 0 && v14 <= v15)
          {
            v16 = *(v33 + v12);
            v17 = v14 - 1;
            v18 = a1 + v14 + 24;
            do
            {
              v19 = *v18++;
              v16 += v19;
              ++v17;
            }

            while (v15 > v17);
            *(v33 + v12) = v16;
          }
        }

        ++v12;
      }

      while (v12 != v11);
      v31 = 0;
      result = sub_26152E1E8(v33, 7, &v31);
      if (result)
      {
        v20 = 0;
        v21 = v31;
        v22 = *&v10[8 * v31];
        a1[2] = v22;
        v23 = *&v10[4 * ((2 * v21) | 1)];
        v24 = v23 - v22 + 1;
        a1[3] = v23;
        a1[4] = v24;
        v25 = &unk_2615747D8;
        if (v7 == 4)
        {
          v25 = &unk_261574794;
          v26 = 16;
        }

        else
        {
          v26 = 33;
        }

        v27 = v24 + 100 * v8;
        do
        {
          v28 = v20 + ((v26 - v20) >> 1);
          v29 = v25[v28];
          if (v29 <= v27)
          {
            if (v29 >= v27)
            {
              if ((v28 & 0x80000000) == 0)
              {
                v30 = &unk_2615748A4;
                if (v7 == 4)
                {
                  v30 = &unk_261574860;
                }

                a1[5] = v30[v28];
                *(a1 + 19) = malloc_type_calloc(v24 * v8, 2uLL, 0x1000040BDFB0063uLL);
                result = malloc_type_calloc(*a1 * a1[4], 2uLL, 0x1000040BDFB0063uLL);
                *(a1 + 20) = result;
                if (*(a1 + 19))
                {
                  if (result)
                  {
                    *(a1 + 168) = 1;
                  }
                }
              }

              return result;
            }

            v20 = v28 + 1;
          }

          else
          {
            v26 = v28 - 1;
          }
        }

        while (v20 <= v26);
      }
    }
  }

  return result;
}

void sub_26152DF78(float *a1, float *a2, unsigned int a3, int a4, uint64_t a5, float a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a1[4] - *a1;
  if ((vabds_f32(v7, a6) / a6) > 0.5)
  {
    return;
  }

  v11 = 0;
  v12 = 1;
  do
  {
    if (v12)
    {
      v13 = a1;
    }

    else
    {
      v13 = a2;
    }

    if (v12)
    {
      ++a1;
    }

    else
    {
      ++a2;
    }

    v36[v11] = v13[1] - *v13;
    v12 ^= 1u;
    ++v11;
  }

  while (v11 != 6);
  if (sub_26152BAA0(v36, 6u, &v30, v7) >= 0.25)
  {
    return;
  }

  v14 = (v30 + v34 - (v31 + v35) + 9) % 9;
  v15 = v14 > 6 || ((1 << v14) & 0x49) == 0;
  if (v15 || v14 != 3 * (a3 % 3))
  {
    return;
  }

  v16 = 0;
  v17 = ((v30 + v34 - (v31 + v35) + 9) % 9) / 3u;
  v18 = *(&off_279AD92F8 + v17);
  v19 = 100000 * v30 + 10000 * v31 + 10 * v34 + v35 + 1000 * v32 + 100 * v33;
  v20 = *(&off_279AD9310 + v17);
  v21 = 928;
  while (1)
  {
    v22 = v16 + ((v21 - v16) >> 1);
    v23 = *(v18 + 4 * v22);
    if (v23 <= v19)
    {
      break;
    }

    v21 = v22 - 1;
LABEL_21:
    if (v16 > v21)
    {
      return;
    }
  }

  if (v23 < v19)
  {
    v16 = v22 + 1;
    goto LABEL_21;
  }

  if ((v22 & 0x80000000) == 0)
  {
    v24 = *(v20 + 4 * v22);
    if ((v24 & 0x80000000) == 0)
    {
      v25 = a4 + *a5 * (a3 - *(a5 + 8));
      v26 = *(a5 + 160);
      v27 = *(v26 + 2 * v25);
      if (v27)
      {
        if (v24 == *(*(a5 + 152) + 2 * v25))
        {
          v28 = v27 + 1;
          goto LABEL_29;
        }

        *(v26 + 2 * v25) = v27 - 1;
        if (v27 == 1)
        {
          --*(a5 + 24);
        }
      }

      else
      {
        v29 = *(a5 + 24) + 1;
        *(*(a5 + 152) + 2 * v25) = v24;
        *(a5 + 24) = v29;
        v28 = *(v26 + 2 * v25) + 1;
LABEL_29:
        *(v26 + 2 * v25) = v28;
      }
    }
  }
}

uint64_t sub_26152E1E8(uint64_t a1, int a2, int *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  LOWORD(v6) = 0;
  v7 = -1;
  do
  {
    v8 = *(a1 + 2 * v3);
    v4 += v8;
    if (v8 > v5)
    {
      v5 = *(a1 + 2 * v3);
    }

    v9 = v8 >= v6;
    if (v8 >= v6)
    {
      v5 = v6;
    }

    if (v8 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = *(a1 + 2 * v3);
    }

    if (v9)
    {
      v7 = v3;
    }

    ++v3;
  }

  while (a2 != v3);
  if ((v6 - v5) <= 2)
  {
    v10 = v4 - v6;
    if (v6 < 3 || v10 >= v6)
    {
      return 0;
    }
  }

  *a3 = v7;
  return 1;
}

size_t sub_26152E28C(size_t result, char *a2, std::string::size_type a3, size_t *a4, const char *a5)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v5 = *(result + 8);
  v6 = v5 >> 1;
  if ((v5 >> 1) - 177 >= 0xFFFFFF50)
  {
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = result;
    v12 = *(result + 16);
    v13 = *(v11 + 4);
    if (v6 <= 0x14 && v13 == 1)
    {
      memset(v49, 0, sizeof(v49));
      v50 = 0;
      if (v12)
      {
        v15 = v6 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v17 = (v5 >> 1) & 0x1F;
        v18 = v12;
        v19 = v17;
        while (1)
        {
          v20 = *v18++;
          if (v20 > 0x3A0)
          {
            break;
          }

          if (!--v19)
          {
            v21 = 0;
            v22 = 0;
            v23 = -2;
            v24 = v17;
            do
            {
              if (v24 >= 7)
              {
                v25 = 7;
              }

              else
              {
                v25 = v24;
              }

              v26 = v24 - 7;
              if (v24 >= 7)
              {
                v24 = 7;
              }

              if (v24 <= 2)
              {
                v27 = 2;
              }

              else
              {
                v27 = v24;
              }

              v28 = v17 - v19;
              v29 = (v12 + 2 * v19);
              v53[0] = *v29;
              if (v17 - v19 >= 7)
              {
                v30 = 7;
              }

              else
              {
                v30 = v17 - v19;
              }

              v51 = 0uLL;
              v52 = 0uLL;
              if (v28 > 1)
              {
                for (i = 1; i != v27; ++i)
                {
                  v32 = v53;
                  for (j = 5; j > 1; --j)
                  {
                    *v32-- *= 928;
                  }

                  v34 = v53[0] + v29[i];
                  v53[0] = v34;
                  v35 = &v52 + 1;
                  for (k = 5; k > 1; --k)
                  {
                    v37 = v34;
                    v34 = *v35 + (v34 >> 16);
                    *v35 = v34;
                    v35[1] = v37;
                    --v35;
                  }
                }
              }

              if (v28 >= 1)
              {
                v38 = v23 + 10 * v25;
                v39 = 4;
                v40 = 10 * v30 - 1;
                do
                {
                  if (v40 >= 0x10)
                  {
                    v41 = 16;
                  }

                  else
                  {
                    v41 = v40;
                  }

                  v42 = v40 + v22 - v41 > 1600 || (v41 - 1) > 0xF;
                  if (!v42)
                  {
                    v43 = v41 + 1;
                    v44 = *(&v51 + v39);
                    v45 = v38;
                    do
                    {
                      v46 = *(v49 + v45 / 16);
                      v47 = v46 & (-32769 >> (v45 & 0xF));
                      if (v44)
                      {
                        LOWORD(v47) = v46 | (0x8000u >> (v45 & 0xF));
                      }

                      *(v49 + v45 / 16) = v47;
                      v44 >>= 1;
                      --v43;
                      --v45;
                    }

                    while (v43 > 1);
                  }

                  --v39;
                  v38 -= 16;
                  v42 = v40 <= 15;
                  v40 -= 16;
                }

                while (!v42);
              }

              v21 += 10 * v30 - 1;
              v22 += 69;
              v19 += 7;
              v23 += 69;
              v24 = v26;
            }

            while (v19 < v17);
            v16 = v21;
            v10 = a2;
            v8 = a4;
            v9 = a3;
            goto LABEL_52;
          }
        }
      }

      v16 = 0;
LABEL_52:
      sub_2614E14AC(v49, v16, v10, v9);
      result = strlen(v10);
      *v8 = result;
    }

    else
    {
      result = sub_26155BF54(v12, 0, (v5 >> 1), a2, a3, a4, a5);
      if ((result & 1) == 0)
      {
        *v8 = 0;
        *v10 = 0;
      }
    }
  }

  return result;
}

uint64_t sub_26152E580(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    if (result >= 0)
    {
      v2 = result;
    }

    else
    {
      v2 = -result;
    }

    for (i = a2; !*i; ++i)
    {
      if (!--v2)
      {
        return 0;
      }
    }

    if (result >= 0)
    {
      v4 = result;
    }

    else
    {
      v4 = -result;
    }

    v5 = a2[v4 - 1];
    if (!v5)
    {
      return 0;
    }

    v6 = 32;
    if ((v5 & 0x80000000) == 0)
    {
      v7 = 0x80000000;
      do
      {
        --v6;
        v8 = (v5 & (v7 >> 1)) == 0;
        v7 >>= 1;
      }

      while (v8);
    }

    return v6 + 32 * v4 - 32;
  }

  return result;
}

uint64_t sub_26152E5EC(uint64_t a1, int a2, _DWORD *a3)
{
  LODWORD(v3) = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    if (v3 >= 0)
    {
      v5 = *a1;
    }

    else
    {
      v5 = -v3;
    }

    while (!*v4)
    {
      ++v4;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (!a2)
    {
      return 0;
    }

    if (a2 >= 0)
    {
      LODWORD(v6) = a2;
    }

    else
    {
      LODWORD(v6) = -a2;
    }

    for (i = a3; !*i; ++i)
    {
      v6 = (v6 - 1);
      if (!v6)
      {
        return v6;
      }
    }
  }

  if (v3 <= a2)
  {
    v6 = 0xFFFFFFFFLL;
    if (v3 < a2)
    {
      return v6;
    }

    if (v3 >= 0)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = 1;
    }

    v6 = (v3 >> 31) | 1u;
    if (v3 >= 0)
    {
      v3 = v3;
    }

    else
    {
      v3 = -v3;
    }

    while (v3 >= 1)
    {
      v9 = *(*(a1 + 8) + 4 * v3 - 4);
      v10 = a3[v3 - 1];
      if (v9 > v10)
      {
        return v6;
      }

      --v3;
      if (v9 < v10)
      {
        return v8;
      }
    }

    return 0;
  }

  return 1;
}

BOOL sub_26152E6AC(_BOOL8 result, uint64_t a2)
{
  v2 = *a2;
  if (*a2 >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = -v2;
  }

  if (v2)
  {
    v4 = *(a2 + 8);
    if (v2 < 0)
    {
      v2 = -v2;
    }

    v5 = *(a2 + 8);
    while (!*v5)
    {
      ++v5;
      if (!--v2)
      {
        goto LABEL_10;
      }
    }

    if (result)
    {
      v7 = 1;
      v8 = *(a2 + 8);
      do
      {
        v9 = *v8;
        v10 = *v8 + result;
        result = __CFADD__(*v8, result);
        *v8++ = v10;
        if (v7 >= v3)
        {
          break;
        }

        ++v7;
      }

      while (result);
      if (v10 < v9)
      {
        ++*a2;
        *(v4 + 4 * v3) = result;
      }
    }
  }

  else
  {
LABEL_10:
    *a2 = 0;
    if (result)
    {
      if (result >= 0)
      {
        v6 = result;
      }

      else
      {
        v6 = -result;
      }

      **(a2 + 8) = v6;
      *a2 = 1;
    }

    else
    {
      **(a2 + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_26152E758(unsigned int *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    return result;
  }

  v5 = *a2;
  if (!*a2)
  {
    v7 = *(a1 + 1);
    if (v7 == *(a2 + 8))
    {
      return result;
    }

    if (result >= 0)
    {
      v8 = result;
    }

    else
    {
      v8 = -result;
    }

    result = memcpy(*(a2 + 8), v7, 4 * v8);
    v9 = *a1;
    goto LABEL_24;
  }

  v11 = *a1;
  if (((v5 ^ result) & 0x80000000) != 0)
  {
    if (v5 < 1)
    {
      *a2 = -v5;
      if ((sub_26152E5EC(a2, v11, *(&v11 + 1)) & 0x80000000) != 0)
      {
        return sub_26152EAC0(&v11, a2);
      }

      result = sub_26152E9F8(&v11, a2);
    }

    else
    {
      LODWORD(v11) = -v11;
      if ((sub_26152E5EC(a2, v11, *(&v11 + 1)) & 0x80000000) == 0)
      {
        return sub_26152E9F8(&v11, a2);
      }

      result = sub_26152EAC0(&v11, a2);
    }

LABEL_23:
    v9 = -*a2;
LABEL_24:
    *a2 = v9;
    return result;
  }

  if (v5 >= 1)
  {
    v6 = *(a1 + 1);

    return sub_26152E8C4(result, v6, a2);
  }

  v10 = -v11;
  if (*(a1 + 1) != *(a2 + 8))
  {
    *a2 = -v5;
  }

  result = sub_26152E8C4(v10, *(&v11 + 1), a2);
  if (*(a1 + 1) != *(a2 + 8))
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_26152E8C4(uint64_t result, int *a2, int *a3)
{
  v3 = *a3;
  v4 = *(a3 + 1);
  if (result >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = result;
  }

  if (result <= v3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = result;
  }

  if (v5 < 1)
  {
    v8 = 0;
    v5 = 0;
    v16 = 1;
  }

  else
  {
    LOBYTE(v7) = 0;
    LOBYTE(v8) = 0;
    v9 = *(a3 + 1);
    v10 = a2;
    v11 = v5;
    do
    {
      v12 = v8 | v7;
      v8 = v12 & (*v9 == -1);
      v13 = *v10++;
      v14 = *v9 + (v12 & 1);
      v15 = v13 + v14;
      v7 = __CFADD__(v13, v14);
      *v9++ = v15;
      --v11;
    }

    while (v11);
    v16 = !v7;
  }

  if (v3 > result)
  {
    if (v8)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      goto LABEL_37;
    }

    if (v5 < v3)
    {
      v18 = v3 - v5;
      v19 = (v4 + 4 * v5);
      while (__CFADD__((*v19)++, 1))
      {
        ++v19;
        if (!--v18)
        {
          v5 = v3;
          goto LABEL_26;
        }
      }

      goto LABEL_37;
    }

LABEL_26:
    *a3 = v6;
    result = v5;
LABEL_36:
    *(v4 + 4 * result) = 1;
    v6 = *a3 + 1;
LABEL_37:
    *a3 = v6;
    return result;
  }

  if (v16)
  {
    v21 = v8;
  }

  else
  {
    v21 = 1;
  }

  if (v5 >= result)
  {
    result = v5;
  }

  else
  {
    v22 = result - v5;
    v23 = (v4 + 4 * v5);
    v24 = &a2[v5];
    do
    {
      v25 = *v24++;
      v26 = v25 + (v21 & 1);
      v21 = v21 & (v25 == -1);
      *v23++ = v26;
      --v22;
    }

    while (v22);
  }

  *a3 = v6;
  if (v21)
  {
    goto LABEL_36;
  }

  return result;
}

int *sub_26152E9F8(int *result, unsigned int *a2)
{
  if (*result)
  {
    v2 = *a2;
    v3 = *(a2 + 1);
    if (*result >= 1)
    {
      v4 = 0;
      v5 = 0;
      LOBYTE(v6) = 0;
      v7 = *(result + 1);
      do
      {
        v8 = v6 | v5;
        v9 = *(v3 + 4 * v4);
        v6 = v8 & (v9 == 0);
        v10 = v9 - (v8 & 1);
        v11 = *(v7 + 4 * v4);
        v5 = v10 < v11;
        *(v3 + 4 * v4++) = v10 - v11;
        v12 = *result;
      }

      while (v4 < v12);
      v13 = v10 < v11 ? 1 : v6;
      if (v13 == 1 && v12 < v2)
      {
        v15 = v12 + 1;
        v16 = (v3 + 4 * v12);
        do
        {
          v17 = (*v16++)--;
          if (v15 >= v2)
          {
            break;
          }

          ++v15;
        }

        while (!v17);
      }
    }

    v18 = v2 & (v2 >> 31);
    v19 = (v3 + 4 * v2 - 4);
    while (1)
    {
      v20 = __OFSUB__(v2, 1);
      LODWORD(v2) = v2 - 1;
      if (v2 < 0 != v20)
      {
        break;
      }

      if (*v19--)
      {
        v18 = v2 + 1;
        break;
      }
    }

    *a2 = v18;
  }

  return result;
}

_DWORD *sub_26152EAC0(uint64_t a1, int *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  result = *(a2 + 1);
  LODWORD(v7) = *a2;
  if (*a2)
  {
    if (v7 < 1)
    {
      v15 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v10 | v9;
        v12 = v5[v8];
        v10 = v11 & (v12 == 0);
        v13 = v12 - (v11 & 1);
        v14 = result[v8];
        v9 = v13 < v14;
        result[v8++] = v13 - v14;
        v7 = *a2;
      }

      while (v8 < v7);
      if (v13 < v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = v10;
      }
    }

    v17 = v4;
    if (v7 < v4)
    {
      v18 = v4 - v7;
      v19 = &result[v7];
      v20 = &v5[v7];
      do
      {
        v21 = *v20++;
        v22 = v21 - (v15 & 1);
        v15 &= v21 == 0;
        *v19++ = v22;
        --v18;
      }

      while (v18);
    }

    *a2 = v4;
    v16 = v4 + 1;
    v23 = &result[v17 - 1];
    do
    {
      v24 = *v23--;
      --v16;
    }

    while (!v24);
  }

  else
  {
    if (v5 == result)
    {
      return result;
    }

    if (v4 < 0)
    {
      v4 = -v4;
    }

    result = memcpy(result, v5, 4 * v4);
    v16 = *a1;
  }

  *a2 = v16;
  return result;
}

int *sub_26152EBD4(int *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result;
    v5 = *a2;
    if (!*a2)
    {
      v6 = *(result + 1);
      result = *(a2 + 8);
      if (v6 == result)
      {
        v8 = 0;
      }

      else
      {
        if (v2 >= 0)
        {
          v7 = v2;
        }

        else
        {
          v7 = -v2;
        }

        result = memcpy(result, v6, 4 * v7);
        v8 = *v4;
      }

      goto LABEL_22;
    }

    v10 = *result;
    if (((v5 ^ v2) & 0x80000000) == 0)
    {
      if (v5 < 1)
      {
        LODWORD(v10) = -v10;
        v9 = v10;
        *a2 = -v5;
        if ((sub_26152E5EC(a2, v9, *(&v10 + 1)) & 0x80000000) != 0)
        {
          return sub_26152EAC0(&v10, a2);
        }

        result = sub_26152E9F8(&v10, a2);
      }

      else
      {
        if ((sub_26152E5EC(a2, v10, *(&v10 + 1)) & 0x80000000) == 0)
        {
          return sub_26152E9F8(&v10, a2);
        }

        result = sub_26152EAC0(&v10, a2);
      }

      goto LABEL_21;
    }

    if (v5 < 1)
    {
      *a2 = -v5;
      result = sub_26152E8C4(v10, *(&v10 + 1), a2);
LABEL_21:
      v8 = *a2;
LABEL_22:
      *a2 = -v8;
      return result;
    }

    return sub_26152E8C4(-v10, *(&v10 + 1), a2);
  }

  return result;
}

void sub_26152ED28(unsigned int a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 >= 0)
  {
    v3 = *a2;
  }

  else
  {
    v3 = -v2;
  }

  if (v2)
  {
    v5 = (a1 + 31) >> 5;
    v6 = *(a2 + 8);
    v7 = v2 >= 0 ? *a2 : -v2;
    v8 = v7;
    v9 = *(a2 + 8);
    while (!*v9)
    {
      ++v9;
      if (!--v8)
      {
        v10 = 0;
        if (!a1)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    v10 = v2 < 1 ? -1 : 1;
    if (a1)
    {
LABEL_17:
      v11 = v5 - 1 + v7;
      v12 = v11;
      if ((a1 & 0x1F) != 0)
      {
        v13 = 0;
        v14 = (v6 + 4 * v11);
        v15 = v7 + 1;
        v16 = (v6 + 4 * (v7 - 1));
        do
        {
          v17 = *v16--;
          *v14-- = (v17 >> (32 - (a1 & 0x1F))) | v13;
          v13 = v17 << (a1 & 0x1F);
          --v11;
          --v15;
        }

        while (v15 > 1);
        v18 = v11 + 1;
        v19 = (v6 + 4 * v11);
        do
        {
          *v19-- = v13;
          v13 = 0;
        }

        while (v18-- > 1);
      }

      else
      {
        v21 = v7 + 1;
        v22 = 4 * (v7 - 1);
        do
        {
          *(v6 + 4 * v12--) = *(v6 + v22);
          --v21;
          v22 -= 4;
        }

        while (v21 > 1);
        bzero((v6 - 4 * (v12 & ~(v12 >> 31)) + 4 * v12), 4 * (v12 & ~(v12 >> 31)) + 4);
      }

      *a2 = ((__PAIR64__(v3 + v5, *(v6 + 4 * (v5 - 1 + v3))) - 1) >> 32) * v10;
    }
  }
}

uint64_t sub_26152EE90(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  if (*a2 >= 0)
  {
    v3 = *a2;
  }

  else
  {
    v3 = -v2;
  }

  if (result && v2)
  {
    v4 = result >> 5;
    v5 = *(a2 + 8);
    if (v2 >= 0)
    {
      v6 = *a2;
    }

    else
    {
      v6 = -v2;
    }

    v7 = v6;
    for (i = *(a2 + 8); !*i; ++i)
    {
      if (!--v7)
      {
        return result;
      }
    }

    v9 = v3 >= v4;
    v10 = v3 - v4;
    if (v10 == 0 || !v9)
    {
      v15 = 0;
LABEL_25:
      *a2 = v15;
      return result;
    }

    if ((result & 0x1F) != 0)
    {
      v11 = (v10 - 1);
      if (v10 >= 1)
      {
        v12 = v6 - v4;
        v13 = *(a2 + 8);
        do
        {
          if (v11)
          {
            v14 = v13[(result >> 5) + 1] << (32 - (result & 0x1F));
          }

          else
          {
            v14 = 0;
          }

          *v13 = (v13[result >> 5] >> (result & 0x1F)) | v14;
          ++v13;
          --v11;
          --v12;
        }

        while (v12);
        v2 = *a2;
      }

      v15 = (__PAIR64__(v10, v5[v10 - 1]) - 1) >> 32;
      if (v2 <= 0)
      {
        v15 = -v15;
      }

      goto LABEL_25;
    }

    if (v2 > 0)
    {
      v16 = v10;
    }

    else
    {
      v16 = -v10;
    }

    *a2 = v16;
    if (v10 >= 1)
    {
      v17 = v6 - v4;
      do
      {
        *v5 = v5[v4];
        ++v5;
        --v17;
      }

      while (v17);
    }
  }

  return result;
}

int *sub_26152EF90(int *result, int *a2)
{
  v2 = *result;
  if (*result >= 0)
  {
    v3 = *result;
  }

  else
  {
    v3 = -v2;
  }

  v4 = *a2;
  if (v4 >= 0)
  {
    v5 = *a2;
  }

  else
  {
    v5 = -v4;
  }

  if (v4)
  {
    v7 = result;
    v8 = 0;
    result = *(a2 + 1);
    if (v4 <= -v4)
    {
      LODWORD(v4) = -v4;
    }

    while (!result[v8])
    {
      if (v4 == ++v8)
      {
        return result;
      }
    }

    v9 = *(v7 + 8);
    if (v2)
    {
      if (v2 < 0)
      {
        v2 = -v2;
      }

      v10 = *(v7 + 8);
      while (!*v10)
      {
        ++v10;
        if (!--v2)
        {
          goto LABEL_19;
        }
      }

      if (v7 == a2)
      {
        v14 = 2 * v5;
        v17 = 0;
        result = off_27FEB4370(qword_27FEB4378, 0, 4 * (2 * v5));
        __src = result;
        if (result)
        {
          HIDWORD(v17) = v14;
          sub_26152F3FC(a2, &v17);
          v15 = __src;
          result = *(a2 + 1);
          if (__src != result)
          {
            v16 = v17;
            if (v17 < 0)
            {
              v16 = -v17;
            }

            result = memcpy(result, __src, 4 * v16);
            *a2 = v17;
            v15 = __src;
          }

          if (v15)
          {
            return (off_27FEB4368)(qword_27FEB4378);
          }
        }
      }

      else
      {
        v11 = v5 + v3;
        v17 = 0;
        result = off_27FEB4370(qword_27FEB4378, 0, 4 * (v5 + v3));
        __src = result;
        if (result)
        {
          HIDWORD(v17) = v11;
          sub_26152F164(v7, a2, &v17);
          v12 = __src;
          result = *(a2 + 1);
          if (__src != result)
          {
            v13 = v17;
            if (v17 < 0)
            {
              v13 = -v17;
            }

            result = memcpy(result, __src, 4 * v13);
            *a2 = v17;
            v12 = __src;
          }

          if (v12)
          {
            return (off_27FEB4368)(qword_27FEB4378);
          }
        }
      }
    }

    else
    {
LABEL_19:
      if (v9 != result)
      {
        result = memcpy(result, v9, 4 * v3);
        *a2 = *v7;
      }
    }
  }

  return result;
}

void sub_26152F164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1 >= 0)
  {
    v5 = *a1;
  }

  else
  {
    v5 = -v4;
  }

  v6 = *a2;
  if (*a2 >= 0)
  {
    v7 = *a2;
  }

  else
  {
    v7 = -v6;
  }

  if (!v4)
  {
    goto LABEL_20;
  }

  v10 = *(a1 + 8);
  v11 = v4 >= 0 ? *a1 : -v4;
  v12 = v11;
  while (!*v10)
  {
    ++v10;
    if (!--v12)
    {
      goto LABEL_20;
    }
  }

  if (v6)
  {
    v13 = *(a2 + 8);
    if (v6 < 0)
    {
      v6 = -v6;
    }

    while (!*v13)
    {
      ++v13;
      if (!--v6)
      {
        goto LABEL_20;
      }
    }

    if (a1 == a2)
    {

      sub_26152F3FC(a1, a3);
    }

    else if (a1 != a3 && a2 != a3)
    {
      v14 = v7 + v5;
      bzero(*(a3 + 8), 4 * (v7 + v5));
      v15 = *(a2 + 8);
      if (v7 == 1)
      {
        v36 = 0;
        LODWORD(v16) = 0;
        v19 = *(a2 + 8);
      }

      else
      {
        v16 = 0;
        v17 = *(a1 + 8);
        v18 = *(a3 + 8);
        v19 = *(a2 + 8);
        do
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = *v19;
          v24 = v19[1];
          v25 = (v18 + 4 * v16);
          v26 = *v25;
          v27 = v11;
          v28 = v17;
          do
          {
            v29 = v25;
            v30 = v20 * v24;
            v31 = *v28++;
            v20 = v31;
            v32 = v31 * v23;
            v33 = v21 + v22 + v26 + v30 + v32;
            v22 = HIDWORD(v33) + HIDWORD(v32);
            v34 = v25[1];
            ++v25;
            v26 = v34;
            *v29 = v33;
            v21 = HIDWORD(v30);
            --v27;
          }

          while (v27);
          v19 += 2;
          v35 = HIDWORD(v30) + v22 + v26 + v20 * v24;
          *v25 = v35;
          v16 += 2;
        }

        while (v16 < v7 - 1);
        v36 = HIDWORD(v35);
      }

      if (v16 < v7)
      {
        v37 = *v19;
        if (v37)
        {
          v36 = 0;
          v38 = *(a1 + 8);
          v39 = (*(a3 + 8) + 4 * v16);
          if (v11 <= 1)
          {
            v40 = 1;
          }

          else
          {
            v40 = v11;
          }

          do
          {
            v41 = *v38++;
            v42 = v36 + *v39 + v41 * v37;
            *v39++ = v42;
            v36 = HIDWORD(v42);
            --v40;
          }

          while (v40);
          *v39 = v36;
        }
      }

      v43 = v14 - (v36 == 0);
      *a3 = v43;
      v44 = *a1;
      if (*a1)
      {
        v45 = *(a1 + 8);
        if (v44 >= 0)
        {
          v46 = *a1;
        }

        else
        {
          v46 = -v44;
        }

        while (!*v45)
        {
          ++v45;
          if (!--v46)
          {
            v44 = 0;
            goto LABEL_52;
          }
        }

        if (v44 < 1)
        {
          v44 = -1;
        }

        else
        {
          v44 = 1;
        }
      }

LABEL_52:
      v47 = *a2;
      if (*a2)
      {
        if (v47 >= 0)
        {
          v48 = *a2;
        }

        else
        {
          v48 = -v47;
        }

        while (!*v15)
        {
          ++v15;
          if (!--v48)
          {
            goto LABEL_58;
          }
        }

        if (v47 < 1)
        {
          v49 = -1;
        }

        else
        {
          v49 = 1;
        }
      }

      else
      {
LABEL_58:
        v49 = 0;
      }

      if (v44 != v49)
      {
        *a3 = -v43;
      }
    }
  }

  else
  {
LABEL_20:
    *a3 = 0;
  }
}

int *sub_26152F3FC(int *result, uint64_t a2)
{
  v2 = *result;
  if (v2 >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = -v2;
  }

  if (v2)
  {
    if (result == a2)
    {
      return result;
    }

    v4 = *(a2 + 8);
    v5 = *(result + 1);
    if (v2 >= 0)
    {
      v6 = *result;
    }

    else
    {
      v6 = -v2;
    }

    v7 = *(a2 + 8);
    v8 = *(result + 1);
    do
    {
      v9 = *v8++;
      *v7++ = v9 * v9;
      --v6;
    }

    while (v6);
    if (v3 != 1)
    {
      v10 = 0;
      if (v2 <= -v2)
      {
        LODWORD(v2) = -v2;
      }

      do
      {
        v11 = v4 + 8 * v10++;
        v12 = (v11 + 4);
        if (v10 >= v3)
        {
          v13 = 0;
        }

        else
        {
          v13 = 0;
          v14 = *v5;
          v15 = 1;
          do
          {
            v16 = (v5[v15] * v14) >> 32;
            result = (2 * v5[v15] * v14);
            v17 = result + v13 + *v12;
            *v12++ = v17;
            v13 = HIDWORD(v17) + 2 * v16;
            ++v15;
          }

          while (v2 != v15);
        }

        ++v5;
        do
        {
          v18 = *v12 + v13;
          *v12++ = v18;
          v13 = HIDWORD(v18) + HIDWORD(v13);
        }

        while (v13);
        LODWORD(v2) = v2 - 1;
      }

      while (v10 != v3 - 1);
    }

    v19 = 2 * v3;
    if (!*(v4 + 4 * (v19 - 1)))
    {
      --v19;
    }
  }

  else
  {
    v19 = 0;
  }

  *a2 = v19;
  return result;
}

_DWORD *sub_26152F504(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 < 0)
  {
    v4 = -v4;
  }

  v5 = 4 * v4;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v20 = 0;
  v21 = 0;
  if (4 * v4)
  {
    result = off_27FEB4370(qword_27FEB4378, 0, 4 * (4 * v4));
    v21 = result;
    if (!result)
    {
      goto LABEL_30;
    }

    HIDWORD(v20) = v5;
    result = off_27FEB4370(qword_27FEB4378, 0, 4 * v5);
    v19 = result;
    if (!result)
    {
      goto LABEL_30;
    }

    v7 = result;
    HIDWORD(v18) = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = *a1;
  if (*a1 >= 0)
  {
    v9 = *a1;
  }

  else
  {
    v9 = -v8;
  }

  if (v8)
  {
    result = off_27FEB4370(qword_27FEB4378, 0, 4 * v9);
    v17 = result;
    if (!result)
    {
      goto LABEL_30;
    }

    HIDWORD(v16) = v9;
  }

  else
  {
    result = 0;
  }

  v10 = *(a1 + 8);
  if (v10 != result)
  {
    v11 = *a1;
    if (*a1 < 0)
    {
      v11 = -v11;
    }

    memcpy(result, v10, 4 * v11);
    LODWORD(v16) = *a1;
  }

  **(a2 + 8) = 1;
  *a2 = 1;
  sub_26152EBD4(a2, &v16);
  v12 = sub_26152E580(v16, v17);
  sub_26152E758(a2, &v16);
  sub_26152ED28(v12, a2);
  v13 = *(a2 + 8);
  if (v13 != v7)
  {
    goto LABEL_21;
  }

  v14 = 0;
  while (1)
  {
    sub_26152F3FC(a2, &v20);
    sub_26152EE90(v12, &v20);
    sub_26152EF90(&v16, &v20);
    sub_26152EE90(v12, &v20);
    sub_26152E758(a2, a2);
    sub_26152EBD4(&v20, a2);
    if (sub_26152E5EC(a2, v14, v7) < 1)
    {
      break;
    }

    v13 = *(a2 + 8);
    if (v13 != v7)
    {
LABEL_21:
      v15 = *a2;
      if (*a2 < 0)
      {
        v15 = -v15;
      }

      memcpy(v7, v13, 4 * v15);
      v14 = *a2;
      LODWORD(v18) = *a2;
    }
  }

  *v21 = 1;
  LODWORD(v20) = 1;
  sub_26152ED28(2 * v12, &v20);
  sub_26152F164(a2, &v16, &v18);
  result = sub_26152EBD4(&v18, &v20);
  *v19 = 1;
  LODWORD(v18) = 1;
  while ((v20 & 0x80000000) != 0)
  {
    sub_26152EBD4(&v18, a2);
    result = sub_26152E758(&v16, &v20);
  }

LABEL_30:
  if (v21)
  {
    result = off_27FEB4368(qword_27FEB4378);
  }

  v20 = 0;
  v21 = 0;
  if (v19)
  {
    result = off_27FEB4368(qword_27FEB4378);
  }

  v18 = 0;
  v19 = 0;
  if (v17)
  {
    return off_27FEB4368(qword_27FEB4378);
  }

  return result;
}

uint64_t MRCContextGetTypeID()
{
  if (qword_280CB34E0 != -1)
  {
    dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
  }

  return qword_280CB35D8;
}

unint64_t MRCContextCreateWithOptions(CFTypeRef a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    a1 = CFRetain(a1);
  }

  v6 = a1;
  if (qword_280CB34E0 != -1)
  {
    dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v2 = CFGetTypeID(Instance);
    if (qword_280CB34E0 != -1)
    {
      dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
    }

    if (v2 != qword_280CB35D8)
    {
      _os_assumes_log();
    }

    operator new();
  }

  v7 = 0;
  v3 = atomic_exchange(&v7, 0);
  v4 = atomic_exchange(&v7, 0);
  if (v4)
  {
    CFRelease(v4);
  }

  sub_26148D93C(&v6);
  return v3;
}

void sub_26152FFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  sub_2614F7F28(va1);
  sub_26148D890(v4);
  sub_26148D890(v3);
  MEMORY[0x2667045D0](v2, 0x10C0C40B18511C9);
  sub_26148D93C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2615300C8(uint64_t a1)
{
  sub_26153015C(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_261530104(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_26148D890((v2 + 16));
    sub_26148D890((v2 + 8));
    MEMORY[0x2667045D0](v2, 0x10C0C40B18511C9);
  }

  return a1;
}

void sub_26153015C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_26149E17C(v1 + 6);
      sub_26149E1E4((v1 + 7));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t MRCContextPreflightForDecoderUsingOptions(const void *a1, const __CFDictionary *a2, const void *a3)
{
  if (a2)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a2);
    if (a3)
    {
LABEL_3:
      v6 = _Block_copy(a3);
      goto LABEL_6;
    }
  }

  else
  {
    Copy = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  sub_2614E946C(v17);
  sub_26148EA44(&v18, "com.apple.Quagga.MRCContext-", 28);
  *(&v18 + *(v18 - 24) + 8) = *(&v18 + *(v18 - 24) + 8) & 0xFFFFFFB5 | 8;
  v7 = MEMORY[0x266704420](&v18, a1);
  sub_26148EA44(v7, ".preflight", 10);
  v8 = __p;
  sub_2614E9710(__p, v17);
  if (v16 < 0)
  {
    v8 = __p[0];
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, -15);
  v11 = dispatch_queue_create(v8, v10);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  CFRetain(a1);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 0x40000000;
  v14[2] = sub_261530490;
  v14[3] = &unk_279AD9358;
  v14[4] = v6;
  v14[5] = a1;
  v14[6] = Copy;
  v14[7] = v11;
  dispatch_async(v11, v14);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x266704550](&v22);
}

void sub_261530474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2614E97B8(va);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_261530490(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = CFGetTypeID(*(a1 + 40));
    if (qword_280CB34E0 != -1)
    {
      dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
    }

    if (v3 != qword_280CB35D8)
    {
      _os_assumes_log();
    }
  }

  v22 = *(a1 + 48);
  if (qword_280CB3EF0 != -1)
  {
    dispatch_once(&qword_280CB3EF0, &unk_2873D07C0);
  }

  v4 = v2 + 16;
  v5 = qword_280CB3EE8;
  if (os_log_type_enabled(qword_280CB3EE8, OS_LOG_TYPE_DEBUG))
  {
    *v33 = 138543362;
    v34 = v4 - 16;
    _os_log_debug_impl(&dword_26146F000, v5, OS_LOG_TYPE_DEBUG, "Preflighting context: %{public}@", v33, 0xCu);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v21 = atomic_load_explicit(&v22, memory_order_acquire);
    *v33 = 138543362;
    v34 = v21;
    _os_log_debug_impl(&dword_26146F000, v5, OS_LOG_TYPE_DEBUG, "    for decoder using options: %{public}@", v33, 0xCu);
  }

  sub_2614E6BE8(v33, &v22);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  buf[0] = 0;
  buf[4] = 0;
  v6 = 0;
  if (sub_2614E9390(v33, @"AppClipCode", buf))
  {
    *buf = sub_2614BCAD8;
    v6 = sub_2614EB17C(&v25, buf);
    v26 = v6;
  }

  if (v35 < 196608)
  {
    *buf = sub_2614AB070;
    if (v6 < v27)
    {
      *v6 = &unk_2873D10C0;
      v7 = sub_2614AB070;
      goto LABEL_21;
    }

LABEL_22:
    v6 = sub_2614EB17C(&v25, buf);
    goto LABEL_23;
  }

  if ((v37 & 1) != 0 || (_os_feature_enabled_impl() & 1) == 0)
  {
    *buf = sub_2614A443C;
    if (v6 < v27)
    {
      *v6 = &unk_2873D10C0;
      v7 = sub_2614A443C;
LABEL_21:
      v6[1] = v7;
      v6[3] = v6;
      v6 += 4;
LABEL_23:
      v26 = v6;
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_24:
  if (_os_feature_enabled_impl() && v35 > 196607)
  {
    *buf = sub_2614BA5A4;
    if (v6 >= v27)
    {
      v6 = sub_2614EB17C(&v25, buf);
    }

    else
    {
      *v6 = &unk_2873D10C0;
      v6[1] = sub_2614BA5A4;
      v6[3] = v6;
      v6 += 4;
    }

    v26 = v6;
  }

  if (sub_2614EABCC(v33))
  {
    *buf = sub_26150A6C4;
    if (v6 >= v27)
    {
      v6 = sub_2614EB17C(&v25, buf);
    }

    else
    {
      *v6 = &unk_2873D10C0;
      v6[1] = sub_26150A6C4;
      v6[3] = v6;
      v6 += 4;
    }

    v26 = v6;
  }

  if (_os_feature_enabled_impl())
  {
    *buf = sub_2614CCF5C;
    if (v6 >= v27)
    {
      v8 = sub_2614EB17C(&v25, buf);
    }

    else
    {
      *v6 = &unk_2873D10C0;
      v6[1] = sub_2614CCF5C;
      v6[3] = v6;
      v8 = v6 + 4;
    }

    v26 = v8;
  }

  v9 = os_signpost_id_make_with_pointer(v5, (v4 - 16));
  v24 = 0;
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    explicit = atomic_load_explicit(v33, memory_order_acquire);
    v11 = MEMORY[0x277CBECE8];
    if (explicit && CFSetGetCount(atomic_load_explicit(v33, memory_order_acquire)) >= 1)
    {
      operator new[]();
    }

    if (atomic_load_explicit(buf, memory_order_acquire))
    {
      v12 = CFStringCreateByCombiningStrings(*v11, atomic_load_explicit(buf, memory_order_acquire), @",");
    }

    else
    {
      v12 = CFRetain(@"<empty>");
    }

    v13 = atomic_exchange(&v24, v12);
    if (v13)
    {
      CFRelease(v13);
    }

    sub_261476A0C(buf);
  }

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v14 = atomic_load_explicit(&v24, memory_order_acquire);
    *buf = 138543874;
    if (v36)
    {
      v15 = "true";
    }

    else
    {
      v15 = "false";
    }

    *&buf[4] = v14;
    v29 = 2050;
    v30 = v35;
    v31 = 2082;
    v32 = v15;
    _os_signpost_emit_with_name_impl(&dword_26146F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Context::preflightForDecoderUsingOptions", "symbologies=%{public, signpost.description:attribute}@, algorithmVersion=%{public, signpost.description:attribute}ld, allowsAlgorithmicVersioningFallback=%{public, signpost.description:attribute}s", buf, 0x20u);
  }

  v16 = v25;
  v17 = v26;
  if (v25 == v26)
  {
LABEL_60:
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v5, OS_SIGNPOST_INTERVAL_END, v9, "Context::preflightForDecoderUsingOptions", &unk_26159692B, buf, 2u);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v4 - 16;
      _os_log_debug_impl(&dword_26146F000, v5, OS_LOG_TYPE_DEBUG, "Preflighted context: %{public}@", buf, 0xCu);
    }

    v23 = 0;
  }

  else
  {
    while (1)
    {
      v18 = v16[3];
      if (!v18)
      {
        sub_261477FC4();
      }

      (*(*v18 + 48))(&v23);
      if (atomic_load_explicit(&v23, memory_order_acquire))
      {
        break;
      }

      sub_261476C54(&v23);
      v16 += 4;
      if (v16 == v17)
      {
        goto LABEL_60;
      }
    }
  }

  sub_26148E848(&v24);
  *buf = &v25;
  sub_2614EB330(buf);
  sub_2614E68C0(v33);
  sub_26148D93C(&v22);
  v19 = *(a1 + 32);
  if (v19)
  {
    (*(v19 + 16))(v19, *(a1 + 40), atomic_load_explicit(&v23, memory_order_acquire));
    _Block_release(*(a1 + 32));
  }

  CFRelease(*(a1 + 40));
  dispatch_release(*(a1 + 56));
  return sub_261476C54(&v23);
}

void sub_261530C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, atomic_ullong a19)
{
  a15 = &a12;
  sub_2614EB330(&a15);
  sub_2614E68C0(&a19);
  sub_26148D93C(&a9);
  _Unwind_Resume(a1);
}

uint64_t MRCContextPurge(char *cf)
{
  context[4] = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34E0 != -1)
    {
      dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
    }

    if (v2 != qword_280CB35D8)
    {
      _os_assumes_log();
    }
  }

  context[0] = &unk_2873CFED8;
  context[1] = cf + 16;
  context[3] = context;
  sub_261530D9C((cf + 16), 0, context);
  return sub_261477CFC(context);
}

void sub_261530D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261477CFC(va);
  _Unwind_Resume(a1);
}

void sub_261530D9C(uint64_t a1, char a2, void *context)
{
  if (!context[3])
  {
    _os_assumes_log();
  }

  v6 = *(a1 + 16);
  if (a2)
  {

    dispatch_sync_f(v6, context, sub_261530E88);
  }

  else
  {

    dispatch_barrier_sync_f(v6, context, sub_261530E40);
  }
}

uint64_t sub_261530E40(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_261477FC4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_261530E88(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_261477FC4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_261530EDC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc7Context5purgeEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261530F18(uint64_t a1)
{
  v1 = *(a1 + 8);
  os_unfair_lock_lock_with_options();
  if (*(v1 + 48))
  {
    sub_26153015C(*(v1 + 40));
    *(v1 + 40) = 0;
    v2 = *(v1 + 32);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(v1 + 24) + 8 * i) = 0;
      }
    }

    *(v1 + 48) = 0;
  }

  os_unfair_lock_unlock((v1 + 8));
}

uint64_t sub_261530F98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873CFED8;
  a2[1] = v2;
  return result;
}

const void *MRCContextPerform(const void *cf, char a2, uint64_t a3)
{
  context[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = cf;
  if (a3)
  {
    v4 = cf;
    if (cf)
    {
      v5 = CFGetTypeID(cf);
      if (qword_280CB34E0 != -1)
      {
        dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
      }

      if (v5 != qword_280CB35D8)
      {
        _os_assumes_log();
      }
    }

    context[0] = &unk_2873D1068;
    context[1] = &v6;
    context[2] = &v7;
    context[3] = context;
    sub_261530D9C(v4 + 16, a2, context);
    return sub_261477CFC(context);
  }

  return cf;
}

void sub_261531138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_261477CFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261531158(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "Z17MRCContextPerformE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2615311B4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D1068;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void MRCContextPerformAsync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    operator new();
  }
}

void sub_261531394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261477CFC(va);
  _Unwind_Resume(a1);
}

void sub_2615313BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    _os_assumes_log();
  }

  operator new();
}

void sub_261531484(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    sub_261477CFC(a1);

    JUMPOUT(0x2667045D0);
  }

  sub_261477FC4();
}

void sub_2615314FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    sub_261477CFC(a1);

    JUMPOUT(0x2667045D0);
  }

  sub_261477FC4();
}

uint64_t sub_261531580(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "Z22MRCContextPerformAsyncE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2615315BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained(*(a1 + 16));
  (*(v2 + 16))(v2, atomic_load_explicit(&WeakRetained, memory_order_acquire));
  sub_2614CC260(&WeakRetained);
  v3 = *(a1 + 16);
  if (v3)
  {
    objc_destroyWeak(*(a1 + 16));
    MEMORY[0x2667045D0](v3, 0x20C4093837F09);
  }

  _Block_release(*(a1 + 8));
}

void sub_261531644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2614CC260(va);
  _Unwind_Resume(a1);
}

__n128 sub_261531660(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D00E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2615316FC(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 32) == 1)
  {
    if (qword_27FEB4398 != -1)
    {
      dispatch_once_f(&qword_27FEB4398, 0, sub_261531844);
    }

    v1 = *a1;
  }

  if (*(v1 + 33) == 1 && qword_27FEB43A0 != -1)
  {

    dispatch_once_f(&qword_27FEB43A0, 0, sub_2615317B8);
  }
}

void sub_2615317B8()
{
  if (qword_280CB3EF0 != -1)
  {
    dispatch_once(&qword_280CB3EF0, &unk_2873D07C0);
  }

  v0 = qword_280CB3EE8;
  if (os_log_type_enabled(qword_280CB3EE8, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_26146F000, v0, OS_LOG_TYPE_INFO, "Usage of one shot context could bring negative impact in terms of performance due to expensive resource acquisitions. Please consider creating you own context and share them across decoders appropriately.", v1, 2u);
  }
}

void sub_261531844()
{
  if (qword_280CB3EF0 != -1)
  {
    dispatch_once(&qword_280CB3EF0, &unk_2873D07C0);
  }

  v0 = qword_280CB3EE8;
  if (os_log_type_enabled(qword_280CB3EE8, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_26146F000, v0, OS_LOG_TYPE_INFO, "Usage of global context could leave resources without deallocations during the entire process lifecycle. Please consider creating your own context as needed.", v1, 2u);
  }
}

atomic_ullong *sub_2615318D0(void *a1, int a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    if (a2)
    {
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"usesANEOnly");
    }

    if ((a2 & 2) != 0)
    {
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"prohibitsIntegratedGPU");
    }

    if ((a2 & 4) != 0)
    {
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"allowsCPU");
    }

    if ((a2 & 0x1000000) != 0)
    {
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"_prohibitsANE");
    }

    if ((a2 & 0x2000000) != 0)
    {
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"_prohibitsGPU");
    }

    if (CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire)))
    {
      v5 = CFStringCreateByCombiningStrings(v4, atomic_load_explicit(&Mutable, memory_order_acquire), @", ");
    }

    else
    {
      v5 = CFRetain(@"<empty>");
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_26147743C(&Mutable);
}

void sub_2615319F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26147743C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261531A0C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_261477FC4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_261531A68(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t *a4)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  v5 = *a4;
  *a4 = 0;
  *(a1 + 24) = v5;
  v6 = (a1 + 24);
  sub_26149E0FC(a1 + 32, (a4 + 1));
  if (!*a1)
  {
    _os_assumes_log();
  }

  if (!*v6)
  {
    _os_assumes_log();
  }

  return a1;
}

void sub_261531ADC(_Unwind_Exception *a1)
{
  sub_26149E17C(v2);
  sub_26149E1E4(v1 + 32);
  _Unwind_Resume(a1);
}

void sub_261531C5C(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x2667045D0](v4, v2);
  sub_2614CC260(v1);
  MEMORY[0x2667045D0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_261531CBC(uint64_t a1)
{
  dispatch_release(*(a1 + 8));
  objc_destroyWeak(a1);

  JUMPOUT(0x2667045D0);
}

void sub_261531D14(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  data = dispatch_source_get_data(*(a1 + 8));
  if (data == 1)
  {
    v4 = 0;
    v3 = "normal";
  }

  else
  {
    if (data == 4)
    {
      v3 = "critical";
    }

    else
    {
      v3 = "warn";
    }

    v4 = 1;
  }

  if (qword_280CB3EF0 != -1)
  {
    dispatch_once(&qword_280CB3EF0, &unk_2873D07C0);
  }

  v5 = qword_280CB3EE8;
  if (os_log_type_enabled(qword_280CB3EE8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = v3;
    _os_log_impl(&dword_26146F000, v5, OS_LOG_TYPE_DEFAULT, "GlobalContext: received memory pressure: %{public}s", buf, 0xCu);
  }

  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26146F000, v5, OS_LOG_TYPE_DEBUG, "GlobalContext: will purge", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(a1);
    if (atomic_load_explicit(&WeakRetained, memory_order_acquire))
    {
      MRCContextPurge(atomic_load_explicit(&WeakRetained, memory_order_acquire));
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        explicit = atomic_load_explicit(&WeakRetained, memory_order_acquire);
        *buf = 138543362;
        v10 = explicit;
        _os_log_debug_impl(&dword_26146F000, v5, OS_LOG_TYPE_DEBUG, "GlobalContext: %{public}@", buf, 0xCu);
      }

      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v6 = "GlobalContext: purged";
    }

    else
    {
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
LABEL_20:
        sub_2614CC260(&WeakRetained);
        return;
      }

      *buf = 0;
      v6 = "GlobalContext: already deallocated";
    }

    _os_log_debug_impl(&dword_26146F000, v5, OS_LOG_TYPE_DEBUG, v6, buf, 2u);
    goto LABEL_20;
  }
}

void sub_261531F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2614CC260(va);
  _Unwind_Resume(a1);
}

uint64_t MRCDescriptorGetTypeID()
{
  if (qword_27FEB43E0 != -1)
  {
    dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
  }

  return qword_27FEB43E8;
}

unint64_t MRCDescriptorCreateWithAttributes(const void *a1)
{
  v8 = sub_2614BF584();
  explicit = atomic_load_explicit(&v8, memory_order_acquire);
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  v4 = atomic_load_explicit(&v7, memory_order_acquire);
  if (v4)
  {
    context[0] = 1;
    v10 = explicit + 16;
    CFDictionaryApplyFunction(v4, sub_261532074, context);
  }

  sub_26148D93C(&v7);
  v5 = atomic_exchange(&v8, 0);
  sub_261477724(&v8);
  return v5;
}

void sub_261532050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, atomic_ullong a10)
{
  sub_26148D93C(&a9);
  sub_261477724(&a10);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_261532074(CFTypeRef a1, CFTypeRef cf, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (a1)
  {
    a1 = CFRetain(a1);
  }

  v12 = a1;
  if (cf)
  {
    v6 = CFRetain(cf);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  if (qword_27FEB43C0 != -1)
  {
    dispatch_once_f(&qword_27FEB43C0, 0, sub_26153217C);
  }

  explicit = atomic_load_explicit(&v12, memory_order_acquire);
  if (explicit && (Value = CFDictionaryGetValue(qword_27FEB43B8, explicit)) != 0)
  {
    v9 = Value(v5, &v11);
  }

  else
  {
    v9 = 0;
  }

  sub_26148D890(&v11);
  result = sub_26148E848(&v12);
  *a3 &= v9;
  return result;
}

void sub_261532158(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26148E848(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef sub_26153217C()
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = xmmword_2873D7060;
  v11 = *&off_2873D7070;
  v12 = xmmword_2873D7080;
  v13 = *off_2873D7090;
  v6 = xmmword_2873D7020;
  v7 = *&off_2873D7030;
  v8 = xmmword_2873D7040;
  v9 = *&off_2873D7050;
  *values = xmmword_2873D6FE0;
  v3 = *&off_2873D6FF0;
  v4 = xmmword_2873D7000;
  v5 = *&off_2873D7010;
  memset(&v1, 0, sizeof(v1));
  result = CFDictionaryCreate(*MEMORY[0x277CBECE8], off_279AD9440, values, 24, MEMORY[0x277CBF138], &v1);
  qword_27FEB43B8 = result;
  return result;
}

uint64_t sub_261532244(uint64_t a1, atomic_ullong *a2)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    valuePtr = 0;
    v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
    if (v4 != CFNumberGetTypeID())
    {
      return 0;
    }

    result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
    if (!result)
    {
      return result;
    }

    v6 = valuePtr;
    if (valuePtr > 0xFF)
    {
      return 0;
    }

    if ((*(a1 + 204) & 1) == 0)
    {
      *(a1 + 200) = 0;
      *(a1 + 204) = 1;
    }

    *(a1 + 202) = v6 | 0x100;
  }

  else if (*(a1 + 204) == 1 && *(a1 + 203) == 1)
  {
    *(a1 + 203) = 0;
  }

  return 1;
}

uint64_t sub_261532304(uint64_t a1, atomic_ullong *a2)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    valuePtr = 0;
    v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
    if (v4 != CFNumberGetTypeID())
    {
      return 0;
    }

    result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
    if (!result)
    {
      return result;
    }

    v6 = valuePtr;
    if (valuePtr > 0xFF)
    {
      return 0;
    }

    if ((*(a1 + 204) & 1) == 0)
    {
      *(a1 + 200) = 0;
      *(a1 + 204) = 1;
    }

    *(a1 + 200) = v6 | 0x100;
  }

  else if (*(a1 + 204) == 1 && *(a1 + 201) == 1)
  {
    *(a1 + 201) = 0;
  }

  return 1;
}

uint64_t sub_2615323C4(uint64_t a1, atomic_ullong *a2)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    if ((*(a1 + 192) & 1) == 0)
    {
      *(a1 + 184) = 0;
      *(a1 + 168) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 192) = 1;
    }

    sub_261478704((a1 + 184), atomic_load_explicit(a2, memory_order_acquire));
  }

  else if (*(a1 + 192))
  {
    v2 = atomic_exchange((a1 + 184), 0);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return 1;
}

uint64_t sub_261532428(uint64_t a1, atomic_ullong *a2)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    valuePtr = 0;
    v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
    if (v4 == CFNumberGetTypeID())
    {
      result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberCFIndexType, &valuePtr);
      if (result)
      {
        if ((*(a1 + 192) & 1) == 0)
        {
          *(a1 + 184) = 0;
          *(a1 + 168) = 0u;
          *(a1 + 152) = 0u;
          *(a1 + 192) = 1;
        }

        *(a1 + 168) = valuePtr;
        result = 1;
        *(a1 + 176) = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 192) == 1 && *(a1 + 176) == 1)
    {
      *(a1 + 176) = 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_2615324F0(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 192) == 1)
    {
      *(a1 + 160) = 0;
    }

    return 1;
  }

  valuePtr = 0;
  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFNumberGetTypeID())
  {
    result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberCFIndexType, &valuePtr);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 192) & 1) == 0)
    {
      *(a1 + 184) = 0;
      *(a1 + 168) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 192) = 1;
    }

    *(a1 + 160) = valuePtr;
    return 1;
  }

  return 0;
}

uint64_t sub_2615325A4(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 192) == 1)
    {
      *(a1 + 152) = 0;
    }

    return 1;
  }

  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFBooleanGetTypeID())
  {
    if ((*(a1 + 192) & 1) == 0)
    {
      *(a1 + 184) = 0;
      *(a1 + 168) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 192) = 1;
    }

    *(a1 + 152) = CFBooleanGetValue(atomic_load_explicit(a2, memory_order_acquire)) != 0;
    return 1;
  }

  return 0;
}

uint64_t sub_261532644(uint64_t a1, atomic_ullong *a2)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    valuePtr = 0;
    v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
    if (v4 == CFNumberGetTypeID())
    {
      result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
      if (result)
      {
        if ((*(a1 + 148) & 1) == 0)
        {
          *(a1 + 128) = 0;
          *(a1 + 136) = 0;
          *(a1 + 144) = 0;
          *(a1 + 148) = 1;
        }

        *(a1 + 136) = valuePtr;
        result = 1;
        *(a1 + 140) = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 148) == 1 && *(a1 + 140) == 1)
    {
      *(a1 + 140) = 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_261532704(uint64_t a1, atomic_ullong *a2)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    valuePtr = 0;
    v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
    if (v4 == CFNumberGetTypeID())
    {
      result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
      if (result)
      {
        if ((*(a1 + 148) & 1) == 0)
        {
          *(a1 + 128) = 0;
          *(a1 + 136) = 0;
          *(a1 + 144) = 0;
          *(a1 + 148) = 1;
        }

        *(a1 + 128) = valuePtr;
        result = 1;
        *(a1 + 132) = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 148) == 1 && *(a1 + 132) == 1)
    {
      *(a1 + 132) = 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_2615327C4(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 148) == 1 && *(a1 + 145) == 1)
    {
      *(a1 + 145) = 0;
    }

    return 1;
  }

  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFBooleanGetTypeID())
  {
    if ((*(a1 + 148) & 1) == 0)
    {
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      *(a1 + 148) = 1;
    }

    if (CFBooleanGetValue(atomic_load_explicit(a2, memory_order_acquire)))
    {
      v5 = 257;
    }

    else
    {
      v5 = 256;
    }

    *(a1 + 144) = v5;
    return 1;
  }

  return 0;
}

uint64_t sub_26153286C(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 120) == 1)
    {
      sub_261532940((a1 + 96), 20);
    }

    return 1;
  }

  valuePtr = 0;
  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFNumberGetTypeID())
  {
    result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 96) = a1 + 104;
      *(a1 + 120) = 1;
    }

    v6 = valuePtr;
    v8 = &unk_26157A1CC;
    *(sub_261480070(a1 + 96, 20) + 8) = v6;
    return 1;
  }

  return 0;
}

void sub_261532940(void **a1, int a2)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (!v2)
  {
    return;
  }

  v5 = a1 + 1;
  v6 = v2;
  do
  {
    if (v6[7] >= a2)
    {
      v5 = v6;
    }

    v6 = *&v6[2 * (v6[7] < a2)];
  }

  while (v6);
  if (v5 == v3 || v5[7] > a2)
  {
    return;
  }

  v7 = *(v5 + 1);
  if (v7)
  {
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    v9 = v5;
    do
    {
      v8 = *(v9 + 2);
      v33 = *v8 == v9;
      v9 = v8;
    }

    while (!v33);
  }

  if (*a1 == v5)
  {
    *a1 = v8;
  }

  a1[2] = a1[2] - 1;
  v10 = *v5;
  v11 = v5;
  if (*v5)
  {
    v12 = *(v5 + 1);
    if (!v12)
    {
      v11 = v5;
      goto LABEL_23;
    }

    do
    {
      v11 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  v10 = v11[1];
  if (v10)
  {
LABEL_23:
    v14 = 0;
    v13 = v11[2];
    *(v10 + 16) = v13;
    goto LABEL_24;
  }

  v13 = v11[2];
  v14 = 1;
LABEL_24:
  v15 = *v13;
  if (*v13 == v11)
  {
    *v13 = v10;
    if (v11 == v2)
    {
      v15 = 0;
      v2 = v10;
    }

    else
    {
      v15 = v13[1];
    }
  }

  else
  {
    v13[1] = v10;
  }

  v16 = *(v11 + 24);
  if (v11 != v5)
  {
    v17 = *(v5 + 2);
    v11[2] = v17;
    v17[*v17 != v5] = v11;
    v19 = *v5;
    v18 = *(v5 + 1);
    *(v19 + 16) = v11;
    *v11 = v19;
    v11[1] = v18;
    if (v18)
    {
      *(v18 + 16) = v11;
    }

    *(v11 + 24) = *(v5 + 24);
    if (v2 == v5)
    {
      v2 = v11;
    }
  }

  if (!v2 || !v16)
  {
    goto LABEL_67;
  }

  if (!v14)
  {
    *(v10 + 24) = 1;
    goto LABEL_67;
  }

  while (1)
  {
    v20 = v15[2];
    v21 = *v20;
    if (*v20 == v15)
    {
      break;
    }

    if ((v15[3] & 1) == 0)
    {
      *(v15 + 24) = 1;
      *(v20 + 24) = 0;
      v22 = v20[1];
      v23 = *v22;
      v20[1] = *v22;
      if (v23)
      {
        *(v23 + 16) = v20;
      }

      v24 = v20[2];
      v22[2] = v24;
      v24[*v24 != v20] = v22;
      *v22 = v20;
      v20[2] = v22;
      if (v2 == *v15)
      {
        v2 = v15;
      }

      v15 = *(*v15 + 8);
    }

    v25 = *v15;
    if (*v15 && *(v25 + 24) != 1)
    {
      v26 = v15[1];
      if (v26 && (v26[3] & 1) == 0)
      {
LABEL_74:
        v25 = v15;
      }

      else
      {
        *(v25 + 24) = 1;
        *(v15 + 24) = 0;
        v34 = v25[1];
        *v15 = v34;
        if (v34)
        {
          *(v34 + 16) = v15;
        }

        v35 = v15[2];
        v25[2] = v35;
        v35[*v35 != v15] = v25;
        v25[1] = v15;
        v15[2] = v25;
        v26 = v15;
      }

      v36 = v25[2];
      *(v25 + 24) = *(v36 + 24);
      *(v36 + 24) = 1;
      *(v26 + 24) = 1;
      v37 = *(v36 + 8);
      v38 = *v37;
      *(v36 + 8) = *v37;
      if (v38)
      {
        *(v38 + 16) = v36;
      }

      v39 = *(v36 + 16);
      v37[2] = v39;
      v39[*v39 != v36] = v37;
      *v37 = v36;
      goto LABEL_87;
    }

    v26 = v15[1];
    if (v26 && *(v26 + 24) != 1)
    {
      goto LABEL_74;
    }

    *(v15 + 24) = 0;
    v27 = v15[2];
    if (v27 == v2 || (v27[24] & 1) == 0)
    {
      goto LABEL_68;
    }

LABEL_65:
    v15 = *(*(v27 + 2) + 8 * (**(v27 + 2) == v27));
  }

  if ((v15[3] & 1) == 0)
  {
    *(v15 + 24) = 1;
    *(v20 + 24) = 0;
    v28 = v21[1];
    *v20 = v28;
    if (v28)
    {
      *(v28 + 16) = v20;
    }

    v29 = v20[2];
    v21[2] = v29;
    v29[*v29 != v20] = v21;
    v21[1] = v20;
    v20[2] = v21;
    v30 = v15[1];
    if (v2 == v30)
    {
      v2 = v15;
    }

    v15 = *v30;
  }

  v31 = *v15;
  if (*v15 && *(v31 + 24) != 1)
  {
    goto LABEL_83;
  }

  v32 = v15[1];
  if (!v32 || *(v32 + 24) == 1)
  {
    *(v15 + 24) = 0;
    v27 = v15[2];
    v33 = v27[24] != 1 || v27 == v2;
    if (v33)
    {
LABEL_68:
      v27[24] = 1;
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (v31 && (v31[3] & 1) == 0)
  {
LABEL_83:
    v32 = v15;
    goto LABEL_84;
  }

  *(v32 + 24) = 1;
  *(v15 + 24) = 0;
  v40 = *v32;
  v15[1] = *v32;
  if (v40)
  {
    *(v40 + 16) = v15;
  }

  v41 = v15[2];
  v32[2] = v41;
  v41[*v41 != v15] = v32;
  *v32 = v15;
  v15[2] = v32;
  v31 = v15;
LABEL_84:
  v36 = v32[2];
  *(v32 + 24) = *(v36 + 24);
  *(v36 + 24) = 1;
  *(v31 + 24) = 1;
  v37 = *v36;
  v42 = *(*v36 + 8);
  *v36 = v42;
  if (v42)
  {
    *(v42 + 16) = v36;
  }

  v43 = *(v36 + 16);
  v37[2] = v43;
  v43[*v43 != v36] = v37;
  v37[1] = v36;
LABEL_87:
  *(v36 + 16) = v37;
LABEL_67:
  operator delete(v5);
}

uint64_t sub_261532D4C(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 120) == 1)
    {
      sub_261532940((a1 + 96), 21);
    }

    return 1;
  }

  valuePtr = 0;
  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFNumberGetTypeID())
  {
    result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 96) = a1 + 104;
      *(a1 + 120) = 1;
    }

    v6 = valuePtr;
    v8 = &unk_26157A1D0;
    *(sub_261480070(a1 + 96, 21) + 8) = v6;
    return 1;
  }

  return 0;
}

uint64_t sub_261532E20(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 120) == 1)
    {
      sub_261532940((a1 + 96), 22);
    }

    return 1;
  }

  valuePtr = 0;
  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFNumberGetTypeID())
  {
    result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 96) = a1 + 104;
      *(a1 + 120) = 1;
    }

    v6 = valuePtr;
    v8 = &unk_26157A1D4;
    *(sub_261480070(a1 + 96, 22) + 8) = v6;
    return 1;
  }

  return 0;
}

uint64_t sub_261532EF4(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 120) == 1)
    {
      sub_261532940((a1 + 96), 17);
    }

    return 1;
  }

  valuePtr = 0;
  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFNumberGetTypeID())
  {
    result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 96) = a1 + 104;
      *(a1 + 120) = 1;
    }

    v6 = valuePtr;
    v8 = &unk_26157A1C0;
    *(sub_261480070(a1 + 96, 17) + 8) = v6;
    return 1;
  }

  return 0;
}

uint64_t sub_261532FC8(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 120) == 1)
    {
      sub_261532940((a1 + 96), 16);
    }

    return 1;
  }

  valuePtr = 0;
  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFNumberGetTypeID())
  {
    result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 96) = a1 + 104;
      *(a1 + 120) = 1;
    }

    v6 = valuePtr;
    v8 = &unk_26157A1BC;
    *(sub_261480070(a1 + 96, 16) + 8) = v6;
    return 1;
  }

  return 0;
}

uint64_t sub_26153309C(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 120) == 1)
    {
      sub_261532940((a1 + 96), 18);
    }

    return 1;
  }

  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFBooleanGetTypeID())
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 96) = a1 + 104;
      *(a1 + 120) = 1;
    }

    Value = CFBooleanGetValue(atomic_load_explicit(a2, memory_order_acquire));
    *(sub_261480070(a1 + 96, 18) + 8) = Value;
    return 1;
  }

  return 0;
}

uint64_t sub_261533160(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 120) == 1)
    {
      sub_261532940((a1 + 96), 13);
    }

    return 1;
  }

  valuePtr = 0;
  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFNumberGetTypeID())
  {
    result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 96) = a1 + 104;
      *(a1 + 120) = 1;
    }

    v6 = valuePtr;
    v8 = &unk_26157A1B4;
    *(sub_261480070(a1 + 96, 13) + 8) = v6;
    return 1;
  }

  return 0;
}

uint64_t sub_261533234(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 120) == 1)
    {
      sub_261532940((a1 + 96), 8);
    }

    return 1;
  }

  valuePtr = 0;
  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFNumberGetTypeID())
  {
    result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 96) = a1 + 104;
      *(a1 + 120) = 1;
    }

    v6 = valuePtr;
    v8 = "\b";
    *(sub_261480070(a1 + 96, 8) + 8) = v6;
    return 1;
  }

  return 0;
}

uint64_t sub_261533308(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 120) == 1)
    {
      sub_261532940((a1 + 96), 12);
    }

    return 1;
  }

  valuePtr = 0;
  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFNumberGetTypeID())
  {
    result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberIntType, &valuePtr);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 96) = a1 + 104;
      *(a1 + 120) = 1;
    }

    v6 = valuePtr;
    v8 = &unk_26157A1B0;
    *(sub_261480070(a1 + 96, 12) + 8) = v6;
    return 1;
  }

  return 0;
}

uint64_t sub_2615333DC(uint64_t a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (*(a1 + 89) == 1)
    {
      *(a1 + 89) = 0;
    }

    return 1;
  }

  v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
  if (v4 == CFBooleanGetTypeID())
  {
    if (CFBooleanGetValue(atomic_load_explicit(a2, memory_order_acquire)))
    {
      v5 = 257;
    }

    else
    {
      v5 = 256;
    }

    *(a1 + 88) = v5;
    return 1;
  }

  return 0;
}

BOOL sub_261533460(uint64_t a1, atomic_ullong *a2)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
    if (v4 == CFArrayGetTypeID())
    {
      memset(__p, 0, sizeof(__p));
      Count = CFArrayGetCount(atomic_load_explicit(a2, memory_order_acquire));
      sub_2615335D0(__p, Count);
      v6 = CFArrayGetCount(atomic_load_explicit(a2, memory_order_acquire));
      if (v6 < 1)
      {
        v7 = 1;
LABEL_17:
        sub_261533748(a1 + 56, __p);
      }

      else
      {
        v7 = 0;
        v8 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(a2, memory_order_acquire), v8);
          v10 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            break;
          }

          v11 = CFGetTypeID(ValueAtIndex);
          if (v11 != CFDictionaryGetTypeID() || !CGPointMakeWithDictionaryRepresentation(v10, &point))
          {
            break;
          }

          sub_261533674(__p, &point);
          v7 = ++v8 >= v6;
          if (v6 == v8)
          {
            goto LABEL_17;
          }
        }
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) == 1)
    {
      v12 = *(a1 + 56);
      if (v12)
      {
        *(a1 + 64) = v12;
        operator delete(v12);
      }

      *(a1 + 80) = 0;
    }

    return 1;
  }

  return v7;
}

void sub_2615335AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2615335D0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_261473150(a2);
    }

    sub_2614709BC();
  }

  return result;
}

void sub_261533674(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      sub_2614709BC();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_261473150(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_261533748(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 1;
  return a1;
}

BOOL sub_2615337B4(uint64_t a1, atomic_ullong *a2)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
    if (v4 == CFArrayGetTypeID())
    {
      memset(__p, 0, sizeof(__p));
      Count = CFArrayGetCount(atomic_load_explicit(a2, memory_order_acquire));
      sub_2615335D0(__p, Count);
      v6 = CFArrayGetCount(atomic_load_explicit(a2, memory_order_acquire));
      if (v6 < 1)
      {
        v7 = 1;
LABEL_17:
        sub_261533748(a1 + 24, __p);
      }

      else
      {
        v7 = 0;
        v8 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(a2, memory_order_acquire), v8);
          v10 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            break;
          }

          v11 = CFGetTypeID(ValueAtIndex);
          if (v11 != CFDictionaryGetTypeID() || !CGPointMakeWithDictionaryRepresentation(v10, &point))
          {
            break;
          }

          sub_261533674(__p, &point);
          v7 = ++v8 >= v6;
          if (v6 == v8)
          {
            goto LABEL_17;
          }
        }
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      v12 = *(a1 + 24);
      if (v12)
      {
        *(a1 + 32) = v12;
        operator delete(v12);
      }

      *(a1 + 48) = 0;
    }

    return 1;
  }

  return v7;
}

void sub_261533900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261533924(uint64_t a1, atomic_ullong *a2)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    valuePtr = 0;
    v4 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire));
    if (v4 == CFNumberGetTypeID())
    {
      result = CFNumberGetValue(atomic_load_explicit(a2, memory_order_acquire), kCFNumberFloatType, &valuePtr);
      if (result)
      {
        *(a1 + 16) = valuePtr;
        result = 1;
        *(a1 + 20) = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 20) == 1)
    {
      *(a1 + 20) = 0;
    }

    return 1;
  }

  return result;
}

unint64_t MRCDescriptorCopyAttributes(char *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB43E0 != -1)
    {
      dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
    }

    if (v2 != qword_27FEB43E8)
    {
      _os_assumes_log();
    }
  }

  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 24, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (i = 0; i != 24; ++i)
  {
    v6 = off_279AD9440[i];
    v10 = CFRetain(v6);
    v7 = sub_261533BA8(&v10);
    if (v7)
    {
      v7(&Copy, cf + 16);
    }

    else
    {
      Copy = 0;
    }

    sub_26148E848(&v10);
    if (atomic_load_explicit(&Copy, memory_order_acquire))
    {
      CFDictionarySetValue(Mutable, v6, atomic_load_explicit(&Copy, memory_order_acquire));
    }

    sub_26148D890(&Copy);
  }

  Copy = CFDictionaryCreateCopy(v3, Mutable);
  CFRelease(Mutable);
  v8 = atomic_exchange(&Copy, 0);
  sub_26148D93C(&Copy);
  return v8;
}

void sub_261533B74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26148D93C(va);
  _Unwind_Resume(a1);
}

const void *sub_261533BA8(atomic_ullong *a1)
{
  if (qword_27FEB43B0 != -1)
  {
    dispatch_once_f(&qword_27FEB43B0, 0, sub_261533C2C);
  }

  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (!explicit)
  {
    return 0;
  }

  v3 = qword_27FEB43A8;

  return CFDictionaryGetValue(v3, explicit);
}

CFDictionaryRef sub_261533C2C()
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = xmmword_2873D6FA0;
  v11 = *&off_2873D6FB0;
  v12 = xmmword_2873D6FC0;
  v13 = *&off_2873D6FD0;
  v6 = xmmword_2873D6F60;
  v7 = *&off_2873D6F70;
  v8 = xmmword_2873D6F80;
  v9 = *&off_2873D6F90;
  *values = xmmword_2873D6F20;
  v3 = *&off_2873D6F30;
  v4 = xmmword_2873D6F40;
  v5 = *&off_2873D6F50;
  memset(&v1, 0, sizeof(v1));
  result = CFDictionaryCreate(*MEMORY[0x277CBECE8], off_279AD9440, values, 24, MEMORY[0x277CBF138], &v1);
  qword_27FEB43A8 = result;
  return result;
}

unsigned __int8 *sub_261533CF4@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 **a2@<X8>)
{
  if (result[204] == 1 && result[203] == 1)
  {
    valuePtr = result[202];
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    *a2 = result;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unsigned __int8 *sub_261533D60@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 **a2@<X8>)
{
  if (result[204] == 1 && result[201] == 1)
  {
    valuePtr = result[200];
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    *a2 = result;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

CFTypeRef sub_261533DCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 192) == 1)
  {
    result = atomic_load_explicit((a1 + 184), memory_order_acquire);
    if (result)
    {
      result = CFRetain(result);
    }
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_261533E14@<X0>(_BYTE *a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (a1[192] == 1 && a1[176] == 1)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, a1 + 168);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_261533E74@<X0>(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (*(a1 + 192) == 1)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, (a1 + 160));
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

CFTypeRef sub_261533EC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 192) == 1)
  {
    v3 = MEMORY[0x277CBED28];
    if (!*(a1 + 152))
    {
      v3 = MEMORY[0x277CBED10];
    }

    result = *v3;
    if (*v3)
    {
      result = CFRetain(result);
    }
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_261533F28@<X0>(_BYTE *a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (a1[148] == 1 && a1[140] == 1)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, a1 + 136);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_261533F88@<X0>(_BYTE *a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (a1[148] == 1 && a1[132] == 1)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, a1 + 128);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

CFTypeRef sub_261533FE8@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (a1[148] == 1 && a1[145] == 1)
  {
    v3 = MEMORY[0x277CBED28];
    if (!a1[144])
    {
      v3 = MEMORY[0x277CBED10];
    }

    result = *v3;
    if (*v3)
    {
      result = CFRetain(result);
    }
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_261534054@<X0>(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (*(a1 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 28) >= 20)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < 20));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 28) <= 20)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (v6 + 32));
  }

  else
  {
LABEL_9:
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_2615340DC@<X0>(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (*(a1 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 28) >= 21)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < 21));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 28) <= 21)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (v6 + 32));
  }

  else
  {
LABEL_9:
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_261534164@<X0>(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (*(a1 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 28) >= 22)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < 22));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 28) <= 22)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (v6 + 32));
  }

  else
  {
LABEL_9:
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_2615341EC@<X0>(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (*(a1 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 28) >= 17)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < 17));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 28) <= 17)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (v6 + 32));
  }

  else
  {
LABEL_9:
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_261534274@<X0>(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (*(a1 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 28) >= 16)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < 16));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 28) <= 16)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (v6 + 32));
  }

  else
  {
LABEL_9:
    result = 0;
  }

  *a2 = result;
  return result;
}

CFTypeRef sub_2615342FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 28) >= 18)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < 18));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 28) <= 18)
  {
    if (*(v6 + 32))
    {
      v8 = MEMORY[0x277CBED28];
    }

    else
    {
      v8 = MEMORY[0x277CBED10];
    }

    result = *v8;
    if (*v8)
    {
      result = CFRetain(result);
    }
  }

  else
  {
LABEL_9:
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_261534394@<X0>(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (*(a1 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 28) >= 13)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < 13));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 28) <= 13)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (v6 + 32));
  }

  else
  {
LABEL_9:
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_26153441C@<X0>(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (*(a1 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 28) >= 8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < 8));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 28) <= 8)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (v6 + 32));
  }

  else
  {
LABEL_9:
    result = 0;
  }

  *a2 = result;
  return result;
}

CFNumberRef sub_2615344A4@<X0>(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (*(a1 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 28) >= 12)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < 12));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 28) <= 12)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (v6 + 32));
  }

  else
  {
LABEL_9:
    result = 0;
  }

  *a2 = result;
  return result;
}

CFTypeRef sub_26153452C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 89) == 1)
  {
    v3 = MEMORY[0x277CBED28];
    if (!*(a1 + 88))
    {
      v3 = MEMORY[0x277CBED10];
    }

    result = *v3;
    if (*v3)
    {
      result = CFRetain(result);
    }
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void sub_26153458C(uint64_t a1@<X0>, CFArrayRef *a2@<X8>)
{
  if (*(a1 + 80) == 1)
  {
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], (*(a1 + 64) - *(a1 + 56)) >> 4, MEMORY[0x277CBF128]);
    v7 = *(a1 + 56);
    for (i = *(a1 + 64); v7 != i; ++v7)
    {
      DictionaryRepresentation = CGPointCreateDictionaryRepresentation(*v7);
      CFArrayAppendValue(Mutable, atomic_load_explicit(&DictionaryRepresentation, memory_order_acquire));
      sub_26148D93C(&DictionaryRepresentation);
    }

    *a2 = CFArrayCreateCopy(v4, Mutable);
    CFRelease(Mutable);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_261534680(uint64_t a1@<X0>, CFArrayRef *a2@<X8>)
{
  if (*(a1 + 48) == 1)
  {
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], (*(a1 + 32) - *(a1 + 24)) >> 4, MEMORY[0x277CBF128]);
    v7 = *(a1 + 24);
    for (i = *(a1 + 32); v7 != i; ++v7)
    {
      DictionaryRepresentation = CGPointCreateDictionaryRepresentation(*v7);
      CFArrayAppendValue(Mutable, atomic_load_explicit(&DictionaryRepresentation, memory_order_acquire));
      sub_26148D93C(&DictionaryRepresentation);
    }

    *a2 = CFArrayCreateCopy(v4, Mutable);
    CFRelease(Mutable);
  }

  else
  {
    *a2 = 0;
  }
}

CFNumberRef sub_261534774@<X0>(uint64_t a1@<X0>, CFNumberRef *a2@<X8>)
{
  if (*(a1 + 20) == 1)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, (a1 + 16));
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

CFTypeRef sub_2615347C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = atomic_load_explicit((a1 + 8), memory_order_acquire);
  if (result)
  {
    result = CFRetain(result);
  }

  *a2 = result;
  return result;
}

CFTypeRef sub_2615347FC@<X0>(atomic_ullong *a1@<X0>, void *a2@<X8>)
{
  result = atomic_load_explicit(a1, memory_order_acquire);
  if (result)
  {
    result = CFRetain(result);
  }

  *a2 = result;
  return result;
}

unint64_t MRCDescriptorCopyAttribute(char *cf, CFTypeRef a2)
{
  if (!cf)
  {
    goto LABEL_5;
  }

  v4 = CFGetTypeID(cf);
  if (qword_27FEB43E0 != -1)
  {
    dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
  }

  if (v4 != qword_27FEB43E8)
  {
    _os_assumes_log();
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_5:
    if (a2)
    {
LABEL_6:
      v5 = CFRetain(a2);
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  v9 = v5;
  v6 = sub_261533BA8(&v9);
  if (v6)
  {
    v6(&v10, cf + 16);
  }

  else
  {
    v10 = 0;
  }

  v7 = atomic_exchange(&v10, 0);
  sub_26148D890(&v10);
  sub_26148E848(&v9);
  return v7;
}

unint64_t MRCDescriptorDecodePayloadWithOptions(const void *a1, const void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_280CB3ED0 != -1)
  {
    dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
  }

  v6 = qword_280CB3EC8;
  if (os_log_type_enabled(qword_280CB3EC8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26146F000, v6, OS_LOG_TYPE_INFO, "MRCDescriptorDecodePayloadWithOptions: enter", buf, 2u);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138739971;
    v13 = a1;
    _os_log_impl(&dword_26146F000, v6, OS_LOG_TYPE_INFO, "MRCDescriptorDecodePayloadWithOptions: descriptor: %{sensitive}@", buf, 0xCu);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v13 = a2;
    _os_log_impl(&dword_26146F000, v6, OS_LOG_TYPE_INFO, "MRCDescriptorDecodePayloadWithOptions: options: %{public}@", buf, 0xCu);
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v7 = CFGetTypeID(a1);
  if (qword_27FEB43E0 != -1)
  {
    dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
  }

  if (v7 != qword_27FEB43E8)
  {
    _os_assumes_log();
    if (a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_13:
    if (a2)
    {
LABEL_14:
      v8 = CFRetain(a2);
      goto LABEL_15;
    }
  }

  v8 = 0;
LABEL_15:
  v11 = v8;
  sub_26151A9E4(buf, a1 + 16, &v11, 0, a3);
  v9 = atomic_exchange(buf, 0);
  sub_26148E848(buf);
  sub_26148D93C(&v11);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 141558275;
    v13 = 1752392040;
    v14 = 2117;
    v15 = v9;
    _os_log_impl(&dword_26146F000, v6, OS_LOG_TYPE_INFO, "MRCDescriptorDecodePayloadWithOptions: decodedPayloadString: %{sensitive, mask.hash}@", buf, 0x16u);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26146F000, v6, OS_LOG_TYPE_INFO, "MRCDescriptorDecodePayloadWithOptions: leave", buf, 2u);
  }

  return v9;
}

unint64_t MRCDescriptorDecodePayloadAndSupplementalPayloadWithOptions(const void *a1, __CFString **a2, const void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (qword_280CB3ED0 != -1)
  {
    dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
  }

  v8 = qword_280CB3EC8;
  if (os_log_type_enabled(qword_280CB3EC8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26146F000, v8, OS_LOG_TYPE_INFO, "MRCDescriptorDecodePayloadAndSupplementalPayloadWithOptions: enter", buf, 2u);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138739971;
    v16 = a1;
    _os_log_impl(&dword_26146F000, v8, OS_LOG_TYPE_INFO, "MRCDescriptorDecodePayloadAndSupplementalPayloadWithOptions: descriptor: %{sensitive}@", buf, 0xCu);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v16 = a3;
    _os_log_impl(&dword_26146F000, v8, OS_LOG_TYPE_INFO, "MRCDescriptorDecodePayloadAndSupplementalPayloadWithOptions: options: %{public}@", buf, 0xCu);
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v9 = CFGetTypeID(a1);
  if (qword_27FEB43E0 != -1)
  {
    dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
  }

  if (v9 != qword_27FEB43E8)
  {
    _os_assumes_log();
    if (a3)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_13:
    if (a3)
    {
LABEL_14:
      v10 = CFRetain(a3);
      goto LABEL_15;
    }
  }

  v10 = 0;
LABEL_15:
  v14 = v10;
  sub_26151A9E4(buf, a1 + 16, &v14, a2, a4);
  v11 = atomic_exchange(buf, 0);
  sub_26148E848(buf);
  sub_26148D93C(&v14);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 141558275;
    v16 = 1752392040;
    v17 = 2117;
    v18 = v11;
    _os_log_impl(&dword_26146F000, v8, OS_LOG_TYPE_INFO, "MRCDescriptorDecodePayloadAndSupplementalPayloadWithOptions: decodedPayloadString: %{sensitive, mask.hash}@", buf, 0x16u);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v12 = *a2;
      if (!*a2)
      {
        v12 = @"<null>";
      }
    }

    else
    {
      v12 = @"<N/A>";
    }

    *buf = 141558275;
    v16 = 1752392040;
    v17 = 2117;
    v18 = v12;
    _os_log_impl(&dword_26146F000, v8, OS_LOG_TYPE_INFO, "MRCDescriptorDecodePayloadAndSupplementalPayloadWithOptions: supplementalPayloadStringValue: %{sensitive, mask.hash}@", buf, 0x16u);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26146F000, v8, OS_LOG_TYPE_INFO, "MRCDescriptorDecodePayloadAndSupplementalPayloadWithOptions: leave", buf, 2u);
  }

  return v11;
}

BOOL sub_261534F24(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != 1)
  {
    return !*(a2 + 24);
  }

  if (!*(a2 + 24))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = *a2;
  if (v4 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v6 = v4 >> 4;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    while (1)
    {
      v7 = vmovn_s64(vceqq_f64(*v2, *v5));
      if ((v7.i32[0] & v7.i32[1] & 1) == 0)
      {
        break;
      }

      ++v5;
      ++v2;
      if (!--v6)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_261534FAC(void *a1, void *a2, uint64_t a3)
{
  if (a1[2] != a3)
  {
    return 0;
  }

  v5 = *a1;
  v3 = a1 + 1;
  v4 = v5;
  while (v4 != v3)
  {
    v6 = *(v4 + 7) == *(a2 + 7) && *(v4 + 8) == *(a2 + 8);
    v7 = v6;
    if (!v6)
    {
      return v7;
    }

    v8 = v4[1];
    v9 = v4;
    if (v8)
    {
      do
      {
        v4 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v4 = v9[2];
        v6 = *v4 == v9;
        v9 = v4;
      }

      while (!v6);
    }

    v10 = a2[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = a2[2];
        v6 = *v11 == a2;
        a2 = v11;
      }

      while (!v6);
    }

    a2 = v11;
  }

  return 1;
}

BOOL sub_261535054(int *a1, int *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == v3 && v2 != 0)
  {
    v2 = *a1;
    v3 = *a2;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 12);
  v6 = *(a2 + 12);
  if (v5 == v6 && v5 != 0)
  {
    v5 = a1[2];
    v6 = a2[2];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = *(a1 + 17);
  v9 = *(a2 + 17);
  if (v8 == v9)
  {
    if (*(a1 + 17))
    {
      v8 = *(a1 + 16);
      v9 = *(a2 + 16);
    }
  }

  return v8 == v9;
}

BOOL sub_2615350D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = a1[24];
  v3 = a2[24];
  if (v2 != v3 || v2 == 0)
  {
    if (v2 != v3)
    {
      return 0;
    }
  }

  else if (*(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  explicit = atomic_load_explicit(a2 + 4, memory_order_acquire);
  v6 = atomic_load_explicit(a1 + 4, memory_order_acquire);
  return v6 == explicit || explicit && v6 && CFEqual(v6, explicit);
}

BOOL sub_26153516C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3 && v2 != 0)
  {
    v2 = *a1;
    v3 = *a2;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5 == v6 && v5 != 0)
  {
    v5 = a1[2];
    v6 = a2[2];
  }

  return v5 == v6;
}

CFStringRef sub_2615351C4(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"<%s %p> {\n", "MRCDescriptor", a1 - 16);
    if (atomic_load_explicit(a1, memory_order_acquire))
    {
      CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    symbology %@\n", atomic_load_explicit(a1, memory_order_acquire));
    }

    if (atomic_load_explicit((a1 + 8), memory_order_acquire))
    {
      explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
      if (a2)
      {
        CFStringAppendFormat(explicit, 0, @"    rawPayloadData %@\n", @"<redacted>");
      }

      else
      {
        sub_261536040(&v69, (a1 + 8));
        CFStringAppendFormat(explicit, 0, @"    rawPayloadData %@\n", atomic_load_explicit(&v69, memory_order_acquire));
        sub_26148E848(&v69);
      }
    }

    if (*(a1 + 20) == 1)
    {
      CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    confidence %f\n", *(a1 + 16));
    }

    if (*(a1 + 48) == 1)
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    cornerPoints {\n");
      v7 = *(a1 + 24);
      for (i = *(a1 + 32); v7 != i; v7 += 2)
      {
        CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        {%.*g, %.*g}\n", 17, *v7, 17, v7[1]);
      }

      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
    }

    if (*(a1 + 80) == 1)
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    finderPatternPoints {\n");
      v9 = *(a1 + 56);
      for (j = *(a1 + 64); v9 != j; v9 += 2)
      {
        CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        {%.*g, %.*g}\n", 17, *v9, 17, v9[1]);
      }

      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
    }

    if (*(a1 + 89) == 1)
    {
      v11 = atomic_load_explicit(&Mutable, memory_order_acquire);
      if (*(a1 + 88))
      {
        v12 = "true";
      }

      else
      {
        v12 = "false";
      }

      CFStringAppendFormat(v11, 0, @"    isColorInverted %s\n", v12);
    }

    if (*(a1 + 120) == 1)
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    zxingSymbolMetadata {\n");
      v14 = (a1 + 104);
      v13 = *(a1 + 104);
      if (v13)
      {
        v15 = a1 + 104;
        v16 = *(a1 + 104);
        do
        {
          v17 = *(v16 + 28);
          if ((v17 & 0x80000000) == 0)
          {
            v15 = v16;
          }

          v16 = *(v16 + ((v17 >> 28) & 8));
        }

        while (v16);
        if (v15 != v14 && *(v15 + 28) <= 0)
        {
          CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        upperLeftX %d\n", *(v15 + 32));
          v13 = *v14;
        }

        if (v13)
        {
          v18 = a1 + 104;
          v19 = v13;
          do
          {
            if (*(v19 + 28) >= 1)
            {
              v18 = v19;
            }

            v19 = *(v19 + 8 * (*(v19 + 28) < 1));
          }

          while (v19);
          if (v18 != v14 && *(v18 + 28) <= 1)
          {
            CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        upperLeftY %d\n", *(v18 + 32));
            v13 = *v14;
          }

          if (v13)
          {
            v20 = a1 + 104;
            v21 = v13;
            do
            {
              if (*(v21 + 28) >= 2)
              {
                v20 = v21;
              }

              v21 = *(v21 + 8 * (*(v21 + 28) < 2));
            }

            while (v21);
            if (v20 != v14 && *(v20 + 28) <= 2)
            {
              CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        upperRightX %d\n", *(v20 + 32));
              v13 = *v14;
            }

            if (v13)
            {
              v22 = a1 + 104;
              v23 = v13;
              do
              {
                if (*(v23 + 28) >= 3)
                {
                  v22 = v23;
                }

                v23 = *(v23 + 8 * (*(v23 + 28) < 3));
              }

              while (v23);
              if (v22 != v14 && *(v22 + 28) <= 3)
              {
                CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        upperRightY %d\n", *(v22 + 32));
                v13 = *v14;
              }

              if (v13)
              {
                v24 = a1 + 104;
                v25 = v13;
                do
                {
                  if (*(v25 + 28) >= 4)
                  {
                    v24 = v25;
                  }

                  v25 = *(v25 + 8 * (*(v25 + 28) < 4));
                }

                while (v25);
                if (v24 != v14 && *(v24 + 28) <= 4)
                {
                  CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        lowerRightX %d\n", *(v24 + 32));
                  v13 = *v14;
                }

                if (v13)
                {
                  v26 = a1 + 104;
                  v27 = v13;
                  do
                  {
                    if (*(v27 + 28) >= 5)
                    {
                      v26 = v27;
                    }

                    v27 = *(v27 + 8 * (*(v27 + 28) < 5));
                  }

                  while (v27);
                  if (v26 != v14 && *(v26 + 28) <= 5)
                  {
                    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        lowerRightY %d\n", *(v26 + 32));
                    v13 = *v14;
                  }

                  if (v13)
                  {
                    v28 = a1 + 104;
                    v29 = v13;
                    do
                    {
                      if (*(v29 + 28) >= 6)
                      {
                        v28 = v29;
                      }

                      v29 = *(v29 + 8 * (*(v29 + 28) < 6));
                    }

                    while (v29);
                    if (v28 != v14 && *(v28 + 28) <= 6)
                    {
                      CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        lowerLeftX %d\n", *(v28 + 32));
                      v13 = *v14;
                    }

                    if (v13)
                    {
                      v30 = a1 + 104;
                      v31 = v13;
                      do
                      {
                        if (*(v31 + 28) >= 7)
                        {
                          v30 = v31;
                        }

                        v31 = *(v31 + 8 * (*(v31 + 28) < 7));
                      }

                      while (v31);
                      if (v30 != v14 && *(v30 + 28) <= 7)
                      {
                        CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        lowerLeftY %d\n", *(v30 + 32));
                        v13 = *v14;
                      }

                      if (v13)
                      {
                        v32 = a1 + 104;
                        v33 = v13;
                        do
                        {
                          if (*(v33 + 28) >= 8)
                          {
                            v32 = v33;
                          }

                          v33 = *(v33 + 8 * (*(v33 + 28) < 8));
                        }

                        while (v33);
                        if (v32 != v14 && *(v32 + 28) <= 8)
                        {
                          CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        qrMaskingPattern %d\n", *(v32 + 32));
                          v13 = *v14;
                        }

                        if (v13)
                        {
                          v34 = a1 + 104;
                          v35 = v13;
                          do
                          {
                            if (*(v35 + 28) >= 9)
                            {
                              v34 = v35;
                            }

                            v35 = *(v35 + 8 * (*(v35 + 28) < 9));
                          }

                          while (v35);
                          if (v34 != v14 && *(v34 + 28) <= 9)
                          {
                            CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        inversionState %d\n", *(v34 + 32));
                            v13 = *v14;
                          }

                          if (v13)
                          {
                            v36 = a1 + 104;
                            v37 = v13;
                            do
                            {
                              if (*(v37 + 28) >= 10)
                              {
                                v36 = v37;
                              }

                              v37 = *(v37 + 8 * (*(v37 + 28) < 10));
                            }

                            while (v37);
                            if (v36 != v14 && *(v36 + 28) <= 10)
                            {
                              CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        dataRows %d\n", *(v36 + 32));
                              v13 = *v14;
                            }

                            if (v13)
                            {
                              v38 = a1 + 104;
                              v39 = v13;
                              do
                              {
                                if (*(v39 + 28) >= 11)
                                {
                                  v38 = v39;
                                }

                                v39 = *(v39 + 8 * (*(v39 + 28) < 11));
                              }

                              while (v39);
                              if (v38 != v14 && *(v38 + 28) <= 11)
                              {
                                CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        dataColumns %d\n", *(v38 + 32));
                                v13 = *v14;
                              }

                              if (v13)
                              {
                                v40 = a1 + 104;
                                v41 = v13;
                                do
                                {
                                  if (*(v41 + 28) >= 12)
                                  {
                                    v40 = v41;
                                  }

                                  v41 = *(v41 + 8 * (*(v41 + 28) < 12));
                                }

                                while (v41);
                                if (v40 != v14 && *(v40 + 28) <= 12)
                                {
                                  CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        symbolVersion %d\n", *(v40 + 32));
                                  v13 = *v14;
                                }

                                if (v13)
                                {
                                  v42 = a1 + 104;
                                  v43 = v13;
                                  do
                                  {
                                    if (*(v43 + 28) >= 13)
                                    {
                                      v42 = v43;
                                    }

                                    v43 = *(v43 + 8 * (*(v43 + 28) < 13));
                                  }

                                  while (v43);
                                  if (v42 != v14 && *(v42 + 28) <= 13)
                                  {
                                    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        ecLevel %d\n", *(v42 + 32));
                                    v13 = *v14;
                                  }

                                  if (v13)
                                  {
                                    v44 = a1 + 104;
                                    v45 = v13;
                                    do
                                    {
                                      if (*(v45 + 28) >= 14)
                                      {
                                        v44 = v45;
                                      }

                                      v45 = *(v45 + 8 * (*(v45 + 28) < 14));
                                    }

                                    while (v45);
                                    if (v44 != v14 && *(v44 + 28) <= 14)
                                    {
                                      CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        isMirrored %d\n", *(v44 + 32));
                                      v13 = *v14;
                                    }

                                    if (v13)
                                    {
                                      v46 = a1 + 104;
                                      v47 = v13;
                                      do
                                      {
                                        if (*(v47 + 28) >= 15)
                                        {
                                          v46 = v47;
                                        }

                                        v47 = *(v47 + 8 * (*(v47 + 28) < 15));
                                      }

                                      while (v47);
                                      if (v46 != v14 && *(v46 + 28) <= 15)
                                      {
                                        CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        messageBits %d\n", *(v46 + 32));
                                        v13 = *v14;
                                      }

                                      if (v13)
                                      {
                                        v48 = a1 + 104;
                                        v49 = v13;
                                        do
                                        {
                                          if (*(v49 + 28) >= 16)
                                          {
                                            v48 = v49;
                                          }

                                          v49 = *(v49 + 8 * (*(v49 + 28) < 16));
                                        }

                                        while (v49);
                                        if (v48 != v14 && *(v48 + 28) <= 16)
                                        {
                                          CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        aztecDataLayers %d\n", *(v48 + 32));
                                          v13 = *v14;
                                        }

                                        if (v13)
                                        {
                                          v50 = a1 + 104;
                                          v51 = v13;
                                          do
                                          {
                                            if (*(v51 + 28) >= 17)
                                            {
                                              v50 = v51;
                                            }

                                            v51 = *(v51 + 8 * (*(v51 + 28) < 17));
                                          }

                                          while (v51);
                                          if (v50 != v14 && *(v50 + 28) <= 17)
                                          {
                                            CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        aztecDataCodewords %d\n", *(v50 + 32));
                                            v13 = *v14;
                                          }

                                          if (v13)
                                          {
                                            v52 = a1 + 104;
                                            v53 = v13;
                                            do
                                            {
                                              if (*(v53 + 28) >= 18)
                                              {
                                                v52 = v53;
                                              }

                                              v53 = *(v53 + 8 * (*(v53 + 28) < 18));
                                            }

                                            while (v53);
                                            if (v52 != v14 && *(v52 + 28) <= 18)
                                            {
                                              CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        aztecIsCompact %d\n", *(v52 + 32));
                                              v13 = *v14;
                                            }

                                            if (v13)
                                            {
                                              v54 = a1 + 104;
                                              v55 = v13;
                                              do
                                              {
                                                if (*(v55 + 28) >= 19)
                                                {
                                                  v54 = v55;
                                                }

                                                v55 = *(v55 + 8 * (*(v55 + 28) < 19));
                                              }

                                              while (v55);
                                              if (v54 != v14 && *(v54 + 28) <= 19)
                                              {
                                                CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        aztecMessageBits %d\n", *(v54 + 32));
                                                v13 = *v14;
                                              }

                                              if (v13)
                                              {
                                                v56 = a1 + 104;
                                                v57 = v13;
                                                do
                                                {
                                                  if (*(v57 + 28) >= 20)
                                                  {
                                                    v56 = v57;
                                                  }

                                                  v57 = *(v57 + 8 * (*(v57 + 28) < 20));
                                                }

                                                while (v57);
                                                if (v56 != v14 && *(v56 + 28) <= 20)
                                                {
                                                  CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        datamatrixECC %d\n", *(v56 + 32));
                                                  v13 = *v14;
                                                }

                                                if (v13)
                                                {
                                                  v58 = a1 + 104;
                                                  v59 = v13;
                                                  do
                                                  {
                                                    if (*(v59 + 28) >= 21)
                                                    {
                                                      v58 = v59;
                                                    }

                                                    v59 = *(v59 + 8 * (*(v59 + 28) < 21));
                                                  }

                                                  while (v59);
                                                  if (v58 != v14 && *(v58 + 28) <= 21)
                                                  {
                                                    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        modulesWide %d\n", *(v58 + 32));
                                                    v13 = *v14;
                                                  }

                                                  if (v13)
                                                  {
                                                    v60 = a1 + 104;
                                                    do
                                                    {
                                                      if (*(v13 + 28) >= 22)
                                                      {
                                                        v60 = v13;
                                                      }

                                                      v13 = *(v13 + 8 * (*(v13 + 28) < 22));
                                                    }

                                                    while (v13);
                                                    if (v60 != v14 && *(v60 + 28) <= 22)
                                                    {
                                                      CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        modulesHigh %d\n", *(v60 + 32));
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
    }

    if (*(a1 + 148) == 1)
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    PDF417Metadata {\n");
      if (*(a1 + 132) == 1)
      {
        CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        rowCount %d\n", *(a1 + 128));
      }

      if (*(a1 + 140) == 1)
      {
        CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        columnCount %d\n", *(a1 + 136));
      }

      if (*(a1 + 145) == 1)
      {
        v61 = atomic_load_explicit(&Mutable, memory_order_acquire);
        if (*(a1 + 144))
        {
          v62 = "true";
        }

        else
        {
          v62 = "false";
        }

        CFStringAppendFormat(v61, 0, @"        isCompact %s\n", v62);
      }

      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
    }

    if (*(a1 + 192) == 1)
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    GS1Metadata {\n");
      v63 = atomic_load_explicit(&Mutable, memory_order_acquire);
      if (*(a1 + 152))
      {
        v64 = "true";
      }

      else
      {
        v64 = "false";
      }

      CFStringAppendFormat(v63, 0, @"        isGS1DataCarrier %s\n", v64);
      v65 = atomic_load_explicit(&Mutable, memory_order_acquire);
      sub_261536144(&v69, *(a1 + 160));
      CFStringAppendFormat(v65, 0, @"        compositeFlag %@\n", atomic_load_explicit(&v69, memory_order_acquire));
      sub_26148E848(&v69);
      if (*(a1 + 176) == 1)
      {
        v66 = atomic_load_explicit(&Mutable, memory_order_acquire);
        sub_261536144(&v69, *(a1 + 168));
        CFStringAppendFormat(v66, 0, @"        supplementalCompositeFlag %@\n", atomic_load_explicit(&v69, memory_order_acquire));
        sub_26148E848(&v69);
      }

      if (atomic_load_explicit((a1 + 184), memory_order_acquire))
      {
        v67 = atomic_load_explicit(&Mutable, memory_order_acquire);
        sub_261536040(&v69, (a1 + 184));
        CFStringAppendFormat(v67, 0, @"        supplementalRawPayloadData %@\n", atomic_load_explicit(&v69, memory_order_acquire));
        sub_26148E848(&v69);
      }

      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
    }

    if (*(a1 + 204) == 1)
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    appClipCodeMetadata {\n");
      if (*(a1 + 201) == 1)
      {
        CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        metadata %hhu\n", *(a1 + 200));
      }

      if (*(a1 + 203) == 1)
      {
        CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        dataVersion %hhu\n", *(a1 + 202));
      }

      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
    }

    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"}");
    Copy = CFStringCreateCopy(v4, atomic_load_explicit(&Mutable, memory_order_acquire));
  }

  else
  {
    Copy = 0;
  }

  sub_2614959D0(&Mutable);
  return Copy;
}