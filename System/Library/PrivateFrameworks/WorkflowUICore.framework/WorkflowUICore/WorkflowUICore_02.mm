void sub_274B0ED4C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_274BF2D94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_274B0EDA8()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_274B0EE04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 3;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 2)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 3) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
        if (EnumTagSinglePayload >= 4)
        {
          return EnumTagSinglePayload - 3;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return v6 + (v7 | v15) + 1;
}

void sub_274B0EFD0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 3;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 2)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 3) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
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

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
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

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 3;

          __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
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
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_274B0F25C()
{
  result = qword_280989798;
  if (!qword_280989798)
  {
    type metadata accessor for WFContentItemListThumbnailOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989798);
  }

  return result;
}

unint64_t sub_274B0F2B4()
{
  result = qword_280989F80;
  if (!qword_280989F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280989F80);
  }

  return result;
}

id sub_274B0F2F8(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_274B0F308(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return sub_274BF2D64();
}

uint64_t TapToRadar.RadarComponent.hashValue.getter()
{
  v1 = *v0;
  sub_274BF5CD4();
  MEMORY[0x277C65580](v1);
  return sub_274BF5D44();
}

WorkflowUICore::TapToRadar::RadarClassification_optional __swiftcall TapToRadar.RadarClassification.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_8();
  v2 = sub_274BF5B24();

  v4 = 11;
  if (v2 < 0xB)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t TapToRadar.RadarClassification.rawValue.getter()
{
  result = 0x7974697275636553;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x7265776F50;
      break;
    case 3:
      result = 0x616D726F66726550;
      break;
    case 4:
      result = 0x69626173552F4955;
      break;
    case 5:
      result = 0x2073756F69726553;
      break;
    case 6:
      result = 0x754220726568744FLL;
      break;
    case 7:
      result = 0x2065727574616546;
      break;
    case 8:
      result = 0x6D65636E61686E45;
      break;
    case 9:
      result = 1802723668;
      break;
    case 0xA:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_274B0F5AC@<X0>(unint64_t *a1@<X8>)
{
  result = TapToRadar.RadarClassification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

WorkflowUICore::TapToRadar::Reproducibility_optional __swiftcall TapToRadar.Reproducibility.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_8();
  v2 = sub_274BF5B24();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t TapToRadar.Reproducibility.rawValue.getter()
{
  result = 0x737961776C41;
  switch(*v0)
  {
    case 1:
      result = 0x656D6974656D6F53;
      break;
    case 2:
      result = 0x796C65726152;
      break;
    case 3:
      result = 0x656C62616E55;
      break;
    case 4:
      result = 0x74276E6469442049;
      break;
    case 5:
      result = 0x6C70704120746F4ELL;
      break;
    case 6:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_274B0F718@<X0>(uint64_t *a1@<X8>)
{
  result = TapToRadar.Reproducibility.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

WorkflowUICore::TapToRadar::Diagnostics_optional __swiftcall TapToRadar.Diagnostics.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_8();
  v2 = sub_274BF5B24();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t TapToRadar.Diagnostics.rawValue.getter()
{
  result = 0x656E6F6870;
  switch(*v0)
  {
    case 1:
      result = 0x61772C656E6F6870;
      break;
    case 2:
      result = 48;
      break;
    case 3:
      result = 12589;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_274B0F860@<X0>(unint64_t *a1@<X8>)
{
  result = TapToRadar.Diagnostics.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static TapToRadar.launchTapToRadar(title:description:classification:component:reproducibility:diagnostics:attachments:extensionIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v11 = sub_274BF1B94();
  OUTLINED_FUNCTION_1();
  v43 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_10();
  v42 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v15 - 8);
  v44 = v34 - v16;
  v17 = sub_274BF1F54();
  OUTLINED_FUNCTION_1();
  v38 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_10();
  v37 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A4D0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v34 - v22;
  v24 = *a8;
  sub_274BF1B84();
  if (!__swift_getEnumTagSinglePayload(v23, 1, v11))
  {
    v35 = a10;
    v36 = v17;
    v34[0] = a9;
    v34[1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A4D8);
    sub_274BF1B54();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_274BFBE10;
    v34[2] = v25;
    sub_274BF1B44();
    sub_274BF1B44();
    sub_274BF1B44();

    sub_274BF1B44();

    sub_274BF1B44();

    sub_274BF1B44();

    sub_274BF1B44();

    v45 = v34[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
    sub_274B1023C();
    OUTLINED_FUNCTION_2_10();
    sub_274BF1B44();

    sub_274BF1B44();

    v45 = v35;
    OUTLINED_FUNCTION_2_10();
    sub_274BF1B44();

    sub_274BF1B64();
    v17 = v36;
  }

  if (__swift_getEnumTagSinglePayload(v23, 1, v11))
  {
    v26 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v17);
  }

  else
  {
    v28 = v42;
    v27 = v43;
    (*(v43 + 16))(v42, v23, v11);
    v26 = v44;
    sub_274BF1B74();
    (*(v27 + 8))(v28, v11);
    if (__swift_getEnumTagSinglePayload(v26, 1, v17) != 1)
    {
      v31 = v37;
      v30 = v38;
      (*(v38 + 32))(v37, v26, v17);
      v32 = [objc_opt_self() sharedContext];
      v33 = sub_274BF1ED4();
      [v32 openURL_];

      (*(v30 + 8))(v31, v17);
      return sub_274B0671C(v23, &qword_28098A4D0);
    }
  }

  sub_274B0671C(v26, &qword_28098EEE0);
  return sub_274B0671C(v23, &qword_28098A4D0);
}

unint64_t sub_274B1023C()
{
  result = qword_28098A4E0;
  if (!qword_28098A4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A4E0);
  }

  return result;
}

unint64_t sub_274B102BC()
{
  result = qword_28098A4E8;
  if (!qword_28098A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A4E8);
  }

  return result;
}

unint64_t sub_274B10314()
{
  result = qword_28098A4F0;
  if (!qword_28098A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A4F0);
  }

  return result;
}

unint64_t sub_274B1036C()
{
  result = qword_28098A4F8;
  if (!qword_28098A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A4F8);
  }

  return result;
}

unint64_t sub_274B103C4()
{
  result = qword_28098A500;
  if (!qword_28098A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A500);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TapToRadar.RadarComponent(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TapToRadar.RadarClassification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TapToRadar.RadarClassification(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadar.Reproducibility(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TapToRadar.Reproducibility(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TapToRadar.Diagnostics(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TapToRadar.Diagnostics(_BYTE *result, unsigned int a2, unsigned int a3)
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

void ShareButton.init(contentItem:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ContentItemShareManager();
  swift_allocObject();
  v4 = a1;
  sub_274B1101C(a1);
  OUTLINED_FUNCTION_0_7();
  sub_274B12EF4(v5, v6);
  v7 = sub_274BF3264();
  v9 = v8;

  *a2 = v7;
  a2[1] = v9;
}

uint64_t type metadata accessor for ContentItemShareManager()
{
  result = qword_28098A538;
  if (!qword_28098A538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F38);
  sub_274B01CF8();
  sub_274BF47C4();
  type metadata accessor for ContentItemShareManager();
  OUTLINED_FUNCTION_0_7();
  sub_274B12EF4(v6, v7);

  v8 = sub_274BF3264();
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A510);
  v12 = (a1 + *(result + 36));
  *v12 = v8;
  v12[1] = v10;
  return result;
}

uint64_t sub_274B10B5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_274BF46D4();
  v6 = [objc_opt_self() defaultMetrics];
  [v6 scaledValueForValue_];

  v7 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v8 = sub_274BF3F44();
  sub_274B12D7C(v4, &qword_280989DC0);
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v8;
  return result;
}

uint64_t View.contentItemShareSheet(shareManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContentItemShareManager();
  OUTLINED_FUNCTION_0_7();
  sub_274B12EF4(v5, v6);

  v9[0] = sub_274BF3264();
  v9[1] = v7;
  MEMORY[0x277C63D20](v9, a2, &type metadata for ContentItemShareModifier, a3);
}

uint64_t sub_274B10D6C(uint64_t a1, uint64_t a2)
{
  sub_274AD8430(0, &qword_28098B310);
  if (sub_274BF5624())
  {
    v4 = *(a1 + 24) ^ *(a2 + 24) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_274B10DE0()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_274B10E18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t sub_274B10E8C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274B10EFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B10D64();
  *a1 = result;
  return result;
}

uint64_t sub_274B10F34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();
}

uint64_t sub_274B10FAC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274B1101C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A530);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A520);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v15 = OBJC_IVAR____TtC14WorkflowUICore23ContentItemShareManager__sharedItem;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A550);
  sub_274BF2D24();
  (*(v11 + 32))(v1 + v15, v14, v9);
  v16 = OBJC_IVAR____TtC14WorkflowUICore23ContentItemShareManager__sharingError;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A560);
  sub_274BF2D24();
  (*(v5 + 32))(v1 + v16, v8, v3);
  *(v1 + 16) = a1;
  return v1;
}

void sub_274B1125C()
{
  v2 = sub_274BF2BE4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v43 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v39 - v8;
  v10 = *(v0 + 16);
  if (v10)
  {
    v40 = v0;
    v11 = v10;
    sub_274BF2A54();
    v12 = v11;
    v13 = sub_274BF2BD4();
    v14 = sub_274BF5484();

    v15 = os_log_type_enabled(v13, v14);
    v41 = v2;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v39[1] = v1;
      v17 = v16;
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v12;
      *v18 = v10;
      v19 = v12;
      _os_log_impl(&dword_274AD4000, v13, v14, "Sharing content: %@", v17, 0xCu);
      sub_274B12D7C(v18, &qword_28098A5F0);
      v20 = v18;
      v2 = v41;
      MEMORY[0x277C664A0](v20, -1, -1);
      MEMORY[0x277C664A0](v17, -1, -1);
    }

    v21 = *(v4 + 8);
    v21(v9, v2);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v23 = [v12 attributionSet];
    v24 = [v23 isEligibleToShareWithResultManagedLevel_];

    if (v24)
    {
      v25 = swift_allocObject();
      v25[2] = v40;
      v25[3] = v12;
      v25[4] = v22;
      aBlock[4] = sub_274B12D58;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_274B02D5C;
      aBlock[3] = &block_descriptor_1;
      v26 = _Block_copy(aBlock);
      v12 = v12;

      [v12 prepareForPresentationWithCompletionHandler_];
      _Block_release(v26);
    }

    else
    {
      v27 = v43;
      sub_274BF2A54();
      v28 = sub_274BF2BD4();
      v29 = sub_274BF5474();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_274AD4000, v28, v29, "Could not share content because of MDM restrictions", v30, 2u);
        MEMORY[0x277C664A0](v30, -1, -1);
      }

      v21(v27, v41);
      v31 = objc_opt_self();
      sub_274BF4FE4();
      if (qword_2809893B8 != -1)
      {
        swift_once();
      }

      v32 = qword_28098C7C0;
      v33 = sub_274BF4F04();
      v34 = sub_274BF4F04();

      v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

      v36 = sub_274BF4F44();
      v38 = v37;

      sub_274B12CF4(v36, v38, v31);
      swift_willThrow();
    }
  }
}

uint64_t sub_274B11704(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16) == 2;
  type metadata accessor for SharedItem();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  v7 = a2;
  return sub_274B10E8C();
}

uint64_t ContentItemShareManager.deinit()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICore23ContentItemShareManager__sharedItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A520);
  OUTLINED_FUNCTION_1_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC14WorkflowUICore23ContentItemShareManager__sharingError;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A530);
  OUTLINED_FUNCTION_1_0();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t ContentItemShareManager.__deallocating_deinit()
{
  ContentItemShareManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274B1188C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContentItemShareManager();
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

void sub_274B11924()
{
  sub_274B0ED4C(319, &qword_28098A548, &qword_28098A550);
  if (v0 <= 0x3F)
  {
    sub_274B0ED4C(319, &qword_28098A558, &qword_28098A560);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_274B11A40()
{
  result = qword_28098A568;
  if (!qword_28098A568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A510);
    sub_274AFA930(&qword_28098A570, &qword_28098A578);
    sub_274B11AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A568);
  }

  return result;
}

unint64_t sub_274B11AF8()
{
  result = qword_28098A580;
  if (!qword_28098A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A580);
  }

  return result;
}

uint64_t sub_274B11B4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_274B11B8C(uint64_t result, int a2, int a3)
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

uint64_t sub_274B11BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a3;
  v57 = a2;
  v58 = a1;
  v65 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A588);
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  MEMORY[0x28223BE20](v4);
  v54 = &v54 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A590);
  MEMORY[0x28223BE20](v59);
  v66 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A598);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v54 - v9;
  v56 = type metadata accessor for ContentItemShareManager();
  sub_274B12EF4(&qword_28098A508, type metadata accessor for ContentItemShareManager);
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  v74 = v67;
  v75 = v68;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5A0);
  v11 = type metadata accessor for SharedItem();
  v12 = sub_274AFA930(&qword_28098A5A8, &qword_28098A5A0);
  v52 = sub_274B12EF4(&qword_28098A5B0, type metadata accessor for SharedItem);
  v53 = sub_274B12730();
  sub_274BF4404();

  v13 = v55;
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  v72 = v74;
  v73 = v75;
  *&v67 = v10;
  *(&v67 + 1) = v11;
  v14 = v59;
  v68 = &type metadata for ShareActivityView;
  v69 = v12;
  v70 = v52;
  v71 = v53;
  swift_getOpaqueTypeConformance2();
  sub_274B12784();
  v15 = v66;
  v16 = v60;
  v17 = v54;
  sub_274BF43C4();
  v18 = v73;

  (*(v61 + 8))(v17, v16);
  v19 = *(v13 + 16);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19 == 0;
  v22 = &v15[*(v14 + 36)];
  *v22 = KeyPath;
  v22[1] = sub_274B12AAC;
  v22[2] = v21;
  if (v19)
  {
    v23 = v14;
    v24 = v19;
    sub_274BF4FE4();
    if (qword_2809893B8 != -1)
    {
      swift_once();
    }

    v25 = qword_28098C7C0;
    v26 = sub_274BF4F04();
    v27 = sub_274BF4F04();

    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

    sub_274BF4F44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_274BF8D80;
    v30 = [v24 name];
    v31 = sub_274BF4F44();
    v33 = v32;

    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_274B12CA0();
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    v34 = sub_274BF4F14();
    v36 = v35;

    v14 = v23;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  *&v67 = v34;
  *(&v67 + 1) = v36;
  v37 = sub_274B12AC4();
  v38 = sub_274ADDF6C();
  v39 = MEMORY[0x277D837D0];
  v40 = v62;
  v41 = v66;
  sub_274BF43A4();

  sub_274AE7068(v41);
  sub_274BF4FE4();
  v42 = v14;
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v43 = qword_28098C7C0;
  v44 = sub_274BF4F04();
  v45 = sub_274BF4F04();

  v46 = [v43 &selRef_sourceRect + 4];

  v47 = sub_274BF4F44();
  v49 = v48;

  *&v74 = v47;
  *(&v74 + 1) = v49;
  *&v67 = v42;
  *(&v67 + 1) = v39;
  v68 = v37;
  v69 = v38;
  swift_getOpaqueTypeConformance2();
  v50 = v64;
  sub_274BF42F4();

  return (*(v63 + 8))(v40, v50);
}

uint64_t sub_274B12410@<X0>(void *a1@<X8>)
{
  result = sub_274B10F34();
  *a1 = v3;
  return result;
}

void sub_274B12488(id *a1@<X0>, uint64_t a2@<X8>)
{
  v27[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v27 - v4;
  v6 = *a1;
  v7 = sub_274B19550(v6);
  v27[3] = v8;
  v27[4] = v7;
  v27[1] = v10;
  v27[2] = v9;
  v11 = [v6 localizedDescription];
  v12 = sub_274BF4F44();
  v14 = v13;

  v28 = v12;
  v29 = v14;
  sub_274ADDF6C();
  v27[0] = sub_274BF4104();
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v15 = qword_28098C7C0;
  v16 = sub_274BF4F04();
  v17 = sub_274BF4F04();

  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = sub_274BF4F44();
  v21 = v20;

  v28 = v19;
  v29 = v21;
  v22 = sub_274BF4104();
  v24 = v23;
  LOBYTE(v19) = v25;
  sub_274BF4544();
  sub_274AFA1D0(v22, v24, v19 & 1);

  v26 = sub_274BF4554();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v26);
  sub_274BF4504();
}

unint64_t sub_274B12730()
{
  result = qword_28098A5B8;
  if (!qword_28098A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A5B8);
  }

  return result;
}

unint64_t sub_274B12784()
{
  result = qword_28098A5C0;
  if (!qword_28098A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A5C0);
  }

  return result;
}

id sub_274B127D8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A610);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_274BF8D80;
  v4 = *(a2 + 16);
  *(v3 + 56) = sub_274AD8430(0, &qword_28098A118);
  *(v3 + 32) = v4;
  v5 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v6 = v4;
  v7 = sub_274B12A00(v3, 0);
  [v7 setIsContentManaged_];
  [v7 setAllowsCustomPresentationStyle_];
  [v7 setModalPresentationStyle_];
  return v7;
}

uint64_t sub_274B12910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B12F40();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_274B12974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B12F40();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_274B129D8()
{
  sub_274B12F40();
  sub_274BF3D84();
  __break(1u);
}

id sub_274B12A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF5134();

  if (a2)
  {
    sub_274AD8430(0, &qword_28098A618);
    v5 = sub_274BF5134();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 initWithActivityItems:v4 applicationActivities:v5];

  return v6;
}

unint64_t sub_274B12AC4()
{
  result = qword_28098A5C8;
  if (!qword_28098A5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A5A0);
    type metadata accessor for SharedItem();
    sub_274AFA930(&qword_28098A5A8, &qword_28098A5A0);
    sub_274B12EF4(&qword_28098A5B0, type metadata accessor for SharedItem);
    sub_274B12730();
    swift_getOpaqueTypeConformance2();
    sub_274B12784();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_28098A5D0, &unk_28098AF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A5C8);
  }

  return result;
}

unint64_t sub_274B12CA0()
{
  result = qword_28098A5E0;
  if (!qword_28098A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A5E0);
  }

  return result;
}

id sub_274B12CF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_274BF4F04();

  v5 = [a3 sharingMixedMDMContentErrorWithActionName_];

  return v5;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274B12D7C(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_274B12DE0()
{
  result = qword_28098A5F8;
  if (!qword_28098A5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A590);
    sub_274B12AC4();
    sub_274ADDF6C();
    swift_getOpaqueTypeConformance2();
    sub_274B12EF4(&qword_2815A2F70, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A5F8);
  }

  return result;
}

uint64_t sub_274B12EF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274B12F40()
{
  result = qword_28098A608;
  if (!qword_28098A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A608);
  }

  return result;
}

uint64_t sub_274B12F9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A668);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_274BF2BB4();
  __swift_allocate_value_buffer(v3, qword_28098A620);
  __swift_project_value_buffer(v3, qword_28098A620);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_274BF2AF4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_274B130D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A668);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_274BF2BB4();
  __swift_allocate_value_buffer(v3, qword_28098A638);
  __swift_project_value_buffer(v3, qword_28098A638);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_274BF2AF4();
}

