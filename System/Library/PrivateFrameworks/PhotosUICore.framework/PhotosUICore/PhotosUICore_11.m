uint64_t sub_1A3D86594(CGRect *__dst, CGRect *__src, CGRect *a3, CGRect *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      x = v4->origin.x;
      y = v4->origin.y;
      width = v4->size.width;
      height = v4->size.height;
      MaxY = CGRectGetMaxY(*v6);
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      if (CGRectGetMaxY(v34) < MaxY)
      {
        break;
      }

      p_origin = &v4->origin;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    p_origin = &v6->origin;
    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = p_origin[1];
    v7->origin = *p_origin;
    v7->size = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v23 = v6 - 1;
    --v5;
    v24 = v14;
    do
    {
      v25 = v5 + 1;
      v35.origin.x = *(v24 - 32);
      v35.origin.y = *(v24 - 24);
      v24 -= 32;
      v35.size.width = *(v24 + 16);
      v35.size.height = *(v24 + 24);
      v26 = v6[-1].origin.x;
      v27 = v6[-1].origin.y;
      v28 = v6[-1].size.width;
      v29 = v6[-1].size.height;
      v30 = CGRectGetMaxY(v35);
      v36.origin.x = v26;
      v36.origin.y = v27;
      v36.size.width = v28;
      v36.size.height = v29;
      if (CGRectGetMaxY(v36) < v30)
      {
        if (v25 != v6)
        {
          size = v6[-1].size;
          v5->origin = v23->origin;
          v5->size = size;
        }

        if (v14 <= v4 || (--v6, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v25 != v14)
      {
        v31 = *(v24 + 16);
        v5->origin = *v24;
        v5->size = v31;
      }

      --v5;
      v14 = v24;
    }

    while (v24 > v4);
    v14 = v24;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_1A3D867F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A3D86884(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_1A3D868AC()
{
  if (!qword_1EB126D40)
  {
    v0 = sub_1A524D104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126D40);
    }
  }
}

char *sub_1A3D86904(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A3D86A18(0, &unk_1EB1372B0, type metadata accessor for CGRect);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void sub_1A3D86A18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524EA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id ParallaxAssetViewLayoutProvider.__allocating_init(overlapTestAreas:headroomFractionRange:)(uint64_t a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC12PhotosUICore31ParallaxAssetViewLayoutProvider_renderContext;
  *&v7[v8] = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  *&v7[OBJC_IVAR____TtC12PhotosUICore31ParallaxAssetViewLayoutProvider_overlapTestAreas] = a1;
  v9 = &v7[OBJC_IVAR____TtC12PhotosUICore31ParallaxAssetViewLayoutProvider_headroomFractionRange];
  *v9 = a2;
  v9[1] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id ParallaxAssetViewLayoutProvider.init(overlapTestAreas:headroomFractionRange:)(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC12PhotosUICore31ParallaxAssetViewLayoutProvider_renderContext;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  *&v3[OBJC_IVAR____TtC12PhotosUICore31ParallaxAssetViewLayoutProvider_overlapTestAreas] = a1;
  v8 = &v3[OBJC_IVAR____TtC12PhotosUICore31ParallaxAssetViewLayoutProvider_headroomFractionRange];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for ParallaxAssetViewLayoutProvider();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1A3D86C10(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v148 = a4;
  v117[3] = a3;
  v150 = a2;
  v144 = a5;
  v145 = a6;
  v12 = sub_1A5246F24();
  v117[4] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v117[1] = v117 - v15;
  [a1 timeRect];
  v17 = v16;
  v19 = v18;
  v147 = v20;
  v146 = v21;
  v22 = *(MEMORY[0x1E695EFF8] + 8);
  v153 = *MEMORY[0x1E695EFF8];
  v151 = v22;
  v149 = a1;
  [a1 screenSize];
  v24 = v23;
  v26 = v25;
  v27 = [a2 faceRegions];
  v28 = MEMORY[0x1E69E7CA0];
  v117[5] = v12;
  if (v27)
  {
    v29 = v27;
    sub_1A524CA34();
  }

  v30 = objc_opt_self();
  v31 = sub_1A524CA14();

  [v30 bestFaceRectWithImageSize:v31 deviceSize:a7 faceRegions:{a8, v24, v26}];
  v142 = v33;
  v143 = v32;
  v35 = v34;
  v141 = v36;

  v37 = v150;
  [v150 preferredCropRect];
  y = v151 + v39 * a8;
  x = v153 + v38 * a7;
  height = v41 * a8;
  width = v40 * a7;
  [v37 acceptableCropRect];
  v123 = v43;
  v124 = v42;
  v122 = v44;
  v125 = v45;
  v126 = v19;
  if (v148 == 1 || v148 == 2 && (v46 = [v37 petRegions]) != 0 && (v47 = v46, v48 = sub_1A524CA34(), v47, v28 = *(v48 + 16), v37 = v150, , v28))
  {
    v49 = v153 + v143 * a7;
    v50 = v151 + v142 * a8;
    v51 = v35;
    v52 = v35 * a7;
    v53 = v141 * a8;
    v156.origin.x = v49;
    v156.origin.y = v50;
    v156.size.width = v52;
    v156.size.height = v141 * a8;
    if (!CGRectIsEmpty(v156))
    {
      v157.origin.x = v49;
      v157.origin.y = v50;
      v157.size.width = v52;
      v157.size.height = v53;
      v160.origin.y = y;
      v160.origin.x = x;
      v160.size.height = height;
      v160.size.width = width;
      v158 = CGRectUnion(v157, v160);
      y = v158.origin.y;
      x = v158.origin.x;
      height = v158.size.height;
      width = v158.size.width;
    }

    v35 = v51;
  }

  v54 = [v37 petRegions];
  v154 = a8;
  v152 = a7;
  v127 = v17;
  if (v54)
  {
    v55 = v54;
    v56 = sub_1A524CA34();

    v28 = *(v56 + 16);
    v37 = v150;

    v57 = v28 != 0;
  }

  else
  {
    v57 = 0;
  }

  [v37 preferredCropRect];
  v59 = v58;
  v131 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  [v37 acceptableCropRect];
  v67 = v66;
  v129 = v68;
  v130 = v66;
  v128 = v69;
  v155 = v70;
  [v37 gazeAreaRect];
  v135 = v72;
  v136 = v71;
  v133 = v74;
  v134 = v73;
  v75 = v141;
  v116 = v35;
  v132 = v35;
  v76 = v142;
  v77 = v143;
  v78 = v59;
  v79 = v67;
  v81 = v128;
  v80 = v129;
  v82 = v148;
  [v30 effectivePreferredRectForClassification:v148 havePetFaces:v57 sourcePreferredCropRectNormalized:v78 sourceAcceptableCropRectNormalized:v61 sourceFaceAreaRectNormalized:{v63, v65, v79, v129, v128, v155, *&v143, *&v142, *&v116, *&v141}];
  v120 = v84;
  v121 = v83;
  v118 = v86;
  v119 = v85;
  [v30 effectiveAcceptableRectForClassification:v82 havePetFaces:v57 sourcePreferredCropRectNormalized:v131 sourceAcceptableCropRectNormalized:v61 sourceFaceAreaRectNormalized:v63 sourceGazeAreaRectNormalized:{v65, v130, v80, v81, v155, *&v77, *&v76, *&v132, *&v75, v136, v135, v134, v133}];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = v149;
  [v149 screenSize];
  v97 = v96;
  [v95 screenSize];
  v99 = v152;
  if (v152 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v152 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v100 = v154;
  if ((*&v152 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v154 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  if (v154 > -9.22337204e18)
  {
    if (v154 < 9.22337204e18)
    {
      [objc_opt_self() bestCropRectV2ForAspectRatio:v99 zoom:v100 sourcePixelWidth:0 sourcePixelHeight:v97 / v98 sourceEssentialAreaRect:1.0 sourceSecondaryEssentialAreaRect:v88 outputCropScore:{v90, v92, v94, v121, v120, v119, v118}];
      PXRectScaleFromCenter();
    }

    goto LABEL_43;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  v101 = MEMORY[0x1A59097F0](0, &_OBJC_LABEL_PROTOCOL___PXActivityActionDelegate);
  v105 = 0;
  while (1)
  {
    if (v28)
    {
      v102 = MEMORY[0x1A59097F0](v105, &_OBJC_LABEL_PROTOCOL___PXActivityActionDelegate);
    }

    else
    {
      if (v105 >= &OBJC_PROTOCOL___PXDisplayLinkProtocol)
      {
        goto LABEL_38;
      }

      v102 = *(&_OBJC_LABEL_PROTOCOL___PXActivityActionDelegate + v105 + 4);
    }

    v103 = v102;
    v104 = (v105 + 1);
    if (__OFADD__(v105, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    [(__objc2_prot *)v102 visibleRect];
    v161.origin.x = v88;
    v161.origin.y = v90;
    v161.size.width = v97;
    *&v161.size.height = v150;
    if (CGRectEqualToRect(v159, v161))
    {
      break;
    }

    ++v105;
    if (v104 == &_OBJC_LABEL_PROTOCOL___PXActivityActionDelegate)
    {

      v103 = 0;
      goto LABEL_29;
    }
  }

LABEL_29:

  [v101 layoutScore];
  v107 = v106 >= 1.0 || v103 == 0;
  v108 = v154;
  if (!v107)
  {
    v109 = v103;
    [v101 layoutScore];
    v111 = v110;
    [(__objc2_prot *)v109 layoutScore];
    if (v111 == v112)
    {
      sub_1A3C6993C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_1A52F9790;
      *(v113 + 32) = v109;

      return v113;
    }
  }

  sub_1A3C6993C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1A52F9790;
  *(v115 + 32) = v101;

  return v115;
}

uint64_t sub_1A3D8AB78(double *a1, __int128 *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v54 = a4;
  v70 = a7;
  v71 = a8;
  v68 = a5;
  v69 = a6;
  v11 = sub_1A5246F24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[1];
  v55 = *a2;
  v56 = v15;
  v16 = a2[5];
  v113 = a2[4];
  v114 = v16;
  v17 = a2[7];
  v115 = a2[6];
  v116 = v17;
  v18 = a2[3];
  v111 = a2[2];
  v112 = v18;
  *&v18 = *(a2 + 16);
  v63 = *(a2 + 17);
  v64 = *&v18;
  *&v18 = *(a2 + 18);
  v61 = *(a2 + 19);
  v62 = *&v18;
  v19 = a2[10];
  v20 = a2[11];
  v21 = a2[13];
  v109 = a2[12];
  v110 = v21;
  v107 = v19;
  v108 = v20;
  *&v20 = *(a2 + 28);
  v74 = *(a2 + 29);
  v75 = *&v20;
  *&v20 = *(a2 + 30);
  v72 = *(a2 + 31);
  v73 = *&v20;
  v22 = a2[17];
  v104 = a2[16];
  v105 = v22;
  v106 = *(a2 + 288);
  v23 = MEMORY[0x1E69E7CC0];
  v103 = MEMORY[0x1E69E7CC0];
  v53 = a3;
  [a3 extent];
  IsEmpty = CGRectIsEmpty(v117);
  v28 = a1[2];
  if (v28 != 0.0)
  {
    v58 = OBJC_IVAR____TtC12PhotosUICore31ParallaxAssetViewLayoutProvider_overlapTestAreas;
    v59 = v11;
    v67 = (v12 + 16);
    v57 = !IsEmpty;
    v30 = a1[4];
    v29 = a1[5];
    v31 = a1[6];
    v32 = a1[7];
    v77 = v32;
    v78 = v31;
    if (IsEmpty || !*(*(v60 + v58) + 16))
    {
      v35 = v74;
      v34 = v75;
      v118.origin.x = v75;
      v118.origin.y = v74;
      v36 = v72;
      v37 = v73;
      v118.size.width = v73;
      v118.size.height = v72;
      if (CGRectIsEmpty(v118))
      {
        v80 = v55;
        v81 = v56;
        v84 = v113;
        v85 = v114;
        v86 = v115;
        v87 = v116;
        v82 = v111;
        v83 = v112;
        v88 = v64;
        v89 = v63;
        v90 = v62;
        v91 = v61;
        v92 = v107;
        v93 = v108;
        v94 = v109;
        v95 = v110;
        v96 = v75;
        v97 = v74;
        v98 = v73;
        v99 = v72;
        v100 = v104;
        v101 = v105;
        v102 = v106;
        ParallaxAssetImageLayout.relevantContentRect.getter();
        v34 = v38;
        v35 = v39;
        v37 = v40;
        v36 = v41;
      }

      v119.origin.x = v34;
      v119.origin.y = v35;
      v119.size.width = v37;
      v119.size.height = v36;
      v33 = 0.0;
      if (CGRectGetWidth(v119) > 0.0)
      {
        v120.origin.x = v34;
        v120.origin.y = v35;
        v120.size.width = v37;
        v120.size.height = v36;
        if (CGRectGetHeight(v120) > 0.0)
        {
          v121.origin.x = v30 + v64 * v78;
          v121.origin.y = v29 + v63 * v77;
          v121.size.width = v62 * v78;
          v121.size.height = v61 * v77;
          v126.origin.x = v34;
          v126.origin.y = v35;
          v126.size.width = v37;
          v126.size.height = v36;
          v122 = CGRectIntersection(v121, v126);
          x = v122.origin.x;
          v79 = v29;
          y = v122.origin.y;
          width = v122.size.width;
          v66 = v30;
          height = v122.size.height;
          v65 = CGRectGetWidth(v122);
          v123.origin.x = x;
          v123.origin.y = y;
          v123.size.width = width;
          v123.size.height = height;
          v46 = v65 * CGRectGetHeight(v123);
          v33 = 1.0;
          if (v46 > 0.0)
          {
            v124.origin.x = v34;
            v124.origin.y = v35;
            v124.size.width = v37;
            v124.size.height = v36;
            v47 = CGRectGetWidth(v124);
            v125.origin.x = v34;
            v125.origin.y = v35;
            v125.size.width = v37;
            v125.size.height = v36;
            v33 = 1.0 - v46 / (v47 * CGRectGetHeight(v125));
          }
        }
      }
    }

    else
    {
      v33 = sub_1A3D8B204(v53, v54, v30, v29, v31, v32, v24, v25, v26, v27, v64, v63, v62, v61);
    }

    v79 = v33;
    v48 = sub_1A41CDD28();
    (*v67)(v14, v48, v11);
    v49 = sub_1A5246F04();
    v50 = sub_1A524D234();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v65 = COERCE_DOUBLE(swift_slowAlloc());
      *&v80 = v65;
      *v51 = 136315650;
      sub_1A524D974();
      v66 = v28;
      sub_1A3C2EF94();
    }

    (*(v12 + 8))(v14, v11);
    PXRectScaleFromCenter();
  }

  return v23;
}

double sub_1A3D8B204(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v23 = sub_1A5246F24();
  v24 = *(v23 - 8);
  *&v25 = MEMORY[0x1EEE9AC00](v23).n128_u64[0];
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 extent];
  v28 = *(v16 + OBJC_IVAR____TtC12PhotosUICore31ParallaxAssetViewLayoutProvider_overlapTestAreas);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = objc_opt_self();
    v69 = *(v16 + OBJC_IVAR____TtC12PhotosUICore31ParallaxAssetViewLayoutProvider_renderContext);
    v70 = v30;
    v67 = a4 + a12 * a6;
    v68 = a3 + a11 * a5;
    v66 = a5 * a13;
    v62 = a6 * a14;
    v64 = (v24 + 16);
    v65 = a2 - 3;
    v63 = (v24 + 8);
    v31 = MEMORY[0x1E69E7CC0];
    v32 = (v28 + 40);
    *&v33 = 136315650;
    v58 = v33;
    v59 = v23;
    do
    {
      v34 = v32 + 3;
      v35 = v32[4];
      if (v65 < 2)
      {
        v34 = v32 + 5;
      }

      v36 = *v34;
      [v70 computeMatteCoverageWithRect:a1 segmentationMatte:v69 context:{v68 + *(v32 - 1) * v66, v67 + *v32 * v62, v66 * v32[1], v62 * v32[2], v58, v59}];
      v38 = v37;
      v39 = v37 - v36;
      if (v39 <= 0.01)
      {
        if (v35 - v38 > 0.01)
        {
          v40 = 1.0 - (v35 - v38);
        }

        else
        {
          v40 = 1.0;
        }
      }

      else
      {
        v40 = 1.0 - v39;
      }

      v41 = sub_1A41CDD28();
      (*v64)(v27, v41, v23);
      v42 = sub_1A5246F04();
      v43 = sub_1A524D234();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v61 = v31;
        v71 = v45;
        *v44 = v58;
        sub_1A524D974();
        v60 = v29;
        sub_1A3C2EF94();
      }

      (*v63)(v27, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1A3D8BA4C(0, *(v31 + 2) + 1, 1, v31);
      }

      v47 = *(v31 + 2);
      v46 = *(v31 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v31 = sub_1A3D8BA4C((v46 > 1), v47 + 1, 1, v31);
      }

      *(v31 + 2) = v48;
      *&v31[8 * v47 + 32] = v40;
      v32 += 7;
      --v29;
    }

    while (v29);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
    v48 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v48)
    {
      v56 = 0.0;
      v50 = 0.0;
      goto LABEL_27;
    }
  }

  if (v48 > 3)
  {
    v49 = v48 & 0xFFFFFFFFFFFFFFFCLL;
    v51 = (v31 + 48);
    v50 = 0.0;
    v52 = v48 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v50 = v50 + *(v51 - 2) + *(v51 - 1) + *v51 + v51[1];
      v51 += 4;
      v52 -= 4;
    }

    while (v52);
    if (v48 == v49)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v49 = 0;
    v50 = 0.0;
  }

  v53 = v48 - v49;
  v54 = &v31[8 * v49 + 32];
  do
  {
    v55 = *v54++;
    v50 = v50 + v55;
    --v53;
  }

  while (v53);
LABEL_26:
  v56 = v48;
LABEL_27:

  return v50 / v56;
}

uint64_t static ParallaxAssetViewLayoutProvider.emptyOverlapViewRect.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  *&xmmword_1EB12BBA0 = a1;
  *(&xmmword_1EB12BBA0 + 1) = a2;
  qword_1EB12BBB0 = *&a3;
  unk_1EB12BBB8 = *&a4;
  return result;
}

double sub_1A3D8B78C@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&xmmword_1EB12BBA0;
  v3 = *&qword_1EB12BBB0;
  *a1 = xmmword_1EB12BBA0;
  a1[1] = v3;
  return result;
}

__n128 sub_1A3D8B7D8(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v3 = *(a1 + 16);
  xmmword_1EB12BBA0 = *a1;
  *&qword_1EB12BBB0 = v3;
  return result;
}

id ParallaxAssetViewLayoutProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ParallaxAssetViewLayoutProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParallaxAssetViewLayoutProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1A3D8B938(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A3D8CB14(0, &unk_1EB1372B0, type metadata accessor for CGRect);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1A3D8BA4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A3C6993C(0, &qword_1EB12BC68, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1A3D8BB68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3C6993C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1A3D8BC0C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1A3D35B98(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1A3D8BC88(v6);
  return sub_1A524E524();
}

void sub_1A3D8BC88(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A524EA34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A3C52C70(0, &unk_1EB12BC70);
        v6 = sub_1A524CAC4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1A3D8BE98(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A3D8BD9C(0, v2, 1, a1);
  }
}

void sub_1A3D8BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 layoutScore];
      v15 = v14;
      [v13 layoutScore];
      v17 = v16;

      if (v17 >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1A3D8BE98(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_1A3D86884(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_1A3D8C510((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A3D86884(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_1A3D867F8(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 layoutScore];
      v19 = v18;
      [v17 layoutScore];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 layoutScore];
        v27 = v26;
        [v25 layoutScore];
        v29 = v28;

        ++v22;
        ++v14;
        if (v21 < v19 == v29 >= v27)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v21 < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A3D8598C(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_1A3D8598C((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_1A3D8C510((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A3D86884(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_1A3D867F8(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 layoutScore];
    v48 = v47;
    [v46 layoutScore];
    v50 = v49;

    if (v50 >= v48)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1A3D8C510(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 layoutScore];
        v35 = v34;
        [v33 layoutScore];
        v37 = v36;

        if (v37 < v35)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 layoutScore];
        v19 = v18;
        [v17 layoutScore];
        v21 = v20;

        if (v21 >= v19)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1A3D8C7D0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1A524E2B4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1A3D8BB68(v3, 0);
  sub_1A3D8C864((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A3D8C864(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A3D8CA54();
          sub_1A3D8CABC();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &unk_1EB12BC70);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A3D8CA54()
{
  if (!qword_1EB12BC80)
  {
    sub_1A3C52C70(255, &unk_1EB12BC70);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12BC80);
    }
  }
}

unint64_t sub_1A3D8CABC()
{
  result = qword_1EB12BC88;
  if (!qword_1EB12BC88)
  {
    sub_1A3D8CA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BC88);
  }

  return result;
}

void sub_1A3D8CB14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524EA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3D8CB68()
{
  v1 = v0;
  v2 = [v0 socialGroups];
  if (v2)
  {
    v3 = v2;
    if ([v2 count] == 1 && objc_msgSend(v3, sel_firstObject))
    {
      v4 = OBJC_IVAR____TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer_customTitleWasDeleted;
      swift_beginAccess();
      if (v1[v4] != 2)
      {
        type metadata accessor for SocialGroupModifyGroupAction();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A3D8CE74(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer_mutationActionDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);

      ObjectType = swift_getObjectType();
      (*(v7 + 8))(a1 & 1, a2, 0, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    if (a2)
    {
      a2 = sub_1A5240B74();
    }

    [v10 completeBackgroundTaskWithSuccess:a1 & 1 error:a2];
  }
}

void type metadata accessor for PXActionParameterKey()
{
  if (!qword_1EB135720)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB135720);
    }
  }
}

id sub_1A3D8D040(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer_mutationActionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer_newKeyAsset] = 0;
  v6 = &v3[OBJC_IVAR____TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer_newCustomTitle];
  *v6 = 0;
  v6[1] = 0;
  v3[OBJC_IVAR____TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer_customTitleWasDeleted] = 2;
  *&v3[OBJC_IVAR____TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer_peopleToBeAdded] = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer_peopleToBeRemoved] = 0;
  v7 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  v8 = sub_1A524C3D4();

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithActionType_assetCollectionReference_parameters_, v7, a3, v8);

  return v9;
}

uint64_t sub_1A3D8D2EC(uint64_t a1, id *a2)
{
  result = sub_1A524C654();
  *a2 = 0;
  return result;
}

uint64_t sub_1A3D8D364(uint64_t a1, id *a2)
{
  v3 = sub_1A524C664();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A3D8D3E4@<X0>(uint64_t *a1@<X8>)
{
  sub_1A524C674();
  v2 = sub_1A524C634();

  *a1 = v2;
  return result;
}

uint64_t sub_1A3D8D428()
{
  v0 = sub_1A524C674();
  v1 = MEMORY[0x1A5907C10](v0);

  return v1;
}

uint64_t sub_1A3D8D464()
{
  sub_1A524C674();
  sub_1A524C794();
}

uint64_t sub_1A3D8D4B8()
{
  sub_1A524C674();
  sub_1A524EC94();
  sub_1A524C794();
  v0 = sub_1A524ECE4();

  return v0;
}

uint64_t sub_1A3D8D52C()
{
  v0 = sub_1A524C674();
  v2 = v1;
  if (v0 == sub_1A524C674() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A524EAB4();
  }

  return v5 & 1;
}

uint64_t sub_1A3D8D5B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A524C634();

  *a1 = v2;
  return result;
}

uint64_t sub_1A3D8D5FC()
{
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A3C38278(&unk_1EB1300E0);

  return sub_1A524E7E4();
}

uint64_t sub_1A3D8D844()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for PhotosDetailsEXIFWidgetViewModel();
    if (swift_dynamicCastClass())
    {
      v3 = sub_1A46BF300();
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1A3D8D954()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

double sub_1A3D8D9B0()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6D6550);
  (*(v2 + 8))(v4, v1);
  return v8;
}

char *sub_1A3D8DC8C(void *a1)
{
  if (a1)
  {
    type metadata accessor for PhotosDetailsEXIFWidgetViewModel();
    v3 = MEMORY[0x1E69E7D40];
    v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x108);
    v5 = a1;
    v6 = v4();
    v7 = (*((*v3 & *v1) + 0xA8))();
    return sub_1A46BF770(v5, v6, v7);
  }

  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v11 = v10();
  v12 = [v11 assetCollections];

  v13 = [v12 firstObject];
  if (v13)
  {
    v14 = v10();
    v15 = [v14 assetsByCollection];

    sub_1A3C52C70(0, &qword_1EB126AC0);
    sub_1A3C52C70(0, &qword_1EB126C40);
    sub_1A3D8E4B0();
    v16 = sub_1A524C3E4();

    v17 = sub_1A3D8DF6C(v13, v16);

    if (v17)
    {
      v18 = [v17 firstObject];

      if (v18)
      {
        type metadata accessor for PhotosDetailsEXIFWidgetViewModel();
        v19 = (*((*v9 & *v1) + 0x108))();
        v20 = v10();
        v21 = sub_1A46BF770(v18, v19, v20);

        return v21;
      }
    }
  }

  sub_1A524D244();
  result = PLOneUpGetLog();
  if (result)
  {
    v22 = result;
    sub_1A5246DF4();

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A3D8DF6C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1A524E6B4();

    if (v4)
    {
      sub_1A3C52C70(0, &qword_1EB126C40);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1A3CBBC40(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_1A3D8E030()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for PhotosDetailsEXIFWidgetViewModel();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v5 = sub_1A3D8DC8C(0);
  v6 = *((*v1 & *v0) + 0xE0);
  v7 = v5;
  v6(v5);
  if (!v5)
  {
    return;
  }

  v4 = v7;
LABEL_6:
  v8 = v4;
  sub_1A46C02F4();
}

id sub_1A3D8E17C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))(v5);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  type metadata accessor for PhotosDetailsEXIFWidgetViewModel();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

LABEL_4:
    type metadata accessor for PhotosDetailsEXIFWidgetViewModel();
    v12 = *((*v8 & *v2) + 0x108);
    v13 = a1;
    v14 = v12();
    v15 = (*((*v8 & *v2) + 0xA8))();
    v16 = sub_1A46BF770(v13, v14, v15);
    v17 = *((*v8 & *v2) + 0xE0);
    v11 = v16;
    v17(v16);
  }

  sub_1A3D8E35C();
  v18 = v11;
  sub_1A3E31E50(v18, v7);
  v19 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v7);

  return v19;
}

void sub_1A3D8E35C()
{
  if (!qword_1EB1293C0)
  {
    type metadata accessor for PhotosDetailsEXIFWidgetView();
    sub_1A3D8E3C0();
    v0 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1293C0);
    }
  }
}

unint64_t sub_1A3D8E3C0()
{
  result = qword_1EB12AB58;
  if (!qword_1EB12AB58)
  {
    type metadata accessor for PhotosDetailsEXIFWidgetView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AB58);
  }

  return result;
}

id sub_1A3D8E47C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsEXIFWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A3D8E4B0()
{
  result = qword_1EB126AA8;
  if (!qword_1EB126AA8)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126AA8);
  }

  return result;
}

uint64_t sub_1A3D8E524(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_1A3C52C70(0, &qword_1EB12B160);
  return sub_1A524DBF4() & 1;
}

BOOL static LemonadePhotosPersonGridConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_1A3C52C70(0, &qword_1EB12B160);
  return (sub_1A524DBF4() & 1) != 0;
}

