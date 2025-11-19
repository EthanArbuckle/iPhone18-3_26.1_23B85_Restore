uint64_t sub_26BE12ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BE12B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BE12BDC()
{
  result = sub_26C009C8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BE12C48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE12C90(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_26BE12CF0()
{
  result = sub_26C009EAC();
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

uint64_t _s6ClientO11ClientStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6ClientO11ClientStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BE13178()
{
  result = qword_28045E408;
  if (!qword_28045E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E408);
  }

  return result;
}

uint64_t sub_26BE131CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BE13204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E428, &qword_26C00D188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_26BE1326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_26BE11EAC(sub_26BE132E8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_26BE132D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BE00258(a1, a2);
  }

  return a1;
}

unint64_t sub_26BE13308()
{
  result = qword_28045E430;
  if (!qword_28045E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E430);
  }

  return result;
}

unint64_t sub_26BE1335C()
{
  result = qword_28045E438;
  if (!qword_28045E438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28045E438);
  }

  return result;
}

void *sub_26BE133A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_26BE11F18(sub_26BE13410, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_26BE13430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C00AA5C();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != sub_26C00AA6C())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = sub_26C00AA7C();
        v12 = sub_26C00AA5C();
        result = sub_26C00AA6C();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = sub_26C00AA6C();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26BE13564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE135C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE13630(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26BE136C4(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_26BE10BE4(a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.Node.inner.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v20 = *(v1 + 96);
  v21 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v18 = *(v1 + 64);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 16);
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 112);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 128);
  *(a1 + 128) = *(v1 + 128);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_26BE1379C(v15, v14);
}

__n128 MLS.Node.inner.setter(uint64_t a1)
{
  v3 = *(v1 + 112);
  v11[6] = *(v1 + 96);
  v11[7] = v3;
  v12 = *(v1 + 128);
  v4 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v4;
  v5 = *(v1 + 80);
  v11[4] = *(v1 + 64);
  v11[5] = v5;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v6;
  sub_26BE13854(v11);
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  *(v1 + 128) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v8;
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

__n128 MLS.Node.init(inner:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26BE13924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x10 | (32 * (*(a1 + 104) >> 2));
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_26BE139A0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      v4 = -a2;
      *a1 = 0;
      *(a1 + 8) = (-a2 & 3) << 60;
      *(a1 + 16) = 0;
      *(a1 + 24) = (v4 << 58) & 0x3000000000000000;
      *(a1 + 32) = 0;
      *(a1 + 40) = (v4 << 56) & 0x1000000000000000;
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = (v4 >> 3) & 0x1FFFFFFC;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_26BE13A4C(void *result, char a2)
{
  v2 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[5] & 0xEFFFFFFFFFFFFFFFLL;
  v4 = result[13] & 3;
  v5 = result[16] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v2;
  result[5] = v3;
  result[13] = v4;
  result[16] = v5;
  return result;
}

uint64_t sub_26BE13AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v74 = *MEMORY[0x277D85DE8];
  v5 = sub_26BEE62D4();
  if ((v5 & 0x100) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    v13 = 1;
LABEL_12:
    *v12 = v13;
    result = swift_willThrow();
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    result = sub_26BE7DE38(&v65);
    if (v2)
    {
      goto LABEL_13;
    }

    v62 = v71;
    v63 = v72;
    v64 = v73;
    v58 = v67;
    v59 = v68;
    v60 = v69;
    v61 = v70;
    v56 = v65;
    v57 = v66;
    result = sub_26BE140D0(&v56);
    v14 = v63;
    *(a1 + 96) = v62;
    *(a1 + 112) = v14;
    *(a1 + 128) = v64;
    v15 = v59;
    *(a1 + 32) = v58;
    *(a1 + 48) = v15;
    v16 = v61;
    *(a1 + 64) = v60;
    *(a1 + 80) = v16;
    v18 = v56;
    v17 = v57;
    goto LABEL_10;
  }

  if (v5 != 2)
  {
    sub_26BE01600();
    swift_allocError();
    v13 = 5;
    goto LABEL_12;
  }

  result = sub_26BF2F7B0();
  if (v2)
  {
    goto LABEL_13;
  }

  *&v55 = result;
  *(&v55 + 1) = v7;
  *&v53 = sub_26BF2F7B0();
  *(&v53 + 1) = v8;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  sub_26BE00608(*v1, v9);
  sub_26BE00608(v10, v9);
  sub_26BF30764(v1, &v65);
  if (BYTE8(v65))
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v10;
    v1[1] = v9;
    v20 = v9;
    v21 = v10;
    v1[2] = v11;
LABEL_16:
    sub_26BE00258(v21, v20);
    *v3 = v10;
    v3[1] = v9;
    v3[2] = v11;
    sub_26BE01600();
    swift_allocError();
    *v22 = 1;
    goto LABEL_17;
  }

  v23 = v65;
  sub_26BE00258(v10, v9);
  if (v23 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v24 = 5;
    swift_willThrow();
    goto LABEL_6;
  }

  v48 = v11;
  result = sub_26BF2A44C(v23);
  if (v25 >> 60 == 15)
  {
    v21 = *v3;
    v20 = v3[1];
    goto LABEL_16;
  }

  v27 = v26;
  v47 = v10;
  v28 = v25 >> 62;
  v49 = result >> 32;
  v54 = MEMORY[0x277D84F90];
  v51 = v25;
  v52 = BYTE6(v25);
  v50 = result;
  if ((v25 >> 62) > 1)
  {
    goto LABEL_25;
  }

LABEL_23:
  v29 = v52;
  if (v28)
  {
    v29 = v49;
  }

  while (1)
  {
    v30 = __OFSUB__(v29, v27);
    v31 = v29 - v27;
    if (v30)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    if (v31 < 1)
    {
      break;
    }

    v32 = v27 + 4;
    if (__OFADD__(v27, 4))
    {
      goto LABEL_59;
    }

    if (v28 <= 1)
    {
      v33 = v52;
      if (v28)
      {
        v33 = v49;
      }

LABEL_36:
      if (v33 < v32)
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }

    if (v28 == 2)
    {
      v33 = *(result + 24);
      goto LABEL_36;
    }

    if (v32 > 0)
    {
LABEL_50:
      v37 = v25;
      v38 = result;
      sub_26BE01600();
      swift_allocError();
      *v39 = 1;
      swift_willThrow();

      sub_26BE00258(v38, v37);
      v10 = v47;
      v11 = v48;
      goto LABEL_6;
    }

LABEL_39:
    *&v65 = result;
    *(&v65 + 1) = v25;
    if (v32 < v27)
    {
      goto LABEL_60;
    }

    *&v56 = v27;
    *(&v56 + 1) = v27 + 4;
    sub_26BE00608(result, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v65, *(&v65 + 1));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_26BEEBEAC(0, *(v54 + 2) + 1, 1, v54);
    }

    v35 = *(v54 + 2);
    v34 = *(v54 + 3);
    if (v35 >= v34 >> 1)
    {
      v54 = sub_26BEEBEAC((v34 > 1), v35 + 1, 1, v54);
    }

    *(v54 + 2) = v35 + 1;
    *&v54[4 * v35 + 32] = bswap32(0);
    v27 += 4;
    result = v50;
    v25 = v51;
    if (v28 <= 1)
    {
      goto LABEL_23;
    }

LABEL_25:
    if (v28 == 2)
    {
      v29 = *(result + 24);
    }

    else
    {
      v29 = 0;
    }
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v36 = *(result + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = v49;
    if (!v28)
    {
      v36 = v52;
    }
  }

  v10 = v47;
  v40 = v36 == v27;
  if (__OFSUB__(v36, v27))
  {
    __break(1u);
    return result;
  }

  v11 = v48;
  if (v40)
  {
    sub_26BE00258(result, v25);
    sub_26BE00258(v47, v9);
    v65 = v55;
    v66 = v53;
    *&v67 = v54;
    result = sub_26BE1408C(&v65);
    v41 = v72;
    *(a1 + 96) = v71;
    *(a1 + 112) = v41;
    *(a1 + 128) = v73;
    v42 = v68;
    *(a1 + 32) = v67;
    *(a1 + 48) = v42;
    v43 = v70;
    *(a1 + 64) = v69;
    *(a1 + 80) = v43;
    v18 = v65;
    v17 = v66;
LABEL_10:
    *a1 = v18;
    *(a1 + 16) = v17;
    goto LABEL_13;
  }

  v44 = v25;
  v45 = result;
  sub_26BE01654();
  swift_allocError();
  *v46 = 0;
  v46[112] = 1;
  swift_willThrow();

  sub_26BE00258(v45, v44);
LABEL_6:
  sub_26BE00258(*v3, v3[1]);
  *v3 = v10;
  v3[1] = v9;
  v3[2] = v11;
LABEL_17:
  swift_willThrow();
  sub_26BE00258(v53, *(&v53 + 1));
  result = sub_26BE00258(v55, *(&v55 + 1));
LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_26BE1408C(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xEFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 3;
  v4 = result[16] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[13] = v3;
  result[16] = v4;
  return result;
}

void *sub_26BE140D0(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xEFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 3;
  v4 = result[16] & 0xCFFFFFFFFFFFFFFFLL;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[13] = v3;
  result[16] = v4;
  return result;
}

uint64_t sub_26BE14118(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLS.MLSMessage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v60 = MEMORY[0x277D84F90];
    sub_26BECBA34(0, v7, 0);
    v9 = v60;
    v10 = a1 + 64;
    v11 = -1 << *(a1 + 32);
    result = sub_26C00AB4C();
    v12 = result;
    if ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      result = v9;
      v13 = *(a1 + 36);
      v47 = a1 + 72;
      v51 = xmmword_26C00BBD0;
      v14 = 1;
      v49 = a1 + 64;
      v50 = a1;
      v48 = v7;
      while (1)
      {
        v15 = v12 >> 6;
        if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_33;
        }

        v53 = v14;
        v54 = v13;
        v16 = result;
        v17 = (*(a1 + 56) + 184 * v12);
        v18 = v17[3];
        v20 = *v17;
        v19 = v17[1];
        v58[2] = v17[2];
        v58[3] = v18;
        v58[0] = v20;
        v58[1] = v19;
        v21 = v17[7];
        v23 = v17[4];
        v22 = v17[5];
        v58[6] = v17[6];
        v58[7] = v21;
        v58[4] = v23;
        v58[5] = v22;
        v25 = v17[9];
        v24 = v17[10];
        v26 = v17[8];
        v59 = *(v17 + 22);
        v58[9] = v25;
        v58[10] = v24;
        v58[8] = v26;
        v27 = v61;
        memmove(v61, v17, 0xB8uLL);
        type metadata accessor for MLS.MLSMessage.Inner(0);
        swift_storeEnumTagMultiPayload();
        v56 = v51;
        v57 = 0;
        sub_26BE2DFC0(v58, v55);
        sub_26BE2DFC0(v58, v55);
        result = sub_26BEE3688(v27);
        if (v2)
        {
          sub_26BE00258(v56, *(&v56 + 1));
          sub_26BE2E190(v61, type metadata accessor for MLS.MLSMessage);
          sub_26BE2E01C(v58);
        }

        v28 = v56;
        v29 = *(&v56 + 1) >> 62;
        if ((*(&v56 + 1) >> 62) > 1)
        {
          if (v29 != 2)
          {
            goto LABEL_14;
          }

          v30 = *(v56 + 24);
        }

        else
        {
          if (!v29)
          {
            goto LABEL_14;
          }

          v30 = v56 >> 32;
        }

        if (v30 < 0)
        {
          goto LABEL_34;
        }

LABEL_14:
        v52 = 0;
        v31 = sub_26C00909C();
        v33 = v32;
        sub_26BE00258(v28, *(&v28 + 1));
        sub_26BE2E190(v61, type metadata accessor for MLS.MLSMessage);
        sub_26BE2E01C(v58);
        result = v16;
        v60 = v16;
        v34 = *(v16 + 16);
        v35 = *(result + 24);
        if (v34 >= v35 >> 1)
        {
          sub_26BECBA34((v35 > 1), v34 + 1, 1);
          result = v60;
        }

        *(result + 16) = v34 + 1;
        v36 = result + 16 * v34;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
        a1 = v50;
        v37 = 1 << *(v50 + 32);
        if (v12 >= v37)
        {
          goto LABEL_35;
        }

        v10 = v49;
        v38 = *(v49 + 8 * v15);
        if ((v38 & (1 << v12)) == 0)
        {
          goto LABEL_36;
        }

        if (v54 != *(v50 + 36))
        {
          goto LABEL_37;
        }

        v39 = v38 & (-2 << (v12 & 0x3F));
        if (v39)
        {
          v12 = __clz(__rbit64(v39)) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v40 = v15 << 6;
          v41 = v15 + 1;
          v42 = (v47 + 8 * v15);
          while (v41 < (v37 + 63) >> 6)
          {
            v44 = *v42++;
            v43 = v44;
            v40 += 64;
            ++v41;
            if (v44)
            {
              v45 = result;
              sub_26BE2E070(v12, v54, 0);
              result = v45;
              v12 = __clz(__rbit64(v43)) + v40;
              goto LABEL_26;
            }
          }

          v46 = result;
          sub_26BE2E070(v12, v54, 0);
          result = v46;
          v12 = v37;
        }

LABEL_26:
        v2 = v52;
        if (v53 == v48)
        {
          return result;
        }

        if ((v12 & 0x8000000000000000) == 0)
        {
          v13 = *(a1 + 36);
          v14 = v53 + 1;
          if (v12 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        break;
      }
    }

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
  }

  return result;
}

uint64_t sub_26BE14528()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478E70);
  __swift_project_value_buffer(v0, qword_280478E70);
  return sub_26C009A4C();
}

uint64_t MLS.Client.CommitOptions.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000024, 0x800000026C02A9B0);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x26D699090](v3, v4);

  MEMORY[0x26D699090](0xD000000000000017, 0x800000026C02A9E0);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x26D699090](v5, v6);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t MLS.Client.EncryptionOptions.forwardSecrecyWindow.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t MLS.Client.EncryptionOptions.forwardSecrecyWindow.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

double MLS.Client.EncryptionOptions.init(usePadding:useSecretPayload:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = a1;
  *(a3 + 2) = a2;
  result = -1.85044299e-183;
  *(a3 + 8) = xmmword_26C00DA40;
  return result;
}

uint64_t MLS.Client.EncryptionOptions.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD00000000000002CLL, 0x800000026C02AA00);
  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D699090](v4, v5);

  MEMORY[0x26D699090](0xD000000000000012, 0x800000026C02AA30);
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x26D699090](v6, v7);

  MEMORY[0x26D699090](0xD000000000000014, 0x800000026C02AA50);
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x26D699090](v8, v9);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_26BE14980()
{
  sub_26C00B05C();
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE149EC()
{
  sub_26C00B05C();
  sub_26C00B08C();
  return sub_26C00B0CC();
}

void MLS.Client.MLSOptions.commitOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *MLS.Client.MLSOptions.commitOptions.setter(_BYTE *result)
{
  v2 = result[1];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

__n128 MLS.Client.MLSOptions.encryptionOptions.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1->n128_u8[9];
  v3 = v1->n128_u8[10];
  *a1 = v1->n128_u8[8];
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  result = v1[1];
  *(a1 + 8) = result;
  return result;
}

__n128 MLS.Client.MLSOptions.encryptionOptions.setter(uint64_t a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v1->n128_u8[8] = *a1;
  v1->n128_u8[9] = v2;
  v1->n128_u8[10] = v3;
  result = *(a1 + 8);
  v1[1] = result;
  return result;
}

__n128 MLS.Client.MLSOptions.init(version:commitOptions:encryptionOptions:ciphersuite:)@<Q0>(_BYTE *a1@<X1>, char *a2@<X2>, char *a3@<X3>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a3;
  v9 = *(a3 + 3);
  v10 = *(a3 + 4);
  *a4 = *a1;
  *(a4 + 1) = v4;
  *(a4 + 8) = v5;
  *(a4 + 9) = v6;
  *(a4 + 10) = v7;
  *(a4 + 16) = *(a2 + 8);
  *(a4 + 32) = v8;
  result = *(a3 + 8);
  *(a4 + 40) = result;
  *(a4 + 56) = v9;
  *(a4 + 64) = v10;
  return result;
}

uint64_t MLS.Client.MLSOptions.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v11 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = v0[32];
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000014, 0x800000026C02AA70);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x726568706963202CLL, 0xEF203A6574697573);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0xD000000000000011, 0x800000026C02AA90);
  v8 = MLS.Client.CommitOptions.description.getter();
  MEMORY[0x26D699090](v8);

  MEMORY[0x26D699090](0xD000000000000015, 0x800000026C02AAB0);
  v9 = MLS.Client.EncryptionOptions.description.getter();
  MEMORY[0x26D699090](v9);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t MLS.Client.UpdatePolicy.maxLeafNodeValidity.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t MLS.Client.UpdatePolicy.maxLeafNodeValidity.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t MLS.Client.UpdatePolicy.init(maxLeafNodeValidity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double MLS.Client.UpdatePolicy.init()@<D0>(_OWORD *a1@<X8>)
{
  result = -1.85044299e-183;
  *a1 = xmmword_26C00DA40;
  return result;
}

unint64_t MLS.Client.UpdatePolicy.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00AC1C();

  v3 = sub_26C00B12C();
  MEMORY[0x26D699090](v3);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000022;
}

unint64_t sub_26BE14E18()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00AC1C();

  v3 = sub_26C00B12C();
  MEMORY[0x26D699090](v3);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t MLS.Client.Configuration.mlsOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_26BE14F00(v8, v7);
}

__n128 MLS.Client.Configuration.mlsOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE14F98(v7);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t MLS.Client.Configuration.identityProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_26BE03890(a1, v1 + 200);
}

uint64_t MLS.Client.Configuration.applicationIdentifier.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t MLS.Client.Configuration.applicationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 248);

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return result;
}

uint64_t MLS.Client.Configuration.accessGroup.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t MLS.Client.Configuration.accessGroup.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 264);

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t MLS.Client.Configuration.lockTimeout.getter()
{
  result = *(v0 + 280);
  v2 = *(v0 + 288);
  return result;
}

uint64_t MLS.Client.Configuration.lockTimeout.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 280) = result;
  *(v2 + 288) = a2;
  return result;
}

uint64_t MLS.Client.Configuration.leafNodeCapabilities.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[37];
  v3 = v1[38];
  v4 = v1[39];
  v5 = v1[40];
  v6 = v1[41];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
}

__n128 MLS.Client.Configuration.leafNodeCapabilities.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[39];
  v8 = v1[40];
  v7 = v1[41];

  result = *a1;
  v10 = *(a1 + 16);
  *(v1 + 37) = *a1;
  *(v1 + 39) = v10;
  v1[41] = v3;
  return result;
}

__n128 MLS.Client.Configuration.updatePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[21];
  *a1 = result;
  return result;
}

__n128 MLS.Client.Configuration.updatePolicy.setter(__n128 *a1)
{
  result = *a1;
  v1[21] = *a1;
  return result;
}

uint64_t MLS.Client.Configuration.init(mlsOptions:storageOptions:identityProvider:applicationIdentifier:accessGroup:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 336) = xmmword_26C00DA40;
  v13 = *(a1 + 48);
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 48) = v13;
  v14 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v14;
  v15 = a2[5];
  *(a8 + 136) = a2[4];
  *(a8 + 152) = v15;
  v16 = a2[7];
  *(a8 + 168) = a2[6];
  *(a8 + 184) = v16;
  v17 = a2[1];
  *(a8 + 72) = *a2;
  *(a8 + 88) = v17;
  v18 = a2[3];
  *(a8 + 104) = a2[2];
  *(a8 + 272) = 0;
  *(a8 + 280) = 0x8AC7230489E80000;
  *(a8 + 288) = 0;
  v19 = MEMORY[0x277D84F90];
  *(a8 + 296) = MEMORY[0x277D84F90];
  *(a8 + 304) = v19;
  *(a8 + 312) = v19;
  *(a8 + 320) = v19;
  *(a8 + 328) = &unk_287CB9C20;
  *(a8 + 352) = 514;
  *(a8 + 354) = 2;
  *(a8 + 64) = *(a1 + 64);
  *(a8 + 120) = v18;
  result = sub_26BE03890(a3, a8 + 200);
  *(a8 + 240) = a4;
  *(a8 + 248) = a5;
  *(a8 + 256) = a6;
  *(a8 + 264) = a7;
  return result;
}

