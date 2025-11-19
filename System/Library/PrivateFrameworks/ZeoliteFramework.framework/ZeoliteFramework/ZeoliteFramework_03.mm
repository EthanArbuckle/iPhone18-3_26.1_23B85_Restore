uint64_t keypath_set_12Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

__n128 sub_2751FCD78(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2751FCDD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2751FCE40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_2751FCF90(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2751FD6CC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_2751FD71C(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2751FD8F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

ZeoliteFramework::MetricTreeType_optional __swiftcall MetricTreeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27520C088();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MetricTreeType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656572547076;
  }

  else
  {
    result = 0x656572546C6C6162;
  }

  *v0;
  return result;
}

uint64_t sub_2751FDA2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656572547076;
  }

  else
  {
    v4 = 0x656572546C6C6162;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x656572547076;
  }

  else
  {
    v6 = 0x656572546C6C6162;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_27520C218();
  }

  return v9 & 1;
}

unint64_t sub_2751FDAD4()
{
  result = qword_2809ADD08;
  if (!qword_2809ADD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD08);
  }

  return result;
}

uint64_t sub_2751FDB28()
{
  v1 = *v0;
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751FDBA8()
{
  *v0;
  sub_27520BBD8();
}

uint64_t sub_2751FDC14()
{
  v1 = *v0;
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751FDC90@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27520C088();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2751FDCF0(uint64_t *a1@<X8>)
{
  v2 = 0x656572546C6C6162;
  if (*v1)
  {
    v2 = 0x656572547076;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_2751FDD30()
{
  result = qword_2809ADD10;
  if (!qword_2809ADD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809ADD18, &qword_27520ED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD10);
  }

  return result;
}

unint64_t sub_2751FDEB4()
{
  result = qword_2809ADD20;
  if (!qword_2809ADD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD20);
  }

  return result;
}

uint64_t NearestNeighborsScorer.scoreBatches<A>(_:topK:skipFirst:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 264) = a3;
  *(v8 + 16) = a1;
  v10 = sub_27520BDC8();
  *(v8 + 72) = v10;
  v11 = *(v10 - 8);
  *(v8 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 96) = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  *(v8 + 104) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v16 = *(*(sub_27520BF08() - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v17 = *(a5 - 8);
  *(v8 + 128) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v19 = swift_getAssociatedTypeWitness();
  *(v8 + 144) = v19;
  v20 = *(v19 - 8);
  *(v8 + 152) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v22 = swift_getAssociatedTypeWitness();
  *(v8 + 168) = v22;
  v23 = *(v22 - 8);
  *(v8 + 176) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751FE20C, 0, 0);
}

uint64_t sub_2751FE20C()
{
  v1 = v0[20];
  v2 = v0[7];
  (*(v0[16] + 16))(v0[17], v0[2], v0[5]);
  sub_27520BE28();
  v0[28] = MEMORY[0x277D84F90];
  v3 = v0[18];
  v4 = v0[7];
  v5 = v0[5];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[29] = AssociatedConformanceWitness;
  v7 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_2751FE338;
  v9 = v0[26];
  v10 = v0[20];
  v11 = v0[18];
  v12 = v0[15];

  return MEMORY[0x282200310](v12, 0, 0, v9, v11, AssociatedConformanceWitness);
}

uint64_t sub_2751FE338()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 224);

    v5 = sub_2751FEB28;
  }

  else
  {
    v5 = sub_2751FE450;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2751FE450()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v26 = *(v0 + 224);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    v5 = *(v0 + 208);
    v4 = *(v0 + 216);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 184);
    v9 = *(v0 + 160);
    v10 = *(v0 + 136);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 88);

    v14 = *(v0 + 8);

    return v14(v26);
  }

  else
  {
    v27 = *(v0 + 48);
    (*(v3 + 32))(*(v0 + 112), v1, v2);
    v16 = *(v27 + 16);
    v25 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 248) = v18;
    *v18 = v0;
    v18[1] = sub_2751FE6A8;
    v19 = *(v0 + 112);
    v20 = *(v0 + 64);
    v21 = *(v0 + 48);
    v22 = *(v0 + 264);
    v23 = *(v0 + 24);
    v24 = *(v0 + 32);

    return v25(v19, v23, v22, v24, v21);
  }
}

uint64_t sub_2751FE6A8(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_2751FE7A8, 0, 0);
}

uint64_t sub_2751FE7A8()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(*(v0 + 224) + 16);
    v4 = v3 + v2;
    if (__OFADD__(v3, v2))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = *(v0 + 224);
      if (isUniquelyReferenced_nonNull_native && v4 <= *(v6 + 3) >> 1)
      {
        if (*(v1 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v3 <= v4)
        {
          v39 = v3 + v2;
        }

        else
        {
          v39 = v3;
        }

        v6 = sub_2751D0FA0(isUniquelyReferenced_nonNull_native, v39, 1, *(v0 + 224));
        if (*(v1 + 16))
        {
LABEL_6:
          if ((*(v6 + 3) >> 1) - *(v6 + 2) >= v2)
          {
            swift_arrayInitWithCopy();

            if (v2)
            {
              v13 = *(v6 + 2);
              v14 = __OFADD__(v13, v2);
              v15 = v13 + v2;
              if (v14)
              {
                __break(1u);
                return MEMORY[0x282200310](v7, v8, v9, v10, v11, v12);
              }

              *(v6 + 2) = v15;
            }

LABEL_21:
            (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
            *(v0 + 224) = v6;
            v40 = *(v0 + 144);
            v41 = *(v0 + 56);
            v42 = *(v0 + 40);
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            *(v0 + 232) = AssociatedConformanceWitness;
            v44 = *(MEMORY[0x277D856D8] + 4);
            v45 = swift_task_alloc();
            *(v0 + 240) = v45;
            *v45 = v0;
            v45[1] = sub_2751FE338;
            v10 = *(v0 + 208);
            v46 = *(v0 + 160);
            v11 = *(v0 + 144);
            v7 = *(v0 + 120);
            v8 = 0;
            v9 = 0;
            v12 = AssociatedConformanceWitness;

            return MEMORY[0x282200310](v7, v8, v9, v10, v11, v12);
          }

          goto LABEL_26;
        }
      }

      if (!v2)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (qword_2809AD190 != -1)
  {
LABEL_27:
    swift_once();
  }

  v16 = sub_27520BAB8();
  __swift_project_value_buffer(v16, qword_2809B38E8);
  v17 = sub_27520BA98();
  v18 = sub_27520BEF8();
  v19 = os_log_type_enabled(v17, v18);
  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 144);
  v24 = *(v0 + 104);
  v23 = *(v0 + 112);
  v25 = *(v0 + 96);
  if (v19)
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2751CF000, v17, v18, "Failed to score in batch.", v26, 2u);
    MEMORY[0x277C6DCC0](v26, -1, -1);
  }

  (*(v24 + 8))(v23, v25);
  (*(v21 + 8))(v20, v22);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v30 = *(v0 + 192);
  v29 = *(v0 + 200);
  v31 = *(v0 + 184);
  v32 = *(v0 + 160);
  v33 = *(v0 + 136);
  v35 = *(v0 + 112);
  v34 = *(v0 + 120);
  v36 = *(v0 + 88);

  v37 = *(v0 + 8);

  return v37(0);
}

uint64_t sub_2751FEB28()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[11];
  v6 = v0[9];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v7 = *(v4 + 32);
  v7(v2, v1, v3);
  if (swift_dynamicCast())
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v8 = sub_27520BAB8();
    __swift_project_value_buffer(v8, qword_2809B38E8);
    v9 = sub_27520BA98();
    v10 = sub_27520BED8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2751CF000, v9, v10, "Task canceled at scoring.", v11, 2u);
      MEMORY[0x277C6DCC0](v11, -1, -1);
    }

    v12 = v0[27];
    v13 = v0[21];
    v14 = v0[22];
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];

    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v12, v13);
  }

  else
  {
    v18 = *(v0[22] + 16);
    v18(v0[25], v0[27], v0[21]);
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v19 = v0[24];
    v20 = v0[25];
    v21 = v0[21];
    v22 = sub_27520BAB8();
    __swift_project_value_buffer(v22, qword_2809B38E8);
    v18(v19, v20, v21);
    v23 = sub_27520BA98();
    v24 = sub_27520BEF8();
    if (os_log_type_enabled(v23, v24))
    {
      v59 = v24;
      v56 = v7;
      v57 = v0[29];
      v26 = v0[23];
      v25 = v0[24];
      v27 = v0[21];
      v28 = v0[18];
      v29 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v29 = 138412290;
      v18(v26, v25, v27);
      swift_getAssociatedConformanceWitness();
      v30 = sub_27520C1F8();
      v31 = v0[23];
      if (v30)
      {
        (*(v0[22] + 8))(v0[23], v0[21]);
      }

      else
      {
        v36 = v0[21];
        swift_allocError();
        v56(v37, v31, v36);
      }

      v38 = v0[24];
      v40 = v0[21];
      v39 = v0[22];
      v41 = _swift_stdlib_bridgeErrorToNSError();
      v35 = *(v39 + 8);
      v35(v38, v40);
      *(v29 + 4) = v41;
      *v58 = v41;
      _os_log_impl(&dword_2751CF000, v23, v59, "Error: %@", v29, 0xCu);
      sub_2751E3C18(v58);
      MEMORY[0x277C6DCC0](v58, -1, -1);
      MEMORY[0x277C6DCC0](v29, -1, -1);
    }

    else
    {
      v32 = v0[24];
      v33 = v0[21];
      v34 = v0[22];

      v35 = *(v34 + 8);
      v35(v32, v33);
    }

    v42 = v0[27];
    v43 = v0[21];
    v35(v0[25], v43);
    v35(v42, v43);
  }

  v45 = v0[26];
  v44 = v0[27];
  v47 = v0[24];
  v46 = v0[25];
  v48 = v0[23];
  v49 = v0[20];
  v50 = v0[17];
  v52 = v0[14];
  v51 = v0[15];
  v53 = v0[11];

  v54 = v0[1];

  return v54(0);
}

ZeoliteFramework::ScorerName_optional __swiftcall ScorerName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27520C088();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ScorerName.rawValue.getter()
{
  if (*v0)
  {
    return 0x78697274616DLL;
  }

  else
  {
    return 0x726F736E6574;
  }
}