uint64_t LemonadePhotosPersonGridConfiguration.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A3D8E6B0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1A3D8E6C0()
{
  v1 = *(v0 + 8);
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A3D8E764()
{
  v1 = *(v0 + 8);
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  sub_1A524DC04();
  return sub_1A524ECE4();
}

BOOL sub_1A3D8E7C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_1A3C52C70(0, &qword_1EB12B160);
  return (sub_1A524DBF4() & 1) != 0;
}

void sub_1A3D8E838(uint64_t a1, char *a2, uint64_t a3)
{
  sub_1A3C375B0(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *a2;
  type metadata accessor for PeopleUnifiedItem();
  v10 = v7;
  v11 = sub_1A3C5A374();
  if (v8)
  {
    v12 = sub_1A44B6B38(v10, v11 & 1);
  }

  else
  {
    v12 = sub_1A44B6B34(v10, v11 & 1);
  }

  v13 = v12;
  v14 = *(*(a3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
  if (v14)
  {
    v15 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x2D0);
    v16 = v14;
    v17 = v15();
  }

  else
  {
    v17 = 0;
  }

  LOBYTE(aBlock) = v9;
  sub_1A3D8EB48(&aBlock, a3, v13, v17);
}

void sub_1A3D8EB48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(*(a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
  if (v6)
  {
    v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x318);
    v8 = v6;
    v9 = v7();
    v10 = *(a3 + 16);
    if ((v10 & 0x8000000000000000) == 0)
    {
LABEL_3:
      v11 = v6 != 0;
      v12 = *(v10 + 16);

      v13 = v9 & 1;
      v14 = v12;
      v15 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 1;
    v10 = *(a3 + 16);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v11 = v6 != 0;
  v10 &= ~0x8000000000000000;
  v16 = *(v10 + 16);

  v13 = v9 & 1;
  v14 = 0;
  v15 = v16;
LABEL_6:
  v17 = PXPhotosViewConfigurationForPersonOrSocialGroup(v14, v15, a4, v11, v13);
  v18 = *(v10 + 16);
  v19 = v17;
  v20 = v18;

  v21 = v20;
  [v19 setSectionHeaderStyle_];
  PeopleUnifiedItem.name.getter();
  v22 = objc_allocWithZone(type metadata accessor for PhotosPersonOrSocialGroupTitleModel());
  swift_getObjectType();
  v23 = &v22[OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel__title];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v22[OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel_subtitle];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v22[OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel_symbolName];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v22[OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel_assetCount];
  *v26 = 0;
  v26[8] = 1;
  sub_1A5245FB4();
}

uint64_t sub_1A3D8EF18(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  LOBYTE(a2) = v5(v6, v7);

  return a2 & 1;
}

uint64_t sub_1A3D8EF94@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  v5 = *a2;
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 9) = v5;
  *(a4 + 16) = a3;
  return result;
}

void sub_1A3D8EFB4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 16);
  v6 = *v0;
  v7 = v1;
  v5 = v2;
  v4 = v6;
  sub_1A3D8E838(&v6, &v5, v3);
}

uint64_t sub_1A3D8F060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3D8FEB4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A3D8F0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3D8FEB4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A3D8F128()
{
  sub_1A3D8FEB4();
  sub_1A5249ED4();
  __break(1u);
}