double static MLS.Client.Configuration.testConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26C009F3C();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_26C009EDC();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C009EEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C009EAC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277CC5458], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277CC5438], v28);
  (*(v29 + 104))(v5, *MEMORY[0x277CC5460], v30);
  sub_26C009E7C();
  v20 = type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  (*(v16 + 32))(v23 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v19, v15);
  *(v23 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
  static MLS.Storage.StorageOptions.testInMemoryOptions.getter(v31);
  sub_26BE14FF4(v31, a1 + 72);
  v24 = type metadata accessor for MLS.Identity.PermissiveIdentityProvider();
  v25 = swift_allocObject();
  *(a1 + 224) = v24;
  *(a1 + 232) = &protocol witness table for MLS.Identity.PermissiveIdentityProvider;
  *(a1 + 200) = v25;
  *(a1 + 280) = 0x8AC7230489E80000;
  *(a1 + 288) = 0;
  v26 = MEMORY[0x277D84F90];
  *(a1 + 296) = MEMORY[0x277D84F90];
  *(a1 + 304) = v26;
  *(a1 + 312) = v26;
  *(a1 + 320) = v26;
  sub_26BE29538(v31);
  *(a1 + 328) = &unk_287CB9C48;
  *(a1 + 336) = xmmword_26C00DA40;
  *(a1 + 352) = 514;
  *(a1 + 354) = 2;
  *a1 = 257;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  *(a1 + 16) = xmmword_26C00DA40;
  *(a1 + 32) = 0;
  *&result = 32;
  *(a1 + 40) = xmmword_26C00CDC0;
  *(a1 + 56) = 16;
  *(a1 + 64) = v23;
  *(a1 + 240) = 0xD00000000000001ALL;
  *(a1 + 248) = 0x800000026C02AB00;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 1;
  return result;
}

unint64_t MLS.Client.ClientState.description.getter()
{
  if (*v0)
  {
    result = 0x79646165722ELL;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t MLS.Client.ClientState.hashValue.getter()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v1);
  return sub_26C00B0CC();
}

unint64_t sub_26BE159E8()
{
  if (*v0)
  {
    result = 0x79646165722ELL;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_26BE15A24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_26BE2958C(v2, v3);
  return sub_26BE2962C(v5, v6);
}

uint64_t sub_26BE15A94@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;
  a1[1] = v4;
  return sub_26BE2958C(v3, v4);
}

uint64_t sub_26BE15ADC(uint64_t a1, uint64_t *a2)
{
  sub_26BE295A0(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_26BE2DEC4(v5, v3 + 40);
  return swift_endAccess();
}

uint64_t sub_26BE15B8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v1 + v3, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = *(v5 + 40);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  v6(v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_26BE15C80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_26C00928C();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_26BE15D08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_26C00928C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *a2;
  v14 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v13 + v14, v12, v8);
  return swift_endAccess();
}

uint64_t sub_26BE15E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_26C00928C();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_26BE15EB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID;
  swift_beginAccess();
  v4 = sub_26C00928C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_26BE15FA0@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_26BE15FF4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_26BE160A4(uint64_t a1, uint64_t *a2)
{
  sub_26BE038A8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_26BE03890(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_26BE16110@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  return sub_26BE038A8(v1 + v3, a1);
}

uint64_t sub_26BE16168(__int128 *a1)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_26BE03890(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_26BE16230@<X0>(_OWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
  swift_beginAccess();
  result = sub_26BE2E1F0(v1 + v3, v18, &qword_28045E460, &qword_26C0206D0);
  if (*&v18[32])
  {
    v5 = *&v18[80];
    a1[4] = *&v18[64];
    a1[5] = v5;
    a1[6] = *&v18[96];
    v6 = *&v18[16];
    *a1 = *v18;
    a1[1] = v6;
    v7 = *&v18[48];
    a1[2] = *&v18[32];
    a1[3] = v7;
  }

  else
  {
    sub_26BE2E258(v18, &qword_28045E460, &qword_26C0206D0);
    memset(&v18[8], 0, 104);
    *v18 = 17;
    v19 = 23;
    v8 = sub_26C00A45C();
    sub_26BE2DC18(v18, v16);
    v9 = swift_allocObject();
    v10 = v16[5];
    *(v9 + 88) = v16[4];
    *(v9 + 104) = v10;
    *(v9 + 120) = v16[6];
    v11 = v16[1];
    *(v9 + 24) = v16[0];
    *(v9 + 40) = v11;
    v12 = v16[3];
    *(v9 + 56) = v16[2];
    *(v9 + 16) = 1;
    *(v9 + 136) = v17;
    *(v9 + 72) = v12;
    aBlock[4] = sub_26BE2E3DC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BEB8234;
    aBlock[3] = &block_descriptor_193;
    v13 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v13);

    sub_26BE7C9B8(0, 0);
    sub_26BE2DC9C(v18);
    sub_26BE01654();
    swift_allocError();
    *v14 = 17;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 88) = 0u;
    *(v14 + 104) = 0;
    *(v14 + 112) = 23;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26BE16490@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if ((~v3 & 0x3000000000000000) != 0)
  {
    v12 = *(v1 + 24);
    *a1 = v12;
    a1[1] = v3;
    return sub_26BE04890(v12, v3);
  }

  else
  {
    v16[0] = 1;
    v16[112] = 0;
    v4 = sub_26C00A45C();
    sub_26BE2DC18(v16, v14);
    v5 = swift_allocObject();
    v6 = v14[5];
    *(v5 + 88) = v14[4];
    *(v5 + 104) = v6;
    *(v5 + 120) = v14[6];
    v7 = v14[1];
    *(v5 + 24) = v14[0];
    *(v5 + 40) = v7;
    v8 = v14[3];
    *(v5 + 56) = v14[2];
    *(v5 + 16) = 1;
    *(v5 + 136) = v15;
    *(v5 + 72) = v8;
    aBlock[4] = sub_26BE2E3DC;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BEB8234;
    aBlock[3] = &block_descriptor_240;
    v9 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v9);

    sub_26BE7C9B8(0, 0);
    sub_26BE2DC9C(v16);
    sub_26BE01654();
    swift_allocError();
    *v10 = 1;
    v10[112] = 0;
    return swift_willThrow();
  }
}

uint64_t sub_26BE16654@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BE1C10C();
  if (!v2)
  {
    sub_26BE16490(v10);
    v5 = v10[1];
    v13 = v10[0];
    v6 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
    swift_beginAccess();
    sub_26BE038A8(v1 + v6, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = *(v8 + 40);
    a1[5] = swift_getAssociatedTypeWitness();
    a1[6] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a1 + 2);
    v9(v7, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    *a1 = v13;
    a1[1] = v5;
  }

  return result;
}

double sub_26BE1677C@<D0>(uint64_t a1@<X8>)
{
  sub_26BE1C10C();
  if (!v2)
  {
    sub_26BE16490(v12);
    v5 = v12[1];
    v19 = v12[0];
    v6 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
    swift_beginAccess();
    sub_26BE038A8(v1 + v6, v12);
    v7 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v9 = *(v8 + 40);
    *(&v17 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v16);
    v9(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v12);
    *&v15 = v19;
    *(&v15 + 1) = v5;
    v10 = v17;
    *(a1 + 48) = AssociatedConformanceWitness;
    result = *&v16;
    v11 = v15;
    *(a1 + 16) = v16;
    *(a1 + 32) = v10;
    *a1 = v11;
  }

  return result;
}

uint64_t sub_26BE168C4()
{
  v1 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BE16908(char a1)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26BE169BC()
{
  v1 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 2)
  {
    v4[3] = &type metadata for SwiftMLSFeatureFlags;
    v4[4] = sub_26BE295D8();
    LOBYTE(v4[0]) = 0;
    LOBYTE(v2) = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2 & 1;
}

uint64_t sub_26BE16A38()
{
  v1 = v0;
  v2 = sub_26C00928C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C00A4EC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  swift_beginAccess();
  v9 = *(v0 + 32);
  if ((~v9 & 0x3000000000000000) == 0)
  {
    goto LABEL_2;
  }

  v12 = *(v0 + 24);
  if ((v9 & 0x2000000000000000) != 0)
  {
    v21 = *(v0 + 24);
    v22 = v9;
    v16 = MLS.Identity.Credential.description.getter();
    v15 = v17;
    goto LABEL_7;
  }

  sub_26BE00608(*(v0 + 24), *(v0 + 32));
  sub_26C00A4CC();
  v13 = sub_26C00A4AC();
  v15 = v14;
  sub_26BE2962C(v12, v9);
  if (v15)
  {
    v16 = v13;
LABEL_7:
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_26C00AC1C();

    strcpy(v23, "Client(uuid: ");
    HIWORD(v23[1]) = -4864;
    v18 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v3 + 16))(v6, v1 + v18, v2);
    sub_26BE2DA54(&qword_28045E450, MEMORY[0x277CC95F0]);
    v19 = sub_26C00AEFC();
    MEMORY[0x26D699090](v19);

    (*(v3 + 8))(v6, v2);
    MEMORY[0x26D699090](0x69746E656469202CLL, 0xEC000000203A7974);
    MEMORY[0x26D699090](v16, v15);

    goto LABEL_8;
  }

LABEL_2:
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_26C00AC1C();

  strcpy(v23, "Client(uuid: ");
  HIWORD(v23[1]) = -4864;
  v10 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v10, v2);
  sub_26BE2DA54(&qword_28045E450, MEMORY[0x277CC95F0]);
  v11 = sub_26C00AEFC();
  MEMORY[0x26D699090](v11);

  (*(v3 + 8))(v6, v2);
LABEL_8:
  MEMORY[0x26D699090](41, 0xE100000000000000);
  return v23[0];
}

uint64_t MLS.Client.Client.__allocating_init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  MLS.Client.Client.init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(a1, a2, a3, a4, a5);
  return v13;
}

void *MLS.Client.Client.init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v108 = a3;
  v110 = a2;
  v111 = a1;
  v9 = sub_26C00921C();
  v103 = *(v9 - 8);
  v104 = v9;
  v10 = *(v103 + 8);
  MEMORY[0x28223BE20](v9);
  v102 = &v94[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v94[-v14];
  v16 = sub_26C00928C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v105 = &v94[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v22 = &v94[-v21];
  v23 = a4[1];
  v99 = *a4;
  v107 = v23;
  *(v6 + 3) = xmmword_26C00DA50;
  v97 = v6 + 3;
  v24 = v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyPackageSecretsStore) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_inner) = 1;
  v25 = (v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state);
  *v25 = 0u;
  v25[1] = 0u;
  v25[2] = 0u;
  v25[3] = 0u;
  v25[4] = 0u;
  v25[5] = 0u;
  v25[6] = 0u;
  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride) = 2;
  v26 = (v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
  *v26 = 0u;
  v26[1] = 0u;
  v26[2] = 0u;
  v26[3] = 0u;
  v26[4] = 0u;
  v26[5] = 0u;
  v26[6] = 0u;
  v26[7] = 0u;
  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_reportingIntervalSeconds) = 86400;
  v106 = a5;
  sub_26BE2E1F0(a5, v15, &qword_28045E458, &unk_26C00DAA0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    sub_26C00927C();
    if (v27(v15, 1, v16) != 1)
    {
      sub_26BE2E258(v15, &qword_28045E458, &unk_26C00DAA0);
    }
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
  }

  v28 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  v29 = v17;
  v30 = *(v17 + 32);
  v109 = v16;
  v30(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID, v22, v16);
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v31 = sub_26C009A5C();
  v32 = __swift_project_value_buffer(v31, qword_280478E70);
  sub_26BE295A0(v111, &v131);

  v101 = v32;
  v33 = sub_26C009A3C();
  v34 = sub_26C00AA1C();

  v35 = os_log_type_enabled(v33, v34);
  v98 = v28;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v117 = v96;
    *v36 = 136315394;
    swift_beginAccess();
    v37 = v29;
    v38 = *(v29 + 16);
    v95 = v34;
    v39 = v105;
    v40 = v109;
    v38(v105, v6 + v28, v109);
    sub_26BE2DA54(&qword_28045E450, MEMORY[0x277CC95F0]);
    v41 = sub_26C00AEFC();
    v43 = v42;
    (*(v37 + 8))(v39, v40);
    v44 = sub_26BE29740(v41, v43, &v117);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2080;
    v120 = v133;
    v121 = v134;
    v122 = v135;
    v118 = v131;
    v119 = v132;
    v114 = v133;
    v115 = v134;
    v116 = v135;
    v112 = v131;
    v113 = v132;
    sub_26BE14F00(&v118, v123);
    v45 = MLS.Client.MLSOptions.description.getter();
    v47 = v46;
    v123[2] = v114;
    v124 = v115;
    v125 = v116;
    v123[0] = v112;
    v123[1] = v113;
    sub_26BE14F98(v123);
    sub_26BE29710(&v131);
    v48 = sub_26BE29740(v45, v47, &v117);

    *(v36 + 14) = v48;
    _os_log_impl(&dword_26BDFE000, v33, v95, "Initializing client with (uuid: %s, options: %s)", v36, 0x16u);
    v49 = v96;
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v49, -1, -1);
    MEMORY[0x26D69A4E0](v36, -1, -1);
  }

  else
  {

    sub_26BE29710(&v131);
    v40 = v109;
    v37 = v29;
  }

  v100 = v37;
  sub_26BE295A0(v111, (v6 + 5));
  v50 = *(v37 + 16);
  v50(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID, v110, v40);
  v51 = v108;
  sub_26BE038A8(v108, v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey);
  v52 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state) = 0;
  type metadata accessor for SMSemaphore();
  v53 = swift_allocObject();
  swift_defaultActor_initialize();
  v54 = MEMORY[0x277D84FA0];
  *(v53 + 120) = MEMORY[0x277D84FA0];
  *(v53 + 112) = 1;
  v6[2] = v53;
  v55 = v102;
  sub_26C00920C();
  (*(v103 + 4))(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_lastHealthReportTimestamp, v55, v104);
  v56 = v107;
  if ((~v107 & 0x3000000000000000) != 0)
  {
    v103 = v50;
    v104 = v52;
    swift_beginAccess();
    v72 = v6[3];
    v73 = v6[4];
    v74 = v99;
    v6[3] = v99;
    v6[4] = v56;
    sub_26BE04890(v74, v56);
    sub_26BE2962C(v72, v73);
    sub_26BE038A8(v51, &v118);
    v75 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];

    sub_26BE2958C(v74, v56);
    v127 = sub_26C00447C(v75);
    v128 = sub_26C004684(v75);
    v129 = v54;
    v130 = v6;
    v77 = *(&v119 + 1);
    v76 = v120;
    __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
    (*(*(v76 + 8) + 24))(&v131, v77);
    LOBYTE(v76) = v131;

    LOBYTE(v123[0]) = v76;
    sub_26BE038A8(&v118, v123 + 8);
    *&v124 = v74;
    *(&v124 + 1) = v56;
    sub_26BE2B9C8(v123, &v131);
    __swift_destroy_boxed_opaque_existential_1(&v118);
    sub_26BE2BA24(v123);
    swift_beginAccess();
    sub_26BE2BA78(&v131, v25);
    swift_endAccess();

    v78 = sub_26C009A3C();
    v79 = sub_26C00AA1C();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v131 = v102;
      *v80 = 136315138;
      LODWORD(v101) = v79;
      v81 = v98;
      swift_beginAccess();
      v82 = v6 + v81;
      v83 = v105;
      v84 = v100;
      v85 = v109;
      v103(v105, v82, v109);
      sub_26BE2DA54(&qword_28045E450, MEMORY[0x277CC95F0]);
      v86 = sub_26C00AEFC();
      v88 = v87;
      v89 = *(v84 + 8);
      v89(v83, v85);
      v90 = sub_26BE29740(v86, v88, &v131);

      *(v80 + 4) = v90;
      _os_log_impl(&dword_26BDFE000, v78, v101, "Client(uuid: %s): Initialized client with credential", v80, 0xCu);
      v91 = v102;
      __swift_destroy_boxed_opaque_existential_1(v102);
      MEMORY[0x26D69A4E0](v91, -1, -1);
      MEMORY[0x26D69A4E0](v80, -1, -1);

      sub_26BE2962C(v99, v107);
      sub_26BE2E258(v106, &qword_28045E458, &unk_26C00DAA0);
      __swift_destroy_boxed_opaque_existential_1(v108);
      v89(v110, v85);
    }

    else
    {

      sub_26BE2962C(v74, v56);
      sub_26BE2E258(v106, &qword_28045E458, &unk_26C00DAA0);
      __swift_destroy_boxed_opaque_existential_1(v51);
      (*(v100 + 8))(v110, v109);
    }

    sub_26BE29710(v111);
    v92 = v104;
    swift_beginAccess();
    *(v6 + v92) = 1;
  }

  else
  {

    v57 = sub_26C009A3C();
    v58 = sub_26C00AA1C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *&v123[0] = v107;
      *v59 = 136315138;
      LODWORD(v104) = v58;
      v60 = v98;
      swift_beginAccess();
      v61 = v6 + v60;
      v62 = v105;
      v63 = v100;
      v64 = v50;
      v65 = v109;
      v64(v105, v61, v109);
      sub_26BE2DA54(&qword_28045E450, MEMORY[0x277CC95F0]);
      v66 = sub_26C00AEFC();
      v68 = v67;
      v69 = *(v63 + 8);
      v69(v62, v65);
      v70 = sub_26BE29740(v66, v68, v123);

      *(v59 + 4) = v70;
      _os_log_impl(&dword_26BDFE000, v57, v104, "Client(uuid: %s): Initialized client without credential", v59, 0xCu);
      v71 = v107;
      __swift_destroy_boxed_opaque_existential_1(v107);
      MEMORY[0x26D69A4E0](v71, -1, -1);
      MEMORY[0x26D69A4E0](v59, -1, -1);

      sub_26BE2E258(v106, &qword_28045E458, &unk_26C00DAA0);
      __swift_destroy_boxed_opaque_existential_1(v108);
      v69(v110, v65);
    }

    else
    {

      sub_26BE2E258(v106, &qword_28045E458, &unk_26C00DAA0);
      __swift_destroy_boxed_opaque_existential_1(v51);
      (*(v100 + 8))(v110, v109);
    }

    sub_26BE29710(v111);
  }

  return v6;
}

uint64_t sub_26BE17A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v11 = *(v7 + 48);
  v12 = *(v7 + 52);
  v13 = swift_allocObject();
  v14 = a5[1];
  v30 = *a5;
  *(v13 + 24) = xmmword_26C00DA50;
  v15 = v13 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  *(v13 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyPackageSecretsStore) = MEMORY[0x277D84F90];
  *(v13 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_inner) = 1;
  v16 = (v13 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state);
  *v16 = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  v16[3] = 0u;
  v16[4] = 0u;
  v16[5] = 0u;
  v16[6] = 0u;
  *(v13 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride) = 2;
  v17 = (v13 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v17[3] = 0u;
  v17[4] = 0u;
  v17[5] = 0u;
  v17[6] = 0u;
  v17[7] = 0u;
  *(v13 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_reportingIntervalSeconds) = 86400;
  v32 = a1;
  sub_26BE295A0(a1, v13 + 40);
  v18 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  v19 = sub_26C00928C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v21(v13 + v18, a2, v19);
  v21(v13 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID, a3, v19);
  sub_26BE038A8(a4, v13 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey);
  swift_beginAccess();
  v22 = *(v13 + 24);
  v23 = *(v13 + 32);
  *(v13 + 24) = v30;
  *(v13 + 32) = v14;
  sub_26BE2958C(v30, v14);
  sub_26BE2962C(v22, v23);
  swift_beginAccess();
  sub_26BE2DE54(a6, v16);
  swift_endAccess();
  if ((~v14 & 0x3000000000000000) != 0)
  {
    sub_26BE2962C(v30, v14);
    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  *(v13 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state) = v24;
  type metadata accessor for SMSemaphore();
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v25 + 120) = MEMORY[0x277D84FA0];
  *(v25 + 112) = 1;
  *(v13 + 16) = v25;
  sub_26C00920C();
  sub_26BE2E258(a6, &qword_28045E460, &qword_26C0206D0);
  __swift_destroy_boxed_opaque_existential_1(a4);
  v26 = *(v20 + 8);
  v26(a3, v19);
  v26(a2, v19);
  sub_26BE29710(v32);
  return v13;
}

