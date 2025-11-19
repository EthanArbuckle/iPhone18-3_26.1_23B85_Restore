unint64_t sub_26B9F6F4C()
{
  result = qword_280434748;
  if (!qword_280434748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280434748);
  }

  return result;
}

double variable initialization expression of StateObserver.configuration@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_26B9F7048(uint64_t a1, int a2)
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

uint64_t sub_26B9F7068(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_280434750)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280434750);
    }
  }
}

void *sub_26B9F70F8(void *result)
{
  v2 = result[2];
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_26B9F71FC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434760, &qword_26BA045D0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26B9F71FC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434768, &qword_26BA045D8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434760, &qword_26BA045D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26B9F7330(void *a1, int64_t a2, char a3)
{
  result = sub_26B9F7350(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26B9F7350(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434768, &qword_26BA045D8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434760, &qword_26BA045D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B9F7484(uint64_t a1)
{
  v2 = sub_26BA04080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434758, &qword_26BA045C8);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v55 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v46 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v46 - v22;
  *(&v64 + 1) = swift_getObjectType();
  *&v63 = a1;
  swift_unknownObjectRetain();
  sub_26BA04060();
  (*(v3 + 56))(v23, 0, 1, v2);
  v24 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  sub_26B9F7AC0(v23, v20);
  v25 = *(v3 + 48);
  if (v25(v20, 1, v2) == 1)
  {
LABEL_33:
    sub_26B9F7B30(v23);
    sub_26B9F7B30(v20);
    return v24;
  }

  else
  {
    v54 = (v3 + 32);
    v46 = (v3 + 8);
    v53 = v2;
    v52 = v7;
    v51 = v20;
    v50 = v16;
    v49 = v23;
    v48 = v3 + 48;
    v47 = v25;
    while (1)
    {
      sub_26B9F7B30(v20);
      sub_26B9F7AC0(v23, v16);
      result = v25(v16, 1, v2);
      if (result == 1)
      {
        break;
      }

      (*v54)(v7, v16, v2);
      sub_26BA04070();
      sub_26BA03FC0();
      sub_26BA04000();
      if (*(&v65 + 1))
      {
        v29 = MEMORY[0x277D84F90];
        do
        {
          while (1)
          {
            v59 = v63;
            v60 = v64;
            v61 = v65;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434760, &qword_26BA045D0);
            if (swift_dynamicCast())
            {
              if (v62)
              {
                break;
              }
            }

            sub_26BA04000();
            if (!*(&v65 + 1))
            {
              goto LABEL_17;
            }
          }

          v58 = v62;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_26B9F71FC(0, v29[2] + 1, 1, v29);
          }

          v31 = v29[2];
          v30 = v29[3];
          v32 = v58;
          if (v31 >= v30 >> 1)
          {
            v33 = sub_26B9F71FC((v30 > 1), v31 + 1, 1, v29);
            v32 = v58;
            v29 = v33;
          }

          v29[2] = v31 + 1;
          *&v29[2 * v31 + 4] = v32;
          sub_26BA04000();
        }

        while (*(&v65 + 1));
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
      }

LABEL_17:

      v34 = v29[2];
      if (v34)
      {
        v35 = 0;
        v56 = v34 - 1;
        v36 = MEMORY[0x277D84F90];
        do
        {
          v57 = v36;
          v37 = v35;
          while (1)
          {
            if (v37 >= v29[2])
            {
              __break(1u);
              goto LABEL_35;
            }

            v58 = *&v29[2 * v37 + 4];
            v35 = v37 + 1;
            ObjectType = swift_getObjectType();
            v39 = *(&v58 + 1);
            v40 = *(*(&v58 + 1) + 8);
            swift_unknownObjectRetain();
            if (v40(ObjectType, v39))
            {
              break;
            }

            result = swift_unknownObjectRelease();
            ++v37;
            if (v34 == v35)
            {
              v36 = v57;
              goto LABEL_3;
            }
          }

          v41 = v57;
          result = swift_isUniquelyReferenced_nonNull_native();
          *&v63 = v41;
          if ((result & 1) == 0)
          {
            result = sub_26B9F7330(0, v41[2] + 1, 1);
            v41 = v63;
          }

          v42 = v58;
          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            result = sub_26B9F7330((v43 > 1), v44 + 1, 1);
            v42 = v58;
            v41 = v63;
          }

          v41[2] = v44 + 1;
          *&v41[2 * v44 + 4] = v42;
          v45 = v56 == v37;
          v36 = v41;
        }

        while (!v45);
      }

      else
      {
        v36 = MEMORY[0x277D84F90];
      }

LABEL_3:

      sub_26B9F70F8(v36);
      v26 = v55;
      v7 = v52;
      sub_26BA04050();
      v2 = v53;
      (*v46)(v7, v53);
      v23 = v49;
      sub_26B9F7B30(v49);
      sub_26B9F7B98(v26, v23);
      v20 = v51;
      sub_26B9F7AC0(v23, v51);
      v25 = v47;
      v27 = v47(v20, 1, v2);
      v16 = v50;
      if (v27 == 1)
      {
        v24 = v66;
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
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

uint64_t sub_26B9F7AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434758, &qword_26BA045C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9F7B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434758, &qword_26BA045C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9F7B98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434758, &qword_26BA045C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9F7C10(void *a1)
{
  v2 = a1[12];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v10 = *(result - 8) + 64;
    v5 = a1[11];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v11 = *(result - 8) + 64;
      v7 = a1[13];
      v8 = a1[10];
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_26BA03CA0();
      result = sub_26BA03F40();
      if (v9 <= 0x3F)
      {
        v12 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_26B9F7DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v27 = a1;
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v10, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v19 + 16);
  v29 = v7;
  v30 = v20;
  v26 = *(v19 + 32);
  v31 = v26;
  v32 = v21;
  v22 = _s16CollectByTriggerV5InnerCMa();
  (*(v14 + 16))(v18, v27, a3);
  (*(v8 + 16))(v12, v4 + *(v6 + 52), v7);
  LOBYTE(v6) = *(v4 + *(v6 + 56));
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v28 = sub_26B9F803C(v18, v12, v6);
  swift_getWitnessTable();
  sub_26BA03DD0();
}

uint64_t sub_26B9F7FE8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_26B9F803C(a1, a2, a3);
}

uint64_t sub_26B9F803C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = *(*v3 + 152);
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v3 + v8) = v9;
  v10 = *(*v3 + 160);
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v3 + v10) = v11;
  v12 = *(*v3 + 168);
  v13 = v7[13];
  v14 = v7[10];
  swift_getAssociatedTypeWitness();
  *(v3 + v12) = sub_26BA03EA0();
  v15 = v3 + *(*v3 + 176);
  *(v15 + 32) = 0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  v16 = *(*v3 + 200);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = sub_26BA03CA0();
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  (*(*(v7[12] - 8) + 32))(v3 + *(*v3 + 128), a1);
  (*(*(v7[11] - 8) + 32))(v3 + *(*v3 + 136), a2);
  *(v3 + *(*v3 + 144)) = a3;
  return v3;
}

uint64_t sub_26B9F8300()
{
  v1 = *v0;
  MEMORY[0x26D689BB0](*(v0 + *(*v0 + 152)), -1, -1);
  MEMORY[0x26D689BB0](*(v0 + *(*v0 + 160)), -1, -1);
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 128));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 136));
  v2 = *(v0 + *(*v0 + 168));

  sub_26B9FA1B0(v0 + *(*v0 + 176));
  v3 = *(v0 + *(*v0 + 184));

  v4 = *(*v0 + 200);
  v5 = v1[13];
  v6 = v1[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_26BA03CA0();
  v7 = sub_26BA03F40();
  (*(*(v7 - 8) + 8))(v0 + v4, v7);
  return v0;
}

uint64_t sub_26B9F8544()
{
  v0 = *sub_26B9F8300();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_26B9F85B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B9F864C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_29;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_9;
  }

  v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
  if (HIWORD(v17))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v17 <= 0xFF)
    {
      if (v17 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

LABEL_16:
      v18 = (v16 - 1) << v15;
      if (v14 > 3)
      {
        v18 = 0;
      }

      if (v10 + (v12 & ~v9) == -1)
      {
        v20 = 0;
      }

      else
      {
        if (v14 <= 3)
        {
          v19 = v10 + (v12 & ~v9) + 1;
        }

        else
        {
          v19 = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v20 = *a1;
          }
        }

        else if (v19 == 1)
        {
          v20 = *a1;
        }

        else
        {
          v20 = *a1;
        }
      }

      return v11 + (v20 | v18) + 1;
    }

    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v22 = (a1 + v12) & ~v9;
  if (v8 == v11)
  {
    return (*(v7 + 48))(v22, v8, v6);
  }

  v23 = *(v22 + v10);
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *sub_26B9F885C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 1;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else
    {
      result[v11] = a2 + 1;
    }
  }

  return result;
}

