@interface CRFormLabelFinder
+ (double)_labelMatchingCostForRegion:(id)a3 field:(id)a4 position:(unint64_t *)a5;
+ (id)labelRegionForField:(id)a3 inRegions:(id)a4;
+ (id)parseAndAssignLabelForField:(id)a3 regions:(id)a4 associatedLabels:(id)a5 labelRegions:(void *)a6;
+ (vector<std::tuple<double,)labelRegionsForField:(CROutputRegion *)> inRegions:()std:()CRFormFieldLabelPosition :(CROutputRegion *>>> *__return_ptr)retstr allocator<std:(id)a2 :(SEL)a3 tuple<double;
@end

@implementation CRFormLabelFinder

+ (double)_labelMatchingCostForRegion:(id)a3 field:(id)a4 position:(unint64_t *)a5
{
  v7 = a3;
  v8 = a4;
  if (v7 != v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = 0;
        goto LABEL_12;
      }

      v9 = v7;
      v10 = [v9 text];
      v11 = v10;
      if (qword_1ED95FFE0 == -1)
      {
        if (!v10)
        {
          goto LABEL_54;
        }
      }

      else
      {
        dispatch_once(&qword_1ED95FFE0, &__block_literal_global_11);
        if (!v11)
        {
          goto LABEL_54;
        }
      }

      if ([v11 length])
      {
        v12 = [v11 characterAtIndex:0];
        if (([_MergedGlobals_18 characterIsMember:v12] & 1) != 0 || (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1B42AF490, vaddq_s32(vdupq_n_s32(v12), xmmword_1B42AF480)))) & 1) != 0 || (v12 - 44032) >> 2 < 0xAE9 || ublock_getCode(v12) == UBLOCK_CURRENCY_SYMBOLS)
        {
          goto LABEL_8;
        }

        if ([v11 length] == 1)
        {
          goto LABEL_54;
        }

        if ([v11 length] > 3)
        {
LABEL_8:
        }

        else
        {
          v52 = [v11 _crStringByReplacingCharactersInSet:qword_1ED95FFD8 withString:&stru_1F2BB4348];
          v53 = [v52 length];

          if (!v53)
          {
            v15 = 1.79769313e308;
            goto LABEL_57;
          }
        }

        v13 = [v9 text];
        v14 = [v13 _crStringEndsWithColon];

LABEL_12:
        v9 = [v7 boundingQuad];
        v11 = [v8 boundingQuad];
        [v9 midPoint];
        v55 = v16;
        v18 = v17;
        [v11 midPoint];
        v54 = v19;
        v21 = v20;
        [v11 size];
        v23 = v22;
        [v11 topLeft];
        v25 = v24;
        [v9 topRight];
        if (v18 < v21)
        {
          v27 = v25 - v26;
          v28 = 9.6386522;
          if (!v14)
          {
            v28 = 8.0;
          }

          if (v27 < v28 * v23 && v27 > v23 * -3.1956241 && vabdd_f64(v55, v54) < v23 * 0.637716056)
          {
            v29 = 1.03271618;
            if (v14)
            {
              v29 = 1.18845813;
            }

            if (a5)
            {
              *a5 = 3;
            }

            v30 = fmax(v27, 0.0);
LABEL_33:
            v15 = v29 * v30;
LABEL_56:

LABEL_57:
            goto LABEL_58;
          }
        }

        [v9 topRight];
        v32 = v31;
        [v11 topRight];
        v34 = v33;
        [v9 topLeft];
        v36 = v35;
        [v11 topLeft];
        v38 = v37;
        [v11 size];
        v40 = v39;
        [v11 size];
        v41 = fmax(fmin(v32, v34) - fmax(v36, v38), 0.0);
        if (v41 <= fmin(v40 * 0.2, v42 * 2.5))
        {
          [v9 size];
          if (v41 <= v43 * 0.8)
          {
            goto LABEL_40;
          }
        }

        v30 = v54 - v55;
        if (v54 - v55 > v23 * 0.403263008)
        {
          v44 = 2.2217905;
          if (v14)
          {
            v44 = 3.22780074;
          }

          if (v30 < v44 * v23)
          {
            v29 = 3.66674774;
            if (v14)
            {
              v29 = 2.6;
            }

            if (a5)
            {
              *a5 = 1;
            }

            goto LABEL_33;
          }
        }

        if (v23 * -0.134254297 >= -v30 || v23 * 3.69995893 <= -v30)
        {
LABEL_40:
          [v9 topLeft];
          v47 = v46;
          [v11 topRight];
          if (v18 <= v21 || (v49 = v48, [v8 fieldType] != 2) || (v50 = v47 - v49, v47 - v49 >= v23 * 4.94467888) || v50 <= v23 * -1.42588897 || vabdd_f64(v55, v54) >= v23 * 0.933868987)
          {
            if (a5)
            {
              *a5 = 0;
            }

            goto LABEL_55;
          }

          if (a5)
          {
            *a5 = 4;
          }

          v30 = fmax(v50, 0.0);
          v45 = 2.48167153;
        }

        else
        {
          if (a5)
          {
            *a5 = 2;
          }

          v45 = -4.86195604;
        }

        v15 = v30 * v45;
        goto LABEL_56;
      }