uint64_t sub_274B131CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A668);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_274BF2BB4();
  __swift_allocate_value_buffer(v3, qword_28098A650);
  __swift_project_value_buffer(v3, qword_28098A650);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_274BF2B14();
}

uint64_t sub_274B132C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_274BF2BB4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_274B133C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_274B13420(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_274B13460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B13508()
{
  OUTLINED_FUNCTION_17_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E0);
  MEMORY[0x277C64160](&v2, v0);
  return v2;
}

uint64_t sub_274B13554()
{
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E0);
  return sub_274BF48D4();
}

uint64_t sub_274B135A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E0);
  sub_274BF48E4();
  return v1;
}

uint64_t sub_274B13600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v233 = a2;
  sub_274BF3CC4();
  OUTLINED_FUNCTION_1();
  v217 = v6;
  v218 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_10();
  v216 = v7;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A6F0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13_0();
  v215 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A6F8);
  OUTLINED_FUNCTION_1();
  v221 = v11;
  v222 = v10;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_0();
  v220 = v13;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A700);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  v223 = v15;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  v202 = &v191 - v17;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  v203 = &v191 - v19;
  v207 = sub_274BF3A94();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_10();
  v206 = v21;
  sub_274BF2F54();
  OUTLINED_FUNCTION_1();
  v213 = v23;
  v214 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_10();
  v211 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A708);
  OUTLINED_FUNCTION_1();
  v212 = v26;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_13_0();
  v210 = v28;
  v29 = *(a1 + 16);
  v30 = sub_274BF33D4();
  v31 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v209 = v32;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_13_0();
  v208 = v34;
  v35 = MEMORY[0x277CDFC60];
  v229 = *(a1 + 24);
  v275 = v229;
  v276 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v273 = WitnessTable;
  v274 = v35;
  v36 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  v39 = sub_274B178D8(v37, v38);
  v239 = v36;
  v240 = v31;
  v269 = v31;
  v270 = v25;
  v236 = v39;
  v237 = v25;
  v271 = v36;
  v272 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v195 = v41;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_13_0();
  v224 = v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A718);
  v196 = OpaqueTypeMetadata2;
  sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v198 = v44;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_13_0();
  v197 = v46;
  v235 = v47;
  v48 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v201 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9();
  v200 = v51;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  v199 = &v191 - v53;
  v225 = *(v29 - 8);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3_10();
  v234 = v55;
  v226 = *(v30 - 8);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_9();
  v205 = v57;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v58);
  v228 = &v191 - v59;
  v60 = sub_274BF3A74();
  OUTLINED_FUNCTION_1();
  v227 = v61;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v62);
  v64 = &v191 - v63;
  v232 = v48;
  sub_274BF3A74();
  OUTLINED_FUNCTION_1();
  v230 = v66;
  v231 = v65;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v67);
  v69 = &v191 - v68;
  v70 = v3;
  v71 = *v3;
  v269 = v71;
  v72 = v29;
  sub_274BF51A4();
  swift_getWitnessTable();
  v73 = sub_274BF53F4();
  v74 = MEMORY[0x277CE1410];
  if (v73)
  {
    v75 = WitnessTable;
    sub_274ADB9A0();
    v245 = v74;
    v246 = v75;
    OUTLINED_FUNCTION_3_0();
    v234 = swift_getWitnessTable();
    v76 = v236;
    v77 = v237;
    v269 = v240;
    v270 = v237;
    v271 = v239;
    v272 = v236;
    v78 = OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_8();
    v81 = sub_274B178D8(v79, v80);
    v243 = v78;
    v244 = v81;
    OUTLINED_FUNCTION_4_6();
    v82 = swift_getWitnessTable();
    v83 = sub_274B16E38();
    v241 = v82;
    v242 = v83;
    swift_getWitnessTable();
    sub_274ADB9A0();
    (*(v227 + 8))(v64, v60);
    v84 = v75;
    v85 = v76;
LABEL_9:
    v259 = MEMORY[0x277CE1410];
    v260 = v84;
    v175 = swift_getWitnessTable();
    v269 = v240;
    v270 = v77;
    v271 = v239;
    v272 = v85;
    v176 = OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_8();
    v179 = sub_274B178D8(v177, v178);
    v257 = v176;
    v258 = v179;
    v180 = swift_getWitnessTable();
    v181 = sub_274B16E38();
    v255 = v180;
    v256 = v181;
    v182 = swift_getWitnessTable();
    v253 = v175;
    v254 = v182;
    v183 = v231;
    v184 = swift_getWitnessTable();
    sub_274ADB48C(v69, v183, v184);
    return (*(v230 + 8))(v69, v183);
  }

  v193 = v69;
  v194 = v64;
  v192 = v60;
  v86 = sub_274BF5194();
  v87 = v70;
  sub_274B13508();
  sub_274BF51B4();
  v88 = v229;
  v89 = sub_274B95A80();
  v91 = v72;
  v92 = v88;
  if (v86 == 1)
  {
    v93 = v205;
    OUTLINED_FUNCTION_12_2();
    v94 = OUTLINED_FUNCTION_18_0();
    v95(v94);
    v96 = v228;
    v97 = v30;
    v98 = v30;
    v99 = WitnessTable;
    sub_274ADB48C(v93, v98, WitnessTable);
    v234 = *(v226 + 8);
    v234(v93, v97);
    v100 = v96;
    v101 = v99;
    sub_274ADB48C(v100, v97, v99);
    v102 = MEMORY[0x277CE1410];
    sub_274B2CC88();
    v251 = v102;
    v252 = v101;
    OUTLINED_FUNCTION_3_0();
    v103 = v192;
    v229 = swift_getWitnessTable();
    v105 = v236;
    v104 = v237;
    v269 = v240;
    v270 = v237;
    v271 = v239;
    v272 = v236;
    v106 = OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_8();
    v109 = sub_274B178D8(v107, v108);
    v249 = v106;
    v250 = v109;
    OUTLINED_FUNCTION_4_6();
    v110 = swift_getWitnessTable();
    v111 = sub_274B16E38();
    v247 = v110;
    v248 = v111;
    v77 = v104;
    v85 = v105;
    swift_getWitnessTable();
    v69 = v193;
    v112 = v194;
    sub_274ADB9A0();
    (*(v227 + 8))(v112, v103);
    v113 = v234;
    v234(v93, v97);
    v84 = WitnessTable;
    v113(v228, v97);
    goto LABEL_9;
  }

  v225 = v86;
  v189 = v72;
  v190 = v88;
  v187 = v89;
  v188 = v90;
  v227 = v71;
  LOBYTE(v186) = 1;
  LOBYTE(v185) = 1;
  v114 = v228;
  v115 = v92;
  OUTLINED_FUNCTION_12_2();
  v116 = OUTLINED_FUNCTION_18_0();
  v117(v116);
  sub_274BF4A84();
  v118 = v208;
  sub_274BF43F4();
  (*(v226 + 8))(v114, v30);
  sub_274BF3BA4();
  v119 = v211;
  sub_274BF2F14();
  v120 = *(v87 + 16);
  v278[0] = *(v87 + 8);
  v277 = *(v87 + 32);
  OUTLINED_FUNCTION_15_0();
  v121 = swift_allocObject();
  *(v121 + 16) = v72;
  *(v121 + 24) = v115;
  OUTLINED_FUNCTION_8_5(v121);
  sub_274B15E84(v278, &v269);
  v228 = v120;

  sub_274B01968(&v277, &v269, &qword_28098A720);
  sub_274B16DE4(&qword_28098A728, MEMORY[0x277CDD730]);
  v122 = v210;
  v123 = v214;
  sub_274BF4974();

  (*(v213 + 8))(v119, v123);
  sub_274BF2F74();
  v124 = v240;
  v125 = v237;
  sub_274BF4424();
  (*(v212 + 8))(v122, v125);
  (*(v209 + 8))(v118, v124);
  v126 = sub_274BF4A94();
  v127 = v215;
  *v215 = v126;
  *(v127 + 8) = v128;
  v129 = v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A730) + 44);
  v234 = v91;
  sub_274B14BB0(v87, v91, v115, v129);
  v130 = v216;
  sub_274BF3CB4();
  v131 = sub_274B178D8(&qword_28098A738, &qword_28098A6F0);
  v132 = v219;
  v133 = v220;
  sub_274BF4354();
  (*(v217 + 8))(v130, v218);
  sub_274B17578(v127, &qword_28098A6F0);
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v134 = qword_28098C7C0;
  v135 = sub_274BF4F04();
  v136 = sub_274BF4F04();

  v137 = [v134 localizedStringForKey:v135 value:v136 table:{0, 0, v185, 0, v186, v187, v188, v189, v190}];

  v138 = sub_274BF4F44();
  v140 = v139;

  v269 = v138;
  v270 = v140;
  v267 = v132;
  v268 = v131;
  swift_getOpaqueTypeConformance2();
  sub_274ADDF6C();
  v142 = v222;
  v141 = v223;
  sub_274BF42F4();

  (*(v221 + 8))(v133, v142);
  sub_274BF4FE4();
  v143 = sub_274BF4F04();
  v144 = sub_274BF4F04();

  v145 = [v134 localizedStringForKey:v143 value:v144 table:0];

  sub_274BF4F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_274BFA880;
  result = sub_274B13508();
  if (!__OFADD__(result, 1))
  {
    v148 = MEMORY[0x277D83B88];
    v149 = MEMORY[0x277D83C10];
    *(v146 + 56) = MEMORY[0x277D83B88];
    *(v146 + 64) = v149;
    *(v146 + 32) = result + 1;
    *(v146 + 96) = v148;
    *(v146 + 104) = v149;
    *(v146 + 72) = v225;
    v150 = sub_274BF4F14();
    v152 = v151;

    v269 = v150;
    v270 = v152;
    v153 = v202;
    sub_274BF33B4();

    sub_274B17578(v141, &qword_28098A700);
    OUTLINED_FUNCTION_15_0();
    v154 = swift_allocObject();
    v155 = v229;
    *(v154 + 16) = v234;
    *(v154 + 24) = v155;
    OUTLINED_FUNCTION_8_5(v154);
    sub_274B15E84(v278, &v269);

    sub_274B01968(&v277, &v269, &qword_28098A720);
    v156 = v203;
    sub_274BF33C4();

    sub_274B17578(v153, &qword_28098A700);
    v269 = v240;
    v270 = v237;
    v271 = v239;
    v272 = v236;
    v157 = OUTLINED_FUNCTION_2_11();
    sub_274B16CB8();
    sub_274BF4A94();
    v159 = v196;
    v158 = v197;
    v160 = v224;
    sub_274BF4454();
    sub_274B17578(v156, &qword_28098A700);
    (*(v195 + 8))(v160, v159);
    OUTLINED_FUNCTION_15_0();
    v161 = swift_allocObject();
    v162 = v229;
    *(v161 + 16) = v234;
    *(v161 + 24) = v162;
    OUTLINED_FUNCTION_8_5(v161);
    sub_274B15E84(v278, &v269);

    sub_274B01968(&v277, &v269, &qword_28098A720);
    OUTLINED_FUNCTION_0_8();
    v165 = sub_274B178D8(v163, v164);
    v265 = v157;
    v266 = v165;
    OUTLINED_FUNCTION_4_6();
    v166 = v235;
    v167 = swift_getWitnessTable();
    v168 = v200;
    sub_274BF4434();

    (*(v198 + 8))(v158, v166);
    v169 = sub_274B16E38();
    v263 = v167;
    v264 = v169;
    v170 = v232;
    v171 = swift_getWitnessTable();
    v172 = v199;
    sub_274ADB48C(v168, v170, v171);
    v173 = *(v201 + 8);
    v173(v168, v170);
    sub_274ADB48C(v172, v170, v171);
    v84 = WitnessTable;
    v261 = MEMORY[0x277CE1410];
    v262 = WitnessTable;
    OUTLINED_FUNCTION_3_0();
    swift_getWitnessTable();
    v69 = v193;
    sub_274B2CC88();
    v174 = v168;
    v77 = v237;
    v173(v174, v170);
    v173(v172, v170);
    v85 = v236;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_274B14A68()
{
  sub_274BF2F24();
  v1 = fabs(v0);
  result = sub_274BF2F24();
  if (fabs(v3) >= v1)
  {
    sub_274BF2F24();
    v5 = v4;
    type metadata accessor for PageView();
    if (v5 >= 0.0)
    {
      return sub_274B14B6C();
    }

    else
    {
      return sub_274B14AEC();
    }
  }

  return result;
}

uint64_t sub_274B14AEC()
{
  v0 = sub_274B13508();
  result = sub_274BF5194();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v0 == result - 1)
  {
    return result;
  }

  v2 = sub_274B13508();
  v3 = __OFADD__(v2, 1);
  result = v2 + 1;
  if (v3)
  {
    goto LABEL_8;
  }

  return sub_274B13554();
}

uint64_t sub_274B14B6C()
{
  result = sub_274B13508();
  if (result)
  {
    v1 = sub_274B13508();
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {

      return sub_274B13554();
    }
  }

  return result;
}

uint64_t sub_274B14BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a2;
  v84 = a3;
  v79 = a4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A758);
  MEMORY[0x28223BE20](v71);
  v74 = (&v69 - v5);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A760);
  MEMORY[0x28223BE20](v72);
  v76 = &v69 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A768);
  MEMORY[0x28223BE20](v75);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v69 - v9;
  MEMORY[0x28223BE20](v10);
  v77 = &v69 - v11;
  v12 = sub_274BF3CC4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A770);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A778);
  v19 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v21 = &v69 - v20;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A780);
  MEMORY[0x28223BE20](v69);
  v81 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v70 = &v69 - v24;
  *v18 = sub_274BF38F4();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v25 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A788) + 44)];
  v82 = a1;
  sub_274B154A8(v25);
  sub_274BF3CB4();
  v26 = sub_274B178D8(&qword_28098A790, &qword_28098A770);
  sub_274BF4354();
  (*(v13 + 8))(v15, v12);
  sub_274B17578(v18, &qword_28098A770);
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v27 = qword_28098C7C0;
  v28 = sub_274BF4F04();
  v29 = sub_274BF4F04();

  v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

  v31 = sub_274BF4F44();
  v33 = v32;

  *&v87 = v31;
  *(&v87 + 1) = v33;
  v85 = v16;
  v86 = v26;
  swift_getOpaqueTypeConformance2();
  sub_274ADDF6C();
  v35 = v80;
  v34 = v81;
  sub_274BF42F4();

  (*(v19 + 8))(v21, v35);
  sub_274BF4FE4();
  v36 = sub_274BF4F04();
  v37 = sub_274BF4F04();

  v38 = [v27 localizedStringForKey:v36 value:v37 table:0];

  sub_274BF4F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_274BFA880;
  v40 = v82;
  result = sub_274B13508();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v42 = MEMORY[0x277D83B88];
    v43 = MEMORY[0x277D83C10];
    *(v39 + 56) = MEMORY[0x277D83B88];
    *(v39 + 64) = v43;
    *(v39 + 32) = result + 1;
    v44 = v83;
    v45 = sub_274BF5194();
    *(v39 + 96) = v42;
    *(v39 + 104) = v43;
    *(v39 + 72) = v45;
    v46 = sub_274BF4F14();
    v48 = v47;

    *&v87 = v46;
    *(&v87 + 1) = v48;
    v49 = v70;
    sub_274BF33B4();

    sub_274B17578(v34, &qword_28098A780);
    v50 = sub_274BF3804();
    v51 = v74;
    *v74 = v50;
    *(v51 + 8) = 0;
    *(v51 + 16) = 1;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A798);
    sub_274B15610(v40, v44, v84, v51 + *(v52 + 44));
    LOBYTE(v46) = sub_274BF3E34();
    sub_274BF2E54();
    v53 = v51 + *(v71 + 36);
    *v53 = v46;
    *(v53 + 8) = v54;
    *(v53 + 16) = v55;
    *(v53 + 24) = v56;
    *(v53 + 32) = v57;
    *(v53 + 40) = 0;
    v87 = *(v40 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A720);
    sub_274BF4784();
    if (v85)
    {
      v58 = 1.0;
    }

    else
    {
      v58 = 0.0;
    }

    v59 = v76;
    sub_274B16ED0(v51, v76, &qword_28098A758);
    *(v59 + *(v72 + 36)) = v58;
    v60 = sub_274BF4AE4();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    v62 = v59;
    v63 = v73;
    sub_274B16ED0(v62, v73, &qword_28098A760);
    v64 = (v63 + *(v75 + 36));
    *v64 = sub_274B16EC8;
    v64[1] = v61;
    v65 = v77;
    sub_274B16ED0(v63, v77, &qword_28098A768);
    sub_274B01968(v49, v34, &qword_28098A780);
    v66 = v78;
    sub_274B01968(v65, v78, &qword_28098A768);
    v67 = v79;
    sub_274B01968(v34, v79, &qword_28098A780);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7A0);
    sub_274B01968(v66, v67 + *(v68 + 48), &qword_28098A768);
    sub_274B17578(v65, &qword_28098A768);
    sub_274B17578(v49, &qword_28098A780);
    sub_274B17578(v66, &qword_28098A768);
    return sub_274B17578(v34, &qword_28098A780);
  }

  return result;
}

uint64_t sub_274B154A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PageIndicator();
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v16 - v7);
  v9 = sub_274BF5194();
  v10 = sub_274B135A4();
  *v8 = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  v13 = v3[8];
  *(v8 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  swift_storeEnumTagMultiPayload();
  *(v8 + v3[9]) = 0x4020000000000000;
  *(v8 + v3[10]) = 0x4010000000000000;
  sub_274B16FD0(v8, v5);
  *a1 = 0;
  *(a1 + 8) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C8);
  sub_274B16FD0(v5, a1 + *(v14 + 48));
  sub_274B17034(v8);
  return sub_274B17034(v5);
}

uint64_t sub_274B15610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7A8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - v21;
  v23 = sub_274B13508();
  v31 = a3;
  if (v23 < 1)
  {
    v24 = 1;
  }

  else
  {
    sub_274B1598C(a1, a2, a3);
    sub_274BF47C4();
    (*(v8 + 32))(v22, v10, v7);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v24, 1, v7);
  v25 = sub_274B13508();
  result = sub_274BF5194();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = 1;
    if (v25 < result - 1)
    {
      sub_274B15B00(a1, a2, v31);
      sub_274BF47C4();
      (*(v8 + 32))(v19, v10, v7);
      v27 = 0;
    }

    __swift_storeEnumTagSinglePayload(v19, v27, 1, v7);
    sub_274B01968(v22, v16, &qword_28098A7B0);
    sub_274B01968(v19, v13, &qword_28098A7B0);
    v28 = v32;
    sub_274B01968(v16, v32, &qword_28098A7B0);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7B8);
    v30 = v28 + *(v29 + 48);
    *v30 = 0;
    *(v30 + 8) = 1;
    sub_274B01968(v13, v28 + *(v29 + 64), &qword_28098A7B0);
    sub_274B17578(v19, &qword_28098A7B0);
    sub_274B17578(v22, &qword_28098A7B0);
    sub_274B17578(v13, &qword_28098A7B0);
    return sub_274B17578(v16, &qword_28098A7B0);
  }

  return result;
}