uint64_t MLS.Client.Client.__allocating_init(configuration:withClientUUID:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_26C00928C();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  sub_26BE11028(v55);
  if (v2)
  {
    sub_26BE2E258(a2, &qword_28045E458, &unk_26C00DAA0);
    sub_26BE29710(a1);
  }

  else
  {
    v46 = v16;
    v47 = v13;
    v48 = a1;
    v49 = v18;
    v19 = v51;
    v20 = v8;
    v50 = a2;
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v21 = sub_26C009A5C();
    __swift_project_value_buffer(v21, qword_280478E70);
    v22 = v49;
    sub_26BE2E1F0(v50, v49, &qword_28045E458, &unk_26C00DAA0);
    v23 = sub_26C009A3C();
    v45 = sub_26C00AA1C();
    v24 = os_log_type_enabled(v23, v45);
    v25 = v19;
    v26 = v46;
    if (v24)
    {
      v44 = v23;
      v27 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54[0] = v42;
      v43 = v27;
      *v27 = 136315138;
      sub_26BE2E1F0(v22, v26, &qword_28045E458, &unk_26C00DAA0);
      v28 = (*(v25 + 48))(v26, 1, v5);
      v29 = v48;
      if (v28 == 1)
      {
        sub_26BE2E258(v26, &qword_28045E458, &unk_26C00DAA0);
        v30 = 0xE500000000000000;
        v31 = 0x3E6C696E3CLL;
      }

      else
      {
        v34 = v5;
        v31 = sub_26C00922C();
        v30 = v35;
        (*(v25 + 8))(v26, v34);
      }

      v32 = v50;
      sub_26BE2E258(v49, &qword_28045E458, &unk_26C00DAA0);
      v36 = sub_26BE29740(v31, v30, v54);

      v38 = v43;
      v37 = v44;
      *(v43 + 1) = v36;
      _os_log_impl(&dword_26BDFE000, v37, v45, "Initializing new client, received UUID %s", v38, 0xCu);
      v39 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x26D69A4E0](v39, -1, -1);
      MEMORY[0x26D69A4E0](v38, -1, -1);

      v33 = v56;
    }

    else
    {

      sub_26BE2E258(v22, &qword_28045E458, &unk_26C00DAA0);
      v32 = v50;
      v33 = v56;
      v29 = v48;
    }

    sub_26BE295A0(v29, v54);
    sub_26C00927C();
    sub_26BE038A8(v55, v53);
    v52 = xmmword_26C00DA50;
    v40 = v47;
    sub_26BE2E1F0(v32, v47, &qword_28045E458, &unk_26C00DAA0);
    a1 = (*(v33 + 648))(v54, v20, v53, &v52, v40);
    sub_26BE2E258(v32, &qword_28045E458, &unk_26C00DAA0);
    sub_26BE29710(v29);
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  return a1;
}

{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  v4 = sub_26C00928C();
  v3[60] = v4;
  v5 = *(v4 - 8);
  v3[61] = v5;
  v6 = *(v5 + 64) + 15;
  v3[62] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0) - 8) + 64) + 15;
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE182E4, 0, 0);
}

uint64_t sub_26BE182E4()
{
  v30 = v0;
  v1 = v0[57];
  sub_26BE11028(v0 + 47);
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = v0[65];
  v3 = v0[58];
  v4 = sub_26C009A5C();
  __swift_project_value_buffer(v4, qword_280478E70);
  sub_26BE2E1F0(v3, v2, &qword_28045E458, &unk_26C00DAA0);
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[65];
  if (v7)
  {
    v9 = v0[64];
    v10 = v0[60];
    v11 = v0[61];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v29 = v13;
    *v12 = 136315138;
    sub_26BE2E1F0(v8, v9, &qword_28045E458, &unk_26C00DAA0);
    v14 = (*(v11 + 48))(v9, 1, v10);
    v15 = v0[64];
    if (v14 == 1)
    {
      sub_26BE2E258(v0[64], &qword_28045E458, &unk_26C00DAA0);
      v16 = 0xE500000000000000;
      v17 = 0x3E6C696E3CLL;
    }

    else
    {
      v18 = v0[60];
      v19 = v0[61];
      v20 = v0[64];
      v17 = sub_26C00922C();
      v16 = v21;
      (*(v19 + 8))(v15, v18);
    }

    sub_26BE2E258(v0[65], &qword_28045E458, &unk_26C00DAA0);
    v22 = sub_26BE29740(v17, v16, &v29);

    *(v12 + 4) = v22;
    _os_log_impl(&dword_26BDFE000, v5, v6, "Initializing new client, received UUID %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D69A4E0](v13, -1, -1);
    MEMORY[0x26D69A4E0](v12, -1, -1);
  }

  else
  {

    sub_26BE2E258(v8, &qword_28045E458, &unk_26C00DAA0);
  }

  v23 = v0[62];
  v24 = v0[63];
  v26 = v0[58];
  v25 = v0[59];
  sub_26BE295A0(v0[57], (v0 + 2));
  sub_26C00927C();
  sub_26BE038A8((v0 + 47), (v0 + 52));
  v29 = xmmword_26C00DA50;
  sub_26BE2E1F0(v26, v24, &qword_28045E458, &unk_26C00DAA0);
  v0[66] = (*(v25 + 648))(v0 + 2, v23, v0 + 52, &v29, v24);
  v27 = swift_task_alloc();
  v0[67] = v27;
  *v27 = v0;
  v27[1] = sub_26BE186C0;

  return sub_26BE18958();
}

uint64_t sub_26BE186C0()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_26BE18898;
  }

  else
  {
    v3 = sub_26BE187D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE187D4()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  v5 = v0[57];
  sub_26BE2E258(v0[58], &qword_28045E458, &unk_26C00DAA0);
  sub_26BE29710(v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);

  v6 = v0[1];
  v7 = v0[66];

  return v6(v7);
}

uint64_t sub_26BE18898()
{
  v1 = v0[66];
  v2 = v0[57];
  sub_26BE2E258(v0[58], &qword_28045E458, &unk_26C00DAA0);
  sub_26BE29710(v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);

  v3 = v0[68];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];

  v8 = v0[1];

  return v8();
}

uint64_t sub_26BE18958()
{
  v1[21] = v0;
  v2 = sub_26C00928C();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE18A18, 0, 0);
}

uint64_t sub_26BE18A18()
{
  v1 = v0[21];
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    v0[5] = &type metadata for SwiftMLSFeatureFlags;
    v4 = sub_26BE295D8();
    *(v0 + 16) = 0;
    v0[6] = v4;
    v5 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v6 = 0;
      v7 = 0xC000000000000000;
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = v0[21];
  v6 = MLS.Client.Client.rawValue.getter();
  v7 = v9;
LABEL_6:
  v0[25] = v6;
  v0[26] = v7;
  v11 = v0[23];
  v10 = v0[24];
  v13 = v0[21];
  v12 = v0[22];
  swift_beginAccess();
  sub_26BE038A8(v13 + 200, (v0 + 7));
  v14 = v0[10];
  v15 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v14);
  v16 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  swift_beginAccess();
  (*(v11 + 16))(v10, v13 + v16, v12);
  v17 = *(v15 + 16);
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[27] = v19;
  *v19 = v0;
  v19[1] = sub_26BE18CA0;
  v20 = v0[24];

  return v22(v20, v6, v7, v14, v15);
}

uint64_t sub_26BE18CA0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v5 = sub_26BE18E80;
  }

  else
  {
    v5 = sub_26BE18E08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE18E08()
{
  v1 = v0[24];
  sub_26BE00258(v0[25], v0[26]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BE18E80()
{
  sub_26BE00258(v0[25], v0[26]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[28];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

void sub_26BE18EF4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v2 + v5, v18);
  v6 = MEMORY[0x277D84F90];
  v17[7] = MEMORY[0x277D84F90];
  v17[8] = MEMORY[0x277D84F90];
  sub_26BE04890(v3, v4);
  v17[9] = sub_26C00447C(v6);
  v17[10] = sub_26C004684(v6);
  v17[11] = MEMORY[0x277D84FA0];
  v17[12] = v2;
  v7 = v19;
  v8 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v9 = *(v8 + 8);
  v10 = *(v9 + 24);

  v10(v21, v7, v9);
  v11 = v2;
  LOBYTE(v2) = v21[0];

  v16[0] = v2;
  sub_26BE038A8(v18, v17);
  v17[5] = v3;
  v17[6] = v4;
  sub_26BE2B9C8(v16, v21);
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_26BE2BA24(v16);
  v12 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
  swift_beginAccess();
  sub_26BE2BA78(v21, v11 + v12);
  swift_endAccess();
  swift_beginAccess();
  v13 = *(v11 + 24);
  v14 = *(v11 + 32);
  *(v11 + 24) = v3;
  *(v11 + 32) = v4;
  sub_26BE04890(v3, v4);
  sub_26BE2962C(v13, v14);
  v15 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  swift_beginAccess();
  if ((*(v11 + v15) & 1) == 0)
  {
    *(v11 + v15) = 1;
  }

  sub_26BE7C9B8(1u, 1);
}

uint64_t sub_26BE190CC(_OWORD *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_26BE190F4, 0, 0);
}

uint64_t sub_26BE190F4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  sub_26BE04890(v1, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_26BE191BC;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_26BE8CF34();
}

uint64_t sub_26BE191BC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_26BE2E40C;
  }

  else
  {
    v3 = sub_26BE2E3EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE192D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[62] = a3;
  v4[63] = a4;
  v4[61] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0) - 8) + 64) + 15;
  v4[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE19370, 0, 0);
}

uint64_t sub_26BE19370()
{
  v44 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478E70);
  sub_26BE04890(v2, v1);
  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();
  sub_26BE0489C(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 496);
    v6 = *(v0 + 504);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    v42 = v7;
    *v8 = 136315138;
    v43 = v6;
    sub_26BE04890(v7, v6);
    v10 = MLS.Identity.Credential.description.getter();
    v12 = v11;
    sub_26BE0489C(v42, v43);
    v13 = sub_26BE29740(v10, v12, &v41);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_26BDFE000, v4, v5, "Loading credential %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D69A4E0](v9, -1, -1);
    MEMORY[0x26D69A4E0](v8, -1, -1);
  }

  v14 = *(v0 + 504);
  v40 = *(v0 + 512);
  v16 = *(v0 + 488);
  v15 = *(v0 + 496);
  v17 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v16 + v17, v0 + 360);
  v18 = *(v0 + 384);
  v19 = *(v0 + 392);
  __swift_project_boxed_opaque_existential_1((v0 + 360), v18);
  v20 = *(v19 + 40);
  *(v0 + 296) = swift_getAssociatedTypeWitness();
  *(v0 + 304) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 272));
  v20(v18, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 360));
  *(v0 + 256) = v15;
  *(v0 + 264) = v14;
  swift_beginAccess();
  sub_26BE038A8(v16 + 240, v0 + 400);
  v21 = *(v0 + 424);
  v22 = *(v0 + 432);
  __swift_project_boxed_opaque_existential_1((v0 + 400), v21);
  v23 = sub_26C00921C();
  (*(*(v23 - 8) + 56))(v40, 1, 1, v23);
  v24 = *(v22 + 8);
  sub_26BE04890(v15, v14);
  LOBYTE(v17) = v24(v0 + 256, v40, v21, v22);
  sub_26BE2E258(*(v0 + 512), &qword_28045E4A8, &unk_26C00ECB0);
  __swift_destroy_boxed_opaque_existential_1((v0 + 400));
  if (v17)
  {
    v25 = *(v0 + 488);
    sub_26BE18EF4((v0 + 256));
    v26 = swift_task_alloc();
    *(v0 + 520) = v26;
    *v26 = v0;
    v26[1] = sub_26BE1999C;
    v27 = *(v0 + 488);

    return sub_26BE18958();
  }

  else
  {
    v29 = sub_26C009A3C();
    v30 = sub_26C00AA0C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26BDFE000, v29, v30, "Provided credential was invalid", v31, 2u);
      MEMORY[0x26D69A4E0](v31, -1, -1);
    }

    v32 = *(v0 + 488);

    *(v0 + 16) = 18;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0;
    *(v0 + 128) = 23;
    v33 = sub_26C00A45C();
    sub_26BE2DC18(v0 + 16, v0 + 136);
    v34 = swift_allocObject();
    *(v34 + 16) = 1;
    *(v34 + 88) = *(v0 + 200);
    *(v34 + 104) = *(v0 + 216);
    *(v34 + 120) = *(v0 + 232);
    *(v34 + 136) = *(v0 + 248);
    *(v34 + 24) = *(v0 + 136);
    *(v34 + 40) = *(v0 + 152);
    *(v34 + 56) = *(v0 + 168);
    *(v34 + 72) = *(v0 + 184);
    *(v0 + 344) = sub_26BE2E3DC;
    *(v0 + 352) = v34;
    *(v0 + 312) = MEMORY[0x277D85DD0];
    *(v0 + 320) = 1107296256;
    *(v0 + 328) = sub_26BEB8234;
    *(v0 + 336) = &block_descriptor_177;
    v35 = _Block_copy((v0 + 312));
    v36 = *(v0 + 352);

    AnalyticsSendEventLazy();
    _Block_release(v35);

    sub_26BE7C9B8(1u, 0);
    sub_26BE2DC9C(v0 + 16);
    sub_26BE01654();
    swift_allocError();
    *v37 = 18;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    *(v37 + 40) = 0u;
    *(v37 + 56) = 0u;
    *(v37 + 72) = 0u;
    *(v37 + 88) = 0u;
    *(v37 + 104) = 0;
    *(v37 + 112) = 23;
    swift_willThrow();
    sub_26BE2DBC4(v0 + 256);
    v38 = *(v0 + 512);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_26BE1999C()
{
  v2 = *(*v1 + 520);
  v5 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = sub_26BE19B20;
  }

  else
  {
    v3 = sub_26BE19AB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE19AB0()
{
  v1 = *(v0 + 512);
  sub_26BE2DBC4(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE19B20()
{
  sub_26BE2DBC4((v0 + 32));
  v1 = v0[66];
  v2 = v0[64];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE19B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_26BE19BB0, 0, 0);
}

uint64_t sub_26BE19BB0()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[8] = v6;
  v0[9] = v7;
  v0[10] = v1[2];

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_26BE19CC0;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE19CC0()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE19FAC, 0, 0);
  }

  else
  {
    v4 = v3[10];
    v5 = v3[5];

    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v3[13] = v7;
    *v7 = v3;
    v7[1] = sub_26BE19E98;
    v8 = v3[6];

    return v10();
  }
}

uint64_t sub_26BE19E98()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_26BE1A278;
  }

  else
  {
    v3 = sub_26BE1A1D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE19FAC()
{
  v17 = v0;
  v1 = v0[10];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v16);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v16);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[12];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BE1A1D4()
{
  v0[15] = *(v0[7] + 16);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_26BE2E3B0;

  return sub_26BEAB784();
}

uint64_t sub_26BE1A278()
{
  v0[17] = *(v0[7] + 16);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_26BE1A31C;

  return sub_26BEAB784();
}

uint64_t sub_26BE1A31C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE2E3E4, 0, 0);
}

uint64_t sub_26BE1A434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_26BE1A458, 0, 0);
}

uint64_t sub_26BE1A458()
{
  v1 = v0[7];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[8] = v7;
  v0[9] = v8;
  v0[10] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_26BE1A56C;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE1A56C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE2E3B4, 0, 0);
  }

  else
  {
    v4 = v3[10];
    v5 = v3[5];

    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v3[13] = v7;
    *v7 = v3;
    v7[1] = sub_26BE19E98;
    v8 = v3[6];

    return v10();
  }
}

uint64_t sub_26BE1A744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_26BE1A768, 0, 0);
}

uint64_t sub_26BE1A768()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[8] = v6;
  v0[9] = v7;
  v0[10] = v1[2];

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_26BE1A878;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE1A878()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE1AA50, 0, 0);
  }

  else
  {
    v4 = v3[10];
    v5 = v3[5];

    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v3[13] = v7;
    *v7 = v3;
    v7[1] = sub_26BE19E98;
    v8 = v3[6];

    return v10();
  }
}

uint64_t sub_26BE1AA50()
{
  v17 = v0;
  v1 = v0[10];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v16);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v16);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[12];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BE1AC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_26BE1ACA4, 0, 0);
}

uint64_t sub_26BE1ACA4()
{
  v1 = v0[10];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[11] = v7;
  v0[12] = v8;
  v0[13] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_26BE1ADB8;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE1ADB8()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE1B0AC, 0, 0);
  }

  else
  {
    v4 = v3[13];
    v5 = v3[8];

    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v3[16] = v7;
    *v7 = v3;
    v7[1] = sub_26BE1AF98;
    v8 = v3[9];

    return v10(v3 + 5);
  }
}

uint64_t sub_26BE1AF98()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_26BE1B4A8;
  }

  else
  {
    v3 = sub_26BE1B2E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE1B0AC()
{
  v17 = v0;
  v1 = v0[13];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v16);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v16);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[15];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BE1B2E4()
{
  v1 = *(v0 + 80);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 144) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26BE1B394;

  return sub_26BEAB784();
}

uint64_t sub_26BE1B394()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26BE1B4A8()
{
  v0[20] = *(v0[10] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BE1B54C;

  return sub_26BEAB784();
}

uint64_t sub_26BE1B54C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE1B664, 0, 0);
}

uint64_t sub_26BE1B664()
{
  v1 = *(v0 + 136);
  swift_willThrow();
  v2 = *(v0 + 136);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26BE1B6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_26BE1B6F4, 0, 0);
}

uint64_t sub_26BE1B6F4()
{
  v1 = v0[7];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[8] = v7;
  v0[9] = v8;
  v0[10] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_26BE1B808;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE1B808()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE1BAF4, 0, 0);
  }

  else
  {
    v4 = v3[10];
    v5 = v3[5];

    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v3[13] = v7;
    *v7 = v3;
    v7[1] = sub_26BE1B9E0;
    v8 = v3[6];

    return v10();
  }
}

uint64_t sub_26BE1B9E0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_26BE1BEE4;
  }

  else
  {
    v3 = sub_26BE1BD2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE1BAF4()
{
  v17 = v0;
  v1 = v0[10];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v16);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v16);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[12];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BE1BD2C()
{
  v0[15] = *(v0[7] + 16);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_26BE1BDD0;

  return sub_26BEAB784();
}

uint64_t sub_26BE1BDD0()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26BE1BEE4()
{
  v0[17] = *(v0[7] + 16);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_26BE1BF88;

  return sub_26BEAB784();
}

uint64_t sub_26BE1BF88()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE1C0A0, 0, 0);
}

