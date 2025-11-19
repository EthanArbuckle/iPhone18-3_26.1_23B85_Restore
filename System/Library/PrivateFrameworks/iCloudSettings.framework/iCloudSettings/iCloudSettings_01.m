uint64_t sub_2758647C4(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F98];
  }

  v1 = a1;
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F98];
  }

  v2 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  sub_27585F7A4(&v51);
  v3 = v51;
  v4 = sub_27585F94C();
  v51 = v2;
  sub_27585F7A4(&v51);
  v5 = v51;
  v6 = sub_27585F94C();
  v7 = v1 + 64;
  v8 = 1 << *(v1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v1 + 64);
  v11 = (v8 + 63) >> 6;
  v47 = v4 & 0xFFFFFFFFFFFFFF8;
  v50 = v4;
  v49 = v4 & 0xC000000000000001;
  v38 = v6 & 0xFFFFFFFFFFFFFF8;
  v39 = v6 & 0xC000000000000001;
  v41 = v5 & 0xC000000000000001;
  v42 = v6;
  v43 = v5;
  v40 = v5 & 0xFFFFFFFFFFFFFF8;

  v13 = 0;
  v44 = MEMORY[0x277D84F98];
  v46 = v1;
  v14 = &unk_27A667000;
  if (!v10)
  {
    goto LABEL_6;
  }

  while (2)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = v16 | (v13 << 6);
      v18 = *(v1 + 56);
      v19 = (*(v1 + 48) + 16 * v17);
      v20 = v19[1];
      v45 = *v19;
      v21 = *(v18 + 8 * v17);
      sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v48 = v20;

      if ([swift_unknownObjectRetain() v14[371]])
      {
        break;
      }

      sub_275861AF8(0, &qword_280A0EA08, 0x277CD9DF8);
      if (![v21 v14[371]])
      {
        goto LABEL_34;
      }

      if (v50 >> 62)
      {
        v28 = sub_2759BA9E8();
        if (!v28)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v28 = *(v47 + 16);
        if (!v28)
        {
          goto LABEL_34;
        }
      }

      result = swift_unknownObjectRetain();
      v24 = 4;
      while (1)
      {
        v29 = v24 - 4;
        if (!v49)
        {
          break;
        }

        v30 = MEMORY[0x277C846A0](v24 - 4, v50);
        result = swift_unknownObjectRelease();
        if (v30 == v21)
        {
          goto LABEL_39;
        }

LABEL_31:
        v31 = v24 - 3;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_56;
        }

        ++v24;
        if (v31 == v28)
        {
LABEL_33:
          swift_unknownObjectRelease();
          goto LABEL_34;
        }
      }

      if (v29 >= *(v47 + 16))
      {
        goto LABEL_58;
      }

      if (*(v50 + 8 * v24) != v21)
      {
        goto LABEL_31;
      }

LABEL_39:
      if (v39)
      {
        v36 = v24 - 4;
        v37 = v42;
LABEL_51:
        v33 = MEMORY[0x277C846A0](v36, v37);
      }

      else
      {
        if (v29 >= *(v38 + 16))
        {
          goto LABEL_60;
        }

        v32 = v42;
LABEL_42:
        v33 = *(v32 + 8 * v24);
      }

      v34 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v44;
      sub_2759065C0(v34, v45, v48, isUniquelyReferenced_nonNull_native);

      swift_unknownObjectRelease_n();

      v44 = v51;
      v1 = v46;
      v14 = &unk_27A667000;
      if (!v10)
      {
        do
        {
LABEL_6:
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if (v15 >= v11)
          {

            return v44;
          }

          v10 = *(v7 + 8 * v15);
          ++v13;
        }

        while (!v10);
        v13 = v15;
      }
    }

    if (!(v3 >> 62))
    {
      v23 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_13;
      }

LABEL_34:
      swift_unknownObjectRelease();

      v1 = v46;
      v14 = &unk_27A667000;
      if (!v10)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  v23 = sub_2759BA9E8();
  if (!v23)
  {
    goto LABEL_34;
  }

LABEL_13:
  result = swift_unknownObjectRetain();
  v24 = 4;
  while (2)
  {
    v25 = v24 - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x277C846A0](v24 - 4, v3);
      result = swift_unknownObjectRelease();
      if (v26 == v21)
      {
        break;
      }

      goto LABEL_19;
    }

    if (v25 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_57;
    }

    if (*(v3 + 8 * v24) != v21)
    {
LABEL_19:
      v27 = v24 - 3;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_55;
      }

      ++v24;
      if (v27 == v23)
      {
        goto LABEL_33;
      }

      continue;
    }

    break;
  }

  if (v41)
  {
    v36 = v24 - 4;
    v37 = v43;
    goto LABEL_51;
  }

  if (v25 < *(v40 + 16))
  {
    v32 = v43;
    goto LABEL_42;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_275864C94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_275864CF0(char a1)
{
  if (*(v1 + 49) == (a1 & 1))
  {
    *(v1 + 49) = a1 & 1;
    swift_getKeyPath();
    sub_2758653D8();
    v4 = v1;
    sub_2759B8638();

    v5 = *(v1 + 32);
    if (*(v4 + 49) == 1)
    {
      return sub_275863244();
    }

    else
    {
      return sub_2758633B0();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758653D8();
    sub_2759B8628();
  }
}

void sub_275864E2C(double a1)
{
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
    if ((*(v1 + 48) & 1) == 0)
    {
      v2 = *(v1 + 32);
      swift_getKeyPath();
      sub_2758653D8();
      sub_2759B8638();

      sub_275863520(*(v1 + 56));
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758653D8();
    sub_2759B8628();
  }
}

uint64_t sub_275864F6C()
{
  swift_getKeyPath();
  sub_2758653D8();
  sub_2759B8638();

  return *(v0 + 49);
}

uint64_t sub_275864FDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758653D8();
  sub_2759B8638();

  *a2 = *(v3 + 49);
  return result;
}

id sub_275865054(uint64_t a1, char a2)
{
  *(a1 + 49) = a2;
  swift_getKeyPath();
  sub_2758653D8();
  sub_2759B8638();

  v3 = *(a1 + 32);
  if (*(a1 + 49) == 1)
  {
    return sub_275863244();
  }

  else
  {
    return sub_2758633B0();
  }
}

double sub_2758650E8()
{
  swift_getKeyPath();
  sub_2758653D8();
  sub_2759B8638();

  return *(v0 + 56);
}

double *sub_275865158(double *result, double a2)
{
  result[7] = a2;
  if ((result[6] & 1) == 0)
  {
    v2 = *(result + 4);
    v3 = result;
    swift_getKeyPath();
    sub_2758653D8();
    sub_2759B8638();

    return sub_275863520(v3[7]);
  }

  return result;
}

uint64_t sub_2758651F0()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings15MicaPlayerModel___observationRegistrar;
  v2 = sub_2759B8678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MicaPlayerModel()
{
  result = qword_280A0EA58;
  if (!qword_280A0EA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758652F0()
{
  result = sub_2759B8678();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2758653D8()
{
  result = qword_280A0EA68;
  if (!qword_280A0EA68)
  {
    type metadata accessor for MicaPlayerModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EA68);
  }

  return result;
}

char *sub_275865450(uint64_t a1, char a2, void *a3)
{
  v7 = sub_2759B8508();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  sub_2759B8668();
  *(v3 + 24) = a3;
  *(v3 + 16) = a2;
  (*(v8 + 16))(v11, a1, v7);
  v12 = a3;
  result = sub_2758642B8(v11);
  if (result)
  {
    v14 = result;
    (*(v8 + 8))(a1, v7);
    *(v3 + 32) = v14;
    *(v3 + 40) = *&v14[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_documentDuration];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_275865598@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA68, type metadata accessor for MicaPlayerModel);
  sub_2759B8638();

  result = *(v3 + 56);
  *a2 = result;
  return result;
}

void *sub_275865668()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_275865710@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_2758657C8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void *sub_275865958()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_275865A00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_275865AB8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

void *sub_275865C48()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_275865CF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_275865DA8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

void *sub_275865F38()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_275865FE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_275866098(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

void *sub_275866228()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_2758662D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_275866388(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

void *sub_275866518()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

id sub_2758665C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_275866678(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 64);
LABEL_8:
  *(v2 + 64) = a1;
}

void *sub_275866808()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

id sub_2758668B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_275866968(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 72);
LABEL_8:
  *(v2 + 72) = a1;
}

void *sub_275866AF8()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id sub_275866BA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_275866C58(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 80);
LABEL_8:
  *(v2 + 80) = a1;
}

void *sub_275866DE8()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

id sub_275866E90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

void sub_275866F48(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 88);
LABEL_8:
  *(v2 + 88) = a1;
}

void *sub_2758670D8()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

id sub_275867180@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 96);
  *a2 = v4;

  return v4;
}

void sub_275867238(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 96);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 96);
LABEL_8:
  *(v2 + 96) = a1;
}

void *sub_2758673C8()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

id sub_275867470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 104);
  *a2 = v4;

  return v4;
}

void sub_275867528(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 104);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 104);
LABEL_8:
  *(v2 + 104) = a1;
}

void *sub_2758676B8()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

id sub_275867760@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

void sub_275867818(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 112);
LABEL_8:
  *(v2 + 112) = a1;
}

void *sub_2758679A8()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

id sub_275867A50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 120);
  *a2 = v4;

  return v4;
}

void sub_275867B08(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 120);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 120);
LABEL_8:
  *(v2 + 120) = a1;
}

void *sub_275867C98()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

id sub_275867D40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v4 = *(v3 + 128);
  *a2 = v4;

  return v4;
}

void sub_275867DF8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 128);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 128);
LABEL_8:
  *(v2 + 128) = a1;
}

uint64_t sub_275867F88()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  swift_beginAccess();
  v1 = *(v0 + 136);
}

uint64_t sub_275868040@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  swift_beginAccess();
  *a2 = *(v3 + 136);
}

uint64_t sub_275868100(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);

  v5 = sub_27586A068(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 136);
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
    sub_2759B8628();
  }
}

uint64_t sub_275868248(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 136);
  *(a1 + 136) = a2;
}

