@interface DOMAttr
- (BOOL)isId;
- (BOOL)specified;
- (DOMCSSStyleDeclaration)style;
- (DOMElement)ownerElement;
- (NSString)name;
- (NSString)value;
- (void)setValue:(NSString *)value;
@end

@implementation DOMAttr

- (NSString)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v130);
  internal = self->super.super._internal;
  v4 = *(internal + 12);
  v5 = *(v4 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    v6 = *(*(internal + 12) + 24);
    if (!v6)
    {
      goto LABEL_161;
    }

    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    v7 = *(v6 + 4);
    if (v7 < 0 || ((v8 = *(v5 + 4), v9 = __OFADD__(v7, 1), v10 = v7 + 1, !v9) ? (v11 = 0) : (v11 = 1), v8 < 0))
    {
LABEL_162:
      __break(0xC471u);
      JUMPOUT(0x1C79FFB58);
    }

    while (1)
    {
      if (v11)
      {
        goto LABEL_162;
      }

      v12 = v8 + v10;
      if (__OFADD__(v8, v10))
      {
        goto LABEL_162;
      }

      v13 = *(v5 + 16);
      if (v6)
      {
        v14 = (*(v5 + 16) & 4) == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        LOBYTE(v13) = *(v6 + 16);
      }

      if ((v13 & 4) != 0)
      {
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_162;
        }

        WTF::tryFastCompactMalloc((v12 + 20));
        v15 = v131;
        if (!v131)
        {
          goto LABEL_162;
        }

        v19 = v131 + 5;
        *v131 = 2;
        v15[1] = v12;
        *(v15 + 1) = v15 + 5;
        v15[4] = 4;
        v17 = *(v5 + 8);
        v20 = *(v5 + 4);
        if ((*(v5 + 16) & 4) != 0)
        {
          if (v20)
          {
            if (v20 == 1)
            {
              *v19 = v17->i8[0];
            }

            else
            {
              memcpy(v15 + 5, v17, v20);
            }
          }

LABEL_84:
          v65 = *(v5 + 4);
          if (v65 < v12)
          {
            v19[v65] = 58;
            v50 = &v19[v65 + 1];
            if (!v6)
            {
              goto LABEL_105;
            }

            v17 = *(v6 + 8);
            v66 = *(v6 + 4);
            if ((*(v6 + 16) & 4) == 0)
            {
              v67 = (v50 + v66);
              if (v66 >= 0x10)
              {
                v68 = v50 + (v66 & 0xFFFFFFF0);
                do
                {
                  v69 = vld2q_s8(v17->i8);
                  v17 += 2;
                  *v50 = v69;
                  v50 += 16;
                }

                while (v50 != v68);
              }

              if (v50 != v67)
              {
                v70 = v15 + v65 + v66;
                v71 = v70 - v50 + 21;
                if (v71 < 4 || ((v72 = v15 + v66 + v65 + 21, v50 < &v17[2].u64[1] + 2 * v70 + -2 * v50 + 2) ? (v73 = v17 >= v72) : (v73 = 1), !v73))
                {
                  v75 = v50;
                  v76 = v17;
                  goto LABEL_104;
                }

                if (v71 >= 0x20)
                {
                  v74 = v71 & 0xFFFFFFFFFFFFFFE0;
                  v117 = v17 + 2;
                  v118 = (v50 + 16);
                  v119 = v71 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v121 = v117[-2];
                    v120 = v117[-1];
                    v123 = *v117;
                    v122 = v117[1];
                    v117 += 4;
                    v118[-1] = vuzp1q_s8(v121, v120);
                    *v118 = vuzp1q_s8(v123, v122);
                    v118 += 2;
                    v119 -= 32;
                  }

                  while (v119);
                  if (v71 != v74)
                  {
                    if ((v71 & 0x1C) == 0)
                    {
                      v76 = (v17 + 2 * v74);
                      v75 = (v50 + v74);
                      goto LABEL_104;
                    }

                    goto LABEL_152;
                  }
                }

                else
                {
                  v74 = 0;
LABEL_152:
                  v75 = (v50 + (v71 & 0xFFFFFFFFFFFFFFFCLL));
                  v76 = (v17 + 2 * (v71 & 0xFFFFFFFFFFFFFFFCLL));
                  v124 = (v17 + 2 * v74);
                  v125 = (v50 + v74);
                  v126 = v74 - (v71 & 0xFFFFFFFFFFFFFFFCLL);
                  do
                  {
                    v127 = *v124++;
                    *v125++ = vuzp1_s8(v127, v127).u32[0];
                    v126 += 4;
                  }

                  while (v126);
                  if (v71 != (v71 & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    do
                    {
LABEL_104:
                      v77 = v76->i8[0];
                      v76 = (v76 + 2);
                      *v75++ = v77;
                    }

                    while (v75 != v67);
                  }
                }
              }

LABEL_105:
              if (!v6)
              {
                goto LABEL_108;
              }

LABEL_106:
              if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) != 2)
              {
                goto LABEL_108;
              }

LABEL_107:
              WTF::StringImpl::destroy(v6, v17);
              goto LABEL_108;
            }

            if (!v66)
            {
              goto LABEL_106;
            }

            if (v66 == 1)
            {
              *v50 = v17->i8[0];
              if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) != 2)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            }