uint64_t sub_26BE1C0A0()
{
  v1 = *(v0 + 112);
  swift_willThrow();
  v2 = *(v0 + 112);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26BE1C10C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  result = swift_beginAccess();
  if (*(v0 + v2) != 1)
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v4 = sub_26C009A5C();
    __swift_project_value_buffer(v4, qword_280478E70);

    v5 = sub_26C009A3C();
    v6 = sub_26C00AA0C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      if (*(v1 + v2))
      {
        v9 = 0x79646165722ELL;
      }

      else
      {
        v9 = 0xD000000000000015;
      }

      if (*(v1 + v2))
      {
        v10 = 0xE600000000000000;
      }

      else
      {
        v10 = 0x800000026C02AB20;
      }

      v11 = sub_26BE29740(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_26BDFE000, v5, v6, "Expected client to be in .ready, got %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69A4E0](v8, -1, -1);
      MEMORY[0x26D69A4E0](v7, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v12 = 17;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0;
    *(v12 + 112) = 23;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26BE1C318(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE1C338, 0, 0);
}

uint64_t sub_26BE1C338()
{
  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26BE1C3F0;
  v3 = v0[2];
  v4 = v0[3];

  return sub_26BE8E304(v3, v4, v4);
}

uint64_t sub_26BE1C3F0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26BE1C4E4(uint64_t a1, uint64_t a2)
{
  v2[111] = a2;
  v2[110] = a1;
  v3 = *(*(type metadata accessor for MLS.MLSMessage(0) - 8) + 64) + 15;
  v2[112] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE1C578, 0, 0);
}

uint64_t sub_26BE1C578()
{
  v1 = *(v0 + 888);
  sub_26BE1C10C();
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 888);
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478E70);

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 888);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(*(v7 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyPackageSecretsStore) + 16);

    _os_log_impl(&dword_26BDFE000, v4, v5, "Generating key package (%ld generated already)", v8, 0xCu);
    MEMORY[0x26D69A4E0](v8, -1, -1);
  }

  else
  {
    v9 = *(v0 + 888);
  }

  v10 = *(v0 + 888);
  v11 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v12 = *(v10 + v11);
  if (v12 == 2)
  {
    *(v0 + 816) = &type metadata for SwiftMLSFeatureFlags;
    *(v0 + 824) = sub_26BE295D8();
    *(v0 + 792) = 0;
    v13 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 792));
    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((v12 & 1) == 0)
  {
LABEL_8:
    sub_26BE01654();
    swift_allocError();
    strcpy(v14, "Shim is gone!");
    *(v14 + 7) = -4864;
    v14[112] = 2;
    swift_willThrow();
    v35 = *(v0 + 896);

    v36 = *(v0 + 8);

    return v36();
  }

  v15 = *(v0 + 888);
  sub_26BE16230((v0 + 568));
  sub_26BEB6C88(v0 + 16);
  v16 = *(v0 + 160);
  v17 = *(v0 + 176);
  v18 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = v16;
  *(v0 + 360) = v17;
  v19 = *(v0 + 96);
  v20 = *(v0 + 112);
  v21 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v19;
  *(v0 + 296) = v20;
  *(v0 + 312) = v18;
  v22 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v22;
  v23 = *(v0 + 64);
  v25 = *(v0 + 16);
  v24 = *(v0 + 32);
  v26 = *(v0 + 48);
  *(v0 + 232) = v26;
  *(v0 + 248) = v23;
  v27 = *(v0 + 896);
  *(v0 + 376) = *(v0 + 192);
  *(v27 + 32) = v26;
  *(v27 + 48) = v21;
  *v27 = v25;
  *(v27 + 16) = v24;
  v28 = *(v0 + 80);
  v29 = *(v0 + 96);
  v30 = *(v0 + 128);
  *(v27 + 96) = *(v0 + 112);
  *(v27 + 112) = v30;
  *(v27 + 64) = v28;
  *(v27 + 80) = v29;
  v31 = *(v0 + 144);
  v32 = *(v0 + 160);
  v33 = *(v0 + 176);
  *(v27 + 176) = *(v0 + 192);
  *(v27 + 144) = v32;
  *(v27 + 160) = v33;
  *(v27 + 128) = v31;
  type metadata accessor for MLS.MLSMessage.Inner(0);
  swift_storeEnumTagMultiPayload();
  sub_26BE2DFC0(v0 + 200, v0 + 384);
  *(v0 + 904) = MLS.MLSMessage.rawValue.getter();
  *(v0 + 912) = v34;
  v38 = *(v0 + 888);
  sub_26BE2E190(*(v0 + 896), type metadata accessor for MLS.MLSMessage);
  sub_26BE2E01C(v0 + 200);
  v39 = *(v0 + 648);
  *(v0 + 744) = *(v0 + 632);
  *(v0 + 760) = v39;
  *(v0 + 776) = *(v0 + 664);
  v40 = *(v0 + 584);
  *(v0 + 680) = *(v0 + 568);
  *(v0 + 696) = v40;
  v41 = *(v0 + 616);
  *(v0 + 712) = *(v0 + 600);
  *(v0 + 728) = v41;
  v42 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
  swift_beginAccess();
  sub_26BE2BA78(v0 + 680, v38 + v42);
  swift_endAccess();
  v43 = swift_task_alloc();
  *(v0 + 920) = v43;
  *v43 = v0;
  v43[1] = sub_26BE1C99C;
  v44 = *(v0 + 888);

  return sub_26BE18958();
}

uint64_t sub_26BE1C99C()
{
  v2 = *(*v1 + 920);
  v5 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v3 = sub_26BE1CB24;
  }

  else
  {
    v3 = sub_26BE1CAB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE1CAB0()
{
  v1 = *(v0 + 896);
  **(v0 + 880) = *(v0 + 904);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE1CB24()
{
  sub_26BE00258(v0[113], v0[114]);
  v1 = v0[116];
  v2 = v0[112];

  v3 = v0[1];

  return v3();
}

char *sub_26BE1CB94(uint64_t a1)
{
  v2 = v1;
  v28 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v4 = *(v1 + 280) == 0xD00000000000001ALL && 0x800000026C02AD20 == *(v1 + 288);
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {
    if ((a1 & 0x100000000) != 0)
    {
      LODWORD(a1) = sub_26BE4126C();
    }

    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v5 = sub_26C009A5C();
    __swift_project_value_buffer(v5, qword_280478E70);

    v6 = sub_26C009A3C();
    v7 = sub_26C00AA1C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25[0] = v9;
      *v8 = 136315394;
      v10 = sub_26BE16A38();
      v2 = sub_26BE29740(v10, v11, v25);

      *(v8 + 4) = v2;
      *(v8 + 12) = 1024;
      *(v8 + 14) = a1;
      _os_log_impl(&dword_26BDFE000, v6, v7, "%s: adding era=%u extension to initial group context extensions", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D69A4E0](v9, -1, -1);
      MEMORY[0x26D69A4E0](v8, -1, -1);
    }

    v26 = xmmword_26C00BBD0;
    v27 = 0;
    v24 = bswap32(a1);
    v25[3] = MEMORY[0x277D838B0];
    v25[4] = MEMORY[0x277CC9C18];
    v25[0] = &v24;
    v25[1] = v25;
    v12 = __swift_project_boxed_opaque_existential_1(v25, MEMORY[0x277D838B0]);
    v14 = *v12;
    v13 = v12[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(v25);
    v17 = *(&v26 + 1);
    v16 = v26;
    v18 = *(&v26 + 1) >> 62;
    if ((*(&v26 + 1) >> 62) > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_20;
      }

      v19 = *(v26 + 24);
    }

    else
    {
      if (!v18)
      {
        goto LABEL_20;
      }

      v19 = v26 >> 32;
    }

    if (v19 < 0)
    {
      __break(1u);
      goto LABEL_24;
    }

LABEL_20:
    v2 = sub_26C00909C();
    v6 = v20;
    sub_26BE00258(v16, v17);
    v15 = sub_26BEEBD8C(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);
    v16 = v17 + 1;
    if (v17 < v18 >> 1)
    {
LABEL_21:
      *(v15 + 2) = v16;
      v21 = &v15[24 * v17];
      *(v21 + 16) = -4095;
      *(v21 + 5) = v2;
      *(v21 + 6) = v6;
      goto LABEL_22;
    }

LABEL_24:
    v15 = sub_26BEEBD8C((v18 > 1), v16, 1, v15);
    goto LABEL_21;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_22:
  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t sub_26BE1CEB8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BE1CEDC, 0, 0);
}

uint64_t sub_26BE1CEDC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_26BE2BAE8(v3, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_26BE1CFA4;
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  return (sub_26BEACBE4)(v5);
}

uint64_t sub_26BE1CFA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  v7 = sub_26BE132D4(*(v4 + 16), *(v4 + 24));
  v8 = *(v6 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_26BE1D0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[49] = a3;
  v4[50] = a4;
  v4[47] = a1;
  v4[48] = a2;
  v5 = *(*(sub_26C00A4EC() - 8) + 64) + 15;
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE1D178, 0, 0);
}

uint64_t sub_26BE1D178()
{
  v81 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v2 = sub_26C009A5C();
  *(v0 + 416) = __swift_project_value_buffer(v2, qword_280478E70);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 384);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v76 = v7;
    *v6 = 136315138;
    v8 = sub_26BE16A38();
    v10 = sub_26BE29740(v8, v9, &v76);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: creating group", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v11 = *(v0 + 384);
  sub_26BE1C10C();
  v12 = *(v0 + 400);
  v13 = *(v0 + 384);
  swift_beginAccess();
  v14 = *(v13 + 72);
  v16 = *(v13 + 80);
  v15 = *(v13 + 88);
  v17 = *(v13 + 96);
  v75 = *(v13 + 104);
  *(v0 + 424) = v75;
  if (v12 >> 60 == 15)
  {
    LOBYTE(v76) = v14;
    v77 = v16;
    v78 = v15;
    v79 = v17;
    v80 = v75;
    v18 = v15;

    v19 = MLS.Cryptography.Ciphersuite.generateRandomGroupID()();
    v21 = v20;
    v70 = v17;
    v71 = v18;
    v72 = v16;
    v73 = v14;
    v23 = *(v0 + 392);
    v22 = *(v0 + 400);
  }

  else
  {
    v70 = v17;
    v71 = v15;
    v72 = v16;
    v73 = v14;
    v23 = *(v0 + 392);
    v22 = *(v0 + 400);

    v19 = v23;
    v21 = v22;
  }

  *(v0 + 432) = v19;
  *(v0 + 440) = v21;
  v24 = *(v0 + 384);

  sub_26BE2BAE8(v23, v22);
  sub_26BE00608(v19, v21);
  v25 = sub_26C009A3C();
  v26 = sub_26C00AA1C();

  sub_26BE00258(v19, v21);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 384);
    v28 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v76 = v69;
    *v28 = 136315394;
    v29 = sub_26BE16A38();
    v31 = sub_26BE29740(v29, v30, &v76);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    *(v0 + 368) = sub_26BF87240(v19, v21);
    v32 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
    v33 = sub_26C00A3EC();
    v35 = v34;

    v36 = sub_26BE29740(v33, v35, &v76);
    v21 = v32;

    *(v28 + 14) = v36;
    _os_log_impl(&dword_26BDFE000, v25, v26, "%s: generated group ID: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v69, -1, -1);
    MEMORY[0x26D69A4E0](v28, -1, -1);
  }

  v37 = *(v0 + 408);
  sub_26C00A4CC();
  sub_26C00A4AC();
  v38 = *(v0 + 384);
  if (v39)
  {

    sub_26BE16230((v0 + 16));
    v57 = *(v0 + 384);
    sub_26BE16490(&v76);
    v58 = v19;
    v59 = *(v0 + 384);
    v60 = v21;
    v61 = v76;
    v62 = v77;
    *(v0 + 448) = v76;
    *(v0 + 456) = v62;
    *(v0 + 240) = v73;
    *(v0 + 248) = v72;
    *(v0 + 256) = v71;
    *(v0 + 264) = v70;
    *(v0 + 272) = v75;
    *(v0 + 328) = v61;
    *(v0 + 336) = v62;

    sub_26BE04890(v61, v62);
    LOBYTE(v76) = 1;
    v63 = sub_26BE1CB94(0x100000000);
    v64 = type metadata accessor for MLS.Group.PureSwiftGroup();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();

    sub_26BE00608(v58, v60);
    v67 = swift_task_alloc();
    *(v0 + 464) = v67;
    *v67 = v0;
    v67[1] = sub_26BE1D970;
    v68 = *(v0 + 384);

    return sub_26BF3EDD8(v68, v58, v60, v0 + 240, (v0 + 328), v63);
  }

  else
  {
    v40 = *(v0 + 384);

    sub_26BE00608(v19, v21);
    v41 = sub_26C009A3C();
    v42 = sub_26C00AA0C();

    sub_26BE00258(v19, v21);
    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 384);
      v44 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v76 = v74;
      *v44 = 136315394;
      v45 = sub_26BE16A38();
      v47 = v19;
      v48 = sub_26BE29740(v45, v46, &v76);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      *(v0 + 344) = sub_26BF87240(v47, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
      v49 = sub_26C00A3EC();
      v51 = v50;
      v19 = v47;

      v52 = sub_26BE29740(v49, v51, &v76);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_26BDFE000, v41, v42, "%s: requested group ID (hex: %s) was not UTF-8 decodable", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v74, -1, -1);
      MEMORY[0x26D69A4E0](v44, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v53 = 46;
    v53[112] = 0;
    swift_willThrow();
    sub_26BE00258(v19, v21);

    v54 = *(v0 + 408);

    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_26BE1D970(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 464);
  v7 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v5 = sub_26BE1DE10;
  }

  else
  {
    v5 = sub_26BE1DA84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE1DA84()
{
  v33 = v0;
  v1 = (v0 + 2);
  if (sub_26BF32868(v0[54], v0[55], v0[14]))
  {
    v3 = v0[54];
    v2 = v0[55];
    v4 = v0[52];
    sub_26BE00608(v3, v2);
    v5 = sub_26C009A3C();
    v6 = sub_26C00AA0C();
    sub_26BE00258(v3, v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[60];
      v9 = v0[54];
      v8 = v0[55];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32[0] = v11;
      *v10 = 136315138;
      v0[45] = sub_26BF87240(v9, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      v1 = (v0 + 2);
      sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
      v12 = sub_26C00A3EC();
      v14 = v13;

      v15 = sub_26BE29740(v12, v14, v32);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_26BDFE000, v5, v6, "Tried to create group with ID %s that already exists", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69A4E0](v11, -1, -1);
      MEMORY[0x26D69A4E0](v10, -1, -1);
    }

    v16 = v0[59];
    v18 = v0[56];
    v17 = v0[57];
    v20 = v0[54];
    v19 = v0[55];
    v21 = v0[53];
    sub_26BE01654();
    swift_allocError();
    *v22 = 38;
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 0u;
    *(v22 + 56) = 0u;
    *(v22 + 72) = 0u;
    *(v22 + 88) = 0u;
    *(v22 + 104) = 0;
    *(v22 + 112) = 23;
    swift_willThrow();

    sub_26BE00258(v20, v19);
    sub_26BE0489C(v18, v17);
    sub_26BE2BA24(v1);
    v23 = v0[51];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v27 = v0[54];
    v26 = v0[55];
    v28 = v0[48];
    sub_26BE00608(v27, v26);
    sub_26BF7532C(v32, v27, v26);
    sub_26BE00258(v32[0], v32[1]);
    sub_26BE2B9C8((v0 + 2), (v0 + 16));
    v29 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
    swift_beginAccess();
    sub_26BE2BA78((v0 + 16), v28 + v29);
    swift_endAccess();
    v30 = swift_task_alloc();
    v0[61] = v30;
    *v30 = v0;
    v30[1] = sub_26BE1DEAC;
    v31 = v0[48];

    return sub_26BE18958();
  }
}

uint64_t sub_26BE1DE10()
{
  v1 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v5 = v0[53];

  sub_26BE00258(v4, v3);
  sub_26BE0489C(v1, v2);
  sub_26BE2BA24((v0 + 2));
  v6 = v0[60];
  v7 = v0[51];

  v8 = v0[1];

  return v8();
}

uint64_t sub_26BE1DEAC()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_26BE1E278;
  }

  else
  {
    v3 = sub_26BE1DFC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE1DFC0()
{
  v35 = v0;
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[52];
  v4 = v0[48];

  sub_26BE00608(v2, v1);
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();

  sub_26BE00258(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[62];
    v9 = v0[54];
    v8 = v0[55];
    v30 = v8;
    v31 = v0[56];
    v32 = v0[53];
    v33 = v0[57];
    v10 = v0[48];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34[0] = v12;
    *v11 = 136315394;
    v13 = sub_26BE16A38();
    v15 = sub_26BE29740(v13, v14, v34);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v0[44] = sub_26BF87240(v9, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
    v16 = sub_26C00A3EC();
    v18 = v17;

    v19 = sub_26BE29740(v16, v18, v34);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_26BDFE000, v5, v6, "%s created group %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v12, -1, -1);
    MEMORY[0x26D69A4E0](v11, -1, -1);

    sub_26BE0489C(v31, v33);

    sub_26BE00258(v9, v30);
  }

  else
  {
    v21 = v0[56];
    v20 = v0[57];
    v23 = v0[54];
    v22 = v0[55];
    v24 = v0[53];

    sub_26BE00258(v23, v22);
    sub_26BE0489C(v21, v20);
  }

  v25 = v0[59];
  v26 = v0[51];
  v27 = v0[47];
  sub_26BE2BA24((v0 + 2));
  *v27 = v25;

  v28 = v0[1];

  return v28();
}

uint64_t sub_26BE1E278()
{
  v1 = v0[59];
  v2 = v0[56];
  v3 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[53];

  sub_26BE00258(v5, v4);
  sub_26BE0489C(v2, v3);
  sub_26BE2BA24((v0 + 2));
  v7 = v0[62];
  v8 = v0[51];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26BE1E328(_OWORD *a1, _OWORD *a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = *a1;
  *(v3 + 40) = *a2;
  return MEMORY[0x2822009F8](sub_26BE1E358, 0, 0);
}

uint64_t sub_26BE1E358()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_26BE00608(v4, v3);
  sub_26BE2BAE8(v1, v2);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_26BE1E43C;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return (sub_26BEAD328)(v11);
}

uint64_t sub_26BE1E43C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  v7 = v4[4];
  v8 = v4[3];
  sub_26BE132D4(v4[5], v4[6]);
  v9 = sub_26BE00258(v8, v7);
  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_26BE1E5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *MEMORY[0x277D85DE8];
  v6[179] = a6;
  v6[178] = a5;
  v6[177] = a4;
  v6[176] = a3;
  v6[175] = a2;
  v6[174] = a1;
  v7 = type metadata accessor for MLS.GroupState();
  v6[180] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[181] = swift_task_alloc();
  v6[182] = swift_task_alloc();
  v6[183] = swift_task_alloc();
  v6[184] = swift_task_alloc();
  v6[185] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26BE1E6BC, 0, 0);
}

uint64_t sub_26BE1E6BC()
{
  v140 = v0;
  v139 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1400);
  sub_26BE1C10C();
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1416);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1400);
  v5 = sub_26C009A5C();
  *(v0 + 1488) = __swift_project_value_buffer(v5, qword_280478E70);
  sub_26BE00608(v3, v2);
  sub_26BE00608(v3, v2);

  v6 = sub_26C009A3C();
  v7 = sub_26C00AA1C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1416);
  if (!v8)
  {
    v19 = *(v0 + 1408);
    sub_26BE00258(v19, *(v0 + 1416));
    sub_26BE00258(v19, v9);
    goto LABEL_16;
  }

  v10 = *(v0 + 1400);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  *&v137 = v12;
  *v11 = 136315394;
  v13 = sub_26BE16A38();
  v15 = sub_26BE29740(v13, v14, &v137);

  *(v11 + 4) = v15;
  *(v11 + 12) = 2048;
  v16 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v16 != 2)
    {
      sub_26BE00258(*(v0 + 1408), *(v0 + 1416));
      v18 = 0;
      goto LABEL_15;
    }

    v20 = *(v0 + 1408);
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    sub_26BE00258(v20, *(v0 + 1416));
    v18 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v23 = *(v0 + 1408);
    sub_26BE00258(v23, *(v0 + 1416));
    LODWORD(v18) = HIDWORD(v23) - v23;
    if (__OFSUB__(HIDWORD(v23), v23))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
    }

    v18 = v18;
    goto LABEL_15;
  }

  if (v16)
  {
    goto LABEL_12;
  }

  v17 = *(v0 + 1416);
  sub_26BE00258(*(v0 + 1408), v17);
  v18 = BYTE6(v17);
LABEL_15:
  v24 = *(v0 + 1416);
  v25 = *(v0 + 1408);
  *(v11 + 14) = v18;
  sub_26BE00258(v25, v24);
  _os_log_impl(&dword_26BDFE000, v6, v7, "%s: Joining group using Welcome (length: %ld)", v11, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v12);
  MEMORY[0x26D69A4E0](v12, -1, -1);
  MEMORY[0x26D69A4E0](v11, -1, -1);