void sub_26B9F8B58(uint64_t a1)
{
  v47 = *v1;
  v3 = v47[13];
  v4 = v47[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_26BA03CA0();
  v48 = sub_26BA03F40();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v48, v8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v42 - v13;
  v15 = *(v5 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12, v17);
  v19 = &v42 - v18;
  sub_26BA03D00();
  if ((sub_26BA03CE0() & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_4:
  v20 = a1;
  v44 = v4;
  v45 = v3;
  v21 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v21);
  v22 = *(*v1 + 192);
  swift_beginAccess();
  v23 = *(v1 + v22);
  sub_26BA03D00();
  if (sub_26BA03CE0())
  {
    goto LABEL_14;
  }

  v42 = v6;
  v43 = v21;
  v24 = v15;
  v25 = v19;
  sub_26BA03D00();
  v26 = sub_26BA03CE0();
  v27 = sub_26BA03D00();
  if ((v26 & 1) == 0)
  {
    v28 = sub_26BA03CE0();
    v19 = v25;
    v15 = v24;
    v6 = v42;
    v21 = v43;
    if (v28)
    {
      goto LABEL_11;
    }

    if (((v23 | v20) & 0x8000000000000000) == 0)
    {
      v27 = v23 + v20;
      if (!__OFADD__(v23, v20))
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

LABEL_21:
        __break(1u);
        return;
      }

LABEL_11:
      v27 = sub_26BA03D00();
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v25;
  v15 = v24;
  v6 = v42;
  v21 = v43;
LABEL_13:
  *(v1 + v22) = v27;
LABEL_14:
  swift_endAccess();
  v29 = *(*v1 + 200);
  swift_beginAccess();
  (*(v6 + 16))(v14, v1 + v29, v48);
  if ((*(v15 + 48))(v14, 1, v5) == 1)
  {
    (*(v6 + 8))(v14, v48);
    os_unfair_lock_unlock(v21);
  }

  else
  {
    v30 = v15;
    (*(v15 + 32))(v19, v14, v5);
    v31 = *(*v1 + 168);
    swift_beginAccess();
    v32 = v21;
    v33 = *(v1 + v31);
    swift_getAssociatedTypeWitness();
    v34 = v19;

    v35 = sub_26BA03EA0();
    v36 = *(v1 + v31);
    *(v1 + v31) = v35;

    v37 = v46;
    (*(v30 + 56))(v46, 1, 1, v5);
    swift_beginAccess();
    (*(v6 + 40))(v1 + v29, v37, v48);
    swift_endAccess();
    os_unfair_lock_unlock(v32);
    v38 = *(v1 + *(*v1 + 160));
    os_unfair_lock_lock(v38);
    v39 = *(*v1 + 128);
    v49 = v33;
    v40 = v47[12];
    v41 = v47[15];
    sub_26BA03C80();

    sub_26BA03C60();
    os_unfair_lock_unlock(v38);
    (*(v30 + 8))(v34, v5);
  }
}

void sub_26B9F9098()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(v2);
  v3 = *(*v0 + 176);
  swift_beginAccess();
  sub_26B9FA140(v0 + v3, &v14);
  if (*(&v15 + 1))
  {
    sub_26B9FA624(&v14, v17);
    v4 = *(*v0 + 184);
    v5 = *(v0 + v4);
    v6 = *(v1 + 104);
    v7 = *(v1 + 80);
    swift_getAssociatedTypeWitness();

    v8 = sub_26BA03EA0();
    v9 = *(*v0 + 168);
    swift_beginAccess();
    v10 = *(v0 + v9);
    *(v0 + v9) = v8;

    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    swift_beginAccess();
    sub_26B9FA0D0(&v14, v0 + v3);
    swift_endAccess();
    v11 = *(v0 + v4);
    *(v0 + v4) = 0;

    os_unfair_lock_unlock(v2);
    v12 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v13 = *(v12 + 8);
    sub_26BA03C90();
    if (v5)
    {

      sub_26BA03CC0();
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_26B9FA1B0(&v14);
    os_unfair_lock_unlock(v2);
  }
}

uint64_t sub_26B9F9294(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v4);
  v5 = *(*v1 + 176);
  swift_beginAccess();
  sub_26B9FA140(v1 + v5, v21);
  v6 = v22;
  sub_26B9FA1B0(v21);
  if (v6)
  {
    os_unfair_lock_unlock(v4);
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = *(v7 + 8);
    return sub_26BA03C90();
  }

  else
  {
    sub_26B9FA218(a1, v21);
    swift_beginAccess();
    sub_26B9FA0D0(v21, v1 + v5);
    swift_endAccess();
    v10 = v3[14];
    v11 = v3[11];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_26BA03CD0();
    v12 = swift_allocObject();
    v12[2] = v3[10];
    v12[3] = v11;
    v12[4] = v3[12];
    v12[5] = v3[13];
    v12[6] = v10;
    v12[7] = v3[15];

    v13 = v1;
    v14 = sub_26BA03CB0();
    v15 = *(*v1 + 184);
    v16 = *(v1 + v15);
    *(v13 + v15) = v14;

    v17 = *(*v13 + 136);
    v21[0] = v14;
    swift_getWitnessTable();
    sub_26BA03DD0();
    os_unfair_lock_unlock(v4);
    v18 = *(v13 + *(*v13 + 160));
    os_unfair_lock_lock(v18);
    v19 = *(*v13 + 128);
    v22 = v3;
    WitnessTable = swift_getWitnessTable();
    v21[0] = v13;

    sub_26BA03C70();
    __swift_destroy_boxed_opaque_existential_1(v21);
    os_unfair_lock_unlock(v18);
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26BA03D00();
    sub_26BA03D20();
  }
}

uint64_t sub_26B9F9608(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  v11 = &v17[-v10];
  v12 = *(v1 + *(v3 + 152));
  os_unfair_lock_lock(v12);
  v13 = *(*v1 + 176);
  swift_beginAccess();
  sub_26B9FA140(v1 + v13, v17);
  v14 = v18;
  sub_26B9FA1B0(v17);
  if (v14)
  {
    (*(v7 + 16))(v11, a1, AssociatedTypeWitness);
    v15 = *(*v1 + 168);
    swift_beginAccess();
    sub_26BA03EC0();
    sub_26BA03EB0();
    swift_endAccess();
  }

  os_unfair_lock_unlock(v12);
  return sub_26BA03CF0();
}

void sub_26B9F97D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v62 = v4;
  v5 = v4[13];
  v6 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_26BA03CA0();
  v9 = sub_26BA03F40();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = *(v59 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v58 = &v57 - v13;
  v61 = *(v8 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v57 - v16;
  v18 = v4[23];
  if (*&v2[v18])
  {
    v19 = *&v2[v18];

    sub_26BA03CC0();

    v4 = *v2;
  }

  v20 = *&v2[v4[19]];
  os_unfair_lock_lock(v20);
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  v21 = *(*v2 + 176);
  swift_beginAccess();
  sub_26B9FA0D0(v65, &v2[v21]);
  swift_endAccess();
  v22 = *&v2[v18];
  *&v2[v18] = 0;

  v23 = *(*v2 + 168);
  swift_beginAccess();
  v64 = *&v2[v23];
  swift_getAssociatedTypeWitness();
  sub_26BA03EC0();
  swift_getWitnessTable();
  if (sub_26BA03ED0())
  {
    os_unfair_lock_unlock(v20);
    v24 = *&v2[*(*v2 + 160)];
    os_unfair_lock_lock(v24);
    v25 = v62[12];
    v26 = v62[15];
    v27 = &v2[*(*v2 + 128)];
LABEL_10:
    sub_26BA03C60();
    os_unfair_lock_unlock(v24);
    return;
  }

  v28 = a1;
  v29 = *(v61 + 16);
  v57 = v28;
  v29(v17);
  v30 = (*(*(AssociatedTypeWitness - 8) + 48))(v17, 1, AssociatedTypeWitness);
  v31 = *v2;
  if (v30 != 1)
  {
    if (v2[*(v31 + 144)] == 1)
    {
      v40 = *(v31 + 192);
      swift_beginAccess();
      v41 = *&v2[v40];
      sub_26BA03D00();
      if ((sub_26BA03CE0() & 1) == 0)
      {
        if (v41 < 0)
        {
LABEL_23:
          __break(1u);
          return;
        }

        if (!v41)
        {
          v55 = v58;
          (v29)(v58, v57, v8);
          (*(v61 + 56))(v55, 0, 1, v8);
          v56 = *(*v2 + 200);
          swift_beginAccess();
          (*(v59 + 40))(&v2[v56], v55, v60);
          swift_endAccess();
          goto LABEL_18;
        }
      }

      v42 = *&v2[v23];

      v43 = sub_26BA03EA0();
      v44 = *&v2[v23];
      *&v2[v23] = v43;

      os_unfair_lock_unlock(v20);
      v20 = *&v2[*(*v2 + 160)];
      os_unfair_lock_lock(v20);
      v45 = *(*v2 + 128);
      v63 = v42;
      v46 = v62[12];
      v47 = v62[15];
      sub_26BA03C80();
    }

    else
    {
      v48 = sub_26BA03EA0();
      v49 = *&v2[v23];
      *&v2[v23] = v48;

      os_unfair_lock_unlock(v20);
      v20 = *&v2[*(*v2 + 160)];
      os_unfair_lock_lock(v20);
      v50 = v62[12];
      v51 = v62[15];
      v52 = &v2[*(*v2 + 128)];
    }

    sub_26BA03C60();
LABEL_18:
    os_unfair_lock_unlock(v20);
    (*(v61 + 8))(v17, v8);
    return;
  }

  v32 = *(v31 + 192);
  swift_beginAccess();
  v33 = *&v2[v32];
  sub_26BA03D00();
  if (sub_26BA03CE0())
  {
LABEL_9:
    v34 = *&v2[v23];

    v35 = sub_26BA03EA0();
    v36 = *&v2[v23];
    *&v2[v23] = v35;

    os_unfair_lock_unlock(v20);
    v24 = *&v2[*(*v2 + 160)];
    os_unfair_lock_lock(v24);
    v37 = *(*v2 + 128);
    v63 = v34;
    v38 = v62[12];
    v39 = v62[15];
    sub_26BA03C80();

    goto LABEL_10;
  }

  if (v33 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v33)
  {
    goto LABEL_9;
  }

  v53 = v58;
  (v29)(v58, v57, v8);
  (*(v61 + 56))(v53, 0, 1, v8);
  v54 = *(*v2 + 200);
  swift_beginAccess();
  (*(v59 + 40))(&v2[v54], v53, v60);
  swift_endAccess();
  os_unfair_lock_unlock(v20);
}

uint64_t sub_26B9FA07C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_26B9FA09C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_26B9FA0D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434870, &qword_26BA047D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9FA140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434870, &qword_26BA047D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9FA1B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434870, &qword_26BA047D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9FA218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_26B9FA324()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(v3);
  v4 = *(*v0 + 192);
  swift_beginAccess();
  v5 = *(v0 + v4);
  sub_26BA03D00();
  if ((sub_26BA03CE0() & 1) == 0)
  {
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (!v5)
    {
      goto LABEL_22;
    }
  }

  v6 = *(*v1 + 168);
  swift_beginAccess();
  v22 = *(v1 + v6);
  v7 = v2[13];
  v8 = v2[10];
  swift_getAssociatedTypeWitness();
  sub_26BA03EC0();
  swift_getWitnessTable();
  if (sub_26BA03ED0())
  {
LABEL_22:
    os_unfair_lock_unlock(v3);
    return;
  }

  swift_beginAccess();
  v9 = *(v1 + v4);
  sub_26BA03D00();
  if (sub_26BA03CE0())
  {
    goto LABEL_12;
  }

  sub_26BA03D00();
  if ((sub_26BA03CE0() & 1) == 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9)
      {
        v10 = v9 - 1;
        goto LABEL_11;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = sub_26BA03D00();
LABEL_11:
  *(v1 + v4) = v10;
LABEL_12:
  swift_endAccess();
  v11 = *(v1 + v6);

  v12 = sub_26BA03EA0();
  v13 = *(v1 + v6);
  *(v1 + v6) = v12;

  os_unfair_lock_unlock(v3);
  v14 = *(v1 + *(*v1 + 160));
  os_unfair_lock_lock(v14);
  v15 = *(*v1 + 128);
  v16 = v2[12];
  v17 = v2[15];
  v18 = sub_26BA03C80();

  os_unfair_lock_unlock(v14);
  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v19 = *(v1 + v4);
  sub_26BA03D00();
  if (sub_26BA03CE0())
  {
LABEL_21:
    swift_endAccess();
    goto LABEL_22;
  }

  sub_26BA03D00();
  v20 = sub_26BA03CE0();
  v21 = sub_26BA03D00();
  if (v20)
  {
LABEL_20:
    *(v1 + v4) = v21;
    goto LABEL_21;
  }

  if (sub_26BA03CE0())
  {
LABEL_18:
    v21 = sub_26BA03D00();
    goto LABEL_20;
  }

  if ((v19 | v18) < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v19 + v18;
  if (__OFADD__(v19, v18))
  {
    goto LABEL_18;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_26B9FA624(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t Context.description.getter(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v9 = sub_26BA04090();
  MEMORY[0x26D689580](8250, 0xE200000000000000);
  v4 = (*(a2 + 16))(a1, a2);
  v5 = sub_26BA03F10();
  v7 = v6;

  MEMORY[0x26D689580](v5, v7);

  return v9;
}

uint64_t Configurations.AsyncDispatchedOnTrigger.init(asyncDispatched:triggered:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for Configurations.TriggeredUpdates;
  a3[4] = &protocol witness table for Configurations.TriggeredUpdates;
  *a3 = a2;
  a3[8] = &type metadata for Configurations.AsyncDispatched;
  a3[9] = &protocol witness table for Configurations.AsyncDispatched;
  a3[5] = result;
  return result;
}

uint64_t Configurations.AsyncDispatchedOnTrigger.stateDidChange(from:)(uint64_t a1)
{
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 8))(a1, v4, v5);
  v6 = (*(v3 + 8))();

  return v6;
}

uint64_t sub_26B9FA848(uint64_t a1)
{
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 8))(a1, v4, v5);
  v6 = (*(v3 + 8))();

  return v6;
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

uint64_t sub_26B9FA918(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26B9FA960(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_26B9FAA04()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_26BA03E40();
    v4 = v3;

    qword_280434878 = v2;
    unk_280434880 = v4;
  }

  else
  {
    __break(1u);
  }
}

_DWORD *sub_26B9FAA90()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_280434888 = result;
  return result;
}

uint64_t sub_26B9FAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  a7();
  v11 = qword_280434738;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_280434888;
  os_unfair_lock_lock(qword_280434888);
  if (qword_280434740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = off_280434890;
  if (*(off_280434890 + 2) && (v14 = sub_26B9FADDC(a4, a5), (v15 & 1) != 0))
  {
    v16 = *(v13[7] + 8 * v14);
    swift_endAccess();
    v17 = v16;
  }

  else
  {
    swift_endAccess();
    sub_26B9FB74C();
    if (qword_280434730 != -1)
    {
      swift_once();
    }

    v18 = sub_26BA03F30();
    swift_beginAccess();
    v17 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = off_280434890;
    off_280434890 = 0x8000000000000000;
    sub_26B9FB1B0(v17, a4, a5, isUniquelyReferenced_nonNull_native);

    off_280434890 = v22;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804348A0, &qword_26BA04860);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26BA04850;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_26B9FB798();
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;

  sub_26BA03C10();
}

unint64_t sub_26B9FADDC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26BA04030();
  sub_26BA03E80();
  v6 = sub_26BA04040();

  return sub_26B9FAE54(a1, a2, v6);
}

unint64_t sub_26B9FAE54(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26BA04010())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26B9FAF0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804348B0, "j\a");
  v39 = a2;
  result = sub_26BA03FF0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_26BA04030();
      sub_26BA03E80();
      result = sub_26BA04040();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26B9FB1B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26B9FADDC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26B9FAF0C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26B9FADDC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_26BA04020();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26B9FB328();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_26B9FB328()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804348B0, "j\a");
  v2 = *v0;
  v3 = sub_26BA03FE0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t _s8Stateful3LogV3log_4type9isPrivateySS_So03os_c1_D2_taSbtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = qword_280434738;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_280434888;
  os_unfair_lock_lock(qword_280434888);
  if (qword_280434740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = off_280434890;
  if (*(off_280434890 + 2) && (v13 = sub_26B9FADDC(a5, a6), (v14 & 1) != 0))
  {
    v15 = *(v12[7] + 8 * v13);
    swift_endAccess();
    v16 = v15;
  }

  else
  {
    swift_endAccess();
    sub_26B9FB74C();
    if (qword_280434730 != -1)
    {
      swift_once();
    }

    v17 = sub_26BA03F30();
    swift_beginAccess();
    v16 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = off_280434890;
    off_280434890 = 0x8000000000000000;
    sub_26B9FB1B0(v16, a5, a6, isUniquelyReferenced_nonNull_native);

    off_280434890 = v21;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804348A0, &qword_26BA04860);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26BA04850;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_26B9FB798();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  sub_26BA03C10();
}

