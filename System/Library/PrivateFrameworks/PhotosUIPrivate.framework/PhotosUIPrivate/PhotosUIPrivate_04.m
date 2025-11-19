uint64_t sub_1B3760618(char a1)
{
  result = 0x64656C62616E65;
  switch(a1)
  {
    case 1:
      return 0x7461526874726962;
    case 2:
      return 0x656D69746566696CLL;
    case 3:
      return 0x656D69746566696CLL;
    case 4:
      return 0x797469636F6C6576;
    case 5:
      return 0x797469636F6C6576;
    case 6:
      return 0x6465657053646572;
    case 7:
      return 0x65676E6152646572;
    case 8:
      v3 = 0x536E65657267;
      goto LABEL_23;
    case 9:
      v4 = 0x526E65657267;
      goto LABEL_18;
    case 10:
      return 0x6565705365756C62;
    case 11:
      return 0x676E615265756C62;
    case 12:
      v3 = 0x536168706C61;
      goto LABEL_23;
    case 13:
      v4 = 0x526168706C61;
      goto LABEL_18;
    case 14:
      return 0x656C616373;
    case 15:
      v4 = 0x52656C616373;
LABEL_18:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6E61000000000000;
      break;
    case 16:
      v3 = 0x53656C616373;
LABEL_23:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6570000000000000;
      break;
    case 17:
      result = 0x656C636974726170;
      break;
    case 18:
      result = 0x726F6C6F63;
      break;
    case 19:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B376083C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B3760030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B3760864@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3760610();
  *a1 = result;
  return result;
}

uint64_t sub_1B376088C(uint64_t a1)
{
  v2 = sub_1B3760D14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B37608C8(uint64_t a1)
{
  v2 = sub_1B3760D14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VFXEmitterDefaults.encode(to:)()
{
  OUTLINED_FUNCTION_30_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C28);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_55(v2, v2[3]);
  sub_1B3760D14();
  OUTLINED_FUNCTION_71();
  sub_1B3C9D818();
  sub_1B3C9D638();
  if (v0)
  {
    v6 = OUTLINED_FUNCTION_99();
    v7(v6);
  }

  else
  {
    OUTLINED_FUNCTION_40_0(1);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_40_0(2);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_40_0(3);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_40_0(4);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_40_0(5);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_40_0(6);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_40_0(7);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_40_0(8);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_40_0(9);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_40_0(10);
    sub_1B3C9D648();
    OUTLINED_FUNCTION_40_0(11);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_40_0(12);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_40_0(13);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_40_0(14);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_40_0(15);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_40_0(16);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_40_0(17);
    OUTLINED_FUNCTION_27_1();
    sub_1B3760D68();
    sub_1B3C9D668();
    sub_1B3C9D628();
    (*(v4 + 8))(0);
  }

  OUTLINED_FUNCTION_28_2();
}

unint64_t sub_1B3760D14()
{
  result = qword_1EB852C30;
  if (!qword_1EB852C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852C30);
  }

  return result;
}

unint64_t sub_1B3760D68()
{
  result = qword_1EB852C38;
  if (!qword_1EB852C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852C38);
  }

  return result;
}

uint64_t VFXEmitterDefaults.hashValue.getter()
{
  sub_1B3C9D7C8();
  sub_1B3C9C668();
  return sub_1B3C9D7F8();
}

void VFXEmitterDefaults.init(from:)()
{
  OUTLINED_FUNCTION_30_1();
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31_1();
  GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  sub_1B375F6DC(GenericRGB);
  v46 = v5;
  v10 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_55(v10, v11);
  sub_1B3760D14();
  OUTLINED_FUNCTION_72();
  sub_1B3C9D808();
  if (v0)
  {
    OUTLINED_FUNCTION_14_7();
    v54 = v12;
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_66();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    LOBYTE(v60) = 0;
    *(&v60 + 1) = v69;
    BYTE3(v60) = v70;
    HIDWORD(v60) = 1148846080;
    v61 = COERCE_UNSIGNED_INT(1.0);
    v62 = 1120403456;
    v63 = __PAIR64__(v3, v1);
    v64 = v2;
    v65 = 0;
    OUTLINED_FUNCTION_77();
    v66 = v54;
    OUTLINED_FUNCTION_63();
    v67 = 0x64656C7469746E55;
    v68 = 0xE800000000000000;
  }

  else
  {
    v45 = v7;
    OUTLINED_FUNCTION_4_11();
    v13 = sub_1B3C9D5B8() & 1;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v15 = v14;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v44 = v16;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v43 = v17;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v19 = v18;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v42 = v20;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v41 = v21;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v40 = v22;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v39 = v23;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v38 = v24;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v72 = v25;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v71 = v26;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v57 = v27;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v56 = v28;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v55 = v29;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v47 = v30;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v49 = v31;
    LOBYTE(v60) = 17;
    OUTLINED_FUNCTION_4_11();
    sub_1B3C9D5C8();
    v48 = v32;
    LOBYTE(v58[0]) = 18;
    sub_1B3761690();
    sub_1B3C9D5E8();
    v50 = v60;
    v51 = v61;
    v52 = v62;
    v53 = v63;
    v59 = 19;
    v33 = sub_1B3C9D5A8();
    v35 = v34;
    v36 = OUTLINED_FUNCTION_15_7();
    v37(v36);
    LOBYTE(v58[0]) = v13;
    HIDWORD(v58[0]) = v15;
    v58[1] = __PAIR64__(v43, v44);
    v58[2] = __PAIR64__(v42, v19);
    v58[3] = __PAIR64__(v40, v41);
    v58[4] = __PAIR64__(v38, v39);
    v58[5] = __PAIR64__(v71, v72);
    v58[6] = __PAIR64__(v56, v57);
    v58[7] = __PAIR64__(v47, v55);
    v58[8] = __PAIR64__(v48, v49);
    v58[9] = v50;
    v58[10] = v51;
    v58[11] = v52;
    v58[12] = v53;
    v58[13] = v33;
    v58[14] = v35;
    memcpy(v45, v58, 0x78uLL);
    sub_1B37616E4(v58, &v60);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    LOBYTE(v60) = v13;
    *(&v60 + 1) = v69;
    BYTE3(v60) = v70;
    HIDWORD(v60) = v15;
    v61 = __PAIR64__(v43, v44);
    v62 = __PAIR64__(v42, v19);
    v63 = __PAIR64__(v40, v41);
    v64 = v39;
    v65 = v38;
    OUTLINED_FUNCTION_77();
    v66 = v55;
    OUTLINED_FUNCTION_63();
    v67 = v33;
    v68 = v35;
  }

  sub_1B3761660(&v60);
  OUTLINED_FUNCTION_28_2();
}

uint64_t sub_1B3761618()
{
  sub_1B3C9D7C8();
  sub_1B3C9C668();
  return sub_1B3C9D7F8();
}

unint64_t sub_1B3761690()
{
  result = qword_1EB852C48;
  if (!qword_1EB852C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852C48);
  }

  return result;
}

uint64_t static VFXSparklesDefaults.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v27 = a1[7];
  v28 = a1[6];
  v24 = a1[9];
  v22 = a1[10];
  v19 = a1[11];
  v20 = a1[12];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v25 = a2[8];
  v26 = a1[8];
  v23 = a2[9];
  v21 = a2[10];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v17 = a2[12];
  v18 = a2[11];
  if (v12 || (sub_1B3C9D6A8()) && (v2 == v6 ? (v13 = v4 == v7) : (v13 = 0), (v13 || (sub_1B3C9D6A8()) && (v3 == v8 ? (v14 = v5 == v9) : (v14 = 0), (v14 || (sub_1B3C9D6A8()) && (v28 == v10 ? (v15 = v27 == v11) : (v15 = 0), (v15 || (sub_1B3C9D6A8()) && (sub_1B3761A00(v26, v25) & 1) != 0 && (sub_1B3761924(v24, v23) & 1) != 0 && (sub_1B3761980(v22, v21)))))
  {
    return sub_1B3761B10(v19, v18) & (v20 == v17);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3761898(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B3C9D6A8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B3761924(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B3761980(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v3, *v4), vceqq_f64(v3[1], v4[1]))));
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 2;
        v4 += 2;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1B3761A00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 120)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      v5 = static VFXEmitterDefaults.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_1B37616E4(__dst, v7);
      sub_1B37616E4(v11, v7);
      sub_1B3761660(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_1B3761660(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 120;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B3761B10(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_31;
      }

      v6 = (v4 + 32 * v3);
      v7 = *v6;
      v8 = (v5 + 32 * v3);
      v9 = *v8;
      v10 = *(*v6 + 16);
      if (v10 != *(*v8 + 16))
      {
        return 0;
      }

      v11 = v6[1];
      result = v6[2];
      v12 = v6[3];
      v13 = v8[1];
      if (v10)
      {
        v14 = v7 == v9;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = (v7 + 32);
        v16 = (v9 + 32);
        while (v10)
        {
          if (*v15 != *v16)
          {
            return 0;
          }

          ++v15;
          ++v16;
          if (!--v10)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

LABEL_15:
      v17 = *(v11 + 16);
      if (v17 != *(v13 + 16))
      {
        return 0;
      }

      if (v17 && v11 != v13)
      {
        break;
      }

LABEL_21:
      v20 = result == v8[2] && v12 == v8[3];
      if (!v20 && (sub_1B3C9D6A8() & 1) == 0)
      {
        return 0;
      }

      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v18 = (v11 + 32);
    v19 = (v13 + 32);
    while (*v18 == *v19)
    {
      ++v18;
      ++v19;
      if (!--v17)
      {
        goto LABEL_21;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1B3761C58()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 32);
    v4 = (v1 + 32);
    do
    {
      v5 = 0xEE006F6564695663;
      v6 = 0x6974616D656E6963;
      switch(*v3)
      {
        case 1:
          v5 = 0xE500000000000000;
          v6 = 0x6F65646976;
          break;
        case 2:
          v6 = 0x746F68506576696CLL;
          v5 = 0xE90000000000006FLL;
          break;
        case 3:
          v5 = 0xE800000000000000;
          v6 = 0x7469617274726F70;
          break;
        case 4:
          v5 = 0xE600000000000000;
          v6 = 0x7473756A6461;
          break;
        case 5:
          v5 = 0xE700000000000000;
          v6 = 0x737265746C6966;
          break;
        case 6:
          v5 = 0xE600000000000000;
          v6 = 0x73656C797473;
          break;
        case 7:
          v5 = 0xE400000000000000;
          v6 = 1886351971;
          break;
        case 8:
          v5 = 0xE500000000000000;
          v6 = 0x6F69647561;
          break;
        case 9:
          v5 = 0xE700000000000000;
          v6 = 0x70756E61656C63;
          break;
        case 0xA:
          v5 = 0xE600000000000000;
          v6 = 0x657945646572;
          break;
        default:
          break;
      }

      v7 = 0x6974616D656E6963;
      v8 = 0xEE006F6564695663;
      switch(*v4)
      {
        case 1:
          v8 = 0xE500000000000000;
          v7 = 0x6F65646976;
          break;
        case 2:
          v7 = 0x746F68506576696CLL;
          v8 = 0xE90000000000006FLL;
          break;
        case 3:
          v8 = 0xE800000000000000;
          v7 = 0x7469617274726F70;
          break;
        case 4:
          v8 = 0xE600000000000000;
          v7 = 0x7473756A6461;
          break;
        case 5:
          v8 = 0xE700000000000000;
          v7 = 0x737265746C6966;
          break;
        case 6:
          v8 = 0xE600000000000000;
          v7 = 0x73656C797473;
          break;
        case 7:
          v8 = 0xE400000000000000;
          v7 = 1886351971;
          break;
        case 8:
          v8 = 0xE500000000000000;
          v7 = 0x6F69647561;
          break;
        case 9:
          v8 = 0xE700000000000000;
          v7 = 0x70756E61656C63;
          break;
        case 0xA:
          v8 = 0xE600000000000000;
          v7 = 0x657945646572;
          break;
        default:
          break;
      }

      if (v6 == v7 && v5 == v8)
      {
      }

      else
      {
        v10 = sub_1B3C9D6A8();

        if ((v10 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B3761F58(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B3C9D2C8())
  {
    if (a2 >> 62)
    {
      result = sub_1B3C9D2C8();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    sub_1B3710718(0, a3);
    v23 = v5;
    v13 = v5 & 0xC000000000000001;
    v5 = a2;
    v14 = a2 & 0xC000000000000001;
    v15 = 4;
    a2 = i;
    while (1)
    {
      v16 = v15 - 4;
      v6 = v15 - 3;
      if (__OFADD__(v15 - 4, 1))
      {
        break;
      }

      if (v13)
      {
        v17 = MEMORY[0x1B8C6A930](v15 - 4, v23);
      }

      else
      {
        if (v16 >= *(v22 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v23 + 8 * v15);
      }

      a3 = v17;
      if (v14)
      {
        v18 = MEMORY[0x1B8C6A930](v15 - 4, v5);
      }

      else
      {
        if (v16 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(v5 + 8 * v15);
      }

      v19 = v18;
      v20 = sub_1B3C9CFA8();

      if (v20)
      {
        ++v15;
        if (v6 != a2)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t static VFXColorOverLifeBehaviorDefaults.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B3761924(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_87();

  return sub_1B3761980(v2, v3);
}

uint64_t sub_1B3762180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D7265646E6572 && a2 == 0xEA00000000006564;
  if (v4 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5372657474696D65 && a2 == 0xEC00000065706168;
    if (v6 || (sub_1B3C9D6A8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4D72657474696D65 && a2 == 0xEB0000000065646FLL;
      if (v7 || (sub_1B3C9D6A8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001B3D12780 == a2;
        if (v8 || (sub_1B3C9D6A8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736C6C6563 && a2 == 0xE500000000000000;
          if (v9 || (sub_1B3C9D6A8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65764F726F6C6F63 && a2 == 0xED00006566694C72;
            if (v10 || (sub_1B3C9D6A8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65764F65756C6176 && a2 == 0xED00006566694C72;
              if (v11 || (sub_1B3C9D6A8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000010 && 0x80000001B3D127A0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B3C9D6A8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B3762424(char a1)
{
  result = 0x6F4D7265646E6572;
  switch(a1)
  {
    case 1:
      result = 0x5372657474696D65;
      break;
    case 2:
      result = 0x4D72657474696D65;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x736C6C6563;
      break;
    case 5:
      v3 = 0x4F726F6C6F63;
      goto LABEL_9;
    case 6:
      v3 = 0x4F65756C6176;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6576000000000000;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B3762530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B3762180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B3762558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B376241C();
  *a1 = result;
  return result;
}

uint64_t sub_1B3762580(uint64_t a1)
{
  v2 = sub_1B37628C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B37625BC(uint64_t a1)
{
  v2 = sub_1B37628C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VFXSparklesDefaults.encode(to:)()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C50);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_55(v3, v3[3]);
  sub_1B37628C8();
  OUTLINED_FUNCTION_108();
  sub_1B3C9D818();
  sub_1B3C9D628();
  if (!v0)
  {
    sub_1B3C9D628();
    sub_1B3C9D628();
    sub_1B3C9D628();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C60);
    sub_1B376291C();
    OUTLINED_FUNCTION_85();
    sub_1B3C9D668();
    sub_1B37629F4();

    OUTLINED_FUNCTION_85();
    sub_1B3C9D668();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C80);
    sub_1B3762A48();
    OUTLINED_FUNCTION_85();
    sub_1B3C9D668();
    sub_1B3C9D658();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_76();
}

unint64_t sub_1B37628C8()
{
  result = qword_1EB852C58;
  if (!qword_1EB852C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852C58);
  }

  return result;
}

unint64_t sub_1B376291C()
{
  result = qword_1EB852C68;
  if (!qword_1EB852C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852C60);
    sub_1B37629A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852C68);
  }

  return result;
}

unint64_t sub_1B37629A0()
{
  result = qword_1EB852C70;
  if (!qword_1EB852C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852C70);
  }

  return result;
}

unint64_t sub_1B37629F4()
{
  result = qword_1EB852C78;
  if (!qword_1EB852C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852C78);
  }

  return result;
}

unint64_t sub_1B3762A48()
{
  result = qword_1EB852C88;
  if (!qword_1EB852C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852C80);
    sub_1B3762ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852C88);
  }

  return result;
}

unint64_t sub_1B3762ACC()
{
  result = qword_1EB852C90;
  if (!qword_1EB852C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852C90);
  }

  return result;
}

void VFXSparklesDefaults.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C98);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v60 - v28;
  v71 = sub_1B3C9C5E8();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852CA0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B3CF6CE0;
  v70 = OUTLINED_FUNCTION_68(v32, &unk_1F2AB2E28);
  v68 = v24;
  OUTLINED_FUNCTION_47_0(v24);
  sub_1B37628C8();
  sub_1B3C9D808();
  v72 = v31;
  if (v20)
  {
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_103(v33);
    v34 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    v74 = 0x6576697469646461;
    v75 = 0xE800000000000000;
    v76 = v29;
    v77 = 0xE900000000000065;
    v78 = v69;
    v79 = 0xE700000000000000;
    OUTLINED_FUNCTION_100(&a12);
    v80 = v34;
    v81 = v35;
    v82 = v36;
    v83 = v70;
    v84 = 2;
  }

  else
  {
    v37 = v26;
    LOBYTE(v74) = 0;
    v38 = sub_1B3C9D5A8();
    v65 = v39;
    v66 = v38;
    v40 = OUTLINED_FUNCTION_73(1);
    v42 = v41;
    v64 = v40;
    v43 = OUTLINED_FUNCTION_73(2);
    v63 = v44;
    v69 = v43;
    v45 = OUTLINED_FUNCTION_73(3);
    v47 = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C60);
    LOBYTE(v73[0]) = 4;
    sub_1B37631CC();
    OUTLINED_FUNCTION_79();
    v72 = v47;
    v62 = v74;
    LOBYTE(v73[0]) = 5;
    sub_1B37632A4();
    sub_1B3C9D5E8();
    v48 = v74;
    v61 = v75;
    swift_bridgeObjectRelease_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C80);
    LOBYTE(v73[0]) = 6;
    sub_1B37632F8();
    OUTLINED_FUNCTION_79();

    v70 = v74;
    OUTLINED_FUNCTION_43_1(7);
    v49 = sub_1B3C9D5D8();
    v60[2] = 0;
    v50 = v49;
    v51 = OUTLINED_FUNCTION_20_2();
    v52(v51);
    v53 = v66;
    v73[0] = v66;
    v54 = v45;
    v60[1] = v45;
    v55 = v65;
    v73[1] = v65;
    v73[2] = v64;
    v73[3] = v42;
    v71 = v42;
    v56 = v69;
    v73[4] = v69;
    v57 = v63;
    v73[5] = v63;
    v73[6] = v54;
    v58 = v62;
    v73[7] = v72;
    v73[8] = v62;
    v73[9] = v48;
    v73[10] = v61;
    v59 = v70;
    v73[11] = v70;
    v73[12] = v50;
    memcpy(v37, v73, 0x68uLL);
    sub_1B37633D0(v73, &v74);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    v74 = v53;
    v75 = v55;
    v76 = v64;
    v77 = v71;
    v78 = v56;
    v79 = v57;
    OUTLINED_FUNCTION_100(&v79);
    v80 = v58;
    v81 = v48;
    v82 = v61;
    v83 = v59;
    v84 = v50;
  }

  sub_1B376319C(&v74);
  OUTLINED_FUNCTION_76();
}

unint64_t sub_1B37631CC()
{
  result = qword_1EB852CA8;
  if (!qword_1EB852CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852C60);
    sub_1B3763250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852CA8);
  }

  return result;
}

unint64_t sub_1B3763250()
{
  result = qword_1EB852CB0;
  if (!qword_1EB852CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852CB0);
  }

  return result;
}

unint64_t sub_1B37632A4()
{
  result = qword_1EB852CB8;
  if (!qword_1EB852CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852CB8);
  }

  return result;
}

unint64_t sub_1B37632F8()
{
  result = qword_1EB852CC0;
  if (!qword_1EB852CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852C80);
    sub_1B376337C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852CC0);
  }

  return result;
}

unint64_t sub_1B376337C()
{
  result = qword_1EB852CC8;
  if (!qword_1EB852CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852CC8);
  }

  return result;
}

uint64_t sub_1B376343C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73726F6C6F63 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B3C9D6A8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B3763548(char a1)
{
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](a1 & 1);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B3763590(char a1)
{
  if (a1)
  {
    return 0x73726F6C6F63;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_1B37635E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B376343C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B376360C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3763508();
  *a1 = result;
  return result;
}

uint64_t sub_1B3763634(uint64_t a1)
{
  v2 = sub_1B3763838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3763670(uint64_t a1)
{
  v2 = sub_1B3763838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VFXColorOverLifeBehaviorDefaults.encode(to:)()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852CD0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_47_0(v1);
  v3 = sub_1B3763838();

  OUTLINED_FUNCTION_71();
  sub_1B3C9D818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852CE0);
  OUTLINED_FUNCTION_58_0(&qword_1EB852CE8);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_38_1();
  sub_1B3C9D668();

  if (!v3)
  {
    OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852CF0);
    sub_1B376388C();
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D668();
  }

  v4 = OUTLINED_FUNCTION_107();
  v5(v4);
  OUTLINED_FUNCTION_76();
}

unint64_t sub_1B3763838()
{
  result = qword_1EB852CD8;
  if (!qword_1EB852CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852CD8);
  }

  return result;
}

unint64_t sub_1B376388C()
{
  result = qword_1EB852CF8;
  if (!qword_1EB852CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852CF0);
    sub_1B3760D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852CF8);
  }

  return result;
}

void VFXColorOverLifeBehaviorDefaults.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_90();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D00);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_47_0(v10);
  sub_1B3763838();
  OUTLINED_FUNCTION_39_0();
  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852CE0);
    OUTLINED_FUNCTION_56(&qword_1EB852D08);
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_35_1();
    sub_1B3C9D5E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852CF0);
    sub_1B3763B48();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_35_1();
    sub_1B3C9D5E8();
    v15 = OUTLINED_FUNCTION_15_7();
    v16(v15);
    *v13 = a10;
    v13[1] = a10;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v10);

  OUTLINED_FUNCTION_76();
}

uint64_t sub_1B3763ADC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852CE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B3763B48()
{
  result = qword_1EB852D10;
  if (!qword_1EB852D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852CF0);
    sub_1B3761690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852D10);
  }

  return result;
}

uint64_t static VFXValueOverLifeBehaviorDefaults.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  if ((sub_1B3761924(*a1, *a2) & 1) == 0 || (sub_1B3761924(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  OUTLINED_FUNCTION_87();

  return sub_1B3C9D6A8();
}

uint64_t sub_1B3763CA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
    if (v6 || (sub_1B3C9D6A8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6874615079656BLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B3C9D6A8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B3763DC4(char a1)
{
  if (!a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x7365756C6176;
  }

  return 0x6874615079656BLL;
}

uint64_t sub_1B3763E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B3763CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B3763E4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3763DBC();
  *a1 = result;
  return result;
}

uint64_t sub_1B3763E74(uint64_t a1)
{
  v2 = sub_1B3764098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3763EB0(uint64_t a1)
{
  v2 = sub_1B3764098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VFXValueOverLifeBehaviorDefaults.encode(to:)()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D18);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_55(v2, v2[3]);
  sub_1B3764098();

  OUTLINED_FUNCTION_71();
  sub_1B3C9D818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852CE0);
  OUTLINED_FUNCTION_58_0(&qword_1EB852CE8);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  sub_1B3C9D668();

  if (!v0)
  {
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_72();
    sub_1B3C9D668();
    OUTLINED_FUNCTION_78();
    sub_1B3C9D628();
  }

  v4 = OUTLINED_FUNCTION_107();
  v5(v4);
  OUTLINED_FUNCTION_76();
}

unint64_t sub_1B3764098()
{
  result = qword_1EB852D20;
  if (!qword_1EB852D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852D20);
  }

  return result;
}

void VFXValueOverLifeBehaviorDefaults.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_90();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D28);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_47_0(v10);
  sub_1B3764098();
  OUTLINED_FUNCTION_39_0();
  if (!v11)
  {
    v20 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852CE0);
    OUTLINED_FUNCTION_56(&qword_1EB852D08);
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_35_1();
    sub_1B3C9D5E8();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_35_1();
    sub_1B3C9D5E8();
    OUTLINED_FUNCTION_35_1();
    v15 = sub_1B3C9D5A8();
    v17 = v16;
    v18 = OUTLINED_FUNCTION_69();
    v19(v18);
    *v20 = a10;
    v20[1] = a10;
    v20[2] = v15;
    v20[3] = v17;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v10);

  OUTLINED_FUNCTION_76();
}