LABEL_120:
            memcpy(v50, v17, v66);
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              goto LABEL_107;
            }

LABEL_108:
            if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v5, v17);
            }

LABEL_110:
            atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
            MEMORY[0x1CCA63450](&v129, v15);
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v78);
            }

            v79 = 0;
            v80 = v129;
            v129 = 0;
            if (v80)
            {
              goto LABEL_113;
            }

            goto LABEL_115;
          }

          goto LABEL_160;
        }

        v21 = &v19[v20];
        if (v20 < 0x10)
        {
          v22 = (v15 + 5);
          if (v19 == v21)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v22 = (v15 + 5);
          do
          {
            v23 = vld2q_s8(v17->i8);
            v17 += 2;
            *v22 = v23;
            v22 += 16;
          }

          while (v22 != &v19[v20 & 0xFFFFFFF0]);
          if (v22 == v21)
          {
            goto LABEL_84;
          }
        }

        v34 = v15 + v20;
        v35 = v15 + v20 - v22 + 20;
        if (v35 < 4 || (v22 < &v17[2].u64[1] + 2 * v34 + -2 * v22 ? (v36 = v17 >= v34 + 20) : (v36 = 1), !v36))
        {
          v42 = v22;
          v43 = v17;
          goto LABEL_59;
        }

        if (v35 < 0x20)
        {
          v37 = 0;
          goto LABEL_128;
        }

        v37 = v35 & 0xFFFFFFFFFFFFFFE0;
        v86 = v17 + 2;
        v87 = (v22 + 16);
        v88 = v35 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v90 = v86[-2];
          v89 = v86[-1];
          v92 = *v86;
          v91 = v86[1];
          v86 += 4;
          v87[-1] = vuzp1q_s8(v90, v89);
          *v87 = vuzp1q_s8(v92, v91);
          v87 += 2;
          v88 -= 32;
        }

        while (v88);
        if (v35 == v37)
        {
          goto LABEL_84;
        }

        if ((v35 & 0x1C) != 0)
        {
LABEL_128:
          v42 = (v22 + (v35 & 0xFFFFFFFFFFFFFFFCLL));
          v43 = (v17 + 2 * (v35 & 0xFFFFFFFFFFFFFFFCLL));
          v93 = (v17 + 2 * v37);
          v94 = (v22 + v37);
          v95 = v37 - (v35 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v96 = *v93++;
            *v94++ = vuzp1_s8(v96, v96).u32[0];
            v95 += 4;
          }

          while (v95);
          if (v35 == (v35 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_84;
          }
        }

        else
        {
          v43 = (v17 + 2 * v37);
          v42 = (v22 + v37);
        }

        do
        {
LABEL_59:
          v44 = v43->i8[0];
          v43 = (v43 + 2);
          *v42++ = v44;
        }

        while (v42 != v21);
        goto LABEL_84;
      }

      if (v12 > 0x7FFFFFEF)
      {
        goto LABEL_162;
      }

      WTF::tryFastCompactMalloc((2 * v12 + 20));
      v15 = v131;
      if (!v131)
      {
        goto LABEL_162;
      }

      v16 = v131 + 5;
      *v131 = 2;
      v15[1] = v12;
      *(v15 + 1) = v15 + 5;
      v15[4] = 0;
      v17 = *(v5 + 8);
      v18 = *(v5 + 4);
      if ((*(v5 + 16) & 4) != 0)
      {
        v24 = &v16[v18];
        if (v18 < 0x40)
        {
          v25 = (v15 + 5);
          if (v16 == v24)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v25 = &v16[v18 & 0xFFFFFFC0];
          v26 = 0uLL;
          v27 = (v15 + 5);
          do
          {
            v132.val[0] = *v17;
            v28 = v17[1];
            v134.val[0] = v17[2];
            v29 = v17[3];
            v17 += 4;
            v30 = v29;
            v134.val[1] = 0uLL;
            v136.val[0] = v28;
            v132.val[1] = 0uLL;
            v31 = v27;
            vst2q_s8(v31, v132);
            v31 += 32;
            v136.val[1] = 0uLL;
            vst2q_s8(v31, v136);
            v32 = v27 + 64;
            vst2q_s8(v32, v134);
            v33 = v27 + 96;
            vst2q_s8(v33, *(&v26 - 1));
            v27 += 128;
          }

          while (v27 != v25);
          if (v25 == v24)
          {
            goto LABEL_65;
          }
        }

        v38 = v15 + 2 * v18 - v25 + 18;
        if (v38 < 0xE || (v25 < v17->u64 + (v38 >> 1) + 1 ? (v39 = v17 >= (v38 & 0xFFFFFFFFFFFFFFFELL) + v25 + 2) : (v39 = 1), !v39))
        {
          v45 = v17;
          v46 = v25;
          goto LABEL_62;
        }

        v40 = (v38 >> 1) + 1;
        if (v38 >= 0x3E)
        {
          v41 = v40 & 0xFFFFFFFFFFFFFFE0;
          v97 = (v25 + 32);
          v98 = &v17[1];
          v99 = v40 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v100 = *v98[-2].i8;
            v101 = vmovl_u8(*v98);
            v102 = vmovl_high_u8(*v98->i8);
            v97[-2] = vmovl_u8(*v100.i8);
            v97[-1] = vmovl_high_u8(v100);
            *v97 = v101;
            v97[1] = v102;
            v97 += 4;
            v98 += 4;
            v99 -= 32;
          }

          while (v99);
          if (v40 == v41)
          {
            goto LABEL_65;
          }

          if ((v40 & 0x18) == 0)
          {
            v46 = (v25 + 2 * v41);
            v45 = (v17 + v41);
            do
            {
LABEL_62:
              v47 = v45->u8[0];
              v45 = (v45 + 1);
              *v46++ = v47;
            }

            while (v46 != v24);
            goto LABEL_65;
          }
        }

        else
        {
          v41 = 0;
        }

        v45 = (v17 + (v40 & 0xFFFFFFFFFFFFFFF8));
        v46 = (v25 + 2 * (v40 & 0xFFFFFFFFFFFFFFF8));
        v103 = (v25 + 2 * v41);
        v104 = &v17->i8[v41];
        v105 = v41 - (v40 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v106 = *v104++;
          *v103++ = vmovl_u8(v106);
          v105 += 8;
        }

        while (v105);
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_62;
        }
      }

      else if (v18)
      {
        if (v18 == 1)
        {
          *v16 = v17->i16[0];
        }

        else
        {
          memcpy(v15 + 5, v17, 2 * v18);
        }
      }

