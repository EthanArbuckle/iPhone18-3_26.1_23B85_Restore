unint64_t sub_21B9C5488(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a2)
  {
LABEL_19:
    v8 = 0;
    goto LABEL_22;
  }

  v8 = a3;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
    }

    else
    {
      v4 = a2;
      v5 = a4 >> 62;
      v14 = a1;
      v6 = a4 & 0xFFFFFFFFFFFFFF8;
      if (!(a4 >> 62))
      {
        v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        v10 = 0;
        while (1)
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          if (v9 == v10)
          {
            v8 = v9;
LABEL_21:
            a1 = v14;
            goto LABEL_22;
          }

          if ((a4 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x21CEFD920](v10, a4);
            if (!v5)
            {
              goto LABEL_12;
            }
          }

          else
          {
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v12 = *(a4 + 8 * v10 + 32);
            if (!v5)
            {
LABEL_12:
              a1 = *(v6 + 16);
              goto LABEL_15;
            }
          }

          a1 = sub_21BA884DC();
LABEL_15:
          if (v10 >= a1)
          {
            goto LABEL_24;
          }

          *(v4 + 8 * v10) = v12;
          if (v11 == v8)
          {
            goto LABEL_21;
          }

          ++v10;
          if (v11 >= v8)
          {
            __break(1u);
            goto LABEL_19;
          }
        }
      }
    }

    v9 = sub_21BA884DC();
    goto LABEL_6;
  }

LABEL_22:
  *a1 = a4;
  a1[1] = v8;
  return v8;
}

unint64_t sub_21B9C55C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D550);
    v3 = sub_21BA8872C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_21B940DCC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ScriptEnvironment.LoadURLParams()
{
  result = qword_27CDA36D0;
  if (!qword_27CDA36D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B9C572C()
{
  result = qword_27CD9D4C0;
  if (!qword_27CD9D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D4C0);
  }

  return result;
}

unint64_t sub_21B9C57B4()
{
  result = qword_27CD9E1A0;
  if (!qword_27CD9E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E1A0);
  }

  return result;
}

unint64_t sub_21B9C5850()
{
  result = qword_27CD9D4E8;
  if (!qword_27CD9D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D4E8);
  }

  return result;
}

unint64_t sub_21B9C58A8()
{
  result = qword_27CD9D4F0;
  if (!qword_27CD9D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D4F0);
  }

  return result;
}

uint64_t sub_21B9C5978(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D4E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B9C59F4()
{
  result = qword_27CD9D508;
  if (!qword_27CD9D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D508);
  }

  return result;
}

uint64_t sub_21B9C5A88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D4D0);
    sub_21B9C57B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21B9C5C20()
{
  sub_21BA864AC();
  if (v0 <= 0x3F)
  {
    sub_21B9C5CAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B9C5CAC()
{
  if (!qword_27CD9D530)
  {
    sub_21B9C5D04();
    v0 = sub_21BA883CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9D530);
    }
  }
}

unint64_t sub_21B9C5D04()
{
  result = qword_27CD9D538;
  if (!qword_27CD9D538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD9D538);
  }

  return result;
}

unint64_t sub_21B9C5D74()
{
  result = qword_27CD9D540;
  if (!qword_27CD9D540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D540);
  }

  return result;
}

uint64_t sub_21B9C5E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D560);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D568);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  v28[0] = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D558);
  sub_21BA8797C();
  v13 = v29;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = (v13 & 1) == 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D570);
  (*(*(v16 - 8) + 16))(v9, a1, v16);
  v17 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D578) + 36)];
  *v17 = KeyPath;
  v17[1] = sub_21B9C675C;
  v17[2] = v15;
  v18 = swift_allocObject();
  v19 = v3[1];
  *(v18 + 1) = *v3;
  *(v18 + 2) = v19;
  v20 = v3[3];
  *(v18 + 3) = v3[2];
  *(v18 + 4) = v20;
  v21 = &v9[*(v7 + 44)];
  *v21 = sub_21B9C6774;
  v21[1] = v18;
  v21[2] = 0;
  v21[3] = 0;
  if (*(v3 + 4))
  {
    sub_21B9C67B4(v3, v28);
    type metadata accessor for XMLUIData();
    sub_21B9C6968(&qword_27CD9BAC8, type metadata accessor for XMLUIData);

    v22 = sub_21BA8690C();

    v23 = swift_allocObject();
    v24 = v3[1];
    *(v23 + 1) = *v3;
    *(v23 + 2) = v24;
    v25 = v3[3];
    *(v23 + 3) = v3[2];
    *(v23 + 4) = v25;
    sub_21B9AB6D4(v9, v12, &qword_27CD9D560);
    *&v12[*(v10 + 52)] = v22;
    v26 = &v12[*(v10 + 56)];
    *v26 = sub_21B9C67EC;
    v26[1] = v23;
    sub_21B9AB6D4(v12, a2, &qword_27CD9D568);
    return sub_21B9C67B4(v3, v28);
  }

  else
  {
    sub_21B9C67B4(v3, v28);
    type metadata accessor for XMLUIData();
    sub_21B9C6968(&qword_27CD9BAC8, type metadata accessor for XMLUIData);
    result = sub_21BA86CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B9C6188(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_21B9C61CC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21BA87B8C();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21BA87BAC();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B9C6904();
  v13 = sub_21BA8827C();
  v14 = swift_allocObject();
  v15 = a1[1];
  v14[1] = *a1;
  v14[2] = v15;
  v16 = a1[3];
  v14[3] = a1[2];
  v14[4] = v16;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B9C6188;
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);
  sub_21B9C67B4(a1, v21);

  sub_21BA87B9C();
  v21[0] = MEMORY[0x277D84F90];
  sub_21B9C6968(&qword_27CD9D590, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D598);
  sub_21B9B35B8(&qword_27CD9D5A0, &qword_27CD9D598);
  sub_21BA8848C();
  MEMORY[0x21CEFD5F0](0, v12, v9, v17);
  _Block_release(v17);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_21B9C6514(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BA8714C();
  v5 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_21BA8715C();
}

uint64_t sub_21B9C660C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21BA8714C();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_21BA8715C();
}

uint64_t sub_21B9C6704@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA86E4C();
  *a1 = result & 1;
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

uint64_t sub_21B9C685C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21B9C68A4(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B9C6904()
{
  result = qword_27CD9D588;
  if (!qword_27CD9D588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD9D588);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B9C6968(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21B9C6A04()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    v5 = *(*v2 + 152);

    v5(v3, v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D558);
    return sub_21BA8798C();
  }

  else
  {
    type metadata accessor for ScriptEnvironment();
    sub_21B9C6968(&qword_27CD9E660, type metadata accessor for ScriptEnvironment);
    result = sub_21BA86CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B9C6B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_21BA8653C())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_21B9C6B9C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x65756C6176;
    if (a1 != 2)
    {
      v6 = 0x6C6562616C627573;
    }

    if (a1)
    {
      v5 = 0x6C6562616CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4C6275536C6D7468;
    v2 = 0x6567616D69;
    if (a1 != 7)
    {
      v2 = 0x64656C6261736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 7107189;
    if (a1 != 4)
    {
      v3 = 0x6874654D70747468;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21B9C6CB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0xE500000000000000;
    v14 = 0x65756C6176;
    if (a1 != 2)
    {
      v14 = 0x6C6562616C627573;
      v13 = 0xE800000000000000;
    }

    if (a1)
    {
      v12 = 0x6C6562616CLL;
      v11 = 0xE500000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x4C6275536C6D7468;
    v4 = 0xEC0000006C656261;
    v5 = 0xE500000000000000;
    v6 = 0x6567616D69;
    if (a1 != 7)
    {
      v6 = 0x64656C6261736964;
      v5 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE300000000000000;
    v8 = 7107189;
    if (a1 != 4)
    {
      v8 = 0x6874654D70747468;
      v7 = 0xEA0000000000646FLL;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x6C6562616C627573)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v15 = 0xE500000000000000;
      v16 = 1970037110;
LABEL_35:
      if (v9 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    if (a2)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x6C6562616CLL)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v15 = 0xE200000000000000;
      if (v9 != 25705)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xEC0000006C656261;
        if (v9 != 0x4C6275536C6D7468)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if (a2 != 7)
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x64656C6261736964)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v15 = 0xE500000000000000;
      v16 = 1734438249;
      goto LABEL_35;
    }

    if (a2 == 4)
    {
      v15 = 0xE300000000000000;
      if (v9 != 7107189)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v15 = 0xEA0000000000646FLL;
      if (v9 != 0x6874654D70747468)
      {
LABEL_51:
        v17 = sub_21BA8899C();
        goto LABEL_52;
      }
    }
  }

LABEL_49:
  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v17 = 1;
LABEL_52:

  return v17 & 1;
}

uint64_t sub_21B9C6F4C()
{
  sub_21BA88BAC();
  sub_21B9C6F9C();
  return sub_21BA88BCC();
}

uint64_t sub_21B9C6F9C()
{
  sub_21BA87D8C();
}

uint64_t sub_21B9C70D8()
{
  sub_21BA88BAC();
  sub_21B9C6F9C();
  return sub_21BA88BCC();
}

uint64_t sub_21B9C711C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B9CA0A4();
  *a1 = result;
  return result;
}

uint64_t sub_21B9C714C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B9C6B9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B9C7194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B9CA0A4();
  *a1 = result;
  return result;
}

uint64_t sub_21B9C71C8(uint64_t a1)
{
  v2 = sub_21B9CA30C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9C7204(uint64_t a1)
{
  v2 = sub_21B9CA30C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B9C7240()
{
  v1 = type metadata accessor for SwitchRowElement(0);
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v0)
  {
    v4 = v0[2];
    v5 = v0[3];
    v21 = 0;

    XMLUIData.postbackBinding<A>(_:forKey:default:)(MEMORY[0x277D839B0], v4, v5, &v21, MEMORY[0x277D839B0]);

    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE78);
    MEMORY[0x21CEFCD90](&v21, v9);
    v19 = v21;
    sub_21BA87FEC();

    v10 = sub_21BA87FDC();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    *(v11 + 16) = v10;
    *(v11 + 24) = v12;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
    *(v11 + 48) = v8;
    sub_21B9CA110(v0, &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SwitchRowElement);

    v13 = sub_21BA87FDC();
    v14 = (*(v20 + 80) + 49) & ~*(v20 + 80);
    v15 = v14 + v2;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v12;
    *(v16 + 32) = v6;
    *(v16 + 40) = v7;
    *(v16 + 48) = v8;
    sub_21B9CA428(v3, v16 + v14, type metadata accessor for SwitchRowElement);
    *(v16 + v15) = v19;
    sub_21BA87A7C();

    return v22;
  }

  else
  {
    type metadata accessor for XMLUIData();
    sub_21B9CA3C0(&qword_27CD9BAC8, type metadata accessor for XMLUIData);
    result = sub_21BA86CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B9C750C(_BYTE *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for SwitchRowElement(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27[-v17];
  LOBYTE(v17) = *a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v27[7] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE78);
  sub_21BA87A4C();
  v19 = sub_21BA8801C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_21B9CA110(a5, v15, type metadata accessor for SwitchRowElement);
  sub_21BA87FEC();

  v20 = sub_21BA87FDC();
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v20;
  *(v23 + 24) = v24;
  sub_21B9CA428(v15, v23 + v21, type metadata accessor for SwitchRowElement);
  v25 = v23 + v22;
  *v25 = a2;
  *(v25 + 8) = a3;
  *(v25 + 16) = a4;
  *(v25 + 17) = a6;
  sub_21B9C7AF4(0, 0, v18, &unk_21BA94328, v23);
}

uint64_t sub_21B9C7774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 35) = a8;
  *(v8 + 34) = a7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 56) = sub_21BA87FEC();
  *(v8 + 64) = sub_21BA87FDC();
  type metadata accessor for SwitchRowElement(0);
  v9 = swift_task_alloc();
  *(v8 + 72) = v9;
  v10 = type metadata accessor for URLLoader(0);
  *v9 = v8;
  v9[1] = sub_21B9C7858;

  return URLLoadingCapable.activate()(v10, &protocol witness table for URLLoader);
}

uint64_t sub_21B9C7858()
{
  *(*v1 + 80) = v0;

  v3 = sub_21BA87F9C();
  if (v0)
  {
    v4 = sub_21B9C7A14;
  }

  else
  {
    v4 = sub_21B9C79B4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21B9C79B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B9C7A14()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 35);
  v3 = *(v0 + 34);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);

  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  *(v0 + 33) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE78);
  sub_21BA87A4C();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21B9C7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21B9AFF80(a3, v25 - v10, &qword_27CD9D6B8);
  v12 = sub_21BA8801C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21B9ABAAC(v11, &qword_27CD9D6B8);
  }

  else
  {
    sub_21BA8800C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21BA87F9C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21BA87D5C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21B9ABAAC(a3, &qword_27CD9D6B8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21B9ABAAC(a3, &qword_27CD9D6B8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21B9C7DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for SwitchRowElement(0);
  v4 = v3 - 8;
  v37 = *(v3 - 8);
  v36 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BA86EEC();
  v7 = *(v6 - 8);
  v33 = v6;
  v34 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D620);
  MEMORY[0x28223BE20](v32);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D628);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  MEMORY[0x28223BE20](v12);
  v31 = &v31 - v14;
  sub_21B9C7240();
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D630);
  sub_21B9B35B8(&qword_27CD9D638, &qword_27CD9D630);
  sub_21BA87A1C();
  v15 = *(a1 + *(v4 + 48));
  v16 = a1;
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = v32;
  v20 = &v11[*(v32 + 36)];
  *v20 = KeyPath;
  v20[1] = sub_21B9C675C;
  v20[2] = v18;
  sub_21BA86EDC();
  v21 = sub_21B9CAB08();
  v22 = sub_21B9CA3C0(&qword_27CD9D660, MEMORY[0x277CDDE60]);
  v23 = v31;
  v24 = v33;
  sub_21BA876FC();
  (*(v34 + 8))(v9, v24);
  sub_21B9ABAAC(v11, &qword_27CD9D620);
  v25 = v16;
  v26 = v35;
  sub_21B9CA110(v25, v35, type metadata accessor for SwitchRowElement);
  v27 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v28 = swift_allocObject();
  sub_21B9CA428(v26, v28 + v27, type metadata accessor for SwitchRowElement);
  type metadata accessor for SwitchRowElement.ValueMetadata(0);
  v42 = v19;
  v43 = v24;
  v44 = v21;
  v45 = v22;
  swift_getOpaqueTypeConformance2();
  sub_21B9CA3C0(&qword_27CD9D668, type metadata accessor for SwitchRowElement.ValueMetadata);
  v29 = v38;
  sub_21BA8784C();

  return (*(v39 + 8))(v23, v29);
}

uint64_t sub_21B9C82D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D690);
  MEMORY[0x28223BE20](v43);
  v4 = &v40 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v47 = type metadata accessor for HTMLContentElement(0);
  v41 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for SubLabelElement();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D698);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v44 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  v21 = sub_21BA86F2C();
  MEMORY[0x28223BE20](v21 - 8);
  sub_21BA86F1C();
  sub_21BA86F0C();
  sub_21BA86EFC();
  sub_21BA86F0C();
  sub_21BA86F4C();
  v22 = sub_21BA8765C();
  v45 = v23;
  v46 = v24;
  v42 = v25;
  v26 = type metadata accessor for SwitchRowElement(0);
  sub_21B9AFF80(a1 + *(v26 + 28), v11, &qword_27CD9D5A8);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_21B9CA428(v11, v15, type metadata accessor for SubLabelElement);
    sub_21B9CA110(v15, v4, type metadata accessor for SubLabelElement);
    swift_storeEnumTagMultiPayload();
    sub_21B9CA3C0(&qword_27CD9D6B0, type metadata accessor for SubLabelElement);
    sub_21B9CA3C0(&qword_27CD9E210, type metadata accessor for HTMLContentElement);
    sub_21BA8715C();
    v28 = type metadata accessor for SubLabelElement;
    v29 = v15;
