uint64_t sub_262004114()
{
  OUTLINED_FUNCTION_6_13();
  result = MEMORY[0x266721A20]();
  if (result >= 16)
  {
    v9 = v0 >> 62;
    v10 = v2;
    v11 = v2 >> 32;
    switch(v0 >> 62)
    {
      case 1uLL:
        v13 = v2 + 1;
        v14 = v2 >> 32;
        v12 = v2;
        goto LABEL_8;
      case 2uLL:
        v12 = *(v2 + 16);
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_37;
        }

        v14 = *(v2 + 24);
LABEL_8:
        if (v14 < v13 || v12 >= v13)
        {
          goto LABEL_33;
        }

        v16 = OUTLINED_FUNCTION_1_1();
        result = sub_2620021FC(v16, v17, 0);
        v18 = result;
        if (v9)
        {
          if (v9 == 2)
          {
            v19 = *(v2 + 16);
          }

          else
          {
            v19 = v2;
          }
        }

        else
        {
          v19 = 0;
        }

        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
        }

        else
        {
          v22 = v21 + 1;
          if (!__OFADD__(v21, 1))
          {
            if (v9)
            {
              if (v9 == 2)
              {
                v10 = *(v2 + 16);
              }

              if (v21 >= v10)
              {
                if (v9 == 2)
                {
                  v11 = *(v2 + 24);
                }

LABEL_28:
                if (v21 < v22 && v11 >= v22)
                {
                  v26 = OUTLINED_FUNCTION_1_1();
                  v28 = sub_2620021FC(v26, v27, 1);
                  v29 = OUTLINED_FUNCTION_1_1();
                  result = sub_261F6BFFC(v29, v30);
                  *v1 = v18;
                  v1[1] = v28;
                  return result;
                }
              }
            }

            else if ((v21 & 0x8000000000000000) == 0)
            {
              v11 = BYTE6(v0);
              goto LABEL_28;
            }

LABEL_33:
            sub_261F9BCE0();
            OUTLINED_FUNCTION_131();
            sub_26203ACEC();
            sub_261F9D610();
            OUTLINED_FUNCTION_6();
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      case 3uLL:
        goto LABEL_33;
      default:
        v12 = 0;
        v13 = 1;
        v14 = BYTE6(v0);
        goto LABEL_8;
    }
  }

  sub_261F9BCE0();
  OUTLINED_FUNCTION_122();
  sub_26203ACEC();
  OUTLINED_FUNCTION_17_9();
  sub_26203A7CC();
  MEMORY[0x266722710](0xD00000000000001FLL, 0x8000000262051E20);
  v4 = OUTLINED_FUNCTION_1_1();
  MEMORY[0x266721A20](v4);
  OUTLINED_FUNCTION_126();
  v5 = sub_26203ABAC();
  MEMORY[0x266722710](v5);

  v6 = OUTLINED_FUNCTION_0_28();
  MEMORY[0x266722710](v6);
  OUTLINED_FUNCTION_126();
  v7 = sub_26203ABAC();
  MEMORY[0x266722710](v7);

  v8 = OUTLINED_FUNCTION_15_8();
  MEMORY[0x266722710](v8, 0xE600000000000000);
  sub_261F9D610();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_0_0();
LABEL_34:
  sub_26203AD4C();
  swift_willThrow();
  v24 = OUTLINED_FUNCTION_1_1();
  return sub_261F6BFFC(v24, v25);
}

uint64_t sub_2620043E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = *(a1 + 16);
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  sub_261F6B73C(a2, a3);
  sub_261FDDBE0(40, a2, a3, &v22);
  switch(v7)
  {
    case 6:
      sub_2620037E4();
      v20 = OUTLINED_FUNCTION_122();
      sub_261F6BFFC(v20, v21);
      OUTLINED_FUNCTION_27_6();
      result = OUTLINED_FUNCTION_28_7();
      v7 = v22;
      v15 = v23 | (WORD2(v23) << 32) | (BYTE6(v23) << 48);
      break;
    case 0x3A:
      sub_262004114();
      v16 = OUTLINED_FUNCTION_122();
      sub_261F6BFFC(v16, v17);
      OUTLINED_FUNCTION_27_6();
      result = OUTLINED_FUNCTION_28_7();
      v7 = v22;
      v15 = 0x4000000000000000;
      break;
    case 0x11:
      sub_262003DB4();
      v12 = OUTLINED_FUNCTION_122();
      sub_261F6BFFC(v12, v13);
      OUTLINED_FUNCTION_27_6();
      result = OUTLINED_FUNCTION_28_7();
      v7 = v22 | (WORD2(v22) << 32);
      v15 = 0x2000000000000000;
      break;
    default:
      sub_261F6BFFC(v22, v23);
      v18 = OUTLINED_FUNCTION_122();
      sub_261F6BFFC(v18, v19);
      OUTLINED_FUNCTION_27_6();
      result = OUTLINED_FUNCTION_28_7();
      v15 = 0x8000000000000000;
      break;
  }

  *a4 = v7;
  a4[1] = v15;
  return result;
}

uint64_t TunnelPacket.length.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  result = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      v4 = __OFSUB__(HIDWORD(v1), v1);
      v5 = HIDWORD(v1) - v1;
      if (v4)
      {
        __break(1u);
        goto LABEL_8;
      }

      result = v5;
      break;
    case 2uLL:
      v8 = v1 + 16;
      v6 = *(v1 + 16);
      v7 = *(v8 + 8);
      result = v7 - v6;
      if (__OFSUB__(v7, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(v2);
      break;
  }

  return result;
}

uint64_t TunnelPacket.ipHeader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  sub_261F6B73C(v3, v4);

  return sub_261F6B73C(v5, v6);
}

uint64_t TunnelPacket.transportProtocolHeader.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  *a1 = v2;
  a1[1] = v3;
  return sub_261F7B690(v2, v3);
}

uint64_t TunnelPacket.packetData.getter()
{
  v1 = *(v0 + 80);
  sub_261F6B73C(v1, *(v0 + 88));
  return v1;
}

uint64_t TunnelPacket.packetData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_261F6BFFC(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t TunnelPacket.init(data:ipHeader:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 16);
  v10 = a3[3];
  v11 = a3[4];
  v12 = a3[5];
  v13 = a3[6];
  sub_261F6B73C(a1, a2);
  v14 = OUTLINED_FUNCTION_42_3();
  sub_261F6B73C(v14, v15);
  v16 = OUTLINED_FUNCTION_30_6();
  sub_261F6B73C(v16, v17);
  if (qword_28108CB70 != -1)
  {
    swift_once();
  }

  if (byte_27FF07DF0 == 1)
  {
    v24[0] = v7;
    v24[1] = v8;
    v25 = v9;
    v26 = v10;
    v27 = v11;
    v28 = v12;
    v29 = v13;
    result = sub_2620043E4(v24, a1, a2, &v30);
    v19 = v30;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_42_3();
    sub_261F6BFFC(v20, v21);
    v22 = OUTLINED_FUNCTION_30_6();
    sub_261F6BFFC(v22, v23);
    result = sub_261F6BFFC(a1, a2);
    v19 = xmmword_26203F730;
  }

  *a4 = 30;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  *(a4 + 48) = v12;
  *(a4 + 56) = v13;
  *(a4 + 64) = v19;
  *(a4 + 80) = a1;
  *(a4 + 88) = a2;
  return result;
}

BOOL TunnelPacket.isValidPacket.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      LODWORD(v3) = HIDWORD(v1) - v1;
      if (__OFSUB__(HIDWORD(v1), v1))
      {
        goto LABEL_14;
      }

      v3 = v3;
      goto LABEL_6;
    case 2uLL:
      v6 = v1 + 16;
      v5 = *(v1 + 16);
      v4 = *(v6 + 8);
      v7 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    case 3uLL:
      goto LABEL_6;
    default:
      v3 = BYTE6(v2);
LABEL_6:
      v8 = *(v0 + 8);
      v9 = *(v0 + 16);
      v7 = __OFADD__(v8, v9);
      v10 = v8 + v9;
      if (!v7)
      {
        return *v0 == 30 && v3 == v10;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
  }
}

void *TunnelPacket.isValidInboundPacket(localInterface:remoteAddress:)(void *result)
{
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = result;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_17;
      }

      v6 = v6;
      goto LABEL_6;
    case 2uLL:
      v9 = v3 + 16;
      v8 = *(v3 + 16);
      v7 = *(v9 + 8);
      v10 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    case 3uLL:
      goto LABEL_6;
    default:
      v6 = BYTE6(v4);
LABEL_6:
      v11 = *(v1 + 8);
      v12 = *(v1 + 16);
      v10 = __OFADD__(v11, v12);
      v13 = v11 + v12;
      if (v10)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
      }

      else
      {
        if (*v1 != 30 || v6 != v13)
        {
          goto LABEL_14;
        }

        v15 = *(v1 + 32);
        v16 = *(v1 + 40);
        v17 = OUTLINED_FUNCTION_42_3();
        sub_261F6B73C(v17, v18);
        v19 = sub_262039AAC();
        v21 = v20;
        v22 = OUTLINED_FUNCTION_42_3();
        v23 = MEMORY[0x2667219E0](v22);
        sub_261F6BFFC(v19, v21);
        v24 = OUTLINED_FUNCTION_42_3();
        sub_261F6BFFC(v24, v25);
        if (v23)
        {
          v27 = *(v2 + 48);
          v26 = *(v2 + 56);
          v28 = v5[3];
          v29 = v5[4];
          __swift_project_boxed_opaque_existential_0Tm(v5, v28);
          v30 = *(v29 + 48);
          v31 = OUTLINED_FUNCTION_75();
          sub_261F6B73C(v31, v32);
          v30(v39, v28, v29);
          __swift_project_boxed_opaque_existential_0Tm(v39, v39[3]);
          sub_262039EBC();
          v33 = OUTLINED_FUNCTION_75();
          v34 = MEMORY[0x2667219E0](v33);
          v35 = OUTLINED_FUNCTION_75();
          sub_261F6BFFC(v35, v36);
          v37 = OUTLINED_FUNCTION_131();
          sub_261F6BFFC(v37, v38);
          __swift_destroy_boxed_opaque_existential_0Tm(v39);
        }

        else
        {
LABEL_14:
          v34 = 0;
        }

        return (v34 & 1);
      }

      return result;
  }
}

void *TunnelPacket.isValidOutboundPacket(localInterface:remoteAddress:)(void *result)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = v1;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      LODWORD(v5) = HIDWORD(v2) - v2;
      if (__OFSUB__(HIDWORD(v2), v2))
      {
        goto LABEL_17;
      }

      v5 = v5;
      goto LABEL_6;
    case 2uLL:
      v8 = v2 + 16;
      v7 = *(v2 + 16);
      v6 = *(v8 + 8);
      v9 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    case 3uLL:
      goto LABEL_6;
    default:
      v5 = BYTE6(v3);
LABEL_6:
      v10 = *(v1 + 8);
      v11 = *(v1 + 16);
      v9 = __OFADD__(v10, v11);
      v12 = v10 + v11;
      if (v9)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
      }

      else
      {
        if (*v1 != 30 || v5 != v12)
        {
          goto LABEL_14;
        }

        v14 = *(v1 + 32);
        v15 = *(v1 + 40);
        v16 = result[4];
        __swift_project_boxed_opaque_existential_0Tm(result, result[3]);
        v17 = *(v16 + 48);
        v18 = OUTLINED_FUNCTION_42_3();
        sub_261F6B73C(v18, v19);
        v20 = OUTLINED_FUNCTION_30_6();
        v17(v20);
        __swift_project_boxed_opaque_existential_0Tm(v37, v37[3]);
        OUTLINED_FUNCTION_30_6();
        v21 = sub_262039EBC();
        v23 = v22;
        v24 = OUTLINED_FUNCTION_42_3();
        LOBYTE(v16) = MEMORY[0x2667219E0](v24);
        v25 = OUTLINED_FUNCTION_42_3();
        sub_261F6BFFC(v25, v26);
        sub_261F6BFFC(v21, v23);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        if (v16)
        {
          v28 = *(v4 + 48);
          v27 = *(v4 + 56);
          v29 = OUTLINED_FUNCTION_75();
          sub_261F6B73C(v29, v30);
          sub_262039AAC();
          v31 = OUTLINED_FUNCTION_75();
          v32 = MEMORY[0x2667219E0](v31);
          v33 = OUTLINED_FUNCTION_131();
          sub_261F6BFFC(v33, v34);
          v35 = OUTLINED_FUNCTION_75();
          sub_261F6BFFC(v35, v36);
        }

        else
        {
LABEL_14:
          v32 = 0;
        }

        return (v32 & 1);
      }

      return result;
  }
}

uint64_t ReadPacketGroup.finalize.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_262004BD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B73616D74656ELL && a2 == 0xE700000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7697517 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26203AC0C();

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

uint64_t sub_262004CEC(char a1)
{
  if (!a1)
  {
    return 0x73736572646461;
  }

  if (a1 == 1)
  {
    return 0x6B73616D74656ELL;
  }

  return 7697517;
}

uint64_t sub_262004D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262004BD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262004D6C(uint64_t a1)
{
  v2 = sub_262004F8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262004DA8(uint64_t a1)
{
  v2 = sub_262004F8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TunnelInterfaceParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA458, &qword_262044980);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_262004F8C();
  sub_26203AE5C();
  sub_262039ACC();
  sub_262005384(&qword_28108B398);
  OUTLINED_FUNCTION_24_6();
  if (!v2)
  {
    v12 = type metadata accessor for TunnelInterfaceParameters();
    v13 = *(v12 + 20);
    OUTLINED_FUNCTION_24_6();
    v14 = *(v3 + *(v12 + 24));
    sub_26203AB6C();
  }

  v15 = *(v7 + 8);
  v16 = OUTLINED_FUNCTION_1_1();
  return v17(v16);
}

unint64_t sub_262004F8C()
{
  result = qword_28108B928;
  if (!qword_28108B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B928);
  }

  return result;
}

uint64_t TunnelInterfaceParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v44 = sub_262039ACC();
  v4 = OUTLINED_FUNCTION_0(v44);
  v42 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA460, &qword_262044988);
  v13 = OUTLINED_FUNCTION_0(v12);
  v45 = v14;
  v46 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v17);
  v18 = type metadata accessor for TunnelInterfaceParameters();
  v19 = OUTLINED_FUNCTION_6_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_262004F8C();
  sub_26203AE3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v39 = v23;
  v40 = a1;
  v38 = v18;
  v49 = 0;
  sub_262005384(&qword_27FEF9E00);
  v25 = v43;
  v26 = v44;
  OUTLINED_FUNCTION_25_3();
  v43 = *(v42 + 32);
  (v43)(v39, v25, v26);
  v48 = 1;
  v27 = v10;
  OUTLINED_FUNCTION_25_3();
  v29 = v38;
  v28 = v39;
  (v43)(&v39[*(v38 + 20)], v27, v26);
  v47 = 2;
  v30 = sub_26203AA5C();
  v31 = v28;
  v32 = v40;
  v33 = v30;
  v34 = OUTLINED_FUNCTION_31_6();
  v35(v34);
  *(v31 + *(v29 + 24)) = v33;
  sub_2620053C8(v31, v41);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  return sub_261FCF214(v31);
}

uint64_t sub_262005384(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_262039ACC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2620053C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TunnelInterfaceParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262005470(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 96))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 40) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 40) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2620054BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *__swift_memcpy15_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TunnelPacket.TCPSegmentHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 15))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TunnelPacket.TCPSegmentHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 14) = 0;
    *(result + 12) = 0;
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

  *(result + 15) = v3;
  return result;
}

uint64_t __swift_memcpy6_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TunnelPacket.UDPDatagramHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TunnelPacket.UDPDatagramHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 6) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TunnelPacket.ICMPv6Header(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if ((a2 + 0xFFFF) < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return 0;
      }

      return (*a1 | (v4 << 16)) - 0xFFFF;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for TunnelPacket.ICMPv6Header(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        break;
      case 2:
        *(result + 2) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 2) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_26200575C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC && *(a1 + 16))
    {
      v2 = *a1 + 11;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 1) & 0xFFFFFFF7 | (8 * ((*(a1 + 8) & 0x1000000000000000) != 0))) ^ 0xF;
      if (v2 >= 0xB)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2620057A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 3) & 1) - 2 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_262005850(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_262005870(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
  return result;
}

uint64_t sub_2620059FC()
{
  result = sub_262039ACC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TunnelInterfaceParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_262005B68()
{
  result = qword_27FEFA468;
  if (!qword_27FEFA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA468);
  }

  return result;
}

unint64_t sub_262005BC0()
{
  result = qword_27FEFA470;
  if (!qword_27FEFA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA470);
  }

  return result;
}

unint64_t sub_262005C18()
{
  result = qword_27FEFA478;
  if (!qword_27FEFA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA478);
  }

  return result;
}

unint64_t sub_262005C70()
{
  result = qword_27FEFA480;
  if (!qword_27FEFA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA480);
  }

  return result;
}

unint64_t sub_262005CC8()
{
  result = qword_27FEFA488;
  if (!qword_27FEFA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA488);
  }

  return result;
}

unint64_t sub_262005D20()
{
  result = qword_28108B918;
  if (!qword_28108B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B918);
  }

  return result;
}

unint64_t sub_262005D78()
{
  result = qword_28108B920;
  if (!qword_28108B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B920);
  }

  return result;
}