unint64_t sub_26B9FB74C()
{
  result = qword_280434898;
  if (!qword_280434898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280434898);
  }

  return result;
}

unint64_t sub_26B9FB798()
{
  result = qword_2804348A8;
  if (!qword_2804348A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804348A8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26B9FB800(uint64_t a1, int a2)
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

uint64_t sub_26B9FB848(uint64_t result, int a2, int a3)
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

unint64_t sub_26B9FB8EC(uint64_t a1)
{
  result = sub_26B9FB914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9FB914()
{
  result = qword_2804348B8;
  if (!qword_2804348B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804348B8);
  }

  return result;
}

uint64_t sub_26B9FB968()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804348C0, &unk_26BA04930);
  v7 = sub_26BA04090();
  MEMORY[0x26D689580](8250, 0xE200000000000000);
  v2 = v1;
  v3 = sub_26BA03F10();
  v5 = v4;

  MEMORY[0x26D689580](v3, v5);

  return v7;
}

void (*MutableStateValue.wrappedValue.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 344);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  StateValue.wrappedValue.getter(v9, v10, v9);
  return sub_26B9FBB30;
}

void sub_26B9FBB30(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_26BA01274(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_26BA01274((*a1)[4], a2);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *MutableStateValue.__allocating_init(_:_:)(uint64_t a1)
{
  v3 = *(v1 + 352);
  v4 = (*(*(v1 + 376) + 8))();
  swift_allocObject();
  return sub_26B9FF3C8(a1, v4);
}

uint64_t MutableStateValue.__deallocating_deinit()
{
  v0 = StateValue.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t _s8Stateful17MutableStateValueC07wrappedD0xvs_0(uint64_t a1)
{
  v3 = *v1;
  sub_26B9FBDC4();
  v4 = *(*(*(v3 + 344) - 8) + 8);

  return v4(a1);
}

uint64_t Configurations.TriggeredUpdates.stateDidChange(from:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434948, "B\a");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - v8;
  v12[1] = a1;
  v12[2] = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434950, "d\a");
  sub_26B9FC218(&qword_280434958, &qword_280434950, "d\a");
  sub_26BA03D90();
  sub_26B9FC218(&qword_280434960, &qword_280434948, "B\a");
  v10 = sub_26BA03D70();
  (*(v5 + 8))(v9, v4);
  return v10;
}

uint64_t sub_26B9FBFD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434948, "B\a");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = a1;
  v12[2] = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434950, "d\a");
  sub_26B9FC218(&qword_280434958, &qword_280434950, "d\a");
  sub_26BA03D90();
  sub_26B9FC218(&qword_280434960, &qword_280434948, "B\a");
  v10 = sub_26BA03D70();
  (*(v4 + 8))(v8, v3);
  return v10;
}