LABEL_6:
    sub_21B9CA360(v29, v28);
    v27 = 0;
    goto LABEL_7;
  }

  sub_21B9ABAAC(v11, &qword_27CD9D5A8);
  sub_21B9AFF80(a1 + *(v26 + 32), v7, &qword_27CD9D5B0);
  if ((*(v41 + 48))(v7, 1, v47) != 1)
  {
    v30 = v7;
    v31 = v40;
    sub_21B9CA428(v30, v40, type metadata accessor for HTMLContentElement);
    sub_21B9CA110(v31, v4, type metadata accessor for HTMLContentElement);
    swift_storeEnumTagMultiPayload();
    sub_21B9CA3C0(&qword_27CD9D6B0, type metadata accessor for SubLabelElement);
    sub_21B9CA3C0(&qword_27CD9E210, type metadata accessor for HTMLContentElement);
    sub_21BA8715C();
    v28 = type metadata accessor for HTMLContentElement;
    v29 = v31;
    goto LABEL_6;
  }

  sub_21B9ABAAC(v7, &qword_27CD9D5B0);
  v27 = 1;
LABEL_7:
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6A0);
  (*(*(v32 - 8) + 56))(v20, v27, 1, v32);
  v33 = v44;
  sub_21B9AFF80(v20, v44, &qword_27CD9D698);
  v34 = v48;
  v36 = v45;
  v35 = v46;
  *v48 = v22;
  v34[1] = v36;
  v37 = v42 & 1;
  *(v34 + 16) = v42 & 1;
  v34[3] = v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6A8);
  sub_21B9AFF80(v33, v34 + *(v38 + 48), &qword_27CD9D698);
  sub_21B9C320C(v22, v36, v37);

  sub_21B9ABAAC(v20, &qword_27CD9D698);
  sub_21B9ABAAC(v33, &qword_27CD9D698);
  sub_21B9C318C(v22, v36, v37);
}

uint64_t sub_21B9C8A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_21B9AFF70(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_21B9C9D44(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_21B9ABAAC(a1, &qword_27CD9E7C0);
    sub_21B9C9838(a2, a3, v9);

    return sub_21B9ABAAC(v9, &qword_27CD9E7C0);
  }

  return result;
}

uint64_t sub_21B9C8AD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for URLLoader(0);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5B0);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v49[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5C0);
  v57 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v49[-v11];
  v13 = type metadata accessor for SwitchRowElement(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for XMLUIData();
  sub_21B9CA3C0(&qword_27CD9BAC8, type metadata accessor for XMLUIData);
  v58 = sub_21BA86D0C();
  v15->_countAndFlagsBits = v58;
  v15->_object = v16;
  v61 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B9CA30C();
  v17 = countAndFlagsBits;
  sub_21BA88C0C();
  v59 = v13;
  v85 = a1;
  if (v17)
  {
    countAndFlagsBits = v17;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v85);
  }

  v52 = v10;
  v53 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = Decoder.decodeRUIID()();
  if (v18)
  {
    countAndFlagsBits = v18;
    (*(v57 + 8))(v53, v52);
    goto LABEL_5;
  }

  v21 = v61;
  v61[1] = v19;
  LOBYTE(v76) = 1;

  v22 = sub_21BA887BC();
  countAndFlagsBits = v19._countAndFlagsBits;
  object = v19._object;
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v23)
  {
    v25 = v23;
  }

  v21[2]._countAndFlagsBits = v24;
  v21[2]._object = v25;
  type metadata accessor for SubLabelElement();
  LOBYTE(v76) = 3;
  sub_21B9CA3C0(&qword_27CD9D5D0, type metadata accessor for SubLabelElement);
  sub_21BA887EC();
  v26 = v13;
  sub_21B9AB6D4(v9, v21 + *(v13 + 28), &qword_27CD9D5A8);
  LOBYTE(v76) = 2;
  v27 = sub_21BA887CC();
  v28 = a1[3];
  v50 = v27;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  Decoder.ruiDecodingContext.getter();
  v29 = *(&v62 + 1);
  v71 = v62;
  v72 = v63;
  v30 = DecodingContext.xmlUIData.getter();

  *(&v77 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v29) = v50 & 1;
  LOBYTE(v76) = v50 & 1;
  v31 = (*(*v30 + 136))(v73);
  sub_21B9C8A00(&v76, countAndFlagsBits, object);
  v31(v73, 0);

  v32 = v21 + v26[13];
  sub_21BA8654C();
  v32[*(type metadata accessor for SwitchRowElement.ValueMetadata(0) + 20)] = v29;
  type metadata accessor for HTMLContentElement(0);
  v75 = 6;
  sub_21B9CA3C0(&qword_27CD9D5D8, type metadata accessor for HTMLContentElement);
  v33 = v56;
  sub_21BA887EC();
  sub_21B9AB6D4(v33, v21 + v26[8], &qword_27CD9D5B0);
  v34 = v85;
  sub_21B9B3220(v85, &v71);
  RUIImageView.init(from:)(&v71, v73);
  v35 = v26;
  v68 = v73[6];
  v69 = v73[7];
  v70[0] = *v74;
  *(v70 + 9) = *&v74[9];
  v64 = v73[2];
  v65 = v73[3];
  v66 = v73[4];
  v67 = v73[5];
  v62 = v73[0];
  v63 = v73[1];
  nullsub_1(&v62);
  v82 = v68;
  v83 = v69;
  v84[0] = v70[0];
  *(v84 + 9) = *(v70 + 9);
  v78 = v64;
  v79 = v65;
  v80 = v66;
  v81 = v67;
  v76 = v62;
  v77 = v63;
  v36 = v54;
  v37 = v55;
  v38 = (&v21->_countAndFlagsBits + v26[9]);
  v39 = v69;
  v38[6] = v68;
  v38[7] = v39;
  v38[8] = v84[0];
  *(v38 + 137) = *(v84 + 9);
  v40 = v79;
  v38[2] = v78;
  v38[3] = v40;
  v41 = v81;
  v38[4] = v80;
  v38[5] = v41;
  v42 = v77;
  *v38 = v76;
  v38[1] = v42;
  sub_21B9B3220(v34, v73);
  URLLoader.init(from:defaultHTTPMethod:)(v73, 1414745936, 0xE400000000000000, v36);
  v43 = v57;
  v44 = v21 + v35[11];
  sub_21B9CA428(v36, v44, type metadata accessor for URLLoader);
  *(v44 + *(type metadata accessor for URLLoadingParameters(0) + 40)) = 0;
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  *(&v21->_countAndFlagsBits + v35[12]) = Decoder.decodeRUIAttributeDictionary()();
  LOBYTE(v73[0]) = 8;
  v45 = v52;
  v46 = v53;
  LOBYTE(v44) = sub_21BA887CC();
  (*(v43 + 8))(v46, v45);
  v47 = v44 & 1;
  v48 = v61;
  *(&v61->_countAndFlagsBits + v35[10]) = v47;
  sub_21B9CA110(v48, v37, type metadata accessor for SwitchRowElement);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_21B9CA360(v48, type metadata accessor for SwitchRowElement);
}

uint64_t sub_21B9C95D0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21BA86FEC();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5B8);
  return sub_21B9C7DF4(v1, a1 + *(v3 + 44));
}

uint64_t sub_21B9C963C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_21B9C9648(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21B9C9740;

  return v6(a1);
}

uint64_t sub_21B9C9740()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_21B9C9838@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21B940DCC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B9C9F00();
      v10 = v12;
    }

    sub_21B9AFF70((*(v10 + 56) + 32 * v8), a3);
    sub_21B9C9B94(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21B9C98DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E260);
  v33 = a2;
  result = sub_21BA8871C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_21B9AFF70(v24, v34);
      }

      else
      {
        sub_21B9AFDF0(v24, v34);
      }

      sub_21BA88BAC();
      sub_21BA87D8C();
      result = sub_21BA88BCC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_21B9AFF70(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21B9C9B94(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BA884AC() + 1) & ~v5;
    do
    {
      sub_21BA88BAC();

      sub_21BA87D8C();
      v10 = sub_21BA88BCC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_21B9C9D44(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21B940DCC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21B9C9F00();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21B9C98DC(v16, a4 & 1);
    v11 = sub_21B940DCC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21BA88B0C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_21B9AFF70(a1, v22);
  }

  else
  {
    sub_21B9C9E94(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_21B9C9E94(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21B9AFF70(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_21B9C9F00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E260);
  v2 = *v0;
  v3 = sub_21BA8870C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21B9AFDF0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21B9AFF70(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21B9CA0A4()
{
  v0 = sub_21BA8875C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21B9CA110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B9CA1D0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_21B9CA1E8(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 != 2 && a5 != 3)
    {
      return;
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {
    }

    return;
  }
}

uint64_t sub_21B9CA274(_BYTE *a1)
{
  v3 = *(type metadata accessor for SwitchRowElement(0) - 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = v1 + ((*(v3 + 80) + 49) & ~*(v3 + 80));
  v8 = *(v7 + *(v3 + 64));

  return sub_21B9C750C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_21B9CA30C()
{
  result = qword_27CD9D5C8;
  if (!qword_27CD9D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D5C8);
  }

  return result;
}

uint64_t sub_21B9CA360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B9CA3C0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_21B9CA408(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_21B9CA428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21B9CA494()
{
  result = qword_27CD9D5E0;
  if (!qword_27CD9D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D5E0);
  }

  return result;
}

unint64_t sub_21B9CA4EC()
{
  result = qword_27CD9D5E8;
  if (!qword_27CD9D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D5E8);
  }

  return result;
}

unint64_t sub_21B9CA544()
{
  result = qword_27CD9D5F0;
  if (!qword_27CD9D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D5F0);
  }

  return result;
}

uint64_t sub_21B9CA598(void *a1)
{
  a1[1] = sub_21B9CA3C0(&qword_27CD9D5F8, type metadata accessor for SwitchRowElement);
  a1[2] = sub_21B9CA3C0(&qword_27CD9D600, type metadata accessor for SwitchRowElement);
  result = sub_21B9CA3C0(&qword_27CD9D608, type metadata accessor for SwitchRowElement);
  a1[3] = result;
  return result;
}

void sub_21B9CA688()
{
  sub_21B9B3C7C();
  if (v0 <= 0x3F)
  {
    sub_21B9CA7D4(319, &qword_27CD9BB50, type metadata accessor for SubLabelElement);
    if (v1 <= 0x3F)
    {
      sub_21B9CA7D4(319, &unk_27CD9BB10, type metadata accessor for HTMLContentElement);
      if (v2 <= 0x3F)
      {
        sub_21B9405D4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for URLLoader(319);
          if (v4 <= 0x3F)
          {
            sub_21B94010C();
            if (v5 <= 0x3F)
            {
              type metadata accessor for SwitchRowElement.ValueMetadata(319);
              if (v6 <= 0x3F)
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

void sub_21B9CA7D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BA883CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21B9CA850()
{
  result = sub_21BA8655C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SwitchRowElement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SwitchRowElement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21B9CAA14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9DD50);
  sub_21B9B35B8(&qword_27CD9D678, &qword_27CD9D670);
  sub_21B9CAE34();
  return sub_21BA8794C();
}

unint64_t sub_21B9CAB08()
{
  result = qword_27CD9D640;
  if (!qword_27CD9D640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D620);
    sub_21B9B35B8(&qword_27CD9D648, &qword_27CD9D650);
    sub_21B9B35B8(&unk_27CD9DE20, &qword_27CD9D658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D640);
  }

  return result;
}

uint64_t sub_21B9CABEC()
{
  v1 = type metadata accessor for SwitchRowElement(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2 + *(v1 + 52);
    v7 = v6[*(type metadata accessor for SwitchRowElement.ValueMetadata(0) + 20)];
    v13 = MEMORY[0x277D839B0];
    v12[0] = v7;
    v8 = *(*v3 + 136);

    v9 = v8(v11);
    sub_21B9C8A00(v12, v4, v5);
    v9(v11, 0);
  }

  else
  {
    type metadata accessor for XMLUIData();
    sub_21B9CA3C0(&qword_27CD9BAC8, type metadata accessor for XMLUIData);
    result = sub_21BA86CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B9CAD70@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = (v3 + *(type metadata accessor for SwitchRowElement(0) + 36));
  v5 = v4[6];
  v6 = v4[7];
  v7 = v4[8];
  *(v19 + 9) = *(v4 + 137);
  v18[7] = v6;
  v19[0] = v7;
  v18[6] = v5;
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[5];
  v18[4] = v4[4];
  v18[5] = v10;
  v18[2] = v8;
  v18[3] = v9;
  v11 = v4[1];
  v18[0] = *v4;
  v18[1] = v11;
  v12 = v4[7];
  a1[6] = v4[6];
  a1[7] = v12;
  a1[8] = v4[8];
  *(a1 + 137) = *(v4 + 137);
  v13 = v4[3];
  a1[2] = v4[2];
  a1[3] = v13;
  v14 = v4[5];
  a1[4] = v4[4];
  a1[5] = v14;
  v15 = v4[1];
  *a1 = *v4;
  a1[1] = v15;
  return sub_21B9AFF80(v18, &v17, &unk_27CD9DD50);
}

unint64_t sub_21B9CAE34()
{
  result = qword_27CD9D680;
  if (!qword_27CD9D680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CD9DD50);
    sub_21B9CAEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D680);
  }

  return result;
}

unint64_t sub_21B9CAEB8()
{
  result = qword_27CD9D688;
  if (!qword_27CD9D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D688);
  }

  return result;
}

uint64_t sub_21B9CAF0C()
{
  v2 = *(type metadata accessor for SwitchRowElement(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 17);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_21B9AC1F4;

  return sub_21B9C7774(v9, v10, v11, v0 + v3, v5, v6, v7, v8);
}

uint64_t sub_21B9CB02C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B9AC2E8;

  return sub_21B9C9648(a1, v4);
}

uint64_t sub_21B9CB0E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B9AC1F4;

  return sub_21B9C9648(a1, v4);
}

uint64_t sub_21B9CB1A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_21BA862DC();
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HTMLContent(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v37;
  sub_21BA88BEC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = a1;
  v29 = v14;
  v30 = v8;
  v31 = v11;
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v17 = sub_21BA889BC();
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  Decoder.ruiDecodingContext.getter();
  v18 = v34;
  v19 = v35;

  sub_21B9AFF80(v18 + OBJC_IVAR____TtC8RemoteUI14ResourceLoader_baseURL, v5, &qword_27CD9DBA0);

  v20 = v30;
  sub_21B9B7478(v17, v30);

  sub_21B9ABAAC(v5, &qword_27CD9DBA0);
  v21 = v32;
  v22 = *(v32 + 48);
  v23 = v9;
  if (v22(v20, 1, v9) == 1)
  {
    v24 = v31;
    sub_21BA862CC();
    v25 = v22(v20, 1, v23);
    v26 = v33;
    v27 = v29;
    if (v25 != 1)
    {
      sub_21B9ABAAC(v20, &qword_27CD9D6C0);
    }
  }

  else
  {
    v24 = v31;
    (*(v21 + 32))(v31, v20, v23);
    v26 = v33;
    v27 = v29;
  }

  (*(v21 + 32))(v27, v24, v23);
  __swift_destroy_boxed_opaque_existential_1(v36);
  sub_21B9CCB40(v27, v26, type metadata accessor for HTMLContent);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t (*sub_21B9CB5C4())()
{
  sub_21B9CB630();
  sub_21BA86EAC();
  *(swift_allocObject() + 16) = v1;
  return sub_21B9CB684;
}

unint64_t sub_21B9CB630()
{
  result = qword_27CDA3DA0[0];
  if (!qword_27CDA3DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA3DA0);
  }

  return result;
}

uint64_t sub_21B9CB6AC()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_21BA8820C();
    v6 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9CA1D0(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_21B9CB7FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BA0F4DC();
  *a1 = result;
  return result;
}

double sub_21B9CB854@<D0>(_OWORD *a1@<X8>)
{
  sub_21B9CB630();
  sub_21BA86EAC();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21B9CB8A4()
{
  sub_21B9CB630();

  return sub_21BA86EBC();
}

uint64_t sub_21B9CB904(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4C6275536C6D7468;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xEC0000006C656261;
  }

  if (*a2)
  {
    v5 = 0x4C6275536C6D7468;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xEC0000006C656261;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BA8899C();
  }

  return v8 & 1;
}

uint64_t sub_21B9CB9A8()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21B9CBA28()
{
  sub_21BA87D8C();
}

uint64_t sub_21B9CBA94()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21B9CBB10@<X0>(char *a1@<X8>)
{
  v2 = sub_21BA8875C();

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

void sub_21B9CBB70(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x4C6275536C6D7468;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xEC0000006C656261;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21B9CBBAC()
{
  if (*v0)
  {
    return 0x4C6275536C6D7468;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21B9CBBE4@<X0>(char *a1@<X8>)
{
  v2 = sub_21BA8875C();

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

uint64_t sub_21B9CBC48(uint64_t a1)
{
  v2 = sub_21B9CD25C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9CBC84(uint64_t a1)
{
  v2 = sub_21B9CD25C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B9CBCE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6C8);
  MEMORY[0x28223BE20](v73);
  v62 = (&v59 - v3);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6D0);
  MEMORY[0x28223BE20](v69);
  v71 = &v59 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6D8);
  v66 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v65 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v70 = &v59 - v8;
  v9 = sub_21BA86E9C();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6C0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  v18 = sub_21BA862DC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v67 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v74 = &v59 - v22;
  v68 = type metadata accessor for HTMLContentElement(0);
  sub_21B9AFF80(v2 + *(v68 + 32), v15, &qword_27CD9D6C0);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    sub_21B9ABAAC(v15, &qword_27CD9D6C0);
    (*(v19 + 56))(v17, 1, 1, v18);
    sub_21B9ABAAC(v17, &qword_27CD9D6C0);
    return (*(v7 + 56))(v75, 1, 1, v6);
  }

  else
  {
    v60 = v7;
    v61 = v6;
    v59 = *(v19 + 32);
    v59(v17, v15, v18);
    v24 = *(v2 + 16);
    v25 = v2;
    if (*(v2 + 32) == 1)
    {
    }

    else
    {

      sub_21BA8820C();
      v26 = sub_21BA8740C();
      sub_21BA8670C();

      sub_21BA86E8C();
      swift_getAtKeyPath();
      sub_21B9CA1DC();
      (*(v63 + 8))(v11, v64);
      v24 = v76;
    }

    v27 = v74;
    v24(v17);

    (*(v19 + 56))(v17, 0, 1, v18);
    v28 = (v59)(v27, v17, v18);
    if ((_sSo11RUIPlatformC8RemoteUIE17isSolariumEnabledSbvgZ_0(v28, v29) & 1) != 0 || (v30 = sub_21B9CB6AC(), v31 = sub_21B9CC538(2, v30), , v31))
    {
      (*(v19 + 16))(v67, v27, v18);
      v32 = sub_21BA8766C();
      v34 = v33;
      v76 = v32;
      v77 = v33;
      v35 = v25;
      v37 = v36 & 1;
      v78 = v36 & 1;
      v79 = v38;
      v39 = MEMORY[0x277CE0BD0];
      v40 = MEMORY[0x277CE0BC0];
      v41 = v65;
      sub_21BA1B8C0(v35 + *(v68 + 28), MEMORY[0x277CE0BD0], MEMORY[0x277CE0BC0]);
      sub_21B9C318C(v32, v34, v37);

      v42 = v66;
      v43 = v72;
      (*(v66 + 16))(v71, v41, v72);
      swift_storeEnumTagMultiPayload();
      v76 = v39;
      v77 = v40;
      swift_getOpaqueTypeConformance2();
      sub_21B9CC5BC();
      v44 = v70;
      sub_21BA8715C();
      (*(v42 + 8))(v41, v43);
    }

    else
    {
      v45 = sub_21BA86FDC();
      v46 = v62;
      *v62 = v45;
      *(v46 + 8) = 0;
      *(v46 + 16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6E8);
      (*(v19 + 16))(v67, v27, v18);
      v47 = sub_21BA8766C();
      v49 = v48;
      v76 = v47;
      v77 = v48;
      v50 = v25;
      v52 = v51 & 1;
      v78 = v51 & 1;
      v79 = v53;
      v54 = MEMORY[0x277CE0BD0];
      v55 = MEMORY[0x277CE0BC0];
      sub_21BA1B8C0(v50 + *(v68 + 28), MEMORY[0x277CE0BD0], MEMORY[0x277CE0BC0]);
      sub_21B9C318C(v47, v49, v52);

      sub_21B94407C(v46, v71);
      swift_storeEnumTagMultiPayload();
      v76 = v54;
      v77 = v55;
      swift_getOpaqueTypeConformance2();
      sub_21B9CC5BC();
      v44 = v70;
      sub_21BA8715C();
      sub_21B9440EC(v46);
    }

    v56 = v75;
    v58 = v60;
    v57 = v61;
    sub_21B944154(v44, v75);
    (*(v58 + 56))(v56, 0, 1, v57);
    return (*(v19 + 8))(v74, v18);
  }
}

BOOL sub_21B9CC538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_21B9CD2B0();
  }

  while ((sub_21BA87C7C() & 1) == 0);
  return v4 != 0;
}

unint64_t sub_21B9CC5BC()
{
  result = qword_27CD9D6F0;
  if (!qword_27CD9D6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D6F0);
  }

  return result;
}

uint64_t sub_21B9CC620@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for URLLoader(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for HTMLContentElement(0);
  MEMORY[0x28223BE20](v35);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *v16 = KeyPath;
  v16[8] = 0;
  v36 = swift_getKeyPath();
  *(v16 + 2) = v36;
  *(v16 + 3) = 0;
  v16[32] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = Decoder.decodeRUIID()();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v31 = v5;
    v32 = v9;
    v33 = v11;
    *(v16 + 40) = v17;
    sub_21B9B3220(a1, v39);
    URLLoader.init(from:)(v39, v14);
    sub_21B9CCB40(v14, &v16[*(v35 + 28)], type metadata accessor for URLLoader);
    v19 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21BA88BEC();
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    KeyPath = sub_21BA889BC();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    Decoder.ruiDecodingContext.getter();
    v21 = v37;
    v22 = v38;

    v23 = v31;
    sub_21B9AFF80(v21 + OBJC_IVAR____TtC8RemoteUI14ResourceLoader_baseURL, v31, &qword_27CD9DBA0);

    v24 = v32;
    sub_21B9B7478(KeyPath, v32);

    sub_21B9ABAAC(v23, &qword_27CD9DBA0);
    v25 = sub_21BA862DC();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (v27(v24, 1, v25) == 1)
    {
      v28 = v33;
      sub_21BA862CC();
      v29 = v27(v24, 1, v25);
      v30 = v34;
      if (v29 != 1)
      {
        sub_21B9ABAAC(v24, &qword_27CD9D6C0);
      }
    }

    else
    {
      v28 = v33;
      (*(v26 + 32))(v33, v24, v25);
      v30 = v34;
    }

    (*(v26 + 56))(v28, 0, 1, v25);
    sub_21B9CCBA8(v28, &v16[*(v35 + 32)]);
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_21B9CCC18(v16, v30, type metadata accessor for HTMLContentElement);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return sub_21B9CCC80(v16, type metadata accessor for HTMLContentElement);
  }
}

uint64_t sub_21B9CCB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B9CCBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9CCC18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B9CCC80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21B9CCCE4()
{
  result = qword_27CD9D6F8;
  if (!qword_27CD9D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D6F8);
  }

  return result;
}

unint64_t sub_21B9CCD3C()
{
  result = qword_27CD9D700;
  if (!qword_27CD9D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D700);
  }

  return result;
}

unint64_t sub_21B9CCD94()
{
  result = qword_27CD9D708;
  if (!qword_27CD9D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D708);
  }

  return result;
}

uint64_t sub_21B9CCDE8(void *a1)
{
  a1[1] = sub_21B9CCE74(&qword_27CD9D5D8);
  a1[2] = sub_21B9CCE74(&qword_27CD9D710);
  result = sub_21B9CCE74(&qword_27CD9E210);
  a1[3] = result;
  return result;
}

uint64_t sub_21B9CCE74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HTMLContentElement(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B9CCEF0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t sub_21B9CCF24()
{
  result = sub_21BA862DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21B9CCFB8()
{
  sub_21B93FC24(319, &qword_27CD9BC58, &qword_27CD9D718);
  if (v0 <= 0x3F)
  {
    sub_21B93FC24(319, &qword_27CD9BC38, &qword_27CD9D720);
    if (v1 <= 0x3F)
    {
      type metadata accessor for URLLoader(319);
      if (v2 <= 0x3F)
      {
        sub_21B9CD0A4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21B9CD0A4()
{
  if (!qword_27CD9BCB0)
  {
    sub_21BA862DC();
    v0 = sub_21BA883CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9BCB0);
    }
  }
}

unint64_t sub_21B9CD10C()
{
  result = qword_27CD9D728;
  if (!qword_27CD9D728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D730);
    sub_21B9CD190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D728);
  }

  return result;
}

unint64_t sub_21B9CD190()
{
  result = qword_27CD9D738;
  if (!qword_27CD9D738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D6E0);
    swift_getOpaqueTypeConformance2();
    sub_21B9CC5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D738);
  }

  return result;
}

unint64_t sub_21B9CD25C()
{
  result = qword_27CD9D740;
  if (!qword_27CD9D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D740);
  }

  return result;
}