uint64_t sub_262005DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26203937C();
  if (v6)
  {
    v7 = v6;
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = a1 - result + v7;
  }

  else
  {
    v9 = 0;
  }

  result = sub_26203939C();
  if (v9)
  {
    return *(v9 + a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_262005E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26203937C();
  if (v6)
  {
    v7 = v6;
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = a1 - result + v7;
  }

  else
  {
    v9 = 0;
  }

  result = sub_26203939C();
  if (v9)
  {
    return bswap32(*(v9 + a4));
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_6()
{

  return sub_261F6BFFC(v1, v0);
}

uint64_t sub_262005F2C()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA490 = result;
  return result;
}

uint64_t sub_262005FA8()
{
  if (qword_27FEF86D8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_27FEFA49A)
  {
    v1 = 16032;
  }

  else
  {
    v1 = 4096;
  }

  word_27FEFA498 = v1;
  return result;
}

char *sub_262006034()
{
  if (qword_27FEF86D8 != -1)
  {
    OUTLINED_FUNCTION_2_22();
  }

  return &byte_27FEFA49A;
}

uint64_t sub_262006074()
{
  result = sub_262006098();
  byte_27FEFA49A = result & 1;
  return result;
}

uint64_t sub_262006098()
{
  v0 = sub_262039FBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SkywalkChannelVirtualInterface();
  sub_261F9B6D0(0, &qword_28108CFB0, 0x277D85C78);
  (*(v1 + 104))(v4, *MEMORY[0x277D851C8], v0);
  v5 = sub_26203A59C();
  (*(v1 + 8))(v4, v0);
  v6 = sub_26200633C();

  if (!v6)
  {
    sub_26203A4AC();
    if (qword_27FEF86C8 != -1)
    {
      swift_once();
    }

    sub_26203969C();
    return 0;
  }

  v7 = *(v6 + 16);
  if (!NEVirtualInterfaceSetMTU())
  {
    sub_26203A4AC();
    if (qword_27FEF86C8 != -1)
    {
      swift_once();
    }

    sub_26203969C();

    return 0;
  }

  v8 = *(v6 + 16);
  NEVirtualInterfaceInvalidate();
  sub_26203A4AC();
  if (qword_27FEF86C8 != -1)
  {
    swift_once();
  }

  sub_26203969C();

  return 1;
}

uint64_t sub_26200633C()
{
  sub_26203A0FC();
  v0 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D839B0];
  LOBYTE(v6) = 1;
  sub_261F8D184(&v6, v5);
  swift_isUniquelyReferenced_nonNull_native();
  sub_261FA4260();
  v7 = v0;
  LOBYTE(v6) = 1;
  sub_261F8D184(&v6, v5);
  swift_isUniquelyReferenced_nonNull_native();
  sub_261FA4260();
  v1 = *MEMORY[0x277CBECE8];
  v2 = sub_26203A0BC();

  NexusExtendedWithOptions = NEVirtualInterfaceCreateNexusExtendedWithOptions();

  result = 0;
  if (NexusExtendedWithOptions)
  {
    type metadata accessor for _ManagedOpaqueCFTypeWrapper();
    swift_allocObject();
    return _ManagedOpaqueCFTypeWrapper.init(retainedValue:)(NexusExtendedWithOptions);
  }

  return result;
}

uint64_t static SkywalkChannelVirtualInterface.wideSkywalkChannelSupported.getter()
{
  if (qword_27FEF86D8 != -1)
  {
    OUTLINED_FUNCTION_2_22();
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return byte_27FEFA49A;
}

uint64_t static SkywalkChannelVirtualInterface.wideSkywalkChannelSupported.setter(char a1)
{
  if (qword_27FEF86D8 != -1)
  {
    OUTLINED_FUNCTION_2_22();
  }

  result = swift_beginAccess();
  byte_27FEFA49A = a1 & 1;
  return result;
}

uint64_t (*static SkywalkChannelVirtualInterface.wideSkywalkChannelSupported.modify())()
{
  if (qword_27FEF86D8 != -1)
  {
    OUTLINED_FUNCTION_2_22();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_262006620@<X0>(_BYTE *a1@<X8>)
{
  sub_262006034();
  result = swift_beginAccess();
  *a1 = byte_27FEFA49A;
  return result;
}

uint64_t sub_262006670(char *a1)
{
  v1 = *a1;
  sub_262006034();
  result = swift_beginAccess();
  byte_27FEFA49A = v1;
  return result;
}

uint64_t sub_2620066C4()
{
  if (qword_27FEF86D0 != -1)
  {
    result = swift_once();
  }

  if (((word_27FEFA498 - 32) & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    word_27FEFA49C = word_27FEFA498 - 32;
  }

  return result;
}

uint64_t static SkywalkChannelVirtualInterface.maxSupportedMTU.getter()
{
  if (qword_27FEF86E0 != -1)
  {
    OUTLINED_FUNCTION_6_14();
  }

  return word_27FEFA49C;
}

uint64_t static SkywalkChannelVirtualInterface.maxSupportedPendingPackets.getter()
{
  if (qword_28108B4C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_21_2(v0, v1, v2, v3, v4, v5, v6, v7, v15, v16, v17, v18, v19, v20, v21, v22, v23[0], v23[1], v24);
  v8 = sub_261F83CD4();
  v10 = v9;
  sub_261FC2F14(v23, &qword_27FEF9148, &qword_262040450);
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = 1;
  }

  if (v8 <= 0x400)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1024;
  }

  if (HIDWORD(v8))
  {
    v13 = 32;
  }

  else
  {
    v13 = v12;
  }

  if (v10)
  {
    return 32;
  }

  else
  {
    return v13;
  }
}

uint64_t static SkywalkChannelVirtualInterface.defaultMTU.getter()
{
  if (qword_28108B518 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_21_2(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17, v18, v19, v20, v21[0], v21[1], v22);
  v8 = sub_261F83CD4();
  v10 = v9;
  sub_261FC2F14(v21, &qword_27FEF9148, &qword_262040450);
  if ((v10 & 1) != 0 || v8 >> 16)
  {
    if (qword_27FEF86E0 != -1)
    {
      OUTLINED_FUNCTION_6_14();
    }

    return word_27FEFA49C;
  }

  else
  {
    if (qword_27FEF86E0 != -1)
    {
      OUTLINED_FUNCTION_6_14();
    }

    v11 = v8;
    if (v8 <= 0x500u)
    {
      v11 = 1280;
    }

    if (word_27FEFA49C >= v8)
    {
      return v11;
    }

    else
    {
      return word_27FEFA49C;
    }
  }
}

uint64_t sub_262006940()
{
  v0 = nw_context_create();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_scheduling_mode();
  result = nw_context_activate();
  qword_27FEFA4A0 = v0;
  return result;
}

uint64_t SkywalkChannelVirtualInterface.interfaceName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SkywalkChannelVirtualInterface.__allocating_init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(void *a1, char *a2, uint64_t *a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  SkywalkChannelVirtualInterface.init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(a1, a2, a3, a4 & 0x1FFFF, a5 | ((HIDWORD(a5) & 1) << 32), a6, a7);
  return v14;
}

uint64_t SkywalkChannelVirtualInterface.init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(void *a1, char *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v110 = *v7;
  v12 = sub_262039F9C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v106 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v19 = (v18 - v17);
  v7[19] = 0;
  *(v7 + 11) = 0u;
  *(v7 + 13) = 0u;
  v7[15] = 0;
  if (qword_28108B4A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v20 = qword_28108B4A8;
  v21 = unk_28108B4B0;
  v22 = byte_28108B4B8;
  if (byte_28108B4B9)
  {
    v23 = 256;
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_261F83BA8(v20, v21, v23 | v22);

  if (v24)
  {
    v25 = sub_26200785C(a2, a1);
    v26 = v8[19];
    v8[19] = v25;
  }

  if ((a4 & 0x10000) != 0)
  {
    a4 = static SkywalkChannelVirtualInterface.defaultMTU.getter();
  }

  if (((a4 + 32) & 0x10000) != 0)
  {
    __break(1u);
LABEL_56:
    swift_once();
LABEL_14:
    v8[18] = qword_27FEFA4A0;
    v114 = 0;
    swift_unknownObjectRetain();

    sub_26203A7CC();

    v112[0] = 0xD000000000000029;
    v112[1] = 0x800000026204F720;
    MEMORY[0x266722710](v12, v19);
    sub_26203A21C();

    v32 = os_transaction_create();

    v33 = a7;
    if (!v32)
    {

      sub_261F9BCE0();
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_18_6();
      sub_261F9D610();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_16_12();
      OUTLINED_FUNCTION_14_12();
      sub_26203AD4C();
      swift_willThrow();
      OUTLINED_FUNCTION_35_4(&v114, v12);

      goto LABEL_43;
    }

    v103 = v12;
    v104 = a1;
    v105 = v19;
    v34 = a2;
    v102 = v32;
    if (!v33)
    {
      sub_26203A4AC();
      v46 = a3;
      if (qword_27FEF86C8 != -1)
      {
        OUTLINED_FUNCTION_0_29();
        swift_once();
      }

      sub_26203969C();
      goto LABEL_33;
    }

    v35 = sub_26203A4AC();
    if (qword_27FEF86C8 != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    v36 = qword_27FEFA490;
    if (os_log_type_enabled(qword_27FEFA490, v35))
    {
      OUTLINED_FUNCTION_42_1();
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v38 = swift_slowAlloc();
      v112[0] = v38;
      *v37 = 136446210;
      *(v37 + 4) = OUTLINED_FUNCTION_27_7();
      _os_log_impl(&dword_261F5B000, v36, v35, "Physical interface name is:%{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      v34 = a2;
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    v39 = *(v22 + 16);
    v40 = sub_26203A18C();
    LODWORD(v39) = NEVirtualInterfaceSetDelegateInterface();

    if (v39)
    {
      LOBYTE(v41) = sub_26203A4AC();
      if (os_log_type_enabled(v36, v41))
      {
        OUTLINED_FUNCTION_42_1();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v43 = swift_slowAlloc();
        v112[0] = v43;
        *v42 = 136315138;
        v44 = OUTLINED_FUNCTION_27_7();

        *(v42 + 4) = v44;
        v45 = "Assigned %s as the delegate interface on virtual interface successfully";
LABEL_30:
        _os_log_impl(&dword_261F5B000, v36, v41, v45, v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        v34 = a2;
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
LABEL_32:
        v46 = a3;
LABEL_33:
        sub_261F79740(v34, v112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B40, &qword_262040458);
        v48 = sub_26203A20C();
        v50 = v49;
        sub_261F79740(v46, v112);
        v51 = sub_26203A20C();
        v53 = v52;
        v54 = *(v22 + 16);
        v55 = sub_26203A18C();
        v56 = v22;
        v57 = sub_26203A18C();
        LODWORD(v54) = NEVirtualInterfaceAddAddress();

        if (!v54)
        {

          sub_261F9BCE0();
          OUTLINED_FUNCTION_5_11();
          sub_26203AD3C();
          OUTLINED_FUNCTION_18_6();
          sub_26203A7CC();
          MEMORY[0x266722710](0xD000000000000017, 0x800000026204F8D0);
          MEMORY[0x266722710](v48, v50);

          MEMORY[0x266722710](0xD000000000000010, 0x800000026204F8F0);
          MEMORY[0x266722710](v51, v53);

          v70 = OUTLINED_FUNCTION_22(0x6F742027u);
          MEMORY[0x266722710](v70, v71 & 0xFFFFFFFFFFFFLL | 0xEF2E000000000000);
          sub_261F9D610();
          swift_allocError();
          sub_26203AD4C();
          swift_willThrow();
          swift_unknownObjectRelease();
          v72 = OUTLINED_FUNCTION_22_8();
          sub_262008160(v72, v73, v105, v56);

          v74 = OUTLINED_FUNCTION_37_3();
          __swift_destroy_boxed_opaque_existential_0Tm(v74);
          v69 = 0;
          v22 = v56;
          goto LABEL_45;
        }

        v58 = *(v56 + 16);
        v22 = v56;
        if (NEVirtualInterfaceSetRankNever())
        {
          v59 = *(v56 + 16);
          if (NEVirtualInterfaceUpdateAdHocService() && (v60 = *(v56 + 16), NEVirtualInterfaceSetMTU()))
          {
            if ((a5 & 0x100000000) != 0 || (v61 = *(v56 + 16), NEVirtualInterfaceSetMaxPendingPackets()))
            {
              v8[2] = v103;
              v8[3] = v105;
              sub_261F79740(a2, (v8 + 4));
              v8[9] = v56;
              v8[10] = v104;
              v8[16] = v102;
              v62 = *(v56 + 16);
              v63 = v8[18];

              v64 = v104;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v65 = sub_2620082E0();
              if (!v107)
              {
                v85 = v65;
                swift_unknownObjectRelease();

                v86 = v8[18];
                *v101 = 10;
                (*(v106 + 104))(v101, *MEMORY[0x277D85188], v100);
                v87 = type metadata accessor for SkywalkVirtualInterfaceNetworkProtocol();
                v88 = *(v87 + 48);
                v89 = *(v87 + 52);
                swift_allocObject();
                v90 = v64;
                swift_unknownObjectRetain();
                v91 = sub_26203531C(v85, v90, v103, v105, v86, v101);
                swift_unknownObjectRelease();

                v8[17] = v91;
                v92 = swift_allocObject();
                swift_weakInit();
                v93 = *(v91 + 16);
                v94 = *(v91 + 24);
                *(v91 + 16) = sub_26200A448;
                *(v91 + 24) = v92;

                sub_261F665E4(v93);

                v95 = v8[17];
                v96 = swift_allocObject();
                swift_weakInit();

                v97 = *(v95 + 32);
                v98 = *(v95 + 40);
                *(v95 + 32) = sub_26200A450;
                *(v95 + 40) = v96;

                sub_261F665E4(v97);

                v99 = OUTLINED_FUNCTION_37_3();
                __swift_destroy_boxed_opaque_existential_0Tm(v99);
                return v8;
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_35_4(&v114, v103);

              v66 = OUTLINED_FUNCTION_37_3();
              __swift_destroy_boxed_opaque_existential_0Tm(v66);
              v67 = v8[3];

              __swift_destroy_boxed_opaque_existential_0Tm(v8 + 4);
              v68 = v8[9];

              v69 = 1;
LABEL_45:
              v78 = v8[12];
              sub_261F665E4(v8[11]);
              v79 = v8[14];
              v80 = v8[15];
              sub_262007818(v8[13]);
              if (v69)
              {
                v81 = v8[16];
                swift_unknownObjectRelease();
              }

              if (v22)
              {
                v82 = v8[18];
                swift_unknownObjectRelease();
              }

              swift_deallocPartialClassInstance();
              return v8;
            }

            sub_261F9BCE0();
            OUTLINED_FUNCTION_1_21();
            OUTLINED_FUNCTION_18_6();
            sub_261F9D610();
            OUTLINED_FUNCTION_6();
          }

          else
          {

            sub_261F9BCE0();
            OUTLINED_FUNCTION_1_21();
            OUTLINED_FUNCTION_18_6();
            sub_261F9D610();
            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_16_12();
          }

          OUTLINED_FUNCTION_14_12();
          sub_26203AD4C();
          swift_willThrow();
          swift_unknownObjectRelease();
          v83 = OUTLINED_FUNCTION_22_8();
          OUTLINED_FUNCTION_35_4(v83, v84);

          __swift_destroy_boxed_opaque_existential_0Tm(a3);
          v77 = a2;
LABEL_44:
          __swift_destroy_boxed_opaque_existential_0Tm(v77);
          v69 = 0;
          goto LABEL_45;
        }

        sub_261F9BCE0();
        OUTLINED_FUNCTION_1_21();
        OUTLINED_FUNCTION_18_6();
        sub_261F9D610();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_16_12();
        OUTLINED_FUNCTION_14_12();
        sub_26203AD4C();
        swift_willThrow();
        swift_unknownObjectRelease();
        v75 = OUTLINED_FUNCTION_22_8();
        OUTLINED_FUNCTION_35_4(v75, v76);

LABEL_43:
        v77 = OUTLINED_FUNCTION_37_3();
        goto LABEL_44;
      }
    }

    else
    {
      v41 = sub_26203A49C();
      if (os_log_type_enabled(v36, v41))
      {
        OUTLINED_FUNCTION_42_1();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v43 = swift_slowAlloc();
        v112[0] = v43;
        *v42 = 136315138;
        v47 = OUTLINED_FUNCTION_27_7();

        *(v42 + 4) = v47;
        v45 = "Failed to set %s as the delegate interface on virtual interface";
        goto LABEL_30;
      }
    }

    goto LABEL_32;
  }

  v27 = sub_26200633C();
  v22 = v27;
  if (!v27)
  {

    sub_261F9BCE0();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_18_6();
    sub_261F9D610();
    OUTLINED_FUNCTION_6();
    v22 = 0;
    OUTLINED_FUNCTION_14_12();
    sub_26203AD4C();
    swift_willThrow();

    goto LABEL_43;
  }

  v100 = v12;
  v101 = v19;
  v28 = *(v27 + 16);
  result = NEVirtualInterfaceCopyName();
  if (result)
  {
    v30 = result;
    v113 = a4;
    v12 = sub_26203A1BC();
    v19 = v31;

    if (qword_27FEF86E8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_56;
  }

  __break(1u);
  return result;
}

uint64_t sub_262007818(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26200785C(char *a1, void *a2)
{
  v91 = a2;
  v92 = a1;
  v2 = sub_26203A1FC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v96 = v4;
  v97 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v95 = v8 - v7;
  v9 = sub_26203A4CC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v93 = v11;
  v94 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  v98 = (v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA4B0, &unk_262045270);
  v17 = OUTLINED_FUNCTION_40(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v84 - v20;
  v22 = sub_26203942C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v84 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v90 = &v84 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = (&v84 - v35);
  MEMORY[0x28223BE20](v34);
  v38 = &v84 - v37;
  v39 = [objc_opt_self() defaultManager];
  v40 = [v39 URLsForDirectory:13 inDomains:1];

  v41 = sub_26203A3CC();
  sub_261FD45F4(v41);

  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_261FC2F14(v21, &unk_27FEFA4B0, &unk_262045270);
    sub_26203A48C();
    if (qword_27FEF86C8 != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    sub_26203969C();
    return 0;
  }

  v85 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v31;
  v88 = *(v25 + 32);
  v89 = v25;
  v88(v38, v21, v22);
  v103 = 0;
  v104 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B40, &qword_262040458);
  sub_26203A8CC();
  MEMORY[0x266722710](0x2E6C656E6E75742DLL, 0xEB00000000676F6CLL);
  v101 = 58;
  v102 = 0xE100000000000000;
  v99 = 45;
  v100 = 0xE100000000000000;
  sub_261FC2E54();
  v87 = v22;
  OUTLINED_FUNCTION_7_2();
  sub_26203A70C();

  v92 = v38;
  sub_26203940C();
  (*(v93 + 104))(v98, *MEMORY[0x277D85218], v94);
  v103 = sub_26203941C();
  v104 = v44;
  v45 = v95;
  sub_26203A1EC();
  v46 = sub_26203A71C();
  (*(v96 + 8))(v45, v97);

  if (v46)
  {

    sub_261F9B6D0(0, &qword_27FEFA4C0, 0x277D85C70);
    v47 = v90;
    v48 = v89 + 16;
    v49 = v87;
    v97 = *(v89 + 16);
    v97(v90, v36, v87);
    v50 = (*(v48 + 64) + 16) & ~*(v48 + 64);
    v51 = swift_allocObject();
    v88((v51 + v50), v47, v49);
    v52 = v91;
    v42 = sub_26203A4FC();

    v53 = sub_26203A48C();
    v54 = v49;
    if (v42)
    {
      if (qword_27FEF86C8 != -1)
      {
        OUTLINED_FUNCTION_0_29();
        swift_once();
      }

      v55 = qword_27FEFA490;
      v56 = v86;
      v57 = OUTLINED_FUNCTION_26_4();
      v58(v57);
      if (os_log_type_enabled(v55, v53))
      {
        OUTLINED_FUNCTION_42_1();
        v59 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v60 = swift_slowAlloc();
        v103 = v60;
        *v59 = 136315138;
        OUTLINED_FUNCTION_11();
        sub_261F7AA38(v61, v62);
        LODWORD(v97) = v53;
        v63 = sub_26203ABAC();
        v65 = v64;
        v98 = v36;
        v66 = *(v89 + 8);
        v66(v56, v54);
        v67 = sub_261F67FE4(v63, v65, &v103);

        *(v59 + 4) = v67;
        _os_log_impl(&dword_261F5B000, v55, v97, "Successfully created packet tracing logger at %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        v66(v98, v54);
        v66(v92, v54);
      }

      else
      {
        v82 = OUTLINED_FUNCTION_29_0();
        v53(v82);
        (v53)(v36, v49);
        (v53)(v92, v49);
      }

      return v42;
    }

    if (qword_27FEF86C8 != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    v68 = qword_27FEFA490;
    v69 = v85;
    v70 = OUTLINED_FUNCTION_26_4();
    v71(v70);
    if (os_log_type_enabled(v68, v53))
    {
      OUTLINED_FUNCTION_42_1();
      v72 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v98 = swift_slowAlloc();
      v103 = v98;
      *v72 = 136315138;
      OUTLINED_FUNCTION_11();
      sub_261F7AA38(v73, v74);
      v75 = v53;
      v76 = sub_26203ABAC();
      v78 = v77;
      v79 = v49;
      v80 = *(v89 + 8);
      v80(v69, v79);
      v81 = sub_261F67FE4(v76, v78, &v103);

      *(v72 + 4) = v81;
      _os_log_impl(&dword_261F5B000, v68, v75, "Failed to create packet tracing logger at %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      v80(v36, v79);
      v80(v92, v79);
    }

    else
    {
      v83 = OUTLINED_FUNCTION_29_0();
      v53(v83);
      (v53)(v36, v49);
      (v53)(v92, v49);
    }

    return 0;
  }

  __break(1u);
  return result;
}

_BYTE *sub_262008160(_BYTE *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    v16[9] = v4;
    v17 = v5;
    v9 = sub_26203A48C();
    if (qword_27FEF86C8 != -1)
    {
      swift_once();
    }

    v10 = qword_27FEFA490;
    if (os_log_type_enabled(qword_27FEFA490, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16[0] = v12;
      *v11 = 136446210;
      if (a3)
      {
        v13 = a3;
      }

      else
      {
        a2 = 0x6E776F6E6B6E753CLL;
        v13 = 0xE90000000000003ELL;
      }

      v14 = sub_261F67FE4(a2, v13, v16);

      *(v11 + 4) = v14;
      _os_log_impl(&dword_261F5B000, v10, v9, "Cleaning up virtual interface %{public}s due to throwing init", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266724180](v12, -1, -1);
      MEMORY[0x266724180](v11, -1, -1);
    }

    v15 = *(a4 + 16);

    return NEVirtualInterfaceInvalidate();
  }

  return result;
}

ValueMetadata *sub_2620082E0()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = NEVirtualInterfaceCopyNexusInstances();
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CFUUID(0);
    sub_26203A3BC();
  }

  sub_261F9BCE0();
  OUTLINED_FUNCTION_5_11();
  sub_26203AD3C();
  sub_261F9D610();
  OUTLINED_FUNCTION_6();
  sub_26203AD4C();
  swift_willThrow();
  v2 = *MEMORY[0x277D85DE8];
  return &type metadata for RemotePairingError;
}

uint64_t sub_2620084BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 88);
    if (v1)
    {
      v2 = *(result + 96);
      *(result + 88) = 0;
      *(result + 96) = 0;
      SkywalkChannelVirtualInterface.readPackets(completion:)(v1, v2);
      sub_261F665E4(v1);
    }
  }

  return result;
}

void SkywalkChannelVirtualInterface.readPackets(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  OUTLINED_FUNCTION_0_21();
  v9[1] = 1107296256;
  OUTLINED_FUNCTION_1();
  v9[2] = v7;
  v9[3] = &block_descriptor_12;
  v8 = _Block_copy(v9);

  nw_queue_context_async_if_needed();
  _Block_release(v8);
}

void *sub_26200860C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result[13];
    if (v2)
    {
      v3 = result[14];
      v4 = result[15];
      result[13] = 0;
      result[14] = 0;
      result[15] = 0;
      v5 = result[18];
      v6 = swift_allocObject();
      v6[2] = v1;
      v6[3] = v4;
      v6[4] = v2;
      v6[5] = v3;
      aBlock[4] = sub_26200AAF0;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_261F78F64;
      aBlock[3] = &block_descriptor_30_1;
      v7 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      nw_queue_context_async_if_needed();
      _Block_release(v7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void SkywalkChannelVirtualInterface.writePackets(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 144);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  OUTLINED_FUNCTION_0_21();
  v11[1] = 1107296256;
  OUTLINED_FUNCTION_1();
  v11[2] = v9;
  v11[3] = &block_descriptor_10_0;
  v10 = _Block_copy(v11);

  nw_queue_context_async_if_needed();
  _Block_release(v10);
}

uint64_t SkywalkChannelVirtualInterface.deinit()
{
  v1 = v0;
  v2 = sub_26203A4BC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v10 = v9 - v8;
  v11 = sub_26203A4AC();
  if (qword_27FEF86C8 != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  v12 = qword_27FEFA490;
  if (os_log_type_enabled(qword_27FEFA490, v11))
  {
    OUTLINED_FUNCTION_42_1();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_30();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_261F67FE4(*(v1 + 16), *(v1 + 24), aBlock);
    _os_log_impl(&dword_261F5B000, v12, v11, "Invalidating virtual interface ref for interface %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v15 = *(*(v1 + 72) + 16);
  NEVirtualInterfaceInvalidate();
  v16 = *(v1 + 152);
  if (v16)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_261F7AA38(&qword_27FEF9B48, MEMORY[0x277D85208]);
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B50, &unk_262040460);
    sub_261F7AA80(&qword_27FEF9B58, &qword_27FEF9B50, &unk_262040460);
    sub_26203A75C();
    sub_26203A50C();

    (*(v5 + 8))(v10, v2);
  }

  v18 = *(v1 + 136);
  v19 = *(v1 + 144);
  aBlock[4] = sub_26200A974;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_1();
  aBlock[2] = v20;
  aBlock[3] = &block_descriptor_13_0;
  v21 = _Block_copy(aBlock);
  swift_retain_n();
  swift_unknownObjectRetain();

  nw_queue_context_async_if_needed();
  _Block_release(v21);

  swift_unknownObjectRelease();
  v22 = *(v1 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 32));
  v23 = *(v1 + 72);

  v24 = *(v1 + 96);
  sub_261F665E4(*(v1 + 88));
  v25 = *(v1 + 112);
  v26 = *(v1 + 120);
  sub_262007818(*(v1 + 104));
  v27 = *(v1 + 128);
  swift_unknownObjectRelease();
  v28 = *(v1 + 136);

  v29 = *(v1 + 144);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t SkywalkChannelVirtualInterface.__deallocating_deinit()
{
  SkywalkChannelVirtualInterface.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t sub_262008BE8(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a1;
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v33 = a1[17];
    v37 = MEMORY[0x277D84F90];
    sub_261F95AE0(0, v8, 0);
    v9 = v37;
    v10 = (a2 + 120);
    v11 = v8;
    do
    {
      v12 = *(v10 - 1);
      v13 = *v10;
      sub_261F6B73C(v12, *v10);
      v15 = *(v37 + 16);
      v14 = *(v37 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_261F95AE0(v14 > 1, v15 + 1, 1);
      }

      v10 += 12;
      *(v37 + 16) = v15 + 1;
      v16 = v37 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      --v11;
    }

    while (v11);
    v5 = a3;
    v4 = a4;
    v7 = a1;
  }

  v17 = sub_262035D44(v9);

  if (v17 >= v8)
  {
    return v5(0);
  }

  v18 = sub_261FFAD40(v17, v8, a2);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ((v23 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_26203AC5C();
  swift_unknownObjectRetain_n();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    swift_unknownObjectRelease();
    v28 = MEMORY[0x277D84F90];
  }

  v29 = *(v28 + 16);

  if (__OFSUB__(v24 >> 1, v22))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v29 != (v24 >> 1) - v22)
  {
LABEL_22:
    swift_unknownObjectRelease();
LABEL_9:
    sub_261FFBE74(v18, v20, v22, v24);
    v26 = v25;
LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v26 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v26)
  {
    v26 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

LABEL_18:
  v30 = v7[13];
  v31 = v7[14];
  v32 = v7[15];
  v7[13] = v5;
  v7[14] = v4;
  v7[15] = v26;

  return sub_262007818(v30);
}

uint64_t sub_262008E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = sub_262039FAC();
  v24 = *(v21 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_262039FEC();
  v22 = *(v9 - 8);
  v23 = v9;
  v10 = *(v22 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 136);
  sub_2620354D8(&aBlock);
  v14 = v28;
  v25 = aBlock;
  v15 = *(a1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v25;
  *(v16 + 32) = v14;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;
  v30 = sub_26200AA2C;
  v31 = v16;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v28 = sub_261F78F64;
  v29 = &block_descriptor_21_0;
  v17 = _Block_copy(&aBlock);
  v18 = v15;

  sub_262039FCC();
  v26 = MEMORY[0x277D84F90];
  sub_261F7AA38(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  v19 = v21;
  sub_26203A75C();
  MEMORY[0x266722A20](0, v12, v8, v17);
  _Block_release(v17);

  (*(v24 + 8))(v8, v19);
  (*(v22 + 8))(v12, v23);
}

uint64_t sub_262009150(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6)
{
  v10 = *(a1 + 16);
  if (v10)
  {

    sub_26200A458(v10, a1);
    v13 = v12;
    v14 = a4[19];
    if (v14)
    {
      v15 = *(v12 + 16);
      if (v15)
      {
        v16 = (v12 + 32);
        v17 = v14;
        for (i = v15 - 1; ; --i)
        {
          memcpy(__dst, v16, 0x60uLL);
          memcpy(v24, v16, sizeof(v24));
          sub_261F6D6B0(__dst, v23);
          sub_262009298(v24, v17);
          sub_261F6D70C(__dst);
          if (!i)
          {
            break;
          }

          v16 += 96;
        }
      }
    }

    __dst[0] = v13;
    __dst[1] = a2;
    __dst[2] = a3;

    a5(__dst);
  }

  else
  {
    v19 = a4[11];
    v20 = a4[12];
    a4[11] = a5;
    a4[12] = a6;
    sub_261F665E4(v19);

    return a2(v21);
  }
}

uint64_t sub_262009298(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  v6 = OUTLINED_FUNCTION_40(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  v10 = OUTLINED_FUNCTION_40(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  v18 = sub_262039ACC();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  result = MEMORY[0x28223BE20](v22);
  v27 = a1[9];
  if (v27 >> 60 != 15)
  {
    v63 = a2;
    v64 = v26;
    v66 = v25;
    v67 = &v59 - v24;
    v62 = v2;
    v28 = a1[7];
    v65 = a1[6];
    v29 = a1[8];
    v30 = v27;
    v31 = a1[4];
    v32 = a1[5];
    sub_262039B3C();
    OUTLINED_FUNCTION_34_5();
    sub_261F7B690(v29, v30);
    v33 = OUTLINED_FUNCTION_39_1();
    sub_261F6B73C(v33, v34);
    OUTLINED_FUNCTION_39_1();
    sub_262039ADC();
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      sub_261F7B6A4(v29, v30);
      v35 = v17;
      return sub_261FC2F14(v35, &qword_27FEFA270, &qword_262041910);
    }

    v60 = v29;
    v61 = v30;
    v36 = v66;
    v37 = v67;
    v38 = *(v66 + 32);
    v38(v67, v17, v18);
    OUTLINED_FUNCTION_34_5();
    sub_261F6B73C(v65, v28);
    sub_262039ADC();
    if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
    {
      sub_261F7B6A4(v60, v61);
      (*(v36 + 8))(v37, v18);
      v35 = v15;
      return sub_261FC2F14(v35, &qword_27FEFA270, &qword_262041910);
    }

    v39 = v64;
    v38(v64, v15, v18);
    v41 = v60;
    v40 = v61;
    v42 = v67;
    switch(v61 >> 61)
    {
      case 1uLL:
        v51 = v60 >> 16;
        OUTLINED_FUNCTION_8_3();
        sub_26203A7CC();
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](0x203A504455, 0xE500000000000000);
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_35_2();
        LOWORD(v68) = v41;
        OUTLINED_FUNCTION_39_1();
        v52 = sub_26203ABAC();
        MEMORY[0x266722710](v52);
        v39 = v64;
        v42 = v67;

        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_9_13();
        OUTLINED_FUNCTION_35_2();
        LOWORD(v68) = v51;
        OUTLINED_FUNCTION_39_1();
        v40 = v61;
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

        goto LABEL_15;
      case 2uLL:
        v49 = v60 >> 8;
        OUTLINED_FUNCTION_8_3();
        sub_26203A7CC();
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](0x203A504D4349, 0xE600000000000000);
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_9_13();
        MEMORY[0x266722710](0x3D657079745B20, 0xE700000000000000);
        LOBYTE(v68) = v41;
        OUTLINED_FUNCTION_15_9();
        v50 = sub_26203ABAC();
        MEMORY[0x266722710](v50);

        MEMORY[0x266722710](0x3D65646F6320, 0xE600000000000000);
        LOBYTE(v68) = v49;
        v40 = v61;
        OUTLINED_FUNCTION_15_9();
        goto LABEL_11;
      case 3uLL:
        OUTLINED_FUNCTION_8_3();
        sub_26203A7CC();
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](0x6165737261706E55, 0xEC00000020656C62);
        LOBYTE(v68) = v41;
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

        MEMORY[0x266722710](8250, 0xE200000000000000);
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_9_13();
        MEMORY[0x266722710](0x3D726F7272655B20, 0xE800000000000000);
        v68 = v40 & 0x1FFFFFFFFFFFFFFFLL;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        sub_26203A8CC();
        goto LABEL_13;
      case 4uLL:
        OUTLINED_FUNCTION_8_3();
        sub_26203A7CC();
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](0x206E776F6E6B6E55, 0xE800000000000000);
        LOBYTE(v68) = v41;
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

        MEMORY[0x266722710](8250, 0xE200000000000000);
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_9_13();
        goto LABEL_15;
      default:
        v43 = v60 >> 16;
        v44 = HIDWORD(v60);
        v65 = HIDWORD(v61);
        v45 = HIWORD(v61);
        OUTLINED_FUNCTION_8_3();
        sub_26203A7CC();
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](0x203A504354, 0xE500000000000000);
        sub_26203A8CC();
        OUTLINED_FUNCTION_35_2();
        LOWORD(v68) = v41;
        v46 = sub_26203ABAC();
        MEMORY[0x266722710](v46);

        OUTLINED_FUNCTION_24_3();
        sub_26203A8CC();
        OUTLINED_FUNCTION_35_2();
        LOWORD(v68) = v43;
        v40 = v61;
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

        MEMORY[0x266722710](0x3D7367616C665B20, 0xE800000000000000);
        v47 = sub_2620033D4(v45);
        MEMORY[0x266722710](v47);

        MEMORY[0x266722710](0x3D71657320, 0xE500000000000000);
        LODWORD(v68) = v44;
        v39 = v64;
        v42 = v67;
        OUTLINED_FUNCTION_15_9();
        v48 = sub_26203ABAC();
        MEMORY[0x266722710](v48);

        MEMORY[0x266722710](0x3D6B636120, 0xE500000000000000);
        LODWORD(v68) = v40;
        OUTLINED_FUNCTION_15_9();
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

        MEMORY[0x266722710](0x3D776F646E697720, 0xE800000000000000);
        LOWORD(v68) = v65;
        v41 = v60;
LABEL_11:
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

LABEL_13:
        MEMORY[0x266722710](93, 0xE100000000000000);
LABEL_15:
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](10, 0xE100000000000000);
        sub_261FDBDF0();
        v54 = v53;
        v56 = v55;
        v57 = *(v62 + 80);
        OS_dispatch_io.write(content:completingOn:completion:)(v54, v56, v57, nullsub_1, 0);

        sub_261F6BFFC(v54, v56);
        sub_261F7B6A4(v41, v40);
        v58 = *(v66 + 8);
        v58(v39, v18);
        result = (v58)(v42, v18);
        break;
    }
  }

  return result;
}

uint64_t sub_262009AE4(int a1, NSObject *a2)
{
  v4 = sub_26203942C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = sub_2620392DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  if (a1)
  {
    v48 = a2;
    v20 = sub_2620396AC();
    if ((v20 & 0x100000000) != 0)
    {
      v21 = 5;
    }

    else
    {
      v21 = v20;
    }

    LODWORD(v49) = v21;
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_261F7AA38(&qword_27FEF9920, MEMORY[0x277CC8658]);
    sub_2620393DC();
    v22 = sub_26203A48C();
    if (qword_27FEF86C8 != -1)
    {
      swift_once();
    }

    v23 = qword_27FEFA490;
    (*(v5 + 16))(v11, v48, v4);
    (*(v13 + 16))(v17, v19, v12);
    v48 = v23;
    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v24 = 136446722;
      sub_261F7AA38(&unk_27FEF9B70, MEMORY[0x277CC9260]);
      v46 = v22;
      v25 = sub_26203ABAC();
      v45 = a1;
      v27 = v26;
      (*(v5 + 8))(v11, v4);
      v28 = sub_261F67FE4(v25, v27, &v49);

      *(v24 + 4) = v28;
      *(v24 + 12) = 1024;
      *(v24 + 14) = v45;
      *(v24 + 18) = 2080;
      sub_261F7AA38(&unk_27FEF9B80, MEMORY[0x277CC8658]);
      v29 = sub_26203ACCC();
      v31 = v30;
      v32 = *(v13 + 8);
      v32(v17, v12);
      v33 = sub_261F67FE4(v29, v31, &v49);

      *(v24 + 20) = v33;
      _os_log_impl(&dword_261F5B000, v48, v46, "%{public}s: IO cleanup error: %d, %s", v24, 0x1Cu);
      v34 = v47;
      swift_arrayDestroy();
      MEMORY[0x266724180](v34, -1, -1);
      MEMORY[0x266724180](v24, -1, -1);
      return (v32)(v19, v12);
    }

    else
    {
      v44 = *(v13 + 8);
      v44(v17, v12);
      (*(v5 + 8))(v11, v4);
      return (v44)(v19, v12);
    }
  }

  else
  {
    v36 = sub_26203A46C();
    if (qword_27FEF86C8 != -1)
    {
      swift_once();
    }

    v37 = qword_27FEFA490;
    (*(v5 + 16))(v9, a2, v4);
    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 136446210;
      sub_261F7AA38(&unk_27FEF9B70, MEMORY[0x277CC9260]);
      v40 = sub_26203ABAC();
      v42 = v41;
      (*(v5 + 8))(v9, v4);
      v43 = sub_261F67FE4(v40, v42, &v49);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_261F5B000, v37, v36, "%{public}s: IO cleanup complete", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x266724180](v39, -1, -1);
      return MEMORY[0x266724180](v38, -1, -1);
    }

    else
    {
      return (*(v5 + 8))(v9, v4);
    }
  }
}

void SkywalkChannelVirtualInterface.getInterfaceStatistics()()
{
  v1 = *(v0[9] + 16);
  v2 = NEVirtualInterfaceCopyStatistics();
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = v3;
      sub_26203A0CC();
    }

    sub_261F9BCE0();
    OUTLINED_FUNCTION_5_11();
    sub_26203AD3C();
    sub_26203A7CC();
    MEMORY[0x266722710](0xD00000000000003BLL, 0x800000026204F960);
    type metadata accessor for CFDictionary(0);
    v5 = v3;
    v6 = sub_26203A20C();
    MEMORY[0x266722710](v6);

    v7 = OUTLINED_FUNCTION_22(0x726F6620u);
    MEMORY[0x266722710](v7, v8 & 0xFFFFFFFFFFFFLL | 0xEF20000000000000);
    MEMORY[0x266722710](v0[2], v0[3]);
    sub_261F9D610();
    swift_allocError();
    sub_26203AD4C();
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26200A3A0@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = SkywalkChannelVirtualInterface.__allocating_init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(a1, a2, a3, a4 & 0x1FFFF, a5 | ((HIDWORD(a5) & 1) << 32), a6, a7);
  if (!v8)
  {
    *a8 = result;
  }

  return result;
}

void sub_26200A458(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    goto LABEL_37;
  }

  v3 = v2;
  if (a1)
  {
    v6 = sub_26203A3FC();
    *(v6 + 16) = a1;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v47 = a1;
  v7 = *(a2 + 16);
  v46 = v6;
  if (v7)
  {
    v53 = 0;
    v48 = v6 + 32;
    v8 = (a2 + 32);
    v62 = ", dropping %d packets";
    while (1)
    {
      v9 = *v8;
      v10 = *(v8 + 1);
      v54 = *v8;
      switch(v10 >> 62)
      {
        case 1uLL:
          v12 = *v8;
          if (!__OFSUB__(DWORD1(v9), v9))
          {
            v11 = DWORD1(v9) - v9;
            goto LABEL_12;
          }

          __break(1u);
          goto LABEL_35;
        case 2uLL:
          v12 = *v8;
          v14 = *(v9 + 16);
          v13 = *(v9 + 24);
          v11 = v13 - v14;
          if (__OFSUB__(v13, v14))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return;
          }

LABEL_12:
          sub_261F6B73C(v12, v10);
          sub_261F6B73C(v12, v10);
          sub_261F6B73C(v12, v10);
          *&v9 = v54;
LABEL_13:
          if (v11 < 40)
          {
LABEL_14:
            sub_261F6BFFC(v9, v10);
            sub_261F9BCE0();
            sub_26203ACEC();
            v55 = v56;
            sub_261F9D610();
            v15 = swift_allocError();
            sub_26203AD4C();
            swift_willThrow();
            v16 = v54;
            v3 = 0;
LABEL_17:
            v18 = v16;
            sub_261F6BFFC(v16, v10);
            v19 = sub_26203A48C();
            if (qword_27FEF86C8 != -1)
            {
              swift_once();
            }

            v20 = qword_27FEFA490;
            if (os_log_type_enabled(qword_27FEFA490, v19))
            {
              v21 = swift_slowAlloc();
              v22 = v7;
              v23 = swift_slowAlloc();
              *v21 = 138543362;
              v24 = v15;
              v25 = _swift_stdlib_bridgeErrorToNSError();
              *(v21 + 4) = v25;
              *v23 = v25;
              _os_log_impl(&dword_261F5B000, v20, v19, "Discarding packet data as it is not a valid IPv6 packet: %{public}@", v21, 0xCu);
              sub_261FC2F14(v23, qword_27FEF9B90, &qword_262040548);
              v26 = v23;
              v7 = v22;
              v3 = 0;
              MEMORY[0x266724180](v26, -1, -1);
              MEMORY[0x266724180](v21, -1, -1);
            }

            sub_261F6BFFC(v18, v10);

            goto LABEL_22;
          }

          v17 = v9;
          sub_261F6B73C(v9, v10);
          IPv6Header.init(_:)();
          if (v3)
          {
            sub_261F6BFFC(v17, v10);
            v15 = v3;
            v3 = 0;
            v16 = v54;
            goto LABEL_17;
          }

          v28 = *(&v56 + 1);
          v27 = v56;
          v29 = v57;
          v30 = v58;
          v31 = v59;
          v33 = v60;
          v32 = v61;
          if (qword_28108CB70 != -1)
          {
            v44 = v60;
            v45 = v61;
            v43 = v59;
            v40 = v58;
            v41 = v56;
            v42 = v57;
            swift_once();
            v30 = v40;
            v32 = v45;
            v31 = v43;
            v33 = v44;
            v29 = v42;
            v28 = *(&v41 + 1);
            v27 = v41;
          }

          v49 = v7;
          v50 = v27;
          v52 = v28;
          v51 = v29;
          if (byte_27FF07DF0)
          {
            *&v56 = v27;
            *(&v56 + 1) = v28;
            v57 = v29;
            v58 = v30;
            v59 = v31;
            v60 = v33;
            v61 = v32;
            v34 = v30;
            v35 = v32;
            v36 = v31;
            sub_261F6B73C(v30, v31);
            sub_261F6B73C(v33, v35);
            sub_2620043E4(&v56, v17, v10, &v55);
            v37 = v55;
          }

          else
          {
            v34 = v30;
            v35 = v32;
            v36 = v31;
            sub_261F6BFFC(v17, v10);
            v37 = xmmword_26203F730;
          }

          v38 = v53;
          v39 = v48 + 96 * v53;
          *v39 = 30;
          *(v39 + 8) = v50;
          *(v39 + 16) = v52;
          *(v39 + 24) = v51;
          *(v39 + 32) = v34;
          *(v39 + 40) = v36;
          *(v39 + 48) = v33;
          *(v39 + 56) = v35;
          *(v39 + 64) = v37;
          *(v39 + 80) = v54;
          sub_261F6BFFC(v17, v10);
          ++v53;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_36;
          }

          v7 = v49;
LABEL_22:
          ++v8;
          if (!--v7)
          {
            goto LABEL_32;
          }

          break;
        case 3uLL:
          goto LABEL_14;
        default:
          v11 = BYTE6(v10);
          goto LABEL_13;
      }
    }
  }

  v53 = 0;
LABEL_32:
  if (v53 > v47)
  {
    goto LABEL_38;
  }

  *(v46 + 16) = v53;
}

uint64_t sub_26200A938(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

unint64_t sub_26200AA08(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26200AA3C(int a1)
{
  v3 = sub_26203942C();
  OUTLINED_FUNCTION_40(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_262009AE4(a1, v5);
}

uint64_t objectdestroy_6Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_26200AAF0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  SkywalkChannelVirtualInterface.writePackets(_:completion:)(v1, v2, v3);
}

void OUTLINED_FUNCTION_26_7()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_27_7()
{

  return sub_261F67FE4(v1, v0, (v2 - 168));
}

uint64_t sub_26200AB9C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v3 = v5;
      goto LABEL_6;
    case 2uLL:
      v2 = *(a1 + 24);
      a1 = *(a1 + 16);
      v3 = v2;
LABEL_6:
      result = sub_26200EED8(a1, v3);
      break;
    default:
      result = sub_2620394EC();
      break;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t NWConnection.receive(minLength:maxLength:completion:)()
{
  OUTLINED_FUNCTION_7_11();
  v3 = v2;
  OUTLINED_FUNCTION_107();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v0;

  sub_262039C7C();
}

uint64_t sub_26200AD80()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_28108B3B0 = result;
  return result;
}

id powerLog.getter()
{
  if (qword_28108B3A0 != -1)
  {
    swift_once();
  }

  v1 = qword_28108B3B0;

  return v1;
}

uint64_t sub_26200AE4C()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA4C8 = result;
  return result;
}

RemotePairingDevice::TransportProtocolType_optional __swiftcall TransportProtocolType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26203A96C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TransportProtocolType.rawValue.getter()
{
  v1 = 7365492;
  if (*v0 != 1)
  {
    v1 = 7365749;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1667855729;
  }
}

uint64_t sub_26200AF9C@<X0>(uint64_t *a1@<X8>)
{
  result = TransportProtocolType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TunnelConnectionState.hashValue.getter()
{
  v1 = *v0;
  sub_26203ADDC();
  MEMORY[0x266723290](v1);
  return sub_26203AE0C();
}

uint64_t PeerConnectionInfo.description.getter()
{
  v1 = *v0;
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);

  MEMORY[0x266722710](91, 0xE100000000000000);
  v2 = sub_26203ABAC();
  MEMORY[0x266722710](v2);

  MEMORY[0x266722710](93, 0xE100000000000000);
  return v4;
}

uint64_t PeerConnectionInfo.init(owningPID:owningProcessName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_26200B1A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4950676E696E776FLL && a2 == 0xE900000000000044;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000262052320 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

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

uint64_t sub_26200B278(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x4950676E696E776FLL;
  }
}

uint64_t sub_26200B2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26200B1A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26200B2E8(uint64_t a1)
{
  v2 = sub_26200C698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26200B324(uint64_t a1)
{
  v2 = sub_26200C698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PeerConnectionInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA4D0, &qword_262045290);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v12 = *v1;
  v13 = *(v1 + 1);
  v16[0] = *(v1 + 2);
  v16[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_26200C698();
  sub_26203AE5C();
  v18 = 0;
  sub_26203AB4C();
  if (!v2)
  {
    v17 = 1;
    sub_26203AAFC();
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t PeerConnectionInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA4E0, &qword_262045298);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_26200C698();
  sub_26203AE3C();
  if (!v2)
  {
    v12 = sub_26203AA3C();
    v14 = sub_26203A9EC();
    v16 = v15;
    v17 = *(v7 + 8);
    v18 = OUTLINED_FUNCTION_122();
    v19(v18);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_26200B6B0()
{
  v0 = sub_26203A1FC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_74();
  v8 = v7 - v6;
  sub_26203A1EC();
  v9 = sub_26203A1CC();
  v11 = v10;
  result = (*(v3 + 8))(v8, v0);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_28108C7E0 = v9;
    unk_28108C7E8 = v11;
  }

  return result;
}

unint64_t StreamBasedTunnelConnection.send(controlMessage:completion:)(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_26203933C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_26203932C();
  type metadata accessor for TunnelMessage();
  OUTLINED_FUNCTION_3_20();
  sub_26200EFDC(v12, v13);
  sub_26203931C();

  v14 = OUTLINED_FUNCTION_122();
  if (MEMORY[0x266721A20](v14) >= 0x10000)
  {
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000035, 0x8000000262052120);
    v15 = OUTLINED_FUNCTION_122();
    MEMORY[0x266721A20](v15);
    v16 = sub_26203ABAC();
    MEMORY[0x266722710](v16);

    MEMORY[0x266722710](0x736574796220, 0xE600000000000000);
    sub_261F9BCE0();
    sub_26203ACEC();
    sub_261F9D610();
    v17 = OUTLINED_FUNCTION_6();
    sub_26203AD4C();
    a2(v17);

    v18 = OUTLINED_FUNCTION_122();
    return sub_261F6BFFC(v18, v19);
  }

  if (qword_28108C7D0 != -1)
  {
    swift_once();
  }

  v24 = qword_28108C7E0;
  v25 = qword_28108C7E8[0];
  sub_261F6B73C(qword_28108C7E0, qword_28108C7E8[0]);
  v20 = OUTLINED_FUNCTION_122();
  result = MEMORY[0x266721A20](v20);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >> 16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_26200BB44(bswap32(result) >> 16);
  result = MEMORY[0x266721A20](v24, v25);
  if (result == 10)
  {
    OUTLINED_FUNCTION_122();
    sub_26203958C();
    (*(a5 + 88))(v24, v25, a2, a3, a4, a5);
    v22 = OUTLINED_FUNCTION_122();
    sub_261F6BFFC(v22, v23);
    v18 = v24;
    v19 = v25;
    return sub_261F6BFFC(v18, v19);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26200BABC(uint64_t a1, unint64_t a2)
{
  v8[3] = MEMORY[0x277CC9318];
  v8[4] = MEMORY[0x277CC9300];
  v8[0] = a1;
  v8[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_0Tm(v8, MEMORY[0x277CC9318]);
  v5 = *v4;
  v6 = v4[1];
  sub_261F6B73C(a1, a2);
  sub_26200AB9C(v5, v6);
  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

uint64_t sub_26200BB44(__int16 a1)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7[3] = MEMORY[0x277D838B0];
  v7[4] = MEMORY[0x277CC9C18];
  v7[0] = &v6;
  v7[1] = v7;
  v1 = __swift_project_boxed_opaque_existential_0Tm(v7, MEMORY[0x277D838B0]);
  v3 = *v1;
  v2 = v1[1];
  sub_2620394EC();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v7);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t StreamBasedTunnelConnection.receiveControlMessage(completion:)()
{
  OUTLINED_FUNCTION_7_11();
  v5 = v4;
  OUTLINED_FUNCTION_14_1();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v0;
  v6[4] = v5;
  v6[5] = v3;
  v6[6] = v1;
  v7 = *(v0 + 96);

  swift_unknownObjectRetain();
  v7(10, 10, sub_26200E3F8, v6, v2, v0);
}

uint64_t sub_26200BC9C(uint64_t a1, unint64_t a2, char a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v35 - v17);
  if (a3)
  {
    v19 = a1;
LABEL_35:
    swift_willThrow();
    *v18 = a1;
    swift_storeEnumTagMultiPayload();
    v34 = a1;
    a4(v18);

    return sub_261F66E60(v18, &qword_27FEFA2D0, &qword_262045930);
  }

  if (qword_28108C7D0 != -1)
  {
    swift_once();
  }

  sub_26200F7A8();
  if ((v20 & 1) == 0)
  {
LABEL_34:
    sub_261F9BCE0();
    sub_26203ACEC();
    v35[2] = v35[4];
    v35[3] = v35[5];
    sub_261F9D610();
    a1 = swift_allocError();
    sub_26203AD4C();
    goto LABEL_35;
  }

  result = MEMORY[0x266721A20](qword_28108C7E0, qword_28108C7E8[0]);
  v22 = a2 >> 62;
  v23 = 0;
  v24 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      v23 = a1;
      break;
    case 2uLL:
      v23 = *(a1 + 16);
      break;
    default:
      break;
  }

  v25 = __OFADD__(v23, result);
  v26 = v23 + result;
  if (v25)
  {
    __break(1u);
    goto LABEL_37;
  }

  v27 = v26 + 2;
  if (__OFADD__(v26, 2))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  switch(v22)
  {
    case 1:
      goto LABEL_16;
    case 2:
      v24 = *(a1 + 16);
LABEL_16:
      if (v26 < v24)
      {
        goto LABEL_34;
      }

      if (v22 == 2)
      {
        v28 = *(a1 + 24);
      }

      else
      {
        v28 = a1 >> 32;
      }

LABEL_29:
      if (v26 >= v27 || v28 < v27)
      {
        goto LABEL_34;
      }

LABEL_25:
      v30 = sub_261F6BE04(a1, a2, result);
      v31 = swift_allocObject();
      *(v31 + 16) = a4;
      *(v31 + 24) = a5;
      v32 = *(a8 + 96);

      v32(v30, v30, sub_26200EECC, v31, a7, a8);

      break;
    case 3:
      if (v26 < 0)
      {
        goto LABEL_34;
      }

      if (v27 > 0 || __OFSUB__(v26, v27))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    default:
      if (v26 < 0)
      {
        goto LABEL_34;
      }

      v28 = BYTE6(a2);
      goto LABEL_29;
  }

  return result;
}

void sub_26200C054()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for TunnelMessage();
  v7 = OUTLINED_FUNCTION_6_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  OUTLINED_FUNCTION_6_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  if (v3)
  {
    OUTLINED_FUNCTION_28_8();
    v19 = v5;
    v1(v18);
    sub_261F66E60(v18, &qword_27FEFA2D0, &qword_262045930);
  }

  else
  {
    v20 = sub_26203930C();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_2620392FC();
    OUTLINED_FUNCTION_3_20();
    sub_26200EFDC(v23, v24);
    sub_2620392EC();
    v25 = OUTLINED_FUNCTION_122();
    sub_261FCF8D4(v25, v26);
    swift_storeEnumTagMultiPayload();
    v1(v18);

    sub_261F66E60(v18, &qword_27FEFA2D0, &qword_262045930);
    sub_26200EE70(v12);
  }

  OUTLINED_FUNCTION_31_0();
}

void sub_26200C248()
{
  OUTLINED_FUNCTION_96();
  v44 = v1;
  v45 = v0;
  v43 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA520, &qword_262045940) - 8) + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = sub_262039E9C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74();
  v25 = (v24 - v23);
  v26 = 0;
  if ((v6 & 1) != 0 && v8)
  {
    v26 = sub_262039BAC();
  }

  sub_26200EF6C(v4, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
  {
    v27 = *(v20 + 32);
    v27(v25, v16, v17);
    sub_26200EFDC(&qword_27FEFA168, MEMORY[0x277CD8FC0]);
    swift_allocError();
    v27(v28, v25, v17);
    goto LABEL_11;
  }

  sub_261F66E60(v16, &qword_27FEFA520, &qword_262045940);
  if (v10 >> 60 == 15)
  {
    sub_261F9BCE0();
    sub_26203ACEC();
    v46 = v48;
    v47 = v49;
    sub_261F9D610();
    OUTLINED_FUNCTION_6();
    sub_26203AD4C();
LABEL_11:
    v33 = 1;
    goto LABEL_12;
  }

  sub_261F6B73C(v12, v10);
  v29 = MEMORY[0x266721A20](v12, v10);
  v30 = v43;
  if (v29 >= v43)
  {
    v33 = 0;
  }

  else
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_26203A7CC();
    if (v26)
    {
      v31 = " requested bytes, and no error";
      v32 = 0xD000000000000020;
    }

    else
    {
      v31 = "mote side with no error";
      v32 = 0xD000000000000022;
    }

    MEMORY[0x266722710](v32, v31 | 0x8000000000000000);
    v37 = OUTLINED_FUNCTION_11_0();
    v46 = MEMORY[0x266721A20](v37);
    OUTLINED_FUNCTION_108();
    v38 = sub_26203ABAC();
    MEMORY[0x266722710](v38);

    MEMORY[0x266722710](543584032, 0xE400000000000000);
    v46 = v30;
    OUTLINED_FUNCTION_108();
    v39 = sub_26203ABAC();
    MEMORY[0x266722710](v39);

    MEMORY[0x266722710](0xD00000000000001ELL, 0x8000000262052470);
    sub_261F9BCE0();
    sub_26203ACEC();
    v46 = v48;
    v47 = v49;
    sub_261F9D610();
    OUTLINED_FUNCTION_6();
    sub_26203AD4C();
    v40 = OUTLINED_FUNCTION_11_0();
    sub_261F6ADEC(v40, v41);
    v33 = 1;
  }

LABEL_12:
  v34 = OUTLINED_FUNCTION_11_0();
  v45(v34);
  v35 = OUTLINED_FUNCTION_11_0();
  sub_261FC07A8(v35, v36, v33);
  OUTLINED_FUNCTION_31_0();
}

unint64_t sub_26200C698()
{
  result = qword_28108C598[0];
  if (!qword_28108C598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28108C598);
  }

  return result;
}

uint64_t SocketTunnelConnection.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_26200C708(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_261F81D84(*a1, v3);
  return sub_26200C790(v2, v3);
}

uint64_t sub_26200C74C()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 64);
  sub_261F81D84(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_26200C790(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_261F6ADEC(v5, v6);
}

uint64_t sub_26200C844(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_26200C8E4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43();
  *(v1 + 88) = a1;
  return result;
}

uint64_t SocketTunnelConnection.__allocating_init(socket:queue:logPrefix:)()
{
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_12_11();
  v0 = swift_allocObject();
  SocketTunnelConnection.init(socket:queue:logPrefix:)();
  return v0;
}

void SocketTunnelConnection.init(socket:queue:logPrefix:)()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26203A4CC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  v16 = v15 - v14;
  *(v0 + 64) = xmmword_26203F730;
  *(v0 + 80) = xmmword_262045280;
  v17 = sub_26203A3FC();
  *(v17 + 16) = 8;
  if (("Only host should send handshake" & 0x2F00000000000000) == 0x2000000000000000)
  {
LABEL_15:
    OUTLINED_FUNCTION_8_12();
    OUTLINED_FUNCTION_13_12();
    __break(1u);
  }

  else
  {
    v18 = v17;
    v35 = v8;
    v33 = v5;
    v34 = v7;
    v19 = 0;
    v20 = v17 + 32;
    do
    {
      v21 = sub_26203A24C();
      if (v21 < 0)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v22 = v21;
      if (!v21)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_9();
      if (v22 > v36 * v22)
      {
        v23 = -v22 % v22;
        while (v23 > v36 * v22)
        {
          OUTLINED_FUNCTION_10_9();
        }
      }

      sub_26203A25C();
      v24 = sub_26203A2DC();
      v25 = (v20 + 16 * v19);
      *v25 = v24;
      v25[1] = v26;
      ++v19;
    }

    while (v19 != 8);
    *(v18 + 16) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AB0, &qword_262040300);
    sub_261F7AA80(&qword_28108B328, &unk_27FEF9AB0, &qword_262040300);
    v1[2] = sub_26203A2EC();
    v1[3] = v27;
    if (v3)
    {
      v28 = v34;
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
      v28 = v34;
      v29 = sub_26203ABAC();
      MEMORY[0x266722710](v29);
    }

    OUTLINED_FUNCTION_19_8("SocketTunnelConnection (");
    MEMORY[0x266722710]();

    MEMORY[0x266722710](41, 0xE100000000000000);

    sub_261F9B6D0(0, &qword_27FEFA4C0, 0x277D85C70);
    (*(v11 + 104))(v16, *MEMORY[0x277D85218], v35);
    v30 = swift_allocObject();
    *(v30 + 16) = v18;
    *(v30 + 24) = v37;
    *(v30 + 32) = v28;
    v31 = v33;

    v32 = sub_26203A4EC();
    v1[4] = v32;
    dispatch_io_set_low_water(v32, 1uLL);
    v1[5] = v31;
    v1[6] = v18;
    v1[7] = v37;
    OUTLINED_FUNCTION_31_0();
  }
}

uint64_t sub_26200CD2C(int a1, uint64_t a2, unint64_t a3, int a4)
{
  v8 = sub_2620392DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  if (a1)
  {
    v39 = a2;
    v16 = sub_2620396AC();
    if ((v16 & 0x100000000) != 0)
    {
      v17 = 5;
    }

    else
    {
      v17 = v16;
    }

    LODWORD(v40) = v17;
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_26200EFDC(&qword_27FEF9920, MEMORY[0x277CC8658]);
    sub_2620393DC();
    v18 = sub_26203A48C();
    if (qword_27FEF86F8 != -1)
    {
      swift_once();
    }

    v19 = qword_27FEFA4C8;
    (*(v9 + 16))(v13, v15, v8);
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v37 = v18;
      v21 = v20;
      v22 = swift_slowAlloc();
      v38 = a4;
      v23 = v22;
      v40 = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_261F67FE4(v39, a3, &v40);
      *(v21 + 12) = 1024;
      *(v21 + 14) = a1;
      *(v21 + 18) = 2080;
      sub_26200EFDC(&unk_27FEF9B80, MEMORY[0x277CC8658]);
      v24 = sub_26203ACCC();
      v26 = v25;
      v27 = *(v9 + 8);
      v27(v13, v8);
      v28 = sub_261F67FE4(v24, v26, &v40);

      *(v21 + 20) = v28;
      _os_log_impl(&dword_261F5B000, v19, v37, "%s: IO cleanup error: %d, %s", v21, 0x1Cu);
      swift_arrayDestroy();
      v29 = v23;
      a4 = v38;
      MEMORY[0x266724180](v29, -1, -1);
      MEMORY[0x266724180](v21, -1, -1);
      v27(v15, v8);
    }

    else
    {
      v34 = *(v9 + 8);
      v34(v13, v8);
      v34(v15, v8);
    }
  }

  else
  {
    v30 = sub_26203A46C();
    if (qword_27FEF86F8 != -1)
    {
      swift_once();
    }

    v31 = qword_27FEFA4C8;
    if (os_log_type_enabled(qword_27FEFA4C8, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_261F67FE4(a2, a3, &v40);
      _os_log_impl(&dword_261F5B000, v31, v30, "%s: IO cleanup done", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x266724180](v33, -1, -1);
      MEMORY[0x266724180](v32, -1, -1);
    }
  }

  return close(a4);
}

uint64_t SocketTunnelConnection.__allocating_init(socket:queue:logPrefix:takeOwnershipOfSocket:)()
{
  OUTLINED_FUNCTION_12_11();
  v0 = swift_allocObject();
  SocketTunnelConnection.init(socket:queue:logPrefix:takeOwnershipOfSocket:)();
  return v0;
}

void SocketTunnelConnection.init(socket:queue:logPrefix:takeOwnershipOfSocket:)()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v37 = sub_26203A4CC();
  v10 = OUTLINED_FUNCTION_0(v37);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  v17 = v16 - v15;
  *(v0 + 64) = xmmword_26203F730;
  *(v0 + 80) = xmmword_262045280;
  v18 = sub_26203A3FC();
  *(v18 + 16) = 8;
  if (("Only host should send handshake" & 0x2F00000000000000) == 0x2000000000000000)
  {
LABEL_15:
    OUTLINED_FUNCTION_8_12();
    OUTLINED_FUNCTION_13_12();
    __break(1u);
  }

  else
  {
    v19 = v18;
    v34 = v3;
    v35 = v7;
    v36 = v9;
    v20 = 0;
    v21 = v18 + 32;
    do
    {
      v22 = sub_26203A24C();
      if (v22 < 0)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v23 = v22;
      if (!v22)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_9();
      if (v23 > v38 * v23)
      {
        v24 = -v23 % v23;
        while (v24 > v38 * v23)
        {
          OUTLINED_FUNCTION_10_9();
        }
      }

      sub_26203A25C();
      v25 = sub_26203A2DC();
      v26 = (v21 + 16 * v20);
      *v26 = v25;
      v26[1] = v27;
      ++v20;
    }

    while (v20 != 8);
    *(v19 + 16) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AB0, &qword_262040300);
    sub_261F7AA80(&qword_28108B328, &unk_27FEF9AB0, &qword_262040300);
    v1[2] = sub_26203A2EC();
    v1[3] = v28;
    if (v5)
    {
      v29 = v36;
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
      v29 = v36;
      v30 = sub_26203ABAC();
      MEMORY[0x266722710](v30);
    }

    OUTLINED_FUNCTION_19_8("SocketTunnelConnection (");
    MEMORY[0x266722710]();

    MEMORY[0x266722710](41, 0xE100000000000000);

    sub_261F9B6D0(0, &qword_27FEFA4C0, 0x277D85C70);
    (*(v12 + 104))(v17, *MEMORY[0x277D85218], v37);
    OUTLINED_FUNCTION_107();
    v31 = swift_allocObject();
    *(v31 + 16) = v19;
    *(v31 + 24) = v39;
    *(v31 + 32) = v34 & 1;
    *(v31 + 36) = v29;
    v32 = v35;

    v33 = sub_26203A4EC();
    v1[4] = v33;
    dispatch_io_set_low_water(v33, 1uLL);
    v1[5] = v32;
    v1[6] = v19;
    v1[7] = v39;
    OUTLINED_FUNCTION_31_0();
  }
}