uint64_t sub_26B9FC17C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434968, ":\a");
  *a2 = v3;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26B9FC218(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B9FC270(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_26B9FC310(uint64_t a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock(*(v1 + *(*v1 + 96)));
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
  os_unfair_lock_unlock(*(v1 + *(*v1 + 96)));
}

uint64_t sub_26B9FC3E8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_26B9FC428(a1);
  return v5;
}

uint64_t *sub_26B9FC428(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = swift_slowAlloc();
  *(v1 + v4) = v5;
  *v5 = 0;
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 88), a1);
  return v1;
}

uint64_t *sub_26B9FC4D8()
{
  v1 = *v0;
  MEMORY[0x26D689BB0](*(v0 + *(*v0 + 96)), -1, -1);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  return v0;
}

uint64_t sub_26B9FC574()
{
  sub_26B9FC4D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26B9FC5E4(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock(*(v1 + *(*v1 + 96)));
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v1 + *(*v1 + 96)));
}

uint64_t sub_26B9FC6F4()
{
  v0 = sub_26BA03E70();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  dispatch_queue_get_label(0);
  sub_26BA03E60();
  v3 = sub_26BA03E50();
  v5 = v4;
  v6 = sub_26BA03F10();
  if (v5)
  {
    if (v3 == v6 && v5 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_26BA04010();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_26B9FC7E8(uint64_t a1)
{
  result = sub_26B9FC810();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9FC810()
{
  result = qword_2804349F0;
  if (!qword_2804349F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804349F0);
  }

  return result;
}

uint64_t sub_26B9FC864()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804349F8, &qword_26BA04AA8);
  v7 = sub_26BA04090();
  MEMORY[0x26D689580](8250, 0xE200000000000000);
  v2 = v1;
  v3 = sub_26BA03F10();
  v5 = v4;

  MEMORY[0x26D689580](v3, v5);

  return v7;
}

uint64_t Configurations.Print.stateDidChange(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A00, &qword_26BA04AB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A08, &qword_26BA04AB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - v14;
  v20 = 0;
  v21 = a1;
  memset(v19, 0, sizeof(v19));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A10, &qword_26BA04AC0);
  sub_26B9FC218(&qword_280434A18, &qword_280434A10, &qword_26BA04AC0);
  sub_26BA03DB0();
  sub_26B9FCBB8(v19);
  sub_26B9FC218(&qword_280434A28, &qword_280434A08, &qword_26BA04AB8);
  sub_26BA03D90();
  sub_26B9FC218(&qword_280434A30, &qword_280434A00, &qword_26BA04AB0);
  v16 = sub_26BA03D70();
  (*(v5 + 8))(v9, v4);
  (*(v11 + 8))(v15, v10);
  return v16;
}

uint64_t sub_26B9FCBB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A20, &qword_26BA04AC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9FCC20(uint64_t a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A00, &qword_26BA04AB0);
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v20, v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A08, &qword_26BA04AB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v19 - v12;
  v14 = *v1;
  v15 = v1[1];
  v22 = 0;
  v23 = a1;
  memset(v21, 0, sizeof(v21));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A10, &qword_26BA04AC0);
  sub_26B9FC218(&qword_280434A18, &qword_280434A10, &qword_26BA04AC0);
  sub_26BA03DB0();
  sub_26B9FCBB8(v21);
  sub_26B9FC218(&qword_280434A28, &qword_280434A08, &qword_26BA04AB8);
  sub_26BA03D90();
  sub_26B9FC218(&qword_280434A30, &qword_280434A00, &qword_26BA04AB0);
  v16 = v20;
  v17 = sub_26BA03D70();
  (*(v3 + 8))(v7, v16);
  (*(v9 + 8))(v13, v8);
  return v17;
}

uint64_t sub_26B9FCED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = MEMORY[0x277D84F70] + 8;
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_26B9FD00C(a1, v4 + 16);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26B9FCF40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26B9FCF88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B9FCFD4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B9FD00C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B9FD06C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26B9FD0D8(NSObject *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_26BA03E00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26BA03E20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26B9FC6F4())
  {
    return a2();
  }

  v30 = v7;
  v31 = a1;
  sub_26B9F6F4C();
  v19 = sub_26BA03EF0();
  v20 = sub_26B9FC6F4();

  if (v20 & 1) != 0 || (v21 = sub_26BA03EF0(), v22 = sub_26BA03F20(), v21, (v22))
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v37 = sub_26B9FD620;
    v38 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_26B9FD06C;
    v36 = &block_descriptor_9;
    v24 = _Block_copy(&aBlock);

    sub_26BA03E10();
    v32 = MEMORY[0x277D84F90];
    sub_26B9FD55C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A40, &qword_26BA04B10);
    sub_26B9FD5B4();
    sub_26BA03F50();
    MEMORY[0x26D6895F0](0, v17, v11, v24);
    _Block_release(v24);
    (*(v30 + 8))(v11, v6);
    (*(v13 + 8))(v17, v12);
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_26B9FD50C;
    *(v26 + 24) = v25;
    v37 = sub_26B9FD50C;
    v38 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_26B9FD0B0;
    v36 = &block_descriptor;
    v27 = _Block_copy(&aBlock);

    dispatch_sync(v31, v27);
    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B9FD4D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B9FD50C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26B9FD55C()
{
  result = qword_280434A38;
  if (!qword_280434A38)
  {
    sub_26BA03E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280434A38);
  }

  return result;
}