LABEL_65:
      v48 = *(v5 + 4);
      if (v48 < v12)
      {
        v49 = &v16[v48];
        *v49 = 58;
        v50 = (v49 + 1);
        if (!v6)
        {
          goto LABEL_105;
        }

        v17 = *(v6 + 8);
        v51 = *(v6 + 4);
        if ((*(v6 + 16) & 4) == 0)
        {
          if (!v51)
          {
            goto LABEL_106;
          }

          if (v51 == 1)
          {
            *v50 = v17->i16[0];
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          }

          v66 = 2 * v51;
          goto LABEL_120;
        }

        v52 = (v50 + 2 * v51);
        if (v51 >= 0x40)
        {
          v53 = v50 + 2 * (v51 & 0xFFFFFFC0);
          v54 = 0uLL;
          do
          {
            v133.val[0] = *v17;
            v55 = v17[1];
            v135.val[0] = v17[2];
            v56 = v17[3];
            v17 += 4;
            v57 = v56;
            v135.val[1] = 0uLL;
            v137.val[0] = v55;
            v133.val[1] = 0uLL;
            v58 = v50;
            vst2q_s8(v58, v133);
            v58 += 32;
            v137.val[1] = 0uLL;
            vst2q_s8(v58, v137);
            v59 = (v50 + 64);
            vst2q_s8(v59, v135);
            v60 = (v50 + 96);
            vst2q_s8(v60, *(&v54 - 1));
            v50 += 128;
          }

          while (v50 != v53);
          v50 = v53;
        }

        if (v50 == v52)
        {
          goto LABEL_105;
        }

        v61 = v15 + 2 * v48 + 2 * v51 - v50 + 20;
        if (v61 < 0xE || v50 < v17->u64 + (v61 >> 1) + 1 && v17 < (v61 & 0xFFFFFFFFFFFFFFFELL) + v50 + 2)
        {
          v62 = v17;
          v63 = v50;
          goto LABEL_81;
        }

        v84 = (v61 >> 1) + 1;
        if (v61 >= 0x3E)
        {
          v85 = v84 & 0xFFFFFFFFFFFFFFE0;
          v107 = (v50 + 32);
          v108 = &v17[1];
          v109 = v84 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v110 = *v108[-2].i8;
            v111 = vmovl_u8(*v108);
            v112 = vmovl_high_u8(*v108->i8);
            v107[-2] = vmovl_u8(*v110.i8);
            v107[-1] = vmovl_high_u8(v110);
            *v107 = v111;
            v107[1] = v112;
            v107 += 4;
            v108 += 4;
            v109 -= 32;
          }

          while (v109);
          if (v84 == v85)
          {
            goto LABEL_105;
          }

          if ((v84 & 0x18) == 0)
          {
            v63 = (v50 + 2 * v85);
            v62 = (v17 + v85);
            do
            {
LABEL_81:
              v64 = v62->u8[0];
              v62 = (v62 + 1);
              *v63++ = v64;
            }

            while (v63 != v52);
            goto LABEL_105;
          }
        }

        else
        {
          v85 = 0;
        }

        v62 = (v17 + (v84 & 0xFFFFFFFFFFFFFFF8));
        v63 = (v50 + 2 * (v84 & 0xFFFFFFFFFFFFFFF8));
        v113 = (v50 + 2 * v85);
        v114 = &v17->i8[v85];
        v115 = v85 - (v84 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v116 = *v114++;
          *v113++ = vmovl_u8(v116);
          v115 += 8;
        }

        while (v115);
        if (v84 == (v84 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_105;
        }

        goto LABEL_81;
      }

