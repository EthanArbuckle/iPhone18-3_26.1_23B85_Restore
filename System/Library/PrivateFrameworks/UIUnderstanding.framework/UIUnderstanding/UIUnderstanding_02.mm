void sub_270278A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = a3;
    v46 = *a4;
    v47 = OBJC_IVAR___UIObjectCompat_boundingBox;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    swift_beginAccess();
    v44 = v6;
    v45 = v5;
    v8 = *(v46 + 8 * v5);
    v9 = v7;
    while (1)
    {
      v10 = *v6;
      v11 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v12 = *&v8[v11];
      v13 = *(a5 + v47);
      v14 = &v12[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v49 = v8;
      v19 = v10;
      v20 = v12;
      v21 = v13;
      v50.origin.x = v15;
      v50.origin.y = v16;
      v50.size.width = v17;
      v50.size.height = v18;
      MidX = CGRectGetMidX(v50);
      v23 = &v21[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v24 = CGRectGetMidX(*v23);

      v25 = MidX - v24;
      v26 = fabsf(v25);
      v27 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v28 = *&v19[v27];
      v29 = *(a5 + v47);
      v30 = &v28[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      v34 = v30[3];
      v35 = v28;
      v36 = v29;
      v51.origin.x = v31;
      v51.origin.y = v32;
      v51.size.width = v33;
      v51.size.height = v34;
      v37 = CGRectGetMidX(v51);
      v38 = &v36[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v39 = CGRectGetMidX(*v38);

      v40 = v37 - v39;
      if (v26 >= fabsf(v40))
      {
LABEL_4:
        v5 = v45 + 1;
        v6 = v44 + 8;
        --v7;
        if (v45 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v41 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v41;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_270278CCC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_2702B473C();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for UIObject();
        v8 = sub_2702B41DC();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_270278058(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_270278A28(0, v3, 1, a1, v4);
  }
}

void sub_270278E10(uint64_t *a1, void *a2)
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
  sub_270278CCC(v8, v7);

  sub_2702B455C();
}

uint64_t sub_270278EB0(unint64_t a1)
{
  v1 = a1;
  v81 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_104;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  v76 = v1;
  v77 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v5)
      {
        v7 = MEMORY[0x27439C0F0](v4, v1);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_100;
        }

        v7 = *(v1 + 8 * v4 + 32);
      }

      v8 = v7;
      v1 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_99;
      }

      v9 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v10 = vdupq_n_s64(*(*&v8[v9] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label));
      if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_288036498, v10), vceqq_s64(unk_2880364A8, v10)))))
      {
        sub_2702B454C();
        sub_2702B457C();
        v2 = v77;
        sub_2702B458C();
        sub_2702B455C();
      }

      else
      {
      }

      ++v4;
      v23 = v1 == v2;
      v1 = v76;
    }

    while (!v23);
    v3 = v81;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    v11 = sub_2702B45FC();
    if (v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *(v3 + 16);
    if (v11)
    {
LABEL_18:
      v12 = 0;
      v74 = v3 & 0xC000000000000001;
      v71 = v3 + 32;
      v72 = v11;
      v78 = v1 & 0xFFFFFFFFFFFFFF8;
      v79 = v1 & 0xC000000000000001;
      v73 = v3;
      do
      {
        if (v74)
        {
          v13 = MEMORY[0x27439C0F0](v12, v3);
        }

        else
        {
          if (v12 >= *(v3 + 16))
          {
            goto LABEL_103;
          }

          v13 = *(v71 + 8 * v12);
        }

        v80 = v13;
        v14 = __OFADD__(v12, 1);
        v15 = v12 + 1;
        if (v14)
        {
          goto LABEL_101;
        }

        v75 = v15;
        v82 = MEMORY[0x277D84F90];
        v16 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        if (v2)
        {
          v17 = 0;
          do
          {
            if (v79)
            {
              v18 = MEMORY[0x27439C0F0](v17, v1);
            }

            else
            {
              if (v17 >= *(v78 + 16))
              {
                goto LABEL_94;
              }

              v18 = *(v1 + 8 * v17 + 32);
            }

            v19 = v18;
            v20 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
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
              v2 = sub_2702B45FC();
              goto LABEL_3;
            }

            v21 = OBJC_IVAR___UIObjectCompat_detection;
            swift_beginAccess();
            v22 = *(*&v19[v21] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label);
            v23 = qword_2880364D8 == v22 || unk_2880364E0 == v22;
            if (v23)
            {
              v24 = OBJC_IVAR___UIObjectCompat_boundingBox;
              swift_beginAccess();
              v25 = *&v19[v24];
              v26 = *&v80[v16];
              v27 = &v25[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
              swift_beginAccess();
              x = v27->origin.x;
              y = v27->origin.y;
              width = v27->size.width;
              height = v27->size.height;
              v32 = v25;
              v33 = v26;
              v83.origin.x = x;
              v83.origin.y = y;
              v83.size.width = width;
              v83.size.height = height;
              MaxY = CGRectGetMaxY(v83);
              v35 = &v33[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
              swift_beginAccess();
              v36 = CGRectGetMaxY(*v35);
              if (v36 >= MaxY)
              {
                v37 = MaxY;
              }

              else
              {
                v37 = v36;
              }

              MinY = CGRectGetMinY(*v27);
              v39 = CGRectGetMinY(*v35);

              if (MinY > v39)
              {
                v40 = MinY;
              }

              else
              {
                v40 = v39;
              }

              v41 = v37 - v40;
              if (v41 < 0.0)
              {

                v2 = v77;
                goto LABEL_28;
              }

              v2 = v77;
              if (v41 > 0.0)
              {
                sub_2702B454C();
                sub_2702B457C();
                sub_2702B458C();
                sub_2702B455C();
                goto LABEL_28;
              }
            }

LABEL_28:
            ++v17;
          }

          while (v20 != v2);
        }

        if (v82 < 0 || (v82 & 0x4000000000000000) != 0)
        {
          v46 = sub_2702B45FC();
          v42 = MEMORY[0x277D84F90];
          if (v46)
          {
LABEL_52:
            v43 = v80;

            v82 = sub_2702A0370(v44);
            sub_270278E10(&v82, v43);

            v45 = v82;
            goto LABEL_55;
          }
        }

        else
        {
          v42 = MEMORY[0x277D84F90];
          if (*(v82 + 16))
          {
            goto LABEL_52;
          }
        }

        v45 = v42;
LABEL_55:
        v82 = v42;
        if (v45 >> 62)
        {
          v47 = sub_2702B45FC();
          if (v47)
          {
LABEL_57:
            v48 = 0;
            do
            {
              if ((v45 & 0xC000000000000001) != 0)
              {
                v49 = MEMORY[0x27439C0F0](v48, v45);
              }

              else
              {
                if (v48 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_96;
                }

                v49 = *(v45 + 8 * v48 + 32);
              }

              v50 = v49;
              v51 = v48 + 1;
              if (__OFADD__(v48, 1))
              {
                goto LABEL_95;
              }

              v52 = OBJC_IVAR___UIObjectCompat_detection;
              swift_beginAccess();
              if (*(*&v50[v52] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
              {
                sub_2702B454C();
                sub_2702B457C();
                sub_2702B458C();
                sub_2702B455C();
              }

              else
              {
              }

              ++v48;
            }

            while (v51 != v47);
            v53 = v82;
            if (v82 < 0)
            {
              goto LABEL_78;
            }

            goto LABEL_71;
          }
        }

        else
        {
          v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v47)
          {
            goto LABEL_57;
          }
        }

        v53 = v42;
        if (v42 < 0)
        {
          goto LABEL_78;
        }

LABEL_71:
        if ((v53 & 0x4000000000000000) == 0)
        {
          if (*(v53 + 16) <= 0)
          {
            goto LABEL_79;
          }

          goto LABEL_73;
        }

LABEL_78:
        if (sub_2702B45FC() <= 0)
        {
LABEL_79:

          if (v47)
          {
            goto LABEL_80;
          }

          goto LABEL_19;
        }

LABEL_73:
        if ((v53 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x27439C0F0](0, v53);
        }

        else
        {
          if (!*(v53 + 16))
          {
            goto LABEL_102;
          }

          v54 = *(v53 + 32);
        }

        v55 = v54;

        v56 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v57 = (*&v55[v56] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
        swift_beginAccess();
        v58 = *v57;
        v59 = v57[1];

        v60 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v61 = (*&v80[v60] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
        swift_beginAccess();
        *v61 = v58;
        v61[1] = v59;

        if (v47)
        {
LABEL_80:
          v62 = 0;
          v63 = &v80[OBJC_IVAR___UIObjectCompat_groupingInfo];
          v1 = OBJC_IVAR___UIObjectCompat_detection;
          do
          {
            if ((v45 & 0xC000000000000001) != 0)
            {
              v64 = MEMORY[0x27439C0F0](v62, v45);
              v65 = v62 + 1;
              if (__OFADD__(v62, 1))
              {
                goto LABEL_97;
              }
            }

            else
            {
              if (v62 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_98;
              }

              v64 = *(v45 + 8 * v62 + 32);
              v65 = v62 + 1;
              if (__OFADD__(v62, 1))
              {
                goto LABEL_97;
              }
            }

            v82 = *(v63 + 3);
            v66 = v64;

            MEMORY[0x27439BDA0](v67);
            if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2702B41CC();
            }

            sub_2702B41EC();
            *(v63 + 3) = v82;

            v68 = &v66[OBJC_IVAR___UIObjectCompat_groupingInfo];
            if (!*&v66[OBJC_IVAR___UIObjectCompat_groupingInfo])
            {
              *v68 = v80;
              swift_beginAccess();
              *(v68 + 1) = *(*&v80[v1] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label);
              v68[16] = 0;
              v69 = v80;
            }

            ++v62;
          }

          while (v65 != v47);
        }

LABEL_19:

        v3 = v73;
        v12 = v75;
        v1 = v76;
        v2 = v77;
      }

      while (v75 != v72);
    }
  }
}

uint64_t sub_270279714(unint64_t a1)
{
  v71 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2702B45FC())
  {
    v3 = 0;
    v4 = a1 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v5 = MEMORY[0x27439C0F0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v8 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*&v6[v8] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 7)
      {
        sub_2702B454C();
        sub_2702B457C();
        sub_2702B458C();
        sub_2702B455C();
      }

      else
      {
      }

      ++v3;
    }

    while (v7 != i);
    v9 = 0;
    v70 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v4)
      {
        v10 = MEMORY[0x27439C0F0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*&v11[v13] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
      {
        sub_2702B454C();
        sub_2702B457C();
        sub_2702B458C();
        sub_2702B455C();
      }

      else
      {
      }

      ++v9;
      if (v12 == i)
      {
        v14 = v71;
        v15 = v70;
        if ((v70 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_63;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
  {
LABEL_31:
    if ((v15 & 0x4000000000000000) == 0)
    {
      v16 = *(v15 + 16);
      if (v16)
      {
        goto LABEL_33;
      }

      goto LABEL_64;
    }
  }

LABEL_63:
  while (1)
  {
    v16 = sub_2702B45FC();
    if (!v16)
    {
      break;
    }

LABEL_33:
    if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
    {
      v68 = sub_2702B45FC();
    }

    else
    {
      v68 = *(v14 + 16);
    }

    v17 = 0;
    v62 = v15 & 0xC000000000000001;
    v59 = v15 + 32;
    v67 = v14 & 0xC000000000000001;
    v60 = v16;
    v61 = v15;
    v64 = v14;
    while (1)
    {
      if (v62)
      {
        v18 = MEMORY[0x27439C0F0](v17, v15);
      }

      else
      {
        if (v17 >= *(v15 + 16))
        {
          goto LABEL_62;
        }

        v18 = *(v59 + 8 * v17);
      }

      v19 = v18;
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        break;
      }

      v63 = v21;
      if (v68)
      {
        if (v68 < 1)
        {
          goto LABEL_61;
        }

        v22 = OBJC_IVAR___UIObjectCompat_boundingBox;
        v23 = OBJC_IVAR___UIObjectCompat_detection;
        v65 = &v18[OBJC_IVAR___UIObjectCompat_groupingInfo];
        swift_beginAccess();
        v66 = v23;
        swift_beginAccess();
        for (j = 0; j != v68; ++j)
        {
          if (v67)
          {
            v25 = MEMORY[0x27439C0F0](j, v14);
          }

          else
          {
            v25 = *(v14 + 8 * j + 32);
          }

          v26 = v25;
          v27 = *&v19[v22];
          v28 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v29 = *&v26[v28];
          v30 = &v27[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          x = v30->origin.x;
          y = v30->origin.y;
          width = v30->size.width;
          height = v30->size.height;
          v35 = v27;
          v36 = v29;
          v72.origin.x = x;
          v72.origin.y = y;
          v72.size.width = width;
          v72.size.height = height;
          v37 = CGRectGetWidth(v72);
          v38 = v37 * CGRectGetHeight(*v30);
          v39 = &v36[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v40 = CGRectGetWidth(*v39);
          v41 = CGRectGetHeight(*v39);
          v73 = CGRectIntersection(*v30, *v39);
          v42 = v73.origin.x;
          v43 = v73.origin.y;
          v44 = v73.size.width;
          v45 = v73.size.height;
          v46 = CGRectGetWidth(v73);
          v74.origin.x = v42;
          v74.origin.y = v43;
          v74.size.width = v44;
          v74.size.height = v45;
          v47 = CGRectGetHeight(v74);

          if (v38 <= 0.0 || v40 * v41 <= 0.0 || v46 * v47 / v38 < 0.699999988)
          {
          }

          else
          {
            v48 = &v26[OBJC_IVAR___UIObjectCompat_groupingInfo];
            v69 = *&v26[OBJC_IVAR___UIObjectCompat_groupingInfo + 24];
            v49 = v19;

            MEMORY[0x27439BDA0](v50);
            if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2702B41CC();
            }

            sub_2702B41EC();
            *(v48 + 3) = v69;

            v51 = (*&v19[v66] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
            swift_beginAccess();
            v53 = *v51;
            v52 = v51[1];
            v54 = OBJC_IVAR___UIObjectCompat_detection;
            swift_beginAccess();
            v55 = *&v26[v54];
            v56 = &v55[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
            swift_beginAccess();
            *v56 = v53;
            *(v56 + 1) = v52;
            v57 = v55;

            if (*v65)
            {
            }

            else
            {
              *v65 = v26;
              *(v65 + 1) = 7;
              v65[16] = 0;
            }

            v14 = v64;
          }
        }
      }

      v15 = v61;
      v17 = v63;
      if (v63 == v60)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

LABEL_64:
}

uint64_t sub_270279D7C()
{

  v51[0] = sub_2702A0370(v1);
  sub_270275E24(v51, sub_2702762EC, sub_270275FCC);
  v2 = (v51[0] >> 62) & 1;
  v47 = v51[0];
  if ((v51[0] & 0x8000000000000000) != 0)
  {
    LODWORD(v2) = 1;
  }

  v43 = v2;
  if (v2 == 1)
  {
    goto LABEL_31;
  }

  for (i = *(v51[0] + 16); i; i = sub_2702B45FC())
  {
    v0 = 0;
    v4 = v47 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v5 = MEMORY[0x27439C0F0](v0, v47);
      }

      else
      {
        if (v0 >= *(v47 + 16))
        {
          goto LABEL_30;
        }

        v5 = *(v47 + 32 + 8 * v0);
      }

      v6 = v5;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      v44 = v0 + 1;
      v45 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v7 = 0;
      v46 = v6;
      while (1)
      {
        if (v4)
        {
          v8 = MEMORY[0x27439C0F0](v7, v47);
        }

        else
        {
          if (v7 >= *(v47 + 16))
          {
            goto LABEL_28;
          }

          v8 = *(v47 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (v0 < v7)
        {
          v11 = v0;
          v12 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          v13 = *&v9[v12];
          v0 = v11;
          if (*(v13 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 2)
          {
            v14 = *&v6[v45];
            v15 = OBJC_IVAR___UIObjectCompat_boundingBox;
            swift_beginAccess();
            v16 = *&v9[v15];
            v17 = v14;
            v18 = v16;
            v19 = sub_270298280(v18, 0.7);

            v0 = v11;
            v6 = v46;
            if (v19)
            {
              break;
            }
          }
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_7;
        }
      }

      v20 = &v9[OBJC_IVAR___UIObjectCompat_groupingInfo];
      v49 = *&v9[OBJC_IVAR___UIObjectCompat_groupingInfo + 24];
      v6 = v46;

      MEMORY[0x27439BDA0](v21);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2702B41CC();
      }

      sub_2702B41EC();
      *(v20 + 3) = v49;

      v22 = &v6[OBJC_IVAR___UIObjectCompat_groupingInfo];
      if (*&v6[OBJC_IVAR___UIObjectCompat_groupingInfo])
      {
      }

      else
      {
        *v22 = v9;
        *(v22 + 1) = 2;
        v22[16] = 0;
      }

LABEL_7:
      v0 = v44;

      if (v44 == i)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_32:
  v50 = MEMORY[0x277D84F90];
  if (!v43)
  {
    v23 = *(v47 + 16);
    if (v23)
    {
      goto LABEL_34;
    }

LABEL_46:
    v0 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v23 = sub_2702B45FC();
  if (!v23)
  {
    goto LABEL_46;
  }

LABEL_34:
  v24 = 0;
  v25 = (v47 & 0xC000000000000001);
  do
  {
    if (v25)
    {
      v26 = MEMORY[0x27439C0F0](v24, v47);
    }

    else
    {
      if (v24 >= *(v47 + 16))
      {
        goto LABEL_67;
      }

      v26 = *(v47 + 8 * v24 + 32);
    }

    v27 = v26;
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      v29 = sub_2702B45FC();
      if (!v29)
      {
      }

LABEL_50:
      for (j = 0; ; ++j)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x27439C0F0](j, v0);
        }

        else
        {
          if (j >= *(v0 + 16))
          {
            goto LABEL_69;
          }

          v31 = *(v0 + 8 * j + 32);
        }

        v32 = v31;
        v33 = j + 1;
        if (__OFADD__(j, 1))
        {
          goto LABEL_68;
        }

        v34 = &v31[OBJC_IVAR___UIObjectCompat_groupingInfo];
        v35 = *&v31[OBJC_IVAR___UIObjectCompat_groupingInfo + 24];
        if (!(v35 >> 62))
        {
          break;
        }

        v37 = sub_2702B45FC();
        if (!v37)
        {
          v36 = MEMORY[0x277D84F90];
          goto LABEL_58;
        }

        v42 = v25;
        v38 = v37;
        v36 = sub_270274D50(v37, 0);
        swift_bridgeObjectRetain_n();
        sub_2702A0610(v36 + 32, v38, v35);
        v48 = v39;

        v40 = v48 == v38;
        v25 = v42;
        if (!v40)
        {
          __break(1u);
LABEL_72:

          __break(1u);

          __break(1u);
          return result;
        }

LABEL_59:
        v50 = v36;
        sub_270275E24(&v50, sub_27026CC00, sub_27026C834);
        if (v25)
        {
          goto LABEL_72;
        }

        *(v34 + 3) = v50;

        if (v33 == v29)
        {
        }
      }

      v36 = v35 & 0xFFFFFFFFFFFFFF8;

LABEL_58:

      goto LABEL_59;
    }

    v0 = OBJC_IVAR___UIObjectCompat_detection;
    swift_beginAccess();
    if (*(*&v27[v0] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 2)
    {
      sub_2702B454C();
      sub_2702B457C();
      sub_2702B458C();
      v0 = &v50;
      sub_2702B455C();
    }

    else
    {
    }

    ++v24;
  }

  while (v28 != v23);
  v0 = v50;
LABEL_47:

  v25 = 0;
  if ((v0 & 0x8000000000000000) != 0 || (v0 & 0x4000000000000000) != 0)
  {
    goto LABEL_70;
  }

  v29 = *(v0 + 16);
  if (v29)
  {
    goto LABEL_50;
  }
}

uint64_t sub_27027A360(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6544746E65726170 && a2 == 0xEF6E6F6974636574;
  if (v4 || (sub_2702B476C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xEC00000065707954 || (sub_2702B476C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2702B476C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_27027A484(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C87C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270275DD0();
  sub_2702B48CC();
  type metadata accessor for UIObject();
  v9 = 0;
  sub_27027A740(&qword_2807C87C8);
  sub_2702B467C();
  v6 = v8;
  v9 = 1;
  sub_2702628D0();
  sub_2702B467C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8718);
  v9 = 2;
  sub_27027A784(&qword_2807C87D0, &qword_2807C87C8);
  sub_2702B46AC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_27027A740(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIObject();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27027A784(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C8718);
    sub_27027A740(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27027A820()
{
  result = qword_2807C87D8;
  if (!qword_2807C87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C87D8);
  }

  return result;
}

unint64_t sub_27027A878()
{
  result = qword_2807C87E0;
  if (!qword_2807C87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C87E0);
  }

  return result;
}

unint64_t sub_27027A8D0()
{
  result = qword_2807C87E8;
  if (!qword_2807C87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C87E8);
  }

  return result;
}

Swift::String __swiftcall UIType.toString()()
{
  if (qword_2807C8228 != -1)
  {
LABEL_16:
    v12 = v0;
    swift_once();
    v0 = v12;
  }

  v1 = 0;
  v2 = 1 << *(qword_2807CD460 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(qword_2807CD460 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = 0x6E776F6E6B6E55;
  do
  {
    if (!v4)
    {
      while (1)
      {
        v7 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v7 >= v5)
        {
          v10 = 0xE700000000000000;
          goto LABEL_14;
        }

        v4 = *(qword_2807CD460 + 64 + 8 * v7);
        ++v1;
        if (v4)
        {
          v1 = v7;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

    v7 = v1;
LABEL_11:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = v8 | (v7 << 6);
  }

  while (*(*(qword_2807CD460 + 56) + 8 * v9) != v0);
  v6 = *(*(qword_2807CD460 + 48) + 16 * v9);

LABEL_14:
  v11 = v6;
  result._object = v10;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_27027AA5C()
{
  v0 = sub_27025FE70(&unk_288036AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8838);
  result = swift_arrayDestroy();
  qword_2807CD460 = v0;
  return result;
}

uint64_t UIType.init(rawString:)()
{
  sub_2702B409C();

  sub_270264230();
  v0 = sub_2702B440C();
  v2 = v1;

  if (qword_2807C8228 != -1)
  {
    swift_once();
  }

  v3 = qword_2807CD460;
  if (*(qword_2807CD460 + 16))
  {
    v4 = sub_27025E56C(v0, v2);
    v6 = v5;

    if (v6)
    {
      return *(*(v3 + 56) + 8 * v4);
    }
  }

  else
  {
  }

  sub_27027B04C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t UIType.compareWithoutState(_:)(unint64_t a1, unint64_t a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  if (a2 - 12 < 2)
  {
    if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
    {
      return 1;
    }
  }

  else if (a2 <= 1 && a1 < 2)
  {
    return 1;
  }

  return 0;
}

Swift::Bool_optional __swiftcall UIType.isClickable()()
{
  v1 = v0;
  v2 = sub_270260180(&unk_288036720);
  if (*(v2 + 16) && (v3 = sub_270260FAC(v1), (v4 & 1) != 0))
  {
    v5.value = *(*(v2 + 56) + v3);
  }

  else
  {
    v5.value = 0;
  }

  return v5;
}

uint64_t UIType.visualizationColor.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C87F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2702B7910;
  *(inited + 32) = 0;
  *(inited + 40) = sub_2702B3E6C();
  *(inited + 48) = 1;
  *(inited + 56) = sub_2702B3E8C();
  *(inited + 64) = 2;
  *(inited + 72) = sub_2702B3E7C();
  *(inited + 80) = 3;
  *(inited + 88) = sub_2702B3E9C();
  *(inited + 96) = 4;
  *(inited + 104) = sub_2702B3EDC();
  *(inited + 112) = 5;
  *(inited + 120) = sub_2702B3E5C();
  *(inited + 128) = 6;
  *(inited + 136) = sub_2702B3EDC();
  *(inited + 144) = 7;
  *(inited + 152) = sub_2702B3EBC();
  *(inited + 160) = 8;
  *(inited + 168) = sub_2702B3E8C();
  *(inited + 176) = 9;
  *(inited + 184) = sub_2702B3E7C();
  *(inited + 192) = 10;
  *(inited + 200) = sub_2702B3ECC();
  *(inited + 208) = 11;
  *(inited + 216) = sub_2702B3ECC();
  *(inited + 224) = 12;
  *(inited + 232) = sub_2702B3EBC();
  *(inited + 240) = 13;
  *(inited + 248) = sub_2702B3EBC();
  *(inited + 256) = 14;
  *(inited + 264) = sub_2702B3EEC();
  *(inited + 272) = -1;
  *(inited + 280) = sub_2702B3EAC();
  v3 = sub_270260260(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8800);
  swift_arrayDestroy();
  if (v3[2] && (v4 = sub_270260FAC(a1), (v5 & 1) != 0))
  {
    v6 = *(v3[7] + 8 * v4);

    return v6;
  }

  else
  {

    return sub_2702B3EAC();
  }
}

uint64_t sub_27027AEB0()
{
  v1 = *v0;
  sub_2702B487C();
  MEMORY[0x27439C490](v1);
  return sub_2702B48AC();
}

uint64_t sub_27027AF24()
{
  v1 = *v0;
  sub_2702B487C();
  MEMORY[0x27439C490](v1);
  return sub_2702B48AC();
}

uint64_t sub_27027AF78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27027B034(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *sub_27027AFB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_27027B0A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_27027B034(uint64_t result)
{
  if ((result + 1) >= 0x10)
  {
    return 0;
  }

  return result;
}

unint64_t sub_27027B04C()
{
  result = qword_2807C87F0;
  if (!qword_2807C87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C87F0);
  }

  return result;
}

void *sub_27027B0A0(void *a1)
{
  v42 = sub_2702B451C();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2702B3D8C();
  v6 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2702B3D7C();
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2702B48BC();
  if (!v1)
  {
    v41 = v3;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    sub_2702B477C();
    v11 = v10;
    v47 = sub_2702B409C();
    v48 = v12;
    v45 = 95;
    v46 = 0xE100000000000000;
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_270264230();
    v40 = sub_2702B440C();
    v14 = v13;

    if (qword_2807C8228 != -1)
    {
      swift_once();
    }

    v15 = qword_2807CD460;
    if (*(qword_2807CD460 + 16))
    {
      v40 = sub_27025E56C(v40, v14);
      v17 = v16;

      if (v17)
      {

        v9 = *(*(v15 + 56) + 8 * v40);
        (*(v6 + 8))(v8, v51);
        goto LABEL_16;
      }
    }

    else
    {
    }

    sub_27027B04C();
    v18 = swift_allocError();
    swift_willThrow();
    v19 = sub_2702B3D6C();
    v20 = sub_2702B432C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v40 = v11;
      v22 = v5;
      v23 = v21;
      *v21 = 0;
      _os_log_impl(&dword_270253000, v19, v20, "JSON decoder failed to match a string, trying raw Int", v21, 2u);
      v24 = v23;
      v5 = v22;
      MEMORY[0x27439CE00](v24, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v49, v50);
    v25 = sub_2702B478C();
    v26 = sub_27027B034(v25);
    if (v27)
    {
      sub_2702B450C();
      v28 = sub_2702B452C();
      v40 = swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8830) + 48);
      *v30 = &type metadata for UIType;
      v32 = v41;
      v33 = *(v41 + 16);
      v34 = v5;
      v39 = v5;
      v35 = v42;
      v33(&v30[v31], v34, v42);
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84170], v28);
      swift_willThrow();
      v36 = *(v32 + 8);
      v9 = (v32 + 8);
      v36(v39, v35);
      (*(v6 + 8))(v8, v51);

      __swift_destroy_boxed_opaque_existential_1(v49);
      goto LABEL_13;
    }

    v9 = v26;
    (*(v6 + 8))(v8, v51);

LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v9;
  }

  (*(v6 + 8))(v8, v51);
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_27027B638()
{
  result = qword_2807C8808;
  if (!qword_2807C8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8808);
  }

  return result;
}

unint64_t sub_27027B690()
{
  result = qword_2807C8810;
  if (!qword_2807C8810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C8818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8810);
  }

  return result;
}

unint64_t sub_27027B718()
{
  result = qword_2807C8820;
  if (!qword_2807C8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8820);
  }

  return result;
}

unint64_t sub_27027B76C()
{
  result = qword_2807C8828;
  if (!qword_2807C8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8828);
  }

  return result;
}

uint64_t sub_27027B7C0()
{
  v0 = sub_2702B3D8C();
  __swift_allocate_value_buffer(v0, qword_2807CD468);
  __swift_project_value_buffer(v0, qword_2807CD468);
  return sub_2702B3D7C();
}

double sub_27027B844(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 1.0;
  v3 = *(v1 + 16);
  v4 = *(a1 + 16);
  v14 = 0;
  v5 = [v3 computeDistance:&v15 toFeaturePrintObservation:v4 error:&v14];
  v6 = v14;
  if (v5)
  {
    if (v15 <= 2.0)
    {
      v2 = v15;
      v12 = v14;
    }

    else
    {
      sub_27027B9AC();
      swift_allocError();
      *v7 = 3;
      swift_willThrow();
      v8 = v6;
    }
  }

  else
  {
    v9 = v14;
    v10 = sub_2702B3C0C();

    swift_willThrow();
    sub_27027B9AC();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_27027B9AC()
{
  result = qword_2807C8840;
  if (!qword_2807C8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8840);
  }

  return result;
}

void sub_27027BA00(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  sub_27025FBE0(MEMORY[0x277D84F90]);
  v2 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_27027C384();
  v3 = sub_2702B3F7C();

  v4 = [v2 initWithCGImage:a1 options:v3];

  v5 = [objc_allocWithZone(MEMORY[0x277CE2CF8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83A8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2702B7B30;
  *(v6 + 32) = v5;
  sub_27026608C(0, &qword_2807C8848);
  v7 = v5;
  v8 = sub_2702B41AC();

  v18[0] = 0;
  v9 = [v4 performRequests:v8 error:v18];

  if (!v9)
  {
    v15 = v18[0];
    v16 = sub_2702B3C0C();

    swift_willThrow();
    sub_27027B9AC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    return;
  }

  v10 = v18[0];
  v11 = [v7 results];
  if (!v11)
  {

    return;
  }

  v12 = v11;
  sub_27026608C(0, &qword_2807C8850);
  v13 = sub_2702B41BC();

  if (v13 >> 62)
  {
    if (sub_2702B45FC())
    {
      goto LABEL_5;
    }

LABEL_12:

    return;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x27439C0F0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v14 = *(v13 + 32);
  }
}

uint64_t sub_27027BCE0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection);
  v3 = *(a1 + OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_screenshot);
  v4 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v5 = *&v2[v4];
  v6 = v2;
  v7 = v3;
  v8 = v5;
  Width = CGImageGetWidth(v7);
  Height = CGImageGetHeight(v7);
  v11 = &v8[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v12 = CGRectGetWidth(*v11);
  if (v12 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v13 = vcvtd_n_f64_s64(v12, 1uLL);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_56;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v14 = CGRectGetHeight(*v11);
  if (v14 <= -9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v15 = vcvtd_n_f64_s64(v14, 1uLL);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_61;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  MinY = CGRectGetMinY(*v11);
  if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (MinY <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (MinY >= 9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v17 = v15;
  v1 = MinY - v15;
  if (__OFSUB__(MinY, v15))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v18 = CGRectGetMinY(*v11);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v19 = CGRectGetHeight(*v11);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v21 = __OFADD__(v20, v17);
  v22 = (v20 + v17);
  if (v21)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v22 < Height)
  {
    Height = v22;
  }

  MinX = CGRectGetMinX(*v11);
  if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_76;
  }

  if (MinX <= -9.22337204e18)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (MinX >= 9.22337204e18)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v24 = v13;
  v25 = MinX - v13;
  if (__OFSUB__(MinX, v13))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v26 = CGRectGetMinX(*v11);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v27 = CGRectGetWidth(*v11);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v29 = v28 + v24;
  if (__OFADD__(v28, v24))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v30 = v25 & ~(v25 >> 63);
  if (v29 >= Width)
  {
    v29 = Width;
  }

  v21 = __OFSUB__(v29, v30);
  v31 = v29 - v30;
  if (v21)
  {
    goto LABEL_88;
  }

  v32 = v1 & ~(v1 >> 63);
  if (__OFSUB__(Height, v32))
  {
LABEL_89:
    __break(1u);
LABEL_90:
    swift_once();
LABEL_46:
    v36 = sub_2702B3D8C();
    __swift_project_value_buffer(v36, qword_2807CD468);
    v37 = v1;
    v38 = sub_2702B3D6C();
    v39 = sub_2702B431C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v1;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_270253000, v38, v39, "Failed to create VFeature with error %@", v40, 0xCu);
      sub_27026C148(v41);
      MEMORY[0x27439CE00](v41, -1, -1);
      MEMORY[0x27439CE00](v40, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v47.origin.x = v30;
  v47.origin.y = v32;
  v47.size.width = v31;
  v47.size.height = (Height - v32);
  v33 = CGImageCreateWithImageInRect(v7, v47);
  if (!v33)
  {

    return 0;
  }

  Height = v33;
  type metadata accessor for VFeature();
  v34 = swift_allocObject();
  sub_27027BA00(Height);
  if (!v35)
  {
    sub_27027B9AC();
    v1 = swift_allocError();
    *v46 = 1;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    if (qword_2807C8230 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_90;
  }

  v45 = v35;

  result = v34;
  *(v34 + 16) = v45;
  return result;
}

unint64_t sub_27027C384()
{
  result = qword_2807C8368;
  if (!qword_2807C8368)
  {
    type metadata accessor for VNImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetectionResultType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetectionResultType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27027C530()
{
  result = qword_2807C8858;
  if (!qword_2807C8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8858);
  }

  return result;
}

uint64_t sub_27027C584(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F69746365746564;
  v4 = a1;
  v5 = 0x657465446E6F6369;
  v6 = 0xED00006E6F697463;
  v7 = 0x676E69646E756F62;
  v8 = 0xEB00000000786F42;
  if (a1 != 4)
  {
    v7 = 0x676E6970756F7267;
    v8 = 0xEC0000006F666E49;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x7465446B63696C63;
  v10 = 0xEE006E6F69746365;
  if (a1 != 1)
  {
    v9 = 0x7465447375636F66;
    v10 = 0xEE006E6F69746365;
  }

  if (!a1)
  {
    v9 = 0x6F69746365746564;
    v10 = 0xE90000000000006ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xED00006E6F697463;
      if (v11 != 0x657465446E6F6369)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEB00000000786F42;
      if (v11 != 0x676E69646E756F62)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEC0000006F666E49;
      if (v11 != 0x676E6970756F7267)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE006E6F69746365;
        if (v11 != 0x7465446B63696C63)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x7465447375636F66;
      v2 = 0xEE006E6F69746365;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_2702B476C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_27027C7C4()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

uint64_t sub_27027C904()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

id UIObject.__allocating_init(label:confidence:text:boundingBox:children:clickable:focused:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, uint64_t a6, char a7, char a8)
{
  v31 = objc_allocWithZone(v8);
  v16 = type metadata accessor for UIDetection();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v17[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature] = 0;
  *&v17[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label] = a1;
  *&v17[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence] = a5;
  swift_beginAccess();
  *v18 = a2;
  *(v18 + 1) = a3;
  v34.receiver = v17;
  v34.super_class = v16;
  v19 = objc_msgSendSuper2(&v34, sel_init);
  v20 = type metadata accessor for ClickabilityDetection();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = a7;
  *&v21[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = -1;
  *&v21[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = 0;
  v33.receiver = v21;
  v33.super_class = v20;
  v22 = objc_msgSendSuper2(&v33, sel_init);
  v23 = type metadata accessor for FocusDetection();
  v24 = objc_allocWithZone(v23);
  v24[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused] = a8;
  *&v24[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence] = 0;
  v32.receiver = v24;
  v32.super_class = v23;
  v25 = objc_msgSendSuper2(&v32, sel_init);
  type metadata accessor for UIObject();
  v26 = v22;
  v27 = v25;
  v28 = sub_2702B41AC();

  v29 = [v31 initWithDetection:v19 clickable:v26 focused:v27 icon:0 boundingBox:a4 children:v28];

  return v29;
}

uint64_t sub_27027CD98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___UIObjectCompat_id;
  swift_beginAccess();
  v4 = sub_2702B3CEC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_27027CF34(uint64_t a1)
{
  v3 = OBJC_IVAR___UIObjectCompat_id;
  swift_beginAccess();
  v4 = sub_2702B3CEC();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_27027CFC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___UIObjectCompat_id;
  swift_beginAccess();
  v5 = sub_2702B3CEC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_27027D050(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2702B3CEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR___UIObjectCompat_id;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

id sub_27027D214()
{
  v1 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27027D2C8(uint64_t a1)
{
  v3 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_27027D3CC()
{
  v1 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27027D480(uint64_t a1)
{
  v3 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_27027D4D8(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_27027D5E0()
{
  v1 = OBJC_IVAR___UIObjectCompat_iconDetection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_27027D638(uint64_t a1)
{
  v3 = OBJC_IVAR___UIObjectCompat_iconDetection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_27027D73C()
{
  v1 = OBJC_IVAR___UIObjectCompat_clickDetection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_27027D794(uint64_t a1)
{
  v3 = OBJC_IVAR___UIObjectCompat_clickDetection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_27027D898()
{
  v1 = OBJC_IVAR___UIObjectCompat_focusDetection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_27027D8F0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_27027D94C(uint64_t a1)
{
  v3 = OBJC_IVAR___UIObjectCompat_focusDetection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

__n128 sub_27027DA04@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___UIObjectCompat_normalizedSquaredRect;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 sub_27027DA5C(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___UIObjectCompat_normalizedSquaredRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t (*sub_27027DC0C(void *a1))(void *a1)
{
  v2 = OBJC_IVAR___UIObjectCompat_groupingInfo;
  a1[2] = OBJC_IVAR___UIObjectCompat_groupingInfo;
  *a1 = *(v1 + v2 + 24);
  a1[1] = v1;

  return sub_27027DC68;
}

uint64_t sub_27027DCA8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    return *(v5 + *a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27027DD08()
{
  v1 = OBJC_IVAR___UIObjectCompat_iconDetection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return *(v2 + OBJC_IVAR____TtC15UIUnderstanding13IconDetection_label);
  }

  else
  {
    return 0;
  }
}

double sub_27027DD70()
{
  v1 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v2 = *(v0 + v1) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
  swift_beginAccess();
  return *(v2 + 16);
}

double sub_27027DDDC()
{
  v1 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v2 = *(v0 + v1) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_27027DE4C()
{
  v1 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  return *(*(v0 + v1) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label);
}

uint64_t sub_27027DEA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v5 = (*(v3 + v4) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  swift_beginAccess();
  v6 = v5[1];
  *a2 = *v5;
  a2[1] = v6;
}

uint64_t sub_27027DF24(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v6 = (*(v4 + v5) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  swift_beginAccess();
  *v6 = v3;
  v6[1] = v2;
}

uint64_t sub_27027DFB4()
{
  v1 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_27027E030(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v6 = (*(v2 + v5) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void (*sub_27027E0B4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___UIObjectCompat_detection;
  *(v3 + 112) = v1;
  *(v3 + 120) = v5;
  swift_beginAccess();
  v6 = (*(v1 + v5) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 96) = *v6;
  *(v4 + 104) = v7;

  return sub_27027E178;
}

void sub_27027E178(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = (*(*(*a1 + 112) + *(*a1 + 120)) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  if (a2)
  {
    swift_beginAccess();
    *v5 = v3;
    v5[1] = v4;
  }

  else
  {
    swift_beginAccess();
    *v5 = v3;
    v5[1] = v4;
  }

  free(v2);
}

id UIObject.__allocating_init(detection:clickable:focused:icon:boundingBox:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(v6);
  sub_2702B3CDC();
  v12 = OBJC_IVAR___UIObjectCompat_iconDetection;
  *&v11[OBJC_IVAR___UIObjectCompat_iconDetection] = 0;
  v13 = OBJC_IVAR___UIObjectCompat_clickDetection;
  *&v11[OBJC_IVAR___UIObjectCompat_clickDetection] = 0;
  v14 = OBJC_IVAR___UIObjectCompat_focusDetection;
  *&v11[OBJC_IVAR___UIObjectCompat_focusDetection] = 0;
  v15 = &v11[OBJC_IVAR___UIObjectCompat_normalizedSquaredRect];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  *&v11[OBJC_IVAR___UIObjectCompat_detection] = a1;
  swift_beginAccess();
  *&v11[v13] = a2;
  swift_beginAccess();
  *&v11[v14] = a3;
  swift_beginAccess();
  *&v11[v12] = a4;
  *&v11[OBJC_IVAR___UIObjectCompat_boundingBox] = a5;
  v16 = &v11[OBJC_IVAR___UIObjectCompat_groupingInfo];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  *(v16 + 3) = a6;
  v20.receiver = v11;
  v20.super_class = v6;
  return objc_msgSendSuper2(&v20, sel_init);
}

id UIObject.init(detection:clickable:focused:icon:boundingBox:children:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_27028121C(a1, a2, a3, a4, a5, a6);

  return v10;
}

id UIObject.init(label:confidence:text:boundingBox:children:clickable:focused:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, uint64_t a6, char a7, char a8)
{
  v15 = type metadata accessor for UIDetection();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v16[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature] = 0;
  *&v16[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label] = a1;
  *&v16[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence] = a5;
  swift_beginAccess();
  *v17 = a2;
  *(v17 + 1) = a3;
  v33.receiver = v16;
  v33.super_class = v15;
  v18 = objc_msgSendSuper2(&v33, sel_init);
  v19 = type metadata accessor for ClickabilityDetection();
  v20 = objc_allocWithZone(v19);
  v20[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = a7;
  *&v20[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = -1;
  *&v20[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = 0;
  v32.receiver = v20;
  v32.super_class = v19;
  v21 = objc_msgSendSuper2(&v32, sel_init);
  v22 = type metadata accessor for FocusDetection();
  v23 = objc_allocWithZone(v22);
  v23[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused] = a8;
  *&v23[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence] = 0;
  v31.receiver = v23;
  v31.super_class = v22;
  v24 = objc_msgSendSuper2(&v31, sel_init);
  type metadata accessor for UIObject();
  v25 = v21;
  v26 = v24;
  v27 = sub_2702B41AC();

  v28 = [v30 initWithDetection:v18 clickable:v25 focused:v26 icon:0 boundingBox:a4 children:v27];

  return v28;
}

uint64_t sub_27027E79C()
{
  sub_2702B40BC();
}

uint64_t sub_27027E8CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2702811D0();
  *a1 = result;
  return result;
}

void sub_27027E8FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 0x6F69746365746564;
  v5 = 0xED00006E6F697463;
  v6 = 0x657465446E6F6369;
  v7 = 0xEB00000000786F42;
  v8 = 0x676E69646E756F62;
  if (v2 != 4)
  {
    v8 = 0x676E6970756F7267;
    v7 = 0xEC0000006F666E49;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7465446B63696C63;
  if (v2 != 1)
  {
    v9 = 0x7465447375636F66;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xEE006E6F69746365;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_27027E9F4()
{
  v1 = *v0;
  v2 = 0x6F69746365746564;
  v3 = 0x657465446E6F6369;
  v4 = 0x676E69646E756F62;
  if (v1 != 4)
  {
    v4 = 0x676E6970756F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7465446B63696C63;
  if (v1 != 1)
  {
    v5 = 0x7465447375636F66;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_27027EAE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2702811D0();
  *a1 = result;
  return result;
}

uint64_t sub_27027EB1C(uint64_t a1)
{
  v2 = sub_2702819B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27027EB58(uint64_t a1)
{
  v2 = sub_2702819B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static UIObject.nonMaximalSuppressionIOU(boxes:threshold:)(unint64_t a1, float a2)
{
  v2 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
  }

LABEL_3:

  v52[0] = sub_2702A0370(v3);
  sub_2702803A4(v52);
  v54 = v52[0];
  if ((v52[0] & 0x8000000000000000) != 0 || (v52[0] & 0x4000000000000000) != 0)
  {
    if (sub_2702B45FC() < 1)
    {
      goto LABEL_39;
    }

    while (1)
    {
LABEL_6:
      v4 = sub_2702A33D4(0);
      MEMORY[0x27439BDA0]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2702B41CC();
      }

      sub_2702B41EC();
      v5 = v54;
      v43 = v55;
      v53 = v2;
      v6 = v54 >> 62 ? sub_2702B45FC() : *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = OBJC_IVAR___UIObjectCompat_detection;
      v46 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v44 = v7;
      swift_beginAccess();
      if (v6)
      {
        break;
      }

      v41 = v2;
LABEL_27:

      v54 = v41;
      if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
      {
        if (sub_2702B45FC() <= 0)
        {
LABEL_33:

          return v43;
        }
      }

      else if (*(v41 + 16) <= 0)
      {
        goto LABEL_33;
      }
    }

    v8 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x27439C0F0](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        if (sub_2702B45FC() < 1)
        {
        }

        goto LABEL_3;
      }

      v11 = v6;
      v12 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v13 = *&v10[v12];
      v14 = *&v4[v46];
      v15 = &v13[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      v20 = &v14[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v21 = *v20;
      v22 = v20[1];
      v24 = v20[2];
      v23 = v20[3];
      v25 = v13;
      v26 = v14;
      v50 = v17;
      v51 = v16;
      v56.origin.x = v16;
      v56.origin.y = v17;
      v48 = v19;
      v49 = v18;
      v56.size.width = v18;
      v56.size.height = v19;
      v62.origin.x = v21;
      v62.origin.y = v22;
      v62.size.width = v24;
      r2 = v23;
      v62.size.height = v23;
      v57 = CGRectUnion(v56, v62);
      x = v57.origin.x;
      y = v57.origin.y;
      width = v57.size.width;
      height = v57.size.height;
      v31 = CGRectGetHeight(v57);
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      v32 = v31 * CGRectGetWidth(v58);
      if (v32 == 0.0)
      {

        if (a2 >= 0.0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v59.origin.y = v50;
        v59.origin.x = v51;
        v59.size.height = v48;
        v59.size.width = v49;
        v63.origin.x = v21;
        v63.origin.y = v22;
        v63.size.width = v24;
        v63.size.height = r2;
        v60 = CGRectIntersection(v59, v63);
        v33 = v60.origin.x;
        v34 = v60.origin.y;
        v35 = v60.size.width;
        v36 = v60.size.height;
        v37 = CGRectGetHeight(v60);
        v61.origin.x = v33;
        v61.origin.y = v34;
        v61.size.width = v35;
        v61.size.height = v36;
        v38 = CGRectGetWidth(v61);

        v39 = v37 * v38 / v32;
        if (v39 <= a2)
        {
          goto LABEL_12;
        }
      }

      v40 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*&v10[v40] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == *(*&v4[v44] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label))
      {

        goto LABEL_13;
      }

LABEL_12:
      sub_2702B454C();
      sub_2702B457C();
      sub_2702B458C();
      sub_2702B455C();
LABEL_13:
      ++v8;
      v6 = v11;
      if (v2 == v11)
      {
        v41 = v53;
        v2 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }
    }
  }

  if (*(v52[0] + 16) >= 1)
  {
    goto LABEL_6;
  }

LABEL_39:

  return MEMORY[0x277D84F90];
}

double sub_27027F050(double a1)
{
  v3 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v4 = (*(v1 + v3) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  v5 = CGRectGetMinX(*v4) * a1;
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  v6 = round(v5);
  v7 = (*(v1 + v3) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  CGRectGetMinY(*v7);
  v8 = (*(v1 + v3) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  CGRectGetWidth(*v8);
  v9 = (*(v1 + v3) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  CGRectGetHeight(*v9);
  return v6;
}

void sub_27027F1C8(double a1)
{
  v3 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v4 = (*(v1 + v3) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  MinX = CGRectGetMinX(*v4);
  if (MinX < 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = MinX;
  }

  v7 = (*(v1 + v3) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  MinY = CGRectGetMinY(*v7);
  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = (v9 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  MaxX = CGRectGetMaxX(*v12);
  if (MaxX >= v11)
  {
    MaxX = v11;
  }

  v14 = MaxX - v6;
  v15 = *(v1 + v3);
  v16 = v15 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
  swift_beginAccess();
  v17 = *(v16 + 8);
  v18 = (v15 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  MaxY = CGRectGetMaxY(*v18);
  v20 = *(v1 + v3);
  v21 = OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v24 = *(*(v1 + v23) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label);
  v25 = unk_288036470 == v24 || qword_288036468 == v24;
  if (v25 && v22 * a1 < v14)
  {
    v14 = *(v20 + v21);
    v6 = 0.0;
  }

  if (MaxY >= v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = MaxY;
  }

  if (MinY < 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = MinY;
  }

  v28 = v26 - v27;
  v29 = *(v20 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize);
  v30 = *(v20 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize + 8);
  v31 = type metadata accessor for BoundingBox();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  *v33 = v6;
  v33[1] = v27;
  v33[2] = v14;
  v33[3] = v28;
  v34 = &v32[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
  *v34 = v29;
  *(v34 + 1) = v30;
  v37.receiver = v32;
  v37.super_class = v31;
  v35 = objc_msgSendSuper2(&v37, sel_init);
  v36 = *(v1 + v3);
  *(v1 + v3) = v35;
}

uint64_t sub_27027F448()
{
  v1 = OBJC_IVAR___UIObjectCompat_clickDetection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return *(v2 + OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType);
  }

  else
  {
    return -1;
  }
}

uint64_t sub_27027F510()
{
  v1 = v0;
  v2 = OBJC_IVAR___UIObjectCompat_clickDetection;
  swift_beginAccess();
  v53 = v2;
  v3 = *(v1 + v2);
  if (!v3 || *(v3 + OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType) == -1)
  {
    swift_beginAccess();
    v6 = UIType.toString()();
    object = v6._object;
    countAndFlagsBits = v6._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = ClickabilityType.description.getter();
  }

  v7 = countAndFlagsBits;
  v8 = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8740);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2702B74D0;
  v10 = OBJC_IVAR___UIObjectCompat_detection;
  v52 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v11 = *(*(v1 + v10) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
  v12 = MEMORY[0x277D83A80];
  *(v9 + 56) = MEMORY[0x277D839F8];
  *(v9 + 64) = v12;
  *(v9 + 32) = v11;
  v13 = sub_2702B404C();
  v15 = v14;

  sub_2702B44CC();

  MEMORY[0x27439BCF0](v7, v8);

  MEMORY[0x27439BCF0](0x656469666E6F6320, 0xEC0000003A65636ELL);
  MEMORY[0x27439BCF0](v13, v15);

  MEMORY[0x27439BCF0](0x3A7274632029, 0xE600000000000000);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2702B7C20;
  v17 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v18 = *(v1 + v17);
  sub_270297FF8();
  v20 = v19;

  v21 = MEMORY[0x277D85048];
  *(v16 + 56) = MEMORY[0x277D85048];
  v22 = sub_270281960();
  *(v16 + 64) = v22;
  *(v16 + 32) = v20;
  v23 = *(v1 + v17);
  sub_270297FF8();
  v25 = v24;

  *(v16 + 96) = v21;
  *(v16 + 104) = v22;
  *(v16 + 72) = v25;
  v26 = sub_2702B404C();
  v28 = v27;

  MEMORY[0x27439BCF0](v26, v28);

  MEMORY[0x27439BCF0](0x3A657A697320, 0xE600000000000000);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2702B7C20;
  v30 = *(v1 + v17) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
  swift_beginAccess();
  v31 = *(v30 + 16);
  *(v29 + 56) = v21;
  *(v29 + 64) = v22;
  *(v29 + 32) = v31;
  v32 = *(v30 + 24);
  *(v29 + 96) = v21;
  *(v29 + 104) = v22;
  *(v29 + 72) = v32;
  v33 = sub_2702B404C();
  v35 = v34;

  MEMORY[0x27439BCF0](v33, v35);

  v36 = *(v1 + v52);
  if (*(v36 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
  {
    v37 = (v36 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
    swift_beginAccess();
    v38 = v37[1];
    if (v38)
    {
      v39 = *v37;

      MEMORY[0x27439BCF0](v39, v38);

      MEMORY[0x27439BCF0](0x3A52434F20, 0xE500000000000000);
    }
  }

  if (*(*(v1 + v52) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 4)
  {
    v40 = OBJC_IVAR___UIObjectCompat_iconDetection;
    swift_beginAccess();
    if (*(v1 + v40))
    {
      MEMORY[0x27439BCF0](0x203A6E6F636920, 0xE700000000000000);
      v41 = IconLabel.toString()()._countAndFlagsBits;
      MEMORY[0x27439BCF0](v41);

      MEMORY[0x27439BCF0](8236, 0xE200000000000000);
      sub_2702B422C();
      MEMORY[0x27439BCF0](37, 0xE100000000000000);
      MEMORY[0x27439BCF0](0, 0xE000000000000000);
    }
  }

  v42 = *(v1 + v53);
  if (v42)
  {
    v43 = *(v42 + OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable);
    sub_2702B44CC();
    MEMORY[0x27439BCF0](0x62616B63696C6320, 0xEC000000203A656CLL);
    if (v43)
    {
      v44 = 1702195828;
    }

    else
    {
      v44 = 0x65736C6166;
    }

    if (v43)
    {
      v45 = 0xE400000000000000;
    }

    else
    {
      v45 = 0xE500000000000000;
    }

    MEMORY[0x27439BCF0](v44, v45);

    MEMORY[0x27439BCF0](8236, 0xE200000000000000);
    sub_2702B422C();
    MEMORY[0x27439BCF0](37, 0xE100000000000000);
    MEMORY[0x27439BCF0](0, 0xE000000000000000);
  }

  v46 = OBJC_IVAR___UIObjectCompat_focusDetection;
  swift_beginAccess();
  v47 = *(v1 + v46);
  if (v47)
  {
    v48 = *(v47 + OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused);
    sub_2702B44CC();
    MEMORY[0x27439BCF0](0x64657375636F6620, 0xEA0000000000203ALL);
    if (v48)
    {
      v49 = 1702195828;
    }

    else
    {
      v49 = 0x65736C6166;
    }

    if (v48)
    {
      v50 = 0xE400000000000000;
    }

    else
    {
      v50 = 0xE500000000000000;
    }

    MEMORY[0x27439BCF0](v49, v50);

    MEMORY[0x27439BCF0](8236, 0xE200000000000000);
    sub_2702B422C();
    MEMORY[0x27439BCF0](37, 0xE100000000000000);
    MEMORY[0x27439BCF0](0, 0xE000000000000000);
  }

  MEMORY[0x27439BCF0](125, 0xE100000000000000);
  return 31522;
}

id UIObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27027FE04(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8868);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2702819B4();
  sub_2702B48DC();
  v9 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  *&v17 = *(v3 + v9);
  v24 = 0;
  type metadata accessor for UIDetection();
  sub_270282A14(&qword_2807C8878, type metadata accessor for UIDetection);
  sub_2702B471C();
  if (!v2)
  {
    v10 = OBJC_IVAR___UIObjectCompat_clickDetection;
    swift_beginAccess();
    *&v17 = *(v3 + v10);
    v23 = 1;
    type metadata accessor for ClickabilityDetection();
    sub_270282A14(&qword_2807C8880, type metadata accessor for ClickabilityDetection);
    sub_2702B46BC();
    v11 = OBJC_IVAR___UIObjectCompat_focusDetection;
    swift_beginAccess();
    *&v17 = *(v3 + v11);
    v22 = 2;
    type metadata accessor for FocusDetection();
    sub_270282A14(&qword_2807C8888, type metadata accessor for FocusDetection);
    sub_2702B46BC();
    v12 = OBJC_IVAR___UIObjectCompat_iconDetection;
    swift_beginAccess();
    *&v17 = *(v3 + v12);
    v21 = 3;
    type metadata accessor for IconDetection();
    sub_270282A14(&qword_2807C8890, type metadata accessor for IconDetection);
    sub_2702B46BC();
    v13 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    *&v17 = *(v3 + v13);
    v20 = 4;
    type metadata accessor for BoundingBox();
    sub_270282A14(&qword_2807C8898, type metadata accessor for BoundingBox);
    sub_2702B471C();
    v14 = *(v3 + OBJC_IVAR___UIObjectCompat_groupingInfo + 16);
    v15 = *(v3 + OBJC_IVAR___UIObjectCompat_groupingInfo + 24);
    v17 = *(v3 + OBJC_IVAR___UIObjectCompat_groupingInfo);
    v18 = v14;
    v19 = v15;
    v20 = 5;
    sub_270281A08();
    sub_2702B471C();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_270280258@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_270281374(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2702802A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___UIObjectCompat_id;
  swift_beginAccess();
  v5 = sub_2702B3CEC();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

UIUnderstanding::DetectionResultType_optional __swiftcall DetectionResultType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t type metadata accessor for UIObject()
{
  result = qword_2807C88B0;
  if (!qword_2807C88B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2702803A4(uint64_t *a1)
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
  v21 = v2 + 32;
  v25[0] = v2 + 32;
  v25[1] = v4;
  v5 = sub_2702B473C();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v21;
      v20 = v4;
      do
      {
        v11 = *(v21 + 8 * v9);
        v22 = v8;
        v12 = v10;
        do
        {
          v13 = *v12;
          v14 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          v15 = *(*(v11 + v14) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
          v16 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          if (*(*(v13 + v16) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) >= v15)
          {
            break;
          }

          v17 = *v12;
          v11 = v12[1];
          *v12 = v11;
          v12[1] = v17;
          --v12;
        }

        while (!__CFADD__(v8++, 1));
        ++v9;
        ++v10;
        v8 = v22 - 1;
      }

      while (v9 != v20);
    }
  }

  else
  {
    v6 = v5;
    if (v4 >= 2)
    {
      type metadata accessor for UIObject();
      v7 = sub_2702B41DC();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v24[0] = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v24[1] = v4 >> 1;
    sub_27028057C(v24, v23, v25, v6);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_2702B455C();
}

uint64_t sub_27028057C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v120 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_124:
    v4 = *v120;
    if (*v120)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v132 = v6;
      v9 = *(*a3 + 8 * v8);
      v10 = 8 * v5;
      v11 = (*a3 + 8 * v5);
      v13 = *v11;
      v12 = v11 + 2;
      v14 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v15 = *(*(v9 + v14) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
      v16 = OBJC_IVAR___UIObjectCompat_detection;
      result = swift_beginAccess();
      v17 = *(*(v13 + v16) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
      v18 = (v7 + 2);
      while (v4 != v18)
      {
        v20 = *(v12 - 1);
        v19 = *v12;
        v21 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v22 = *(*(v19 + v21) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
        v23 = OBJC_IVAR___UIObjectCompat_detection;
        result = swift_beginAccess();
        ++v18;
        ++v12;
        if (v17 < v15 == *(*(v20 + v23) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) >= v22)
        {
          v4 = (v18 - 1);
          break;
        }
      }

      v6 = v132;
      if (v17 < v15)
      {
        if (v4 < v7)
        {
          goto LABEL_153;
        }

        if (v7 < v4)
        {
          v24 = 8 * v4 - 8;
          v25 = v4;
          v26 = v7;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_159;
              }

              v28 = *(v27 + v10);
              *(v27 + v10) = *(v27 + v24);
              *(v27 + v24) = v28;
            }

            ++v26;
            v24 -= 8;
            v10 += 8;
          }

          while (v26 < v25);
        }
      }

      v8 = v4;
    }

    v29 = a3[1];
    if (v8 < v29)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_152;
      }

      if (v8 - v7 < a4)
      {
        v30 = (v7 + a4);
        if (__OFADD__(v7, a4))
        {
          goto LABEL_154;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v7)
        {
          goto LABEL_155;
        }

        if (v8 != v30)
        {
          v130 = v7;
          v133 = v6;
          v31 = *a3;
          v6 = (*a3 + 8 * v8 - 8);
          v32 = v7 - v8;
          v135 = v30;
          do
          {
            v123 = v8;
            v33 = *(v31 + 8 * v8);
            v34 = v32;
            v35 = v6;
            do
            {
              v36 = *v35;
              v4 = &unk_2807CD000;
              v37 = OBJC_IVAR___UIObjectCompat_detection;
              swift_beginAccess();
              v38 = *(*(v33 + v37) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
              v39 = OBJC_IVAR___UIObjectCompat_detection;
              swift_beginAccess();
              if (*(*(v36 + v39) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) >= v38)
              {
                break;
              }

              if (!v31)
              {
                goto LABEL_156;
              }

              v40 = *v35;
              v33 = *(v35 + 1);
              *v35 = v33;
              *(v35 + 1) = v40;
              v35 -= 8;
            }

            while (!__CFADD__(v34++, 1));
            v8 = v123 + 1;
            v6 += 8;
            --v32;
          }

          while ((v123 + 1) != v135);
          v8 = v135;
          v7 = v130;
          v6 = v133;
        }
      }
    }

    if (v8 < v7)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v124 = v8;
    if ((result & 1) == 0)
    {
      result = sub_270290DEC(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
    }

    v43 = *(v6 + 2);
    v42 = *(v6 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_270290DEC((v42 > 1), v43 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v44;
    v45 = &v6[16 * v43];
    *(v45 + 4) = v7;
    *(v45 + 5) = v124;
    v46 = *v120;
    if (!*v120)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v43)
    {
      break;
    }

LABEL_3:
    v4 = a3[1];
    v5 = v124;
    if (v124 >= v4)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v47 = v44 - 1;
    if (v44 >= 4)
    {
      v52 = &v6[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_138;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_139;
      }

      v59 = &v6[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_141;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_144;
      }

      if (v63 >= v55)
      {
        v81 = &v6[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_148;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

    if (v44 == 3)
    {
      v48 = *(v6 + 4);
      v49 = *(v6 + 5);
      v58 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      v51 = v58;
LABEL_55:
      if (v51)
      {
        goto LABEL_140;
      }

      v64 = &v6[16 * v44];
      v66 = *v64;
      v65 = *(v64 + 1);
      v67 = __OFSUB__(v65, v66);
      v68 = v65 - v66;
      v69 = v67;
      if (v67)
      {
        goto LABEL_143;
      }

      v70 = &v6[16 * v47 + 32];
      v72 = *v70;
      v71 = *(v70 + 1);
      v58 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v58)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v68, v73))
      {
        goto LABEL_147;
      }

      if (v68 + v73 >= v50)
      {
        if (v50 < v73)
        {
          v47 = v44 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    v74 = &v6[16 * v44];
    v76 = *v74;
    v75 = *(v74 + 1);
    v58 = __OFSUB__(v75, v76);
    v68 = v75 - v76;
    v69 = v58;
LABEL_69:
    if (v69)
    {
      goto LABEL_142;
    }

    v77 = &v6[16 * v47];
    v79 = *(v77 + 4);
    v78 = *(v77 + 5);
    v58 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if (v58)
    {
      goto LABEL_145;
    }

    if (v80 < v68)
    {
      goto LABEL_3;
    }

LABEL_76:
    if (v47 - 1 >= v44)
    {
      break;
    }

    v85 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v131 = v47;
    v134 = v6;
    v127 = v47 - 1;
    v86 = *&v6[16 * v47 + 16];
    v87 = *&v6[16 * v47 + 32];
    v128 = *&v6[16 * v47 + 40];
    v129 = v86;
    v88 = 8 * v86;
    v89 = (v85 + 8 * v86);
    v90 = 8 * v87;
    v91 = (v85 + 8 * v87);
    v92 = (v85 + 8 * v128);
    v93 = 8 * v87 - 8 * v86;
    v94 = 8 * v128 - 8 * v87;
    if (v93 >= v94)
    {
      v102 = (v85 + 8 * v87);
      if (v91 != v46 || v92 <= v46)
      {
        memmove(v46, (v85 + 8 * v87), 8 * v128 - 8 * v87);
      }

      v136 = &v46[v94];
      if (v94 < 1 || v90 <= v88)
      {
        v6 = v46;
        v112 = v91;
      }

      else
      {
        v122 = v89;
        do
        {
          __dst = v102;
          v103 = v102 - 8;
          v92 -= 8;
          v104 = v136;
          while (1)
          {
            v105 = v92 + 8;
            v106 = *(v104 - 1);
            v104 -= 8;
            v107 = v103;
            v108 = *v103;
            v109 = OBJC_IVAR___UIObjectCompat_detection;
            swift_beginAccess();
            v110 = *(*(v106 + v109) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
            v111 = OBJC_IVAR___UIObjectCompat_detection;
            swift_beginAccess();
            if (*(*(v108 + v111) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) < v110)
            {
              break;
            }

            if (v105 != v136)
            {
              *v92 = *v104;
            }

            v92 -= 8;
            v136 = v104;
            v103 = v107;
            if (v104 <= v46)
            {
              v136 = v104;
              v6 = v46;
              v112 = __dst;
              goto LABEL_114;
            }
          }

          v112 = v107;
          if (v105 != __dst)
          {
            *v92 = *v107;
          }

          v6 = v46;
          if (v136 <= v46)
          {
            break;
          }

          v102 = v107;
        }

        while (v122 < v107);
      }
    }

    else
    {
      if (v89 != v46 || v91 <= v46)
      {
        memmove(v46, (v85 + 8 * v86), 8 * v87 - 8 * v86);
      }

      v136 = &v46[v93];
      if (v93 >= 1 && 8 * v128 > v90)
      {
        v6 = v46;
        while (1)
        {
          v95 = *v91;
          v96 = *v6;
          v97 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          v98 = *(*(v95 + v97) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
          v99 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          if (*(*(v96 + v99) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) >= v98)
          {
            break;
          }

          v100 = v91;
          v101 = v89 == v91;
          v91 += 8;
          if (!v101)
          {
            goto LABEL_90;
          }

LABEL_91:
          v89 += 8;
          if (v6 >= v136 || v91 >= v92)
          {
            goto LABEL_111;
          }
        }

        v100 = v6;
        v101 = v89 == v6;
        v6 += 8;
        if (v101)
        {
          goto LABEL_91;
        }

LABEL_90:
        *v89 = *v100;
        goto LABEL_91;
      }

      v6 = v46;
LABEL_111:
      v112 = v89;
    }

LABEL_114:
    if (v112 != v6 || v112 >= &v6[(v136 - v6 + (v136 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v112, v6, 8 * ((v136 - v6) / 8));
    }

    v4 = v129;
    if (v128 < v129)
    {
      goto LABEL_136;
    }

    v113 = v134;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = sub_2702A6924(v134);
    }

    if (v131 > *(v113 + 2))
    {
      goto LABEL_137;
    }

    v114 = &v113[16 * v127];
    *(v114 + 4) = v129;
    *(v114 + 5) = v128;
    result = sub_2702A6898(v131);
    v6 = v113;
    v44 = *(v113 + 2);
    if (v44 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = sub_2702A6924(v6);
  v6 = result;
LABEL_126:
  v115 = *(v6 + 2);
  if (v115 < 2)
  {
  }

  while (*a3)
  {
    v116 = *&v6[16 * v115];
    v117 = *&v6[16 * v115 + 24];
    sub_270280EC4((*a3 + 8 * v116), (*a3 + 8 * *&v6[16 * v115 + 16]), (*a3 + 8 * v117), v4);
    if (v121)
    {
    }

    if (v117 < v116)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2702A6924(v6);
    }

    if (v115 - 2 >= *(v6 + 2))
    {
      goto LABEL_151;
    }

    v118 = &v6[16 * v115];
    *v118 = v116;
    *(v118 + 1) = v117;
    result = sub_2702A6898(v115 - 1);
    v115 = *(v6 + 2);
    if (v115 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_270280EC4(char *__dst, char *__src, char *a3, char *a4)
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
    v23 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v23 > v6)
    {
      v37 = v6;
LABEL_27:
      v38 = v23;
      v24 = v23 - 8;
      v25 = v5 - 8;
      v26 = v14;
      do
      {
        v27 = v14;
        v28 = v25;
        v29 = v25 + 8;
        v30 = *(v26 - 1);
        v26 -= 8;
        v31 = v24;
        v32 = *v24;
        v33 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v34 = *(*(v30 + v33) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
        v35 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*(v32 + v35) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) < v34)
        {
          v5 = v28;
          if (v29 != v38)
          {
            *v28 = *v31;
          }

          v14 = v27;
          if (v27 <= v4 || (v23 = v31, v31 <= v37))
          {
            v23 = v31;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v29 != v27)
        {
          *v28 = *v26;
        }

        v25 = v28 - 8;
        v14 = v26;
        v24 = v31;
      }

      while (v26 > v4);
      v14 = v26;
      v23 = v38;
    }
  }

  else
  {
    v13 = __src;
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = v5;
        v16 = *v13;
        v17 = *v4;
        v18 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v19 = *(*(v16 + v18) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
        v20 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*(v17 + v20) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) >= v19)
        {
          break;
        }

        v21 = v13;
        v22 = v6 == v13;
        v13 += 8;
        if (!v22)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 8;
        if (v4 < v14)
        {
          v5 = v15;
          if (v13 < v15)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v21 = v4;
      v22 = v6 == v4;
      v4 += 8;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v21;
      goto LABEL_17;
    }

LABEL_19:
    v23 = v6;
  }

LABEL_38:
  if (v23 != v4 || v23 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v23, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_2702811D0()
{
  v0 = sub_2702B465C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

id sub_27028121C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_2702B3CDC();
  v12 = OBJC_IVAR___UIObjectCompat_iconDetection;
  *&v6[OBJC_IVAR___UIObjectCompat_iconDetection] = 0;
  v13 = OBJC_IVAR___UIObjectCompat_clickDetection;
  *&v6[OBJC_IVAR___UIObjectCompat_clickDetection] = 0;
  v14 = OBJC_IVAR___UIObjectCompat_focusDetection;
  *&v6[OBJC_IVAR___UIObjectCompat_focusDetection] = 0;
  v15 = &v6[OBJC_IVAR___UIObjectCompat_normalizedSquaredRect];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  *&v6[OBJC_IVAR___UIObjectCompat_detection] = a1;
  swift_beginAccess();
  *&v6[v13] = a2;
  swift_beginAccess();
  *&v6[v14] = a3;
  swift_beginAccess();
  *&v6[v12] = a4;
  *&v6[OBJC_IVAR___UIObjectCompat_boundingBox] = a5;
  v16 = &v6[OBJC_IVAR___UIObjectCompat_groupingInfo];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  *(v16 + 3) = a6;
  v23.receiver = v6;
  v23.super_class = type metadata accessor for UIObject();
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  return objc_msgSendSuper2(&v23, sel_init);
}

void *sub_270281374(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C88D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2702819B4();
  sub_2702B48CC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for UIDetection();
    v25 = 0;
    sub_270282A14(&qword_2807C88E0, type metadata accessor for UIDetection);
    sub_2702B46AC();
    v8 = v26;
    type metadata accessor for ClickabilityDetection();
    v25 = 1;
    sub_270282A14(&qword_2807C88E8, type metadata accessor for ClickabilityDetection);
    sub_2702B467C();
    v9 = v26;
    type metadata accessor for FocusDetection();
    v25 = 2;
    sub_270282A14(&qword_2807C88F0, type metadata accessor for FocusDetection);
    sub_2702B467C();
    v10 = v26;
    type metadata accessor for IconDetection();
    v25 = 3;
    sub_270282A14(&qword_2807C88F8, type metadata accessor for IconDetection);
    sub_2702B467C();
    v28 = v26;
    type metadata accessor for BoundingBox();
    v25 = 4;
    sub_270282A14(&qword_2807C8900, type metadata accessor for BoundingBox);
    sub_2702B46AC();
    v23 = v26;
    v25 = 5;
    sub_270282A5C();
    sub_2702B467C();
    v22 = v10;
    if (v27)
    {
      v21 = v27;
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v20 = type metadata accessor for UIObject();
    v12 = objc_allocWithZone(v20);
    sub_2702B3CDC();
    v19 = OBJC_IVAR___UIObjectCompat_iconDetection;
    *&v12[OBJC_IVAR___UIObjectCompat_iconDetection] = 0;
    v13 = OBJC_IVAR___UIObjectCompat_clickDetection;
    *&v12[OBJC_IVAR___UIObjectCompat_clickDetection] = 0;
    v18 = OBJC_IVAR___UIObjectCompat_focusDetection;
    *&v12[OBJC_IVAR___UIObjectCompat_focusDetection] = 0;
    v14 = &v12[OBJC_IVAR___UIObjectCompat_normalizedSquaredRect];
    *v14 = 0u;
    *(v14 + 1) = 0u;
    v14[32] = 1;
    *&v12[OBJC_IVAR___UIObjectCompat_detection] = v8;
    swift_beginAccess();
    *&v12[v13] = v9;
    v15 = v18;
    swift_beginAccess();
    *&v12[v15] = v22;
    v16 = v19;
    swift_beginAccess();
    *&v12[v16] = v28;
    *&v12[OBJC_IVAR___UIObjectCompat_boundingBox] = v23;
    v17 = &v12[OBJC_IVAR___UIObjectCompat_groupingInfo];
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = 1;
    *(v17 + 3) = v21;
    v24.receiver = v12;
    v24.super_class = v20;
    v7 = objc_msgSendSuper2(&v24, sel_init);
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_270281960()
{
  result = qword_2807C8860;
  if (!qword_2807C8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8860);
  }

  return result;
}

unint64_t sub_2702819B4()
{
  result = qword_2807C8870;
  if (!qword_2807C8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8870);
  }

  return result;
}

unint64_t sub_270281A08()
{
  result = qword_2807C88A0;
  if (!qword_2807C88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C88A0);
  }

  return result;
}

unint64_t sub_270281AA8()
{
  result = qword_2807C88A8;
  if (!qword_2807C88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C88A8);
  }

  return result;
}

id keypath_get_1Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

__n128 sub_270281C44@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___UIObjectCompat_normalizedSquaredRect;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_270281CA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + OBJC_IVAR___UIObjectCompat_normalizedSquaredRect;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_270281D20(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR___UIObjectCompat_groupingInfo + 24) = *a1;
}

uint64_t sub_270281D80()
{
  result = sub_2702B3CEC();
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

uint64_t dispatch thunk of UIObject.normalizedSquaredRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x128);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of UIObject.getPixelRect(screenWidth:screenHeight:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x1C0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x1C8))();
}

uint64_t getEnumTagSinglePayload for UIObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UIObject.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_270282910()
{
  result = qword_2807C88C0;
  if (!qword_2807C88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C88C0);
  }

  return result;
}

unint64_t sub_270282968()
{
  result = qword_2807C88C8;
  if (!qword_2807C88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C88C8);
  }

  return result;
}

unint64_t sub_2702829C0()
{
  result = qword_2807C88D0;
  if (!qword_2807C88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C88D0);
  }

  return result;
}

uint64_t sub_270282A14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_270282A5C()
{
  result = qword_2807C8908;
  if (!qword_2807C8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8908);
  }

  return result;
}

id IconDetection.__allocating_init(label:confidence:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC15UIUnderstanding13IconDetection_label] = a1;
  *&v5[OBJC_IVAR____TtC15UIUnderstanding13IconDetection_confidence] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id IconDetection.init(label:confidence:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR____TtC15UIUnderstanding13IconDetection_label] = a1;
  *&v2[OBJC_IVAR____TtC15UIUnderstanding13IconDetection_confidence] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IconDetection();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_270282CA8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270283538();
  sub_2702B48DC();
  v11 = *(v3 + OBJC_IVAR____TtC15UIUnderstanding13IconDetection_label);
  v10[7] = 0;
  sub_27028358C();
  sub_2702B471C();
  if (!v2)
  {
    v10[6] = 1;
    sub_2702B46EC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_270282E50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E656469666E6F63;
  }

  else
  {
    v3 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA00000000006563;
  }

  if (*a2)
  {
    v5 = 0x6E656469666E6F63;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006563;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2702B476C();
  }

  return v8 & 1;
}

uint64_t sub_270282EF8()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

uint64_t sub_270282F7C()
{
  sub_2702B40BC();
}

uint64_t sub_270282FEC()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

uint64_t sub_27028306C@<X0>(char *a1@<X8>)
{
  v2 = sub_2702B465C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_2702830CC(uint64_t *a1@<X8>)
{
  v2 = 0x6C6562616CLL;
  if (*v1)
  {
    v2 = 0x6E656469666E6F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006563;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_27028310C()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_270283148@<X0>(char *a1@<X8>)
{
  v2 = sub_2702B465C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2702831AC(uint64_t a1)
{
  v2 = sub_270283538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2702831E8(uint64_t a1)
{
  v2 = sub_270283538();

  return MEMORY[0x2821FE720](a1, v2);
}

id IconDetection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IconDetection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconDetection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2702832EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_27028333C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_27028333C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8950);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270283538();
  sub_2702B48CC();
  if (!v1)
  {
    v16 = 0;
    sub_2702837C8();
    sub_2702B46AC();
    v8 = v17;
    LOBYTE(v17) = 1;
    sub_2702B469C();
    v11 = v10;
    v12 = type metadata accessor for IconDetection();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC15UIUnderstanding13IconDetection_label] = v8;
    *&v13[OBJC_IVAR____TtC15UIUnderstanding13IconDetection_confidence] = v11;
    v15.receiver = v13;
    v15.super_class = v12;
    v7 = objc_msgSendSuper2(&v15, sel_init);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_270283538()
{
  result = qword_2807C8928;
  if (!qword_2807C8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8928);
  }

  return result;
}

unint64_t sub_27028358C()
{
  result = qword_2807C8930;
  if (!qword_2807C8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8930);
  }

  return result;
}

unint64_t sub_2702836C4()
{
  result = qword_2807C8938;
  if (!qword_2807C8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8938);
  }

  return result;
}

unint64_t sub_27028371C()
{
  result = qword_2807C8940;
  if (!qword_2807C8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8940);
  }

  return result;
}

unint64_t sub_270283774()
{
  result = qword_2807C8948;
  if (!qword_2807C8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8948);
  }

  return result;
}

unint64_t sub_2702837C8()
{
  result = qword_2807C8958;
  if (!qword_2807C8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8958);
  }

  return result;
}

uint64_t sub_27028381C()
{
  v0 = sub_27025F8EC(&unk_288035DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8970);
  result = swift_arrayDestroy();
  qword_2807CD4C0 = v0;
  return result;
}

unint64_t sub_270283878()
{
  result = sub_27025FA00(&unk_288035E98);
  qword_2807CD4C8 = result;
  return result;
}

uint64_t sub_2702838A0()
{
  if (qword_2807C8240 != -1)
  {
    swift_once();
  }

  if (*(qword_2807CD4C8 + 16))
  {
    sub_270260FA8();
  }

  v0 = sub_2702B474C();
  MEMORY[0x27439BCF0](v0);

  return 0;
}

uint64_t sub_270283964(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_2702839C4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_270283A10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_270283AF0()
{
  sub_2702B44CC();

  if (qword_2807C8238 != -1)
  {
    swift_once();
  }

  v0 = 0x6E776F6E6B6E55;
  v1 = qword_2807CD4C0;
  if (*(qword_2807CD4C0 + 16) && (v2 = sub_270260FA8(), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 16 * v2);
    v0 = *v4;
    v5 = v4[1];
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  MEMORY[0x27439BCF0](v0, v5);

  MEMORY[0x27439BCF0](0x6E6565726353202CLL, 0xEA0000000000203ALL);
  v6 = sub_2702838A0();
  MEMORY[0x27439BCF0](v6);

  MEMORY[0x27439BCF0](0x6F6973726556202CLL, 0xEB00000000203A6ELL);
  v7 = sub_2702B474C();
  MEMORY[0x27439BCF0](v7);

  return 0x203A6C65646F4DLL;
}

uint64_t UIUnderstandingModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_270283CE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t getEnumTagSinglePayload for ScreenShape(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_270283F3C()
{
  result = qword_2807C8960;
  if (!qword_2807C8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8960);
  }

  return result;
}

unint64_t sub_270283F94()
{
  result = qword_2807C8968;
  if (!qword_2807C8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8968);
  }

  return result;
}

uint64_t sub_270283FE8(uint64_t a1, uint64_t a2)
{
  if (qword_2807C8238 != -1)
  {
LABEL_19:
    swift_once();
  }

  v4 = 0;
  v5 = qword_2807CD4C0;
  v6 = 1 << *(qword_2807CD4C0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = qword_2807CD4C0 + 64;
  v9 = v7 & *(qword_2807CD4C0 + 64);
  v10 = (v6 + 63) >> 6;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v11 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          return 5;
        }

        v9 = *(v8 + 8 * v11);
        ++v4;
        if (v9)
        {
          v4 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_10:
    v12 = __clz(__rbit64(v9)) | (v4 << 6);
    v13 = *(*(v5 + 48) + v12);
    v14 = (*(v5 + 56) + 16 * v12);
    if (*v14 == a1 && v14[1] == a2)
    {
      break;
    }

    v9 &= v9 - 1;
  }

  while ((sub_2702B476C() & 1) == 0);
  return v13;
}

uint64_t sub_270284108(uint64_t a1)
{
  if (qword_2807C8240 != -1)
  {
LABEL_15:
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = 0;
  v2 = 1 << *(qword_2807CD4C8 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(qword_2807CD4C8 + 64);
  v5 = (v2 + 63) >> 6;
  do
  {
    if (!v4)
    {
      while (1)
      {
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v6 >= v5)
        {
          return 4;
        }

        v4 = *(qword_2807CD4C8 + 64 + 8 * v6);
        ++v1;
        if (v4)
        {
          v1 = v6;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    v6 = v1;
LABEL_11:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v8 = v7 | (v6 << 6);
  }

  while (*(*(qword_2807CD4C8 + 56) + 8 * v8) != a1);
  return *(*(qword_2807CD4C8 + 48) + v8);
}

uint64_t sub_270284200(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_27025E56C(0x7079546C65646F4DLL, 0xE900000000000065), (v3 & 1) != 0) && (sub_2702705C0(*(a1 + 56) + 32 * v2, v20), (swift_dynamicCast() & 1) != 0))
  {
    v4 = sub_270283FE8(v18, v19);

    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 5;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  v5 = sub_27025E56C(0x655674616D726F46, 0xED00006E6F697372);
  if ((v6 & 1) == 0 || (sub_2702705C0(*(a1 + 56) + 32 * v5, v20), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    v7 = 4;
    if (*(a1 + 16))
    {
      goto LABEL_12;
    }

LABEL_10:
    v8 = -1;
    goto LABEL_20;
  }

  v7 = sub_270284108(v18);
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_12:
  v9 = sub_27025E56C(0x746E65746E6F435FLL, 0xEF6E6F6973726556);
  if ((v10 & 1) == 0 || (sub_2702705C0(*(a1 + 56) + 32 * v9, v20), (swift_dynamicCast() & 1) == 0))
  {
    v8 = -1;
    if (*(a1 + 16))
    {
      goto LABEL_17;
    }

LABEL_20:

    goto LABEL_21;
  }

  v8 = v18;
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_17:
  v11 = sub_27025E56C(0x6D614E6C65646F4DLL, 0xE900000000000065);
  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_2702705C0(*(a1 + 56) + 32 * v11, v20);

  if (swift_dynamicCast())
  {
    v20[0] = v18;
    v20[1] = v19;
    sub_270264230();
    v13 = sub_2702B440C();
    v15 = v14;

    goto LABEL_22;
  }

LABEL_21:
  v13 = 0;
  v15 = 0;
LABEL_22:
  type metadata accessor for UIUnderstandingModel();
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 16) = v4;
  *(result + 17) = v7;
  *(result + 24) = v8;
  if (v15)
  {
    v17 = result;
    swift_beginAccess();
    result = v17;
    *(v17 + 32) = v13;
    *(v17 + 40) = v15;
  }

  return result;
}

uint64_t sub_270284558(uint64_t a1, uint64_t a2, float64x2_t a3, __n128 a4)
{
  v68 = a4;
  v67 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  result = sub_2702B3DAC();
  if (!*(result + 16))
  {
    goto LABEL_52;
  }

  v8 = *(result + 32);

  v9 = v8 - 4;
  if (__OFSUB__(v8, 4))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  result = sub_2702B3DAC();
  if (*(result + 16) < 2uLL)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v10 = *(result + 40);

  result = sub_2702B3DAC();
  if (*(result + 16) < 3uLL)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = *(result + 48);

  v71 = MEMORY[0x277D84F90];
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  if (v10)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      v64 = v6;
      v12 = 0;
      v62 = v9 + 1;
      v56 = v11;
      v13 = v10;
      v14 = __OFADD__(v9, 1);
      v63 = v14;
      v60 = v9 + 2;
      v15 = __OFADD__(v9, 2);
      v61 = v15;
      v55 = v9 + 3;
      v16.f64[0] = v67.f64[0];
      *&v16.f64[1] = v68;
      v67 = v16;
      v17 = __OFADD__(v9, 3);
      v59 = v17;
      v18 = MEMORY[0x277D84F90];
      v68 = xmmword_2702B6460;
      __asm { FMOV            V0.2D, #1.0 }

      v54 = _Q0;
      v53 = v10;
      v58 = a2;
      v57 = v11;
      while (!v11)
      {
LABEL_18:
        if (++v12 == v53)
        {
          return v18;
        }
      }

      if (v9 < 0)
      {
        goto LABEL_51;
      }

      v24 = 0;
      while (1)
      {
        MEMORY[0x28223BE20](result);
        v52[2] = a1;
        v52[3] = v12;
        v52[4] = v24;
        result = sub_27025D380(sub_270286548, v52, 0, v9);
        v25 = *(result + 16);
        if (!v25)
        {
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
          goto LABEL_53;
        }

        v26 = 0;
        for (i = 0; i != v25; ++i)
        {
          if (v26 >= v25)
          {
            __break(1u);
            return MEMORY[0x277D84F90];
          }

          if (*(result + 32 + 4 * v26) < *(result + 32 + 4 * i))
          {
            v26 = i;
          }
        }

        if (v26 >= v25)
        {
          goto LABEL_47;
        }

        v28 = *(result + 4 * v26 + 32);

        if (!v26)
        {
          if (*(a2 + 16) && (result = sub_27025FD34(), (v29 & 1) != 0))
          {
            if (*(*(a2 + 56) + 4 * result) > v28)
            {
              goto LABEL_23;
            }
          }

          else if (v28 < 0.3)
          {
            goto LABEL_23;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84B8);
          v30 = swift_allocObject();
          *(v30 + 16) = v68;
          *(v30 + 32) = v9;
          *(v30 + 40) = v12;
          *(v30 + 48) = v24;
          sub_270259914(&qword_2807C8490, &qword_2807C83C0);
          sub_2702B3E3C();

          v31 = v70;
          result = swift_allocObject();
          *(result + 16) = v68;
          if (v63)
          {
            goto LABEL_48;
          }

          *(result + 32) = v62;
          *(result + 40) = v12;
          *(result + 48) = v24;
          sub_2702B3E3C();

          v32 = v70;
          result = swift_allocObject();
          *(result + 16) = v68;
          if (v61)
          {
            goto LABEL_49;
          }

          *(result + 32) = v60;
          *(result + 40) = v12;
          *(result + 48) = v24;
          sub_2702B3E3C();

          v33 = v70;
          result = swift_allocObject();
          *(result + 16) = v68;
          if (v59)
          {
            goto LABEL_50;
          }

          v34 = (v24 + v32) / v56;
          v35 = v12 + v31;
          v36 = v33;
          *(result + 32) = v55;
          *(result + 40) = v12;
          *(result + 48) = v24;
          v37 = v35 / v13;
          sub_2702B3E3C();

          v38 = v70;
          v39 = v34 - v70 * 0.5;
          v40 = type metadata accessor for BoundingBox();
          v41 = objc_allocWithZone(v40);
          v42 = &v41[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          *v42 = v39;
          v42[1] = v37 - v36 * 0.5;
          v42[2] = v38;
          v42[3] = v36;
          *&v41[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize] = v54;
          v69.receiver = v41;
          v69.super_class = v40;
          v43 = objc_msgSendSuper2(&v69, sel_init);
          type metadata accessor for CenterNetPrediction();
          v44 = swift_allocObject();
          *(v44 + 16) = v28;
          *(v44 + 24) = v43;
          *(v44 + 32) = 0;
          *(v44 + 40) = 3;
          v45 = &v43[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v46 = OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
          v47 = v45[1];
          v66 = vmulq_f64(*v45, v67);
          v65 = vmulq_f64(v47, v67);
          swift_beginAccess();
          v48 = vmulq_f64(*&v43[v46], v67);
          v49 = v65;
          *v45 = v66;
          v45[1] = v49;
          *&v43[v46] = v48;
          v50 = v43;

          MEMORY[0x27439BDA0](v51);
          if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2702B41CC();
          }

          sub_2702B41EC();

          v18 = v71;
          a2 = v58;
          v11 = v57;
        }

LABEL_23:
        if (++v24 == v11)
        {
          goto LABEL_18;
        }
      }
    }

    goto LABEL_57;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_270284C14(uint64_t a1, uint64_t a2, void (*a3)(int *__return_ptr, uint64_t *), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), int a6, float64x2_t a7, __n128 a8)
{
  v73 = a6;
  v74 = a5;
  v79 = a8;
  v77 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  result = sub_2702B3DAC();
  if (!*(result + 16))
  {
    goto LABEL_52;
  }

  v14 = *(result + 32);

  if (__OFSUB__(v14, 4))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v78 = v14 - 4;
  result = sub_2702B3DAC();
  if (*(result + 16) < 2uLL)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v15 = *(result + 40);

  result = sub_2702B3DAC();
  if (*(result + 16) < 3uLL)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v80 = *(result + 48);

  v83 = MEMORY[0x277D84F90];
  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  if (v15)
  {
    v16 = v80;
    if ((v80 & 0x8000000000000000) == 0)
    {
      v72 = v12;
      v17 = 0;
      v18 = v78;
      v70 = v78 + 1;
      v19 = __OFADD__(v78, 1);
      v71 = v19;
      v63 = v80;
      v20 = v15;
      v68 = v78 + 2;
      v21 = __OFADD__(v78, 2);
      v69 = v21;
      v62 = v78 + 3;
      v22 = __OFADD__(v78, 3);
      v67 = v22;
      v23.f64[0] = v77.f64[0];
      *&v23.f64[1] = v79;
      v77 = v23;
      v24 = MEMORY[0x277D84F90];
      v79 = xmmword_2702B6460;
      __asm { FMOV            V0.2D, #1.0 }

      v61 = _Q0;
      v60 = v15;
      v66 = a3;
      v65 = a2;
      v64 = a4;
      while (!v16)
      {
LABEL_18:
        if (++v17 == v60)
        {
          return v24;
        }
      }

      if (v18 < 0)
      {
        goto LABEL_51;
      }

      v30 = 0;
      while (1)
      {
        MEMORY[0x28223BE20](result);
        v59[2] = a1;
        v59[3] = v17;
        v59[4] = v30;
        result = sub_27025D380(a3, v59, 0, v18);
        v31 = *(result + 16);
        if (!v31)
        {
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
          goto LABEL_53;
        }

        v32 = 0;
        for (i = 0; i != v31; ++i)
        {
          if (v32 >= v31)
          {
            __break(1u);
            return MEMORY[0x277D84F90];
          }

          if (*(result + 32 + 4 * v32) < *(result + 32 + 4 * i))
          {
            v32 = i;
          }
        }

        if (v32 >= v31)
        {
          goto LABEL_47;
        }

        v34 = *(result + 4 * v32 + 32);

        result = a4(v32);
        if ((v35 & 1) == 0)
        {
          if (*(a2 + 16) && (result = v74(result), v18 = v78, (v36 & 1) != 0))
          {
            if (*(*(a2 + 56) + 4 * result) > v34)
            {
              goto LABEL_23;
            }
          }

          else if (v34 < 0.3)
          {
            goto LABEL_23;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84B8);
          v37 = swift_allocObject();
          *(v37 + 16) = v79;
          *(v37 + 32) = v18;
          *(v37 + 40) = v17;
          *(v37 + 48) = v30;
          sub_270259914(&qword_2807C8490, &qword_2807C83C0);
          sub_2702B3E3C();

          v38 = v82;
          result = swift_allocObject();
          *(result + 16) = v79;
          if (v71)
          {
            goto LABEL_48;
          }

          *(result + 32) = v70;
          *(result + 40) = v17;
          *(result + 48) = v30;
          sub_2702B3E3C();

          v39 = v82;
          result = swift_allocObject();
          *(result + 16) = v79;
          if (v69)
          {
            goto LABEL_49;
          }

          *(result + 32) = v68;
          *(result + 40) = v17;
          *(result + 48) = v30;
          sub_2702B3E3C();

          v40 = v82;
          result = swift_allocObject();
          *(result + 16) = v79;
          if (v67)
          {
            goto LABEL_50;
          }

          v41 = (v30 + v39) / v63;
          v42 = v17 + v38;
          v43 = v40;
          *(result + 32) = v62;
          *(result + 40) = v17;
          *(result + 48) = v30;
          v44 = v42 / v20;
          sub_2702B3E3C();

          v45 = v82;
          v46 = v41 - v82 * 0.5;
          v47 = type metadata accessor for BoundingBox();
          v48 = objc_allocWithZone(v47);
          v49 = &v48[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          *v49 = v46;
          v49[1] = v44 - v43 * 0.5;
          v49[2] = v45;
          v49[3] = v43;
          *&v48[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize] = v61;
          v81.receiver = v48;
          v81.super_class = v47;
          v50 = objc_msgSendSuper2(&v81, sel_init);
          type metadata accessor for CenterNetPrediction();
          v51 = swift_allocObject();
          *(v51 + 16) = v34;
          *(v51 + 24) = v50;
          *(v51 + 32) = v32;
          *(v51 + 40) = v73;
          v52 = &v50[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v53 = OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
          v54 = v52[1];
          v76 = vmulq_f64(*v52, v77);
          v75 = vmulq_f64(v54, v77);
          swift_beginAccess();
          v55 = vmulq_f64(*&v50[v53], v77);
          v56 = v75;
          *v52 = v76;
          v52[1] = v56;
          *&v50[v53] = v55;
          v57 = v50;

          MEMORY[0x27439BDA0](v58);
          if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2702B41CC();
          }

          sub_2702B41EC();

          v24 = v83;
          a4 = v64;
          a3 = v66;
          a2 = v65;
          v18 = v78;
        }

LABEL_23:
        ++v30;
        v16 = v80;
        if (v30 == v80)
        {
          goto LABEL_18;
        }
      }
    }

    goto LABEL_57;
  }

  return MEMORY[0x277D84F90];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UIUDetector.preloadFocusElementModel()()
{
  v2 = OBJC_IVAR___UIUDetectorCompat_focusElementDetector;
  swift_beginAccess();
  sub_270260E80(v0 + v2, v8, &qword_2807C8978);
  v3 = v9;
  sub_2702643E4(v8, &qword_2807C8978);
  if (!v3)
  {
    v4 = *(v0 + OBJC_IVAR___UIUDetectorCompat_modelPlatform);
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = v0;
        if (qword_2807C8270 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v6 = qword_2807C8A70;
        v7 = sub_27028EDE8(0);

        if (!v1)
        {
          v9 = type metadata accessor for FocusElement();
          v8[0] = v7;
          swift_beginAccess();
          sub_2702863BC(v8, v5 + v2);
          swift_endAccess();
        }
      }

      else
      {
        v8[0] = *(v0 + OBJC_IVAR___UIUDetectorCompat_modelPlatform);
        sub_2702B47BC();
        __break(1u);
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UIUDetector.addFocusElementResults(to:originalImage:nmsThreshold:)(Swift::OpaquePointer to, CGImageRef originalImage, Swift::Float nmsThreshold)
{
  rawValue = to._rawValue;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83B8);
  v92 = *(v91 - 8);
  v5 = MEMORY[0x28223BE20](v91);
  v90 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v86 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  v93 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v86 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8980);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v86 - v19;
  v21 = v97;
  sub_270285F2C(originalImage, &v86 - v19);
  if (v21)
  {
    return;
  }

  v22 = originalImage;
  v87 = v12;
  v97 = v8;
  v23 = v92;
  v89 = v14;
  v88 = 0;
  sub_270260E80(v20, v18, &qword_2807C8980);
  if ((*(v93 + 48))(v18, 1, v9) == 1)
  {
    sub_2702643E4(v20, &qword_2807C8980);
    v24 = v18;
    goto LABEL_52;
  }

  v25 = v9;
  v86 = v20;
  v26 = v93;
  (*(v93 + 32))(v89, v18, v25);
  Width = CGImageGetWidth(v22);
  Height = CGImageGetHeight(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2702B74D0;
  *(inited + 32) = nmsThreshold;
  v30 = sub_27025FD8C(inited);
  swift_setDeallocating();
  v31 = v97;
  sub_2702B3DCC();
  v32 = v23;
  v33 = *(v23 + 16);
  v34 = v91;
  v33(v90, v31, v91);
  sub_270259914(&qword_2807C8490, &qword_2807C83C0);
  sub_270259914(&qword_2807C83F8, &qword_2807C83B8);
  v35 = v87;
  sub_2702B3DFC();
  v36.f64[0] = Width;
  v37.n128_f64[0] = Height;
  v38 = sub_270284558(v35, v30, v36, v37);

  v39 = *(v26 + 8);
  v93 = v26 + 8;
  v90 = v39;
  (v39)(v35, v25);
  (*(v32 + 8))(v31, v34);
  v96 = MEMORY[0x277D84F90];
  if (v38 >> 62)
  {
LABEL_48:
    v40 = sub_2702B45FC();
  }

  else
  {
    v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = v25;
  if (v40)
  {
    v41 = 0;
    v97 = v38 & 0xC000000000000001;
    v42 = v38 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v97)
      {
        v25 = MEMORY[0x27439C0F0](v41, v38);
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v58 = v96;
          v25 = v92;
          goto LABEL_26;
        }
      }

      else
      {
        if (v41 >= *(v42 + 16))
        {
          __break(1u);
          goto LABEL_48;
        }

        v25 = *(v38 + 8 * v41 + 32);

        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_23;
        }
      }

      v44 = v38;
      swift_beginAccess();
      v45 = *(v25 + 24);
      v46 = &v45[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      x = v46->origin.x;
      y = v46->origin.y;
      v49 = v46->size.width;
      v50 = v46->size.height;
      v51 = v45;
      v98.origin.x = x;
      v98.origin.y = y;
      v98.size.width = v49;
      v98.size.height = v50;
      if (CGRectGetMinX(v98) >= 0.0)
      {
        MaxX = CGRectGetMaxX(*v46);
        v54 = OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
        swift_beginAccess();
        v52 = MaxX <= *&v51[v54];
      }

      else
      {
        v52 = 0;
      }

      if (CGRectGetMinY(*v46) < 0.0)
      {
      }

      else
      {
        MaxY = CGRectGetMaxY(*v46);
        v56 = &v51[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
        swift_beginAccess();
        v57 = v56[1];

        if (v52 && MaxY <= v57)
        {
          sub_2702B454C();
          sub_2702B457C();
          sub_2702B458C();
          sub_2702B455C();
          goto LABEL_10;
        }
      }

LABEL_10:
      v38 = v44;
      ++v41;
      if (v43 == v40)
      {
        goto LABEL_24;
      }
    }
  }

  v58 = MEMORY[0x277D84F90];
LABEL_26:

  if (v58 < 0 || (v58 & 0x4000000000000000) != 0)
  {
    v60 = sub_2702B45FC();
    if (v60)
    {
      goto LABEL_29;
    }

LABEL_50:

    (v90)(v89, v25);
    goto LABEL_51;
  }

  v60 = *(v58 + 16);
  if (!v60)
  {
    goto LABEL_50;
  }

LABEL_29:
  if ((v58 & 0xC000000000000001) != 0)
  {
    v61 = MEMORY[0x27439C0F0](0, v58);
    if (v60 == 1)
    {
LABEL_32:
      v38 = v61;
LABEL_33:

      v59 = rawValue;
      if (rawValue >> 62)
      {
        goto LABEL_72;
      }

      v62 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_35;
    }
  }

  else
  {
    if (!*(v58 + 16))
    {
      goto LABEL_71;
    }

    v61 = *(v58 + 32);

    if (v60 == 1)
    {
      goto LABEL_32;
    }
  }

  v82 = 1;
  while ((v58 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x27439C0F0](v82, v58);
    v83 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      goto LABEL_68;
    }

LABEL_63:
    if (*(v61 + 16) < *(v38 + 16))
    {

      v61 = v38;
      v82 = v83;
      if (v83 == v60)
      {
        goto LABEL_33;
      }
    }

    else
    {

      ++v82;
      if (v83 == v60)
      {
        goto LABEL_32;
      }
    }
  }

  if ((v82 & 0x8000000000000000) != 0)
  {
    goto LABEL_69;
  }

  if (v82 >= *(v58 + 16))
  {
    goto LABEL_70;
  }

  v38 = *(v58 + 8 * v82 + 32);

  v83 = v82 + 1;
  if (!__OFADD__(v82, 1))
  {
    goto LABEL_63;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  v84 = v59;
  v85 = sub_2702B45FC();
  v59 = v84;
  v62 = v85;
LABEL_35:
  v63 = v92;
  v64 = v89;
  if (!v62)
  {

    goto LABEL_46;
  }

  if (v62 < 1)
  {
    __break(1u);
  }

  else
  {
    v65 = v59 & 0xC000000000000001;
    v66 = v59;
    swift_beginAccess();
    v67 = v66;
    for (i = 0; i != v62; ++i)
    {
      if (v65)
      {
        v69 = MEMORY[0x27439C0F0](i, v67);
      }

      else
      {
        v69 = *(v67 + 8 * i + 32);
      }

      v70 = v69;
      v71 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v72 = *(v38 + 24);
      v73 = *&v70[v71];
      v74 = v72;
      v75 = sub_270298280(v74, 0.7);

      if (v75)
      {
        v76 = *(v38 + 16);
        v77 = type metadata accessor for FocusDetection();
        v78 = objc_allocWithZone(v77);
        v78[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused] = 1;
        *&v78[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence] = v76;
        v95.receiver = v78;
        v95.super_class = v77;
        v79 = objc_msgSendSuper2(&v95, sel_init);
        v80 = OBJC_IVAR___UIObjectCompat_focusDetection;
        swift_beginAccess();
        v81 = *&v70[v80];
        *&v70[v80] = v79;

        v70 = v81;
      }

      v67 = rawValue;
    }

    v63 = v92;
    v64 = v89;
LABEL_46:
    (v90)(v64, v63);
LABEL_51:
    v24 = v86;
LABEL_52:
    sub_2702643E4(v24, &qword_2807C8980);
  }
}

void sub_270285F2C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = OBJC_IVAR___UIUDetectorCompat_focusElementDetector;
  swift_beginAccess();
  sub_270260E80(v2 + v8, v37, &qword_2807C8978);
  v9 = v38;
  sub_2702643E4(v37, &qword_2807C8978);
  if (v9 || (UIUDetector.preloadFocusElementModel()(), !v28))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
    v11 = *(*(v10 - 8) + 56);
    v11(a2, 1, 1, v10);
    sub_270260E80(v2 + v8, v37, &qword_2807C8978);
    if (!v38)
    {
      v29 = &qword_2807C8978;
      v30 = v37;
      goto LABEL_13;
    }

    type metadata accessor for FocusElement();
    if (swift_dynamicCast())
    {
      v35 = v36;
      v12 = objc_opt_self();
      v37[0] = 0;
      v13 = a1;
      v14 = [v12 featureValueWithCGImage:v13 pixelsWide:960 pixelsHigh:544 pixelFormatType:32 options:0 error:v37];
      if (v14)
      {
        v15 = v14;
        v34 = a2;
        v16 = v37[0];

        v17 = [v15 imageBufferValue];
        if (!v17)
        {
          __break(1u);
          goto LABEL_18;
        }

        type metadata accessor for FocusElementInput();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;

        v19 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
        v20 = *(v35 + 16);
        v37[0] = 0;
        v21 = [v20 predictionFromFeatures:v18 options:v19 error:v37];
        if (v21)
        {
          v22 = v21;
          v23 = v37[0];

          v24 = sub_2702B3FFC();
          v25 = [v22 featureValueForName_];

          if (v25)
          {
            v26 = [v25 multiArrayValue];

            v27 = v34;
            if (v26)
            {
              sub_2702B3DDC();
              swift_unknownObjectRelease();

              sub_2702643E4(v27, &qword_2807C8980);
              v11(v7, 0, 1, v10);
              sub_2702864D8(v7, v27);
              return;
            }

            goto LABEL_19;
          }

LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          return;
        }

        v32 = v37[0];
        sub_2702B3C0C();

        swift_willThrow();

        v29 = &qword_2807C8980;
        v30 = v34;
LABEL_13:
        sub_2702643E4(v30, v29);
        return;
      }

      v31 = v37[0];

      sub_2702B3C0C();
      swift_willThrow();

      sub_2702643E4(a2, &qword_2807C8980);
    }
  }
}

uint64_t sub_2702863BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8978);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_270286430()
{
  result = qword_2807C8990;
  if (!qword_2807C8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8990);
  }

  return result;
}

uint64_t sub_2702864D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270286820(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C89A8);
    v3 = sub_2702B44AC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2702B487C();

      sub_2702B40BC();
      result = sub_2702B48AC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2702B476C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2702869B0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_2702B44AC();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + 8 * v5);
      sub_2702B487C();
      MEMORY[0x27439C490](v11);
      result = sub_2702B48AC();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_270286B08(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_2702B40FC();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_270286BD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C89C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_270286C54(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2702B40CC();
  if (v8)
  {
    v9 = v8;
    v10 = sub_270286BD0(v8, 0);

    v52 = v10;
    v11 = sub_270286B08(v54, v10 + 4, v9, a1, a2);

    if (v11 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v52 = MEMORY[0x277D84F90];
LABEL_5:
  v12 = sub_2702B40CC();
  if (v12)
  {
    v13 = v12;
    v14 = sub_270286BD0(v12, 0);

    v15 = sub_270286B08(v54, v14 + 4, v13, a3, a4);

    if (v15 == v13)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v14 = MEMORY[0x277D84F90];
LABEL_9:
  v16 = v52[2];
  v17 = v14[2];
  v18 = (v17 + 1);
  v19 = sub_2702B41DC();
  v20 = v19;
  v19[2] = v17 + 1;
  v19[4] = 0;
  v21 = 8 * v17;
  if (v17)
  {
    bzero(v19 + 5, 8 * v17);
  }

  result = sub_2702911FC(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(result + 16);
  v23 = *(result + 24);
  v53 = result;
  v25 = v24 + 1;
  if (v24 >= v23 >> 1)
  {
    goto LABEL_101;
  }

  while (1)
  {
    v53[2] = v25;
    v53[v24 + 4] = v20;
    if (!v16)
    {
      break;
    }

    v20 = MEMORY[0x277D83B88];
    v50 = v16;
    v24 = v16;
    do
    {
      v26 = sub_2702B41DC();
      v25 = v26;
      v26[2] = v18;
      v26[4] = 0;
      if (v17)
      {
        bzero(v26 + 5, v21);
      }

      v16 = v53[2];
      v27 = v53[3];
      if (v16 >= v27 >> 1)
      {
        v53 = sub_2702911FC((v27 > 1), v16 + 1, 1, v53);
      }

      v53[2] = v16 + 1;
      v28 = (v53 + 4);
      v53[v16 + 4] = v25;
      --v24;
    }

    while (v24);
    if (v16)
    {
      v24 = v53;
      v18 = v53[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[5] = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (!*(v18 + 2))
        {
          goto LABEL_104;
        }

        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    v18 = sub_27029C944(v18);
    v53[5] = v18;
    if (!*(v18 + 2))
    {
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      result = sub_27029C944(v18);
      v18 = result;
      goto LABEL_26;
    }

LABEL_22:
    *(v18 + 4) = 1;
    v24 = v50 - 1;
    if (v50 != 1)
    {
LABEL_66:
      v16 = (v53 + 6);
      v43 = 2;
      do
      {
        v23 = v53[2];
        if (v43 >= v23)
        {
          goto LABEL_98;
        }

        v18 = *v16;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *v16 = v18;
        if (v44)
        {
          if (!*(v18 + 2))
          {
            goto LABEL_73;
          }
        }

        else
        {
          v18 = sub_27029C944(v18);
          *v16 = v18;
          if (!*(v18 + 2))
          {
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }
        }

        *(v18 + 4) = v43++;
        v16 += 8;
      }

      while (--v24);
    }

    if (!v17)
    {
      goto LABEL_105;
    }

    if (!v53[2])
    {
      goto LABEL_106;
    }

    v18 = *v28;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v28 = v18;
    if ((result & 1) == 0)
    {
      goto LABEL_107;
    }

LABEL_26:
    if (*(v18 + 2) < 2uLL)
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      break;
    }

    *(v18 + 5) = 1;
    *v28 = v18;
    v51 = (v17 - 1);
    if (v17 != 1)
    {
LABEL_74:
      v24 = 6;
      v16 = v51;
      do
      {
        v23 = v53[2];
        if (!v23)
        {
          goto LABEL_99;
        }

        v18 = *v28;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        *v28 = v18;
        if ((v45 & 1) == 0)
        {
          v18 = sub_27029C944(v18);
          *v28 = v18;
        }

        v23 = v24 - 4;
        if (v24 - 4 >= *(v18 + 2))
        {
          goto LABEL_100;
        }

        *&v18[8 * v24++] = v23;
      }

      while (--v16);
    }

    v21 = v14;
    v48 = v17;
    v49 = v14 + 5;
    v17 = 1;
LABEL_29:
    v20 = v17 - 1;
    v23 = v52[2];
    if (v17 - 1 >= v23)
    {
LABEL_84:
      __break(1u);
    }

    else
    {
      v25 = 0;
      v24 = v49;
      v14 = &v52[2 * v20 + 4];
      while (1)
      {
        v23 = *(v21 + 16);
        if (v25 >= v23)
        {
          break;
        }

        v16 = v25 + 1;
        v30 = *v14 == *(v24 - 8) && v14[1] == *v24;
        if (v30 || (sub_2702B476C() & 1) != 0)
        {
          v23 = v53[2];
          if (v20 >= v23)
          {
            goto LABEL_86;
          }

          v31 = v28[v20];
          if (v25 >= *(v31 + 2))
          {
            goto LABEL_87;
          }

          if (v17 >= v23)
          {
            goto LABEL_88;
          }

          v32 = *&v31[8 * v25 + 32];
          v18 = v28[v17];
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v28[v17] = v18;
          if ((v33 & 1) == 0)
          {
            v18 = sub_27029C944(v18);
            v28[v17] = v18;
          }

          v23 = *(v18 + 2);
          if (v16 >= v23)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v23 = v53;
          v34 = v53[2];
          if (v20 >= v34)
          {
            goto LABEL_90;
          }

          v23 = v28[v20];
          if (v16 >= *(v23 + 16))
          {
            goto LABEL_91;
          }

          v35 = v23 + 8 * v25;
          v36 = *(v35 + 40);
          v37 = __OFADD__(v36, 1);
          v23 = v36 + 1;
          if (v37)
          {
            goto LABEL_92;
          }

          if (v17 >= v34)
          {
            goto LABEL_93;
          }

          v18 = v28[v17];
          if (v25 >= *(v18 + 2))
          {
            goto LABEL_94;
          }

          v38 = *&v18[8 * v25 + 32];
          v37 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v37)
          {
            goto LABEL_95;
          }

          v40 = *(v35 + 32);
          v37 = __OFADD__(v40, 2);
          v41 = v40 + 2;
          if (v37)
          {
            goto LABEL_96;
          }

          if (v39 < v23)
          {
            v23 = v39;
          }

          if (v41 >= v23)
          {
            v32 = v23;
          }

          else
          {
            v32 = v41;
          }

          v42 = swift_isUniquelyReferenced_nonNull_native();
          v28[v17] = v18;
          if ((v42 & 1) == 0)
          {
            v18 = sub_27029C944(v18);
            v28[v17] = v18;
          }

          v23 = *(v18 + 2);
          if (v16 >= v23)
          {
            goto LABEL_97;
          }
        }

        *&v18[8 * v25 + 40] = v32;
        if (v51 == v25)
        {
          if (v17 != v50)
          {
            v37 = __OFADD__(v17++, 1);
            if (!v37)
            {
              goto LABEL_29;
            }

            __break(1u);
            goto LABEL_66;
          }

          if (v50 >= v53[2])
          {
            goto LABEL_109;
          }

          v46 = v28[v50];
          if (v48 < *(v46 + 2))
          {
            v47 = *&v46[8 * v48 + 32];

            return v47;
          }

          goto LABEL_110;
        }

        v23 = v52[2];
        ++v25;
        v24 += 16;
        if (v20 >= v23)
        {
          goto LABEL_84;
        }
      }
    }

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
    result = sub_2702911FC((v23 > 1), v25, 1, v53);
    v53 = result;
  }

  __break(1u);
  return result;
}

uint64_t sub_270287278(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_2702B40CC();
  if (result >= 1)
  {
    result = sub_2702B40CC();
    if (result >= 1)
    {
      sub_2702B40CC();
      sub_2702B40CC();
      if (sub_2702B40CC() && sub_2702B40CC())
      {
        sub_270286C54(a1, a2, a3, a4);
      }

      else
      {
        sub_2702B40CC();
      }

      v9 = sub_2702B40CC();
      result = sub_2702B40CC();
      if (__OFADD__(v9, result))
      {
        __break(1u);
      }
    }
  }

  return result;
}

objc_super *UIUDetector.__allocating_init(shape:elementConfidenceThresholds:clickabilityConfidenceThresholds:elementConfig:clickabilityConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v37 = a4;

  if (a1 != 2 && (a1 || (v7 = MobileGestalt_get_current_device()) != 0 && (v8 = v7, iPadCapability = MobileGestalt_get_iPadCapability(), v8, (iPadCapability & 1) != 0)))
  {
    v30 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    v10 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    v31 = type metadata accessor for UIUDetector();
    v11 = objc_allocWithZone(v31);
    v12 = &v11[OBJC_IVAR___UIUDetectorCompat_clickabilityDetector];
    *v12 = 0u;
    v12[1] = 0u;
    *&v11[OBJC_IVAR___UIUDetectorCompat_iconDetector] = 0;
    v13 = &v11[OBJC_IVAR___UIUDetectorCompat_focusElementDetector];
    *v13 = 0u;
    *(v13 + 1) = 0u;
    v14 = OBJC_IVAR___UIUDetectorCompat_clickabilityConfig;
    *&v11[OBJC_IVAR___UIUDetectorCompat_clickabilityConfig] = v10;
    *&v11[OBJC_IVAR___UIUDetectorCompat_modelPlatform] = 1;
    type metadata accessor for UIUGrouper();
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    *&v11[OBJC_IVAR___UIUDetectorCompat_grouper] = v15;
    v16 = qword_2807C8270;
    v29 = v10;
    if (v16 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = qword_2807C8A70;
    v18 = sub_27028D248(1);
    if (!v5)
    {
      v19 = v18;

      v36 = type metadata accessor for ElementMindNetSquare();
      *&v35 = v19;
      sub_270260FB0(&v35, &v11[OBJC_IVAR___UIUDetectorCompat_elementDetector]);
      if (qword_2807C8250 != -1)
      {
        swift_once();
      }

      *&v11[OBJC_IVAR___UIUDetectorCompat_elementConfidenceThresholds] = qword_2807CD4D8;
      v20 = qword_2807C8260;

      if (v20 != -1)
      {
        swift_once();
      }

      *&v11[OBJC_IVAR___UIUDetectorCompat_clickabilityConfidenceThresholds] = qword_2807CD4E8;
      v34 = v11;
      v21 = &v34;
LABEL_22:
      v21->super_class = v31;

      v12 = [(objc_super *)v21 init];

      return v12;
    }
  }

  else
  {
    v30 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    v22 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    v31 = type metadata accessor for UIUDetector();
    v11 = objc_allocWithZone(v31);
    v12 = &v11[OBJC_IVAR___UIUDetectorCompat_clickabilityDetector];
    *v12 = 0u;
    v12[1] = 0u;
    *&v11[OBJC_IVAR___UIUDetectorCompat_iconDetector] = 0;
    v13 = &v11[OBJC_IVAR___UIUDetectorCompat_focusElementDetector];
    *v13 = 0u;
    *(v13 + 1) = 0u;
    v14 = OBJC_IVAR___UIUDetectorCompat_clickabilityConfig;
    *&v11[OBJC_IVAR___UIUDetectorCompat_clickabilityConfig] = v22;
    *&v11[OBJC_IVAR___UIUDetectorCompat_modelPlatform] = 0;
    type metadata accessor for UIUGrouper();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *&v11[OBJC_IVAR___UIUDetectorCompat_grouper] = v23;
    v24 = qword_2807C8270;
    v29 = v22;
    if (v24 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = qword_2807C8A70;
    v25 = sub_27028CF2C(1);
    if (!v5)
    {
      v26 = v25;

      v36 = type metadata accessor for ElementMindNetPortrait();
      *&v35 = v26;
      sub_270260FB0(&v35, &v11[OBJC_IVAR___UIUDetectorCompat_elementDetector]);
      if (qword_2807C8248 != -1)
      {
        swift_once();
      }

      *&v11[OBJC_IVAR___UIUDetectorCompat_elementConfidenceThresholds] = qword_2807CD4D0;
      v27 = qword_2807C8258;

      if (v27 != -1)
      {
        swift_once();
      }

      *&v11[OBJC_IVAR___UIUDetectorCompat_clickabilityConfidenceThresholds] = qword_2807CD4E0;
      v33 = v11;
      v21 = &v33;
      goto LABEL_22;
    }
  }

  sub_2702878EC(v12);

  sub_2702878EC(v13);
  swift_deallocPartialClassInstance();

  return v12;
}

uint64_t sub_2702878EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_270287954()
{
  result = sub_27025FAE0(&unk_288035F08);
  qword_2807CD4D0 = result;
  return result;
}

unint64_t sub_27028797C()
{
  result = sub_27025FAE0(&unk_288036138);
  qword_2807CD4D8 = result;
  return result;
}

unint64_t sub_2702879A4()
{
  result = sub_27025FAF4(&unk_288036008);
  qword_2807CD4E0 = result;
  return result;
}

unint64_t sub_2702879CC()
{
  result = sub_27025FAF4(&unk_288036238);
  qword_2807CD4E8 = result;
  return result;
}

uint64_t UIUDetectorResult.headFeatures.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UIUDetectorResult() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UIUDetectorResult()
{
  result = qword_2807C89C8;
  if (!qword_2807C89C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270287AE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_270287BB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_270287C64()
{
  sub_270287CE8();
  if (v0 <= 0x3F)
  {
    sub_270287D40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_270287CE8()
{
  if (!qword_2807C89D8)
  {
    type metadata accessor for UIObject();
    v0 = sub_2702B41FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2807C89D8);
    }
  }
}

void sub_270287D40()
{
  if (!qword_2807C89E0)
  {
    v0 = sub_2702B3DBC();
    if (!v1)
    {
      atomic_store(v0, &qword_2807C89E0);
    }
  }
}

id sub_270287D98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v131 = sub_2702B3C8C();
  v6 = *(v131 - 8);
  v7 = MEMORY[0x28223BE20](v131);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v105 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v127 = &v105 - v14;
  MEMORY[0x28223BE20](v13);
  v126 = &v105 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C85D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v128 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v123 = &v105 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v125 = &v105 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v129 = &v105 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v105 - v25;
  if ((sub_270289610() & 1) == 0)
  {
    sub_27026FBC4();
    swift_allocError();
    *v73 = 0;
    return swift_willThrow();
  }

  v119 = a2;
  v130 = a1;
  result = sub_270289AEC(1);
  if (v3)
  {
    return result;
  }

  v28 = result;
  v118 = v2;
  v107 = v9;
  v108 = 0;
  v113 = v12;
  v29 = *(v6 + 56);
  v114 = v26;
  v121 = v6 + 56;
  v120 = v29;
  v29(v26, 1, 1, v131);
  result = [v28 results];
  if (!result)
  {
    goto LABEL_52;
  }

  v30 = result;
  v112 = v28;
  sub_27026608C(0, &qword_2807C89E8);
  v31 = sub_2702B41BC();

  v33 = v128;
  if (v31 >> 62)
  {
LABEL_50:
    v34 = sub_2702B45FC();
  }

  else
  {
    v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v123;
  if (!v34)
  {

    v74 = v114;
LABEL_39:
    sub_270264188(v74, v33);
    v75 = (*(v6 + 48))(v33, 1, v131);
    v76 = v113;
    if (v75 == 1)
    {
      sub_2702643E4(v33, &qword_2807C85D0);

      v77 = sub_2702B3D6C();
      v78 = sub_2702B431C();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v134[0] = v80;
        *v79 = 136315138;
        v81 = sub_270283AF0();
        v83 = sub_27026FD60(v81, v82, v134);

        *(v79 + 4) = v83;
        _os_log_impl(&dword_270253000, v77, v78, "Failed to find target model %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x27439CE00](v80, -1, -1);
        MEMORY[0x27439CE00](v79, -1, -1);
      }

      v84 = v112;
      sub_27026FBC4();
      swift_allocError();
      *v85 = 4;
      swift_willThrow();

      return sub_2702643E4(v74, &qword_2807C85D0);
    }

    else
    {
      v86 = v131;
      (*(v6 + 32))(v113, v33, v131);
      v87 = *(v6 + 16);
      v88 = v119;
      v87(v119, v76, v86);
      v89 = v107;
      v87(v107, v88, v86);
      v90 = sub_2702B3D6C();
      v91 = sub_2702B432C();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v134[0] = v136;
        *v92 = 136315138;
        sub_27028B490(&qword_2807C85F8, MEMORY[0x277CC9260]);
        v93 = v131;
        v94 = sub_2702B474C();
        v96 = v95;
        v97 = *(v6 + 8);
        v97(v89, v93);
        v98 = sub_27026FD60(v94, v96, v134);

        *(v92 + 4) = v98;
        _os_log_impl(&dword_270253000, v90, v91, "Looking for asset at %s", v92, 0xCu);
        v99 = v136;
        __swift_destroy_boxed_opaque_existential_1(v136);
        MEMORY[0x27439CE00](v99, -1, -1);
        MEMORY[0x27439CE00](v92, -1, -1);

        v97(v113, v93);
        v100 = v114;
      }

      else
      {

        v101 = *(v6 + 8);
        v102 = v131;
        v101(v89, v131);
        v101(v76, v102);
        v100 = v74;
      }

      return sub_2702643E4(v100, &qword_2807C85D0);
    }
  }

  v36 = v6;
  v6 = 0;
  v37 = v31 & 0xC000000000000001;
  v110 = OBJC_IVAR____TtC15UIUnderstanding26MobileAssetUIUModelLocator_log;
  v124 = v31 & 0xFFFFFFFFFFFFFF8;
  v116 = (v36 + 48);
  v111 = (v36 + 32);
  v106 = v36;
  v109 = (v36 + 8);
  *&v32 = 138412290;
  v105 = v32;
  v115 = v31 & 0xC000000000000001;
  v117 = v31;
  v136 = v34;
  while (1)
  {
    if (v37)
    {
      v39 = MEMORY[0x27439C0F0](v6, v31);
    }

    else
    {
      if (v6 >= *(v124 + 16))
      {
        goto LABEL_49;
      }

      v39 = *(v31 + 8 * v6 + 32);
    }

    v40 = v39;
    v41 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v42 = [v39 attributes];
    if (v42)
    {
      v43 = v42;
      v44 = sub_2702B3F8C();

      v45 = sub_270288B24(v44);

      if (v45)
      {
        sub_270284200(v45);
        v46 = sub_270283AB4(v130);

        if (!v46)
        {
LABEL_25:

          goto LABEL_9;
        }
      }
    }

    result = [v40 attributes];
    if (!result)
    {
      break;
    }

    v47 = result;
    v48 = sub_2702B3F8C();

    v132 = 0x6D614E6C65646F4DLL;
    v133 = 0xE900000000000065;
    sub_2702B447C();
    if (!*(v48 + 16) || (v49 = sub_27025E5E4(v134), (v50 & 1) == 0))
    {

      sub_270260F54(v134);
LABEL_9:
      v38 = v136;
      goto LABEL_10;
    }

    sub_2702705C0(*(v48 + 56) + 32 * v49, v135);
    sub_270260F54(v134);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_25;
    }

    v51 = v132;
    v52 = [v40 getLocalFileUrl];
    v122 = v51;
    if (v52)
    {
      v53 = v52;
      v54 = v125;
      sub_2702B3C5C();

      v55 = 0;
      v56 = v127;
    }

    else
    {
      v55 = 1;
      v56 = v127;
      v54 = v125;
    }

    v57 = v131;
    v120(v54, v55, 1, v131);
    v58 = v54;
    v59 = v129;
    sub_270264118(v58, v129);
    sub_270264188(v59, v35);
    if ((*v116)(v35, 1, v57) == 1)
    {

      sub_2702643E4(v35, &qword_2807C85D0);
      v60 = v40;
      v61 = sub_2702B3D6C();
      v62 = sub_2702B431C();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = v105;
        *(v63 + 4) = v60;
        *v64 = v60;
        v65 = v60;
        _os_log_impl(&dword_270253000, v61, v62, "Asset %@ has nil URL", v63, 0xCu);
        sub_2702643E4(v64, &qword_2807C8600);
        MEMORY[0x27439CE00](v64, -1, -1);
        MEMORY[0x27439CE00](v63, -1, -1);
      }

      else
      {
      }

      sub_2702643E4(v59, &qword_2807C85D0);
      v33 = v128;
    }

    else
    {
      v66 = v131;
      v67 = *v111;
      (*v111)();
      sub_2702B3C4C();

      v68 = [objc_opt_self() defaultManager];
      sub_2702B3C6C();
      v69 = v56;
      v70 = sub_2702B3FFC();

      v71 = [v68 fileExistsAtPath_];

      v72 = *v109;
      (*v109)(v126, v66);
      sub_2702643E4(v129, &qword_2807C85D0);
      if (v71)
      {
        v103 = v114;
        sub_2702643E4(v114, &qword_2807C85D0);
        v104 = v67;
        v74 = v103;

        (v104)(v103, v69, v66);
        v120(v103, 0, 1, v66);
        v6 = v106;
        v33 = v128;
        goto LABEL_39;
      }

      v72(v69, v66);
      v33 = v128;
      v35 = v123;
    }

    v31 = v117;
    v38 = v136;
    v37 = v115;
LABEL_10:
    ++v6;
    if (v41 == v38)
    {

      v74 = v114;
      v6 = v106;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

unint64_t sub_270288B24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8A38);
    v2 = sub_2702B463C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_270260EF8(*(a1 + 48) + 40 * v12, v27);
        sub_2702705C0(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_270260EF8(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2702705C0(v25 + 8, v20);
        sub_2702643E4(v24, &qword_2807C8A40);
        v21 = v18;
        sub_270260FB0(v20, v22);
        v13 = v21;
        sub_270260FB0(v22, v23);
        sub_270260FB0(v23, &v21);
        result = sub_27025E56C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_270260FB0(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_270260FB0(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_2702643E4(v24, &qword_2807C8A40);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_270288E00()
{
  v0 = sub_270289AEC(1);
  result = [v0 results];
  if (result)
  {
    v2 = result;
    sub_27026608C(0, &qword_2807C89E8);
    v3 = sub_2702B41BC();

    if (v3 >> 62)
    {
      v4 = sub_2702B45FC();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return (v4 > 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270288F50(uint64_t a1)
{
  v2 = sub_270289AEC(1);
  result = [v2 results];
  if (result)
  {
    v4 = result;
    sub_27026608C(0, &qword_2807C89E8);
    v5 = sub_2702B41BC();

    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2702B45FC())
    {
      v7 = 0;
      v15 = v2;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x27439C0F0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v2 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v10 = [v8 attributes];
        if (v10 && (v11 = v10, v12 = sub_2702B3F8C(), v11, v13 = sub_270288B24(v12), , v13))
        {
          sub_270284200(v13);

          v14 = sub_270283AB4(a1);

          if (v14)
          {

            return 1;
          }
        }

        else
        {
        }

        ++v7;
        if (v2 == i)
        {

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_21:

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2702891D0(uint64_t a1)
{
  if ((sub_270289610() & 1) == 0)
  {
    sub_27026FBC4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (v10 & 1);
  }

  if (a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  v4 = sub_2702B3D6C();
  v5 = sub_2702B432C();

  if (os_log_type_enabled(v4, v5))
  {
    if (a1)
    {
      v6 = 7105633;
    }

    else
    {
      v6 = 0x746C7561666564;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_27026FD60(0xD000000000000025, 0x80000002702BAFE0, &v26);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_27026FD60(v6, v3, &v26);
    _os_log_impl(&dword_270253000, v4, v5, "Downloading assets of type %s for %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x27439CE00](v8, -1, -1);
    MEMORY[0x27439CE00](v7, -1, -1);
  }

  v9 = sub_270289AEC(0);
  if (v1)
  {

    return (v10 & 1);
  }

  v13 = v9;
  [v9 returnTypes_];
  result = [v13 results];
  if (result)
  {
    v14 = result;

    sub_27026608C(0, &qword_2807C89E8);
    v15 = sub_2702B41BC();

    if (v15 >> 62)
    {
      v16 = sub_2702B45FC();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      sub_270289D3C(a1, v13);
      v20 = sub_2702B3EFC();
      v21 = sub_2702B3D6C();
      if (v20)
      {
        v22 = sub_2702B431C();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_270253000, v21, v22, "Hit timeout", v23, 2u);
          MEMORY[0x27439CE00](v23, -1, -1);
        }

        v10 = 0;
        return (v10 & 1);
      }

      v24 = sub_2702B432C();
      if (os_log_type_enabled(v21, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_270253000, v21, v24, "Successful download", v25, 2u);
        MEMORY[0x27439CE00](v25, -1, -1);
      }
    }

    else
    {
      v17 = sub_2702B3D6C();
      v18 = sub_2702B432C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_270253000, v17, v18, "Nothing to download", v19, 2u);
        MEMORY[0x27439CE00](v19, -1, -1);
      }
    }

    v10 = 1;
    return (v10 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_270289610()
{
  v1 = v0;
  v2 = sub_2702B3F4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  if (*(v1 + 32))
  {
    return 1;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v25 = (v10 + 16);
  v11 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v11 setPrefersInfraWiFi_];
  [v11 setAllowsCellularAccess_];
  v24 = *(v1 + 16);
  dispatch_group_enter(v24);
  v23 = objc_opt_self();
  v12 = sub_2702B3FFC();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v1;
  aBlock[4] = sub_27028B5F8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_270289A98;
  aBlock[3] = &block_descriptor_24;
  v14 = _Block_copy(aBlock);
  v15 = v11;
  v26 = v10;

  [v23 startCatalogDownload:v12 options:v15 then:v14];
  _Block_release(v14);

  sub_2702B3F3C();
  sub_2702B3F5C();
  v16 = *(v3 + 8);
  v16(v6, v2);
  sub_2702B433C();
  v16(v8, v2);
  if (sub_2702B3EFC())
  {
    v17 = sub_2702B3D6C();
    v18 = sub_2702B431C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_270253000, v17, v18, "Hit timeout during catalog download", v19, 2u);
      MEMORY[0x27439CE00](v19, -1, -1);
    }

    v20 = v25;
    swift_beginAccess();
    *v20 = 0;
  }

  else
  {
  }

  swift_beginAccess();
  v9 = *(v26 + 16);

  return v9;
}

void sub_2702899A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_2702B3D6C();
    v6 = sub_2702B432C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_270253000, v5, v6, "Failed to download catalog with status %ld", v7, 0xCu);
      MEMORY[0x27439CE00](v7, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
  }

  dispatch_group_leave(*(a3 + 16));
}

uint64_t sub_270289A98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_270289AEC(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v3 = sub_2702B3FFC();
  v4 = [v2 initWithType_];

  if (v4)
  {
    [v4 returnTypes_];
    v5 = [v4 queryMetaDataSync];
    if (v5 > 3)
    {
      if (v5 != 4)
      {
        if (v5 == 7)
        {
          sub_27026FBC4();
          swift_allocError();
          v7 = 7;
          goto LABEL_15;
        }

        if (v5 == 5)
        {
          sub_27026FBC4();
          swift_allocError();
          v7 = 5;
LABEL_15:
          *v6 = v7;
          swift_willThrow();

          return v4;
        }

LABEL_12:
        v9 = v5;
        v10 = sub_2702B3D6C();
        v11 = sub_2702B431C();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 134218240;
          *(v12 + 4) = a1;
          *(v12 + 12) = 2048;
          *(v12 + 14) = v9;
          _os_log_impl(&dword_270253000, v10, v11, "Query %ld failed with unexpected status %ld", v12, 0x16u);
          MEMORY[0x27439CE00](v12, -1, -1);
        }

        sub_27026FBC4();
        swift_allocError();
        v7 = 1;
        goto LABEL_15;
      }

LABEL_10:
      sub_27026FBC4();
      swift_allocError();
      v7 = 6;
      goto LABEL_15;
    }

    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_27026FBC4();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
  }

  return v4;
}

id sub_270289D3C(uint64_t a1, void *a2)
{
  v83 = a1;
  v73 = sub_2702B3F4C();
  v72 = *(v73 - 8);
  v3 = MEMORY[0x28223BE20](v73);
  v70 = &v68[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v71 = &v68[-v5];
  v80 = sub_2702B3F0C();
  v6 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_2702B3F2C();
  v8 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = swift_allocObject();
  v82 = v10;
  *(v10 + 16) = 1;
  v69 = (v10 + 16);
  result = [a2 results];
  if (result)
  {
    v12 = result;
    sub_27026608C(0, &qword_2807C89E8);
    v13 = sub_2702B41BC();

    if (v13 >> 62)
    {
      goto LABEL_50;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2702B45FC())
    {
      v16 = 0;
      v93 = OBJC_IVAR____TtC15UIUnderstanding26MobileAssetUIUModelLocator_log;
      v17 = v13 & 0xC000000000000001;
      v86 = v13 + 32;
      v87 = v13 & 0xFFFFFFFFFFFFFF8;
      v76 = v97;
      v75 = (v6 + 8);
      v74 = (v8 + 8);
      *&v14 = 136315138;
      v85 = v14;
      v81 = v13;
      v88 = v13 & 0xC000000000000001;
      v89 = i;
      while (1)
      {
        if (v17)
        {
          v18 = MEMORY[0x27439C0F0](v16, v13);
        }

        else
        {
          if (v16 >= *(v87 + 16))
          {
            goto LABEL_49;
          }

          v18 = *(v86 + 8 * v16);
        }

        v95 = v18;
        if (__OFADD__(v16++, 1))
        {
          break;
        }

        v20 = [v95 attributes];
        if (v20 && (v21 = v20, v8 = sub_2702B3F8C(), v21, v6 = sub_270288B24(v8), , v6))
        {
          v8 = sub_270284200(v6);
          v22 = sub_270283AF0();
          v24 = v23;

          v25 = sub_2702B3D6C();
          v26 = sub_2702B432C();

          v27 = os_log_type_enabled(v25, v26);
          v91 = v22;
          v92 = v24;
          if (v27)
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v30 = v22;
            v31 = v29;
            aBlock[0] = v29;
            *v28 = v85;
            *(v28 + 4) = sub_27026FD60(v30, v24, aBlock);
            _os_log_impl(&dword_270253000, v25, v26, "Inspecting %s", v28, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v31);
            MEMORY[0x27439CE00](v31, -1, -1);
            v32 = v28;
            v17 = v88;
            MEMORY[0x27439CE00](v32, -1, -1);
          }

          if ([v95 state] == 2)
          {

            v6 = sub_2702B3D6C();
            v8 = sub_2702B432C();
            if (os_log_type_enabled(v6, v8))
            {
              v33 = swift_slowAlloc();
              *v33 = 0;
              _os_log_impl(&dword_270253000, v6, v8, "Asset already installed", v33, 2u);
              MEMORY[0x27439CE00](v33, -1, -1);
            }

            i = v89;
          }

          else
          {
            if (v83)
            {
LABEL_21:
              v34 = v92;

              v35 = sub_2702B3D6C();
              v36 = sub_2702B432C();

              v37 = os_log_type_enabled(v35, v36);
              v84 = v8;
              if (v37)
              {
                v38 = swift_slowAlloc();
                v39 = v34;
                v40 = swift_slowAlloc();
                aBlock[0] = v40;
                *v38 = v85;
                v41 = v91;
                *(v38 + 4) = sub_27026FD60(v91, v39, aBlock);
                _os_log_impl(&dword_270253000, v35, v36, "Downloading asset %s", v38, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v40);
                v42 = v40;
                v34 = v39;
                MEMORY[0x27439CE00](v42, -1, -1);
                MEMORY[0x27439CE00](v38, -1, -1);
              }

              else
              {

                v41 = v91;
              }

              v48 = v94;
              dispatch_group_enter(*(v94 + 16));
              v49 = *(v48 + 24);
              v50 = swift_allocObject();
              v51 = v95;
              v50[2] = v95;
              v50[3] = v48;
              v50[4] = v82;
              v50[5] = v41;
              v50[6] = v34;
              v97[2] = sub_27028B468;
              v97[3] = v50;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              v97[0] = sub_27028AD78;
              v97[1] = &block_descriptor;
              v52 = _Block_copy(aBlock);
              v8 = v51;

              v53 = v77;
              sub_2702B3F1C();
              v97[8] = MEMORY[0x277D84F90];
              sub_27028B490(&qword_2807C8A20, MEMORY[0x277D85198]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8A28);
              sub_27028B4D8(&qword_2807C8A30, &qword_2807C8A28);
              v54 = v79;
              v55 = v80;
              sub_2702B443C();
              v6 = v49;
              MEMORY[0x27439BF70](0, v53, v54, v52);

              _Block_release(v52);

              (*v75)(v54, v55);
              (*v74)(v53, v78);
            }

            else
            {
              v43 = _s15UIUnderstanding15UIUModelFetcherC18getDefaultModelSetSayAA0aF0CGyFZ_0();
              v6 = v43;
              if (v43 >> 62)
              {
                v44 = sub_2702B45FC();
                if (v44)
                {
LABEL_25:
                  v45 = 0;
                  v90 = v6 & 0xFFFFFFFFFFFFFF8;
                  do
                  {
                    if ((v6 & 0xC000000000000001) != 0)
                    {
                      v46 = MEMORY[0x27439C0F0](v45, v6);
                      v13 = v45 + 1;
                      if (__OFADD__(v45, 1))
                      {
                        goto LABEL_46;
                      }
                    }

                    else
                    {
                      if (v45 >= *(v90 + 16))
                      {
                        goto LABEL_48;
                      }

                      v13 = v45 + 1;
                      if (__OFADD__(v45, 1))
                      {
LABEL_46:
                        __break(1u);
                        goto LABEL_47;
                      }
                    }

                    if (*(v46 + 16) == v8[16] && *(v46 + 17) == v8[17])
                    {
                      v47 = *(v46 + 24);

                      if (v47 == *(v8 + 3))
                      {

                        goto LABEL_21;
                      }
                    }

                    else
                    {
                    }

                    ++v45;
                  }

                  while (v13 != v44);
                }
              }

              else
              {
                v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v44)
                {
                  goto LABEL_25;
                }
              }

              v56 = v92;

              v6 = sub_2702B3D6C();
              v57 = sub_2702B432C();

              if (os_log_type_enabled(v6, v57))
              {
                v58 = swift_slowAlloc();
                v59 = swift_slowAlloc();
                aBlock[0] = v59;
                *v58 = v85;
                v60 = sub_27026FD60(v91, v56, aBlock);

                *(v58 + 4) = v60;
                _os_log_impl(&dword_270253000, v6, v57, "Skipping: %s not in the default set.", v58, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v59);
                MEMORY[0x27439CE00](v59, -1, -1);
                MEMORY[0x27439CE00](v58, -1, -1);
              }

              else
              {
              }
            }

            v13 = v81;
            v17 = v88;
            i = v89;
          }
        }

        else
        {
        }

        if (v16 == i)
        {
          goto LABEL_51;
        }
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      ;
    }

LABEL_51:

    v61 = v70;
    sub_2702B3F3C();
    v62 = v71;
    sub_2702B3F5C();
    v63 = *(v72 + 8);
    v64 = v73;
    v63(v61, v73);
    v65 = sub_2702B433C();
    v63(v62, v64);
    v66 = v69;
    swift_beginAccess();
    if (*v66)
    {

      return (v65 & 1);
    }

    else
    {
      sub_27026FBC4();
      swift_allocError();
      *v67 = 2;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_27028A894(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a4;
  v10[5] = a5;
  v12[4] = sub_27028B5AC;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_270289A98;
  v12[3] = &block_descriptor_17;
  v11 = _Block_copy(v12);

  [a1 startDownload_];
  _Block_release(v11);
}

void sub_27028A9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_2702B3D8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31[-1] - v14;
  if (a1 && a1 != 10)
  {
    swift_beginAccess();
    *(a2 + 16) = 0;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v10 + 16))(v15, Strong + OBJC_IVAR____TtC15UIUnderstanding26MobileAssetUIUModelLocator_log, v9);

      v22 = sub_2702B3D6C();
      v23 = sub_2702B431C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = a4;
        v27 = v25;
        v31[0] = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_27026FD60(v26, a5, v31);
        *(v24 + 12) = 2048;
        *(v24 + 14) = a1;
        _os_log_impl(&dword_270253000, v22, v23, "Failed to download asset %s: %ld", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x27439CE00](v27, -1, -1);
        MEMORY[0x27439CE00](v24, -1, -1);
      }

      (*(v10 + 8))(v15, v9);
    }
  }

  else
  {
    swift_beginAccess();
    v16 = swift_weakLoadStrong();
    if (v16)
    {
      (*(v10 + 16))(v13, v16 + OBJC_IVAR____TtC15UIUnderstanding26MobileAssetUIUModelLocator_log, v9);

      v17 = sub_2702B3D6C();
      v18 = sub_2702B432C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v32[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_27026FD60(a4, a5, v32);
        _os_log_impl(&dword_270253000, v17, v18, "Success with %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x27439CE00](v20, -1, -1);
        MEMORY[0x27439CE00](v19, -1, -1);
      }

      (*(v10 + 8))(v13, v9);
    }
  }

  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    v29 = *(v28 + 16);

    dispatch_group_leave(v29);
  }
}

uint64_t sub_27028AD78(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t MobileAssetUIUModelLocator.deinit()
{
  v1 = OBJC_IVAR____TtC15UIUnderstanding26MobileAssetUIUModelLocator_log;
  v2 = sub_2702B3D8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MobileAssetUIUModelLocator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15UIUnderstanding26MobileAssetUIUModelLocator_log;
  v2 = sub_2702B3D8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_27028AED8()
{
  v8 = sub_2702B435C();
  v1 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2702B434C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2702B3F2C();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + 16) = dispatch_group_create();
  v7[1] = sub_27026608C(0, &qword_2807C8A00);
  sub_2702B3F1C();
  v9 = MEMORY[0x277D84F90];
  sub_27028B490(&qword_2807C8A08, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8A10);
  sub_27028B4D8(&qword_2807C8A18, &qword_2807C8A10);
  sub_2702B443C();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v8);
  *(v0 + 24) = sub_2702B437C();
  *(v0 + 32) = 0;
  sub_2702B3D7C();
  return v0;
}

uint64_t type metadata accessor for MobileAssetUIUModelLocator()
{
  result = qword_2807C89F0;
  if (!qword_2807C89F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27028B288()
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

uint64_t sub_27028B418()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}