uint64_t (*sub_274B1598C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *a1;
  v13 = a1[1];
  v14 = v6;
  v12 = *(a1 + 2);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(a1 + 1);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a1 + 2);
  v9 = sub_274BF51A4();
  (*(*(v9 - 8) + 16))(v11, &v14, v9);
  sub_274B15E84(&v13, v11);

  sub_274B01968(&v12, v11, &qword_28098A720);
  return sub_274B16F20;
}

uint64_t sub_274B15AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF46D4();
  *a1 = result;
  return result;
}

uint64_t (*sub_274B15B00(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *a1;
  v13 = a1[1];
  v14 = v6;
  v12 = *(a1 + 2);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(a1 + 1);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a1 + 2);
  v9 = sub_274BF51A4();
  (*(*(v9 - 8) + 16))(v11, &v14, v9);
  sub_274B15E84(&v13, v11);

  sub_274B01968(&v12, v11, &qword_28098A720);
  return sub_274B16F78;
}

uint64_t sub_274B15C34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF46D4();
  *a1 = result;
  return result;
}

uint64_t sub_274B15C7C(uint64_t a1)
{
  v2 = sub_274BF3DC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CDE498])
  {
    type metadata accessor for PageView();
    return sub_274B14AEC();
  }

  else if (v7 == *MEMORY[0x277CDE490])
  {
    type metadata accessor for PageView();
    return sub_274B14B6C();
  }

  else
  {
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_274B15EE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7F0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7F8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A800);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PageIndicator();
  v11 = *(v0 + *(v10 + 32));
  if ((v11 + v11 + *(v0 + *(v10 + 28))) * *v0 >= 100.0)
  {
    sub_274B161C4(v3);
    sub_274B01968(v3, v6, &qword_28098A7F0);
    swift_storeEnumTagMultiPayload();
    sub_274B17220();
    sub_274B17474(&qword_28098A820, &qword_28098A7F0, &unk_274BFC808, sub_274B172D8);
    sub_274BF3A64();
    return sub_274B17578(v3, &qword_28098A7F0);
  }

  else
  {
    *v9 = sub_274BF3804();
    *(v9 + 1) = 0;
    v9[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A878);
    sub_274B1658C(v0);
    *&v9[*(v7 + 36)] = 0x3FE3333333333333;
    sub_274B01968(v9, v6, &qword_28098A800);
    swift_storeEnumTagMultiPayload();
    sub_274B17220();
    sub_274B17474(&qword_28098A820, &qword_28098A7F0, &unk_274BFC808, sub_274B172D8);
    sub_274BF3A64();
    return sub_274B17578(v9, &qword_28098A800);
  }
}

void *sub_274B161C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v4 = qword_28098C7C0;
  v5 = sub_274BF4F04();
  v6 = sub_274BF4F04();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  sub_274BF4F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_274BFA880;
  v9 = v2[3];
  v71 = *(v2 + 1);
  v72 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E0);
  result = MEMORY[0x277C64160](&v70, v10);
  v12 = v70 + 1;
  if (__OFADD__(v70, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D83B88];
    v14 = MEMORY[0x277D83C10];
    *(v8 + 56) = MEMORY[0x277D83B88];
    *(v8 + 64) = v14;
    *(v8 + 32) = v12;
    v15 = *v2;
    *(v8 + 96) = v13;
    *(v8 + 104) = v14;
    *(v8 + 72) = v15;
    v16 = sub_274BF4F14();
    v18 = v17;

    *&v71 = v16;
    *(&v71 + 1) = v18;
    sub_274ADDF6C();
    v19 = sub_274BF4104();
    v68 = v20;
    v69 = v19;
    v22 = v21;
    v24 = v23;
    v25 = sub_274BF3EA4();
    sub_274BF2E54();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    LOBYTE(v16) = v22 & 1;
    LOBYTE(v70) = v22 & 1;
    v73 = 0;
    v34 = sub_274BF3E34();
    sub_274BF2E54();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    LOBYTE(v71) = 0;
    v43 = sub_274BF4654();
    KeyPath = swift_getKeyPath();
    v45 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A830) + 36));
    v46 = *(sub_274BF3484() + 20);
    v47 = *MEMORY[0x277CE0118];
    v48 = sub_274BF38C4();
    (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
    __asm { FMOV            V0.2D, #8.0 }

    *v45 = _Q0;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A8D8);
    sub_274BF4A34();
    *&v45[*(v54 + 56)] = 256;
    v55 = sub_274BF4A94();
    v57 = v56;
    v58 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A870) + 36)];
    *v58 = v55;
    v58[1] = v57;
    *a1 = v69;
    *(a1 + 8) = v68;
    *(a1 + 16) = v16;
    *(a1 + 24) = v24;
    *(a1 + 32) = v25;
    *(a1 + 40) = v27;
    *(a1 + 48) = v29;
    *(a1 + 56) = v31;
    *(a1 + 64) = v33;
    *(a1 + 72) = 0;
    *(a1 + 80) = v34;
    *(a1 + 88) = v36;
    *(a1 + 96) = v38;
    *(a1 + 104) = v40;
    *(a1 + 112) = v42;
    *(a1 + 120) = 0;
    *(a1 + 128) = KeyPath;
    *(a1 + 136) = v43;
    LOBYTE(v16) = sub_274BF3E44();
    sub_274BF2E54();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7F0);
    v67 = a1 + *(result + 9);
    *v67 = v16;
    *(v67 + 8) = v60;
    *(v67 + 16) = v62;
    *(v67 + 24) = v64;
    *(v67 + 32) = v66;
    *(v67 + 40) = 0;
  }

  return result;
}

void sub_274B1658C(uint64_t *a1)
{
  v2 = type metadata accessor for PageIndicator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v10[2] = 0;
    v10[3] = v5;
    swift_getKeyPath();
    sub_274B16FD0(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v7 = swift_allocObject();
    sub_274B175CC(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A880);
    sub_274B08948();
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A888);
    v9 = sub_274B176B0();
    v10[0] = v8;
    v10[1] = v9;
    swift_getOpaqueTypeConformance2();
    sub_274BF4944();
  }
}

uint64_t sub_274B16758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for PageIndicator();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = *a1;
  sub_274BF4A94();
  sub_274BF30D4();
  v7 = v31;
  v8 = v32;
  v9 = v33;
  v23 = v34;
  v24 = v30;
  v22 = v35;
  v10 = *(a2 + 24);
  v36[0] = *(a2 + 8);
  *&v36[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E0);
  MEMORY[0x277C64160](v28, v11);
  v12 = sub_274B169F4(v28[0] == v25);
  KeyPath = swift_getKeyPath();
  LOBYTE(v28[0]) = v7;
  v29 = v9;
  v14 = sub_274BF3E44();
  sub_274BF2E54();
  LOBYTE(v36[0]) = 0;
  v28[0] = v24;
  LOBYTE(v28[1]) = v7;
  v28[2] = v8;
  LOBYTE(v28[3]) = v9;
  v28[4] = v23;
  v28[5] = v22;
  v28[6] = KeyPath;
  v28[7] = v12;
  LOBYTE(v28[8]) = v14;
  v28[9] = v15;
  v28[10] = v16;
  v28[11] = v17;
  v28[12] = v18;
  LOWORD(v28[13]) = 0;
  sub_274B16FD0(a2, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = swift_allocObject();
  sub_274B175CC(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *(v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A888);
  sub_274B176B0();
  sub_274BF4254();

  memcpy(v36, v28, 0x6AuLL);
  return sub_274B17578(v36, &qword_28098A888);
}

uint64_t sub_274B169F4(char a1)
{
  v2 = sub_274BF4584();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = var50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF2F04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = var50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = var50 - v11;
  v13 = type metadata accessor for PageIndicator();
  sub_274ADE30C(v13, v14, v15, v16, v17, v18, v19, v20, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  (*(v7 + 104))(v9, *MEMORY[0x277CDF3C0], v6);
  v21 = sub_274BF2EF4();
  v22 = *(v7 + 8);
  v22(v9, v6);
  v22(v12, v6);
  if (v21 & 1) != 0 && (a1)
  {
    return sub_274BF4604();
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
  return sub_274BF4664();
}

unint64_t sub_274B16CB8()
{
  result = qword_28098A740;
  if (!qword_28098A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A6F0);
    sub_274B178D8(&qword_28098A738, &qword_28098A6F0);
    swift_getOpaqueTypeConformance2();
    sub_274B16DE4(&qword_2815A2F70, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A740);
  }

  return result;
}

uint64_t sub_274B16DE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274B16E38()
{
  result = qword_28098A750;
  if (!qword_28098A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A750);
  }

  return result;
}

uint64_t sub_274B16E8C()
{
  result = sub_274BF2FC4();
  if ((result & 1) == 0)
  {

    return sub_274BF2FD4();
  }

  return result;
}

uint64_t sub_274B16ED0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8(a1, a2, a3);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t objectdestroyTm_2()
{

  OUTLINED_FUNCTION_15_0();

  return swift_deallocObject();
}

uint64_t type metadata accessor for PageIndicator()
{
  result = qword_28098A7D8;
  if (!qword_28098A7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274B16FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageIndicator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B17034(uint64_t a1)
{
  v2 = type metadata accessor for PageIndicator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_274B170B8()
{
  sub_274B1715C();
  if (v0 <= 0x3F)
  {
    sub_274B171AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_274B1715C()
{
  if (!qword_28098A7E8)
  {
    v0 = sub_274BF4914();
    if (!v1)
    {
      atomic_store(v0, &qword_28098A7E8);
    }
  }
}

void sub_274B171AC()
{
  if (!qword_2815A3118)
  {
    sub_274BF2F04();
    v0 = sub_274BF2F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2815A3118);
    }
  }
}

unint64_t sub_274B17220()
{
  result = qword_28098A808;
  if (!qword_28098A808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A800);
    sub_274B178D8(&qword_28098A810, &unk_28098A818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A808);
  }

  return result;
}

unint64_t sub_274B172D8()
{
  result = qword_28098A828;
  if (!qword_28098A828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A830);
    sub_274B17390();
    sub_274B178D8(&qword_28098A868, &qword_28098A870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A828);
  }

  return result;
}

unint64_t sub_274B17390()
{
  result = qword_28098A838;
  if (!qword_28098A838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A840);
    sub_274B17474(&qword_28098A848, &unk_28098A850, &unk_274BFC838, sub_274B174F4);
    sub_274B178D8(&qword_2815A2F88, &qword_280989AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A838);
  }

  return result;
}

uint64_t sub_274B17474(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_19_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274B174F4()
{
  result = qword_28098A858;
  if (!qword_28098A858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A858);
  }

  return result;
}

uint64_t sub_274B17578(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_274B175CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageIndicator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B17630@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PageIndicator() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_274B16758(a1, v6, a2);
}

unint64_t sub_274B176B0()
{
  result = qword_28098A890;
  if (!qword_28098A890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A888);
    sub_274B17474(&qword_28098A898, &unk_28098A8A0, &unk_274BFC880, sub_274B17794);
    sub_274B178D8(&qword_28098A8C8, &unk_28098A8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A890);
  }

  return result;
}

unint64_t sub_274B17794()
{
  result = qword_28098A8A8;
  if (!qword_28098A8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A8B0);
    sub_274B1784C();
    sub_274B178D8(&qword_2815A2F88, &qword_280989AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A8A8);
  }

  return result;
}

unint64_t sub_274B1784C()
{
  result = qword_28098A8B8;
  if (!qword_28098A8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A8C0);
    sub_274AD938C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A8B8);
  }

  return result;
}

uint64_t sub_274B178D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_19_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274B1791C()
{
  type metadata accessor for PageIndicator();

  return sub_274B16C4C();
}

unint64_t sub_274B179A8()
{
  result = qword_28098A8E0;
  if (!qword_28098A8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A8E8);
    sub_274B17220();
    sub_274B17474(&qword_28098A820, &qword_28098A7F0, &unk_274BFC808, sub_274B172D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A8E0);
  }

  return result;
}

id static PathFormatter.displayString(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = [objc_opt_self() sharedContext];
  v4 = [v3 shouldReverseLayoutDirection];

  v5 = v4 ? 0xEC0000007466656CLL : 0xED00007468676972;
  sub_274AD8430(0, &unk_28098B350);
  v6 = sub_274B17C90(0x2E6E6F7276656863, v5, 0, 2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  v19 = v7;
  v9 = [v7 platformImage];
  [v8 setImage_];

  v10 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  sub_274AD8430(0, qword_28098A8F0);
  v11 = 0;
  v12 = (a1 + 40);
  while (v1 != v11)
  {
    v13 = *v12;

    v14 = sub_274B17D10();
    OUTLINED_FUNCTION_0_9(v14);

    if (v11 < v1 - 1)
    {
      v15 = sub_274B17D10();
      OUTLINED_FUNCTION_0_9(v15);

      v16 = [objc_opt_self() attributedStringWithAttachment_];
      OUTLINED_FUNCTION_0_9(v16);

      v17 = sub_274B17D10();
      OUTLINED_FUNCTION_0_9(v17);
    }

    v12 += 2;
    ++v11;
  }

  return v10;
}

id sub_274B17C90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_274BF4F04();

  v7 = [swift_getObjCClassFromMetadata() systemImageNamed:v6 configuration:a3 renderingMode:a4];

  return v7;
}

id sub_274B17D10()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_274BF4F04();

  v2 = [v0 initWithString_];

  return v2;
}

unint64_t sub_274B17D84(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentItemPreview(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for PathFormatter(_BYTE *result, int a2, int a3)
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

unint64_t sub_274B17EA4(unint64_t result, char a2, uint64_t a3)
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

uint64_t LoadingState.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v4 + 8))(v7, a1);
    v8 = *(a1 + 16);
    v9 = a2;
    v10 = 1;
  }

  else
  {
    v11 = *(a1 + 16);
    (*(*(v11 - 8) + 32))(a2, v7, v11);
    v9 = a2;
    v10 = 0;
    v8 = v11;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
}

unint64_t sub_274B18018()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_274B183D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_274B18090(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_24;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_274B181DC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 <= 3)
  {
    v6 = (1u >> (8 * v5)) ^ 0xFD;
  }

  else
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (v6 >= a3)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((~(-1 << v8) + a3 - v6) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v6 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v5] = -a2;
        }

        break;
    }
  }

  else
  {
    v10 = ~v6 + a2;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v7);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_274B183D8()
{
  result = qword_28098A978;
  if (!qword_28098A978)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28098A978);
  }

  return result;
}

uint64_t AnyAutocompleteResult.variable.getter()
{
  OUTLINED_FUNCTION_5_4();
  v0 = OUTLINED_FUNCTION_3_12();
  return v1(v0);
}

uint64_t AnyAutocompleteResult.displayName.getter()
{
  OUTLINED_FUNCTION_5_4();
  v0 = OUTLINED_FUNCTION_3_12();
  return v1(v0);
}

uint64_t AnyAutocompleteResult.displayIcon.getter()
{
  OUTLINED_FUNCTION_5_4();
  v0 = OUTLINED_FUNCTION_3_12();
  return v1(v0);
}

uint64_t sub_274B184E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = type metadata accessor for AnyAutocompleteResult.AutocompleteResultStorage();
  a3[4] = &off_2883C89C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnyAutocompleteResult.wrappedResult<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for AnyAutocompleteResult.AutocompleteResultStorage();
  v7 = sub_274BF5724();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-v9 - 8];
  sub_274B1875C(v3, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A980);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
    (*(*(a1 - 8) + 16))(a2, v10, a1);
    (*(*(v6 - 8) + 8))(v10, v6);
    v11 = a2;
    v12 = 0;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v6);
    (*(v8 + 8))(v10, v7);
    v11 = a2;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, a1);
}

uint64_t sub_274B1875C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t AnyAutocompleteResult.hash(into:)()
{
  OUTLINED_FUNCTION_6_6(v0);
  v1 = OUTLINED_FUNCTION_4_7();
  v2(v1);
  sub_274BF5904();
  return sub_274B04AB0(v4);
}

uint64_t static AnyAutocompleteResult.== infix(_:_:)(void *a1, void *a2)
{
  OUTLINED_FUNCTION_6_6(a1);
  v3 = OUTLINED_FUNCTION_4_7();
  v4(v3);
  OUTLINED_FUNCTION_6_6(a2);
  v5 = OUTLINED_FUNCTION_4_7();
  v6(v5);
  LOBYTE(a2) = MEMORY[0x277C65180](v9, v8);
  sub_274B04AB0(v8);
  sub_274B04AB0(v9);
  return a2 & 1;
}

uint64_t AnyAutocompleteResult.hashValue.getter()
{
  sub_274BF5CD4();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_3_12();
  v2(v1);
  sub_274BF5904();
  sub_274B04AB0(&v4);
  return sub_274BF5D44();
}

uint64_t sub_274B18980()
{
  sub_274BF5CD4();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v4, v1, v2);
  sub_274BF5904();
  sub_274B04AB0(v4);
  return sub_274BF5D44();
}

