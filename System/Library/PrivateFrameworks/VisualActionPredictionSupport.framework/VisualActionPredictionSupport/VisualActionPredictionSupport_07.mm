uint64_t sub_1D9ED5E3C(uint64_t a1, uint64_t a2)
{
  sub_1D9F2BAFC();
  Limit.hash(into:)(v4, a2);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9ED5E9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[3];
  v4 = a3[4];
  v5 = a3[5];
  v6 = a3[6];
  return static Limit.== infix(_:_:)(a1, a2, a3[2]);
}

uint64_t sub_1D9ED5EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1D9ED5F0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1D9ED608C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
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
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t PredictedAction.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9F2AD7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PredictedAction.canonicalIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PredictedAction() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for PredictedAction()
{
  result = qword_1EE0F3628;
  if (!qword_1EE0F3628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9ED6494()
{
  v1 = 0x6F546D6574737973;
  v2 = 0x65536C6175736976;
  if (*v0 != 2)
  {
    v2 = 0x69746E456E65706FLL;
  }

  if (*v0)
  {
    v1 = 0x63416D6F74737563;
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

uint64_t sub_1D9ED6524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EDBBB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9ED654C(uint64_t a1)
{
  v2 = sub_1D9EDA470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED6588(uint64_t a1)
{
  v2 = sub_1D9EDA470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ED65C4(uint64_t a1)
{
  v2 = sub_1D9EDA5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED6600(uint64_t a1)
{
  v2 = sub_1D9EDA5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ED6650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9ED66D4(uint64_t a1)
{
  v2 = sub_1D9EDA4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED6710(uint64_t a1)
{
  v2 = sub_1D9EDA4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9ED674C()
{
  if (*v0)
  {
    result = 0x5074737269467369;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1D9ED6794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D9F48000 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5074737269467369 && a2 == 0xEC00000079747261)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9F2BA1C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D9ED6880(uint64_t a1)
{
  v2 = sub_1D9EDA614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED68BC(uint64_t a1)
{
  v2 = sub_1D9EDA614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ED6914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D9F48000 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D9ED69A8(uint64_t a1)
{
  v2 = sub_1D9EDA56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED69E4(uint64_t a1)
{
  v2 = sub_1D9EDA56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedAction.Source.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75090, &qword_1D9F3EEB0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75098, &qword_1D9F3EEB8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750A0, &qword_1D9F3EEC0);
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750A8, &qword_1D9F3EEC8);
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750B0, &qword_1D9F3EED0);
  v52 = *(v18 - 8);
  v53 = v18;
  v19 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - v20;
  v22 = v1[1];
  v50 = *v1;
  v51 = v22;
  v23 = v1[3];
  v49 = v1[2];
  v39 = v23;
  v24 = v1[5];
  v38 = v1[4];
  v37 = v24;
  v25 = *(v1 + 48);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDA470();
  sub_1D9F2BB8C();
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      LOBYTE(v54) = 2;
      sub_1D9EDA56C();
      v27 = v53;
      sub_1D9F2B8FC();
      v30 = v45;
      sub_1D9F2B95C();
      v31 = *(v44 + 8);
      v32 = v9;
    }

    else
    {
      LOBYTE(v54) = 3;
      sub_1D9EDA4C4();
      v36 = v46;
      v27 = v53;
      sub_1D9F2B8FC();
      v54 = v50;
      v55 = v51;
      v56 = v49;
      v57 = v39;
      v58 = v38;
      v59 = v37;
      sub_1D9EDA518();
      v30 = v48;
      sub_1D9F2B9AC();
      v31 = *(v47 + 8);
      v32 = v36;
    }

    v31(v32, v30);
  }

  else
  {
    if (v25)
    {
      LOBYTE(v54) = 1;
      sub_1D9EDA5C0();
      v33 = v53;
      sub_1D9F2B8FC();
      v54 = v50;
      v55 = v51;
      LOBYTE(v56) = v49;
      sub_1D9E5A8BC();
      v34 = v43;
      sub_1D9F2B9AC();
      (*(v42 + 8))(v13, v34);
      return (*(v52 + 8))(v21, v33);
    }

    LOBYTE(v54) = 0;
    sub_1D9EDA614();
    v27 = v53;
    sub_1D9F2B8FC();
    LOBYTE(v54) = 0;
    v28 = v41;
    v29 = v60;
    sub_1D9F2B95C();
    if (!v29)
    {
      LOBYTE(v54) = 1;
      sub_1D9F2B96C();
      (*(v40 + 8))(v17, v28);
      return (*(v52 + 8))(v21, v27);
    }

    (*(v40 + 8))(v17, v28);
  }

  return (*(v52 + 8))(v21, v27);
}

uint64_t PredictedAction.Source.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (*(v0 + 48) > 1u)
  {
    if (*(v0 + 48) == 2)
    {
      MEMORY[0x1DA7438F0](2);
    }

    else
    {
      v6 = v0[4];
      v5 = v0[5];
      v7 = v0[3];
      MEMORY[0x1DA7438F0](3);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
    }

    return sub_1D9F2B18C();
  }

  else if (*(v0 + 48))
  {
    MEMORY[0x1DA7438F0](1);
    return CustomActionIdentity.hash(into:)();
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
    return sub_1D9F2BB1C();
  }
}

uint64_t PredictedAction.Source.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_1D9F2BAFC();
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      MEMORY[0x1DA7438F0](2);
    }

    else
    {
      MEMORY[0x1DA7438F0](3);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
    }

    sub_1D9F2B18C();
  }

  else if (v7)
  {
    MEMORY[0x1DA7438F0](1);
    CustomActionIdentity.hash(into:)();
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
    sub_1D9F2BB1C();
  }

  return sub_1D9F2BB4C();
}

uint64_t PredictedAction.Source.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750D8, &qword_1D9F3EED8);
  v67 = *(v70 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v58[-v4];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750E0, &qword_1D9F3EEE0);
  v66 = *(v62 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v68 = &v58[-v6];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750E8, &qword_1D9F3EEE8);
  v63 = *(v65 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v9 = &v58[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750F0, &qword_1D9F3EEF0);
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750F8, &unk_1D9F3EEF8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58[-v17];
  v19 = a1[3];
  v20 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D9EDA470();
  v21 = v72;
  sub_1D9F2BB7C();
  if (!v21)
  {
    v22 = v13;
    v60 = v10;
    v23 = v68;
    v61 = 0;
    v24 = v69;
    v25 = v70;
    v72 = v15;
    v26 = v71;
    v27 = sub_1D9F2B8DC();
    v28 = (2 * *(v27 + 16)) | 1;
    v79 = v27;
    v80 = v27 + 32;
    v81 = 0;
    v82 = v28;
    v29 = sub_1D9E46188();
    if (v29 == 4 || v81 != v82 >> 1)
    {
      v35 = v18;
      v36 = sub_1D9F2B6BC();
      swift_allocError();
      v38 = v37;
      v39 = v14;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
      *v38 = &type metadata for PredictedAction.Source;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v72 + 8))(v35, v39);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v83);
    }

    v59 = v29;
    if (v29 <= 1u)
    {
      if (v29)
      {
        LOBYTE(v73) = 1;
        sub_1D9EDA5C0();
        v45 = v61;
        sub_1D9F2B7DC();
        v31 = v72;
        if (!v45)
        {
          sub_1D9E5AB24();
          v46 = v65;
          sub_1D9F2B89C();
          (*(v63 + 8))(v9, v46);
          (*(v31 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v57 = v73;
          v50 = v74;
          v56 = v75;
          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v73) = 0;
        sub_1D9EDA614();
        v30 = v61;
        sub_1D9F2B7DC();
        v31 = v72;
        if (!v30)
        {
          v32 = v18;
          LOBYTE(v73) = 0;
          v33 = v60;
          v34 = sub_1D9F2B84C();
          v50 = v49;
          v70 = v34;
          LOBYTE(v73) = 1;
          v69 = sub_1D9F2B85C();
          (*(v64 + 8))(v22, v33);
          (*(v31 + 8))(v32, v14);
          swift_unknownObjectRelease();
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = v69 & 1;
          v57 = v70;
LABEL_21:
          *v26 = v57;
          *(v26 + 8) = v50;
          *(v26 + 16) = v56;
          *(v26 + 24) = v53;
          *(v26 + 32) = v54;
          *(v26 + 40) = v55;
          *(v26 + 48) = v59;
          return __swift_destroy_boxed_opaque_existential_1(v83);
        }
      }

      (*(v31 + 8))(v18, v14);
      goto LABEL_9;
    }

    if (v29 == 2)
    {
      LOBYTE(v73) = 2;
      sub_1D9EDA56C();
      v42 = v61;
      sub_1D9F2B7DC();
      if (!v42)
      {
        v43 = v62;
        v44 = sub_1D9F2B84C();
        v50 = v51;
        v52 = v44;
        (*(v66 + 8))(v23, v43);
        (*(v72 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v57 = v52;
        v56 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        goto LABEL_21;
      }

      (*(v72 + 8))(v18, v14);
      goto LABEL_9;
    }

    LOBYTE(v73) = 3;
    sub_1D9EDA4C4();
    v47 = v61;
    sub_1D9F2B7DC();
    if (!v47)
    {
      sub_1D9EDA668();
      sub_1D9F2B89C();
      v48 = v72;
      (*(v67 + 8))(v24, v25);
      (*(v48 + 8))(v18, v14);
      swift_unknownObjectRelease();
      v57 = v73;
      v50 = v74;
      v56 = v75;
      v53 = v76;
      v54 = v77;
      v55 = v78;
      goto LABEL_21;
    }

    (*(v72 + 8))(v18, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t sub_1D9ED7B7C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_1D9F2BAFC();
  PredictedAction.Source.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9ED7BDC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_1D9F2BAFC();
  PredictedAction.Source.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t PredictedAction.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PredictedAction() + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(v3 + 48);
  *(a1 + 48) = v10;

  return sub_1D9E51CA8(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t PredictedAction.localizedTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for PredictedAction() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PredictedAction.glyphName.getter()
{
  v1 = (v0 + *(type metadata accessor for PredictedAction() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PredictedAction.glyphName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PredictedAction() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1D9ED7DC0()
{
  if (*v0)
  {
    result = 1751607656;
  }

  else
  {
    result = 0x6C616D726F6ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1D9ED7DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9ED7EC8(uint64_t a1)
{
  v2 = sub_1D9EDA6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED7F04(uint64_t a1)
{
  v2 = sub_1D9EDA6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ED7F40(uint64_t a1)
{
  v2 = sub_1D9EDA710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED7F7C(uint64_t a1)
{
  v2 = sub_1D9EDA710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ED7FB8(uint64_t a1)
{
  v2 = sub_1D9EDA764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED7FF4(uint64_t a1)
{
  v2 = sub_1D9EDA764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedAction.ConfidenceLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75108, &qword_1D9F3EF08);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75110, &qword_1D9F3EF10);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75118, &qword_1D9F3EF18);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDA6BC();
  sub_1D9F2BB8C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D9EDA710();
    v18 = v22;
    sub_1D9F2B8FC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D9EDA764();
    sub_1D9F2B8FC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t PredictedAction.ConfidenceLevel.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t PredictedAction.ConfidenceLevel.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75120, &qword_1D9F3EF20);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75128, &qword_1D9F3EF28);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75130, &qword_1D9F3EF30);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDA6BC();
  v16 = v36;
  sub_1D9F2BB7C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D9F2B8DC();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D9E4618C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D9F2B6BC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
      *v26 = &type metadata for PredictedAction.ConfidenceLevel;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D9EDA710();
        sub_1D9F2B7DC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D9EDA764();
        sub_1D9F2B7DC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t PredictedAction.confidenceLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PredictedAction();
  *a1 = *(v1 + *(result + 36));
  return result;
}

VisualActionPredictionSupport::PredictedAction::ReadinessState __swiftcall PredictedAction.ReadinessState.init(prefersStructuredExtraction:requiresStructuredExtraction:requiresPixelBuffer:)(Swift::Bool prefersStructuredExtraction, Swift::Bool requiresStructuredExtraction, Swift::Bool requiresPixelBuffer)
{
  *v3 = prefersStructuredExtraction;
  v3[1] = requiresStructuredExtraction;
  v3[2] = requiresPixelBuffer;
  result.prefersStructuredExtraction = prefersStructuredExtraction;
  return result;
}

unint64_t sub_1D9ED88EC()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

uint64_t sub_1D9ED8944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EDBD30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9ED896C(uint64_t a1)
{
  v2 = sub_1D9EDA7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED89A8(uint64_t a1)
{
  v2 = sub_1D9EDA7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedAction.ReadinessState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75138, &qword_1D9F3EF38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = v1[1];
  v12[3] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDA7B8();
  sub_1D9F2BB8C();
  v15 = 0;
  sub_1D9F2B96C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_1D9F2B96C();
  v13 = 2;
  sub_1D9F2B96C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t PredictedAction.ReadinessState.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB1C();
}

uint64_t PredictedAction.ReadinessState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB4C();
}

uint64_t PredictedAction.ReadinessState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75140, &qword_1D9F3EF40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDA7B8();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_1D9F2B85C();
    v17 = 1;
    v12 = sub_1D9F2B85C();
    v16 = 2;
    v14 = sub_1D9F2B85C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    a2[1] = v12 & 1;
    a2[2] = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9ED8E6C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB1C();
}

uint64_t sub_1D9ED8EB8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB4C();
}

uint64_t PredictedAction.readinessState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PredictedAction();
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

__n128 PredictedAction.init(id:canonicalIdentifier:source:localizedTitle:glyphName:confidenceLevel:readinessState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11)
{
  v16 = *(a4 + 32);
  v17 = *(a4 + 40);
  v18 = *(a4 + 48);
  v31 = a11[1];
  v32 = *a11;
  v29 = *a10;
  v30 = a11[2];
  v19 = type metadata accessor for PredictedAction();
  v20 = (a9 + v19[8]);
  v21 = sub_1D9F2AD7C();
  v27 = *(a4 + 16);
  v28 = *a4;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = (a9 + v19[5]);
  *v22 = a2;
  v22[1] = a3;
  v23 = a9 + v19[6];
  result = v28;
  *v23 = v28;
  *(v23 + 16) = v27;
  *(v23 + 32) = v16;
  *(v23 + 40) = v17;
  *(v23 + 48) = v18;
  v25 = (a9 + v19[7]);
  *v25 = a5;
  v25[1] = a6;
  *v20 = a7;
  v20[1] = a8;
  *(a9 + v19[9]) = v29;
  v26 = (a9 + v19[10]);
  *v26 = v32;
  v26[1] = v31;
  v26[2] = v30;
  return result;
}

__n128 PredictedAction.init(id:canonicalIdentifier:source:localizedTitle:confidenceLevel:readinessState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *(a4 + 32);
  v15 = *(a4 + 40);
  v16 = *(a4 + 48);
  v17 = *a7;
  v29 = a8[1];
  v30 = *a8;
  v28 = a8[2];
  v18 = type metadata accessor for PredictedAction();
  v19 = (a9 + v18[8]);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = sub_1D9F2AD7C();
  v26 = *(a4 + 16);
  v27 = *a4;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = (a9 + v18[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = a9 + v18[6];
  result = v27;
  *v22 = v27;
  *(v22 + 16) = v26;
  *(v22 + 32) = v14;
  *(v22 + 40) = v15;
  *(v22 + 48) = v16;
  v24 = (a9 + v18[7]);
  *v24 = a5;
  v24[1] = a6;
  *(a9 + v18[9]) = v17;
  v25 = (a9 + v18[10]);
  *v25 = v30;
  v25[1] = v29;
  v25[2] = v28;
  return result;
}

uint64_t sub_1D9ED921C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E656469666E6F63;
  if (v1 != 5)
  {
    v3 = 0x73656E6964616572;
  }

  v4 = 0x657A696C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x6D614E6870796C67;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x656372756F73;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9ED9314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EDBE54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9ED933C(uint64_t a1)
{
  v2 = sub_1D9EDAA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED9378(uint64_t a1)
{
  v2 = sub_1D9EDAA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75148, &qword_1D9F3EF48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDAA04();
  sub_1D9F2BB8C();
  LOBYTE(v33) = 0;
  sub_1D9F2AD7C();
  sub_1D9EDAE04(&qword_1EE0F3868, MEMORY[0x1E69695A8]);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v11 = type metadata accessor for PredictedAction();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v33) = 1;
    sub_1D9F2B95C();
    v15 = v3 + v11[6];
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    v20 = *(v15 + 40);
    v21 = *(v15 + 48);
    v33 = *v15;
    v34 = v16;
    v35 = v17;
    v36 = v18;
    v37 = v19;
    v38 = v20;
    v39 = v21;
    HIBYTE(v32) = 2;
    sub_1D9E51CA8(v33, v16, v17, v18, v19, v20, v21);
    sub_1D9EDAA58();
    sub_1D9F2B9AC();
    sub_1D9E51D58(v33, v34, v35, v36, v37, v38, v39);
    v22 = (v3 + v11[7]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v33) = 3;
    sub_1D9F2B95C();
    v25 = (v3 + v11[8]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v33) = 4;
    sub_1D9F2B95C();
    LOBYTE(v33) = *(v3 + v11[9]);
    HIBYTE(v32) = 5;
    sub_1D9EDAAAC();
    sub_1D9F2B9AC();
    v28 = (v3 + v11[10]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v28) = v28[2];
    LOBYTE(v33) = v29;
    BYTE1(v33) = v30;
    BYTE2(v33) = v28;
    HIBYTE(v32) = 6;
    sub_1D9EDAB00();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PredictedAction.hash(into:)()
{
  sub_1D9F2AD7C();
  sub_1D9EDAE04(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
  sub_1D9F2B0EC();
  v1 = type metadata accessor for PredictedAction();
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  sub_1D9F2B18C();
  v5 = (v0 + v1[6]);
  v7 = *v5;
  v6 = v5[1];
  v8 = v5[2];
  if (*(v5 + 48) > 1u)
  {
    if (*(v5 + 48) == 2)
    {
      MEMORY[0x1DA7438F0](2);
    }

    else
    {
      v10 = v5[4];
      v9 = v5[5];
      v11 = v5[3];
      MEMORY[0x1DA7438F0](3);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
    }

    sub_1D9F2B18C();
  }

  else if (*(v5 + 48))
  {
    MEMORY[0x1DA7438F0](1);
    CustomActionIdentity.hash(into:)();
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
    sub_1D9F2BB1C();
  }

  v12 = (v0 + v1[7]);
  v13 = *v12;
  v14 = v12[1];
  sub_1D9F2B18C();
  v15 = (v0 + v1[8]);
  v16 = *v15;
  v17 = v15[1];
  sub_1D9F2B18C();
  MEMORY[0x1DA7438F0](*(v0 + v1[9]));
  v18 = (v0 + v1[10]);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB1C();
}

uint64_t PredictedAction.hashValue.getter()
{
  sub_1D9F2BAFC();
  PredictedAction.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t PredictedAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1D9F2AD7C();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75150, &qword_1D9F3EF50);
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for PredictedAction();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D9EDAA04();
  v40 = v11;
  sub_1D9F2BB7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    v18 = v38;
    LOBYTE(v42) = 0;
    sub_1D9EDAE04(&qword_1EE0F3860, MEMORY[0x1E69695A8]);
    v19 = v39;
    sub_1D9F2B89C();
    (*(v37 + 32))(v15, v7, v4);
    LOBYTE(v42) = 1;
    v20 = sub_1D9F2B84C();
    v21 = &v15[v12[5]];
    *v21 = v20;
    v21[1] = v22;
    v46 = 2;
    sub_1D9EDAB54();
    sub_1D9F2B89C();
    v23 = v45;
    v24 = &v15[v12[6]];
    v25 = v43;
    *v24 = v42;
    *(v24 + 1) = v25;
    *(v24 + 2) = v44;
    v24[48] = v23;
    LOBYTE(v42) = 3;
    v26 = sub_1D9F2B84C();
    v27 = &v15[v12[7]];
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v42) = 4;
    v29 = sub_1D9F2B84C();
    v30 = &v15[v12[8]];
    *v30 = v29;
    v30[1] = v31;
    v46 = 5;
    sub_1D9EDABA8();
    sub_1D9F2B89C();
    v15[v12[9]] = v42;
    v46 = 6;
    sub_1D9EDABFC();
    sub_1D9F2B89C();
    (*(v18 + 8))(v40, v19);
    v32 = BYTE1(v42);
    v33 = BYTE2(v42);
    v34 = &v15[v12[10]];
    *v34 = v42;
    v34[1] = v32;
    v34[2] = v33;
    sub_1D9EDAC50(v15, v36);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_1D9E53398(v15);
  }
}

uint64_t sub_1D9ED9F0C()
{
  sub_1D9F2BAFC();
  PredictedAction.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9ED9F50()
{
  sub_1D9F2BAFC();
  PredictedAction.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport09PredictedB0V6SourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v58[0] = *a1;
  v58[1] = v2;
  v58[2] = v4;
  v58[3] = v5;
  v58[4] = v7;
  v58[5] = v6;
  v59 = v8;
  v60 = v10;
  v61 = v9;
  v62 = v12;
  v63 = v11;
  v64 = v13;
  v65 = v14;
  v66 = v15;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (v15 != 2)
      {
        goto LABEL_25;
      }

      if (v3 != v10 || v2 != v9)
      {
        v37 = v11;
        v47 = v13;
        v51 = v14;
        v40 = sub_1D9F2BA1C();
        sub_1D9E51CA8(v10, v9, v12, v37, v47, v51, 2u);
        sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 2u);
        sub_1D9EDC0B8(v58);
        return v40 & 1;
      }

      sub_1D9E51CA8(v3, v2, v12, v11, v13, v14, 2u);
      v16 = v3;
      v17 = v2;
      v18 = v4;
      v19 = v5;
      v20 = v7;
      v21 = v6;
      v22 = 2;
    }

    else
    {
      if (v15 != 3)
      {
        goto LABEL_25;
      }

      v46 = v13;
      if (v3 != v10 || v2 != v9)
      {
        v44 = v11;
        v25 = v14;
        v26 = sub_1D9F2BA1C();
        v11 = v44;
        v13 = v46;
        v14 = v25;
        if ((v26 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      if (v4 != v12 || v5 != v11)
      {
        v27 = v11;
        v50 = v14;
        v28 = sub_1D9F2BA1C();
        v11 = v27;
        v13 = v46;
        v14 = v50;
        if ((v28 & 1) == 0)
        {
LABEL_31:
          sub_1D9E51CA8(v10, v9, v12, v11, v13, v14, 3u);
          v29 = v3;
          v30 = v2;
          v31 = v4;
          v32 = v5;
          v33 = v7;
          v34 = v6;
          v35 = 3;
          goto LABEL_26;
        }
      }

      if (v7 != v13 || v6 != v14)
      {
        v39 = v11;
        v53 = v14;
        v42 = sub_1D9F2BA1C();
        sub_1D9E51CA8(v10, v9, v12, v39, v46, v53, 3u);
        sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 3u);
        sub_1D9EDC0B8(v58);
        if (v42)
        {
          v24 = 1;
          return v24 & 1;
        }

        goto LABEL_27;
      }

      sub_1D9E51CA8(v10, v9, v12, v11, v7, v6, 3u);
      v16 = v3;
      v17 = v2;
      v18 = v4;
      v19 = v5;
      v20 = v7;
      v21 = v6;
      v22 = 3;
    }

    sub_1D9E51CA8(v16, v17, v18, v19, v20, v21, v22);
    sub_1D9EDC0B8(v58);
    v24 = 1;
    return v24 & 1;
  }

  if (v8)
  {
    if (v15 == 1)
    {
      v56[0] = v3;
      v56[1] = v2;
      v57 = v4;
      v54[0] = v10;
      v54[1] = v9;
      v55 = v12;
      v43 = v11;
      v45 = v13;
      v23 = v13;
      v49 = v14;
      sub_1D9E51CA8(v10, v9, v12, v11, v13, v14, 1u);
      sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 1u);
      sub_1D9E51CA8(v10, v9, v12, v43, v23, v49, 1u);
      sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 1u);
      v24 = _s29VisualActionPredictionSupport06CustomB8IdentityO2eeoiySbAC_ACtFZ_0(v56, v54);
      sub_1D9EDC0B8(v58);
      sub_1D9E51D58(v10, v9, v12, v43, v45, v49, 1u);
      sub_1D9E51D58(v3, v2, v4, v5, v7, v6, 1u);
      return v24 & 1;
    }

    goto LABEL_25;
  }

  if (v15)
  {
LABEL_25:
    sub_1D9E51CA8(v10, v9, v12, v11, v13, v14, v15);
    v29 = v3;
    v30 = v2;
    v31 = v4;
    v32 = v5;
    v33 = v7;
    v34 = v6;
    v35 = v8;
LABEL_26:
    sub_1D9E51CA8(v29, v30, v31, v32, v33, v34, v35);
    sub_1D9EDC0B8(v58);
LABEL_27:
    v24 = 0;
    return v24 & 1;
  }

  if (v3 == v10 && v2 == v9)
  {
    sub_1D9E51CA8(v3, v2, v12, v11, v13, v14, 0);
    sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 0);
    sub_1D9EDC0B8(v58);
LABEL_33:
    v24 = v12 ^ v4 ^ 1;
    return v24 & 1;
  }

  v38 = v11;
  v48 = v13;
  v52 = v14;
  v41 = sub_1D9F2BA1C();
  sub_1D9E51CA8(v10, v9, v12, v38, v48, v52, 0);
  sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 0);
  sub_1D9EDC0B8(v58);
  v24 = 0;
  if (v41)
  {
    goto LABEL_33;
  }

  return v24 & 1;
}

unint64_t sub_1D9EDA470()
{
  result = qword_1EE0F3668;
  if (!qword_1EE0F3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3668);
  }

  return result;
}

unint64_t sub_1D9EDA4C4()
{
  result = qword_1ECB750B8;
  if (!qword_1ECB750B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB750B8);
  }

  return result;
}

unint64_t sub_1D9EDA518()
{
  result = qword_1ECB750C0;
  if (!qword_1ECB750C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB750C0);
  }

  return result;
}

unint64_t sub_1D9EDA56C()
{
  result = qword_1ECB750C8;
  if (!qword_1ECB750C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB750C8);
  }

  return result;
}

unint64_t sub_1D9EDA5C0()
{
  result = qword_1EE0F3680;
  if (!qword_1EE0F3680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3680);
  }

  return result;
}

unint64_t sub_1D9EDA614()
{
  result = qword_1ECB750D0;
  if (!qword_1ECB750D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB750D0);
  }

  return result;
}

unint64_t sub_1D9EDA668()
{
  result = qword_1ECB75100;
  if (!qword_1ECB75100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75100);
  }

  return result;
}

unint64_t sub_1D9EDA6BC()
{
  result = qword_1EE0F36D8;
  if (!qword_1EE0F36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36D8);
  }

  return result;
}