unint64_t sub_26B9FD5B4()
{
  result = qword_280434A48;
  if (!qword_280434A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280434A40, &qword_26BA04B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280434A48);
  }

  return result;
}

uint64_t Configurations.AsyncDispatched.stateDidChange(from:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A50, &qword_26BA04B28);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A58, &qword_26BA04B30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A60, &qword_26BA04B38);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v26 - v19;
  v28 = a2;
  v29 = a1;
  v21 = sub_26BA03EE0();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A10, &qword_26BA04AC0);
  sub_26B9F6F4C();
  sub_26B9FC218(&qword_280434A18, &qword_280434A10, &qword_26BA04AC0);
  sub_26B9FD994();
  sub_26BA03DC0();
  sub_26B9FD9EC(v14);

  sub_26B9FC218(&qword_280434A70, &qword_280434A60, &qword_26BA04B38);
  sub_26BA03D90();
  sub_26B9FC218(&qword_280434A78, &qword_280434A50, &qword_26BA04B28);
  v23 = v26;
  v24 = sub_26BA03D70();
  (*(v27 + 8))(v9, v23);
  (*(v16 + 8))(v20, v15);
  return v24;
}

unint64_t sub_26B9FD994()
{
  result = qword_280434A68;
  if (!qword_280434A68)
  {
    sub_26B9F6F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280434A68);
  }

  return result;
}

uint64_t sub_26B9FD9EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A58, &qword_26BA04B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static StateObservingNSObject.context.getter()
{
  sub_26BA03F60();

  swift_getMetatypeMetadata();
  v0 = sub_26BA04090();
  MEMORY[0x26D689580](v0);

  sub_26BA03FD0();
  __break(1u);
}

uint64_t StateObservingNSObject.cancellableSubs.getter()
{
  sub_26B9FE294();
}

uint64_t StateObservingNSObject.cancellableSubs.setter(uint64_t a1)
{
  v3 = direct field offset for StateObservingNSObject.cancellableSubs;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t StateObservingNSObject.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for StateObservingNSObject.configuration;
  swift_beginAccess();
  return sub_26B9FE2D8(v1 + v3, a1);
}

uint64_t StateObservingNSObject.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for StateObservingNSObject.configuration;
  swift_beginAccess();
  sub_26B9FE348(a1, v1 + v3);
  return swift_endAccess();
}

id StateObservingNSObject.init(configuration:)(uint64_t *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  *(v1 + direct field offset for StateObservingNSObject.cancellableSubs) = MEMORY[0x277D84F90];
  v4 = v1 + direct field offset for StateObservingNSObject.configuration;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = *(v3 + 96);
  v10[0] = *(v3 + 80);
  v10[1] = v5;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for StateObservingNSObject();
  v6 = objc_msgSendSuper2(&v11, sel_init);
  sub_26B9FA218(a1, v10);
  v7 = direct field offset for StateObservingNSObject.configuration;
  swift_beginAccess();
  v8 = v6;
  sub_26B9FE348(v10, v6 + v7);
  swift_endAccess();
  swift_getWitnessTable();
  StateObserving.setup()();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

id StateObservingNSObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateObservingNSObject.init()()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  *(v0 + direct field offset for StateObservingNSObject.cancellableSubs) = MEMORY[0x277D84F90];
  v2 = v0 + direct field offset for StateObservingNSObject.configuration;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for StateObservingNSObject();
  v3 = objc_msgSendSuper2(&v7, sel_init, v5, v6);
  swift_getWitnessTable();
  StateObserving.setup()();

  return v3;
}

id StateObservingNSObject.__deallocating_deinit()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for StateObservingNSObject();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

uint64_t sub_26B9FE0A0(uint64_t a1)
{
  v2 = *(a1 + direct field offset for StateObservingNSObject.cancellableSubs);

  v3 = a1 + direct field offset for StateObservingNSObject.configuration;

  return sub_26B9FE430(v3);
}

uint64_t (*sub_26B9FE108(uint64_t *a1))()
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
  *(v2 + 32) = StateObservingNSObject.configuration.modify();
  return sub_26B9FE178;
}

uint64_t sub_26B9FE17C()
{
  sub_26B9FE294();
}

uint64_t (*sub_26B9FE1A8(uint64_t *a1))()
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
  *(v2 + 32) = StateObservingNSObject.cancellableSubs.modify();
  return sub_26B9FE49C;
}

void sub_26B9FE218(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_26B9FE294()
{
  v1 = direct field offset for StateObservingNSObject.cancellableSubs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26B9FE2D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434A90, &qword_26BA04B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9FE348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434A90, &qword_26BA04B90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9FE430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434A90, &qword_26BA04B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall StateObserving.setup()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_26B9FE508();
  if (v4)
  {
    sub_26B9FE918(v4, v3, v2);
  }
}

uint64_t sub_26B9FE508()
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434B28, &qword_26BA04C38);
  v1 = *(v34 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v34, v3);
  v32 = v30 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434B30, &qword_26BA04C40);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33, v7);
  v9 = v30 - v8;
  v10 = sub_26B9F7484(v0);
  v11 = *(v10 + 16);
  if (!v11)
  {

    v18 = MEMORY[0x277D84F90];
    v19 = *(MEMORY[0x277D84F90] + 16);
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_8:

    return 0;
  }

  v31 = v1;
  v36 = MEMORY[0x277D84F90];
  sub_26BA03F90();
  v12 = (v10 + 40);
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 16);
    swift_unknownObjectRetain();
    v16(ObjectType, v14);
    swift_unknownObjectRelease();
    sub_26BA03F70();
    v17 = *(v36 + 16);
    sub_26BA03FA0();
    sub_26BA03FB0();
    sub_26BA03F80();
    v12 += 2;
    --v11;
  }

  while (v11);

  v18 = v36;
  v1 = v31;
  v19 = *(v36 + 16);
  if (!v19)
  {
    goto LABEL_8;
  }

LABEL_5:
  v20 = v19 - 1;
  if (v19 == 1)
  {
    v21 = *(v18 + 32);

LABEL_13:

    return v21;
  }

  v31 = v18;
  v22 = *(v18 + 32);
  v23 = (v1 + 8);
  v24 = (v5 + 8);
  result = swift_retain_n();
  v26 = 40;
  v30[1] = v22;
  while (v20)
  {
    v35 = *(v31 + v26);
    v36 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A10, &qword_26BA04AC0);
    sub_26B9FC218(&qword_280434A18, &qword_280434A10, &qword_26BA04AC0);
    v27 = v32;
    sub_26BA03D80();
    sub_26B9FC218(&qword_280434B38, &qword_280434B28, &qword_26BA04C38);
    v28 = v34;
    sub_26BA03D90();
    (*v23)(v27, v28);
    sub_26B9FC218(&qword_280434B40, &qword_280434B30, &qword_26BA04C40);
    v29 = v33;
    v21 = sub_26BA03D70();

    result = (*v24)(v9, v29);
    v26 += 8;
    v22 = v21;
    if (!--v20)
    {

      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_26B9FE918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v6(v14, a2, a3);
  v7 = v15;
  sub_26B9FE430(v14);
  if (!v7)
  {

    goto LABEL_5;
  }

  result = (v6)(v14, a2, a3);
  v9 = v15;
  if (v15)
  {
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    a1 = (*(v10 + 8))(a1, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v14);
LABEL_5:
    v14[0] = a1;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A10, &qword_26BA04AC0);
    sub_26B9FC218(&qword_280434A18, &qword_280434A10, &qword_26BA04AC0);
    sub_26BA03DF0();

    v13 = (*(a3 + 88))(v14, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434B18, &qword_26BA04C30);
    sub_26B9FC218(&qword_280434B20, &qword_280434B18, &qword_26BA04C30);
    sub_26BA03D30();

    v13(v14, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B9FEB84()
{
  MEMORY[0x26D689BE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B9FEBBC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v13 - v8;
  swift_getObjectType();
  (*(a2 + 40))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v9, AssociatedTypeWitness);
  return v11;
}

uint64_t sub_26B9FED10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434B48, qword_26BA04C48);
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_26B9FEF40(a1, v4 + 16);
}

uint64_t sub_26B9FED7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_26B9FEBBC(a3, a4);
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = v7;
    swift_unknownObjectRetain();
    sub_26B9FD0D8(v8, sub_26B9FEEC8, v9);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26B9FEE4C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B9FEE90()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B9FEEC8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return (*(v2 + 96))(v1);
}

uint64_t sub_26B9FEF00()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26B9FEF40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434B48, qword_26BA04C48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Publisher<>.toStateChangedPublisher()(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BA03C40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_26BA03D90();

  swift_getWitnessTable();
  v11 = sub_26BA03D70();
  (*(v5 + 8))(v9, v4);
  return v11;
}