unint64_t sub_21B9CD2B0()
{
  result = qword_27CD9D748;
  if (!qword_27CD9D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D748);
  }

  return result;
}

uint64_t sub_21B9CD334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B9CD78C();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

uint64_t sub_21B9CD398()
{
  sub_21B9CD3E0();

  return sub_21BA86EAC();
}

unint64_t sub_21B9CD3E0()
{
  result = qword_27CDA4410;
  if (!qword_27CDA4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDA4410);
  }

  return result;
}

uint64_t sub_21B9CD454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B9CD4C8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = sub_21BA864AC();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 1, 1, v5);
}

uint64_t sub_21B9CD588@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_21B9AACF0(v6, a3);
}

uint64_t sub_21B9CD5F8()
{
  sub_21B9CD640();

  return sub_21BA86EAC();
}

unint64_t sub_21B9CD640()
{
  result = qword_27CDA4418[0];
  if (!qword_27CDA4418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA4418);
  }

  return result;
}

uint64_t sub_21B9CD6B4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21B9AACF0(a1, &v8 - v5);
  a2(v6);
  sub_21BA86EBC();
  return sub_21B9CD454(a1);
}

unint64_t sub_21B9CD78C()
{
  result = qword_27CD9D750;
  if (!qword_27CD9D750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DBA0);
    sub_21B9CD810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D750);
  }

  return result;
}

unint64_t sub_21B9CD810()
{
  result = qword_27CD9D758;
  if (!qword_27CD9D758)
  {
    sub_21BA864AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D758);
  }

  return result;
}

void sub_21B9CD86C(void *a1)
{
  v2 = a1;
  if (_sSo11RUIPlatformC8RemoteUIE17isSolariumEnabledSbvgZ_0(v2, v1))
  {
    [v2 _setPrefersNoPlatter_];
  }
}

uint64_t sub_21B9CD8C0()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 24);
  v5 = *(v0 + 16);
  v10 = v5;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    sub_21BA8820C();
    v7 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9ABAAC(&v10, &qword_27CD9D768);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_21B9CDA54(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void *sub_21B9CDAEC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_21B9CDB30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

id sub_21B9CDB78()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_21B9CDBBC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_21B9CDC54()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_21B9CDC9C()
{
  v0 = swift_allocObject();
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = 0;
  sub_21B9FD000(MEMORY[0x277CE1420]);
  v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D778));
  v0[4] = sub_21BA8706C();
  return v0;
}

void *sub_21B9CDD24()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 160);
  v5 = *(v0 + 152);
  v10 = v5;
  if (v11 == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_21BA8820C();
    v7 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9ABAAC(&v10, &unk_27CD9DD30);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_21B9CDEB0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.ruiObjectModel.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21B9CDEDC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return EnvironmentValues.ruiObjectModel.setter(v1);
}

void *sub_21B9CDF0C()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 176);
  v5 = *(v0 + 168);
  v10 = v5;
  if (v11 == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_21BA8820C();
    v7 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9ABAAC(&v10, &unk_27CD9DB00);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void sub_21B9CE098()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BA884DC())
  {
    v35 = v2 & 0xFFFFFFFFFFFFFF8;
    v36 = v2 & 0xC000000000000001;
    v4 = MEMORY[0x277D85000];
    v5 = 4;
    v33 = i;
    v34 = v2;
    while (1)
    {
      v22 = v5 - 4;
      if (v36)
      {
        v23 = MEMORY[0x21CEFD920](v5 - 4, v2);
      }

      else
      {
        if (v22 >= *(v35 + 16))
        {
          goto LABEL_14;
        }

        v23 = *(v2 + 8 * v5);
      }

      v24 = v23;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v25 = sub_21B9CDF0C();
      (*((*v4 & *v24) + 0x1A0))(v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D790);
      v26 = sub_21BA873FC();
      v27 = (*(*v38[0] + 104))(v26);

      if (*(v27 + 16) <= v22)
      {
        goto LABEL_15;
      }

      v37 = v5 - 3;
      v28 = *(v27 + 8 * v5);
      v29 = v28;

      if (v28)
      {
        v30 = *((*v4 & *v24) + 0x180);
        v31 = v29;
        v30();
        v32 = sub_21BA87C8C();

        [v31 setAccessibilityIdentifier_];
      }

      v6 = swift_allocObject();
      v7 = *(v1 + 144);
      *(v6 + 144) = *(v1 + 128);
      *(v6 + 160) = v7;
      *(v6 + 176) = *(v1 + 160);
      *(v6 + 192) = *(v1 + 176);
      v8 = *(v1 + 80);
      *(v6 + 80) = *(v1 + 64);
      *(v6 + 96) = v8;
      v9 = *(v1 + 112);
      *(v6 + 112) = *(v1 + 96);
      *(v6 + 128) = v9;
      v10 = *(v1 + 16);
      *(v6 + 16) = *v1;
      *(v6 + 32) = v10;
      v11 = *(v1 + 48);
      *(v6 + 48) = *(v1 + 32);
      *(v6 + 64) = v11;
      *(v6 + 200) = v28;
      v12 = *((*v4 & *v24) + 0xF8);
      v13 = v29;
      sub_21B9D13E8(v1, v38);
      v12(sub_21B9D13DC, v6);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = *((*v4 & *v24) + 0x110);

      v15(sub_21B9D1420, v14);

      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = *((*v4 & *v24) + 0x128);

      v17(sub_21B9D142C, v16);

      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = *((*v4 & *v24) + 0x1C8);

      v19(sub_21B9D14AC, v18);

      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = *((*v4 & *v24) + 0x1E0);

      v21(sub_21B9D150C, v20);

      ++v5;
      v2 = v34;
      if (v37 == v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_21B9CE5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BA86E9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 160);
  v10 = *(a2 + 152);
  v15 = v10;
  if (v16 != 1)
  {

    sub_21BA8820C();
    v12 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9ABAAC(&v15, &unk_27CD9DD30);
    (*(v7 + 8))(v9, v6);
    v10 = aBlock[0];
    if (!aBlock[0])
    {
      return;
    }

    goto LABEL_5;
  }

  v11 = v10;
  if (v10)
  {
LABEL_5:
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B9CE7B4;
    aBlock[3] = &block_descriptor_1;
    v13 = _Block_copy(aBlock);
    [v10 activateElement:a1 sender:a3 completion:v13];
    _Block_release(v13);
  }
}

void sub_21B9CE7B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_21B9CE82C(void *a1)
{
  v2 = v1;
  v4 = sub_21BA871BC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D780);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D788);
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  sub_21B9CE098();
  v13 = [a1 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  [v13 setBackgroundColor_];

  v15 = *(v1 + 72);
  if (v15)
  {
    v16 = [objc_opt_self() symbolConfiguration];
    if (v16)
    {
      v17 = v16;
      v18 = [v15 imageByApplyingSymbolConfiguration_];

      if (v18)
      {
        v19 = [a1 headerView];
        [v19 setIcon:v18 accessibilityLabel:0];
      }

      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return;
  }

LABEL_6:
  v20 = *(v2 + 88);
  if (v20)
  {
    v21 = v20;
    v22 = [a1 headerView];
    [v22 setTintColor_];
  }

  if (!*(v2 + 112))
  {
    v36 = *(v2 + 104);
    v23 = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D790);
    v24 = sub_21BA873FC();
    v35 = (*(*v42 + 152))(v24);

    v42 = v23;
    sub_21B9CD8C0();
    v25 = type metadata accessor for ActivityIndicatorManager(0);
    v26 = sub_21B9D1684(&qword_27CD9D770, type metadata accessor for ActivityIndicatorManager);
    v27 = MEMORY[0x277CE11D0];
    v28 = MEMORY[0x277CE11B8];
    sub_21BA876EC();

    v29 = sub_21BA8742C();
    sub_21BA871AC();
    v42 = v27;
    v43 = v25;
    v44 = v28;
    v45 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CEFCA80](v29, 0, 0, v6, v7, OpaqueTypeConformance2);
    (*(v40 + 8))(v6, v41);
    (*(v37 + 8))(v9, v7);
    v42 = v7;
    v43 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v31 = v39;
    v32 = sub_21B9FD000(v39);
    (*(v38 + 8))(v12, v31);
    v42 = v32;
    v33 = v35;
    sub_21BA8707C();

    sub_21B9D0D94(v36, 0);
  }
}