uint64_t sub_26200D574(int a1, uint64_t a2, unint64_t a3, int a4, int a5)
{
  LODWORD(v6) = a4;
  v42 = a3;
  v9 = sub_2620392DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  if (a1)
  {
    v17 = sub_2620396AC();
    if ((v17 & 0x100000000) != 0)
    {
      v18 = 5;
    }

    else
    {
      v18 = v17;
    }

    LODWORD(v43) = v18;
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_26200EFDC(&qword_27FEF9920, MEMORY[0x277CC8658]);
    sub_2620393DC();
    v19 = sub_26203A48C();
    if (qword_27FEF86F8 != -1)
    {
      swift_once();
    }

    v20 = qword_27FEFA4C8;
    (*(v10 + 16))(v14, v16, v9);
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v40 = v6;
      v22 = v21;
      v23 = swift_slowAlloc();
      v41 = a5;
      v39 = v23;
      v43 = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_261F67FE4(a2, v42, &v43);
      *(v22 + 12) = 1024;
      *(v22 + 14) = a1;
      *(v22 + 18) = 2080;
      sub_26200EFDC(&unk_27FEF9B80, MEMORY[0x277CC8658]);
      v24 = v19;
      v25 = sub_26203ACCC();
      v27 = v26;
      v28 = *(v10 + 8);
      v28(v14, v9);
      v29 = sub_261F67FE4(v25, v27, &v43);

      *(v22 + 20) = v29;
      _os_log_impl(&dword_261F5B000, v20, v24, "%s: IO cleanup error: %d, %s", v22, 0x1Cu);
      v30 = v39;
      swift_arrayDestroy();
      a5 = v41;
      MEMORY[0x266724180](v30, -1, -1);
      v31 = v22;
      LOBYTE(v22) = v40;
      MEMORY[0x266724180](v31, -1, -1);
      result = (v28)(v16, v9);
      if ((v22 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v38 = *(v10 + 8);
      v38(v14, v9);
      result = (v38)(v16, v9);
      if ((v6 & 1) == 0)
      {
        return result;
      }
    }

    return close(a5);
  }

  v33 = sub_26203A46C();
  if (qword_27FEF86F8 != -1)
  {
    swift_once();
  }

  v34 = qword_27FEFA4C8;
  result = os_log_type_enabled(qword_27FEFA4C8, v33);
  if (result)
  {
    v35 = v6;
    v6 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v6 = 136315138;
    *(v6 + 4) = sub_261F67FE4(a2, v42, &v43);
    _os_log_impl(&dword_261F5B000, v34, v33, "%s: IO cleanup done", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x266724180](v36, -1, -1);
    v37 = v6;
    LOBYTE(v6) = v35;
    result = MEMORY[0x266724180](v37, -1, -1);
  }

  if (v6)
  {
    return close(a5);
  }

  return result;
}

void sub_26200DA2C()
{
  v1 = v0;
  v2 = sub_26203A48C();
  if (qword_27FEF86F8 != -1)
  {
    OUTLINED_FUNCTION_1_22();
    swift_once();
  }

  if (os_log_type_enabled(qword_27FEFA4C8, v2))
  {
    v3 = OUTLINED_FUNCTION_27();
    v4 = OUTLINED_FUNCTION_31_7();
    v9 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_261F67FE4(*(v1 + 48), *(v1 + 56), &v9);
    OUTLINED_FUNCTION_30_7(&dword_261F5B000, v5, v6, "%s: receiving a datagram socket connection");
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_26203A7CC();
  v8 = *(v1 + 48);
  v7 = *(v1 + 56);

  v9 = v8;
  v10 = v7;
  MEMORY[0x266722710](0xD000000000000028, 0x8000000262052200);
  OUTLINED_FUNCTION_29_8();
  __break(1u);
}

uint64_t sub_26200DB68()
{
  v1 = sub_26203A4BC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_74();
  v9 = v8 - v7;
  v10 = sub_26203A4AC();
  if (qword_27FEF86F8 != -1)
  {
    OUTLINED_FUNCTION_1_22();
    swift_once();
  }

  v11 = qword_27FEFA4C8;
  if (os_log_type_enabled(qword_27FEFA4C8, v10))
  {
    v12 = OUTLINED_FUNCTION_27();
    v13 = OUTLINED_FUNCTION_31_7();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_261F67FE4(v0[6], v0[7], &v18);
    _os_log_impl(&dword_261F5B000, v11, v10, "%s: closing IO on cancel()", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  v14 = v0[4];
  v18 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_14();
  sub_26200EFDC(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B50, &unk_262040460);
  sub_261F7AA80(&qword_27FEF9B58, &qword_27FEF9B50, &unk_262040460);
  sub_26203A75C();
  sub_26203A50C();
  return (*(v4 + 8))(v9, v1);
}

void sub_26200DD68()
{
  v1 = v0;
  v2 = sub_26203A48C();
  if (qword_27FEF86F8 != -1)
  {
    OUTLINED_FUNCTION_1_22();
    swift_once();
  }

  if (os_log_type_enabled(qword_27FEFA4C8, v2))
  {
    v3 = OUTLINED_FUNCTION_27();
    v4 = OUTLINED_FUNCTION_31_7();
    v9 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_261F67FE4(*(v1 + 48), *(v1 + 56), &v9);
    OUTLINED_FUNCTION_30_7(&dword_261F5B000, v5, v6, "%s: starting a QUIC based socket connection");
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_26203A7CC();
  v8 = *(v1 + 48);
  v7 = *(v1 + 56);

  v9 = v8;
  v10 = v7;
  MEMORY[0x266722710](0xD000000000000029, 0x8000000262052230);
  OUTLINED_FUNCTION_29_8();
  __break(1u);
}

void SocketTunnelConnection.deinit()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v2 = sub_26203A4BC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v10 = v9 - v8;
  v11 = sub_26203A4AC();
  if (qword_27FEF86F8 != -1)
  {
    OUTLINED_FUNCTION_1_22();
    swift_once();
  }

  v12 = qword_27FEFA4C8;
  if (os_log_type_enabled(qword_27FEFA4C8, v11))
  {
    v13 = OUTLINED_FUNCTION_27();
    v14 = OUTLINED_FUNCTION_31_7();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_261F67FE4(*(v1 + 48), *(v1 + 56), &v21);
    _os_log_impl(&dword_261F5B000, v12, v11, "%s: closing IO on deinit", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  v15 = *(v1 + 32);
  v21 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_14();
  sub_26200EFDC(v16, v17);
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B50, &unk_262040460);
  sub_261F7AA80(&qword_27FEF9B58, &qword_27FEF9B50, &unk_262040460);
  sub_26203A75C();
  sub_26203A50C();

  (*(v5 + 8))(v10, v2);
  v19 = *(v1 + 24);

  v20 = *(v1 + 56);

  sub_261F6ADEC(*(v1 + 64), *(v1 + 72));
  OUTLINED_FUNCTION_31_0();
}

uint64_t SocketTunnelConnection.__deallocating_deinit()
{
  SocketTunnelConnection.deinit();
  v0 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_26200E430()
{
  result = qword_27FEFA4F0;
  if (!qword_27FEFA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA4F0);
  }

  return result;
}

unint64_t sub_26200E488()
{
  result = qword_27FEFA4F8;
  if (!qword_27FEFA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA4F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransportProtocolType(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26200E5D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF && *(a1 + 40))
    {
      v2 = *a1 + 14;
    }

    else
    {
      v2 = (((*(a1 + 24) >> 58) >> 3) & 1 | (2 * ((*(a1 + 24) >> 58) & 4 | (*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26200E634(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((-a2 >> 1) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 1) & 7 | (8 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_26200E6AC(uint64_t result, char a2)
{
  v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TunnelConnectionIdentifierCategory(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_26200EC38(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26200ED18()
{
  result = qword_27FEFA508;
  if (!qword_27FEFA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA508);
  }

  return result;
}

unint64_t sub_26200ED70()
{
  result = qword_28108C580;
  if (!qword_28108C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C580);
  }

  return result;
}

unint64_t sub_26200EDC8()
{
  result = qword_28108C588;
  if (!qword_28108C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C588);
  }

  return result;
}

unint64_t sub_26200EE1C()
{
  result = qword_28108C240;
  if (!qword_28108C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C240);
  }

  return result;
}

uint64_t sub_26200EE70(uint64_t a1)
{
  v2 = type metadata accessor for TunnelMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26200EECC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26200C054();
}

uint64_t sub_26200EED8(uint64_t a1, uint64_t a2)
{
  result = sub_26203937C();
  if (!result || (result = sub_2620393AC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26203939C();
      return sub_2620394EC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26200EF6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA520, &qword_262045940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26200EFDC(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_10_9()
{
  *(v0 - 96) = 0;

  JUMPOUT(0x2667241A0);
}

uint64_t OUTLINED_FUNCTION_29_8()
{

  return sub_26203A91C();
}

void OUTLINED_FUNCTION_30_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_26200F09C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

unint64_t sub_26200F0F0(uint64_t a1, void (*a2)(void *))
{
  v3 = sub_26203933C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26203932C();
  type metadata accessor for TunnelMessage();
  sub_2620176E8(&qword_28108CA28, type metadata accessor for TunnelMessage);
  v6 = sub_26203931C();
  v8 = v7;

  if (MEMORY[0x266721A20](v6, v8) >= 0x10000)
  {
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000035, 0x8000000262052120);
    MEMORY[0x266721A20](v6, v8);
    v9 = sub_26203ABAC();
    MEMORY[0x266722710](v9);

    MEMORY[0x266722710](0x736574796220, 0xE600000000000000);
    sub_261F9BCE0();
    sub_26203ACEC();
    sub_261F9D610();
    v10 = swift_allocError();
    sub_26203AD4C();
    a2(v10);

    v11 = v6;
    v12 = v8;
    return sub_261F6BFFC(v11, v12);
  }

  if (qword_28108C7D0 != -1)
  {
    swift_once();
  }

  v14 = qword_28108C7E0;
  v15 = qword_28108C7E8[0];
  sub_261F6B73C(qword_28108C7E0, qword_28108C7E8[0]);
  result = MEMORY[0x266721A20](v6, v8);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >> 16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_26200BB44(bswap32(result) >> 16);
  result = MEMORY[0x266721A20](v14, v15);
  if (result == 10)
  {
    sub_26203958C();
    sub_262010744();
    sub_261F6BFFC(v6, v8);
    v11 = v14;
    v12 = v15;
    return sub_261F6BFFC(v11, v12);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26200F41C(uint64_t a1, unint64_t a2, char a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v28 - v12);
  if (a3)
  {
    v14 = a1;
LABEL_35:
    swift_willThrow();
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v27 = a1;
    a4(v13);

    return sub_261FCB894(v13, &qword_27FEFA2D0, &qword_262045930);
  }

  if (qword_28108C7D0 != -1)
  {
    swift_once();
  }

  sub_26200F7A8();
  if ((v15 & 1) == 0)
  {
LABEL_34:
    sub_261F9BCE0();
    sub_26203ACEC();
    v28[2] = v28[4];
    v28[3] = v28[5];
    sub_261F9D610();
    a1 = swift_allocError();
    sub_26203AD4C();
    goto LABEL_35;
  }

  result = MEMORY[0x266721A20](qword_28108C7E0, qword_28108C7E8[0]);
  v17 = a2 >> 62;
  v18 = 0;
  v19 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      v18 = a1;
      break;
    case 2uLL:
      v18 = *(a1 + 16);
      break;
    default:
      break;
  }

  v20 = __OFADD__(v18, result);
  v21 = v18 + result;
  if (v20)
  {
    __break(1u);
    goto LABEL_37;
  }

  v22 = v21 + 2;
  if (__OFADD__(v21, 2))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  switch(v17)
  {
    case 1:
      goto LABEL_16;
    case 2:
      v19 = *(a1 + 16);
LABEL_16:
      if (v21 < v19)
      {
        goto LABEL_34;
      }

      if (v17 == 2)
      {
        v23 = *(a1 + 24);
      }

      else
      {
        v23 = a1 >> 32;
      }

LABEL_29:
      if (v21 >= v22 || v23 < v22)
      {
        goto LABEL_34;
      }

LABEL_25:
      sub_261F6BE04(a1, a2, result);
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = a5;

      sub_262010894();

      break;
    case 3:
      if (v21 < 0)
      {
        goto LABEL_34;
      }

      if (v22 > 0 || __OFSUB__(v21, v22))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    default:
      if (v21 < 0)
      {
        goto LABEL_34;
      }

      v23 = BYTE6(a2);
      goto LABEL_29;
  }

  return result;
}

void sub_26200F7A8()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26203959C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v14);
  v16 = &v26[-v15];
  switch(v5 >> 62)
  {
    case 2uLL:
      v17 = *(v7 + 16);
      break;
    default:
      break;
  }

  sub_261F6B73C(v7, v5);
  sub_2620395AC();
  switch(v1 >> 62)
  {
    case 2uLL:
      v18 = *(v3 + 16);
      break;
    default:
      break;
  }

  sub_261F6B73C(v3, v1);
  sub_2620395AC();
  sub_2620176E8(&qword_28108CF60, MEMORY[0x277CC92E0]);
  while (1)
  {
    sub_26203A6FC();
    if (v26[15])
    {
      v22 = *(v11 + 8);
      v23 = OUTLINED_FUNCTION_1_1();
      v22(v23);
      sub_26203A6FC();
      (v22)(v16, v8);
      goto LABEL_12;
    }

    v19 = v26[14];
    sub_26203A6FC();
    if (v26[11])
    {
      break;
    }

    if (v19 != v26[10])
    {
      v20 = *(v11 + 8);
      v21 = OUTLINED_FUNCTION_1_1();
      v20(v21);
      (v20)(v16, v8);
      goto LABEL_12;
    }
  }

  v24 = *(v11 + 8);
  v25 = OUTLINED_FUNCTION_1_1();
  v24(v25);
  (v24)(v16, v8);
LABEL_12:
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_26200FA38()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA528 = result;
  return result;
}

void sub_26200FAB4()
{
  OUTLINED_FUNCTION_96();
  v2 = v0;
  v3 = sub_262039AFC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_54();
  v93 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v92 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  OUTLINED_FUNCTION_40(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_140(&v85 - v17);
  v18 = sub_262039B3C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_54();
  v95 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_140(&v85 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA108, &qword_2620434D8);
  OUTLINED_FUNCTION_40(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v31);
  v32 = OUTLINED_FUNCTION_36_5();
  v33 = OUTLINED_FUNCTION_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_74();
  v40 = v39 - v38;
  v41 = *(v0 + 48);
  sub_262039B8C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v32) == 1)
  {
    sub_261FCB894(v1, &qword_27FEFA108, &qword_2620434D8);
    LOBYTE(v40) = sub_26203A49C();
    if (qword_27FEF8708 != -1)
    {
LABEL_28:
      OUTLINED_FUNCTION_0_30();
    }

    if (os_log_type_enabled(qword_27FEFA528, v40))
    {
      v42 = OUTLINED_FUNCTION_40_2();
      v111[0] = OUTLINED_FUNCTION_39_0();
      *v42 = 136446466;
      v43 = sub_261F67FE4(*(v2 + 16), *(v2 + 24), v111);
      OUTLINED_FUNCTION_22_9(v43);
      v44 = *(v2 + 32);
      v45 = *(v2 + 40);
      OUTLINED_FUNCTION_2_23();
      v109 = v46;
      v110 = v47;
      MEMORY[0x266722710]();
      v48 = sub_261F67FE4(v109, v110, v111);

      *(v42 + 14) = v48;
      OUTLINED_FUNCTION_16_13(&dword_261F5B000, v49, v50, "%{public}s/%s: Tunnel connection path is nil");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }
  }

  else
  {
    v99 = v3;
    v86 = v2;
    v87 = v35;
    v51 = *(v35 + 32);
    v88 = v32;
    v51(v40, v1, v32);
    v52 = sub_262039E7C();
    v53 = 0;
    v107 = *(v52 + 16);
    v102 = v21 + 16;
    v101 = *MEMORY[0x277CD8CB8];
    v54 = (v6 + 104);
    v55 = (v6 + 8);
    v97 = *MEMORY[0x277CD8CC0];
    v91 = (v21 + 32);
    v96 = (v21 + 8);
    v94 = MEMORY[0x277D84F90];
    v56 = v90;
    v103 = v52;
    v104 = v40;
    v100 = v21;
    v98 = v18;
LABEL_7:
    v57 = v93;
    while (v107 != v53)
    {
      if (v53 >= *(v52 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v106 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v58 = *(v21 + 72);
      v108 = v53;
      v105 = v58;
      (*(v21 + 16))(v56, v52 + v106 + v58 * v53, v18);
      sub_262039B1C();
      v2 = *v54;
      v59 = v99;
      (*v54)(v57, v101, v99);
      OUTLINED_FUNCTION_10_10();
      sub_2620176E8(&qword_27FEFA530, v60);
      v61 = OUTLINED_FUNCTION_30_8();
      v62 = *v55;
      (*v55)(v57, v59);
      v63 = OUTLINED_FUNCTION_204();
      v62(v63);
      if ((v61 & 1) == 0 || (sub_262039B1C(), (v2)(v57, v97, v59), v64 = OUTLINED_FUNCTION_30_8(), (v62)(v57, v59), v65 = OUTLINED_FUNCTION_204(), v62(v65), (v64 & 1) == 0))
      {
        v66 = *v91;
        v18 = v98;
        (*v91)(v95, v56, v98);
        v67 = v94;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v67;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_261F95AA0(0, *(v67 + 16) + 1, 1);
          v56 = v90;
          v67 = v109;
        }

        v21 = v100;
        v69 = v108;
        v2 = *(v67 + 16);
        v70 = *(v67 + 24);
        if (v2 >= v70 >> 1)
        {
          sub_261F95AA0(v70 > 1, v2 + 1, 1);
          v69 = v108;
          v67 = v109;
          v56 = v90;
        }

        v53 = v69 + 1;
        *(v67 + 16) = v2 + 1;
        v94 = v67;
        v66(v67 + v106 + v2 * v105, v95, v18);
        v52 = v103;
        v40 = v104;
        goto LABEL_7;
      }

      v18 = v98;
      (*v96)(v56, v98);
      v53 = v108 + 1;
      v52 = v103;
      v40 = v104;
      v21 = v100;
    }

    v71 = v89;
    sub_261FD4744(v94);

    if (__swift_getEnumTagSinglePayload(v71, 1, v18) == 1)
    {
      sub_261FCB894(v71, &unk_27FEF9B60, &unk_262040530);
      v72 = 0;
      v73 = 0;
    }

    else
    {
      v72 = sub_262039B0C();
      v73 = v74;
      (*v96)(v71, v18);
    }

    v75 = sub_26203A46C();
    if (qword_27FEF8708 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v76 = qword_27FEFA528;
    if (os_log_type_enabled(qword_27FEFA528, v75))
    {
      v77 = swift_slowAlloc();
      v111[0] = swift_slowAlloc();
      *v77 = 136446722;
      v78 = v86;
      *(v77 + 4) = sub_261F67FE4(*(v86 + 16), *(v86 + 24), v111);
      *(v77 + 12) = 2080;
      v79 = *(v78 + 32);
      v80 = *(v78 + 40);
      OUTLINED_FUNCTION_2_23();
      v109 = v81;
      v110 = v82;
      MEMORY[0x266722710]();
      sub_261F67FE4(v109, v110, v111);
      OUTLINED_FUNCTION_40_5();
      *(v77 + 14) = v18;
      *(v77 + 22) = 2080;
      v109 = v72;
      v110 = v73;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
      v83 = sub_26203A20C();
      sub_261F67FE4(v83, v84, v111);
      OUTLINED_FUNCTION_40_5();
      *(v77 + 24) = v18;
      _os_log_impl(&dword_261F5B000, v76, v75, "%{public}s/%s: Tunnel connection path interface name: %s", v77, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    (*(v87 + 8))(v40, v88);
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t TCPTunnelConnection.tunnelIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_47();
}

uint64_t sub_26201033C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_261F81D84(*a1, v3);
  return sub_2620103BC(v2, v3);
}

uint64_t sub_262010380()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = OUTLINED_FUNCTION_47();
  sub_261F81D84(v3, v4);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_2620103BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return sub_261F6ADEC(v5, v6);
}

uint64_t sub_262010470(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43();
  *(v1 + 72) = a1;
  return result;
}

uint64_t TCPTunnelConnection.__allocating_init(tunnelIdentifier:stream:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TCPTunnelConnection.init(tunnelIdentifier:stream:)(a1, a2, a3);
  return v6;
}

uint64_t TCPTunnelConnection.init(tunnelIdentifier:stream:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = xmmword_26203F730;
  *(v3 + 72) = xmmword_262045280;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = sub_26203A3FC();
  *(v5 + 16) = 8;
  if (("Only host should send handshake" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v6 = v5;
    v7 = 0;
    v8 = v5 + 32;
    while (1)
    {
      v9 = sub_26203A24C();
      if (v9 < 0)
      {
        break;
      }

      v10 = v9;
      if (!v9)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_18_7();
      if (v10 > v17 * v10)
      {
        v11 = -v10 % v10;
        while (v11 > v17 * v10)
        {
          OUTLINED_FUNCTION_18_7();
        }
      }

      sub_26203A25C();
      v12 = sub_26203A2DC();
      v13 = (v8 + 16 * v7);
      *v13 = v12;
      v13[1] = v14;
      if (++v7 == 8)
      {
        *(v6 + 16) = 8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AB0, &qword_262040300);
        sub_261F7AA80(&qword_28108B328, &unk_27FEF9AB0, &qword_262040300);
        *(v3 + 32) = sub_26203A2EC();
        *(v3 + 40) = v15;
        *(v3 + 48) = a3;
        return v3;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  OUTLINED_FUNCTION_17_10();
  result = OUTLINED_FUNCTION_13_12();
  __break(1u);
  return result;
}

void sub_262010744()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v4 = v3;
  v5 = sub_262039BCC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v13 = (v12 - v11);
  v14 = *(v0 + 48);
  OUTLINED_FUNCTION_46();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v2;
  *v13 = sub_261FED088;
  v13[1] = v15;
  (*(v8 + 104))(v13, *MEMORY[0x277CD8DB0], v5);
  sub_262039BBC();

  sub_262039B9C();
  sub_262039C1C();

  (*(v8 + 8))(v13, v5);
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_262010894()
{
  OUTLINED_FUNCTION_35_5();
  v4 = *(v1 + 48);
  OUTLINED_FUNCTION_107();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v0;

  sub_262039C7C();
}

uint64_t sub_262010948()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_107();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v5;
  v8[4] = v3;
  v9 = *(v1 + 48);
  OUTLINED_FUNCTION_63();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_63();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_106();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = sub_262016D88;
  v12[5] = v8;
  v7;

  sub_261F7D45C(sub_262016DCC);
  sub_262039BDC();

  OUTLINED_FUNCTION_63();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_63();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_46();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;

  sub_261F7D45C(sub_262016DD8);
  sub_262039BEC();

  sub_262039C4C();
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_262010B24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v105 = a5;
  v106 = a4;
  v107 = a1;
  v5 = sub_262039E9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v104 = &v101[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v101[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v101[-v16];
  v18 = sub_262039C3C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v24 = result;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v26 = Strong;
  (*(v19 + 16))(v22, v107, v18);
  v27 = (*(v19 + 88))(v22, v18);
  if (v27 == *MEMORY[0x277CD8DE8])
  {
    v107 = v26;
    v28 = v24;
    (*(v19 + 96))(v22, v18);
    (*(v6 + 32))(v17, v22, v5);
    v29 = sub_26203A4AC();
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v30 = qword_27FEFA528;
    (*(v6 + 16))(v15, v17, v5);
    if (os_log_type_enabled(v30, v29))
    {
      v31 = v6;
      v32 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v108 = v104;
      *v32 = 136446722;
      v103 = v30;
      v33 = v28;
      v34 = v28[2];
      v102 = v29;
      v35 = v33[3];

      v36 = sub_261F67FE4(v34, v35, &v108);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = v33[4];
      v38 = v33[5];
      v109 = 0x5F6E6F6374;
      v110 = 0xE500000000000000;
      MEMORY[0x266722710](v37, v38);
      v39 = sub_261F67FE4(v109, v110, &v108);

      *(v32 + 14) = v39;
      *(v32 + 22) = 2082;
      sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0]);
      v40 = sub_26203ACCC();
      v42 = v41;
      v43 = *(v31 + 8);
      v43(v15, v5);
      v44 = sub_261F67FE4(v40, v42, &v108);

      *(v32 + 24) = v44;
      _os_log_impl(&dword_261F5B000, v103, v102, "%{public}s/%s: Tunnel connection waiting, error: %{public}s", v32, 0x20u);
      v45 = v104;
      swift_arrayDestroy();
      MEMORY[0x266724180](v45, -1, -1);
      MEMORY[0x266724180](v32, -1, -1);
    }

    else
    {
      v43 = *(v6 + 8);
      v43(v15, v5);
    }

    sub_262039C6C();
    LOBYTE(v109) = 1;
    v106(&v109);

    return (v43)(v17, v5);
  }

  if (v27 != *MEMORY[0x277CD8DE0])
  {
    if (v27 == *MEMORY[0x277CD8DD8])
    {
      v64 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v65 = qword_27FEFA528;
      if (!os_log_type_enabled(qword_27FEFA528, v64))
      {
        goto LABEL_35;
      }

      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v108 = v67;
      *v66 = 136446466;
      v68 = v24[2];
      v69 = v24[3];

      v70 = sub_261F67FE4(v68, v69, &v108);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      v71 = v24[4];
      v72 = v24[5];
      v109 = 0x5F6E6F6374;
      v110 = 0xE500000000000000;
      MEMORY[0x266722710](v71, v72);
      v73 = sub_261F67FE4(v109, v110, &v108);

      *(v66 + 14) = v73;
      v74 = "%{public}s/%s: Tunnel connection setup";
    }

    else
    {
      if (v27 != *MEMORY[0x277CD8DF8])
      {
        if (v27 == *MEMORY[0x277CD8DD0])
        {
          v81 = sub_26203A4AC();
          if (qword_27FEF8708 != -1)
          {
            swift_once();
          }

          v82 = qword_27FEFA528;
          if (os_log_type_enabled(qword_27FEFA528, v81))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v108 = v84;
            *v83 = 136446466;
            v85 = v24[2];
            v86 = v24[3];

            v87 = sub_261F67FE4(v85, v86, &v108);

            *(v83 + 4) = v87;
            *(v83 + 12) = 2080;
            v88 = v24[4];
            v89 = v24[5];
            v109 = 0x5F6E6F6374;
            v110 = 0xE500000000000000;
            MEMORY[0x266722710](v88, v89);
            v90 = sub_261F67FE4(v109, v110, &v108);

            *(v83 + 14) = v90;
            _os_log_impl(&dword_261F5B000, v82, v81, "%{public}s/%s: Tunnel connection established", v83, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266724180](v84, -1, -1);
            MEMORY[0x266724180](v83, -1, -1);
          }

          LOBYTE(v109) = 0;
          v106(&v109);
        }

        else
        {
          if (v27 != *MEMORY[0x277CD8DF0])
          {
            v109 = 0;
            v110 = 0xE000000000000000;
            sub_26203A7CC();
            MEMORY[0x266722710](0x2064696C61766E49, 0xEF203A6574617473);
            sub_26203A8CC();
            result = sub_26203A91C();
            __break(1u);
            return result;
          }

          v91 = sub_26203A4AC();
          if (qword_27FEF8708 != -1)
          {
            swift_once();
          }

          v92 = qword_27FEFA528;
          if (os_log_type_enabled(qword_27FEFA528, v91))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v108 = v94;
            *v93 = 136446466;
            v95 = v24[2];
            v96 = v24[3];

            v97 = sub_261F67FE4(v95, v96, &v108);

            *(v93 + 4) = v97;
            *(v93 + 12) = 2080;
            v98 = v24[4];
            v99 = v24[5];
            v109 = 0x5F6E6F6374;
            v110 = 0xE500000000000000;
            MEMORY[0x266722710](v98, v99);
            v100 = sub_261F67FE4(v109, v110, &v108);

            *(v93 + 14) = v100;
            _os_log_impl(&dword_261F5B000, v92, v91, "%{public}s/%s: Tunnel connection cancelled", v93, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266724180](v94, -1, -1);
            MEMORY[0x266724180](v93, -1, -1);
          }

          sub_262039C6C();
          LOBYTE(v109) = 1;
          v106(&v109);
        }

        goto LABEL_35;
      }

      v64 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v65 = qword_27FEFA528;
      if (!os_log_type_enabled(qword_27FEFA528, v64))
      {
LABEL_35:
      }

      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v108 = v67;
      *v66 = 136446466;
      v75 = v24[2];
      v76 = v24[3];

      v77 = sub_261F67FE4(v75, v76, &v108);

      *(v66 + 4) = v77;
      *(v66 + 12) = 2080;
      v78 = v24[4];
      v79 = v24[5];
      v109 = 0x5F6E6F6374;
      v110 = 0xE500000000000000;
      MEMORY[0x266722710](v78, v79);
      v80 = sub_261F67FE4(v109, v110, &v108);

      *(v66 + 14) = v80;
      v74 = "%{public}s/%s: Tunnel connection preparing";
    }

    _os_log_impl(&dword_261F5B000, v65, v64, v74, v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266724180](v67, -1, -1);
    MEMORY[0x266724180](v66, -1, -1);
    goto LABEL_35;
  }

  (*(v19 + 96))(v22, v18);
  v46 = v104;
  (*(v6 + 32))(v104, v22, v5);
  v47 = sub_26203A48C();
  if (qword_27FEF8708 != -1)
  {
    swift_once();
  }

  v48 = qword_27FEFA528;
  (*(v6 + 16))(v10, v46, v5);
  if (os_log_type_enabled(v48, v47))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v103 = v50;
    *v49 = 136446722;
    v107 = v26;
    v108 = v50;
    v102 = v47;
    v51 = v24[2];
    v52 = v24[3];

    v53 = sub_261F67FE4(v51, v52, &v108);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    v54 = v24[4];
    v55 = v24[5];
    v109 = 0x5F6E6F6374;
    v110 = 0xE500000000000000;
    MEMORY[0x266722710](v54, v55);
    v56 = sub_261F67FE4(v109, v110, &v108);

    *(v49 + 14) = v56;
    *(v49 + 22) = 2082;
    sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0]);
    v57 = sub_26203ACCC();
    v59 = v58;
    v60 = *(v6 + 8);
    v60(v10, v5);
    v61 = sub_261F67FE4(v57, v59, &v108);

    *(v49 + 24) = v61;
    _os_log_impl(&dword_261F5B000, v48, v102, "%{public}s/%s: Tunnel connection failed, error: %{public}s", v49, 0x20u);
    v62 = v103;
    swift_arrayDestroy();
    MEMORY[0x266724180](v62, -1, -1);
    v63 = v49;
    v46 = v104;
    MEMORY[0x266724180](v63, -1, -1);
  }

  else
  {
    v60 = *(v6 + 8);
    v60(v10, v5);
  }

  sub_262039C6C();
  LOBYTE(v109) = 1;
  v106(&v109);

  return (v60)(v46, v5);
}

uint64_t sub_26201195C(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if ((a1 & 1) == 0)
      {
        v4 = sub_26203A48C();
        if (qword_27FEF8708 != -1)
        {
          swift_once();
        }

        v5 = qword_27FEFA528;
        if (os_log_type_enabled(qword_27FEFA528, v4))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          v13 = v7;
          *v6 = 136446466;
          v8 = v3[2];
          v9 = v3[3];

          v10 = sub_261F67FE4(v8, v9, &v13);

          *(v6 + 4) = v10;
          *(v6 + 12) = 2080;
          MEMORY[0x266722710](v3[4], v3[5]);
          v11 = sub_261F67FE4(0x5F6E6F6374, 0xE500000000000000, &v13);

          *(v6 + 14) = v11;
          _os_log_impl(&dword_261F5B000, v5, v4, "%{public}s/%s: Cancelling tunnel connection as it is no longer viable", v6, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266724180](v7, -1, -1);
          MEMORY[0x266724180](v6, -1, -1);
        }

        sub_262039C6C();
        v12 = v3[6];
        sub_262039C6C();
      }
    }
  }

  return result;
}

uint64_t sub_262011B68()
{
  v1 = *v0;
  v2 = sub_262039A7C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  sub_26203A7CC();
  MEMORY[0x266722710](60, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v8 = sub_26203A20C();
  MEMORY[0x266722710](v8);

  MEMORY[0x266722710](32, 0xE100000000000000);
  v9 = v0[4];
  v10 = v0[5];
  OUTLINED_FUNCTION_2_23();
  v18 = v11;
  v19 = v12;
  MEMORY[0x266722710]();
  MEMORY[0x266722710](v18, v19);

  MEMORY[0x266722710](0xD000000000000010, 0x80000002620524C0);
  v13 = v0[6];
  sub_262039C8C();
  sub_26203A8CC();
  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_1_1();
  v16(v15);
  MEMORY[0x266722710](32032, 0xE200000000000000);
  return 0;
}

void *TCPTunnelConnection.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  sub_261F6ADEC(v0[7], v0[8]);
  return v0;
}

uint64_t TCPTunnelConnection.__deallocating_deinit()
{
  TCPTunnelConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_262011EFC(__int16 a1, __int16 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  if ((a2 ^ a1))
  {
    return 0;
  }

  else
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }
}

uint64_t sub_262011F74()
{
  v1 = v0;
  OUTLINED_FUNCTION_146();
  if (!v0[6])
  {
    return 1280;
  }

  v2 = v0[6];

  v4 = MEMORY[0x2667220A0](v3);
  v5 = nw_protocol_copy_quic_definition();
  v6 = nw_connection_copy_protocol_metadata(v4, v5);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  if (v6)
  {
    v8 = MEMORY[0x266723970](v6);
    v9 = sub_26203A4AC();
    if (qword_27FEF8708 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v10 = qword_27FEFA528;
    if (os_log_type_enabled(qword_27FEFA528, v9))
    {
      v11 = swift_slowAlloc();
      v19[0] = OUTLINED_FUNCTION_39_0();
      *v11 = 136446722;
      *(v11 + 4) = sub_261F67FE4(v1[7], v1[8], v19);
      *(v11 + 12) = 2080;
      v12 = v1[9];
      v13 = v1[10];
      OUTLINED_FUNCTION_2_23();
      v17 = v14;
      v18 = v15;
      MEMORY[0x266722710]();
      v16 = sub_261F67FE4(v17, v18, v19);

      *(v11 + 14) = v16;
      *(v11 + 22) = 2048;
      *(v11 + 24) = v8;
      _os_log_impl(&dword_261F5B000, v10, v9, "%{public}s/%s: Tunnel MTU datagaram = %ld", v11, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    swift_unknownObjectRelease();
    if (v8)
    {
      return v8;
    }

    else
    {
      return 1280;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_262012154()
{
  OUTLINED_FUNCTION_96();
  v2 = v0;
  v3 = sub_262039AFC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_54();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v88 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  OUTLINED_FUNCTION_40(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_140(&v88 - v19);
  v20 = sub_262039B3C();
  v21 = OUTLINED_FUNCTION_0(v20);
  v111 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_54();
  v99 = v25 - v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_140(&v88 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA108, &qword_2620434D8);
  OUTLINED_FUNCTION_40(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_36_5();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_140(v40 - v39);
  OUTLINED_FUNCTION_146();
  v41 = v2[6];
  if (v41)
  {
    v92 = v36;

    v95 = v33;
    sub_262039B8C();
    v42 = v95;
    if (__swift_getEnumTagSinglePayload(v1, 1, v95) == 1)
    {
      sub_261FCB894(v1, &qword_27FEFA108, &qword_2620434D8);
      v43 = sub_26203A49C();
      if (qword_27FEF8708 != -1)
      {
        OUTLINED_FUNCTION_0_30();
      }

      if (os_log_type_enabled(qword_27FEFA528, v43))
      {
        v44 = OUTLINED_FUNCTION_40_2();
        v115[0] = OUTLINED_FUNCTION_39_0();
        *v44 = 136446466;
        v45 = sub_261F67FE4(v2[7], v2[8], v115);
        OUTLINED_FUNCTION_22_9(v45);
        v46 = v2[9];
        v47 = v2[10];
        OUTLINED_FUNCTION_2_23();
        v113 = v48;
        v114 = v49;
        MEMORY[0x266722710]();
        v50 = sub_261F67FE4(v113, v114, v115);

        *(v44 + 14) = v50;
        OUTLINED_FUNCTION_16_13(&dword_261F5B000, v51, v52, "%{public}s/%s: Tunnel connection path is nil");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }
    }

    else
    {
      v102 = v3;
      v89 = v2;
      v90 = v41;
      (*(v92 + 32))(v97, v1, v42);
      v53 = sub_262039E7C();
      v54 = 0;
      v110 = *(v53 + 16);
      v105 = v111 + 16;
      v104 = *MEMORY[0x277CD8CB8];
      v109 = (v6 + 104);
      v55 = (v6 + 8);
      v101 = *MEMORY[0x277CD8CC0];
      v94 = (v111 + 32);
      v100 = (v111 + 8);
      v98 = MEMORY[0x277D84F90];
      v56 = v96;
      v106 = v53;
      v103 = v20;
      v91 = (v6 + 8);
      while (1)
      {
        v57 = v109;
        if (v110 == v54)
        {
          break;
        }

        if (v54 >= *(v53 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v108 = (*(v111 + 80) + 32) & ~*(v111 + 80);
        v58 = *(v111 + 72);
        v112 = v54;
        v107 = v58;
        v59 = v14;
        (*(v111 + 16))(v56, v53 + v108 + v58 * v54, v20);
        sub_262039B1C();
        v60 = *v57;
        v61 = v102;
        (*v57)(v11, v104, v102);
        OUTLINED_FUNCTION_10_10();
        sub_2620176E8(&qword_27FEFA530, v62);
        v63 = OUTLINED_FUNCTION_29_9();
        v64 = *v55;
        (*v55)(v11, v61);
        v65 = OUTLINED_FUNCTION_204();
        v64(v65);
        if (v63 & 1) != 0 && (sub_262039B1C(), v60(v11, v101, v61), v66 = OUTLINED_FUNCTION_29_9(), (v64)(v11, v61), v67 = OUTLINED_FUNCTION_204(), v64(v67), (v66))
        {
          v20 = v103;
          (*v100)(v56, v103);
          v54 = v112 + 1;
          v14 = v59;
          v53 = v106;
        }

        else
        {
          v20 = v103;
          v68 = *v94;
          (*v94)(v99, v56, v103);
          v69 = v98;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v113 = v69;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_261F95AA0(0, *(v69 + 16) + 1, 1);
            v56 = v96;
            v69 = v113;
          }

          v14 = v59;
          v71 = v112;
          v73 = *(v69 + 16);
          v72 = *(v69 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_261F95AA0(v72 > 1, v73 + 1, 1);
            v71 = v112;
            v69 = v113;
            v56 = v96;
          }

          v54 = v71 + 1;
          *(v69 + 16) = v73 + 1;
          v98 = v69;
          v68(v69 + v108 + v73 * v107, v99, v20);
          v53 = v106;
          v55 = v91;
        }
      }

      v74 = v93;
      sub_261FD4744(v98);

      if (__swift_getEnumTagSinglePayload(v74, 1, v20) == 1)
      {
        sub_261FCB894(v74, &unk_27FEF9B60, &unk_262040530);
        v75 = 0;
        v76 = 0;
      }

      else
      {
        v75 = sub_262039B0C();
        v76 = v77;
        (*v100)(v74, v20);
      }

      v78 = v89;
      v79 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        OUTLINED_FUNCTION_0_30();
      }

      v80 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v79))
      {
        v81 = swift_slowAlloc();
        v115[0] = swift_slowAlloc();
        *v81 = 136446722;
        *(v81 + 4) = sub_261F67FE4(v78[7], v78[8], v115);
        *(v81 + 12) = 2080;
        v82 = v78[9];
        v83 = v78[10];
        OUTLINED_FUNCTION_2_23();
        v113 = v84;
        v114 = v85;
        MEMORY[0x266722710]();
        sub_261F67FE4(v113, v114, v115);
        OUTLINED_FUNCTION_40_5();
        *(v81 + 14) = v11;
        *(v81 + 22) = 2080;
        v113 = v75;
        v114 = v76;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
        v86 = sub_26203A20C();
        sub_261F67FE4(v86, v87, v115);
        OUTLINED_FUNCTION_40_5();
        *(v81 + 24) = v11;
        _os_log_impl(&dword_261F5B000, v80, v79, "%{public}s/%s: Tunnel connection path interface name: %s", v81, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      (*(v92 + 8))(v97, v95);
    }
  }

  else
  {
    sub_26203A49C();
    if (qword_27FEF8708 != -1)
    {
LABEL_31:
      OUTLINED_FUNCTION_0_30();
    }

    sub_26203969C();
  }

  OUTLINED_FUNCTION_31_0();
}

void sub_262012A6C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 == 3)
  {
    v6 = (v0 + 88);
    v5 = *(v0 + 88);
    if (v5)
    {
      v7 = *(v0 + 96);
      v11 = 1;

      v5(&v11);
      sub_261F665E4(v5);
      v8 = *(v1 + 88);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v1 + 96);
    *v6 = 0;
    *(v1 + 96) = 0;

    sub_261F665E4(v8);
  }

  else if (v2 == 2)
  {
    v3 = *(v0 + 88);
    if (v3)
    {
      v4 = *(v0 + 96);
      v10 = 0;

      v3(&v10);
      sub_261F665E4(v3);
    }
  }
}

uint64_t sub_262012B50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_262012BA8(v4);
}

uint64_t sub_262012B7C()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 24);
}

uint64_t sub_262012BA8(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_262012C28()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 32);
}

uint64_t sub_262012C54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_262012CAC(v4);
}

uint64_t sub_262012C80()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 40);
}

uint64_t sub_262012CAC(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_262012D2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_262012D84(v4);
}

uint64_t sub_262012D58()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 48);
}

uint64_t sub_262012D84(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t QUICTunnelConnection.tunnelIdentifier.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_47();
}

uint64_t QUICTunnelConnection.__allocating_init(tunnelIdentifier:group:options:)()
{
  OUTLINED_FUNCTION_35_5();
  v4 = swift_allocObject();
  QUICTunnelConnection.init(tunnelIdentifier:group:options:)(v3, v2, v1, v0);
  return v4;
}

uint64_t QUICTunnelConnection.init(tunnelIdentifier:group:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  v8 = sub_26203A3FC();
  *(v8 + 16) = 8;
  if (("Only host should send handshake" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v9 = v8;
    v10 = 0;
    v11 = v8 + 32;
    while (1)
    {
      v12 = sub_26203A24C();
      if (v12 < 0)
      {
        break;
      }

      v13 = v12;
      if (!v12)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_18_7();
      if (v13 > v21 * v13)
      {
        v14 = -v13 % v13;
        while (v14 > v21 * v13)
        {
          OUTLINED_FUNCTION_18_7();
        }
      }

      sub_26203A25C();
      v15 = sub_26203A2DC();
      v16 = (v11 + 16 * v10);
      *v16 = v15;
      v16[1] = v17;
      if (++v10 == 8)
      {
        *(v9 + 16) = 8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AB0, &qword_262040300);
        sub_261F7AA80(&qword_28108B328, &unk_27FEF9AB0, &qword_262040300);
        *(v4 + 72) = sub_26203A2EC();
        *(v4 + 80) = v18;
        *(v4 + 56) = a1;
        *(v4 + 64) = a2;
        *(v4 + 24) = a3;
        *(v4 + 32) = a4;
        return v4;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  OUTLINED_FUNCTION_17_10();
  result = OUTLINED_FUNCTION_13_12();
  __break(1u);
  return result;
}

void sub_262013060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_146();
  if (!v3[6])
  {
    LOBYTE(a3) = sub_26203A48C();
    if (qword_27FEF8708 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  v7 = *(a1 + 16);
  if (v7 >> 60)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_30();
LABEL_10:
    if (os_log_type_enabled(qword_27FEFA528, a3))
    {
      v16 = OUTLINED_FUNCTION_40_2();
      __dst[0] = OUTLINED_FUNCTION_39_0();
      *v16 = 136446466;
      v17 = sub_261F67FE4(v3[7], v3[8], __dst);
      OUTLINED_FUNCTION_22_9(v17);
      v18 = v3[9];
      v19 = v3[10];
      OUTLINED_FUNCTION_2_23();
      aBlock[0] = v20;
      aBlock[1] = v21;
      MEMORY[0x266722710]();
      v22 = sub_261F67FE4(aBlock[0], aBlock[1], __dst);

      *(v16 + 14) = v22;
      OUTLINED_FUNCTION_16_13(&dword_261F5B000, v23, v24, "%{public}s/%s: Tunnel stream trying to send packets on a nil datagram stream");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    return;
  }

  v8 = v3[6];
  swift_retain_n();
  v9 = swift_slowAlloc();
  v10 = 0;
  v11 = 32;
  while (v7 != v10)
  {
    memcpy(__dst, (a1 + v11), sizeof(__dst));
    memcpy(aBlock, (a1 + v11), sizeof(aBlock));
    sub_261F6D6B0(__dst, &v25);
    v12 = sub_26203952C();
    v13 = NWCreateDispatchDataFromNSData();

    if (!v13)
    {
      __break(1u);
      return;
    }

    *(v9 + 8 * v10) = v13;
    sub_261F6D70C(aBlock);
    v11 += 96;
    ++v10;
  }

  v3 = MEMORY[0x2667220A0]();

  if (HIDWORD(v7))
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_106();
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_262016DE0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26200F09C;
  aBlock[3] = &block_descriptor_13;
  v15 = _Block_copy(aBlock);

  nw_connection_write_multiple();

  _Block_release(v15);
  swift_unknownObjectRelease();
}

void sub_26201333C(int a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v8 = sub_2620392DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  sub_261F9B6D0(0, &qword_27FEFA538, 0x277D85C60);
  swift_arrayDestroy();
  MEMORY[0x266724180](a2, -1, -1);
  if (a1)
  {
    sub_26203A0FC();
    sub_2620392AC();
    v14 = sub_2620392CC();
    (*(v9 + 8))(v12, v8);
    v15 = v14;
  }

  else
  {
    v14 = 0;
  }

  a4(v14);
}

uint64_t sub_2620134C8(uint64_t a1, void (*a2)(void *))
{
  result = OUTLINED_FUNCTION_79();
  if (*(v2 + 40))
  {
    v6 = *(v2 + 40);

    sub_26200F0F0(a1, a2);
  }

  return result;
}

void sub_26201353C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_146();
  if (v2[6])
  {
    OUTLINED_FUNCTION_63();
    v5 = swift_allocObject();
    *(v5 + 16) = MEMORY[0x277D84F90];

    MEMORY[0x2667220A0](v6);
    OUTLINED_FUNCTION_63();
    v7 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_106();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = a1;
    v8[4] = a2;
    v8[5] = v5;
    v23 = sub_262016DEC;
    v24 = v8;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_262013D30;
    v22 = &block_descriptor_36;
    v9 = _Block_copy(&v19);

    nw_connection_receive_multiple();

    _Block_release(v9);

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = sub_26203A48C();
    if (qword_27FEF8708 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    if (os_log_type_enabled(qword_27FEFA528, v10))
    {
      v11 = OUTLINED_FUNCTION_40_2();
      v25 = OUTLINED_FUNCTION_39_0();
      *v11 = 136446466;
      *(v11 + 4) = sub_261F67FE4(v2[7], v2[8], &v25);
      *(v11 + 12) = 2080;
      v12 = v2[9];
      v13 = v2[10];
      OUTLINED_FUNCTION_2_23();
      v19 = v14;
      v20 = v15;
      MEMORY[0x266722710]();
      v16 = sub_261F67FE4(v19, v20, &v25);

      *(v11 + 14) = v16;
      OUTLINED_FUNCTION_37_4(&dword_261F5B000, v17, v18, "%{public}s/%s: Tunnel stream trying to receive packets on a nil datagram stream");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }
  }
}

uint64_t sub_2620137A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8)
{
  v30 = a6;
  v11 = sub_262039E9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a4)
    {
      swift_unknownObjectRetain_n();
      sub_262039EAC();
      sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0]);
      v17 = swift_allocError();
      (*(v12 + 16))(v18, v15, v11);
      v30(v17, 1);

      swift_unknownObjectRelease();
      return (*(v12 + 8))(v15, v11);
    }

    else
    {
      v19 = NWCreateNSDataFromDispatchData();
      if (v19)
      {
        v20 = v19;
        v21 = sub_26203954C();
        v23 = v22;

        sub_261F6B73C(v21, v23);
        TunnelPacket.init(data:)();
        memcpy(v32, __src, 0x60uLL);
        swift_beginAccess();
        sub_261F6D6B0(v32, &v31);
        sub_262001C74();
        v25 = *(*(a8 + 16) + 16);
        sub_262001D68(v25);
        v26 = *(a8 + 16);
        *(v26 + 16) = v25 + 1;
        memcpy((v26 + 96 * v25 + 32), v32, 0x60uLL);
        *(a8 + 16) = v26;
        swift_endAccess();
        sub_261F6D70C(v32);
        if (a3)
        {
          swift_beginAccess();
          v27 = *(a8 + 16);

          v30(v28, 0);

          sub_261F6BFFC(v21, v23);
        }

        else
        {

          return sub_261F6BFFC(v21, v23);
        }
      }

      else
      {
        sub_261F9BCE0();
        sub_26203ACEC();
        v32[0] = __src[0];
        v32[1] = __src[1];
        sub_261F9D610();
        v24 = swift_allocError();
        sub_26203AD4C();
        v30(v24, 1);
      }
    }
  }

  return result;
}

void sub_262013D30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v11 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_262013DE0(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_79();
  v6 = *(v2 + 40);
  if (v6)
  {
    OUTLINED_FUNCTION_107();
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = v6;
    swift_retain_n();

    sub_262010894();
  }

  return result;
}

void sub_262013E88()
{
  v1 = v0;
  OUTLINED_FUNCTION_146();
  v2 = *(v0 + 24);

  sub_262039E3C();

  swift_beginAccess();
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = *(v3 + 48);
    v5 = *(v1 + 40);

    sub_262039C6C();
  }

  OUTLINED_FUNCTION_43();
  if (*(v1 + 48))
  {
    v6 = *(v1 + 48);

    sub_262039C6C();
  }

  v7 = *(v1 + 40);
  *(v1 + 40) = 0;

  v8 = *(v1 + 48);
  *(v1 + 48) = 0;

  *(v1 + 16) = 3;
  sub_262012A6C();
}

uint64_t sub_262013F5C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_107();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = v4[11];
  v10 = v4[12];
  v4[11] = sub_262016E08;
  v4[12] = v8;
  v11 = a1;

  sub_261F665E4(v9);
  OUTLINED_FUNCTION_79();
  v12 = v4[3];
  OUTLINED_FUNCTION_63();
  v13 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_63();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_107();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v11;
  v16 = v11;

  sub_261F7D45C(sub_262016E4C);
  sub_262039DFC();

  v17 = v4[3];
  OUTLINED_FUNCTION_63();
  swift_allocObject();
  swift_weakInit();

  sub_261F7D45C(sub_262016E58);
  sub_262039E0C();

  v18 = v4[3];

  sub_262039E2C();
}

void sub_262014150()
{
  OUTLINED_FUNCTION_96();
  v28 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_262039FAC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  v17 = v16 - v15;
  v29 = sub_262039FEC();
  v18 = OUTLINED_FUNCTION_0(v29);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74();
  v25 = v24 - v23;
  LOBYTE(v8) = *v8;
  v26 = swift_allocObject();
  *(v26 + 16) = v6;
  *(v26 + 24) = v4;
  *(v26 + 32) = v8;
  v30[4] = v2;
  v30[5] = v26;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 1107296256;
  v30[2] = sub_261F78F64;
  v30[3] = v28;
  v27 = _Block_copy(v30);

  sub_262039FCC();
  sub_2620176E8(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  sub_26203A75C();
  MEMORY[0x266722A20](0, v25, v17, v27);
  _Block_release(v27);
  (*(v12 + 8))(v17, v9);
  (*(v20 + 8))(v25, v29);

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_2620143D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = a4;
  v92 = a1;
  v93 = sub_262039E9C();
  v4 = *(v93 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v93);
  v8 = &v88[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v88[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v88[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v88[-v15];
  v17 = sub_262039E1C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v88[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v91 = result;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v24 = Strong;
  (*(v18 + 16))(v21, v92, v17);
  v25 = (*(v18 + 88))(v21, v17);
  if (v25 == *MEMORY[0x277CD8ED8])
  {
    (*(v18 + 96))(v21, v17);
    v26 = v4;
    v27 = v93;
    (*(v4 + 32))(v16, v21, v93);
    v28 = sub_26203A4AC();
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v29 = qword_27FEFA528;
    (*(v4 + 16))(v14, v16, v27);
    if (os_log_type_enabled(v29, v28))
    {
      v30 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v96 = v90;
      *v30 = 136446722;
      v92 = v24;
      v31 = v91;
      v32 = *(v91 + 56);
      v33 = *(v91 + 64);

      v34 = sub_261F67FE4(v32, v33, &v96);

      *(v30 + 4) = v34;
      v89 = v28;
      *(v30 + 12) = 2080;
      v35 = *(v31 + 72);
      v36 = *(v31 + 80);
      v94 = 0x5F6E6F6374;
      v95 = 0xE500000000000000;
      MEMORY[0x266722710](v35, v36);
      v37 = sub_261F67FE4(v94, v95, &v96);

      *(v30 + 14) = v37;
      *(v30 + 22) = 2080;
      sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0]);
      v38 = sub_26203ACCC();
      v40 = v39;
      v41 = *(v26 + 8);
      v41(v14, v27);
      v42 = sub_261F67FE4(v38, v40, &v96);

      *(v30 + 24) = v42;
      _os_log_impl(&dword_261F5B000, v29, v89, "%{public}s/%s: Group tunnel connection waiting, error: %s", v30, 0x20u);
      v43 = v90;
      swift_arrayDestroy();
      MEMORY[0x266724180](v43, -1, -1);
      MEMORY[0x266724180](v30, -1, -1);

      return (v41)(v16, v27);
    }

    else
    {

      v62 = *(v4 + 8);
      v62(v14, v27);
      return (v62)(v16, v27);
    }
  }

  if (v25 != *MEMORY[0x277CD8ED0])
  {
    if (v25 == *MEMORY[0x277CD8EC8])
    {
      v63 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v64 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v63))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v96 = v66;
        *v65 = 136446466;
        v67 = v91;
        v68 = *(v91 + 56);
        v69 = *(v91 + 64);

        v70 = sub_261F67FE4(v68, v69, &v96);

        *(v65 + 4) = v70;
        *(v65 + 12) = 2080;
        v71 = *(v67 + 72);
        v72 = *(v67 + 80);
        v94 = 0x5F6E6F6374;
        v95 = 0xE500000000000000;
        MEMORY[0x266722710](v71, v72);
        v73 = sub_261F67FE4(v94, v95, &v96);

        *(v65 + 14) = v73;
        _os_log_impl(&dword_261F5B000, v64, v63, "%{public}s/%s: Group tunnel connection setup", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v66, -1, -1);
        MEMORY[0x266724180](v65, -1, -1);
      }
    }

    else if (v25 == *MEMORY[0x277CD8EC0])
    {
      v74 = v91;
      swift_beginAccess();
      v75 = *(v74 + 32);

      sub_262015160(v24, v75, 0);

      v76 = *(v74 + 32);

      sub_262015160(v24, v76, 1);
    }

    else
    {
      if (v25 != *MEMORY[0x277CD8EE0])
      {
        v94 = 0;
        v95 = 0xE000000000000000;
        sub_26203A7CC();
        MEMORY[0x266722710](0x2064696C61766E49, 0xEF203A6574617473);
        sub_26203A8CC();
        result = sub_26203A91C();
        __break(1u);
        return result;
      }

      v77 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v78 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v77))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v96 = v80;
        *v79 = 136446466;
        v81 = v91;
        v82 = *(v91 + 56);
        v83 = *(v91 + 64);

        v84 = sub_261F67FE4(v82, v83, &v96);

        *(v79 + 4) = v84;
        *(v79 + 12) = 2080;
        v85 = *(v81 + 72);
        v86 = *(v81 + 80);
        v94 = 0x5F6E6F6374;
        v95 = 0xE500000000000000;
        MEMORY[0x266722710](v85, v86);
        v87 = sub_261F67FE4(v94, v95, &v96);

        *(v79 + 14) = v87;
        _os_log_impl(&dword_261F5B000, v78, v77, "%{public}s/%s: Group tunnel connection cancelled", v79, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v80, -1, -1);
        MEMORY[0x266724180](v79, -1, -1);
      }

      sub_262013E88();
    }
  }

  (*(v18 + 96))(v21, v17);
  v44 = v21;
  v45 = v93;
  (*(v4 + 32))(v11, v44, v93);
  v46 = sub_26203A48C();
  if (qword_27FEF8708 != -1)
  {
    swift_once();
  }

  v92 = v24;
  v47 = qword_27FEFA528;
  (*(v4 + 16))(v8, v11, v45);
  if (os_log_type_enabled(v47, v46))
  {
    v48 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v96 = v90;
    *v48 = 136446722;
    v49 = v91;
    v89 = v46;
    v50 = *(v91 + 56);
    v51 = *(v91 + 64);

    v52 = sub_261F67FE4(v50, v51, &v96);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    v53 = *(v49 + 72);
    v54 = *(v49 + 80);
    v94 = 0x5F6E6F6374;
    v95 = 0xE500000000000000;
    MEMORY[0x266722710](v53, v54);
    v55 = sub_261F67FE4(v94, v95, &v96);

    *(v48 + 14) = v55;
    *(v48 + 22) = 2080;
    sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0]);
    v56 = sub_26203ACCC();
    v58 = v57;
    v59 = *(v4 + 8);
    v59(v8, v93);
    v60 = sub_261F67FE4(v56, v58, &v96);
    v45 = v93;

    *(v48 + 24) = v60;
    _os_log_impl(&dword_261F5B000, v47, v89, "%{public}s/%s: Group tunnel connection failed, error: %s", v48, 0x20u);
    v61 = v90;
    swift_arrayDestroy();
    MEMORY[0x266724180](v61, -1, -1);
    MEMORY[0x266724180](v48, -1, -1);
  }

  else
  {
    v59 = *(v4 + 8);
    v59(v8, v45);
  }

  sub_262013E88();

  return (v59)(v11, v45);
}