void sub_1A3D8F150()
{
  swift_getKeyPath();
  sub_1A3D8FE24(&qword_1EB171D18);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D8F1F8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3D8FE24(&qword_1EB171D18);
  sub_1A52415D4();

  v4 = *(v3 + OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel__title + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel__title);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3D8F2DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel__title);
  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel__title + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3D8FE24(&qword_1EB171D18);
    sub_1A52415C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void sub_1A3D8F444()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel_backingObject;
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel_backingObject);
  sub_1A3C52C70(0, &qword_1EB1265D0);
  v4 = v3;
  v5 = sub_1A524DC34();

  if (v5)
  {
    v6 = [v5 objectAfterChanges];
    if (v6)
    {
      v7 = *(v0 + v2);
      *(v1 + v2) = v6;
      v20 = v6;

      v8 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel_backingObject);
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = &selRef_px_localizedName;
      }

      else
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (!v13)
        {
          sub_1A524E404();
          MEMORY[0x1A5907B60](0xD000000000000038, 0x80000001A53B5720);
          swift_getObjectType();
          v19 = sub_1A524EEF4();
          MEMORY[0x1A5907B60](v19);

          sub_1A524E6E4();
          __break(1u);
          return;
        }

        v10 = v13;
        v11 = &selRef_px_title;
      }

      v14 = v8;
      v15 = [v10 *v11];
      v16 = sub_1A524C674();
      v18 = v17;

      sub_1A3D8F2DC(v16, v18);
      v12 = v20;
    }

    else
    {
      v12 = v5;
    }
  }
}

void sub_1A3D8F7E0()
{
  swift_getKeyPath();
  sub_1A3D8FE24(&qword_1EB171D18);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t type metadata accessor for PhotosPersonOrSocialGroupTitleModel()
{
  result = qword_1EB171CF8;
  if (!qword_1EB171CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3D8F95C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3C375B0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A3D8F9B8()
{
  result = qword_1EB128C90;
  if (!qword_1EB128C90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB128C90);
  }

  return result;
}

unint64_t sub_1A3D8FA20()
{
  result = qword_1EB12BCD0;
  if (!qword_1EB12BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BCD0);
  }

  return result;
}

unint64_t sub_1A3D8FA78()
{
  result = qword_1EB12BCD8;
  if (!qword_1EB12BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BCD8);
  }

  return result;
}

unint64_t sub_1A3D8FAD0()
{
  result = qword_1EB12ADB0;
  if (!qword_1EB12ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ADB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosDynamicHeaderViewModel.ScrollPosition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosDynamicHeaderViewModel.ScrollPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A3D8FBFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3D8FC44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A3D8FC9C()
{
  sub_1A3C375B0(319, &qword_1EB124AC0, off_1E7721130);
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1A3D8FDA4(uint64_t a1, uint64_t a2)
{
  sub_1A3C375B0(0, &qword_1EB124AC0, off_1E7721130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D8FE24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosPersonOrSocialGroupTitleModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3D8FE68()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC12PhotosUICoreP33_60F3BDD8806A129A7EC22A26012BCF7A35PhotosPersonOrSocialGroupTitleModel__title);
  *v2 = v0[3];
  v2[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A3D8FEB4()
{
  result = qword_1EB12BD70;
  if (!qword_1EB12BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BD70);
  }

  return result;
}

void *sub_1A3D8FF1C(void *a1, void *a2)
{
  v112 = type metadata accessor for LemonadeSocialGroupsShelfProvider();
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v123 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v122 = (&v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v121 = (&v110 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v120 = (&v110 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v110 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v118 = (&v110 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v116 = (&v110 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v117 = (&v110 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v115 = (&v110 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v114 = (&v110 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v113 = (&v110 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v110 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v110 - v29;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = (&v110 - v33);
  v35 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x638);
  v124 = (*MEMORY[0x1E69E7D40] & *a2) + 1592;
  v125 = v35;
  if ((v35)(256, v32))
  {
    v36 = a1;
    v37 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v36 = a1;
    sub_1A4114848(a1, v34);
    swift_storeEnumTagMultiPayload();
    v37 = sub_1A3C52F54(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = sub_1A3C52F54(v38 > 1, v39 + 1, 1, v37);
    }

    v37[2] = v39 + 1;
    sub_1A3C59944(v34, v37 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v39);
  }

  v40 = v125(4096);
  v41 = v36;
  v126 = v36;
  if (v40)
  {
    v42 = v123;
  }

  else
  {
    sub_1A3C51210(v36, v133);
    v43 = v133[1];
    *v30 = v133[0];
    *(v30 + 1) = v43;
    v30[32] = v134;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v123;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_1A3C52F54(0, v37[2] + 1, 1, v37);
    }

    v46 = v37[2];
    v45 = v37[3];
    if (v46 >= v45 >> 1)
    {
      v37 = sub_1A3C52F54(v45 > 1, v46 + 1, 1, v37);
    }

    v37[2] = v46 + 1;
    sub_1A3C59944(v30, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v46);
    v41 = v126;
  }

  if ((v125(1) & 1) == 0)
  {
    v47 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x558);
    v48 = v41;
    v49 = v47();
    v50 = a2;
    sub_1A3C41748(v48, v49, a2, &v127);
    v51 = v130;
    *(v27 + 2) = v129;
    *(v27 + 3) = v51;
    *(v27 + 4) = v131;
    v27[80] = v132;
    v52 = v128;
    *v27 = v127;
    *(v27 + 1) = v52;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1A3C52F54(0, v37[2] + 1, 1, v37);
    }

    v54 = v37[2];
    v53 = v37[3];
    if (v54 >= v53 >> 1)
    {
      v37 = sub_1A3C52F54(v53 > 1, v54 + 1, 1, v37);
    }

    v37[2] = v54 + 1;
    sub_1A3C59944(v27, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v54);
    v41 = v126;
  }

  v55 = v125;
  if ((v125(128) & 1) == 0 && ((*((*MEMORY[0x1E69E7D40] & *a2) + 0x420))() & 1) == 0)
  {
    sub_1A3C512E0(v41, &v127);
    v56 = v128;
    v57 = v113;
    *v113 = v127;
    v57[1] = v56;
    v57[2] = v129;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1A3C52F54(0, v37[2] + 1, 1, v37);
    }

    v59 = v37[2];
    v58 = v37[3];
    if (v59 >= v58 >> 1)
    {
      v37 = sub_1A3C52F54(v58 > 1, v59 + 1, 1, v37);
    }

    v37[2] = v59 + 1;
    sub_1A3C59944(v113, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v59);
  }

  v60 = v55(1);
  if ((v60 & 1) == 0)
  {
    v61 = v41;
    v62 = a2;
    v63 = v114;
    sub_1A3C41D90(v61, 0, a2, v114);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1A3C52F54(0, v37[2] + 1, 1, v37);
    }

    v65 = v37[2];
    v64 = v37[3];
    if (v65 >= v64 >> 1)
    {
      v37 = sub_1A3C52F54(v64 > 1, v65 + 1, 1, v37);
    }

    v37[2] = v65 + 1;
    v60 = sub_1A3C59944(v63, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v65);
  }

  v66 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x5D0))(v60);
  v67 = v55(16);
  if ((v66 & 1) == 0)
  {
    if (v67)
    {
      goto LABEL_52;
    }

    v135[0] = 0;
    v83 = v126;
    sub_1A3C56CDC(v83, v135, &v136);
    *&v142[0] = v136;
    WORD4(v142[0]) = v137;
    v84 = sub_1A3C36888();
    sub_1A3C41894(v142, v83, &type metadata for LemonadePeopleShelfProvider, v84, v135);
    v85 = *&v135[24];
    v86 = *&v135[32];
    v87 = v116;
    *v116 = *v135;
    *(v87 + 1) = *&v135[8];
    v87[3] = v85;
    *(v87 + 16) = v86;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1A3C52F54(0, v37[2] + 1, 1, v37);
    }

    v89 = v37[2];
    v88 = v37[3];
    if (v89 >= v88 >> 1)
    {
      v37 = sub_1A3C52F54(v88 > 1, v89 + 1, 1, v37);
    }

    v37[2] = v89 + 1;
    v81 = v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v89;
    v82 = v116;
    goto LABEL_51;
  }

  if ((v67 & 1) == 0)
  {
    v135[0] = 1;
    v68 = v126;
    sub_1A3C56CDC(v68, v135, &v136);
    *&v142[0] = v136;
    WORD4(v142[0]) = v137;
    v69 = sub_1A3C36888();
    sub_1A3C41894(v142, v68, &type metadata for LemonadePeopleShelfProvider, v69, v135);
    v70 = *&v135[24];
    v71 = *&v135[32];
    v72 = v115;
    *v115 = *v135;
    *(v72 + 1) = *&v135[8];
    v72[3] = v70;
    *(v72 + 16) = v71;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1A3C52F54(0, v37[2] + 1, 1, v37);
    }

    v74 = v37[2];
    v73 = v37[3];
    if (v74 >= v73 >> 1)
    {
      v37 = sub_1A3C52F54(v73 > 1, v74 + 1, 1, v37);
    }

    v37[2] = v74 + 1;
    sub_1A3C59944(v115, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v74);
  }

  if ((v55(2048) & 1) == 0)
  {
    v135[0] = 2;
    v75 = v126;
    v76 = v111;
    sub_1A4A48E14(v75, v135, v111);
    v77 = sub_1A3D90E2C();
    v78 = v75;
    sub_1A3C41894(v76, v78, v112, v77, v117);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1A3C52F54(0, v37[2] + 1, 1, v37);
    }

    v80 = v37[2];
    v79 = v37[3];
    if (v80 >= v79 >> 1)
    {
      v37 = sub_1A3C52F54(v79 > 1, v80 + 1, 1, v37);
    }

    v37[2] = v80 + 1;
    v81 = v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v80;
    v82 = v117;
LABEL_51:
    sub_1A3C59944(v82, v81);
  }

LABEL_52:
  if ((v55(32) & 1) == 0)
  {
    v90 = v126;
    v91 = a2;
    sub_1A3C51238(v90, a2, v135);
    v92 = *&v135[16];
    v93 = v118;
    *v118 = *v135;
    v93[1] = v92;
    *(v93 + 25) = *&v135[25];
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1A3C52F54(0, v37[2] + 1, 1, v37);
    }

    v95 = v37[2];
    v94 = v37[3];
    if (v95 >= v94 >> 1)
    {
      v37 = sub_1A3C52F54(v94 > 1, v95 + 1, 1, v37);
    }

    v37[2] = v95 + 1;
    sub_1A3C59944(v118, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v95);
  }

  if ((v55(8) & 1) == 0)
  {
    v96 = v126;
    sub_1A3C559F4();
  }

  if ((v55(2) & 1) == 0)
  {
    sub_1A3C56CF0(v126, v138);
    v97 = v138[1];
    v98 = v120;
    *v120 = v138[0];
    v98[1] = v97;
    *(v98 + 32) = v139;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1A3C52F54(0, v37[2] + 1, 1, v37);
    }

    v100 = v37[2];
    v99 = v37[3];
    if (v100 >= v99 >> 1)
    {
      v37 = sub_1A3C52F54(v99 > 1, v100 + 1, 1, v37);
    }

    v37[2] = v100 + 1;
    sub_1A3C59944(v120, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v100);
  }

  if ((v55(4) & 1) == 0)
  {
    sub_1A3C41D34(v126, v140);
    v101 = v140[1];
    v102 = v121;
    *v121 = v140[0];
    v102[1] = v101;
    *(v102 + 32) = v141;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1A3C52F54(0, v37[2] + 1, 1, v37);
    }

    v104 = v37[2];
    v103 = v37[3];
    if (v104 >= v103 >> 1)
    {
      v37 = sub_1A3C52F54(v103 > 1, v104 + 1, 1, v37);
    }

    v37[2] = v104 + 1;
    sub_1A3C59944(v121, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v104);
  }

  if ((v55(64) & 1) == 0)
  {
    sub_1A3C5125C(v126, v142);
    v105 = v142[1];
    v106 = v122;
    *v122 = v142[0];
    v106[1] = v105;
    *(v106 + 32) = v143;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1A3C52F54(0, v37[2] + 1, 1, v37);
    }

    v108 = v37[2];
    v107 = v37[3];
    if (v108 >= v107 >> 1)
    {
      v37 = sub_1A3C52F54(v107 > 1, v108 + 1, 1, v37);
    }

    v37[2] = v108 + 1;
    sub_1A3C59944(v122, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v108);
  }

  return v37;
}

unint64_t sub_1A3D90E2C()
{
  result = qword_1EB125368;
  if (!qword_1EB125368)
  {
    type metadata accessor for LemonadeSocialGroupsShelfProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125368);
  }

  return result;
}

uint64_t sub_1A3D90EF8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3D90FF8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF8))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore42PXUtilityAlbumVisibilityPreferenceObserver___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D91120();
  sub_1A52415F4();

  v4[7] = sub_1A3D90E84();
  return sub_1A3D91114;
}

unint64_t sub_1A3D91120()
{
  result = qword_1EB125070;
  if (!qword_1EB125070)
  {
    type metadata accessor for PXUtilityAlbumVisibilityPreferenceObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125070);
  }

  return result;
}

uint64_t type metadata accessor for PXUtilityAlbumVisibilityPreferenceObserver()
{
  result = qword_1EB15D380;
  if (!qword_1EB15D380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3D91238(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF8))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A3D912C8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3D913A8(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x100))(v7);
  }

  return result;
}

void (*sub_1A3D914D4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF8))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore42PXUtilityAlbumVisibilityPreferenceObserver___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D91120();
  sub_1A52415F4();

  v4[7] = sub_1A3D911C4();
  return sub_1A3D915F0;
}

id sub_1A3D915FC(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A5241604();
  *&v3[OBJC_IVAR____TtC12PhotosUICore42PXUtilityAlbumVisibilityPreferenceObserver_photoLibrary] = a1;
  v4 = a1;
  v3[OBJC_IVAR____TtC12PhotosUICore42PXUtilityAlbumVisibilityPreferenceObserver__hiddenAlbumVisible] = PXPreferencesIsHiddenAlbumVisible();
  v3[OBJC_IVAR____TtC12PhotosUICore42PXUtilityAlbumVisibilityPreferenceObserver__recentlyViewedAndSharedAlbumVisible] = PXPreferencesIsRecentlyViewedAndSharedAlbumVisible();
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  PXRegisterPreferencesObserver(v5);

  return v5;
}

id sub_1A3D916D8()
{
  PXUnregisterPreferencesObserver(v0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXUtilityAlbumVisibilityPreferenceObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3D918F8()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *ParallaxTitleView.init(title:maxSize:fixedFontSize:customFontName:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v6[OBJC_IVAR____TtC12PhotosUICore17ParallaxTitleView_label] = v10;
  v41.receiver = v6;
  v41.super_class = type metadata accessor for ParallaxTitleView();
  v11 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = v11;
  if (a4)
  {
    v13 = 1500.0;
  }

  else
  {
    v13 = *&a3;
  }

  if (a6)
  {
    v14 = *&v11[OBJC_IVAR____TtC12PhotosUICore17ParallaxTitleView_label];
    v15 = v11;
    v16 = v14;
    v17 = sub_1A524C634();

    v18 = CTFontCreateWithNameAndOptions(v17, v13, 0, 0x400uLL);
  }

  else
  {
    v19 = *&v11[OBJC_IVAR____TtC12PhotosUICore17ParallaxTitleView_label];
    v20 = objc_opt_self();
    v21 = v12;
    v16 = v19;
    v18 = [v20 systemFontOfSize_];
  }

  [v16 setFont_];

  v22 = OBJC_IVAR____TtC12PhotosUICore17ParallaxTitleView_label;
  [*&v12[OBJC_IVAR____TtC12PhotosUICore17ParallaxTitleView_label] setAlpha_];
  v23 = *&v12[v22];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 whiteColor];
  [v25 setTextColor_];

  [*&v12[v22] setNumberOfLines_];
  v27 = *&v12[v22];
  v28 = sub_1A524C634();

  [v27 setText_];

  v29 = *&v12[v22];
  if (a4)
  {
    v30 = v29;
    [v30 frame];
    [v30 setFrame_];

    [*&v12[v22] setAdjustsFontSizeToFitWidth_];
    v31 = *&v12[v22];
    [v31 frame];
    [v31 textRectForBounds:objc_msgSend(*&v12[v22] limitedToNumberOfLines:{sel_numberOfLines), v32, v33, v34, v35}];

    v36 = *&v12[v22];
    [v36 frame];
    [v36 setFrame_];
  }

  else
  {
    [v29 sizeToFit];
  }

  v37 = *&v12[v22];
  v38 = v12;
  [v37 frame];
  [v38 setFrame_];
  v39 = *&v12[v22];
  [v39 frame];
  [*&v12[v22] frame];
  CGRectGetHeight(v42);
  [v39 frame];
  [v39 setFrame_];

  [*&v12[v22] frame];
  CGRectGetHeight(v43);
  [v38 frame];
  [v38 setFrame_];

  [v38 addSubview_];
  return v38;
}

void ParallaxVerticalTitleView.init(title1:title2:maxSize:customFontName:)()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParallaxVerticalTitleView();
  objc_msgSendSuper2(&v2, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v1 = objc_allocWithZone(type metadata accessor for ParallaxTitleView());
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id _s12PhotosUICore17ParallaxTitleViewC5frameACSo6CGRectV_tcfC_0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1A3D927B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1A3D92850()
{
  result = qword_1EB120590;
  if (!qword_1EB120590)
  {
    sub_1A3C52C70(255, &qword_1EB126610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120590);
  }

  return result;
}

uint64_t sub_1A3D928B8()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3D9292C()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void type metadata accessor for PHAssetCollectionSubtype()
{
  if (!qword_1EB120798)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB120798);
    }
  }
}