unint64_t sub_1D9EDA710()
{
  result = qword_1EE0F36C0;
  if (!qword_1EE0F36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36C0);
  }

  return result;
}

unint64_t sub_1D9EDA764()
{
  result = qword_1EE0F36A8;
  if (!qword_1EE0F36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36A8);
  }

  return result;
}

unint64_t sub_1D9EDA7B8()
{
  result = qword_1EE0F36F0;
  if (!qword_1EE0F36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36F0);
  }

  return result;
}

uint64_t _s29VisualActionPredictionSupport09PredictedB0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9F2AD3C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = type metadata accessor for PredictedAction();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D9F2BA1C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = a1 + v4[6];
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v14 = *(v10 + 32);
  v15 = *(v10 + 40);
  v16 = *(v10 + 48);
  v43 = *v10;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v17 = a2 + v4[6];
  v18 = *(v17 + 8);
  v19 = *(v17 + 16);
  v20 = *(v17 + 24);
  v21 = *(v17 + 32);
  v22 = *(v17 + 40);
  v23 = *(v17 + 48);
  v36 = *v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = v23;
  sub_1D9E51CA8(v43, v11, v12, v13, v14, v15, v16);
  sub_1D9E51CA8(v36, v18, v19, v20, v21, v22, v23);
  v24 = _s29VisualActionPredictionSupport09PredictedB0V6SourceO2eeoiySbAE_AEtFZ_0(&v43, &v36);
  sub_1D9E51D58(v36, v37, v38, v39, v40, v41, v42);
  sub_1D9E51D58(v43, v44, v45, v46, v47, v48, v49);
  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

  v25 = v4[7];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if ((v26 != *v28 || v27 != v28[1]) && (sub_1D9F2BA1C() & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v29 = v4[8], v30 = *(a1 + v29), v31 = *(a1 + v29 + 8), v32 = (a2 + v29), v30 == *v32) && v31 == v32[1] || (sub_1D9F2BA1C()) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    v35 = v4[10];
    v33 = (*(a1 + v35) ^ *(a2 + v35) | *(a1 + v35 + 1) ^ *(a2 + v35 + 1) | *(a1 + v35 + 2) ^ *(a2 + v35 + 2)) ^ 1;
  }

  else
  {
LABEL_15:
    v33 = 0;
  }

  return v33 & 1;
}