uint64_t sub_262014FA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_26203A48C();
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v3 = qword_27FEFA528;
    if (os_log_type_enabled(qword_27FEFA528, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446466;
      v6 = v1[7];
      v7 = v1[8];

      v8 = sub_261F67FE4(v6, v7, &v10);

      *(v4 + 4) = v8;
      *(v4 + 12) = 2080;
      MEMORY[0x266722710](v1[9], v1[10]);
      v9 = sub_261F67FE4(0x5F6E6F6374, 0xE500000000000000, &v10);

      *(v4 + 14) = v9;
      _os_log_impl(&dword_261F5B000, v3, v2, "%{public}s/%s: Unexpected stream received", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v5, -1, -1);
      MEMORY[0x266724180](v4, -1, -1);
    }
  }

  return result;
}

void sub_262015160(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA110, &unk_2620434E0);
  OUTLINED_FUNCTION_40(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  sub_262039DAC();
  v11 = sub_262039A7C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = sub_262039E4C();
  sub_261FCB894(v10, &qword_27FEFA110, &unk_2620434E0);
  if (v12)
  {
    sub_262015358(v12, a3 & 1);
  }

  else
  {
    v13 = sub_26203A48C();
    if (qword_27FEF8708 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    if (os_log_type_enabled(qword_27FEFA528, v13))
    {
      v14 = OUTLINED_FUNCTION_40_2();
      v25 = OUTLINED_FUNCTION_39_0();
      *v14 = 136446466;
      *(v14 + 4) = sub_261F67FE4(v3[7], v3[8], &v25);
      *(v14 + 12) = 2080;
      v15 = v3[9];
      v16 = v3[10];
      OUTLINED_FUNCTION_2_23();
      v23 = v17;
      v24 = v18;
      MEMORY[0x266722710]();
      v19 = sub_261F67FE4(v23, v24, &v25);

      *(v14 + 14) = v19;
      OUTLINED_FUNCTION_37_4(&dword_261F5B000, v20, v21, "%{public}s/%s: Can't extract a stream from the group connection");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    sub_262013E88();
  }
}

uint64_t sub_262015358(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_63();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_107();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a1;

  sub_261F7D45C(sub_262017694);
  sub_262039BDC();

  OUTLINED_FUNCTION_63();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_46();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;

  sub_261F7D45C(sub_2620176E0);
  sub_262039BEC();

  return sub_262039C4C();
}

uint64_t sub_2620154A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v120 = a4;
  v119 = a3;
  v5 = sub_262039DBC();
  v117 = *(v5 - 8);
  v118 = v5;
  v6 = *(v117 + 64);
  MEMORY[0x28223BE20](v5);
  v116 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_262039E9C();
  v8 = *(v121 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v121);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v115 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v115 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v115 - v19;
  v21 = sub_262039C3C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v27 = result;
  (*(v22 + 16))(v25, a1, v21);
  v28 = (*(v22 + 88))(v25, v21);
  if (v28 == *MEMORY[0x277CD8DE8])
  {
    (*(v22 + 96))(v25, v21);
    v29 = v121;
    (*(v8 + 32))(v20, v25, v121);
    v30 = sub_26203A4AC();
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v31 = qword_27FEFA528;
    (*(v8 + 16))(v18, v20, v29);
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v124 = v118;
      *v32 = 136446978;
      LODWORD(v117) = v30;
      v33 = v27;
      v34 = v27[7];
      v35 = v33[8];

      v36 = sub_261F67FE4(v34, v35, &v124);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = v33[9];
      v38 = v33[10];
      v122 = 0x5F6E6F6374;
      v123 = 0xE500000000000000;
      MEMORY[0x266722710](v37, v38);
      v39 = sub_261F67FE4(v122, v123, &v124);

      *(v32 + 14) = v39;
      *(v32 + 22) = 1024;
      *(v32 + 24) = v119 & 1;
      *(v32 + 28) = 2080;
      sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0]);
      v40 = sub_26203ACCC();
      v42 = v41;
      v43 = *(v8 + 8);
      v43(v18, v121);
      v44 = sub_261F67FE4(v40, v42, &v124);

      *(v32 + 30) = v44;
      _os_log_impl(&dword_261F5B000, v31, v117, "%{public}s/%s: Tunnel stream (datagram=%{BOOL}d) connection waiting, error: %s", v32, 0x26u);
      v45 = v118;
      swift_arrayDestroy();
      MEMORY[0x266724180](v45, -1, -1);
      v46 = v32;
      v29 = v121;
      MEMORY[0x266724180](v46, -1, -1);
    }

    else
    {
      v43 = *(v8 + 8);
      v43(v18, v29);
    }

    sub_262039C6C();
    sub_262013E88();

    return (v43)(v20, v29);
  }

  if (v28 != *MEMORY[0x277CD8DE0])
  {
    if (v28 == *MEMORY[0x277CD8DD8] || v28 == *MEMORY[0x277CD8DF8])
    {
      v64 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v65 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v64))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v124 = v67;
        *v66 = 136446722;
        v68 = v27;
        v69 = v27[7];
        v70 = v68[8];

        v71 = sub_261F67FE4(v69, v70, &v124);

        *(v66 + 4) = v71;
        *(v66 + 12) = 2080;
        v72 = v68[9];
        v73 = v68[10];
        v122 = 0x5F6E6F6374;
        v123 = 0xE500000000000000;
        MEMORY[0x266722710](v72, v73);
        v74 = sub_261F67FE4(v122, v123, &v124);

        *(v66 + 14) = v74;
        *(v66 + 22) = 1024;
        *(v66 + 24) = v119 & 1;
        _os_log_impl(&dword_261F5B000, v65, v64, "%{public}s/%s: Tunnel stream (datagram=%{BOOL}d) connection setup", v66, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x266724180](v67, -1, -1);
        MEMORY[0x266724180](v66, -1, -1);
      }
    }

    v75 = v27;
    if (v28 != *MEMORY[0x277CD8DD0])
    {
      if (v28 != *MEMORY[0x277CD8DF0])
      {
        v122 = 0;
        v123 = 0xE000000000000000;
        sub_26203A7CC();
        MEMORY[0x266722710](0x2064696C61766E49, 0xEF203A6574617473);
        sub_26203A8CC();
        result = sub_26203A91C();
        __break(1u);
        return result;
      }

      v100 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v101 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v100))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v124 = v103;
        *v102 = 136446722;
        v104 = v27[7];
        v105 = v75[8];

        v106 = sub_261F67FE4(v104, v105, &v124);

        *(v102 + 4) = v106;
        *(v102 + 12) = 2080;
        v107 = v75[9];
        v108 = v75[10];
        v122 = 0x5F6E6F6374;
        v123 = 0xE500000000000000;
        MEMORY[0x266722710](v107, v108);
        v109 = sub_261F67FE4(v122, v123, &v124);

        *(v102 + 14) = v109;
        *(v102 + 22) = 1024;
        *(v102 + 24) = v119 & 1;
        _os_log_impl(&dword_261F5B000, v101, v100, "%{public}s/%s: Tunnel stream (datagram=%{BOOL}d) connection cancelled", v102, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x266724180](v103, -1, -1);
        MEMORY[0x266724180](v102, -1, -1);
      }

      sub_262039C6C();
      sub_262013E88();
    }

    v76 = sub_26203A4AC();
    v77 = v120;
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v78 = qword_27FEFA528;
    if (os_log_type_enabled(qword_27FEFA528, v76))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v124 = v80;
      *v79 = 136446722;
      v81 = v27[7];
      v82 = v75[8];

      v83 = sub_261F67FE4(v81, v82, &v124);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2080;
      v84 = v75[9];
      v85 = v75[10];
      v122 = 0x5F6E6F6374;
      v123 = 0xE500000000000000;
      MEMORY[0x266722710](v84, v85);
      v86 = sub_261F67FE4(v122, v123, &v124);

      *(v79 + 14) = v86;
      *(v79 + 22) = 1024;
      *(v79 + 24) = v119 & 1;
      _os_log_impl(&dword_261F5B000, v78, v76, "%{public}s/%s: Tunnel stream (datagram=%{BOOL}d) connection established", v79, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x266724180](v80, -1, -1);
      MEMORY[0x266724180](v79, -1, -1);
    }

    sub_262039DEC();
    sub_262039D9C();
    v87 = sub_262039C9C();

    v88 = v75;
    if (v87)
    {
      sub_262039DDC();
      if (swift_dynamicCastClass())
      {
        v89 = sub_26203A4AC();
        if (os_log_type_enabled(v78, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v124 = v91;
          *v90 = 136446466;
          v92 = v75[7];
          v93 = v75[8];

          v94 = sub_261F67FE4(v92, v93, &v124);

          *(v90 + 4) = v94;
          *(v90 + 12) = 2080;
          v95 = v75[9];
          v96 = v75[10];
          v77 = v120;
          v122 = 0x5F6E6F6374;
          v123 = 0xE500000000000000;
          MEMORY[0x266722710](v95, v96);
          v97 = sub_261F67FE4(v122, v123, &v124);

          *(v90 + 14) = v97;
          _os_log_impl(&dword_261F5B000, v78, v89, "%{public}s/%s: Tunnel stream setting keepalive on", v90, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266724180](v91, -1, -1);
          MEMORY[0x266724180](v90, -1, -1);
        }

        (*(v117 + 104))(v116, *MEMORY[0x277CD8E98], v118);
        sub_262039DCC();
        v88 = v75;
      }
    }

    if (v119)
    {
      swift_beginAccess();
      v98 = v88[6];
      v88[6] = v77;

      sub_26201667C();
      if ((v75[2] & 0xFE) != 2)
      {
        if ((v75[2] & 0x100) != 0)
        {
          v99 = 2;
        }

        else
        {
          v99 = 1;
        }

LABEL_49:
        *(v75 + 8) = v99;
      }
    }

    else
    {
      v110 = v88[7];
      v111 = v75[8];
      type metadata accessor for TCPTunnelConnection();
      v112 = swift_allocObject();

      TCPTunnelConnection.init(tunnelIdentifier:stream:)(v110, v111, v77);
      swift_beginAccess();
      v113 = v75[5];
      v75[5] = v112;

      v114 = *(v75 + 8);
      if ((v114 & 0xFE) != 2)
      {
        if (v114)
        {
          v99 = 2;
        }

        else
        {
          v99 = 256;
        }

        goto LABEL_49;
      }
    }

    sub_262012A6C();
  }

  (*(v22 + 96))(v25, v21);
  v47 = v121;
  (*(v8 + 32))(v15, v25, v121);
  v48 = sub_26203A48C();
  if (qword_27FEF8708 != -1)
  {
    swift_once();
  }

  v49 = qword_27FEFA528;
  (*(v8 + 16))(v12, v15, v47);
  if (os_log_type_enabled(v49, v48))
  {
    v50 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v124 = v118;
    *v50 = 136446978;
    v51 = v27;
    v52 = v27[7];
    v53 = v51[8];

    v54 = sub_261F67FE4(v52, v53, &v124);

    *(v50 + 4) = v54;
    LODWORD(v117) = v48;
    *(v50 + 12) = 2080;
    v55 = v51[9];
    v56 = v51[10];
    v122 = 0x5F6E6F6374;
    v123 = 0xE500000000000000;
    MEMORY[0x266722710](v55, v56);
    v57 = sub_261F67FE4(v122, v123, &v124);

    *(v50 + 14) = v57;
    *(v50 + 22) = 1024;
    *(v50 + 24) = v119 & 1;
    *(v50 + 28) = 2080;
    sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0]);
    v58 = sub_26203ACCC();
    v60 = v59;
    v61 = *(v8 + 8);
    v61(v12, v121);
    v62 = sub_261F67FE4(v58, v60, &v124);
    v47 = v121;

    *(v50 + 30) = v62;
    _os_log_impl(&dword_261F5B000, v49, v117, "%{public}s/%s: Tunnel stream (datagram=%{BOOL}d) connection failed, error: %s", v50, 0x26u);
    v63 = v118;
    swift_arrayDestroy();
    MEMORY[0x266724180](v63, -1, -1);
    MEMORY[0x266724180](v50, -1, -1);
  }

  else
  {
    v61 = *(v8 + 8);
    v61(v12, v47);
  }

  sub_262039C6C();
  sub_262013E88();

  return (v61)(v15, v47);
}

