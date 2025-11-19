id sub_26F0481FC()
{
  result = [objc_allocWithZone(TNController) init];
  qword_2806D1160 = result;
  return result;
}

id sub_26F04828C()
{
  v1 = v0;
  v2 = sub_26F049420();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_26F049410();
  v6 = sub_26F049400();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_26F0493F0();
  v27 = v2;
  v28 = MEMORY[0x277D71448];
  v26 = v5;
  v10 = MEMORY[0x277D71438];
  v24 = v6;
  v25 = MEMORY[0x277D71438];
  v23 = v9;
  v11 = sub_26F0494B0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v14 = sub_26F0494A0();
  *&v0[OBJC_IVAR___TNController_followUpController] = v14;
  v27 = v11;
  v28 = MEMORY[0x277D71478];
  v25 = v10;
  v26 = v14;
  v24 = v6;
  v23 = v9;
  v15 = sub_26F0494D0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v18 = sub_26F0494C0();

  v19 = &v1[OBJC_IVAR___TNController_onBoardingController];
  v20 = MEMORY[0x277D71480];
  *v19 = v18;
  v19[1] = v20;
  v22.receiver = v1;
  v22.super_class = TNController;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_26F04859C(void *a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1120, &qword_26F0499B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v33 - v3;
  v5 = sub_26F049450();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20]();
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F049510();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F0494F0();
  v13 = a1;
  v14 = sub_26F049500();
  v15 = sub_26F049540();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_26F047000, v14, v15, "Posting follow up item with configuration: %@", v16, 0xCu);
    sub_26F049360(v17, &qword_2806D1138, &qword_26F0499C8);
    MEMORY[0x274386720](v17, -1, -1);
    MEMORY[0x274386720](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1128, &qword_26F0499B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26F0499A0;
  *(inited + 32) = sub_26F049440();
  *(inited + 40) = v20;
  v21 = [v13 primaryAccountAltDSID];
  v22 = sub_26F049520();
  v24 = v23;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v22;
  *(inited + 56) = v24;
  v25 = sub_26F049174(inited);
  swift_setDeallocating();
  sub_26F049360(inited + 32, &qword_2806D1130, &qword_26F0499C0);
  v26 = [v13 expirationDate];
  if (v26)
  {
    v27 = v26;
    sub_26F0493D0();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v33;
  v30 = sub_26F0493E0();
  (*(*(v30 - 8) + 56))(v4, v28, 1, v30);
  sub_26F0489B0(v25);

  sub_26F049430();

  sub_26F049360(v4, &qword_2806D1120, &qword_26F0499B0);
  v31 = *(v36 + OBJC_IVAR___TNController_followUpController);
  sub_26F049460();
  return (*(v34 + 8))(v29, v35);
}

uint64_t sub_26F0489B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1140, &qword_26F0499D0);
    v2 = sub_26F049560();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26F049284(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_26F0492E0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_26F0492E0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_26F0492E0(v32, v33);
    v17 = *(v2 + 40);
    result = sub_26F049550();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_26F0492E0(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26F048D08()
{
  v1 = v0;
  v2 = sub_26F049510();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F0494F0();
  v7 = sub_26F049500();
  v8 = sub_26F049540();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26F047000, v7, v8, "Re-posting follow up item", v9, 2u);
    MEMORY[0x274386720](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + OBJC_IVAR___TNController_followUpController);
  return sub_26F049480();
}

unint64_t type metadata accessor for TNController()
{
  result = qword_2806D1168;
  if (!qword_2806D1168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806D1168);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26F049044(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26F049580();
  sub_26F049530();
  v6 = sub_26F049590();

  return sub_26F0490BC(a1, a2, v6);
}

unint64_t sub_26F0490BC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26F049570())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26F049174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1148, &qword_26F0499D8);
    v3 = sub_26F049560();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F0492F0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_26F049044(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26F0492E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_26F049284(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_26F0492E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26F0492F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1130, &qword_26F0499C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F049360(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}