unint64_t sub_1D9EDAA04()
{
  result = qword_1EE0F3708;
  if (!qword_1EE0F3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3708);
  }

  return result;
}

unint64_t sub_1D9EDAA58()
{
  result = qword_1EE0F2278;
  if (!qword_1EE0F2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2278);
  }

  return result;
}

unint64_t sub_1D9EDAAAC()
{
  result = qword_1EE0F2288;
  if (!qword_1EE0F2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2288);
  }

  return result;
}

unint64_t sub_1D9EDAB00()
{
  result = qword_1EE0F2298;
  if (!qword_1EE0F2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2298);
  }

  return result;
}

unint64_t sub_1D9EDAB54()
{
  result = qword_1EE0F2270;
  if (!qword_1EE0F2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2270);
  }

  return result;
}

unint64_t sub_1D9EDABA8()
{
  result = qword_1EE0F2280;
  if (!qword_1EE0F2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2280);
  }

  return result;
}

unint64_t sub_1D9EDABFC()
{
  result = qword_1EE0F2290;
  if (!qword_1EE0F2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2290);
  }

  return result;
}

uint64_t sub_1D9EDAC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9EDACB8()
{
  result = qword_1ECB75158;
  if (!qword_1ECB75158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75158);
  }

  return result;
}

unint64_t sub_1D9EDAD10()
{
  result = qword_1ECB75160;
  if (!qword_1ECB75160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75160);
  }

  return result;
}

unint64_t sub_1D9EDAD68()
{
  result = qword_1ECB75168;
  if (!qword_1ECB75168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75168);
  }

  return result;
}

uint64_t sub_1D9EDAE04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9EDAEBC()
{
  result = sub_1D9F2AD7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D9EDAF84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9EDAFCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PredictedAction.ReadinessState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PredictedAction.ReadinessState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1D9EDB21C()
{
  result = qword_1ECB75178;
  if (!qword_1ECB75178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75178);
  }

  return result;
}

unint64_t sub_1D9EDB274()
{
  result = qword_1ECB75180;
  if (!qword_1ECB75180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75180);
  }

  return result;
}

unint64_t sub_1D9EDB2CC()
{
  result = qword_1ECB75188;
  if (!qword_1ECB75188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75188);
  }

  return result;
}

unint64_t sub_1D9EDB324()
{
  result = qword_1ECB75190;
  if (!qword_1ECB75190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75190);
  }

  return result;
}

unint64_t sub_1D9EDB37C()
{
  result = qword_1ECB75198;
  if (!qword_1ECB75198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75198);
  }

  return result;
}

unint64_t sub_1D9EDB3D4()
{
  result = qword_1ECB751A0;
  if (!qword_1ECB751A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751A0);
  }

  return result;
}

unint64_t sub_1D9EDB42C()
{
  result = qword_1ECB751A8;
  if (!qword_1ECB751A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751A8);
  }

  return result;
}

unint64_t sub_1D9EDB484()
{
  result = qword_1ECB751B0;
  if (!qword_1ECB751B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751B0);
  }

  return result;
}

unint64_t sub_1D9EDB4DC()
{
  result = qword_1EE0F36F8;
  if (!qword_1EE0F36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36F8);
  }

  return result;
}

unint64_t sub_1D9EDB534()
{
  result = qword_1EE0F3700;
  if (!qword_1EE0F3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3700);
  }

  return result;
}

unint64_t sub_1D9EDB58C()
{
  result = qword_1EE0F36E0;
  if (!qword_1EE0F36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36E0);
  }

  return result;
}

unint64_t sub_1D9EDB5E4()
{
  result = qword_1EE0F36E8;
  if (!qword_1EE0F36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36E8);
  }

  return result;
}

unint64_t sub_1D9EDB63C()
{
  result = qword_1EE0F3698;
  if (!qword_1EE0F3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3698);
  }

  return result;
}

unint64_t sub_1D9EDB694()
{
  result = qword_1EE0F36A0;
  if (!qword_1EE0F36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36A0);
  }

  return result;
}

unint64_t sub_1D9EDB6EC()
{
  result = qword_1EE0F36B0;
  if (!qword_1EE0F36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36B0);
  }

  return result;
}

unint64_t sub_1D9EDB744()
{
  result = qword_1EE0F36B8;
  if (!qword_1EE0F36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36B8);
  }

  return result;
}

unint64_t sub_1D9EDB79C()
{
  result = qword_1EE0F36C8;
  if (!qword_1EE0F36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36C8);
  }

  return result;
}

unint64_t sub_1D9EDB7F4()
{
  result = qword_1EE0F36D0;
  if (!qword_1EE0F36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36D0);
  }

  return result;
}

unint64_t sub_1D9EDB84C()
{
  result = qword_1EE0F3638;
  if (!qword_1EE0F3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3638);
  }

  return result;
}

unint64_t sub_1D9EDB8A4()
{
  result = qword_1EE0F3640;
  if (!qword_1EE0F3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3640);
  }

  return result;
}

unint64_t sub_1D9EDB8FC()
{
  result = qword_1EE0F3688;
  if (!qword_1EE0F3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3688);
  }

  return result;
}

unint64_t sub_1D9EDB954()
{
  result = qword_1EE0F3690;
  if (!qword_1EE0F3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3690);
  }

  return result;
}

unint64_t sub_1D9EDB9AC()
{
  result = qword_1EE0F3670;
  if (!qword_1EE0F3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3670);
  }

  return result;
}

unint64_t sub_1D9EDBA04()
{
  result = qword_1EE0F3678;
  if (!qword_1EE0F3678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3678);
  }

  return result;
}

unint64_t sub_1D9EDBA5C()
{
  result = qword_1EE0F3648;
  if (!qword_1EE0F3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3648);
  }

  return result;
}

unint64_t sub_1D9EDBAB4()
{
  result = qword_1EE0F3650;
  if (!qword_1EE0F3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3650);
  }

  return result;
}

unint64_t sub_1D9EDBB0C()
{
  result = qword_1EE0F3658;
  if (!qword_1EE0F3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3658);
  }

  return result;
}

unint64_t sub_1D9EDBB64()
{
  result = qword_1EE0F3660;
  if (!qword_1EE0F3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3660);
  }

  return result;
}

uint64_t sub_1D9EDBBB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F546D6574737973 && a2 == 0xEA00000000006C6FLL;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63416D6F74737563 && a2 == 0xEC0000006E6F6974 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536C6175736976 && a2 == 0xEC00000068637261 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746E456E65706FLL && a2 == 0xEA00000000007974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EDBD30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001D9F49990 == a2;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D9F499B0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9F499D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EDBE54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9F499F0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E6870796C67 && a2 == 0xE900000000000065 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEF6C6576654C6563 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73656E6964616572 && a2 == 0xEE00657461745373)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D9EDC0B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751B8, &qword_1D9F3FE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Feedback.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9F2AD0C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D9EDC1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496E6F69746361 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EDC234(uint64_t a1)
{
  v2 = sub_1D9EDE7AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EDC270(uint64_t a1)
{
  v2 = sub_1D9EDE7AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EDC2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496E6F69746361 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EDC358(uint64_t a1)
{
  v2 = sub_1D9EDE758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EDC394(uint64_t a1)
{
  v2 = sub_1D9EDE758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9EDC3D0()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x65536E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EDC41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65536E6F69746361 && a2 == 0xEE0064657463656CLL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F49A10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EDC508(uint64_t a1)
{
  v2 = sub_1D9EDE704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EDC544(uint64_t a1)
{
  v2 = sub_1D9EDE704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Feedback.Event.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751C0, &qword_1D9F3FE80);
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751C8, &qword_1D9F3FE88);
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = sub_1D9F2AD7C();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Feedback.Event(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751D0, &unk_1D9F3FE90);
  v17 = *(v40 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v20 = &v31 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDE704();
  sub_1D9F2BB8C();
  sub_1D9EDEB00(v39, v16, type metadata accessor for Feedback.Event);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v16;
    v43 = 1;
    sub_1D9EDE758();
    v23 = v36;
    v24 = v40;
    sub_1D9F2B8FC();
    v41 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74458, &qword_1D9F38718);
    sub_1D9EDE848(&qword_1ECB74460, &qword_1EE0F3868);
    v25 = v38;
    sub_1D9F2B9AC();
    (*(v37 + 8))(v23, v25);
    (*(v17 + 8))(v20, v24);
  }

  else
  {
    v28 = v32;
    v27 = v33;
    (*(v32 + 32))(v12, v16, v33);
    v42 = 0;
    sub_1D9EDE7AC();
    v29 = v40;
    sub_1D9F2B8FC();
    sub_1D9EDE800(&qword_1EE0F3868, MEMORY[0x1E69695A8]);
    v30 = v35;
    sub_1D9F2B9AC();
    (*(v34 + 8))(v8, v30);
    (*(v28 + 8))(v12, v27);
    return (*(v17 + 8))(v20, v29);
  }
}

uint64_t Feedback.Event.hash(into:)()
{
  v1 = sub_1D9F2AD7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - v7;
  v9 = type metadata accessor for Feedback.Event(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9EDEB00(v0, v12, type metadata accessor for Feedback.Event);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    MEMORY[0x1DA7438F0](1);
    MEMORY[0x1DA7438F0](*(v13 + 16));
    v14 = *(v13 + 16);
    if (v14)
    {
      v17 = *(v2 + 16);
      v15 = v2 + 16;
      v16 = v17;
      v18 = (*(v15 + 64) + 32) & ~*(v15 + 64);
      v22[1] = v13;
      v19 = v13 + v18;
      v20 = *(v15 + 56);
      do
      {
        v16(v6, v19, v1);
        sub_1D9EDE800(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
        sub_1D9F2B0EC();
        (*(v15 - 8))(v6, v1);
        v19 += v20;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    (*(v2 + 32))(v8, v12, v1);
    MEMORY[0x1DA7438F0](0);
    sub_1D9EDE800(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
    sub_1D9F2B0EC();
    return (*(v2 + 8))(v8, v1);
  }
}

uint64_t Feedback.Event.hashValue.getter()
{
  sub_1D9F2BAFC();
  Feedback.Event.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t Feedback.Event.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751F0, &qword_1D9F3FEA0);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751F8, &qword_1D9F3FEA8);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75200, &unk_1D9F3FEB0);
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for Feedback.Event(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D9EDE704();
  v26 = v55;
  sub_1D9F2BB7C();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v55 = v21;
  v45 = v18;
  v46 = v23;
  v28 = v53;
  v27 = v54;
  v29 = v52;
  v30 = sub_1D9F2B8DC();
  v31 = (2 * *(v30 + 16)) | 1;
  v57 = v30;
  v58 = v30 + 32;
  v59 = 0;
  v60 = v31;
  v32 = sub_1D9E4618C();
  v33 = v13;
  if (v32 == 2 || v59 != v60 >> 1)
  {
    v35 = sub_1D9F2B6BC();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
    *v37 = v14;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v29 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  if (v32)
  {
    LOBYTE(v61) = 1;
    sub_1D9EDE758();
    v34 = v27;
    sub_1D9F2B7DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74458, &qword_1D9F38718);
    sub_1D9EDE848(&qword_1ECB74470, &qword_1EE0F3860);
    v41 = v50;
    sub_1D9F2B89C();
    (*(v51 + 8))(v34, v41);
    (*(v29 + 8))(v33, v10);
    swift_unknownObjectRelease();
    v42 = v45;
    *v45 = v61;
  }

  else
  {
    LOBYTE(v61) = 0;
    sub_1D9EDE7AC();
    sub_1D9F2B7DC();
    sub_1D9F2AD7C();
    sub_1D9EDE800(&qword_1EE0F3860, MEMORY[0x1E69695A8]);
    v42 = v55;
    v40 = v49;
    sub_1D9F2B89C();
    (*(v48 + 8))(v28, v40);
    (*(v29 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

  swift_storeEnumTagMultiPayload();
  v43 = v42;
  v44 = v46;
  sub_1D9EDE8E4(v43, v46);
  sub_1D9EDE8E4(v44, v47);
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_1D9EDD420()
{
  sub_1D9F2BAFC();
  Feedback.Event.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EDD464()
{
  sub_1D9F2BAFC();
  Feedback.Event.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t Feedback.events.getter()
{
  v1 = *(v0 + *(type metadata accessor for Feedback(0) + 20));
}

uint64_t Feedback.executionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Feedback(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t Feedback.workflow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Feedback(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t Feedback.workflow.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Feedback(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t Feedback.init(timestamp:events:workflow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Feedback(0);
  *(a3 + v6[7]) = 3;
  v7 = sub_1D9F2AD0C();
  result = (*(*(v7 - 8) + 32))(a3, a1, v7);
  *(a3 + v6[5]) = a2;
  *(a3 + v6[6]) = 0;
  return result;
}

uint64_t Feedback.init(timestamp:events:executionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for Feedback(0);
  *(a4 + v8[7]) = 3;
  v9 = sub_1D9F2AD0C();
  result = (*(*(v9 - 8) + 32))(a4, a1, v9);
  *(a4 + v8[5]) = a2;
  *(a4 + v8[6]) = v7;
  return result;
}

uint64_t sub_1D9EDD6F0()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x6F69747563657865;
  if (*v0 != 2)
  {
    v2 = 0x776F6C666B726F77;
  }

  if (*v0)
  {
    v1 = 0x73746E657665;
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

uint64_t sub_1D9EDD778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EDF2AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EDD7A0(uint64_t a1)
{
  v2 = sub_1D9EDE968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EDD7DC(uint64_t a1)
{
  v2 = sub_1D9EDE968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Feedback.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75208, &qword_1D9F3FEC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDE968();
  sub_1D9F2BB8C();
  v15 = 0;
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB73510, MEMORY[0x1E6969530]);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v11 = type metadata accessor for Feedback(0);
    v14 = *(v3 + v11[5]);
    v13[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75218, &qword_1D9F3FEC8);
    sub_1D9EDE9BC(&qword_1ECB75220, &qword_1ECB75228);
    sub_1D9F2B9AC();
    v13[14] = *(v3 + v11[6]);
    v13[13] = 2;
    sub_1D9EDEA58();
    sub_1D9F2B9AC();
    v13[12] = *(v3 + v11[7]);
    v13[11] = 3;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Feedback.hash(into:)(uint64_t a1)
{
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB75238, MEMORY[0x1E6969530]);
  sub_1D9F2B0EC();
  v3 = type metadata accessor for Feedback(0);
  sub_1D9E4E7F8(a1, *(v1 + v3[5]));
  MEMORY[0x1DA7438F0](*(v1 + v3[6]));
  return MEMORY[0x1DA7438F0](*(v1 + v3[7]));
}

uint64_t Feedback.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB75238, MEMORY[0x1E6969530]);
  sub_1D9F2B0EC();
  v1 = type metadata accessor for Feedback(0);
  sub_1D9E4E7F8(v3, *(v0 + v1[5]));
  MEMORY[0x1DA7438F0](*(v0 + v1[6]));
  MEMORY[0x1DA7438F0](*(v0 + v1[7]));
  return sub_1D9F2BB4C();
}

uint64_t Feedback.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1D9F2AD0C();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75240, &qword_1D9F3FED0);
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Feedback(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 28);
  v14[v15] = 3;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDE968();
  v30 = v9;
  v17 = v33;
  sub_1D9F2BB7C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v15;
  v33 = a1;
  v18 = v14;
  v19 = v28;
  v40 = 0;
  sub_1D9EDE800(&qword_1ECB73548, MEMORY[0x1E6969530]);
  v21 = v29;
  v20 = v30;
  v22 = v32;
  sub_1D9F2B89C();
  (*(v19 + 32))(v18, v21, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75218, &qword_1D9F3FEC8);
  v39 = 1;
  sub_1D9EDE9BC(&qword_1ECB75248, &qword_1ECB75250);
  sub_1D9F2B89C();
  *(v18 + *(v10 + 20)) = v34;
  v37 = 2;
  sub_1D9EDEAAC();
  sub_1D9F2B89C();
  *(v18 + *(v10 + 24)) = v38;
  v35 = 3;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  (*(v31 + 8))(v20, v22);
  v23 = v27;
  *(v18 + v26) = v36;
  sub_1D9EDEB00(v18, v23, type metadata accessor for Feedback);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1D9EDF484(v18, type metadata accessor for Feedback);
}

uint64_t sub_1D9EDE10C(int *a1)
{
  sub_1D9F2BAFC();
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB75238, MEMORY[0x1E6969530]);
  sub_1D9F2B0EC();
  sub_1D9E4E7F8(v4, *(v1 + a1[5]));
  MEMORY[0x1DA7438F0](*(v1 + a1[6]));
  MEMORY[0x1DA7438F0](*(v1 + a1[7]));
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EDE1D4(uint64_t a1, int *a2)
{
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB75238, MEMORY[0x1E6969530]);
  sub_1D9F2B0EC();
  sub_1D9E4E7F8(a1, *(v2 + a2[5]));
  MEMORY[0x1DA7438F0](*(v2 + a2[6]));
  return MEMORY[0x1DA7438F0](*(v2 + a2[7]));
}

uint64_t sub_1D9EDE288(uint64_t a1, int *a2)
{
  sub_1D9F2BAFC();
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB75238, MEMORY[0x1E6969530]);
  sub_1D9F2B0EC();
  sub_1D9E4E7F8(v5, *(v2 + a2[5]));
  MEMORY[0x1DA7438F0](*(v2 + a2[6]));
  MEMORY[0x1DA7438F0](*(v2 + a2[7]));
  return sub_1D9F2BB4C();
}

BOOL _s29VisualActionPredictionSupport8FeedbackV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D9F2ACDC() & 1) != 0 && (v4 = type metadata accessor for Feedback(0), (sub_1D9E49700(*(a1 + v4[5]), *(a2 + v4[5]))) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t _s29VisualActionPredictionSupport8FeedbackV5EventO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v28 = sub_1D9F2AD7C();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Feedback.Event(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731D8, &unk_1D9F2F590);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1D9EDEB00(a1, &v27 - v18, type metadata accessor for Feedback.Event);
  sub_1D9EDEB00(a2, &v19[v20], type metadata accessor for Feedback.Event);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9EDEB00(v19, v12, type metadata accessor for Feedback.Event);
    v21 = *v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = sub_1D9E49DB0(v21, *&v19[v20]);

LABEL_9:
      sub_1D9EDF484(v19, type metadata accessor for Feedback.Event);
      return v22 & 1;
    }
  }

  else
  {
    sub_1D9EDEB00(v19, v14, type metadata accessor for Feedback.Event);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = &v19[v20];
      v24 = v28;
      (*(v4 + 32))(v7, v23, v28);
      v22 = sub_1D9F2AD3C();
      v25 = *(v4 + 8);
      v25(v7, v24);
      v25(v14, v24);
      goto LABEL_9;
    }

    (*(v4 + 8))(v14, v28);
  }

  sub_1D9EDF41C(v19);
  v22 = 0;
  return v22 & 1;
}

unint64_t sub_1D9EDE704()
{
  result = qword_1ECB751D8;
  if (!qword_1ECB751D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751D8);
  }

  return result;
}

unint64_t sub_1D9EDE758()
{
  result = qword_1ECB751E0;
  if (!qword_1ECB751E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751E0);
  }

  return result;
}

unint64_t sub_1D9EDE7AC()
{
  result = qword_1ECB751E8;
  if (!qword_1ECB751E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751E8);
  }

  return result;
}

uint64_t sub_1D9EDE800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9EDE848(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74458, &qword_1D9F38718);
    sub_1D9EDE800(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9EDE8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Feedback.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9EDE968()
{
  result = qword_1ECB75210;
  if (!qword_1ECB75210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75210);
  }

  return result;
}

uint64_t sub_1D9EDE9BC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75218, &qword_1D9F3FEC8);
    sub_1D9EDE800(a2, type metadata accessor for Feedback.Event);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EDEA58()
{
  result = qword_1ECB75230;
  if (!qword_1ECB75230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75230);
  }

  return result;
}

