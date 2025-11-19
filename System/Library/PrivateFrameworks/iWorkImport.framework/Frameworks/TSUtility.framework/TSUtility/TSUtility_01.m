uint64_t sub_277043FE0(void *a1, void *a2, double *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (!v5)
  {
    goto LABEL_10;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  v11 = 0;
  v12 = [v6 length];
  v8 = 0;
  if (![v5 getValueFromString:v7 rangePtr:&v11 valuePtr:a3] || v11)
  {
    goto LABEL_10;
  }

  v9 = v12;
  if (v9 == [v7 length])
  {
    if (__fpclassifyd(*a3) == 3)
    {
      *a3 = 0.0;
    }

    v8 = 1;
LABEL_10:
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v8 = 0;
LABEL_11:
  if (!v8)
  {
    *a3 = 0.0;
  }

LABEL_13:

  return v8;
}

__CFString *sub_2770440B4(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_27A701AC0[a1];
  }
}

__CFString *sub_2770440D8(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_27A701AF0[a1];
  }
}

__CFString *sub_2770440FC(unsigned int a1)
{
  if (a1 <= 0xFFFFFFFC)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"1/%d", a1];
  }

  else
  {
    v2 = off_27A701B18[a1 + 3];
  }

  return v2;
}

id sub_277044174(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:v2];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      v5 = [v1 characterAtIndex:v4];
      v6 = v5;
      v7 = v4 + 1;
      if (v4 + 1 >= v2)
      {
        if (v5 != 39)
        {
LABEL_16:
          [v3 appendFormat:@"%C", v6];
        }

        ++v4;
        goto LABEL_18;
      }

      v8 = [v1 characterAtIndex:v4 + 1];
      if (v6 != 39)
      {
        goto LABEL_16;
      }

      if (v8 != 39)
      {
        break;
      }

      [v3 appendString:@"'"];
      v4 += 2;
LABEL_18:
      if (v4 >= v2)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v9 = [v1 characterAtIndex:v7];
      v10 = v9;
      v4 = v7 + 1;
      if (v7 + 1 >= v2)
      {
        if (v9 == 39)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v11 = [v1 characterAtIndex:v7 + 1];
        if (v10 == 39)
        {
          if (v11 != 39)
          {
            goto LABEL_18;
          }

          [v3 appendString:@"'"];
          v4 = v7 + 2;
          goto LABEL_13;
        }
      }

      [v3 appendFormat:@"%C", v10];
LABEL_13:
      v7 = v4;
      if (v4 >= v2)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_19:

  return v3;
}

uint64_t sub_2770443AC()
{
  v2 = *MEMORY[0x277D85DE8];
  v1.__sig = 0;
  *v1.__opaque = 0;
  pthread_mutexattr_init(&v1);
  pthread_mutexattr_settype(&v1, 2);
  return pthread_mutex_init(&stru_280A639E8, &v1);
}

uint64_t sub_2770445E0()
{
  qword_280A63A28 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"−﹣－﹢＋"];

  return MEMORY[0x2821F96F8]();
}

void sub_277044EF8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [*(a1 + 40) p_numberPreferencesChanged:v5];
  }

  else if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    [*(a1 + 40) performSelector:sel_p_numberPreferencesChanged_ onThread:*(a1 + 32) withObject:v5 waitUntilDone:0];
  }
}

id sub_27704630C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 count];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [v5 createHarmonizedDecimalFormatterOfStyle:2];
      v12 = [v6 objectAtIndex:i];
      [v11 setFormat:v12];

      [v11 harmonizedSetCurrency:v7 locale:v5];
      [v11 setIsLenient:1];
      [v11 setExponentSymbol:@"xyzzyqghbv&q"];
      [v9 addObject:v11];
    }
  }

  return v9;
}

void sub_277046AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_277046ABC(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = *(a1 + 48);
  v11 = *(v10 + 8);
  if (*(v11 + 24) == 1)
  {
    if (v8)
    {
      *(v11 + 24) = 0;
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_277046C58;
      v14[3] = &unk_27A701B38;
      v16 = v10;
      v15 = *(a1 + 40);
      [*(a1 + 32) setHandler:v14];
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        applier[0] = MEMORY[0x277D85DD0];
        applier[1] = 3221225472;
        applier[2] = sub_277046D20;
        applier[3] = &unk_27A701B60;
        v13 = *(a1 + 32);
        *(*(*(a1 + 48) + 8) + 24) = dispatch_data_apply(v7, applier);
        if (a2 && *(*(*(a1 + 48) + 8) + 24) == 1)
        {
          [*(a1 + 32) didFinishProcessing];
        }
      }
    }
  }
}

uint64_t sub_277046C58(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = *(*(a1 + 40) + 8);
  if (*(v12 + 24) == 1)
  {
    if (v10)
    {
      *(v12 + 24) = 0;
    }

    (*(*(a1 + 32) + 16))();
  }

  v13 = *(*(*(a1 + 40) + 8) + 24);

  return v13;
}

uint64_t TSUDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

void *TSUSpecificCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 isMemberOfClass:a1])
  {
    return a2;
  }

  return 0;
}

void *TSUProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v13 = &a9;
  v14 = &a9;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      while (1)
      {
        v11 = v14++;
        if (([v9 conformsToProtocol:{*v11, v13}] & 1) == 0)
        {
          break;
        }

        if (!--v10)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

void *TSUCheckedProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v16 = &a9;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      while (1)
      {
        v11 = v16++;
        if (([v9 conformsToProtocol:*v11] & 1) == 0)
        {
          break;
        }

        if (!--v10)
        {
          if (v9)
          {
            return v9;
          }

          break;
        }
      }

      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSUCheckedProtocolCast(id<NSObject>, NSUInteger, ...)"}];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCast.m"];
      v14 = objc_opt_class();
      [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:79 isFatal:0 description:"Unexpected object type %{public}@ in checked cast to multiple protocols", NSStringFromClass(v14)];
      +[TSUAssertionHandler logFullBacktrace];
      return 0;
    }
  }

  return v9;
}

void *sub_277046F60(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a1;
  if (a1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    if (a3)
    {
      while (1)
      {
        v6 = a4++;
        if (([v4 conformsToProtocol:*v6] & 1) == 0)
        {
          break;
        }

        if (!--a3)
        {
          return v4;
        }
      }

      return 0;
    }
  }

  return v4;
}

void *TSUCheckedClassAndProtocolCast(void *a1, objc_class *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_277046F60(a1, a2, a3, &a9);
  v12 = v11;
  if (a1 && !v11)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSUCheckedClassAndProtocolCast(id<NSObject>, Class, NSUInteger, ...)"}];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCast.m"];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:120 isFatal:0 description:"Unexpected object type %{public}@ in checked dynamic cast to class %{public}@ and 1 or more protocols", v16, NSStringFromClass(a2)];
    +[TSUAssertionHandler logFullBacktrace];
  }

  return v12;
}

CFTypeRef TSUCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

BOOL TSUProtocolHasInstanceMethod(Protocol *a1, const char *a2)
{
  v4 = 1;
  if (!protocol_getMethodDescription(a1, a2, 0, 1).name)
  {
    return protocol_getMethodDescription(a1, a2, 1, 1).name != 0;
  }

  return v4;
}

uint64_t TSUCheckedDynamicCast(objc_class *a1, uint64_t a2)
{
  v2 = a2;
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSUCheckedDynamicCast(Class, id<NSObject>)"}];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCast.m"];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:160 isFatal:0 description:"Unexpected object type %{public}@ in checked dynamic cast to %{public}@", v7, NSStringFromClass(a1)];
    +[TSUAssertionHandler logFullBacktrace];
    return 0;
  }

  return v2;
}

uint64_t TSUCheckedStaticCast(objc_class *a1, uint64_t a2)
{
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSUCheckedStaticCast(Class, id<NSObject>)"}];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCast.m"];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:171 isFatal:0 description:"Unexpected object type %{public}@ in checked static cast to %{public}@.  This is a serious problem and could lead to a crash, or worse.", v7, NSStringFromClass(a1)];
    +[TSUAssertionHandler logFullBacktrace];
  }

  return a2;
}

void *TSUCheckedStaticProtocolCast(Protocol *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && !TSUProtocolCast(a2, 1, a3, a4, a5, a6, a7, a8, a1))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSUCheckedStaticProtocolCast(Protocol *, id<NSObject>)"}];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCast.m"];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:182 isFatal:0 description:"Unexpected object type %{public}@ in checked cast to protocol %{public}@. This is a serious problem and could lead to a crash, or worse.", v13, NSStringFromProtocol(a1)];
    +[TSUAssertionHandler logFullBacktrace];
  }

  return a2;
}

double sub_2770493A0(unint64_t a1, unint64_t a2, int a3, int *a4)
{
  if ((~a2 & 0x6000000000000000) == 0)
  {
    if ((~a2 & 0x7800000000000000) == 0)
    {
      if ((~a2 & 0x7C00000000000000) == 0)
      {
        if ((a2 & 0x200000000000000) != 0)
        {
          *a4 |= 1u;
        }

        if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
        {
          v4 = a2 & 0x8000000000000000;
        }

        else
        {
          *(&v27 + 1) = a2;
          *&v27 = a1;
          v4 = a2 & 0x8000000000000000 | ((v27 >> 46) >> 13);
        }

        v6 = v4 | 0x7FF8000000000000;
        return *&v6;
      }

LABEL_87:
      v6 = a2 & 0x8000000000000000 | 0x7FF0000000000000;
      return *&v6;
    }

LABEL_11:
    v6 = a2 & 0x8000000000000000;
    return *&v6;
  }

  v5 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    goto LABEL_11;
  }

  v8 = (a2 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && a1 > 0x378D8E63FFFFFFFFLL;
  if (v8 || !(v5 | a1))
  {
    goto LABEL_11;
  }

  v9 = (a2 >> 49) & 0x3FFF;
  if (v5)
  {
    v10 = vdupq_n_s64(a2);
    v11 = vbicq_s8(xmmword_277123940, vuzp1q_s32(vcgtq_u64(vandq_s8(v10, xmmword_277123950), vandq_s8(v10, xmmword_277123930)), vcgtq_u64(vandq_s8(v10, xmmword_277123960), vandq_s8(v10, xmmword_277123970))));
    v12 = 2 * ((a2 & 0xCCCCCCCCCCCCLL) <= (a2 & 0x1333333333333));
    v13 = (a2 & 0xAAAAAAAAAAAALL) <= (a2 & 0x1555555555555);
  }

  else
  {
    v14 = vdupq_n_s64(a1);
    v12 = 2 * ((a1 & 0xCCCCCCCCCCCCCCCCLL) <= (a1 & 0x3333333333333333));
    v13 = (a1 & 0xAAAAAAAAAAAAAAAALL) <= (a1 & 0x5555555555555555);
    v11 = vbslq_s8(vuzp1q_s32(vcgtq_u64(vandq_s8(v14, xmmword_277123980), vandq_s8(v14, xmmword_2771239A0)), vcgtq_u64(vandq_s8(v14, xmmword_277123990), vandq_s8(v14, xmmword_2771239B0))), xmmword_2771239D0, xmmword_2771239C0);
  }

  v15 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  v16 = v15.i32[0] | v12 | v15.i32[1] | v13;
  v17 = v16 - 15;
  if (v16 != 15)
  {
    if (v16 < 0x4F)
    {
      v5 = (v5 << v17) + (a1 >> (79 - v16));
      a1 <<= v17;
    }

    else
    {
      v5 = a1 << (v16 - 79);
      a1 = 0;
    }
  }

  if (v9 >= 0x1955)
  {
LABEL_81:
    *a4 |= 0x28u;
    if (a3 == 3 || ((a2 & 0x8000000000000000) == 0 ? (v116 = 1) : (v116 = 2), v116 == a3))
    {
      v6 = a2 & 0x8000000000000000 | 0x7FEFFFFFFFFFFFFFLL;
      return *&v6;
    }

    goto LABEL_87;
  }

  v18 = a2 >> 63;
  *(&v20 + 1) = v5;
  *&v20 = a1;
  v19 = v20 >> 58;
  v21 = a1 << 6;
  if (v9 >= 0x16BB)
  {
    v22 = v9 - 6176;
  }

  else
  {
    v22 = -358;
  }

  v23 = v22;
  v24 = &unk_277123B60 + 16 * v22;
  v25 = dword_277126520[v22 + 358] - v17;
  if (__PAIR128__(v19, v21) > *(v24 + 358))
  {
    ++v25;
    v26 = &unk_27712EFD0;
  }

  else
  {
    v26 = &unk_277129C50;
  }

  v28 = &v26[32 * v23];
  v30 = *v28;
  v29 = *(v28 + 1);
  v31 = HIDWORD(v21);
  v32 = v21 & 0xFFFFFFC0;
  v33 = HIDWORD(*v28);
  v34 = *v28;
  v35 = v34 * HIDWORD(v21);
  v36 = HIDWORD(v35) + v33 * v31;
  v37 = v33 * v32 + v35;
  v39 = *(v28 + 2);
  v38 = *(v28 + 3);
  v40 = v36 + ((v37 + ((v34 * v32) >> 32)) >> 32);
  v41 = HIDWORD(v29);
  v42 = v29 * v31;
  v43 = v29 * v32;
  v44 = HIDWORD(v42) + HIDWORD(v29) * v31;
  v45 = HIDWORD(v29) * v32 + v42 + HIDWORD(v43);
  v46 = v44 + HIDWORD(v45);
  v47 = v43 | (v45 << 32);
  v48 = HIDWORD(v39);
  v49 = v39 * v31;
  v50 = v39 * v32;
  v51 = HIDWORD(v49) + HIDWORD(v39) * v31;
  v52 = HIDWORD(v39) * v32 + v49 + HIDWORD(v50);
  v53 = v51 + HIDWORD(v52);
  v54 = v50 | (v52 << 32);
  v55 = v38 * v31;
  v56 = v38 * v32;
  v57 = HIDWORD(v55) + HIDWORD(v38) * v31;
  v58 = HIDWORD(v38) * v32 + v55 + HIDWORD(v56);
  v59 = HIDWORD(v58);
  v60 = v56 | (v58 << 32);
  v61 = __CFADD__(v40, v47);
  v62 = v40 + v47;
  v63 = v54 + v61 + v46;
  v65 = (__CFADD__(v61, v46) | __CFADD__(v54, v61 + v46)) + v53;
  v61 = __CFADD__(__CFADD__(v61, v46) | __CFADD__(v54, v61 + v46), v53) | __CFADD__(v60, v65);
  v64 = v60 + v65;
  v66 = v59 + v61 + v57;
  v67 = HIDWORD(v19);
  LODWORD(v53) = v19;
  v68 = v34 * HIDWORD(v19);
  v69 = v30 * v19;
  v70 = v33 * v19;
  v71 = HIDWORD(v68) + v33 * HIDWORD(v19);
  v72 = v70 + v68 + HIDWORD(v69);
  v73 = v71 + HIDWORD(v72);
  v74 = v69 | (v72 << 32);
  v75 = v29 * HIDWORD(v19);
  v76 = v29 * v19;
  v77 = v41 * v19;
  v78 = HIDWORD(v75) + v41 * HIDWORD(v19);
  v79 = v77 + v75 + HIDWORD(v76);
  v80 = v78 + HIDWORD(v79);
  v81 = v76 | (v79 << 32);
  v82 = v39 * HIDWORD(v19);
  v83 = v39 * v19;
  v84 = v48 * v19;
  v85 = HIDWORD(v82) + v48 * HIDWORD(v19);
  v86 = v84 + v82 + HIDWORD(v83);
  v87 = v85 + HIDWORD(v86);
  v88 = v83 | (v86 << 32);
  v89 = v38 * HIDWORD(v19);
  v90 = v38 * v19;
  v91 = HIDWORD(v89) + HIDWORD(v38) * v67;
  v92 = HIDWORD(v38) * v53 + v89 + HIDWORD(v90);
  v93 = v90 | (v92 << 32);
  v61 = __CFADD__(v73, v81);
  v94 = v73 + v81;
  v96 = v61;
  v61 = __CFADD__(v61, v88);
  v95 = v96 + v88;
  LODWORD(v97) = v61;
  v98 = v91 + HIDWORD(v92);
  v61 = __CFADD__(v80, v95);
  v99 = v80 + v95;
  if (v61)
  {
    v97 = 1;
  }

  else
  {
    v97 = v97;
  }

  v61 = __CFADD__(v93, v97);
  v100 = v93 + v97;
  v101 = v61;
  v102 = v87 + v100;
  if (__CFADD__(v87, v100))
  {
    v103 = 1;
  }

  else
  {
    v103 = v101;
  }

  v104 = v98 + v103;
  v105 = __CFADD__(__CFADD__(v74, v62), v94);
  v106 = __CFADD__(__CFADD__(v74, v62) + v94, v63);
  v107 = v106 || v105;
  v61 = __CFADD__(v99, v107);
  v108 = v99 + v107;
  LODWORD(v109) = v61;
  v61 = __CFADD__(v108, v64);
  v110 = v108 + v64;
  if (v61)
  {
    v109 = 1;
  }

  else
  {
    v109 = v109;
  }

  v61 = __CFADD__(v102, v109);
  v111 = v102 + v109;
  LODWORD(v112) = v61;
  v61 = __CFADD__(v66, v111);
  v113 = v66 + v111;
  if (v61)
  {
    v112 = 1;
  }

  else
  {
    v112 = v112;
  }

  v114 = v104 + v112;
  if (v25 <= 0)
  {
    v115 = 1 - v25;
    if (v115 >= 0x37)
    {
      LOBYTE(v115) = 55;
    }

    v110 = (v113 << -v115) + (v110 >> v115);
    v113 = (v114 << -v115) + (v113 >> v115);
    v114 >>= v115;
    v25 = 1;
  }

  if (xmmword_277123A20[(4 * a3) | (2 * v18) | v114 & 1] < __PAIR128__(v113, v110))
  {
    if (++v114 == 0x20000000000000)
    {
      ++v25;
      v114 = 0x10000000000000;
    }

    else if (v114 == 0x10000000000000 && v25 == 1)
    {
      if ((a3 & 3) == 0 && v113 >> 62 != 3 || (v25 = 1, v114 = 0x10000000000000, v18 + a3 == 2) && (v113 & 0x8000000000000000) == 0)
      {
        *a4 |= 0x10u;
        v25 = 1;
        v114 = 0x10000000000000;
      }

      goto LABEL_88;
    }
  }

  if (v25 >= 0x7FF)
  {
    goto LABEL_81;
  }

LABEL_88:
  v117 = v114 & 0xFFFFFFFFFFFFFLL;
  v118 = v114 >> 52;
  if (v113 | v110)
  {
    v119 = *a4;
    *a4 |= 0x20u;
    if (!v118)
    {
      *a4 = v119 | 0x30;
    }
  }

  v120 = v25 << 52;
  if (!v118)
  {
    v120 = 0;
  }

  v6 = v117 | a2 & 0x8000000000000000 | v120;
  return *&v6;
}

unint64_t sub_2770499D8(int a1, _DWORD *a2, double a3)
{
  v4 = a1;
  v6 = (*&a3 >> 52) & 0x7FFLL;
  v7 = *&a3 & 0xFFFFFFFFFFFFFLL;
  if (v6)
  {
    if ((~*&a3 & 0x7FF0000000000000) == 0)
    {
      if (v7)
      {
        if ((*&a3 & 0x8000000000000) == 0)
        {
          *a2 |= 1u;
        }

        if (*&a3 << 13 > 0xC5371912364FFFFFLL)
        {
          return 0;
        }

        v7 = *&a3 << 59;
        if (*&a3 << 59 > 0x38C15B09FFFFFFFFuLL && ((*&a3 >> 5) & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
        {
          return 0;
        }
      }

      return v7;
    }

    v14 = (v7 | 0x10000000000000) & -(v7 | 0x10000000000000);
    v11 = v6 - 1075;
    if ((v14 & 0x5555555555555555) != 0)
    {
      v15 = 60;
    }

    else
    {
      v15 = 61;
    }

    v12 = (v7 | 0x10000000000000) << 11;
    if (v6 > 0x46F)
    {
      goto LABEL_35;
    }

    v16 = vdupq_n_s64(v14);
    v13 = vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v16, xmmword_2771239E0)), vceqzq_s64(vandq_s8(v16, xmmword_2771239A0))), xmmword_2771239F0)) + (v15 | (2 * ((v14 & 0x3333333333333333) == 0)));
  }

  else
  {
    if (!v7)
    {
      return v7;
    }

    v8 = vdupq_n_s64(*&a3);
    v9 = vbicq_s8(xmmword_277123940, vuzp1q_s32(vcgtq_u64(vandq_s8(v8, xmmword_277123A00), vandq_s8(v8, xmmword_277123930)), vcgtq_u64(vandq_s8(v8, xmmword_277123960), vandq_s8(v8, xmmword_277123A10))));
    *v9.i8 = vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
    v10 = v9.i32[0] | v9.i32[1] | (2 * ((*&a3 & 0xCCCCCCCCCCCCCuLL) <= (*&a3 & 0x3333333333333uLL)));
    if ((*&a3 & 0xAAAAAAAAAAAAAuLL) <= (*&a3 & 0x5555555555555uLL))
    {
      ++v10;
    }

    v11 = -1063 - v10;
    *a2 |= 2u;
    v12 = v7 << (v10 - 11) << 11;
    v13 = 60;
  }

  v17 = v11 + v13 - 60;
  if ((v17 & 0x80000000) != 0)
  {
    if (v17 >= 0xFFFFFFD0)
    {
      v18 = (60 - (v11 + v13));
      v19 = (&unk_2771319A0 + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = v12 >> (v13 - 49);
      if (v21 || v22 <= v20)
      {
        return (qword_277131690[2 * v18] * v22) | ((HIDWORD(qword_277131690[2 * v18]) * v22 + qword_277131690[2 * v18] * HIDWORD(v22) + ((qword_277131690[2 * v18] * v22) >> 32)) << 32);
      }
    }

LABEL_35:
    v26 = 17744 - ((19728 * (v11 + 42092) + ((19779 * (v11 + 42092)) >> 16)) >> 16);
    v27 = v26 & 0x7F;
    v28 = v26 >> 7;
    v29 = (&unk_277131CB0 + 32 * v27);
    v30 = *v29;
    v31 = v29[1];
    v33 = v29[2];
    v32 = v29[3];
    v34 = dword_277132CB0[v27];
    if (v28 != 39)
    {
      v35 = (&unk_277132EB0 + 32 * v28);
      v36 = *v35;
      v37 = v35[1];
      v38 = HIDWORD(*v35);
      v237 = *v35;
      v251 = v12;
      v39 = ((v36 * HIDWORD(v30)) >> 32) + v38 * HIDWORD(v30) + ((v38 * v30 + (v36 * HIDWORD(v30)) + ((v36 * v30) >> 32)) >> 32);
      v40 = v37 * HIDWORD(v30);
      v41 = HIDWORD(v37) * v30 + v40 + ((v37 * v30) >> 32);
      v42 = HIDWORD(v40) + HIDWORD(v37) * HIDWORD(v30) + HIDWORD(v41);
      v44 = v35[2];
      v43 = v35[3];
      v250 = v34;
      v45 = v44 * HIDWORD(v30);
      v249 = v28;
      v46 = HIDWORD(v44) * v30 + v45 + ((v44 * v30) >> 32);
      v47 = HIDWORD(v45) + HIDWORD(v44) * HIDWORD(v30) + HIDWORD(v46);
      v48 = v43 * HIDWORD(v30);
      v49 = (v37 * v30) | (v41 << 32);
      v50 = (v44 * v30) | (v46 << 32);
      v247 = HIDWORD(v43) * v30 + v48 + ((v43 * v30) >> 32);
      v248 = HIDWORD(v48) + HIDWORD(v43) * HIDWORD(v30);
      v51 = (v43 * v30) | (v247 << 32);
      v244 = v39 + v49;
      v52 = __CFADD__(v39, v49) + v50;
      v53 = __CFADD__(__CFADD__(v39, v49), v50);
      v246 = v42 + v52;
      v54 = __CFADD__(v42, v52) || v53;
      v25 = __CFADD__(v51, v54);
      v55 = v51 + v54;
      LODWORD(v56) = v25;
      v245 = v47 + v55;
      v57 = v237 * HIDWORD(v31);
      v58 = HIDWORD(v57) + v38 * HIDWORD(v31);
      v59 = v38 * v31 + v57 + ((v36 * v31) >> 32);
      v60 = v58 + HIDWORD(v59);
      v61 = (v36 * v31) | (v59 << 32);
      v62 = v37 * HIDWORD(v31);
      v63 = HIDWORD(v62) + HIDWORD(v37) * HIDWORD(v31);
      v64 = HIDWORD(v37) * v31 + v62 + ((v37 * v31) >> 32);
      v65 = v63 + HIDWORD(v64);
      v66 = (v37 * v31) | (v64 << 32);
      v67 = v44 * HIDWORD(v31);
      v68 = HIDWORD(v44) * v31 + v67 + ((v44 * v31) >> 32);
      v69 = HIDWORD(v67) + HIDWORD(v44) * HIDWORD(v31) + HIDWORD(v68);
      v70 = (v44 * v31) | (v68 << 32);
      v71 = v43 * HIDWORD(v31);
      v243 = HIDWORD(v71) + HIDWORD(v43) * HIDWORD(v31);
      if (__CFADD__(v47, v55))
      {
        v56 = 1;
      }

      else
      {
        v56 = v56;
      }

      v241 = v56;
      v242 = HIDWORD(v43) * v31 + v71 + ((v43 * v31) >> 32);
      v72 = (v43 * v31) | (v242 << 32);
      v238 = v60 + v66;
      v73 = __CFADD__(v60, v66) + v70;
      v74 = __CFADD__(__CFADD__(v60, v66), v70);
      v240 = v65 + v73;
      v75 = __CFADD__(v65, v73) || v74;
      v25 = __CFADD__(v72, v75);
      v76 = v72 + v75;
      LODWORD(v77) = v25;
      v25 = __CFADD__(v69, v76);
      v239 = v69 + v76;
      v78 = v37 * HIDWORD(v33);
      v79 = HIDWORD(v37) * v33 + v78 + ((v37 * v33) >> 32);
      v80 = HIDWORD(v78) + HIDWORD(v37) * HIDWORD(v33) + HIDWORD(v79);
      v81 = (v37 * v33) | (v79 << 32);
      v82 = v44 * HIDWORD(v33);
      v83 = HIDWORD(v44) * v33 + v82 + ((v44 * v33) >> 32);
      v84 = HIDWORD(v82) + HIDWORD(v44) * HIDWORD(v33) + HIDWORD(v83);
      v85 = (v44 * v33) | (v83 << 32);
      v86 = v237 * HIDWORD(v33);
      v87 = v38 * v33 + v86;
      v253 = a2;
      v88 = HIDWORD(v86) + v38 * HIDWORD(v33);
      v89 = v43 * HIDWORD(v33);
      v90 = HIDWORD(v89) + HIDWORD(v43) * HIDWORD(v33);
      v91 = HIDWORD(v43) * v33 + v89;
      if (v25)
      {
        v77 = 1;
      }

      else
      {
        v77 = v77;
      }

      v92 = v36 * v33;
      v93 = v87 + HIDWORD(v92);
      v94 = v88 + HIDWORD(v93);
      v95 = __PAIR128__(v85, v94) + v81;
      v96 = __CFADD__(__CFADD__(v94, v81), v85);
      v97 = v80 + *(&v95 + 1);
      v98 = v43 * v33;
      v99 = v91 + HIDWORD(v98);
      v100 = v98 | (v99 << 32);
      v101 = __CFADD__(v80, *(&v95 + 1)) || v96;
      v25 = __CFADD__(v100, v101);
      v102 = v100 + v101;
      v103 = v25;
      v25 = __CFADD__(v84, v102);
      v104 = v84 + v102;
      v105 = v237 * HIDWORD(v32);
      v106 = HIDWORD(v105) + v38 * HIDWORD(v32);
      v107 = v38 * v32 + v105;
      v108 = v37 * HIDWORD(v32);
      v109 = HIDWORD(v108) + HIDWORD(v37) * HIDWORD(v32);
      v110 = v37 * v32;
      v111 = HIDWORD(v37) * v32 + v108 + HIDWORD(v110);
      v112 = v109 + HIDWORD(v111);
      v113 = v110 | (v111 << 32);
      v114 = v44 * HIDWORD(v32);
      v115 = HIDWORD(v114) + HIDWORD(v44) * HIDWORD(v32);
      v116 = HIDWORD(v44) * v32 + v114 + ((v44 * v32) >> 32);
      v117 = v115 + HIDWORD(v116);
      v118 = (v44 * v32) | (v116 << 32);
      v119 = v43 * HIDWORD(v32);
      v120 = HIDWORD(v119) + HIDWORD(v43) * HIDWORD(v32);
      v121 = HIDWORD(v43) * v32 + v119;
      if (v25)
      {
        v122 = 1;
      }

      else
      {
        v122 = v103;
      }

      v123 = v36 * v32;
      v124 = v107 + HIDWORD(v123);
      v125 = v106 + HIDWORD(v124);
      v126 = __PAIR128__(v118, v125) + v113;
      v127 = __CFADD__(__CFADD__(v125, v113), v118);
      v25 = __CFADD__(v112, *(&v126 + 1));
      v128 = v112 + *(&v126 + 1);
      v129 = v121 + ((v43 * v32) >> 32);
      v130 = (v43 * v32) | (v129 << 32);
      v131 = v25 || v127;
      v25 = __CFADD__(v130, v131);
      v132 = v130 + v131;
      v133 = v25;
      v134 = v117 + v132;
      if (__CFADD__(v117, v132))
      {
        v135 = 1;
      }

      else
      {
        v135 = v133;
      }

      v136 = v248 + HIDWORD(v247) + v241;
      v137 = __CFADD__(v61, v244) + v238;
      v138 = v92 | (v93 << 32);
      LODWORD(v139) = __CFADD__(__CFADD__(v61, v244), v238);
      v25 = __CFADD__(v246, v137);
      v140 = v246 + v137;
      if (v25)
      {
        v139 = 1;
      }

      else
      {
        v139 = v139;
      }

      v25 = __CFADD__(v240, v139);
      v141 = v240 + v139;
      LODWORD(v142) = v25;
      v25 = __CFADD__(v141, v245);
      v143 = v141 + v245;
      if (v25)
      {
        v142 = 1;
      }

      else
      {
        v142 = v142;
      }

      v25 = __CFADD__(v239, v142);
      v144 = v239 + v142;
      v145 = v25;
      v25 = __CFADD__(v136, v144);
      v146 = v136 + v144;
      if (v25)
      {
        v147 = 1;
      }

      else
      {
        v147 = v145;
      }

      v148 = v123 | (v124 << 32);
      v149 = v243 + HIDWORD(v242) + v77 + v147;
      a2 = v253;
      v150 = __CFADD__(v138, v140) + v95;
      LODWORD(v151) = __CFADD__(__CFADD__(v138, v140), v95);
      v25 = __CFADD__(v143, v150);
      v152 = v143 + v150;
      if (v25)
      {
        v151 = 1;
      }

      else
      {
        v151 = v151;
      }

      v25 = __CFADD__(v97, v151);
      v153 = v97 + v151;
      v154 = v25;
      v25 = __CFADD__(v153, v146);
      v155 = v153 + v146;
      if (v25)
      {
        v156 = 1;
      }

      else
      {
        v156 = v154;
      }

      v25 = __CFADD__(v104, v156);
      v157 = v104 + v156;
      LODWORD(v158) = v25;
      v25 = __CFADD__(v149, v157);
      v159 = v149 + v157;
      if (v25)
      {
        v158 = 1;
      }

      else
      {
        v158 = v158;
      }

      v4 = a1;
      v160 = v120 + HIDWORD(v129) + v135;
      v161 = v90 + HIDWORD(v99) + v122 + v158;
      v162 = __CFADD__(v148, v152) + v126;
      v12 = v251;
      v163 = __CFADD__(__CFADD__(v148, v152), v126);
      v25 = __CFADD__(v155, v162);
      v164 = v155 + v162;
      v165 = v25 || v163;
      v25 = __CFADD__(v128, v165);
      v166 = v128 + v165;
      v167 = v25;
      v31 = v166 + v159;
      if (__CFADD__(v166, v159))
      {
        v168 = 1;
      }

      else
      {
        v168 = v167;
      }

      v25 = __CFADD__(v134, v168);
      v169 = v134 + v168;
      v170 = v25;
      v33 = v161 + v169;
      if (__CFADD__(v161, v169))
      {
        v171 = 1;
      }

      else
      {
        v171 = v170;
      }

      v32 = v160 + v171;
      LOBYTE(v34) = v250 + byte_2771338B0[4 * v249];
      v30 = v164 + 1;
    }

    v172 = HIDWORD(v30);
    v173 = v30;
    v174 = HIDWORD(v33);
    v175 = HIDWORD(v32);
    v176 = v33;
    v177 = HIDWORD(v12);
    v178 = v173 * HIDWORD(v12);
    v179 = HIDWORD(v178);
    v180 = v12 & 0xFFFFF800;
    v181 = v173 * v180;
    v182 = v172 * v180 + v178 + HIDWORD(v181);
    v183 = v179 + v172 * v177 + HIDWORD(v182);
    v184 = v31 * v177;
    v185 = v31 * v180;
    v186 = HIDWORD(v184);
    v187 = HIDWORD(v31) * v180 + v184 + HIDWORD(v185);
    v188 = v186 + HIDWORD(v31) * v177 + HIDWORD(v187);
    v189 = v185 | (v187 << 32);
    v190 = v176 * v177;
    v191 = v176 * v180;
    v192 = v174 * v180;
    v193 = HIDWORD(v190) + v174 * v177;
    v194 = v192 + v190 + HIDWORD(v191);
    v195 = v193 + HIDWORD(v194);
    v196 = v191;
    v197 = v32 * v177;
    v198 = v196 | (v194 << 32);
    v199 = v32 * v180;
    v200 = v175 * v180;
    v201 = HIDWORD(v197) + v175 * v177;
    v202 = v200 + v197;
    v25 = __CFADD__(v183, v189);
    v203 = v183 + v189;
    v204 = v202 + HIDWORD(v199);
    v205 = v199 | (v204 << 32);
    v206 = v198 + v25 + v188;
    v207 = v205 + (__CFADD__(v25, v188) | __CFADD__(v198, v25 + v188)) + v195;
    v208 = HIDWORD(v204) + (__CFADD__(__CFADD__(v25, v188) | __CFADD__(v198, v25 + v188), v195) | __CFADD__(v205, (__CFADD__(v25, v188) | __CFADD__(v198, v25 + v188)) + v195)) + v201;
    v209 = v34 + v11 - 11;
    v210 = (v206 << v209) + (v203 >> (75 - (v34 + v11)));
    v211 = (v207 << v209) + (v206 >> (75 - (v34 + v11)));
    v7 = (v208 << v209) + (v207 >> (75 - (v34 + v11)));
    v212 = v208 >> (75 - (v34 + v11));
    if (v212 < 0x314DC6448D93 || v212 == 0x314DC6448D93 && v7 < 0x38C15B0A00000000)
    {
      v213 = v181 | (v182 << 32);
      v214 = v213 << v209;
      v215 = (v203 << v209) + (v213 >> (75 - (v34 + v11)));
      v25 = __CFADD__(v214, v214 >> 2);
      v216 = v214 + (v214 >> 2);
      v217 = 8;
      if (v25)
      {
        v218 = 8;
      }

      else
      {
        v218 = 0;
      }

      v219 = v218 & 0xFFFFFFFFFFFFFFF8 | (v216 >> 61);
      v220 = v215 + (v215 >> 2);
      if (__CFADD__(v215, v215 >> 2))
      {
        v221 = 8;
      }

      else
      {
        v221 = 0;
      }

      v222 = v221 & 0xFFFFFFFFFFFFFFF8 | (v220 >> 61);
      v223 = (2 * (v215 & 3)) | (8 * v220);
      v224 = v210 + (v210 >> 2);
      if (__CFADD__(v210, v210 >> 2))
      {
        v225 = 8;
      }

      else
      {
        v225 = 0;
      }

      v226 = v211 + (v211 >> 2);
      if (__CFADD__(v211, v211 >> 2))
      {
        v227 = 8;
      }

      else
      {
        v227 = 0;
      }

      v228 = v7 + (v7 >> 2);
      if (!__CFADD__(v7, v7 >> 2))
      {
        v217 = 0;
      }

      v25 = __CFADD__(v223, v219);
      v229 = v225 & 0xFFFFFFFFFFFFFFF8 | (v224 >> 61);
      v230 = (2 * (v210 & 3)) | (8 * v224);
      v231 = v25;
      v25 = __CFADD__(v25, v230) | __CFADD__(v222, v25 + v230);
      v210 = v222 + v231 + v230;
      v232 = v227 & 0xFFFFFFFFFFFFFFF8 | (v226 >> 61);
      v233 = (2 * (v211 & 3)) | (8 * v226);
      v234 = v25;
      v25 = __CFADD__(v25, v233) | __CFADD__(v229, v25 + v233);
      v211 = v229 + v234 + v233;
      v235 = (2 * (v7 & 3)) | (8 * v228);
      v7 = v232 + v25 + v235;
      v212 = v217 + (__CFADD__(v25, v235) | __CFADD__(v232, v25 + v235)) + ((2 * (v212 & 3)) | (8 * (v212 + (v212 >> 2)))) + (v228 >> 61);
    }

    if (xmmword_277123A20[(*&a3 >> 62) & 2 | (4 * v4) | v7 & 1] < __PAIR128__(v211, v210))
    {
      v25 = __CFADD__(v7++, 1);
      if (v25)
      {
        v7 = 0;
      }

      else if (v212 == 0x1ED09BEAD87C0 && v7 == 0x378D8E6400000000)
      {
        v7 = 0x38C15B0A00000000;
      }
    }

    if (v211 | v210)
    {
      *a2 |= 0x20u;
    }

    return v7;
  }

  if (v11 <= 11)
  {
    return v12 >> (11 - v11);
  }

  v7 = v12 << (v11 - 11);
  v24 = v12 >> (75 - v11);
  if (v24 >= 0x1ED09BEAD87C0)
  {
    v25 = v24 != 0x1ED09BEAD87C0 || v7 >= 0x378D8E6400000000;
    if (v25)
    {
      goto LABEL_35;
    }
  }

  return v7;
}