uint64_t sub_26B9FF114@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a2[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
}

uint64_t sub_26B9FF1C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_26B9FF114(a1, a2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t StateValue.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*v3 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v11 - v8;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v9);

  sub_26BA00B78(v9);
  (*(v6 + 8))(v9, v5);
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(a3);
}

uint64_t sub_26B9FF334(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_26BA01274(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void *sub_26B9FF3C8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_26BA03F40();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v18 - v11;
  (*(*(v6 - 8) + 56))(&v18 - v11, 1, 1, v6);
  v13 = v5[11];
  v14 = v5[12];
  v15 = v5[13];
  v16 = sub_26BA013AC(v12);
  (*(v8 + 8))(v12, v7);
  v2[2] = a1;
  v2[3] = v16;
  v2[4] = a2;
  return v2;
}

uint64_t StateValue.ifUpdated(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v61 = a2;
  v62 = a1;
  v58 = *v2;
  v3 = *(v58 + 80);
  v4 = sub_26BA03F40();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = *(TupleTypeMetadata2 - 8);
  v6 = *(v59 + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2, v7);
  v10 = &v55 - v9;
  v68 = *(v4 - 8);
  v11 = v68[8];
  v13 = MEMORY[0x28223BE20](v8, v12);
  v67 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v55 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v55 - v21;
  v23 = *(v3 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v20, v25);
  v57 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v55 - v29;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v30);

  v31 = *(v23 + 16);
  v65 = v30;
  v31(v22, v30, v3);
  (*(v23 + 56))(v22, 0, 1, v3);
  v63 = v2;
  v32 = v2[3];

  sub_26B9FC310(v18);

  v60 = TupleTypeMetadata2;
  v33 = *(TupleTypeMetadata2 + 48);
  v34 = v68[2];
  v34(v10, v22, v4);
  v64 = v33;
  v35 = &v10[v33];
  v36 = v18;
  v37 = v18;
  v38 = v4;
  v39 = v4;
  v40 = v3;
  v34(v35, v37, v39);
  v66 = v23;
  v41 = *(v23 + 48);
  if (v41(v10, 1, v3) != 1)
  {
    v56 = v36;
    v46 = v68;
    v34(v67, v10, v38);
    v47 = v64;
    if (v41(&v10[v64], 1, v40) != 1)
    {
      v44 = v66;
      v50 = v57;
      (*(v66 + 32))(v57, &v10[v47], v40);
      v51 = *(*(v58 + 96) + 8);
      v52 = sub_26BA03E30();
      v53 = *(v44 + 8);
      v53(v50, v40);
      v54 = v46[1];
      v54(v56, v38);
      v54(v22, v38);
      v53(v67, v40);
      v54(v10, v38);
      v45 = v65;
      if (v52)
      {
        return (*(v44 + 8))(v45, v40);
      }

      goto LABEL_7;
    }

    v48 = v46[1];
    v48(v56, v38);
    v48(v22, v38);
    v44 = v66;
    (*(v66 + 8))(v67, v40);
LABEL_6:
    (*(v59 + 8))(v10, v60);
    v45 = v65;
LABEL_7:
    v62(v45);
    sub_26BA00B78(v45);
    return (*(v44 + 8))(v45, v40);
  }

  v42 = v68[1];
  v42(v36, v38);
  v42(v22, v38);
  v43 = v41(&v10[v64], 1, v3);
  v44 = v66;
  if (v43 != 1)
  {
    goto LABEL_6;
  }

  v42(v10, v38);
  v45 = v65;
  return (*(v44 + 8))(v45, v40);
}

uint64_t StateValue.ifUpdated<A>(_:_:)(void *a1, void (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v103[1] = a4;
  v111 = a3;
  v112 = a2;
  v106 = *v4;
  v6 = v106;
  v7 = *a1;
  v125 = a1;
  v8 = *(v7 + *MEMORY[0x277D84DE8] + 8);
  v128 = *(v8 - 8);
  v9 = *(v128 + 64);
  MEMORY[0x28223BE20](a1, v8);
  v116 = v103 - v10;
  v130 = v11;
  v12 = sub_26BA03F40();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v109 = *(TupleTypeMetadata2 - 8);
  v13 = *(v109 + 64);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2, v14);
  v118 = v103 - v16;
  v119 = v12;
  v123 = *(v12 - 8);
  v17 = v123[8];
  v19 = MEMORY[0x28223BE20](v15, v18);
  v108 = v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v121 = v103 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v127 = v103 - v25;
  v26 = *(v6 + 80);
  v27 = sub_26BA03F40();
  v129 = swift_getTupleTypeMetadata2();
  v115 = *(v129 - 8);
  v28 = *(v115 + 64);
  v30 = MEMORY[0x28223BE20](v129, v29);
  v32 = v103 - v31;
  v124 = *(v27 - 8);
  v33 = v124;
  v34 = *(v124 + 64);
  v36 = MEMORY[0x28223BE20](v30, v35);
  v120 = v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v114 = v103 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = v103 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v48 = v103 - v47;
  v49 = *(v26 - 8);
  v50 = *(v49 + 64);
  v52 = MEMORY[0x28223BE20](v46, v51);
  v113 = v103 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v54);
  v56 = v103 - v55;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v56);

  v57 = *(v49 + 16);
  v132 = v56;
  v105 = v49 + 16;
  v104 = v57;
  v57(v48, v56, v26);
  (*(v49 + 56))(v48, 0, 1, v26);
  v126 = v5;
  v58 = v5[3];

  sub_26B9FC310(v44);

  v59 = *(v129 + 48);
  v117 = v33;
  v60 = *(v33 + 16);
  v60(v32, v48, v27);
  v60(&v32[v59], v44, v27);
  v131 = v49;
  v61 = *(v49 + 48);
  if (v61(v32, 1, v26) != 1)
  {
    v103[0] = v44;
    v63 = v114;
    v60(v114, v32, v27);
    v110 = v61;
    if (v61(&v32[v59], 1, v26) != 1)
    {
      v72 = v131;
      v73 = v113;
      (*(v131 + 32))(v113, &v32[v59], v26);
      v74 = *(*(v106 + 96) + 8);
      LODWORD(v129) = sub_26BA03E30();
      v75 = *(v72 + 8);
      v75(v73, v26);
      v62 = *(v124 + 8);
      v62(v103[0], v27);
      v62(v48, v27);
      v75(v63, v26);
      v62(v32, v27);
      v65 = v126;
      v64 = v127;
      v66 = v128;
      v67 = v120;
      if (v129)
      {
        return (*(v131 + 8))(v132, v26);
      }

LABEL_8:
      swift_getAtKeyPath();
      v129 = *(v66 + 56);
      (v129)(v64, 0, 1, v130);
      v68 = v65[3];

      sub_26B9FC310(v67);

      v69 = v110(v67, 1, v26);
      v107 = v26;
      if (v69)
      {
        v62(v67, v27);
        v70 = 1;
        v71 = v121;
      }

      else
      {
        v76 = v113;
        v104(v113, v67, v26);
        v62(v67, v27);
        v71 = v121;
        swift_getAtKeyPath();
        (*(v131 + 8))(v76, v26);
        v70 = 0;
      }

      v77 = v130;
      (v129)(v71, v70, 1, v130);
      v78 = v123;
      v79 = *(TupleTypeMetadata2 + 48);
      v80 = v123[2];
      v82 = v118;
      v81 = v119;
      v80(v118, v64, v119);
      v129 = v79;
      v80(&v82[v79], v71, v81);
      v83 = v128;
      v84 = *(v128 + 48);
      if (v84(v82, 1, v77) == 1)
      {
        v85 = v78[1];
        v85(v71, v81);
        v85(v127, v81);
        v86 = v84(&v82[v129], 1, v77);
        v26 = v107;
        v87 = v83;
        if (v86 == 1)
        {
          v85(v82, v81);
          return (*(v131 + 8))(v132, v26);
        }
      }

      else
      {
        v88 = v108;
        v80(v108, v82, v81);
        v89 = v129;
        v90 = v84(&v82[v129], 1, v77);
        v91 = (v83 + 8);
        v87 = v83;
        if (v90 != 1)
        {
          v96 = v83 + 32;
          v97 = &v82[v89];
          v98 = v83;
          v99 = v116;
          (*(v83 + 32))(v116, v97, v77);
          v100 = sub_26BA03E30();
          v101 = *(v96 - 24);
          v101(v99, v77);
          v102 = v123[1];
          v102(v121, v81);
          v102(v127, v81);
          v101(v88, v77);
          v102(v82, v81);
          v87 = v98;
          v26 = v107;
          if (v100)
          {
            return (*(v131 + 8))(v132, v26);
          }

          goto LABEL_19;
        }

        v92 = v123[1];
        v92(v121, v81);
        v92(v127, v81);
        (*v91)(v88, v77);
        v26 = v107;
      }

      (*(v109 + 8))(v82, TupleTypeMetadata2);
LABEL_19:
      v93 = v116;
      v94 = v132;
      swift_getAtKeyPath();
      v112(v94, v93);
      (*(v87 + 8))(v93, v130);
      sub_26BA00B78(v94);
      return (*(v131 + 8))(v132, v26);
    }

    v62 = *(v124 + 8);
    v62(v103[0], v27);
    v62(v48, v27);
    (*(v131 + 8))(v63, v26);
LABEL_7:
    v64 = v127;
    (*(v115 + 8))(v32, v129);
    v65 = v126;
    v66 = v128;
    v67 = v120;
    goto LABEL_8;
  }

  v62 = *(v124 + 8);
  v62(v44, v27);
  v62(v48, v27);
  if (v61(&v32[v59], 1, v26) != 1)
  {
    v110 = v61;
    goto LABEL_7;
  }

  v62(v32, v27);
  return (*(v131 + 8))(v132, v26);
}