uint64_t sub_1A3D929F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PHAssetCollectionSubtype();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3D92A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  sub_1A524B694();
  v8 = v11;
  v9 = v12;
  v11 = a1;
  LOBYTE(v12) = v8;
  v13 = v9;
  MEMORY[0x1A5906490](&v11, a2, a4, a3);
}

unint64_t sub_1A3D92AE0()
{
  result = qword_1EB195E60;
  if (!qword_1EB195E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB195E60);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx12PhotosUICore25PeopleProcessingDebugInfo33_53B425C91DFEFB5694E1B2B16F383935LLVGAaBHPxAaBHD1__AhA0C8ModifierHPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1A5248804();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1A3D92BA4()
{
  result = qword_1EB195E68[0];
  if (!qword_1EB195E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB195E68);
  }

  return result;
}

uint64_t sub_1A3D92C3C@<X0>(void *a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v21 = a4;
  sub_1A3D933A0();
  v20 = v7;
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  sub_1A3D93A2C(0, &qword_1EB12BDA8, sub_1A3D92AE0);
  v12 = v11;
  v13 = sub_1A3D93A8C(&qword_1EB12BDB0, &qword_1EB12BDA8, sub_1A3D92AE0);
  v17 = a1;

  sub_1A524AA84();

  v19 = sub_1A5249434();
  v18 = v14;
  v28 = a2;
  v29 = a3;
  sub_1A3D938A8(0, &qword_1EB1274B0, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v23 = v17;
  v24 = a2;
  v25 = a3;
  sub_1A3D93850();
  v26 = v12;
  v27 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1A3D6E520();
  v15 = v20;
  sub_1A524AFA4();

  return (*(v22 + 8))(v9, v15);
}

uint64_t sub_1A3D92F68@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v21 = a4;
  sub_1A3D93954();
  v20 = v7;
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v19 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  sub_1A3D93A2C(0, &qword_1EB12BDC0, sub_1A3D92BA4);
  v11 = v10;
  v12 = sub_1A3D93A8C(&qword_1EB12BDC8, &qword_1EB12BDC0, sub_1A3D92BA4);

  sub_1A524AA84();

  v18 = sub_1A5249434();
  v17[1] = v13;
  v28 = a2;
  v29 = a3;
  sub_1A3D938A8(0, &qword_1EB1274B0, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v23 = a1;
  v24 = a2;
  v25 = a3;
  sub_1A3D93850();
  v26 = v11;
  v27 = v12;
  swift_getOpaqueTypeConformance2();
  sub_1A3D6E520();
  v14 = v20;
  v15 = v19;
  sub_1A524AFA4();

  return (*(v22 + 8))(v15, v14);
}

uint64_t sub_1A3D93268()
{
  sub_1A3D938FC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249434();
  sub_1A5247B34();
  v3 = sub_1A5247B54();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_1A524B724();
}

void sub_1A3D933A0()
{
  if (!qword_1EB12BDA0)
  {
    sub_1A3D93A2C(255, &qword_1EB12BDA8, sub_1A3D92AE0);
    sub_1A3D93A8C(&qword_1EB12BDB0, &qword_1EB12BDA8, sub_1A3D92AE0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12BDA0);
    }
  }
}

uint64_t sub_1A3D93478()
{
  PFOSVariantHasInternalUI();
  sub_1A3D938A8(0, &qword_1EB1274B0, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A3D934E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  LOBYTE(v25) = *(v1 + 24);
  v26 = v4;
  sub_1A3D938A8(0, &qword_1EB1274B0, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  sub_1A3D938A8(0, &qword_1EB127320, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v23);
  v5 = v23;

  v7 = 0xE000000000000000;
  if (v5 == 1)
  {
    v8 = [v3 countOfFaceCropsToBeGenerated];
    v9 = [v3 countOfUnprocessedFaceCrops];
    v10 = [v3 countOfUnclusteredFaces];
    sub_1A3C52C70(0, &qword_1EB13B2E0);
    v11 = [swift_getObjCClassFromMetadata() sharedInstance];
    v12 = [v11 mockProcessingUpdates];

    sub_1A3C52C70(0, &qword_1EB126A10);
    v13 = [swift_getObjCClassFromMetadata() sharedInstance];
    v14 = [v13 forceShowProcessingUI];

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000068, 0x80000001A53B5940);
    v24 = v9;
    v15 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v15);

    MEMORY[0x1A5907B60](0xD000000000000038, 0x80000001A53B59B0);
    v24 = v10;
    v16 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v16);

    MEMORY[0x1A5907B60](0xD00000000000002ELL, 0x80000001A53B59F0);
    v24 = v8;
    v17 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v17);

    MEMORY[0x1A5907B60](0xD00000000000001FLL, 0x80000001A53B5A20);
    if (v12)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v12)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    MEMORY[0x1A5907B60](v18, v19);

    MEMORY[0x1A5907B60](0xD000000000000021, 0x80000001A53B5A40);
    if (v14)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v14)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x1A5907B60](v20, v21);

    v22 = v25;
    v7 = v26;
  }

  else
  {
    v22 = 0;
  }

  *a1 = v22;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

void sub_1A3D93850()
{
  if (!qword_1EB127480)
  {
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127480);
    }
  }
}

void sub_1A3D938A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3D938FC()
{
  if (!qword_1EB1249B0)
  {
    sub_1A5247B54();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1249B0);
    }
  }
}

void sub_1A3D93954()
{
  if (!qword_1EB12BDB8)
  {
    sub_1A3D93A2C(255, &qword_1EB12BDC0, sub_1A3D92BA4);
    sub_1A3D93A8C(&qword_1EB12BDC8, &qword_1EB12BDC0, sub_1A3D92BA4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12BDB8);
    }
  }
}

void sub_1A3D93A2C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1A52499C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3D93A8C(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A3D93A2C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3D93ADC()
{
  if (PFOSVariantHasInternalUI())
  {
    sub_1A3F53F18();
  }

  sub_1A3D938A8(0, &qword_1EB1274B0, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A3D93B74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  LOBYTE(v18) = *(v1 + 24);
  v19 = v3;
  sub_1A3D938A8(0, &qword_1EB1274B0, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  sub_1A3D938A8(0, &qword_1EB127320, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v17);
  v4 = v17;

  v6 = 0xE000000000000000;
  if (v4 == 1)
  {
    v7 = sub_1A3F56B68();
    sub_1A3C52C70(0, &qword_1EB13B2E0);
    v8 = [swift_getObjCClassFromMetadata() sharedInstance];
    v9 = [v8 mockProcessingUpdates];

    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0x100000000000007CLL, 0x80000001A53B5A90);
    if (v7)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v7)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x1A5907B60](v10, v11);

    MEMORY[0x1A5907B60](0xD000000000000036, 0x80000001A53B5B10);
    if ((v7 & 0x100) != 0)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if ((v7 & 0x100) != 0)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x1A5907B60](v12, v13);

    MEMORY[0x1A5907B60](0xD000000000000018, 0x80000001A53B5B50);
    if (v9)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v9)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x1A5907B60](v14, v15);

    v16 = v18;
    v6 = v19;
  }

  else
  {
    v16 = 0;
  }

  *a1 = v16;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t PXAppleMusicStatusProvider.requestStatus(for:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A3D93E04, 0, 0);
}

uint64_t sub_1A3D93E04()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  type metadata accessor for PXAppleMusicCapabilityStatus(0);
  *v3 = v0;
  v3[1] = sub_1A3D93F08;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000013, 0x80000001A53B5B70, sub_1A3D94280, v2, v4);
}

uint64_t sub_1A3D93F08()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1A3D94040;
  }

  else
  {

    v2 = sub_1A3D94024;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3D94040()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A3D940A4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1A3D97240(0, &qword_1EB12BE98, type metadata accessor for PXAppleMusicCapabilityStatus, MEMORY[0x1E69E8548]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = aBlock - v10;
  (*(v8 + 16))(aBlock - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  aBlock[4] = sub_1A3D972CC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D9429C;
  aBlock[3] = &block_descriptor_91;
  v14 = _Block_copy(aBlock);

  [a2 requestStatusForCapability:a3 handler:v14];
  _Block_release(v14);
}

void sub_1A3D9429C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id DefaultAppleMusicStatusProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultAppleMusicStatusProvider.init()()
{
  *&v0[OBJC_IVAR___PXDefaultAppleMusicStatusProvider____lazy_storage___systemTCCStatusProvider] = 0;
  v1 = &v0[OBJC_IVAR___PXDefaultAppleMusicStatusProvider_injectedTCCStatusProvider];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v2 = &v0[OBJC_IVAR___PXDefaultAppleMusicStatusProvider_cloudStatusMonitor];
  sub_1A3D95230();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  *v2 = sub_1A3D951E4;
  v2[1] = 0;
  v2[2] = v3;
  v4 = OBJC_IVAR___PXDefaultAppleMusicStatusProvider_observable;
  *&v0[v4] = [objc_allocWithZone(off_1E77217D8) init];
  v5 = OBJC_IVAR___PXDefaultAppleMusicStatusProvider_lockedState;
  sub_1A3D96078();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *&v0[v5] = v6;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for DefaultAppleMusicStatusProvider();
  v7 = objc_msgSendSuper2(&v17, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 defaultCenter];
  v11 = *MEMORY[0x1E69E4158];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = sub_1A3D960FC;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1A3C7C848;
  v16[3] = &block_descriptor_9;
  v13 = _Block_copy(v16);

  v14 = [v10 addObserverForName:v11 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);

  swift_unknownObjectRelease();
  return v9;
}

void sub_1A3D94554()
{
  sub_1A3C29FDC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1A524CCB4();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[5] = 0;
    v7[6] = 0;
    v7[4] = v6;
    sub_1A3D4D930(0, 0, v2, &unk_1A52FB798, v7);
  }
}

id DefaultAppleMusicStatusProvider.__allocating_init(tccProvider:)(__int128 *a1)
{
  v3 = [objc_allocWithZone(v1) init];
  sub_1A3C34460(a1, v7);
  v4 = OBJC_IVAR___PXDefaultAppleMusicStatusProvider_injectedTCCStatusProvider;
  swift_beginAccess();
  v5 = v3;
  sub_1A3D96104(v7, v3 + v4);
  swift_endAccess();

  return v5;
}

uint64_t sub_1A3D94784(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PXDefaultAppleMusicStatusProvider_lockedState);
  os_unfair_lock_lock(v3 + 8);
  sub_1A3D947DC(&v3[4], a1, &v5);
  os_unfair_lock_unlock(v3 + 8);
  return v5;
}

void sub_1A3D947DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 == 1)
  {
    if ((*a1 & 1) == 0)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        v4 = a3;
        v5 = v3;
        sub_1A3C34400(0, &qword_1EB126160);
        type metadata accessor for ICError(0);
        if (swift_dynamicCast())
        {
          sub_1A3D97600(&qword_1EB127030, type metadata accessor for ICError);
          sub_1A5240B24();

          a3 = v4;
          if (v7 == -7007)
          {
            v6 = 3;
LABEL_10:
            *a3 = v6;
            return;
          }
        }

        else
        {
          a3 = v4;
        }
      }

      v6 = 2;
      goto LABEL_10;
    }

    v6 = 1;
    goto LABEL_10;
  }

  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A3D949C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C29FDC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a1;
  v11 = sub_1A524CCB4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = sub_1A3D96204;
  v13[6] = v10;

  sub_1A3D4D930(0, 0, v8, &unk_1A52FB2F0, v13);
}

void sub_1A3D94C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1A5240B74();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1A3D94CA4()
{
  sub_1A3C29FDC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[4] = v4;
  sub_1A3D4D930(0, 0, v2, &unk_1A52FB2F8, v5);
}

void *sub_1A3D94FC4()
{
  v1 = *(v0 + OBJC_IVAR___PXDefaultAppleMusicStatusProvider_lockedState);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 24);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 32));
  return v2;
}

uint64_t DefaultAppleMusicStatusProvider.Error.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](0);
  return sub_1A524ECE4();
}

uint64_t sub_1A3D9509C()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](0);
  return sub_1A524ECE4();
}

uint64_t sub_1A3D95108()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](0);
  return sub_1A524ECE4();
}

uint64_t sub_1A3D95174()
{
  v1 = OBJC_IVAR___PXDefaultAppleMusicStatusProvider____lazy_storage___systemTCCStatusProvider;
  if (*(v0 + OBJC_IVAR___PXDefaultAppleMusicStatusProvider____lazy_storage___systemTCCStatusProvider))
  {
    v2 = *(v0 + OBJC_IVAR___PXDefaultAppleMusicStatusProvider____lazy_storage___systemTCCStatusProvider);
  }

  else
  {
    type metadata accessor for SystemTCCStatusProvider();
    v2 = SystemTCCStatusProvider.__allocating_init()();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1A3D951E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69E43E8]) init];
  [v0 setPrivacyAcknowledgementPolicy_];
  return v0;
}

void sub_1A3D95230()
{
  if (!qword_1EB1204D8)
  {
    sub_1A3D96194(255, &qword_1EB120720, &unk_1EB120728, 0x1E69E43E8, sub_1A3C52C70);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1A524E4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1204D8);
    }
  }
}

uint64_t sub_1A3D952C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A3D952E8, 0, 0);
}

uint64_t sub_1A3D952E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 304) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR___PXDefaultAppleMusicStatusProvider_injectedTCCStatusProvider;
    swift_beginAccess();
    sub_1A3D970CC(v2 + v3, v0 + 184);
    if (*(v0 + 208))
    {
      sub_1A3C34460((v0 + 184), v0 + 144);
    }

    else
    {
      v6 = sub_1A3D95174();
      *(v0 + 168) = type metadata accessor for SystemTCCStatusProvider();
      *(v0 + 176) = &protocol witness table for SystemTCCStatusProvider;
      *(v0 + 144) = v6;
      if (*(v0 + 208))
      {
        sub_1A3D96898(v0 + 184);
      }
    }

    v7 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
    v9 = (*(v7 + 8) + **(v7 + 8));
    v8 = swift_task_alloc();
    *(v0 + 312) = v8;
    *v8 = v0;
    v8[1] = sub_1A3D954E8;

    return v9(v0 + 336);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1A3D954E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3D955E4, 0, 0);
}

