void sub_1B3776D38(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = -2 - ((-25 - v11) | v11 | 7) - (((-17 - v11) | v11) - *(*(v6 - 8) + 64));
  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v10 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if (v10 == 0x7FFFFFFF)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *a1 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              *(a1 + 1) = (a2 - 1);
            }
          }

          else
          {
            v22 = (v11 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 8) & ~(v11 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v12)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v12 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v18;
        break;
      case 2:
        *&a1[v12] = v18;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v12] = v18;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1B3776FEC()
{
  result = qword_1EB8532F8;
  if (!qword_1EB8532F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852F78);
    sub_1B370ED54(&qword_1EB853300, &qword_1EB853308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8532F8);
  }

  return result;
}

unint64_t sub_1B37770A4()
{
  result = qword_1EB853340;
  if (!qword_1EB853340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853348);
    sub_1B370ED54(&qword_1EB853018, &qword_1EB853010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853340);
  }

  return result;
}

unint64_t sub_1B37771A4()
{
  result = qword_1EB853350;
  if (!qword_1EB853350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853350);
  }

  return result;
}

unint64_t sub_1B37771FC()
{
  result = qword_1EB853358;
  if (!qword_1EB853358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853358);
  }

  return result;
}

unint64_t sub_1B3777254()
{
  result = qword_1EB853360;
  if (!qword_1EB853360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853360);
  }

  return result;
}

uint64_t sub_1B37772C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_2(a1, a2, a3);
  OUTLINED_FUNCTION_0_1();
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  return v3;
}

double OUTLINED_FUNCTION_9_5()
{
  result = 0.0;
  *(v0 - 300) = 0;
  return result;
}

double OUTLINED_FUNCTION_11_6()
{
  *(v0 + 116) = 1.0;
  result = 0.0;
  *(v1 - 72) = 0;
  *(v1 - 68) = 0;
  return result;
}

double OUTLINED_FUNCTION_14_7()
{
  result = 0.0;
  *(v0 + 68) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return sub_1B3C9D5E8();
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return sub_1B3C9D668();
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return sub_1B3C9D648();
}

void OUTLINED_FUNCTION_33_0(float a1, float a2)
{
  *(v2 + 44) = 1120403456;
  *(v2 + 60) = a1;
  *(v2 + 108) = a2;
  *(v2 + 112) = a1;
  *(v2 + 64) = 1119879168;
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_1B3C9D808();
}

void OUTLINED_FUNCTION_44_1()
{
  v1 = *(v0 + 320);
  *(v0 + 1424) = *(v0 + 328);
  *(v0 + 1432) = v1;
  *(v0 + 1440) = *(v0 + 304);
  *(v0 + 1448) = *(v0 + 264);
  *(v0 + 1456) = *(v0 + 312);
  *(v0 + 1464) = *(v0 + 296);
  *(v0 + 1472) = *(v0 + 340);
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_1B3C9BE18();
}

void *OUTLINED_FUNCTION_46_1()
{

  return memcpy((v0 + 2384), (v0 + 1112), 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_1B3C9D648();
}

double OUTLINED_FUNCTION_49()
{
  result = 0.0;
  *(v0 + 200) = 0;
  *(v0 + 320) = 0xE800000000000000;
  return result;
}

float OUTLINED_FUNCTION_51()
{
  *(v0 - 220) = v5;
  *(v0 - 216) = v7;
  *(v0 - 212) = v4;
  *(v0 - 208) = v2;
  *(v0 - 204) = v6;
  *(v0 - 200) = v8;
  *(v0 - 196) = v1;
  *(v0 - 192) = v3;
  v9 = *(v0 - 300);
  *(v0 - 188) = *(v0 - 72);
  *(v0 - 184) = v9;
  result = *(v0 - 304);
  *(v0 - 180) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_1B3C9BE08();
}

uint64_t OUTLINED_FUNCTION_56(unint64_t *a1)
{

  return sub_1B3763ADC(a1);
}

uint64_t OUTLINED_FUNCTION_58_0(unint64_t *a1)
{

  return sub_1B3763ADC(a1);
}

void OUTLINED_FUNCTION_59(float a1)
{
  *(v1 + 336) = a1;
  *(v1 + 184) = 2;
  *(v1 + 264) = 0xE900000000000065;
  *(v1 + 272) = v2;
  *(v1 + 280) = v2;
  *(v1 + 288) = v2;
  *(v1 + 168) = v2;
}

double OUTLINED_FUNCTION_63()
{
  *(v0 + 308) = *(v0 + 60);
  v1 = *(v0 + 64);
  *(v0 + 312) = *(v0 + 68);
  *(v0 + 316) = v1;
  v2 = *(v0 + 80);
  *(v0 + 320) = *(v0 + 72);
  *(v0 + 328) = v2;
  result = *(v0 + 96);
  *(v0 + 336) = *(v0 + 88);
  *(v0 + 344) = result;
  return result;
}

void *OUTLINED_FUNCTION_68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[4] = a2;
  result[5] = v2;
  result[6] = 0x6C612E726F6C6F63;
  result[7] = 0xEB00000000616870;
  return result;
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_1B3C9D668();
}

uint64_t OUTLINED_FUNCTION_73@<X0>(char a1@<W8>)
{
  *(v1 - 192) = a1;

  return sub_1B3C9D5A8();
}

float OUTLINED_FUNCTION_77()
{
  v2 = *(v1 - 72);
  *(v0 + 288) = *(v1 - 68);
  *(v0 + 292) = v2;
  result = *(v0 + 112);
  *(v0 + 296) = *(v0 + 116);
  *(v0 + 300) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_79()
{

  return sub_1B3C9D5E8();
}

void *OUTLINED_FUNCTION_80(void *a1)
{

  return memcpy(a1, (v1 + 2528), 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_81()
{

  return sub_1B3C9D648();
}

uint64_t OUTLINED_FUNCTION_86(uint64_t a1)
{

  return sub_1B371B36C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_91()
{
  v2 = v0[12];
  v0[6] = v0[11];
  v0[7] = v2;
  v3 = v0[14];
  v0[8] = v0[13];
  v0[9] = v3;

  return sub_1B376619C((v0 + 6));
}

uint64_t OUTLINED_FUNCTION_94()
{

  return sub_1B3C9D5C8();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_1B3C9BC88();
}

void OUTLINED_FUNCTION_100(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 304);
  *(v1 - 144) = v2;
  *(v1 - 136) = v3;
}

double OUTLINED_FUNCTION_105()
{
  result = 0.0;
  *(v0 - 300) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_113()
{

  return sub_1B3C9BE08();
}

uint64_t AmbientPhotoFramePosterKind.description.getter()
{
  result = 0x6D75626C61;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_17_7();
      break;
    case 2:
      result = 1937007984;
      break;
    case 3:
      result = OUTLINED_FUNCTION_19_5();
      break;
    case 4:
      result = OUTLINED_FUNCTION_18_5();
      break;
    case 5:
      return result;
    default:
      result = OUTLINED_FUNCTION_15_8();
      break;
  }

  return result;
}

uint64_t sub_1B3777D34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465727574616566 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65727574616ELL && a2 == 0xE600000000000000;
    if (v6 || (sub_1B3C9D6A8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1937007984 && a2 == 0xE400000000000000;
      if (v7 || (sub_1B3C9D6A8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x736569746963 && a2 == 0xE600000000000000;
        if (v8 || (sub_1B3C9D6A8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C706F6570 && a2 == 0xE600000000000000;
          if (v9 || (sub_1B3C9D6A8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1B3C9D6A8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B3777F1C(char a1)
{
  result = 0x6465727574616566;
  switch(a1)
  {
    case 1:
      result = 0x65727574616ELL;
      break;
    case 2:
      result = 1937007984;
      break;
    case 3:
      result = 0x736569746963;
      break;
    case 4:
      result = 0x656C706F6570;
      break;
    case 5:
      result = 0x6D75626C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B3777FD8@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_17_3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B3778004(uint64_t a1)
{
  v2 = sub_1B37788CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3778040(uint64_t a1)
{
  v2 = sub_1B37788CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B377807C(uint64_t a1)
{
  v2 = sub_1B3778974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B37780B8(uint64_t a1)
{
  v2 = sub_1B3778974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B37780FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B3777D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B3778124@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3777F14();
  *a1 = result;
  return result;
}

uint64_t sub_1B377814C(uint64_t a1)
{
  v2 = sub_1B3778878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3778188(uint64_t a1)
{
  v2 = sub_1B3778878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B37781C4(uint64_t a1)
{
  v2 = sub_1B3778A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3778200(uint64_t a1)
{
  v2 = sub_1B3778A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B377823C(uint64_t a1)
{
  v2 = sub_1B3778A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3778278(uint64_t a1)
{
  v2 = sub_1B3778A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B37782B4(uint64_t a1)
{
  v2 = sub_1B3778920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B37782F0(uint64_t a1)
{
  v2 = sub_1B3778920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B377832C(uint64_t a1)
{
  v2 = sub_1B37789C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3778368(uint64_t a1)
{
  v2 = sub_1B37789C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AmbientPhotoFramePosterKind.encode(to:)()
{
  OUTLINED_FUNCTION_74();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533B0);
  OUTLINED_FUNCTION_0();
  v49 = v6;
  v50 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v48 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533B8);
  OUTLINED_FUNCTION_0();
  v46 = v10;
  v47 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  v45 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533C0);
  OUTLINED_FUNCTION_0();
  v43 = v14;
  v44 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  v42 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533C8);
  OUTLINED_FUNCTION_0();
  v40 = v18;
  v41 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21();
  v39 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533D0);
  OUTLINED_FUNCTION_0();
  v37 = v22;
  v38 = v21;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v35 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533D8);
  OUTLINED_FUNCTION_0();
  v35 = v27;
  v36 = v26;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_31();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533E0);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7_14();
  v32 = *v0;
  OUTLINED_FUNCTION_38_2(v4);
  sub_1B3778878();
  sub_1B3C9D818();
  switch(v32)
  {
    case 1:
      sub_1B3778A1C();
      v32 = v51;
      sub_1B3C9D608();
      (*(v37 + 8))(v25, v38);
      goto LABEL_9;
    case 2:
      sub_1B37789C8();
      v1 = v39;
      OUTLINED_FUNCTION_2_15();
      v34 = v40;
      v33 = v41;
      goto LABEL_8;
    case 3:
      sub_1B3778974();
      v1 = v42;
      OUTLINED_FUNCTION_2_15();
      v34 = v43;
      v33 = v44;
      goto LABEL_8;
    case 4:
      sub_1B3778920();
      v1 = v45;
      OUTLINED_FUNCTION_2_15();
      v34 = v46;
      v33 = v47;
      goto LABEL_8;
    case 5:
      sub_1B37788CC();
      v1 = v48;
      OUTLINED_FUNCTION_2_15();
      v34 = v49;
      v33 = v50;
      goto LABEL_8;
    default:
      sub_1B3778A70();
      OUTLINED_FUNCTION_2_15();
      v34 = v35;
      v33 = v36;
LABEL_8:
      (*(v34 + 8))(v1, v33);
LABEL_9:
      (*(v30 + 8))(v2, v32);
      OUTLINED_FUNCTION_76();
      return;
  }
}

unint64_t sub_1B3778878()
{
  result = qword_1EB84F5E8;
  if (!qword_1EB84F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F5E8);
  }

  return result;
}

unint64_t sub_1B37788CC()
{
  result = qword_1EB84F5B8;
  if (!qword_1EB84F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F5B8);
  }

  return result;
}

unint64_t sub_1B3778920()
{
  result = qword_1EB84F570;
  if (!qword_1EB84F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F570);
  }

  return result;
}

unint64_t sub_1B3778974()
{
  result = qword_1EB84F5A0;
  if (!qword_1EB84F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F5A0);
  }

  return result;
}

unint64_t sub_1B37789C8()
{
  result = qword_1EB84F5D0;
  if (!qword_1EB84F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F5D0);
  }

  return result;
}

unint64_t sub_1B3778A1C()
{
  result = qword_1EB84F588;
  if (!qword_1EB84F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F588);
  }

  return result;
}

unint64_t sub_1B3778A70()
{
  result = qword_1EB84F558;
  if (!qword_1EB84F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F558);
  }

  return result;
}

uint64_t AmbientPhotoFramePosterKind.hashValue.getter()
{
  v1 = *v0;
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](v1);
  return sub_1B3C9D7F8();
}

void AmbientPhotoFramePosterKind.init(from:)()
{
  OUTLINED_FUNCTION_74();
  v84 = v0;
  v3 = v2;
  v80 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533E8);
  OUTLINED_FUNCTION_0();
  v76 = v5;
  v77 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v78 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533F0);
  OUTLINED_FUNCTION_0();
  v74 = v9;
  v75 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  v83 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533F8);
  OUTLINED_FUNCTION_0();
  v72 = v14;
  v73 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  v79 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853400);
  OUTLINED_FUNCTION_0();
  v70 = v18;
  v71 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21();
  v82 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853408);
  OUTLINED_FUNCTION_0();
  v68 = v22;
  v69 = v21;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853410);
  OUTLINED_FUNCTION_0();
  v67 = v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v62 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853418);
  OUTLINED_FUNCTION_0();
  v81 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7_14();
  __swift_project_boxed_opaque_existential_0Tm(v3, v3[3]);
  sub_1B3778878();
  v34 = v84;
  sub_1B3C9D808();
  v84 = v34;
  if (v34)
  {
LABEL_12:
    v58 = v3;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    OUTLINED_FUNCTION_76();
    return;
  }

  v63 = v30;
  v62 = v26;
  v64 = v25;
  v65 = v3;
  v35 = v82;
  v36 = v83;
  v37 = v81;
  v66 = v1;
  v38 = sub_1B3C9D5F8();
  v42 = sub_1B377B1D8(v38, 0);
  v43 = v31;
  if (v40 == v41 >> 1)
  {
    v44 = v37;
LABEL_10:
    v53 = sub_1B3C9D3E8();
    v54 = swift_allocError();
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853420);
    *v56 = &type metadata for AmbientPhotoFramePosterKind;
    v57 = v66;
    sub_1B3C9D588();
    sub_1B3C9D3D8();
    (*(*(v53 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v53);
    v84 = v54;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v57, v43);
LABEL_11:
    v3 = v65;
    goto LABEL_12;
  }

  if (v40 < (v41 >> 1))
  {
    v45 = *(v39 + v40);
    sub_1B377B284(v40 + 1, v41 >> 1, v42, v39, v40, v41);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 == v49 >> 1)
    {
      v50 = v80;
      v51 = v66;
      switch(v45)
      {
        case 1:
          sub_1B3778A1C();
          v35 = v64;
          OUTLINED_FUNCTION_9_6();
          v84 = 0;
          swift_unknownObjectRelease();
          v61 = v68;
          v60 = v69;
          goto LABEL_25;
        case 2:
          sub_1B37789C8();
          OUTLINED_FUNCTION_9_6();
          v84 = 0;
          swift_unknownObjectRelease();
          v61 = v70;
          v60 = v71;
          goto LABEL_25;
        case 3:
          sub_1B3778974();
          v35 = v79;
          OUTLINED_FUNCTION_9_6();
          v84 = 0;
          swift_unknownObjectRelease();
          v61 = v72;
          v60 = v73;
          goto LABEL_25;
        case 4:
          sub_1B3778920();
          v59 = v84;
          sub_1B3C9D578();
          v84 = v59;
          if (v59)
          {
            (*(v37 + 8))(v51, v31);
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          (*(v75 + 8))(v36, v74);
LABEL_26:
          (*(v37 + 8))(v51, v31);
          *v50 = v45;
          v58 = v65;
          break;
        case 5:
          sub_1B37788CC();
          v35 = v78;
          OUTLINED_FUNCTION_9_6();
          v84 = 0;
          swift_unknownObjectRelease();
          v60 = v76;
          v61 = v77;
LABEL_25:
          (*(v61 + 8))(v35, v60);
          goto LABEL_26;
        default:
          sub_1B3778A70();
          v52 = v63;
          OUTLINED_FUNCTION_9_6();
          v84 = 0;
          swift_unknownObjectRelease();
          (*(v67 + 8))(v52, v62);
          goto LABEL_26;
      }

      goto LABEL_13;
    }

    v44 = v37;
    v43 = v31;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t AmbientPhotoFramePosterKind.associatedShuffleSmartAlbums.getter()
{
  result = 0;
  switch(*v0)
  {
    case 1:
      result = 4;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 8;
      break;
    case 4:
      result = 1;
      break;
    case 5:
      return result;
    default:
      result = 16;
      break;
  }

  return result;
}

__n128 AmbientPhotoFramePosterDescriptor.init(kind:contentConfiguration:identifier:version:)@<Q0>(char *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  v7 = a2->n128_u64[0];
  v8 = a2->n128_u8[8];
  v9 = a2[2].n128_u64[0];
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = v6;
  *(a6 + 24) = v7;
  *(a6 + 32) = v8;
  result = a2[1];
  *(a6 + 40) = result;
  *(a6 + 56) = v9;
  *(a6 + 64) = a5;
  return result;
}

uint64_t AmbientPhotoFramePosterDescriptor.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AmbientPhotoFramePosterDescriptor.contentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 AmbientPhotoFramePosterDescriptor.contentConfiguration.setter(__n128 *a1)
{
  v2 = a1->n128_u64[0];
  v3 = a1->n128_u8[8];
  v6 = a1[1];
  v4 = a1[2].n128_u64[0];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  result = v6;
  *(v1 + 40) = v6;
  *(v1 + 56) = v4;
  return result;
}

uint64_t static AmbientPhotoFramePosterDescriptor.descriptorIdentifierForPosterKind(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 0x6D75626C61;
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_17_7();
      break;
    case 2:
      result = 1937007984;
      break;
    case 3:
      result = OUTLINED_FUNCTION_19_5();
      break;
    case 4:
      result = OUTLINED_FUNCTION_18_5();
      break;
    case 5:
      return result;
    default:
      result = OUTLINED_FUNCTION_15_8();
      break;
  }

  return result;
}

BOOL static AmbientPhotoFrameContentConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v4)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v12 = v8;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v9 || (sub_1B3761898(v5, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v7)
  {
    if (!v11 || (sub_1B3761898(v7, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v6)
  {
    return v10 && (sub_1B3761898(v6, v10) & 1) != 0;
  }

  return !v10;
}

uint64_t sub_1B3779620(uint64_t a1)
{
  v2 = sub_1B377B300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B377965C(uint64_t a1)
{
  v2 = sub_1B377B300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AmbientPhotoFramePosterDescriptor.init(from:)()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853430);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_38_2(v2);
  sub_1B377B300();
  OUTLINED_FUNCTION_26_2();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_3_15();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_3_15();
    OUTLINED_FUNCTION_11_7();
    v4 = OUTLINED_FUNCTION_1_14();
    v5(v4);
    OUTLINED_FUNCTION_10_8();
    sub_1B377B4A4(&v7, &v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    v6 = OUTLINED_FUNCTION_12_5();
    sub_1B377B4DC(v6);
  }

  OUTLINED_FUNCTION_76();
}

id static AmbientPhotoFramePosterDescriptor.descriptorFileExists(inDirectory:)()
{
  OUTLINED_FUNCTION_30();
  v0 = sub_1B3C98068();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  sub_1B3C98028();
  v7 = [objc_opt_self() defaultManager];
  sub_1B3C98048();
  v8 = sub_1B3C9C5A8();

  v9 = [v7 fileExistsAtPath_];

  (*(v2 + 8))(v6, v0);
  return v9;
}

uint64_t static AmbientPhotoFramePosterDescriptor.load(fromDirectory:)()
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  sub_1B3C98028();
  v2 = sub_1B3C98078();
  if (v0)
  {
    v4 = OUTLINED_FUNCTION_13_10();
    return v5(v4);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    sub_1B3C97D48();
    OUTLINED_FUNCTION_36_0();
    sub_1B3C97D38();
    sub_1B377B50C();
    OUTLINED_FUNCTION_29_2();
    v9 = OUTLINED_FUNCTION_13_10();
    v10(v9);

    return sub_1B377659C(v7, v8);
  }
}

uint64_t AmbientPhotoFramePosterDescriptor.save(toDirectory:)()
{
  OUTLINED_FUNCTION_30();
  sub_1B3C98068();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_31();
  sub_1B3C98028();
  sub_1B3C97D78();
  OUTLINED_FUNCTION_36_0();
  sub_1B3C97D68();
  OUTLINED_FUNCTION_36_2();
  sub_1B377B560();
  v2 = sub_1B3C97D58();
  if (v0)
  {
    v4 = OUTLINED_FUNCTION_14_8();
    v5(v4);
  }

  else
  {
    v7 = v2;
    v8 = v3;

    OUTLINED_FUNCTION_27_2();
    v9 = OUTLINED_FUNCTION_14_8();
    v10(v9);
    return sub_1B377659C(v7, v8);
  }
}

__n128 AmbientPhotoFramePosterConfiguration.init(kind:contentConfiguration:version:identifier:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a2->n128_u64[0];
  v7 = a2->n128_u8[8];
  v8 = a2[2].n128_u64[0];
  *(a6 + 16) = *a1;
  *(a6 + 24) = v6;
  *(a6 + 32) = v7;
  result = a2[1];
  *(a6 + 40) = result;
  *(a6 + 56) = v8;
  *(a6 + 64) = a3;
  *a6 = a4;
  *(a6 + 8) = a5;
  return result;
}

uint64_t _s15PhotosUIPrivate33AmbientPhotoFramePosterDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v14 = *(a2 + 56);
  v13 = *(a2 + 64);
  if (v12)
  {
    if (v2 != v8)
    {
      return 0;
    }

LABEL_9:
    v22 = v14;
    v23 = v3;
    v24 = v4;
    v25 = v5;
    v26 = v7;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    return static AmbientPhotoFrameContentConfiguration.== infix(_:_:)(&v23, &v19) & (v6 == v13);
  }

  v17 = *(a2 + 40);
  v18 = *(a1 + 40);
  v15 = sub_1B3C9D6A8();
  result = 0;
  if (v15)
  {
    v11 = v17;
    v5 = v18;
    if (v2 == v8)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_1B3779E2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001B3D129E0 == a2;
      if (v7 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_21_3();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1B3779F64(uint64_t a1)
{
  v2 = sub_1B377B5B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3779FA0(uint64_t a1)
{
  v2 = sub_1B377B5B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B377A020()
{
  OUTLINED_FUNCTION_74();
  v11 = v2;
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_14();
  v10 = OUTLINED_FUNCTION_38_2(v4);
  v11(v10);
  sub_1B3C9D818();
  sub_1B3C9D628();
  if (!v0)
  {
    sub_1B377B354();
    sub_1B3C9D668();
    sub_1B377B3A8();

    sub_1B3C9D668();

    sub_1B3C9D658();
  }

  (*(v8 + 8))(v1, v6);
  OUTLINED_FUNCTION_76();
}

void AmbientPhotoFramePosterConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853460);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_38_2(v2);
  sub_1B377B5B4();
  OUTLINED_FUNCTION_26_2();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_3_15();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_3_15();
    OUTLINED_FUNCTION_11_7();
    v4 = OUTLINED_FUNCTION_1_14();
    v5(v4);
    OUTLINED_FUNCTION_10_8();
    sub_1B377B608(&v7, &v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    v6 = OUTLINED_FUNCTION_12_5();
    sub_1B377B640(v6);
  }

  OUTLINED_FUNCTION_76();
}

id static AmbientPhotoFramePosterConfiguration.configurationFileExists(inDirectory:)()
{
  OUTLINED_FUNCTION_30();
  v0 = sub_1B3C98068();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  sub_1B3C98028();
  v7 = [objc_opt_self() defaultManager];
  sub_1B3C98048();
  v8 = sub_1B3C9C5A8();

  v9 = [v7 fileExistsAtPath_];

  (*(v2 + 8))(v6, v0);
  return v9;
}

uint64_t static AmbientPhotoFramePosterConfiguration.load(fromDirectory:)()
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  sub_1B3C98028();
  v2 = sub_1B3C98078();
  if (v0)
  {
    v4 = OUTLINED_FUNCTION_13_10();
    return v5(v4);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    sub_1B3C97D48();
    OUTLINED_FUNCTION_36_0();
    sub_1B3C97D38();
    sub_1B377B670();
    OUTLINED_FUNCTION_29_2();
    v9 = OUTLINED_FUNCTION_13_10();
    v10(v9);

    return sub_1B377659C(v7, v8);
  }
}

uint64_t AmbientPhotoFramePosterConfiguration.save(toDirectory:)()
{
  OUTLINED_FUNCTION_30();
  sub_1B3C98068();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_31();
  sub_1B3C98028();
  sub_1B3C97D78();
  OUTLINED_FUNCTION_36_0();
  sub_1B3C97D68();
  OUTLINED_FUNCTION_36_2();
  sub_1B377B6C4();
  v2 = sub_1B3C97D58();
  if (v0)
  {
    v4 = OUTLINED_FUNCTION_14_8();
    v5(v4);
  }

  else
  {
    v7 = v2;
    v8 = v3;

    OUTLINED_FUNCTION_27_2();
    v9 = OUTLINED_FUNCTION_14_8();
    v10(v9);
    return sub_1B377659C(v7, v8);
  }
}

uint64_t AmbientPhotoFrameContentConfiguration.init(smartAlbums:personLocalIdentifiers:assetCollectionLocalIdentifiers:assetCollectionCloudIdentifiers:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1B377A8B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x626C417472616D73 && a2 == 0xEB00000000736D75;
  if (v4 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001B3D12A00 == a2;
    if (v6 || (sub_1B3C9D6A8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001FLL && 0x80000001B3D12A20 == a2;
      if (v7 || (sub_1B3C9D6A8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001FLL && 0x80000001B3D12A40 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B3C9D6A8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1B377AA18(char a1)
{
  result = 0x626C417472616D73;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B377AAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B377A8B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B377AADC(uint64_t a1)
{
  v2 = sub_1B377B718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B377AB18(uint64_t a1)
{
  v2 = sub_1B377B718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AmbientPhotoFrameContentConfiguration.encode(to:)()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853470);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  __swift_project_boxed_opaque_existential_0Tm(v3, v3[3]);
  sub_1B377B718();
  sub_1B3C9D818();
  type metadata accessor for PFPosterShuffleSmartAlbums(0);
  sub_1B377C554(&qword_1EB84F168);
  sub_1B3C9D618();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F98);
    sub_1B377B76C(&qword_1EB84F218);
    OUTLINED_FUNCTION_6_12();
    OUTLINED_FUNCTION_6_12();
    OUTLINED_FUNCTION_6_12();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_76();
}

void AmbientPhotoFrameContentConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853478);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_1B377B718();
  sub_1B3C9D808();
  if (!v0)
  {
    type metadata accessor for PFPosterShuffleSmartAlbums(0);
    sub_1B377C554(&qword_1EB853480);
    OUTLINED_FUNCTION_39_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F98);
    sub_1B377B76C(&qword_1EB853488);
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_39_1();
    v6 = OUTLINED_FUNCTION_24_1();
    v7(v6);
    *v4 = v8;
    *(v4 + 8) = v9;
    *(v4 + 16) = v8;
    *(v4 + 24) = v8;
    *(v4 + 32) = v8;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);

  OUTLINED_FUNCTION_76();
}

uint64_t static AmbientPhotoFrameContentConfiguration.defaultContentConfigurationForPosterKind(kind:photoLibrary:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = 8;
  result = 0;
  switch(v3)
  {
    case 1:
      result = 0;
      v4 = 4;
      goto LABEL_6;
    case 2:
      result = 0;
      v4 = 2;
      goto LABEL_6;
    case 3:
      goto LABEL_6;
    case 4:
      sub_1B377B7D8();
      v6 = [swift_getObjCClassFromMetadata() sharedInstance];
      result = sub_1B377B220(v6);
      v4 = 1;
      goto LABEL_6;
    case 5:
      *a2 = 0;
      *(a2 + 8) = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = &unk_1F2AB3060;
      return result;
    default:
      result = 0;
      v4 = 16;
LABEL_6:
      *a2 = v4;
      *(a2 + 8) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = result;
      return result;
  }
}

uint64_t sub_1B377B1D8(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B377B220(void *a1)
{
  v2 = [a1 personLocalIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B3C9C788();

  return v3;
}

uint64_t sub_1B377B284(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1B377B300()
{
  result = qword_1EB84F4C0;
  if (!qword_1EB84F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F4C0);
  }

  return result;
}

unint64_t sub_1B377B354()
{
  result = qword_1EB84F540;
  if (!qword_1EB84F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F540);
  }

  return result;
}

unint64_t sub_1B377B3A8()
{
  result = qword_1EB84F488;
  if (!qword_1EB84F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F488);
  }

  return result;
}

unint64_t sub_1B377B3FC()
{
  result = qword_1EB853438;
  if (!qword_1EB853438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853438);
  }

  return result;
}

unint64_t sub_1B377B450()
{
  result = qword_1EB853440;
  if (!qword_1EB853440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853440);
  }

  return result;
}

unint64_t sub_1B377B50C()
{
  result = qword_1EB853448;
  if (!qword_1EB853448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853448);
  }

  return result;
}

unint64_t sub_1B377B560()
{
  result = qword_1EB84F4A8;
  if (!qword_1EB84F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F4A8);
  }

  return result;
}

unint64_t sub_1B377B5B4()
{
  result = qword_1EB853458;
  if (!qword_1EB853458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853458);
  }

  return result;
}

unint64_t sub_1B377B670()
{
  result = qword_1EB853B50;
  if (!qword_1EB853B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853B50);
  }

  return result;
}

unint64_t sub_1B377B6C4()
{
  result = qword_1EB853468;
  if (!qword_1EB853468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853468);
  }

  return result;
}

unint64_t sub_1B377B718()
{
  result = qword_1EB84F4A0;
  if (!qword_1EB84F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F4A0);
  }

  return result;
}

uint64_t sub_1B377B76C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852F98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B377B7D8()
{
  result = qword_1EB84F140;
  if (!qword_1EB84F140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84F140);
  }

  return result;
}

unint64_t sub_1B377B820()
{
  result = qword_1EB853490;
  if (!qword_1EB853490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853490);
  }

  return result;
}