void *sub_2758682B0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  v4 = *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_publishedObjects];
  if (v4 && *(v4 + 16))
  {
    v7 = v3;
    v8 = sub_27586F8A0(a1, a2);
    if (v9)
    {
      v10 = *(*(v4 + 56) + 8 * v8);
      swift_unknownObjectRetain();

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        [v11 setBackgroundColor_];
        return v12;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return 0;
}

void sub_275868374(unint64_t a1)
{
  v2 = v1;
  sub_275868A60();
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2759BA9E8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x277C846A0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (j > 2)
      {
        switch(j)
        {
          case 3:
            swift_getKeyPath();
            sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
            sub_2759B8638();

            v21 = v2[6];
            if (v21)
            {
              v22 = v21;
              v23 = [v9 CGImage];
              [v22 setContents_];
            }

            swift_getKeyPath();
            sub_2759B8638();

            v14 = v2[12];
            if (!v14)
            {
              goto LABEL_5;
            }

            break;
          case 4:
            swift_getKeyPath();
            sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
            sub_2759B8638();

            v27 = v2[7];
            if (v27)
            {
              v28 = v27;
              v29 = [v9 CGImage];
              [v28 setContents_];
            }

            swift_getKeyPath();
            sub_2759B8638();

            v14 = v2[13];
            if (!v14)
            {
              goto LABEL_5;
            }

            break;
          case 5:
            swift_getKeyPath();
            sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
            sub_2759B8638();

            v15 = v2[8];
            if (v15)
            {
              v16 = v15;
              v17 = [v9 CGImage];
              [v16 setContents_];
            }

            swift_getKeyPath();
            sub_2759B8638();

            v14 = v2[14];
            if (!v14)
            {
              goto LABEL_5;
            }

            break;
          default:
            goto LABEL_5;
        }
      }

      else if (j)
      {
        if (j == 1)
        {
          swift_getKeyPath();
          sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
          sub_2759B8638();

          v24 = v2[4];
          if (v24)
          {
            v25 = v24;
            v26 = [v9 CGImage];
            [v25 setContents_];
          }

          swift_getKeyPath();
          sub_2759B8638();

          v14 = v2[10];
          if (!v14)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (j != 2)
          {
            goto LABEL_5;
          }

          swift_getKeyPath();
          sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
          sub_2759B8638();

          v11 = v2[5];
          if (v11)
          {
            v12 = v11;
            v13 = [v9 CGImage];
            [v12 setContents_];
          }

          swift_getKeyPath();
          sub_2759B8638();

          v14 = v2[11];
          if (!v14)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        swift_getKeyPath();
        sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
        sub_2759B8638();

        v18 = v2[3];
        if (v18)
        {
          v19 = v18;
          v20 = [v9 CGImage];
          [v19 setContents_];
        }

        swift_getKeyPath();
        sub_2759B8638();

        v14 = v2[9];
        if (!v14)
        {
          goto LABEL_5;
        }
      }

      v6 = v14;
      v7 = [v9 CGImage];
      [v6 setContents_];

LABEL_5:
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }
}

id sub_275868A60()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v1 = v0[3];
  if (v1)
  {
    [v1 setContents_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v2 = v0[9];
  if (v2)
  {
    [v2 setContents_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v3 = v0[4];
  if (v3)
  {
    [v3 setContents_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v4 = v0[10];
  if (v4)
  {
    [v4 setContents_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v5 = v0[5];
  if (v5)
  {
    [v5 setContents_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v6 = v0[11];
  if (v6)
  {
    [v6 setContents_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v7 = v0[6];
  if (v7)
  {
    [v7 setContents_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v8 = v0[12];
  if (v8)
  {
    [v8 setContents_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v9 = v0[7];
  if (v9)
  {
    [v9 setContents_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v10 = v0[13];
  if (v10)
  {
    [v10 setContents_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v11 = v0[8];
  if (v11)
  {
    [v11 setContents_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  result = v0[14];
  if (result)
  {
    return [result setContents_];
  }

  return result;
}

void sub_275868E0C()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v2 + 32);
  v4 = sub_2758630A0(0x6E6F634920707041, 0xE900000000000073, 1);

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  v5 = 0;
LABEL_5:
  sub_275867B08(v5);
  v6 = *(v2 + 32);
  v7 = sub_2758630A0(0x63492064756F6C43, 0xEA00000000006E6FLL, 1);

  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  v8 = 0;
LABEL_9:
  sub_275867DF8(v8);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC14iCloudSettings32InteractiveStorageMicaController___observationRegistrar;
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v10 = v1[15];
  if (!v10)
  {
    return;
  }

  swift_getKeyPath();
  v11 = v10;
  sub_2759B8638();

  v12 = v1[16];
  if (v12)
  {
    v13 = v12;
    v38 = v11;
    [v11 setHidden_];
    v41 = v13;
    v14 = [v13 animationKeys];
    if (!v14)
    {
LABEL_50:
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = sub_2759BA3E8();

    v39 = *(v16 + 16);
    v40 = v16;
    if (v39)
    {
      v17 = 0;
      v18 = (v16 + 40);
      while (v17 < *(v40 + 16))
      {
        v20 = *(v18 - 1);
        v19 = *v18;

        v21 = sub_2759BA258();
        v22 = [v41 animationForKey_];

        if (!v22)
        {
          goto LABEL_49;
        }

        [v22 copy];
        sub_2759BA818();
        swift_unknownObjectRelease();
        sub_275861AF8(0, &qword_280A0EA98, 0x277CD9F38);
        swift_dynamicCast();
        swift_getKeyPath();
        sub_2759B8638();

        swift_getKeyPath();
        sub_2759B8658();

        v23 = swift_beginAccess();
        MEMORY[0x277C84160](v23);
        if (*((v1[17] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2759BA3F8();
        }

        ++v17;
        sub_2759BA418();
        swift_endAccess();
        swift_getKeyPath();
        v15 = v1 + v9;
        sub_2759B8648();

        v18 += 2;
        if (v39 == v17)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_19:

      [v41 removeAllAnimations];
      swift_getKeyPath();
      sub_2759B8638();

      swift_beginAccess();
      v15 = v1[17];
      if (!(v15 >> 62))
      {
        v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v24)
        {
LABEL_32:
          v26 = INFINITY;
          goto LABEL_33;
        }

LABEL_21:
        if (v24 < 1)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v25 = 0;
        v26 = INFINITY;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x277C846A0](v25, v15);
          }

          else
          {
            v27 = *(v15 + 8 * v25 + 32);
          }

          v28 = v27;
          [v27 beginTime];
          if (v29 < v26)
          {
            [v28 beginTime];
            v26 = v30;
          }

          ++v25;
        }

        while (v24 != v25);

LABEL_33:
        swift_getKeyPath();
        sub_2759B8638();

        v31 = v1[17];
        if (v31 >> 62)
        {
          v32 = sub_2759BA9E8();
          if (v32)
          {
LABEL_35:
            if (v32 >= 1)
            {

              v33 = 0;
              do
              {
                if ((v31 & 0xC000000000000001) != 0)
                {
                  v34 = MEMORY[0x277C846A0](v33, v31);
                }

                else
                {
                  v34 = *(v31 + 8 * v33 + 32);
                }

                v35 = v34;
                ++v33;
                [v34 beginTime];
                [v35 setBeginTime_];
                v37 = [v35 keyPath];
                [v41 addAnimation:v35 forKey:v37];
              }

              while (v32 != v33);

              goto LABEL_44;
            }

            goto LABEL_48;
          }
        }

        else
        {
          v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v32)
          {
            goto LABEL_35;
          }
        }

LABEL_44:
        v11 = v38;
        goto LABEL_45;
      }
    }

    v24 = sub_2759BA9E8();
    if (!v24)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

LABEL_45:
}

void sub_275869494(unint64_t a1)
{
  sub_275868374(a1);
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v2 = v1[15];
  if (v2)
  {
    swift_getKeyPath();
    v3 = v2;
    sub_2759B8638();

    v4 = v1[16];
    if (!v4)
    {
LABEL_15:

      return;
    }

    v5 = v4;
    [v3 setHidden_];
    v6 = v3;
    v7 = v1[2];
    swift_getKeyPath();
    sub_27586A020(&qword_280A0EA68, type metadata accessor for MicaPlayerModel);
    sub_2759B8638();

    [v6 setBeginTime_];
    [v5 removeAllAnimations];
    swift_getKeyPath();
    sub_2759B8638();

    swift_beginAccess();
    v8 = v1[17];
    if (v8 >> 62)
    {
      v9 = sub_2759BA9E8();
      if (v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_5:
        if (v9 < 1)
        {
          __break(1u);
          return;
        }

        v10 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x277C846A0](v10, v8);
          }

          else
          {
            v11 = *(v8 + 8 * v10 + 32);
          }

          ++v10;
          v12 = v11;
          [v12 beginTime];
          v14 = v13 + -100000.0;
          swift_getKeyPath();
          sub_2759B8638();

          [v12 setBeginTime_];

          v15 = [v12 keyPath];
          [v5 addAnimation:v12 forKey:v15];
        }

        while (v9 != v10);

        goto LABEL_14;
      }
    }

LABEL_14:
    v3 = v6;
    goto LABEL_15;
  }
}

void sub_2758697F0(CGFloat a1, CGFloat a2)
{
  v5 = [*(*(v2[2] + 32) + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer) superlayer];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController);
  sub_2759B8638();

  v41 = v2[3];
  swift_getKeyPath();
  v7 = v41;
  sub_2759B8638();

  v42 = v2[9];
  swift_getKeyPath();
  v8 = v42;
  sub_2759B8638();

  v43 = v2[4];
  swift_getKeyPath();
  v9 = v43;
  sub_2759B8638();

  v44 = v2[10];
  swift_getKeyPath();
  v10 = v44;
  sub_2759B8638();

  v45 = v2[5];
  swift_getKeyPath();
  v11 = v45;
  sub_2759B8638();

  v46 = v2[11];
  swift_getKeyPath();
  v12 = v46;
  sub_2759B8638();

  v47 = v2[6];
  swift_getKeyPath();
  v13 = v47;
  sub_2759B8638();

  v48 = v2[12];
  swift_getKeyPath();
  v14 = v48;
  sub_2759B8638();

  v49 = v2[7];
  swift_getKeyPath();
  v15 = v49;
  sub_2759B8638();

  v50 = v2[13];
  swift_getKeyPath();
  v16 = v50;
  sub_2759B8638();

  v51 = v2[8];
  swift_getKeyPath();
  v39 = v2;
  v17 = v51;
  sub_2759B8638();

  v52 = v2[14];
  v18 = v52;
  v19 = 0;
  v20 = 1;
  v21 = 0.0;
  for (i = 32; i != 128; i += 8)
  {
    v24 = *&v40[i];
    if (!v24)
    {
      v23 = v21;
      goto LABEL_4;
    }

    v25 = v24;
    v26 = [v25 presentationLayer];
    if (!v26)
    {
      goto LABEL_13;
    }

    v27 = v26;
    [v26 bounds];
    [v27 convertRect:v6 toLayer:?];
    x = v54.origin.x;
    y = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    v53.x = a1;
    v53.y = a2;
    if (!CGRectContainsPoint(v54, v53))
    {

LABEL_13:
      v23 = v21;
      v24 = v19;
      goto LABEL_14;
    }

    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    v32 = CGRectGetWidth(v55);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v33 = CGRectGetHeight(v56);

    v23 = v32 * v33;
    if (!v19)
    {
      v20 = 0;
      goto LABEL_15;
    }

    if ((v20 & 1) == 0 && v23 >= v21)
    {
      v20 = 0;
      goto LABEL_13;
    }

    v20 = 0;
    v25 = v19;
LABEL_14:

LABEL_15:
    v19 = v24;
LABEL_4:
    v21 = v23;
  }

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EA90, &qword_2759C1DA0);
    swift_arrayDestroy();
  }

  else
  {
    for (j = 0; j != 12; ++j)
    {
      v35 = *&v40[8 * j + 32];
      if (v35)
      {
        if (v19)
        {
          sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
          v36 = v35;
          v37 = v19;
          v38 = sub_2759BA788();

          if (v38)
          {

            v6 = v37;
LABEL_28:

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EA90, &qword_2759C1DA0);
            swift_arrayDestroy();
            return;
          }
        }
      }

      else if (!v19)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }
}

uint64_t sub_275869DB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 136);

  v3 = OBJC_IVAR____TtC14iCloudSettings32InteractiveStorageMicaController___observationRegistrar;
  v4 = sub_2759B8678();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_275869E98()
{
  sub_275869DB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveStorageMicaController()
{
  result = qword_280A0EA78;
  if (!qword_280A0EA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275869F44()
{
  result = sub_2759B8678();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_27586A020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27586A068(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_275861AF8(0, &qword_280A0EA98, 0x277CD9F38);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x277C846A0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x277C846A0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_2759BA788();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_2759BA788();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_2759BA9E8();
  }

  result = sub_2759BA9E8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_27586A2D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 128);
  *(v1 + 128) = v2;
  v4 = v2;
}

void sub_27586A30C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;
  v4 = v2;
}

void sub_27586A344()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;
}

void sub_27586A37C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
  v4 = v2;
}

void sub_27586A3B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
  v4 = v2;
}

void sub_27586A3EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  v4 = v2;
}

void sub_27586A424()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
  v4 = v2;
}

void sub_27586A45C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

void sub_27586A494()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  v4 = v2;
}

void sub_27586A4CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

void sub_27586A504()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

void sub_27586A53C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

void sub_27586A574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

void sub_27586A5AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

uint64_t sub_27586A5E4(uint64_t a1)
{
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 24) = 0u;
  *(v1 + 136) = v3;
  *(v1 + 144) = 0x40F86A0000000000;
  sub_2759B8668();
  *(v1 + 16) = a1;

  v4 = sub_2758682B0(0x4131206E6F6349, 0xE700000000000000);
  sub_2758657C8(v4);
  v5 = sub_2758682B0(0x4132206E6F6349, 0xE700000000000000);
  sub_275865AB8(v5);
  v6 = sub_2758682B0(0x4133206E6F6349, 0xE700000000000000);
  sub_275865DA8(v6);
  v7 = sub_2758682B0(0x4134206E6F6349, 0xE700000000000000);
  sub_275866098(v7);
  v8 = sub_2758682B0(0x4135206E6F6349, 0xE700000000000000);
  sub_275866388(v8);
  v9 = sub_2758682B0(0x4136206E6F6349, 0xE700000000000000);
  sub_275866678(v9);
  v10 = sub_2758682B0(0x4231206E6F6349, 0xE700000000000000);
  sub_275866968(v10);
  v11 = sub_2758682B0(0x4232206E6F6349, 0xE700000000000000);
  sub_275866C58(v11);
  v12 = sub_2758682B0(0x4233206E6F6349, 0xE700000000000000);
  sub_275866F48(v12);
  v13 = sub_2758682B0(0x4234206E6F6349, 0xE700000000000000);
  sub_275867238(v13);
  v14 = sub_2758682B0(0x4235206E6F6349, 0xE700000000000000);
  sub_275867528(v14);
  v15 = sub_2758682B0(0x4236206E6F6349, 0xE700000000000000);
  sub_275867818(v15);
  return v1;
}

uint64_t sub_27586A7A8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 96) = a1;
  return MEMORY[0x2822009F8](sub_27586A7CC, 0, 0);
}

uint64_t sub_27586A7CC()
{
  v0[3] = sub_27586AE48();
  v0[4] = sub_2759BA4C8();
  v0[5] = sub_2759BA4B8();
  v2 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27586A870, v2, v1);
}

uint64_t sub_27586A870()
{
  v1 = v0[5];
  v2 = v0[3];

  v0[6] = [swift_getObjCClassFromMetadata() currentTraitCollection];

  return MEMORY[0x2822009F8](sub_27586A8FC, 0, 0);
}

uint64_t sub_27586A8FC()
{
  v1 = v0[4];
  v0[7] = objc_opt_self();
  v0[8] = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27586A998, v3, v2);
}

uint64_t sub_27586A998()
{
  v2 = v0[7];
  v1 = v0[8];

  v0[9] = [v2 mainScreen];

  return MEMORY[0x2822009F8](sub_27586AA1C, 0, 0);
}

uint64_t sub_27586AA1C()
{
  v1 = *(v0 + 32);
  *(v0 + 80) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27586AAA8, v3, v2);
}

uint64_t sub_27586AAA8()
{
  v2 = v0[9];
  v1 = v0[10];

  [v2 scale];
  v0[11] = v3;

  return MEMORY[0x2822009F8](sub_27586AB28, 0, 0);
}

uint64_t sub_27586AB28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 96);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v2)
  {
    v4 = [objc_allocWithZone(ObjCClassFromMetadata) initWithSize:100.0 scale:{100.0, *(v0 + 88)}];
  }

  else
  {
    v4 = [(objc_class *)ObjCClassFromMetadata imageDescriptorNamed:*MEMORY[0x277D1B240]];
  }

  v5 = *(v0 + 48);
  v6 = v4;
  if ([v5 layoutDirection] == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setLanguageDirection_];
  [v6 setContrast_];
  [v6 setDrawBorder_];

  v8 = *(v0 + 8);

  return v8(v6);
}