uint64_t static VFXGlowDefaults.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_f32(*(a1 + 4), *(a2 + 4)), vceqq_f32(*(a1 + 20), *(a2 + 20))))) & 1) != 0 && *(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10) && ((*a1 ^ *a2) & 1) == 0 && ((a1[1] ^ a2[1]) & 1) == 0 && *(a1 + 11) == *(a2 + 11))
  {
    v4 = a1[64];
    v5 = a1[65];
    v6 = a2[64];
    v7 = a2[65];
    if (*(a1 + 6) == *(a2 + 6) && *(a1 + 7) == *(a2 + 7))
    {
      if (v4 != v6)
      {
        return 0;
      }
    }

    else
    {
      v9 = sub_1B3C9D6A8();
      result = 0;
      if (v9 & 1) == 0 || ((v4 ^ v6))
      {
        return result;
      }
    }

    return v5 ^ v7 ^ 1u;
  }

  return result;
}

uint64_t sub_1B3764460(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B73614D776F6873 && a2 == 0xE800000000000000;
    if (v6 || (sub_1B3C9D6A8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
      if (v7 || (sub_1B3C9D6A8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x756C61566D6F7266 && a2 == 0xE900000000000065;
        if (v8 || (sub_1B3C9D6A8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65756C61566F74 && a2 == 0xE700000000000000;
          if (v9 || (sub_1B3C9D6A8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F6974616C6964 && a2 == 0xE800000000000000;
            if (v10 || (sub_1B3C9D6A8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6D67695372756C62 && a2 == 0xE900000000000061;
              if (v11 || (sub_1B3C9D6A8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x72756C426B73616DLL && a2 == 0xED0000616D676953;
                if (v12 || (sub_1B3C9D6A8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x616C69446B73616DLL && a2 == 0xEC0000006E6F6974;
                  if (v13 || (sub_1B3C9D6A8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x657275736F707865 && a2 == 0xEA00000000005645;
                    if (v14 || (sub_1B3C9D6A8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656C636974726170 && a2 == 0xEC000000657A6953;
                      if (v15 || (sub_1B3C9D6A8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x80000001B3D127C0 == a2;
                        if (v16 || (sub_1B3C9D6A8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x656C636974726170 && a2 == 0xED0000746E756F43;
                          if (v17 || (sub_1B3C9D6A8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x80000001B3D12780 == a2;
                            if (v18 || (sub_1B3C9D6A8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000014 && 0x80000001B3D127E0 == a2;
                              if (v19 || (sub_1B3C9D6A8() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0xD000000000000014 && 0x80000001B3D12800 == a2)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1B3C9D6A8();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
          }
        }
      }
    }
  }
}

uint64_t sub_1B376494C(char a1)
{
  result = 0x64656C62616E65;
  switch(a1)
  {
    case 1:
      result = 0x6B73614D776F6873;
      break;
    case 2:
      v3 = 1634891108;
      goto LABEL_11;
    case 3:
      result = 0x756C61566D6F7266;
      break;
    case 4:
      result = 0x65756C61566F74;
      break;
    case 5:
      v3 = 1634494820;
LABEL_11:
      result = v3 | 0x6E6F697400000000;
      break;
    case 6:
      result = 0x6D67695372756C62;
      break;
    case 7:
      result = 0x72756C426B73616DLL;
      break;
    case 8:
      result = 0x616C69446B73616DLL;
      break;
    case 9:
      result = 0x657275736F707865;
      break;
    case 10:
    case 12:
      result = 0x656C636974726170;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
    case 15:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B3764B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B3764460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B3764B38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3764944();
  *a1 = result;
  return result;
}

uint64_t sub_1B3764B60(uint64_t a1)
{
  v2 = sub_1B3764F4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3764B9C(uint64_t a1)
{
  v2 = sub_1B3764F4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VFXGlowDefaults.encode(to:)()
{
  OUTLINED_FUNCTION_30_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D30);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_47_0(v3);
  sub_1B3764F4C();
  OUTLINED_FUNCTION_108();
  sub_1B3C9D818();
  sub_1B3C9D638();
  if (v0)
  {
    v7 = OUTLINED_FUNCTION_78();
    v8(v7);
  }

  else
  {
    sub_1B3C9D638();
    OUTLINED_FUNCTION_43_1(2);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_43_1(3);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_43_1(4);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_43_1(5);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_43_1(6);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_43_1(7);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_43_1(8);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_43_1(9);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_43_1(10);
    sub_1B3C9D648();
    OUTLINED_FUNCTION_43_1(11);
    OUTLINED_FUNCTION_88();
    sub_1B3C9D648();
    OUTLINED_FUNCTION_43_1(12);
    OUTLINED_FUNCTION_88();
    sub_1B3C9D648();
    OUTLINED_FUNCTION_88();
    sub_1B3C9D628();
    OUTLINED_FUNCTION_88();
    sub_1B3C9D638();
    OUTLINED_FUNCTION_88();
    sub_1B3C9D638();
    (*(v5 + 8))(v1);
  }

  OUTLINED_FUNCTION_28_2();
}

unint64_t sub_1B3764F4C()
{
  result = qword_1EB852D38;
  if (!qword_1EB852D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852D38);
  }

  return result;
}

void VFXGlowDefaults.init(from:)()
{
  OUTLINED_FUNCTION_30_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_1();
  v35 = v2;
  OUTLINED_FUNCTION_47_0(v2);
  sub_1B3764F4C();
  OUTLINED_FUNCTION_39_0();
  if (v0)
  {
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_83();
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    v39 = 1;
    v40 = 0;
    OUTLINED_FUNCTION_51();
    v41 = 0xD000000000000016;
    v42 = 0x80000001B3D12720;
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v39 = 0;
    OUTLINED_FUNCTION_35_1();
    v34 = sub_1B3C9D5B8() & 1;
    OUTLINED_FUNCTION_1_13(1);
    v33 = sub_1B3C9D5B8() & 1;
    OUTLINED_FUNCTION_1_13(2);
    sub_1B3C9D5C8();
    v32 = v6;
    OUTLINED_FUNCTION_1_13(3);
    sub_1B3C9D5C8();
    v31 = v7;
    OUTLINED_FUNCTION_1_13(4);
    sub_1B3C9D5C8();
    v30 = v8;
    OUTLINED_FUNCTION_1_13(5);
    sub_1B3C9D5C8();
    v29 = v9;
    OUTLINED_FUNCTION_1_13(6);
    sub_1B3C9D5C8();
    v28 = v10;
    OUTLINED_FUNCTION_1_13(7);
    sub_1B3C9D5C8();
    v27 = v11;
    OUTLINED_FUNCTION_1_13(8);
    sub_1B3C9D5C8();
    v26 = v12;
    OUTLINED_FUNCTION_1_13(9);
    sub_1B3C9D5C8();
    v25 = v13;
    OUTLINED_FUNCTION_1_13(10);
    sub_1B3C9D5C8();
    v45 = v14;
    OUTLINED_FUNCTION_1_13(11);
    sub_1B3C9D5C8();
    v37 = v15;
    OUTLINED_FUNCTION_1_13(12);
    sub_1B3C9D5C8();
    v36 = v16;
    OUTLINED_FUNCTION_1_13(13);
    v17 = sub_1B3C9D5A8();
    v24 = v18;
    v19 = v17;
    OUTLINED_FUNCTION_1_13(14);
    v20 = sub_1B3C9D5B8() & 1;
    OUTLINED_FUNCTION_43_1(15);
    OUTLINED_FUNCTION_35_1();
    v21 = sub_1B3C9D5B8();
    v22 = OUTLINED_FUNCTION_7_13();
    v23(v22);
    v21 &= 1u;
    LOBYTE(v38[0]) = v34;
    BYTE1(v38[0]) = v33;
    HIDWORD(v38[0]) = v32;
    v38[1] = __PAIR64__(v30, v31);
    v38[2] = __PAIR64__(v28, v29);
    v38[3] = __PAIR64__(v26, v27);
    v38[4] = __PAIR64__(v45, v25);
    v38[5] = __PAIR64__(v36, v37);
    v38[6] = v19;
    v38[7] = v24;
    LOBYTE(v38[8]) = v20;
    BYTE1(v38[8]) = v21;
    memcpy(v4, v38, 0x42uLL);
    sub_1B3765724(v38, &v39);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v39 = v34;
    v40 = v33;
    OUTLINED_FUNCTION_51();
    v41 = v19;
    v42 = v24;
    v43 = v20;
    v44 = v21;
  }

  sub_1B37656F4(&v39);
  OUTLINED_FUNCTION_28_2();
}

void static VFXDissolveDefaults.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v12 && (sub_1B3C9D6A8() & 1) == 0)
  {
    goto LABEL_21;
  }

  v13 = v2 == v7 && v4 == v8;
  if (!v13 && (sub_1B3C9D6A8() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v3 == v9 && v5 == v10)
  {
    if (v6 == v11)
    {
      goto LABEL_17;
    }

LABEL_21:
    OUTLINED_FUNCTION_7_6();
    return;
  }

  if (sub_1B3C9D6A8() & 1) == 0 || ((v6 ^ v11))
  {
    goto LABEL_21;
  }

LABEL_17:
  OUTLINED_FUNCTION_7_6();

  sub_1B3761A00(v15, v16);
}

uint64_t sub_1B37658A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D7265646E6572 && a2 == 0xEA00000000006564;
  if (v4 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5372657474696D65 && a2 == 0xEC00000065706168;
    if (v6 || (sub_1B3C9D6A8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4D72657474696D65 && a2 == 0xEB0000000065646FLL;
      if (v7 || (sub_1B3C9D6A8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7469646441657375 && a2 == 0xEB00000000657669;
        if (v8 || (sub_1B3C9D6A8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x736C6C6563 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B3C9D6A8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1B3765A5C(char a1)
{
  result = 0x6F4D7265646E6572;
  switch(a1)
  {
    case 1:
      result = 0x5372657474696D65;
      break;
    case 2:
      result = 0x4D72657474696D65;
      break;
    case 3:
      result = 0x7469646441657375;
      break;
    case 4:
      result = 0x736C6C6563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B3765B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B37658A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B3765B40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3765A54();
  *a1 = result;
  return result;
}

uint64_t sub_1B3765B68(uint64_t a1)
{
  v2 = sub_1B3765DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3765BA4(uint64_t a1)
{
  v2 = sub_1B3765DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VFXDissolveDefaults.encode(to:)()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D48);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_55(v3, v3[3]);
  sub_1B3765DD8();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_72();
  sub_1B3C9D818();
  OUTLINED_FUNCTION_78();
  sub_1B3C9D628();
  if (!v0)
  {
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D628();
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D628();
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D638();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C60);
    sub_1B376291C();
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D668();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_76();
}

unint64_t sub_1B3765DD8()
{
  result = qword_1EB852D50;
  if (!qword_1EB852D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852D50);
  }

  return result;
}

void VFXDissolveDefaults.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_90();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D58);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_55(v10, v10[3]);
  sub_1B3765DD8();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_106();
  sub_1B3C9D808();
  if (v12)
  {
    OUTLINED_FUNCTION_111();
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v40 = v11;
    v41 = 0xE800000000000000;
    v42 = 0x6C676E6174636572;
    v43 = 0xE900000000000065;
    v44 = 0x65636166727573;
    v45 = 0xE700000000000000;
    v46 = 0;
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    OUTLINED_FUNCTION_36_1();
    v16 = sub_1B3C9D5A8();
    v33 = v18;
    v34 = v16;
    OUTLINED_FUNCTION_36_1();
    v19 = sub_1B3C9D5A8();
    v21 = v20;
    v31 = v14;
    v32 = v19;
    OUTLINED_FUNCTION_36_1();
    v22 = sub_1B3C9D5A8();
    v24 = v23;
    v30 = v22;
    LOBYTE(v40) = 3;
    OUTLINED_FUNCTION_36_1();
    v25 = sub_1B3C9D5B8() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C60);
    v39 = 4;
    sub_1B37631CC();
    OUTLINED_FUNCTION_82();
    sub_1B3C9D5E8();
    v26 = OUTLINED_FUNCTION_67();
    v27(v26);
    *&v35 = v34;
    *(&v35 + 1) = v33;
    *&v36 = v32;
    *(&v36 + 1) = v21;
    *&v37 = v30;
    *(&v37 + 1) = v24;
    LOBYTE(v38) = v25;
    *(&v38 + 1) = a10;
    v28 = v36;
    *v31 = v35;
    v31[1] = v28;
    v29 = v38;
    v31[2] = v37;
    v31[3] = v29;
    sub_1B37661CC(&v35, &v40);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v40 = v34;
    v41 = v33;
    v42 = v32;
    v43 = v21;
    v44 = v30;
    v45 = v24;
    v46 = v25;
    v17 = a10;
  }

  v47 = v17;
  sub_1B376619C(&v40);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_1B3766268(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936683128 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1936683129 && a2 == 0xE400000000000000;
    if (v6 || (sub_1B3C9D6A8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6461526873757262 && a2 == 0xEB00000000737569)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B3C9D6A8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B3766378(char a1)
{
  result = 1936683128;
  if (a1)
  {
    if (a1 == 1)
    {
      return 1936683129;
    }

    else
    {
      return 0x6461526873757262;
    }
  }

  return result;
}

uint64_t sub_1B37663CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B3766268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B37663F4(uint64_t a1)
{
  v2 = sub_1B37665D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3766430(uint64_t a1)
{
  v2 = sub_1B37665D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VFXBrushDefaults.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D60);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_55(a1, a1[3]);
  sub_1B37665D4();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  sub_1B3C9D818();
  OUTLINED_FUNCTION_38_1();
  sub_1B3C9D648();
  if (!v1)
  {
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D648();
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D648();
  }

  v4 = OUTLINED_FUNCTION_107();
  return v5(v4);
}

unint64_t sub_1B37665D4()
{
  result = qword_1EB852D68;
  if (!qword_1EB852D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852D68);
  }

  return result;
}

uint64_t VFXBrushDefaults.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D70);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_47_0(a1);
  sub_1B37665D4();
  sub_1B3C9D808();
  if (!v2)
  {
    OUTLINED_FUNCTION_94();
    v11 = v10;
    OUTLINED_FUNCTION_94();
    v14 = v13;
    OUTLINED_FUNCTION_94();
    v16 = v15;
    (*(v8 + 8))(v3, v6);
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

BOOL static VFXScannerDefaults.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 36);
  v7 = *(a1 + 40);
  v9 = *(a2 + 32);
  v8 = *(a2 + 36);
  v10 = *(a2 + 40);
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    if (v6 != v9 || v5 != v8)
    {
      return 0;
    }

    return v7 == v10;
  }

  v12 = sub_1B3C9D6A8();
  result = 0;
  if ((v12 & 1) != 0 && v6 == v9 && v5 == v8)
  {
    return v7 == v10;
  }

  return result;
}

uint64_t sub_1B37668C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6974616C6964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
    if (v6 || (sub_1B3C9D6A8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D67695372756C62 && a2 == 0xE900000000000061;
      if (v7 || (sub_1B3C9D6A8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001B3D12780 == a2;
        if (v8 || (sub_1B3C9D6A8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461746F72 && a2 == 0xED000065676E6152;
          if (v9 || (sub_1B3C9D6A8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F7246656C616373 && a2 == 0xE90000000000006DLL;
            if (v10 || (sub_1B3C9D6A8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6F54656C616373 && a2 == 0xE700000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1B3C9D6A8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B3766B14(char a1)
{
  result = 0x6E6F6974616C6964;
  switch(a1)
  {
    case 1:
      v3 = 1634891108;
      goto LABEL_4;
    case 2:
      result = 0x6D67695372756C62;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      v3 = 1635020658;
LABEL_4:
      result = v3 | 0x6E6F697400000000;
      break;
    case 5:
      result = 0x6F7246656C616373;
      break;
    case 6:
      result = 0x6F54656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B3766BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B37668C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B3766C20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3766B0C();
  *a1 = result;
  return result;
}

uint64_t sub_1B3766C48(uint64_t a1)
{
  v2 = sub_1B3766EC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3766C84(uint64_t a1)
{
  v2 = sub_1B3766EC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VFXScannerDefaults.encode(to:)()
{
  OUTLINED_FUNCTION_118();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D78);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_55(v3, v3[3]);
  sub_1B3766EC4();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_72();
  sub_1B3C9D818();
  OUTLINED_FUNCTION_38_1();
  sub_1B3C9D648();
  if (!v0)
  {
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D648();
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D648();
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D628();
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D648();
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D648();
    OUTLINED_FUNCTION_38_1();
    sub_1B3C9D648();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_117();
}

unint64_t sub_1B3766EC4()
{
  result = qword_1EB852D80;
  if (!qword_1EB852D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852D80);
  }

  return result;
}

void VFXScannerDefaults.init(from:)()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_90();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D88);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v24 = sub_1B3C9C5E8();
  v25 = v5;
  OUTLINED_FUNCTION_55(v0, v0[3]);
  sub_1B3766EC4();
  sub_1B3C9D808();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v28 = 4.0;
    v29 = 0.25;
    v30 = 1.0;
    v31 = v24;
    v32 = v25;
    v33 = 1061997773;
    v34 = 0;
    v35 = 1069547520;
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_1B3C9D5C8();
    v7 = v6;
    OUTLINED_FUNCTION_16_6(1);
    sub_1B3C9D5C8();
    v9 = v8;
    OUTLINED_FUNCTION_16_6(2);
    sub_1B3C9D5C8();
    v11 = v10;
    OUTLINED_FUNCTION_16_6(3);
    v12 = sub_1B3C9D5A8();
    v14 = v13;

    OUTLINED_FUNCTION_16_6(4);
    sub_1B3C9D5C8();
    v16 = v15;
    OUTLINED_FUNCTION_16_6(5);
    sub_1B3C9D5C8();
    v18 = v17;
    OUTLINED_FUNCTION_43_1(6);
    sub_1B3C9D5C8();
    v20 = v19;
    v21 = OUTLINED_FUNCTION_23_0();
    v22(v21);
    *&v26 = __PAIR64__(LODWORD(v9), LODWORD(v7));
    *(&v26 + 2) = v11;
    *v27 = v12;
    *&v27[8] = v14;
    *&v27[16] = v16;
    *&v27[20] = v18;
    *&v27[24] = v20;
    v23 = *v27;
    *v3 = v26;
    v3[1] = v23;
    *(v3 + 28) = *&v27[12];
    sub_1B376725C(&v26, &v28);
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v28 = v7;
    v29 = v9;
    v30 = v11;
    v31 = v12;
    v32 = v14;
    v33 = v16;
    v34 = v18;
    v35 = v20;
  }

  sub_1B376722C(&v28);
  OUTLINED_FUNCTION_117();
}

BOOL static VFXDefaults.== infix(_:_:)(char *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x42uLL);
  v4 = *(__src + 17);
  v5 = *(__src + 18);
  v6 = *(__src + 19);
  memcpy(__srca, __src + 80, sizeof(__srca));
  v7 = *(__src + 200);
  v42 = *(__src + 184);
  v43 = v7;
  v8 = *(__src + 232);
  v44 = *(__src + 216);
  v45 = v8;
  v9 = *(__src + 264);
  v46 = *(__src + 248);
  v47[0] = v9;
  *(v47 + 12) = *(__src + 276);
  memcpy(v48, a2, 0x42uLL);
  v10 = *(a2 + 68);
  v11 = *(a2 + 72);
  v12 = *(a2 + 76);
  memcpy(v49, (a2 + 80), sizeof(v49));
  v13 = *(a2 + 200);
  v50 = *(a2 + 184);
  v51 = v13;
  v14 = *(a2 + 232);
  v52 = *(a2 + 216);
  v53 = v14;
  v15 = *(a2 + 264);
  v54 = *(a2 + 248);
  v55[0] = v15;
  *(v55 + 12) = *(a2 + 276);
  v16 = OUTLINED_FUNCTION_87();
  v18 = static VFXGlowDefaults.== infix(_:_:)(v16, v17);
  memcpy(v56, a2, 0x42uLL);
  sub_1B3765724(__dst, v39);
  sub_1B3765724(v48, v39);
  sub_1B37656F4(v56);
  memcpy(v57, __src, 0x42uLL);
  sub_1B37656F4(v57);
  v19 = 0;
  if (v18)
  {
    v20 = v4 == v10 && v5 == v11;
    if (v20 && v6 == v12)
    {
      memcpy(v37, __srca, 0x68uLL);
      memcpy(v36, v49, 0x68uLL);
      sub_1B37633D0(__srca, &v33);
      sub_1B37633D0(v49, &v33);
      v22 = static VFXSparklesDefaults.== infix(_:_:)(v37, v36);
      memcpy(v38, v36, sizeof(v38));
      sub_1B376319C(v38);
      memcpy(v39, v37, sizeof(v39));
      sub_1B376319C(v39);
      if (v22 & 1) != 0 && (v33 = v42, *v34 = v43, *&v34[16] = v44, v35 = v45, v30 = v50, *v31 = v51, *&v31[16] = v52, v32 = v53, sub_1B37661CC(&v42, &v28), sub_1B37661CC(&v50, &v28), static VFXDissolveDefaults.== infix(_:_:)(&v33, &v30), v24 = v23, v36[0] = v30, v36[1] = *v31, v36[2] = *&v31[16], v36[3] = v32, sub_1B376619C(v36), v37[0] = v33, v37[1] = *v34, v37[2] = *&v34[16], v37[3] = v35, sub_1B376619C(v37), (v24))
      {
        v28 = v46;
        v29[0] = v47[0];
        *(v29 + 12) = *(v47 + 12);
        v26 = v54;
        v27[0] = v55[0];
        *(v27 + 12) = *(v55 + 12);
        v19 = static VFXScannerDefaults.== infix(_:_:)(&v28, &v26);
        v30 = v26;
        *v31 = v27[0];
        *&v31[12] = *(v27 + 12);
        sub_1B376725C(&v46, &v33);
        sub_1B376725C(&v54, &v33);
        sub_1B376722C(&v30);
        v33 = v28;
        *v34 = v29[0];
        *&v34[12] = *(v29 + 12);
        sub_1B376722C(&v33);
      }

      else
      {
        return 0;
      }
    }
  }

  return v19;
}

uint64_t sub_1B37675D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2003790951 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6873757262 && a2 == 0xE500000000000000;
    if (v6 || (sub_1B3C9D6A8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656C6B72617073 && a2 == 0xE800000000000000;
      if (v7 || (sub_1B3C9D6A8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65766C6F73736964 && a2 == 0xE800000000000000;
        if (v8 || (sub_1B3C9D6A8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x72656E6E616373 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B3C9D6A8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1B376777C(char a1)
{
  result = 2003790951;
  switch(a1)
  {
    case 1:
      result = 0x6873757262;
      break;
    case 2:
      result = 0x73656C6B72617073;
      break;
    case 3:
      result = 0x65766C6F73736964;
      break;
    case 4:
      result = 0x72656E6E616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B3767814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B37675D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B376783C(uint64_t a1)
{
  v2 = sub_1B3767BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3767878(uint64_t a1)
{
  v2 = sub_1B3767BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VFXDefaults.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852D90);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_41_1();
  memcpy(v30, v4, 0x42uLL);
  v10 = *(v4 + 68);
  v11 = *(v4 + 76);
  memcpy(v31, (v4 + 80), sizeof(v31));
  v12 = *(v4 + 200);
  v32 = *(v4 + 184);
  v33 = v12;
  v13 = *(v4 + 232);
  v34 = *(v4 + 216);
  v35 = v13;
  v14 = *(v4 + 264);
  v36 = *(v4 + 248);
  v37[0] = v14;
  *(v37 + 12) = *(v4 + 276);
  OUTLINED_FUNCTION_55(a1, a1[3]);
  sub_1B3765724(v30, v27);
  sub_1B3767BE8();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_106();
  sub_1B3C9D818();
  memcpy(v29, v30, sizeof(v29));
  v28[71] = 0;
  sub_1B3767C3C();
  OUTLINED_FUNCTION_70();
  if (v2)
  {
    memcpy(v27, v29, 0x42uLL);
    sub_1B37656F4(v27);
  }

  else
  {
    memcpy(v28, v29, 0x42uLL);
    sub_1B37656F4(v28);
    v27[0] = v10;
    LODWORD(v27[1]) = v11;
    v26[0] = 1;
    sub_1B3767C90();
    OUTLINED_FUNCTION_70();
    memcpy(v27, v31, sizeof(v27));
    v26[111] = 2;
    sub_1B37633D0(v31, v26);
    sub_1B3767CE4();
    OUTLINED_FUNCTION_70();
    memcpy(v26, v27, 0x68uLL);
    sub_1B376319C(v26);
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v21[79] = 3;
    sub_1B37661CC(&v32, v21);
    sub_1B3767D38();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_91();
    v19 = v36;
    v20[0] = v37[0];
    *(v20 + 12) = *(v37 + 12);
    v18 = 4;
    sub_1B376725C(&v36, &v16);
    sub_1B3767D8C();
    OUTLINED_FUNCTION_70();
    v16 = v19;
    *v17 = v20[0];
    *&v17[12] = *(v20 + 12);
    sub_1B376722C(&v16);
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1B3767BE8()
{
  result = qword_1EB852D98;
  if (!qword_1EB852D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852D98);
  }

  return result;
}

unint64_t sub_1B3767C3C()
{
  result = qword_1EB852DA0;
  if (!qword_1EB852DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852DA0);
  }

  return result;
}

unint64_t sub_1B3767C90()
{
  result = qword_1EB852DA8;
  if (!qword_1EB852DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852DA8);
  }

  return result;
}

unint64_t sub_1B3767CE4()
{
  result = qword_1EB852DB0;
  if (!qword_1EB852DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852DB0);
  }

  return result;
}

unint64_t sub_1B3767D38()
{
  result = qword_1EB852DB8;
  if (!qword_1EB852DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852DB8);
  }

  return result;
}

unint64_t sub_1B3767D8C()
{
  result = qword_1EB852DC0;
  if (!qword_1EB852DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852DC0);
  }

  return result;
}

void VFXDefaults.init(from:)()
{
  OUTLINED_FUNCTION_30_1();
  v2 = v1;
  v51 = v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852DC8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_1();
  v5 = *MEMORY[0x1E6979CF8];
  v83 = sub_1B3C9C5E8();
  v198 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852CA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B3CF6CE0;
  v58 = OUTLINED_FUNCTION_68(v7, &unk_1F2AB2E28);
  v66 = sub_1B3C9C5E8();
  v67 = v8;
  v9 = v2[3];
  OUTLINED_FUNCTION_47_0(v2);
  sub_1B3767BE8();
  OUTLINED_FUNCTION_39_0();
  if (v0)
  {
    v82 = 0;
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_59(0.3);
    strcpy(&v78[1], "surface");
    v80 = v10;
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    LOWORD(v156) = 1;
    HIWORD(v156) = v52;
    v157 = 1.0;
    v158 = 0;
    v159 = 1061997773;
    v160 = 2.0;
    v161 = 2.0;
    v162 = 4.0;
    v163 = 6.0;
    v164 = 1.0;
    v165 = 1119879168;
    v166 = 0;
    v167 = 1120403456;
    v168 = 0xD000000000000016;
    v169 = 0x80000001B3D12720;
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = v61;
    v174 = v81;
    v175 = v11;
    v176 = 0xE800000000000000;
    v177 = v9;
    v178 = 0xE900000000000065;
    v179 = 0x65636166727573;
    v180 = v5;
    v181 = v83;
    v182 = v198;
    v183 = v56;
    v184 = v73;
    v185 = v75;
    v186 = v58;
    v187 = v59;
    OUTLINED_FUNCTION_44_1();
    *&v188[3] = *(v197 + 3);
    *v188 = v197[0];
    v189 = v71;
    v190 = 0x3E80000040800000;
    v191 = 1065353216;
    v193 = v66;
    v194 = v67;
    v195 = 1061997773;
    v196 = 1069547520;
  }

  else
  {
    v137 = 0;
    sub_1B37689B8();
    OUTLINED_FUNCTION_35_1();
    sub_1B3C9D5E8();
    v62 = v138;
    v65 = v139;
    v12 = v140;
    v48 = v141;
    v49 = v142;
    v13 = v143;
    v50 = v144;
    v64 = v145;
    v14 = v146;
    v15 = v147;
    v16 = v148;
    v17 = v149;
    v18 = v150;
    v19 = v151;
    v63 = v152;
    v20 = v153;
    v68 = v154;
    v69 = v155;
    v129[0] = 1;
    v130 = xmmword_1B3CFCEA0;
    v131 = xmmword_1B3CFCEB0;
    v132 = 1119879168;
    v133 = 1120403456;
    v134 = 0xD000000000000016;
    v135 = 0x80000001B3D12720;
    v136 = 0;
    sub_1B37656F4(v129);
    v90[0] = 1;
    sub_1B3768A0C();
    OUTLINED_FUNCTION_35_1();
    sub_1B3C9D5E8();
    v53 = v12;
    v47 = v156;
    v21 = v157;
    v81 = v158;
    v115 = 2;
    sub_1B3768A60();
    OUTLINED_FUNCTION_35_1();
    sub_1B3C9D5E8();
    v41 = v116;
    v42 = v117;
    v43 = v118;
    v44 = v119;
    v45 = v120;
    v46 = v121;
    v40 = v122;
    v39 = v123;
    v57 = v124;
    v74 = v125;
    v76 = v126;
    v22 = v127;
    v60 = v128;
    OUTLINED_FUNCTION_34_1();
    v114[0] = v23;
    v114[1] = 0xE800000000000000;
    OUTLINED_FUNCTION_60();
    v114[2] = v24;
    v114[3] = 0xE900000000000065;
    OUTLINED_FUNCTION_13_9();
    v114[4] = v25;
    v114[5] = 0xE700000000000000;
    v114[6] = v83;
    v114[7] = v198;
    v26 = MEMORY[0x1E69E7CC0];
    v114[8] = MEMORY[0x1E69E7CC0];
    v114[9] = MEMORY[0x1E69E7CC0];
    v114[10] = MEMORY[0x1E69E7CC0];
    v114[11] = v58;
    v114[12] = 2;
    sub_1B376319C(v114);
    v104 = 3;
    sub_1B3768AB4();
    sub_1B3C9D5E8();
    v79 = v106;
    v80 = v105;
    v78[0] = v107;
    v78[1] = v109;
    v77 = v110;
    v82 = v111;
    v197[0] = *v112;
    *(v197 + 3) = *&v112[3];
    v70 = v108;
    v72 = v113;
    OUTLINED_FUNCTION_34_1();
    v101[0] = v27;
    v101[1] = 0xE800000000000000;
    OUTLINED_FUNCTION_60();
    v101[2] = v28;
    v101[3] = 0xE900000000000065;
    OUTLINED_FUNCTION_13_9();
    v101[4] = v29;
    v101[5] = 0xE700000000000000;
    v102 = 0;
    v103 = v26;
    sub_1B376619C(v101);
    v91 = 4;
    sub_1B3768B08();
    sub_1B3C9D5E8();
    v30 = OUTLINED_FUNCTION_75();
    v31(v30, v54);
    LODWORD(v83) = v92;
    v55 = v93;
    v38 = v94;
    v37 = v95;
    v35 = v97;
    v36 = v96;
    v33 = v99;
    v34 = v98;
    v32 = v100;
    v84 = 0x3E80000040800000;
    v85 = 1065353216;
    v86 = v66;
    v87 = v67;
    v88 = 1061997773;
    v89 = 1069547520;
    sub_1B376722C(&v84);
    *&v90[233] = v197[0];
    *&v90[236] = *(v197 + 3);
    v90[0] = v62;
    v90[1] = v65;
    *&v90[2] = v53;
    *&v90[4] = v48;
    *&v90[8] = v49;
    *&v90[12] = v13;
    *&v90[16] = v50;
    *&v90[20] = v64;
    *&v90[24] = v14;
    *&v90[28] = v15;
    *&v90[32] = v16;
    *&v90[36] = v17;
    *&v90[40] = v18;
    *&v90[44] = v19;
    *&v90[48] = v63;
    *&v90[56] = v20;
    v90[64] = v68;
    v90[65] = v69;
    *&v90[68] = v47;
    *&v90[72] = v21;
    *&v90[76] = v81;
    *&v90[80] = v41;
    *&v90[88] = v42;
    *&v90[96] = v43;
    *&v90[104] = v44;
    *&v90[112] = v45;
    *&v90[120] = v46;
    *&v90[128] = v40;
    *&v90[136] = v39;
    *&v90[144] = v57;
    *&v90[152] = v74;
    *&v90[160] = v76;
    *&v90[168] = v22;
    *&v90[176] = v60;
    *&v90[184] = v80;
    *&v90[192] = v79;
    *&v90[200] = v78[0];
    *&v90[208] = v70;
    *&v90[216] = v78[1];
    *&v90[224] = v77;
    v90[232] = v82;
    *&v90[240] = v72;
    *&v90[248] = v83;
    *&v90[252] = v55;
    *&v90[256] = v38;
    *&v90[260] = v37;
    *&v90[264] = v36;
    *&v90[272] = v35;
    *&v90[280] = v34;
    *&v90[284] = v33;
    *&v90[288] = v32;
    memcpy(v51, v90, 0x124uLL);
    sub_1B3768B5C(v90, &v156);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    LOBYTE(v156) = v62;
    BYTE1(v156) = v65;
    HIWORD(v156) = v53;
    v157 = v48;
    v158 = v49;
    v159 = v13;
    v160 = v50;
    v161 = v64;
    v162 = v14;
    v163 = v15;
    v164 = v16;
    v165 = v17;
    v166 = v18;
    v167 = v19;
    v168 = v63;
    v169 = v20;
    v170 = v68;
    v171 = v69;
    v172 = v47;
    v173 = v21;
    v174 = v81;
    v175 = v41;
    v176 = v42;
    v177 = v43;
    v178 = v44;
    v179 = v45;
    v180 = v46;
    v181 = v40;
    v182 = v39;
    v183 = v57;
    v184 = v74;
    v185 = v76;
    v186 = v22;
    v187 = v60;
    OUTLINED_FUNCTION_44_1();
    *v188 = v197[0];
    *&v188[3] = *(v197 + 3);
    v189 = v72;
    v190 = __PAIR64__(v55, v83);
    v191 = v38;
    v192 = v37;
    v193 = v36;
    v194 = v35;
    v195 = __PAIR64__(v33, v34);
    v196 = v32;
  }

  sub_1B3768988(&v156);
  OUTLINED_FUNCTION_28_2();
}

unint64_t sub_1B37689B8()
{
  result = qword_1EB852DD0;
  if (!qword_1EB852DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852DD0);
  }

  return result;
}

unint64_t sub_1B3768A0C()
{
  result = qword_1EB852DD8;
  if (!qword_1EB852DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852DD8);
  }

  return result;
}

unint64_t sub_1B3768A60()
{
  result = qword_1EB852DE0;
  if (!qword_1EB852DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852DE0);
  }

  return result;
}

unint64_t sub_1B3768AB4()
{
  result = qword_1EB852DE8;
  if (!qword_1EB852DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852DE8);
  }

  return result;
}

unint64_t sub_1B3768B08()
{
  result = qword_1EB852DF0;
  if (!qword_1EB852DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852DF0);
  }

  return result;
}

uint64_t sub_1B3768BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B3C97E48();
  swift_allocObject();
  sub_1B3C97E38();
  sub_1B3776540();
  sub_1B3C97E28();

  memcpy(v8, __src, 0x124uLL);

  sub_1B3C9BC88();
  memcpy(&v8[48], v9, 0x130uLL);
  *v8 = 0;
  *&v8[8] = 0;
  *&v8[16] = a3;
  *&v8[24] = a4;
  *&v8[32] = 0;
  *&v8[40] = 0;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853078));
  return sub_1B3C9B088();
}

void sub_1B3768DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B3C98088();
  (*(a3 + 16))(a3, v4);
}

id PUVFXControls.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PUVFXControls.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUVFXControls();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PUVFXControls.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUVFXControls();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void VFXControls.body.getter()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852DF8);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_41_1();
  memcpy(v8, v0, sizeof(v8));
  *v1 = sub_1B3C9B008();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E00);
  sub_1B37690A8(v8, v1 + *(v3 + 44));
  memcpy(v5, &v8[48], 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BC98();
  memcpy(v6, v7, sizeof(v6));
  v4 = swift_allocObject();
  memcpy((v4 + 16), v8, 0x160uLL);
  sub_1B3770C5C(v8, v5);
  sub_1B3770C94();
  sub_1B3770DA0();
  sub_1B3C9BAC8();

  memcpy(v5, v6, 0x124uLL);
  sub_1B3768988(v5);
  sub_1B371B36C(v1, &qword_1EB852DF8);
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B37690A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v92 = a1;
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853090);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v100 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v91 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853098);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = (&v91 - v8);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530A0) - 8;
  v9 = MEMORY[0x1EEE9AC00](v97);
  v98 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530A8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v115 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v91 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v91 - v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530B8) - 8;
  v19 = MEMORY[0x1EEE9AC00](v95);
  v114 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v116 = &v91 - v21;
  v103 = sub_1B3C9BB38();
  v118 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530C0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v91 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530C8);
  v27 = v26 - 8;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v113 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v91 - v30;
  *v25 = sub_1B3C9AFF8();
  *(v25 + 1) = 0;
  v25[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530D0);
  sub_1B3769E90(v2);
  v32 = sub_1B3C9B6D8();
  v119[0] = 0;
  sub_1B3C9BC88();
  LOBYTE(v2) = v121[0];
  v33 = v121[1];
  sub_1B37772C8(v25, v31, &qword_1EB8530C0);
  v34 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530D8) + 36)];
  *v34 = 2003790919;
  *(v34 + 1) = 0xE400000000000000;
  v34[16] = v2;
  *(v34 + 3) = v33;
  *(v34 + 4) = v32;
  LOBYTE(v32) = sub_1B3C9B508();
  v35 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530E0) + 36)];
  *v35 = v32;
  *(v35 + 8) = 0u;
  *(v35 + 24) = 0u;
  v35[40] = 1;
  v110 = *MEMORY[0x1E69814D8];
  v36 = *(v118 + 104);
  v118 += 104;
  v109 = v36;
  v37 = v103;
  v36(v102);
  v38 = sub_1B3C9BBD8();
  LOBYTE(v2) = sub_1B3C9B508();
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530E8) + 36);
  v112 = v31;
  v40 = &v31[v39];
  *v40 = v38;
  v40[8] = v2;
  v41 = &v31[*(v27 + 44)];
  v108 = sub_1B3C9AB78();
  v42 = *(v108 + 20);
  v107 = *MEMORY[0x1E697F468];
  v43 = v107;
  v106 = sub_1B3C9AFA8();
  v44 = *(v106 - 8);
  v45 = *(v44 + 104);
  v104 = v44 + 104;
  v45(&v41[v42], v43, v106);
  v94 = v45;
  __asm { FMOV            V0.2D, #8.0 }

  v105 = _Q0;
  *v41 = _Q0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854570);
  v52 = *(v51 + 36);
  v93 = v51;
  *&v41[v52] = 256;
  sub_1B371B36C(v25, &qword_1EB8530C0);
  *v18 = sub_1B3C9AFF8();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v53 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530F0) + 44)];
  *v53 = sub_1B3C9B008();
  *(v53 + 1) = 0;
  v53[16] = 1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530F8);
  v55 = v92;
  sub_1B376C9D4(v92, &v53[*(v54 + 44)]);
  v56 = sub_1B3C9B6D8();
  v119[0] = 1;
  sub_1B3C9BC88();
  LOBYTE(v42) = v121[0];
  v57 = v121[1];
  v58 = v116;
  sub_1B37772C8(v18, v116, &qword_1EB8530B0);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853100) + 36);
  *v59 = 0x73656C6B72617053;
  *(v59 + 8) = 0xE800000000000000;
  *(v59 + 16) = v42;
  *(v59 + 24) = v57;
  *(v59 + 32) = v56;
  LOBYTE(v56) = sub_1B3C9B508();
  v60 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853108) + 36);
  *v60 = v56;
  *(v60 + 8) = 0u;
  *(v60 + 24) = 0u;
  *(v60 + 40) = 1;
  v61 = v102;
  v109(v102, v110, v37);
  v62 = v61;
  v63 = sub_1B3C9BBD8();
  LOBYTE(v57) = sub_1B3C9B508();
  v64 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853110) + 36);
  *v64 = v63;
  *(v64 + 8) = v57;
  v65 = (v58 + *(v95 + 44));
  v45(&v65[*(v108 + 20)], v107, v106);
  *v65 = v105;
  *&v65[*(v51 + 36)] = 256;
  sub_1B371B36C(v18, &qword_1EB8530B0);
  v66 = sub_1B3C9AFF8();
  v128[0] = 1;
  v67 = v55;
  sub_1B376E6A0(v55, v121);
  memcpy(v125, v121, sizeof(v125));
  memcpy(v126, v121, sizeof(v126));
  sub_1B37772C8(v125, v119, &qword_1EB853118);
  sub_1B371B36C(v126, &qword_1EB853118);
  memcpy(v121 + 7, v125, 0xC0uLL);
  v122[0] = v66;
  v122[1] = 0;
  v123 = v128[0];
  memcpy(v124, v121, sizeof(v124));
  sub_1B376C1FC(0x6873757242, 0xE500000000000000, 1, v117);
  sub_1B371B36C(v122, &qword_1EB853120);
  v68 = sub_1B3C9AFF8();
  v69 = v96;
  *v96 = v68;
  *(v69 + 8) = 0;
  *(v69 + 16) = 1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853128);
  sub_1B376ECC8(v55, (v69 + *(v70 + 44)));
  v71 = sub_1B3C9B6D8();
  v119[0] = 1;
  sub_1B3C9BC88();
  LOBYTE(v65) = v121[0];
  v72 = v121[1];
  v73 = v111;
  sub_1B37772C8(v69, v111, &qword_1EB853098);
  v74 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853130) + 36);
  *v74 = 0x65766C6F73736944;
  *(v74 + 8) = 0xE800000000000000;
  *(v74 + 16) = v65;
  *(v74 + 24) = v72;
  *(v74 + 32) = v71;
  LOBYTE(v71) = sub_1B3C9B508();
  v75 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853138) + 36);
  *v75 = v71;
  *(v75 + 8) = 0u;
  *(v75 + 24) = 0u;
  *(v75 + 40) = 1;
  v109(v62, v110, v103);
  v76 = sub_1B3C9BBD8();
  LOBYTE(v65) = sub_1B3C9B508();
  v77 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853140) + 36);
  *v77 = v76;
  *(v77 + 8) = v65;
  v78 = (v73 + *(v97 + 44));
  v94(&v78[*(v108 + 20)], v107, v106);
  *v78 = v105;
  *&v78[*(v93 + 36)] = 256;
  sub_1B371B36C(v69, &qword_1EB853098);
  v79 = sub_1B3C9AFF8();
  v120 = 1;
  sub_1B376FBB0(v67);
  memcpy(v127, v121, sizeof(v127));
  memcpy(v128, v121, 0x1B8uLL);
  sub_1B37772C8(v127, v119, &qword_1EB853148);
  sub_1B371B36C(v128, &qword_1EB853148);
  memcpy(&v119[7], v127, 0x1B8uLL);
  v121[0] = v79;
  v121[1] = 0;
  LOBYTE(v121[2]) = v120;
  memcpy(&v121[2] + 1, v119, 0x1BFuLL);
  v80 = v99;
  sub_1B376C5DC(0x72656E6E616353);
  sub_1B371B36C(v121, &qword_1EB853150);
  v81 = v113;
  sub_1B37772C8(v112, v113, &qword_1EB8530C8);
  v82 = v114;
  sub_1B37772C8(v116, v114, &qword_1EB8530B8);
  v83 = v115;
  sub_1B37772C8(v117, v115, &qword_1EB8530A8);
  v84 = v73;
  v85 = v98;
  sub_1B37772C8(v84, v98, &qword_1EB8530A0);
  v86 = v100;
  sub_1B37772C8(v80, v100, &qword_1EB853090);
  v87 = v81;
  v88 = v101;
  sub_1B37772C8(v87, v101, &qword_1EB8530C8);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853158);
  sub_1B37772C8(v82, v88 + v89[12], &qword_1EB8530B8);
  sub_1B37772C8(v83, v88 + v89[16], &qword_1EB8530A8);
  sub_1B37772C8(v85, v88 + v89[20], &qword_1EB8530A0);
  sub_1B37772C8(v86, v88 + v89[24], &qword_1EB853090);
  sub_1B371B36C(v80, &qword_1EB853090);
  sub_1B371B36C(v111, &qword_1EB8530A0);
  sub_1B371B36C(v117, &qword_1EB8530A8);
  sub_1B371B36C(v116, &qword_1EB8530B8);
  sub_1B371B36C(v112, &qword_1EB8530C8);
  sub_1B371B36C(v86, &qword_1EB853090);
  sub_1B371B36C(v85, &qword_1EB8530A0);
  sub_1B371B36C(v115, &qword_1EB8530A8);
  sub_1B371B36C(v114, &qword_1EB8530B8);
  return sub_1B371B36C(v113, &qword_1EB8530C8);
}

