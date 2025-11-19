uint64_t sub_21CA963C8(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7260, &qword_21CBC4718);
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v6 = &v46 - v5;
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = _s24AccountContainerIdentityOMa();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v21);
  v46 = &v46 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  v47 = v2;
  v61 = *v2;
  v26 = *(v61 + 40);
  sub_21CB86484();
  sub_21CAA431C(a2, v25, _s24AccountContainerIdentityOMa);
  v27 = v8 + 48;
  v60 = *(v8 + 48);
  if (v60(v25, 1, v7) == 1)
  {
    MEMORY[0x21CF15F90](0);
  }

  else
  {
    (*(v8 + 32))(v13, v25, v7);
    MEMORY[0x21CF15F90](1);
    sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978]);
    sub_21CB85494();
    (*(v8 + 8))(v13, v7);
  }

  v28 = sub_21CB864D4();
  v29 = -1 << *(v61 + 32);
  v30 = v28 & ~v29;
  v59 = v61 + 56;
  if (((*(v61 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
  {
LABEL_16:
    v40 = v47;
    v41 = *v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v46;
    sub_21CAA431C(a2, v46, _s24AccountContainerIdentityOMa);
    v64 = *v40;
    sub_21CA9C9C0(v43, v30, isUniquelyReferenced_nonNull_native);
    *v40 = v64;
    sub_21CAA43E4(a2, v48, _s24AccountContainerIdentityOMa);
    return 1;
  }

  v56 = v17;
  v57 = ~v29;
  v58 = *(v58 + 72);
  v49 = (v8 + 32);
  v53 = (v8 + 8);
  v31 = v51;
  v50 = a2;
  v52 = v27;
  v54 = v20;
  while (1)
  {
    v32 = v58 * v30;
    sub_21CAA431C(*(v61 + 48) + v58 * v30, v20, _s24AccountContainerIdentityOMa);
    v33 = *(v31 + 48);
    sub_21CAA431C(v20, v6, _s24AccountContainerIdentityOMa);
    sub_21CAA431C(a2, &v6[v33], _s24AccountContainerIdentityOMa);
    v34 = v60;
    if (v60(v6, 1, v7) == 1)
    {
      sub_21CAA4384(v20, _s24AccountContainerIdentityOMa);
      if (v34(&v6[v33], 1, v7) == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    v35 = v56;
    sub_21CAA431C(v6, v56, _s24AccountContainerIdentityOMa);
    if (v34(&v6[v33], 1, v7) == 1)
    {
      v36 = v54;
      sub_21CAA4384(v54, _s24AccountContainerIdentityOMa);
      v37 = v35;
      v20 = v36;
      (*v53)(v37, v7);
LABEL_7:
      sub_21C6EA794(v6, &qword_27CDF7260, &qword_21CBC4718);
      goto LABEL_8;
    }

    (*v49)(v55, &v6[v33], v7);
    sub_21CAA44BC(&qword_27CDECD58, MEMORY[0x277D49978]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v64 == v62 && v65 == v63)
    {
      break;
    }

    v38 = sub_21CB86344();
    v39 = *v53;
    (*v53)(v55, v7);
    v20 = v54;
    sub_21CAA4384(v54, _s24AccountContainerIdentityOMa);

    v39(v56, v7);
    a2 = v50;
    v31 = v51;
    if (v38)
    {
      goto LABEL_18;
    }

    sub_21CAA4384(v6, _s24AccountContainerIdentityOMa);
LABEL_8:
    v30 = (v30 + 1) & v57;
    if (((*(v59 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v45 = *v53;
  (*v53)(v55, v7);
  sub_21CAA4384(v54, _s24AccountContainerIdentityOMa);

  v45(v56, v7);
  a2 = v50;
LABEL_18:
  sub_21CAA4384(v6, _s24AccountContainerIdentityOMa);
  sub_21CAA4384(a2, _s24AccountContainerIdentityOMa);
  sub_21CAA431C(*(v61 + 48) + v32, v48, _s24AccountContainerIdentityOMa);
  return 0;
}

uint64_t sub_21CA96B80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21CB813C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_21CAA44BC(&qword_27CDF0CC8, MEMORY[0x277CBA690]);
  v36 = a2;
  v13 = sub_21CB85484();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_21CAA44BC(&qword_27CDF0CD0, MEMORY[0x277CBA690]);
      v23 = sub_21CB85574();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_21CA9D110(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_21CA96E60(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21CB86484();
  sub_21CB864A4();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x21CF15F90](a2);
  }

  v9 = sub_21CB864D4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = *(v7 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v15)
      {
        if (a3)
        {
          result = 0;
          a2 = v14;
          goto LABEL_12;
        }
      }

      else if ((a3 & 1) == 0 && v14 == a2)
      {
        result = 0;
        goto LABEL_12;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;
  sub_21CA9D3D8(a2, a3 & 1, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  result = 1;
  v15 = a3;
LABEL_12:
  *a1 = a2;
  *(a1 + 8) = v15 & 1;
  return result;
}

uint64_t sub_21CA96FB4(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3E0, &unk_21CBA1A70);
  v4 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v6 = &v43 - v5;
  v7 = sub_21CB80DD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v18);
  v44 = &v43 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  v45 = v2;
  v23 = *v2;
  v24 = *(*v2 + 40);
  sub_21CB86484();
  v25 = a2;
  sub_21CAA444C(a2, v22);
  v26 = *(v8 + 48);
  v58 = v8 + 48;
  v27 = v26(v22, 1, v7);
  v49 = v11;
  if (v27 == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    (*(v8 + 32))(v11, v22, v7);
    sub_21CB864A4();
    sub_21CAA44BC(&qword_27CDEC280, MEMORY[0x277CC9578]);
    sub_21CB85494();
    (*(v8 + 8))(v11, v7);
  }

  v28 = sub_21CB864D4();
  v29 = -1 << *(v23 + 32);
  v30 = v28 & ~v29;
  v55 = v23 + 56;
  if (((*(v23 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
  {
LABEL_14:
    v38 = v45;
    v39 = *v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v44;
    sub_21CAA444C(v25, v44);
    v59 = *v38;
    sub_21CA9D57C(v41, v30, isUniquelyReferenced_nonNull_native);
    *v38 = v59;
    sub_21C6F1098(v25, v46);
    return 1;
  }

  v52 = ~v29;
  v47 = (v8 + 32);
  v48 = v17;
  v53 = *(v53 + 72);
  v54 = v26;
  v51 = (v8 + 8);
  while (1)
  {
    v31 = v53 * v30;
    sub_21CAA444C(*(v23 + 48) + v53 * v30, v17);
    v32 = *(v57 + 48);
    sub_21CAA444C(v17, v6);
    sub_21CAA444C(v25, &v6[v32]);
    v33 = v54;
    if (v54(v6, 1, v7) == 1)
    {
      break;
    }

    sub_21CAA444C(v6, v56);
    if (v33(&v6[v32], 1, v7) == 1)
    {
      sub_21C6EA794(v17, &unk_27CDED250, &qword_21CBA64C0);
      (*v51)(v56, v7);
      goto LABEL_7;
    }

    v34 = v49;
    (*v47)(v49, &v6[v32], v7);
    sub_21CAA44BC(&qword_27CDEB3E8, MEMORY[0x277CC9578]);
    v35 = v56;
    v50 = sub_21CB85574();
    v36 = *v51;
    v37 = v34;
    v17 = v48;
    (*v51)(v37, v7);
    sub_21C6EA794(v17, &unk_27CDED250, &qword_21CBA64C0);
    v36(v35, v7);
    sub_21C6EA794(v6, &unk_27CDED250, &qword_21CBA64C0);
    if (v50)
    {
      goto LABEL_16;
    }

LABEL_8:
    v30 = (v30 + 1) & v52;
    if (((*(v55 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_21C6EA794(v17, &unk_27CDED250, &qword_21CBA64C0);
  if (v33(&v6[v32], 1, v7) != 1)
  {
LABEL_7:
    sub_21C6EA794(v6, &qword_27CDEB3E0, &unk_21CBA1A70);
    goto LABEL_8;
  }

  sub_21C6EA794(v6, &unk_27CDED250, &qword_21CBA64C0);
LABEL_16:
  sub_21C6EA794(v25, &unk_27CDED250, &qword_21CBA64C0);
  sub_21CAA444C(*(v23 + 48) + v31, v46);
  return 0;
}

uint64_t sub_21CA975DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7218, &qword_21CBC46D8);
    v2 = sub_21CB86064();
    v16 = v2;
    sub_21CB85F64();
    if (sub_21CB85FE4())
    {
      sub_21C6E8F4C(0, &qword_27CDF7210, 0x277CC1E90);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_21CA9832C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_21CB85DC4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_21CB85FE4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_21CA977CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7250, &qword_21CBC4708);
    v2 = sub_21CB86064();
    v16 = v2;
    sub_21CB85F64();
    for (; sub_21CB85FE4(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_21CA99764(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_21CB86484();
      MEMORY[0x21CF15F90]();
      result = sub_21CB864D4();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_21CA979D8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_21CB85C44();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7240, &qword_21CBC46F8);
  result = sub_21CB86054();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978]);
      result = sub_21CB85484();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_21CA97D34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE78, &qword_21CBADAF8);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21CA97F94(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7278, &unk_21CBC4730);
  result = sub_21CB86054();
  v11 = result;
  if (*(v8 + 16))
  {
    v37 = v2;
    v38 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v39 + 72);
      sub_21CAA43E4(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v25 = *(v11 + 40);
      sub_21CB86484();
      type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
      sub_21CAA44BC(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
      sub_21CB85494();
      v26 = *&v7[*(v40 + 20)];
      sub_21CB864A4();
      if (v26)
      {
        v27 = v26;
        sub_21CB85DE4();
      }

      result = sub_21CB864D4();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_21CAA43E4(v7, *(v11 + 48) + v19 * v24, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      ++*(v11 + 16);
      v8 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v8 + 32);
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    v2 = v37;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_21CA9832C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7218, &qword_21CBC46D8);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_21CB85DC4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21CA98554(uint64_t a1)
{
  v2 = v1;
  v41 = sub_21CB85BB4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7270, &qword_21CBC4728);
  result = sub_21CB86054();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_21CAA44BC(&qword_27CDEAF60, MEMORY[0x277D49948]);
      result = sub_21CB85484();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_21CA988B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF68, &qword_21CBC47C0);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_21CA98B10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7298, &qword_21CBC47C8);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = (*(v3 + 48) + 112 * (v13 | (v7 << 6)));
      v25 = v16[4];
      v26 = v16[5];
      v27 = v16[6];
      v21 = *v16;
      v22 = v16[1];
      v23 = v16[2];
      v24 = v16[3];
      v17 = *(v6 + 40);
      sub_21CB86484();
      sub_21C9DC744();
      sub_21CB864D4();
      v18 = -1 << *(v6 + 32);
      result = sub_21CB85F44();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v19 = (*(v6 + 48) + 112 * result);
      v19[4] = v25;
      v19[5] = v26;
      v19[6] = v27;
      *v19 = v21;
      v19[1] = v22;
      v19[2] = v23;
      v19[3] = v24;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      bzero((v3 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21CA98D3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7280, &unk_21CBC47A0);
  result = sub_21CB86054();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_21CA9A150(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_21CAA43E4(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8, type metadata accessor for PMAccount);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_21CA98F44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s24AccountContainerIdentityOMa();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v15 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7268, &qword_21CBC4720);
  result = sub_21CB86054();
  v17 = result;
  if (*(v14 + 16))
  {
    v50 = v4;
    v44 = v2;
    v18 = 0;
    v19 = (v14 + 56);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 56);
    v23 = (v20 + 63) >> 6;
    v49 = (v5 + 48);
    v45 = (v5 + 8);
    v46 = (v5 + 32);
    v24 = result + 56;
    v25 = v52;
    v47 = v14;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = *(v14 + 48);
      v53 = *(v51 + 72);
      sub_21CAA43E4(v30 + v53 * (v27 | (v18 << 6)), v13, _s24AccountContainerIdentityOMa);
      v31 = *(v17 + 40);
      sub_21CB86484();
      v32 = v13;
      sub_21CAA431C(v13, v25, _s24AccountContainerIdentityOMa);
      v33 = v50;
      if ((*v49)(v25, 1, v50) == 1)
      {
        MEMORY[0x21CF15F90](0);
      }

      else
      {
        v34 = v48;
        (*v46)(v48, v25, v33);
        MEMORY[0x21CF15F90](1);
        sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978]);
        sub_21CB85494();
        v35 = v34;
        v14 = v47;
        (*v45)(v35, v33);
      }

      result = sub_21CB864D4();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      v13 = v32;
      if (((-1 << v37) & ~*(v24 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v25 = v52;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v24 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v24 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v25 = v52;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_21CAA43E4(v32, *(v17 + 48) + v26 * v53, _s24AccountContainerIdentityOMa);
      ++*(v17 + 16);
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    v43 = 1 << *(v14 + 32);
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    v2 = v44;
    *(v14 + 16) = 0;
  }

  *v2 = v17;
  return result;
}

uint64_t sub_21CA99408(uint64_t a1)
{
  v2 = v1;
  v41 = sub_21CB813C4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7248, &qword_21CBC4700);
  result = sub_21CB86054();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_21CAA44BC(&qword_27CDF0CC8, MEMORY[0x277CBA690]);
      result = sub_21CB85484();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_21CA99764(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7250, &qword_21CBC4708);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_21CB86484();
      MEMORY[0x21CF15F90](v18);
      result = sub_21CB864D4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21CA999B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7288, &qword_21CBC47B0);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 16 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v6 + 40);
      sub_21CB86484();
      sub_21CB864A4();
      if (v21 != 1)
      {
        MEMORY[0x21CF15F90](v20);
      }

      result = sub_21CB864D4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 16 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21CA99C38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB80DD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v15 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7290, &qword_21CBC47B8);
  result = sub_21CB86054();
  v17 = result;
  if (*(v14 + 16))
  {
    v50 = v4;
    v44 = v2;
    v18 = 0;
    v19 = (v14 + 56);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 56);
    v23 = (v20 + 63) >> 6;
    v49 = (v5 + 48);
    v45 = (v5 + 8);
    v46 = (v5 + 32);
    v24 = result + 56;
    v25 = v52;
    v47 = v14;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = *(v14 + 48);
      v53 = *(v51 + 72);
      sub_21C6F1098(v30 + v53 * (v27 | (v18 << 6)), v13);
      v31 = *(v17 + 40);
      sub_21CB86484();
      v32 = v13;
      sub_21CAA444C(v13, v25);
      v33 = v50;
      if ((*v49)(v25, 1, v50) == 1)
      {
        sub_21CB864A4();
      }

      else
      {
        v34 = v48;
        (*v46)(v48, v25, v33);
        sub_21CB864A4();
        sub_21CAA44BC(&qword_27CDEC280, MEMORY[0x277CC9578]);
        sub_21CB85494();
        v35 = v34;
        v14 = v47;
        (*v45)(v35, v33);
      }

      result = sub_21CB864D4();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      v13 = v32;
      if (((-1 << v37) & ~*(v24 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v25 = v52;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v24 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v24 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v25 = v52;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_21C6F1098(v32, *(v17 + 48) + v26 * v53);
      ++*(v17 + 16);
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    v43 = 1 << *(v14 + 32);
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    v2 = v44;
    *(v14 + 16) = 0;
  }

  *v2 = v17;
  return result;
}

unint64_t sub_21CA9A0CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_21CB85DC4();
  v5 = -1 << *(a2 + 32);
  result = sub_21CB85F44();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_21CA9A150(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a2 + 40);
  sub_21CB86484();
  v13 = *a1;
  v14 = a1[1];
  sub_21CB854C4();
  v15 = type metadata accessor for PMAccount(0);
  v16 = a1 + v15[5];
  sub_21C7CECE4();
  sub_21CAA431C(a1 + v15[6], v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAA43E4(v11, v7, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)();
    sub_21CAA4384(v7, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v17 = *v11;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  v18 = a1 + v15[7];
  if (*(v18 + 1))
  {
    v19 = *(v18 + 3);
    v20 = v18[16];
    v21 = *v18;
    sub_21CB864A4();
    sub_21CB854C4();
    sub_21CB864A4();
    sub_21CB85DE4();
  }

  else
  {
    sub_21CB864A4();
  }

  sub_21CB864D4();
  v22 = -1 << *(a2 + 32);
  v23 = sub_21CB85F44();
  *(a2 + 56 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
  result = sub_21CAA43E4(a1, *(a2 + 48) + *(*(v15 - 1) + 72) * v23, type metadata accessor for PMAccount);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_21CA9A3EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_21CB86484();
  MEMORY[0x21CF15F90](a1);
  sub_21CB864D4();
  v5 = -1 << *(a2 + 32);
  result = sub_21CB85F44();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_21CA9A490(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CA979D8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21CA9E77C(MEMORY[0x277D49978], &qword_27CDF7240, &qword_21CBC46F8);
      goto LABEL_12;
    }

    sub_21CA9EE44(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978]);
  v15 = sub_21CB85484();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_21CAA44BC(&qword_27CDEAC48, MEMORY[0x277D49978]);
      v23 = sub_21CB85574();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21CB863A4();
  __break(1u);
  return result;
}

uint64_t sub_21CA9A758(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21CA97D34(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21CA9DBC0();
      goto LABEL_16;
    }

    sub_21CA9F160(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21CB86484();
  sub_21CB854C4();
  result = sub_21CB864D4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21CB86344();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21CB863A4();
  __break(1u);
  return result;
}

uint64_t sub_21CA9A8D8(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v86 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_126;
  }

  if (a3)
  {
    sub_21CA97F94(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_21CA9DD1C();
      goto LABEL_126;
    }

    sub_21CA9F398(v13 + 1);
  }

  v15 = *v4;
  v16 = *(*v4 + 40);
  sub_21CB86484();
  v17 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CAA44BC(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
  sub_21CB85494();
  v71 = *(a1 + *(v8 + 20));
  v18 = v71;
  sub_21CB864A4();
  if (v18)
  {
    v19 = v18;
    sub_21CB85DE4();
  }

  v20 = sub_21CB864D4();
  v21 = -1 << *(v15 + 32);
  a2 = v20 & ~v21;
  v83 = v15 + 56;
  if (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
LABEL_126:
    v64 = *v4;
    *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    result = sub_21CAA43E4(a1, *(v64 + 48) + *(v9 + 72) * a2, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v66 = *(v64 + 16);
    v38 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (!v38)
    {
      *(v64 + 16) = v67;
      v68 = *MEMORY[0x277D85DE8];
      return result;
    }

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
  }

  v70 = v17;
  v69 = v8;
  v81 = ~v21;
  v22 = *a1;
  v23 = *(a1 + 8);
  if (*a1)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 == 0xC000000000000000;
  }

  v25 = !v24;
  v80 = v25;
  v82 = *(v9 + 72);
  v26 = v23 >> 62;
  v78 = v22;
  v27 = HIDWORD(v22) - v22;
  v28 = __OFSUB__(HIDWORD(v22), v22);
  v77 = v28;
  v75 = v23;
  v76 = v27;
  v79 = BYTE6(v23);
  v73 = v4;
  v72 = v9;
  v74 = v15;
  while (1)
  {
    sub_21CAA431C(*(v15 + 48) + v82 * a2, v12, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v29 = *v12;
    v30 = v12[1];
    v31 = v30 >> 62;
    if (v30 >> 62 == 3)
    {
      if (v29)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30 == 0xC000000000000000;
      }

      v34 = !v32 || v26 < 3;
      if (((v34 | v80) & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_43:
      v35 = 0;
      if (v26 <= 1)
      {
        goto LABEL_40;
      }

      goto LABEL_44;
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_43;
      }

      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v38)
      {
        goto LABEL_132;
      }

      if (v26 <= 1)
      {
        goto LABEL_40;
      }
    }

    else if (v31)
    {
      LODWORD(v35) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_131;
      }

      v35 = v35;
      if (v26 <= 1)
      {
LABEL_40:
        v39 = v79;
        if (v26)
        {
          v39 = v76;
          if (v77)
          {
            goto LABEL_129;
          }
        }

        goto LABEL_46;
      }
    }

    else
    {
      v35 = BYTE6(v30);
      if (v26 <= 1)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    if (v26 != 2)
    {
      if (v35)
      {
        goto LABEL_120;
      }

      goto LABEL_71;
    }

    v41 = *(v78 + 16);
    v40 = *(v78 + 24);
    v38 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v38)
    {
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

LABEL_46:
    if (v35 != v39)
    {
      goto LABEL_120;
    }

    if (v35 >= 1)
    {
      if (v31 > 1)
      {
        if (v31 != 2)
        {
          *&v85[6] = 0;
          *v85 = 0;
LABEL_70:
          sub_21CA8FA10(v85, v78, v75, &v84);
          if (!v84)
          {
            goto LABEL_120;
          }

          goto LABEL_71;
        }

        v42 = *(v29 + 16);
        v43 = *(v29 + 24);
        v44 = sub_21CB808C4();
        if (v44)
        {
          v45 = sub_21CB808F4();
          if (__OFSUB__(v42, v45))
          {
            goto LABEL_135;
          }

          v44 += v42 - v45;
        }

        if (__OFSUB__(v43, v42))
        {
          goto LABEL_134;
        }

        sub_21CB808E4();
        sub_21CA8FA10(v44, v78, v75, v85);
        v46 = v85[0];
        v4 = v73;
        v9 = v72;
      }

      else
      {
        if (!v31)
        {
          *v85 = *v12;
          *&v85[8] = v30;
          v85[10] = BYTE2(v30);
          v85[11] = BYTE3(v30);
          v85[12] = BYTE4(v30);
          v85[13] = BYTE5(v30);
          goto LABEL_70;
        }

        v47 = v29;
        if (v29 >> 32 < v29)
        {
          goto LABEL_133;
        }

        v48 = sub_21CB808C4();
        if (v48)
        {
          v49 = sub_21CB808F4();
          if (__OFSUB__(v47, v49))
          {
            goto LABEL_136;
          }

          v48 += v47 - v49;
        }

        v9 = v72;
        sub_21CB808E4();
        sub_21CA8FA10(v48, v78, v75, v85);
        v46 = v85[0];
        v4 = v73;
      }

      v15 = v74;
      if ((v46 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

LABEL_71:
    if ((v12[2] != *(a1 + 16) || v12[3] != *(a1 + 24)) && (sub_21CB86344() & 1) == 0 || (v12[4] != *(a1 + 32) || v12[5] != *(a1 + 40)) && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_120;
    }

    v50 = v12[6];
    v51 = *(a1 + 48);
    if (*(a1 + 56) == 1)
    {
      if (v51 <= 1)
      {
        if (v51)
        {
          if (v50 != 1)
          {
            goto LABEL_120;
          }
        }

        else if (v50)
        {
          goto LABEL_120;
        }
      }

      else if (v51 == 2)
      {
        if (v50 != 2)
        {
          goto LABEL_120;
        }
      }

      else if (v51 == 3)
      {
        if (v50 != 3)
        {
          goto LABEL_120;
        }
      }

      else if (v50 != 4)
      {
        goto LABEL_120;
      }
    }

    else if (v50 != v51)
    {
      goto LABEL_120;
    }

    v52 = v12[8];
    v53 = *(a1 + 64);
    if (*(a1 + 72) == 1)
    {
      if (v53)
      {
        if (v53 == 1)
        {
          if (v52 != 1)
          {
            goto LABEL_120;
          }
        }

        else if (v52 != 2)
        {
          goto LABEL_120;
        }
      }

      else if (v52)
      {
        goto LABEL_120;
      }
    }

    else if (v52 != v53)
    {
      goto LABEL_120;
    }

    v54 = v12[10];
    v55 = *(a1 + 80);
    if (*(a1 + 88) != 1)
    {
      if (v54 != v55)
      {
        goto LABEL_120;
      }

      goto LABEL_113;
    }

    if (!v55)
    {
      if (!v54)
      {
        goto LABEL_113;
      }

      goto LABEL_120;
    }

    if (v55 == 1)
    {
      break;
    }

    if (v54 == 2)
    {
      goto LABEL_113;
    }

LABEL_120:
    sub_21CAA4384(v12, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
LABEL_121:
    a2 = (a2 + 1) & v81;
    if (((*(v83 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_126;
    }
  }

  if (v54 != 1)
  {
    goto LABEL_120;
  }

LABEL_113:
  if (v12[12] != *(a1 + 96))
  {
    goto LABEL_120;
  }

  v56 = *(v70 + 44);
  sub_21CB811C4();
  sub_21CAA44BC(&unk_27CDF8A70, MEMORY[0x277D216C8]);
  if ((sub_21CB85574() & 1) == 0)
  {
    v15 = v74;
    goto LABEL_120;
  }

  v57 = *(v12 + *(v69 + 20));
  if (v57)
  {
    v58 = v71;
    if (v71)
    {
      sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
      v59 = v58;
      v60 = v57;
      v61 = sub_21CB85DD4();
      sub_21CAA4384(v12, type metadata accessor for PMTOTPMigrationModel.TOTPCode);

      v15 = v74;
      if (v61)
      {
        goto LABEL_137;
      }
    }

    else
    {
      sub_21CAA4384(v12, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v15 = v74;
    }

    goto LABEL_121;
  }

  v62 = v71;
  v63 = v71;
  sub_21CAA4384(v12, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  v15 = v74;
  if (v62)
  {

    goto LABEL_121;
  }

LABEL_137:
  result = sub_21CB863A4();
  __break(1u);
  return result;
}

void sub_21CA9B1B4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CA9832C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21CA9DF28();
      goto LABEL_12;
    }

    sub_21CA9F700(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_21CB85DC4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_21C6E8F4C(0, &qword_27CDF7210, 0x277CC1E90);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_21CB85DD4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21CB863A4();
  __break(1u);
}

uint64_t sub_21CA9B324(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_21CB85BB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CA98554(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21CA9E77C(MEMORY[0x277D49948], &qword_27CDF7270, &qword_21CBC4728);
      goto LABEL_12;
    }

    sub_21CA9F914(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_21CAA44BC(&qword_27CDEAF60, MEMORY[0x277D49948]);
  v15 = sub_21CB85484();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_21CAA44BC(&qword_27CDEAF68, MEMORY[0x277D49948]);
      v23 = sub_21CB85574();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21CB863A4();
  __break(1u);
  return result;
}

void sub_21CA9B5EC(unint64_t *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_42;
  }

  if (a3)
  {
    sub_21CA98B10(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_21CA9E1D4();
      goto LABEL_42;
    }

    sub_21CA9FE68(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_21CB86484();
  sub_21C9DC744();
  v11 = sub_21CB864D4();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    v14 = *a1;
    v15 = a1[1];
    do
    {
      v16 = (*(v9 + 48) + 112 * a2);
      v18 = v16[1];
      v17 = v16[2];
      v38 = *v16;
      v39 = v18;
      v40 = v17;
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[6];
      *v43 = v16[5];
      *&v43[16] = v21;
      v41 = v19;
      v42 = v20;
      if (*(&v38 + 1))
      {
        if (!v15 || v38 != __PAIR128__(v15, v14) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v15)
      {
        goto LABEL_11;
      }

      v22 = a1[3];
      if (*(&v39 + 1))
      {
        if (!v22 || v39 != *(a1 + 1) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v22)
      {
        goto LABEL_11;
      }

      if (v40 != *(a1 + 2) && (sub_21CB86344() & 1) == 0 || v41 != *(a1 + 3) && (sub_21CB86344() & 1) == 0 || v42 != *(a1 + 4) && (sub_21CB86344() & 1) == 0 || v43[0] != (a1[10] & 1) || __PAIR64__(v43[2], v43[1]) != __PAIR64__(*(a1 + 82), *(a1 + 81)))
      {
        goto LABEL_11;
      }

      v23 = a1[12];
      if (*&v43[16])
      {
        if (!v23 || *&v43[8] != *(a1 + 11) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v23)
      {
        goto LABEL_11;
      }

      v24 = a1[13];
      if (*&v43[24])
      {
        if (v24)
        {
          v35 = *&v43[24];
          sub_21C6E8F4C(0, &qword_27CDF8A90, 0x277CBDA58);
          sub_21C7A33F0(&v38, v37);
          v34 = v24;
          v36 = v35;
          v25 = sub_21CB85DD4();
          sub_21C7A344C(&v38);

          if (v25)
          {
LABEL_41:
            sub_21CB863A4();
            __break(1u);
            break;
          }
        }
      }

      else if (!v24)
      {
        goto LABEL_41;
      }

LABEL_11:
      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_42:
  v26 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = (*(v26 + 48) + 112 * a2);
  v28 = *(a1 + 1);
  *v27 = *a1;
  v27[1] = v28;
  v29 = *(a1 + 6);
  v27[5] = *(a1 + 5);
  v27[6] = v29;
  v30 = *(a1 + 4);
  v27[3] = *(a1 + 3);
  v27[4] = v30;
  v27[2] = *(a1 + 2);
  v31 = *(v26 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v33;
  }
}

uint64_t sub_21CA9B96C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21CA988B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21CA9E078();
      goto LABEL_16;
    }

    sub_21CA9FC30(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21CB86484();
  sub_21CB854C4();
  result = sub_21CB864D4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21CB86344();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21CB863A4();
  __break(1u);
  return result;
}

uint64_t sub_21CA9BAEC(void *a1, unint64_t a2, char a3)
{
  v130 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7680, &qword_21CBB4E30);
  v6 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v118 = v99 - v7;
  v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v117 = (v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v116 = (v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for PMAccount.UniqueID(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v124 = (v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v123 = (v99 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v99 - v21;
  v129 = type metadata accessor for PMAccount(0);
  v115 = *(v129 - 1);
  v23 = *(v115 + 64);
  MEMORY[0x28223BE20](v129);
  v25 = (v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for PMAccount.MockData(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = v99 - v31;
  v120 = type metadata accessor for PMAccount.Storage(0);
  v33 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v112 = (v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  v111 = (v99 - v36);
  MEMORY[0x28223BE20](v37);
  v39 = (v99 - v38);
  v40 = *(*v3 + 16);
  v41 = *(*v3 + 24);
  v114 = v3;
  if (v41 <= v40 || (a3 & 1) == 0)
  {
    v122 = v19;
    if (a3)
    {
      v104 = v29;
      sub_21CA98D3C(v40 + 1);
    }

    else
    {
      if (v41 > v40)
      {
        sub_21CA9E364();
        goto LABEL_55;
      }

      v104 = v29;
      sub_21CAA0070(v40 + 1);
    }

    v29 = *v3;
    v42 = *(*v3 + 40);
    sub_21CB86484();
    v43 = v130;
    v44 = v130[1];
    v131 = *v130;
    sub_21CB854C4();
    v45 = v129;
    v125 = v129[5];
    sub_21C7CECE4();
    v113 = v45[6];
    sub_21CAA431C(v43 + v113, v39, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CAA43E4(v39, v32, type metadata accessor for PMAccount.MockData);
      MEMORY[0x21CF15F90](1);
      PMAccount.MockData.hash(into:)();
      sub_21CAA4384(v32, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v46 = *v39;
      MEMORY[0x21CF15F90](0);
      sub_21CB85DE4();
    }

    v47 = v130 + v129[7];
    v48 = *(v47 + 1);
    v103 = v47;
    if (v48)
    {
      v49 = *(v47 + 3);
      v50 = v47[16];
      v51 = *v47;
      sub_21CB864A4();
      sub_21CB854C4();
      sub_21CB864A4();
      sub_21CB85DE4();
    }

    else
    {
      sub_21CB864A4();
    }

    v52 = v122;
    v3 = &v132;
    v53 = sub_21CB864D4();
    v54 = -1 << v29[32];
    a2 = v53 & ~v54;
    v128 = v29 + 56;
    if ((*&v29[((a2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> a2))
    {
      v127 = ~v54;
      v126 = *(v115 + 72);
      v121 = v14;
      v107 = v29;
      do
      {
        sub_21CAA431C(*(v29 + 6) + v126 * a2, v25, type metadata accessor for PMAccount);
        v55 = *v25 == v131 && v25[1] == v44;
        if (!v55 && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_17;
        }

        v3 = *(v52 + 48);
        sub_21CAA431C(v25 + v129[5], v22, type metadata accessor for PMAccount.UniqueID);
        sub_21CAA431C(v130 + v125, &v22[v3], type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v56 = v124;
          sub_21CAA431C(v22, v124, type metadata accessor for PMAccount.UniqueID);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v59 = type metadata accessor for PMAccount.SIWAUniqueID;
            goto LABEL_30;
          }

          v57 = v117;
          sub_21CAA43E4(&v22[v3], v117, type metadata accessor for PMAccount.SIWAUniqueID);
          v58 = sub_21C7D1550(v56, v57);
          v3 = type metadata accessor for PMAccount.SIWAUniqueID;
          sub_21CAA4384(v57, type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21CAA4384(v56, type metadata accessor for PMAccount.SIWAUniqueID);
          if (!v58)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v56 = v123;
          sub_21CAA431C(v22, v123, type metadata accessor for PMAccount.UniqueID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v59 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_30:
            sub_21CAA4384(v56, v59);
            sub_21C6EA794(v22, &qword_27CDEB3C8, &unk_21CBB0010);
            goto LABEL_17;
          }

          v60 = v116;
          sub_21CAA43E4(&v22[v3], v116, type metadata accessor for PMAccount.CombinedUniqueID);
          v61 = v56;
          v62 = sub_21C7D1A58(v56, v60);
          v3 = type metadata accessor for PMAccount.CombinedUniqueID;
          sub_21CAA4384(v60, type metadata accessor for PMAccount.CombinedUniqueID);
          sub_21CAA4384(v61, type metadata accessor for PMAccount.CombinedUniqueID);
          if (!v62)
          {
LABEL_16:
            sub_21CAA4384(v22, type metadata accessor for PMAccount.UniqueID);
            v52 = v122;
            goto LABEL_17;
          }
        }

        sub_21CAA4384(v22, type metadata accessor for PMAccount.UniqueID);
        v3 = *(v119 + 48);
        v63 = v118;
        sub_21CAA431C(v25 + v129[6], v118, type metadata accessor for PMAccount.Storage);
        sub_21CAA431C(v130 + v113, v63 + v3, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v64 = v112;
          sub_21CAA431C(v63, v112, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_21CAA4384(v64, type metadata accessor for PMAccount.MockData);
            goto LABEL_39;
          }

          v65 = v104;
          sub_21CAA43E4(v63 + v3, v104, type metadata accessor for PMAccount.MockData);
          v66 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v64, v65);
          v3 = type metadata accessor for PMAccount.MockData;
          sub_21CAA4384(v65, type metadata accessor for PMAccount.MockData);
          sub_21CAA4384(v64, type metadata accessor for PMAccount.MockData);
          if (!v66)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v67 = v111;
          sub_21CAA431C(v63, v111, type metadata accessor for PMAccount.Storage);
          v68 = *v67;
          if (swift_getEnumCaseMultiPayload() == 1)
          {

LABEL_39:
            sub_21C6EA794(v63, &unk_27CDF7680, &qword_21CBB4E30);
            v52 = v122;
            goto LABEL_17;
          }

          v69 = *(v63 + v3);
          sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
          v3 = sub_21CB85DD4();

          if ((v3 & 1) == 0)
          {
LABEL_35:
            sub_21CAA4384(v63, type metadata accessor for PMAccount.Storage);
            v52 = v122;
            v29 = v107;
            goto LABEL_17;
          }
        }

        sub_21CAA4384(v63, type metadata accessor for PMAccount.Storage);
        v70 = (v25 + v129[7]);
        v71 = *v70;
        v72 = v70[1];
        v74 = v70[2];
        v73 = v70[3];
        v110 = v74;
        v108 = v73;
        v3 = *v103;
        v75 = v103[1];
        v29 = v103[2];
        v76 = v103[3];
        v109 = v29;
        v106 = v3;
        v105 = v75;
        if (!v72)
        {
          v102 = v71;
          v85 = v75;
          sub_21C7D33AC(v71, 0, v110, v108);
          v86 = v85;
          v52 = v122;
          if (!v86)
          {
            goto LABEL_58;
          }

          sub_21C7D33AC(v3, v86, v29, v76);
          v29 = v107;
          v3 = v102;
          goto LABEL_51;
        }

        v101 = v76;
        v52 = v122;
        if (!v75)
        {
          v87 = v108;
          v88 = v3;
          v3 = v71;
          sub_21C7D33AC(v71, v72, v110, v108);
          v89 = v88;
          v76 = v101;
          sub_21C7D33AC(v89, 0, v109, v101);
          sub_21C7D33AC(v3, v72, v110, v87);

          v29 = v107;
LABEL_51:
          sub_21C7D33F0(v3, v72, v110, v108);
          v82 = v106;
          v83 = v105;
          v84 = &v133;
          goto LABEL_52;
        }

        v29 = v107;
        v102 = v71;
        if (v71 != v3 || v72 != v75) && (v77 = v75, v78 = v71, v79 = sub_21CB86344(), v75 = v77, v71 = v78, v3 = v106, (v79 & 1) == 0) || ((v110 ^ v109))
        {
          v80 = v75;
          sub_21C7D33AC(v71, v72, v110, v108);
          v81 = v3;
          v3 = v101;
          sub_21C7D33AC(v81, v80, v109, v101);
          v76 = v108;
          sub_21C7D33AC(v102, v72, v110, v108);
          sub_21C7D33F0(v106, v105, v109, v3);

          v82 = v102;
          v83 = v72;
          v84 = &v134;
LABEL_52:
          sub_21C7D33F0(v82, v83, *(v84 - 32), v76);
          goto LABEL_17;
        }

        v100 = v72;
        v90 = v71;
        v99[1] = sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
        v91 = v90;
        v92 = v108;
        sub_21C7D33AC(v91, v72, v110, v108);
        v93 = v101;
        sub_21C7D33AC(v3, v105, v109, v101);
        sub_21C7D33AC(v102, v100, v110, v92);
        v3 = v92;
        LOBYTE(v92) = sub_21CB85DD4();
        sub_21C7D33F0(v106, v105, v109, v93);

        v94 = v100;

        sub_21C7D33F0(v102, v94, v110, v3);
        if (v92)
        {
          goto LABEL_59;
        }

LABEL_17:
        sub_21CAA4384(v25, type metadata accessor for PMAccount);
        a2 = (a2 + 1) & v127;
      }

      while (((*&v128[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) != 0);
    }
  }

LABEL_55:
  v76 = *v114;
  (*v114)[(a2 >> 6) + 7] |= 1 << a2;
  result = sub_21CAA43E4(v130, v76[6] + *(v115 + 72) * a2, type metadata accessor for PMAccount);
  v96 = v76[2];
  v97 = __OFADD__(v96, 1);
  v98 = v96 + 1;
  if (v97)
  {
    __break(1u);
LABEL_58:
    sub_21C7D33AC(v3, v86, v29, v76);
    sub_21C7D33F0(v102, 0, v110, v108);
LABEL_59:
    sub_21CAA4384(v25, type metadata accessor for PMAccount);
    result = sub_21CB863A4();
    __break(1u);
  }

  else
  {
    v76[2] = v98;
  }

  return result;
}

uint64_t sub_21CA9C9C0(uint64_t a1, unint64_t a2, char a3)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7260, &qword_21CBC4718);
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v9 = &v44 - v8;
  v10 = sub_21CB85C44();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v51 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = _s24AccountContainerIdentityOMa();
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  MEMORY[0x28223BE20](v22);
  v26 = &v44 - v25;
  v27 = *(*v3 + 16);
  v28 = *(*v3 + 24);
  v45 = v3;
  if (v28 <= v27 || (a3 & 1) == 0)
  {
    v52 = v24;
    if (a3)
    {
      v29 = v16;
      v44 = v23;
      sub_21CA98F44(v27 + 1);
    }

    else
    {
      if (v28 > v27)
      {
        sub_21CA9E570();
        goto LABEL_23;
      }

      v29 = v16;
      v44 = v23;
      sub_21CAA023C(v27 + 1);
    }

    v56 = *v3;
    v30 = *(v56 + 40);
    sub_21CB86484();
    sub_21CAA431C(a1, v26, _s24AccountContainerIdentityOMa);
    v31 = *(v11 + 48);
    if (v31(v26, 1, v10) == 1)
    {
      MEMORY[0x21CF15F90](0);
    }

    else
    {
      (*(v11 + 32))(v29, v26, v10);
      MEMORY[0x21CF15F90](1);
      sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978]);
      sub_21CB85494();
      (*(v11 + 8))(v29, v10);
    }

    v32 = sub_21CB864D4();
    v33 = -1 << *(v56 + 32);
    a2 = v32 & ~v33;
    v55 = v56 + 56;
    if ((*(v56 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v54 = ~v33;
      v53 = *(v49 + 72);
      v46 = (v11 + 32);
      v50 = (v11 + 8);
      v48 = a1;
      v47 = v31;
      while (1)
      {
        sub_21CAA431C(*(v56 + 48) + v53 * a2, v21, _s24AccountContainerIdentityOMa);
        v34 = *(v57 + 48);
        sub_21CAA431C(v21, v9, _s24AccountContainerIdentityOMa);
        sub_21CAA431C(a1, &v9[v34], _s24AccountContainerIdentityOMa);
        if (v31(v9, 1, v10) == 1)
        {
          break;
        }

        v35 = v52;
        sub_21CAA431C(v9, v52, _s24AccountContainerIdentityOMa);
        if (v31(&v9[v34], 1, v10) == 1)
        {
          sub_21CAA4384(v21, _s24AccountContainerIdentityOMa);
          (*v50)(v35, v10);
LABEL_14:
          sub_21C6EA794(v9, &qword_27CDF7260, &qword_21CBC4718);
          goto LABEL_15;
        }

        (*v46)(v51, &v9[v34], v10);
        sub_21CAA44BC(&qword_27CDECD58, MEMORY[0x277D49978]);
        sub_21CB857F4();
        sub_21CB857F4();
        if (v60 == v58 && v61 == v59)
        {
          goto LABEL_26;
        }

        v36 = sub_21CB86344();
        v37 = *v50;
        (*v50)(v51, v10);
        sub_21CAA4384(v21, _s24AccountContainerIdentityOMa);

        v37(v52, v10);
        a1 = v48;
        v31 = v47;
        if (v36)
        {
          goto LABEL_27;
        }

        sub_21CAA4384(v9, _s24AccountContainerIdentityOMa);
LABEL_15:
        a2 = (a2 + 1) & v54;
        if (((*(v55 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      sub_21CAA4384(v21, _s24AccountContainerIdentityOMa);
      if (v31(&v9[v34], 1, v10) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }
  }

LABEL_23:
  v38 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21CAA43E4(a1, *(v38 + 48) + *(v49 + 72) * a2, _s24AccountContainerIdentityOMa);
  v40 = *(v38 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_26:
    v43 = *v50;
    (*v50)(v51, v10);
    sub_21CAA4384(v21, _s24AccountContainerIdentityOMa);

    v43(v52, v10);
LABEL_27:
    sub_21CAA4384(v9, _s24AccountContainerIdentityOMa);
    result = sub_21CB863A4();
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v42;
  }

  return result;
}

uint64_t sub_21CA9D110(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_21CB813C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CA99408(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_21CA9E77C(MEMORY[0x277CBA690], &qword_27CDF7248, &qword_21CBC4700);
      goto LABEL_12;
    }

    sub_21CAA06B4(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_21CAA44BC(&qword_27CDF0CC8, MEMORY[0x277CBA690]);
  v16 = sub_21CB85484();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_21CAA44BC(&qword_27CDF0CD0, MEMORY[0x277CBA690]);
      v24 = sub_21CB85574();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21CB863A4();
  __break(1u);
  return result;
}

uint64_t sub_21CA9D3D8(uint64_t result, char a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a4)
  {
    sub_21CA999B4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_21CA9EB04();
      a3 = v9;
      goto LABEL_18;
    }

    sub_21CAA09D0(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21CB86484();
  sub_21CB864A4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x21CF15F90](v6);
  }

  result = sub_21CB864D4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 16 * a3;
      if (*(v14 + 8))
      {
        if (a2)
        {
          goto LABEL_17;
        }
      }

      else if ((a2 & 1) == 0 && *v14 == v6)
      {
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2200, &qword_21CBB3690);
        result = sub_21CB863A4();
        __break(1u);
        break;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_18:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = *(v15 + 48) + 16 * a3;
  *v16 = v6;
  *(v16 + 8) = a2 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

uint64_t sub_21CA9D57C(uint64_t a1, unint64_t a2, char a3)
{
  v62 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3E0, &unk_21CBA1A70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - v8;
  v10 = sub_21CB80DD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v53 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14);
  v61 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v20);
  v23 = &v47 - v22;
  v24 = *(*v3 + 16);
  v25 = *(*v3 + 24);
  v49 = v3;
  if (v25 <= v24 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v48 = v21;
      sub_21CA99C38(v24 + 1);
    }

    else
    {
      if (v25 > v24)
      {
        sub_21CA9EC58();
        goto LABEL_21;
      }

      v48 = v21;
      sub_21CAA0C24(v24 + 1);
    }

    v60 = *v3;
    v26 = *(v60 + 40);
    sub_21CB86484();
    sub_21CAA444C(v62, v23);
    v59 = *(v11 + 48);
    v52 = v11 + 48;
    if (v59(v23, 1, v10) == 1)
    {
      sub_21CB864A4();
    }

    else
    {
      v27 = v53;
      (*(v11 + 32))(v53, v23, v10);
      sub_21CB864A4();
      sub_21CAA44BC(&qword_27CDEC280, MEMORY[0x277CC9578]);
      sub_21CB85494();
      (*(v11 + 8))(v27, v10);
    }

    v28 = sub_21CB864D4();
    v29 = -1 << *(v60 + 32);
    a2 = v28 & ~v29;
    v58 = v60 + 56;
    if ((*(v60 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v57 = ~v29;
      v50 = (v11 + 32);
      v30 = *(v51 + 72);
      v55 = (v11 + 8);
      v56 = v30;
      v31 = &qword_21CBA64C0;
      do
      {
        sub_21CAA444C(*(v60 + 48) + v56 * a2, v19);
        v40 = *(v6 + 48);
        sub_21CAA444C(v19, v9);
        sub_21CAA444C(v62, &v9[v40]);
        v41 = v59;
        if (v59(v9, 1, v10) == 1)
        {
          sub_21C6EA794(v19, &unk_27CDED250, v31);
          if (v41(&v9[v40], 1, v10) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_21CAA444C(v9, v61);
          if (v41(&v9[v40], 1, v10) != 1)
          {
            v32 = &v9[v40];
            v33 = v10;
            v34 = v31;
            v35 = v61;
            v36 = v19;
            v37 = v53;
            (*v50)(v53, v32, v33);
            sub_21CAA44BC(&qword_27CDEB3E8, MEMORY[0x277CC9578]);
            v54 = sub_21CB85574();
            v38 = *v55;
            (*v55)(v37, v33);
            sub_21C6EA794(v36, &unk_27CDED250, v34);
            v39 = v35;
            v31 = v34;
            v10 = v33;
            v38(v39, v33);
            v19 = v36;
            sub_21C6EA794(v9, &unk_27CDED250, v31);
            if (v54)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          sub_21C6EA794(v19, &unk_27CDED250, v31);
          (*v55)(v61, v10);
        }

        sub_21C6EA794(v9, &qword_27CDEB3E0, &unk_21CBA1A70);
LABEL_14:
        a2 = (a2 + 1) & v57;
      }

      while (((*(v58 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v42 = *v49;
  *(*v49 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21C6F1098(v62, *(v42 + 48) + *(v51 + 72) * a2);
  v44 = *(v42 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
LABEL_24:
    sub_21C6EA794(v9, &unk_27CDED250, &qword_21CBA64C0);
LABEL_25:
    result = sub_21CB863A4();
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v46;
  }

  return result;
}

void *sub_21CA9DBC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE78, &qword_21CBADAF8);
  v2 = *v0;
  v3 = sub_21CB86044();
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_21CA9DD1C()
{
  v1 = v0;
  v2 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7278, &unk_21CBC4730);
  v7 = *v0;
  v8 = sub_21CB86044();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_21CAA431C(*(v7 + 48) + v22, v6, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        result = sub_21CAA43E4(v6, *(v9 + 48) + v22, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

id sub_21CA9DF28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7218, &qword_21CBC46D8);
  v2 = *v0;
  v3 = sub_21CB86044();
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
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_21CA9E078()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF68, &qword_21CBC47C0);
  v2 = *v0;
  v3 = sub_21CB86044();
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_21CA9E1D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7298, &qword_21CBC47C8);
  v2 = *v0;
  v3 = sub_21CB86044();
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
    v10 = *(v2 + 56);
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
        v17 = 112 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[3];
        v20 = v18[4];
        v21 = v18[6];
        v25[5] = v18[5];
        v25[6] = v21;
        v25[3] = v19;
        v25[4] = v20;
        v23 = v18[1];
        v22 = v18[2];
        v25[0] = *v18;
        v25[1] = v23;
        v25[2] = v22;
        memmove((*(v4 + 48) + v17), v18, 0x70uLL);
        result = sub_21C7A33F0(v25, &v24);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_21CA9E364()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7280, &unk_21CBC47A0);
  v7 = *v0;
  v8 = sub_21CB86044();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_21CAA431C(*(v7 + 48) + v22, v6, type metadata accessor for PMAccount);
        result = sub_21CAA43E4(v6, *(v9 + 48) + v22, type metadata accessor for PMAccount);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_21CA9E570()
{
  v1 = v0;
  v2 = _s24AccountContainerIdentityOMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7268, &qword_21CBC4720);
  v7 = *v0;
  v8 = sub_21CB86044();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_21CAA431C(*(v7 + 48) + v22, v6, _s24AccountContainerIdentityOMa);
        result = sub_21CAA43E4(v6, *(v9 + 48) + v22, _s24AccountContainerIdentityOMa);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_21CA9E77C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_21CB86044();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_21CA9E9B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7250, &qword_21CBC4708);
  v2 = *v0;
  v3 = sub_21CB86044();
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
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_21CA9EB04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7288, &qword_21CBC47B0);
  v2 = *v0;
  v3 = sub_21CB86044();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
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

void *sub_21CA9EC58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7290, &qword_21CBC47B8);
  v7 = *v0;
  v8 = sub_21CB86044();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_21CAA444C(*(v7 + 48) + v22, v6);
        result = sub_21C6F1098(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_21CA9EE44(uint64_t a1)
{
  v2 = v1;
  v37 = sub_21CB85C44();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7240, &qword_21CBC46F8);
  v10 = sub_21CB86054();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978]);
      result = sub_21CB85484();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_21CA9F160(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE78, &qword_21CBADAF8);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_21CB86484();

      sub_21CB854C4();
      result = sub_21CB864D4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21CA9F398(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7278, &unk_21CBC4730);
  result = sub_21CB86054();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v38 + 72);
      sub_21CAA431C(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v25 = *(v11 + 40);
      sub_21CB86484();
      type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
      sub_21CAA44BC(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
      sub_21CB85494();
      v26 = *&v7[*(v39 + 20)];
      sub_21CB864A4();
      if (v26)
      {
        v27 = v26;
        sub_21CB85DE4();
      }

      result = sub_21CB864D4();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_21CAA43E4(v7, *(v11 + 48) + v19 * v24, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      ++*(v11 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v36;
        goto LABEL_30;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_21CA9F700(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7218, &qword_21CBC46D8);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_21CB85DC4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
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

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21CA9F914(uint64_t a1)
{
  v2 = v1;
  v37 = sub_21CB85BB4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7270, &qword_21CBC4728);
  v10 = sub_21CB86054();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_21CAA44BC(&qword_27CDEAF60, MEMORY[0x277D49948]);
      result = sub_21CB85484();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_21CA9FC30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF68, &qword_21CBC47C0);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_21CB86484();

      sub_21CB854C4();
      result = sub_21CB864D4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_21CA9FE68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7298, &qword_21CBC47C8);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; ++*(v6 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = (*(v3 + 48) + 112 * (v12 | (v7 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v33 = v15[2];
      v18 = v15[3];
      v19 = v15[4];
      v20 = v15[6];
      v36 = v15[5];
      v37 = v20;
      v34 = v18;
      v35 = v19;
      v31 = v17;
      v32 = v16;
      v21 = *(v6 + 40);
      sub_21CB86484();
      sub_21C7A33F0(&v31, v30);
      sub_21C9DC744();
      sub_21CB864D4();
      v22 = -1 << *(v6 + 32);
      result = sub_21CB85F44();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v23 = (*(v6 + 48) + 112 * result);
      v25 = v32;
      v24 = v33;
      *v23 = v31;
      v23[1] = v25;
      v23[2] = v24;
      v26 = v34;
      v27 = v35;
      v28 = v37;
      v23[5] = v36;
      v23[6] = v28;
      v23[3] = v26;
      v23[4] = v27;
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {

        v2 = v29;
        goto LABEL_18;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21CAA0070(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7280, &unk_21CBC47A0);
  result = sub_21CB86054();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_21CA9A150(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_21CAA431C(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8, type metadata accessor for PMAccount);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

uint64_t sub_21CAA023C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s24AccountContainerIdentityOMa();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v43 - v14;
  v15 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v16 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7268, &qword_21CBC4720);
  result = sub_21CB86054();
  v18 = result;
  if (*(v15 + 16))
  {
    v50 = v4;
    v43 = v2;
    v19 = 0;
    v20 = v15 + 56;
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 56);
    v24 = (v21 + 63) >> 6;
    v48 = (v5 + 48);
    v49 = v15;
    v44 = (v5 + 8);
    v45 = (v5 + 32);
    v25 = result + 56;
    v46 = v9;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = *(v15 + 48);
      v51 = *(v9 + 72);
      v31 = v52;
      sub_21CAA431C(v30 + v51 * (v27 | (v19 << 6)), v52, _s24AccountContainerIdentityOMa);
      v32 = *(v18 + 40);
      sub_21CB86484();
      sub_21CAA431C(v31, v12, _s24AccountContainerIdentityOMa);
      v33 = v50;
      if ((*v48)(v12, 1, v50) == 1)
      {
        MEMORY[0x21CF15F90](0);
      }

      else
      {
        v34 = v47;
        (*v45)(v47, v12, v33);
        MEMORY[0x21CF15F90](1);
        sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978]);
        sub_21CB85494();
        v35 = v34;
        v9 = v46;
        (*v44)(v35, v33);
      }

      result = sub_21CB864D4();
      v36 = -1 << *(v18 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      v15 = v49;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_21CAA43E4(v52, *(v18 + 48) + v26 * v51, _s24AccountContainerIdentityOMa);
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v2 = v43;
        goto LABEL_31;
      }

      v29 = *(v20 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v18;
  }

  return result;
}

uint64_t sub_21CAA06B4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_21CB813C4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7248, &qword_21CBC4700);
  v10 = sub_21CB86054();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_21CAA44BC(&qword_27CDF0CC8, MEMORY[0x277CBA690]);
      result = sub_21CB85484();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_21CAA09D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7288, &qword_21CBC47B0);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = *(v3 + 48) + 16 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v6 + 40);
      sub_21CB86484();
      sub_21CB864A4();
      if (v20 != 1)
      {
        MEMORY[0x21CF15F90](v19);
      }

      result = sub_21CB864D4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_30;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21CAA0C24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB80DD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v43 - v14;
  v15 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v16 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7290, &qword_21CBC47B8);
  result = sub_21CB86054();
  v18 = result;
  if (*(v15 + 16))
  {
    v50 = v4;
    v43 = v2;
    v19 = 0;
    v20 = v15 + 56;
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 56);
    v24 = (v21 + 63) >> 6;
    v48 = (v5 + 48);
    v49 = v15;
    v44 = (v5 + 8);
    v45 = (v5 + 32);
    v25 = result + 56;
    v46 = v9;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = *(v15 + 48);
      v51 = *(v9 + 72);
      v31 = v52;
      sub_21CAA444C(v30 + v51 * (v27 | (v19 << 6)), v52);
      v32 = *(v18 + 40);
      sub_21CB86484();
      sub_21CAA444C(v31, v12);
      v33 = v50;
      if ((*v48)(v12, 1, v50) == 1)
      {
        sub_21CB864A4();
      }

      else
      {
        v34 = v47;
        (*v45)(v47, v12, v33);
        sub_21CB864A4();
        sub_21CAA44BC(&qword_27CDEC280, MEMORY[0x277CC9578]);
        sub_21CB85494();
        v35 = v34;
        v9 = v46;
        (*v44)(v35, v33);
      }

      result = sub_21CB864D4();
      v36 = -1 << *(v18 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      v15 = v49;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_21C6F1098(v52, *(v18 + 48) + v26 * v51);
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v2 = v43;
        goto LABEL_31;
      }

      v29 = *(v20 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v18;
  }

  return result;
}

uint64_t sub_21CAA10C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21CB85FA4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_21CB860E4();
}

void sub_21CAA11A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_21CA91D80(*a1);
  v5 = v3;
  if (!v1)
  {
    if (v4)
    {
      v6 = *(v2 + 16);
      return;
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_36;
    }

    v8 = (v2 + 16);
    v7 = *(v2 + 16);
    if (v3 + 1 != v7)
    {
      v9 = v3 + 5;
      do
      {
        v11 = v9 - 4;
        if (v9 - 4 >= v7)
        {
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
          return;
        }

        v12 = *(v2 + 8 * v9);
        v13 = [v12 bundleIdentifier];
        if (v13)
        {
          v14 = v13;
          v15 = sub_21CB855C4();
          v17 = v16;

          v18 = HIBYTE(v17) & 0xF;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v18 = v15 & 0xFFFFFFFFFFFFLL;
          }

          if (v18)
          {
            if (v15 == 0xD000000000000015 && 0x800000021CB986D0 == v17)
            {

              goto LABEL_9;
            }
          }

          else
          {
          }
        }

        v20 = sub_21CB86344();

        if ((v20 & 1) == 0)
        {
          if (v11 != v5)
          {
            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_32;
            }

            if (v5 >= *v8)
            {
              goto LABEL_33;
            }

            if (v11 >= *v8)
            {
              goto LABEL_34;
            }

            v21 = *(v2 + 8 * v9);
            v22 = *(v2 + 32 + 8 * v5);
            v23 = v21;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_21CAA10A0(v2);
            }

            v24 = v2 + 8 * v5;
            v25 = *(v24 + 32);
            *(v24 + 32) = v23;

            if (v11 >= *(v2 + 16))
            {
              goto LABEL_35;
            }

            v26 = *(v2 + 8 * v9);
            *(v2 + 8 * v9) = v22;

            *a1 = v2;
          }

          ++v5;
        }

LABEL_9:
        v8 = (v2 + 16);
        v7 = *(v2 + 16);
        v10 = v9 - 3;
        ++v9;
      }

      while (v10 != v7);
    }
  }
}

uint64_t sub_21CAA13C8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_21CAA1614(a1);
  }

  v1 = MEMORY[0x277D84FA0];
  v26 = MEMORY[0x277D84FA0];
  sub_21CB85F64();
  v2 = sub_21CB85FE4();
  if (v2)
  {
    v3 = v2;
    sub_21C6E8F4C(0, &qword_27CDF7210, 0x277CC1E90);
    v4 = v3;
    do
    {
      v24 = v4;
      swift_dynamicCast();
      v5 = [v25 bundleIdentifier];
      if (v5)
      {
        v6 = v5;
        v7 = sub_21CB855C4();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0xE000000000000000;
      }

      v10 = sub_21CA94078(&v24, v7, v9);

      v11 = v25;
      if (v10)
      {
        v12 = *(v1 + 16);
        if (*(v1 + 24) <= v12)
        {
          sub_21CA9832C(v12 + 1);
        }

        v1 = v26;
        v13 = *(v26 + 40);
        result = sub_21CB85DC4();
        v15 = v1 + 56;
        v16 = -1 << *(v1 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v1 + 56 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v1 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v18 == v21;
            if (v18 == v21)
            {
              v18 = 0;
            }

            v20 |= v22;
            v23 = *(v15 + 8 * v18);
          }

          while (v23 == -1);
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v1 + 48) + 8 * v19) = v11;
        ++*(v1 + 16);
      }

      else
      {
      }

      v4 = sub_21CB85FE4();
    }

    while (v4);
  }

  return v1;
}

uint64_t sub_21CAA1614(uint64_t a1)
{
  v2 = a1;
  v35[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v4;
    v30 = v1;
    v28 = &v28;
    MEMORY[0x28223BE20](a1);
    v31 = &v28 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v5);
    v32 = 0;
    v6 = 0;
    v7 = v2 + 56;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v4 = v9 & *(v2 + 56);
    v10 = (v8 + 63) >> 6;
    v34 = v2;
    while (v4)
    {
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_14:
      v17 = v14 | (v6 << 6);
      v18 = *(v2 + 48);
      v33 = v17;
      v19 = *(v18 + 8 * v17);
      v20 = [v19 bundleIdentifier];
      if (v20)
      {
        v21 = v20;
        v11 = sub_21CB855C4();
        v12 = v22;
      }

      else
      {
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      v13 = sub_21CA94078(v35, v11, v12);

      v2 = v34;
      if (v13)
      {
        *&v31[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_19:
          result = sub_21CAA1D24(v31, v29, v32, v2);
          goto LABEL_20;
        }
      }
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_19;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v4 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = sub_21CAA1A78(v26, v4, v2);

  MEMORY[0x21CF16D90](v26, -1, -1);
  result = v27;
LABEL_20:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21CAA18D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v22 = result;
  v23 = 0;
  v3 = 0;
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v24 = v12 | (v3 << 6);
    v15 = *(*(v26 + 48) + 8 * v24);
    v16 = [v15 bundleIdentifier];
    if (v16)
    {
      v17 = v16;
      v9 = sub_21CB855C4();
      v10 = v18;
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = sub_21CA94078(&v25, v9, v10);

    if (v11)
    {
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_18:
        v20 = v26;

        return sub_21CAA1D24(v22, a2, v23, v20);
      }
    }
  }

  v13 = v3;
  while (1)
  {
    v3 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v3);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v7 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_21CAA1A78(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_21CAA18D0(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_21CAA1B00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE78, &qword_21CBADAF8);
  result = sub_21CB86074();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_21CB86484();

    sub_21CB854C4();
    result = sub_21CB864D4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21CAA1D24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7218, &qword_21CBC46D8);
  result = sub_21CB86074();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_21CB85DC4();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_21CAA1F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v24 = a6;
  v12 = *v6;
  v13 = (v12 + 32 + 24 * a1);
  swift_arrayDestroy();
  v14 = __OFSUB__(a3, v7);
  v15 = a3 - v7;
  if (v14)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = *(v12 + 16);
  v14 = __OFSUB__(v16, a2);
  v17 = v16 - a2;
  if (v14)
  {
    goto LABEL_21;
  }

  v18 = &v13[3 * a3];
  v19 = (v12 + 32 + 24 * a2);
  if (v18 != v19 || v18 >= &v19[24 * v17])
  {
    memmove(v18, v19, 24 * v17);
  }

  v21 = *(v12 + 16);
  v14 = __OFADD__(v21, v15);
  v22 = v21 + v15;
  if (v14)
  {
    goto LABEL_22;
  }

  *(v12 + 16) = v22;
LABEL_13:
  if (a3 >= 1)
  {
    *v13 = a4;
    v13[1] = a5;
    v13[2] = v24;
    if (a3 == 1)
    {
      return;
    }

LABEL_23:

    v23 = v24;
    __break(1u);
    return;
  }
}

uint64_t sub_21CAA206C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21CAA20C0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(a4 + 48) + 24 * result;
    result = *v4;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21CAA211C(void *a1)
{
  v1 = [a1 bundleRecord];
  v2 = [v1 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CB855C4();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

void sub_21CAA21B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CB85FA4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CF15BD0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_21CA94A8C(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

id sub_21CAA228C(void *a1, id *a2)
{
  v5 = v2;
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = objc_opt_self();
  if (*a1 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v7 = sub_21CB80BE4();
    __swift_project_value_buffer(v7, a2);
    v8 = sub_21CB80B74();
    v40[0] = 0;
    v9 = [v6 claimBindingsWithURL:v8 error:v40];

    v10 = v40[0];
    if (!v9)
    {
      v27 = v40[0];
      sub_21CB80B14();

      result = swift_willThrow();
      goto LABEL_40;
    }

    sub_21C6E8F4C(0, &qword_27CDF7228, 0x277CC1E98);
    v11 = sub_21CB85824();
    v12 = v10;

    v40[0] = MEMORY[0x277D84F90];
    v6 = v11 >> 62 ? sub_21CB85FA4() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a2 = MEMORY[0x277D84F90];
    v13 = &selRef_symbolForTypeIdentifier_error_;
    if (!v6)
    {
      break;
    }

    v36 = v5;
    v37 = v6;
    v14 = 0;
    v38 = v11 & 0xFFFFFFFFFFFFFF8;
    v39 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v39)
      {
        v15 = MEMORY[0x21CF15BD0](v14, v11);
      }

      else
      {
        if (v14 >= *(v38 + 16))
        {
          goto LABEL_35;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      a2 = [v15 v13[274]];
      v18 = [a2 bundleIdentifier];
      if (v18)
      {
        v19 = v11;
        v5 = v13;
        v20 = v18;
        v21 = sub_21CB855C4();
        v23 = v22;

        v24 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v24 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (v24)
        {
          sub_21CB86134();
          v25 = *(v40[0] + 2);
          sub_21CB86164();
          sub_21CB86174();
          a2 = v40;
          sub_21CB86144();
        }

        else
        {
        }

        v13 = v5;
        v11 = v19;
        v6 = v37;
      }

      else
      {
      }

      ++v14;
      if (v17 == v6)
      {
        v26 = v40[0];
        a2 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v26 = MEMORY[0x277D84F90];
LABEL_24:

  if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
  {
    v29 = sub_21CB85FA4();
    if (v29)
    {
      goto LABEL_27;
    }

LABEL_39:

    result = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v29 = *(v26 + 16);
  if (!v29)
  {
    goto LABEL_39;
  }

LABEL_27:
  v40[0] = a2;
  sub_21CB86154();
  if (v29 < 0)
  {
    __break(1u);
  }

  v30 = 0;
  do
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x21CF15BD0](v30, v26);
    }

    else
    {
      v31 = *(v26 + 8 * v30 + 32);
    }

    v32 = v31;
    ++v30;
    v33 = [v31 v13[274]];

    sub_21CB86134();
    v34 = *(v40[0] + 2);
    sub_21CB86164();
    sub_21CB86174();
    sub_21CB86144();
  }

  while (v29 != v30);

  result = v40[0];
LABEL_40:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_21CAA2658(void *a1, uint64_t a2)
{
  v5 = sub_21CB80BE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, a2);
  (*(v6 + 16))(v9, v10, v5);
  v11 = objc_allocWithZone(MEMORY[0x277CC1E98]);
  v12 = sub_21CA93C4C(v9);
  if (!v2)
  {
    v13 = v12;
    v14 = sub_21CAA211C(v12);
    v11 = [v13 bundleRecord];
    if ((v14 & 1) == 0)
    {
      sub_21CAA3ED0();
      swift_allocError();
      *v15 = v11;
      swift_willThrow();
    }
  }

  return v11;
}

unint64_t sub_21CAA27F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21CAA28B0(uint64_t a1, uint64_t a2)
{
  v2[29] = a1;
  v2[30] = a2;
  sub_21CB858B4();
  v2[31] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[32] = v4;
  v2[33] = v3;

  return MEMORY[0x2822009F8](sub_21CAA2948, v4, v3);
}

uint64_t sub_21CAA2948()
{
  v1 = objc_opt_self();
  v0[34] = v1;
  v2 = [v1 defaultWorkspace];
  v0[35] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0[29];
    v5 = v0[30];
    v6 = sub_21CB85584();
    v0[36] = v6;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_21CAA2AB0;
    v7 = swift_continuation_init();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F90, &unk_21CBBFE80);
    v0[37] = v8;
    v0[25] = v8;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21CA92000;
    v0[21] = &block_descriptor_35;
    v0[22] = v7;
    [v3 safari:v6 setDefaultOTPAuthURLHandlerToApplicationWithBundleIdentifier:v0 + 18 completionHandler:?];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CAA2AB0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  v4 = *(v1 + 264);
  v5 = *(v1 + 256);
  if (v3)
  {
    v6 = sub_21CAA2ECC;
  }

  else
  {
    v6 = sub_21CAA2BE0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CAA2BE0()
{
  v1 = *(v0 + 288);

  v2 = [*(v0 + 272) defaultWorkspace];
  *(v0 + 312) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 296);
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    v7 = sub_21CB85584();
    *(v0 + 320) = v7;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 208;
    *(v0 + 88) = sub_21CAA2D30;
    v8 = swift_continuation_init();
    *(v0 + 200) = v4;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21CA92000;
    *(v0 + 168) = &block_descriptor_7;
    *(v0 + 176) = v8;
    [v3 safari:v7 setDefaultOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:v0 + 144 completionHandler:?];
    v2 = (v0 + 80);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CAA2D30()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 328) = v3;
  v4 = *(v1 + 264);
  v5 = *(v1 + 256);
  if (v3)
  {
    v6 = sub_21CAA320C;
  }

  else
  {
    v6 = sub_21CAA2E60;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CAA2E60()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[31];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CAA2ECC()
{
  v27 = v0;
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  swift_willThrow();

  *(v0 + 144) = v1;
  v4 = (v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = *v4;
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE186E0);
    v8 = v6;
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136446210;
      v13 = [v8 safari_privacyPreservingDescription];
      v14 = sub_21CB855C4();
      v16 = v15;

      v17 = sub_21C98E004(v14, v16, &v26);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Failed to set default otpauth URL handler: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CF16D90](v12, -1, -1);
      v18 = v11;
      v4 = (v0 + 208);
      MEMORY[0x21CF16D90](v18, -1, -1);
    }

    else
    {
    }

    v19 = [*(v0 + 272) defaultWorkspace];
    *(v0 + 312) = v19;
    if (v19)
    {
      v20 = v19;
      v21 = *(v0 + 296);
      v22 = *(v0 + 232);
      v23 = *(v0 + 240);
      v24 = sub_21CB85584();
      *(v0 + 320) = v24;
      *(v0 + 80) = v0;
      *(v0 + 120) = v4;
      *(v0 + 88) = sub_21CAA2D30;
      v25 = swift_continuation_init();
      *(v0 + 200) = v21;
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_21CA92000;
      *(v0 + 168) = &block_descriptor_7;
      *(v0 + 176) = v25;
      [v20 safari:v24 setDefaultOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:v0 + 144 completionHandler:?];
      v19 = (v0 + 80);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v19);
  }

  return result;
}

uint64_t sub_21CAA320C()
{
  v22 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  swift_willThrow();

  *(v0 + 216) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = *(v0 + 328);
    v7 = *(v0 + 248);

    v8 = *(v0 + 224);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v9 = sub_21CB81C84();
    __swift_project_value_buffer(v9, qword_27CE186E0);
    v10 = v8;
    v11 = sub_21CB81C64();
    v12 = sub_21CB85AF4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136446210;
      v15 = [v10 safari_privacyPreservingDescription];
      v16 = sub_21CB855C4();
      v18 = v17;

      v19 = sub_21C98E004(v16, v18, &v21);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_21C6E5000, v11, v12, "Failed to set default otpauth-migration URL handler: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x21CF16D90](v14, -1, -1);
      MEMORY[0x21CF16D90](v13, -1, -1);
    }

    else
    {
    }

    v20 = *(v0 + 8);

    return v20();
  }

  return result;
}

uint64_t sub_21CAA3488(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  sub_21CB858B4();
  v2[28] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[29] = v4;
  v2[30] = v3;

  return MEMORY[0x2822009F8](sub_21CAA3520, v4, v3);
}

uint64_t sub_21CAA3520()
{
  v1 = objc_opt_self();
  v0[31] = v1;
  v2 = [v1 defaultWorkspace];
  v0[32] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0[26];
    v5 = v0[27];
    v6 = sub_21CB85584();
    v0[33] = v6;
    v0[2] = v0;
    v0[7] = v0 + 39;
    v0[3] = sub_21CAA3688;
    v7 = swift_continuation_init();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F90, &unk_21CBBFE80);
    v0[34] = v8;
    v0[25] = v8;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21CA92000;
    v0[21] = &block_descriptor_10_0;
    v0[22] = v7;
    [v3 safari:v6 setAppleOTPAuthURLHandlerToApplicationWithBundleIdentifier:v0 + 18 completionHandler:?];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CAA3688()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 280) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_21CAA3AA4;
  }

  else
  {
    v6 = sub_21CAA37B8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CAA37B8()
{
  v1 = *(v0 + 264);

  v2 = [*(v0 + 248) defaultWorkspace];
  *(v0 + 288) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 272);
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    v7 = sub_21CB85584();
    *(v0 + 296) = v7;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 312;
    *(v0 + 88) = sub_21CAA3908;
    v8 = swift_continuation_init();
    *(v0 + 200) = v4;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21CA92000;
    *(v0 + 168) = &block_descriptor_13;
    *(v0 + 176) = v8;
    [v3 safari:v7 setAppleOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:v0 + 144 completionHandler:?];
    v2 = (v0 + 80);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CAA3908()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 304) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_21CAA3D24;
  }

  else
  {
    v6 = sub_21CAA3A38;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CAA3A38()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[28];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CAA3AA4()
{
  v23 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  swift_willThrow();

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 216);
  v5 = sub_21CB81C84();
  __swift_project_value_buffer(v5, qword_27CE186E0);

  v6 = sub_21CB81C64();
  v7 = sub_21CB85AF4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 280);
  if (v8)
  {
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_21C98E004(v11, v10, &v22);
    _os_log_impl(&dword_21C6E5000, v6, v7, "Failed to set default apple-otpauth URL handler to %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x21CF16D90](v13, -1, -1);
    MEMORY[0x21CF16D90](v12, -1, -1);
  }

  v14 = [*(v0 + 248) defaultWorkspace];
  *(v0 + 288) = v14;
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 272);
    v17 = *(v0 + 208);
    v18 = *(v0 + 216);
    v19 = sub_21CB85584();
    *(v0 + 296) = v19;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 312;
    *(v0 + 88) = sub_21CAA3908;
    v20 = swift_continuation_init();
    *(v0 + 200) = v16;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21CA92000;
    *(v0 + 168) = &block_descriptor_13;
    *(v0 + 176) = v20;
    [v15 safari:v19 setAppleOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:v0 + 144 completionHandler:?];
    v14 = (v0 + 80);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v14);
}

uint64_t sub_21CAA3D24()
{
  v18 = v0;
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[28];

  swift_willThrow();

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v5 = v0[27];
  v6 = sub_21CB81C84();
  __swift_project_value_buffer(v6, qword_27CE186E0);

  v7 = sub_21CB81C64();
  v8 = sub_21CB85AF4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[38];
  if (v9)
  {
    v12 = v0[26];
    v11 = v0[27];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_21C98E004(v12, v11, &v17);
    _os_log_impl(&dword_21C6E5000, v7, v8, "Failed to set default apple-otpauth-migration URL handler to %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x21CF16D90](v14, -1, -1);
    MEMORY[0x21CF16D90](v13, -1, -1);
  }

  v15 = v0[1];

  return v15();
}

unint64_t sub_21CAA3ED0()
{
  result = qword_27CDF7208;
  if (!qword_27CDF7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7208);
  }

  return result;
}

unint64_t sub_21CAA3F3C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 112 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  if (result != v13 || result >= v13 + 112 * v12)
  {
    result = memmove(result, v13, 112 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21CAA4014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = a6;
  v10 = a5;
  v7 = a3;
  v12 = a2;
  v22 = a7;
  v15 = *v8;
  v8 = (*v8 & 0xFFFFFFFFFFFFFF8);
  v9 = v8 + 4;
  v11 = &v8[a1 + 4];
  sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);
  result = swift_arrayDestroy();
  v17 = __OFSUB__(v7, v14);
  v14 = v7 - v14;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v10 = v15 >> 62;
  if (!(v15 >> 62))
  {
    result = v8[2];
    v18 = result - v12;
    if (!__OFSUB__(result, v12))
    {
      goto LABEL_6;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_26:
  result = sub_21CB85FA4();
  v18 = result - v12;
  if (__OFSUB__(result, v12))
  {
    goto LABEL_28;
  }

LABEL_6:
  v19 = (v11 + 8 * v7);
  v20 = &v9[v12];
  if (v19 != v20 || v19 >= &v20[8 * v18])
  {
    memmove(v19, v20, 8 * v18);
  }

  if (v10)
  {
    result = sub_21CB85FA4();
  }

  else
  {
    result = v8[2];
  }

  if (__OFADD__(result, v14))
  {
    goto LABEL_29;
  }

  v8[2] = result + v14;
LABEL_17:
  if (v7 < 1)
  {
    return result;
  }

  if (__OFSUB__(v22 >> 1, v13))
  {
    goto LABEL_30;
  }

  if ((v22 >> 1) - v13 != v7)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_21CAA41C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21CAA431C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAA4384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CAA43E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAA444C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAA44BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PMPasskeysLearnMoreView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB82934();
  v3 = sub_21CB83D04();
  v4 = sub_21CB83D24();
  sub_21CB83D24();
  result = sub_21CB83D24();
  if (result != v3)
  {
    result = sub_21CB83D24();
    v4 = result;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_21CAA45AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB82934();
  v3 = sub_21CB83D04();
  v4 = sub_21CB83D24();
  sub_21CB83D24();
  result = sub_21CB83D24();
  if (result != v3)
  {
    result = sub_21CB83D24();
    v4 = result;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_21CAA462C()
{
  result = qword_27CDF72A0;
  if (!qword_27CDF72A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF72A8, &qword_21CBC4858);
    sub_21CAA46B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF72A0);
  }

  return result;
}

unint64_t sub_21CAA46B8()
{
  result = qword_27CDF72B0;
  if (!qword_27CDF72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF72B0);
  }

  return result;
}

uint64_t sub_21CAA4724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CAA4814();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CAA4788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CAA4814();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CAA47EC()
{
  sub_21CAA4814();
  sub_21CB83B44();
  __break(1u);
}

unint64_t sub_21CAA4814()
{
  result = qword_27CDF72B8;
  if (!qword_27CDF72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF72B8);
  }

  return result;
}

id sub_21CAA4868()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBAA40]) init];
  v1 = [v0 navigationItem];
  sub_21C6E8F4C(0, &unk_27CDF86A0, 0x277D751E0);
  sub_21C6E8F4C(0, &qword_27CDF72C0, 0x277D750C8);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = v0;
  sub_21CB85E04();
  v4 = sub_21CB85B24();
  [v1 setRightBarButtonItem_];

  v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  return v5;
}

uint64_t type metadata accessor for PMPasswordField()
{
  result = qword_27CDF72C8;
  if (!qword_27CDF72C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CAA4A74()
{
  sub_21C722688(319, &qword_27CDEE4A0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_21C7226D8();
    if (v1 <= 0x3F)
    {
      sub_21CAA4C3C(319, &qword_27CDEB898, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21CAA4C3C(319, &qword_27CDEBD40, sub_21CAA4CA0, type metadata accessor for PMDependency);
        if (v3 <= 0x3F)
        {
          sub_21C722688(319, &qword_27CDF72D8, &type metadata for PasswordGenerationStyle, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_21C722688(319, &qword_27CDF3598, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21CAA4C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21CAA4CA0()
{
  result = qword_27CDEB9E8;
  if (!qword_27CDEB9E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEB9E8);
  }

  return result;
}

unint64_t sub_21CAA4CF0()
{
  result = qword_27CDF72E0;
  if (!qword_27CDF72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF72E0);
  }

  return result;
}

uint64_t sub_21CAA4D44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v34 = type metadata accessor for PMAdapativeStackLabeledContentStyle();
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = *(v1 + 2);
  v15 = *(v1 + 3);
  v43 = *v1;
  *&v44 = v14;
  *(&v44 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  sub_21CB84F54();
  v33 = v36;
  v31 = *(&v37 + 1);
  v32 = v37;
  sub_21CB81014();
  v16 = sub_21CB81004();
  v30 = v17;
  v18 = *(v7 + 8);
  v18(v13, v6);
  sub_21CB81014();
  sub_21CB81014();
  v19 = sub_21CB80FF4();
  v21 = v20;
  v18(v10, v6);
  v18(v13, v6);
  v23 = *(v2 + 5);
  v22 = *(v2 + 6);
  v24 = *(v2 + 7);
  v25 = *(v2 + 8);
  v26 = *(v2 + 34);
  v36 = v33;
  *&v37 = v32;
  *(&v37 + 1) = v31;
  *&v38 = v16;
  *(&v38 + 1) = v30;
  *&v39 = v19;
  *(&v39 + 1) = v21;
  *&v40 = v23;
  *(&v40 + 1) = v22;
  *&v41 = v24;
  *(&v41 + 1) = v25;
  v42 = v26;

  *v5 = sub_21CB83034();
  v5[8] = 1;
  v27 = *(v34 + 24);
  *&v5[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  sub_21C853458();
  sub_21CAA5114();
  sub_21CB844C4();
  sub_21CAA516C(v5);
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v43 = v36;
  v44 = v37;
  v45 = v38;
  v46 = v39;
  return sub_21C8534AC(&v43);
}

unint64_t sub_21CAA5114()
{
  result = qword_27CDEB978;
  if (!qword_27CDEB978)
  {
    type metadata accessor for PMAdapativeStackLabeledContentStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB978);
  }

  return result;
}

uint64_t sub_21CAA516C(uint64_t a1)
{
  v2 = type metadata accessor for PMAdapativeStackLabeledContentStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CAA51C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 24);

  sub_21CB81E94();

  *a2 = v5;
  return result;
}

uint64_t sub_21CAA5220(char *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  v4 = *a1;

  sub_21CB81EA4();
}

double PMDebugSettingsControls.init()@<D0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7253C8(KeyPath, v7);

  type metadata accessor for PMDebugSettingsManager();
  sub_21CAA9E84(&qword_27CDEAE00, type metadata accessor for PMDebugSettingsManager);
  v3 = sub_21CB82674();
  v5 = v4;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = swift_getKeyPath();
  sub_21CB84D44();
  *(a1 + 24) = v7;
  *(a1 + 32) = *(&v7 + 1);
  sub_21CB84D44();
  result = *&v7;
  *(a1 + 40) = v7;
  *(a1 + 56) = v8;
  return result;
}

uint64_t PMDebugSettingsControls.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF72E8, &unk_21CBC4AB0);
  v87 = *(v114 - 8);
  v3 = *(v87 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v109 = &v80 - v6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF72F0, &qword_21CBCA670);
  v119 = *(v112 - 8);
  v7 = v119[8];
  MEMORY[0x28223BE20](v112);
  v111 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v106 = &v80 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF72F8, &qword_21CBC4AC0);
  v118 = *(v110 - 8);
  v11 = v118[8];
  MEMORY[0x28223BE20](v110);
  v108 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v94 = &v80 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7300, &qword_21CBC4AC8);
  v117 = *(v107 - 8);
  v15 = v117[8];
  MEMORY[0x28223BE20](v107);
  v105 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v102 = &v80 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7308, &unk_21CBC4AD0);
  v116 = *(v104 - 8);
  v19 = v116[8];
  MEMORY[0x28223BE20](v104);
  v103 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v100 = &v80 - v22;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v95 = *(v85 - 1);
  v23 = *(v95 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v80 - v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7310, &unk_21CBC4AE0);
  v115 = *(v101 - 8);
  v25 = v115[8];
  MEMORY[0x28223BE20](v101);
  v99 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v98 = &v80 - v28;
  v83 = sub_21CB82444();
  v82 = *(v83 - 1);
  v29 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  v80 = *(v81 - 8);
  v32 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v34 = &v80 - v33;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7318, &qword_21CBC4AF0);
  v93 = *(v97 - 8);
  v35 = v93[8];
  MEMORY[0x28223BE20](v97);
  v92 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v96 = &v80 - v38;
  v39 = v2[1];
  v121 = *v2;
  v122 = v39;
  v40 = v2[3];
  v123 = v2[2];
  v124 = v40;
  sub_21CB83134();
  v41 = v121;
  v42 = type metadata accessor for PMDebugSettingsManager();
  v43 = sub_21CAA9E84(&qword_27CDEAE00, type metadata accessor for PMDebugSettingsManager);
  v90 = (v41 >> 64);
  v91 = v41;
  v88 = v42;
  sub_21CB82684();
  swift_getKeyPath();
  v89 = v43;
  sub_21CB82694();

  sub_21CB84EB4();
  sub_21CB82424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA15B0;
  v45 = sub_21CB82574();
  *(inited + 32) = v45;
  v46 = sub_21CB82554();
  *(inited + 40) = v46;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v45)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v46)
  {
    sub_21CB82594();
  }

  sub_21C6EADEC(&qword_27CDF26A0, &qword_27CDF26A8, &unk_21CBB4690);
  v47 = v81;
  sub_21CB84324();
  (*(v82 + 8))(v31, v83);
  (*(v80 + 8))(v34, v47);
  sub_21CB83134();
  v48 = swift_allocObject();
  v49 = v122;
  v48[1] = v121;
  v48[2] = v49;
  v50 = v124;
  v48[3] = v123;
  v48[4] = v50;
  sub_21CAA9AB0(&v121, v120);
  v51 = v84;
  sub_21CB84DD4();
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  type metadata accessor for PMWebsiteNameFetchingDebuggerView();
  v82 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CAA9E84(&qword_27CDF7320, type metadata accessor for PMWebsiteNameFetchingDebuggerView);
  v52 = v85;
  sub_21CB847B4();

  v53 = *(v95 + 8);
  v95 += 8;
  v83 = v53;
  v54 = (v53)(v51, v52);
  MEMORY[0x28223BE20](v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7328, &qword_21CBC4B50);
  sub_21C6EADEC(&qword_27CDF7330, &qword_27CDF7328, &qword_21CBC4B50);
  v55 = sub_21CB85054();
  MEMORY[0x28223BE20](v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7338, &unk_21CBC4B58);
  sub_21C6EADEC(&qword_27CDF7340, &qword_27CDF7338, &unk_21CBC4B58);
  sub_21CB85054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
  v56 = v94;
  v57 = sub_21CB85054();
  MEMORY[0x28223BE20](v57);
  sub_21CB85054();
  sub_21CB83134();
  v58 = swift_allocObject();
  v59 = v122;
  v58[1] = v121;
  v58[2] = v59;
  v60 = v124;
  v58[3] = v123;
  v58[4] = v60;
  sub_21CAA9AB0(&v121, v120);
  sub_21CB84DD4();
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  type metadata accessor for PMPasswordOptionsView();
  sub_21CAA9E84(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView);
  sub_21CB847B4();

  (v83)(v51, v52);
  v84 = v93[2];
  v61 = v92;
  (v84)(v92, v96, v97);
  v95 = v115[2];
  (v95)(v99, v98, v101);
  v91 = v116[2];
  v91(v103, v100, v104);
  v90 = v117[2];
  v90(v105, v102, v107);
  v89 = v118[2];
  v89(v108, v56, v110);
  v88 = v119[2];
  v88(v111, v106, v112);
  v62 = v87;
  v85 = *(v87 + 16);
  (v85)(v113, v109, v114);
  v63 = v86;
  (v84)(v86, v61, v97);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7348, &qword_21CBC4B90);
  (v95)(v63 + v64[12], v99, v101);
  v91((v63 + v64[16]), v103, v104);
  v65 = v107;
  v90((v63 + v64[20]), v105, v107);
  v66 = v110;
  v89((v63 + v64[24]), v108, v110);
  v67 = v112;
  v88((v63 + v64[28]), v111, v112);
  v68 = v63 + v64[32];
  v69 = v114;
  (v85)(v68, v113, v114);
  v95 = *(v62 + 8);
  (v95)(v109, v69);
  v70 = v119[1];
  ++v119;
  v109 = v70;
  (v70)(v106, v67);
  v71 = v118[1];
  ++v118;
  v71(v94, v66);
  v72 = v117[1];
  ++v117;
  v72(v102, v65);
  v73 = v116[1];
  ++v116;
  v74 = v104;
  v73(v100, v104);
  v75 = v115[1];
  ++v115;
  v76 = v101;
  v75(v98, v101);
  v77 = v93[1];
  v78 = v97;
  v77(v96, v97);
  (v95)(v113, v114);
  (v109)(v111, v112);
  v71(v108, v110);
  v72(v105, v107);
  v73(v103, v74);
  v75(v99, v76);
  return (v77)(v92, v78);
}

double sub_21CAA6840@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for PMWebsiteNameFetchingDebuggerView();
  v3 = v2[5];
  *(a1 + v3) = sub_21CB81E64();
  v4 = a1 + v2[6];
  sub_21CB84D44();
  *v4 = v7;
  *(v4 + 1) = *(&v7 + 1);
  v5 = a1 + v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB84D44();
  result = *&v7;
  *v5 = v7;
  *(v5 + 2) = v8;
  return result;
}

uint64_t sub_21CAA6950@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7388, &qword_21CBC4D50);
  v75 = *(v74 - 8);
  v3 = v75[8];
  MEMORY[0x28223BE20](v74);
  v63 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = v61 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v73 = *(v71 - 8);
  v7 = v73[8];
  MEMORY[0x28223BE20](v71);
  v83 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = v61 - v10;
  MEMORY[0x28223BE20](v11);
  v66 = v61 - v12;
  MEMORY[0x28223BE20](v13);
  v77 = v61 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  v72 = *(v82 - 8);
  v15 = v72[8];
  MEMORY[0x28223BE20](v82);
  v81 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = v61 - v18;
  MEMORY[0x28223BE20](v19);
  v80 = v61 - v20;
  MEMORY[0x28223BE20](v21);
  v67 = v61 - v22;
  MEMORY[0x28223BE20](v23);
  v76 = v61 - v24;
  MEMORY[0x28223BE20](v25);
  v78 = v61 - v26;
  MEMORY[0x28223BE20](v27);
  v79 = v61 - v28;
  MEMORY[0x28223BE20](v29);
  v68 = v61 - v30;
  v61[2] = sub_21CB83134();
  v62 = a1;
  v31 = *a1;
  v65 = a1[1];
  v32 = type metadata accessor for PMDebugSettingsManager();
  sub_21CAA9E84(&qword_27CDEAE00, type metadata accessor for PMDebugSettingsManager);
  v61[1] = v32;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  sub_21CB84EB4();
  sub_21CB83134();
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  sub_21CB84EB4();
  sub_21CB83134();
  v61[3] = v31;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  sub_21CB84EB4();
  sub_21CB83134();
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  sub_21CB84EB4();
  sub_21CB83134();
  v33 = swift_allocObject();
  v34 = v62;
  v35 = v62[1];
  v33[1] = *v62;
  v33[2] = v35;
  v36 = v34[3];
  v33[3] = v34[2];
  v33[4] = v36;
  sub_21CAA9AB0(v34, &v88);
  sub_21CB84DD4();
  sub_21CB83134();
  v37 = swift_allocObject();
  v38 = v34[1];
  v37[1] = *v34;
  v37[2] = v38;
  v39 = v34[3];
  v37[3] = v34[2];
  v37[4] = v39;
  sub_21CAA9AB0(v34, &v88);
  v40 = v66;
  sub_21CB84DD4();
  sub_21CB83134();
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v85 = v88;
  v86 = v89;
  v87 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB128, &qword_21CBC4E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7390, &qword_21CBC4E28);
  sub_21CAA9D84();
  sub_21C6EADEC(&qword_27CDF73A8, &qword_27CDF7390, &qword_21CBC4E28);
  v41 = v69;
  sub_21CB84E54();
  v42 = v72[2];
  v43 = v67;
  v44 = v82;
  v42(v67, v68, v82);
  v42(v80, v79, v44);
  v42(v84, v78, v44);
  v42(v81, v76, v44);
  v45 = v73[2];
  v46 = v70;
  v47 = v71;
  v45(v70, v77, v71);
  v45(v83, v40, v47);
  v65 = v75[2];
  v48 = v63;
  v65(v63, v41, v74);
  v49 = v64;
  v50 = v43;
  v51 = v82;
  v42(v64, v50, v82);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73B0, &qword_21CBC4E30);
  v42(&v49[v52[12]], v80, v51);
  v42(&v49[v52[16]], v84, v51);
  v42(&v49[v52[20]], v81, v51);
  v53 = v71;
  v45(&v49[v52[24]], v46, v71);
  v54 = v53;
  v45(&v49[v52[28]], v83, v53);
  v55 = v74;
  v65(&v49[v52[32]], v48, v74);
  v56 = v75[1];
  v56(v69, v55);
  v57 = v73[1];
  v57(v66, v54);
  v57(v77, v54);
  v58 = v72[1];
  v59 = v82;
  v58(v76, v82);
  v58(v78, v59);
  v58(v79, v59);
  v58(v68, v59);
  v56(v48, v55);
  v57(v83, v54);
  v57(v70, v54);
  v58(v81, v59);
  v58(v84, v59);
  v58(v80, v59);
  return (v58)(v67, v59);
}

void sub_21CAA75B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v2 = sub_21C710778(v1, v3);

  [v2 removeObjectForKey_];
}

uint64_t sub_21CAA765C@<X0>(char *a1@<X8>)
{
  v74 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73B8, &qword_21CBC4E38);
  v66 = *(v71 - 8);
  v1 = v66;
  v2 = *(v66 + 64);
  MEMORY[0x28223BE20](v71);
  v79 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v73 = &v63 - v5;
  MEMORY[0x28223BE20](v6);
  v78 = &v63 - v7;
  MEMORY[0x28223BE20](v8);
  v72 = &v63 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73C0, &qword_21CBC4E40);
  v70 = *(v77 - 8);
  v22 = v70;
  v23 = *(v70 + 64);
  MEMORY[0x28223BE20](v77);
  v76 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v63 - v26;
  sub_21CB83134();
  *v27 = sub_21CB84034();
  *(v27 + 1) = v28;
  v27[16] = v29 & 1;
  *(v27 + 3) = v30;
  *(v27 + 4) = 0;
  *(v27 + 20) = 257;
  v69 = v27;
  sub_21CB83134();
  *v21 = sub_21CB84034();
  *(v21 + 1) = v31;
  v21[16] = v32 & 1;
  *(v21 + 3) = v33;
  *(v21 + 4) = 0;
  v21[40] = 1;
  v68 = v21;
  sub_21CB83134();
  *v18 = sub_21CB84034();
  *(v18 + 1) = v34;
  v18[16] = v35 & 1;
  *(v18 + 3) = v36;
  *(v18 + 4) = 1;
  v18[40] = 1;
  v67 = v18;
  sub_21CB83134();
  *v15 = sub_21CB84034();
  *(v15 + 1) = v37;
  v15[16] = v38 & 1;
  *(v15 + 3) = v39;
  *(v15 + 4) = 3;
  v15[40] = 1;
  v65 = v15;
  sub_21CB83134();
  v40 = sub_21CB84034();
  v75 = v12;
  *v12 = v40;
  *(v12 + 1) = v41;
  v12[16] = v42 & 1;
  *(v12 + 3) = v43;
  *(v12 + 4) = 2;
  v12[40] = 1;
  v64 = *(v22 + 16);
  v44 = v76;
  v45 = v27;
  v46 = v77;
  v64(v76, v45, v77);
  v47 = *(v1 + 16);
  v48 = v72;
  v49 = v21;
  v50 = v71;
  v47(v72, v49, v71);
  v51 = v78;
  v47(v78, v18, v50);
  v52 = v73;
  v53 = v15;
  v54 = v50;
  v47(v73, v53, v50);
  v47(v79, v75, v50);
  v55 = v74;
  v64(v74, v44, v46);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73C8, &qword_21CBC4E48);
  v47(&v55[v56[12]], v48, v54);
  v47(&v55[v56[16]], v51, v54);
  v57 = v52;
  v47(&v55[v56[20]], v52, v54);
  v58 = v79;
  v47(&v55[v56[24]], v79, v54);
  v59 = *(v66 + 8);
  v59(v75, v54);
  v59(v65, v54);
  v59(v67, v54);
  v59(v68, v54);
  v60 = *(v70 + 8);
  v61 = v77;
  v60(v69, v77);
  v59(v58, v54);
  v59(v57, v54);
  v59(v78, v54);
  v59(v48, v54);
  return (v60)(v76, v61);
}

uint64_t sub_21CAA7CD8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7360, &qword_21CBC4CC0);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = (&v38 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7368, &qword_21CBC4CC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  v12 = *(v43 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = sub_21CB83134();
  v41 = v19;
  v42 = v18;
  v20 = *a1;
  v21 = a1[1];
  v40 = a1;
  type metadata accessor for PMDebugSettingsManager();
  sub_21CAA9E84(&qword_27CDEAE00, type metadata accessor for PMDebugSettingsManager);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();
  v22 = v11;

  sub_21CB84EB4();
  v23 = *(v21 + OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isPromotePasskeyUpgradesEnabled);

  sub_21CB81E94();

  v24 = 1;
  if (v49 == 1)
  {
    v25 = sub_21CB832F4();
    v26 = v39;
    *v39 = v25;
    *(v26 + 8) = 0;
    *(v26 + 16) = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7378, &qword_21CBC4D00);
    sub_21CAA8130(v40, v26 + *(v27 + 44));
    sub_21CAA9C20(v26, v22);
    v24 = 0;
  }

  v28 = v22;
  (*(v45 + 56))(v22, v24, 1, v46);
  v29 = v12;
  v30 = *(v12 + 16);
  v31 = v43;
  v32 = v44;
  v30(v44, v17, v43);
  v33 = v47;
  sub_21C6EDBAC(v28, v47, &qword_27CDF7368, &qword_21CBC4CC8);
  v34 = v48;
  v30(v48, v32, v31);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7370, &qword_21CBC4CF8);
  sub_21C6EDBAC(v33, &v34[*(v35 + 48)], &qword_27CDF7368, &qword_21CBC4CC8);
  sub_21C6EA794(v28, &qword_27CDF7368, &qword_21CBC4CC8);
  v36 = *(v29 + 8);
  v36(v17, v31);
  sub_21C6EA794(v33, &qword_27CDF7368, &qword_21CBC4CC8);
  return (v36)(v32, v31);
}

uint64_t sub_21CAA8130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  sub_21CB83134();
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  v10[1] = *a1;
  v10[2] = v11;
  v12 = *(a1 + 48);
  v10[3] = *(a1 + 32);
  v10[4] = v12;
  sub_21CAA9AB0(a1, &v42);
  sub_21CB84DD4();
  v44 = *(a1 + 24);
  v42 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v13 = v41;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = &v9[*(v4 + 44)];
  *v16 = KeyPath;
  v16[1] = sub_21C735744;
  v16[2] = v15;
  v42 = v44;
  sub_21CB84D54();
  if (v41 == 1)
  {
    v42 = *(a1 + 40);
    v43 = *(a1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
    sub_21CB84D54();
    v42 = v41;
    sub_21C71F3FC();
    v17 = sub_21CB84054();
    v19 = v18;
    v21 = v20;
    sub_21CB83D64();
    v22 = sub_21CB84024();
    v24 = v23;
    v26 = v25;

    sub_21C74A72C(v17, v19, v21 & 1);

    sub_21CB84A84();
    v27 = sub_21CB83FB4();
    v29 = v28;
    v31 = v30;
    v33 = v32;

    sub_21C74A72C(v22, v24, v26 & 1);

    v34 = v31 & 1;
    sub_21C79B058(v27, v29, v31 & 1);
  }

  else
  {
    v27 = 0;
    v29 = 0;
    v34 = 0;
    v33 = 0;
  }

  v35 = v40;
  sub_21C6EDBAC(v9, v40, &qword_27CDEDA98, &unk_21CBABCB0);
  v36 = v39;
  sub_21C6EDBAC(v35, v39, &qword_27CDEDA98, &unk_21CBABCB0);
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7380, &qword_21CBC4D38) + 48));
  sub_21C8FECB4(v27, v29, v34, v33);
  sub_21C85CDBC(v27, v29, v34, v33);
  *v37 = v27;
  v37[1] = v29;
  v37[2] = v34;
  v37[3] = v33;
  sub_21C6EA794(v9, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C85CDBC(v27, v29, v34, v33);
  return sub_21C6EA794(v35, &qword_27CDEDA98, &unk_21CBABCB0);
}

uint64_t sub_21CAA850C(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-v4];
  v6 = sub_21CB858E4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21CB858B4();
  sub_21CAA9AB0(a1, v13);
  v7 = sub_21CB858A4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = a1[1];
  *(v8 + 32) = *a1;
  *(v8 + 48) = v10;
  v11 = a1[3];
  *(v8 + 64) = a1[2];
  *(v8 + 80) = v11;
  sub_21C98B308(0, 0, v5, &unk_21CBC4D48, v8);
}

uint64_t sub_21CAA8644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_21CB858B4();
  v4[18] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[19] = v6;
  v4[20] = v5;

  return MEMORY[0x2822009F8](sub_21CAA86DC, v6, v5);
}

uint64_t sub_21CAA86DC()
{
  v1 = *(v0 + 136);
  *(v0 + 104) = *(v1 + 24);
  *(v0 + 200) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v2 = *(v1 + 40);
  *(v0 + 96) = *(v1 + 56);
  *(v0 + 80) = v2;
  *(v0 + 120) = 0x676E697472617453;
  *(v0 + 128) = 0xAB00000000A680E2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D64();
  sub_21C6E8F4C(0, &unk_27CDF7710, 0x277D49AA0);
  [objc_allocWithZone(MEMORY[0x277D49AA8]) initWithMetadataEntryClass_];
  v3 = sub_21CB81094();
  sub_21CB81084();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_21CB81074();
  v6 = sub_21CB810B4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 168) = sub_21CB810A4();
  v9 = [objc_opt_self() sharedStore];
  v10 = [v9 savedAccounts];

  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v11 = sub_21CB85824();
  *(v0 + 176) = v11;

  v12 = swift_allocObject();
  *(v0 + 184) = v12;
  v13 = *(v1 + 48);
  v15 = *v1;
  v14 = *(v1 + 16);
  v12[3] = *(v1 + 32);
  v12[4] = v13;
  v12[1] = v15;
  v12[2] = v14;
  sub_21CAA9AB0(v1, v0 + 16);
  v16 = *(MEMORY[0x277D49908] + 4);
  v19 = (*MEMORY[0x277D49908] + MEMORY[0x277D49908]);
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *v17 = v0;
  v17[1] = sub_21CAA89C4;

  return v19(v11, sub_21CAA9D48, v12);
}

uint64_t sub_21CAA89C4()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v8 = *v0;

  v5 = *(v1 + 160);
  v6 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_21CAA8B24, v6, v5);
}