uint64_t sub_1A3D955E4()
{
  v22 = v0;
  v20 = *(v0 + 336);
  v21 = 2;
  v1 = static TCCAuthorizationStatus.== infix(_:_:)(&v20, &v21);
  __swift_destroy_boxed_opaque_existential_0(v0 + 144);
  v2 = *(v0 + 304);
  if (v1)
  {
    v3 = *(v2 + OBJC_IVAR___PXDefaultAppleMusicStatusProvider_cloudStatusMonitor);
    v4 = *(v2 + OBJC_IVAR___PXDefaultAppleMusicStatusProvider_cloudStatusMonitor + 16);

    os_unfair_lock_lock((v4 + 24));
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v4 + 16);
    }

    else
    {
      v10 = v3();
      *(v4 + 16) = v10;
      v6 = v10;
      v5 = 0;
    }

    *(v0 + 320) = v6;
    v11 = v5;
    os_unfair_lock_unlock((v4 + 24));

    if (([v6 isObservingCloudServiceStatus] & 1) == 0)
    {
      [v6 beginObservingCloudServiceStatus];
    }

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_1A3D958D0;
    v12 = swift_continuation_init();
    sub_1A3D97240(0, &qword_1EB12BE90, type metadata accessor for ICCloudServiceCapability, MEMORY[0x1E69E86F8]);
    *(v0 + 136) = v13;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A3D95BBC;
    *(v0 + 104) = &block_descriptor_79;
    *(v0 + 112) = v12;
    [v6 requestCapabilitiesWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    sub_1A3D9715C();
    v7 = swift_allocError();
    v8 = *(v2 + OBJC_IVAR___PXDefaultAppleMusicStatusProvider_lockedState);
    os_unfair_lock_lock((v8 + 32));
    if (*(v8 + 16))
    {
      *(v8 + 16) = 0;
      v9 = 5;
    }

    else
    {
      v9 = 4;
    }

    v14 = *(v0 + 288);
    v15 = *(v8 + 24);
    *(v8 + 24) = v7;
    v16 = v7;

    sub_1A3D95CAC(v9);
    os_unfair_lock_unlock((v8 + 32));

    v17 = *(v0 + 304);
    if (v14)
    {
      (*(v0 + 288))();
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1A3D958D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_1A3D95AAC;
  }

  else
  {
    v2 = sub_1A3D959E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3D959E0()
{
  v1 = v0[34];
  v2 = *(v0[38] + OBJC_IVAR___PXDefaultAppleMusicStatusProvider_lockedState);
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 16) == v1)
  {
    v3 = 0;
  }

  else
  {
    *(v2 + 16) = v1;
    v3 = 1;
  }

  sub_1A3D95CAC(v3);
  os_unfair_lock_unlock((v2 + 32));
  v4 = v0[36];
  v5 = v0[40];
  v6 = v0[38];
  if (v4)
  {
    v4();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A3D95AAC()
{
  v1 = v0[41];
  v2 = v0[38];
  swift_willThrow();
  v3 = *(v2 + OBJC_IVAR___PXDefaultAppleMusicStatusProvider_lockedState);
  v4 = v1;
  os_unfair_lock_lock((v3 + 32));
  if (*(v3 + 16))
  {
    *(v3 + 16) = 0;
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  v6 = v0[41];
  v7 = *(v3 + 24);
  *(v3 + 24) = v6;
  v8 = v6;

  sub_1A3D95CAC(v5);
  os_unfair_lock_unlock((v3 + 32));

  v9 = v0[36];
  v10 = v0[40];
  v11 = v0[38];
  if (v9)
  {
    v9();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A3D95BBC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1A3C34400(0, &qword_1EB126160);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1A3D95CAC(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v10 = sub_1A524D474();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1A3D96EDC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_53_0;
  v13 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3D97600(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C29FDC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

id DefaultAppleMusicStatusProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultAppleMusicStatusProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A3D96078()
{
  if (!qword_1EB126508)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1A524E4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126508);
    }
  }
}

uint64_t sub_1A3D96104(uint64_t a1, uint64_t a2)
{
  sub_1A3D96194(0, &qword_1EB125A68, &unk_1EB125A70, &protocol descriptor for TCCStatusProvider, sub_1A3C34400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A3D96194(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3D96204()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x78))(v2);
    v7 = (*((*v5 & *v4) + 0x90))();
    v1(v6, v7);
  }

  else
  {
    v1(0, 0);
  }
}

uint64_t sub_1A3D96308()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A3D952C4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A3D963B0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A3D952C4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A3D96468(uint64_t a1)
{
  v2 = sub_1A3D97600(&qword_1EB127030, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1A3D964D4(uint64_t a1)
{
  v2 = sub_1A3D97600(&qword_1EB127030, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1A3D96540(void *a1, uint64_t a2)
{
  v4 = sub_1A3D97600(&qword_1EB127030, type metadata accessor for ICError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1A3D965F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3D97600(&qword_1EB127030, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1A3D96670()
{
  sub_1A524EC94();
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A3D966D0(uint64_t a1)
{
  v2 = sub_1A3D97600(&qword_1EB127038, type metadata accessor for ICError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A3D9673C(uint64_t a1)
{
  v2 = sub_1A3D97600(&qword_1EB127038, type metadata accessor for ICError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1A3D967A8(uint64_t a1)
{
  v2 = sub_1A3D97600(&qword_1EB127030, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1A3D96814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3D97600(&qword_1EB127030, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1A3D96898(uint64_t a1)
{
  sub_1A3D96194(0, &qword_1EB125A68, &unk_1EB125A70, &protocol descriptor for TCCStatusProvider, sub_1A3C34400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A3D96924()
{
  result = qword_1EB12BDF8;
  if (!qword_1EB12BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BDF8);
  }

  return result;
}

uint64_t sub_1A3D96A70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A3D96AD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A3D96B34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A3D96BA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3D96BC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1A3D96DF8()
{
  result = qword_1EB12BE80;
  if (!qword_1EB12BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BE80);
  }

  return result;
}

uint64_t sub_1A3D96EDC()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR___PXDefaultAppleMusicStatusProvider_observable);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v1;
    v5 = v3;
    sub_1A524D1B4();
  }

  return result;
}

uint64_t sub_1A3D96FAC(uint64_t a1, uint64_t a2)
{
  sub_1A3C29FDC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D97040(uint64_t a1)
{
  sub_1A3C29FDC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D970CC(uint64_t a1, uint64_t a2)
{
  sub_1A3D96194(0, &qword_1EB125A68, &unk_1EB125A70, &protocol descriptor for TCCStatusProvider, sub_1A3C34400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3D9715C()
{
  result = qword_1EB125438;
  if (!qword_1EB125438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125438);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

void sub_1A3D97240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1A3C34400(255, &qword_1EB126160);
    v9 = a4(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A3D972CC(uint64_t a1, void *a2)
{
  sub_1A3D97240(0, &qword_1EB12BE98, type metadata accessor for PXAppleMusicCapabilityStatus, MEMORY[0x1E69E8548]);
  if (!a2)
  {
    return sub_1A524CBE4();
  }

  v3 = a2;
  return sub_1A524CBD4();
}

uint64_t sub_1A3D97600(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3D97704(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v10 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x70));
  *v10 = 0;
  v10[1] = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v8 & *v4) + 0x80)) = 0;
  v11 = *((*v8 & *v4) + 0x88);
  v12 = *((v9 & v7) + 0x58);
  v13 = *((v9 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v4 + v11, 1, 1, AssociatedTypeWitness);
  v15 = v4 + *((*v8 & *v4) + 0x90);
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 8) = 0;
  v16 = v4 + *((*v8 & *v4) + 0x98);
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 8) = 0;
  *(v4 + *((*v8 & *v4) + 0x60)) = a1;
  swift_unknownObjectWeakAssign();
  v17 = (v4 + *((*v8 & *v4) + 0x68));
  *v17 = a3;
  v17[1] = a4;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for PhotosPagingLayout();
  a1;

  [objc_msgSendSuper2(&v21 init)];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v13;
  v19[3] = v12;
  v19[4] = v18;
  type metadata accessor for PhotosPagingViewModel();
  swift_getWitnessTable();
  sub_1A5245C54();
}

void sub_1A3D97A80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A48C2500();
    sub_1A3D9C984();
    if (sub_1A524EEA4())
    {
      sub_1A3D98E24();
    }

    sub_1A48C299C();
    if ((sub_1A524EEA4() & 1) != 0 && (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80)) & 1) == 0)
    {
      sub_1A3D99A80();
    }

    sub_1A48C250C();
    if (sub_1A524EEA4())
    {
      sub_1A3D98D20();
    }
  }
}

uint64_t sub_1A3D97C9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1A3D97D8C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_1A3D97E9C()
{
  swift_getWitnessTable();

  return sub_1A524EEA4();
}

uint64_t sub_1A3D97EFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t sub_1A3D97F64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t sub_1A3D97FCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t sub_1A3D98034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A3D980A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t sub_1A3D98108(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t sub_1A3D9820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A3D98280(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6A108](a1, a2, WitnessTable);
}

uint64_t sub_1A3D98300(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = sub_1A3D96DF8();

  return MEMORY[0x1EEE6BBD8](a1, WitnessTable, v3);
}

uint64_t sub_1A3D98360()
{
  swift_getWitnessTable();

  return sub_1A524EEA4();
}

uint64_t sub_1A3D983C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t sub_1A3D98428(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t sub_1A3D98490(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t sub_1A3D984F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A3D98564(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t sub_1A3D985CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t sub_1A3D986B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1A3D96DF8();

  return a5(a1, a2, WitnessTable, v8);
}

uint64_t sub_1A3D98728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A3D9879C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6A108](a1, a2, WitnessTable);
}

void sub_1A3D98804(void *a1)
{
  v1 = a1;
  sub_1A3D98BAC(&selRef_willUpdate, off_1E7722270);
}

uint64_t sub_1A3D98BAC(SEL *a1, void (*a2)(char *))
{
  v5 = MEMORY[0x1E69E7D40];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for PhotosPagingLayout();
  objc_msgSendSuper2(&v9, *a1);
  v6 = *((*v5 & *v2) + 0x90);
  swift_beginAccess();
  a2(v2 + v6);
  swift_endAccess();
  v7 = *((*v5 & *v2) + 0x98);
  swift_beginAccess();
  a2(v2 + v7);
  return swift_endAccess();
}

void sub_1A3D98CB8(void *a1)
{
  v1 = a1;
  sub_1A3D98BAC(&selRef_didUpdate, off_1E7722268);
}

void sub_1A3D98E2C()
{
  v13 = *v0;
  v1 = *((*MEMORY[0x1E69E7D40] & v13) + 0x58);
  v2 = *((*MEMORY[0x1E69E7D40] & v13) + 0x50);
  swift_getAssociatedTypeWitness();
  v10[10] = v1;
  v10[9] = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10[21] = v10 - v3;
  v4 = sub_1A52413E4();
  v10[4] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v10[22] = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D9C6F4();
  v10[3] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v12 = sub_1A52414C4();
  v10[12] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v10[2] = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10[11] = v10 - v9;
  sub_1A5245E94();
}

void sub_1A3D99A88()
{
  swift_beginAccess();
  type metadata accessor for PhotosPagingLayout.PreInvalidatableEntities();
  swift_getWitnessTable();
  PXGLayout.invalidate<A>(updateFlags:with:)();
}

uint64_t sub_1A3D99B7C()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[1] = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  v13[0] = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v14 = v13 - v11;
  (*((**(v0 + *((v2 & v1) + 0x60)) & v2) + 0xF0))(v10);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) != 1)
  {
    (*(v8 + 32))(v14, v7, AssociatedTypeWitness);
    sub_1A5246224();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1A3D99F60()
{
  swift_beginAccess();
  type metadata accessor for PhotosPagingLayout.PostInvalidatableEntities();
  swift_getWitnessTable();
  PXGLayout.invalidate<A>(updateFlags:with:)();
}

uint64_t sub_1A3D9A040()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v44 - v7;
  v57 = v5;
  v58 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = AssociatedTypeWitness;
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v44 - v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  v20 = *(v0 + *((v3 & v2) + 0x60));
  (*((*v20 & v3) + 0xF0))(v17);
  v21 = *(v8 - 8);
  v22 = (*(v21 + 48))(v19, 1, v8);
  v55 = v10;
  v56 = v9;
  v25 = *(v10 + 8);
  v24 = v10 + 8;
  v23 = v25;
  result = v25(v19, v9);
  if (v22 != 1)
  {
    v48 = v23;
    v61 = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = &v61;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1A3D9C82C;
    *(v28 + 24) = v27;
    aBlock[4] = sub_1A3D9C868;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D9A79C;
    aBlock[3] = &block_descriptor_23_0;
    v29 = _Block_copy(aBlock);

    [v1 enumerateVisibleAnchoringLayoutsUsingBlock_];
    _Block_release(v29);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      v46 = v27;
      v47 = v24;
      if (v61)
      {
        v45 = v21;
        v30 = v61;
        v31 = [v1 indexOfSublayout_];
        if (v31 == sub_1A52403B4())
        {

          v32 = 1;
          v33 = v55;
          v34 = v49;
        }

        else
        {
          v35 = v51;
          (*((**(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60)) & *MEMORY[0x1E69E7D40]) + 0xD8))();
          v34 = v49;
          v36 = v53;
          MEMORY[0x1A59016D0](v31, v53, AssociatedConformanceWitness);

          (*(v52 + 8))(v35, v36);
          v32 = 0;
          v33 = v55;
        }

        (*(v45 + 56))(v34, v32, 1, v8);
        v37 = v59;
        v38 = v56;
        (*(v33 + 32))(v59, v34, v56);
        *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80)) = 1;
        aBlock[0] = v20;
        v39 = v54;
        (*(v33 + 16))(v54, v37, v38);
        v40 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v41 = swift_allocObject();
        v42 = v58;
        *(v41 + 16) = v57;
        *(v41 + 24) = v42;
        (*(v33 + 32))(v41 + v40, v39, v38);
        type metadata accessor for PhotosPagingViewModel();
        v43 = v20;
        swift_getWitnessTable();
        sub_1A5245F44();
      }

      (*((**(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60)) & *MEMORY[0x1E69E7D40]) + 0xD8))(result);
      sub_1A52463B4();
    }

    __break(1u);
  }

  return result;
}

void sub_1A3D9A79C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1A3D9A7F8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(v7, a2, v4);
  return (*(v8 + 32))(v7, ObjectType, v8);
}

void sub_1A3D9A970(void *a1)
{
  v1 = a1;
  sub_1A3D9A9D8(&selRef_visibleRectDidChange, sub_1A3D99F60);
}

uint64_t sub_1A3D9A9D8(SEL *a1, uint64_t (*a2)(id))
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PhotosPagingLayout();
  v5 = objc_msgSendSuper2(&v7, *a1);
  return a2(v5);
}

void sub_1A3D9AA64(void *a1)
{
  v1 = a1;
  sub_1A3D9A9D8(&selRef_scrollSpeedRegimeDidChange, sub_1A3D98D20);
}

uint64_t sub_1A3D9AACC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v8 = sub_1A3D9BA70(v10, a5);

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

uint64_t sub_1A3D9AB4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = [v2 sublayoutIndexForSpriteIndex_];
  sub_1A3D97C9C(v8);
  v12 = *(AssociatedTypeWitness - 8);
  result = (*(v12 + 48))(v8, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    MEMORY[0x1A59016D0](v11, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v12 + 8))(v8, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    a2[3] = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_1A5246224();
  }

  __break(1u);
  return result;
}

id sub_1A3D9AE04(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1A3D9AB4C(a3, v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1A524EA94();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1A3D9AF48(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D40];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = [v3 sublayoutIndexForObjectReference:sub_1A524EA94() options:a2 updatedObjectReference:a3];
  swift_unknownObjectRelease();
  if (v8 == sub_1A52403B4())
  {
    return 0xFFFFFFFFLL;
  }

  v9 = [v3 sublayoutAtIndex:v8 loadIfNeeded:0];
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PhotosPageLayout();
  v11 = swift_dynamicCastClassUnconditional();
  v12 = [v4 convertSpriteIndex:(*((*v7 & *v11) + 0xC8))() fromDescendantLayout:v11];

  return v12;
}

uint64_t sub_1A3D9B148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v9 = sub_1A3D9AF48(v11, a4, a5);

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v9;
}

id sub_1A3D9B1D0()
{
  if ((*((**(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60)) & *MEMORY[0x1E69E7D40]) + 0x150))())
  {
    return 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for PhotosPagingLayout();
  v1 = objc_msgSendSuper2(&v8, sel_createDefaultAnimationForCurrentContext);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedInstance];
    [v4 defaultAnimationDuration];
    v6 = v5;

    [v3 setDuration_];
  }

  return v1;
}