unint64_t sub_1B377B878()
{
  result = qword_1EB853498;
  if (!qword_1EB853498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8534A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853498);
  }

  return result;
}

uint64_t sub_1B377B8FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B377B93C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B377B998(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B377B9EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *sub_1B377BA74(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AmbientPhotoFrameContentUnavailableView.AnimationPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B377BBD8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B377BD18()
{
  result = qword_1EB8534A8;
  if (!qword_1EB8534A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8534A8);
  }

  return result;
}

unint64_t sub_1B377BD70()
{
  result = qword_1EB8534B0;
  if (!qword_1EB8534B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8534B0);
  }

  return result;
}

unint64_t sub_1B377BDC8()
{
  result = qword_1EB8534B8;
  if (!qword_1EB8534B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8534B8);
  }

  return result;
}

unint64_t sub_1B377BE20()
{
  result = qword_1EB8534C0;
  if (!qword_1EB8534C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8534C0);
  }

  return result;
}

unint64_t sub_1B377BE78()
{
  result = qword_1EB84F490;
  if (!qword_1EB84F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F490);
  }

  return result;
}

unint64_t sub_1B377BED0()
{
  result = qword_1EB84F498;
  if (!qword_1EB84F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F498);
  }

  return result;
}

unint64_t sub_1B377BF28()
{
  result = qword_1EB8534C8;
  if (!qword_1EB8534C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8534C8);
  }

  return result;
}

unint64_t sub_1B377BF80()
{
  result = qword_1EB8534D0;
  if (!qword_1EB8534D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8534D0);
  }

  return result;
}

unint64_t sub_1B377BFD8()
{
  result = qword_1EB84F4B0;
  if (!qword_1EB84F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F4B0);
  }

  return result;
}

unint64_t sub_1B377C030()
{
  result = qword_1EB84F4B8;
  if (!qword_1EB84F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F4B8);
  }

  return result;
}

unint64_t sub_1B377C088()
{
  result = qword_1EB84F548;
  if (!qword_1EB84F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F548);
  }

  return result;
}

unint64_t sub_1B377C0E0()
{
  result = qword_1EB84F550;
  if (!qword_1EB84F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F550);
  }

  return result;
}

unint64_t sub_1B377C138()
{
  result = qword_1EB84F578;
  if (!qword_1EB84F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F578);
  }

  return result;
}

unint64_t sub_1B377C190()
{
  result = qword_1EB84F580;
  if (!qword_1EB84F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F580);
  }

  return result;
}

unint64_t sub_1B377C1E8()
{
  result = qword_1EB84F5C0;
  if (!qword_1EB84F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F5C0);
  }

  return result;
}

unint64_t sub_1B377C240()
{
  result = qword_1EB84F5C8;
  if (!qword_1EB84F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F5C8);
  }

  return result;
}

unint64_t sub_1B377C298()
{
  result = qword_1EB84F590;
  if (!qword_1EB84F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F590);
  }

  return result;
}

unint64_t sub_1B377C2F0()
{
  result = qword_1EB84F598;
  if (!qword_1EB84F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F598);
  }

  return result;
}

unint64_t sub_1B377C348()
{
  result = qword_1EB84F560;
  if (!qword_1EB84F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F560);
  }

  return result;
}

unint64_t sub_1B377C3A0()
{
  result = qword_1EB84F568;
  if (!qword_1EB84F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F568);
  }

  return result;
}

unint64_t sub_1B377C3F8()
{
  result = qword_1EB84F5A8;
  if (!qword_1EB84F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F5A8);
  }

  return result;
}

unint64_t sub_1B377C450()
{
  result = qword_1EB84F5B0;
  if (!qword_1EB84F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F5B0);
  }

  return result;
}

unint64_t sub_1B377C4A8()
{
  result = qword_1EB84F5D8;
  if (!qword_1EB84F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F5D8);
  }

  return result;
}

unint64_t sub_1B377C500()
{
  result = qword_1EB84F5E0;
  if (!qword_1EB84F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F5E0);
  }

  return result;
}

uint64_t sub_1B377C554(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PFPosterShuffleSmartAlbums(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return sub_1B3C9D608();
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return sub_1B3C9D5E8();
}

uint64_t OUTLINED_FUNCTION_6_12()
{

  return sub_1B3C9D618();
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return sub_1B3C9D578();
}

void *OUTLINED_FUNCTION_10_8()
{
  *(v4 - 232) = v3;
  *(v4 - 224) = v1;
  *(v4 - 216) = *(v4 - 236);
  *(v4 - 208) = *(v4 - 272);
  v6 = *(v4 - 72);
  *(v4 - 276) = v6;
  *(v4 - 200) = v6;
  v7 = *(v4 - 256);
  v8 = *(v4 - 248);
  *(v4 - 192) = *(v4 - 264);
  *(v4 - 184) = v7;
  *(v4 - 176) = v8;
  *(v4 - 168) = v0;

  return memcpy(v2, (v4 - 232), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  *(v0 - 272) = *(v0 - 160);
  v2 = *(v0 - 152);
  v3 = *(v0 - 136);
  *(v0 - 264) = *(v0 - 144);
  *(v0 - 256) = v3;
  *(v0 - 248) = *(v0 - 128);
  *(v0 - 72) = v2;
  *(v0 - 65) = 3;

  return sub_1B3C9D5D8();
}

uint64_t OUTLINED_FUNCTION_12_5()
{
  *(v6 - 160) = v4;
  *(v6 - 152) = v1;
  *(v6 - 144) = *(v6 - 236);
  *(v6 - 136) = *(v6 - 272);
  *(v6 - 128) = *(v6 - 276);
  *(v6 - 120) = v3;
  *(v6 - 112) = v2;
  *(v6 - 104) = v5;
  *(v6 - 96) = v0;
  return v6 - 160;
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return sub_1B3C9D6A8();
}

uint64_t OUTLINED_FUNCTION_25_0()
{
  *(v0 - 160) = 0;

  return sub_1B3C9D5A8();
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return sub_1B3C9D808();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return MEMORY[0x1EEDC45E8](v0, 1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return sub_1B3C97D28();
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return sub_1B3C98068();
}

unint64_t OUTLINED_FUNCTION_34_2()
{
  *(v0 - 232) = 1;

  return sub_1B377B3FC();
}

unint64_t OUTLINED_FUNCTION_35_2()
{
  *(v0 - 236) = *(v0 - 160);
  *(v0 - 232) = 2;

  return sub_1B377B450();
}

void *OUTLINED_FUNCTION_36_2()
{

  return memcpy((v1 - 136), v0, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return MEMORY[0x1EEE6AC80]();
}

uint64_t type metadata accessor for StoryColorGradeEditorViewController()
{
  result = qword_1EB8534F8;
  if (!qword_1EB8534F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1B377C9FC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v42[0] = a1;
  v10 = type metadata accessor for StoryColorGradeEditorSheetView();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + qword_1EB8534F0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v14 = [a1 mainModel];
  v15 = objc_allocWithZone(type metadata accessor for StoryColorGradeEditorViewModel());
  v16 = a3;
  v17 = a4;
  v18 = sub_1B386DCC8(v14, a2, v16, v17);
  v19 = qword_1EB8534E0;
  *(v5 + qword_1EB8534E0) = v18;
  v20 = objc_allocWithZone(type metadata accessor for StoryColorGradeEditorContentLayout());
  v21 = sub_1B37A1C30(v18);
  *(v5 + qword_1EB8534E8) = v21;
  v22 = *(v5 + v19);
  sub_1B377D5E4();
  v23 = v21;
  v24 = v22;
  *v13 = sub_1B3C9AA58();
  *(v13 + 1) = v25;
  *(v13 + 2) = v23;
  v42[1] = 0;
  v42[2] = 0;
  v43 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853510);
  sub_1B3C9BC88();
  v26 = v45;
  v27 = v46;
  *(v13 + 24) = v44;
  v13[40] = v26;
  *(v13 + 6) = v27;
  v28 = *(v11 + 36);
  *&v13[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851700);
  swift_storeEnumTagMultiPayload();
  v29 = sub_1B3C98DF8();

  v30 = qword_1EB8534E0;
  v31 = *&v29[qword_1EB8534E0];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = &v31[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectionHandler];
  v34 = *&v31[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectionHandler];
  *v33 = sub_1B377D63C;
  v33[1] = v32;
  v35 = v29;
  v36 = v31;

  sub_1B36F9DA0(v34);

  v37 = *&v29[v30];

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v39 = &v37[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_cancelHandler];
  v40 = *&v37[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_cancelHandler];
  *v39 = sub_1B377D644;
  v39[1] = v38;

  sub_1B36F9DA0(v40);

  return v35;
}

void sub_1B377CDC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1B3860EFC();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1B377CE40(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StoryColorGradeEditorViewController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 presentationController];
  v4 = [v3 delegate];

  if (v4)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = [v1 presentationController];
    if (v5)
    {
      v6 = v5;
      [v5 setDelegate_];
    }
  }
}

void sub_1B377CF08(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1B377CE40(a3);
}

id sub_1B377CF5C(void *a1)
{
  v1 = a1;
  v2 = sub_1B377CFA0();

  return v2;
}

id sub_1B377CFA0()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for StoryColorGradeEditorViewController();
  v2 = objc_msgSendSuper2(&v12, sel_traitCollection);
  v3 = [v1 presentingViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 traitCollection];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v8);
      v9 = v5;
      v10 = sub_1B3C9CCC8();

      return v10;
    }
  }

  else
  {
  }

  return v2;
}

uint64_t sub_1B377D0EC(uint64_t a1, id a2)
{
  [a2 horizontalSizeClass];
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  return sub_1B3C9A588();
}

double sub_1B377D154(void *a1)
{
  v1 = a1;
  sub_1B377D198();
  v3 = v2;

  return v3;
}

void sub_1B377D198()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for StoryColorGradeEditorViewController();
  objc_msgSendSuper2(&v11, sel_preferredContentSize);
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    v3 = [v0 viewIfLoaded];
    v4 = [v3 window];

    v5 = v4;
    if (v4)
    {
LABEL_3:
      v6 = v4;
      [v5 bounds];

      PXSizeGetAspectRatio();
      PFSizeWithAspectRatioFittingSize();

      return;
    }

    v7 = [v0 presentingViewController];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 view];

      if (!v9)
      {
        __break(1u);
        return;
      }

      v10 = [v9 window];

      if (v10)
      {
        v5 = v10;
        goto LABEL_3;
      }
    }
  }
}

void sub_1B377D334(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1B377D394(a2, a3);
}

id sub_1B377D394(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for StoryColorGradeEditorViewController();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

uint64_t sub_1B377D414()
{
  v1 = v0 + qword_1EB8534F0;

  return sub_1B370A71C(v1);
}

id sub_1B377D464()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryColorGradeEditorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B377D49C(uint64_t a1)
{
  v2 = a1 + qword_1EB8534F0;

  return sub_1B370A71C(v2);
}

void sub_1B377D52C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1B377D500();
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

unint64_t sub_1B377D5E4()
{
  result = qword_1EB851658;
  if (!qword_1EB851658)
  {
    type metadata accessor for StoryColorGradeEditorViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851658);
  }

  return result;
}

id sub_1B377D64C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_isVisible] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_activityIndicator] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_loadingLabel] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for PUPosterLoadingView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setUserInteractionEnabled_];

  return v9;
}