uint64_t sub_2620164A4(uint64_t result)
{
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v1 = result;
      v2 = sub_26203A48C();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v3 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v2))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v10 = v5;
        *v4 = 136446466;
        v6 = v1[7];
        v7 = v1[8];

        v8 = sub_261F67FE4(v6, v7, &v10);

        *(v4 + 4) = v8;
        *(v4 + 12) = 2080;
        MEMORY[0x266722710](v1[9], v1[10]);
        v9 = sub_261F67FE4(0x5F6E6F6374, 0xE500000000000000, &v10);

        *(v4 + 14) = v9;
        _os_log_impl(&dword_261F5B000, v3, v2, "%{public}s/%s: Cancelling tunnel connection as it is no longer viable", v4, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v5, -1, -1);
        MEMORY[0x266724180](v4, -1, -1);
      }

      sub_262039C6C();
      sub_262013E88();
    }
  }

  return result;
}

void sub_26201667C()
{
  OUTLINED_FUNCTION_96();
  v0 = sub_262039BCC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_74();
  v8 = (v7 - v6);
  v9 = static Data.randomBytes(ofLength:)(0x400uLL);
  v11 = v10;
  OUTLINED_FUNCTION_63();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_38_3();
  *v8 = sub_26201768C;
  v8[1] = v12;
  (*(v3 + 104))(v8, *MEMORY[0x277CD8DB0], v0);
  sub_262039BBC();

  sub_262039B9C();
  sub_262039C1C();

  sub_261F6BFFC(v9, v11);
  v13 = *(v3 + 8);
  v14 = OUTLINED_FUNCTION_1_1();
  v15(v14);

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_2620167E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA520, &qword_262045940);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_26203A4AC();
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v12 = qword_27FEFA528;
    sub_26200EF6C(a1, v8);
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136446722;
      v15 = v10[7];
      v16 = v10[8];

      v17 = sub_261F67FE4(v15, v16, &v27);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = v10[9];
      v19 = v10[10];
      v25 = 0x5F6E6F6374;
      v26 = 0xE500000000000000;
      MEMORY[0x266722710](v18, v19);
      v20 = sub_261F67FE4(v25, v26, &v27);

      *(v13 + 14) = v20;
      *(v13 + 22) = 2080;
      sub_26200EF6C(v8, v6);
      v21 = sub_26203A20C();
      v23 = v22;
      sub_261FCB894(v8, &qword_27FEFA520, &qword_262045940);
      v24 = sub_261F67FE4(v21, v23, &v27);

      *(v13 + 24) = v24;
      _os_log_impl(&dword_261F5B000, v12, v11, "%{public}s/%s: Tunnel datagram stream initial send completed with error %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v14, -1, -1);
      MEMORY[0x266724180](v13, -1, -1);
    }

    else
    {

      return sub_261FCB894(v8, &qword_27FEFA520, &qword_262045940);
    }
  }

  return result;
}