__CFString *sub_27704A45C()
{
  v0 = CFUUIDCreate(0);
  if (v0)
  {
    v1 = v0;
    v2 = CFUUIDCreateString(0, v0);
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_27704A4BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [[v5 alloc] initWithFormat:v6 arguments:a4];

  return v7;
}

id sub_27704A524(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v6 = [v5 length];
  if (a4 && v6)
  {
    do
    {
      v7 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n  "];

      if ([v7 hasSuffix:@"\n  "])
      {
        v8 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 2}];

        v7 = v8;
      }

      v5 = [@"  " stringByAppendingString:v7];

      --a4;
    }

    while (a4);
  }

  v9 = v5;

  return v5;
}

id sub_27704A608(void *a1)
{
  if ([a1 rangeOfString:@"/private"])
  {
    v3 = a1;
  }

  else
  {
    v3 = [a1 substringFromIndex:v2];
  }

  return v3;
}

id sub_27704A660(void *a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 componentsSeparatedByString:@"$"];
  v4 = [MEMORY[0x277CBEB18] array];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v65;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v65 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v64 + 1) + 8 * i) componentsSeparatedByString:@"|"];
        [v4 addObject:v11];
        v12 = [v11 count];
        if (v8 <= v12)
        {
          v8 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = [v4 lastObject];
  if ([v13 count] == 1)
  {
    v14 = [v4 lastObject];
    v15 = [v14 objectAtIndexedSubscript:0];
    v16 = [v15 length];

    if (!v16)
    {
      [v4 removeLastObject];
    }
  }

  else
  {
  }

  if (v8)
  {
    v50 = v5;
    v51 = v2;
    v17 = malloc_type_calloc(8uLL, v8, 0x2B71A530uLL);
    v59 = malloc_type_calloc(8uLL, [v4 count], 0xD35D9DE3uLL);
    v54 = v4;
    if ([v4 count])
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v52 = v19;
        [v4 objectAtIndexedSubscript:v18];
        v57 = v55 = v18;
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = &stru_28862C2A0;
          if ([v57 count] > v20)
          {
            v22 = [v57 objectAtIndexedSubscript:v20];
          }

          v23 = [(__CFString *)v22 componentsSeparatedByString:@"\n"];
          v24 = v59[v18];
          v25 = [v23 count];
          if (v24 <= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v24;
          }

          v59[v18] = v26;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v27 = v23;
          v28 = [v27 countByEnumeratingWithState:&v60 objects:v68 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v61;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v61 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = v17[v20];
                v33 = [*(*(&v60 + 1) + 8 * j) length];
                if (v32 <= v33)
                {
                  v34 = v33;
                }

                else
                {
                  v34 = v32;
                }

                v17[v20] = v34;
              }

              v29 = [v27 countByEnumeratingWithState:&v60 objects:v68 count:16];
            }

            while (v29);
          }

          v20 = ++v21;
          v18 = v55;
        }

        while (v8 > v21);

        v18 = (v52 + 1);
        v4 = v54;
        v35 = [v54 count];
        v19 = v52 + 1;
      }

      while (v35 > v18);
    }

    v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([v4 count])
    {
      v36 = 0;
      v37 = 0;
      do
      {
        v53 = v37;
        v38 = [v4 objectAtIndexedSubscript:v36];
        if (v59[v36])
        {
          v39 = 0;
          v40 = 0;
          v56 = v36;
          do
          {
            v58 = v40;
            if ([v38 count])
            {
              v41 = 0;
              v42 = 1;
              do
              {
                v43 = &stru_28862C2A0;
                if ([v38 count] > v41)
                {
                  v43 = [v38 objectAtIndexedSubscript:v41];
                }

                v44 = [(__CFString *)v43 componentsSeparatedByString:@"\n"];
                v45 = &stru_28862C2A0;
                if ([v44 count] > v39)
                {
                  v45 = [v44 objectAtIndexedSubscript:v39];
                }

                v46 = [(__CFString *)v45 stringByPaddingToLength:v17[v41] + 1 withString:@" " startingAtIndex:0];
                [v8 appendString:v46];

                v41 = v42;
              }

              while ([v38 count] > v42++);
            }

            [v8 appendString:@"\n"];
            v39 = (v58 + 1);
            v40 = v58 + 1;
          }

          while (v59[v56] > v39);
        }

        v36 = (v53 + 1);
        v4 = v54;
        v48 = [v54 count];
        v37 = v53 + 1;
      }

      while (v48 > v36);
    }

    free(v59);
    free(v17);
    v5 = v50;
    v2 = v51;
  }

  objc_autoreleasePoolPop(v2);

  return v8;
}

id sub_27704ABA0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if ([v4 rangeOfCharacterFromSet:a3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v4 mutableCopy];
    [v5 replaceOccurrencesOfString:@"" withString:@"" options:0 range:{0, objc_msgSend(v4, "length")}];
    [v5 appendString:@""];
    [v5 insertString:@"" atIndex:0];

    v4 = v5;
  }

  return v4;
}

id sub_27704AC58(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = [MEMORY[0x277CCACA8] tsu_stringWithFormat:a4 arguments:&a9];
  if ([a1 length])
  {
    v13 = [a1 stringByAppendingFormat:@"%@%@", v11, v12];

    v12 = v13;
  }

  return v12;
}

id sub_27704AD00(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 localeSpecificStorageForKey:@"stringByAddingCSVEscapes"];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [v6 mutableCopy];

    v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v9 = [v8 invertedSet];
    [v7 formIntersectionWithCharacterSet:v9];

    [v7 addCharactersInString:@""];
    v10 = [v4 listSeparator];
    if ([v10 length] != 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_stringByAddingCSVEscapesForLocale:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSString_TSUAdditions.m"];
      [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:199 isFatal:0 description:"The list separator is not a 1-char string"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    [v7 addCharactersInString:v10];
    v5 = [v7 copy];
    [v4 setLocaleSpecificStorage:v5 forKey:@"stringByAddingCSVEscapes"];
  }

  v13 = [a1 tsu_stringQuotedIfContainsCharacterSet:v5];

  return v13;
}

id sub_27704AEB0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_stringByUniquingPathInsideDirectory:withFormat:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSString_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:213 isFatal:0 description:"invalid nil value for '%{public}s'", "directoryPath"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v10 = a1;
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v6 stringByAppendingPathComponent:v10];
  v13 = [v11 fileExistsAtPath:v12];

  if (v13)
  {
    context = objc_autoreleasePoolPush();
    v14 = [v10 pathExtension];
    if (v14)
    {
      v15 = v14;
      if ([(__CFString *)v14 length])
      {
        v16 = [@"." stringByAppendingString:v15];

        v15 = v16;
      }
    }

    else
    {
      v15 = &stru_28862C2A0;
    }

    v17 = [v10 stringByDeletingPathExtension];
    v18 = 2;
    do
    {
      v19 = v10;
      v20 = (v18 + 1);
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v17, v18, v15];

      v21 = [v6 stringByAppendingPathComponent:v10];
      v22 = [v11 fileExistsAtPath:v21];

      v18 = v20;
    }

    while ((v22 & 1) != 0);

    objc_autoreleasePoolPop(context);
  }

  return v10;
}

__CFString *sub_27704B0C0(void *a1)
{
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  theString = v1;
  v30 = 0;
  v31 = v2;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  CStringPtr = 0;
  v28 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v32 = 0;
  v33 = 0;
  v29 = CStringPtr;
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = v31;
        if (v31 > v7)
        {
          if (v28)
          {
            v9 = v28[v30 + v7];
          }

          else if (v29)
          {
            v9 = v29[v30 + v7];
          }

          else
          {
            if (v33 <= v7 || v5 > v7)
            {
              v10 = v7 - 4;
              if (v7 < 4)
              {
                v10 = 0;
              }

              if (v10 + 64 < v31)
              {
                v8 = v10 + 64;
              }

              v32 = v10;
              v33 = v8;
              v35.length = v8 - v10;
              v35.location = v30 + v10;
              CFStringGetCharacters(theString, v35, &v19);
              v5 = v32;
            }

            v9 = *(&v19 + v7 - v5);
          }

          v11 = v9 & 0xFC00;
          if (v11 == 56320)
          {
LABEL_37:
            if (!v6)
            {
              v6 = [(__CFString *)v1 mutableCopyWithZone:0, v19, v20, v21, v22, v23, v24, v25, v26];

              v1 = v6;
            }

            [(__CFString *)v6 replaceCharactersInRange:v7 withString:1, @"\uFFFD", v19, v20, v21, v22, v23, v24, v25, v26];
            v2 = [(__CFString *)v1 length];
            theString = v1;
            v30 = 0;
            v31 = v2;
            v16 = CFStringGetCharactersPtr(v1);
            v17 = 0;
            v28 = v16;
            if (!v16)
            {
              v17 = CFStringGetCStringPtr(v1, 0x600u);
            }

            v5 = 0;
            v29 = v17;
            v32 = 0;
            v33 = 0;
            goto LABEL_42;
          }

          if (v11 == 55296)
          {
            v12 = v7 + 1;
            if (v7 + 1 >= v2)
            {
              goto LABEL_37;
            }

            v13 = v31;
            if (v31 <= v12)
            {
              goto LABEL_37;
            }

            if (v28)
            {
              v14 = v28[v30 + v12];
            }

            else if (v29)
            {
              v14 = v29[v30 + v12];
            }

            else
            {
              if (v33 <= v12 || v5 > v12)
              {
                v15 = v7 - 3;
                if (v7 < 3)
                {
                  v15 = 0;
                }

                if (v15 + 64 < v31)
                {
                  v13 = v15 + 64;
                }

                v32 = v15;
                v33 = v13;
                v36.length = v13 - v15;
                v36.location = v30 + v15;
                CFStringGetCharacters(theString, v36, &v19);
                v5 = v32;
              }

              v14 = *(&v19 + v12 - v5);
            }

            if (v14 >> 10 != 55)
            {
              goto LABEL_37;
            }

            ++v7;
          }
        }
      }

LABEL_42:
      if (++v7 >= v2)
      {

        break;
      }
    }
  }

  return v1;
}

void sub_27704B374(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 dataUsingEncoding:2483028224];
  [v4 tsu_getMD5Hash:a3];
}

id sub_27704B3CC(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  [a1 tsu_getMD5Hash:v3];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", v3[0], v3[1], v3[2], v3[3], v3[4], v3[5], v3[6], v3[7], v3[8], v3[9], v3[10], v3[11], v3[12], v3[13], v3[14], v3[15]];

  return v1;
}

id sub_27704B4A4(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  if (v6)
  {
    v7 = a1;
    if ([v7 rangeOfCharacterFromSet:v6] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
    }

    else
    {
      v8 = [MEMORY[0x277CCAB68] string];
      v11 = [v7 length];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = a4 & 0xFFFFFFFB;
        v15 = v11;
        do
        {
          v16 = [v7 rangeOfCharacterFromSet:v6 options:v14 range:{v13, v15}];
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = 0;
          }

          else
          {
            v18 = v17;
          }

          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = v12;
          }

          else
          {
            v19 = v16;
          }

          v20 = [v7 substringWithRange:{v13, v19 - v13}];
          [v8 appendString:v20];

          v13 = v18 + v19;
          v15 = v12 - (v18 + v19);
        }

        while (v12 != v18 + v19);
      }
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_stringByRemovingCharactersInSet:options:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSString_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:309 isFatal:0 description:"invalid nil value for '%{public}s'", "charSet"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v8 = a1;
  }

  return v8;
}

id sub_27704B650(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([a1 rangeOfCharacterFromSet:v6 options:2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = a1;
  }

  else
  {
    v9 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(a1, "length")}];
    v10 = [MEMORY[0x277CCAC80] scannerWithString:a1];
    [v10 setCharactersToBeSkipped:0];
    if (([v10 isAtEnd] & 1) == 0)
    {
      v11 = 0;
      while (1)
      {
        v17 = v11;
        v12 = [v10 scanUpToCharactersFromSet:v6 intoString:&v17];
        v13 = v17;

        if (v12)
        {
          [v9 appendString:v13];
        }

        if ([v10 isAtEnd])
        {
          break;
        }

        v16 = v13;
        [v10 scanCharactersFromSet:v6 intoString:&v16];
        v11 = v16;

        for (i = [v11 length]; i; --i)
        {
          [v9 appendString:v7];
        }

        if ([v10 isAtEnd])
        {
          goto LABEL_13;
        }
      }

      v11 = v13;
LABEL_13:
    }

    v8 = [MEMORY[0x277CCACA8] stringWithString:v9];
  }

  return v8;
}

uint64_t sub_27704B800(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [a1 length];
  v8 = [v6 length];
  v9 = [a1 rangeOfString:v6 options:a4 range:{0, v7}];
  v10 = 0;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v10 = 0;
    do
    {
      ++v10;
      v12 = v9 + v8;
      v7 = v7 - (v9 + v8) + v11;
      v9 = [a1 rangeOfString:v6 options:a4 range:{v9 + v8, v7}];
      v11 = v12;
    }

    while (v9 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v10;
}

id sub_27704B8C8(void *a1)
{
  if (qword_280A63A40 != -1)
  {
    sub_277112E20();
  }

  v2 = a1;
  v3 = [v2 length];
  *&v12 = [v2 rangeOfCharacterFromSet:qword_280A63A38];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v2;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCAB68]);
    v6 = [v2 substringToIndex:v12];
    v4 = [v5 initWithString:v6];

    if (v3 != v12)
    {
      do
      {
        [v4 appendFormat:@"\\%C", objc_msgSend(v2, "characterAtIndex:", v12)];
        *&v12 = v12 + 1;
        *(&v12 + 1) = v3 - v12;
        v7 = v12;
        if (v3 != v12)
        {
          *&v11 = [v2 rangeOfCharacterFromSet:qword_280A63A38 options:0 range:v12];
          *(&v11 + 1) = v8;
          v12 = v11;
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = v3;
          }

          if (v12 != v7)
          {
            v9 = [v2 substringWithRange:{v7, v12 - v7}];
            [v4 appendString:v9];
          }
        }
      }

      while (*(&v12 + 1));
    }
  }

  return v4;
}

void sub_27704BABC()
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"*?+[(){}^$|\\./"];
  objc_storeStrong(&qword_280A63A38, v2);
  if (!qword_280A63A38)
  {
    v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_escapeForIcuRegex]_block_invoke"];
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSString_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v0 file:v1 lineNumber:407 isFatal:0 description:"invalid nil value for '%{public}s'", "icuRegexCharSet"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

uint64_t sub_27704BBAC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 pathComponents];
  v6 = [v4 pathComponents];
  v7 = [v6 count];
  if (v7)
  {
    do
    {
      v8 = v7 - 1;
      v9 = [v6 objectAtIndexedSubscript:v7 - 1];
      v10 = [v9 isEqualToString:@"/"];

      if (!v10)
      {
        break;
      }

      --v7;
    }

    while (v8);
  }

  v11 = [v5 count];
  v12 = v7 <= v11;
  if (v7 - 1 < v11)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [v5 objectAtIndexedSubscript:v13];
      v16 = [v6 objectAtIndexedSubscript:v13];
      v12 = [v15 isEqualToString:v16];

      if (v7 <= v14)
      {
        break;
      }

      v13 = v14++;
    }

    while ((v12 & 1) != 0);
  }

  return v12;
}

uint64_t sub_27704BCDC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 pathComponents];
  v6 = [v5 mutableCopy];

  v7 = [v4 pathComponents];
  v8 = [v7 mutableCopy];

  if ([v6 count] >= 2)
  {
    do
    {
      v9 = [v6 lastObject];
      v10 = [v9 isEqualToString:@"/"];

      if (!v10)
      {
        break;
      }

      [v6 removeObjectAtIndex:{objc_msgSend(v6, "count") - 1}];
    }

    while ([v6 count] > 1);
  }

  if ([v8 count] >= 2)
  {
    do
    {
      v11 = [v8 lastObject];
      v12 = [v11 isEqualToString:@"/"];

      if (!v12)
      {
        break;
      }

      [v8 removeObjectAtIndex:{objc_msgSend(v8, "count") - 1}];
    }

    while ([v8 count] > 1);
  }

  v13 = [v8 count] + 1;
  v14 = [v6 count];
  v15 = v13 == v14;
  v16 = [v8 count];
  if (v16 && v13 == v14)
  {
    v17 = v16;
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = [v6 objectAtIndexedSubscript:v18];
      v21 = [v8 objectAtIndexedSubscript:v18];
      v15 = [v20 isEqualToString:v21];

      if (v17 <= v19)
      {
        break;
      }

      v18 = v19++;
    }

    while ((v15 & 1) != 0);
  }

  return v15;
}

id sub_27704BEB8(void *a1)
{
  v1 = realpath_DARWIN_EXTSN([a1 fileSystemRepresentation], 0);
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x277CCACA8] stringWithCString:v1 encoding:4];
    free(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_27704BF2C(void *a1)
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];
  v4 = [v3 componentsJoinedByString:@" "];

  v5 = [v4 stringByTrimmingCharactersInSet:v2];

  return v5;
}

id sub_27704BFC4(void *a1, uint64_t a2, unint64_t a3)
{
  if ([a1 length] <= a3)
  {
    v5 = a1;
  }

  else
  {
    v5 = [a1 substringToIndex:{objc_msgSend(a1, "rangeOfComposedCharacterSequenceAtIndex:", a3)}];
  }

  return v5;
}

id sub_27704C028(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = [a1 length];
  v6 = 0;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = [a1 rangeOfComposedCharacterSequenceAtIndex:v6];
      v10 = v9;
      v11 = [a1 substringWithRange:{v8, v9}];
      v12 = [v11 fileSystemRepresentation];

      v7 += strlen(v12);
      if (v7 > a3)
      {
        break;
      }

      v6 += v10;
    }

    while (v6 < v5);
  }

  if (v6 == v5)
  {
    v13 = a1;
  }

  else
  {
    v13 = [a1 substringToIndex:v6];
  }

  return v13;
}

id sub_27704C100(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a1;
  if ([v4 length] > a3)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3010000000;
    v13 = 0;
    v14 = 0;
    v12 = &unk_27715A77D;
    v5 = [v4 length];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_27704C25C;
    v8[3] = &unk_27A701BB0;
    v8[4] = &v9;
    v8[5] = v15;
    v8[6] = a3;
    [v4 enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v8}];
    v6 = [v4 substringWithRange:{v10[4], v10[5]}];

    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(v15, 8);
    v4 = v6;
  }

  return v4;
}

void sub_27704C238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

NSUInteger sub_27704C25C(void *a1, uint64_t a2, NSRange a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v9 = NSUnionRange(*(*(a1[4] + 8) + 32), a3);
  result = v9.location;
  *(*(a1[4] + 8) + 32) = v9;
  if (++*(*(a1[5] + 8) + 24) >= a1[6])
  {
    *a6 = 1;
  }

  return result;
}

id sub_27704C2CC(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  [v9 sizeWithAttributes:v8];
  if (a2 <= v10)
  {
    v12 = SFUMainBundle();
    v13 = [v12 localizedStringForKey:@"…" value:&stru_28862C2A0 table:@"TSUtility"];

    v14 = [v9 length];
    v33 = 0;
    v34 = &v33;
    v35 = 0x3010000000;
    v36 = &unk_27715A77D;
    v37 = 0;
    v38 = 0;
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = sub_27704C50C;
    v26 = &unk_27A701BD8;
    v30 = &v33;
    v15 = v9;
    v27 = v15;
    v16 = v13;
    v28 = v16;
    v29 = v8;
    v31 = a2;
    v32 = a3;
    v17 = _Block_copy(&v23);
    [v15 enumerateSubstringsInRange:0 options:v14 usingBlock:{3, v17, v23, v24, v25, v26}];
    v18 = v34;
    v19 = v34[5];
    if (!v19)
    {
      [v15 enumerateSubstringsInRange:0 options:v14 usingBlock:{2, v17}];
      v18 = v34;
      v19 = v34[5];
    }

    v20 = [v15 substringWithRange:{v18[4], v19}];

    if (([v20 isEqualToString:v15] & 1) == 0)
    {
      v21 = [v20 stringByAppendingString:v16];

      v20 = v21;
    }

    v11 = v20;

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

void sub_27704C4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27704C50C(uint64_t a1, uint64_t a2, NSRange a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = NSUnionRange(*(*(*(a1 + 56) + 8) + 32), a3);
  v9 = [*(a1 + 32) substringWithRange:{v8.location, v8.length}];
  v11 = [v9 stringByAppendingString:*(a1 + 40)];

  [v11 sizeWithAttributes:*(a1 + 48)];
  if (*(a1 + 64) >= v10)
  {
    *(*(*(a1 + 56) + 8) + 32) = v8;
  }

  else
  {
    *a6 = 1;
  }
}

id sub_27704C5D0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a5;
  v10 = SFUMainBundle();
  v11 = [v10 localizedStringForKey:@"”" value:&stru_28862C2A0 table:@"TSUtility"];

  v12 = [v8 substringFromIndex:{objc_msgSend(v8, "length") - 1}];
  v13 = [v12 isEqualToString:v11];
  v14 = [v8 tsu_substringByTruncatingToSize:v9 forAttributes:{a2, a3}];

  if (([v14 isEqualToString:v8] & 1) == 0 && v13)
  {
    v15 = [v14 stringByAppendingString:v11];

    v14 = v15;
  }

  return v14;
}

__CFString *sub_27704C6EC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [a1 stringByStandardizingPath];
    v7 = [v6 pathComponents];

    v8 = [v4 stringByStandardizingPath];
    v9 = [v8 pathComponents];

    v10 = [v7 count];
    v11 = [v9 count];
    if (v10 < v11)
    {
      goto LABEL_10;
    }

    v12 = v11;
    if (!v11)
    {
      goto LABEL_8;
    }

    v22 = v5;
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [v9 objectAtIndexedSubscript:v13];
      v16 = [v7 objectAtIndexedSubscript:v13];
      v17 = [v15 isEqualToString:v16];

      if ((v17 & 1) == 0)
      {
        break;
      }

      v13 = v14;
    }

    while (v12 > v14++);
    v5 = v22;
    if (v12 != v13)
    {
LABEL_10:
      v19 = 0;
    }

    else
    {
LABEL_8:
      if (v10 == v12)
      {
        v19 = &stru_28862C2A0;
      }

      else
      {
        v20 = [v7 subarrayWithRange:{v12, v10 - v12}];
        v19 = [MEMORY[0x277CCACA8] pathWithComponents:v20];
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

__CFString *sub_27704C894(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  if (a4)
  {
    v7 = [a1 stringByStandardizingPath];
    v8 = [v7 pathComponents];

    v9 = [v6 stringByStandardizingPath];
    v10 = [v9 pathComponents];

    v11 = [v8 count];
    v12 = [v10 count];
    v13 = v12;
    if (v12 >= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [v10 objectAtIndexedSubscript:v15];
        v18 = [v8 objectAtIndexedSubscript:v15];
        v19 = [v17 isEqualToString:v18];

        if (!v19)
        {
          break;
        }

        v15 = ++v16;
      }

      while (v14 > v16);
    }

    else
    {
      v16 = 0;
    }

    v21 = v13 - v16;
    if (v13 <= v16)
    {
      v23 = &stru_28862C2A0;
    }

    else
    {
      v22 = &stru_28862C2A0;
      do
      {
        v23 = [(__CFString *)v22 stringByAppendingPathComponent:@".."];

        v22 = v23;
        --v21;
      }

      while (v21);
    }

    if (v16 >= v11)
    {
      v20 = v23;
    }

    else
    {
      do
      {
        v24 = [v8 objectAtIndexedSubscript:v16];
        v20 = [(__CFString *)v23 stringByAppendingPathComponent:v24];

        ++v16;
        v23 = v20;
      }

      while (v11 != v16);
    }
  }

  else
  {
    v20 = [a1 tsu_stringWithPathRelativeTo:v6];
  }

  return v20;
}

__CFString *sub_27704CA78(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = [(__CFString *)v4 rangeOfCharacterFromSet:a3 options:8];
  v7 = v6;
  if (v6 == [(__CFString *)v4 length])
  {
    v8 = &stru_28862C2A0;
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v8 = [(__CFString *)v4 substringFromIndex:v7];
  }

  v4 = v8;
LABEL_6:

  return v4;
}

id sub_27704CB0C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  v6 = 2 * a4;
  v7 = malloc_type_malloc(2 * a4, 0x100004077774924uLL);
  if (v4)
  {
    v8 = v7;
    do
    {
      v9 = *a3++;
      *v8 = a0123456789abcd[v9 >> 4];
      v8[1] = a0123456789abcd[v9 & 0xF];
      v8 += 2;
      --v4;
    }

    while (v4);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v7 length:v6 encoding:1 freeWhenDone:1];

  return v10;
}