unint64_t sub_1D9EDEAAC()
{
  result = qword_1ECB75258;
  if (!qword_1ECB75258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75258);
  }

  return result;
}

uint64_t sub_1D9EDEB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D9EDEC20()
{
  sub_1D9F2AD0C();
  if (v0 <= 0x3F)
  {
    sub_1D9EDEDF8(319, &qword_1EE0F1128, type metadata accessor for Feedback.Event);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9EDECD8()
{
  sub_1D9EDED4C();
  if (v0 <= 0x3F)
  {
    sub_1D9EDED94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D9EDED4C()
{
  if (!qword_1EE0F22B0)
  {
    v0 = sub_1D9F2AD7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0F22B0);
    }
  }
}

void sub_1D9EDED94()
{
  if (!qword_1EE0F11A0)
  {
    sub_1D9EDEDF8(0, &qword_1EE0F1198, MEMORY[0x1E69695A8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0F11A0);
    }
  }
}

void sub_1D9EDEDF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9F2B2BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D9EDEE90()
{
  result = qword_1ECB75270;
  if (!qword_1ECB75270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75270);
  }

  return result;
}

unint64_t sub_1D9EDEEE8()
{
  result = qword_1ECB75278;
  if (!qword_1ECB75278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75278);
  }

  return result;
}

unint64_t sub_1D9EDEF40()
{
  result = qword_1ECB75280;
  if (!qword_1ECB75280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75280);
  }

  return result;
}

unint64_t sub_1D9EDEF98()
{
  result = qword_1ECB75288;
  if (!qword_1ECB75288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75288);
  }

  return result;
}

unint64_t sub_1D9EDEFF0()
{
  result = qword_1ECB75290;
  if (!qword_1ECB75290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75290);
  }

  return result;
}

unint64_t sub_1D9EDF048()
{
  result = qword_1ECB75298;
  if (!qword_1ECB75298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75298);
  }

  return result;
}

unint64_t sub_1D9EDF0A0()
{
  result = qword_1ECB752A0;
  if (!qword_1ECB752A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752A0);
  }

  return result;
}

unint64_t sub_1D9EDF0F8()
{
  result = qword_1ECB752A8;
  if (!qword_1ECB752A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752A8);
  }

  return result;
}

unint64_t sub_1D9EDF150()
{
  result = qword_1ECB752B0;
  if (!qword_1ECB752B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752B0);
  }

  return result;
}

unint64_t sub_1D9EDF1A8()
{
  result = qword_1ECB752B8;
  if (!qword_1ECB752B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752B8);
  }

  return result;
}

unint64_t sub_1D9EDF200()
{
  result = qword_1ECB752C0;
  if (!qword_1ECB752C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752C0);
  }

  return result;
}

unint64_t sub_1D9EDF258()
{
  result = qword_1ECB752C8;
  if (!qword_1ECB752C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752C8);
  }

  return result;
}

uint64_t sub_1D9EDF2AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xED0000657079546ELL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EDF41C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731D8, &unk_1D9F2F590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9EDF484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

VisualActionPredictionSupport::VisualContentCategory_optional __swiftcall VisualContentCategory.init(category:)(Swift::String_optional category)
{
  v2 = v1;
  if (!category.value._object)
  {
    goto LABEL_144;
  }

  object = category.value._object;
  countAndFlagsBits = category.value._countAndFlagsBits;
  v6 = sub_1D9EE0C2C();
  v7 = v5;
  if ((v6 != 0xD000000000000016 || 0x80000001D9F47E30 != v5) && (sub_1D9F2BA1C() & 1) == 0)
  {
    if (v6 == 0xD000000000000015 && 0x80000001D9F47E50 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 22;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000012 && 0x80000001D9F47E70 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 23;
      goto LABEL_6;
    }

    if (v6 == 0x7473694C6F646F74 && v7 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 24;
      goto LABEL_6;
    }

    if (v6 == 0x676E6970706F6873 && v7 == 0xEC0000007473694CLL || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 25;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000014 && 0x80000001D9F47EA0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 26;
      goto LABEL_6;
    }

    if (v6 == 1970169197 && v7 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 27;
      goto LABEL_6;
    }

    if (v6 == 0x4C657369636E6F63 && v7 == 0xEB00000000747369 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 28;
      goto LABEL_6;
    }

    if (v6 == 1768319351 && v7 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 29;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000012 && 0x80000001D9F47ED0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 30;
      goto LABEL_6;
    }

    if (v6 == 0x74706965636572 && v7 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 31;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000010 && 0x80000001D9F47EF0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 32;
      goto LABEL_6;
    }

    if (v6 == 0x646567616B636170 && v7 == 0xEC000000646F6F46 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 33;
      goto LABEL_6;
    }

    if (v6 == 0x646567616B636170 && v7 == -1192218645498990000 || (sub_1D9F2BA1C() & 1) != 0)
    {
      goto LABEL_58;
    }

    if (v6 == 0x736C616D696E61 && v7 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 0;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000015 && 0x80000001D9F47CB0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 1;
      goto LABEL_145;
    }

    if (v6 == 7631457 && v7 == 0xE300000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 2;
      goto LABEL_145;
    }

    if (v6 == 0x736B6F6F62 && v7 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 3;
      goto LABEL_145;
    }

    if (v6 == 0x746E656D75636F64 && v7 == 0xE900000000000073 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 4;
      goto LABEL_145;
    }

    if (v6 == 0x6E6F727463656C65 && v7 == 0xEB00000000736369 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 5;
      goto LABEL_145;
    }

    if (v6 == 1685024614 && v7 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 6;
      goto LABEL_145;
    }

    if (v6 == 0x646F6F47656D6F68 && v7 == 0xE900000000000073 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 7;
      goto LABEL_145;
    }

    if (v6 == 0x6E616D7568 && v7 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 8;
      goto LABEL_145;
    }

    if (v6 == 0x6B72616D646E616CLL && v7 == 0xE900000000000073 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 9;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000012 && 0x80000001D9F47D10 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 10;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000010 && 0x80000001D9F47D30 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 11;
      goto LABEL_145;
    }

    if (v6 == 0x646567616B636170 && v7 == 0xED000073646F6F47 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 12;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000010 && 0x80000001D9F47D50 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {
LABEL_58:

      v8 = 13;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000010 && 0x80000001D9F47D70 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 14;
      goto LABEL_145;
    }

    if (v6 == 0x646E41736E676973 && v7 == 0xEF736C6F626D7953 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 15;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000023 && 0x80000001D9F47DA0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 16;
      goto LABEL_145;
    }

    if (v6 == 0x6967655274786574 && v7 == 0xEA00000000006E6FLL || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 17;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000011 && 0x80000001D9F47DD0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 18;
      goto LABEL_145;
    }

    if (v6 == 0x6174696769446432 && v7 == 0xEE00616964654D6CLL || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 19;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000015 && 0x80000001D9F47E10 == v7)
    {

LABEL_142:

      v8 = 20;
      goto LABEL_145;
    }

    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      goto LABEL_142;
    }

    v10._countAndFlagsBits = countAndFlagsBits;
    v10._object = object;
    LOBYTE(category.value._countAndFlagsBits) = VisualContentCategory.init(rawValue:)(v10);
    v8 = v12;
    if (v12 != 34)
    {
      goto LABEL_145;
    }

LABEL_144:
    v8 = 34;
    goto LABEL_145;
  }

  v8 = 21;
LABEL_6:

LABEL_145:
  *v2 = v8;
  return category.value._countAndFlagsBits;
}