id sub_1A3D9B328(void *a1)
{
  v1 = a1;
  v2 = sub_1A3D9B1D0();

  return v2;
}

id sub_1A3D9B36C(void *a1)
{
  v1 = a1;
  v2 = sub_1A3D9BE78();

  return v2;
}

id sub_1A3D9B3BC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1A3D9BF00(a4);

  return v8;
}

double sub_1A3D9B420@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id sub_1A3D9B42C()
{
  sub_1A3D9B420(&v8);
  v0 = v9;
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1(&v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x1EEE9AC00](v1);
    v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = sub_1A524EA94();
    (*(v2 + 8))(v5, v0);
    __swift_destroy_boxed_opaque_existential_0(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1A3D9B55C(uint64_t a1)
{
  v10 = MEMORY[0x1E69E7CC0];
  v3 = [v1 sublayoutDataStore];
  if (v3)
  {
    v4 = v3;
    sub_1A3C2F0BC(a1, v9);
    v5 = swift_allocObject();
    sub_1A3C57128(v9, (v5 + 16));
    *(v5 + 48) = &v10;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1A3D9C2B8;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1A3D9C3A0;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D9B774;
    aBlock[3] = &block_descriptor_10;
    v7 = _Block_copy(aBlock);

    [v4 enumerateSublayoutsUsingBlock_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  objc_opt_self();
  sub_1A3D9C254();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D9B774(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v6(a2, v7, a4);
}

void sub_1A3D9B7DC(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3D9B55C(&v3);
}

id sub_1A3D9B898()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPagingLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3D9B908(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  swift_unknownObjectRelease();
  MEMORY[0x1A590F020](&a1[*((*v2 & *a1) + 0x78)]);
  v3 = *((*v2 & *a1) + 0x88);
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

uint64_t sub_1A3D9BA70(void *a1, void *a2)
{
  v21 = a2;
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20[1] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20[0] = v20 - v4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v6 = sub_1A524DF24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = sub_1A52403B4();
  sub_1A3C2F0BC(v22, v23);
  v15 = swift_dynamicCast();
  v16 = *(v10 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v5);
    v17 = (*(v10 + 32))(v13, v9, v5);
    (*((**(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x60)) & *MEMORY[0x1E69E7D40]) + 0xD8))(v17);
    sub_1A5246374();
  }

  v16(v9, 1, 1, v5);
  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v18 = sub_1A524EA94();
  *v21 = v18;
  return v14;
}

id sub_1A3D9BE78()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PhotosPagingLayout();
  v1 = objc_msgSendSuper2(&v3, sel_createAnchorForVisibleAreaIgnoringEdges_, 15);

  return v1;
}

uint64_t sub_1A3D9BF00(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v28 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = v4 & v3;
  v18 = v17;
  v19 = **(v1 + *(v16 + 96)) & v4;
  v20 = MEMORY[0x1E69E7D40];
  (*(v19 + 216))(v13);
  v21 = v29;
  v29 = AssociatedConformanceWitness;
  MEMORY[0x1A59016D0](v21, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v28 + 8))(v7, AssociatedTypeWitness);
  (*(v18 + 16))(v11, v15, v9);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    swift_getAssociatedConformanceWitness();
    type metadata accessor for PhotosPageLayout();
    v24 = (v2 + *((*v20 & *v2) + 0x68));
    v25 = *v24;
    v26 = v24[1];

    v27 = sub_1A45B55C8(v11, v23, v25, v26);
    (*(v18 + 8))(v15, v9);
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A3D9C254()
{
  result = qword_1EB12BEF8;
  if (!qword_1EB12BEF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12BEF8);
  }

  return result;
}

uint64_t sub_1A3D9C2B8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v6 = [a2 itemPlacementControllerForItemReference_];
  result = swift_unknownObjectRelease();
  if (v6)
  {
    v8 = swift_unknownObjectRetain();
    MEMORY[0x1A5907D70](v8);
    if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A3D9C4D8()
{
  swift_getAssociatedTypeWitness();
  result = sub_1A524DF24();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3D9C5D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A3D9C60C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A3D9C660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for PXUpdateFlags()
{
  if (!qword_1EB135460)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB135460);
    }
  }
}

void sub_1A3D9C6F4()
{
  if (!qword_1EB1264B0)
  {
    sub_1A52414C4();
    sub_1A3D9C788(&qword_1EB12AF60, MEMORY[0x1E6969B50]);
    v0 = sub_1A524E684();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1264B0);
    }
  }
}

uint64_t sub_1A3D9C788(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3D9C7D0(uint64_t a1)
{
  sub_1A3D9C6F4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3D9C82C(void *a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *v4;
  *v4 = a1;
  v6 = a1;

  *a2 = 1;
}

uint64_t sub_1A3D9C890(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v3 = *(sub_1A524DF24() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1A3D9A7F8(a1, v4);
}

unint64_t sub_1A3D9C984()
{
  result = qword_1EB12A9B0;
  if (!qword_1EB12A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A9B0);
  }

  return result;
}

uint64_t SharedCollectionActionView.viewModel.getter()
{
  sub_1A3D9DE0C(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t sub_1A3D9CA70@<X0>(void *a1@<X8>)
{
  sub_1A3D9DE0C(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3D9CAEC(void **a1)
{
  v1 = *a1;
  sub_1A3D9DE0C(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v2 = v1;
  return sub_1A524B6B4();
}

void (*SharedCollectionActionView.viewModel.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = *(v1 + 8);
  v3[6] = v6;
  v3[7] = v5;
  *v3 = v6;
  v3[1] = v5;
  sub_1A3D9DE0C(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v4[8] = v7;
  v8 = v6;

  sub_1A524B6A4();
  return sub_1A3D9CCC4;
}

void sub_1A3D9CCC4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  *(v2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 40) = v5;
  *(v2 + 24) = v3;
  if (a2)
  {
    v6 = v5;
    sub_1A524B6B4();
  }

  else
  {
    sub_1A524B6B4();
  }

  free(v2);
}

uint64_t SharedCollectionActionView.$viewModel.getter()
{
  sub_1A3D9DE0C(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return v1;
}

void *SharedCollectionActionView.sharedCollection.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1A3D9CE8C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a1;
  type metadata accessor for SharedCollectionActionViewModel();
  v8 = a1;
  sub_1A524B694();
  v9 = v17[1];
  *a4 = v17[0];
  *(a4 + 8) = v9;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  sub_1A3D9DE0C(0, &qword_1EB12BF00, sub_1A3D9D024, type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel);
  v10 = a2;
  v11 = v8;
  v12 = sub_1A4908984(v11, a2);
  (*((*MEMORY[0x1E69E7D40] & *v12) + 0x210))(a3);
  v17[0] = v12;
  sub_1A3D9D3F0(0, &qword_1EB12BF08, type metadata accessor for LemonadeCollectionCustomizationViewModel);
  LOBYTE(v16) = a3 ^ 1;
  v13 = v12;
  v14 = sub_1A4407D6C(v17, &v16, 0, 0);
  v15 = type metadata accessor for SharedCollectionActionView();
  sub_1A478C8F8(v14, (a4 + *(v15 + 28)));
}

unint64_t sub_1A3D9D024()
{
  result = qword_1EB126AC0;
  if (!qword_1EB126AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126AC0);
  }

  return result;
}

unint64_t sub_1A3D9D070()
{
  result = qword_1EB12BF10;
  if (!qword_1EB12BF10)
  {
    sub_1A3D9DE0C(255, &qword_1EB12BF00, sub_1A3D9D024, type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BF10);
  }

  return result;
}

uint64_t type metadata accessor for SharedCollectionActionView()
{
  result = qword_1EB196870;
  if (!qword_1EB196870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharedCollectionActionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharedCollectionActionView() + 28);
  v4 = sub_1A524BC74();
  v6 = v5;
  sub_1A3D9D36C();
  v8 = a1 + *(v7 + 36);
  sub_1A3D9D1D4(v1, v8);
  sub_1A3D9D48C();
  v10 = (v8 + *(v9 + 36));
  *v10 = v4;
  v10[1] = v6;

  return sub_1A3D9D5F8(v1 + v3, a1);
}

uint64_t sub_1A3D9D1D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SharedAlbumActionProgressView(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1[1];
  v16 = *a1;
  v17 = v8;
  sub_1A3D9DE0C(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v9 = sub_1A524B6A4();
  v10 = v15;
  v11 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0x458))(v9);

  if (v11)
  {
    sub_1A44B8DAC(1, v7);
    sub_1A3D9E040(v7, a2);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v5 + 56))(a2, v12, 1, v4);
}

void sub_1A3D9D36C()
{
  if (!qword_1EB12BF18)
  {
    sub_1A3D9D3F0(255, &qword_1EB12BF20, type metadata accessor for LemonadeCollectionCustomizationView);
    sub_1A3D9D48C();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12BF18);
    }
  }
}

void sub_1A3D9D3F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A3D9DE0C(255, &qword_1EB12BF00, sub_1A3D9D024, type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel);
    v7 = v6;
    v8 = sub_1A3D9D070();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3D9D48C()
{
  if (!qword_1EB12BF28)
  {
    sub_1A3D9DE0C(255, &qword_1EB12BF30, type metadata accessor for SharedAlbumActionProgressView, MEMORY[0x1E69E6720]);
    sub_1A3D9D520();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12BF28);
    }
  }
}

unint64_t sub_1A3D9D520()
{
  result = qword_1EB12BF38;
  if (!qword_1EB12BF38)
  {
    sub_1A3D9DE0C(255, &qword_1EB12BF30, type metadata accessor for SharedAlbumActionProgressView, MEMORY[0x1E69E6720]);
    sub_1A3D9DFA4(&qword_1EB12BF40, type metadata accessor for SharedAlbumActionProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BF38);
  }

  return result;
}

uint64_t sub_1A3D9D5F8(uint64_t a1, uint64_t a2)
{
  sub_1A3D9D3F0(0, &qword_1EB12BF20, type metadata accessor for LemonadeCollectionCustomizationView);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D9D678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1A524BC74();
  v7 = v6;
  sub_1A3D9D36C();
  v9 = a2 + *(v8 + 36);
  sub_1A3D9D1D4(v2, v9);
  sub_1A3D9D48C();
  v11 = (v9 + *(v10 + 36));
  *v11 = v5;
  v11[1] = v7;

  return sub_1A3D9D5F8(v2 + v4, a2);
}

void sub_1A3D9D700()
{
  sub_1A3D9DE0C(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v11 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v12 = sub_1A5240D44();
  v13 = [v11 initWithPhotoLibraryURL_];

  (*(v7 + 8))(v9, v6);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  type metadata accessor for LemonadePhotoLibraryContext();
  v15 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v13, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v19);
  v16 = sub_1A3C799F0(v5, 0, 0, 0, v2, &v19, v15, 2);
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    sub_1A3D9D024();

    v17 = sub_1A524E6F4();
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
    sub_1A524E7D4();
  }

  type metadata accessor for SharedCollectionActionViewModel();
  SharedCollectionActionViewModel.__allocating_init(navigationContext:extensionContext:sharedCollection:sharedCollections:assets:mediaSources:albumName:batchComment:perAssetCreationOptions:updateCallback:doneCallback:)(v16, 0, 0, v17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

unint64_t sub_1A3D9DBB4()
{
  result = qword_1EB12BF48;
  if (!qword_1EB12BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BF48);
  }

  return result;
}

uint64_t sub_1A3D9DC2C(uint64_t a1)
{
  v2 = sub_1A3D9DFEC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A3D9DC78(uint64_t a1)
{
  v2 = sub_1A3D9DFEC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A3D9DCEC()
{
  sub_1A3D9DE0C(319, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1A3D9DE0C(319, &qword_1EB120A30, sub_1A3D9D024, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A3D9D3F0(319, &qword_1EB12BF20, type metadata accessor for LemonadeCollectionCustomizationView);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A3D9DE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A3D9DE80()
{
  result = qword_1EB12BF50;
  if (!qword_1EB12BF50)
  {
    sub_1A3D9D36C();
    sub_1A3D9DF30();
    sub_1A3D9DFA4(&qword_1EB12BF60, sub_1A3D9D48C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BF50);
  }

  return result;
}

unint64_t sub_1A3D9DF30()
{
  result = qword_1EB12BF58;
  if (!qword_1EB12BF58)
  {
    sub_1A3D9D3F0(255, &qword_1EB12BF20, type metadata accessor for LemonadeCollectionCustomizationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BF58);
  }

  return result;
}

uint64_t sub_1A3D9DFA4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3D9DFEC()
{
  result = qword_1EB12BF70;
  if (!qword_1EB12BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BF70);
  }

  return result;
}

uint64_t sub_1A3D9E040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedAlbumActionProgressView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ImportSourcesItemList.value.getter(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1A3D9E4E8();
  a1[3] = v4;
  *a1 = v3;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t ImportSourcesItemList.numberOfItems.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    return sub_1A524E2B4();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t ImportSourcesItemList.item(at:)(unint64_t result)
{
  v2 = *(v1 + 16);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1A59097F0]();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    v3 = *(v2 + 8 * result + 32);
LABEL_5:
    v4 = v3;
    type metadata accessor for ImportSourceItem();
    return sub_1A3C794A0(v4);
  }

  __break(1u);
  return result;
}

uint64_t ImportSourcesItemList.deinit()
{

  return v0;
}

uint64_t ImportSourcesItemList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A3D9E3B8()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    return sub_1A524E2B4();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1A3D9E3F4@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(*v2 + 16);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0]();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    v5 = *(v4 + 8 * result + 32);
LABEL_5:
    v6 = v5;
    type metadata accessor for ImportSourceItem();
    result = sub_1A3C794A0(v6);
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1A3D9E4E8()
{
  if (!qword_1EB12BF78)
  {
    sub_1A3D9E540();
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12BF78);
    }
  }
}

unint64_t sub_1A3D9E540()
{
  result = qword_1EB126BF8;
  if (!qword_1EB126BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126BF8);
  }

  return result;
}

uint64_t sub_1A3D9E644(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3D9E6B8()
{
  if (!qword_1EB12B260)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B260);
    }
  }
}

uint64_t CarouselContentLayout.__allocating_init(layoutSpec:pageInfoFetcher:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  sub_1A3DA0CCC(a1, a2, a3);
  v9 = v8;

  return v9;
}

uint64_t CarouselContentLayout.init(layoutSpec:pageInfoFetcher:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A3DA0CCC(a1, a2, a3);
  v4 = v3;

  return v4;
}