void sub_1B377D738()
{
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_isVisible) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_activityIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_loadingLabel) = 0;
  sub_1B3C9D4C8();
  __break(1u);
}

void sub_1B377D85C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_isVisible);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_isVisible) = a1;
  sub_1B377D874(v2);
}

void sub_1B377D874(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_isVisible) != (a1 & 1))
  {
    sub_1B377D894();
  }
}

void sub_1B377D894()
{
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_isVisible) == 1)
  {
    sub_1B377D8B0();
  }

  else
  {
    sub_1B377D9F4();
  }
}

void sub_1B377D8B0()
{
  sub_1B377DC08();
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_activityIndicator;
  v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_activityIndicator];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v2 startAnimating];
  v3 = *&v0[v1];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v3 setAlpha_];
  v4 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_loadingLabel];
  if (v4)
  {
    [v4 setAlpha_];
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v10[4] = sub_1B377E244;
    v10[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1B370C014;
    v10[3] = &block_descriptor_19_1;
    v6 = _Block_copy(v10);
    v7 = v0;

    v8 = OUTLINED_FUNCTION_2_16();
    [v8 v9];
    _Block_release(v6);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1B377D9F4()
{
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v13 = sub_1B377E214;
  v14 = v1;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1B370C014;
  v12 = &block_descriptor_18;
  v2 = _Block_copy(&v9);
  v3 = v0;

  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v13 = sub_1B377E23C;
  v14 = v4;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1B386A14C;
  v12 = &block_descriptor_13;
  v5 = _Block_copy(&v9);
  v6 = v3;

  v7 = OUTLINED_FUNCTION_2_16();
  [v7 v8];
  _Block_release(v5);
  _Block_release(v2);
}

id sub_1B377DB70(uint64_t a1, double a2)
{
  result = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_activityIndicator);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  [result setAlpha_];
  result = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_loadingLabel);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [result setAlpha_];
}

id sub_1B377DBE8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_activityIndicator);
  if (result)
  {
    return [result stopAnimating];
  }

  __break(1u);
  return result;
}

void sub_1B377DC08()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_activityIndicator;
  if (!*&v0[OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_activityIndicator])
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v2 setOverrideUserInterfaceStyle_];
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];

    [v0 addSubview_];
    v3 = *&v0[v1];
    *&v0[v1] = v2;
  }

  v4 = OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_loadingLabel;
  if (!*&v0[OBJC_IVAR____TtC15PhotosUIPrivate19PUPosterLoadingView_loadingLabel])
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v6 = sub_1B3C9C5A8();
    v7 = PULocalizedString(v6);

    v8 = sub_1B3C9C5E8();
    v10 = v9;

    sub_1B383C9E4(v8, v10, v5);
    v11 = [objc_opt_self() _preferredFontForTextStyle_weight_];
    v12 = OUTLINED_FUNCTION_2_16();
    [v12 v13];

    v14 = [objc_opt_self() whiteColor];
    v15 = OUTLINED_FUNCTION_2_16();
    [v15 v16];

    [v5 setTextAlignment_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];
    v17 = *&v0[v4];
    *&v0[v4] = v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B3CFC160;
  v19 = *&v0[v1];
  if (!v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = [v19 centerXAnchor];
  v21 = [v0 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v18 + 32) = v22;
  v23 = *&v0[v4];
  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = [v23 centerXAnchor];
  v25 = OUTLINED_FUNCTION_0_13([v0 centerXAnchor]);

  *(v18 + 40) = v25;
  v26 = *&v0[v1];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = [v26 topAnchor];
  v28 = OUTLINED_FUNCTION_0_13([v0 topAnchor]);

  *(v18 + 48) = v28;
  v29 = *&v0[v1];
  if (!v29)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v30 = [v29 bottomAnchor];
  v31 = *&v0[v4];
  if (!v31)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32 = [v31 topAnchor];
  v33 = [v30 constraintEqualToAnchor:v32 constant:-8.0];

  *(v18 + 56) = v33;
  v34 = *&v0[v4];
  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = [v34 bottomAnchor];
  v36 = OUTLINED_FUNCTION_0_13([v0 bottomAnchor]);

  *(v18 + 64) = v36;
  v37 = *&v0[v4];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = [v37 leadingAnchor];
  v39 = OUTLINED_FUNCTION_0_13([v0 leadingAnchor]);

  *(v18 + 72) = v39;
  v40 = *&v0[v4];
  if (!v40)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v41 = objc_opt_self();
  v42 = [v40 trailingAnchor];
  v43 = [v0 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v18 + 80) = v44;
  sub_1B377E1D0();
  v45 = sub_1B3C9C778();

  [v41 activateConstraints_];
}

id sub_1B377E12C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUPosterLoadingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B377E1D0()
{
  result = qword_1EB84FE50;
  if (!qword_1EB84FE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84FE50);
  }

  return result;
}

uint64_t sub_1B377E324()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1B377E424(void *a1)
{
  sub_1B37802BC();
  v3 = *(v1 + OBJC_IVAR___PUPickerSuggestionsView_selectedSuggestion);
  v4 = v3;
  v5 = a1;
  if (v3 == a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqual:v5];
  }

  return sub_1B3780208(v6);
}

void sub_1B377E4B0()
{
  v1 = OBJC_IVAR___PUPickerSuggestionsView_selectedSuggestion;
  v2 = sub_1B3C9C238();
  if (!swift_dynamicCastClass())
  {
    v3 = [objc_allocWithZone(v2) init];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    sub_1B377E424(v4);
  }
}

uint64_t sub_1B377E604(void *a1, void *a2, char a3, char a4, char a5)
{
  v6 = v5;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___PUPickerSuggestionsView_scrollView] = 0;
  *&v5[OBJC_IVAR___PUPickerSuggestionsView_stackView] = 0;
  v5[OBJC_IVAR___PUPickerSuggestionsView_needsRTLInitialOffsetCorrection] = 1;
  *&v5[OBJC_IVAR___PUPickerSuggestionsView_contentWidthConstraint] = 0;
  *&v5[OBJC_IVAR___PUPickerSuggestionsView_padding] = 0x4010000000000000;
  if (a5)
  {
    v12 = 0x10000;
  }

  else
  {
    v12 = 0;
  }

  if (a4)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  sub_1B379AD08(a1, v13 & 0xFFFFFFFE | a3 & 1 | v12);
  v15 = v14;
  *&v6[OBJC_IVAR___PUPickerSuggestionsView_photoLibrary] = a1;
  *&v6[OBJC_IVAR___PUPickerSuggestionsView_suggestionGroup] = a2;
  *&v6[OBJC_IVAR___PUPickerSuggestionsView_suggestions] = v14;
  v16 = &v6[OBJC_IVAR___PUPickerSuggestionsView_context];
  *v16 = a3;
  v16[1] = a4;
  v16[2] = a5;
  v17 = a1;
  v18 = a2;

  if ([v18 defaultSuggestion])
  {
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36[0] = v34;
  v36[1] = v35;
  if (!*(&v35 + 1))
  {

    sub_1B36FA490(v36);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB850CA0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_19:

LABEL_20:
    v20 = [objc_allocWithZone(sub_1B3C9C238()) init];
LABEL_21:
    *&v6[OBJC_IVAR___PUPickerSuggestionsView_selectedSuggestion] = v20;
    v33.receiver = v6;
    v33.super_class = type metadata accessor for PickerSuggestionsView();
    v25 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v26 = objc_opt_self();
    v27 = v25;
    v28 = [v26 clearColor];
    [v27 setBackgroundColor_];

    sub_1B377F0B0();
    sub_1B37802BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856820);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1B3CF6CE0;
    v30 = sub_1B3C9A5D8();
    v31 = MEMORY[0x1E69DC2B0];
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1B3710718(0, &unk_1EB84F790);
    sub_1B3C9CF48();

    swift_unknownObjectRelease();

    return v27;
  }

  v20 = v32;
  v21 = -*(v15 + 16);
  v22 = -1;
  v23 = 32;
  while (1)
  {
    if (v21 + v22 == -1)
    {

      goto LABEL_19;
    }

    if (++v22 >= *(v15 + 16))
    {
      break;
    }

    v24 = v23 + 16;
    result = [*(v15 + v23) isEqual_];
    v23 = v24;
    if (result)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

void sub_1B377E9C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR___PUPickerSuggestionsView_needsRTLInitialOffsetCorrection) = 1;
    [Strong setNeedsLayout];
  }
}

void sub_1B377EA9C()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___PUPickerSuggestionsView_scrollView) = 0;
  *(v0 + OBJC_IVAR___PUPickerSuggestionsView_stackView) = 0;
  *(v0 + OBJC_IVAR___PUPickerSuggestionsView_needsRTLInitialOffsetCorrection) = 1;
  *(v0 + OBJC_IVAR___PUPickerSuggestionsView_contentWidthConstraint) = 0;
  *(v0 + OBJC_IVAR___PUPickerSuggestionsView_padding) = 0x4010000000000000;
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B377EBAC()
{
  result = *(v0 + OBJC_IVAR___PUPickerSuggestionsView_scrollView);
  if (result)
  {
    return [result systemLayoutSizeFittingSize_];
  }

  __break(1u);
  return result;
}

void sub_1B377EBD8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PickerSuggestionsView();
  objc_msgSendSuper2(&v7, sel_layoutMarginsDidChange);
  v1 = *&v0[OBJC_IVAR___PUPickerSuggestionsView_scrollView];
  if (v1)
  {
    v2 = v1;
    [v0 layoutMargins];
    v4 = v3;
    [v0 layoutMargins];
    [v2 setContentInset_];

    v5 = *&v0[OBJC_IVAR___PUPickerSuggestionsView_contentWidthConstraint];
    if (v5)
    {
      v6 = v5;
      sub_1B377F044();
      [v6 setConstant_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B377ECFC()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for PickerSuggestionsView();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_1B377FA40();
}

void sub_1B377ED7C(uint64_t a1, uint64_t a2)
{
  sub_1B3710718(0, &qword_1EB853590);
  sub_1B37806A4();
  v4 = sub_1B3C9C968();
  v6.receiver = v2;
  v6.super_class = type metadata accessor for PickerSuggestionsView.SuggestionButton();
  objc_msgSendSuper2(&v6, sel_touchesBegan_withEvent_, v4, a2);

  v5 = [v2 superview];
  [v5 bringSubviewToFront_];
}

id sub_1B377EEE0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCC15PhotosUIPrivate21PickerSuggestionsViewP33_11154ED0F29460EA1888FE6F9EBCE59516SuggestionButton_suggestion] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PickerSuggestionsView.SuggestionButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1B377EF78(void *a1)
{
  *&v1[OBJC_IVAR____TtCC15PhotosUIPrivate21PickerSuggestionsViewP33_11154ED0F29460EA1888FE6F9EBCE59516SuggestionButton_suggestion] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PickerSuggestionsView.SuggestionButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1B377F044()
{
  v1 = OBJC_IVAR___PUPickerSuggestionsView_scrollView;
  result = *(v0 + OBJC_IVAR___PUPickerSuggestionsView_scrollView);
  if (result)
  {
    [result contentInset];
    result = *(v0 + v1);
    if (result)
    {
      return [result contentInset];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B377F0B0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  v3 = OBJC_IVAR___PUPickerSuggestionsView_scrollView;
  v4 = *&v0[OBJC_IVAR___PUPickerSuggestionsView_scrollView];
  *&v0[OBJC_IVAR___PUPickerSuggestionsView_scrollView] = v2;
  v5 = v2;

  if (!v5)
  {
    __break(1u);
    goto LABEL_43;
  }

  [v5 setShowsHorizontalScrollIndicator_];

  v6 = *&v1[v3];
  if (!v6)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = *&v1[v3];
  if (!v7)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v7 setClipsToBounds_];
  if (!*&v1[v3])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v1 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B3D001A0;
  v9 = *&v1[v3];
  if (!v9)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v10 = [v9 leadingAnchor];
  v11 = [v1 leadingAnchor];
  v12 = &selRef_componentsSeparatedByCharactersInSet_;
  v13 = OUTLINED_FUNCTION_2_17();

  *(v8 + 32) = v13;
  v14 = *&v1[v3];
  if (!v14)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v15 = [v14 trailingAnchor];
  v16 = [v1 trailingAnchor];
  v17 = OUTLINED_FUNCTION_2_17();

  *(v8 + 40) = v17;
  v18 = *&v1[v3];
  if (!v18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v19 = [v18 topAnchor];
  v20 = [v1 topAnchor];
  v21 = OUTLINED_FUNCTION_2_17();

  *(v8 + 48) = v21;
  v22 = *&v1[v3];
  if (!v22)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v23 = objc_opt_self();
  v24 = [v22 bottomAnchor];
  v25 = [v1 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v8 + 56) = v26;
  sub_1B3710718(0, &qword_1EB84FE50);
  v27 = sub_1B3C9C778();

  v94 = v23;
  [v23 activateConstraints_];

  v28 = *&v1[OBJC_IVAR___PUPickerSuggestionsView_suggestions];
  v29 = *(v28 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v96 = MEMORY[0x1E69E7CC0];
    v31 = v1;
    sub_1B3C9D428();
    v32 = 0;
    v12 = (v28 + 40);
    while (v32 < *(v28 + 16))
    {
      v32 = (v32 + 1);
      v33 = *v12;
      v34 = *(v12 - 1);
      sub_1B377FB94(v34, v33);

      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      sub_1B3C9D418();
      v12 += 2;
      if (v29 == v32)
      {

        v30 = v96;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v32 = &selRef_item;
    if (!(v30 >> 62))
    {

      sub_1B3C9D6B8();
      sub_1B3710718(0, &unk_1EB84F790);
      goto LABEL_16;
    }
  }

  sub_1B3710718(0, &unk_1EB84F790);

  sub_1B3C9D4D8();

LABEL_16:
  sub_1B3710718(0, &unk_1EB8535B0);
  v35 = sub_1B377F9B8();
  v36 = OBJC_IVAR___PUPickerSuggestionsView_stackView;
  v37 = *&v1[OBJC_IVAR___PUPickerSuggestionsView_stackView];
  *&v1[OBJC_IVAR___PUPickerSuggestionsView_stackView] = v35;
  v38 = v35;

  if (!v38)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v38 setDistribution_];

  v39 = *&v1[v36];
  if (!v39)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v39 setSpacing_];
  v40 = *&v1[v36];
  if (!v40)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  [v40 setAxis_];
  v41 = *&v1[v36];
  if (!v41)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v41 setAlignment_];
  v42 = *&v1[v36];
  if (!v42)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = *&v1[v36];
  if (!v43)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v43 setClipsToBounds_];
  v44 = *&v1[v3];
  if (!v44)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (!*&v1[v36])
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  [v44 addSubview_];
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1B3CFC370;
  v46 = *&v1[v36];
  if (!v46)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v47 = [v46 v32[239]];
  v48 = OUTLINED_FUNCTION_1_15();
  if (!v48)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v49 = [v48 contentLayoutGuide];
  v50 = [v49 v32[239]];

  v51 = OUTLINED_FUNCTION_0_14();
  v53 = [v51 v52];

  *(v45 + 32) = v53;
  v54 = *&v1[v36];
  if (!v54)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v55 = [v54 trailingAnchor];
  v56 = OUTLINED_FUNCTION_1_15();
  if (!v56)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v57 = [v56 contentLayoutGuide];
  v58 = [v57 trailingAnchor];

  v59 = OUTLINED_FUNCTION_0_14();
  v61 = [v59 v60];

  *(v45 + 40) = v61;
  v62 = *&v1[v36];
  if (!v62)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v63 = [v62 topAnchor];
  v64 = OUTLINED_FUNCTION_1_15();
  if (!v64)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v65 = [v64 contentLayoutGuide];
  v66 = [v65 topAnchor];

  v67 = OUTLINED_FUNCTION_0_14();
  v69 = [v67 v68];

  *(v45 + 48) = v69;
  v70 = *&v1[v36];
  if (!v70)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v71 = [v70 bottomAnchor];
  v72 = OUTLINED_FUNCTION_1_15();
  if (!v72)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v73 = [v72 contentLayoutGuide];
  v74 = [v73 bottomAnchor];

  v75 = OUTLINED_FUNCTION_0_14();
  v77 = [v75 v76];

  *(v45 + 56) = v77;
  v78 = *&v1[v36];
  if (!v78)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v79 = [v78 heightAnchor];
  v80 = OUTLINED_FUNCTION_1_15();
  if (!v80)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v81 = [v80 frameLayoutGuide];
  v82 = [v81 heightAnchor];

  v83 = OUTLINED_FUNCTION_0_14();
  v85 = [v83 v84];

  *(v45 + 64) = v85;
  v86 = sub_1B3C9C778();

  [v94 activateConstraints_];

  v87 = *&v1[v3];
  if (!v87)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v88 = [v87 contentLayoutGuide];
  v89 = [v88 widthAnchor];

  v90 = *&v1[v3];
  if (!v90)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v91 = [v90 widthAnchor];
  sub_1B377F044();
  v92 = [v89 constraintGreaterThanOrEqualToAnchor:v91 constant:?];

  v93 = *&v1[OBJC_IVAR___PUPickerSuggestionsView_contentWidthConstraint];
  *&v1[OBJC_IVAR___PUPickerSuggestionsView_contentWidthConstraint] = v92;
  v95 = v92;

  if (!v95)
  {
LABEL_70:
    __break(1u);
    return;
  }

  [v95 setActive_];
}

id sub_1B377F9B8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B3710718(0, &unk_1EB84F790);
  v1 = sub_1B3C9C778();

  v2 = [v0 initWithArrangedSubviews_];

  return v2;
}

void sub_1B377FA40()
{
  v1 = [v0 traitCollection];
  v2 = [v1 layoutDirection];

  if (v2 != 1)
  {
    return;
  }

  v3 = OBJC_IVAR___PUPickerSuggestionsView_needsRTLInitialOffsetCorrection;
  if (v0[OBJC_IVAR___PUPickerSuggestionsView_needsRTLInitialOffsetCorrection] != 1)
  {
    return;
  }

  v4 = OBJC_IVAR___PUPickerSuggestionsView_scrollView;
  v5 = *&v0[OBJC_IVAR___PUPickerSuggestionsView_scrollView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v5 contentSize];
  v8 = *&v0[v4];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v6;
  v10 = v7;
  [v8 bounds];
  Width = CGRectGetWidth(v20);
  v12 = *&v0[v4];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = Width;
  [v12 contentInset];
  if (v9 != 0.0 || v10 != 0.0)
  {
    v15 = *&v0[v4];
    if (v15)
    {
      v16 = v9 - v13 + v14;
      [v15 contentOffset];
      if (v16 == v17)
      {
        return;
      }

      v18 = *&v0[v4];
      if (v18)
      {
        v19 = v18;
        [v19 contentOffset];
        [v19 setContentOffset:0 animated:v16];

        v0[v3] = 0;
        return;
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

char *sub_1B377FB94(void *a1, uint64_t a2)
{
  v34 = sub_1B3C9D128();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  sub_1B3710718(0, &unk_1EB851C40);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v14 = a1;
  v15 = sub_1B3C9CFE8();
  sub_1B377FF48();
  swift_getObjectType();
  v16 = OUTLINED_FUNCTION_4_12();
  v17(v16);
  sub_1B3C9D118();
  v18 = OUTLINED_FUNCTION_4_12();
  v20 = v19(v18);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    v24 = objc_opt_self();
    if (sub_1B378070C(v22, v23, v24))
    {
    }

    else
    {
      v25 = sub_1B3C9C5A8();

      v26 = [v24 px:v25 imageNamed:?];
    }

    sub_1B3C9D0F8();
  }

  type metadata accessor for PickerSuggestionsView.SuggestionButton();
  v27 = v34;
  (*(v5 + 16))(v9, v11, v34);
  v28 = v15;
  v29 = sub_1B3C9D138();
  [v29 setPreferredBehavioralStyle_];

  (*(v5 + 8))(v11, v27);
  v30 = *&v29[OBJC_IVAR____TtCC15PhotosUIPrivate21PickerSuggestionsViewP33_11154ED0F29460EA1888FE6F9EBCE59516SuggestionButton_suggestion];
  *&v29[OBJC_IVAR____TtCC15PhotosUIPrivate21PickerSuggestionsViewP33_11154ED0F29460EA1888FE6F9EBCE59516SuggestionButton_suggestion] = v14;
  v31 = v14;

  return v29;
}

void sub_1B377FED0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getObjectType();
    sub_1B37807BC(a3, v5);
  }
}

uint64_t sub_1B377FF48()
{
  v1 = sub_1B3C9D028();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8535A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = [v0 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 6)
  {
    sub_1B3C9D108();
  }

  else
  {
    sub_1B3C9D0E8();
  }

  sub_1B3C9A5F8();
  v12 = sub_1B3C9A5E8();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
  sub_1B3C9D0B8();
  v13 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDD80] scale:1];
  sub_1B3C9CFF8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69DC508], v1);
  sub_1B3C9D038();
  sub_1B3C9D048();
  sub_1B3C9D078();
  return sub_1B3C9D098();
}