VisualActionPredictionSupport::VisualContentCategory_optional __swiftcall VisualContentCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9F2BA3C();

  v5 = 0;
  v6 = 16;
  switch(v3)
  {
    case 0:
      goto LABEL_26;
    case 1:
      v5 = 1;
      goto LABEL_26;
    case 2:
      v5 = 2;
      goto LABEL_26;
    case 3:
      v5 = 3;
      goto LABEL_26;
    case 4:
      v5 = 4;
      goto LABEL_26;
    case 5:
      v5 = 5;
      goto LABEL_26;
    case 6:
      v5 = 6;
      goto LABEL_26;
    case 7:
      v5 = 7;
      goto LABEL_26;
    case 8:
      v5 = 8;
      goto LABEL_26;
    case 9:
      v5 = 9;
      goto LABEL_26;
    case 10:
      v5 = 10;
      goto LABEL_26;
    case 11:
      v5 = 11;
      goto LABEL_26;
    case 12:
      v5 = 12;
      goto LABEL_26;
    case 13:
      v5 = 13;
      goto LABEL_26;
    case 14:
      v5 = 14;
      goto LABEL_26;
    case 15:
      v5 = 15;
LABEL_26:
      v6 = v5;
      break;
    case 16:
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    default:
      v6 = 34;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t VisualContentCategory.rawValue.getter()
{
  result = 0x6C616D696E61;
  switch(*v0)
  {
    case 1:
    case 0x14:
    case 0x16:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 7631457;
      break;
    case 3:
      result = 0x736B6F6F62;
      break;
    case 4:
      result = 0x746E656D75636F64;
      break;
    case 5:
      result = 0x6E6F727463656C65;
      break;
    case 6:
      result = 1685024614;
      break;
    case 7:
      result = 0x646F6F47656D6F68;
      break;
    case 8:
      result = 0x6E616D7568;
      break;
    case 9:
      result = 0x6B72616D646E616CLL;
      break;
    case 0xA:
    case 0x17:
    case 0x1E:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0xD000000000000010;
      break;
    case 0xC:
    case 0x21:
      result = 0x646567616B636170;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xE:
      result = 0xD000000000000010;
      break;
    case 0xF:
      result = 0x646E41736E676973;
      break;
    case 0x10:
      result = 0xD000000000000023;
      break;
    case 0x11:
      result = 0x6967655274786574;
      break;
    case 0x12:
      result = 0xD000000000000011;
      break;
    case 0x13:
      result = 0xD000000000000010;
      break;
    case 0x15:
      result = 0xD000000000000016;
      break;
    case 0x18:
      result = 0x7473694C6F646F74;
      break;
    case 0x19:
      result = 0x676E6970706F6873;
      break;
    case 0x1A:
      result = 0xD000000000000014;
      break;
    case 0x1B:
      result = 1970169197;
      break;
    case 0x1C:
      result = 0x4C657369636E6F63;
      break;
    case 0x1D:
      result = 1768319351;
      break;
    case 0x1F:
      result = 0x74706965636572;
      break;
    case 0x20:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9EE05AC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = VisualContentCategory.rawValue.getter();
  v4 = v3;
  if (v2 == VisualContentCategory.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9F2BA1C();
  }

  return v7 & 1;
}

uint64_t sub_1D9EE0648()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  VisualContentCategory.rawValue.getter();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EE06B0()
{
  v2 = *v0;
  VisualContentCategory.rawValue.getter();
  sub_1D9F2B18C();
}

uint64_t sub_1D9EE0714()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  VisualContentCategory.rawValue.getter();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EE0784@<X0>(unint64_t *a1@<X8>)
{
  result = VisualContentCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D9EE086C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D9F2B1EC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1D9F0C8CC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1D9F0C8CC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1D9F2B1DC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1D9F2B19C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1D9F2B19C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1D9F2B1EC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1D9F0C8CC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1D9F2B1EC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D9F0C8CC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1D9F0C8CC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1D9F2B19C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9EE0C2C()
{
  v1 = 0xE100000000000000;
  sub_1D9EE11DC();
  *&v31 = sub_1D9F2B5BC();
  *(&v31 + 1) = v2;
  strcpy(v36, "[^a-zA-Z0-9]+");
  HIWORD(v36[1]) = -4864;
  v3 = 32;
  v34 = 32;
  v35 = 0xE100000000000000;
  v4 = &v31;
  sub_1D9F2B5BC();

  v5 = sub_1D9F2B14C();
  v7 = v6;

  *&v31 = 32;
  *(&v31 + 1) = 0xE100000000000000;
  v30 = &v31;
  v9 = sub_1D9EE086C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D9E447C0, v29, v5, v7, v8);
  v10 = v9[2];
  if (v10)
  {
    v36[0] = MEMORY[0x1E69E7CC0];
    sub_1D9E947AC(0, v10, 0);
    v12 = v9[2];
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v36[0];
    v15 = v9[6];
    v14 = v9[7];
    v17 = v9[4];
    v16 = v9[5];

    v3 = MEMORY[0x1DA742F50](v17, v16, v15, v14);
    v1 = v18;

    v0 = *(v13 + 16);
    v11 = *(v13 + 24);
    v4 = (v0 + 1);
    if (v0 >= v11 >> 1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      *(v13 + 16) = v4;
      v11 = v13 + 16 * v0;
      *(v11 + 32) = v3;
      *(v11 + 40) = v1;
      if (v10 == 1)
      {
        break;
      }

      v4 = v9 + 11;
      v0 = 1;
      v1 = MEMORY[0x1E69E67B0];
      while (v12 != v0)
      {
        v11 = v9[2];
        if (v0 >= v11)
        {
          goto LABEL_16;
        }

        v22 = *(v4 - 1);
        v21 = *v4;
        v31 = *(v4 - 3);
        v32 = v22;
        v33 = v21;
        sub_1D9EE1230();
        v23 = sub_1D9F2B5AC();
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        v36[0] = v13;
        v3 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v28 = v23;
          v27 = v24;
          sub_1D9E947AC((v25 > 1), v26 + 1, 1);
          v23 = v28;
          v24 = v27;
          v13 = v36[0];
        }

        ++v0;
        *(v13 + 16) = v3;
        v11 = v13 + 16 * v26;
        *(v11 + 32) = v23;
        *(v11 + 40) = v24;
        v4 += 4;
        if (v10 == v0)
        {
          goto LABEL_5;
        }
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      sub_1D9E947AC((v11 > 1), v4, 1);
      v13 = v36[0];
    }

LABEL_5:
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  *&v31 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
  sub_1D9EAA40C(&qword_1EE0F2308, &qword_1ECB75480, &qword_1D9F2D000);
  v19 = sub_1D9F2B0FC();

  return v19;
}

unint64_t sub_1D9EE0FA0()
{
  result = qword_1EE0F2198;
  if (!qword_1EE0F2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualContentCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualContentCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9EE1188()
{
  result = qword_1ECB752E0;
  if (!qword_1ECB752E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752E0);
  }

  return result;
}

unint64_t sub_1D9EE11DC()
{
  result = qword_1EE0F2360;
  if (!qword_1EE0F2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2360);
  }

  return result;
}

unint64_t sub_1D9EE1230()
{
  result = qword_1EE0F11B8;
  if (!qword_1EE0F11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F11B8);
  }

  return result;
}

uint64_t sub_1D9EE12AC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 16))(a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17[0] = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata_unique();
  if (sub_1D9F2B2AC())
  {
    v8 = 0;
    v9 = v7 + 32;
    while (1)
    {
      v10 = sub_1D9F2B29C();
      result = sub_1D9F2B28C();
      if ((v10 & 1) == 0)
      {
        break;
      }

      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_16;
      }

      sub_1D9EE14D0(v9, v17);
      v13 = a1(v17);
      if (v4)
      {

        __swift_destroy_boxed_opaque_existential_1(v17);
        return v16 & 1;
      }

      if (v13 == 2 || (v13 & 1) != 0 && (v14 = v18, v15 = v19, __swift_project_boxed_opaque_existential_1(v17, v18), (sub_1D9EE12AC(a1, a2, v14, v15) & 1) == 0))
      {

        __swift_destroy_boxed_opaque_existential_1(v17);
        v16 = 0;
        return v16 & 1;
      }

      __swift_destroy_boxed_opaque_existential_1(v17);
      v17[0] = AssociatedTypeWitness;
      swift_getExtendedExistentialTypeMetadata_unique();
      ++v8;
      v9 += 40;
      if (v12 == sub_1D9F2B2AC())
      {
        goto LABEL_12;
      }
    }

    result = sub_1D9F2B69C();
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_12:

    v16 = 1;
    return v16 & 1;
  }

  return result;
}

uint64_t sub_1D9EE14D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t PostalAddress.street.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PostalAddress.street.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PostalAddress.city.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PostalAddress.city.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PostalAddress.state.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PostalAddress.state.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PostalAddress.postalCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t PostalAddress.postalCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PostalAddress.country.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t PostalAddress.country.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void __swiftcall PostalAddress.init(street:city:state:postalCode:country:)(VisualActionPredictionSupport::PostalAddress *__return_ptr retstr, Swift::String_optional street, Swift::String_optional city, Swift::String_optional state, Swift::String_optional postalCode, Swift::String_optional country)
{
  retstr->street = street;
  retstr->city = city;
  retstr->state = state;
  retstr->postalCode = postalCode;
  retstr->country = country;
}