id sub_27586AC60()
{
  v0 = [swift_getObjCClassFromMetadata() currentTraitCollection];

  return v0;
}

id sub_27586AC9C(void *a1)
{
  if ([a1 layoutDirection] == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v1 setLanguageDirection_];
  v4 = [a1 accessibilityContrast] == 1;

  return [v1 setContrast_];
}

void sub_27586AD18(uint64_t a1)
{
  v3 = objc_opt_self();
  [v1 setAppearance_];
  [v1 setAppearanceVariant_];
  v4 = [v3 ics:a1 tintColorForTraitCollection:?];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 CGColor];

    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];
      [v1 setTintColor_];
    }
  }
}

unint64_t sub_27586AE48()
{
  result = qword_280A0EAA0;
  if (!qword_280A0EAA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0EAA0);
  }

  return result;
}

uint64_t sub_27586AE94(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v4 = sub_2759B8508();
  v2[31] = v4;
  v5 = *(v4 - 8);
  v2[32] = v5;
  v6 = *(v5 + 64) + 15;
  v2[33] = swift_task_alloc();
  sub_2759BA4C8();
  v2[34] = sub_2759BA4B8();
  v8 = sub_2759BA468();
  v2[35] = v8;
  v2[36] = v7;

  return MEMORY[0x2822009F8](sub_27586AFC0, v8, v7);
}

id sub_27586AFC0()
{
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result ams_activeiCloudAccount];
  v0[37] = v3;

  if (!v3)
  {
    v24 = v0[34];

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v25 = sub_2759B89A8();
    __swift_project_value_buffer(v25, qword_2815ADE70);
    v21 = sub_2759B8988();
    v26 = sub_2759BA648();
    if (os_log_type_enabled(v21, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_275819000, v21, v26, "Could not find active iTunes account to show Manage Subs. Bailing.", v27, 2u);
      MEMORY[0x277C85860](v27, -1, -1);
    }

    goto LABEL_28;
  }

  v4 = *(v0[28] + OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters);
  if (v4 && *(v4 + 16) && (v5 = sub_27586F8A0(0x69666F7250676162, 0xEA0000000000656CLL), (v6 & 1) != 0) && (sub_275864C94(*(v4 + 56) + 32 * v5, (v0 + 2)), (swift_dynamicCast() & 1) != 0))
  {
    v7 = v0[19];
    if (*(v4 + 16) && (v8 = v0[18], v9 = sub_27586F8A0(0xD000000000000011, 0x80000002759DD8C0), (v10 & 1) != 0) && (sub_275864C94(*(v4 + 56) + 32 * v9, (v0 + 6)), (swift_dynamicCast() & 1) != 0))
    {
      v11 = v0[21];
      if (!*(v4 + 16) || (v12 = v0[20], v13 = sub_27586F8A0(0x654B4C5255676162, 0xE900000000000079), (v14 & 1) == 0))
      {
        v32 = v0[34];

        goto LABEL_19;
      }

      sub_275864C94(*(v4 + 56) + 32 * v13, (v0 + 10));
      if (swift_dynamicCast())
      {
        v15 = v0[23];
        v49 = v0[22];
        v0[38] = v15;
        if (*(v4 + 16) && (v16 = sub_27586F8A0(0x7261507972657571, 0xEB00000000736D61), (v17 & 1) != 0) && (sub_275864C94(*(v4 + 56) + 32 * v16, (v0 + 14)), swift_dynamicCast()))
        {
          v18 = v0[25];
          v48 = v0[24];
        }

        else
        {
          v48 = 0;
          v18 = 0xE000000000000000;
        }

        v0[39] = v18;
        v34 = v0[29];
        v35 = sub_2759BA258();

        v36 = sub_2759BA258();

        v37 = [objc_opt_self() bagForProfile:v35 profileVersion:v36];
        v0[40] = v37;

        v38 = objc_opt_self();
        v39 = v37;
        v40 = v3;
        v41 = [v38 currentProcess];
        v42 = [objc_allocWithZone(MEMORY[0x277CEE940]) initWithBag:v39 account:v40 clientInfo:v41];

        sub_27587A394(v42);
        swift_getKeyPath();
        v0[41] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
        v0[26] = v34;
        v0[42] = sub_27586BDE8();
        sub_2759B8638();

        v43 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter;
        v0[43] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter;
        v44 = *(v34 + v43);
        if (v44)
        {
          [v44 setDelegate_];
        }

        type metadata accessor for CommerceFlowHelper();
        v45 = v39;
        v46 = swift_task_alloc();
        v0[44] = v46;
        *v46 = v0;
        v46[1] = sub_27586B608;
        v47 = v0[30];

        return sub_2758B4C88(v47, v45, v49, v15, v48, v18);
      }

      v33 = v0[34];
    }

    else
    {
      v31 = v0[34];
    }
  }

  else
  {
    v19 = v0[34];
  }

LABEL_19:
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v20 = sub_2759B89A8();
  __swift_project_value_buffer(v20, qword_2815ADE70);
  v21 = sub_2759B8988();
  v22 = sub_2759BA648();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_275819000, v21, v22, "Manage Subs Action called without ams bag values. Bailing.", v23, 2u);
    MEMORY[0x277C85860](v23, -1, -1);
  }

LABEL_28:
  v28 = v0[33];
  v29 = v0[30];

  v30 = v0[1];

  return v30();
}

uint64_t sub_27586B608()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 320);
  v4 = *(*v0 + 312);
  v5 = *(*v0 + 304);
  v9 = *v0;

  v6 = *(v1 + 288);
  v7 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_27586B788, v7, v6);
}

uint64_t sub_27586B788()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = *(v0 + 296);
    v6 = *(v0 + 240);

    sub_27586BF04(v6, &unk_280A0EB10, &qword_2759C0740);
  }

  else
  {
    v7 = *(v0 + 336);
    v8 = *(v0 + 344);
    v9 = *(v0 + 328);
    v10 = *(v0 + 232);
    (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));
    swift_getKeyPath();
    *(v0 + 216) = v10;
    sub_2759B8638();

    v11 = *(v10 + v8);
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    if (v11)
    {
      v14 = *(v0 + 264);
      v15 = v11;
      v16 = sub_2759B84B8();

      v13 = v15;
      v12 = v16;
    }

    v18 = *(v0 + 256);
    v17 = *(v0 + 264);
    v19 = *(v0 + 248);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 264);
  v21 = *(v0 + 240);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t _s14iCloudSettings01iA13HomeViewModelC03webD10Controller_20handleDelegateAction10completionSbSo08AMSUIWebdG0C_SDys11AnyHashableVypGyypSg_s5Error_pSgtctF_0()
{
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v0 = sub_2759B89A8();
  __swift_project_value_buffer(v0, qword_280A238E8);
  v1 = sub_2759B8988();
  v2 = sub_2759BA648();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_275819000, v1, v2, "AMSUIWebDelegate: iCloud Settings wont handle delegate action.", v3, 2u);
    MEMORY[0x277C85860](v3, -1, -1);
  }

  return 0;
}

void sub_27586BB10(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - v6;
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v8 = sub_2759B89A8();
  __swift_project_value_buffer(v8, qword_280A238E8);
  v9 = a1;
  v10 = sub_2759B8988();
  v11 = sub_2759BA648();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    if (a1)
    {
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v12 + 4) = v15;
    *v13 = v16;
    _os_log_impl(&dword_275819000, v10, v11, "AMSUIWebDelegate: Purchase completed with error %@", v12, 0xCu);
    sub_27586BF04(v13, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  if (!a1)
  {
    sub_2759BA4E8();
    v17 = sub_2759BA518();
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
    sub_2759BA4C8();
    v18 = v2;
    v19 = sub_2759BA4B8();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    *(v20 + 32) = v18;
    *(v20 + 40) = 0;
    sub_27587D460(0, 0, v7, &unk_2759C1E80, v20);

    swift_getKeyPath();
    v23[1] = v18;
    sub_27586BDE8();
    sub_2759B8638();

    v22 = *&v18[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter];
    if (v22)
    {
      [v22 setDelegate_];
    }
  }
}

unint64_t sub_27586BDE8()
{
  result = qword_280A0F490;
  if (!qword_280A0F490)
  {
    type metadata accessor for iCloudHomeViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F490);
  }

  return result;
}

uint64_t sub_27586BE40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_27588B494(a1, v4, v5, v6, v7);
}

uint64_t sub_27586BF04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t String.localizedAppleId.getter()
{
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2759B83C8();

  return v2;
}

uint64_t String.localizedBackup.getter()
{
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2759B83C8();

  return v2;
}

uint64_t String.localizediCloud.getter()
{
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2759B83C8();

  return v2;
}

Swift::String __swiftcall String.localizediCloud(comment:)(Swift::String comment)
{
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2759B83C8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t String.lastPathComponent.getter()
{
  v0 = sub_2759BA258();
  v1 = [v0 lastPathComponent];

  v2 = sub_2759BA298();
  return v2;
}

uint64_t sub_27586C2EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return sub_27586C534();
}

uint64_t sub_27586C48C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_allocObject();
  *a2 = result;
  return result;
}

uint64_t sub_27586C550()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "PostQuotaDidChangeAction: performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = [objc_opt_self() defaultCenter];
  [v5 postNotificationName:*MEMORY[0x277D7F2C0] object:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_27586C6AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PostQuotaDidChangeAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_27586C700(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27586C720(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_27586C764()
{
  result = qword_280A0EB98;
  if (!qword_280A0EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EB98);
  }

  return result;
}

double sub_27586C7B8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v15 = sub_2759B8E58();
  v72 = *(v15 - 8);
  v16 = *(v72 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v71 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v70 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EBB8, &qword_2759C20D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v76 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v77 = &v69 - v24;
  LOBYTE(v80) = a2 & 1;
  LOBYTE(v95[0]) = a4 & 1;
  v78 = a9;
  v79 = a8;
  sub_27586D9C0(a1, a2 & 1, a3, a4 & 1, a5, v25, v26, a8, a9 & 1);
  v28 = *(a5 + 16);
  if (!v28)
  {
    return 0.0;
  }

  v29 = v27;
  v30 = a5 + 32;
  v31 = 0.0;
  v32 = a5 + 32;
  v33 = *(a5 + 16);
  do
  {
    sub_27586E058(v32, &v80);
    __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
    LOBYTE(v95[0]) = 0;
    LOBYTE(v92[0]) = a4 & 1;
    sub_2759B8F68();
    if (v31 <= v34)
    {
      v31 = v34;
    }

    __swift_destroy_boxed_opaque_existential_1(&v80);
    v32 += 40;
    --v33;
  }

  while (v33);
  v35 = *&v79;
  v36 = v72;
  v74 = (v72 + 56);
  v75 = (v72 + 16);
  v69 = (v72 + 32);
  v72 += 8;
  v73 = (v36 + 48);
  v37 = MEMORY[0x277D84F90];
  v38 = 0.0;
  do
  {
    sub_27586E058(v30, v95);
    v43 = *(v37 + 2);
    if (v43)
    {
      v79 = v28;
      v44 = __swift_project_boxed_opaque_existential_1(&v37[64 * v43 - 32], *&v37[64 * v43 - 8]);
      v45 = __swift_project_boxed_opaque_existential_1(v95, v95[3]);
      v46 = sub_2759B8F98();
      *(&v81 + 1) = v46;
      *&v82 = &off_288483FD0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v80);
      v48 = *(*(v46 - 8) + 16);
      v48(boxed_opaque_existential_1, v44, v46);
      v93 = v46;
      v94 = &off_288483FD0;
      v49 = __swift_allocate_boxed_opaque_existential_1(v92);
      v48(v49, v45, v46);
      v50 = v35;
      if (v78)
      {
        __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
        v90 = v15;
        v91 = &off_288483FF0;
        __swift_allocate_boxed_opaque_existential_1(v89);
        sub_2759B8F88();
        __swift_project_boxed_opaque_existential_1(v89, v90);
        __swift_project_boxed_opaque_existential_1(v92, v93);
        v87 = v15;
        v88 = &off_288483FF0;
        __swift_allocate_boxed_opaque_existential_1(v86);
        sub_2759B8F88();
        v51 = __swift_project_boxed_opaque_existential_1(v86, v87);
        v85[3] = v15;
        v85[4] = &off_288483FF0;
        v52 = __swift_allocate_boxed_opaque_existential_1(v85);
        (*v75)(v52, v51, v15);
        sub_27586E058(v85, &v84);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EBC0, &qword_2759C20D8);
        v53 = v77;
        v54 = swift_dynamicCast();
        (*v74)(v53, v54 ^ 1u, 1, v15);
        v55 = v53;
        v56 = v76;
        sub_27586E0BC(v55, v76);
        if ((*v73)(v56, 1, v15) == 1)
        {
          sub_27586E12C(v56);
          v57 = v71;
          sub_2759B8E48();
        }

        else
        {
          v57 = v70;
          (*v69)(v70, v56, v15);
        }

        sub_2759B8E38();
        v50 = v64;
        (*v72)(v57, v15);
        sub_27586E12C(v77);
        __swift_destroy_boxed_opaque_existential_1(v85);
        __swift_destroy_boxed_opaque_existential_1(v86);
        __swift_destroy_boxed_opaque_existential_1(v89);
      }

      __swift_destroy_boxed_opaque_existential_1(&v80);
      __swift_destroy_boxed_opaque_existential_1(v92);
      v65 = v38 + v50;
      sub_27586E058(v95, &v80);
      *(&v82 + 1) = v65;
      *&v83 = v29;
      *(&v83 + 1) = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2758708C4(0, *(v37 + 2) + 1, 1, v37);
      }

      v28 = v79;
      v67 = *(v37 + 2);
      v66 = *(v37 + 3);
      if (v67 >= v66 >> 1)
      {
        v37 = sub_2758708C4((v66 > 1), v67 + 1, 1, v37);
      }

      v38 = v29 + v65;
      *(v37 + 2) = v67 + 1;
      v39 = &v37[64 * v67];
      v40 = v80;
      v41 = v81;
      v42 = v83;
      *(v39 + 4) = v82;
      *(v39 + 5) = v42;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      __swift_destroy_boxed_opaque_existential_1(v95);
    }

    else
    {
      sub_27586E058(v95, &v80);
      *(&v82 + 1) = 0;
      *&v83 = v29;
      *(&v83 + 1) = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2758708C4(0, 1, 1, v37);
      }

      v59 = *(v37 + 2);
      v58 = *(v37 + 3);
      if (v59 >= v58 >> 1)
      {
        v37 = sub_2758708C4((v58 > 1), v59 + 1, 1, v37);
      }

      *(v37 + 2) = v59 + 1;
      v60 = &v37[64 * v59];
      v61 = v80;
      v62 = v81;
      v63 = v83;
      *(v60 + 4) = v82;
      *(v60 + 5) = v63;
      *(v60 + 2) = v61;
      *(v60 + 3) = v62;
      __swift_destroy_boxed_opaque_existential_1(v95);
      v38 = v29;
    }

    v30 += 40;
    --v28;
  }

  while (v28);
  return v38;
}