uint64_t sub_1B3780154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B3C97E08();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() preferredFontForTextStyle_];
  sub_1B378075C();
  return sub_1B3C97E18();
}

void *sub_1B3780208(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = result;
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    [result pickerSuggestionsViewDidSelectSameSuggestion_];
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = *(v1 + OBJC_IVAR___PUPickerSuggestionsView_selectedSuggestion);
    [v4 pickerSuggestionsView:v1 didSelectSuggestion:v5];
  }

  return swift_unknownObjectRelease();
}

void sub_1B37802BC()
{
  v1 = *(v0 + OBJC_IVAR___PUPickerSuggestionsView_stackView);
  if (v1)
  {
    v2 = [v1 arrangedSubviews];
    sub_1B3710718(0, &unk_1EB84F790);
    v3 = sub_1B3C9C788();

    v4 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    v5 = sub_1B3711890(v3);
    v6 = 0;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B8C6A930](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      type metadata accessor for PickerSuggestionsView.SuggestionButton();
      if (swift_dynamicCastClass())
      {
        MEMORY[0x1B8C69CE0]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B3C9C7E8();
        }

        sub_1B3C9C808();
        v4 = v21;
        ++v6;
      }

      else
      {

        ++v6;
      }
    }

    v9 = sub_1B3711890(v4);
    if (v9)
    {
      v10 = v9;
      if (v9 < 1)
      {
        goto LABEL_29;
      }

      v11 = 0;
      v12 = OBJC_IVAR___PUPickerSuggestionsView_selectedSuggestion;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1B8C6A930](v11, v4);
        }

        else
        {
          v13 = *(v4 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = *(v20 + v12);
        v16 = *&v13[OBJC_IVAR____TtCC15PhotosUIPrivate21PickerSuggestionsViewP33_11154ED0F29460EA1888FE6F9EBCE59516SuggestionButton_suggestion];
        v17 = v15;
        v18 = v16;
        if (v15 == v16)
        {
          v19 = 1;
        }

        else
        {
          v19 = [v17 isEqual:v18];
        }

        ++v11;

        [v14 setSelected_];
      }

      while (v10 != v11);
    }
  }

  else
  {
LABEL_30:
    __break(1u);
  }
}

id sub_1B3780578(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1B37806A4()
{
  result = qword_1EB853598;
  if (!qword_1EB853598)
  {
    sub_1B3710718(255, &qword_1EB853590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853598);
  }

  return result;
}

id sub_1B378070C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();
  v5 = [a3 px:v4 systemImageNamed:?];

  return v5;
}

unint64_t sub_1B378075C()
{
  result = qword_1EB8535A8;
  if (!qword_1EB8535A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8535A8);
  }

  return result;
}

void sub_1B37807BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___PUPickerSuggestionsView_selectedSuggestion);
  *(a2 + OBJC_IVAR___PUPickerSuggestionsView_selectedSuggestion) = a1;
  sub_1B377E424(v2);
}

id OUTLINED_FUNCTION_2_17()
{

  return [v0 (v2 + 3941)];
}

uint64_t type metadata accessor for StoryMusicEditorSongsCollectionRowView()
{
  result = qword_1EB8535C8;
  if (!qword_1EB8535C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B37808AC()
{
  sub_1B3780B40();
  if (v0 <= 0x3F)
  {
    sub_1B3780C2C(319, &qword_1EB8535E8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1B3780BD4();
      if (v2 <= 0x3F)
      {
        sub_1B3780C7C(319, &qword_1EB8535F8, &qword_1EB853600, &unk_1B3D00250, MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1B3780C7C(319, &qword_1EB853608, &qword_1EB853600, &unk_1B3D00250, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1B3780C2C(319, &qword_1EB853610, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1B3780C7C(319, &qword_1EB853618, &qword_1EB853620, &unk_1B3CFC310, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1B3780C7C(319, &qword_1EB851660, &qword_1EB853510, &unk_1B3CF9FC0, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1B3780C7C(319, &qword_1EB853628, &qword_1EB853630, &unk_1B3D00258, MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    sub_1B3780C7C(319, &qword_1EB851668, &qword_1EB852490, &unk_1B3D00260, MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B3780B40()
{
  if (!qword_1EB8535D8)
  {
    type metadata accessor for StoryMusicEditorSongCollectionViewModel();
    sub_1B378817C(&qword_1EB8535E0, type metadata accessor for StoryMusicEditorSongCollectionViewModel);
    v0 = sub_1B3C9AA88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8535D8);
    }
  }
}

void sub_1B3780BD4()
{
  if (!qword_1EB8535F0)
  {
    sub_1B3C98248();
    v0 = sub_1B3C9BCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8535F0);
    }
  }
}

void sub_1B3780C2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B3780C7C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B3780CFC()
{
  OUTLINED_FUNCTION_39();
  v1 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853638);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  *v9 = sub_1B3C9B008();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853640);
  sub_1B3780F10(v0, &v9[*(v10 + 44)]);
  sub_1B37868B8(v0, v5);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1B378691C(v5, v12 + v11);
  v13 = &v9[*(v6 + 36)];
  *v13 = sub_1B3786980;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v14 = v0 + *(v2 + 56);
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  v17 = *v14;
  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853650);
  sub_1B3C9BCB8();
  sub_1B3786998();
  sub_1B3C9B7D8();
  *&v17 = v20;
  sub_1B371CB0C(&v17);

  sub_1B3787878(v9, &qword_1EB853638);
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B3780F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853670);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853678);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  *v7 = sub_1B3C9AF18();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853680);
  sub_1B37858E8(a1, &v7[*(v14 + 44)]);
  v15 = sub_1B3C9B4F8();
  v16 = *(a1 + *(v3 + 40) + 8);
  v17 = 0uLL;
  v18 = 0uLL;
  if ((v16 & 1) == 0)
  {
    sub_1B3C9A738();
    *(&v18 + 1) = v19;
    *(&v17 + 1) = v20;
  }

  v37 = v18;
  v38 = v17;
  sub_1B3786B94(v7, v13, &qword_1EB853670);
  v21 = &v13[*(v8 + 36)];
  *v21 = v15;
  v22 = v38;
  *(v21 + 24) = v37;
  *(v21 + 8) = v22;
  v21[40] = v16;
  v23 = a1 + *(v3 + 48);
  v24 = *(v23 + 16);
  v25 = *(v23 + 24);
  v43 = *v23;
  v44 = v24;
  v45 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853650);
  sub_1B3C9BC98();
  if (v42)
  {
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v28 = v40;
    v29 = v41;
    sub_1B37868B8(a1, &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v27 = swift_allocObject();
    sub_1B378691C(&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v30);
    v31 = (v27 + ((v4 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = v28;
    v31[1] = v29;

    v26 = sub_1B3786A50;
  }

  sub_1B371B31C(v13, v10, &qword_1EB853678);
  v32 = v39;
  sub_1B371B31C(v10, v39, &qword_1EB853678);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853688) + 48));
  sub_1B370A6FC(v26);
  sub_1B36F9DA0(v26);
  *v33 = v26;
  v33[1] = v27;
  sub_1B3787878(v13, &qword_1EB853678);
  sub_1B36F9DA0(v26);
  return sub_1B3787878(v10, &qword_1EB853678);
}

uint64_t sub_1B37812A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_1B3C9B478();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B37813F4(a4, a5);
  sub_1B3781B68(v14 & 1);
  sub_1B3781C90();
  v16 = v15;
  *a3 = sub_1B3C9AF18();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853690);
  sub_1B3781D34(a2, a1, v13, (a3 + *(v17 + 44)), v16);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1B37813F4(double a1, double a2)
{
  v5 = sub_1B3C9B348();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853810);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852490);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v46 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v53 = &v44[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v54 = &v44[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v44[-v21];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v44[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v44[-v26];
  v50 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v52 = v2;
  sub_1B37CA04C();
  v28 = *MEMORY[0x1E697FF38];
  v56 = v6;
  v29 = *(v6 + 104);
  v49 = v28;
  v48 = v29;
  v29(v25);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
  v51 = v8;
  v30 = *(v8 + 48);
  sub_1B371B31C(v27, v12, &qword_1EB852490);
  sub_1B371B31C(v25, &v12[v30], &qword_1EB852490);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) != 1)
  {
    sub_1B371B31C(v12, v22, &qword_1EB852490);
    if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v5) != 1)
    {
      v31 = v56;
      v32 = v47;
      (*(v56 + 32))(v47, &v12[v30], v5);
      sub_1B378817C(&qword_1EB84F8F0, MEMORY[0x1E697FF50]);
      v45 = sub_1B3C9C528();
      v33 = *(v31 + 8);
      v33(v32, v5);
      sub_1B3787878(v25, &qword_1EB852490);
      sub_1B3787878(v27, &qword_1EB852490);
      v33(v22, v5);
      sub_1B3787878(v12, &qword_1EB852490);
      if ((v45 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_1B3787878(v25, &qword_1EB852490);
    sub_1B3787878(v27, &qword_1EB852490);
    (*(v56 + 8))(v22, v5);
LABEL_6:
    sub_1B3787878(v12, &unk_1EB853810);
    goto LABEL_9;
  }

  sub_1B3787878(v25, &qword_1EB852490);
  sub_1B3787878(v27, &qword_1EB852490);
  if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B3787878(v12, &qword_1EB852490);
LABEL_8:
  if (a2 < a1)
  {
LABEL_15:
    v38 = 0;
    return v38 & 1;
  }

LABEL_9:
  v34 = v54;
  sub_1B37CA04C();
  v35 = v53;
  v48(v53, v49, v5);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v5);
  v36 = *(v51 + 48);
  v37 = v55;
  sub_1B371B31C(v34, v55, &qword_1EB852490);
  sub_1B371B31C(v35, &v37[v36], &qword_1EB852490);
  if (__swift_getEnumTagSinglePayload(v37, 1, v5) != 1)
  {
    v39 = v46;
    sub_1B371B31C(v37, v46, &qword_1EB852490);
    if (__swift_getEnumTagSinglePayload(&v37[v36], 1, v5) != 1)
    {
      v40 = v56;
      v41 = v47;
      (*(v56 + 32))(v47, &v37[v36], v5);
      sub_1B378817C(&qword_1EB84F8F0, MEMORY[0x1E697FF50]);
      v38 = sub_1B3C9C528();
      v42 = *(v40 + 8);
      v42(v41, v5);
      sub_1B3787878(v35, &qword_1EB852490);
      sub_1B3787878(v34, &qword_1EB852490);
      v42(v39, v5);
      sub_1B3787878(v37, &qword_1EB852490);
      return v38 & 1;
    }

    sub_1B3787878(v35, &qword_1EB852490);
    sub_1B3787878(v34, &qword_1EB852490);
    (*(v56 + 8))(v39, v5);
    goto LABEL_14;
  }

  sub_1B3787878(v35, &qword_1EB852490);
  sub_1B3787878(v34, &qword_1EB852490);
  if (__swift_getEnumTagSinglePayload(&v37[v36], 1, v5) != 1)
  {
LABEL_14:
    sub_1B3787878(v37, &unk_1EB853810);
    goto LABEL_15;
  }

  sub_1B3787878(v37, &qword_1EB852490);
  v38 = 1;
  return v38 & 1;
}

uint64_t sub_1B3781B68(char a1)
{
  v2 = sub_1B3C9B458();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  if (a1)
  {
    sub_1B3C9B438();
  }

  else
  {
    sub_1B3C9B448();
  }

  (*(v3 + 16))(v6, v8, v2);
  sub_1B3C9B468();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1B3781D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v179 = a3;
  v189 = a2;
  v167 = a4;
  v7 = sub_1B3C9B3D8();
  v182 = *(v7 - 8);
  v183 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v180 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1B3C9B318();
  v152 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v149 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853698);
  v147 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v146 = &v142 - v10;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8536A0);
  v150 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v148 = &v142 - v11;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8536A8);
  v156 = *(v168 - 1);
  MEMORY[0x1EEE9AC00](v168);
  v153 = &v142 - v12;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8536B0);
  v158 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v14 = &v142 - v13;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8536B8);
  v162 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v171 = &v142 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8536C0);
  v165 = *(v16 - 8);
  v166 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v163 = &v142 - v17;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8536C8);
  v18 = MEMORY[0x1EEE9AC00](v161);
  v177 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v160 = &v142 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v176 = &v142 - v22;
  v188 = sub_1B3C9AB48();
  v190 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v185 = v23;
  v187 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v181 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v184 = v24;
  v186 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B3C98248();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  v143 = v26;
  v144 = v27;
  v142 = v29;
  v157 = v14;
  if (v30 == 1)
  {
    v31 = *(a1 + 32);
    LOBYTE(v203) = *(a1 + 24);
    v204 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FC8);
    sub_1B3C9BC98();
    if (v193 == 1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8535C0), sub_1B3C9BC98(), v32 = sub_1B3C98228(), (*(v26 + 8))(v29, v25), (v32 & 1) == 0))
    {
      v175 = 0x3FF0000000000000;
    }

    else
    {
      v175 = 0;
    }

    v37 = v186;
    sub_1B37868B8(a1, v186);
    v38 = v190;
    v40 = v187;
    v39 = v188;
    (*(v190 + 16))(v187, v189, v188);
    v41 = (*(v181 + 80) + 16) & ~*(v181 + 80);
    v42 = (v184 + *(v38 + 80) + v41) & ~*(v38 + 80);
    v43 = swift_allocObject();
    sub_1B378691C(v37, v43 + v41);
    v44 = *(v38 + 32);
    v174 = v43;
    v44(v43 + v42, v40, v39);
    LOBYTE(v41) = sub_1B3C9B538();
    sub_1B3C9A738();
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    LOBYTE(v203) = 0;
    v172 = sub_1B3786CC4;
    v173 = v41;
  }

  else
  {
    v174 = 0;
    v175 = 0;
    v172 = 0;
    v173 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  v49 = sub_1B37EE550();
  v50 = sub_1B3711890(v49);
  v51 = v50 / 3;
  v159 = v30;
  if (v50 != 3 * (v50 / 3))
  {
    ++v51;
  }

  if (v30 & 1) != 0 || (v52 = a1 + *(v170 + 40), (*(v52 + 8)))
  {
    v53 = 0;
  }

  else
  {
    v53 = *v52;
  }

  v54 = sub_1B3C9B4B8();
  MEMORY[0x1EEE9AC00](v54);
  v145 = v51;
  *(&v142 - 6) = v51;
  *(&v142 - 5) = 3;
  *(&v142 - 4) = v49;
  *(&v142 - 3) = v50;
  *(&v142 - 2) = a1;
  *(&v142 - 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8536D0);
  v178 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8536D8);
  v56 = sub_1B3787F14(&qword_1EB8536E0, &qword_1EB8536D8);
  v203 = v55;
  v204 = v56;
  swift_getOpaqueTypeConformance2();
  v57 = v146;
  sub_1B3C9A7A8();

  v58 = sub_1B3C9B4F8();
  v59 = v149;
  sub_1B3C9B308();
  v60 = sub_1B3787F14(&qword_1EB8536E8, &qword_1EB853698);
  v61 = v148;
  v62 = v151;
  MEMORY[0x1B8C68E80](v58, v53, 0, v59, v151, v60);
  (*(v152 + 8))(v59, v154);
  (*(v147 + 8))(v57, v62);
  v63 = sub_1B3C9B478();
  v203 = v62;
  v204 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = MEMORY[0x1E697CC08];
  v66 = v153;
  v67 = v155;
  sub_1B3C9B9F8();
  (*(v150 + 8))(v61, v67);
  v68 = v180;
  sub_1B3C9B1C8();
  sub_1B3C9B4B8();
  v203 = v67;
  v204 = v63;
  v205 = OpaqueTypeConformance2;
  v206 = v65;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v157;
  v71 = v168;
  v152 = v69;
  sub_1B3C9B958();
  (*(v182 + 8))(v68, v183);
  v72 = v71;
  v73 = v178;
  (v156)[1](v66, v72);
  v74 = (v73 + *(v170 + 32));
  v75 = *v74;
  v76 = v74[1];
  v77 = v74[2];
  v155 = v76;
  v156 = v75;
  v203 = v75;
  v204 = v76;
  v154 = v77;
  v205 = v77;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8536F0);
  MEMORY[0x1B8C69360](&v193);
  v78 = v193;
  if (v193)
  {
    v79 = [v193 identifier];
    swift_unknownObjectRelease();
    v78 = sub_1B3C9C5E8();
    v81 = v80;
  }

  else
  {
    v81 = 0;
  }

  v203 = v78;
  v204 = v81;
  v82 = v186;
  sub_1B37868B8(v73, v186);
  v83 = v190;
  v85 = v187;
  v84 = v188;
  v182 = *(v190 + 16);
  v183 = v190 + 16;
  (v182)(v187, v189, v188);
  v86 = *(v181 + 80);
  v87 = (v86 + 16) & ~v86;
  v88 = *(v83 + 80);
  v89 = (v184 + v88 + v87) & ~v88;
  v181 = v86 | v88;
  v179 = v89 + v185;
  v90 = swift_allocObject();
  v185 = v87;
  sub_1B378691C(v82, v90 + v87);
  v91 = *(v83 + 32);
  v184 = v89;
  v190 = v83 + 32;
  v180 = v91;
  (v91)(v90 + v89, v85, v84);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854010);
  v193 = v168;
  v194 = v152;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = sub_1B3786B00();
  v95 = v169;
  v152 = v93;
  v168 = v94;
  sub_1B3C9BAC8();

  (*(v158 + 8))(v70, v95);
  v203 = v156;
  v204 = v155;
  v205 = v154;
  MEMORY[0x1B8C69360](&v193, v153);
  v96 = v193;
  if (v193)
  {
    v97 = [v193 identifier];
    swift_unknownObjectRelease();
    v96 = sub_1B3C9C5E8();
    v99 = v98;
  }

  else
  {
    v99 = 0;
  }

  v158 = v99;
  v193 = v96;
  v194 = v99;
  v100 = v178;
  v101 = v186;
  sub_1B37868B8(v178, v186);
  v103 = v187;
  v102 = v188;
  (v182)(v187, v189, v188);
  v104 = swift_allocObject();
  sub_1B378691C(v101, v104 + v185);
  (v180)(v104 + v184, v103, v102);
  v203 = v169;
  v204 = v92;
  v205 = v152;
  v206 = v168;
  swift_getOpaqueTypeConformance2();
  v105 = v163;
  v106 = v164;
  v107 = v171;
  sub_1B3C9BAC8();

  (*(v162 + 8))(v107, v106);
  sub_1B37868B8(v100, v101);
  (v182)(v103, v189, v102);
  v108 = swift_allocObject();
  sub_1B378691C(v101, v108 + v185);
  (v180)(v108 + v184, v103, v102);
  v109 = v160;
  (*(v165 + 32))(v160, v105, v166);
  v110 = (v109 + *(v161 + 36));
  *v110 = sub_1B3786B7C;
  v110[1] = v108;
  v110[2] = 0;
  v110[3] = 0;
  sub_1B3786B94(v109, v176, &qword_1EB8536C8);
  if (v159)
  {
    v111 = *(v100 + 32);
    LOBYTE(v203) = *(v100 + 24);
    v204 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FC8);
    sub_1B3C9BC98();
    v112 = v145;
    if (v193 == 1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8535C0), v113 = v142, sub_1B3C9BC98(), v114 = sub_1B3C98228(), (*(v143 + 8))(v113, v144), (v114 & 1) == 0))
    {
      v115 = 0x3FF0000000000000;
    }

    else
    {
      v115 = 0;
    }

    v123 = v186;
    sub_1B37868B8(v100, v186);
    v125 = v187;
    v124 = v188;
    (v182)(v187, v189, v188);
    v126 = (v179 + 7) & 0xFFFFFFFFFFFFFFF8;
    v127 = swift_allocObject();
    sub_1B378691C(v123, v127 + v185);
    (v180)(v127 + v184, v125, v124);
    v189 = v127;
    *(v127 + v126) = v112;
    LOBYTE(v126) = sub_1B3C9B558();
    sub_1B3C9A738();
    v119 = v128;
    v120 = v129;
    v121 = v130;
    v122 = v131;
    LOBYTE(v203) = 0;
    v190 = v126;
    v117 = sub_1B3786BE4;
    v118 = 1;
    v116 = v115;
  }

  else
  {
    v116 = 0;
    v117 = 0;
    v189 = 0;
    v190 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = 0;
  }

  v133 = v176;
  v132 = v177;
  sub_1B371B31C(v176, v177, &qword_1EB8536C8);
  v191[0] = 0;
  v191[1] = v175;
  v191[2] = v172;
  v191[3] = v174;
  v191[4] = v173;
  v191[5] = v33;
  v191[6] = v34;
  v191[7] = v35;
  v191[8] = v36;
  LOBYTE(v191[9]) = 0;
  v134 = v167;
  memcpy(v167, v191, 0x49uLL);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853708);
  sub_1B371B31C(v132, &v134[*(v135 + 48)], &qword_1EB8536C8);
  v136 = *(v135 + 64);
  v192[0] = v118;
  v192[1] = v116;
  v137 = v118;
  v138 = v189;
  v192[2] = v117;
  v192[3] = v189;
  v139 = v117;
  v140 = v190;
  v192[4] = v190;
  v192[5] = v119;
  v192[6] = v120;
  v192[7] = v121;
  v192[8] = v122;
  LOBYTE(v192[9]) = 0;
  memcpy(&v134[v136], v192, 0x49uLL);
  sub_1B371B31C(v191, &v203, &unk_1EB853710);
  sub_1B371B31C(v192, &v203, &unk_1EB853710);
  sub_1B3787878(v133, &qword_1EB8536C8);
  v193 = v137;
  v194 = v116;
  v195 = v139;
  v196 = v138;
  v197 = v140;
  v198 = v119;
  v199 = v120;
  v200 = v121;
  v201 = v122;
  v202 = 0;
  sub_1B3787878(&v193, &unk_1EB853710);
  sub_1B3787878(v177, &qword_1EB8536C8);
  v203 = 0;
  v204 = v175;
  v205 = v172;
  v206 = v174;
  v207 = v173;
  v208 = v33;
  v209 = v34;
  v210 = v35;
  v211 = v36;
  v212 = 0;
  return sub_1B3787878(&v203, &unk_1EB853710);
}