uint64_t _s8Stateful17MutableStateValueC16mutateAtomicallyyyyxzcF_0(void (*a1)(char *), uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v11 - v7;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v8);

  a1(v8);
  sub_26BA01190(v8, v9);
  return (*(v5 + 8))(v8, v4);
}

void *StateValue.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t StateValue.publisher.getter()
{
  sub_26BA007FC();
  v0 = PublishedValue.publisher.getter();

  return v0;
}

uint64_t sub_26BA007FC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_26BA00868(void (*a1)(void))
{
  sub_26BA007FC();
  a1();
}

uint64_t StateValue.mutateImmediatelyNotifyAsync(_:)(void (*a1)(char *))
{
  v26 = a1;
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v5 = *(v25 + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v9 = &v25 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v7, v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v25 - v17;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v18);

  v26(v18);
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v15);

  v19 = *(v2 + 8);
  v20 = sub_26BA03E30();
  v21 = *(v10 + 8);
  v21(v15, v3);
  if ((v20 & 1) == 0)
  {
    (*(v2 + 32))(v3, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v25 + 8))(v9, AssociatedTypeWitness);
    sub_26BA0148C(v18);
  }

  return (v21)(v18, v3);
}

uint64_t sub_26BA00B78(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_26BA03F40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  v10 = *(v3 - 8);
  (*(v10 + 16))(&v13 - v8, a1, v3);
  (*(v10 + 56))(v9, 0, 1, v3);
  v11 = v1[3];

  sub_26B9FC5E4(v9);

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_26BA00CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*(*(a3 + a4 - 32) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6);
  return (*(**a2 + 152))(v7);
}

uint64_t property wrapper backing initializer of StateValue.lastAccessedValue(uint64_t a1)
{
  v2 = sub_26BA013AC(a1);
  v3 = sub_26BA03F40();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t StateValue.__allocating_init(_:)(uint64_t a1)
{
  v3 = v1[11];
  v4 = (*(v1[13] + 8))();
  v5 = v1[34];

  return v5(a1, v4);
}

uint64_t sub_26BA00EB8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_26B9FF3C8(a1, a2);
  return v4;
}

uint64_t StateValue.__deallocating_deinit()
{
  StateValue.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26BA00F3C()
{
  v14 = *v0;
  v1 = v14;
  v2 = *(v14 + 80);
  sub_26BA03D10();
  v13[1] = swift_getWitnessTable();
  v3 = sub_26BA03C40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v13 - v7;
  sub_26BA007FC();
  v9 = PublishedValue.publisher.getter();

  v15 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = *(v14 + 88);
  *(v10 + 40) = *(v1 + 104);
  sub_26BA03D90();

  swift_getWitnessTable();
  v11 = sub_26BA03D70();
  (*(v4 + 8))(v8, v3);
  return v11;
}

uint64_t sub_26BA01190(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v10 - v7;
  sub_26BA007FC();
  (*(v5 + 16))(v8, a1, v4);
  sub_26BA01AB4(v8);
}

uint64_t sub_26BA01274(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v14 - v8;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v9);

  v10 = *(*(v4 + 96) + 8);
  v11 = sub_26BA03E30();
  result = (*(v6 + 8))(v9, v5);
  if ((v11 & 1) == 0)
  {
    sub_26BA00B78(a1);
    return sub_26BA01190(a1, v13);
  }

  return result;
}

uint64_t sub_26BA013AC(uint64_t a1)
{
  v2 = sub_26BA03F40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - v6;
  type metadata accessor for Synchronized();
  (*(v3 + 16))(v7, a1, v2);
  return sub_26B9FC3E8(v7);
}

uint64_t sub_26BA0148C(uint64_t a1)
{
  sub_26BA00B78(a1);
  sub_26BA007FC();
  sub_26BA02AD4(a1, v2);
}

__n128 sub_26BA01528(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_26BA015B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  a2[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_0, a1, v4);
}

uint64_t sub_26BA0161C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);

  sub_26B9FC310(a1);
}

uint64_t PublishedValue.publisher.getter()
{
  v38 = *v0;
  v1 = *(v38 + 80);
  v2 = sub_26BA03D50();
  WitnessTable = swift_getWitnessTable();
  v33 = sub_26BA03C30();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v33, v6);
  v32 = &v32 - v7;
  v8 = sub_26BA03D10();
  v9 = swift_getWitnessTable();
  v36 = v2;
  v37 = WitnessTable;
  v40 = v2;
  v41 = v8;
  v42 = WitnessTable;
  v43 = v9;
  v34 = v9;
  v10 = sub_26BA03C50();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v32 - v13;
  swift_getWitnessTable();
  v15 = sub_26BA03C30();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v32 - v20;
  v22 = v0[3];
  if (v22)
  {
    v23 = v0[3];

    v25 = sub_26BA01E0C(v24);
    v39 = v22;
    v40 = v25;
    sub_26BA03DA0();

    v26 = *(*(v38 + 88) + 8);
    sub_26BA03DE0();
    (*(v35 + 8))(v14, v10);
    swift_getWitnessTable();
    v27 = sub_26BA03D70();

    (*(v16 + 8))(v21, v15);
  }

  else
  {
    v40 = sub_26BA01E0C(v19);
    v28 = *(*(v38 + 88) + 8);
    v29 = v32;
    sub_26BA03DE0();

    v30 = v33;
    swift_getWitnessTable();
    v27 = sub_26BA03D70();
    (*(v4 + 8))(v29, v30);
  }

  return v27;
}

uint64_t PublishedValue.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);

  sub_26B9FC310(a1);
}

uint64_t sub_26BA01AB4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v6 = sub_26BA03F40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v31 - v11;
  v31 = *(v5 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v10, v14);
  v16 = &v31 - v15;
  v17 = *(v4 + 88);
  v18 = sub_26BA0294C(v5, v17);
  v19 = sub_26B9FC6F4();

  if (v19)
  {
    swift_beginAccess();
    v20 = v2[4];

    sub_26B9FC310(v16);

    v21 = *(v17 + 8);
    LOBYTE(v20) = sub_26BA03E30();
    v22 = *(v31 + 8);
    v22(v16, v5);
    if (v20)
    {
      v23 = a1;
    }

    else
    {
      v28 = v2[4];

      sub_26B9FC310(v12);

      (*(v31 + 56))(v12, 0, 1, v5);
      sub_26BA02A8C(v12);
      (*(v7 + 8))(v12, v6);
      (*(v31 + 16))(v16, a1, v5);
      v29 = v2[4];

      sub_26B9FC5E4(v16);

      v30 = (v22)(v16, v5);
      sub_26BA01E0C(v30);
      PublishedValue.wrappedValue.getter(v16);
      sub_26BA03D40();

      v22(a1, v5);
      v23 = v16;
    }

    return (v22)(v23, v5);
  }

  else
  {
    v24 = sub_26BA0294C(v5, v17);
    sub_26BA02AD4(a1, v25);

    v26 = *(v31 + 8);

    return v26(a1, v5);
  }
}