uint64_t sub_1D9EE17FC()
{
  v1 = *v0;
  v2 = 0x746565727473;
  v3 = 0x6574617473;
  v4 = 0x6F436C6174736F70;
  if (v1 != 3)
  {
    v4 = 0x7972746E756F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2037672291;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9EE188C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EE284C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EE18B4(uint64_t a1)
{
  v2 = sub_1D9EE2530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE18F0(uint64_t a1)
{
  v2 = sub_1D9EE2530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PostalAddress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB752E8, &qword_1D9F40870);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17[7] = v1[3];
  v17[8] = v10;
  v11 = v1[4];
  v17[5] = v1[5];
  v17[6] = v11;
  v12 = v1[6];
  v17[3] = v1[7];
  v17[4] = v12;
  v13 = v1[8];
  v17[1] = v1[9];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE2530();
  sub_1D9F2BB8C();
  v22 = 0;
  v15 = v17[9];
  sub_1D9F2B90C();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = 1;
  sub_1D9F2B90C();
  v20 = 2;
  sub_1D9F2B90C();
  v19 = 3;
  sub_1D9F2B90C();
  v18 = 4;
  sub_1D9F2B90C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PostalAddress.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  v10 = v0[8];
  v7 = v0[9];
  if (v0[1])
  {
    v8 = *v0;
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D9F2BB1C();
    if (v3)
    {
LABEL_3:
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_1D9F2BB1C();
  if (v5)
  {
LABEL_4:
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_1D9F2BB1C();
    if (v7)
    {
      goto LABEL_6;
    }

    return sub_1D9F2BB1C();
  }

LABEL_11:
  sub_1D9F2BB1C();
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_1D9F2BB1C();
  sub_1D9F2B18C();
  if (!v7)
  {
    return sub_1D9F2BB1C();
  }

LABEL_6:
  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t PostalAddress.hashValue.getter()
{
  sub_1D9F2BAFC();
  PostalAddress.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t PostalAddress.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB752F8, &qword_1D9F40878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE2530();
  sub_1D9F2BB7C();
  if (v2)
  {
    v36 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v42 = 0uLL;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  else
  {
    LOBYTE(v42) = 0;
    *&v35 = sub_1D9F2B7FC();
    *(&v35 + 1) = v12;
    LOBYTE(v42) = 1;
    v13 = sub_1D9F2B7FC();
    v32 = a2;
    v34 = v13;
    v33 = v14;
    LOBYTE(v42) = 2;
    v15 = sub_1D9F2B7FC();
    v17 = v16;
    LOBYTE(v42) = 3;
    v18 = sub_1D9F2B7FC();
    v20 = v19;
    v51 = 4;
    v21 = sub_1D9F2B7FC();
    v36 = 0;
    v22 = v21;
    v23 = v9;
    v25 = v24;
    (*(v6 + 8))(v23, v5);
    v26 = v35;
    v37 = v35;
    v27 = v33;
    *&v38 = v34;
    *(&v38 + 1) = v33;
    *&v39 = v15;
    *(&v39 + 1) = v17;
    *&v40 = v18;
    *(&v40 + 1) = v20;
    *&v41 = v22;
    *(&v41 + 1) = v25;
    v28 = v40;
    v29 = v32;
    v32[2] = v39;
    v29[3] = v28;
    v29[4] = v41;
    v30 = v38;
    *v29 = v37;
    v29[1] = v30;
    sub_1D9EE25B4(&v37, &v42);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v42 = __PAIR128__(*(&v35 + 1), v26);
    v43 = v34;
    v44 = v27;
    v45 = v15;
    v46 = v17;
    v47 = v18;
    v48 = v20;
    v49 = v22;
    v50 = v25;
  }

  return sub_1D9EE2584(&v42);
}

uint64_t sub_1D9EE20EC()
{
  sub_1D9F2BAFC();
  PostalAddress.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EE2130()
{
  sub_1D9F2BAFC();
  PostalAddress.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t PostalAddress.stringRepresentation.getter()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[9];
  v20 = v6;
  v21 = v0[8];
  if (v1)
  {
    v9 = *v0;
  }

  else
  {
    v9 = 0;
  }

  if (v1)
  {
    v10 = v0[1];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1DA742F90](v9, v10);

  MEMORY[0x1DA742F90](32, 0xE100000000000000);
  if (v2)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  if (v2)
  {
    v12 = v2;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1DA742F90](v11, v12);

  MEMORY[0x1DA742F90](32, 0xE100000000000000);
  if (v4)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  MEMORY[0x1DA742F90](v13, v14);

  MEMORY[0x1DA742F90](32, 0xE100000000000000);
  if (v7)
  {
    v15 = v20;
  }

  else
  {
    v15 = 0;
  }

  if (v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  MEMORY[0x1DA742F90](v15, v16);

  MEMORY[0x1DA742F90](32, 0xE100000000000000);
  if (v8)
  {
    v17 = v21;
  }

  else
  {
    v17 = 0;
  }

  if (v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  MEMORY[0x1DA742F90](v17, v18);

  return 0;
}

uint64_t _s29VisualActionPredictionSupport13PostalAddressV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = a2[7];
      v43 = a2[8];
      v44 = a1[6];
      v41 = a1[9];
      v42 = a2[9];
      v21 = a1[8];
      v22 = a2[6];
      v23 = a1[5];
      v24 = a1[4];
      v25 = a2[5];
      v26 = a2[4];
      v27 = a2[2];
      v28 = sub_1D9F2BA1C();
      v13 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v29 = v16;
      v30 = v7;
      v31 = v5;
      v32 = v14;
      v33 = sub_1D9F2BA1C();
      v14 = v32;
      v9 = v46;
      v17 = v48;
      v5 = v31;
      v7 = v30;
      v16 = v29;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v34 = v18;
      v35 = v9;
      v36 = v16;
      v37 = sub_1D9F2BA1C();
      v16 = v36;
      v9 = v35;
      v18 = v34;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v38 = v9;
      v39 = sub_1D9F2BA1C();
      v9 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_1D9F2BA1C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D9EE2530()
{
  result = qword_1ECB752F0;
  if (!qword_1ECB752F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752F0);
  }

  return result;
}

unint64_t sub_1D9EE25F0()
{
  result = qword_1ECB75300;
  if (!qword_1ECB75300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75300);
  }

  return result;
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

uint64_t sub_1D9EE2660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D9EE26BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D9EE2748()
{
  result = qword_1ECB75308;
  if (!qword_1ECB75308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75308);
  }

  return result;
}

unint64_t sub_1D9EE27A0()
{
  result = qword_1ECB75310;
  if (!qword_1ECB75310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75310);
  }

  return result;
}

unint64_t sub_1D9EE27F8()
{
  result = qword_1ECB75318;
  if (!qword_1ECB75318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75318);
  }

  return result;
}

uint64_t sub_1D9EE284C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D9EE2A00(uint64_t a1)
{
  v2 = sub_1D9EE4648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE2A3C(uint64_t a1)
{
  v2 = sub_1D9EE4648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EE2A78(uint64_t a1)
{
  v2 = sub_1D9EE45A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE2AB4(uint64_t a1)
{
  v2 = sub_1D9EE45A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9EE2AF0()
{
  v1 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EE2B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EE4E4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EE2B88(uint64_t a1)
{
  v2 = sub_1D9EE44F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE2BC4(uint64_t a1)
{
  v2 = sub_1D9EE44F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EE2C00(uint64_t a1)
{
  v2 = sub_1D9EE45F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE2C3C(uint64_t a1)
{
  v2 = sub_1D9EE45F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EE2C78(uint64_t a1)
{
  v2 = sub_1D9EE454C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE2CB4(uint64_t a1)
{
  v2 = sub_1D9EE454C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageRegion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75320, &qword_1D9F40AF0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75328, &qword_1D9F40AF8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75330, &qword_1D9F40B00);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75338, &qword_1D9F40B08);
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75340, &qword_1D9F40B10);
  v51 = *(v17 - 8);
  v18 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = *v1;
  v49 = v1[1];
  v20 = v1[2];
  v38[0] = v1[3];
  v38[1] = v20;
  v21 = *(v1 + 32);
  v23 = a1[3];
  v22 = a1[4];
  v24 = a1;
  v26 = v38 - v25;
  __swift_project_boxed_opaque_existential_1(v24, v23);
  sub_1D9EE44F8();
  sub_1D9F2BB8C();
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v52 = 2;
      sub_1D9EE45A0();
      v30 = v43;
      sub_1D9F2B8FC();
      v52 = 0;
      v31 = v45;
      v32 = v50;
      sub_1D9F2B99C();
      if (!v32)
      {
        v52 = 1;
        sub_1D9F2B99C();
        v52 = 2;
        sub_1D9F2B99C();
        v52 = 3;
        sub_1D9F2B99C();
      }

      v36 = v44;
    }

    else
    {
      v52 = 3;
      sub_1D9EE454C();
      v30 = v46;
      sub_1D9F2B8FC();
      v52 = 0;
      v31 = v48;
      v35 = v50;
      sub_1D9F2B97C();
      if (!v35)
      {
        v52 = 1;
        sub_1D9F2B97C();
        v52 = 2;
        sub_1D9F2B97C();
        v52 = 3;
        sub_1D9F2B97C();
      }

      v36 = v47;
    }

    (*(v36 + 8))(v30, v31);
    return (*(v51 + 8))(v26, v17);
  }

  else
  {
    if (v21)
    {
      v52 = 1;
      sub_1D9EE45F4();
      v27 = v17;
      sub_1D9F2B8FC();
      v52 = 0;
      v33 = v42;
      v34 = v50;
      sub_1D9F2B97C();
      if (!v34)
      {
        v52 = 1;
        sub_1D9F2B97C();
        v52 = 2;
        sub_1D9F2B97C();
        v52 = 3;
        sub_1D9F2B97C();
        (*(v41 + 8))(v12, v33);
        return (*(v51 + 8))(v26, v27);
      }

      (*(v41 + 8))(v12, v33);
    }

    else
    {
      v52 = 0;
      sub_1D9EE4648();
      v27 = v17;
      sub_1D9F2B8FC();
      v52 = 0;
      v28 = v40;
      v29 = v50;
      sub_1D9F2B99C();
      if (!v29)
      {
        v52 = 1;
        sub_1D9F2B99C();
        v52 = 2;
        sub_1D9F2B99C();
        v52 = 3;
        sub_1D9F2B99C();
      }

      (*(v39 + 8))(v16, v28);
    }

    return (*(v51 + 8))(v26, v27);
  }
}

uint64_t ImageRegion.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      v5 = 2;
      goto LABEL_6;
    }

    v7 = 3;
  }

  else
  {
    if (!*(v0 + 32))
    {
      v5 = 0;
LABEL_6:
      MEMORY[0x1DA7438F0](v5);
      MEMORY[0x1DA7438F0](v2);
      MEMORY[0x1DA7438F0](v1);
      MEMORY[0x1DA7438F0](v4);
      return MEMORY[0x1DA7438F0](v3);
    }

    v7 = 1;
  }

  MEMORY[0x1DA7438F0](v7);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1DA743920](v8);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1DA743920](v9);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1DA743920](v10);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x1DA743920](v11);
}

uint64_t ImageRegion.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1D9F2BAFC();
  ImageRegion.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t ImageRegion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75370, &qword_1D9F40B18);
  v86 = *(v82 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v90 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75378, &qword_1D9F40B20);
  v6 = *(v5 - 8);
  v84 = v5;
  v85 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v78 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75380, &qword_1D9F40B28);
  v83 = *(v88 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v11 = &v78 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75388, &qword_1D9F40B30);
  v81 = *(v12 - 8);
  v13 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75390, &unk_1D9F40B38);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v78 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D9EE44F8();
  v23 = v91;
  sub_1D9F2BB7C();
  if (!v23)
  {
    v80 = 0;
    v24 = v15;
    v79 = v12;
    v25 = v11;
    v27 = v88;
    v26 = v89;
    v28 = v90;
    v91 = v17;
    v29 = sub_1D9F2B8DC();
    v30 = (2 * *(v29 + 16)) | 1;
    v93 = v29;
    v94 = v29 + 32;
    v95 = 0;
    v96 = v30;
    v31 = sub_1D9E46188();
    v32 = v20;
    if (v31 == 4 || v95 != v96 >> 1)
    {
      v36 = sub_1D9F2B6BC();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
      *v38 = &type metadata for ImageRegion;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
    }

    else
    {
      v33 = v20;
      v97 = v31;
      if (v31 > 1u)
      {
        v41 = v87;
        if (v31 == 2)
        {
          v98 = 2;
          sub_1D9EE45A0();
          v42 = v80;
          sub_1D9F2B7DC();
          v43 = v91;
          if (!v42)
          {
            v98 = 0;
            v44 = v84;
            v53 = v26;
            v71 = sub_1D9F2B88C();
            v98 = 1;
            v54 = sub_1D9F2B88C();
            v55 = v85;
            v88 = v54;
            v98 = 2;
            v86 = sub_1D9F2B88C();
            v98 = 3;
            v70 = sub_1D9F2B88C();
            (*(v55 + 8))(v53, v44);
            (*(v43 + 8))(v33, v16);
            swift_unknownObjectRelease();
            goto LABEL_20;
          }
        }

        else
        {
          v98 = 3;
          sub_1D9EE454C();
          v48 = v28;
          v49 = v80;
          sub_1D9F2B7DC();
          v43 = v91;
          if (!v49)
          {
            v98 = 0;
            v50 = v82;
            sub_1D9F2B86C();
            v64 = v63;
            v98 = 1;
            sub_1D9F2B86C();
            v65 = v86;
            v67 = v66;
            v98 = 2;
            sub_1D9F2B86C();
            v69 = v68;
            v98 = 3;
            sub_1D9F2B86C();
            v77 = v76;
            (*(v65 + 8))(v48, v50);
            (*(v43 + 8))(v33, v16);
            swift_unknownObjectRelease();
            v71 = v64;
            v74 = v67;
            v75 = v69;
            v70 = v77;
            goto LABEL_21;
          }
        }

        (*(v43 + 8))(v32, v16);
        goto LABEL_10;
      }

      if (!v31)
      {
        v98 = 0;
        sub_1D9EE4648();
        v34 = v80;
        sub_1D9F2B7DC();
        if (!v34)
        {
          v98 = 0;
          v35 = v79;
          v90 = sub_1D9F2B88C();
          v98 = 1;
          v51 = sub_1D9F2B88C();
          v52 = v81;
          v88 = v51;
          v98 = 2;
          v86 = sub_1D9F2B88C();
          v98 = 3;
          v70 = sub_1D9F2B88C();
          (*(v52 + 8))(v24, v35);
          (*(v91 + 8))(v33, v16);
          swift_unknownObjectRelease();
          v71 = v90;
LABEL_20:
          v41 = v87;
          v74 = v88;
          v75 = v86;
          goto LABEL_21;
        }

        goto LABEL_9;
      }

      v98 = 1;
      sub_1D9EE45F4();
      v45 = v25;
      v46 = v80;
      sub_1D9F2B7DC();
      if (!v46)
      {
        v98 = 0;
        sub_1D9F2B86C();
        v47 = v91;
        v57 = v56;
        v98 = 1;
        sub_1D9F2B86C();
        v58 = v83;
        v60 = v59;
        v98 = 2;
        sub_1D9F2B86C();
        v62 = v61;
        v98 = 3;
        sub_1D9F2B86C();
        v73 = v72;
        (*(v58 + 8))(v45, v27);
        (*(v47 + 8))(v33, v16);
        swift_unknownObjectRelease();
        v71 = v57;
        v74 = v60;
        v75 = v62;
        v70 = v73;
        v41 = v87;
LABEL_21:
        *v41 = v71;
        *(v41 + 8) = v74;
        *(v41 + 16) = v75;
        *(v41 + 24) = v70;
        *(v41 + 32) = v97;
        return __swift_destroy_boxed_opaque_existential_1(v92);
      }
    }

LABEL_9:
    (*(v91 + 8))(v32, v16);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v92);
}

uint64_t sub_1D9EE3FA0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1D9F2BAFC();
  ImageRegion.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EE3FF8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1D9F2BAFC();
  ImageRegion.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t ImageRegion.rectangle(in:)(uint64_t result)
{
  v2 = *(result + 8);
  if (v2 < 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = *(result + 8);
    goto LABEL_52;
  }

  v3 = *(result + 16);
  if (v3 < 1)
  {
    v13 = 0;
    v14 = 1;
    v15 = *(result + 16);
    goto LABEL_52;
  }

  v5 = *v1;
  v4 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v12 = *(v1 + 8);
      v4 = *v1;
      goto LABEL_40;
    }
  }

  else
  {
    if (!*(v1 + 32))
    {
      v8 = v2 - v4;
      if (__OFSUB__(v2, v4))
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      *&v9 = v8 - *&v6;
      if (__OFSUB__(v8, *&v6))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v10 = v3 - *&v5;
      if (__OFSUB__(v3, *&v5))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v11 = __OFSUB__(v10, *&v7);
      *&v6 = v10 - *&v7;
      if (v11)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v12 = *(v1 + 16);
      v7 = v9;
LABEL_40:
      v11 = __OFADD__(v4, *&v7);
      v23 = v4 + *&v7;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        v15 = v4 & ~(v4 >> 63);
        if (v23 >= v2)
        {
          v13 = v2;
        }

        else
        {
          v13 = v23;
        }

        if (v13 <= v15)
        {
          v14 = 2;
          goto LABEL_52;
        }

        if (!__OFADD__(v12, *&v6))
        {
          if (v12 + *&v6 >= v3)
          {
            v13 = v3;
          }

          else
          {
            v13 = v12 + *&v6;
          }

          if (v13 > (v12 & ~(v12 >> 63)))
          {
            return v15;
          }

          v14 = 3;
          v15 = v12 & ~(v12 >> 63);
LABEL_52:
          sub_1D9EE469C();
          swift_allocError();
          *v24 = v15;
          *(v24 + 8) = v13;
          *(v24 + 16) = v14;
          swift_willThrow();
          return v15;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v16 = *(v1 + 8);
    v17 = v2 * *&v4;
    if (v17 <= -9.22337204e18)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v17 >= 9.22337204e18)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v18 = v3 * v7;
    if (v18 <= -9.22337204e18)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v18 >= 9.22337204e18)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v19 = *(v1 + 24);
    v20 = (1.0 - v16 - v6) * v2;
    if (v20 <= -9.22337204e18)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v20 >= 9.22337204e18)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v5 = 1.79769313e308;
    *&v7 = COERCE_UNSIGNED_INT64(fabs(v3 * v7)) > 0x7FEFFFFFFFFFFFFFLL;
    v4 = COERCE_UNSIGNED_INT64(fabs(v2 * *&v4)) > 0x7FEFFFFFFFFFFFFFLL;
    v21 = (1.0 - *v1 - *(v1 + 16)) * v3;
    if (COERCE__INT64(fabs(v21)) > 0x7FEFFFFFFFFFFFFFLL || (v4 & 1) != 0 || (LOBYTE(v7) & 1) != 0 || COERCE_UNSIGNED_INT64(fabs((1.0 - v16 - v6) * v2)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_72;
    }

    if (v21 <= -9.22337204e18)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v6 = 9.22337204e18;
    if (v21 < 9.22337204e18)
    {
LABEL_39:
      v4 = v17;
      v12 = v18;
      *&v7 = v20;
      *&v6 = v21;
      goto LABEL_40;
    }

    __break(1u);
  }

  v17 = v2 * v5;
  if (v17 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v18 = v3 * *&v4;
  if (v18 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v20 = v2 * v7;
  if (v20 <= -9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v21 = v3 * v6;
  v22 = COERCE__INT64(fabs(v21)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE_UNSIGNED_INT64(fabs(v2 * v5)) > 0x7FEFFFFFFFFFFFFFLL || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(v2 * v7)) > 0x7FEFFFFFFFFFFFFFLL || v22)
  {
    goto LABEL_73;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v21 < 9.22337204e18)
  {
    goto LABEL_39;
  }

LABEL_76:
  __break(1u);
  return result;
}

BOOL _s29VisualActionPredictionSupport11ImageRegionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*(a1 + 32) <= 1u)
  {
    if (!*(a1 + 32))
    {
      if (*(a2 + 32))
      {
        return 0;
      }

      return *&v2 == *&v7 && *&v3 == *&v6 && *&v5 == *&v9 && *&v4 == *&v8;
    }

    if (v10 == 1)
    {
      v15 = *(a1 + 16);
      v16 = *(a1 + 8);
      v17 = *a1;
      v18 = *a2;
      v19 = *(a2 + 8);
      v20 = *(a2 + 16);
      if (v2 != v7 || v3 != v6 || v5 != v9)
      {
        return 0;
      }

      goto LABEL_37;
    }

    return 0;
  }

  if (*(a1 + 32) != 2)
  {
    if (v10 == 3)
    {
      v23 = *(a1 + 16);
      v24 = *(a1 + 8);
      v25 = *a1;
      v26 = *a2;
      v27 = *(a2 + 8);
      v28 = *(a2 + 16);
      v29 = v2 == v7 && v3 == v6;
      if (v29 && v5 == v9)
      {
LABEL_37:
        v31 = *(a1 + 24);
        v32 = *(a2 + 24);
        return v4 == v8;
      }
    }

    return 0;
  }

  if (v10 != 2)
  {
    return 0;
  }

  return *&v2 == *&v7 && *&v3 == *&v6 && *&v5 == *&v9 && *&v4 == *&v8;
}

unint64_t sub_1D9EE44F8()
{
  result = qword_1ECB75348;
  if (!qword_1ECB75348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75348);
  }

  return result;
}

unint64_t sub_1D9EE454C()
{
  result = qword_1ECB75350;
  if (!qword_1ECB75350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75350);
  }

  return result;
}