uint64_t sub_1B3783088(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B3C98248();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8535C0);
  sub_1B3C9BC98();
  v7 = sub_1B37831FC();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v11[-16] = a2;
    *&v11[-8] = v7;
    sub_1B3C9C058();
    sub_1B3C9A9D8();
  }

  return result;
}

uint64_t sub_1B37831FC()
{
  v1 = sub_1B3C981D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B3C98248();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853720);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  (*(v6 + 16))(v8, v0, v5);
  v12 = MEMORY[0x1E6969B50];
  sub_1B378817C(&unk_1EB855400, MEMORY[0x1E6969B50]);
  sub_1B3C9C738();
  sub_1B378817C(&unk_1EB853730, v12);
  sub_1B3C9C9D8();
  v24 = sub_1B378817C(&unk_1EB855410, MEMORY[0x1E6969B18]);
  v13 = sub_1B3C9C528();
  v14 = *(v2 + 8);
  v25 = v2 + 8;
  v14(v4, v1);
  v15 = 0;
  if ((v13 & 1) == 0)
  {
    v23[3] = v13;
    v16 = sub_1B3C9C9F8();
    v15 = *v17;
    v16(v26, 0);
    sub_1B3C9C9E8();
    while (1)
    {
      sub_1B3C9C9D8();
      v18 = sub_1B3C9C528();
      v14(v4, v1);
      if (v18)
      {
        break;
      }

      v19 = sub_1B3C9C9F8();
      v21 = *v20;
      v19(v26, 0);
      sub_1B3C9C9E8();
      if (v21 < v15)
      {
        v15 = v21;
      }
    }
  }

  sub_1B3787878(v11, &unk_1EB853720);
  return v15;
}

uint64_t sub_1B37835B0(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B3C9C108();
    return sub_1B3C9AB38();
  }

  return result;
}

uint64_t sub_1B378361C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v18[0] = a5;
  v18[1] = a6;
  v12 = sub_1B3C9B2C8();
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8536D8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v18 - v15;
  sub_1B3C9AF08();
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v18[0];
  *&v18[9] = a7;
  v19 = 0;
  sub_1B378817C(&qword_1EB853FE0, MEMORY[0x1E697FCB0]);
  sub_1B3C9D858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853750);
  sub_1B37871E0();
  sub_1B3C9A748();
  sub_1B3787F14(&qword_1EB8536E0, &qword_1EB8536D8);
  sub_1B3C9B9C8();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1B3783868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x1EEE9AC00](v12 - 8);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v18[0] = 0;
    v18[1] = a1;
    swift_getKeyPath();
    sub_1B37868B8(a5, v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a3;
    v17[4] = a4;
    sub_1B378691C(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    *(v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8537A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853768);
    sub_1B3776650();
    sub_1B3787290(&qword_1EB853760, &qword_1EB853768, &unk_1B3D00388, sub_1B3787310);
    return sub_1B3C9BE88();
  }

  return result;
}

uint64_t sub_1B3783A64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  *a6 = sub_1B3C9AFF8();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v17 = v16 * a2;
  if ((v16 * a2) >> 64 != (v16 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v18 * a2) >> 64 != (v18 * a2) >> 63)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18 * a2 < a4)
  {
    a4 = v18 * a2;
  }

  if (a4 < v17)
  {
    goto LABEL_23;
  }

  if (sub_1B3711890(a3) < v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v17 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_1B3711890(a3);
  if (result < a4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v50 = a6;
  if ((a3 & 0xC000000000000001) == 0 || v17 == a4)
  {

    goto LABEL_17;
  }

  if (v17 < a4)
  {
    type metadata accessor for StorySongViewModel();

    v20 = v16 * a2;
    do
    {
      v21 = v20 + 1;
      sub_1B3C9D3A8();
      v20 = v21;
    }

    while (a4 != v21);
LABEL_17:
    v49 = v16;
    if (!(a3 >> 62))
    {
      v22 = a3 & 0xFFFFFFFFFFFFFF8;
      v23 = v22 + 32;
      v24 = (2 * a4) | 1;
LABEL_19:
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8537B8) + 44);
      *&v55 = v22;
      *(&v55 + 1) = v23;
      *&v56 = v17;
      *(&v56 + 1) = v24;
      sub_1B37868B8(a5, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = *(v13 + 80);
      v48 = a5;
      v26 = swift_allocObject();
      v26[2] = v22;
      v26[3] = v23;
      v26[4] = v17;
      v26[5] = v24;
      sub_1B378691C(&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + ((v25 + 48) & ~v25));
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8537C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8537C8);
      sub_1B3787F14(&qword_1EB8537D0, &qword_1EB8537C0);
      v46 = v14;
      v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8537D8);
      v28 = sub_1B3C9AB68();
      v29 = sub_1B3787F14(&unk_1EB8537E0, &qword_1EB8537D8);
      v30 = sub_1B378817C(&unk_1EB854060, MEMORY[0x1E697C248]);
      v51 = v27;
      v52 = v28;
      v53 = v29;
      v54 = v30;
      swift_getOpaqueTypeConformance2();
      sub_1B378817C(&unk_1EB8537F0, type metadata accessor for StorySongViewModel);
      v31 = v50;
      sub_1B3C9BE98();
      sub_1B3C9C008();
      sub_1B3C9A8D8();
      v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853788) + 36));
      v33 = v56;
      *v32 = v55;
      v32[1] = v33;
      v32[2] = v57;
      v34 = v48;
      sub_1B37868B8(v48, v15);
      v35 = (v25 + 16) & ~v25;
      v36 = (v46 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      sub_1B378691C(v15, v37 + v35);
      v38 = v49;
      *(v37 + v36) = v49;
      v39 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853778) + 36));
      *v39 = sub_1B3787508;
      v39[1] = v37;
      v39[2] = 0;
      v39[3] = 0;
      sub_1B37868B8(v34, v15);
      v40 = swift_allocObject();
      sub_1B378691C(v15, v40 + v35);
      *(v40 + v36) = v38;
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853768);
      v41 = (v31 + *(result + 36));
      *v41 = 0;
      v41[1] = 0;
      v41[2] = sub_1B37876F8;
      v41[3] = v40;
      return result;
    }

LABEL_27:

    v22 = sub_1B3C9D4F8();
    v23 = v42;
    v17 = v43;
    v24 = v44;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B3783FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a6;
  v34 = a7;
  v12 = sub_1B3C9AB68();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v31 = *(v15 - 8);
  v16 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8537D8);
  v17 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v19 = &v31 - v18;
  v20 = *a1;
  v21 = sub_1B3784388(a2, a3, a4, a5);
  if (v21)
  {
    if (*(v20 + 32) == *(v21 + 32) && *(v20 + 40) == *(v21 + 40))
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_1B3C9D6A8();
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = v33;
  sub_1B37868B8(v33, &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v26 = swift_allocObject();
  v27 = sub_1B378691C(&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  *(v26 + ((v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  MEMORY[0x1EEE9AC00](v27);
  *(&v31 - 4) = v20;
  *(&v31 - 3) = v24;
  *(&v31 - 16) = v23 & 1;
  sub_1B37877C4();

  sub_1B3C9BCE8();
  sub_1B3C9AB58();
  sub_1B3787F14(&unk_1EB8537E0, &qword_1EB8537D8);
  sub_1B378817C(&unk_1EB854060, MEMORY[0x1E697C248]);
  v28 = v32;
  v29 = v36;
  sub_1B3C9B858();
  (*(v35 + 8))(v14, v29);
  return (*(v17 + 8))(v19, v28);
}

uint64_t sub_1B3784388(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  if ((a4 >> 1) > a3)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37843C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853740);
  result = sub_1B3C9BCA8();
  if (v3)
  {
    v6 = *(a1 + *(v4 + 44));
    if (v6)
    {
      v7 = swift_unknownObjectRetain();
      v6(v7);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1B3784480@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = a2 + *(v11 + 40);
  v15 = *v14;
  v16 = *(v14 + 16);
  v46 = v15;
  v47 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8536F0);
  MEMORY[0x1B8C69360](v44, v17);
  v18 = v44[0];
  if (v44[0])
  {
    v42 = v9;
    v43 = a3;
    v19 = [v44[0] identifier];
    swift_unknownObjectRelease();
    v20 = sub_1B3C9C5E8();
    v22 = v21;

    if (v12 == v20 && v13 == v22)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1B3C9D6A8();
    }

    LOBYTE(a3) = v43;
    v9 = v42;
  }

  sub_1B37868B8(a2, &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  sub_1B378691C(&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);

  sub_1B3C9A708();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  type metadata accessor for StorySongViewModel();
  sub_1B378817C(&unk_1EB853800, type metadata accessor for StorySongViewModel);

  v34 = sub_1B3C9AA58();
  v36 = v35;
  v37 = sub_1B3C9B6C8();
  v44[0] = 0;
  v44[1] = 0;
  v45 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854070);
  sub_1B3C9BC88();
  v38 = v47;
  v39 = v48;
  result = v46;
  *a4 = v34;
  *(a4 + 8) = v36;
  *(a4 + 16) = v18 & 1;
  *(a4 + 17) = (a3 & 1) == 0;
  *(a4 + 18) = v44[0];
  *(a4 + 22) = WORD2(v44[0]);
  *(a4 + 24) = v27;
  *(a4 + 32) = v29;
  *(a4 + 40) = v31;
  *(a4 + 48) = v33;
  *(a4 + 56) = xmmword_1B3D00200;
  *(a4 + 72) = sub_1B3787818;
  *(a4 + 80) = v25;
  *(a4 + 88) = v37;
  *(a4 + 96) = result;
  *(a4 + 112) = v38;
  *(a4 + 116) = *(v46.n128_u32 + 3);
  *(a4 + 113) = v46.n128_u32[0];
  *(a4 + 120) = v39;
  return result;
}

uint64_t sub_1B378478C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v4 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
    v5 = (a2 + *(v4 + 32));
    v6 = *v5;
    v7 = *(v5 + 2);
    v12 = v6;
    v13 = v7;
    swift_unknownObjectRetain();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8536F0);
    MEMORY[0x1B8C69360](&v11, v8);
    v9 = [v2 isEqual_];
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = *(a2 + *(v4 + 44));
      if (v10)
      {
        v10(0);
      }
    }

    sub_1B37EF088(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B3784874(uint64_t a1)
{
  v2 = sub_1B3C98248();
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  if (*(a1 + 16) == 1)
  {
    type metadata accessor for StoryMusicEditorSongsCollectionRowView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8535C0);
    sub_1B3C9BC98();
    sub_1B3C981F8();
    return sub_1B3C9BCA8();
  }

  return result;
}

uint64_t sub_1B3784948(uint64_t a1)
{
  v2 = sub_1B3C98248();
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  if (*(a1 + 16) == 1)
  {
    type metadata accessor for StoryMusicEditorSongsCollectionRowView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8535C0);
    sub_1B3C9BC98();
    sub_1B3C98208();
    return sub_1B3C9BCA8();
  }

  return result;
}

void sub_1B3784A1C()
{
  v1 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v2 = (v0 + *(v1 + 32));
  v3 = *v2;
  v4 = *(v2 + 2);
  v26 = v3;
  v27 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8536F0);
  MEMORY[0x1B8C69360](&v25, v5);
  if (v25)
  {
    v6 = [v25 identifier];
    swift_unknownObjectRelease();
    v7 = sub_1B3C9C5E8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v26 = *(v0 + *(v1 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853740);
  sub_1B3C9BC98();
  if (!v25)
  {
    if (!v9)
    {
      return;
    }

LABEL_14:
    v16 = 0;
    goto LABEL_17;
  }

  v10 = [v25 identifier];
  swift_unknownObjectRelease();
  v11 = sub_1B3C9C5E8();
  v13 = v12;

  if (v9)
  {
    if (v13)
    {
      if (v7 == v11 && v9 == v13)
      {
        goto LABEL_31;
      }

      v15 = sub_1B3C9D6A8();

      if (v15)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_14;
  }

  if (!v13)
  {
    return;
  }

  v16 = 1;
LABEL_17:
  v17 = sub_1B37EE550();
  v18 = sub_1B3711890(v17);
  if (!v18)
  {
LABEL_31:

LABEL_32:

    return;
  }

  v19 = v18;
  v20 = 0;
  while (1)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1B8C6A930](v20, v17);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v21 = *(v17 + 8 * v20 + 32);

      if (v16)
      {
LABEL_21:

        goto LABEL_29;
      }
    }

    if (v7 == *(v21 + 32) && v9 == *(v21 + 40))
    {

LABEL_35:
      *&v26 = v20 / 3;
      sub_1B3C9AB38();
      return;
    }

    v23 = sub_1B3C9D6A8();

    if (v23)
    {

      goto LABEL_35;
    }

LABEL_29:
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    ++v20;
    if (v24 == v19)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_1B3784CF8(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v32 = a1;
  v37 = sub_1B3C9C118();
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B3C9C168();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1B3C9AB48();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v7 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B3C9C188();
  v33 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v28 - v15;
  sub_1B3739098();
  v31 = sub_1B3C9CC88();
  sub_1B3C9C178();
  sub_1B3C9C1B8();
  v16 = *(v11 + 8);
  v16(v14, v10);
  sub_1B37868B8(v32, v9);
  v17 = v29;
  (*(v5 + 16))(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v29);
  v18 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v19 = (v8 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_1B378691C(v9, v20 + v18);
  (*(v5 + 32))(v20 + v19, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  aBlock[4] = sub_1B378821C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_19;
  v21 = _Block_copy(aBlock);

  v22 = v35;
  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B378817C(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3787F14(&qword_1EB84FE90, &unk_1EB851AF0);
  v24 = v36;
  v23 = v37;
  sub_1B3C9D278();
  v26 = v30;
  v25 = v31;
  MEMORY[0x1B8C6A1D0](v30, v22, v24, v21);
  _Block_release(v21);

  (*(v40 + 8))(v24, v23);
  (*(v38 + 8))(v22, v39);
  return (v16)(v26, v33);
}

uint64_t sub_1B3785238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B3C98248();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8535C0);
  sub_1B3C9BC98();
  v9 = sub_1B37DEFFC();
  v11 = v10;
  result = (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v13[-32] = a2;
    *&v13[-24] = v9;
    *&v13[-16] = a3;
    sub_1B3C9C058();
    sub_1B3C9A9D8();
  }

  return result;
}

uint64_t sub_1B37853BC(uint64_t a1, uint64_t a2)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B3C9C0F8();
    return sub_1B3C9AB38();
  }

  return result;
}

uint64_t sub_1B3785450@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v24[1] = a4;
  v9 = sub_1B3C9AB68();
  v24[0] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853858);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853860);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - v17;
  v25 = a1 & 1;
  v26 = a5;
  v27 = a2;
  v28 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852240);
  sub_1B3787CEC();
  sub_1B3C9BCE8();
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853878) + 36)] = a5;
  v19 = sub_1B3C9C068();
  v20 = &v14[*(v12 + 36)];
  *v20 = v19;
  *(v20 + 1) = a5;
  sub_1B3C9AB58();
  v21 = sub_1B3787DA4();
  v22 = sub_1B378817C(&unk_1EB854060, MEMORY[0x1E697C248]);
  sub_1B3C9B858();
  (*(v24[0] + 8))(v11, v9);
  sub_1B3787878(v14, &qword_1EB853858);
  v29 = v12;
  v30 = v9;
  v31 = v21;
  v32 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1B3C9B8E8();
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1B3785780@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8538B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1B3C9BC38();
  sub_1B3C9B618();
  v6 = sub_1B3C9B608();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = sub_1B3C9B678();
  sub_1B3787878(v4, &qword_1EB8538B0);
  KeyPath = swift_getKeyPath();
  v9 = sub_1B3C9BB18();
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  a1[3] = result;
  a1[4] = v9;
  return result;
}

uint64_t sub_1B37858E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853820);
  v52 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v51 = &v49 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853828);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v49 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853830);
  v50 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v49 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853838);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v49 - v9;
  v54 = a1;
  v10 = *(a1 + 8);
  v11 = *(v10 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_localizedTitleKey + 8);
  v12 = *(v10 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_localizedTitleKey + 24);
  v13 = *(v10 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_localizedTitleKey + 40);
  v14 = *(v10 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_localizedTitleKey + 48);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v56 = v14;
  v60 = v12;
  v61 = v11;
  v59 = v13;
  v15 = sub_1B3C9B798();
  v17 = v16;
  v19 = v18;
  sub_1B3C9B688();
  v20 = sub_1B3C9B778();
  v22 = v21;
  LOBYTE(v13) = v23;

  sub_1B371B148(v15, v17, v19 & 1);

  sub_1B3C9B628();
  v24 = sub_1B3C9B738();
  v26 = v25;
  v55 = v27;
  v29 = v28;
  sub_1B371B148(v20, v22, v13 & 1);

  if (*(v10 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_shouldShowCategoriesButton) == 1)
  {
    v52 = v24;
    v30 = v49;
    sub_1B3786038(v49);
    v31 = v50;
    v32 = v58;
    (*(v50 + 16))(v57, v30, v58);
    swift_storeEnumTagMultiPayload();
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8521A0);
    v34 = sub_1B3C9AB68();
    v35 = sub_1B3787F14(&qword_1EB8521B0, &qword_1EB8521A0);
    v36 = sub_1B378817C(&unk_1EB854060, MEMORY[0x1E697C248]);
    v66 = v33;
    v67 = v34;
    v68 = v35;
    v69 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1B3787F14(&qword_1EB853840, &qword_1EB853820);
    v37 = v62;
    sub_1B3C9B168();
    v38 = v30;
    v24 = v52;
  }

  else
  {
    v50 = v29;
    v39 = v51;
    sub_1B3786330();
    v31 = v52;
    v32 = v64;
    (*(v52 + 16))(v57, v39, v64);
    swift_storeEnumTagMultiPayload();
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8521A0);
    v41 = sub_1B3C9AB68();
    v42 = sub_1B3787F14(&qword_1EB8521B0, &qword_1EB8521A0);
    v43 = sub_1B378817C(&unk_1EB854060, MEMORY[0x1E697C248]);
    v66 = v40;
    v67 = v41;
    v68 = v42;
    v69 = v43;
    swift_getOpaqueTypeConformance2();
    sub_1B3787F14(&qword_1EB853840, &qword_1EB853820);
    v37 = v62;
    sub_1B3C9B168();
    v38 = v39;
    v29 = v50;
  }

  (*(v31 + 8))(v38, v32);
  v44 = v63;
  sub_1B371B31C(v37, v63, &qword_1EB853838);
  v45 = v65;
  *v65 = v24;
  v45[1] = v26;
  v46 = v55 & 1;
  *(v45 + 16) = v55 & 1;
  v45[3] = v29;
  v45[4] = 0;
  *(v45 + 40) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853848);
  sub_1B371B31C(v44, v45 + *(v47 + 64), &qword_1EB853838);
  sub_1B370EFD4(v24, v26, v46);

  sub_1B3787878(v37, &qword_1EB853838);
  sub_1B3787878(v44, &qword_1EB853838);
  sub_1B371B148(v24, v26, v46);
}