LABEL_16:

  v26 = *(v0 + 1400);
  v27 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v28 = *(v26 + v27);
  if (v28 == 2)
  {
    *(v0 + 1232) = &type metadata for SwiftMLSFeatureFlags;
    *(v0 + 1240) = sub_26BE295D8();
    *(v0 + 1208) = 0;
    v29 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 1208));
    if ((v29 & 1) == 0)
    {
LABEL_18:
      sub_26BE01654();
      swift_allocError();
      strcpy(v30, "Shim is gone!");
      *(v30 + 7) = -4864;
      v30[112] = 2;
      swift_willThrow();
LABEL_38:
      v64 = *(v0 + 1480);
      v65 = *(v0 + 1472);
      v66 = *(v0 + 1464);
      v67 = *(v0 + 1456);
      v68 = *(v0 + 1448);

      v69 = *(v0 + 8);
      v70 = *MEMORY[0x277D85DE8];

      return v69();
    }
  }

  else if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

  v31 = *(v0 + 1400);
  sub_26BE16230((v0 + 936));
  v32 = *(v0 + 1400);
  sub_26BE16490(&v137);
  v33 = *(v0 + 1432);
  v34 = *(&v137 + 1);
  v35 = v137;
  *(v0 + 1496) = v137;
  *(v0 + 1504) = v34;
  if (v33 >> 60 == 15)
  {
    v36 = 0;
LABEL_22:
    v37 = *(v0 + 1480);
    v137 = *(v0 + 1408);
    v134 = v36;
    MLS.ClientState.joinGroup(welcome:ratchetTree:)(&v137, &v134, v37);
    v44 = *(v0 + 1480);

    v45 = sub_26BF32868(*(v44 + 8), *(v44 + 16), *(v0 + 1032));
    *(v0 + 810) = v45 & 1;
    if (v45)
    {
      sub_26BE2E12C(*(v0 + 1480), *(v0 + 1472));
      v46 = sub_26C009A3C();
      v47 = sub_26C00AA1C();
      v48 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 1472);
      if (v48)
      {
        v132 = v47;
        v50 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *&v137 = v131;
        *v50 = 136315138;
        *(v0 + 1376) = sub_26BF87240(*(v49 + 8), *(v49 + 16));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
        sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
        v51 = sub_26C00A3EC();
        v53 = v52;

        sub_26BE2E190(v49, type metadata accessor for MLS.GroupState);
        v54 = sub_26BE29740(v51, v53, &v137);

        *(v50 + 4) = v54;
        _os_log_impl(&dword_26BDFE000, v46, v132, "Trying to join group with ID %s that already exists; checking for era advancement", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v131);
        MEMORY[0x26D69A4E0](v131, -1, -1);
        MEMORY[0x26D69A4E0](v50, -1, -1);
      }

      else
      {

        sub_26BE2E190(v49, type metadata accessor for MLS.GroupState);
      }

      v87 = *(v44 + 8);
      v86 = *(v44 + 16);
      v88 = swift_task_alloc();
      *(v0 + 1512) = v88;
      *v88 = v0;
      v88[1] = sub_26BE1F44C;
      v89 = *(v0 + 1480);
      v90 = *(v0 + 1400);
      v91 = *MEMORY[0x277D85DE8];

      return sub_26BE20928(v87, v86, v89);
    }

    else
    {
      v72 = *(v0 + 1504);
      v73 = *(v0 + 1496);
      v74 = *(v0 + 1480);
      v75 = *(v0 + 1448);
      v76 = *(v0 + 1400);
      *(v0 + 1296) = v73;
      *(v0 + 1304) = v72;
      sub_26BE2E12C(v74, v75);
      v77 = type metadata accessor for MLS.Group.PureSwiftGroup();
      v78 = *(v77 + 48);
      v79 = *(v77 + 52);
      swift_allocObject();

      sub_26BE04890(v73, v72);
      v80 = swift_task_alloc();
      *(v0 + 1544) = v80;
      *v80 = v0;
      v80[1] = sub_26BE1FC30;
      v81 = *(v0 + 1448);
      v82 = *(v0 + 1400);
      v83 = *MEMORY[0x277D85DE8];

      return sub_26BF3DD04(v82, (v0 + 1296), v81);
    }
  }

  v38 = 0;
  v39 = (v0 + 1424);
  v40 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v40 != 2)
    {
      goto LABEL_29;
    }

    v41 = *v39;
    v38 = *(*v39 + 16);
  }

  else
  {
    if (!v40)
    {
      goto LABEL_29;
    }

    v41 = *v39;
    v38 = *v39;
  }

  sub_26BE00608(v41, v33);
  v33 = *(v0 + 1432);
LABEL_29:
  v134 = *v39;
  v135 = v33;
  v136 = v38;
  sub_26BE00608(v134, v33);
  sub_26BE00608(v134, v33);
  sub_26BF30764(&v134, &v137);
  if (BYTE8(v137))
  {
    sub_26BE00258(v134, v135);
    v55 = *(v0 + 1432);
    v56 = v55;
    v57 = (v0 + 1424);
LABEL_36:
    v58 = *v39;
    sub_26BE00258(*v57, v56);
    v134 = v58;
    v135 = v55;
    sub_26BE01600();
    swift_allocError();
    *v59 = 1;
    v43 = v134;
    v42 = v135;
LABEL_37:
    v60 = *(v0 + 1432);
    v61 = *(v0 + 1424);
    swift_willThrow();
    *(v0 + 1384) = &type metadata for MLS.RatchetTree;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C0, &unk_26C011290);
    v62 = sub_26C00A4FC();
    sub_26BE826C4(v62, v63, v61, v60);

    swift_willThrow();
    sub_26BE0489C(v35, v34);
    sub_26BE00258(v43, v42);
    sub_26BE2BA24(v0 + 936);
    goto LABEL_38;
  }

  v84 = v137;
  sub_26BE00258(*(v0 + 1424), *(v0 + 1432));
  if (v84 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v85 = 5;
    swift_willThrow();
LABEL_30:
    v42 = *(v0 + 1432);
    v43 = *(v0 + 1424);
    sub_26BE00258(v134, v135);
    goto LABEL_37;
  }

  result = sub_26BF2A44C(v84);
  if (v92 >> 60 == 15)
  {
    v56 = v135;
    v55 = *(v0 + 1432);
    v57 = &v134;
    goto LABEL_36;
  }

  v133 = v34;
  v94 = (v0 + 152);
  v130 = (v0 + 424);
  v36 = MEMORY[0x277D84F90];
  v129 = (v0 + 560);
  *&v137 = result;
  *(&v137 + 1) = v92;
  while (1)
  {
    v95 = v92 >> 62;
    if ((v92 >> 62) > 1)
    {
      if (v95 == 2)
      {
        v96 = *(result + 24);
      }

      else
      {
        v96 = 0;
      }
    }

    else if (v95)
    {
      v96 = result >> 32;
    }

    else
    {
      v96 = BYTE6(v92);
    }

    v97 = __OFSUB__(v96, v93);
    v98 = v96 - v93;
    if (v97)
    {
      goto LABEL_98;
    }

    if (v98 < 1)
    {
      break;
    }

    *(v0 + 809) = 0;
    v99 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      goto LABEL_99;
    }

    if (v95 <= 1)
    {
      if (v95)
      {
        v100 = result >> 32;
      }

      else
      {
        v100 = BYTE6(v92);
      }

LABEL_69:
      if (v100 < v99)
      {
        goto LABEL_86;
      }

      goto LABEL_72;
    }

    if (v95 == 2)
    {
      v100 = *(result + 24);
      goto LABEL_69;
    }

    if (v99 > 0)
    {
LABEL_86:
      v124 = 1;
      goto LABEL_90;
    }

LABEL_72:
    *(v0 + 1328) = result;
    *(v0 + 1336) = v92;
    if (v99 < v93)
    {
      goto LABEL_100;
    }

    *(v0 + 1344) = v93;
    *(v0 + 1352) = v99;
    sub_26BE00608(result, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
    sub_26C008E1C();
    sub_26BE00258(*(v0 + 1328), *(v0 + 1336));
    v101 = *(v0 + 809);
    v138 = v99;
    if (v101)
    {
      if (v101 != 1)
      {
        v124 = 5;
LABEL_90:
        sub_26BE01600();
        swift_allocError();
        *v125 = v124;
        swift_willThrow();
LABEL_96:

        sub_26BE00258(v137, *(&v137 + 1));
        v34 = v133;
        goto LABEL_30;
      }

      sub_26BE13AA4(v0 + 16);
      nullsub_1(v0 + 16);
    }

    else
    {
      sub_26BE2E2B8(v129);
      v102 = *(v0 + 672);
      *(v0 + 112) = *(v0 + 656);
      *(v0 + 128) = v102;
      *(v0 + 144) = *(v0 + 688);
      v103 = *(v0 + 608);
      *(v0 + 48) = *(v0 + 592);
      *(v0 + 64) = v103;
      v104 = *(v0 + 640);
      *(v0 + 80) = *(v0 + 624);
      *(v0 + 96) = v104;
      v105 = *(v0 + 576);
      *(v0 + 16) = *v129;
      *(v0 + 32) = v105;
    }

    v106 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v106;
    *(v0 + 280) = *(v0 + 144);
    v107 = *(v0 + 64);
    *(v0 + 184) = *(v0 + 48);
    *(v0 + 200) = v107;
    v108 = *(v0 + 96);
    *(v0 + 216) = *(v0 + 80);
    *(v0 + 232) = v108;
    v109 = *(v0 + 32);
    *v94 = *(v0 + 16);
    *(v0 + 168) = v109;
    sub_26BE2E1F0(v0 + 152, v0 + 288, &qword_28045E4C8, &unk_26C0112A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_26BEEB900(0, v36[2] + 1, 1, v36);
    }

    v111 = v36[2];
    v110 = v36[3];
    if (v111 >= v110 >> 1)
    {
      v36 = sub_26BEEB900((v110 > 1), v111 + 1, 1, v36);
    }

    v112 = *(v0 + 128);
    *(v0 + 520) = *(v0 + 112);
    *(v0 + 536) = v112;
    *(v0 + 552) = *(v0 + 144);
    v113 = *(v0 + 64);
    *(v0 + 456) = *(v0 + 48);
    *(v0 + 472) = v113;
    v114 = *(v0 + 96);
    *(v0 + 488) = *(v0 + 80);
    *(v0 + 504) = v114;
    v115 = *(v0 + 32);
    *v130 = *(v0 + 16);
    *(v0 + 440) = v115;
    sub_26BE2E258(v130, &qword_28045E4C8, &unk_26C0112A0);
    v36[2] = v111 + 1;
    v116 = &v36[17 * v111];
    *(v116 + 2) = *v94;
    v117 = *(v0 + 216);
    v119 = *(v0 + 168);
    v118 = *(v0 + 184);
    *(v116 + 5) = *(v0 + 200);
    *(v116 + 6) = v117;
    *(v116 + 3) = v119;
    *(v116 + 4) = v118;
    v121 = *(v0 + 248);
    v120 = *(v0 + 264);
    v122 = *(v0 + 232);
    v116[20] = *(v0 + 280);
    *(v116 + 8) = v121;
    *(v116 + 9) = v120;
    *(v116 + 7) = v122;
    v92 = *(&v137 + 1);
    result = v137;
    v93 = v138;
  }

  if (v95 > 1)
  {
    if (v95 == 2)
    {
      v123 = *(result + 24);
    }

    else
    {
      v123 = 0;
    }
  }

  else if (v95)
  {
    v123 = result >> 32;
  }

  else
  {
    v123 = BYTE6(v92);
  }

  if (!__OFSUB__(v123, v93))
  {
    if (v123 == v93)
    {
      v126 = *(v0 + 1432);
      v127 = *(v0 + 1424);
      sub_26BE00258(result, v92);
      sub_26BE00258(v127, v126);
      sub_26BE00258(v134, v135);
      goto LABEL_22;
    }

    sub_26BE01654();
    swift_allocError();
    *v128 = 0;
    v128[112] = 1;
    swift_willThrow();
    goto LABEL_96;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BE1F44C(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 1512);
  v9 = *v2;
  *(v3 + 1520) = a1;
  *(v3 + 1528) = v1;

  if (v1)
  {
    v5 = sub_26BE2074C;
  }

  else
  {
    v5 = sub_26BE1F590;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE1F590()
{
  v62 = v0;
  v61[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1488);
  if (v1)
  {
    v3 = *(v0 + 1400);

    v4 = sub_26C009A3C();
    v5 = sub_26C00AA1C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 1400);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v61[0] = v8;
      *v7 = 136315138;
      v9 = sub_26BE16A38();
      v11 = sub_26BE29740(v9, v10, v61);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_26BDFE000, v4, v5, "%s: successfully advanced era", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69A4E0](v8, -1, -1);
      MEMORY[0x26D69A4E0](v7, -1, -1);
    }

    *(v0 + 1536) = v1;
    v12 = *(v0 + 1504);
    v13 = *(v0 + 1496);
    v14 = *(v0 + 1480);
    v15 = *(v0 + 1448);
    v16 = *(v0 + 1400);
    *(v0 + 1296) = v13;
    *(v0 + 1304) = v12;
    sub_26BE2E12C(v14, v15);
    v17 = type metadata accessor for MLS.Group.PureSwiftGroup();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();

    sub_26BE04890(v13, v12);
    v20 = swift_task_alloc();
    *(v0 + 1544) = v20;
    *v20 = v0;
    v20[1] = sub_26BE1FC30;
    v21 = *(v0 + 1448);
    v22 = *(v0 + 1400);
    v23 = *MEMORY[0x277D85DE8];

    return sub_26BF3DD04(v22, (v0 + 1296), v21);
  }

  v25 = *(v0 + 1480);
  v26 = *(v0 + 1456);
  sub_26BE2E12C(v25, *(v0 + 1464));
  sub_26BE2E12C(v25, v26);
  v27 = sub_26C009A3C();
  v28 = sub_26C00AA0C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 1528);
    v30 = *(v0 + 1464);
    v58 = *(v0 + 1440);
    v59 = *(v0 + 1456);
    v31 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61[0] = v60;
    *v31 = 136315394;
    *(v0 + 1368) = sub_26BF87240(*(v30 + 8), *(v30 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
    v32 = sub_26C00A3EC();
    v34 = v33;

    sub_26BE2E190(v30, type metadata accessor for MLS.GroupState);
    v35 = sub_26BE29740(v32, v34, v61);

    *(v31 + 4) = v35;
    *(v31 + 12) = 1024;
    v36 = sub_26BE81FE0(*(v59 + *(v58 + 40)));
    if (v29)
    {
    }

    else
    {
      v38 = v36;
      if ((v36 & 0x100000000) == 0)
      {
LABEL_13:
        sub_26BE2E190(*(v0 + 1456), type metadata accessor for MLS.GroupState);
        *(v31 + 14) = v38;
        _os_log_impl(&dword_26BDFE000, v27, v28, "Tried to join group with ID %s that already exists, without advancing the era (currently %u)", v31, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x26D69A4E0](v60, -1, -1);
        MEMORY[0x26D69A4E0](v31, -1, -1);

        goto LABEL_14;
      }
    }

    v38 = sub_26BE4126C();
    goto LABEL_13;
  }

  v37 = *(v0 + 1464);
  sub_26BE2E190(*(v0 + 1456), type metadata accessor for MLS.GroupState);

  sub_26BE2E190(v37, type metadata accessor for MLS.GroupState);
LABEL_14:
  v39 = *(v0 + 1504);
  v40 = *(v0 + 1496);
  v41 = *(v0 + 1480);
  v42 = *(v0 + 1400);
  *(v0 + 696) = 39;
  *(v0 + 704) = 0u;
  *(v0 + 720) = 0u;
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0u;
  *(v0 + 768) = 0u;
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0;
  *(v0 + 808) = 23;
  v43 = sub_26C00A45C();
  sub_26BE2DC18(v0 + 696, v0 + 816);
  v44 = swift_allocObject();
  v45 = *(v0 + 896);
  *(v44 + 88) = *(v0 + 880);
  *(v44 + 104) = v45;
  *(v44 + 120) = *(v0 + 912);
  v46 = *(v0 + 832);
  *(v44 + 24) = *(v0 + 816);
  *(v44 + 40) = v46;
  v47 = *(v0 + 864);
  *(v44 + 56) = *(v0 + 848);
  *(v44 + 16) = 1;
  *(v44 + 136) = *(v0 + 928);
  *(v44 + 72) = v47;
  *(v0 + 1192) = sub_26BE2E3DC;
  *(v0 + 1200) = v44;
  *(v0 + 1160) = MEMORY[0x277D85DD0];
  *(v0 + 1168) = 1107296256;
  *(v0 + 1176) = sub_26BEB8234;
  *(v0 + 1184) = &block_descriptor_225;
  v48 = _Block_copy((v0 + 1160));
  v49 = *(v0 + 1200);

  AnalyticsSendEventLazy();
  _Block_release(v48);

  sub_26BE7C9B8(2u, 0);
  sub_26BE2DC9C(v0 + 696);
  sub_26BE01654();
  swift_allocError();
  *v50 = 39;
  *(v50 + 8) = 0u;
  *(v50 + 24) = 0u;
  *(v50 + 40) = 0u;
  *(v50 + 56) = 0u;
  *(v50 + 72) = 0u;
  *(v50 + 88) = 0u;
  *(v50 + 104) = 0;
  *(v50 + 112) = 23;
  swift_willThrow();
  sub_26BE0489C(v40, v39);
  sub_26BE2E190(v41, type metadata accessor for MLS.GroupState);
  sub_26BE2BA24(v0 + 936);
  v51 = *(v0 + 1480);
  v52 = *(v0 + 1472);
  v53 = *(v0 + 1464);
  v54 = *(v0 + 1456);
  v55 = *(v0 + 1448);

  v56 = *(v0 + 8);
  v57 = *MEMORY[0x277D85DE8];

  return v56();
}

uint64_t sub_26BE1FC30(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 1544);
  v9 = *v2;
  *(v3 + 1552) = a1;
  *(v3 + 1560) = v1;

  if (v1)
  {
    v5 = sub_26BE1FF08;
  }

  else
  {
    v5 = sub_26BE1FD74;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE1FD74()
{
  v15 = v0;
  v14[2] = *MEMORY[0x277D85DE8];
  if (*(v0 + 810) == 1)
  {
    v1 = *(v0 + 1536);
  }

  v2 = *(v0 + 1552);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 1496);
  v5 = *(v0 + 1480);
  v6 = *(v0 + 1400);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  sub_26BE00608(v7, v8);
  sub_26BF7532C(v14, v7, v8);
  sub_26BE0489C(v4, v3);
  sub_26BE00258(v14[0], v14[1]);
  sub_26BE2B9C8(v0 + 936, v0 + 1048);
  v9 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
  swift_beginAccess();
  sub_26BE2BA78(v0 + 1048, v6 + v9);
  swift_endAccess();
  sub_26BE2E190(v5, type metadata accessor for MLS.GroupState);
  sub_26BE2BA24(v0 + 936);
  v10 = swift_task_alloc();
  *(v0 + 1568) = v10;
  *v10 = v0;
  v10[1] = sub_26BE20020;
  v11 = *(v0 + 1400);
  v12 = *MEMORY[0x277D85DE8];

  return sub_26BE18958();
}

uint64_t sub_26BE1FF08()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 810);
  v2 = *(v0 + 1480);
  sub_26BE0489C(*(v0 + 1496), *(v0 + 1504));
  sub_26BE2E190(v2, type metadata accessor for MLS.GroupState);
  sub_26BE2BA24(v0 + 936);
  if (v1 == 1)
  {
    v3 = *(v0 + 1536);
  }

  v4 = *(v0 + 1560);
  v5 = *(v0 + 1480);
  v6 = *(v0 + 1472);
  v7 = *(v0 + 1464);
  v8 = *(v0 + 1456);
  v9 = *(v0 + 1448);

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_26BE20020()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 1568);
  v7 = *v1;
  *(*v1 + 1576) = v0;

  if (v0)
  {
    v3 = sub_26BE20850;
  }

  else
  {
    v3 = sub_26BE20160;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE20160()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1552);

  v2 = swift_task_alloc();
  *(v0 + 1584) = v2;
  *v2 = v0;
  v2[1] = sub_26BE2024C;
  v3 = *(v0 + 1552);
  v4 = *MEMORY[0x277D85DE8];

  return sub_26BE8FE74(v0 + 1312, v3, v3);
}

uint64_t sub_26BE2024C()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 1584);
  v7 = *v1;
  *(*v1 + 1592) = v0;

  if (v0)
  {
    v3 = sub_26BE206C0;
  }

  else
  {
    v3 = sub_26BE2038C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE2038C()
{
  v40 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v1 = v0[186];
  v2 = v0[175];
  v3 = v0[164];
  v4 = v0[165];

  sub_26BE00608(v3, v4);
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();

  sub_26BE00258(v3, v4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[199];
    v37 = v6;
    v8 = v0[175];
    v9 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39[0] = v36;
    *v9 = 136315394;
    v10 = sub_26BE16A38();
    v12 = sub_26BE29740(v10, v11, v39);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v0[170] = sub_26BF87240(v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
    sub_26C00A3EC();

    v13 = sub_26BE411D0(16);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = MEMORY[0x26D698FE0](v13, v15, v17, v19);
    v22 = v21;

    v23 = sub_26BE29740(v20, v22, v39);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_26BDFE000, v5, v37, "%s joined group ID %s...", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v36, -1, -1);
    MEMORY[0x26D69A4E0](v9, -1, -1);
  }

  v24 = v4;
  v25 = v3;
  v26 = v0[194];
  v27 = v0[185];
  v28 = v0[184];
  v29 = v0[183];
  v30 = v0[182];
  v38 = v0[181];
  v31 = v0[175];
  v32 = v0[174];
  sub_26BE7C9B8(2u, 1);
  sub_26BE00258(v25, v24);

  *v32 = v26;

  v33 = v0[1];
  v34 = *MEMORY[0x277D85DE8];

  return v33();
}

uint64_t sub_26BE206C0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1592);
  v2 = *MEMORY[0x277D85DE8];

  return swift_unexpectedError();
}