unint64_t sub_274B18A04(uint64_t a1)
{
  result = sub_274B01688();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_274B18A30()
{
  result = qword_28098A988[0];
  if (!qword_28098A988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28098A988);
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

uint64_t sub_274B18AA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_274B18AE8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_274B18B48()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_274B18BB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_274B18CF4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void Alert.init(error:)(void **a1@<X0>, uint64_t a2@<X8>)
{
  v27[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v27 - v4;
  v6 = *a1;
  v7 = sub_274B19550(*a1);
  v27[3] = v8;
  v27[4] = v7;
  v27[1] = v10;
  v27[2] = v9;
  v11 = [v6 localizedDescription];
  v12 = sub_274BF4F44();
  v14 = v13;

  v28 = v12;
  v29 = v14;
  sub_274ADDF6C();
  v27[0] = sub_274BF4104();
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v15 = qword_28098C7C0;
  v16 = sub_274BF4F04();
  v17 = sub_274BF4F04();

  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = sub_274BF4F44();
  v21 = v20;

  v28 = v19;
  v29 = v21;
  v22 = sub_274BF4104();
  v24 = v23;
  LOBYTE(v19) = v25;
  OUTLINED_FUNCTION_0_11();
  sub_274AFA1D0(v22, v24, v19 & 1);

  v26 = sub_274BF4554();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v26);
  sub_274BF4504();
}

uint64_t Alert.init(localizedError:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39[7] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v39 - v4;
  v6 = a1[3];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  v12 = sub_274BF5BF4();
  if (v12)
  {
    v13 = v12;
    (*(v8 + 8))(v11, v6);
  }

  else
  {
    v13 = swift_allocError();
    (*(v8 + 32))(v14, v11, v6);
  }

  v15 = sub_274BF1E64();

  v16 = sub_274B19550(v15);
  v39[5] = v17;
  v39[6] = v16;
  v39[3] = v19;
  v39[4] = v18;
  v20 = [v15 localizedDescription];
  v21 = sub_274BF4F44();
  v23 = v22;

  v40 = v21;
  v41 = v23;
  sub_274ADDF6C();
  v24 = sub_274BF4104();
  v39[1] = v25;
  v39[2] = v24;
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v26 = qword_28098C7C0;
  v27 = sub_274BF4F04();
  v28 = sub_274BF4F04();

  v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

  v30 = sub_274BF4F44();
  v32 = v31;

  v40 = v30;
  v41 = v32;
  v33 = sub_274BF4104();
  v35 = v34;
  LOBYTE(v30) = v36;
  OUTLINED_FUNCTION_0_11();
  sub_274AFA1D0(v33, v35, v30 & 1);

  v37 = sub_274BF4554();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v37);
  sub_274BF4504();

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_274B19550(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BFA880;
  *(inited + 32) = sub_274B06430(a1, &selRef_localizedFailureReason);
  *(inited + 40) = v3;
  v4 = 0;
  *(inited + 48) = sub_274B06430(a1, &selRef_localizedRecoverySuggestion);
  *(inited + 56) = v5;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (inited + 40 + 16 * v4);
  while (++v4 != 3)
  {
    v8 = v7 + 2;
    v9 = *v7;
    v7 += 2;
    if (v9)
    {
      v10 = *(v8 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBAD94();
        v6 = v13;
      }

      v11 = *(v6 + 16);
      if (v11 >= *(v6 + 24) >> 1)
      {
        sub_274BBAD94();
        v6 = v14;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 16 * v11;
      *(v12 + 32) = v10;
      *(v12 + 40) = v9;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_274BCB96C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  sub_274B1023C();
  v15 = sub_274BF4EB4();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    sub_274ADDF6C();
    return sub_274BF4104();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_274B19744@<X0>(uint64_t *a1@<X8>)
{
  result = AlertError.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274B19778(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_274B197B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B19804(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_274BF5874();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_274B19828@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18 = a1[1];
  v19 = *a1;
  v17 = a1[2];
  v16 = *(a1 + 24);
  type metadata accessor for ContentCollectionPreviewViewOptions();
  OUTLINED_FUNCTION_5_5();
  sub_274B221BC(v5, v6);
  v15 = sub_274BF34D4();
  v8 = v7;
  v9 = sub_274B81D64(32.0, 32.0);
  v10 = sub_274B22B94(v9);

  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (v10 == v12)
    {
      goto LABEL_10;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x277C65230](v12, v9);
    }

    else
    {
      if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v13, 1))
    {
      break;
    }

    v14 = sub_274B81410();

    v12 = v13 + 1;
    if (v14 != 1)
    {
      sub_274AFA308(v14);
LABEL_10:

      *a4 = v9;
      *(a4 + 8) = v10 != v13;
      *(a4 + 16) = v19;
      *(a4 + 24) = v18;
      *(a4 + 32) = v17;
      *(a4 + 40) = v16;
      *(a4 + 48) = v15;
      *(a4 + 56) = v8;
      *(a4 + 64) = xmmword_274BFCB20;
      *(a4 + 80) = a2;
      *(a4 + 88) = a3;
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_274B199D4()
{
  v1 = sub_274BF32B4();
  OUTLINED_FUNCTION_0_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(__dst, v0, sizeof(__dst));
  sub_274B19C18(__dst, v13);
  sub_274BF4A94();
  sub_274BF34A4();
  *v11 = v13[0];
  *&v11[16] = v13[1];
  *&v11[32] = v13[2];
  *&v11[48] = v14;
  memcpy(v9, v11, sizeof(v9));
  sub_274BF32A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA90);
  sub_274B214A8();
  sub_274BF44E4();
  (*(v3 + 8))(v6, v1);
  memcpy(v10, v9, sizeof(v10));
  return sub_274AFA708(v10, &qword_28098AA90);
}

double sub_274B19C18@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *v27 = a1[1];
  *&v27[9] = *(a1 + 25);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB00);
  MEMORY[0x277C64160](&v31, v4);
  v5 = v31;
  if (!v32)
  {
    v12 = *a1;
    v13 = swift_allocObject();
    memcpy((v13 + 16), a1, 0x60uLL);
    sub_274BF51E4();
    sub_274B21770(a1, v27);

    sub_274B217DC(v5, 0);
    v14 = sub_274BF51D4();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v5;
    sub_274B21770(a1, v27);
    v17 = sub_274BF51D4();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v16;
    memcpy(v18 + 4, a1, 0x60uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48);
    sub_274BF48F4();
    *&v24 = v12;
    *(&v24 + 1) = sub_274B217C0;
    *v25 = v13;
    *&v25[8] = *v27;
    *&v25[24] = *&v27[16];
    LOBYTE(v26) = 1;
    v23 = *&v27[16];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAE8);
    sub_274AFA930(&qword_28098AAD0, &qword_28098AAD8);
    sub_274AFA930(&qword_28098AAE0, &qword_28098AAE8);
    sub_274BF3A64();
    v30 = v29;
    v29 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAF8);
    sub_274B21670();
    sub_274AFA930(&qword_28098AAF0, &qword_28098AAF8);
    sub_274BF3A64();
    sub_274B21754(v5, 0);

LABEL_6:

    *v27 = v24;
    *&v27[16] = *v25;
    v28 = *&v25[16];
    v29 = v26;
    goto LABEL_7;
  }

  if (v32 != 1)
  {
    v19 = *a1;
    v20 = swift_allocObject();
    memcpy((v20 + 16), a1, 0x60uLL);
    *&v24 = v19;
    *(&v24 + 1) = sub_274B22B98;
    *v25 = v20;
    *&v25[16] = 0uLL;
    LOBYTE(v26) = 0;
    swift_bridgeObjectRetain_n();
    sub_274B21770(a1, v27);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAE8);
    sub_274AFA930(&qword_28098AAD0, &qword_28098AAD8);
    sub_274AFA930(&qword_28098AAE0, &qword_28098AAE8);
    sub_274BF3A64();
    v30 = v29;
    v29 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAF8);
    sub_274B21670();
    sub_274AFA930(&qword_28098AAF0, &qword_28098AAF8);
    sub_274BF3A64();

    goto LABEL_6;
  }

  v6 = swift_allocObject();
  memcpy((v6 + 16), a1, 0x60uLL);
  sub_274BF51E4();
  sub_274B21770(a1, v27);

  v7 = sub_274BF51D4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  sub_274B21770(a1, v27);
  v10 = sub_274BF51D4();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  memcpy(v11 + 4, a1, 0x60uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB08);
  sub_274BF48F4();
  v30 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAF8);
  sub_274B21670();
  sub_274AFA930(&qword_28098AAF0, &qword_28098AAF8);
  sub_274BF3A64();
LABEL_7:
  v21 = *&v27[16];
  *a2 = *v27;
  *(a2 + 16) = v21;
  result = *&v28;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  return result;
}

uint64_t sub_274B1A374@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  type metadata accessor for PreviewableContentCollection.PreviewableListItem();
  sub_274B221BC(&qword_280989C18, type metadata accessor for PreviewableContentCollection.PreviewableListItem);

  v5 = sub_274BF3264();
  v7 = v6;
  type metadata accessor for ContentCollectionPreviewViewOptions();
  OUTLINED_FUNCTION_5_5();
  sub_274B221BC(v8, v9);
  v10 = sub_274BF34D4();
  if (v4)
  {
    v12 = v10;
    v13 = v11;
    v14 = *(a1 + 8);
    v15 = v4;
    result = sub_274BF2CD4();
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = result;
    *(a2 + 48) = v4;
  }

  else
  {
    result = sub_274BF34C4();
    __break(1u);
  }

  return result;
}

void sub_274B1A4AC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v11[0] = *(a4 + 16);
  *(v11 + 9) = *(a4 + 25);
  *v10 = *(a4 + 16);
  *&v10[9] = *(a4 + 25);
  v8[4] = v4;
  v9 = 0;
  v5 = v4;
  sub_274B22670(v11, v8, &qword_28098AB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB00);
  sub_274BF48D4();
  v6 = *&v10[16];
  v7 = v10[24];

  sub_274B21754(v6, v7);
}

void sub_274B1A56C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v10[0] = *(a4 + 16);
  *(v10 + 9) = *(a4 + 25);
  *v9 = *(a4 + 16);
  *&v9[9] = *(a4 + 25);
  v7[4] = v4;
  v8 = 1;

  sub_274B22670(v10, v7, &qword_28098AB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB00);
  sub_274BF48D4();
  v5 = *&v9[16];
  v6 = v9[24];

  sub_274B21754(v5, v6);
}

uint64_t sub_274B1A634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a2;
  v30 = a6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD38);
  sub_274B08760();
  v27 = sub_274AFA930(&qword_28098AD40, &qword_28098AD38);
  v26 = sub_274B221BC(&qword_28098AD48, sub_274B08760);
  v32[4] = v26;
  v10 = sub_274BF4964();
  v31 = a5;
  WitnessTable = swift_getWitnessTable();
  v32[0] = MEMORY[0x277D84A98];
  v32[1] = v10;
  v32[2] = MEMORY[0x277D84AA8];
  v32[3] = WitnessTable;
  v12 = sub_274BF4054();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  v32[0] = a1;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v21 = v29;
  v20[4] = a1;
  v20[5] = v21;
  v20[6] = a3;
  swift_bridgeObjectRetain_n();

  sub_274B1AA50(v32, KeyPath, sub_274B21D44, v20, v28);
  v22 = swift_getWitnessTable();
  sub_274ADB48C(v15, v12, v22);
  v23 = *(v13 + 8);
  v23(v15, v12);
  sub_274ADB48C(v18, v12, v22);
  return (v23)(v18, v12);
}

uint64_t sub_274B1A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v18 - v13;
  v15(*v12);
  sub_274ADB48C(v11, a5, a6);
  v16 = *(v8 + 8);
  v16(v11, a5);
  sub_274ADB48C(v14, a5, a6);
  return (v16)(v14, a5);
}

uint64_t sub_274B1AA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_274BF4964();
  swift_getWitnessTable();
  sub_274BF4034();

  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t sub_274B1AB8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A110);
  sub_274BF48E4();
  return v1;
}

uint64_t sub_274B1ABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = sub_274BF3B44();
  v54 = v4;
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274B08760();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD38);
  v66 = v7;
  v61 = *(a1 + 16);
  v8 = sub_274BF33D4();
  v9 = sub_274AFA930(&qword_28098AD40, &qword_28098AD38);
  v65 = v9;
  v10 = sub_274B221BC(&qword_28098AD48, sub_274B08760);
  *&v80 = v7;
  *(&v80 + 1) = v6;
  v11 = v6;
  v58 = v6;
  v63 = v8;
  *&v81 = v8;
  *(&v81 + 1) = v9;
  v82 = v10;
  v12 = v10;
  v13 = sub_274BF4964();
  v51 = *(a1 + 24);
  v78 = v51;
  v79 = MEMORY[0x277CDF918];
  v68 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v77 = WitnessTable;
  v14 = swift_getWitnessTable();
  *&v80 = v11;
  *(&v80 + 1) = v13;
  *&v81 = v12;
  *(&v81 + 1) = v14;
  v15 = sub_274BF4054();
  v60 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v53 = swift_getWitnessTable();
  *&v80 = v15;
  *(&v80 + 1) = v4;
  *&v81 = v53;
  *(&v81 + 1) = MEMORY[0x277CDE0D0];
  v55 = MEMORY[0x277CDEF88];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v47 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD50);
  v20 = sub_274BF33D4();
  v62 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v49 = &v47 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD58);
  v22 = sub_274BF33D4();
  v64 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v50 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v59 = &v47 - v25;
  v85 = *v2;
  v75[0] = v85;
  KeyPath = swift_getKeyPath();

  *&v80 = sub_274B1AB8C();
  *(&v80 + 1) = v26;
  *&v81 = v27;
  v28 = v2[3];
  v83 = v2[5];
  v84 = v28;
  v29 = swift_allocObject();
  v30 = v51;
  *(v29 + 16) = v61;
  *(v29 + 24) = v30;
  v31 = *(v2 + 1);
  *(v29 + 32) = *v2;
  *(v29 + 48) = v31;
  *(v29 + 64) = *(v2 + 2);
  sub_274B22670(&v85, v76, &qword_28098AD38);

  sub_274B15E84(&v84, v76);

  sub_274B22670(&v83, v76, &qword_28098AA48);
  sub_274B1B6D0(v75, KeyPath, &v80, sub_274B21DC0, v29, v58, v66, v63, v17, v12, v65, v12, WitnessTable);
  v32 = v67;
  sub_274BF3B34();
  v33 = v54;
  v34 = v53;
  v35 = MEMORY[0x277CDE0D0];
  sub_274BF44E4();
  (*(v69 + 8))(v32, v33);
  (*(v60 + 8))(v17, v15);
  LOBYTE(v82) = 0;
  v80 = 0u;
  v81 = 0u;
  v75[0] = v15;
  v75[1] = v33;
  v75[2] = v34;
  v75[3] = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v49;
  v38 = OpaqueTypeMetadata2;
  sub_274BF4264();
  (*(v57 + 8))(v19, v38);
  swift_getKeyPath();
  v75[0] = 0x4040000000000000;
  v39 = sub_274AFA930(&qword_28098AD60, &qword_28098AD50);
  v73 = OpaqueTypeConformance2;
  v74 = v39;
  v40 = swift_getWitnessTable();
  v41 = v50;
  sub_274BF4204();

  (*(v62 + 8))(v37, v20);
  v42 = sub_274AFA930(&qword_28098AD68, &qword_28098AD58);
  v71 = v40;
  v72 = v42;
  v43 = swift_getWitnessTable();
  v44 = v59;
  sub_274ADB48C(v41, v22, v43);
  v45 = *(v64 + 8);
  v45(v41, v22);
  sub_274ADB48C(v44, v22, v43);
  return (v45)(v44, v22);
}

uint64_t sub_274B1B498@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_274BF33D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v23 - v18;
  (*(a2 + 8))(*a1, v17);
  sub_274BF3E34();
  sub_274BF4464();
  (*(v9 + 8))(v11, a3);
  v23[2] = a4;
  v23[3] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  sub_274ADB48C(v15, v12, WitnessTable);
  v21 = *(v13 + 8);
  v21(v15, v12);
  sub_274ADB48C(v19, v12, WitnessTable);
  return (v21)(v19, v12);
}

uint64_t sub_274B1B6D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v28 = a8;
  v27 = a7;
  v30 = a5;
  v29 = a4;
  v31 = a3;
  v32 = a1;
  v33 = a9;
  v26 = a13;
  v24 = a10;
  v25 = *a2;
  sub_274BF5724();
  sub_274BF4914();
  v17 = sub_274BF5724();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  (*(v18 + 16))(&v24 - v20, a3, v17, v19);
  v34 = a6;
  v35 = v27;
  v36 = v28;
  v37 = a10;
  v38 = a11;
  v39 = a12;
  v40 = v26;
  v41 = a1;
  v42 = a2;
  v43 = v29;
  v44 = v30;
  v21 = *(v25 + *MEMORY[0x277D84DE8] + 8);
  v45 = v27;
  v46 = v21;
  v22 = v27;
  v47 = v28;
  v48 = a11;
  v49 = a12;
  sub_274BF4964();
  swift_getWitnessTable();
  sub_274BF4024();

  (*(v18 + 8))(v31, v17);
  return (*(*(v22 - 8) + 8))(v32, v22);
}

uint64_t sub_274B1B978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD70);
  sub_274BF48E4();
  return v1;
}

uint64_t sub_274B1BA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_274B08760();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD38);
  v28 = *(a1 + 16);
  v31 = sub_274AFA930(&qword_28098AD40, &qword_28098AD38);
  v37 = v32;
  v38 = v4;
  v5 = v4;
  v30 = v4;
  v39 = v28;
  WitnessTable = v31;
  v41 = sub_274B221BC(&qword_28098AD48, sub_274B08760);
  v6 = sub_274BF4964();
  v36 = *(a1 + 24);
  v7 = v36;
  v37 = v5;
  v38 = v6;
  v39 = v41;
  WitnessTable = swift_getWitnessTable();
  v8 = sub_274BF4054();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v37 = *v2;
  v35 = v37;
  KeyPath = swift_getKeyPath();

  v14 = sub_274B1B978();
  v25 = v15;
  v26 = v14;
  v24 = v16;
  v17 = *(v2 + 24);
  v42 = *(v2 + 40);
  v43 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = v28;
  *(v18 + 24) = v7;
  v19 = *(v2 + 16);
  *(v18 + 32) = *v2;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(v2 + 32);
  sub_274B22670(&v37, v34, &qword_28098AD38);

  sub_274B15E84(&v43, v34);

  sub_274B22670(&v42, v34, &qword_28098AB08);
  sub_274B1BEB0(&v35, KeyPath, v26, v25, v24, sub_274B21DEC, v18, v30, v32);
  v20 = swift_getWitnessTable();
  sub_274ADB48C(v10, v8, v20);
  v21 = *(v29 + 8);
  v21(v10, v8);
  sub_274ADB48C(v13, v8, v20);
  return (v21)(v13, v8);
}

uint64_t sub_274B1BD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  (*(v13 + 8))(*v10);
  sub_274ADB48C(v9, a3, a4);
  v14 = *(v6 + 8);
  v14(v9, a3);
  sub_274ADB48C(v12, a3, a4);
  return (v14)(v12, a3);
}

uint64_t sub_274B1BEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_274BF4964();
  swift_getWitnessTable();
  sub_274BF4014();

  return (*(*(a9 - 8) + 8))(a1, a9);
}

uint64_t sub_274B1C064()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_274BF2D64();

    if (v5)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    type metadata accessor for ContentCollectionPreviewViewOptions();
    sub_274B221BC(&qword_28098AB10, type metadata accessor for ContentCollectionPreviewViewOptions);
    result = sub_274BF34C4();
    __break(1u);
  }

  return result;
}

void *sub_274B1C150@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274BF3804();
  v9 = 1;
  sub_274B1C228(v1);
  memcpy(__dst, __src, 0x102uLL);
  memcpy(v11, __src, 0x102uLL);
  sub_274B22670(__dst, v6, &qword_28098AEC0);
  sub_274AFA708(v11, &qword_28098AEC0);
  memcpy(&v8[7], __dst, 0x102uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x109uLL);
}

uint64_t sub_274B1C228(uint64_t a1)
{
  if (*(a1 + 32))
  {
    sub_274B1C484(__src);
    v12 = *&__src[16];
    v13 = *__src;
    v2 = *&__src[32] | (__src[34] << 16);
    v3 = __src[35];
    sub_274BF4A94();
    sub_274BF30D4();
    __src[0] = v3;
    v10 = v31;
    v11 = v30;
    v4 = v32;
    v5 = v33;
    v6 = v3 << 24;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v2 = 0;
    v12 = 0u;
    v13 = 0u;
    v6 = 4278190080;
    v10 = 0u;
    v11 = 0u;
  }

  v7 = sub_274BF3904();
  v29[0] = 1;
  sub_274B1CA2C(a1, __src);
  memcpy(__dst, __src, 0x5AuLL);
  memcpy(v27, __src, 0x5AuLL);
  sub_274B22670(__dst, v19, &qword_28098AEC8);
  sub_274AFA708(v27, &qword_28098AEC8);
  memcpy(&v25[7], __dst, 0x5AuLL);
  v8 = v29[0];
  sub_274AF9EE0(__src);
  *v20 = v13;
  *&v20[16] = v12;
  *&v20[56] = v10;
  *&v20[40] = v11;
  *&v20[32] = v6 | v2;
  *&v20[72] = v4;
  *&v20[80] = v5;
  v21 = v20;
  v19[0] = v7;
  v19[1] = 0;
  LOBYTE(v19[2]) = v8;
  memcpy(&v19[2] + 1, v25, 0x61uLL);
  v17 = 0;
  v18 = 1;
  v22 = v19;
  v23 = &v17;
  v14 = *__src;
  v15 = *&__src[16];
  v16 = *&__src[32];
  v24 = &v14;
  sub_274BA0F94();
  sub_274AFA22C(v14, *(&v14 + 1), v15, *(&v15 + 1), v16, SHIBYTE(v16));
  memcpy(__src, v19, sizeof(__src));
  sub_274AFA708(__src, &qword_28098AED0);
  memcpy(v29, v20, sizeof(v29));
  return sub_274AFA708(v29, &qword_28098AED8);
}