uint64_t sub_1B3786038@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_1B3C9AB68();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8521A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - v11;
  sub_1B37868B8(v1, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1B378691C(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_1B3C9BCE8();
  sub_1B3C9AB58();
  sub_1B3787F14(&qword_1EB8521B0, &qword_1EB8521A0);
  sub_1B378817C(&unk_1EB854060, MEMORY[0x1E697C248]);
  sub_1B3C9B858();
  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B3786330()
{
  sub_1B37F3AB8(v18);
  v1 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  v2 = (v0 + *(v1 + 32));
  v3 = *v2;
  v4 = *(v2 + 2);
  __src[0] = v3;
  *&__src[1] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8536F0);
  sub_1B3C9BE18();
  v5 = (v0 + *(v1 + 44));
  v6 = *v5;
  v7 = v5[1];
  sub_1B370A6FC(*v5);
  type metadata accessor for StoryMusicEditorSongCollectionViewModel();
  sub_1B378817C(&qword_1EB8535E0, type metadata accessor for StoryMusicEditorSongCollectionViewModel);
  v8 = sub_1B3C9AA58();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853600);
  sub_1B3C9BC88();
  v11 = __src[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853510);
  sub_1B3C9BC88();
  v12 = __src[1];
  v13 = *(&__src[1] + 1);
  v14 = __src[0];
  *&__src[0] = v8;
  *(&__src[0] + 1) = v10;
  __src[1] = *__dst;
  *&__src[2] = *&__dst[16];
  *(&__src[2] + 1) = v6;
  *&__src[3] = v7;
  *(&__src[3] + 8) = v11;
  *(&__src[4] + 8) = v14;
  BYTE8(__src[5]) = v12;
  *&__src[6] = v13;
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B3787B2C(__src, v16);
  sub_1B3787B88();
  sub_1B3C9AA38();
  sub_1B3787BDC(__src);
  return sub_1B371B0F4(v18);
}

uint64_t sub_1B378656C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);

  v4 = sub_1B3C9B798();
  v6 = v5;
  v8 = v7;
  sub_1B3C9B6A8();
  v9 = sub_1B3C9B778();
  v11 = v10;
  v13 = v12;

  sub_1B371B148(v4, v6, v8 & 1);

  sub_1B3C9B648();
  v14 = sub_1B3C9B738();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1B371B148(v9, v11, v13 & 1);

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  return result;
}

uint64_t sub_1B37866E8@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v26);
  v2 = v26[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v7 = v6;
  sub_1B371B0F4(v26);
  sub_1B3C9B6A8();
  v8 = sub_1B3C9B778();
  v10 = v9;
  v12 = v11;

  sub_1B371B148(v3, v5, v7 & 1);

  sub_1B3C9B648();
  v13 = sub_1B3C9B738();
  v15 = v14;
  v17 = v16;
  sub_1B371B148(v8, v10, v12 & 1);

  sub_1B3C9BB28();
  v18 = sub_1B3C9B758();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_1B371B148(v13, v15, v17 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v24;
  return result;
}

uint64_t sub_1B37868B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B378691C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B3786998()
{
  result = qword_1EB853658;
  if (!qword_1EB853658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853638);
    sub_1B3787F14(&qword_1EB853660, &unk_1EB853668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853658);
  }

  return result;
}

uint64_t sub_1B3786A50()
{
  v3 = OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_4_13(v3);
  OUTLINED_FUNCTION_17_8();
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];

  return sub_1B37812A4(v0, v1 + v4, v2, v7, v8);
}

unint64_t sub_1B3786B00()
{
  result = qword_1EB853700;
  if (!qword_1EB853700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853700);
  }

  return result;
}

uint64_t sub_1B3786B94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_2(a1, a2, a3);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_1B3786BE4()
{
  v1 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  OUTLINED_FUNCTION_4_13(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = sub_1B3C9AB48();
  OUTLINED_FUNCTION_4_13(v4);
  OUTLINED_FUNCTION_17_8();
  v7 = *(v0 + v6);

  return sub_1B3785238(v0 + v3, v0 + v5, v7);
}

uint64_t sub_1B3786CDC(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  OUTLINED_FUNCTION_4_13(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1B3C9AB48();
  OUTLINED_FUNCTION_8_0(v7);
  v9 = v1 + ((v4 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  return a1(v1 + v4, v9);
}

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  OUTLINED_FUNCTION_2_2();
  v3 = *(v2 + 80);
  v22 = *(v4 + 64);
  v5 = sub_1B3C9AB48();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v8 = *(v6 + 80);
  v21 = *(v9 + 64);
  v10 = v0 + ((v3 + 16) & ~v3);

  v11 = v10 + v1[7];
  sub_1B3C98248();
  OUTLINED_FUNCTION_6_0();
  (*(v12 + 8))(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8535C0);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v10 + v1[11]))
  {
  }

  v13 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1B3C9B348();
    if (!__swift_getEnumTagSinglePayload(v10 + v13, 1, v14))
    {
      OUTLINED_FUNCTION_18_3();
      (*(v15 + 8))(v10 + v13, v14);
    }
  }

  else
  {
  }

  v16 = v1[15];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1B3C9B348();
    if (!__swift_getEnumTagSinglePayload(v10 + v16, 1, v17))
    {
      OUTLINED_FUNCTION_18_3();
      (*(v18 + 8))(v10 + v16, v17);
    }
  }

  else
  {
  }

  v19 = (((v3 + 16) & ~v3) + v22 + v8) & ~v8;
  (*(v7 + 8))(v0 + v19, v5);

  return MEMORY[0x1EEE6BDD0](v0, v19 + v21, v3 | v8 | 7);
}

void sub_1B37870F0()
{
  v0 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  OUTLINED_FUNCTION_4_13(v0);
  v1 = sub_1B3C9AB48();
  OUTLINED_FUNCTION_8_0(v1);
  sub_1B3784A1C();
}

unint64_t sub_1B37871E0()
{
  result = qword_1EB853758;
  if (!qword_1EB853758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853750);
    sub_1B3787290(&qword_1EB853760, &qword_1EB853768, &unk_1B3D00388, sub_1B3787310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853758);
  }

  return result;
}

uint64_t sub_1B3787290(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_29_3(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B3787340()
{
  result = qword_1EB853780;
  if (!qword_1EB853780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853788);
    sub_1B3787F14(&qword_1EB853790, &unk_1EB853798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853780);
  }

  return result;
}

uint64_t sub_1B37873F8()
{
  v3 = OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_4_13(v3);
  OUTLINED_FUNCTION_17_8();
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];

  return sub_1B3783A64(v0, v5, v6, v7, v1 + v4, v2);
}

uint64_t sub_1B3787490()
{
  v3 = OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_8_0(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_1B3783FC8(v0, v5, v6, v7, v8, v9, v2);
}

uint64_t objectdestroy_36Tm()
{
  OUTLINED_FUNCTION_39();
  type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_27_3();

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8535C0);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_11_8(*(v0 + 32));

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_11_8(*(v0 + 36));
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_15();
  if (v3)
  {
  }

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_15_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851700);
  if (OUTLINED_FUNCTION_12_6() == 1)
  {
    v4 = sub_1B3C9B348();
    if (!OUTLINED_FUNCTION_9_7(v4))
    {
      OUTLINED_FUNCTION_5_11();
      v5 = OUTLINED_FUNCTION_20_4();
      v6(v5);
    }
  }

  else
  {
  }

  if (OUTLINED_FUNCTION_14_9() == 1)
  {
    v7 = sub_1B3C9B348();
    if (!OUTLINED_FUNCTION_8_10(v7))
    {
      OUTLINED_FUNCTION_6_13();
      v8 = OUTLINED_FUNCTION_19_6();
      v9(v8);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1B3787728(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  OUTLINED_FUNCTION_4_13(v2);
  OUTLINED_FUNCTION_17_8();
  v5 = *(v1 + v4);

  return a1(v1 + v3, v5);
}

unint64_t sub_1B37877C4()
{
  result = qword_1EB854050;
  if (!qword_1EB854050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854050);
  }

  return result;
}

uint64_t sub_1B3787818()
{
  v1 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  OUTLINED_FUNCTION_8_0(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1B378478C(v3, v4);
}

uint64_t sub_1B3787878(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_29_3(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_6_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_4()
{
  OUTLINED_FUNCTION_39();
  type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_27_3();

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8535C0);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_11_8(*(v0 + 32));

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_11_8(*(v0 + 36));
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_15();
  if (v3)
  {
  }

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_15_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851700);
  if (OUTLINED_FUNCTION_12_6() == 1)
  {
    v4 = sub_1B3C9B348();
    if (!OUTLINED_FUNCTION_9_7(v4))
    {
      OUTLINED_FUNCTION_5_11();
      v5 = OUTLINED_FUNCTION_20_4();
      v6(v5);
    }
  }

  else
  {
  }

  if (OUTLINED_FUNCTION_14_9() == 1)
  {
    v7 = sub_1B3C9B348();
    if (!OUTLINED_FUNCTION_8_10(v7))
    {
      OUTLINED_FUNCTION_6_13();
      v8 = OUTLINED_FUNCTION_19_6();
      v9(v8);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1B3787AB4(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  OUTLINED_FUNCTION_8_0(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_1B3787B88()
{
  result = qword_1EB853850;
  if (!qword_1EB853850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853850);
  }

  return result;
}

uint64_t sub_1B3787C30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B3787C70(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1B3787CEC()
{
  result = qword_1EB853870;
  if (!qword_1EB853870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB852240);
    sub_1B371B4D0();
    sub_1B3787F14(&qword_1EB852268, &qword_1EB852270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853870);
  }

  return result;
}

unint64_t sub_1B3787DA4()
{
  result = qword_1EB853880;
  if (!qword_1EB853880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853858);
    sub_1B3787E5C();
    sub_1B3787F14(&qword_1EB8538A0, &unk_1EB8538A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853880);
  }

  return result;
}

unint64_t sub_1B3787E5C()
{
  result = qword_1EB853888;
  if (!qword_1EB853888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853878);
    sub_1B3787F14(&qword_1EB853890, &unk_1EB853898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853888);
  }

  return result;
}

uint64_t sub_1B3787F14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_29_3(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryMusicEditorSongsCollectionRowView.ScrollButton.ScrollButtonDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B3788034()
{
  result = qword_1EB8538B8;
  if (!qword_1EB8538B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB8538C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853858);
    sub_1B3C9AB68();
    sub_1B3787DA4();
    sub_1B378817C(&unk_1EB854060, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1B378817C(&qword_1EB84F2A8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8538B8);
  }

  return result;
}

uint64_t sub_1B378817C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B37881C8()
{
  result = qword_1EB8538D0;
  if (!qword_1EB8538D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8538D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_13_11()
{

  return sub_1B3C98248();
}

uint64_t OUTLINED_FUNCTION_14_9()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_15_9()
{
}

uint64_t OUTLINED_FUNCTION_26_3()
{
}

uint64_t OUTLINED_FUNCTION_27_3()
{
}

uint64_t OUTLINED_FUNCTION_28_3()
{

  return type metadata accessor for StoryMusicEditorSongsCollectionRowView();
}

uint64_t sub_1B378838C(double a1)
{
  if (a1 <= 374.0)
  {
    return 0x4030000000000000;
  }

  if (a1 <= 460.0)
  {
    return 0x4034000000000000;
  }

  if (a1 > 981.0)
  {
    return 0x404A000000000000;
  }

  return 0x4041000000000000;
}

void sub_1B37883DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setHidden_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1B3788448(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_wantsOpenInPhotosAction] = 1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_15();
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleAlignmentConstraints] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleLabelTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopNoTitleConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopWithTitleConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleMaxWidthMultipler] = 0x3FE999999999999ALL;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleAlignment] = 3;
  OUTLINED_FUNCTION_15();
  v11.receiver = v4;
  v11.super_class = type metadata accessor for AmbientPhotoFrameExtendedMetadataOverlayView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1B3788A68();
  sub_1B3789978();
  sub_1B378950C();

  return v9;
}

void sub_1B3788590()
{
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_wantsOpenInPhotosAction) = 1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_15();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleAlignmentConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleLabelTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopNoTitleConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopWithTitleConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleMaxWidthMultipler) = 0x3FE999999999999ALL;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleAlignment) = 3;
  OUTLINED_FUNCTION_15();
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B378869C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AmbientPhotoFrameExtendedMetadataOverlayView();
  objc_msgSendSuper2(&v4, sel_safeAreaInsetsDidChange);
  [v0 safeAreaInsets];
  result = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleLabelTopConstraint];
  if (result)
  {
    v3 = v1;
    [result setConstant_];
    result = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopNoTitleConstraint];
    if (result)
    {
      return [result setConstant_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B3788780()
{
  OUTLINED_FUNCTION_25_1();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  v4 = OUTLINED_FUNCTION_21_4();
  [v4 v5];

  [v1 setUserInteractionEnabled_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  swift_unknownObjectWeakAssign();
  [v0 addSubview_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B3D001A0;
  v8 = [v1 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = OUTLINED_FUNCTION_18_7();

  *(v7 + 32) = v10;
  v11 = [v1 trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = OUTLINED_FUNCTION_18_7();

  *(v7 + 40) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = OUTLINED_FUNCTION_18_7();

  *(v7 + 48) = v16;
  v17 = [v1 topAnchor];
  v18 = [v0 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 56) = v19;
  sub_1B3710718(0, &qword_1EB84FE50);
  v22 = sub_1B3C9C778();

  [v6 activateConstraints_];

  OUTLINED_FUNCTION_26_4();
}

void sub_1B3788A68()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  sub_1B3788780();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v70 = objc_opt_self();
  v3 = [v70 whiteColor];
  OUTLINED_FUNCTION_28_4(v3, sel_setTextColor_);

  v72 = v2;
  [v72 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853948);
  inited = swift_initStackObject();
  v5 = MEMORY[0x1E69DB9C0];
  *(inited + 16) = xmmword_1B3CFC360;
  v6 = *v5;
  *(inited + 32) = v6;
  v69 = v6;
  v7 = sub_1B3C98328();
  v8 = sub_1B3710718(0, &qword_1EB852330);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB990];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v68 = v9;
  v10 = sub_1B3C98328();
  *(inited + 104) = v8;
  *(inited + 80) = v10;
  *(inited + 112) = sub_1B3C9CDE8();
  v11 = sub_1B3C9C5E8();
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 120) = v11;
  *(inited + 128) = v12;
  type metadata accessor for TraitKey(0);
  sub_1B378B5A8(&qword_1EB851010, type metadata accessor for TraitKey);
  v13 = sub_1B3C9C4D8();
  sub_1B3710718(0, &qword_1EB853950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853958);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1B3CF6CE0;
  v15 = *MEMORY[0x1E69DB8F0];
  *(v14 + 32) = *MEMORY[0x1E69DB8F0];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853960);
  *(v14 + 64) = v16;
  *(v14 + 40) = v13;
  type metadata accessor for AttributeName(0);
  sub_1B378B5A8(&qword_1EB851000, type metadata accessor for AttributeName);
  v67 = v15;

  sub_1B3C9C4D8();
  v17 = sub_1B386EC64();
  v18 = objc_opt_self();
  v66 = v17;
  v19 = [v18 fontWithDescriptor:v17 size:24.0];
  [v72 setFont_];

  v20 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v21 = [v70 whiteColor];
  [v20 setTextColor_];

  v22 = v20;
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  swift_unknownObjectWeakAssign();
  [v22 setNumberOfLines_];
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1B3CFC360;
  *(v23 + 32) = v69;
  *(v23 + 40) = sub_1B3C98328();
  *(v23 + 64) = v8;
  *(v23 + 72) = v68;
  v24 = sub_1B3C98328();
  *(v23 + 104) = v8;
  *(v23 + 80) = v24;
  *(v23 + 112) = sub_1B3C9CDE8();
  v25 = sub_1B3C9C5E8();
  *(v23 + 144) = MEMORY[0x1E69E6158];
  *(v23 + 120) = v25;
  *(v23 + 128) = v26;
  v27 = sub_1B3C9C4D8();
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1B3CF6CE0;
  *(v28 + 64) = v16;
  *(v28 + 32) = v67;
  *(v28 + 40) = v27;

  sub_1B3C9C4D8();
  v71 = sub_1B386EC64();
  v29 = [v18 fontWithDescriptor:42.0 size:?];
  [v22 setFont_];

  v30 = [v22 topAnchor];
  v31 = [v1 topAnchor];
  v32 = OUTLINED_FUNCTION_21_4();
  v34 = [v32 v33];

  v35 = OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleLabelTopConstraint;
  v36 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleLabelTopConstraint];
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleLabelTopConstraint] = v34;

  v37 = [v72 firstBaselineAnchor];
  v38 = [v22 lastBaselineAnchor];
  v39 = OUTLINED_FUNCTION_21_4();
  v41 = [v39 v40];

  v42 = OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopWithTitleConstraint;
  v43 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopWithTitleConstraint];
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopWithTitleConstraint] = v41;

  v44 = [v72 topAnchor];
  v45 = [v1 topAnchor];
  v46 = OUTLINED_FUNCTION_21_4();
  v48 = [v46 v47];

  v49 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopNoTitleConstraint];
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopNoTitleConstraint] = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1B3D001A0;
  v51 = *&v1[v35];
  if (v51)
  {
    v52 = v50;
    *(v50 + 32) = v51;
    v53 = *&v1[v42];
    if (v53)
    {
      v54 = objc_opt_self();
      v55 = v51;
      v56 = v53;

      v52[5] = v56;
      v57 = [v22 widthAnchor];

      v58 = [v1 safeAreaLayoutGuide];
      v59 = [v58 widthAnchor];

      v60 = [v57 constraintLessThanOrEqualToAnchor:v59 multiplier:0.8];
      v52[6] = v60;
      v61 = [v72 widthAnchor];

      v62 = [v1 safeAreaLayoutGuide];
      v63 = [v62 widthAnchor];

      v64 = [v61 constraintLessThanOrEqualToAnchor:v63 multiplier:0.8];
      v52[7] = v64;
      sub_1B3710718(0, &qword_1EB84FE50);
      v65 = sub_1B3C9C778();

      [v54 activateConstraints_];

      OUTLINED_FUNCTION_26_4();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B37892D0(uint64_t a1, unint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = Strong;
  sub_1B38709CC(a1, a2, Strong);

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopWithTitleConstraint);
  if (!v8)
  {
    goto LABEL_10;
  }

  [v8 setActive_];
  v9 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_subtitleTopNoTitleConstraint);
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v9 setActive_];
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_1B371B158();
    v12 = sub_1B3C9D1B8();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B3CF6CE0;
    v16 = *MEMORY[0x1E69DB748];
    *(inited + 64) = MEMORY[0x1E69E6530];
    *(inited + 32) = v16;
    *(inited + 40) = 2;
    type metadata accessor for Key(0);
    sub_1B378B5A8(&qword_1EB850B88, type metadata accessor for Key);
    v17 = v16;
    v18 = sub_1B3C9C4D8();
    v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v20 = sub_1B3870904(v12, v14, v18);
    OUTLINED_FUNCTION_28_4(v20, sel_setAttributedText_);

    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1B37894D8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleAlignment) != a1)
  {
    sub_1B378950C();
  }
}

void sub_1B37894F4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleAlignment);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleAlignment) = a1;
  sub_1B37894D8(v2);
}