unint64_t sub_1D9EE45A0()
{
  result = qword_1ECB75358;
  if (!qword_1ECB75358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75358);
  }

  return result;
}

unint64_t sub_1D9EE45F4()
{
  result = qword_1ECB75360;
  if (!qword_1ECB75360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75360);
  }

  return result;
}

unint64_t sub_1D9EE4648()
{
  result = qword_1ECB75368;
  if (!qword_1ECB75368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75368);
  }

  return result;
}

unint64_t sub_1D9EE469C()
{
  result = qword_1ECB75398;
  if (!qword_1ECB75398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75398);
  }

  return result;
}

unint64_t sub_1D9EE46F4()
{
  result = qword_1ECB753A0;
  if (!qword_1ECB753A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753A0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ImageRegion(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for ImageRegion(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageRegion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageRegion.Failure(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageRegion.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D9EE4928()
{
  result = qword_1ECB753A8;
  if (!qword_1ECB753A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753A8);
  }

  return result;
}

unint64_t sub_1D9EE4980()
{
  result = qword_1ECB753B0;
  if (!qword_1ECB753B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753B0);
  }

  return result;
}

unint64_t sub_1D9EE49D8()
{
  result = qword_1ECB753B8;
  if (!qword_1ECB753B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753B8);
  }

  return result;
}

unint64_t sub_1D9EE4A30()
{
  result = qword_1ECB753C0;
  if (!qword_1ECB753C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753C0);
  }

  return result;
}

unint64_t sub_1D9EE4A88()
{
  result = qword_1ECB753C8;
  if (!qword_1ECB753C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753C8);
  }

  return result;
}

unint64_t sub_1D9EE4AE0()
{
  result = qword_1ECB753D0;
  if (!qword_1ECB753D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753D0);
  }

  return result;
}

unint64_t sub_1D9EE4B38()
{
  result = qword_1ECB753D8;
  if (!qword_1ECB753D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753D8);
  }

  return result;
}

unint64_t sub_1D9EE4B90()
{
  result = qword_1ECB753E0;
  if (!qword_1ECB753E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753E0);
  }

  return result;
}

unint64_t sub_1D9EE4BE8()
{
  result = qword_1ECB753E8;
  if (!qword_1ECB753E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753E8);
  }

  return result;
}

unint64_t sub_1D9EE4C40()
{
  result = qword_1ECB753F0;
  if (!qword_1ECB753F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753F0);
  }

  return result;
}

unint64_t sub_1D9EE4C98()
{
  result = qword_1ECB753F8;
  if (!qword_1ECB753F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753F8);
  }

  return result;
}

unint64_t sub_1D9EE4CF0()
{
  result = qword_1ECB75400;
  if (!qword_1ECB75400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75400);
  }

  return result;
}

unint64_t sub_1D9EE4D48()
{
  result = qword_1ECB75408;
  if (!qword_1ECB75408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75408);
  }

  return result;
}

unint64_t sub_1D9EE4DA0()
{
  result = qword_1ECB75410;
  if (!qword_1ECB75410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75410);
  }

  return result;
}

unint64_t sub_1D9EE4DF8()
{
  result = qword_1ECB75418;
  if (!qword_1ECB75418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75418);
  }

  return result;
}

uint64_t sub_1D9EE4E4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001D9F49A30 == a2;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9F49A50 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9F49A70 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9F49A90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EE4FB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EE5110(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ImageMetadata.init(hostTime:pixelWidth:pixelHeight:pixelFormatType:isHighQuality:isVideoStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void sub_1D9EE52A4()
{
  xmmword_1ECB75420 = 0uLL;
  dword_1ECB75438 = 0;
  qword_1ECB75430 = 0;
}

double static ImageMetadata.invalid.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ECB72AC8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1ECB75430;
  v2 = dword_1ECB75438;
  result = *&xmmword_1ECB75420;
  *a1 = xmmword_1ECB75420;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  return result;
}

uint64_t sub_1D9EE5338()
{
  v1 = 0x656D695474736F68;
  v2 = 0x6965486C65786970;
  if (*v0 != 2)
  {
    v2 = 0x726F466C65786970;
  }

  if (*v0)
  {
    v1 = 0x6469576C65786970;
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

uint64_t sub_1D9EE53CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EE5D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EE53F4(uint64_t a1)
{
  v2 = sub_1D9EE5AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE5430(uint64_t a1)
{
  v2 = sub_1D9EE5AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75440, &qword_1D9F41260);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v14 = *(v1 + 6);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE5AEC();
  sub_1D9F2BB8C();
  v18 = 0;
  sub_1D9F2B9DC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v17 = 1;
  sub_1D9F2B99C();
  v16 = 2;
  sub_1D9F2B99C();
  v15 = 3;
  sub_1D9F2B9CC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t ImageMetadata.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MEMORY[0x1DA743920](*v0);
  MEMORY[0x1DA7438F0](v1);
  MEMORY[0x1DA7438F0](v2);
  return sub_1D9F2BB2C();
}

uint64_t ImageMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  sub_1D9F2BAFC();
  MEMORY[0x1DA743920](v1);
  MEMORY[0x1DA7438F0](v2);
  MEMORY[0x1DA7438F0](v3);
  sub_1D9F2BB2C();
  return sub_1D9F2BB4C();
}

uint64_t ImageMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75450, &qword_1D9F41268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE5AEC();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_1D9F2B8CC();
    v19 = 1;
    v12 = sub_1D9F2B88C();
    v18 = 2;
    v15 = sub_1D9F2B88C();
    v17 = 3;
    v16 = sub_1D9F2B8BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EE594C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  sub_1D9F2BAFC();
  MEMORY[0x1DA743920](v1);
  MEMORY[0x1DA7438F0](v2);
  MEMORY[0x1DA7438F0](v3);
  sub_1D9F2BB2C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EE59D0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MEMORY[0x1DA743920](*v0);
  MEMORY[0x1DA7438F0](v1);
  MEMORY[0x1DA7438F0](v2);
  return sub_1D9F2BB2C();
}

uint64_t sub_1D9EE5A2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  sub_1D9F2BAFC();
  MEMORY[0x1DA743920](v1);
  MEMORY[0x1DA7438F0](v2);
  MEMORY[0x1DA7438F0](v3);
  sub_1D9F2BB2C();
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EE5AEC()
{
  result = qword_1ECB75448;
  if (!qword_1ECB75448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75448);
  }

  return result;
}

unint64_t sub_1D9EE5B44()
{
  result = qword_1ECB75458;
  if (!qword_1ECB75458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75458);
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EE5BAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9EE5BCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

unint64_t sub_1D9EE5C20()
{
  result = qword_1ECB75460;
  if (!qword_1ECB75460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75460);
  }

  return result;
}

unint64_t sub_1D9EE5C78()
{
  result = qword_1ECB75468;
  if (!qword_1ECB75468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75468);
  }

  return result;
}

unint64_t sub_1D9EE5CD0()
{
  result = qword_1ECB75470;
  if (!qword_1ECB75470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75470);
  }

  return result;
}

uint64_t sub_1D9EE5D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695474736F68 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469576C65786970 && a2 == 0xEA00000000006874 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6965486C65786970 && a2 == 0xEB00000000746867 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

unint64_t XPCFailure.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (!*(v0 + 16))
    {
      v15 = *v0;
      swift_getErrorValue();
      return sub_1D9F2BAAC();
    }

    if (v3 != 1)
    {
      sub_1D9F2B68C();

      v27 = 0xD00000000000001BLL;
      MEMORY[0x1DA742F90](v1, v2);
      v19 = 10530;
      v20 = 0xE200000000000000;
LABEL_21:
      MEMORY[0x1DA742F90](v19, v20);
      return v27;
    }

    sub_1D9F2B68C();

    v27 = 0xD000000000000015;
    xpc_type_get_name(v1);
    v4 = sub_1D9F2B1BC();
    MEMORY[0x1DA742F90](v4);

    MEMORY[0x1DA742F90](0x746365707865202CLL, 0xEB00000000203A73);
    v5 = *(v2 + 2);
    if (v5)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1D9E947AC(0, v5, 0);
      v6 = v25;
      v7 = (v2 + 32);
      do
      {
        xpc_type_get_name(*v7);
        v8 = sub_1D9F2B1BC();
        v26 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          v13 = v8;
          v14 = v9;
          sub_1D9E947AC((v10 > 1), v11 + 1, 1);
          v9 = v14;
          v8 = v13;
          v6 = v26;
        }

        *(v6 + 16) = v11 + 1;
        v12 = v6 + 16 * v11;
        *(v12 + 32) = v8;
        *(v12 + 40) = v9;
        ++v7;
        --v5;
      }

      while (v5);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E87DA8();
    v21 = sub_1D9F2B0FC();
    v23 = v22;

    MEMORY[0x1DA742F90](v21, v23);

LABEL_20:
    v19 = 41;
    v20 = 0xE100000000000000;
    goto LABEL_21;
  }

  if (v3 == 3)
  {
    v17 = MEMORY[0x1DA744500](*v0);
    if (v17 == sub_1D9F2AEDC())
    {
      v24 = sub_1D9F2AF4C();
      if (!xpc_dictionary_get_string(v1, v24))
      {
LABEL_17:
        swift_getObjectType();
        swift_unknownObjectRetain();
        return sub_1D9F2B13C();
      }
    }

    else
    {
      v18 = MEMORY[0x1DA744500](v1);
      if (v18 != sub_1D9F2AF3C() || !xpc_rich_error_copy_description(v1))
      {
        goto LABEL_17;
      }
    }

    return sub_1D9F2B1BC();
  }

  if (v3 == 4)
  {
    sub_1D9F2B68C();

    v27 = 0xD000000000000015;
    MEMORY[0x1DA742F90](v1, v2);
    goto LABEL_20;
  }

  if (v1 <= 1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport10XPCFailureO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1D9EE629C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9EE62E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9EE6328(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D9EE63C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D9F2AF2C();
  result = MEMORY[0x1DA744500](a1);
  if (result == v6)
  {
    *a3 = a1;
  }

  else
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v6;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    result = swift_unknownObjectRelease();
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t SocialProfile.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SocialProfile.handle.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SocialProfile.platform.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SocialProfile.platform.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

VisualActionPredictionSupport::SocialProfile __swiftcall SocialProfile.init(handle:platform:)(Swift::String handle, Swift::String platform)
{
  *v2 = handle;
  v2[1] = platform;
  result.platform = platform;
  result.handle = handle;
  return result;
}

uint64_t static SocialProfile.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D9F2BA1C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D9F2BA1C();
    }
  }

  return result;
}

uint64_t sub_1D9EE6658()
{
  if (*v0)
  {
    result = 0x6D726F6674616C70;
  }

  else
  {
    result = 0x656C646E6168;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EE6690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EE6768(uint64_t a1)
{
  v2 = sub_1D9EE6974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE67A4(uint64_t a1)
{
  v2 = sub_1D9EE6974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SocialProfile.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75488, &qword_1D9F41730);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE6974();
  sub_1D9F2BB8C();
  v16 = 0;
  v12 = v14[3];
  sub_1D9F2B95C();
  if (!v12)
  {
    v15 = 1;
    sub_1D9F2B95C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9EE6974()
{
  result = qword_1ECB75490;
  if (!qword_1ECB75490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75490);
  }

  return result;
}

uint64_t SocialProfile.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t SocialProfile.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t SocialProfile.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75498, &qword_1D9F41738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE6974();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1D9F2B84C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D9F2B84C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9EE6CB4()
{
  result = qword_1ECB754A0;
  if (!qword_1ECB754A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754A0);
  }

  return result;
}

unint64_t sub_1D9EE6D2C()
{
  result = qword_1ECB754A8;
  if (!qword_1ECB754A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754A8);
  }

  return result;
}

unint64_t sub_1D9EE6D84()
{
  result = qword_1ECB754B0;
  if (!qword_1ECB754B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754B0);
  }

  return result;
}

unint64_t sub_1D9EE6DDC()
{
  result = qword_1ECB754B8;
  if (!qword_1ECB754B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754B8);
  }

  return result;
}

uint64_t Book.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Book.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Book.series.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Book.series.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Book.author.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Book.author.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Book.genre.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Book.genre.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Book.url.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t Book.url.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Book.adamID.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t Book.adamID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void __swiftcall Book.init(title:series:author:genre:url:adamID:purchasedDate:)(VisualActionPredictionSupport::Book *__return_ptr retstr, Swift::String title, Swift::String series, Swift::String author, Swift::String genre, Swift::String url, Swift::String adamID, Swift::Double purchasedDate)
{
  retstr->title = title;
  retstr->series = series;
  retstr->author = author;
  retstr->genre = genre;
  retstr->url = url;
  retstr->adamID = adamID;
  retstr->purchasedDate = purchasedDate;
}