double sub_274B1C484@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24[-v3 - 16];
  v5 = sub_274BF46E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v9 = sub_274B81410();
  v10 = v9;
  if (v9 >= 2)
  {
    if (v9 == 2)
    {
      *&v23 = sub_274BF4654();
      *(&v23 + 1) = 256;
      memset(v24, 0, 18);
      v24[18] = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AF00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AE8);
      sub_274B22990();
      sub_274AFA930(&qword_280989AE0, &qword_280989AE8);
      sub_274BF3A64();
      v23 = v26;
      *v24 = v27;
      v24[18] = v29 != 0;
      *&v24[16] = v28;
      v25 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEE8);
      sub_274B228D8();
      sub_274BF3A64();
    }

    else
    {
      if ([v9 tintColor])
      {
        v12 = sub_274BF4594();
      }

      else
      {
        v12 = 0;
      }

      sub_274BF5604();
      (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
      sub_274BF4734();

      (*(v6 + 8))(v8, v5);
      v13 = sub_274BF4724();
      v14 = MEMORY[0x277CE1010];
      if (v12)
      {
        v14 = MEMORY[0x277CE1020];
      }

      (*(*(v13 - 8) + 104))(v4, *v14, v13);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v13);
      v15 = sub_274BF46F4();

      sub_274AFA708(v4, &qword_28098AEE0);
      KeyPath = swift_getKeyPath();
      [v10 sizeInPoints];
      *&v23 = v15;
      *(&v23 + 1) = KeyPath;
      *v24 = v12;
      *&v24[8] = v17 / v18;
      *&v24[16] = 0;
      v24[18] = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AF00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AE8);
      sub_274B22990();
      sub_274AFA930(&qword_280989AE0, &qword_280989AE8);
      sub_274BF3A64();
      v23 = v26;
      *v24 = v27;
      v24[18] = v29 != 0;
      *&v24[16] = v28;
      v25 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEE8);
      sub_274B228D8();
      sub_274BF3A64();
      sub_274AFA308(v10);
    }
  }

  else
  {
    sub_274AFA308(v9);
    *&v23 = sub_274BF45E4();
    *(&v23 + 1) = 256;
    memset(v24, 0, sizeof(v24));
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AE8);
    sub_274B228D8();
    sub_274AFA930(&qword_280989AE0, &qword_280989AE8);
    sub_274BF3A64();
  }

  result = *&v26;
  v20 = v27;
  v21 = v28 | (v29 << 16);
  v22 = v30;
  *a1 = v26;
  *(a1 + 16) = v20;
  *(a1 + 32) = v21;
  *(a1 + 34) = BYTE2(v21);
  *(a1 + 35) = v22;
  return result;
}

uint64_t sub_274B1CA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(*(a1 + 8) + 16) richListTitle];
  v4 = sub_274BF4F44();
  v6 = v5;

  v25 = v4;
  v26 = v6;
  sub_274ADDF6C();
  v22 = sub_274BF4104();
  v23 = v7;
  v24 = v8;
  v10 = v9;
  v21 = sub_274B1C064();
  v12 = v11;
  KeyPath = swift_getKeyPath();
  sub_274AF9BC8(&v25);
  v14 = v25;
  v15 = v26;
  v17 = v27;
  v16 = v28;
  LOBYTE(v6) = v30;
  v18 = v29;
  v10 &= 1u;
  LOBYTE(v25) = v10;
  v19 = v30;
  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v10;
  *(a2 + 24) = v23;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v21;
  *(a2 + 48) = v12 & 1;
  *(a2 + 56) = v14;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  *(a2 + 80) = v16;
  *(a2 + 88) = v18;
  *(a2 + 89) = v19;
  sub_274AF396C(v22, v24, v10);

  sub_274AFA1E0(v14, v15, v17, v16, v18, v6);
  sub_274AFA22C(v14, v15, v17, v16, v18, v6);
  sub_274AFA1D0(v22, v24, v10);
}

uint64_t __ContentCollectionListView.init(contentItems:contentItemDataSources:previewableContentCollection:context:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  return result;
}

uint64_t __ContentCollectionListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA18);
  OUTLINED_FUNCTION_0_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA20);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = *(v1 + 16);
  v30[0] = *v1;
  v30[1] = v13;
  v31 = *(v1 + 32);
  v14 = sub_274B81D64(56.0, 56.0);
  v15 = *&v30[0];
  v16 = sub_274B19804(*&v30[0]);
  v27[4] = a1;
  if (v16 == 1)
  {
    v29 = *(v1 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A228);
    sub_274BF4784();
    v17 = v28;
    sub_274B17EC8(0, (v28 & 0xC000000000000001) == 0);
    v27[3] = v3;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x277C65230](0, v17);
    }

    else
    {
      v18 = *(v17 + 32);
    }

    v19 = v31;
    sub_274B17EC8(0, (v15 & 0xC000000000000001) == 0);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x277C65230](0, v15);
    }

    else
    {
      v20 = *(v15 + 32);
    }

    v21 = v20;
    sub_274B17EC8(0, (v14 & 0xC000000000000001) == 0);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v22 = MEMORY[0x277C65230](0, v14);
    }

    else
    {
      v22 = *(v14 + 32);
    }

    v28 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48);
    sub_274BF4774();
    v23 = v29;
    *v12 = v21;
    v12[8] = 0;
    v12[9] = v19;
    *(v12 + 2) = v18;
    *(v12 + 3) = v22;
    *(v12 + 2) = v23;
    swift_storeEnumTagMultiPayload();
    sub_274B207B8();
    OUTLINED_FUNCTION_3_9(&qword_28098AA40, &qword_28098AA18);
    v24 = v21;

    v25 = v23;

    sub_274BF3A64();
  }

  else
  {
    v27[2] = v27;
    MEMORY[0x28223BE20](v16);
    v27[-2] = v30;
    v27[-1] = v14;
    sub_274BF3E24();
    v27[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA28);
    sub_274AFA930(&qword_28098AA30, &qword_28098AA28);
    sub_274BF2EC4();

    (*(v5 + 16))(v12, v8, v3);
    swift_storeEnumTagMultiPayload();
    sub_274B207B8();
    OUTLINED_FUNCTION_3_9(&qword_28098AA40, &qword_28098AA18);
    sub_274BF3A64();
    return (*(v5 + 8))(v8, v3);
  }
}

uint64_t sub_274B1D09C()
{
  v0 = sub_274BF3B54();
  MEMORY[0x28223BE20](v0);
  sub_274BF38F4();
  sub_274B221BC(&qword_2815A2FC8, MEMORY[0x277CE0428]);
  sub_274BF5DB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB18);
  sub_274AFA930(&qword_28098AB20, &qword_28098AB18);
  return sub_274BF2EB4();
}

uint64_t sub_274B1D204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A248);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v91 - v7;
  v105 = sub_274BF1A24();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v97 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v91 - v10;
  v98 = type metadata accessor for LLMAttributionView();
  MEMORY[0x28223BE20](v98);
  v103 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB28);
  MEMORY[0x28223BE20](v100);
  v102 = &v91 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB30);
  MEMORY[0x28223BE20](v101);
  v108 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v91 - v15;
  MEMORY[0x28223BE20](v16);
  v107 = &v91 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB38);
  MEMORY[0x28223BE20](v18);
  v106 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v91 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB40);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v114 = &v91 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB48);
  v112 = *(v28 - 8);
  v113 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v91 - v32;
  v34 = *a1;
  v35 = sub_274B22B94(*a1);
  if (v35 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v43 = MEMORY[0x277C65230](0, v34);
  }

  else
  {
    v36 = v35;
    v109 = v30;
    v110 = v25;
    v111 = a3;
    v116 = 0;
    v117 = v35;
    swift_getKeyPath();
    v37 = swift_allocObject();
    v38 = *(a1 + 16);
    *(v37 + 16) = *a1;
    *(v37 + 32) = v38;
    *(v37 + 48) = *(a1 + 32);
    *(v37 + 56) = a2;
    sub_274B218F4(a1, __src);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB50);
    sub_274B08948();
    sub_274B2192C();
    v115 = v33;
    sub_274BF4944();
    v39 = 0;
    v40 = v34 & 0xC000000000000001;
    while (v36 != v39)
    {
      if (v40)
      {
        v41 = MEMORY[0x277C65230](v39, v34);
      }

      else
      {
        if (v39 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v41 = *(v34 + 8 * v39 + 32);
      }

      v42 = v41;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        v45 = v115;
        goto LABEL_18;
      }

      ++v39;
    }

    if (!v36)
    {
      v48 = 1;
      v45 = v115;
      goto LABEL_20;
    }

    sub_274B17EC8(0, v40 == 0);
    if (v40)
    {
      goto LABEL_24;
    }

    v43 = *(v34 + 32);
  }

  v42 = v43;
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  v45 = v115;
  if (v44)
  {
    v46 = [v44 response];

    v47 = [v46 responseDataModel];
    v48 = 1;
    if (v47)
    {
      v94 = v22;
      sub_274BF4934();
      v49 = sub_274BF3E74();
      sub_274BF2E54();
      v50 = &v22[*(v18 + 36)];
      *v50 = v49;
      *(v50 + 1) = v51;
      *(v50 + 2) = v52;
      *(v50 + 3) = v53;
      *(v50 + 4) = v54;
      v50[40] = 0;
      v55 = v95;
      sub_274BF1A74();
      v92 = sub_274BF1A64();
      v56 = [objc_allocWithZone(sub_274BF1A54()) init];
      v57 = v104;
      v91 = *(v104 + 16);
      v58 = v103;
      v93 = v47;
      v59 = v105;
      v91(v103, v55, v105);
      v60 = v98;
      *(v58 + *(v98 + 20)) = v56;
      v61 = sub_274BF25F4();
      __swift_storeEnumTagSinglePayload(v96, 1, 1, v61);
      v62 = objc_allocWithZone(sub_274BF4D84());
      v63 = sub_274BF4D74();
      v64 = (v58 + *(v60 + 28));
      v116 = v63;
      v65 = v63;
      sub_274BF4774();
      v66 = __src[1];
      *v64 = __src[0];
      v64[1] = v66;
      v67 = v97;
      v91(v97, v55, v59);
      v68 = objc_allocWithZone(type metadata accessor for WFAskLLMFeedbackPresenter());
      v69 = WFAskLLMFeedbackPresenter.init(model:conversation:controller:wasBlockedBySafety:viewControllerForPresentation:)(v67, v92, v65, 0, 0);
      (*(v57 + 8))(v55, v59);
      *(v58 + *(v60 + 24)) = v69;
      sub_274BF4AA4();
      sub_274BF34A4();
      v70 = v102;
      sub_274B226D4(v58, v102, type metadata accessor for LLMAttributionView);
      memcpy((v70 + *(v100 + 36)), __src, 0x70uLL);
      LOBYTE(v69) = sub_274BF3E44();
      v71 = v70;
      v72 = v99;
      sub_274B21EA8(v71, v99, &qword_28098AB28);
      v73 = v72 + *(v101 + 36);
      *v73 = v69;
      *(v73 + 8) = xmmword_274BFCB30;
      *(v73 + 24) = xmmword_274BFCB30;
      *(v73 + 40) = 0;
      v74 = v107;
      sub_274B21EA8(v72, v107, &qword_28098AB30);
      v75 = v94;
      v76 = v106;
      sub_274B22670(v94, v106, &qword_28098AB38);
      v77 = v108;
      sub_274B22670(v74, v108, &qword_28098AB30);
      v78 = v114;
      sub_274B22670(v76, v114, &qword_28098AB38);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB80);
      sub_274B22670(v77, v78 + *(v79 + 48), &qword_28098AB30);

      sub_274AFA708(v74, &qword_28098AB30);
      sub_274AFA708(v75, &qword_28098AB38);
      sub_274AFA708(v77, &qword_28098AB30);
      v45 = v115;
      sub_274AFA708(v76, &qword_28098AB38);
      v48 = 0;
    }
  }

  else
  {
LABEL_18:

    v48 = 1;
  }

LABEL_20:
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB70);
  v81 = v114;
  __swift_storeEnumTagSinglePayload(v114, v48, 1, v80);
  v82 = v112;
  v83 = v113;
  v84 = *(v112 + 16);
  v85 = v109;
  v84(v109, v45, v113);
  v86 = v110;
  sub_274B22670(v81, v110, &qword_28098AB40);
  v87 = v111;
  v84(v111, v85, v83);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB78);
  sub_274B22670(v86, &v87[*(v88 + 48)], &qword_28098AB40);
  sub_274AFA708(v81, &qword_28098AB40);
  v89 = *(v82 + 8);
  v89(v115, v83);
  sub_274AFA708(v86, &qword_28098AB40);
  return (v89)(v85, v83);
}

uint64_t sub_274B1DD4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a2 & 0xC000000000000001;
  sub_274B17EC8(*a1, v9 == 0);
  if (v9)
  {
    v10 = MEMORY[0x277C65230](v7, v8);
  }

  else
  {
    v10 = *(v8 + 8 * v7 + 32);
  }

  v11 = v10;
  v12 = sub_274B19804(v8);
  v28 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A228);
  sub_274BF4784();
  sub_274B17EC8(v7, (v27 & 0xC000000000000001) == 0);
  if ((v27 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x277C65230](v7);
  }

  else
  {
    v13 = *(v27 + 8 * v7 + 32);
  }

  v26 = *(a2 + 32);
  sub_274B17EC8(v7, (a3 & 0xC000000000000001) == 0);
  if ((a3 & 0xC000000000000001) != 0)
  {
    v24 = v11;

    v14 = MEMORY[0x277C65230](v7, a3);
  }

  else
  {
    v14 = *(a3 + 8 * v7 + 32);
    v15 = v11;
  }

  v25 = v12 != 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48);
  sub_274BF4774();
  v16 = sub_274BF38F4();
  v17 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB50) + 36);
  *v17 = v16;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB88);
  sub_274B1DF94(v7, a2, v17 + *(v18 + 44));
  v19 = sub_274BF4A94();
  v21 = v20;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB68);
  v23 = (v17 + *(result + 36));
  *v23 = v19;
  v23[1] = v21;
  *a4 = v11;
  *(a4 + 8) = v25;
  *(a4 + 9) = v26;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v28;
  return result;
}

uint64_t sub_274B1DF94@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB38);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  result = sub_274B19804(*a2);
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = 1;
    if (result - 1 != a1)
    {
      sub_274BF4934();
      v17 = sub_274BF3E74();
      sub_274BF2E54();
      v18 = &v8[*(v6 + 36)];
      *v18 = v17;
      *(v18 + 1) = v19;
      *(v18 + 2) = v20;
      *(v18 + 3) = v21;
      *(v18 + 4) = v22;
      v18[40] = 0;
      sub_274B21EA8(v8, v14, &qword_28098AB38);
      v16 = 0;
    }

    __swift_storeEnumTagSinglePayload(v14, v16, 1, v6);
    sub_274B22670(v14, v11, &qword_28098AB90);
    *a3 = 0;
    *(a3 + 8) = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098AB98);
    sub_274B22670(v11, a3 + *(v23 + 48), &qword_28098AB90);
    sub_274AFA708(v14, &qword_28098AB90);
    return sub_274AFA708(v11, &qword_28098AB90);
  }

  return result;
}

uint64_t sub_274B1E19C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v34 = *v1;
  v35 = v3;
  v36 = v4;
  v37 = *(v1 + 8);
  v31 = *(v1 + 8);
  v5 = v34;
  v6 = *(&v3 + 1);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA60) + 40);
  sub_274B21390(&v37, &v38);
  WFContentItem.previewView(configuration:previewableThumbnailItem:previewableListItem:forceUseDefaultPreview:)(&v31, v6, 0, v7);

  v8 = sub_274BF4A94();
  v10 = v9;
  if (BYTE1(v37))
  {
    *&v38 = sub_274BF45E4();
    BYTE8(v38) = 1;
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x277D75348]);
    sub_274B2080C(sub_274B1E4E8, 0);
    *&v38 = sub_274BF4564();
    BYTE8(v38) = 0;
  }

  sub_274BF3A64();
  v12 = v31;
  v13 = BYTE8(v31);
  v14 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA68) + 36);
  *v14 = v12;
  *(v14 + 8) = v13;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  v38 = v36;
  v33 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA70);
  sub_274BF47A4();
  v30 = v31;
  v15 = v32;
  type metadata accessor for ContentItemShareManager();
  swift_allocObject();
  v16 = v5;
  sub_274B1101C(v5);
  sub_274B221BC(&qword_28098A508, type metadata accessor for ContentItemShareManager);
  v17 = sub_274BF3264();
  v19 = v18;
  v20 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA78) + 36);
  *v20 = v16;
  *(v20 + 8) = v30;
  *(v20 + 24) = v15;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  v33 = v38;
  v21 = v16;
  sub_274BF47A4();
  v22 = v32;
  *a1 = v31;
  *(a1 + 16) = v22;
  *(a1 + 24) = 0;
  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 1) = v34;
  *(v23 + 2) = v24;
  *(v23 + 3) = v36;
  v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA80) + 36));
  *v25 = sub_274B213EC;
  v25[1] = v23;
  v25[2] = 0;
  v25[3] = 0;
  v26 = swift_allocObject();
  v27 = v35;
  v26[1] = v34;
  v26[2] = v27;
  v26[3] = v36;
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA88) + 36));
  *v28 = 0;
  v28[1] = 0;
  v28[2] = sub_274B22B8C;
  v28[3] = v26;
  sub_274B21458(&v34, &v31);
  return sub_274B21458(&v34, &v31);
}

