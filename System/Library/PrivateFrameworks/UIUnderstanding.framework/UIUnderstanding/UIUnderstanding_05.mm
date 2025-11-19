void sub_2702A7874(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (v2[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_2702A6938(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v10 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v10;
    *(v6[7] + 8 * v5) = v3;
    v11 = v6[2];
    v9 = __OFADD__(v11, 1);
    v4 = v11 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

void (*sub_2702A7994(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_2702B3CEC();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_27025E770(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_2702B05EC();
      v15 = v23;
      goto LABEL_14;
    }

    sub_2702AFB44(v20, a3 & 1);
    v15 = sub_27025E770(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_2702B480C();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_2702A7B44;
}

void sub_2702A7B44(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_2702A7398(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_2702A6AC0(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_2702A7C44(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2702A889C;
}

uint64_t (*sub_2702A7C6C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2702A7C94;
}

void sub_2702A7D08(uint64_t a1, uint64_t a2, double (*a3)(uint64_t, double, double, double, double))
{
  v5 = (a1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  v6 = swift_beginAccess();
  v7 = a3(v6, *v5, v5[1], v5[2], v5[3]);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = (a2 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  v9 = swift_beginAccess();
  v10 = a3(v9, *v8, v8[1], v8[2], v8[3]);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
  }
}

void _s15UIUnderstanding9UIUSorterC20compareForNavigation3box8otherBox16topEdgeThresholdSbAA08BoundingH0C_AISitFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  MinY = CGRectGetMinY(*v6);
  if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (MinY <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (MinY >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = (a2 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  v9 = CGRectGetMinY(*v8);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = MinY - v9;
  if (__OFSUB__(MinY, v9))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  if (v10 < 0)
  {
    v11 = __OFSUB__(0, v10);
    v10 = v9 - MinY;
    if (v11)
    {
      goto LABEL_21;
    }
  }

  if (v10 >= a3)
  {
    v12 = MEMORY[0x277CBF378];
  }

  else
  {
    v12 = MEMORY[0x277CBF380];
  }

  sub_2702A7D08(a1, a2, v12);
}

uint64_t _s15UIUnderstanding9UIUSorterC25getXCutSegmentationPoints10detectionsSDySdSayAA8UIObjectCGGAH_tFZ_0(unint64_t a1)
{
  v65 = sub_27025FF6C(MEMORY[0x277D84F90]);

  v64[0] = sub_2702A0370(v2);
  v3 = 0;
  sub_2702A5540(v64);
  v4 = v64[0];
  if ((v64[0] & 0x8000000000000000) != 0 || (v64[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_60;
  }

  v5 = v64[0][2];
  v60 = a1;
  if (v5)
  {
    while (v5 >= 1)
    {
      v61 = v3;
      a1 = 0;
      v6 = MEMORY[0x277D84F90];
      v7 = 0.0;
      v3 = 0xC3E0000000000001;
      while (1)
      {
        v8 = (v4 & 0xC000000000000001) != 0 ? MEMORY[0x27439C0F0](a1, v4) : *(v4 + 8 * a1 + 32);
        v9 = v8;
        v10 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v11 = (*&v9[v10] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
        swift_beginAccess();
        MinX = CGRectGetMinX(*v11);
        if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (MinX <= -9.22337204e18)
        {
          goto LABEL_41;
        }

        if (MinX >= 9.22337204e18)
        {
          goto LABEL_42;
        }

        v13 = v5;
        v14 = *&v9[v10];
        v15 = &v14[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        if (v7 >= MinX)
        {
          swift_beginAccess();
          x = v15->origin.x;
          y = v15->origin.y;
          width = v15->size.width;
          height = v15->size.height;
          v32 = v14;
          v67.origin.x = x;
          v67.origin.y = y;
          v67.size.width = width;
          v67.size.height = height;
          v33 = CGRectGetMinX(v67);
          if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_43;
          }

          if (v33 <= -9.22337204e18)
          {
            goto LABEL_45;
          }

          if (v33 >= 9.22337204e18)
          {
            goto LABEL_48;
          }

          v34 = CGRectGetWidth(*v15);

          if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_49;
          }

          if (v34 <= -9.22337204e18)
          {
            goto LABEL_51;
          }

          if (v34 >= 9.22337204e18)
          {
            goto LABEL_53;
          }

          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_56;
          }

          if (v7 < v35)
          {
            v7 = v35;
          }
        }

        else
        {
          swift_beginAccess();
          v16 = CGRectGetMinX(*v15);
          if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_44;
          }

          if (v16 <= -9.22337204e18)
          {
            goto LABEL_46;
          }

          if (v16 >= 9.22337204e18)
          {
            goto LABEL_47;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2702910F8(0, *(v6 + 2) + 1, 1, v6);
          }

          v18 = *(v6 + 2);
          v17 = *(v6 + 3);
          if (v18 >= v17 >> 1)
          {
            v6 = sub_2702910F8((v17 > 1), v18 + 1, 1, v6);
          }

          *(v6 + 2) = v18 + 1;
          *&v6[8 * v18 + 32] = (v7 + v16) * 0.5;
          v19 = *&v9[v10];
          v20 = &v19[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v21 = v20->origin.x;
          v22 = v20->origin.y;
          v23 = v20->size.width;
          v24 = v20->size.height;
          v25 = v19;
          v66.origin.x = v21;
          v66.origin.y = v22;
          v66.size.width = v23;
          v66.size.height = v24;
          v26 = CGRectGetMinX(v66);
          if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_50;
          }

          if (v26 <= -9.22337204e18)
          {
            goto LABEL_52;
          }

          if (v26 >= 9.22337204e18)
          {
            goto LABEL_54;
          }

          v27 = CGRectGetWidth(*v20);

          if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_55;
          }

          if (v27 <= -9.22337204e18)
          {
            goto LABEL_57;
          }

          if (v27 >= 9.22337204e18)
          {
            goto LABEL_58;
          }

          if (__OFADD__(v26, v27))
          {
            goto LABEL_59;
          }

          v7 = (v26 + v27);
        }

        ++a1;
        v5 = v13;
        if (v13 == a1)
        {

          a1 = v60;
          v3 = v61;
          goto LABEL_62;
        }
      }

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
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v5 = sub_2702B45FC();
      v60 = a1;
      if (!v5)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_61:

    v6 = MEMORY[0x277D84F90];
LABEL_62:
    v64[0] = v6;

    sub_2702A55BC(v64);
    if (!v3)
    {

      v36 = v64[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_97;
      }

      while (1)
      {
        v38 = *(v36 + 2);
        v37 = *(v36 + 3);
        if (v38 >= v37 >> 1)
        {
          v36 = sub_2702910F8((v37 > 1), v38 + 1, 1, v36);
        }

        *(v36 + 2) = v38 + 1;
        *&v36[8 * v38 + 32] = 0x7FEFFFFFFFFFFFFFLL;
        if (a1 >> 62)
        {
          v39 = sub_2702B45FC();
          if (!v39)
          {
LABEL_99:

            return v65;
          }
        }

        else
        {
          v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v39)
          {
            goto LABEL_99;
          }
        }

        v40 = 0;
        v41 = *(v36 + 2);
        v63 = a1 & 0xC000000000000001;
        v58 = a1 + 32;
        v59 = a1 & 0xFFFFFFFFFFFFFF8;
        a1 = 0xC3E0000000000001;
        v62 = v39;
        while (1)
        {
          if (v63)
          {
            v42 = MEMORY[0x27439C0F0](v40, v60);
          }

          else
          {
            if (v40 >= *(v59 + 16))
            {
              goto LABEL_96;
            }

            v42 = *(v58 + 8 * v40);
          }

          v43 = v42;
          if (__OFADD__(v40++, 1))
          {
            break;
          }

          v45 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v46 = 0;
          do
          {
            if (v41 == v46)
            {
              goto LABEL_71;
            }

            if (v46 >= *(v36 + 2))
            {
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            v47 = *&v36[8 * v46 + 32];
            v48 = (*&v43[v45] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
            swift_beginAccess();
            v49 = CGRectGetMinX(*v48);
            if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_92;
            }

            if (v49 <= -9.22337204e18)
            {
              goto LABEL_93;
            }

            if (v49 >= 9.22337204e18)
            {
              goto LABEL_94;
            }

            ++v46;
          }

          while (v47 <= v49);
          v50 = v65;
          if (v65[2])
          {
            sub_27025E694(v47);
            if (v51)
            {
              v53 = sub_2702A497C(v64, v47);
              if (*v52)
              {
                v54 = v52;
                v43 = v43;
                MEMORY[0x27439BDA0]();
                if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_2702B41CC();
                }

                sub_2702B41EC();
              }

              (v53)(v64, 0);
LABEL_71:

              goto LABEL_72;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83A8);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_2702B7B30;
          *(v55 + 32) = v43;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64[0] = v50;
          sub_2702A6D78(v55, isUniquelyReferenced_nonNull_native, v47);
          v65 = v64[0];
LABEL_72:
          if (v40 == v62)
          {
            goto LABEL_99;
          }
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        v36 = sub_2702910F8(0, *(v36 + 2) + 1, 1, v36);
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2702A87E8()
{
  result = qword_2807C84E0;
  if (!qword_2807C84E0)
  {
    sub_2702B3CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C84E0);
  }

  return result;
}

Swift::Bool __swiftcall ClickabilityType.isClickable()()
{
  v1 = v0;
  v2 = sub_27025FE5C(&unk_2880365E0);
  if (*(v2 + 16) && (v3 = sub_270260FAC(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ClickabilityType.compare(_:)(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2702B7910;
  *(inited + 32) = 0;
  *(inited + 40) = a2 < 2;
  *(inited + 48) = 1;
  *(inited + 56) = a2 < 2;
  *(inited + 64) = 2;
  *(inited + 72) = (a2 & 0xFFFFFFFFFFFFFFFELL) == 2;
  *(inited + 80) = 3;
  *(inited + 88) = a2 == 4;
  *(inited + 96) = 4;
  *(inited + 104) = a2 - 5 < 2;
  *(inited + 112) = 5;
  *(inited + 120) = a2 == 7;
  *(inited + 128) = 6;
  *(inited + 136) = (a2 & 0xFFFFFFFFFFFFFFFELL) == 8;
  *(inited + 144) = 7;
  *(inited + 152) = a2 == 10;
  *(inited + 160) = 8;
  *(inited + 168) = a2 == 11;
  *(inited + 176) = 10;
  *(inited + 184) = (a2 & 0xFFFFFFFFFFFFFFFELL) == 12;
  *(inited + 192) = 11;
  *(inited + 200) = a2 == 14;
  *(inited + 208) = 12;
  v5 = a2 - 15 < 2;
  *(inited + 216) = v5;
  *(inited + 224) = 13;
  *(inited + 232) = v5;
  *(inited + 240) = 9;
  *(inited + 248) = 0;
  *(inited + 256) = 14;
  *(inited + 264) = 0;
  *(inited + 272) = -1;
  *(inited + 280) = 0;
  v6 = sub_2702606F4(inited);
  swift_setDeallocating();
  if (*(v6 + 16) && (v7 = sub_270260FAC(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t ClickabilityType.compareWithoutState(_:)(unint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  if (a2 > 7)
  {
    if (a2 <= 0x10)
    {
      if (((1 << a2) & 0x300) != 0)
      {
        if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 8)
        {
          return 1;
        }
      }

      else if (((1 << a2) & 0x3000) != 0)
      {
        if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
        {
          return 1;
        }
      }

      else if (((1 << a2) & 0x18000) != 0 && a1 - 15 < 2)
      {
        return 1;
      }
    }
  }

  else if (a2 < 2)
  {
    if (a1 < 2)
    {
      return 1;
    }
  }

  else if ((a2 - 2) < 2)
  {
    if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      return 1;
    }
  }

  else if ((a2 - 5) < 2 && a1 - 5 < 2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2702A8E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2702A8F14(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2702A8F14(uint64_t result)
{
  if ((result + 1) >= 0x12)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2702A8F30()
{
  result = qword_2807C8C48;
  if (!qword_2807C8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8C48);
  }

  return result;
}

unint64_t sub_2702A8F88()
{
  result = qword_2807C8C50;
  if (!qword_2807C8C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C8C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8C50);
  }

  return result;
}

unint64_t sub_2702A8FFC()
{
  result = qword_2807C8C60;
  if (!qword_2807C8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8C60);
  }

  return result;
}

id FocusDetection.__allocating_init(focused:confidence:)(char a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused] = a1;
  *&v5[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FocusDetection.init(focused:confidence:)(char a1, double a2)
{
  v2[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused] = a1;
  *&v2[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FocusDetection();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_2702A91D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8C78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2702A9A3C();
  sub_2702B48DC();
  v8[15] = 0;
  sub_2702B46DC();
  if (!v1)
  {
    v8[14] = 1;
    sub_2702B46EC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2702A9368(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E656469666E6F63;
  }

  else
  {
    v3 = 0x7375636F66;
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
    v5 = 0x7375636F66;
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

uint64_t sub_2702A9410()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

uint64_t sub_2702A9494()
{
  sub_2702B40BC();
}

uint64_t sub_2702A9504()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

uint64_t sub_2702A9584@<X0>(char *a1@<X8>)
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

void sub_2702A95E4(uint64_t *a1@<X8>)
{
  v2 = 0x7375636F66;
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

uint64_t sub_2702A9624()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x7375636F66;
  }
}

uint64_t sub_2702A9660@<X0>(char *a1@<X8>)
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

uint64_t sub_2702A96C4(uint64_t a1)
{
  v2 = sub_2702A9A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2702A9700(uint64_t a1)
{
  v2 = sub_2702A9A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

id FocusDetection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FocusDetection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusDetection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2702A9804@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2702A9854(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_2702A9854(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8CA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2702A9A3C();
  sub_2702B48CC();
  if (!v1)
  {
    v15 = 0;
    v8 = sub_2702B468C();
    v15 = 1;
    sub_2702B469C();
    v11 = v10;
    v12 = type metadata accessor for FocusDetection();
    v13 = objc_allocWithZone(v12);
    v13[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused] = v8 & 1;
    *&v13[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence] = v11;
    v14.receiver = v13;
    v14.super_class = v12;
    v7 = objc_msgSendSuper2(&v14, sel_init);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_2702A9A3C()
{
  result = qword_2807C8C80;
  if (!qword_2807C8C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8C80);
  }

  return result;
}

unint64_t sub_2702A9B40()
{
  result = qword_2807C8C88;
  if (!qword_2807C8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8C88);
  }

  return result;
}

unint64_t sub_2702A9B98()
{
  result = qword_2807C8C90;
  if (!qword_2807C8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8C90);
  }

  return result;
}

unint64_t sub_2702A9BF0()
{
  result = qword_2807C8C98;
  if (!qword_2807C8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8C98);
  }

  return result;
}

uint64_t sub_2702A9CCC()
{
  result = sub_270286988(&unk_288036408);
  qword_2807CD578 = result;
  return result;
}

unint64_t ModelPlatform.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2702A9D14@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t UIUDetector.init(platform:elementConfidenceThresholds:clickabilityConfidenceThresholds:elementConfig:clickabilityConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = v5;
  v11 = &v7[OBJC_IVAR___UIUDetectorCompat_clickabilityDetector];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *&v7[OBJC_IVAR___UIUDetectorCompat_iconDetector] = 0;
  v12 = &v7[OBJC_IVAR___UIUDetectorCompat_focusElementDetector];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v13 = OBJC_IVAR___UIUDetectorCompat_clickabilityConfig;
  v44 = a5;
  *&v7[OBJC_IVAR___UIUDetectorCompat_clickabilityConfig] = a5;
  *&v7[OBJC_IVAR___UIUDetectorCompat_modelPlatform] = a1;
  type metadata accessor for UIUGrouper();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *&v7[OBJC_IVAR___UIUDetectorCompat_grouper] = v14;
  v40 = a3;
  if (a1 == 2)
  {
    v22 = qword_2807C8270;
    v37 = v44;
    if (v22 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = qword_2807C8A70;
    v24 = sub_27028D568(1);
    if (!v6)
    {
      v27 = v24;

      v43 = type metadata accessor for ElementDetectionTV();
      *&v42 = v27;
      sub_270260FB0(&v42, &v7[OBJC_IVAR___UIUDetectorCompat_elementDetector]);
      if (qword_2807C8250 != -1)
      {
        swift_once();
      }

      *&v7[OBJC_IVAR___UIUDetectorCompat_elementConfidenceThresholds] = qword_2807CD4D8;
      v28 = qword_2807C8260;

      if (v28 != -1)
      {
        swift_once();
      }

      *&v7[OBJC_IVAR___UIUDetectorCompat_clickabilityConfidenceThresholds] = qword_2807CD4E8;
      v29 = qword_2807C8A70;

      v30 = v29;
      v35 = sub_27028EDE8(0);

      v43 = type metadata accessor for FocusElement();
      *&v42 = v35;
      swift_beginAccess();
      sub_2702863BC(&v42, v12);
      swift_endAccess();
      v33 = v40;
      if (!a2)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_20:

    sub_2702643E4(v11, &qword_2807C8978);

    sub_2702643E4(v12, &qword_2807C8978);
    type metadata accessor for UIUDetector();
    swift_deallocPartialClassInstance();
    return v7;
  }

  v38 = a2;
  if (a1 == 1)
  {
    v15 = qword_2807C8270;
    v16 = v44;
    if (v15 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = qword_2807C8A70;
    v18 = sub_27028D248(1);
    if (!v6)
    {
      v19 = v18;

      v43 = type metadata accessor for ElementMindNetSquare();
      *&v42 = v19;
      sub_270260FB0(&v42, &v7[OBJC_IVAR___UIUDetectorCompat_elementDetector]);
      if (qword_2807C8250 != -1)
      {
        swift_once();
      }

      *&v7[OBJC_IVAR___UIUDetectorCompat_elementConfidenceThresholds] = qword_2807CD4D8;
      v20 = qword_2807C8260;

      a2 = v38;
      if (v20 != -1)
      {
        swift_once();
      }

      v21 = qword_2807CD4E8;
      goto LABEL_31;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!a1)
  {
    v25 = qword_2807C8270;
    v16 = v44;
    if (v25 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = qword_2807C8A70;
    v26 = sub_27028CF2C(1);
    if (!v6)
    {
      v31 = v26;

      v43 = type metadata accessor for ElementMindNetPortrait();
      *&v42 = v31;
      sub_270260FB0(&v42, &v7[OBJC_IVAR___UIUDetectorCompat_elementDetector]);
      if (qword_2807C8248 != -1)
      {
        swift_once();
      }

      *&v7[OBJC_IVAR___UIUDetectorCompat_elementConfidenceThresholds] = qword_2807CD4D0;
      v32 = qword_2807C8258;

      a2 = v38;
      if (v32 != -1)
      {
        swift_once();
      }

      v21 = qword_2807CD4E0;
LABEL_31:
      *&v7[OBJC_IVAR___UIUDetectorCompat_clickabilityConfidenceThresholds] = v21;

      v33 = v40;
      if (!a2)
      {
LABEL_33:
        if (v33)
        {
          *&v7[OBJC_IVAR___UIUDetectorCompat_clickabilityConfidenceThresholds] = v33;
        }

        v41.receiver = v7;
        v41.super_class = type metadata accessor for UIUDetector();
        v7 = objc_msgSendSuper2(&v41, sel_init);

        return v7;
      }

LABEL_32:
      *&v7[OBJC_IVAR___UIUDetectorCompat_elementConfidenceThresholds] = a2;

      goto LABEL_33;
    }

    goto LABEL_19;
  }

  v36 = v44;
  result = sub_2702B47BC();
  __break(1u);
  return result;
}

uint64_t UIUDetector.init(platform:elementConfidenceThresholds:clickabilityConfidenceThresholds:elementConfig:clickabilityConfig:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v69 = a1;
  if (a4)
  {
    v75 = a4;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    a4 = 0;
    v75 = v8;
  }

  v73 = a3;
  v70 = a4;
  if (a5)
  {
    v9 = a4;
    v10 = v75;
    v74 = a5;
  }

  else
  {
    v11 = a4;
    v12 = objc_allocWithZone(MEMORY[0x277CBFF38]);
    v13 = v11;
    v14 = v75;
    v15 = v12;
    a3 = v73;
    v74 = [v15 init];
  }

  v71 = a5;
  v72 = a2;
  if (!a2)
  {
    v37 = a5;
    v38 = v74;
    v68 = 0;
    if (!a3)
    {
LABEL_54:
      v63 = objc_allocWithZone(type metadata accessor for UIUDetector());
      v64 = UIUDetector.init(platform:elementConfidenceThresholds:clickabilityConfidenceThresholds:elementConfig:clickabilityConfig:)(v69, v68, a3, v75, v74);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v64;
    }

LABEL_32:
    v67 = a3;
    v39 = sub_2702B42EC();
    sub_2702B42FC();
    v82 = v78;
    v83 = v79;
    v84 = v80;
    v85 = v81;
    if (*(&v79 + 1))
    {
      v40 = MEMORY[0x277D84F98];
      v41 = MEMORY[0x277D84F70];
      v42 = &selRef_temporaryDirectory;
      while (1)
      {
        sub_270260FB0(&v84, &v78);
        sub_270260FB0(&v82, v77);
        sub_270259880();
        if (swift_dynamicCast())
        {
          sub_2702705C0(&v78, v77);
          if (swift_dynamicCast())
          {
            v43 = sub_2702A8F14([v76 v42[43]]);
            v45 = v44;
            [v76 floatValue];
            if ((v45 & 1) != 0 || v43 == -1)
            {
              __swift_destroy_boxed_opaque_existential_1(&v78);
            }

            else
            {
              v47 = v46;
              v48 = v39;
              v49 = v41;
              v50 = v40;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v77[0] = v40;
              v53 = sub_270260FAC(v43);
              v54 = v40[2];
              v55 = (v52 & 1) == 0;
              v56 = v54 + v55;
              if (__OFADD__(v54, v55))
              {
                goto LABEL_56;
              }

              v57 = v52;
              if (v50[3] >= v56)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_2702B086C(&qword_2807C8530);
                }
              }

              else
              {
                sub_2702AFEF0(v56, isUniquelyReferenced_nonNull_native, &qword_2807C8530);
                v58 = sub_270260FAC(v43);
                if ((v57 & 1) != (v59 & 1))
                {
                  goto LABEL_60;
                }

                v53 = v58;
              }

              v41 = v49;
              v60 = *&v77[0];
              v39 = v48;
              if (v57)
              {
                v40 = *&v77[0];
                *(*(*&v77[0] + 56) + 4 * v53) = v47;

                __swift_destroy_boxed_opaque_existential_1(&v78);
                v42 = &selRef_temporaryDirectory;
              }

              else
              {
                *(*&v77[0] + 8 * (v53 >> 6) + 64) |= 1 << v53;
                *(v60[6] + 8 * v53) = v43;
                *(v60[7] + 4 * v53) = v47;
                v40 = v60;

                __swift_destroy_boxed_opaque_existential_1(&v78);
                v61 = v40[2];
                v30 = __OFADD__(v61, 1);
                v62 = v61 + 1;
                v42 = &selRef_temporaryDirectory;
                if (v30)
                {
                  goto LABEL_58;
                }

                v40[2] = v62;
              }
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v78);
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v78);
        }

        sub_2702B42FC();
        v82 = v78;
        v83 = v79;
        v84 = v80;
        v85 = v81;
        if (!*(&v79 + 1))
        {
          goto LABEL_53;
        }
      }
    }

    v40 = MEMORY[0x277D84F98];
LABEL_53:

    a3 = v40;
    a5 = v71;
    a2 = v72;
    goto LABEL_54;
  }

  v16 = a5;
  v17 = v74;
  v66 = a2;
  sub_2702B42EC();
  sub_2702B42FC();
  v82 = v78;
  v83 = v79;
  v84 = v80;
  v85 = v81;
  if (!*(&v79 + 1))
  {
    v18 = MEMORY[0x277D84F98];
LABEL_31:
    v68 = v18;

    a3 = v73;
    a5 = v71;
    if (!v73)
    {
      goto LABEL_54;
    }

    goto LABEL_32;
  }

  v18 = MEMORY[0x277D84F98];
  while (1)
  {
    sub_270260FB0(&v84, &v78);
    sub_270260FB0(&v82, v77);
    sub_270259880();
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v78);
      goto LABEL_11;
    }

    sub_2702705C0(&v78, v77);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v78);

      goto LABEL_11;
    }

    v19 = sub_27027B034([v76 integerValue]);
    v21 = v20;
    [v76 floatValue];
    if ((v21 & 1) != 0 || v19 == -1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v78);

      goto LABEL_11;
    }

    v23 = v22;
    v24 = v18;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v77[0] = v24;
    v26 = sub_270260FAC(v19);
    v28 = v24[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      break;
    }

    v32 = v27;
    if (v24[3] >= v31)
    {
      if ((v25 & 1) == 0)
      {
        v34 = v26;
        sub_2702B086C(&qword_2807C8538);
        v26 = v34;
        v18 = *&v77[0];
        if (v32)
        {
LABEL_24:
          *(v18[7] + 4 * v26) = v23;

          __swift_destroy_boxed_opaque_existential_1(&v78);
          goto LABEL_11;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_2702AFEF0(v31, v25, &qword_2807C8538);
      v26 = sub_270260FAC(v19);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_59;
      }
    }

    v18 = *&v77[0];
    if (v32)
    {
      goto LABEL_24;
    }

LABEL_26:
    v18[(v26 >> 6) + 8] |= 1 << v26;
    *(v18[6] + 8 * v26) = v19;
    *(v18[7] + 4 * v26) = v23;

    __swift_destroy_boxed_opaque_existential_1(&v78);
    v35 = v18[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_57;
    }

    v18[2] = v36;
LABEL_11:
    sub_2702B42FC();
    v82 = v78;
    v83 = v79;
    v84 = v80;
    v85 = v81;
    if (!*(&v79 + 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_2702B480C();
  __break(1u);
LABEL_60:
  result = sub_2702B480C();
  __break(1u);
  return result;
}

void sub_2702AAC40(CGImage *a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83B8);
  v134 = *(v135 - 8);
  v8 = MEMORY[0x28223BE20](v135);
  v140 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v139 = &v125 - v11;
  MEMORY[0x28223BE20](v10);
  v138 = &v125 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  v154 = *(v141 - 8);
  v13 = MEMORY[0x28223BE20](v141);
  v137 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v136 = &v125 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v133 = &v125 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v125 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8CF0);
  v22 = MEMORY[0x28223BE20](v21);
  *&v147 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v125 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v125 - v27;
  if ((*(v3 + OBJC_IVAR___UIUDetectorCompat_modelPlatform) - 1) > 1 || (Width = CGImageGetWidth(a1), v30 = a1, Width == CGImageGetHeight(a1)))
  {
    v30 = a1;
    v31 = a1;
    v132 = 0;
  }

  else
  {
    v32 = _s15UIUnderstanding11UIUDetectorC17createSquareImageySo10CGImageRefaSgAFFZ_0(a1);
    if (!v32)
    {
      v32 = a1;
    }

    v31 = v32;
    v132 = 1;
  }

  v33 = v31;
  sub_2702ABF38(v28, &v28[*(v21 + 48)], v31);
  if (v4)
  {

    return;
  }

  v145 = v3;
  v142 = v33;
  v127 = 0;
  v130 = v20;
  v129 = a2;
  sub_2702B1A08(v28, v26);
  v34 = &v26[*(v21 + 48)];
  v35 = v154;
  v36 = v154[6];
  v37 = v141;
  v38 = v36(v26, 1, v141);
  v128 = v28;
  if (v38 == 1)
  {
    v39 = v26;
LABEL_14:
    sub_2702643E4(v34, &qword_2807C8980);
    sub_2702643E4(v39, &qword_2807C8980);
    type metadata accessor for UIUDetectorResult();
    sub_270259914(&qword_2807C8490, &qword_2807C83C0);
    v41 = MEMORY[0x277D84F90];
    v42 = v129;
    sub_2702B3E0C();

    sub_2702643E4(v128, &qword_2807C8CF0);
    *v42 = v41;
    return;
  }

  v146 = v35[4];
  v146(v130, v26, v37);
  sub_2702643E4(v34, &qword_2807C8980);
  v40 = v28;
  v39 = v147;
  sub_2702B1A08(v40, v147);
  v34 = v39 + *(v21 + 48);
  if (v36(v34, 1, v37) == 1)
  {
    (v35[1])(v130, v37);
    goto LABEL_14;
  }

  v131 = v30;
  v125 = v35 + 4;
  v146(v133, v34, v37);
  sub_2702643E4(v39, &qword_2807C8980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83D0);
  v43 = swift_allocObject();
  v147 = xmmword_2702B87C0;
  *(v43 + 16) = xmmword_2702B87C0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83D8);
  *(v43 + 56) = v44;
  v45 = sub_270259914(&qword_2807C83E0, &qword_2807C83D8);
  *(v43 + 64) = v45;
  *(v43 + 32) = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B68);
  *(v43 + 96) = v46;
  v47 = sub_270259914(&qword_2807C8B70, &qword_2807C8B68);
  *(v43 + 72) = xmmword_2702B8D60;
  *(v43 + 136) = v44;
  *(v43 + 144) = v45;
  *(v43 + 104) = v47;
  *(v43 + 112) = 0;
  *(v43 + 176) = v44;
  *(v43 + 184) = v45;
  *(v43 + 152) = 0;
  sub_270259914(&qword_2807C8490, &qword_2807C83C0);
  sub_2702B3E4C();

  v48 = swift_allocObject();
  *(v48 + 16) = v147;
  *(v48 + 56) = v44;
  *(v48 + 64) = v45;
  *(v48 + 32) = 0;
  *(v48 + 96) = v46;
  *(v48 + 104) = v47;
  *(v48 + 72) = xmmword_2702B8D70;
  *(v48 + 136) = v44;
  *(v48 + 144) = v45;
  *(v48 + 112) = 0;
  *(v48 + 176) = v44;
  *(v48 + 184) = v45;
  *(v48 + 152) = 0;
  sub_2702B3E4C();

  v49 = swift_allocObject();
  *(v49 + 16) = v147;
  *(v49 + 56) = v44;
  *(v49 + 64) = v45;
  *(v49 + 32) = 0;
  *(v49 + 96) = v46;
  *(v49 + 104) = v47;
  *(v49 + 72) = xmmword_2702B8D80;
  *(v49 + 136) = v44;
  *(v49 + 144) = v45;
  *(v49 + 112) = 0;
  *(v49 + 176) = v44;
  *(v49 + 184) = v45;
  *(v49 + 152) = 0;
  v50 = v140;
  sub_2702B3E4C();

  *&v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B78);
  v51 = v134;
  v52 = *(v134 + 72);
  v53 = (*(v134 + 80) + 32) & ~*(v134 + 80);
  v144 = v53 + 2 * v52;
  v126 = v52;
  v54 = swift_allocObject();
  v143 = xmmword_2702B7C20;
  *(v54 + 16) = xmmword_2702B7C20;
  v55 = *(v51 + 16);
  v56 = v135;
  v55(v54 + v53, v50, v135);
  v55(v54 + v53 + v52, v138, v56);
  v153 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B80);
  sub_270259914(&qword_2807C8B88, &qword_2807C8B80);
  sub_270259914(&qword_2807C83F8, &qword_2807C83B8);
  sub_2702B3D9C();
  v57 = swift_allocObject();
  *(v57 + 16) = v143;
  v58 = v57 + v53;
  v55(v58, v140, v56);
  v55(v58 + v126, v139, v56);
  v153 = v57;
  sub_2702B3D9C();
  if (qword_2807C8280 != -1)
  {
    swift_once();
  }

  v59 = 0;
  v60 = qword_2807CD578;
  v61 = qword_2807CD578 + 56;
  v62 = MEMORY[0x277D84F90];
  do
  {
    v65 = qword_288036368[v59 + 4];
    if (!*(v60 + 16))
    {
      goto LABEL_29;
    }

    sub_2702B487C();
    MEMORY[0x27439C490](v65);
    v66 = sub_2702B48AC();
    v67 = -1 << *(v60 + 32);
    v68 = v66 & ~v67;
    if (((*(v61 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
    {
      goto LABEL_29;
    }

    v69 = ~v67;
    while (*(*(v60 + 48) + 8 * v68) != v65)
    {
      v68 = (v68 + 1) & v69;
      if (((*(v61 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (v65 > 13)
    {
LABEL_29:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152 = v62;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27029C400(0, *(v62 + 16) + 1, 1);
        v62 = v152;
      }

      v64 = *(v62 + 16);
      v63 = *(v62 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_27029C400((v63 > 1), v64 + 1, 1);
        v62 = v152;
      }

      *(v62 + 16) = v64 + 1;
      *(v62 + 8 * v64 + 32) = v65;
    }

    ++v59;
  }

  while (v59 != 16);
  v71 = sub_2702B1974(v62, sub_2702B1C14, &type metadata for UIType, &qword_2807C89B0);

  v72 = v142;
  v73 = CGImageGetWidth(v142);
  Height = CGImageGetHeight(v72);
  v75 = sub_2702ACC00(a3, v73, Height, v136, v71);

  v76 = sub_2702ACC00(a3, v73, Height, v137, v60);
  v153 = v75;
  sub_27029B628(v76);
  v77 = v153;
  if (v153 >> 62)
  {
    v78 = sub_2702B45FC();
    v79 = v146;
    if (v78)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v78 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v79 = v146;
    if (v78)
    {
LABEL_33:
      v148 = MEMORY[0x277D84F90];
      v80 = &v148;
      sub_2702B456C();
      if (v78 < 0)
      {
        goto LABEL_58;
      }

      v81 = 0;
      *&v143 = v77 & 0xC000000000000001;
      v145 = v77;
      v144 = v78;
      do
      {
        if (v143)
        {
          v82 = MEMORY[0x27439C0F0](v81, v77);
        }

        else
        {
          v82 = *(v77 + 8 * v81 + 32);
        }

        v83 = sub_27027B034(*(v82 + 32));
        if (v84)
        {
          v85 = -1;
        }

        else
        {
          v85 = v83;
        }

        ++v81;
        v86 = *(v82 + 16);
        swift_beginAccess();
        v87 = *(v82 + 24);
        *&v147 = objc_allocWithZone(type metadata accessor for UIObject());
        v88 = type metadata accessor for UIDetection();
        v89 = objc_allocWithZone(v88);
        v90 = &v89[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
        *v90 = 0;
        *(v90 + 1) = 0;
        *&v89[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature] = 0;
        *&v89[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label] = v85;
        *&v89[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence] = v86;
        swift_beginAccess();
        *v90 = 0;
        *(v90 + 1) = 0;
        v151.receiver = v89;
        v151.super_class = v88;
        v91 = v87;
        v92 = [(CGImage *)&v151 init];
        v93 = type metadata accessor for ClickabilityDetection();
        v94 = objc_allocWithZone(v93);
        v94[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = 0;
        *&v94[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = -1;
        *&v94[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = 0;
        v150.receiver = v94;
        v150.super_class = v93;
        v95 = [(CGImage *)&v150 init];
        v96 = type metadata accessor for FocusDetection();
        v97 = objc_allocWithZone(v96);
        v97[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused] = 0;
        *&v97[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence] = 0;
        v149.receiver = v97;
        v149.super_class = v96;
        v98 = [(CGImage *)&v149 init];
        v99 = v95;
        v100 = v98;
        v101 = sub_2702B41AC();
        [v147 initWithDetection:v92 clickable:v99 focused:v100 icon:0 boundingBox:v91 children:v101];

        sub_2702B454C();
        sub_2702B457C();
        sub_2702B458C();
        sub_2702B455C();
        v79 = v146;
        v77 = v145;
      }

      while (v144 != v81);

      v60 = v148;
      goto LABEL_45;
    }
  }

  v60 = MEMORY[0x277D84F90];
LABEL_45:
  v80 = v154;
  v102 = v142;
  if (v132)
  {
    if (v60 >> 62)
    {
      goto LABEL_59;
    }

    v103 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v103)
    {
      do
      {
        v104 = 0;
        while (1)
        {
          if ((v60 & 0xC000000000000001) != 0)
          {
            v105 = MEMORY[0x27439C0F0](v104, v60);
          }

          else
          {
            if (v104 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v105 = *(v60 + 8 * v104 + 32);
          }

          v106 = v105;
          v107 = v104 + 1;
          if (__OFADD__(v104, 1))
          {
            break;
          }

          v108 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v109 = *&v106[v108];
          v110 = sub_2702995E0(v131);
          v112 = v111;
          v114 = v113;
          v116 = v115;

          v117 = &v106[OBJC_IVAR___UIObjectCompat_normalizedSquaredRect];
          swift_beginAccess();
          *v117 = v110;
          *(v117 + 1) = v112;
          *(v117 + 2) = v114;
          *(v117 + 3) = v116;
          v117[32] = 0;
          v80 = v154;

          ++v104;
          v102 = v142;
          if (v107 == v103)
          {
            goto LABEL_60;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v118 = sub_2702B45FC();
        v102 = v142;
        v103 = v118;
      }

      while (v118);
    }

LABEL_60:
    v79 = v146;
  }

  v119 = v80[1];
  v120 = v141;
  v119(v137, v141);
  v119(v136, v120);
  v121 = *(v134 + 8);
  v122 = v135;
  v121(v140, v135);
  v121(v139, v122);
  v121(v138, v122);
  v119(v130, v120);
  sub_2702643E4(v128, &qword_2807C8CF0);
  v123 = type metadata accessor for UIUDetectorResult();
  v124 = v129;
  v79(v129 + *(v123 + 20), v133, v120);
  *v124 = v60;
}

void sub_2702ABDB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v5 = (*(v2 + v4) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  MinX = CGRectGetMinX(*v5);
  if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (MinX <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (MinX >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v8 = (*(v3 + v7) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  v9 = CGRectGetMinX(*v8);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_2702ABF38(uint64_t a1, uint64_t a2, void *a3)
{
  v106 = a1;
  v105 = a3;
  v109[4] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8980);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v99 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v101 = &v99 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v99 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v100 = &v99 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v99 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v99 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v27 = v25 + 56;
  v107 = v23;
  v28 = v23;
  v29 = v24;
  v26(v28, 1, 1, v24);
  v103 = v26;
  v104 = a2;
  v102 = v27;
  v26(a2, 1, 1, v29);
  v30 = *(v3 + OBJC_IVAR___UIUDetectorCompat_modelPlatform);
  if (v30 == 2)
  {
    v53 = v11;
    sub_2702705C0(v3 + OBJC_IVAR___UIUDetectorCompat_elementDetector, v109);
    type metadata accessor for ElementDetectionTV();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_30;
    }

    v54 = v108;
    v55 = objc_opt_self();
    v109[0] = 0;
    v33 = v105;
    v56 = [v55 featureValueWithCGImage:v33 pixelsWide:960 pixelsHigh:544 pixelFormatType:32 options:0 error:v109];
    if (!v56)
    {
      goto LABEL_33;
    }

    v57 = v56;
    v58 = v109[0];

    v59 = [v57 imageBufferValue];
    if (!v59)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    type metadata accessor for ElementDetectionTVInput();
    v60 = swift_allocObject();
    *(v60 + 16) = v59;

    v33 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
    v61 = *(v54 + 16);
    v109[0] = 0;
    v62 = [v61 predictionFromFeatures:v60 options:v33 error:v109];
    if (!v62)
    {
      v91 = v109[0];
      sub_2702B3C0C();

      swift_willThrow();

      goto LABEL_36;
    }

    v63 = v62;
    v64 = v109[0];

    v65 = sub_2702B3FFC();
    v66 = [v63 featureValueForName_];

    v67 = v53;
    if (v66)
    {
      if ([v66 multiArrayValue])
      {
        sub_2702B3DDC();

        goto LABEL_39;
      }
    }

    sub_270259914(&qword_2807C8490, &qword_2807C83C0);
    sub_2702B3E0C();
LABEL_39:
    v92 = v104;
    sub_2702643E4(v104, &qword_2807C8980);
    v93 = v53;
    v94 = v29;
    v103(v93, 0, 1, v29);
    sub_2702864D8(v67, v92);
    v95 = sub_2702B3FFC();
    v96 = [v63 featureValueForName_];

    if (v96)
    {
      v97 = [v96 multiArrayValue];

      v98 = v107;
      if (v97)
      {
        sub_270259914(&qword_2807C8490, &qword_2807C83C0);
        sub_2702B3DEC();
        swift_unknownObjectRelease();

        sub_2702643E4(v98, &qword_2807C8980);
        v103(v8, 0, 1, v94);
        sub_2702864D8(v8, v98);
        v87 = v98;
        return sub_2702864D8(v87, v106);
      }

      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v30 == 1)
  {
    sub_2702705C0(v3 + OBJC_IVAR___UIUDetectorCompat_elementDetector, v109);
    type metadata accessor for ElementMindNetSquare();
    if (swift_dynamicCast())
    {
      v31 = v108;
      v32 = objc_opt_self();
      v109[0] = 0;
      v33 = v105;
      v34 = [v32 featureValueWithCGImage:v33 pixelsWide:896 pixelsHigh:896 pixelFormatType:32 options:0 error:v109];
      if (v34)
      {
        v35 = v34;
        v36 = v109[0];

        v37 = [v35 imageBufferValue];
        if (v37)
        {
          type metadata accessor for ElementMindNetSquareInput();
          v38 = swift_allocObject();
          *(v38 + 16) = v37;

          v33 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
          v39 = *(v31 + 16);
          v109[0] = 0;
          v40 = [v39 predictionFromFeatures:v38 options:v33 error:v109];
          v41 = v109[0];
          if (v40)
          {
            v42 = v40;
            v43 = v109[0];

            v44 = sub_2702B3FFC();
            v45 = [v42 featureValueForName_];

            if (v45)
            {
              v46 = [v45 multiArrayValue];

              if (v46)
              {
                sub_2702B3DDC();
                v47 = v107;
                sub_2702643E4(v107, &qword_2807C8980);
                v103(v16, 0, 1, v29);
                v48 = v47;
                sub_2702864D8(v16, v47);
                v49 = sub_2702B3FFC();
                v50 = [v42 featureValueForName_];

                if (v50)
                {
                  v51 = [v50 multiArrayValue];

                  if (v51)
                  {
                    v52 = v101;
                    sub_2702B3DDC();
LABEL_29:
                    swift_unknownObjectRelease();

                    v86 = v104;
                    sub_2702643E4(v104, &qword_2807C8980);
                    v103(v52, 0, 1, v29);
                    sub_2702864D8(v52, v86);
                    v87 = v48;
                    return sub_2702864D8(v87, v106);
                  }

                  goto LABEL_53;
                }

                goto LABEL_51;
              }

              goto LABEL_48;
            }

            goto LABEL_45;
          }

          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_43;
      }

LABEL_33:
      v90 = v109[0];

      sub_2702B3C0C();
      swift_willThrow();
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (!v30)
  {
    sub_2702705C0(v3 + OBJC_IVAR___UIUDetectorCompat_elementDetector, v109);
    type metadata accessor for ElementMindNetPortrait();
    if (swift_dynamicCast())
    {
      v68 = v108;
      v69 = objc_opt_self();
      v109[0] = 0;
      v33 = v105;
      v70 = [v69 featureValueWithCGImage:v33 pixelsWide:416 pixelsHigh:896 pixelFormatType:32 options:0 error:v109];
      if (v70)
      {
        v71 = v70;
        v72 = v109[0];

        v73 = [v71 imageBufferValue];
        if (v73)
        {
          type metadata accessor for ElementMindNetPortraitInput();
          v74 = swift_allocObject();
          *(v74 + 16) = v73;

          v33 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
          v75 = *(v68 + 16);
          v109[0] = 0;
          v76 = [v75 predictionFromFeatures:v74 options:v33 error:v109];
          v41 = v109[0];
          if (v76)
          {
            v77 = v76;
            v78 = v109[0];

            v79 = sub_2702B3FFC();
            v80 = [v77 featureValueForName_];

            if (v80)
            {
              v81 = [v80 multiArrayValue];

              if (v81)
              {
                sub_2702B3DDC();
                v82 = v107;
                sub_2702643E4(v107, &qword_2807C8980);
                v103(v21, 0, 1, v29);
                v48 = v82;
                sub_2702864D8(v21, v82);
                v83 = sub_2702B3FFC();
                v84 = [v77 featureValueForName_];

                if (v84)
                {
                  v85 = [v84 multiArrayValue];

                  if (v85)
                  {
                    v52 = v100;
                    sub_2702B3DDC();
                    goto LABEL_29;
                  }

                  goto LABEL_54;
                }

                goto LABEL_52;
              }

              goto LABEL_50;
            }

            goto LABEL_47;
          }

LABEL_32:
          v89 = v41;
          sub_2702B3C0C();

          swift_willThrow();

LABEL_36:

          sub_2702643E4(v104, &qword_2807C8980);
          return sub_2702643E4(v107, &qword_2807C8980);
        }

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
        goto LABEL_55;
      }

      goto LABEL_33;
    }

LABEL_30:
    v87 = v107;
    return sub_2702864D8(v87, v106);
  }

LABEL_55:
  v109[0] = v30;
  result = sub_2702B47BC();
  __break(1u);
  return result;
}

uint64_t sub_2702ACC00(float a1, float64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83B8);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  sub_2702B3DCC();
  v39 = v19;
  v40 = v14;
  (*(v14 + 16))(v17, v19, v13);
  sub_270259914(&qword_2807C8490, &qword_2807C83C0);
  sub_270259914(&qword_2807C83F8, &qword_2807C83B8);
  sub_2702B3DFC();
  v20 = *(v41 + OBJC_IVAR___UIUDetectorCompat_elementConfidenceThresholds);

  v21.f64[0] = a2;
  v22.n128_f64[0] = a3;
  v23 = sub_270284514(v12, v20, v21, v22);

  (*(v10 + 8))(v12, v9);
  v42 = MEMORY[0x277D84F90];
  if (v23 >> 62)
  {
LABEL_22:
    v24 = sub_2702B45FC();
    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_3:
      v38 = v13;
      v25 = 0;
      v26 = v23 & 0xC000000000000001;
      v27 = v23 & 0xFFFFFFFFFFFFFF8;
      v41 = v23;
      v13 = v23 + 32;
      v23 = a5 + 56;
      while (1)
      {
        while (1)
        {
          if (v26)
          {
            v28 = MEMORY[0x27439C0F0](v25, v41);
            v29 = __OFADD__(v25++, 1);
            if (v29)
            {
LABEL_19:
              __break(1u);
LABEL_20:
              v35 = v42;
              v13 = v38;
              goto LABEL_24;
            }
          }

          else
          {
            if (v25 >= *(v27 + 16))
            {
              __break(1u);
              goto LABEL_22;
            }

            v28 = *(v13 + 8 * v25);

            v29 = __OFADD__(v25++, 1);
            if (v29)
            {
              goto LABEL_19;
            }
          }

          v30 = *(v28 + 32);
          if ((v30 + 1) <= 0xF)
          {
            break;
          }

LABEL_15:

          if (v25 == v24)
          {
            goto LABEL_20;
          }
        }

        if (*(a5 + 16))
        {
          sub_2702B487C();
          MEMORY[0x27439C490](v30);
          v31 = sub_2702B48AC();
          v32 = -1 << *(a5 + 32);
          v33 = v31 & ~v32;
          if ((*(v23 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            while (*(*(a5 + 48) + 8 * v33) != v30)
            {
              v33 = (v33 + 1) & v34;
              if (((*(v23 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_4;
              }
            }

            goto LABEL_15;
          }
        }

LABEL_4:
        sub_2702B454C();
        sub_2702B457C();
        sub_2702B458C();
        sub_2702B455C();
        if (v25 == v24)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_24:

  v36 = _s15UIUnderstanding19CenterNetPredictionC24nonMaximalSuppressionIOU5boxes9thresholdSayACGAG_SftFZ_0(v35, a1);

  (*(v40 + 8))(v39, v13);
  return v36;
}

id UIUDetector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIUDetector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIUDetector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2702AD1E4(uint64_t *a1)
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
  sub_2702AD260(v6);
  return sub_2702B455C();
}

void sub_2702AD260(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2702B473C();
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      goto LABEL_32;
    }

    if (v2 < 2)
    {
      return;
    }

    v27 = v2;
    v6 = -1;
    v7 = 1;
    v8 = *a1;
    v9 = *a1;
LABEL_9:
    v29 = v7;
    v10 = *(v8 + 8 * v7);
    v32 = v6;
    v11 = v6;
    v28 = v9;
    while (1)
    {
      v12 = *v9;
      v13 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v14 = *&v10[v13] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
      swift_beginAccess();
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      v19 = v10;
      v20 = v12;
      v33.origin.x = v15;
      v33.origin.y = v16;
      v33.size.width = v17;
      v33.size.height = v18;
      MinX = CGRectGetMinX(v33);
      if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (MinX <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (MinX >= 9.22337204e18)
      {
        goto LABEL_27;
      }

      v22 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v23 = (*&v20[v22] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      v24 = CGRectGetMinX(*v23);

      if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      if (v24 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v24 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      if (MinX < v24)
      {
        if (!v8)
        {
          goto LABEL_33;
        }

        v25 = *v9;
        v10 = *(v9 + 8);
        *v9 = v10;
        *(v9 + 8) = v25;
        v9 -= 8;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      v7 = v29 + 1;
      v9 = v28 + 8;
      v6 = v32 - 1;
      if (v29 + 1 == v27)
      {
        return;
      }

      goto LABEL_9;
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
  }

  else if (v2 >= -1)
  {
    v4 = v3;
    if (v2 <= 1)
    {
      v5 = MEMORY[0x277D84F90];
    }

    else
    {
      type metadata accessor for UIObject();
      v5 = sub_2702B41DC();
      *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v2 / 2;
    }

    v31[0] = ((v5 & 0xFFFFFFFFFFFFFF8) + 32);
    v31[1] = (v2 / 2);
    sub_2702AD538(v31, v30, a1, v4);
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_2702AD538(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_103:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_105;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
      goto LABEL_27;
    }

    v10 = *a3;
    v11 = *(*a3 + 8 * (v7 + 1));
    v117 = *(*a3 + 8 * v7);
    v12 = v117;
    v118 = v11;
    v13 = v11;
    v14 = v12;
    sub_2702ABDB8(&v118, &v117);
    if (v5)
    {

      return;
    }

    v16 = v15;

    v17 = v7 + 2;
    v111 = v7;
    v5 = 8 * v7;
    v9 = v10 + 8 * v7 + 16;
    do
    {
      if (v6 == v17)
      {
        goto LABEL_16;
      }

      v19 = *(v9 - 8);
      v18 = *v9;
      v20 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v21 = *&v18[v20] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
      swift_beginAccess();
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = v18;
      v27 = v19;
      v120.origin.x = v22;
      v120.origin.y = v23;
      v120.size.width = v24;
      v120.size.height = v25;
      MinX = CGRectGetMinX(v120);
      if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_122;
      }

      if (MinX <= -9.22337204e18)
      {
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
        v8 = sub_2702A6924(v8);
LABEL_105:
        v104 = v5;
        v119 = v8;
        v105 = *(v8 + 2);
        if (v105 >= 2)
        {
          while (*a3)
          {
            v5 = v105 - 1;
            v106 = *&v8[16 * v105];
            v107 = *&v8[16 * v105 + 24];
            sub_2702ADE1C((*a3 + 8 * v106), (*a3 + 8 * *&v8[16 * v105 + 16]), (*a3 + 8 * v107), v9);
            if (v104)
            {
              goto LABEL_113;
            }

            if (v107 < v106)
            {
              goto LABEL_141;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_2702A6924(v8);
            }

            if (v105 - 2 >= *(v8 + 2))
            {
              goto LABEL_142;
            }

            v108 = &v8[16 * v105];
            *v108 = v106;
            *(v108 + 1) = v107;
            v119 = v8;
            sub_2702A6898(v105 - 1);
            v8 = v119;
            v105 = *(v119 + 2);
            if (v105 <= 1)
            {
              goto LABEL_113;
            }
          }

          goto LABEL_152;
        }

LABEL_113:

        return;
      }

      if (MinX >= 9.22337204e18)
      {
        goto LABEL_124;
      }

      v29 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v30 = (*&v27[v29] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      v31 = CGRectGetMinX(*v30);

      if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_125;
      }

      if (v31 <= -9.22337204e18)
      {
        goto LABEL_126;
      }

      if (v31 >= 9.22337204e18)
      {
        goto LABEL_127;
      }

      ++v17;
      v9 += 8;
    }

    while (((v16 ^ (MinX >= v31)) & 1) != 0);
    v6 = v17 - 1;
LABEL_16:
    v9 = v111;
    if (v16)
    {
      break;
    }

LABEL_26:
    v5 = 0;
LABEL_27:
    v37 = a3[1];
    if (v6 >= v37)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v6, v9))
    {
      goto LABEL_145;
    }

    if (v6 - v9 >= a4)
    {
      goto LABEL_36;
    }

    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    if (v9 + a4 >= v37)
    {
      v38 = a3[1];
    }

    else
    {
      v38 = (v9 + a4);
    }

    if (v38 < v9)
    {
      goto LABEL_148;
    }

    if (v6 == v38)
    {
LABEL_36:
      v7 = v6;
      if (v6 < v9)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v110 = v5;
      v112 = v9;
      v5 = *a3;
      v85 = *a3 + 8 * v6 - 8;
      v86 = (v9 - v6);
      v113 = v38;
      do
      {
        v87 = *(v5 + 8 * v6);
        v9 = v86;
        v115 = v85;
        v88 = v85;
        do
        {
          v89 = *v88;
          v90 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v91 = *&v87[v90] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
          swift_beginAccess();
          v92 = *v91;
          v93 = *(v91 + 8);
          v94 = *(v91 + 16);
          v95 = *(v91 + 24);
          v96 = v87;
          v97 = v89;
          v121.origin.x = v92;
          v121.origin.y = v93;
          v121.size.width = v94;
          v121.size.height = v95;
          v98 = CGRectGetMinX(v121);
          if ((*&v98 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
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
            goto LABEL_123;
          }

          if (v98 <= -9.22337204e18)
          {
            goto LABEL_117;
          }

          if (v98 >= 9.22337204e18)
          {
            goto LABEL_118;
          }

          v99 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v100 = (*&v97[v99] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
          swift_beginAccess();
          v101 = CGRectGetMinX(*v100);

          if ((*&v101 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_119;
          }

          if (v101 <= -9.22337204e18)
          {
            goto LABEL_120;
          }

          if (v101 >= 9.22337204e18)
          {
            goto LABEL_121;
          }

          if (v98 >= v101)
          {
            break;
          }

          if (!v5)
          {
            goto LABEL_150;
          }

          v102 = *v88;
          v87 = *(v88 + 8);
          *v88 = v87;
          *(v88 + 8) = v102;
          v88 -= 8;
        }

        while (!__CFADD__(v9++, 1));
        ++v6;
        v85 = v115 + 8;
        v86 = (v86 - 1);
        v7 = v113;
      }

      while (v6 != v113);
      v5 = v110;
      v9 = v112;
      if (v113 < v112)
      {
        goto LABEL_144;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_270290DEC(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_270290DEC((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_154;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_56:
          if (v48)
          {
            goto LABEL_133;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_136;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_140;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_70:
        if (v66)
        {
          goto LABEL_135;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_138;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_77:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_151;
        }

        v83 = *&v8[16 * v82 + 32];
        v9 = *&v8[16 * v44 + 40];
        sub_2702ADE1C((*a3 + 8 * v83), (*a3 + 8 * *&v8[16 * v44 + 32]), (*a3 + 8 * v9), v43);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v9 < v83)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2702A6924(v8);
        }

        if (v82 >= *(v8 + 2))
        {
          goto LABEL_130;
        }

        v84 = &v8[16 * v82];
        *(v84 + 4) = v83;
        *(v84 + 5) = v9;
        v119 = v8;
        sub_2702A6898(v44);
        v8 = v119;
        v41 = *(v119 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_131;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_132;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_134;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_137;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_143;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_103;
    }
  }

  if (v6 >= v111)
  {
    if (v111 < v6)
    {
      v32 = 8 * v6 - 8;
      v33 = v6;
      v34 = v111;
      while (1)
      {
        if (v34 != --v33)
        {
          v36 = *a3;
          if (!*a3)
          {
            goto LABEL_153;
          }

          v35 = *(v36 + v5);
          *(v36 + v5) = *(v36 + v32);
          *(v36 + v32) = v35;
        }

        v34 = (v34 + 1);
        v32 -= 8;
        v5 += 8;
        if (v34 >= v33)
        {
          goto LABEL_26;
        }
      }
    }

    goto LABEL_26;
  }

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
}

void sub_2702ADE1C(void **__src, void **a2, void **a3, void **__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (__dst != a2 || &a2[v13] <= __dst)
    {
      memmove(__dst, a2, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
      while (2)
      {
        v47 = v6;
        v31 = v6 - 1;
        --v5;
        v32 = v14;
        while (1)
        {
          v33 = *--v32;
          v6 = v31;
          v34 = *v31;
          v35 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v36 = *&v33[v35] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
          swift_beginAccess();
          v37 = *v36;
          v38 = *(v36 + 8);
          v39 = *(v36 + 16);
          v40 = *(v36 + 24);
          v41 = v33;
          v42 = v34;
          v49.origin.x = v37;
          v49.origin.y = v38;
          v49.size.width = v39;
          v49.size.height = v40;
          MinX = CGRectGetMinX(v49);
          if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
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
            return;
          }

          if (MinX <= -9.22337204e18)
          {
            goto LABEL_56;
          }

          if (MinX >= 9.22337204e18)
          {
            goto LABEL_58;
          }

          v44 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v45 = (*&v42[v44] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
          swift_beginAccess();
          v46 = CGRectGetMinX(*v45);

          if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_60;
          }

          if (v46 <= -9.22337204e18)
          {
            goto LABEL_61;
          }

          if (v46 >= 9.22337204e18)
          {
            goto LABEL_63;
          }

          if (MinX < v46)
          {
            break;
          }

          v31 = v6;
          if (v5 + 1 != v14)
          {
            *v5 = *v32;
          }

          --v5;
          v14 = v32;
          if (v32 <= v4)
          {
            v14 = v32;
            v6 = v47;
            goto LABEL_49;
          }
        }

        if (v5 + 1 != v47)
        {
          *v5 = *v6;
        }

        if (v14 > v4 && v6 > v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        v16 = *v4;
        v17 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v18 = *&v15[v17] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
        swift_beginAccess();
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = v15;
        v24 = v16;
        v48.origin.x = v19;
        v48.origin.y = v20;
        v48.size.width = v21;
        v48.size.height = v22;
        v25 = CGRectGetMinX(v48);
        if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v25 <= -9.22337204e18)
        {
          goto LABEL_55;
        }

        if (v25 >= 9.22337204e18)
        {
          goto LABEL_57;
        }

        v26 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v27 = (*&v24[v26] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
        swift_beginAccess();
        v28 = CGRectGetMinX(*v27);

        if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_59;
        }

        if (v28 <= -9.22337204e18)
        {
          goto LABEL_62;
        }

        if (v28 >= 9.22337204e18)
        {
          goto LABEL_64;
        }

        if (v25 >= v28)
        {
          break;
        }

        v29 = v6;
        v30 = v7 == v6++;
        if (!v30)
        {
          goto LABEL_22;
        }

LABEL_23:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          v6 = v7;
          goto LABEL_49;
        }
      }

      v29 = v4;
      v30 = v7 == v4++;
      if (v30)
      {
        goto LABEL_23;
      }

LABEL_22:
      *v7 = *v29;
      goto LABEL_23;
    }

    v6 = v7;
  }

LABEL_49:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }
}

uint64_t sub_2702AE344(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_2702B486C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2702AE9B0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2702AE424(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  sub_2702B487C();
  MEMORY[0x27439C490](a2);
  v8 = sub_2702B48AC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 8 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_2702AEAD0(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2702AE544()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8D28);
  result = sub_2702B449C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_2702B486C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2702AE768(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2702B449C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_2702B487C();
      MEMORY[0x27439C490](v18);
      result = sub_2702B48AC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_2702AE9B0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2702AE544();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2702AEC40();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2702AEEB0();
  }

  v8 = *v3;
  result = sub_2702B486C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2702B47FC();
  __break(1u);
  return result;
}

uint64_t sub_2702AEAD0(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2702AE768(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_2702AED80(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_2702AF0A0(v6 + 1, a4);
  }

  v9 = *v4;
  sub_2702B487C();
  MEMORY[0x27439C490](v5);
  result = sub_2702B48AC();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + 8 * a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2702B47FC();
  __break(1u);
  return result;
}

void *sub_2702AEC40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8D28);
  v2 = *v0;
  v3 = sub_2702B448C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2702AED80(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2702B448C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_2702AEEB0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8D28);
  result = sub_2702B449C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_2702B486C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2702AF0A0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2702B449C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      sub_2702B487C();
      MEMORY[0x27439C490](v17);
      result = sub_2702B48AC();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_2702AF2B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84C0);
  result = sub_2702B462C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_2702B486C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2702AF55C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_2702B462C();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_2702B487C();
      sub_2702B40BC();
      result = sub_2702B48AC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_2702AF7F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8D18);
  v38 = a2;
  result = sub_2702B462C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v38)
      {
        v41 = *v25;
        v42 = *(v25 + 16);
        v39 = *(v25 + 8);
        v40 = *(v25 + 24);
        v44 = *(v25 + 32);
        v26 = *(v25 + 40);
        v43 = *(v25 + 48);
      }

      else
      {
        v27 = *v25;
        v28 = *(v25 + 16);
        v29 = *(v25 + 48);
        v46 = *(v25 + 32);
        v47 = v29;
        v45[0] = v27;
        v45[1] = v28;
        v43 = v29;
        v44 = v46;
        v26 = DWORD2(v46);
        v41 = v27;
        v42 = v28;
        v39 = *(&v27 + 1);
        v40 = *(&v28 + 1);

        sub_270273D24(v45, v48);
      }

      sub_2702B487C();
      sub_2702B40BC();
      result = sub_2702B48AC();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v41;
      *(v17 + 8) = v39;
      *(v17 + 16) = v42;
      *(v17 + 24) = v40;
      *(v17 + 32) = v44;
      *(v17 + 40) = v26;
      *(v17 + 48) = v43;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2702AFB44(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2702B3CEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8D10);
  v40 = a2;
  result = sub_2702B462C();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_2702A87E8();
      result = sub_2702B3FAC();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_2702AFEF0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_2702B462C();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = a2;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 4 * v20);
      sub_2702B487C();
      MEMORY[0x27439C490](v21);
      result = sub_2702B48AC();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_31;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_31:
  *v4 = v8;
  return result;
}

void *sub_2702B016C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84C0);
  v2 = *v0;
  v3 = sub_2702B461C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2702B02F0(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2702B461C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_2702B044C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8D18);
  v2 = *v0;
  v3 = sub_2702B461C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_270273D24(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_2702B05EC()
{
  v1 = v0;
  v33 = sub_2702B3CEC();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8D10);
  v3 = *v0;
  v4 = sub_2702B461C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2702B086C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2702B461C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 4 * v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + 4 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

CGColorSpace *_s15UIUnderstanding11UIUDetectorC17createSquareImageySo10CGImageRefaSgAFFZ_0(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (Height > Width)
  {
    Width = Height;
  }

  result = CGImageGetWidth(a1);
  if (__OFSUB__(Width, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  result = CGImageGetHeight(a1);
  if (__OFSUB__(Width, result))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = CGImageGetColorSpace(a1);
  if (result || (result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8])) != 0)
  {
    v5 = result;
    BitsPerComponent = CGImageGetBitsPerComponent(a1);
    v7 = __CGBitmapContextCreate(Width, Width, BitsPerComponent, v5);
    if (v7)
    {
      v8 = v7;
      CGImageGetWidth(a1);
      CGImageGetHeight(a1);
      sub_2702B42CC();
      Image = CGBitmapContextCreateImage(v8);

      return Image;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2702B0AF0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_2702B40DC();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

void sub_2702B0BA0(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8D38);
  MEMORY[0x28223BE20](v2 - 8);
  v139 = &v132 - v3;
  if (a1 >> 62)
  {
    goto LABEL_154;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2702B45FC())
  {
    v5 = 0;
    v137 = 0;
    v6 = a1 & 0xC000000000000001;
    v146 = a1 & 0xFFFFFFFFFFFFFF8;
    v135 = a1 + 32;
    v7 = 0.9;
    v8 = 0.75;
    v133 = i;
    v134 = a1;
    v149 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x27439C0F0](v5, a1);
      }

      else
      {
        if (v5 >= *(v146 + 16))
        {
          goto LABEL_140;
        }

        v9 = *(v135 + 8 * v5);
      }

      v10 = v9;
      v11 = __OFADD__(v5, 1);
      v12 = v5 + 1;
      if (v11)
      {
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
        goto LABEL_152;
      }

      v141 = v12;
      sub_27027F1C8(v7);
      v13 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v14 = *&v10[v13];
      if (*(v14 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
      {
        v15 = (v14 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
        swift_beginAccess();
        v16 = v15[1];
        if (v16)
        {
          break;
        }
      }

LABEL_5:
      v5 = v141;
      if (v141 == i)
      {
        return;
      }
    }

    v136 = v13;
    v145 = *v15;
    v17 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v143 = v17;
    v144 = v10;
    v18 = *&v10[v17];
    v153 = MEMORY[0x277D84F90];
    v142 = v16;

    v138 = v18;
    v19 = 0;
    do
    {
      if (v6)
      {
        v20 = MEMORY[0x27439C0F0](v19, a1);
      }

      else
      {
        if (v19 >= *(v146 + 16))
        {
          goto LABEL_121;
        }

        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_109;
      }

      v23 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*&v21[v23] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 4)
      {
        sub_2702B454C();
        sub_2702B457C();
        sub_2702B458C();
        sub_2702B455C();
      }

      else
      {
      }

      ++v19;
    }

    while (v22 != i);
    v24 = v153;
    v153 = MEMORY[0x277D84F90];
    if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
    {
      v25 = sub_2702B45FC();
    }

    else
    {
      v25 = *(v24 + 16);
    }

    v26 = &v138[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    if (v25)
    {
      v27 = 0;
      v150 = v24 & 0xC000000000000001;
      while (1)
      {
        if (v150)
        {
          a1 = 0xC3E0000000000001;
          v28 = MEMORY[0x27439C0F0](v27, v24);
        }

        else
        {
          if (v27 >= *(v24 + 16))
          {
            goto LABEL_110;
          }

          a1 = 0xC3E0000000000001;
          v28 = *(v24 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v31 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v32 = *&v29[v31];
        v33 = &v32[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        x = v33->origin.x;
        y = v33->origin.y;
        width = v33->size.width;
        height = v33->size.height;
        v38 = v32;
        v156.origin.x = x;
        v156.origin.y = y;
        v156.size.width = width;
        v156.size.height = height;
        MaxY = CGRectGetMaxY(v156);
        v40 = CGRectGetMaxY(*v26);
        if (v40 >= MaxY)
        {
          v41 = MaxY;
        }

        else
        {
          v41 = v40;
        }

        MinY = CGRectGetMinY(*v33);
        v43 = CGRectGetMinY(*v26);

        if (MinY > v43)
        {
          v44 = MinY;
        }

        else
        {
          v44 = v43;
        }

        v45 = v41 - v44;
        if (v45 < 0.0)
        {
          v46 = 0.0;
        }

        else
        {
          v46 = v45;
        }

        v47 = CGRectGetHeight(*v26);
        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_111;
        }

        if (v47 <= -9.22337204e18)
        {
          goto LABEL_112;
        }

        if (v47 >= 9.22337204e18)
        {
          goto LABEL_113;
        }

        if (v46 / v47 <= v8)
        {
        }

        else
        {
          sub_2702B454C();
          sub_2702B457C();
          sub_2702B458C();
          sub_2702B455C();
        }

        ++v27;
        if (v30 == v25)
        {
          v6 = v149;
          goto LABEL_50;
        }
      }

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
      goto LABEL_139;
    }

LABEL_50:

    v153 = sub_2702A0370(v48);
    v49 = v137;
    sub_2702AD1E4(&v153);
    v137 = v49;
    if (v49)
    {

      __break(1u);
      return;
    }

    v50 = v153;
    swift_beginAccess();
    MinX = CGRectGetMinX(*v26);
    if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_142;
    }

    if (MinX <= -9.22337204e18)
    {
      goto LABEL_143;
    }

    if (MinX >= 9.22337204e18)
    {
      goto LABEL_144;
    }

    if (v50 < 0 || (v50 & 0x4000000000000000) != 0)
    {
      v131 = MinX;
      v52 = sub_2702B45FC();
      MinX = v131;
    }

    else
    {
      v52 = *(v50 + 16);
    }

    v150 = MinX;
    if (v52)
    {
      if (v52 < 1)
      {
        goto LABEL_153;
      }

      a1 = 0;
      v147 = v52;
      v148 = v50 & 0xC000000000000001;
      v140 = v50;
      do
      {
        v53 = v148 ? MEMORY[0x27439C0F0](a1, v50) : *(v50 + 8 * a1 + 32);
        v54 = v53;
        v55 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v56 = *&v54[v55];
        v57 = &v56[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v58 = v57->origin.x;
        v59 = v57->origin.y;
        v60 = v57->size.width;
        v61 = v57->size.height;
        v62 = v56;
        v157.origin.x = v58;
        v157.origin.y = v59;
        v157.size.width = v60;
        v157.size.height = v61;
        v63 = CGRectGetMinX(v157);
        if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_114;
        }

        if (v63 <= -9.22337204e18)
        {
          goto LABEL_115;
        }

        if (v63 >= 9.22337204e18)
        {
          goto LABEL_116;
        }

        v64 = CGRectGetWidth(*v57);

        if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_117;
        }

        if (v64 <= -9.22337204e18)
        {
          goto LABEL_118;
        }

        if (v64 >= 9.22337204e18)
        {
          goto LABEL_119;
        }

        if (__OFADD__(v63, v64))
        {
          goto LABEL_120;
        }

        if (v150 >= v63 + v64)
        {
          goto LABEL_60;
        }

        v65 = *&v54[v55];
        v66 = &v65[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v67 = v66->origin.x;
        v68 = v66->origin.y;
        v69 = v66->size.width;
        v70 = v66->size.height;
        v71 = v65;
        v158.origin.x = v67;
        v158.origin.y = v68;
        v158.size.width = v69;
        v158.size.height = v70;
        v72 = CGRectGetMinX(v158);
        if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_122;
        }

        if (v72 <= -9.22337204e18)
        {
          goto LABEL_123;
        }

        if (v72 >= 9.22337204e18)
        {
          goto LABEL_124;
        }

        v73 = CGRectGetWidth(*v66);

        if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_125;
        }

        if (v73 <= -9.22337204e18)
        {
          goto LABEL_126;
        }

        if (v73 >= 9.22337204e18)
        {
          goto LABEL_127;
        }

        if (__OFADD__(v72, v73))
        {
          goto LABEL_128;
        }

        v74 = (*&v144[v143] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
        swift_beginAccess();
        MidX = CGRectGetMidX(*v74);
        if ((*&MidX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_129;
        }

        if (MidX <= -9.22337204e18)
        {
          goto LABEL_130;
        }

        if (MidX >= 9.22337204e18)
        {
          goto LABEL_131;
        }

        if (v72 + v73 >= MidX)
        {
LABEL_60:
        }

        else
        {
          v76 = *&v54[v55];
          v77 = &v76[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v78 = v77->origin.x;
          v79 = v77->origin.y;
          v80 = v77->size.width;
          v81 = v77->size.height;
          v82 = v76;
          v159.origin.x = v78;
          v159.origin.y = v79;
          v159.size.width = v80;
          v159.size.height = v81;
          v83 = CGRectGetMinX(v159);
          if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_132;
          }

          if (v83 <= -9.22337204e18)
          {
            goto LABEL_133;
          }

          if (v83 >= 9.22337204e18)
          {
            goto LABEL_134;
          }

          v84 = CGRectGetWidth(*v77);

          if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_135;
          }

          if (v84 <= -9.22337204e18)
          {
            goto LABEL_136;
          }

          if (v84 >= 9.22337204e18)
          {
            goto LABEL_137;
          }

          v150 = v83 + v84;
          if (__OFADD__(v83, v84))
          {
            goto LABEL_138;
          }

          v153 = v145;
          v154 = v142;
          v151 = 32;
          v152 = 0xE100000000000000;
          v85 = sub_2702B3D1C();
          v86 = v139;
          (*(*(v85 - 8) + 56))(v139, 1, 1, v85);
          sub_270264230();
          v87 = sub_2702B441C();
          v89 = v88;
          v91 = v90;
          sub_2702643E4(v86, &qword_2807C8D38);
          if ((v91 & 1) == 0)
          {
            v153 = v87;
            v154 = v89;
            v151 = v145;
            v152 = v142;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8D40);
            sub_270259914(&qword_2807C8D48, &qword_2807C8D40);
            v92 = sub_2702B43EC();
            v93 = sub_2702B3BBC();
            v94 = v145;
            if (v92 != v93)
            {
              v95 = sub_2702B40CC();
              v96 = v92 + 1;
              if (__OFADD__(v92, 1))
              {
                goto LABEL_141;
              }

              if (v96 < v95)
              {
                v97 = sub_2702B0AF0(v96, v94, v142);
                v99 = v98;
                v101 = v100;
                v103 = v102;

                v145 = MEMORY[0x27439BCB0](v97, v99, v101, v103);
                v142 = v104;
              }
            }
          }

          v50 = v140;
        }

        ++a1;
        v6 = v149;
      }

      while (v147 != a1);
    }

    v105 = CGRectGetMinY(*v26);
    if ((*&v105 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_145;
    }

    if (v105 <= -9.22337204e18)
    {
      goto LABEL_146;
    }

    if (v105 >= 9.22337204e18)
    {
      goto LABEL_147;
    }

    sub_270297D74();
    v107 = v106 - v150;
    if (__OFSUB__(v106, v150))
    {
      goto LABEL_148;
    }

    sub_270297DA0();
    v109 = v108;
    v110 = CGRectGetMinY(*v26);
    if ((*&v110 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_149;
    }

    if (v110 <= -9.22337204e18)
    {
      goto LABEL_150;
    }

    if (v110 >= 9.22337204e18)
    {
      goto LABEL_151;
    }

    if (!__OFSUB__(v109, v110))
    {
      v111 = v105;
      v112 = v150;
      v113 = v111;
      v114 = v107;
      v115 = (v109 - v110);
      v116 = v138;
      v117 = &v138[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
      swift_beginAccess();
      v118 = v7;
      v120 = *v117;
      v119 = *(v117 + 1);
      v121 = type metadata accessor for BoundingBox();
      v122 = objc_allocWithZone(v121);
      v123 = &v122[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      *v123 = v112;
      v123[1] = v113;
      v123[2] = v114;
      v123[3] = v115;
      v124 = &v122[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
      *v124 = v120;
      *(v124 + 1) = v119;
      v7 = v118;
      v8 = 0.75;
      v155.receiver = v122;
      v155.super_class = v121;
      v125 = objc_msgSendSuper2(&v155, sel_init);

      v126 = v144;
      v127 = *&v144[v143];
      *&v144[v143] = v125;

      v128 = *&v126[v136];
      v129 = &v128[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
      swift_beginAccess();
      v130 = v142;
      *v129 = v145;
      v129[1] = v130;

      i = v133;
      a1 = v134;
      goto LABEL_5;
    }

LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    ;
  }
}

uint64_t sub_2702B1974(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x27439BE70](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      sub_2702AE424(&v12, v11, a4);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_2702B1A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2702B1A7C()
{
  result = qword_2807C8CF8;
  if (!qword_2807C8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8CF8);
  }

  return result;
}

unint64_t sub_2702B1AD4()
{
  result = qword_2807C8D00;
  if (!qword_2807C8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8D00);
  }

  return result;
}

unint64_t sub_2702B1C14()
{
  result = qword_2807C8D08;
  if (!qword_2807C8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8D08);
  }

  return result;
}

unint64_t sub_2702B1C88()
{
  result = qword_2807C8D30;
  if (!qword_2807C8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8D30);
  }

  return result;
}

void UIUDetector.getUIDetectionsInScreen(_:addOCR:addIconRecognition:addClickability:addFocusElements:nmsThreshold:useAccurateOCR:)(CGImage *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, char *a7@<X8>, float a8@<S0>)
{
  v121 = a3;
  v122 = a6;
  v119 = a5;
  v120 = a4;
  LODWORD(v124) = a2;
  v13 = type metadata accessor for UIUDetectorResult();
  MEMORY[0x28223BE20](v13);
  v15 = (&v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v8 + OBJC_IVAR___UIUDetectorCompat_modelPlatform) - 1;
  v125 = a1;
  if (v16 > 1 || (v17 = v8, Width = CGImageGetWidth(a1), v19 = Width == CGImageGetHeight(a1), v8 = v17, v19) || (v20 = _s15UIUnderstanding11UIUDetectorC17createSquareImageySo10CGImageRefaSgAFFZ_0(a1)) == 0)
  {
    v20 = a1;
  }

  v21 = v20;
  sub_2702AAC40(v20, v15, a8);
  if (v9)
  {

    return;
  }

  v117 = v21;
  v118 = v8;
  v22 = *v15;
  v126._rawValue = *v15;
  v115 = v15;
  v116 = a7;
  v114 = v13;
  v123 = 0;
  if (v16 >= 2)
  {
  }

  else
  {
    if (v22 >> 62)
    {
      goto LABEL_113;
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v23)
    {
      goto LABEL_10;
    }
  }

  while (1)
  {
LABEL_19:
    if ((v124 & 1) == 0)
    {
      v59 = v115;
      v58 = v116;
      goto LABEL_119;
    }

    v41 = ~v122;
    v42 = dispatch_semaphore_create(0);
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D84F90];
    *(v43 + 16) = MEMORY[0x277D84F90];
    v45 = swift_allocObject();
    v46 = v118;
    swift_unknownObjectWeakInit();
    rawValue = v126._rawValue;

    sub_270293C74(v125, v41 & 1, rawValue, v46, v42, v45, rawValue, v43);

    sub_2702B438C();

    swift_beginAccess();
    v48 = *(v43 + 16);

    v130 = v44;
    if (v48 >> 62)
    {
      v49 = sub_2702B45FC();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v49)
    {
      v50 = 0;
      v124 = v48 & 0xC000000000000001;
      v51 = v48 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v124)
        {
          v52 = MEMORY[0x27439C0F0](v50, v48);
        }

        else
        {
          if (v50 >= *(v51 + 16))
          {
            goto LABEL_104;
          }

          v52 = *(v48 + 8 * v50 + 32);
        }

        v53 = v52;
        v54 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_103;
        }

        v55 = v49;
        v56 = v48;
        v57 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*&v53[v57] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
        {
          sub_2702B454C();
          sub_2702B457C();
          sub_2702B458C();
          sub_2702B455C();
        }

        else
        {
        }

        v48 = v56;
        ++v50;
        v49 = v55;
        if (v54 == v55)
        {
          v60 = v130;
          v44 = MEMORY[0x277D84F90];
          goto LABEL_36;
        }
      }
    }

    v60 = v44;
LABEL_36:

    v129 = v44;
    if ((v60 & 0x8000000000000000) != 0 || (v60 & 0x4000000000000000) != 0)
    {
      v61 = sub_2702B45FC();
    }

    else
    {
      v61 = *(v60 + 16);
    }

    v62 = MEMORY[0x277D84F90];
    if (v61)
    {
      v63 = 0;
      while (1)
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x27439C0F0](v63, v60);
        }

        else
        {
          if (v63 >= *(v60 + 16))
          {
            goto LABEL_106;
          }

          v64 = *(v60 + 8 * v63 + 32);
        }

        v65 = v64;
        v66 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_105;
        }

        v67 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v68 = *&v65[v67] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
        swift_beginAccess();
        if (*(v68 + 8))
        {
        }

        else
        {
          sub_2702B454C();
          sub_2702B457C();
          sub_2702B458C();
          sub_2702B455C();
        }

        ++v63;
        if (v66 == v61)
        {
          v62 = v129;
          break;
        }
      }
    }

    v59 = v115;
    v58 = v116;
    if ((v122 & 1) == 0)
    {
      break;
    }

    if ((v62 & 0x8000000000000000) != 0 || (v62 & 0x4000000000000000) != 0)
    {
      if (sub_2702B45FC() <= 0)
      {
        break;
      }
    }

    else if (*(v62 + 16) <= 0)
    {
      break;
    }

    v69 = dispatch_semaphore_create(0);
    v70 = swift_allocObject();
    v71 = MEMORY[0x277D84F90];
    *(v70 + 16) = MEMORY[0x277D84F90];
    v72 = swift_allocObject();
    v73 = v118;
    swift_unknownObjectWeakInit();

    sub_270293C74(v125, 1, v62, v73, v69, v72, v62, v70);

    sub_2702B438C();

    swift_beginAccess();
    v74 = *(v70 + 16);

    v128 = v71;
    if (v74 >> 62)
    {
      v75 = sub_2702B45FC();
    }

    else
    {
      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v76 = MEMORY[0x277D84F90];
    if (v75)
    {
      v77 = 0;
      v124 = v74 & 0xC000000000000001;
      v78 = v74 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v124)
        {
          v79 = MEMORY[0x27439C0F0](v77, v74);
        }

        else
        {
          if (v77 >= *(v78 + 16))
          {
            goto LABEL_108;
          }

          v79 = *(v74 + 8 * v77 + 32);
        }

        v80 = v79;
        v81 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          goto LABEL_107;
        }

        v82 = v75;
        v83 = v74;
        v84 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*&v80[v84] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
        {
          sub_2702B454C();
          sub_2702B457C();
          sub_2702B458C();
          sub_2702B455C();
        }

        else
        {
        }

        v74 = v83;
        ++v77;
        v75 = v82;
        if (v81 == v82)
        {
          v85 = v128;
          v76 = MEMORY[0x277D84F90];
          goto LABEL_70;
        }
      }
    }

    v85 = MEMORY[0x277D84F90];
LABEL_70:

    v131 = v76;
    if (v85 < 0 || (v85 & 0x4000000000000000) != 0)
    {
      v86 = sub_2702B45FC();
    }

    else
    {
      v86 = *(v85 + 16);
    }

    v87 = MEMORY[0x277D84F90];
    if (v86)
    {
      v88 = 0;
      while (1)
      {
        if ((v85 & 0xC000000000000001) != 0)
        {
          v89 = MEMORY[0x27439C0F0](v88, v85);
        }

        else
        {
          if (v88 >= *(v85 + 16))
          {
            goto LABEL_110;
          }

          v89 = *(v85 + 8 * v88 + 32);
        }

        v90 = v89;
        v91 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_109;
        }

        v92 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v93 = *&v90[v92] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
        swift_beginAccess();
        if (*(v93 + 8))
        {
        }

        else
        {
          sub_2702B454C();
          sub_2702B457C();
          sub_2702B458C();
          sub_2702B455C();
        }

        ++v88;
        if (v91 == v86)
        {
          v94 = v131;
          v87 = MEMORY[0x277D84F90];
          goto LABEL_86;
        }
      }
    }

    v94 = MEMORY[0x277D84F90];
LABEL_86:

    v131 = v87;
    v96 = v125;
    v95 = v126._rawValue;
    if (v126._rawValue >> 62)
    {
      v97 = sub_2702B45FC();
      v95 = v126._rawValue;
      if (!v97)
      {
LABEL_99:

        v126._rawValue = v87;
        v59 = v115;
        v58 = v116;
        if ((v121 & 1) == 0)
        {
          goto LABEL_121;
        }

        goto LABEL_120;
      }
    }

    else
    {
      v97 = *((v126._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v97)
      {
        goto LABEL_99;
      }
    }

    v98 = 0;
    v99 = v95 & 0xC000000000000001;
    v100 = v95 & 0xFFFFFFFFFFFFFF8;
    v124 = v95 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v99)
      {
        v101 = MEMORY[0x27439C0F0](v98, v95);
      }

      else
      {
        if (v98 >= *(v100 + 16))
        {
          goto LABEL_112;
        }

        v101 = *(v95 + 8 * v98 + 32);
      }

      v102 = v101;
      v103 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      v127 = v101;
      MEMORY[0x28223BE20](v101);
      *(&v113 - 2) = &v127;
      v104 = v123;
      v105 = sub_2702B290C(sub_2702B2F30, (&v113 - 4), v94);
      v123 = v104;
      if (v105)
      {
      }

      else
      {
        sub_2702B454C();
        sub_2702B457C();
        v100 = v124;
        sub_2702B458C();
        sub_2702B455C();
      }

      ++v98;
      v95 = v126._rawValue;
      if (v103 == v97)
      {
        v87 = v131;
        v96 = v125;
        goto LABEL_99;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      v23 = sub_2702B45FC();

      if (!v23)
      {
        break;
      }

LABEL_10:
      v25 = 0;
      v26 = v126._rawValue & 0xC000000000000001;
      v27 = v126._rawValue & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v26)
        {
          v28 = MEMORY[0x27439C0F0](v25, v126._rawValue);
        }

        else
        {
          if (v25 >= *(v27 + 16))
          {
            goto LABEL_102;
          }

          v28 = *(v126._rawValue + v25 + 4);
        }

        v29 = v28;
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v31 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v32 = *&v29[v31];
        v33 = sub_2702995E0(v125);
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v40 = &v29[OBJC_IVAR___UIObjectCompat_normalizedSquaredRect];
        swift_beginAccess();
        *v40 = v33;
        *(v40 + 1) = v35;
        *(v40 + 2) = v37;
        *(v40 + 3) = v39;
        v40[32] = 0;

        ++v25;
        if (v30 == v23)
        {
          goto LABEL_19;
        }
      }

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
    }
  }

LABEL_119:
  v96 = v125;
  if ((v121 & 1) == 0)
  {
    goto LABEL_121;
  }

LABEL_120:
  UIUDetector.addIconRecognitionResults(to:in:)(v126, v96);
LABEL_121:
  if (v120)
  {
    v106 = MEMORY[0x27439C730](v24);
    v107 = v117;
    v108 = v123;
    sub_270295508(v96, v117, v118, v126._rawValue, &v131, 0.5);
    if (v108)
    {

      objc_autoreleasePoolPop(v106);

      sub_27025C4E4(v59);
      return;
    }

    v123 = 0;
    objc_autoreleasePoolPop(v106);
  }

  v109 = v126._rawValue;
  if ((v119 & 1) != 0 && (UIUDetector.addFocusElementResults(to:originalImage:nmsThreshold:)(v126, v96, 0.7), (v123 = v110) != 0))
  {
    sub_27025C4E4(v59);
  }

  else
  {
    sub_2702B0BA0(v109);
    sub_270277584(v109);
    sub_270278EB0(v109);
    sub_270279714(v109);
    sub_270279D7C();

    v111 = *(v114 + 20);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
    (*(*(v112 - 8) + 16))(&v58[v111], v59 + v111, v112);
    sub_27025C4E4(v59);
    *v58 = v109;
  }
}

uint64_t sub_2702B290C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x27439C0F0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2702B45FC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t UIUDetector.getUIObjectsInScreen(_:addOCR:addIconRecognition:addClickability:addFocusElements:nmsThreshold:useAccurateOCR:)(CGImage *a1, int a2, int a3, int a4, int a5, int a6, float a7)
{
  v16 = type metadata accessor for UIUDetectorResult();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIUDetector.getUIDetectionsInScreen(_:addOCR:addIconRecognition:addClickability:addFocusElements:nmsThreshold:useAccurateOCR:)(a1, a2, a3, a4, a5, a6, v18, a7);
  if (!v8)
  {
    v7 = *v18;

    sub_27025C4E4(v18);
  }

  return v7;
}

uint64_t (*sub_2702B2CB0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x27439C0F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2702B2F8C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2702B2D30(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x27439C0F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2702B2F88;
  }

  __break(1u);
  return result;
}

void (*sub_2702B2DB0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x27439C0F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2702B2E30;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2702B2E38(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x27439C0F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2702B2EB8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2702B2EC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2702B2EF8()
{
  MEMORY[0x27439CE50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

Swift::String __swiftcall IconLabel.toString()()
{
  v1 = v0;
  v2 = 0xE300000000000000;
  v3 = 6579297;
  switch(v1)
  {
    case 0:
      break;
    case 1:
      v2 = 0xE500000000000000;
      v3 = 0x656C707061;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1801675106;
      break;
    case 3:
      v3 = 6775138;
      break;
    case 4:
      v2 = 0xE900000000000068;
      v3 = 0x746F6F7465756C62;
      break;
    case 5:
      v2 = 0xE800000000000000;
      v3 = 0x6B72616D6B6F6F62;
      break;
    case 6:
      v2 = 0xE800000000000000;
      v3 = 0x7261646E656C6163;
      break;
    case 7:
      v2 = 0xE600000000000000;
      v3 = 0x6172656D6163;
      break;
    case 8:
      v2 = 0xE400000000000000;
      v3 = 1953653091;
      break;
    case 9:
      v2 = 0xE400000000000000;
      v3 = 1952540771;
      break;
    case 10:
      v2 = 0xE90000000000006BLL;
      v3 = 0x72616D6B63656863;
      break;
    case 11:
      v3 = 0x72616F6270696C63;
      v2 = 0xE900000000000064;
      break;
    case 12:
      v2 = 0xE500000000000000;
      v3 = 0x6B636F6C63;
      break;
    case 13:
      v2 = 0xE500000000000000;
      v3 = 0x65736F6C63;
      break;
    case 14:
      v2 = 0xE700000000000000;
      v3 = 0x737361706D6F63;
      break;
    case 15:
      v2 = 0xE700000000000000;
      v3 = 0x65736F706D6F63;
      break;
    case 16:
      v2 = 0xE400000000000000;
      v3 = 2037411683;
      break;
    case 17:
      v2 = 0xE800000000000000;
      v3 = 0x79636E6572727563;
      break;
    case 18:
      v2 = 0xE600000000000000;
      v3 = 0x6574656C6564;
      break;
    case 19:
      v2 = 0xE400000000000000;
      v3 = 1853321060;
      break;
    case 20:
      v2 = 0xE800000000000000;
      v3 = 0x64616F6C6E776F64;
      break;
    case 21:
      v2 = 0xE500000000000000;
      v3 = 0x726F727265;
      break;
    case 22:
      v2 = 0xE600000000000000;
      v3 = 0x646E61707865;
      break;
    case 23:
      v3 = 6650213;
      break;
    case 24:
      v2 = 0xE800000000000000;
      v3 = 0x6B6F6F6265636166;
      break;
    case 25:
      v2 = 0xEC00000064726177;
      v3 = 0x726F662074736166;
      break;
    case 26:
      v2 = 0xE400000000000000;
      v3 = 1734437990;
      break;
    case 27:
      v2 = 0xE600000000000000;
      v3 = 0x746867696C66;
      break;
    case 28:
      v2 = 0xE600000000000000;
      v3 = 0x7265646C6F66;
      break;
    case 29:
      v2 = 0xE400000000000000;
      v3 = 1953394534;
      break;
    case 30:
      v2 = 0xE400000000000000;
      v3 = 1952868711;
      break;
    case 31:
      v2 = 0xE500000000000000;
      v3 = 0x65626F6C67;
      break;
    case 32:
      v2 = 0xE500000000000000;
      v3 = 0x7472616568;
      break;
    case 33:
      v2 = 0xE400000000000000;
      v3 = 1886152040;
      break;
    case 34:
      v2 = 0xE400000000000000;
      v3 = 1701670760;
      break;
    case 35:
      v2 = 0xE400000000000000;
      v3 = 1868983913;
      break;
    case 36:
      v2 = 0xE800000000000000;
      v3 = 0x6472616F6279656BLL;
      break;
    case 37:
      v2 = 0xE600000000000000;
      v3 = 0x68636E75616CLL;
      break;
    case 38:
      v2 = 0xE600000000000000;
      v3 = 0x73726579616CLL;
      break;
    case 39:
      v2 = 0xE900000000000067;
      v3 = 0x6E696E746867696CLL;
      break;
    case 40:
      v2 = 0xE400000000000000;
      v3 = 1953720684;
      break;
    case 41:
      v2 = 0xE800000000000000;
      v3 = 0x6E6F697461636F6CLL;
      break;
    case 42:
      v2 = 0x80000002702BB8B0;
      v3 = 0xD000000000000012;
      break;
    case 43:
      v2 = 0xE600000000000000;
      v3 = 0x64656B636F6CLL;
      break;
    case 44:
      v2 = 0xE400000000000000;
      v3 = 1818845549;
      break;
    case 45:
      v2 = 0xE400000000000000;
      v3 = 1970169197;
      break;
    case 46:
      v2 = 0xEA0000000000656ELL;
      v3 = 0x6F68706F7263696DLL;
      break;
    case 47:
      v2 = 0xE500000000000000;
      v3 = 0x73756E696DLL;
      break;
    case 48:
      v2 = 0xE400000000000000;
      v3 = 1701998445;
      break;
    case 49:
      v2 = 0xE500000000000000;
      v3 = 0x636973756DLL;
      break;
    case 50:
      v2 = 0xEC0000006E6F6974;
      v3 = 0x6163696669746F6ELL;
      break;
    case 51:
      v2 = 0xE500000000000000;
      v3 = 0x6573756170;
      break;
    case 52:
      v2 = 0xE600000000000000;
      v3 = 0x656C706F6570;
      break;
    case 53:
      v2 = 0xE600000000000000;
      v3 = 0x6E6F73726570;
      break;
    case 54:
      v2 = 0xE500000000000000;
      v3 = 0x656E6F6870;
      break;
    case 55:
      v2 = 0xE400000000000000;
      v3 = 2036427888;
      break;
    case 56:
      v2 = 0xE700000000000000;
      v3 = 0x68736572666572;
      break;
    case 57:
      v2 = 0xE600000000000000;
      v3 = 0x746165706572;
      break;
    case 58:
      v2 = 0xE600000000000000;
      v3 = 0x646E69776572;
      break;
    case 59:
      v2 = 0xEB00000000776F72;
      v3 = 0x7261207468676972;
      break;
    case 60:
      v2 = 0xEC00000064657672;
      v3 = 0x7563207468676972;
      break;
    case 61:
      v2 = 0xE600000000000000;
      v3 = 0x686372616573;
      break;
    case 62:
      v2 = 0xE400000000000000;
      v3 = 1684956531;
      break;
    case 63:
      v2 = 0xE800000000000000;
      v3 = 0x73676E6974746573;
      break;
    case 64:
      v2 = 0xE500000000000000;
      v3 = 0x6572616873;
      break;
    case 65:
      v2 = 0xE700000000000000;
      v3 = 0x73726564696C73;
      break;
    case 66:
      v2 = 0xE500000000000000;
      v3 = 0x656C696D73;
      break;
    case 67:
      v2 = 0xE700000000000000;
      v3 = 0x72656B61657073;
      break;
    case 68:
      v2 = 0xE400000000000000;
      v3 = 1918989427;
      break;
    case 69:
      v2 = 0xE400000000000000;
      v3 = 1886352499;
      break;
    case 70:
      v3 = 6775156;
      break;
    case 71:
      v2 = 0xEB000000006E776FLL;
      v3 = 0x642073626D756874;
      break;
    case 72:
      v2 = 0xE900000000000070;
      v3 = 0x752073626D756874;
      break;
    case 73:
      v2 = 0xE600000000000000;
      v3 = 0x7968706F7274;
      break;
    case 74:
      v2 = 0xE700000000000000;
      v3 = 0x72657474697774;
      break;
    case 75:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
      break;
    case 76:
      v2 = 0xE200000000000000;
      v3 = 28789;
      break;
    case 77:
      v2 = 0xEE00726564726F63;
      v3 = 0x6572206F65646976;
      break;
    default:
      sub_2702B47BC();
      __break(1u);
      JUMPOUT(0x2702B3668);
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_2702B37C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2702B38A8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_2702B38A8(unint64_t result)
{
  if (result > 0x4D)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2702B38BC()
{
  result = qword_2807C8D50;
  if (!qword_2807C8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8D50);
  }

  return result;
}

unint64_t sub_2702B3920()
{
  result = qword_2807C8D58;
  if (!qword_2807C8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8D58);
  }

  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect VNImageRectForNormalizedRect(CGRect normalizedRect, size_t imageWidth, size_t imageHeight)
{
  MEMORY[0x2821350B0](imageWidth, imageHeight, normalizedRect.origin, *&normalizedRect.origin.y, normalizedRect.size, *&normalizedRect.size.height);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}