uint64_t sub_1B3769E90(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v99 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F80);
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v106 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v105 = v45 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C08);
  v107 = *(v95 - 8);
  v7 = MEMORY[0x1EEE9AC00](v95);
  v96 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v104 = v45 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v102 = v45 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = v45 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v94 = v45 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v103 = v45 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v108 = v45 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v100 = v45 - v21;
  sub_1B3C9AF78();
  memcpy(v157, (v1 + 48), sizeof(v157));
  memcpy(v197, (v1 + 48), 0x130uLL);
  v45[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BCB8();
  memcpy(v158, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v158, 0x134uLL);
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853178);
  sub_1B3C9BE08();

  sub_1B371B36C(v158, &qword_1EB853178);
  memcpy(v159, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v159, 0x52uLL);
  v45[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853268);
  sub_1B3C9BE08();

  sub_1B371B36C(v159, &qword_1EB853268);
  sub_1B3C9BDA8();
  sub_1B3C9AF78();
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v160, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v160, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v160, &qword_1EB853178);
  memcpy(v161, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v161, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v161, &qword_1EB853268);
  sub_1B3C9BDA8();
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v162, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v162, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v162, &qword_1EB853178);
  memcpy(v163, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v163, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v163, &qword_1EB853268);
  v91 = v189[1];
  v92 = v189[0];
  v93 = v189[2];
  v183[0] = 0;
  sub_1B3C9BC88();
  v90 = LOBYTE(v186[0]);
  v89 = v186[1];
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v165, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v165, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v165, &qword_1EB853178);
  memcpy(v166, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v166, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v166, &qword_1EB853268);
  v86 = v189[1];
  v87 = v189[0];
  v88 = v189[2];
  v183[0] = 0;
  sub_1B3C9BC88();
  v85 = LOBYTE(v186[0]);
  v84 = v186[1];
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v168, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v168, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v168, &qword_1EB853178);
  memcpy(v169, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v169, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v169, &qword_1EB853268);
  v81 = v189[1];
  v82 = v189[0];
  v83 = v189[2];
  v183[0] = 0;
  sub_1B3C9BC88();
  v80 = LOBYTE(v186[0]);
  v79 = v186[1];
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v171, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v171, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v171, &qword_1EB853178);
  memcpy(v172, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v172, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v172, &qword_1EB853268);
  v77 = v189[1];
  v78 = v189[0];
  v22 = v189[2];
  v183[0] = 0;
  sub_1B3C9BC88();
  v76 = LOBYTE(v186[0]);
  v75 = v186[1];
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v174, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v174, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v174, &qword_1EB853178);
  memcpy(v175, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v175, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v175, &qword_1EB853268);
  v73 = v189[1];
  v74 = v189[0];
  v23 = v189[2];
  v183[0] = 0;
  sub_1B3C9BC88();
  v72 = LOBYTE(v186[0]);
  v71 = v186[1];
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v177, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v177, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v177, &qword_1EB853178);
  memcpy(v178, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v178, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v178, &qword_1EB853268);
  v69 = v189[1];
  v70 = v189[0];
  v24 = v189[2];
  v183[0] = 0;
  sub_1B3C9BC88();
  v68 = LOBYTE(v186[0]);
  v67 = v186[1];
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v180, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v180, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v180, &qword_1EB853178);
  memcpy(v181, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v181, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v181, &qword_1EB853268);
  v63 = v189[1];
  v64 = v189[0];
  v25 = v189[2];
  v183[0] = 0;
  sub_1B3C9BC88();
  v62 = LOBYTE(v186[0]);
  v61 = v186[1];
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v183, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v183, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v183, &qword_1EB853178);
  memcpy(v184, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v184, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v184, &qword_1EB853268);
  v54 = v189[1];
  v55 = v189[0];
  v26 = v189[2];
  LOBYTE(v156[0]) = 0;
  sub_1B3C9BC88();
  v65 = LOBYTE(v186[0]);
  v66 = v186[1];
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v186, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v186, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v186, &qword_1EB853178);
  memcpy(v187, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v187, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v187, &qword_1EB853268);
  v59 = v189[1];
  v60 = v189[0];
  v27 = v189[2];
  LOBYTE(v155[0]) = 0;
  sub_1B3C9BC88();
  v56 = LOBYTE(v156[0]);
  v57 = v156[1];
  v58 = 0x80000001B3D127C0;
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v189, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v189, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v189, &qword_1EB853178);
  memcpy(v190, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v192, v190, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v190, &qword_1EB853268);
  v52 = v156[1];
  v53 = v156[0];
  v28 = v156[2];
  LOBYTE(v200[0]) = 0;
  sub_1B3C9BC88();
  v50 = LOBYTE(v155[0]);
  v51 = *(&v155[0] + 1);
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v192, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v192, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v192, &qword_1EB853178);
  memcpy(v193, v195, 0x52uLL);
  swift_getKeyPath();
  memcpy(v156, v193, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v193, &qword_1EB853268);
  v48 = *(&v155[0] + 1);
  v49 = *&v155[0];
  v29 = v155[1];
  v198[0] = 0;
  sub_1B3C9BC88();
  v46 = LOBYTE(v200[0]);
  v47 = v200[1];
  sub_1B3C9AF78();
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v195, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v197, v195, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v195, &qword_1EB853178);
  memcpy(v196, v156, 0x52uLL);
  swift_getKeyPath();
  memcpy(v155, v196, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v196, &qword_1EB853268);
  sub_1B3C9C098();
  memcpy(v197, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v197, v199, 0x134uLL);
  swift_getKeyPath();
  memcpy(v156, v197, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v197, &qword_1EB853178);
  memcpy(v198, v155, 0x52uLL);
  swift_getKeyPath();
  memcpy(v200, v198, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v198, &qword_1EB853268);
  sub_1B3C9BD98();
  memcpy(v199, v157, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v199, v156, 0x134uLL);
  swift_getKeyPath();
  memcpy(v155, v199, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v199, &qword_1EB853178);
  memcpy(v200, v154, 0x52uLL);
  swift_getKeyPath();
  memcpy(v153, v200, 0x52uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v200, &qword_1EB853268);
  v30 = v94;
  sub_1B3C9BD98();
  v31 = *(v107 + 16);
  v32 = v101;
  v33 = v95;
  v31(v101, v100, v95);
  v156[0] = v32;
  v34 = v102;
  v31(v102, v108, v33);
  *(&v150 + 1) = v92;
  *&v151 = v91;
  LOBYTE(v152) = v90;
  *(&v152 + 1) = v89;
  *(&v146 + 1) = v87;
  *&v147 = v86;
  LOBYTE(v148) = v85;
  *(&v148 + 1) = v84;
  *(&v142 + 1) = v82;
  *&v143 = v81;
  LOBYTE(v144) = v80;
  *(&v144 + 1) = v79;
  *(&v138 + 1) = v78;
  *&v139 = v77;
  LOBYTE(v140) = v76;
  *(&v140 + 1) = v75;
  *(&v134 + 1) = v74;
  *&v135 = v73;
  LOBYTE(v136) = v72;
  *(&v136 + 1) = v71;
  *(&v130 + 1) = v70;
  *&v131 = v69;
  LOBYTE(v132) = v68;
  *(&v132 + 1) = v67;
  *(&v126 + 1) = v64;
  *&v127 = v63;
  LOBYTE(v128) = v62;
  *(&v128 + 1) = v61;
  *(&v122 + 1) = v55;
  *&v123 = v54;
  *(&v152 + 1) = *v164;
  DWORD1(v152) = *&v164[3];
  v156[2] = &v149;
  *&v145 = 0x7472617473;
  *(&v145 + 1) = 0xE500000000000000;
  *(&v148 + 1) = *v167;
  DWORD1(v148) = *&v167[3];
  *&v141 = 6581861;
  *&v149 = 0x6E6F697461727564;
  v156[1] = v34;
  *&v150 = 0x4120000000000000;
  *(&v149 + 1) = 0xE800000000000000;
  DWORD2(v151) = v93;
  *&v146 = 0x3F80000000000000;
  DWORD2(v147) = v88;
  *(&v141 + 1) = 0xE300000000000000;
  *&v142 = 0x3F80000000000000;
  DWORD2(v143) = v83;
  *(&v144 + 1) = *v170;
  DWORD1(v144) = *&v170[3];
  v156[3] = &v145;
  v156[4] = &v141;
  *&v137 = 0x6E6F6974616C6964;
  *(&v137 + 1) = 0xE800000000000000;
  *&v138 = 0x41A0000000000000;
  DWORD2(v139) = v22;
  *(&v140 + 1) = *v173;
  DWORD1(v140) = *&v173[3];
  *&v133 = 0x6D67695372756C62;
  *(&v133 + 1) = 0xE900000000000061;
  *&v134 = 0x4100000000000000;
  DWORD2(v135) = v23;
  *(&v136 + 1) = *v176;
  DWORD1(v136) = *&v176[3];
  v156[5] = &v137;
  v156[6] = &v133;
  strcpy(&v129, "maskBlurSigma");
  HIWORD(v129) = -4864;
  *&v130 = 0x4100000000000000;
  DWORD2(v131) = v24;
  *(&v132 + 1) = *v179;
  DWORD1(v132) = *&v179[3];
  strcpy(&v125, "maskDilation");
  BYTE13(v125) = 0;
  HIWORD(v125) = -5120;
  *&v126 = 0x4100000000000000;
  DWORD2(v127) = v25;
  *(&v128 + 1) = *v182;
  DWORD1(v128) = *&v182[3];
  v156[7] = &v129;
  v156[8] = &v125;
  *&v121 = 0x657275736F707865;
  *(&v121 + 1) = 0xEA00000000005645;
  *&v122 = 0x41A0000000000000;
  DWORD2(v123) = v26;
  LOBYTE(v124) = v65;
  *(&v124 + 1) = *v185;
  DWORD1(v124) = *&v185[3];
  *(&v124 + 1) = v66;
  strcpy(&v117, "particleSize");
  BYTE13(v117) = 0;
  HIWORD(v117) = -5120;
  *&v118 = 0x4348000041200000;
  *(&v118 + 1) = v60;
  *&v119 = v59;
  DWORD2(v119) = v27;
  LOBYTE(v120) = v56;
  *(&v120 + 1) = *v188;
  DWORD1(v120) = *&v188[3];
  *(&v120 + 1) = v57;
  v156[9] = &v121;
  v156[10] = &v117;
  *&v113 = 0xD000000000000011;
  *(&v113 + 1) = v58;
  *&v114 = 0x4348000000000000;
  *(&v114 + 1) = v53;
  *&v115 = v52;
  DWORD2(v115) = v28;
  LOBYTE(v116) = v50;
  *(&v116 + 1) = *v191;
  DWORD1(v116) = *&v191[3];
  *(&v116 + 1) = v51;
  strcpy(&v109, "particleCount");
  HIWORD(v109) = -4864;
  *&v110 = 0x44FA000000000000;
  *(&v110 + 1) = v49;
  *&v111 = v48;
  DWORD2(v111) = v29;
  LOBYTE(v112) = v46;
  *(&v112 + 1) = *v194;
  DWORD1(v112) = *&v194[3];
  *(&v112 + 1) = v47;
  v156[11] = &v113;
  v156[12] = &v109;
  v36 = v97;
  v35 = v98;
  v38 = v105;
  v37 = v106;
  (*(v97 + 16))(v106, v105, v98);
  v156[13] = v37;
  v40 = v103;
  v39 = v104;
  v31(v104, v103, v33);
  v156[14] = v39;
  v41 = v96;
  v31(v96, v30, v33);
  v156[15] = v41;
  sub_1B375E620(v156, v99);
  v42 = *(v107 + 8);
  v42(v30, v33);
  v42(v40, v33);
  v43 = *(v36 + 8);
  v43(v38, v35);
  v42(v108, v33);
  v42(v100, v33);
  v42(v41, v33);
  v42(v104, v33);
  v43(v106, v35);
  v201[0] = v109;
  v201[1] = v110;
  v201[2] = v111;
  v201[3] = v112;
  sub_1B3776350(v201);
  v202[0] = v113;
  v202[1] = v114;
  v202[2] = v115;
  v202[3] = v116;
  sub_1B3776350(v202);
  v203[0] = v117;
  v203[1] = v118;
  v203[2] = v119;
  v203[3] = v120;
  sub_1B3776350(v203);
  v204[0] = v121;
  v204[1] = v122;
  v204[2] = v123;
  v204[3] = v124;
  sub_1B3776350(v204);
  v205[0] = v125;
  v205[1] = v126;
  v205[2] = v127;
  v205[3] = v128;
  sub_1B3776350(v205);
  v206[0] = v129;
  v206[1] = v130;
  v206[2] = v131;
  v206[3] = v132;
  sub_1B3776350(v206);
  v207[0] = v133;
  v207[1] = v134;
  v207[2] = v135;
  v207[3] = v136;
  sub_1B3776350(v207);
  v208[0] = v137;
  v208[1] = v138;
  v208[2] = v139;
  v208[3] = v140;
  sub_1B3776350(v208);
  v153[0] = v141;
  v153[1] = v142;
  v153[2] = v143;
  v153[3] = v144;
  sub_1B3776350(v153);
  v154[0] = v145;
  v154[1] = v146;
  v154[2] = v147;
  v154[3] = v148;
  sub_1B3776350(v154);
  v155[0] = v149;
  v155[1] = v150;
  v155[2] = v151;
  v155[3] = v152;
  sub_1B3776350(v155);
  v42(v102, v33);
  return (v42)(v101, v33);
}