uint64_t sub_26BA01E0C(uint64_t a1)
{
  v2 = (*(*(*(*v1 + 80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, *(*v1 + 80));
  v4 = &v9 - v3;
  if (v1[2])
  {
    v5 = v1[2];
  }

  else
  {
    sub_26BA03D50();
    v6 = v1;
    PublishedValue.wrappedValue.getter(v4);
    v5 = sub_26BA03D60();
    v7 = v1[2];
    v6[2] = v5;
  }

  return v5;
}

uint64_t property wrapper backing initializer of PublishedValue.value(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BA02C00(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t property wrapper backing initializer of PublishedValue.previousValue(uint64_t a1)
{
  v2 = sub_26BA02CD8(a1);
  v3 = sub_26BA03F40();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t sub_26BA01FC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  return sub_26BA01AB4(v7);
}

void *PublishedValue.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_26BA02DB8(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

void *PublishedValue.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_26BA02DB8(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t PublishedValue.perform<A>(ifChanged:action:)(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v71[1] = a4;
  v76 = a3;
  v77 = a2;
  v6 = *v4;
  v7 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v8 = sub_26BA03F40();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v75 = *(TupleTypeMetadata2 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v10);
  v83 = v71 - v11;
  v12 = *(v6 + 80);
  v85 = sub_26BA03F40();
  v79 = *(v85 - 8);
  v13 = *(v79 + 64);
  v15 = MEMORY[0x28223BE20](v85, v14);
  v17 = v71 - v16;
  v88 = v8;
  v82 = *(v8 - 8);
  v18 = *(v82 + 64);
  v20 = MEMORY[0x28223BE20](v15, v19);
  v74 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v78 = v71 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = v71 - v27;
  v29 = *(v12 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x28223BE20](v26, v31);
  v34 = v71 - v33;
  v35 = *(v7 - 8);
  v36 = v35[8];
  v38 = MEMORY[0x28223BE20](v32, v37);
  v71[0] = v71 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v42 = v71 - v41;
  PublishedValue.wrappedValue.getter(v34);
  v73 = a1;
  swift_getAtKeyPath();
  v72 = *(v29 + 8);
  v72(v34, v12);
  v43 = v35[2];
  v80 = v42;
  v43(v28, v42, v7);
  v81 = v35;
  v44 = v35[7];
  v86 = v28;
  v84 = v7;
  v44(v28, 0, 1, v7);
  sub_26BA0161C(v17);
  if ((*(v29 + 48))(v17, 1, v12))
  {
    (*(v79 + 8))(v17, v85);
    v45 = 1;
    v46 = v78;
  }

  else
  {
    (*(v29 + 16))(v34, v17, v12);
    (*(v79 + 8))(v17, v85);
    v46 = v78;
    swift_getAtKeyPath();
    v72(v34, v12);
    v45 = 0;
  }

  v47 = v84;
  v44(v46, v45, 1, v84);
  v48 = v86;
  v49 = *(TupleTypeMetadata2 + 48);
  v51 = v82;
  v50 = v83;
  v52 = *(v82 + 16);
  v53 = v88;
  v52(v83, v86, v88);
  v85 = v49;
  v52(&v50[v49], v46, v53);
  v54 = v81;
  v55 = v46;
  v56 = v81[6];
  if (v56(v50, 1, v47) != 1)
  {
    v61 = v74;
    v52(v74, v50, v88);
    v59 = v47;
    if (v56(&v50[v85], 1, v47) != 1)
    {
      v65 = v71[0];
      (v54[4])(v71[0], &v50[v85], v47);
      LODWORD(TupleTypeMetadata2) = sub_26BA03E30();
      v66 = v61;
      v67 = v54[1];
      v68 = v65;
      v59 = v47;
      v67(v68, v47);
      v69 = *(v51 + 8);
      v70 = v88;
      v69(v55, v88);
      v69(v86, v70);
      v67(v66, v59);
      v69(v50, v70);
      v60 = v80;
      if (TupleTypeMetadata2)
      {
        return (v54[1])(v60, v59);
      }

      goto LABEL_10;
    }

    v62 = *(v51 + 8);
    v63 = v88;
    v62(v55, v88);
    v62(v86, v63);
    (v54[1])(v61, v47);
LABEL_9:
    (*(v75 + 8))(v50, TupleTypeMetadata2);
    v60 = v80;
LABEL_10:
    v77(v60);
    return (v54[1])(v60, v59);
  }

  v57 = *(v51 + 8);
  v58 = v88;
  v57(v46, v88);
  v57(v48, v58);
  v59 = v47;
  if (v56(&v50[v85], 1, v47) != 1)
  {
    goto LABEL_9;
  }

  v57(v50, v88);
  v60 = v80;
  return (v54[1])(v60, v59);
}

void *PublishedValue.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t PublishedValue.__deallocating_deinit()
{
  PublishedValue.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_26BA0294C(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v13 - v8;
  (*(a2 + 32))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v9, AssociatedTypeWitness);
  return v11;
}

uint64_t sub_26BA02A8C(uint64_t a1)
{
  v3 = *(v1 + 40);

  sub_26B9FC5E4(a1);
}

uint64_t sub_26BA02AD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(*v3 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v13 - v8;
  swift_beginAccess();
  v10 = v3[4];

  sub_26B9FC5E4(a1);

  sub_26BA01E0C(v11);
  PublishedValue.wrappedValue.getter(v9);
  sub_26BA03D40();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BA02C00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Synchronized();
  (*(v4 + 16))(v7, a1, a2);
  return sub_26B9FC3E8(v7);
}

uint64_t sub_26BA02CD8(uint64_t a1)
{
  v2 = sub_26BA03F40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - v6;
  type metadata accessor for Synchronized();
  (*(v3 + 16))(v7, a1, v2);
  return sub_26B9FC3E8(v7);
}

void *sub_26BA02DB8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_26BA03F40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  v1[2] = 0;
  (*(*(v4 - 8) + 56))(&v14 - v9, 1, 1, v4);
  v11 = *(v3 + 88);
  v12 = sub_26BA02CD8(v10);
  (*(v6 + 8))(v10, v5);
  v1[5] = v12;
  swift_beginAccess();
  v1[4] = sub_26BA02C00(a1, v4);
  swift_endAccess();
  v1[3] = 0;
  return v1;
}

__n128 sub_26BA02F74(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void static StateObserver.context.getter()
{
  sub_26BA03F60();

  swift_getMetatypeMetadata();
  v0 = sub_26BA04090();
  MEMORY[0x26D689580](v0);

  sub_26BA03FD0();
  __break(1u);
}

uint64_t StateObserver.configuration.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_26B9FE348(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t StateObserver.cancellableSubs.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t StateObserver.cancellableSubs.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t StateObserver.__allocating_init(configuration:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  StateObserver.init(configuration:)(a1);
  return v2;
}

uint64_t *StateObserver.init(configuration:)(uint64_t *a1)
{
  v3 = *v1;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  v4 = MEMORY[0x277D84F90];
  v1[6] = 0;
  v1[7] = v4;
  sub_26B9FA218(a1, v7);
  swift_beginAccess();
  sub_26B9FE348(v7, (v1 + 2));
  swift_endAccess();
  v5 = *(v3 + 96);
  v7[0] = *(v3 + 80);
  v7[1] = v5;
  type metadata accessor for StateObserver();
  swift_getWitnessTable();
  StateObserving.setup()();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t StateObserver.deinit()
{
  sub_26B9FE430(v0 + 16);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t StateObserver.__deallocating_deinit()
{
  sub_26B9FE430(v0 + 16);
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_26BA034B8(uint64_t a1)
{
  swift_beginAccess();
  sub_26B9FE348(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_26BA03558()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_26BA03590(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void (*MutableStateBinding.wrappedValue.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 344);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  StateValue.wrappedValue.getter(v9, v10, v9);
  return sub_26B9FBB30;
}

void *MutableStateBinding.__allocating_init(_:_:)(uint64_t a1)
{
  v3 = *(v1 + 352);
  v4 = (*(*(v1 + 376) + 8))();
  swift_allocObject();
  return sub_26B9FF3C8(a1, v4);
}

uint64_t MutableStateBinding.__deallocating_deinit()
{
  v0 = StateValue.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t Configurations.Composite.init(inner:outer:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_26B9FA624(a1, a3);

  return sub_26B9FA624(a2, a3 + 40);
}

uint64_t Configurations.Composite.stateDidChange(from:)(uint64_t a1)
{
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 8))(a1, v4, v5);
  v6 = (*(v3 + 8))();

  return v6;
}

void sub_26BA039F4()
{
  sub_26BA03F60();

  v1 = *v0;
  v2 = sub_26BA04090();
  MEMORY[0x26D689580](v2);

  sub_26BA03FD0();
  __break(1u);
}

uint64_t StateBinding.__deallocating_deinit()
{
  v0 = StateValue.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26BA03B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_26BA03BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}