uint64_t sub_26BE2074C()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[185];
  sub_26BE0489C(v0[187], v0[188]);
  sub_26BE2E190(v1, type metadata accessor for MLS.GroupState);
  sub_26BE2BA24((v0 + 117));
  v2 = v0[191];
  v3 = v0[185];
  v4 = v0[184];
  v5 = v0[183];
  v6 = v0[182];
  v7 = v0[181];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_26BE20850()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[194];

  v2 = v0[197];
  v3 = v0[185];
  v4 = v0[184];
  v5 = v0[183];
  v6 = v0[182];
  v7 = v0[181];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_26BE20928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_26BE2094C, 0, 0);
}

uint64_t sub_26BE2094C()
{
  v1 = v0[8];
  swift_beginAccess();
  if (*(v1 + 312) == 1)
  {
    v2 = v0[8];
    v4 = v0[5];
    v3 = v0[6];
    type metadata accessor for MLS.Group.PureSwiftGroup();

    sub_26BE00608(v4, v3);
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_26BE20B30;
    v6 = v0[8];
    v7 = v0[5];
    v8 = v0[6];

    return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v6, v7, v8);
  }

  else
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v10 = sub_26C009A5C();
    __swift_project_value_buffer(v10, qword_280478E70);
    v11 = sub_26C009A3C();
    v12 = sub_26C00AA0C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26BDFE000, v11, v12, "Not configured to use eras, so skipping all processWelcomeForExistingGroup logic", v13, 2u);
      MEMORY[0x26D69A4E0](v13, -1, -1);
    }

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_26BE20B30(uint64_t a1)
{
  v3 = *(*v2 + 72);
  v4 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BE20C64, 0, 0);
  }
}

uint64_t sub_26BE20C64()
{
  v28 = v0;
  v1 = *(v0 + 80);
  if (!v1)
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = sub_26C009A5C();
    __swift_project_value_buffer(v9, qword_280478E70);
    sub_26BE00608(v8, v7);
    v10 = sub_26C009A3C();
    v11 = sub_26C00AA0C();
    sub_26BE00258(v8, v7);
    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 40);
      v12 = *(v0 + 48);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315138;
      v16 = sub_26BE832D4(v13, v12);
      v18 = sub_26BE29740(v16, v17, &v27);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_26BDFE000, v10, v11, "After receiving a Welcome for an existing group, did not find existing group state for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x26D69A4E0](v15, -1, -1);
      MEMORY[0x26D69A4E0](v14, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v19 = 49;
    v19[112] = 0;
    swift_willThrow();
    goto LABEL_19;
  }

  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v1 + 152);
  v5 = *(v3 + *(type metadata accessor for MLS.GroupState() + 40));

  v6 = sub_26BE81FE0(v5);
  if (v2)
  {

LABEL_10:
    LODWORD(v6) = sub_26BE4126C();
    goto LABEL_11;
  }

  if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  *(v0 + 176) = v6;
  if (v4 < v6)
  {
    v20 = swift_task_alloc();
    *(v0 + 96) = v20;
    *v20 = v0;
    v21 = sub_26BE20FC0;
LABEL_15:
    v20[1] = v21;
    v22 = *(v0 + 56);
    v23 = *(v0 + 64);

    return sub_26BE21848(v1, v22);
  }

  if (v6 == v4)
  {
    v20 = swift_task_alloc();
    *(v0 + 136) = v20;
    *v20 = v0;
    v21 = sub_26BE21374;
    goto LABEL_15;
  }

  sub_26BE01654();
  swift_allocError();
  *v25 = 47;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 56) = 0u;
  *(v25 + 72) = 0u;
  *(v25 + 88) = 0u;
  *(v25 + 104) = 0;
  *(v25 + 112) = 23;
  swift_willThrow();

LABEL_19:
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_26BE20FC0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);

    v5 = sub_26BE217E4;
  }

  else
  {
    v5 = sub_26BE210DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE210DC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_26BE211C8;

  return sub_26BE1A434();
}

uint64_t sub_26BE211C8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[14];
  if (v0)
  {
    v6 = v2[10];

    v7 = sub_26BE21310;
  }

  else
  {

    v7 = sub_26BE2E3E8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BE21310()
{
  v1 = v0[10];

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE21374()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);

    v5 = sub_26BE216B4;
  }

  else
  {
    v5 = sub_26BE21490;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE21490()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_26BE2156C;

  return sub_26BE1A434(sub_26BE1A434, &unk_26C00E218, v3);
}

uint64_t sub_26BE2156C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  v2[21] = v0;

  v5 = v2[19];
  if (v0)
  {
    v6 = v2[10];

    v7 = sub_26BE21780;
  }

  else
  {

    v7 = sub_26BE21718;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BE216B4()
{
  v1 = v0[10];

  v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE21718()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 80);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26BE21780()
{
  v1 = v0[10];

  v2 = v0[21];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE217E4()
{
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE21848(uint64_t a1, uint64_t a2)
{
  v3[57] = a2;
  v3[58] = v2;
  v3[56] = a1;
  return MEMORY[0x2822009F8](sub_26BE2186C, 0, 0);
}

uint64_t sub_26BE2186C()
{
  v1 = *(v0 + 448);

  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_26BE21920;
  v3 = *(v0 + 448);

  return sub_26BE8EC78(v3, v3);
}

uint64_t sub_26BE21920(uint64_t a1)
{
  v3 = *(*v2 + 472);
  v4 = *v2;
  v4[60] = a1;
  v4[61] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BE21A54, 0, 0);
  }
}

uint64_t sub_26BE21A54()
{
  v115 = v0;
  v1 = *(v0 + 480);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v20 = *(v0 + 480);

    v5 = MEMORY[0x277D84F90];
LABEL_22:
    v21 = *(v0 + 488);
    v22 = *(v0 + 456);
    v23 = *(v22 + 40);
    v24 = *(v22 + 48);
    v25 = *(v22 + 56);
    v26 = *(v22 + 32);
    v27 = swift_task_alloc();
    *(v27 + 16) = v22;
    v28 = sub_26BFEB264(sub_26BE2DB4C, v27, v26, v23, v24, v25);
    if (v21)
    {

LABEL_77:
      v50 = *(v0 + 8);
      goto LABEL_78;
    }

    v29 = v28;

    v30 = *(v29 + 2);
    if (v30)
    {
      v114 = MEMORY[0x277D84F90];
      v106 = v29;
      sub_26BECB994(0, v30, 0);
      v31 = v29;
      v32 = 0;
      v1 = v114;
      v33 = (v29 + 32);
      v110 = v30;
      while (1)
      {
        if (v32 >= *(v31 + 2))
        {
          goto LABEL_83;
        }

        sub_26BE2DB68(v33, v0 + 312);
        if ((*(v0 + 327) & 0x20) != 0)
        {
          v36 = *(v0 + 312);
          if ((v36 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x26D6996F0](0);
          }

          else
          {
            if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v37 = *(v36 + 32);
          }

          v38 = v37;
          result = SecCertificateCopyURIs();
          if (!result)
          {
            goto LABEL_87;
          }

          v39 = result;

          *(v0 + 432) = v39;
          type metadata accessor for CFArray(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
          if (!swift_dynamicCast())
          {
            v34 = 0;
            v35 = 0;
            v31 = v106;
            goto LABEL_38;
          }

          v40 = *(v0 + 440);
          v31 = v106;
          if (v40)
          {
            if (v40[2])
            {
              v34 = v40[4];
              v35 = v40[5];
              v41 = *(v0 + 440);

              v31 = v106;

              goto LABEL_38;
            }
          }
        }

        v34 = 0;
        v35 = 0;
LABEL_38:
        sub_26BE2DBC4(v0 + 312);
        v114 = v1;
        v43 = *(v1 + 16);
        v42 = *(v1 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_26BECB994((v42 > 1), v43 + 1, 1);
          v31 = v106;
          v1 = v114;
        }

        ++v32;
        *(v1 + 16) = v43 + 1;
        v44 = v1 + 16 * v43;
        *(v44 + 32) = v34;
        *(v44 + 40) = v35;
        v33 += 56;
        if (v110 == v32)
        {

          goto LABEL_45;
        }
      }
    }

    v1 = MEMORY[0x277D84F90];
LABEL_45:

    v46 = sub_26BEC80A8(v45);

    v48 = sub_26BEC80A8(v47);

    v49 = sub_26BEC2018(v48, v46);

    if (v49)
    {

      v50 = *(v0 + 8);
LABEL_78:

      return v50();
    }

    if (qword_28045DF40 == -1)
    {
LABEL_48:
      v51 = *(v0 + 448);
      v52 = sub_26C009A5C();
      __swift_project_value_buffer(v52, qword_280478E70);

      v53 = sub_26C009A3C();
      v54 = sub_26C00AA0C();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = *(v0 + 448);
        v56 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v114 = v111;
        *v56 = 136315138;

        v57 = sub_26BE3D034();
        v59 = v58;

        v60 = sub_26BE29740(v57, v59, &v114);

        *(v56 + 4) = v60;
        _os_log_impl(&dword_26BDFE000, v53, v54, "%s: New group contains members that were not in the existing state", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v111);
        MEMORY[0x26D69A4E0](v111, -1, -1);
        MEMORY[0x26D69A4E0](v56, -1, -1);
      }

      v61 = (v0 + 368);

      v62 = sub_26C009A3C();
      v63 = sub_26C00AA0C();

      v112 = v1;
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v113 = v102;
        v65 = &unk_26C00D000;
        buf = v64;
        *v64 = 136315138;
        v66 = *(v5 + 16);
        if (v66)
        {
          v100 = v63;
          v101 = v62;
          v114 = MEMORY[0x277D84F90];
          sub_26BECB834(0, v66, 0);
          v67 = v114;
          v68 = (v5 + 40);
          do
          {
            if (*v68)
            {
              v69 = *(v68 - 1);
              v107 = *v68;
            }

            else
            {
              v107 = 0xE500000000000000;
              v69 = 0x3E6C696E3CLL;
            }

            v114 = v67;
            v71 = *(v67 + 16);
            v70 = *(v67 + 24);

            if (v71 >= v70 >> 1)
            {
              sub_26BECB834((v70 > 1), v71 + 1, 1);
              v67 = v114;
            }

            *(v67 + 16) = v71 + 1;
            v72 = v67 + 16 * v71;
            v1 = v112;
            *(v72 + 32) = v69;
            *(v72 + 40) = v107;
            v68 += 2;
            --v66;
          }

          while (v66);

          v61 = (v0 + 368);
          v65 = &unk_26C00D000;
          v62 = v101;
          v63 = v100;
        }

        else
        {

          v67 = MEMORY[0x277D84F90];
        }

        v73 = MEMORY[0x26D6991B0](v67, MEMORY[0x277D837D0]);
        v75 = v74;

        v76 = sub_26BE29740(v73, v75, &v113);

        *(buf + 4) = v76;
        _os_log_impl(&dword_26BDFE000, v62, v63, "Existing members: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v102);
        MEMORY[0x26D69A4E0](v102, -1, -1);
        MEMORY[0x26D69A4E0](buf, -1, -1);
      }

      else
      {

        v65 = &unk_26C00D000;
      }

      v77 = sub_26C009A3C();
      v78 = sub_26C00AA0C();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v81 = v80;
        v113 = v80;
        *v79 = v65[338];
        v82 = *(v1 + 16);
        if (v82)
        {
          v103 = v80;
          v105 = v78;
          v108 = v77;
          v114 = MEMORY[0x277D84F90];
          sub_26BECB834(0, v82, 0);
          v83 = v114;
          v84 = (v1 + 40);
          do
          {
            if (*v84)
            {
              v85 = *(v84 - 1);
              v86 = *v84;
            }

            else
            {
              v86 = 0xE500000000000000;
              v85 = 0x3E6C696E3CLL;
            }

            v114 = v83;
            v87 = *(v83 + 16);
            v88 = *(v83 + 24);

            if (v87 >= v88 >> 1)
            {
              sub_26BECB834((v88 > 1), v87 + 1, 1);
              v83 = v114;
            }

            *(v83 + 16) = v87 + 1;
            v89 = v83 + 16 * v87;
            *(v89 + 32) = v85;
            *(v89 + 40) = v86;
            v84 += 2;
            --v82;
          }

          while (v82);

          v77 = v108;
          v78 = v105;
          v81 = v103;
        }

        else
        {

          v83 = MEMORY[0x277D84F90];
        }

        v90 = MEMORY[0x26D6991B0](v83, MEMORY[0x277D837D0]);
        v92 = v91;

        v93 = sub_26BE29740(v90, v92, &v113);

        *(v79 + 4) = v93;
        _os_log_impl(&dword_26BDFE000, v77, v78, "New members: %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x26D69A4E0](v81, -1, -1);
        MEMORY[0x26D69A4E0](v79, -1, -1);
      }

      else
      {
      }

      v94 = *(v0 + 464);
      *(v0 + 16) = 13;
      *(v0 + 128) = 9;
      v95 = sub_26C00A45C();
      sub_26BE2DC18(v0 + 16, v0 + 136);
      v96 = swift_allocObject();
      *(v96 + 16) = 1;
      *(v96 + 88) = *(v0 + 200);
      *(v96 + 104) = *(v0 + 216);
      *(v96 + 120) = *(v0 + 232);
      *(v96 + 136) = *(v0 + 248);
      *(v96 + 24) = *(v0 + 136);
      *(v96 + 40) = *(v0 + 152);
      *(v96 + 56) = *(v0 + 168);
      *(v96 + 72) = *(v0 + 184);
      *(v0 + 400) = sub_26BE2DC78;
      *(v0 + 408) = v96;
      *(v0 + 368) = MEMORY[0x277D85DD0];
      *(v0 + 376) = 1107296256;
      *(v0 + 384) = sub_26BEB8234;
      *(v0 + 392) = &block_descriptor;
      v97 = _Block_copy(v61);
      v98 = *(v0 + 408);

      AnalyticsSendEventLazy();
      _Block_release(v97);

      sub_26BE7C9B8(2u, 0);
      sub_26BE2DC9C(v0 + 16);
      sub_26BE01654();
      swift_allocError();
      *v99 = 13;
      v99[112] = 9;
      swift_willThrow();
      goto LABEL_77;
    }

LABEL_85:
    swift_once();
    goto LABEL_48;
  }

  v114 = MEMORY[0x277D84F90];
  v109 = v2;
  sub_26BECB994(0, v2, 0);
  v3 = v109;
  v4 = 0;
  v5 = v114;
  v6 = v1 + 32;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    sub_26BE2DA9C(v6, v0 + 256);
    if ((*(v0 + 271) & 0x20) == 0)
    {
      goto LABEL_5;
    }

    v9 = *(v0 + 256);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D6996F0](0);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v10 = *(v9 + 32);
    }

    v11 = v10;
    result = SecCertificateCopyURIs();
    if (!result)
    {
      break;
    }

    v13 = result;

    *(v0 + 416) = v13;
    type metadata accessor for CFArray(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
    if (!swift_dynamicCast())
    {
      v7 = 0;
      v8 = 0;
      v3 = v109;
      goto LABEL_15;
    }

    v14 = *(v0 + 424);
    v3 = v109;
    if (v14)
    {
      if (v14[2])
      {
        v7 = v14[4];
        v8 = v14[5];
        v15 = *(v0 + 424);

        v3 = v109;

        goto LABEL_15;
      }
    }

LABEL_5:
    v7 = 0;
    v8 = 0;
LABEL_15:
    sub_26BE2DAF8(v0 + 256);
    v114 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_26BECB994((v16 > 1), v17 + 1, 1);
      v3 = v109;
      v5 = v114;
    }

    ++v4;
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 16 * v17;
    *(v18 + 32) = v7;
    *(v18 + 40) = v8;
    v6 += 56;
    if (v3 == v4)
    {
      v19 = *(v0 + 480);

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_26BE225F4()
{
  v16 = v0;
  v1 = v0[19];
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    v0[5] = &type metadata for SwiftMLSFeatureFlags;
    v0[6] = sub_26BE295D8();
    *(v0 + 16) = 0;
    v4 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v3 & 1) == 0)
  {
LABEL_3:
    sub_26BE01654();
    swift_allocError();
    *v5 = 0xD00000000000002BLL;
    *(v5 + 8) = 0x800000026C02ACB0;
    *(v5 + 112) = 2;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }

  v6 = v0[19];
  sub_26BE16230(v0 + 1);
  v9 = v0[14];
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = sub_26BE328AC(*(v9 + 16), 0);
  v14 = sub_26BE336A0(&v15, v11 + 2, v10, v9);

  sub_26BE2DA4C();
  if (v14 != v10)
  {
    __break(1u);
LABEL_12:
    v11 = MEMORY[0x277D84F90];
  }

  v15 = v11;

  sub_26BE294CC(&v15);

  sub_26BE2BA24((v0 + 2));
  v12 = v15;
  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_26BE2285C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_26C00914C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v24[-v14];
  if (a4 >> 62 == 2)
  {
    v16 = *(a3 + 16);
  }

  sub_26BE00608(a3, a4);
  sub_26C00915C();
  if (a2 >> 62 == 2)
  {
    v17 = *(a1 + 16);
  }

  sub_26BE00608(a1, a2);
  sub_26C00915C();
  sub_26BE2DA54(&qword_28045E498, MEMORY[0x277CC92E0]);
  while (1)
  {
    sub_26C00AADC();
    if (v29)
    {
      v21 = *(v9 + 8);
      v21(v15, v8);
      sub_26C00AADC();
      v21(v13, v8);
      v20 = v27 ^ 1;
      return v20 & 1;
    }

    v18 = v28;
    sub_26C00AADC();
    if (v26)
    {
      goto LABEL_10;
    }

    if (v18 < v25)
    {
      break;
    }

    if (v25 < v18)
    {
LABEL_10:
      v19 = *(v9 + 8);
      v19(v13, v8);
      v19(v15, v8);
      v20 = 0;
      return v20 & 1;
    }
  }

  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v15, v8);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_26BE22B3C()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26BE22BF0;
  v3 = *(v0 + 16);

  return sub_26BE90BC4(v3, v3);
}

uint64_t sub_26BE22BF0(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_26BE22CF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BE22D14, 0, 0);
}

uint64_t sub_26BE22D14()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_26BE00608(v3, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_26BE22DDC;
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  return (sub_26BEADD80)(v5);
}

uint64_t sub_26BE22DDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  v7 = sub_26BE00258(*(v4 + 16), *(v4 + 24));
  v8 = *(v6 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_26BE22F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_26BE22F40, 0, 0);
}

uint64_t sub_26BE22F40()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    v0[5] = &type metadata for SwiftMLSFeatureFlags;
    v4 = sub_26BE295D8();
    *(v0 + 16) = 0;
    v0[6] = v4;
    v5 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      *v6 = 0xD000000000000030;
      *(v6 + 8) = 0x800000026C02ADA0;
      *(v6 + 112) = 2;
      swift_willThrow();
      v7 = v0[1];

      return v7();
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[11];
  type metadata accessor for MLS.Group.PureSwiftGroup();

  sub_26BE00608(v9, v10);
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_26BE23100;
  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[11];

  return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v15, v13, v14);
}

uint64_t sub_26BE23100(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *v2;
  *(v4 + 120) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BE23234, 0, 0);
  }
}

uint64_t sub_26BE23234()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);

    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_26BE2330C;

    return sub_26BF3BBF0();
  }

  else
  {
    **(v0 + 80) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_26BE2330C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_26BE239C4;
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    v7 = sub_26BE23438;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BE23438()
{
  v24 = v0;
  if (*(v0 + 176))
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 96);
    v1 = *(v0 + 104);
    v3 = *(v0 + 88);
    v4 = sub_26C009A5C();
    __swift_project_value_buffer(v4, qword_280478E70);

    sub_26BE00608(v2, v1);
    v5 = sub_26C009A3C();
    v6 = sub_26C00AA1C();

    sub_26BE00258(v2, v1);
    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 96);
      v7 = *(v0 + 104);
      v9 = *(v0 + 88);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315394;
      v12 = sub_26BE16A38();
      v14 = sub_26BE29740(v12, v13, &v23);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = sub_26BE832D4(v8, v7);
      v17 = sub_26BE29740(v15, v16, &v23);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_26BDFE000, v5, v6, "%s: Deleting expired group %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v11, -1, -1);
      MEMORY[0x26D69A4E0](v10, -1, -1);
    }

    v18 = *(v0 + 120);
    v19 = swift_task_alloc();
    *(v0 + 144) = v19;
    *v19 = v0;
    v19[1] = sub_26BE236C8;

    return sub_26BF3D100();
  }

  else
  {
    v21 = *(v0 + 120);

    **(v0 + 80) = *(v0 + 120);
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_26BE236C8()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE23A2C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[20] = v4;
    *v4 = v3;
    v4[1] = sub_26BE2383C;
    v5 = v3[13];
    v6 = v3[11];
    v7 = v3[12];

    return sub_26BE24038(v7, v5);
  }
}