void sub_21B9CED04(uint64_t a1)
{
  v2 = v1;
  v87 = sub_21BA86E9C();
  v91 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BA873DC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D780);
  v95 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v84 - v7;
  v9 = (*(v1 + 136))(v1);
  v10 = [v9 headerView];
  [v10 setAllowFullWidthIcon_];

  v84 = v9;
  [v9 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen_];
  v11 = *(v2 + 104);
  v12 = *(v2 + 112);
  v89 = a1;
  v90 = v2;
  if (!v12)
  {
    LODWORD(v92) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D790);
    v24 = sub_21BA873FC();
    v94 = (*(*v108 + 152))(v24);

    v93 = v11;
    *&v108 = v11;
    sub_21B9CD8C0();
    v25 = type metadata accessor for ActivityIndicatorManager(0);
    v26 = sub_21B9D1684(&qword_27CD9D770, type metadata accessor for ActivityIndicatorManager);
    v27 = MEMORY[0x277CE11D0];
    v28 = MEMORY[0x277CE11B8];
    sub_21BA876EC();

    *&v108 = v27;
    *(&v108 + 1) = v25;
    *&v109 = v28;
    *(&v109 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    v29 = sub_21B9FD000(v6);
    (*(v95 + 8))(v8, v6);
    *&v108 = v29;
    v30 = v94;
    sub_21BA8707C();
    sub_21BA873CC();
    sub_21BA8703C();
    v31 = v84;
    v32 = v30;
    [v31 addChildViewController_];
    v33 = [v31 contentView];
    v34 = [v32 view];
    if (!v34)
    {
      goto LABEL_58;
    }

    v35 = v34;
    [v33 addSubview_];

    v36 = [v32 view];
    if (!v36)
    {
LABEL_59:
      __break(1u);
      return;
    }

    v37 = [v31 contentView];
    sub_21B9D0184(v37);

    [v32 didMoveToParentViewController_];
    v2 = v90;
    v11 = v93;
    LOBYTE(v12) = v92;
    goto LABEL_10;
  }

  if (v12 == 1)
  {
    v13 = *(v11 + 16);

    v14 = v84;
    if (v13)
    {
      v15 = (v11 + 32);
      do
      {
        v16 = *v15;
        v17 = v15[2];
        v109 = v15[1];
        v110 = v17;
        v108 = v16;
        v18 = v15[3];
        v19 = v15[4];
        v20 = v15[6];
        v113 = v15[5];
        v114 = v20;
        v111 = v18;
        v112 = v19;
        v21 = v15[7];
        v22 = v15[8];
        v23 = v15[10];
        v117 = v15[9];
        v118 = v23;
        v115 = v21;
        v116 = v22;
        v104 = v15[7];
        v105 = v15[8];
        v106 = v15[9];
        v107 = v15[10];
        v100 = v15[3];
        v101 = v15[4];
        v102 = v15[5];
        v103 = v15[6];
        v97 = *v15;
        v98 = v15[1];
        v99 = v15[2];
        sub_21B9D0DD4(&v108, v96);
        sub_21B9CFA7C(&v97, v14);
        v96[8] = v105;
        v96[9] = v106;
        v96[10] = v107;
        v96[4] = v101;
        v96[5] = v102;
        v96[6] = v103;
        v96[7] = v104;
        v96[0] = v97;
        v96[1] = v98;
        v96[2] = v99;
        v96[3] = v100;
        sub_21B9D0E30(v96);
        v15 += 11;
        --v13;
      }

      while (v13);
    }

LABEL_10:
    sub_21B9D0D94(v11, v12);
  }

  v38 = v2;
  v39 = *(v2 + 96);
  v40 = MEMORY[0x277D85000];
  v41 = v84;
  if (v39)
  {
    v42 = v39;
    v43 = sub_21B9CDD24();
    (*((*v40 & *v42) + 0x78))(v43);
    v44 = [v41 headerView];
    v45 = (*((*v40 & *v42) + 0x90))();
    [v44 addAccessoryButton_];
  }

  v46 = [v41 buttonTray];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D790);
  sub_21BA873FC();
  v47 = *(*v108 + 136);
  v92 = v46;
  v47(v46);

  v48 = *(v38 + 64);
  if (v48 >> 62)
  {
LABEL_50:
    v49 = sub_21BA884DC();
    if (v49)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49)
    {
LABEL_15:
      v50 = 0;
      v93 = v49;
      v94 = v48 & 0xC000000000000001;
      v88 = v48 & 0xFFFFFFFFFFFFFF8;
      v85 = (v91 + 8);
      v91 = v48;
      while (1)
      {
        if (v94)
        {
          v56 = MEMORY[0x21CEFD920](v50, v48);
        }

        else
        {
          if (v50 >= *(v88 + 16))
          {
            goto LABEL_49;
          }

          v56 = *(v48 + 8 * v50 + 32);
        }

        v57 = v56;
        v58 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v59 = (*((*v40 & *v56) + 0x138))();
        if (v59 > 1)
        {
          break;
        }

        if (!v59)
        {
          goto LABEL_33;
        }

        v60 = [objc_opt_self() linkButton];
        v61 = *((*v40 & *v57) + 0x1B0);
        v62 = v61();
        if (v62)
        {
          v63 = v62;
          [v60 setTintColor_];
        }

        v64 = (*((*v40 & *v57) + 0x1B8))();
        if (v64)
        {
          v65 = v64;
          [v60 setTitleColor:v64 forState:0];
LABEL_47:

          goto LABEL_17;
        }

        v78 = v61();
        if (v78)
        {
          v65 = v78;
          [v60 setTintColor_];
          goto LABEL_47;
        }

LABEL_17:
        v51 = v60;
        (*((*v40 & *v57) + 0xD8))([v51 addTarget:v57 action:sel_tappedWithSender_ forControlEvents:64]);
        v52 = sub_21BA87C8C();

        [v51 setTitle:v52 forState:0];

        [v92 addButton_];
        sub_21BA873FC();
        v53 = (*(**&v96[0] + 120))(&v108);
        v55 = v54;
        MEMORY[0x21CEFD240]();
        if (*(*v55 + 16) >= *(*v55 + 24) >> 1)
        {
          sub_21BA87F3C();
        }

        sub_21BA87F6C();
        v53(&v108, 0);

        v40 = MEMORY[0x277D85000];
        v48 = v91;
LABEL_20:
        ++v50;
        if (v58 == v93)
        {
          goto LABEL_51;
        }
      }

      if (v59 != 2)
      {
        sub_21BA873FC();
        v71 = (*(**&v96[0] + 120))(&v108);
        v73 = v72;
        MEMORY[0x21CEFD240]();
        if (*(*v73 + 16) >= *(*v73 + 24) >> 1)
        {
          sub_21BA87F3C();
          v48 = v91;
        }

        sub_21BA87F6C();
        v71(&v108, 0);

        goto LABEL_20;
      }

LABEL_33:
      v60 = [objc_opt_self() boldButton];
      v66 = *((*v40 & *v57) + 0x1B0);
      v67 = v66();
      if (v67)
      {
        v68 = v67;
        [v60 setTintColor_];
      }

      BYTE8(v97) = *(v90 + 160);
      v69 = *(v90 + 152);
      *&v97 = v69;
      if (BYTE8(v97) == 1)
      {
        v70 = v69;
        if (!v69)
        {
          goto LABEL_16;
        }
      }

      else
      {

        sub_21BA8820C();
        v74 = sub_21BA8740C();
        sub_21BA8670C();

        v75 = v86;
        sub_21BA86E8C();
        swift_getAtKeyPath();
        sub_21B9ABAAC(&v97, &unk_27CD9DD30);
        (*v85)(v75, v87);
        v69 = v108;
        if (!v108)
        {
LABEL_16:
          v40 = MEMORY[0x277D85000];
          goto LABEL_17;
        }
      }

      v76 = [v69 style];

      if (!v76)
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v77 = v66();
      v65 = [v76 boldButtonTitleColorWithTintColor_];

      if (v65)
      {
        [v60 setTitleColor:v65 forState:0];
        v40 = MEMORY[0x277D85000];
        goto LABEL_47;
      }

      goto LABEL_16;
    }
  }

LABEL_51:
  v79 = *(v90 + 128);
  if (v79 == 255)
  {
  }

  else
  {
    v80 = *(v90 + 120);
    if (v79)
    {
      sub_21B9D0D64(v80, 1);
      v81 = v92;
      [v92 addHeaderView_];

      sub_21B9D0DB0(v80, v79);
    }

    else
    {
      sub_21B9D0D64(v80, 0);
      v82 = sub_21BA87EFC();
      sub_21B9D0DB0(v80, v79);
      v83 = v92;
      [v92 setPrivacyLinkForBundles_];
    }
  }

  sub_21B9CE82C(v84);
}

void sub_21B9CFA7C(uint64_t a1, void *a2)
{
  v59 = a2;
  v51 = sub_21BA8835C();
  v49 = *(v51 - 8);
  v3 = MEMORY[0x28223BE20](v51);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_21BA864AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = 0;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  v52 = *(a1 + 32);
  v53 = v20;
  v21 = *(a1 + 56);
  v55 = *(a1 + 48);
  v56 = v21;
  v22 = *(a1 + 72);
  v57 = *(a1 + 64);
  v58 = v22;
  v23 = *(a1 + 80);
  v73[0] = *(a1 + 81);
  *(v73 + 3) = *(a1 + 84);
  v54 = *(a1 + 88);
  v24 = *(a1 + 128);
  v71 = *(a1 + 112);
  v72 = v24;
  v70 = *(a1 + 96);
  if (*(a1 + 152) && *(a1 + 168))
  {
    v46 = v23;
    v47 = v18;
    v48 = v19;
    sub_21BA8648C();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_21B9ABAAC(v9, &qword_27CD9DBA0);
      v17 = 0;
    }

    else
    {
      v45 = *(v11 + 32);
      v45(v16, v9, v10);
      sub_21BA8833C();

      sub_21BA8834C();
      sub_21BA8832C();
      v44 = sub_21B9BDFC0(0, &qword_27CD9D7A8);
      v25 = v49;
      (*(v49 + 16))(v50, v6, v51);
      sub_21B9BDFC0(0, &qword_27CD9D7B0);
      (*(v11 + 16))(v14, v16, v10);
      v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v27 = swift_allocObject();
      v45((v27 + v26), v14, v10);
      sub_21BA8831C();
      v17 = sub_21BA8836C();
      (*(v25 + 8))(v6, v51);
      (*(v11 + 8))(v16, v10);
    }

    v23 = v46;
  }

  if (v23 == 1)
  {
    v28 = v55;
    v29 = v56;
    v60 = v55;
    v61 = v56;
    v30 = v57;
    v31 = v58;
    v62 = v57;
    v63 = v58;
    v32 = v58;

    v33 = v30;
    v34 = sub_21BA8397C();
    v35 = sub_21BA87C8C();
    v36 = sub_21BA87C8C();
    if (v34)
    {
      v60 = v28;
      v61 = v29;
      v62 = v30;
      v63 = v31;
      v64 = 1;
      *v65 = v73[0];
      *&v65[3] = *(v73 + 3);
      v66 = v54;
      v67 = v70;
      v68 = v71;
      v69 = v72;
      RUIImage.preloadedImage.getter();
      if (!v37)
      {
        v37 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      }

      v38 = v37;
      [v59 addBulletedListItemWithTitle:v35 description:v36 image:v37 linkButton:v17];
    }

    else
    {
      v38 = sub_21BA87C8C();
      [v59 addBulletedListItemWithTitle:v35 description:v36 symbolName:v38 tintColor:v54 linkButton:v17];
    }

    sub_21B9CA1E8(v28, v29, v30, v31, 1u);
  }

  else
  {
    v39 = v23;
    v40 = sub_21BA87C8C();
    v41 = sub_21BA87C8C();
    v60 = v55;
    v61 = v56;
    v62 = v57;
    v63 = v58;
    v64 = v39;
    *v65 = v73[0];
    *&v65[3] = *(v73 + 3);
    v66 = v54;
    v67 = v70;
    v68 = v71;
    v69 = v72;
    RUIImage.preloadedImage.getter();
    if (!v42)
    {
      v42 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    }

    v43 = v42;
    [v59 addBulletedListItemWithTitle:v40 description:v41 image:v42 linkButton:v17];

    v17 = v43;
  }
}

void sub_21B9D0184(void *a1)
{
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D270);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BA92840;
  v5 = [v1 topAnchor];
  v6 = [a1 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 leftAnchor];
  v9 = [a1 leftAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v1 rightAnchor];
  v12 = [a1 rightAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_21B9BDFC0(0, &qword_27CD9D028);
  v17 = sub_21BA87EFC();

  [v3 activateConstraints_];
}

uint64_t sub_21B9D03F4()
{
  type metadata accessor for ActivityIndicatorManager(0);
  sub_21B9D1684(&qword_27CD9D770, type metadata accessor for ActivityIndicatorManager);
  return sub_21BA86A6C();
}

__n128 sub_21B9D0464@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, uint64_t a12, char a13, uint64_t a14, char a15, __n128 a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  sub_21B9D0B60(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D760);
  sub_21BA8796C();
  *a9 = v31;
  *(a9 + 8) = v32;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2 & 1;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  result = a16;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  *(a9 + 128) = a15;
  *(a9 + 136) = a16;
  *(a9 + 152) = a17;
  *(a9 + 160) = a18 & 1;
  *(a9 + 168) = a19;
  *(a9 + 176) = a20 & 1;
  return result;
}

uint64_t sub_21B9D068C@<X0>(void *a1@<X8>)
{
  type metadata accessor for WelcomeController.Coordinator();
  v2 = swift_allocObject();
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = 0;
  sub_21B9FD000(MEMORY[0x277CE1420]);
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D778));
  result = sub_21BA8706C();
  v2[4] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_21B9D075C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B9D10CC();

  return MEMORY[0x28212EF78](a1, a2, a3, v6);
}

uint64_t sub_21B9D07C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B9D10CC();

  return MEMORY[0x28212EF30](a1, a2, a3, v6);
}

void sub_21B9D0824()
{
  sub_21B9D10CC();
  sub_21BA8735C();
  __break(1u);
}