uint64_t sub_2751FF07C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x78697274616DLL;
  }

  else
  {
    v2 = 0x726F736E6574;
  }

  if (*a2)
  {
    v3 = 0x78697274616DLL;
  }

  else
  {
    v3 = 0x726F736E6574;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_27520C218();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2751FF0FC()
{
  v1 = *v0;
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751FF16C()
{
  *v0;
  sub_27520BBD8();
}

uint64_t sub_2751FF1C0()
{
  v1 = *v0;
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751FF22C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27520C088();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2751FF28C(uint64_t *a1@<X8>)
{
  v2 = 0x726F736E6574;
  if (*v1)
  {
    v2 = 0x78697274616DLL;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t calculatePercentilesOfMeanTopK(_:percentiles:)(uint64_t a1, char *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = sub_2751FF748(0, 100, 10);
  }

  v4 = *(a1 + 16);
  v5._rawValue = MEMORY[0x277D84F90];
  if (v4)
  {
    v41 = MEMORY[0x277D84F90];

    sub_2751E1344(0, v4, 0);
    v6 = 0;
    v7 = a1 + 32;
    rawValue = v41;
    do
    {
      v9 = (v7 + 16 * v6);
      v11._rawValue = *v9;
      v10 = v9[1];

      v12 = calculatePercentiles(_:percentiles:)(v11, &unk_2883F8A40);
      v13 = 0.0;
      v14 = 0;
      if (v12)
      {
        if (!*(v12 + 16))
        {
          __break(1u);
        }

        v14 = *(v12 + 32);
      }

      v15 = *(v11._rawValue + 2);
      if (v15)
      {
        v16 = *(v11._rawValue + 8);
        v17 = v15 - 1;
        if (v15 == 1)
        {
          v13 = *(v11._rawValue + 8);
        }

        else
        {
          v18 = (v11._rawValue + 36);
          v19 = (v11._rawValue + 36);
          v20 = v15 - 1;
          v13 = *(v11._rawValue + 8);
          do
          {
            v21 = *v19++;
            v22 = v21;
            if (v21 < v13)
            {
              v13 = v22;
            }

            --v20;
          }

          while (v20);
          do
          {
            v23 = *v18++;
            v24 = v23;
            if (v16 < v23)
            {
              v16 = v24;
            }

            --v17;
          }

          while (v17);
        }
      }

      else
      {
        v16 = 0.0;
      }

      LODWORD(__C) = 2143289344;

      vDSP_meanv(v11._rawValue + 8, 1, &__C, v15);
      v25 = __C;

      __C = v11._rawValue;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
      sub_2751FFC00(&qword_2809AD370, &qword_2809AD1F0, &qword_27520DE80);
      sub_27520B6A8();
      v27 = v26;

      swift_bridgeObjectRelease_n();
      v41 = rawValue;
      v29 = rawValue[2];
      v28 = rawValue[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_2751E1344((v28 > 1), v29 + 1, 1);
        rawValue = v41;
      }

      ++v6;
      rawValue[2] = v30;
      v31 = rawValue + 5 * v29;
      v31[8] = v13;
      v31[9] = v16;
      *(v31 + 10) = v25;
      *(v31 + 11) = v27;
      *(v31 + 12) = v14;
    }

    while (v6 != v4);
  }

  else
  {
    v30 = *(MEMORY[0x277D84F90] + 16);

    rawValue = v5._rawValue;
    if (!v30)
    {
      goto LABEL_29;
    }
  }

  v41 = v5._rawValue;
  sub_2751E09A4(0, v30, 0);
  v5._rawValue = v41;
  v32 = v41[2];
  v33 = 40;
  do
  {
    v34 = *(rawValue + v33);
    v41 = v5._rawValue;
    v35 = *(v5._rawValue + 3);
    if (v32 >= v35 >> 1)
    {
      sub_2751E09A4((v35 > 1), v32 + 1, 1);
      v5._rawValue = v41;
    }

    *(v5._rawValue + 2) = v32 + 1;
    *(v5._rawValue + v32 + 8) = v34;
    v33 += 20;
    ++v32;
    --v30;
  }

  while (v30);
LABEL_29:
  v36 = calculatePercentiles(_:percentiles:)(v5, v3);

  if (v36)
  {

    v37 = sub_2751FF990(v3, v36);

    v38 = *MEMORY[0x277D85DE8];
    return v37;
  }

  else
  {
    result = sub_27520C028();
    __break(1u);
  }

  return result;
}

char *sub_2751FF748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = sub_2751FFDEC(a1, a2, a3);
  v24 = MEMORY[0x277D84F90];
  result = sub_2751E09A4(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_44;
  }

  result = v24;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!v6)
  {
    goto LABEL_22;
  }

  v11 = v5;
  while (1)
  {
    v12 = v11 <= a2;
    if (a3 > 0)
    {
      v12 = v11 >= a2;
    }

    if (!v12)
    {
      v10 = !__OFADD__(v11, a3);
      if (__OFADD__(v11, a3))
      {
        v9 = 0x8000000000000000;
      }

      else
      {
        v9 = 0;
      }

      if (__OFADD__(v11, a3))
      {
        v5 = ((v11 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v5 = v11 + a3;
      }

      goto LABEL_19;
    }

    if (v8 & 1 | (v11 != a2))
    {
      break;
    }

    if (!v10 && v9 == 0x8000000000000000)
    {
      goto LABEL_43;
    }

    v8 = 1;
    v5 = a2;
LABEL_19:
    v25 = result;
    v14 = *(result + 2);
    v13 = *(result + 3);
    if (v14 >= v13 >> 1)
    {
      v22 = v9;
      v20 = v10;
      sub_2751E09A4((v13 > 1), v14 + 1, 1);
      v10 = v20;
      v9 = v22;
      result = v25;
    }

    *(result + 2) = v14 + 1;
    *&result[4 * v14 + 32] = v11;
    v11 = v5;
    if (!--v6)
    {
      while (1)
      {
LABEL_22:
        v15 = v5 <= a2;
        if (a3 > 0)
        {
          v15 = v5 >= a2;
        }

        if (v15)
        {
          if ((v5 != a2) | v8 & 1 || !v10 && v9 == 0x8000000000000000)
          {
            return result;
          }

          v8 = 1;
          v16 = v5;
        }

        else
        {
          v17 = __OFADD__(v5, a3);
          if (v17)
          {
            v16 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v5 + a3;
          }

          if (v17)
          {
            v9 = 0x8000000000000000;
          }

          else
          {
            v9 = 0;
          }

          v10 = !v17;
        }

        v26 = result;
        v19 = *(result + 2);
        v18 = *(result + 3);
        if (v19 >= v18 >> 1)
        {
          v23 = v9;
          v21 = v10;
          sub_2751E09A4((v18 > 1), v19 + 1, 1);
          v10 = v21;
          v9 = v23;
          result = v26;
        }

        *(result + 2) = v19 + 1;
        *&result[4 * v19 + 32] = v5;
        v5 = v16;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_2751FF990(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v29 = MEMORY[0x277D84F90];
  sub_2751E1324(0, v6, 0);
  result = v29;
  v28 = v4;
  v26 = a1;
  v27 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v30 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v25 = v12;
        sub_2751E1324((v15 > 1), v16 + 1, 1);
        v12 = v25;
        result = v30;
      }

      *(result + 16) = v16 + 1;
      v17 = result + 8 * v16;
      --v11;
      *(v17 + 32) = v13;
      *(v17 + 36) = v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v28 > v12)
  {
    while (v6 < v28)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v19 = *(v26 + 32 + 4 * v6);
        v20 = *(v27 + 32 + 4 * v6);
        v31 = result;
        v22 = *(result + 16);
        v21 = *(result + 24);
        if (v22 >= v21 >> 1)
        {
          v24 = v12;
          sub_2751E1324((v21 > 1), v22 + 1, 1);
          v12 = v24;
          result = v31;
        }

        *(result + 16) = v22 + 1;
        v23 = result + 8 * v22;
        *(v23 + 32) = v19;
        *(v23 + 36) = v20;
        ++v6;
        if (v18 != v28)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

unint64_t sub_2751FFB68()
{
  result = qword_2809ADD28;
  if (!qword_2809ADD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD28);
  }

  return result;
}

uint64_t sub_2751FFC00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t dispatch thunk of NearestNeighborsScorer.score(_:topK:skipFirst:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2751E38EC;

  return v15(a1, a2, a3, a4, a5);
}

unint64_t sub_2751FFD98()
{
  result = qword_2809ADD40;
  if (!qword_2809ADD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD40);
  }

  return result;
}

uint64_t sub_2751FFDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v9 = a1 <= a2;
    if (a3 > 0)
    {
      v9 = a1 >= a2;
    }

    if (v9)
    {
      if ((a1 != a2) | v5 & 1 || !(v7 & 1 | (v6 != 0x8000000000000000)))
      {
        return result;
      }

      v5 = 1;
    }

    else
    {
      v8 = __OFADD__(a1, a3);
      a1 += a3;
      if (v8)
      {
        a1 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = !v8;
    }

    v8 = __OFADD__(result++, 1);
  }

  while (!v8);
  __break(1u);
  return result;
}

uint64_t sub_2751FFE94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_275209608(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_27520C1D8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (*(v12 + 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADD68, &qword_27520F0F8);
      v8 = sub_27520BCF8();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_2751E7ABC(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

float static DistanceHelper.distanceL2(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_distancesq((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  v3 = *MEMORY[0x277D85DE8];
  return sqrtf(__C);
}

float sub_275200074(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_distancesq((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  result = __C;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

float static DistanceHelper.distanceL2Squared(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_distancesq((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  result = __C;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

float sub_275200174(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_dotpr((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  v5 = __C;
  __C = NAN;
  vDSP_dotpr((a1 + 32), 1, (a1 + 32), 1, &__C, v2);
  v6 = __C;
  __C = NAN;
  vDSP_dotpr((a2 + 32), 1, (a2 + 32), 1, &__C, v2);
  v7 = *MEMORY[0x277D85DE8];
  return 1.0 - (v5 / sqrtf(v6 * __C));
}

float static DistanceHelper.distanceCosine(_:_:)(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_dotpr((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  v5 = __C;
  __C = NAN;
  vDSP_dotpr((a1 + 32), 1, (a1 + 32), 1, &__C, v2);
  v6 = __C;
  __C = NAN;
  vDSP_dotpr((a2 + 32), 1, (a2 + 32), 1, &__C, v2);
  v7 = *MEMORY[0x277D85DE8];
  return 1.0 - (v5 / sqrtf(v6 * __C));
}

ZeoliteFramework::DistanceMetric_optional __swiftcall DistanceMetric.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27520C088();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DistanceMetric.rawValue.getter()
{
  v1 = 12620;
  v2 = 0x657261757153324CLL;
  if (*v0 != 2)
  {
    v2 = 0x6944656E69736F43;
  }

  if (*v0)
  {
    v1 = 12876;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_27520045C()
{
  v1 = *v0;
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_275200518()
{
  *v0;
  *v0;
  *v0;
  sub_27520BBD8();
}

uint64_t sub_2752005C0()
{
  v1 = *v0;
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

void sub_275200684(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 12620;
  v4 = 0xE900000000000064;
  v5 = 0x657261757153324CLL;
  if (*v1 != 2)
  {
    v5 = 0x6944656E69736F43;
    v4 = 0xEE0065636E617473;
  }

  if (*v1)
  {
    v3 = 12876;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2752007D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_275200830()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t DistanceHelper.__allocating_init(points:metric:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  DistanceHelper.init(points:metric:)(a1, a2);
  return v4;
}

uint64_t DistanceHelper.init(points:metric:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D84F90];
  *(v2 + 48) = MEMORY[0x277D84F90];
  *(v2 + 56) = v4;
  *(v2 + 16) = v3;
  *(v2 + 40) = a1;
  *(v2 + 24) = off_2883FA4A0[v3];
  *(v2 + 32) = 0;
  v5 = *(a1 + 16);
  if (v5)
  {

    _s16ZeoliteFramework14DistanceHelperC17buildDistancesLIL6pointsSaySaySfGGAG_tFZ_0(v6);
    v8 = v7;

    v9 = *(v2 + 56);
    *(v2 + 56) = v8;

    v10 = sub_27520BCF8();
    *(v10 + 16) = v5;
    memset_pattern16((v10 + 32), &unk_27520F100, 4 * v5);
    swift_beginAccess();
    v11 = *(v2 + 48);
    *(v2 + 48) = v10;
  }

  return v2;
}

char *sub_275200998()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];

    sub_2751E1364(0, v2, 0);
    v4 = 0;
    v3 = v11;
    v5 = *(v1 + 16);
    while (v5 != v4)
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      v6 = *(v1 + 4 * v4 + 32);
      v11 = v3;
      v8 = *(v3 + 2);
      v7 = *(v3 + 3);
      if (v8 >= v7 >> 1)
      {
        sub_2751E1364((v7 > 1), v8 + 1, 1);
        v3 = v11;
      }

      v9 = &v3[16 * v8];
      *(v9 + 4) = v4;
      *(v3 + 2) = v8 + 1;
      *(v9 + 10) = v6;
      if (v2 == ++v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    MEMORY[0x277C6DB10](v2);

    __break(1u);
  }

  else
  {
LABEL_9:
    v11 = v3;

    sub_2751FFE94(&v11);

    return v11;
  }

  return result;
}

uint64_t sub_275200AF0()
{
  v1 = _s16ZeoliteFramework14DistanceHelperC12computeNorms6pointsSaySfGSayAFG_tFZ_0(*(v0 + 40));
  swift_beginAccess();
  v2 = *(v0 + 48);
  *(v0 + 48) = v1;
}

void sub_275200B44()
{
  v17 = v0[5];
  v1 = *(v17 + 16);
  if (v1 != 1)
  {
    if (v1)
    {
      v2 = v0;
      v3 = v0[5];
      v4 = v17 + 32;
      for (i = 1; i != v1; ++i)
      {
        if (i >= *(v17 + 16))
        {
          goto LABEL_20;
        }

        v6 = 0;
        v7 = i + 1;
        do
        {
          v9 = v2[3];
          v8 = v2[4];
          v10 = *(v4 + 8 * i);
          v11 = *(v4 + 8 * v6);

          v12 = v9(v10, v11);

          v13 = v2[7];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v2[7] = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = sub_2751E3B40(v13);
            v2[7] = v13;
          }

          if (i >= v13[2])
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          v15 = v13[i + 4];
          v16 = swift_isUniquelyReferenced_nonNull_native();
          v13[i + 4] = v15;
          if ((v16 & 1) == 0)
          {
            v15 = sub_2751E3B04(v15);
            v13[i + 4] = v15;
          }

          if (v6 >= *(v15 + 16))
          {
            goto LABEL_18;
          }

          *(v15 + 4 * v6 + 32) = v12;
          v2[7] = v13;
          ++v6;
        }

        while (i != v6);
        if (v7 == v1)
        {
          return;
        }
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }
}

int64_t sub_275200CE0(int64_t result, int64_t a2)
{
  v3 = *(v2 + 56);
  v4 = *(v3 + 16);
  if (v4 > result && v4 > a2)
  {
    v6 = result == a2;
    if (result >= a2)
    {
      goto LABEL_12;
    }

    if (a2 < 0)
    {
      __break(1u);
    }

    else if ((result & 0x8000000000000000) == 0)
    {
      v3 = *(v3 + 8 * a2 + 32);
      v7 = *(v3 + 16);
      v6 = v7 == result;
      if (v7 > result)
      {
LABEL_16:
        v8 = *(v3 + 4 * result + 32);
        return result;
      }

      __break(1u);
LABEL_12:
      if (v6)
      {
        return result;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          v3 = *(v3 + 8 * result + 32);
          result = a2;
          if (*(v3 + 16) > a2)
          {
            goto LABEL_16;
          }

LABEL_22:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_275200D70(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  v8 = *(v3 + 48);
  v9 = *(v8 + 16);
  if (v9 > a1 && v9 > a2)
  {
    if (a3)
    {
      if ((a1 & 0x8000000000000000) == 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          v11 = vabds_f32(*(v8 + 32 + 4 * a1), *(v8 + 32 + 4 * a2));
          return result;
        }

        goto LABEL_16;
      }

      __break(1u);
    }

    else if ((a1 & 0x8000000000000000) == 0)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        v12 = *(v8 + 32 + 4 * a1) + *(v8 + 32 + 4 * a2);
        return result;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void *DistanceHelper.deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t DistanceHelper.__deallocating_deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_275200EAC(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  if (*(*a3 + 16) == v4)
  {
    if (*a1)
    {
      vDSP_vabs((v3 + 32), 1, *a1, 1, v4);
      *a2 = *(v3 + 16);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

float _s16ZeoliteFramework14DistanceHelperC10distanceL1ySfSaySfG_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  __C[10] = *MEMORY[0x277D85DE8];
  v9 = a2;
  __C[0] = a1;
  v2 = *(a1 + 16);
  __C[7] = __C;
  __C[8] = &v9;
  __C[0] = sub_275209434(v2, sub_2752014F4);
  v3 = *(__C[0] + 16);
  __C[3] = __C;
  v4 = sub_275209434(v3, sub_275201544);

  v5 = *(v4 + 16);
  LODWORD(__C[0]) = 2143289344;
  vDSP_sve((v4 + 32), 1, __C, v5);
  v6 = *__C;

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void _s16ZeoliteFramework14DistanceHelperC17buildDistancesLIL6pointsSaySaySfGGAG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_8:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
  v2 = sub_27520BCF8();
  *(v2 + 16) = v1;
  memset_pattern16((v2 + 32), &unk_27A645D20, 8 * v1);
  if (v1 != 1)
  {
    v3 = (v2 + 40);
    v4 = 1;
    for (i = 4; ; i += 4)
    {
      v6 = sub_27520BCF8();
      *(v6 + 16) = v4;
      memset_pattern16((v6 + 32), &unk_27520F100, i);
      if (v4 >= *(v2 + 16))
      {
        break;
      }

      ++v4;
      v7 = *v3;
      *v3++ = v6;

      if (v1 == v4)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t _s16ZeoliteFramework14DistanceHelperC12computeNorms6pointsSaySfGSayAFG_tFZ_0(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_2751D198C(0, v1, 0, MEMORY[0x277D84F90]);
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v6 = *(*v4 + 16);
      __C = NAN;

      vDSP_dotpr((v5 + 32), 1, (v5 + 32), 1, &__C, v6);
      v7 = __C;

      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_2751D198C(v8 > 1, v9 + 1, 1, v3);
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 4 * v9 + 32) = sqrtf(v7);
      ++v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

unint64_t sub_275201238()
{
  result = qword_2809ADD48;
  if (!qword_2809ADD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD48);
  }

  return result;
}

unint64_t sub_275201290()
{
  result = qword_2809ADD50;
  if (!qword_2809ADD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809ADD58, &qword_27520EFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD50);
  }

  return result;
}

uint64_t sub_2752012F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

unint64_t sub_2752014A0()
{
  result = qword_2809ADD60;
  if (!qword_2809ADD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD60);
  }

  return result;
}

Swift::Bool __swiftcall pairwiseCosineSimilarity(matrix1:matrix1RowCount:matrix1ColumnCount:matrix2:matrix2RowCount:matrix2ColumnCount:resultMatrix:)(Swift::OpaquePointer matrix1, Swift::Int matrix1RowCount, Swift::Int matrix1ColumnCount, Swift::OpaquePointer matrix2, Swift::Int matrix2RowCount, Swift::Int matrix2ColumnCount, Swift::OpaquePointer *resultMatrix)
{
  if (matrix1ColumnCount != matrix2ColumnCount)
  {
    if (qword_2809AD190 == -1)
    {
LABEL_11:
      v19 = sub_27520BAB8();
      __swift_project_value_buffer(v19, qword_2809B38E8);
      v20 = sub_27520BA98();
      v21 = sub_27520BEF8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2751CF000, v20, v21, "Matrix 1 and Matrix 2 must have the same column count.", v22, 2u);
        MEMORY[0x277C6DCC0](v22, -1, -1);
      }

      goto LABEL_14;
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  v13 = normalizeMatrix(_:rowCount:columnCount:)(matrix1._rawValue, matrix1RowCount, matrix1ColumnCount);
  v14 = normalizeMatrix(_:rowCount:columnCount:)(matrix2._rawValue, matrix2RowCount, matrix1ColumnCount);
  v15 = matrix1ColumnCount * matrix2RowCount;
  if ((matrix1ColumnCount * matrix2RowCount) >> 64 != (matrix1ColumnCount * matrix2RowCount) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v16 = v14;
  if (v15)
  {
    v17 = sub_27520BCF8();
    *(v17 + 16) = v15;
    memset_pattern16((v17 + 32), &unk_27520DD80, 4 * v15);
    if (((matrix1ColumnCount | matrix2RowCount) & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v17 = MEMORY[0x277D84F90];
  if ((matrix1ColumnCount | matrix2RowCount) < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  vDSP_mtrans((v16 + 32), 1, (v17 + 32), 1, matrix1ColumnCount, matrix2RowCount);

  if ((matrix1ColumnCount | matrix1RowCount) < 0)
  {
LABEL_20:
    __break(1u);
    return v14;
  }

  rawValue = resultMatrix->_rawValue;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    rawValue = sub_2751D198C(0, *(rawValue + 2), 0, rawValue);
  }

  resultMatrix->_rawValue = rawValue;
  vDSP_mmul((v13 + 32), 1, (v17 + 32), 1, rawValue + 8, 1, matrix1RowCount, matrix2RowCount, matrix1ColumnCount);

LABEL_14:
  LOBYTE(v14) = matrix1ColumnCount == matrix2ColumnCount;
  return v14;
}

Swift::Void __swiftcall multiplyMatrices(matrix1:matrix1RowCount:matrix1ColumnCount:matrix2:matrix2RowCount:matrix2ColumnCount:resultMatrix:)(Swift::OpaquePointer matrix1, Swift::Int matrix1RowCount, Swift::Int matrix1ColumnCount, Swift::OpaquePointer matrix2, Swift::Int matrix2RowCount, Swift::Int matrix2ColumnCount, Swift::OpaquePointer *resultMatrix)
{
  if ((matrix1ColumnCount | matrix1RowCount | matrix2ColumnCount) < 0)
  {
    __break(1u);
  }

  else
  {
    rawValue = resultMatrix->_rawValue;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      rawValue = sub_2751D198C(0, *(rawValue + 2), 0, rawValue);
    }

    resultMatrix->_rawValue = rawValue;
    vDSP_mmul(matrix1._rawValue + 8, 1, matrix2._rawValue + 8, 1, rawValue + 8, 1, matrix1RowCount, matrix2ColumnCount, matrix1ColumnCount);
  }
}

Swift::Void __swiftcall transposeMatrix(matrix:rowCount:columnCount:transposed:)(Swift::OpaquePointer matrix, Swift::Int rowCount, Swift::Int columnCount, Swift::OpaquePointer *transposed)
{
  if ((columnCount | rowCount) < 0)
  {
    __break(1u);
  }

  else
  {
    rawValue = transposed->_rawValue;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      rawValue = sub_2751D198C(0, *(rawValue + 2), 0, rawValue);
    }

    transposed->_rawValue = rawValue;

    vDSP_mtrans(matrix._rawValue + 8, 1, rawValue + 8, 1, columnCount, rowCount);
  }
}

uint64_t sub_275201964()
{
  result = sub_27520B698();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    return sub_27520B678();
  }

  return result;
}

void sub_275201A28(vDSP_Length **a1, const float *a2, uint64_t a3, vDSP_Length a4)
{
  if (a2)
  {
    v4 = *a1;
    if (*a1)
    {
      v7 = sub_27520B6B8();
      vDSP_vsorti(a2, v4, 0, a4, v7);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t normalizeMatrix(_:rowCount:columnCount:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = MEMORY[0x277D84F90];
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  if (a3)
  {
    v6 = sub_27520BCF8();
    *(v6 + 16) = a3;
    memset_pattern16((v6 + 32), &unk_27520F110, 4 * a3);
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = MEMORY[0x277D84F90];
  if (a2 < 0)
  {
    goto LABEL_23;
  }

LABEL_4:
  if (!a2)
  {
LABEL_24:

    result = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v7 = 0;
  v8 = *(a1 + 16);
  do
  {
    v10 = v7 * a3;
    if ((v7 * a3) >> 64 != (v7 * a3) >> 63)
    {
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
    }

    if (v8 < v10)
    {
      goto LABEL_27;
    }

    if (v10 < 0)
    {
      goto LABEL_28;
    }

    if (!a3 || (v11 = v8, v8 - v10 >= a3))
    {
      v11 = v10 + a3;
      if (__OFADD__(v10, a3))
      {
        goto LABEL_32;
      }
    }

    if (v11 < v10)
    {
      goto LABEL_29;
    }

    if (v8 < v11)
    {
      goto LABEL_30;
    }

    v12 = v11 - v10;
    if (v11 - v10 < 0)
    {
      goto LABEL_31;
    }

    __C = NAN;
    v13 = (a1 + 32 + 4 * v10);

    vDSP_svesq(v13, 1, &__C, v12);
    v14 = sqrtf(__C);
    if (v14 > 0.0)
    {
      if (v12 != *(v6 + 16))
      {
        goto LABEL_33;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2751E3B04(v6);
      }

      v19 = v14;
      vDSP_vsdiv(v13, 1, &v19, (v6 + 32), 1, v12);

      sub_2751DBD78(v9);
    }

    ++v7;
  }

  while (a2 != v7);

  result = v18;
LABEL_25:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_275201CBC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  return sub_275201964();
}

uint64_t ExtractedMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_27520B878();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExtractedMessage.sender.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedMessage() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ExtractedMessage()
{
  result = qword_2809ADE20;
  if (!qword_2809ADE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExtractedMessage.toList.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage() + 24));
}

uint64_t ExtractedMessage.ccList.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage() + 28));
}

uint64_t ExtractedMessage.bccList.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage() + 32));
}

uint64_t ExtractedMessage.subject.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedMessage() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtractedMessage.body.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedMessage() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtractedMessage.autoSubmitted.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedMessage() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtractedMessage.messageID.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedMessage() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtractedMessage.inReplyTo.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedMessage() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *ExtractedMessage.init(date:sender:toList:subject:body:isToMe:isRead:isDeleted:isReplied:isForwarded:isJunk:conversationId:autoSubmitted:messageID:inReplyTo:ccList:bccList:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v30 = sub_27520B878();
  (*(*(v30 - 8) + 32))(a9, a1, v30);
  result = type metadata accessor for ExtractedMessage();
  v32 = (a9 + result[5]);
  *v32 = a2;
  v32[1] = a3;
  *(a9 + result[6]) = a4;
  *(a9 + result[7]) = a24;
  *(a9 + result[8]) = a25;
  v33 = (a9 + result[9]);
  *v33 = a5;
  v33[1] = a6;
  v34 = (a9 + result[10]);
  *v34 = a7;
  v34[1] = a8;
  if (a17)
  {
    v35 = 0;
  }

  else
  {
    v35 = a16;
  }

  *(a9 + result[11]) = v35;
  v36 = (a9 + result[12]);
  *v36 = a18;
  v36[1] = a19;
  v37 = (a9 + result[13]);
  *v37 = a20;
  v37[1] = a21;
  v38 = (a9 + result[14]);
  *v38 = a22;
  v38[1] = a23;
  *(a9 + result[15]) = a10;
  *(a9 + result[16]) = a11;
  *(a9 + result[17]) = a12;
  *(a9 + result[18]) = a13;
  *(a9 + result[19]) = a14;
  *(a9 + result[20]) = a15;
  return result;
}

uint64_t sub_2752022C4(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x7265646E6573;
      break;
    case 2:
      result = 0x7473694C6F74;
      break;
    case 3:
      result = 0x7473694C6363;
      break;
    case 4:
      result = 0x7473694C636362;
      break;
    case 5:
      result = 0x7463656A627573;
      break;
    case 6:
      result = 2036625250;
      break;
    case 7:
      result = 0x61737265766E6F63;
      break;
    case 8:
      result = 0x6D6275536F747561;
      break;
    case 9:
      result = 0x496567617373656DLL;
      break;
    case 10:
      result = 0x54796C7065526E69;
      break;
    case 11:
      result = 0x654D6F547369;
      break;
    case 12:
      result = 0x646165527369;
      break;
    case 13:
      result = 0x6574656C65447369;
      break;
    case 14:
      result = 0x65696C7065527369;
      break;
    case 15:
      result = 0x726177726F467369;
      break;
    case 16:
      result = 0x6B6E754A7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752024D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752055B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27520250C(uint64_t a1)
{
  v2 = sub_275202A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275202548(uint64_t a1)
{
  v2 = sub_275202A68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADD70, &qword_27520F120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275202A68();
  sub_27520C2B8();
  LOBYTE(v40) = 0;
  sub_27520B878();
  sub_275203D80(&qword_2809ADD80, MEMORY[0x277CC9578]);
  sub_27520C1A8();
  if (!v2)
  {
    v11 = type metadata accessor for ExtractedMessage();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v40) = 1;
    sub_27520C168();
    v40 = *(v3 + v11[6]);
    v39 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADD88, &qword_27520F128);
    sub_27520349C(&qword_2809ADD90);
    sub_27520C1A8();
    v40 = *(v3 + v11[7]);
    v39 = 3;
    sub_27520C1A8();
    v40 = *(v3 + v11[8]);
    v39 = 4;
    sub_27520C1A8();
    v15 = (v3 + v11[9]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v40) = 5;
    sub_27520C168();
    v18 = (v3 + v11[10]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v40) = 6;
    sub_27520C168();
    v21 = *(v3 + v11[11]);
    LOBYTE(v40) = 7;
    sub_27520C1B8();
    v22 = (v3 + v11[12]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v40) = 8;
    sub_27520C138();
    v25 = (v3 + v11[13]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v40) = 9;
    sub_27520C138();
    v28 = (v3 + v11[14]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v40) = 10;
    sub_27520C138();
    v31 = *(v3 + v11[15]);
    LOBYTE(v40) = 11;
    sub_27520C178();
    v32 = *(v3 + v11[16]);
    LOBYTE(v40) = 12;
    sub_27520C178();
    v33 = *(v3 + v11[17]);
    LOBYTE(v40) = 13;
    sub_27520C178();
    v34 = *(v3 + v11[18]);
    LOBYTE(v40) = 14;
    sub_27520C178();
    v35 = *(v3 + v11[19]);
    LOBYTE(v40) = 15;
    sub_27520C178();
    v36 = *(v3 + v11[20]);
    LOBYTE(v40) = 16;
    sub_27520C178();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_275202A68()
{
  result = qword_2809ADD78;
  if (!qword_2809ADD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD78);
  }

  return result;
}

uint64_t ExtractedMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = sub_27520B878();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADD98, &qword_27520F130);
  v47 = *(v49 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v9 = v40 - v8;
  v10 = type metadata accessor for ExtractedMessage();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275202A68();
  v48 = v9;
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v13;
  v43 = a1;
  v41 = v10;
  LOBYTE(v51) = 0;
  sub_275203D80(&qword_2809ADDA0, MEMORY[0x277CC9578]);
  v15 = v46;
  sub_27520C108();
  v16 = *(v45 + 32);
  v17 = v42;
  v46 = v4;
  v16(v42, v15);
  LOBYTE(v51) = 1;
  v18 = sub_27520C0C8();
  v19 = v41;
  v20 = &v17[v41[5]];
  *v20 = v18;
  v20[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADD88, &qword_27520F128);
  v50 = 2;
  sub_27520349C(&qword_2809ADDA8);
  v40[1] = 0;
  sub_27520C108();
  *&v17[v19[6]] = v51;
  v50 = 3;
  sub_27520C108();
  *&v17[v19[7]] = v51;
  v50 = 4;
  sub_27520C108();
  *&v17[v19[8]] = v51;
  LOBYTE(v51) = 5;
  v22 = sub_27520C0C8();
  v23 = &v17[v19[9]];
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v51) = 6;
  v25 = sub_27520C0C8();
  v26 = &v17[v19[10]];
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v51) = 7;
  *&v42[v19[11]] = sub_27520C118();
  LOBYTE(v51) = 8;
  v28 = sub_27520C098();
  v29 = &v42[v41[12]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v51) = 9;
  v31 = sub_27520C098();
  v32 = &v42[v41[13]];
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v51) = 10;
  v34 = sub_27520C098();
  v35 = &v42[v41[14]];
  *v35 = v34;
  v35[1] = v36;
  LOBYTE(v51) = 11;
  v42[v41[15]] = sub_27520C0D8() & 1;
  LOBYTE(v51) = 12;
  v42[v41[16]] = sub_27520C0D8() & 1;
  LOBYTE(v51) = 13;
  v42[v41[17]] = sub_27520C0D8() & 1;
  LOBYTE(v51) = 14;
  v42[v41[18]] = sub_27520C0D8() & 1;
  LOBYTE(v51) = 15;
  v42[v41[19]] = sub_27520C0D8() & 1;
  LOBYTE(v51) = 16;
  v37 = sub_27520C0D8();
  (*(v47 + 8))(v48, v49);
  v38 = v42;
  v42[v41[20]] = v37 & 1;
  sub_275203508(v38, v44);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_27520356C(v38);
}

uint64_t sub_27520349C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809ADD88, &qword_27520F128);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275203508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27520356C(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExtractedConversation.conversationText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ExtractedConversation.init(conversationId:count:messages:conversationText:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_275203650()
{
  v1 = 0x61737265766E6F63;
  v2 = 0x736567617373656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x746E756F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2752036D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275205AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275203700(uint64_t a1)
{
  v2 = sub_2752039E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27520373C(uint64_t a1)
{
  v2 = sub_2752039E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedConversation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADDB0, &qword_27520F138);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v16 = v1[2];
  v17 = v9;
  v15[1] = v1[4];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752039E4();
  sub_27520C2B8();
  v22 = 0;
  sub_27520C1B8();
  if (!v2)
  {
    v14 = v16;
    v21 = 1;
    sub_27520C198();
    v18 = v14;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADDC0, &qword_27520F140);
    sub_275203CE4(&qword_2809ADDC8, &qword_2809ADDD0);
    sub_27520C1A8();
    v19 = 3;
    sub_27520C168();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2752039E4()
{
  result = qword_2809ADDB8;
  if (!qword_2809ADDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADDB8);
  }

  return result;
}

uint64_t ExtractedConversation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADDD8, &qword_27520F148);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752039E4();
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_27520C118();
  v26 = 1;
  v22 = sub_27520C0F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADDC0, &qword_27520F140);
  v25 = 2;
  sub_275203CE4(&qword_2809ADDE0, &qword_2809ADDE8);
  sub_27520C108();
  v12 = v23;
  v24 = 3;
  v13 = sub_27520C0C8();
  v15 = v14;
  v16 = *(v6 + 8);
  v21 = v13;
  v16(v9, v5);
  v17 = v21;
  v18 = v22;
  *a2 = v11;
  a2[1] = v18;
  a2[2] = v12;
  a2[3] = v17;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_275203CE4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809ADDC0, &qword_27520F140);
    sub_275203D80(a2, type metadata accessor for ExtractedMessage);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275203D80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ConversationEmbedding.embeddingModel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConversationEmbedding.init(conversationId:embedding:embeddingModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_275203E44()
{
  *v0;
  if (*v0)
  {
    return 0x6E69646465626D65;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_275203EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275205C60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275203EF0(uint64_t a1)
{
  v2 = sub_275204160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275203F2C(uint64_t a1)
{
  v2 = sub_275204160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationEmbedding.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADDF0, &unk_27520F150);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[1] = v1[2];
  v15 = v9;
  v14[0] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275204160();
  sub_27520C2B8();
  v19 = 0;
  sub_27520C1B8();
  if (!v2)
  {
    v16 = v15;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
    sub_2751D7154(&qword_2809AD328);
    sub_27520C1A8();
    v17 = 2;
    sub_27520C138();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_275204160()
{
  result = qword_2809ADDF8;
  if (!qword_2809ADDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADDF8);
  }

  return result;
}

uint64_t ConversationEmbedding.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADE00, &qword_27520F160);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275204160();
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_27520C118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
  v19 = 1;
  sub_2751D7154(&qword_2809AD338);
  sub_27520C108();
  v17[0] = v17[1];
  v18 = 2;
  v12 = sub_27520C098();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v15 = v17[0];
  *a2 = v11;
  a2[1] = v15;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ExtractedItem.text.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ExtractedItem.init(itemId:text:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2752044A4()
{
  if (*v0)
  {
    result = 1954047348;
  }

  else
  {
    result = 0x64496D657469;
  }

  *v0;
  return result;
}

uint64_t sub_2752044D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496D657469 && a2 == 0xE600000000000000;
  if (v6 || (sub_27520C218() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27520C218();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2752045AC(uint64_t a1)
{
  v2 = sub_2752047B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752045E8(uint64_t a1)
{
  v2 = sub_2752047B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADE08, &qword_27520F168);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752047B4();
  sub_27520C2B8();
  v15 = 0;
  sub_27520C1B8();
  if (!v2)
  {
    v14 = 1;
    sub_27520C168();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2752047B4()
{
  result = qword_2809ADE10;
  if (!qword_2809ADE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE10);
  }

  return result;
}

uint64_t ExtractedItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADE18, &qword_27520F170);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752047B4();
  sub_27520C2A8();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_27520C118();
    v17 = 1;
    v13 = sub_27520C0C8();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2752049F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27520B878();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_275204AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_27520B878();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_275204B84()
{
  sub_27520B878();
  if (v0 <= 0x3F)
  {
    sub_275204C98(319, &qword_2809ADE30, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_275204C98(319, &qword_2809ADE38, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275204C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_275204D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_275204D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275204DA0(uint64_t a1, int a2)
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

uint64_t sub_275204DE8(uint64_t result, int a2, int a3)
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

uint64_t sub_275204E38(uint64_t a1, int a2)
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

uint64_t sub_275204E80(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ConversationEmbedding.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationEmbedding.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtractedMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtractedMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_275205194()
{
  result = qword_2809ADE40;
  if (!qword_2809ADE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE40);
  }

  return result;
}

unint64_t sub_2752051EC()
{
  result = qword_2809ADE48;
  if (!qword_2809ADE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE48);
  }

  return result;
}

unint64_t sub_275205244()
{
  result = qword_2809ADE50;
  if (!qword_2809ADE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE50);
  }

  return result;
}

unint64_t sub_27520529C()
{
  result = qword_2809ADE58;
  if (!qword_2809ADE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE58);
  }

  return result;
}

unint64_t sub_2752052F4()
{
  result = qword_2809ADE60;
  if (!qword_2809ADE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE60);
  }

  return result;
}

unint64_t sub_27520534C()
{
  result = qword_2809ADE68;
  if (!qword_2809ADE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE68);
  }

  return result;
}

unint64_t sub_2752053A4()
{
  result = qword_2809ADE70;
  if (!qword_2809ADE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE70);
  }

  return result;
}

unint64_t sub_2752053FC()
{
  result = qword_2809ADE78;
  if (!qword_2809ADE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE78);
  }

  return result;
}

unint64_t sub_275205454()
{
  result = qword_2809ADE80;
  if (!qword_2809ADE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE80);
  }

  return result;
}

unint64_t sub_2752054AC()
{
  result = qword_2809ADE88;
  if (!qword_2809ADE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE88);
  }

  return result;
}

unint64_t sub_275205504()
{
  result = qword_2809ADE90;
  if (!qword_2809ADE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE90);
  }

  return result;
}

unint64_t sub_27520555C()
{
  result = qword_2809ADE98;
  if (!qword_2809ADE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE98);
  }

  return result;
}

uint64_t sub_2752055B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473694C6F74 && a2 == 0xE600000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694C6363 && a2 == 0xE600000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473694C636362 && a2 == 0xE700000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974 || (sub_27520C218() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6275536F747561 && a2 == 0xED00006465747469 || (sub_27520C218() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_27520C218() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x54796C7065526E69 && a2 == 0xE90000000000006FLL || (sub_27520C218() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x654D6F547369 && a2 == 0xE600000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x646165527369 && a2 == 0xE600000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6574656C65447369 && a2 == 0xE900000000000064 || (sub_27520C218() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65696C7065527369 && a2 == 0xE900000000000064 || (sub_27520C218() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x726177726F467369 && a2 == 0xEB00000000646564 || (sub_27520C218() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6B6E754A7369 && a2 == 0xE600000000000000)
  {

    return 16;
  }

  else
  {
    v6 = sub_27520C218();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_275205AF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000027520FF90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_27520C218();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_275205C60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067 || (sub_27520C218() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEE006C65646F4D67)
  {

    return 2;
  }

  else
  {
    v6 = sub_27520C218();

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

uint64_t BallTree.Node.left.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t BallTree.Node.left.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t BallTree.Node.right.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t BallTree.Node.right.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t BallTree.Node.storedIndices.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_275205EBC(uint64_t a1)
{
  v2 = sub_2752061DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275205EF8(uint64_t a1)
{
  v2 = sub_2752061DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BallTree.Node.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEA0, &unk_27520F880);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v21 = v1[2];
  v20 = *(v1 + 24);
  v19 = v1[4];
  v18[3] = *(v1 + 40);
  v11 = v1[6];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_2752061DC();
  sub_27520C2B8();
  v27 = 0;
  sub_27520C198();
  if (!v2)
  {
    v26 = 1;
    sub_27520C188();
    v25 = 2;
    sub_27520C148();
    v24 = 3;
    sub_27520C148();
    v23 = v11;
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD350, &qword_27520CBA0);
    sub_2751D7754(&qword_2809AD358);
    sub_27520C158();
  }

  return (*(v5 + 8))(v8, v16);
}

unint64_t sub_2752061DC()
{
  result = qword_2809ADEA8;
  if (!qword_2809ADEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADEA8);
  }

  return result;
}

uint64_t BallTree.Node.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEB0, &qword_27520F890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752061DC();
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v11 = sub_27520C0F8();
  v29 = 1;
  sub_27520C0E8();
  v13 = v12;
  v28 = 2;
  v14 = sub_27520C0A8();
  v24 = v15;
  v16 = v14;
  v27 = 3;
  v17 = sub_27520C0A8();
  v23 = v18;
  v22 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD350, &qword_27520CBA0);
  v25 = 4;
  sub_2751D7754(&qword_2809AD368);
  sub_27520C0B8();
  (*(v6 + 8))(v9, v5);
  v19 = v26;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = v24 & 1;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23 & 1;
  *(a2 + 48) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BallTree.points.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t BallTree.nodes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_2752065D0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27520C088();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_275206630@<X0>(char *a1@<X8>)
{
  v2 = sub_27520C088();

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

uint64_t sub_275206694(uint64_t a1)
{
  v2 = sub_27520B0EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752066D0(uint64_t a1)
{
  v2 = sub_27520B0EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BallTree.__allocating_init(points:metric:maxNodePoints:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BallTree.init(points:metric:maxNodePoints:)(a1, a2, a3);
  return v6;
}

uint64_t BallTree.init(points:metric:maxNodePoints:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 24) = MEMORY[0x277D84F90];
  *(v3 + 32) = v5;
  *(v3 + 40) = 16;
  *(v3 + 16) = v4;
  *(v3 + 48) = *(&off_2883FAAE0 + v4);
  *(v3 + 56) = 0;
  if (*(a1 + 16))
  {
    swift_beginAccess();
    *(v3 + 24) = a1;

    swift_beginAccess();
    *(v3 + 40) = a3;
    v8 = *(v3 + 48);
    v9 = *(v3 + 56);

    v10 = sub_27520A430(a1, v8, v9, a3);

    swift_beginAccess();
    v11 = *(v3 + 32);
    *(v3 + 32) = v10;
  }

  return v3;
}

uint64_t BallTree.search(query:k:)(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  swift_beginAccess();
  if (*(*(v3 + 3) + 16))
  {
    v9 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      goto LABEL_287;
    }

    v4 = sub_2751D0E64(0, v9 & ~(v9 >> 63), 0, MEMORY[0x277D84F90]);
    v10 = *(v3 + 6);
    v3 = *(v3 + 7);
    swift_beginAccess();
    v9 = *(v6 + 4);
    if (!*(v9 + 16))
    {
      goto LABEL_288;
    }

    v9 = *(v9 + 32);
    if (v9 < 0)
    {
      goto LABEL_289;
    }

    v11 = *(v6 + 3);
    if (v9 >= *(v11 + 16))
    {
      goto LABEL_290;
    }

    v2 = *(v11 + 8 * v9 + 32);

    v5 = v10(a1, v2);

    v9 = *(v6 + 4);
    if (!*(v9 + 16))
    {
      goto LABEL_291;
    }

    if ((v5 - *(v9 + 40)) > 0.0)
    {
      v5 = v5 - *(v9 + 40);
    }

    else
    {
      v5 = 0.0;
    }

    v8 = sub_2751D0E64(0, 1, 1, MEMORY[0x277D84F90]);
    v2 = *(v8 + 2);
    v9 = *(v8 + 3);
    v3 = (v2 + 1);
    if (v2 >= v9 >> 1)
    {
      goto LABEL_292;
    }

LABEL_11:
    *(v8 + 2) = v3;
    v12 = &v8[16 * v2];
    *(v12 + 4) = 0;
    *(v12 + 10) = v5;
    v187 = v6;
    v190 = a2;
    while (1)
    {
      v14 = &v8[16 * (v3 - 1)];
      v15 = *(v14 + 4);
      v16 = *(v14 + 10);
      *(v8 + 2) = v3 - 1;
      v9 = *(v4 + 16);
      if (v9 == a2)
      {
        if (!a2)
        {
          goto LABEL_278;
        }

        v9 = *(v4 + 32);
        if (v9 < 0)
        {
          goto LABEL_279;
        }

        v17 = *(v6 + 3);
        if (v9 >= *(v17 + 16))
        {
          goto LABEL_280;
        }

        v18 = *(v6 + 6);
        v3 = *(v6 + 7);
        v2 = *(v17 + 8 * v9 + 32);
        v19 = v8;

        v20 = v18(a1, v2);

        v8 = v19;
        if (v20 <= v16)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = 2139095040;
        v20 = INFINITY;
        if (v16 == INFINITY)
        {
          goto LABEL_14;
        }
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_281;
      }

      v9 = *(v6 + 4);
      if (v15 >= *(v9 + 16))
      {
        goto LABEL_282;
      }

      v21 = v9 + 56 * v15;
      v22 = *(v21 + 32);
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_283;
      }

      v9 = *(v6 + 3);
      if (v22 >= *(v9 + 16))
      {
        goto LABEL_284;
      }

      v23 = *(v21 + 40);
      v184 = *(v21 + 48);
      v182 = v8;
      v183 = *(v21 + 64);
      v185 = *(v21 + 72);
      v186 = *(v21 + 56);
      v25 = *(v6 + 6);
      v24 = *(v6 + 7);
      v2 = *(v9 + 8 * v22 + 32);
      v201 = *(v21 + 80);

      v5 = v25(a1, v2);

      if (v5 < v20)
      {
        break;
      }

      v3 = v201;
LABEL_51:
      if (v3)
      {
        v41 = *(v3 + 2);
        if (v41)
        {
          v207 = MEMORY[0x277D84F90];

          v3 = &v207;
          sub_2751E1264(0, v41, 0);
          v42 = v207;
          a2 = 32;
          while (1)
          {
            v9 = v201;
            v43 = *&v201[a2];
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_269;
            }

            v9 = *(v6 + 3);
            if (v43 >= *(v9 + 16))
            {
              break;
            }

            v44 = *(v6 + 6);
            v3 = *(v6 + 7);
            v45 = *(v9 + 8 * v43 + 32);

            v46 = v44(a1, v45);

            v207 = v42;
            v2 = *(v42 + 16);
            v47 = *(v42 + 24);
            if (v2 >= v47 >> 1)
            {
              v3 = &v207;
              sub_2751E1264((v47 > 1), v2 + 1, 1);
              v42 = v207;
            }

            *(v42 + 16) = v2 + 1;
            v48 = v42 + 16 * v2;
            *(v48 + 32) = v43;
            *(v48 + 40) = v46;
            a2 += 8;
            if (!--v41)
            {
              v3 = v201;

              goto LABEL_61;
            }
          }

LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          v8 = sub_2751D0E64((v9 > 1), v3, 1, v8);
          goto LABEL_11;
        }

        v42 = MEMORY[0x277D84F90];
LABEL_61:
        v188 = *(v42 + 16);
        if (v188)
        {
          v49 = 0;
          v189 = v42 + 32;
          while (1)
          {
            v192 = v49;
            v51 = v189 + 16 * v49;
            v2 = *v51;
            v52 = *(v51 + 8);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_2751D0E64(0, *(v4 + 16) + 1, 1, v4);
            }

            a2 = *(v4 + 16);
            v53 = *(v4 + 24);
            v54 = a2 + 1;
            if (a2 >= v53 >> 1)
            {
              v4 = sub_2751D0E64((v53 > 1), a2 + 1, 1, v4);
            }

            *(v4 + 16) = v54;
            v6 = (v4 + 32);
            v55 = v4 + 32 + 16 * a2;
            *v55 = v2;
            *(v55 + 8) = v52;
            if (a2 < 0x3F)
            {
              if (!a2)
              {
                goto LABEL_213;
              }

              goto LABEL_75;
            }

            v56 = 58 - __clz(v54);
            v57 = -1 << v56;
            v58 = v54 >> v56;
            if ((v54 & ~v57) != 0)
            {
              ++v58;
            }

            if (v58 <= a2)
            {
              break;
            }

LABEL_75:
            v59 = -1;
            v60 = 1;
            do
            {
              v61 = v59;
              v62 = v6;
              do
              {
                v63 = v62[6];
                if (v63 >= v62[2])
                {
                  break;
                }

                v64 = *(v62 + 2);
                *(v62 + 1) = *v62;
                *v62 = v64;
                v62[2] = v63;
                v62 -= 4;
                v132 = __CFADD__(v61++, 1);
              }

              while (!v132);
              v6 += 16;
              --v59;
              v33 = v60++ == a2;
            }

            while (!v33);
LABEL_213:
            v9 = *(v4 + 16);
            if (v9 <= v190)
            {
              v6 = v187;
              v50 = v192;
            }

            else
            {
              v6 = v187;
              if (!v9)
              {
                goto LABEL_285;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_2751E3B54(v4);
              }

              v50 = v192;
              v9 = *(v4 + 16);
              if (!v9)
              {
                goto LABEL_286;
              }

              *(v4 + 16) = v9 - 1;
            }

            v49 = v50 + 1;
            if (v49 == v188)
            {
              goto LABEL_219;
            }
          }

          v193 = v58;
          v2 = v54 >> 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
          v65 = sub_27520BCF8();
          v66 = 0;
          *(v65 + 16) = v2;
          __dst = (v65 + 32);
          v195 = v4 + 72;
          v197 = v4 + 40;
          v9 = v4 + 24;
          v181 = v4 + 24;
          v3 = MEMORY[0x277D84F90];
          v200 = v4;
          while (2)
          {
            v67 = v66++;
            if (v66 > a2)
            {
              goto LABEL_97;
            }

            v68 = *(v197 + 16 * v66);
            v9 = 16 * v67;
            v69 = *(v197 + 16 * v67);
            v70 = (v195 + 16 * v67);
            do
            {
              if (a2 == v66)
              {
                v66 = a2 + 1;
                if (v68 >= v69)
                {
                  goto LABEL_97;
                }

                goto LABEL_91;
              }

              ++v66;
              v71 = *v70 >= *(v70 - 4);
              v70 += 4;
            }

            while ((((v68 < v69) ^ v71) & 1) != 0);
            if (v68 >= v69)
            {
              goto LABEL_97;
            }

LABEL_91:
            if (v66 < v67)
            {
              goto LABEL_275;
            }

            if (v67 < v66)
            {
              v72 = 16 * v66;
              v73 = v66;
              v74 = v67;
              do
              {
                if (v74 != --v73)
                {
                  v75 = v4 + v72;
                  v76 = *(v4 + v9 + 32);
                  v77 = *(v4 + v9 + 40);
                  *(v4 + v9 + 32) = *(v4 + v72 + 16);
                  *(v75 + 16) = v76;
                  *(v75 + 24) = v77;
                }

                ++v74;
                v72 -= 16;
                v9 += 16;
              }

              while (v74 < v73);
            }

LABEL_97:
            if (v66 <= a2)
            {
              v9 = v66 - v67;
              if (__OFSUB__(v66, v67))
              {
                goto LABEL_272;
              }

              if (v9 < v193)
              {
                v9 = v67 + v193;
                if (__OFADD__(v67, v193))
                {
                  goto LABEL_276;
                }

                if (v9 >= a2 + 1)
                {
                  v9 = a2 + 1;
                }

                if (v9 < v67)
                {
                  goto LABEL_277;
                }

                if (v66 != v9)
                {
                  v78 = v67 - v66;
                  v79 = v181 + 16 * v66;
                  do
                  {
                    v80 = v79;
                    v81 = v78;
                    do
                    {
                      v82 = *(v80 + 16);
                      if (v82 >= *v80)
                      {
                        break;
                      }

                      v83 = *(v80 + 8);
                      *(v80 + 8) = *(v80 - 8);
                      *(v80 - 8) = v83;
                      *v80 = v82;
                      v80 -= 16;
                      v132 = __CFADD__(v81++, 1);
                    }

                    while (!v132);
                    ++v66;
                    --v78;
                    v79 += 16;
                  }

                  while (v66 != v9);
                  v66 = v9;
                }
              }
            }

            if (v66 < v67)
            {
              goto LABEL_271;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2751D08B8(0, *(v3 + 2) + 1, 1, v3);
            }

            v2 = *(v3 + 2);
            v84 = *(v3 + 3);
            v4 = v2 + 1;
            if (v2 >= v84 >> 1)
            {
              v3 = sub_2751D08B8((v84 > 1), v2 + 1, 1, v3);
            }

            *(v3 + 2) = v4;
            v9 = &v3[16 * v2];
            *(v9 + 32) = v67;
            *(v9 + 40) = v66;
            if (v2)
            {
              while (2)
              {
                v85 = v4 - 1;
                if (v4 >= 4)
                {
                  v9 = &v3[16 * v4 + 32];
                  v89 = *(v9 - 64);
                  v90 = *(v9 - 56);
                  v94 = __OFSUB__(v90, v89);
                  v91 = v90 - v89;
                  if (v94)
                  {
                    goto LABEL_258;
                  }

                  v93 = *(v9 - 48);
                  v92 = *(v9 - 40);
                  v94 = __OFSUB__(v92, v93);
                  v9 = v92 - v93;
                  v88 = v94;
                  if (v94)
                  {
                    goto LABEL_259;
                  }

                  v95 = &v3[16 * v4];
                  v97 = *v95;
                  v96 = *(v95 + 1);
                  v94 = __OFSUB__(v96, v97);
                  v98 = v96 - v97;
                  if (v94)
                  {
                    goto LABEL_261;
                  }

                  v94 = __OFADD__(v9, v98);
                  v99 = v9 + v98;
                  if (v94)
                  {
                    goto LABEL_264;
                  }

                  if (v99 >= v91)
                  {
                    v115 = &v3[16 * v85 + 32];
                    v117 = *v115;
                    v116 = *(v115 + 1);
                    v94 = __OFSUB__(v116, v117);
                    v118 = v116 - v117;
                    if (v94)
                    {
                      goto LABEL_268;
                    }

                    if (v9 < v118)
                    {
                      v85 = v4 - 2;
                    }
                  }

                  else
                  {
LABEL_132:
                    if (v88)
                    {
                      goto LABEL_260;
                    }

                    v100 = &v3[16 * v4];
                    v102 = *v100;
                    v101 = *(v100 + 1);
                    v103 = __OFSUB__(v101, v102);
                    v104 = v101 - v102;
                    v105 = v103;
                    if (v103)
                    {
                      goto LABEL_263;
                    }

                    v106 = &v3[16 * v85 + 32];
                    v108 = *v106;
                    v107 = *(v106 + 1);
                    v94 = __OFSUB__(v107, v108);
                    v109 = v107 - v108;
                    if (v94)
                    {
                      goto LABEL_266;
                    }

                    if (__OFADD__(v104, v109))
                    {
                      goto LABEL_267;
                    }

                    if (v104 + v109 < v9)
                    {
                      goto LABEL_146;
                    }

                    if (v9 < v109)
                    {
                      v85 = v4 - 2;
                    }
                  }
                }

                else
                {
                  if (v4 == 3)
                  {
                    v86 = *(v3 + 4);
                    v87 = *(v3 + 5);
                    v94 = __OFSUB__(v87, v86);
                    v9 = v87 - v86;
                    v88 = v94;
                    goto LABEL_132;
                  }

                  v110 = &v3[16 * v4];
                  v111 = *v110;
                  v9 = *(v110 + 1);
                  v94 = __OFSUB__(v9, v111);
                  v104 = v9 - v111;
                  v105 = v94;
LABEL_146:
                  if (v105)
                  {
                    goto LABEL_262;
                  }

                  v112 = &v3[16 * v85];
                  v114 = *(v112 + 4);
                  v113 = *(v112 + 5);
                  v94 = __OFSUB__(v113, v114);
                  v9 = v113 - v114;
                  if (v94)
                  {
                    goto LABEL_265;
                  }

                  if (v9 < v104)
                  {
                    break;
                  }
                }

                v119 = v85 - 1;
                if (v85 - 1 >= v4)
                {
                  __break(1u);
LABEL_256:
                  __break(1u);
LABEL_257:
                  __break(1u);
LABEL_258:
                  __break(1u);
LABEL_259:
                  __break(1u);
LABEL_260:
                  __break(1u);
LABEL_261:
                  __break(1u);
LABEL_262:
                  __break(1u);
LABEL_263:
                  __break(1u);
LABEL_264:
                  __break(1u);
LABEL_265:
                  __break(1u);
LABEL_266:
                  __break(1u);
LABEL_267:
                  __break(1u);
LABEL_268:
                  __break(1u);
LABEL_269:
                  __break(1u);
                  goto LABEL_270;
                }

                v4 = *&v3[16 * v119 + 32];
                v120 = &v3[16 * v85 + 32];
                v2 = *(v120 + 1);
                sub_2751EDBB0(&v6[16 * v4], &v6[16 * *v120], &v6[16 * v2], __dst);
                if (v2 < v4)
                {
                  goto LABEL_256;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v3 = sub_2751F3A50(v3);
                }

                v9 = *(v3 + 2);
                if (v119 >= v9)
                {
                  goto LABEL_257;
                }

                v121 = &v3[16 * v119];
                *(v121 + 4) = v4;
                *(v121 + 5) = v2;
                v207 = v3;
                sub_2751F39C4(v85);
                v3 = v207;
                v4 = *(v207 + 16);
                if (v4 <= 1)
                {
                  break;
                }

                continue;
              }
            }

            v4 = v200;
            if (v66 <= a2)
            {
              continue;
            }

            break;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_2751F3A50(v3);
          }

          v207 = v3;
          v122 = *(v3 + 2);
          if (v122 < 2)
          {
LABEL_212:

            *(v65 + 16) = 0;

            v3 = v201;
            goto LABEL_213;
          }

          v191 = v65;
          while (2)
          {
            v123 = *&v3[16 * v122];
            v194 = v122 - 1;
            v196 = v122;
            v124 = &v3[16 * v122 - 16];
            v125 = *(v124 + 4);
            v198 = *(v124 + 5);
            v199 = v123;
            v126 = &v6[16 * v123];
            v127 = 16 * v125;
            v128 = &v6[16 * v125];
            v129 = &v6[16 * v198];
            a2 = 16 * v125 - 16 * v123;
            v130 = 16 * v198 - 16 * v125;
            v204[0] = v126;
            v131 = __dst;
            v206[0] = __dst;
            if (a2 >= v130)
            {
              if (__dst != v128 || __dst >= v129)
              {
                memmove(__dst, &v6[16 * v125], 16 * v198 - 16 * v125);
                v129 = &v6[16 * v198];
              }

              v135 = v130 + 32;
              v65 = v191;
              v136 = (v191 + v130 + 32);
              v146 = v198;
              if (v130 < 1)
              {
                v2 = v199;
              }

              else
              {
                v2 = v199;
LABEL_185:
                v137 = 0;
                v138 = v191 + v135;
                v139 = v136;
                v140 = v135;
                while (v126 < v128)
                {
                  v141 = (v129 + v137);
                  v142 = (v129 + v137 - 16);
                  v143 = v138 + v137;
                  if (*(v138 + v137 - 8) < *(v128 - 2))
                  {
                    v144 = v128 - 4;
                    v135 += v137;
                    v136 = v139;
                    v129 = v129 + v137 - 16;
                    v33 = v141 == v128;
                    v128 -= 4;
                    if (!v33)
                    {
                      *v142 = *v144;
                      v128 = v144;
                      v136 = v139;
                      v129 = v142;
                    }

                    goto LABEL_185;
                  }

                  if (v142 != (v143 - 16) || v142 >= v143)
                  {
                    *v142 = *(v143 - 16);
                  }

                  v140 -= 16;
                  v139 = (v191 + v140);
                  v137 -= 16;
                  if ((v135 + v137 + 16) <= 0x30)
                  {
                    v136 = (v191 + v135 + v137);
                    break;
                  }
                }
              }

              v204[0] = v128;
              v205 = v136;
            }

            else
            {
              v132 = __dst != v126 || __dst >= v128;
              if (v132)
              {
                memmove(__dst, &v6[16 * v123], 16 * v125 - 16 * v123);
                v129 = &v6[16 * v198];
              }

              v205 = __dst + a2;
              v133 = a2 < 1 || 16 * v198 <= v127;
              v2 = v199;
              if (!v133)
              {
                v145 = __dst;
                v65 = v191;
                v146 = v198;
                while (v128[2] < v145[2])
                {
                  v147 = v128;
                  v33 = v126 == v128;
                  v128 += 4;
                  if (!v33)
                  {
                    goto LABEL_200;
                  }

LABEL_201:
                  v126 += 4;
                  if (v145 >= (__dst + a2) || v128 >= v129)
                  {
                    goto LABEL_203;
                  }
                }

                v131 = v145 + 4;
                v147 = v145;
                v33 = v126 == v145;
                v145 += 4;
                if (v33)
                {
                  goto LABEL_201;
                }

LABEL_200:
                *v126 = *v147;
                goto LABEL_201;
              }

              v65 = v191;
              v146 = v198;
LABEL_203:
              v206[0] = v131;
              v204[0] = v126;
            }

            sub_2751F3A64(v204, v206, &v205);
            v4 = v200;
            if (v146 < v2)
            {
              goto LABEL_273;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2751F3A50(v3);
            }

            v9 = v196 - 2;
            if ((v196 - 2) >= *(v3 + 2))
            {
              goto LABEL_274;
            }

            v148 = &v3[16 * v196];
            *v148 = v2;
            v148[1] = v146;
            v207 = v3;
            sub_2751F39C4(v194);
            v3 = v207;
            v122 = *(v207 + 16);
            if (v122 <= 1)
            {
              goto LABEL_212;
            }

            continue;
          }
        }

LABEL_219:
      }

      if (v16 > (v5 - v23))
      {
        v149 = v16;
      }

      else
      {
        v149 = v5 - v23;
      }

      v22 = MEMORY[0x277D84F90];
      if ((v186 & 1) == 0)
      {
        if ((v184 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);

          *(v22 + 16) = 0;

          __break(1u);
          return result;
        }

        v150 = *(v6 + 4);
        if (v184 >= *(v150 + 16))
        {
          goto LABEL_294;
        }

        v151 = *(v150 + 56 * v184 + 32);
        if ((v151 & 0x8000000000000000) != 0)
        {
          goto LABEL_296;
        }

        v152 = *(v6 + 3);
        if (v151 >= *(v152 + 16))
        {
          goto LABEL_298;
        }

        v153 = *(v152 + 8 * v151 + 32);
        v155 = *(v6 + 6);
        v154 = *(v6 + 7);

        v5 = v155(a1, v153);

        v22 = sub_2751D0E64(0, 1, 1, MEMORY[0x277D84F90]);
        v157 = *(v22 + 16);
        v156 = *(v22 + 24);
        if (v157 >= v156 >> 1)
        {
          v22 = sub_2751D0E64((v156 > 1), v157 + 1, 1, v22);
        }

        *(v22 + 16) = v157 + 1;
        v158 = v22 + 16 * v157;
        *(v158 + 32) = v184;
        *(v158 + 40) = v5;
      }

      if ((v185 & 1) == 0)
      {
        if ((v183 & 0x8000000000000000) != 0)
        {
          goto LABEL_295;
        }

        v159 = *(v6 + 4);
        if (v183 >= *(v159 + 16))
        {
          goto LABEL_297;
        }

        v160 = *(v159 + 56 * v183 + 32);
        if ((v160 & 0x8000000000000000) != 0)
        {
          goto LABEL_299;
        }

        v161 = *(v6 + 3);
        if (v160 >= *(v161 + 16))
        {
          goto LABEL_300;
        }

        v162 = *(v161 + 8 * v160 + 32);
        v164 = *(v6 + 6);
        v163 = *(v6 + 7);

        v5 = v164(a1, v162);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2751D0E64(0, *(v22 + 16) + 1, 1, v22);
        }

        v166 = *(v22 + 16);
        v165 = *(v22 + 24);
        v167 = v183;
        if (v166 >= v165 >> 1)
        {
          v179 = sub_2751D0E64((v165 > 1), v166 + 1, 1, v22);
          v167 = v183;
          v22 = v179;
        }

        *(v22 + 16) = v166 + 1;
        v168 = v22 + 16 * v166;
        *(v168 + 32) = v167;
        *(v168 + 40) = v5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2751E3B54(v22);
      }

      v169 = *(v22 + 16);
      v170 = (v22 + 32);
      v207 = v22 + 32;
      v208 = v169;
      sub_275208740(&v207);
      v171 = *(v22 + 16);
      if (v171)
      {
        v13 = v182;
        v172 = *(v182 + 2);
        v173 = 16 * v172;
        do
        {
          v175 = *v170;
          v170 += 2;
          v174 = v175;
          v176 = *(v13 + 3);
          v177 = v172 + 1;
          if (v172 >= v176 >> 1)
          {
            v13 = sub_2751D0E64((v176 > 1), v172 + 1, 1, v13);
          }

          *(v13 + 2) = v177;
          v178 = &v13[v173];
          *(v178 + 4) = v174;
          *(v178 + 10) = v149;
          v173 += 16;
          v172 = v177;
          --v171;
        }

        while (v171);
      }

      else
      {
        v13 = v182;
      }

      v2 = v13;

      v8 = v2;
      a2 = v190;
LABEL_14:
      v3 = *(v8 + 2);
      if (!v3)
      {

        return v4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2751D0E64(0, *(v4 + 16) + 1, 1, v4);
    }

    v2 = *(v4 + 16);
    v26 = *(v4 + 24);
    v27 = v2 + 1;
    if (v2 >= v26 >> 1)
    {
      v4 = sub_2751D0E64((v26 > 1), v2 + 1, 1, v4);
    }

    *(v4 + 16) = v27;
    v28 = v4 + 32;
    v29 = v4 + 32 + 16 * v2;
    *v29 = v22;
    *(v29 + 8) = v5;
    v207 = v4 + 32;
    v208 = v2 + 1;
    v30 = sub_27520C1D8();
    if (v30 <= v2)
    {
      v22 = v30;
      v38 = (v27 >> 1);
      if (v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v2 = sub_27520BCF8();
        *(v2 + 16) = v38;
      }

      else
      {
        v2 = MEMORY[0x277D84F90];
      }

      v204[0] = (v2 + 32);
      v204[1] = v38;
      sub_2751ED610(v204, v206, &v207, v22);
      *(v2 + 16) = 0;
    }

    else if (v2)
    {
      v31 = -1;
      v32 = 1;
      v3 = v201;
      do
      {
        v34 = v31;
        v35 = v28;
        do
        {
          v36 = *(v35 + 24);
          if (v36 >= *(v35 + 8))
          {
            break;
          }

          v37 = *(v35 + 16);
          *(v35 + 16) = *v35;
          *v35 = v37;
          *(v35 + 8) = v36;
          v35 -= 16;
          v132 = __CFADD__(v34++, 1);
        }

        while (!v132);
        v28 += 16;
        --v31;
        v33 = v32++ == v2;
      }

      while (!v33);
LABEL_46:
      v39 = *(v4 + 16);
      if (v39 > a2)
      {
        if (!v39)
        {
          goto LABEL_301;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = *(v4 + 16);
          if (!v40)
          {
            goto LABEL_251;
          }
        }

        else
        {
          v4 = sub_2751E3B54(v4);
          v40 = *(v4 + 16);
          if (!v40)
          {
LABEL_251:
            __break(1u);
            return MEMORY[0x277D84F90];
          }
        }

        *(v4 + 16) = v40 - 1;
      }

      goto LABEL_51;
    }

    v3 = v201;
    goto LABEL_46;
  }

  return MEMORY[0x277D84F90];
}

char *BallTree.search(query:radius:sorted:)(uint64_t a1, char a2, float a3)
{
  v4 = v3;
  v79[12] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v7 = v3[3];
  v8 = *(v7 + 16);
  v71 = MEMORY[0x277D84F90];
  if (!v8 || a3 <= 0.0)
  {
    goto LABEL_59;
  }

  v10 = v3[6];
  v9 = v3[7];
  swift_beginAccess();
  v11 = v4[4];
  if (!*(v11 + 16))
  {
    goto LABEL_66;
  }

  v12 = *(v11 + 32);
  if (v12 >= v8)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  v13 = *(v7 + 8 * v12 + 32);

  v14 = v10(a1, v13);

  v15 = v4[4];
  if (!*(v15 + 16))
  {
    goto LABEL_68;
  }

  v71 = MEMORY[0x277D84F90];
  if ((v14 - *(v15 + 40)) > a3)
  {
    goto LABEL_59;
  }

  v70 = a2;
  v16 = MEMORY[0x277D84F90];
  v79[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27520DD90;
  *(inited + 32) = 0;
  v18 = 1;
  while (2)
  {
    v19 = v18 - 1;
    v20 = *(inited + 8 * (v18 - 1) + 32);
    *(inited + 16) = v19;
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    v21 = v4[4];
    if (v20 >= *(v21 + 16))
    {
      goto LABEL_63;
    }

    v22 = v21 + 56 * v20;
    v23 = *(v22 + 32);
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    v24 = v4[3];
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_65;
    }

    v25 = *(v22 + 40);
    v74 = *(v22 + 48);
    v26 = *(v22 + 64);
    v75 = *(v22 + 56);
    v76 = *(v22 + 72);
    v27 = *(v22 + 80);
    v29 = v4[6];
    v28 = v4[7];
    v30 = *(v24 + 8 * v23 + 32);

    v31 = v29(a1, v30);

    if ((v31 - v25) > a3)
    {

      goto LABEL_9;
    }

    if (v31 <= a3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2751D0E64(0, *(v16 + 2) + 1, 1, v16);
      }

      v33 = *(v16 + 2);
      v32 = *(v16 + 3);
      if (v33 >= v32 >> 1)
      {
        v16 = sub_2751D0E64((v32 > 1), v33 + 1, 1, v16);
      }

      *(v16 + 2) = v33 + 1;
      v34 = &v16[16 * v33];
      *(v34 + 4) = v23;
      *(v34 + 10) = v31;
    }

    if (!v27)
    {
      goto LABEL_48;
    }

    v72 = v26;
    v73 = inited;
    v35 = *(v27 + 16);
    if (!v35)
    {
      v36 = MEMORY[0x277D84F90];
      v47 = *(MEMORY[0x277D84F90] + 16);
      if (v47)
      {
        goto LABEL_30;
      }

LABEL_39:
      v49 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }

    v78 = MEMORY[0x277D84F90];

    sub_2751E1264(0, v35, 0);
    v36 = v78;
    v37 = 32;
    do
    {
      v38 = *(v27 + v37);
      if ((v38 & 0x8000000000000000) != 0)
      {
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
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v39 = v4[3];
      if (v38 >= *(v39 + 16))
      {
        goto LABEL_61;
      }

      v41 = v4[6];
      v40 = v4[7];
      v42 = *(v39 + 8 * v38 + 32);

      v43 = v41(a1, v42);

      v45 = *(v78 + 16);
      v44 = *(v78 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_2751E1264((v44 > 1), v45 + 1, 1);
      }

      *(v78 + 16) = v45 + 1;
      v46 = v78 + 16 * v45;
      *(v46 + 32) = v38;
      *(v46 + 40) = v43;
      v37 += 8;
      --v35;
    }

    while (v35);

    v47 = *(v78 + 16);
    if (!v47)
    {
      goto LABEL_39;
    }

LABEL_30:
    v48 = (v36 + 40);
    v49 = MEMORY[0x277D84F90];
    do
    {
      v53 = *v48;
      if (*v48 <= a3)
      {
        v54 = *(v48 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2751E1264(0, *(v49 + 16) + 1, 1);
        }

        v51 = *(v49 + 16);
        v50 = *(v49 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_2751E1264((v50 > 1), v51 + 1, 1);
        }

        *(v49 + 16) = v51 + 1;
        v52 = v49 + 16 * v51;
        *(v52 + 32) = v54;
        *(v52 + 40) = v53;
      }

      v48 += 4;
      --v47;
    }

    while (v47);
LABEL_40:

    v55 = *(v49 + 16);
    if (v55)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2751D0E64(0, *(v16 + 2) + 1, 1, v16);
      }

      v56 = *(v16 + 2);
      v57 = 16 * v56;
      v58 = (v49 + 40);
      do
      {
        v59 = *(v58 - 1);
        v60 = *v58;
        v61 = *(v16 + 3);
        v62 = v56 + 1;
        if (v56 >= v61 >> 1)
        {
          v16 = sub_2751D0E64((v61 > 1), v56 + 1, 1, v16);
        }

        *(v16 + 2) = v62;
        v63 = &v16[v57];
        *(v63 + 4) = v59;
        *(v63 + 10) = v60;
        v57 += 16;
        v58 += 4;
        v56 = v62;
        --v55;
      }

      while (v55);
    }

    v26 = v72;
    inited = v73;
LABEL_48:
    if ((v75 & 1) == 0)
    {
      v65 = *(inited + 16);
      v64 = *(inited + 24);
      if (v65 >= v64 >> 1)
      {
        inited = sub_2751D09BC((v64 > 1), v65 + 1, 1, inited);
      }

      *(inited + 16) = v65 + 1;
      *(inited + 8 * v65 + 32) = v74;
    }

    if ((v76 & 1) == 0)
    {
      v67 = *(inited + 16);
      v66 = *(inited + 24);
      if (v67 >= v66 >> 1)
      {
        inited = sub_2751D09BC((v66 > 1), v67 + 1, 1, inited);
      }

      *(inited + 16) = v67 + 1;
      *(inited + 8 * v67 + 32) = v26;
    }

LABEL_9:
    v18 = *(inited + 16);
    if (v18)
    {
      continue;
    }

    break;
  }

  v79[0] = v16;
  if (v70)
  {
    sub_2751EFE98(v79);
  }

  v71 = v79[0];
LABEL_59:
  v68 = *MEMORY[0x277D85DE8];
  return v71;
}

unint64_t *sub_275208074(unint64_t *result, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(a3 + 16);
  if (v4 >= v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(a3 + 32 + 8 * v4);
  if (*(v6 + 16) <= a4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*a2 >= v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(a3 + 32 + 8 * *a2);
  if (*(v7 + 16) > a4)
  {
    return (*(v7 + 4 * a4 + 32) < *(v6 + 4 * a4 + 32));
  }

LABEL_13:
  __break(1u);
  return result;
}

void *BallTree.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  return v0;
}

uint64_t BallTree.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t BallTree.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEB8, &qword_27520F898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27520B0EC();
  sub_27520C2B8();
  v14 = *(v3 + 16);
  LOBYTE(v13) = 0;
  sub_2751ED1DC();
  sub_27520C1A8();
  if (!v2)
  {
    swift_beginAccess();
    v13 = *(v3 + 32);
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEC8, &qword_27520F8A0);
    sub_27520B194(&qword_2809ADED0, sub_27520B140);
    sub_27520C1A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t BallTree.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  BallTree.init(from:)(a1);
  return v2;
}

uint64_t *BallTree.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEE0, &qword_27520F8A8);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = MEMORY[0x277D84F90];
  v1[3] = MEMORY[0x277D84F90];
  v1[4] = v10;
  v11 = v1 + 4;
  v1[5] = 16;
  v1[6] = sub_2751F08E0;
  v1[7] = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27520B0EC();
  sub_27520C2A8();
  if (v2)
  {
    v15 = v1[3];

    v16 = v1[4];

    v17 = v1[7];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v22;
    LOBYTE(v25) = 0;
    sub_2751ED230();
    v14 = v23;
    sub_27520C108();
    *(v1 + 16) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEC8, &qword_27520F8A0);
    v24 = 1;
    sub_27520B194(&qword_2809ADEE8, sub_27520B20C);
    sub_27520C108();
    (*(v13 + 8))(v9, v14);
    v19 = v25;
    swift_beginAccess();
    v20 = *v11;
    *v11 = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t *sub_2752086C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = BallTree.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_275208740(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27520C1D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v6 = sub_27520BCF8();
        *(v6 + 16) = v5;
      }

      v16[0] = v6 + 32;
      v16[1] = v5;
      sub_2751E7ABC(v16, v17, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v2 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v2 >= 2)
  {
    v7 = *a1;
    v8 = *a1 + 16;
    v9 = -1;
    for (i = 1; i != v2; ++i)
    {
      v11 = v9;
      v12 = v8;
      do
      {
        v13 = *(v12 + 8);
        if (*(v12 - 8) >= v13)
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_20;
        }

        v14 = *v12;
        *v12 = *(v12 - 16);
        *(v12 - 8) = v13;
        *(v12 - 16) = v14;
        v12 -= 16;
      }

      while (!__CFADD__(v11++, 1));
      v8 += 16;
      --v9;
    }
  }

  return result;
}

void *sub_275208894(void *result, uint64_t a2, uint64_t a3, float a4)
{
  v5 = result[1];
  v4 = result[2];
  v7 = __OFADD__(v4, v5);
  v6 = v4 + v5;
  if (!v7)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, *result);
      if (v6 < *result || (v6 -= *result, !v7))
      {
LABEL_9:
        v8 = a2 + 16 * v6;
        *v8 = a3;
        *(v8 + 8) = a4;
        v9 = result[1];
        v7 = __OFADD__(v9, 1);
        v10 = v9 + 1;
        if (!v7)
        {
          result[1] = v10;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v6 < 0)
    {
      v7 = __OFADD__(v6, *result);
      v6 += *result;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_275208910(void *result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v6 = result[1];
  v5 = result[2];
  v8 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (!v8)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, *result);
      if (v7 < *result || (v7 -= *result, !v8))
      {
LABEL_9:
        v9 = a2 + 24 * v7;
        *v9 = a3;
        *(v9 + 8) = a4;
        *(v9 + 16) = a5 & 1;
        *(v9 + 17) = HIBYTE(a5) & 1;
        v10 = result[1];
        v8 = __OFADD__(v10, 1);
        v11 = v10 + 1;
        if (!v8)
        {
          result[1] = v11;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v8 = __OFADD__(v7, *result);
      v7 += *result;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

char *sub_27520899C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F8, &qword_27520C9D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_275208AA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADF58, &unk_27520FCF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD4F8, qword_27520D690);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275208BFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A0, &unk_27520FCD0);
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

char *sub_275208D30(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

size_t sub_275208E2C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7C0, &qword_27520DE60);
  v10 = *(sub_27520BA38() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_27520BA38() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_275209004(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1D0, &unk_27520DE70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_275209108(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADF48, &qword_27520FCA8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_27520920C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADF50, &unk_27520FCB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
  }

  return v10;
}

char *sub_27520933C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

uint64_t sub_275209434(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_27520BCF8();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_275209538(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  if (*(a1 + 16) == v3)
  {
    if (*(a2 + 16) == v3)
    {
      if (*a3)
      {
LABEL_8:
        JUMPOUT(0x277C6DE60);
      }

LABEL_7:
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_7;
}

uint64_t sub_275209678(uint64_t __dst, char *__src, unint64_t *a3, char *a4, uint64_t a5, unint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = &__src[-__dst];
  v12 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v12 = &__src[-__dst];
  }

  v13 = v12 >> 3;
  v14 = a3 - __src;
  v15 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v15 = a3 - __src;
  }

  v16 = v15 >> 3;
  if (v13 < v15 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v13 <= a4)
    {
      v17 = a5;
      __dst = memmove(a4, __dst, 8 * v13);
      a5 = v17;
    }

    v18 = &v7[8 * v13];
    if (v11 >= 8 && v9 < v8)
    {
      v19 = a5 + 32;
      while (1)
      {
        v20 = *v9;
        if ((*v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v21 = *(a5 + 16);
        if (v20 >= v21)
        {
          goto LABEL_56;
        }

        if ((a6 & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        v22 = *(v19 + 8 * v20);
        if (*(v22 + 16) <= a6)
        {
          goto LABEL_60;
        }

        if (*v7 >= v21)
        {
          goto LABEL_63;
        }

        v23 = *(v19 + 8 * *v7);
        if (*(v23 + 16) <= a6)
        {
          goto LABEL_64;
        }

        if (*(v23 + 4 * a6 + 32) >= *(v22 + 4 * a6 + 32))
        {
          break;
        }

        v24 = v10 == v9;
        v9 += 8;
        if (!v24)
        {
          goto LABEL_23;
        }

LABEL_24:
        v10 += 8;
        if (v7 >= v18 || v9 >= v8)
        {
          goto LABEL_26;
        }
      }

      v20 = *v7;
      v24 = v10 == v7;
      v7 += 8;
      if (v24)
      {
        goto LABEL_24;
      }

LABEL_23:
      *v10 = v20;
      goto LABEL_24;
    }

LABEL_26:
    v9 = v10;
    goto LABEL_50;
  }

  if (a4 != __src || &__src[8 * v16] <= a4)
  {
    v25 = a5;
    __dst = memmove(a4, __src, 8 * v16);
    a5 = v25;
  }

  v18 = &v7[8 * v16];
  if (v14 < 8 || v9 <= v10)
  {
LABEL_50:
    v35 = v18 - v7 + (v18 - v7 < 0 ? 7uLL : 0);
    if (v9 != v7 || v9 >= &v7[v35 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v9, v7, 8 * (v35 >> 3));
    }

    return 1;
  }

  v26 = a5 + 32;
LABEL_33:
  v27 = v9 - 8;
  --v8;
  v28 = v18;
  while (1)
  {
    v30 = *(v28 - 8);
    v28 -= 8;
    v29 = v30;
    if ((v30 & 0x8000000000000000) != 0)
    {
      break;
    }

    v31 = *(a5 + 16);
    if (v29 >= v31)
    {
      goto LABEL_57;
    }

    if ((a6 & 0x8000000000000000) != 0)
    {
      goto LABEL_59;
    }

    v32 = *(v26 + 8 * v29);
    if (*(v32 + 16) <= a6)
    {
      goto LABEL_61;
    }

    v33 = *v27;
    if (*v27 >= v31)
    {
      goto LABEL_62;
    }

    v34 = *(v26 + 8 * v33);
    if (*(v34 + 16) <= a6)
    {
      goto LABEL_65;
    }

    if (*(v34 + 4 * a6 + 32) < *(v32 + 4 * a6 + 32))
    {
      if (v8 + 1 != v9)
      {
        *v8 = v33;
      }

      if (v18 <= v7 || (v9 -= 8, v27 <= v10))
      {
        v9 = v27;
        goto LABEL_50;
      }

      goto LABEL_33;
    }

    if (v8 + 1 != v18)
    {
      *v8 = v29;
    }

    --v8;
    v18 = v28;
    if (v28 <= v7)
    {
      v18 = v28;
      goto LABEL_50;
    }
  }

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
LABEL_65:
  __break(1u);
  return __dst;
}

uint64_t sub_27520995C(unint64_t *a1, char *a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v27 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v27 = sub_2751F3A50(v27);
  }

  v22 = v7;
  *v7 = v27;
  v9 = v27 + 16;
  v10 = *(v27 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v27;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v27[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __dst = (v11 + 8 * *v13);
      v18 = (v11 + 8 * *v16);
      v7 = (v11 + 8 * v17);

      sub_275209678(__dst, v18, v7, a2, a4, a5);
      v6 = v12;

      if (v12)
      {
        *v22 = v27;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_275209B04(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v8 = a5;
  v108 = MEMORY[0x277D84F90];
  v9 = a3[1];
  if (v9 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_102:
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    sub_27520995C(&v108, v95, a3, v8, a6);
    if (v7)
    {
LABEL_104:

LABEL_105:
      swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  v98 = a5 + 32;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v102 = v8;
  while (1)
  {
    if (v10 + 1 >= v9)
    {
      v9 = v10 + 1;
      v17 = v98;
      v18 = a6;
      goto LABEL_28;
    }

    v12 = *a3;
    v13 = *(*a3 + 8 * (v10 + 1));
    v106 = *(*a3 + 8 * v10);
    v107 = v13;
    v14 = sub_275208074(&v107, &v106, v8, a6);
    if (v7)
    {
      goto LABEL_105;
    }

    v15 = v10 + 2;
    v16 = (v12 + 8 * v10 + 16);
    v17 = v98;
    v18 = a6;
    do
    {
      if (v9 == v15)
      {
        goto LABEL_17;
      }

      v19 = *v16;
      if ((*v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v20 = *(v8 + 16);
      if (v19 >= v20)
      {
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
        goto LABEL_137;
      }

      if ((a6 & 0x8000000000000000) != 0)
      {
        goto LABEL_114;
      }

      v21 = *(v98 + 8 * v19);
      if (*(v21 + 16) <= a6)
      {
        goto LABEL_115;
      }

      v22 = *(v16 - 1);
      if (v22 >= v20)
      {
        goto LABEL_116;
      }

      v23 = *(v98 + 8 * v22);
      if (*(v23 + 16) <= a6)
      {
        goto LABEL_117;
      }

      ++v15;
      ++v16;
    }

    while (((v14 ^ (*(v23 + 4 * a6 + 32) >= *(v21 + 4 * a6 + 32))) & 1) != 0);
    v9 = v15 - 1;
LABEL_17:
    if (v14)
    {
      break;
    }

LABEL_28:
    v29 = a3[1];
    if (v9 < v29)
    {
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_134;
      }

      if (v9 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_135;
        }

        if (v10 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v10 + a4;
        }

        if (v30 < v10)
        {
          goto LABEL_136;
        }

        if (v9 != v30)
        {
          if (v18 < 0)
          {
            goto LABEL_138;
          }

          v31 = *a3;
          v32 = *(v8 + 16);
          v33 = *a3 + 8 * v9 - 8;
          v34 = v10 - v9;
          do
          {
            v35 = *(v31 + 8 * v9);
            v36 = v34;
            v37 = v33;
            do
            {
              if (v35 >= v32)
              {
                __break(1u);
LABEL_109:
                __break(1u);
LABEL_110:
                __break(1u);
LABEL_111:
                __break(1u);
LABEL_112:
                __break(1u);
                goto LABEL_113;
              }

              v38 = *(v17 + 8 * v35);
              if (*(v38 + 16) <= v18)
              {
                goto LABEL_109;
              }

              v39 = *v37;
              if (*v37 >= v32)
              {
                goto LABEL_110;
              }

              v40 = *(v17 + 8 * v39);
              if (*(v40 + 16) <= v18)
              {
                goto LABEL_111;
              }

              if (*(v40 + 4 * v18 + 32) >= *(v38 + 4 * v18 + 32))
              {
                break;
              }

              if (!v31)
              {
                goto LABEL_139;
              }

              *v37 = v35;
              v37[1] = v39;
              --v37;
            }

            while (!__CFADD__(v36++, 1));
            ++v9;
            v33 += 8;
            --v34;
          }

          while (v9 != v30);
          v9 = v30;
        }
      }
    }

    if (v9 < v10)
    {
      goto LABEL_133;
    }

    v100 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2751D08B8(0, *(v11 + 2) + 1, 1, v11);
    }

    v43 = *(v11 + 2);
    v42 = *(v11 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      v11 = sub_2751D08B8((v42 > 1), v43 + 1, 1, v11);
    }

    *(v11 + 2) = v44;
    v45 = v11 + 32;
    v46 = &v11[16 * v43 + 32];
    *v46 = v10;
    *(v46 + 1) = v9;
    v108 = v11;
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v43)
    {
      v105 = v7;
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          v52 = &v45[16 * v44];
          v53 = *(v52 - 8);
          v54 = *(v52 - 7);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_122;
          }

          v57 = *(v52 - 6);
          v56 = *(v52 - 5);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_123;
          }

          v59 = &v11[16 * v44];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_125;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_128;
          }

          if (v63 >= v55)
          {
            v81 = &v45[16 * v47];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_132;
            }

            if (v50 < v84)
            {
              v47 = v44 - 2;
            }

            goto LABEL_93;
          }
        }

        else
        {
          if (v44 != 3)
          {
            v74 = &v11[16 * v44];
            v76 = *v74;
            v75 = *(v74 + 1);
            v58 = __OFSUB__(v75, v76);
            v68 = v75 - v76;
            v69 = v58;
LABEL_86:
            if (v69)
            {
              goto LABEL_126;
            }

            v77 = &v45[16 * v47];
            v79 = *v77;
            v78 = *(v77 + 1);
            v58 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v58)
            {
              goto LABEL_129;
            }

            if (v80 < v68)
            {
              goto LABEL_3;
            }

            goto LABEL_93;
          }

          v48 = *(v11 + 4);
          v49 = *(v11 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
        }

        if (v51)
        {
          goto LABEL_124;
        }

        v64 = &v11[16 * v44];
        v66 = *v64;
        v65 = *(v64 + 1);
        v67 = __OFSUB__(v65, v66);
        v68 = v65 - v66;
        v69 = v67;
        if (v67)
        {
          goto LABEL_127;
        }

        v70 = &v45[16 * v47];
        v72 = *v70;
        v71 = *(v70 + 1);
        v58 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v58)
        {
          goto LABEL_130;
        }

        if (__OFADD__(v68, v73))
        {
          goto LABEL_131;
        }

        if (v68 + v73 < v50)
        {
          goto LABEL_86;
        }

        if (v50 < v73)
        {
          v47 = v44 - 2;
        }

LABEL_93:
        if (v47 - 1 >= v44)
        {
          goto LABEL_118;
        }

        v85 = *a3;
        if (!*a3)
        {
          goto LABEL_140;
        }

        v86 = &v45[16 * v47 - 16];
        v87 = *v86;
        v88 = v47;
        v89 = &v45[16 * v47];
        v90 = *(v89 + 1);
        v91 = v85 + 8 * *v86;
        v92 = (v85 + 8 * *v89);
        v93 = (v85 + 8 * v90);

        sub_275209678(v91, v92, v93, v101, v102, a6);
        if (v105)
        {
          goto LABEL_104;
        }

        if (v90 < v87)
        {
          goto LABEL_119;
        }

        v94 = *(v11 + 2);
        if (v88 > v94)
        {
          goto LABEL_120;
        }

        *v86 = v87;
        *(v86 + 1) = v90;
        if (v88 >= v94)
        {
          goto LABEL_121;
        }

        v44 = v94 - 1;
        memmove(v89, v89 + 16, 16 * (v94 - 1 - v88));
        *(v11 + 2) = v94 - 1;
        v45 = v11 + 32;
        if (v94 <= 2)
        {
LABEL_3:
          v108 = v11;
          v7 = v105;
          break;
        }
      }
    }

    v9 = a3[1];
    v10 = v100;
    v8 = v102;
    if (v100 >= v9)
    {
      goto LABEL_102;
    }
  }

  if (v9 >= v10)
  {
    if (v10 < v9)
    {
      v24 = v9 - 1;
      v25 = v10;
      while (1)
      {
        if (v25 != v24)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_141;
          }

          v26 = *(v28 + 8 * v25);
          *(v28 + 8 * v25) = *(v28 + 8 * v24);
          *(v28 + 8 * v24) = v26;
        }

        if (++v25 >= v24--)
        {
          goto LABEL_28;
        }
      }
    }

    goto LABEL_28;
  }

LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_140:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_141:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_142:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_143:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_27520A180(uint64_t *a1, uint64_t a2, int64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_27520C1D8();
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
        v10 = sub_27520BCF8();
        *(v10 + 16) = v9;
      }

      v23[0] = (v10 + 32);
      v23[1] = v9;

      sub_275209B04(v23, v24, a1, v8, a2, a3);

      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 <= 1)
    {
      return swift_bridgeObjectRelease_n();
    }

    v11 = *a1;

    if (a3 < 0)
    {
      goto LABEL_30;
    }

    v12 = a2 + 32;
    v13 = *(a2 + 16);
    v14 = -1;
    v15 = 1;
    v16 = v11;
LABEL_13:
    v17 = *(v11 + 8 * v15);
    v18 = v14;
    v19 = v16;
    while (v17 < v13)
    {
      v20 = *(v12 + 8 * v17);
      if (*(v20 + 16) <= a3)
      {
        goto LABEL_25;
      }

      v21 = *v19;
      if (*v19 >= v13)
      {
        goto LABEL_26;
      }

      result = *(v12 + 8 * v21);
      if (*(result + 16) <= a3)
      {
        goto LABEL_27;
      }

      if (*(result + 4 * a3 + 32) < *(v20 + 4 * a3 + 32))
      {
        if (!v11)
        {
          goto LABEL_31;
        }

        *v19 = v17;
        v19[1] = v21;
        --v19;
        if (!__CFADD__(v18++, 1))
        {
          continue;
        }
      }

      ++v15;
      ++v16;
      --v14;
      if (v15 == v6)
      {
        return swift_bridgeObjectRelease_n();
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_27520A37C(char **a1, uint64_t a2, int64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_275209640(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = (v6 + 32);
  v9[1] = v7;

  sub_27520A180(v9, a2, a3);

  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

char *sub_27520A430(uint64_t a1, float (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v132 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = a4 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v128 = a1 + 32;
    v115 = *(a1 + 32);

    v8 = *sub_27520BA78();
    v131 = v8;
    v9 = sub_2751E3A6C(v4, 0);
    if (sub_2751E3B7C(__I, (v9 + 4), v4, 0, v4) != v4)
    {
      goto LABEL_150;
    }

    v10 = v8[3];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
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
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v8[2] < v11 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2751D2CB4(isUniquelyReferenced_nonNull_native, v11, 0);
      v8 = v131;
    }

    sub_275208910(v8 + 2, (v8 + 5), v9, 0, 257);

    if (v8[3])
    {
      v112 = a1;
      do
      {
        v13 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2751D26A4();
          v13 = v131;
        }

        v14 = v13[4];
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_139;
        }

        v16 = &v13[3 * v14];
        v18 = v16[5];
        v17 = v16[6];
        v19 = *(v16 + 56);
        v20 = *(v16 + 57);
        v21 = v13[3];
        if (v15 >= v13[2])
        {
          v15 = 0;
        }

        v13[4] = v15;
        if (__OFSUB__(v21, 1))
        {
          goto LABEL_140;
        }

        v13[3] = v21 - 1;
        v22 = v18[2];
        if (v22)
        {
          v123 = v17;
          v122 = v20;
          v126 = v19;
          if (v22 <= a4)
          {
            v26 = v18[4];
            v27 = v22 - 1;
            if (v22 == 1)
            {
              v28 = 0;
              v29 = 0.0;
            }

            else
            {
              v121 = v13;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
              v28 = swift_allocObject();
              v30 = _swift_stdlib_malloc_size(v28);
              v31 = v30 - 32;
              if (v30 < 32)
              {
                v31 = v30 - 25;
              }

              v28[2] = v27;
              v28[3] = 2 * (v31 >> 3);
              memcpy(v28 + 4, v18 + 5, 8 * v27);
              v32 = v18[2];
              v116 = v26;
              if (v32)
              {
                __I[0] = MEMORY[0x277D84F90];

                sub_2751E09A4(0, v32, 0);
                if (v26 < 0)
                {
                  goto LABEL_148;
                }

                if (v26 >= v4)
                {
                  goto LABEL_149;
                }

                v125 = v5;
                v33 = v26;
                v34 = __I[0];
                v35 = *(v128 + 8 * v33);
                v36 = 4;
                do
                {
                  v37 = v18[v36];
                  if (v37 >= v4)
                  {
                    goto LABEL_138;
                  }

                  v38 = *(v128 + 8 * v37);

                  v39 = a2(v35, v38);

                  __I[0] = v34;
                  v41 = *(v34 + 16);
                  v40 = *(v34 + 24);
                  if (v41 >= v40 >> 1)
                  {
                    sub_2751E09A4((v40 > 1), v41 + 1, 1);
                    v34 = __I[0];
                  }

                  *(v34 + 16) = v41 + 1;
                  *(v34 + 4 * v41 + 32) = v39;
                  ++v36;
                  --v32;
                }

                while (v32);

                v5 = v125;
              }

              else
              {
                v34 = MEMORY[0x277D84F90];
              }

              v97 = *(v34 + 16);
              v13 = v121;
              if (v97)
              {
                v29 = *(v34 + 32);
                v98 = v97 - 1;
                if (v98)
                {
                  v99 = (v34 + 36);
                  do
                  {
                    v100 = *v99++;
                    v101 = v100;
                    if (v29 < v100)
                    {
                      v29 = v101;
                    }

                    --v98;
                  }

                  while (v98);
                }
              }

              else
              {
                v29 = 0.0;
              }

              v26 = v116;
            }

            v102 = *(v5 + 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_2751D10AC(0, v102 + 1, 1, v5);
            }

            v104 = *(v5 + 2);
            v103 = *(v5 + 3);
            if (v104 >= v103 >> 1)
            {
              v5 = sub_2751D10AC((v103 > 1), v104 + 1, 1, v5);
            }

            *(v5 + 2) = v104 + 1;
            v105 = v5 + 32;
            v106 = &v5[56 * v104 + 32];
            *v106 = v26;
            *(v106 + 8) = v29;
            *(v106 + 16) = 0;
            *(v106 + 24) = 1;
            *(v106 + 32) = 0;
            *(v106 + 40) = 1;
            *(v106 + 48) = v28;

            if ((v126 & 1) == 0)
            {
              if (v122)
              {
                if ((v123 & 0x8000000000000000) != 0)
                {
                  goto LABEL_152;
                }

                if (v123 >= *(v5 + 2))
                {
                  goto LABEL_154;
                }

                v107 = &v105[56 * v123];
                *(v107 + 2) = v102;
                v107[24] = 0;
              }

              else
              {
                if ((v123 & 0x8000000000000000) != 0)
                {
                  goto LABEL_153;
                }

                if (v123 >= *(v5 + 2))
                {
                  goto LABEL_155;
                }

                v108 = &v105[56 * v123];
                *(v108 + 4) = v102;
                v108[40] = 0;
              }
            }
          }

          else
          {
            v120 = v13;
            v23 = *(v115 + 16);
            v124 = v5;
            if (!v23)
            {

              v25 = MEMORY[0x277D84F90];
              v24 = MEMORY[0x277D84F90];
LABEL_39:
              v42 = 0;
              v43 = v24;
              v44 = v25;
              while (v42 < v18[2])
              {
                v45 = v18[v42 + 4];
                if (v45 >= v4)
                {
                  goto LABEL_132;
                }

                v46 = *(v128 + 8 * v45);
                v47 = *(v43 + 16);
                if (v47 != *(v46 + 16))
                {
                  goto LABEL_133;
                }

                if (v47)
                {
                  v24 = sub_27520BCF8();
                  *(v24 + 16) = v47;
                  v48 = *(v46 + 16);
                  v49 = *(v43 + 16);
                }

                else
                {
                  v49 = 0;
                  v48 = 0;
                  v24 = MEMORY[0x277D84F90];
                }

                if (v48 >= v49)
                {
                  v48 = v49;
                }

                if (v47 >= v48)
                {
                  v50 = v48;
                }

                else
                {
                  v50 = v47;
                }

                vDSP_vmin((v43 + 32), 1, (v46 + 32), 1, (v24 + 32), 1, v50);
                v51 = *(v43 + 16);
                if (v47 < v51)
                {
                  goto LABEL_134;
                }

                *(v24 + 16) = v51;

                v52 = *(v44 + 16);
                if (v52 != *(v46 + 16))
                {
                  goto LABEL_135;
                }

                if (v52)
                {
                  v53 = *(v44 + 16);
                  v25 = sub_27520BCF8();
                  *(v25 + 16) = v52;
                  v54 = *(v46 + 16);
                  v55 = *(v44 + 16);
                }

                else
                {
                  v55 = 0;
                  v54 = 0;
                  v25 = MEMORY[0x277D84F90];
                }

                if (v54 >= v55)
                {
                  v54 = v55;
                }

                if (v52 >= v54)
                {
                  v56 = v54;
                }

                else
                {
                  v56 = v52;
                }

                vDSP_vmax((v44 + 32), 1, (v46 + 32), 1, (v25 + 32), 1, v56);
                v57 = *(v44 + 16);
                if (v52 < v57)
                {
                  goto LABEL_136;
                }

                ++v42;
                *(v25 + 16) = v57;

                v43 = v24;
                v44 = v25;
                if (v22 == v42)
                {
                  goto LABEL_63;
                }
              }

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
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

            v24 = sub_27520BCF8();
            *(v24 + 16) = v23;
            memset_pattern16((v24 + 32), &unk_27520F100, 4 * v23);
            v25 = sub_27520BCF8();
            *(v25 + 16) = v23;
            memset_pattern16((v25 + 32), &unk_27520F870, 4 * v23);
            v22 = v18[2];

            if (v22)
            {
              goto LABEL_39;
            }

LABEL_63:

            __I[0] = v25;
            *__C = v24;
            v58 = MEMORY[0x28223BE20](*(v25 + 16));
            v59 = sub_275209434(v58, sub_27520B618);

            __I[0] = v59;
            v60 = MEMORY[0x28223BE20](*(v59 + 16));
            v61 = sub_275209434(v60, sub_275201544);

            v62 = *(v61 + 16);
            __C[0] = NAN;
            __I[0] = 0;
            vDSP_maxvi((v61 + 32), 1, __C, __I, v62);
            v63 = __I[0];

            if (v63 < 0)
            {
              goto LABEL_141;
            }

            __I[0] = v18;
            swift_bridgeObjectRetain_n();

            sub_27520A37C(__I, v112, v63);

            v64 = __I[0];
            v65 = *(__I[0] + 16);
            if (!v65)
            {
              goto LABEL_142;
            }

            v66 = __I[0] + 32;
            v67 = *(__I[0] + 32 + 8 * (v65 >> 1));
            if (v67 >= v4)
            {
              goto LABEL_143;
            }

            v118 = v65 >> 1;
            v68 = v18[2];
            v117 = *(__I[0] + 32 + 8 * (v65 >> 1));
            if (v68)
            {
              v113 = __I[0] + 32;
              v114 = *(__I[0] + 16);
              v69 = *(v128 + 8 * v67);
              __I[0] = MEMORY[0x277D84F90];

              sub_2751E09A4(0, v68, 0);
              v70 = __I[0];
              v71 = 4;
              do
              {
                v72 = v18[v71];
                if (v72 >= v4)
                {
                  goto LABEL_137;
                }

                v73 = *(v128 + 8 * v72);

                v74 = a2(v69, v73);

                __I[0] = v70;
                v76 = *(v70 + 16);
                v75 = *(v70 + 24);
                if (v76 >= v75 >> 1)
                {
                  sub_2751E09A4((v75 > 1), v76 + 1, 1);
                  v70 = __I[0];
                }

                *(v70 + 16) = v76 + 1;
                *(v70 + 4 * v76 + 32) = v74;
                ++v71;
                --v68;
              }

              while (v68);

              v5 = v124;
              v65 = v114;
              v66 = v113;
            }

            else
            {

              v70 = MEMORY[0x277D84F90];
            }

            __I[0] = v70;

            sub_2751D0780(__I);

            v77 = *(__I[0] + 16);
            if (v77)
            {
              v78 = *(__I[0] + 4 * v77 + 28);
            }

            else
            {
              v78 = 2139095040;
            }

            v79 = *(v64 + 16);
            if (v79 < v118)
            {
              goto LABEL_144;
            }

            if (v79 == v118)
            {

              v82 = v118;
              v81 = v64;
            }

            else
            {
              sub_2751ECFE8(v64, v66, 0, v65 | 1);
              v81 = v80;
              v82 = *(v64 + 16);
            }

            if (v82 <= v118 || v82 < v65)
            {
              goto LABEL_145;
            }

            if (*(v64 + 16) != v65 - (v118 + 1))
            {
              sub_2751ECFE8(v64, v66, v118 + 1, (2 * v65) | 1);
              v64 = v109;
            }

            v83 = *(v5 + 2);
            v84 = v64;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_2751D10AC(0, v83 + 1, 1, v5);
            }

            v86 = *(v5 + 2);
            v85 = *(v5 + 3);
            if (v86 >= v85 >> 1)
            {
              v5 = sub_2751D10AC((v85 > 1), v86 + 1, 1, v5);
            }

            *(v5 + 2) = v86 + 1;
            v87 = v5 + 32;
            v88 = &v5[56 * v86 + 32];
            *v88 = v117;
            *(v88 + 8) = v78;
            *(v88 + 16) = 0;
            *(v88 + 24) = 1;
            *(v88 + 32) = 0;
            *(v88 + 40) = 1;
            *(v88 + 48) = 0;

            if ((v126 & 1) == 0)
            {
              if (v122)
              {
                if ((v123 & 0x8000000000000000) != 0)
                {
                  goto LABEL_157;
                }

                if (v123 >= *(v5 + 2))
                {
                  goto LABEL_159;
                }

                v89 = &v87[56 * v123 + 16];
              }

              else
              {
                if ((v123 & 0x8000000000000000) != 0)
                {
                  goto LABEL_156;
                }

                if (v123 >= *(v5 + 2))
                {
                  goto LABEL_158;
                }

                v89 = &v87[56 * v123 + 32];
              }

              *v89 = v83;
              *(v89 + 8) = 0;
            }

            v90 = v120[3];
            v91 = v90 + 1;
            if (__OFADD__(v90, 1))
            {
              goto LABEL_146;
            }

            v92 = v131;
            v93 = swift_isUniquelyReferenced_nonNull_native();
            if (v92[2] < v91 || (v93 & 1) == 0)
            {
              sub_2751D2CB4(v93, v91, 0);
              v92 = v131;
            }

            sub_275208910(v92 + 2, (v92 + 5), v81, v83, 256);

            v94 = v92[3];
            v95 = v94 + 1;
            if (__OFADD__(v94, 1))
            {
              goto LABEL_147;
            }

            v96 = swift_isUniquelyReferenced_nonNull_native();
            if (v92[2] < v95 || (v96 & 1) == 0)
            {
              sub_2751D2CB4(v96, v95, 0);
            }

            v13 = v131;
            sub_275208910(v131 + 2, (v131 + 5), v84, v83, 0);
          }
        }

        else
        {
        }
      }

      while (v13[3]);
    }
  }

  v110 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_27520B0EC()
{
  result = qword_2809ADEC0;
  if (!qword_2809ADEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADEC0);
  }

  return result;
}

unint64_t sub_27520B140()
{
  result = qword_2809ADED8;
  if (!qword_2809ADED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADED8);
  }

  return result;
}

uint64_t sub_27520B194(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809ADEC8, &qword_27520F8A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27520B20C()
{
  result = qword_2809ADEF0;
  if (!qword_2809ADEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADEF0);
  }

  return result;
}

uint64_t sub_27520B26C(uint64_t a1)
{
  result = sub_27520B344(&qword_2809ADEF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27520B2DC(uint64_t a1)
{
  *(a1 + 8) = sub_27520B344(&qword_2809ADF00);
  result = sub_27520B344(&qword_2809ADF08);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_27520B344(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BallTree();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27520B40C()
{
  result = qword_2809ADF10;
  if (!qword_2809ADF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF10);
  }

  return result;
}

unint64_t sub_27520B464()
{
  result = qword_2809ADF18;
  if (!qword_2809ADF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF18);
  }

  return result;
}

unint64_t sub_27520B4BC()
{
  result = qword_2809ADF20;
  if (!qword_2809ADF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF20);
  }

  return result;
}

unint64_t sub_27520B514()
{
  result = qword_2809ADF28;
  if (!qword_2809ADF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF28);
  }

  return result;
}

unint64_t sub_27520B56C()
{
  result = qword_2809ADF30;
  if (!qword_2809ADF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF30);
  }

  return result;
}

unint64_t sub_27520B5C4()
{
  result = qword_2809ADF38;
  if (!qword_2809ADF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF38);
  }

  return result;
}