uint64_t sub_1D9EE71BC()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x44496D616461;
  if (v1 != 5)
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x65726E6567;
  if (v1 != 3)
  {
    v4 = 7107189;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x736569726573;
  if (v1 != 1)
  {
    v5 = 0x726F68747561;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9EE7288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EE81D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EE72B0(uint64_t a1)
{
  v2 = sub_1D9EE7F04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE72EC(uint64_t a1)
{
  v2 = sub_1D9EE7F04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Book.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB754C0, &qword_1D9F41980);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v19[8] = v1[3];
  v19[9] = v10;
  v11 = v1[4];
  v19[6] = v1[5];
  v19[7] = v11;
  v12 = v1[6];
  v19[4] = v1[7];
  v19[5] = v12;
  v13 = v1[8];
  v19[2] = v1[9];
  v19[3] = v13;
  v14 = v1[11];
  v19[0] = v1[10];
  v19[1] = v14;
  v15 = v1[12];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE7F04();
  sub_1D9F2BB8C();
  v26 = 0;
  v17 = v19[10];
  sub_1D9F2B95C();
  if (!v17)
  {
    v25 = 1;
    sub_1D9F2B95C();
    v24 = 2;
    sub_1D9F2B95C();
    v23 = 3;
    sub_1D9F2B95C();
    v22 = 4;
    sub_1D9F2B95C();
    v21 = 5;
    sub_1D9F2B95C();
    v20 = 6;
    sub_1D9F2B97C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t Book.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v10 = *(v0 + 9);
  v14 = *(v0 + 11);
  v15 = *(v0 + 10);
  v11 = v0[12];
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  v12 = 0.0;
  if (v11 != 0.0)
  {
    v12 = v11;
  }

  return MEMORY[0x1DA743920](*&v12);
}

uint64_t Book.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v15 = *(v0 + 10);
  v13 = *(v0 + 9);
  v14 = *(v0 + 11);
  v10 = v0[12];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  v11 = 0.0;
  if (v10 != 0.0)
  {
    v11 = v10;
  }

  MEMORY[0x1DA743920](*&v11);
  return sub_1D9F2BB4C();
}

uint64_t Book.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB754D0, &qword_1D9F41988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE7F04();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v48[0]) = 0;
  v11 = sub_1D9F2B84C();
  v40 = v12;
  LOBYTE(v48[0]) = 1;
  *&v39 = sub_1D9F2B84C();
  *(&v39 + 1) = v13;
  LOBYTE(v48[0]) = 2;
  v37 = sub_1D9F2B84C();
  v15 = v14;
  LOBYTE(v48[0]) = 3;
  v16 = sub_1D9F2B84C();
  v38 = v17;
  v33 = v16;
  LOBYTE(v48[0]) = 4;
  v36 = 0;
  v32 = sub_1D9F2B84C();
  v35 = v18;
  LOBYTE(v48[0]) = 5;
  v31 = sub_1D9F2B84C();
  v34 = v19;
  v49 = 6;
  sub_1D9F2B86C();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  *&v41 = v11;
  v22 = v40;
  *(&v41 + 1) = v40;
  v42 = v39;
  v23 = *(&v39 + 1);
  *&v43 = v37;
  *(&v43 + 1) = v15;
  v24 = v38;
  *&v44 = v33;
  *(&v44 + 1) = v38;
  v25 = v35;
  *&v45 = v32;
  *(&v45 + 1) = v35;
  *&v46 = v31;
  *(&v46 + 1) = v34;
  v47 = v21;
  v26 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v26;
  *(a2 + 96) = v47;
  v27 = v42;
  *a2 = v41;
  *(a2 + 16) = v27;
  v28 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v28;
  sub_1D9E51C04(&v41, v48);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v48[0] = v11;
  v48[1] = v22;
  v48[2] = v39;
  v48[3] = v23;
  v48[4] = v37;
  v48[5] = v15;
  v48[6] = v33;
  v48[7] = v24;
  v48[8] = v32;
  v48[9] = v25;
  v48[10] = v31;
  v48[11] = v34;
  v48[12] = v21;
  return sub_1D9EE7F58(v48);
}

uint64_t sub_1D9EE7CE8()
{
  sub_1D9F2BAFC();
  Book.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EE7D2C()
{
  sub_1D9F2BAFC();
  Book.hash(into:)();
  return sub_1D9F2BB4C();
}

BOOL _s29VisualActionPredictionSupport4BookV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v23 = *(a1 + 56);
  v24 = *(a1 + 48);
  v21 = *(a1 + 72);
  v22 = *(a1 + 64);
  v17 = *(a1 + 88);
  v18 = *(a1 + 80);
  v6 = *(a1 + 96);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v12 = *(a2 + 48);
  v11 = *(a2 + 56);
  v19 = *(a2 + 72);
  v20 = *(a2 + 64);
  v15 = *(a2 + 88);
  v16 = *(a2 + 80);
  v13 = *(a2 + 96);
  return (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_1D9F2BA1C() & 1) != 0) && (v2 == v8 && v4 == v7 || (sub_1D9F2BA1C() & 1) != 0) && (v3 == v10 && v5 == v9 || (sub_1D9F2BA1C() & 1) != 0) && (v24 == v12 && v23 == v11 || (sub_1D9F2BA1C() & 1) != 0) && (v22 == v20 && v21 == v19 || (sub_1D9F2BA1C() & 1) != 0) && (v18 == v16 && v17 == v15 || (sub_1D9F2BA1C() & 1) != 0) && v6 == v13;
}

unint64_t sub_1D9EE7F04()
{
  result = qword_1ECB754C8;
  if (!qword_1ECB754C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754C8);
  }

  return result;
}

unint64_t sub_1D9EE7F8C()
{
  result = qword_1ECB754D8;
  if (!qword_1ECB754D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754D8);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D9EE800C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D9EE8054(uint64_t result, int a2, int a3)
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

unint64_t sub_1D9EE80D0()
{
  result = qword_1ECB754E0;
  if (!qword_1ECB754E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754E0);
  }

  return result;
}

unint64_t sub_1D9EE8128()
{
  result = qword_1ECB754E8;
  if (!qword_1ECB754E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754E8);
  }

  return result;
}

unint64_t sub_1D9EE8180()
{
  result = qword_1ECB754F0;
  if (!qword_1ECB754F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754F0);
  }

  return result;
}

uint64_t sub_1D9EE81D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736569726573 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xED00006574614464)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t ShipmentTrackingNumber.trackingNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ShipmentTrackingNumber.trackingNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ShipmentTrackingNumber.carrier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ShipmentTrackingNumber.carrier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

VisualActionPredictionSupport::ShipmentTrackingNumber __swiftcall ShipmentTrackingNumber.init(trackingNumber:carrier:)(Swift::String trackingNumber, Swift::String carrier)
{
  *v2 = trackingNumber;
  v2[1] = carrier;
  result.carrier = carrier;
  result.trackingNumber = trackingNumber;
  return result;
}

uint64_t static ShipmentTrackingNumber.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D9F2BA1C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D9F2BA1C();
    }
  }

  return result;
}

uint64_t sub_1D9EE85D0()
{
  if (*v0)
  {
    result = 0x72656972726163;
  }

  else
  {
    result = 0x676E696B63617274;
  }

  *v0;
  return result;
}

uint64_t sub_1D9EE8618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656972726163 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EE86FC(uint64_t a1)
{
  v2 = sub_1D9EE8908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE8738(uint64_t a1)
{
  v2 = sub_1D9EE8908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ShipmentTrackingNumber.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB754F8, &qword_1D9F41C00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE8908();
  sub_1D9F2BB8C();
  v16 = 0;
  v12 = v14[3];
  sub_1D9F2B95C();
  if (!v12)
  {
    v15 = 1;
    sub_1D9F2B95C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9EE8908()
{
  result = qword_1ECB75500;
  if (!qword_1ECB75500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75500);
  }

  return result;
}

uint64_t ShipmentTrackingNumber.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t ShipmentTrackingNumber.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t ShipmentTrackingNumber.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75508, &qword_1D9F41C08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE8908();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1D9F2B84C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D9F2B84C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9EE8C48()
{
  result = qword_1ECB75510;
  if (!qword_1ECB75510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75510);
  }

  return result;
}

unint64_t sub_1D9EE8CC0()
{
  result = qword_1ECB75518;
  if (!qword_1ECB75518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75518);
  }

  return result;
}

unint64_t sub_1D9EE8D18()
{
  result = qword_1ECB75520;
  if (!qword_1ECB75520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75520);
  }

  return result;
}

unint64_t sub_1D9EE8D70()
{
  result = qword_1ECB75528;
  if (!qword_1ECB75528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75528);
  }

  return result;
}

uint64_t GroundingData.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GroundingData.modelVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t GroundingData.objectEmbedding.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
}

void __swiftcall GroundingData.init(taxonomyEntry:categories:modelVersion:objectEmbedding:)(VisualActionPredictionSupport::GroundingData *__return_ptr retstr, Swift::String taxonomyEntry, Swift::OpaquePointer categories, Swift::String modelVersion, VisualActionPredictionSupport::ObjectEmbedding *objectEmbedding)
{
  modelName = objectEmbedding->modelName;
  countAndFlagsBits = objectEmbedding->modelVersion._countAndFlagsBits;
  retstr->label = taxonomyEntry;
  retstr->categories = categories;
  retstr->modelVersion = modelVersion;
  retstr->objectEmbedding.modelName = modelName;
  retstr->objectEmbedding.modelVersion._countAndFlagsBits = countAndFlagsBits;
  *&retstr->objectEmbedding.modelVersion._object = *&objectEmbedding->modelVersion._object;
  retstr->isDisplayable = 0;
}

void __swiftcall GroundingData.init(taxonomyEntry:categories:modelVersion:objectEmbedding:isDisplayable:)(VisualActionPredictionSupport::GroundingData *__return_ptr retstr, Swift::String taxonomyEntry, Swift::OpaquePointer categories, Swift::String modelVersion, VisualActionPredictionSupport::ObjectEmbedding *objectEmbedding, Swift::Bool isDisplayable)
{
  modelName = objectEmbedding->modelName;
  countAndFlagsBits = objectEmbedding->modelVersion._countAndFlagsBits;
  retstr->label = taxonomyEntry;
  retstr->categories = categories;
  retstr->modelVersion = modelVersion;
  retstr->objectEmbedding.modelName = modelName;
  retstr->objectEmbedding.modelVersion._countAndFlagsBits = countAndFlagsBits;
  *&retstr->objectEmbedding.modelVersion._object = *&objectEmbedding->modelVersion._object;
  retstr->isDisplayable = isDisplayable;
}

uint64_t sub_1D9EE8EE4()
{
  v1 = *v0;
  v2 = 0x6C6562616CLL;
  v3 = 0x7265566C65646F6DLL;
  v4 = 0x6D457463656A626FLL;
  if (v1 != 3)
  {
    v4 = 0x616C707369447369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69726F6765746163;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9EE8FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EE9C10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EE8FC8(uint64_t a1)
{
  v2 = sub_1D9EE9984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE9004(uint64_t a1)
{
  v2 = sub_1D9EE9984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroundingData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75530, &unk_1D9F41E60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v31 = v1[3];
  v32 = v11;
  v12 = v1[4];
  v29 = v1[5];
  v30 = v12;
  v13 = v1[6];
  v15 = v1[8];
  v14 = v1[9];
  v25 = v1[7];
  v26 = v15;
  v27 = v14;
  v28 = v13;
  v38 = *(v1 + 80);
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v16);
  sub_1D9EE9984();
  sub_1D9F2BB8C();
  LOBYTE(v33) = 0;
  sub_1D9F2B95C();
  if (!v2)
  {
    v22 = v28;
    v21 = v29;
    v33 = v32;
    v39 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E441E4(&qword_1EE0F1120);
    sub_1D9F2B9AC();
    LOBYTE(v33) = 2;
    sub_1D9F2B95C();
    v33 = v21;
    v34 = v22;
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v39 = 3;
    sub_1D9EE99D8();

    sub_1D9F2B9AC();

    LOBYTE(v33) = 4;
    sub_1D9F2B96C();
  }

  return (*(v5 + 8))(v8, v20);
}

uint64_t GroundingData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75538, &qword_1D9F41E70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE9984();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  v11 = sub_1D9F2B84C();
  v29 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
  LOBYTE(v30) = 1;
  sub_1D9E441E4(&qword_1EE0F1118);
  sub_1D9F2B89C();
  v28 = v36;
  LOBYTE(v36) = 2;
  v26 = sub_1D9F2B84C();
  v27 = v13;
  LOBYTE(v30) = 3;
  sub_1D9EE9A2C();
  sub_1D9F2B89C();
  v23 = v36;
  v24 = v37;
  v22 = v38;
  v25 = v39;
  v45 = 4;
  v14 = sub_1D9F2B85C();
  (*(v6 + 8))(v9, v5);
  *&v30 = v11;
  v15 = v29;
  v16 = v28;
  *(&v30 + 1) = v29;
  *&v31 = v28;
  v17 = v26;
  v18 = v27;
  *(&v31 + 1) = v26;
  *&v32 = v27;
  *(&v32 + 1) = v23;
  *&v33 = v24;
  *(&v33 + 1) = v22;
  v34 = v25;
  v14 &= 1u;
  v35 = v14;
  *(a2 + 80) = v14;
  v19 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v19;
  *(a2 + 64) = v34;
  v20 = v31;
  *a2 = v30;
  *(a2 + 16) = v20;
  sub_1D9EE9A80(&v30, &v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36 = v11;
  v37 = v15;
  v38 = v16;
  *&v39 = v17;
  *(&v39 + 1) = v18;
  v40 = v23;
  v41 = v24;
  v42 = v22;
  v43 = v25;
  v44 = v14;
  return sub_1D9EE9AB8(&v36);
}

uint64_t _s29VisualActionPredictionSupport13GroundingDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v19 = *(a1 + 64);
  v20 = *(a1 + 56);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v17 = *(a2 + 64);
  v18 = *(a2 + 56);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D9F2BA1C() & 1) == 0 || (sub_1D9E49670(v2, v8) & 1) == 0 || (v3 != v7 || v4 != v9) && (sub_1D9F2BA1C() & 1) == 0 || (v5 != v10 || v6 != v11) && (sub_1D9F2BA1C() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  if (sub_1D9E4AEA8(v15, v13))
  {
    return v16 ^ v14 ^ 1u;
  }

  return 0;
}

unint64_t sub_1D9EE9984()
{
  result = qword_1EE0F2FC0[0];
  if (!qword_1EE0F2FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F2FC0);
  }

  return result;
}

unint64_t sub_1D9EE99D8()
{
  result = qword_1EE0F19E0;
  if (!qword_1EE0F19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F19E0);
  }

  return result;
}

unint64_t sub_1D9EE9A2C()
{
  result = qword_1EE0F19D8;
  if (!qword_1EE0F19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F19D8);
  }

  return result;
}

unint64_t sub_1D9EE9B0C()
{
  result = qword_1ECB75540;
  if (!qword_1ECB75540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75540);
  }

  return result;
}

unint64_t sub_1D9EE9B64()
{
  result = qword_1EE0F2FB0;
  if (!qword_1EE0F2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2FB0);
  }

  return result;
}

unint64_t sub_1D9EE9BBC()
{
  result = qword_1EE0F2FB8;
  if (!qword_1EE0F2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2FB8);
  }

  return result;
}

uint64_t sub_1D9EE9C10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D457463656A626FLL && a2 == 0xEF676E6964646562 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C707369447369 && a2 == 0xED0000656C626179)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D9EE9DD8(void *a1, uint64_t a2)
{
  v4 = sub_1D9F2AECC();
  v5 = MEMORY[0x1DA744500](a1);
  if (v5 == v4)
  {
    bytes = xpc_uuid_get_bytes(a1);
    if (bytes)
    {
      v10 = *(bytes + 1);
      v11 = bytes[7];
      v12 = bytes[6];
      v13 = bytes[5];
      v14 = bytes[4];
      v15 = bytes[3];
      v16 = bytes[2];
      v17 = bytes[1];
      v18 = *bytes;
      sub_1D9F2AD4C();
    }

    else
    {
      *a2 = xmmword_1D9F3CFD0;
      *(a2 + 16) = 5;
      sub_1D9E56B78();
      swift_willThrowTypedImpl();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D9F2F8F0;
    *(v7 + 32) = v4;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    result = swift_unknownObjectRelease();
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
  }

  return result;
}

double sub_1D9EE9F30(void *a1, uint64_t a2)
{
  sub_1D9EE9DD8(a1, &v6);
  if (v2)
  {
    v5 = v7;
    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = v5;
  }

  return result;
}