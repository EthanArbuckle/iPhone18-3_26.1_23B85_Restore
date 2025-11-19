void sub_270269F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v50 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection;
    v52 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v48 = v5;
    v49 = a3;
    v7 = *(v52 + 8 * a3);
    v53 = v6;
    while (1)
    {
      v8 = *v5;
      v9 = *&v7[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
      v10 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v11 = *(v9 + v10);
      v12 = *(a5 + v50);
      v13 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v14 = *(v12 + v13);
      v15 = &v11[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      v54 = v7;
      v20 = v8;
      v21 = v11;
      v22 = v14;
      v55.origin.x = v16;
      v55.origin.y = v17;
      v55.size.width = v18;
      v55.size.height = v19;
      MidX = CGRectGetMidX(v55);
      v24 = &v22[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v25 = CGRectGetMidX(*v24);

      v26 = MidX - v25;
      v27 = fabsf(v26);
      v28 = *&v20[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
      v29 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v30 = *(v28 + v29);
      v31 = *(a5 + v50);
      v32 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v33 = *(v31 + v32);
      v34 = &v30[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v35 = *v34;
      v36 = v34[1];
      v37 = v34[2];
      v38 = v34[3];
      v39 = v30;
      v40 = v33;
      v56.origin.x = v35;
      v56.origin.y = v36;
      v56.size.width = v37;
      v56.size.height = v38;
      v41 = CGRectGetMidX(v56);
      v42 = &v40[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v43 = CGRectGetMidX(*v42);

      v44 = v41 - v43;
      if (v27 >= fabsf(v44))
      {
LABEL_4:
        a3 = v49 + 1;
        v5 = v48 + 8;
        --v6;
        if (v49 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v45 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v45;
      v5 -= 8;
      if (__CFADD__(v53++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_27026A22C(uint64_t *a1, void *a2)
{
  swift_getObjectType();
  v4 = a1[1];
  v5 = a2;
  v6 = sub_2702B473C();
  if (v6 < v4)
  {
    if (v4 >= -1)
    {
      v7 = v6;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v9 = sub_2702B41DC();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_2702693E0(v11, v12, a1, v7, v10);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = v5;
    sub_270269F48(0, v4, 1, a1, v5);
  }
}

void sub_27026A378(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2702A88A0(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_27026A22C(v8, v7);

  sub_2702B455C();
}

uint64_t sub_27026A418(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children;
  swift_beginAccess();
  v79 = v5;
  v80 = a1;
  v6 = *(a1 + v5);
  swift_bridgeObjectRetain_n();
  v7 = a2;
  v90[0] = sub_2702A0440(v6);
  sub_27026A378(v90, v7);

  v8 = v90[0];
  v9 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children;
  swift_beginAccess();
  v77 = v9;
  v10 = *&v7[v9];
  swift_bridgeObjectRetain_n();
  v78 = v7;
  v11 = v7;
  v89[0] = sub_2702A0440(v10);
  sub_27026A378(v89, v11);

  v12 = v89[0];
  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v13 = sub_2702B45FC();
  }

  else
  {
    v13 = *(v8 + 16);
  }

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v88 = MEMORY[0x277D84F90];
    sub_27029C440(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      goto LABEL_94;
    }

    v85 = v12;
    v15 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x27439C0F0](v15, v8);
      }

      else
      {
        v16 = *(v8 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = *&v16[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
      v19 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v20 = *(v18 + v19);
      if (*(v20 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
      {
        v21 = (v20 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
        swift_beginAccess();
        v22 = *v21;
        v23 = v21[1];

        if (!v23)
        {
          v22 = 0;
          v23 = 0xE000000000000000;
        }
      }

      else
      {

        v22 = 0;
        v23 = 0xE000000000000000;
      }

      v25 = *(v88 + 16);
      v24 = *(v88 + 24);
      v2 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        sub_27029C440((v24 > 1), v25 + 1, 1);
      }

      ++v15;
      *(v88 + 16) = v2;
      v26 = v88 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
    }

    while (v13 != v15);

    v14 = MEMORY[0x277D84F90];
    v12 = v85;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C86B8);
  sub_270259914(&qword_2807C86C0, &qword_2807C86B8);
  v27 = sub_2702B3FBC();
  v29 = v28;

  v84 = v29;
  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    v30 = sub_2702B45FC();
    if (v30)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v30 = *(v12 + 16);
    if (v30)
    {
LABEL_23:
      sub_27029C440(0, v30 & ~(v30 >> 63), 0);
      if (v30 < 0)
      {
        goto LABEL_95;
      }

      v83 = v27;
      v31 = 0;
      v32 = v14;
      v33 = v12 & 0xC000000000000001;
      do
      {
        if (v33)
        {
          v34 = MEMORY[0x27439C0F0](v31, v12);
        }

        else
        {
          v34 = *(v12 + 8 * v31 + 32);
        }

        v35 = v34;
        v36 = v12;
        v37 = *&v34[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
        v38 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v39 = *(v37 + v38);
        if (*(v39 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
        {
          v40 = (v39 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
          swift_beginAccess();
          v42 = *v40;
          v41 = v40[1];

          if (v41)
          {
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }

          if (v41)
          {
            v44 = v41;
          }

          else
          {
            v44 = 0xE000000000000000;
          }
        }

        else
        {

          v43 = 0;
          v44 = 0xE000000000000000;
        }

        v46 = *(v32 + 16);
        v45 = *(v32 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_27029C440((v45 > 1), v46 + 1, 1);
        }

        ++v31;
        *(v32 + 16) = v46 + 1;
        v47 = v32 + 16 * v46;
        *(v47 + 32) = v43;
        *(v47 + 40) = v44;
        v12 = v36;
      }

      while (v30 != v31);

      v27 = v83;
      goto LABEL_43;
    }
  }

LABEL_43:
  sub_2702B3FBC();

  if (sub_2702B40CC() > 1 || sub_2702B40CC() > 1)
  {
    goto LABEL_101;
  }

  v82 = v27;
  v2 = *(v80 + v79);
  v87 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_96;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2702B45FC())
  {

    v49 = MEMORY[0x277D84F90];
    if (i)
    {
      v50 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x27439C0F0](v50, v2);
        }

        else
        {
          if (v50 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_91;
          }

          v51 = *(v2 + 8 * v50 + 32);
        }

        v52 = v51;
        v53 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        v54 = *&v51[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
        v55 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if ((*(*(v54 + v55) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) | 2) == 6)
        {
          sub_2702B454C();
          sub_2702B457C();
          sub_2702B458C();
          sub_2702B455C();
        }

        else
        {
        }

        ++v50;
        if (v53 == i)
        {
          v56 = v87;
          v49 = MEMORY[0x277D84F90];
          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v56 = MEMORY[0x277D84F90];
LABEL_60:

    v57 = *&v78[v77];
    v86 = v49;
    v58 = v57 >> 62 ? sub_2702B45FC() : *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v58)
    {
      break;
    }

    v81 = v56;
    v2 = 0;
    while (1)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x27439C0F0](v2, v57);
      }

      else
      {
        if (v2 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v59 = *(v57 + 8 * v2 + 32);
      }

      v60 = v59;
      v61 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v62 = *&v59[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
      v63 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if ((*(*(v62 + v63) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) | 2) == 6)
      {
        sub_2702B454C();
        sub_2702B457C();
        sub_2702B458C();
        sub_2702B455C();
      }

      else
      {
      }

      ++v2;
      if (v61 == v58)
      {
        v49 = v86;
        v56 = v81;
        goto LABEL_74;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    ;
  }

LABEL_74:

  if (v56 < 0 || (v56 & 0x4000000000000000) != 0)
  {
    v64 = sub_2702B45FC();
  }

  else
  {
    v64 = *(v56 + 16);
  }

  v65 = v84;
  if (v64 <= 0)
  {
    goto LABEL_100;
  }

  if ((v49 & 0x8000000000000000) == 0 && (v49 & 0x4000000000000000) == 0)
  {
    if (*(v49 + 16) >= 1)
    {
      goto LABEL_81;
    }

LABEL_100:

LABEL_101:
    sub_270264230();
    v71 = sub_2702B440C();
    v73 = v72;
    v74 = sub_2702B440C();
    sub_270287278(v71, v73, v74, v75);
    v69 = v76;

    return v69 > 0.8;
  }

  if (sub_2702B45FC() < 1)
  {
    goto LABEL_100;
  }

LABEL_81:

  if ((v56 & 0xC000000000000001) == 0)
  {
    if (*(v56 + 16))
    {
      v66 = *(v56 + 32);
      goto LABEL_84;
    }

    __break(1u);
LABEL_106:
    __break(1u);

    __break(1u);

    __break(1u);
    return result;
  }

  v66 = MEMORY[0x27439C0F0](0, v56);
LABEL_84:
  v65 = v66;

  if ((v49 & 0xC000000000000001) != 0)
  {
    v67 = MEMORY[0x27439C0F0](0, v49);
  }

  else
  {
    if (!*(v49 + 16))
    {
      goto LABEL_106;
    }

    v67 = *(v49 + 32);
  }

  v68 = v67;

  if (sub_27026E9B0(v65, v68, 1))
  {
    v69 = sub_270270CD8(v65, v68);

    return v69 > 0.8;
  }

  return 0;
}

uint64_t sub_27026AE30(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
    if (sub_2702B45FC() != 1)
    {
      goto LABEL_11;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_11;
  }

  result = swift_beginAccess();
  v7 = *(a1 + v4);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x27439C0F0](0);
LABEL_6:
    v9 = v8;
    swift_endAccess();
    v10 = *&v9[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
    v11 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    v12 = *(*(v10 + v11) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label);

    if (v12 == 4)
    {
      return sub_27026E9B0(a1, a2, 1) && sub_270270CD8(a1, a2) > 0.8;
    }

LABEL_11:
    sub_2702684C8(a1, a2);
    return v13;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_27026AFD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection) + OBJC_IVAR___UIObjectCompat_groupingInfo;
  if (*(v2 + 16))
  {
    goto LABEL_14;
  }

  v3 = *(a2 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection) + OBJC_IVAR___UIObjectCompat_groupingInfo;
  if (*(v3 + 16))
  {
    goto LABEL_14;
  }

  v4 = *(v2 + 8);
  if (v4 != *(v3 + 8))
  {
    goto LABEL_14;
  }

  v5 = *(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_parentDetection);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *(a2 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_parentDetection);
  if (v6)
  {
    v7 = vdupq_n_s64(v4);
    if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_288036498, v7), vceqq_s64(unk_2880364A8, v7)))))
    {
      v8 = v5;
      v9 = v6;
      v10 = v8;
      v11 = v9;
LABEL_8:
      sub_2702684C8(v10, v11);
LABEL_9:
      LOBYTE(v6) = v12;
      v14 = v13;

      return v6 & 1;
    }

    switch(v4)
    {
      case 2uLL:
        v9 = v5;
        v8 = v6;
        v12 = sub_27026A418(v9, v8);
        goto LABEL_9;
      case 0xEuLL:
        v9 = v5;
        v8 = v6;
        v12 = sub_27026AE30(v9, v8);
        goto LABEL_9;
      case 7uLL:
        v9 = v5;
        v8 = v6;
        v10 = v9;
        v11 = v8;
        goto LABEL_8;
    }

LABEL_14:
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

double sub_27026B138(uint64_t a1, char *a2)
{
  v4 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection;
  v5 = *&a2[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
  v6 = *(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v7 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v8 = *(*(v6 + v7) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label);
  v9 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v10 = *(*&v5[v9] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label);
  v11 = v5;
  if (v8 == v10 || (sub_27026ECA0(a1), v14 = 0.0, (v16 & 1) != 0) && (sub_27026ECA0(a2), (v17 & 1) != 0))
  {
    v12 = *(a1 + v4);
    v13 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    if (*(*(v12 + v13) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
    {
      v14 = sub_2702684C8(a1, a2);
      v5 = v15;
    }

    else
    {
      v14 = 0.0;
    }

    sub_27026ECA0(a1);
    if (v18)
    {
      sub_27026ECA0(a2);
      if (v19)
      {
        if (sub_27026E9B0(a1, a2, 1))
        {
          v14 = sub_270270CD8(a1, a2);

          v5 = 0;
        }

        else
        {

          v5 = 0;
          v14 = -1.0;
        }
      }
    }

    v20 = *(a1 + v4);
    v21 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    if (*(*(v20 + v21) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 6)
    {
      if (sub_27026E9B0(a1, a2, 1))
      {
        v14 = sub_270270CD8(a1, a2);

        v5 = 0;
      }

      else
      {

        v5 = 0;
        v14 = -1.0;
      }
    }

    v22 = *(a1 + v4);
    v23 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    if (*(*(v22 + v23) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 11)
    {
      sub_2702689B8(a1, a2);
      v14 = v24;
      v26 = v25;

      v5 = v26;
    }

    v27 = *(a1 + v4);
    v28 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    if (*(*(v27 + v28) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 3)
    {
      v29 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v30 = *(v27 + v29);
      v31 = *&a2[v4];
      v32 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v33 = *(v31 + v32);
      v34 = v30;
      v35 = v33;
      v36 = sub_2702986C4(v35);

      v5 = 0;
      v14 = (1.0 - v36);
    }

    v37 = *(a1 + v4);
    v38 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    if (*(*(v37 + v38) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 8)
    {
      v39 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v40 = *(v37 + v39);
      v41 = *&a2[v4];
      v42 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v43 = *(v41 + v42);
      v44 = v40;
      v45 = v43;
      v46 = sub_2702986C4(v45);

      v5 = 0;
      v14 = (1.0 - v46);
    }

    v47 = *(a1 + v4);
    v48 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    if (*(*(v47 + v48) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 5)
    {
      v49 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v50 = *(v47 + v49);
      v51 = *&a2[v4];
      v52 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v53 = *(v51 + v52);
      v54 = v50;
      v55 = v53;
      v56 = sub_2702986C4(v55);

      v5 = 0;
      v14 = (1.0 - v56);
    }

    v57 = *(a1 + v4);
    v58 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    if (*(*(v57 + v58) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 7)
    {
      v14 = sub_2702684C8(a1, a2);
      v60 = v59;

      v5 = v60;
    }

    v61 = *(a1 + v4);
    v62 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    if (*(*(v61 + v62) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 2)
    {
      sub_27026A418(a1, a2);
      v14 = v63;
      v65 = v64;

      v5 = v65;
    }

    v66 = *(a1 + v4);
    v67 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    v68 = vdupq_n_s64(*(*(v66 + v67) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label));
    if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_288036498, v68), vceqq_s64(unk_2880364A8, v68)))))
    {
      v14 = sub_2702684C8(a1, a2);
      v70 = v69;

      v5 = v70;
    }

    v71 = *(a1 + v4);
    v72 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    if (*(*(v71 + v72) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 14)
    {
      sub_27026AE30(a1, a2);
      v14 = v73;
    }

    sub_27026AFD4(a1, a2);
  }

  return v14;
}

uint64_t sub_27026B760(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_2702B45FC();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_19:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v4 < 1)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      v8 = (a2 & 0xC000000000000001) != 0 ? MEMORY[0x27439C0F0](v7, a2) : *(a2 + 32 + 8 * v7);
      v9 = v8;
      v5 = v7 + 1;
      v12 = sub_27026B138(a1, v8);
      v13 = v10;
      if (v14)
      {
        break;
      }

      ++v7;
      if (v4 == v5)
      {
        goto LABEL_20;
      }
    }

    v15 = v12;
    r1 = v11;

    v16 = *&v9[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
    v122 = v16;
    v125 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_270291330(0, *(v6 + 2) + 1, 1, v6);
    }

    v18 = *(v6 + 2);
    v17 = *(v6 + 3);
    r1_16 = v6;
    if (v18 >= v17 >> 1)
    {
      r1_16 = sub_270291330((v17 > 1), v18 + 1, 1, v6);
    }

    *(r1_16 + 2) = v18 + 1;
    v6 = r1_16;
    v19 = &r1_16[32 * v18];
    v19[32] = 1;
    *(v19 + 5) = v15;
    *(v19 + 6) = v125;
    v19[56] = r1 & 1;
    v19[57] = HIBYTE(r1) & 1;
  }

  while (v4 - 1 != v7);
LABEL_20:
  if (!*(v6 + 2))
  {

    return 0;
  }

  v133 = v6;

  sub_2702677D0(&v133);
  r1_8 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection;
  v20 = v133;
  if ((*(*(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection) + OBJC_IVAR___UIObjectCompat_groupingInfo + 16) & 1) == 0)
  {
    v4 = 0;
    v21 = *(v133 + 2);
    v22 = MEMORY[0x277D84F90];
LABEL_23:
    v23 = 32 * v4;
    while (v21 != v4)
    {
      if (v4 >= *(v20 + 2))
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v24 = v23 + 32;
      ++v4;
      v25 = v20[v23 + 57];
      v23 += 32;
      if (v25)
      {
        v26 = v20[v24];
        v27 = *&v20[v24 + 8];
        v28 = *&v20[v24 + 16];
        v29 = v20[v24 + 24];
        v30 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v133 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_27029C460(0, *(v22 + 2) + 1, 1);
          v22 = v133;
        }

        v33 = *(v22 + 2);
        v32 = *(v22 + 3);
        if (v33 >= v32 >> 1)
        {
          sub_27029C460((v32 > 1), v33 + 1, 1);
          v22 = v133;
        }

        *(v22 + 2) = v33 + 1;
        v34 = &v22[32 * v33];
        v34[32] = v26;
        *(v34 + 5) = v27;
        *(v34 + 6) = v28;
        v34[56] = v29;
        v34[57] = 1;
        goto LABEL_23;
      }
    }

    if (!*(v22 + 2))
    {

      goto LABEL_37;
    }

    if (!*(v22 + 2))
    {
      goto LABEL_79;
    }

    v35 = *(v22 + 6);
    v36 = v35;
    goto LABEL_54;
  }

LABEL_37:
  v4 = *(v20 + 2);
  if (v4)
  {
    v37 = 0;
    v38 = *(v20 + 5);
    v39 = MEMORY[0x277D84F90];
LABEL_39:
    v40 = 32 * v37;
    while (v4 != v37)
    {
      if (v37 >= *(v20 + 2))
      {
        __break(1u);
        goto LABEL_75;
      }

      v41 = v40 + 32;
      ++v37;
      v42 = *&v20[v40 + 40];
      v40 += 32;
      if (vabdd_f64(v42, v38) < 0.01)
      {
        v43 = v20[v41];
        v44 = *&v20[v41 + 16];
        r1a = v20[v41 + 24];
        v45 = v20[v41 + 25];
        v46 = v44;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v39;
        if ((v47 & 1) == 0)
        {
          sub_27029C460(0, *(v39 + 2) + 1, 1);
          v39 = v133;
        }

        v49 = *(v39 + 2);
        v48 = *(v39 + 3);
        if (v49 >= v48 >> 1)
        {
          sub_27029C460((v48 > 1), v49 + 1, 1);
          v39 = v133;
        }

        *(v39 + 2) = v49 + 1;
        v50 = &v39[32 * v49];
        v50[32] = v43;
        *(v50 + 5) = v42;
        *(v50 + 6) = v44;
        v50[56] = r1a;
        v50[57] = v45;
        goto LABEL_39;
      }
    }

    if (*(v39 + 2) <= 1uLL)
    {

      v35 = *(v20 + 6);
      v54 = v35;
      goto LABEL_54;
    }

    v51 = *(v39 + 2);
    if (!v51)
    {

      return 0;
    }

    v52 = *(v39 + 6);
    v53 = v52;
    v110 = v51 - 1;
    if (v51 != 1)
    {
      v56 = v39 + 48;
      v57 = 1;
      v111 = v51;
      v112 = v39;
      v109 = v39 + 48;
      v113 = a1;
LABEL_58:
      v4 = &v56[32 * v57];
      v58 = v57;
      v114 = v52;
      do
      {
        if (v58 >= *(v39 + 2))
        {
          goto LABEL_76;
        }

        v35 = *v4;
        v67 = *(a1 + r1_8);
        v68 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        if (v35)
        {
          v69 = *(v67 + v68);
          v70 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          if (!v52)
          {
            v35 = 0;
            a1 = v113;
LABEL_72:
            v57 = v58 + 1;
            v52 = v35;
            v56 = v109;
            if (v110 != v58)
            {
              goto LABEL_58;
            }

            goto LABEL_52;
          }

          v71 = *&v35[v70];
          v72 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v73 = *&v52[v72];
          v74 = &v71[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v75 = *v74;
          v76 = v74[1];
          v77 = v74[2];
          v78 = v74[3];
          v79 = &v69[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v80 = *v79;
          v81 = v79[1];
          v82 = v79[2];
          v83 = v79[3];
          v84 = v69;
          v126 = v35;
          v85 = v71;
          v86 = v73;
          r1b = v75;
          v137.origin.x = v75;
          r2_24 = v77;
          v123 = v76;
          v137.origin.y = v76;
          v137.size.width = v77;
          r2_8 = v80;
          r2_16 = v78;
          v137.size.height = v78;
          v147.origin.x = v80;
          v147.origin.y = v81;
          v147.size.width = v82;
          v147.size.height = v83;
          v138 = CGRectUnion(v137, v147);
          x = v138.origin.x;
          y = v138.origin.y;
          width = v138.size.width;
          height = v138.size.height;
          v91 = CGRectGetHeight(v138);
          v139.origin.x = x;
          v139.origin.y = y;
          v139.size.width = width;
          v139.size.height = height;
          v92 = v91 * CGRectGetWidth(v139);
          v93 = 0.0;
          if (v92 != 0.0)
          {
            v140.origin.x = r1b;
            v140.size.width = r2_24;
            v140.origin.y = v123;
            v148.origin.x = r2_8;
            v140.size.height = r2_16;
            v148.origin.y = v81;
            v148.size.width = v82;
            v148.size.height = v83;
            v141 = CGRectIntersection(v140, v148);
            v94 = v141.origin.x;
            v95 = v141.origin.y;
            v96 = v141.size.width;
            v97 = v141.size.height;
            v98 = CGRectGetHeight(v141);
            v142.origin.x = v94;
            v142.origin.y = v95;
            v142.size.width = v96;
            v142.size.height = v97;
            v93 = v98 * CGRectGetWidth(v142) / v92;
          }

          r1c = v93;
          v99 = &v86[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v143 = *v99;
          v149.origin.x = *v79;
          v100 = v79[1];
          v101 = v79[2];
          v102 = v79[3];
          r2_24a = v143.origin.y;
          v124 = v99->origin.x;
          r2_8a = v143.size.height;
          r2_16a = v143.size.width;
          r2 = *v79;
          v149.origin.y = v100;
          v149.size.width = v101;
          v149.size.height = v102;
          v144 = CGRectUnion(*v99, v149);
          v103 = v144.origin.x;
          v104 = v144.origin.y;
          v105 = v144.size.width;
          v106 = v144.size.height;
          v107 = CGRectGetHeight(v144);
          v145.origin.x = v103;
          v145.origin.y = v104;
          v145.size.width = v105;
          v145.size.height = v106;
          v108 = v107 * CGRectGetWidth(v145);
          a1 = v113;
          if (v108 == 0.0)
          {

            v66 = r1c <= 0.0;
          }

          else
          {
            v134.origin.y = r2_24a;
            v134.origin.x = v124;
            v134.size.height = r2_8a;
            v134.size.width = r2_16a;
            v146.origin.x = r2;
            v146.origin.y = v100;
            v146.size.width = v101;
            v146.size.height = v102;
            v135 = CGRectIntersection(v134, v146);
            v59 = v135.origin.x;
            v60 = v135.origin.y;
            v61 = v135.size.width;
            v62 = v135.size.height;
            v63 = CGRectGetHeight(v135);
            v136.origin.x = v59;
            v136.origin.y = v60;
            v136.size.width = v61;
            v136.size.height = v62;
            v64 = CGRectGetWidth(v136);

            v65 = v63 * v64 / v108;
            v66 = r1c <= v65;
          }

          v39 = v112;
          v52 = v114;
          if (!v66)
          {

            v51 = v111;
            goto LABEL_72;
          }

          v51 = v111;
        }

        ++v58;
        v4 += 32;
      }

      while (v51 != v58);
    }

    v35 = v52;
LABEL_52:

LABEL_54:

    return v35;
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);

  __break(1u);
  return result;
}

void sub_27026BFC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2702B45FC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    do
    {
      v4 = MEMORY[0x27439C0F0](v3++, a1);
      v5 = *(v4 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
      swift_unknownObjectRelease();
      v6 = *&v5[OBJC_IVAR___UIObjectCompat_groupingInfo];
      *&v5[OBJC_IVAR___UIObjectCompat_groupingInfo] = 0;
    }

    while (v2 != v3);
  }

  else
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      v9 = *(v8 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
      v10 = *(v9 + OBJC_IVAR___UIObjectCompat_groupingInfo);
      *(v9 + OBJC_IVAR___UIObjectCompat_groupingInfo) = 0;

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_27026C148(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id UIFingerprintingDetectionInfo.__allocating_init(detection:detectionsInScreen:label:screenshot:boundingBox:text:children:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v14 = objc_allocWithZone(v8);
  v15 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detectionsInScreen;
  v16 = MEMORY[0x277D84F90];
  *&v14[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detectionsInScreen] = MEMORY[0x277D84F90];
  *&v14[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_parentDetection] = 0;
  v17 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children;
  *&v14[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children] = v16;
  *&v14[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection] = a1;
  *&v14[v15] = a2;
  *&v14[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_screenshot] = a4;
  swift_beginAccess();
  *&v14[v17] = a8;
  v22.receiver = v14;
  v22.super_class = v8;
  v18 = a1;
  v19 = a4;
  v20 = objc_msgSendSuper2(&v22, sel_init);

  return v20;
}

id UIFingerprintingDetectionInfo.init(detection:detectionsInScreen:label:screenshot:boundingBox:text:children:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  v15 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detectionsInScreen;
  v16 = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detectionsInScreen] = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_parentDetection] = 0;
  v17 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children;
  *&v8[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children] = v16;
  *&v8[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection] = a1;
  *&v8[v15] = a2;
  *&v8[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_screenshot] = a4;
  swift_beginAccess();
  *&v8[v17] = a8;
  v22.receiver = v8;
  v22.super_class = ObjectType;
  v18 = a1;
  v19 = a4;
  v20 = objc_msgSendSuper2(&v22, sel_init);

  return v20;
}

id UIFingerprintingDetectionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIFingerprintingDetectionInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_27026C5BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_27026C618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_27026C6B4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2702A88A0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_27026C730(v6);
  return sub_2702B455C();
}

void sub_27026C730(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2702B473C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for UIObject();
        v6 = sub_2702B41DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_27026CC00(v8, v9, a1, v4);
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
    sub_27026C834(0, v2, 1, a1);
  }
}

void sub_27026C834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v40 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v39 = a3;
    v6 = *(v40 + 8 * a3);
    v37 = v5;
    v38 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v9 = *&v6[v8];
      v10 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v11 = *&v7[v10];
      v12 = &v9[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      v17 = v6;
      v18 = v7;
      v19 = v9;
      v20 = v11;
      v41.origin.x = v13;
      v41.origin.y = v14;
      v41.size.width = v15;
      v41.size.height = v16;
      MinY = CGRectGetMinY(v41);
      if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (MinY <= -9.22337204e18)
      {
        goto LABEL_36;
      }

      if (MinY >= 9.22337204e18)
      {
        goto LABEL_37;
      }

      v22 = &v20[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v23 = CGRectGetMinY(*v22);
      if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_38;
      }

      if (v23 <= -9.22337204e18)
      {
        goto LABEL_39;
      }

      if (v23 >= 9.22337204e18)
      {
        goto LABEL_40;
      }

      v24 = MinY - v23;
      if (__OFSUB__(MinY, v23))
      {
        goto LABEL_41;
      }

      if (v24 < 0)
      {
        v25 = __OFSUB__(0, v24);
        v24 = v23 - MinY;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      v26 = *v12;
      v27 = *(v12 + 1);
      v28 = *(v12 + 2);
      v29 = *(v12 + 3);
      if (v24 > 19)
      {
        MinX = CGRectGetMinX(*&v26);
        if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_42;
        }

        if (MinX <= -9.22337204e18)
        {
          goto LABEL_45;
        }

        if (MinX >= 9.22337204e18)
        {
          goto LABEL_46;
        }

        v33 = CGRectGetMinX(*v22);

        if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_49;
        }

        if (v33 <= -9.22337204e18)
        {
          goto LABEL_51;
        }

        if (v33 >= 9.22337204e18)
        {
          goto LABEL_52;
        }

        if (v33 < MinX)
        {
LABEL_4:
          a3 = v39 + 1;
          v4 = v38 + 8;
          v5 = v37 - 1;
          if (v39 + 1 == a2)
          {
            return;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v30 = CGRectGetMinY(*&v26);
        if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_43;
        }

        if (v30 <= -9.22337204e18)
        {
          goto LABEL_44;
        }

        if (v30 >= 9.22337204e18)
        {
          goto LABEL_47;
        }

        v31 = CGRectGetMinY(*v22);

        if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_48;
        }

        if (v31 <= -9.22337204e18)
        {
          goto LABEL_50;
        }

        if (v31 >= 9.22337204e18)
        {
          goto LABEL_53;
        }

        if (v31 < v30)
        {
          goto LABEL_4;
        }
      }

      if (!v40)
      {
        goto LABEL_55;
      }

      v34 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v34;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }
}

void sub_27026CC00(CGFloat **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_137:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_216;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_139;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v150 = v9;
    if (v8 + 1 >= v7)
    {
      goto LABEL_42;
    }

    v148 = v7;
    v142 = v6;
    v12 = *(*a3 + 8 * v11);
    v146 = 8 * v8;
    v13 = (*a3 + 8 * v8);
    v15 = *v13;
    v14 = v13 + 2;
    v16 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v17 = *&v12[v16];
    v18 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v19 = *&v15[v18];
    v5 = v12;
    v20 = v15;
    v21 = v17;
    v22 = v19;
    _s15UIUnderstanding9UIUSorterC20compareForNavigation3box8otherBox16topEdgeThresholdSbAA08BoundingH0C_AISitFZ_0(v21, v22, 20);
    v152 = v23;

    v140 = v8;
    v24 = v8 + 2;
    do
    {
      v48 = v148;
      if (v148 == v24)
      {
        goto LABEL_33;
      }

      v26 = *(v14 - 1);
      v25 = *v14;
      v27 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v28 = *&v25[v27];
      v29 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v30 = *&v26[v29];
      v5 = &v28[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v31 = *v5;
      v32 = *(v5 + 8);
      v33 = *(v5 + 16);
      v34 = *(v5 + 24);
      v35 = v25;
      v6 = v26;
      v36 = v28;
      v37 = v30;
      v154.origin.x = v31;
      v154.origin.y = v32;
      v154.size.width = v33;
      v154.size.height = v34;
      MinY = CGRectGetMinY(v154);
      v9 = 0x7FEFFFFFFFFFFFFFLL;
      if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_156;
      }

      if (MinY <= -9.22337204e18)
      {
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        v9 = sub_2702A6924(v9);
LABEL_139:
        v134 = v6;
        v135 = *(v9 + 16);
        if (v135 >= 2)
        {
          while (*a3)
          {
            v6 = *(v9 + 16 * v135);
            v136 = *(v9 + 16 * (v135 - 1) + 40);
            sub_27026D88C((*a3 + 8 * v6), (*a3 + 8 * *(v9 + 16 * (v135 - 1) + 32)), (*a3 + 8 * v136), v5);
            if (v134)
            {
              goto LABEL_147;
            }

            if (v136 < v6)
            {
              goto LABEL_202;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_2702A6924(v9);
            }

            if (v135 - 2 >= *(v9 + 16))
            {
              goto LABEL_203;
            }

            v137 = (v9 + 16 * v135);
            *v137 = v6;
            v137[1] = v136;
            sub_2702A6898(v135 - 1);
            v135 = *(v9 + 16);
            if (v135 <= 1)
            {
              goto LABEL_147;
            }
          }

          goto LABEL_213;
        }

LABEL_147:

        return;
      }

      if (MinY >= 9.22337204e18)
      {
        goto LABEL_158;
      }

      v39 = &v37[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v40 = CGRectGetMinY(*v39);
      if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_159;
      }

      if (v40 <= -9.22337204e18)
      {
        goto LABEL_160;
      }

      if (v40 >= 9.22337204e18)
      {
        goto LABEL_161;
      }

      v41 = MinY - v40;
      if (__OFSUB__(MinY, v40))
      {
        goto LABEL_162;
      }

      if (v41 < 0)
      {
        v75 = __OFSUB__(0, v41);
        v41 = v40 - MinY;
        if (v75)
        {
          goto LABEL_201;
        }
      }

      v42 = *v5;
      v43 = *(v5 + 8);
      v44 = *(v5 + 16);
      v45 = *(v5 + 24);
      if (v41 > 19)
      {
        MinX = CGRectGetMinX(*&v42);
        if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_180;
        }

        if (MinX <= -9.22337204e18)
        {
          goto LABEL_182;
        }

        if (MinX >= 9.22337204e18)
        {
          goto LABEL_184;
        }

        v47 = CGRectGetMinX(*v39);
        v9 = *&v47;

        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_186;
        }

        if (v47 <= -9.22337204e18)
        {
          goto LABEL_187;
        }

        if (v47 >= 9.22337204e18)
        {
          goto LABEL_189;
        }
      }

      else
      {
        MinX = CGRectGetMinY(*&v42);
        if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_179;
        }

        if (MinX <= -9.22337204e18)
        {
          goto LABEL_181;
        }

        if (MinX >= 9.22337204e18)
        {
          goto LABEL_183;
        }

        v47 = CGRectGetMinY(*v39);
        v9 = *&v47;

        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_185;
        }

        if (v47 <= -9.22337204e18)
        {
          goto LABEL_188;
        }

        if (v47 >= 9.22337204e18)
        {
          goto LABEL_190;
        }
      }

      ++v24;
      ++v14;
      v9 = v150;
    }

    while ((v152 & 1) == v47 >= MinX);
    v48 = v24 - 1;
LABEL_33:
    v10 = v140;
    v6 = v142;
    v49 = v146;
    if (v152)
    {
      break;
    }

LABEL_41:
    v11 = v48;
LABEL_42:
    v55 = a3[1];
    if (v11 >= v55)
    {
      v8 = v11;
      if (v11 < v10)
      {
        goto LABEL_205;
      }
    }

    else
    {
      v56 = v11;
      v75 = __OFSUB__(v11, v10);
      v57 = v11 - v10;
      if (v75)
      {
        goto LABEL_206;
      }

      if (v57 >= a4)
      {
        goto LABEL_50;
      }

      v58 = v10 + a4;
      if (__OFADD__(v10, a4))
      {
        __break(1u);
LABEL_209:
        __break(1u);
        goto LABEL_210;
      }

      if (v58 >= v55)
      {
        v58 = a3[1];
      }

      if (v58 < v10)
      {
        goto LABEL_209;
      }

      if (v56 == v58)
      {
LABEL_50:
        v8 = v56;
        if (v56 < v10)
        {
          goto LABEL_205;
        }
      }

      else
      {
        v141 = v10;
        v143 = v6;
        v153 = *a3;
        v105 = *a3 + 8 * v56 - 8;
        v5 = v10 - v56;
        v139 = v58;
        do
        {
          v147 = v105;
          v149 = v56;
          v106 = *(v153 + 8 * v56);
          v145 = v5;
          do
          {
            v107 = *v105;
            v108 = OBJC_IVAR___UIObjectCompat_boundingBox;
            swift_beginAccess();
            v109 = *&v106[v108];
            v110 = OBJC_IVAR___UIObjectCompat_boundingBox;
            swift_beginAccess();
            v111 = *&v107[v110];
            v112 = &v109[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
            swift_beginAccess();
            v113 = *v112;
            v114 = v112[1];
            v115 = v112[2];
            v116 = v112[3];
            v6 = v106;
            v117 = v107;
            v118 = v109;
            v119 = v111;
            v155.origin.x = v113;
            v155.origin.y = v114;
            v155.size.width = v115;
            v155.size.height = v116;
            v120 = CGRectGetMinY(v155);
            v9 = 0x7FEFFFFFFFFFFFFFLL;
            if ((*&v120 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
              goto LABEL_157;
            }

            if (v120 <= -9.22337204e18)
            {
              goto LABEL_150;
            }

            if (v120 >= 9.22337204e18)
            {
              goto LABEL_151;
            }

            v121 = v6;
            v6 = &v119[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
            swift_beginAccess();
            v122 = CGRectGetMinY(*v6);
            if ((*&v122 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_152;
            }

            if (v122 <= -9.22337204e18)
            {
              goto LABEL_153;
            }

            if (v122 >= 9.22337204e18)
            {
              goto LABEL_154;
            }

            v123 = v120 - v122;
            if (__OFSUB__(v120, v122))
            {
              goto LABEL_155;
            }

            if (v123 < 0)
            {
              v75 = __OFSUB__(0, v123);
              v123 = v122 - v120;
              if (v75)
              {
                goto LABEL_178;
              }
            }

            v124 = *v112;
            v125 = *(v112 + 1);
            v126 = *(v112 + 2);
            v127 = *(v112 + 3);
            if (v123 > 19)
            {
              v130 = CGRectGetMinX(*&v124);
              if ((*&v130 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_164;
              }

              if (v130 <= -9.22337204e18)
              {
                goto LABEL_166;
              }

              if (v130 >= 9.22337204e18)
              {
                goto LABEL_168;
              }

              v131 = CGRectGetMinX(*v6);
              v9 = *&v131;

              if ((*&v131 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_170;
              }

              if (v131 <= -9.22337204e18)
              {
                goto LABEL_172;
              }

              if (v131 >= 9.22337204e18)
              {
                goto LABEL_173;
              }

              if (v131 < v130)
              {
                break;
              }
            }

            else
            {
              v128 = CGRectGetMinY(*&v124);
              if ((*&v128 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_163;
              }

              if (v128 <= -9.22337204e18)
              {
                goto LABEL_165;
              }

              if (v128 >= 9.22337204e18)
              {
                goto LABEL_167;
              }

              v129 = CGRectGetMinY(*v6);
              v9 = *&v129;

              if ((*&v129 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_169;
              }

              if (v129 <= -9.22337204e18)
              {
                goto LABEL_171;
              }

              if (v129 >= 9.22337204e18)
              {
                goto LABEL_174;
              }

              if (v129 < v128)
              {
                break;
              }
            }

            if (!v153)
            {
              goto LABEL_211;
            }

            v132 = *v105;
            v106 = *(v105 + 8);
            *v105 = v106;
            *(v105 + 8) = v132;
            v105 -= 8;
          }

          while (!__CFADD__(v5++, 1));
          v56 = v149 + 1;
          v105 = v147 + 8;
          v5 = v145 - 1;
        }

        while (v149 + 1 != v139);
        v8 = v139;
        v10 = v141;
        v6 = v143;
        v9 = v150;
        if (v139 < v141)
        {
          goto LABEL_205;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_270290DEC(0, *(v9 + 16) + 1, 1, v9);
    }

    v60 = *(v9 + 16);
    v59 = *(v9 + 24);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v9 = sub_270290DEC((v59 > 1), v60 + 1, 1, v9);
    }

    *(v9 + 16) = v61;
    v62 = v9 + 16 * v60;
    *(v62 + 32) = v10;
    *(v62 + 40) = v8;
    v63 = *a1;
    if (!*a1)
    {
      goto LABEL_215;
    }

    if (v60)
    {
      while (1)
      {
        v64 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v65 = *(v9 + 32);
          v66 = *(v9 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_72:
          if (v68)
          {
            goto LABEL_193;
          }

          v81 = (v9 + 16 * v61);
          v83 = *v81;
          v82 = v81[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_196;
          }

          v87 = (v9 + 32 + 16 * v64);
          v89 = *v87;
          v88 = v87[1];
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_199;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_200;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v61 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v91 = (v9 + 16 * v61);
        v93 = *v91;
        v92 = v91[1];
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_86:
        if (v86)
        {
          goto LABEL_195;
        }

        v94 = v9 + 16 * v64;
        v96 = *(v94 + 32);
        v95 = *(v94 + 40);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_198;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_93:
        v102 = v64 - 1;
        if (v64 - 1 >= v61)
        {
          goto LABEL_175;
        }

        if (!*a3)
        {
          goto LABEL_212;
        }

        v5 = *(v9 + 32 + 16 * v102);
        v103 = *(v9 + 32 + 16 * v64 + 8);
        sub_27026D88C((*a3 + 8 * v5), (*a3 + 8 * *(v9 + 32 + 16 * v64)), (*a3 + 8 * v103), v63);
        if (v6)
        {
          goto LABEL_147;
        }

        if (v103 < v5)
        {
          goto LABEL_176;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2702A6924(v9);
        }

        if (v102 >= *(v9 + 16))
        {
          goto LABEL_177;
        }

        v104 = v9 + 16 * v102;
        *(v104 + 32) = v5;
        *(v104 + 40) = v103;
        sub_2702A6898(v64);
        v61 = *(v9 + 16);
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = v9 + 32 + 16 * v61;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_191;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_192;
      }

      v76 = (v9 + 16 * v61);
      v78 = *v76;
      v77 = v76[1];
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_194;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_197;
      }

      if (v80 >= v72)
      {
        v98 = (v9 + 32 + 16 * v64);
        v100 = *v98;
        v99 = v98[1];
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_204;
        }

        if (v67 < v101)
        {
          v64 = v61 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_137;
    }
  }

  if (v48 >= v140)
  {
    if (v140 < v48)
    {
      v50 = 8 * v48 - 8;
      v51 = v48;
      v52 = v140;
      while (1)
      {
        if (v52 != --v51)
        {
          v53 = *a3;
          if (!*a3)
          {
            goto LABEL_214;
          }

          v54 = *(v53 + v49);
          *(v53 + v49) = *(v53 + v50);
          *(v53 + v50) = v54;
        }

        ++v52;
        v50 -= 8;
        v49 += 8;
        if (v52 >= v51)
        {
          goto LABEL_41;
        }
      }
    }

    goto LABEL_41;
  }

LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
}

void sub_27026D88C(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v80 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      v74 = v5;
      do
      {
        v76 = v7;
        v78 = v6;
        v14 = *v6;
        v15 = v4;
        v16 = *v4;
        v17 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v18 = *&v14[v17];
        v19 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v20 = *&v16[v19];
        v21 = &v18[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v26 = v14;
        v27 = v16;
        v28 = v18;
        v29 = v20;
        v81.origin.x = v22;
        v81.origin.y = v23;
        v81.size.width = v24;
        v81.size.height = v25;
        MinY = CGRectGetMinY(v81);
        if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_89;
        }

        if (MinY <= -9.22337204e18)
        {
          goto LABEL_90;
        }

        if (MinY >= 9.22337204e18)
        {
          goto LABEL_93;
        }

        v31 = &v29[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v32 = CGRectGetMinY(*v31);
        if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_94;
        }

        if (v32 <= -9.22337204e18)
        {
          goto LABEL_96;
        }

        if (v32 >= 9.22337204e18)
        {
          goto LABEL_98;
        }

        v33 = MinY - v32;
        if (__OFSUB__(MinY, v32))
        {
          goto LABEL_101;
        }

        if (v33 < 0)
        {
          v34 = __OFSUB__(0, v33);
          v33 = v32 - MinY;
          if (v34)
          {
            goto LABEL_126;
          }
        }

        v35 = *v21;
        v36 = *(v21 + 1);
        v37 = *(v21 + 2);
        v38 = *(v21 + 3);
        if (v33 > 19)
        {
          MinX = CGRectGetMinX(*&v35);
          if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_102;
          }

          if (MinX <= -9.22337204e18)
          {
            goto LABEL_109;
          }

          if (MinX >= 9.22337204e18)
          {
            goto LABEL_113;
          }

          v44 = CGRectGetMinX(*v31);

          if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_115;
          }

          if (v44 <= -9.22337204e18)
          {
            goto LABEL_120;
          }

          if (v44 >= 9.22337204e18)
          {
            goto LABEL_123;
          }

          if (v44 >= MinX)
          {
LABEL_29:
            v41 = v76;
            v42 = v78;
            v6 = v78 + 1;
            v4 = v15;
            if (v76 == v78)
            {
              goto LABEL_31;
            }

LABEL_30:
            *v41 = *v42;
            goto LABEL_31;
          }
        }

        else
        {
          v39 = CGRectGetMinY(*&v35);
          if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_103;
          }

          if (v39 <= -9.22337204e18)
          {
            goto LABEL_108;
          }

          if (v39 >= 9.22337204e18)
          {
            goto LABEL_112;
          }

          v40 = CGRectGetMinY(*v31);

          if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_114;
          }

          if (v40 <= -9.22337204e18)
          {
            goto LABEL_118;
          }

          if (v40 >= 9.22337204e18)
          {
            goto LABEL_122;
          }

          if (v40 >= v39)
          {
            goto LABEL_29;
          }
        }

        v42 = v15;
        v4 = v15 + 1;
        v41 = v76;
        v6 = v78;
        if (v76 != v15)
        {
          goto LABEL_30;
        }

LABEL_31:
        v7 = v41 + 1;
      }

      while (v4 < v80 && v6 < v74);
    }

    v6 = v7;
    goto LABEL_84;
  }

  if (a4 != __dst || &__dst[v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v80 = &v4[v13];
  if (v11 < 8 || v6 <= v7)
  {
LABEL_84:
    if (v6 != v4 || v6 >= (v4 + ((v80 - v4 + (v80 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v6, v4, 8 * (v80 - v4));
    }

    return;
  }

  v72 = v4;
  v77 = v7;
LABEL_49:
  v79 = v6;
  v45 = v6 - 1;
  v46 = v80;
  v73 = v6 - 1;
  while (1)
  {
    v75 = v5;
    v47 = *--v46;
    v48 = *v45;
    v49 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v50 = *&v47[v49];
    v51 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v52 = *&v48[v51];
    v53 = &v50[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v54 = *v53;
    v55 = v53[1];
    v56 = v53[2];
    v57 = v53[3];
    v58 = v47;
    v59 = v48;
    v60 = v50;
    v61 = v52;
    v82.origin.x = v54;
    v82.origin.y = v55;
    v82.size.width = v56;
    v82.size.height = v57;
    v62 = CGRectGetMinY(v82);
    if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v62 <= -9.22337204e18)
    {
      goto LABEL_91;
    }

    if (v62 >= 9.22337204e18)
    {
      goto LABEL_92;
    }

    v63 = &v61[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v64 = CGRectGetMinY(*v63);
    if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_95;
    }

    if (v64 <= -9.22337204e18)
    {
      goto LABEL_97;
    }

    if (v64 >= 9.22337204e18)
    {
      goto LABEL_99;
    }

    v65 = v62 - v64;
    if (__OFSUB__(v62, v64))
    {
      goto LABEL_100;
    }

    if (v65 < 0)
    {
      v34 = __OFSUB__(0, v65);
      v65 = v64 - v62;
      if (v34)
      {
        goto LABEL_127;
      }
    }

    v66 = *v53;
    v67 = *(v53 + 1);
    v68 = *(v53 + 2);
    v69 = *(v53 + 3);
    if (v65 > 19)
    {
      v70 = CGRectGetMinX(*&v66);
      if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_104;
      }

      if (v70 <= -9.22337204e18)
      {
        goto LABEL_107;
      }

      if (v70 >= 9.22337204e18)
      {
        goto LABEL_110;
      }

      v71 = CGRectGetMinX(*v63);

      if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_117;
      }

      if (v71 <= -9.22337204e18)
      {
        goto LABEL_121;
      }

      if (v71 >= 9.22337204e18)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v70 = CGRectGetMinY(*&v66);
      if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_105;
      }

      if (v70 <= -9.22337204e18)
      {
        goto LABEL_106;
      }

      if (v70 >= 9.22337204e18)
      {
        goto LABEL_111;
      }

      v71 = CGRectGetMinY(*v63);

      if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_116;
      }

      if (v71 <= -9.22337204e18)
      {
        goto LABEL_119;
      }

      if (v71 >= 9.22337204e18)
      {
        goto LABEL_125;
      }
    }

    v5 = v75 - 1;
    if (v71 >= v70)
    {
      v4 = v72;
      if (v75 != v79)
      {
        *v5 = *v73;
      }

      if (v80 <= v72 || (v6 = v73, v73 <= v77))
      {
        v6 = v73;
        goto LABEL_84;
      }

      goto LABEL_49;
    }

    v4 = v72;
    v45 = v73;
    if (v80 != v75)
    {
      *v5 = *v46;
    }

    v80 = v46;
    if (v46 <= v72)
    {
      v80 = v46;
      v6 = v79;
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
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
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
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

uint64_t sub_27026E08C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v81 = MEMORY[0x277D84F90];
  v2 = *(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detectionsInScreen);
  v80 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_110;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2702B45FC())
  {
    v4 = v1;

    v73 = v4;
    if (!i)
    {
      break;
    }

    v5 = 0;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v1 = &OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x27439C0F0](v5, v2);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_82;
        }

        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*&v8[v10] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
      {
        sub_2702B454C();
        sub_2702B457C();
        v6 = v2 & 0xFFFFFFFFFFFFFF8;
        sub_2702B458C();
        sub_2702B455C();
      }

      else
      {
      }

      ++v5;
      if (v9 == i)
      {
        v11 = v80;
        v4 = v73;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
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
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_16:

  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    v12 = sub_2702B45FC();
    if (v12)
    {
      goto LABEL_19;
    }

LABEL_112:

    v79 = sub_2702A0370(v69);
    sub_27026C6B4(&v79);

    return v79;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    goto LABEL_112;
  }

LABEL_19:
  if (v12 >= 1)
  {
    v2 = OBJC_IVAR___UIObjectCompat_boundingBox;
    v77 = v11 & 0xC000000000000001;
    swift_beginAccess();
    v74 = 0;
    v75 = 0;
    v71 = 0;
    v13 = 0;
    v76 = v12;
    v72 = v11;
    while (1)
    {
      if (v77)
      {
        v14 = MEMORY[0x27439C0F0](v13, v11);
      }

      else
      {
        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v17 = *&v4[v2];
      v18 = *&v15[v16];
      v19 = v17;
      v20 = v4;
      v21 = sub_270298280(v19, 0.7);

      if (v21)
      {
        v22 = v15;
        MEMORY[0x27439BDA0]();
        if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2702B41CC();
        }

        sub_2702B41EC();

        v4 = v73;
        goto LABEL_22;
      }

      v1 = *&v20[v2];
      v78 = v15;
      v23 = *&v15[v16];
      v24 = v2;
      v2 = &OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
      v25 = (v1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      x = v25->origin.x;
      y = v25->origin.y;
      width = v25->size.width;
      height = v25->size.height;
      v30 = v1;
      v31 = v23;
      v82.origin.x = x;
      v82.origin.y = y;
      v82.size.width = width;
      v82.size.height = height;
      MaxY = CGRectGetMaxY(v82);
      v33 = &v31[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v34 = CGRectGetMaxY(*v33);
      if (v34 >= MaxY)
      {
        v35 = MaxY;
      }

      else
      {
        v35 = v34;
      }

      MinY = CGRectGetMinY(*v25);
      v37 = CGRectGetMinY(*v33);

      if (MinY > v37)
      {
        v38 = MinY;
      }

      else
      {
        v38 = v37;
      }

      if (v35 <= v38)
      {
        v4 = v20;
        v2 = v24;
        v45 = v16;
      }

      else
      {
        v1 = 0x7FEFFFFFFFFFFFFFLL;
        v39 = (*(v24 + v20) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
        swift_beginAccess();
        MinX = CGRectGetMinX(*v39);
        if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_91;
        }

        v4 = v20;
        if (MinX <= -9.22337204e18)
        {
          goto LABEL_92;
        }

        if (MinX >= 9.22337204e18)
        {
          goto LABEL_93;
        }

        v1 = MinX;
        v41 = *&v78[v16];
        sub_270297D74();
        v43 = v42;

        v44 = v1 - v43;
        if (__OFSUB__(v1, v43))
        {
          goto LABEL_94;
        }

        v2 = v24;
        v45 = v16;
        if (v44 < 0)
        {
          v46 = __OFSUB__(0, v44);
          v44 = -v44;
          if (v46)
          {
            goto LABEL_109;
          }
        }

        if (v44 <= 19)
        {
          v47 = v78;

          v71 = v47;
        }
      }

      v48 = (*&v4[v2] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      v49 = CGRectGetMinY(*v48);
      if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_83;
      }

      if (v49 <= -9.22337204e18)
      {
        goto LABEL_84;
      }

      if (v49 >= 9.22337204e18)
      {
        goto LABEL_85;
      }

      v1 = v49;
      v50 = *&v78[v45];
      sub_270297DA0();
      v52 = v51;

      v53 = v1 - v52;
      if (__OFSUB__(v1, v52))
      {
        goto LABEL_86;
      }

      if (v53 < 0)
      {
        v46 = __OFSUB__(0, v53);
        v53 = v52 - v1;
        if (v46)
        {
          goto LABEL_95;
        }
      }

      if (v53 > 19)
      {
        break;
      }

      if (v75)
      {
        v54 = (*&v78[v16] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
        swift_beginAccess();
        v55 = CGRectGetMinX(*v54);
        if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_97;
        }

        if (v55 <= -9.22337204e18)
        {
          goto LABEL_98;
        }

        if (v55 >= 9.22337204e18)
        {
          goto LABEL_99;
        }

        v1 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v56 = (*&v75[v1] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
        swift_beginAccess();
        v57 = CGRectGetMinX(*v56);
        if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_100;
        }

        if (v57 <= -9.22337204e18)
        {
          goto LABEL_101;
        }

        if (v57 >= 9.22337204e18)
        {
          goto LABEL_102;
        }

        if (v55 >= v57)
        {
          break;
        }
      }

      v1 = v78;
      v58 = v78;
      v75 = v78;
LABEL_64:
      v59 = (*(v1 + v16) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      v60 = CGRectGetMinY(*v59);
      if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_87;
      }

      if (v60 <= -9.22337204e18)
      {
        goto LABEL_88;
      }

      if (v60 >= 9.22337204e18)
      {
        goto LABEL_89;
      }

      v1 = v60;
      v61 = *&v4[v2];
      sub_270297DA0();
      v63 = v62;

      v64 = v1 - v63;
      if (__OFSUB__(v1, v63))
      {
        goto LABEL_90;
      }

      v11 = v72;
      if (v64 < 0)
      {
        v46 = __OFSUB__(0, v64);
        v64 = -v64;
        if (v46)
        {
          goto LABEL_96;
        }
      }

      if (v64 <= 19)
      {
        if (!v74)
        {
          goto LABEL_80;
        }

        v65 = (*&v78[v16] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
        swift_beginAccess();
        v66 = CGRectGetMinX(*v65);
        if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_103;
        }

        if (v66 <= -9.22337204e18)
        {
          goto LABEL_104;
        }

        if (v66 >= 9.22337204e18)
        {
          goto LABEL_105;
        }

        v1 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v67 = (*&v74[v1] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
        swift_beginAccess();
        v68 = CGRectGetMinX(*v67);
        if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_106;
        }

        if (v68 <= -9.22337204e18)
        {
          goto LABEL_107;
        }

        if (v68 >= 9.22337204e18)
        {
          goto LABEL_108;
        }

        if (v66 < v68)
        {

LABEL_80:
          v74 = v78;
          goto LABEL_22;
        }
      }

LABEL_22:
      if (v76 == ++v13)
      {
        goto LABEL_112;
      }
    }

    v1 = v78;
    goto LABEL_64;
  }

  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_27026E9B0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v6 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = *(a2 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v9 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v10 = *(v8 + v9);
  v11 = &v7[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  v14 = &v7[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  x = v14->origin.x;
  y = v14->origin.y;
  width = v14->size.width;
  height = v14->size.height;
  v19 = v7;
  v20 = v10;
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v21 = CGRectGetMinX(v47) / v13;
  v22 = CGRectGetMinY(*v14) / v12;
  v23 = CGRectGetWidth(*v14) / v13;
  v24 = CGRectGetHeight(*v14);
  v25 = &v20[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
  v26 = v24 / v12;
  swift_beginAccess();
  v28 = *v25;
  v27 = v25[1];
  v29 = &v20[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v46 = CGRectGetMinX(*v29) / v28;
  v30 = CGRectGetMinY(*v29) / v27;
  v31 = CGRectGetWidth(*v29) / v28;
  v32 = CGRectGetHeight(*v29);
  v33 = 1.2;
  if ((a3 & 1) == 0)
  {
    v33 = 1.5;
  }

  v45 = v33;
  v34 = v32 / v27;
  v48.origin.x = v21;
  v48.origin.y = v22;
  v48.size.width = v23;
  v48.size.height = v26;
  v35 = CGRectGetHeight(v48);
  v49.origin.x = v21;
  v49.origin.y = v22;
  v49.size.width = v23;
  v49.size.height = v26;
  v36 = CGRectGetWidth(v49);
  v50.origin.x = v46;
  v50.origin.y = v30;
  v50.size.width = v31;
  v50.size.height = v34;
  v37 = CGRectGetHeight(v50);
  v51.origin.x = v46;
  v51.origin.y = v30;
  v51.size.width = v31;
  v51.size.height = v34;
  v38 = CGRectGetWidth(v51);

  v39 = v37 / v38;
  if (v35 / v36 > v37 / v38)
  {
    v40 = v35 / v36;
  }

  else
  {
    v40 = v37 / v38;
  }

  if (v39 >= v35 / v36)
  {
    v39 = v35 / v36;
  }

  if (v45 < v40 / v39)
  {
    return 0;
  }

  v41 = 3.0;
  if (a3)
  {
    v41 = 2.0;
  }

  v42 = v35 * v36;
  v43 = v35 * v36 > v37 * v38 ? v35 * v36 : v37 * v38;
  if (v37 * v38 < v42)
  {
    v42 = v37 * v38;
  }

  return v41 >= v43 / v42;
}

void sub_27026ECA0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection;
  v3 = *(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v4 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  if (*(*(v3 + v4) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 6)
  {
    CGImageGetWidth(*(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_screenshot));
    v5 = *(a1 + v2);
    v6 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v7 = (*(v5 + v6) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
    swift_beginAccess();
    Width = CGRectGetWidth(*v7);
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (Width > -9.22337204e18)
    {
      if (Width < 9.22337204e18)
      {
        v9 = *(a1 + v2);
        v10 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v11 = (*(v9 + v10) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
        swift_beginAccess();
        Height = CGRectGetHeight(*v11);
        if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (Height > -9.22337204e18)
          {
            if (Height < 9.22337204e18)
            {
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }
}

char *sub_27026EEAC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2702B45FC())
  {
    v4 = OBJC_IVAR___UIObjectCompat_boundingBox;
    v84 = OBJC_IVAR___UIObjectCompat_boundingBox;
    v73 = OBJC_IVAR___UIObjectCompat_detection;
    if ((v2 & 0xC000000000000001) != 0)
    {
      swift_beginAccess();
      swift_beginAccess();
      for (j = 0; ; ++j)
      {
        v6 = MEMORY[0x27439C0F0](j, v2);
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v8 = v6;
        v9 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection;
        v10 = *(v6 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
        v11 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v12 = *(v10 + v11);
        v13 = *(a1 + v84);
        v14 = &v12[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v15 = *v14;
        v16 = v14[1];
        v17 = v14[2];
        v18 = v14[3];
        v19 = &v13[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v12;
        v25 = v13;
        r2_24 = v16;
        v82 = v15;
        v86.origin.x = v15;
        v86.origin.y = v16;
        r2_8 = v18;
        r2_16 = v17;
        v86.size.width = v17;
        v86.size.height = v18;
        r2 = v20;
        v98.origin.x = v20;
        v98.origin.y = v21;
        v98.size.width = v22;
        v98.size.height = v23;
        v87 = CGRectUnion(v86, v98);
        x = v87.origin.x;
        y = v87.origin.y;
        width = v87.size.width;
        height = v87.size.height;
        v30 = CGRectGetHeight(v87);
        v88.origin.x = x;
        v88.origin.y = y;
        v88.size.width = width;
        v88.size.height = height;
        v31 = v30 * CGRectGetWidth(v88);
        if (v31 == 0.0)
        {

          swift_beginAccess();
        }

        else
        {
          v89.origin.y = r2_24;
          v89.origin.x = v82;
          v89.size.height = r2_8;
          v89.size.width = r2_16;
          v99.origin.x = r2;
          v99.origin.y = v21;
          v99.size.width = v22;
          v99.size.height = v23;
          v90 = CGRectIntersection(v89, v99);
          v32 = v90.origin.x;
          v33 = v90.origin.y;
          v34 = v90.size.width;
          v35 = v90.size.height;
          v36 = CGRectGetHeight(v90);
          v91.origin.x = v32;
          v91.origin.y = v33;
          v91.size.width = v34;
          v91.size.height = v35;
          v37 = CGRectGetWidth(v91);

          *&v37 = v36 * v37 / v31;
          v38 = *&v8[v9];
          v39 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          if (*&v37 == 1.0 && *(*(v38 + v39) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == *(*(a1 + v73) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label))
          {
            return v8;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == i)
        {
          return 0;
        }
      }

      __break(1u);
    }

    else
    {
      v40 = (v2 + 32);
      v41 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      swift_beginAccess();
      swift_beginAccess();
      while (v41)
      {
        v42 = *v40;
        v43 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection;
        v44 = *(*v40 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
        v45 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v46 = *(v44 + v45);
        v47 = *(a1 + v4);
        v48 = &v46[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v49 = *v48;
        v50 = v48[1];
        v51 = v48[2];
        v52 = v48[3];
        v53 = &v47[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v54 = *v53;
        v55 = v53[1];
        v56 = v53[2];
        v57 = v53[3];
        v8 = v42;
        v2 = v46;
        v58 = v47;
        r2_24a = v50;
        v83 = v49;
        v92.origin.x = v49;
        v92.origin.y = v50;
        r2_8a = v52;
        r2_16a = v51;
        v92.size.width = v51;
        v92.size.height = v52;
        r2a = v54;
        v100.origin.x = v54;
        v100.origin.y = v55;
        v100.size.width = v56;
        v100.size.height = v57;
        v93 = CGRectUnion(v92, v100);
        v59 = v93.origin.x;
        v60 = v93.origin.y;
        v61 = v93.size.width;
        v62 = v93.size.height;
        v63 = CGRectGetHeight(v93);
        v94.origin.x = v59;
        v94.origin.y = v60;
        v94.size.width = v61;
        v94.size.height = v62;
        v64 = v63 * CGRectGetWidth(v94);
        if (v64 == 0.0)
        {

          swift_beginAccess();
        }

        else
        {
          v95.origin.y = r2_24a;
          v95.origin.x = v83;
          v95.size.height = r2_8a;
          v95.size.width = r2_16a;
          v101.origin.x = r2a;
          v101.origin.y = v55;
          v101.size.width = v56;
          v101.size.height = v57;
          v96 = CGRectIntersection(v95, v101);
          v65 = v96.origin.x;
          v66 = v96.origin.y;
          v67 = v96.size.width;
          v68 = v96.size.height;
          v69 = CGRectGetHeight(v96);
          v97.origin.x = v65;
          v97.origin.y = v66;
          v97.size.width = v67;
          v97.size.height = v68;
          v70 = CGRectGetWidth(v97);

          *&v70 = v69 * v70 / v64;
          v2 = *&v42[v43];
          v71 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          if (*&v70 == 1.0 && *(*(v2 + v71) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == *(*(a1 + v73) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label))
          {
            return v8;
          }
        }

        --v41;
        ++v40;
        --i;
        v4 = v84;
        if (!i)
        {
          return 0;
        }
      }
    }

    __break(1u);
LABEL_22:
    ;
  }

  return 0;
}

uint64_t sub_27026F420@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C85D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v8 = sub_2702B3C8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  sub_27026F944(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_27026FB5C(v7);

    v15 = sub_2702B3D6C();
    v16 = sub_2702B431C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41 = v18;
      *v17 = 136315138;
      v19 = sub_270283AF0();
      v21 = sub_27026FD60(v19, v20, &v41);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_270253000, v15, v16, "Failed to find target model %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x27439CE00](v18, -1, -1);
      MEMORY[0x27439CE00](v17, -1, -1);
    }

    sub_27026FBC4();
    swift_allocError();
    *v22 = 4;
    return swift_willThrow();
  }

  else
  {
    v40 = v2;
    (*(v9 + 32))(v14, v7, v8);
    v24 = *(v9 + 16);
    v24(a2, v14, v8);
    v24(v12, a2, v8);
    v25 = sub_2702B3D6C();
    v26 = sub_2702B432C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v38 = v27;
      v39 = swift_slowAlloc();
      v41 = v39;
      *v27 = 136315138;
      sub_270270308();
      v28 = sub_2702B474C();
      v30 = v29;
      v31 = *(v9 + 8);
      v31(v12, v8);
      v32 = sub_27026FD60(v28, v30, &v41);

      v33 = v38;
      *(v38 + 1) = v32;
      v34 = v33;
      _os_log_impl(&dword_270253000, v25, v26, "Looking for asset at %s", v33, 0xCu);
      v35 = v39;
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x27439CE00](v35, -1, -1);
      MEMORY[0x27439CE00](v34, -1, -1);

      return (v31)(v14, v8);
    }

    else
    {

      v36 = *(v9 + 8);
      v36(v12, v8);
      return (v36)(v14, v8);
    }
  }
}

BOOL sub_27026F85C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C85D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_27026F944(a1, &v8 - v3);
  v5 = sub_2702B3C8C();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  sub_27026FB5C(v4);
  return v6;
}

uint64_t sub_27026F944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (!*(a1 + 40))
  {
    goto LABEL_7;
  }

  v4 = sub_2702B3FFC();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (!v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8710);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2702B74D0;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 32) = 0xD000000000000010;
    *(v10 + 40) = 0x80000002702BA6E0;
    sub_2702B485C();

LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  v6 = sub_2702B3FFC();

  v7 = sub_2702B3FFC();
  v8 = [v5 pathForResource:v6 ofType:v7];

  if (!v8)
  {

    goto LABEL_7;
  }

  sub_2702B402C();

  sub_2702B3C2C();

  v9 = 0;
LABEL_8:
  v11 = sub_2702B3C8C();
  return (*(*(v11 - 8) + 56))(a2, v9, 1, v11);
}

uint64_t sub_27026FB5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C85D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27026FBC4()
{
  result = qword_2807C86F0;
  if (!qword_2807C86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C86F0);
  }

  return result;
}

uint64_t BundledUIUModelLocator.deinit()
{
  v1 = OBJC_IVAR____TtC15UIUnderstanding22BundledUIUModelLocator_log;
  v2 = sub_2702B3D8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BundledUIUModelLocator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15UIUnderstanding22BundledUIUModelLocator_log;
  v2 = sub_2702B3D8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_27026FD60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_27026FE2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2702705C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_27026FE2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_27026FF38(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2702B453C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_27026FF38(uint64_t a1, unint64_t a2)
{
  v3 = sub_27026FF84(a1, a2);
  sub_2702700B4(&unk_288035DC0);
  return v3;
}

uint64_t sub_27026FF84(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2702701A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2702B453C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2702B410C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2702701A0(v10, 0);
        result = sub_2702B44BC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2702700B4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_270270214(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2702701A0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8708);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_270270214(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_270270308()
{
  result = qword_2807C85F8;
  if (!qword_2807C85F8)
  {
    sub_2702B3C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C85F8);
  }

  return result;
}

uint64_t sub_270270360()
{
  v0 = sub_2702B3D6C();
  v1 = sub_2702B432C();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_270253000, v0, v1, "Using built-in models, no need for download.", v2, 2u);
    MEMORY[0x27439CE00](v2, -1, -1);
  }

  return 1;
}

uint64_t type metadata accessor for BundledUIUModelLocator()
{
  result = qword_2807C86F8;
  if (!qword_2807C86F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27027045C()
{
  result = sub_2702B3D8C();
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

uint64_t sub_2702705C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_27027061C(unint64_t a1, CGImage *a2)
{

  v55 = a1;
  v4 = _s15UIUnderstanding10UIUGrouperC17removeTextInIcons10detectionsSayAA8UIObjectCGAH_tF_0(a1);

  Width = CGImageGetWidth(a2);
  v56 = a2;
  Height = CGImageGetHeight(a2);
  v7 = UIUGrouper.groupTabButtons(detections:screenWidth:screenHeight:)(v4, Width, Height);

  v61[0] = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2702B45FC())
  {

    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v10 = 0;
    v11 = v7 & 0xC000000000000001;
    v12 = v7 & 0xFFFFFFFFFFFFFF8;
    v57 = v7;
    while (1)
    {
      if (v11)
      {
        v14 = MEMORY[0x27439C0F0](v10, v7);
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_57;
        }

        v14 = *(v7 + 8 * v10 + 32);
      }

      v15 = v14;
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v16 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*&v15[v16] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 14)
      {
        sub_2702B454C();
        sub_2702B457C();
        sub_2702B458C();
        sub_2702B455C();
      }

      else
      {
      }

      ++v10;
      v13 = v7 == i;
      v7 = v57;
      if (v13)
      {
        v9 = v61[0];
        goto LABEL_15;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

LABEL_15:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v17 = sub_2702B45FC();
    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = *(v9 + 16);
    if (v17)
    {
LABEL_18:
      v18 = 0;
      v53 = v9 + 32;
      v54 = v9 & 0xC000000000000001;
      v52 = v17;
      v50 = v9;
      while (1)
      {
        if (v54)
        {
          v20 = MEMORY[0x27439C0F0](v18, v9);
        }

        else
        {
          if (v18 >= *(v9 + 16))
          {
            goto LABEL_59;
          }

          v20 = *(v53 + 8 * v18);
        }

        v21 = v20;
        v22 = __OFADD__(v18++, 1);
        if (v22)
        {
          goto LABEL_58;
        }

        v23 = *&v20[OBJC_IVAR___UIObjectCompat_groupingInfo + 24];
        v24 = v23 >> 62 ? sub_2702B45FC() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v25 = v7 >> 62;
        if (v7 >> 62)
        {
          v41 = sub_2702B45FC();
          v27 = v41 + v24;
          if (__OFADD__(v41, v24))
          {
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

        else
        {
          v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v27 = v26 + v24;
          if (__OFADD__(v26, v24))
          {
            goto LABEL_55;
          }
        }

        v59 = v24;
        v60 = v21;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v25)
        {
          goto LABEL_35;
        }

        if (v27 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = v7 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_37;
        }

LABEL_36:
        v7 = sub_2702B44FC();
        v28 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_37:
        v29 = *(v28 + 16);
        v30 = (*(v28 + 24) >> 1) - v29;
        if (v23 >> 62)
        {
          v32 = sub_2702B45FC();
          if (!v32)
          {
LABEL_19:

            v19 = v60;
            if (v59 > 0)
            {
              goto LABEL_60;
            }

            goto LABEL_20;
          }

          v33 = v32;
          v51 = sub_2702B45FC();
          if (v30 < v51)
          {
            goto LABEL_62;
          }

          if (v33 < 1)
          {
            goto LABEL_64;
          }

          v58 = v7;
          v34 = v28 + 8 * v29 + 32;
          sub_270270C74();
          for (j = 0; j != v33; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8718);
            v36 = sub_2702B2D30(v61, j, v23);
            v38 = *v37;
            (v36)(v61, 0);
            *(v34 + 8 * j) = v38;
          }

          v7 = v58;
          v31 = v51;
          v9 = v50;
        }

        else
        {
          v31 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v31)
          {
            goto LABEL_19;
          }

          if (v30 < v31)
          {
            goto LABEL_63;
          }

          type metadata accessor for UIObject();
          swift_arrayInitWithCopy();
        }

        v19 = v60;
        if (v31 < v59)
        {
          goto LABEL_60;
        }

        if (v31 > 0)
        {
          v39 = *(v28 + 16);
          v22 = __OFADD__(v39, v31);
          v40 = v39 + v31;
          if (v22)
          {
            goto LABEL_61;
          }

          *(v28 + 16) = v40;
        }

LABEL_20:

        if (v18 == v52)
        {
          goto LABEL_67;
        }
      }

      if (!v25)
      {
        goto LABEL_36;
      }

LABEL_35:
      sub_2702B45FC();
      goto LABEL_36;
    }
  }

LABEL_67:

  sub_270277584(v7);
  sub_270278EB0(v7);
  sub_270279714(v7);
  sub_270279D7C();

  v61[0] = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
LABEL_83:
    v42 = sub_2702B45FC();
  }

  else
  {
    v42 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = 0;
  v44 = MEMORY[0x277D84F90];
  while (v42 != v43)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x27439C0F0](v43, v7);
    }

    else
    {
      if (v43 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v45 = *(v7 + 8 * v43 + 32);
    }

    v46 = v45;
    v47 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v48 = sub_270266DB0(v56, v45, v55);

    ++v43;
    if (v48)
    {
      MEMORY[0x27439BDA0]();
      if (*((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2702B41CC();
      }

      sub_2702B41EC();
      v44 = v61[0];
      v43 = v47;
    }
  }

  return v44;
}

unint64_t sub_270270C74()
{
  result = qword_2807C8720;
  if (!qword_2807C8720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C8718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8720);
  }

  return result;
}

double sub_270270CD8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection;
  v5 = *(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v6 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature;
  if (!*&v7[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature])
  {
    v9 = v7;
    *&v7[v8] = sub_27027BCE0(a1);
  }

  v10 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection;
  v11 = *(a2 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v12 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v13 = *(v11 + v12);
  v14 = OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature;
  if (!*&v13[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature])
  {
    v15 = v13;
    *&v13[v14] = sub_27027BCE0(a2);
  }

  v16 = *(a1 + v4);
  v17 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v18 = -1.0;
  if (*(*(v16 + v17) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature))
  {
    v19 = *(a2 + v10);
    v20 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    if (*(*(v19 + v20) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature))
    {

      v22 = sub_27027B844(v21);

      return (2.0 - v22) * 0.5;
    }
  }

  return v18;
}

UIUnderstanding::EmbeddingModel_optional __swiftcall EmbeddingModel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t EmbeddingGenerator.__allocating_init(model:platform:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  EmbeddingGenerator.init(model:platform:)(a1, a2);
  return v4;
}

uint64_t EmbeddingGenerator.init(model:platform:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_2702B3D8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v10) = *a1;
  *(v4 + 16) = v10;
  if (v10 != 1)
  {
    v17 = type metadata accessor for TwinTransformerEmbeddingGenerator();
    swift_allocObject();
    v18 = sub_27025B244(a2);
    if (v3)
    {
      goto LABEL_7;
    }

    v23 = v17;
    v24 = &off_2880370E8;
    *&v22 = v18;
LABEL_10:
    sub_270271478(&v22, v4 + 24);
    return v4;
  }

  v12 = v9;
  v13 = type metadata accessor for BiCNNEmbeddingGenerator();
  v14 = swift_allocObject();
  if (qword_2807C8270 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_2807C8A70;
  v16 = sub_27028E1E8(0);
  if (!v3)
  {
    v19 = v16;

    *(v14 + 16) = v19;
    sub_2702B3D7C();
    (*(v8 + 32))(v14 + OBJC_IVAR____TtC15UIUnderstanding23BiCNNEmbeddingGenerator_log, v11, v12);
    v23 = v13;
    v24 = &off_2880372A8;
    *&v22 = v14;
    goto LABEL_10;
  }

  swift_deallocPartialClassInstance();
LABEL_7:
  type metadata accessor for EmbeddingGenerator();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_2702712EC(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  v6 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t sub_270271370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[6];
  v8 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v7);
  return (*(v8 + 16))(a1, a2, a3, v7, v8);
}

uint64_t EmbeddingGenerator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_270271478(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_270271494()
{
  result = qword_2807C8728;
  if (!qword_2807C8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8728);
  }

  return result;
}

uint64_t dispatch thunk of EmbeddingGenerator.generateScreenEmbedding(_:uiuDetectorResult:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 112))();
}

uint64_t sub_2702715CC(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  if (*(v2 + OBJC_IVAR___UIDeduplicatorCompat_debugMode) == 1)
  {
    v5 = (a1 + OBJC_IVAR___ScreenShotCompat_imageID);
    v6 = *(a1 + OBJC_IVAR___ScreenShotCompat_imageID + 8);
    v240 = *v5;
    v241 = v6;

    MEMORY[0x27439BCF0](0x6E6F736A2ELL, 0xE500000000000000);
    _s15UIUnderstanding14UIDeduplicatorC26debugSaveCGRectsToLocation11targetRects8filenameySaySo6CGRectVG_SStFZ_0(a2, v240, v241);

    v4 = a1;
  }

  v7 = *(v4 + OBJC_IVAR___ScreenShotCompat_image);
  v8 = v4;
  Width = CGImageGetWidth(v7);
  Height = CGImageGetHeight(v7);
  v196 = *(v8 + OBJC_IVAR___ScreenShotCompat_imageID);
  v199 = *(v8 + OBJC_IVAR___ScreenShotCompat_imageID + 8);
  v11 = MEMORY[0x277D84F90];
  v243 = MEMORY[0x277D84F90];
  v12 = *(a2 + 16);
  v13 = &OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
  if (v12)
  {
    v240 = MEMORY[0x277D84F90];
    sub_2702B456C();
    v14 = (a2 + 32);
    v15 = type metadata accessor for BoundingBox();
    do
    {
      v17 = *v14;
      v16 = v14[1];
      v14 += 2;
      r1c = v16;
      r1_16e = v17;
      v18 = objc_allocWithZone(v15);
      v19 = &v18[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      *v19 = r1_16e;
      *(v19 + 1) = r1c;
      v20 = &v18[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
      *v20 = Width;
      v20[1] = Height;
      v242.receiver = v18;
      v242.super_class = v15;
      objc_msgSendSuper2(&v242, sel_init);
      sub_2702B454C();
      sub_2702B457C();
      sub_2702B458C();
      sub_2702B455C();
      --v12;
    }

    while (v12);
    v11 = v240;
  }

  v197 = Height;
  v198 = Width;
  v200 = v11;
  v195 = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_78;
  }

  v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
LABEL_9:
    v201 = 0;
    v22 = 0;
    v202 = OBJC_IVAR___ScreenShotCompat_groupingInfo;
    v204 = v21;
    while (1)
    {
      if ((v200 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x27439C0F0](v22, v200);
      }

      else
      {
        if (v22 >= *((v200 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v49 = *(v200 + 32 + 8 * v22);
      }

      v50 = v49;
      v51 = __OFADD__(v22, 1);
      v52 = v22 + 1;
      if (v51)
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v53 = *(a1 + v202);
      if (v53 >> 62)
      {
        v54 = sub_2702B45FC();
        v205 = v52;
        v206 = v50;
        if (!v54)
        {
LABEL_66:
          v140 = 0;
          goto LABEL_67;
        }
      }

      else
      {
        v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v205 = v52;
        v206 = v49;
        if (!v54)
        {
          goto LABEL_66;
        }
      }

      if ((v53 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x27439C0F0](0, v53);
      }

      else
      {
        if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v55 = *(v53 + 32);
      }

      v56 = v55;
      v57 = &v50[*v13];
      swift_beginAccess();
      if (v54 == 1)
      {
        goto LABEL_44;
      }

      v58 = 1;
      while (2)
      {
        v59 = v56;
        v13 = v58;
        while (1)
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v67 = MEMORY[0x27439C0F0](v13, v53);
          }

          else
          {
            if (v13 < 0)
            {
              goto LABEL_72;
            }

            if (v13 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_73;
            }

            v67 = *(v53 + 8 * v13 + 32);
          }

          v56 = v67;
          v58 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v68 = *&v59[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
          v69 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v70 = *(v68 + v69);
          v71 = &v70[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v72 = *v71;
          v73 = v71[1];
          v74 = v71[2];
          v75 = v71[3];
          v76 = *v57;
          v77 = v57[1];
          v78 = v57[2];
          v79 = v57[3];
          v80 = v70;
          r1_16 = v72;
          v247.origin.x = v72;
          r1 = v73;
          v247.origin.y = v73;
          r2_8 = v75;
          r2_16 = v74;
          v247.size.width = v74;
          v247.size.height = v75;
          r2 = v76;
          v263.origin.x = v76;
          v263.origin.y = v77;
          v263.size.width = v78;
          v263.size.height = v79;
          v248 = CGRectUnion(v247, v263);
          x = v248.origin.x;
          y = v248.origin.y;
          v83 = v248.size.width;
          v84 = v248.size.height;
          v85 = CGRectGetHeight(v248);
          v249.origin.x = x;
          v249.origin.y = y;
          v249.size.width = v83;
          v249.size.height = v84;
          v86 = v85 * CGRectGetWidth(v249);
          if (v86 == 0.0)
          {

            v87 = 0.0;
          }

          else
          {
            v250.origin.x = r1_16;
            v250.origin.y = r1;
            v250.size.height = r2_8;
            v250.size.width = r2_16;
            v264.origin.x = r2;
            v264.origin.y = v77;
            v264.size.width = v78;
            v264.size.height = v79;
            v251 = CGRectIntersection(v250, v264);
            v88 = v251.origin.x;
            v89 = v251.origin.y;
            v90 = v251.size.width;
            v91 = v251.size.height;
            v92 = CGRectGetHeight(v251);
            v252.origin.x = v88;
            v252.origin.y = v89;
            v252.size.width = v90;
            v252.size.height = v91;
            v93 = CGRectGetWidth(v252);

            v87 = v92 * v93 / v86;
          }

          r1_16a = v87;
          v94 = *&v56[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
          v95 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v96 = *(v94 + v95);
          v97 = &v96[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v98 = *v97;
          v99 = v97[1];
          v100 = v97[2];
          v101 = v97[3];
          v102 = *v57;
          v103 = v57[1];
          v104 = v57[2];
          v105 = v57[3];
          v106 = v96;
          r1a = v98;
          v253.origin.x = v98;
          r2_8a = v100;
          r2_16a = v99;
          v253.origin.y = v99;
          v253.size.width = v100;
          v207 = v102;
          r2a = v101;
          v253.size.height = v101;
          v265.origin.x = v102;
          v265.origin.y = v103;
          v265.size.width = v104;
          v265.size.height = v105;
          v254 = CGRectUnion(v253, v265);
          v107 = v254.origin.x;
          v108 = v254.origin.y;
          v109 = v254.size.width;
          v110 = v254.size.height;
          v111 = CGRectGetHeight(v254);
          v255.origin.x = v107;
          v255.origin.y = v108;
          v255.size.width = v109;
          v255.size.height = v110;
          v112 = v111 * CGRectGetWidth(v255);
          if (v112 == 0.0)
          {
            break;
          }

          v244.origin.x = r1a;
          v244.size.width = r2_8a;
          v244.origin.y = r2_16a;
          v262.origin.x = v207;
          v244.size.height = r2a;
          v262.origin.y = v103;
          v262.size.width = v104;
          v262.size.height = v105;
          v245 = CGRectIntersection(v244, v262);
          v60 = v245.origin.x;
          v61 = v245.origin.y;
          v62 = v245.size.width;
          v63 = v245.size.height;
          v64 = CGRectGetHeight(v245);
          v246.origin.x = v60;
          v246.origin.y = v61;
          v246.size.width = v62;
          v246.size.height = v63;
          v65 = CGRectGetWidth(v246);

          v66 = v64 * v65 / v112;
          if (r1_16a < v66)
          {
            goto LABEL_41;
          }

LABEL_29:

          ++v13;
          if (v58 == v54)
          {
            v56 = v59;
            v13 = &OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
            v21 = v204;
            v50 = v206;
            goto LABEL_44;
          }
        }

        if (r1_16a >= 0.0)
        {
          goto LABEL_29;
        }

LABEL_41:

        v13 = &OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
        v21 = v204;
        v50 = v206;
        if (v58 != v54)
        {
          continue;
        }

        break;
      }

LABEL_44:
      v113 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection;
      v114 = *&v56[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
      v115 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v116 = *(v114 + v115);
      v117 = &v116[*v13];
      swift_beginAccess();
      v118 = *v117;
      v119 = v117[1];
      v120 = v117[2];
      v121 = v117[3];
      swift_beginAccess();
      v122 = *v57;
      v123 = v57[1];
      v124 = v57[2];
      v125 = v57[3];
      v126 = v56;
      v127 = v116;
      r1_16b = v118;
      v256.origin.x = v118;
      r2_8b = v120;
      r2_16b = v119;
      v256.origin.y = v119;
      v256.size.width = v120;
      v208 = v122;
      r2b = v121;
      v256.size.height = v121;
      v266.origin.x = v122;
      v266.origin.y = v123;
      v266.size.width = v124;
      v266.size.height = v125;
      v257 = CGRectUnion(v256, v266);
      v128 = v257.origin.x;
      v129 = v257.origin.y;
      v130 = v257.size.width;
      v131 = v257.size.height;
      v132 = CGRectGetHeight(v257);
      v258.origin.x = v128;
      v258.origin.y = v129;
      v258.size.width = v130;
      v258.size.height = v131;
      v133 = v132 * CGRectGetWidth(v258);
      v134 = 0.0;
      if (v133 != 0.0)
      {
        v259.origin.x = r1_16b;
        v259.size.width = r2_8b;
        v259.origin.y = r2_16b;
        v267.origin.x = v208;
        v259.size.height = r2b;
        v267.origin.y = v123;
        v267.size.width = v124;
        v267.size.height = v125;
        v260 = CGRectIntersection(v259, v267);
        v135 = v260.origin.x;
        v136 = v260.origin.y;
        v137 = v260.size.width;
        v138 = v260.size.height;
        v139 = CGRectGetHeight(v260);
        v261.origin.x = v135;
        v261.origin.y = v136;
        v261.size.width = v137;
        v261.size.height = v138;
        v134 = v139 * CGRectGetWidth(v261) / v133;
      }

      r2_8c = v127;
      r2_16c = sub_270298280(v50, 0.85);
      v140 = v126;
      v141 = sub_2702B3D6C();
      v142 = sub_2702B432C();

      r1b = v113;
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v234 = v144;
        *v143 = 134218242;
        *(v143 + 4) = v134;
        *(v143 + 12) = 2080;
        v145 = v140;
        v146 = [*&v56[v113] description];
        v147 = sub_2702B402C();
        v149 = v148;

        v150 = sub_27026FD60(v147, v149, &v234);

        *(v143 + 14) = v150;
        v140 = v145;
        v50 = v206;
        _os_log_impl(&dword_270253000, v141, v142, "Best IOU is %f for %s", v143, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v144);
        MEMORY[0x27439CE00](v144, -1, -1);
        v151 = v143;
        v21 = v204;
        MEMORY[0x27439CE00](v151, -1, -1);
      }

      v152 = r2_8c;
      if (v134 < 0.2 && r2_16c)
      {
        r1_16c = v140;
        v153 = [r2_8c description];
        v154 = sub_2702B402C();
        v156 = v155;

        v157 = *&v56[r1b];
        v158 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v159 = (*(v157 + v158) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
        swift_beginAccess();
        if (v159[1])
        {
          r2c = *v159;
          v160 = v159[1];
        }

        else
        {
          v160 = 0xE400000000000000;
          r2c = 1701736270;
        }

        v161 = sub_2702B3D6C();
        v162 = sub_2702B432C();

        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          v165 = v154;
          v166 = v164;
          v234 = v164;
          *v163 = 136315394;
          v167 = sub_27026FD60(v165, v156, &v234);

          *(v163 + 4) = v167;
          *(v163 + 12) = 2080;
          v168 = sub_27026FD60(r2c, v160, &v234);

          *(v163 + 14) = v168;
          v152 = r2_8c;
          _os_log_impl(&dword_270253000, v161, v162, "Target CGRect contains text at %s -> %s", v163, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x27439CE00](v166, -1, -1);
          MEMORY[0x27439CE00](v163, -1, -1);
        }

        else
        {
        }

        v21 = v204;
        v140 = r1_16c;
      }

      if (v134 > 0.2)
      {

        v169 = r1b;
        goto LABEL_59;
      }

      v169 = r1b;
      v170 = *&v56[r1b];
      v171 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      LODWORD(v170) = *(*(v170 + v171) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10;

      if (v170 & r2_16c)
      {
LABEL_59:
        v172 = *&v56[v169];
        v173 = type metadata accessor for DedupeElement();
        v174 = objc_allocWithZone(v173);
        v175 = &v174[OBJC_IVAR___DedupeElementCompat_screenID];
        *v175 = 0;
        v175[1] = 0;
        *&v174[OBJC_IVAR___DedupeElementCompat_uiObject] = v172;
        v174[OBJC_IVAR___DedupeElementCompat_isDuplicate] = 0;
        *v175 = 0;
        v175[1] = 0;
        v233.receiver = v174;
        v233.super_class = v173;
        v176 = v172;
        v177 = objc_msgSendSuper2(&v233, sel_init);
        MEMORY[0x27439BDA0]();
        if (*((v243 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v243 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2702B41CC();
          v152 = r2_8c;
        }

        sub_2702B41EC();

        v51 = __OFADD__(v201++, 1);
        v13 = &OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
        if (!v51)
        {
          goto LABEL_14;
        }

LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        v21 = sub_2702B45FC();
        if (!v21)
        {
          break;
        }

        goto LABEL_9;
      }

LABEL_67:
      r1_16d = v140;
      v178 = [v50 description];
      v179 = sub_2702B402C();
      v181 = v180;

      v182 = sub_2702B3D6C();
      v183 = sub_2702B431C();

      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v234 = v185;
        *v184 = 136315394;
        *(v184 + 4) = sub_27026FD60(v196, v199, &v234);
        *(v184 + 12) = 2080;
        v186 = sub_27026FD60(v179, v181, &v234);

        *(v184 + 14) = v186;
        _os_log_impl(&dword_270253000, v182, v183, "Failed to find match in %s for %s. Creating dummy", v184, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x27439CE00](v185, -1, -1);
        MEMORY[0x27439CE00](v184, -1, -1);
      }

      else
      {
      }

      v13 = &OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
      v23 = &v50[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v24 = type metadata accessor for BoundingBox();
      r2_16d = *(v23 + 1);
      r1d = *v23;
      v25 = objc_allocWithZone(v24);
      v26 = &v25[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      *v26 = r1d;
      *(v26 + 1) = r2_16d;
      v27 = &v25[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
      *v27 = v198;
      *(v27 + 1) = v197;
      v239.receiver = v25;
      v239.super_class = v24;
      v28 = objc_msgSendSuper2(&v239, sel_init);
      v29 = objc_allocWithZone(type metadata accessor for UIObject());
      v30 = type metadata accessor for UIDetection();
      v31 = objc_allocWithZone(v30);
      v32 = &v31[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
      *v32 = 0;
      *(v32 + 1) = 0;
      *&v31[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature] = 0;
      *&v31[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label] = -1;
      *&v31[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence] = 0;
      swift_beginAccess();
      *v32 = xmmword_2702B7680;
      v238.receiver = v31;
      v238.super_class = v30;
      v33 = v28;
      v34 = objc_msgSendSuper2(&v238, sel_init);
      v35 = type metadata accessor for ClickabilityDetection();
      v36 = objc_allocWithZone(v35);
      v36[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = 0;
      *&v36[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = -1;
      *&v36[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = 0;
      v237.receiver = v36;
      v237.super_class = v35;
      v37 = objc_msgSendSuper2(&v237, sel_init);
      v38 = type metadata accessor for FocusDetection();
      v39 = objc_allocWithZone(v38);
      v39[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused] = 0;
      *&v39[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence] = 0;
      v236.receiver = v39;
      v236.super_class = v38;
      v40 = objc_msgSendSuper2(&v236, sel_init);
      v41 = v37;
      v42 = sub_2702B41AC();
      v43 = [v29 initWithDetection:v34 clickable:v41 focused:v40 icon:0 boundingBox:v33 children:v42];

      v44 = type metadata accessor for DedupeElement();
      v45 = objc_allocWithZone(v44);
      v46 = &v45[OBJC_IVAR___DedupeElementCompat_screenID];
      *v46 = 0;
      v46[1] = 0;
      *&v45[OBJC_IVAR___DedupeElementCompat_uiObject] = v43;
      v45[OBJC_IVAR___DedupeElementCompat_isDuplicate] = 0;
      *v46 = 0;
      v46[1] = 0;
      v235.receiver = v45;
      v235.super_class = v44;
      v47 = v43;
      v48 = objc_msgSendSuper2(&v235, sel_init);
      MEMORY[0x27439BDA0]();
      if (*((v243 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v243 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2702B41CC();
      }

      sub_2702B41EC();

      v21 = v204;
LABEL_14:
      v22 = v205;
      if (v205 == v21)
      {
        v187 = v243;
        goto LABEL_80;
      }
    }
  }

  v201 = 0;
  v187 = MEMORY[0x277D84F90];
LABEL_80:

  v188 = sub_2702B3D6C();
  v189 = sub_2702B432C();
  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    v234 = v191;
    *v190 = 136315650;
    v192 = sub_27026FD60(v196, v199, &v234);

    *(v190 + 4) = v192;
    *(v190 + 12) = 2048;
    *(v190 + 14) = v201;
    *(v190 + 22) = 2048;
    if (v195)
    {
      v193 = sub_2702B45FC();
    }

    else
    {
      v193 = *((v200 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v190 + 24) = v193;

    _os_log_impl(&dword_270253000, v188, v189, "For image %s, successfully matched %ld of %ld", v190, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v191);
    MEMORY[0x27439CE00](v191, -1, -1);
    MEMORY[0x27439CE00](v190, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v187;
}

double sub_270272910@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = OBJC_IVAR___UIDeduplicatorCompat_screenGroupMap;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_27025E56C(a1, a2);
    if (v10)
    {
      v11 = (*(v8 + 56) + (v9 << 6));
      v13 = v11[2];
      v12 = v11[3];
      v14 = v11[1];
      v19[0] = *v11;
      v19[1] = v14;
      v19[2] = v13;
      v19[3] = v12;
      v15 = v11[1];
      *a3 = *v11;
      a3[1] = v15;
      v16 = v11[3];
      a3[2] = v11[2];
      a3[3] = v16;
      sub_270273D24(v19, &v18);

      return result;
    }
  }

  result = 0.0;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

void *sub_270272B08()
{
  v1 = OBJC_IVAR___UIDeduplicatorCompat_screenGroupMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_270273A18(*(v2 + 16), 0);
  v5 = sub_270273B9C(&v7, v4 + 2, v3, v2);

  sub_27027494C();
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

id UIDeduplicator.init(shape:)(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 != 2 && (a1 || (v2 = MobileGestalt_get_current_device()) != 0 && (v3 = v2, iPadCapability = MobileGestalt_get_iPadCapability(), v3, (iPadCapability & 1) != 0)))
  {
    v5 = [v1 initWithPlatform:1 error:{&v9, 0, v10}];
  }

  else
  {
    v5 = [v1 initWithPlatform:0 error:{&v9, 0, v10}];
  }

  if (v5)
  {
    v6 = v5;
    v7 = v9;
  }

  else
  {
    v6 = v9;
    sub_2702B3C0C();

    swift_willThrow();
  }

  return v6;
}

id UIDeduplicator.init(platform:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2702B3D8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___UIDeduplicatorCompat_debugMode;
  v3[OBJC_IVAR___UIDeduplicatorCompat_debugMode] = 0;
  *&v3[OBJC_IVAR___UIDeduplicatorCompat_debugScreenshotCount] = 0;
  *&v3[OBJC_IVAR___UIDeduplicatorCompat_screenGroupMap] = MEMORY[0x277D84F98];
  type metadata accessor for UIFingerprinter();
  swift_allocObject();
  v10 = UIFingerprinter.init(platform:)(a1);
  if (v2)
  {

    type metadata accessor for UIDeduplicator();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR___UIDeduplicatorCompat_fingerprinter] = v10;
    sub_2702B3D7C();
    (*(v6 + 32))(&v3[OBJC_IVAR___UIDeduplicatorCompat_log], v8, v5);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v12 = result;
      internalBuild = MobileGestalt_get_internalBuild();

      if (internalBuild)
      {
        v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v15 = sub_2702B3FFC();
        v16 = [v14 initWithSuiteName_];

        if (v16)
        {
          v17 = sub_2702B3FFC();
          v18 = [v16 BOOLForKey_];

          if (v18)
          {
            v3[v9] = 1;
          }
        }
      }

      v19 = type metadata accessor for UIDeduplicator();
      v20.receiver = v3;
      v20.super_class = v19;
      return objc_msgSendSuper2(&v20, sel_init);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2702730E0(char a1)
{
  v2 = v1;
  v4 = sub_2702B3C8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_2702B44CC();

    v18 = 0xD000000000000014;
    v19 = 0x80000002702BA7A0;
    type metadata accessor for UIDeduplicator();
    sub_2702629F8(v7);
    v8 = sub_2702B3C6C();
    v10 = v9;
    (*(v5 + 8))(v7, v4);
    MEMORY[0x27439BCF0](v8, v10);

    MEMORY[0x27439BCF0](46, 0xE100000000000000);
    v12 = v18;
    v11 = v19;
  }

  else
  {
    v11 = 0xE90000000000002ELL;
    v12 = 0x64656C6261736964;
  }

  v13 = sub_2702B3D6C();
  v14 = sub_2702B432C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    v17 = sub_27026FD60(v12, v11, &v18);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_270253000, v13, v14, "Debug mode state: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x27439CE00](v16, -1, -1);
    MEMORY[0x27439CE00](v15, -1, -1);
  }

  else
  {
  }

  *(v2 + OBJC_IVAR___UIDeduplicatorCompat_debugMode) = a1 & 1;
}

uint64_t sub_2702733A8(uint64_t a1, uint64_t a2, CGImage *a3)
{
  v7 = type metadata accessor for UIUDetectorResult();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v30 - v11);
  if (*(v3 + OBJC_IVAR___UIDeduplicatorCompat_debugMode) != 1)
  {

    goto LABEL_5;
  }

  v31 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8740);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR___UIDeduplicatorCompat_debugScreenshotCount;
  v15 = *(v3 + OBJC_IVAR___UIDeduplicatorCompat_debugScreenshotCount);
  v16 = MEMORY[0x277D83B88];
  *(v13 + 16) = xmmword_2702B74D0;
  v17 = MEMORY[0x277D83C10];
  *(v13 + 56) = v16;
  *(v13 + 64) = v17;
  *(v13 + 32) = v15;
  v36 = sub_2702B405C();
  v37 = v18;

  MEMORY[0x27439BCF0](95, 0xE100000000000000);

  MEMORY[0x27439BCF0](a1, a2);

  v34 = 32;
  v35 = 0xE100000000000000;
  v32 = 95;
  v33 = 0xE100000000000000;
  sub_270264230();
  a1 = sub_2702B440C();
  a2 = v19;

  v21 = *(v3 + v14);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v3 + v14) = v23;
    v36 = a1;
    v37 = a2;

    MEMORY[0x27439BCF0](1735290926, 0xE400000000000000);
    a3 = v31;
    _s15UIUnderstanding14UIDeduplicatorC24debugSaveImageToLocation06targetE08filenameySo10CGImageRefa_SStFZ_0(v31, v36, v37);

LABEL_5:
    v24 = a3;

    sub_270266A1C(v24, v12);
    v25 = sub_27027061C(*v12, v24);
    sub_27025C678(v12, v10);
    v26 = type metadata accessor for ScreenShot();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR___ScreenShotCompat_imageID];
    *v28 = a1;
    v28[1] = a2;
    *&v27[OBJC_IVAR___ScreenShotCompat_image] = v24;
    sub_27025C678(v10, &v27[OBJC_IVAR___ScreenShotCompat_detections]);
    *&v27[OBJC_IVAR___ScreenShotCompat_groupingInfo] = v25;
    v38.receiver = v27;
    v38.super_class = v26;
    v29 = objc_msgSendSuper2(&v38, sel_init);

    sub_27025C4E4(v10);
    sub_27025C4E4(v12);
    return v29;
  }

  __break(1u);
  return result;
}

id UIDeduplicator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIDeduplicator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIDeduplicator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_27027390C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84B8);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_270273990(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83A8);
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

void *sub_270273A18(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8758);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void *sub_270273A9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_270273B9C(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 12) | (v17 << 6)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = *v18;
      v23 = v18[1];
      v24 = v18[3];
      v11[2] = v18[2];
      v11[3] = v24;
      *v11 = v22;
      v11[1] = v23;
      if (v14 == v10)
      {
        sub_270273D24(v28, v27);
        goto LABEL_24;
      }

      v11 += 4;
      sub_270273D24(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

_DWORD *sub_270273D80(char *a1, unint64_t a2)
{
  v4 = v2;
  v123 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8488);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v110 - v7;
  v9 = OBJC_IVAR___UIDeduplicatorCompat_fingerprinter;
  v10 = *(*(v2 + OBJC_IVAR___UIDeduplicatorCompat_fingerprinter) + 32);
  v11 = *&a1[OBJC_IVAR___ScreenShotCompat_image];
  sub_27025C678(&a1[OBJC_IVAR___ScreenShotCompat_detections], &v110 - v7);
  v12 = type metadata accessor for UIUDetectorResult();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);

  v13 = sub_27025B5F8(v11, v8);
  if (v3)
  {
    goto LABEL_2;
  }

  v14 = v13;
  v118 = a1;
  if (!v13)
  {
    sub_27025C2D4();
    swift_allocError();
    swift_willThrow();
LABEL_2:

    sub_2702643E4(v8, &qword_2807C8488);
    return v10;
  }

  v114 = 0;
  sub_2702643E4(v8, &qword_2807C8488);
  v15 = v10[10];

  v16 = *(*(v4 + v9) + 40);
  v17 = OBJC_IVAR___UIDeduplicatorCompat_screenGroupMap;
  swift_beginAccess();
  v115 = v4;
  v113 = v17;
  v18 = *(v4 + v17);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v119 = v18;

  v24 = 0;
  v121 = v14;
  v116 = v23;
  v117 = v19;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
    v25 = v24;
LABEL_11:
    v26 = (*(v119 + 56) + ((v25 << 12) | (__clz(__rbit64(v22)) << 6)));
    v27 = v26[1];
    v29 = v26[2];
    v28 = v26[3];
    v144 = *v26;
    v145 = v27;
    v146 = v29;
    v147 = v28;
    v30 = v29;
    sub_270273D24(&v144, &v140);
    v31 = v30;
    v32 = [v14 count];
    if ((v32 & 0x8000000000000000) != 0)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v33 = v32;
    v120 = v25;
    v122 = v22;
    if (v32)
    {
      v34 = 0;
      v35 = 0.0;
      v36 = v121;
      do
      {
        v37 = [v36 objectAtIndexedSubscript_];
        [v37 floatValue];
        v39 = v38;

        v40 = [v31 objectAtIndexedSubscript_];
        [v40 floatValue];
        v42 = v41;

        v35 = v35 + ((v39 - v42) * (v39 - v42));
        ++v34;
      }

      while (v33 != v34);
    }

    else
    {
      v35 = 0.0;
    }

    if (sqrtf(v35) < v16)
    {

      v140 = v144;
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v139 = MEMORY[0x277D84F90];
      v138 = MEMORY[0x277D84F90];
      v58 = v123;
      if (v123 >> 62)
      {
        goto LABEL_67;
      }

      v59 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_34;
    }

    v22 = (v122 - 1) & v122;
    sub_270274C30(&v144);
    v24 = v120;
    v14 = v121;
    v23 = v116;
    v19 = v117;
  }

  while (v22);
  while (1)
  {
LABEL_8:
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      goto LABEL_11;
    }
  }

  *&v144 = MEMORY[0x277D84F90];
  v43 = v123;
  if (v123 >> 62)
  {
    goto LABEL_62;
  }

  v44 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v118;
  if (!v44)
  {
    goto LABEL_63;
  }

  while (v44 < 1)
  {
    __break(1u);
LABEL_67:
    v109 = sub_2702B45FC();
    if (v109 < 0)
    {
      __break(1u);
    }

    v59 = v109;
    v58 = v123;
LABEL_34:
    if (!v59)
    {
      v80 = *(&v144 + 1);
      v81 = v144;
      sub_270273D24(&v144, &v134);
      v78 = MEMORY[0x277D84F90];
      v82 = MEMORY[0x277D84F90];
LABEL_57:
      sub_27029B818(v82);
      v83 = *&v118[OBJC_IVAR___ScreenShotCompat_imageID];
      v84 = *&v118[OBJC_IVAR___ScreenShotCompat_imageID + 8];
      v85 = v118;

      v86 = *(&v143 + 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v134 = v86;
      sub_2702A6ECC(v85, v83, v84, isUniquelyReferenced_nonNull_native);

      *(&v143 + 1) = v134;
      v148[0] = v140;
      v148[1] = v141;
      v148[2] = v142;
      v148[3] = v143;
      v157 = v140;
      v88 = v115;
      v89 = v113;
      swift_beginAccess();

      sub_270273D24(v148, &v134);
      sub_270274C84(&v157, &v134);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *&v134 = *(v88 + v89);
      *(v88 + v89) = 0x8000000000000000;
      sub_2702A7044(v148, v81, v80, v90);

      *(v88 + v89) = v134;
      swift_endAccess();
      v91 = type metadata accessor for AddedElements();
      v92 = objc_allocWithZone(v91);
      *&v92[OBJC_IVAR___AddedElementsCompat_groupID] = v157;
      *&v92[OBJC_IVAR___AddedElementsCompat_dedupeElements] = v78;
      v126.receiver = v92;
      v126.super_class = v91;
      v10 = objc_msgSendSuper2(&v126, sel_init);

      sub_270274C30(&v144);
      v134 = v140;
      v135 = v141;
      v136 = v142;
      v137 = v143;
      sub_270274C30(&v134);
      return v10;
    }

    v134 = v140;
    v135 = v141;
    v136 = v142;
    v137 = v143;
    v60 = v143;
    v61 = *&v118[OBJC_IVAR___ScreenShotCompat_imageID + 8];
    v120 = *&v118[OBJC_IVAR___ScreenShotCompat_imageID];
    v122 = v58 & 0xC000000000000001;
    sub_270273D24(&v144, v133);
    v62 = 0;
    v116 = v60 & 0xFFFFFFFFFFFFFF8;
    v117 = v60 & 0xC000000000000001;
    v111 = v60;
    v112 = v60 + 32;
    v119 = MEMORY[0x277D84F90];
    v63 = v59 - 1;
    if (v122)
    {
LABEL_36:
      v64 = MEMORY[0x27439C0F0](v62, v123);
      goto LABEL_38;
    }

    while (1)
    {
      v64 = *(v123 + 8 * v62 + 32);
LABEL_38:
      v65 = v64;
      v129 = v134;
      v130 = v135;
      v131 = v136;
      v132 = v137;
      sub_270273D24(&v134, &v128);
      v66 = sub_2702A3FE8(v118, v65, &v129);
      v68 = v67;
      v133[0] = v129;
      v133[1] = v130;
      v133[2] = v131;
      v133[3] = v132;
      sub_270274C30(v133);
      if ((v68 & 1) == 0)
      {
        break;
      }

LABEL_44:
      v72 = *&v65[OBJC_IVAR___DedupeElementCompat_uiObject];
      v73 = type metadata accessor for DedupeElement();
      v74 = objc_allocWithZone(v73);
      v75 = &v74[OBJC_IVAR___DedupeElementCompat_screenID];
      *v75 = 0;
      v75[1] = 0;
      *&v74[OBJC_IVAR___DedupeElementCompat_uiObject] = v72;
      v74[OBJC_IVAR___DedupeElementCompat_isDuplicate] = (v68 & 1) == 0;
      *v75 = v120;
      v75[1] = v61;
      v127.receiver = v74;
      v127.super_class = v73;
      v76 = v72;

      v77 = objc_msgSendSuper2(&v127, sel_init);
      MEMORY[0x27439BDA0]();
      if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2702B41CC();
      }

      sub_2702B41EC();
      v78 = v139;
      if (v68)
      {
        v79 = v77;
        MEMORY[0x27439BDA0]();
        if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2702B41CC();
        }

        sub_2702B41EC();

        v119 = v138;
      }

      else
      {
      }

      if (v63 == v62)
      {
        v80 = *(&v134 + 1);
        v81 = v134;
        v82 = v119;
        goto LABEL_57;
      }

      ++v62;
      if (v122)
      {
        goto LABEL_36;
      }
    }

    if (v117)
    {
      v69 = MEMORY[0x27439C0F0](v66, v111);
LABEL_43:
      v70 = v69;
      v71 = OBJC_IVAR___DedupeElementCompat_isDuplicate;
      swift_beginAccess();
      v70[v71] = 1;

      goto LABEL_44;
    }

    if ((v66 & 0x8000000000000000) == 0)
    {
      if (v66 >= *(v116 + 16))
      {
        goto LABEL_61;
      }

      v69 = *(v112 + 8 * v66);
      goto LABEL_43;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    v93 = sub_2702B45FC();
    v43 = v123;
    v44 = v93;
    v45 = v118;
    if (!v93)
    {
LABEL_63:
      v57 = MEMORY[0x277D84F90];
      goto LABEL_64;
    }
  }

  v46 = 0;
  v47 = *&v45[OBJC_IVAR___ScreenShotCompat_imageID + 8];
  v122 = *&v45[OBJC_IVAR___ScreenShotCompat_imageID];
  v48 = v43 & 0xC000000000000001;
  do
  {
    if (v48)
    {
      v49 = MEMORY[0x27439C0F0](v46);
    }

    else
    {
      v49 = *(v43 + 8 * v46 + 32);
    }

    v50 = v49;
    v51 = *&v49[OBJC_IVAR___DedupeElementCompat_uiObject];
    v52 = type metadata accessor for DedupeElement();
    v53 = objc_allocWithZone(v52);
    v54 = &v53[OBJC_IVAR___DedupeElementCompat_screenID];
    *v54 = 0;
    v54[1] = 0;
    *&v53[OBJC_IVAR___DedupeElementCompat_uiObject] = v51;
    v53[OBJC_IVAR___DedupeElementCompat_isDuplicate] = 0;
    *v54 = v122;
    v54[1] = v47;
    v125.receiver = v53;
    v125.super_class = v52;
    v55 = v51;

    v56 = objc_msgSendSuper2(&v125, sel_init);
    MEMORY[0x27439BDA0]();
    if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2702B41CC();
    }

    ++v46;
    sub_2702B41EC();

    v43 = v123;
  }

  while (v44 != v46);
  v57 = v144;
  v45 = v118;
LABEL_64:
  v95 = *&v45[OBJC_IVAR___ScreenShotCompat_imageID];
  v94 = *&v45[OBJC_IVAR___ScreenShotCompat_imageID + 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2702B74D0;
  *(inited + 32) = v95;
  *(inited + 40) = v94;
  *(inited + 48) = v45;
  swift_bridgeObjectRetain_n();
  v97 = v121;
  v98 = v45;
  v99 = v97;
  v100 = v98;
  v101 = sub_27026007C(inited);
  swift_setDeallocating();
  sub_2702643E4(inited + 32, &qword_2807C8768);
  *&v149 = v95;
  *(&v149 + 1) = v94;
  v150 = 0;
  v151 = 0;
  v152 = v99;
  v153 = v15;
  v154 = v57;
  v155 = v101;
  v102 = v115;
  v103 = v113;
  swift_beginAccess();

  sub_270273D24(&v149, &v144);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  *&v144 = *(v102 + v103);
  *(v102 + v103) = 0x8000000000000000;
  sub_2702A7044(&v149, v95, v94, v104);

  *(v102 + v103) = v144;
  swift_endAccess();
  v156 = v154;
  v105 = type metadata accessor for AddedElements();
  v106 = objc_allocWithZone(v105);
  v107 = &v106[OBJC_IVAR___AddedElementsCompat_groupID];
  *v107 = v95;
  v107[1] = v94;
  *&v106[OBJC_IVAR___AddedElementsCompat_dedupeElements] = v156;

  sub_270274CE0(&v156, &v144);
  v124.receiver = v106;
  v124.super_class = v105;
  v10 = objc_msgSendSuper2(&v124, sel_init);
  sub_270274C30(&v149);

  return v10;
}

uint64_t type metadata accessor for UIDeduplicator()
{
  result = qword_2807C8748;
  if (!qword_2807C8748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2702749A8()
{
  result = sub_2702B3D8C();
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

uint64_t sub_270274CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id DedupeElement.__allocating_init(uiObject:isDuplicate:screenID:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___DedupeElementCompat_screenID];
  *v10 = 0;
  v10[1] = 0;
  *&v9[OBJC_IVAR___DedupeElementCompat_uiObject] = a1;
  v9[OBJC_IVAR___DedupeElementCompat_isDuplicate] = a2;
  *v10 = a3;
  v10[1] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id AddedElements.__allocating_init(groupID:dedupeElements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___AddedElementsCompat_groupID];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___AddedElementsCompat_dedupeElements] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_270274EB8()
{
  v1 = OBJC_IVAR___DedupeElementCompat_isDuplicate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_270274F50(char a1)
{
  v3 = OBJC_IVAR___DedupeElementCompat_isDuplicate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DedupeElement.init(uiObject:isDuplicate:screenID:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___DedupeElementCompat_screenID];
  *v5 = 0;
  v5[1] = 0;
  *&v4[OBJC_IVAR___DedupeElementCompat_uiObject] = a1;
  v4[OBJC_IVAR___DedupeElementCompat_isDuplicate] = a2;
  *v5 = a3;
  v5[1] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for DedupeElement();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t AddedElements.groupID.getter()
{
  v1 = *(v0 + OBJC_IVAR___AddedElementsCompat_groupID);

  return v1;
}

id AddedElements.init(groupID:dedupeElements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___AddedElementsCompat_groupID];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___AddedElementsCompat_dedupeElements] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for AddedElements();
  return objc_msgSendSuper2(&v6, sel_init);
}

id AddedElements.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_27027549C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2702754D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DedupeElementCompat_isDuplicate;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_27027552C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DedupeElementCompat_isDuplicate;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2702756C8(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v16 = a5;
  v19 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C87A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270275DD0();
  sub_2702B48DC();
  v17 = a2;
  v20 = 0;
  type metadata accessor for UIObject();
  sub_27027A740(&qword_2807C87B0);
  sub_2702B46BC();
  if (!v5)
  {
    v13 = v16;
    v17 = a3;
    v18 = v19 & 1;
    v20 = 1;
    sub_27026259C();
    sub_2702B46BC();
    v17 = v13;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8718);
    sub_27027A784(&qword_2807C87B8, &qword_2807C87B0);
    sub_2702B471C();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_270275924()
{
  v1 = 0x676E6970756F7267;
  if (*v0 != 1)
  {
    v1 = 0x6E6572646C696863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6544746E65726170;
  }
}

uint64_t sub_270275994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27027A360(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2702759BC(uint64_t a1)
{
  v2 = sub_270275DD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2702759F8(uint64_t a1)
{
  v2 = sub_270275DD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270275A34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27027A484(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t UIUGrouper.__allocating_init(platform:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

BOOL sub_270275AD8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v7 = *(v4 + v6);
  v8 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v9 = *(a3 + v8);
  v10 = &v7[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v7;
  v16 = v9;
  v37.origin.x = v11;
  v37.origin.y = v12;
  v37.size.width = v13;
  v37.size.height = v14;
  MidX = CGRectGetMidX(v37);
  v18 = &v16[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v19 = CGRectGetMidX(*v18);

  v20 = MidX - v19;
  v21 = fabsf(v20);
  v22 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v23 = *(v5 + v22);
  v24 = *(a3 + v8);
  v25 = &v23[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  v29 = v25[3];
  v30 = v23;
  v31 = v24;
  v38.origin.x = v26;
  v38.origin.y = v27;
  v38.size.width = v28;
  v38.size.height = v29;
  v32 = CGRectGetMidX(v38);
  v33 = &v31[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v34 = CGRectGetMidX(*v33);

  v35 = v32 - v34;
  return v21 < fabsf(v35);
}

uint64_t sub_270275D38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_270275D80(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_270275DD0()
{
  result = qword_2807C87A8;
  if (!qword_2807C87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C87A8);
  }

  return result;
}

uint64_t sub_270275E24(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2702A88A0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_270275EB8(v10, a2, a3);
  return sub_2702B455C();
}

uint64_t sub_270275EB8(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_2702B473C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for UIObject();
        v10 = sub_2702B41DC();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_270275FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v38 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v37 = a3;
    v6 = *(v38 + 8 * a3);
    v35 = v5;
    v36 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v9 = *&v6[v8];
      v10 = &v9[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      x = v10->origin.x;
      y = v10->origin.y;
      width = v10->size.width;
      height = v10->size.height;
      v15 = v6;
      v16 = v7;
      v17 = v9;
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = height;
      v18 = CGRectGetWidth(v39);
      if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v18 <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (v18 >= 9.22337204e18)
      {
        goto LABEL_27;
      }

      v19 = CGRectGetHeight(*v10);

      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      if (v19 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v19 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      v20 = v18 * v19;
      if ((v18 * v19) >> 64 != v20 >> 63)
      {
        goto LABEL_31;
      }

      v21 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v22 = *&v16[v21];
      v23 = &v22[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v24 = v23->origin.x;
      v25 = v23->origin.y;
      v26 = v23->size.width;
      v27 = v23->size.height;
      v28 = v22;
      v40.origin.x = v24;
      v40.origin.y = v25;
      v40.size.width = v26;
      v40.size.height = v27;
      v29 = CGRectGetWidth(v40);
      if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_32;
      }

      if (v29 <= -9.22337204e18)
      {
        goto LABEL_33;
      }

      if (v29 >= 9.22337204e18)
      {
        goto LABEL_34;
      }

      v30 = CGRectGetHeight(*v23);

      if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_35;
      }

      if (v30 <= -9.22337204e18)
      {
        goto LABEL_36;
      }

      if (v30 >= 9.22337204e18)
      {
        goto LABEL_37;
      }

      v31 = v29 * v30;
      if ((v29 * v30) >> 64 != v31 >> 63)
      {
        goto LABEL_38;
      }

      if (v20 < v31)
      {
        if (!v38)
        {
          goto LABEL_39;
        }

        v32 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v32;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      a3 = v37 + 1;
      v4 = v36 + 8;
      v5 = v35 - 1;
      if (v37 + 1 == a2)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }
}

void sub_2702762EC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_114:
    v5 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_181;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_116;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 >= v8)
    {
      goto LABEL_31;
    }

    v145 = v8;
    v139 = v6;
    v12 = *(*v7 + 8 * v9);
    v13 = 8 * v11;
    v14 = (*v7 + 8 * v11);
    v15 = *v14;
    v6 = v14 + 2;
    v16 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v17 = *&v12[v16];
    v5 = v12;
    v18 = v15;
    v19 = v17;
    sub_270297EE8();
    v21 = v20;

    v22 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v23 = *&v18[v22];
    sub_270297EE8();
    v25 = v24;

    v137 = v11;
    v26 = v11 + 2;
    do
    {
      v9 = v145;
      if (v145 == v26)
      {
        goto LABEL_23;
      }

      v7 = *(v6 - 1);
      v27 = *v6;
      v28 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v29 = *&v27[v28];
      v30 = &v29[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      x = v30->origin.x;
      y = v30->origin.y;
      width = v30->size.width;
      height = v30->size.height;
      v35 = v27;
      v5 = v7;
      v36 = v29;
      v147.origin.x = x;
      v147.origin.y = y;
      v147.size.width = width;
      v147.size.height = height;
      v37 = CGRectGetWidth(v147);
      if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_140;
      }

      if (v37 <= -9.22337204e18)
      {
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        v10 = sub_2702A6924(v10);
LABEL_116:
        v130 = *(v10 + 2);
        if (v130 >= 2)
        {
          do
          {
            v131 = *v7;
            if (!*v7)
            {
              goto LABEL_178;
            }

            v7 = v130 - 1;
            v132 = *&v10[16 * v130];
            v133 = *&v10[16 * v130 + 24];
            sub_270276E1C(&v131[v132], &v131[*&v10[16 * v130 + 16]], &v131[v133], v6);
            if (v5)
            {
              break;
            }

            if (v133 < v132)
            {
              goto LABEL_167;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_2702A6924(v10);
            }

            if (v130 - 2 >= *(v10 + 2))
            {
              goto LABEL_168;
            }

            v134 = &v10[16 * v130];
            *v134 = v132;
            *(v134 + 1) = v133;
            sub_2702A6898(v130 - 1);
            v130 = *(v10 + 2);
            v7 = a3;
          }

          while (v130 > 1);
        }

LABEL_124:

        return;
      }

      if (v37 >= 9.22337204e18)
      {
        goto LABEL_142;
      }

      v38 = CGRectGetHeight(*v30);
      v7 = *&v38;

      if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_143;
      }

      if (v38 <= -9.22337204e18)
      {
        goto LABEL_144;
      }

      if (v38 >= 9.22337204e18)
      {
        goto LABEL_145;
      }

      v7 = v37 * v38;
      if ((v37 * v38) >> 64 != v7 >> 63)
      {
        goto LABEL_146;
      }

      v39 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v40 = *(v5 + v39);
      v41 = &v40[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v42 = v41->origin.x;
      v43 = v41->origin.y;
      v44 = v41->size.width;
      v45 = v41->size.height;
      v46 = v40;
      v148.origin.x = v42;
      v148.origin.y = v43;
      v148.size.width = v44;
      v148.size.height = v45;
      v47 = CGRectGetWidth(v148);
      if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_147;
      }

      if (v47 <= -9.22337204e18)
      {
        goto LABEL_148;
      }

      if (v47 >= 9.22337204e18)
      {
        goto LABEL_149;
      }

      v48 = CGRectGetHeight(*v41);

      if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_150;
      }

      if (v48 <= -9.22337204e18)
      {
        goto LABEL_151;
      }

      if (v48 >= 9.22337204e18)
      {
        goto LABEL_152;
      }

      v49 = v47 * v48;
      if ((v47 * v48) >> 64 != v49 >> 63)
      {
        goto LABEL_153;
      }

      ++v26;
      ++v6;
    }

    while (v21 < v25 != v7 >= v49);
    v9 = v26 - 1;
LABEL_23:
    v11 = v137;
    v6 = v139;
    v7 = a3;
    if (v21 < v25)
    {
      break;
    }

LABEL_31:
    v55 = *(v7 + 8);
    if (v9 >= v55)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v9, v11))
    {
      goto LABEL_171;
    }

    if (v9 - v11 >= a4)
    {
      goto LABEL_39;
    }

    v56 = v11 + a4;
    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    if (v56 >= v55)
    {
      v56 = *(v7 + 8);
    }

    if (v56 < v11)
    {
      goto LABEL_174;
    }

    if (v9 == v56)
    {
LABEL_39:
      if (v9 < v11)
      {
        goto LABEL_170;
      }
    }

    else
    {
      v138 = v11;
      v140 = v6;
      v6 = *v7;
      v103 = (*v7 + 8 * v9 - 8);
      v104 = v11 - v9;
      v136 = v56;
      do
      {
        v146 = v9;
        v105 = v6[v9];
        v141 = v104;
        v142 = v103;
        do
        {
          v7 = *v103;
          v106 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v107 = *&v105[v106];
          v108 = &v107[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v109 = v108->origin.x;
          v110 = v108->origin.y;
          v111 = v108->size.width;
          v112 = v108->size.height;
          v113 = v105;
          v5 = v7;
          v114 = v107;
          v149.origin.x = v109;
          v149.origin.y = v110;
          v149.size.width = v111;
          v149.size.height = v112;
          v115 = CGRectGetWidth(v149);
          if ((*&v115 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          if (v115 <= -9.22337204e18)
          {
            goto LABEL_127;
          }

          if (v115 >= 9.22337204e18)
          {
            goto LABEL_128;
          }

          v116 = CGRectGetHeight(*v108);
          v7 = *&v116;

          if ((*&v116 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_129;
          }

          if (v116 <= -9.22337204e18)
          {
            goto LABEL_130;
          }

          if (v116 >= 9.22337204e18)
          {
            goto LABEL_131;
          }

          v7 = v115 * v116;
          if ((v115 * v116) >> 64 != v7 >> 63)
          {
            goto LABEL_132;
          }

          v117 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v118 = *(v5 + v117);
          v119 = &v118[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v120 = v119->origin.x;
          v121 = v119->origin.y;
          v122 = v119->size.width;
          v123 = v119->size.height;
          v124 = v118;
          v150.origin.x = v120;
          v150.origin.y = v121;
          v150.size.width = v122;
          v150.size.height = v123;
          v125 = CGRectGetWidth(v150);
          if ((*&v125 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_133;
          }

          if (v125 <= -9.22337204e18)
          {
            goto LABEL_134;
          }

          if (v125 >= 9.22337204e18)
          {
            goto LABEL_135;
          }

          v126 = CGRectGetHeight(*v119);

          if ((*&v126 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_136;
          }

          if (v126 <= -9.22337204e18)
          {
            goto LABEL_137;
          }

          if (v126 >= 9.22337204e18)
          {
            goto LABEL_138;
          }

          v127 = v125 * v126;
          if ((v125 * v126) >> 64 != v127 >> 63)
          {
            goto LABEL_139;
          }

          if (v7 >= v127)
          {
            break;
          }

          if (!v6)
          {
            goto LABEL_176;
          }

          v128 = *v103;
          v105 = v103[1];
          *v103 = v105;
          v103[1] = v128;
          --v103;
        }

        while (!__CFADD__(v104++, 1));
        v9 = v146 + 1;
        v103 = v142 + 1;
        v104 = v141 - 1;
      }

      while (v146 + 1 != v136);
      v9 = v136;
      v11 = v138;
      v6 = v140;
      v7 = a3;
      if (v136 < v138)
      {
        goto LABEL_170;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_270290DEC(0, *(v10 + 2) + 1, 1, v10);
    }

    v58 = *(v10 + 2);
    v57 = *(v10 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v10 = sub_270290DEC((v57 > 1), v58 + 1, 1, v10);
    }

    *(v10 + 2) = v59;
    v60 = &v10[16 * v58];
    *(v60 + 4) = v11;
    *(v60 + 5) = v9;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_180;
    }

    if (v58)
    {
      while (1)
      {
        v61 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v10 + 4);
          v63 = *(v10 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_59:
          if (v65)
          {
            goto LABEL_159;
          }

          v78 = &v10[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_162;
          }

          v84 = &v10[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_165;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_166;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v59 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v88 = &v10[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_73:
        if (v83)
        {
          goto LABEL_161;
        }

        v91 = &v10[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_164;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_80:
        v99 = v61 - 1;
        if (v61 - 1 >= v59)
        {
          goto LABEL_154;
        }

        if (!*v7)
        {
          goto LABEL_177;
        }

        v100 = *&v10[16 * v99 + 32];
        v101 = *&v10[16 * v61 + 40];
        sub_270276E1C((*v7 + 8 * v100), (*v7 + 8 * *&v10[16 * v61 + 32]), (*v7 + 8 * v101), v5);
        if (v6)
        {
          goto LABEL_124;
        }

        if (v101 < v100)
        {
          goto LABEL_155;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2702A6924(v10);
        }

        if (v99 >= *(v10 + 2))
        {
          goto LABEL_156;
        }

        v102 = &v10[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        sub_2702A6898(v61);
        v59 = *(v10 + 2);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v10[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_157;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_158;
      }

      v73 = &v10[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_160;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_163;
      }

      if (v77 >= v69)
      {
        v95 = &v10[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_169;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v8 = *(v7 + 8);
    if (v9 >= v8)
    {
      goto LABEL_114;
    }
  }

  if (v9 >= v137)
  {
    if (v137 < v9)
    {
      v50 = 8 * v9 - 8;
      v51 = v9;
      v52 = v137;
      while (1)
      {
        if (v52 != --v51)
        {
          v53 = *a3;
          if (!*a3)
          {
            goto LABEL_179;
          }

          v54 = *(v53 + v13);
          *(v53 + v13) = *(v53 + v50);
          *(v53 + v50) = v54;
        }

        ++v52;
        v50 -= 8;
        v13 += 8;
        if (v52 >= v51)
        {
          goto LABEL_31;
        }
      }
    }

    goto LABEL_31;
  }

LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
}

void sub_270276E1C(void **__dst, void **__src, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v6 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v80 = &v4[v12];
    if (v10 >= 8 && v6 > __dst)
    {
      do
      {
        v77 = v6;
        v46 = v6 - 1;
        --v5;
        v47 = v80;
        while (1)
        {
          v48 = v4;
          v49 = *--v47;
          v6 = v46;
          v50 = *v46;
          v51 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v52 = *&v49[v51];
          v53 = &v52[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          x = v53->origin.x;
          y = v53->origin.y;
          width = v53->size.width;
          height = v53->size.height;
          v58 = v49;
          v59 = v50;
          v60 = v52;
          v83.origin.x = x;
          v83.origin.y = y;
          v83.size.width = width;
          v83.size.height = height;
          v61 = CGRectGetWidth(v83);
          if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            return;
          }

          if (v61 <= -9.22337204e18)
          {
            goto LABEL_71;
          }

          if (v61 >= 9.22337204e18)
          {
            goto LABEL_73;
          }

          v62 = CGRectGetHeight(*v53);

          if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_75;
          }

          if (v62 <= -9.22337204e18)
          {
            goto LABEL_76;
          }

          if (v62 >= 9.22337204e18)
          {
            goto LABEL_79;
          }

          v63 = v61 * v62;
          if ((v61 * v62) >> 64 != v63 >> 63)
          {
            goto LABEL_80;
          }

          v64 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v65 = *&v59[v64];
          v66 = &v65[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v67 = v66->origin.x;
          v68 = v66->origin.y;
          v69 = v66->size.width;
          v70 = v66->size.height;
          v71 = v65;
          v84.origin.x = v67;
          v84.origin.y = v68;
          v84.size.width = v69;
          v84.size.height = v70;
          v72 = CGRectGetWidth(v84);
          if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_83;
          }

          if (v72 <= -9.22337204e18)
          {
            goto LABEL_84;
          }

          if (v72 >= 9.22337204e18)
          {
            goto LABEL_87;
          }

          v73 = CGRectGetHeight(*v66);

          if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_88;
          }

          if (v73 <= -9.22337204e18)
          {
            goto LABEL_91;
          }

          if (v73 >= 9.22337204e18)
          {
            goto LABEL_92;
          }

          v74 = v72 * v73;
          if ((v72 * v73) >> 64 != v74 >> 63)
          {
            goto LABEL_95;
          }

          v75 = v74;
          v76 = v5 + 1;
          if (v63 < v75)
          {
            break;
          }

          v4 = v48;
          if (v76 != v80)
          {
            *v5 = *v47;
          }

          --v5;
          v80 = v47;
          v46 = v6;
          if (v47 <= v48)
          {
            v80 = v47;
            v6 = v77;
            goto LABEL_64;
          }
        }

        v4 = v48;
        if (v76 != v77)
        {
          *v5 = *v6;
        }
      }

      while (v80 > v48 && v6 > __dst);
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v80 = &v4[v9];
    if (v7 >= 8)
    {
      v78 = v5;
      v14 = __src >= v5;
      v15 = v6;
      if (!v14)
      {
        v16 = __src;
        while (1)
        {
          v17 = v16;
          v18 = *v16;
          v19 = v4;
          v20 = *v4;
          v21 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v22 = *&v18[v21];
          v23 = &v22[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v24 = v23->origin.x;
          v25 = v23->origin.y;
          v26 = v23->size.width;
          v27 = v23->size.height;
          v28 = v18;
          v29 = v20;
          v30 = v22;
          v81.origin.x = v24;
          v81.origin.y = v25;
          v81.size.width = v26;
          v81.size.height = v27;
          v31 = CGRectGetWidth(v81);
          if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_69;
          }

          if (v31 <= -9.22337204e18)
          {
            goto LABEL_70;
          }

          if (v31 >= 9.22337204e18)
          {
            goto LABEL_72;
          }

          v32 = CGRectGetHeight(*v23);

          if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_74;
          }

          if (v32 <= -9.22337204e18)
          {
            goto LABEL_77;
          }

          if (v32 >= 9.22337204e18)
          {
            goto LABEL_78;
          }

          v33 = v31 * v32;
          if ((v31 * v32) >> 64 != v33 >> 63)
          {
            goto LABEL_81;
          }

          v34 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v35 = *&v29[v34];
          v36 = &v35[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v37 = v36->origin.x;
          v38 = v36->origin.y;
          v39 = v36->size.width;
          v40 = v36->size.height;
          v41 = v35;
          v82.origin.x = v37;
          v82.origin.y = v38;
          v82.size.width = v39;
          v82.size.height = v40;
          v42 = CGRectGetWidth(v82);
          if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_82;
          }

          if (v42 <= -9.22337204e18)
          {
            goto LABEL_85;
          }

          if (v42 >= 9.22337204e18)
          {
            goto LABEL_86;
          }

          v43 = CGRectGetHeight(*v36);

          if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_89;
          }

          if (v43 <= -9.22337204e18)
          {
            goto LABEL_90;
          }

          if (v43 >= 9.22337204e18)
          {
            goto LABEL_93;
          }

          v44 = v42 * v43;
          if ((v42 * v43) >> 64 != v44 >> 63)
          {
            goto LABEL_94;
          }

          if (v33 >= v44)
          {
            break;
          }

          v45 = v17;
          v16 = v17 + 1;
          v4 = v19;
          if (v15 != v17)
          {
            goto LABEL_30;
          }

LABEL_31:
          ++v15;
          if (v4 >= v80 || v16 >= v78)
          {
            goto LABEL_33;
          }
        }

        v45 = v19;
        v4 = v19 + 1;
        v16 = v17;
        if (v15 == v19)
        {
          goto LABEL_31;
        }

LABEL_30:
        *v15 = *v45;
        goto LABEL_31;
      }

LABEL_33:
      v6 = v15;
    }
  }

LABEL_64:
  if (v6 != v4 || v6 >= (v4 + ((v80 - v4 + (v80 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v80 - v4));
  }
}

uint64_t sub_270277584(unint64_t a1)
{
  v29 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v2 = sub_2702B45FC();
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x27439C0F0](v3, a1);
        }

        else
        {
          if (v3 >= *(v4 + 16))
          {
            goto LABEL_16;
          }

          v5 = *(a1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v8 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*&v6[v8] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 14)
        {
          sub_2702B454C();
          sub_2702B457C();
          v4 = a1 & 0xFFFFFFFFFFFFFF8;
          sub_2702B458C();
          sub_2702B455C();
        }

        else
        {
        }

        ++v3;
      }

      while (v7 != v2);
      v9 = v29;
      if (v29 < 0)
      {
        goto LABEL_42;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v9 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

LABEL_19:
  if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_42;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {
  }

  do
  {
    v11 = 0;
    v27 = v9 & 0xC000000000000001;
    v24 = v9 + 32;
    v25 = v10;
    v26 = v9;
    while (1)
    {
      if (v27)
      {
        v12 = MEMORY[0x27439C0F0](v11, v9);
      }

      else
      {
        if (v11 >= *(v9 + 16))
        {
          goto LABEL_41;
        }

        v12 = *(v24 + 8 * v11);
      }

      v13 = v12;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v15 = *&v12[OBJC_IVAR___UIObjectCompat_groupingInfo + 24];
      if (v15 >> 62)
      {
        v16 = sub_2702B45FC();
        if (!v16)
        {
          goto LABEL_37;
        }

LABEL_30:
        if (v16 < 1)
        {
          goto LABEL_40;
        }

        v28 = v11;

        v17 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x27439C0F0](v17, v15);
          }

          else
          {
            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          ++v17;
          v20 = &v18[OBJC_IVAR___UIObjectCompat_groupingInfo];
          v21 = *&v18[OBJC_IVAR___UIObjectCompat_groupingInfo];
          *v20 = v13;
          *(v20 + 1) = 14;
          v20[16] = 0;
          v22 = v13;
        }

        while (v16 != v17);

        v10 = v25;
        v9 = v26;
        v11 = v28;
        if (v28 == v25)
        {
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_30;
        }

LABEL_37:

        if (v11 == v10)
        {
        }
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v10 = sub_2702B45FC();
  }

  while (v10);
}

uint64_t sub_27027788C(void **__src, void **a2, void **a3, void **__dst, uint64_t a5)
{
  v5 = __dst;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v99 = a3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v49 = a2;
    if (__dst != a2 || &a2[v12] <= __dst)
    {
      memmove(__dst, a2, 8 * v12);
    }

    v98 = &v5[v12];
    v86 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    if (v10 >= 8 && v49 > v6)
    {
      v92 = v6;
      v97 = v5;
LABEL_26:
      v94 = v49;
      v50 = v49 - 1;
      v51 = v98;
      --v99;
      v85 = v49 - 1;
      do
      {
        v88 = v99 + 1;
        v52 = *--v51;
        v53 = *v50;
        v54 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v55 = *&v52[v54];
        v56 = *(a5 + v86);
        v57 = &v55[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v58 = *v57;
        v59 = v57[1];
        v60 = v57[2];
        v61 = v57[3];
        v90 = v52;
        v62 = v53;
        v63 = v55;
        v64 = v56;
        v102.origin.x = v58;
        v102.origin.y = v59;
        v102.size.width = v60;
        v102.size.height = v61;
        MidX = CGRectGetMidX(v102);
        v66 = &v64[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v67 = CGRectGetMidX(*v66);

        v68 = MidX - v67;
        v69 = fabsf(v68);
        v70 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v71 = *&v62[v70];
        v72 = *(a5 + v86);
        v73 = &v71[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v74 = *v73;
        v75 = v73[1];
        v76 = v73[2];
        v77 = v73[3];
        v78 = v71;
        v79 = v72;
        v103.origin.x = v74;
        v103.origin.y = v75;
        v103.size.width = v76;
        v103.size.height = v77;
        v80 = CGRectGetMidX(v103);
        v81 = &v79[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v82 = CGRectGetMidX(*v81);

        v83 = v80 - v82;
        if (v69 < fabsf(v83))
        {
          v5 = v97;
          if (v88 != v94)
          {
            *v99 = *v85;
          }

          if (v98 <= v97 || (v49 = v85, v85 <= v92))
          {
            v49 = v85;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v5 = v97;
        if (v88 != v98)
        {
          *v99 = *v51;
        }

        v98 = v51;
        --v99;
        v50 = v85;
      }

      while (v51 > v97);
      v98 = v51;
      v49 = v94;
    }
  }

  else
  {
    if (__dst != __src || &__src[v9] <= __dst)
    {
      memmove(__dst, __src, 8 * v9);
    }

    v98 = &v5[v9];
    v87 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    if (v7 >= 8 && a2 < v99)
    {
      v14 = a2;
      while (1)
      {
        v96 = v5;
        v91 = v6;
        v93 = v14;
        v15 = *v14;
        v16 = *v5;
        v17 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v18 = *&v15[v17];
        v19 = *(a5 + v87);
        v20 = &v18[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v89 = v15;
        v25 = v16;
        v26 = v18;
        v27 = v19;
        v100.origin.x = v21;
        v100.origin.y = v22;
        v100.size.width = v23;
        v100.size.height = v24;
        v28 = CGRectGetMidX(v100);
        v29 = &v27[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v30 = CGRectGetMidX(*v29);

        v31 = v28 - v30;
        v32 = fabsf(v31);
        v33 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v34 = *&v25[v33];
        v35 = *(a5 + v87);
        v36 = &v34[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v37 = *v36;
        v38 = v36[1];
        v39 = v36[2];
        v40 = v36[3];
        v41 = v34;
        v42 = v35;
        v101.origin.x = v37;
        v101.origin.y = v38;
        v101.size.width = v39;
        v101.size.height = v40;
        v43 = CGRectGetMidX(v101);
        v44 = &v42[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v45 = CGRectGetMidX(*v44);

        v46 = v43 - v45;
        if (v32 >= fabsf(v46))
        {
          break;
        }

        v47 = v91;
        v48 = v93;
        v14 = v93 + 1;
        if (v91 != v93)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 = v47 + 1;
        if (v5 >= v98 || v14 >= v99)
        {
          goto LABEL_19;
        }
      }

      v48 = v5++;
      v47 = v91;
      v14 = v93;
      if (v91 == v96)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v47 = *v48;
      goto LABEL_17;
    }

LABEL_19:
    v49 = v6;
  }

LABEL_37:
  if (v49 != v5 || v49 >= (v5 + ((v98 - v5 + (v98 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v49, v5, 8 * (v98 - v5));
  }

  return 1;
}

void sub_270277EB8(char **a1, void **a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_2702A6924(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __src = (v9 + 8 * *v10);
      v23 = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_27027788C(__src, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_270278058(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v6 = a3[1];
  v175 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    v165 = OBJC_IVAR___UIObjectCompat_boundingBox;
    v156 = a5;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v166 = v5;
    while (1)
    {
      if (v7 + 1 >= v6)
      {
        v6 = v7 + 1;
      }

      else
      {
        v9 = *a3;
        v10 = *(*a3 + 8 * (v7 + 1));
        v173 = *(*a3 + 8 * v7);
        v11 = v173;
        v174 = v10;
        v12 = v10;
        v13 = v11;
        v163 = sub_270275AD8(&v174, &v173, v156);
        if (v162)
        {

          goto LABEL_92;
        }

        swift_beginAccess();
        v14 = v7 + 2;
        v149 = v7;
        v167 = 8 * v7;
        v15 = (v9 + 8 * v7 + 16);
        v157 = v8;
        v160 = v6;
        while (v6 != v14)
        {
          v17 = *(v15 - 1);
          v16 = *v15;
          v18 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v19 = *&v16[v18];
          v20 = *(v166 + v165);
          v21 = &v19[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v22 = *v21;
          v23 = v21[1];
          v24 = v21[2];
          v25 = v21[3];
          v170 = v16;
          v26 = v17;
          v27 = v19;
          v28 = v20;
          v176.origin.x = v22;
          v176.origin.y = v23;
          v176.size.width = v24;
          v176.size.height = v25;
          MidX = CGRectGetMidX(v176);
          v30 = &v28[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v31 = CGRectGetMidX(*v30);

          v32 = MidX - v31;
          v33 = fabsf(v32);
          v34 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v35 = *&v26[v34];
          v36 = *(v166 + v165);
          v37 = &v35[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v38 = *v37;
          v39 = v37[1];
          v40 = v37[2];
          v41 = v37[3];
          v42 = v35;
          v43 = v36;
          v177.origin.x = v38;
          v177.origin.y = v39;
          v177.size.width = v40;
          v177.size.height = v41;
          v44 = CGRectGetMidX(v177);
          v45 = &v43[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v178 = *v45;
          v6 = v160;
          v46 = CGRectGetMidX(v178);

          v8 = v157;
          v47 = v44 - v46;
          ++v14;
          ++v15;
          if (((v163 ^ (v33 >= fabsf(v47))) & 1) == 0)
          {
            v6 = v14 - 1;
            break;
          }
        }

        v5 = v166;
        v7 = v149;
        if (v163)
        {
          if (v6 < v149)
          {
            goto LABEL_115;
          }

          if (v149 < v6)
          {
            v48 = 8 * v6 - 8;
            v49 = v6;
            v50 = v149;
            do
            {
              if (v50 != --v49)
              {
                v51 = *a3;
                if (!*a3)
                {
                  goto LABEL_118;
                }

                v52 = *(v51 + v167);
                *(v51 + v167) = *(v51 + v48);
                *(v51 + v48) = v52;
              }

              ++v50;
              v48 -= 8;
              v167 += 8;
            }

            while (v50 < v49);
          }
        }
      }

      v53 = a3[1];
      if (v6 >= v53)
      {
        goto LABEL_29;
      }

      if (__OFSUB__(v6, v7))
      {
        goto LABEL_112;
      }

      if (v6 - v7 >= a4)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_113;
      }

      if (v7 + a4 >= v53)
      {
        v54 = a3[1];
      }

      else
      {
        v54 = v7 + a4;
      }

      if (v54 < v7)
      {
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
LABEL_120:

        __break(1u);
        return;
      }

      if (v6 == v54)
      {
LABEL_29:
        v55 = v6;
        if (v6 < v7)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v158 = v8;
        v164 = *a3;
        v108 = *a3 + 8 * v6 - 8;
        v150 = v7;
        v109 = v7 - v6;
        v153 = v54;
        do
        {
          swift_beginAccess();
          v161 = v6;
          v110 = *(v164 + 8 * v6);
          v154 = v109;
          v155 = v108;
          v111 = v109;
          v112 = v108;
          do
          {
            v169 = v111;
            v113 = *v112;
            v114 = OBJC_IVAR___UIObjectCompat_boundingBox;
            swift_beginAccess();
            v115 = *&v110[v114];
            v116 = *(v166 + v165);
            v117 = &v115[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
            swift_beginAccess();
            v118 = *v117;
            v119 = v117[1];
            v120 = v117[2];
            v121 = v117[3];
            v172 = v110;
            v122 = v113;
            v123 = v115;
            v124 = v116;
            v179.origin.x = v118;
            v179.origin.y = v119;
            v179.size.width = v120;
            v179.size.height = v121;
            v125 = CGRectGetMidX(v179);
            v126 = &v124[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
            swift_beginAccess();
            v127 = CGRectGetMidX(*v126);

            v128 = v125 - v127;
            v129 = fabsf(v128);
            v130 = OBJC_IVAR___UIObjectCompat_boundingBox;
            swift_beginAccess();
            v131 = *&v122[v130];
            v132 = *(v166 + v165);
            v5 = &OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
            v133 = &v131[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
            swift_beginAccess();
            v134 = *v133;
            v135 = v133[1];
            v136 = v133[2];
            v137 = v133[3];
            v138 = v131;
            v139 = v132;
            v180.origin.x = v134;
            v180.origin.y = v135;
            v180.size.width = v136;
            v180.size.height = v137;
            v140 = CGRectGetMidX(v180);
            v141 = &v139[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
            swift_beginAccess();
            v142 = CGRectGetMidX(*v141);

            v143 = v140 - v142;
            if (v129 >= fabsf(v143))
            {
              break;
            }

            if (!v164)
            {
              goto LABEL_116;
            }

            v144 = *v112;
            v110 = *(v112 + 8);
            *v112 = v110;
            *(v112 + 8) = v144;
            v112 -= 8;
            v111 = v169 + 1;
          }

          while (v169 != -1);
          v6 = v161 + 1;
          v108 = v155 + 8;
          v109 = v154 - 1;
          v55 = v153;
          v5 = v166;
        }

        while (v161 + 1 != v153);
        v8 = v158;
        v7 = v150;
        if (v153 < v150)
        {
          goto LABEL_111;
        }
      }

      v152 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_270290DEC(0, *(v8 + 2) + 1, 1, v8);
      }

      v57 = *(v8 + 2);
      v56 = *(v8 + 3);
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v8 = sub_270290DEC((v56 > 1), v57 + 1, 1, v8);
      }

      *(v8 + 2) = v58;
      v59 = v8 + 32;
      v60 = &v8[16 * v57 + 32];
      *v60 = v7;
      *(v60 + 1) = v152;
      v175 = v8;
      v168 = *a1;
      if (!*a1)
      {
        goto LABEL_119;
      }

      if (v57)
      {
        while (1)
        {
          v61 = v58 - 1;
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v62 = *(v8 + 4);
            v63 = *(v8 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_49:
            if (v65)
            {
              goto LABEL_102;
            }

            v78 = &v8[16 * v58];
            v80 = *v78;
            v79 = *(v78 + 1);
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_105;
            }

            v84 = &v59[16 * v61];
            v86 = *v84;
            v85 = *(v84 + 1);
            v72 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v72)
            {
              goto LABEL_108;
            }

            if (__OFADD__(v82, v87))
            {
              goto LABEL_109;
            }

            if (v82 + v87 >= v64)
            {
              if (v64 < v87)
              {
                v61 = v58 - 2;
              }

              goto LABEL_70;
            }

            goto LABEL_63;
          }

          v88 = &v8[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v72 = __OFSUB__(v89, v90);
          v82 = v89 - v90;
          v83 = v72;
LABEL_63:
          if (v83)
          {
            goto LABEL_104;
          }

          v91 = &v59[16 * v61];
          v93 = *v91;
          v92 = *(v91 + 1);
          v72 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v72)
          {
            goto LABEL_107;
          }

          if (v94 < v82)
          {
            goto LABEL_3;
          }

LABEL_70:
          if (v61 - 1 >= v58)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
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
            goto LABEL_114;
          }

          v99 = *a3;
          if (!*a3)
          {
            goto LABEL_117;
          }

          v100 = &v59[16 * v61 - 16];
          v101 = *v100;
          v5 = v61;
          v102 = &v59[16 * v61];
          v103 = *(v102 + 1);
          v104 = (v99 + 8 * *v100);
          v171 = (v99 + 8 * *v102);
          v105 = (v99 + 8 * v103);
          v106 = v156;
          sub_27027788C(v104, v171, v105, v168, v106);
          if (v162)
          {

            v175 = v8;
            v5 = v166;
            goto LABEL_92;
          }

          if (v103 < v101)
          {
            goto LABEL_97;
          }

          v107 = *(v8 + 2);
          if (v5 > v107)
          {
            goto LABEL_98;
          }

          *v100 = v101;
          *(v100 + 1) = v103;
          if (v5 >= v107)
          {
            goto LABEL_99;
          }

          v58 = v107 - 1;
          memmove(v102, v102 + 16, 16 * (v107 - 1 - v5));
          *(v8 + 2) = v107 - 1;
          v59 = v8 + 32;
          if (v107 <= 2)
          {
LABEL_3:
            v175 = v8;
            goto LABEL_4;
          }
        }

        v66 = &v59[16 * v58];
        v67 = *(v66 - 8);
        v68 = *(v66 - 7);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_100;
        }

        v71 = *(v66 - 6);
        v70 = *(v66 - 5);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_101;
        }

        v73 = &v8[16 * v58];
        v75 = *v73;
        v74 = *(v73 + 1);
        v72 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v72)
        {
          goto LABEL_103;
        }

        v72 = __OFADD__(v64, v76);
        v77 = v64 + v76;
        if (v72)
        {
          goto LABEL_106;
        }

        if (v77 >= v69)
        {
          v95 = &v59[16 * v61];
          v97 = *v95;
          v96 = *(v95 + 1);
          v72 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v72)
          {
            goto LABEL_110;
          }

          if (v64 < v98)
          {
            v61 = v58 - 2;
          }

          goto LABEL_70;
        }

        goto LABEL_49;
      }

LABEL_4:
      v6 = a3[1];
      v7 = v152;
      v5 = v166;
      if (v152 >= v6)
      {
        goto LABEL_89;
      }
    }
  }

  v145 = a5;
LABEL_89:
  v146 = *a1;
  if (!*a1)
  {
    goto LABEL_120;
  }

  v147 = v5;
  sub_270277EB8(&v175, v146, a3, v147);
  if (v162)
  {

LABEL_92:
  }

  else
  {
  }
}