uint64_t sub_1B376C034@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v11);
  v2 = v11[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = sub_1B371B0F4(v11);
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1B376C118@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v11);
  v2 = v11[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = sub_1B371B0F4(v11);
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1B376C1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v5 = v4;
  v30 = a4;
  v9 = sub_1B3C9BB38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_1B3C9B6D8();
  LOBYTE(v47[0]) = a3;
  sub_1B3C9BC88();
  v14 = v48[0];
  v15 = v48[1];
  memcpy(v31, v5, 0xD8uLL);
  sub_1B37772C8(v5, v48, &qword_1EB853120);
  LOBYTE(v5) = sub_1B3C9B508();
  memcpy(v34, v31, 0xD8uLL);
  v34[27] = a1;
  v34[28] = a2;
  LOBYTE(v34[29]) = v14;
  v34[30] = v15;
  v34[31] = v13;
  memcpy(v47, v34, 0x100uLL);
  v32 = 1;
  memcpy(v35, v31, sizeof(v35));
  v36 = a1;
  v37 = a2;
  v38 = v14;
  v39 = v15;
  v40 = v13;
  sub_1B37772C8(v34, v48, &qword_1EB8531F0);
  sub_1B371B36C(v35, &qword_1EB8531F0);
  (*(v10 + 104))(v12, *MEMORY[0x1E69814D8], v9);
  v16 = sub_1B3C9BBD8();
  LOBYTE(v12) = sub_1B3C9B508();
  memcpy(v41, v47, 0x100uLL);
  LOBYTE(v41[64]) = v5;
  *(&v41[64] + 1) = v31[0];
  v41[65] = *(v31 + 3);
  memset(&v41[66], 0, 32);
  LOBYTE(v41[74]) = v32;
  memcpy(v33, v41, 0x129uLL);
  memcpy(v42, v47, 0x100uLL);
  v42[256] = v5;
  *v43 = v31[0];
  *&v43[3] = *(v31 + 3);
  v44 = 0u;
  v45 = 0u;
  v46 = v32;
  sub_1B37772C8(v41, v48, &qword_1EB8531F8);
  sub_1B371B36C(v42, &qword_1EB8531F8);
  memcpy(v47, v33, 0x130uLL);
  v47[38] = v16;
  LOBYTE(v47[39]) = v12;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8530A8);
  v18 = v30;
  v19 = &v30[*(v17 + 36)];
  v20 = *(sub_1B3C9AB78() + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1B3C9AFA8();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #8.0 }

  *v19 = _Q0;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854570) + 36)] = 256;
  memcpy(v18, v47, 0x139uLL);
  memcpy(v48, v33, 0x130uLL);
  v48[38] = v16;
  v49 = v12;
  sub_1B37772C8(v47, v31, &qword_1EB853200);
  return sub_1B371B36C(v48, &qword_1EB853200);
}