id sub_1A3D9E84C(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_scrollPosition;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (v6 != a1)
  {
    v7 = round(v6);
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        v8 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_mostFocusedPageIndex;
        v9 = *(v2 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_mostFocusedPageIndex);
        v10 = v7 & ~(v7 >> 63);
        *(v2 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_mostFocusedPageIndex) = v10;
        v11 = MEMORY[0x1E69E7D40];
        if (v9 != v10)
        {
          v12 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C0))(result);
          if (v12)
          {
            v13 = v12;
            v12(*(v2 + v8));
            sub_1A3C33378(v13);
          }
        }

        v14 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater;
        result = *(v2 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater);
        if (result)
        {
          (*((*v11 & *v2) + 0x228))([result setNeedsUpdateOf_]);
          result = *(v2 + v14);
          if (result)
          {
            return [result setNeedsUpdateOf_];
          }

LABEL_16:
          __break(1u);
          return result;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

double sub_1A3D9EA0C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_scrollPosition;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A3D9EA50(double a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_scrollPosition;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_1A3D9E84C(v4);
}

void (*sub_1A3D9EAA8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_scrollPosition;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3D9EB3C;
}

void sub_1A3D9EB3C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(v3 + v2);
  *(v3 + v2) = *(*a1 + 24);
  sub_1A3D9E84C(v4);

  free(v1);
}

double sub_1A3D9EC38()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_maskingInsetsFraction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1A3D9EC88(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_maskingInsetsFraction;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3DA1DBC;
}

double sub_1A3D9EDE0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControllerAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A3D9EE30(uint64_t *a1, double a2)
{
  v4 = *a1;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  *(v2 + v4) = a2;
  if (v6 != a2)
  {
    result = *(v2 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater);
    if (result)
    {
      return [result setNeedsUpdateOf_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t (*sub_1A3D9EEB0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControllerAlpha;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3D9EF44;
}

void sub_1A3D9EF48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (a2)
  {
    if (v6 == v3)
    {
      goto LABEL_8;
    }

    v7 = v2;
    v2 = *(*(v2 + 32) + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater);
    if (v2)
    {
LABEL_7:
      [v2 setNeedsUpdateOf_];
      v2 = v7;
      goto LABEL_8;
    }

    __break(1u);
  }

  if (v6 != v3)
  {
    v7 = v2;
    v2 = *(*(v2 + 32) + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater);
    if (!v2)
    {
      __break(1u);
      return;
    }

    goto LABEL_7;
  }

LABEL_8:

  free(v2);
}

uint64_t sub_1A3D9EFEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3D9F0B0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_numberOfPages;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A3D9F0F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_numberOfPages;
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = *(v1 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater);
  if (result)
  {
    return [result setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

id (*sub_1A3D9F16C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3D9F1D0;
}

id sub_1A3D9F1D0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = *(*(a1 + 24) + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater);
    if (result)
    {

      return [result setNeedsUpdateOf_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A3D9F43C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1A3D3E490(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1A3C341C8(v4, &v8);
      sub_1A3C34400(0, &unk_1EB12C100);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A3D3E490((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1A3C57128(&v9, (v2 + 32 * v6 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1A3D9F554(uint64_t a1, uint64_t a2)
{
  sub_1A3C2F0BC(a1, v10);
  sub_1A3C34400(0, &unk_1EB12C100);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1A524C4C4();
  v3 = sub_1A524CFC4();
  sub_1A3C2F0BC(a2, v8);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1A524C4C4();
  v4 = sub_1A524CFC4();
  v5 = [v3 compare_];

  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v5;
}

uint64_t sub_1A3D9F678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);

  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_1A3D9F71C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DA1D30;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3D9F7C4(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3DA1CF8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C8);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A3D9F894()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_mostFocusedPageChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1);
  return v2;
}

uint64_t sub_1A3D9F8F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_mostFocusedPageChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C33378(v6);
}

id sub_1A3D9F9B0()
{
  v1 = [v0 sublayoutDataStore];
  if (!v1)
  {
LABEL_4:
    [v0 referenceSize];
    PXRectWithOriginAndSize();
  }

  result = [v0 sublayoutDataStore];
  if (result)
  {
    v3 = result;
    [result count];

    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void sub_1A3D9FF28()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = round((*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))());
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(v2, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = (v2 - 1) & ~((v2 - 1) >> 63);
  v4 = (*((*v1 & *v0) + 0x118))();
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 >= 3)
  {
    v5 = 3;
  }

  v6 = (v0 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_displayedPageRange);
  v7 = *(v0 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_displayedPageRange);
  v8 = *(v0 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_displayedPageRange + 8);
  *v6 = v3;
  v6[1] = v5;
  if (v7 != v3 || v8 != v5)
  {
    v10 = *(v0 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater);
    if (v10)
    {

      [v10 setNeedsUpdateOf_];
      return;
    }

LABEL_22:
    __break(1u);
  }
}

id sub_1A3DA0174()
{
  result = *(v0 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater);
  if (result)
  {
    return [result setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

void sub_1A3DA019C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(off_1E7721668) init];
  v3 = [v2 setCurrentPage_];
  [v2 setNumberOfPages_];
  [v2 setTarget_];
  [v2 setAction_];
  v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControlConfiguration);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControlConfiguration) = v2;
  if (v4)
  {
    sub_1A3C52C70(0, &qword_1EB12BFC8);
    v5 = v2;
    v10 = v4;
    v6 = sub_1A524DBF4();

    if (v6)
    {

      v7 = v10;
      goto LABEL_7;
    }
  }

  else
  {
    v8 = v2;
  }

  ++*(v1 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControlVersion);
  v9 = *(v1 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater);
  if (!v9)
  {
    __break(1u);
    return;
  }

  [v9 setNeedsUpdateOf_];

  v7 = v4;
LABEL_7:
}

id sub_1A3DA0438(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CarouselContentLayout();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1A3DA04E4()
{
  [v0 alpha];
  v1 = [v0 referenceSize];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))(v1);
  PXRectWithOriginAndSize();
}

void *sub_1A3DA098C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControlConfiguration);
  v2 = v1;
  return v1;
}

id CarouselContentLayout.__allocating_init(composition:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithComposition_];

  return v3;
}

id CarouselContentLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1A3DA0BEC(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CarouselContentLayout();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_1A3DA0CCC(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_scrollPosition] = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_maskingInsetsFraction] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControllerAlpha] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_numberOfPages] = 0;
  v7 = &v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControlSpriteIndex];
  *v7 = 0;
  v7[4] = 1;
  *&v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControlConfiguration] = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControlVersion] = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_mostFocusedPageIndex] = 0;
  v8 = &v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_mostFocusedPageChangeHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater] = 0;
  sub_1A3C341C8(a1, &v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_layoutSpec]);
  v9 = &v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageInfoFetcher];
  *v9 = a2;
  *(v9 + 1) = a3;
  v10 = objc_allocWithZone(off_1E7721500);

  v11 = [v10 initWithElementSize_];
  *&v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_fullsizeFrameRectsStore] = v11;
  *&v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_displayedPageInfos] = MEMORY[0x1E69E7CC0];
  v12 = &v3[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_displayedPageRange];
  v13 = type metadata accessor for CarouselContentLayout();
  *v12 = 0;
  *(v12 + 1) = 0;
  v30.receiver = v3;
  v30.super_class = v13;
  v14 = objc_msgSendSuper2(&v30, sel_init);
  v15 = objc_allocWithZone(off_1E7721940);
  v16 = v14;
  v17 = [v15 initWithTarget:v16 needsUpdateSelector:sel_setNeedsUpdate];
  v18 = OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater;
  v19 = *&v16[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater];
  *&v16[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater] = v17;
  v20 = v17;

  if (!v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v20 addUpdateSelector:sel_updateDisplayedPageRange needsUpdate:1];

  v21 = *&v16[v18];
  if (!v21)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v21 addUpdateSelector_];
  v22 = *&v16[v18];
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v22 addUpdateSelector_];
  v23 = *&v16[v18];
  if (!v23)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v23 addUpdateSelector:sel_updateContent needsUpdate:1];
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(v25 + 40))(v29, v24, v25);
  v26 = v29[3];
  sub_1A3DA1854(v29);
  if (v26)
  {
    v27 = [v16 addSpriteWithInitialState_];
    v28 = &v16[OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControlSpriteIndex];
    *v28 = v27;
    v28[4] = 0;
  }

  [v16 setContentSource_];

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A3DA0FBC(unint64_t a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_layoutSpec);
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_layoutSpec + 24);
  v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_layoutSpec + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_layoutSpec), v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = v4[3];
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  v10 = (*(v9 + 32))(v8, v9);
  [objc_allocWithZone(off_1E77216A0) initWithCornerRadius:1 continuousCorners:v10 maskColor:v7];

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = *(v2 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_displayedPageInfos);
  if (*(v11 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1A3C341C8(v11 + 40 * a1 + 32, v13);
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x1D8))(v13))
  {
    sub_1A3DA04E4();
  }

LABEL_7:
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000026, 0x80000001A53B6200);
  sub_1A3C34400(0, &unk_1EB12C100);
  sub_1A524E624();
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

char *sub_1A3DA17A0(char *result)
{
  v2 = *(v1 + 16);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result;
    v4 = *(v1 + 56);
    v5 = *(v1 + 64);
    v6 = *(v1 + 72);
    if (v2)
    {
      v7 = *(v1 + 24);
      v8 = *(v1 + 40);
      if (v2 >= 4)
      {
        v9 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        v10 = v3 + 64;
        v11 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          *(v10 - 4) = v7;
          *(v10 - 3) = v8;
          *(v10 - 2) = v7;
          *(v10 - 1) = v8;
          *v10 = v7;
          v10[1] = v8;
          v10[2] = v7;
          v10[3] = v8;
          v10 += 8;
          v11 -= 4;
        }

        while (v11);
        if (v2 == v9)
        {
          return [v4 setFrames:v3 forSublayoutsInRange:{v5, v6}];
        }
      }

      else
      {
        v9 = 0;
      }

      v12 = &v3[32 * v9 + 16];
      v13 = v2 - v9;
      do
      {
        *(v12 - 1) = v7;
        *v12 = v8;
        v12 += 32;
        --v13;
      }

      while (v13);
    }

    return [v4 setFrames:v3 forSublayoutsInRange:{v5, v6}];
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3DA1854(uint64_t a1)
{
  sub_1A3DA1C90(0, &qword_1EB12C0D8, &unk_1EB12C0E0, &protocol descriptor for CarouselPageControlSpec, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A3DA18DC()
{
  v1 = *(v0 + 48);
  Sprite.init(rect:mediaKind:)(10, &v24, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v22[0] = v24;
  v22[1] = v25;
  v22[2] = v26;
  v23 = v27;
  SpriteConfiguration.zPosition(_:)(&type metadata for Sprite, &protocol witness table for Sprite, 0.1);

  v2 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  result = *(v1 + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageControlVersion);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 16))
  {
    (*(v2 + 200))(&v24);
    v4 = *(&v25 + 1);
    v5 = v26;
    v6 = __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x100))(v6, v7, v8, v9, v10, v11, v12);
    (*(v5 + 32))(v22, v4, v5);
    v13 = static SpriteBuilder.buildExpression(_:)(v22);
    __swift_destroy_boxed_opaque_existential_0(v22);
    __swift_destroy_boxed_opaque_existential_0(&v24);
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_1A3DA1C0C();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1A52F8E10;
    *(v14 + 32) = v13;
    v21 = static SpriteBuilder.buildBlock(_:)(v14, v15, v16, v17, v18, v19, v20);

    return v21;
  }

  __break(1u);
  return result;
}

void sub_1A3DA1ABC(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v12 = a2;
    v5 = [v4 secondSublayout];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for CarouselSinglePageLayout();
      if (swift_dynamicCastClass())
      {
        v7 = [v4 firstSublayout];
        if (v7)
        {
          v8 = v7;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            sub_1A3DA04E4();
          }

          v11 = v8;
          v10 = v12;
        }

        else
        {
          v10 = v12;
        }
      }

      else
      {
        v10 = v6;
        v6 = v12;
      }

      v9 = v6;
    }

    else
    {
      v9 = v12;
    }
  }
}

void sub_1A3DA1C0C()
{
  if (!qword_1EB138D80)
  {
    sub_1A3DA1C90(255, &qword_1EB12C0F0, &qword_1EB138D90, &protocol descriptor for SpriteConfiguration, MEMORY[0x1E69E62F8]);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138D80);
    }
  }
}

void sub_1A3DA1C90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C34400(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A3DA1CF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_1A3DA1D5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t PhotosSearchSuggestion.localizedTitle.getter()
{
  v1 = [*v0 string];
  v2 = sub_1A524C674();

  return v2;
}

_OWORD *PhotosSearchSuggestion.action.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A3DA1F90(v1 + 88, v19);
  if (v20 > 1u)
  {
    if (v20 == 2)
    {
      v11 = *&v19[1];
      v12 = *&v19[3];
      result = v19[0];
      *&v13 = v19[5];
      if (!v19[0])
      {
        result = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
      }

      *a1 = result;
      v9 = v12;
      *(a1 + 8) = v11;
      *(a1 + 24) = v9;
      *(a1 + 40) = v13;
      v10 = 1;
    }

    else
    {
      *a1 = *v19;
      v10 = 2;
    }
  }

  else
  {
    if (!v20)
    {
      v4 = v19[0];
      sub_1A3DA1FC8(v1, &v11);
      result = swift_allocObject();
      v5 = v18[0];
      result[7] = v17;
      result[8] = v5;
      *(result + 137) = *(v18 + 9);
      v6 = v14;
      result[3] = v13;
      result[4] = v6;
      v7 = v16;
      result[5] = v15;
      result[6] = v7;
      v8 = v12;
      result[1] = v11;
      result[2] = v8;
      *(result + 20) = v4;
      *a1 = sub_1A3DA2000;
      *(a1 + 8) = result;
      *(a1 + 48) = 0;
      return result;
    }

    *a1 = v19[0];
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0;
    v10 = 1;
  }

  *(a1 + 48) = v10;
  return result;
}

id sub_1A3DA2000()
{
  v1 = v0[20];
  v2 = objc_opt_self();
  v3 = v0[7];
  v6 = v0 + 8;
  v4 = v0[8];
  v5 = v6[1];
  type metadata accessor for Key(0);
  sub_1A3C8C10C(&unk_1EB1208B0);
  v7 = sub_1A524C3D4();
  v8 = [v2 updateQueryString:v5 withSelectedSuggestion:v1 inRange:v3 additionalAttributes:{v4, v7}];

  return v8;
}

void sub_1A3DA20D8(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 136) = 0;
  *(a3 + 80) = a1;
  *(a3 + 88) = a1;
  *(a3 + 56) = a2;
  v5 = a1;
  v6 = a2;
  v7 = [v5 px_symbolName];
  v8 = sub_1A524C674();
  v10 = v9;

  *(a3 + 24) = v8;
  *(a3 + 32) = v10;
  *(a3 + 40) = [v5 matchRangeOfSearchText];
  *(a3 + 48) = v11;
  v12 = [v5 px_formattedCount];
  v13 = sub_1A524C674();
  v15 = v14;

  *(a3 + 64) = v13;
  *(a3 + 72) = v15;
  v16 = [v5 text];
  if (!v16)
  {
    sub_1A524C674();
    v16 = sub_1A524C634();
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

  *a3 = v17;
  v18 = [v5 matchRangeOfSearchText];
  if (v18 == sub_1A52403B4() || ([v5 matchRangeOfSearchText], v19 = objc_msgSend(v6, sel_string), sub_1A524C674(), v19, sub_1A524D0F4(), LOBYTE(v19) = v20, , (v19 & 1) != 0))
  {

    v21 = 0;
    v22 = 0;
  }

  else
  {
    v23 = [v6 string];

    sub_1A524C674();
    v24 = sub_1A524C8E4();
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v21 = MEMORY[0x1A5907AC0](v24, v26, v28, v30);
    v22 = v31;
  }

  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
}