uint64_t sub_27586CEA0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v51 = a8;
  v50 = a4;
  v15 = sub_2759B9028();
  v16 = sub_27586D968();
  v17 = sub_2759BA5C8();
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = v17;
    v60 = MEMORY[0x277D84F90];
    sub_275950870(0, v17 & ~(v17 >> 63), 0);
    v18 = v60;
    v52 = v16;
    v53 = a5;
    v49 = v15;
    result = sub_2759BA5B8();
    if (v19 < 0)
    {
      __break(1u);
      return result;
    }

    v45 = a3;
    v46 = a7;
    v47 = a2;
    v48 = a1;
    v21 = &off_288483FD0;
    do
    {
      v22 = sub_2759BA5F8();
      v24 = v23;
      v25 = sub_2759B8F98();
      v58 = v25;
      v59 = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
      v27 = *(v25 - 8);
      (*(v27 + 16))(boxed_opaque_existential_1, v24, v25);
      v22(&v54, 0);
      v60 = v18;
      v28 = v21;
      v30 = *(v18 + 16);
      v29 = *(v18 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_275950870((v29 > 1), v30 + 1, 1);
      }

      v31 = v58;
      v32 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
      v33 = *(*(v31 - 8) + 64);
      MEMORY[0x28223BE20](v32);
      v35 = &v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v35);
      v55 = v25;
      v56 = v28;
      v37 = __swift_allocate_boxed_opaque_existential_1(&v54);
      (*(v27 + 32))(v37, v35, v25);
      v18 = v60;
      *(v60 + 16) = v30 + 1;
      sub_275827D1C(&v54, v18 + 40 * v30 + 32);
      __swift_destroy_boxed_opaque_existential_1(v57);
      sub_2759BA5E8();
      --v19;
      v21 = v28;
    }

    while (v19);
    a1 = v48;
    LOBYTE(a2) = v47;
    v38 = v51;
    a7 = v46;
    a3 = v45;
  }

  else
  {
    v38 = v51;
  }

  LOBYTE(v57[0]) = a2 & 1;
  LOBYTE(v54) = v50 & 1;
  v39 = sub_27586C7B8(a1, a2 & 1, a3, v50 & 1, v18, a7, v38, a9, a10 & 1);
  v41 = v40;
  if (a2)
  {
    v42 = v39;
  }

  else
  {
    v42 = *&a1;
  }

  return CGPointMake(v43, v42, v41, v44);
}

uint64_t sub_27586D24C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v67 = a3;
  v66 = a2;
  v23 = sub_2759B9028();
  v24 = sub_27586D968();
  v25 = sub_2759BA5C8();
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v27 = v25;
    v77 = MEMORY[0x277D84F90];
    sub_275950870(0, v25 & ~(v25 >> 63), 0);
    v26 = v77;
    v69 = a5;
    v65 = v23;
    v68 = v24;
    result = sub_2759BA5B8();
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v61 = a4;
    v62 = a1;
    v63 = a11;
    v64 = a12;
    v29 = &off_288483FD0;
    do
    {
      v30 = sub_2759BA5F8();
      v32 = v31;
      v33 = sub_2759B8F98();
      v71 = v33;
      v72 = v29;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
      v35 = *(v33 - 8);
      (*(v35 + 16))(boxed_opaque_existential_1, v32, v33);
      v30(&v74, 0);
      v77 = v26;
      v36 = v29;
      v38 = *(v26 + 16);
      v37 = *(v26 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_275950870((v37 > 1), v38 + 1, 1);
      }

      v39 = v71;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
      v41 = *(*(v39 - 8) + 64);
      MEMORY[0x28223BE20](v40);
      v43 = &v60 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v43);
      v75 = v33;
      v76 = v36;
      v45 = __swift_allocate_boxed_opaque_existential_1(&v74);
      (*(v35 + 32))(v45, v43, v33);
      v26 = v77;
      *(v77 + 16) = v38 + 1;
      sub_275827D1C(&v74, v26 + 40 * v38 + 32);
      __swift_destroy_boxed_opaque_existential_1(v70);
      sub_2759BA5E8();
      --v27;
      v29 = v36;
    }

    while (v27);
    a12 = v64;
    a11 = v63;
    v46 = v67;
    a1 = v62;
    LOBYTE(a4) = v61;
  }

  else
  {
    v46 = v67;
  }

  LOBYTE(v70[0]) = v66 & 1;
  LOBYTE(v74) = a4 & 1;
  v47 = sub_27586C7B8(a1, v66 & 1, v46, a4 & 1, v26, a11, a12, a13, a14 & 1);
  v49 = v48;
  v50 = v47;

  sub_27592E0F0();
  v52 = *(v49 + 16);
  if (!v52)
  {
  }

  v53 = v51;
  v54 = v49 + 32;

  do
  {
    sub_27586DFF0(v54, v70);
    v78.origin.x = a6;
    v78.origin.y = a7;
    v78.size.width = a8;
    v78.size.height = a9;
    v55 = CGRectGetMinX(v78) + v73;
    v79.origin.x = a6;
    v79.origin.y = a7;
    v79.size.width = a8;
    v79.size.height = a9;
    v56 = v55 + v53 * (CGRectGetWidth(v79) - v50);
    v80.origin.x = a6;
    v80.origin.y = a7;
    v80.size.width = a8;
    v80.size.height = a9;
    MinY = CGRectGetMinY(v80);
    v58 = __swift_project_boxed_opaque_existential_1(v70, v71);
    CGPointMake(v58, v56, MinY, v59);
    sub_2759BA0B8();
    LOBYTE(v74) = 0;
    LOBYTE(v77) = 0;
    sub_2759B8F78();
    sub_27586E028(v70);
    v54 += 64;
    --v52;
  }

  while (v52);
  return swift_bridgeObjectRelease_n();
}

void (*sub_27586D7C0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2759B8D18();
  return sub_27586D848;
}

void sub_27586D848(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_27586D894(uint64_t a1)
{
  result = sub_27586D8BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27586D8BC()
{
  result = qword_280A0EBA0;
  if (!qword_280A0EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EBA0);
  }

  return result;
}

unint64_t sub_27586D914()
{
  result = qword_280A0EBA8;
  if (!qword_280A0EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EBA8);
  }

  return result;
}

unint64_t sub_27586D968()
{
  result = qword_280A0EBB0;
  if (!qword_280A0EBB0)
  {
    sub_2759B9028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EBB0);
  }

  return result;
}

uint64_t sub_27586D9C0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v13 = sub_2759B8E58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v55 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v53 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EBB8, &qword_2759C20D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v60 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v64 = &v53 - v24;
  if (a2)
  {
    v25 = *(a5 + 16);
    if (v25)
    {
      v26 = a5 + 32;
      v27 = 0.0;
      v28 = a4 & 1;
      do
      {
        sub_27586E058(v26, &v83);
        __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
        LOBYTE(v80) = 1;
        LOBYTE(v77[0]) = v28;
        sub_2759B8F68();
        if (v27 <= v29)
        {
          v27 = v29;
        }

        result = __swift_destroy_boxed_opaque_existential_1(&v83);
        v26 += 40;
        --v25;
      }

      while (v25);
    }

    return result;
  }

  v30 = 0;
  v63 = a9;
  v31 = *(a5 + 16);
  v61 = a5 + 32;
  v62 = a5 - 8;
  v32 = *&a8;
  v58 = (v14 + 56);
  v59 = (v14 + 16);
  v53 = (v14 + 32);
  v56 = (v14 + 8);
  v57 = (v14 + 48);
  v33 = 0.0;
  while (1)
  {
    v37 = 0uLL;
    v38 = v31;
    v39 = 0uLL;
    v40 = 0uLL;
    if (v30 != v31)
    {
      if (v30 >= v31)
      {
        goto LABEL_26;
      }

      v38 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_27;
      }

      *&v80 = v30;
      result = sub_27586E058(v61 + 40 * v30, &v80 + 8);
      v37 = v80;
      v39 = v81;
      v40 = v82;
    }

    v83 = v37;
    v84 = v39;
    v85 = v40;
    if (!v40)
    {
      return result;
    }

    v65 = v37;
    result = sub_275827D1C((&v83 + 8), &v80);
    if (v65 >= 1)
    {
      break;
    }