uint64_t sub_1B376C5DC(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v31 = v9;
  v10 = sub_1B3C9BB38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_1B3C9B6D8();
  LOBYTE(v48[0]) = v5;
  sub_1B3C9BC88();
  v15 = v49[0];
  v16 = v49[1];
  memcpy(v32, v3, 0x1D0uLL);
  sub_1B37772C8(v3, v49, &qword_1EB853150);
  LOBYTE(v3) = sub_1B3C9B508();
  memcpy(v35, v32, 0x1D0uLL);
  v35[58] = v8;
  v35[59] = v7;
  LOBYTE(v35[60]) = v15;
  v35[61] = v16;
  v35[62] = v14;
  memcpy(v48, v35, 0x1F8uLL);
  v33 = 1;
  memcpy(v36, v32, sizeof(v36));
  v37 = v8;
  v38 = v7;
  v39 = v15;
  v40 = v16;
  v41 = v14;
  sub_1B37772C8(v35, v49, &qword_1EB853160);
  sub_1B371B36C(v36, &qword_1EB853160);
  (*(v11 + 104))(v13, *MEMORY[0x1E69814D8], v10);
  v17 = sub_1B3C9BBD8();
  LOBYTE(v13) = sub_1B3C9B508();
  memcpy(v42, v48, 0x1F8uLL);
  LOBYTE(v42[126]) = v3;
  *(&v42[126] + 1) = v32[0];
  v42[127] = *(v32 + 3);
  memset(&v42[128], 0, 32);
  LOBYTE(v42[136]) = v33;
  memcpy(v34, v42, 0x221uLL);
  memcpy(v43, v48, 0x1F8uLL);
  v43[504] = v3;
  *v44 = v32[0];
  *&v44[3] = *(v32 + 3);
  v45 = 0u;
  v46 = 0u;
  v47 = v33;
  sub_1B37772C8(v42, v49, &qword_1EB853168);
  sub_1B371B36C(v43, &qword_1EB853168);
  memcpy(v48, v34, 0x228uLL);
  v48[69] = v17;
  LOBYTE(v48[70]) = v13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853090);
  v19 = v31;
  v20 = &v31[*(v18 + 36)];
  v21 = *(sub_1B3C9AB78() + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1B3C9AFA8();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #8.0 }

  *v20 = _Q0;
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854570) + 36)] = 256;
  memcpy(v19, v48, 0x231uLL);
  memcpy(v49, v34, 0x228uLL);
  v49[69] = v17;
  v50 = v13;
  sub_1B37772C8(v48, v32, &qword_1EB853170);
  return sub_1B371B36C(v49, &qword_1EB853170);
}

uint64_t sub_1B376C9D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853210);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = (&v33 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853188);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v55 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853218);
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v54 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v33 - v14;
  memcpy(v74, (a1 + 48), sizeof(v74));
  memcpy(v83, (a1 + 48), 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BCB8();
  memcpy(v75, v67, 0x134uLL);
  swift_getKeyPath();
  memcpy(v83, v75, 0x134uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853178);
  sub_1B3C9BE08();

  sub_1B371B36C(v75, &qword_1EB853178);
  memcpy(v76, v81, sizeof(v76));
  swift_getKeyPath();
  memcpy(v79, v76, 0x78uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853220);
  sub_1B3C9BE08();

  sub_1B371B36C(v76, &qword_1EB853220);
  v45 = *v77;
  v43 = *&v77[24];
  v44 = *&v77[16];
  memcpy(v83, v74, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v77, v67, sizeof(v77));
  swift_getKeyPath();
  memcpy(v83, v77, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v77, &qword_1EB853178);
  memcpy(v78, v81, sizeof(v78));
  swift_getKeyPath();
  memcpy(v79, v78, 0x78uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v78, &qword_1EB853220);
  v41 = v71[1];
  v42 = v71[0];
  v39 = v71[3];
  v40 = v71[2];
  memcpy(v83, v74, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v79, v67, 0x134uLL);
  swift_getKeyPath();
  memcpy(v83, v79, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v79, &qword_1EB853178);
  memcpy(v80, v81, sizeof(v80));
  swift_getKeyPath();
  memcpy(v71, v80, 0x78uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v80, &qword_1EB853220);
  v35 = v68[1];
  v36 = v68[0];
  v33 = v68[3];
  v34 = v68[2];
  memcpy(v83, v74, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v81, v67, 0x134uLL);
  swift_getKeyPath();
  memcpy(v83, v81, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v81, &qword_1EB853178);
  memcpy(v82, v71, sizeof(v82));
  swift_getKeyPath();
  memcpy(v68, v82, 0x78uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v82, &qword_1EB853220);
  sub_1B376D60C(0xD000000000000012, 0x80000001B3D12870, __dst[0], __dst[1], __dst[2], __dst[3], v72);
  memcpy(v83, v74, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v83, v67, 0x134uLL);
  swift_getKeyPath();
  memcpy(v71, v83, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v83, &qword_1EB853178);
  memcpy(__dst, v68, 0x78uLL);
  swift_getKeyPath();
  memcpy(v70, __dst, sizeof(v70));
  sub_1B3C9BE08();

  sub_1B371B36C(__dst, &qword_1EB853220);
  v15 = v37;
  v56 = v37;
  v57 = v61;
  *&v58 = v62;
  v69 = xmmword_1B3CFCEC0;
  v68[37] = 1;
  v16 = v52;
  sub_1B3C9BEE8();
  memcpy(v67, v74, 0x130uLL);
  sub_1B3C9BC98();
  memcpy(v71, v68, 0x124uLL);
  v17 = v71[18];

  sub_1B3768988(v71);
  v18 = *(v17 + 16);

  v70[0] = 0;
  v70[1] = v18;
  swift_getKeyPath();
  v19 = swift_allocObject();
  memcpy((v19 + 16), v15, 0x160uLL);
  sub_1B3770C5C(v15, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8537A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853198);
  sub_1B3776650();
  sub_1B3776730();
  v20 = v53;
  sub_1B3C9BE88();
  v21 = sub_1B3C9AF18();
  v22 = v38;
  *v38 = v21;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853228);
  sub_1B376E078(v15);
  v68[0] = 0x6D207265646E6572;
  v68[1] = 0xEB0000000065646FLL;
  v68[2] = &unk_1F2AB2EE8;
  *&v68[3] = v45;
  v68[5] = v44;
  v68[6] = v43;
  strcpy(v70, "emitter shape");
  HIWORD(v70[1]) = -4864;
  v70[2] = &unk_1F2AB2F58;
  v70[3] = v42;
  v70[4] = v41;
  v70[5] = v40;
  v70[6] = v39;
  v67[0] = v68;
  v67[1] = v70;
  strcpy(&v61, "emitter mode");
  BYTE13(v61) = 0;
  HIWORD(v61) = -5120;
  v62 = &unk_1F2AB2FD8;
  v63 = v36;
  v64 = v35;
  v65 = v34;
  v66 = v33;
  v57 = v72[0];
  v58 = v72[1];
  v59 = v72[2];
  v60 = v73;
  v67[2] = &v61;
  v67[3] = &v57;
  v23 = v46;
  v24 = v47;
  v25 = v54;
  (*(v46 + 16))(v54, v16, v47);
  v67[4] = v25;
  v27 = v48;
  v26 = v49;
  v28 = v55;
  (*(v48 + 16))(v55, v20, v49);
  v67[5] = v28;
  v29 = v50;
  sub_1B37772C8(v22, v50, &qword_1EB853210);
  v67[6] = v29;
  sub_1B375E9C8(v67, v51);
  sub_1B371B36C(v22, &qword_1EB853210);
  v30 = *(v27 + 8);
  v30(v53, v26);
  v31 = *(v23 + 8);
  v31(v52, v24);
  sub_1B371B36C(v29, &qword_1EB853210);
  v30(v55, v26);
  v31(v54, v24);
}

void sub_1B376D60C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B3CFCED0;
  *(v14 + 32) = sub_1B3C9C5E8();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_1B3C9C5E8();
  *(v14 + 56) = v16;
  *(v14 + 64) = sub_1B3C9C5E8();
  *(v14 + 72) = v17;
  *(v14 + 80) = sub_1B3C9C5E8();
  *(v14 + 88) = v18;
  *(v14 + 96) = sub_1B3C9C5E8();
  *(v14 + 104) = v19;
  *(v14 + 112) = sub_1B3C9C5E8();
  *(v14 + 120) = v20;
  *(v14 + 128) = sub_1B3C9C5E8();
  *(v14 + 136) = v21;
  *(v14 + 144) = sub_1B3C9C5E8();
  *(v14 + 152) = v22;
  *(v14 + 160) = sub_1B3C9C5E8();
  *(v14 + 168) = v23;
  *(v14 + 176) = sub_1B3C9C5E8();
  *(v14 + 184) = v24;
  *(v14 + 192) = sub_1B3C9C5E8();
  *(v14 + 200) = v25;
  *(v14 + 208) = sub_1B3C9C5E8();
  *(v14 + 216) = v26;
  *(v14 + 224) = sub_1B3C9C5E8();
  *(v14 + 232) = v27;
  *(v14 + 240) = sub_1B3C9C5E8();
  *(v14 + 248) = v28;
  *(v14 + 256) = sub_1B3C9C5E8();
  *(v14 + 264) = v29;
  *(v14 + 272) = sub_1B3C9C5E8();
  *(v14 + 280) = v30;
  *(v14 + 288) = sub_1B3C9C5E8();
  *(v14 + 296) = v31;
  *(v14 + 304) = sub_1B3C9C5E8();
  *(v14 + 312) = v32;
  *(v14 + 320) = sub_1B3C9C5E8();
  *(v14 + 328) = v33;
  *(v14 + 336) = sub_1B3C9C5E8();
  *(v14 + 344) = v34;
  *(v14 + 352) = sub_1B3C9C5E8();
  *(v14 + 360) = v35;
  *(v14 + 368) = sub_1B3C9C5E8();
  *(v14 + 376) = v36;
  *(v14 + 384) = sub_1B3C9C5E8();
  *(v14 + 392) = v37;
  *(v14 + 400) = sub_1B3C9C5E8();
  *(v14 + 408) = v38;
  *(v14 + 416) = sub_1B3C9C5E8();
  *(v14 + 424) = v39;
  *(v14 + 432) = sub_1B3C9C5E8();
  *(v14 + 440) = v40;
  *(v14 + 448) = sub_1B3C9C5E8();
  *(v14 + 456) = v41;
  *(v14 + 464) = sub_1B3C9C5E8();
  *(v14 + 472) = v42;
  *(v14 + 480) = sub_1B3C9C5E8();
  *(v14 + 488) = v43;
  *(v14 + 496) = sub_1B3C9C5E8();
  *(v14 + 504) = v44;
  *(v14 + 512) = sub_1B3C9C5E8();
  *(v14 + 520) = v45;
  *(v14 + 528) = sub_1B3C9C5E8();
  *(v14 + 536) = v46;
  *(v14 + 544) = sub_1B3C9C5E8();
  *(v14 + 552) = v47;
  *(v14 + 560) = sub_1B3C9C5E8();
  *(v14 + 568) = v48;
  *(v14 + 576) = sub_1B3C9C5E8();
  *(v14 + 584) = v49;
  *(v14 + 592) = sub_1B3C9C5E8();
  *(v14 + 600) = v50;
  *(v14 + 608) = sub_1B3C9C5E8();
  *(v14 + 616) = v51;
  *(v14 + 624) = sub_1B3C9C5E8();
  *(v14 + 632) = v52;
  *(v14 + 640) = sub_1B3C9C5E8();
  *(v14 + 648) = v53;
  *(v14 + 656) = sub_1B3C9C5E8();
  *(v14 + 664) = v54;
  *(v14 + 672) = sub_1B3C9C5E8();
  *(v14 + 680) = v55;
  *(v14 + 688) = sub_1B3C9C5E8();
  *(v14 + 696) = v56;
  *(v14 + 704) = sub_1B3C9C5E8();
  *(v14 + 712) = v57;
  *(v14 + 720) = 0xD000000000000010;
  OUTLINED_FUNCTION_102();
  *(v14 + 728) = v58;
  *(v14 + 736) = v59;
  OUTLINED_FUNCTION_102();
  *(v14 + 744) = v60;
  *(v14 + 752) = v61 | 4;
  OUTLINED_FUNCTION_102();
  *(v14 + 760) = v62;
  *(v14 + 768) = v63 | 0xF;
  OUTLINED_FUNCTION_102();
  *(v14 + 776) = v64;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = v14;
  a7[3] = a3;
  a7[4] = a4;
  a7[5] = a5;
  a7[6] = a6;
}

uint64_t sub_1B376DA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B3C9AF68();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B3C9AF58();
  sub_1B3C9AF48();
  memcpy(v9, (a1 + 48), sizeof(v9));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BC98();
  memcpy(v9, v10, 0x124uLL);
  sub_1B3768988(v9);
  sub_1B3C9AF28();
  sub_1B3C9AF48();
  sub_1B3C9AF88();
  result = sub_1B3C9B798();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

void *sub_1B376DC08@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  memcpy(__dst, (a2 + 48), 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BCB8();
  memcpy(__dst, __src, 0x134uLL);
  swift_getKeyPath();
  memcpy(v34, __dst, sizeof(v34));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853178);
  sub_1B3C9BE08();

  sub_1B371B36C(__dst, &qword_1EB853178);
  memcpy(v38, v27, sizeof(v38));
  swift_getKeyPath();
  memcpy(v26, v38, 0x78uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853220);
  sub_1B3C9BE08();

  sub_1B371B36C(v38, &qword_1EB853220);
  v41[0] = v25[0];
  v41[1] = v25[1];
  v41[2] = v25[2];
  v39[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8531D8);
  sub_1B370ED54(&qword_1EB8531E0, &qword_1EB852C60);
  sub_1B3C9BE38();
  memcpy(v39, v33, sizeof(v39));

  memcpy(v40, v39, sizeof(v40));
  memcpy(__src, (a2 + 48), 0x130uLL);
  sub_1B3C9BC98();
  result = memcpy(__src, v34, 0x124uLL);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= *(__src[18] + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  memcpy(v41, (__src[18] + 120 * v5 + 32), 0x78uLL);
  sub_1B37616E4(v41, v33);
  sub_1B3768988(__src);
  v7 = v41[13];
  v8 = v41[14];
  v9 = sub_1B3C9B588();
  v27[0] = 0;
  sub_1B3C9BC88();
  v10 = v33[0];
  v11 = v33[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8531E8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B3CFA2E0;
  sub_1B37772C8(v39, v33, &qword_1EB852F88);
  v13 = sub_1B3C9B538();
  *(v12 + 32) = v13;
  v14 = sub_1B3C9B558();
  *(v12 + 33) = v14;
  v15 = sub_1B3C9B548();
  sub_1B3C9B548();
  if (sub_1B3C9B548() != v13)
  {
    v15 = sub_1B3C9B548();
  }

  sub_1B3C9B548();
  if (sub_1B3C9B548() != v14)
  {
    v15 = sub_1B3C9B548();
  }

  memcpy(v26, v40, 0x88uLL);
  v26[17] = v7;
  v26[18] = v8;
  LOBYTE(v26[19]) = v10;
  v26[20] = v11;
  v26[21] = v9;
  sub_1B3C9A738();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1B371B36C(v39, &qword_1EB852F88);
  memcpy(v33, v26, sizeof(v33));
  v36 = 0;
  memcpy(v27, v40, sizeof(v27));
  v28 = v7;
  v29 = v8;
  v30 = v10;
  v31 = v11;
  v32 = v9;
  sub_1B37772C8(v26, v25, &qword_1EB8531B8);
  sub_1B371B36C(v27, &qword_1EB8531B8);
  v24 = v36;
  result = memcpy(a3, v33, 0xB0uLL);
  *(a3 + 176) = v15;
  *(a3 + 184) = v17;
  *(a3 + 192) = v19;
  *(a3 + 200) = v21;
  *(a3 + 208) = v23;
  *(a3 + 216) = v24;
  return result;
}

uint64_t sub_1B376E078(uint64_t a1)
{
  memcpy(__dst, (a1 + 48), 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BC98();
  memcpy(v10, __src, 0x124uLL);
  v2 = v10[20];

  sub_1B3768988(v10);
  v3 = *(v2 + 16);

  v7 = 0;
  v8 = v3;
  swift_getKeyPath();
  v4 = swift_allocObject();
  memcpy((v4 + 16), a1, 0x160uLL);
  sub_1B3770C5C(a1, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8537A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853238);
  sub_1B3776650();
  sub_1B370ED54(&qword_1EB853240, &qword_1EB853238);
  return sub_1B3C9BE88();
}

uint64_t sub_1B376E214(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a2 + 48), 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BCB8();
  memcpy(__dst, __src, 0x134uLL);
  swift_getKeyPath();
  memcpy(v5, __dst, sizeof(v5));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853178);
  sub_1B3C9BE08();

  sub_1B371B36C(__dst, &qword_1EB853178);
  memcpy(v8, v4, sizeof(v8));
  swift_getKeyPath();
  memcpy(v3, v8, sizeof(v3));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853220);
  sub_1B3C9BE08();

  sub_1B371B36C(v8, &qword_1EB853220);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853248);
  sub_1B3C9BE08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853250);
  sub_1B370ED54(&qword_1EB853258, &qword_1EB852CF0);
  sub_1B3C9BE38();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853260);
  sub_1B3C9BE08();

  return sub_1B3C9A7C8();
}