LABEL_54:

LABEL_55:
      v15 = 1.79769313e308;
      goto LABEL_56;
    }
  }

  v15 = 1.79769313e308;
LABEL_58:

  return v15;
}

+ (id)labelRegionForField:(id)a3 inRegions:(id)a4
{
  [a1 labelRegionsForField:a3 inRegions:a4];
  if (v6[0] == v6[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v6[0] + 16);
  }

  v7 = v6;
  std::vector<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v7);

  return v4;
}

+ (vector<std::tuple<double,)labelRegionsForField:(CROutputRegion *)> inRegions:()std:()CRFormFieldLabelPosition :(CROutputRegion *>>> *__return_ptr)retstr allocator<std:(id)a2 :(SEL)a3 tuple<double
{
  v43 = *MEMORY[0x1E69E9840];
  v36 = a4;
  v7 = a5;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v32 = retstr;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v8)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_30;
  }

  v9 = 0;
  v10 = 0;
  v34 = *v38;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v38 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v37 + 1) + 8 * i);
      v41 = 0;
      [a2 _labelMatchingCostForRegion:v12 field:v36 position:&v41];
      v14 = v13;
      if (v13 != 1.79769313e308)
      {
        v15 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v15;

          if (!v15)
          {
            continue;
          }

          v16 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3) + 1;
          if (v16 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (-v9 >> 3) > v16)
          {
            v16 = 0x5555555555555556 * (-v9 >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v9 >> 3) >= 0x555555555555555)
          {
            v17 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            if (v17 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v18 = (8 * ((v10 - v9) >> 3));
          *v18 = v14;
          v18[1] = v41;
          v18[2] = v15;
          v19 = v18 - (v10 - v9);
          if (v9 != v10)
          {
            v20 = v9;
            v21 = v9;
            v22 = v18 - (v10 - v9);
            do
            {
              *v22 = *v21;
              v23 = v21[2];
              v21[2] = 0;
              *(v22 + 2) = v23;
              v21 += 3;
              v22 += 24;
            }

            while (v21 != v10);
            do
            {

              v20 += 3;
            }

            while (v20 != v10);
          }

          v10 = v18 + 3;
          v32->var0 = v19;
          v32->var1 = v18 + 3;
          v32->var2 = 0;
          if (v9)
          {
            operator delete(v9);
          }

          v9 = v19;
          v32->var1 = v10;
        }
      }
    }

    v8 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  }

  while (v8);
LABEL_30:

  if (v10 - v9 < 1)
  {
    v30 = 0;
    v26 = 0;
  }

  else
  {
    v25 = MEMORY[0x1E69E5398];
    v26 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
    while (1)
    {
      v27 = operator new(24 * v26, v25);
      if (v27)
      {
        break;
      }

      v28 = v26 >> 1;
      v29 = v26 > 1;
      v26 >>= 1;
      if (!v29)
      {
        v30 = 0;
        v26 = v28;
        goto LABEL_37;
      }
    }

    v30 = v27;
  }

LABEL_37:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3), v30, v26, v24);
  if (v30)
  {
    operator delete(v30);
  }

  return result;
}

+ (id)parseAndAssignLabelForField:(id)a3 regions:(id)a4 associatedLabels:(id)a5 labelRegions:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [CRFormLabelFinder labelRegionForField:v9 inRegions:v10];
  if (v12 && [v9 fieldSource] == 1)
  {
    v13 = [v11 objectForKeyedSubscript:v12];
    if (v13)
    {
      if (![CRFormUtilities isRegion:v12 verticallyAlignedWithRegionBelow:v9 maxRelativeDistance:10.0]|| ![CRFormUtilities isRegion:v13 verticallyAlignedWithRegionBelow:v9 maxRelativeDistance:10.0])
      {

        v12 = 0;
      }
    }

    else
    {
      [v11 setObject:v9 forKeyedSubscript:v12];
    }
  }

  [CRFormLabelFinder labelRegionsForField:v9 inRegions:v10];
  v14 = *a6;
  if (*a6)
  {
    v15 = *(a6 + 1);
    v16 = *a6;
    if (v15 != v14)
    {
      do
      {
        v17 = v15 - 3;

        v15 = v17;
      }

      while (v17 != v14);
      v16 = *a6;
    }

    *(a6 + 1) = v14;
    operator delete(v16);
    *a6 = 0;
    *(a6 + 1) = 0;
    *(a6 + 2) = 0;
  }

  *a6 = v21;
  *(a6 + 2) = v22;
  v22 = 0;
  v21 = 0uLL;
  v23 = &v21;
  std::vector<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v18 = CRCastAsClass<CRFormFieldOutputRegion>(v9);
  v19 = v18;
  if (v18)
  {
    [v18 setLabelRegion:v12];
  }

  return v12;
}

@end