LABEL_12:
    result = __swift_destroy_boxed_opaque_existential_1(&v80);
    v30 = v38;
  }

  if (v65 <= v31)
  {
    v41 = __swift_project_boxed_opaque_existential_1((v62 + 40 * v65), *(v62 + 40 * v65 + 24));
    v42 = __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
    v43 = sub_2759B8F98();
    v78 = v43;
    v79 = &off_288483FD0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
    v45 = *(*(v43 - 8) + 16);
    v45(boxed_opaque_existential_1, v41, v43);
    v75 = v43;
    v76 = &off_288483FD0;
    v46 = __swift_allocate_boxed_opaque_existential_1(v74);
    v45(v46, v42, v43);
    v36 = v32;
    if (v63)
    {
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v72 = v13;
      v73 = &off_288483FF0;
      __swift_allocate_boxed_opaque_existential_1(v71);
      sub_2759B8F88();
      __swift_project_boxed_opaque_existential_1(v71, v72);
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v69 = v13;
      v70 = &off_288483FF0;
      __swift_allocate_boxed_opaque_existential_1(v68);
      sub_2759B8F88();
      v47 = __swift_project_boxed_opaque_existential_1(v68, v69);
      v67[3] = v13;
      v67[4] = &off_288483FF0;
      v48 = __swift_allocate_boxed_opaque_existential_1(v67);
      (*v59)(v48, v47, v13);
      sub_27586E058(v67, &v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EBC0, &qword_2759C20D8);
      v49 = v64;
      v50 = swift_dynamicCast();
      (*v58)(v49, v50 ^ 1u, 1, v13);
      v51 = v49;
      v52 = v60;
      sub_27586E0BC(v51, v60);
      if ((*v57)(v52, 1, v13) == 1)
      {
        sub_27586E12C(v52);
        v34 = v55;
        sub_2759B8E48();
      }

      else
      {
        v34 = v54;
        (*v53)(v54, v52, v13);
      }

      sub_2759B8E38();
      v36 = v35;
      (*v56)(v34, v13);
      sub_27586E12C(v64);
      __swift_destroy_boxed_opaque_existential_1(v67);
      __swift_destroy_boxed_opaque_existential_1(v68);
      __swift_destroy_boxed_opaque_existential_1(v71);
    }

    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v33 = v33 + v36;
    goto LABEL_12;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_27586E058(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_27586E0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EBB8, &qword_2759C20D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27586E12C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EBB8, &qword_2759C20D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27586E1A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_27586E1F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for UIScreenBoundsReaderView()
{
  result = qword_280A0EBC8;
  if (!qword_280A0EBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27586E2C4()
{
  sub_2759B8A38();
  if (v0 <= 0x3F)
  {
    sub_27586E3E8(319, &qword_280A0E888, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_27586E3E8(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_27585AF74();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27586E3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27586E44C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for UIScreenBoundsReaderView();
  sub_27586FBC8(v0 + *(v5 + 24), v4, &qword_280A0E8A8, qword_2759C2120);
  v6 = sub_2759B8C48();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = 0x6E65657263534955;
    sub_27586BF04(v4, &qword_280A0E8A8, qword_2759C2120);
    return v8;
  }

  v9 = (v0 + *(v5 + 32));
  if (*v9)
  {
    v10 = *v9;

    v8 = sub_2759B8C38();

    (*(v7 + 8))(v4, v6);
    return v8;
  }

  v12 = v9[1];
  sub_2759B8C08();
  sub_27586FE80(&qword_280A0E6E0, MEMORY[0x277D23330]);
  result = sub_2759B9158();
  __break(1u);
  return result;
}

uint64_t sub_27586E67C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = type metadata accessor for UIScreenBoundsReaderView();
  v8 = (v1 + *(v7 + 32));
  if (*v8)
  {
    v46 = *(v7 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC00, &unk_2759C2280);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC08, &unk_2759CCBF0);
    v10 = *(*(v9 - 8) + 72);
    v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2759C17A0;
    v13 = (v12 + v11);
    v43 = *(v9 + 48);
    v44 = v12;

    v45 = v1;
    v42 = v13;
    *v13 = sub_27586E44C();
    v13[1] = v14;
    v41 = swift_allocObject();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_2759C17A0;
    v15 = (v40 + v11);
    v16 = *(v9 + 48);
    *v15 = 0x73646E756F62;
    *(v15 + 1) = 0xE600000000000000;
    v39 = swift_allocObject();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2759C2110;
    v18 = (v17 + v11);
    *v18 = 0x6874646977;
    *(v18 + 1) = 0xE500000000000000;
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    v38 = v16;
    *&v18[v16] = v19;
    v20 = *MEMORY[0x277D23288];
    v21 = sub_2759B8AF8();
    v22 = *(*(v21 - 8) + 104);
    v22(&v18[v16], v20, v21);
    v23 = &v18[v10];
    v24 = *(v9 + 48);
    *v23 = 0x746867696568;
    *(v23 + 1) = 0xE600000000000000;
    v25 = swift_allocObject();
    *(v25 + 16) = v6;
    *&v23[v24] = v25;
    v22(&v23[v24], v20, v21);
    v26 = sub_2758A289C(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v39 + 16) = v26;
    *&v15[v38] = v39;
    v27 = *MEMORY[0x277D23270];
    v22(&v15[v38], v27, v21);
    v28 = sub_2758A289C(v40);
    swift_setDeallocating();
    sub_27586BF04(v15, &qword_280A0EC08, &unk_2759CCBF0);
    swift_deallocClassInstance();
    *(v41 + 16) = v28;
    *(v42 + v43) = v41;
    v22((v42 + v43), v27, v21);
    sub_2758A289C(v44);
    swift_setDeallocating();
    sub_27586BF04(v42, &qword_280A0EC08, &unk_2759CCBF0);
    swift_deallocClassInstance();
    sub_27586F9D0(MEMORY[0x277D84F90]);
    v29 = sub_2759B8C08();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_2759B8BE8();
    sub_27586FE80(&qword_280A0E6E0, MEMORY[0x277D23330]);
    v33 = sub_2759B8CB8();
    v34 = sub_2759B8A38();
    (*(*(v34 - 8) + 16))(a1, v45 + v46, v34);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC10, &qword_2759C2290);
    v36 = (a1 + *(result + 36));
    *v36 = v33;
    v36[1] = v32;
  }

  else
  {
    v37 = v8[1];
    sub_2759B8C08();
    sub_27586FE80(&qword_280A0E6E0, MEMORY[0x277D23330]);
    result = sub_2759B9158();
    __break(1u);
  }

  return result;
}

uint64_t sub_27586EBA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 2003134838;
  if (v2 != 1)
  {
    v4 = 0x79654B61746164;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 2003134838;
  if (*a2 != 1)
  {
    v8 = 0x79654B61746164;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_27586EC94()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27586ED24()
{
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_27586EDA0()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27586EE2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_275870034();
  *a2 = result;
  return result;
}

void sub_27586EE5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003134838;
  if (v2 != 1)
  {
    v5 = 0x79654B61746164;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_27586EEA8()
{
  v1 = 2003134838;
  if (*v0 != 1)
  {
    v1 = 0x79654B61746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_27586EEF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275870034();
  *a1 = result;
  return result;
}

uint64_t sub_27586EF18(uint64_t a1)
{
  v2 = sub_27586FC30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27586EF54(uint64_t a1)
{
  v2 = sub_27586FC30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27586EF90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v40 - v5;
  v6 = sub_2759B8A38();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2759B85A8();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC30, &qword_2759C22B0);
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = type metadata accessor for UIScreenBoundsReaderView();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v20 + *(v18 + 28)) = MEMORY[0x277D84F90];
  v21 = (v20 + *(v18 + 32));
  sub_2759B8C08();
  sub_27586FE80(&qword_280A0E6E0, MEMORY[0x277D23330]);
  v22 = sub_2759B9168();
  *v21 = v22;
  v21[1] = v23;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27586FC30();
  v25 = v53;
  sub_2759BAC18();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v42 = v16;
    v43 = v22;
    v26 = v50;
    v27 = v51;
    v53 = a1;
    v56 = 0;
    v28 = sub_2759BAA58();
    v31 = v29;
    v41 = v15;
    if (!v29)
    {
      sub_2759B8598();
      v32 = sub_2759B8588();
      v34 = v33;
      (*(v45 + 8))(v26, v46);
      v31 = v34;
      v28 = v32;
    }

    *v20 = v28;
    v20[1] = v31;
    v51 = v31;
    v55 = 1;
    sub_27586FE80(&qword_280A0E738, MEMORY[0x277D231A8]);
    v35 = v27;
    v36 = v49;
    v37 = v41;
    sub_2759BAA78();
    v38 = v42;
    (*(v48 + 32))(v20 + *(v42 + 20), v35, v36);
    sub_2759B8C48();
    v54 = 2;
    sub_27586FE80(&qword_280A0E8C0, MEMORY[0x277D23340]);
    v39 = v47;
    sub_2759BAA68();
    (*(v52 + 8))(v37, v12);
    sub_27586FC84(v39, v20 + *(v38 + 24));
    sub_27586FCF4(v20, v44);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_27586FD58(v20);
  }
}

uint64_t sub_27586F520(uint64_t a1, uint64_t a2)
{
  v4 = sub_27586FE80(&qword_280A0EBD8, type metadata accessor for UIScreenBoundsReaderView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_27586F5A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_27586FE80(&qword_280A0EBE0, type metadata accessor for UIScreenBoundsReaderView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_27586F620(uint64_t a1)
{
  v2 = sub_27586FE80(&qword_280A0EBE0, type metadata accessor for UIScreenBoundsReaderView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27586F69C(uint64_t a1, uint64_t a2)
{
  v4 = sub_27586FE80(&qword_280A0EBF8, type metadata accessor for UIScreenBoundsReaderView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_27586F758()
{
  sub_27586FE80(&qword_280A0EBD8, type metadata accessor for UIScreenBoundsReaderView);
  sub_27586FE80(&qword_280A0EBE0, type metadata accessor for UIScreenBoundsReaderView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_27586F8A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2759BABD8();
  sub_2759BA328();
  v6 = sub_2759BAC08();

  return sub_27586F918(a1, a2, v6);
}

unint64_t sub_27586F918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2759BAAC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_27586F9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC18, &qword_2759C2298);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC20, &qword_2759C22A0);
    v8 = sub_2759BAA28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_27586FBC8(v10, v6, &qword_280A0EC18, &qword_2759C2298);
      v13 = *v6;
      v12 = v6[1];
      result = sub_27586F8A0(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC28, &qword_2759C22A8);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_27586FBC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_27586FC30()
{
  result = qword_280A0EC38;
  if (!qword_280A0EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EC38);
  }

  return result;
}

uint64_t sub_27586FC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27586FCF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIScreenBoundsReaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27586FD58(uint64_t a1)
{
  v2 = type metadata accessor for UIScreenBoundsReaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27586FDC4()
{
  result = qword_280A0EC40;
  if (!qword_280A0EC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0EC10, &qword_2759C2290);
    sub_27586FE80(&qword_280A0E720, MEMORY[0x277D231A8]);
    sub_27586FEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EC40);
  }

  return result;
}

uint64_t sub_27586FE80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27586FEC8()
{
  result = qword_280A0EC48;
  if (!qword_280A0EC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0EC50, &qword_2759C22C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EC48);
  }

  return result;
}

unint64_t sub_27586FF30()
{
  result = qword_280A0EC58;
  if (!qword_280A0EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EC58);
  }

  return result;
}

unint64_t sub_27586FF88()
{
  result = qword_280A0EC60;
  if (!qword_280A0EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EC60);
  }

  return result;
}

unint64_t sub_27586FFE0()
{
  result = qword_280A0EC68;
  if (!qword_280A0EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EC68);
  }

  return result;
}

uint64_t sub_275870034()
{
  v0 = sub_2759BAA48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t ICSIconUTTypeKey.utType.getter(uint64_t a1)
{
  result = 0xD000000000000021;
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      if (a1 == 9)
      {
        return 0xD000000000000026;
      }

      if (a1 != 10)
      {
        if (a1 == 11)
        {
          return 0xD000000000000020;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (a1 == 6)
      {
        return 0xD00000000000002FLL;
      }

      if (a1 == 7)
      {
        return 0xD000000000000035;
      }
    }

    return 0xD000000000000029;
  }

  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0xD000000000000024;
      case 1:
        return 0xD000000000000028;
      case 2:
        return 0xD000000000000022;
    }

LABEL_26:
    result = sub_2759BAB08();
    __break(1u);
    return result;
  }

  if (a1 != 3 && a1 != 4)
  {
    return 0xD00000000000002FLL;
  }

  return result;
}

uint64_t sub_27587024C()
{
  v1 = *v0;
  sub_2759BABD8();
  MEMORY[0x277C84980](v1);
  return sub_2759BAC08();
}

uint64_t sub_2758702C0()
{
  v1 = *v0;
  sub_2759BABD8();
  MEMORY[0x277C84980](v1);
  return sub_2759BAC08();
}

unint64_t sub_275870304@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_275871264(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ICSIconBundleIdKeys.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICSIconBundleIdKeys();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ICSIconBundleIdKeys.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICSIconBundleIdKeys();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27587045C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

id static DefaultIconLoader.graphicIcon(type:size:)(uint64_t a1, double a2, double a3)
{
  v5 = ICSIconUTTypeKey.utType.getter(a1);
  v7 = _s14iCloudSettings17DefaultIconLoaderC07graphicD010identifier4sizeSo7UIImageCSgSS_So6CGSizeVtFZ_0(v5, v6, a2, a3);

  return v7;
}

id sub_2758705C0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, double, double))
{
  v9 = sub_2759BA298();
  v10 = a6(v9, a1, a2);

  return v10;
}

id DefaultIconLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultIconLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_27587071C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2759BA258();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifierOfSystemPlaceholder:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_2759B8448();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_2758707E8(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2759BA258();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2759B8448();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

char *sub_2758708C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECE0, &qword_2759C26C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2758709D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEB0, &qword_2759C2620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275870B70(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_275870CA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECA0, &unk_2759C4B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_275870DA8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECA8, &qword_2759C2680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECB0, &qword_2759C2688);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275870F54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECD8, &qword_2759C26C0);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_275871088(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_275871264(unint64_t result)
{
  if (result > 0xB)
  {
    return 0;
  }

  return result;
}

id sub_275871298(char *a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v3 = 0xD000000000000016;
  v43[0] = 0xD000000000000016;
  v43[1] = 0x80000002759DDD10;
  v42 = v43;

  if (sub_2758A34DC(sub_275875530, v41, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_26:
      a1 = sub_2758709D0(0, *(a1 + 2) + 1, 1, a1);
    }

    v6 = *(a1 + 2);
    v5 = *(a1 + 3);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      a1 = sub_2758709D0((v5 > 1), v6 + 1, 1, a1);
    }

    *(a1 + 2) = v7;
    v8 = &a1[16 * v6];
    *(v8 + 4) = v3 - 3;
    *(v8 + 5) = 0x80000002759DDD50;
  }

  else
  {
    v7 = *(a1 + 2);
    if (!v7)
    {
LABEL_21:

      result = 0;
      goto LABEL_24;
    }
  }

  v9 = 0;
  v10 = (a1 + 40);
  v11 = 0x277CC1000;
  *&v4 = 136315138;
  v37 = v4;
  v38 = v7;
  v39 = a1;
  while (1)
  {
    if (v9 >= *(a1 + 2))
    {
      __break(1u);
      goto LABEL_26;
    }

    v14 = *(v10 - 1);
    v13 = *v10;
    v15 = objc_allocWithZone(*(v11 + 3696));

    v16 = sub_2759BA258();
    v43[0] = 0;
    v17 = [v15 initWithBundleIdentifierOfSystemPlaceholder:v16 error:v43];

    v18 = v43[0];
    if (v17)
    {
      break;
    }

    v19 = v43[0];
    v20 = sub_2759B8448();

    swift_willThrow();
    v21 = objc_allocWithZone(*(v11 + 3696));
    v22 = sub_2759BA258();
    v43[0] = 0;
    v17 = [v21 initWithBundleIdentifier:v22 allowPlaceholder:0 error:v43];

    v18 = v43[0];
    if (v17)
    {
      break;
    }

    v12 = v43[0];
    v3 = sub_2759B8448();

    swift_willThrow();
LABEL_9:
    ++v9;

    v10 += 2;
    v11 = 0x277CC1000uLL;
    if (v7 == v9)
    {
      goto LABEL_21;
    }
  }

  v23 = v18;

  v3 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v24 = sub_2759BA258();
  v25 = [v3 initWithBundleIdentifier:v24];

  if ([objc_opt_self() isMainThread])
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v26 = sub_2759B89A8();
    __swift_project_value_buffer(v26, qword_2815ADE70);
    v3 = sub_2759B8988();
    v27 = sub_2759BA648();
    if (os_log_type_enabled(v3, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43[0] = v29;
      *v28 = v37;
      *(v28 + 4) = sub_2758937B8(0xD000000000000016, 0x80000002759DDD30, v43);
      _os_log_impl(&dword_275819000, v3, v27, "%s IconServices may do I/O on main thread", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      a1 = v39;
      MEMORY[0x277C85860](v29, -1, -1);
      v30 = v28;
      v7 = v38;
      MEMORY[0x277C85860](v30, -1, -1);
    }
  }

  v31 = [v25 prepareImageForDescriptor:a2, v37];
  if (!v31)
  {

    goto LABEL_9;
  }

  v33 = v31;
  result = [v31 CGImage];
  if (result)
  {
    v34 = result;

    v35 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    result = v35;
LABEL_24:
    v36 = *MEMORY[0x277D85DE8];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_275871740(uint64_t a1, double a2, double a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  return MEMORY[0x2822009F8](sub_275871764, 0, 0);
}

uint64_t sub_275871764()
{
  v0[5] = objc_opt_self();
  v0[6] = sub_2759BA4C8();
  v0[7] = sub_2759BA4B8();
  v2 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27587180C, v2, v1);
}

uint64_t sub_27587180C()
{
  v1 = v0[7];
  v2 = v0[5];

  v0[8] = [v2 mainScreen];

  return MEMORY[0x2822009F8](sub_275871894, 0, 0);
}

uint64_t sub_275871894()
{
  v1 = *(v0 + 48);
  *(v0 + 72) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275871920, v3, v2);
}

uint64_t sub_275871920()
{
  v2 = v0[8];
  v1 = v0[9];

  [v2 scale];
  v0[10] = v3;

  return MEMORY[0x2822009F8](sub_2758719A0, 0, 0);
}

uint64_t sub_2758719A0()
{
  v1 = *(v0 + 48);
  *(v0 + 88) = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:*(v0 + 24) scale:{*(v0 + 32), *(v0 + 80)}];
  *(v0 + 96) = sub_275861AF8(0, &qword_280A0EAA0, 0x277D75C80);
  *(v0 + 104) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275871A88, v3, v2);
}

uint64_t sub_275871A88()
{
  v2 = v0[12];
  v1 = v0[13];

  v0[14] = sub_27586AC60();

  return MEMORY[0x2822009F8](sub_275871AF8, 0, 0);
}

uint64_t sub_275871AF8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[2];
  sub_27586AC9C(v1);
  sub_27586AD18(v1);

  v4 = sub_275871298(v3, v2);
  v6 = v5;
  v8 = v7;

  v9 = v0[1];

  return v9(v4, v6, v8);
}

id _s14iCloudSettings17DefaultIconLoaderC4icon8bundleId4sizeSo7UIImageCSgSS_So6CGSizeVtFZ_0(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v42[3] = &type metadata for DefaultApplicationRecordProvider;
  v42[4] = &off_28847F8A0;
  v8 = type metadata accessor for DefaultIconLoader();
  v9 = objc_allocWithZone(v8);
  __swift_mutable_project_boxed_opaque_existential_1(v42, &type metadata for DefaultApplicationRecordProvider);
  v41[3] = &type metadata for DefaultApplicationRecordProvider;
  v41[4] = &off_28847F8A0;
  sub_27586E058(v41, v9 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
  v40.receiver = v9;
  v40.super_class = v8;
  v10 = objc_msgSendSuper2(&v40, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v11 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v12 = sub_27587071C();
  if (v12)
  {
    v19 = v12;

    v20 = v19;
  }

  else
  {
    v13 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v21 = sub_2758707E8(a1, a2, 0);

    v20 = v21;
    if (!v21)
    {
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v14 = sub_2759B89A8();
      __swift_project_value_buffer(v14, qword_2815ADE70);

      v15 = sub_2759B8988();
      v16 = sub_2759BA648();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v42[0] = v18;
        *v17 = 136315394;
        *(v17 + 4) = sub_2758937B8(0xD000000000000014, 0x80000002759DDDF0, v42);
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_2758937B8(a1, a2, v42);
        _os_log_impl(&dword_275819000, v15, v16, "%s Expected bundleId %s but it was not found", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x277C85860](v18, -1, -1);
        MEMORY[0x277C85860](v17, -1, -1);
      }

      return 0;
    }
  }

  v22 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v23 = sub_2759BA258();
  v24 = [v22 initWithBundleIdentifier_];

  v25 = [objc_opt_self() mainScreen];
  [v25 scale];
  v27 = v26;

  v28 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a3 scale:{a4, v27}];
  [v28 setDrawBorder_];
  sub_275861AF8(0, &qword_280A0EAA0, 0x277D75C80);
  v29 = sub_27586AC60();
  sub_27586AC9C(v29);
  sub_27586AD18(v29);

  v30 = sub_2759AA80C(v28);
  if (!v30)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v35 = sub_2759B89A8();
    __swift_project_value_buffer(v35, qword_280A238A0);

    v36 = sub_2759B8988();
    v37 = sub_2759BA648();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42[0] = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_2758937B8(0xD000000000000014, 0x80000002759DDDF0, v42);
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_2758937B8(a1, a2, v42);
      _os_log_impl(&dword_275819000, v36, v37, "%s Failed to fetch graphic icon for bundleId %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C85860](v39, -1, -1);
      MEMORY[0x277C85860](v38, -1, -1);
    }

    return 0;
  }

  v31 = v30;
  result = [v30 CGImage];
  if (result)
  {
    v33 = result;
    v34 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:0 orientation:v27];

    return v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2758720F8(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_2759B8508();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758721C4, 0, 0);
}