void *QUICTunnelConnection.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[10];

  v7 = v0[12];
  sub_261F665E4(v0[11]);
  return v0;
}

uint64_t QUICTunnelConnection.__deallocating_deinit()
{
  QUICTunnelConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_262016C84(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_262016CE4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_262016D58@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_262016D88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_262014150();
}

uint64_t sub_262016DD8(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_26201195C(a1);
}

void sub_262016E08()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_262014150();
}

unsigned __int8 *getEnumTagSinglePayload for QUICTunnelConnection.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFE) != 0)
      {
        return ((v7 & 0x7FFFFFFE | v6 & 1u) - 1);
      }
    }

    return 0;
  }

  v2 = a2 + 65283;
  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[2];
      if (!result[2])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 2);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 16)) - 65283);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for QUICTunnelConnection.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65283;
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26201763C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_WORD *sub_262017658(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2620176E0(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2620164A4(result);
}

uint64_t sub_2620176E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_262017734()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  return v2(&v4);
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return sub_26203A17C();
}

uint64_t OUTLINED_FUNCTION_30_8()
{

  return sub_26203A17C();
}

uint64_t OUTLINED_FUNCTION_36_5()
{

  return sub_262039E8C();
}

void OUTLINED_FUNCTION_37_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_39_3()
{

  return swift_weakInit();
}