uint64_t sub_21B9D084C(uint64_t a1)
{
  v2 = sub_21B9D1684(&qword_27CD9D7B8, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_21B9D1684(&qword_27CD9D808, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_21B9D0908(uint64_t a1)
{
  sub_21BA864AC();
  sub_21B9D1684(&qword_27CD9D7E0, MEMORY[0x277CC9260]);
  v2 = sub_21BA87BFC();

  return sub_21B9D09A0(a1, v2);
}

unint64_t sub_21B9D09A0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_21BA864AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_21B9D1684(&qword_27CD9D758, MEMORY[0x277CC9260]);
      v15 = sub_21BA87C7C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_21B9D0B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D7D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D7D8);
    v7 = sub_21BA8872C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B9AFF80(v9, v5, &qword_27CD9D7D0);
      result = sub_21B9D0908(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21BA864AC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_21B9D0D48(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

id sub_21B9D0D64(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_21B9D0D94(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

void sub_21B9D0DB0(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_21B9D0DC8(a1, a2 & 1);
  }
}

void sub_21B9D0DC8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_21B9D0E88()
{
  result = qword_27CD9D798;
  if (!qword_27CD9D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D798);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8RemoteUI15MultiChoiceViewV7ContentO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_8RemoteUI17WelcomeControllerV16ButtonTrayHeaderOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_21B9D0F48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B9D0F90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21B9D1024(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B9D106C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_21B9D10CC()
{
  result = qword_27CD9D7A0;
  if (!qword_27CD9D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D7A0);
  }

  return result;
}

void sub_21B9D1120()
{
  sub_21BA864AC();
  v2 = [objc_opt_self() sharedApplication];
  v0 = sub_21BA8641C();
  sub_21B9D1264(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_21B9D1684(&qword_27CD9D7B8, type metadata accessor for OpenExternalURLOptionsKey);
  v1 = sub_21BA87BBC();

  [v2 openURL:v0 options:v1 completionHandler:0];
}

unint64_t sub_21B9D1264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D7C0);
    v3 = sub_21BA8872C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B9AFF80(v4, &v11, &qword_27CD9D7C8);
      v5 = v11;
      result = sub_21B9B8D3C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21B9AFF70(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void type metadata accessor for OpenExternalURLOptionsKey()
{
  if (!qword_27CD9D7E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27CD9D7E8);
    }
  }
}

void sub_21B9D1438(SEL *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 *a1];
    }
  }
}

void sub_21B9D14AC(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1 & 1;
    v4 = Strong;
    [Strong setEnabled_];
  }
}

void sub_21B9D150C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_21BA87C8C();
    [v1 setTitle:v2 forState:0];
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B9D1684(unint64_t *a1, void (*a2)(uint64_t))
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

id OsloHeaderView.init(attributes:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D810);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;

  v9 = OBJC_IVAR___RUIOsloHeaderView__headerLabel;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v10 = OBJC_IVAR___RUIOsloHeaderView__subHeaderLabel;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  type metadata accessor for OsloHeaderView.Model(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  sub_21BA8661C();
  sub_21B9D3A5C();
  sub_21BA8721C();
  sub_21BA8743C();
  sub_21BA8720C();
  v37 = *(v3 + 8);
  v37(v6, v2);
  v36 = v8;
  v12 = sub_21BA871FC();
  *&v1[OBJC_IVAR___RUIOsloHeaderView_model] = v11;
  (*(v3 + 16))(&v1[OBJC_IVAR___RUIOsloHeaderView_hostingConfiguration], v8, v2);
  *&v1[OBJC_IVAR___RUIOsloHeaderView_contentView] = v12;
  v13 = type metadata accessor for OsloHeaderView(0);
  v38.receiver = v1;
  v38.super_class = v13;

  v14 = v12;
  v15 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = v15;
  [v16 addSubview_];
  v35 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D270);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21BA92840;
  v18 = [v14 topAnchor];
  v19 = [v16 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v20;
  v21 = [v14 leadingAnchor];
  v22 = [v16 leadingAnchor];

  v23 = [v21 constraintEqualToAnchor_];
  *(v17 + 40) = v23;
  v24 = [v14 trailingAnchor];
  v25 = [v16 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v17 + 48) = v26;
  v27 = [v14 bottomAnchor];
  v28 = [v16 bottomAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v17 + 56) = v29;
  sub_21B9BDFC0(0, &qword_27CD9D028);
  v30 = sub_21BA87EFC();

  [v35 activateConstraints_];

  LODWORD(v31) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v32];

  v37(v36, v2);
  return v16;
}

uint64_t sub_21B9D1C44()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_21BA8661C();
  return v0;
}

double sub_21B9D1CEC(double a1)
{
  v3 = *(MEMORY[0x277D76C78] + 8);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for OsloHeaderView(0);
  objc_msgSendSuper2(&v6, sel_systemLayoutSizeFittingSize_, a1, v3);
  return v4;
}

uint64_t sub_21B9D1DB0(uint64_t a1, uint64_t a2)
{
  v5 = *(**(v2 + OBJC_IVAR___RUIOsloHeaderView_model) + 192);

  return v5(a1, a2);
}

uint64_t sub_21B9D1ED0(uint64_t a1, uint64_t a2)
{
  v5 = *(**(v2 + OBJC_IVAR___RUIOsloHeaderView_model) + 144);

  return v5(a1, a2);
}

void *sub_21B9D1FF0()
{
  v1 = *(v0 + OBJC_IVAR___RUIOsloHeaderView__headerLabel);
  v2 = v1;
  return v1;
}

void *sub_21B9D2030()
{
  v1 = *(v0 + OBJC_IVAR___RUIOsloHeaderView__subHeaderLabel);
  v2 = v1;
  return v1;
}

uint64_t sub_21B9D2070(void *a1)
{
  v3 = *(**(v1 + OBJC_IVAR___RUIOsloHeaderView_model) + 240);
  v4 = a1;
  return v3(a1);
}

id OsloHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id OsloHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OsloHeaderView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B9D23F0()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  v1 = v0[2];

  return v1;
}

uint64_t sub_21B9D2480@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21B9D24CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);

  return v4(v2, v3);
}

uint64_t sub_21B9D2534(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[3];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[2] == a1 && v5 == a2;
      if (v6 || (sub_21BA8899C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    v2[2] = a1;
    v2[3] = a2;
  }

  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x28223BE20](KeyPath);
  v10 = v2;
  v11 = a1;
  v12 = a2;
  (*(*v2 + 264))(v9, sub_21B9D3AD0);
}

void (*sub_21B9D2678(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC8RemoteUI14OsloHeaderView5Model___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_21B9D3B38();
  sub_21BA8660C();

  v4[7] = sub_21B9CDA9C();
  return sub_21B9D2798;
}

uint64_t sub_21B9D27F4()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  v1 = v0[4];

  return v1;
}

uint64_t sub_21B9D2884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21B9D28D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

uint64_t sub_21B9D2938(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[5];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[4] == a1 && v5 == a2;
      if (v6 || (sub_21BA8899C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    v2[4] = a1;
    v2[5] = a2;
  }

  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x28223BE20](KeyPath);
  v10 = v2;
  v11 = a1;
  v12 = a2;
  (*(*v2 + 264))(v9, sub_21B9D3B90);
}

void (*sub_21B9D2A7C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC8RemoteUI14OsloHeaderView5Model___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_21B9D3B38();
  sub_21BA8660C();

  v4[7] = sub_21B9D27A4();
  return sub_21B9D2B9C;
}

void *sub_21B9D2BF8()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  v1 = v0[6];
  v2 = v1;
  return v1;
}

uint64_t sub_21B9D2C80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_21B9D2CCC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 240);
  v4 = *a1;
  return v3(v2);
}

void sub_21B9D2D24(void *a1)
{
  swift_beginAccess();
  v3 = v1[6];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 264))(v9, sub_21B9D3BF8);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21B9BDFC0(0, &qword_27CD9D848);
  v4 = v3;
  v5 = a1;
  v6 = sub_21BA882FC();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[6];
LABEL_8:
  v1[6] = a1;
}

void (*sub_21B9D2E90(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC8RemoteUI14OsloHeaderView5Model___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_21B9D3B38();
  sub_21BA8660C();

  v4[7] = sub_21B9D2BA8();
  return sub_21B9D2FB0;
}

uint64_t sub_21B9D309C()
{

  v1 = OBJC_IVAR____TtCC8RemoteUI14OsloHeaderView5Model___observationRegistrar;
  v2 = sub_21BA8662C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21B9D3150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_21BA878EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*a1 + 232))(v5);
  if (v8)
  {
    v9 = v8;
    sub_21BA878CC();
    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE8], v3);
    v70 = sub_21BA8792C();

    (*(v4 + 8))(v7, v3);
    sub_21BA87B2C();
    sub_21BA86AEC();
    v10 = v115;
    v64 = v116;
    v65 = v114;
    v11 = v117;
    v62 = v119;
    v63 = v118;

    LOBYTE(v105[0]) = v10;
    LOBYTE(v103[0]) = v11;
    v61 = 1;
    LOBYTE(v73[0]) = 1;
    v68 = v10;
    v69 = v11;
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    v68 = 0;
  }

  v60 = sub_21BA86FEC();
  LOBYTE(v103[0]) = 1;
  v12 = (*(*a1 + 136))();
  v56 = v13;
  if (v13)
  {
    v14 = v12;
    KeyPath = swift_getKeyPath();
    LOBYTE(v105[0]) = 0;
    v59 = 0x10000;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = 0;
    v15 = 0;
    KeyPath = 0;
    v59 = 0;
  }

  v16 = v14;
  (*(*a1 + 184))();
  if (v17)
  {
    sub_21BA8749C();
    v18 = sub_21BA8760C();
    v57 = v19;
    v58 = v18;
    v21 = v20;
    v72 = v22;

    v71 = swift_getKeyPath();
    LOBYTE(v105[0]) = v21 & 1;
    v23 = v21 & 1;
    v24 = 0x10000;
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v23 = 0;
    v71 = 0;
    v72 = 0;
    v24 = 0;
  }

  v25 = v16;
  v54 = v15;
  v55 = v16;
  v26 = v56;
  v27 = v59;
  sub_21B9D4130(v25, v56, 0, v15);
  v29 = v57;
  v28 = v58;
  v53 = v23;
  v30 = v72;
  sub_21B9D4130(v58, v57, v23, v72);
  sub_21B9D4180(v28, v29, v23, v30);
  v31 = v54;
  v32 = v55;
  v33 = KeyPath;
  sub_21B9D4180(v55, v26, 0, v54);
  *&v82 = v32;
  *(&v82 + 1) = v26;
  *&v83 = 0;
  *(&v83 + 1) = v31;
  *&v84 = v33;
  BYTE10(v84) = BYTE2(v27);
  WORD4(v84) = v27;
  *&v85 = v28;
  *(&v85 + 1) = v29;
  *&v86[0] = v53;
  *(&v86[0] + 1) = v72;
  *&v86[1] = v71;
  BYTE10(v86[1]) = BYTE2(v24);
  WORD4(v86[1]) = v24;
  v87[0] = v32;
  v87[1] = v26;
  v87[2] = 0;
  v87[3] = v31;
  v87[4] = v33;
  v89 = BYTE2(v27);
  v88 = v27;
  v90 = v28;
  v91 = v29;
  v92 = v53;
  v93 = v72;
  v94 = v71;
  v96 = BYTE2(v24);
  v95 = v24;
  sub_21B9AFF80(&v82, v105, &qword_27CD9D8E0);
  sub_21B9ABAAC(v87, &qword_27CD9D8E0);
  *&v81[39] = v84;
  *&v81[55] = v85;
  *&v81[71] = v86[0];
  *&v81[82] = *(v86 + 11);
  *&v81[7] = v82;
  *&v81[23] = v83;
  v34 = v103[0];
  *&v97 = v70;
  v36 = v64;
  v35 = v65;
  *(&v97 + 1) = v65;
  *&v98 = v68;
  *(&v98 + 1) = v64;
  *&v99 = v69;
  v38 = v62;
  v37 = v63;
  *(&v99 + 1) = v63;
  v100 = v62;
  v101 = 0;
  LOWORD(v26) = v61;
  LOWORD(v80[0]) = v61;
  v78 = v99;
  v79 = v62;
  v76 = v97;
  v77 = v98;
  v39 = v60;
  v103[0] = v60;
  v103[1] = 0;
  v104[0] = v34;
  v40 = *&v81[16];
  *&v104[1] = *v81;
  *&v104[33] = *&v81[32];
  v41 = *v81;
  *&v104[17] = *&v81[16];
  *&v104[97] = *(&v86[1] + 9);
  v42 = *&v81[64];
  *&v104[81] = *&v81[80];
  v43 = *&v81[48];
  *&v104[65] = *&v81[64];
  v44 = *&v81[32];
  *&v104[49] = *&v81[48];
  *(&v80[3] + 8) = *&v104[32];
  *(&v80[2] + 8) = *&v104[16];
  *(&v80[1] + 8) = *v104;
  *(v80 + 8) = v60;
  *(&v80[7] + 7) = *&v104[95];
  *(&v80[6] + 8) = *&v104[80];
  *(&v80[5] + 8) = *&v104[64];
  *(&v80[4] + 8) = *&v104[48];
  v45 = v62;
  v46 = v66;
  *(v66 + 32) = v99;
  *(v46 + 48) = v45;
  v47 = v77;
  *v46 = v76;
  *(v46 + 16) = v47;
  v48 = v80[3];
  *(v46 + 96) = v80[2];
  *(v46 + 112) = v48;
  v49 = v80[1];
  *(v46 + 64) = v80[0];
  *(v46 + 80) = v49;
  v50 = v80[7];
  *(v46 + 160) = v80[6];
  *(v46 + 176) = v50;
  v51 = v80[5];
  *(v46 + 128) = v80[4];
  *(v46 + 144) = v51;
  v110 = v43;
  v102 = v26;
  v75 = 1;
  *(v46 + 192) = 0;
  *(v46 + 200) = 1;
  v105[0] = v39;
  v105[1] = 0;
  v106 = v34;
  v111 = v42;
  v112 = *&v81[80];
  v113 = *&v81[96];
  v107 = v41;
  v108 = v40;
  v109 = v44;
  sub_21B9AFF80(&v97, v73, &qword_27CD9D8E8);
  sub_21B9AFF80(v103, v73, &unk_27CD9D8F0);
  sub_21B9ABAAC(v105, &unk_27CD9D8F0);
  v73[0] = v70;
  v73[1] = v35;
  v73[2] = v68;
  v73[3] = v36;
  v73[4] = v69;
  v73[5] = v37;
  v73[6] = v38;
  v73[7] = 0;
  v74 = v26;
  return sub_21B9ABAAC(v73, &qword_27CD9D8E8);
}

double sub_21B9D37A4@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_21BA86ECC();
  v27 = 0;
  sub_21B9D3150(v3, &v14);
  v38 = v24;
  v39[0] = v25[0];
  *(v39 + 9) = *(v25 + 9);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v28 = v14;
  v29 = v15;
  v40[9] = v23;
  v40[10] = v24;
  v41[0] = v25[0];
  *(v41 + 9) = *(v25 + 9);
  v40[6] = v20;
  v40[7] = v21;
  v40[8] = v22;
  v40[2] = v16;
  v40[3] = v17;
  v40[4] = v18;
  v40[5] = v19;
  v40[0] = v14;
  v40[1] = v15;
  sub_21B9AFF80(&v28, &v13, &unk_27CD9D850);
  sub_21B9ABAAC(v40, &unk_27CD9D850);
  *(&v26[9] + 7) = v37;
  *(&v26[10] + 7) = v38;
  *(&v26[11] + 7) = v39[0];
  v26[12] = *(v39 + 9);
  *(&v26[5] + 7) = v33;
  *(&v26[6] + 7) = v34;
  *(&v26[7] + 7) = v35;
  *(&v26[8] + 7) = v36;
  *(&v26[1] + 7) = v29;
  *(&v26[2] + 7) = v30;
  *(&v26[3] + 7) = v31;
  *(&v26[4] + 7) = v32;
  *(v26 + 7) = v28;
  v5 = v26[8];
  *(a1 + 161) = v26[9];
  v6 = v26[11];
  *(a1 + 177) = v26[10];
  *(a1 + 193) = v6;
  *(a1 + 209) = v26[12];
  v7 = v26[4];
  *(a1 + 97) = v26[5];
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  *(a1 + 145) = v5;
  v9 = v26[0];
  *(a1 + 33) = v26[1];
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  *(a1 + 65) = v11;
  *(a1 + 81) = v7;
  v12 = v27;
  *a1 = v4;
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = v12;
  *(a1 + 17) = v9;
  return result;
}

unint64_t sub_21B9D3A5C()
{
  result = qword_27CD9D828;
  if (!qword_27CD9D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D828);
  }

  return result;
}

uint64_t sub_21B9D3AD0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

unint64_t sub_21B9D3B38()
{
  result = qword_27CD9D840;
  if (!qword_27CD9D840)
  {
    type metadata accessor for OsloHeaderView.Model(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D840);
  }

  return result;
}