uint64_t sub_2758721C4()
{
  v0[25] = [objc_opt_self() sharedSession];
  v1 = *(MEMORY[0x277CC9D20] + 4);
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_275872288;
  v3 = v0[19];

  return MEMORY[0x28211ED00](v3, 0);
}

uint64_t sub_275872288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 208);
  v9 = *v4;
  *(v5 + 216) = a1;
  *(v5 + 224) = a2;
  *(v5 + 232) = a3;
  *(v5 + 240) = v3;

  if (v3)
  {
    v7 = sub_275872D34;
  }

  else
  {

    v7 = sub_2758723A8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2758723A8()
{
  v35 = v0;
  v1 = v0[27];
  v2 = v0[28];
  sub_2758755BC(v1, v2);
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v4 = sub_2759B8528();
  v5 = [v3 initWithData_];
  v0[31] = v5;

  sub_27585A900(v1, v2);
  if (!v5)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v8 = v0[24];
    v9 = v0[21];
    v10 = v0[22];
    v11 = v0[19];
    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_280A238A0);
    (*(v10 + 16))(v8, v11, v9);
    v13 = sub_2759B8988();
    v14 = sub_2759BA648();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[29];
    v17 = v0[27];
    v18 = v0[24];
    v20 = v0[21];
    v19 = v0[22];
    if (v15)
    {
      v32 = v0[27];
      v33 = v0[28];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      v23 = sub_2759B8488();
      v31 = v16;
      v25 = v24;
      (*(v19 + 8))(v18, v20);
      v26 = sub_2758937B8(v23, v25, &v34);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_275819000, v13, v14, "unable to create image from data. %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x277C85860](v22, -1, -1);
      MEMORY[0x277C85860](v21, -1, -1);
      sub_27585A900(v32, v33);
    }

    else
    {
      sub_27585A900(v0[27], v0[28]);

      (*(v19 + 8))(v18, v20);
    }

    v28 = v0[23];
    v27 = v0[24];

    v29 = v0[1];

    __asm { BRAA            X2, X16 }
  }

  v0[32] = objc_opt_self();
  v0[33] = sub_2759BA4C8();
  v0[34] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758726D0, v7, v6);
}

uint64_t sub_2758726D0()
{
  v1 = v0[34];
  v2 = v0[32];

  v0[35] = [v2 mainScreen];

  return MEMORY[0x2822009F8](sub_275872758, 0, 0);
}

uint64_t sub_275872758()
{
  v1 = *(v0 + 264);
  *(v0 + 288) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758727E4, v3, v2);
}

uint64_t sub_2758727E4()
{
  v2 = v0[35];
  v1 = v0[36];

  [v2 scale];
  v0[37] = v3;

  return MEMORY[0x2822009F8](sub_275872864, 0, 0);
}

uint64_t sub_275872864()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  v3 = [*(v0 + 248) CGImage];
  v4 = [objc_allocWithZone(MEMORY[0x277D1B160]) initWithCGImage:v3 scale:v1];
  *(v0 + 304) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2759C2410;
  *(v5 + 32) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  sub_275861AF8(0, &qword_280A0EC90, 0x277D1B160);
  v7 = v4;
  v8 = sub_2759BA3D8();

  v9 = [v6 initWithImages_];
  *(v0 + 312) = v9;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_275872A84;
  v10 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC98, &qword_2759C2660);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_27587045C;
  *(v0 + 104) = &block_descriptor_1;
  *(v0 + 112) = v10;
  [v9 getCGImageForImageDescriptor:v2 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_275872A84()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_275872B64, 0, 0);
}

uint64_t sub_275872B64()
{
  v1 = v0[18];
  if (v1)
  {
    v3 = v0[38];
    v2 = v0[39];
    v4 = v0[31];
    v5 = v0[28];
    v6 = v0[29];
    v7 = v0[27];
    v8 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    sub_27585A900(v7, v5);
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v9 = sub_2759B89A8();
    __swift_project_value_buffer(v9, qword_280A238A0);
    v10 = sub_2759B8988();
    v11 = sub_2759BA648();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[38];
    v13 = v0[39];
    v15 = v0[31];
    v16 = v0[28];
    v17 = v0[29];
    v18 = v0[27];
    if (v12)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_275819000, v10, v11, "Failed to get icon from IconServices", v19, 2u);
      MEMORY[0x277C85860](v19, -1, -1);
    }

    sub_27585A900(v18, v16);

    v8 = 0;
  }

  v21 = v0[23];
  v20 = v0[24];

  v22 = v0[1];

  return v22(v8);
}

uint64_t sub_275872D34()
{
  v29 = v0;

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238A0);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_2759B8988();
  v9 = sub_2759BA648();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 240);
  v13 = *(v0 + 176);
  v12 = *(v0 + 184);
  v14 = *(v0 + 168);
  if (v10)
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v15 = 136315394;
    sub_275863BDC();
    v16 = sub_2759BAA98();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_2758937B8(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v11;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v26 = v21;
    _os_log_impl(&dword_275819000, v8, v9, "error loading icon from url: %s, error: %@", v15, 0x16u);
    sub_275875554(v26);
    MEMORY[0x277C85860](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x277C85860](v27, -1, -1);
    MEMORY[0x277C85860](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v23 = *(v0 + 184);
  v22 = *(v0 + 192);

  v24 = *(v0 + 8);

  return v24(0);
}

uint64_t sub_275872FC8(uint64_t a1, double a2, double a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  return MEMORY[0x2822009F8](sub_275872FEC, 0, 0);
}

uint64_t sub_275872FEC()
{
  v0[5] = objc_opt_self();
  v0[6] = sub_2759BA4C8();
  v0[7] = sub_2759BA4B8();
  v2 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275873094, v2, v1);
}

uint64_t sub_275873094()
{
  v1 = v0[7];
  v2 = v0[5];

  v0[8] = [v2 mainScreen];

  return MEMORY[0x2822009F8](sub_27587311C, 0, 0);
}

uint64_t sub_27587311C()
{
  v1 = *(v0 + 48);
  *(v0 + 72) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758731A8, v3, v2);
}

uint64_t sub_2758731A8()
{
  v2 = v0[8];
  v1 = v0[9];

  [v2 scale];
  v0[10] = v3;

  return MEMORY[0x2822009F8](sub_275873228, 0, 0);
}

uint64_t sub_275873228()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:*(v0 + 24) scale:{*(v0 + 32), *(v0 + 80)}];
  *(v0 + 88) = v1;
  [v1 setDrawBorder_];
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_275873328;
  v3 = *(v0 + 16);

  return sub_2758720F8(v3, v1);
}

uint64_t sub_275873328(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_275873428, 0, 0);
}

uint64_t sub_275873428()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_27587348C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2759B8508();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27587354C, 0, 0);
}

uint64_t sub_27587354C()
{
  v23 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238A0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = sub_2759B8488();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2758937B8(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_275819000, v6, v7, "Applying iOS app table styling via IconServices url: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = [objc_opt_self() imageDescriptorNamed_];
  v0[6] = v18;
  [v18 setDrawBorder_];
  v19 = swift_task_alloc();
  v0[7] = v19;
  *v19 = v0;
  v19[1] = sub_2758737DC;
  v20 = v0[2];

  return sub_2758720F8(v20, v18);
}

uint64_t sub_2758737DC(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_2758738DC, 0, 0);
}

uint64_t sub_2758738DC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2(v3);
}

uint64_t sub_275873948(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2759B8508();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275873A08, 0, 0);
}

uint64_t sub_275873A08()
{
  v0[6] = [objc_opt_self() sharedSession];
  v1 = *(MEMORY[0x277CC9D20] + 4);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_275873ACC;
  v3 = v0[2];

  return MEMORY[0x28211ED00](v3, 0);
}