void sub_1A3DA2330(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3FAE428();
  v5 = sub_1A3CB2058();
  v6 = v5;
  if (v5)
  {
    v5 = sub_1A3D9D024();
    v7 = &protocol witness table for PHAssetCollection;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 96) = v6;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = v5;
  *(a2 + 128) = v7;
  *(a2 + 136) = 2;
  *(a2 + 80) = a1;
  *(a2 + 88) = v4;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  *(a2 + 48) = 0;
  *(a2 + 56) = v8;
  *(a2 + 24) = 0xD000000000000033;
  *(a2 + 32) = 0x80000001A53B6230;
  *(a2 + 40) = 0;
  sub_1A3FAE1D8();
  v10 = v9;
  v11 = 0;
  v12 = 0;
  if ((v10 & 1) == 0)
  {
    sub_1A3DA24EC();
    v11 = sub_1A524E054();
  }

  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  v13 = sub_1A3FAE428();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v15 = sub_1A3CB2058();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 localizedTitle];

      if (v17)
      {
        sub_1A524C674();
      }
    }

    v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v19 = sub_1A524C634();

    v14 = [v18 initWithString_];
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v14;
}

unint64_t sub_1A3DA24EC()
{
  result = qword_1EB127040;
  if (!qword_1EB127040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127040);
  }

  return result;
}

double sub_1A3DA2540@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 136) = 1;
  *(a2 + 80) = a1;
  *(a2 + 88) = a1;
  v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v5 = a1;
  v6 = [v4 init];
  result = 1.21515491e200;
  *(a2 + 24) = xmmword_1A52FC290;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v5;
  return result;
}

void sub_1A3DA25C0()
{
  sub_1A3DA1F90(v0 + 88, &v4);
  if (v6 > 1u)
  {
    if (v6 == 2)
    {

      sub_1A3C2CE9C(&v5);
    }

    else
    {
      sub_1A3DA26AC(&v4);
    }
  }

  else if (v6)
  {
    sub_1A3DA26AC(&v4);
    v3 = [objc_opt_self() sharedSession];
    [v3 reportInitialSuggestionSelected];
  }

  else
  {
    v1 = v4;
    v2 = [objc_opt_self() sharedSession];
    [v2 reportSearchSuggestionSelected_];
  }
}

void sub_1A3DA26DC()
{
  if (!qword_1EB129AC0)
  {
    sub_1A3C295A0();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129AC0);
    }
  }
}

void sub_1A3DA276C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

double sub_1A3DA27B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xD000000000000017;
  *(a2 + 24) = 0x80000001A53B6270;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  return result;
}

uint64_t sub_1A3DA27E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1A524C634();
  v10 = PXLocalizedString(v9);

  v11 = sub_1A524C674();
  v13 = v12;

  if (a2)
  {

    v20 = a4;
  }

  else
  {

    v11 = 0;
    v13 = 0;
    a3 = 0;
    v20 = 0;
  }

  v14 = sub_1A524C634();
  v15 = PXLocalizedString(v14);

  v16 = sub_1A524C674();
  v18 = v17;

  *a5 = a1;
  *(a5 + 8) = 1;
  *(a5 + 16) = 0xD000000000000017;
  *(a5 + 24) = 0x80000001A53B62D0;
  *(a5 + 32) = v16;
  *(a5 + 40) = v18;
  *(a5 + 48) = v11;
  *(a5 + 56) = v13;
  *(a5 + 64) = a3;
  *(a5 + 72) = v20;
  return result;
}

double sub_1A3DA293C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  v6 = sub_1A524C674();
  v8 = v7;

  *a2 = a1;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0xD000000000000018;
  *(a2 + 24) = 0x80000001A53B6320;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore27LemonadeSearchableContainer_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1A3DA2A3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3DA2A84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A3DA2B04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3DA2B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A3DA2B90(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore0A21SearchSuggestionGroupV6ActionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1A3DA2BFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3DA2C44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3DA2CA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3DA2CF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3DA2D40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3DA2D7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A3DA2DCC(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1A3DA2E04()
{
  sub_1A3C8C10C(&unk_1EB1208B0);
  sub_1A3C8C10C(&qword_1EB135B70);

  return sub_1A524E7E4();
}

void sub_1A3DA2F10()
{
  if (!qword_1EB12C170)
  {
    sub_1A3DA2F78();
    sub_1A3DA3064();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C170);
    }
  }
}

void sub_1A3DA2F78()
{
  if (!qword_1EB12C178)
  {
    sub_1A5249F24();
    sub_1A5249F14();
    sub_1A3DA32BC(&qword_1EB12C180, MEMORY[0x1E697CBC0]);
    sub_1A3DA32BC(&qword_1EB12C188, MEMORY[0x1E697CBB0]);
    v0 = sub_1A5248094();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C178);
    }
  }
}

void sub_1A3DA3064()
{
  if (!qword_1EB127B10)
  {
    v0 = sub_1A5249C54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127B10);
    }
  }
}

void sub_1A3DA30BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5249F34();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  sub_1A52480A4();
  v8 = sub_1A524B3D4();
  v9 = sub_1A524A064();
  sub_1A3DA2F10();
  v11 = a2 + *(v10 + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
}

unint64_t sub_1A3DA31DC()
{
  result = qword_1EB12C190;
  if (!qword_1EB12C190)
  {
    sub_1A3DA2F10();
    sub_1A3DA32BC(&qword_1EB12C198, sub_1A3DA2F78);
    sub_1A3DA32BC(&qword_1EB127B20, sub_1A3DA3064);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C190);
  }

  return result;
}

uint64_t sub_1A3DA32BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3DA3304()
{
  if (!qword_1EB13AE60)
  {
    sub_1A3C52C70(255, &qword_1EB12C1B0);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13AE60);
    }
  }
}

id sub_1A3DA336C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1A3C38BD4();
  sub_1A3C38BD4();
  v38 = a2;
  v39 = a3;
  v40 = a4;
  sub_1A3DA4238(0, &unk_1EB12C1A0, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v37);
  v8 = v37;
  v9 = v37 & 0xFFFFFFFFFFFFFF8;
  if (!(v37 >> 62))
  {
    v10 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_22:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v10 = sub_1A524E2B4();
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_3:
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = v11;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1A59097F0](v13, v8);
      }

      else
      {
        if (v13 >= *(v9 + 16))
        {
          goto LABEL_20;
        }

        v14 = *(v8 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v16 = PXSharedAlbumsAddressForParticipant(v14);
      if (v16)
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        goto LABEL_23;
      }
    }

    v17 = v16;
    v36 = a1;
    v18 = sub_1A524C674();
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1A3D3D914(0, *(v12 + 2) + 1, 1, v12);
    }

    v22 = *(v12 + 2);
    v21 = *(v12 + 3);
    if (v22 >= v21 >> 1)
    {
      v12 = sub_1A3D3D914((v21 > 1), v22 + 1, 1, v12);
    }

    *(v12 + 2) = v22 + 1;
    v23 = &v12[16 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
    a1 = v36;
  }

  while (v11 != v10);
LABEL_23:

  v24 = sub_1A3C4467C(v12);

  result = [objc_opt_self() maxSubscribersPerStream];
  v26 = *(v24 + 16);
  v27 = __OFSUB__(result, v26);
  v28 = result - v26;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v29 = v28 & ~(v28 >> 63);
    v30 = objc_opt_self();
    v31 = sub_1A524C634();

    v32 = sub_1A524C634();

    v33 = sub_1A524CF34();

    sub_1A3DA4164();
    sub_1A5249FD4();
    v34 = v38;
    v35 = [v30 recipientPickerViewControllerWithTitle:v31 toLabel:v32 usedAddresses:v33 maxRecipients:v29 verificationType:0 delegate:v38];

    return v35;
  }

  return result;
}

id sub_1A3DA369C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCV12PhotosUICore27SharedAlbumSubscriberPicker38SharedAlbumSubscriberPickerCoordinator_subscriberPicker];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1A3DA3704()
{
  swift_beginAccess();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DA377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtCV12PhotosUICore27SharedAlbumSubscriberPicker38SharedAlbumSubscriberPickerCoordinator_subscriberPicker);
  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
}

id sub_1A3DA3860(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_34;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((a2 & 0xC000000000000001) == 0)
    {
      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(a2 + 32);
        goto LABEL_6;
      }

      __break(1u);
LABEL_34:
      if (!sub_1A524E2B4())
      {
        return [a1 dismissViewControllerAnimated:1 completion:0];
      }
    }

    v3 = MEMORY[0x1A59097F0](0, a2);
LABEL_6:
    v4 = v3;
    v5 = [v3 emailAddressString];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1A524C674();
      v9 = v8;

      sub_1A3D9E6B8();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1A52F8E10;
      *(v10 + 32) = v7;
      *(v10 + 40) = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v4 phoneNumberString];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1A524C674();
      v15 = v14;

      sub_1A3D9E6B8();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1A52F8E10;
      *(v16 + 32) = v13;
      *(v16 + 40) = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v4 firstName];
    if (v17)
    {
      v18 = v17;
      sub_1A524C674();
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v4 lastName];
    if (v21)
    {
      v22 = v21;
      sub_1A524C674();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = [v4 localizedName];
    if (v25)
    {
      v26 = v25;
      sub_1A524C674();
      v28 = v27;

      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v28 = 0;
      if (v20)
      {
LABEL_20:
        v29 = sub_1A524C634();

        if (v24)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }
    }

    v29 = 0;
    if (v24)
    {
LABEL_21:
      v30 = sub_1A524C634();

      if (v28)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

LABEL_27:
    v30 = 0;
    if (v28)
    {
LABEL_22:
      v31 = sub_1A524C634();

      if (v10)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

LABEL_28:
    v31 = 0;
    if (v10)
    {
LABEL_23:
      v32 = sub_1A524CA14();

      if (v16)
      {
LABEL_24:
        v33 = sub_1A524CA14();

        goto LABEL_31;
      }

LABEL_30:
      v33 = 0;
LABEL_31:
      LOWORD(v37) = 1;
      v34 = [objc_allocWithZone(PXSharedAlbumParticipant) initWithPersonID:0 firstName:v29 lastName:v30 fullName:v31 emails:v32 phones:v33 acceptanceStatus:v37];

      (*((*MEMORY[0x1E69E7D40] & *v39) + 0x58))();
      sub_1A3DA4238(0, &unk_1EB12C1A0, MEMORY[0x1E6981948]);
      v35 = v34;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_29:
    v32 = 0;
    if (v16)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_1A3DA3E0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedAlbumSubscriberPicker.SharedAlbumSubscriberPickerCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A3DA3E9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = type metadata accessor for SharedAlbumSubscriberPicker.SharedAlbumSubscriberPickerCoordinator();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV12PhotosUICore27SharedAlbumSubscriberPicker38SharedAlbumSubscriberPickerCoordinator_subscriberPicker];
  *v6 = v1;
  *(v6 + 1) = v2;
  *(v6 + 2) = v3;
  v7 = v5;
  v8 = v4;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DA3F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3DA41C0();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A3DA3F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3DA41C0();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A3DA3FF8()
{
  sub_1A3DA41C0();
  sub_1A5249ED4();
  __break(1u);
}

__n128 sub_1A3DA4020@<Q0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_1A3DA3304();
  sub_1A524B694();
  sub_1A3DA4238(0, &qword_1EB12C1D0, MEMORY[0x1E6981790]);
  sub_1A524B6C4();

  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1A3DA40CC(uint64_t a1)
{
  v2 = sub_1A3DA440C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A3DA4118(uint64_t a1)
{
  v2 = sub_1A3DA440C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A3DA4164()
{
  if (!qword_1EB12C1B8)
  {
    sub_1A3DA41C0();
    v0 = sub_1A5249FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C1B8);
    }
  }
}

unint64_t sub_1A3DA41C0()
{
  result = qword_1EB12C1C0;
  if (!qword_1EB12C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C1C0);
  }

  return result;
}

void sub_1A3DA4238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3DA3304();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A3DA429C()
{
  result = qword_1EB12C1D8;
  if (!qword_1EB12C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C1D8);
  }

  return result;
}

unint64_t sub_1A3DA42F4()
{
  result = qword_1EB12C1E0;
  if (!qword_1EB12C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C1E0);
  }

  return result;
}

uint64_t sub_1A3DA4364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3DA43AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A3DA440C()
{
  result = qword_1EB12C1F8;
  if (!qword_1EB12C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C1F8);
  }

  return result;
}

uint64_t sub_1A3DA44A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore23PXEditAutomationManager__collectAssetObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3DA45A8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A3DA4608(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore23PXEditAutomationManager__automationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

void sub_1A3DA46A0(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_1A3DA4720()
{
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC12PhotosUICore23PXEditAutomationManager__collectAssetObserver] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = v0;
  v2 = objc_msgSendSuper2(&v5, sel_init);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3 = v2;
  sub_1A3DA4A14();

  swift_unknownObjectRelease();
  return v3;
}

id sub_1A3DA47D4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() defaultCenter];
    [v4 removeObserver_];

    (*((*v1 & *v0) + 0x68))(0);
    swift_unknownObjectRelease();
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for PXEditAutomationManager();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_1A3DA4A14()
{
  v1 = sub_1A524C634();
  v2 = [objc_opt_self() defaultCenter];
  v3 = objc_opt_self();
  v4 = v1;
  v5 = [v3 mainQueue];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1A3DA4C20;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3C7C848;
  v9[3] = &block_descriptor_12;
  v7 = _Block_copy(v9);

  v8 = [v2 addObserverForName:v4 object:0 queue:v5 usingBlock:v7];
  _Block_release(v7);

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))(v8);
}

id sub_1A3DA4C5C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsTimeWidgetView();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PhotosDetailsTimeWidgetViewModel();
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v9 = a1;
  v10 = v8();
  v11 = (*((*v7 & *v2) + 0xA8))();
  v12 = sub_1A3E94328(v9, v10, v11);
  v13 = *((*v7 & *v2) + 0xE0);
  v14 = v12;
  v13(v12);
  sub_1A3DA4DF4();
  v15 = v14;
  sub_1A46451D4(v15, v6);
  v16 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

  return v16;
}

void sub_1A3DA4DF4()
{
  if (!qword_1EB1293B8)
  {
    type metadata accessor for PhotosDetailsTimeWidgetView();
    sub_1A3DA4E58();
    v0 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1293B8);
    }
  }
}

unint64_t sub_1A3DA4E58()
{
  result = qword_1EB12AB48;
  if (!qword_1EB12AB48)
  {
    type metadata accessor for PhotosDetailsTimeWidgetView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AB48);
  }

  return result;
}

double sub_1A3DA4EB0()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6E6C90);
  (*(v2 + 8))(v4, v1);
  return v8;
}

id sub_1A3DA51F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsTimeWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PhotosSearchResults.allResultAssetUUIDs.getter()
{
  type metadata accessor for PhotosSearchResults(0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void PhotosSearchResults.matchedContextualVideoThumbnailIdentifiers.getter()
{
  type metadata accessor for PhotosSearchResults(0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DA5294()
{
  result = type metadata accessor for PhotosSearchResults(0);
  v2 = *(v0 + *(result + 28));
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_11:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(*(v2 + 56) + ((v8 << 9) | (8 * v9))) + 16))
    {
      return 1;
    }
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return 0;
    }

    v6 = *(v2 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3DA535C()
{
  v1 = type metadata accessor for PhotosSearchResults(0);
  v2 = 0;
  result = 0;
  v4 = *(v0 + *(v1 + 28));
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v2;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(*(v4 + 56) + ((v9 << 9) | (8 * v10))) + 16);
    v12 = __OFADD__(result, v11);
    result += v11;
    if (v12)
    {
      __break(1u);
      return result;
    }
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return result;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}