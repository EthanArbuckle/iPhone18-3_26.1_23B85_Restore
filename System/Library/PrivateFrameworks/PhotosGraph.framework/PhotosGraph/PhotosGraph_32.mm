void sub_22F359B30(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  v8 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v40 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v46 - a2;
  if (v46 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40[1] = v4;
    v24 = a4 + v18;
    if (v18 < 1)
    {
      v27 = a4 + v18;
    }

    else
    {
      v25 = -v14;
      v26 = a4 + v18;
      v27 = v24;
      v42 = v25;
      v43 = a4;
      do
      {
        v40[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v46;
          if (v28 <= a1)
          {
            v49 = v28;
            v47 = v40[0];
            goto LABEL_59;
          }

          v41 = v27;
          v46 += v25;
          v32 = v26 + v25;
          sub_22F35AFCC(v32, v12);
          v33 = v29;
          v34 = v29;
          v35 = v12;
          v36 = v44;
          sub_22F35AFCC(v34, v44);
          v37 = *(v45 + 48);
          v38 = sub_22F73F5D0();
          v39 = v36;
          v12 = v35;
          sub_22F35B0AC(v39);
          sub_22F35B0AC(v35);
          if (v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v46 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v43;
          v25 = v42;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v46 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          v25 = v42;
        }

        else
        {
          v27 = v41;
          v25 = v42;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_58:
    v49 = a2;
    v47 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < v46)
    {
      do
      {
        sub_22F35AFCC(a2, v12);
        v21 = v44;
        sub_22F35AFCC(a4, v44);
        v22 = *(v45 + 48);
        v23 = sub_22F73F5D0();
        sub_22F35B0AC(v21);
        sub_22F35B0AC(v12);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v49 = a1;
      }

      while (a4 < v19 && a2 < v46);
    }
  }

LABEL_59:
  sub_22F3B6830(&v49, &v48, &v47);
}

uint64_t sub_22F359FC4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
      if (!v15 && (sub_22F742040() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v5 -= 24;
    do
    {
      v16 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v16 && (sub_22F742040() & 1) != 0)
      {
        v19 = v6 - 24;
        if ((v5 + 24) != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v17 = v12 - 24;
      if ((v5 + 24) != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v21 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

void sub_22F35A224()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v22 = v2 - 2;
  if (v2 >= 2)
  {
    sub_22F740840();
    sub_22F20F7E0();
    v3 = 0;
    while (1)
    {
      v5 = sub_22F740D30();
      v6 = (v5 * v2) >> 64;
      if (v2 > v5 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v5 * v2)
        {
          do
          {
            v8 = sub_22F740D30();
          }

          while (v7 > v8 * v2);
          v6 = (v8 * v2) >> 64;
        }
      }

      v9 = v3 + v6;
      if (__OFADD__(v3, v6))
      {
        break;
      }

      if (v3 != v9)
      {
        v10 = *(v1 + 2);
        if (v3 >= v10)
        {
          goto LABEL_19;
        }

        if (v9 >= v10)
        {
          goto LABEL_20;
        }

        v11 = &v1[16 * v3 + 32];
        v12 = *v11;
        v13 = *(v11 + 1);
        v14 = &v1[16 * v9 + 32];
        v15 = *(v14 + 1);
        v21 = *v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_22F3F651C(v1);
        }

        if (v3 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v16 = &v1[16 * v3 + 32];
        v17 = *(v16 + 1);
        *v16 = v21;
        *(v16 + 1) = v15;

        if (v9 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v18 = &v1[16 * v9 + 32];
        v19 = *(v18 + 1);
        *v18 = v12;
        *(v18 + 1) = v13;

        *v20 = v1;
      }

      --v2;
      if (v3++ == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_22F35A3CC()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    sub_22F740840();
    sub_22F20F7E0();
    v4 = 0;
    while (1)
    {
      v6 = sub_22F740D30();
      v7 = (v6 * v2) >> 64;
      if (v2 > v6 * v2)
      {
        v8 = -v2 % v2;
        if (v8 > v6 * v2)
        {
          do
          {
            v9 = sub_22F740D30();
          }

          while (v8 > v9 * v2);
          v7 = (v9 * v2) >> 64;
        }
      }

      v10 = v4 + v7;
      if (__OFADD__(v4, v7))
      {
        break;
      }

      if (v4 != v10)
      {
        v11 = *(v1 + 2);
        if (v4 >= v11)
        {
          goto LABEL_19;
        }

        if (v10 >= v11)
        {
          goto LABEL_20;
        }

        v12 = *&v1[8 * v4 + 32];
        v13 = *&v1[8 * v10 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_22F3F65E4(v1);
        }

        v14 = *(v1 + 2);
        if (v4 >= v14)
        {
          goto LABEL_21;
        }

        *&v1[8 * v4 + 32] = v13;
        if (v10 >= v14)
        {
          goto LABEL_22;
        }

        *&v1[8 * v10 + 32] = v12;
        *v15 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_22F35A52C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  v46 = MEMORY[0x277D84F98];
  v12 = swift_allocObject();
  *(v12 + 16) = &v46;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22F35AF9C;
  *(v13 + 24) = v12;
  v40 = v12;
  v44 = sub_22F35AFA4;
  v45 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F358104;
  aBlock[3] = &block_descriptor_23_3;
  v14 = _Block_copy(aBlock);

  v41 = a2;
  [a2 enumerateUniversalStartDatesUsingBlock_];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_22;
  }

  v42 = a1;
  v16 = v46;
  v17 = *(v46 + 16);
  if (!v17)
  {

    isEscapingClosureAtFileLocation = MEMORY[0x277D84F90];
LABEL_6:
    aBlock[0] = isEscapingClosureAtFileLocation;
    isEscapingClosureAtFileLocation = 0;
    sub_22F358208(aBlock);

    v19 = aBlock[0];
    v20 = aBlock[0][2];
    if (v20)
    {
      aBlock[0] = MEMORY[0x277D84F90];
      sub_22F146CD8(0, v20, 0);
      v21 = aBlock[0];
      v22 = *(v5 + 80);
      v39 = v19;
      v23 = v19 + ((v22 + 32) & ~v22);
      v24 = *(v5 + 72);
      do
      {
        sub_22F35AFCC(v23, v11);
        sub_22F35B03C(v11, v8);
        v25 = *v8;
        v26 = *(v4 + 48);
        v27 = sub_22F73F690();
        (*(*(v27 - 8) + 8))(&v8[v26], v27);
        aBlock[0] = v21;
        isEscapingClosureAtFileLocation = v21[2];
        v28 = v21[3];
        if (isEscapingClosureAtFileLocation >= v28 >> 1)
        {
          sub_22F146CD8((v28 > 1), isEscapingClosureAtFileLocation + 1, 1);
          v21 = aBlock[0];
        }

        v21[2] = isEscapingClosureAtFileLocation + 1;
        v21[isEscapingClosureAtFileLocation + 4] = v25;
        v23 += v24;
        --v20;
      }

      while (v20);
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v29 = v21[2];
    v30 = v29 - v42;
    if (!__OFSUB__(v29, v42))
    {
      if (v30 <= v29)
      {
        v31 = v30 & ~(v30 >> 63);
        isEscapingClosureAtFileLocation = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
        v32 = v29 >= v31;
        v33 = v29 - v31;
        if (v33)
        {
          if (v33 == 0 || !v32)
          {
            goto LABEL_25;
          }

          v34 = &v21[v31 + 4];
          do
          {
            v35 = *v34++;
            [isEscapingClosureAtFileLocation addIdentifier_];
            --v33;
          }

          while (v33);
        }

        v36 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:objc_msgSend(v41 elementIdentifiers:{sel_graph), isEscapingClosureAtFileLocation}];

        swift_unknownObjectRelease();

        return v36;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  isEscapingClosureAtFileLocation = sub_22F10B5B0(*(v46 + 16), 0);
  v38[0] = v5;
  sub_22F11C560(aBlock, isEscapingClosureAtFileLocation + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v17, v16);
  v38[1] = v44;
  v39 = v18;
  swift_bridgeObjectRetain_n();
  sub_22F0FF590();
  if (v39 == v17)
  {
    v5 = v38[0];
    goto LABEL_6;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F35AA00(uint64_t a1, void *a2)
{
  v29 = MEMORY[0x277D84F98];
  v4 = swift_allocObject();
  *(v4 + 16) = &v29;
  v5 = swift_allocObject();
  v5[2] = sub_22F35AF7C;
  v5[3] = v4;
  aBlock[4] = sub_22F15A678;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2136B4;
  aBlock[3] = &block_descriptor_38;
  v6 = _Block_copy(aBlock);

  [a2 enumerateUUIDsUsingBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = v29;
  v10 = *(v29 + 16);
  if (v10)
  {
    v11 = sub_22F10B5D4(v10, 0);
    v12 = sub_22F11C814(aBlock, v11 + 4, v10, v9);
    swift_bridgeObjectRetain_n();
    sub_22F0FF590();
    if (v12 != v10)
    {
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  aBlock[0] = v11;
  sub_22F3582BC(aBlock);

  v13 = aBlock[0];
  v14 = aBlock[0][2];
  if (v14)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22F146CD8(0, v14, 0);
    v15 = aBlock[0];
    v16 = aBlock[0][2];
    v17 = 4;
    do
    {
      v18 = v13[v17];
      aBlock[0] = v15;
      v19 = v15[3];
      if (v16 >= v19 >> 1)
      {
        sub_22F146CD8((v19 > 1), v16 + 1, 1);
        v15 = aBlock[0];
      }

      v15[2] = v16 + 1;
      v15[v16 + 4] = v18;
      v17 += 3;
      ++v16;
      --v14;
    }

    while (v14);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  aBlock[0] = v15;
  sub_22F35A3CC();
  v5 = aBlock[0];
  v7 = aBlock[0][2];
  v8 = v7 - a1;
  if (__OFSUB__(v7, a1))
  {
    goto LABEL_21;
  }

  if (v8 > v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 >= 1)
  {
LABEL_23:
    sub_22F10AE8C(v5, (v5 + 4), v8 & ~(v8 >> 63), (2 * v7) | 1);
    v27 = v26;

    v5 = v27;
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v21 = v5[2];
  if (v21)
  {
    v22 = v5 + 4;
    do
    {
      v23 = *v22++;
      [v20 addIdentifier_];
      --v21;
    }

    while (v21);
  }

  v24 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:objc_msgSend(a2 elementIdentifiers:{sel_graph), v20}];

  swift_unknownObjectRelease();

  return v24;
}

unint64_t sub_22F35ADF8()
{
  result = qword_27DAB3C70;
  if (!qword_27DAB3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C70);
  }

  return result;
}

uint64_t type metadata accessor for MomentSampler()
{
  result = qword_27DAB3C78;
  if (!qword_27DAB3C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F35AEA0()
{
  result = sub_22F740840();
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

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F35AFA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22F35AFCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F35B03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F35B0AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F35B11C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = v3;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2319016F0](v4, v30);
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_22F35B630(&v40, &v39);
      if (v2)
      {
        goto LABEL_42;
      }

      v9 = v39;
      v6 = (v39 >> 62);
      if (v39 >> 62)
      {
        v10 = sub_22F741A00();
      }

      else
      {
        v10 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = sub_22F741A00();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          sub_22F741A00();
          goto LABEL_23;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22F741B50();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v6)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22F741A00();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v37 > 0)
          {
            goto LABEL_45;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v37)
      {
        goto LABEL_46;
      }

      v36 = v5;
      v20 = v14 + 8 * v16 + 32;
      v31 = v14;
      if (v6)
      {
        if (v18 < 1)
        {
          goto LABEL_48;
        }

        sub_22F35BA84();
        for (i = 0; i != v18; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3C88, &qword_22F788488);
          v22 = sub_22F14E004(v38, i, v9);
          v24 = *v23;
          (v22)(v38, 0);
          *(v20 + 8 * i) = v24;
        }
      }

      else
      {
        sub_22F35BA38();
        swift_arrayInitWithCopy();
      }

      v2 = v8;
      v5 = v36;
      if (v37 >= 1)
      {
        v25 = *(v31 + 16);
        v7 = __OFADD__(v25, v37);
        v26 = v25 + v37;
        if (v7)
        {
          goto LABEL_47;
        }

        *(v31 + 16) = v26;
      }

LABEL_5:
      if (v4 == v32)
      {
        return v5;
      }
    }

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
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_22F741A00();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x277D84F90];
}

unint64_t static FlexMusicCacher.cacheSongAudioAndArtwork(forUIDs:)(void *a1)
{
  result = sub_22F35B860(a1);
  v2 = result;
  if (result >> 62)
  {
    result = sub_22F741A00();
    v3 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2319016F0](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 pg_requestDownloadIfNeeded];
  }

LABEL_10:
}

uint64_t sub_22F35B630@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v10[4] = [*a1 assetWithID_];
  v4 = 0;
  v10[5] = [v3 assetWithID_];
  v5 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  while (v4 != 2)
  {
    v6 = v10[v4++ + 4];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x231900D00]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      sub_22F741220();
      v5 = v11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3C98, &qword_22F788490);
  result = swift_arrayDestroy();
  *a2 = v5;
  return result;
}

id FlexMusicCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlexMusicCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FlexMusicCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F35B860(void *a1)
{
  if (qword_2810A91C0 != -1)
  {
LABEL_14:
    swift_once();
  }

  swift_beginAccess();
  v2 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v3 = a1[2];
  v4 = qword_2810A91C8;
  v5 = 0;
  v6 = (a1 + 5);
  v15 = (a1 + 5);
LABEL_3:
  v7 = &v6[16 * v5];
  while (v3 != v5)
  {
    if (v5 >= v3)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

    v9 = *(v7 - 1);
    v10 = *v7;

    v11 = sub_22F740DF0();
    a1 = [v4 fetchSongWithUID_];

    ++v5;
    v7 += 16;
    if (a1)
    {
      MEMORY[0x231900D00]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      sub_22F741220();
      v2 = v16;
      v5 = v8;
      v6 = v15;
      goto LABEL_3;
    }
  }

  v13 = sub_22F35B11C(v2);

  return v13;
}

unint64_t sub_22F35BA38()
{
  result = qword_2810A91E8;
  if (!qword_2810A91E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A91E8);
  }

  return result;
}

unint64_t sub_22F35BA84()
{
  result = qword_27DAB3C90;
  if (!qword_27DAB3C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3C88, &qword_22F788488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C90);
  }

  return result;
}

uint64_t sub_22F35BAE8(uint64_t a1)
{
  v3 = type metadata accessor for Song();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v26 = v1;
  v34 = MEMORY[0x277D84F90];
  sub_22F146454(0, v6, 0);
  v7 = v34;
  v8 = -1 << *(a1 + 32);
  v33 = a1 + 56;
  result = sub_22F741980();
  v10 = result;
  v11 = 0;
  v27 = a1 + 64;
  v28 = v6;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v33 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v31 = *(a1 + 36);
    v14 = v29;
    sub_22F15CAA0(*(a1 + 48) + *(v30 + 72) * v10, v29);
    v15 = v14[1];
    v32 = *v14;

    result = sub_22F15CBD8(v14);
    v34 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_22F146454((v16 > 1), v17 + 1, 1);
      v7 = v34;
    }

    *(v7 + 16) = v17 + 1;
    v18 = v7 + 16 * v17;
    *(v18 + 32) = v32;
    *(v18 + 40) = v15;
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v19 = *(v33 + 8 * v13);
    if ((v19 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v31 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v10 & 0x3F));
    if (v20)
    {
      v12 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v13 << 6;
      v22 = v13 + 1;
      v23 = (v27 + 8 * v13);
      while (v22 < (v12 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_22F107D18(v10, v31, 0);
          v12 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v10, v31, 0);
    }

LABEL_4:
    ++v11;
    v10 = v12;
    if (v11 == v28)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22F35BDA4(void *a1, uint64_t a2, uint64_t *a3)
{
  v77 = a3;
  v5 = type metadata accessor for Song();
  v76 = *(v5 - 8);
  v6 = *(v76 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v68 - v9;
  MEMORY[0x28223BE20](v10);
  v69 = &v68 - v11;
  MEMORY[0x28223BE20](v12);
  v70 = &v68 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v68 - v15);
  v17 = a2 + 56;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a2 + 56);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  v74 = v21;
  v75 = v16;
  v72 = a2;
  v73 = a2 + 56;
  while (v20)
  {
LABEL_12:
    v24 = *(v76 + 72);
    sub_22F15CAA0(*(a2 + 48) + v24 * (__clz(__rbit64(v20)) | (v22 << 6)), v16);
    v25 = *v16;
    v26 = v16[1];
    v27 = v77;
    swift_beginAccess();
    v28 = *v27;
    v29 = *(v28 + 16);
    v80 = v24;
    if (!v29 || (v30 = sub_22F1229E8(v25, v26), (v31 & 1) == 0))
    {
      swift_endAccess();
      sub_22F15CAA0(v16, v78);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = a1;
      v49 = v25;
      v50 = v25;
      v51 = v26;
      v53 = sub_22F1229E8(v50, v26);
      v54 = a1[2];
      v55 = (v52 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_38;
      }

      v57 = v52;
      if (a1[3] >= v56)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          a1 = v79;
          if ((v52 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_22F134A90();
          a1 = v79;
          if ((v57 & 1) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        sub_22F126640(v56, isUniquelyReferenced_nonNull_native);
        v58 = sub_22F1229E8(v49, v51);
        if ((v57 & 1) != (v59 & 1))
        {
          goto LABEL_42;
        }

        v53 = v58;
        a1 = v79;
        if ((v57 & 1) == 0)
        {
LABEL_25:
          a1[(v53 >> 6) + 8] |= 1 << v53;
          v60 = (a1[6] + 16 * v53);
          *v60 = v49;
          v60[1] = v51;
          sub_22F15CB04(v78, a1[7] + v53 * v80);
          v61 = a1[2];
          v44 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v44)
          {
            goto LABEL_39;
          }

          a1[2] = v62;
          goto LABEL_5;
        }
      }

      sub_22F1A2A44(v78, a1[7] + v53 * v80);

LABEL_5:
      a2 = v72;
      goto LABEL_6;
    }

    v32 = *(v28 + 56) + v30 * v24;
    v33 = v69;
    sub_22F15CAA0(v32, v69);
    v34 = v33;
    v35 = v70;
    sub_22F15CB04(v34, v70);
    swift_endAccess();
    sub_22F15CAA0(v35, v71);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v79 = a1;
    v37 = v25;
    v38 = v25;
    v39 = v26;
    v40 = sub_22F1229E8(v38, v26);
    v42 = a1[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_40;
    }

    v46 = v41;
    if (a1[3] < v45)
    {
      sub_22F126640(v45, v36);
      v40 = sub_22F1229E8(v37, v39);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_42;
      }

LABEL_28:
      a1 = v79;
      if ((v46 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    if (v36)
    {
      goto LABEL_28;
    }

    v63 = v40;
    sub_22F134A90();
    v40 = v63;
    a1 = v79;
    if ((v46 & 1) == 0)
    {
LABEL_33:
      a1[(v40 >> 6) + 8] |= 1 << v40;
      v64 = (a1[6] + 16 * v40);
      *v64 = v37;
      v64[1] = v39;
      sub_22F15CB04(v71, a1[7] + v40 * v80);
      v65 = a1[2];
      v44 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v44)
      {
        goto LABEL_41;
      }

      a1[2] = v66;
      goto LABEL_35;
    }

LABEL_29:
    sub_22F1A2A44(v71, a1[7] + v40 * v80);

LABEL_35:
    sub_22F15CBD8(v70);
LABEL_6:
    v21 = v74;
    v16 = v75;
    v17 = v73;
    v20 &= v20 - 1;
    sub_22F15CBD8(v75);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return a1;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_12;
    }
  }

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
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F35C2A4(uint64_t *a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v346 = *MEMORY[0x277D85DE8];
  v10 = sub_22F740BB0();
  v297 = *(v10 - 8);
  v298 = v10;
  v11 = *(v297 + 64);
  MEMORY[0x28223BE20](v10);
  v294 = (v261 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_22F740C30();
  v295 = *(v13 - 8);
  v296 = v13;
  v14 = *(v295 + 64);
  MEMORY[0x28223BE20](v13);
  v292 = v261 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v293 = v261 - v17;
  v314 = sub_22F740AD0();
  v300 = *(v314 - 8);
  v18 = *(v300 + 64);
  MEMORY[0x28223BE20](v314);
  v313 = v261 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22F73EEC0();
  v21 = *(v20 - 8);
  v317 = v20;
  v318 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v312 = v261 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = v23;
  MEMORY[0x28223BE20](v24);
  v320 = v261 - v25;
  v26 = sub_22F73EEE0();
  v289 = *(v26 - 8);
  v290 = v26;
  v27 = *(v289 + 64);
  MEMORY[0x28223BE20](v26);
  v288 = (v261 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v302 = (v261 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v306 = v261 - v33;
  v305 = type metadata accessor for Song();
  v316 = *(v305 - 8);
  v34 = *(v316 + 64);
  MEMORY[0x28223BE20](v305);
  v286 = v261 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v285 = v261 - v37;
  MEMORY[0x28223BE20](v38);
  v303 = (v261 - v39);
  MEMORY[0x28223BE20](v40);
  v311 = (v261 - v41);
  v42 = sub_22F740C00();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = v261 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1[1];
  v307 = *a1;
  v308 = v46;
  v47 = a1[3];
  v309 = a1[2];
  v319 = v47;
  v48 = a1[4];
  v315 = a1[5];
  v49 = a1[6];
  v50 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  swift_beginAccess();
  v301 = a2;
  v51 = *(a2 + v50);
  v310 = a3;
  if (v51 != 1)
  {
    a2 = v49;
    if (qword_2810A9460 != -1)
    {
      goto LABEL_113;
    }

    goto LABEL_12;
  }

  v52 = sub_22F7416D0();
  v287 = v53;
  v291 = v54;
  v55 = _s11PhotosGraph19MusicCatalogMonitorC05checkcD11Eligibility16progressReporterSbSo010MAProgressI0C_tFZ_0();
  v283 = v49;
  if ((v55 & 1) == 0)
  {
    v80 = v52;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v81 = sub_22F740B90();
    __swift_project_value_buffer(v81, qword_2810B4D90);
    v82 = sub_22F740B70();
    v83 = sub_22F7415C0();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_22F0FC000, v82, v83, "[MemoriesMusic] Skipping refreshing step because the user is a non-subscriber.", v84, 2u);
      MEMORY[0x2319033A0](v84, -1, -1);
    }

    sub_22F7416A0();
    if (v4)
    {
    }

    else
    {
LABEL_48:

      v120 = v308;
      *a4 = v307;
      a4[1] = v120;
      v121 = v319;
      a4[2] = v309;
      a4[3] = v121;
      v122 = v315;
      a4[4] = v48;
      a4[5] = v122;
      a4[6] = v283;
    }

    goto LABEL_85;
  }

  v271 = v52;
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v56 = qword_2810B4E90;
  *&v57 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - Refreshing", 27, 2u, v57, 0, v56, v342);
  v58 = swift_allocObject();
  v277 = v58;
  *(v58 + 16) = MEMORY[0x277D84F98];
  v272 = (v58 + 16);
  sub_22F740BD0();
  v59 = sub_22F22FB24(v45, 0);
  v60 = v4;
  v281 = a4;
  v282 = v48;
  if (v4)
  {
    v61 = 0;
    v62 = v315;
LABEL_7:
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v63 = sub_22F740B90();
    __swift_project_value_buffer(v63, qword_2810B4D90);
    v64 = v60;
    v65 = sub_22F740B70();
    v66 = sub_22F7415E0();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v338 = v68;
      *v67 = 136315138;
      swift_getErrorValue();
      v69 = sub_22F7420F0();
      v71 = sub_22F145F20(v69, v70, &v338);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_22F0FC000, v65, v66, "[MemoriesMusic] (Refresh) Refreshing failed, returning original election: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v72 = v68;
      v62 = v315;
      MEMORY[0x2319033A0](v72, -1, -1);
      MEMORY[0x2319033A0](v67, -1, -1);
    }

    else
    {
    }

    while (1)
    {
      v85 = v272;
      swift_beginAccess();
      v86 = *v85;
      v87 = *(*v85 + 16);
      if (!v87)
      {
        sub_22F1B2BBC(0);
        sub_22F7416A0();

        if (v61)
        {
        }

        else
        {

          v168 = v307;

          v169 = v308;

          v170 = v309;

          v171 = v319;

          v172 = v282;

          v173 = v283;

          v174 = v281;
          *v281 = v168;
          v174[1] = v169;
          v174[2] = v170;
          v174[3] = v171;
          v174[4] = v172;
          v174[5] = v62;
          v174[6] = v173;
        }

        goto LABEL_85;
      }

      v311 = v61;
      v88 = sub_22F10B35C(v87, 0);
      v320 = (*(v316 + 80) + 32) & ~*(v316 + 80);
      v5 = sub_22F11C534(&v338, v88 + v320, v87, v86);
      a2 = v339;

      sub_22F1534EC();
      if (v5 == v87)
      {
        v89 = sub_22F35FFDC(v88);

        v90 = *(v301 + OBJC_IVAR___PGMusicCuratorContext_cache);
        v91 = v291;
        v92 = v311;
        MusicCache.update(songs:progressReporter:)(v89);
        v5 = v92;
        if (!v92)
        {

          v143 = v319;
          v144 = sub_22F35BDA4(MEMORY[0x277D84F98], v319, v272);
          v318 = 0;
          a4 = (v143 + 56);
          v145 = 1 << *(v143 + 32);
          v146 = -1;
          if (v145 < 64)
          {
            v146 = ~(-1 << v145);
          }

          v48 = v146 & *(v143 + 56);
          a2 = (v145 + 63) >> 6;

          v147 = 0;
          v148 = MEMORY[0x277D84F90];
          while (v48)
          {
            while (1)
            {
              v149 = v303;
LABEL_69:
              v151 = __clz(__rbit64(v48));
              v48 &= v48 - 1;
              v5 = *(v316 + 72);
              sub_22F15CAA0(*(v319 + 48) + v5 * (v151 | (v147 << 6)), v149);
              if (*(v144 + 16))
              {
                v152 = sub_22F1229E8(*v149, v149[1]);
                if (v153)
                {
                  break;
                }
              }

              sub_22F15CBD8(v149);
              if (!v48)
              {
                goto LABEL_64;
              }
            }

            sub_22F15CAA0(*(v144 + 56) + v152 * v5, v286);
            sub_22F15CBD8(v149);
            sub_22F15CB04(v286, v285);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v148 = sub_22F13E558(0, v148[2] + 1, 1, v148);
            }

            v155 = v148[2];
            v154 = v148[3];
            v156 = v155 + 1;
            if (v155 >= v154 >> 1)
            {
              v317 = v155 + 1;
              v157 = sub_22F13E558(v154 > 1, v155 + 1, 1, v148);
              v156 = v317;
              v148 = v157;
            }

            v148[2] = v156;
            sub_22F15CB04(v285, v148 + v320 + v155 * v5);
          }

LABEL_64:
          v149 = v303;
          while (1)
          {
            v150 = v147 + 1;
            if (__OFADD__(v147, 1))
            {
              goto LABEL_111;
            }

            if (v150 >= a2)
            {

              v158 = sub_22F151734(v148);

              v159 = v282;

              v160 = v315;

              v161 = v283;

              sub_22F1B2BBC(0);
              v162 = v318;
              sub_22F7416A0();

              if (v162)
              {
              }

              else
              {

                v178 = v281;
                v179 = v308;
                *v281 = v307;
                v178[1] = v179;
                v178[2] = v309;
                v178[3] = v158;
                v178[4] = v159;
                v178[5] = v160;
                v178[6] = v161;
              }

              goto LABEL_85;
            }

            v48 = a4[v150];
            ++v147;
            if (v48)
            {
              v147 = v150;
              goto LABEL_69;
            }
          }
        }

        goto LABEL_85;
      }

      __break(1u);
LABEL_115:

      if (swift_stdlib_isStackAllocationSafe())
      {

        a4 = v281;
        v48 = v282;
        goto LABEL_29;
      }

      v258 = swift_slowAlloc();
      v259 = v276;
      v260 = sub_22F35EFB8(v258, v273, v319, sub_22F35F888);
      v276 = v259;
      if (v259)
      {

        MEMORY[0x2319033A0](v258, -1, -1);
        __break(1u);
        return;
      }

      v123 = v260;

      MEMORY[0x2319033A0](v258, -1, -1);
      a4 = v281;
      v48 = v282;
LABEL_50:
      v124 = v283;
      v125 = v276;
      if (!*(v123 + 16))
      {

        v163 = v307;

        v164 = v308;

        v165 = v309;

        v166 = v319;

        v167 = v315;

        *a4 = v163;
        a4[1] = v164;
        a4[2] = v165;
        a4[3] = v166;
        a4[4] = v48;
        a4[5] = v167;
        a4[6] = v124;
        goto LABEL_85;
      }

      v126 = sub_22F35BAE8(v123);
      v127 = swift_allocObject();
      *(v127 + 16) = 0;
      v128 = dispatch_group_create();
      dispatch_group_enter(v128);
      static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0xD000000000000021, 0x800000022F79BEE0, &v338);
      v321 = v338;
      v322 = v339;
      v323 = v340;
      v324 = v341;
      v129 = swift_allocObject();
      v130 = v277;
      v129[2] = v123;
      v129[3] = v130;
      v129[4] = v128;
      v129[5] = v127;
      v268 = v127;
      v269 = v126;
      v131 = *(v126 + 16);
      v266 = (v127 + 16);
      v311 = v125;
      if (!v131)
      {
        swift_retain_n();
        swift_retain_n();
        v175 = v128;
        swift_retain_n();
        v176 = v175;
        sub_22F35E7B8(MEMORY[0x277D84F90], 0, v123, v130, v176, v127);

        v62 = v315;
        v177 = v128;
        goto LABEL_107;
      }

      v265 = v129;
      v132 = qword_2810A9B98;
      swift_retain_n();
      swift_retain_n();
      v263 = v128;
      v133 = v128;
      swift_retain_n();
      v262 = v133;
      if (v132 != -1)
      {
        swift_once();
      }

      v134 = qword_2810B4E70;
      *&v135 = CACurrentMediaTime();
      sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v135, 0, v134, v343);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
      v136 = swift_allocObject();
      v137 = &selRef_floatVector;
      v138 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
      *(v136 + 16) = MEMORY[0x277D84F90];
      *(v136 + 24) = v138;
      v284 = v136;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
      v139 = swift_allocObject();
      *(v139 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
      v280 = v139;
      *(v139 + 16) = 0;
      v140 = v139 + 16;
      v48 = v304;
      if (*(v304 + 3) == v267 && *(v304 + 4) == v270 || (sub_22F742040() & 1) != 0)
      {
        v141 = *(v48 + 16);
        Batch = MusicBag.songQueryBatchSize()();
        LODWORD(v278) = 0;
      }

      else
      {
        v181 = *(v48 + 16);
        Batch = MusicBag.songEquivalentQueryBatchSize()();
        LODWORD(v278) = 1;
      }

      if (Batch)
      {
        v261[1] = v140;
        v182 = v269;

        v305 = v131;
        v183 = Batch;
        v184 = Batch;
        v185 = v311;
        v131 = sub_22F233C24(0, v131, v183, v182, v184);
        v137 = v185;

        if (qword_2810A9440 == -1)
        {
          goto LABEL_89;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
LABEL_89:
      v186 = sub_22F740B90();
      __swift_project_value_buffer(v186, qword_2810B4D48);

      v187 = sub_22F740B70();
      v188 = sub_22F7415C0();
      v189 = os_log_type_enabled(v187, v188);
      v311 = v137;
      v261[2] = v123;
      if (v189)
      {
        v190 = swift_slowAlloc();
        *v190 = 134218240;
        *(v190 + 4) = v305;

        *(v190 + 12) = 2048;
        *(v190 + 14) = *(v131 + 16);

        _os_log_impl(&dword_22F0FC000, v187, v188, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v190, 0x16u);
        v191 = v190;
        v48 = v304;
        MEMORY[0x2319033A0](v191, -1, -1);
      }

      else
      {
      }

      v306 = v131;
      v192 = *(v131 + 16);
      v267 = *(&v344 + 1);
      v264 = v345;
      v193 = swift_allocObject();
      v194 = v343[1];
      *(v193 + 16) = v343[0];
      *(v193 + 32) = v194;
      *(v193 + 48) = v344;
      v195 = v287;
      *(v193 + 64) = v345;
      *(v193 + 72) = v195;
      v196 = v265;
      *(v193 + 80) = sub_22F360600;
      *(v193 + 88) = v196;
      a2 = v280;
      v197 = v284;
      *(v193 + 96) = v280;
      *(v193 + 104) = v197;
      type metadata accessor for CompletionCounter();
      v198 = swift_allocObject();
      v198[2] = sub_22F235BF4;
      v198[3] = v193;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
      v199 = swift_allocObject();
      *(v199 + 32) = 0;
      *(v199 + 16) = 0;
      v305 = v192;
      *(v199 + 24) = v192;
      v279 = v198;
      v198[4] = v199;
      v200 = sub_22F73EF30();
      v201 = *(v200 + 48);
      v202 = *(v200 + 52);
      swift_allocObject();

      v203 = v195;

      v204 = sub_22F73EF20();
      if (qword_2810A9168 != -1)
      {
        swift_once();
      }

      v205 = qword_2810A9170;
      v207 = v288;
      v206 = v289;
      *v288 = qword_2810A9170;
      (*(v206 + 104))(v207, *MEMORY[0x277CC86D8], v290);
      v208 = v205;
      sub_22F73EF00();
      v209 = [v203 progressReportersForParallelOperationsWithCount_];
      sub_22F360610();
      v210 = sub_22F741180();

      v289 = v318 + 16;
      v290 = (v300 + 8);
      v288 = (v299 + 7);
      v333 = v210;
      v334 = 0;
      v274 = &v329;
      v275 = v318 + 32;
      v273 = v318 + 8;
      v335 = v306;
      v336 = 0;
      v337 = 0;
      v276 = v204;
      while (1)
      {
        v211 = sub_22F226D78();
        if (!v211)
        {

          goto LABEL_106;
        }

        v213 = v211;
        v214 = v212;
        v215 = *(v48 + 32);
        v216 = *(v48 + 40);
        v217 = *(v48 + 48);
        v218 = *(v48 + 56);
        v219 = *(v48 + 64);
        v327 = *(v48 + 24);
        v328 = v215;
        v329 = v216;
        v330 = v217;
        v331 = v218;
        v332 = v219;
        v325[0] = v321;
        v325[1] = v322;
        v325[2] = v323;
        v326 = v324;

        v220 = v311;
        MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v214, v325, v278, v320);
        if (v220)
        {
          break;
        }

        v306 = v213;
        v311 = 0;

        v221 = swift_allocObject();
        v222 = v284;
        v221[2] = v204;
        v221[3] = v222;
        v221[4] = v279;
        v221[5] = a2;
        v305 = v221;

        sub_22F741740();
        if (qword_2810A8E30 != -1)
        {
          swift_once();
        }

        v223 = v313;
        sub_22F740AC0();
        sub_22F740A90();
        (*v290)(v223, v314);
        v302 = *(v48 + 72);
        v225 = v317;
        v224 = v318;
        v226 = v312;
        (*(v318 + 16))(v312, v320, v317);
        v227 = (*(v224 + 80) + 16) & ~*(v224 + 80);
        v228 = (v288 + v227) & 0xFFFFFFFFFFFFFFF8;
        v229 = (v228 + 63) & 0xFFFFFFFFFFFFFFF8;
        v299 = (v229 + 15) & 0xFFFFFFFFFFFFFFF8;
        v300 = (v229 + 39) & 0xFFFFFFFFFFFFFFF8;
        v230 = (v300 + 15) & 0xFFFFFFFFFFFFFFF8;
        v231 = swift_allocObject();
        (*(v224 + 32))(v231 + v227, v226, v225);
        v232 = v231 + v228;
        v233 = v322;
        *v232 = v321;
        *(v232 + 16) = v233;
        *(v232 + 32) = v323;
        *(v232 + 48) = v324;
        a4 = v305;
        *(v231 + v229) = v304;
        v234 = v231 + v299;
        v235 = v304;
        *v234 = "MusicKitClient HTTP Request";
        *(v234 + 8) = 27;
        *(v234 + 16) = 2;
        v236 = v306;
        *(v231 + v300) = v306;
        v237 = (v231 + v230);
        *v237 = sub_22F235C58;
        v237[1] = a4;
        v238 = swift_allocObject();
        *(v238 + 16) = sub_22F235DC4;
        *(v238 + 24) = v231;
        v331 = sub_22F2915BC;
        v332 = v238;
        v327 = MEMORY[0x277D85DD0];
        v328 = 1107296256;
        v329 = sub_22F2280B0;
        v330 = &block_descriptor_39;
        v5 = _Block_copy(&v327);
        sub_22F1D20B0(&v321, v325);

        v239 = v236;
        v48 = v235;
        v240 = v239;

        dispatch_sync(v302, v5);
        _Block_release(v5);

        (*(v318 + 8))(v320, v317);
        LOBYTE(v235) = swift_isEscapingClosureAtFileLocation();

        a2 = v280;
        v204 = v276;
        if (v235)
        {
          goto LABEL_112;
        }
      }

      [*(a2 + 24) lock];
      swift_beginAccess();
      v241 = *(a2 + 16);
      *(a2 + 16) = v220;

      v242 = *(a2 + 24);
      v243 = v220;
      [v242 unlock];
      v244 = v279;
      v245 = v279[4];

      os_unfair_lock_lock((v245 + 32));
      if (*(v245 + 16))
      {
        os_unfair_lock_unlock((v245 + 32));
      }

      else
      {
        *(v245 + 16) = 1;
        os_unfair_lock_unlock((v245 + 32));

        v247 = v244[3];
        (v244[2])(v246);
      }

      v311 = 0;
LABEL_106:
      v62 = v315;
      v177 = v263;
LABEL_107:

      sub_22F1D210C(&v321);
      v248 = v292;
      sub_22F740C10();
      v249 = v294;
      *v294 = 10000;
      v251 = v297;
      v250 = v298;
      (*(v297 + 104))(v249, *MEMORY[0x277D85178], v298);
      v252 = v293;
      MEMORY[0x2319007F0](v248, v249);
      (*(v251 + 8))(v249, v250);
      v253 = v296;
      v254 = *(v295 + 8);
      v254(v248, v296);
      sub_22F741610();
      v254(v252, v253);
      v255 = v266;
      swift_beginAccess();
      v256 = *v255;
      if (v256)
      {
        swift_willThrow();
        v257 = v256;

        v61 = 0;
        v60 = v256;
        goto LABEL_7;
      }

      v61 = v311;
    }
  }

  v93 = *(v59 + 4);
  v267 = *(v59 + 3);
  v304 = v59;
  v94 = *(v319 + 32);
  v95 = v94 & 0x3F;
  v273 = ((1 << v94) + 63) >> 6;
  v88 = 8 * v273;

  v270 = v93;
  v276 = 0;
  if (v95 > 0xD)
  {
    goto LABEL_115;
  }

LABEL_29:
  v269 = v261;
  MEMORY[0x28223BE20](v96);
  v274 = (v261 - ((v88 + 15) & 0x3FFFFFFFFFFFFFF0));
  bzero(v274, v88);
  v275 = 0;
  v80 = 0;
  v97 = *(v319 + 56);
  v279 = (v319 + 56);
  v98 = 1 << *(v319 + 32);
  v99 = -1;
  if (v98 < 64)
  {
    v99 = ~(-1 << v98);
  }

  v100 = v99 & v97;
  v278 = (v98 + 63) >> 6;
  v101 = v311;
  while (v100)
  {
    v103 = __clz(__rbit64(v100));
    v284 = (v100 - 1) & v100;
LABEL_40:
    v106 = v103 | (v80 << 6);
    v107 = *(v319 + 48);
    v108 = *(v316 + 72);
    v280 = v106;
    sub_22F15CAA0(v107 + v108 * v106, v101);
    v109 = *(v305 + 64);
    v110 = v101 + v109;
    v111 = v306;
    sub_22F13BA9C(v110, v306, &qword_27DAB0920, &qword_22F770B20);
    v5 = sub_22F73F690();
    a2 = *(v5 - 8);
    v112 = *(a2 + 48);
    v113 = v112(v111, 1, v5);
    v114 = v111;
    v101 = v311;
    sub_22F15FCF0(v114);
    if (v113 == 1)
    {
      goto LABEL_32;
    }

    v115 = v302;
    sub_22F13BA9C(v101 + v109, v302, &qword_27DAB0920, &qword_22F770B20);
    if (v112(v115, 1, v5) == 1)
    {
      sub_22F15FCF0(v115);
      goto LABEL_44;
    }

    sub_22F73F600();
    v117 = v116;
    v118 = *(a2 + 8);
    a2 += 8;
    v118(v115, v5);
    if (v117 < -604800.0)
    {
LABEL_32:
      v102 = *(v101 + 96);
      sub_22F15CBD8(v101);
      a4 = v281;
      v48 = v282;
      v100 = v284;
      if (v102)
      {
        *(v274 + ((v280 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(v274 + ((v280 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v280));
        if (__OFADD__(v275++, 1))
        {
          __break(1u);
          goto LABEL_48;
        }
      }
    }

    else
    {
LABEL_44:
      sub_22F15CBD8(v101);
      a4 = v281;
      v48 = v282;
      v100 = v284;
    }
  }

  v104 = v80;
  while (1)
  {
    v80 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      break;
    }

    if (v80 >= v278)
    {
      v123 = sub_22F1B9048(v274, v273, v275, v319);
      goto LABEL_50;
    }

    v105 = v279[v80];
    ++v104;
    if (v105)
    {
      v103 = __clz(__rbit64(v105));
      v284 = (v105 - 1) & v105;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  swift_once();
LABEL_12:
  v73 = sub_22F740B90();
  __swift_project_value_buffer(v73, qword_2810B4D90);
  v74 = sub_22F740B70();
  v75 = sub_22F7415C0();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_22F0FC000, v74, v75, "[MemoriesMusic] Skipping song metadata refresh because not specified, e.g. because on-demand curation.", v76, 2u);
    MEMORY[0x2319033A0](v76, -1, -1);
  }

  sub_22F7416A0();
  if (!v5)
  {
    v77 = v308;
    *a4 = v307;
    a4[1] = v77;
    v78 = v319;
    a4[2] = v309;
    a4[3] = v78;
    v79 = v315;
    a4[4] = v48;
    a4[5] = v79;
    a4[6] = a2;
  }

LABEL_85:
  v180 = *MEMORY[0x277D85DE8];
}

uint64_t static MusicCurator.songsNeedingRefresh(songs:)(uint64_t a1)
{
  v2 = 0;
  v51 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = v39 - v7;
  v8 = type metadata accessor for Song();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a1 + 32);
  v12 = v10 & 0x3F;
  v13 = ((1 << v10) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
    goto LABEL_24;
  }

  do
  {
    v39[1] = v2;
    v39[2] = v39;
    v40 = v13;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v41 = v39 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v14);
    v2 = 0;
    v16 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a1 + 56);
    v42 = 0;
    v43 = (v17 + 63) >> 6;
    v46 = a1;
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v50 = (v19 - 1) & v19;
LABEL_13:
      v23 = v20 | (v2 << 6);
      v24 = *(a1 + 48);
      v25 = *(v47 + 72);
      v45 = v23;
      sub_22F15CAA0(v24 + v25 * v23, v11);
      v13 = v49;
      v26 = *(v48 + 64);
      sub_22F13BA9C(&v11[v26], v49, &qword_27DAB0920, &qword_22F770B20);
      v27 = sub_22F73F690();
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);
      v30 = v29(v13, 1, v27);
      sub_22F15FCF0(v13);
      if (v30 == 1)
      {
        goto LABEL_5;
      }

      v31 = &v11[v26];
      v14 = v44;
      sub_22F13BA9C(v31, v44, &qword_27DAB0920, &qword_22F770B20);
      if (v29(v14, 1, v27) == 1)
      {
        sub_22F15FCF0(v14);
        goto LABEL_17;
      }

      sub_22F73F600();
      v33 = v32;
      (*(v28 + 8))(v14, v27);
      if (v33 < -604800.0)
      {
LABEL_5:
        v14 = v11[96];
        sub_22F15CBD8(v11);
        a1 = v46;
        v19 = v50;
        if (v14)
        {
          *&v41[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
          if (__OFADD__(v42++, 1))
          {
            __break(1u);
LABEL_21:
            result = sub_22F1B9048(v41, v40, v42, a1);
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_17:
        sub_22F15CBD8(v11);
        a1 = v46;
        v19 = v50;
      }
    }

    v21 = v2;
    while (1)
    {
      v2 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v2 >= v43)
      {
        goto LABEL_21;
      }

      v22 = *(v16 + 8 * v2);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v50 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v37 = swift_slowAlloc();
  v38 = sub_22F35EFB8(v37, v13, a1, sub_22F35F888);
  MEMORY[0x2319033A0](v37, -1, -1);
  result = v38;
LABEL_22:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22F35E7B8(char *a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6)
{
  v105 = a4;
  v10 = type metadata accessor for Song();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = (&v94 - v15);
  MEMORY[0x28223BE20](v16);
  v104 = &v94 - v17;
  MEMORY[0x28223BE20](v18);
  v103 = (&v94 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v94 - v21;
  if (a2)
  {
    v108[0] = a1;
    v23 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    sub_22F360674();
    v24 = swift_allocError();
    *v25 = a1;
    *(v25 + 8) = 0;
    swift_beginAccess();
    v26 = *(a6 + 16);
    *(a6 + 16) = v24;
    v27 = a1;

    dispatch_group_leave(a5);
    sub_22F1D20A4(a1, 1);
    return;
  }

  v28 = *(a1 + 2);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v109 = MEMORY[0x277D84F90];
    sub_22F146514(0, v28, 0);
    v29 = v109;
    v30 = a1 + 32;
    do
    {
      memcpy(v108, v30, sizeof(v108));
      memcpy(v107, v30, sizeof(v107));
      sub_22F18C4EC(v108, &v106);
      Song.init(_:)(v107);
      v109 = v29;
      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22F146514(v31 > 1, v32 + 1, 1);
        v29 = v109;
      }

      *(v29 + 16) = v32 + 1;
      sub_22F15CB04(v22, v29 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v32);
      v30 += 296;
      --v28;
    }

    while (v28);
  }

  v33 = sub_22F151734(v29);

  v34 = sub_22F35BAE8(v33);

  v100 = sub_22F35FC90(v35, v34);

  v36 = *(v33 + 16);
  v98 = a5;
  v101 = v11;
  if (!v36)
  {

    goto LABEL_32;
  }

  v37 = v33 + 56;
  v38 = 1 << *(v33 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v33 + 56);
  v41 = (v38 + 63) >> 6;

  v42 = 0;
  v43 = MEMORY[0x277D84F98];
  v95 = v41;
  v96 = v33 + 56;
  v97 = v33;
  while (v40)
  {
LABEL_19:
    v45 = *(v11 + 72);
    v46 = *(v33 + 48) + v45 * (__clz(__rbit64(v40)) | (v42 << 6));
    v47 = v103;
    sub_22F15CAA0(v46, v103);
    v48 = *v47;
    v49 = v47[1];
    sub_22F15CAA0(v47, v104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108[0] = v43;
    v52 = sub_22F1229E8(v48, v49);
    v53 = v43[2];
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_56;
    }

    v56 = v51;
    if (v43[3] >= v55)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v43 = v108[0];
        if (v51)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_22F134A90();
        v43 = v108[0];
        if (v56)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_22F126640(v55, isUniquelyReferenced_nonNull_native);
      v57 = sub_22F1229E8(v48, v49);
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_60;
      }

      v52 = v57;
      v43 = v108[0];
      if (v56)
      {
LABEL_12:
        sub_22F1A2A44(v104, v43[7] + v52 * v45);
        goto LABEL_13;
      }
    }

    v43[(v52 >> 6) + 8] |= 1 << v52;
    v59 = (v43[6] + 16 * v52);
    *v59 = v48;
    v59[1] = v49;
    sub_22F15CB04(v104, v43[7] + v52 * v45);
    v60 = v43[2];
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (v61)
    {
      goto LABEL_58;
    }

    v43[2] = v62;

LABEL_13:
    v40 &= v40 - 1;
    sub_22F15CBD8(v103);
    v11 = v101;
    v37 = v96;
    v33 = v97;
    v41 = v95;
  }

  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v44 >= v41)
    {
      break;
    }

    v40 = *(v37 + 8 * v44);
    ++v42;
    if (v40)
    {
      v42 = v44;
      goto LABEL_19;
    }
  }

  v63 = v105;
  swift_beginAccess();
  v64 = *(v63 + 16);
  *(v63 + 16) = v43;

  a5 = v98;
LABEL_32:
  if (!*(v100 + 16))
  {
LABEL_53:

    dispatch_group_leave(a5);
    return;
  }

  v65 = 0;
  v66 = v100 + 56;
  v67 = 1 << *(v100 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v100 + 56);
  v70 = (v67 + 63) >> 6;
  v104 = v70;
  while (2)
  {
    if (v69)
    {
LABEL_43:
      v75 = *(v101 + 72);
      v76 = v99;
      sub_22F15CAA0(*(v100 + 48) + v75 * (__clz(__rbit64(v69)) | (v65 << 6)), v99);
      v78 = *v76;
      v77 = v76[1];
      v79 = v105;
      swift_beginAccess();
      sub_22F15CB04(v76, v102);

      v80 = *(v79 + 16);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v106 = *(v79 + 16);
      v82 = v106;
      *(v79 + 16) = 0x8000000000000000;
      v83 = sub_22F1229E8(v78, v77);
      v85 = v82[2];
      v86 = (v84 & 1) == 0;
      v61 = __OFADD__(v85, v86);
      v87 = v85 + v86;
      if (v61)
      {
        goto LABEL_57;
      }

      v88 = v84;
      if (v82[3] >= v87)
      {
        if ((v81 & 1) == 0)
        {
          v93 = v83;
          sub_22F134A90();
          v83 = v93;
          if ((v88 & 1) == 0)
          {
            goto LABEL_49;
          }

          goto LABEL_36;
        }
      }

      else
      {
        sub_22F126640(v87, v81);
        v83 = sub_22F1229E8(v78, v77);
        if ((v88 & 1) != (v89 & 1))
        {
          goto LABEL_60;
        }
      }

      if ((v88 & 1) == 0)
      {
LABEL_49:
        v72 = v106;
        v106[(v83 >> 6) + 8] |= 1 << v83;
        v90 = (v72[6] + 16 * v83);
        *v90 = v78;
        v90[1] = v77;
        sub_22F15CB04(v102, v72[7] + v83 * v75);
        v91 = v72[2];
        v61 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v61)
        {
          goto LABEL_59;
        }

        v72[2] = v92;
        goto LABEL_37;
      }

LABEL_36:
      v71 = v83;

      v72 = v106;
      sub_22F1A2A44(v102, v106[7] + v71 * v75);
LABEL_37:
      v69 &= v69 - 1;
      v73 = *(v105 + 16);
      *(v105 + 16) = v72;

      swift_endAccess();
      a5 = v98;
      v70 = v104;
      continue;
    }

    break;
  }

  while (1)
  {
    v74 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v74 >= v70)
    {
      goto LABEL_53;
    }

    v69 = *(v66 + 8 * v74);
    ++v65;
    if (v69)
    {
      v65 = v74;
      goto LABEL_43;
    }
  }

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
  sub_22F7420C0();
  __break(1u);
}

unint64_t *sub_22F35EF1C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22F35FA68(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_22F35EFB8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22F35F358(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_22F35F048(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for Song();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a3 + 32);
  v10 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v28 = v10;
    v30 = &v28;
    MEMORY[0x28223BE20](v7);
    v29 = &v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v11);
    v31 = 0;
    v10 = 0;
    v34 = a3;
    v13 = *(a3 + 56);
    a3 += 56;
    v12 = v13;
    v14 = 1 << *(a3 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v21 = v18 | (v10 << 6);
      sub_22F15CAA0(*(v34 + 48) + *(v32 + 72) * v21, v9);
      v22 = v33(v9);
      sub_22F15CBD8(v9);
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      if (v22)
      {
        *&v29[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_22F1B9048(v29, v28, v31, v34);
          goto LABEL_18;
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_17;
      }

      v20 = *(a3 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_12;
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
  v27 = sub_22F35EFB8(v26, v10, a3, v33);

  result = MEMORY[0x2319033A0](v26, -1, -1);
  if (!v3)
  {
    result = v27;
  }

LABEL_18:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22F35F358(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for Song();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_22F15CAA0(*(v31 + 48) + *(v29 + 72) * v21, v9);
    v22 = v30(v9);
    sub_22F15CBD8(v9);
    if (v4)
    {
      return;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        sub_22F1B9048(v27, v26, v28, v24);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22F35F548(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_22F1B8E24(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_22F35F714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22F35F888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(type metadata accessor for Song() + 64);
  sub_22F13BA9C(a1 + v9, v8, &qword_27DAB0920, &qword_22F770B20);
  v10 = sub_22F73F690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  sub_22F15FCF0(v8);
  if (v13 == 1)
  {
    return *(a1 + 96);
  }

  sub_22F13BA9C(a1 + v9, v5, &qword_27DAB0920, &qword_22F770B20);
  if (v12(v5, 1, v10) == 1)
  {
    sub_22F15FCF0(v5);
  }

  else
  {
    sub_22F73F600();
    v16 = v15;
    (*(v11 + 8))(v5, v10);
    if (v16 < -604800.0)
    {
      return *(a1 + 96);
    }
  }

  return 0;
}

void sub_22F35FA68(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v27 = a2;
  v28 = a1;
  v5 = type metadata accessor for Song();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = 0;
  v9 = 0;
  v33 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = sub_22F15CAA0(*(v33 + 48) + *(v30 + 72) * v20, v8);
    v22 = v8[1];
    v32[0] = *v8;
    v32[1] = v22;
    MEMORY[0x28223BE20](v21);
    *(&v26 - 2) = v32;
    v23 = sub_22F1C0E04(sub_22F1D0468, (&v26 - 4), v31);
    sub_22F15CBD8(v8);
    if ((v23 & 1) == 0)
    {
      *(v28 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_15:
        v25 = v33;

        sub_22F1B9048(v28, v27, v29, v25);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_15;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22F35FC90(uint64_t a1, uint64_t a2)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Song();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v6) = *(a1 + 32);
  v8 = v6 & 0x3F;
  v9 = ((1 << v6) + 63) >> 6;
  v10 = 8 * v9;
  v36 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = &v30;
    v31 = v9;
    MEMORY[0x28223BE20](v11);
    v32 = &v30 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v10);
    v33 = 0;
    v10 = 0;
    v35 = a1;
    v13 = *(a1 + 56);
    a1 += 56;
    v12 = v13;
    v14 = 1 << *(a1 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v9 = (v14 + 63) >> 6;
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v20 = v17 | (v10 << 6);
      v21 = sub_22F15CAA0(*(v35 + 48) + *(v34 + 72) * v20, v7);
      v22 = v7[1];
      v37[0] = *v7;
      v37[1] = v22;
      MEMORY[0x28223BE20](v21);
      *(&v30 - 2) = v37;
      v23 = sub_22F1C0E04(sub_22F15A388, (&v30 - 4), v36);
      sub_22F15CBD8(v7);
      if ((v23 & 1) == 0)
      {
        *&v32[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_22F1B9048(v32, v31, v33, v35);

          goto LABEL_17;
        }
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_16;
      }

      v19 = *(a1 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  v29 = v36;

  v25 = sub_22F35EF1C(v28, v9, a1, v29);

  MEMORY[0x2319033A0](v28, -1, -1);

LABEL_17:
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void *sub_22F35FFDC(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v96 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v68 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  v75 = sub_22F73F690();
  v12 = *(v75 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F680();
  v15 = *(a1 + 16);
  if (v15)
  {
    v72 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v16 = a1 + v72;
    v71 = *(v3 + 72);
    v70 = (v12 + 16);
    v69 = (v12 + 56);
    v17 = MEMORY[0x277D84F90];
    v73 = v12;
    do
    {
      v94 = v16;
      v95 = v15;
      sub_22F15CAA0(v16, v11);
      v18 = *(v11 + 1);
      v92 = *v11;
      v19 = *(v11 + 3);
      v77 = *(v11 + 2);
      v82 = v19;
      v20 = *(v11 + 5);
      v76 = *(v11 + 4);
      v91 = v20;
      v21 = *(v11 + 7);
      v79 = *(v11 + 6);
      v97 = v21;
      v103 = *(v11 + 8);
      v78 = v11[72];
      v81 = *(v11 + 10);
      v80 = v11[88];
      v22 = *(v11 + 23);
      v83 = v11[96];
      v84 = v22;
      v23 = *(v11 + 13);
      v24 = *(v11 + 14);
      v25 = *(v11 + 16);
      v85 = *(v11 + 15);
      v86 = v23;
      v101 = v25;
      v102 = v24;
      v26 = *(v11 + 17);
      v87 = *(v11 + 18);
      v88 = v26;
      sub_22F13BA9C(&v11[v2[15]], &v8[v2[15]], &qword_27DAB0C90, &unk_22F785B70);
      v27 = &v11[v2[26]];
      v28 = *v27;
      v89 = *(v27 + 1);
      v90 = v28;
      v29 = *(v27 + 2);
      v99 = *(v27 + 3);
      v100 = v29;
      v98 = *(v27 + 4);
      v30 = v27[44];
      v31 = *(v27 + 10);
      v93 = v31 | (v30 << 32);
      v32 = v2[16];
      v33 = v75;
      (*v70)(&v8[v32], v74, v75);
      (*v69)(&v8[v32], 0, 1, v33);
      v34 = v2[17];
      v35 = v2[18];
      *(v8 + 2) = v77;
      *(v8 + 4) = v76;
      v37 = v2[19];
      v36 = v2[20];
      *(v8 + 6) = v79;
      v8[72] = v78;
      v39 = v2[21];
      v38 = v2[22];
      *(v8 + 10) = v81;
      v8[88] = v80;
      v40 = v2[23];
      *(v8 + 23) = v84;
      v8[96] = v83;
      v41 = v2[25];
      v42 = v87;
      *(v8 + 13) = v86;
      *(v8 + 15) = v85;
      *v8 = v92;
      *(v8 + 1) = v18;
      *(v8 + 3) = v19;
      *(v8 + 5) = v91;
      *(v8 + 7) = v97;
      *(v8 + 8) = v103;
      *(v8 + 14) = v102;
      v43 = v100;
      *(v8 + 16) = v101;
      *(v8 + 17) = v88;
      *(v8 + 18) = v42;
      v44 = &v8[v2[26]];
      v44[44] = v30;
      v92 = *&v11[v34];
      v45 = v92;
      v46 = &v11[v35];
      *(v44 + 10) = v31;
      LODWORD(v35) = *&v11[v35];
      v47 = v89;
      v48 = v90;
      *v44 = v90;
      *(v44 + 1) = v47;
      *(v44 + 2) = v43;
      *(v44 + 3) = v99;
      *(v44 + 4) = v98;
      *&v8[v2[17]] = v45;
      v49 = &v8[v2[18]];
      *v49 = v35;
      v50 = &v11[v37];
      v49[4] = v46[4];
      LODWORD(v46) = *&v11[v37];
      v51 = &v8[v2[19]];
      *v51 = v46;
      LOBYTE(v46) = v50[4];
      v52 = &v11[v36];
      v51[4] = v46;
      LODWORD(v46) = *&v11[v36];
      v53 = &v8[v2[20]];
      *v53 = v46;
      LOBYTE(v46) = v52[4];
      v54 = &v11[v39];
      v53[4] = v46;
      LODWORD(v46) = *&v11[v39];
      v55 = &v8[v2[21]];
      *v55 = v46;
      LOBYTE(v46) = v54[4];
      v56 = &v11[v38];
      v55[4] = v46;
      LODWORD(v46) = *&v11[v38];
      v57 = &v8[v2[22]];
      *v57 = v46;
      LOBYTE(v46) = v56[4];
      v58 = &v11[v40];
      v57[4] = v46;
      LODWORD(v46) = *&v11[v40];
      v59 = &v8[v2[23]];
      *v59 = v46;
      v60 = &v11[v41];
      v59[4] = v58[4];
      v61 = *v60;
      v62 = *(v60 + 1);
      v8[v2[24]] = 0;
      v63 = &v8[v2[25]];
      *v63 = v61;
      *(v63 + 1) = v62;
      sub_22F15CAA0(v8, v96);

      sub_22F13BB04(v48, v47, v100);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_22F13E558(0, v17[2] + 1, 1, v17);
      }

      v65 = v17[2];
      v64 = v17[3];
      v12 = v73;
      if (v65 >= v64 >> 1)
      {
        v17 = sub_22F13E558(v64 > 1, v65 + 1, 1, v17);
      }

      sub_22F15CBD8(v8);
      sub_22F15CBD8(v11);
      v17[2] = v65 + 1;
      v66 = v71;
      sub_22F15CB04(v96, v17 + v72 + v65 * v71);
      v16 = v94 + v66;
      v15 = v95 - 1;
    }

    while (v95 != 1);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  (*(v12 + 8))(v74, v75);
  return v17;
}

unint64_t sub_22F360610()
{
  result = qword_2810A90B0;
  if (!qword_2810A90B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A90B0);
  }

  return result;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F360674()
{
  result = qword_27DAB3CA0;
  if (!qword_27DAB3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3CA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph12MusicCuratorC12RefreshError33_568E390FF9884D08D41612BA001887D1LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_22F3606E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_22F36073C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v10 = *(a2 + 40);
    sub_22F742170();

    sub_22F740D60();
    v11 = sub_22F7421D0();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(a2 + 48) + 16 * v13);
    v16 = *v15 == v9 && v15[1] == v8;
    if (v16 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_22F360888(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_blocklistConfiguration);
  v4 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_blocklistConfiguration + 8);
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v9[2] = v10;
  if (sub_22F1C0E04(sub_22F15A388, v9, v3))
  {
    v6 = 0;
  }

  else if (v4 && (v7 = a1[8]) != 0)
  {

    v6 = sub_22F36073C(v7, v4);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_22F360944(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v37 = sub_22F740400();
  v5 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v45 = MEMORY[0x277D84F90];
    v10 = v6;
    sub_22F146CF8(0, v8, 0);
    v43 = v45;
    v11 = -1 << *(a3 + 32);
    v41 = a3 + 56;
    v12 = sub_22F741980();
    v13 = 0;
    v35 = v10 + 32;
    v36 = v10;
    v33 = a3 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a3 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v41 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v17 = *(a3 + 36);
      v18 = a3;
      v19 = (*(a3 + 48) + 16 * v12);
      v20 = v19[1];
      v44[0] = *v19;
      v44[1] = v20;

      v38(v44);
      v40 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v21 = v43;
      v45 = v43;
      v23 = *(v43 + 16);
      v22 = *(v43 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22F146CF8(v22 > 1, v23 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v43 = v21;
      (*(v36 + 32))(v21 + v24 + *(v36 + 72) * v23, v42, v37);
      v14 = 1 << *(v18 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v25 = *(v41 + 8 * v16);
      if ((v25 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v18;
      if (v17 != *(v18 + 36))
      {
        goto LABEL_26;
      }

      v26 = v25 & (-2 << (v12 & 0x3F));
      if (v26)
      {
        v14 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
      }

      else
      {
        v27 = v16 << 6;
        v28 = v16 + 1;
        v15 = v34;
        v29 = (v33 + 8 * v16);
        while (v28 < (v14 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_22F107D18(v12, v17, 0);
            v14 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        sub_22F107D18(v12, v17, 0);
      }

LABEL_4:
      ++v13;
      v12 = v14;
      v3 = v40;
      if (v13 == v15)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t sub_22F360C78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_22F742170();

      sub_22F740D60();
      v16 = sub_22F7421D0();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_22F742040() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

PGGraphLocationCityNodeCollection __swiftcall ExtendedTokenCollectionGenerator.generateHomeCityNodes(for:)(PGGraphMomentNodeCollection a1)
{
  isa = a1.super.super.super.super.isa;
  v3 = *(v1 + 16);
  v4 = [v3 meNodeWithFallbackInferredMeNode];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 collection];
    v7 = [v6 homeNodes];

    v8 = [v7 addressNodes];
    v9 = [v8 cityNodes];

    v10 = [(objc_class *)isa cityNodes];
    v11 = [v9 collectionByIntersecting_];
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v12 = sub_22F740B90();
    __swift_project_value_buffer(v12, qword_2810B4D00);
    v13 = v11;
    v14 = sub_22F740B70();
    v15 = sub_22F7415F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = [v13 count];

      _os_log_impl(&dword_22F0FC000, v14, v15, "%ld home cities.", v16, 0xCu);
      MEMORY[0x2319033A0](v16, -1, -1);
    }

    else
    {
    }

    v24 = v13;
  }

  else
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v19 = sub_22F740B90();
    __swift_project_value_buffer(v19, qword_2810B4D00);
    v20 = sub_22F740B70();
    v21 = sub_22F7415F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22F0FC000, v20, v21, "No meNode, so no home location data.", v22, 2u);
      MEMORY[0x2319033A0](v22, -1, -1);
    }

    v23 = objc_allocWithZone(PGGraphLocationCityNodeCollection);

    v24 = [v23 initWithGraph_];
  }

  result.super.super.super.super.super._elementIdentifiers = v18;
  result.super.super.super.super.super._graphReference = v17;
  result.super.super.super.super.super.super.isa = v24;
  return result;
}

uint64_t ExtendedTokenCollectionGenerator.generateLocationExtendedTokens(for:areaInfoByAreaNodeIdentifier:homeCityNodes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v5 = sub_22F740270();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v10 = sub_22F740B90();
  v25[1] = __swift_project_value_buffer(v10, qword_2810B4D00);
  v11 = sub_22F740B70();
  v12 = sub_22F7415C0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22F0FC000, v11, v12, "generateLocationExtendedTokens for collection has started.", v13, 2u);
    MEMORY[0x2319033A0](v13, -1, -1);
  }

  v14 = *MEMORY[0x277D3C2B0];
  v15 = v6[13];
  v15(v9, v14, v5);
  sub_22F3630A8(a1, v9, 5, a3);
  v17 = v16;
  v18 = v6[1];
  v18(v9, v5);
  v15(v9, v14, v5);
  v19 = sub_22F363E90(v26, v9);
  v18(v9, v5);
  v27 = v17;
  sub_22F144B08(v19);
  v20 = v27;
  v21 = sub_22F740B70();
  v22 = sub_22F7415C0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_22F0FC000, v21, v22, "generateLocationExtendedTokens for collection complete.", v23, 2u);
    MEMORY[0x2319033A0](v23, -1, -1);
  }

  return v20;
}

uint64_t ExtendedTokenCollectionGenerator.generateHomeExtendedTokens(for:cityInfoByCityNodeIdentifier:)(void *a1, uint64_t a2)
{
  v4 = sub_22F740270();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  __swift_project_value_buffer(v9, qword_2810B4D00);
  v10 = sub_22F740B70();
  v11 = sub_22F7415C0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22F0FC000, v10, v11, "generateHomeExtendedTokens has started.", v12, 2u);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  if ([a1 count] < 1)
  {
    v23 = sub_22F740B70();
    v24 = sub_22F7415F0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22F0FC000, v23, v24, "No home city location data.", v25, 2u);
      MEMORY[0x2319033A0](v25, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v28 = a2;
  v30 = MEMORY[0x277D84F90];
  v13 = [a1 elementIdentifiers];
  v14 = swift_allocObject();
  *(v14 + 16) = &v30;
  v15 = swift_allocObject();
  v15[2] = sub_22F367B54;
  v15[3] = v14;
  aBlock[4] = sub_22F367B5C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F3618B8;
  aBlock[3] = &block_descriptor_40;
  v16 = _Block_copy(aBlock);

  [v13 enumerateIdentifiersWithBlock_];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D3C2B0], v4);

    v18 = sub_22F36428C(v17, v8, v28);

    (*(v5 + 8))(v8, v4);
    v19 = sub_22F740B70();
    v20 = sub_22F7415C0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22F0FC000, v19, v20, "generateHomeExtendedTokens complete.", v21, 2u);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    aBlock[0] = v18;

    sub_22F361954(aBlock);

    v22 = aBlock[0];

    return v22;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F3618E8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F64CC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_22F364F84(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22F361954(void **a1)
{
  v2 = *(sub_22F740400() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F64E0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22F36508C(v6);
  *a1 = v3;
  return result;
}

uint64_t ExtendedTokenCollectionGenerator.CityInfo.init(numberOfRelevantAssets:numberOfAssetsInAllMoments:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ExtendedTokenCollectionGenerator.CityInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79BF20);
  v3 = sub_22F742010();
  MEMORY[0x231900B10](v3);

  MEMORY[0x231900B10](0xD00000000000001ELL, 0x800000022F79BF40);
  v4 = sub_22F742010();
  MEMORY[0x231900B10](v4);

  return 0;
}

uint64_t ExtendedTokenCollectionGenerator.AreaInfo.init(numberOfRelevantAssets:numberOfAssetsInAllMoments:assetUUIDs:popularityScore:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  return result;
}

uint64_t ExtendedTokenCollectionGenerator.AreaInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79BF20);
  v4 = sub_22F742010();
  MEMORY[0x231900B10](v4);

  MEMORY[0x231900B10](0xD00000000000001ELL, 0x800000022F79BF40);
  v5 = sub_22F742010();
  MEMORY[0x231900B10](v5);

  MEMORY[0x231900B10](0xD000000000000013, 0x800000022F79BF60);
  sub_22F7413B0();
  return 0;
}

void sub_22F361CA4(void *a1@<X0>, uint64_t *a2@<X1>, SEL *a3@<X2>, SEL *a4@<X3>, SEL *a5@<X4>, void *a6@<X8>)
{
  v11 = *a2;
  v12 = objc_opt_self();
  v13 = a1;
  v14 = [v12 *a3];
  v15 = [objc_msgSend(v13 graph)];
  swift_unknownObjectRelease();
  v16 = [v15 concreteGraph];

  if (!v16)
  {
    goto LABEL_5;
  }

  v17 = [v13 elementIdentifiers];
  v18 = [v16 adjacencyWithSources:v17 relation:v14];

  *a6 = v18;
  a6[1] = v16;
  v19 = v13;
  v20 = [v12 *a4];
  v21 = [objc_msgSend(v19 graph)];
  swift_unknownObjectRelease();
  v22 = [v21 concreteGraph];

  if (!v22)
  {
    goto LABEL_5;
  }

  v23 = [v19 elementIdentifiers];
  v24 = [v22 adjacencyWithSources:v23 relation:v20];

  a6[2] = v24;
  a6[3] = v22;
  v25 = [v12 *a5];
  v26 = [objc_msgSend(v19 graph)];
  swift_unknownObjectRelease();
  v27 = [v26 concreteGraph];

  if (v27)
  {
    v28 = [v19 elementIdentifiers];
    v29 = [v27 adjacencyWithSources:v28 relation:v25];

    a6[4] = v29;
    a6[5] = v27;
  }

  else
  {
LABEL_5:
    sub_22F741D40();
    __break(1u);
  }
}

void sub_22F361FB0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (!*(a4 + 16))
  {
    goto LABEL_17;
  }

  v20 = sub_22F1236C4(a1);
  if ((v21 & 1) == 0 || !*(a5 + 16))
  {
    goto LABEL_17;
  }

  v22 = (*(a4 + 56) + 16 * v20);
  v23 = *v22;
  v24 = v22[1];

  v25 = sub_22F1229E8(v23, v24);
  if ((v26 & 1) == 0 || !*(a6 + 16) || (v27 = *(*(a5 + 56) + 8 * v25), , v28 = sub_22F1229E8(v23, v24), v30 = v29, , (v30 & 1) == 0))
  {

LABEL_17:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v38 = sub_22F740B90();
    __swift_project_value_buffer(v38, qword_2810B4D00);
    v39 = a1;
    oslog = sub_22F740B70();
    v40 = sub_22F7415E0();

    if (!os_log_type_enabled(oslog, v40))
    {
      goto LABEL_22;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v39;
    *v42 = v39;
    v43 = v39;
    _os_log_impl(&dword_22F0FC000, oslog, v40, "No momentUUID, assetUUIDs, or numberOfAssetsInMoment for momentNodeAsCollection %@!", v41, 0xCu);
    sub_22F2A87F0(v42);
    MEMORY[0x2319033A0](v42, -1, -1);
    v37 = v41;
    goto LABEL_21;
  }

  v31 = *(*(a6 + 56) + 8 * v28);
  v32 = *(v27 + 16);
  if (v32)
  {
    v33 = v31 < 1;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v34 = sub_22F740B90();
    __swift_project_value_buffer(v34, qword_2810B4D00);
    oslog = sub_22F740B70();
    v35 = sub_22F7415E0();
    if (!os_log_type_enabled(oslog, v35))
    {
      goto LABEL_22;
    }

    v36 = swift_slowAlloc();
    *v36 = 134218240;
    *(v36 + 4) = v32;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v31;
    _os_log_impl(&dword_22F0FC000, oslog, v35, "No retrieved %ld or total assets %ld in moment.", v36, 0x16u);
    v37 = v36;
LABEL_21:
    MEMORY[0x2319033A0](v37, -1, -1);
LABEL_22:

    return;
  }

  v44 = [a2 elementIdentifiers];
  v45 = [a7 targetsForSources_];

  v46 = [objc_allocWithZone(PGGraphLocationCityNodeCollection) initWithGraph:a8 elementIdentifiers:v45];
  v47 = swift_allocObject();
  v47[2] = v32;
  v47[3] = v31;
  v47[4] = v27;
  v47[5] = a9;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_22F369048;
  *(v48 + 24) = v47;
  v62 = sub_22F20AE34;
  v63 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_22F107F34;
  v61 = &block_descriptor_38;
  v49 = _Block_copy(&aBlock);

  [v46 enumerateIdentifiersAsCollectionsWithBlock_];
  _Block_release(v49);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return;
  }

  if (a10)
  {
    v51 = [a2 elementIdentifiers];
    v52 = [a11 targetsForSources_];

    v53 = [objc_allocWithZone(PGGraphAreaNodeCollection) initWithGraph:a12 elementIdentifiers:v52];
    v54 = swift_allocObject();
    v54[2] = v32;
    v54[3] = v31;
    v54[4] = v27;
    v54[5] = a13;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_22F369054;
    *(v55 + 24) = v54;
    v62 = sub_22F369060;
    v63 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_22F3627FC;
    v61 = &block_descriptor_47_0;
    v56 = _Block_copy(&aBlock);

    [v53 enumeratePopularityScoresUsingBlock_];

    _Block_release(v56);
    LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

    if ((v53 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

unint64_t sub_22F362600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{

  v12 = sub_22F1515F8(a6);

  v13 = *a7;
  if (!*(*a7 + 16))
  {
    goto LABEL_6;
  }

  result = sub_22F122B68(a1);
  if ((v15 & 1) == 0)
  {
    goto LABEL_6;
  }

  v16 = (*(v13 + 56) + 24 * result);
  v17 = __OFADD__(a4, *v16);
  a4 += *v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v18 = v16[1];
    v17 = __OFADD__(a5, v18);
    a5 += v18;
    if (!v17)
    {
      v19 = v16[2];

      v12 = sub_22F144608(v20, v12);
LABEL_6:
      v21 = *a7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *a7;
      *a7 = 0x8000000000000000;
      result = sub_22F1309B4(a4, a5, v12, a1, isUniquelyReferenced_nonNull_native);
      *a7 = v23;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22F3626F8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{

  v13 = sub_22F1515F8(a6);

  v14 = *a7;
  if (!*(*a7 + 16))
  {
    goto LABEL_6;
  }

  result = sub_22F122B68(a1);
  if ((v16 & 1) == 0)
  {
    goto LABEL_6;
  }

  v17 = (*(v14 + 56) + 32 * result);
  v18 = __OFADD__(a4, *v17);
  a4 += *v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v19 = v17[1];
    v18 = __OFADD__(a5, v19);
    a5 += v19;
    if (!v18)
    {
      v20 = v17[2];

      v13 = sub_22F144608(v21, v13);
LABEL_6:
      v22 = *a7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *a7;
      *a7 = 0x8000000000000000;
      result = sub_22F13300C(a4, a5, v13, a1, isUniquelyReferenced_nonNull_native, a2);
      *a7 = v24;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22F36282C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22F740020();
  v5 = *(v4 - 8);
  v75 = v4;
  v76 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F7404D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_22F7403B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v66 - v19;
  v71 = a1;
  v21 = sub_22F73FD40();
  if (!*(v21 + 16))
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v38 = sub_22F740B90();
    __swift_project_value_buffer(v38, qword_2810B4D00);
    v39 = sub_22F740B70();
    v40 = sub_22F7415E0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22F0FC000, v39, v40, "The query token does not have any suggestions", v41, 2u);
      MEMORY[0x2319033A0](v41, -1, -1);
    }

    goto LABEL_19;
  }

  (*(v14 + 16))(v18, v21 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);

  (*(v14 + 32))(v20, v18, v13);
  v70 = v20;
  sub_22F7403A0();
  if ((*(v9 + 88))(v12, v8) != *MEMORY[0x277D3C510])
  {
    (*(v9 + 8))(v12, v8);
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v42 = sub_22F740B90();
    __swift_project_value_buffer(v42, qword_2810B4D00);
    v43 = sub_22F740B70();
    v44 = sub_22F7415E0();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v70;
    if (v45)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_22F0FC000, v43, v44, "The query token is not a location token", v47, 2u);
      MEMORY[0x2319033A0](v47, -1, -1);
    }

    (*(v14 + 8))(v46, v13);
LABEL_19:
    v48 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v67 = v14;
  v68 = v13;
  v69 = a2;
  (*(v9 + 96))(v12, v8);
  v23 = *v12;
  v22 = v12[1];

  v24 = *(v23 + 16);
  if (v24)
  {
    v77 = MEMORY[0x277D84F90];
    sub_22F146454(0, v24, 0);
    v25 = v77;
    v26 = *(v76 + 16);
    v27 = *(v76 + 80);
    v66[1] = v23;
    v28 = v23 + ((v27 + 32) & ~v27);
    v72 = *(v76 + 72);
    v73 = v26;
    v76 += 16;
    v29 = (v76 - 8);
    do
    {
      v30 = v74;
      v31 = v75;
      v73(v74, v28, v75);
      v32 = sub_22F740010();
      v34 = v33;
      (*v29)(v30, v31);
      v77 = v25;
      v36 = *(v25 + 16);
      v35 = *(v25 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22F146454((v35 > 1), v36 + 1, 1);
        v25 = v77;
      }

      *(v25 + 16) = v36 + 1;
      v37 = v25 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v28 += v72;
      --v24;
    }

    while (v24);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F771340;
  *(inited + 32) = sub_22F73FD50();
  *(inited + 40) = v50;
  v77 = v25;
  sub_22F144A14(inited);
  v51 = v77;
  v52 = *(v77 + 16);
  if (v52)
  {
    v79 = MEMORY[0x277D84F90];
    sub_22F146454(0, v52, 0);
    v53 = v79;
    sub_22F160DE4();
    v54 = (v51 + 40);
    do
    {
      v55 = *v54;
      v77 = *(v54 - 1);
      v78 = v55;
      v56 = sub_22F7418C0();
      v79 = v53;
      v59 = *(v53 + 16);
      v58 = *(v53 + 24);
      if (v59 >= v58 >> 1)
      {
        v76 = v56;
        v61 = v57;
        sub_22F146454((v58 > 1), v59 + 1, 1);
        v57 = v61;
        v56 = v76;
        v53 = v79;
      }

      *(v53 + 16) = v59 + 1;
      v60 = v53 + 16 * v59;
      *(v60 + 32) = v56;
      *(v60 + 40) = v57;
      v54 += 2;
      --v52;
    }

    while (v52);
  }

  else
  {

    v53 = MEMORY[0x277D84F90];
  }

  v62 = sub_22F1515F8(v53);

  v63 = v71;
  v64 = sub_22F73FD90();
  v65 = MEMORY[0x28223BE20](v64);
  v66[-2] = v63;
  v66[-1] = v65;
  v48 = sub_22F360944(sub_22F368F6C, &v66[-4], v62);

  (*(v67 + 8))(v70, v68);
  a2 = v69;
LABEL_29:
  *a2 = v48;
}

uint64_t sub_22F362F60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22F740270();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v10 = a1[1];
  swift_bridgeObjectRetain_n();
  *v9 = sub_22F73FD80();
  (*(v6 + 104))(v9, *MEMORY[0x277D3C2B8], v5);
  result = sub_22F7403F0();
  if (a3)
  {
    if (*(a3 + 16))
    {

      return sub_22F7403D0();
    }
  }

  return result;
}

void sub_22F3630A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2810A9B10 != -1)
  {
LABEL_92:
    swift_once();
  }

  v7 = qword_2810B4E10;
  *&v8 = CACurrentMediaTime();
  sub_22F1B560C("ExtendedTokenGenerator: sortAndCreateLocationExtendedTokens", 59, 2u, v8, 0, v7, v127);
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  __swift_project_value_buffer(v9, qword_2810B4D00);

  v10 = sub_22F740B70();
  v11 = sub_22F7415F0();

  v122 = a4;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v125[0] = v13;
    *v12 = 136380675;
    type metadata accessor for KGElementIdentifier(0);
    sub_22F36892C();
    v14 = sub_22F740CB0();
    v16 = sub_22F145F20(v14, v15, v125);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22F0FC000, v10, v11, "unfilteredCityInfoByCityNodeIdentifier: %{private}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2319033A0](v13, -1, -1);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  a4 = _s11PhotosGraph32ExtendedTokenCollectionGeneratorC016filterCityInfoByH14NodeIdentifier3forSDySo09KGElementL0VAC0hI0VGAJ_tFZ_0(a1);
  v126 = a4;

  v17 = sub_22F740B70();
  v18 = sub_22F7415F0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218240;
    *(v19 + 4) = *(a1 + 16);

    *(v19 + 12) = 2048;
    *(v19 + 14) = *(a4 + 16);
    _os_log_impl(&dword_22F0FC000, v17, v18, "%ld cities filtered to %ld cities by removing cities that are complete subsets of other cities.", v19, 0x16u);
    MEMORY[0x2319033A0](v19, -1, -1);
  }

  else
  {
  }

  v20 = sub_22F740B70();
  v21 = sub_22F7415F0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v125[0] = v23;
    *v22 = 136380675;
    type metadata accessor for KGElementIdentifier(0);
    sub_22F36892C();

    v24 = sub_22F740CB0();
    v26 = v25;

    v27 = sub_22F145F20(v24, v26, v125);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_22F0FC000, v20, v21, "cityInfoByCityNodeIdentifier after filter: %{private}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x2319033A0](v23, -1, -1);
    MEMORY[0x2319033A0](v22, -1, -1);
  }

  v28 = 0;
  v29 = 0;
  a1 = a4 + 64;
  v30 = 1 << *(a4 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a4 + 64);
  do
  {
    if (!v32)
    {
      while (1)
      {
        v33 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v33 >= ((v30 + 63) >> 6))
        {
          goto LABEL_23;
        }

        v32 = *(a1 + 8 * v33);
        ++v28;
        if (v32)
        {
          v28 = v33;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v33 = v28;
LABEL_20:
    v34 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v35 = *(*(a4 + 56) + 24 * (v34 | (v33 << 6)) + 8);
    v36 = __OFADD__(v29, v35);
    v29 += v35;
  }

  while (!v36);
  __break(1u);
LABEL_23:
  if (v29 >= 1)
  {
    v37 = v29;
    [objc_opt_self() minimumCumulativeDistributionOfCityFrequency];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3CB8, &unk_22F788770);
    v38 = sub_22F741DC0();
    v39 = 0;
    v40 = 1 << *(a4 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(a4 + 64);
    v43 = (v40 + 63) >> 6;
    if (v42)
    {
      while (1)
      {
        v44 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
        v45 = v44 | (v39 << 6);
LABEL_33:
        v48 = *(*(a4 + 48) + 8 * v45);
        v49 = *(*(a4 + 56) + 24 * v45);
        *(v38 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v45;
        *(v38[6] + 8 * v45) = v48;
        *(v38[7] + 8 * v45) = v49 / v37;
        v50 = v38[2];
        v36 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v36)
        {
          break;
        }

        v38[2] = v51;
        if (!v42)
        {
          goto LABEL_28;
        }
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

LABEL_28:
    v46 = v39;
    while (1)
    {
      v39 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_88;
      }

      if (v39 >= v43)
      {
        break;
      }

      v47 = *(a1 + 8 * v39);
      ++v46;
      if (v47)
      {
        v42 = (v47 - 1) & v47;
        v45 = __clz(__rbit64(v47)) | (v39 << 6);
        goto LABEL_33;
      }
    }

    type metadata accessor for KGElementIdentifier(0);
    v53 = v52;
    sub_22F36892C();
    v54 = sub_22F7405B0();
    v55 = sub_22F740B70();
    v56 = sub_22F7415F0();
    v121 = a2;
    if (os_log_type_enabled(v55, v56))
    {
      v120 = v53;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v125[0] = v58;
      *v57 = 136380675;
      v59 = MEMORY[0x231900D40](v54, v120);
      v61 = sub_22F145F20(v59, v60, v125);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_22F0FC000, v55, v56, "City gaussian locations: %{private}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x2319033A0](v58, -1, -1);
      v62 = v57;
      v53 = v120;
      MEMORY[0x2319033A0](v62, -1, -1);
    }

    v63 = *(v54 + 16);
    a2 = a3 - v63;
    if (!__OFSUB__(a3, v63))
    {
      if (a2 < 1)
      {

        v67 = sub_22F740B70();
        v78 = sub_22F7415F0();
        if (!os_log_type_enabled(v67, v78))
        {
          goto LABEL_54;
        }

        v69 = swift_slowAlloc();
        *v69 = 0;
        v70 = "Maximum number of cities achieved, no need to re run for new gaussian results";
      }

      else if (v63 && (v64 = *(v54 + 32), v65 = [v122 elementIdentifiers], v66 = objc_msgSend(v65, sel_containsIdentifier_, v64), v65, v66))
      {
        if (*(a4 + 16) < 3uLL)
        {

          v67 = sub_22F740B70();
          v68 = sub_22F7415F0();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 134217984;
            *(v69 + 4) = *(a4 + 16);
            v70 = "Not enough non-home cities (%ld < 3), no need to re run for new gaussian results";
            v71 = v68;
            v72 = v67;
            v73 = v69;
            v74 = 12;
LABEL_53:
            _os_log_impl(&dword_22F0FC000, v72, v71, v70, v73, v74);
            MEMORY[0x2319033A0](v69, -1, -1);
          }

LABEL_54:

          sub_22F36428C(v54, v121, a4);

          swift_bridgeObjectRelease_n();
          sub_22F1B2BBC(0);

          return;
        }

        v79 = sub_22F740B70();
        v80 = sub_22F7415F0();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = v64;
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_22F0FC000, v79, v80, "Re running distribution without home", v82, 2u);
          v83 = v82;
          v64 = v81;
          MEMORY[0x2319033A0](v83, -1, -1);
        }

        swift_beginAccess();
        sub_22F2B7160(v64, v125);
        swift_endAccess();

        v84 = 0;
        v85 = 0;
        a4 = v126;
        v86 = 1 << *(v126 + 32);
        v87 = -1;
        if (v86 < 64)
        {
          v87 = ~(-1 << v86);
        }

        a1 = v126 + 64;
        v88 = v87 & *(v126 + 64);
        v89 = (v86 + 63) >> 6;
        do
        {
          if (!v88)
          {
            while (1)
            {
              v90 = v84 + 1;
              if (__OFADD__(v84, 1))
              {
                goto LABEL_90;
              }

              if (v90 >= v89)
              {
                goto LABEL_69;
              }

              v88 = *(a1 + 8 * v90);
              ++v84;
              if (v88)
              {
                v84 = v90;
                goto LABEL_66;
              }
            }
          }

          v90 = v84;
LABEL_66:
          v91 = __clz(__rbit64(v88));
          v88 &= v88 - 1;
          v92 = *(*(v126 + 56) + 24 * (v91 | (v90 << 6)) + 8);
          v36 = __OFADD__(v85, v92);
          v85 += v92;
        }

        while (!v36);
        __break(1u);
LABEL_69:
        if (v85 >= 1)
        {
          v93 = v85;

          v94 = sub_22F741DC0();
          v95 = 0;
          v96 = 1 << *(a4 + 32);
          v97 = -1;
          if (v96 < 64)
          {
            v97 = ~(-1 << v96);
          }

          v98 = v97 & *(a4 + 64);
          v99 = (v96 + 63) >> 6;
          if (!v98)
          {
LABEL_74:
            v102 = v95;
            while (1)
            {
              v95 = v102 + 1;
              if (__OFADD__(v102, 1))
              {
                goto LABEL_91;
              }

              if (v95 >= v99)
              {
                v124 = v64;

                v108 = sub_22F7405B0();

                v109 = sub_22F740B70();
                v110 = sub_22F7415F0();

                if (os_log_type_enabled(v109, v110))
                {
                  v111 = swift_slowAlloc();
                  v112 = swift_slowAlloc();
                  v113 = v53;
                  v114 = v112;
                  v125[0] = v112;
                  *v111 = 136380675;
                  v115 = MEMORY[0x231900D40](v108, v113);
                  v117 = sub_22F145F20(v115, v116, v125);

                  *(v111 + 4) = v117;
                  _os_log_impl(&dword_22F0FC000, v109, v110, "City gaussian locations without home: %{private}s", v111, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v114);
                  MEMORY[0x2319033A0](v114, -1, -1);
                  MEMORY[0x2319033A0](v111, -1, -1);
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0EC0, &unk_22F771510);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_22F771340;
                *(inited + 32) = v124;
                v125[0] = inited;
                sub_22F144B34(v108);
                v119 = v125[0];

                sub_22F36428C(v119, v121, a4);

                sub_22F1B2BBC(0);

                return;
              }

              v103 = *(a1 + 8 * v95);
              ++v102;
              if (v103)
              {
                v98 = (v103 - 1) & v103;
                v101 = __clz(__rbit64(v103)) | (v95 << 6);
                goto LABEL_79;
              }
            }
          }

          while (1)
          {
            v100 = __clz(__rbit64(v98));
            v98 &= v98 - 1;
            v101 = v100 | (v95 << 6);
LABEL_79:
            v104 = *(*(a4 + 48) + 8 * v101);
            v105 = *(*(a4 + 56) + 24 * v101);
            *(v94 + ((v101 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v101;
            *(v94[6] + 8 * v101) = v104;
            *(v94[7] + 8 * v101) = v105 / v93;
            v106 = v94[2];
            v36 = __OFADD__(v106, 1);
            v107 = v106 + 1;
            if (v36)
            {
              goto LABEL_94;
            }

            v94[2] = v107;
            if (!v98)
            {
              goto LABEL_74;
            }
          }
        }

        v67 = sub_22F740B70();
        v78 = sub_22F7415E0();
        if (!os_log_type_enabled(v67, v78))
        {
          goto LABEL_54;
        }

        v69 = swift_slowAlloc();
        *v69 = 0;
        v70 = "totalAssets was 0 during re run! This is not possible at this point!";
      }

      else
      {

        v67 = sub_22F740B70();
        v78 = sub_22F7415F0();
        if (!os_log_type_enabled(v67, v78))
        {
          goto LABEL_54;
        }

        v69 = swift_slowAlloc();
        *v69 = 0;
        v70 = "Home city is not top result, no need to re run for new gaussian results";
      }

      v71 = v78;
      v72 = v67;
      v73 = v69;
      v74 = 2;
      goto LABEL_53;
    }

    __break(1u);
LABEL_94:
    __break(1u);
    return;
  }

  v75 = sub_22F740B70();
  v76 = sub_22F7415E0();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_22F0FC000, v75, v76, "totalAssets was 0! This is not possible at this point!", v77, 2u);
    MEMORY[0x2319033A0](v77, -1, -1);
  }

  sub_22F1B2BBC(0);
}

void *sub_22F363E90(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  if ([v4 useAOIsInExtendedTokens])
  {
    v5 = 0;
    v6 = 0;
    v7 = a1 + 64;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = v5;
LABEL_11:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = *(*(a1 + 56) + ((v12 << 11) | (32 * v13)) + 8);
      v15 = __OFADD__(v6, v14);
      v6 += v14;
      if (v15)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v12);
      ++v5;
      if (v10)
      {
        v5 = v12;
        goto LABEL_11;
      }
    }

    if (v6 >= 1)
    {
      v21 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3CB8, &unk_22F788770);
      v22 = sub_22F741DC0();
      v23 = 0;
      v24 = 1 << *(a1 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(a1 + 64);
      for (i = (v24 + 63) >> 6; v26; v22[2] = v37)
      {
        v28 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v29 = v28 | (v23 << 6);
LABEL_27:
        v32 = *(*(a1 + 48) + 8 * v29);
        v33 = *(a1 + 56) + 32 * v29;
        v34 = *(v33 + 24);
        v35 = *v33 / v21;
        *(v22 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v29;
        *(v22[6] + 8 * v29) = v32;
        *(v22[7] + 8 * v29) = v34 * v35;
        v36 = v22[2];
        v15 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v15)
        {
          goto LABEL_39;
        }
      }

      v30 = v23;
      while (1)
      {
        v23 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v23 >= i)
        {
          [v4 minimumCumulativeDistributionOfAreaFrequency];
          type metadata accessor for KGElementIdentifier(0);
          sub_22F36892C();
          v38 = sub_22F7405B0();

          v39 = sub_22F3648CC(v38, a2, a1);

          return v39;
        }

        v31 = *(v7 + 8 * v23);
        ++v30;
        if (v31)
        {
          v26 = (v31 - 1) & v31;
          v29 = __clz(__rbit64(v31)) | (v23 << 6);
          goto LABEL_27;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v41 = sub_22F740B90();
    __swift_project_value_buffer(v41, qword_2810B4D00);
    v17 = sub_22F740B70();
    v18 = sub_22F7415E0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "totalAssets was 0! This is not possible at this point!";
      goto LABEL_35;
    }
  }

  else
  {
LABEL_14:
    if (qword_2810A9418 != -1)
    {
LABEL_40:
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4D00);
    v17 = sub_22F740B70();
    v18 = sub_22F7415F0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "useAOIsInExtendedTokens is false, so skipping area location generation.";
LABEL_35:
      _os_log_impl(&dword_22F0FC000, v17, v18, v20, v19, 2u);
      MEMORY[0x2319033A0](v19, -1, -1);
    }
  }

  return MEMORY[0x277D84F90];
}

void *sub_22F36428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      [v7 addIdentifier_];
      --v8;
    }

    while (v8);
  }

  v11 = [objc_allocWithZone(PGGraphLocationCityNodeCollection) initWithGraph:*(v3 + 16) elementIdentifiers:v7];
  sub_22F361CA4(v11, off_27887AF70, &selRef_countyOfCity, &selRef_stateOfCity, &selRef_countryOfCity, v16);
  MEMORY[0x28223BE20](v12);
  v15[2] = v3;
  v15[3] = v16;
  v15[4] = a3;
  v15[5] = a2;
  v13 = sub_22F2CFE8C(sub_22F368320, v15, a1);

  sub_22F368340(v16);
  return v13;
}

uint64_t sub_22F3643DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v52 = a6;
  v10 = sub_22F740270();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a2 + 16);
  v17 = objc_allocWithZone(MEMORY[0x277D22BB0]);
  v18 = v16;
  v19 = [v17 initWithElementIdentifier_];
  v20 = [objc_allocWithZone(PGGraphLocationCityNodeCollection) initWithGraph:v18 elementIdentifiers:v19];

  v21 = a3[1];
  v49 = *a3;
  v50 = v21;
  v51 = a3[2];
  v22 = sub_22F368370(v20, &v49);
  if (!v22)
  {
LABEL_9:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v31 = sub_22F740B90();
    __swift_project_value_buffer(v31, qword_2810B4D00);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_19;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Location hierarchy from city node doesn't have expected city component!";
LABEL_18:
    _os_log_impl(&dword_22F0FC000, v32, v33, v35, v34, 2u);
    MEMORY[0x2319033A0](v34, -1, -1);
LABEL_19:

    v37 = sub_22F740400();
    return (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
  }

  if (!*(v22 + 2))
  {
LABEL_8:

    goto LABEL_9;
  }

  if (!*(a4 + 16))
  {
LABEL_14:

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D00);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_19;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Assets expected from city node!";
    goto LABEL_18;
  }

  v24 = *(v22 + 4);
  v23 = *(v22 + 5);
  v46 = v22;

  v25 = sub_22F122B68(v15);
  if ((v26 & 1) == 0)
  {

    goto LABEL_14;
  }

  v44 = v24;
  v45 = v23;
  v27 = *(*(a4 + 56) + 24 * v25 + 16);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = sub_22F10B348(*(v27 + 16), 0);
    v30 = sub_22F11A438(&v49, v29 + 4, v28, v27);
    v42[1] = *(&v50 + 1);
    v43 = v30;
    v42[0] = v51;

    sub_22F0FF590();
    if (v43 != v28)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  *&v49 = v29;

  v39 = v48;
  sub_22F1AB0EC(&v49);
  if (v39)
  {

    __break(1u);
  }

  else
  {

    *&v49 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F15A2C0();
    sub_22F740DA0();

    (*(v11 + 16))(v14, v47, v10);
    v40 = v52;
    sub_22F7403F0();

    v41 = sub_22F740400();
    return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  return result;
}

BOOL sub_22F3648A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_22F741770() > 0;
}

void *sub_22F3648CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      [v7 addIdentifier_];
      --v8;
    }

    while (v8);
  }

  v11 = [objc_allocWithZone(PGGraphAreaNodeCollection) initWithGraph:*(v3 + 16) elementIdentifiers:v7];
  sub_22F361CA4(v11, off_27887ABD8, &selRef_countyOfArea, &selRef_stateOfArea, &selRef_countryOfArea, v16);
  MEMORY[0x28223BE20](v12);
  v15[2] = v3;
  v15[3] = v16;
  v15[4] = a3;
  v15[5] = a2;
  v13 = sub_22F2CFE8C(sub_22F368984, v15, a1);

  sub_22F3689A4(v16);
  return v13;
}

uint64_t sub_22F364A1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v52 = a6;
  v10 = sub_22F740270();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a2 + 16);
  v17 = objc_allocWithZone(MEMORY[0x277D22BB0]);
  v18 = v16;
  v19 = [v17 initWithElementIdentifier_];
  v20 = [objc_allocWithZone(PGGraphAreaNodeCollection) initWithGraph:v18 elementIdentifiers:v19];

  v21 = a3[1];
  v49 = *a3;
  v50 = v21;
  v51 = a3[2];
  v22 = sub_22F3689D4(v20, &v49);
  if (!v22)
  {
LABEL_9:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v31 = sub_22F740B90();
    __swift_project_value_buffer(v31, qword_2810B4D00);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_19;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Location hierarchy from area node doesn't have expected area component!";
LABEL_18:
    _os_log_impl(&dword_22F0FC000, v32, v33, v35, v34, 2u);
    MEMORY[0x2319033A0](v34, -1, -1);
LABEL_19:

    v37 = sub_22F740400();
    return (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
  }

  if (!*(v22 + 2))
  {
LABEL_8:

    goto LABEL_9;
  }

  if (!*(a4 + 16))
  {
LABEL_14:

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D00);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_19;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Location should have assetUUIDs";
    goto LABEL_18;
  }

  v24 = *(v22 + 4);
  v23 = *(v22 + 5);
  v46 = v22;

  v25 = sub_22F122B68(v15);
  if ((v26 & 1) == 0)
  {

    goto LABEL_14;
  }

  v44 = v24;
  v45 = v23;
  v27 = *(*(a4 + 56) + 32 * v25 + 16);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = sub_22F10B348(*(v27 + 16), 0);
    v30 = sub_22F11A438(&v49, v29 + 4, v28, v27);
    v42[1] = *(&v50 + 1);
    v43 = v30;
    v42[0] = v51;

    sub_22F0FF590();
    if (v43 != v28)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  *&v49 = v29;

  v39 = v48;
  sub_22F1AB0EC(&v49);
  if (v39)
  {

    __break(1u);
  }

  else
  {

    *&v49 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F15A2C0();
    sub_22F740DA0();

    (*(v11 + 16))(v14, v47, v10);
    v40 = v52;
    sub_22F7403F0();

    v41 = sub_22F740400();
    return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  return result;
}

uint64_t sub_22F364ED8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((result & 1) == 0)
  {
    result = sub_22F13E910(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_22F13E910((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 8 * v8 + 32) = a1;
  return result;
}

uint64_t sub_22F364F84(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F742000();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10C8, &qword_22F771508);
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F3655AC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22F3651B8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F36508C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22F742000();
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
        sub_22F740400();
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22F740400() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F365BF0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22F3652A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F3651B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 32 * v4 + 8);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = *(v11 - 24);
      if (v9 == v12)
      {
        v13 = *(v11 - 32);
        v14 = *v11;
        result = sub_22F741770();
        if (result < 1)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_4;
      }

      if (!v6)
      {
        break;
      }

      v15 = *v11;
      v16 = *(v11 + 24);
      v17 = *(v11 + 8);
      v18 = *(v11 - 16);
      *v11 = *(v11 - 32);
      *(v11 + 16) = v18;
      *(v11 - 24) = v17;
      *(v11 - 8) = v16;
      *(v11 - 32) = v15;
      v11 -= 32;
      v9 = v17;
      if (__CFADD__(v10++, 1))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F3652A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F740400();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_22F7403E0();
      v28 = v27;
      if (v26 == sub_22F7403E0() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_22F742040();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F3655AC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_98:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_130:
      result = sub_22F3F5F98(v9);
      v9 = result;
    }

    v99 = *(v9 + 2);
    if (v99 >= 2)
    {
      while (*v6)
      {
        v100 = *&v9[16 * v99];
        v101 = *&v9[16 * v99 + 24];
        sub_22F3667AC((*v6 + 32 * v100), (*v6 + 32 * *&v9[16 * v99 + 16]), (*v6 + 32 * v101), v5);
        if (v4)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v99 - 2 >= *(v9 + 2))
        {
          goto LABEL_124;
        }

        v102 = &v9[16 * v99];
        *v102 = v100;
        *(v102 + 1) = v101;
        result = sub_22F3F5F0C(v99 - 1);
        v99 = *(v9 + 2);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8++;
  if (v8 < v7)
  {
    v11 = *v6;
    v12 = (*v6 + 32 * v8);
    v13 = v12[1];
    v14 = (*v6 + 32 * v10);
    v15 = v14[1];
    if (v13 == v15)
    {
      v16 = *v14;
      v17 = *v12;
      result = sub_22F741770();
      v18 = result > 0;
    }

    else
    {
      v18 = v15 < v13;
    }

    v19 = 0;
    v20 = (v10 + 2);
    v105 = v10;
    v103 = 32 * v10;
    v21 = (v11 + 32 * v10 + 40);
    do
    {
      v6 = v20;
      v23 = v8;
      v5 = v19;
      if (v20 >= v7)
      {
        break;
      }

      v24 = v21[4];
      if (v24 == *v21)
      {
        v25 = *(v21 - 1);
        v26 = v21[3];
        result = sub_22F741770();
        v22 = result > 0;
      }

      else
      {
        v22 = *v21 < v24;
      }

      v20 = (v6 + 1);
      v21 += 4;
      ++v8;
      v19 = v5 + 32;
    }

    while (v18 == v22);
    if (!v18)
    {
LABEL_24:
      v8 = v6;
      v6 = a3;
      v10 = v105;
      goto LABEL_26;
    }

    v27 = v105;
    if (v6 < v105)
    {
      goto LABEL_127;
    }

    if (v105 < v6)
    {
      v28 = 0;
      do
      {
        if (v27 != v23)
        {
          if (!*a3)
          {
            goto LABEL_133;
          }

          v29 = *a3 + v103;
          v30 = (v29 + v28);
          v31 = &v5[v29];
          v32 = *(v30 + 2);
          v33 = *(v30 + 3);
          v34 = *v30;
          v35 = *(v31 + 3);
          *v30 = *(v31 + 2);
          v30[1] = v35;
          *(v31 + 2) = v34;
          *(v31 + 6) = v32;
          *(v31 + 7) = v33;
        }

        ++v27;
        v5 -= 32;
        v28 += 32;
      }

      while (v27 < v23--);
      goto LABEL_24;
    }

    v8 = v6;
    v6 = a3;
    v10 = v105;
  }

LABEL_26:
  v37 = v6[1];
  if (v8 >= v37)
  {
    goto LABEL_47;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_126;
  }

  if (v8 - v10 >= a4)
  {
    goto LABEL_47;
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_128;
  }

  if (v10 + a4 >= v37)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = (v10 + a4);
  }

  if (v5 < v10)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v8 == v5)
  {
    goto LABEL_47;
  }

  v38 = v10;
  v39 = *v6;
  v40 = *v6 + 32 * v8;
  v106 = v38;
  v41 = v38 - v8;
LABEL_37:
  v42 = *(v39 + 32 * v8 + 8);
  v43 = v41;
  v44 = v40;
  while (1)
  {
    v45 = *(v44 - 24);
    if (v42 == v45)
    {
      v46 = *(v44 - 32);
      v47 = *v44;
      result = sub_22F741770();
      if (result < 1)
      {
        goto LABEL_36;
      }
    }

    else if (v45 >= v42)
    {
      goto LABEL_36;
    }

    if (!v39)
    {
      break;
    }

    v48 = *v44;
    v49 = *(v44 + 24);
    v50 = *(v44 + 8);
    v51 = *(v44 - 16);
    *v44 = *(v44 - 32);
    *(v44 + 16) = v51;
    *(v44 - 24) = v50;
    *(v44 - 8) = v49;
    *(v44 - 32) = v48;
    v44 -= 32;
    v42 = v50;
    if (__CFADD__(v43++, 1))
    {
LABEL_36:
      ++v8;
      v40 += 32;
      --v41;
      if (v8 != v5)
      {
        goto LABEL_37;
      }

      v8 = v5;
      v6 = a3;
      v10 = v106;
LABEL_47:
      if (v8 < v10)
      {
        goto LABEL_125;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v54 = *(v9 + 2);
      v53 = *(v9 + 3);
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        result = sub_22F13D970((v53 > 1), v54 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v55;
      v56 = &v9[16 * v54];
      *(v56 + 4) = v10;
      *(v56 + 5) = v8;
      v5 = *v107;
      if (!*v107)
      {
        goto LABEL_135;
      }

      if (v54)
      {
        while (1)
        {
          v57 = v55 - 1;
          if (v55 >= 4)
          {
            break;
          }

          if (v55 == 3)
          {
            v58 = *(v9 + 4);
            v59 = *(v9 + 5);
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
LABEL_67:
            if (v61)
            {
              goto LABEL_114;
            }

            v74 = &v9[16 * v55];
            v76 = *v74;
            v75 = *(v74 + 1);
            v77 = __OFSUB__(v75, v76);
            v78 = v75 - v76;
            v79 = v77;
            if (v77)
            {
              goto LABEL_117;
            }

            v80 = &v9[16 * v57 + 32];
            v82 = *v80;
            v81 = *(v80 + 1);
            v68 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v68)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v78, v83))
            {
              goto LABEL_121;
            }

            if (v78 + v83 >= v60)
            {
              if (v60 < v83)
              {
                v57 = v55 - 2;
              }

              goto LABEL_88;
            }

            goto LABEL_81;
          }

          v84 = &v9[16 * v55];
          v86 = *v84;
          v85 = *(v84 + 1);
          v68 = __OFSUB__(v85, v86);
          v78 = v85 - v86;
          v79 = v68;
LABEL_81:
          if (v79)
          {
            goto LABEL_116;
          }

          v87 = &v9[16 * v57];
          v89 = *(v87 + 4);
          v88 = *(v87 + 5);
          v68 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v68)
          {
            goto LABEL_119;
          }

          if (v90 < v78)
          {
            goto LABEL_3;
          }

LABEL_88:
          v95 = v57 - 1;
          if (v57 - 1 >= v55)
          {
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
            goto LABEL_129;
          }

          if (!*v6)
          {
            goto LABEL_132;
          }

          v96 = *&v9[16 * v95 + 32];
          v97 = *&v9[16 * v57 + 40];
          sub_22F3667AC((*v6 + 32 * v96), (*v6 + 32 * *&v9[16 * v57 + 32]), (*v6 + 32 * v97), v5);
          if (v4)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_110;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_22F3F5F98(v9);
          }

          if (v95 >= *(v9 + 2))
          {
            goto LABEL_111;
          }

          v98 = &v9[16 * v95];
          *(v98 + 4) = v96;
          *(v98 + 5) = v97;
          result = sub_22F3F5F0C(v57);
          v55 = *(v9 + 2);
          if (v55 <= 1)
          {
            goto LABEL_3;
          }
        }

        v62 = &v9[16 * v55 + 32];
        v63 = *(v62 - 64);
        v64 = *(v62 - 56);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_112;
        }

        v67 = *(v62 - 48);
        v66 = *(v62 - 40);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_113;
        }

        v69 = &v9[16 * v55];
        v71 = *v69;
        v70 = *(v69 + 1);
        v68 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v68)
        {
          goto LABEL_115;
        }

        v68 = __OFADD__(v60, v72);
        v73 = v60 + v72;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v73 >= v65)
        {
          v91 = &v9[16 * v57 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v68 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v68)
          {
            goto LABEL_122;
          }

          if (v60 < v94)
          {
            v57 = v55 - 2;
          }

          goto LABEL_88;
        }

        goto LABEL_67;
      }

