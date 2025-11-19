uint64_t static ContactResolver.BackgroundSignalSet.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return sub_1DD3C3E7C(*(a1 + 2), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD434AA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001DD66BD70 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000021 && 0x80000001DD66BD90 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000017 && 0x80000001DD66B9A0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

unint64_t sub_1DD434BC0(char a1)
{
  result = 0xD000000000000017;
  if (a1 == 1)
  {
    return 0xD000000000000021;
  }

  return result;
}

uint64_t sub_1DD434C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD434AA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD434C44(uint64_t a1)
{
  v2 = sub_1DD439D44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD434C80(uint64_t a1)
{
  v2 = sub_1DD439D44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactResolver.BackgroundSignalSet.encode(to:)()
{
  OUTLINED_FUNCTION_42_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBB8, &qword_1DD64A118);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *v0;
  v13 = *(v0 + 1);
  v18 = *(v0 + 2);
  v14 = v3[3];
  v15 = v3[4];
  OUTLINED_FUNCTION_44_5(v3);
  sub_1DD439D44();
  OUTLINED_FUNCTION_45_5();
  sub_1DD640EF8();
  v22 = 0;
  sub_1DD640C28();
  if (!v1)
  {
    v16 = v18;
    v21 = 1;
    sub_1DD640C38();
    v20 = v16;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBC0, &unk_1DD64A120);
    OUTLINED_FUNCTION_22_0();
    sub_1DD439E40(v17);
    sub_1DD640C68();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_43_6();
}

void ContactResolver.BackgroundSignalSet.init(from:)()
{
  OUTLINED_FUNCTION_42_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBC8, &qword_1DD64A130);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66_1();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_44_5(v2);
  sub_1DD439D44();
  OUTLINED_FUNCTION_45_5();
  sub_1DD640ED8();
  if (!v0)
  {
    OUTLINED_FUNCTION_4_18();
    v11 = sub_1DD640B38();
    sub_1DD640B48();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBC0, &unk_1DD64A120);
    OUTLINED_FUNCTION_23_10();
    sub_1DD439E40(v14);
    sub_1DD640B78();
    v15 = OUTLINED_FUNCTION_41();
    v16(v15);
    *v4 = v11 & 1;
    *(v4 + 8) = v13;
    *(v4 + 16) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  OUTLINED_FUNCTION_43_6();
}

uint64_t static ContactResolver.HandleSignalSet.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v6 = sub_1DD63F148();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  OUTLINED_FUNCTION_3(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_22_4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB88, &qword_1DD64A0E8);
  OUTLINED_FUNCTION_7(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32_6();
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    goto LABEL_23;
  }

  v23 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  v24 = v23[9];
  v25 = *(v19 + 48);
  sub_1DD4313E0(&a1[v24], v2);
  sub_1DD4313E0(&a2[v24], v2 + v25);
  OUTLINED_FUNCTION_105(v2);
  if (!v26)
  {
    sub_1DD4313E0(v2, v3);
    OUTLINED_FUNCTION_105(v2 + v25);
    if (!v26)
    {
      (*(v9 + 32))(v14, v2 + v25, v6);
      OUTLINED_FUNCTION_1_29();
      sub_1DD433844(v27);
      v28 = sub_1DD63FD98();
      v29 = *(v9 + 8);
      v29(v14, v6);
      v29(v3, v6);
      sub_1DD390754(v2, &qword_1ECCDCB80, &qword_1DD64A0E0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    (*(v9 + 8))(v3, v6);
LABEL_14:
    sub_1DD390754(v2, &qword_1ECCDCB88, &qword_1DD64A0E8);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_105(v2 + v25);
  if (!v26)
  {
    goto LABEL_14;
  }

  sub_1DD390754(v2, &qword_1ECCDCB80, &qword_1DD64A0E0);
LABEL_16:
  OUTLINED_FUNCTION_30(v23[10]);
  if (v26)
  {
    OUTLINED_FUNCTION_30(v23[11]);
    if (v26)
    {
      OUTLINED_FUNCTION_30(v23[12]);
      if (v26)
      {
        OUTLINED_FUNCTION_30(v23[13]);
        if (v26)
        {
          v30 = a1[v23[14]] ^ a2[v23[14]] ^ 1;
          return v30 & 1;
        }
      }
    }
  }

LABEL_23:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1DD4353D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001DD66BDC0 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001DD66BDE0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4D79726575517369 && a2 == 0xEC00000068637461;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001DD66BE00 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5379726F74736968 && a2 == 0xEC00000073746174;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x746E656365527369 && a2 == 0xE800000000000000;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7265666572507369 && a2 == 0xEF65707954646572;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65776F6C6C417369 && a2 == 0xED00006570795464;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6954656361467369 && a2 == 0xEE00656C6261656DLL;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000011 && 0x80000001DD66BE20 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1DD640CD8();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1DD43575C(char a1)
{
  result = 0x69726F7661467369;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4D79726575517369;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x5379726F74736968;
      break;
    case 6:
      result = 0x746E656365527369;
      break;
    case 7:
      result = 0x7265666572507369;
      break;
    case 8:
      result = 0x65776F6C6C417369;
      break;
    case 9:
      result = 0x6954656361467369;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DD4358CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4353D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4358F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD435754();
  *a1 = result;
  return result;
}

uint64_t sub_1DD43591C(uint64_t a1)
{
  v2 = sub_1DD439F3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD435958(uint64_t a1)
{
  v2 = sub_1DD439F3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactResolver.HandleSignalSet.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBD0, &qword_1DD64A138);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32_6();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD439F3C();
  OUTLINED_FUNCTION_47_5();
  v13 = *v4;
  OUTLINED_FUNCTION_18_12();
  if (!v2)
  {
    v14 = v4[1];
    OUTLINED_FUNCTION_18_12();
    v15 = v4[2];
    OUTLINED_FUNCTION_18_12();
    v16 = v4[3];
    OUTLINED_FUNCTION_18_12();
    v17 = v4[4];
    OUTLINED_FUNCTION_18_12();
    v18 = type metadata accessor for ContactResolver.HandleSignalSet(0);
    v19 = v18[9];
    sub_1DD63F148();
    OUTLINED_FUNCTION_1_29();
    sub_1DD433844(v20);
    sub_1DD640C08();
    v21 = v4[v18[10]];
    OUTLINED_FUNCTION_18_12();
    v22 = v4[v18[11]];
    OUTLINED_FUNCTION_18_12();
    v23 = v4[v18[12]];
    OUTLINED_FUNCTION_18_12();
    v24 = v4[v18[13]];
    OUTLINED_FUNCTION_18_12();
    v25 = v4[v18[14]];
    OUTLINED_FUNCTION_18_12();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t ContactResolver.HandleSignalSet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v42 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBD8, &qword_1DD64A140);
  OUTLINED_FUNCTION_0(v51);
  v49 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v19 = (v18 - v17);
  v19[4] = 0;
  *v19 = 0;
  v20 = v15[11];
  v21 = sub_1DD63F148();
  v47 = v20;
  v48 = v21;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v46 = v15[12];
  v19[v46] = 0;
  v26 = v15[13];
  v19[v26] = 0;
  v27 = v15[14];
  v19[v27] = 0;
  v28 = v15[15];
  v19[v28] = 0;
  v29 = v15[16];
  v53 = a1;
  v54 = v19;
  v19[v29] = 0;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD439F3C();
  v31 = v52;
  sub_1DD640ED8();
  if (!v31)
  {
    v52 = v26;
    v43 = v29;
    v44 = v27;
    v33 = v49;
    v32 = v50;
    v65 = 0;
    v34 = OUTLINED_FUNCTION_21_7();
    v36 = v54;
    *v54 = v34 & 1;
    v64 = 1;
    v36[1] = OUTLINED_FUNCTION_21_7() & 1;
    v63 = 2;
    v36[2] = OUTLINED_FUNCTION_21_7() & 1;
    v62 = 3;
    v36[3] = OUTLINED_FUNCTION_21_7() & 1;
    v61 = 4;
    v36[4] = OUTLINED_FUNCTION_21_7() & 1;
    v60 = 5;
    OUTLINED_FUNCTION_1_29();
    sub_1DD433844(v37);
    sub_1DD640B18();
    sub_1DD439B00(v32, &v36[v47]);
    v59 = 6;
    v36[v46] = OUTLINED_FUNCTION_21_7() & 1;
    v58 = 7;
    v36[v52] = OUTLINED_FUNCTION_21_7() & 1;
    v57 = 8;
    v36[v44] = OUTLINED_FUNCTION_21_7() & 1;
    v56 = 9;
    v38 = sub_1DD640B38();
    v39 = v54;
    v54[v28] = v38 & 1;
    v55 = 10;
    v40 = v51;
    v41 = sub_1DD640B38();
    (*(v33 + 8))(v13, v40);
    *(v39 + v43) = v41 & 1;
    sub_1DD439FE4(v39, v45, type metadata accessor for ContactResolver.HandleSignalSet);
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  return sub_1DD439F90();
}

uint64_t sub_1DD43610C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001DD66BE40 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD640CD8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s13SiriInference0A15SignalsFeaturesO9hashValueSivg_0()
{
  sub_1DD640E28();
  MEMORY[0x1E12B3140](0);
  return sub_1DD640E78();
}

uint64_t sub_1DD4361F4()
{
  sub_1DD640E28();
  MEMORY[0x1E12B3140](0);
  return sub_1DD640E78();
}

uint64_t sub_1DD436238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD43610C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD436264(uint64_t a1)
{
  v2 = sub_1DD43A044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4362A0(uint64_t a1)
{
  v2 = sub_1DD43A044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactResolver.BackgroundHandleSignalSet.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBE0, &qword_1DD64A148);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_4();
  v10 = *v1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD43A044();
  OUTLINED_FUNCTION_47_5();
  sub_1DD640C38();
  return (*(v6 + 8))(v2, v4);
}

void ContactResolver.BackgroundHandleSignalSet.init(from:)()
{
  OUTLINED_FUNCTION_42_4();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBF0, &qword_1DD64A150);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_66_1();
  v12 = v3[3];
  v13 = v3[4];
  OUTLINED_FUNCTION_44_5(v3);
  sub_1DD43A044();
  OUTLINED_FUNCTION_45_5();
  sub_1DD640ED8();
  if (!v0)
  {
    sub_1DD640B48();
    v15 = v14;
    (*(v8 + 8))(v1, v6);
    *v5 = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_43_6();
}

uint64_t sub_1DD436544(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001DD6675B0 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x80000001DD6675D0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x80000001DD6675F0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001DD667610 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001BLL && 0x80000001DD667630 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000001DD667650 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F63536369706F74 && a2 == 0xEA00000000006572;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001FLL && 0x80000001DD667680 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001CLL && 0x80000001DD6676A0 == a2;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000020 && 0x80000001DD6676C0 == a2;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001FLL && 0x80000001DD6676F0 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001CLL && 0x80000001DD667710 == a2;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000020 && 0x80000001DD667730 == a2;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001FLL && 0x80000001DD667760 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000001CLL && 0x80000001DD667780 == a2;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000020 && 0x80000001DD6677A0 == a2;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000025 && 0x80000001DD6677D0 == a2;
                                  if (v21 || (sub_1DD640CD8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000022 && 0x80000001DD667800 == a2;
                                    if (v22 || (sub_1DD640CD8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000026 && 0x80000001DD667830 == a2;
                                      if (v23 || (sub_1DD640CD8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000025 && 0x80000001DD667860 == a2;
                                        if (v24 || (sub_1DD640CD8() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000022 && 0x80000001DD667890 == a2;
                                          if (v25 || (sub_1DD640CD8() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000026 && 0x80000001DD6678C0 == a2;
                                            if (v26 || (sub_1DD640CD8() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000025 && 0x80000001DD6678F0 == a2;
                                              if (v27 || (sub_1DD640CD8() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000022 && 0x80000001DD667920 == a2;
                                                if (v28 || (sub_1DD640CD8() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000026 && 0x80000001DD667950 == a2;
                                                  if (v29 || (sub_1DD640CD8() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD00000000000001FLL && 0x80000001DD667980 == a2;
                                                    if (v30 || (sub_1DD640CD8() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD00000000000001CLL && 0x80000001DD6679A0 == a2;
                                                      if (v31 || (sub_1DD640CD8() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000020 && 0x80000001DD6679C0 == a2;
                                                        if (v32 || (sub_1DD640CD8() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD00000000000001FLL && 0x80000001DD6679F0 == a2;
                                                          if (v33 || (sub_1DD640CD8() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD00000000000001CLL && 0x80000001DD667A10 == a2;
                                                            if (v34 || (sub_1DD640CD8() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000020 && 0x80000001DD667A30 == a2;
                                                              if (v35 || (sub_1DD640CD8() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD00000000000001FLL && 0x80000001DD667A60 == a2;
                                                                if (v36 || (sub_1DD640CD8() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD00000000000001CLL && 0x80000001DD667A80 == a2;
                                                                  if (v37 || (sub_1DD640CD8() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000020 && 0x80000001DD667AA0 == a2;
                                                                    if (v38 || (sub_1DD640CD8() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD00000000000001FLL && 0x80000001DD667AD0 == a2;
                                                                      if (v39 || (sub_1DD640CD8() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD00000000000001CLL && 0x80000001DD667AF0 == a2;
                                                                        if (v40 || (sub_1DD640CD8() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000020 && 0x80000001DD667B10 == a2;
                                                                          if (v41 || (sub_1DD640CD8() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD00000000000001FLL && 0x80000001DD667B40 == a2;
                                                                            if (v42 || (sub_1DD640CD8() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD00000000000001CLL && 0x80000001DD667B60 == a2;
                                                                              if (v43 || (sub_1DD640CD8() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000020 && 0x80000001DD667B80 == a2;
                                                                                if (v44 || (sub_1DD640CD8() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD00000000000001FLL && 0x80000001DD667BB0 == a2;
                                                                                  if (v45 || (sub_1DD640CD8() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD00000000000001CLL && 0x80000001DD667BD0 == a2;
                                                                                    if (v46 || (sub_1DD640CD8() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000020 && 0x80000001DD667BF0 == a2;
                                                                                      if (v47 || (sub_1DD640CD8() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD000000000000019 && 0x80000001DD667C20 == a2;
                                                                                        if (v48 || (sub_1DD640CD8() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000016 && 0x80000001DD667C40 == a2;
                                                                                          if (v49 || (sub_1DD640CD8() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0xD00000000000001ALL && 0x80000001DD667C60 == a2;
                                                                                            if (v50 || (sub_1DD640CD8() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0xD000000000000019 && 0x80000001DD667C80 == a2;
                                                                                              if (v51 || (sub_1DD640CD8() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 0xD000000000000016 && 0x80000001DD667CA0 == a2;
                                                                                                if (v52 || (sub_1DD640CD8() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0xD00000000000001ALL && 0x80000001DD667CC0 == a2;
                                                                                                  if (v53 || (sub_1DD640CD8() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v54 = a1 == 0xD000000000000019 && 0x80000001DD667CE0 == a2;
                                                                                                    if (v54 || (sub_1DD640CD8() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v55 = a1 == 0xD000000000000016 && 0x80000001DD667D00 == a2;
                                                                                                      if (v55 || (sub_1DD640CD8() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v56 = a1 == 0xD00000000000001ALL && 0x80000001DD667D20 == a2;
                                                                                                        if (v56 || (sub_1DD640CD8() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v57 = a1 == 0xD000000000000025 && 0x80000001DD667D40 == a2;
                                                                                                          if (v57 || (sub_1DD640CD8() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v58 = a1 == 0xD000000000000022 && 0x80000001DD667D70 == a2;
                                                                                                            if (v58 || (sub_1DD640CD8() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v59 = a1 == 0xD000000000000026 && 0x80000001DD667DA0 == a2;
                                                                                                              if (v59 || (sub_1DD640CD8() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v60 = a1 == 0xD000000000000025 && 0x80000001DD667DD0 == a2;
                                                                                                                if (v60 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v61 = a1 == 0xD000000000000022 && 0x80000001DD667E00 == a2;
                                                                                                                  if (v61 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v62 = a1 == 0xD000000000000026 && 0x80000001DD667E30 == a2;
                                                                                                                    if (v62 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v63 = a1 == 0xD000000000000025 && 0x80000001DD667E60 == a2;
                                                                                                                      if (v63 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v64 = a1 == 0xD000000000000022 && 0x80000001DD667E90 == a2;
                                                                                                                        if (v64 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v65 = a1 == 0xD000000000000026 && 0x80000001DD667EC0 == a2;
                                                                                                                          if (v65 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v66 = a1 == 0xD000000000000023 && 0x80000001DD667EF0 == a2;
                                                                                                                            if (v66 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                            {

                                                                                                                              return 61;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v67 = a1 == 0xD000000000000020 && 0x80000001DD667F20 == a2;
                                                                                                                              if (v67 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                              {

                                                                                                                                return 62;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v68 = a1 == 0xD000000000000024 && 0x80000001DD667F50 == a2;
                                                                                                                                if (v68 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                {

                                                                                                                                  return 63;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v69 = a1 == 0xD000000000000023 && 0x80000001DD667F80 == a2;
                                                                                                                                  if (v69 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                  {

                                                                                                                                    return 64;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v70 = a1 == 0xD000000000000020 && 0x80000001DD667FB0 == a2;
                                                                                                                                    if (v70 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                    {

                                                                                                                                      return 65;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v71 = a1 == 0xD000000000000024 && 0x80000001DD667FE0 == a2;
                                                                                                                                      if (v71 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                      {

                                                                                                                                        return 66;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v72 = a1 == 0xD000000000000023 && 0x80000001DD668010 == a2;
                                                                                                                                        if (v72 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                        {

                                                                                                                                          return 67;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v73 = a1 == 0xD000000000000020 && 0x80000001DD668040 == a2;
                                                                                                                                          if (v73 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                          {

                                                                                                                                            return 68;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v74 = a1 == 0xD000000000000024 && 0x80000001DD668070 == a2;
                                                                                                                                            if (v74 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                            {

                                                                                                                                              return 69;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v75 = a1 == 0xD000000000000022 && 0x80000001DD6680A0 == a2;
                                                                                                                                              if (v75 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                              {

                                                                                                                                                return 70;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v76 = a1 == 0xD00000000000001FLL && 0x80000001DD6680D0 == a2;
                                                                                                                                                if (v76 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  return 71;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v77 = a1 == 0xD000000000000023 && 0x80000001DD6680F0 == a2;
                                                                                                                                                  if (v77 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    return 72;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v78 = a1 == 0xD000000000000022 && 0x80000001DD668120 == a2;
                                                                                                                                                    if (v78 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      return 73;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v79 = a1 == 0xD00000000000001FLL && 0x80000001DD668150 == a2;
                                                                                                                                                      if (v79 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        return 74;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v80 = a1 == 0xD000000000000023 && 0x80000001DD668170 == a2;
                                                                                                                                                        if (v80 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          return 75;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v81 = a1 == 0xD000000000000022 && 0x80000001DD6681A0 == a2;
                                                                                                                                                          if (v81 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            return 76;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v82 = a1 == 0xD00000000000001FLL && 0x80000001DD6681D0 == a2;
                                                                                                                                                            if (v82 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                            {

                                                                                                                                                              return 77;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v83 = a1 == 0xD000000000000023 && 0x80000001DD6681F0 == a2;
                                                                                                                                                              if (v83 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                              {

                                                                                                                                                                return 78;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v84 = a1 == 0xD000000000000023 && 0x80000001DD668220 == a2;
                                                                                                                                                                if (v84 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                {

                                                                                                                                                                  return 79;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v85 = a1 == 0xD000000000000020 && 0x80000001DD668250 == a2;
                                                                                                                                                                  if (v85 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                  {

                                                                                                                                                                    return 80;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v86 = a1 == 0xD000000000000024 && 0x80000001DD668280 == a2;
                                                                                                                                                                    if (v86 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                    {

                                                                                                                                                                      return 81;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v87 = a1 == 0xD000000000000023 && 0x80000001DD6682B0 == a2;
                                                                                                                                                                      if (v87 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                      {

                                                                                                                                                                        return 82;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v88 = a1 == 0xD000000000000020 && 0x80000001DD6682E0 == a2;
                                                                                                                                                                        if (v88 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                        {

                                                                                                                                                                          return 83;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v89 = a1 == 0xD000000000000024 && 0x80000001DD668310 == a2;
                                                                                                                                                                          if (v89 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                          {

                                                                                                                                                                            return 84;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v90 = a1 == 0xD000000000000023 && 0x80000001DD668340 == a2;
                                                                                                                                                                            if (v90 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                            {

                                                                                                                                                                              return 85;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v91 = a1 == 0xD000000000000020 && 0x80000001DD668370 == a2;
                                                                                                                                                                              if (v91 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                              {

                                                                                                                                                                                return 86;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v92 = a1 == 0xD000000000000024 && 0x80000001DD6683A0 == a2;
                                                                                                                                                                                if (v92 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                {

                                                                                                                                                                                  return 87;
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v93 = a1 == 0xD000000000000021 && 0x80000001DD6683D0 == a2;
                                                                                                                                                                                  if (v93 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                  {

                                                                                                                                                                                    return 88;
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v94 = a1 == 0xD00000000000001ELL && 0x80000001DD668400 == a2;
                                                                                                                                                                                    if (v94 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                    {

                                                                                                                                                                                      return 89;
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      v95 = a1 == 0xD000000000000022 && 0x80000001DD668420 == a2;
                                                                                                                                                                                      if (v95 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                      {

                                                                                                                                                                                        return 90;
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v96 = a1 == 0xD000000000000021 && 0x80000001DD668450 == a2;
                                                                                                                                                                                        if (v96 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                        {

                                                                                                                                                                                          return 91;
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v97 = a1 == 0xD00000000000001ELL && 0x80000001DD668480 == a2;
                                                                                                                                                                                          if (v97 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                          {

                                                                                                                                                                                            return 92;
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v98 = a1 == 0xD000000000000022 && 0x80000001DD6684A0 == a2;
                                                                                                                                                                                            if (v98 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                            {

                                                                                                                                                                                              return 93;
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v99 = a1 == 0xD000000000000021 && 0x80000001DD6684D0 == a2;
                                                                                                                                                                                              if (v99 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                              {

                                                                                                                                                                                                return 94;
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v100 = a1 == 0xD00000000000001ELL && 0x80000001DD668500 == a2;
                                                                                                                                                                                                if (v100 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                {

                                                                                                                                                                                                  return 95;
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  v101 = a1 == 0xD000000000000022 && 0x80000001DD668520 == a2;
                                                                                                                                                                                                  if (v101 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                  {

                                                                                                                                                                                                    return 96;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v102 = a1 == 0xD00000000000001ALL && 0x80000001DD668550 == a2;
                                                                                                                                                                                                    if (v102 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                    {

                                                                                                                                                                                                      return 97;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v103 = a1 == 0xD000000000000017 && 0x80000001DD668570 == a2;
                                                                                                                                                                                                      if (v103 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                      {

                                                                                                                                                                                                        return 98;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v104 = a1 == 0xD00000000000001BLL && 0x80000001DD668590 == a2;
                                                                                                                                                                                                        if (v104 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                        {

                                                                                                                                                                                                          return 99;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v105 = a1 == 0xD00000000000001ALL && 0x80000001DD6685B0 == a2;
                                                                                                                                                                                                          if (v105 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                          {

                                                                                                                                                                                                            return 100;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v106 = a1 == 0xD000000000000017 && 0x80000001DD6685D0 == a2;
                                                                                                                                                                                                            if (v106 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                            {

                                                                                                                                                                                                              return 101;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v107 = a1 == 0xD00000000000001BLL && 0x80000001DD6685F0 == a2;
                                                                                                                                                                                                              if (v107 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                              {

                                                                                                                                                                                                                return 102;
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v108 = a1 == 0xD00000000000001ALL && 0x80000001DD668610 == a2;
                                                                                                                                                                                                                if (v108 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                {

                                                                                                                                                                                                                  return 103;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v109 = a1 == 0xD000000000000017 && 0x80000001DD668630 == a2;
                                                                                                                                                                                                                  if (v109 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                  {

                                                                                                                                                                                                                    return 104;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v110 = a1 == 0xD00000000000001BLL && 0x80000001DD668650 == a2;
                                                                                                                                                                                                                    if (v110 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                    {

                                                                                                                                                                                                                      return 105;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v111 = a1 == 0xD00000000000001ELL && 0x80000001DD668670 == a2;
                                                                                                                                                                                                                      if (v111 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                      {

                                                                                                                                                                                                                        return 106;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v112 = a1 == 0xD00000000000001BLL && 0x80000001DD668690 == a2;
                                                                                                                                                                                                                        if (v112 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                        {

                                                                                                                                                                                                                          return 107;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v113 = a1 == 0xD00000000000001FLL && 0x80000001DD6686B0 == a2;
                                                                                                                                                                                                                          if (v113 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                          {

                                                                                                                                                                                                                            return 108;
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          else
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v114 = a1 == 0xD00000000000001ELL && 0x80000001DD6686D0 == a2;
                                                                                                                                                                                                                            if (v114 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                            {

                                                                                                                                                                                                                              return 109;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v115 = a1 == 0xD00000000000001BLL && 0x80000001DD6686F0 == a2;
                                                                                                                                                                                                                              if (v115 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                return 110;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v116 = a1 == 0xD00000000000001FLL && 0x80000001DD668710 == a2;
                                                                                                                                                                                                                                if (v116 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                  return 111;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v117 = a1 == 0xD000000000000010 && 0x80000001DD668730 == a2;
                                                                                                                                                                                                                                  if (v117 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                    return 112;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v118 = a1 == 0xD000000000000022 && 0x80000001DD668750 == a2;
                                                                                                                                                                                                                                    if (v118 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                      return 113;
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v119 = a1 == 0xD000000000000010 && 0x80000001DD668780 == a2;
                                                                                                                                                                                                                                      if (v119 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                        return 114;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v120 = a1 == 0xD000000000000010 && 0x80000001DD6687A0 == a2;
                                                                                                                                                                                                                                        if (v120 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                          return 115;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v121 = a1 == 0xD00000000000001BLL && 0x80000001DD6687C0 == a2;
                                                                                                                                                                                                                                          if (v121 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                            return 116;
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v122 = a1 == 0xD000000000000012 && 0x80000001DD6687E0 == a2;
                                                                                                                                                                                                                                            if (v122 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                              return 117;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            else if (a1 == 0xD00000000000001ALL && 0x80000001DD668800 == a2)
                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                              return 118;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v124 = sub_1DD640CD8();

                                                                                                                                                                                                                                              if (v124)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                return 118;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                return 119;
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
}

unint64_t sub_1DD438634(char a1)
{
  result = 0x6F63536369706F74;
  switch(a1)
  {
    case 1:
    case 4:
    case 99:
    case 102:
    case 105:
    case 107:
    case 110:
    case 116:
      result = 0xD00000000000001BLL;
      break;
    case 2:
    case 45:
    case 48:
    case 51:
    case 97:
    case 100:
    case 103:
    case 118:
      result = 0xD00000000000001ALL;
      break;
    case 3:
    case 44:
    case 47:
    case 50:
      result = 0xD000000000000016;
      break;
    case 5:
    case 98:
    case 101:
    case 104:
      result = 0xD000000000000017;
      break;
    case 6:
      return result;
    case 7:
    case 10:
    case 13:
    case 25:
    case 28:
    case 31:
    case 34:
    case 37:
    case 40:
    case 71:
    case 74:
    case 77:
    case 108:
    case 111:
      result = 0xD00000000000001FLL;
      break;
    case 8:
    case 11:
    case 14:
    case 26:
    case 29:
    case 32:
    case 35:
    case 38:
    case 41:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0xD000000000000020;
      break;
    case 16:
    case 19:
    case 22:
    case 52:
    case 55:
    case 58:
      result = 0xD000000000000025;
      break;
    case 17:
    case 20:
    case 23:
    case 53:
    case 56:
    case 59:
    case 70:
    case 73:
    case 76:
    case 90:
    case 93:
    case 96:
    case 113:
      result = 0xD000000000000022;
      break;
    case 18:
    case 21:
    case 24:
    case 54:
    case 57:
    case 60:
      result = 0xD000000000000026;
      break;
    case 27:
      result = 0xD000000000000020;
      break;
    case 30:
      result = 0xD000000000000020;
      break;
    case 33:
      result = 0xD000000000000020;
      break;
    case 36:
      result = 0xD000000000000020;
      break;
    case 39:
      result = 0xD000000000000020;
      break;
    case 42:
      result = 0xD000000000000020;
      break;
    case 43:
    case 46:
    case 49:
      result = 0xD000000000000019;
      break;
    case 61:
    case 64:
    case 67:
    case 72:
    case 75:
    case 78:
    case 79:
    case 82:
    case 85:
      result = 0xD000000000000023;
      break;
    case 62:
      result = 0xD000000000000020;
      break;
    case 63:
    case 66:
    case 69:
    case 81:
    case 84:
    case 87:
      result = 0xD000000000000024;
      break;
    case 65:
      result = 0xD000000000000020;
      break;
    case 68:
      result = 0xD000000000000020;
      break;
    case 80:
      result = 0xD000000000000020;
      break;
    case 83:
      result = 0xD000000000000020;
      break;
    case 86:
      result = 0xD000000000000020;
      break;
    case 88:
    case 91:
    case 94:
      result = 0xD000000000000021;
      break;
    case 89:
    case 92:
    case 95:
    case 106:
    case 109:
      result = 0xD00000000000001ELL;
      break;
    case 112:
    case 114:
    case 115:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1DD438DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD436544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD438DF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD43862C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD438E18(uint64_t a1)
{
  v2 = sub_1DD43A098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD438E54(uint64_t a1)
{
  v2 = sub_1DD43A098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD438EA8(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBF8, &qword_1DD64A158);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32_6();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD43A098();
  OUTLINED_FUNCTION_47_5();
  v13 = v4[2];
  OUTLINED_FUNCTION_12_16();
  sub_1DD640C38();
  if (!v2)
  {
    v14 = v4[3];
    OUTLINED_FUNCTION_6_19(1);
    v15 = v4[4];
    OUTLINED_FUNCTION_6_19(2);
    v16 = v4[5];
    OUTLINED_FUNCTION_6_19(3);
    v17 = v4[6];
    OUTLINED_FUNCTION_6_19(4);
    v18 = v4[7];
    OUTLINED_FUNCTION_6_19(5);
    v19 = v4[8];
    OUTLINED_FUNCTION_6_19(6);
    v20 = v4[9];
    OUTLINED_FUNCTION_6_19(7);
    v21 = v4[10];
    OUTLINED_FUNCTION_6_19(8);
    v22 = v4[11];
    OUTLINED_FUNCTION_6_19(9);
    v23 = v4[12];
    OUTLINED_FUNCTION_6_19(10);
    v24 = v4[13];
    OUTLINED_FUNCTION_6_19(11);
    v25 = v4[14];
    OUTLINED_FUNCTION_6_19(12);
    v26 = v4[15];
    OUTLINED_FUNCTION_6_19(13);
    v27 = v4[16];
    OUTLINED_FUNCTION_6_19(14);
    v28 = v4[17];
    OUTLINED_FUNCTION_6_19(15);
    v29 = v4[18];
    OUTLINED_FUNCTION_6_19(16);
    v30 = v4[19];
    OUTLINED_FUNCTION_6_19(17);
    v31 = v4[20];
    OUTLINED_FUNCTION_6_19(18);
    v32 = v4[21];
    OUTLINED_FUNCTION_6_19(19);
    v33 = v4[22];
    OUTLINED_FUNCTION_6_19(20);
    v34 = v4[23];
    OUTLINED_FUNCTION_6_19(21);
    v35 = v4[24];
    OUTLINED_FUNCTION_6_19(22);
    v36 = v4[25];
    OUTLINED_FUNCTION_6_19(23);
    v37 = v4[26];
    OUTLINED_FUNCTION_6_19(24);
    v38 = v4[27];
    OUTLINED_FUNCTION_6_19(25);
    v39 = v4[28];
    OUTLINED_FUNCTION_6_19(26);
    v40 = v4[29];
    OUTLINED_FUNCTION_6_19(27);
    v41 = v4[30];
    OUTLINED_FUNCTION_6_19(28);
    v42 = v4[31];
    OUTLINED_FUNCTION_6_19(29);
    v43 = v4[32];
    OUTLINED_FUNCTION_6_19(30);
    v44 = v4[33];
    OUTLINED_FUNCTION_6_19(31);
    v45 = v4[34];
    OUTLINED_FUNCTION_6_19(32);
    v46 = v4[35];
    OUTLINED_FUNCTION_6_19(33);
    v47 = v4[36];
    OUTLINED_FUNCTION_6_19(34);
    v48 = v4[37];
    OUTLINED_FUNCTION_6_19(35);
    v49 = v4[38];
    OUTLINED_FUNCTION_6_19(36);
    v51 = v4[39];
    OUTLINED_FUNCTION_6_19(37);
    v52 = v4[40];
    OUTLINED_FUNCTION_6_19(38);
    v53 = v4[41];
    OUTLINED_FUNCTION_6_19(39);
    v54 = v4[42];
    OUTLINED_FUNCTION_6_19(40);
    v55 = v4[43];
    OUTLINED_FUNCTION_6_19(41);
    v56 = v4[44];
    OUTLINED_FUNCTION_6_19(42);
    v57 = v4[45];
    OUTLINED_FUNCTION_6_19(43);
    v58 = v4[46];
    OUTLINED_FUNCTION_6_19(44);
    v59 = v4[47];
    OUTLINED_FUNCTION_6_19(45);
    v60 = v4[48];
    OUTLINED_FUNCTION_6_19(46);
    v61 = v4[49];
    OUTLINED_FUNCTION_6_19(47);
    v62 = v4[50];
    OUTLINED_FUNCTION_6_19(48);
    v63 = v4[51];
    OUTLINED_FUNCTION_6_19(49);
    v64 = v4[52];
    OUTLINED_FUNCTION_6_19(50);
    v65 = v4[53];
    OUTLINED_FUNCTION_6_19(51);
    v66 = v4[54];
    OUTLINED_FUNCTION_6_19(52);
    v67 = v4[55];
    OUTLINED_FUNCTION_6_19(53);
    v68 = v4[56];
    OUTLINED_FUNCTION_6_19(54);
    v69 = v4[57];
    OUTLINED_FUNCTION_6_19(55);
    v70 = v4[58];
    OUTLINED_FUNCTION_6_19(56);
    v71 = v4[59];
    OUTLINED_FUNCTION_6_19(57);
    v72 = v4[60];
    OUTLINED_FUNCTION_6_19(58);
    v73 = v4[61];
    OUTLINED_FUNCTION_6_19(59);
    v74 = v4[62];
    OUTLINED_FUNCTION_6_19(60);
    v75 = v4[63];
    OUTLINED_FUNCTION_6_19(61);
    v76 = v4[64];
    OUTLINED_FUNCTION_6_19(62);
    v77 = v4[65];
    OUTLINED_FUNCTION_6_19(63);
    v78 = v4[66];
    OUTLINED_FUNCTION_6_19(64);
    v79 = v4[67];
    OUTLINED_FUNCTION_6_19(65);
    v80 = v4[68];
    OUTLINED_FUNCTION_6_19(66);
    v81 = v4[69];
    OUTLINED_FUNCTION_6_19(67);
    v82 = v4[70];
    OUTLINED_FUNCTION_6_19(68);
    v83 = v4[71];
    OUTLINED_FUNCTION_6_19(69);
    v84 = v4[72];
    OUTLINED_FUNCTION_6_19(70);
    v85 = v4[73];
    OUTLINED_FUNCTION_6_19(71);
    v86 = v4[74];
    OUTLINED_FUNCTION_6_19(72);
    v87 = v4[75];
    OUTLINED_FUNCTION_6_19(73);
    v88 = v4[76];
    OUTLINED_FUNCTION_6_19(74);
    v89 = v4[77];
    OUTLINED_FUNCTION_6_19(75);
    v90 = v4[78];
    OUTLINED_FUNCTION_6_19(76);
    v91 = v4[79];
    OUTLINED_FUNCTION_6_19(77);
    v92 = v4[80];
    OUTLINED_FUNCTION_6_19(78);
    v93 = v4[81];
    OUTLINED_FUNCTION_6_19(79);
    v94 = v4[82];
    OUTLINED_FUNCTION_6_19(80);
    v95 = v4[83];
    OUTLINED_FUNCTION_6_19(81);
    v96 = v4[84];
    OUTLINED_FUNCTION_6_19(82);
    v97 = v4[85];
    OUTLINED_FUNCTION_6_19(83);
    v98 = v4[86];
    OUTLINED_FUNCTION_6_19(84);
    v99 = v4[87];
    OUTLINED_FUNCTION_6_19(85);
    v100 = v4[88];
    OUTLINED_FUNCTION_6_19(86);
    v101 = v4[89];
    OUTLINED_FUNCTION_6_19(87);
    v102 = v4[90];
    OUTLINED_FUNCTION_6_19(88);
    v103 = v4[91];
    OUTLINED_FUNCTION_6_19(89);
    v104 = v4[92];
    OUTLINED_FUNCTION_6_19(90);
    v105 = v4[93];
    OUTLINED_FUNCTION_6_19(91);
    v106 = v4[94];
    OUTLINED_FUNCTION_6_19(92);
    v107 = v4[95];
    OUTLINED_FUNCTION_6_19(93);
    v108 = v4[96];
    OUTLINED_FUNCTION_6_19(94);
    v109 = v4[97];
    OUTLINED_FUNCTION_6_19(95);
    v110 = v4[98];
    OUTLINED_FUNCTION_6_19(96);
    v111 = v4[99];
    OUTLINED_FUNCTION_6_19(97);
    v112 = v4[100];
    OUTLINED_FUNCTION_6_19(98);
    v113 = v4[101];
    OUTLINED_FUNCTION_6_19(99);
    v114 = v4[102];
    OUTLINED_FUNCTION_6_19(100);
    v115 = v4[103];
    OUTLINED_FUNCTION_6_19(101);
    v116 = v4[104];
    OUTLINED_FUNCTION_6_19(102);
    v117 = v4[105];
    OUTLINED_FUNCTION_6_19(103);
    v118 = v4[106];
    OUTLINED_FUNCTION_6_19(104);
    v119 = v4[107];
    OUTLINED_FUNCTION_6_19(105);
    v120 = v4[108];
    OUTLINED_FUNCTION_6_19(106);
    v121 = v4[109];
    OUTLINED_FUNCTION_6_19(107);
    v122 = v4[110];
    OUTLINED_FUNCTION_6_19(108);
    v123 = v4[111];
    OUTLINED_FUNCTION_6_19(109);
    v124 = v4[112];
    OUTLINED_FUNCTION_6_19(110);
    v125 = v4[113];
    OUTLINED_FUNCTION_6_19(111);
    v126 = v4[114];
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C48();
    v127 = v4[115];
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C48();
    v128 = v4[116];
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C48();
    v129 = v4[117];
    OUTLINED_FUNCTION_6_19(115);
    v130 = v4[118];
    OUTLINED_FUNCTION_6_19(116);
    v131 = v4[119];
    OUTLINED_FUNCTION_6_19(117);
    v132 = v4[120];
    OUTLINED_FUNCTION_6_19(118);
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1DD43994C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_41_4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCBA0, &unk_1DD64A0F8);
    sub_1DD4399B8(v2);
    result = OUTLINED_FUNCTION_33_5();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD4399B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBBD8, &unk_1DD645A90);
    sub_1DD415C6C();
    sub_1DD415820();
    sub_1DD433844(&unk_1EE1658F8);
    sub_1DD433844(&unk_1EE165900);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD439AAC()
{
  result = qword_1EE160AA8[0];
  if (!qword_1EE160AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE160AA8);
  }

  return result;
}

uint64_t sub_1DD439B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD439B70()
{
  result = qword_1EE161348[0];
  if (!qword_1EE161348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE161348);
  }

  return result;
}

unint64_t sub_1DD439BC4()
{
  result = qword_1EE1632F0;
  if (!qword_1EE1632F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1632F0);
  }

  return result;
}

unint64_t sub_1DD439C18()
{
  result = qword_1EE163280;
  if (!qword_1EE163280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163280);
  }

  return result;
}

unint64_t sub_1DD439C6C()
{
  result = qword_1EE163288;
  if (!qword_1EE163288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163288);
  }

  return result;
}

unint64_t sub_1DD439CC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_41_4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCBA8, &qword_1DD64A108);
    sub_1DD433844(v2);
    result = OUTLINED_FUNCTION_33_5();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD439D44()
{
  result = qword_1EE165838[0];
  if (!qword_1EE165838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE165838);
  }

  return result;
}

unint64_t sub_1DD439D98()
{
  result = qword_1EE165810;
  if (!qword_1EE165810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165810);
  }

  return result;
}

unint64_t sub_1DD439DEC()
{
  result = qword_1EE165818;
  if (!qword_1EE165818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165818);
  }

  return result;
}

unint64_t sub_1DD439E40(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_41_4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCBC0, &unk_1DD64A120);
    sub_1DD439EAC(v2);
    result = OUTLINED_FUNCTION_33_5();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD439EAC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCAE0, &unk_1DD649FF0);
    sub_1DD415C6C();
    sub_1DD415820();
    sub_1DD439D98();
    sub_1DD439DEC();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD439F3C()
{
  result = qword_1EE165918;
  if (!qword_1EE165918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165918);
  }

  return result;
}

uint64_t sub_1DD439F90()
{
  v1 = OUTLINED_FUNCTION_43();
  v3 = v2(v1);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DD439FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1DD43A044()
{
  result = qword_1ECCDCBE8;
  if (!qword_1ECCDCBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCBE8);
  }

  return result;
}

unint64_t sub_1DD43A098()
{
  result = qword_1EE165090[0];
  if (!qword_1EE165090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE165090);
  }

  return result;
}

uint64_t MegadomeEntityFeatures.__allocating_init(from:)()
{
  v0 = swift_allocObject();
  MegadomeEntityFeatures.init(from:)();
  return v0;
}

void MegadomeEntityFeatures.init(from:)()
{
  OUTLINED_FUNCTION_42_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCC00, &qword_1DD64A160);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66_1();
  bzero(v0 + 2, 0x3B8uLL);
  v8 = v3[3];
  v9 = v3[4];
  OUTLINED_FUNCTION_44_5(v3);
  sub_1DD43A098();
  OUTLINED_FUNCTION_45_5();
  sub_1DD640ED8();
  if (v1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_4_18();
    sub_1DD640B48();
    v0[2] = v10;
    OUTLINED_FUNCTION_0_39(1);
    sub_1DD640B48();
    v0[3] = v11;
    OUTLINED_FUNCTION_0_39(2);
    sub_1DD640B48();
    v0[4] = v12;
    OUTLINED_FUNCTION_0_39(3);
    sub_1DD640B48();
    v0[5] = v13;
    OUTLINED_FUNCTION_0_39(4);
    sub_1DD640B48();
    v0[6] = v14;
    OUTLINED_FUNCTION_0_39(5);
    sub_1DD640B48();
    v0[7] = v15;
    OUTLINED_FUNCTION_0_39(6);
    sub_1DD640B48();
    v0[8] = v16;
    OUTLINED_FUNCTION_0_39(7);
    sub_1DD640B48();
    v0[9] = v17;
    OUTLINED_FUNCTION_0_39(8);
    sub_1DD640B48();
    v0[10] = v18;
    OUTLINED_FUNCTION_0_39(9);
    sub_1DD640B48();
    v0[11] = v19;
    OUTLINED_FUNCTION_0_39(10);
    sub_1DD640B48();
    v0[12] = v20;
    OUTLINED_FUNCTION_0_39(11);
    sub_1DD640B48();
    v0[13] = v21;
    OUTLINED_FUNCTION_0_39(12);
    sub_1DD640B48();
    v0[14] = v22;
    OUTLINED_FUNCTION_0_39(13);
    sub_1DD640B48();
    v0[15] = v23;
    OUTLINED_FUNCTION_0_39(14);
    sub_1DD640B48();
    v0[16] = v24;
    OUTLINED_FUNCTION_0_39(15);
    sub_1DD640B48();
    v0[17] = v25;
    OUTLINED_FUNCTION_0_39(16);
    sub_1DD640B48();
    v0[18] = v26;
    OUTLINED_FUNCTION_0_39(17);
    sub_1DD640B48();
    v0[19] = v27;
    OUTLINED_FUNCTION_0_39(18);
    sub_1DD640B48();
    v0[20] = v28;
    OUTLINED_FUNCTION_0_39(19);
    sub_1DD640B48();
    v0[21] = v29;
    OUTLINED_FUNCTION_0_39(20);
    sub_1DD640B48();
    v0[22] = v30;
    OUTLINED_FUNCTION_0_39(21);
    sub_1DD640B48();
    v0[23] = v31;
    OUTLINED_FUNCTION_0_39(22);
    sub_1DD640B48();
    v0[24] = v32;
    OUTLINED_FUNCTION_0_39(23);
    sub_1DD640B48();
    v0[25] = v33;
    OUTLINED_FUNCTION_0_39(24);
    sub_1DD640B48();
    v0[26] = v34;
    OUTLINED_FUNCTION_0_39(25);
    sub_1DD640B48();
    v0[27] = v35;
    OUTLINED_FUNCTION_0_39(26);
    sub_1DD640B48();
    v0[28] = v36;
    OUTLINED_FUNCTION_0_39(27);
    sub_1DD640B48();
    v0[29] = v37;
    OUTLINED_FUNCTION_0_39(28);
    sub_1DD640B48();
    v0[30] = v38;
    OUTLINED_FUNCTION_0_39(29);
    sub_1DD640B48();
    v0[31] = v39;
    OUTLINED_FUNCTION_0_39(30);
    sub_1DD640B48();
    v0[32] = v40;
    OUTLINED_FUNCTION_0_39(31);
    sub_1DD640B48();
    v0[33] = v41;
    OUTLINED_FUNCTION_0_39(32);
    sub_1DD640B48();
    v0[34] = v42;
    OUTLINED_FUNCTION_0_39(33);
    sub_1DD640B48();
    v0[35] = v43;
    OUTLINED_FUNCTION_0_39(34);
    sub_1DD640B48();
    v0[36] = v44;
    OUTLINED_FUNCTION_0_39(35);
    sub_1DD640B48();
    v0[37] = v45;
    OUTLINED_FUNCTION_0_39(36);
    sub_1DD640B48();
    v0[38] = v46;
    OUTLINED_FUNCTION_0_39(37);
    sub_1DD640B48();
    v0[39] = v47;
    OUTLINED_FUNCTION_0_39(38);
    sub_1DD640B48();
    v0[40] = v48;
    OUTLINED_FUNCTION_0_39(39);
    sub_1DD640B48();
    v0[41] = v49;
    OUTLINED_FUNCTION_0_39(40);
    sub_1DD640B48();
    v0[42] = v50;
    OUTLINED_FUNCTION_0_39(41);
    sub_1DD640B48();
    v0[43] = v51;
    OUTLINED_FUNCTION_0_39(42);
    sub_1DD640B48();
    v0[44] = v52;
    OUTLINED_FUNCTION_0_39(43);
    sub_1DD640B48();
    v0[45] = v53;
    OUTLINED_FUNCTION_0_39(44);
    sub_1DD640B48();
    v0[46] = v54;
    OUTLINED_FUNCTION_0_39(45);
    sub_1DD640B48();
    v0[47] = v55;
    OUTLINED_FUNCTION_0_39(46);
    sub_1DD640B48();
    v0[48] = v56;
    OUTLINED_FUNCTION_0_39(47);
    sub_1DD640B48();
    v0[49] = v57;
    OUTLINED_FUNCTION_0_39(48);
    sub_1DD640B48();
    v0[50] = v58;
    OUTLINED_FUNCTION_0_39(49);
    sub_1DD640B48();
    v0[51] = v59;
    OUTLINED_FUNCTION_0_39(50);
    sub_1DD640B48();
    v0[52] = v60;
    OUTLINED_FUNCTION_0_39(51);
    sub_1DD640B48();
    v0[53] = v61;
    OUTLINED_FUNCTION_0_39(52);
    sub_1DD640B48();
    v0[54] = v62;
    OUTLINED_FUNCTION_0_39(53);
    sub_1DD640B48();
    v0[55] = v63;
    OUTLINED_FUNCTION_0_39(54);
    sub_1DD640B48();
    v0[56] = v64;
    OUTLINED_FUNCTION_0_39(55);
    sub_1DD640B48();
    v0[57] = v65;
    OUTLINED_FUNCTION_0_39(56);
    sub_1DD640B48();
    v0[58] = v66;
    OUTLINED_FUNCTION_0_39(57);
    sub_1DD640B48();
    v0[59] = v67;
    OUTLINED_FUNCTION_0_39(58);
    sub_1DD640B48();
    v0[60] = v68;
    OUTLINED_FUNCTION_0_39(59);
    sub_1DD640B48();
    v0[61] = v69;
    OUTLINED_FUNCTION_0_39(60);
    sub_1DD640B48();
    v0[62] = v70;
    OUTLINED_FUNCTION_0_39(61);
    sub_1DD640B48();
    v0[63] = v71;
    OUTLINED_FUNCTION_0_39(62);
    sub_1DD640B48();
    v0[64] = v72;
    OUTLINED_FUNCTION_0_39(63);
    sub_1DD640B48();
    v0[65] = v73;
    OUTLINED_FUNCTION_0_39(64);
    sub_1DD640B48();
    v0[66] = v74;
    OUTLINED_FUNCTION_0_39(65);
    sub_1DD640B48();
    v0[67] = v75;
    OUTLINED_FUNCTION_0_39(66);
    sub_1DD640B48();
    v0[68] = v76;
    OUTLINED_FUNCTION_0_39(67);
    sub_1DD640B48();
    v0[69] = v77;
    OUTLINED_FUNCTION_0_39(68);
    sub_1DD640B48();
    v0[70] = v78;
    OUTLINED_FUNCTION_0_39(69);
    sub_1DD640B48();
    v0[71] = v79;
    OUTLINED_FUNCTION_0_39(70);
    sub_1DD640B48();
    v0[72] = v80;
    OUTLINED_FUNCTION_0_39(71);
    sub_1DD640B48();
    v0[73] = v81;
    OUTLINED_FUNCTION_0_39(72);
    sub_1DD640B48();
    v0[74] = v82;
    OUTLINED_FUNCTION_0_39(73);
    sub_1DD640B48();
    v0[75] = v83;
    OUTLINED_FUNCTION_0_39(74);
    sub_1DD640B48();
    v0[76] = v84;
    OUTLINED_FUNCTION_0_39(75);
    sub_1DD640B48();
    v0[77] = v85;
    OUTLINED_FUNCTION_0_39(76);
    sub_1DD640B48();
    v0[78] = v86;
    OUTLINED_FUNCTION_0_39(77);
    sub_1DD640B48();
    v0[79] = v87;
    OUTLINED_FUNCTION_0_39(78);
    sub_1DD640B48();
    v0[80] = v88;
    OUTLINED_FUNCTION_0_39(79);
    sub_1DD640B48();
    v0[81] = v89;
    OUTLINED_FUNCTION_0_39(80);
    sub_1DD640B48();
    v0[82] = v90;
    OUTLINED_FUNCTION_0_39(81);
    sub_1DD640B48();
    v0[83] = v91;
    OUTLINED_FUNCTION_0_39(82);
    sub_1DD640B48();
    v0[84] = v92;
    OUTLINED_FUNCTION_0_39(83);
    sub_1DD640B48();
    v0[85] = v93;
    OUTLINED_FUNCTION_0_39(84);
    sub_1DD640B48();
    v0[86] = v94;
    OUTLINED_FUNCTION_0_39(85);
    sub_1DD640B48();
    v0[87] = v95;
    OUTLINED_FUNCTION_0_39(86);
    sub_1DD640B48();
    v0[88] = v96;
    OUTLINED_FUNCTION_0_39(87);
    sub_1DD640B48();
    v0[89] = v97;
    OUTLINED_FUNCTION_0_39(88);
    sub_1DD640B48();
    v0[90] = v98;
    OUTLINED_FUNCTION_0_39(89);
    sub_1DD640B48();
    v0[91] = v99;
    OUTLINED_FUNCTION_0_39(90);
    sub_1DD640B48();
    v0[92] = v100;
    OUTLINED_FUNCTION_0_39(91);
    sub_1DD640B48();
    v0[93] = v101;
    OUTLINED_FUNCTION_0_39(92);
    sub_1DD640B48();
    v0[94] = v102;
    OUTLINED_FUNCTION_0_39(93);
    sub_1DD640B48();
    v0[95] = v103;
    OUTLINED_FUNCTION_0_39(94);
    sub_1DD640B48();
    v0[96] = v104;
    OUTLINED_FUNCTION_0_39(95);
    sub_1DD640B48();
    v0[97] = v105;
    OUTLINED_FUNCTION_0_39(96);
    sub_1DD640B48();
    v0[98] = v106;
    OUTLINED_FUNCTION_0_39(97);
    sub_1DD640B48();
    v0[99] = v107;
    OUTLINED_FUNCTION_0_39(98);
    sub_1DD640B48();
    v0[100] = v108;
    OUTLINED_FUNCTION_0_39(99);
    sub_1DD640B48();
    v0[101] = v109;
    OUTLINED_FUNCTION_0_39(100);
    sub_1DD640B48();
    v0[102] = v110;
    OUTLINED_FUNCTION_0_39(101);
    sub_1DD640B48();
    v0[103] = v111;
    OUTLINED_FUNCTION_0_39(102);
    sub_1DD640B48();
    v0[104] = v112;
    OUTLINED_FUNCTION_0_39(103);
    sub_1DD640B48();
    v0[105] = v113;
    OUTLINED_FUNCTION_0_39(104);
    sub_1DD640B48();
    v0[106] = v114;
    OUTLINED_FUNCTION_0_39(105);
    sub_1DD640B48();
    v0[107] = v115;
    OUTLINED_FUNCTION_0_39(106);
    sub_1DD640B48();
    v0[108] = v116;
    OUTLINED_FUNCTION_0_39(107);
    sub_1DD640B48();
    v0[109] = v117;
    OUTLINED_FUNCTION_0_39(108);
    sub_1DD640B48();
    v0[110] = v118;
    OUTLINED_FUNCTION_0_39(109);
    sub_1DD640B48();
    v0[111] = v119;
    OUTLINED_FUNCTION_0_39(110);
    sub_1DD640B48();
    v0[112] = v120;
    OUTLINED_FUNCTION_0_39(111);
    sub_1DD640B48();
    v0[113] = v121;
    OUTLINED_FUNCTION_0_39(112);
    v0[114] = sub_1DD640B58();
    OUTLINED_FUNCTION_0_39(113);
    v0[115] = sub_1DD640B58();
    OUTLINED_FUNCTION_0_39(114);
    v0[116] = sub_1DD640B58();
    OUTLINED_FUNCTION_0_39(115);
    sub_1DD640B48();
    v0[117] = v122;
    OUTLINED_FUNCTION_0_39(116);
    sub_1DD640B48();
    v0[118] = v123;
    OUTLINED_FUNCTION_0_39(117);
    sub_1DD640B48();
    v0[119] = v124;
    OUTLINED_FUNCTION_0_39(118);
    sub_1DD640B48();
    v126 = v125;
    v127 = OUTLINED_FUNCTION_41();
    v128(v127);
    v0[120] = v126;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_43_6();
}

uint64_t sub_1DD43AD9C@<X0>(uint64_t *a1@<X8>)
{
  result = MegadomeEntityFeatures.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_1DD43AE38()
{
  sub_1DD43B028();
  if (v0 <= 0x3F)
  {
    sub_1DD43B08C(319, &qword_1EE163990, MEMORY[0x1E69D29D0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DD43B08C(319, &qword_1EE163950, MEMORY[0x1E69695A8], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MegadomeEntityFeatures();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD43B028()
{
  if (!qword_1EE163910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBBD8, &unk_1DD645A90);
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE163910);
    }
  }
}

void sub_1DD43B08C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DD43B128()
{
  sub_1DD43B08C(319, &qword_1EE163990, MEMORY[0x1E69D29D0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for MegadomeEntityFeatures.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x8A)
  {
    if (a2 + 118 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 118) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 119;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x77;
  v5 = v6 - 119;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MegadomeEntityFeatures.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 118 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 118) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x8A)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x89)
  {
    v6 = ((a2 - 138) >> 8) + 1;
    *result = a2 + 118;
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
          *result = a2 + 118;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14descr1F58A7859O25BackgroundHandleSignalSetV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

uint64_t _s14descr1F58A7859O15HandleSignalSetV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s14descr1F58A7859O15HandleSignalSetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s14descr1F58A7859O19BackgroundSignalSetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s14descr1F58A7859O9SignalSetV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC7)
  {
    if (a2 + 57 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 57) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 58;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3A;
  v5 = v6 - 58;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr1F58A7859O9SignalSetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 57) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC6)
  {
    v6 = ((a2 - 199) >> 8) + 1;
    *result = a2 + 57;
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
          *result = a2 + 57;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD43B834()
{
  result = qword_1ECCDCC08;
  if (!qword_1ECCDCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC08);
  }

  return result;
}

unint64_t sub_1DD43B88C()
{
  result = qword_1ECCDCC10;
  if (!qword_1ECCDCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC10);
  }

  return result;
}

unint64_t sub_1DD43B8E4()
{
  result = qword_1ECCDCC18;
  if (!qword_1ECCDCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC18);
  }

  return result;
}

unint64_t sub_1DD43B93C()
{
  result = qword_1ECCDCC20;
  if (!qword_1ECCDCC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC20);
  }

  return result;
}

unint64_t sub_1DD43B994()
{
  result = qword_1ECCDCC28;
  if (!qword_1ECCDCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC28);
  }

  return result;
}

unint64_t sub_1DD43B9EC()
{
  result = qword_1EE165080;
  if (!qword_1EE165080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165080);
  }

  return result;
}

unint64_t sub_1DD43BA44()
{
  result = qword_1EE165088;
  if (!qword_1EE165088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165088);
  }

  return result;
}

unint64_t sub_1DD43BA9C()
{
  result = qword_1ECCDCC30;
  if (!qword_1ECCDCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC30);
  }

  return result;
}

unint64_t sub_1DD43BAF4()
{
  result = qword_1ECCDCC38;
  if (!qword_1ECCDCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC38);
  }

  return result;
}

unint64_t sub_1DD43BB4C()
{
  result = qword_1EE165908;
  if (!qword_1EE165908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165908);
  }

  return result;
}

unint64_t sub_1DD43BBA4()
{
  result = qword_1EE165910;
  if (!qword_1EE165910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165910);
  }

  return result;
}

unint64_t sub_1DD43BBFC()
{
  result = qword_1EE165828;
  if (!qword_1EE165828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165828);
  }

  return result;
}

unint64_t sub_1DD43BC54()
{
  result = qword_1EE165830;
  if (!qword_1EE165830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165830);
  }

  return result;
}

unint64_t sub_1DD43BCAC()
{
  result = qword_1EE1657F0;
  if (!qword_1EE1657F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1657F0);
  }

  return result;
}

unint64_t sub_1DD43BD04()
{
  result = qword_1EE1657F8;
  if (!qword_1EE1657F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1657F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_20@<X0>(char a1@<W8>)
{
  *(v1 + 344) = a1;
  result = v1 + 344;
  v3 = *(v1 + 320);
  v4 = *(v1 + 336);
  return result;
}

void OUTLINED_FUNCTION_26_9(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_34_6()
{
  v3 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v3;
  *(v0 + 80) = *(v1 + 32);
  *(v0 + 96) = *(v0 + 160);

  return sub_1DD4339AC(v0 + 48);
}

void OUTLINED_FUNCTION_36_5(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v1;
  *(v4 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_47_5()
{

  return sub_1DD640EF8();
}

uint64_t *OUTLINED_FUNCTION_54_4(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_4@<X0>(char a1@<W8>)
{
  *(v1 + 344) = a1;
  v3 = *(v1 + 320);

  return sub_1DD640B38();
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return type metadata accessor for ContactResolver.SignalSet(0);
}

void sub_1DD43BF54(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC738(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1DD44638C(v6);
  *a1 = v3;
}

uint64_t sub_1DD43C008(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 0;
  }

  if (result >= a2)
  {
    __break(1u);
    return result;
  }

  return a2 - 1;
}

uint64_t sub_1DD43C034(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = type metadata accessor for RunTimeDataRecord();
    OUTLINED_FUNCTION_50(v2);
    v4 = v3;
    v6 = v5;
    v7 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v8 = *(v6 + 72);
    sub_1DD4476F4();
    v9 = OUTLINED_FUNCTION_48_7();
  }

  else
  {
    type metadata accessor for RunTimeDataRecord();
    v9 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1DD43C11C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 24 * v1;
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
  }

  return OUTLINED_FUNCTION_15_0();
}

uint64_t sub_1DD43C178(unint64_t a1, void (*a2)(uint64_t, BOOL, unint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        v6 = *(a1 + 8 * v5 + 32);
      }
    }

    return MEMORY[0x1E12B2C10](v5, a1);
  }

  result = sub_1DD6407B8();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1DD43C214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1DD63D0F8();
    OUTLINED_FUNCTION_7(v6);
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    v8 = OUTLINED_FUNCTION_48_7();
  }

  else
  {
    sub_1DD63D0F8();
    v8 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1DD43C2BC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (v3)
  {
    v4 = (v1 + 16 * v2);
    v5 = *v4;
    v6 = v4[1];
  }

  return OUTLINED_FUNCTION_15_0();
}

void static ContactResolver.refreshSharedCache()()
{
  OUTLINED_FUNCTION_18_4();
  v0 = sub_1DD63F9C8();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_7();
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD643F90;
  v7 = sub_1DD6408F8();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1DD392BD8();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F998();

  sub_1DD43C830();
  sub_1DD6404C8();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F9A8();
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_1_8();
  v12(v11);
  OUTLINED_FUNCTION_17();
}

uint64_t static ContactResolver.name.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_1ECCDCC40 = a1;
  *(&xmmword_1ECCDCC40 + 1) = a2;
  byte_1ECCDCC50 = a3;
  return result;
}

uint64_t (*static ContactResolver.name.modify())()
{
  OUTLINED_FUNCTION_1_8();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1DD43C608@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_1ECCDCC50;
  result = *&xmmword_1ECCDCC40;
  *a1 = xmmword_1ECCDCC40;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_1DD43C65C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_1ECCDCC40 = v1;
  *(&xmmword_1ECCDCC40 + 1) = v2;
  byte_1ECCDCC50 = v3;
  return result;
}

uint64_t sub_1DD43C6B4()
{
  v0 = type metadata accessor for ContactResolver();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = ContactResolver.init()();
  qword_1ECCDCC58 = v3;
  return result;
}

uint64_t ContactResolver.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ContactResolver.init()();
  return v3;
}

uint64_t static ContactResolver.shared.getter()
{
  if (qword_1ECCDB068 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DD43C788()
{
  v0 = sub_1DD63D168();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_7();
  sub_1DD63D158();
  static ContactResolver.refreshSharedCache()();
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_1_8();
  return v8(v7);
}

uint64_t sub_1DD43C830()
{
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F068);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "Refreshing shared ContactResolverCache...", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  if (qword_1EE165270 != -1)
  {
    swift_once();
  }

  sub_1DD5FF92C();
}

uint64_t sub_1DD43C974(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ContactResolverCache();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1DD390754(a1, &qword_1ECCDC700, &qword_1DD64AE00);
    sub_1DD390754(v5, &qword_1ECCDC700, &qword_1DD64AE00);
    sub_1DD447E80(a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  else
  {
    sub_1DD44769C();
    sub_1DD448524();
    return sub_1DD44774C(v9, type metadata accessor for ContactResolverCache);
  }
}

uint64_t sub_1DD43CB1C()
{
  static ContactResolver.refreshSharedCache()();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1DD43CB78()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39[-v10];
  OUTLINED_FUNCTION_42_5();
  v12 = type metadata accessor for ContactResolverCache();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    OUTLINED_FUNCTION_3_21();
    sub_1DD44769C();
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v25 = sub_1DD63F9F8();
    __swift_project_value_buffer(v25, qword_1EE16F068);
    v26 = sub_1DD63F9D8();
    sub_1DD640368();
    v27 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v27, v28))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    goto LABEL_19;
  }

  sub_1DD390754(v11, &qword_1ECCDC700, &qword_1DD64AE00);
  if (qword_1EE165270 != -1)
  {
    swift_once();
  }

  v17 = *(qword_1EE16F000 + 16);

  sub_1DD640488();

  if (__swift_getEnumTagSinglePayload(v8, 1, v12) != 1)
  {
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_40();
    sub_1DD44769C();
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v34 = sub_1DD63F9F8();
    __swift_project_value_buffer(v34, qword_1EE16F068);
    v26 = sub_1DD63F9D8();
    v35 = sub_1DD640358();
    v36 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_9();
      *v38 = 0;
      _os_log_impl(&dword_1DD38D000, v26, v35, "using shared ContactResolverCache", v38, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

LABEL_19:

    OUTLINED_FUNCTION_3_21();
    sub_1DD44769C();
    goto LABEL_20;
  }

  sub_1DD390754(v8, &qword_1ECCDC700, &qword_1DD64AE00);
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v18 = sub_1DD63F9F8();
  __swift_project_value_buffer(v18, qword_1EE16F068);
  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640358();
  v21 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_9();
    *v23 = 0;
    _os_log_impl(&dword_1DD38D000, v19, v20, "creating and using shared ContactResolverCache", v23, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v24 = sub_1DD447E80(v1);
  MEMORY[0x1EEE9AC00](v24);
  *&v39[-16] = v1;

  sub_1DD5FF92C();

LABEL_20:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD43CFC8(uint64_t a1)
{
  sub_1DD390754(a1, &qword_1ECCDC700, &qword_1DD64AE00);
  sub_1DD4476F4();
  v2 = type metadata accessor for ContactResolverCache();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_1DD43D048()
{
  v1 = OBJC_IVAR____TtC13SiriInference15ContactResolver____lazy_storage___forcePromptingStrategy;
  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference15ContactResolver____lazy_storage___forcePromptingStrategy);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1DD43D08C();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

BOOL sub_1DD43D08C()
{
  v0 = type metadata accessor for ContactResolverCache();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD43CB78();
  v4 = &v3[*(v0 + 28)];
  v5 = 1.0;
  if ((*v4 & 1) == 0)
  {
    v5 = 0.0;
    if (v4[4] != 1)
    {
      if (*&v3[*(v0 + 76)])
      {
        v6 = sub_1DD5FFDD8();
        v7 = sub_1DD59B690(0xD000000000000017, 0x80000001DD66C0F0, v6);

        if (v7)
        {
          [v7 doubleValue];
          v5 = v8;
        }
      }
    }
  }

  v9 = sub_1DD44774C(v3, type metadata accessor for ContactResolverCache);
  return sub_1DD4C181C(v9, v5);
}

void sub_1DD43D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v22;
  a20 = v23;
  v124 = v20;
  v125 = v21;
  v123 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
  OUTLINED_FUNCTION_3(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v115 - v31;
  v33 = type metadata accessor for ContactResolverRunTimeData(0);
  v34 = OUTLINED_FUNCTION_0(v33);
  v122 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1_4();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v115 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v51 = v125;
  sub_1DD43DA04(v26, v123, v52, v53, v54, v55, v56, v57, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
  if (!v51)
  {
    v123 = v33;
    v124 = v41;
    v125 = v49;
    v120 = v46;
    v121 = v38;
    v119 = 0;
    v59 = *(v58 + 16);
    if (v59)
    {
      a10 = MEMORY[0x1E69E7CC0];
      v60 = v58;
      sub_1DD42BA74(0, v59, 0);
      v61 = a10;
      v62 = v121;
      v63 = *(v122 + 80);
      OUTLINED_FUNCTION_24_0();
      v118 = v60;
      v65 = v60 + v64;
      v122 = *(v66 + 72);
      do
      {
        sub_1DD4476F4();
        v67 = v123;
        v68 = v123[14];
        sub_1DD3C4EB4();
        if (__swift_getEnumTagSinglePayload(v32, 1, v62) == 1)
        {
          v69 = *(v67 + 40);
          sub_1DD3C4EB4();
          OUTLINED_FUNCTION_21_8();
          if (__swift_getEnumTagSinglePayload(v32, 1, v62) != 1)
          {
            sub_1DD390754(v32, &qword_1ECCDC1C8, qword_1DD64ADD0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_8();
          sub_1DD447808();
        }

        a10 = v61;
        v71 = *(v61 + 16);
        v70 = *(v61 + 24);
        if (v71 >= v70 >> 1)
        {
          v75 = OUTLINED_FUNCTION_36_6(v70);
          sub_1DD42BA74(v75, v71 + 1, 1);
          v62 = v121;
          v61 = a10;
        }

        *(v61 + 16) = v71 + 1;
        v72 = *(v124 + 80);
        OUTLINED_FUNCTION_24_0();
        v74 = *(v73 + 72);
        sub_1DD447808();
        v65 += v122;
        --v59;
      }

      while (v59);
    }

    else
    {

      v61 = MEMORY[0x1E69E7CC0];
    }

    v76 = v120;
    v77 = v124;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v78 = sub_1DD63F9F8();
    v79 = __swift_project_value_buffer(v78, qword_1EE16F068);

    v80 = sub_1DD63F9D8();
    v81 = sub_1DD640368();

    if (os_log_type_enabled(v80, v81))
    {
      OUTLINED_FUNCTION_18_1();
      v82 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v122 = swift_slowAlloc();
      a10 = v122;
      v123 = v82;
      *v82 = 136446210;
      v83 = *(v61 + 16);
      v84 = MEMORY[0x1E69E7CC0];
      if (v83)
      {
        HIDWORD(v116) = v81;
        v117 = v80;
        v118 = v79;
        v126 = MEMORY[0x1E69E7CC0];
        sub_1DD42BA94();
        v84 = v126;
        v85 = *(v77 + 80);
        OUTLINED_FUNCTION_24_0();
        v87 = v61 + v86;
        v88 = *(v77 + 72);
        while (2)
        {
          sub_1DD3C4EB4();
          sub_1DD3C4EB4();
          v89 = 3;
          v90 = 0;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v90 = 1;
              goto LABEL_21;
            case 2u:
              v90 = 2;
              goto LABEL_21;
            case 3u:
              goto LABEL_22;
            default:
LABEL_21:
              sub_1DD390754(v76, &qword_1ECCDBEE0, &unk_1DD645510);
              v89 = v90;
LABEL_22:
              sub_1DD390754(v125, &qword_1ECCDBEE0, &unk_1DD645510);
              v126 = v84;
              v91 = *(v84 + 16);
              if (v91 >= *(v84 + 24) >> 1)
              {
                sub_1DD42BA94();
                v84 = v126;
              }

              *(v84 + 16) = v91 + 1;
              *(v84 + v91 + 32) = v89;
              v87 += v88;
              --v83;
              v76 = v120;
              if (v83)
              {
                continue;
              }

              v80 = v117;
              break;
          }

          break;
        }
      }

      v92 = MEMORY[0x1E12B2430](v84, &type metadata for RecommendationType);
      v94 = v93;

      v95 = sub_1DD39565C(v92, v94, &a10);

      *(v123 + 1) = v95;
      OUTLINED_FUNCTION_33_2();
      _os_log_impl(v96, v97, v98, v99, v100, v101);
      __swift_destroy_boxed_opaque_existential_1(v122);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v102 = sub_1DD63F9D8();
    v103 = sub_1DD640368();

    if (os_log_type_enabled(v102, v103))
    {
      OUTLINED_FUNCTION_18_1();
      v104 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v105 = swift_slowAlloc();
      a10 = v105;
      *v104 = 136315138;
      v106 = MEMORY[0x1E12B2430](v61, v121);
      v108 = sub_1DD39565C(v106, v107, &a10);

      *(v104 + 4) = v108;
      OUTLINED_FUNCTION_33_2();
      _os_log_impl(v109, v110, v111, v112, v113, v114);
      __swift_destroy_boxed_opaque_existential_1(v105);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD43D87C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_1_8();
  sub_1DD3C4EB4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 3;
  v8 = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v8 = 1;
      goto LABEL_4;
    case 2:
      v8 = 2;
      goto LABEL_4;
    case 3:
      return result;
    default:
LABEL_4:
      sub_1DD390754(v5, &qword_1ECCDBEE0, &unk_1DD645510);
      return v8;
  }
}

uint64_t sub_1DD43D970(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_1();
}

void sub_1DD43DA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v34 = v24;
  v35 = v23;
  v36 = sub_1DD63F9C8();
  v25 = OUTLINED_FUNCTION_0(v36);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_7();
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1DD643F90;
  v31 = sub_1DD6408F8();
  v33 = v32;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1DD392BD8();
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F998();

  sub_1DD43DC2C(v34, v35, v20, &a10);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F9A8();
  (*(v27 + 8))(v20, v36);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD43DC2C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v189 = a3;
  v179 = a4;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  v180 = *(v198 - 8);
  v6 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v197 = (&v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v196 = &v165 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v195 = &v165 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v186 = (&v165 - v13);
  v177 = type metadata accessor for ContactResolverRunTimeData(0);
  v202 = *(v177 - 8);
  v14 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v167 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v200 = &v165 - v17;
  v18 = sub_1DD63F9C8();
  v19 = *(v18 - 8);
  v184 = v18;
  v185 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v170 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v191 = &v165 - v23;
  v178 = type metadata accessor for ContactResolverConfig(0);
  v24 = *(*(v178 - 8) + 64);
  MEMORY[0x1EEE9AC00](v178);
  v171 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v183 = &v165 - v27;
  v28 = sub_1DD63D168();
  v175 = *(v28 - 8);
  v176 = v28;
  v29 = *(v175 + 8);
  MEMORY[0x1EEE9AC00](v28);
  v174 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for NLv4SpeechAlternativeFetcher();
  v31 = *(*(v173 - 8) + 64);
  MEMORY[0x1EEE9AC00](v173);
  v203 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v172 = &v165 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v182 = &v165 - v36;
  v37 = type metadata accessor for Signpost();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  *&v181 = &v165 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ContactResolverCache();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v190 = &v165 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCB8, &unk_1DD64AEF0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = &v165 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v168 = &v165 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v165 - v51;
  v53 = sub_1DD63D0F8();
  v187 = *(v53 - 8);
  v188 = v53;
  v54 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v165 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE165270 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {

    sub_1DD5FF92C();

    sub_1DD63D0E8();
    v57 = *(a1 + 16);
    v194 = *(a1 + 8);
    v201 = v57;
    sub_1DD5AC168();
    LOBYTE(v207[0]) = 2;
    v193 = a1;
    sub_1DD450E3C();
    v58 = type metadata accessor for PrivatizedContactResolverConfig(0);
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v58);
    v199 = v56;
    sub_1DD5ACB80();
    sub_1DD390754(v46, &qword_1ECCDCCB8, &unk_1DD64AEF0);
    v211 = a2;
    v59 = MEMORY[0x1E69E7CC0];
    if (!*(a2 + 16))
    {
      break;
    }

    sub_1DD43CB78();
    if (!*(a2 + 16))
    {
      __break(1u);
LABEL_78:
      swift_once();
      goto LABEL_24;
    }

    LOBYTE(v207[0]) = *(a2 + 280);
    v60 = sub_1DD422BD0();
    v61 = MEMORY[0x1E69E6158];
    v169 = v52;
    if (v60)
    {
      v166 = v40;
      v204 = a2;
      if (qword_1EE166460 != -1)
      {
        swift_once();
      }

      v62 = qword_1EE16F0C0;
      v63 = v181;
      v64 = v181 + *(v37 + 20);
      *v64 = "ContactResolver.fetchNLv4SpeechAlternatives";
      *(v64 + 8) = 43;
      *(v64 + 16) = 2;
      v65 = v62;
      sub_1DD63F9B8();
      *(v63 + *(v37 + 24)) = v65;
      v66 = v65;
      sub_1DD6404D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1DD643F90;
      v68 = sub_1DD6408F8();
      v70 = v69;
      *(v67 + 56) = v61;
      *(v67 + 64) = sub_1DD392BD8();
      *(v67 + 32) = v68;
      *(v67 + 40) = v70;
      v165 = v66;
      sub_1DD63F998();

      v72 = v174;
      v71 = v175;
      v73 = *(v175 + 2);
      v74 = v176;
      v73(v174, v190 + *(v166 + 72), v176);
      v75 = v172;
      v73(v172, v72, v74);
      sub_1DD63F488();
      v76 = sub_1DD63F468();
      if (v76)
      {
        sub_1DD63F448();

        v76 = sub_1DD63F748();
      }

      v56 = v204;
      (*(v71 + 1))(v72, v74);
      *&v75[*(v173 + 20)] = v76;
      sub_1DD44769C();
      sub_1DD4476F4();
      v52 = *(v56 + 16);
      a2 = MEMORY[0x1E69E7CC0];
      if (v52)
      {
        v205[0] = MEMORY[0x1E69E7CC0];

        sub_1DD42BAD8(0, v52, 0);
        a2 = v205[0];
        v46 = *(v56 + 16);
        a1 = v52 - 1;
        v40 = 32;
        v37 = 264;
        if (!v46)
        {
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        while (1)
        {
          memcpy(v206, (v204 + v40), sizeof(v206));
          sub_1DD53AD24(v206, v207);
          v205[0] = a2;
          v56 = *(a2 + 16);
          v77 = *(a2 + 24);
          v52 = v56 + 1;
          if (v56 >= v77 >> 1)
          {
            sub_1DD42BAD8(v77 > 1, v56 + 1, 1);
            a2 = v205[0];
          }

          *(a2 + 16) = v52;
          memcpy((a2 + 264 * v56 + 32), v207, 0x108uLL);
          if (!a1)
          {
            break;
          }

          --v46;
          --a1;
          v40 += 264;
          if (!v46)
          {
            goto LABEL_73;
          }
        }
      }

      sub_1DD44774C(v203, type metadata accessor for NLv4SpeechAlternativeFetcher);

      v211 = a2;
      sub_1DD6404C8();
      v88 = v181;
      sub_1DD63F9A8();
      sub_1DD44774C(v182, type metadata accessor for NLv4SpeechAlternativeFetcher);
      sub_1DD44774C(v88, type metadata accessor for Signpost);
      v59 = MEMORY[0x1E69E7CC0];
    }

    v46 = v183;
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_78;
    }

LABEL_24:
    v203 = sub_1DD63F9F8();
    v89 = __swift_project_value_buffer(v203, qword_1EE16F068);
    sub_1DD4476F4();
    v182 = v89;
    v90 = sub_1DD63F9D8();
    v91 = sub_1DD640368();
    v92 = os_log_type_enabled(v90, v91);
    v204 = a2;
    if (v92)
    {
      v93 = v46;
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v207[0] = v95;
      *v94 = 136315394;
      v206[0] = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCC0, &qword_1DD64AF00);
      v96 = sub_1DD63FE38();
      v98 = sub_1DD39565C(v96, v97, v207);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2080;
      sub_1DD4476F4();
      v99 = sub_1DD63FE38();
      v101 = v100;
      sub_1DD44774C(v93, type metadata accessor for ContactResolverConfig);
      v102 = sub_1DD39565C(v99, v101, v207);

      *(v94 + 14) = v102;
      _os_log_impl(&dword_1DD38D000, v90, v91, "running ContactResolver.makeRecommendations\nqueries: %s\nconfig: %s", v94, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v95, -1, -1);
      MEMORY[0x1E12B3DA0](v94, -1, -1);
    }

    else
    {

      sub_1DD44774C(v46, type metadata accessor for ContactResolverConfig);
    }

    v209 = v59;
    v210 = v59;
    v208 = v59;
    if (qword_1EE166460 != -1)
    {
      swift_once();
    }

    v56 = qword_1EE16F0C0;
    sub_1DD63F9B8();
    sub_1DD6404D8();
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v103 = swift_allocObject();
    v181 = xmmword_1DD643F90;
    *(v103 + 16) = xmmword_1DD643F90;
    v104 = sub_1DD6408F8();
    v106 = v105;
    *(v103 + 56) = MEMORY[0x1E69E6158];
    v107 = sub_1DD392BD8();
    *(v103 + 64) = v107;
    *(v103 + 32) = v104;
    *(v103 + 40) = v106;
    v108 = v191;
    sub_1DD63F998();

    v109 = v190;
    v110 = v192;
    sub_1DD43F574(v190, v193, &v211, &v210, &v209, &v208);
    if (v110)
    {
      sub_1DD6404C8();
      sub_1DD63F9A8();
      (*(v185 + 8))(v108, v184);
      sub_1DD44774C(v109, type metadata accessor for ContactResolverCache);

      v46 = v188;
      goto LABEL_31;
    }

    v192 = 0;
    sub_1DD6404C8();
    sub_1DD63F9A8();
    v113 = v184;
    v114 = v185 + 8;
    v115 = *(v185 + 8);
    v115(v108, v184);
    v116 = *(v208 + 16);
    v176 = v208;
    if (v116)
    {
      v175 = v115;
      v185 = v114;
      v117 = v56;
      v56 = v170;
      sub_1DD63F9B8();
      sub_1DD6404D8();
      v118 = swift_allocObject();
      *(v118 + 16) = v181;
      v119 = sub_1DD6408F8();
      *(v118 + 56) = MEMORY[0x1E69E6158];
      *(v118 + 64) = v107;
      *(v118 + 32) = v119;
      *(v118 + 40) = v120;
      v183 = v117;
      sub_1DD63F998();

      v121 = sub_1DD63F9D8();
      v122 = sub_1DD640368();
      v123 = os_log_type_enabled(v121, v122);
      a1 = v177;
      if (v123)
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_1DD38D000, v121, v122, "resolving contacts", v124, 2u);
        MEMORY[0x1E12B3DA0](v124, -1, -1);
      }

      v125 = v192;
      sub_1DD441958();
      v46 = v188;
      v192 = v125;
      if (v125)
      {
        sub_1DD6404C8();
        v127 = v170;
        sub_1DD63F9A8();
        v175(v127, v113);
        sub_1DD44774C(v190, type metadata accessor for ContactResolverCache);

LABEL_31:

        type metadata accessor for InferenceError();
        swift_allocObject();
        sub_1DD4DE96C(13, 0, 0xE000000000000000, 0xD000000000000075, 0x80000001DD66BED0, 0xD000000000000018, 0x80000001DD66C160, 239, MEMORY[0x1E69E7CC0], 1);
        if (qword_1EE166510 == -1)
        {
LABEL_32:
          __swift_project_value_buffer(v203, qword_1EE16F0C8);
          sub_1DD4DEB78();

          v111 = v169;
          v112 = v199;
          sub_1DD5AD0AC();
          swift_willThrow();
          sub_1DD390754(v111, &qword_1ECCDBAC8, &qword_1DD643E60);
          return (*(v187 + 8))(v112, v46);
        }

LABEL_83:
        swift_once();
        goto LABEL_32;
      }

      v128 = v126;
      v129 = v209;
      v130 = *(v209 + 16);
      if (v130)
      {
        v131 = 0;
        v46 = *(v126 + 16);
        v203 = v209 + 32;
        v191 = v204 + 32;
        v132 = (v130 - 1);
        while (v131 < v130)
        {
          if (v46 == v131)
          {
            goto LABEL_52;
          }

          if (v131 >= *(v128 + 16))
          {
            goto LABEL_80;
          }

          v133 = *(v203 + 8 * v131);
          v134 = *(v128 + 8 * v131 + 32);

          sub_1DD4425CC();

          if ((v133 & 0x8000000000000000) != 0)
          {
            goto LABEL_81;
          }

          if (v133 >= *(v204 + 16))
          {
            goto LABEL_82;
          }

          memcpy(v206, (v191 + 264 * v133), sizeof(v206));
          v135 = v200;
          memcpy(v207, v200, sizeof(v207));
          sub_1DD3C9478(v206, v205);
          sub_1DD3C9580(v207);
          memcpy(v135, v206, 0x108uLL);
          v136 = *(v198 + 48);
          *v186 = v133;
          sub_1DD4476F4();
          v137 = v210;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = *(v137 + 16);
            sub_1DD3BFD20();
            v137 = v141;
          }

          v56 = *(v137 + 16);
          if (v56 >= *(v137 + 24) >> 1)
          {
            sub_1DD3BFD20();
            v137 = v142;
          }

          *(v137 + 16) = v56 + 1;
          v138 = v137 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
          v139 = *(v180 + 72);
          sub_1DD447808();
          v210 = v137;
          sub_1DD44774C(v200, type metadata accessor for ContactResolverRunTimeData);
          if (v132 == v131)
          {
LABEL_52:

            v46 = v188;
            a1 = v177;
            v113 = v184;
            goto LABEL_54;
          }

          v130 = *(v129 + 16);
          ++v131;
        }

        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

LABEL_54:
      sub_1DD6404C8();
      v143 = v170;
      sub_1DD63F9A8();
      v175(v143, v113);
    }

    else
    {
      v46 = v188;
      a1 = v177;
    }

    v144 = v210;
    v207[0] = v210;

    v145 = v192;
    sub_1DD43BF54(v207);
    if (v145)
    {

      __break(1u);
      return result;
    }

    v186 = v144;
    v192 = 0;
    v146 = v207[0];
    v147 = *(v207[0] + 16);
    if (v147)
    {
      v207[0] = MEMORY[0x1E69E7CC0];
      sub_1DD42BAF8(0, v147, 0);
      v40 = v207[0];
      v148 = *(v180 + 80);
      v185 = v146;
      v149 = v146 + ((v148 + 32) & ~v148);
      v191 = *(v180 + 72);
      v150 = v195;
      do
      {
        v200 = v147;
        v203 = v40;
        v56 = &qword_1DD6441F0;
        sub_1DD3C4EB4();
        v151 = v196;
        sub_1DD3C4EB4();
        v152 = v197;
        v153 = *(v198 + 48);
        *v197 = *v151;
        sub_1DD44769C();
        sub_1DD4476F4();
        sub_1DD390754(v152, &qword_1ECCDBEE8, &qword_1DD6441F0);
        v40 = v203;
        sub_1DD390754(v150, &qword_1ECCDBEE8, &qword_1DD6441F0);
        v207[0] = v40;
        v155 = *(v40 + 16);
        v154 = *(v40 + 24);
        if (v155 >= v154 >> 1)
        {
          sub_1DD42BAF8(v154 > 1, v155 + 1, 1);
          v40 = v207[0];
        }

        *(v40 + 16) = v155 + 1;
        v156 = v40 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
        v157 = *(v202 + 72);
        sub_1DD44769C();
        v149 += v191;
        v147 = v200 - 1;
      }

      while (v200 != 1);

      v46 = v188;
      a1 = v177;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v158 = *(v40 + 16);
    v37 = v168;
    if (!v158)
    {
LABEL_70:
      if (*(v193 + *(v178 + 36)))
      {
        sub_1DD444584();
      }

      v163 = v169;
      v164 = v199;
      sub_1DD5AD088();
      sub_1DD44774C(v190, type metadata accessor for ContactResolverCache);
      sub_1DD390754(v163, &qword_1ECCDBAC8, &qword_1DD643E60);
      (*(v187 + 8))(v164, v46);

      *v179 = v40;
      return result;
    }

    v52 = 0;
    a2 = v187 + 16;
    while (1)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD586A74(v40);
        v40 = v162;
      }

      if (v52 >= *(v40 + 16))
      {
        break;
      }

      v56 = v40 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v52;
      v159 = (v56 + *(a1 + 68));
      v160 = v159[1];
      v161 = v201;
      *v159 = v194;
      v159[1] = v161;

      (*a2)(v37, v199, v46);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v46);
      if (v52 >= *(v40 + 16))
      {
        goto LABEL_75;
      }

      ++v52;
      sub_1DD3C9510(v37, v56 + *(a1 + 76));
      if (v158 == v52)
      {
        goto LABEL_70;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v78 = v52;
  v79 = qword_1EE165FB0;

  v80 = v188;
  if (v79 != -1)
  {
    swift_once();
  }

  v81 = sub_1DD63F9F8();
  __swift_project_value_buffer(v81, qword_1EE16F068);
  v82 = sub_1DD63F9D8();
  v83 = sub_1DD640368();
  v84 = os_log_type_enabled(v82, v83);
  v85 = v199;
  if (v84)
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_1DD38D000, v82, v83, "cannot resolve empty array of queries", v86, 2u);
    MEMORY[0x1E12B3DA0](v86, -1, -1);
  }

  sub_1DD390754(v78, &qword_1ECCDBAC8, &qword_1DD643E60);
  (*(v187 + 8))(v85, v80);

  *v179 = v59;
  return result;
}

void sub_1DD43F534(uint64_t a1)
{
  v2 = type metadata accessor for ContactResolverCache();
  if (!__swift_getEnumTagSinglePayload(a1, 1, v2))
  {
    sub_1DD449160();
  }
}

uint64_t sub_1DD43F574(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v94 = a6;
  v95 = a5;
  v93 = a4;
  v107 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  v91 = *(v9 - 8);
  v92 = v9;
  v10 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v99 = (&v87 - v11);
  v12 = type metadata accessor for ContactResolverRunTimeData(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Contact();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v101 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for ContactQuickResolver.ResolutionState(0);
  v19 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ContactQuickResolver(0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ContactResolverCache();
  sub_1DD3C2388(a1 + *(v26 + 32), v25);
  v27 = *(v26 + 44);
  v28 = v6;
  v29 = *(a1 + v27);
  v30 = *(v22 + 32);
  sub_1DD4476F4();
  *(v25 + 5) = v29;
  swift_beginAccess();
  v31 = *a3;
  v32 = v29;

  v34 = 0;
  v35 = 32;
  *&v36 = 136446210;
  v87 = v36;
  v90 = xmmword_1DD642F70;
  v97 = v31;
  v88 = v25;
  while (1)
  {
    v37 = *(v31 + 16);
    if (v34 == v37)
    {

      return sub_1DD44774C(v25, type metadata accessor for ContactQuickResolver);
    }

    if (v34 >= v37)
    {
      break;
    }

    memcpy(v105, (v31 + v35), sizeof(v105));
    v102 = v35;
    memmove(v106, (v31 + v35), 0x108uLL);
    memcpy(v104, v106, sizeof(v104));
    sub_1DD3C9478(v105, &v103);
    v38 = v100;
    sub_1DD4250A0(v104, v100);
    if (v28)
    {

      sub_1DD44774C(v25, type metadata accessor for ContactQuickResolver);
      return sub_1DD3C9580(v106);
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v107 = v34;
    if (EnumCaseMultiPayload == 1)
    {
      memcpy(v104, v38, sizeof(v104));
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v40 = sub_1DD63F9F8();
      __swift_project_value_buffer(v40, qword_1EE16F068);
      v41 = sub_1DD63F9D8();
      v42 = sub_1DD640368();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v94;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1DD38D000, v41, v42, "Needs contact resolution", v45, 2u);
        MEMORY[0x1E12B3DA0](v45, -1, -1);
      }

      v46 = v95;
      v47 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v46 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = *(v47 + 16);
        sub_1DD3BE460();
        v47 = v79;
        *v95 = v79;
      }

      v49 = *(v47 + 16);
      if (v49 >= *(v47 + 24) >> 1)
      {
        sub_1DD3BE460();
        v47 = v80;
        *v95 = v80;
      }

      *(v47 + 16) = v49 + 1;
      *(v47 + 8 * v49 + 32) = v107;
      v50 = *v44;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *v44 = v50;
      if ((v51 & 1) == 0)
      {
        v81 = *(v50 + 16);
        sub_1DD3BFD44();
        v50 = v82;
        *v44 = v82;
      }

      v52 = *(v50 + 16);
      if (v52 >= *(v50 + 24) >> 1)
      {
        sub_1DD3BFD44();
        *v44 = v83;
      }

      sub_1DD3C9580(v106);
      v53 = *v44;
      *(v53 + 16) = v52 + 1;
      result = memcpy((v53 + 264 * v52 + 32), v104, 0x108uLL);
    }

    else
    {
      v54 = v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8A0, &qword_1DD649350) + 48)];
      sub_1DD44769C();
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v55 = sub_1DD63F9F8();
      __swift_project_value_buffer(v55, qword_1EE16F068);
      v56 = sub_1DD63F9D8();
      v57 = sub_1DD640368();
      if (os_log_type_enabled(v56, v57))
      {
        v96 = v54;
        v89 = 0;
        v58 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v104[0] = v54;
        *v58 = v87;
        v59 = 0xE700000000000000;
        v60 = 0x746361746E6F63;
        switch(v96)
        {
          case 1:
            v59 = 0xE900000000000079;
            v60 = 0x636E656772656D65;
            break;
          case 2:
            v60 = 0x6C646E6148776172;
            v59 = 0xE900000000000065;
            break;
          case 3:
            v59 = 0xE600000000000000;
            v60 = 0x64726143656DLL;
            break;
          case 4:
            v60 = 0x6E6F436E776F6E6BLL;
            v59 = 0xEC00000074636174;
            break;
          default:
            break;
        }

        v61 = sub_1DD39565C(v60, v59, v104);

        *(v58 + 4) = v61;
        _os_log_impl(&dword_1DD38D000, v56, v57, "resolved as %{public}s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x1E12B3DA0](v54, -1, -1);
        MEMORY[0x1E12B3DA0](v58, -1, -1);

        v25 = v88;
        v28 = v89;
        LOBYTE(v54) = v96;
      }

      else
      {
      }

      v62 = v12[10];
      sub_1DD4476F4();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(&v15[v12[14]], 1, 1, v63);
      v64 = v12[19];
      v65 = sub_1DD63D0F8();
      __swift_storeEnumTagSinglePayload(&v15[v64], 1, 1, v65);
      v66 = &v15[v12[18]];
      sub_1DD63D0E8();
      memcpy(v15, v106, 0x108uLL);
      v15[264] = 3;
      *(v15 + 34) = 0;
      *(v15 + 35) = 0xE000000000000000;
      *(v15 + 144) = 0;
      *(v15 + 37) = MEMORY[0x1E69E7CC0];
      v15[v12[11]] = v54;
      v15[v12[12]] = 0;
      v15[v12[13]] = 5;
      v67 = &v15[v12[15]];
      *v67 = v90;
      v67[1] = 0u;
      v67[2] = 0u;
      v68 = &v15[v12[16]];
      *v68 = 1;
      v68[4] = 2;
      v69 = &v15[v12[17]];
      *v69 = 0;
      *(v69 + 1) = 0;
      v15[v12[20]] = 0;
      v70 = &v15[v12[21]];
      *v70 = 0;
      *(v70 + 1) = 0;
      v71 = *(v92 + 48);
      *v99 = v107;
      sub_1DD4476F4();
      v72 = v93;
      v73 = *v93;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      *v72 = v73;
      if ((v74 & 1) == 0)
      {
        v84 = *(v73 + 16);
        sub_1DD3BFD20();
        v73 = v85;
        *v72 = v85;
      }

      v75 = *(v73 + 16);
      if (v75 >= *(v73 + 24) >> 1)
      {
        sub_1DD3BFD20();
        *v72 = v86;
      }

      sub_1DD44774C(v15, type metadata accessor for ContactResolverRunTimeData);
      sub_1DD44774C(v101, type metadata accessor for Contact);
      v76 = *v72;
      *(v76 + 16) = v75 + 1;
      v77 = v76 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v75;
      result = sub_1DD447808();
    }

    v35 = v102 + 264;
    v34 = v107 + 1;
    v31 = v97;
  }

  __break(1u);
  return result;
}

void sub_1DD43FF34()
{
  OUTLINED_FUNCTION_93();
  v95 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_51(v4);
  v92 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v85 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B8, &unk_1DD65DD40);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - v14;
  v16 = type metadata accessor for RunTimeDataRecord();
  v17 = OUTLINED_FUNCTION_7(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = type metadata accessor for Signpost();
  v24 = OUTLINED_FUNCTION_7(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v30 = MEMORY[0x1E69E7CC0];
  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v87 = *(v3 + 16);
  v88 = v3;
  v89 = v16;
  v90 = v15;
  v91 = v22;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v31 = qword_1EE16F0C0;
  v32 = v29 + *(v23 + 20);
  *v32 = "ContactResolver.ContactResolution.makeCorrection";
  *(v32 + 8) = 48;
  *(v32 + 16) = 2;
  v33 = v31;
  sub_1DD63F9B8();
  *(v29 + *(v23 + 24)) = v33;
  v34 = v33;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1DD643F90;
  v36 = sub_1DD6408F8();
  v38 = v37;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1DD392BD8();
  *(v35 + 32) = v36;
  *(v35 + 40) = v38;
  OUTLINED_FUNCTION_22();
  v93 = v34;
  v94 = v29;
  sub_1DD63F998();

  if (qword_1EE166628 != -1)
  {
    OUTLINED_FUNCTION_14_16();
    swift_once();
  }

  [qword_1EE166630 waitUntilAllOperationsAreFinished];
  sub_1DD440624(v99);
  v39 = v96;
  if (v0)
  {
    goto LABEL_9;
  }

  v40 = v99[0];
  v41 = *(v95 + 24);
  v42 = *(v95 + 32);

  sub_1DD58C5BC(v41, v42, v43, v44, v45, v46, v47, v48, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
  v86 = v40;
  v49 = v90;
  sub_1DD43C034(v50);

  v51 = v89;
  if (__swift_getEnumTagSinglePayload(v49, 1, v89) == 1)
  {
    sub_1DD390754(v49, &qword_1ECCDC1B8, &unk_1DD65DD40);
    type metadata accessor for InferenceError();
    swift_allocObject();
    OUTLINED_FUNCTION_44_6();
    v59 = sub_1DD4DE96C(v52, v53, v54, v55, v56, v57, v58, 263, v30, 1);
    OUTLINED_FUNCTION_19_12();
    sub_1DD445D68(v60, v61);
    swift_allocError();
    *v62 = v59;
    swift_willThrow();

LABEL_9:
    type metadata accessor for InferenceError();
    swift_allocObject();
    OUTLINED_FUNCTION_44_6();
    sub_1DD4DE96C(v63, v64, v65, v66, v67, v68, v69, 284, v30, 1);
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v70 = sub_1DD63F9F8();
    __swift_project_value_buffer(v70, qword_1EE16F0C8);
    sub_1DD4DEB78();

    swift_willThrow();
    sub_1DD6404C8();
    v71 = v94;
    OUTLINED_FUNCTION_17_14();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_4_19();
    sub_1DD44774C(v71, v72);
    goto LABEL_12;
  }

  v73 = v91;
  sub_1DD44769C();
  v95 = *(v73 + *(v51 + 24));
  v74 = v87;
  sub_1DD42BA74(0, v87, 0);
  v75 = (v88 + 32);
  v76 = v74 - 1;
  v77 = v92;
  while (1)
  {
    memcpy(v99, v75, 0x108uLL);
    memcpy(v98, v75, sizeof(v98));
    sub_1DD3C9478(v99, v97);
    sub_1DD441054(v98, v95, v39);
    memcpy(v97, v98, sizeof(v97));
    sub_1DD3C9580(v97);
    v79 = *(v30 + 16);
    v78 = *(v30 + 24);
    if (v79 >= v78 >> 1)
    {
      v82 = OUTLINED_FUNCTION_36_6(v78);
      sub_1DD42BA74(v82, v79 + 1, 1);
      v77 = v92;
    }

    *(v30 + 16) = v79 + 1;
    v80 = *(v77 + 80);
    OUTLINED_FUNCTION_24_0();
    v81 = *(v77 + 72);
    sub_1DD447808();
    if (!v76)
    {
      break;
    }

    --v76;
    v75 += 264;
  }

  sub_1DD44774C(v91, type metadata accessor for RunTimeDataRecord);
  sub_1DD6404C8();
  v83 = v94;
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_4_19();
  sub_1DD44774C(v83, v84);
LABEL_12:
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD440624@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v25 - v5);
  v7 = sub_1DD63CE68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  if (qword_1EE166420 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_1EE166408);
  swift_beginAccess();
  sub_1DD3C4EB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    swift_willThrowTypedImpl();
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1EE16F0C8);
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1DD39565C(0x44656D69546E7552, 0xED00004244617461, &v26);
      _os_log_impl(&dword_1DD38D000, v16, v17, "defaultURL does not exist for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 16))(v11, v14, v7);
    v21 = sub_1DD5CF3F4(v11, 1, &unk_1F58AAF08);
    if (v1)
    {
      v22 = *(v8 + 8);
      v22(v11, v7);
      return (v22)(v14, v7);
    }

    else
    {
      v23 = v21;
      v24 = *(v8 + 8);
      v24(v11, v7);
      result = (v24)(v14, v7);
      *a1 = v23;
    }
  }

  return result;
}

uint64_t sub_1DD4409F8@<X0>(uint64_t **a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v39 - v7);
  OUTLINED_FUNCTION_42_5();
  v9 = sub_1DD63CE68();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  if (qword_1EE165A48 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_1EE16F050);
  sub_1DD3C4EB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    swift_willThrowTypedImpl();
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1EE16F0C8);
    v20 = sub_1DD63F9D8();
    sub_1DD640368();
    v21 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_18_1();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1DD39565C(0x69726F636F707948, 0xEC00000042446D73, &v40);
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    return swift_willThrow();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_39_5();
    v32(v31);
    v33 = OUTLINED_FUNCTION_38_5();
    v34(v33);
    sub_1DD5CF3F4(v17, 1, MEMORY[0x1E69E7CC0]);
    if (v1)
    {
      v35 = *(v12 + 8);
      v35(v17, v9);
      v36 = OUTLINED_FUNCTION_40();
      return (v35)(v36);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_51_5();
      v3(v37);
      v38 = OUTLINED_FUNCTION_40();
      result = (v3)(v38);
      *a1 = v8;
    }
  }

  return result;
}

uint64_t sub_1DD440D24@<X0>(uint64_t **a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v39 - v7);
  OUTLINED_FUNCTION_42_5();
  v9 = sub_1DD63CE68();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  if (qword_1EE1659B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_1EE16F038);
  sub_1DD3C4EB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    swift_willThrowTypedImpl();
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1EE16F0C8);
    v20 = sub_1DD63F9D8();
    sub_1DD640368();
    v21 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_18_1();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1DD39565C(0x6E6F6974616C6552, 0xEE00424470696873, &v40);
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    return swift_willThrow();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_39_5();
    v32(v31);
    v33 = OUTLINED_FUNCTION_38_5();
    v34(v33);
    sub_1DD5CF3F4(v17, 1, MEMORY[0x1E69E7CC0]);
    if (v1)
    {
      v35 = *(v12 + 8);
      v35(v17, v9);
      v36 = OUTLINED_FUNCTION_40();
      return (v35)(v36);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_51_5();
      v3(v37);
      v38 = OUTLINED_FUNCTION_40();
      result = (v3)(v38);
      *a1 = v8;
    }
  }

  return result;
}

uint64_t sub_1DD441054@<X0>(const void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v56 = *(matched - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v51 = type metadata accessor for ContactResolverRunTimeData(0);
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v48 - v19;
  memcpy(v67, a1, 0x108uLL);
  v20 = 0;
  v68 = a2;
  v21 = *(a2 + 16);
  while (1)
  {
    if (v21 == v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
      return swift_storeEnumTagMultiPayload();
    }

    v22 = v68 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v23 = *(v10 + 72);
    sub_1DD4476F4();
    v24 = *(v15 + 37);
    if (*(v24 + 16))
    {
      v25 = v24 + *(matched + 20) + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      memcpy(v61, (v25 + 8), 0x108uLL);
      memmove(v63, (v25 + 8), 0x108uLL);
      nullsub_1(v63);
      sub_1DD3C9478(v61, v65);
      memcpy(v66, v63, sizeof(v66));
    }

    else
    {
      sub_1DD447694(v66);
    }

    memcpy(v64, v67, sizeof(v64));
    nullsub_1(v64);
    memcpy(v63, v66, 0x108uLL);
    memcpy(&v63[33], v64, 0x108uLL);
    memcpy(v65, v66, sizeof(v65));
    if (sub_1DD3C94D4(v65) == 1)
    {
      break;
    }

    memcpy(v62, v63, sizeof(v62));
    memcpy(v60, v63, sizeof(v60));
    memcpy(v61, &v63[33], 0x108uLL);
    if (sub_1DD3C94D4(v61) == 1)
    {
      memcpy(v59, v63, sizeof(v59));
      sub_1DD3C9478(v67, v58);
      sub_1DD3C4EB4();
      sub_1DD3C9580(v59);
      goto LABEL_11;
    }

    memcpy(v59, &v63[33], sizeof(v59));
    sub_1DD3C9478(v67, v58);
    sub_1DD3C4EB4();
    v26 = static ContactQuery.== infix(_:_:)(v60, v59);
    memcpy(v57, v59, sizeof(v57));
    sub_1DD3C9580(v57);
    memcpy(v58, v60, sizeof(v58));
    sub_1DD3C9580(v58);
    memcpy(v59, v63, sizeof(v59));
    sub_1DD390754(v59, &qword_1ECCDCCB0, &unk_1DD64AEE0);
    if (v26)
    {
      goto LABEL_16;
    }

LABEL_13:
    sub_1DD44774C(v15, type metadata accessor for ContactResolverRunTimeData);
    ++v20;
  }

  memcpy(v61, &v63[33], 0x108uLL);
  if (sub_1DD3C94D4(v61) != 1)
  {
    sub_1DD3C9478(v67, v62);
LABEL_11:
    memcpy(v61, v63, sizeof(v61));
    sub_1DD390754(v61, &qword_1ECCDCCA8, &qword_1DD64AED8);
    goto LABEL_13;
  }

  memcpy(v62, v63, sizeof(v62));
  sub_1DD3C9478(v67, v60);
  sub_1DD390754(v62, &qword_1ECCDCCB0, &unk_1DD64AEE0);
LABEL_16:
  sub_1DD44769C();
  v28 = v50;
  sub_1DD44769C();
  v29 = v28 + *(v51 + 40);
  result = sub_1DD556FCC();
  v30 = result;
  v31 = 0;
  v32 = *(v28 + 296);
  matched = *(v32 + 2);
  v33 = MEMORY[0x1E69E7CC0];
  v53 = v32;
  while (1)
  {
    v34 = v31;
LABEL_18:
    if (v34 == matched)
    {

      LOBYTE(v63[0]) = 3;
      v46 = v49;
      sub_1DD426AF4(v33, v63, 0x6F74636572726F63, 0xE900000000000072, v49);

      sub_1DD44774C(v50, type metadata accessor for ContactResolverRunTimeData);
      v47 = *(v51 + 40);
      sub_1DD3C4EB4();
      return sub_1DD44774C(v46, type metadata accessor for ContactResolverRunTimeData);
    }

    if (v34 >= *(v32 + 2))
    {
      break;
    }

    v35 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v36 = *(v56 + 72);
    v68 = v34 + 1;
    sub_1DD4476F4();
    v37 = 0;
    v38 = *(v30 + 16);
    while (v38 != v37)
    {
      v39 = *(type metadata accessor for Contact() - 8);
      v40 = *(v39 + 80);
      v41 = *(v39 + 72);
      static Contact.== infix(_:_:)();
      ++v37;
      if (v42)
      {
        result = sub_1DD44774C(v9, type metadata accessor for ContactMatchRuntimeData);
        v34 = v68;
        v32 = v53;
        goto LABEL_18;
      }
    }

    sub_1DD44769C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = *(v33 + 16);
      sub_1DD42B564();
      v33 = v63[0];
    }

    v45 = *(v33 + 16);
    if (v45 >= *(v33 + 24) >> 1)
    {
      sub_1DD42B564();
      v33 = v63[0];
    }

    *(v33 + 16) = v45 + 1;
    result = sub_1DD44769C();
    v32 = v53;
    v31 = v68;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD44181C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_1();
}

uint64_t sub_1DD441834()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DD43FF34();
  OUTLINED_FUNCTION_45_6();

  return v3();
}

uint64_t sub_1DD4418C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_1();
}

uint64_t sub_1DD4418DC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1DD441958();
  OUTLINED_FUNCTION_45_6();

  return v4();
}

void sub_1DD441958()
{
  OUTLINED_FUNCTION_93();
  v75 = v1;
  v76 = v2;
  v3 = sub_1DD63F9C8();
  v4 = OUTLINED_FUNCTION_0(v3);
  v70 = v5;
  v71 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v77 = v9 - v8;
  v72 = type metadata accessor for ContactResolverCache();
  v10 = OUTLINED_FUNCTION_7(v72);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v73 = v14 - v13;
  v15 = type metadata accessor for Signpost();
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v22 = qword_1EE16F0C0;
  v23 = v21 + *(v15 + 20);
  *v23 = "ContactResolver.findMatches";
  *(v23 + 8) = 27;
  *(v23 + 16) = 2;
  v24 = v22;
  sub_1DD63F9B8();
  *(v21 + *(v15 + 24)) = v24;
  v25 = v24;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DD643F90;
  v27 = sub_1DD6408F8();
  v29 = v28;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  v68 = sub_1DD392BD8();
  *(v26 + 64) = v68;
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  OUTLINED_FUNCTION_22();
  v74 = v25;
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v30 = sub_1DD63F9F8();
  __swift_project_value_buffer(v30, qword_1EE16F068);
  v31 = v76;

  v32 = sub_1DD63F9D8();
  v33 = sub_1DD640368();

  v34 = v77;
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_18_1();
    v35 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v66 = swift_slowAlloc();
    v79[0] = v66;
    v67 = v35;
    *v35 = 136315138;
    v36 = *(v76 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v65 = v32;
      v69 = v21;
      v81 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4();
      v37 = v81;
      v38 = (v76 + 32);
      do
      {
        memcpy(v78, v38, sizeof(v78));
        v39 = ContactQuery.description.getter();
        v41 = v40;
        v43 = *(v81 + 16);
        v42 = *(v81 + 24);
        if (v43 >= v42 >> 1)
        {
          OUTLINED_FUNCTION_36_6(v42);
          sub_1DD42A2D4();
        }

        *(v81 + 16) = v43 + 1;
        v44 = v81 + 16 * v43;
        *(v44 + 32) = v39;
        *(v44 + 40) = v41;
        v38 += 264;
        --v36;
      }

      while (v36);
      v21 = v69;
      v31 = v76;
      v32 = v65;
    }

    v78[0] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v45 = sub_1DD63FD58();
    v47 = v46;

    v48 = sub_1DD39565C(v45, v47, v79);

    *(v67 + 1) = v48;
    OUTLINED_FUNCTION_33_2();
    _os_log_impl(v49, v50, v51, v52, v53, v54);
    __swift_destroy_boxed_opaque_existential_1(v66);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();

    v34 = v77;
  }

  else
  {
  }

  sub_1DD4439E4();
  sub_1DD43CB78();
  v55 = *(v72 + 120);
  sub_1DD3C4EB4();
  OUTLINED_FUNCTION_1_30();
  sub_1DD44774C(v73, v56);
  if (v80)
  {
    v57 = *__swift_project_boxed_opaque_existential_1(v79, v80);
    sub_1DD601998(0, *(v75 + 8), *(v75 + 16));
    __swift_destroy_boxed_opaque_existential_1(v79);
  }

  else
  {
    sub_1DD390754(v79, &qword_1ECCDC250, &qword_1DD645B10);
  }

  v58 = v78[3];
  v59 = v78[4];
  __swift_project_boxed_opaque_existential_1(v78, v78[3]);
  v60 = (*(v59 + 8))(v75, v31, v58, v59);
  if (!v0)
  {
    v74;
    sub_1DD63F9B8();
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1DD643F90;
    v62 = sub_1DD6408F8();
    *(v61 + 56) = MEMORY[0x1E69E6158];
    *(v61 + 64) = v68;
    *(v61 + 32) = v62;
    *(v61 + 40) = v63;
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_34_7();
    sub_1DD63F998();

    sub_1DD442050(v60);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_34_7();
    sub_1DD63F9A8();
    (*(v70 + 8))(v34, v71);
  }

  __swift_destroy_boxed_opaque_existential_1(v78);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_4_19();
  sub_1DD44774C(v21, v64);
  OUTLINED_FUNCTION_86();
}

void sub_1DD442050(uint64_t a1)
{
  v2 = &qword_1ECCDBBE8;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  v5 = (MEMORY[0x1EEE9AC00])(v3 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v57 = (&v51 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = (MEMORY[0x1EEE9AC00])(v13 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v51 - v19);
  v21 = 0;
  v22 = *(a1 + 16);
  v53 = a1 + 32;
  v54 = v22;
  v18.n128_u64[0] = 134218240;
  v52 = v18;
  v18.n128_u64[0] = 134218242;
  v56 = v18;
  v65 = &v51 - v19;
  v59 = v9;
  v61 = v17;
  v62 = v10;
LABEL_2:
  if (v21 == v54)
  {
    return;
  }

  v55 = v21;
  v23 = *(v53 + 8 * v21);
  v24 = qword_1EE165FB0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_1DD63F9F8();
  v26 = __swift_project_value_buffer(v25, qword_1EE16F068);

  v64 = v26;
  v27 = sub_1DD63F9D8();
  v28 = v23;
  v29 = sub_1DD640368();
  if (os_log_type_enabled(v27, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = v52.n128_u32[0];
    *(v30 + 4) = v55;
    *(v30 + 12) = 2048;
    *(v30 + 14) = *(v28 + 16);

    _os_log_impl(&dword_1DD38D000, v27, v29, "matches for group %ld: %ld", v30, 0x16u);
    v31 = v30;
    v20 = v65;
    MEMORY[0x1E12B3DA0](v31, -1, -1);
  }

  else
  {
  }

  v32 = v59;
  v33 = 0;
  ++v55;
  v60 = v28;
  v34 = *(v28 + 16);
  for (i = v34; ; v34 = i)
  {
    if (v33 == v34)
    {
      v35 = 1;
      v33 = v34;
      goto LABEL_14;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v33 >= *(v60 + 16))
    {
      goto LABEL_22;
    }

    v36 = v60 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v33;
    v37 = *(v10 + 48);
    *v57 = v33;
    sub_1DD3C4EB4();
    v20 = v65;
    sub_1DD447808();
    v35 = 0;
    ++v33;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v17, v35, 1, v10);
    sub_1DD447808();
    if (__swift_getEnumTagSinglePayload(v20, 1, v10) == 1)
    {

      v21 = v55;
      goto LABEL_2;
    }

    v38 = *v20;
    v39 = *(v10 + 48);
    sub_1DD447808();
    sub_1DD3C4EB4();
    v40 = sub_1DD63F9D8();
    v41 = sub_1DD640368();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v2;
      v44 = swift_slowAlloc();
      v66 = v44;
      *v42 = v56.n128_u32[0];
      *(v42 + 4) = v38;
      *(v42 + 12) = 2080;
      v45 = Contact.description.getter();
      v47 = v46;
      sub_1DD390754(v7, v43, &qword_1DD644470);
      v48 = sub_1DD39565C(v45, v47, &v66);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_1DD38D000, v40, v41, "match %ld: %s", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v44);
      v49 = v44;
      v2 = v43;
      MEMORY[0x1E12B3DA0](v49, -1, -1);
      v50 = v42;
      v32 = v59;
      MEMORY[0x1E12B3DA0](v50, -1, -1);
    }

    else
    {

      sub_1DD390754(v7, v2, &qword_1DD644470);
    }

    sub_1DD390754(v32, v2, &qword_1DD644470);
    v17 = v61;
    v10 = v62;
    v20 = v65;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_1DD4425CC()
{
  OUTLINED_FUNCTION_18_4();
  v19 = v1;
  v17 = v3;
  v18 = v2;
  v4 = sub_1DD63F9C8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_7();
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v11 = sub_1DD6408F8();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DD392BD8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F998();

  sub_1DD4427E8(v0, v18, v19, v17);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F9A8();
  v14 = *(v7 + 8);
  v15 = OUTLINED_FUNCTION_1_8();
  v16(v15);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4427E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v167 = a1;
  v157 = a4;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v6 = *(*(v155 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v155);
  v152 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v152 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v152 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v152 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v174 = *(v17 - 8);
  v175 = v17;
  v18 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v173 = &v152 - v19;
  v166 = type metadata accessor for ContactResolverCache();
  v20 = *(*(v166 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v166);
  v161 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v160 = &v152 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v162 = &v152 - v25;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v171 = *(matched - 1);
  v26 = *(v171 + 64);
  v27 = MEMORY[0x1EEE9AC00](matched);
  v172 = &v152 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v152 - v29;
  v31 = type metadata accessor for ContactResolverRunTimeData(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v154 = v11;
    v163 = v16;
    v35 = sub_1DD63F9F8();
    v169 = __swift_project_value_buffer(v35, qword_1EE16F068);
    v36 = sub_1DD63F9D8();
    v37 = sub_1DD640368();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v34;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1DD38D000, v36, v37, "making contact recommendations", v39, 2u);
      v40 = v39;
      v34 = v38;
      MEMORY[0x1E12B3DA0](v40, -1, -1);
    }

    v153 = v14;

    v41 = type metadata accessor for ContactResolverConfig(0);
    v42 = *(a3 + *(v41 + 88));
    sub_1DD443C80();
    v158 = v41;
    v43 = *(v41 + 80);
    v159 = a3;
    v44 = (a3 + v43);
    v46 = *v44;
    v45 = v44[1];
    v168 = v31;
    v47 = &v34[*(v31 + 84)];
    v48 = *(v47 + 1);
    *v47 = v46;
    *(v47 + 1) = v45;

    v49 = v34;
    v50 = *(v34 + 37);
    v51 = *(v50 + 16);
    v52 = MEMORY[0x1E69E7CC0];
    v170 = v49;
    v165 = v50;
    if (v51)
    {
      v164 = a2;
      v178 = MEMORY[0x1E69E7CC0];

      sub_1DD42A2D4();
      v52 = v178;
      v53 = v50 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
      v176 = *(v171 + 72);
      do
      {
        sub_1DD4476F4();
        v179 = 0;
        v180 = 0xE000000000000000;
        MEMORY[0x1E12B2260](*v30, *(v30 + 1));
        MEMORY[0x1E12B2260](8250, 0xE200000000000000);
        v54 = *&v30[matched[8]];
        sub_1DD640228();
        v56 = v179;
        v55 = v180;
        sub_1DD44774C(v30, type metadata accessor for ContactMatchRuntimeData);
        v178 = v52;
        v57 = *(v52 + 16);
        if (v57 >= *(v52 + 24) >> 1)
        {
          sub_1DD42A2D4();
          v52 = v178;
        }

        *(v52 + 16) = v57 + 1;
        v58 = v52 + 16 * v57;
        *(v58 + 32) = v56;
        *(v58 + 40) = v55;
        v53 += v176;
        --v51;
      }

      while (v51);

      a2 = v164;
    }

    v179 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v59 = sub_1DD63FD58();
    v61 = v60;

    v62 = sub_1DD63F9D8();
    v63 = sub_1DD640368();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v179 = v65;
      *v64 = 136315394;
      v66 = sub_1DD39565C(v59, v61, &v179);

      *(v64 + 4) = v66;
      *(v64 + 12) = 2080;
      v67 = v170;
      swift_beginAccess();
      v68 = v168;
      v69 = v67 + v168[10];
      v70 = sub_1DD4A7F9C();
      v72 = sub_1DD39565C(v70, v71, &v179);

      *(v64 + 14) = v72;
      _os_log_impl(&dword_1DD38D000, v62, v63, "Ranked candidate IDs and scores:\n%s\nModel output: %s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v65, -1, -1);
      MEMORY[0x1E12B3DA0](v64, -1, -1);
    }

    else
    {

      v68 = v168;
    }

    v156 = sub_1DD43D048();
    v73 = v159;
    v74 = sub_1DD553818(v159);
    v75 = v165;

    v76 = v162;
    sub_1DD43CB78();
    v77 = *(v76 + *(v166 + 104));
    sub_1DD44774C(v76, type metadata accessor for ContactResolverCache);
    LODWORD(v164) = v74;
    LODWORD(v176) = sub_1DD553DE8(v75, v77, v74);

    LODWORD(v159) = *(v73 + *(v158 + 76));
    v78 = sub_1DD63F9D8();
    v79 = sub_1DD640368();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 67109120;
      *(v80 + 4) = v176 & 1;
      _os_log_impl(&dword_1DD38D000, v78, v79, "shouldPlusForcePrompt %{BOOL}d", v80, 8u);
      MEMORY[0x1E12B3DA0](v80, -1, -1);
    }

    sub_1DD43CB78();
    v81 = *(v76 + *(v166 + 104));
    sub_1DD44774C(v76, type metadata accessor for ContactResolverCache);
    v82 = sub_1DD553C54(v81, v164);
    v83 = v170;
    swift_beginAccess();
    v84 = 0;
    *(v83 + v68[16]) = v82 & 1;
    v85 = *(a2 + 16);
    while (v85 != v84)
    {
      v86 = v173;
      v87 = a2 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
      v88 = *(v174 + 72);
      sub_1DD3C4EB4();
      ++v84;
      v89 = v86 + *(v175 + 36);
      LODWORD(v89) = *(v89 + *(type metadata accessor for ContactResolver.SignalSet(0) + 204));
      sub_1DD390754(v86, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v89 == 1)
      {
        goto LABEL_20;
      }
    }

    v82 = 0;
LABEL_20:
    v90 = v168;
    v91 = v170;
    v92 = v170 + v168[16];
    *(v92 + 3) = v82 & 1;
    *(v92 + 2) = v176 & 1;
    sub_1DD43CB78();
    v93 = v166;
    v94 = *(v76 + *(v166 + 104));
    sub_1DD44774C(v76, type metadata accessor for ContactResolverCache);
    v95 = v91 + v90[16];
    *(v95 + 1) = v94;
    *(v95 + 4) = v164;
    sub_1DD43CB78();
    LODWORD(v175) = *(v76 + *(v93 + 28) + 7);
    sub_1DD44774C(v76, type metadata accessor for ContactResolverCache);
    v96 = v160;
    sub_1DD43CB78();
    v97 = (v96 + *(v93 + 112));
    v98 = *v97;
    v99 = v97[1];
    v100 = v97[2];
    v101 = *(v97 + 1);
    sub_1DD44774C(v96, type metadata accessor for ContactResolverCache);
    v102 = 256;
    if (!v99)
    {
      v102 = 0;
    }

    v103 = sub_1DD517EC0(v175, v102 | v98);
    v104 = v161;
    sub_1DD43CB78();
    v105 = *(v104 + *(v93 + 28) + 8);
    sub_1DD44774C(v104, type metadata accessor for ContactResolverCache);
    if (v105 == 1)
    {
      sub_1DD43CB78();
      v106 = *(v76 + *(v93 + 112) + 2);
      sub_1DD44774C(v76, type metadata accessor for ContactResolverCache);
    }

    else
    {
      v106 = 0;
    }

    v107 = v93;
    a2 = 0xD000000000000011;
    sub_1DD43CB78();
    v108 = *(v76 + *(v107 + 112) + 8);
    sub_1DD44774C(v76, type metadata accessor for ContactResolverCache);
    v109 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v110 = sub_1DD3B7FC0(0xD000000000000018, 0x80000001DD66B0F0);
    v111 = sub_1DD5181C0(v110, v108);

    v112 = sub_1DD63F9D8();
    v113 = sub_1DD640368();
    v114 = os_log_type_enabled(v112, v113);
    v115 = v165;
    if (v114)
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v181 = v117;
      *v116 = 136315906;
      *(v116 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v181);
      *(v116 + 12) = 1024;
      *(v116 + 14) = v103 & 1;
      *(v116 + 18) = 1024;
      *(v116 + 20) = v106;
      *(v116 + 24) = 2048;
      *(v116 + 26) = v111;
      _os_log_impl(&dword_1DD38D000, v112, v113, "%s Megadome ECR configs (from FF or Trial factors):\nisMegadomeECREnabled=%{BOOL}d\nisMegadomeECRUseCandidatesEnabled=%{BOOL}d\nmegadomeECRScoreThreshold=%f", v116, 0x22u);
      __swift_destroy_boxed_opaque_existential_1(v117);
      MEMORY[0x1E12B3DA0](v117, -1, -1);
      MEMORY[0x1E12B3DA0](v116, -1, -1);
    }

    v14 = v172;
    v31 = v176;
    *(v170 + v168[20]) = v103 & 1;
    if (!v106)
    {
      break;
    }

    v16 = *(v115 + 16);
    if (!v16)
    {
      break;
    }

    v11 = matched[9];
    v34 = (v115 + ((*(v171 + 80) + 32) & ~*(v171 + 80)));

    v30 = 0;
    a3 = v168;
    while (v30 < *(v115 + 16))
    {
      v118 = *(v171 + 72);
      sub_1DD4476F4();
      if (v11[v14])
      {
        sub_1DD44774C(v14, type metadata accessor for ContactMatchRuntimeData);
      }

      else
      {
        v119 = &v172[matched[5]];
        v120 = *&v119[*(type metadata accessor for ContactResolver.SignalSet(0) + 240)];
        v14 = v172;
        sub_1DD44774C(v172, type metadata accessor for ContactMatchRuntimeData);
        if (v111 < v120)
        {
          v121 = 1;
          goto LABEL_38;
        }
      }

      if (v16 == ++v30)
      {
        v121 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_62:
    swift_once();
  }

  v121 = 0;
  a3 = v168;
LABEL_39:
  v122 = sub_1DD63F9D8();
  v123 = sub_1DD640368();
  v124 = os_log_type_enabled(v122, v123);
  v125 = v159;
  if (v124)
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v181 = v127;
    *v126 = 136315394;
    *(v126 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v181);
    *(v126 + 12) = 1024;
    *(v126 + 14) = v121;
    _os_log_impl(&dword_1DD38D000, v122, v123, "%s shouldMegadomeECRForcePrompt %{BOOL}d", v126, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v127);
    MEMORY[0x1E12B3DA0](v127, -1, -1);
    MEMORY[0x1E12B3DA0](v126, -1, -1);
  }

  v128 = v163;
  v129 = v156;
  if ((v156 | v31 | v121 | v125))
  {
    v130 = v170;
    sub_1DD4442D8();
    *(v130 + a3[12]) = 1;
    v131 = a3[14];
    sub_1DD390754(v130 + v131, &qword_1ECCDC1C8, qword_1DD64ADD0);
    sub_1DD3C4EB4();
    __swift_storeEnumTagSinglePayload(v130 + v131, 0, 1, v155);
    *(v130 + a3[13]) = 5;
    v132 = v31 | v121 | v129;
    if ((v132 | v125))
    {
      if (v121)
      {
        v133 = 3;
      }

      else
      {
        v133 = 0;
      }

      if (v31)
      {
        v133 = 1;
      }

      if (v132)
      {
        v134 = v133;
      }

      else
      {
        v134 = 4;
      }

      *(v170 + a3[13]) = v134;
    }

    v135 = v153;
    sub_1DD3C4EB4();
    v136 = v154;
    sub_1DD3C4EB4();
    v137 = sub_1DD63F9D8();
    v138 = sub_1DD640368();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v181 = v140;
      *v139 = 136446466;
      v141 = 0xE900000000000074;
      v142 = 0x6E656469666E6F63;
      switch(sub_1DD43D87C())
      {
        case 1u:
          v141 = 0x80000001DD669AF0;
          v142 = 0xD000000000000011;
          break;
        case 2u:
          v141 = 0x80000001DD668A50;
          v142 = 0xD000000000000013;
          break;
        case 3u:
          v141 = 0xE400000000000000;
          v142 = 1701736302;
          break;
        default:
          break;
      }

      sub_1DD390754(v153, &qword_1ECCDBEE0, &unk_1DD645510);
      v144 = sub_1DD39565C(v142, v141, &v181);

      *(v139 + 4) = v144;
      *(v139 + 12) = 2080;
      v145 = v154;
      sub_1DD3C4EB4();
      v146 = sub_1DD63FE38();
      v148 = v147;
      sub_1DD390754(v145, &qword_1ECCDBEE0, &unk_1DD645510);
      v149 = sub_1DD39565C(v146, v148, &v181);

      *(v139 + 14) = v149;
      _os_log_impl(&dword_1DD38D000, v137, v138, "force-prompt! new recommendation: %{public}s %s", v139, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v140, -1, -1);
      MEMORY[0x1E12B3DA0](v139, -1, -1);

      v143 = v163;
    }

    else
    {

      sub_1DD390754(v136, &qword_1ECCDBEE0, &unk_1DD645510);
      sub_1DD390754(v135, &qword_1ECCDBEE0, &unk_1DD645510);
      v143 = v128;
    }

    sub_1DD390754(v143, &qword_1ECCDBEE0, &unk_1DD645510);
  }

  v150 = v170;
  sub_1DD4476F4();
  return sub_1DD44774C(v150, type metadata accessor for ContactResolverRunTimeData);
}

void sub_1DD4439E4()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = type metadata accessor for ContactResolverConfig(0);
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = type metadata accessor for ContactResolverCache();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v13 = sub_1DD63F9F8();
  __swift_project_value_buffer(v13, qword_1EE16F068);

  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_18_1();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v32 = v1;
    v33 = swift_slowAlloc();
    v17 = v33;
    *v16 = 136315138;
    sub_1DD43CB78();
    v18 = (v12 + *(v6 + 116));
    v19 = *v18;
    v20 = v18[1];
    OUTLINED_FUNCTION_1_30();
    sub_1DD44774C(v12, v21);
    if (v20)
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_1DD603614(v22 | v19);
    v25 = sub_1DD39565C(v23, v24, &v33);

    *(v16 + 4) = v25;
    _os_log_impl(&dword_1DD38D000, v14, v15, "[UCG] UCG trial factors: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v1 = v32;
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  sub_1DD43CB78();
  v26 = *(v12 + *(v6 + 116));
  OUTLINED_FUNCTION_1_30();
  sub_1DD44774C(v12, v27);
  sub_1DD43CB78();
  OUTLINED_FUNCTION_15_14();
  sub_1DD4476F4();
  if (v26 == 1)
  {
    v28 = type metadata accessor for UnifiedContactGenerator(0);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_1DD60F388();
    v1[3] = v28;
    v1[4] = &off_1F58C4120;
    *v1 = v31;
  }

  else
  {
    v1[3] = type metadata accessor for CandidateContactGenerator(0);
    v1[4] = &off_1F58B1138;
    __swift_allocate_boxed_opaque_existential_1(v1);
    sub_1DD3ED110();
  }

  OUTLINED_FUNCTION_17();
}

void sub_1DD443C80()
{
  OUTLINED_FUNCTION_18_4();
  v80 = v0;
  v75 = v1;
  v82 = v3;
  v83 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCC98, &unk_1DD64AF10);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v74 - v12;
  OUTLINED_FUNCTION_42_5();
  v78 = type metadata accessor for ContactResolverCache();
  v14 = OUTLINED_FUNCTION_7(v78);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  v79 = type metadata accessor for MLContactRecommender();
  v20 = OUTLINED_FUNCTION_7(v79);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  v26 = type metadata accessor for Signpost();
  v27 = OUTLINED_FUNCTION_7(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v32 = v31 - v30;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v33 = sub_1DD63F9F8();
  v76 = __swift_project_value_buffer(v33, qword_1EE16F068);
  v34 = sub_1DD63F9D8();
  v35 = sub_1DD640368();
  v36 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_9();
    *v38 = 0;
    _os_log_impl(&dword_1DD38D000, v34, v35, "recommending with MLContactRecommender", v38, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v77 = v13;
  v74[1] = v25;

  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v39 = qword_1EE16F0C0;
  v40 = v32 + *(v26 + 20);
  *v40 = "ContactResolver.Recommend.ML";
  *(v40 + 8) = 28;
  *(v40 + 16) = 2;
  v41 = v39;
  sub_1DD63F9B8();
  *(v32 + *(v26 + 24)) = v41;
  v42 = v41;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1DD643F90;
  v44 = sub_1DD6408F8();
  v46 = v45;
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = sub_1DD392BD8();
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  OUTLINED_FUNCTION_22();
  v81 = v42;
  sub_1DD63F998();

  sub_1DD43CB78();
  v47 = v77;
  v48 = *(v78 + 56);
  sub_1DD3C4EB4();
  OUTLINED_FUNCTION_1_30();
  sub_1DD44774C(v19, v49);
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v79) == 1)
  {
    sub_1DD390754(v10, &qword_1ECCDCC98, &unk_1DD64AF10);
    type metadata accessor for InferenceError();
    swift_allocObject();
    v50 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000075, 0x80000001DD66BED0, 0xD000000000000031, 0x80000001DD66C090, 449, MEMORY[0x1E69E7CC0], 2);
    v51 = *(v50 + 32);
    *(v50 + 24) = 0;
    *(v50 + 32) = 0xE000000000000000;

    OUTLINED_FUNCTION_19_12();
    sub_1DD445D68(v52, v53);
    OUTLINED_FUNCTION_52_4();
    v54 = swift_allocError();
    *v55 = v50;
    swift_willThrow();
    sub_1DD390754(v47, &qword_1ECCDCC98, &unk_1DD64AF10);
    v56 = v82;
    v57 = v54;
    v58 = sub_1DD63F9D8();
    v59 = sub_1DD640378();

    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_18_1();
      v61 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v62 = swift_slowAlloc();
      v84 = v54;
      v85[0] = v62;
      *v61 = 136446210;
      v63 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      v64 = sub_1DD63FE38();
      v66 = sub_1DD39565C(v64, v65, v85);

      *(v61 + 4) = v66;
      OUTLINED_FUNCTION_33_2();
      _os_log_impl(v67, v68, v69, v70, v71, v72);
      __swift_destroy_boxed_opaque_existential_1(v62);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    LOBYTE(v85[0]) = 1;
    v85[1] = 0xD00000000000001BLL;
    v85[2] = 0x80000001DD66C0D0;
    sub_1DD3CDD7C(v83, v56);

    *(v56 + 288) = 1;
  }

  else
  {
    sub_1DD390754(v47, &qword_1ECCDCC98, &unk_1DD64AF10);
    sub_1DD44769C();
    sub_1DD521D8C(v83, v82);
    OUTLINED_FUNCTION_20_8();
  }

  sub_1DD6404C8();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_4_19();
  sub_1DD44774C(v32, v73);
  OUTLINED_FUNCTION_17();
}

void sub_1DD4442D8()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v5 = OUTLINED_FUNCTION_51(matched);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = type metadata accessor for Contact();
  v14 = OUTLINED_FUNCTION_51(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v19 = *(v1 + 296);
  v20 = *(v19 + 16);
  if (v20 < 2)
  {
    if (v20 == 1)
    {
      v29 = *(v7 + 80);
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_16_12();
      sub_1DD4476F4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
    OUTLINED_FUNCTION_52_4();
    OUTLINED_FUNCTION_17();

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1DD42B5EC(0, v20, 0);
    v21 = *(v7 + 80);
    OUTLINED_FUNCTION_24_0();
    v23 = v19 + v22;
    v24 = *(v7 + 72);
    do
    {
      sub_1DD4476F4();
      OUTLINED_FUNCTION_16_12();
      sub_1DD4476F4();
      sub_1DD44774C(v12, type metadata accessor for ContactMatchRuntimeData);
      v26 = *(v31 + 16);
      v25 = *(v31 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1DD42B5EC(v25 > 1, v26 + 1, 1);
      }

      *(v31 + 16) = v26 + 1;
      v27 = *(v16 + 80);
      OUTLINED_FUNCTION_24_0();
      v28 = *(v16 + 72);
      sub_1DD44769C();
      v23 += v24;
      --v20;
    }

    while (v20);
    *v3 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
    OUTLINED_FUNCTION_52_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_17();
  }
}

void sub_1DD444584()
{
  OUTLINED_FUNCTION_18_4();
  v54 = v0;
  v52 = v1;
  v53 = type metadata accessor for ContactResolverConfig(0);
  v2 = OUTLINED_FUNCTION_0(v53);
  v49 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v50 = v6;
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1DD63D078();
  v7 = OUTLINED_FUNCTION_0(v51);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for ContactResolverCache();
  v16 = OUTLINED_FUNCTION_51(v15);
  v46 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v23 = sub_1DD63F9F8();
  __swift_project_value_buffer(v23, qword_1EE16F068);
  v24 = sub_1DD63F9D8();
  v25 = sub_1DD640368();
  v26 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_9();
    *v28 = 0;
    _os_log_impl(&dword_1DD38D000, v24, v25, "creating background operation to save runtime data", v28, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v44 = v14;
  v45 = v22;

  sub_1DD43CB78();
  sub_1DD63D068();
  sub_1DD4476F4();
  OUTLINED_FUNCTION_15_14();
  sub_1DD4476F4();
  v29 = v47;
  v30 = v51;
  (*(v9 + 16))(v47, v14, v51);
  v31 = (v50 + *(v9 + 80) + ((v19 + *(v49 + 80) + ((*(v46 + 80) + 24) & ~*(v46 + 80))) & ~*(v49 + 80))) & ~*(v9 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v52;
  OUTLINED_FUNCTION_3_21();
  sub_1DD44769C();
  sub_1DD44769C();
  (*(v9 + 32))(v32 + v31, v29, v30);
  v33 = type metadata accessor for RestartableBlockOperation();
  v34 = objc_allocWithZone(v33);
  v35 = &v34[OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block];
  *v35 = sub_1DD447520;
  v35[1] = v32;
  v55.receiver = v34;
  v55.super_class = v33;

  v36 = objc_msgSendSuper2(&v55, sel_init);
  v37 = v36;
  if (*(v54 + *(v53 + 40)) == 1)
  {
    v38 = *&v36[OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block + 8];
    (*&v36[OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block])();
    (*(v9 + 8))(v44, v30);
    OUTLINED_FUNCTION_1_30();
    sub_1DD44774C(v45, v39);
  }

  else
  {
    v40 = v44;
    v41 = v45;
    if (qword_1EE166628 != -1)
    {
      OUTLINED_FUNCTION_14_16();
      swift_once();
    }

    [qword_1EE166630 addOperation_];

    (*(v9 + 8))(v40, v30);
    OUTLINED_FUNCTION_1_30();
    sub_1DD44774C(v41, v42);
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD444A30(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v133 = a3;
  v134 = a4;
  v138 = a2;
  v149 = *MEMORY[0x1E69E9840];
  v140 = type metadata accessor for RunTimeDataRecord();
  v5 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Signpost();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v11 = qword_1EE16F0C0;
    v12 = &v10[*(v7 + 5)];
    *v12 = "ContactResolver.HandleRunTimeData";
    *(v12 + 1) = 33;
    v12[16] = 2;
    v13 = v11;
    sub_1DD63F9B8();
    *&v10[*(v7 + 6)] = v13;
    v14 = v13;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v15 = swift_allocObject();
    v124 = xmmword_1DD643F90;
    *(v15 + 16) = xmmword_1DD643F90;
    v16 = sub_1DD6408F8();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1DD392BD8();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v135 = v14;
    v136 = v10;
    sub_1DD63F998();

    v19 = *(a1 + 16);
    v137 = a1;
    if (!v19)
    {
      break;
    }

    v7 = v146;
    v20 = *(v138 + *(type metadata accessor for ContactResolverCache() + 76));

    v21 = 0;
    v141 = xmmword_1DD642F70;
    while (1)
    {
      if (v20)
      {
        sub_1DD5FFE5C(v146);
        v142 = v146[0];
        v143 = v146[1];
        v22 = v147;
        v23 = v148;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v142 = v141;
        v143 = 0u;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD586A74(a1);
        a1 = v33;
      }

      if (v21 >= *(a1 + 16))
      {
        break;
      }

      v24 = type metadata accessor for ContactResolverRunTimeData(0);
      v25 = (a1 + ((*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80)) + *(*(v24 - 8) + 72) * v21 + *(v24 + 60));
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v29 = v25[3];
      v30 = v25[4];
      v31 = v25[5];
      v32 = v143;
      *v25 = v142;
      *(v25 + 1) = v32;
      v25[4] = v22;
      v25[5] = v23;
      sub_1DD447638(v26, v27);
      v10 = ++v21;
      if (v19 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_13:
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v34 = v140;
  v125 = sub_1DD63F9F8();
  *&v143 = __swift_project_value_buffer(v125, qword_1EE16F068);
  v35 = sub_1DD63F9D8();
  v36 = sub_1DD640368();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1DD38D000, v35, v36, "saving contact runtime data", v37, 2u);
    MEMORY[0x1E12B3DA0](v37, -1, -1);
  }

  swift_beginAccess();
  *&v141 = sub_1DD6408F8();
  v132 = v38;
  v39 = v133;
  HIDWORD(v131) = *v133;
  v40 = *(v133 + 3);
  v41 = *(v133 + 4);
  v42 = *(v133 + 1);
  *&v142 = *(v133 + 2);
  v43 = *(v133 + 6);
  v129 = *(v133 + 5);
  v130 = v40;
  v127 = v43;
  v128 = v41;
  v44 = type metadata accessor for ContactResolverConfig(0);
  v45 = v44[8];
  v46 = v139;
  v47 = &v139[*(v34 + 20)];
  v48 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v49 = v48[8];
  v50 = sub_1DD63D168();
  (*(*(v50 - 8) + 16))(&v47[v49], &v39[v45], v50);
  v51 = v39[v44[9]];
  v52 = v44[12];
  v126 = *&v39[v44[11]];
  v53 = v126;
  v54 = v39[v52];
  v55 = *&v39[v44[13]];
  v56 = v39[v44[14]];
  v57 = &v39[v44[17]];
  *v47 = BYTE4(v131);
  v58 = v129;
  v59 = v127;
  v60 = v128;
  *(v47 + 1) = v130;
  *(v47 + 2) = v60;
  v133 = v42;
  v61 = v142;
  *(v47 + 3) = v42;
  *(v47 + 4) = v61;
  *(v47 + 5) = v58;
  *(v47 + 6) = v59;
  v47[v48[9]] = v51;
  *&v47[v48[10]] = v53;
  v47[v48[11]] = v54;
  *&v47[v48[12]] = v55;
  v47[v48[13]] = v56;
  v62 = *(v57 + 1);
  v63 = &v47[v48[14]];
  *v63 = *v57;
  *(v63 + 1) = v62;
  v64 = v140;
  v65 = *(v140 + 28);
  v66 = sub_1DD63D078();
  (*(*(v66 - 8) + 16))(&v46[v65], v134, v66);
  v67 = v132;
  *v46 = v141;
  *(v46 + 1) = v67;
  *&v46[*(v64 + 24)] = a1;

  sub_1DD5919A8(0, &v145);
  v68 = MEMORY[0x1E69E7CC0];
  sub_1DD58CBD8(v46, v69, v70, v71, v72, v73, v74, v75, v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
  v76 = v46;
  sub_1DD63CFF8();
  v84 = -v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = v124;
  *(inited + 32) = 0x79616C6564;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1DD395950();
  sub_1DD63FC88();
  sub_1DD399F2C();

  v86 = sub_1DD63F9D8();
  v87 = sub_1DD640368();
  if (os_log_type_enabled(v86, v87))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_1DD38D000, v86, v87, "saved contact runtime data", v89, 2u);
    MEMORY[0x1E12B3DA0](v89, -1, -1);
  }

  v90 = v137;
  if (*(v138 + *(type metadata accessor for ContactResolverCache() + 28) + 3) == 1)
  {
    if (v142)
    {
      v77 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
      v78 = sub_1DD4459A4(5395011, 0xE300000000000000);
      if (v78)
      {
        v79 = v78;
        v95 = sub_1DD63286C();
        v97 = v96;
        objc_allocWithZone(MEMORY[0x1E699C0D0]);
        v98 = v142;

        v99 = sub_1DD445A08(v95, v97, v133, v98, 1);
        if (v99)
        {
          v100 = v99;
          v145 = 0;
          if ([v79 insert:v99 error:&v145])
          {
            v101 = v145;
            v102 = sub_1DD63F9D8();
            v103 = sub_1DD640368();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              *v104 = 0;
              _os_log_impl(&dword_1DD38D000, v102, v103, "logged runtime data to Curare", v104, 2u);
              MEMORY[0x1E12B3DA0](v104, -1, -1);
            }

            v90 = v137;
            goto LABEL_40;
          }

          v108 = v145;
          v93 = sub_1DD63CD98();

          swift_willThrow();
        }

        else
        {
          type metadata accessor for InferenceError();
          swift_allocObject();
          v105 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000075, 0x80000001DD66BED0, 0xD000000000000023, 0x80000001DD66C020, 547, v68, 2);
          v106 = *(v105 + 32);
          *(v105 + 24) = 0;
          *(v105 + 32) = 0xE000000000000000;

          sub_1DD445D68(&qword_1EE1663F0, type metadata accessor for InferenceError);
          v93 = swift_allocError();
          *v107 = v105;
          swift_willThrow();
        }

        v90 = v137;
      }

      else
      {
        type metadata accessor for InferenceError();
        swift_allocObject();
        v91 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000075, 0x80000001DD66BED0, 0xD000000000000023, 0x80000001DD66C020, 545, v68, 2);
        v92 = *(v91 + 32);
        *(v91 + 24) = 0;
        *(v91 + 32) = 0xE000000000000000;

        sub_1DD445D68(&qword_1EE1663F0, type metadata accessor for InferenceError);
        v93 = swift_allocError();
        *v94 = v91;
        swift_willThrow();
      }

      v109 = v93;
      v110 = sub_1DD63F9D8();
      v111 = sub_1DD640378();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v145 = v113;
        *v112 = 136446210;
        v144 = v93;
        v114 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
        v115 = sub_1DD63FE38();
        v117 = sub_1DD39565C(v115, v116, &v145);

        *(v112 + 4) = v117;
        _os_log_impl(&dword_1DD38D000, v110, v111, "could not log runtime data to Curare: %{public}s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v113);
        MEMORY[0x1E12B3DA0](v113, -1, -1);
        MEMORY[0x1E12B3DA0](v112, -1, -1);
      }

      else
      {
      }

LABEL_40:
      v76 = v139;
      goto LABEL_41;
    }

    v80 = sub_1DD63F9D8();
    v81 = sub_1DD640368();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1DD38D000, v80, v81, "Skip to log runtime data to Curare due to empty interactionId", v82, 2u);
      MEMORY[0x1E12B3DA0](v82, -1, -1);
    }
  }

LABEL_41:
  v118 = sub_1DD63F9D8();
  v119 = sub_1DD640368();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&dword_1DD38D000, v118, v119, "Logging PLUS data", v120, 2u);
    MEMORY[0x1E12B3DA0](v120, -1, -1);
  }

  sub_1DD557178(v90);
  sub_1DD44774C(v76, type metadata accessor for RunTimeDataRecord);
  sub_1DD6404C8();
  v121 = v136;
  sub_1DD63F9A8();
  result = sub_1DD44774C(v121, type metadata accessor for Signpost);
  v123 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1DD4459A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD63FDA8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithStreamId_];

  return v4;
}

id sub_1DD445A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1DD63FDA8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1DD63FDA8();

LABEL_6:
  v10 = [v5 initWithJsonStr:v8 interactionId:v9 dataVersion:a5];

  return v10;
}

uint64_t sub_1DD445AB0(uint64_t a1)
{
  result = sub_1DD445D68(&qword_1ECCDCC60, type metadata accessor for ContactResolver);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD445B9C()
{
  result = qword_1ECCDCC78;
  if (!qword_1ECCDCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC78);
  }

  return result;
}

unint64_t sub_1DD445BF4()
{
  result = qword_1ECCDCC80;
  if (!qword_1ECCDCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC80);
  }

  return result;
}

uint64_t sub_1DD445D68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DD445DB8()
{
  sub_1DD41AEB0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ContactResolver.makeRecommendationsAsync(queries:config:)()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v1 + 232);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_13_13(v4);

  return v6(v5);
}

uint64_t dispatch thunk of ContactResolver.makeCorrectionsAsync(queries:config:)()
{
  OUTLINED_FUNCTION_22_7();
  v7 = *(v1 + 256) + **(v1 + 256);
  v2 = *(*(v1 + 256) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_13_13(v3);

  return v5(v4);
}

uint64_t dispatch thunk of ContactResolver.findMatchesAsync(queries:config:)()
{
  OUTLINED_FUNCTION_22_7();
  v7 = *(v1 + 272) + **(v1 + 272);
  v2 = *(*(v1 + 272) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_13_13(v3);

  return v5(v4);
}

uint64_t sub_1DD446294(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  OUTLINED_FUNCTION_45_6();

  return v4(a1);
}

void sub_1DD44638C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DD640CA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DD446720(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1DD4464D4(0, v2, 1, a1);
  }
}

void sub_1DD4464D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  v8 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v33 = -v18;
    v34 = v17;
    v20 = a1 - a3;
    v27 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v21;
      v30 = v20;
      v22 = v20;
      do
      {
        sub_1DD3C4EB4();
        sub_1DD3C4EB4();
        v23 = *v16;
        v24 = *v12;
        sub_1DD390754(v12, &qword_1ECCDBEE8, &qword_1DD6441F0);
        sub_1DD390754(v16, &qword_1ECCDBEE8, &qword_1DD6441F0);
        if (v23 >= v24)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return;
        }

        sub_1DD447808();
        swift_arrayInitWithTakeFrontToBack();
        sub_1DD447808();
        v19 += v33;
        v21 += v33;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v32 + 1;
      v19 = v31 + v27;
      v20 = v30 - 1;
      v21 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD446720(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v106 = a1;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  v113 = *(v121 - 8);
  v7 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v110 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v105 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v105 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v105 - v14;
  v15 = a3[1];
  v115 = a3;
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v117 = v17;
    v17 = *v106;
    if (!*v106)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v116;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v98 = (v117 + 16);
      for (i = *(v117 + 2); i >= 2; *v98 = i)
      {
        if (!*v115)
        {
          goto LABEL_138;
        }

        v100 = &v117[16 * i];
        v101 = *v100;
        v102 = &v98[2 * i];
        v103 = *(v102 + 1);
        sub_1DD447064(*v115 + *(v113 + 72) * *v100, *v115 + *(v113 + 72) * *v102, *v115 + *(v113 + 72) * v103, v17);
        if (v4)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v98)
        {
          goto LABEL_127;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        v104 = *v98 - i;
        if (*v98 < i)
        {
          goto LABEL_128;
        }

        i = *v98 - 1;
        sub_1DD4EC4E4(v102 + 16, v104, v102);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v117 = sub_1DD4EC2B8(v117);
    goto LABEL_103;
  }

  v105 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v107 = v16;
    if (v16 + 1 < v15)
    {
      v117 = v17;
      v118 = v16 + 1;
      v20 = *v115;
      v21 = *(v113 + 72);
      v17 = *v115 + v21 * v19;
      v22 = v122;
      sub_1DD3C4EB4();
      v23 = v123;
      sub_1DD3C4EB4();
      v24 = *v22;
      v111 = *v23;
      v112 = v24;
      sub_1DD390754(v23, &qword_1ECCDBEE8, &qword_1DD6441F0);
      sub_1DD390754(v22, &qword_1ECCDBEE8, &qword_1DD6441F0);
      v25 = v18 + 2;
      v114 = v21;
      v26 = v20 + v21 * (v18 + 2);
      while (1)
      {
        v27 = v25;
        if (++v118 >= v15)
        {
          break;
        }

        LODWORD(v119) = v112 < v111;
        v28 = v122;
        sub_1DD3C4EB4();
        v29 = v15;
        v30 = v123;
        sub_1DD3C4EB4();
        v4 = *v28;
        v31 = *v30;
        v32 = v30;
        v15 = v29;
        sub_1DD390754(v32, &qword_1ECCDBEE8, &qword_1DD6441F0);
        sub_1DD390754(v28, &qword_1ECCDBEE8, &qword_1DD6441F0);
        v26 += v114;
        v17 += v114;
        v25 = v27 + 1;
        if (((v119 ^ (v4 >= v31)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v118 = v15;
LABEL_9:
      if (v112 >= v111)
      {
        v17 = v117;
        v19 = v118;
        v18 = v107;
      }

      else
      {
        v19 = v118;
        if (v118 < v107)
        {
          goto LABEL_132;
        }

        if (v107 >= v118)
        {
          v17 = v117;
          v18 = v107;
        }

        else
        {
          if (v15 >= v27)
          {
            v33 = v27;
          }

          else
          {
            v33 = v15;
          }

          v34 = v114 * (v33 - 1);
          v35 = v114 * v33;
          v4 = v107 * v114;
          v36 = v107;
          v18 = v107;
          do
          {
            if (v36 != --v19)
            {
              v37 = *v115;
              if (!*v115)
              {
                goto LABEL_139;
              }

              sub_1DD447808();
              v38 = v4 < v34 || v37 + v4 >= v37 + v35;
              if (v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1DD447808();
              v18 = v107;
            }

            ++v36;
            v34 -= v114;
            v35 -= v114;
            v4 += v114;
          }

          while (v36 < v19);
          v17 = v117;
          v19 = v118;
        }
      }
    }

    v39 = v115[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_131;
      }

      if (v19 - v18 < v105)
      {
        break;
      }
    }

LABEL_47:
    if (v19 < v18)
    {
      goto LABEL_130;
    }

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v19;
    if ((v50 & 1) == 0)
    {
      v94 = *(v17 + 16);
      sub_1DD3BEB7C();
      v17 = v95;
    }

    v51 = *(v17 + 16);
    v52 = v51 + 1;
    if (v51 >= *(v17 + 24) >> 1)
    {
      sub_1DD3BEB7C();
      v17 = v96;
    }

    *(v17 + 16) = v52;
    v53 = v17 + 32;
    v54 = (v17 + 32 + 16 * v51);
    v55 = v118;
    *v54 = v18;
    v54[1] = v55;
    v119 = *v106;
    if (!v119)
    {
      goto LABEL_140;
    }

    if (v51)
    {
      v117 = v17;
      while (1)
      {
        v56 = v52 - 1;
        v57 = (v53 + 16 * (v52 - 1));
        v58 = (v17 + 16 * v52);
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v59 = *(v17 + 32);
          v60 = *(v17 + 40);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_68:
          if (v62)
          {
            goto LABEL_117;
          }

          v74 = *v58;
          v73 = v58[1];
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_120;
          }

          v78 = v57[1];
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_125;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v52 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v52 < 2)
        {
          goto LABEL_119;
        }

        v81 = *v58;
        v80 = v58[1];
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_83:
        if (v77)
        {
          goto LABEL_122;
        }

        v83 = *v57;
        v82 = v57[1];
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_124;
        }

        if (v84 < v76)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v56 - 1 >= v52)
        {
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

        if (!*v115)
        {
          goto LABEL_137;
        }

        v88 = (v53 + 16 * (v56 - 1));
        v89 = *v88;
        v90 = v53;
        v91 = v56;
        v17 = v53 + 16 * v56;
        v4 = *(v17 + 8);
        v92 = v116;
        sub_1DD447064(*v115 + *(v113 + 72) * *v88, *v115 + *(v113 + 72) * *v17, *v115 + *(v113 + 72) * v4, v119);
        v116 = v92;
        if (v92)
        {
          goto LABEL_99;
        }

        if (v4 < v89)
        {
          goto LABEL_112;
        }

        v93 = *(v117 + 2);
        if (v91 > v93)
        {
          goto LABEL_113;
        }

        *v88 = v89;
        v88[1] = v4;
        if (v91 >= v93)
        {
          goto LABEL_114;
        }

        v52 = v93 - 1;
        sub_1DD4EC4E4((v17 + 16), v93 - 1 - v91, v17);
        v17 = v117;
        *(v117 + 2) = v93 - 1;
        v53 = v90;
        if (v93 <= 2)
        {
          goto LABEL_97;
        }
      }

      v63 = v53 + 16 * v52;
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_115;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_116;
      }

      v70 = v58[1];
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_118;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_121;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = v57[1];
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_129;
        }

        if (v61 < v87)
        {
          v56 = v52 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v15 = v115[1];
    v16 = v118;
    if (v118 >= v15)
    {
      goto LABEL_101;
    }
  }

  v40 = v18 + v105;
  if (__OFADD__(v18, v105))
  {
    goto LABEL_133;
  }

  if (v40 >= v39)
  {
    v40 = v115[1];
  }

  if (v40 < v18)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v19 == v40)
  {
    goto LABEL_47;
  }

  v117 = v17;
  v41 = *(v113 + 72);
  v42 = *v115 + v41 * (v19 - 1);
  v4 = -v41;
  v43 = v18 - v19;
  v119 = *v115;
  v108 = v41;
  v109 = v40;
  v44 = v119 + v19 * v41;
LABEL_40:
  v118 = v19;
  v111 = v44;
  v112 = v43;
  v114 = v42;
  v45 = v42;
  while (1)
  {
    v46 = v122;
    sub_1DD3C4EB4();
    v47 = v123;
    sub_1DD3C4EB4();
    v48 = *v46;
    v49 = *v47;
    sub_1DD390754(v47, &qword_1ECCDBEE8, &qword_1DD6441F0);
    sub_1DD390754(v46, &qword_1ECCDBEE8, &qword_1DD6441F0);
    if (v48 >= v49)
    {
LABEL_45:
      v19 = v118 + 1;
      v42 = v114 + v108;
      v43 = v112 - 1;
      v44 = v111 + v108;
      if (v118 + 1 == v109)
      {
        v19 = v109;
        v17 = v117;
        v18 = v107;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v119)
    {
      break;
    }

    sub_1DD447808();
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD447808();
    v45 += v4;
    v44 += v4;
    v38 = __CFADD__(v43++, 1);
    if (v38)
    {
      goto LABEL_45;
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
}

void sub_1DD447064(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  v8 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v55 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v56 = (&v47 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v60 = a1;
  v59 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1DD3C1E0C(a2, v16 / v13, a4);
    v32 = a4 + v19 * v13;
    v33 = -v13;
    v34 = v32;
    v50 = -v13;
    v51 = a4;
    v57 = a1;
LABEL_36:
    v48 = v34;
    v52 = a2 + v33;
    while (1)
    {
      if (v32 <= a4)
      {
        v60 = a2;
        v58 = v34;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v49 = v34;
      v35 = a2;
      v36 = a3 + v33;
      v37 = v32 + v33;
      v38 = v56;
      v39 = v32;
      sub_1DD3C4EB4();
      v40 = v55;
      sub_1DD3C4EB4();
      v53 = *v38;
      v41 = v40;
      v42 = *v40;
      sub_1DD390754(v41, &qword_1ECCDBEE8, &qword_1DD6441F0);
      sub_1DD390754(v38, &qword_1ECCDBEE8, &qword_1DD6441F0);
      if (v53 < v42)
      {
        if (a3 < v35 || v36 >= v35)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v49;
          v33 = v50;
          a4 = v51;
          a3 = v36;
          a1 = v57;
          v32 = v39;
        }

        else
        {
          v33 = v50;
          v34 = v49;
          v15 = a3 == v35;
          a4 = v51;
          v45 = v52;
          a2 = v52;
          a3 = v36;
          a1 = v57;
          v32 = v39;
          if (!v15)
          {
            v46 = v49;
            swift_arrayInitWithTakeBackToFront();
            v32 = v39;
            a2 = v45;
            v34 = v46;
          }
        }

        goto LABEL_36;
      }

      v43 = a3 < v39 || v36 >= v39;
      a2 = v35;
      if (v43)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v33;
        v32 = v37;
        v34 = v37;
        v33 = v50;
        a4 = v51;
        a1 = v57;
      }

      else
      {
        v34 = v37;
        v15 = v39 == a3;
        a3 += v33;
        v32 = v37;
        v33 = v50;
        a4 = v51;
        a1 = v57;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v36;
          v32 = v37;
          v34 = v37;
        }
      }
    }

    v60 = a2;
    v58 = v48;
  }

  else
  {
    sub_1DD3C1E0C(a1, v14 / v13, a4);
    v52 = a3;
    v53 = a4 + v18 * v13;
    v58 = v53;
    v20 = a1;
    while (a4 < v53 && a2 < a3)
    {
      v57 = v20;
      v22 = v13;
      v23 = a2;
      v24 = v56;
      sub_1DD3C4EB4();
      v25 = a4;
      v26 = v55;
      sub_1DD3C4EB4();
      v27 = *v24;
      v28 = *v26;
      sub_1DD390754(v26, &qword_1ECCDBEE8, &qword_1DD6441F0);
      sub_1DD390754(v24, &qword_1ECCDBEE8, &qword_1DD6441F0);
      if (v27 >= v28)
      {
        v13 = v22;
        a4 = v25 + v22;
        v29 = v57;
        if (v57 < v25 || v57 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
        }

        else
        {
          a2 = v23;
          if (v57 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v59 = v25 + v22;
      }

      else
      {
        v13 = v22;
        a2 = v23 + v22;
        v29 = v57;
        v30 = v57 < v23 || v57 >= a2;
        a4 = v25;
        if (v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v57 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v20 = v29 + v13;
      v60 = v20;
      a3 = v52;
    }
  }

LABEL_58:
  sub_1DD4EC310(&v60, &v59, &v58);
}

uint64_t sub_1DD447520()
{
  v1 = type metadata accessor for ContactResolverCache();
  OUTLINED_FUNCTION_51(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_51(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_1DD63D078();
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v0 + 16);
  v14 = v0 + ((v8 + v10 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_1DD444A30(v13, v0 + v3, (v0 + v8), v14);
}

uint64_t sub_1DD447638(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD44769C()
{
  OUTLINED_FUNCTION_18_7();
  v2 = v1(0);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v0;
}

uint64_t sub_1DD4476F4()
{
  OUTLINED_FUNCTION_18_7();
  v2 = v1(0);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v0;
}

uint64_t sub_1DD44774C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DD4477A4()
{
  result = qword_1EE166498[0];
  if (!qword_1EE166498[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFD20, &qword_1DD648290);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE166498);
  }

  return result;
}

uint64_t sub_1DD447808()
{
  OUTLINED_FUNCTION_18_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_15_0();
  v7(v6);
  return v0;
}

void sub_1DD4479A8()
{
  sub_1DD447E30(319, &qword_1EE1604E8, &qword_1ECCDC258, &qword_1DD645B18);
  if (v0 <= 0x3F)
  {
    sub_1DD447E30(319, &qword_1EE1604F8, &qword_1ECCDC260, &unk_1DD645B20);
    if (v1 <= 0x3F)
    {
      sub_1DD63F308();
      if (v2 <= 0x3F)
      {
        sub_1DD3E7F48(319, &qword_1EE163290);
        if (v3 <= 0x3F)
        {
          sub_1DD3E7F48(319, qword_1EE162408);
          if (v4 <= 0x3F)
          {
            sub_1DD447DDC(319, &qword_1EE160138, &qword_1EE163870, 0x1E695CD58);
            if (v5 <= 0x3F)
            {
              sub_1DD39638C(319, &qword_1EE1601C0, 0x1E6997E98);
              if (v6 <= 0x3F)
              {
                sub_1DD447D34();
                if (v7 <= 0x3F)
                {
                  sub_1DD447D8C(319, qword_1EE161DD0, type metadata accessor for MLContactRecommender);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for StringTokenizer();
                    if (v9 <= 0x3F)
                    {
                      sub_1DD3EBBE4(319, &qword_1EE162E40);
                      if (v10 <= 0x3F)
                      {
                        sub_1DD3EBBE4(319, &qword_1EE1632E8);
                        if (v11 <= 0x3F)
                        {
                          sub_1DD63D168();
                          if (v12 <= 0x3F)
                          {
                            sub_1DD447D8C(319, qword_1EE1630D8, type metadata accessor for TrialManager);
                            if (v13 <= 0x3F)
                            {
                              sub_1DD447D8C(319, qword_1EE162288, type metadata accessor for EuclidEmbeddingApi);
                              if (v14 <= 0x3F)
                              {
                                sub_1DD447D8C(319, qword_1EE162F00, type metadata accessor for EuclidVectorDb);
                                if (v15 <= 0x3F)
                                {
                                  sub_1DD447DDC(319, &qword_1EE160200, &qword_1EE160208, 0x1E695E000);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1DD447E30(319, &qword_1EE162E38, &qword_1ECCDCCC8, &unk_1DD64AF38);
                                    if (v17 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_1DD447D34()
{
  if (!qword_1EE160258)
  {
    v0 = sub_1DD6402B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE160258);
    }
  }
}

void sub_1DD447D8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_6_9();
    v4 = sub_1DD6405F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DD447DDC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1DD39638C(255, a3, a4);
    OUTLINED_FUNCTION_6_9();
    v5 = sub_1DD6405F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DD447E30(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_6_9();
    v5 = sub_1DD6405F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1DD447E80@<X0>(void *a1@<X8>)
{
  v64 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v51 - v5;
  OUTLINED_FUNCTION_6_2();
  v62 = sub_1DD63F308();
  v6 = OUTLINED_FUNCTION_0(v62);
  v61 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v59 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v51 - v13;
  OUTLINED_FUNCTION_6_2();
  v58 = sub_1DD63F9C8();
  v14 = OUTLINED_FUNCTION_0(v58);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v22 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v23 = swift_allocObject();
  v65 = xmmword_1DD643F90;
  *(v23 + 16) = xmmword_1DD643F90;
  v24 = sub_1DD6408F8();
  v26 = v25;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1DD392BD8();
  *(v23 + 64) = v27;
  v53 = v27;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_16_13();
  sub_1DD63F998();

  v55 = sub_1DD39638C(0, &qword_1EE1638B8, 0x1E695CE18);
  v57 = sub_1DD40105C();
  sub_1DD6404C8();
  OUTLINED_FUNCTION_16_13();
  sub_1DD63F9A8();
  v52 = *(v16 + 8);
  v28 = v58;
  v52(v21, v58);
  v29 = v22;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v30 = swift_allocObject();
  *(v30 + 16) = v65;
  v31 = sub_1DD6408F8();
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = v27;
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_16_13();
  sub_1DD63F998();

  v56 = sub_1DD4010CC();
  sub_1DD6404C8();
  OUTLINED_FUNCTION_16_13();
  sub_1DD63F9A8();
  v33 = v52;
  v52(v21, v28);
  v34 = v29;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v35 = swift_allocObject();
  *(v35 + 16) = v65;
  v36 = sub_1DD6408F8();
  v37 = v53;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = v37;
  *(v35 + 32) = v36;
  *(v35 + 40) = v38;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_13_14();
  sub_1DD63F998();

  v39 = [objc_opt_self() makeSearcher];
  sub_1DD6404C8();
  OUTLINED_FUNCTION_13_14();
  sub_1DD63F9A8();
  v33(v21, v28);
  v40 = v60;
  sub_1DD63F2D8();
  v41 = type metadata accessor for ExperimentationTriggerLogger();
  v42 = swift_allocObject();
  v43 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v44 = sub_1DD3B7FC0(0xD000000000000018, 0x80000001DD66B0F0);
  v73 = v55;
  v74 = &off_1F58B1EB8;
  v71 = &off_1F58B1EB8;
  *&v72 = v57;
  v70 = v55;
  *&v69 = v56;
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  v45 = v61;
  v46 = v59;
  v47 = v62;
  (*(v61 + 16))(v59, v40, v62);
  v48 = sub_1DD63D168();
  v49 = v63;
  __swift_storeEnumTagSinglePayload(v63, 1, 1, v48);
  memset(v75, 0, 57);
  v66[4] = &off_1F58C3DB8;
  v66[3] = v41;
  v66[0] = v42;
  sub_1DD449C00(&v72, &v69, v39, v67, v46, v49, v44, 2, v64, v75, 2, 0, 2uLL, 0.0, 2u, v66, 1u);
  return (*(v45 + 8))(v40, v47);
}

uint64_t sub_1DD448524()
{
  v1 = sub_1DD63FB78();
  v2 = OUTLINED_FUNCTION_0(v1);
  v126 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_6_2();
  v129 = sub_1DD63FBD8();
  v9 = OUTLINED_FUNCTION_0(v129);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_6_2();
  v130 = sub_1DD63D168();
  v17 = OUTLINED_FUNCTION_0(v130);
  v128 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v119 = v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v101 - v23;
  sub_1DD449160();
  v25 = dispatch_group_create();
  v131 = v24;
  sub_1DD44C624(v24);
  OUTLINED_FUNCTION_57();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v109 = v26 + 16;
  OUTLINED_FUNCTION_57();
  v27 = swift_allocObject();
  v127 = v27;
  *(v27 + 16) = MEMORY[0x1E69E7CD0];
  v110 = v27 + 16;
  v28 = type metadata accessor for StringTokenizer();
  v122 = swift_allocBox();
  *v29 = 0;
  v30 = *(v28 + 20);
  v112 = v29;
  sub_1DD63D158();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v111 = v31 + 16;
  v121 = v31;
  *(v31 + 24) = 0;
  OUTLINED_FUNCTION_57();
  v32 = swift_allocObject();
  v123 = v32;
  *(v32 + 16) = 0;
  v113 = v32 + 16;
  v125 = type metadata accessor for ContactResolverCache();
  v33 = v125[8];
  v124 = v0;
  sub_1DD3C2388(v0 + v33, &v139);
  dispatch_group_enter(v25);
  if (qword_1EE165278 != -1)
  {
    swift_once();
  }

  v34 = qword_1EE16F008;
  sub_1DD3C2388(&v139, &v138);
  OUTLINED_FUNCTION_23_5();
  v35 = swift_allocObject();
  *(v35 + 16) = v26;
  sub_1DD3AA4A8(&v138, v35 + 24);
  *(v35 + 64) = v25;
  v137[0] = sub_1DD45002C;
  v137[1] = v35;
  aBlock = MEMORY[0x1E69E9820];
  v134 = 1107296256;
  v120 = &v135;
  v135 = sub_1DD3CBCD0;
  v136 = &block_descriptor_96;
  v36 = _Block_copy(&aBlock);
  v37 = v34;
  v114 = v26;

  v38 = v25;
  v39 = v16;
  sub_1DD63FBA8();
  v132 = MEMORY[0x1E69E7CC0];
  v118 = sub_1DD45003C(&qword_1EE163978, MEMORY[0x1E69E7F60]);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  v116 = sub_1DD44FA38();
  v40 = v1;
  sub_1DD640718();
  v41 = OUTLINED_FUNCTION_32_7();
  MEMORY[0x1E12B27A0](v41);
  _Block_release(v36);

  v42 = v126 + 8;
  v115 = *(v126 + 1);
  v115(v8, v40);
  v43 = *(v11 + 8);
  v43(v39, v129);

  dispatch_group_enter(v38);
  v126 = qword_1EE16F008;
  sub_1DD3C2388(&v139, &v138);
  OUTLINED_FUNCTION_23_5();
  v44 = swift_allocObject();
  *(v44 + 16) = v127;
  sub_1DD3AA4A8(&v138, v44 + 24);
  *(v44 + 64) = v38;
  OUTLINED_FUNCTION_6_20();
  v135 = sub_1DD3CBCD0;
  v136 = &block_descriptor_102;
  v45 = _Block_copy(&aBlock);
  v120 = v38;
  v46 = v126;

  sub_1DD63FBA8();
  v132 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_26_10();
  sub_1DD640718();
  v47 = OUTLINED_FUNCTION_32_7();
  MEMORY[0x1E12B27A0](v47);
  _Block_release(v45);

  v115(v8, v40);
  v105 = v39;
  v103 = v43;
  v43(v39, v129);

  v48 = v128;
  v49 = *(v128 + 16);
  v106 = v125[18];
  v50 = v119;
  v51 = v130;
  v49(v119, v124 + v106, v130);
  OUTLINED_FUNCTION_0_40();
  sub_1DD45003C(v52, v53);
  LOBYTE(v44) = sub_1DD63FD98();
  v54 = *(v48 + 8);
  v108 = v48 + 8;
  v107 = v54;
  v54(v50, v51);
  v55 = (v11 + 8);
  v56 = v120;
  if ((v44 & 1) == 0)
  {
    v57 = v128;
    v102 = v40;
    v58 = v130;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v101[1] = v55;
    v126 = v42;
    v59 = sub_1DD63F9F8();
    __swift_project_value_buffer(v59, qword_1EE16F068);
    v60 = sub_1DD63F9D8();
    v61 = sub_1DD640368();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1DD38D000, v60, v61, "Siri locale has changed; refreshing Morphun analyzers", v62, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    v63 = v120;
    dispatch_group_enter(v120);
    v101[0] = qword_1EE16F008;
    v64 = v119;
    v49(v119, v131, v58);
    v65 = (*(v57 + 80) + 40) & ~*(v57 + 80);
    v66 = (v104 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    v68 = v57;
    v69 = v121;
    *(v67 + 2) = v122;
    *(v67 + 3) = v69;
    *(v67 + 4) = v123;
    v70 = v64;
    v56 = v63;
    (*(v68 + 32))(&v67[v65], v70, v58);
    *&v67[v66] = v63;
    OUTLINED_FUNCTION_6_20();
    v135 = sub_1DD3CBCD0;
    v136 = &block_descriptor_108;
    v71 = _Block_copy(&aBlock);
    v72 = v63;
    v73 = v101[0];

    v74 = v105;
    sub_1DD63FBA8();
    *&v138 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_26_10();
    v75 = v102;
    sub_1DD640718();
    MEMORY[0x1E12B27A0](0, v74, v8, v71);
    _Block_release(v71);

    v115(v8, v75);
    v103(v74, v129);
  }

  sub_1DD640418();
  OUTLINED_FUNCTION_12_17(&aBlock);
  isa = v56->isa;
  v77 = v125;
  v78 = v125[11];
  v79 = v124;
  v80 = *(v124 + v78);
  v81 = v56->isa;

  *(v79 + v78) = isa;
  OUTLINED_FUNCTION_12_17(&v134);
  v82 = *isa;
  v83 = v77[13];
  v84 = *(v79 + v83);

  *(v79 + v83) = v82;
  swift_beginAccess();
  sub_1DD4501D4(v79 + v77[15], type metadata accessor for StringTokenizer);
  sub_1DD44FF80();
  swift_beginAccess();
  v85 = *(v121 + 16);
  v86 = *(v121 + 24);
  v87 = (v79 + v77[16]);
  v88 = *v87;
  v89 = v87[1];
  sub_1DD3FA59C(v85);
  sub_1DD44FF30(v88);
  *v87 = v85;
  v87[1] = v86;
  OUTLINED_FUNCTION_12_17(v137);
  v90 = *v85;
  v91 = v77[17];
  v92 = *(v79 + v91);

  *(v79 + v91) = v90;
  (*(v128 + 24))(v79 + v106, v131, v130);
  if (*(v79 + v77[27]) != 1 || (v93 = v77[21], *(v79 + v93)) || (v94 = v77[22], *(v79 + v94)))
  {

    __swift_destroy_boxed_opaque_existential_1(&v139);
    v95 = OUTLINED_FUNCTION_15_15();
    v96(v95);
  }

  else
  {
    type metadata accessor for EuclidEmbeddingApi();
    OUTLINED_FUNCTION_57();
    swift_allocObject();
    *(v79 + v93) = sub_1DD4BA174();
    type metadata accessor for EuclidVectorDb();
    swift_allocObject();
    v98 = sub_1DD4B97D4();

    __swift_destroy_boxed_opaque_existential_1(&v139);
    v99 = OUTLINED_FUNCTION_15_15();
    v100(v99);

    *(v79 + v94) = v98;
  }

  return result;
}