CGColorRef sub_1B376E530@<X0>(CGFloat *a1@<X0>, CGColorRef *a2@<X8>)
{
  result = j__CGColorCreateGenericRGB(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

uint64_t sub_1B376E58C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B3C9AF68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B3C9AF58();
  sub_1B3C9AF48();
  sub_1B3C9AF28();
  sub_1B3C9AF48();
  sub_1B3C9AF88();
  result = sub_1B3C9B798();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1B376E6A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (a1 + 48), 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BCB8();
  memcpy(v31, __src, 0x134uLL);
  swift_getKeyPath();
  memcpy(__dst, v31, 0x134uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853178);
  sub_1B3C9BE08();

  sub_1B371B36C(v31, &qword_1EB853178);
  swift_getKeyPath();
  v29[0] = v30[0];
  v29[1] = v30[1];
  v29[2] = v30[2];
  LODWORD(v29[3]) = v30[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853208);
  sub_1B3C9BE08();

  v26 = v47[0];
  v23 = v47[1];
  v3 = v48;
  LOBYTE(v41) = 0;
  sub_1B3C9BC88();
  v24 = v44;
  v25 = *(&v44 + 1);
  memcpy(__dst, (a1 + 48), 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(__dst, __src, 0x134uLL);
  swift_getKeyPath();
  memcpy(v30, __dst, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(__dst, &qword_1EB853178);
  swift_getKeyPath();
  v47[0] = v29[0];
  v47[1] = v29[1];
  v48 = v29[2];
  LODWORD(v49) = v29[3];
  sub_1B3C9BE08();

  v4 = v44;
  v5 = *v45;
  LOBYTE(v37) = 0;
  sub_1B3C9BC88();
  v20 = v41;
  v21 = *(&v41 + 1);
  memcpy(__src, (a1 + 48), 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(__src, v30, 0x134uLL);
  swift_getKeyPath();
  memcpy(v29, __src, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(__src, &qword_1EB853178);
  v6 = v47[0];
  v7 = v47[1];
  v8 = v49;
  v9 = v48;
  swift_getKeyPath();
  *&v44 = v6;
  *(&v44 + 1) = v7;
  *v45 = v9;
  *&v45[8] = v8;
  sub_1B3C9BE08();

  v10 = v41;
  LODWORD(v9) = *v42;
  v28 = 0;
  sub_1B3C9BC88();
  v11 = v37;
  v12 = *(&v37 + 1);
  *&v37 = 0x697469736F702078;
  *(&v37 + 1) = 0xEA00000000006E6FLL;
  __asm { FMOV            V0.2S, #-1.0 }

  v18 = -_D0;
  *&v38 = -_D0;
  *(&v38 + 1) = v26;
  *&v39 = v23;
  DWORD2(v39) = v3;
  LOBYTE(v40) = v24;
  DWORD1(v40) = *&v32[3];
  *(&v40 + 1) = *v32;
  *(&v40 + 1) = v25;
  v27[2] = v39;
  v27[3] = v40;
  v27[0] = v37;
  v27[1] = v38;
  *&v41 = 0x697469736F702079;
  *(&v41 + 1) = 0xEA00000000006E6FLL;
  *v42 = -_D0;
  *&v42[8] = v4;
  *&v42[24] = v5;
  LOBYTE(v43) = v20;
  DWORD1(v43) = *&v34[3];
  *(&v43 + 1) = *v34;
  *(&v43 + 1) = v21;
  v27[6] = *&v42[16];
  v27[7] = v43;
  v27[4] = v41;
  v27[5] = *v42;
  strcpy(&v44, "brush Radius");
  BYTE13(v44) = 0;
  HIWORD(v44) = -5120;
  *v45 = 0x400000003DCCCCCDLL;
  *&v45[8] = v10;
  *&v45[24] = v9;
  LOBYTE(v46) = v11;
  DWORD1(v46) = *&v36[3];
  *(&v46 + 1) = *v36;
  *(&v46 + 1) = v12;
  v27[10] = *&v45[16];
  v27[11] = v46;
  v27[8] = v44;
  v27[9] = *v45;
  memcpy(a2, v27, 0xC0uLL);
  strcpy(v47, "brush Radius");
  BYTE5(v47[1]) = 0;
  HIWORD(v47[1]) = -5120;
  v48 = 0x400000003DCCCCCDLL;
  v49 = v10;
  v50 = v9;
  v51 = v11;
  *v52 = *v36;
  *&v52[3] = *&v36[3];
  v53 = v12;
  sub_1B3776380(&v37, v30);
  sub_1B3776380(&v41, v30);
  sub_1B3776380(&v44, v30);
  sub_1B3776350(v47);
  v29[0] = 0x697469736F702079;
  v29[1] = 0xEA00000000006E6FLL;
  *&v29[2] = v18;
  *&v29[3] = v4;
  LODWORD(v29[5]) = v5;
  LOBYTE(v29[6]) = v20;
  *(&v29[6] + 1) = *v34;
  HIDWORD(v29[6]) = *&v34[3];
  v29[7] = v21;
  sub_1B3776350(v29);
  v30[0] = 0x697469736F702078;
  v30[1] = 0xEA00000000006E6FLL;
  *&v30[2] = v18;
  v30[3] = v26;
  v30[4] = v23;
  LODWORD(v30[5]) = v3;
  LOBYTE(v30[6]) = v24;
  *(&v30[6] + 1) = *v32;
  HIDWORD(v30[6]) = *&v32[3];
  v30[7] = v25;
  return sub_1B3776350(v30);
}

uint64_t sub_1B376ECC8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v40 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853188);
  v51 = *(v39 - 8);
  v3 = MEMORY[0x1EEE9AC00](v39);
  v50 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v33 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C08);
  v47 = *(v49 - 8);
  v6 = MEMORY[0x1EEE9AC00](v49);
  v46 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v33 - v8;
  memcpy(v61, (a1 + 48), sizeof(v61));
  memcpy(v68, (a1 + 48), 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BCB8();
  memcpy(v62, v57, 0x134uLL);
  swift_getKeyPath();
  memcpy(v68, v62, 0x134uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853178);
  sub_1B3C9BE08();

  sub_1B371B36C(v62, &qword_1EB853178);
  memcpy(v63, v66, sizeof(v63));
  swift_getKeyPath();
  memcpy(v64, v63, 0x50uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853190);
  sub_1B3C9BE08();

  sub_1B371B36C(v63, &qword_1EB853190);
  v54 = v60[0];
  v55 = v60[1];
  v38 = v60[2];
  v45 = v60[3];
  memcpy(v68, v61, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v64, v57, 0x134uLL);
  swift_getKeyPath();
  memcpy(v68, v64, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v64, &qword_1EB853178);
  memcpy(v65, v66, sizeof(v65));
  swift_getKeyPath();
  memcpy(v60, v65, 0x50uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v65, &qword_1EB853190);
  v56 = v58[0];
  v36 = v58[2];
  v43 = v58[1];
  v44 = v58[3];
  memcpy(v68, v61, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v66, v57, 0x134uLL);
  swift_getKeyPath();
  memcpy(v68, v66, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v66, &qword_1EB853178);
  memcpy(v67, v60, sizeof(v67));
  swift_getKeyPath();
  memcpy(v58, v67, 0x50uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v67, &qword_1EB853190);
  v52 = __dst[1];
  v53 = __dst[0];
  v35 = __dst[2];
  v41 = __dst[3];
  sub_1B3C9AF78();
  memcpy(v68, v61, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v68, v57, 0x134uLL);
  swift_getKeyPath();
  memcpy(v60, v68, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v68, &qword_1EB853178);
  memcpy(__dst, v58, 0x50uLL);
  swift_getKeyPath();
  memcpy(v59, __dst, sizeof(v59));
  sub_1B3C9BE08();

  sub_1B371B36C(__dst, &qword_1EB853190);
  v9 = v42;
  sub_1B3C9BDA8();
  memcpy(v57, v61, 0x130uLL);
  sub_1B3C9BC98();
  memcpy(v60, v58, 0x124uLL);
  v10 = v60[30];

  sub_1B3768988(v60);
  v11 = *(v10 + 16);

  v59[0] = 0;
  v59[1] = v11;
  swift_getKeyPath();
  v12 = swift_allocObject();
  v13 = v37;
  memcpy((v12 + 16), v37, 0x160uLL);
  sub_1B3770C5C(v13, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8537A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853198);
  sub_1B3776650();
  sub_1B3776730();
  v14 = v48;
  sub_1B3C9BE88();
  v15 = v46;
  v37 = *(v47 + 16);
  v16 = v49;
  (v37)(v46, v9, v49);
  v17 = v50;
  v34 = *(v51 + 16);
  v18 = v39;
  v34(v50, v14, v39);
  v19 = v40;
  *v40 = 0x6D207265646E6572;
  *(v19 + 1) = 0xEB0000000065646FLL;
  v21 = v54;
  v20 = v55;
  *(v19 + 2) = &unk_1F2AB2EE8;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  v22 = v45;
  *(v19 + 5) = v38;
  *(v19 + 6) = v22;
  strcpy(v19 + 56, "emitter shape");
  *(v19 + 35) = -4864;
  v23 = v56;
  *(v19 + 9) = &unk_1F2AB2F58;
  *(v19 + 10) = v23;
  v24 = v36;
  *(v19 + 11) = v43;
  *(v19 + 12) = v24;
  *(v19 + 13) = v44;
  strcpy(v19 + 112, "emitter mode");
  v19[125] = 0;
  *(v19 + 63) = -5120;
  *(v19 + 16) = &unk_1F2AB2FD8;
  v25 = v52;
  *(v19 + 17) = v53;
  *(v19 + 18) = v25;
  v26 = v41;
  *(v19 + 19) = v35;
  *(v19 + 20) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8531D0);
  (v37)(&v19[*(v27 + 80)], v15, v16);
  v34(&v19[*(v27 + 96)], v17, v18);
  v28 = *(v51 + 8);

  v29 = v18;
  v28(v48, v18);
  v30 = *(v47 + 8);
  v31 = v49;
  v30(v42, v49);
  v28(v50, v29);
  v30(v46, v31);
}

void *sub_1B376F740@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  memcpy(__dst, (a2 + 48), 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BCB8();
  memcpy(__dst, __src, 0x134uLL);
  swift_getKeyPath();
  memcpy(v34, __dst, sizeof(v34));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853178);
  sub_1B3C9BE08();

  sub_1B371B36C(__dst, &qword_1EB853178);
  memcpy(v38, v27, sizeof(v38));
  swift_getKeyPath();
  memcpy(v26, v38, 0x50uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853190);
  sub_1B3C9BE08();

  sub_1B371B36C(v38, &qword_1EB853190);
  v41[0] = v25[0];
  v41[1] = v25[1];
  v41[2] = v25[2];
  v39[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8531D8);
  sub_1B370ED54(&qword_1EB8531E0, &qword_1EB852C60);
  sub_1B3C9BE38();
  memcpy(v39, v33, sizeof(v39));

  memcpy(v40, v39, sizeof(v40));
  memcpy(__src, (a2 + 48), 0x130uLL);
  sub_1B3C9BC98();
  result = memcpy(__src, v34, 0x124uLL);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= *(__src[30] + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  memcpy(v41, (__src[30] + 120 * v5 + 32), 0x78uLL);
  sub_1B37616E4(v41, v33);
  sub_1B3768988(__src);
  v7 = v41[13];
  v8 = v41[14];
  v9 = sub_1B3C9B588();
  v27[0] = 0;
  sub_1B3C9BC88();
  v10 = v33[0];
  v11 = v33[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8531E8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B3CFA2E0;
  sub_1B37772C8(v39, v33, &qword_1EB852F88);
  v13 = sub_1B3C9B538();
  *(v12 + 32) = v13;
  v14 = sub_1B3C9B558();
  *(v12 + 33) = v14;
  v15 = sub_1B3C9B548();
  sub_1B3C9B548();
  if (sub_1B3C9B548() != v13)
  {
    v15 = sub_1B3C9B548();
  }

  sub_1B3C9B548();
  if (sub_1B3C9B548() != v14)
  {
    v15 = sub_1B3C9B548();
  }

  memcpy(v26, v40, 0x88uLL);
  v26[17] = v7;
  v26[18] = v8;
  LOBYTE(v26[19]) = v10;
  v26[20] = v11;
  v26[21] = v9;
  sub_1B3C9A738();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1B371B36C(v39, &qword_1EB852F88);
  memcpy(v33, v26, sizeof(v33));
  v36 = 0;
  memcpy(v27, v40, sizeof(v27));
  v28 = v7;
  v29 = v8;
  v30 = v10;
  v31 = v11;
  v32 = v9;
  sub_1B37772C8(v26, v25, &qword_1EB8531B8);
  sub_1B371B36C(v27, &qword_1EB8531B8);
  v24 = v36;
  result = memcpy(a3, v33, 0xB0uLL);
  *(a3 + 176) = v15;
  *(a3 + 184) = v17;
  *(a3 + 192) = v19;
  *(a3 + 200) = v21;
  *(a3 + 208) = v23;
  *(a3 + 216) = v24;
  return result;
}

uint64_t sub_1B376FBB0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v32 = v2;
  memcpy(__dst, (v1 + 48), sizeof(__dst));
  memcpy(v87, (v1 + 48), 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BCB8();
  memcpy(v62, __src, 0x134uLL);
  swift_getKeyPath();
  memcpy(v87, v62, 0x134uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853178);
  sub_1B3C9BE08();

  sub_1B371B36C(v62, &qword_1EB853178);
  v63 = *v82;
  v64 = *&v82[16];
  v65[0] = *&v82[32];
  *(v65 + 12) = *&v82[44];
  swift_getKeyPath();
  v77[0] = v63;
  v77[1] = v64;
  v77[2] = v65[0];
  *(&v77[2] + 12) = *(v65 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853180);
  sub_1B3C9BE08();

  sub_1B371B36C(&v63, &qword_1EB853180);
  v30 = v72[1];
  v31 = v72[0];
  v3 = v72[2];
  v60[0] = 0;
  sub_1B3C9BC88();
  v28 = v67[0];
  v29 = v67[1];
  memcpy(v87, (v1 + 48), 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v67, __src, 0x134uLL);
  swift_getKeyPath();
  memcpy(v87, v67, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v67, &qword_1EB853178);
  v68 = *v82;
  v69 = *&v82[16];
  v70[0] = *&v82[32];
  *(v70 + 12) = *&v82[44];
  swift_getKeyPath();
  v77[0] = v68;
  v77[1] = v69;
  v77[2] = v70[0];
  *(&v77[2] + 12) = *(v70 + 12);
  sub_1B3C9BE08();

  sub_1B371B36C(&v68, &qword_1EB853180);
  v26 = v72[1];
  v27 = v72[0];
  v4 = v72[2];
  LOBYTE(v59[0]) = 0;
  sub_1B3C9BC88();
  v25 = *&v60[8];
  memcpy(v87, (v1 + 48), 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v72, __src, 0x134uLL);
  swift_getKeyPath();
  memcpy(v87, v72, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v72, &qword_1EB853178);
  v73 = *v82;
  v74 = *&v82[16];
  v75[0] = *&v82[32];
  *(v75 + 12) = *&v82[44];
  swift_getKeyPath();
  v77[0] = v73;
  v77[1] = v74;
  v77[2] = v75[0];
  *(&v77[2] + 12) = *(v75 + 12);
  sub_1B3C9BE08();

  sub_1B371B36C(&v73, &qword_1EB853180);
  v23 = *&v60[8];
  v24 = *v60;
  v5 = *&v60[16];
  LOBYTE(v104) = 0;
  sub_1B3C9BC88();
  v22 = *(&v59[0] + 1);
  memcpy(v87, (v1 + 48), 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v77, __src, 0x134uLL);
  swift_getKeyPath();
  memcpy(v87, v77, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v77, &qword_1EB853178);
  v78 = *v82;
  v79 = *&v82[16];
  v80[0] = *&v82[32];
  *(v80 + 12) = *&v82[44];
  swift_getKeyPath();
  *v60 = v78;
  *&v60[16] = v79;
  *&v60[32] = v80[0];
  *&v60[44] = *(v80 + 12);
  sub_1B3C9BE08();

  sub_1B371B36C(&v78, &qword_1EB853180);
  v20 = *(&v59[0] + 1);
  v21 = *&v59[0];
  v6 = v59[1];
  LOBYTE(v101) = 0;
  sub_1B3C9BC88();
  v18 = v104;
  v19 = *(&v104 + 1);
  memcpy(v87, __dst, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v82, __src, sizeof(v82));
  swift_getKeyPath();
  memcpy(v87, v82, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(v82, &qword_1EB853178);
  v83 = *v60;
  v84 = *&v60[16];
  v85[0] = *&v60[32];
  *(v85 + 12) = *&v60[44];
  swift_getKeyPath();
  v59[0] = v83;
  v59[1] = v84;
  v59[2] = v85[0];
  *(&v59[2] + 12) = *(v85 + 12);
  sub_1B3C9BE08();

  sub_1B371B36C(&v83, &qword_1EB853180);
  v16 = *(&v104 + 1);
  v17 = v104;
  v7 = v105;
  LOBYTE(v97) = 0;
  sub_1B3C9BC88();
  v14 = v101;
  v15 = *(&v101 + 1);
  memcpy(v87, __dst, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(v87, __src, 0x134uLL);
  swift_getKeyPath();
  memcpy(v60, v87, sizeof(v60));
  sub_1B3C9BE08();

  sub_1B371B36C(v87, &qword_1EB853178);
  v88 = v59[0];
  v89 = v59[1];
  v90[0] = v59[2];
  *(v90 + 12) = *(&v59[2] + 12);
  swift_getKeyPath();
  v104 = v88;
  v105 = v89;
  *v106 = v90[0];
  *&v106[12] = *(v90 + 12);
  sub_1B3C9BE08();

  sub_1B371B36C(&v88, &qword_1EB853180);
  v12 = *(&v101 + 1);
  v13 = v101;
  v8 = v102;
  LOBYTE(v96[0]) = 0;
  sub_1B3C9BC88();
  v10 = v97;
  v11 = *(&v97 + 1);
  memcpy(__src, __dst, 0x130uLL);
  sub_1B3C9BCB8();
  memcpy(__src, v60, 0x134uLL);
  swift_getKeyPath();
  memcpy(v59, __src, 0x134uLL);
  sub_1B3C9BE08();

  sub_1B371B36C(__src, &qword_1EB853178);
  v93 = v104;
  v94 = v105;
  v95[0] = *v106;
  *(v95 + 12) = *&v106[12];
  swift_getKeyPath();
  v101 = v93;
  v102 = v94;
  *v103 = v95[0];
  *&v103[12] = *(v95 + 12);
  sub_1B3C9BE08();

  sub_1B371B36C(&v93, &qword_1EB853180);
  sub_1B376D60C(0xD000000000000012, 0x80000001B3D12870, v97, *(&v97 + 1), v98, *(&v98 + 1), &v33);
  *(&v55 + 1) = v31;
  *&v56 = v30;
  LOBYTE(v57) = v28;
  *(&v57 + 1) = *v66;
  DWORD1(v57) = *&v66[3];
  *(&v57 + 1) = v29;
  *&v50 = 0x73656E6B63696874;
  *(&v50 + 1) = 0xE900000000000073;
  *(&v51 + 1) = v27;
  *&v52 = v26;
  LOBYTE(v53) = 0;
  *(&v53 + 1) = *v71;
  DWORD1(v53) = *&v71[3];
  *(&v53 + 1) = v25;
  v58[1] = &v50;
  *(&v47 + 1) = v24;
  *&v48 = v23;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = *v76;
  DWORD1(v49) = *&v76[3];
  *(&v49 + 1) = v22;
  v58[2] = &v46;
  strcpy(&v42, "rotation range");
  HIBYTE(v42) = -18;
  *(&v43 + 1) = v21;
  *&v44 = v20;
  LOBYTE(v45) = v18;
  *(&v45 + 1) = *v81;
  DWORD1(v45) = *&v81[3];
  *(&v45 + 1) = v19;
  *&v46 = 0x6769732072756C62;
  *(&v46 + 1) = 0xEA0000000000616DLL;
  v58[3] = &v42;
  *&v38 = 0x726620656C616373;
  *(&v38 + 1) = 0xEA00000000006D6FLL;
  *(&v39 + 1) = v17;
  *&v40 = v16;
  LOBYTE(v41) = v14;
  *(&v41 + 1) = *v86;
  DWORD1(v41) = *&v86[3];
  *(&v41 + 1) = v15;
  *&v34 = 0x6F7420656C616373;
  *(&v34 + 1) = 0xE800000000000000;
  *&v54 = 0x6E6F697461727564;
  *(&v54 + 1) = 0xE800000000000000;
  *(&v35 + 1) = v13;
  *&v36 = v12;
  LOBYTE(v37) = v10;
  *(&v37 + 1) = *v91;
  DWORD1(v37) = *&v91[3];
  *(&v37 + 1) = v11;
  v58[5] = &v34;
  v58[6] = &v33;
  v58[0] = &v54;
  v58[4] = &v38;
  DWORD2(v56) = v3;
  *&v55 = 0x4120000000000000;
  *&v51 = 0x4120000000000000;
  DWORD2(v52) = v4;
  *&v47 = 0x4100000000000000;
  DWORD2(v48) = v5;
  *&v43 = 0x3F4CCCCD00000000;
  DWORD2(v44) = v6;
  *&v39 = 0x4080000000000000;
  DWORD2(v40) = v7;
  *&v35 = 0x4080000000000000;
  DWORD2(v36) = v8;
  sub_1B375EC4C(v58, v32);

  v96[0] = v34;
  v96[1] = v35;
  v96[2] = v36;
  v96[3] = v37;
  sub_1B3776350(v96);
  v97 = v38;
  v98 = v39;
  v99 = v40;
  v100 = v41;
  sub_1B3776350(&v97);
  v101 = v42;
  v102 = v43;
  *v103 = v44;
  *&v103[16] = v45;
  sub_1B3776350(&v101);
  v104 = v46;
  v105 = v47;
  *v106 = v48;
  *&v106[16] = v49;
  sub_1B3776350(&v104);
  v59[0] = v50;
  v59[1] = v51;
  v59[2] = v52;
  v59[3] = v53;
  sub_1B3776350(v59);
  *v60 = v54;
  *&v60[16] = v55;
  *&v60[32] = v56;
  *&v60[48] = v57;
  return sub_1B3776350(v60);
}

void sub_1B37708E0(uint64_t a1)
{
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  memcpy(__dst, (a1 + 48), sizeof(__dst));
  memcpy(v17, (a1 + 48), sizeof(v17));
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
  sub_1B3C9BC98();
  memcpy(v18, __src, 0x124uLL);
  sub_1B3768988(v18);
  [v3 setHidden_];
  v4 = sub_1B3C9C5A8();
  v5 = [v3 animationForKey_];

  if (!v5)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    [v6 copy];
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
    sub_1B3710718(0, &qword_1EB853080);
    swift_dynamicCast();
    memcpy(v17, __dst, sizeof(v17));
    v7 = __src[0];
    sub_1B3C9BC98();
    memcpy(v15, __src, 0x124uLL);
    sub_1B3768988(v15);
    [v7 setDuration_];

    memcpy(v17, __dst, sizeof(v17));
    sub_1B3C9BC98();
    memcpy(__src, v14, 0x124uLL);
    sub_1B3768988(__src);
    v8 = sub_1B3C9C918();
    [v7 setFromValue_];

    memcpy(v17, __dst, sizeof(v17));
    sub_1B3C9BC98();
    memcpy(v17, v14, 0x124uLL);
    sub_1B3768988(v17);
    v9 = sub_1B3C9C918();
    [v7 setToValue_];

    [v3 removeAllAnimations];
    sub_1B387BD6C(v7, 0xD000000000000018, 0x80000001B3D12850, v3);

LABEL_5:
    goto LABEL_7;
  }

LABEL_7:
  v10 = *(a1 + 16);
  if (v10)
  {
    memcpy(v17, (a1 + 48), sizeof(v17));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852E08);
    sub_1B3C9BC98();
    memcpy(v17, v18, 0x124uLL);
    v11 = sub_1B3770E68();
    v13 = v12;
    sub_1B3768988(v17);
    v10(v11, v13);
    sub_1B36F9DA0(v10);
    sub_1B377659C(v11, v13);
  }
}

unint64_t sub_1B3770C94()
{
  result = qword_1EB852E10;
  if (!qword_1EB852E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852DF8);
    sub_1B370ED54(&qword_1EB852E18, &qword_1EB852E20);
    sub_1B3770D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E10);
  }

  return result;
}

unint64_t sub_1B3770D4C()
{
  result = qword_1EB852E28;
  if (!qword_1EB852E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E28);
  }

  return result;
}

unint64_t sub_1B3770DA0()
{
  result = qword_1EB852E30;
  if (!qword_1EB852E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E30);
  }

  return result;
}