uint64_t sub_26BE2383C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_26BE23A94;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_26BE23958;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE23958()
{
  v1 = *(v0 + 120);

  **(v0 + 80) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE239C4()
{
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE23A2C()
{
  v1 = v0[15];

  v2 = v0[19];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE23A94()
{
  v1 = v0[15];

  v2 = v0[21];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE23AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BE23B20, 0, 0);
}

uint64_t sub_26BE23B20()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  sub_26BE00608(v3, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26BE23BEC;
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return (sub_26BE91308)(v7);
}

uint64_t sub_26BE23BEC()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26BE23CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[88] = a4;
  v4[87] = a3;
  v4[86] = a2;
  v4[85] = a1;
  return MEMORY[0x2822009F8](sub_26BE23D0C, 0, 0);
}

uint64_t sub_26BE23D0C()
{
  v1 = *(v0 + 688);
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    *(v0 + 40) = &type metadata for SwiftMLSFeatureFlags;
    *(v0 + 48) = sub_26BE295D8();
    *(v0 + 16) = 0;
    v4 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if ((v4 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      strcpy(v5, "Shim is gone!");
      *(v5 + 7) = -4864;
      v5[112] = 2;
      swift_willThrow();
      v7 = *(v0 + 8);
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v0 + 688);
  sub_26BE16230((v0 + 384));
  v9 = *(v0 + 472);
  if (!*(v9 + 16))
  {
    goto LABEL_15;
  }

  v10 = sub_26BEBE840(*(v0 + 696), *(v0 + 704));
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_26BE2E07C(*(v9 + 56) + 80 * v10, v0 + 496);
  v12 = *(v0 + 464);
  if (!*(v12 + 16) || (v13 = sub_26BEBE840(*(v0 + 696), *(v0 + 704)), (v14 & 1) == 0))
  {
    sub_26BE2E0D8(v0 + 496);
LABEL_15:
    sub_26BE2BA24(v0 + 384);
    v25 = *(v0 + 680);
    *v25 = 0u;
    v25[1] = 0u;
    v25[2] = 0u;
    v25[3] = 0u;
    v25[4] = 0u;
    v25[5] = 0u;
    goto LABEL_16;
  }

  v15 = *(v12 + 56) + 184 * v13;
  v16 = *v15;
  v17 = *(v15 + 16);
  v18 = *(v15 + 48);
  *(v0 + 48) = *(v15 + 32);
  *(v0 + 64) = v18;
  *(v0 + 16) = v16;
  *(v0 + 32) = v17;
  v19 = *(v15 + 64);
  v20 = *(v15 + 80);
  v21 = *(v15 + 112);
  *(v0 + 112) = *(v15 + 96);
  *(v0 + 128) = v21;
  *(v0 + 80) = v19;
  *(v0 + 96) = v20;
  v22 = *(v15 + 128);
  v23 = *(v15 + 144);
  v24 = *(v15 + 160);
  *(v0 + 192) = *(v15 + 176);
  *(v0 + 160) = v23;
  *(v0 + 176) = v24;
  *(v0 + 144) = v22;
  sub_26BE038A8(v0 + 496, v0 + 576);
  sub_26BE038A8(v0 + 536, v0 + 616);
  v38 = *(v0 + 144);
  v39 = *(v0 + 160);
  v40 = *(v0 + 176);
  v41 = *(v0 + 192);
  v34 = *(v0 + 80);
  v35 = *(v0 + 96);
  v36 = *(v0 + 112);
  v37 = *(v0 + 128);
  v30 = *(v0 + 16);
  v31 = *(v0 + 32);
  v32 = *(v0 + 48);
  v33 = *(v0 + 64);
  sub_26BE2DFC0(v0 + 16, v0 + 200);
  v26 = MLS.KeyPackage.rawValue.getter();
  v28 = v27;
  v29 = *(v0 + 680);
  sub_26BE2E0D8(v0 + 496);
  sub_26BE2E01C(v0 + 16);
  sub_26BE03890((v0 + 576), v29);
  sub_26BE03890((v0 + 616), v29 + 40);
  *(v29 + 80) = v26;
  *(v29 + 88) = v28;
  sub_26BE2BA24(v0 + 384);
LABEL_16:
  v7 = *(v0 + 8);
LABEL_6:

  return v7();
}

uint64_t MLS.Client.KeyPackageSecrets.init(initKey:leafNodeKey:keyPackageBytes:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_26BE03890(a1, a5);
  result = sub_26BE03890(a2, a5 + 40);
  *(a5 + 80) = a3;
  *(a5 + 88) = a4;
  return result;
}

uint64_t sub_26BE24038(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  return MEMORY[0x2822009F8](sub_26BE2405C, 0, 0);
}

uint64_t sub_26BE2405C()
{
  v15 = v0;
  v1 = *(v0 + 344);
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    *(v0 + 264) = &type metadata for SwiftMLSFeatureFlags;
    v4 = sub_26BE295D8();
    *(v0 + 240) = 0;
    *(v0 + 272) = v4;
    v5 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 240));
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v3 & 1) == 0)
  {
LABEL_3:
    sub_26BE01654();
    swift_allocError();
    *v6 = 0xD000000000000021;
    *(v6 + 8) = 0x800000026C02AC80;
    *(v6 + 112) = 2;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }

  v7 = *(v0 + 344);
  sub_26BE16230((v0 + 16));
  v10 = *(v0 + 344);
  sub_26BE2AA44(*(v0 + 328), *(v0 + 336), &v14);
  sub_26BE132D4(v14, *(&v14 + 1));
  sub_26BE2B9C8(v0 + 16, v0 + 128);
  v11 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
  swift_beginAccess();
  sub_26BE2BA78(v0 + 128, v10 + v11);
  swift_endAccess();
  v12 = swift_task_alloc();
  *(v0 + 352) = v12;
  *v12 = v0;
  v12[1] = sub_26BE2424C;
  v13 = *(v0 + 344);

  return sub_26BE18958();
}

uint64_t sub_26BE2424C()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_26BE243C4;
  }

  else
  {
    v3 = sub_26BE24360;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE24360()
{
  sub_26BE2BA24(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE243C4()
{
  sub_26BE2BA24(v0 + 16);
  v1 = *(v0 + 360);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE24448()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26BE244FC;
  v3 = *(v0 + 16);

  return sub_26BE8D9A4(sub_26BE8D9A4, v3, v3);
}

uint64_t sub_26BE244FC()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_26BE24610;
  }

  else
  {
    v3 = sub_26BE2E3EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE24628(uint64_t a1, uint64_t a2)
{
  v2[21] = a2;
  v3 = sub_26C00928C();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE246E8, 0, 0);
}

uint64_t sub_26BE246E8()
{
  v15 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_26C009A5C();
  v0[25] = __swift_project_value_buffer(v2, qword_280478E70);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_26BE16A38();
    v10 = sub_26BE29740(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Deleting client", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[26] = v11;
  *v11 = v0;
  v11[1] = sub_26BE248B4;
  v12 = v0[21];

  return sub_26BE225D4();
}

uint64_t sub_26BE248B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v6 = v3[24];

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BE24A04, 0, 0);
  }
}

uint64_t sub_26BE24A04()
{
  v58 = v0;
  v1 = v0[27];
  v2 = v1[2];
  v0[29] = v2;
  if (v2)
  {
    result = type metadata accessor for MLS.Group.PureSwiftGroup();
    v4 = v0[28];
    v0[30] = result;
    v0[31] = 0;
    if (v1[2])
    {
      v5 = v0[25];
      v6 = v0[21];
      v7 = v1[4];
      v0[32] = v7;
      v8 = v1[5];
      v0[33] = v8;
      sub_26BE00608(v7, v8);

      sub_26BE00608(v7, v8);
      v9 = sub_26C009A3C();
      v10 = sub_26C00AA1C();

      sub_26BE00258(v7, v8);
      if (os_log_type_enabled(v9, v10))
      {
        loga = v9;
        v11 = v0[21];
        v12 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v57[0] = v54;
        *v12 = 136315394;
        v13 = sub_26BE16A38();
        v15 = sub_26BE29740(v13, v14, v57);

        buf = v12;
        *(v12 + 4) = v15;
        *(v12 + 12) = 2080;
        sub_26BE00608(v7, v8);
        sub_26BE3C290(16, v7, v8, v0 + 15);
        v52 = v10;
        v17 = v0[15];
        v16 = v0[16];
        v0[19] = sub_26BF87240(v17, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
        sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
        v18 = sub_26C00A3EC();
        v20 = v19;
        sub_26BE00258(v17, v16);

        v0[13] = v18;
        v0[14] = v20;
        MEMORY[0x26D699090](3026478, 0xE300000000000000);
        sub_26BE00608(v7, v8);
        sub_26BE83448(16, v7, v8, v0 + 17);
        v21 = v0[17];
        v22 = v0[18];
        v0[20] = sub_26BF87240(v21, v22);
        v23 = sub_26C00A3EC();
        v25 = v24;
        sub_26BE00258(v21, v22);

        MEMORY[0x26D699090](v23, v25);

        v26 = sub_26BE29740(v0[13], v0[14], v57);

        *(buf + 14) = v26;
        v9 = loga;
        _os_log_impl(&dword_26BDFE000, loga, v52, "%s: Deleting group %s", buf, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v54, -1, -1);
        MEMORY[0x26D69A4E0](buf, -1, -1);
      }

      v27 = v0[21];

      sub_26BE00608(v7, v8);
      v28 = swift_task_alloc();
      v0[34] = v28;
      *v28 = v0;
      v28[1] = sub_26BE2501C;
      v29 = v0[30];
      v30 = v0[21];

      return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v30, v7, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v31 = v0[25];
    v32 = v0[21];

    v33 = sub_26C009A3C();
    v34 = sub_26C00AA1C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v0[21];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57[0] = v37;
      *v36 = 136315138;
      v38 = sub_26BE16A38();
      v40 = sub_26BE29740(v38, v39, v57);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_26BDFE000, v33, v34, "%s: Deleting overall client state", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x26D69A4E0](v37, -1, -1);
      MEMORY[0x26D69A4E0](v36, -1, -1);
    }

    v42 = v0[23];
    v41 = v0[24];
    v44 = v0[21];
    v43 = v0[22];
    swift_beginAccess();
    sub_26BE038A8(v44 + 200, (v0 + 2));
    v45 = v0[5];
    v46 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v45);
    v47 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v42 + 16))(v41, v44 + v47, v43);
    v48 = *(v46 + 16);
    log = (v48 + *v48);
    v49 = v48[1];
    v50 = swift_task_alloc();
    v0[39] = v50;
    *v50 = v0;
    v50[1] = sub_26BE25FE8;
    v51 = v0[24];

    return (log)(v51, 0, 0xC000000000000000, v45, v46);
  }

  return result;
}

uint64_t sub_26BE2501C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v8 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  if (v1)
  {
    v5 = v3[27];

    v6 = sub_26BE261C0;
  }

  else
  {
    v6 = sub_26BE25138;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BE25138()
{
  v62 = v0;
  v1 = v0[35];
  if (v1)
  {
    swift_retain_n();
    v2 = swift_task_alloc();
    v0[37] = v2;
    *v2 = v0;
    v2[1] = sub_26BE25808;

    return sub_26BE8F6DC(sub_26BE8F6DC, v1, v1);
  }

  else
  {
    result = sub_26BE00258(v0[32], v0[33]);
    v4 = v0[31] + 1;
    if (v4 == v0[29])
    {
      v5 = v0[27];

      v6 = v0[25];
      v7 = v0[21];

      v8 = sub_26C009A3C();
      v9 = sub_26C00AA1C();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = v0[21];
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v61[0] = v12;
        *v11 = 136315138;
        v13 = sub_26BE16A38();
        v15 = sub_26BE29740(v13, v14, v61);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_26BDFE000, v8, v9, "%s: Deleting overall client state", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x26D69A4E0](v12, -1, -1);
        MEMORY[0x26D69A4E0](v11, -1, -1);
      }

      v17 = v0[23];
      v16 = v0[24];
      v19 = v0[21];
      v18 = v0[22];
      swift_beginAccess();
      sub_26BE038A8(v19 + 200, (v0 + 2));
      v20 = v0[5];
      v21 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v20);
      v22 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
      swift_beginAccess();
      (*(v17 + 16))(v16, v19 + v22, v18);
      v23 = *(v21 + 16);
      log = (v23 + *v23);
      v24 = v23[1];
      v25 = swift_task_alloc();
      v0[39] = v25;
      *v25 = v0;
      v25[1] = sub_26BE25FE8;
      v26 = v0[24];

      return (log)(v26, 0, 0xC000000000000000, v20, v21);
    }

    else
    {
      v27 = v0[36];
      v0[31] = v4;
      v28 = v0[27];
      if (v4 >= *(v28 + 16))
      {
        __break(1u);
      }

      else
      {
        v29 = v0[25];
        v30 = v0[21];
        v31 = v28 + 16 * v4;
        v32 = *(v31 + 32);
        v0[32] = v32;
        v33 = *(v31 + 40);
        v0[33] = v33;
        sub_26BE00608(v32, v33);

        sub_26BE00608(v32, v33);
        v34 = sub_26C009A3C();
        v35 = sub_26C00AA1C();

        sub_26BE00258(v32, v33);
        if (os_log_type_enabled(v34, v35))
        {
          loga = v34;
          v36 = v0[21];
          v37 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v61[0] = v58;
          *v37 = 136315394;
          v38 = sub_26BE16A38();
          v40 = sub_26BE29740(v38, v39, v61);

          buf = v37;
          *(v37 + 4) = v40;
          *(v37 + 12) = 2080;
          sub_26BE00608(v32, v33);
          sub_26BE3C290(16, v32, v33, v0 + 15);
          v56 = v35;
          v42 = v0[15];
          v41 = v0[16];
          v0[19] = sub_26BF87240(v42, v41);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
          sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
          v43 = sub_26C00A3EC();
          v45 = v44;
          sub_26BE00258(v42, v41);

          v0[13] = v43;
          v0[14] = v45;
          MEMORY[0x26D699090](3026478, 0xE300000000000000);
          sub_26BE00608(v32, v33);
          sub_26BE83448(16, v32, v33, v0 + 17);
          v46 = v0[17];
          v47 = v0[18];
          v0[20] = sub_26BF87240(v46, v47);
          v48 = sub_26C00A3EC();
          v50 = v49;
          sub_26BE00258(v46, v47);

          MEMORY[0x26D699090](v48, v50);

          v51 = sub_26BE29740(v0[13], v0[14], v61);

          *(buf + 14) = v51;
          v34 = loga;
          _os_log_impl(&dword_26BDFE000, loga, v56, "%s: Deleting group %s", buf, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69A4E0](v58, -1, -1);
          MEMORY[0x26D69A4E0](buf, -1, -1);
        }

        v52 = v0[21];

        sub_26BE00608(v32, v33);
        v53 = swift_task_alloc();
        v0[34] = v53;
        *v53 = v0;
        v53[1] = sub_26BE2501C;
        v54 = v0[30];
        v55 = v0[21];

        return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v55, v32, v33);
      }
    }
  }

  return result;
}

uint64_t sub_26BE25808()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = *(v2 + 216);

    v5 = sub_26BE25F68;
  }

  else
  {
    v5 = sub_26BE25924;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE25924()
{
  v63 = v0;
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];

  sub_26BE00258(v3, v2);

  v5 = v0[31] + 1;
  if (v5 == v0[29])
  {
    v6 = v0[27];

    v7 = v0[25];
    v8 = v0[21];

    v9 = sub_26C009A3C();
    v10 = sub_26C00AA1C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[21];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v62[0] = v13;
      *v12 = 136315138;
      v14 = sub_26BE16A38();
      v16 = sub_26BE29740(v14, v15, v62);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_26BDFE000, v9, v10, "%s: Deleting overall client state", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D69A4E0](v13, -1, -1);
      MEMORY[0x26D69A4E0](v12, -1, -1);
    }

    v18 = v0[23];
    v17 = v0[24];
    v20 = v0[21];
    v19 = v0[22];
    swift_beginAccess();
    sub_26BE038A8(v20 + 200, (v0 + 2));
    v21 = v0[5];
    v22 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v21);
    v23 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v18 + 16))(v17, v20 + v23, v19);
    v24 = *(v22 + 16);
    log = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    v0[39] = v26;
    *v26 = v0;
    v26[1] = sub_26BE25FE8;
    v27 = v0[24];

    return (log)(v27, 0, 0xC000000000000000, v21, v22);
  }

  else
  {
    v28 = v0[38];
    v0[31] = v5;
    v29 = v0[27];
    if (v5 >= *(v29 + 16))
    {
      __break(1u);
    }

    else
    {
      v30 = v0[25];
      v31 = v0[21];
      v32 = v29 + 16 * v5;
      v33 = *(v32 + 32);
      v0[32] = v33;
      v34 = *(v32 + 40);
      v0[33] = v34;
      sub_26BE00608(v33, v34);

      sub_26BE00608(v33, v34);
      v35 = sub_26C009A3C();
      v36 = sub_26C00AA1C();

      sub_26BE00258(v33, v34);
      if (os_log_type_enabled(v35, v36))
      {
        loga = v35;
        v37 = v0[21];
        v38 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v62[0] = v59;
        *v38 = 136315394;
        v39 = sub_26BE16A38();
        v41 = sub_26BE29740(v39, v40, v62);

        buf = v38;
        *(v38 + 4) = v41;
        *(v38 + 12) = 2080;
        sub_26BE00608(v33, v34);
        sub_26BE3C290(16, v33, v34, v0 + 15);
        v57 = v36;
        v43 = v0[15];
        v42 = v0[16];
        v0[19] = sub_26BF87240(v43, v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
        sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
        v44 = sub_26C00A3EC();
        v46 = v45;
        sub_26BE00258(v43, v42);

        v0[13] = v44;
        v0[14] = v46;
        MEMORY[0x26D699090](3026478, 0xE300000000000000);
        sub_26BE00608(v33, v34);
        sub_26BE83448(16, v33, v34, v0 + 17);
        v47 = v0[17];
        v48 = v0[18];
        v0[20] = sub_26BF87240(v47, v48);
        v49 = sub_26C00A3EC();
        v51 = v50;
        sub_26BE00258(v47, v48);

        MEMORY[0x26D699090](v49, v51);

        v52 = sub_26BE29740(v0[13], v0[14], v62);

        *(buf + 14) = v52;
        v35 = loga;
        _os_log_impl(&dword_26BDFE000, loga, v57, "%s: Deleting group %s", buf, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v59, -1, -1);
        MEMORY[0x26D69A4E0](buf, -1, -1);
      }

      v53 = v0[21];

      sub_26BE00608(v33, v34);
      v54 = swift_task_alloc();
      v0[34] = v54;
      *v54 = v0;
      v54[1] = sub_26BE2501C;
      v55 = v0[30];
      v56 = v0[21];

      return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v56, v33, v34);
    }
  }

  return result;
}

uint64_t sub_26BE25F68()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];

  sub_26BE00258(v2, v3);
  v4 = v0[38];
  v5 = v0[24];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BE25FE8()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v5 = sub_26BE2622C;
  }

  else
  {
    v5 = sub_26BE26150;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE26150()
{
  v1 = v0[24];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BE261C0()
{
  sub_26BE00258(v0[32], v0[33]);
  v1 = v0[36];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE2622C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[40];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE262B8()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26BE2E418;
  v3 = *(v0 + 16);

  return sub_26BE91D9C(v3, v3);
}

uint64_t sub_26BE2636C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_26BE2638C, 0, 0);
}