void sub_1B378950C()
{
  OUTLINED_FUNCTION_25_1();
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleAlignmentConstraints;
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleAlignmentConstraints))
  {
    v2 = objc_opt_self();
    sub_1B3710718(0, &qword_1EB84FE50);

    v3 = sub_1B3C9C778();

    [v2 deactivateConstraints_];

    *(v0 + v1) = 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_titleAlignment);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B3CFC180;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (v4 == 2)
  {
    if (!Strong)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v8 = [Strong leftAnchor];

    v9 = OUTLINED_FUNCTION_20_5();
    v10 = [v9 leftAnchor];

    OUTLINED_FUNCTION_14_10();
    v11 = OUTLINED_FUNCTION_27_4();
    if (!v11)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v12 = v11;
    v13 = &selRef_leftAnchor;
    v14 = [v11 leftAnchor];

    v15 = OUTLINED_FUNCTION_20_5();
    v16 = [v15 leftAnchor];

    v17 = OUTLINED_FUNCTION_14_10();
    *(v5 + 40) = v17;
    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v19 = v18;
    v20 = 0;
  }

  else
  {
    if (!Strong)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v21 = [Strong rightAnchor];

    v22 = OUTLINED_FUNCTION_20_5();
    v23 = [v22 rightAnchor];

    OUTLINED_FUNCTION_14_10();
    v24 = OUTLINED_FUNCTION_27_4();
    if (!v24)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v25 = v24;
    v13 = &selRef_rightAnchor;
    v26 = [v24 rightAnchor];

    v27 = OUTLINED_FUNCTION_20_5();
    v28 = [v27 rightAnchor];

    v29 = OUTLINED_FUNCTION_14_10();
    *(v5 + 40) = v29;
    v30 = swift_unknownObjectWeakLoadStrong();
    if (!v30)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v19 = v30;
    v20 = 2;
  }

  v31 = [v19 *v13];

  v32 = OUTLINED_FUNCTION_20_5();
  v33 = [v32 *v13];

  v34 = [v31 constraintEqualToAnchor_];
  *(v5 + 48) = v34;
  v35 = objc_opt_self();
  sub_1B3710718(0, &qword_1EB84FE50);
  v36 = sub_1B3C9C778();
  [v35 activateConstraints_];

  *(v0 + v1) = v5;

  v37 = swift_unknownObjectWeakLoadStrong();
  if (!v37)
  {
    __break(1u);
    goto LABEL_19;
  }

  v38 = v37;
  [v37 setTextAlignment_];

  v39 = swift_unknownObjectWeakLoadStrong();
  if (!v39)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v40 = v39;
  [v39 setTextAlignment_];

  v41 = swift_unknownObjectWeakLoadStrong();
  if (!v41)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v41 setTextAlignment_];
  OUTLINED_FUNCTION_26_4();
}

void sub_1B3789978()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  swift_unknownObjectWeakAssign();
  v3 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_28_4(v3, sel_setTextColor_);

  [v2 setTextAlignment_];
  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_opt_self() systemFontOfSize:24.0 weight:*MEMORY[0x1E69DB970]];
  [v4 setFont_];
  v6 = [objc_opt_self() configurationWithFont:v5 scale:1];

  sub_1B3710718(0, &unk_1EB84FE20);
  v7 = v6;
  v8 = sub_1B378A07C(0xD000000000000019, 0x80000001B3D130B0, v6);
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v4 textColor];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  v49 = v7;
  v48 = v9;
  v12 = [v9 imageWithTintColor:v10 renderingMode:2];

  v13 = [objc_opt_self() textAttachmentWithImage_];
  v14 = sub_1B3C9C5A8();
  v15 = PULocalizedString(v14);

  sub_1B3C9C5E8();
  sub_1B3710718(0, &qword_1EB853938);

  MEMORY[0x1B8C69C10](32, 0xE100000000000000);
  v16 = sub_1B37A5050();
  v47 = v13;
  v17 = [objc_opt_self() attributedStringWithAttachment_];
  [v16 appendAttributedString_];

  OUTLINED_FUNCTION_28_4(v18, sel_setAttributedText_);
  v19 = [objc_opt_self() effectWithStyle_];
  v20 = [objc_opt_self() effectForBlurEffect:v19 style:1];

  v21 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v22 = v21;
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v23 = [v22 contentView];
  [v23 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B3D00630;
  v25 = [v4 firstBaselineAnchor];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v27 = Strong;

  v28 = objc_opt_self();
  v29 = [v27 lastBaselineAnchor];

  v30 = [v25 constraintEqualToAnchor:v29 constant:43.0];
  *(v24 + 32) = v30;
  v31 = [v4 widthAnchor];
  v32 = [v1 safeAreaLayoutGuide];
  v33 = [v32 widthAnchor];

  v34 = [v31 constraintLessThanOrEqualToAnchor:v33 multiplier:0.8];
  *(v24 + 40) = v34;
  v35 = [v22 topAnchor];
  v36 = [v4 topAnchor];
  v37 = OUTLINED_FUNCTION_13_12();

  *(v24 + 48) = v37;
  v38 = [v22 bottomAnchor];
  v39 = [v4 bottomAnchor];
  v40 = OUTLINED_FUNCTION_13_12();

  *(v24 + 56) = v40;
  v41 = [v22 leadingAnchor];
  v42 = [v4 leadingAnchor];
  v43 = OUTLINED_FUNCTION_13_12();

  *(v24 + 64) = v43;
  v44 = [v22 trailingAnchor];

  v45 = [v4 trailingAnchor];
  v46 = OUTLINED_FUNCTION_13_12();

  *(v24 + 72) = v46;
  sub_1B3710718(0, &qword_1EB84FE50);
  v50 = sub_1B3C9C778();

  [v28 activateConstraints_];
}

id sub_1B378A07C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

void *sub_1B378A0EC(CGFloat a1, CGFloat a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      [result bounds];
      OUTLINED_FUNCTION_23_1();

      v8 = OUTLINED_FUNCTION_4_14();
      [v9 v10];
      OUTLINED_FUNCTION_23_1();

      v12.origin.x = OUTLINED_FUNCTION_4_14();
      CGRectGetWidth(v12);
      v13.origin.x = OUTLINED_FUNCTION_4_14();
      CGRectGetHeight(v13);
      OUTLINED_FUNCTION_4_14();
      PXRectGetCenter();
      PXRectWithCenterAndSize();
      v11.x = a1;
      v11.y = a2;
      return CGRectContainsPoint(v14, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B378A1E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = dispatch_group_create();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v20 = result;
  v62 = a2;
  v63 = v13;
  [result setAlpha_];

  v21 = sub_1B3710718(0, &unk_1EB84F790);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_0_15();
  *(v22 - 16) = v18;
  *(v22 - 8) = v3;
  OUTLINED_FUNCTION_20();
  *(swift_allocObject() + 16) = v18;
  v23 = v18;
  OUTLINED_FUNCTION_1_16();
  sub_1B3C9CF58();

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v24 = result;
  [result setAlpha_];
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_10_9();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_20();
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  v27 = v23;
  sub_1B3C9CF58();

  v28 = OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_24_3(aBlock, v66, v67, v28, sel_setTransform_);
  OUTLINED_FUNCTION_20();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_9_8(v29);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_10_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_0_15();
  *(v31 - 16) = v27;
  *(v31 - 8) = v26;
  OUTLINED_FUNCTION_20();
  v32 = swift_allocObject();
  v33 = OUTLINED_FUNCTION_19_7(v32);
  OUTLINED_FUNCTION_5_12();

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v34 = result;
  [result setAlpha_];
  OUTLINED_FUNCTION_20();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_9_8(v35);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_10_9();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_0_15();
  *(v37 - 16) = v33;
  *(v37 - 8) = v26;
  OUTLINED_FUNCTION_20();
  v38 = swift_allocObject();
  v39 = OUTLINED_FUNCTION_19_7(v38);
  OUTLINED_FUNCTION_6_14();

  v40 = OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_24_3(aBlock, v66, v67, v40, sel_setTransform_);
  OUTLINED_FUNCTION_20();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_9_8(v41);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_10_9();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_0_15();
  *(v43 - 16) = v39;
  *(v43 - 8) = v26;
  OUTLINED_FUNCTION_20();
  v44 = swift_allocObject();
  v45 = OUTLINED_FUNCTION_19_7(v44);
  OUTLINED_FUNCTION_5_12();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = result;
    [result setAlpha_];
    OUTLINED_FUNCTION_20();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_9_8(v47);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_10_9();
    MEMORY[0x1EEE9AC00](v48);
    OUTLINED_FUNCTION_0_15();
    *(v49 - 16) = v45;
    *(v49 - 8) = v26;
    OUTLINED_FUNCTION_20();
    v50 = swift_allocObject();
    v51 = OUTLINED_FUNCTION_29_4(v50);
    OUTLINED_FUNCTION_6_14();

    OUTLINED_FUNCTION_12_7();
    [v46 setTransform_];
    OUTLINED_FUNCTION_20();
    v52 = swift_allocObject();
    OUTLINED_FUNCTION_9_8(v52);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_10_9();
    MEMORY[0x1EEE9AC00](v53);
    OUTLINED_FUNCTION_0_15();
    *(v54 - 16) = v51;
    *(v54 - 8) = v26;
    OUTLINED_FUNCTION_20();
    v55 = swift_allocObject();
    v56 = OUTLINED_FUNCTION_19_7(v55);
    OUTLINED_FUNCTION_5_12();

    sub_1B3710718(0, &qword_1EB84FE60);
    v57 = sub_1B3C9CC88();
    v58 = swift_allocObject();
    *(v58 + 16) = a1;
    *(v58 + 24) = v62;
    v67.n128_u64[0] = sub_1B378B604;
    v67.n128_u64[1] = v58;
    aBlock.n128_u64[0] = MEMORY[0x1E69E9820];
    aBlock.n128_u64[1] = 1107296256;
    v66.n128_u64[0] = sub_1B370C014;
    v66.n128_u64[1] = &block_descriptor_106;
    v59 = _Block_copy(&aBlock);

    sub_1B3C9C138();
    OUTLINED_FUNCTION_8_11();
    sub_1B378B5A8(v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
    sub_1B37254F8();
    OUTLINED_FUNCTION_16_8();
    sub_1B3C9CC38();
    _Block_release(v59);

    (*(v6 + 8))(v10, &selRef_scrollExtraLeftView);
    (*(v63 + 8))(v17, v11);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1B378AA10(NSObject *a1)
{
  dispatch_group_enter(a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3[0] = 0x3FF0000000000000;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0x3FF0000000000000;
    v3[4] = 0;
    v3[5] = 0;
    [Strong setTransform_];
  }
}

void sub_1B378AA84()
{
  OUTLINED_FUNCTION_25_1();
  v84 = v1;
  v85 = v2;
  v3 = v0;
  v74 = v4;
  v75 = v5;
  v6 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v76 = v18 - v17;
  v19 = dispatch_group_create();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_7;
  }

  v21 = Strong;
  v69 = v15;
  v70 = v12;
  v71 = v13;
  v72 = v8;
  v73 = v6;
  [Strong setAlpha_];

  v22 = sub_1B3710718(0, &unk_1EB84F790);
  MEMORY[0x1EEE9AC00](v22);
  *(&v68 - 2) = v19;
  *(&v68 - 1) = v3;
  OUTLINED_FUNCTION_20();
  *(swift_allocObject() + 16) = v19;
  v23 = v19;
  OUTLINED_FUNCTION_1_16();
  sub_1B3C9CF58();

  v24 = swift_unknownObjectWeakLoadStrong();
  if (!v24)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v25 = v24;
  [v24 setAlpha_];
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_10_9();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_20();
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  v28 = v23;
  OUTLINED_FUNCTION_1_16();
  sub_1B3C9CF58();

  OUTLINED_FUNCTION_17_9(v29, sel_setTransform_);
  OUTLINED_FUNCTION_20();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_9_8(v30);
  v31 = swift_unknownObjectWeakInit();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_0_15();
  *(v32 - 16) = v28;
  *(v32 - 8) = v27;
  OUTLINED_FUNCTION_20();
  v33 = swift_allocObject();
  v34 = OUTLINED_FUNCTION_19_7(v33);
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_7_16();

  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v36 = v35;
  [v35 setAlpha_];
  OUTLINED_FUNCTION_20();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_9_8(v37);
  v38 = swift_unknownObjectWeakInit();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_0_15();
  *(v39 - 16) = v34;
  *(v39 - 8) = v27;
  OUTLINED_FUNCTION_20();
  v40 = swift_allocObject();
  v41 = OUTLINED_FUNCTION_29_4(v40);
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_7_16();

  OUTLINED_FUNCTION_17_9(v42, sel_setTransform_);
  OUTLINED_FUNCTION_20();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_9_8(v43);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_10_9();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_0_15();
  *(v45 - 16) = v41;
  *(v45 - 8) = v27;
  OUTLINED_FUNCTION_20();
  v46 = swift_allocObject();
  v47 = OUTLINED_FUNCTION_29_4(v46);
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_7_16();

  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    [v48 setAlpha_];
    OUTLINED_FUNCTION_20();
    v50 = swift_allocObject();
    OUTLINED_FUNCTION_9_8(v50);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_10_9();
    MEMORY[0x1EEE9AC00](v51);
    OUTLINED_FUNCTION_0_15();
    *(v52 - 16) = v47;
    *(v52 - 8) = v27;
    OUTLINED_FUNCTION_20();
    v53 = swift_allocObject();
    v54 = OUTLINED_FUNCTION_29_4(v53);
    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_7_16();

    v78 = 0x3FF0000000000000;
    v79 = 0;
    v80 = 0;
    v81 = 0x3FF0000000000000;
    v82 = 0;
    v83 = 0;
    [v49 setTransform_];
    OUTLINED_FUNCTION_20();
    v55 = swift_allocObject();
    OUTLINED_FUNCTION_9_8(v55);
    v56 = swift_unknownObjectWeakInit();
    MEMORY[0x1EEE9AC00](v56);
    OUTLINED_FUNCTION_0_15();
    *(v57 - 16) = v54;
    *(v57 - 8) = v27;
    OUTLINED_FUNCTION_20();
    v58 = swift_allocObject();
    v59 = OUTLINED_FUNCTION_19_7(v58);
    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_7_16();

    sub_1B3710718(0, &qword_1EB84FE60);
    v60 = sub_1B3C9CC88();
    v61 = swift_allocObject();
    v62 = v75;
    *(v61 + 16) = v74;
    *(v61 + 24) = v62;
    v82 = sub_1B3753CE8;
    v83 = v61;
    v78 = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1B370C014;
    v81 = &block_descriptor_20;
    v63 = _Block_copy(&v78);

    v64 = v76;
    sub_1B3C9C138();
    v77 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_8_11();
    sub_1B378B5A8(v65, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
    sub_1B37254F8();
    v67 = v70;
    OUTLINED_FUNCTION_16_8();
    sub_1B3C9CC38();
    _Block_release(v63);

    (*(v72 + 8))(v67, &v78);
    (*(v69 + 8))(v64, v71);

    OUTLINED_FUNCTION_26_4();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1B378B294(NSObject *a1, double a2)
{
  dispatch_group_enter(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1B378B30C(NSObject *a1, double a2)
{
  dispatch_group_enter(a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setAlpha_];
  }
}

void sub_1B378B37C(NSObject *a1)
{
  dispatch_group_enter(a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    CGAffineTransformMakeTranslation(&v3, 0.0, 27.0);
    [v2 setTransform_];
  }
}

id sub_1B378B404()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientPhotoFrameExtendedMetadataOverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B378B5A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_14()
{

  return sub_1B3C9CF58();
}

uint64_t OUTLINED_FUNCTION_7_16()
{

  return sub_1B3C9CF58();
}

CGAffineTransform *OUTLINED_FUNCTION_12_7()
{

  return CGAffineTransformMakeTranslation((v0 - 160), 0.0, 27.0);
}

id OUTLINED_FUNCTION_13_12()
{

  return [v0 (v2 + 3941)];
}

id OUTLINED_FUNCTION_14_10()
{

  return [v1 (v0 + 3941)];
}

id OUTLINED_FUNCTION_17_9(uint64_t a1, const char *a2)
{
  *(v4 - 144) = v2;
  *(v4 - 136) = 0;
  *(v4 - 128) = 0;
  *(v4 - 120) = v2;
  *(v4 - 112) = 0;
  *(v4 - 104) = 0;

  return [v3 a2];
}

id OUTLINED_FUNCTION_19_7(uint64_t a1)
{
  *(a1 + 16) = v1;

  return v1;
}

id OUTLINED_FUNCTION_20_5()
{

  return [v0 (v1 + 306)];
}

id OUTLINED_FUNCTION_24_3(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, const char *a5)
{
  *(v6 - 160) = a1;
  *(v6 - 144) = a2;
  *(v6 - 128) = a3;

  return [v5 a5];
}

uint64_t OUTLINED_FUNCTION_27_4()
{
  *(v0 + 32) = v1;

  return swift_unknownObjectWeakLoadStrong();
}

id OUTLINED_FUNCTION_28_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_29_4(uint64_t a1)
{
  *(a1 + 16) = v1;

  return v1;
}

id OneUpChromeToolbarVisibilityUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpChromeToolbarVisibilityUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpChromeToolbarVisibilityUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OneUpChromeToolbarVisibilityUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpChromeToolbarVisibilityUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AmbientPhotoFrameController.__allocating_init(renderer:photoLibrary:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_46_2();

  return sub_1B3795824(v0, v1, v2, v3, v4);
}

id AmbientPhotoFrameController.init(renderer:photoLibrary:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_46_2();

  return sub_1B3795884(v0, v1, v2, v3, v4);
}

void sub_1B378BA00(void *a1)
{
  v3 = sub_1B3C98068();
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853B68);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_environment);
  if (v19)
  {
    if (v19 == a1)
    {
      return;
    }

    v44 = v16;
    v46 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_environment + 8);
    if (a1)
    {
      swift_unknownObjectRetain();
      v20 = [a1 px_assetDirectory];
      if (v20)
      {
        v21 = v20;
        sub_1B3C98038();

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      __swift_storeEnumTagSinglePayload(v14, v22, 1, v3);
      sub_1B379645C(v14, v18);
      v26 = &selRef_providedVideoURLForVideoVersion_;
      v23 = v1;
    }

    else
    {
      v23 = v1;
      v24 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_renderer);
      aBlock[4] = sub_1B378C17C;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B378C180;
      aBlock[3] = &block_descriptor_189;
      v25 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v24 px:v25 updatePreferences:?];
      _Block_release(v25);
      if (swift_isEscapingClosureAtFileLocation())
      {
        __break(1u);
        return;
      }

      __swift_storeEnumTagSinglePayload(v18, 1, 1, v3);
      v26 = &selRef_providedVideoURLForVideoVersion_;
    }

    ObjectType = swift_getObjectType();
    v28 = [v19 v26[216]];
    v45 = ObjectType;
    if (v28)
    {
      v29 = v28;
      sub_1B3C98038();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    __swift_storeEnumTagSinglePayload(v11, v30, 1, v3);
    v31 = *(v5 + 48);
    sub_1B373C544(v18, v7, &qword_1EB853970);
    sub_1B373C544(v11, &v7[v31], &qword_1EB853970);
    if (__swift_getEnumTagSinglePayload(v7, 1, v3) == 1)
    {
      sub_1B370EEB0(v11, &qword_1EB853970);
      sub_1B370EEB0(v18, &qword_1EB853970);
      if (__swift_getEnumTagSinglePayload(&v7[v31], 1, v3) == 1)
      {
        sub_1B370EEB0(v7, &qword_1EB853970);
        v32 = v45;
LABEL_24:
        v34 = v46;
        v35 = (*(v46 + 8))(v32, v46);
        if (v35)
        {
          sub_1B3792E4C([v35 isDisplayStyleRedMode]);
          swift_unknownObjectRelease();
        }

        v36 = (*(v34 + 16))(v32, v34);
        sub_1B37912E0(v36);
        v37 = (*(v34 + 24))(v32, v34);
        sub_1B378C2A8(v37 & 1);
        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v43 = v23;
      v33 = v44;
      sub_1B373C544(v7, v44, &qword_1EB853970);
      if (__swift_getEnumTagSinglePayload(&v7[v31], 1, v3) != 1)
      {
        v38 = v48;
        v39 = &v7[v31];
        v40 = v47;
        (*(v48 + 32))(v47, v39, v3);
        sub_1B3796414(&unk_1EB853B70, MEMORY[0x1E6968FB0]);
        v41 = sub_1B3C9C528();
        v42 = *(v38 + 8);
        v42(v40, v3);
        sub_1B370EEB0(v11, &qword_1EB853970);
        sub_1B370EEB0(v18, &qword_1EB853970);
        v42(v33, v3);
        sub_1B370EEB0(v7, &qword_1EB853970);
        v32 = v45;
        if (v41)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      sub_1B370EEB0(v11, &qword_1EB853970);
      sub_1B370EEB0(v18, &qword_1EB853970);
      (*(v48 + 8))(v33, v3);
    }

    sub_1B370EEB0(v7, &qword_1EB853B68);
    v32 = v45;
LABEL_23:
    sub_1B378CEF8();
    goto LABEL_24;
  }

  if (a1)
  {

    sub_1B378E9E0();
  }
}

id sub_1B378C0B0(void *a1)
{
  [a1 setUserTapEventsRequested_];
  [a1 setHideChrome_];

  return [a1 setSignificantEventOptions_];
}

uint64_t sub_1B378C114(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_environment);
  v4 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_environment);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  sub_1B378BA00(v4);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1B378C180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(a2, a3);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_1B378C1EC(char a1)
{
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_isActive;
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_isActive) != (a1 & 1))
  {
    v3 = v1;
    if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_isActive) && !*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView) && !sub_1B378C2C0())
    {
      sub_1B378F290();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      sub_1B38024B8(*(v3 + v2));
    }

    sub_1B378FF14();
    if ((*(v3 + v2) & 1) == 0)
    {

      sub_1B378DF28();
    }
  }
}