LABEL_3:
      v7 = v6[1];
      if (v8 >= v7)
      {
        goto LABEL_98;
      }

      goto LABEL_4;
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
  return result;
}

uint64_t sub_22F365BF0(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_22F740400();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_22F3669F4(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_22F3F5F98(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_22F3F5F0C(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_22F3F5F98(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_22F7403E0();
      v38 = v37;
      v39 = sub_22F7403E0();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_22F742040();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_22F7403E0();
        v53 = v52;
        if (v51 == sub_22F7403E0() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_22F742040();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_22F13D970((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_22F3669F4(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_22F3F5F98(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_22F3F5F0C(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_22F7403E0();
    v70 = v69;
    if (v5 == sub_22F7403E0() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_22F742040();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_22F3667AC(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *(v6 + 1);
      v19 = *(v4 + 1);
      if (v18 == v19)
      {
        v20 = *v4;
        v21 = *v6;
        if (sub_22F741770() >= 1)
        {
          goto LABEL_19;
        }
      }

      else if (v19 < v18)
      {
LABEL_19:
        v15 = v6;
        v16 = v7 == v6;
        v6 += 32;
        if (v16)
        {
          goto LABEL_13;
        }

LABEL_12:
        v17 = *(v15 + 1);
        *v7 = *v15;
        *(v7 + 1) = v17;
        goto LABEL_13;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_27:
    v22 = v6 - 32;
    v23 = v5;
    do
    {
      v24 = v14 - 32;
      v25 = *(v14 - 3);
      v26 = *(v6 - 3);
      if (v25 == v26)
      {
        v27 = *v22;
        v28 = *v24;
        v5 = v23 - 32;
        if (sub_22F741770() >= 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v5 = v23 - 32;
        if (v26 < v25)
        {
LABEL_35:
          if (v23 != v6)
          {
            v30 = *(v6 - 1);
            *v5 = *v22;
            *(v5 + 1) = v30;
          }

          if (v14 <= v4 || (v6 -= 32, v22 <= v7))
          {
            v6 = v22;
            goto LABEL_41;
          }

          goto LABEL_27;
        }
      }

      if (v14 != v23)
      {
        v29 = *(v14 - 1);
        *v5 = *v24;
        *(v5 + 1) = v29;
      }

      v14 -= 32;
      v23 = v5;
    }

    while (v24 > v4);
    v14 = v24;
  }

LABEL_41:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_22F3669F4(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_22F740400();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_22F7403E0();
            v53 = v52;
            if (v51 != sub_22F7403E0())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_22F742040();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_22F7403E0();
        v33 = v32;
        if (v31 == sub_22F7403E0() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_22F742040();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_22F3B6698(&v75, &v74, &v73);
  return 1;
}

uint64_t _s11PhotosGraph32ExtendedTokenCollectionGeneratorC23generateCityAndAreaInfo3for36representativeAssetUUIDsByMomentUUIDSDySo19KGElementIdentifierVAC0hK0VG_SDyAhC0jK0VGtAA04NodeE15BinaryAdjacencyVySo07PGGraphquE0CSo0x7AddressuE0CG_SDySSSaySSGGtF_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = *a1;
  v2 = *(a1 + 8);
  if (qword_2810A9B10 != -1)
  {
    swift_once();
  }

  v4 = qword_2810B4E10;
  *&v5 = CACurrentMediaTime();
  sub_22F1B560C("ExtendedTokenGenerator: generateCityAndAreaInfo", 47, 2u, v5, 0, v4, v64);
  v6 = [objc_opt_self() useAOIsInExtendedTokens];
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v7 = sub_22F740B90();
  __swift_project_value_buffer(v7, qword_2810B4D00);
  v8 = sub_22F740B70();
  v9 = sub_22F7415F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_22F0FC000, v8, v9, "User default to use AOI token generation is %{BOOL}d.", v10, 8u);
    MEMORY[0x2319033A0](v10, -1, -1);
  }

  v57 = v6;

  v11 = objc_allocWithZone(PGGraphAddressNodeCollection);
  v59 = v3;
  v12 = [v3 targets];
  v53 = v2;
  v13 = [v11 initWithGraph:v2 elementIdentifiers:v12];

  v60 = v13;
  v14 = [v13 cityNodes];
  v15 = [objc_opt_self() addressOfCity];
  v16 = [objc_msgSend(v14 graph)];
  swift_unknownObjectRelease();
  v17 = [v16 concreteGraph];

  if (v17)
  {
    v18 = [v14 elementIdentifiers];
    v19 = [v17 adjacencyWithSources:v18 relation:v15];

    swift_unknownObjectRetain();
    v55 = [v19 transposed];
    v56 = v17;
    swift_unknownObjectRelease();

    v20 = [v60 areaNodes];
    v21 = [objc_opt_self() addressOfArea];
    v22 = [objc_msgSend(v20 &selRef:sel_graphReference generateDebugInformationForAssetCollection:? graph:? progressReporter:? error:?)];
    swift_unknownObjectRelease();
    v23 = [v22 concreteGraph];

    if (v23)
    {
      v24 = [v20 elementIdentifiers];
      v25 = [v23 adjacencyWithSources:v24 relation:v21];

      swift_unknownObjectRetain();
      v26 = [v25 transposed];
      v51 = v26;
      swift_unknownObjectRelease();

      v27 = objc_allocWithZone(PGGraphMomentNodeCollection);
      v28 = v59;
      v29 = [v59 sources];
      v30 = v53;
      v31 = [v27 initWithGraph:v53 elementIdentifiers:v29];

      v54 = v31;
      v32 = [v31 momentUUIDByMomentNodeAsCollection];
      sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
      sub_22F368F8C();
      v33 = sub_22F740CA0();
      v52 = v33;

      v34 = [v31 numberOfAssetsByMomentUUID];
      sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
      v35 = sub_22F740CA0();

      v36 = sub_22F2F2AFC(v35);

      v50 = &v50;
      v62 = MEMORY[0x277D84F98];
      v63 = MEMORY[0x277D84F98];
      MEMORY[0x28223BE20](v37);
      v45[2] = v33;
      v45[3] = v58;
      v38 = v55;
      v45[4] = v36;
      v45[5] = v55;
      v45[6] = v56;
      v45[7] = &v63;
      v46 = v57;
      v47 = v26;
      v48 = v23;
      v49 = &v62;
      v39 = swift_allocObject();
      v39[2] = sub_22F368FF4;
      v39[3] = v45;
      v39[4] = v28;
      v39[5] = v30;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_22F36903C;
      *(v40 + 24) = v39;
      aBlock[4] = sub_22F15A3B8;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22F107F34;
      aBlock[3] = &block_descriptor_29;
      v41 = _Block_copy(aBlock);
      v42 = v28;
      swift_unknownObjectRetain();

      [v42 enumerateTargetsBySourceWith_];
      _Block_release(v41);
      LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      if ((v41 & 1) == 0)
      {
        v43 = v63;
        sub_22F1B2BBC(0);

        return v43;
      }

      __break(1u);
    }
  }

  LODWORD(v49) = 0;
  v48 = 40;
  result = sub_22F741D40();
  __break(1u);
  return result;
}

void *_s11PhotosGraph32ExtendedTokenCollectionGeneratorC016generateLocationC6Tokens3forSay0A12Intelligence0hcD0VGSayAF05QueryD0VG_tF_0(void *a1)
{
  if (qword_2810A9418 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v2 = sub_22F740B90();
    __swift_project_value_buffer(v2, qword_2810B4D00);
    v3 = sub_22F740B70();
    v4 = sub_22F7415C0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22F0FC000, v3, v4, "generateLocationExtendedTokens for query tokens has started.", v5, 2u);
      MEMORY[0x2319033A0](v5, -1, -1);
    }

    v6 = a1[2];
    if (!v6)
    {
      break;
    }

    v7 = *(sub_22F73FDA0() - 8);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    a1 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_22F36282C(v8, &v27);
      v10 = v27;
      v11 = *(v27 + 16);
      v12 = a1[2];
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= a1[3] >> 1)
      {
        if (*(v10 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        a1 = sub_22F13E8E8(isUniquelyReferenced_nonNull_native, v15, 1, a1);
        if (*(v10 + 16))
        {
LABEL_17:
          v16 = (a1[3] >> 1) - a1[2];
          v17 = *(sub_22F740400() - 8);
          if (v16 < v11)
          {
            goto LABEL_27;
          }

          v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
          v19 = *(v17 + 72);
          swift_arrayInitWithCopy();

          if (v11)
          {
            v20 = a1[2];
            v21 = __OFADD__(v20, v11);
            v22 = v20 + v11;
            if (v21)
            {
              goto LABEL_28;
            }

            a1[2] = v22;
          }

          goto LABEL_7;
        }
      }

      if (v11)
      {
        goto LABEL_26;
      }

LABEL_7:
      v8 += v9;
      if (!--v6)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  a1 = MEMORY[0x277D84F90];
LABEL_22:
  v23 = sub_22F740B70();
  v24 = sub_22F7415C0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22F0FC000, v23, v24, "generateLocationExtendedTokens for query tokens complete.", v25, 2u);
    MEMORY[0x2319033A0](v25, -1, -1);
  }

  return a1;
}

uint64_t sub_22F367B5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s11PhotosGraph32ExtendedTokenCollectionGeneratorC016filterCityInfoByH14NodeIdentifier3forSDySo09KGElementL0VAC0hI0VGAJ_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_22F10B3D0(*(a1 + 16), 0);
    v4 = sub_22F11AF58(&v63, (v3 + 4), v1, a1);

    sub_22F0FF590();
    if (v4 == v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v63 = v3;
  sub_22F3618E8(&v63);
  v5 = v63;
  v51 = v63[2];
  if (v51)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F98];
    v50 = v63 + 4;
    v49 = v63;
    while (v6 < v5[2])
    {
      v9 = &v50[4 * v6];
      v54 = v9[1];
      v10 = v9[3];
      v53 = v9[2];
      v57 = *v9;
      v58 = v6 + 1;
      v11 = (v7 + 64);
      v12 = 1 << *(v7 + 32);
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(v7 + 64);
      v15 = (v12 + 63) >> 6;
      v62 = v10 + 56;
      swift_bridgeObjectRetain_n();

      v16 = 0;
      v59 = v7;
      v61 = v10;
      v55 = v15;
      v56 = (v7 + 64);
LABEL_14:
      while (v14)
      {
LABEL_19:
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = v18 | (v16 << 6);
        v20 = *(*(v7 + 56) + 24 * v19 + 16);
        if (*(v20 + 16) >= *(v10 + 16))
        {
          v52 = *(*(v7 + 48) + 8 * v19);
          v21 = 1 << *(v10 + 32);
          if (v21 < 64)
          {
            v22 = ~(-1 << v21);
          }

          else
          {
            v22 = -1;
          }

          v23 = v22 & *(v10 + 56);
          v24 = (v21 + 63) >> 6;
          v25 = v20 + 56;

          v7 = 0;
          v60 = v24;
          while (v23)
          {
            if (!*(v20 + 16))
            {
LABEL_40:

              v7 = v59;
LABEL_42:
              v15 = v55;
              v11 = v56;
              goto LABEL_14;
            }

LABEL_27:
            v26 = (*(v10 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v23)))));
            v27 = *v26;
            v28 = v26[1];
            v29 = *(v20 + 40);
            sub_22F742170();

            sub_22F740D60();
            v30 = sub_22F7421D0();
            v31 = -1 << *(v20 + 32);
            v32 = v30 & ~v31;
            if (((*(v25 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
            {
LABEL_41:

              v10 = v61;

              v7 = v59;
              goto LABEL_42;
            }

            v23 &= v23 - 1;
            v33 = ~v31;
            while (1)
            {
              v34 = (*(v20 + 48) + 16 * v32);
              v35 = *v34 == v27 && v34[1] == v28;
              if (v35 || (sub_22F742040() & 1) != 0)
              {
                break;
              }

              v32 = (v32 + 1) & v33;
              if (((*(v25 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v24 = v60;
            v10 = v61;
          }

          while (1)
          {
            v36 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              break;
            }

            if (v36 >= v24)
            {

              swift_bridgeObjectRelease_n();

              if (qword_2810A9418 != -1)
              {
                swift_once();
              }

              v37 = sub_22F740B90();
              __swift_project_value_buffer(v37, qword_2810B4D00);
              v38 = sub_22F740B70();
              v39 = sub_22F7415D0();
              v7 = v59;
              if (os_log_type_enabled(v38, v39))
              {
                v40 = swift_slowAlloc();
                v41 = swift_slowAlloc();
                v63 = v41;
                *v40 = 136315394;
                v42 = sub_22F741750();
                v44 = sub_22F145F20(v42, v43, &v63);

                *(v40 + 4) = v44;
                *(v40 + 12) = 2080;
                v45 = sub_22F741750();
                v47 = sub_22F145F20(v45, v46, &v63);

                *(v40 + 14) = v47;
                _os_log_impl(&dword_22F0FC000, v38, v39, "Found subset, skipping cityID %s in favor of %s for sorting.", v40, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x2319033A0](v41, -1, -1);
                MEMORY[0x2319033A0](v40, -1, -1);
              }

              v5 = v49;
              v6 = v58;
              goto LABEL_8;
            }

            v23 = *(v62 + 8 * v36);
            ++v7;
            if (v23)
            {
              v7 = v36;
              if (*(v20 + 16))
              {
                goto LABEL_27;
              }

              goto LABEL_40;
            }
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_52;
        }

        if (v17 >= v15)
        {
          break;
        }

        v14 = v11[v17];
        ++v16;
        if (v14)
        {
          v16 = v17;
          goto LABEL_19;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v7;
      sub_22F1309B4(v54, v53, v10, v57, isUniquelyReferenced_nonNull_native);
      v7 = v63;
      v5 = v49;
      v6 = v58;
LABEL_8:
      if (v6 == v51)
      {

        return v7;
      }
    }

LABEL_53:
    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F368124(uint64_t a1)
{
  result = sub_22F36814C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22F36814C()
{
  result = qword_27DAB3CA8;
  if (!qword_27DAB3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3CA8);
  }

  return result;
}

unint64_t sub_22F3681A0(uint64_t a1)
{
  result = sub_22F3681C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22F3681C8()
{
  result = qword_27DAB3CB0;
  if (!qword_27DAB3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3CB0);
  }

  return result;
}

uint64_t sub_22F368258(uint64_t a1, int a2)
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

uint64_t sub_22F3682A0(uint64_t result, int a2, int a3)
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

char *sub_22F368370(void *a1, void **a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = &selRef_coworkerScore;
  v10 = [a1 elementIdentifiers];
  v11 = &selRef_setUseIconicScore_;
  v12 = [v7 targetsForSources_];

  v13 = [objc_allocWithZone(PGGraphLocationCountryNodeCollection) initWithGraph:v8 elementIdentifiers:v12];
  v14 = [v13 names];

  v15 = sub_22F741180();
  if (v15[2])
  {
    v62 = v4;
    v64 = v3;
    v16 = v15[4];
    v17 = v15[5];

    v18 = [a1 names];
    v19 = sub_22F741180();

    v65 = v17;
    v66 = v16;
    if (v19[2])
    {
      v20 = v6;
      v21 = v19[4];
      v22 = v19[5];

      v23 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_22F13E1A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[16 * v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v22;
      v6 = v20;
      v9 = &selRef_coworkerScore;
      v11 = &selRef_setUseIconicScore_;
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    v34 = v9;
    v35 = [a1 v9[378]];
    v36 = v11;
    v37 = [v63 v11[446]];

    v38 = [objc_allocWithZone(PGGraphLocationCountyNodeCollection) initWithGraph:v64 elementIdentifiers:v37];
    v39 = [v38 names];

    v40 = sub_22F741180();
    if (v40[2])
    {
      v42 = v40[4];
      v41 = v40[5];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_22F13E1A8(0, *(v23 + 2) + 1, 1, v23);
      }

      v44 = *(v23 + 2);
      v43 = *(v23 + 3);
      if (v44 >= v43 >> 1)
      {
        v23 = sub_22F13E1A8((v43 > 1), v44 + 1, 1, v23);
      }

      *(v23 + 2) = v44 + 1;
      v45 = &v23[16 * v44];
      *(v45 + 4) = v42;
      *(v45 + 5) = v41;
    }

    else
    {
    }

    v46 = [a1 v34 + 2444];
    v47 = [v6 v36 + 3590];

    v48 = [objc_allocWithZone(PGGraphLocationStateNodeCollection) initWithGraph:v5 elementIdentifiers:v47];
    v49 = [v48 names];

    v50 = sub_22F741180();
    if (v50[2])
    {
      v52 = v50[4];
      v51 = v50[5];

      v54 = v65;
      v53 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_22F13E1A8(0, *(v23 + 2) + 1, 1, v23);
      }

      v56 = *(v23 + 2);
      v55 = *(v23 + 3);
      if (v56 >= v55 >> 1)
      {
        v23 = sub_22F13E1A8((v55 > 1), v56 + 1, 1, v23);
      }

      *(v23 + 2) = v56 + 1;
      v57 = &v23[16 * v56];
      *(v57 + 4) = v52;
      *(v57 + 5) = v51;
    }

    else
    {

      v54 = v65;
      v53 = v66;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_22F13E1A8(0, *(v23 + 2) + 1, 1, v23);
    }

    v59 = *(v23 + 2);
    v58 = *(v23 + 3);
    if (v59 >= v58 >> 1)
    {
      v23 = sub_22F13E1A8((v58 > 1), v59 + 1, 1, v23);
    }

    *(v23 + 2) = v59 + 1;
    v60 = &v23[16 * v59];
    *(v60 + 4) = v53;
    *(v60 + 5) = v54;
  }

  else
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v27 = sub_22F740B90();
    __swift_project_value_buffer(v27, qword_2810B4D00);
    v28 = a1;
    v29 = sub_22F740B70();
    v30 = sub_22F7415E0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_22F0FC000, v29, v30, "City node %@ doesn't have country node associated with it!", v31, 0xCu);
      sub_22F2A87F0(v32);
      MEMORY[0x2319033A0](v32, -1, -1);
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    return 0;
  }

  return v23;
}

unint64_t sub_22F36892C()
{
  result = qword_2810A9088;
  if (!qword_2810A9088)
  {
    type metadata accessor for KGElementIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9088);
  }

  return result;
}

char *sub_22F3689D4(void *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = [a1 elementIdentifiers];
  v10 = [v7 targetsForSources_];

  v11 = [objc_allocWithZone(PGGraphLocationCountryNodeCollection) initWithGraph:v8 elementIdentifiers:v10];
  v12 = [v11 names];

  v13 = sub_22F741180();
  if (v13[2])
  {
    v55 = v6;
    v56 = v13[4];
    v57 = v13[5];

    v14 = [a1 names];
    v15 = sub_22F741420();

    v16 = sub_22F15ABD4(v15);
    v18 = v17;

    if (v18)
    {
      v19 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_22F13E1A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[16 * v21];
      *(v22 + 4) = v16;
      *(v22 + 5) = v18;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v30 = [a1 elementIdentifiers];
    v31 = [v4 targetsForSources_];

    v32 = [objc_allocWithZone(PGGraphLocationCountyNodeCollection) initWithGraph:v3 elementIdentifiers:v31];
    v33 = [v32 names];

    v34 = sub_22F741180();
    v35 = v5;
    if (v34[2])
    {
      v37 = v34[4];
      v36 = v34[5];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22F13E1A8(0, *(v19 + 2) + 1, 1, v19);
      }

      v39 = *(v19 + 2);
      v38 = *(v19 + 3);
      if (v39 >= v38 >> 1)
      {
        v19 = sub_22F13E1A8((v38 > 1), v39 + 1, 1, v19);
      }

      *(v19 + 2) = v39 + 1;
      v40 = &v19[16 * v39];
      *(v40 + 4) = v37;
      *(v40 + 5) = v36;
    }

    else
    {
    }

    v41 = [a1 elementIdentifiers];
    v42 = [v55 targetsForSources_];

    v43 = [objc_allocWithZone(PGGraphLocationStateNodeCollection) initWithGraph:v35 elementIdentifiers:v42];
    v44 = [v43 names];

    v45 = sub_22F741180();
    if (v45[2])
    {
      v47 = v45[4];
      v46 = v45[5];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22F13E1A8(0, *(v19 + 2) + 1, 1, v19);
      }

      v49 = *(v19 + 2);
      v48 = *(v19 + 3);
      if (v49 >= v48 >> 1)
      {
        v19 = sub_22F13E1A8((v48 > 1), v49 + 1, 1, v19);
      }

      *(v19 + 2) = v49 + 1;
      v50 = &v19[16 * v49];
      *(v50 + 4) = v47;
      *(v50 + 5) = v46;
    }

    else
    {
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_22F13E1A8(0, *(v19 + 2) + 1, 1, v19);
    }

    v52 = *(v19 + 2);
    v51 = *(v19 + 3);
    if (v52 >= v51 >> 1)
    {
      v19 = sub_22F13E1A8((v51 > 1), v52 + 1, 1, v19);
    }

    *(v19 + 2) = v52 + 1;
    v53 = &v19[16 * v52];
    *(v53 + 4) = v56;
    *(v53 + 5) = v57;
  }

  else
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D00);
    v24 = a1;
    v25 = sub_22F740B70();
    v26 = sub_22F7415E0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_22F0FC000, v25, v26, "Area node %@ doesn't have country node associated with it!", v27, 0xCu);
      sub_22F2A87F0(v28);
      MEMORY[0x2319033A0](v28, -1, -1);
      MEMORY[0x2319033A0](v27, -1, -1);
    }

    return 0;
  }

  return v19;
}

unint64_t sub_22F368F8C()
{
  result = qword_2810A8FC0;
  if (!qword_2810A8FC0)
  {
    sub_22F120634(255, &qword_2810A8FC8, off_27887B108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A8FC0);
  }

  return result;
}

uint64_t sub_22F369060()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id PHAssetCollection.identifier.getter()
{
  result = [v0 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_22F740E20();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F369120@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [*v2 *a1];
  if (v4)
  {
    v5 = v4;
    sub_22F73F640();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_22F73F690();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

id sub_22F3691C0()
{
  v1 = [*v0 approximateLocation];

  return v1;
}

id sub_22F3691F8()
{
  result = [*v0 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_22F740E20();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PhotosChallengeEvaluationContext.__allocating_init(graph:photoLibrary:sceneTaxonomy:serviceManager:publicEventManager:loggingConnection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_graph] = a1;
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_photoLibrary] = a2;
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_sceneTaxonomy] = a3;
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_serviceManager] = a4;
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_publicEventManager] = a5;
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_loggingConnection] = a6;
  v15.receiver = v13;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id PhotosChallengeEvaluationContext.init(graph:photoLibrary:sceneTaxonomy:serviceManager:publicEventManager:loggingConnection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_graph] = a1;
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_photoLibrary] = a2;
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_sceneTaxonomy] = a3;
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_serviceManager] = a4;
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_publicEventManager] = a5;
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_loggingConnection] = a6;
  v15.receiver = v6;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

id PhotosChallengeEvaluationContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosChallengeEvaluationContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id RelatedPersonEntityDescriptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RelatedPersonEntityDescriptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static CuratedSongLibrary.projectionMatrixURL(forStorefrontIdentifier:progressReporter:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v8 = sub_22F73F470();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  sub_22F36B1A8(a1, a2, a3, v17 - v14);
  if (!v4)
  {
    sub_22F73F410();
    sub_22F73F420();
    v16 = *(v9 + 8);
    v16(v12, v8);
    v16(v15, v8);
  }
}

void static CuratedSongLibrary.projectionSpecificationsURL(forStorefrontIdentifier:progressReporter:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v8 = sub_22F73F470();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  sub_22F36B1A8(a1, a2, a3, v17 - v14);
  if (!v4)
  {
    sub_22F73F410();
    sub_22F73F420();
    v16 = *(v9 + 8);
    v16(v12, v8);
    v16(v15, v8);
  }
}

void static CuratedSongLibrary.maestroSongsURL(forStorefrontIdentifier:progressReporter:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v8 = sub_22F73F470();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  sub_22F36B1A8(a1, a2, a3, v17 - v14);
  if (!v4)
  {
    sub_22F73F410();
    sub_22F73F420();
    v16 = *(v9 + 8);
    v16(v12, v8);
    v16(v15, v8);
  }
}

void static CuratedSongLibrary.maestroSongsInfoURL(forStorefrontIdentifier:progressReporter:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v8 = sub_22F73F470();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  sub_22F36B1A8(a1, a2, a3, v17 - v14);
  if (!v4)
  {
    sub_22F73F410();
    sub_22F73F420();
    v16 = *(v9 + 8);
    v16(v12, v8);
    v16(v15, v8);
  }
}

void static CuratedSongLibrary.downloadLocalizedAsset(forStorefrontIdentifier:progressReporter:completionHandler:)(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v6 = v5;
  v55 = a3;
  v56 = a4;
  v57 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v54 - v11);
  if (qword_2810A9428 != -1)
  {
    swift_once();
  }

  v13 = sub_22F740B90();
  v14 = __swift_project_value_buffer(v13, qword_2810B4D18);

  v54[1] = v14;
  v15 = sub_22F740B70();
  v16 = sub_22F7415C0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_22F145F20(v57, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v15, v16, "[MemoriesMusic] (CuratedSongLibrary) Starting downloadLocalizedAsset for storefrontIdentifierKey: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2319033A0](v18, -1, -1);
    MEMORY[0x2319033A0](v17, -1, -1);
  }

  v19 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v20 = sub_22F740DF0();
  v21 = [v19 initWithType_];

  if (!v21)
  {
    sub_22F36C390();
    v47 = swift_allocError();
    *v48 = 0xD000000000000034;
    *(v48 + 8) = 0x800000022F79C340;
    *(v48 + 16) = 0;
    *v12 = v47;
    swift_storeEnumTagMultiPayload();
    v56(v12);
LABEL_23:
    sub_22F120ADC(v12, &qword_27DAB2EF0, &unk_22F788820);
    return;
  }

  [v21 setDoNotBlockBeforeFirstUnlock_];
  v22 = sub_22F740DF0();
  v23 = sub_22F740DF0();
  [v21 addKeyValuePair:v22 with:v23];

  v24 = sub_22F740DF0();
  v25 = sub_22F740DF0();
  [v21 addKeyValuePair:v24 with:v25];

  [v21 returnTypes_];
  [v21 queryMetaDataSync];
  v26 = [v21 results];
  if (!v26)
  {
    sub_22F36C390();
    v49 = swift_allocError();
    *v50 = 0xD000000000000034;
    *(v50 + 8) = 0x800000022F79C340;
    *(v50 + 16) = 1;
    *v12 = v49;
    swift_storeEnumTagMultiPayload();
    v51 = v12;
LABEL_22:
    v56(v51);

    goto LABEL_23;
  }

  v27 = v26;
  sub_22F120634(0, &qword_2810A8EF0, 0x277D289C0);
  sub_22F741180();

  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v28 = qword_2810A9170;

  aBlock = sub_22F36C4EC(v29, sub_22F120B48, sub_22F3CD0A8);
  sub_22F36D914(&aBlock, v6, v28);

  v30 = aBlock;
  if ((aBlock & 0x8000000000000000) == 0 && (aBlock & 0x4000000000000000) == 0)
  {
    if (*(aBlock + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (!sub_22F741A00())
  {
LABEL_21:

    sub_22F36C390();
    v52 = swift_allocError();
    *v53 = 0xD000000000000034;
    *(v53 + 8) = 0x800000022F79C340;
    *(v53 + 16) = 1;
    *v12 = v52;
    swift_storeEnumTagMultiPayload();
    v51 = v12;
    goto LABEL_22;
  }

LABEL_12:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x2319016F0](0, v30);
  }

  else
  {
    if (!*(v30 + 16))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v31 = *(v30 + 32);
  }

  v32 = v31;

  v33 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v33 setAllowsCellularAccess_];
  [v33 setRequiresPowerPluggedIn_];
  [v33 setAllowsExpensiveAccess_];
  [v33 setDiscretionary_];
  v34 = swift_allocObject();
  v35 = v55;
  *(v34 + 16) = v55;
  *(v34 + 24) = v32;
  v62 = sub_22F36D9B4;
  v63 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_22F36BBD4;
  v61 = &block_descriptor_41;
  v36 = _Block_copy(&aBlock);
  v37 = v35;
  v38 = v32;

  [v38 attachProgressCallBack_];
  _Block_release(v36);

  v39 = sub_22F740B70();
  v40 = sub_22F7415C0();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_22F145F20(v57, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v39, v40, "[MemoriesMusic] (CuratedSongLibrary) Starting MobileAsset download of storefrontIdentifierKey: %s ", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x2319033A0](v42, -1, -1);
    MEMORY[0x2319033A0](v41, -1, -1);
  }

  v43 = swift_allocObject();
  v43[2] = v56;
  v43[3] = a5;
  v43[4] = v38;
  v62 = sub_22F36D9D4;
  v63 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_22F36B130;
  v61 = &block_descriptor_6_0;
  v44 = _Block_copy(&aBlock);
  v45 = v38;
  v46 = v33;

  [v45 startDownload:v46 completionWithError:v44];

  _Block_release(v44);
}

uint64_t static CuratedSongLibrary.downloadAssetCatalog(progressReporter:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22F740BC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22F740C00();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810AB208 != -1)
  {
    swift_once();
  }

  v20[1] = qword_2810AB210;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v3;
  v16[5] = a1;
  aBlock[4] = sub_22F36D9E0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F327D80;
  aBlock[3] = &block_descriptor_12_3;
  v17 = _Block_copy(aBlock);

  v18 = a1;
  sub_22F740BE0();
  v22 = MEMORY[0x277D84F90];
  sub_22F36DA50(&qword_2810A93D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3D00, &qword_22F78AB80);
  sub_22F36DA98(&qword_2810A92F8, &qword_27DAB3D00, &qword_22F78AB80);
  sub_22F741970();
  MEMORY[0x231901200](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_22F36A8C0()
{
  v0 = sub_22F740BB0();
  __swift_allocate_value_buffer(v0, qword_2810AB1E8);
  *__swift_project_value_buffer(v0, qword_2810AB1E8) = 15;
  v1 = *MEMORY[0x277D85188];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_22F36A950()
{
  v10 = sub_22F741640();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22F741630();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22F740C00();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_22F120634(0, &qword_2810A90E8, 0x277D85C78);
  sub_22F740BE0();
  v11 = MEMORY[0x277D84F90];
  sub_22F36DA50(&unk_2810A90F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F36DA98(&qword_2810A92A8, &qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F741970();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_22F741660();
  qword_2810AB210 = result;
  return result;
}

void sub_22F36ABB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v33 = a2;
  v5 = sub_22F740C30();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = swift_allocObject();
  v34 = v13;
  *(v13 + 16) = 0;
  v28[1] = v13 + 16;
  v14 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v15 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v15 setAllowsCellularAccess_];
  v16 = 1;
  [v15 setRequiresPowerPluggedIn_];
  [v15 setAllowsExpensiveAccess_];
  [v15 setDiscretionary_];
  v32 = objc_opt_self();
  v29 = sub_22F740DF0();
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v13;
  v28[0] = a1;
  v18 = v33;
  v17[4] = a1;
  v17[5] = v18;
  v19 = v12;
  v17[6] = v12;
  aBlock[4] = sub_22F36DA40;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F36B130;
  aBlock[3] = &block_descriptor_23_4;
  v20 = _Block_copy(aBlock);
  v21 = v15;
  v30 = v14;

  v22 = v19;

  v23 = v29;
  [v32 startCatalogDownload:v29 options:v21 completionWithError:v20];
  _Block_release(v20);

  v32 = v21;
  v24 = (v31 + 8);
  do
  {
    sub_22F740C10();
    if (qword_2810AB1E0 != -1)
    {
      swift_once();
    }

    v25 = sub_22F740BB0();
    __swift_project_value_buffer(v25, qword_2810AB1E8);
    sub_22F740C20();
    v26 = *v24;
    (*v24)(v8, v5);
    v27 = sub_22F741610();
    v26(v11, v5);
    if ((v27 & 1) == 0)
    {
      break;
    }

    sub_22F741690();
    ++v16;
  }

  while (v16 != 8);
  sub_22F7416A0();
}