uint64_t sub_26BE2638C()
{
  v1 = v0[20];
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    v0[5] = &type metadata for SwiftMLSFeatureFlags;
    v0[6] = sub_26BE295D8();
    *(v0 + 16) = 0;
    v4 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      *v5 = 0xD000000000000050;
      *(v5 + 8) = 0x800000026C02AD40;
      *(v5 + 112) = 2;
      swift_willThrow();
      v9 = v0[1];
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = v0[20];
  sub_26BE16230(v0 + 1);
  v7 = v0[12];

  v11 = sub_26BE14118(v8);
  v12 = v0[19];

  sub_26BE2BA24((v0 + 2));
  *v12 = v11;
  v9 = v0[1];
LABEL_6:

  return v9();
}

uint64_t sub_26BE26514(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE26534, 0, 0);
}

uint64_t sub_26BE26534()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_26BE26610;
  v3 = v0[1].i64[1];

  return sub_26BE19B8C();
}

uint64_t sub_26BE26610()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_26BE26758;
  }

  else
  {
    v4 = sub_26BE26740;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE26770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v4 = sub_26C00928C();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE26848, 0, 0);
}

uint64_t sub_26BE26848()
{
  v38 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = sub_26C009A5C();
  __swift_project_value_buffer(v6, qword_280478E70);
  v7 = *(v3 + 16);
  v7(v1, v4, v2);

  v8 = sub_26C009A3C();
  v9 = sub_26C00AA1C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[22];
  v13 = v0[18];
  v12 = v0[19];
  if (v10)
  {
    v35 = v9;
    v14 = v0[16];
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v15 = 136315394;
    v16 = sub_26BE16A38();
    v36 = v7;
    v18 = sub_26BE29740(v16, v17, &v37);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = sub_26C00922C();
    v21 = v20;
    v22 = *(v12 + 8);
    v22(v11, v13);
    v23 = sub_26BE29740(v19, v21, &v37);
    v7 = v36;

    *(v15 + 14) = v23;
    _os_log_impl(&dword_26BDFE000, v8, v35, "%s: changing clientUUID to %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v34, -1, -1);
    MEMORY[0x26D69A4E0](v15, -1, -1);
  }

  else
  {

    v22 = *(v12 + 8);
    v22(v11, v13);
  }

  v0[23] = v22;
  v24 = v0[20];
  v25 = v0[21];
  v26 = v0[18];
  v27 = v0[19];
  v29 = v0[16];
  v28 = v0[17];
  v30 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  swift_beginAccess();
  v7(v25, v29 + v30, v26);
  v7(v24, v28, v26);
  swift_beginAccess();
  (*(v27 + 40))(v29 + v30, v24, v26);
  swift_endAccess();
  v31 = swift_task_alloc();
  v0[24] = v31;
  *v31 = v0;
  v31[1] = sub_26BE26B70;
  v32 = v0[16];

  return sub_26BE18958();
}

uint64_t sub_26BE26B70()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_26BE26F94;
  }

  else
  {
    v3 = sub_26BE26C84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE26C84()
{
  v1 = v0[16];
  swift_beginAccess();
  sub_26BE038A8(v1 + 200, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_26BE26DDC;
  v7 = v0[21];

  return (v9)(v7, 0, 0xC000000000000000, v2, v3);
}

uint64_t sub_26BE26DDC()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_26BE27030;
  }

  else
  {
    v3 = sub_26BE26EF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE26EF0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152) + 8;
  (*(v0 + 184))(*(v0 + 168), *(v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26BE26F94()
{
  v1 = *(v0 + 152) + 8;
  (*(v0 + 184))(*(v0 + 168), *(v0 + 144));
  v2 = *(v0 + 200);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 160);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26BE27030()
{
  v1 = *(v0 + 152) + 8;
  (*(v0 + 184))(*(v0 + 168), *(v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = *(v0 + 216);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 160);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26BE270F4()
{
  v45 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = sub_26C009A5C();
  *(v0 + 288) = __swift_project_value_buffer(v2, qword_280478E70);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v44[0] = v7;
    *v6 = 136315138;
    v8 = sub_26BE16A38();
    v10 = sub_26BE29740(v8, v9, v44);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Performing periodic cleanup", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v11 = *(v0 + 280);
  sub_26BE16230((v0 + 16));
  v12 = *(v0 + 112);
  *(v0 + 296) = v12;
  v13 = *(v12 + 32);
  *(v0 + 408) = v13;
  v14 = -1;
  v15 = -1 << v13;
  if (-(-1 << v13) < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 56);

  if (v16)
  {
    v18 = 0;
LABEL_12:
    *(v0 + 304) = v16;
    *(v0 + 312) = v18;
    v21 = *(v0 + 280);
    v20 = *(v0 + 288);
    v22 = (*(v17 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v16)))));
    v23 = *v22;
    *(v0 + 320) = *v22;
    v24 = v22[1];
    *(v0 + 328) = v24;
    sub_26BE00608(v23, v24);

    sub_26BE00608(v23, v24);
    v25 = sub_26C009A3C();
    v26 = sub_26C00AA1C();

    sub_26BE00258(v23, v24);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 280);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v44[0] = v29;
      *v28 = 136315394;
      v30 = sub_26BE16A38();
      v32 = sub_26BE29740(v30, v31, v44);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = sub_26BE832D4(v23, v24);
      v35 = sub_26BE29740(v33, v34, v44);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_26BDFE000, v25, v26, "%s: Checking group %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v29, -1, -1);
      MEMORY[0x26D69A4E0](v28, -1, -1);
    }

    v36 = *(v0 + 280);
    type metadata accessor for MLS.Group.PureSwiftGroup();

    sub_26BE00608(v23, v24);
    v37 = swift_task_alloc();
    *(v0 + 336) = v37;
    *v37 = v0;
    v37[1] = sub_26BE275EC;
    v38 = *(v0 + 280);

    return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v38, v23, v24);
  }

  else
  {
    v19 = 0;
    while (((63 - v15) >> 6) - 1 != v19)
    {
      v18 = v19 + 1;
      v16 = *(v17 + 8 * v19++ + 64);
      if (v16)
      {
        goto LABEL_12;
      }
    }

    v40 = *(v0 + 280);

    sub_26BE2B9C8(v0 + 16, v0 + 128);
    v41 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
    swift_beginAccess();
    sub_26BE2BA78(v0 + 128, v40 + v41);
    swift_endAccess();
    v42 = swift_task_alloc();
    *(v0 + 392) = v42;
    *v42 = v0;
    v42[1] = sub_26BE2873C;
    v43 = *(v0 + 280);

    return sub_26BE18958();
  }
}

uint64_t sub_26BE275EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v7 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v5 = sub_26BE289A4;
  }

  else
  {
    v5 = sub_26BE27700;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_26BE27700()
{
  v49 = v0;
  if (*(v0 + 344))
  {
    v1 = swift_task_alloc();
    *(v0 + 360) = v1;
    *v1 = v0;
    v1[1] = sub_26BE27C38;

    sub_26BF3BBF0();
  }

  else
  {
    v3 = *(v0 + 320);
    v2 = *(v0 + 328);
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);

    sub_26BE00608(v3, v2);
    v6 = sub_26C009A3C();
    v7 = sub_26C00AA0C();

    sub_26BE00258(v3, v2);
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 320);
    v9 = *(v0 + 328);
    if (v8)
    {
      v11 = *(v0 + 280);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48 = v13;
      *v12 = 136315394;
      v14 = sub_26BE16A38();
      v16 = sub_26BE29740(v14, v15, &v48);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = sub_26BE832D4(v10, v9);
      v19 = sub_26BE29740(v17, v18, &v48);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_26BDFE000, v6, v7, "%s: Missing group %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v13, -1, -1);
      MEMORY[0x26D69A4E0](v12, -1, -1);

      sub_26BE00258(v10, v9);
    }

    else
    {
      sub_26BE00258(*(v0 + 320), *(v0 + 328));
    }

    v20 = *(v0 + 312);
    v21 = (*(v0 + 304) - 1) & *(v0 + 304);
    if (v21)
    {
      v22 = *(v0 + 296);
LABEL_14:
      *(v0 + 304) = v21;
      *(v0 + 312) = v20;
      v25 = *(v0 + 280);
      v24 = *(v0 + 288);
      v26 = (*(v22 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v21)))));
      v27 = *v26;
      *(v0 + 320) = *v26;
      v28 = v26[1];
      *(v0 + 328) = v28;
      sub_26BE00608(v27, v28);

      sub_26BE00608(v27, v28);
      v29 = sub_26C009A3C();
      v30 = sub_26C00AA1C();

      sub_26BE00258(v27, v28);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 280);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v48 = v33;
        *v32 = 136315394;
        v34 = sub_26BE16A38();
        v36 = sub_26BE29740(v34, v35, &v48);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2080;
        v37 = sub_26BE832D4(v27, v28);
        v39 = sub_26BE29740(v37, v38, &v48);

        *(v32 + 14) = v39;
        _os_log_impl(&dword_26BDFE000, v29, v30, "%s: Checking group %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v33, -1, -1);
        MEMORY[0x26D69A4E0](v32, -1, -1);
      }

      v40 = *(v0 + 280);
      type metadata accessor for MLS.Group.PureSwiftGroup();

      sub_26BE00608(v27, v28);
      v41 = swift_task_alloc();
      *(v0 + 336) = v41;
      *v41 = v0;
      v41[1] = sub_26BE275EC;
      v42 = *(v0 + 280);

      MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v42, v27, v28);
    }

    else
    {
      while (1)
      {
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          return;
        }

        if (v23 >= (((1 << *(v0 + 408)) + 63) >> 6))
        {
          break;
        }

        v22 = *(v0 + 296);
        v21 = *(v22 + 8 * v23 + 56);
        ++v20;
        if (v21)
        {
          v20 = v23;
          goto LABEL_14;
        }
      }

      v43 = *(v0 + 296);
      v44 = *(v0 + 280);

      sub_26BE2B9C8(v0 + 16, v0 + 128);
      v45 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
      swift_beginAccess();
      sub_26BE2BA78(v0 + 128, v44 + v45);
      swift_endAccess();
      v46 = swift_task_alloc();
      *(v0 + 392) = v46;
      *v46 = v0;
      v46[1] = sub_26BE2873C;
      v47 = *(v0 + 280);

      sub_26BE18958();
    }
  }
}

uint64_t sub_26BE27C38(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v7 = sub_26BE28A20;
  }

  else
  {
    *(v4 + 409) = a1 & 1;
    v7 = sub_26BE27D64;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BE27D64()
{
  v51 = v0;
  if (*(v0 + 409))
  {
    v2 = *(v0 + 320);
    v1 = *(v0 + 328);
    v4 = *(v0 + 280);
    v3 = *(v0 + 288);

    sub_26BE00608(v2, v1);
    v5 = sub_26C009A3C();
    v6 = sub_26C00AA1C();

    sub_26BE00258(v2, v1);
    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 320);
      v7 = *(v0 + 328);
      v9 = *(v0 + 280);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v50 = v11;
      *v10 = 136315394;
      v12 = sub_26BE16A38();
      v14 = sub_26BE29740(v12, v13, &v50);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = sub_26BE832D4(v8, v7);
      v17 = sub_26BE29740(v15, v16, &v50);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_26BDFE000, v5, v6, "%s: Deleting group %s due to expiry", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v11, -1, -1);
      MEMORY[0x26D69A4E0](v10, -1, -1);
    }

    v18 = *(v0 + 344);
    sub_26BE2AA44(*(v0 + 320), *(v0 + 328), (v0 + 264));
    sub_26BE132D4(*(v0 + 264), *(v0 + 272));
    v19 = swift_task_alloc();
    *(v0 + 376) = v19;
    *v19 = v0;
    v19[1] = sub_26BE282B0;

    return sub_26BF3D100();
  }

  else
  {
    v21 = *(v0 + 344);
    sub_26BE00258(*(v0 + 320), *(v0 + 328));

    v22 = *(v0 + 312);
    v23 = (*(v0 + 304) - 1) & *(v0 + 304);
    if (v23)
    {
      v24 = *(v0 + 296);
LABEL_13:
      *(v0 + 304) = v23;
      *(v0 + 312) = v22;
      v27 = *(v0 + 280);
      v26 = *(v0 + 288);
      v28 = (*(v24 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v23)))));
      v29 = *v28;
      *(v0 + 320) = *v28;
      v30 = v28[1];
      *(v0 + 328) = v30;
      sub_26BE00608(v29, v30);

      sub_26BE00608(v29, v30);
      v31 = sub_26C009A3C();
      v32 = sub_26C00AA1C();

      sub_26BE00258(v29, v30);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 280);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v50 = v35;
        *v34 = 136315394;
        v36 = sub_26BE16A38();
        v38 = sub_26BE29740(v36, v37, &v50);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v39 = sub_26BE832D4(v29, v30);
        v41 = sub_26BE29740(v39, v40, &v50);

        *(v34 + 14) = v41;
        _os_log_impl(&dword_26BDFE000, v31, v32, "%s: Checking group %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v35, -1, -1);
        MEMORY[0x26D69A4E0](v34, -1, -1);
      }

      v42 = *(v0 + 280);
      type metadata accessor for MLS.Group.PureSwiftGroup();

      sub_26BE00608(v29, v30);
      v43 = swift_task_alloc();
      *(v0 + 336) = v43;
      *v43 = v0;
      v43[1] = sub_26BE275EC;
      v44 = *(v0 + 280);

      return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v44, v29, v30);
    }

    else
    {
      while (1)
      {
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          return result;
        }

        if (v25 >= (((1 << *(v0 + 408)) + 63) >> 6))
        {
          break;
        }

        v24 = *(v0 + 296);
        v23 = *(v24 + 8 * v25 + 56);
        ++v22;
        if (v23)
        {
          v22 = v25;
          goto LABEL_13;
        }
      }

      v45 = *(v0 + 296);
      v46 = *(v0 + 280);

      sub_26BE2B9C8(v0 + 16, v0 + 128);
      v47 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
      swift_beginAccess();
      sub_26BE2BA78(v0 + 128, v46 + v47);
      swift_endAccess();
      v48 = swift_task_alloc();
      *(v0 + 392) = v48;
      *v48 = v0;
      v48[1] = sub_26BE2873C;
      v49 = *(v0 + 280);

      return sub_26BE18958();
    }
  }
}

uint64_t sub_26BE282B0()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_26BE28AB0;
  }

  else
  {
    v3 = sub_26BE283C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE283C4()
{
  v32 = v0;
  v1 = *(v0 + 344);
  sub_26BE00258(*(v0 + 320), *(v0 + 328));

  v3 = *(v0 + 312);
  v4 = (*(v0 + 304) - 1) & *(v0 + 304);
  if (v4)
  {
    v5 = *(v0 + 296);
LABEL_7:
    *(v0 + 304) = v4;
    *(v0 + 312) = v3;
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = (*(v5 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
    v10 = *v9;
    *(v0 + 320) = *v9;
    v11 = v9[1];
    *(v0 + 328) = v11;
    sub_26BE00608(v10, v11);

    sub_26BE00608(v10, v11);
    v12 = sub_26C009A3C();
    v13 = sub_26C00AA1C();

    sub_26BE00258(v10, v11);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 280);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315394;
      v17 = sub_26BE16A38();
      v19 = sub_26BE29740(v17, v18, &v31);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = sub_26BE832D4(v10, v11);
      v22 = sub_26BE29740(v20, v21, &v31);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_26BDFE000, v12, v13, "%s: Checking group %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v16, -1, -1);
      MEMORY[0x26D69A4E0](v15, -1, -1);
    }

    v23 = *(v0 + 280);
    type metadata accessor for MLS.Group.PureSwiftGroup();

    sub_26BE00608(v10, v11);
    v24 = swift_task_alloc();
    *(v0 + 336) = v24;
    *v24 = v0;
    v24[1] = sub_26BE275EC;
    v25 = *(v0 + 280);

    return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v25, v10, v11);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= (((1 << *(v0 + 408)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v0 + 296);
      v4 = *(v5 + 8 * v6 + 56);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v26 = *(v0 + 296);
    v27 = *(v0 + 280);

    sub_26BE2B9C8(v0 + 16, v0 + 128);
    v28 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
    swift_beginAccess();
    sub_26BE2BA78(v0 + 128, v27 + v28);
    swift_endAccess();
    v29 = swift_task_alloc();
    *(v0 + 392) = v29;
    *v29 = v0;
    v29[1] = sub_26BE2873C;
    v30 = *(v0 + 280);

    return sub_26BE18958();
  }
}

uint64_t sub_26BE2873C()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_26BE28B40;
  }

  else
  {
    v3 = sub_26BE28850;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE28850()
{
  v14 = v0;
  v2 = v0[35];
  v1 = v0[36];

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = sub_26BE16A38();
    v10 = sub_26BE29740(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Finished performing periodic cleanup", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  sub_26BE2BA24((v0 + 2));
  v11 = v0[1];

  return v11();
}

uint64_t sub_26BE289A4()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[37];

  sub_26BE00258(v1, v2);
  sub_26BE2BA24((v0 + 2));
  v4 = v0[44];
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE28A20()
{
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[37];

  sub_26BE00258(v3, v2);
  sub_26BE2BA24((v0 + 2));
  v5 = v0[46];
  v6 = v0[1];

  return v6();
}

uint64_t sub_26BE28AB0()
{
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[37];

  sub_26BE00258(v3, v2);
  sub_26BE2BA24((v0 + 2));
  v5 = v0[48];
  v6 = v0[1];

  return v6();
}

uint64_t sub_26BE28B40()
{
  sub_26BE2BA24(v0 + 16);
  v1 = *(v0 + 400);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE28BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_26BE28BCC, 0, 0);
}

uint64_t sub_26BE28BCC()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = type metadata accessor for MLS.Client.Client();
  *v4 = v0;
  v4[1] = sub_26BE28CC0;
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);

  return sub_26BEA87F4(v7, &unk_26C00DB40, v2, v5, v6, &off_287CBB360);
}

uint64_t sub_26BE28CC0()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE28DFC, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26BE28DFC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_26BE28E60(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26BE28F58;

  return v7(a1);
}

uint64_t sub_26BE28F58()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *MLS.Client.Client.deinit()
{
  v1 = *(v0 + 2);

  sub_26BE2962C(*(v0 + 3), *(v0 + 4));
  sub_26BE29710((v0 + 40));
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  v3 = sub_26C00928C();
  v4 = *(*(v3 - 8) + 8);
  v4(&v0[v2], v3);
  v4(&v0[OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID], v3);
  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey]);
  sub_26BE2E258(&v0[OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey], &qword_28045E468, &qword_26C00ECA0);
  v5 = *&v0[OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyPackageSecretsStore];

  sub_26BE2E258(&v0[OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state], &qword_28045E460, &qword_26C0206D0);
  v6 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_lastHealthReportTimestamp;
  v7 = sub_26C00921C();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t MLS.Client.Client.__deallocating_deinit()
{
  MLS.Client.Client.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26BE291F8()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 320);
  v3 = *(v1 + 328);
  return result;
}

uint64_t sub_26BE29238@<X0>(uint64_t a1@<X8>)
{
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  v3 = __swift_project_value_buffer(v2, qword_280478E70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MLS.Client.KeyPackage.rawRepresentation.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Client.KeyPackage.init(fromRaw:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.Client.KeyPackageSecrets.initKey.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_26BE03890(a1, v1);
}

uint64_t MLS.Client.KeyPackageSecrets.leafNodeKey.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_26BE03890(a1, v1 + 40);
}

uint64_t MLS.Client.KeyPackageSecrets.keyPackageBytes.getter()
{
  v1 = *(v0 + 80);
  sub_26BE00608(v1, *(v0 + 88));
  return v1;
}

uint64_t MLS.Client.KeyPackageSecrets.keyPackageBytes.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_26BE294CC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD9814(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26BE29D5C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26BE2958C(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_26BE04890(a1, a2);
  }

  return a1;
}

unint64_t sub_26BE295D8()
{
  result = qword_28045E448;
  if (!qword_28045E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E448);
  }

  return result;
}

uint64_t sub_26BE2962C(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_26BE0489C(a1, a2);
  }

  return a1;
}

uint64_t sub_26BE29640(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26BE296B4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26BE29740(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26BE29740(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26BE2980C(v11, 0, 0, 1, a1, a2);
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
    sub_26BE2E2EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26BE2980C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26BE29918(a5, a6);
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
    result = sub_26C00AC5C();
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

uint64_t sub_26BE29918(uint64_t a1, unint64_t a2)
{
  v4 = sub_26BFCC978(a1, a2);
  sub_26BE29964(&unk_287CB9C70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26BE29964(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26BE29A50(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_26BE29A50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
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