BOOL sub_27704CBC0()
{
  if (qword_280A63A50 != -1)
  {
    sub_277112E34();
  }

  return objc_opt_class() == qword_280A63A48;
}

void sub_27704CC10()
{
  v0 = [MEMORY[0x277CCACA8] stringWithCString:"a" encoding:1];
  qword_280A63A48 = objc_opt_class();

  v1 = NSStringFromClass(qword_280A63A48);
  v2 = [v1 isEqual:@"NSTaggedPointerString"];

  if ((v2 & 1) == 0)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_isTaggedPointer]_block_invoke"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSString_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:742 isFatal:0 description:"expecting NSTaggedPointerString class here"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

id sub_27704CD10(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = SFUMainBundle();
  v6 = [v5 localizedStringForKey:@"copy" value:&stru_28862C2A0 table:@"TSUtility"];

  v7 = SFUMainBundle();
  v8 = [v7 localizedStringForKey:@"%1$@ %2$@" value:&stru_28862C2A0 table:@"TSUtility"];

  v9 = SFUMainBundle();
  v10 = [v9 localizedStringForKey:@"%1$@ %2$@ %3$@" value:&stru_28862C2A0 table:@"TSUtility"];

  v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v12 = [a1 tsu_stringByIncrementingCounterAfterDuplicateTitleModifierWithLocalizedCopyString:v6 firstCopyFormatString:v8 generalCopyFormatString:v10 numberFormatter:v11 uniquenessTest:v4];

  return v12;
}

id sub_27704CE40(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v34 = 0;
  v17 = v13;
  v18 = [a1 tsu_parseBaseTitleWithLocalizedCopyString:v12 firstCopyFormatString:v13 generalCopyFormatString:v14 outNumber:&v34];
  v19 = v18;
  if (v18)
  {
    v35[0] = @"%1$@";
    v35[1] = @"%2$@";
    v32 = v18;
    v33 = v12;
    v36[0] = v18;
    v36[1] = v12;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v21 = [v20 mutableCopy];

    for (i = [a1 copy]; (objc_msgSend(a1, "isEqualToString:", i) & 1) != 0 || (v16[2](v16, i) & 1) == 0; i = v30)
    {
      v23 = v34;
      v24 = ++v34;
      if (v23)
      {
        v25 = v14;
      }

      else
      {
        v25 = v17;
      }

      v26 = MEMORY[0x277CCABB0];
      v27 = v25;
      v28 = [v26 numberWithUnsignedInteger:v24];
      v29 = [v15 stringFromNumber:v28];
      [v21 setObject:v29 forKeyedSubscript:@"%3$@"];

      v30 = [v27 tsu_stringByApplyingSubstitutions:v21];
    }

    v19 = v32;
    v12 = v33;
  }

  else
  {
    i = [a1 copy];
  }

  return i;
}

id sub_27704D06C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 tsu_regexForTitleParsingWithLocalizedCopyString:v10 isFirstCopyFormatString:0];
  if (!v13)
  {
    v21 = a1;
    goto LABEL_23;
  }

  v14 = [v13 firstMatchInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];
  if (v14)
  {
    v15 = [v12 rangeOfString:@"%1$@"];
    v16 = [v12 rangeOfString:@"%3$@"];
    if (v15 < v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v15 >= v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v19 = [v14 rangeAtIndex:v17];
    v21 = [a1 substringWithRange:{v19, v20}];
    v22 = [v14 rangeAtIndex:v18];
    v24 = [a1 substringWithRange:{v22, v23}];
    v25 = [v24 integerValue];
    goto LABEL_20;
  }

  v26 = [v11 tsu_regexForTitleParsingWithLocalizedCopyString:v10 isFirstCopyFormatString:1];
  if (v26)
  {
    v24 = v26;
    v32 = [v26 firstMatchInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];
    if (v32)
    {
      v27 = [v11 rangeOfString:@"%1$@"];
      v25 = 1;
      if (v27 < [v11 rangeOfString:@"%3$@"])
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      v29 = [v32 rangeAtIndex:v28];
      v21 = [a1 substringWithRange:{v29, v30}];
    }

    else
    {
      v21 = [a1 copy];
      v25 = 0;
    }

LABEL_20:
    if (a6)
    {
      *a6 = v25;
    }

    goto LABEL_22;
  }

  v21 = a1;
LABEL_22:

LABEL_23:

  return v21;
}

id sub_27704D2A0(void *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 mutableCopy];
  v6 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_27704D4AC;
  v25[3] = &unk_27A701C00;
  v25[4] = v5;
  v25[5] = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v25];
  v7 = [v6 allKeys];
  v8 = [v7 sortedArrayUsingComparator:&unk_288629B90];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v6 objectForKeyedSubscript:{v14, v21}];
        v16 = [v14 rangeValue];
        if (v15)
        {
          v18 = v16 == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          [v5 replaceCharactersInRange:v16 withString:{v17, v15}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  v19 = [v5 copy];

  return v19;
}

void sub_27704D4AC(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [*(a1 + 32) rangeOfString:a2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCAE60] valueWithRange:{v5, v6}];
    [v7 setObject:v9 forKeyedSubscript:v8];
  }
}

uint64_t sub_27704D540(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

id sub_27704D598(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([a1 tsu_countInstancesOfString:@"%1$@" options:0] == 1 && objc_msgSend(a1, "tsu_countInstancesOfString:options:", @"%2$@", 0) == 1 && ((a4 & 1) != 0 || objc_msgSend(a1, "tsu_countInstancesOfString:options:", @"%3$@", 0) == 1))
  {
    v7 = [MEMORY[0x277CCAC68] escapedPatternForString:a1];
    v8 = [MEMORY[0x277CCAC68] escapedPatternForString:@"%1$@"];
    v17[0] = v8;
    v18[0] = @"(.*)";
    v9 = [MEMORY[0x277CCAC68] escapedPatternForString:@"%2$@"];
    v17[1] = v9;
    v18[1] = v6;
    v10 = [MEMORY[0x277CCAC68] escapedPatternForString:@"%3$@"];
    v17[2] = v10;
    v18[2] = @"(\\d+)";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v12 = [v7 tsu_stringByApplyingSubstitutions:v11];
    v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v12 options:0 error:0];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_regexForTitleParsingWithLocalizedCopyString:isFirstCopyFormatString:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSString_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:864 isFatal:0 description:"Invalid format string: %{public}@, isFirstCopyFormatString: %d", a1, a4];

    +[TSUAssertionHandler logBacktraceThrottled];
    v13 = 0;
  }

  return v13;
}

id sub_27704D7F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = a4;
  v8 = [MEMORY[0x277CCAB68] stringWithCapacity:4 * a4 / 3];
  if (v6 < 3)
  {
    v12 = 0;
  }

  else
  {
    v9 = (a3 + 2);
    v16 = 3 * ((v6 - 3) / 3) + 3;
    v10 = -4;
    v11 = 4;
    do
    {
      [v8 appendFormat:@"%c%c%c%c", aAbcdefghijklmn[*(v9 - 2) >> 2], aAbcdefghijklmn[(((*(v9 - 1) << 8) | (*(v9 - 2) << 16)) >> 12) & 0x3F], aAbcdefghijklmn[((*v9 | (*(v9 - 1) << 8)) >> 6) & 0x3F], aAbcdefghijklmn[*v9 & 0x3F]];
      if (a5 && !(v10 + 76 * (v11 / 0x4C)))
      {
        [v8 appendString:@"\n"];
      }

      v9 += 3;
      v10 -= 4;
      v11 += 4;
      v6 -= 3;
    }

    while (v6 > 2);
    v12 = v16;
  }

  if (v6 == 1)
  {
    [v8 appendFormat:@"%c%c==", aAbcdefghijklmn[*(a3 + v12) >> 2], aAbcdefghijklmn[16 * (*(a3 + v12) & 3)], v15];
  }

  else if (v6 == 2)
  {
    v13 = (a3 + v12);
    [v8 appendFormat:@"%c%c%c=", aAbcdefghijklmn[*v13 >> 2], aAbcdefghijklmn[((((v13[1] & 0xF0) << 8) | (*v13 << 16)) >> 12) & 0x3F], aAbcdefghijklmn[4 * (v13[1] & 0xF)]];
  }

  return v8;
}

uint64_t sub_27704D9F0(void *a1)
{
  strlen([a1 UTF8String]);
  v1 = MEMORY[0x277CCACA8];

  return MEMORY[0x2821F9670](v1, sel_tsu_stringByBase64EncodingBytes_length_);
}

id sub_27704DA40(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 substringToIndex:1];
    v3 = [v2 lowercaseString];
    if (([v2 isEqualToString:v3] & 1) == 0)
    {
      v4 = [v1 substringFromIndex:1];
      v5 = [v3 stringByAppendingString:v4];

      v1 = v5;
    }
  }

  return v1;
}

id sub_27704DAFC(void *a1)
{
  v2 = [a1 mutableCopy];
  if ([v2 length])
  {
    v3 = [a1 substringToIndex:1];
    v4 = [v3 uppercaseString];
    [v2 replaceCharactersInRange:0 withString:{1, v4}];
  }

  return v2;
}

id sub_27704DB84(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  if ([v5 length])
  {
    v6 = [v5 characterAtIndex:0];
    if ([v5 length])
    {
      while (([v4 characterIsMember:v6] & 1) == 0)
      {
        v7 = [v5 substringFromIndex:1];

        if ([v7 length])
        {
          v6 = [v7 characterAtIndex:0];
        }

        v5 = v7;
        if (![v7 length])
        {
          goto LABEL_9;
        }
      }
    }
  }

  v7 = v5;
LABEL_9:

  return v7;
}

id sub_27704DC64(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

id sub_27704DD1C(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"&amp;" withString:@"&" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&lt;" withString:@"<" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&gt;" withString:@">" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

BOOL sub_27704DDD4(void *a1, uint64_t a2, void *a3)
{
  v4 = [a3 invertedSet];
  v5 = [a1 rangeOfCharacterFromSet:v4];

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

id sub_27704DE24(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 pathExtension];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = [a1 stringByDeletingPathExtension];
  }

  else
  {
    v7 = a1;
  }

  v8 = v7;

  return v8;
}

id sub_27704DEA8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([a1 isEqualToString:&stru_28862C2A0] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", &stru_28862C2A0))
  {
    v5 = a1;
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  if ([a1 isEqualToString:@"\\\"])
  {
    v8 = [@"\" stringByAppendingPathExtension:v4];
    v9 = [@"\" stringByAppendingString:v8];
  }

  else
  {
    if (![a1 length] || objc_msgSend(a1, "characterAtIndex:", 0) != 126)
    {
      v5 = [a1 stringByAppendingPathExtension:v4];
      goto LABEL_4;
    }

    v10 = [@"X" stringByAppendingString:a1];
    v8 = [v10 stringByAppendingPathExtension:v4];

    v9 = [v8 substringFromIndex:1];
  }

  v6 = v9;

LABEL_5:

  return v6;
}

id sub_27704DFE0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [v3 bytes];
  v6 = [v3 length];
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *v5++;
      [v4 appendFormat:@"%02x", v8];
      --v7;
    }

    while (v7);
  }

  v9 = [v4 copy];

  return v9;
}

uint64_t sub_27704E09C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    v10 = *a5;
    v11 = a5[1];
    v12 = [a1 rangeOfString:v8 options:a4 range:{*a5, v11}];
    v14 = v12;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *a5 = TSUInvalidRange;
    }

    else if ((a4 & 4) != 0)
    {
      *a5 = v10;
      a5[1] = v12 - v10;
    }

    else
    {
      *a5 = v12 + v13;
      a5[1] = v11 + v10 - (v12 + v13);
    }
  }

  else
  {
    v14 = [a1 rangeOfString:v8 options:a4 range:{0, objc_msgSend(v8, "length")}];
  }

  return v14;
}

void sub_27704E1A4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:a1];
  [v8 setCaseSensitive:1];
  [v8 setCharactersToBeSkipped:0];
  if (([v8 isAtEnd] & 1) == 0)
  {
    do
    {
      v9 = [v8 scanLocation];
      if ([v8 scanCharactersFromSet:v6 intoString:0])
      {
        v10 = [v8 scanLocation];
        v11 = 0;
        v7[2](v7, v9, v10 - v9, &v11);
        if (v11)
        {
          break;
        }
      }

      if (([v8 isAtEnd] & 1) == 0)
      {
        [v8 scanUpToCharactersFromSet:v6 intoString:0];
      }
    }

    while (![v8 isAtEnd]);
  }
}

id sub_27704E2D0(__CFString *a1, uint64_t a2, int a3)
{
  v30 = [MEMORY[0x277CBEB58] set];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_27704E5A4;
  aBlock[3] = &unk_27A701C40;
  v35 = a3;
  v38 = a3;
  v5 = _Block_copy(aBlock);
  v36 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [(__CFString *)a1 length];
  v7 = CFLocaleCopyCurrent();
  v40.location = 0;
  v31 = v6;
  v40.length = v6;
  v8 = CFStringTokenizerCreate(*MEMORY[0x277CBECE8], a1, v40, 4uLL, v7);
  CFRelease(v7);
  v9 = CFStringTokenizerGoToTokenAtIndex(v8, 0);
  LODWORD(v10) = v9;
  if (!v9)
  {
    v5[2](v5, v8);
  }

  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v8);
  if (CurrentTokenRange.location != -1)
  {
    location = CurrentTokenRange.location;
    length = CurrentTokenRange.length;
    v14 = 0;
    v15 = CurrentTokenRange.length;
    v34 = a1;
    do
    {
      if (location >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = location;
      }

      v32 = v16;
      v33 = length;
      v17 = (v5[2])(v5, v8);
      v18 = CFStringTokenizerGetCurrentTokenRange(v8);
      v19 = v18.location;
      length = v18.length;
      if (v35)
      {
        while (1)
        {
          v20 = v10;
          v10 = v17;
          if (((v20 | v17) & 0x20) != 0)
          {
            if ((v17 & 0x10) == 0)
            {
              goto LABEL_20;
            }
          }

          else if ((v17 & 0x10) != 0 && length == 1)
          {
            if ([v36 characterIsMember:{-[__CFString characterAtIndex:](a1, "characterAtIndex:", v19)}])
            {
              v28 = 1;
              goto LABEL_21;
            }
          }

          else if (!v17 || (v17 & 0x10) != 0)
          {
            goto LABEL_20;
          }

          v17 = (v5[2])(v5, v8);
          v21 = CFStringTokenizerGetCurrentTokenRange(v8);
          v19 = v21.location;
          length = v21.length;
        }
      }

      v10 = v17;
LABEL_20:
      v28 = length;
LABEL_21:
      v22 = location + v15;
      if (location + v15 <= v31)
      {
        v22 = v31;
      }

      if (v19 > v31 || v10 == 0)
      {
        v14 = v22;
      }

      else
      {
        v14 = v19;
      }

      if (v35)
      {
        v24 = v32;
      }

      else
      {
        v24 = location;
      }

      if (v35)
      {
        v25 = v14 - v32;
      }

      else
      {
        v25 = v33;
      }

      v26 = [(__CFString *)v34 substringWithRange:v24, v25, v30];
      v27 = [v26 stringByTrimmingCharactersInSet:v36];

      if ([v27 length])
      {
        [v30 addObject:v27];
      }

      location = v19;
      v15 = v28;
      a1 = v34;
    }

    while (v19 != -1);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v30;
}

CFStringTokenizerTokenType sub_27704E5A4(uint64_t a1, CFStringTokenizerRef tokenizer)
{
  do
  {
    while (1)
    {
      Token = CFStringTokenizerAdvanceToNextToken(tokenizer);
      v5 = Token;
      if (Token)
      {
        break;
      }

      if (CFStringTokenizerGetCurrentTokenRange(tokenizer).location == -1)
      {
        return v5;
      }
    }
  }

  while ((Token & 0x10) != 0 && (*(a1 + 32) & 1) == 0);
  return v5;
}

uint64_t sub_27704E604(void *a1)
{
  if (qword_280A63A60 != -1)
  {
    sub_277112E48();
  }

  v2 = qword_280A63A58;

  return [a1 stringByReplacingOccurrencesOfString:v2 withString:&stru_28862C2A0];
}

void sub_27704E660()
{
  v2 = -4;
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v2 length:1];
  v1 = qword_280A63A58;
  qword_280A63A58 = v0;
}

id sub_27704E6AC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a1;
  if ([v4 length] > a3)
  {
    v5 = (a3 >> 1) - 1;
    v6 = [v4 rangeOfComposedCharacterSequencesForRange:{0, v5}];
    v8 = [v4 substringWithRange:{v6, v7}];
    v9 = [v4 rangeOfComposedCharacterSequencesForRange:{objc_msgSend(v4, "length") - v5, v5}];
    v11 = [v4 substringWithRange:{v9, v10}];
    v12 = SFUMainBundle();
    v13 = [v12 localizedStringForKey:@"%1$@…%2$@" value:&stru_28862C2A0 table:@"TSUtility"];

    v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, v8, v11];

    v4 = v14;
  }

  return v4;
}

uint64_t sub_27704E7D0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [a1 isEqualToString:?];
  }

  else
  {
    return 0;
  }
}

id sub_27704E7E0(void *a1)
{
  v1 = [a1 tsu_stringWithNormalizedHyphens];
  v2 = [v1 tsu_stringWithNormalizedQuotationMarks];

  return v2;
}

uint64_t sub_27704E82C(void *a1)
{
  if (qword_280A63A68 != -1)
  {
    sub_277112E5C();
  }

  v2 = qword_280A63A70;

  return [a1 tsu_stringByReplacingInstancesOfCharactersInSet:v2 withString:@"-"];
}

uint64_t sub_27704E888()
{
  qword_280A63A70 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ـ‑-‐–—"];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_27704E8D0(void *a1)
{
  if (qword_280A63A78 != -1)
  {
    sub_277112E70();
  }

  v2 = qword_280A63A80;

  return [a1 tsu_stringByReplacingInstancesOfCharactersInSet:v2 withString:@"'"];
}

uint64_t sub_27704E92C()
{
  qword_280A63A80 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"'’‘‚“”„«»‹›」「』『"];

  return MEMORY[0x2821F96F8]();
}

id sub_27704E974(void *a1)
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\u200E\u200F\u202A\u202B\u202C\u202D\u202E⁦⁧⁨⁩"];
  v3 = [a1 tsu_stringByReplacingInstancesOfCharactersInSet:v2 withString:&stru_28862C2A0];

  return v3;
}

__CFString *sub_27704EA1C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = MEMORY[0x277CCAB68];
    v4 = a3;
    v5 = [v3 string];
    [v4 tsu_appendJSONStringToString:v5];
  }

  else
  {
    v5 = @"null";
  }

  return v5;
}

void sub_27704EA8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_280A63A90 != -1)
  {
    sub_277112E84();
  }

  [v4 appendString:@""];
  if ([a1 rangeOfCharacterFromSet:qword_280A63A88] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [a1 length];
    v6 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
    [a1 getCharacters:v6];
    if (!v5)
    {
LABEL_35:
      free(v6);
      goto LABEL_36;
    }

    v7 = v6;
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      v13 = v9;
      if (v9 <= 12)
      {
        if (v8 > 9)
        {
          if (v8 == 10)
          {
            v10 = v4;
            v11 = @"\\n";
          }

          else
          {
            if (v8 != 12)
            {
              goto LABEL_31;
            }

            v10 = v4;
            v11 = @"\\f";
          }
        }

        else if (v8 == 8)
        {
          v10 = v4;
          v11 = @"\\b";
        }

        else
        {
          if (v8 != 9)
          {
            goto LABEL_31;
          }

          v10 = v4;
          v11 = @"\\t";
        }
      }

      else if (v8 <= 91)
      {
        if (v8 == 13)
        {
          v10 = v4;
          v11 = @"\\r";
        }

        else
        {
          if (v8 != 34)
          {
LABEL_31:
            if (v8 < 0x20)
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"\\u%.4x", v8];
            }

            else
            {
              [MEMORY[0x277CCACA8] stringWithCharacters:&v13 length:1];
            }
            v12 = ;
            [v4 appendString:v12];

            goto LABEL_29;
          }

          v10 = v4;
          v11 = @"\\"";
        }
      }

      else
      {
        switch(v8)
        {
          case 0x5C:
            v10 = v4;
            v11 = @"\\\";
            break;
          case 0x2028:
            v10 = v4;
            v11 = @"\\u2028";
            break;
          case 0x2029:
            v10 = v4;
            v11 = @"\\u2029";
            break;
          default:
            goto LABEL_31;
        }
      }

      [v10 appendString:v11];
LABEL_29:
      if (!--v5)
      {
        goto LABEL_35;
      }
    }
  }

  [v4 appendString:a1];
LABEL_36:
  [v4 appendString:@""];
}

void sub_27704ECF0()
{
  v0 = [MEMORY[0x277CCAB50] characterSetWithRange:{0, 32}];
  v1 = qword_280A63A88;
  qword_280A63A88 = v0;

  [qword_280A63A88 addCharactersInString:@"\"];
  v3 = 539566120;
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v3 length:2];
  [qword_280A63A88 addCharactersInString:v2];
}

id sub_27704ED84(void *a1)
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" "];
  v3 = [a1 tsu_stringByReplacingInstancesOfCharactersInSet:v2 withString:@" "];

  return v3;
}

id sub_27704EDF4(void *a1)
{
  v2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v3 = [a1 tsu_stringWithoutNonbreakingSpaces];
  v4 = [v3 tsu_stringByReplacingInstancesOfCharactersInSet:v2 withString:@" "];

  return v4;
}

id sub_27704EE74(void *a1)
{
  v2 = [a1 length];
  v3 = NSZoneMalloc(0, 2 * v2 + 2);
  v4 = v3;
  v5 = MEMORY[0x277D85DE0];
  v6 = v3;
  if (v2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v19 = 0;
    v20 = 1;
    v6 = v3;
    do
    {
      v10 = [a1 characterAtIndex:v7];
      v11 = v10;
      if (v10 == 92)
      {
        if (v7 + 1 >= v2)
        {
          if ((v9 & 1) == 0)
          {
            if (v8 < 1)
            {
              goto LABEL_18;
            }

LABEL_15:
            v9 = 0;
            v8 -= v10 == 41;
            goto LABEL_24;
          }

LABEL_10:
          *v6 = v10;
          v6 += 2;
          v9 &= v10 != 34;
          goto LABEL_24;
        }

        *v6 = 92;
        *(v6 + 1) = [a1 characterAtIndex:v7 + 1];
        v6 += 4;
        ++v7;
      }

      else
      {
        if (v9)
        {
          goto LABEL_10;
        }

        if (v10 == 40)
        {
          v9 = 0;
          ++v8;
        }

        else
        {
          if (v8 > 0)
          {
            goto LABEL_15;
          }

          if (v10 != 60)
          {
            if ((v19 & (v10 == 62)) != 0)
            {
              break;
            }

            if (v10 > 0x7F)
            {
              if (__maskrune(v10, 0x4000uLL))
              {
LABEL_19:
                v9 = 0;
                if ((v20 & 1) == 0)
                {
                  *v6 = 32;
                  v6 += 2;
                }

                v20 = 1;
                goto LABEL_24;
              }
            }

            else
            {
LABEL_18:
              if ((*(v5 + 4 * v10 + 60) & 0x4000) != 0)
              {
                goto LABEL_19;
              }
            }

            v20 = 0;
            *v6 = v11;
            v6 += 2;
            v9 |= v11 == 34;
            goto LABEL_24;
          }

          v9 = 0;
          v19 = 1;
          v6 = v4;
        }
      }

LABEL_24:
      ++v7;
    }

    while (v7 < v2);
  }

  v12 = v6 - v4;
  do
  {
    v13 = v6;
    v14 = v12;
    if (v6 <= v4)
    {
      break;
    }

    v6 -= 2;
    v15 = *(v13 - 1);
    v16 = v15 > 0x7F ? __maskrune(v15, 0x4000uLL) : *(v5 + 4 * v15 + 60) & 0x4000;
    v12 = v14 - 2;
  }

  while (v16);
  *v13 = 0;
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v4 length:v14 >> 1];
  NSZoneFree(0, v4);

  return v17;
}

id sub_27704F0C0(void *a1)
{
  v2 = [a1 rangeOfString:@"@"];
  v3 = [a1 rangeOfString:@"<"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL && v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a1;
  }

  else
  {
    v5 = [a1 tsu_uncommentedAddress];
  }

  return v5;
}

BOOL sub_27704F134(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (![a1 length])
  {
    return 0;
  }

  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  v4 = [v3 length];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  MEMORY[0x28223BE20]();
  v7 = (v15 - ((v6 + 17) & 0xFFFFFFFFFFFFFFF0));
  [v3 getCharacters:v7 range:{0, v5}];
  v8 = 0;
  v9 = 1;
  v10 = v5;
  do
  {
    v12 = *v7++;
    v11 = v12;
    v13 = vdup_n_s16(v12);
    if ((vmaxv_u16(vorr_s8(vcgt_u16(0x56D019B6015000E0, vadd_s16(v13, 0xB200CC00CFC0D100)), vceq_s16(vand_s8(v13, 0xFFF0FFC0FF80FF00), 0x319030002E801100))) & 1) == 0 && ((v11 + 21504) >> 2) >= 0xAE9u && (v11 + 1792) >= 0x200u && (v11 + 464) >= 0x20u && (v11 & 0xFFE0) != 0x31A0 && (v11 & 0xFE00) != 0x3200)
    {
      break;
    }

    v8 = v9++ >= v5;
    --v10;
  }

  while (v10);

  return v8;
}

id sub_27704F2F4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (!v3)
  {
    v4 = 0;
    goto LABEL_18;
  }

  v4 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v3 style:0 options:0];
  if (v4)
  {
    goto LABEL_18;
  }

  if (TSUDefaultCat_init_token != -1)
  {
    sub_277112E98();
  }

  v5 = [v3 givenName];
  v6 = [v5 length];
  v7 = [v3 familyName];
  v8 = [v7 length];
  if (v6 && v8)
  {
    if (([v5 tsu_isCJKString] & 1) != 0 || objc_msgSend(v7, "tsu_isCJKString"))
    {
      v9 = [v7 stringByAppendingString:v5];
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v5, v7];
    }
  }

  else if (v6)
  {
    v9 = v5;
  }

  else
  {
    if (!v8)
    {
      v4 = 0;
      goto LABEL_17;
    }

    v9 = v7;
  }

  v4 = v9;
LABEL_17:

LABEL_18:

  return v4;
}

uint64_t sub_27704F434()
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  return MEMORY[0x2821F96F8]();
}

id sub_27704F478(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [SFUCryptoUtils sha256HashFromString:a1];
  [v1 getBytes:v7 length:32];
  v2 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
  v3 = 0;
  v4 = v2;
  do
  {
    snprintf(v4, 3uLL, "%02x", v7[v3++]);
    v4 += 2;
  }

  while (v3 != 32);
  v2[64] = 0;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  free(v2);

  return v5;
}

uint64_t sub_27704F590(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_27704F684(a1);
  v6 = sub_27704F684(v4);
  v7 = v6;
  if (v5 | v6)
  {
    if (v5 || !v6)
    {
      if (!v5 || v6)
      {
        v10 = 0;
        while (1)
        {
          v11 = [v5 objectAtIndexedSubscript:v10];
          v12 = [v7 objectAtIndexedSubscript:v10];
          v8 = [v11 compare:v12];

          if (v8)
          {
            break;
          }

          if (++v10 == 3)
          {
            goto LABEL_2;
          }
        }
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
LABEL_2:
    v8 = 0;
  }

  return v8;
}

id sub_27704F684(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  if ([v1 count] >= 2)
  {
    v3 = [v1 valueForKey:@"integerValue"];
    if ([v3 count] >= 3)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 arrayByAddingObject:&unk_28864BBD8];
    }

    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *sub_27704F730(void *a1)
{
  v2 = [a1 rangeOfString:@"." options:6];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_28862C2A0;
  }

  else
  {
    v3 = [a1 substringToIndex:v2];
  }

  return v3;
}

__CFString *sub_27704F798(void *a1)
{
  v2 = [a1 rangeOfString:@"." options:2];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_28862C2A0;
  }

  else
  {
    v3 = [a1 substringFromIndex:v2 + 1];
  }

  return v3;
}

id sub_27704F800(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([a1 length])
  {
    v5 = [v4 length];
    v6 = MEMORY[0x277CCACA8];
    if (v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v4, a1];
      goto LABEL_7;
    }

    v8 = a1;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v8 = v4;
  }

  v7 = [v6 stringWithString:v8];
LABEL_7:
  v9 = v7;

  return v9;
}

id sub_27704F8A4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([a1 length])
  {
    v5 = [v4 length];
    v6 = MEMORY[0x277CCACA8];
    if (v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", a1, v4];
      goto LABEL_7;
    }

    v8 = a1;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v8 = v4;
  }

  v7 = [v6 stringWithString:v8];
LABEL_7:
  v9 = v7;

  return v9;
}

id sub_27704F948(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"." options:2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v1 substringToIndex:v2];

    v1 = v3;
  }

  return v1;
}

id sub_27704F9B8(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"." options:6];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v1 substringFromIndex:v2 + 1];

    v1 = v3;
  }

  return v1;
}

uint64_t sub_27704FA28(void *a1)
{
  v2 = [a1 length];
  v3 = 0;
  v4 = 0;
  v5 = v2;
  do
  {
    v6 = [a1 rangeOfString:@"." options:2 range:{v3, v5}];
    ++v4;
    v3 = v6 + v7;
    v5 = v2 - (v6 + v7);
  }

  while (v6 + v7 != 0x7FFFFFFFFFFFFFFFLL);
  return v4;
}