uint64_t AtomicCounter.__allocating_init()()
{
  v0 = swift_allocObject();
  AtomicCounter.init()();
  return v0;
}

id sub_262017880()
{
  result = [*(v0 + 24) lock];
  v2 = *(v0 + 16);
  if (v2 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v2 + 1;
    [*(v0 + 24) unlock];
    return v2;
  }

  return result;
}

uint64_t AtomicCounter.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  return v0;
}

uint64_t AtomicCounter.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2620179D8()
{
  if (*v0)
  {
    v1 = 0x2D656369766544;
  }

  else
  {
    v1 = 0x2D74736F48;
  }

  v5 = v1;
  v4 = *(v0 + 8);
  v2 = sub_26203ABAC();
  MEMORY[0x266722710](v2);

  return v5;
}

void *ControlChannelMessageEnvelope.init(originatedBy:sequenceNumber:message:)@<X0>(void *__src@<X2>, _BYTE *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  *a4 = *a2;
  *(a4 + 8) = a3;
  return memcpy((a4 + 16), __src, 0x82uLL);
}

id sub_262017A84@<X0>(id a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) >= 12)
  {
    *&__src[0] = a1;
    sub_262024328(__src);
    memcpy(a3, __src, 0x7AuLL);
    return a1;
  }

  else
  {
    v14 = a1;
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
    if (swift_dynamicCast())
    {
      __src[0] = v10;
      __src[1] = v11;
      __src[2] = v12;
      __src[3] = v13;
    }

    else
    {
      memset(__src, 0, 32);
      LOBYTE(__src[2]) = 2;
      v9 = 4;
      v7 = a1;
      v8 = ControlChannelConnectionError.Message.format(code:)(&v9);
      sub_261F65C08(__src);
      LOBYTE(__src[0]) = 4;
      *(__src + 8) = v8;
      *(&__src[1] + 8) = 0u;
      *(&__src[2] + 8) = 0u;
      *(&__src[3] + 1) = a1;
    }

    sub_261FBA8D4(__src);
    return memcpy(a3, __src, 0x7AuLL);
  }
}