id sub_274B1E4E8(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray5Color;
  if (v1 != 2)
  {
    v3 = &selRef_whiteColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_274B1E5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD78);
  MEMORY[0x28223BE20](v93);
  v77 = &v75 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD80);
  MEMORY[0x28223BE20](v96);
  v97 = &v75 - v7;
  v91 = sub_274BF3454();
  v88 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v85 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD88);
  v84 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v82 = &v75 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD90);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v83 = &v75 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD98);
  MEMORY[0x28223BE20](v94);
  v86 = &v75 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADA0);
  MEMORY[0x28223BE20](v101);
  v95 = &v75 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADA8);
  MEMORY[0x28223BE20](v92);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB0);
  MEMORY[0x28223BE20](v15);
  v102 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB8);
  v80 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADC0);
  MEMORY[0x28223BE20](v98);
  v99 = &v75 - v23;
  *&v111 = *v3;
  v24 = v111;
  sub_274B08760();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADC8);
  v26 = swift_dynamicCast();
  v100 = a2;
  if ((v26 & 1) == 0)
  {
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    sub_274AFA708(&v103, &qword_28098ADD0);
LABEL_5:
    *&v103 = v25;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v108 = 0;
      v106 = 0u;
      v107 = 0u;
    }

    sub_274B22670(&v106, &v103, &qword_28098ADD0);
    v30 = *(&v104 + 1);
    v78 = v25;
    if (*(&v104 + 1))
    {
      v31 = v105;
      __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
      (*(v31 + 8))(v30, v31);
      __swift_destroy_boxed_opaque_existential_0(&v103);
    }

    else
    {
      sub_274AFA708(&v103, &qword_28098ADD0);
      v32 = type metadata accessor for ContentItemPreview.Action();
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v32);
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADD8);
    v34 = *(*(v33 - 8) + 16);
    v35 = v102;
    v79 = v33;
    v34(v102, a1);
    v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADE0) + 36)] = 0;
    v111 = *(v3 + 32);
    type metadata accessor for ContentItemShareManager();
    sub_274B221BC(&qword_28098A508, type metadata accessor for ContentItemShareManager);

    v36 = sub_274BF3264();
    v37 = &v35[*(v15 + 36)];
    *v37 = v36;
    v37[1] = v38;
    sub_274B1F518(v22, v3, v14);
    sub_274B22670(&v106, &v103, &qword_28098ADD0);
    v39 = *(&v104 + 1);
    if (*(&v104 + 1))
    {
      v40 = v22;
      v41 = v105;
      __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
      v42 = (*(v41 + 24))(v39, v41);
      v43 = __swift_destroy_boxed_opaque_existential_0(&v103);
      if ((v42 & 1) == 0)
      {
        MEMORY[0x28223BE20](v43);
        *(&v75 - 2) = v14;
        sub_274B2204C();
        sub_274B22234();
        v44 = v77;
        v45 = v102;
        sub_274BF41F4();
        KeyPath = swift_getKeyPath();
        v47 = (v44 + *(v93 + 36));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE40);
        sub_274BF4B24();
        *v47 = KeyPath;
        v48 = &qword_28098AD78;
        sub_274B22670(v44, v97, &qword_28098AD78);
        swift_storeEnumTagMultiPayload();
        sub_274B222E4();
        sub_274B224C4();
        v49 = v95;
LABEL_15:
        sub_274BF3A64();
        sub_274AFA708(v44, v48);
        sub_274B22670(v49, v99, &qword_28098ADA0);
        swift_storeEnumTagMultiPayload();
        sub_274AFA930(&qword_28098AE10, &qword_28098ADD8);
        sub_274B225E4();
        sub_274BF3A64();
        sub_274AFA708(v49, &qword_28098ADA0);
        sub_274AFA708(v14, &qword_28098ADA8);
        sub_274AFA708(v45, &qword_28098ADB0);
        sub_274AFA708(v40, &qword_28098ADB8);
        return sub_274AFA708(&v106, &qword_28098ADD0);
      }
    }

    else
    {
      v40 = v22;
      sub_274AFA708(&v103, &qword_28098ADD0);
    }

    v76 = v40;
    sub_274B22670(v40, v19, &qword_28098ADB8);
    v50 = *(v3 + 8);
    v109 = *(v3 + 24);
    v110 = v50;
    v51 = v14;
    v52 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v53 = v19;
    v54 = (v81 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v56 = v55 + v52;
    v14 = v51;
    v57 = sub_274B21EA8(v53, v56, &qword_28098ADB8);
    v58 = (v55 + v54);
    v59 = *(v3 + 16);
    *v58 = *v3;
    v58[1] = v59;
    v58[2] = *(v3 + 32);
    MEMORY[0x28223BE20](v57);
    v45 = v102;
    *(&v75 - 2) = v102;
    v60 = v78;
    sub_274B22670(&v111, &v103, &qword_28098ADE8);
    sub_274B15E84(&v110, &v103);

    sub_274B22670(&v109, &v103, &qword_28098AA48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADF0);
    sub_274B21F94();
    v61 = v82;
    sub_274BF47C4();
    v62 = v85;
    sub_274BF3444();
    v63 = sub_274AFA930(&qword_28098AE18, &qword_28098AD88);
    v64 = sub_274B221BC(&qword_28098AE20, MEMORY[0x277CDDB18]);
    v65 = v83;
    v66 = v87;
    v67 = v91;
    sub_274BF41D4();
    (*(v88 + 8))(v62, v67);
    v68 = (*(v84 + 8))(v61, v66);
    MEMORY[0x28223BE20](v68);
    *(&v75 - 2) = v14;
    *&v103 = v66;
    *(&v103 + 1) = v67;
    *&v104 = v63;
    *(&v104 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    sub_274B22234();
    v44 = v86;
    v69 = v90;
    sub_274BF41F4();
    v70 = v65;
    v40 = v76;
    (*(v89 + 8))(v70, v69);
    v71 = swift_getKeyPath();
    v72 = (v44 + *(v94 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE40);
    sub_274BF4B24();
    *v72 = v71;
    v48 = &qword_28098AD98;
    sub_274B22670(v44, v97, &qword_28098AD98);
    swift_storeEnumTagMultiPayload();
    sub_274B222E4();
    sub_274B224C4();
    v49 = v95;
    goto LABEL_15;
  }

  v75 = v19;
  v79 = a1;
  v27 = v14;
  sub_274B226BC(&v103, &v106);
  v28 = *(&v107 + 1);
  v29 = v108;
  __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
  if ((*(v29 + 16))(v28, v29))
  {
    __swift_destroy_boxed_opaque_existential_0(&v106);
    v14 = v27;
    a1 = v79;
    v19 = v75;
    goto LABEL_5;
  }

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADD8);
  (*(*(v74 - 8) + 16))(v99, v79, v74);
  swift_storeEnumTagMultiPayload();
  sub_274AFA930(&qword_28098AE10, &qword_28098ADD8);
  sub_274B225E4();
  sub_274BF3A64();
  return __swift_destroy_boxed_opaque_existential_0(&v106);
}

uint64_t sub_274B1F518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE68);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE70);
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v36 - v13;
  v15 = type metadata accessor for ContentItemPreview.Action();
  MEMORY[0x28223BE20](v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE78);
  MEMORY[0x28223BE20](v18 - 8);
  v39 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v36 - v21;
  sub_274B22670(a1, v14, &qword_28098ADB8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_274AFA708(v14, &qword_28098ADB8);
    v23 = __swift_storeEnumTagSinglePayload(v22, 1, 1, v9);
  }

  else
  {
    v24 = sub_274B226D4(v14, v17, type metadata accessor for ContentItemPreview.Action);
    v36[1] = v36;
    MEMORY[0x28223BE20](v24);
    v36[-2] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE98);
    v25 = v37;
    sub_274AFA930(&qword_28098AEA0, &qword_28098AE98);
    sub_274BF49C4();
    (*(v25 + 32))(v22, v11, v9);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v9);
    v23 = sub_274B22730(v17);
  }

  v38 = v22;
  MEMORY[0x28223BE20](v23);
  v36[-2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE80);
  sub_274AFA930(&qword_28098AE88, &qword_28098AE80);
  v26 = v40;
  sub_274BF49C4();
  v27 = v39;
  sub_274B22670(v22, v39, &qword_28098AE78);
  v28 = v41;
  v29 = v42;
  v30 = *(v41 + 16);
  v31 = v43;
  v30(v43, v26, v42);
  v32 = v44;
  sub_274B22670(v27, v44, &qword_28098AE78);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE90);
  v30((v32 + *(v33 + 48)), v31, v29);
  v34 = *(v28 + 8);
  v34(v26, v29);
  sub_274AFA708(v38, &qword_28098AE78);
  v34(v31, v29);
  return sub_274AFA708(v27, &qword_28098AE78);
}

uint64_t sub_274B1FA98(uint64_t a1)
{
  v2 = type metadata accessor for ContentItemPreview.Action();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_274B2279C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_274B226D4(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for ContentItemPreview.Action);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEA8);
  sub_274AFA930(&qword_28098AEB0, &qword_28098AEA8);
  return sub_274BF47C4();
}

uint64_t sub_274B1FCD4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContentItemPreview.Action();
  sub_274ADDF6C();

  result = sub_274BF4104();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274B1FD54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContentItemPreview.Action();

  result = sub_274BF4704();
  *a1 = result;
  return result;
}

uint64_t sub_274B1FDAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v28 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v15 = *a1;
  v14 = *(a1 + 8);
  v34 = *(a1 + 24);
  v35 = v14;
  v33 = *(a1 + 32);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  v16[1] = *a1;
  v16[2] = v17;
  v16[3] = *(a1 + 32);
  v28 = v15;
  sub_274B15E84(&v35, v32);

  sub_274B22670(&v34, v32, &qword_28098AA48);
  sub_274B22670(&v33, v32, &qword_28098ADE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEA8);
  sub_274AFA930(&qword_28098AEB0, &qword_28098AEA8);
  sub_274BF47C4();
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  v18[1] = *a1;
  v18[2] = v19;
  v18[3] = *(a1 + 32);
  v20 = v28;
  sub_274B15E84(&v35, v32);

  sub_274B22670(&v34, v32, &qword_28098AA48);
  sub_274B22670(&v33, v32, &qword_28098ADE8);
  sub_274BF47C4();
  v21 = *(v4 + 16);
  v22 = v29;
  v21(v29, v13, v3);
  v23 = v30;
  v21(v30, v10, v3);
  v24 = v31;
  v21(v31, v22, v3);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEB8);
  v21(&v24[*(v25 + 48)], v23, v3);
  v26 = *(v4 + 8);
  v26(v10, v3);
  v26(v13, v3);
  v26(v23, v3);
  return (v26)(v22, v3);
}

uint64_t sub_274B2019C(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A110);
  return sub_274BF48D4();
}

uint64_t sub_274B20200()
{
  sub_274BF4FE4();
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v0 = qword_28098C7C0;
  v1 = sub_274BF4F04();

  v2 = sub_274BF4F04();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  sub_274BF4F44();
  sub_274ADDF6C();
  return sub_274BF4754();
}

uint64_t sub_274B20364()
{
  sub_274BF4FE4();
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v0 = qword_28098C7C0;
  v1 = sub_274BF4F04();

  v2 = sub_274BF4F04();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  sub_274BF4F44();
  sub_274ADDF6C();
  return sub_274BF4754();
}

uint64_t sub_274B204B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ContentItemPreview.Action();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274B22670(a1, v6, &qword_28098ADB8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_274AFA708(v6, &qword_28098ADB8);
    v15 = *(a2 + 8);
    v16 = *(a2 + 24);
    v14 = *a2;
    v10 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A110);
    return sub_274BF48D4();
  }

  else
  {
    v12 = sub_274B226D4(v6, v9, type metadata accessor for ContentItemPreview.Action);
    (*&v9[*(v7 + 28)])(v12);
    return sub_274B22730(v9);
  }
}

uint64_t sub_274B20658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_274B22670(a1, a2, &qword_28098ADB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADF0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_274B206AC(uint64_t a1)
{
  v2 = sub_274BF4B34();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_274BF3754();
}

unint64_t sub_274B207B8()
{
  result = qword_28098AA38;
  if (!qword_28098AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AA38);
  }

  return result;
}

id sub_274B2080C(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_274B208B0;
  v6[3] = &block_descriptor_2;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

id sub_274B208B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_274B20918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v43 = a9;
  v37 = a1;
  v38 = a10;
  v14 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[1] = v16;
  v18 = *(v17 + *MEMORY[0x277D84DE8] + 8);
  v44 = v19;
  v45 = v18;
  v46 = v20;
  v47 = v21;
  v36[0] = v20;
  v48 = v22;
  v23 = sub_274BF4964();
  v39 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v36 - v28;
  (*(v14 + 16))(v16, v37, a5, v27);
  v30 = swift_allocObject();
  v30[2] = a5;
  v30[3] = v18;
  v30[4] = a6;
  v30[5] = a7;
  v31 = v38;
  v30[6] = a8;
  v30[7] = v31;
  v32 = v42;
  v30[8] = v41;
  v30[9] = v32;

  sub_274BF4944();
  WitnessTable = swift_getWitnessTable();
  sub_274ADB48C(v25, v23, WitnessTable);
  v34 = *(v39 + 8);
  v34(v25, v23);
  sub_274ADB48C(v29, v23, WitnessTable);
  return (v34)(v29, v23);
}

uint64_t sub_274B20BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v20 - v15;
  v17(v14);
  sub_274ADB48C(v13, a6, a9);
  v18 = *(v10 + 8);
  v18(v13, a6);
  sub_274ADB48C(v16, a6, a9);
  return (v18)(v16, a6);
}

uint64_t sub_274B20D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v44 = a8;
  v45 = a1;
  v48 = a5;
  v49 = a3;
  v43 = a2;
  v52 = a9;
  v50 = a4;
  v51 = a14;
  v46 = a13;
  v47 = a12;
  v16 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[2] = v18;
  v20 = *(v19 + *MEMORY[0x277D84DE8] + 8);
  v53 = v21;
  v54 = v20;
  v55 = v22;
  v56 = v23;
  v24 = v23;
  v57 = a11;
  v25 = sub_274BF4964();
  OUTLINED_FUNCTION_0_5();
  v42 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = v41 - v32;
  v34 = *(v16 + 16);
  v41[1] = a6;
  v34(v18, v45, a6, v31);
  v35 = swift_allocObject();
  v36 = v47;
  v35[2] = v48;
  v35[3] = a6;
  v35[4] = v20;
  v35[5] = a7;
  v35[6] = v44;
  v35[7] = v24;
  v35[8] = a11;
  v35[9] = v36;
  v37 = v50;
  v35[10] = v49;
  v35[11] = v37;

  sub_274BF4944();
  OUTLINED_FUNCTION_0_12();
  WitnessTable = swift_getWitnessTable();
  sub_274ADB48C(v29, v25, WitnessTable);
  v39 = *(v42 + 8);
  v39(v29, v25);
  sub_274ADB48C(v33, v25, WitnessTable);
  return (v39)(v33, v25);
}

uint64_t sub_274B20FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_0_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v24 - v19;
  v21(v18);
  sub_274ADB48C(v16, a7, a11);
  v22 = *(v13 + 8);
  v22(v16, a7);
  sub_274ADB48C(v20, a7, a11);
  return (v22)(v20, a7);
}

uint64_t sub_274B21138(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_274B21178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274B211C8()
{
  result = qword_28098AA50;
  if (!qword_28098AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AA58);
    sub_274B207B8();
    sub_274AFA930(&qword_28098AA40, &qword_28098AA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AA50);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowUICore28ContentCollectionPreviewViewV22MultipleSelectionStateO(uint64_t a1)
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

uint64_t sub_274B212A4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_274B212E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  OUTLINED_FUNCTION_10_1();

  return swift_deallocObject();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_274B214A8()
{
  result = qword_28098AA98;
  if (!qword_28098AA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AA90);
    sub_274B21534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AA98);
  }

  return result;
}

unint64_t sub_274B21534()
{
  result = qword_28098AAA0;
  if (!qword_28098AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AAA8);
    sub_274B215B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AAA0);
  }

  return result;
}

unint64_t sub_274B215B8()
{
  result = qword_28098AAB0;
  if (!qword_28098AAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AAB8);
    sub_274B21670();
    sub_274AFA930(&qword_28098AAF0, &qword_28098AAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AAB0);
  }

  return result;
}

unint64_t sub_274B21670()
{
  result = qword_28098AAC0;
  if (!qword_28098AAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AAC8);
    sub_274AFA930(&qword_28098AAD0, &qword_28098AAD8);
    sub_274AFA930(&qword_28098AAE0, &qword_28098AAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AAC0);
  }

  return result;
}

void sub_274B21754(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_274B217DC(id result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

id sub_274B217F8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return v2;
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  sub_274B21754(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm()
{

  sub_274B21754(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_274B2192C()
{
  result = qword_28098AB58;
  if (!qword_28098AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AB50);
    sub_274B207B8();
    sub_274AFA930(&qword_28098AB60, &qword_28098AB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AB58);
  }

  return result;
}

uint64_t sub_274B219F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274B21A48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274B21AA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_274B21AFC()
{
  result = qword_28098AD20;
  if (!qword_28098AD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AA88);
    sub_274B21B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AD20);
  }

  return result;
}

unint64_t sub_274B21B88()
{
  result = qword_28098AD28;
  if (!qword_28098AD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AA80);
    sub_274AFA930(&qword_28098AD30, &qword_28098AA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AD28);
  }

  return result;
}

uint64_t sub_274B21EA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8(a1, a2, a3);
  OUTLINED_FUNCTION_0_2();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return v3;
}

uint64_t sub_274B21EF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_274B204B0(v0 + v2, v3);
}

unint64_t sub_274B21F94()
{
  result = qword_28098ADF8;
  if (!qword_28098ADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADF0);
    sub_274B2204C();
    sub_274AFA930(&qword_28098A8C8, &qword_28098A8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098ADF8);
  }

  return result;
}

unint64_t sub_274B2204C()
{
  result = qword_28098AE00;
  if (!qword_28098AE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADB0);
    sub_274B220D8();
    sub_274B11AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE00);
  }

  return result;
}

unint64_t sub_274B220D8()
{
  result = qword_28098AE08;
  if (!qword_28098AE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADE0);
    sub_274AFA930(&qword_28098AE10, &qword_28098ADD8);
    sub_274AFA930(&qword_28098A8C8, &qword_28098A8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE08);
  }

  return result;
}

uint64_t sub_274B221BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274B22234()
{
  result = qword_28098AE28;
  if (!qword_28098AE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADA8);
    sub_274AFA930(&qword_28098AE30, &qword_28098AE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE28);
  }

  return result;
}

unint64_t sub_274B222E4()
{
  result = qword_28098AE48;
  if (!qword_28098AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD88);
    sub_274BF3454();
    sub_274AFA930(&qword_28098AE18, &qword_28098AD88);
    sub_274B221BC(&qword_28098AE20, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_274B22234();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_28098AE50, &qword_28098AE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE48);
  }

  return result;
}

unint64_t sub_274B224C4()
{
  result = qword_28098AE58;
  if (!qword_28098AE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADA8);
    sub_274B2204C();
    sub_274B22234();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_28098AE50, &qword_28098AE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE58);
  }

  return result;
}

unint64_t sub_274B225E4()
{
  result = qword_28098AE60;
  if (!qword_28098AE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADA0);
    sub_274B222E4();
    sub_274B224C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE60);
  }

  return result;
}

uint64_t sub_274B22670(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8(a1, a2, a3);
  OUTLINED_FUNCTION_0_2();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return v3;
}