LABEL_160:
      __break(1u);
LABEL_161:
      v8 = *(v5 + 4);
      v10 = 1;
      v11 = 0;
      if (v8 < 0)
      {
        goto LABEL_162;
      }
    }
  }

  v15 = *(v4 + 24);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    goto LABEL_110;
  }

  v128 = &stru_1F472E7E8;
  v15 = 0;
  v79 = 1;
  v80 = &stru_1F472E7E8;
  v129 = 0;
  if (&stru_1F472E7E8)
  {
LABEL_113:
    v81 = v80;
    v82 = v129;
    v129 = 0;
    if (v82)
    {
    }
  }

LABEL_115:
  if ((v79 & 1) == 0 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v78);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v130, v78);
  return &v80->isa;
}

- (BOOL)specified
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v2);
  return 1;
}

- (NSString)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Attr::value(&v11, self->super.super._internal);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (void)setValue:(NSString *)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  WTF::AtomStringImpl::add(&v10, value, v4);
  v6 = v10;
  WebCore::Attr::setValue();
  if (v8 == 1 && v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v5);
}

- (DOMElement)ownerElement
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v3 = *(self->super.super._internal + 11);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = kit(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

- (BOOL)isId
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v4 = *(self->super.super._internal + 12);
  v5 = *MEMORY[0x1E69E2B58];
  v6 = v4 == *MEMORY[0x1E69E2B58] || *(v4 + 24) == *(v5 + 24) && *(v4 + 32) == *(v5 + 32);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v6;
}

- (DOMCSSStyleDeclaration)style
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::Attr::style(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

@end