uint64_t sub_21B9D3B90()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

void sub_21B9D3BF8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
  v4 = v1;
}

void sub_21B9D3C78()
{
  sub_21B9D3F90();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21B9D3F90()
{
  if (!qword_27CD9D8C0)
  {
    sub_21B9D3A5C();
    v0 = sub_21BA8722C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9D8C0);
    }
  }
}

uint64_t sub_21B9D4014()
{
  result = sub_21BA8662C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21B9D40CC()
{
  result = qword_27CD9D8D0;
  if (!qword_27CD9D8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D8D0);
  }

  return result;
}

uint64_t sub_21B9D4130(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21B9C320C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21B9D4180(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21B9C318C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21B9D41D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v32[1] = a3;
  v32[2] = a2;
  LODWORD(v33) = a1;
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v32 - v11;
  v13 = sub_21BA86C5C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v32 - v18;
  v20 = sub_21BA8716C();
  v35 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v32 - v22;
  if (v33)
  {
    v33 = v20;
    v24 = v37;
    sub_21BA8780C();
    v38 = v24;
    v39 = MEMORY[0x277CDFC58];
    WitnessTable = swift_getWitnessTable();
    v25 = *(v14 + 16);
    v25(v19, v16, v13);
    v26 = *(v14 + 8);
    v26(v16, v13);
    v25(v16, v19, v13);
    v20 = v33;
    sub_21B9C6514(v16, v13);
    v26(v16, v13);
    v26(v19, v13);
  }

  else
  {
    v27 = *(v7 + 16);
    v27(v12, WitnessTable, a4, v21);
    (v27)(v9, v12, a4);
    v44 = v37;
    v45 = MEMORY[0x277CDFC58];
    swift_getWitnessTable();
    sub_21B9C660C(v9, v13, a4);
    v28 = *(v7 + 8);
    v28(v9, a4);
    v28(v12, a4);
  }

  v29 = v37;
  v42 = v37;
  v43 = MEMORY[0x277CDFC58];
  v40 = swift_getWitnessTable();
  v41 = v29;
  swift_getWitnessTable();
  v30 = v35;
  (*(v35 + 16))(v36, v23, v20);
  return (*(v30 + 8))(v23, v20);
}

unint64_t sub_21B9D4654()
{
  result = qword_27CD9D910;
  if (!qword_27CD9D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D910);
  }

  return result;
}

uint64_t sub_21B9D46A8(uint64_t a1, char a2, int a3, int a4, id a5)
{
  if (a2)
  {
    v5 = 10.0;
  }

  else
  {
    v5 = *&a1;
  }

  [a5 heightForWidth_];
  return *&v5;
}

uint64_t sub_21B9D46F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B9D47F4();

  return MEMORY[0x28212E3C0](a1, a2, a3, v6);
}

uint64_t sub_21B9D4758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B9D47F4();

  return MEMORY[0x28212E350](a1, a2, a3, v6);
}

void sub_21B9D47BC()
{
  sub_21B9D47F4();
  sub_21BA8711C();
  __break(1u);
}

unint64_t sub_21B9D47F4()
{
  result = qword_27CD9D918;
  if (!qword_27CD9D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D918);
  }

  return result;
}

uint64_t BuddyMLContent.source.getter()
{
  v1 = *v0;
  sub_21B9B9158(*v0, *(v0 + 8));
  return v1;
}

uint64_t BuddyMLContent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BuddyMLContent(0) + 20);
  v4 = sub_21BA864AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BuddyMLContent.init(source:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for BuddyMLContent(0) + 20);
  v7 = sub_21BA864AC();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static BuddyMLContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_21B9D5860(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for BuddyMLContent(0);

  return sub_21BA8642C();
}

uint64_t BuddyMLContent.hash(into:)()
{
  sub_21BA864EC();
  type metadata accessor for BuddyMLContent(0);
  sub_21BA864AC();
  sub_21B9D5BC8(&qword_27CD9D7E0, MEMORY[0x277CC9260]);
  return sub_21BA87C0C();
}

uint64_t BuddyMLContent.hashValue.getter()
{
  sub_21BA88BAC();
  sub_21BA864EC();
  type metadata accessor for BuddyMLContent(0);
  sub_21BA864AC();
  sub_21B9D5BC8(&qword_27CD9D7E0, MEMORY[0x277CC9260]);
  sub_21BA87C0C();
  return sub_21BA88BCC();
}

uint64_t sub_21B9D4B44()
{
  sub_21BA88BAC();
  sub_21BA864EC();
  sub_21BA864AC();
  sub_21B9D5BC8(&qword_27CD9D7E0, MEMORY[0x277CC9260]);
  sub_21BA87C0C();
  return sub_21BA88BCC();
}

uint64_t sub_21B9D4BEC()
{
  sub_21BA864EC();
  sub_21BA864AC();
  sub_21B9D5BC8(&qword_27CD9D7E0, MEMORY[0x277CC9260]);
  return sub_21BA87C0C();
}

uint64_t sub_21B9D4C78()
{
  sub_21BA88BAC();
  sub_21BA864EC();
  sub_21BA864AC();
  sub_21B9D5BC8(&qword_27CD9D7E0, MEMORY[0x277CC9260]);
  sub_21BA87C0C();
  return sub_21BA88BCC();
}

uint64_t sub_21B9D4D1C(uint64_t a1, uint64_t a2)
{
  if ((sub_21B9D5860(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  return sub_21BA8642C();
}

uint64_t RemoteUIAttributes.userInfo.getter()
{
  type metadata accessor for RemoteUIAttributes(0);
}

uint64_t RemoteUIAttributes.init(clientInfo:rawAttributes:buddyMLContent:postbackDictionary:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for RemoteUIAttributes(0);
  v13 = *(v12 + 28);
  v14 = type metadata accessor for BuddyMLContent(0);
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  *a6 = a1;
  *(a6 + 1) = a2;
  result = sub_21B9D5A08(a3, &a6[v13], &qword_27CD9D920);
  *(a6 + 2) = a4;
  *&a6[*(v12 + 32)] = a5;
  return result;
}

uint64_t RemoteUIHookResponse.additionalPayload.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

_BYTE *(*RemoteUIHookResponse.makeURLRequest.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_21B9D5024;
}

uint64_t RemoteUIHookResponse.init(additionalPayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for RemoteUIHookResponse(0) + 24);
  v5 = sub_21BA860AC();
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *a2 = a1;
  *(a2 + 8) = 1;
  return result;
}

uint64_t static RemoteUIHookResponse.skipServerResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for RemoteUIHookResponse(0) + 24);
  v3 = sub_21BA860AC();
  result = (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static RemoteUIHookResponse.withContinuationRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for RemoteUIHookResponse(0) + 24);
  v5 = sub_21BA860AC();
  v6 = *(v5 - 8);
  v8 = *(v6 + 56);
  v8(a2 + v4, 1, 1, v5);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_21B9D5A70(a2 + v4);
  (*(v6 + 16))(a2 + v4, a1, v5);

  return (v8)(a2 + v4, 0, 1, v5);
}

uint64_t sub_21B9D5238()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21B9AC1F4;

  return RemoteUIHook.processObjectModel(name:attributes:hostingController:)();
}

uint64_t sub_21B9D52E0()
{
  sub_21B9D5AD8();
  swift_allocError();
  UnknownHook.init()();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B9D5370()
{
  sub_21B9D5B2C();
  sub_21BA86EAC();
  return v1;
}

uint64_t sub_21B9D53E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_21BA8619C();
    if (v10)
    {
      v11 = sub_21BA861BC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_21BA861AC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_21BA8619C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21BA861BC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21BA861AC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_21B9D5618(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_21B9D57A8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21B9B37F0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_21B9D53E8(v13, a3, a4, &v12);
  v10 = v4;
  sub_21B9B37F0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_21B9D57A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21BA8619C();
  v11 = result;
  if (result)
  {
    result = sub_21BA861BC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21BA861AC();
  sub_21B9D53E8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_21B9D5860(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21B9B9158(a3, a4);
          return sub_21B9D5618(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21B9D5A08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B9D5A70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B9D5AD8()
{
  result = qword_27CD9D930;
  if (!qword_27CD9D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D930);
  }

  return result;
}

unint64_t sub_21B9D5B2C()
{
  result = qword_27CDA4B90[0];
  if (!qword_27CDA4B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA4B90);
  }

  return result;
}

uint64_t sub_21B9D5BC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B9D5C38()
{
  result = sub_21BA864AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21B9D5CDC()
{
  sub_21B9D5DCC(319, &qword_27CD9D940);
  if (v0 <= 0x3F)
  {
    sub_21B9D5F5C(319, &qword_27CD9D948, type metadata accessor for BuddyMLContent);
    if (v1 <= 0x3F)
    {
      sub_21B9D5DCC(319, &qword_27CD9D950);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B9D5DCC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21BA87BEC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21B9D5E50()
{
  sub_21B9D5EF8();
  if (v0 <= 0x3F)
  {
    sub_21B9D5F5C(319, &qword_27CD9D968, MEMORY[0x277CC8678]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B9D5EF8()
{
  if (!qword_27CD9D958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D960);
    v0 = sub_21BA883CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9D958);
    }
  }
}

void sub_21B9D5F5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BA883CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t dispatch thunk of RemoteUIHook.performAction(name:attributes:hostingController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_21B9AC1F4;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of RemoteUIHook.processObjectModel(name:attributes:hostingController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 24) + **(a7 + 24));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_21B9AC2E8;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_21B9D62A0()
{
  v1 = v0;
  v2 = sub_21BA864AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InternalResourceLoader.Key(0);
  MEMORY[0x28223BE20](v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B9DBF68(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(v8 + 1);
    v11[0] = *v8;
    v11[1] = v9;
    v12 = *(v8 + 4);
    MEMORY[0x21CEFDF10](1);
    sub_21BA8852C();
    return sub_21B9AFD9C(v11);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21CEFDF10](0);
    sub_21B9DBFCC(&qword_27CD9D7E0, MEMORY[0x277CC9260]);
    sub_21BA87C0C();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_21B9D6488()
{
  sub_21BA88BAC();
  sub_21B9D62A0();
  return sub_21BA88BCC();
}

uint64_t sub_21B9D64CC()
{
  sub_21BA88BAC();
  sub_21B9D62A0();
  return sub_21BA88BCC();
}

uint64_t sub_21B9D650C()
{
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v0) + 0xE0))();

  swift_beginAccess();
}

uint64_t sub_21B9D65A0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v3) + 0xE0))();

  v4 = OBJC_IVAR___RUIInternalResourceLoader__resources;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21B9D6648(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  v5 = v3;
  v6 = v2;
  (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();
}

uint64_t sub_21B9D6770(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InternalResourceLoader.Key(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BA864AC();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  swift_storeEnumTagMultiPayload();
  sub_21B9D66F4();
  return sub_21B9DC078(v5);
}

uint64_t sub_21B9D685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InternalResourceLoader.Key(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a2, a4);
  sub_21BA8853C();
  swift_storeEnumTagMultiPayload();
  sub_21B9D66F4();
  return sub_21B9DC078(v11);
}

uint64_t sub_21B9D6A30@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9A8);
  MEMORY[0x28223BE20](v22);
  v4 = &v21 - v3;
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *a1) + 0xE0))();

  v5 = OBJC_IVAR___RUIInternalResourceLoader__resources;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(v6 + 48);
    v17 = type metadata accessor for InternalResourceLoader.Key(0);
    sub_21B9DBF68(v16 + *(*(v17 - 8) + 72) * v15, v4);
    v18 = *(v6 + 56) + 40 * v15;
    v19 = *(v22 + 48);
    sub_21B9AFF80(v18, &v4[v19], &qword_27CD9D9B8);
    sub_21B9AFF80(&v4[v19], v23, &qword_27CD9D9B8);
    v20 = v23[32];
    sub_21B9ABAAC(v23, &qword_27CD9D9B8);
    result = sub_21B9ABAAC(v4, &qword_27CD9D9A8);
    if (v20 == 1)
    {
LABEL_13:

      *v21 = v20;
      return result;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      LOBYTE(v20) = 0;
      goto LABEL_13;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B9D6C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InternalResourceLoader.Key(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v21 = *&v3[OBJC_IVAR___RUIInternalResourceLoader_queue];
  sub_21B9DBF68(a2, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, a3);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = v3;
  sub_21B9DC100(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  (*(v7 + 32))(v15 + v14, v9, a3);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21B9DC164;
  *(v16 + 24) = v15;
  aBlock[4] = sub_21B9DC22C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B9D7210;
  aBlock[3] = &block_descriptor_2;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  dispatch_sync(v21, v17);
  _Block_release(v17);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B9D6F4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for InternalResourceLoader.Key(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_21B9DBF68(a2, v10);
  v14[3] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  v15 = 0;
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *a1) + 0xE0))();

  v13 = a1;
  swift_getKeyPath();
  sub_21B9DBFCC(&qword_27CD9D990, type metadata accessor for InternalResourceLoader);
  sub_21BA8660C();

  swift_beginAccess();
  sub_21B9D7148(v14, v10);
  swift_endAccess();
  v13 = a1;
  swift_getKeyPath();
  sub_21BA865FC();
}

uint64_t sub_21B9D7148(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 255)
  {
    sub_21B9ABAAC(a1, &qword_27CD9D9C8);
    sub_21B9DAD34(a2, v8);
    sub_21B9DC078(a2);
    return sub_21B9ABAAC(v8, &qword_27CD9D9C8);
  }

  else
  {
    v4 = *(a1 + 16);
    v8[0] = *a1;
    v8[1] = v4;
    v9 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_21B9DB7F0(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_21B9DC078(a2);
    *v2 = v7;
  }

  return result;
}

uint64_t sub_21B9D7238(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for InternalResourceLoader.Key(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v5[OBJC_IVAR___RUIInternalResourceLoader_queue];
  sub_21B9DBF68(a1, v14);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = v15 + v13;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = v5;
  sub_21B9DC100(v14, v17 + v15);
  *(v17 + v16) = a2;
  v18 = v17 + (v16 & 0xFFFFFFFFFFFFFFF8);
  *(v18 + 8) = a3;
  *(v18 + 16) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_21B9DCFBC;
  *(v19 + 24) = v17;
  aBlock[4] = sub_21B9DD414;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B9D7210;
  aBlock[3] = &block_descriptor_78;
  v20 = _Block_copy(aBlock);
  v21 = v5;

  dispatch_sync(v24, v20);
  _Block_release(v20);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B9D7464(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v37 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30[-v10];
  v12 = type metadata accessor for InternalResourceLoader.Key(0);
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v30[-v16];
  swift_getKeyPath();
  v18 = *((*MEMORY[0x277D85000] & *a1) + 0xE0);
  v34 = (*MEMORY[0x277D85000] & *a1) + 224;
  v35 = v18;
  v18();

  v19 = OBJC_IVAR___RUIInternalResourceLoader__resources;
  swift_beginAccess();
  v20 = *(a1 + v19);
  if (!*(v20 + 16))
  {
    goto LABEL_6;
  }

  v21 = sub_21B9DA8AC(a2);
  if ((v22 & 1) == 0)
  {

LABEL_6:
    memset(v39, 0, sizeof(v39));
    v40 = -1;
    sub_21B9ABAAC(v39, &qword_27CD9D9C8);
    goto LABEL_7;
  }

  sub_21B9AFF80(*(v20 + 56) + 40 * v21, v39, &qword_27CD9D9B8);

  result = sub_21B9ABAAC(v39, &qword_27CD9D9C8);
  if (v31)
  {
LABEL_7:
    v32 = v17;
    sub_21B9DBF68(a2, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9D0);
    v24 = sub_21BA8801C();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    sub_21B9DBF68(a2, v15);
    v25 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v36;
    sub_21B9DC100(v15, v27 + v25);
    v28 = (v27 + v26);
    *v28 = v37;
    v28[1] = a5;
    *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = a1;

    v29 = a1;
    *&v39[0] = sub_21BA866CC();
    v40 = 1;
    swift_getKeyPath();
    v35();

    v38 = v29;
    swift_getKeyPath();
    sub_21B9DBFCC(&qword_27CD9D990, type metadata accessor for InternalResourceLoader);
    sub_21BA8660C();

    swift_beginAccess();
    sub_21B9D7148(v39, v32);
    swift_endAccess();
    v38 = v29;
    swift_getKeyPath();
    sub_21BA865FC();
  }

  return result;
}

uint64_t sub_21B9D78B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a6 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for InternalResourceLoader.Key(0);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v7 = sub_21BA8673C();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_21BA87FEC();
  v6[16] = sub_21BA87FDC();
  v9 = sub_21BA87F9C();
  v6[17] = v9;
  v6[18] = v8;

  return MEMORY[0x2822009F8](sub_21B9D7A38, v9, v8);
}

uint64_t sub_21B9D7A38()
{
  v27 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[3];
  v6 = sub_21B9E0270();
  (*(v2 + 16))(v1, v6, v3);
  sub_21B9DBF68(v5, v4);
  v7 = sub_21BA8671C();
  v8 = sub_21BA8821C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v11 = v0[15];
  v13 = v0[12];
  v12 = v0[13];
  if (v9)
  {
    v14 = v0[11];
    v24 = v0[15];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    sub_21B9DBF68(v13, v14);
    v17 = sub_21BA87D2C();
    v19 = v18;
    sub_21B9DC078(v13);
    v20 = sub_21B9B2A60(v17, v19, &v26);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_21B93D000, v7, v8, "loading resource with key: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x21CEFF180](v16, -1, -1);
    MEMORY[0x21CEFF180](v15, -1, -1);

    (*(v10 + 8))(v24, v12);
  }

  else
  {

    sub_21B9DC078(v13);
    (*(v10 + 8))(v11, v12);
  }

  v25 = (v0[4] + *v0[4]);
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_21B9D7CAC;
  v22 = v0[9];

  return v25(v22);
}

uint64_t sub_21B9D7CAC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_21B9D7F00;
  }

  else
  {
    v5 = sub_21B9D7DE8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21B9D7DE8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[2];
  v5 = v0[3];

  (*((*MEMORY[0x277D85000] & *v3) + 0xB8))(v1, v5, v4);
  v6[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(v2 + 32))(boxed_opaque_existential_1, v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21B9D7F00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B9D7F94(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InternalResourceLoader.Key(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, a5);
  sub_21BA8853C();
  swift_storeEnumTagMultiPayload();
  sub_21B9D7238(v16, a2, a3, a4, v18);
  return sub_21B9DC078(v16);
}

uint64_t sub_21B9D810C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a3;
  v20 = a5;
  v21 = a2;
  v7 = sub_21BA864AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = type metadata accessor for InternalResourceLoader.Key(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v8 + 16);
  v13(v12, a1, v7);
  swift_storeEnumTagMultiPayload();
  v13(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v16 = v19;
  v17 = v20;
  *(v15 + 2) = v20;
  *(v15 + 3) = v16;
  *(v15 + 4) = a4;
  (*(v8 + 32))(&v15[v14], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_21B9D7238(v12, v21, &unk_21BA95280, v15, v17);

  return sub_21B9DC078(v12);
}

uint64_t sub_21B9D8300(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_21B9AC1F4;

  return v9(a1, a4);
}

uint64_t sub_21B9D8428()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_21B9D850C;

  return MEMORY[0x282200740]();
}

uint64_t sub_21B9D850C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_21B9D8640;
  }

  else
  {

    v2 = sub_21B9D8628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B9D8640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B9D86A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v4 = *(type metadata accessor for InternalResourceLoader.Key(0) - 8);
  v3[17] = v4;
  v3[18] = *(v4 + 64);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9A8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B9D87E8, 0, 0);
}

uint64_t sub_21B9D87E8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  *(swift_task_alloc() + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9B0);
  sub_21BA8828C();

  v4 = *(v0 + 112);
  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v9;
  v41 = v4 + 64;
  v36 = v3;
  v37 = v1;
  v35 = v4;
  while (v8)
  {
LABEL_11:
    v13 = *(v0 + 184);
    v14 = __clz(__rbit64(v8)) | (v11 << 6);
    sub_21B9DBF68(*(v4 + 48) + *(v3 + 72) * v14, v13);
    v15 = *(v4 + 56) + 40 * v14;
    v16 = *(v1 + 48);
    v17 = v3;
    sub_21B9AFF80(v15, v13 + v16, &qword_27CD9D9B8);
    sub_21B9AFF80(v13 + v16, v0 + 16, &qword_27CD9D9B8);
    if (*(v0 + 48) == 1)
    {
      v18 = *(v0 + 184);
      v19 = *(v0 + 168);
      v20 = *(v0 + 152);
      v38 = *(v0 + 160);
      v39 = *(v0 + 16);
      v21 = sub_21BA8801C();
      v22 = *(v21 - 8);
      (*(v22 + 56))(v19, 1, 1, v21);
      sub_21B9DBF68(v18, v20);
      v23 = (*(v17 + 80) + 40) & ~*(v17 + 80);
      v24 = swift_allocObject();
      v24[2] = 0;
      v25 = v24 + 2;
      v24[3] = 0;
      v24[4] = v39;
      sub_21B9DC100(v20, v24 + v23);
      sub_21B9AFF80(v19, v38, &qword_27CD9D6B8);
      v26 = (*(v22 + 48))(v38, 1, v21);
      v27 = *(v0 + 160);
      if (v26 == 1)
      {
        sub_21B9ABAAC(*(v0 + 160), &qword_27CD9D6B8);
      }

      else
      {
        sub_21BA8800C();
        (*(v22 + 8))(v27, v21);
      }

      v9 = v40;
      v5 = v41;
      if (*v25)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v28 = sub_21BA87F9C();
        v30 = v29;
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v31 = **(v0 + 120);
      v32 = v30 | v28;
      if (v30 | v28)
      {
        v32 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v28;
        *(v0 + 80) = v30;
      }

      v1 = v37;
      v4 = v35;
      v33 = *(v0 + 168);
      *(v0 + 88) = 1;
      *(v0 + 96) = v32;
      *(v0 + 104) = v31;
      swift_task_create();

      sub_21B9ABAAC(v33, &qword_27CD9D6B8);
      v3 = v36;
    }

    else
    {
      sub_21B9ABAAC(v0 + 16, &qword_27CD9D9B8);
      v9 = v40;
      v5 = v41;
    }

    v8 &= v8 - 1;
    result = sub_21B9ABAAC(*(v0 + 184), &qword_27CD9D9A8);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  v34 = swift_task_alloc();
  *(v0 + 192) = v34;
  *v34 = v0;
  v34[1] = sub_21B9D8C98;

  return sub_21B9D9360(0, 0);
}

uint64_t sub_21B9D8C98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21B9D8E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a5;
  v5[11] = type metadata accessor for InternalResourceLoader.Key(0);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v6 = sub_21BA8673C();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[17] = v7;
  *v7 = v5;
  v7[1] = sub_21B9D8F44;

  return MEMORY[0x2821373F0](v5 + 2);
}