id sub_27704FAA0(uint64_t a1, uint64_t a2, void *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isFileURL])
  {
    v4 = [v3 lastPathComponent];
    v5 = [v4 dataUsingEncoding:4];
    v6 = [v5 tsu_encodeToHexidecimalString];
    v10[0] = @"fog";
    v10[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v8 = [v7 componentsJoinedByString:@":"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_27704FBA8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = [a3 componentsSeparatedByString:@":"];
    v4 = [v3 firstObject];
    if ([v4 isEqualToString:@"fog"] && objc_msgSend(v3, "count") == 2)
    {
      v5 = [v3 objectAtIndexedSubscript:1];
      v6 = [MEMORY[0x277CBEA90] tsu_decodeFromHexidecimalString:v5];
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_27704FC9C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = [a3 mutableCopy];
  [v5 replaceOccurrencesOfString:@"%s" withString:@"<REDACT %s REDACT>" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"%@" withString:@"<REDACT %@ REDACT>" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"%{public}" withString:@"%" options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v5 arguments:a4];
  if (qword_280A63AA0 != -1)
  {
    sub_277112EAC();
  }

  v7 = [qword_280A63A98 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{objc_msgSend(v6, "length"), @"<redacted>"}];

  return v7;
}

void sub_27704FDD8()
{
  v3 = 0;
  v0 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"<REDACT .*? REDACT>" options:8 error:&v3];
  v1 = v3;
  v2 = qword_280A63A98;
  qword_280A63A98 = v0;
}

uint64_t sub_27704FE44(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = [a3 mutableCopy];
  [v5 replaceOccurrencesOfString:@"%{public}" withString:@"%" options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [a1 initWithFormat:v5 arguments:a4];

  return v6;
}

id sub_27704FF18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [[v5 alloc] tsu_initRedactedWithFormat:v6 arguments:a4];

  return v7;
}

id sub_27704FF80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [[v5 alloc] tsu_initUnRedactedWithFormat:v6 arguments:a4];

  return v7;
}

TSUIndexRange *TSUIndexRange::setLength(TSUIndexRange *this, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 + this->_begin - 1;
  }

  else
  {
    v2 = 0x80000000;
    this->_begin = 0x80000000;
  }

  this->_end = v2;
  return this;
}

void TSUIndexRange::TSUIndexRange(TSUIndexRange *this, _NSRange a2)
{
  this->_begin = a2.location;
  if (a2.location == 0x7FFFFFFFFFFFFFFFLL || !a2.length)
  {
    v2 = 0x80000000;
    this->_begin = 0x80000000;
  }

  else
  {
    v2 = a2.length + a2.location - 1;
  }

  this->_end = v2;
}

{
  this->_begin = a2.location;
  if (a2.location == 0x7FFFFFFFFFFFFFFFLL || !a2.length)
  {
    v2 = 0x80000000;
    this->_begin = 0x80000000;
  }

  else
  {
    v2 = a2.length + a2.location - 1;
  }

  this->_end = v2;
}