unint64_t sub_1B3770DF8()
{
  result = qword_1EB852E38;
  if (!qword_1EB852E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E38);
  }

  return result;
}

uint64_t sub_1B3770E68()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1B3C97E88();
  swift_allocObject();
  sub_1B3C97E78();
  sub_1B3C97E58();
  sub_1B37765F4();
  v1 = sub_1B3C97E68();

  return v1;
}

uint64_t sub_1B3770F38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 112);
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

uint64_t sub_1B3770F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B3770FEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1B377102C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B37710A4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B37710E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B377113C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 66))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1B377117C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VFXBrushDefaults(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VFXBrushDefaults(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B3771288(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 44))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1B37712C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B377132C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 292))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1B377136C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 292) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 292) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B377142C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 352))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_1B377146C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B3771530(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1B3771570(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B377162C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_93(-1);
  }

  if (a2 < 0 && *(a1 + 56))
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

  return OUTLINED_FUNCTION_93(v2);
}

uint64_t sub_1B3771668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

      return OUTLINED_FUNCTION_92(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_92(result, a2);
    }
  }

  return result;
}

uint64_t sub_1B37716BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B37716FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B3771754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_93(-1);
  }

  if (a2 < 0 && *(a1 + 64))
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

  return OUTLINED_FUNCTION_93(v2);
}

uint64_t sub_1B3771790(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_92(result, a2);
    }

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_92(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFXScannerDefaults.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VFXScannerDefaults.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotoEditToolbarStyle.SizeFamily(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B37719F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFXGlowDefaults.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VFXGlowDefaults.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B3771C34(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFXColorOverLifeBehaviorDefaults.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VFXColorOverLifeBehaviorDefaults.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VFXSparklesDefaults.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B3771F50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for VFXEmitterDefaults.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VFXEmitterDefaults.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B37720E8()
{
  result = qword_1EB852E40;
  if (!qword_1EB852E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E40);
  }

  return result;
}

unint64_t sub_1B3772140()
{
  result = qword_1EB852E48;
  if (!qword_1EB852E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E48);
  }

  return result;
}

unint64_t sub_1B3772198()
{
  result = qword_1EB852E50;
  if (!qword_1EB852E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E50);
  }

  return result;
}

unint64_t sub_1B37721F0()
{
  result = qword_1EB852E58;
  if (!qword_1EB852E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E58);
  }

  return result;
}

unint64_t sub_1B3772248()
{
  result = qword_1EB852E60;
  if (!qword_1EB852E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E60);
  }

  return result;
}

unint64_t sub_1B37722A0()
{
  result = qword_1EB852E68;
  if (!qword_1EB852E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E68);
  }

  return result;
}

unint64_t sub_1B37722F8()
{
  result = qword_1EB852E70;
  if (!qword_1EB852E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E70);
  }

  return result;
}

unint64_t sub_1B3772350()
{
  result = qword_1EB852E78;
  if (!qword_1EB852E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E78);
  }

  return result;
}

unint64_t sub_1B37723A8()
{
  result = qword_1EB852E80;
  if (!qword_1EB852E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E80);
  }

  return result;
}

uint64_t sub_1B3772418@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F80);
  OUTLINED_FUNCTION_0();
  v94 = v3;
  v95 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v93 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v57 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C08);
  OUTLINED_FUNCTION_0();
  v91 = v9;
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v90 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  memcpy(v134, v1, sizeof(v134));
  v87 = sub_1B3C9AF78();
  memcpy(v149, v1, 0x88uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F88);
  sub_1B3C9BE18();
  OUTLINED_FUNCTION_80(v135);
  swift_getKeyPath();
  memcpy(v149, v135, 0x88uLL);
  OUTLINED_FUNCTION_113();

  sub_1B371B36C(v135, &qword_1EB852F88);
  v88 = v14;
  sub_1B3C9BDA8();
  sub_1B3C9AF78();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_80(v136);
  swift_getKeyPath();
  memcpy(v149, v136, 0x88uLL);
  OUTLINED_FUNCTION_113();

  sub_1B371B36C(v136, &qword_1EB852F88);
  v15 = v147[0];
  v16 = v147[1];
  v17 = v147[2];
  if (qword_1EB84FFD8 != -1)
  {
    swift_once();
  }

  v145[0] = v15;
  v145[1] = v16;
  LODWORD(v145[2]) = v17;
  v18 = qword_1EB878CB0;
  sub_1B3C9C0A8();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_80(v137);
  swift_getKeyPath();
  memcpy(v149, v137, 0x88uLL);
  sub_1B3C9BE08();

  OUTLINED_FUNCTION_86(v137);
  OUTLINED_FUNCTION_110();
  v86 = v19;
  v87 = v20;
  v21 = v147[2];
  v143[0] = 0;
  OUTLINED_FUNCTION_95();
  v85 = LOBYTE(v145[0]);
  v84 = v145[1];
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_80(v139);
  swift_getKeyPath();
  v22 = OUTLINED_FUNCTION_89();
  memcpy(v22, v139, 0x88uLL);
  OUTLINED_FUNCTION_54();

  OUTLINED_FUNCTION_86(v139);
  OUTLINED_FUNCTION_110();
  v81 = v23;
  v82 = v24;
  v25 = v147[2];
  v143[0] = 0;
  OUTLINED_FUNCTION_95();
  v80 = LOBYTE(v145[0]);
  v83 = v145[1];
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_80(v141);
  swift_getKeyPath();
  v26 = OUTLINED_FUNCTION_89();
  memcpy(v26, v141, 0x88uLL);
  OUTLINED_FUNCTION_54();

  OUTLINED_FUNCTION_86(v141);
  v76 = v147[0];
  v79 = v147[1];
  v27 = v147[2];
  v143[0] = 0;
  OUTLINED_FUNCTION_95();
  v77 = LOBYTE(v145[0]);
  v78 = v145[1];
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_80(v143);
  swift_getKeyPath();
  v28 = OUTLINED_FUNCTION_89();
  memcpy(v28, v143, 0x88uLL);
  OUTLINED_FUNCTION_54();

  OUTLINED_FUNCTION_86(v143);
  OUTLINED_FUNCTION_110();
  v74 = v29;
  v75 = v30;
  v31 = v147[2];
  LOBYTE(v133[0]) = 0;
  sub_1B3C9BC88();
  v72 = LOBYTE(v145[0]);
  v73 = v145[1];
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_80(v145);
  swift_getKeyPath();
  v32 = OUTLINED_FUNCTION_89();
  memcpy(v32, v145, 0x88uLL);
  OUTLINED_FUNCTION_54();

  OUTLINED_FUNCTION_86(v145);
  OUTLINED_FUNCTION_110();
  v70 = v33;
  v71 = v34;
  v35 = v147[2];
  LOBYTE(v129) = 0;
  sub_1B3C9BC88();
  v68 = LOBYTE(v133[0]);
  v69 = v133[1];
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_80(v147);
  swift_getKeyPath();
  v36 = OUTLINED_FUNCTION_89();
  memcpy(v36, v147, 0x88uLL);
  sub_1B3C9BE08();

  OUTLINED_FUNCTION_86(v147);
  v66 = v133[1];
  v67 = v133[0];
  v37 = v133[2];
  LOBYTE(v159) = 0;
  sub_1B3C9BC88();
  v64 = v129;
  v65 = *(&v129 + 1);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_80(v149);
  swift_getKeyPath();
  memcpy(v133, v149, sizeof(v133));
  sub_1B3C9BE08();

  OUTLINED_FUNCTION_86(v149);
  v62 = *(&v129 + 1);
  v63 = v129;
  v38 = v130;
  LOBYTE(v158[0]) = 0;
  sub_1B3C9BC88();
  v60 = v159;
  v61 = *(&v159 + 1);
  memcpy(v151, v134, 0x88uLL);
  sub_1B3C9BE18();
  memcpy(v151, v133, 0x88uLL);
  swift_getKeyPath();
  OUTLINED_FUNCTION_80(&v129);
  sub_1B3C9BE08();

  OUTLINED_FUNCTION_86(v151);
  v58 = *(&v159 + 1);
  v59 = v159;
  v39 = v160;
  LOBYTE(v157[0]) = 0;
  sub_1B3C9BC88();
  v40 = v158[0];
  v57 = *(&v158[0] + 1);
  v41 = v90;
  v42 = v91;
  v43 = v88;
  v44 = v92;
  (*(v91 + 16))(v90, v88, v92);
  v133[0] = v41;
  v45 = v93;
  v46 = v94;
  v48 = v95;
  v47 = v96;
  (*(v94 + 16))(v93, v96, v95);
  *(&v126 + 1) = v87;
  *&v127 = v86;
  LOBYTE(v128) = v85;
  *(&v128 + 1) = v84;
  *(&v122 + 1) = v82;
  *&v123 = v81;
  LOBYTE(v124) = v80;
  *&v125 = 0x7461526874726962;
  *(&v125 + 1) = 0xE900000000000065;
  *(&v128 + 1) = *v138;
  DWORD1(v128) = *&v138[3];
  v133[2] = &v125;
  *(&v124 + 1) = *v140;
  DWORD1(v124) = *&v140[3];
  *(&v124 + 1) = v83;
  *(&v118 + 1) = v76;
  strcpy(&v117, "lifetimeRange");
  *&v121 = 0x656D69746566696CLL;
  v133[1] = v45;
  *&v126 = 0x461C400041200000;
  DWORD2(v127) = v21;
  *(&v121 + 1) = 0xE800000000000000;
  *&v122 = 0x42C800003DCCCCCDLL;
  DWORD2(v123) = v25;
  HIWORD(v117) = -4864;
  *&v118 = 0x42C8000000000000;
  *&v119 = v79;
  DWORD2(v119) = v27;
  LOBYTE(v120) = v77;
  *(&v120 + 1) = *v142;
  DWORD1(v120) = *&v142[3];
  *(&v120 + 1) = v78;
  v133[3] = &v121;
  v133[4] = &v117;
  *&v113 = 0x797469636F6C6576;
  *(&v113 + 1) = 0xE800000000000000;
  *&v114 = 0x461C400000000000;
  *(&v114 + 1) = v75;
  *&v115 = v74;
  DWORD2(v115) = v31;
  LOBYTE(v116) = v72;
  *(&v116 + 1) = *v144;
  DWORD1(v116) = *&v144[3];
  *(&v116 + 1) = v73;
  strcpy(&v109, "velocityRange");
  HIWORD(v109) = -4864;
  *&v110 = 0x459C400000000000;
  *(&v110 + 1) = v71;
  *&v111 = v70;
  DWORD2(v111) = v35;
  LOBYTE(v112) = v68;
  *(&v112 + 1) = *v146;
  DWORD1(v112) = *&v146[3];
  *(&v112 + 1) = v69;
  v133[5] = &v113;
  v133[6] = &v109;
  *&v105 = 0x656C616373;
  *(&v105 + 1) = 0xE500000000000000;
  *&v106 = 0x42C8000000000000;
  *(&v106 + 1) = v67;
  *&v107 = v66;
  DWORD2(v107) = v37;
  LOBYTE(v108) = v64;
  *(&v108 + 1) = *v148;
  DWORD1(v108) = *&v148[3];
  *(&v108 + 1) = v65;
  *&v101 = 0x6E6152656C616373;
  *(&v101 + 1) = 0xEA00000000006567;
  *&v102 = 0x4248000000000000;
  *(&v102 + 1) = v63;
  *&v103 = v62;
  DWORD2(v103) = v38;
  LOBYTE(v104) = v60;
  *(&v104 + 1) = *v150;
  DWORD1(v104) = *&v150[3];
  *(&v104 + 1) = v61;
  v133[7] = &v105;
  v133[8] = &v101;
  *&v97 = 0x657053656C616373;
  *(&v97 + 1) = 0xEA00000000006465;
  __asm { FMOV            V0.2S, #-1.0 }

  *&v98 = -_D0;
  *(&v98 + 1) = v59;
  *&v99 = v58;
  DWORD2(v99) = v39;
  LOBYTE(v100) = v40;
  *(&v100 + 1) = *v152;
  DWORD1(v100) = *&v152[3];
  *(&v100 + 1) = v57;
  v133[9] = &v97;
  sub_1B375EE04(v133, v89);
  v54 = *(v46 + 8);
  v54(v47, v48);
  v55 = *(v42 + 8);
  v55(v43, v44);
  v153[0] = v97;
  v153[1] = v98;
  v153[2] = v99;
  v153[3] = v100;
  sub_1B3776350(v153);
  v154[0] = v101;
  v154[1] = v102;
  v154[2] = v103;
  v154[3] = v104;
  sub_1B3776350(v154);
  v155[0] = v105;
  v155[1] = v106;
  v155[2] = v107;
  v155[3] = v108;
  sub_1B3776350(v155);
  v156[0] = v109;
  v156[1] = v110;
  v156[2] = v111;
  v156[3] = v112;
  sub_1B3776350(v156);
  v157[0] = v113;
  v157[1] = v114;
  v157[2] = v115;
  v157[3] = v116;
  sub_1B3776350(v157);
  v158[0] = v117;
  v158[1] = v118;
  v158[2] = v119;
  v158[3] = v120;
  sub_1B3776350(v158);
  v159 = v121;
  v160 = v122;
  v161 = v123;
  v162 = v124;
  sub_1B3776350(&v159);
  v129 = v125;
  v130 = v126;
  v131 = v127;
  v132 = v128;
  sub_1B3776350(&v129);
  v54(v45, v48);
  return (v55)(v41, v44);
}

uint64_t sub_1B3773044()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853010);
  OUTLINED_FUNCTION_52();
  sub_1B370ED54(v0, &qword_1EB853010);
  sub_1B371B158();
  return sub_1B3C9AA28();
}

uint64_t sub_1B37730FC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F80);
  v43 = *(v44 - 1);
  MEMORY[0x1EEE9AC00](v44);
  v4 = &v39 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853020);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v39 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853028);
  v45 = *(v47 - 8);
  v7 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853030);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853038);
  v41 = *(v42 - 8);
  v14 = MEMORY[0x1EEE9AC00](v42);
  v50 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  __src[0] = *(a1 + 3);
  LODWORD(__src[1]) = *(a1 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853040);
  sub_1B3C9BE18();
  __src[0] = v52;
  LODWORD(__src[1]) = v53;
  *&v52 = a1[2];
  sub_1B3776434();
  sub_1B3C9BD88();
  sub_1B370ED54(&qword_1EB853050, &qword_1EB853030);
  v49 = v17;
  sub_1B3C9B8D8();
  (*(v11 + 8))(v13, v10);
  v19 = *a1;
  v18 = a1[1];
  __src[0] = *(a1 + 3);
  LODWORD(__src[1]) = *(a1 + 10);

  sub_1B3C9BE18();
  v20 = v52;
  v21 = v53;
  if (qword_1EB84FFD8 != -1)
  {
    swift_once();
  }

  v22 = qword_1EB878CB0;
  *&v52 = v19;
  *(&v52 + 1) = v18;
  __src[0] = v20;
  LODWORD(__src[1]) = v21;
  sub_1B371B158();
  v23 = v22;
  sub_1B3C9C0B8();
  sub_1B3C9C008();
  sub_1B3C9AB98();
  (*(v43 + 32))(v6, v4, v44);
  memcpy(&v6[*(v40 + 36)], __src, 0x70uLL);
  sub_1B3776488();
  v24 = v51;
  sub_1B3C9B8D8();
  sub_1B371B36C(v6, &qword_1EB853020);
  v25 = v41;
  v26 = *(v41 + 16);
  v27 = v50;
  v28 = v42;
  v26(v50, v49, v42);
  v29 = v45;
  v44 = *(v45 + 16);
  v30 = v46;
  v31 = v24;
  v32 = v47;
  v44(v46, v31, v47);
  v33 = v48;
  v26(v48, v27, v28);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853068);
  v35 = &v33[*(v34 + 48)];
  *v35 = 0;
  v35[8] = 1;
  v44(&v33[*(v34 + 64)], v30, v32);
  v36 = *(v29 + 8);
  v36(v51, v32);
  v37 = *(v25 + 8);
  v37(v49, v28);
  v36(v30, v32);
  return (v37)(v50, v28);
}