uint64_t PeerDeviceInfo.init(name:model:udid:ecid:deviceKVSData:deviceKVSIncludesSensitiveInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8 & 1;

  result = sub_261F6ADEC(0, 0xF000000000000000);
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  *a9 = a5;
  *(a9 + 8) = a6;
  return result;
}

char *PairingData.init(kind:data:startNewSession:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *result;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 16) = a3;
  *(a5 + 24) = 0;
  *(a5 + 1) = v5;
  *(a5 + 8) = a2;
  *a5 = a4;
  return result;
}

uint64_t sub_262017CA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E456D6165727473 && a2 == 0xEF64657470797263;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616C70 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

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

uint64_t sub_262017D6C(char a1)
{
  if (a1)
  {
    return 0x6E69616C70;
  }

  else
  {
    return 0x6E456D6165727473;
  }
}

uint64_t sub_262017DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262017CA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262017DDC(uint64_t a1)
{
  v2 = sub_262018214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262017E18(uint64_t a1)
{
  v2 = sub_262018214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262017E54(uint64_t a1)
{
  v2 = sub_262018268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262017E90(uint64_t a1)
{
  v2 = sub_262018268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262017ECC(uint64_t a1)
{
  v2 = sub_2620182BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262017F08(uint64_t a1)
{
  v2 = sub_2620182BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelMessageEnvelope.Message.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v34 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA540, &qword_262045B30);
  v33 = OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_195();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA548, &qword_262045B38);
  v9 = OUTLINED_FUNCTION_0(v8);
  v31 = v10;
  v32 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA550, &qword_262045B40);
  OUTLINED_FUNCTION_0(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_127();
  v20 = v3[4];
  OUTLINED_FUNCTION_42_0(v3, v3[3]);
  sub_262018214();
  OUTLINED_FUNCTION_78_2();
  sub_26203AE5C();
  memcpy(v36, v34, 0x82uLL);
  LODWORD(v3) = sub_261FBCC28(v36);
  v21 = sub_261F7E4C8(v36);
  v22 = v21;
  if (v3 == 1)
  {
    LOBYTE(v35[0]) = 1;
    sub_262018268();
    OUTLINED_FUNCTION_6_15();
    sub_26203AA9C();
    memcpy(v35, v22, 0x82uLL);
    sub_261FBD20C();
    v23 = v33;
    sub_26203AB3C();
    v24 = OUTLINED_FUNCTION_14_6();
  }

  else
  {
    v27 = *v21;
    v26 = v21[1];
    sub_2620182BC();
    OUTLINED_FUNCTION_6_15();
    sub_26203AA9C();
    v35[0] = v27;
    v35[1] = v26;
    sub_261FC7838();
    v23 = v32;
    sub_26203AB3C();
    v25 = *(v31 + 8);
    v24 = v1;
  }

  v25(v24, v23);
  v28 = *(v16 + 8);
  v29 = OUTLINED_FUNCTION_100();
  v30(v29);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_262018214()
{
  result = qword_28108B798;
  if (!qword_28108B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B798);
  }

  return result;
}

unint64_t sub_262018268()
{
  result = qword_28108B780;
  if (!qword_28108B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B780);
  }

  return result;
}

unint64_t sub_2620182BC()
{
  result = qword_28108B768;
  if (!qword_28108B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B768);
  }

  return result;
}

void ControlChannelMessageEnvelope.Message.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v48 = v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA558, &qword_262045B48);
  OUTLINED_FUNCTION_0(v52);
  v50 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_195();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA560, &qword_262045B50);
  OUTLINED_FUNCTION_0(v10);
  v49 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA568, &unk_262045B58);
  OUTLINED_FUNCTION_0(v15);
  v51 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_0();
  v20 = v4[4];
  OUTLINED_FUNCTION_42_0(v4, v4[3]);
  sub_262018214();
  OUTLINED_FUNCTION_85_2();
  sub_26203AE3C();
  if (!v0)
  {
    v21 = sub_26203AA7C();
    sub_261F99084(v21, 0);
    v23 = v15;
    if (v24 != v22 >> 1)
    {
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_83_2();
      if (v27 == v28)
      {
        __break(1u);
        return;
      }

      v47 = *(v26 + v25);
      sub_261F99070(v25 + 1);
      v30 = v29;
      v32 = v31;
      swift_unknownObjectRelease();
      if (v30 == v32 >> 1)
      {
        if (v47)
        {
          LOBYTE(v54[0]) = 1;
          sub_262018268();
          OUTLINED_FUNCTION_64_2();
          sub_26203A97C();
          sub_261FBCDBC();
          OUTLINED_FUNCTION_45_3();
          sub_26203AA2C();
          swift_unknownObjectRelease();
          (*(v50 + 8))(v2, v52);
          (*(v51 + 8))(v1, v15);
          memcpy(v53, v54, 0x82uLL);
          sub_261FBD0DC(v53);
          memcpy(v55, v53, sizeof(v55));
        }

        else
        {
          LOBYTE(v54[0]) = 0;
          sub_2620182BC();
          OUTLINED_FUNCTION_64_2();
          sub_26203A97C();
          sub_261FCA870();
          OUTLINED_FUNCTION_80_2();
          sub_26203AA2C();
          swift_unknownObjectRelease();
          v41 = *(v49 + 8);
          v42 = OUTLINED_FUNCTION_123();
          v43(v42);
          v44 = *(v51 + 8);
          v45 = OUTLINED_FUNCTION_70_2();
          v46(v45);
          v54[0] = v53[0];
          sub_261FBD1FC(v54);
          memcpy(v55, v54, sizeof(v55));
        }

        memcpy(v48, v55, 0x82uLL);
        goto LABEL_10;
      }

      v23 = v15;
    }

    v33 = sub_26203A81C();
    OUTLINED_FUNCTION_91_1();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0) + 48);
    *v35 = &type metadata for ControlChannelMessageEnvelope.Message;
    sub_26203A98C();
    OUTLINED_FUNCTION_73_0();
    v37 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_71(v33);
    (*(v38 + 104))(v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_14_6();
    v40(v39, v23);
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_2620188BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E696769726FLL && a2 == 0xEC00000079426465;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65636E6575716573 && a2 == 0xEE007265626D754ELL;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26203AC0C();

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

uint64_t sub_2620189D8(char a1)
{
  if (!a1)
  {
    return 0x74616E696769726FLL;
  }

  if (a1 == 1)
  {
    return 0x65636E6575716573;
  }

  return 0x6567617373656DLL;
}

uint64_t sub_262018A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2620188BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262018AA4(uint64_t a1)
{
  v2 = sub_262023494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262018AE0(uint64_t a1)
{
  v2 = sub_262023494();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelMessageEnvelope.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA570, &qword_262045B68);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_0();
  v11 = *v0;
  v16 = *(v0 + 1);
  memcpy(v19, v0 + 16, 0x82uLL);
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v14 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_42_0(v14, v15);
  sub_262023494();
  OUTLINED_FUNCTION_85_2();
  OUTLINED_FUNCTION_79_2();
  sub_26203AE5C();
  v18[0] = v11;
  LOBYTE(v17[0]) = 0;
  sub_2620234E8();
  OUTLINED_FUNCTION_69_3();
  sub_26203AB3C();
  if (v1)
  {
    (*(v7 + 8))(v2, v5);
  }

  else
  {
    v18[0] = 1;
    OUTLINED_FUNCTION_69_3();
    sub_26203AB7C();
    memcpy(v18, v19, sizeof(v18));
    OUTLINED_FUNCTION_62_3();
    sub_261FBD14C(v19, v17);
    sub_26202353C();
    OUTLINED_FUNCTION_69_3();
    sub_26203AB3C();
    memcpy(v17, v18, 0x82uLL);
    sub_261FBD1A8(v17);
    (*(v7 + 8))(v2, v5);
  }

  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_38_0();
}

void ControlChannelMessageEnvelope.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA578, &qword_262045B70);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_22_10();
  sub_262023494();
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_52_3();
  sub_26203AE3C();
  if (!v0)
  {
    sub_262023590();
    OUTLINED_FUNCTION_6_15();
    sub_26203AA2C();
    v11 = v16[0];
    LOBYTE(v16[0]) = 1;
    v12 = sub_26203AA6C();
    OUTLINED_FUNCTION_62_3();
    sub_2620235E4();
    OUTLINED_FUNCTION_6_15();
    sub_26203AA2C();
    v13 = *(v7 + 8);
    v14 = OUTLINED_FUNCTION_100();
    v15(v14);
    *v4 = v11;
    *(v4 + 8) = v12;
    memcpy((v4 + 16), v16, 0x82uLL);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_262018EA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44676E6972696170 && a2 == 0xEB00000000617461;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x52676E6972696170 && a2 == 0xEF64657463656A65;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002620526D0 == a2;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1735289200 && a2 == 0xE400000000000000;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x800000026204C630 == a2;
          if (v9 || (sub_26203AC0C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000002620526F0 == a2;
            if (v10 || (sub_26203AC0C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x726961706E75 && a2 == 0xE600000000000000;
              if (v11 || (sub_26203AC0C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x8000000262052710 == a2;
                if (v12 || (sub_26203AC0C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000012 && 0x8000000262052730 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_26203AC0C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_262019174(char a1)
{
  result = 0x44676E6972696170;
  switch(a1)
  {
    case 1:
      result = 0x52676E6972696170;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 1735289200;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x726961706E75;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26201929C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4564657070617277 && a2 == 0xEC000000726F7272)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_262019368(uint64_t a1)
{
  v2 = sub_262023830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2620193A4(uint64_t a1)
{
  v2 = sub_262023830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2620193E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262018EA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262019410@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26201916C();
  *a1 = result;
  return result;
}

uint64_t sub_262019438(uint64_t a1)
{
  v2 = sub_262023638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262019474(uint64_t a1)
{
  v2 = sub_262023638();

  return MEMORY[0x2821FE720](a1, v2);
}