uint64_t sub_275873ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 56);
  v9 = *v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  *(v5 + 88) = v3;

  if (v3)
  {
    v7 = sub_275873E90;
  }

  else
  {

    v7 = sub_275873BEC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_275873BEC()
{
  v33 = v0;
  v2 = v0[8];
  v1 = v0[9];
  sub_2758755BC(v2, v1);
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v4 = sub_2759B8528();
  v5 = [v3 initWithData_];

  sub_27585A900(v2, v1);
  if (v5)
  {
    v6 = v0[10];
    sub_27585A900(v0[8], v0[9]);
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v8 = v0[4];
    v7 = v0[5];
    v10 = v0[2];
    v9 = v0[3];
    v11 = sub_2759B89A8();
    __swift_project_value_buffer(v11, qword_280A238A0);
    (*(v8 + 16))(v7, v10, v9);
    v12 = sub_2759B8988();
    v13 = sub_2759BA648();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[10];
    v16 = v0[8];
    v18 = v0[4];
    v17 = v0[5];
    v19 = v0[3];
    if (v14)
    {
      v30 = v0[8];
      v31 = v0[9];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      v22 = sub_2759B8488();
      v29 = v15;
      v24 = v23;
      (*(v18 + 8))(v17, v19);
      v25 = sub_2758937B8(v22, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_275819000, v12, v13, "unable to create image from data. %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x277C85860](v21, -1, -1);
      MEMORY[0x277C85860](v20, -1, -1);
      sub_27585A900(v30, v31);
    }

    else
    {
      sub_27585A900(v0[8], v0[9]);

      (*(v18 + 8))(v17, v19);
    }

    v5 = 0;
  }

  v26 = v0[5];

  v27 = v0[1];

  return v27(v5);
}

uint64_t sub_275873E90()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2();
}

id sub_275873EFC(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v7 = sub_2759BA258();
  v8 = [v6 initWithType_];

  v9 = sub_2759AA80C(a3);
  if (!v9)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_280A238A0);

    v16 = sub_2759B8988();
    v17 = sub_2759BA648();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2758937B8(0xD000000000000016, 0x80000002759DDD90, &v20);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2758937B8(a1, a2, &v20);
      _os_log_impl(&dword_275819000, v16, v17, "%s Failed to fetch graphic icon for type %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C85860](v19, -1, -1);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    return 0;
  }

  v10 = v9;
  result = [v9 CGImage];
  if (result)
  {
    v12 = result;
    [a3 scale];
    v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v12 scale:0 orientation:v13];

    return v14;
  }

  __break(1u);
  return result;
}

id _s14iCloudSettings17DefaultIconLoaderC05tableD04typeSo7UIImageCSgAA16ICSIconUTTypeKeyO_tFZ_0(uint64_t a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  ICSIconUTTypeKey.utType.getter(a1);
  v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v6 = sub_2759BA258();

  v7 = [v5 initWithType_];

  v8 = [objc_opt_self() imageDescriptorNamed_];
  [v8 setDrawBorder_];
  sub_275861AF8(0, &qword_280A0EAA0, 0x277D75C80);
  v9 = sub_27586AC60();
  sub_27586AC9C(v9);
  sub_27586AD18(v9);

  v10 = sub_2759AA80C(v8);
  if (!v10)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_280A238A0);
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2758937B8(0xD000000000000010, 0x80000002759DDDD0, &v23);
      *(v18 + 12) = 2080;
      v20 = ICSIconUTTypeKey.utType.getter(a1);
      v22 = sub_2758937B8(v20, v21, &v23);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_275819000, v16, v17, "%s Failed to fetch graphic icon for type %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C85860](v19, -1, -1);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    return 0;
  }

  v11 = v10;
  result = [v10 CGImage];
  if (result)
  {
    v13 = result;
    v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:0 orientation:v4];

    return v14;
  }

  __break(1u);
  return result;
}

id _s14iCloudSettings17DefaultIconLoaderC07graphicD010identifier4sizeSo7UIImageCSgSS_So6CGSizeVtFZ_0(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v12 = sub_2759BA258();
  v13 = [v11 initWithType_];

  v14 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a3 scale:{a4, v10}];
  [v14 setDrawBorder_];
  sub_275861AF8(0, &qword_280A0EAA0, 0x277D75C80);
  v15 = sub_27586AC60();
  sub_27586AC9C(v15);
  sub_27586AD18(v15);

  v16 = sub_2759AA80C(v14);
  if (!v16)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v21 = sub_2759B89A8();
    __swift_project_value_buffer(v21, qword_280A238A0);

    v22 = sub_2759B8988();
    v23 = sub_2759BA648();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_2758937B8(0xD00000000000001DLL, 0x80000002759DDDB0, &v26);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_2758937B8(a1, a2, &v26);
      _os_log_impl(&dword_275819000, v22, v23, "%s  Failed to fetch graphic icon for identifier %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C85860](v25, -1, -1);
      MEMORY[0x277C85860](v24, -1, -1);
    }

    return 0;
  }

  v17 = v16;
  result = [v16 CGImage];
  if (result)
  {
    v19 = result;
    v20 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:0 orientation:v10];

    return v20;
  }

  __break(1u);
  return result;
}

unint64_t sub_275874780()
{
  result = qword_280A0EC70;
  if (!qword_280A0EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EC70);
  }

  return result;
}

uint64_t sub_2758747E4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = *(a3 + 8);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_275875644;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;

  return v17(a1, a2, a3, v14, v15);
}

uint64_t sub_275874924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_275874A4C;

  return v11(a1, a2, a3);
}

uint64_t sub_275874A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_275874B74(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = *(a3 + 32);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_275875640;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;

  return v17(a1, a2, a3, v14, v15);
}

uint64_t sub_275874CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_275874DDC;

  return v11(a1, a2, a3);
}

uint64_t sub_275874DDC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_275874ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_275875640;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_275875008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_275875130;

  return v11(a1, a2, a3);
}

uint64_t sub_275875130(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_27587522C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_275875640;

  return v11(a1, a2, a3);
}

uint64_t sub_275875354(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = *(a3 + 72);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_275875640;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;

  return v17(a1, a2, a3, v14, v15);
}

uint64_t sub_275875554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDE0, &unk_2759C2650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2758755BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t iCloudHomeViewModel.shouldShowComplianceSection.getter()
{
  swift_getKeyPath();
  v13 = v0;
  sub_27586BDE8();
  sub_2759B8638();

  v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v2 = *(v13 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR___ICSHomeDataModel_settingsFooter);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings14SettingsFooter_footerItems);
  if (v4 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2759BA9E8())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x277C846A0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = *&v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier + 8];
      if (v10)
      {
        v11 = *&v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier] == 0x6361766972505541 && v10 == 0xED00006B6E694C79;
        if (v11 || (sub_2759BAAC8() & 1) != 0)
        {

          i = 1;
          goto LABEL_23;
        }
      }

      ++v6;
      if (v9 == i)
      {
        i = 0;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_23:

  return i;
}

uint64_t iCloudHomeViewModel.complianceSectionTitle.getter()
{
  swift_getKeyPath();
  v16 = v0;
  sub_27586BDE8();
  sub_2759B8638();

  v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v2 = *(v16 + v1);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR___ICSHomeDataModel_settingsFooter);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings14SettingsFooter_footerItems);
      if (v4 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2759BA9E8())
      {

        if (!i)
        {
          break;
        }

        v6 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x277C846A0](v6, v4);
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          v10 = *&v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier + 8];
          if (v10)
          {
            v11 = *&v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier] == 0x6361766972505541 && v10 == 0xED00006B6E694C79;
            if (v11 || (sub_2759BAAC8() & 1) != 0)
            {

              v13 = &v8[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_title];
              swift_beginAccess();
              v15 = *v13;
              v14 = *(v13 + 1);

              return v15;
            }
          }

          ++v6;
          if (v9 == i)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

LABEL_20:
    }
  }

  return 0;
}

Swift::Void __swiftcall iCloudHomeViewModel.handleComplianceLinkAction()()
{
  swift_getKeyPath();
  v20 = v0;
  sub_27586BDE8();
  sub_2759B8638();

  v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v2 = *(v20 + v1);
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = *(v2 + OBJC_IVAR___ICSHomeDataModel_settingsFooter);
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings14SettingsFooter_footerItems);
  if (v4 >> 62)
  {
    v5 = sub_2759BA9E8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_20:

LABEL_21:
    if (qword_2815ADD30 != -1)
    {
LABEL_29:
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_2815ADE70);
    v13 = sub_2759B8988();
    v14 = sub_2759BA648();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_275819000, v13, v14, "No action provided for compliance section. Bailing.", v15, 2u);
      MEMORY[0x277C85860](v15, -1, -1);
    }

    return;
  }

  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x277C846A0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v10 = *&v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier + 8];
    if (v10)
    {
      v11 = *&v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier] == 0x6361766972505541 && v10 == 0xED00006B6E694C79;
      if (v11 || (sub_2759BAAC8() & 1) != 0)
      {
        break;
      }
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_20;
    }
  }

  v16 = *&v8[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_action];
  v17 = v16;

  if (!v16)
  {
    goto LABEL_21;
  }

  v19 = 25;
  v18 = 7;
  sub_27590A460(v17, 1, &v19, &v18, 0);
}

id sub_275875D40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586BDE8();
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_275875DE4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275876AF8(v2);
}

uint64_t sub_275875E14(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_275875E60@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v41 - v14;
  v15 = [objc_opt_self() mainScreen];
  [v15 scale];
  v17 = v16;
  v18 = *&v16;

  if ((v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = v17;
  v19 = objc_opt_self();
  sub_27586AE48();
  v20 = sub_27586AC60();
  v21 = v9;
  v22 = [v19 ics:v20 imageApperanceForTraitCollection:?];

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      goto LABEL_16;
    }

    if (v18 >= 3)
    {
      sub_275988AA0(v7);
    }

    else
    {
      sub_275988A74(v7);
    }

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v35 = *(v9 + 32);
      v36 = v41;
      v35(v41, v7, v8);
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v37 = sub_2759B89A8();
      __swift_project_value_buffer(v37, qword_2815ADE70);
      v38 = sub_2759B8988();
      v39 = sub_2759BA638();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_275819000, v38, v39, "Retruning tint urls", v40, 2u);
        MEMORY[0x277C85860](v40, -1, -1);
      }

      v34 = v42;
      v35(v42, v36, v8);
      return (*(v21 + 56))(v34, 0, 1, v8);
    }

    sub_27585A458(v7);
  }

  v23 = v13;
  if (v18 >= 3)
  {
    sub_275988A1C(v5);
  }

  else
  {
    sub_2759889F0(v5);
  }

  if ((*(v21 + 48))(v5, 1, v8) != 1)
  {
    v29 = *(v21 + 32);
    v29(v13, v5, v8);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v30 = sub_2759B89A8();
    __swift_project_value_buffer(v30, qword_2815ADE70);
    v31 = sub_2759B8988();
    v32 = sub_2759BA638();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_275819000, v31, v32, "Retruning dark urls", v33, 2u);
      MEMORY[0x277C85860](v33, -1, -1);
    }

    v34 = v42;
    v29(v42, v23, v8);
    return (*(v21 + 56))(v34, 0, 1, v8);
  }

  sub_27585A458(v5);
LABEL_16:
  if (qword_2815ADD30 != -1)
  {
LABEL_36:
    swift_once();
  }

  v24 = sub_2759B89A8();
  __swift_project_value_buffer(v24, qword_2815ADE70);
  v25 = sub_2759B8988();
  v26 = sub_2759BA638();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_275819000, v25, v26, "Retruning light urls", v27, 2u);
    MEMORY[0x277C85860](v27, -1, -1);
  }

  if (v18 >= 3)
  {
    return sub_2759889A0(v42);
  }

  else
  {
    return sub_27598897C(v42);
  }
}

uint64_t sub_275876540()
{
  result = sub_2759BA258();
  qword_280A23850 = result;
  return result;
}