uint64_t TSUIndexRange::asNSRange(TSUIndexRange *this)
{
  begin = this->_begin;
  if (this->_begin < 0 || this->_end < 0)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSRange TSUIndexRange::asNSRange() const"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUIndexSet.mm"];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"TSUIndexRange:{%d, %d}", this->_begin, this->_end];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:68 isFatal:0 description:"asNSRange() usage requires non-negative indexes: %{public}@", v5];

    +[TSUAssertionHandler logBacktraceThrottled];
    begin = this->_begin;
  }

  if (begin > 0x7FFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  end = this->_end;
  v7 = begin | end;
  if (end > 0x7FFFFFFF)
  {
    begin = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 >= 0)
  {
    return begin;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

__n128 TSUIndexRange::unionRange(TSUIndexRange *this, const TSUIndexRange *a2)
{
  if (this->_begin >= 0x80000000)
  {
    begin = a2->_begin;
  }

  else
  {
    end = this->_end;
    begin = a2->_begin;
    if (end <= 0x7FFFFFFF)
    {
      if (begin > 0x7FFFFFFF)
      {
        return result;
      }

      if (a2->_end <= 0x7FFFFFFF)
      {
        if (begin >= this->_begin)
        {
          begin = this->_begin;
        }

        this->_begin = begin;
        v4 = a2->_end;
        if (end > v4)
        {
          v4 = end;
        }

        this->_end = v4;
        return result;
      }
    }
  }

  if (begin <= 0x7FFFFFFF && a2->_end <= 0x7FFFFFFF)
  {
    result = *a2;
    *this = *a2;
  }

  return result;
}

TSUIndexRange *TSUIndexRange::intersectionRange(TSUIndexRange *this, const TSUIndexRange *a2)
{
  end = a2->_end;
  v3 = this->_end;
  if (this->_begin <= a2->_begin)
  {
    begin = a2->_begin;
  }

  else
  {
    begin = this->_begin;
  }

  if (end >= v3)
  {
    v5 = this->_end;
  }

  else
  {
    v5 = a2->_end;
  }

  v9 = this->_begin < 0x80000000 && v3 < 0x80000000 && begin <= v5 && a2->_begin < 0x80000000;
  v10 = end < 0x80000000;
  v11 = !v10 || !v9;
  if (v10 && v9)
  {
    v12 = begin;
  }

  else
  {
    v12 = 0x80000000;
  }

  if (v11)
  {
    v13 = 0x80000000;
  }

  else
  {
    v13 = v5;
  }

  this->_begin = v12;
  this->_end = v13;
  return this;
}

uint64_t TSUIndexRange::makeRangeWithLength(TSUIndexRange *this, uint64_t a2)
{
  if (!a2)
  {
    return 0x80000000;
  }

  return result;
}

void TSUIndexSet::TSUIndexSet(TSUIndexSet *this)
{
  *this |= 3u;
  *&v1.f64[0] = 0x8000000080000000;
  *&v1.f64[1] = 0x8000000080000000;
  this->_singleRange = vnegq_f64(v1);
  this->_multipleRanges = 0;
}

{
  *this |= 3u;
  *&v1.f64[0] = 0x8000000080000000;
  *&v1.f64[1] = 0x8000000080000000;
  this->_singleRange = vnegq_f64(v1);
  this->_multipleRanges = 0;
}

void TSUIndexSet::TSUIndexSet(TSUIndexSet *this, const TSUIndexRange *a2)
{
  *this = *this & 0xFC | 2;
  *&v2.f64[0] = 0x8000000080000000;
  *&v2.f64[1] = 0x8000000080000000;
  this->_singleRange = vnegq_f64(v2);
  this->_multipleRanges = 0;
  this->_singleRange = *a2;
}

{
  *this = *this & 0xFC | 2;
  *&v2.f64[0] = 0x8000000080000000;
  *&v2.f64[1] = 0x8000000080000000;
  this->_singleRange = vnegq_f64(v2);
  this->_multipleRanges = 0;
  this->_singleRange = *a2;
}

void TSUIndexSet::TSUIndexSet(TSUIndexSet *this, NSIndexSet *a2)
{
  v3 = a2;
  *this |= 3u;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  this->_singleRange = vnegq_f64(v4);
  this->_multipleRanges = 0;
  TSUIndexSet::ensureRangeCapacity(this, [(NSIndexSet *)v3 count]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_277050840;
  v5[3] = &unk_27A701C60;
  v5[4] = this;
  [(NSIndexSet *)v3 enumerateRangesUsingBlock:v5];
}

TSUIndexSet *TSUIndexSet::ensureRangeCapacity(TSUIndexSet *this, unint64_t a2)
{
  v2 = this;
  v3 = *this;
  if ((*this & 2) != 0)
  {
    multipleRanges = 1;
  }

  else
  {
    multipleRanges = this->_multipleRanges;
    if (multipleRanges)
    {
      multipleRanges = *multipleRanges;
    }
  }

  if (multipleRanges < a2)
  {
    if (a2 == 1)
    {
      *this = v3 | 2;
    }

    else
    {
      v5 = 2 * multipleRanges;
      if (v5 <= a2)
      {
        v5 = a2;
      }

      if (a2 >= 4)
      {
        v6 = v5;
      }

      else
      {
        v6 = 4;
      }

      if ((*this & 2) != 0)
      {
        begin = this->_singleRange._begin;
        if (*this)
        {
          v8 = 0;
          v9 = 0;
        }

        else if (begin > 0x7FFFFFFF)
        {
          v9 = 0;
          v8 = 1;
        }

        else
        {
          end = this->_singleRange._end;
          v8 = 1;
          if (end <= 0x7FFFFFFF)
          {
            v9 = end - begin + 1;
          }

          else
          {
            v9 = 0;
          }
        }

        v11 = this->_singleRange._end;
        *this = v3 & 0xFD;
        this = malloc_type_malloc(16 * v6 + 64, 0x1080040E45EEDC5uLL);
        v2->_multipleRanges = this;
        this[1]._multipleRanges = 0;
        *this = v6;
        this->_singleRange._begin = v8;
        this->_singleRange._end = v9;
        this->_multipleRanges = 0;
        if ((*v2 & 2) != 0)
        {
          p_singleRange = &v2->_singleRange;
        }

        else
        {
          p_singleRange = this + 2;
        }

        *p_singleRange = begin;
        p_singleRange->_singleRange._begin = v11;
      }

      else
      {
        this = malloc_type_realloc(this->_multipleRanges, 16 * v6 + 64, 0x1080040E45EEDC5uLL);
        v2->_multipleRanges = this;
        *this = v6;
      }
    }
  }

  return this;
}

TSUIndexSet *sub_277050840(uint64_t a1, int64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v6._begin = a2;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL || !a3)
  {
    v4 = 0x80000000;
    v6._begin = 0x80000000;
  }

  else
  {
    v4 = a3 + a2 - 1;
  }

  v6._end = v4;
  return TSUIndexSet::addIndexesInRange(v3, &v6);
}

TSUIndexSet *TSUIndexSet::addIndexesInRange(TSUIndexSet *this, const TSUIndexRange *a2)
{
  if (a2->_begin <= 0x7FFFFFFF && a2->_end <= 0x7FFFFFFF)
  {
    v20 = v2;
    v21 = v3;
    v19 = *a2;
    if (v19._begin <= 0x7FFFFFFF)
    {
      end = v19._end;
      if (v19._end <= 0x7FFFFFFF && v19._end - v19._begin != -1)
      {
        v7 = this;
        v8 = v19._end + 1;
        this = TSUIndexSet::indexOfRangeBeforeOrContainingIndex(this, v19._begin);
        v9 = *v7;
        if (this == 0x80000000)
        {
          v10 = 0;
        }

        else
        {
          v10 = this;
        }

        for (i = 16 * v10; ; i += 16)
        {
          v12 = (v9 & 1) == 0;
          if (((v9 | ((v9 & 2) >> 1)) & 1) == 0)
          {
            v12 = *(v7->_multipleRanges + 1);
          }

          if (v10 >= v12)
          {
            break;
          }

          p_singleRange = &v7->_singleRange;
          if ((v9 & 2) == 0)
          {
            p_singleRange = v7->_multipleRanges + 16 * *(v7->_multipleRanges + 3) + 64;
          }

          v18 = *(p_singleRange + i);
          if (v8 < v18)
          {
            return TSUIndexSet::insertRange(v7, &v19, v10);
          }

          v14 = *(&v18 + 1);
          v15 = *(&v18 + 1) + 1;
          if (v19._begin < v18)
          {
            if (v19._end <= *(&v18 + 1))
            {
              if (v15 == v19._begin)
              {
                v14 = 0x80000000;
                v19._begin = 0x80000000;
              }

              v19._end = v14;
            }

            v16 = &v19;
            goto LABEL_34;
          }

          if (v19._end <= *(&v18 + 1))
          {
            return this;
          }

          if (v19._begin <= v15)
          {
            if (v8 == v18)
            {
              end = 0x80000000;
              *&v18 = 0x80000000;
            }

            *(&v18 + 1) = end;
            v16 = &v18;
LABEL_34:
            TSUIndexSet::replaceRangeInArrayAtIndex(v7, v10, v16);
            LOBYTE(v9) = *v7;
            break;
          }

          ++v10;
        }

        if (v9)
        {
          if (!v10)
          {
            v17 = 0;
LABEL_43:
            TSUIndexSet::insertRange(v7, &v19, v17);
          }
        }

        else
        {
          if ((v9 & 2) == 0)
          {
            v17 = *(v7->_multipleRanges + 1);
            if (v17 != v10)
            {
              return TSUIndexSet::mergeOverlappingRangesStartingAtIndex(v7, v10);
            }

            goto LABEL_43;
          }

          if (v10 == 1)
          {
            v17 = 1;
            goto LABEL_43;
          }
        }

        return TSUIndexSet::mergeOverlappingRangesStartingAtIndex(v7, v10);
      }
    }
  }

  return this;
}

void TSUIndexSet::~TSUIndexSet(TSUIndexSet *this)
{
  free(this->_multipleRanges);
}

{
  free(this->_multipleRanges);
}

uint64_t TSUIndexSet::operator=(uint64_t a1, uint64_t a2)
{
  free(*(a1 + 24));
  *(a1 + 24) = 0;
  v4 = *a1 & 0xFE | *a2 & 1;
  *a1 = v4;
  *a1 = v4 & 0xFD | *a2 & 2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = 16 * *v5;
    v7 = malloc_type_malloc(v6 + 64, 0x1080040E45EEDC5uLL);
    *(a1 + 24) = v7;
    memcpy(v7, *(a2 + 24), v6 + 64);
  }

  return a1;
}

TSUIndexSet *TSUIndexSet::setContentToContentFromIndexSet(TSUIndexSet *this, const TSUIndexSet *a2)
{
  v2 = *this;
  v3 = *this | 3;
  *this = v3;
  if ((*a2 & 1) == 0)
  {
    v5 = this;
    if ((*a2 & 2) != 0)
    {
      this->_singleRange = a2->_singleRange;
      *this = v3 & 0xFE;
    }

    else
    {
      *this = v3 & 0xFE;
      if (*a2)
      {
        v6 = 0;
      }

      else if ((*a2 & 2) != 0)
      {
        v6 = 1;
      }

      else
      {
        v6 = *(a2->_multipleRanges + 1);
      }

      *this = v2 & 0xFC;
      v7 = malloc_type_malloc(16 * v6 + 64, 0x1080040E45EEDC5uLL);
      v5->_multipleRanges = v7;
      v7[7] = 0;
      *v7 = v6;
      v7[1] = v6;
      v7[2] = 0;
      v7[3] = 0;
      if ((*v5 & 2) != 0)
      {
        p_singleRange = &v5->_singleRange;
      }

      else
      {
        p_singleRange = (v7 + 8);
      }

      if ((*a2 & 2) != 0)
      {
        v9 = &a2->_singleRange;
      }

      else
      {
        v9 = (a2->_multipleRanges + 16 * *(a2->_multipleRanges + 3) + 64);
      }

      this = memcpy(p_singleRange, v9, 16 * v6);
      if (v6)
      {
        multipleRanges = v5->_multipleRanges;
        v11 = *(multipleRanges + 2);
        p_end = &p_singleRange->_end;
        do
        {
          v13 = *(p_end - 1);
          if (v13 > 0x7FFFFFFF)
          {
            v15 = 0;
          }

          else
          {
            v14 = *p_end - v13;
            if (*p_end <= 0x7FFFFFFF)
            {
              v15 = v14 + 1;
            }

            else
            {
              v15 = 0;
            }
          }

          v11 += v15;
          p_end += 2;
          --v6;
        }

        while (v6);
        *(multipleRanges + 2) = v11;
      }
    }
  }

  return this;
}

uint64_t TSUIndexSet::operator==(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  if (*a1)
  {
    v2 = 0;
  }

  else if ((*a1 & 2) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(*(a1 + 24) + 8);
  }

  if (*a2)
  {
    v3 = 0;
  }

  else if ((*a2 & 2) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*(a2 + 24) + 8);
  }

  if (v2 != v3)
  {
    return 0;
  }

  if ((*a1 & 1) == 0)
  {
    if ((*a1 & 2) == 0)
    {
      v4 = *(*(a1 + 24) + 16);
      if (*a2)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v5 = *(a1 + 8);
    if (v5 <= 0x7FFFFFFF)
    {
      v6 = *(a1 + 16);
      v7 = v6 - v5;
      if (v6 <= 0x7FFFFFFF)
      {
        v4 = v7 + 1;
      }

      else
      {
        v4 = 0;
      }

      if (*a2)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }
  }

  v4 = 0;
  if (*a2)
  {
LABEL_30:
    v8 = 0;
    goto LABEL_31;
  }

LABEL_24:
  if ((*a2 & 2) == 0)
  {
    v8 = *(*(a2 + 24) + 16);
    goto LABEL_31;
  }

  v9 = *(a2 + 8);
  if (v9 > 0x7FFFFFFF)
  {
    goto LABEL_30;
  }

  v10 = *(a2 + 16);
  v11 = v10 - v9;
  if (v10 <= 0x7FFFFFFF)
  {
    v8 = v11 + 1;
  }

  else
  {
    v8 = 0;
  }

LABEL_31:
  if (v4 == v8)
  {
    if ((*a1 & 2) != 0)
    {
      v12 = a1 + 8;
      if ((*a2 & 2) != 0)
      {
LABEL_34:
        v13 = a2 + 8;
        if (!v2)
        {
          return 1;
        }

LABEL_38:
        v14 = (v13 + 8);
        for (i = (v12 + 8); *(i - 1) == *(v14 - 1) && *i == *v14; i += 2)
        {
          v14 += 2;
          if (!--v2)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else
    {
      v12 = *(a1 + 24) + 16 * *(*(a1 + 24) + 24) + 64;
      if ((*a2 & 2) != 0)
      {
        goto LABEL_34;
      }
    }

    v13 = *(a2 + 24) + 16 * *(*(a2 + 24) + 24) + 64;
    if (!v2)
    {
      return 1;
    }

    goto LABEL_38;
  }

  return 0;
}

unint64_t TSUIndexSet::indexOfRangeContainingIndex(TSUIndexSet *this, int64_t a2)
{
  if (*this)
  {
    return 0x80000000;
  }

  if ((*this & 2) != 0)
  {
    v6 = 0;
    p_singleRange = &this->_singleRange;
    goto LABEL_13;
  }

  multipleRanges = this->_multipleRanges;
  v3 = *(multipleRanges + 1);
  if (!v3)
  {
    return 0x80000000;
  }

  p_singleRange = (multipleRanges + 16 * *(multipleRanges + 3) + 64);
  v5 = v3 - 1;
  if (v3 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      result = (v6 + v5) >> 1;
      v8 = &p_singleRange[result];
      if (v8->_begin <= a2)
      {
        if (v8->_end >= a2)
        {
          return result;
        }

        v6 = result + 1;
      }

      else
      {
        v5 = (v6 + v5) >> 1;
      }
    }

    while (v6 < v5);
  }

LABEL_13:
  v9 = &p_singleRange[v6];
  begin = v9->_begin;
  end = v9->_end;
  v12 = begin > a2 || end < a2;
  result = v6;
  if (v12)
  {
    return 0x80000000;
  }

  return result;
}

unint64_t TSUIndexSet::indexOfRangeBeforeOrContainingIndex(TSUIndexSet *this, int64_t a2)
{
  if (*this)
  {
    return 0x80000000;
  }

  if ((*this & 2) != 0)
  {
    v7 = 0;
    p_singleRange = &this->_singleRange;
  }

  else
  {
    multipleRanges = this->_multipleRanges;
    v4 = *(multipleRanges + 1);
    if (!v4)
    {
      return 0x80000000;
    }

    p_singleRange = (multipleRanges + 16 * *(multipleRanges + 3) + 64);
    v6 = v4 - 1;
    if (v4 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        result = (v7 + v6) >> 1;
        v8 = &p_singleRange[result];
        if (v8->_begin <= a2)
        {
          if (v8->_end >= a2)
          {
            return result;
          }

          v7 = result + 1;
        }

        else
        {
          v6 = (v7 + v6) >> 1;
        }
      }

      while (v7 < v6);
    }
  }

  if (p_singleRange[v7]._begin <= a2)
  {
    return v7;
  }

  if (v7)
  {
    return v7 - 1;
  }

  return 0x80000000;
}

unint64_t TSUIndexSet::indexOfRangeAfterOrContainingIndex(TSUIndexSet *this, int64_t a2)
{
  if (*this)
  {
    return 0x80000000;
  }

  if ((*this & 2) != 0)
  {
    v7 = 0;
    v6 = 0;
    p_singleRange = &this->_singleRange;
  }

  else
  {
    multipleRanges = this->_multipleRanges;
    v4 = *(multipleRanges + 1);
    if (!v4)
    {
      return 0x80000000;
    }

    p_singleRange = (multipleRanges + 16 * *(multipleRanges + 3) + 64);
    v6 = 0;
    v7 = v4 - 1;
    if (v7)
    {
      v8 = v7;
      do
      {
        result = (v6 + v8) >> 1;
        v9 = &p_singleRange[result];
        if (v9->_begin <= a2)
        {
          if (v9->_end >= a2)
          {
            return result;
          }

          v6 = result + 1;
        }

        else
        {
          v8 = (v6 + v8) >> 1;
        }
      }

      while (v6 < v8);
    }
  }

  if (p_singleRange[v6]._end >= a2)
  {
    return v6;
  }

  if (v6 < v7)
  {
    return v6 + 1;
  }

  return 0x80000000;
}

uint64_t TSUIndexSet::hash(TSUIndexSet *this)
{
  if (*this)
  {
    return 0;
  }

  if ((*this & 2) != 0)
  {
    p_singleRange = &this->_singleRange;
    begin = this->_singleRange._begin;
    if (begin <= 0x7FFFFFFF)
    {
      end = this->_singleRange._end;
      if (end < 0x80000000)
      {
        v7 = end - begin;
        v8 = __CFADD__(v7, 1);
        v3 = v7 + 1;
        if (!v8)
        {
          v9 = 1;
          goto LABEL_14;
        }
      }
    }

    return 0;
  }

  multipleRanges = this->_multipleRanges;
  v3 = *(multipleRanges + 2);
  if (!v3)
  {
    return 0;
  }

  if (*(multipleRanges + 1))
  {
    begin = *(multipleRanges + 2 * *(multipleRanges + 3) + 8);
  }

  else
  {
    begin = 0x80000000;
  }

  v10 = this->_multipleRanges;
  v9 = *(v10 + 1);
  if (!v9)
  {
    v11 = 0x80000000;
    return begin + v11 + v3;
  }

  p_singleRange = (v10 + 16 * *(v10 + 3) + 64);
LABEL_14:
  v11 = p_singleRange[v9 - 1]._end;
  return begin + v11 + v3;
}

uint64_t TSUIndexSet::firstIndex(TSUIndexSet *this)
{
  if (*this)
  {
    return 0x80000000;
  }

  if ((*this & 2) != 0)
  {
    p_singleRange = &this->_singleRange;
  }

  else
  {
    multipleRanges = this->_multipleRanges;
    if (!*(multipleRanges + 1))
    {
      return 0x80000000;
    }

    p_singleRange = (multipleRanges + 16 * *(multipleRanges + 3) + 64);
  }

  return p_singleRange->_begin;
}

uint64_t TSUIndexSet::lastIndex(TSUIndexSet *this)
{
  if (*this)
  {
    return 0x80000000;
  }

  if ((*this & 2) != 0)
  {
    p_singleRange = &this->_singleRange;
    v3 = 1;
  }

  else
  {
    multipleRanges = this->_multipleRanges;
    v3 = *(multipleRanges + 1);
    if (!v3)
    {
      return 0x80000000;
    }

    p_singleRange = (multipleRanges + 16 * *(multipleRanges + 3) + 64);
  }

  return p_singleRange[v3 - 1]._end;
}

uint64_t TSUIndexSet::count(TSUIndexSet *this)
{
  if (*this)
  {
    return 0;
  }

  if ((*this & 2) == 0)
  {
    return *(this->_multipleRanges + 2);
  }

  begin = this->_singleRange._begin;
  if (begin > 0x7FFFFFFF)
  {
    return 0;
  }

  end = this->_singleRange._end;
  v4 = end - begin;
  if (end <= 0x7FFFFFFF)
  {
    return v4 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t TSUIndexSet::nthIndex(TSUIndexSet *this, unint64_t a2)
{
  if (*this)
  {
    return 0x80000000;
  }

  if ((*this & 2) != 0)
  {
    v3 = 1;
    goto LABEL_7;
  }

  v3 = *(this->_multipleRanges + 1);
  if (v3)
  {
LABEL_7:
    v4 = 0;
    v2 = 0x80000000;
    while (1)
    {
      p_singleRange = &this->_singleRange;
      if ((*this & 2) == 0)
      {
        p_singleRange = (this->_multipleRanges + 16 * *(this->_multipleRanges + 3) + 64);
      }

      v6 = &p_singleRange[v4];
      begin = p_singleRange[v4]._begin;
      if (begin > 0x7FFFFFFF)
      {
        v10 = 0;
      }

      else
      {
        end = v6->_end;
        if (end <= 0x7FFFFFFF && end - begin + 1 > a2)
        {
          return begin + a2;
        }

        v10 = begin + ~end;
        if (end > 0x7FFFFFFF)
        {
          v10 = 0;
        }
      }

      a2 += v10;
      ++v4;
      if (!--v3)
      {
        return v2;
      }
    }
  }

  return 0x80000000;
}

uint64_t TSUIndexSet::indexClosestToIndex(TSUIndexSet *this, int64_t a2, int a3, int a4)
{
  if (*this)
  {
    return 0x80000000;
  }

  v7 = a3;
  v8 = a2;
  if ((*this & 2) != 0)
  {
    begin = this->_singleRange._begin;
    end = this->_singleRange._end;
    if (a4)
    {
      v4 = this->_singleRange._begin;
      if (a3)
      {
        if (begin >= a2)
        {
          return v4;
        }

        if (end >= a2)
        {
          return v8;
        }

        v10 = 0;
        goto LABEL_48;
      }

      if (begin > a2)
      {
        return v4;
      }

      if (end > a2)
      {
        return a2 + 1;
      }

      v10 = 0;
      goto LABEL_46;
    }

    v4 = this->_singleRange._end;
    if (a3)
    {
      if (end <= a2)
      {
        return v4;
      }

      v4 = a2;
      if (begin <= a2)
      {
        return v4;
      }

      goto LABEL_32;
    }

    if (end < a2)
    {
      return v4;
    }

    if (begin < a2)
    {
      return a2 - 1;
    }

    goto LABEL_30;
  }

  v10 = pthread_self();
  multipleRanges = this->_multipleRanges;
  if (*(multipleRanges + 7) == v10 && *(multipleRanges + 4) == v8)
  {
    if ((v7 & 1) == 0)
    {
      if ((*this & 2) != 0)
      {
        p_singleRange = &this->_singleRange;
      }

      else
      {
        p_singleRange = (multipleRanges + 16 * *(multipleRanges + 3) + 64);
      }

      if (a4)
      {
        v28 = *(multipleRanges + 5);
        v29 = *(multipleRanges + 6);
        v30 = &p_singleRange[v28];
        v32 = v30->_begin;
        v31 = v30->_end;
        v33 = v31 < 0x80000000 && v32 < 0x80000000;
        if (v33)
        {
          v34 = v31 - v32;
        }

        else
        {
          v34 = -1;
        }

        if (v34 > v29)
        {
          v4 = v8 + 1;
          *(multipleRanges + 4) = v8 + 1;
          *(multipleRanges + 6) = v29 + 1;
          return v4;
        }

        if ((*this & 1) == 0)
        {
          v37 = (*this & 2) != 0 ? 1 : *(multipleRanges + 1);
          v45 = v28 + 1;
          if (v45 < v37)
          {
            *(multipleRanges + 5) = v45;
            v4 = p_singleRange[v45]._begin;
            *(multipleRanges + 6) = 0;
            goto LABEL_43;
          }
        }
      }

      else
      {
        v35 = *(multipleRanges + 6);
        v33 = v35 < 1;
        v36 = v35 - 1;
        if (!v33)
        {
          v4 = v8 - 1;
          *(multipleRanges + 4) = v8 - 1;
          *(multipleRanges + 6) = v36;
          return v4;
        }

        v38 = *(multipleRanges + 5);
        if (v38)
        {
          v39 = v38 - 1;
          *(multipleRanges + 5) = v39;
          v40 = &p_singleRange[v39];
          v42 = v40->_begin;
          v41 = v40->_end;
          if (v41 < 0x80000000 && v42 < 0x80000000)
          {
            v44 = v41 - v42;
          }

          else
          {
            v44 = -1;
          }

          *(multipleRanges + 6) = v44;
          v4 = v44 + v42;
          goto LABEL_43;
        }
      }

      *(multipleRanges + 7) = 0;
      return 0x80000000;
    }

    return v8;
  }

  if (a4)
  {
    if (v7)
    {
LABEL_48:
      if ((*this & 2) != 0)
      {
        v23 = &this->_singleRange;
      }

      else
      {
        v23 = (this->_multipleRanges + 16 * *(this->_multipleRanges + 3) + 64);
      }

      v24 = TSUIndexSet::indexOfRangeAfterOrContainingIndex(this, v8);
      v4 = 0x80000000;
      if (v24 != 0x80000000)
      {
        v25 = v23[v24]._begin;
        if (v8 <= v25)
        {
          v4 = v23[v24]._begin;
        }

        else
        {
          v4 = v8;
        }

        v26 = this->_multipleRanges;
        if (*(v26 + 7) != v10)
        {
          v27 = 0;
          atomic_compare_exchange_strong(v26 + 7, &v27, v10);
          if (v27)
          {
            return v4;
          }

          v26 = this->_multipleRanges;
        }

        *(v26 + 5) = v24;
        *(v26 + 6) = v4 - v25;
        *(v26 + 4) = v4;
        return v4;
      }

      return v4;
    }

LABEL_46:
    if (v8 > 0x7FFFFFFF)
    {
      return 0x80000000;
    }

    ++v8;
    goto LABEL_48;
  }

  if ((v7 & 1) == 0)
  {
LABEL_30:
    if (!v8)
    {
      return 0x80000000;
    }

    --v8;
  }

LABEL_32:
  if ((*this & 2) != 0)
  {
    v15 = &this->_singleRange;
  }

  else
  {
    v15 = (this->_multipleRanges + 16 * *(this->_multipleRanges + 3) + 64);
  }

  v16 = TSUIndexSet::indexOfRangeBeforeOrContainingIndex(this, v8);
  v4 = 0x80000000;
  if (v16 != 0x80000000)
  {
    v17 = v16;
    v18 = &v15[v16];
    v20 = v18->_begin;
    v19 = v18->_end;
    if (v8 >= v19)
    {
      v4 = v19;
    }

    else
    {
      v4 = v8;
    }

    v21 = pthread_self();
    multipleRanges = this->_multipleRanges;
    if (*(multipleRanges + 7) != v21)
    {
      v22 = 0;
      atomic_compare_exchange_strong(multipleRanges + 7, &v22, v21);
      if (v22)
      {
        return v4;
      }

      multipleRanges = this->_multipleRanges;
    }

    *(multipleRanges + 5) = v17;
    *(multipleRanges + 6) = v4 - v20;
LABEL_43:
    *(multipleRanges + 4) = v4;
  }

  return v4;
}

uint64_t TSUIndexSet::countOfIndexesInRange(TSUIndexSet *this, const TSUIndexRange *a2)
{
  v2 = *this;
  if (*this)
  {
    return 0;
  }

  begin = a2->_begin;
  if (a2->_begin > 0x7FFFFFFF)
  {
    return 0;
  }

  end = a2->_end;
  v5 = end - begin;
  if (end > 0x7FFFFFFF || v5 == -1)
  {
    return 0;
  }

  v8 = TSUIndexSet::indexOfRangeAfterOrContainingIndex(this, a2->_begin);
  if (v8 == 0x80000000)
  {
    return 0;
  }

  v10 = v8;
  if ((v2 & 2) != 0)
  {
    p_singleRange = &this->_singleRange;
    v13 = 1;
  }

  else
  {
    multipleRanges = this->_multipleRanges;
    p_singleRange = (multipleRanges + 16 * *(multipleRanges + 3) + 64);
    v13 = *(multipleRanges + 1);
  }

  v14 = &p_singleRange[v8];
  if (v14->_begin >= begin)
  {
    result = 0;
  }

  else
  {
    v15 = v14->_end;
    if (v15 >= end)
    {
      return v5 + 1;
    }

    result = v15 - begin + 1;
    ++v10;
  }

  v16 = v13 > v10;
  v17 = v13 - v10;
  if (v16)
  {
    p_end = &p_singleRange[v10]._end;
    while (1)
    {
      v19 = *(p_end - 1);
      v20 = *p_end;
      if (*p_end > end)
      {
        break;
      }

      p_end += 2;
      v21 = v20 - v19;
      if (v19 < 0x80000000)
      {
        v22 = v21 + 1;
      }

      else
      {
        v22 = 0;
      }

      result += v22;
      if (!--v17)
      {
        return result;
      }
    }

    if (v19 <= end)
    {
      return end + result - v19 + 1;
    }
  }

  return result;
}

__int128 *TSUIndexSet::rangeAtIndex(TSUIndexSet *this, unint64_t a2)
{
  if (*this)
  {
    v3 = 0;
  }

  else if ((*this & 2) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(this->_multipleRanges + 1);
  }

  if (v3 >= a2)
  {
    if ((*this & 2) != 0)
    {
      p_singleRange = &this->_singleRange;
    }

    else
    {
      p_singleRange = (this->_multipleRanges + 16 * *(this->_multipleRanges + 3) + 64);
    }

    return &p_singleRange[a2];
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const TSUIndexRange &TSUIndexSet::rangeAtIndex(NSUInteger) const"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUIndexSet.mm"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:587 isFatal:0 description:"Index %ld out of range bounds [0...%ld]", a2, v3];

    +[TSUAssertionHandler logBacktraceThrottled];
    if ((atomic_load_explicit(qword_280A63AC0, memory_order_acquire) & 1) == 0)
    {
      sub_277112ED4();
    }

    if (qword_280A63AB0 != -1)
    {
      sub_277112F30();
    }

    return &xmmword_280A63AD0;
  }
}

float64x2_t sub_2770517F0()
{
  *&v0.f64[0] = 0x8000000080000000;
  *&v0.f64[1] = 0x8000000080000000;
  result = vnegq_f64(v0);
  xmmword_280A63AD0 = result;
  return result;
}

BOOL TSUIndexSet::containsIndex(TSUIndexSet *this, int64_t a2)
{
  if (*this)
  {
    return 0;
  }

  if ((*this & 2) != 0)
  {
    return this->_singleRange._begin <= a2 && this->_singleRange._end >= a2;
  }

  else
  {
    v5 = *(this->_multipleRanges + 7);
    if (v5 == pthread_self() && ((multipleRanges = this->_multipleRanges, *(multipleRanges + 4) == a2) || ((*this & 2) != 0 ? (p_singleRange = &this->_singleRange) : (p_singleRange = (multipleRanges + 16 * *(multipleRanges + 3) + 64)), (v8 = &p_singleRange[*(multipleRanges + 5)], begin = v8->_begin, end = v8->_end, begin <= a2) ? (v11 = end < a2) : (v11 = 1), !v11)))
    {
      return 1;
    }

    else
    {
      return TSUIndexSet::indexOfRangeContainingIndex(this, a2) != 0x80000000;
    }
  }
}

BOOL TSUIndexSet::containsIndexesInRange(TSUIndexSet *this, const TSUIndexRange *a2)
{
  begin = a2->_begin;
  if (begin > 0x7FFFFFFF)
  {
    return 0;
  }

  end = a2->_end;
  if (end > 0x7FFFFFFF || end - begin == -1)
  {
    return 0;
  }

  v7 = TSUIndexSet::indexOfRangeContainingIndex(this, begin);
  if (v7 == 0x80000000)
  {
    return 0;
  }

  if ((*this & 2) != 0)
  {
    p_singleRange = &this->_singleRange;
  }

  else
  {
    p_singleRange = (this->_multipleRanges + 16 * *(this->_multipleRanges + 3) + 64);
  }

  v10 = &p_singleRange[v7];
  v12 = v10->_begin;
  v11 = v10->_end;
  if (v11 < 0x80000000 && v12 < 0x80000000)
  {
    v14 = v11 - v12 + 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 + v12 >= (end + 1);
}

BOOL TSUIndexSet::containsIndexes(TSUIndexSet *this, TSUIndexSet *a2)
{
  if (a2 == this)
  {
    return 1;
  }

  if (*a2)
  {
    return 1;
  }

  if ((*a2 & 2) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a2->_multipleRanges + 1);
    if (!v5)
    {
      return 1;
    }
  }

  v6 = 0;
  v7 = v5 - 1;
  do
  {
    v8 = TSUIndexSet::rangeAtIndex(a2, v6);
    result = TSUIndexSet::containsIndexesInRange(this, v8);
    if (!result)
    {
      break;
    }
  }

  while (v7 != v6++);
  return result;
}

BOOL TSUIndexSet::intersectsIndexesInRange(TSUIndexSet *this, TSUIndexRange a2)
{
  result = 0;
  if (a2._begin <= 0x7FFFFFFF)
  {
    end = a2._end;
    if (a2._end <= 0x7FFFFFFF)
    {
      begin = a2._begin;
      if (a2._end - a2._begin != -1)
      {
        v5 = TSUIndexSet::indexOfRangeBeforeOrContainingIndex(this, a2._begin);
        if (v5 != 0x80000000)
        {
          v6 = (*this & 2) != 0 ? &this->_singleRange : (this->_multipleRanges + 16 * *(this->_multipleRanges + 3) + 64);
          if (v6[v5]._end >= begin)
          {
            return 1;
          }
        }

        v7 = TSUIndexSet::indexOfRangeAfterOrContainingIndex(this, begin);
        if (v7 != 0x80000000)
        {
          v8 = (*this & 2) != 0 ? &this->_singleRange : (this->_multipleRanges + 16 * *(this->_multipleRanges + 3) + 64);
          if (end >= v8[v7]._begin)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

id TSUIndexSet::description(TSUIndexSet *this)
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:128];
  v3 = v2;
  if (*this)
  {
    goto LABEL_2;
  }

  if ((*this & 2) != 0)
  {
    p_singleRange = &this->_singleRange;
    begin = this->_singleRange._begin;
    if (begin <= 0x7FFFFFFF)
    {
      end = this->_singleRange._end;
      if (end < 0x80000000)
      {
        v17 = end - begin;
        v14 = __CFADD__(v17, 1);
        v6 = v17 + 1;
        if (!v14)
        {
          v7 = 1;
          goto LABEL_9;
        }
      }
    }

LABEL_2:
    [v2 appendFormat:@"(no indexes)"];
    goto LABEL_3;
  }

  multipleRanges = this->_multipleRanges;
  v6 = *(multipleRanges + 2);
  if (!v6)
  {
    goto LABEL_2;
  }

  v7 = *(multipleRanges + 1);
  p_singleRange = (multipleRanges + 16 * *(multipleRanges + 3) + 64);
LABEL_9:
  objc_msgSend(v2, "appendFormat:", @"[number of indexes: %lu (in %lu ranges), indexes: ("), v6, v7;
  if (v7)
  {
    v9 = 0;
    p_end = &p_singleRange->_end;
    do
    {
      if (v9)
      {
        [v3 appendString:@" "];
      }

      v12 = *(p_end - 1);
      v11 = *p_end;
      [v3 appendFormat:@"%ld", v12];
      v14 = v12 <= 0x7FFFFFFF && v11 <= 0x7FFFFFFF && (v12 - v11) >= 2;
      if (v14)
      {
        [v3 appendFormat:@"->%ld", v11];
      }

      ++v9;
      p_end += 2;
    }

    while (v7 != v9);
  }

  [v3 appendString:@"]"]);
LABEL_3:

  return v3;
}

void TSUIndexSet::enumerateIndexesUsingBlock(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v4 = objc_autoreleasePoolPush();
  if (*a1)
  {
    v5 = 0;
    v6 = 0;
    if ((*a1 & 2) != 0)
    {
LABEL_9:
      v7 = a1 + 8;
      if (!v5)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if ((*a1 & 2) != 0)
    {
      v5 = 1;
      goto LABEL_9;
    }

    v6 = *(*(a1 + 24) + 8);
  }

  v7 = *(a1 + 24) + 16 * *(*(a1 + 24) + 24) + 64;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_10:
  v8 = 0;
  while (1)
  {
    v9 = (v7 + 16 * v8);
    v10 = *v9;
    if (*v9 <= 0x7FFFFFFF)
    {
      v11 = v9[1];
      v12 = v11 > 0x7FFFFFFF || v11 - v10 == -1;
      if (!v12 && v11 >= v10)
      {
        break;
      }
    }

LABEL_22:
    if (++v8 == v5)
    {
      goto LABEL_23;
    }
  }

  v14 = v11 + 1;
  while (1)
  {
    v3[2](v3, v10, &v16);
    if (v16)
    {
      break;
    }

    if (v14 == ++v10)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  objc_autoreleasePoolPop(v4);
  if ((*a1 & 2) == 0)
  {
    v15 = *(*(a1 + 24) + 56);
    if (v15 == pthread_self())
    {
      *(*(a1 + 24) + 56) = 0;
    }
  }
}

void TSUIndexSet::enumerateIndexesInRange(TSUIndexSet *a1, int64_t *a2, void *a3)
{
  v5 = a3;
  v23 = 0;
  v6 = TSUIndexSet::indexClosestToIndex(a1, *a2, 1, 1);
  v7 = TSUIndexSet::indexClosestToIndex(a1, a2[1], 0, 0);
  v8 = v7;
  if (v6 == 0x80000000 || v7 == 0x80000000)
  {
    goto LABEL_35;
  }

  if (*a2 > 0x7FFFFFFF)
  {
    goto LABEL_35;
  }

  v10 = a2[1];
  if (v10 > 0x7FFFFFFF || v10 - *a2 == -1)
  {
    goto LABEL_35;
  }

  context = objc_autoreleasePoolPush();
  if ((*a1 & 1) == 0)
  {
    if ((*a1 & 2) != 0)
    {
      v11 = 1;
      goto LABEL_16;
    }

    v12 = *(a1->_multipleRanges + 1);
LABEL_13:
    p_singleRange = a1->_multipleRanges + 16 * *(a1->_multipleRanges + 3) + 64;
    v11 = v12;
    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  v11 = 0;
  v12 = 0;
  if ((*a1 & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  p_singleRange = &a1->_singleRange;
  if (v11)
  {
LABEL_17:
    v14 = 0;
    while (1)
    {
      v15 = (p_singleRange + 16 * v14);
      v16 = *v15;
      if (*v15 <= 0x7FFFFFFF)
      {
        v17 = v15[1];
        v18 = v17 > 0x7FFFFFFF || v17 - v16 == -1;
        if (!v18 && v17 >= v16)
        {
          break;
        }
      }

LABEL_31:
      if (++v14 == v11)
      {
        goto LABEL_32;
      }
    }

    v20 = v17 + 1;
    while (1)
    {
      if (v16 >= v6 && v8 >= v16)
      {
        v5[2](v5, v16, &v23);
        if (v23)
        {
          break;
        }
      }

      if (v20 == ++v16)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  objc_autoreleasePoolPop(context);
  if ((*a1 & 2) == 0)
  {
    v21 = *(a1->_multipleRanges + 7);
    if (v21 == pthread_self())
    {
      *(a1->_multipleRanges + 7) = 0;
    }
  }

LABEL_35:
}

void TSUIndexSet::enumerateRangesUsingBlock(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (*a1)
  {
    v5 = 0;
    v6 = 0;
    if ((*a1 & 2) != 0)
    {
LABEL_9:
      v7 = a1 + 8;
      if (!v5)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if ((*a1 & 2) != 0)
    {
      v5 = 1;
      goto LABEL_9;
    }

    v6 = *(*(a1 + 24) + 8);
  }

  v7 = *(a1 + 24) + 16 * *(*(a1 + 24) + 24) + 64;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_10:
  v8 = 0;
  do
  {
    v9 = (v7 + 16 * v8);
    if (*v9 <= 0x7FFFFFFF)
    {
      v10 = v9[1];
      if (v10 <= 0x7FFFFFFF && v10 - *v9 != -1)
      {
        v3[2](v3);
      }
    }

    ++v8;
  }

  while (v8 < v5);
LABEL_18:
  objc_autoreleasePoolPop(v4);
}

void TSUIndexSet::enumerateRangesInRange(TSUIndexSet *a1, int64_t *a2, void *a3)
{
  v5 = a3;
  v23 = 0;
  if (*a2 > 0x7FFFFFFF)
  {
    goto LABEL_39;
  }

  v6 = a2[1];
  if (v6 > 0x7FFFFFFF || v6 - *a2 == -1)
  {
    goto LABEL_39;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = TSUIndexSet::indexOfRangeBeforeOrContainingIndex(a1, *a2);
  if (*a1)
  {
    v10 = 0;
    v11 = 0;
    if ((*a1 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if ((*a1 & 2) != 0)
    {
      v10 = 1;
LABEL_13:
      p_singleRange = &a1->_singleRange;
      goto LABEL_14;
    }

    v11 = *(a1->_multipleRanges + 1);
  }

  p_singleRange = a1->_multipleRanges + 16 * *(a1->_multipleRanges + 3) + 64;
  v10 = v11;
LABEL_14:
  if (v9 == 0x80000000)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  v14 = v10 - v13;
  if (v10 > v13)
  {
    v15 = (p_singleRange + 16 * v13);
    do
    {
      v22 = *v15;
      v16 = v22;
      v17 = a2[1];
      if (v22 > v17)
      {
        break;
      }

      if (v22 <= 0x7FFFFFFF)
      {
        v18 = *(&v22 + 1);
        if (*(&v22 + 1) <= 0x7FFFFFFF && *(&v22 + 1) - v22 != -1)
        {
          if (v22 <= *a2)
          {
            v16 = *a2;
          }

          if (v17 < *(&v22 + 1))
          {
            v18 = a2[1];
          }

          v20 = v17 < 0x80000000 && v16 <= v18;
          if (!v20)
          {
            v16 = 0x80000000;
            v18 = 0x80000000;
          }

          *&v22 = v16;
          *(&v22 + 1) = v18;
          if (v20 && v16 <= 0x7FFFFFFF)
          {
            v5[2](v5, &v22, &v23);
            if (v23)
            {
              break;
            }
          }
        }
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  objc_autoreleasePoolPop(v8);
LABEL_39:
}

void *TSUIndexSet::insertRange(TSUIndexSet *this, const TSUIndexRange *a2, unint64_t a3)
{
  if (*this)
  {
    v6 = 0;
  }

  else if ((*this & 2) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(this->_multipleRanges + 1);
  }

  if (v6 >= a3)
  {
    result = TSUIndexSet::ensureRangeCapacity(this, v6 + 1);
    if ((*this & 2) != 0)
    {
      *(&this->_singleRange + a3) = *a2;
    }

    else
    {
      multipleRanges = this->_multipleRanges;
      v12 = *multipleRanges;
      v11 = *(multipleRanges + 1);
      v13 = *(multipleRanges + 3);
      v14 = v13 + v11;
      if (v11 - a3 > a3 && v13 != 0 || v12 == v14)
      {
        if (v11 == a3)
        {
          if (v13 >> 1 <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = v13 >> 1;
          }

          result = memmove(multipleRanges + 16 * v13 + -16 * v17 + 64, multipleRanges + 16 * v13 + 64, 16 * a3);
          multipleRanges = this->_multipleRanges;
          v18 = *(multipleRanges + 3) - v17;
        }

        else
        {
          if (a3)
          {
            result = memmove(multipleRanges + 16 * v13 + 48, multipleRanges + 16 * v13 + 64, 16 * a3);
            multipleRanges = this->_multipleRanges;
            v13 = *(multipleRanges + 3);
          }

          v18 = v13 - 1;
        }

        *(multipleRanges + 3) = v18;
      }

      else if (a3)
      {
        if (v11 != a3)
        {
          result = memmove(multipleRanges + 16 * v13 + 16 * a3 + 80, multipleRanges + 16 * v13 + 16 * a3 + 64, 16 * (v11 - a3));
        }
      }

      else
      {
        if ((v12 - v14) >> 1 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = (v12 - v14) >> 1;
        }

        result = memmove(multipleRanges + 16 * v13 + 16 * v19 + 64, multipleRanges + 16 * v13 + 64, 16 * v11);
        *(this->_multipleRanges + 3) = v19 - 1;
      }

      if ((*this & 2) != 0)
      {
        p_singleRange = &this->_singleRange;
      }

      else
      {
        p_singleRange = (this->_multipleRanges + 16 * *(this->_multipleRanges + 3) + 64);
      }

      v21 = 0;
      p_singleRange[a3] = *a2;
      v22 = this->_multipleRanges;
      *(v22 + 7) = 0;
      ++*(v22 + 1);
      if (a2->_begin <= 0x7FFFFFFF)
      {
        end = a2->_end;
        if (end <= 0x7FFFFFFF)
        {
          v21 = end - a2->_begin + 1;
        }

        else
        {
          v21 = 0;
        }
      }

      *(v22 + 2) += v21;
    }

    *this &= ~1u;
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSUIndexSet::insertRange(const TSUIndexRange &, NSUInteger)"}];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUIndexSet.mm"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:887 isFatal:0 description:"Index %ld out of range bounds [0...%ld]", a3, v6];

    return +[TSUAssertionHandler logBacktraceThrottled];
  }

  return result;
}

TSUIndexSet *TSUIndexSet::removeRangeInArrayAtIndex(TSUIndexSet *this, unint64_t a2)
{
  v3 = this;
  if (*this)
  {
    v4 = 0;
  }

  else if ((*this & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(this->_multipleRanges + 1);
  }

  if (v4 >= a2)
  {
    if ((*this & 2) != 0)
    {
      v13 = *this | 1;
    }

    else
    {
      multipleRanges = this->_multipleRanges;
      v8 = *(multipleRanges + 3);
      v9 = multipleRanges + 16 * v8 + 64;
      this = &v9[16 * a2];
      v10 = *this;
      begin = this->_singleRange._begin;
      v12 = *(multipleRanges + 1) + ~a2;
      if (v12 <= a2)
      {
        if (v12)
        {
          this = memmove(this, &this->_singleRange._end, 16 * v12);
          multipleRanges = v3->_multipleRanges;
        }
      }

      else
      {
        if (a2)
        {
          this = memmove(multipleRanges + 16 * v8 + 80, v9, 16 * a2);
          multipleRanges = v3->_multipleRanges;
          v8 = *(multipleRanges + 3);
        }

        *(multipleRanges + 3) = v8 + 1;
      }

      *(multipleRanges + 7) = 0;
      v14 = begin < 0x80000000 && v10 < 0x80000000;
      v15 = v10 + ~begin;
      if (!v14)
      {
        v15 = 0;
      }

      v16.i64[0] = -1;
      v16.i64[1] = v15;
      v17 = vaddq_s64(*(multipleRanges + 8), v16);
      *(multipleRanges + 8) = v17;
      v13 = *v3 & 0xFE;
      if (!v17.i64[0])
      {
        ++v13;
      }
    }

    *v3 = v13;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSUIndexSet::removeRangeInArrayAtIndex(NSUInteger)"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUIndexSet.mm"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:928 isFatal:0 description:"Index %ld out of range bounds [0...%ld]", a2, v4];

    return +[TSUAssertionHandler logBacktraceThrottled];
  }

  return this;
}

TSUIndexSet *TSUIndexSet::replaceRangeInArrayAtIndex(TSUIndexSet *this, unint64_t a2, const TSUIndexRange *a3)
{
  if (*this)
  {
    v4 = 0;
  }

  else if ((*this & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(this->_multipleRanges + 1);
  }

  if (a3->_begin > 0x7FFFFFFF || ((v5 = a3->_end, v5 <= 0x7FFFFFFF) ? (v6 = v5 - a3->_begin == -1) : (v6 = 1), v6))
  {

    return TSUIndexSet::removeRangeInArrayAtIndex(this, a2);
  }

  else if (v4 >= a2)
  {
    if ((*this & 2) != 0)
    {
      p_singleRange = &this->_singleRange;
    }

    else
    {
      p_singleRange = (this->_multipleRanges + 16 * *(this->_multipleRanges + 3) + 64);
    }

    v10 = &p_singleRange[a2];
    begin = v10->_begin;
    end = v10->_end;
    *v10 = *a3;
    if ((*this & 2) == 0)
    {
      v13 = 0;
      multipleRanges = this->_multipleRanges;
      *(multipleRanges + 7) = 0;
      v15 = end < 0x80000000 && begin < 0x80000000;
      v16 = begin + ~end;
      if (!v15)
      {
        v16 = 0;
      }

      v17 = *(multipleRanges + 2) + v16;
      *(multipleRanges + 2) = v17;
      if (a3->_begin <= 0x7FFFFFFF)
      {
        v18 = a3->_end;
        if (v18 <= 0x7FFFFFFF)
        {
          v13 = v18 - a3->_begin + 1;
        }

        else
        {
          v13 = 0;
        }
      }

      *(multipleRanges + 2) = v13 + v17;
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSUIndexSet::replaceRangeInArrayAtIndex(NSUInteger, const TSUIndexRange &)"}];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUIndexSet.mm"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:946 isFatal:0 description:"Index %ld out of range bounds [0...%ld]", a2, v4];

    return +[TSUAssertionHandler logBacktraceThrottled];
  }

  return this;
}

TSUIndexSet *TSUIndexSet::addIndexes(TSUIndexSet *this, TSUIndexSet *a2)
{
  if (a2 == this)
  {
    return this;
  }

  v3 = this;
  v4 = *this;
  if (*this)
  {
    if ((*this & 2) != 0)
    {
      free(this->_multipleRanges);
      v3->_multipleRanges = 0;
      v4 = *v3;
    }

    goto LABEL_11;
  }

  if ((*this & 2) == 0 && !*(this->_multipleRanges + 1))
  {
LABEL_11:
    *v3 = v4 | 3;

    return TSUIndexSet::setContentToContentFromIndexSet(v3, a2);
  }

  if (*a2)
  {
    return this;
  }

  if ((*a2 & 2) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a2->_multipleRanges + 1);
    if (!v5)
    {
      return this;
    }
  }

  for (i = 0; i != v5; ++i)
  {
    v7 = TSUIndexSet::rangeAtIndex(a2, i);
    this = TSUIndexSet::addIndexesInRange(v3, v7);
  }

  return this;
}

void TSUIndexSet::removeAllIndexes(TSUIndexSet *this)
{
  v2 = *this;
  if ((*this & 2) != 0)
  {
    free(this->_multipleRanges);
    this->_multipleRanges = 0;
    v2 = *this;
  }

  *this = v2 | 3;
}

void TSUIndexSet::removeIndexes(TSUIndexSet *this, TSUIndexSet *a2)
{
  v2 = *this;
  if ((*this & 1) == 0)
  {
    if ((*this & 2) != 0)
    {
      if (a2 == this)
      {
        free(this->_multipleRanges);
        this->_multipleRanges = 0;
        v2 = *this;
LABEL_12:
        *this = v2 | 3;
        return;
      }
    }

    else
    {
      if (!*(this->_multipleRanges + 1))
      {
        return;
      }

      if (a2 == this)
      {
        goto LABEL_12;
      }
    }

    if (*a2)
    {
      return;
    }

    if ((*a2 & 2) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(a2->_multipleRanges + 1);
      if (!v5)
      {
        return;
      }
    }

    for (i = 0; i != v5; ++i)
    {
      v7 = TSUIndexSet::rangeAtIndex(a2, i);
      TSUIndexSet::removeIndexesInRange(this, v7);
    }
  }
}

TSUIndexSet *TSUIndexSet::removeIndexesInRange(TSUIndexSet *this, const TSUIndexRange *a2)
{
  begin = a2->_begin;
  if (begin <= 0x7FFFFFFF)
  {
    end = a2->_end;
    v5 = end > 0x7FFFFFFF || end - begin == -1;
    if (!v5)
    {
      v6 = this;
      this = TSUIndexSet::indexOfRangeAfterOrContainingIndex(this, begin);
      if (this != 0x80000000)
      {
        v7 = this;
        while (1)
        {
          if (*v6)
          {
            v8 = 0;
          }

          else
          {
            v8 = (*v6 & 2) != 0 ? 1 : *(v6->_multipleRanges + 1);
          }

          if (v7 >= v8)
          {
            break;
          }

          p_singleRange = &v6->_singleRange;
          if ((*v6 & 2) == 0)
          {
            p_singleRange = v6->_multipleRanges + 16 * *(v6->_multipleRanges + 3) + 64;
          }

          v16 = *(p_singleRange + 16 * v7);
          v10 = v16._begin;
          if (end + 1 < v16._begin)
          {
            break;
          }

          v11 = a2->_begin;
          if (a2->_begin > v16._begin)
          {
            if (end < v16._end)
            {
              v12 = v11 - 1;
              v5 = v11 == v16._begin;
              v13 = 0x80000000;
              if (v5)
              {
                v10 = 0x80000000;
              }

              else
              {
                v13 = v12;
              }

              v15._begin = v10;
              v15._end = v13;
              v14._begin = end + 1;
              v14._end = v16._end;
              TSUIndexSet::replaceRangeInArrayAtIndex(v6, v7, &v14);
              return TSUIndexSet::insertRange(v6, &v15, v7);
            }

            if (v11 <= v16._end)
            {
              v16._end = v11 - 1;
              this = TSUIndexSet::replaceRangeInArrayAtIndex(v6, v7, &v16);
            }

            ++v7;
          }

          else
          {
            if (end < v16._end)
            {
              v16._begin = end + 1;
              return TSUIndexSet::replaceRangeInArrayAtIndex(v6, v7, &v16);
            }

            this = TSUIndexSet::removeRangeInArrayAtIndex(v6, v7);
          }
        }
      }
    }
  }

  return this;
}

TSUIndexSet *TSUIndexSet::addIndex(TSUIndexSet *this, int64_t a2)
{
  v3._begin = a2;
  v3._end = a2;
  return TSUIndexSet::addIndexesInRange(this, &v3);
}

TSUIndexSet *TSUIndexSet::removeIndex(TSUIndexSet *this, int64_t a2)
{
  v3._begin = a2;
  v3._end = a2;
  return TSUIndexSet::removeIndexesInRange(this, &v3);
}

TSUIndexSet *TSUIndexSet::mergeOverlappingRangesStartingAtIndex(TSUIndexSet *this, unint64_t a2)
{
  v2 = *this;
  if ((*this & 1) == 0)
  {
    v4 = this;
    do
    {
      if ((v2 & 2) != 0)
      {
        break;
      }

      v5 = *(v4->_multipleRanges + 1);
      v7 = v5 != 0;
      v6 = v5 - 1;
      v7 = !v7 || a2 >= v6;
      if (v7)
      {
        break;
      }

      v8 = v4->_multipleRanges + 16 * *(v4->_multipleRanges + 3) + 64;
      v13 = *(v8 + 16 * a2);
      v9 = a2 + 1;
      v10 = (v8 + 16 * (a2 + 1));
      if (v13._end + 1 < *v10)
      {
        break;
      }

      v11 = v10[1];
      if (v13._end < v11)
      {
        if (v11 + 1 == v13._begin)
        {
          begin = 0x80000000;
        }

        else
        {
          begin = v13._begin;
        }

        if (v11 + 1 == v13._begin)
        {
          v11 = 0x80000000;
        }

        v13._begin = begin;
        v13._end = v11;
        TSUIndexSet::replaceRangeInArrayAtIndex(v4, a2++, &v13);
      }

      this = TSUIndexSet::removeRangeInArrayAtIndex(v4, v9);
      v2 = *v4;
    }

    while ((*v4 & 1) == 0);
  }

  return this;
}

TSUIndexSet *TSUIndexSet::shiftAllIndexesBy(TSUIndexSet *this, int64_t a2)
{
  v2 = this;
  if (a2 < 1)
  {
    if (a2 < 0)
    {
      v4 = 0;
      v9 = vdupq_n_s64(a2);
      while (1)
      {
        if (*v2)
        {
          v5 = 0;
        }

        else
        {
          v5 = (*v2 & 2) != 0 ? 1 : *(v2->_multipleRanges + 1);
        }

        if (v4 >= v5)
        {
          break;
        }

        p_singleRange = &v2->_singleRange;
        if ((*v2 & 2) == 0)
        {
          p_singleRange = v2->_multipleRanges + 16 * *(v2->_multipleRanges + 3) + 64;
        }

        v11 = vaddq_s64(*(p_singleRange + 16 * v4), v9);
        this = TSUIndexSet::replaceRangeInArrayAtIndex(v2, v4++, &v11);
      }
    }
  }

  else
  {
    if (*this)
    {
      return this;
    }

    if ((*this & 2) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(this->_multipleRanges + 1) - 1;
      if (v3 < 0)
      {
        return this;
      }
    }

    v10 = vdupq_n_s64(a2);
    do
    {
      v7 = &v2->_singleRange;
      if ((*v2 & 2) == 0)
      {
        v7 = v2->_multipleRanges + 16 * *(v2->_multipleRanges + 3) + 64;
      }

      v11 = vaddq_s64(*(v7 + 16 * v3), v10);
      this = TSUIndexSet::replaceRangeInArrayAtIndex(v2, v3, &v11);
    }

    while (v3-- > 0);
  }

  return this;
}

TSUIndexSet *TSUIndexSet::shiftIndexesAtAndAfterIndexBy(TSUIndexSet *this, int64_t a2, int64_t a3)
{
  v5 = this;
  if (a3 < 1)
  {
    if (a3 < 0)
    {
      v23._begin = a3 + a2;
      v23._end = a2 - 1;
      TSUIndexSet::removeIndexesInRange(this, &v23);
      v7 = TSUIndexSet::indexOfRangeAfterOrContainingIndex(v5, a2);
      v8 = 16 * v7;
      for (i = v7; ; ++i)
      {
        if (*v5)
        {
          v10 = 0;
        }

        else
        {
          v10 = (*v5 & 2) != 0 ? 1 : *(v5->_multipleRanges + 1);
        }

        if (i >= v10)
        {
          break;
        }

        p_singleRange = &v5->_singleRange;
        if ((*v5 & 2) == 0)
        {
          p_singleRange = v5->_multipleRanges + 16 * *(v5->_multipleRanges + 3) + 64;
        }

        v12 = *(p_singleRange + v8);
        if (v12 >= a2)
        {
          v13 = *(p_singleRange + v8 + 8) + a3;
          v23._begin = v12 + a3;
          v23._end = v13;
          TSUIndexSet::replaceRangeInArrayAtIndex(v5, i, &v23);
        }

        v8 += 16;
      }

      if (v7)
      {
        v17 = v7 - 1;
      }

      else
      {
        v17 = 0;
      }

      return TSUIndexSet::mergeOverlappingRangesStartingAtIndex(v5, v17);
    }
  }

  else
  {
    if (*this)
    {
      return this;
    }

    if ((*this & 2) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(this->_multipleRanges + 1) - 1;
      if (v6 < 0)
      {
        return this;
      }
    }

    v20 = vdupq_n_s64(a3);
    while (1)
    {
      v14 = &v5->_singleRange;
      if ((*v5 & 2) == 0)
      {
        v14 = v5->_multipleRanges + 16 * *(v5->_multipleRanges + 3) + 64;
      }

      v15 = *(v14 + 16 * v6);
      v16 = *(v14 + 16 * v6);
      if (v16 < a2)
      {
        break;
      }

      v23 = vaddq_s64(v15, v20);
      this = TSUIndexSet::replaceRangeInArrayAtIndex(v5, v6, &v23);
      v19 = v6-- <= 0;
      if (v19)
      {
        return this;
      }
    }

    v18 = *(v14 + 16 * v6 + 8);
    if (v15._end >= a2)
    {
      v23 = v15;
      v19 = v16 <= 0x7FFFFFFF && v15._end <= 0x7FFFFFFF;
      if (v19)
      {
        TSUIndexSet::removeIndexesInRange(v5, &v23);
        v22._begin = v16;
        v22._end = a2 - 1;
        v21._begin = a3 + a2;
        v21._end = v18 + a3;
        if (a2 <= 0x80000000)
        {
          TSUIndexSet::addIndexesInRange(v5, &v22);
        }

        return TSUIndexSet::addIndexesInRange(v5, &v21);
      }
    }
  }

  return this;
}

id TSUIndexSet::asNSIndexSet(TSUIndexSet *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_277053244;
  v9 = sub_277053254;
  v10 = objc_opt_new();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_27705325C;
  v4[3] = &unk_27A701C88;
  v4[4] = &v5;
  TSUIndexSet::enumerateRangesUsingBlock(this, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_277053224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_277053244(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27705325C(uint64_t a1, void *a2, _BYTE *a3)
{
  if ((*a2 & 0x8000000000000000) != 0)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSMutableIndexSet *TSUIndexSet::asNSIndexSet() const_block_invoke"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUIndexSet.mm"];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"TSUIndexRange:{%d, %d}", *a2, a2[1]];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1195 isFatal:0 description:"Can't convert negative indexes to NSRange for NSIndexSet: %@", v8];

    +[TSUAssertionHandler logBacktraceThrottled];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    *a3 = 1;
  }

  else
  {
    v11 = *(*(*(a1 + 32) + 8) + 40);

    MEMORY[0x2821F9670](v11, sel_addIndexesInRange_);
  }
}

void TSUIndexSet::intersectWithIndexes(TSUIndexSet *this, TSUIndexSet *a2)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x5012000000;
  v31 = sub_2770536D0;
  v32 = sub_2770536F4;
  v33 = &unk_27715A77D;
  v34 = -1;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  v35 = vnegq_f64(v3);
  v36 = 0;
  if (*this)
  {
    goto LABEL_2;
  }

  if ((*this & 2) != 0)
  {
    begin = this->_singleRange._begin;
    if (begin > 0x7FFFFFFF)
    {
LABEL_2:
      v4 = 0;
      goto LABEL_9;
    }

    end = this->_singleRange._end;
    v7 = end - begin;
    if (end <= 0x7FFFFFFF)
    {
      v4 = v7 + 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = *(this->_multipleRanges + 2);
  }

LABEL_9:
  if ((*a2 & 1) == 0)
  {
    if ((*a2 & 2) != 0)
    {
      p_singleRange = &a2->_singleRange;
      v12 = a2->_singleRange._begin;
      if (v12 > 0x7FFFFFFF)
      {
        v15 = 0;
      }

      else
      {
        v13 = a2->_singleRange._end;
        v14 = v13 - v12;
        if (v13 <= 0x7FFFFFFF)
        {
          v15 = v14 + 1;
        }

        else
        {
          v15 = 0;
        }
      }

      if (v4 > v15)
      {
        goto LABEL_23;
      }

      v8 = p_singleRange->_begin;
      v21 = 1;
    }

    else
    {
      if (v4 > *(a2->_multipleRanges + 2))
      {
        goto LABEL_23;
      }

      multipleRanges = a2->_multipleRanges;
      if (*(multipleRanges + 1))
      {
        v8 = *(multipleRanges + 2 * *(multipleRanges + 3) + 8);
      }

      else
      {
        v8 = 0x80000000;
      }

      v23 = a2->_multipleRanges;
      v21 = *(v23 + 1);
      if (!v21)
      {
        goto LABEL_12;
      }

      p_singleRange = (v23 + 16 * *(v23 + 3) + 64);
    }

    v9 = p_singleRange[v21 - 1]._end;
    goto LABEL_40;
  }

  if (!v4)
  {
    v8 = 0x80000000;
LABEL_12:
    v9 = 0x80000000;
LABEL_40:
    v26 = v8;
    v27 = v9;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2770536FC;
    v25[3] = &unk_27A701CD8;
    v25[4] = &v28;
    v25[5] = a2;
    TSUIndexSet::enumerateRangesInRange(this, &v26, v25);
    goto LABEL_41;
  }

LABEL_23:
  if ((*this & 1) == 0)
  {
    if ((*this & 2) != 0)
    {
      v19 = &this->_singleRange;
      v16 = this->_singleRange._begin;
      v20 = 1;
    }

    else
    {
      v18 = this->_multipleRanges;
      if (*(v18 + 1))
      {
        v16 = *(v18 + 2 * *(v18 + 3) + 8);
      }

      else
      {
        v16 = 0x80000000;
      }

      v22 = this->_multipleRanges;
      v20 = *(v22 + 1);
      if (!v20)
      {
        goto LABEL_25;
      }

      v19 = (v22 + 16 * *(v22 + 3) + 64);
    }

    v17 = v19[v20 - 1]._end;
    goto LABEL_35;
  }

  v16 = 0x80000000;
LABEL_25:
  v17 = 0x80000000;
LABEL_35:
  v26 = v16;
  v27 = v17;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_277053780;
  v24[3] = &unk_27A701CD8;
  v24[4] = &v28;
  v24[5] = this;
  TSUIndexSet::enumerateRangesInRange(a2, &v26, v24);
LABEL_41:
  TSUIndexSet::operator=(this, (v29 + 6));
  _Block_object_dispose(&v28, 8);
  free(v36);
}

void sub_2770536A8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  free(*(v1 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_2770536D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v2 = a1 + 48;
  *v2 = v3 | 3;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  *(v2 + 8) = vnegq_f64(v4);
  *(v2 + 24) = 0;
  return TSUIndexSet::operator=(v2, a2 + 48);
}

void sub_2770536FC(uint64_t a1, int64_t *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_277053770;
  v3[3] = &unk_27A701CB0;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  TSUIndexSet::enumerateRangesInRange(v2, a2, v3);
}

void sub_277053780(uint64_t a1, int64_t *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2770537F4;
  v3[3] = &unk_27A701CB0;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  TSUIndexSet::enumerateRangesInRange(v2, a2, v3);
}

uint64_t TSUIndexSet::intersectsIndexes(TSUIndexSet *this, TSUIndexSet *a2)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if ((*this & 1) == 0 && ((*this & 2) != 0 || *(this->_multipleRanges + 1)) && (*a2 & 1) == 0 && ((*a2 & 2) != 0 || *(a2->_multipleRanges + 1)))
  {
    if ((*this & 2) != 0)
    {
      begin = this->_singleRange._begin;
      if (begin > 0x7FFFFFFF)
      {
        v2 = 0;
        if ((*a2 & 2) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        end = this->_singleRange._end;
        v5 = end - begin;
        if (end <= 0x7FFFFFFF)
        {
          v2 = v5 + 1;
        }

        else
        {
          v2 = 0;
        }

        if ((*a2 & 2) == 0)
        {
LABEL_20:
          if (v2 <= *(a2->_multipleRanges + 2))
          {
            multipleRanges = a2->_multipleRanges;
            if (*(multipleRanges + 1))
            {
              v12 = *(multipleRanges + 2 * *(multipleRanges + 3) + 8);
            }

            else
            {
              v12 = 0x80000000;
            }

            v18 = a2->_multipleRanges;
            v15 = *(v18 + 1);
            if (!v15)
            {
              v19 = 0x80000000;
              goto LABEL_34;
            }

            p_singleRange = (v18 + 16 * *(v18 + 3) + 64);
LABEL_33:
            v19 = p_singleRange[v15 - 1]._end;
LABEL_34:
            v26 = v12;
            v27 = v19;
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = sub_277053AA4;
            v25[3] = &unk_27A701D00;
            v25[4] = &v28;
            v25[5] = a2;
            TSUIndexSet::enumerateRangesInRange(this, &v26, v25);
            goto LABEL_40;
          }

          goto LABEL_25;
        }
      }
    }

    else
    {
      v2 = *(this->_multipleRanges + 2);
      if ((*a2 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    p_singleRange = &a2->_singleRange;
    v7 = a2->_singleRange._begin;
    if (v7 > 0x7FFFFFFF)
    {
      v10 = 0;
    }

    else
    {
      v8 = a2->_singleRange._end;
      v9 = v8 - v7;
      if (v8 <= 0x7FFFFFFF)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = 0;
      }
    }

    if (v2 <= v10)
    {
      v12 = p_singleRange->_begin;
      v15 = 1;
      goto LABEL_33;
    }

LABEL_25:
    if ((*this & 2) != 0)
    {
      v16 = &this->_singleRange;
      v14 = this->_singleRange._begin;
      v17 = 1;
    }

    else
    {
      v13 = this->_multipleRanges;
      if (*(v13 + 1))
      {
        v14 = *(v13 + 2 * *(v13 + 3) + 8);
      }

      else
      {
        v14 = 0x80000000;
      }

      v20 = this->_multipleRanges;
      v17 = *(v20 + 1);
      if (!v17)
      {
        v21 = 0x80000000;
        goto LABEL_39;
      }

      v16 = (v20 + 16 * *(v20 + 3) + 64);
    }

    v21 = v16[v17 - 1]._end;
LABEL_39:
    v26 = v14;
    v27 = v21;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_277053AE8;
    v24[3] = &unk_27A701D00;
    v24[4] = &v28;
    v24[5] = this;
    TSUIndexSet::enumerateRangesInRange(a2, &v26, v24);
  }

LABEL_40:
  v22 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  return v22;
}

BOOL sub_277053AA4(uint64_t a1, const TSUIndexRange *a2, _BYTE *a3)
{
  result = TSUIndexSet::containsIndexesInRange(*(a1 + 40), a2);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

BOOL sub_277053AE8(uint64_t a1, const TSUIndexRange *a2, _BYTE *a3)
{
  result = TSUIndexSet::containsIndexesInRange(*(a1 + 40), a2);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

TSUIndexSet *TSUIndexSet::indexSetFromArray@<X0>(TSUIndexSet *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 |= 3u;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  *(a3 + 8) = vnegq_f64(v4);
  *(a3 + 24) = 0;
  if (a2 >= 1)
  {
    v5 = a2;
    v6 = this;
    do
    {
      v7 = *v6;
      v6 = (v6 + 8);
      v8._begin = v7;
      v8._end = v7;
      this = TSUIndexSet::addIndexesInRange(a3, &v8);
      --v5;
    }

    while (v5);
  }

  return this;
}

void TSUIndexSet::combinationsOfIndexesChoosing(TSUIndexSet *this@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (this <= 10)
  {
    v5 = this - a2;
    if (this >= a2)
    {
      v6 = 0;
      v7 = xmmword_277133A30;
      v8 = vdupq_n_s64(a2);
      v9 = vdupq_n_s64(2uLL);
      do
      {
        *(&v24 + v6) = vandq_s8(v7, vcgtq_s64(v8, v7));
        v7 = vaddq_s64(v7, v9);
        v6 += 16;
      }

      while (v6 != 80);
      TSUIndexSet::indexSetFromArray(&v24, a2, v22);
      sub_277053DD4(a3, v22);
      free(v23);
      v21 = vdupq_n_s64(1uLL);
      while (1)
      {
        v10 = (a2 - 1);
        while (1)
        {
          v11 = *(&v24 + v10);
          if (v11 < v5 + v10)
          {
            break;
          }

          v12 = v10 <= 0;
          v10 -= v10 > 0;
          if (v12)
          {
            return;
          }
        }

        v13 = v11 + 1;
        *(&v24 + v10) = v11 + 1;
        if (v10 + 1 < a2)
        {
          v14 = &a2[-v10] & 0xFFFFFFFFFFFFFFFELL;
          v15 = vaddq_s64(vdupq_n_s64(v13), xmmword_277133A30);
          v16 = vdupq_n_s64(&a2[~v10 - 1]);
          v17 = &v24._singleRange._end + v10;
          v18 = 2;
          do
          {
            v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v18 - 2), xmmword_277133A30)));
            v20 = vaddq_s64(v15, v21);
            if (v19.i8[0])
            {
              *(v17 - 1) = v20.i64[0];
            }

            if (v19.i8[4])
            {
              *v17 = v20.i64[1];
            }

            v15 = vaddq_s64(v15, vdupq_n_s64(2uLL));
            v18 += 2;
            v17 += 2;
            v14 -= 2;
          }

          while (v14);
        }

        TSUIndexSet::indexSetFromArray(&v24, a2, v22);
        sub_277053DD4(a3, v22);
        free(v23);
      }
    }
  }
}

void sub_277053DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  free(a17);
  sub_277054548(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_277053DD4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_277054628(a1, a2);
  }

  else
  {
    sub_2770545D0(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void sub_277053F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  free(a12);

  _Unwind_Resume(a1);
}

void sub_277054548(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 4;
        free(*(v4 - 1));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2770545D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 |= 3u;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  *(v3 + 8) = vnegq_f64(v4);
  *(v3 + 24) = 0;
  result = TSUIndexSet::operator=(v3, a2);
  *(a1 + 8) = v3 + 32;
  return result;
}

uint64_t sub_277054628(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_2770289D0();
  }

  v6 = a1[2] - *a1;
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

  v19 = a1;
  if (v7)
  {
    sub_277054754(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  v18 = (32 * v2);
  *v8 |= 3u;
  *&v9.f64[0] = 0x8000000080000000;
  *&v9.f64[1] = 0x8000000080000000;
  *(v8 + 8) = vnegq_f64(v9);
  *(v8 + 24) = 0;
  TSUIndexSet::operator=(32 * v2, a2);
  *&v18 = v18 + 32;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_27705479C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_277054870(&v16);
  return v15;
}

void sub_277054740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_277054870(va);
  _Unwind_Resume(a1);
}

void sub_277054754(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_277028AC0();
}

void sub_27705479C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    *&v7.f64[0] = 0x8000000080000000;
    *&v7.f64[1] = 0x8000000080000000;
    v11 = vnegq_f64(v7);
    v8 = a2;
    do
    {
      *a4 |= 3u;
      *(a4 + 8) = v11;
      *(a4 + 24) = 0;
      v10 = TSUIndexSet::operator=(a4, v8);
      v8 += 32;
      a4 = v10 + 32;
      v6 -= 32;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      free(*(v5 + 24));
      v5 += 32;
    }
  }
}

void sub_277054848(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = v1 - 8;
    do
    {
      free(*(v5 + v4));
      v4 -= 32;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_277054870(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    free(*(i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2770548C4(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSException(TSUAdditions) tsu_raiseWithError:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSException_TSUAdditions.m"], 15, 0, "Invalid parameter not satisfying: %{public}s", "error != nil");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5 = [a3 localizedFailureReason];
  if (!v5)
  {
    v6 = [a3 localizedDescription];
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = @"NSError exception";
    }
  }

  v8 = @"TSUErrorExceptionUserInfoKey";
  v9[0] = a3;
  return [objc_msgSend(MEMORY[0x277CBEAD8] exceptionWithName:@"TSUErrorException" reason:v5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)), "raise"}];
}

uint64_t sub_277054A00(void *a1)
{
  v1 = [objc_msgSend(a1 "userInfo")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSException(TSUAdditions) tsu_error]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSException_TSUAdditions.m"], 29, 0, "Unexpected NSException value for TSUErrorExceptionUserInfoKey: %@", v1);
    +[TSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  return v1;
}

NSUInteger TSUIntersectionRangeWithEdge(NSRange a1, NSRange a2, int a3)
{
  length = a2.length;
  location = a2.location;
  v6 = a1.length;
  v7 = a1.location;
  v8 = NSIntersectionRange(a1, a2);
  if (length)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 | location)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v8 == 0uLL)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8.location;
  }

  if (location + length == v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v7 + v6 == location)
  {
    v14 = location;
  }

  else
  {
    v14 = v13;
  }

  if (a3)
  {
    return v14;
  }

  else
  {
    return v12;
  }
}

BOOL TSURangeIntersectsRangeOrContainsLocation(NSRange a1, NSRange a2, int a3)
{
  length = a2.length;
  location = a2.location;
  v6 = a1.length;
  v7 = a1.location;
  v8 = NSIntersectionRange(a1, a2);
  v10 = location >= v7 && location - v7 < v6;
  v11 = v7 + v6 == location;
  if (!a3)
  {
    v11 = v10;
  }

  if (!v10)
  {
    v10 = v11;
  }

  if (v8.length | length)
  {
    return v8.length != 0;
  }

  else
  {
    return v10;
  }
}

NSUInteger NSIntersectionRangeInclusive(NSRange a1, NSRange range1)
{
  if (a1.location != range1.location + range1.length)
  {
    if (a1.location + a1.length == range1.location)
    {
      a1.location = range1.location;
    }

    else
    {
      a1.location = NSIntersectionRange(a1, range1).location;
    }
  }

  return a1.location;
}

unint64_t NSExpandedRange(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a4 + a5;
  if (a4 + a3 >= a1)
  {
    v6 = a4;
  }

  else
  {
    v6 = a1 - a3;
  }

  if (a1 + a2 + a3 < v5)
  {
    v5 = a1 + a2 + a3;
  }

  if (v6 >= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t TSUAssertLegalRange(NSUInteger a1, NSUInteger a2)
{
  if ((a1 & 0x8000000000000000) != 0 || a2 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUAssertLegalRange(NSRange)"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURangeUtils.m"];
    v9.location = a1;
    v9.length = a2;
    v7 = NSStringFromRange(v9);
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:344 isFatal:0 description:"Range contains bad component %@", v7];
    goto LABEL_8;
  }

  if ((a1 + a2) < 0 || (result = 1, a1 == 0x7FFFFFFFFFFFFFFFLL) && a2)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUAssertLegalRange(NSRange)"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURangeUtils.m"];
    v8.location = a1;
    v8.length = a2;
    v7 = NSStringFromRange(v8);
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:350 isFatal:0 description:"max range is an overflow %@", v7];
LABEL_8:

    +[TSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  return result;
}

void *TSUSoftLinkingLoadFramework(void *a1, void *a2)
{
  v4 = [a2 stringByAppendingString:@".framework"];
  if (a1)
  {
    v5 = [sub_277054FB4(objc_msgSend(a1 stringByAppendingString:{@".framework", "stringByAppendingPathComponent:", v4}];
  }

  else
  {
    v5 = sub_277054FB4(v4);
  }

  v6 = [v5 stringByAppendingPathComponent:a2];
  v7 = v6;
  if (!v6 || (result = dlopen([v6 fileSystemRepresentation], 256)) == 0)
  {
    if (([a2 isEqualToString:@"Ubiquity"] & 1) == 0)
    {
      NSLog(@"NSSoftLinking - The %@ framework's library couldn't be loaded from %@.", a2, v7);
    }

    return 0;
  }

  return result;
}

uint64_t sub_277054FB4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  v4 = [(NSArray *)v3 count];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  while (1)
  {
    v7 = [(NSArray *)v3 objectAtIndex:v6];
    v8 = [objc_msgSend(v7 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", a1}];
    if ([v2 fileExistsAtPath:v8])
    {
      break;
    }

    v8 = [objc_msgSend(v7 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", a1}];
    if ([v2 fileExistsAtPath:v8])
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return v8;
}

void *sub_2770550A8(void *a1, void *a2, char *__symbol, void **a4)
{
  Framework = *a4;
  if (!*a4 && (Framework = TSUSoftLinkingLoadFramework(a1, a2), (*a4 = Framework) == 0) || (result = dlsym(Framework, __symbol)) == 0)
  {
    if (([a2 isEqualToString:@"Ubiquity"] & 1) == 0)
    {
      NSLog(@"NSSoftLinking - The function '%s' can't be found in the %@ framework.", __symbol, a2);
    }

    return 0;
  }

  return result;
}

unint64_t sub_277055134(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int *a6)
{
  v6 = a2 & 0x8000000000000000;
  v7 = a4 & 0x8000000000000000;
  if ((~a2 & 0x7800000000000000) == 0 || (a4 & 0x7800000000000000) == 0x7800000000000000)
  {
    if ((a2 & 0x7C00000000000000) == 0x7C00000000000000)
    {
      if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || result > 0x38C15B09FFFFFFFFLL && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
      {
        result = 0;
        a2 &= 0xFFFFC00000000000;
      }

      if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
      {
        *a6 |= 1u;
      }
    }

    else if ((a4 & 0x7C00000000000000) == 0x7C00000000000000)
    {
      if ((a4 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || (a4 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a3 > 0x38C15B09FFFFFFFFLL)
      {
        a3 = 0;
        a4 &= 0xFFFFC00000000000;
      }

      if ((~a4 & 0x7E00000000000000) == 0)
      {
        *a6 |= 1u;
      }

      return a3;
    }

    else if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
    {
      if ((a4 & 0x7C00000000000000) == 0x7800000000000000 && v6 != v7)
      {
        result = 0;
        *a6 |= 1u;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }

    return result;
  }

  if ((~a2 & 0x6000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 4 * a2;
    goto LABEL_27;
  }

  v9 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) <= 0x1ED09BEAD87C0)
  {
    if (result <= 0x378D8E63FFFFFFFFLL)
    {
      v8 = result;
      goto LABEL_26;
    }

    v8 = result;
    v10 = a2;
    if (v9 != 0x1ED09BEAD87C0)
    {
      goto LABEL_27;
    }
  }

  v8 = 0;
  v9 = 0;
LABEL_26:
  v10 = a2;
LABEL_27:
  if ((~a4 & 0x6000000000000000) == 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 4 * a4;
    goto LABEL_35;
  }

  v12 = a4 & 0x1FFFFFFFFFFFFLL;
  if ((a4 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
LABEL_33:
    v11 = 0;
    v12 = 0;
    goto LABEL_34;
  }

  if ((a4 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0)
  {
    v11 = a3;
    v13 = a4;
    if (a3 <= 0x378D8E63FFFFFFFFLL)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v11 = a3;
LABEL_34:
  v13 = a4;
LABEL_35:
  v14 = v10 & 0x7FFE000000000000;
  v15 = v13 & 0x7FFE000000000000;
  if (!(v9 | v8))
  {
    if (v12 | v11)
    {
      if (v15 <= v14)
      {
        return a3;
      }

      else
      {
        if (v11 >> 53)
        {
          v36 = HIDWORD(v11);
        }

        else
        {
          v36 = v11;
        }

        v37 = -1023;
        if (v11 >> 53)
        {
          v37 = -991;
        }

        if (v12)
        {
          v36 = v12;
          v37 = -959;
        }

        v38 = &unk_280A5C3F0 + 32 * v37 + 32 * (COERCE_UNSIGNED_INT64(v36) >> 52);
        v39 = *v38;
        if (!*v38)
        {
          v39 = *(v38 + 6);
          v40 = *(v38 + 1);
          if (v12 > v40 || v12 == v40 && v11 >= *(v38 + 2))
          {
            ++v39;
          }
        }

        v228 = (v15 - v14) >> 49;
        if (34 - v39 < v228)
        {
          LODWORD(v228) = 34 - v39;
        }

        if (v228)
        {
          if (v39 > 19)
          {
            v229 = qword_280A5D8C0[v228];
            return (v229 * v11) | ((v229 * HIDWORD(v11) + HIDWORD(v229) * v11 + ((v229 * v11) >> 32)) << 32);
          }

          else if (v228 > 19)
          {
            v230 = qword_280A5D960[2 * (v228 - 20)];
            return (v230 * v11) | ((HIDWORD(v230) * v11 + v230 * HIDWORD(v11) + ((v230 * v11) >> 32)) << 32);
          }

          else
          {
            return (qword_280A5D8C0[v228] * v11) | ((HIDWORD(qword_280A5D8C0[v228]) * v11 + qword_280A5D8C0[v228] * HIDWORD(v11) + ((qword_280A5D8C0[v228] * v11) >> 32)) << 32);
          }
        }

        return a3;
      }
    }

    else if (v6 && v7)
    {
      return 0;
    }

    else
    {
      return 0;
    }
  }

  if (!(v12 | v11))
  {
    if (v14 > v15)
    {
      if (v8 >> 53)
      {
        v16 = HIDWORD(v8);
      }

      else
      {
        v16 = v8;
      }

      v17 = -1023;
      if (v8 >> 53)
      {
        v17 = -991;
      }

      if (v9)
      {
        v16 = v9;
        v17 = -959;
      }

      v18 = &unk_280A5C3F0 + 32 * v17 + 32 * (COERCE_UNSIGNED_INT64(v16) >> 52);
      v19 = *v18;
      if (!*v18)
      {
        v19 = *(v18 + 6);
        v20 = *(v18 + 1);
        if (v9 > v20 || v9 == v20 && v8 >= *(v18 + 2))
        {
          ++v19;
        }
      }

      v82 = (v14 - v15) >> 49;
      if (34 - v19 < v82)
      {
        LODWORD(v82) = 34 - v19;
      }

      if (v82)
      {
        if (v19 > 19)
        {
          v83 = qword_280A5D8C0[v82];
          return (v83 * v8) | ((v83 * HIDWORD(v8) + HIDWORD(v83) * v8 + ((v83 * v8) >> 32)) << 32);
        }

        else if (v82 > 19)
        {
          v186 = qword_280A5D960[2 * (v82 - 20)];
          return (v186 * v8) | ((HIDWORD(v186) * v8 + v186 * HIDWORD(v8) + ((v186 * v8) >> 32)) << 32);
        }

        else
        {
          return (qword_280A5D8C0[v82] * v8) | ((HIDWORD(qword_280A5D8C0[v82]) * v8 + qword_280A5D8C0[v82] * HIDWORD(v8) + ((qword_280A5D8C0[v82] * v8) >> 32)) << 32);
        }
      }
    }

    return result;
  }

  if (v14 < v15)
  {
    v21 = v8;
  }

  else
  {
    v21 = v11;
  }

  if (v14 < v15)
  {
    v22 = v11;
  }

  else
  {
    v22 = v8;
  }

  if (v14 < v15)
  {
    v23 = v9;
  }

  else
  {
    v23 = v12;
  }

  if (v14 >= v15)
  {
    v24 = v13 & 0x7FFE000000000000;
  }

  else
  {
    v9 = v12;
    v24 = v10 & 0x7FFE000000000000;
  }

  if (v14 < v15)
  {
    v25 = v13 & 0x7FFE000000000000;
  }

  else
  {
    v25 = v10 & 0x7FFE000000000000;
  }

  if (v14 < v15)
  {
    v26 = a2 & 0x8000000000000000;
  }

  else
  {
    v26 = v7;
  }

  if (v14 < v15)
  {
    v27 = v7;
  }

  else
  {
    v27 = a2 & 0x8000000000000000;
  }

  v28 = HIDWORD(v22);
  if (v22 >> 53)
  {
    v29 = HIDWORD(v22);
  }

  else
  {
    v29 = v22;
  }

  v30 = -1023;
  if (v22 >> 53)
  {
    v31 = -991;
  }

  else
  {
    v31 = -1023;
  }

  if (v9)
  {
    v32 = v9;
  }

  else
  {
    v32 = v29;
  }

  if (v9)
  {
    v31 = -959;
  }

  v33 = &unk_280A5C3F0 + 32 * v31 + 32 * (COERCE_UNSIGNED_INT64(v32) >> 52);
  v34 = *v33;
  if (!*v33)
  {
    v34 = *(v33 + 6);
    v35 = *(v33 + 1);
    if (v9 > v35 || v9 == v35 && v22 >= *(v33 + 2))
    {
      ++v34;
    }
  }

  v41 = HIDWORD(v21);
  if (v21 >> 53)
  {
    v30 = -991;
  }

  else
  {
    v41 = v21;
  }

  if (v23)
  {
    v42 = v23;
  }

  else
  {
    v42 = v41;
  }

  if (v23)
  {
    v30 = -959;
  }

  v43 = &unk_280A5C3F0 + 32 * v30 + 32 * (COERCE_UNSIGNED_INT64(v42) >> 52);
  v44 = *v43;
  if (!*v43)
  {
    v44 = *(v43 + 6);
    v45 = *(v43 + 1);
    if (v23 > v45 || v23 == v45 && v21 >= *(v43 + 2))
    {
      ++v44;
    }
  }

  v46 = v34 + (v25 >> 49) - (v44 + (v24 >> 49));
  if (v46 >= 34)
  {
    if (v46 == 34)
    {
      if (v7 == v6)
      {
        goto LABEL_284;
      }

      if (v34 > 20)
      {
        v187 = &qword_280A5D960[2 * (v34 - 21)];
        if (v9 != v187[1])
        {
          goto LABEL_284;
        }

        v47 = *v187;
      }

      else
      {
        if (v9)
        {
          goto LABEL_284;
        }

        v47 = qword_280A5D8C0[v34 - 1];
      }

      if (v22 == v47)
      {
        v188 = 35 - v34;
        if (35 - v34 < 20)
        {
          if (v34 > 19)
          {
            v411 = qword_280A5D8C0[v188];
            v412 = v411 * v9;
            v413 = HIDWORD(v411);
            v414 = HIDWORD(v411) * v22;
            v415 = v411 * v22;
            v416 = v411 * HIDWORD(v22) + v414 + HIDWORD(v415);
            v194 = v415 | (v416 << 32);
            v195 = v412 + v413 * HIDWORD(v22) + HIDWORD(v414) + HIDWORD(v416);
          }

          else
          {
            v344 = qword_280A5D8C0[v188];
            v345 = v344 * HIDWORD(v22);
            v346 = v344 * v22;
            v347 = HIDWORD(v345) + HIDWORD(v344) * HIDWORD(v22);
            v348 = HIDWORD(v344) * v22 + v345 + HIDWORD(v346);
            v195 = v347 + HIDWORD(v348);
            v194 = v346 | (v348 << 32);
          }
        }

        else
        {
          v189 = qword_280A5D960[2 * (15 - v34)];
          v190 = HIDWORD(v189);
          v191 = v189 * HIDWORD(v22);
          v192 = v189 * v22;
          v193 = HIDWORD(v189) * v22 + v191 + HIDWORD(v192);
          v194 = v192 | (v193 << 32);
          v195 = qword_280A5D960[2 * (15 - v34) + 1] * v22 + v190 * HIDWORD(v22) + HIDWORD(v191) + HIDWORD(v193);
        }

        v417 = (v44 - 2);
        if (v44 < 2)
        {
          v421 = 0;
          v422 = 0;
          goto LABEL_597;
        }

        if (v44 > 0x14)
        {
          v420 = (*&qword_280A5D2B0[2 * (v44 - 21)] + __PAIR128__(v23, v21)) >> 64;
          v419 = qword_280A5D2B0[2 * (v44 - 21)] + v21;
        }

        else
        {
          v418 = qword_280A5D210[v417];
          v207 = __CFADD__(v418, v21);
          v419 = v418 + v21;
          if (v207)
          {
            v420 = v23 + 1;
          }

          else
          {
            v420 = v23;
          }
        }

        v429 = HIDWORD(v419);
        v430 = &qword_280A5DF70[2 * v417];
        v431 = *v430;
        v432 = v430[1];
        v433 = HIDWORD(v432);
        v434 = v432 * HIDWORD(v419);
        v435 = HIDWORD(v434) + HIDWORD(v432) * HIDWORD(v419);
        v436 = HIDWORD(v432) * v419 + v434 + ((v432 * v419) >> 32);
        v437 = HIDWORD(v436);
        v438 = (v432 * v419) | (v436 << 32);
        v439 = HIDWORD(v431);
        v440 = v431 * HIDWORD(v419);
        v441 = v431 * v419;
        v442 = HIDWORD(v431) * v419 + v440 + HIDWORD(v441);
        v443 = v441 | (v442 << 32);
        v444 = __PAIR128__(v435, v438) + __PAIR128__(v437, HIDWORD(v440) + HIDWORD(v431) * v429 + HIDWORD(v442));
        v445 = HIDWORD(v420);
        LODWORD(v438) = v420;
        v446 = v432 * HIDWORD(v420);
        v447 = v432 * v420;
        v448 = v433 * v420;
        v449 = HIDWORD(v446) + v433 * HIDWORD(v420);
        v450 = v448 + v446 + HIDWORD(v447);
        v451 = HIDWORD(v450);
        v452 = v447 | (v450 << 32);
        v453 = v431 * HIDWORD(v420);
        v454 = v431 * v420;
        v455 = HIDWORD(v431) * v438 + v453 + HIDWORD(v454);
        v456 = v454 | (v455 << 32);
        v457 = __PAIR128__(v449, v452) + __PAIR128__(v451, HIDWORD(v453) + v439 * v445 + HIDWORD(v455));
        v458 = v444 + v456;
        v207 = __CFADD__(__CFADD__(v444, v456), v457);
        v459 = __CFADD__(v444, v456) + v457;
        v460 = v207;
        v461 = *(&v444 + 1) + v459;
        if (__CFADD__(*(&v444 + 1), v459))
        {
          v462 = 1;
        }

        else
        {
          v462 = v460;
        }

        v23 = *(&v457 + 1) + v462;
        if (v44 < 5)
        {
          if (v458 <= 0x8000000000000000)
          {
            v463 = 0;
            v464 = 0;
            v421 = 1;
            if (v458 != 0x8000000000000000 || !v443)
            {
LABEL_1014:
              v467 = 0;
              goto LABEL_1015;
            }
          }

          v465 = &xmmword_280A5E440[v417];
          v466 = *(v465 + 1);
          if ((v458 ^ 0x8000000000000000) > v466)
          {
            v464 = 0;
            v467 = 0;
            v421 = 0;
            v463 = 1;
LABEL_1015:
            v422 = v421;
            *a6 |= 0x20u;
            v421 = v463;
            goto LABEL_1016;
          }

          if ((v458 ^ 0x8000000000000000) == v466)
          {
            v421 = 0;
            v464 = 0;
            if (v443 < *v465)
            {
              v467 = 0;
              v422 = 0;
              goto LABEL_1016;
            }

            v463 = 1;
            goto LABEL_1014;
          }

          v464 = 0;
          goto LABEL_985;
        }

        v468 = qword_280A5E218[v417];
        v464 = v468 & v23;
        if (v44 >= 0x18)
        {
          v468 = -1;
        }

        else
        {
          v464 = 0;
        }

        v467 = v461 & v468;
        v469 = dword_280A5E190[v417];
        v470 = v469 <= 63;
        v471 = v461 >> v469;
        v472 = -v469;
        v473 = v23 >> v469;
        v474 = v23 >> v469;
        v475 = (v23 << v472) | v471;
        if (v470)
        {
          v23 = v473;
        }

        else
        {
          v23 = 0;
        }

        if (v470)
        {
          v461 = v475;
        }

        else
        {
          v461 = v474;
        }

        if (v44 > 0x17)
        {
          v517 = qword_280A5E328[v417];
          if (v464 > v517 || v464 == v517 && (v467 || v458 || v443))
          {
            v421 = 0;
            v463 = 1;
            if (v464 != v517 || v467)
            {
              goto LABEL_1015;
            }

            v518 = &xmmword_280A5E440[v417];
            v519 = *(v518 + 1);
            if (v458 <= v519)
            {
              if (v458 != v519)
              {
LABEL_985:
                v467 = 0;
                goto LABEL_986;
              }

              v479 = a6;
              v480 = v27;
              v421 = 0;
              if (v443 <= *v518)
              {
                v467 = 0;
                goto LABEL_1069;
              }

LABEL_1035:
              v27 = v480;
              a6 = v479;
              goto LABEL_1015;
            }

LABEL_795:
            v421 = 0;
            goto LABEL_1015;
          }
        }

        else
        {
          v476 = qword_280A5E328[v417];
          if (v464 || v467 > v476 || v467 == v476 && (v476 = v467, v458 | v443))
          {
            v421 = 0;
            v463 = 1;
            if (v464 != v476 > v467 || v467 != v476)
            {
              goto LABEL_1015;
            }

            v477 = &xmmword_280A5E440[v417];
            v478 = *(v477 + 1);
            if (v458 <= v478)
            {
              if (v458 != v478)
              {
LABEL_986:
                v421 = 0;
                v422 = 0;
                goto LABEL_1016;
              }

              v479 = a6;
              v480 = v27;
              v421 = 0;
              if (v443 <= *v477)
              {
LABEL_1069:
                v422 = 0;
                v27 = v480;
LABEL_1016:
                v423 = 0;
                if (!(v458 | v443) || v464)
                {
                  v424 = 0;
                  v21 = v461;
                  goto LABEL_598;
                }

                v21 = v461;
                if (v467)
                {
                  v424 = 0;
                  goto LABEL_598;
                }

                if (__PAIR128__(v458, v443) <= xmmword_280A5E440[v417])
                {
                  v421 = 0;
                  v422 = 0;
                  if ((v461 + v194))
                  {
                    v423 = 0;
                    v558 = __PAIR128__(v23, v461) - 1;
                    v23 = *(&v558 + 1);
                    v21 = v558;
                    v424 = 1;
                  }

                  else
                  {
                    v424 = 0;
                    v423 = 1;
                  }

LABEL_598:
                  v426 = __PAIR128__(v195 - v23, v194) - v21;
                  v425 = *(&v426 + 1);
                  result = v426;
                  if (v426 < 0)
                  {
                    result = -v426;
                    if (v426)
                    {
                      v425 = ~*(&v426 + 1);
                    }

                    else
                    {
                      v425 = -*(&v426 + 1);
                    }

                    v27 = v26;
                  }

                  if (!a5)
                  {
                    return result;
                  }

                  if (v27)
                  {
                    if (a5 != 1 || !v422)
                    {
                      v427 = a5 == 4 || a5 == 1;
                      v428 = v427 ? v423 : 0;
                      if (v428 != 1)
                      {
LABEL_676:
                        v485 = v424 ^ 1;
                        if (v421)
                        {
                          v485 = 0;
                        }

                        if ((v485 & 1) == 0 && ((a5 & 0xFFFFFFFE) == 2 && v27 || (a5 & 0xFFFFFFFD) == 1 && !v27))
                        {
                          v486 = __PAIR128__(v425, result) - 1;
                          if (*(&v486 + 1) == 0x314DC6448D93 && v486 == 0x38C15B09FFFFFFFFLL)
                          {
                            return 0x378D8E63FFFFFFFFLL;
                          }

                          else
                          {
                            --result;
                          }
                        }

                        return result;
                      }
                    }
                  }

                  else if (a5 != 2 || !v422)
                  {
                    v481 = a5 == 4 || a5 == 2;
                    v482 = v481 ? v423 : 0;
                    if ((v482 & 1) == 0)
                    {
                      goto LABEL_676;
                    }
                  }

                  v207 = __CFADD__(result++, 1);
                  if (v207)
                  {
                    v483 = v425 + 1;
                  }

                  else
                  {
                    v483 = v425;
                  }

                  if (result == 0x378D8E6400000000 && v483 == 0x1ED09BEAD87C0)
                  {
                    return 0x38C15B0A00000000;
                  }

                  return result;
                }

LABEL_597:
                v423 = 0;
                v424 = 0;
                goto LABEL_598;
              }

              goto LABEL_1035;
            }

            goto LABEL_795;
          }

          v464 = 0;
        }

        v463 = 0;
        v421 = 1;
        goto LABEL_1015;
      }

LABEL_284:
      if (v44 <= 19)
      {
        v196 = qword_280A5D210[v44 - 1];
        if (v21 >= v196)
        {
          if (v21 == v196)
          {
            v197 = v22 & 1;
            if (v34 < 34 || (v22 & 1) == 0)
            {
              if (v34 <= 33)
              {
                v198 = (34 - v34);
                if (v34 > 19)
                {
                  v493 = qword_280A5D8C0[v198];
                  v494 = v493 * v9;
                  v495 = HIDWORD(v493);
                  v496 = HIDWORD(v493) * v22;
                  v497 = v493 * v22;
                  v498 = v493 * v28 + v496 + HIDWORD(v497);
                  v22 = v497 | (v498 << 32);
                  v9 = v494 + v495 * v28 + HIDWORD(v496) + HIDWORD(v498);
                }

                else
                {
                  if (v34 < 15)
                  {
                    v527 = qword_280A5D8C0[15 - v34] * v22;
                    v528 = HIDWORD(qword_280A5D958) * (LODWORD(qword_280A5D8C0[15 - v34]) * v22);
                    v201 = qword_280A5D958 * v527;
                    v202 = HIDWORD(v528) + HIDWORD(qword_280A5D958) * HIDWORD(v527);
                    v203 = qword_280A5D958 * HIDWORD(v527) + v528;
                  }

                  else
                  {
                    v199 = qword_280A5D8C0[v198];
                    v200 = HIDWORD(v199) * v22;
                    v201 = v199 * v22;
                    v202 = HIDWORD(v200) + HIDWORD(v199) * v28;
                    v203 = v199 * v28 + v200;
                  }

                  v529 = v203 + HIDWORD(v201);
                  v9 = v202 + HIDWORD(v529);
                  v22 = v201 | (v529 << 32);
                }

                v25 -= v198 << 49;
                v197 = v22 & 1;
              }

              v530 = a5 != 0;
              if (v7 != v6)
              {
                v530 = 1;
              }

              if (!v197)
              {
                v530 = 1;
              }

              v531 = v7 == v6 && a5 == 4;
              if (v531 || !v530 || a5 == 2 && !v27 && !v26 || a5 == 1 && v27 && v26)
              {
                v207 = __CFADD__(v22++, 1);
                if (v207)
                {
                  v532 = v9 + 1;
                }

                else
                {
                  v532 = v9;
                }

                if (v22 == 0x378D8E6400000000 && v532 == 0x1ED09BEAD87C0)
                {
                  if (v25 == 0x5FFE000000000000)
                  {
                    v22 = 0;
                    *a6 |= 8u;
                  }

                  else
                  {
                    v22 = 0x38C15B0A00000000;
                  }
                }
              }

              else if (!a5 && v7 != v6 && v197 || a5 == 1 && !v27 && v26 || (a5 == 2 ? (v559 = v26 == 0) : (v559 = 0), v559 ? (v560 = v27 == 0) : (v560 = 1), !v560 ? (v561 = 0) : (v561 = 1), v7 != v6 ? (v562 = a5 == 3) : (v562 = 0), v562 || (v561 & 1) == 0))
              {
                if ((__PAIR128__(v9, v22) - 1) >> 64 == 0x314DC6448D93 && v22 == 0x38C15B0A00000000)
                {
                  v22 = 0x378D8E63FFFFFFFFLL;
                }

                else
                {
                  --v22;
                }
              }

              *a6 |= 0x20u;
              return v22;
            }
          }

          else if (v34 <= 33)
          {
            v320 = (34 - v34);
            if (v34 > 19)
            {
              v405 = qword_280A5D8C0[v320];
              v406 = v405 * v9;
              v407 = HIDWORD(v405);
              v408 = HIDWORD(v405) * v22;
              v409 = v405 * v22;
              v410 = v405 * v28 + v408 + HIDWORD(v409);
              v22 = v409 | (v410 << 32);
              v9 = v406 + v407 * v28 + HIDWORD(v408) + HIDWORD(v410);
            }

            else
            {
              if (v34 < 15)
              {
                v499 = qword_280A5D8C0[15 - v34] * v22;
                v500 = HIDWORD(qword_280A5D958) * (LODWORD(qword_280A5D8C0[15 - v34]) * v22);
                v323 = qword_280A5D958 * v499;
                v324 = HIDWORD(v500) + HIDWORD(qword_280A5D958) * HIDWORD(v499);
                v325 = qword_280A5D958 * HIDWORD(v499) + v500;
              }

              else
              {
                v321 = qword_280A5D8C0[v320];
                v322 = HIDWORD(v321) * v22;
                v323 = v321 * v22;
                v324 = HIDWORD(v322) + HIDWORD(v321) * v28;
                v325 = v321 * v28 + v322;
              }

              v501 = v325 + HIDWORD(v323);
              v9 = v324 + HIDWORD(v501);
              v22 = v323 | (v501 << 32);
            }

            v25 -= v320 << 49;
            if (v9 == 0x1ED09BEAD87C0 && v22 == 0x378D8E6400000000)
            {
              v22 = 0x38C15B0A00000000;
              v9 = 0x314DC6448D93;
              v25 += 0x2000000000000;
            }
          }

          if ((a5 || v7 == v6) && (a5 != 4 || v7 == v6 || v21 == v196) && (a5 != 1 || v27 || !v26))
          {
            v503 = a5 == 2 && v26 == 0;
            v504 = !v503 || v27 == 0;
            v505 = v504;
            v506 = v7 != v6 && a5 == 3;
            if (!v506 && v505)
            {
              v507 = a5 == 4 || a5 == 0;
              if ((!v507 || v7 != v6) && (a5 != 1 || !v27 || !v26) && (a5 != 2 || v27 || v26))
              {
LABEL_915:
                *a6 |= 0x20u;
                return v22;
              }

LABEL_946:
              v207 = __CFADD__(v22++, 1);
              if (v207)
              {
                v549 = v9 + 1;
              }

              else
              {
                v549 = v9;
              }

              if (v22 == 0x378D8E6400000000 && v549 == 0x1ED09BEAD87C0)
              {
                if (v25 == 0x5FFE000000000000)
                {
                  v22 = 0;
                  *a6 |= 8u;
                }

                else
                {
                  v22 = 0x38C15B0A00000000;
                }
              }

              goto LABEL_915;
            }
          }

          goto LABEL_911;
        }

LABEL_313:
        if (v34 <= 33)
        {
          v216 = (34 - v34);
          if (v34 > 19)
          {
            v268 = qword_280A5D8C0[v216];
            v269 = v268 * v9;
            v270 = HIDWORD(v268);
            v271 = HIDWORD(v268) * v22;
            v272 = v268 * v22;
            v273 = v268 * v28 + v271 + HIDWORD(v272);
            v22 = v272 | (v273 << 32);
            v9 = v269 + v270 * v28 + HIDWORD(v271) + HIDWORD(v273);
          }

          else
          {
            if (v34 < 15)
            {
              v333 = qword_280A5D8C0[15 - v34] * v22;
              v334 = HIDWORD(qword_280A5D958) * (LODWORD(qword_280A5D8C0[15 - v34]) * v22);
              v219 = qword_280A5D958 * v333;
              v220 = HIDWORD(v334) + HIDWORD(qword_280A5D958) * HIDWORD(v333);
              v221 = qword_280A5D958 * HIDWORD(v333) + v334;
            }

            else
            {
              v217 = qword_280A5D8C0[v216];
              v218 = HIDWORD(v217) * v22;
              v219 = v217 * v22;
              v220 = HIDWORD(v218) + HIDWORD(v217) * v28;
              v221 = v217 * v28 + v218;
            }

            v335 = v221 + HIDWORD(v219);
            v9 = v220 + HIDWORD(v335);
            v22 = v219 | (v335 << 32);
          }

          v25 -= v216 << 49;
        }

        if (a5)
        {
          if (a5 == 1 && v27 && v26 || a5 == 2 && !v27 && !v26)
          {
            v207 = __CFADD__(v22++, 1);
            if (v207)
            {
              v336 = v9 + 1;
            }

            else
            {
              v336 = v9;
            }

            if (v22 == 0x378D8E6400000000 && v336 == 0x1ED09BEAD87C0)
            {
              if (v25 == 0x5FFE000000000000)
              {
                v22 = 0;
                *a6 |= 8u;
              }

              else
              {
                v22 = 0x38C15B0A00000000;
              }
            }
          }

          else if (a5 == 1 && !v27 && v26 || (a5 == 2 ? (v386 = v26 == 0) : (v386 = 0), v386 ? (v387 = v27 == 0) : (v387 = 1), !v387 ? (v388 = 0) : (v388 = 1), v7 != v6 ? (v389 = a5 == 3) : (v389 = 0), v389 || (v388 & 1) == 0))
          {
            if ((__PAIR128__(v9, v22) - 1) >> 64 == 0x314DC6448D93 && v22 == 0x38C15B0A00000000)
            {
              v22 = 0x378D8E63FFFFFFFFLL;
            }

            else
            {
              --v22;
            }
          }
        }

        *a6 |= 0x20u;
        return v22;
      }

      v204 = &qword_280A5D2B0[2 * (v44 - 20)];
      v205 = v204[1];
      if (v23 < v205)
      {
        goto LABEL_313;
      }

      v206 = *v204;
      v207 = v23 != v205 || v21 >= v206;
      if (!v207)
      {
        goto LABEL_313;
      }

      v208 = v23 == v205 && v21 == v206;
      v209 = v208;
      if (!v208)
      {
        if (v34 <= 33)
        {
          v338 = (34 - v34);
          if (v34 > 19)
          {
            v508 = qword_280A5D8C0[v338];
            v509 = v508 * v9;
            v510 = HIDWORD(v508);
            v511 = HIDWORD(v508) * v22;
            v512 = v508 * v22;
            v513 = v508 * v28 + v511 + HIDWORD(v512);
            v22 = v512 | (v513 << 32);
            v9 = v509 + v510 * v28 + HIDWORD(v511) + HIDWORD(v513);
          }

          else
          {
            if (v34 < 15)
            {
              v539 = qword_280A5D8C0[15 - v34] * v22;
              v540 = HIDWORD(qword_280A5D958) * (LODWORD(qword_280A5D8C0[15 - v34]) * v22);
              v341 = qword_280A5D958 * v539;
              v342 = HIDWORD(v540) + HIDWORD(qword_280A5D958) * HIDWORD(v539);
              v343 = qword_280A5D958 * HIDWORD(v539) + v540;
            }

            else
            {
              v339 = qword_280A5D8C0[v338];
              v340 = HIDWORD(v339) * v22;
              v341 = v339 * v22;
              v342 = HIDWORD(v340) + HIDWORD(v339) * v28;
              v343 = v339 * v28 + v340;
            }

            v541 = v343 + HIDWORD(v341);
            v9 = v342 + HIDWORD(v541);
            v22 = v341 | (v541 << 32);
          }

          v25 -= v338 << 49;
        }

LABEL_909:
        if (a5 || v7 == v6)
        {
          if (a5 != 4 || v7 == v6)
          {
            v542 = v27 != 0;
            v543 = v26 != 0;
            if (a5 == 1 && !v27 && v26)
            {
              goto LABEL_911;
            }

            v544 = a5 == 2 && v26 == 0;
            v545 = !v544 || v27 == 0;
            v546 = v545;
            v547 = v7 != v6 && a5 == 3;
            if (v547 || !v546)
            {
              goto LABEL_911;
            }
          }

          else
          {
            if (!v209)
            {
              goto LABEL_911;
            }

            v542 = v27 != 0;
            v543 = v26 != 0;
          }

          v548 = a5 == 4 || a5 == 0;
          if ((!v548 || v7 != v6) && (a5 != 1 || !v542 || !v543) && (a5 != 2 || v542 || v543))
          {
            goto LABEL_915;
          }

          goto LABEL_946;
        }

LABEL_911:
        if ((__PAIR128__(v9, v22) - 1) >> 64 == 0x314DC6448D93 && v22 == 0x38C15B0A00000000)
        {
          v22 = 0x378D8E63FFFFFFFFLL;
        }

        else
        {
          --v22;
        }

        goto LABEL_915;
      }

      if (v34 >= 34 && (v22 & 1) != 0)
      {
        goto LABEL_909;
      }

      if (v34 <= 33)
      {
        v210 = (34 - v34);
        if (v34 > 19)
        {
          v533 = qword_280A5D8C0[v210];
          v534 = v533 * v9;
          v535 = HIDWORD(v533);
          v536 = HIDWORD(v533) * v22;
          v537 = v533 * v22;
          v538 = v533 * v28 + v536 + HIDWORD(v537);
          v22 = v537 | (v538 << 32);
          v9 = v534 + v535 * v28 + HIDWORD(v536) + HIDWORD(v538);
        }

        else
        {
          if (v34 < 15)
          {
            v554 = qword_280A5D8C0[15 - v34] * v22;
            v555 = HIDWORD(qword_280A5D958) * (LODWORD(qword_280A5D8C0[15 - v34]) * v22);
            v213 = qword_280A5D958 * v554;
            v214 = HIDWORD(v555) + HIDWORD(qword_280A5D958) * HIDWORD(v554);
            v215 = qword_280A5D958 * HIDWORD(v554) + v555;
          }

          else
          {
            v211 = qword_280A5D8C0[v210];
            v212 = HIDWORD(v211) * v22;
            v213 = v211 * v22;
            v214 = HIDWORD(v212) + HIDWORD(v211) * v28;
            v215 = v211 * v28 + v212;
          }

          v556 = v215 + HIDWORD(v213);
          v9 = v214 + HIDWORD(v556);
          v22 = v213 | (v556 << 32);
        }

        v25 -= v210 << 49;
      }

      if (a5)
      {
        if (a5 == 4)
        {
          if (v7 != v6)
          {
            goto LABEL_1067;
          }
        }

        else if ((a5 != 2 || v27 || v26) && (a5 != 1 || !v27 || !v26))
        {
          if (a5 == 1 && !v27 && v26 || (a5 == 2 ? (v563 = v26 == 0) : (v563 = 0), v563 ? (v564 = v27 == 0) : (v564 = 1), !v564 ? (v565 = 0) : (v565 = 1), v7 != v6 ? (v566 = a5 == 3) : (v566 = 0), v566 || (v565 & 1) == 0))
          {
            if ((__PAIR128__(v9, v22) - 1) >> 64 == 0x314DC6448D93 && v22 == 0x38C15B0A00000000)
            {
              v22 = 0x378D8E63FFFFFFFFLL;
            }

            else
            {
              --v22;
            }
          }

          goto LABEL_1067;
        }

        v207 = __CFADD__(v22++, 1);
        if (v207)
        {
          v557 = v9 + 1;
        }

        else
        {
          v557 = v9;
        }

        if (v22 == 0x378D8E6400000000 && v557 == 0x1ED09BEAD87C0)
        {
          if (v25 == 0x5FFE000000000000)
          {
            v22 = 0;
            *a6 |= 8u;
          }

          else
          {
            v22 = 0x38C15B0A00000000;
          }
        }
      }

LABEL_1067:
      *a6 |= 0x20u;
      return v22;
    }

    if (v34 <= 33)
    {
      v57 = (34 - v34);
      if (v34 > 19)
      {
        v222 = qword_280A5D8C0[v57];
        v223 = v222 * v9;
        v224 = HIDWORD(v222);
        v225 = HIDWORD(v222) * v22;
        v226 = v222 * v22;
        v227 = v222 * v28 + v225 + HIDWORD(v226);
        v22 = v226 | (v227 << 32);
        v9 = v223 + v224 * v28 + HIDWORD(v225) + HIDWORD(v227);
      }

      else
      {
        if (v34 < 15)
        {
          v274 = qword_280A5D8C0[15 - v34] * v22;
          v275 = HIDWORD(qword_280A5D958) * (LODWORD(qword_280A5D8C0[15 - v34]) * v22);
          v60 = qword_280A5D958 * v274;
          v61 = HIDWORD(v275) + HIDWORD(qword_280A5D958) * HIDWORD(v274);
          v62 = qword_280A5D958 * HIDWORD(v274) + v275;
        }

        else
        {
          v58 = qword_280A5D8C0[v57];
          v59 = HIDWORD(v58) * v22;
          v60 = v58 * v22;
          v61 = HIDWORD(v59) + HIDWORD(v58) * v28;
          v62 = v58 * v28 + v59;
        }

        v276 = v62 + HIDWORD(v60);
        v9 = v61 + HIDWORD(v276);
        v22 = v60 | (v276 << 32);
      }

      v25 -= v57 << 49;
    }

    result = 0x38C15B0A00000000;
    if ((a5 & 0xFFFFFFFB) != 0)
    {
      goto LABEL_440;
    }

    v277 = v46 == 35 && v9 == 0x314DC6448D93;
    if (!v277 || v22 != 0x38C15B0A00000000)
    {
      goto LABEL_440;
    }

    if (v7 == v6)
    {
      goto LABEL_439;
    }

    if (v44 > 19)
    {
      v280 = &qword_280A5D2B0[2 * (v44 - 20)];
      v281 = v280[1];
      if (v23 > v281)
      {
        goto LABEL_370;
      }

      if (v23 != v281)
      {
LABEL_439:
        v22 = 0x38C15B0A00000000;
        v9 = 0x314DC6448D93;
        goto LABEL_440;
      }

      v279 = *v280;
    }

    else
    {
      v279 = qword_280A5D210[v44 - 1];
    }

    if (v21 <= v279)
    {
      goto LABEL_439;
    }

LABEL_370:
    v22 = 0x378D8E63FFFFFFFFLL;
    v25 -= 0x2000000000000;
    v9 = 0x1ED09BEAD87C0;
    if (!a5)
    {
      goto LABEL_464;
    }

LABEL_440:
    if (a5 == 1 && v27 && v26 || a5 == 2 && !v27 && !v26)
    {
      v337 = v22 + 1;
      if (v22 == -1)
      {
        ++v9;
      }

      if (v22 == 0x378D8E63FFFFFFFFLL && v9 == 0x1ED09BEAD87C0)
      {
        if (v25 == 0x5FFE000000000000)
        {
          result = 0;
          *a6 |= 8u;
        }

        goto LABEL_466;
      }

      goto LABEL_465;
    }

    if (a5 == 1 && !v27 && v26 || a5 == 2 && v27 && !v26 || a5 == 3 && v7 != v6)
    {
      v337 = v22 - 1;
      if ((__PAIR128__(v9, v22) - 1) >> 64 != 0x314DC6448D93 || v22 != 0x38C15B0A00000000)
      {
LABEL_465:
        result = v337;
        goto LABEL_466;
      }

      result = 0x378D8E63FFFFFFFFLL;
    }

    else
    {
LABEL_464:
      result = v22;
    }

LABEL_466:
    *a6 |= 0x20u;
    return result;
  }

  if (v46 < 0)
  {
    v63 = (v25 >> 49) - (v24 >> 49);
    v64 = v63 - 20;
    if (v63 < 20)
    {
      if (v63 < 1)
      {
        goto LABEL_373;
      }

      if (v34 <= 19)
      {
        v84 = qword_280A5D8C0[v63];
        v85 = v22;
        v86 = HIDWORD(v84);
        v87 = v84 * HIDWORD(v22);
        v88 = v84 * v22;
        v89 = HIDWORD(v84) * v85 + v87 + HIDWORD(v88);
        v9 = HIDWORD(v87) + v86 * v28 + HIDWORD(v89);
        v22 = v88 | (v89 << 32);
        goto LABEL_373;
      }

      v282 = qword_280A5D8C0[v63];
      v283 = v282 * v9;
      v284 = HIDWORD(v282);
      v69 = HIDWORD(v282) * v22;
      v285 = v282 * v22;
      v71 = v282 * v28 + v69 + HIDWORD(v285);
      v22 = v285 | (v71 << 32);
      v72 = v283 + v284 * v28;
    }

    else
    {
      v65 = qword_280A5D960[2 * v64];
      v66 = qword_280A5D960[2 * v64 + 1] * v22;
      v67 = v22;
      v68 = HIDWORD(v65);
      v69 = v65 * HIDWORD(v22);
      v70 = v65 * v22;
      v71 = HIDWORD(v65) * v67 + v69 + HIDWORD(v70);
      v22 = v70 | (v71 << 32);
      v72 = v66 + v68 * v28;
    }

    v9 = v72 + HIDWORD(v69) + HIDWORD(v71);
LABEL_373:
    if (v7 != v6)
    {
      v317 = (__PAIR128__(v23 - v9, v21) - v22) >> 64;
      result = v21 - v22;
      if (v317 < 0)
      {
        result = v22 - v21;
        if (v21 == v22)
        {
          v317 = -v317;
        }

        else
        {
          v317 = ~v317;
        }
      }

      if (v317 | result)
      {
        return result;
      }

      return 0;
    }

    v286 = (__PAIR128__(v9, v22) + __PAIR128__(v23, v21)) >> 64;
    result = v22 + v21;
    if (v286 <= 0x1ED09BEAD87C0 && (result <= 0x378D8E63FFFFFFFFLL || v286 != 0x1ED09BEAD87C0))
    {
      return result;
    }

    if (result <= 0xFFFFFFFFFFFFFFFALL)
    {
      v287 = (__PAIR128__(v9, v22) + __PAIR128__(v23, v21)) >> 64;
    }

    else
    {
      v287 = v286 + 1;
    }

    v288 = (result + 5) >> 32;
    v289 = result + 5;
    v290 = 2576980377 * v288;
    v291 = HIDWORD(v290) + 429496729 * v288;
    v292 = 429496729 * (result + 5) + v290 + ((2576980377u * (result + 5)) >> 32);
    v293 = (-1717986919 * (result + 5)) | (v292 << 32);
    v294 = 2576980480 * v288;
    v295 = 2576980480 * (result + 5);
    v296 = v294 + 2576980377 * v289 + HIDWORD(v295);
    v297 = HIDWORD(v294) + 2576980377 * v288 + HIDWORD(v296);
    v298 = v295 | (v296 << 32);
    v299 = __PAIR128__(v291, v293) + __PAIR128__(HIDWORD(v292), v297);
    v300 = 2576980377 * HIDWORD(v287);
    v301 = HIDWORD(v300) + 429496729 * HIDWORD(v287);
    v302 = 429496729 * v287 + v300 + ((2576980377u * v287) >> 32);
    v303 = HIDWORD(v302);
    v304 = (-1717986919 * v287) | (v302 << 32);
    v305 = 2576980480 * HIDWORD(v287);
    v306 = 2576980480 * v287;
    v307 = v305 + 2576980377 * v287 + HIDWORD(v306);
    v308 = HIDWORD(v305) + 2576980377 * HIDWORD(v287) + HIDWORD(v307);
    v309 = v306 | (v307 << 32);
    v310 = __PAIR128__(v301, v304) + __PAIR128__(v303, v308);
    v311 = v309 + v299;
    v207 = __CFADD__(__CFADD__(v309, v299), v304 + v308);
    v312 = __CFADD__(v309, v299) + v304 + v308;
    v313 = v207;
    result = *(&v299 + 1) + v312;
    if (__CFADD__(*(&v299 + 1), v312))
    {
      v314 = 1;
    }

    else
    {
      v314 = v313;
    }

    if (v311 | v298)
    {
      if (v311 < 0x1999999999999999 || (v315 = 0, v311 == 0x1999999999999999) && v298 < 0x999999999999999ALL)
      {
        if (result)
        {
          v316 = 0;
          --result;
          v315 = 1;
        }

        else
        {
          v315 = 0;
          v316 = 1;
        }
      }

      else
      {
        v316 = 0;
      }

      v318 = v24 + 0x2000000000000;
      if ((a5 & 0xFFFFFFFB) == 0 && v24 == 0x5FFE000000000000)
      {
        goto LABEL_804;
      }

      if (v311 <= 0x8000000000000000)
      {
        if (v311 == 0x8000000000000000 && v298)
        {
          v395 = 0;
          goto LABEL_544;
        }
      }

      else if (v311 <= 0x9999999999999999)
      {
        v395 = 0;
        if (v311 != 0x9999999999999999 || v298 <= 0x9999999999999998)
        {
LABEL_544:
          v396 = 0;
          v397 = *(&v310 + 1) + v314;
          v398 = 0;
          if ((v310 & 1) == 0 && (v316 & 1) == 0)
          {
            if (v311 < 0)
            {
              v398 = v395;
            }

            else
            {
              v398 = 0;
            }

            if (v311 >= 0)
            {
              v396 = v395;
            }

            else
            {
              v396 = 0;
            }
          }

          if (!a5)
          {
            return result;
          }

          if (v27)
          {
            if (a5 == 1)
            {
              v399 = v398;
            }

            else
            {
              v399 = 0;
            }

            if ((v399 & 1) == 0)
            {
              if (a5 != 4 && a5 != 1)
              {
                v315 = 0;
              }

              if (v315 != 1)
              {
LABEL_666:
                if ((v316 | v396) == 1 && ((a5 & 0xFFFFFFFE) == 2 && v27 || (a5 & 0xFFFFFFFD) == 1 && !v27))
                {
                  v403 = result - 1;
                  if ((__PAIR128__(v397, result) - 1) >> 64 == 0x314DC6448D93 && result == 0x38C15B0A00000000)
                  {
                    v403 = 0x378D8E63FFFFFFFFLL;
                    v318 = v24;
                  }
                }

                else
                {
                  v403 = result;
                }

LABEL_768:
                result = v403;
                if (v318 == 0x6000000000000000)
                {
                  if (v27)
                  {
                    v514 = 1;
                  }

                  else
                  {
                    v514 = 2;
                  }

                  if (v514 == a5)
                  {
                    result = 0;
                  }

                  else
                  {
                    result = 0x378D8E63FFFFFFFFLL;
                  }

                  *a6 |= 0x28u;
                }

                return result;
              }
            }
          }

          else
          {
            if (a5 == 2)
            {
              v401 = v398;
            }

            else
            {
              v401 = 0;
            }

            if ((v401 & 1) == 0)
            {
              if (a5 != 4 && a5 != 2)
              {
                LOBYTE(v315) = 0;
              }

              if ((v315 & 1) == 0)
              {
                goto LABEL_666;
              }
            }
          }

          v403 = result + 1;
          if (result == -1)
          {
            ++v397;
          }

          if (result == 0x378D8E63FFFFFFFFLL && v397 == 0x1ED09BEAD87C0)
          {
            v403 = 0x38C15B0A00000000;
            v318 = v24 + 0x4000000000000;
          }

          goto LABEL_768;
        }
      }
    }

    else
    {
      v315 = 0;
      v318 = v24 + 0x2000000000000;
      if ((a5 & 0xFFFFFFFB) != 0)
      {
        v316 = 0;
      }

      else
      {
        v316 = 0;
        if (v24 == 0x5FFE000000000000)
        {
          goto LABEL_804;
        }
      }
    }

    *a6 |= 0x20u;
    v395 = 1;
    goto LABEL_544;
  }

  if (v46 <= 33 - v44)
  {
    v73 = (v25 >> 49) - (v24 >> 49);
    v74 = v73 - 20;
    if (v73 < 20)
    {
      if (v73 >= 1)
      {
        if (v34 > 19)
        {
          v326 = qword_280A5D8C0[v73];
          v327 = v326 * v9;
          v328 = HIDWORD(v326);
          v329 = HIDWORD(v326) * v22;
          v330 = v326 * v22;
          v331 = v326 * v28 + v329 + HIDWORD(v330);
          v22 = v330 | (v331 << 32);
          v9 = v327 + v328 * v28 + HIDWORD(v329) + HIDWORD(v331);
        }

        else
        {
          v178 = qword_280A5D8C0[v73];
          v179 = v22;
          v180 = HIDWORD(v178);
          v181 = v178 * HIDWORD(v22);
          v182 = v178 * v22;
          v183 = HIDWORD(v178) * v179;
          v184 = HIDWORD(v181) + v180 * v28;
          v185 = v183 + v181 + HIDWORD(v182);
          v9 = v184 + HIDWORD(v185);
          v22 = v182 | (v185 << 32);
        }
      }
    }

    else
    {
      v75 = qword_280A5D960[2 * v74];
      v76 = qword_280A5D960[2 * v74 + 1] * v22;
      v77 = v22;
      v78 = HIDWORD(v75);
      v79 = v75 * HIDWORD(v22);
      v80 = v75 * v22;
      v81 = HIDWORD(v75) * v77 + v79 + HIDWORD(v80);
      v22 = v80 | (v81 << 32);
      v9 = v76 + v78 * v28 + HIDWORD(v79) + HIDWORD(v81);
    }

    if (v7 == v6)
    {
      return v22 + v21;
    }

    v332 = __PAIR128__(v9 - v23, v22) - v21;
    result = v332;
    if (v332 != 0)
    {
      if ((*(&v332 + 1) & 0x8000000000000000) != 0)
      {
        return v21 - v22;
      }

      return result;
    }

    return 0;
  }

  if (v46 == 34 - v44)
  {
    v48 = (v25 >> 49) - (v24 >> 49);
    v49 = v48 - 20;
    if (v48 < 20)
    {
      if (v48 >= 1)
      {
        if (v34 > 19)
        {
          v349 = qword_280A5D8C0[v48];
          v350 = v349 * v9;
          v351 = HIDWORD(v349);
          v352 = HIDWORD(v349) * v22;
          v353 = v349 * v22;
          v354 = v349 * v28 + v352 + HIDWORD(v353);
          v22 = v353 | (v354 << 32);
          v9 = v350 + v351 * v28 + HIDWORD(v352) + HIDWORD(v354);
        }

        else
        {
          v260 = qword_280A5D8C0[v48];
          v261 = v22;
          v262 = HIDWORD(v260);
          v263 = v260 * HIDWORD(v22);
          v264 = v260 * v22;
          v265 = HIDWORD(v260) * v261;
          v266 = HIDWORD(v263) + v262 * v28;
          v267 = v265 + v263 + HIDWORD(v264);
          v9 = v266 + HIDWORD(v267);
          v22 = v264 | (v267 << 32);
        }
      }
    }

    else
    {
      v50 = qword_280A5D960[2 * v49];
      v51 = qword_280A5D960[2 * v49 + 1] * v22;
      v52 = v22;
      v53 = HIDWORD(v50);
      v54 = v50 * HIDWORD(v22);
      v55 = v50 * v22;
      v56 = HIDWORD(v50) * v52 + v54 + HIDWORD(v55);
      v22 = v55 | (v56 << 32);
      v9 = v51 + v53 * v28 + HIDWORD(v54) + HIDWORD(v56);
    }

    if (v7 == v6)
    {
      v356 = v22 + v21;
      v355 = (__PAIR128__(v9, v22) + __PAIR128__(v23, v21)) >> 64;
      result = v22 + v21;
      if (v355 <= 0x1ED09BEAD87C0 && (v356 <= 0x378D8E63FFFFFFFFLL || v355 != 0x1ED09BEAD87C0))
      {
        return result;
      }

      if (v356 > 0xFFFFFFFFFFFFFFFALL)
      {
        ++v355;
      }

      v357 = (v356 + 5) >> 32;
      v358 = 2576980377 * v357;
      v359 = HIDWORD(v358) + 429496729 * v357;
      v360 = 429496729 * (v356 + 5) + v358 + ((2576980377u * (v356 + 5)) >> 32);
      v361 = 2576980480 * v357;
      v362 = 2576980480 * (v356 + 5);
      v363 = v361 + 2576980377 * (v356 + 5) + HIDWORD(v362);
      v364 = HIDWORD(v361) + 2576980377 * v357 + HIDWORD(v363);
      v365 = v362 | (v363 << 32);
      v366 = __PAIR128__(HIDWORD(v360), (-1717986919 * (v356 + 5)) | (v360 << 32)) + __PAIR128__(v359, v364);
      v367 = 2576980377 * HIDWORD(v355);
      v368 = HIDWORD(v367) + 429496729 * HIDWORD(v355);
      v369 = 429496729 * v355 + v367 + ((2576980377u * v355) >> 32);
      v370 = HIDWORD(v369);
      v371 = (-1717986919 * v355) | (v369 << 32);
      v372 = 2576980480 * HIDWORD(v355);
      v373 = 2576980480 * v355;
      v374 = v372 + 2576980377 * v355 + HIDWORD(v373);
      v375 = HIDWORD(v372) + 2576980377 * HIDWORD(v355) + HIDWORD(v374);
      v376 = v373 | (v374 << 32);
      v377 = __PAIR128__(v368, v371) + __PAIR128__(v370, v375);
      v378 = v376 + v366;
      v207 = __CFADD__(__CFADD__(v376, v366), v371 + v375);
      v379 = __CFADD__(v376, v366) + v371 + v375;
      v380 = v207;
      result = *(&v366 + 1) + v379;
      if (__CFADD__(*(&v366 + 1), v379))
      {
        v381 = 1;
      }

      else
      {
        v381 = v380;
      }

      if (v378 | v365)
      {
        if (v378 < 0x1999999999999999 || (v382 = 0, v378 == 0x1999999999999999) && v365 < 0x999999999999999ALL)
        {
          if (result)
          {
            v383 = 0;
            --result;
            v382 = 1;
          }

          else
          {
            v382 = 0;
            v383 = 1;
          }
        }

        else
        {
          v383 = 0;
        }

        v385 = v24 + 0x2000000000000;
        if ((a5 & 0xFFFFFFFB) != 0 || v24 != 0x5FFE000000000000)
        {
          if (v378 <= 0x8000000000000000)
          {
            if (v378 == 0x8000000000000000 && v365)
            {
              v488 = 0;
              goto LABEL_702;
            }
          }

          else if (v378 <= 0x9999999999999999)
          {
            v488 = 0;
            if (v378 != 0x9999999999999999 || v365 <= 0x9999999999999998)
            {
LABEL_702:
              v489 = 0;
              v490 = *(&v377 + 1) + v381;
              v491 = 0;
              if ((v382 & 1) == 0 && (v383 & 1) == 0)
              {
                if (v378 < 0)
                {
                  v491 = v488;
                }

                else
                {
                  v491 = 0;
                }

                if (v378 >= 0)
                {
                  v489 = v488;
                }

                else
                {
                  v489 = 0;
                }
              }

              if (!a5)
              {
                return result;
              }

              if (v27)
              {
                if (a5 != 1)
                {
                  v491 = 0;
                }

                if ((v491 & 1) == 0)
                {
                  if (a5 != 4 && a5 != 1)
                  {
                    v382 = 0;
                  }

                  if (v382 != 1)
                  {
LABEL_861:
                    if ((v383 | v489) == 1 && ((a5 & 0xFFFFFFFE) == 2 && v27 || (a5 & 0xFFFFFFFD) == 1 && !v27))
                    {
                      v516 = result - 1;
                      if ((__PAIR128__(v490, result) - 1) >> 64 == 0x314DC6448D93 && result == 0x38C15B0A00000000)
                      {
                        v516 = 0x378D8E63FFFFFFFFLL;
                        v385 = v24;
                      }
                    }

                    else
                    {
                      v516 = result;
                    }

LABEL_960:
                    if (v385 != 0x6000000000000000)
                    {
                      return v516;
                    }

                    if (v27)
                    {
                      v550 = 1;
                    }

                    else
                    {
                      v550 = 2;
                    }

                    if (v550 == a5)
                    {
                      result = 0;
                    }

                    else
                    {
                      result = 0x378D8E63FFFFFFFFLL;
                    }

                    *a6 |= 0x28u;
                    return result;
                  }
                }
              }

              else
              {
                if (a5 != 2)
                {
                  v491 = 0;
                }

                if ((v491 & 1) == 0)
                {
                  if (a5 != 4 && a5 != 2)
                  {
                    LOBYTE(v382) = 0;
                  }

                  if ((v382 & 1) == 0)
                  {
                    goto LABEL_861;
                  }
                }
              }

              v516 = result + 1;
              if (result == -1)
              {
                ++v490;
              }

              if (result == 0x378D8E63FFFFFFFFLL && v490 == 0x1ED09BEAD87C0)
              {
                v516 = 0x38C15B0A00000000;
                v385 = v24 + 0x4000000000000;
              }

              goto LABEL_960;
            }
          }

LABEL_701:
          *a6 |= 0x20u;
          v488 = 1;
          goto LABEL_702;
        }
      }

      else
      {
        v382 = 0;
        v385 = v24 + 0x2000000000000;
        if ((a5 & 0xFFFFFFFB) != 0)
        {
          v383 = 0;
          goto LABEL_701;
        }

        v383 = 0;
        if (v24 != 0x5FFE000000000000)
        {
          goto LABEL_701;
        }
      }

LABEL_804:
      result = 0;
      v520 = *a6 | 0x28;
      goto LABEL_846;
    }

    v384 = __PAIR128__(v9 - v23, v22) - v21;
    result = v384;
    if (v384 != 0)
    {
      if ((*(&v384 + 1) & 0x8000000000000000) != 0)
      {
        return v21 - v22;
      }

      return result;
    }

    return 0;
  }

  v573 = v23;
  v570 = a6;
  v571 = v26;
  v568 = 0x38C15B0A00000000;
  v569 = v24;
  v567 = v34 + (v25 >> 49) - (v24 >> 49);
  v90 = v567 - 54;
  v91 = 34 - v34;
  v572 = v21;
  while (1)
  {
    if (v91 < 20)
    {
      v96 = v9;
      v95 = v22;
      if (v91 >= 1)
      {
        v97 = qword_280A5D8C0[v91];
        v98 = HIDWORD(v97);
        if (v34 > 19)
        {
          v104 = v97 * v9;
          v105 = HIDWORD(v97) * v22;
          v106 = v97 * v22;
          v107 = qword_280A5D8C0[v91] * HIDWORD(v22) + v105 + HIDWORD(v106);
          v95 = v106 | (v107 << 32);
          v96 = v104 + v98 * HIDWORD(v22) + HIDWORD(v105) + HIDWORD(v107);
        }

        else
        {
          v99 = v97 * HIDWORD(v22);
          v100 = v97 * v22;
          v101 = v98 * v22;
          v102 = HIDWORD(v99) + v98 * HIDWORD(v22);
          v103 = v101 + v99 + HIDWORD(v100);
          v96 = v102 + HIDWORD(v103);
          v95 = v100 | (v103 << 32);
        }
      }
    }

    else
    {
      v92 = &qword_280A5D960[2 * (v91 - 20)];
      v93 = *v92 * HIDWORD(v22);
      v94 = HIDWORD(*v92) * v22 + v93 + ((*v92 * v22) >> 32);
      v95 = (*v92 * v22) | (v94 << 32);
      v96 = v92[1] * v22 + HIDWORD(*v92) * HIDWORD(v22) + HIDWORD(v93) + HIDWORD(v94);
    }

    v108 = v90 + 20;
    if ((v90 + 20) < 1)
    {
      v114 = 0;
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v119 = v573;
      v120 = v21;
      goto LABEL_236;
    }

    v109 = v90 + 19;
    v110 = v27;
    if (v108 > 0x13)
    {
      v113 = (*&qword_280A5D2B0[2 * v90] + __PAIR128__(v573, v21)) >> 64;
      v112 = qword_280A5D2B0[2 * v90] + v21;
    }

    else
    {
      v111 = qword_280A5D210[v109];
      v112 = v111 + v21;
      if (__CFADD__(v111, v21))
      {
        v113 = v573 + 1;
      }

      else
      {
        v113 = v573;
      }
    }

    v121 = HIDWORD(v112);
    v122 = qword_280A5DF70[2 * v109];
    v123 = qword_280A5DF70[2 * v109 + 1];
    v124 = v123 * HIDWORD(v112);
    v125 = HIDWORD(v124) + HIDWORD(v123) * HIDWORD(v112);
    v126 = HIDWORD(v123) * v112 + v124 + ((v123 * v112) >> 32);
    v127 = (v123 * v112) | (v126 << 32);
    v128 = v122 * HIDWORD(v112);
    v129 = v122 * v112;
    v130 = HIDWORD(v122) * v112 + v128 + HIDWORD(v129);
    v131 = HIDWORD(v128) + HIDWORD(v122) * v121 + HIDWORD(v130);
    v132 = v129 | (v130 << 32);
    v133 = v127 + v131;
    v134 = HIDWORD(v126) + __CFADD__(v127, v131) + v125;
    v135 = HIDWORD(v113);
    LODWORD(v131) = v113;
    v136 = v123 * HIDWORD(v113);
    v137 = v123 * v113;
    v138 = HIDWORD(v136) + HIDWORD(v123) * HIDWORD(v113);
    v139 = HIDWORD(v123) * v113 + v136 + HIDWORD(v137);
    v140 = HIDWORD(v139);
    v141 = v137 | (v139 << 32);
    v142 = v122 * HIDWORD(v113);
    v143 = v122 * v113;
    v144 = HIDWORD(v122) * v131 + v142 + HIDWORD(v143);
    v145 = v143 | (v144 << 32);
    v146 = __PAIR128__(v138, v141) + __PAIR128__(v140, HIDWORD(v142) + HIDWORD(v122) * v135 + HIDWORD(v144));
    v147 = v133 + v145;
    v148 = __CFADD__(v133, v145) + v146;
    v149 = __CFADD__(__CFADD__(v133, v145), v146);
    v120 = v134 + v148;
    v150 = __CFADD__(v134, v148) || v149;
    v119 = *(&v146 + 1) + v150;
    if (v108 >= 4)
    {
      v154 = qword_280A5E218[v109];
      if (v108 >= 0x17)
      {
        v152 = v154 & v119;
      }

      else
      {
        v152 = 0;
      }

      if (v108 >= 0x17)
      {
        v154 = -1;
      }

      v153 = v120 & v154;
      v155 = dword_280A5E190[v109];
      v156 = v155 <= 63;
      v157 = v120 >> v155;
      v158 = -v155;
      v159 = v119 >> v155;
      v160 = v119 >> v155;
      v161 = (v119 << v158) | v157;
      if (v156)
      {
        v119 = v159;
      }

      else
      {
        v119 = 0;
      }

      if (v156)
      {
        v120 = v161;
      }

      else
      {
        v120 = v160;
      }

      v27 = v110;
      v21 = v572;
      if (v108 > 0x16)
      {
        v165 = qword_280A5E328[v109];
        if (v152 <= v165)
        {
          if (v152 != v165)
          {
            goto LABEL_227;
          }

          if (!v153 && !v147 && !v132)
          {
            v153 = 0;
            goto LABEL_227;
          }
        }

        v166 = v152 == v165 && v153 == 0;
        if (v166 && __PAIR128__(v147, v132) <= xmmword_280A5E440[v109])
        {
          goto LABEL_217;
        }
      }

      else
      {
        v162 = qword_280A5E328[v109];
        if (v152)
        {
          v163 = 1;
        }

        else
        {
          v163 = v153 > v162;
        }

        if (!v163)
        {
          if (v153 != v162 || (v162 = v153, !(v147 | v132)))
          {
            v152 = 0;
LABEL_227:
            v118 = 1;
            v115 = v7 != v6;
            v114 = v7 == v6;
            goto LABEL_228;
          }
        }

        v164 = v152 == v162 > v153 && v153 == v162;
        if (v164 && __PAIR128__(v147, v132) <= xmmword_280A5E440[v109])
        {
          goto LABEL_218;
        }
      }

LABEL_214:
      v118 = 1;
      v114 = v7 != v6;
      v115 = v7 == v6;
      goto LABEL_228;
    }

    if (v147 > 0x8000000000000000 || (v147 == 0x8000000000000000 ? (v151 = v132 == 0) : (v151 = 1), !v151))
    {
      v27 = v110;
      v21 = v572;
      if (__PAIR128__(v147 ^ 0x8000000000000000, v132) < xmmword_280A5E440[v109])
      {
        v152 = 0;
LABEL_217:
        v153 = 0;
LABEL_218:
        v114 = 0;
        v115 = 0;
        v118 = 0;
        goto LABEL_228;
      }

      v152 = 0;
      v153 = 0;
      goto LABEL_214;
    }

    v152 = 0;
    v153 = 0;
    v118 = 1;
    v115 = v7 != v6;
    v114 = v7 == v6;
    v27 = v110;
    v21 = v572;
LABEL_228:
    v167 = v147 | v132 && v152 == 0;
    v168 = v167 && v153 == 0;
    if (v168 && __PAIR128__(v147, v132) <= xmmword_280A5E440[v109])
    {
      v114 = 0;
      v115 = 0;
      if ((v120 + v95))
      {
        v151 = v120-- == 0;
        v177 = v151;
        v119 -= v177;
        v117 = v7 != v6;
        v116 = v7 == v6;
      }

      else
      {
        v116 = v7 != v6;
        v117 = v7 == v6;
      }
    }

    else
    {
      v116 = 0;
      v117 = 0;
    }

LABEL_236:
    if (v7 == v6)
    {
      break;
    }

    v169 = v96 - v119;
    v207 = v95 >= v120;
    v170 = v95 - v120;
    v171 = !v207;
    v172 = v169 - v171;
    if ((v169 - v171) < 0)
    {
      v151 = v170 == 0;
      v170 = -v170;
      if (v151)
      {
        v172 = v171 - v169;
      }

      else
      {
        v172 = ~v172;
      }

      v173 = v571;
    }

    else
    {
      v173 = v27;
    }

    if (v172 < 0x314DC6448D93 || v172 == 0x314DC6448D93 && v170 < 0x38C15B0A00000000)
    {
      if (v108 < 1)
      {
        v319 = v90 + 19;
        goto LABEL_520;
      }
    }

    else
    {
      v176 = v172 != 0x314DC6448D93 || v170 != 0x38C15B0A00000000 || !v117 && !v114;
      if (v108 < 1 || v176)
      {
        if (v176)
        {
          v390 = 20;
        }

        else
        {
          v390 = 19;
        }

        v319 = v90 + v390;
LABEL_520:
        v391 = v172 == 0x1ED09BEAD87C0;
        v392 = v170 == 0x378D8E6400000000;
        v393 = !v391 || !v392;
        if (v391 && v392)
        {
          v231 = 0x314DC6448D93;
        }

        else
        {
          v231 = v172;
        }

        if (v393)
        {
          result = v170;
        }

        else
        {
          result = 0x38C15B0A00000000;
        }

        if (v393)
        {
          v394 = v569;
        }

        else
        {
          v394 = v569 + 0x2000000000000;
        }

        a6 = v570;
        v232 = a5;
        if (v319 >= 1)
        {
          v394 += v319 << 49;
        }

        goto LABEL_806;
      }
    }

    --v90;
    ++v91;
  }

  v231 = (__PAIR128__(v119, v120) + __PAIR128__(v96, v95)) >> 64;
  result = v120 + v95;
  a6 = v570;
  v232 = a5;
  if (v231 > 0x1ED09BEAD87C0)
  {
    goto LABEL_332;
  }

  v233 = (v567 - 34);
  if (result > 0x378D8E63FFFFFFFFLL)
  {
    if (v231 == 0x1ED09BEAD87C0)
    {
LABEL_332:
      if (result > 0xFFFFFFFFFFFFFFFALL)
      {
        ++v231;
      }

      v234 = (result + 5) >> 32;
      v235 = dword_280A5DF78 * v234;
      v236 = HIDWORD(v235) + unk_280A5DF7C * v234;
      v237 = unk_280A5DF7C * (result + 5) + v235 + ((dword_280A5DF78 * (result + 5)) >> 32);
      v238 = LODWORD(qword_280A5DF70[0]) * v234;
      v239 = HIDWORD(qword_280A5DF70[0]) * (result + 5) + v238 + ((LODWORD(qword_280A5DF70[0]) * (result + 5)) >> 32);
      v240 = (LODWORD(qword_280A5DF70[0]) * (result + 5)) | (v239 << 32);
      v241 = __PAIR128__(v236, (dword_280A5DF78 * (result + 5)) | (v237 << 32)) + __PAIR128__(HIDWORD(v237), HIDWORD(v238) + HIDWORD(qword_280A5DF70[0]) * v234 + HIDWORD(v239));
      v242 = HIDWORD(v231);
      v243 = v231;
      v244 = dword_280A5DF78 * HIDWORD(v231);
      v245 = HIDWORD(v244) + unk_280A5DF7C * HIDWORD(v231);
      v246 = unk_280A5DF7C * v231 + v244 + ((dword_280A5DF78 * v231) >> 32);
      v247 = HIDWORD(v246);
      v248 = (dword_280A5DF78 * v231) | (v246 << 32);
      v249 = LODWORD(qword_280A5DF70[0]) * HIDWORD(v231);
      v250 = LODWORD(qword_280A5DF70[0]) * v231;
      v251 = HIDWORD(qword_280A5DF70[0]) * v243 + v249 + HIDWORD(v250);
      v252 = v250 | (v251 << 32);
      v253 = __PAIR128__(v245, v248) + __PAIR128__(v247, HIDWORD(v249) + HIDWORD(qword_280A5DF70[0]) * v242 + HIDWORD(v251));
      v254 = v241 + v252;
      v207 = __CFADD__(__CFADD__(v241, v252), v253);
      v255 = __CFADD__(v241, v252) + v253;
      v256 = v207;
      result = *(&v241 + 1) + v255;
      if (__CFADD__(*(&v241 + 1), v255))
      {
        v257 = 1;
      }

      else
      {
        v257 = v256;
      }

      v231 = *(&v253 + 1) + v257;
      if (!(v254 | v240))
      {
        v115 = 0;
        v116 = 0;
        v117 = 0;
        v114 = 1;
        v118 = 1;
        v258 = v567;
        goto LABEL_800;
      }

      if (__PAIR128__(v254, v240) <= xmmword_280A5E440[0])
      {
        v258 = v567;
        if (v115)
        {
          goto LABEL_588;
        }

        if (v114)
        {
          v114 = 0;
          v116 = 0;
          v117 = 0;
          v151 = result-- == 0;
          v259 = v151;
          v231 -= v259;
          goto LABEL_798;
        }

        v525 = result - 1;
        if ((result & 1) == 0)
        {
          v525 = result;
        }

        v114 = 0;
        v115 = v116;
        v526 = !v116 && (result & 1) != 0;
        v117 = !v116 && (result & 1) == 0;
        if (!v116)
        {
          result = v525;
        }

        v118 = 1;
        v116 = v526;
      }

      else
      {
        v404 = v254 == 0x8000000000000000;
        if (!v240)
        {
          v404 = 0;
        }

        v258 = v567;
        if (v254 <= 0x8000000000000000 && !v404)
        {
LABEL_588:
          v115 = 0;
          v116 = 0;
          v117 = 0;
          v114 = 1;
          goto LABEL_799;
        }

        if (__PAIR128__(v254 & 0x7FFFFFFFFFFFFFFFLL, v240) <= xmmword_280A5E440[0])
        {
          v551 = v116 || v115;
          v552 = v117 || v114;
          if (v117)
          {
            v551 = v115;
            v553 = v116;
          }

          else
          {
            v553 = 0;
          }

          if (v118)
          {
            v114 = v552;
            v115 = v551;
            v116 = v553;
            v117 = 0;
          }

          v118 = v118;
          goto LABEL_800;
        }

        v114 = 0;
        v116 = 0;
        v117 = 0;
LABEL_798:
        v115 = 1;
LABEL_799:
        v118 = 1;
      }

LABEL_800:
      v233 = (v258 - 33);
    }

    else
    {
      v233 = (v567 - 34);
    }
  }

  v394 = v569 + (v233 << 49);
  if (v394 == 0x6000000000000000)
  {
    if ((a5 & 0xFFFFFFFB) == 0)
    {
      goto LABEL_804;
    }

    v394 = 0x6000000000000000;
    goto LABEL_807;
  }

  v173 = v27;
LABEL_806:
  v27 = v173;
  if (!v232)
  {
    goto LABEL_844;
  }

LABEL_807:
  if (v27)
  {
    if (v232 != 1 || !v115)
    {
      v521 = v232 == 1;
      goto LABEL_814;
    }

    goto LABEL_820;
  }

  if (v232 == 2 && v115)
  {
    goto LABEL_820;
  }

  v521 = v232 == 2;
LABEL_814:
  v522 = v521 || v232 == 4;
  if (v522 && v116)
  {
LABEL_820:
    v523 = result + 1;
    if (result == -1)
    {
      ++v231;
    }

    if (result == 0x378D8E63FFFFFFFFLL && v231 == 0x1ED09BEAD87C0)
    {
      v394 += 0x2000000000000;
      goto LABEL_835;
    }

LABEL_833:
    v568 = v523;
  }

  else if ((v114 || v117) && ((v232 & 0xFFFFFFFE) == 2 && v27 || (v232 & 0xFFFFFFFD) == 1 && !v27))
  {
    v523 = result - 1;
    if ((__PAIR128__(v231, result) - 1) >> 64 != 0x314DC6448D93 || result != 0x38C15B0A00000000)
    {
      goto LABEL_833;
    }

    v394 -= 0x2000000000000;
    v568 = 0x378D8E63FFFFFFFFLL;
  }

  else
  {
    v568 = result;
  }

LABEL_835:
  if (v394 == 0x6000000000000000)
  {
    if (v27)
    {
      v524 = 1;
    }

    else
    {
      v524 = 2;
    }

    if (v524 == v232)
    {
      result = 0;
    }

    else
    {
      result = 0x378D8E63FFFFFFFFLL;
    }

    *a6 |= 0x28u;
  }

  else
  {
    result = v568;
  }

LABEL_844:
  if (v118)
  {
    v520 = *a6 | 0x20;
LABEL_846:
    *a6 = v520;
  }

  return result;
}