uint64_t sub_274B226BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_274B226D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_274B22730(uint64_t a1)
{
  v2 = type metadata accessor for ContentItemPreview.Action();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274B2279C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentItemPreview.Action();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B22800()
{
  v1 = *(type metadata accessor for ContentItemPreview.Action() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_274B1FC20(v2);
}

uint64_t objectdestroy_106Tm()
{

  OUTLINED_FUNCTION_10_1();

  return swift_deallocObject();
}

unint64_t sub_274B228D8()
{
  result = qword_28098AEF0;
  if (!qword_28098AEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AEE8);
    sub_274B22990();
    sub_274AFA930(&qword_280989AE0, &qword_280989AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AEF0);
  }

  return result;
}

unint64_t sub_274B22990()
{
  result = qword_28098AEF8;
  if (!qword_28098AEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AF00);
    sub_274B22A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AEF8);
  }

  return result;
}

unint64_t sub_274B22A1C()
{
  result = qword_28098AF08;
  if (!qword_28098AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AF10);
    sub_274AFA930(&qword_2815A2F88, &qword_280989AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AF08);
  }

  return result;
}

unint64_t sub_274B22AD4()
{
  result = qword_28098AF18;
  if (!qword_28098AF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AF20);
    sub_274AFA930(&qword_28098AE10, &qword_28098ADD8);
    sub_274B225E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AF18);
  }

  return result;
}

uint64_t sub_274B22BC4()
{
  *&v9 = sub_274AD8430(0, &qword_28098B318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B320);
  v1 = sub_274BF4FA4();
  v3 = v2;
  swift_beginAccess();
  v4 = *(v0 + 16);

  sub_274B0691C(v1, v3, v4, &v9);

  if (!v10)
  {
    sub_274AFA708(&v9, &qword_28098B300);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B328);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B328);
    swift_allocObject();
    v5 = sub_274B22FC4();
    v10 = v6;
    *&v9 = v5;
    swift_beginAccess();

    sub_274B22D58(&v9, v1, v3);
    swift_endAccess();
    return v5;
  }

  return v8;
}

uint64_t sub_274B22D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_274B29EBC(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_274B31430();

    *v3 = v7;
  }

  else
  {
    sub_274AFA708(a1, &qword_28098B300);
    sub_274B296C0(a2, a3, v8);

    return sub_274AFA708(v8, &qword_28098B300);
  }

  return result;
}

uint64_t sub_274B22E2C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if ((v1 & 0xC000000000000001) == 0)
  {
    if (*(v1 + 16))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = sub_274BF5874();

  if (!v2)
  {
    return 0;
  }

LABEL_3:
  swift_beginAccess();
  v3 = sub_274B22EE0();
  swift_endAccess();
  return v3;
}

uint64_t sub_274B22EE0()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    result = sub_274BF5874();
    if (result)
    {
LABEL_3:
      v3 = sub_274B29948(v1);
      v5 = v4;
      v7 = v6;
      sub_274B299A8(v3, v4, v6 & 1);
      v9 = v8;
      sub_274B29EB0(v3, v5, v7 & 1);
      return v9;
    }
  }

  else
  {
    result = *(v1 + 16);
    if (result)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void sub_274B22F64(void *a1)
{
  swift_beginAccess();
  sub_274B91058(&v3, a1);
  v2 = v3;
  swift_endAccess();
}

uint64_t sub_274B22FC4()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_274BF5874())
  {
    sub_274B47944(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_274B23018()
{
  v1 = sub_274BF3774();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_274BF54A4();
    v6 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274AEF5C0(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

void *AttributedTextEditor.placeholder.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t AttributedTextEditor.init(editingSession:placeholder:keyboardType:autocapitalizationType:isBorderless:isRinglessOnFocus:isClear:padding:focusImmediatelyWhenPresented:overrideSizeThatFits:minHeight:maxHeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, char a13)
{
  result = swift_getKeyPath();
  *a9 = result;
  *(a9 + 8) = 0;
  *(a9 + 88) = 0x4014000000000000;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 80) = a5;
  *(a9 + 48) = a6;
  *(a9 + 49) = a7;
  *(a9 + 64) = a12;
  *(a9 + 72) = a10;
  *(a9 + 50) = a8;
  *(a9 + 51) = a13;
  *(a9 + 56) = a11;
  return result;
}

uint64_t AttributedTextEditor.body.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v22 = *v2;
  v6 = *(v2 + 2);
  v5 = *(v2 + 3);
  v8 = *(v2 + 4);
  v7 = *(v2 + 5);
  v9 = v2[4];
  v27 = v2[3];
  v28 = v9;
  v29 = v2[5];
  v23 = v6;
  v24 = v5;
  v25 = v8;
  v26 = v7;

  v10 = sub_274B23018();
  v11 = v5;
  v12 = v8;
  v13 = WFAutocapitalizationTypeFromString(v7);
  v14 = *(a1 + 24);
  sub_274B234F0((v10 & 1) == 0, v5, 1, v12, v13, &v22, 5.0, 10.0, 11.0, 10.0, 11.0);
  swift_getKeyPath();
  type metadata accessor for UIKitTextEditor();
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  sub_274BF4374();

  (*(*(v14 - 8) + 8))(&v22, v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28098AF40);
  v15 = sub_274BF33D4();
  OUTLINED_FUNCTION_10_2();
  sub_274AFA930(v16, &unk_28098AF40);
  OUTLINED_FUNCTION_8_6();
  swift_getWitnessTable();
  v17 = *(v15 - 8);
  v18 = *(v17 + 16);
  v18(&v22, v21, v15);
  v19 = *(v17 + 8);
  v19(v21, v15);
  v18(a2, &v22, v15);
  return v19(&v22, v15);
}

void sub_274B234F0(char a1@<W1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>)
{
  *(a6 + 96) = swift_getKeyPath();
  *(a6 + 104) = 0;
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 136) = swift_getKeyPath();
  *(a6 + 176) = 0;

  *a6 = sub_274B24324();
  *(a6 + 8) = v22;
  *(a6 + 88) = a1;
  *(a6 + 16) = a2;
  v23 = a3 & 1;
  *(a6 + 24) = v23;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a10;
  *(a6 + 64) = a11;
  *(a6 + 72) = a4;
  *(a6 + 80) = a5;
  sub_274B44B6C(&v44);
  v24 = *(&v44 + 1);
  if (*(&v44 + 1) != 2)
  {
    v31 = v44;

    sub_274B295B0(v31, v24);
    return;
  }

  if (v23)
  {
    v25 = 700;
  }

  else
  {
    v25 = 100;
  }

  v26 = sub_274B44AE4();
  v27 = [v26 length];

  if (v23)
  {
    if (v25 < v27)
    {
      sub_274AD8430(0, &unk_28098EEF0);
      sub_274BF4FE4();
      if (qword_2809893B8 != -1)
      {
        swift_once();
      }

      v32 = qword_28098C7C0;
      OUTLINED_FUNCTION_24();
      v33 = sub_274BF4F04();
      OUTLINED_FUNCTION_24();
      v34 = sub_274BF4F04();

      v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

      v36 = sub_274BF4F44();
      v37 = sub_274B4DB08(v36);
      v28 = v37;
      if (v37)
      {
        v38 = [v37 string];
        sub_274BF4F44();

        v39 = sub_274BF5004();

        v40 = *MEMORY[0x277D740E8];
        *&v44 = 0x65726F4D776F6873;
        *(&v44 + 1) = 0xE800000000000000;
        MEMORY[0x277C648E0](3092282, 0xE300000000000000);
        v41 = sub_274BF4F04();

        [v28 addAttribute:v40 value:v41 range:{0, v39}];

        v42 = *MEMORY[0x277D740A8];
        v43 = [objc_opt_self() preferredFontForTextStyle_];
        [v28 addAttribute:v42 value:v43 range:{0, v39}];

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = 700;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v25 >= v27)
  {
LABEL_14:
    v30 = 0;
    v29 = 0;
    v28 = 1;
    goto LABEL_17;
  }

  v28 = 0;
  v29 = 0;
  v30 = 100;
LABEL_17:
  *&v44 = v30;
  *(&v44 + 1) = v28;
  sub_274B44B78(&v44);
}

uint64_t sub_274B2388C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3704();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274B2390C(void *a1, void *a2)
{
  v5 = [a1 length];
  v28 = 0;
  v29 = 0;
  v30 = 1;
  v6 = *MEMORY[0x277D74060];
  OUTLINED_FUNCTION_35();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = &v28;
  OUTLINED_FUNCTION_35();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_274B29E8C;
  *(v8 + 24) = v7;
  v26 = sub_274B29E94;
  v27 = v8;
  OUTLINED_FUNCTION_6_7();
  v23 = 1107296256;
  v24 = sub_274B44878;
  v25 = &block_descriptor_34;
  v9 = _Block_copy(aBlock);
  v10 = v2;

  [a1 enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v9}];
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if ((v30 & 1) == 0)
    {
      v14 = v28;
      v13 = v29;
      v15 = swift_allocObject();
      *(v15 + 32) = 0u;
      *(v15 + 16) = 0u;
      v16 = [a2 glyphRangeForCharacterRange:v14 actualCharacterRange:{v13, 0}];
      v18 = v17;
      v19 = swift_allocObject();
      v19[2] = v16;
      v19[3] = v18;
      v19[4] = a2;
      v19[5] = v15;
      v26 = sub_274B29E9C;
      v27 = v19;
      OUTLINED_FUNCTION_6_7();
      v23 = 1107296256;
      v24 = sub_274B23F28;
      v25 = &block_descriptor_43;
      v20 = _Block_copy(aBlock);
      v21 = a2;

      [v21 enumerateLineFragmentsForGlyphRange:v16 usingBlock:{v18, v20}];
      _Block_release(v20);
      swift_beginAccess();
    }
  }

  return result;
}

void sub_274B23BEC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  sub_274AD8D30(a1, v11, &qword_28098B300);
  if (v12)
  {
    sub_274AD8430(0, &qword_28098B308);
    if (swift_dynamicCast())
    {
      sub_274AD8430(0, &qword_28098B310);
      if (sub_274BF5624())
      {
        *a6 = a2;
        *(a6 + 8) = a3;
        *(a6 + 16) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_274AFA708(v11, &qword_28098B300);
  }
}

void sub_274B23CF4(uint64_t a1, NSRange range2, uint64_t a3, NSRange range1, void *a5, uint64_t a6)
{
  v10 = NSIntersectionRange(range1, range2);
  v11 = sub_274BF1A84();
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a3;
  v14[4] = sub_274B29EA8;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_274B23EA4;
  v14[3] = &block_descriptor_49;
  v13 = _Block_copy(v14);

  [a5 enumerateEnclosingRectsForGlyphRange:v10.location withinSelectedGlyphRange:v10.length inTextContainer:v11 usingBlock:{0, a1, v13}];
  _Block_release(v13);
}

uint64_t sub_274B23E24(_BYTE *a1, double *a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  result = swift_beginAccess();
  a2[2] = a4;
  a2[3] = a5;
  a2[4] = a6;
  a2[5] = a7;
  *a3 = 1;
  *a1 = 1;
  return result;
}

uint64_t sub_274B23EA4(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);

  v11(a2, a3, a4, a5, a6);
}

void sub_274B23F28(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);

  v20 = a2;
  v19(a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_274B24014(void *a1)
{
  v2 = a1;
  v3 = [a1 length];
  [v1 beginEditing];
  v15 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_36();
  v4 = swift_allocObject();
  *(v4 + 16) = &v15;
  OUTLINED_FUNCTION_35();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_274B29678;
  *(v5 + 24) = v4;
  aBlock[4] = sub_274B29680;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B243B0;
  aBlock[3] = &block_descriptor_3;
  v6 = _Block_copy(aBlock);

  [v2 enumerateAttributesInRange:0 options:v3 usingBlock:{0, v6}];
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Key(0);
    sub_274B29ECC(&qword_280989580, type metadata accessor for Key);
    v8 = sub_274BF4E14();
    sub_274B29C0C(v8, 0, v3, v1);
    v9 = *(v15 + 16);
    if (v9)
    {
      v10 = ( + 48);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        v10 += 3;

        v13 = sub_274BF4DE4();

        [v1 addAttributes:v13 range:{v11, v12}];

        --v9;
      }

      while (v9);
    }

    [v1 endEditing];
  }

  return result;
}

uint64_t sub_274B242B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  sub_274B478B8();
  v9 = *(*a5 + 16);
  result = sub_274B03EF0(v9);
  v11 = *a5;
  *(v11 + 16) = v9 + 1;
  v12 = (v11 + 24 * v9);
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  return result;
}

uint64_t sub_274B24324()
{
  type metadata accessor for AttributedTextEditingSession();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11();

  return sub_274BF3264();
}

uint64_t sub_274B243B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_274B29ECC(&qword_280989580, type metadata accessor for Key);
  v9 = sub_274BF4DF4();
  v8(v9, a3, a4, a5);
}

uint64_t sub_274B24488()
{
  sub_274BF5CD4();
  sub_274AEF504(v2, *v0);
  return sub_274BF5D44();
}

uint64_t sub_274B244C8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_274BF3774();
  OUTLINED_FUNCTION_0_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v53 - v12;
  OUTLINED_FUNCTION_11_2();
  swift_getWitnessTable();
  v54 = a2;
  sub_274BF3CF4();
  sub_274BF3CE4();
  sub_274AF6CB0();
  sub_274BF37A4();
  v14 = *(v7 + 8);
  v14(v13, v5);
  v15 = sub_274B22BC4();

  OUTLINED_FUNCTION_17_2();
  sub_274BF3CD4();
  v16 = v58;

  sub_274B260A8(v17);

  v18 = sub_274B22E2C();
  v53[1] = v15;
  v53[2] = v3;
  v56 = v14;
  v57 = v5;
  v55 = v7 + 8;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v53[0] = 0;
    OUTLINED_FUNCTION_17_2();
    sub_274BF3CE4();
    sub_274B294FC();
    sub_274BF37A4();
    v14(v10, v5);
    if (v58)
    {
      OUTLINED_FUNCTION_21();
      sub_274BA253C();
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    type metadata accessor for UIKitTextView();
    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_274B279D4(v3[24]);
    sub_274B30B80();
    sub_274B27A54(&v58);
    v23 = objc_opt_self();
    v24 = *MEMORY[0x277D76918];
    v25 = v22;
    v26 = [v23 preferredFontForTextStyle_];
    [v25 setFont_];

    v27 = [objc_opt_self() labelColor];
    [v25 setTextColor_];

    v28 = v25;
    [v28 setBackgroundColor_];
    LODWORD(v29) = 1144750080;
    [v28 setContentHuggingPriority:1 forAxis:v29];
    LODWORD(v30) = 1132068864;
    [v28 setContentCompressionResistancePriority:0 forAxis:v30];
    LODWORD(v31) = 1144750080;
    [v28 setContentCompressionResistancePriority:1 forAxis:v31];
    v32 = [v28 layoutManager];
    [v32 wf:v28 setControlView:?];

    v33 = [objc_allocWithZone(MEMORY[0x277D7D7D8]) init];
    v34 = [v28 textContainer];
    [v33 setTextContainer_];

    [v28 addInteraction_];
    v35 = [objc_allocWithZone(WFTextScrollView) initWithTextView_];

    v19 = v35;
    if (v21)
    {

      sub_274BA2CC8();
    }

    else
    {
    }

    v18 = v53[0];
  }

  v36 = v18;
  v54 = v19;
  v37 = [v19 textView];
  type metadata accessor for UIKitTextView();
  v53[0] = v37;
  v38 = swift_dynamicCastClassUnconditional();
  OUTLINED_FUNCTION_17_2();
  sub_274BF3CE4();
  sub_274B294FC();
  sub_274BF37A4();
  v56(v13, v57);
  sub_274B280C8(v58);
  v57 = v38;
  v39 = [v38 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B2F8);
  v40 = sub_274BF5144();

  result = sub_274B22B94(v40);
  if (!result)
  {
    goto LABEL_19;
  }

  v42 = result;
  if (result >= 1)
  {
    for (i = 0; i != v42; ++i)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        MEMORY[0x277C65230](i, v40);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (v44)
      {
        v45 = v44;
        OUTLINED_FUNCTION_17_2();
        sub_274BF3CD4();
        v46 = v58;
        [v45 setDelegate_];
      }

      swift_unknownObjectRelease();
    }

LABEL_19:

    OUTLINED_FUNCTION_17_2();
    sub_274BF3CD4();
    v47 = v58;
    v48 = v53[0];
    v49 = v57;
    sub_274B262AC(v57);

    OUTLINED_FUNCTION_17_2();
    sub_274BF3CD4();
    v50 = v58;
    v51 = v54;
    [v54 setTextViewDelegate_];

    OUTLINED_FUNCTION_36();
    *(swift_allocObject() + 16) = v49;
    v52 = v48;

    sub_274B44FCC();

    return v51;
  }

  __break(1u);
  return result;
}

double sub_274B24B90@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = a1;
  v4 = type metadata accessor for UIKitTextView();
  v5 = a1;
  sub_274B29CF0(&v8, v4, &off_2883C93D0, v9);

  result = *v9;
  v7 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v10;
  return result;
}