iCloudSettings::iCloudSettingsActionType_optional __swiftcall iCloudSettingsActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2759BAA48();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t iCloudSettingsActionType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x65646948776F6873;
    if (v1 != 1)
    {
      v5 = 0x6D657250776F6873;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 != 5)
    {
      v2 = 0x566265576E65706FLL;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0x616E614D776F6873;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_275876704()
{
  *v0;
  sub_2759BA328();
}

void sub_275876864(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEF6C69616D45794DLL;
    v9 = 0x65646948776F6873;
    if (v2 != 1)
    {
      v9 = 0x6D657250776F6873;
      v8 = 0xEE007070416D7569;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v10)
    {
      v8 = 0x80000002759DCC20;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000002759DCC80;
    v4 = 0xD000000000000017;
    if (v2 != 5)
    {
      v4 = 0x566265576E65706FLL;
      v3 = 0xEB00000000776569;
    }

    v5 = 0x80000002759DCC50;
    v6 = 0xD000000000000015;
    if (v2 != 3)
    {
      v6 = 0x616E614D776F6873;
      v5 = 0xEE00736275536567;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

void *sub_2758769E8()
{
  swift_getKeyPath();
  v5 = v0;
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

uint64_t type metadata accessor for iCloudHomeViewModel()
{
  result = qword_280A0EEC0;
  if (!qword_280A0EEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275876AF8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for iCloudHomeDataModel();
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_275876C74(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void (*sub_275876D00(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  *v4 = v1;
  swift_getKeyPath();
  sub_2759B8658();

  v4[7] = sub_275876984();
  return sub_275876E38;
}

void (*sub_275876F44(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  *v4 = v1;
  swift_getKeyPath();
  sub_2759B8658();

  v4[7] = sub_275876E54();
  return sub_27587707C;
}

uint64_t sub_2758770FC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v6 = (v5 + *a2);
  swift_beginAccess();
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_2758771F8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_2758772E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (v8 = v6[1], (sub_2759BAAC8() & 1) != 0))
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }
}

void (*sub_275877468(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  *v4 = v1;
  swift_getKeyPath();
  sub_2759B8658();

  v4[7] = sub_275877088();
  return sub_2758775A0;
}

void (*sub_27587769C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  *v4 = v1;
  swift_getKeyPath();
  sub_2759B8658();

  v4[7] = sub_2758775AC();
  return sub_2758777D4;
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_2758778F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a2;
  v6[1] = a3;
}

void (*sub_275877988(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  *v4 = v1;
  swift_getKeyPath();
  sub_2759B8658();

  v4[7] = sub_2758777E0();
  return sub_275877AC0;
}

uint64_t sub_275877B2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainDataclassEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_275877C18()
{
  swift_getKeyPath();
  v3 = v0;
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainDataclassEnabled;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_275877CD4(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainDataclassEnabled;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }

  return result;
}

void (*sub_275877E18(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  *v4 = v1;
  swift_getKeyPath();
  sub_2759B8658();

  v4[7] = sub_275877ACC();
  return sub_275877F50;
}

uint64_t sub_275877F5C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewModel;
  swift_beginAccess();
  return sub_27586E058(v5 + v3, a1);
}

uint64_t sub_275878024@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewModel;
  swift_beginAccess();
  return sub_27586E058(v3 + v4, a2);
}

uint64_t sub_2758780EC(uint64_t a1, uint64_t *a2)
{
  sub_27586E058(a1, v5);
  v3 = *a2;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8628();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_2758781CC(uint64_t a1, uint64_t a2)
{
  sub_27586E058(a2, v5);
  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewModel;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((a1 + v3));
  sub_275827D1C(v5, a1 + v3);
  return swift_endAccess();
}

void sub_275878260(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_275861AF8(0, &qword_280A0EFC8, 0x277D757A0);
  v3 = v2;
  v4 = sub_2759BA788();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

void sub_275878410()
{
  v1 = v0;
  v2 = sub_27587C10C();
  if (v2)
  {
    v3 = v2;
    swift_getKeyPath();
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_getKeyPath();
      sub_2759B8638();

      if (*(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController))
      {
      }

      else
      {
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v6 = sub_2759B89A8();
        __swift_project_value_buffer(v6, qword_2815ADE70);
        v7 = sub_2759B8988();
        v8 = sub_2759BA638();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_275819000, v7, v8, "Initiating dataclass validation controller.", v9, 2u);
          MEMORY[0x277C85860](v9, -1, -1);
        }

        sub_27587A118([objc_allocWithZone(ICSDataclassValidationController) initWithAccount:v3 presentingViewController:v5]);
        swift_getKeyPath();
        sub_2759B8638();

        v10 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_275899D0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
        v12 = v10;
        sub_2759B8628();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_275878744(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v3 = *a2;
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_275878824@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  return sub_27586FBC8(v5 + v3, a1, &qword_280A0EFB0, &qword_2759C3128);
}

uint64_t sub_2758788FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v1 + v7, v6, &qword_280A0EFB0, &qword_2759C3128);
  v8 = sub_2758943A4(v6, a1);
  sub_27586BF04(v6, &qword_280A0EFB0, &qword_2759C3128);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }

  else
  {
    sub_27586FBC8(a1, v6, &qword_280A0EFB0, &qword_2759C3128);
    swift_beginAccess();
    sub_275899BFC(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_27586BF04(a1, &qword_280A0EFB0, &qword_2759C3128);
}

uint64_t sub_275878B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_27586FBC8(a2, &v10 - v6, &qword_280A0EFB0, &qword_2759C3128);
  v8 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_275899BFC(v7, a1 + v8);
  return swift_endAccess();
}

void sub_275878C08(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275878C38(v2);
}

void sub_275878C38(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0EFA8, 0x277D7F4E0);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void *sub_275878DE4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_275878EA0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_275878F64(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275878F94(v2);
}

void sub_275878F94(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyRUIController;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyRUIController);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0EFA0, 0x277D7F4B8);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_275879154(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879184(v2);
}

void sub_275879184(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0EF98, 0x277D7F4D8);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_275879344(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879374(v2);
}

void sub_275879374(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__familyCircleStateController;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__familyCircleStateController);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0EF90, 0x277D083B8);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_275879534(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879564(v2);
}

void sub_275879564(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0EF88, off_27A664B20);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_275879710(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0EF80, off_27A664AD8);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_2758798D0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879900(v2);
}

void sub_27587993C(void *a1, uint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *a2;
  v7 = *(v3 + *a2);
  if (!v7)
  {
    if (!a1)
    {
      v11 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  a3(0);
  v8 = v7;
  v9 = a1;
  v10 = sub_2759BA788();

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(v4 + v6);
LABEL_8:
  *(v4 + v6) = a1;
}

id sub_275879AC4()
{
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel);

  return v1;
}

void sub_275879B7C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel);
  type metadata accessor for ADPSectionViewModel();
  v6 = v5;
  v7 = sub_2759BA788();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }
}

void sub_275879D08(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879D38(v2);
}

void sub_275879D38(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewController;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewController);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0EF78, 0x277D7F4A0);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_275879EF8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879F28(v2);
}

void sub_275879F28(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0EF70, 0x277CDB700);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_27587A0E8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_27587A118(v2);
}

void sub_27587A118(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0EF68, off_27A664B08);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_27587A364(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_27587A394(v2);
}

void sub_27587A394(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0EF60, 0x277CEE940);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_27587A52C()
{
  v0 = objc_opt_self();
  [v0 startSharedContextWithOptions_];
  v1 = [v0 sharedContext];
  if (!v1)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_2815ADE70);
    v2 = sub_2759B8988();
    v16 = sub_2759BA648();
    if (os_log_type_enabled(v2, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_275819000, v2, v16, "Unable to get shared ICNoteContext, will not display Notes sync data.", v17, 2u);
      MEMORY[0x277C85860](v17, -1, -1);
    }

    goto LABEL_6;
  }

  v2 = v1;
  v3 = sub_27587C10C();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 displayAccount];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 identifier];

    if (v7)
    {
      v8 = objc_opt_self();
      v9 = [v2 managedObjectContext];
      v10 = [v8 cloudKitAccountWithIdentifier:v7 context:v9];

      if (v10)
      {
LABEL_6:

        return;
      }

LABEL_7:
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v11 = sub_2759B89A8();
      __swift_project_value_buffer(v11, qword_2815ADE70);
      v12 = sub_2759B8988();
      v13 = sub_2759BA648();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_275819000, v12, v13, "Unable to get ICAccount, will not display Notes sync data.", v14, 2u);
        MEMORY[0x277C85860](v14, -1, -1);
      }

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_27587A7C8()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel____lazy_storage___numberFormatter);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v3 setNumberStyle_];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_27581DE0C(v4);
  }

  sub_27581DE1C(v2);
  return v3;
}

id sub_27587A858()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel____lazy_storage___appDownloadFlowManager;
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel____lazy_storage___appDownloadFlowManager);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_allocWithZone(type metadata accessor for AppDownloadFlowManager()) init];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_27581DE0C(v4);
  }

  sub_27581DE1C(v2);
  return v3;
}

uint64_t sub_27587A8D8()
{
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__featureManagerObserver);
  return swift_unknownObjectRetain();
}

uint64_t sub_27587A984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__featureManagerObserver);
  return swift_unknownObjectRetain();
}

uint64_t sub_27587AA38()
{
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor);
}

uint64_t sub_27587AAE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor;
  v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor);

  v5 = sub_2759B9C08();

  if (v5)
  {
    v6 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }
}

uint64_t sub_27587AC90(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_27587AD6C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (v8 = v6[1], (sub_2759BAAC8() & 1) != 0))
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }
}

uint64_t sub_27587AED4()
{
  swift_getKeyPath();
  v3 = v0;
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainSyncNotificationToken;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_27587AF90@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainSyncNotificationToken;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_27587B054(int a1)
{
  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainSyncNotificationToken;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }

  return result;
}

double sub_27587B178()
{
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  return *(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha);
}

double sub_27587B220@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  result = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha);
  *a2 = result;
  return result;
}

void sub_27587B2F8(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha) == a1)
  {
    *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }
}

id sub_27587B428()
{
  v1 = v0;
  iCloudHomeViewModel.headerCardSubscriptionLabel.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EF40, &qword_2759C2EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  v3 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 labelColor];
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v7 = [v6 colorWithAlphaComponent_];

  *(inited + 64) = sub_275861AF8(0, &qword_280A0EF48, 0x277D75348);
  *(inited + 40) = v7;
  sub_2758A2DA4(inited);
  swift_setDeallocating();
  sub_27586BF04(inited + 32, &unk_280A0EF50, &qword_2759C2EF0);
  v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v9 = sub_2759BA258();

  type metadata accessor for Key(0);
  sub_275899D0C(&qword_280A0E5C0, type metadata accessor for Key);
  v10 = sub_2759BA1C8();

  v11 = [v8 initWithString:v9 attributes:v10];

  return v11;
}

uint64_t iCloudHomeViewModel.headerCardSubscriptionLabel.getter()
{
  v1 = v0;
  v2 = sub_27587C10C();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 aa_isManagedAppleID];

    if (v4)
    {
      goto LABEL_9;
    }
  }

  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v5 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!v6)
  {
    swift_getKeyPath();
    sub_2759B8638();

    v10 = *(v1 + v5);
    if (v10)
    {
      if (*(*(v10 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_isiCloudPlusSubscriber) == 1)
      {
LABEL_7:
        type metadata accessor for iCloudHomeViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v12 = [objc_opt_self() bundleForClass_];
LABEL_10:
        v8 = sub_2759B83C8();

        return v8;
      }
    }

    else if ([objc_opt_self() isCloudSubscriber])
    {
      goto LABEL_7;
    }

LABEL_9:
    type metadata accessor for iCloudHomeViewModel();
    v13 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    goto LABEL_10;
  }

  v7 = (*(*(v6 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary) + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_subscriptionLabel);
  v8 = *v7;
  v9 = v7[1];

  return v8;
}

id sub_27587B9E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleLabel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_27587BAE4()
{
  swift_getKeyPath();
  v4 = v0;
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleLabel;
  swift_beginAccess();
  v2 = *(v4 + v1);

  return v2;
}

void sub_27587BBB0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleLabel;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_275861AF8(0, &unk_280A0ED50, 0x277D756B8);
  v6 = v5;
  v7 = sub_2759BA788();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }
}

void sub_27587BD18(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleLabel;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void (*sub_27587BD88(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  *v4 = v1;
  swift_getKeyPath();
  sub_2759B8658();

  v4[7] = sub_27587B984();
  return sub_27587BEC0;
}

void sub_27587BECC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2759B8648();

  free(v1);
}

void sub_27587BF74(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupManager;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupManager);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0EF38, off_27A664AA8);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_27587C10C()
{
  result = [*(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager) accounts];
  if (result)
  {
    v2 = result;
    type metadata accessor for AIDAServiceType(0);
    sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
    sub_275899D0C(&qword_280A0E500, type metadata accessor for AIDAServiceType);
    v3 = sub_2759BA1D8();

    if (*(v3 + 16) && (v4 = sub_2758A342C(*MEMORY[0x277CED1A0]), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      v7 = v6;
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27587C224(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  return *(v2 + *a2);
}

uint64_t sub_27587C2C4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_27587C3A0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }

  return result;
}

uint64_t sub_27587C4A4()
{
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  return *(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview);
}

uint64_t sub_27587C54C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview);
  return result;
}

uint64_t sub_27587C624(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }

  return result;
}

uint64_t sub_27587C7A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString);
  a2[1] = v4;
}

uint64_t sub_27587C858(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_27587C898(v2, v3);
}

uint64_t sub_27587C8C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      if (*v6 == a1 && v7 == a2)
      {
        goto LABEL_8;
      }

      v9 = v6[1];
      if (sub_2759BAAC8())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_27587CA5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a1 + *a4);
  v5 = v4[1];
  *v4 = a2;
  v4[1] = a3;
}

uint64_t sub_27587CAC0()
{
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  result = *(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__walrusStatus);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__walrusStatus + 8);
  return result;
}

uint64_t sub_27587CB70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v5 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__walrusStatus + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__walrusStatus);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_27587CC2C(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__walrusStatus;
  if ((*(v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__walrusStatus + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_275899D0C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8628();
}

char *iCloudHomeViewModel.__allocating_init(accountManager:account:launchedFromRootLevel:)(void *a1, void *a2, char a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D7F4A8]) init];
  v7 = objc_allocWithZone(type metadata accessor for iCloudHomeViewModel());
  v8 = sub_2758946C4(a1, a2, a3, v6, v7);

  return v8;
}

char *iCloudHomeViewModel.__allocating_init(accountManager:account:launchedFromRootLevel:privateRelayViewModel:)(void *a1, void *a2, char a3, uint64_t *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = sub_275895B90(a1, a2, a3, v11, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v12;
}

char *iCloudHomeViewModel.init(accountManager:account:launchedFromRootLevel:privateRelayViewModel:)(void *a1, void *a2, char a3, uint64_t *a4)
{
  v5 = v4;
  v10 = a4[3];
  v11 = a4[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a4, v10);
  v13 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_27589511C(a1, a2, a3, v15, v5, v10, v11);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v17;
}

uint64_t sub_27587CF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2759BA4C8();
  v4[4] = sub_2759BA4B8();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_27587D044;

  return sub_2758898DC();
}

uint64_t sub_27587D044()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v3;
  v4[1] = sub_27587D184;
  v5 = *(v1 + 16);

  return sub_27588B6EC();
}

uint64_t sub_27587D184()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v3;
  v4[1] = sub_27587D2C4;
  v5 = *(v1 + 16);

  return sub_275890ECC();
}

uint64_t sub_27587D2C4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27587D400, v5, v4);
}

uint64_t sub_27587D400()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}