void sub_1B3773890()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = *(v1 + 16);
  sub_1B3C9C818();
  v6 = *(v2 + 24);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_18_4();
  swift_getWitnessTable();
  v7 = sub_1B3C9BEA8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17_6();
  WitnessTable = swift_getWitnessTable();
  v23 = MEMORY[0x1E6981E70];
  v24 = v5;
  v25 = v7;
  v26 = MEMORY[0x1E6981E60];
  v27 = v6;
  v28 = WitnessTable;
  sub_1B3C9BD78();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852F70);
  sub_1B3C9AB18();
  sub_1B3C9AB18();
  swift_getTupleTypeMetadata3();
  sub_1B3C9C0C8();
  OUTLINED_FUNCTION_53();
  swift_getWitnessTable();
  v9 = sub_1B3C9BD48();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v21 - v17;
  v21[2] = v5;
  v21[3] = v6;
  v22 = v0;
  sub_1B3C9AF18();
  sub_1B3C9BD38();
  OUTLINED_FUNCTION_50();
  swift_getWitnessTable();
  v19 = *(v11 + 16);
  v19(v18, v15, v9);
  v20 = *(v11 + 8);
  v20(v15, v9);
  v19(v4, v18, v9);
  v20(v18, v9);
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B3773B58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a1;
  v64 = a4;
  v63 = sub_1B3C9A7D8();
  v62 = *(v63 - 1);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B3C9BE48();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v48 - v8;
  v9 = sub_1B3C9C818();
  v77 = MEMORY[0x1E6981148];
  v78 = a2;
  v10 = MEMORY[0x1E6981148];
  v79 = MEMORY[0x1E6981138];
  v80 = a3;
  v11 = MEMORY[0x1E6981138];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v77 = v9;
  v78 = a2;
  v79 = OpaqueTypeMetadata2;
  v80 = WitnessTable;
  v81 = a3;
  v14 = sub_1B3C9BEA8();
  v49 = v14;
  v77 = v10;
  v78 = a2;
  v79 = v11;
  v80 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = swift_getWitnessTable();
  v77 = MEMORY[0x1E6981E70];
  v78 = a2;
  v79 = v14;
  v80 = MEMORY[0x1E6981E60];
  v81 = a3;
  v82 = v15;
  v16 = sub_1B3C9BD78();
  v54 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852F70);
  v19 = sub_1B3C9AB18();
  v58 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v57 = sub_1B3C9AB18();
  v65 = *(v57 - 8);
  v22 = MEMORY[0x1EEE9AC00](v57);
  v50 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v56 = &v48 - v24;
  v25 = v60;
  v26 = v60[1];
  v77 = *v60;
  v78 = v26;
  sub_1B371B158();

  v52 = sub_1B3C9B7A8();
  v51 = v27;
  v53 = v28;
  v55 = v29;
  type metadata accessor for PopupMenu();
  v30 = v59;
  sub_1B377384C();
  v67 = a2;
  v68 = a3;
  v69 = v25;
  sub_1B375F54C(v30, sub_1B37772B4, v66, CGSizeMake, v49, v18, MEMORY[0x1E6981E60]);
  v31 = v62;
  v32 = v61;
  v33 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x1E697DC20], v63);
  v34 = swift_getWitnessTable();
  sub_1B3C9B878();
  (*(v31 + 8))(v32, v33);
  (*(v54 + 8))(v18, v16);
  v35 = sub_1B370ED54(&qword_1EB852F68, &qword_1EB852F70);
  v76[5] = v34;
  v76[6] = v35;
  v47 = swift_getWitnessTable();
  sub_1B3C9C008();
  v36 = v50;
  sub_1B3C9BA68();
  (*(v58 + 8))(v21, v19);
  v76[3] = v47;
  v76[4] = MEMORY[0x1E697EBF8];
  v37 = v57;
  v62 = swift_getWitnessTable();
  v38 = v65;
  v39 = *(v65 + 16);
  v40 = v56;
  v39(v56, v36, v37);
  v41 = *(v38 + 8);
  v65 = v38 + 8;
  v63 = v41;
  v42 = v36;
  (v41)(v36, v37);
  v43 = v52;
  v44 = v51;
  v77 = v52;
  v78 = v51;
  LOBYTE(v25) = v53 & 1;
  LOBYTE(v79) = v53 & 1;
  v80 = v55;
  v74 = 0;
  v75 = 1;
  v76[0] = &v77;
  v76[1] = &v74;
  v39(v42, v40, v37);
  v76[2] = v42;
  sub_1B370EFD4(v43, v44, v25);

  v73[0] = MEMORY[0x1E6981148];
  v73[1] = MEMORY[0x1E6981840];
  v73[2] = v37;
  v70 = MEMORY[0x1E6981138];
  v71 = MEMORY[0x1E6981838];
  v72 = v62;
  sub_1B375F3DC(v76, 3, v73);
  sub_1B371B148(v43, v44, v25);

  v45 = v63;
  (v63)(v40, v37);
  v45(v42, v37);
  sub_1B371B148(v77, v78, v79);
}

uint64_t sub_1B3774394@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v19 = a3;
  v5 = sub_1B3C9C818();
  v6 = MEMORY[0x1E6981148];
  v7 = MEMORY[0x1E6981138];
  v21 = v5;
  v22 = a1;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v25 = a2;
  v8 = sub_1B3C9BEA8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  type metadata accessor for PopupMenu();
  sub_1B37745B4();
  v21 = v6;
  v22 = a1;
  OpaqueTypeMetadata2 = v7;
  WitnessTable = a2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v12, v8);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v15(v19, v14, v8);
  return (v16)(v14, v8);
}

void sub_1B37745B4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v25 = v4;
  v5 = *(v2 + 16);
  v6 = sub_1B3C9C818();
  v7 = *(v3 + 24);
  v22 = &unk_1B3D66498;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_18_4();
  WitnessTable = swift_getWitnessTable();
  v30 = v6;
  v31 = v5;
  v32 = OpaqueTypeMetadata2;
  v33 = WitnessTable;
  v34 = v7;
  v8 = sub_1B3C9BEA8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v29 = *(v1 + 16);
  v26 = v5;
  v27 = v7;
  swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = v7;

  v30 = MEMORY[0x1E6981148];
  v31 = v5;
  v32 = MEMORY[0x1E6981138];
  v33 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B3C9BE88();
  v28 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_17_6();
  swift_getWitnessTable();
  v19 = *(v10 + 16);
  v19(v17, v14, v8);
  v20 = *(v10 + 8);
  v20(v14, v8);
  v19(v25, v17, v8);
  v20(v17, v8);
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B377481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v29 = a3;
  v30 = a4;
  v5 = a1;
  v27 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1E6981148];
  v32 = v9;
  v33 = MEMORY[0x1E6981138];
  v34 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v28 = &v27 - v16;
  (*(v6 + 16))(v8, v5, a2);
  v31 = sub_1B3C9C608();
  v32 = v17;
  sub_1B371B158();
  v18 = sub_1B3C9B7A8();
  v20 = v19;
  v31 = v18;
  v32 = v19;
  LOBYTE(v5) = v21 & 1;
  LOBYTE(v33) = v21 & 1;
  v34 = v22;
  j__OUTLINED_FUNCTION_17_3();
  sub_1B370D740();
  sub_1B371B148(v18, v20, v5);

  v23 = *(v12 + 16);
  v24 = v28;
  v23(v28, v15, OpaqueTypeMetadata2);
  v25 = *(v12 + 8);
  v25(v15, OpaqueTypeMetadata2);
  v23(v30, v24, OpaqueTypeMetadata2);
  return (v25)(v24, OpaqueTypeMetadata2);
}

__n128 sub_1B3774AD8@<Q0>(uint64_t a1@<X8>)
{
  v15 = *v1;
  v14 = *(v1 + 2);
  v3 = *(v1 + 40);
  v12 = *(v1 + 24);
  v13 = v3;
  sub_1B371AE2C(&v15, &v9);
  sub_1B37772C8(&v14, &v9, &qword_1EB852F98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FA0);
  sub_1B3C9BE18();
  result = v9;
  v5 = v10;
  v6 = v11;
  v7 = *(&v15 + 1);
  v8 = v14;
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = result;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1B3774B84@<X0>(uint64_t a1@<X8>)
{
  sub_1B3C9B4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F40);
  sub_1B3776088();
  sub_1B3C9A7A8();
  v2 = sub_1B3C9B508();
  sub_1B3C9A738();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F78);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_1B3774C68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B3C9B408();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C9B3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F50);
  sub_1B370ED54(&qword_1EB852F58, &qword_1EB852F50);
  sub_1B37763C8(&qword_1EB852F60, MEMORY[0x1E697CA80]);
  sub_1B3C9B918();
  (*(v3 + 8))(v5, v2);
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F40) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F70) + 28);
  v8 = *MEMORY[0x1E697DC20];
  v9 = sub_1B3C9A7D8();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  result = swift_getKeyPath();
  *v6 = result;
  return result;
}

uint64_t sub_1B3774E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1B3C9B008();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FA8);
  return sub_1B3774ED0(v2, a1, a2 + *(v5 + 44));
}

uint64_t sub_1B3774ED0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FB8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25[-v16];
  *v17 = sub_1B3C9AF18();
  *(v17 + 1) = 0;
  v18 = 1;
  v17[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FC0);
  sub_1B3775190(a1, &v17[*(v19 + 44)]);
  v26 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FC8);
  sub_1B3C9BC98();
  v20 = v25[15];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FD0);
  v22 = v21;
  if ((v20 & 1) == 0)
  {
    (*(*(v21 - 8) + 16))(v11, a2, v21);
    v18 = 0;
  }

  __swift_storeEnumTagSinglePayload(v11, v18, 1, v22);
  sub_1B37772C8(v17, v15, &qword_1EB852FB8);
  sub_1B37772C8(v11, v9, &qword_1EB852FB0);
  sub_1B37772C8(v15, a3, &qword_1EB852FB8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FD8);
  sub_1B37772C8(v9, a3 + *(v23 + 48), &qword_1EB852FB0);
  sub_1B371B36C(v11, &qword_1EB852FB0);
  sub_1B371B36C(v17, &qword_1EB852FB8);
  sub_1B371B36C(v9, &qword_1EB852FB0);
  return sub_1B371B36C(v15, &qword_1EB852FB8);
}

uint64_t sub_1B3775190@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v43 = sub_1B3C9B298();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FE0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FE8);
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - v14;
  v16 = *a1;
  v49 = a1[1];
  v50 = v16;
  v42 = *(a1 + 4);
  v17 = swift_allocObject();
  v18 = a1[1];
  *(v17 + 16) = *a1;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(a1 + 4);
  v46 = a1;
  sub_1B371AE2C(&v50, v48);
  sub_1B37772C8(&v49, v48, &qword_1EB852FC8);

  sub_1B3C9BCE8();
  sub_1B3C9B288();
  sub_1B370ED54(&qword_1EB852FF0, &qword_1EB852FE0);
  sub_1B37763C8(&qword_1EB852FF8, MEMORY[0x1E697C720]);
  v19 = v43;
  sub_1B3C9B858();
  (*(v3 + 8))(v5, v19);
  (*(v7 + 8))(v9, v6);
  sub_1B3C9C008();
  sub_1B3C9A8D8();
  v20 = &v15[*(v11 + 44)];
  v21 = v48[1];
  *v20 = v48[0];
  *(v20 + 1) = v21;
  *(v20 + 2) = v48[2];
  v47 = v50;
  sub_1B371B158();

  v22 = sub_1B3C9B7A8();
  v24 = v23;
  LOBYTE(v11) = v25;
  v26 = sub_1B3C9B778();
  v28 = v27;
  LOBYTE(v5) = v29;
  sub_1B371B148(v22, v24, v11 & 1);

  sub_1B3C9B638();
  v30 = sub_1B3C9B738();
  v32 = v31;
  LOBYTE(v22) = v33;
  v35 = v34;
  sub_1B371B148(v26, v28, v5 & 1);

  v36 = v44;
  sub_1B37772C8(v15, v44, &qword_1EB852FE8);
  v37 = v45;
  sub_1B37772C8(v36, v45, &qword_1EB852FE8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853000);
  v39 = v37 + *(v38 + 48);
  *v39 = v30;
  *(v39 + 8) = v32;
  LOBYTE(v22) = v22 & 1;
  *(v39 + 16) = v22;
  *(v39 + 24) = v35;
  v40 = v37 + *(v38 + 64);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_1B370EFD4(v30, v32, v22);

  sub_1B371B36C(v15, &qword_1EB852FE8);
  sub_1B371B148(v30, v32, v22);

  return sub_1B371B36C(v36, &qword_1EB852FE8);
}

uint64_t sub_1B37756A4()
{
  sub_1B3C9C058();
  sub_1B3C9A9D8();
}

uint64_t sub_1B3775710(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = v3;
  v5 = *(&v3 + 1);
  sub_1B37772C8(&v5, v2, &qword_1EB853008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FC8);
  sub_1B3C9BC98();
  v3 = v4;
  v2[0] = !v2[0];
  sub_1B3C9BCA8();
  return sub_1B371B36C(&v4, &qword_1EB852FC8);
}

uint64_t sub_1B37757E0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FC8);
  sub_1B3C9BC98();
  result = sub_1B3C9BC38();
  *a1 = result;
  return result;
}

unint64_t sub_1B3775958()
{
  result = qword_1EB852E88;
  if (!qword_1EB852E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E88);
  }

  return result;
}

unint64_t sub_1B37759B0()
{
  result = qword_1EB852E90;
  if (!qword_1EB852E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E90);
  }

  return result;
}

unint64_t sub_1B3775A08()
{
  result = qword_1EB852E98;
  if (!qword_1EB852E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852E98);
  }

  return result;
}

unint64_t sub_1B3775A60()
{
  result = qword_1EB852EA0;
  if (!qword_1EB852EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852EA0);
  }

  return result;
}

unint64_t sub_1B3775AB8()
{
  result = qword_1EB852EA8;
  if (!qword_1EB852EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852EA8);
  }

  return result;
}

unint64_t sub_1B3775B10()
{
  result = qword_1EB852EB0;
  if (!qword_1EB852EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852EB0);
  }

  return result;
}

unint64_t sub_1B3775B68()
{
  result = qword_1EB852EB8;
  if (!qword_1EB852EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852EB8);
  }

  return result;
}

unint64_t sub_1B3775BC0()
{
  result = qword_1EB852EC0;
  if (!qword_1EB852EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852EC0);
  }

  return result;
}

unint64_t sub_1B3775C18()
{
  result = qword_1EB852EC8;
  if (!qword_1EB852EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852EC8);
  }

  return result;
}

unint64_t sub_1B3775C70()
{
  result = qword_1EB852ED0;
  if (!qword_1EB852ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852ED0);
  }

  return result;
}

unint64_t sub_1B3775CC8()
{
  result = qword_1EB852ED8;
  if (!qword_1EB852ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852ED8);
  }

  return result;
}

unint64_t sub_1B3775D20()
{
  result = qword_1EB852EE0;
  if (!qword_1EB852EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852EE0);
  }

  return result;
}

unint64_t sub_1B3775D78()
{
  result = qword_1EB852EE8;
  if (!qword_1EB852EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852EE8);
  }

  return result;
}

unint64_t sub_1B3775DD0()
{
  result = qword_1EB852EF0;
  if (!qword_1EB852EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852EF0);
  }

  return result;
}

unint64_t sub_1B3775E28()
{
  result = qword_1EB852EF8;
  if (!qword_1EB852EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852EF8);
  }

  return result;
}

unint64_t sub_1B3775E80()
{
  result = qword_1EB852F00;
  if (!qword_1EB852F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852F00);
  }

  return result;
}

unint64_t sub_1B3775ED8()
{
  result = qword_1EB852F08;
  if (!qword_1EB852F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852F08);
  }

  return result;
}

unint64_t sub_1B3775F30()
{
  result = qword_1EB852F10;
  if (!qword_1EB852F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852F10);
  }

  return result;
}

unint64_t sub_1B3775F84()
{
  result = qword_1EB852F20;
  if (!qword_1EB852F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852F20);
  }

  return result;
}

unint64_t sub_1B3775FD8()
{
  result = qword_1EB852F28;
  if (!qword_1EB852F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852F28);
  }

  return result;
}

unint64_t sub_1B377602C()
{
  result = qword_1EB852F38;
  if (!qword_1EB852F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852F38);
  }

  return result;
}

unint64_t sub_1B3776088()
{
  result = qword_1EB852F48;
  if (!qword_1EB852F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852F50);
    sub_1B3C9B408();
    sub_1B370ED54(&qword_1EB852F58, &qword_1EB852F50);
    sub_1B37763C8(&qword_1EB852F60, MEMORY[0x1E697CA80]);
    swift_getOpaqueTypeConformance2();
    sub_1B370ED54(&qword_1EB852F68, &qword_1EB852F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852F48);
  }

  return result;
}

id sub_1B3776200()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v0 setNumberStyle_];
  [v0 setUsesGroupingSeparator_];
  result = [v0 setMaximumFractionDigits_];
  qword_1EB878CB0 = v0;
  return result;
}

uint64_t sub_1B377629C(uint64_t a1)
{
  sub_1B3C9A7D8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  (*(v6 + 16))(v4 - v3, a1);
  return MEMORY[0x1B8C68200](v5);
}

uint64_t sub_1B37763C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B3776434()
{
  result = qword_1EB853048;
  if (!qword_1EB853048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853048);
  }

  return result;
}

unint64_t sub_1B3776488()
{
  result = qword_1EB853058;
  if (!qword_1EB853058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853020);
    sub_1B370ED54(&qword_1EB853060, &qword_1EB852F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853058);
  }

  return result;
}

unint64_t sub_1B3776540()
{
  result = qword_1EB853070;
  if (!qword_1EB853070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853070);
  }

  return result;
}

uint64_t sub_1B377659C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B37765F4()
{
  result = qword_1EB853088;
  if (!qword_1EB853088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853088);
  }

  return result;
}

unint64_t sub_1B3776650()
{
  result = qword_1EB8531A0;
  if (!qword_1EB8531A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB8537A0);
    sub_1B37766DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8531A0);
  }

  return result;
}

unint64_t sub_1B37766DC()
{
  result = qword_1EB8537B0;
  if (!qword_1EB8537B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8537B0);
  }

  return result;
}

unint64_t sub_1B3776730()
{
  result = qword_1EB8531A8;
  if (!qword_1EB8531A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853198);
    sub_1B37767BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8531A8);
  }

  return result;
}

unint64_t sub_1B37767BC()
{
  result = qword_1EB8531B0;
  if (!qword_1EB8531B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8531B8);
    sub_1B3776848();
    sub_1B377689C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8531B0);
  }

  return result;
}

unint64_t sub_1B3776848()
{
  result = qword_1EB8531C0;
  if (!qword_1EB8531C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8531C0);
  }

  return result;
}

unint64_t sub_1B377689C()
{
  result = qword_1EB8531C8;
  if (!qword_1EB8531C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8531C8);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 368, 7);
}

_BYTE *storeEnumTagSinglePayload for CodableColor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B3776ACC()
{
  result = sub_1B3C9C818();
  if (v1 <= 0x3F)
  {
    result = sub_1B3C9BE48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B3776B6C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  if (v6 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_26;
  }

  v12 = *(*(v4 - 8) + 64) - (((-17 - v8) | v8) + ((-25 - v8) | v10)) - 2;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_26:
      if (v9 != 0x7FFFFFFF)
      {
        return __swift_getEnumTagSinglePayload((v8 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8, v6, v4);
      }

      v18 = *(a1 + 1);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v9 + (v12 | v17) + 1;
}