void sub_274B24C4C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_274BF33A4();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4();
  v90 = v7 - v6;
  v8 = sub_274BF3774();
  OUTLINED_FUNCTION_0_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v98 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v89 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v89 - v17;
  OUTLINED_FUNCTION_11_2();
  swift_getWitnessTable();
  sub_274BF3CF4();
  sub_274BF3CE4();
  sub_274B294FC();
  sub_274BF37A4();
  v89 = v10;
  v19 = *(v10 + 8);
  v97 = v8;
  v100 = v10 + 8;
  v99 = v19;
  v19(v18, v8);
  if (*&v102[0])
  {
    OUTLINED_FUNCTION_21();
    sub_274BA253C();
    v91 = v20;
  }

  else
  {
    v91 = 0;
  }

  v21 = v101;
  v22 = *(a3 + 16);
  v23 = *(a3 + 24);
  v96 = *(v101 + 24);
  [a1 setAdjustmentEnabled_];
  v24 = [a1 textView];
  *&v94 = v22;
  *&v93 = v23;
  type metadata accessor for UIKitTextView();
  v92 = v24;
  v95 = swift_dynamicCastClassUnconditional();
  sub_274BF3CD4();
  v25 = v104;
  (*(*(a3 - 8) + 16))(v102, v21, a3);
  sub_274B25FC4(v102);

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_13_3();
  sub_274BF37A4();
  v26 = v97;
  v27 = v99;
  v99(v15, v97);
  sub_274B26090(v104);

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_13_3();
  sub_274B29550();
  sub_274BF37A4();
  v27(v15, v26);
  sub_274B261B8(v104);

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_13_3();
  sub_274B82DD8();
  v28 = OUTLINED_FUNCTION_28();
  (v27)(v28);
  sub_274B2624C(v15, a3);

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_13_3();
  sub_274BE454C();
  v29 = OUTLINED_FUNCTION_28();
  (v27)(v29);
  OUTLINED_FUNCTION_19_1();
  sub_274B26290(v30, v31);

  if (v106 && (v32 = [v106 mutableCopy]) != 0)
  {
    v33 = v32;
    sub_274AD8430(0, &unk_28098B2E0);
    v34 = v33;
    sub_274BF3CE4();
    OUTLINED_FUNCTION_19_1();
    v36 = sub_274B7AE50(v35);
    [v34 addAttribute:*MEMORY[0x277D74118] value:v36 range:{0, objc_msgSend(v34, sel_length)}];
  }

  else
  {
    v34 = 0;
  }

  v37 = v95;
  sub_274BF3CE4();
  v92 = v92;
  v95 = v34;
  [v37 setAttributedPlaceholder_];

  sub_274B280F0();
  OUTLINED_FUNCTION_12_3();
  v38 = *&v102[0];
  v39 = *(v105 + *(*v105 + 168));

  v104 = v39;
  OUTLINED_FUNCTION_36();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v42 = v93;
  v41[2] = v94;
  v41[3] = v42;
  v41[4] = v40;
  v43 = OUTLINED_FUNCTION_11();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v43);
  sub_274AFA930(&qword_28098B2C8, &qword_28098B2C0);
  v45 = sub_274BF2DB4();
  OUTLINED_FUNCTION_19_1();

  sub_274B262F4(v45);

  OUTLINED_FUNCTION_37();
  v46 = sub_274B44AB0();

  OUTLINED_FUNCTION_12_3();
  v47 = *&v102[0];
  v48 = sub_274B260B4();

  if ((v48 & 0x100000000) != 0 || v46 != v48)
  {
    OUTLINED_FUNCTION_37();
    sub_274B44B6C(v102);

    v50 = *(&v102[0] + 1);
    v49 = *&v102[0];
    *&v94 = *&v102[0];
    if (*(&v102[0] + 1) == 2)
    {
      v49 = 0;
    }

    *&v93 = *(&v102[0] + 1);
    if (*(&v102[0] + 1) == 2)
    {
      v50 = 1;
    }

    *&v102[0] = v49;
    *(&v102[0] + 1) = v50;
    OUTLINED_FUNCTION_37();
    v51 = sub_274B44AE4();

    v52.super.isa = TextEditorContentDisplayStyle.style(_:)(v51).super.isa;

    v53 = [v37 text];
    if (v53)
    {
      v54 = v53;
      v55 = sub_274BF4F44();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v44 = [(objc_class *)v52.super.isa string];
    v58 = sub_274BF4F44();
    v60 = v59;

    if (v57)
    {
      if (v55 == v58 && v57 == v60)
      {

        OUTLINED_FUNCTION_19_1();
        goto LABEL_27;
      }

      v62 = sub_274BF5C24();

      OUTLINED_FUNCTION_19_1();
      if (v62)
      {
LABEL_27:
        v63 = [v37 textStorage];
        v64 = [v63 isEqualToAttributedString_];

        if ((v64 & 1) == 0)
        {
          v65 = [v37 textStorage];
          sub_274B24014(v52.super.isa);
        }

        goto LABEL_29;
      }
    }

    else
    {

      OUTLINED_FUNCTION_19_1();
    }

    [v37 setAttributedText_];
LABEL_29:
    OUTLINED_FUNCTION_12_3();
    sub_274B295B0(v94, v93);

    v66 = *&v102[0];
    OUTLINED_FUNCTION_37();
    v67 = sub_274B44AB0();

    v68 = &v66[qword_28098B000];
    *v68 = v67;
    v68[4] = 0;
  }

  [v37 setScrollEnabled_];
  v69 = [v37 textContainer];
  [v69 setLineFragmentPadding_];

  v70 = v44[6];
  v71 = v44[7];
  if (*(v44 + 129) == 1)
  {
    v72 = v97;
    if ((v44[8] & 1) == 0)
    {
LABEL_37:
      v75 = v101;
      goto LABEL_38;
    }
  }

  else
  {
    v94 = v44[7];
    v93 = v70;

    sub_274BF54A4();
    v73 = sub_274BF3DF4();
    OUTLINED_FUNCTION_32_0();

    sub_274BF3764();
    swift_getAtKeyPath();
    OUTLINED_FUNCTION_29();
    v72 = v97;
    OUTLINED_FUNCTION_1_11();
    v74();
    if ((v103 & 1) == 0)
    {

      sub_274BF54A4();
      v76 = sub_274BF3DF4();
      OUTLINED_FUNCTION_32_0();

      sub_274BF3764();
      swift_getAtKeyPath();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_1_11();
      v77();
      if (v103)
      {
        __break(1u);
        return;
      }

      v71 = v102[1];
      v70 = v102[0];
      goto LABEL_37;
    }
  }

  v75 = v101;
  v71 = *(v101 + 56);
  v70 = *(v101 + 40);
LABEL_38:
  [v37 setTextContainerInset_];
  [v37 setEditable_];
  (*(v89 + 16))(v15, v98, v72);
  v78 = sub_274BF3684();
  v79 = v90;
  sub_274BF3564();
  v80 = NSTextAlignment.init(alignment:layoutDirection:)(v78, v79);
  OUTLINED_FUNCTION_1_11();
  v81();
  [v37 setTextAlignment_];
  [v37 setKeyboardType_];
  if (v96)
  {
    v82 = 0;
  }

  else
  {
    v82 = 9;
  }

  [v37 setReturnKeyType_];
  [v37 setAutocorrectionType_];
  [v37 setAutocapitalizationType_];
  sub_274B295D0();
  sub_274BF37A4();
  [v37 setSmartQuotesType_];
  sub_274B29624();
  sub_274BF37A4();
  [v37 setSmartDashesType_];
  v83 = *(v75 + 8);

  v84 = v83;
  sub_274B45BCC();
  OUTLINED_FUNCTION_31();
  if (v79)
  {

    sub_274B475AC(1);
    OUTLINED_FUNCTION_31();
    v85 = v92;

    v86 = v95;
  }

  else
  {
    v86 = v95;
    [v37 setSelectedRange_];
    v85 = v92;

    if (([v37 isFirstResponder] & 1) == 0)
    {
      [v37 becomeFirstResponder];
    }
  }

  if (v91)
  {

    sub_274BA2CC8();

    OUTLINED_FUNCTION_1_11();
    v87();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v88();
  }
}

void sub_274B2593C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong layoutManager];

    [v5 invalidateDisplayForCharacterRange_];
  }
}

void sub_274B259CC(double *a1, uint64_t a2, void *a3)
{
  sub_274BF3774();
  OUTLINED_FUNCTION_0_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v42 = [a3 textView];
  type metadata accessor for UIKitTextView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = v42;
    v10 = [v8 font];
    if (v10)
    {
      v11 = v10;
      [v10 lineHeight];
      v13 = v12;
    }

    else
    {
      v13 = 1.0;
    }

    if ([v8 isScrollEnabled])
    {
      [v8 textContainerInset];
      v19 = v18;
      v21 = v20;
      if (*(v8 + qword_28098B178) != 1)
      {
        v29 = v9;
        v26 = v13;
LABEL_20:

        v37 = fmax(fmin(v19 + v21 + v26, 350.0), 75.0);
LABEL_24:
        a1[1] = v37;
        goto LABEL_25;
      }

      v22 = v16;
      v23 = v17;
      v24 = [v8 textStorage];
      v25 = [v24 length];

      v26 = 350.0;
      v27 = ceil(350.0 / v13);
      if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v27 > -9.22337204e18)
      {
        if (v27 < 9.22337204e18)
        {
          v28 = 70 * v27;
          if ((v27 * 70) >> 64 == v28 >> 63)
          {
            v29 = v9;
            if (v28 >= v25)
            {
              v30 = [v8 layoutManager];
              v29 = [v8 textContainer];

              [v30 wf:v29 calculateIntrinsicHeightForWidth:*a1 - (v22 + v23) textContainer:?];
              v26 = v31;
            }

            goto LABEL_20;
          }

          goto LABEL_29;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_28;
    }

    v32 = *(v3 + 96);
    v33 = *(v3 + 112);
    v34 = *(v3 + 128);
    if (*(v3 + 129) == 1)
    {

      if ((v34 & 1) == 0)
      {
        v35 = *&v32;
        v36 = *&v33;
LABEL_23:
        v37 = v13 + v35 + v36;
        goto LABEL_24;
      }
    }

    else
    {
      v41 = *(v3 + 120);
      v43 = *(v3 + 104);

      sub_274BF54A4();
      v38 = sub_274BF3DF4();
      sub_274BF2BC4();

      sub_274BF3764();
      swift_getAtKeyPath();
      sub_274B294F0(v32, v43, v33, v41, v34, 0);
      v39 = OUTLINED_FUNCTION_24();
      v40(v39);

      if ((v46 & 1) == 0)
      {
        v35 = v44;
        v36 = v45;
        goto LABEL_23;
      }
    }

LABEL_25:
    OUTLINED_FUNCTION_39();
    return;
  }

  OUTLINED_FUNCTION_39();
}

uint64_t sub_274B25DB0(void *a1)
{
  if (sub_274B26084())
  {
    OUTLINED_FUNCTION_21();
    sub_274BA2180();
  }

  result = sub_274B2609C();
  if (result)
  {
    sub_274B22F64(a1);
  }

  return result;
}

id sub_274B25E5C()
{
  v0 = type metadata accessor for UIKitTextEditor.Coordinator();
  v8 = OUTLINED_FUNCTION_25(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12[0]);
  v9(v8);
  return sub_274B25ED8(v12);
}

uint64_t sub_274B25F0C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_28098AFE8;
  swift_beginAccess();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_15_1();
  type metadata accessor for UIKitTextEditor();
  OUTLINED_FUNCTION_0_2();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_274B25FC4(uint64_t a1)
{
  v3 = qword_28098AFE8;
  swift_beginAccess();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_15_1();
  type metadata accessor for UIKitTextEditor();
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_274B260E0(uint64_t result)
{
  v2 = v1 + qword_28098B000;
  *v2 = result;
  *(v2 + 4) = BYTE4(result) & 1;
  return result;
}

void *sub_274B260FC()
{
  v1 = *(v0 + qword_28098B008);
  v2 = v1;
  return v1;
}

void sub_274B2612C(uint64_t a1)
{
  v2 = *(v1 + qword_28098B008);
  *(v1 + qword_28098B008) = a1;
}

void sub_274B26140()
{
  v0 = sub_274B260FC();
  if (v0)
  {
    v2 = v0;

    sub_274B70F90(v1);
  }
}

uint64_t sub_274B261B8(uint64_t a1)
{
  *(v1 + qword_28098B010) = a1;

  sub_274B26140();
}

uint64_t sub_274B26214()
{
  v0 = OUTLINED_FUNCTION_11();
  sub_274ADDED0(v0);
  return OUTLINED_FUNCTION_11();
}

uint64_t sub_274B26258()
{
  v0 = OUTLINED_FUNCTION_11();
  sub_274ADDED0(v0);
  return OUTLINED_FUNCTION_11();
}

void sub_274B262AC(void *a1)
{
  swift_unknownObjectWeakAssign();
}

id sub_274B26300(uint64_t a1)
{
  *&v1[qword_28098AFF0] = 0;
  *&v1[qword_28098AFF8] = 0;
  v3 = &v1[qword_28098B000];
  *v3 = 0;
  v3[4] = 1;
  *&v1[qword_28098B008] = 0;
  *&v1[qword_28098B010] = 0;
  v4 = &v1[qword_28098B018];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[qword_28098B020];
  *v5 = 0;
  *(v5 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v1[qword_28098B030] = 0;
  v6 = qword_28098AFE8;
  OUTLINED_FUNCTION_23();
  v7 = type metadata accessor for UIKitTextEditor();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v1[v6], a1, v7);
  OUTLINED_FUNCTION_23();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for UIKitTextEditor.Coordinator();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

uint64_t sub_274B26498(void *a1)
{
  OUTLINED_FUNCTION_18_1();
  v3 = sub_274B260FC();
  if (v3)
  {

    sub_274B25F0C(v20);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_0_2();
    v5 = *(v4 + 8);

    v5(v20, v1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20);
    OUTLINED_FUNCTION_20();
    sub_274AFA930(v6, v7);
    sub_274BF2D14();
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for UIKitAutocompleteCoordinator()) init];
    v9 = a1;
    sub_274B70C4C(a1);
    v10 = &v8[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_delegate];
    swift_beginAccess();
    *(v10 + 1) = &off_2883C93F8;
    swift_unknownObjectWeakAssign();
    v11 = sub_274B261AC();
    sub_274B70F90(v11);
    v12 = v8;
    sub_274B2612C(v8);
  }

  sub_274B25F0C(v20);
  v13 = type metadata accessor for UIKitTextEditor();
  OUTLINED_FUNCTION_0_2();
  v15 = *(v14 + 8);

  (v15)(v20, v13);
  sub_274B44BEC(v19);
  OUTLINED_FUNCTION_26();
  if (!v17 && v16 != 2)
  {
    sub_274B295C0(*v15, v16);
    *v15 = xmmword_274BFBC10;
  }

  v13(v19, 0);
}

void sub_274B2672C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274B26498(v4);
}

uint64_t sub_274B26794()
{
  sub_274B2612C(0);
  sub_274B25F0C(v4);
  v0 = type metadata accessor for UIKitTextEditor();
  OUTLINED_FUNCTION_0_2();
  v2 = *(v1 + 8);

  v2(v4, v0);

  sub_274B47624(0, 0, 1, 1);
}

void sub_274B2687C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274B26794();
}

void sub_274B268DC(void *a1)
{
  sub_274B25F0C(v15);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_2();
  v3 = *(v2 + 8);

  v12 = OUTLINED_FUNCTION_25(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15[0]);
  v3(v12);
  v13 = [a1 textStorage];
  sub_274B45BE4(v13);
}

void sub_274B269B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274B268DC(v4);
}

uint64_t sub_274B26A20(void *a1)
{
  sub_274B25F0C(v17);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_2();
  v3 = *(v2 + 8);

  v12 = OUTLINED_FUNCTION_25(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17[0]);
  v3(v12);

  v13 = [a1 selectedRange];
  sub_274B47624(v13, v14, 0, 1);
}

void sub_274B26AFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274B26A20(v4);
}

uint64_t sub_274B26B64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4 == 10 && a5 == 0xE100000000000000;
  if (!v6 && (sub_274BF5C24() & 1) == 0)
  {
    return 1;
  }

  sub_274B25F0C(v10);
  v7 = v10[24];
  type metadata accessor for UIKitTextEditor();
  OUTLINED_FUNCTION_0_2();
  (*(v8 + 8))(v10);
  if (v7)
  {
    return 1;
  }

  [a1 resignFirstResponder];
  return 0;
}

uint64_t sub_274B26C58(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_274BF4F44();
  v7 = v6;
  v8 = a3;
  v9 = a1;
  LOBYTE(v5) = sub_274B26B64(v8, v10, v11, v5, v7);

  return v5 & 1;
}

uint64_t sub_274B26CCC()
{
  v0 = sub_274BF1F24();
  if (v1)
  {
    v2 = v0 == 0x65726F4D776F6873 && v1 == 0xE800000000000000;
    if (v2)
    {
    }

    else
    {
      v3 = sub_274BF5C24();

      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    sub_274B25F0C(v10);
    OUTLINED_FUNCTION_23();
    v4 = type metadata accessor for UIKitTextEditor();
    OUTLINED_FUNCTION_0_2();
    v6 = *(v5 + 8);

    (v6)(v10, v4);
    sub_274B44BEC(v9);
    OUTLINED_FUNCTION_26();
    if (!v2 && v7 != 2)
    {
      sub_274B295C0(*v6, v7);
      *v6 = xmmword_274BFBC10;
    }

    v4(v9, 0);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_274B26E6C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_274BF1F54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF1F04();
  v9 = a3;
  v10 = a1;
  sub_274B26CCC();

  (*(v6 + 8))(v8, v5);
  return 0;
}

void sub_274B26F68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_1();
  v3 = sub_274B2629C();
  if (v3)
  {
    v18 = v3;
    v4 = sub_274B26214();
    if (v4)
    {
      v5 = v4;
      v19[3] = type metadata accessor for UIKitTextView();
      v19[4] = &off_2883C93D0;
      v19[0] = v18;
      v6 = v18;
      v7 = [v6 textStorage];
      v8 = [v6 layoutManager];
      sub_274B2390C(v7, v8);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v5(v19, a2, v10, v12, v14, v16);
      v17 = OUTLINED_FUNCTION_24();
      sub_274AD81C4(v17);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {
    }
  }
}

void sub_274B270FC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_274B26F68(v8, v7);
}

uint64_t sub_274B27170()
{
  OUTLINED_FUNCTION_18_1();
  v0 = sub_274B2629C();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 selectedRange];
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  sub_274B25F0C(v20);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_2();
  v6 = *(v5 + 8);

  v15 = OUTLINED_FUNCTION_25(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20[0]);
  v6(v15);

  v17 = &v2[v4];
  if (__OFADD__(v2, v4))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = (v17 + 1);
  if (__OFADD__(v17, 1))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_274B47624(result, 0, 0, 1);

  result = sub_274B26258();
  if (result)
  {
    v18 = result;
    OUTLINED_FUNCTION_20();
    v18();
    return sub_274AD81C4(v18);
  }

  return result;
}

void sub_274B272D8()
{
  v0 = sub_274B2629C();
  [v0 resignFirstResponder];
}

id sub_274B2735C()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_18_1();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitTextEditor.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274B273C4(uint64_t a1)
{
  v2 = qword_28098AFE8;
  type metadata accessor for UIKitTextEditor();
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1 + v2);

  sub_274AD81C4(*(a1 + qword_28098B018));
  sub_274AD81C4(*(a1 + qword_28098B020));
  MEMORY[0x277C665A0](a1 + qword_28098B028);
}

id sub_274B27500@<X0>(void *a1@<X8>)
{
  result = sub_274B25E5C();
  *a1 = result;
  return result;
}

uint64_t sub_274B2752C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_274B275A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_274B27624()
{
  swift_getWitnessTable();
  sub_274BF3A24();
  __break(1u);
}

double sub_274B27664@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t EnvironmentValues.textEditingObserver.getter()
{
  sub_274B276C0();

  return sub_274BF37A4();
}

unint64_t sub_274B276C0()
{
  result = qword_28098AF50;
  if (!qword_28098AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AF50);
  }

  return result;
}

uint64_t EnvironmentValues.textEditingObserver.setter(uint64_t a1)
{
  sub_274AD8D30(a1, v3, &qword_28098AF58);
  sub_274B276C0();
  sub_274BF37B4();
  return sub_274AFA708(a1, &qword_28098AF58);
}

void (*EnvironmentValues.textEditingObserver.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_274B276C0();
  sub_274BF37A4();
  return sub_274B27878;
}

void sub_274B27878(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_34();
    sub_274AD8D30(v2 + 40, v2 + 80, &qword_28098AF58);
    sub_274BF37B4();
    OUTLINED_FUNCTION_20();
    sub_274AFA708(v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_34();
    sub_274BF37B4();
  }

  OUTLINED_FUNCTION_20();
  sub_274AFA708(v5, v6);

  free(v2);
}

id sub_274B27950(char a1)
{
  result = [v1 isScrollEnabled];
  if (result && *(v1 + qword_28098B178) != (a1 & 1))
  {

    return [v1 invalidateIntrinsicContentSize];
  }

  return result;
}

id sub_274B279D4(char a1)
{
  v2 = *(v1 + qword_28098B178);
  *(v1 + qword_28098B178) = a1;
  return sub_274B27950(v2);
}

uint64_t sub_274B279EC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_28098B180;
  swift_beginAccess();
  return sub_274AD8D30(v1 + v3, a1, &qword_28098AF58);
}