void sub_1B378C2A8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_isActive);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_isActive) = a1;
  sub_1B378C1EC(v2);
}

void sub_1B378C300(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration;
  memcpy(v31, (v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration), sizeof(v31));
  v4 = v31[0];
  v5 = v31[1];
  v6 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration + 32);
  v26 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration + 16);
  v27 = v6;
  v28 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration + 48);
  v29 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration + 64);
  v8 = __dst[0];
  v7 = __dst[1];
  if (v31[1])
  {
    *__srca = v31[0];
    *&__srca[8] = v31[1];
    v9 = *(v3 + 32);
    *&__srca[16] = *(v3 + 16);
    *&__srca[32] = v9;
    *&__srca[48] = *(v3 + 48);
    *&__srca[64] = *(v3 + 64);
    memcpy(v18, __srca, sizeof(v18));
    if (__dst[1])
    {
      v10 = *(__src + 2);
      *&v17[16] = *(__src + 1);
      *&v17[32] = v10;
      *&v17[48] = *(__src + 3);
      *&v17[64] = *(__src + 8);
      *v17 = __dst[0];
      *&v17[8] = __dst[1];
      sub_1B373C544(v31, v16, &qword_1EB853B38);
      sub_1B373C544(__dst, v16, &qword_1EB853B38);
      sub_1B373C544(__srca, v16, &qword_1EB853B38);
      v11 = static AmbientPhotoFramePosterConfiguration.== infix(_:_:)(v18, v17);
      memcpy(v15, v17, sizeof(v15));
      sub_1B377B640(v15);
      memcpy(v16, v18, sizeof(v16));
      sub_1B377B640(v16);
      *v17 = v4;
      *&v17[8] = v5;
      *&v17[16] = v26;
      *&v17[32] = v27;
      *&v17[48] = v28;
      *&v17[64] = v29;
      sub_1B370EEB0(v17, &qword_1EB853B38);
      if (v11)
      {
        return;
      }

      goto LABEL_9;
    }

    memcpy(v17, __srca, sizeof(v17));
    sub_1B373C544(v31, v16, &qword_1EB853B38);
    sub_1B373C544(__dst, v16, &qword_1EB853B38);
    sub_1B373C544(__srca, v16, &qword_1EB853B38);
    sub_1B377B640(v17);
  }

  else
  {
    if (!__dst[1])
    {
      *__srca = v31[0];
      *&__srca[8] = 0;
      v14 = *(v3 + 32);
      *&__srca[16] = *(v3 + 16);
      *&__srca[32] = v14;
      *&__srca[48] = *(v3 + 48);
      *&__srca[64] = *(v3 + 64);
      sub_1B373C544(v31, v18, &qword_1EB853B38);
      sub_1B373C544(__dst, v18, &qword_1EB853B38);
      sub_1B370EEB0(__srca, &qword_1EB853B38);
      return;
    }

    sub_1B373C544(v31, __srca, &qword_1EB853B38);
    sub_1B373C544(__dst, __srca, &qword_1EB853B38);
  }

  *&__srca[16] = v26;
  *&__srca[32] = v27;
  *&__srca[48] = v28;
  v12 = *(__src + 2);
  v22 = *(__src + 1);
  *__srca = v4;
  *&__srca[8] = v5;
  *&__srca[64] = v29;
  v20 = v8;
  v23 = v12;
  v24 = *(__src + 3);
  v13 = *(__src + 8);
  v21 = v7;
  v25 = v13;
  sub_1B370EEB0(__srca, &qword_1EB853B60);
LABEL_9:
  sub_1B378D860();
}

uint64_t sub_1B378C63C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor;
  memcpy(v32, (v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor), sizeof(v32));
  v4 = v32[0];
  v5 = v32[1];
  v6 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor + 32);
  v27 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor + 16);
  v28 = v6;
  v29 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor + 48);
  v30 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor + 64);
  v8 = __dst[0];
  v7 = __dst[1];
  if (v32[1])
  {
    *__srca = v32[0];
    *&__srca[8] = v32[1];
    v9 = *(v3 + 32);
    *&__srca[16] = *(v3 + 16);
    *&__srca[32] = v9;
    *&__srca[48] = *(v3 + 48);
    *&__srca[64] = *(v3 + 64);
    memcpy(v19, __srca, sizeof(v19));
    if (__dst[1])
    {
      v10 = *(__src + 2);
      *&v18[16] = *(__src + 1);
      *&v18[32] = v10;
      *&v18[48] = *(__src + 3);
      *&v18[64] = *(__src + 8);
      *v18 = __dst[0];
      *&v18[8] = __dst[1];
      sub_1B373C544(v32, v17, &qword_1EB853B30);
      sub_1B373C544(__dst, v17, &qword_1EB853B30);
      sub_1B373C544(__srca, v17, &qword_1EB853B30);
      v11 = static AmbientPhotoFramePosterDescriptor.== infix(_:_:)(v19, v18);
      memcpy(v16, v18, sizeof(v16));
      sub_1B377B4DC(v16);
      memcpy(v17, v19, sizeof(v17));
      sub_1B377B4DC(v17);
      *v18 = v4;
      *&v18[8] = v5;
      *&v18[16] = v27;
      *&v18[32] = v28;
      *&v18[48] = v29;
      *&v18[64] = v30;
      result = sub_1B370EEB0(v18, &qword_1EB853B30);
      if (v11)
      {
        return result;
      }

      return sub_1B378D860(result);
    }

    memcpy(v18, __srca, sizeof(v18));
    sub_1B373C544(v32, v17, &qword_1EB853B30);
    sub_1B373C544(__dst, v17, &qword_1EB853B30);
    sub_1B373C544(__srca, v17, &qword_1EB853B30);
    sub_1B377B4DC(v18);
  }

  else
  {
    if (!__dst[1])
    {
      *__srca = v32[0];
      *&__srca[8] = 0;
      v15 = *(v3 + 32);
      *&__srca[16] = *(v3 + 16);
      *&__srca[32] = v15;
      *&__srca[48] = *(v3 + 48);
      *&__srca[64] = *(v3 + 64);
      sub_1B373C544(v32, v19, &qword_1EB853B30);
      sub_1B373C544(__dst, v19, &qword_1EB853B30);
      return sub_1B370EEB0(__srca, &qword_1EB853B30);
    }

    sub_1B373C544(v32, __srca, &qword_1EB853B30);
    sub_1B373C544(__dst, __srca, &qword_1EB853B30);
  }

  *&__srca[16] = v27;
  *&__srca[32] = v28;
  *&__srca[48] = v29;
  v13 = *(__src + 2);
  v23 = *(__src + 1);
  *__srca = v4;
  *&__srca[8] = v5;
  *&__srca[64] = v30;
  v21 = v8;
  v24 = v13;
  v25 = *(__src + 3);
  v14 = *(__src + 8);
  v22 = v7;
  v26 = v14;
  result = sub_1B370EEB0(__srca, &qword_1EB853B58);
  return sub_1B378D860(result);
}

uint64_t sub_1B378C978(const void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(_BYTE *))
{
  v9 = *a2;
  memcpy(__dst, (v5 + *a2), sizeof(__dst));
  memcpy(v17, (v5 + v9), sizeof(v17));
  memcpy((v5 + v9), a1, 0x48uLL);
  sub_1B373C544(__dst, v15, a3);
  OUTLINED_FUNCTION_34();
  sub_1B370EEB0(v10, v11);
  memcpy(v15, __dst, sizeof(v15));
  a5(v15);
  OUTLINED_FUNCTION_34();
  return sub_1B370EEB0(v12, v13);
}

uint64_t sub_1B378CA38@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration;
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration + 8))
  {
    v4 = *(v3 + 32);
    v6 = *(v3 + 48);
    v5 = *(v3 + 56);
    v7 = *(v3 + 40);
    *a1 = *(v3 + 24);
    a1[1] = v4 & 1;
    a1[2] = v7;
    a1[3] = v6;
    a1[4] = v5;
  }

  else
  {
    memcpy(__dst, (v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor), sizeof(__dst));
    v9 = __dst[3];
    v10 = __dst[4];
    v12 = __dst[5];
    v11 = __dst[6];
    v13 = __dst[7];
    if (__dst[1])
    {
      v24 = __dst[0];
      v25 = __dst[1];
      v26 = __dst[2];
      v27 = __dst[3];
      v28 = __dst[4];
      OUTLINED_FUNCTION_26_5();
      sub_1B373C544(__dst, v23, &qword_1EB853B30);

      result = sub_1B370EEB0(&v24, &qword_1EB853B30);
      *a1 = v9;
      a1[1] = v10 & 1;
      a1[2] = v12;
      a1[3] = v11;
      a1[4] = v13;
    }

    else
    {
      v24 = __dst[0];
      v25 = 0;
      v26 = __dst[2];
      v27 = __dst[3];
      v28 = __dst[4];
      OUTLINED_FUNCTION_26_5();
      v14 = sub_1B373C544(__dst, v23, &qword_1EB853B30);
      result = OUTLINED_FUNCTION_49_0(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23[0]);
      *a1 = 0;
      a1[1] = 0;
      a1[3] = 0;
      a1[4] = 0;
      a1[2] = 1;
    }
  }

  return result;
}

uint64_t sub_1B378CBE0()
{
  v1 = v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor;
  memcpy(__dst, (v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor), sizeof(__dst));
  v2 = __dst[0];
  if (__dst[1])
  {
    v24 = __dst[0];
    v25 = __dst[1];
    v3 = *(v1 + 32);
    v26 = *(v1 + 16);
    v27 = v3;
    v28 = *(v1 + 48);
    v29 = *(v1 + 64);
    v4 = &qword_1EB853B30;
    sub_1B373C544(__dst, v19, &qword_1EB853B30);

    v5 = &v24;
  }

  else
  {
    v19[0] = __dst[0];
    v19[1] = 0;
    v6 = *(v1 + 32);
    v20 = *(v1 + 16);
    v21 = v6;
    v22 = *(v1 + 48);
    v23 = *(v1 + 64);
    sub_1B373C544(__dst, &v24, &qword_1EB853B30);
    sub_1B370EEB0(v19, &qword_1EB853B30);
    OUTLINED_FUNCTION_68_0(OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration);
    v8 = v24;
    v7 = v25;
    if (v25)
    {

      v2 = v8;
    }

    else
    {
      v2 = 0;
    }

    v14[0] = v8;
    v14[1] = v7;
    v9 = *(v0 + 32);
    v15 = *(v0 + 16);
    v16 = v9;
    v17 = *(v0 + 48);
    v18 = *(v0 + 64);
    v4 = &unk_1EB853B38;
    v10 = OUTLINED_FUNCTION_35_3();
    sub_1B373C544(v10, v11, v12);
    v5 = v14;
  }

  sub_1B370EEB0(v5, v4);
  return v2;
}

uint64_t sub_1B378CD5C@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor), sizeof(__dst));
  v4 = __dst[2];
  if (__dst[1])
  {
    v38 = __dst[0];
    v39 = __dst[1];
    v40 = __dst[2];
    v41 = *(v3 + 17);
    v42 = *(v3 + 33);
    *v43 = *(v3 + 49);
    *&v43[15] = *(v3 + 64);
    sub_1B373C544(__dst, v33, &qword_1EB853B30);
    result = sub_1B370EEB0(&v38, &qword_1EB853B30);
    *a1 = v4;
  }

  else
  {
    v33[0] = __dst[0];
    v33[1] = 0;
    v34 = __dst[2];
    v35 = *(v3 + 17);
    v36 = *(v3 + 33);
    *v37 = *(v3 + 49);
    *&v37[15] = *(v3 + 64);
    sub_1B373C544(__dst, &v31, &qword_1EB853B30);
    sub_1B370EEB0(v33, &qword_1EB853B30);
    OUTLINED_FUNCTION_68_0(OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration);
    v6 = v40;
    if (v39)
    {
      v31 = v38;
      v32 = v39;
      OUTLINED_FUNCTION_16_9();
      v7 = OUTLINED_FUNCTION_35_3();
      v10 = sub_1B373C544(v7, v8, v9);
      result = OUTLINED_FUNCTION_49_0(v10, v11, v12, v13, v14, v15, v16, v17, v29, v30);
      *a1 = v6;
    }

    else
    {
      v31 = v38;
      v32 = 0;
      OUTLINED_FUNCTION_16_9();
      v18 = OUTLINED_FUNCTION_35_3();
      v21 = sub_1B373C544(v18, v19, v20);
      result = OUTLINED_FUNCTION_49_0(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
      *a1 = 6;
    }
  }

  return result;
}

void sub_1B378CEF8()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v2 = sub_1B3C98068();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36[-v16];
  if (!*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_environment))
  {
    goto LABEL_13;
  }

  v18 = [swift_unknownObjectRetain() px_assetDirectory];
  if (v18)
  {
    v19 = v18;
    sub_1B3C98038();

    if (static AmbientPhotoFramePosterConfiguration.configurationFileExists(inDirectory:)())
    {
      sub_1B3C98028();
      v28 = sub_1B3C98078();
      v30 = v29;
      sub_1B3C97D48();
      swift_allocObject();
      sub_1B3C97D38();
      sub_1B377B670();
      sub_1B3C97D28();
      v35 = *(v4 + 8);
      v35(v14, v2);

      sub_1B377659C(v28, v30);
      memcpy(v40, v41, 0x48uLL);
      sub_1B378C60C(v40);
    }

    else
    {
      if ((static AmbientPhotoFramePosterDescriptor.descriptorFileExists(inDirectory:)() & 1) == 0)
      {
        v20 = sub_1B3C9CAC8();
        if (qword_1EB8500A0 != -1)
        {
          OUTLINED_FUNCTION_0_16();
          swift_once();
        }

        v21 = qword_1EB855DC0;
        (*(v4 + 16))(v8, v17, v2);
        if (os_log_type_enabled(v21, v20))
        {
          swift_slowAlloc();
          v39 = OUTLINED_FUNCTION_53_0();
          v41[0] = v39;
          *v14 = 136315138;
          sub_1B3796414(&unk_1EB853B40, MEMORY[0x1E6968FB0]);
          v22 = sub_1B3C9D678();
          v38 = v21;
          v23 = v22;
          v37 = v20;
          v25 = v24;
          v26 = OUTLINED_FUNCTION_30_2();
          (v4)(v26);
          v27 = sub_1B3749364(v23, v25, v41);

          *(v14 + 4) = v27;
          _os_log_impl(&dword_1B36F3000, v38, v37, "content not found for environment at %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v39);
          OUTLINED_FUNCTION_3_5();
          OUTLINED_FUNCTION_3_5();
        }

        else
        {
          v31 = OUTLINED_FUNCTION_30_2();
          (v4)(v31);
        }

        sub_1B378EB40();
        swift_unknownObjectRelease();
        (v4)(v17, v2);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_13_0();
      sub_1B3C98028();
      v32 = sub_1B3C98078();
      v34 = v33;
      sub_1B3C97D48();
      swift_allocObject();
      sub_1B3C97D38();
      sub_1B377B50C();
      sub_1B3C97D28();
      v35 = *(v4 + 8);
      v35(v11, v2);

      sub_1B377659C(v32, v34);
      memcpy(v40, v41, 0x48uLL);
      sub_1B378C948(v40);
    }

    swift_unknownObjectRelease();
    v35(v17, v2);
LABEL_13:
    OUTLINED_FUNCTION_27();
    return;
  }

  __break(1u);
}

void sub_1B378D628()
{
  v2 = sub_1B378CA38(__dst);
  if (v28 != 1)
  {
    if (v30)
    {
      LOBYTE(v27) = v27 & 1;
      v10 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_photoLibrary);

      sub_1B37E7918(v10);
      v1 = v29;
    }

    if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration + 8))
    {
      OUTLINED_FUNCTION_47_1(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, SHIDWORD(v13), v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, __dst[0]);
      OUTLINED_FUNCTION_25_2();
      if (v1)
      {

        sub_1B373C544(__dst, &v15, &qword_1EB853B38);

        OUTLINED_FUNCTION_11_9();
        sub_1B378C60C();
LABEL_10:

        return;
      }

      __break(1u);
      goto LABEL_16;
    }

    if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor + 8))
    {
      OUTLINED_FUNCTION_47_1(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, SHIDWORD(v13), v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, __dst[0]);
      OUTLINED_FUNCTION_25_2();
      if (v1)
      {

        sub_1B373C544(__dst, &v15, &qword_1EB853B30);

        OUTLINED_FUNCTION_11_9();
        sub_1B378C948(v11);
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      return;
    }
  }
}

void sub_1B378D860()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - v4;
  sub_1B378E9E0();
  sub_1B378D628();
  sub_1B378CBE0();
  if (v6)
  {
    sub_1B378CA38(&v38);
    v7 = v40;
    if (v40 == 1)
    {
    }

    else
    {
      v8 = v38;
      v10 = v41;
      v9 = v42;
      v43 = v39 & 1;
      sub_1B378CD5C(&v38);
      v11 = v38;
      v12 = sub_1B3C9CAA8();
      v37 = v12;
      if (qword_1EB8500A0 != -1)
      {
        OUTLINED_FUNCTION_0_16();
        swift_once();
        LOBYTE(v12) = v37;
      }

      v36 = qword_1EB855DC0;
      if (os_log_type_enabled(qword_1EB855DC0, v12))
      {
        v34 = v10;
        v35 = v9;
        v32 = v1;
        v9 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v38 = v33;
        *v9 = 136315394;
        v10 = 0xE500000000000000;
        v13 = 0x6D75626C61;
        switch(v11)
        {
          case 0:
            v10 = 0xE800000000000000;
            v13 = 0x6465727574616566;
            goto LABEL_13;
          case 1:
            v10 = 0xE600000000000000;
            v13 = 0x65727574616ELL;
            goto LABEL_13;
          case 2:
            v10 = 0xE400000000000000;
            v13 = 1937007984;
            goto LABEL_13;
          case 3:
            v10 = 0xE600000000000000;
            v13 = 0x736569746963;
            goto LABEL_13;
          case 4:
            v10 = 0xE600000000000000;
            v13 = 0x656C706F6570;
            goto LABEL_13;
          case 5:
LABEL_13:
            v14 = sub_1B3749364(v13, v10, &v38);

            *(v9 + 4) = v14;
            *(v9 + 12) = 1024;
            v15 = v32;
            v16 = sub_1B378C2C0();

            *(v9 + 14) = v16;
            _os_log_impl(&dword_1B36F3000, v36, v37, "loaded content for poster kind: %s isSnapshot: %{BOOL}d", v9, 0x12u);
            __swift_destroy_boxed_opaque_existential_0Tm(v33);
            OUTLINED_FUNCTION_3_5();
            OUTLINED_FUNCTION_3_5();
            v10 = v34;
            v9 = v35;
            break;
          default:
            break;
        }
      }

      v38 = v8;
      v39 = v43;
      v40 = v7;
      v41 = v10;
      v42 = v9;
      sub_1B37E8118();
      v18 = v17;

      v19 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset;
      v20 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset];
      *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset] = v18;

      if (*&v1[v19])
      {
        OUTLINED_FUNCTION_60_0();
        sub_1B3795AC0(v21, v22, v23);
      }

      else
      {
        v24 = dispatch_semaphore_create(0);
        sub_1B3C9C898();
        v25 = sub_1B3C9C8B8();
        __swift_storeEnumTagSinglePayload(v5, 0, 1, v25);
        OUTLINED_FUNCTION_20();
        v26 = v9;
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = swift_allocObject();
        v28[2] = 0;
        v28[3] = 0;
        v28[4] = v27;
        v28[5] = v8;
        v29 = OUTLINED_FUNCTION_29_5(v28);
        v29[7] = v7;
        v29[8] = v30;
        v29[9] = v26;
        v29[10] = v24;
        v31 = v24;
        sub_1B3850B9C();

        sub_1B3C9CD38();
      }

      if (*&v1[v19])
      {
        sub_1B378EE40();
        if (!sub_1B378C2C0() && v1[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_isActive] == 1)
        {
          sub_1B378F290();
        }
      }

      else
      {
        sub_1B378EB40();
      }
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B378DC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B378DC80, 0, 0);
}

uint64_t sub_1B378DC80()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_50_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_40_1();
    v3 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_photoLibrary);
    v0[14] = v3;
    v4 = v3;
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_1B378DD80;

    return AmbientPhotoFrameContentConfiguration.fetchAssets(photoLibrary:keyAsset:countLimit:)(v4, 0, 1, 0);
  }

  else
  {
    OUTLINED_FUNCTION_1();

    return v7();
  }
}