uint64_t sub_21B9D8F44()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_21B9D90D8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = sub_21B9D9060;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21B9D9060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B9D90D8()
{
  v34 = v0;
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v7 = sub_21B9E0270();
  (*(v3 + 16))(v2, v7, v4);
  sub_21B9DBF68(v6, v5);
  v8 = v1;
  v9 = sub_21BA8671C();
  v10 = sub_21BA881FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[18];
    v12 = v0[15];
    v13 = v0[13];
    v31 = v0[14];
    v32 = v0[16];
    v14 = v0[12];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315394;
    sub_21B9DBF68(v13, v14);
    v17 = sub_21BA87D2C();
    v19 = v18;
    sub_21B9DC078(v13);
    v20 = sub_21B9B2A60(v17, v19, &v33);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v21 = sub_21BA88B4C();
    v23 = sub_21B9B2A60(v21, v22, &v33);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_21B93D000, v9, v10, "failed to fetch resource for: %s error: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEFF180](v16, -1, -1);
    MEMORY[0x21CEFF180](v15, -1, -1);

    (*(v12 + 8))(v32, v31);
  }

  else
  {
    v24 = v0[18];
    v26 = v0[15];
    v25 = v0[16];
    v28 = v0[13];
    v27 = v0[14];

    sub_21B9DC078(v28);
    (*(v26 + 8))(v25, v27);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_21B9D9360(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_21BA87F9C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_21B9D93F4, v4, v6);
}

uint64_t sub_21B9D93F4()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DEB0);
  if (sub_21BA880AC())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9C0);
    *v3 = v0;
    v3[1] = sub_21B9D952C;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return MEMORY[0x2822004D0](v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_21B9D952C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21B9D9778;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21B9D9648;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21B9D9648()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_21BA880AC())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9C0);
  *v4 = v0;
  v4[1] = sub_21B9D952C;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x2822004D0](v0 + 96, v7, v6, v5);
}

uint64_t sub_21B9D9778()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_21BA880AC())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9C0);
    *v4 = v0;
    v4[1] = sub_21B9D952C;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x2822004D0](v0 + 12, v7, v6, v5);
  }
}

uint64_t sub_21B9D9A28(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_21B9D9AA0, 0, 0);
}

uint64_t sub_21B9D9AA0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_21B9D9B84;

  return MEMORY[0x282200740]();
}

uint64_t sub_21B9D9B84()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_21B9D9D1C;
  }

  else
  {

    v2 = sub_21B9D9CA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B9D9CA0()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21B9D9D1C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  v3 = sub_21BA8637C();

  (*(v2 + 16))(v2, v3);
  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

id sub_21B9D9DC8()
{
  result = [objc_allocWithZone(type metadata accessor for InternalResourceLoader(0)) init];
  qword_27CDA4D58 = result;
  return result;
}

id InternalResourceLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_21B9D9E30()
{
  if (qword_27CDA4D50 != -1)
  {
    swift_once();
  }

  return &qword_27CDA4D58;
}

id static InternalResourceLoader.shared.getter()
{
  if (qword_27CDA4D50 != -1)
  {
    swift_once();
  }

  v1 = qword_27CDA4D58;

  return v1;
}

id InternalResourceLoader.init()()
{
  v1 = sub_21BA8825C();
  MEMORY[0x28223BE20](v1);
  v2 = sub_21BA87BAC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21BA8826C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___RUIInternalResourceLoader__resources] = MEMORY[0x277D84F98];
  v7 = OBJC_IVAR___RUIInternalResourceLoader_queue;
  sub_21B9C6904();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v3);
  sub_21BA87B9C();
  v12 = MEMORY[0x277D84F90];
  sub_21B9DBFCC(&qword_27CD9D970, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D978);
  sub_21B9DC014();
  sub_21BA8848C();
  *&v0[v7] = sub_21BA882AC();
  sub_21BA8661C();
  v8 = type metadata accessor for InternalResourceLoader(0);
  v11.receiver = v0;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

id InternalResourceLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalResourceLoader(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B9DA3E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21B9AC2E8;

  return v6();
}

uint64_t sub_21B9DA4C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21B9AC1F4;

  return v7();
}

uint64_t sub_21B9DA5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21B9AFF80(a3, v23 - v10, &qword_27CD9D6B8);
  v12 = sub_21BA8801C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21B9ABAAC(v11, &qword_27CD9D6B8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21BA8800C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_21BA87F9C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_21BA87D5C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_21B9ABAAC(a3, &qword_27CD9D6B8);

    return v21;
  }

LABEL_8:
  sub_21B9ABAAC(a3, &qword_27CD9D6B8);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_21B9DA8AC(uint64_t a1)
{
  sub_21BA88BAC();
  sub_21B9D62A0();
  v2 = sub_21BA88BCC();

  return sub_21B9DA918(a1, v2);
}

unint64_t sub_21B9DA918(uint64_t a1, uint64_t a2)
{
  v43 = sub_21BA864AC();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9E0);
  MEMORY[0x28223BE20](v46);
  v8 = &v35 - v7;
  v9 = type metadata accessor for InternalResourceLoader.Key(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v18 = &v35 - v17;
  v19 = v2 + 64;
  v20 = -1 << *(v2 + 32);
  v21 = a2 & ~v20;
  if ((*(v2 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = *(v16 + 72);
    v44 = ~v20;
    v45 = v22;
    v37 = (v5 + 32);
    v38 = v2 + 64;
    v42 = (v5 + 8);
    v39 = v9;
    v36 = v2;
    do
    {
      sub_21B9DBF68(*(v2 + 48) + v45 * v21, v18);
      v23 = &v8[*(v46 + 48)];
      sub_21B9DBF68(v18, v8);
      sub_21B9DBF68(a1, v23);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21B9DBF68(v8, v12);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v24 = *(v23 + 16);
          v47[0] = *v23;
          v47[1] = v24;
          v48 = *(v23 + 32);
          v25 = MEMORY[0x21CEFD870](v12, v47);
          sub_21B9AFD9C(v47);
          sub_21B9DC078(v18);
          sub_21B9AFD9C(v12);
          if (v25)
          {
            goto LABEL_15;
          }

LABEL_12:
          sub_21B9DC078(v8);
          goto LABEL_5;
        }

        sub_21B9DC078(v18);
        sub_21B9AFD9C(v12);
      }

      else
      {
        sub_21B9DBF68(v8, v15);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v26 = v40;
          v27 = v15;
          v28 = v43;
          (*v37)(v40, v23, v43);
          v41 = sub_21BA8642C();
          v29 = v12;
          v30 = a1;
          v31 = *v42;
          (*v42)(v26, v28);
          sub_21B9DC078(v18);
          v32 = v27;
          v33 = v28;
          v15 = v27;
          v19 = v38;
          v31(v32, v33);
          a1 = v30;
          v12 = v29;
          v2 = v36;
          if (v41)
          {
LABEL_15:
            sub_21B9DC078(v8);
            return v21;
          }

          goto LABEL_12;
        }

        sub_21B9DC078(v18);
        (*v42)(v15, v43);
      }

      sub_21B9ABAAC(v8, &qword_27CD9D9E0);
LABEL_5:
      v21 = (v21 + 1) & v44;
    }

    while (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  return v21;
}

double sub_21B9DAD34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_21B9DA8AC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B9DBA38();
      v9 = v15;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for InternalResourceLoader.Key(0);
    sub_21B9DC078(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = *(v9 + 56) + 40 * v7;
    v13 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = *(v12 + 32);
    sub_21B9DB39C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -1;
  }

  return result;
}

uint64_t sub_21B9DAE0C(uint64_t a1, int a2)
{
  v3 = v2;
  v60 = sub_21BA864AC();
  v5 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InternalResourceLoader.Key(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v54 - v11;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9D8);
  v63 = a2;
  result = sub_21BA8871C();
  v14 = result;
  if (*(v12 + 16))
  {
    v55 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v57 = (v5 + 32);
    v56 = (v5 + 8);
    v21 = result + 64;
    v22 = v61;
    v58 = v8;
    while (v19)
    {
      v27 = __clz(__rbit64(v19));
      v28 = (v19 - 1) & v19;
LABEL_15:
      v31 = v27 | (v15 << 6);
      v65 = v28;
      v32 = *(v12 + 48);
      v64 = *(v8 + 72);
      v33 = v32 + v64 * v31;
      v34 = 40 * v31;
      if (v63)
      {
        sub_21B9DC100(v33, v22);
        v35 = *(v12 + 56) + v34;
        v36 = *(v35 + 32);
        v37 = *(v35 + 16);
        v68 = *v35;
        v69 = v37;
        v70 = v36;
      }

      else
      {
        sub_21B9DBF68(v33, v22);
        sub_21B9AFF80(*(v12 + 56) + v34, &v68, &qword_27CD9D9B8);
      }

      sub_21BA88BAC();
      v38 = v62;
      sub_21B9DBF68(v22, v62);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = *(v38 + 16);
        v66[0] = *v38;
        v66[1] = v39;
        v67 = *(v38 + 32);
        MEMORY[0x21CEFDF10](1);
        sub_21BA8852C();
        sub_21B9AFD9C(v66);
      }

      else
      {
        v40 = v59;
        v41 = v7;
        v42 = v12;
        v43 = v60;
        (*v57)(v59, v38, v60);
        MEMORY[0x21CEFDF10](0);
        sub_21B9DBFCC(&qword_27CD9D7E0, MEMORY[0x277CC9260]);
        sub_21BA87C0C();
        v44 = v40;
        v22 = v61;
        v45 = v43;
        v12 = v42;
        v7 = v41;
        v8 = v58;
        (*v56)(v44, v45);
      }

      result = sub_21BA88BCC();
      v46 = -1 << *(v14 + 32);
      v47 = result & ~v46;
      v48 = v47 >> 6;
      if (((-1 << v47) & ~*(v21 + 8 * (v47 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v46) >> 6;
        while (++v48 != v50 || (v49 & 1) == 0)
        {
          v51 = v48 == v50;
          if (v48 == v50)
          {
            v48 = 0;
          }

          v49 |= v51;
          v52 = *(v21 + 8 * v48);
          if (v52 != -1)
          {
            v23 = __clz(__rbit64(~v52)) + (v48 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v47) & ~*(v21 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_21B9DC100(v22, *(v14 + 48) + v64 * v23);
      v24 = *(v14 + 56) + 40 * v23;
      v25 = v68;
      v26 = v69;
      *(v24 + 32) = v70;
      *v24 = v25;
      *(v24 + 16) = v26;
      ++*(v14 + 16);
      v19 = v65;
    }

    v29 = v15;
    while (1)
    {
      v15 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v15 >= v20)
      {
        break;
      }

      v30 = v16[v15];
      ++v29;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v28 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v63 & 1) == 0)
    {

      v3 = v55;
      goto LABEL_37;
    }

    v53 = 1 << *(v12 + 32);
    v3 = v55;
    if (v53 >= 64)
    {
      bzero(v16, ((v53 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v53;
    }

    *(v12 + 16) = 0;
  }

LABEL_37:
  *v3 = v14;
  return result;
}

unint64_t sub_21B9DB39C(int64_t a1, uint64_t a2)
{
  v48 = sub_21BA864AC();
  v4 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InternalResourceLoader.Key(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v43 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v50 = (sub_21BA884AC() + 1) & ~v15;
    v18 = *(v7 + 72);
    v44 = (v4 + 32);
    v43 = (v4 + 8);
    v19 = v18;
    v45 = v17;
    v46 = v10;
    v49 = v18;
    do
    {
      v22 = v19 * v16;
      sub_21B9DBF68(*(a2 + 48) + v19 * v16, v13);
      sub_21BA88BAC();
      sub_21B9DBF68(v13, v10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = *(v10 + 1);
        v51[0] = *v10;
        v51[1] = v23;
        v52 = *(v10 + 4);
        MEMORY[0x21CEFDF10](1);
        sub_21BA8852C();
        sub_21B9AFD9C(v51);
      }

      else
      {
        v24 = v47;
        v25 = v10;
        v26 = v13;
        v27 = a1;
        v28 = a2;
        v29 = v14;
        v30 = v6;
        v31 = v48;
        (*v44)(v47, v25, v48);
        MEMORY[0x21CEFDF10](0);
        sub_21B9DBFCC(&qword_27CD9D7E0, MEMORY[0x277CC9260]);
        sub_21BA87C0C();
        v32 = v24;
        v33 = v31;
        v6 = v30;
        v14 = v29;
        a2 = v28;
        a1 = v27;
        v13 = v26;
        v17 = v45;
        v10 = v46;
        (*v43)(v32, v33);
      }

      v34 = sub_21BA88BCC();
      result = sub_21B9DC078(v13);
      v35 = v34 & v17;
      if (a1 >= v50)
      {
        v19 = v49;
        if (v35 < v50)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = v49;
        if (v35 >= v50)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v35)
      {
LABEL_13:
        v36 = *(a2 + 48);
        result = v36 + v19 * a1;
        if (v19 * a1 < v22 || result >= v36 + v22 + v19)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19 * a1 != v22)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v37 = *(a2 + 56);
        v38 = v37 + 40 * a1;
        v39 = (v37 + 40 * v16);
        if (40 * a1 < (40 * v16) || v38 >= v39 + 40 || a1 != v16)
        {
          v20 = *v39;
          v21 = v39[1];
          *(v38 + 32) = *(v39 + 4);
          *v38 = v20;
          *(v38 + 16) = v21;
          a1 = v16;
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v40 = *(a2 + 16);
  v41 = __OFSUB__(v40, 1);
  v42 = v40 - 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v42;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21B9DB7F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for InternalResourceLoader.Key(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_21B9DA8AC(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_21B9DBA38();
      goto LABEL_7;
    }

    sub_21B9DAE0C(v16, a3 & 1);
    v22 = sub_21B9DA8AC(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21B9DBF68(a2, v10);
      return sub_21B9DB984(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_21BA88B0C();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 40 * v13;

  return sub_21B9DD19C(a1, v20);
}

uint64_t sub_21B9DB984(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for InternalResourceLoader.Key(0);
  result = sub_21B9DC100(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v11 = a4[7] + 40 * a1;
  *(v11 + 32) = *(a3 + 32);
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_21B9DBA38()
{
  v1 = v0;
  v2 = type metadata accessor for InternalResourceLoader.Key(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9D8);
  v6 = *v0;
  v7 = sub_21BA8870C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v26 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_21B9DBF68(*(v6 + 48) + v22, v5);
        v21 *= 40;
        sub_21B9AFF80(*(v6 + 56) + v21, v27, &qword_27CD9D9B8);
        result = sub_21B9DC100(v5, *(v8 + 48) + v22);
        v23 = *(v8 + 56) + v21;
        v24 = v27[0];
        v25 = v27[1];
        *(v23 + 32) = v28;
        *v23 = v24;
        *(v23 + 16) = v25;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v26;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_21B9DBC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BA864AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InternalResourceLoader.Key(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9E0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v23 - v16;
  v18 = v23 + *(v15 + 56) - v16;
  sub_21B9DBF68(a1, v23 - v16);
  sub_21B9DBF68(a2, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21B9DBF68(v17, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *(v18 + 1);
      v23[0] = *v18;
      v23[1] = v19;
      v24 = *(v18 + 4);
      v20 = MEMORY[0x21CEFD870](v11, v23);
      sub_21B9AFD9C(v23);
      sub_21B9AFD9C(v11);
LABEL_9:
      sub_21B9DC078(v17);
      return v20 & 1;
    }

    sub_21B9AFD9C(v11);
  }

  else
  {
    sub_21B9DBF68(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, v18, v4);
      v20 = sub_21BA8642C();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v13, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v13, v4);
  }

  sub_21B9ABAAC(v17, &qword_27CD9D9E0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21B9DBF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalResourceLoader.Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9DBFCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21B9DC014()
{
  result = qword_27CD9D980;
  if (!qword_27CD9D980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D980);
  }

  return result;
}

uint64_t sub_21B9DC078(uint64_t a1)
{
  v2 = type metadata accessor for InternalResourceLoader.Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B9DC100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalResourceLoader.Key(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9DC164()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for InternalResourceLoader.Key(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 24);
  v5 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_21B9D6F4C(v4, v0 + v3, v5, v1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B9DC26C(uint64_t a1)
{
  v4 = *(sub_21BA864AC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21B9AC2E8;

  return sub_21B9D8300(a1, v6, v7, v1 + v5);
}

uint64_t sub_21B9DC35C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21B9AC2E8;

  return sub_21B9D86A4(v6, a2, v5);
}

uint64_t sub_21B9DC468()
{
  result = sub_21BA8662C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of InternalResourceLoader.load()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21B9AC2E8;

  return v5();
}

uint64_t sub_21B9DC654()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DEB0);
    result = sub_21BA866DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B9DC6F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_21B9DC810(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_21B9DCA30()
{
  result = sub_21BA864AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B9DCA98()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR___RUIInternalResourceLoader__resources;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_21B9DCB04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21B9AC1F4;

  return sub_21B9D9A28(v2, v3);
}

uint64_t sub_21B9DCBB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21B9AC2E8;

  return sub_21B9DA3E0(v2, v3, v4);
}

uint64_t objectdestroy_36Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B9DCCB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21B9AC2E8;

  return sub_21B9DA4C8(a1, v4, v5, v6);
}

uint64_t sub_21B9DCD7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B9AC2E8;

  return sub_21B9C9648(a1, v4);
}

uint64_t sub_21B9DCE34@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v3) + 0xE0))();

  v4 = OBJC_IVAR___RUIInternalResourceLoader__resources;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t sub_21B9DCEE4()
{
  v2 = *(type metadata accessor for InternalResourceLoader.Key(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21B9AC2E8;

  return sub_21B9D8E0C(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_21B9DCFBC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for InternalResourceLoader.Key(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 24);
  v6 = *(v0 + v4);
  v7 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);

  return sub_21B9D7464(v5, v0 + v3, v6, v8, v9, v1);
}

uint64_t sub_21B9DD060(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for InternalResourceLoader.Key(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_21B9AC1F4;

  return sub_21B9D78B0(a1, v1 + v6, v10, v11, v12, v4);
}

uint64_t sub_21B9DD19C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D9B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9DD20C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v4) + 0xE0))();

  v6 = OBJC_IVAR___RUIInternalResourceLoader__resources;
  swift_beginAccess();
  v7 = *(v4 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = sub_21B9DA8AC(v5);
  if ((v9 & 1) == 0)
  {

LABEL_6:
    memset(v15, 0, sizeof(v15));
    v16 = -1;
    goto LABEL_7;
  }

  sub_21B9AFF80(*(v7 + 56) + 40 * v8, v15, &qword_27CD9D9B8);

  sub_21B9AFF80(v15, v13, &qword_27CD9D9C8);
  if ((v14 & 1) == 0)
  {
    sub_21B9AFF70(v13, &v12);
    v11 = swift_dynamicCast();
    (*(*(v3 - 8) + 56))(a1, v11 ^ 1u, 1, v3);
    return sub_21B9ABAAC(v15, &qword_27CD9D9C8);
  }

  sub_21B9ABAAC(v13, &qword_27CD9D9B8);
LABEL_7:
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  return sub_21B9ABAAC(v15, &qword_27CD9D9C8);
}

void *RUITelemetryElement.url.getter()
{
  v1 = *(v0 + OBJC_IVAR___RUITelemetryElement_url);
  v2 = v1;
  return v1;
}

uint64_t RUITelemetryElement.attributes.getter()
{
  v1 = [*(v0 + OBJC_IVAR___RUITelemetryElement_xmlElement) attributtes];
  v2 = sub_21BA87BCC();

  return v2;
}

uint64_t RUITelemetryElement.name.getter()
{
  v1 = [*(v0 + OBJC_IVAR___RUITelemetryElement_xmlElement) name];
  v2 = sub_21BA87CBC();

  return v2;
}

uint64_t RUITelemetryElement.children.getter()
{
  v1 = v0;
  v16 = sub_21BA864AC();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*&v0[OBJC_IVAR___RUITelemetryElement_xmlElement] children];
  type metadata accessor for RUIXMLElement(0);
  v6 = sub_21BA87F0C();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v7 = sub_21BA884DC();
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_3:
  v17 = MEMORY[0x277D84F90];
  result = sub_21BA8863C();
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = (v2 + 8);
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x21CEFD920](v9, v6);
      }

      else
      {
        v13 = *(v6 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = [v1 url];
      if (v15)
      {
        v11 = v15;
        sub_21BA8643C();

        v12 = sub_21BA8641C();
        (*v10)(v4, v16);
      }

      else
      {
        v12 = 0;
      }

      ++v9;
      [objc_allocWithZone(RUITelemetryElement) initWithXMLElement:v14 url:v12];

      sub_21BA8861C();
      sub_21BA8864C();
      sub_21BA8865C();
      sub_21BA8862C();
    }

    while (v7 != v9);

    return v17;
  }

  return result;
}

id RUITelemetryElement.parent.getter()
{
  v1 = sub_21BA864AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*&v0[OBJC_IVAR___RUITelemetryElement_xmlElement] parent];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v0 url];
  if (v7)
  {
    v8 = v7;
    sub_21BA8643C();

    v9 = sub_21BA8641C();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(RUITelemetryElement) initWithXMLElement:v6 url:v9];

  return v10;
}

void __swiftcall RUITelemetryElement.init()(RUITelemetryElement *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for RUITelemetryElement()
{
  result = qword_27CDA4F98[0];
  if (!qword_27CDA4F98[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CDA4F98);
  }

  return result;
}

uint64_t *sub_21B9DDCB8()
{
  if (qword_27CDA0330 != -1)
  {
    swift_once();
  }

  return &qword_27CDA0338;
}

id static RUIContentRegistry.shared.getter()
{
  if (qword_27CDA0330 != -1)
  {
    swift_once();
  }

  v1 = qword_27CDA0338;

  return v1;
}

id sub_21B9DDDC0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8RemoteUI18RUIContentRegistry_views;
  *&v2[OBJC_IVAR____TtC8RemoteUI18RUIContentRegistry_views] = a1;
  if (_sSo11RUIPlatformC8RemoteUIE17isSolariumEnabledSbvgZ_0(a1, a2))
  {
    v4 = type metadata accessor for PinViewElement(0);
    v5 = sub_21B9DE714(&unk_27CD9BBA8, type metadata accessor for PinViewElement);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *&v2[v3];
    *&v2[v3] = 0x8000000000000000;
    sub_21B941004(v4, v5, 0x776569566E6970, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    *&v2[v3] = v8;
    swift_endAccess();
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for RUIContentRegistry();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_21B9DDECC(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8RemoteUI18RUIContentRegistry_views;
  swift_beginAccess();
  if (*(*(v2 + v5) + 16))
  {

    sub_21B940DCC(a1, a2);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21B9DE014()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BA954C0;
  *(inited + 32) = 0x69566563696F6863;
  *(inited + 40) = 0xEA00000000007765;
  v1 = sub_21B93F880();
  *(inited + 48) = &type metadata for ChoiceView;
  *(inited + 56) = v1;
  *(inited + 64) = 0x6F684369746C756DLL;
  *(inited + 72) = 0xEF77656956656369;
  v2 = sub_21B9DE6C0();
  *(inited + 80) = &type metadata for MultiChoiceView;
  *(inited + 88) = v2;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x800000021BAA4650;
  *(inited + 112) = &type metadata for ChoiceView;
  *(inited + 120) = v1;
  *(inited + 128) = 0x6F5272656E6E6162;
  *(inited + 136) = 0xE900000000000077;
  v3 = type metadata accessor for BannerRowElement();
  v4 = sub_21B9DE714(&qword_27CD9BB30, type metadata accessor for BannerRowElement);
  *(inited + 144) = v3;
  *(inited + 152) = v4;
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x800000021BAA4670;
  v5 = sub_21B9409AC();
  *(inited + 176) = &type metadata for ExpandingSubLabelElement;
  *(inited + 184) = v5;
  strcpy((inited + 192), "featureIntro");
  *(inited + 205) = 0;
  *(inited + 206) = -5120;
  v6 = sub_21B940B34();
  *(inited + 208) = &type metadata for FeatureIntroElement;
  *(inited + 216) = v6;
  *(inited + 224) = 0x6B6E694C706C6568;
  *(inited + 232) = 0xE800000000000000;
  v7 = type metadata accessor for HelpLinkElement();
  v8 = sub_21B9DE714(&qword_27CD9BB80, type metadata accessor for HelpLinkElement);
  *(inited + 240) = v7;
  *(inited + 248) = v8;
  v9 = sub_21B940CBC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA10);
  result = swift_arrayDestroy();
  qword_27CDA0348 = v9;
  return result;
}

uint64_t sub_21B9DE254(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8RemoteUI18RUIContentRegistry_views;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_21B940DCC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 16 * v7);

      return v9;
    }
  }

  return 0;
}

id RUIContentRegistry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RUIContentRegistry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RUIContentRegistry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t View.viewType(_:named:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  if (qword_27CDA0330 != -1)
  {
    swift_once();
  }

  (*((*MEMORY[0x277D85000] & *qword_27CDA0338) + 0x88))();
  v5 = *(*(a1 - 8) + 16);

  return v5(a2, v2, a1);
}

void *sub_21B9DE558()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA00);
  v2 = *v0;
  v3 = sub_21BA8870C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

unint64_t sub_21B9DE6C0()
{
  result = qword_27CD9BB58;
  if (!qword_27CD9BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BB58);
  }

  return result;
}

uint64_t sub_21B9DE714(unint64_t *a1, void (*a2)(uint64_t))
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